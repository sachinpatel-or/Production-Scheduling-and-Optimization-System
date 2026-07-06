"""
src/sets.py
===========
Builds every index set defined in the math formulation (docs/02_mathematical_formulation.md
Section 1) from the validated `PSOData`. This is where the "Lots" and "Batches" sets are
constructed: each order is split into one or more **lots** (respecting min/max batch size),
and each lot generates one **stage-batch** per stage in its product's routing.

This module performs no optimization — it is pure data transformation, kept separate from
`parameters.py`/`variables.py` for single-responsibility and testability (Phase 9).
"""

from __future__ import annotations

import math
from dataclasses import dataclass, field

from config import CONFIG
from logging_config import get_logger
from src.data_loader import PSOData

logger = get_logger(__name__)


@dataclass
class StageBatch:
    """A single (lot, stage) scheduling unit — this is the 'batch' `b` of the math doc."""

    batch_id: str
    lot_id: str
    order_id: str
    product_id: str
    family_id: str
    stage_id: str
    stage_index: int          # position within the product's routing (0-based)
    qty: float
    due_day: int
    predecessor_batch_id: str | None   # batch_id of same lot at the previous stage, or None


@dataclass
class ShiftPeriod:
    sp_id: str
    day: int
    shift_type: str
    start_hour: float
    end_hour: float

    @property
    def duration_hours(self) -> float:
        return self.end_hour - self.start_hour


@dataclass
class PSOSets:
    products: list[str]
    machines: list[str]
    families: list[str]
    stages: list[str]
    orders: list[str]
    operators: list[str]
    raw_materials: list[str]
    days: list[int]
    shift_periods: list[ShiftPeriod]
    lots: list[str]
    batches: list[StageBatch]

    # Convenience lookup structures (kept here, not recomputed downstream).
    routing_by_product: dict[str, list[str]] = field(default_factory=dict)
    machine_stage: dict[str, str] = field(default_factory=dict)
    batches_by_lot: dict[str, list[StageBatch]] = field(default_factory=dict)
    batches_by_order: dict[str, list[StageBatch]] = field(default_factory=dict)
    batches_by_machine_stage: dict[str, list[StageBatch]] = field(default_factory=dict)
    shift_periods_by_machine: dict[str, list[str]] = field(default_factory=dict)

    def batch(self, batch_id: str) -> StageBatch:
        return self._batch_index[batch_id]

    def __post_init__(self):
        self._batch_index = {b.batch_id: b for b in self.batches}


def _split_into_lots(order_id: str, product_id: str, qty: float, due_day: int,
                      min_batch: float, max_batch: float) -> list[tuple[str, float]]:
    """
    Split an order's quantity into 1+ lots, each guaranteed to lie within
    [min_batch, max_batch] whenever the order quantity allows it.

    Strategy: pick the smallest number of lots `n` such that qty/n <= max_batch, then
    split as evenly as possible (remainder distributed one unit at a time across the first
    lots). Even splitting guarantees every lot is <= max_batch by construction and, as long
    as qty >= min_batch, every lot is also >= floor(qty/n) which stays >= min_batch for any
    realistic (min_batch, max_batch, qty) combination in this dataset. If qty itself is
    below min_batch (a single very small order), we keep it as one undersized lot rather
    than fail — a single-lot order below min_batch is a legitimate small order in practice,
    not a data error.
    """
    if qty <= max_batch:
        return [(f"{order_id}_L1", qty)]

    n = math.ceil(qty / max_batch)
    base = qty // n
    remainder = qty - base * n
    lots = []
    for i in range(n):
        lot_qty = base + (1 if i < remainder else 0)
        lots.append((f"{order_id}_L{i+1}", float(lot_qty)))
    return lots


def build_sets(data: PSOData) -> PSOSets:
    """Construct the full `PSOSets` container from validated input data."""
    products = data.products["product_id"].tolist()
    machines = data.machines["machine_id"].tolist()
    families = sorted(data.products["family_id"].unique().tolist())
    stages = sorted(data.machines["stage_id"].unique().tolist())
    orders = data.orders["order_id"].tolist()
    operators = data.operators["operator_id"].tolist()
    raw_materials = sorted(data.bom["raw_material_id"].unique().tolist())

    horizon_days = data.param("horizon_days", default=CONFIG.horizon.horizon_days, cast=int)
    days = list(range(1, horizon_days + 1))

    shift_periods = [
        ShiftPeriod(row.shift_period_id, int(row.day), row.shift_type,
                    float(row.start_hour), float(row.end_hour))
        for row in data.calendar.itertuples()
    ]

    routing_by_product = {
        row.product_id: str(row.routing).split(",") for row in data.products.itertuples()
    }
    product_family = dict(zip(data.products["product_id"], data.products["family_id"]))

    min_batch = data.param("min_batch_size", default=10, cast=float)
    max_batch = data.param("max_batch_size", default=60, cast=float)

    lots: list[str] = []
    batches: list[StageBatch] = []
    batches_by_lot: dict[str, list[StageBatch]] = {}
    batches_by_order: dict[str, list[StageBatch]] = {}

    for row in data.orders.itertuples():
        order_id, product_id = row.order_id, row.product_id
        routing = routing_by_product[product_id]
        family_id = product_family[product_id]
        lot_splits = _split_into_lots(order_id, product_id, float(row.quantity),
                                       int(row.due_day), min_batch, max_batch)
        for lot_id, lot_qty in lot_splits:
            lots.append(lot_id)
            prev_batch_id = None
            lot_batches = []
            for stage_idx, stage_id in enumerate(routing):
                batch_id = f"{lot_id}_{stage_id}"
                sb = StageBatch(
                    batch_id=batch_id, lot_id=lot_id, order_id=order_id,
                    product_id=product_id, family_id=family_id, stage_id=stage_id,
                    stage_index=stage_idx, qty=lot_qty, due_day=int(row.due_day),
                    predecessor_batch_id=prev_batch_id,
                )
                batches.append(sb)
                lot_batches.append(sb)
                prev_batch_id = batch_id
            batches_by_lot[lot_id] = lot_batches
            batches_by_order.setdefault(order_id, []).extend(lot_batches)

    batches_by_machine_stage: dict[str, list[StageBatch]] = {}
    for b in batches:
        batches_by_machine_stage.setdefault(b.stage_id, []).append(b)

    shift_periods_by_machine: dict[str, list[str]] = {}
    maint_blocked = {
        (row.machine_id, int(row.day), row.shift_type) for row in data.maintenance.itertuples()
    }
    for m in machines:
        available = [
            sp.sp_id for sp in shift_periods
            if (m, sp.day, sp.shift_type) not in maint_blocked
        ]
        shift_periods_by_machine[m] = available

    sets_obj = PSOSets(
        products=products, machines=machines, families=families, stages=stages,
        orders=orders, operators=operators, raw_materials=raw_materials, days=days,
        shift_periods=shift_periods, lots=lots, batches=batches,
        routing_by_product=routing_by_product,
        machine_stage=dict(zip(data.machines["machine_id"], data.machines["stage_id"])),
        batches_by_lot=batches_by_lot,
        batches_by_order=batches_by_order, batches_by_machine_stage=batches_by_machine_stage,
        shift_periods_by_machine=shift_periods_by_machine,
    )

    logger.info(
        "Built sets: %d lots -> %d stage-batches across %d stages, %d shift-periods, "
        "%d days, %d orders.",
        len(lots), len(batches), len(stages), len(shift_periods), len(days), len(orders),
    )
    return sets_obj
