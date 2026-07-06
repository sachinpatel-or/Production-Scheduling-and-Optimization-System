"""
src/constraints_due_dates.py
==============================
Implements C-DUE.1 from docs/02_mathematical_formulation.md Section 5.7, using a clean
per-batch epigraph linearization: for every batch belonging to an order, the order's
tardiness must be at least as large as that batch's own lateness (in days), so `Tardy_o`
ends up equal to the worst (latest) lateness among the order's batches — exactly the
"max over batches" the math doc specifies, expressed as a standard linear epigraph.
"""

from __future__ import annotations

import pyomo.environ as pyo

from logging_config import get_logger

logger = get_logger(__name__)


def apply(m: pyo.ConcreteModel) -> None:
    sets_obj = m.SETS
    params = m.PARAMS

    # Only the LAST stage of each lot represents "order completion" for tardiness purposes
    # (earlier stages finishing late is an internal scheduling matter, not a customer-facing
    # delay, as long as the final stage still meets the due date).
    epigraph_index = []
    for order_id in m.ORDERS:
        for b in sets_obj.batches_by_order.get(order_id, []):
            if b.stage_index == len(sets_obj.routing_by_product[b.product_id]) - 1:
                epigraph_index.append((order_id, b.batch_id))

    def tardy_epigraph_rule(model, order_id, b_id):
        due = params.due[order_id]
        # Finish[b_id] is in hours from horizon start; convert the due date (a day index)
        # to an hour boundary (end of due day) for a consistent, linear comparison.
        due_hours = due * 24.0
        return model.Tardy[order_id] >= (model.Finish[b_id] - due_hours) / 24.0

    m.C_DUE1_TardyEpigraph = pyo.Constraint(epigraph_index, rule=tardy_epigraph_rule)
    # Tardy_o >= 0 is enforced by the variable's NonNegativeReals domain.

    logger.info("Applied due-date constraints: C-DUE.1 (%d epigraph rows)", len(epigraph_index))
