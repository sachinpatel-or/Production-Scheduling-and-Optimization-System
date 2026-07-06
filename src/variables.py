"""
src/variables.py
=================
Builds the Pyomo `ConcreteModel`, attaches the index sets as plain Python lists (kept on
the model for convenience), and declares every decision variable from
docs/02_mathematical_formulation.md Section 3.

To keep the model compact, binary assignment/sequencing variables are only created over
*candidate* (batch, machine) / (batch, batch) pairs that are actually feasible (eligible
machine, same stage, etc.) rather than the full Cartesian product — this is standard
practice for sequencing MILPs and is what keeps this solvable by HiGHS/CBC.
"""

from __future__ import annotations

from itertools import combinations

import pyomo.environ as pyo

from logging_config import get_logger
from src.parameters import PSOParameters
from src.sets import PSOSets

logger = get_logger(__name__)


def candidate_machines_for_batch(b_id: str, sets_obj: PSOSets, params: PSOParameters) -> list[str]:
    """Eligible machines for a batch: same stage as the batch AND family-eligible."""
    b = sets_obj.batch(b_id)
    return [
        m for m in sets_obj.machines
        if params.eligibility.get((b.product_id, m), 0) == 1
        and (b_id, m) in params.proc_time
        and _machine_stage_matches(m, b.stage_id, sets_obj)
    ]


def _machine_stage_matches(machine_id: str, stage_id: str, sets_obj: PSOSets) -> bool:
    # machines_by_stage is derivable on the fly; cached on sets_obj for speed if present.
    return machine_id in getattr(sets_obj, "_machine_stage_cache", {}).get(stage_id, set(sets_obj.machines))


def _attach_machine_stage_cache(sets_obj: PSOSets, data_machines_stage: dict[str, str]) -> None:
    cache: dict[str, set[str]] = {}
    for m, stage in data_machines_stage.items():
        cache.setdefault(stage, set()).add(m)
    sets_obj._machine_stage_cache = cache  # type: ignore[attr-defined]


def build_model(sets_obj: PSOSets, params: PSOParameters) -> pyo.ConcreteModel:
    """Construct the ConcreteModel skeleton with sets + all decision variables declared."""
    _attach_machine_stage_cache(sets_obj, sets_obj.machine_stage)

    m = pyo.ConcreteModel(name="ProductionSchedulingOptimization")

    # ---- Sets (kept as plain python lists on the model for downstream modules) ----------
    m.SETS = sets_obj
    m.PARAMS = params
    m.BATCH_IDS = [b.batch_id for b in sets_obj.batches]
    m.MACHINES = sets_obj.machines
    m.PRODUCTS = sets_obj.products
    m.ORDERS = sets_obj.orders
    m.OPERATORS = sets_obj.operators
    m.DAYS = sets_obj.days
    m.RAW_MATERIALS = sets_obj.raw_materials
    m.SHIFT_PERIODS = [sp.sp_id for sp in sets_obj.shift_periods]

    # ---- Candidate (batch, machine) pairs ------------------------------------------------
    candidate_bm: list[tuple[str, str]] = []
    cand_machines_of_batch: dict[str, list[str]] = {}
    for b_id in m.BATCH_IDS:
        cands = candidate_machines_for_batch(b_id, sets_obj, params)
        cand_machines_of_batch[b_id] = cands
        for mach in cands:
            candidate_bm.append((b_id, mach))
    m.CANDIDATE_BM = candidate_bm
    m.CAND_MACHINES_OF_BATCH = cand_machines_of_batch

    # ---- Candidate sequencing pairs: batches that COULD share a machine -------------------
    # (same stage, and at least one common eligible machine)
    seq_pairs: list[tuple[str, str]] = []
    batches_by_stage: dict[str, list[str]] = {}
    for b in sets_obj.batches:
        batches_by_stage.setdefault(b.stage_id, []).append(b.batch_id)
    for stage, b_ids in batches_by_stage.items():
        for b1, b2 in combinations(b_ids, 2):
            common = set(cand_machines_of_batch[b1]) & set(cand_machines_of_batch[b2])
            if common:
                seq_pairs.append((b1, b2))
    m.SEQ_PAIRS = seq_pairs  # unordered candidate pairs; both directions handled in constraints

    # ---- Candidate (batch, operator) pairs: operator skilled on >=1 candidate machine -----
    cand_op_of_batch: dict[str, list[str]] = {}
    for b_id in m.BATCH_IDS:
        ops = [
            op for op in sets_obj.operators
            if any(params.op_skill.get((op, mm), 0) == 1 for mm in cand_machines_of_batch[b_id])
        ]
        cand_op_of_batch[b_id] = ops
    m.CAND_OPERATORS_OF_BATCH = cand_op_of_batch

    # =========================================================================================
    # DECISION VARIABLES  (docs/02_mathematical_formulation.md Section 3)
    # =========================================================================================

    # Assign_{b,m}  -- binary, only over candidate pairs
    m.Assign = pyo.Var(candidate_bm, domain=pyo.Binary, doc="1 if batch b assigned to machine m")

    # ShiftAssign_{b,sp} -- binary, batch scheduled in shift-period sp
    shift_assign_index = [(b_id, sp) for b_id in m.BATCH_IDS for sp in m.SHIFT_PERIODS]
    m.ShiftAssign = pyo.Var(shift_assign_index, domain=pyo.Binary,
                             doc="1 if batch b is scheduled within shift-period sp")

    # Seq_{b,b'} -- binary precedence indicator, both directions over candidate pairs
    seq_directed_index = []
    for b1, b2 in seq_pairs:
        seq_directed_index.append((b1, b2))
        seq_directed_index.append((b2, b1))
    m.SEQ_DIRECTED = seq_directed_index
    m.Seq = pyo.Var(seq_directed_index, domain=pyo.Binary,
                     doc="1 if batch b precedes batch b' on their shared machine")

    # SetupOccurs_{b,b'} -- binary linearization aux, only for different-product directed pairs
    setup_index = [(b1, b2) for (b1, b2) in seq_directed_index
                   if sets_obj.batch(b1).product_id != sets_obj.batch(b2).product_id]
    m.SETUP_INDEX = setup_index
    m.SetupOccurs = pyo.Var(setup_index, domain=pyo.Binary,
                             doc="1 if a setup is incurred transitioning b -> b'")

    # Active_{p,m} -- binary, product p ever produced on machine m
    active_index = sorted({(sets_obj.batch(b_id).product_id, mach) for (b_id, mach) in candidate_bm})
    m.ACTIVE_INDEX = active_index
    m.Active = pyo.Var(active_index, domain=pyo.Binary, doc="1 if machine m ever produces product p")

    # OpAssign_{b,op} -- binary, only over candidate (batch, operator) pairs
    op_assign_index = [(b_id, op) for b_id in m.BATCH_IDS for op in cand_op_of_batch[b_id]]
    m.OP_ASSIGN_INDEX = op_assign_index
    m.OpAssign = pyo.Var(op_assign_index, domain=pyo.Binary,
                          doc="1 if operator op assigned to batch b")

    # OpInShift_{b,op,sp} -- binary AND-linearization aux: 1 iff OpAssign[b,op]=1 AND
    # ShiftAssign[b,sp]=1. Used by C-OPR.4 (operator no double-booking) without resorting
    # to an O(batches^2) pairwise formulation.
    op_in_shift_index = [(b_id, op, sp) for (b_id, op) in op_assign_index for sp in m.SHIFT_PERIODS]
    m.OP_IN_SHIFT_INDEX = op_in_shift_index
    m.OpInShift = pyo.Var(op_in_shift_index, domain=pyo.Binary,
                           doc="1 if operator op works on batch b during shift-period sp")

    # AssignInShift_{b,m,sp} -- binary AND-linearization aux: 1 iff Assign[b,m]=1 AND
    # ShiftAssign[b,sp]=1. Lets capacity/overtime constraints (constraints_capacity.py)
    # bucket a batch's processing time into the correct (machine, day) without a bilinear
    # Assign*ShiftAssign term.
    assign_in_shift_index = [(b_id, mach, sp) for (b_id, mach) in candidate_bm for sp in m.SHIFT_PERIODS]
    m.ASSIGN_IN_SHIFT_INDEX = assign_in_shift_index
    m.AssignInShift = pyo.Var(assign_in_shift_index, domain=pyo.Binary,
                               doc="1 if batch b runs on machine m during shift-period sp")

    # Continuous timing / quantity / inventory / tardiness / overtime variables
    m.Start = pyo.Var(m.BATCH_IDS, domain=pyo.NonNegativeReals, bounds=(0, params.big_m),
                       doc="Start time of batch b (hours from horizon start)")
    m.Finish = pyo.Var(m.BATCH_IDS, domain=pyo.NonNegativeReals, bounds=(0, params.big_m),
                        doc="Finish time of batch b (hours from horizon start)")

    # Qty is data-fixed in this implementation (config.ModelConfig.fixed_batch_quantities,
    # always True in the current build — see docs/02_mathematical_formulation.md Section 6).
    # We still declare a Qty Var for API symmetry with the math doc, fixed to data values.
    m.Qty = pyo.Var(m.BATCH_IDS, domain=pyo.NonNegativeReals, doc="Produced quantity of batch b")
    for b_id in m.BATCH_IDS:
        m.Qty[b_id].fix(params.batch_qty[b_id])

    m.Inv = pyo.Var(m.PRODUCTS, m.DAYS, domain=pyo.NonNegativeReals, doc="Finished-goods inventory (on-hand)")
    m.Backlog = pyo.Var(m.PRODUCTS, m.DAYS, domain=pyo.NonNegativeReals,
                         doc="Unfulfilled cumulative demand (backorder) for product p through day d")
    m.InvRM = pyo.Var(m.RAW_MATERIALS, m.DAYS, domain=pyo.NonNegativeReals, doc="Raw-material inventory")
    m.Tardy = pyo.Var(m.ORDERS, domain=pyo.NonNegativeReals, doc="Tardiness of order o (days late)")
    m.Overtime = pyo.Var(m.MACHINES, m.DAYS, domain=pyo.NonNegativeReals, doc="Overtime hours on machine m, day d")
    m.Makespan = pyo.Var(domain=pyo.NonNegativeReals, bounds=(0, params.big_m), doc="Plant-wide makespan")

    logger.info(
        "Model variables built: |Assign|=%d, |ShiftAssign|=%d, |Seq|=%d, |SetupOccurs|=%d, "
        "|Active|=%d, |OpAssign|=%d, |Batches|=%d",
        len(candidate_bm), len(shift_assign_index), len(seq_directed_index), len(setup_index),
        len(active_index), len(op_assign_index), len(m.BATCH_IDS),
    )
    return m
