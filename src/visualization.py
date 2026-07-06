"""
src/visualization.py
======================
Phase 8 — generates every required chart using matplotlib ONLY (no seaborn, per spec).
Each function saves a PNG under `outputs/charts/` and returns the file path, so both the
CLI (`main.py`) and the Colab notebook can call these identically.
"""

from __future__ import annotations

from pathlib import Path

import matplotlib
matplotlib.use("Agg")  # headless-safe backend for CLI / server contexts
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
import pandas as pd

from config import CONFIG
from logging_config import get_logger
from src.results import PSOResults

logger = get_logger(__name__)

CHART_DIR = Path(CONFIG.paths["output_dir"]) / "charts"
CHART_DIR.mkdir(parents=True, exist_ok=True)

_COLOR_CYCLE = plt.rcParams["axes.prop_cycle"].by_key()["color"]


def _product_color_map(products: list[str]) -> dict[str, str]:
    return {p: _COLOR_CYCLE[i % len(_COLOR_CYCLE)] for i, p in enumerate(sorted(products))}


def plot_machine_gantt(results: PSOResults, save_path: Path | None = None) -> Path:
    """Gantt chart: one horizontal bar per scheduled batch, grouped by machine."""
    df = results.machine_schedule
    save_path = save_path or CHART_DIR / "machine_gantt.png"
    if df.empty:
        logger.warning("machine_schedule is empty — skipping Gantt chart.")
        return save_path

    machines = sorted(df["machine_id"].unique())
    products = sorted(df["product_id"].unique())
    color_map = _product_color_map(products)

    fig, ax = plt.subplots(figsize=(14, 0.6 * len(machines) + 2))
    for i, mach in enumerate(machines):
        mach_df = df[df["machine_id"] == mach]
        for _, row in mach_df.iterrows():
            ax.barh(
                i, row["finish_hour"] - row["start_hour"], left=row["start_hour"],
                color=color_map[row["product_id"]], edgecolor="black", height=0.6,
            )
    ax.set_yticks(range(len(machines)))
    ax.set_yticklabels(machines)
    ax.set_xlabel("Time (hours from horizon start)")
    ax.set_title("Machine Gantt Chart — Production Schedule")
    handles = [mpatches.Patch(color=color_map[p], label=p) for p in products]
    ax.legend(handles=handles, loc="upper left", bbox_to_anchor=(1.01, 1.0), title="Product")
    fig.tight_layout()
    fig.savefig(save_path, dpi=140)
    plt.close(fig)
    logger.info("Saved machine Gantt chart to %s", save_path)
    return save_path


def plot_production_timeline(results: PSOResults, save_path: Path | None = None) -> Path:
    """Stacked bar of total quantity produced per day (across all machines)."""
    save_path = save_path or CHART_DIR / "production_timeline.png"
    df = results.production_schedule.copy()
    if df.empty:
        logger.warning("production_schedule is empty — skipping timeline chart.")
        return save_path
    df["day"] = (df["finish_hour"] // 24 + 1).astype(int)
    pivot = df.pivot_table(index="day", columns="product_id", values="quantity", aggfunc="sum", fill_value=0)

    fig, ax = plt.subplots(figsize=(10, 5))
    bottom = None
    color_map = _product_color_map(list(pivot.columns))
    for product in pivot.columns:
        ax.bar(pivot.index, pivot[product], bottom=bottom, label=product, color=color_map[product])
        bottom = pivot[product] if bottom is None else bottom + pivot[product]
    ax.set_xlabel("Day")
    ax.set_ylabel("Quantity Produced")
    ax.set_title("Production Timeline (Quantity Completed per Day)")
    ax.legend(loc="upper left", bbox_to_anchor=(1.01, 1.0), title="Product")
    fig.tight_layout()
    fig.savefig(save_path, dpi=140)
    plt.close(fig)
    logger.info("Saved production timeline chart to %s", save_path)
    return save_path


def plot_inventory_levels(results: PSOResults, save_path: Path | None = None) -> Path:
    """Line chart of on-hand inventory per product over the planning horizon."""
    save_path = save_path or CHART_DIR / "inventory_levels.png"
    df = results.inventory_profile
    if df.empty:
        logger.warning("inventory_profile is empty — skipping inventory chart.")
        return save_path

    fig, ax = plt.subplots(figsize=(10, 5))
    for product, grp in df.groupby("product_id"):
        ax.plot(grp["day"], grp["on_hand"], marker="o", label=product)
    ax.set_xlabel("Day")
    ax.set_ylabel("On-Hand Inventory (units)")
    ax.set_title("Finished-Goods Inventory Levels")
    ax.legend(loc="upper left", bbox_to_anchor=(1.01, 1.0), title="Product")
    fig.tight_layout()
    fig.savefig(save_path, dpi=140)
    plt.close(fig)
    logger.info("Saved inventory levels chart to %s", save_path)
    return save_path


def plot_machine_utilization(results: PSOResults, save_path: Path | None = None) -> Path:
    """Bar chart of utilization % per machine."""
    save_path = save_path or CHART_DIR / "machine_utilization.png"
    df = results.machine_utilization
    if df.empty:
        logger.warning("machine_utilization is empty — skipping utilization chart.")
        return save_path

    fig, ax = plt.subplots(figsize=(8, 5))
    ax.bar(df["machine_id"], df["utilization_pct"], color="#4C72B0")
    ax.axhline(100, color="red", linestyle="--", linewidth=1, label="100% capacity")
    ax.set_xlabel("Machine")
    ax.set_ylabel("Utilization (%)")
    ax.set_title("Machine Utilization")
    ax.legend()
    fig.tight_layout()
    fig.savefig(save_path, dpi=140)
    plt.close(fig)
    logger.info("Saved machine utilization chart to %s", save_path)
    return save_path


def plot_production_quantity(results: PSOResults, save_path: Path | None = None) -> Path:
    """Bar chart of total quantity produced per product."""
    save_path = save_path or CHART_DIR / "production_quantity.png"
    df = results.production_schedule
    if df.empty:
        logger.warning("production_schedule is empty — skipping quantity chart.")
        return save_path
    qty_by_product = df.groupby("product_id")["quantity"].sum().sort_values(ascending=False)

    fig, ax = plt.subplots(figsize=(8, 5))
    ax.bar(qty_by_product.index, qty_by_product.values, color="#55A868")
    ax.set_xlabel("Product")
    ax.set_ylabel("Total Quantity Produced")
    ax.set_title("Production Quantity by Product")
    fig.tight_layout()
    fig.savefig(save_path, dpi=140)
    plt.close(fig)
    logger.info("Saved production quantity chart to %s", save_path)
    return save_path


def plot_order_completion(results: PSOResults, save_path: Path | None = None) -> Path:
    """Bar chart: on-time vs. late order counts."""
    save_path = save_path or CHART_DIR / "order_completion.png"
    df = results.order_completion
    if df.empty:
        logger.warning("order_completion is empty — skipping completion chart.")
        return save_path
    n_on_time = int((~df["is_late"]).sum())
    n_late = int(df["is_late"].sum())

    fig, ax = plt.subplots(figsize=(6, 5))
    ax.bar(["On-Time", "Late"], [n_on_time, n_late], color=["#55A868", "#C44E52"])
    ax.set_ylabel("Number of Orders")
    ax.set_title("Order Completion: On-Time vs. Late")
    for i, v in enumerate([n_on_time, n_late]):
        ax.text(i, v + 0.1, str(v), ha="center", fontweight="bold")
    fig.tight_layout()
    fig.savefig(save_path, dpi=140)
    plt.close(fig)
    logger.info("Saved order completion chart to %s", save_path)
    return save_path


def plot_cost_breakdown(results: PSOResults, save_path: Path | None = None) -> Path:
    """Pie chart of cost breakdown by component (excludes the TOTAL row)."""
    save_path = save_path or CHART_DIR / "cost_breakdown.png"
    df = results.cost_breakdown
    df = df[df["component"] != "TOTAL"]
    df = df[df["value"] > 0]
    if df.empty:
        logger.warning("cost_breakdown has no positive components — skipping pie chart.")
        return save_path

    fig, ax = plt.subplots(figsize=(8, 8))
    ax.pie(df["value"], labels=df["component"], autopct="%1.1f%%", startangle=90)
    ax.set_title("Total Cost Breakdown by Component")
    fig.tight_layout()
    fig.savefig(save_path, dpi=140)
    plt.close(fig)
    logger.info("Saved cost breakdown chart to %s", save_path)
    return save_path


def generate_all_charts(results: PSOResults) -> list[Path]:
    """Generate every chart in Phase 8 and return the list of saved file paths."""
    generators = [
        plot_machine_gantt, plot_production_timeline, plot_inventory_levels,
        plot_machine_utilization, plot_production_quantity, plot_order_completion,
        plot_cost_breakdown,
    ]
    paths = [gen(results) for gen in generators]
    logger.info("Generated %d charts in %s", len(paths), CHART_DIR)
    return paths
