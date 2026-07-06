"""
main.py
========
Top-level entry point for the Production Scheduling and Optimization (PSO) system.

Usage:
    python main.py                     # generate dummy data, build, solve, report, chart
    python main.py --generate-data     # only (re)generate dummy CSVs into data/
    python main.py --skip-generate     # use existing data/ CSVs, skip regeneration
    python main.py --time-limit 120    # override solver time limit (seconds)
    python main.py --no-charts         # skip chart generation (faster CI runs)

This script performs every phase in order: data generation -> validation -> model build
-> solve -> results extraction -> CSV/Excel export -> chart generation, logging progress
throughout via `logging_config`.
"""

from __future__ import annotations

import argparse
import sys

from config import CONFIG
from logging_config import get_logger
from src.generate_dummy_data import generate_all
from src.model_builder import build_full_model
from src.results import export_results, extract_results
from src.solver import solve_model
from src.visualization import generate_all_charts

logger = get_logger(__name__)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Production Scheduling and Optimization (PSO) system")
    parser.add_argument("--generate-data", action="store_true",
                        help="Force regeneration of dummy data even if data/ already has files.")
    parser.add_argument("--skip-generate", action="store_true",
                        help="Skip data generation entirely and use existing data/ files.")
    parser.add_argument("--time-limit", type=int, default=None,
                        help="Solver time limit in seconds (overrides config.py default).")
    parser.add_argument("--mip-gap", type=float, default=None,
                        help="Target MIP gap (overrides config.py default).")
    parser.add_argument("--no-charts", action="store_true", help="Skip chart generation.")
    parser.add_argument("--no-excel", action="store_true", help="Skip the combined Excel workbook export.")
    parser.add_argument("--quiet-solver", action="store_true", help="Suppress solver log streaming.")
    return parser.parse_args()


def main() -> int:
    args = parse_args()

    if args.time_limit is not None:
        CONFIG.solver.time_limit_seconds = args.time_limit
    if args.mip_gap is not None:
        CONFIG.solver.mip_gap = args.mip_gap
    if args.quiet_solver:
        CONFIG.solver.tee = False

    from pathlib import Path
    existing = list(Path(CONFIG.paths["data_dir"]).glob("*.csv"))

    if args.skip_generate:
        logger.info("--skip-generate set: using existing data/ files (%d found).", len(existing))
    elif args.generate_data or not existing:
        logger.info("Generating dummy data (%d existing CSV files found)...", len(existing))
        generate_all()
    else:
        logger.info("Found %d existing data files; skipping generation (use --generate-data to force).",
                    len(existing))

    logger.info("=" * 90)
    logger.info("PHASE: MODEL BUILD (load -> validate -> sets -> parameters -> variables -> constraints)")
    logger.info("=" * 90)
    model, data, sets_obj, params = build_full_model()

    logger.info("=" * 90)
    logger.info("PHASE: SOLVE")
    logger.info("=" * 90)
    solve_result = solve_model(model)

    if not solve_result.is_optimal_or_feasible:
        logger.error(
            "No usable solution found (termination=%s). See infeasibility diagnostics above. "
            "Skipping results export and chart generation.",
            solve_result.termination_condition,
        )
        return 1

    logger.info("=" * 90)
    logger.info("PHASE: RESULTS EXTRACTION & EXPORT")
    logger.info("=" * 90)
    results = extract_results(model, solve_result)
    written = export_results(results, excel=not args.no_excel)
    logger.info("Exported %d result files to %s", len(written), CONFIG.paths["output_dir"])

    if not args.no_charts:
        logger.info("=" * 90)
        logger.info("PHASE: VISUALIZATION")
        logger.info("=" * 90)
        chart_paths = generate_all_charts(results)
        logger.info("Generated %d charts.", len(chart_paths))

    logger.info("=" * 90)
    logger.info("SUMMARY")
    logger.info("=" * 90)
    for _, row in results.kpis.iterrows():
        logger.info("  %-32s %s", row["kpi"], row["value"])

    return 0


if __name__ == "__main__":
    sys.exit(main())
