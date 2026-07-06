"""
tests/test_data.py
====================
Phase 9: validates dummy data generation, loading, and the validation module itself.
"""

from __future__ import annotations

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent))

import shutil
import tempfile
import unittest

from config import CONFIG
from src.data_loader import load_data
from src.generate_dummy_data import generate_all
from src.validation import DataValidationError, validate_data, validate_or_raise


class TestDummyDataGeneration(unittest.TestCase):
    """Generated dummy data must be internally consistent and pass all validation checks."""

    @classmethod
    def setUpClass(cls):
        cls.tmp_dir = tempfile.mkdtemp()
        cls.tables = generate_all(output_dir=cls.tmp_dir)
        cls.data = load_data(cls.tmp_dir)

    @classmethod
    def tearDownClass(cls):
        shutil.rmtree(cls.tmp_dir, ignore_errors=True)

    def test_all_expected_files_written(self):
        expected = {
            "products.csv", "machines.csv", "orders.csv", "inventory.csv", "operators.csv",
            "calendar.csv", "setup_times.csv", "processing_times.csv",
            "bill_of_materials.csv", "maintenance.csv", "parameters.csv",
        }
        self.assertEqual(expected, set(self.tables.keys()))

    def test_no_empty_tables(self):
        for name, df in self.tables.items():
            if name == "maintenance.csv":
                continue  # can legitimately be small/zero depending on config
            self.assertGreater(len(df), 0, f"{name} should not be empty")

    def test_referential_integrity_passes_validation(self):
        errors = validate_data(self.data)
        self.assertEqual(errors, [], f"Validation errors found: {errors}")

    def test_validate_or_raise_does_not_raise_on_good_data(self):
        try:
            validate_or_raise(self.data)
        except DataValidationError as e:
            self.fail(f"validate_or_raise raised unexpectedly: {e}")

    def test_every_product_has_eligible_machine_at_every_routing_stage(self):
        machines = self.data.machines
        for _, p in self.data.products.iterrows():
            for stage in str(p["routing"]).split(","):
                elig = machines[
                    (machines.stage_id == stage)
                    & (machines.eligible_families.apply(lambda s, fam=p["family_id"]: fam in str(s).split(",")))
                ]
                self.assertGreater(
                    len(elig), 0,
                    f"Product {p['product_id']} has no eligible machine at stage {stage}",
                )

    def test_every_eligible_pair_has_processing_time(self):
        pt_pairs = set(zip(self.data.processing_times.product_id, self.data.processing_times.machine_id))
        for _, p in self.data.products.iterrows():
            elig_machines = self.data.machines[
                self.data.machines.eligible_families.apply(lambda s, fam=p["family_id"]: fam in str(s).split(","))
            ]
            for _, m in elig_machines.iterrows():
                self.assertIn((p["product_id"], m["machine_id"]), pt_pairs)

    def test_raw_material_inventory_covers_total_demand(self):
        order_qty = self.data.orders.groupby("product_id")["quantity"].sum().to_dict()
        required: dict[str, float] = {}
        for _, row in self.data.bom.iterrows():
            qty = order_qty.get(row["product_id"], 0.0)
            required[row["raw_material_id"]] = required.get(row["raw_material_id"], 0.0) + qty * row["qty_per_unit"]
        rm_inv = dict(zip(
            self.data.inventory.loc[self.data.inventory.type == "RM", "item_id"],
            self.data.inventory.loc[self.data.inventory.type == "RM", "opening_qty"],
        ))
        for r, req in required.items():
            self.assertGreaterEqual(
                rm_inv.get(r, 0.0), req,
                f"Raw material {r} opening inventory ({rm_inv.get(r, 0.0)}) is below total demand ({req})",
            )

    def test_duplicate_ids_rejected(self):
        import pandas as pd
        bad_data = self.data
        dup_products = pd.concat([bad_data.products, bad_data.products.iloc[[0]]], ignore_index=True)
        from dataclasses import replace
        bad = replace(bad_data, products=dup_products)
        errors = validate_data(bad)
        self.assertTrue(any("duplicate" in e for e in errors))


if __name__ == "__main__":
    unittest.main()
