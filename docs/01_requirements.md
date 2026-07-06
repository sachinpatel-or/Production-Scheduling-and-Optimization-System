# Production Scheduling and Optimization (PSO) System
## Requirements Document — Phase 1

**Version:** 1.0
**System:** Finite-Capacity Multi-Machine Production Scheduling Engine
**Modeling Approach:** Mixed Integer Linear Programming (MILP), solved with Pyomo + HiGHS/CBC

---

## 1. Business Problem

A discrete manufacturing plant operates multiple machines across one or more production
lines. Customer orders arrive with specific products, quantities, and due dates. The plant
must decide:

- **Which machine** processes each order (machine assignment, since several machines are
  eligible for the same product but differ in speed, cost, and availability),
- **When** each order starts and finishes (sequencing and timing),
- **How much** to produce and hold in inventory to cover demand without violating capacity,
- **How to sequence jobs** on each machine to minimize costly changeovers (sequence-dependent
  setups), while
- **Respecting** shift calendars, machine maintenance windows, operator availability, raw
  material availability, and minimum/maximum batch sizes.

The business objective is to **minimize total cost to serve** — production, setup/changeover,
inventory holding, late-delivery penalties, machine startup/shutdown, and overtime — while
maximizing machine utilization and on-time delivery performance.

This is the classic **Finite Capacity Scheduling / Advanced Planning & Scheduling (APS)**
problem found in process and discrete manufacturing (chemicals, packaging, metal fabrication,
food & beverage, electronics assembly).

---

## 2. Scope

**In scope:**
- Single-plant, multi-machine, multi-product scheduling over a finite, discretized planning
  horizon (default 7 days).
- Machine eligibility (not every machine can run every product).
- Sequence-dependent setup/changeover times and costs.
- Shift-based working calendars (multiple shifts/day, non-working periods).
- Scheduled machine maintenance windows (unavailability blocks).
- Operator availability and assignment (machines require a qualified operator).
- Raw material consumption via a simple Bill of Materials (BOM), with inventory tracking.
- Minimum/maximum batch sizing per product-machine pair.
- Multi-stage routing / precedence between production stages for products requiring more
  than one operation (e.g., Cut → Assemble → Pack).
- Finished-goods inventory balance, holding cost, and late-delivery (tardiness) penalties.
- Deterministic data (no stochastic demand, no machine breakdowns mid-horizon).

**Out of scope (see Section 13, Model Limitations):**
- Multi-plant / multi-site network optimization.
- Stochastic or rolling-horizon re-optimization.
- Continuous-time (event-based) scheduling — this model uses a **discretized time-bucket**
  formulation for tractability with open-source MILP solvers.
- Real-time MES integration (the system produces a schedule artifact; execution/feedback
  loops are out of scope).
- Nonlinear cost curves, machine learning-based predictive maintenance.

---

## 3. Assumptions

1. The planning horizon is finite and known in advance (default: 7 days).
2. Demand (customer orders) is deterministic and known at planning time.
3. Processing times are deterministic, machine-dependent, and given per unit or per batch.
4. All data (machines, products, orders, calendars) is provided as CSV input files.
5. Currency and cost units are abstracted to a single generic currency unit ("$").
6. A "time period" (time bucket) is the discretization unit used for scheduling
   (default: 1 hour). Shorter buckets increase model fidelity but also model size.
7. Machines process one job at a time (no parallel processing within a machine).
8. Orders may be split across multiple batches but each batch runs on a single machine
   without preemption (no pausing a batch mid-run).

---

## 4. Mathematical Assumptions

1. The model is formulated as a **valid MILP** — all constraints and the objective are
   linear in the decision variables; binaries are used for assignment/sequencing/state logic.
2. Big-M constants are computed from data (planning horizon length, max processing time),
   not hardcoded magic numbers, to keep the LP relaxation as tight as possible.
3. Time is discretized into periods of fixed duration; start/finish times are expressed in
   period units (continuous variables, but conceptually bucketed by the shift calendar).
4. Sequence-dependent setups are modeled with a **disjunctive sequencing formulation**
   (precedence binaries + Big-M), the standard MILP approach for job sequencing on
   unrelated parallel machines.
5. All "rate" and "cost" parameters are assumed constant over the planning horizon (no
   time-varying costs in the base model).

---

## 5. Manufacturing Process

A simplified multi-stage process is modeled:

```
Raw Materials --> [Stage 1: e.g. Cutting] --> [Stage 2: e.g. Assembly] --> [Stage 3: e.g. Packing] --> Finished Goods --> Customer Orders
```

- Each **product** has a routing: an ordered list of **production stages** it must pass
  through.
- Each **stage** can be performed on a subset of **eligible machines** (machine eligibility).
- Each **machine** belongs to exactly one stage (machines are not shared across stages in
  the base model — this keeps precedence linear and tractable).
- **Lots/batches** are the unit of scheduling: an order's quantity is produced in one or
  more batches, each batch assigned to exactly one machine per stage.

---

## 6. Scheduling Logic

1. Orders generate **demand** for a finished product by a due date.
2. Demand is satisfied either from **on-hand inventory** or **new production** (or both),
   governed by an inventory balance equation per product per time period.
3. Production of a batch at a stage requires:
   - An eligible, available machine,
   - A qualified, available operator,
   - Sufficient raw material inventory (per BOM),
   - A scheduled time window that respects the shift calendar and machine maintenance
     windows,
   - Completion of the **predecessor stage** for the same batch (precedence constraint).
4. Each machine processes **at most one job at a time** — enforced via disjunctive
   sequencing (no-overlap) constraints.
5. Switching between products on the same machine may incur a **sequence-dependent setup
   time and cost**, captured via a setup matrix.
6. Orders completed after their due date incur a **tardiness penalty** proportional to the
   delay and a per-unit late penalty rate; orders may also be **partially** fulfilled late
   if backordering is allowed (configurable).

---

## 7. Inputs

| File | Description |
|---|---|
| `products.csv` | Product master data: family, routing stage count, unit cost |
| `machines.csv` | Machine master data: stage, speed, capacity, eligible families, cost rates |
| `orders.csv` | Customer orders: product, quantity, due date, customer, priority |
| `inventory.csv` | Opening inventory per product |
| `operators.csv` | Operator master data: skills (eligible machines), shift assignment |
| `calendar.csv` | Working calendar: shift start/end per day, per shift id |
| `setup_times.csv` | Sequence-dependent setup time/cost matrix per machine, from-product, to-product |
| `processing_times.csv` | Processing time (rate) per product-machine pair |
| `bill_of_materials.csv` | Raw material requirements per unit of finished product |
| `maintenance.csv` | Scheduled machine downtime windows |
| `parameters.csv` | Global scalar parameters (costs, planning horizon, time bucket size) |

## 8. Outputs

- Production schedule (order/batch level): machine, stage, start, finish, quantity.
- Machine schedule / Gantt chart (per machine timeline, including setups).
- Operator schedule.
- Inventory profile over time (per product).
- Machine utilization report.
- Order completion report (on-time vs. late, tardiness in periods).
- Setup/changeover summary (count and cost by machine).
- Full cost breakdown by component (production, setup, inventory, tardiness, overtime,
  startup).
- KPI dashboard (Section 11).
- CSV and Excel exports of all of the above.

---

## 9. Constraints (Summary — full formulation in Phase 2 document)

Demand satisfaction, inventory balance, machine capacity, machine eligibility, one-job-at-a-
time / no-overlap, job sequencing with sequence-dependent setups, start/finish/processing
time linking, shift and working-hour constraints, machine availability and maintenance
windows, operator availability, raw material availability (BOM-driven), minimum/maximum
batch size, multi-stage precedence, inventory non-negativity, due-date / tardiness tracking,
Big-M linearization constraints.

---

## 10. Optimization Goals

**Primary objective:** Minimize total cost = production + setup/changeover + inventory
holding + tardiness penalty + machine startup + overtime.

**Secondary (reporting) goals:** Maximize machine utilization, minimize makespan per
machine, minimize number of late orders — tracked as KPIs even though the MILP optimizes
the single weighted-cost objective (standard industrial practice: a single economic
objective with KPI monitoring, rather than unweighted multi-objective optimization, to keep
the model a clean MILP).

---

## 11. KPIs

1. Total cost (and cost breakdown by component, % of total)
2. On-time delivery rate (%)
3. Average tardiness (periods/days)
4. Number of late orders
5. Machine utilization (%) per machine and plant-wide average
6. Total setup/changeover time and cost
7. Average inventory level and inventory turns
8. Makespan (plant-wide and per machine)
9. Overtime hours used
10. Solver performance (solve time, MIP gap, status)

---

## 12. Solver Assumptions

- Open-source solvers only: **HiGHS** (preferred, fast, MIT-licensed) and **CBC** (fallback).
- Solver is invoked via Pyomo's `SolverFactory`, with a configurable time limit and MIP gap
  tolerance (defaults: 300s, 1% gap) suitable for free-tier Google Colab compute.
- The model is exported to an `.lp` file before solving for debuggability.
- If the solver returns infeasible, the system runs an automated infeasibility diagnostic
  (relaxation of soft constraints / IIS-style reporting where supported) rather than failing
  silently.

---

## 13. Model Limitations

1. Discretized time buckets approximate continuous scheduling; very short jobs relative to
   the bucket size lose fidelity.
2. Sequence-dependent setup formulation scales as **O(n²)** binaries per machine in the
   number of batches assigned to it — large instances (hundreds of orders) may need a
   commercial solver (Gurobi/CPLEX) or decomposition for fast solve times.
3. No stochastic demand or machine-failure modeling — this is a deterministic, single-shot
   planning model, typically re-run on a rolling basis.
4. Machines are assumed to belong to a single stage; cross-stage flexible machines are not
   modeled in the base version (documented as a future enhancement).
5. Energy cost is modeled as a simple optional linear term, not a true time-of-use tariff
   model.

---

## 14. Future Enhancements

1. Rolling-horizon / receding-horizon re-optimization with frozen near-term schedule.
2. Multi-plant network scheduling with inter-plant transfers.
3. Stochastic demand and robust/chance-constrained scheduling.
4. Machine-learning-based predictive processing time and maintenance models feeding the
   parameter set.
5. Decomposition (e.g., Benders, column generation) for large-scale sequence-dependent
   setup problems.
6. Integration with live MES/ERP systems for closed-loop execution feedback.
7. True multi-objective Pareto analysis (cost vs. service level vs. utilization).
