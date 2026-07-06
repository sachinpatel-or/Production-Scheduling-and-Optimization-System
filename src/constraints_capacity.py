"""
src/constraints_capacity.py
=============================
Implements C-CAP.1, C-CAP.2 from docs/02_mathematical_formulation.md Section 5.6.

Also owns the AND-linearization of `AssignInShift_{b,m,sp} = Assign_{b,m} AND
ShiftAssign_{b,sp}` (declared in variables.py), since capacity/overtime accounting is its
only consumer — this keeps the bilinear-avoidance logic next to the constraint that needs it
rather than scattering AND-aux wiring across unrelated modules.
"""

from __future__ import annotations

import pyomo.environ as pyo

from config import CONFIG
from logging_config import get_logger

logger = get_logger(__name__)


def apply(m: pyo.ConcreteModel) -> None:
    params = m.PARAMS

    # ---- AND-linearization: AssignInShift = Assign AND ShiftAssign ----------------------
    def and_upper1_rule(model, b_id, mach, sp):
        return model.AssignInShift[b_id, mach, sp] <= model.Assign[b_id, mach]

    def and_upper2_rule(model, b_id, mach, sp):
        return model.AssignInShift[b_id, mach, sp] <= model.ShiftAssign[b_id, sp]

    def and_lower_rule(model, b_id, mach, sp):
        return model.AssignInShift[b_id, mach, sp] >= model.Assign[b_id, mach] + model.ShiftAssign[b_id, sp] - 1

    m.C_CAP_AndUpper1 = pyo.Constraint(m.ASSIGN_IN_SHIFT_INDEX, rule=and_upper1_rule)
    m.C_CAP_AndUpper2 = pyo.Constraint(m.ASSIGN_IN_SHIFT_INDEX, rule=and_upper2_rule)
    m.C_CAP_AndLower = pyo.Constraint(m.ASSIGN_IN_SHIFT_INDEX, rule=and_lower_rule)

    # ---- C-CAP.1: machine daily throughput cap -------------------------------------------
    # Total quantity processed on machine m, on day d, across all shift-periods of that day,
    # cannot exceed the machine's rated daily capacity (Cap_m units/hour * 24h).
    shift_periods_by_day: dict[int, list[str]] = {}
    for sp, d in params.shift_day.items():
        shift_periods_by_day.setdefault(d, []).append(sp)

    def daily_capacity_rule(model, mach, d):
        relevant_b = [b_id for (b_id, mm) in model.CANDIDATE_BM if mm == mach]
        if not relevant_b:
            return pyo.Constraint.Skip
        total_qty = sum(
            model.AssignInShift[b_id, mach, sp] * model.PARAMS.batch_qty[b_id]
            for b_id in relevant_b
            for sp in shift_periods_by_day.get(d, [])
        )
        return total_qty <= params.capacity[mach] * 24.0

    m.C_CAP1_DailyCapacity = pyo.Constraint(m.MACHINES, m.DAYS, rule=daily_capacity_rule)

    # ---- C-CAP.2: overtime linking --------------------------------------------------------
    if CONFIG.model.enable_overtime:
        def overtime_rule(model, mach, d):
            relevant_b = [b_id for (b_id, mm) in model.CANDIDATE_BM if mm == mach]
            scheduled_hours = sum(
                model.AssignInShift[b_id, mach, sp] * params.proc_time[(b_id, mach)]
                for b_id in relevant_b
                for sp in shift_periods_by_day.get(d, [])
            )
            available_hours = sum(
                params.shift_duration[sp] * (1 - params.maint_block.get((mach, sp), 0))
                for sp in shift_periods_by_day.get(d, [])
            )
            return model.Overtime[mach, d] >= scheduled_hours - available_hours

        m.C_CAP2_Overtime = pyo.Constraint(m.MACHINES, m.DAYS, rule=overtime_rule)
    else:
        logger.info("Overtime constraints disabled via config.model.enable_overtime")

    logger.info(
        "Applied capacity constraints: AND-aux (%d x3), C-CAP.1 (%d), C-CAP.2 (%d)",
        len(m.ASSIGN_IN_SHIFT_INDEX), len(m.MACHINES) * len(m.DAYS),
        len(m.MACHINES) * len(m.DAYS) if CONFIG.model.enable_overtime else 0,
    )
