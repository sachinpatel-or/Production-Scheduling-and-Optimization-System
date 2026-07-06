"""
src/data_loader.py
===================
Loads all CSV input files into pandas DataFrames and assembles a single `PSOData`
container object passed to the rest of the pipeline (sets.py, parameters.py, ...).

This module performs NO business-rule validation itself (that's `validation.py`'s job —
single-responsibility) but does fail fast and clearly if a required file is missing.
"""

from __future__ import annotations

from dataclasses import dataclass
from pathlib import Path

import pandas as pd

from config import CONFIG
from logging_config import get_logger

logger = get_logger(__name__)

REQUIRED_FILES = [
    "products.csv", "machines.csv", "orders.csv", "inventory.csv", "operators.csv",
    "calendar.csv", "setup_times.csv", "processing_times.csv", "bill_of_materials.csv",
    "maintenance.csv", "parameters.csv",
]


@dataclass
class PSOData:
    """Plain container holding every raw input table. One attribute per CSV file."""

    products: pd.DataFrame
    machines: pd.DataFrame
    orders: pd.DataFrame
    inventory: pd.DataFrame
    operators: pd.DataFrame
    calendar: pd.DataFrame
    setup_times: pd.DataFrame
    processing_times: pd.DataFrame
    bom: pd.DataFrame
    maintenance: pd.DataFrame
    parameters: pd.DataFrame

    def param(self, key: str, default=None, cast=float):
        """Convenience accessor for a scalar value from parameters.csv by key."""
        row = self.parameters.loc[self.parameters["key"] == key]
        if row.empty:
            if default is None:
                raise KeyError(f"Required parameter '{key}' not found in parameters.csv")
            return default
        return cast(row["value"].iloc[0])


def load_data(data_dir: str | Path | None = None) -> PSOData:
    """Load every required CSV from `data_dir` (defaults to config.DATA_DIR)."""
    data_dir = Path(data_dir) if data_dir else Path(CONFIG.paths["data_dir"])
    logger.info("Loading PSO input data from %s", data_dir)

    missing = [f for f in REQUIRED_FILES if not (data_dir / f).exists()]
    if missing:
        raise FileNotFoundError(
            f"Missing required input file(s) in {data_dir}: {missing}. "
            f"Run `src/generate_dummy_data.py` first, or supply real data files."
        )

    def _read(fname: str) -> pd.DataFrame:
        df = pd.read_csv(data_dir / fname)
        logger.debug("Loaded %s: %d rows, columns=%s", fname, len(df), list(df.columns))
        return df

    data = PSOData(
        products=_read("products.csv"),
        machines=_read("machines.csv"),
        orders=_read("orders.csv"),
        inventory=_read("inventory.csv"),
        operators=_read("operators.csv"),
        calendar=_read("calendar.csv"),
        setup_times=_read("setup_times.csv"),
        processing_times=_read("processing_times.csv"),
        bom=_read("bill_of_materials.csv"),
        maintenance=_read("maintenance.csv"),
        parameters=_read("parameters.csv"),
    )
    logger.info(
        "Loaded data: %d products, %d machines, %d orders, %d operators, %d shift-periods",
        len(data.products), len(data.machines), len(data.orders),
        len(data.operators), len(data.calendar),
    )
    return data
