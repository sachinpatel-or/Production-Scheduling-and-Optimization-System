"""
src/constraints_batch.py
==========================
Implements C-BATCH.1, C-BATCH.2 from docs/02_mathematical_formulation.md Section 5.5.

In the default `fixed_batch_quantities=True` mode, `Qty_b` is fixed to data at lot-creation
time (`sets.py::_split_into_lots`) so these bounds are satisfied by construction — they are
still posted as live Pyomo constraints (rather than skipped) so the model is auditable and
so flipping `fixed_batch_quantities=False` in `config.py` (a documented future extension)
would immediately get correct enforcement without code changes here.
"""

from __future__ import annotations

import pyomo.environ as pyo

from logging_config import get_logger

logger = get_logger(__name__)


def apply(m: pyo.ConcreteModel) -> None:
    params = m.PARAMS
    big_m = params.big_m

    # C-BATCH.1: minimum batch size (only binding when Assign[b,m]=1).
    def min_batch_rule(model, b_id, mach):
        return model.Qty[b_id] >= params.min_batch * model.Assign[b_id, mach] - big_m * (1 - model.Assign[b_id, mach])

    # C-BATCH.2: maximum batch size (only binding when Assign[b,m]=1).
    def max_batch_rule(model, b_id, mach):
        return model.Qty[b_id] <= params.max_batch * model.Assign[b_id, mach] + big_m * (1 - model.Assign[b_id, mach])

    m.C_BATCH1_MinSize = pyo.Constraint(m.CANDIDATE_BM, rule=min_batch_rule)
    m.C_BATCH2_MaxSize = pyo.Constraint(m.CANDIDATE_BM, rule=max_batch_rule)

    logger.info("Applied batch-sizing constraints: C-BATCH.1/2 (%d each)", len(m.CANDIDATE_BM))
