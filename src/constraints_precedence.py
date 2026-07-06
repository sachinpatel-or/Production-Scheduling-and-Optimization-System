"""
src/constraints_precedence.py
===============================
Implements C-PREC.1 from docs/02_mathematical_formulation.md Section 5.5: a lot's batch at
stage s' cannot start before its batch at the preceding stage s (same lot lineage) finishes.
"""

from __future__ import annotations

import pyomo.environ as pyo

from config import CONFIG
from logging_config import get_logger

logger = get_logger(__name__)


def apply(m: pyo.ConcreteModel) -> None:
    if not CONFIG.model.enable_precedence:
        logger.info("Precedence constraints disabled via config.model.enable_precedence")
        return

    sets_obj = m.SETS

    prec_pairs = [
        (b.predecessor_batch_id, b.batch_id)
        for b in sets_obj.batches if b.predecessor_batch_id is not None
    ]

    def precedence_rule(model, pred_id, succ_id):
        return model.Start[succ_id] >= model.Finish[pred_id]

    m.C_PREC1_StagePrecedence = pyo.Constraint(prec_pairs, rule=precedence_rule)

    logger.info("Applied precedence constraints: C-PREC.1 (%d stage-to-stage links)", len(prec_pairs))
