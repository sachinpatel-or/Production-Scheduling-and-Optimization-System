"""
src/constraints_sequence.py
=============================
Implements C-TIME.1, C-SEQ.1, C-SEQ.2, C-MAKESPAN.1 from
docs/02_mathematical_formulation.md Section 5.3.

Setup-occurrence linearization (C-SEQ.3) lives in `constraints_setup.py` (single-
responsibility: this module owns timing/ordering, setup.py owns changeover cost logic).
"""

from __future__ import annotations

import pyomo.environ as pyo

from logging_config import get_logger

logger = get_logger(__name__)


def apply(m: pyo.ConcreteModel) -> None:
    params = m.PARAMS
    big_m = params.big_m

    # C-TIME.1: Finish_b = Start_b + sum_m Assign_{b,m} * ProcTime_{b,m}
    def finish_time_rule(model, b_id):
        proc = sum(
            model.Assign[b_id, mm] * params.proc_time[(b_id, mm)]
            for mm in model.CAND_MACHINES_OF_BATCH[b_id]
        )
        return model.Finish[b_id] == model.Start[b_id] + proc

    m.C_TIME1_FinishTime = pyo.Constraint(m.BATCH_IDS, rule=finish_time_rule)

    # C-SEQ.2: ordering consistency — exactly one direction active whenever both batches
    # share the same assigned machine. We post this per shared candidate machine.
    def ordering_rule(model, b1, b2, mach):
        if mach not in model.CAND_MACHINES_OF_BATCH.get(b1, []) or \
           mach not in model.CAND_MACHINES_OF_BATCH.get(b2, []):
            return pyo.Constraint.Skip
        return (model.Seq[b1, b2] + model.Seq[b2, b1]
                >= model.Assign[b1, mach] + model.Assign[b2, mach] - 1)

    ordering_index = []
    for (b1, b2) in m.SEQ_PAIRS:
        common = set(m.CAND_MACHINES_OF_BATCH[b1]) & set(m.CAND_MACHINES_OF_BATCH[b2])
        for mach in common:
            ordering_index.append((b1, b2, mach))
    m.C_SEQ2_Ordering = pyo.Constraint(ordering_index, rule=ordering_rule)

    # C-SEQ.1: no-overlap disjunction with sequence-dependent setup time, applied for every
    # directed pair sharing a candidate machine. The Big-M slack is only "released" (zero)
    # when Seq[b1,b2]=1 AND both batches are actually assigned to this specific machine.
    no_overlap_index = []
    for (b1, b2) in m.SEQ_PAIRS:
        common = set(m.CAND_MACHINES_OF_BATCH[b1]) & set(m.CAND_MACHINES_OF_BATCH[b2])
        for mach in common:
            no_overlap_index.append((b1, b2, mach))
            no_overlap_index.append((b2, b1, mach))

    def no_overlap_per_machine_rule(model, b1, b2, mach):
        p1 = model.SETS.batch(b1).product_id
        p2 = model.SETS.batch(b2).product_id
        setup = params.setup_time.get((mach, p1, p2), 0.0)
        # Active only when Seq[b1,b2]=1 AND both assigned to `mach`; otherwise relaxed by 2*BigM.
        return (model.Start[b2] >= model.Finish[b1] + setup
                - big_m * (1 - model.Seq[b1, b2])
                - big_m * (1 - model.Assign[b1, mach])
                - big_m * (1 - model.Assign[b2, mach]))

    m.C_SEQ1_NoOverlap = pyo.Constraint(no_overlap_index, rule=no_overlap_per_machine_rule)

    # C-MAKESPAN.1: Makespan >= Finish_b for every batch.
    def makespan_rule(model, b_id):
        return model.Makespan >= model.Finish[b_id]

    m.C_MAKESPAN1 = pyo.Constraint(m.BATCH_IDS, rule=makespan_rule)

    logger.info(
        "Applied sequencing constraints: C-TIME.1 (%d), C-SEQ.2 (%d), C-SEQ.1 (%d), C-MAKESPAN.1 (%d)",
        len(m.BATCH_IDS), len(ordering_index), len(no_overlap_index), len(m.BATCH_IDS),
    )
