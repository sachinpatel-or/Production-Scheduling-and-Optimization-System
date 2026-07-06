"""
src/constraints_material.py
=============================
Implements C-MAT.1, C-MAT.2 from docs/02_mathematical_formulation.md Section 5.1.

Unlike finished-goods inventory (constraints_inventory.py), raw material availability is a
genuine hard constraint in this model (you cannot consume material you don't have) — so no
backlog pairing is used here; `InvRM >= 0` is enforced directly via variable domain plus
this balance equation, meaning a raw-material shortage correctly makes the model infeasible
(and should be caught by the infeasibility diagnostics in solver.py) rather than silently
allowed, matching real plant behavior.
"""

from __future__ import annotations

import pyomo.environ as pyo

from logging_config import get_logger

logger = get_logger(__name__)


def apply(m: pyo.ConcreteModel) -> None:
    sets_obj = m.SETS
    params = m.PARAMS
    sp_to_day = params.shift_day

    # Raw-material consumption is triggered by the FIRST stage of a product's routing
    # (materials are drawn when the lot enters production), consistent with the BOM
    # attaching to the finished product `p`.
    def consumption_today(model, r, d):
        total = 0.0
        for b in sets_obj.batches:
            if b.stage_index != 0:
                continue
            qty_per_unit = params.bom.get((b.product_id, r))
            if not qty_per_unit:
                continue
            total += qty_per_unit * params.batch_qty[b.batch_id] * sum(
                model.ShiftAssign[b.batch_id, sp]
                for sp in model.SHIFT_PERIODS if sp_to_day[sp] == d
            )
        return total

    def material_balance_rule(model, r, d):
        prev = params.open_inv_rm[r] if d == 1 else model.InvRM[r, d - 1]
        return model.InvRM[r, d] == prev - consumption_today(model, r, d)

    m.C_MAT1_Balance = pyo.Constraint(m.RAW_MATERIALS, m.DAYS, rule=material_balance_rule)
    # C-MAT.2 (InvRM >= 0) is enforced by the variable's NonNegativeReals domain.

    logger.info("Applied raw-material constraints: C-MAT.1 (%d)", len(m.RAW_MATERIALS) * len(m.DAYS))
