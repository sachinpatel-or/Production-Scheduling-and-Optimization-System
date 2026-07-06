"""
src/constraints_machine.py
===========================
Implements C-MCH.1, C-MCH.2, C-MCH.3 from docs/02_mathematical_formulation.md Section 5.2.
"""

from __future__ import annotations

import pyomo.environ as pyo

from logging_config import get_logger

logger = get_logger(__name__)


def apply(m: pyo.ConcreteModel) -> None:
    sets_obj = m.SETS

    # C-MCH.1: exactly one machine per batch (over candidate machines only).
    def one_machine_rule(model, b_id):
        cands = model.CAND_MACHINES_OF_BATCH[b_id]
        if not cands:
            # Should never happen post-validation, but fail loudly rather than silently
            # producing an infeasible model with no diagnostic.
            raise ValueError(f"Batch {b_id} has zero candidate machines — check eligibility data.")
        return sum(model.Assign[b_id, mm] for mm in cands) == 1

    m.C_MCH1_OneMachinePerBatch = pyo.Constraint(m.BATCH_IDS, rule=one_machine_rule)

    # C-MCH.2: machine eligibility is enforced structurally — Assign is only DEFINED over
    # candidate (batch, machine) pairs that already satisfy Elig_{p,m}=1 (see variables.py),
    # so no separate inequality is needed. We still assert this invariant for auditability.
    for (b_id, mach) in m.CANDIDATE_BM:
        b = sets_obj.batch(b_id)
        assert m.PARAMS.eligibility.get((b.product_id, mach), 0) == 1, (
            f"C-MCH.2 invariant violated: Assign[{b_id},{mach}] exists but machine "
            f"is not eligible for product {b.product_id}"
        )

    # C-MCH.3: Active_{p,m} >= Assign_{b,m} for every batch of product p on machine m
    # (drives the per-(product,machine) startup cost in the objective).
    def active_link_rule(model, b_id, mach):
        b = sets_obj.batch(b_id)
        if (b.product_id, mach) not in model.ACTIVE_INDEX:
            return pyo.Constraint.Skip
        return model.Assign[b_id, mach] <= model.Active[b.product_id, mach]

    m.C_MCH3_ActiveLink = pyo.Constraint(m.CANDIDATE_BM, rule=active_link_rule)

    logger.info("Applied machine constraints: C-MCH.1 (%d), C-MCH.3 (%d)",
                len(m.BATCH_IDS), len(m.CANDIDATE_BM))
