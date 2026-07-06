# Production Scheduling and Optimization (PSO) System

An enterprise-grade finite-capacity production scheduling engine built with **Python +
Pyomo**, solved with open-source MILP solvers (**HiGHS** primary, **CBC** fallback).

Given customer orders, machines, shift calendars, operators, raw materials, and
sequence-dependent setup times, the system computes a cost-minimizing production schedule:
which machine runs which batch, in what sequence, staffed by which operator, respecting
maintenance windows, BOM/raw-material availability, and multi-stage routing precedence.

---

## 1. Architecture

```
pso_system/
├── README.md                       <- you are here
├── requirements.txt
├── config.py                       <- all tunable settings (paths, solver, model flags, costs)
├── logging_config.py               <- centralized logging
├── main.py                         <- CLI entry point (run the full pipeline)
├── docs/
│   ├── 01_requirements.md          <- Phase 1: business/technical requirements
│   └── 02_mathematical_formulation.md  <- Phase 2: full MILP formulation (sets, params,
│                                          variables, objective, constraints, equation IDs)
├── data/                           <- input CSVs (generated or real)
├── src/
│   ├── generate_dummy_data.py      <- Phase 5: realistic dummy data generator
│   ├── data_loader.py              <- CSV loading into a PSOData container
│   ├── validation.py               <- referential integrity + business-sanity checks
│   ├── sets.py                     <- index sets, lot/batch generation, shift calendar
│   ├── parameters.py               <- parameter dictionaries (Big-M, costs, rates, ...)
│   ├── variables.py                <- Pyomo ConcreteModel + all decision variables
│   ├── objective.py                <- OBJ.1 total cost minimization
│   ├── constraints_machine.py      <- C-MCH.1-3 (assignment, eligibility, active-machine)
│   ├── constraints_sequence.py     <- C-TIME.1, C-SEQ.1-2, C-MAKESPAN.1 (timing, no-overlap)
│   ├── constraints_setup.py        <- C-SEQ.3 (setup-occurrence linearization)
│   ├── constraints_shift.py        <- C-TIME.2-4 (calendar containment, maintenance)
│   ├── constraints_operator.py     <- C-OPR.1-4 (operator assignment/skill/availability)
│   ├── constraints_batch.py        <- C-BATCH.1-2 (min/max batch size)
│   ├── constraints_precedence.py   <- C-PREC.1 (multi-stage routing precedence)
│   ├── constraints_capacity.py     <- C-CAP.1-2 (daily machine capacity, overtime)
│   ├── constraints_inventory.py    <- C-DEM.1, C-INV.1 (finished-goods balance + backlog)
│   ├── constraints_material.py     <- C-MAT.1-2 (raw-material balance)
│   ├── constraints_due_dates.py    <- C-DUE.1 (tardiness epigraph)
│   ├── model_builder.py            <- orchestrates the full build pipeline
│   ├── solver.py                   <- HiGHS/CBC invocation + infeasibility diagnostics
│   ├── results.py                  <- schedule/KPI extraction + CSV/Excel export
│   ├── visualization.py            <- matplotlib charts (Gantt, inventory, utilization, ...)
│   └── utils.py                    <- shared helpers (Big-M, day-of-hour, safe division, ...)
├── tests/
│   ├── test_data.py                <- dummy data + validation tests
│   ├── test_model.py                <- sets/parameters/variables/objective tests
│   └── test_constraints.py          <- solved-model correctness tests (no-overlap, capacity, ...)
├── notebooks/
│   └── PSO_Colab_Notebook.ipynb    <- Phase 6: one-click Google Colab notebook
└── outputs/                        <- generated schedules, reports, charts, logs, model.lp
```

---

## 2. How to Run

### Locally / in this environment
```bash
pip install -r requirements.txt
python main.py                       # generate data (if needed), build, solve, report, chart
```

Useful flags:
```bash
python main.py --generate-data              # force-regenerate dummy data
python main.py --skip-generate              # reuse existing data/ CSVs
python main.py --time-limit 120             # solver time limit in seconds
python main.py --mip-gap 0.02               # target MIP gap
python main.py --no-charts --no-excel       # faster run, CSVs only
```

### Google Colab
Open `notebooks/PSO_Colab_Notebook.ipynb` in Colab and run all cells — it installs
dependencies, generates data, builds, solves, and displays every chart inline, with no
manual configuration required.

---

## 3. Math ↔ Code Correspondence

Every equation in `docs/02_mathematical_formulation.md` has an ID (e.g. `C-SEQ.1`) that
appears verbatim as a comment above its Pyomo `Constraint` rule in the matching
`src/constraints_*.py` module. If you're auditing correctness, read the math doc section
first, then search the codebase for that equation ID.

Two deliberate deviations from the idealized math formulation are documented in
`docs/02_mathematical_formulation.md` Section 7 ("Documented Deviations"):
1. A `Backlog` variable paired with `Inv` to keep the model feasible under backordering.
2. An upper-bound approximation of setup/changeover cost (see Section 7 for the full
   rationale and its effect on the reported cost breakdown).

---

## 4. Solver Notes

- **Preferred solver**: HiGHS via Pyomo's native `appsi` interface (`pip install highspy`).
- **Fallback**: CBC (`coinor-cbc` on Debian/Ubuntu, or via conda).
- The model is exported to `outputs/model.lp` before every solve for external debugging.
- If the solver reports infeasibility, `src/solver.py::diagnose_infeasibility` runs an
  automated structural check (machine-eligibility coverage, due-date lower bounds, raw
  material aggregate shortage, operator-capacity shortfall) and logs actionable findings
  instead of a bare "infeasible" status.

---

## 5. Performance Notes

Sequence-dependent setup scheduling is **O(batches²)** in binary sequencing variables per
machine group — this is the dominant driver of model size and solve time. At the
documented default scale (25 orders / 5 machines / 3 stages), the model builds
~15,000 variables and ~40,000 constraints and HiGHS typically finds a strong feasible
solution within the default 300-second time limit, though proving strict optimality on
the full sequencing MIP can take longer (a known, documented limitation of open-source
solvers on sequencing MILPs at this scale — see `docs/01_requirements.md` Section 13).

To speed up experimentation:
- Reduce `config.py`'s `DummyDataConfig` (fewer orders/machines) for fast iteration.
- Lower `SolverConfig.time_limit_seconds` and rely on the best-found incumbent.
- Toggle off constraint families you don't need via `ModelConfig` flags
  (`enable_operator_constraints`, `enable_precedence`, `enable_overtime`, ...).

---

## 6. Troubleshooting / FAQ

**"Neither preferred solver nor fallback is available."**
Install HiGHS (`pip install highspy`) or CBC (`apt-get install coinor-cbc`).

**Model is infeasible.**
Check the automated diagnostics logged by `solver.py`. Common root causes we hit (and
fixed) during development, in order of likelihood:
1. A product/family has zero eligible machines at some routing stage.
2. Raw-material opening inventory is smaller than total BOM-driven demand.
3. A batch's processing time (at max batch size) exceeds every shift's duration —
   the single-shift-containment scheduling constraint can never place it.
4. Operator roster capacity (operators × shift types × days) is smaller than the total
   number of batches needing an operator assignment.
5. Lot-splitting produced a batch quantity outside `[min_batch_size, max_batch_size]`.

`src/validation.py` catches (1), (2), (3) and (5) before the solver even runs; (4) is
covered by `solver.py`'s infeasibility diagnostic.

**Where are my results?**
`outputs/production_schedule.csv`, `outputs/machine_schedule.csv`, `outputs/kpis.csv`,
`outputs/pso_report.xlsx` (combined workbook), and `outputs/charts/*.png`.

---

## 7. Industrial Best Practices Reflected in This System

- **Validation before optimization**: a dedicated module checks referential integrity and
  structural feasibility (Section 6 above) before the solver ever runs — catching data
  bugs cheaply instead of burning solver time on a doomed model.
- **Documentation-code parity**: every constraint has a stable equation ID shared between
  the math doc and the code comment implementing it.
- **Data-driven Big-M**: `BigM = planning horizon (hours)`, computed once in
  `parameters.py`, never hardcoded per-constraint — keeps the LP relaxation as tight as
  the model structure allows.
- **Scalability discipline**: every "AND of two binaries" (setup occurrence, operator-in-
  shift, assignment-in-shift) uses the same three-inequality McCormick-style linearization
  rather than a bilinear term, and candidate-pair generation (machine eligibility, shared
  stage) keeps the sequencing MIP's binary count from blowing up to the full Cartesian
  product.
