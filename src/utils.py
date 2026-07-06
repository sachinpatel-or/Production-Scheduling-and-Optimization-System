"""
src/utils.py
============
Small, reusable, side-effect-free helper functions shared across the data loader,
model-building modules, solver, and reporting layers. Keeping them here avoids the
duplicate-logic problem the spec explicitly calls out.
"""

from __future__ import annotations

import math
from typing import Iterable

import pandas as pd


def compute_big_m(horizon_hours: float) -> float:
    """
    Compute a data-driven Big-M constant.

    Per the math formulation (Section 6), BigM = H (planning horizon in hours) is the
    tightest valid constant for all disjunctive constraints in this model, since no
    Start/Finish time can legitimately fall outside [0, H].
    """
    if horizon_hours <= 0:
        raise ValueError("horizon_hours must be positive to compute a valid Big-M")
    return float(horizon_hours)


def day_of_hour(hour: float, hours_per_day: float = 24.0) -> int:
    """Map a continuous clock hour (from horizon start) to a 1-indexed day number."""
    return int(math.floor(hour / hours_per_day)) + 1


def safe_div(numerator: float, denominator: float, default: float = 0.0) -> float:
    """Division that returns `default` instead of raising on zero denominators."""
    if denominator == 0 or denominator is None or pd.isna(denominator):
        return default
    return numerator / denominator


def chunked(iterable: Iterable, size: int):
    """Yield successive chunks of `size` from `iterable` (used for batch generation)."""
    chunk = []
    for item in iterable:
        chunk.append(item)
        if len(chunk) == size:
            yield chunk
            chunk = []
    if chunk:
        yield chunk


def pct(numerator: float, denominator: float) -> float:
    """Percentage helper with safe-division, rounded to 2 decimals."""
    return round(100.0 * safe_div(numerator, denominator, default=0.0), 2)


def shift_periods_on_day(shift_day: dict, day: int) -> list[str]:
    """Return the list of shift-period IDs whose `shift_day` lookup equals `day`."""
    return [sp for sp, d in shift_day.items() if d == day]


def ensure_columns(df: pd.DataFrame, required: list[str], context: str) -> None:
    """Raise a clear, actionable error if `df` is missing required columns."""
    missing = [c for c in required if c not in df.columns]
    if missing:
        raise ValueError(
            f"[{context}] missing required column(s): {missing}. "
            f"Found columns: {list(df.columns)}"
        )
