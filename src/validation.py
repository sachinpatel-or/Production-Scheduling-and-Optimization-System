"""
src/validation.py
==================
Phase 4 requirement: "Validation before optimization" + "Automatic consistency checking".

Runs a battery of referential-integrity and business-sanity checks over a loaded
`PSOData` object *before* the Pyomo model is built. Raises `DataValidationError` with a
full list of problems (not just the first one found) so the user can fix everything in one
pass, exactly as a real industrial APS system would.
"""

from __future__ import annotations

from config import CONFIG
from logging_config import get_logger
from src.data_loader import PSOData
from src.utils import ensure_columns

logger = get_logger(__name__)


class DataValidationError(Exception):
    """Raised when one or more data-consistency checks fail."""


_REQUIRED_COLUMNS = {
    "products": ["product_id", "name", "family_id", "routing", "unit_cost"],
    "machines": ["machine_id", "name", "stage_id", "capacity_units_per_hour",
                 "eligible_families", "cost_per_unit", "overtime_cost_per_hour",
                 "startup_cost", "energy_cost_per_hour"],
    "orders": ["order_id", "product_id", "customer_id", "quantity", "due_day", "priority"],
    "inventory": ["type", "item_id", "opening_qty"],
    "operators": ["operator_id", "name", "skills", "shift_type"],
    "calendar": ["shift_period_id", "day", "shift_type", "start_hour", "end_hour"],
    "setup_times": ["machine_id", "from_product", "to_product", "setup_time_hours", "setup_cost"],
    "processing_times": ["product_id", "machine_id", "rate_units_per_hour"],
    "bom": ["product_id", "raw_material_id", "qty_per_unit"],
    "maintenance": ["machine_id", "day", "shift_type"],
    "parameters": ["key", "value"],
}


def validate_data(data: PSOData) -> list[str]:
    """
    Run all checks. Returns a list of human-readable error strings (empty if valid).
    Does not raise — callers decide whether to raise via `validate_or_raise`.
    """
    errors: list[str] = []

    # 1. Required columns present in every table.
    for table_name, cols in _REQUIRED_COLUMNS.items():
        df = getattr(data, table_name)
        try:
            ensure_columns(df, cols, context=table_name)
        except ValueError as e:
            errors.append(str(e))

    if errors:
        # Column-level errors make every downstream check unreliable; stop here.
        return errors

    product_ids = set(data.products["product_id"])
    machine_ids = set(data.machines["machine_id"])
    family_ids = set(data.products["family_id"])
    operator_ids = set(data.operators["operator_id"])
    stage_ids = set(data.machines["stage_id"])
    raw_material_ids = set(data.bom["raw_material_id"])
    shift_types = set(data.calendar["shift_type"])

    # 2. Duplicate primary keys.
    for table_name, key in [("products", "product_id"), ("machines", "machine_id"),
                             ("orders", "order_id"), ("operators", "operator_id")]:
        df = getattr(data, table_name)
        dupes = df[df.duplicated(key, keep=False)][key].unique().tolist()
        if dupes:
            errors.append(f"[{table_name}] duplicate {key} values: {dupes}")

    # 3. Referential integrity: orders -> products.
    bad_order_products = set(data.orders["product_id"]) - product_ids
    if bad_order_products:
        errors.append(f"[orders] reference unknown product_id(s): {sorted(bad_order_products)}")

    # 4. Referential integrity: processing_times -> products, machines.
    bad = set(data.processing_times["product_id"]) - product_ids
    if bad:
        errors.append(f"[processing_times] unknown product_id(s): {sorted(bad)}")
    bad = set(data.processing_times["machine_id"]) - machine_ids
    if bad:
        errors.append(f"[processing_times] unknown machine_id(s): {sorted(bad)}")

    # 5. Referential integrity: setup_times -> machines, products.
    bad = set(data.setup_times["machine_id"]) - machine_ids
    if bad:
        errors.append(f"[setup_times] unknown machine_id(s): {sorted(bad)}")
    bad = (set(data.setup_times["from_product"]) | set(data.setup_times["to_product"])) - product_ids
    if bad:
        errors.append(f"[setup_times] unknown product_id(s): {sorted(bad)}")

    # 6. Referential integrity: bom -> products.
    bad = set(data.bom["product_id"]) - product_ids
    if bad:
        errors.append(f"[bill_of_materials] unknown product_id(s): {sorted(bad)}")

    # 7. Referential integrity: maintenance -> machines, shift_types.
    bad = set(data.maintenance["machine_id"]) - machine_ids
    if bad:
        errors.append(f"[maintenance] unknown machine_id(s): {sorted(bad)}")
    bad = set(data.maintenance["shift_type"]) - shift_types
    if bad:
        errors.append(f"[maintenance] unknown shift_type(s): {sorted(bad)}")

    # 8. Referential integrity: operators -> machines (skills), shift types.
    all_skill_machines = set()
    for s in data.operators["skills"].dropna():
        all_skill_machines |= set(str(s).split(","))
    bad = all_skill_machines - machine_ids
    if bad:
        errors.append(f"[operators] skills reference unknown machine_id(s): {sorted(bad)}")
    all_op_shift_types = set()
    for s in data.operators["shift_type"].dropna():
        all_op_shift_types |= set(str(s).split(","))
    bad = all_op_shift_types - shift_types
    if bad:
        errors.append(f"[operators] unknown shift_type(s): {sorted(bad)}")

    # 9. Referential integrity: machines.eligible_families -> family_ids; stage_id sane.
    all_elig_families = set()
    for s in data.machines["eligible_families"].dropna():
        all_elig_families |= set(str(s).split(","))
    bad = all_elig_families - family_ids
    if bad:
        errors.append(f"[machines] eligible_families reference unknown family_id(s): {sorted(bad)}")

    # 10. Routing validity: every stage in every product's routing must exist on >=1 machine.
    for _, p in data.products.iterrows():
        routing = str(p["routing"]).split(",")
        for stage in routing:
            if stage not in stage_ids:
                errors.append(f"[products] product {p['product_id']} routes through unknown stage '{stage}'")
                continue
            elig = data.machines[
                (data.machines["stage_id"] == stage)
                & (data.machines["eligible_families"].apply(lambda s, fam=p["family_id"]: fam in str(s).split(",")))
            ]
            if elig.empty:
                errors.append(
                    f"[coverage] product {p['product_id']} (family {p['family_id']}) has NO eligible "
                    f"machine at stage '{stage}' -> its orders would be infeasible."
                )

    # 11. Every product+eligible-machine pair must have a processing rate.
    pt_pairs = set(zip(data.processing_times["product_id"], data.processing_times["machine_id"]))
    for _, p in data.products.iterrows():
        elig_machines = data.machines[
            data.machines["eligible_families"].apply(lambda s, fam=p["family_id"]: fam in str(s).split(","))
        ]
        for _, m in elig_machines.iterrows():
            if (p["product_id"], m["machine_id"]) not in pt_pairs:
                errors.append(
                    f"[processing_times] missing rate for eligible pair "
                    f"({p['product_id']}, {m['machine_id']})"
                )

    # 12. Business-sanity: positive quantities, due dates within horizon, no negative costs.
    horizon_days = data.param("horizon_days", default=CONFIG.horizon.horizon_days, cast=int)
    bad_qty = data.orders[data.orders["quantity"] <= 0]
    if not bad_qty.empty:
        errors.append(f"[orders] non-positive quantity in order_id(s): {bad_qty['order_id'].tolist()}")
    bad_due = data.orders[(data.orders["due_day"] < 1) | (data.orders["due_day"] > horizon_days)]
    if not bad_due.empty:
        errors.append(
            f"[orders] due_day outside horizon [1,{horizon_days}] for order_id(s): "
            f"{bad_due['order_id'].tolist()}"
        )
    for col in ("cost_per_unit", "overtime_cost_per_hour", "startup_cost", "energy_cost_per_hour"):
        if (data.machines[col] < 0).any():
            errors.append(f"[machines] negative values found in column '{col}'")

    # 13. Shift-fit sanity: every product must be processable (at its max batch size) within
    # at least one shift on at least one eligible machine, or the single-shift-containment
    # scheduling constraint (C-TIME.3) will make the model infeasible by construction.
    max_batch = data.param("max_batch_size", default=60, cast=float)
    max_shift_hours = float((data.calendar["end_hour"] - data.calendar["start_hour"]).max()) \
        if not data.calendar.empty else 0.0
    for _, p in data.products.iterrows():
        rates = data.processing_times.loc[data.processing_times.product_id == p["product_id"], "rate_units_per_hour"]
        if rates.empty:
            continue
        best_rate = rates.max()
        min_time_at_max_batch = max_batch / best_rate if best_rate > 0 else float("inf")
        if min_time_at_max_batch > max_shift_hours:
            errors.append(
                f"[shift-fit] product {p['product_id']}: even at its fastest eligible rate "
                f"({best_rate:.2f} units/h), a max-size batch ({max_batch} units) needs "
                f"{min_time_at_max_batch:.1f}h, exceeding the longest shift ({max_shift_hours:.1f}h). "
                f"Batches of this product can never be scheduled (C-TIME.3 single-shift "
                f"containment). Increase the rate, shorten max_batch_size, or lengthen shifts."
            )

    # 14. Raw material BOM completeness: every product needs >=1 BOM line (warn if not).
    products_without_bom = product_ids - set(data.bom["product_id"])
    if products_without_bom:
        logger.warning(
            "Products with no BOM lines (treated as zero raw-material consumption): %s",
            sorted(products_without_bom),
        )

    return errors


def validate_or_raise(data: PSOData) -> None:
    """Run all validations; raise `DataValidationError` listing every problem if any fail."""
    errors = validate_data(data)
    if errors:
        msg = "Data validation failed with {} issue(s):\n  - {}".format(
            len(errors), "\n  - ".join(errors)
        )
        logger.error(msg)
        raise DataValidationError(msg)
    logger.info("Data validation passed: 0 issues found across %d input tables.", len(_REQUIRED_COLUMNS))
