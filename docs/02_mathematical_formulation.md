# Production Scheduling and Optimization (PSO) System
## Mathematical Formulation — Phase 2

This document defines a **valid Mixed Integer Linear Programming (MILP)** model. Every
symbol defined here has a 1:1 implementation in `src/sets.py`, `src/parameters.py`,
`src/variables.py`, `src/objective.py`, and the `src/constraints_*.py` modules. Equation
numbers in this document match comments in the Pyomo code.

### Modeling architecture choice (read first)

Two classic ways exist to formulate finite-capacity scheduling as a MILP:
(a) **time-indexed** (binary `x[job,machine,t]` for every discrete period `t`), or
(b) **continuous-time disjunctive / sequencing** (continuous Start/Finish + precedence
binaries + Big-M).

This system uses **(b)**, the standard approach in industrial APS engines, because it scales
far better with free open-source solvers (HiGHS/CBC) than time-indexing for a 7-day,
hourly-resolution horizon. Calendars (shifts, maintenance) are handled by assigning each
batch to a **shift-period** (a concrete, dated shift instance) and constraining its
continuous Start/Finish to lie inside that shift-period's clock window. This keeps the model
linear, compact, and solver-friendly while still respecting real calendars.

Two time grains are used, both derived from the same calendar input, to mirror real MRP/APS
systems:
- **Day** `d ∈ D` — granularity for finished-goods and raw-material inventory balance.
- **Shift-period** `sp ∈ SP` — a concrete dated shift instance (e.g. "Day 3, Shift 2"),
  granularity for machine/operator scheduling, maintenance blocking, and setups.

---

## 1. Sets

| Symbol | Name | Description |
|---|---|---|
| `F` | Factories | Plants (base model: `|F|=1`, kept for multi-site extensibility) |
| `STG` | Production Stages | Ordered process steps, e.g. {Cutting, Assembly, Packing} |
| `M` | Machines | Physical machines; each machine belongs to exactly one stage |
| `MG_s` | Machine Group of stage `s` | `{m ∈ M : stage(m) = s}` |
| `P` | Products | Finished products |
| `FAM` | Product Families | Grouping of products (drives machine eligibility) |
| `RT_p` | Routing of product `p` | Ordered subsequence of `STG` product `p` must visit |
| `O` | Orders | Customer orders `(product, quantity, due date, customer)` |
| `CUST` | Customers | Order owners |
| `RM` | Raw Materials | Inputs consumed per the BOM |
| `OPR` | Operators | Plant personnel |
| `D` | Days | Planning horizon days, `d = 1..H_days` |
| `SH` | Shift Types | Named shift templates, e.g. {Morning, Afternoon, Night} |
| `SP` | Shift-Periods | Concrete dated shift instances `(d, sh)`; `SP ⊆ D × SH` |
| `MW` | Maintenance Windows | `(machine, shift-period)` pairs blocked for maintenance |
| `B` | Batches | Production batches, pre-generated per order (1..k batches/order) |
| `(m1,m2)` pairs | Setup Pairs | `(p_from, p_to)` pairs with a defined changeover |

**Derived index sets used throughout:**
- `B_o` = batches belonging to order `o`
- `B_{p,s}` = batches of product `p` at stage `s` (one "stage-batch" per `(b, s)` with `s ∈ RT_p`)
- `M_s` = machines eligible for stage `s` (== `MG_s` here; family-eligibility narrows further via `Elig_{p,m}`)
- `SP_m` = shift-periods machine `m` is rostered to operate (excludes its maintenance windows)
- `OPR_m` = operators qualified ("skilled") for machine `m`

---

## 2. Parameters

Every parameter: **Symbol | Description | Units | Domain | Source (input file)**.

| Symbol | Description | Units | Domain | Source |
|---|---|---|---|---|
| `Demand_o` | Quantity ordered | units | ℤ₊ | `orders.csv` |
| `Due_o` | Due date | day index | ℤ₊ | `orders.csv` |
| `Qty_b` | Pre-allocated quantity of batch `b` | units | ℝ₊ | derived from `Demand_o` / batching rule |
| `ProcRate_{p,m}` | Processing rate | units/hour | ℝ₊ | `processing_times.csv` |
| `ProcTime_{b,m}` | Processing time of batch `b` on machine `m` = `Qty_b / ProcRate_{p,m}` | hours | ℝ₊ | derived |
| `Cap_m` | Machine capacity (max throughput) | units/hour | ℝ₊ | `machines.csv` |
| `Elig_{p,m}` | =1 if machine `m` can run product `p`'s family | binary | {0,1} | `machines.csv` |
| `Setup_{m,p,p'}` | Sequence-dependent setup time, product `p`→`p'` on `m` | hours | ℝ₊ | `setup_times.csv` |
| `SetupCost_{m,p,p'}` | Sequence-dependent setup cost | $ | ℝ₊ | `setup_times.csv` |
| `ShiftStart_{sp}` | Clock start of shift-period `sp` | hours from horizon start | ℝ₊ | `calendar.csv` |
| `ShiftEnd_{sp}` | Clock end of shift-period `sp` | hours from horizon start | ℝ₊ | `calendar.csv` |
| `ShiftDur_{sp}` | `ShiftEnd_sp - ShiftStart_sp` | hours | ℝ₊ | derived |
| `Day_{sp}` | Day index containing shift-period `sp` | day index | ℤ₊ | derived |
| `MaintBlock_{m,sp}` | =1 if `m` is under maintenance during `sp` | binary | {0,1} | `maintenance.csv` |
| `OpAvail_{op,sp}` | =1 if operator `op` is rostered for `sp` | binary | {0,1} | `operators.csv` |
| `OpSkill_{op,m}` | =1 if operator `op` is qualified for machine `m` | binary | {0,1} | `operators.csv` |
| `OpenInv_p` | Opening finished-goods inventory | units | ℝ₊ | `inventory.csv` |
| `OpenInvRM_r` | Opening raw-material inventory | units | ℝ₊ | `inventory.csv` |
| `BOM_{p,r}` | Raw material `r` required per unit of `p` | units(r)/unit(p) | ℝ₊ | `bill_of_materials.csv` |
| `ProdCost_{p,m}` | Variable production cost | $/unit | ℝ₊ | `parameters.csv` / `machines.csv` |
| `HoldCost_p` | Inventory holding cost | $/unit/day | ℝ₊ | `parameters.csv` |
| `LatePenalty_p` | Tardiness penalty | $/unit/day late | ℝ₊ | `parameters.csv` |
| `OvertimeCost_m` | Overtime premium | $/hour | ℝ₊ | `machines.csv` |
| `StartupCost_m` | Machine startup cost (per activation) | $ | ℝ₊ | `machines.csv` |
| `EnergyCost_m` | Optional energy cost rate | $/hour running | ℝ₊ | `machines.csv` |
| `MinBatch_{p,m}` | Minimum batch size | units | ℝ₊ | `parameters.csv` |
| `MaxBatch_{p,m}` | Maximum batch size | units | ℝ₊ | `parameters.csv` |
| `H` | Planning horizon length | hours | ℝ₊ | `parameters.csv` |
| `BigM` | `= H` (tight, horizon-based) | hours | ℝ₊ | derived |

---

## 3. Decision Variables

| Symbol | Description | Type | Domain |
|---|---|---|---|
| `Assign_{b,m}` | =1 if batch `b` assigned to machine `m` | Binary | {0,1} |
| `OpAssign_{b,op}` | =1 if operator `op` assigned to batch `b` | Binary | {0,1} |
| `ShiftAssign_{b,sp}` | =1 if batch `b` scheduled within shift-period `sp` | Binary | {0,1} |
| `Seq_{b,b'}` | =1 if batch `b` precedes `b'` on their shared machine | Binary | {0,1} |
| `Active_{p,m}` | =1 if machine `m` produces product `p` at all (drives startup cost) | Binary | {0,1} |
| `Start_b` | Start time of batch `b` | Continuous | ℝ₊ |
| `Finish_b` | Finish time of batch `b` | Continuous | ℝ₊ |
| `Qty_b` | Produced quantity of batch `b` (if not pre-fixed) | Continuous | ℝ₊ |
| `Inv_{p,d}` | Finished-goods inventory of `p` at end of day `d` | Continuous | ℝ₊ |
| `InvRM_{r,d}` | Raw-material inventory of `r` at end of day `d` | Continuous | ℝ₊ |
| `Tardy_o` | Tardiness of order `o` | Continuous | ℝ₊ |
| `Overtime_m` | Overtime hours used on machine `m` | Continuous | ℝ₊ |
| `SetupOccurs_{b,b'}` | =1 if a setup is incurred between `b`→`b'` (linearization aux) | Binary | {0,1} |
| `Makespan` | Plant-wide makespan (auxiliary, for KPI / optional objective term) | Continuous | ℝ₊ |

---

## 4. Objective Function

**Minimize total cost** `Z`:

```
Z = Σ_{b,m} Assign_{b,m} · Qty_b · ProdCost_{p(b),m}                  (production cost)
  + Σ_{b,b'} SetupOccurs_{b,b'} · SetupCost_{m,p(b),p(b')}            (setup/changeover cost)
  + Σ_{p,d}  Inv_{p,d} · HoldCost_p                                    (inventory holding cost)
  + Σ_{o}    Tardy_o · Demand_o · LatePenalty_{p(o)}                   (late delivery penalty)
  + Σ_{p,m}  Active_{p,m} · StartupCost_m                              (machine startup cost)
  + Σ_{m}    Overtime_m · OvertimeCost_m                               (overtime cost)
  + Σ_{b,m}  Assign_{b,m} · ProcTime_{b,m} · EnergyCost_m              (energy cost, optional)
```
**Eq. (OBJ.1)**. All terms are linear: `Assign_{b,m}·Qty_b` is linearized in §6 since `Qty_b`
may be a variable (Eq. C-BATCH.4); when `Qty_b` is data (fixed batching), the term is
already linear and no linearization is needed — the implementation supports both modes via
a config flag (`FIXED_BATCH_QUANTITIES`).

---

## 5. Constraints

### 5.1 Demand & Inventory

**C-DEM.1 — Demand satisfaction (finished goods, per order, by due date or later with tardiness):**
```
Σ_{b ∈ B_o} Qty_b  =  Demand_o                         ∀ o ∈ O
```

**C-INV.1 — Finished-goods inventory balance:**
```
Inv_{p,d} = Inv_{p,d-1} + Σ_{b: stage=last(p), Day(Finish_b)=d} Qty_b
            − Σ_{o: product(o)=p, Due_o=d} Demand_o
                                         ∀ p ∈ P, d ∈ D   (Inv_{p,0} = OpenInv_p)
```

**C-INV.2 — Inventory non-negativity:** `Inv_{p,d} ≥ 0   ∀ p,d` (variable domain).

**C-MAT.1 — Raw material inventory balance:**
```
InvRM_{r,d} = InvRM_{r,d-1} − Σ_{p} BOM_{p,r} · Σ_{b: product=p, Day(Finish_b)=d} Qty_b
                                         ∀ r ∈ RM, d ∈ D   (InvRM_{r,0} = OpenInvRM_r)
```

**C-MAT.2 — Raw material availability:** `InvRM_{r,d} ≥ 0   ∀ r,d`.

### 5.2 Machine Assignment & Eligibility

**C-MCH.1 — One machine per batch:**
```
Σ_{m ∈ M_s} Assign_{b,m} = 1            ∀ b ∈ B  (s = stage of b)
```

**C-MCH.2 — Machine eligibility:**
```
Assign_{b,m} ≤ Elig_{p(b),m}            ∀ b, m
```

**C-MCH.3 — Active-machine linking (drives startup cost):**
```
Assign_{b,m} ≤ Active_{p(b),m}          ∀ b, m
```

### 5.3 Timing, Sequencing & No-Overlap

**C-TIME.1 — Finish = Start + Processing Time:**
```
Finish_b = Start_b + Σ_m Assign_{b,m} · ProcTime_{b,m}      ∀ b
```

**C-TIME.2 — Shift-period assignment (exactly one):**
```
Σ_{sp ∈ SP} ShiftAssign_{b,sp} = 1       ∀ b
```

**C-TIME.3 — Batch contained inside its assigned shift window:**
```
Start_b  ≥ ShiftStart_{sp} − BigM·(1 − ShiftAssign_{b,sp})    ∀ b, sp
Finish_b ≤ ShiftEnd_{sp}   + BigM·(1 − ShiftAssign_{b,sp})    ∀ b, sp
```

**C-TIME.4 — Maintenance exclusion (machine unavailable during maintenance shift-periods):**
```
Assign_{b,m} + ShiftAssign_{b,sp} ≤ 1     ∀ b, m, sp : MaintBlock_{m,sp} = 1
```

**C-SEQ.1 — No-overlap disjunction (only for batch pairs sharing a candidate machine):**
```
Start_{b'} ≥ Finish_b + Setup_{m,p(b),p(b')} − BigM·(1 − Seq_{b,b'})
                                         ∀ (b,b') sharing machine m, b ≠ b'
```
(applied together with `Seq_{b,b'} + Seq_{b',b} = 1` whenever both are assigned the same
machine — Eq. C-SEQ.2 — so exactly one ordering is enforced.)

**C-SEQ.2 — Ordering consistency (only one of two relative orders active, conditioned on
shared-machine assignment):**
```
Seq_{b,b'} + Seq_{b',b} ≥ Assign_{b,m} + Assign_{b',m} − 1     ∀ b≠b', m
```

**C-SEQ.3 — Setup-occurrence linearization (`SetupOccurs = Seq AND consecutive AND different product`):**
```
SetupOccurs_{b,b'} ≥ Seq_{b,b'} + Assign_{b,m} + Assign_{b',m} − 2     ∀ b≠b', m  (only when p(b)≠p(b'))
SetupOccurs_{b,b'} ≤ Seq_{b,b'}
```

**C-MAKESPAN.1 — Makespan auxiliary:**
```
Makespan ≥ Finish_b      ∀ b
```

### 5.4 Operators

**C-OPR.1 — Exactly one operator per batch:**
```
Σ_{op ∈ OPR_m} OpAssign_{b,op} = Σ_m Assign_{b,m}     ∀ b
```

**C-OPR.2 — Operator skill match:**
```
OpAssign_{b,op} ≤ Σ_{m: OpSkill_{op,m}=1} Assign_{b,m}      ∀ b, op
```

**C-OPR.3 — Operator availability (must be rostered for the assigned shift-period):**
```
OpAssign_{b,op} ≤ Σ_{sp: OpAvail_{op,sp}=1} ShiftAssign_{b,sp}     ∀ b, op
```

**C-OPR.4 — Operator no double-booking (per shift-period, one batch at a time):**
```
Σ_{b: ShiftAssign_{b,sp}=1} OpAssign_{b,op} ≤ 1     ∀ op, sp
```
(implemented as an indicator/Big-M-free counting constraint since `ShiftAssign` is binary.)

### 5.5 Batch Sizing & Precedence

**C-BATCH.1 — Minimum batch size:**
```
Qty_b ≥ MinBatch_{p,m} · Assign_{b,m} − BigM·(1−Assign_{b,m})   ∀ b,m
```

**C-BATCH.2 — Maximum batch size:**
```
Qty_b ≤ MaxBatch_{p,m} · Assign_{b,m} + BigM·(1−Assign_{b,m})   ∀ b,m
```

**C-PREC.1 — Multi-stage precedence (stage `s` must finish before successor stage `s'` of the same product-batch lineage starts):**
```
Start_{b,s'} ≥ Finish_{b,s}      ∀ b, (s,s') consecutive in RT_{p(b)}
```

### 5.6 Capacity & Overtime

**C-CAP.1 — Machine daily capacity (throughput cap):**
```
Σ_{b: Day(Finish_b)=d} Assign_{b,m} · Qty_b ≤ Cap_m · 24       ∀ m, d
```

**C-CAP.2 — Overtime linking (hours beyond rostered shift duration on a machine, per day):**
```
Overtime_m ≥ Σ_{b: Assign_{b,m}=1, Day(Finish_b)=d} ProcTime_{b,m} − Σ_{sp:Day(sp)=d} ShiftDur_{sp}·RosterFrac_m
                                         ∀ m, d   (linearized with the usual ≥ 0 slack form)
```

### 5.7 Due Dates & Tardiness

**C-DUE.1 — Tardiness definition:**
```
Tardy_o ≥ Day(Finish_b)/Demand_o · Qty_b  − Due_o   (aggregated form, linear in practice as:)
Tardy_o ≥ max_{b ∈ B_o}(Day(Finish_b)) − Due_o
Tardy_o ≥ 0
```
implemented via: `Tardy_o ≥ Finish_b/24 − Due_o − BigM·(1 − y_b)` style epigraph constraints
per batch of the order, with `Tardy_o ≥ 0` as the variable's domain.

---

## 6. Linearization Notes (Big-M and products of variables)

- All `Assign · Qty` bilinear terms are avoided by **pre-fixing `Qty_b`** as data in the
  default configuration (`FIXED_BATCH_QUANTITIES = True`, batches pre-sized by the data
  generator to respect min/max batch bounds). When the flag is `False`, the model instead
  uses the **Big-M epigraph form** shown in C-BATCH.1/C-BATCH.2, which is already linear
  (no bilinear term — `Qty_b` is a free continuous variable bounded by Big-M-relaxed limits
  that activate only when `Assign_{b,m}=1`).
- All disjunctive ("either this order or that order") constraints use the standard **Big-M
  reformulation** with `BigM = H` (the planning horizon in hours), the tightest valid
  constant for this model, computed in `parameters.py`, never hardcoded per-constraint.
- `SetupOccurs` is the standard **AND-linearization** of two binaries (`Seq` and the implicit
  "different product" indicator), using the McCormick-style inequalities in C-SEQ.3.

---

## 7. Documented Deviations From the Idealized Formulation (Consistency-Pass Notes)

Two deliberate, documented deviations exist between this formulation and the implemented
code, both adopted to preserve tractability with open-source MILP solvers at the stated
problem scale. Both are surfaced here explicitly (rather than left as silent code
differences) per the project's documentation-code parity discipline.

**(a) `Backlog_{p,d}` variable (paired on-hand/backlog inventory).** Section 5.1's
C-INV.1 balance, if implemented as a single non-negative `Inv_{p,d}` with a hard demand
subtraction on the due date, makes the model infeasible whenever production finishes after
an order's due date — exactly the situation `Tardy_o` is meant to price, not forbid. The
implementation therefore pairs `Inv_{p,d} >= 0` with a second non-negative variable
`Backlog_{p,d}` (unfulfilled cumulative demand), using the standard linear backorder
balance `Inv_{p,d} - Backlog_{p,d} = Inv_{p,d-1} - Backlog_{p,d-1} + production - demand`.
`Backlog` is a feasibility-preserving accounting variable only; it is deliberately **not**
priced in the objective (Section 4), since `Tardy_o` (tied to `Finish` vs. `Due` in
C-DUE.1) is the sole lateness cost driver — pricing both would double-count the same
lateness.

**(b) Setup/changeover cost approximation.** C-SEQ.3's `SetupOccurs_{b,b'}` is linked to
the full pairwise ordering binary `Seq_{b,b'}` (Section 5.3), which indicates that `b`
precedes `b'` **anywhere** in the machine's sequence, not necessarily immediately before
it. An exact "immediate successor only" formulation requires either a cubic number of
"no intermediate batch" constraints or a position/assignment-based circuit formulation,
both of which materially increase model size at this problem scale. The implemented
objective (Section 4, setup cost term) therefore computes an **upper-bound approximation**:
every ordered pair of different-product batches sharing a machine contributes a setup cost,
not only consecutive pairs. This means the reported `setup_cost` KPI and cost-breakdown
component should be read as a conservative (upper-bound) estimate of changeover cost, not
an exact figure — the schedule's feasibility and all other cost components are unaffected.
A tightened, exact reformulation (position variables or a circuit/TSP-style assignment) is
listed in Section 14 (Future Enhancements) of `01_requirements.md`.

## 8. Consistency Statement

Every parameter and variable above appears in exactly one CSV (input) or one
`src/variables.py` declaration, and every constraint (C-*) above has a 1:1 Pyomo
`Constraint` rule in the matching `src/constraints_*.py` module, cross-referenced by ID in
code comments. The objective (OBJ.1) is implemented in `src/objective.py` as the literal
sum of the seven cost components listed, with energy cost gated by a config flag.
