"""
src/constraints_shift.py
==========================
Implements C-TIME.2, C-TIME.3, C-TIME.4 from docs/02_mathematical_formulation.md
Section 5.3 — every batch must be assigned exactly one shift-period and its [Start,Finish]
window must lie inside that shift-period's clock window; machines under maintenance during
a shift-period cannot be assigned a batch scheduled in that shift-period.
"""

from __future__ import annotations

import pyomo.environ as pyo

from logging_config import get_logger

logger = get_logger(__name__)


def apply(m: pyo.ConcreteModel) -> None:
    params = m.PARAMS
    big_m = params.big_m

    # C-TIME.2: exactly one shift-period per batch.
    def one_shift_rule(model, b_id):
        return sum(model.ShiftAssign[b_id, sp] for sp in model.SHIFT_PERIODS) == 1

    m.C_TIME2_OneShiftPerBatch = pyo.Constraint(m.BATCH_IDS, rule=one_shift_rule)

    # Only allow a batch to be assigned a shift-period long enough to fit its processing
    # time on AT LEAST ONE of its candidate machines (a quick, valid pre-filter that keeps
    # the model from offering provably-infeasible shift choices). We do this by restricting
    # the shift-period domain, not by adding constraints, for model compactness.
    feasible_shift_index = []
    for b_id in m.BATCH_IDS:
        min_proc = min(params.proc_time[(b_id, mm)] for mm in m.CAND_MACHINES_OF_BATCH[b_id])
        for sp in m.SHIFT_PERIODS:
            if params.shift_duration[sp] + 1e-9 >= min_proc:
                feasible_shift_index.append((b_id, sp))
    m.FEASIBLE_SHIFT_INDEX = feasible_shift_index

    feasible_shift_set = set(feasible_shift_index)

    def restrict_infeasible_shift_rule(model, b_id, sp):
        return model.ShiftAssign[b_id, sp] == 0

    restrict_index = [(b, sp) for b in m.BATCH_IDS for sp in m.SHIFT_PERIODS
                       if (b, sp) not in feasible_shift_set]
    m.C_TIME_RestrictInfeasibleShift = pyo.Constraint(restrict_index, rule=restrict_infeasible_shift_rule)

    # C-TIME.3: batch contained inside its assigned shift window.
    def start_in_window_rule(model, b_id, sp):
        return model.Start[b_id] >= params.shift_start[sp] - big_m * (1 - model.ShiftAssign[b_id, sp])

    def finish_in_window_rule(model, b_id, sp):
        return model.Finish[b_id] <= params.shift_end[sp] + big_m * (1 - model.ShiftAssign[b_id, sp])

    m.C_TIME3_StartInWindow = pyo.Constraint(m.BATCH_IDS, m.SHIFT_PERIODS, rule=start_in_window_rule)
    m.C_TIME3_FinishInWindow = pyo.Constraint(m.BATCH_IDS, m.SHIFT_PERIODS, rule=finish_in_window_rule)

    # C-TIME.4: maintenance exclusion — machine m cannot be assigned a batch scheduled in
    # a shift-period during which m is under maintenance.
    maint_index = [
        (b_id, mach, sp)
        for b_id in m.BATCH_IDS
        for mach in m.CAND_MACHINES_OF_BATCH[b_id]
        for sp in m.SHIFT_PERIODS
        if params.maint_block.get((mach, sp), 0) == 1
    ]

    def maintenance_rule(model, b_id, mach, sp):
        return model.Assign[b_id, mach] + model.ShiftAssign[b_id, sp] <= 1

    m.C_TIME4_MaintenanceExclusion = pyo.Constraint(maint_index, rule=maintenance_rule)

    logger.info(
        "Applied shift/calendar constraints: C-TIME.2 (%d), restricted-infeasible (%d), "
        "C-TIME.3 (%d x2), C-TIME.4 maintenance (%d)",
        len(m.BATCH_IDS), len(restrict_index), len(m.BATCH_IDS) * len(m.SHIFT_PERIODS), len(maint_index),
    )
