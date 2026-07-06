"""
src/constraints_inventory.py
==============================
Implements C-DEM.1, C-INV.1, C-INV.2 from docs/02_mathematical_formulation.md Section 5.1.

C-INV.2 (non-negativity) is enforced by the variable's domain (`NonNegativeReals`) in
variables.py, so no separate inequality is posted here — documented for auditability.
"""

from __future__ import annotations

import pyomo.environ as pyo

from logging_config import get_logger
from src.utils import day_of_hour

logger = get_logger(__name__)


def apply(m: pyo.ConcreteModel) -> None:
    sets_obj = m.SETS
    params = m.PARAMS

    # C-DEM.1: demand satisfaction — sum of quantities across all lots/batches belonging to
    # an order must equal the ordered quantity. Because Qty is fixed to data at lot-creation
    # time (fixed_batch_quantities=True), this holds by construction; we still assert it for
    # auditability rather than silently trusting the data pipeline.
    for order_id in m.ORDERS:
        order_batches = sets_obj.batches_by_order.get(order_id, [])
        # Only count LAST-STAGE batches of each lot (a lot's quantity should be counted once,
        # not once per stage it passes through).
        last_stage_batches = [
            b for b in order_batches
            if b.stage_index == len(sets_obj.routing_by_product[b.product_id]) - 1
        ]
        total_qty = sum(params.batch_qty[b.batch_id] for b in last_stage_batches)
        expected = params.demand[order_id]
        if abs(total_qty - expected) > 1e-6:
            raise ValueError(
                f"C-DEM.1 invariant violated for order {order_id}: batches sum to "
                f"{total_qty}, expected demand {expected}. Check lot-splitting logic."
            )

    # C-INV.1: finished-goods inventory balance, per product per day.
    # Inv[p,d] = Inv[p,d-1] + (production finishing on day d, at the LAST stage of routing)
    #            - (demand due on day d)
    #
    # `Finish` is a continuous variable, so its day cannot be known at model-build time.
    # Every shift-period maps deterministically to exactly one day (calendar data), and a
    # batch finishes within its assigned shift-period (per C-TIME.3), so we attribute a
    # batch's completion to a day via its ShiftAssign variables — this keeps the balance
    # constraint fully linear (no nonlinear "day of Finish" extraction needed).
    sp_to_day = params.shift_day

    demand_due_by_product_day: dict[tuple[str, int], float] = {}
    for order_id in m.ORDERS:
        obatches = sets_obj.batches_by_order.get(order_id, [])
        if not obatches:
            continue
        p = obatches[0].product_id
        d = params.due[order_id]
        demand_due_by_product_day[(p, d)] = demand_due_by_product_day.get((p, d), 0.0) + params.demand[order_id]

    def inventory_balance_rule(model, p, d):
        prev_inv = params.open_inv[p] if d == 1 else model.Inv[p, d - 1]
        prev_backlog = 0.0 if d == 1 else model.Backlog[p, d - 1]
        finished_today = sum(
            model.ShiftAssign[b.batch_id, sp] * params.batch_qty[b.batch_id]
            for b in sets_obj.batches
            if b.product_id == p and b.stage_index == len(sets_obj.routing_by_product[p]) - 1
            for sp in model.SHIFT_PERIODS if sp_to_day[sp] == d
        )
        demand_today = demand_due_by_product_day.get((p, d), 0.0)
        # Paired on-hand/backlog balance (standard linear backorder formulation): net
        # position (Inv - Backlog) evolves by production minus new demand, exactly like a
        # plain balance, but Inv and Backlog are both kept >=0 instead of allowing Inv to
        # go negative. This keeps the model feasible when production finishes after an
        # order's due date — the shortfall shows up as Backlog instead of infeasibility,
        # while `Tardy_o` (constraints_due_dates.py) is the actual cost driver for lateness.
        return (model.Inv[p, d] - model.Backlog[p, d]
                == prev_inv - prev_backlog + finished_today - demand_today)

    m.C_INV1_Balance = pyo.Constraint(m.PRODUCTS, m.DAYS, rule=inventory_balance_rule)

    logger.info("Applied inventory constraints: C-DEM.1 (asserted), C-INV.1 (%d)",
                len(m.PRODUCTS) * len(m.DAYS))
