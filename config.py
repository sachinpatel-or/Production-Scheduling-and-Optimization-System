"""
config.py
=========
Centralized configuration for the Production Scheduling and Optimization (PSO) system.

All tunable knobs (paths, solver settings, model flags, cost defaults) live here so that
no other module hardcodes a magic number. Modules should `from config import CONFIG` and
read values from the singleton, never re-define their own defaults.
"""

from __future__ import annotations

import os
from dataclasses import dataclass, field
from pathlib import Path


# --------------------------------------------------------------------------------------
# Path configuration
# --------------------------------------------------------------------------------------
PROJECT_ROOT = Path(__file__).resolve().parent
DATA_DIR = PROJECT_ROOT / "data"
OUTPUT_DIR = PROJECT_ROOT / "outputs"
LOG_DIR = PROJECT_ROOT / "outputs" / "logs"
LP_FILE_PATH = OUTPUT_DIR / "model.lp"

for _d in (DATA_DIR, OUTPUT_DIR, LOG_DIR):
    _d.mkdir(parents=True, exist_ok=True)


@dataclass
class SolverConfig:
    """Solver-related settings. HiGHS preferred; CBC supported as a drop-in fallback."""

    preferred_solver: str = "appsi_highs"          # Pyomo persistent HiGHS interface
    fallback_solver: str = "cbc"
    time_limit_seconds: int = 300
    mip_gap: float = 0.01
    threads: int = 4
    tee: bool = True                                 # stream solver log to stdout
    write_lp: bool = True


@dataclass
class ModelConfig:
    """Modeling flags that change which constraints/variables are built."""

    fixed_batch_quantities: bool = True   # avoids bilinear Assign*Qty terms (see math doc Sec 6)
    enable_energy_cost: bool = True
    enable_operator_constraints: bool = True
    enable_maintenance_windows: bool = True
    enable_precedence: bool = True
    enable_overtime: bool = True
    allow_backorder: bool = True          # late delivery allowed at a penalty, vs hard infeasible
    time_bucket_hours: float = 1.0        # discretization granularity for reporting only


@dataclass
class HorizonConfig:
    """Planning horizon and calendar shape used by the dummy-data generator and model."""

    horizon_days: int = 7
    shifts_per_day: int = 3
    shift_duration_hours: float = 8.0


@dataclass
class CostDefaults:
    """Default global cost parameters (used when not overridden in parameters.csv)."""

    default_holding_cost_per_unit_day: float = 0.50
    default_late_penalty_per_unit_day: float = 5.00
    default_overtime_cost_per_hour: float = 45.0
    default_startup_cost: float = 75.0
    default_energy_cost_per_hour: float = 8.0


@dataclass
class DummyDataConfig:
    """Sizing of the auto-generated dummy dataset (Phase 5)."""

    n_machines: int = 5
    n_orders: int = 25
    n_products: int = 10
    n_families: int = 4
    n_operators: int = 8
    n_maintenance_windows: int = 2
    n_raw_materials: int = 6
    n_stages: int = 3
    random_seed: int = 42
    default_min_batch_size: float = 15.0
    default_max_batch_size: float = 150.0


@dataclass
class AppConfig:
    paths: dict = field(default_factory=lambda: {
        "data_dir": str(DATA_DIR),
        "output_dir": str(OUTPUT_DIR),
        "log_dir": str(LOG_DIR),
        "lp_file": str(LP_FILE_PATH),
    })
    solver: SolverConfig = field(default_factory=SolverConfig)
    model: ModelConfig = field(default_factory=ModelConfig)
    horizon: HorizonConfig = field(default_factory=HorizonConfig)
    costs: CostDefaults = field(default_factory=CostDefaults)
    dummy_data: DummyDataConfig = field(default_factory=DummyDataConfig)

    def horizon_hours(self) -> float:
        return self.horizon.horizon_days * 24.0


# Environment overrides (12-factor style) — lets Colab / CI tweak without editing the file.
CONFIG = AppConfig()
if os.environ.get("PSO_TIME_LIMIT"):
    CONFIG.solver.time_limit_seconds = int(os.environ["PSO_TIME_LIMIT"])
if os.environ.get("PSO_MIP_GAP"):
    CONFIG.solver.mip_gap = float(os.environ["PSO_MIP_GAP"])
