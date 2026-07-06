"""
src/solver.py
==============
Invokes the MILP solver (HiGHS preferred, CBC fallback), streams the solver log, and — if
the solver reports infeasibility — runs an automated diagnostic pass so the user gets an
actionable report instead of a bare "infeasible" status.
"""

from __future__ import annotations

from dataclasses import dataclass, field

import pyomo.environ as pyo
from pyomo.opt import SolverStatus, TerminationCondition

from config import CONFIG
from logging_config import get_logger

logger = get_logger(__name__)


@dataclass
class SolveResult:
    status: str
    termination_condition: str
    objective_value: float | None
    solve_time_seconds: float
    mip_gap: float | None
    solver_used: str
    infeasibility_report: list[str] = field(default_factory=list)

    @property
    def is_optimal_or_feasible(self) -> bool:
        return self.termination_condition in ("optimal", "feasible", "maxTimeLimit") and self.objective_value is not None


def _try_solver(model: pyo.ConcreteModel, solver_name: str):
    """Attempt to instantiate and confirm availability of a named solver."""
    try:
        if solver_name == "appsi_highs":
            from pyomo.contrib.appsi.solvers.highs import Highs
            solver = Highs()
            if not solver.available():
                return None
        else:
            solver = pyo.SolverFactory(solver_name)
            if not solver.available():
                return None
        return solver
    except Exception as e:  # noqa: BLE001 — deliberately broad: any solver probe failure means "unavailable"
        logger.warning("Solver probe failed for '%s': %s", solver_name, e)
        return None


def solve_model(model: pyo.ConcreteModel) -> SolveResult:
    """Solve `model` with the preferred solver, falling back to CBC if unavailable/fails."""
    cfg = CONFIG.solver
    solver_name = cfg.preferred_solver
    solver = _try_solver(model, solver_name)

    if solver is None:
        logger.warning("Preferred solver '%s' unavailable, falling back to '%s'.",
                        cfg.preferred_solver, cfg.fallback_solver)
        solver_name = cfg.fallback_solver
        solver = _try_solver(model, solver_name)

    if solver is None:
        raise RuntimeError(
            f"Neither preferred solver ({cfg.preferred_solver}) nor fallback "
            f"({cfg.fallback_solver}) is available. Install HiGHS (`pip install highspy`) "
            f"or CBC (`apt-get install coinor-cbc` / conda)."
        )

    logger.info("Solving with '%s' (time_limit=%ds, mip_gap=%.3f)...",
                solver_name, cfg.time_limit_seconds, cfg.mip_gap)

    import time
    t0 = time.time()

    if solver_name == "appsi_highs":
        solver.config.time_limit = cfg.time_limit_seconds
        solver.config.mip_gap = cfg.mip_gap
        solver.config.stream_solver = cfg.tee
        solver.config.load_solution = False
        results = solver.solve(model)
        term = getattr(results.termination_condition, "name", str(results.termination_condition))
        has_solution = (
            results.best_feasible_objective is not None
        )
        status = "ok" if term in ("optimal", "feasible", "maxTimeLimit") and has_solution else term
        if has_solution:
            try:
                solver.load_vars()
            except Exception as e:  # noqa: BLE001
                logger.warning("Could not load incumbent solution: %s", e)
                has_solution = False
    else:
        options = {"seconds": cfg.time_limit_seconds, "ratioGap": cfg.mip_gap}
        results = solver.solve(model, tee=cfg.tee, options=options, load_solutions=False)
        term = getattr(results.solver.termination_condition, "name", str(results.solver.termination_condition))
        status = str(results.solver.status)
        has_solution = term in ("optimal", "feasible", "maxTimeLimit", "maxIterations")
        if has_solution:
            try:
                model.solutions.load_from(results)
            except Exception as e:  # noqa: BLE001
                logger.warning("Could not load incumbent solution: %s", e)
                has_solution = False

    solve_time = time.time() - t0

    obj_value = None
    if has_solution:
        try:
            obj_value = pyo.value(model.OBJ1_TotalCost)
        except Exception:  # noqa: BLE001 — objective may be undefined if load partially failed
            obj_value = None

    infeasibility_report: list[str] = []
    if "infeasible" in term.lower():
        infeasibility_report = diagnose_infeasibility(model)

    result = SolveResult(
        status=status,
        termination_condition=term,
        objective_value=obj_value,
        solve_time_seconds=round(solve_time, 2),
        mip_gap=cfg.mip_gap,
        solver_used=solver_name,
        infeasibility_report=infeasibility_report,
    )

    logger.info(
        "Solve finished: status=%s, termination=%s, objective=%s, time=%.2fs",
        result.status, result.termination_condition, result.objective_value, result.solve_time_seconds,
    )
    if infeasibility_report:
        logger.error("INFEASIBILITY DIAGNOSTICS:\n  - %s", "\n  - ".join(infeasibility_report))

    return result


def diagnose_infeasibility(model: pyo.ConcreteModel) -> list[str]:
    """
    Lightweight, solver-agnostic infeasibility diagnostic.

    HiGHS/CBC via Pyomo do not universally expose an IIS (Irreducible Infeasible Set) the
    way commercial solvers do, so this performs a structural pre-check of the most common
    real-world causes of infeasibility in this model, reported in order of likelihood:
      1. Orders whose product has zero eligible machines at some routing stage.
      2. Orders whose due date is earlier than the minimum possible completion time given
         processing + setup times (a rough lower bound, ignoring contention).
      3. Raw material shortages: total BOM requirement across all orders exceeds opening
         inventory for any raw material (a necessary, not sufficient, feasibility check).
    """
    sets_obj = model.SETS
    params = model.PARAMS
    findings: list[str] = []

    # 1. Coverage check (should already be caught by validation.py, re-checked for safety).
    for b in sets_obj.batches:
        if not model.CAND_MACHINES_OF_BATCH.get(b.batch_id):
            findings.append(
                f"Batch {b.batch_id} (order {b.order_id}, product {b.product_id}, stage "
                f"{b.stage_id}) has NO eligible machine — infeasible by construction."
            )

    # 2. Rough due-date lower bound check (ignores machine contention/setups from other jobs).
    for order_id in sets_obj.orders:
        obatches = sets_obj.batches_by_order.get(order_id, [])
        if not obatches:
            continue
        min_total_hours = 0.0
        for b in obatches:
            cands = model.CAND_MACHINES_OF_BATCH.get(b.batch_id, [])
            if cands:
                min_total_hours += min(params.proc_time[(b.batch_id, mm)] for mm in cands)
        due_hours = params.due[order_id] * 24.0
        if min_total_hours > due_hours:
            findings.append(
                f"Order {order_id}: minimum possible processing time ({min_total_hours:.1f}h, "
                f"ignoring contention/setup) already exceeds due date ({due_hours:.0f}h) — "
                f"due date is likely too tight even in isolation."
            )

    # 3. Raw material aggregate shortage check.
    total_required: dict[str, float] = {}
    for b in sets_obj.batches:
        if b.stage_index != 0:
            continue
        for r in sets_obj.raw_materials:
            qty_per_unit = params.bom.get((b.product_id, r))
            if qty_per_unit:
                total_required[r] = total_required.get(r, 0.0) + qty_per_unit * b.qty
    for r, required in total_required.items():
        available = params.open_inv_rm.get(r, 0.0)
        if required > available:
            findings.append(
                f"Raw material {r}: total demand across all orders ({required:.1f} units) "
                f"exceeds opening inventory ({available:.1f} units) — likely infeasible "
                f"unless replenishment is modeled (not supported in this base version)."
            )

    # 4. Rough operator-capacity check: total (operator, shift-period) slots available vs.
    # total batches needing an operator assignment (each batch needs exactly one operator
    # in exactly one shift-period, per C-OPR.1/C-OPR.4) — a necessary, not sufficient, check
    # that catches the common case of operators clustered onto too few shift types/days.
    total_operator_shift_slots = sum(
        1 for op in sets_obj.operators for sp_id in params.shift_start
        if params.op_avail.get((op, sp_id), 0) == 1
    )
    total_batches_needing_operator = len(sets_obj.batches)
    if total_operator_shift_slots < total_batches_needing_operator:
        findings.append(
            f"Operator capacity: only {total_operator_shift_slots} (operator, shift-period) "
            f"slots are available across all operators, but {total_batches_needing_operator} "
            f"batches each require one operator-shift assignment — operators are likely "
            f"clustered onto too few shift types or days relative to the workload."
        )

    if not findings:
        findings.append(
            "No structural cause identified by the lightweight diagnostic. The infeasibility "
            "likely arises from interaction effects (calendar/shift contention, sequencing, "
            "operator overlap). Re-run with `write_lp=True` and inspect outputs/model.lp, or "
            "try relaxing config.model.allow_backorder / operator constraints to isolate the "
            "binding constraint family."
        )
    return findings
