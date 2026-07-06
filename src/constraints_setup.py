"""
src/constraints_setup.py
==========================
Implements C-SEQ.3 from docs/02_mathematical_formulation.md Section 5.3 — the AND-style
linearization that turns on `SetupOccurs_{b,b'}` exactly when a sequencing edge is active
AND the two batches run different products on the same machine (i.e., a real changeover).
`SetupOccurs` feeds the setup/changeover cost term in `objective.py`.
"""

from __future__ import annotations

import pyomo.environ as pyo

from logging_config import get_logger

logger = get_logger(__name__)


def apply(m: pyo.ConcreteModel) -> None:
    # Built explicitly (one inequality per (b1,b2,shared-machine) combination, since Pyomo
    # constraint rules don't natively express "OR across candidate machines").
    lower_index = []
    for (b1, b2) in m.SETUP_INDEX:
        common = set(m.CAND_MACHINES_OF_BATCH[b1]) & set(m.CAND_MACHINES_OF_BATCH[b2])
        for mach in common:
            lower_index.append((b1, b2, mach))

    def lower_rule(model, b1, b2, mach):
        return (model.SetupOccurs[b1, b2]
                >= model.Seq[b1, b2] + model.Assign[b1, mach] + model.Assign[b2, mach] - 2)

    m.C_SEQ3_SetupLower = pyo.Constraint(lower_index, rule=lower_rule)

    # SetupOccurs_{b,b'} <= Seq_{b,b'}  (upper bound: no setup credited without ordering)
    def upper_rule(model, b1, b2):
        return model.SetupOccurs[b1, b2] <= model.Seq[b1, b2]

    m.C_SEQ3_SetupUpper = pyo.Constraint(m.SETUP_INDEX, rule=upper_rule)

    logger.info("Applied setup-linearization constraints: lower (%d), upper (%d)",
                len(lower_index), len(m.SETUP_INDEX))
