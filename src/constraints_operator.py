"""
src/constraints_operator.py
=============================
Implements C-OPR.1, C-OPR.2, C-OPR.3, C-OPR.4 from docs/02_mathematical_formulation.md
Section 5.4. Skipped entirely when `config.ModelConfig.enable_operator_constraints` is
False, so the model can be run in a lighter "machine-only" mode for fast smoke tests.
"""

from __future__ import annotations

import pyomo.environ as pyo

from config import CONFIG
from logging_config import get_logger

logger = get_logger(__name__)


def apply(m: pyo.ConcreteModel) -> None:
    if not CONFIG.model.enable_operator_constraints:
        logger.info("Operator constraints disabled via config.model.enable_operator_constraints")
        return

    params = m.PARAMS

    # C-OPR.1: exactly one operator per batch (mirrors the single machine-assignment sum).
    def one_operator_rule(model, b_id):
        ops = model.CAND_OPERATORS_OF_BATCH[b_id]
        machine_sum = sum(model.Assign[b_id, mm] for mm in model.CAND_MACHINES_OF_BATCH[b_id])
        if not ops:
            raise ValueError(f"Batch {b_id} has zero candidate operators — check skills data.")
        return sum(model.OpAssign[b_id, op] for op in ops) == machine_sum

    m.C_OPR1_OneOperatorPerBatch = pyo.Constraint(m.BATCH_IDS, rule=one_operator_rule)

    # C-OPR.2: operator skill match — operator can only be assigned to a batch if they are
    # skilled on the SPECIFIC machine that batch ends up assigned to.
    op_skill_index = [
        (b_id, op, mach)
        for b_id in m.BATCH_IDS
        for op in m.CAND_OPERATORS_OF_BATCH[b_id]
        for mach in m.CAND_MACHINES_OF_BATCH[b_id]
        if params.op_skill.get((op, mach), 0) == 0
    ]

    def skill_rule(model, b_id, op, mach):
        # If operator op is NOT skilled on mach, forbid (OpAssign=1 AND Assign=1) together.
        return model.OpAssign[b_id, op] + model.Assign[b_id, mach] <= 1

    m.C_OPR2_SkillMatch = pyo.Constraint(op_skill_index, rule=skill_rule)

    # C-OPR.3: operator availability — operator must be rostered for the batch's shift-period.
    avail_index = [
        (b_id, op, sp)
        for b_id in m.BATCH_IDS
        for op in m.CAND_OPERATORS_OF_BATCH[b_id]
        for sp in m.SHIFT_PERIODS
        if params.op_avail.get((op, sp), 0) == 0
    ]

    def avail_rule(model, b_id, op, sp):
        return model.OpAssign[b_id, op] + model.ShiftAssign[b_id, sp] <= 1

    m.C_OPR3_Availability = pyo.Constraint(avail_index, rule=avail_rule)

    # C-OPR.4: operator no double-booking within the same shift-period.
    batches_by_op: dict[str, list[str]] = {}
    for b_id in m.BATCH_IDS:
        for op in m.CAND_OPERATORS_OF_BATCH[b_id]:
            batches_by_op.setdefault(op, []).append(b_id)
    #
    # The natural statement is bilinear (OpAssign * ShiftAssign). We linearize with the
    # standard AND-auxiliary trick (same pattern as SetupOccurs in constraints_setup.py):
    # OpInShift[b,op,sp] = 1 iff OpAssign[b,op]=1 AND ShiftAssign[b,sp]=1, then cap the sum
    # of OpInShift over batches at 1 per (operator, shift-period) — this scales linearly in
    # the number of (batch, operator) candidate pairs rather than quadratically in batches.
    def and_upper1_rule(model, b_id, op, sp):
        return model.OpInShift[b_id, op, sp] <= model.OpAssign[b_id, op]

    def and_upper2_rule(model, b_id, op, sp):
        return model.OpInShift[b_id, op, sp] <= model.ShiftAssign[b_id, sp]

    def and_lower_rule(model, b_id, op, sp):
        return model.OpInShift[b_id, op, sp] >= model.OpAssign[b_id, op] + model.ShiftAssign[b_id, sp] - 1

    m.C_OPR4_AndUpper1 = pyo.Constraint(m.OP_IN_SHIFT_INDEX, rule=and_upper1_rule)
    m.C_OPR4_AndUpper2 = pyo.Constraint(m.OP_IN_SHIFT_INDEX, rule=and_upper2_rule)
    m.C_OPR4_AndLower = pyo.Constraint(m.OP_IN_SHIFT_INDEX, rule=and_lower_rule)

    op_sp_index = [(op, sp) for op in batches_by_op for sp in m.SHIFT_PERIODS]

    def no_double_booking_rule(model, op, sp):
        relevant = batches_by_op.get(op, [])
        return sum(model.OpInShift[b_id, op, sp] for b_id in relevant) <= 1

    m.C_OPR4_NoDoubleBooking = pyo.Constraint(op_sp_index, rule=no_double_booking_rule)

    logger.info(
        "Applied operator constraints: C-OPR.1 (%d), C-OPR.2 (%d), C-OPR.3 (%d), "
        "C-OPR.4 AND-aux (%d x3), no-double-booking (%d)",
        len(m.BATCH_IDS), len(op_skill_index), len(avail_index),
        len(m.OP_IN_SHIFT_INDEX), len(op_sp_index),
    )
