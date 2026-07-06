"""
src/results.py
================
Extracts a solved Pyomo model into plain, report-ready tables (Phase 7 outputs): the
production schedule, machine schedule, operator schedule, inventory profile, utilization,
order completion / lateness, setup summary, cost breakdown, and KPIs — then exports
everything to CSV (and optionally Excel) under `outputs/`.

This module assumes `solver.solve_model()` has already loaded a feasible/optimal solution
into the model's variables; it does not solve anything itself.
"""

from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path

import pandas as pd
import pyomo.environ as pyo

from config import CONFIG
from logging_config import get_logger
from src.solver import SolveResult
from src.utils import pct

logger = get_logger(__name__)


def _v(var) -> float:
    """Safe value extraction: returns 0.0 for None/unset variables instead of raising."""
    val = pyo.value(var, exception=False)
    return float(val) if val is not None else 0.0


@dataclass
class PSOResults:
    production_schedule: pd.DataFrame
    machine_schedule: pd.DataFrame
    operator_schedule: pd.DataFrame
    inventory_profile: pd.DataFrame
    machine_utilization: pd.DataFrame
    order_completion: pd.DataFrame
    setup_summary: pd.DataFrame
    cost_breakdown: pd.DataFrame
    kpis: pd.DataFrame


def extract_results(model: pyo.ConcreteModel, solve_result: SolveResult) -> PSOResults:
    """Build every report table from a solved (or best-incumbent) model."""
    sets_obj = model.SETS
    params = model.PARAMS

    # ---- Production schedule (one row per scheduled batch) --------------------------------
    rows = []
    for b_id in model.BATCH_IDS:
        b = sets_obj.batch(b_id)
        assigned_machine = next(
            (mach for mach in model.CAND_MACHINES_OF_BATCH[b_id] if _v(model.Assign[b_id, mach]) > 0.5),
            None,
        )
        assigned_shift = next(
            (sp for sp in model.SHIFT_PERIODS if _v(model.ShiftAssign[b_id, sp]) > 0.5),
            None,
        )
        assigned_operator = next(
            (op for op in model.CAND_OPERATORS_OF_BATCH[b_id] if _v(model.OpAssign[b_id, op]) > 0.5),
            None,
        )
        rows.append({
            "batch_id": b_id, "lot_id": b.lot_id, "order_id": b.order_id,
            "product_id": b.product_id, "stage_id": b.stage_id, "stage_index": b.stage_index,
            "quantity": b.qty, "machine_id": assigned_machine, "operator_id": assigned_operator,
            "shift_period_id": assigned_shift,
            "start_hour": round(_v(model.Start[b_id]), 2), "finish_hour": round(_v(model.Finish[b_id]), 2),
            "due_day": b.due_day,
        })
    production_schedule = pd.DataFrame(rows).sort_values(["machine_id", "start_hour"]).reset_index(drop=True)

    # ---- Machine schedule (Gantt-ready: machine, start, finish, product, setup flag) -------
    machine_schedule = production_schedule[
        ["machine_id", "batch_id", "product_id", "start_hour", "finish_hour", "quantity"]
    ].dropna(subset=["machine_id"]).sort_values(["machine_id", "start_hour"]).reset_index(drop=True)

    # ---- Operator schedule ------------------------------------------------------------------
    operator_schedule = production_schedule[
        ["operator_id", "batch_id", "machine_id", "start_hour", "finish_hour"]
    ].dropna(subset=["operator_id"]).sort_values(["operator_id", "start_hour"]).reset_index(drop=True)

    # ---- Inventory profile -------------------------------------------------------------------
    inv_rows = []
    for p in model.PRODUCTS:
        for d in model.DAYS:
            inv_rows.append({
                "product_id": p, "day": d,
                "on_hand": round(_v(model.Inv[p, d]), 2),
                "backlog": round(_v(model.Backlog[p, d]), 2),
            })
    inventory_profile = pd.DataFrame(inv_rows)

    # ---- Machine utilization -----------------------------------------------------------------
    util_rows = []
    horizon_hours = params.horizon_hours
    for mach in model.MACHINES:
        busy_hours = sum(
            _v(model.Assign[b_id, mach]) * params.proc_time.get((b_id, mach), 0.0)
            for (b_id, mm) in model.CANDIDATE_BM if mm == mach
        )
        util_rows.append({
            "machine_id": mach, "busy_hours": round(busy_hours, 2),
            "horizon_hours": round(horizon_hours, 2),
            "utilization_pct": pct(busy_hours, horizon_hours),
        })
    machine_utilization = pd.DataFrame(util_rows)

    # ---- Order completion / lateness ----------------------------------------------------------
    order_rows = []
    for order_id in model.ORDERS:
        tardy = _v(model.Tardy[order_id])
        obatches = sets_obj.batches_by_order.get(order_id, [])
        last_stage_batches = [
            b for b in obatches if b.stage_index == len(sets_obj.routing_by_product[b.product_id]) - 1
        ]
        completion_hour = max((_v(model.Finish[b.batch_id]) for b in last_stage_batches), default=None)
        order_rows.append({
            "order_id": order_id,
            "due_day": params.due[order_id],
            "completion_hour": round(completion_hour, 2) if completion_hour is not None else None,
            "completion_day": round(completion_hour / 24.0, 2) if completion_hour is not None else None,
            "tardiness_days": round(tardy, 2),
            "is_late": bool(tardy > 1e-6),
        })
    order_completion = pd.DataFrame(order_rows)

    # ---- Setup / changeover summary ------------------------------------------------------------
    setup_rows = []
    for (b1, b2) in model.SETUP_INDEX:
        if _v(model.SetupOccurs[b1, b2]) > 0.5:
            b1_obj, b2_obj = sets_obj.batch(b1), sets_obj.batch(b2)
            common = set(model.CAND_MACHINES_OF_BATCH[b1]) & set(model.CAND_MACHINES_OF_BATCH[b2])
            shared_machine = next((mm for mm in common if _v(model.Assign[b1, mm]) > 0.5 and _v(model.Assign[b2, mm]) > 0.5), None)
            if shared_machine:
                setup_rows.append({
                    "machine_id": shared_machine, "from_batch": b1, "to_batch": b2,
                    "from_product": b1_obj.product_id, "to_product": b2_obj.product_id,
                    "setup_time_hours": params.setup_time.get((shared_machine, b1_obj.product_id, b2_obj.product_id), 0.0),
                    "setup_cost": params.setup_cost.get((shared_machine, b1_obj.product_id, b2_obj.product_id), 0.0),
                })
    setup_summary = pd.DataFrame(setup_rows)

    # ---- Cost breakdown ---------------------------------------------------------------------
    cost_rows = []
    total = 0.0
    for name, expr in model.COST_COMPONENTS.items():
        val = pyo.value(expr, exception=False) or 0.0
        cost_rows.append({"component": name, "value": round(val, 2)})
        total += val
    for row in cost_rows:
        row["pct_of_total"] = pct(row["value"], total)
    cost_rows.append({"component": "TOTAL", "value": round(total, 2), "pct_of_total": 100.0})
    cost_breakdown = pd.DataFrame(cost_rows)

    # ---- KPIs -----------------------------------------------------------------------------
    n_orders = len(model.ORDERS)
    n_late = int(order_completion["is_late"].sum()) if not order_completion.empty else 0
    avg_tardy = float(order_completion.loc[order_completion["is_late"], "tardiness_days"].mean()) \
        if n_late > 0 else 0.0
    total_setup_time = setup_summary["setup_time_hours"].sum() if not setup_summary.empty else 0.0
    total_setup_cost = setup_summary["setup_cost"].sum() if not setup_summary.empty else 0.0
    avg_util = machine_utilization["utilization_pct"].mean() if not machine_utilization.empty else 0.0
    makespan = _v(model.Makespan)
    avg_inventory = inventory_profile["on_hand"].mean() if not inventory_profile.empty else 0.0
    total_overtime = sum(_v(model.Overtime[mach, d]) for mach in model.MACHINES for d in model.DAYS)

    kpi_rows = [
        {"kpi": "total_cost", "value": round(total, 2)},
        {"kpi": "on_time_delivery_pct", "value": pct(n_orders - n_late, n_orders)},
        {"kpi": "n_late_orders", "value": n_late},
        {"kpi": "avg_tardiness_days_when_late", "value": round(avg_tardy, 2)},
        {"kpi": "avg_machine_utilization_pct", "value": round(avg_util, 2)},
        {"kpi": "total_setup_time_hours", "value": round(total_setup_time, 2)},
        {"kpi": "total_setup_cost", "value": round(total_setup_cost, 2)},
        {"kpi": "avg_inventory_on_hand", "value": round(avg_inventory, 2)},
        {"kpi": "makespan_hours", "value": round(makespan, 2)},
        {"kpi": "total_overtime_hours", "value": round(total_overtime, 2)},
        {"kpi": "solver_status", "value": solve_result.status},
        {"kpi": "solver_termination", "value": solve_result.termination_condition},
        {"kpi": "solve_time_seconds", "value": solve_result.solve_time_seconds},
        {"kpi": "mip_gap_target", "value": solve_result.mip_gap},
    ]
    kpis = pd.DataFrame(kpi_rows)

    logger.info(
        "Extracted results: %d scheduled batches, %d late orders (%.1f%% on-time), total cost=%.2f",
        len(production_schedule), n_late, pct(n_orders - n_late, n_orders), total,
    )

    return PSOResults(
        production_schedule=production_schedule, machine_schedule=machine_schedule,
        operator_schedule=operator_schedule, inventory_profile=inventory_profile,
        machine_utilization=machine_utilization, order_completion=order_completion,
        setup_summary=setup_summary, cost_breakdown=cost_breakdown, kpis=kpis,
    )


def export_results(results: PSOResults, output_dir: str | Path | None = None, excel: bool = True) -> list[Path]:
    """Write every result table to CSV (and one combined Excel workbook) under `output_dir`."""
    output_dir = Path(output_dir) if output_dir else Path(CONFIG.paths["output_dir"])
    output_dir.mkdir(parents=True, exist_ok=True)

    tables = {
        "production_schedule.csv": results.production_schedule,
        "machine_schedule.csv": results.machine_schedule,
        "operator_schedule.csv": results.operator_schedule,
        "inventory_profile.csv": results.inventory_profile,
        "machine_utilization.csv": results.machine_utilization,
        "order_completion.csv": results.order_completion,
        "setup_summary.csv": results.setup_summary,
        "cost_breakdown.csv": results.cost_breakdown,
        "kpis.csv": results.kpis,
    }

    written: list[Path] = []
    for fname, df in tables.items():
        path = output_dir / fname
        df.to_csv(path, index=False)
        written.append(path)
        logger.info("Wrote %s (%d rows)", fname, len(df))

    if excel:
        xlsx_path = output_dir / "pso_report.xlsx"
        with pd.ExcelWriter(xlsx_path, engine="openpyxl") as writer:
            for fname, df in tables.items():
                sheet_name = fname.replace(".csv", "")[:31]
                df.to_excel(writer, sheet_name=sheet_name, index=False)
        written.append(xlsx_path)
        logger.info("Wrote combined Excel workbook: %s", xlsx_path)

    return written
