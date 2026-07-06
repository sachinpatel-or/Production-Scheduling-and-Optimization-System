"""
src/parameters.py
==================
Builds every parameter defined in docs/02_mathematical_formulation.md Section 2 as a plain
Python dict keyed exactly as the math doc describes (e.g. `proc_time[batch_id, machine_id]`).
These dicts are consumed directly by `variables.py`/`constraints_*.py` via Pyomo
`Param`-free lookups (we use plain dicts rather than `pyo.Param` objects for simplicity and
speed when building the model — Pyomo does not require `Param` for constraint coefficients).
"""

from __future__ import annotations

from dataclasses import dataclass, field

from config import CONFIG
from logging_config import get_logger
from src.data_loader import PSOData
from src.sets import PSOSets
from src.utils import compute_big_m, safe_div

logger = get_logger(__name__)


@dataclass
class PSOParameters:
    big_m: float
    horizon_hours: float

    demand: dict[str, float]
    due: dict[str, int]

    proc_rate: dict[tuple[str, str], float]          # (product, machine) -> units/hour
    proc_time: dict[tuple[str, str], float]           # (batch_id, machine) -> hours

    capacity: dict[str, float]                         # machine -> units/hour
    eligibility: dict[tuple[str, str], int]            # (product, machine) -> {0,1}

    setup_time: dict[tuple[str, str, str], float]      # (machine, from_p, to_p) -> hours
    setup_cost: dict[tuple[str, str, str], float]      # (machine, from_p, to_p) -> $

    shift_start: dict[str, float]
    shift_end: dict[str, float]
    shift_day: dict[str, int]
    shift_duration: dict[str, float]

    maint_block: dict[tuple[str, str], int]            # (machine, shift_period) -> {0,1}
    op_avail: dict[tuple[str, str], int]                # (operator, shift_period) -> {0,1}
    op_skill: dict[tuple[str, str], int]                # (operator, machine) -> {0,1}

    open_inv: dict[str, float]
    open_inv_rm: dict[str, float]
    bom: dict[tuple[str, str], float]                   # (product, raw_material) -> qty/unit

    prod_cost: dict[tuple[str, str], float]             # (product, machine) -> $/unit
    hold_cost: dict[str, float]                          # product -> $/unit/day
    late_penalty: dict[str, float]                       # product -> $/unit/day late
    overtime_cost: dict[str, float]                       # machine -> $/hour
    startup_cost: dict[str, float]                         # machine -> $
    energy_cost: dict[str, float]                           # machine -> $/hour

    min_batch: float
    max_batch: float

    batch_qty: dict[str, float] = field(default_factory=dict)   # batch_id -> fixed qty


def build_parameters(data: PSOData, sets_obj: PSOSets) -> PSOParameters:
    """Build the full `PSOParameters` container, every key matching the math doc symbols."""
    horizon_days = data.param("horizon_days", default=CONFIG.horizon.horizon_days, cast=int)
    horizon_hours = horizon_days * 24.0
    big_m = compute_big_m(horizon_hours)

    demand = dict(zip(data.orders["order_id"], data.orders["quantity"].astype(float)))
    due = dict(zip(data.orders["order_id"], data.orders["due_day"].astype(int)))

    proc_rate = {
        (row.product_id, row.machine_id): float(row.rate_units_per_hour)
        for row in data.processing_times.itertuples()
    }
    proc_time: dict[tuple[str, str], float] = {}
    for b in sets_obj.batches:
        for m in sets_obj.machines:
            rate = proc_rate.get((b.product_id, m))
            if rate:
                proc_time[(b.batch_id, m)] = safe_div(b.qty, rate, default=0.0)

    capacity = dict(zip(data.machines["machine_id"], data.machines["capacity_units_per_hour"].astype(float)))

    eligibility: dict[tuple[str, str], int] = {}
    for row in data.machines.itertuples():
        elig_families = set(str(row.eligible_families).split(","))
        for p in sets_obj.products:
            fam = data.products.loc[data.products.product_id == p, "family_id"].iloc[0]
            eligibility[(p, row.machine_id)] = int(fam in elig_families)

    setup_time = {
        (row.machine_id, row.from_product, row.to_product): float(row.setup_time_hours)
        for row in data.setup_times.itertuples()
    }
    setup_cost = {
        (row.machine_id, row.from_product, row.to_product): float(row.setup_cost)
        for row in data.setup_times.itertuples()
    }

    shift_start = {sp.sp_id: sp.start_hour for sp in sets_obj.shift_periods}
    shift_end = {sp.sp_id: sp.end_hour for sp in sets_obj.shift_periods}
    shift_day = {sp.sp_id: sp.day for sp in sets_obj.shift_periods}
    shift_duration = {sp.sp_id: sp.duration_hours for sp in sets_obj.shift_periods}

    maint_set = {
        (row.machine_id, row.day, row.shift_type) for row in data.maintenance.itertuples()
    }
    maint_block = {
        (m, sp.sp_id): int((m, sp.day, sp.shift_type) in maint_set)
        for m in sets_obj.machines for sp in sets_obj.shift_periods
    }

    op_shift_types = {
        row.operator_id: set(str(row.shift_type).split(",")) for row in data.operators.itertuples()
    }
    op_avail = {
        (op, sp.sp_id): int(sp.shift_type in op_shift_types.get(op, set()))
        for op in sets_obj.operators for sp in sets_obj.shift_periods
    }
    op_skill: dict[tuple[str, str], int] = {}
    for row in data.operators.itertuples():
        skill_machines = set(str(row.skills).split(","))
        for m in sets_obj.machines:
            op_skill[(row.operator_id, m)] = int(m in skill_machines)

    open_inv = dict(zip(
        data.inventory.loc[data.inventory.type == "FG", "item_id"],
        data.inventory.loc[data.inventory.type == "FG", "opening_qty"].astype(float),
    ))
    for p in sets_obj.products:
        open_inv.setdefault(p, 0.0)
    open_inv_rm = dict(zip(
        data.inventory.loc[data.inventory.type == "RM", "item_id"],
        data.inventory.loc[data.inventory.type == "RM", "opening_qty"].astype(float),
    ))
    for r in sets_obj.raw_materials:
        open_inv_rm.setdefault(r, 0.0)

    bom = {
        (row.product_id, row.raw_material_id): float(row.qty_per_unit)
        for row in data.bom.itertuples()
    }

    # Production cost is driven by the machine's $/unit rate, applied to every product the
    # machine is eligible to run (keeps cost transparently tied to machine efficiency).
    prod_cost = {
        (p, row.machine_id): float(row.cost_per_unit)
        for row in data.machines.itertuples() for p in sets_obj.products
    }

    hold_cost = {
        p: CONFIG.costs.default_holding_cost_per_unit_day for p in sets_obj.products
    }
    late_penalty = {
        p: CONFIG.costs.default_late_penalty_per_unit_day for p in sets_obj.products
    }
    overtime_cost = dict(zip(data.machines["machine_id"], data.machines["overtime_cost_per_hour"].astype(float)))
    startup_cost = dict(zip(data.machines["machine_id"], data.machines["startup_cost"].astype(float)))
    energy_cost = dict(zip(data.machines["machine_id"], data.machines["energy_cost_per_hour"].astype(float)))

    min_batch = data.param("min_batch_size", default=10, cast=float)
    max_batch = data.param("max_batch_size", default=60, cast=float)

    batch_qty = {b.batch_id: b.qty for b in sets_obj.batches}

    params = PSOParameters(
        big_m=big_m, horizon_hours=horizon_hours, demand=demand, due=due,
        proc_rate=proc_rate, proc_time=proc_time, capacity=capacity, eligibility=eligibility,
        setup_time=setup_time, setup_cost=setup_cost, shift_start=shift_start,
        shift_end=shift_end, shift_day=shift_day, shift_duration=shift_duration,
        maint_block=maint_block, op_avail=op_avail, op_skill=op_skill, open_inv=open_inv,
        open_inv_rm=open_inv_rm, bom=bom, prod_cost=prod_cost, hold_cost=hold_cost,
        late_penalty=late_penalty, overtime_cost=overtime_cost, startup_cost=startup_cost,
        energy_cost=energy_cost, min_batch=min_batch, max_batch=max_batch, batch_qty=batch_qty,
    )
    logger.info(
        "Built parameters: BigM=%.1f, %d proc_time entries, %d setup pairs, %d shift-periods.",
        big_m, len(proc_time), len(setup_time), len(shift_start),
    )
    return params
