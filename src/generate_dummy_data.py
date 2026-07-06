"""
src/generate_dummy_data.py
===========================
Phase 5 — Automatic generation of a realistic, internally-consistent industrial dummy
dataset for the PSO system. Running this module (or `main.py --generate-data`) writes all
CSV files listed in the requirements document (Section 7) into `data/`.

Design goals:
  * Internally consistent: every foreign key (product_id, machine_id, family_id, ...)
    referenced in one CSV actually exists in the CSV that defines it.
  * Realistic shapes: machine eligibility by family, sequence-dependent setup matrix,
    multi-stage routings, BOM, shift calendar, maintenance windows, operator rosters.
  * Reproducible: a single random seed (config.DummyDataConfig.random_seed) drives
    everything.
"""

from __future__ import annotations

import random
from pathlib import Path

import pandas as pd

from config import CONFIG
from logging_config import get_logger

logger = get_logger(__name__)

STAGE_NAMES = ["Cutting", "Assembly", "Packing", "Finishing", "Inspection"]


def _rng() -> random.Random:
    return random.Random(CONFIG.dummy_data.random_seed)


def generate_products(rng: random.Random, n_families: int, n_products: int, stages: list[str]) -> pd.DataFrame:
    families = [f"FAM{i+1}" for i in range(n_families)]
    rows = []
    for i in range(n_products):
        family = families[i % n_families]
        # Most products route through all stages in order; a few skip an intermediate stage
        routing = stages if rng.random() > 0.25 or len(stages) <= 2 else [stages[0], stages[-1]]
        rows.append({
            "product_id": f"P{i+1:02d}",
            "name": f"Product {i+1}",
            "family_id": family,
            "routing": ",".join(routing),
            "unit_cost": round(rng.uniform(2.0, 18.0), 2),
        })
    return pd.DataFrame(rows)


def generate_machines(rng: random.Random, n_machines: int, stages: list[str], families: list[str]) -> pd.DataFrame:
    """
    Generate machines such that EVERY (family, stage) combination has at least one
    eligible machine. Without this guarantee, a product whose routing needs family F at
    stage S could have zero eligible machines at that stage -> trivially infeasible dummy
    data. We assign machines round-robin to stages, then force-assign families round-robin
    within each stage's machine group before adding random extra eligibility.
    """
    # Assign each machine to a stage round-robin, recording per-stage machine indices.
    machine_stage = [stages[i % len(stages)] for i in range(n_machines)]
    machines_by_stage: dict[str, list[int]] = {s: [] for s in stages}
    for i, s in enumerate(machine_stage):
        machines_by_stage[s].append(i)

    forced_families: dict[int, set[str]] = {i: set() for i in range(n_machines)}
    for s, idxs in machines_by_stage.items():
        if not idxs:
            continue
        for j, fam in enumerate(families):
            forced_families[idxs[j % len(idxs)]].add(fam)

    rows = []
    for i in range(n_machines):
        stage = machine_stage[i]
        eligible = set(forced_families[i])
        if rng.random() > 0.5 and len(families) > len(eligible):
            eligible.add(rng.choice(families))
        eligible = sorted(eligible)
        rows.append({
            "machine_id": f"M{i+1:02d}",
            "name": f"Machine {i+1}",
            "stage_id": stage,
            "capacity_units_per_hour": round(rng.uniform(20, 80), 1),
            "eligible_families": ",".join(eligible),
            "cost_per_unit": round(rng.uniform(0.5, 3.0), 2),
            "overtime_cost_per_hour": CONFIG.costs.default_overtime_cost_per_hour + rng.uniform(-5, 10),
            "startup_cost": CONFIG.costs.default_startup_cost + rng.uniform(-15, 25),
            "energy_cost_per_hour": CONFIG.costs.default_energy_cost_per_hour + rng.uniform(-2, 4),
        })
    return pd.DataFrame(rows)


def generate_processing_times(rng: random.Random, products: pd.DataFrame, machines: pd.DataFrame) -> pd.DataFrame:
    """
    Generate processing rates. The scheduling model requires every batch to fit inside a
    single shift window (C-TIME.3), so rates are floored such that even a maximum-size
    batch (max_batch_size) completes within one shift_duration_hours, with margin — this
    is a deliberate dummy-data guarantee, not an accident: an unconstrained low rate could
    otherwise generate a structurally infeasible instance (a job that cannot physically fit
    in any shift), which is a data bug rather than a legitimate scheduling conflict.
    """
    rows = []
    max_batch_hint = CONFIG.dummy_data.default_max_batch_size
    shift_hours_hint = CONFIG.horizon.shift_duration_hours
    min_feasible_rate = (max_batch_hint / shift_hours_hint) * 1.25
    for _, prod in products.iterrows():
        eligible_machines = machines[
            machines["eligible_families"].apply(lambda s: prod["family_id"] in s.split(","))
        ]
        for _, mach in eligible_machines.iterrows():
            rows.append({
                "product_id": prod["product_id"],
                "machine_id": mach["machine_id"],
                "rate_units_per_hour": round(rng.uniform(max(5, min_feasible_rate), max(25, min_feasible_rate * 2)), 2),
            })
    return pd.DataFrame(rows)


def generate_setup_times(rng: random.Random, products: pd.DataFrame, machines: pd.DataFrame) -> pd.DataFrame:
    rows = []
    prod_ids = products["product_id"].tolist()
    for _, mach in machines.iterrows():
        for p_from in prod_ids:
            for p_to in prod_ids:
                if p_from == p_to:
                    continue
                same_family = (
                    products.loc[products.product_id == p_from, "family_id"].iloc[0]
                    == products.loc[products.product_id == p_to, "family_id"].iloc[0]
                )
                base = rng.uniform(0.25, 1.0) if same_family else rng.uniform(1.0, 3.0)
                rows.append({
                    "machine_id": mach["machine_id"],
                    "from_product": p_from,
                    "to_product": p_to,
                    "setup_time_hours": round(base, 2),
                    "setup_cost": round(base * rng.uniform(15, 30), 2),
                })
    return pd.DataFrame(rows)


def generate_orders(rng: random.Random, n_orders: int, products: pd.DataFrame, horizon_days: int) -> pd.DataFrame:
    rows = []
    customers = [f"CUST{i+1}" for i in range(6)]
    for i in range(n_orders):
        prod = products.sample(random_state=rng.randint(0, 10_000)).iloc[0]
        rows.append({
            "order_id": f"O{i+1:03d}",
            "product_id": prod["product_id"],
            "customer_id": rng.choice(customers),
            "quantity": rng.randint(20, 200),
            "due_day": rng.randint(2, horizon_days),
            "priority": rng.choice(["High", "Medium", "Low"]),
        })
    return pd.DataFrame(rows)


def generate_inventory(rng: random.Random, products: pd.DataFrame, raw_materials: list[str],
                        total_rm_requirement: dict[str, float] | None = None) -> pd.DataFrame:
    rows = []
    for _, p in products.iterrows():
        rows.append({"type": "FG", "item_id": p["product_id"], "opening_qty": rng.randint(0, 60)})
    total_rm_requirement = total_rm_requirement or {}
    for r in raw_materials:
        # Size opening inventory to comfortably cover total BOM-driven demand across all
        # orders (with a random 20-60% safety buffer), rather than an unrelated random
        # range — an unrelated range routinely produced structurally infeasible dummy data
        # (material demand exceeding supply with no replenishment modeled in the base
        # system), which is a data-generation bug, not a legitimate scheduling conflict.
        required = total_rm_requirement.get(r, rng.uniform(500, 1500))
        buffer_factor = 1.0 + rng.uniform(0.2, 0.6)
        rows.append({"type": "RM", "item_id": r, "opening_qty": round(required * buffer_factor, 1)})
    return pd.DataFrame(rows)


def generate_bom(rng: random.Random, products: pd.DataFrame, raw_materials: list[str]) -> pd.DataFrame:
    rows = []
    for _, p in products.iterrows():
        n_inputs = rng.randint(1, min(3, len(raw_materials)))
        for r in rng.sample(raw_materials, n_inputs):
            rows.append({
                "product_id": p["product_id"],
                "raw_material_id": r,
                "qty_per_unit": round(rng.uniform(0.5, 4.0), 2),
            })
    return pd.DataFrame(rows)


def generate_calendar(horizon_days: int, shifts_per_day: int, shift_duration_hours: float) -> pd.DataFrame:
    shift_names = ["Morning", "Afternoon", "Night"][:shifts_per_day]
    rows = []
    for d in range(1, horizon_days + 1):
        for s_idx, sname in enumerate(shift_names):
            start_hour = (d - 1) * 24 + s_idx * shift_duration_hours
            rows.append({
                "shift_period_id": f"D{d}_{sname}",
                "day": d,
                "shift_type": sname,
                "start_hour": start_hour,
                "end_hour": start_hour + shift_duration_hours,
            })
    return pd.DataFrame(rows)


def generate_operators(rng: random.Random, n_operators: int, machines: pd.DataFrame, shift_types: list[str]) -> pd.DataFrame:
    """
    Each operator is rostered for a SUBSET of shift types (not just one, and not all) —
    reflecting a realistic rotating roster where staff cover most, but not every, shift.
    An earlier single-shift-per-operator version could (and did) starve total operator-shift
    capacity down to ~1/3 of what the workload needed, causing infeasibility unrelated to
    the actual scheduling problem; covering >=2 of 3 shift types per operator, combined with
    round-robin forced coverage per shift type, keeps availability meaningfully restrictive
    (operators are NOT simply available always) while avoiding that artificial shortfall.
    """
    machine_ids = list(machines["machine_id"])
    n_m = len(machine_ids)
    # Force-cover every machine with at least 2 skilled operators via a double round-robin
    # (operator i is force-skilled on machine[i % n_m] AND machine[(i+1) % n_m]) — a single
    # dedicated operator per machine creates a hard per-machine capacity ceiling (that
    # operator's roster size in shift-slots) that batch volume can easily exceed, causing
    # infeasibility unrelated to the actual scheduling problem being demonstrated.
    forced_skill_by_operator: dict[int, set[str]] = {
        i: {machine_ids[i % n_m], machine_ids[(i + 1) % n_m]} for i in range(n_operators)
    }

    n_roster_shifts = max(1, len(shift_types) - 1) if len(shift_types) > 1 else 1
    rows = []
    for i in range(n_operators):
        n_extra = rng.randint(0, min(2, len(machine_ids) - 1))
        extra = set(rng.sample(machine_ids, n_extra)) if n_extra else set()
        skills = sorted(extra | forced_skill_by_operator[i])

        # Round-robin the "primary" shift so every shift type is well-covered, then add
        # enough additional shift types to reach n_roster_shifts total.
        primary = shift_types[i % len(shift_types)]
        others = [s for s in shift_types if s != primary]
        n_more = min(n_roster_shifts - 1, len(others))
        roster = [primary] + rng.sample(others, n_more) if n_more > 0 else [primary]

        rows.append({
            "operator_id": f"OP{i+1:02d}",
            "name": f"Operator {i+1}",
            "skills": ",".join(skills),
            "shift_type": ",".join(sorted(roster)),
        })
    return pd.DataFrame(rows)


def generate_maintenance(rng: random.Random, n_windows: int, machines: pd.DataFrame, calendar: pd.DataFrame) -> pd.DataFrame:
    rows = []
    chosen = calendar.sample(n=min(n_windows, len(calendar)), random_state=rng.randint(0, 10_000))
    for _, row in chosen.iterrows():
        mach = machines.sample(random_state=rng.randint(0, 10_000)).iloc[0]
        rows.append({
            "machine_id": mach["machine_id"],
            "day": row["day"],
            "shift_type": row["shift_type"],
        })
    return pd.DataFrame(rows)


def generate_parameters() -> pd.DataFrame:
    c = CONFIG
    rows = [
        {"key": "horizon_days", "value": c.horizon.horizon_days},
        {"key": "shifts_per_day", "value": c.horizon.shifts_per_day},
        {"key": "shift_duration_hours", "value": c.horizon.shift_duration_hours},
        {"key": "default_holding_cost_per_unit_day", "value": c.costs.default_holding_cost_per_unit_day},
        {"key": "default_late_penalty_per_unit_day", "value": c.costs.default_late_penalty_per_unit_day},
        {"key": "default_overtime_cost_per_hour", "value": c.costs.default_overtime_cost_per_hour},
        {"key": "default_startup_cost", "value": c.costs.default_startup_cost},
        {"key": "default_energy_cost_per_hour", "value": c.costs.default_energy_cost_per_hour},
        {"key": "min_batch_size", "value": c.dummy_data.default_min_batch_size},
        {"key": "max_batch_size", "value": c.dummy_data.default_max_batch_size},
    ]
    return pd.DataFrame(rows)


def generate_all(output_dir: Path | None = None) -> dict[str, pd.DataFrame]:
    """Generate the full dummy dataset and write every CSV to `output_dir` (default: data/)."""
    output_dir = Path(output_dir) if output_dir else Path(CONFIG.paths["data_dir"])
    output_dir.mkdir(parents=True, exist_ok=True)
    rng = _rng()
    dd = CONFIG.dummy_data
    stages = STAGE_NAMES[: dd.n_stages]
    raw_materials = [f"RM{i+1:02d}" for i in range(dd.n_raw_materials)]
    families = [f"FAM{i+1}" for i in range(dd.n_families)]

    products = generate_products(rng, dd.n_families, dd.n_products, stages)
    machines = generate_machines(rng, dd.n_machines, stages, families)
    processing_times = generate_processing_times(rng, products, machines)
    setup_times = generate_setup_times(rng, products, machines)
    orders = generate_orders(rng, dd.n_orders, products, CONFIG.horizon.horizon_days)
    bom = generate_bom(rng, products, raw_materials)

    # Total raw-material requirement implied by the generated orders (used to size opening
    # inventory realistically — see generate_inventory docstring).
    order_qty_by_product = orders.groupby("product_id")["quantity"].sum().to_dict()
    total_rm_requirement: dict[str, float] = {}
    for _, bom_row in bom.iterrows():
        qty = order_qty_by_product.get(bom_row["product_id"], 0.0)
        total_rm_requirement[bom_row["raw_material_id"]] = (
            total_rm_requirement.get(bom_row["raw_material_id"], 0.0) + qty * bom_row["qty_per_unit"]
        )

    inventory = generate_inventory(rng, products, raw_materials, total_rm_requirement)
    calendar = generate_calendar(
        CONFIG.horizon.horizon_days, CONFIG.horizon.shifts_per_day, CONFIG.horizon.shift_duration_hours
    )
    shift_types = calendar["shift_type"].unique().tolist()
    operators = generate_operators(rng, dd.n_operators, machines, shift_types)
    maintenance = generate_maintenance(rng, dd.n_maintenance_windows, machines, calendar)
    parameters = generate_parameters()

    tables = {
        "products.csv": products,
        "machines.csv": machines,
        "orders.csv": orders,
        "inventory.csv": inventory,
        "operators.csv": operators,
        "calendar.csv": calendar,
        "setup_times.csv": setup_times,
        "processing_times.csv": processing_times,
        "bill_of_materials.csv": bom,
        "maintenance.csv": maintenance,
        "parameters.csv": parameters,
    }
    for fname, df in tables.items():
        path = output_dir / fname
        df.to_csv(path, index=False)
        logger.info("Wrote %s (%d rows) -> %s", fname, len(df), path)

    return tables


if __name__ == "__main__":
    generate_all()
