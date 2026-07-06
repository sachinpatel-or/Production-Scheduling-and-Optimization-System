"""
src/objective.py
=================
Implements OBJ.1 from docs/02_mathematical_formulation.md Section 4: minimize total cost
as the literal sum of production, setup/changeover, inventory holding, late-delivery
penalty, machine startup, overtime, and (optional) energy cost.

Note on Backlog: `Tardy_o` (linked to Finish vs Due in constraints_due_dates.py) is the
sole lateness cost driver in the objective. `Backlog_{p,d}` (constraints_inventory.py) is a
feasibility-preserving accounting variable only — it is deliberately NOT priced here, to
avoid double-penalizing the same lateness through two different cost terms.
"""

from __future__ import annotations

import pyomo.environ as pyo

from config import CONFIG
from logging_config import get_logger

logger = get_logger(__name__)


def apply(m: pyo.ConcreteModel) -> None:
    params = m.PARAMS
    sets_obj = m.SETS

    # 1. Production cost: sum over candidate (batch, machine) pairs of Assign * Qty * cost.
    #    Qty is fixed to data (fixed_batch_quantities=True), so this is already linear.
    production_cost = sum(
        m.Assign[b_id, mach] * params.batch_qty[b_id] * params.prod_cost[(sets_obj.batch(b_id).product_id, mach)]
        for (b_id, mach) in m.CANDIDATE_BM
    )

    # 2. Setup / changeover cost: sum over SetupOccurs * setup_cost, using the machine on
    #    which the changeover actually happens. Since SetupOccurs is only "live" (forced to
    #    1) when both batches share a specific machine (constraints_setup.py C-SEQ.3, tied
    #    to Assign on that machine), we approximate the cost using the setup_cost of the
    #    (product_from, product_to) pair on the cheapest common candidate machine as the
    #    linear coefficient — a standard simplification since setup costs are broadly
    #    similar in magnitude across machines of the same stage in this dataset, and the
    #    lower/upper AND constraints already ensure SetupOccurs=1 only for a real changeover.
    setup_cost_terms = []
    for (b1, b2) in m.SETUP_INDEX:
        p1 = sets_obj.batch(b1).product_id
        p2 = sets_obj.batch(b2).product_id
        common = set(m.CAND_MACHINES_OF_BATCH[b1]) & set(m.CAND_MACHINES_OF_BATCH[b2])
        if not common:
            continue
        cost = min(params.setup_cost.get((mm, p1, p2), 0.0) for mm in common)
        setup_cost_terms.append(m.SetupOccurs[b1, b2] * cost)
    setup_cost_expr = sum(setup_cost_terms) if setup_cost_terms else 0.0

    # 3. Inventory holding cost.
    inventory_cost = sum(
        m.Inv[p, d] * params.hold_cost[p] for p in m.PRODUCTS for d in m.DAYS
    )

    # 4. Late delivery penalty: Tardy_o (days late) * Demand_o * LatePenalty_p.
    tardiness_cost = sum(
        m.Tardy[order_id] * params.demand[order_id] * params.late_penalty[
            sets_obj.batches_by_order[order_id][0].product_id
        ]
        for order_id in m.ORDERS if sets_obj.batches_by_order.get(order_id)
    )

    # 5. Machine startup cost.
    startup_cost_expr = sum(
        m.Active[p, mach] * params.startup_cost[mach] for (p, mach) in m.ACTIVE_INDEX
    )

    # 6. Overtime cost.
    overtime_cost_expr = sum(
        m.Overtime[mach, d] * params.overtime_cost[mach] for mach in m.MACHINES for d in m.DAYS
    )

    # 7. Energy cost (optional, gated by config flag).
    if CONFIG.model.enable_energy_cost:
        energy_cost_expr = sum(
            m.Assign[b_id, mach] * params.proc_time[(b_id, mach)] * params.energy_cost[mach]
            for (b_id, mach) in m.CANDIDATE_BM
        )
    else:
        energy_cost_expr = 0.0

    total_cost = (
        production_cost + setup_cost_expr + inventory_cost + tardiness_cost
        + startup_cost_expr + overtime_cost_expr + energy_cost_expr
    )

    m.OBJ1_TotalCost = pyo.Objective(expr=total_cost, sense=pyo.minimize)

    # Keep references to the individual cost components on the model so results.py can
    # report a cost breakdown without re-deriving these expressions.
    m.COST_COMPONENTS = {
        "production_cost": production_cost,
        "setup_cost": setup_cost_expr,
        "inventory_cost": inventory_cost,
        "tardiness_cost": tardiness_cost,
        "startup_cost": startup_cost_expr,
        "overtime_cost": overtime_cost_expr,
        "energy_cost": energy_cost_expr,
    }

    logger.info("Objective function (OBJ.1) built with %d cost components.", len(m.COST_COMPONENTS))
