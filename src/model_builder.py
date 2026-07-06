"""
src/model_builder.py
======================
Single entry point that assembles the full Pyomo model: load data -> validate -> build
sets -> build parameters -> build variables -> apply every constraint module -> build
objective. This is the "front door" `main.py` and the test suite both call, so there is
exactly one place that defines "what a complete PSO model looks like."
"""

from __future__ import annotations

from pathlib import Path

import pyomo.environ as pyo

from config import CONFIG
from logging_config import get_logger
from src.data_loader import PSOData, load_data
from src.parameters import PSOParameters, build_parameters
from src.sets import PSOSets, build_sets
from src.validation import validate_or_raise
from src.variables import build_model

from src import (
    constraints_batch,
    constraints_capacity,
    constraints_due_dates,
    constraints_inventory,
    constraints_machine,
    constraints_material,
    constraints_operator,
    constraints_precedence,
    constraints_sequence,
    constraints_setup,
    constraints_shift,
    objective,
)

logger = get_logger(__name__)

# Order matters only for readability/logging here — every `apply()` function only adds
# Constraints/Vars to the model and does not depend on another module having run first,
# EXCEPT that objective.apply() must run last (it references Vars from every module).
CONSTRAINT_MODULES = [
    constraints_machine,
    constraints_sequence,
    constraints_setup,
    constraints_shift,
    constraints_operator,
    constraints_batch,
    constraints_precedence,
    constraints_capacity,
    constraints_inventory,
    constraints_material,
    constraints_due_dates,
]


def build_full_model(data_dir: str | Path | None = None) -> tuple[pyo.ConcreteModel, PSOData, PSOSets, PSOParameters]:
    """Run the full pipeline and return the ready-to-solve model plus intermediate objects."""
    logger.info("=== PSO model build: STEP 1/5 — loading data ===")
    data = load_data(data_dir)

    logger.info("=== PSO model build: STEP 2/5 — validating data ===")
    validate_or_raise(data)

    logger.info("=== PSO model build: STEP 3/5 — building sets ===")
    sets_obj = build_sets(data)

    logger.info("=== PSO model build: STEP 4/5 — building parameters & variables ===")
    params = build_parameters(data, sets_obj)
    model = build_model(sets_obj, params)

    logger.info("=== PSO model build: STEP 5/5 — applying constraints & objective ===")
    for module in CONSTRAINT_MODULES:
        module.apply(model)
    objective.apply(model)

    n_vars = sum(1 for _ in model.component_data_objects(pyo.Var))
    n_cons = sum(1 for _ in model.component_data_objects(pyo.Constraint))
    logger.info("Model build complete: %d variables, %d constraints.", n_vars, n_cons)

    if CONFIG.solver.write_lp:
        lp_path = Path(CONFIG.paths["lp_file"])
        model.write(str(lp_path), io_options={"symbolic_solver_labels": True})
        logger.info("Model exported to LP file: %s", lp_path)

    return model, data, sets_obj, params
