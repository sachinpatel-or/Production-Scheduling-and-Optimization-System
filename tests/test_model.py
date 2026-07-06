"""
tests/test_model.py
=====================
Phase 9: validates sets, parameters, variables, and the objective function build
correctly and consistently from data — independent of whether the model actually solves.
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
from src.data_loader import load_data
from src.generate_dummy_data import generate_all
from src.objective import apply as apply_objective
from src.parameters import build_parameters
from src.sets import build_sets
from src.validation import validate_or_raise
from src.variables import build_model


def _small_config():
    """Shrink the dummy dataset for fast unit tests (mirrors the manual scale-down used
    during interactive debugging of this system)."""
    CONFIG.dummy_data.n_orders = 6
    CONFIG.dummy_data.n_products = 4
    CONFIG.dummy_data.n_families = 2
    CONFIG.dummy_data.n_machines = 3
    CONFIG.dummy_data.n_stages = 2
    CONFIG.dummy_data.n_operators = 4
    CONFIG.dummy_data.n_maintenance_windows = 1
    CONFIG.horizon.horizon_days = 5


class TestSetsParametersVariables(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        _small_config()
        cls.tmp_dir = tempfile.mkdtemp()
        generate_all(output_dir=cls.tmp_dir)
        cls.data = load_data(cls.tmp_dir)
        validate_or_raise(cls.data)
        cls.sets_obj = build_sets(cls.data)
        cls.params = build_parameters(cls.data, cls.sets_obj)

    @classmethod
    def tearDownClass(cls):
        shutil.rmtree(cls.tmp_dir, ignore_errors=True)

    # ---- Sets --------------------------------------------------------------------------
    def test_every_order_produces_at_least_one_lot(self):
        for order_id in self.sets_obj.orders:
            self.assertIn(order_id, self.sets_obj.batches_by_order)
            self.assertGreater(len(self.sets_obj.batches_by_order[order_id]), 0)

    def test_lot_quantities_sum_to_order_demand(self):
        for order_id in self.sets_obj.orders:
            obatches = self.sets_obj.batches_by_order[order_id]
            last_stage = [
                b for b in obatches
                if b.stage_index == len(self.sets_obj.routing_by_product[b.product_id]) - 1
            ]
            total = sum(b.qty for b in last_stage)
            expected = self.params.demand[order_id]
            self.assertAlmostEqual(total, expected, places=4)

    def test_batch_quantities_within_min_max(self):
        for b in self.sets_obj.batches:
            self.assertLessEqual(b.qty, self.params.max_batch + 1e-6)

    def test_every_batch_has_a_predecessor_except_first_stage(self):
        for b in self.sets_obj.batches:
            if b.stage_index == 0:
                self.assertIsNone(b.predecessor_batch_id)
            else:
                self.assertIsNotNone(b.predecessor_batch_id)

    # ---- Parameters ----------------------------------------------------------------------
    def test_big_m_equals_horizon_hours(self):
        self.assertEqual(self.params.big_m, self.params.horizon_hours)

    def test_every_batch_machine_pair_has_proc_time_if_eligible(self):
        for b in self.sets_obj.batches:
            for m in self.sets_obj.machines:
                if self.params.eligibility.get((b.product_id, m), 0) == 1:
                    # proc_time should exist whenever a processing rate was defined
                    key = (b.batch_id, m)
                    if (b.product_id, m) in self.params.proc_rate:
                        self.assertIn(key, self.params.proc_time)

    # ---- Variables -------------------------------------------------------------------------
    def test_model_builds_without_error(self):
        model = build_model(self.sets_obj, self.params)
        self.assertIsInstance(model, pyo.ConcreteModel)
        self.assertGreater(len(model.BATCH_IDS), 0)

    def test_every_batch_has_at_least_one_candidate_machine(self):
        model = build_model(self.sets_obj, self.params)
        for b_id in model.BATCH_IDS:
            self.assertGreater(
                len(model.CAND_MACHINES_OF_BATCH[b_id]), 0,
                f"Batch {b_id} has zero candidate machines",
            )

    def test_qty_variables_fixed_to_data(self):
        model = build_model(self.sets_obj, self.params)
        for b_id in model.BATCH_IDS:
            self.assertTrue(model.Qty[b_id].fixed)
            self.assertAlmostEqual(pyo.value(model.Qty[b_id]), self.params.batch_qty[b_id], places=4)

    # ---- Objective ---------------------------------------------------------------------------
    def test_objective_builds_and_has_seven_cost_components(self):
        from src import (constraints_batch, constraints_capacity, constraints_due_dates,
                          constraints_inventory, constraints_machine, constraints_material,
                          constraints_operator, constraints_precedence, constraints_sequence,
                          constraints_setup, constraints_shift)
        model = build_model(self.sets_obj, self.params)
        for mod in (constraints_machine, constraints_sequence, constraints_setup,
                    constraints_shift, constraints_operator, constraints_batch,
                    constraints_precedence, constraints_capacity, constraints_inventory,
                    constraints_material, constraints_due_dates):
            mod.apply(model)
        apply_objective(model)
        self.assertTrue(hasattr(model, "OBJ1_TotalCost"))
        self.assertEqual(len(model.COST_COMPONENTS), 7)
        # Objective value should be computable (all expressions well-formed) even before solving.
        # (Variables are unset, so we only check the expression builds, not its numeric value.)
        self.assertIsNotNone(model.OBJ1_TotalCost.expr)


if __name__ == "__main__":
    unittest.main()
