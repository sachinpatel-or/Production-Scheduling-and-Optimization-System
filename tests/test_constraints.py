"""
tests/test_constraints.py
============================
Phase 9: solves a small instance end-to-end and checks the SOLUTION itself for the
properties that matter operationally — no overlapping jobs on any machine, no capacity
violations, inventory balance holds, demand is satisfied — rather than just checking that
constraints exist. This is the strongest form of validation: it verifies the solver's
output obeys the physical rules of the plant, not just that Pyomo accepted the model.
"""

from __future__ import annotations

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent))

import shutil
import tempfile
import unittest

import pyomo.environ as pyo

from config import CONFIG
from src.generate_dummy_data import generate_all
from src.model_builder import build_full_model
from src.solver import solve_model


def _v(var) -> float:
    val = pyo.value(var, exception=False)
    return float(val) if val is not None else 0.0


class TestSolvedModelFeasibility(unittest.TestCase):
    """All checks in this class run against ONE solved small instance (shared across
    tests via setUpClass, since solving is the expensive part)."""

    @classmethod
    def setUpClass(cls):
        CONFIG.dummy_data.n_orders = 6
        CONFIG.dummy_data.n_products = 4
        CONFIG.dummy_data.n_families = 2
        CONFIG.dummy_data.n_machines = 3
        CONFIG.dummy_data.n_stages = 2
        CONFIG.dummy_data.n_operators = 4
        CONFIG.dummy_data.n_maintenance_windows = 1
        CONFIG.horizon.horizon_days = 5
        CONFIG.solver.time_limit_seconds = 45
        CONFIG.solver.tee = False

        cls.tmp_dir = tempfile.mkdtemp()
        generate_all(output_dir=cls.tmp_dir)
        cls.model, cls.data, cls.sets_obj, cls.params = build_full_model(cls.tmp_dir)
        cls.result = solve_model(cls.model)

    @classmethod
    def tearDownClass(cls):
        shutil.rmtree(cls.tmp_dir, ignore_errors=True)

    def test_solve_found_a_usable_solution(self):
        self.assertTrue(
            self.result.is_optimal_or_feasible,
            f"Expected a feasible/optimal solution, got termination="
            f"{self.result.termination_condition}. Diagnostics: {self.result.infeasibility_report}",
        )

    def test_no_overlapping_jobs_on_any_machine(self):
        """For every machine, no two batches assigned to it may have overlapping
        [Start, Finish] intervals."""
        model = self.model
        assignments: dict[str, list[tuple[float, float, str]]] = {}
        for (b_id, mach) in model.CANDIDATE_BM:
            if _v(model.Assign[b_id, mach]) > 0.5:
                start, finish = _v(model.Start[b_id]), _v(model.Finish[b_id])
                assignments.setdefault(mach, []).append((start, finish, b_id))

        for mach, intervals in assignments.items():
            intervals.sort()
            for i in range(len(intervals) - 1):
                _, finish_i, id_i = intervals[i]
                start_next, _, id_next = intervals[i + 1]
                self.assertLessEqual(
                    finish_i, start_next + 1e-4,
                    f"Overlap on machine {mach}: batch {id_i} finishes at {finish_i}, "
                    f"but batch {id_next} starts at {start_next}",
                )

    def test_no_machine_capacity_violation(self):
        """Total quantity processed per machine per day must not exceed rated daily capacity."""
        model, params = self.model, self.params
        shift_periods_by_day: dict[int, list[str]] = {}
        for sp, d in params.shift_day.items():
            shift_periods_by_day.setdefault(d, []).append(sp)

        for mach in model.MACHINES:
            for d in model.DAYS:
                total_qty = 0.0
                for (b_id, mm) in model.CANDIDATE_BM:
                    if mm != mach:
                        continue
                    if _v(model.Assign[b_id, mach]) <= 0.5:
                        continue
                    for sp in shift_periods_by_day.get(d, []):
                        if _v(model.ShiftAssign[b_id, sp]) > 0.5:
                            total_qty += params.batch_qty[b_id]
                self.assertLessEqual(
                    total_qty, params.capacity[mach] * 24.0 + 1e-4,
                    f"Machine {mach} day {d}: {total_qty} exceeds daily capacity "
                    f"{params.capacity[mach] * 24.0}",
                )

    def test_demand_satisfaction(self):
        """Every order's batches must sum exactly to its demand quantity."""
        for order_id in self.model.ORDERS:
            obatches = self.sets_obj.batches_by_order.get(order_id, [])
            last_stage = [
                b for b in obatches
                if b.stage_index == len(self.sets_obj.routing_by_product[b.product_id]) - 1
            ]
            total = sum(self.params.batch_qty[b.batch_id] for b in last_stage)
            self.assertAlmostEqual(total, self.params.demand[order_id], places=4)

    def test_inventory_balance_holds(self):
        """Inv[p,d] - Backlog[p,d] must equal the accumulated production-minus-demand
        position for every product and day (recomputed independently of the solver)."""
        model, params, sets_obj = self.model, self.params, self.sets_obj
        sp_to_day = params.shift_day

        demand_due_by_product_day: dict[tuple, float] = {}
        for order_id in model.ORDERS:
            obatches = sets_obj.batches_by_order.get(order_id, [])
            if not obatches:
                continue
            p = obatches[0].product_id
            d = params.due[order_id]
            demand_due_by_product_day[(p, d)] = demand_due_by_product_day.get((p, d), 0.0) + params.demand[order_id]

        for p in model.PRODUCTS:
            running_net = params.open_inv[p]
            for d in model.DAYS:
                finished_today = sum(
                    _v(model.ShiftAssign[b.batch_id, sp]) * params.batch_qty[b.batch_id]
                    for b in sets_obj.batches
                    if b.product_id == p and b.stage_index == len(sets_obj.routing_by_product[p]) - 1
                    for sp in model.SHIFT_PERIODS if sp_to_day[sp] == d
                )
                demand_today = demand_due_by_product_day.get((p, d), 0.0)
                running_net = running_net + finished_today - demand_today
                solved_net = _v(model.Inv[p, d]) - _v(model.Backlog[p, d])
                self.assertAlmostEqual(
                    running_net, solved_net, places=2,
                    msg=f"Inventory balance mismatch for product {p}, day {d}",
                )

    def test_no_negative_inventory_or_backlog(self):
        for p in self.model.PRODUCTS:
            for d in self.model.DAYS:
                self.assertGreaterEqual(_v(self.model.Inv[p, d]), -1e-6)
                self.assertGreaterEqual(_v(self.model.Backlog[p, d]), -1e-6)

    def test_every_scheduled_batch_has_exactly_one_machine(self):
        for b_id in self.model.BATCH_IDS:
            n_assigned = sum(
                1 for mach in self.model.CAND_MACHINES_OF_BATCH[b_id]
                if _v(self.model.Assign[b_id, mach]) > 0.5
            )
            self.assertEqual(n_assigned, 1, f"Batch {b_id} assigned to {n_assigned} machines (expected 1)")

    def test_precedence_respected(self):
        """A lot's successor-stage batch must not start before its predecessor finishes."""
        for b in self.sets_obj.batches:
            if b.predecessor_batch_id is None:
                continue
            pred_finish = _v(self.model.Finish[b.predecessor_batch_id])
            succ_start = _v(self.model.Start[b.batch_id])
            self.assertGreaterEqual(succ_start, pred_finish - 1e-4)


if __name__ == "__main__":
    unittest.main()
