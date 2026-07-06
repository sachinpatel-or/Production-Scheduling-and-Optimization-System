\* Source Pyomo model name=ProductionSchedulingOptimization *\

min 
OBJ1_TotalCost:
+142.09503207079578 Assign(O001_L1_Cutting_M03)
+164.6489754694679 Assign(O001_L1_Assembly_M02)
+86.4424779676184 Assign(O002_L1_Cutting_M01)
+77.31546226961764 Assign(O002_L1_Assembly_M02)
+182.88712036788021 Assign(O003_L1_Cutting_M01)
+181.437778149186 Assign(O003_L1_Assembly_M02)
+105.06085783756699 Assign(O004_L1_Cutting_M01)
+93.96802337384298 Assign(O004_L1_Assembly_M02)
+105.06085783756699 Assign(O004_L2_Cutting_M01)
+93.96802337384298 Assign(O004_L2_Assembly_M02)
+31.917222634197564 Assign(O005_L1_Cutting_M01)
+28.54724760724344 Assign(O005_L1_Assembly_M02)
+45.21606539844655 Assign(O006_L1_Cutting_M01)
+40.441934110261535 Assign(O006_L1_Assembly_M02)
+19.94 SetupOccurs(O002_L1_Cutting_O003_L1_Cutting)
+11.25 SetupOccurs(O003_L1_Cutting_O002_L1_Cutting)
+11.25 SetupOccurs(O003_L1_Cutting_O004_L1_Cutting)
+19.94 SetupOccurs(O004_L1_Cutting_O003_L1_Cutting)
+11.25 SetupOccurs(O003_L1_Cutting_O004_L2_Cutting)
+19.94 SetupOccurs(O004_L2_Cutting_O003_L1_Cutting)
+11.25 SetupOccurs(O003_L1_Cutting_O005_L1_Cutting)
+19.94 SetupOccurs(O005_L1_Cutting_O003_L1_Cutting)
+11.25 SetupOccurs(O003_L1_Cutting_O006_L1_Cutting)
+19.94 SetupOccurs(O006_L1_Cutting_O003_L1_Cutting)
+47.05 SetupOccurs(O001_L1_Assembly_O002_L1_Assembly)
+52.49 SetupOccurs(O002_L1_Assembly_O001_L1_Assembly)
+21.0 SetupOccurs(O001_L1_Assembly_O003_L1_Assembly)
+40.46 SetupOccurs(O003_L1_Assembly_O001_L1_Assembly)
+47.05 SetupOccurs(O001_L1_Assembly_O004_L1_Assembly)
+52.49 SetupOccurs(O004_L1_Assembly_O001_L1_Assembly)
+47.05 SetupOccurs(O001_L1_Assembly_O004_L2_Assembly)
+52.49 SetupOccurs(O004_L2_Assembly_O001_L1_Assembly)
+47.05 SetupOccurs(O001_L1_Assembly_O005_L1_Assembly)
+52.49 SetupOccurs(O005_L1_Assembly_O001_L1_Assembly)
+47.05 SetupOccurs(O001_L1_Assembly_O006_L1_Assembly)
+52.49 SetupOccurs(O006_L1_Assembly_O001_L1_Assembly)
+17.05 SetupOccurs(O002_L1_Assembly_O003_L1_Assembly)
+26.94 SetupOccurs(O003_L1_Assembly_O002_L1_Assembly)
+26.94 SetupOccurs(O003_L1_Assembly_O004_L1_Assembly)
+17.05 SetupOccurs(O004_L1_Assembly_O003_L1_Assembly)
+26.94 SetupOccurs(O003_L1_Assembly_O004_L2_Assembly)
+17.05 SetupOccurs(O004_L2_Assembly_O003_L1_Assembly)
+26.94 SetupOccurs(O003_L1_Assembly_O005_L1_Assembly)
+17.05 SetupOccurs(O005_L1_Assembly_O003_L1_Assembly)
+26.94 SetupOccurs(O003_L1_Assembly_O006_L1_Assembly)
+17.05 SetupOccurs(O006_L1_Assembly_O003_L1_Assembly)
+0.5 Inv(P01_1)
+0.5 Inv(P01_2)
+0.5 Inv(P01_3)
+0.5 Inv(P01_4)
+0.5 Inv(P01_5)
+0.5 Inv(P02_1)
+0.5 Inv(P02_2)
+0.5 Inv(P02_3)
+0.5 Inv(P02_4)
+0.5 Inv(P02_5)
+0.5 Inv(P03_1)
+0.5 Inv(P03_2)
+0.5 Inv(P03_3)
+0.5 Inv(P03_4)
+0.5 Inv(P03_5)
+0.5 Inv(P04_1)
+0.5 Inv(P04_2)
+0.5 Inv(P04_3)
+0.5 Inv(P04_4)
+0.5 Inv(P04_5)
+680.0 Tardy(O001)
+325.0 Tardy(O002)
+745.0 Tardy(O003)
+790.0 Tardy(O004)
+120.0 Tardy(O005)
+170.0 Tardy(O006)
+61.06143878735455 Active(P01_M01)
+92.37721826711308 Active(P01_M02)
+92.37721826711308 Active(P02_M02)
+73.46378180450508 Active(P02_M03)
+61.06143878735455 Active(P03_M01)
+92.37721826711308 Active(P03_M02)
+47.58032932155044 Overtime(M01_1)
+47.58032932155044 Overtime(M01_2)
+47.58032932155044 Overtime(M01_3)
+47.58032932155044 Overtime(M01_4)
+47.58032932155044 Overtime(M01_5)
+48.83898525813864 Overtime(M02_1)
+48.83898525813864 Overtime(M02_2)
+48.83898525813864 Overtime(M02_3)
+48.83898525813864 Overtime(M02_4)
+48.83898525813864 Overtime(M02_5)
+54.35819608310172 Overtime(M03_1)
+54.35819608310172 Overtime(M03_2)
+54.35819608310172 Overtime(M03_3)
+54.35819608310172 Overtime(M03_4)
+54.35819608310172 Overtime(M03_5)

s.t.

c_e_C_MCH1_OneMachinePerBatch(O001_L1_Cutting)_:
+1 Assign(O001_L1_Cutting_M03)
= 1

c_e_C_MCH1_OneMachinePerBatch(O001_L1_Assembly)_:
+1 Assign(O001_L1_Assembly_M02)
= 1

c_e_C_MCH1_OneMachinePerBatch(O002_L1_Cutting)_:
+1 Assign(O002_L1_Cutting_M01)
= 1

c_e_C_MCH1_OneMachinePerBatch(O002_L1_Assembly)_:
+1 Assign(O002_L1_Assembly_M02)
= 1

c_e_C_MCH1_OneMachinePerBatch(O003_L1_Cutting)_:
+1 Assign(O003_L1_Cutting_M01)
= 1

c_e_C_MCH1_OneMachinePerBatch(O003_L1_Assembly)_:
+1 Assign(O003_L1_Assembly_M02)
= 1

c_e_C_MCH1_OneMachinePerBatch(O004_L1_Cutting)_:
+1 Assign(O004_L1_Cutting_M01)
= 1

c_e_C_MCH1_OneMachinePerBatch(O004_L1_Assembly)_:
+1 Assign(O004_L1_Assembly_M02)
= 1

c_e_C_MCH1_OneMachinePerBatch(O004_L2_Cutting)_:
+1 Assign(O004_L2_Cutting_M01)
= 1

c_e_C_MCH1_OneMachinePerBatch(O004_L2_Assembly)_:
+1 Assign(O004_L2_Assembly_M02)
= 1

c_e_C_MCH1_OneMachinePerBatch(O005_L1_Cutting)_:
+1 Assign(O005_L1_Cutting_M01)
= 1

c_e_C_MCH1_OneMachinePerBatch(O005_L1_Assembly)_:
+1 Assign(O005_L1_Assembly_M02)
= 1

c_e_C_MCH1_OneMachinePerBatch(O006_L1_Cutting)_:
+1 Assign(O006_L1_Cutting_M01)
= 1

c_e_C_MCH1_OneMachinePerBatch(O006_L1_Assembly)_:
+1 Assign(O006_L1_Assembly_M02)
= 1

c_u_C_MCH3_ActiveLink(O001_L1_Cutting_M03)_:
+1 Assign(O001_L1_Cutting_M03)
-1 Active(P02_M03)
<= 0

c_u_C_MCH3_ActiveLink(O001_L1_Assembly_M02)_:
+1 Assign(O001_L1_Assembly_M02)
-1 Active(P02_M02)
<= 0

c_u_C_MCH3_ActiveLink(O002_L1_Cutting_M01)_:
+1 Assign(O002_L1_Cutting_M01)
-1 Active(P01_M01)
<= 0

c_u_C_MCH3_ActiveLink(O002_L1_Assembly_M02)_:
+1 Assign(O002_L1_Assembly_M02)
-1 Active(P01_M02)
<= 0

c_u_C_MCH3_ActiveLink(O003_L1_Cutting_M01)_:
+1 Assign(O003_L1_Cutting_M01)
-1 Active(P03_M01)
<= 0

c_u_C_MCH3_ActiveLink(O003_L1_Assembly_M02)_:
+1 Assign(O003_L1_Assembly_M02)
-1 Active(P03_M02)
<= 0

c_u_C_MCH3_ActiveLink(O004_L1_Cutting_M01)_:
+1 Assign(O004_L1_Cutting_M01)
-1 Active(P01_M01)
<= 0

c_u_C_MCH3_ActiveLink(O004_L1_Assembly_M02)_:
+1 Assign(O004_L1_Assembly_M02)
-1 Active(P01_M02)
<= 0

c_u_C_MCH3_ActiveLink(O004_L2_Cutting_M01)_:
+1 Assign(O004_L2_Cutting_M01)
-1 Active(P01_M01)
<= 0

c_u_C_MCH3_ActiveLink(O004_L2_Assembly_M02)_:
+1 Assign(O004_L2_Assembly_M02)
-1 Active(P01_M02)
<= 0

c_u_C_MCH3_ActiveLink(O005_L1_Cutting_M01)_:
+1 Assign(O005_L1_Cutting_M01)
-1 Active(P01_M01)
<= 0

c_u_C_MCH3_ActiveLink(O005_L1_Assembly_M02)_:
+1 Assign(O005_L1_Assembly_M02)
-1 Active(P01_M02)
<= 0

c_u_C_MCH3_ActiveLink(O006_L1_Cutting_M01)_:
+1 Assign(O006_L1_Cutting_M01)
-1 Active(P01_M01)
<= 0

c_u_C_MCH3_ActiveLink(O006_L1_Assembly_M02)_:
+1 Assign(O006_L1_Assembly_M02)
-1 Active(P01_M02)
<= 0

c_e_C_TIME1_FinishTime(O001_L1_Cutting)_:
-3.2113341204250294 Assign(O001_L1_Cutting_M03)
+1 Finish(O001_L1_Cutting)
-1 Start(O001_L1_Cutting)
= 0

c_e_C_TIME1_FinishTime(O001_L1_Assembly)_:
-3.6179835062516625 Assign(O001_L1_Assembly_M02)
+1 Finish(O001_L1_Assembly)
-1 Start(O001_L1_Assembly)
= 0

c_e_C_TIME1_FinishTime(O002_L1_Cutting)_:
-2.529182879377432 Assign(O002_L1_Cutting_M01)
+1 Finish(O002_L1_Cutting)
-1 Start(O002_L1_Cutting)
= 0

c_e_C_TIME1_FinishTime(O002_L1_Assembly)_:
-1.5011547344110856 Assign(O002_L1_Assembly_M02)
+1 Finish(O002_L1_Assembly)
-1 Start(O002_L1_Assembly)
= 0

c_e_C_TIME1_FinishTime(O003_L1_Cutting)_:
-3.675382338431179 Assign(O003_L1_Cutting_M01)
+1 Finish(O003_L1_Cutting)
-1 Start(O003_L1_Cutting)
= 0

c_e_C_TIME1_FinishTime(O003_L1_Assembly)_:
-4.137739516800889 Assign(O003_L1_Assembly_M02)
+1 Finish(O003_L1_Assembly)
-1 Start(O003_L1_Assembly)
= 0

c_e_C_TIME1_FinishTime(O004_L1_Cutting)_:
-3.0739299610894943 Assign(O004_L1_Cutting_M01)
+1 Finish(O004_L1_Cutting)
-1 Start(O004_L1_Cutting)
= 0

c_e_C_TIME1_FinishTime(O004_L1_Assembly)_:
-1.8244803695150116 Assign(O004_L1_Assembly_M02)
+1 Finish(O004_L1_Assembly)
-1 Start(O004_L1_Assembly)
= 0

c_e_C_TIME1_FinishTime(O004_L2_Cutting)_:
-3.0739299610894943 Assign(O004_L2_Cutting_M01)
+1 Finish(O004_L2_Cutting)
-1 Start(O004_L2_Cutting)
= 0

c_e_C_TIME1_FinishTime(O004_L2_Assembly)_:
-1.8244803695150116 Assign(O004_L2_Assembly_M02)
+1 Finish(O004_L2_Assembly)
-1 Start(O004_L2_Assembly)
= 0

c_e_C_TIME1_FinishTime(O005_L1_Cutting)_:
-0.933852140077821 Assign(O005_L1_Cutting_M01)
+1 Finish(O005_L1_Cutting)
-1 Start(O005_L1_Cutting)
= 0

c_e_C_TIME1_FinishTime(O005_L1_Assembly)_:
-0.5542725173210162 Assign(O005_L1_Assembly_M02)
+1 Finish(O005_L1_Assembly)
-1 Start(O005_L1_Assembly)
= 0

c_e_C_TIME1_FinishTime(O006_L1_Cutting)_:
-1.3229571984435797 Assign(O006_L1_Cutting_M01)
+1 Finish(O006_L1_Cutting)
-1 Start(O006_L1_Cutting)
= 0

c_e_C_TIME1_FinishTime(O006_L1_Assembly)_:
-0.7852193995381063 Assign(O006_L1_Assembly_M02)
+1 Finish(O006_L1_Assembly)
-1 Start(O006_L1_Assembly)
= 0

c_u_C_SEQ2_Ordering(O002_L1_Cutting_O003_L1_Cutting_M01)_:
+1 Assign(O002_L1_Cutting_M01)
+1 Assign(O003_L1_Cutting_M01)
-1 Seq(O002_L1_Cutting_O003_L1_Cutting)
-1 Seq(O003_L1_Cutting_O002_L1_Cutting)
<= 1

c_u_C_SEQ2_Ordering(O002_L1_Cutting_O004_L1_Cutting_M01)_:
+1 Assign(O002_L1_Cutting_M01)
+1 Assign(O004_L1_Cutting_M01)
-1 Seq(O002_L1_Cutting_O004_L1_Cutting)
-1 Seq(O004_L1_Cutting_O002_L1_Cutting)
<= 1

c_u_C_SEQ2_Ordering(O002_L1_Cutting_O004_L2_Cutting_M01)_:
+1 Assign(O002_L1_Cutting_M01)
+1 Assign(O004_L2_Cutting_M01)
-1 Seq(O002_L1_Cutting_O004_L2_Cutting)
-1 Seq(O004_L2_Cutting_O002_L1_Cutting)
<= 1

c_u_C_SEQ2_Ordering(O002_L1_Cutting_O005_L1_Cutting_M01)_:
+1 Assign(O002_L1_Cutting_M01)
+1 Assign(O005_L1_Cutting_M01)
-1 Seq(O002_L1_Cutting_O005_L1_Cutting)
-1 Seq(O005_L1_Cutting_O002_L1_Cutting)
<= 1

c_u_C_SEQ2_Ordering(O002_L1_Cutting_O006_L1_Cutting_M01)_:
+1 Assign(O002_L1_Cutting_M01)
+1 Assign(O006_L1_Cutting_M01)
-1 Seq(O002_L1_Cutting_O006_L1_Cutting)
-1 Seq(O006_L1_Cutting_O002_L1_Cutting)
<= 1

c_u_C_SEQ2_Ordering(O003_L1_Cutting_O004_L1_Cutting_M01)_:
+1 Assign(O003_L1_Cutting_M01)
+1 Assign(O004_L1_Cutting_M01)
-1 Seq(O003_L1_Cutting_O004_L1_Cutting)
-1 Seq(O004_L1_Cutting_O003_L1_Cutting)
<= 1

c_u_C_SEQ2_Ordering(O003_L1_Cutting_O004_L2_Cutting_M01)_:
+1 Assign(O003_L1_Cutting_M01)
+1 Assign(O004_L2_Cutting_M01)
-1 Seq(O003_L1_Cutting_O004_L2_Cutting)
-1 Seq(O004_L2_Cutting_O003_L1_Cutting)
<= 1

c_u_C_SEQ2_Ordering(O003_L1_Cutting_O005_L1_Cutting_M01)_:
+1 Assign(O003_L1_Cutting_M01)
+1 Assign(O005_L1_Cutting_M01)
-1 Seq(O003_L1_Cutting_O005_L1_Cutting)
-1 Seq(O005_L1_Cutting_O003_L1_Cutting)
<= 1

c_u_C_SEQ2_Ordering(O003_L1_Cutting_O006_L1_Cutting_M01)_:
+1 Assign(O003_L1_Cutting_M01)
+1 Assign(O006_L1_Cutting_M01)
-1 Seq(O003_L1_Cutting_O006_L1_Cutting)
-1 Seq(O006_L1_Cutting_O003_L1_Cutting)
<= 1

c_u_C_SEQ2_Ordering(O004_L1_Cutting_O004_L2_Cutting_M01)_:
+1 Assign(O004_L1_Cutting_M01)
+1 Assign(O004_L2_Cutting_M01)
-1 Seq(O004_L1_Cutting_O004_L2_Cutting)
-1 Seq(O004_L2_Cutting_O004_L1_Cutting)
<= 1

c_u_C_SEQ2_Ordering(O004_L1_Cutting_O005_L1_Cutting_M01)_:
+1 Assign(O004_L1_Cutting_M01)
+1 Assign(O005_L1_Cutting_M01)
-1 Seq(O004_L1_Cutting_O005_L1_Cutting)
-1 Seq(O005_L1_Cutting_O004_L1_Cutting)
<= 1

c_u_C_SEQ2_Ordering(O004_L1_Cutting_O006_L1_Cutting_M01)_:
+1 Assign(O004_L1_Cutting_M01)
+1 Assign(O006_L1_Cutting_M01)
-1 Seq(O004_L1_Cutting_O006_L1_Cutting)
-1 Seq(O006_L1_Cutting_O004_L1_Cutting)
<= 1

c_u_C_SEQ2_Ordering(O004_L2_Cutting_O005_L1_Cutting_M01)_:
+1 Assign(O004_L2_Cutting_M01)
+1 Assign(O005_L1_Cutting_M01)
-1 Seq(O004_L2_Cutting_O005_L1_Cutting)
-1 Seq(O005_L1_Cutting_O004_L2_Cutting)
<= 1

c_u_C_SEQ2_Ordering(O004_L2_Cutting_O006_L1_Cutting_M01)_:
+1 Assign(O004_L2_Cutting_M01)
+1 Assign(O006_L1_Cutting_M01)
-1 Seq(O004_L2_Cutting_O006_L1_Cutting)
-1 Seq(O006_L1_Cutting_O004_L2_Cutting)
<= 1

c_u_C_SEQ2_Ordering(O005_L1_Cutting_O006_L1_Cutting_M01)_:
+1 Assign(O005_L1_Cutting_M01)
+1 Assign(O006_L1_Cutting_M01)
-1 Seq(O005_L1_Cutting_O006_L1_Cutting)
-1 Seq(O006_L1_Cutting_O005_L1_Cutting)
<= 1

c_u_C_SEQ2_Ordering(O001_L1_Assembly_O002_L1_Assembly_M02)_:
+1 Assign(O001_L1_Assembly_M02)
+1 Assign(O002_L1_Assembly_M02)
-1 Seq(O001_L1_Assembly_O002_L1_Assembly)
-1 Seq(O002_L1_Assembly_O001_L1_Assembly)
<= 1

c_u_C_SEQ2_Ordering(O001_L1_Assembly_O003_L1_Assembly_M02)_:
+1 Assign(O001_L1_Assembly_M02)
+1 Assign(O003_L1_Assembly_M02)
-1 Seq(O001_L1_Assembly_O003_L1_Assembly)
-1 Seq(O003_L1_Assembly_O001_L1_Assembly)
<= 1

c_u_C_SEQ2_Ordering(O001_L1_Assembly_O004_L1_Assembly_M02)_:
+1 Assign(O001_L1_Assembly_M02)
+1 Assign(O004_L1_Assembly_M02)
-1 Seq(O001_L1_Assembly_O004_L1_Assembly)
-1 Seq(O004_L1_Assembly_O001_L1_Assembly)
<= 1

c_u_C_SEQ2_Ordering(O001_L1_Assembly_O004_L2_Assembly_M02)_:
+1 Assign(O001_L1_Assembly_M02)
+1 Assign(O004_L2_Assembly_M02)
-1 Seq(O001_L1_Assembly_O004_L2_Assembly)
-1 Seq(O004_L2_Assembly_O001_L1_Assembly)
<= 1

c_u_C_SEQ2_Ordering(O001_L1_Assembly_O005_L1_Assembly_M02)_:
+1 Assign(O001_L1_Assembly_M02)
+1 Assign(O005_L1_Assembly_M02)
-1 Seq(O001_L1_Assembly_O005_L1_Assembly)
-1 Seq(O005_L1_Assembly_O001_L1_Assembly)
<= 1

c_u_C_SEQ2_Ordering(O001_L1_Assembly_O006_L1_Assembly_M02)_:
+1 Assign(O001_L1_Assembly_M02)
+1 Assign(O006_L1_Assembly_M02)
-1 Seq(O001_L1_Assembly_O006_L1_Assembly)
-1 Seq(O006_L1_Assembly_O001_L1_Assembly)
<= 1

c_u_C_SEQ2_Ordering(O002_L1_Assembly_O003_L1_Assembly_M02)_:
+1 Assign(O002_L1_Assembly_M02)
+1 Assign(O003_L1_Assembly_M02)
-1 Seq(O002_L1_Assembly_O003_L1_Assembly)
-1 Seq(O003_L1_Assembly_O002_L1_Assembly)
<= 1

c_u_C_SEQ2_Ordering(O002_L1_Assembly_O004_L1_Assembly_M02)_:
+1 Assign(O002_L1_Assembly_M02)
+1 Assign(O004_L1_Assembly_M02)
-1 Seq(O002_L1_Assembly_O004_L1_Assembly)
-1 Seq(O004_L1_Assembly_O002_L1_Assembly)
<= 1

c_u_C_SEQ2_Ordering(O002_L1_Assembly_O004_L2_Assembly_M02)_:
+1 Assign(O002_L1_Assembly_M02)
+1 Assign(O004_L2_Assembly_M02)
-1 Seq(O002_L1_Assembly_O004_L2_Assembly)
-1 Seq(O004_L2_Assembly_O002_L1_Assembly)
<= 1

c_u_C_SEQ2_Ordering(O002_L1_Assembly_O005_L1_Assembly_M02)_:
+1 Assign(O002_L1_Assembly_M02)
+1 Assign(O005_L1_Assembly_M02)
-1 Seq(O002_L1_Assembly_O005_L1_Assembly)
-1 Seq(O005_L1_Assembly_O002_L1_Assembly)
<= 1

c_u_C_SEQ2_Ordering(O002_L1_Assembly_O006_L1_Assembly_M02)_:
+1 Assign(O002_L1_Assembly_M02)
+1 Assign(O006_L1_Assembly_M02)
-1 Seq(O002_L1_Assembly_O006_L1_Assembly)
-1 Seq(O006_L1_Assembly_O002_L1_Assembly)
<= 1

c_u_C_SEQ2_Ordering(O003_L1_Assembly_O004_L1_Assembly_M02)_:
+1 Assign(O003_L1_Assembly_M02)
+1 Assign(O004_L1_Assembly_M02)
-1 Seq(O003_L1_Assembly_O004_L1_Assembly)
-1 Seq(O004_L1_Assembly_O003_L1_Assembly)
<= 1

c_u_C_SEQ2_Ordering(O003_L1_Assembly_O004_L2_Assembly_M02)_:
+1 Assign(O003_L1_Assembly_M02)
+1 Assign(O004_L2_Assembly_M02)
-1 Seq(O003_L1_Assembly_O004_L2_Assembly)
-1 Seq(O004_L2_Assembly_O003_L1_Assembly)
<= 1

c_u_C_SEQ2_Ordering(O003_L1_Assembly_O005_L1_Assembly_M02)_:
+1 Assign(O003_L1_Assembly_M02)
+1 Assign(O005_L1_Assembly_M02)
-1 Seq(O003_L1_Assembly_O005_L1_Assembly)
-1 Seq(O005_L1_Assembly_O003_L1_Assembly)
<= 1

c_u_C_SEQ2_Ordering(O003_L1_Assembly_O006_L1_Assembly_M02)_:
+1 Assign(O003_L1_Assembly_M02)
+1 Assign(O006_L1_Assembly_M02)
-1 Seq(O003_L1_Assembly_O006_L1_Assembly)
-1 Seq(O006_L1_Assembly_O003_L1_Assembly)
<= 1

c_u_C_SEQ2_Ordering(O004_L1_Assembly_O004_L2_Assembly_M02)_:
+1 Assign(O004_L1_Assembly_M02)
+1 Assign(O004_L2_Assembly_M02)
-1 Seq(O004_L1_Assembly_O004_L2_Assembly)
-1 Seq(O004_L2_Assembly_O004_L1_Assembly)
<= 1

c_u_C_SEQ2_Ordering(O004_L1_Assembly_O005_L1_Assembly_M02)_:
+1 Assign(O004_L1_Assembly_M02)
+1 Assign(O005_L1_Assembly_M02)
-1 Seq(O004_L1_Assembly_O005_L1_Assembly)
-1 Seq(O005_L1_Assembly_O004_L1_Assembly)
<= 1

c_u_C_SEQ2_Ordering(O004_L1_Assembly_O006_L1_Assembly_M02)_:
+1 Assign(O004_L1_Assembly_M02)
+1 Assign(O006_L1_Assembly_M02)
-1 Seq(O004_L1_Assembly_O006_L1_Assembly)
-1 Seq(O006_L1_Assembly_O004_L1_Assembly)
<= 1

c_u_C_SEQ2_Ordering(O004_L2_Assembly_O005_L1_Assembly_M02)_:
+1 Assign(O004_L2_Assembly_M02)
+1 Assign(O005_L1_Assembly_M02)
-1 Seq(O004_L2_Assembly_O005_L1_Assembly)
-1 Seq(O005_L1_Assembly_O004_L2_Assembly)
<= 1

c_u_C_SEQ2_Ordering(O004_L2_Assembly_O006_L1_Assembly_M02)_:
+1 Assign(O004_L2_Assembly_M02)
+1 Assign(O006_L1_Assembly_M02)
-1 Seq(O004_L2_Assembly_O006_L1_Assembly)
-1 Seq(O006_L1_Assembly_O004_L2_Assembly)
<= 1

c_u_C_SEQ2_Ordering(O005_L1_Assembly_O006_L1_Assembly_M02)_:
+1 Assign(O005_L1_Assembly_M02)
+1 Assign(O006_L1_Assembly_M02)
-1 Seq(O005_L1_Assembly_O006_L1_Assembly)
-1 Seq(O006_L1_Assembly_O005_L1_Assembly)
<= 1

c_u_C_SEQ1_NoOverlap(O002_L1_Cutting_O003_L1_Cutting_M01)_:
+120.0 Assign(O002_L1_Cutting_M01)
+120.0 Assign(O003_L1_Cutting_M01)
+1 Finish(O002_L1_Cutting)
-1 Start(O003_L1_Cutting)
+120.0 Seq(O002_L1_Cutting_O003_L1_Cutting)
<= 359.29

c_u_C_SEQ1_NoOverlap(O003_L1_Cutting_O002_L1_Cutting_M01)_:
+120.0 Assign(O002_L1_Cutting_M01)
+120.0 Assign(O003_L1_Cutting_M01)
+1 Finish(O003_L1_Cutting)
-1 Start(O002_L1_Cutting)
+120.0 Seq(O003_L1_Cutting_O002_L1_Cutting)
<= 359.54

c_u_C_SEQ1_NoOverlap(O002_L1_Cutting_O004_L1_Cutting_M01)_:
+120.0 Assign(O002_L1_Cutting_M01)
+120.0 Assign(O004_L1_Cutting_M01)
+1 Finish(O002_L1_Cutting)
-1 Start(O004_L1_Cutting)
+120.0 Seq(O002_L1_Cutting_O004_L1_Cutting)
<= 360.0

c_u_C_SEQ1_NoOverlap(O004_L1_Cutting_O002_L1_Cutting_M01)_:
+120.0 Assign(O002_L1_Cutting_M01)
+120.0 Assign(O004_L1_Cutting_M01)
+1 Finish(O004_L1_Cutting)
-1 Start(O002_L1_Cutting)
+120.0 Seq(O004_L1_Cutting_O002_L1_Cutting)
<= 360.0

c_u_C_SEQ1_NoOverlap(O002_L1_Cutting_O004_L2_Cutting_M01)_:
+120.0 Assign(O002_L1_Cutting_M01)
+120.0 Assign(O004_L2_Cutting_M01)
+1 Finish(O002_L1_Cutting)
-1 Start(O004_L2_Cutting)
+120.0 Seq(O002_L1_Cutting_O004_L2_Cutting)
<= 360.0

c_u_C_SEQ1_NoOverlap(O004_L2_Cutting_O002_L1_Cutting_M01)_:
+120.0 Assign(O002_L1_Cutting_M01)
+120.0 Assign(O004_L2_Cutting_M01)
+1 Finish(O004_L2_Cutting)
-1 Start(O002_L1_Cutting)
+120.0 Seq(O004_L2_Cutting_O002_L1_Cutting)
<= 360.0

c_u_C_SEQ1_NoOverlap(O002_L1_Cutting_O005_L1_Cutting_M01)_:
+120.0 Assign(O002_L1_Cutting_M01)
+120.0 Assign(O005_L1_Cutting_M01)
+1 Finish(O002_L1_Cutting)
-1 Start(O005_L1_Cutting)
+120.0 Seq(O002_L1_Cutting_O005_L1_Cutting)
<= 360.0

c_u_C_SEQ1_NoOverlap(O005_L1_Cutting_O002_L1_Cutting_M01)_:
+120.0 Assign(O002_L1_Cutting_M01)
+120.0 Assign(O005_L1_Cutting_M01)
+1 Finish(O005_L1_Cutting)
-1 Start(O002_L1_Cutting)
+120.0 Seq(O005_L1_Cutting_O002_L1_Cutting)
<= 360.0

c_u_C_SEQ1_NoOverlap(O002_L1_Cutting_O006_L1_Cutting_M01)_:
+120.0 Assign(O002_L1_Cutting_M01)
+120.0 Assign(O006_L1_Cutting_M01)
+1 Finish(O002_L1_Cutting)
-1 Start(O006_L1_Cutting)
+120.0 Seq(O002_L1_Cutting_O006_L1_Cutting)
<= 360.0

c_u_C_SEQ1_NoOverlap(O006_L1_Cutting_O002_L1_Cutting_M01)_:
+120.0 Assign(O002_L1_Cutting_M01)
+120.0 Assign(O006_L1_Cutting_M01)
+1 Finish(O006_L1_Cutting)
-1 Start(O002_L1_Cutting)
+120.0 Seq(O006_L1_Cutting_O002_L1_Cutting)
<= 360.0

c_u_C_SEQ1_NoOverlap(O003_L1_Cutting_O004_L1_Cutting_M01)_:
+120.0 Assign(O003_L1_Cutting_M01)
+120.0 Assign(O004_L1_Cutting_M01)
+1 Finish(O003_L1_Cutting)
-1 Start(O004_L1_Cutting)
+120.0 Seq(O003_L1_Cutting_O004_L1_Cutting)
<= 359.54

c_u_C_SEQ1_NoOverlap(O004_L1_Cutting_O003_L1_Cutting_M01)_:
+120.0 Assign(O003_L1_Cutting_M01)
+120.0 Assign(O004_L1_Cutting_M01)
+1 Finish(O004_L1_Cutting)
-1 Start(O003_L1_Cutting)
+120.0 Seq(O004_L1_Cutting_O003_L1_Cutting)
<= 359.29

c_u_C_SEQ1_NoOverlap(O003_L1_Cutting_O004_L2_Cutting_M01)_:
+120.0 Assign(O003_L1_Cutting_M01)
+120.0 Assign(O004_L2_Cutting_M01)
+1 Finish(O003_L1_Cutting)
-1 Start(O004_L2_Cutting)
+120.0 Seq(O003_L1_Cutting_O004_L2_Cutting)
<= 359.54

c_u_C_SEQ1_NoOverlap(O004_L2_Cutting_O003_L1_Cutting_M01)_:
+120.0 Assign(O003_L1_Cutting_M01)
+120.0 Assign(O004_L2_Cutting_M01)
+1 Finish(O004_L2_Cutting)
-1 Start(O003_L1_Cutting)
+120.0 Seq(O004_L2_Cutting_O003_L1_Cutting)
<= 359.29

c_u_C_SEQ1_NoOverlap(O003_L1_Cutting_O005_L1_Cutting_M01)_:
+120.0 Assign(O003_L1_Cutting_M01)
+120.0 Assign(O005_L1_Cutting_M01)
+1 Finish(O003_L1_Cutting)
-1 Start(O005_L1_Cutting)
+120.0 Seq(O003_L1_Cutting_O005_L1_Cutting)
<= 359.54

c_u_C_SEQ1_NoOverlap(O005_L1_Cutting_O003_L1_Cutting_M01)_:
+120.0 Assign(O003_L1_Cutting_M01)
+120.0 Assign(O005_L1_Cutting_M01)
+1 Finish(O005_L1_Cutting)
-1 Start(O003_L1_Cutting)
+120.0 Seq(O005_L1_Cutting_O003_L1_Cutting)
<= 359.29

c_u_C_SEQ1_NoOverlap(O003_L1_Cutting_O006_L1_Cutting_M01)_:
+120.0 Assign(O003_L1_Cutting_M01)
+120.0 Assign(O006_L1_Cutting_M01)
+1 Finish(O003_L1_Cutting)
-1 Start(O006_L1_Cutting)
+120.0 Seq(O003_L1_Cutting_O006_L1_Cutting)
<= 359.54

c_u_C_SEQ1_NoOverlap(O006_L1_Cutting_O003_L1_Cutting_M01)_:
+120.0 Assign(O003_L1_Cutting_M01)
+120.0 Assign(O006_L1_Cutting_M01)
+1 Finish(O006_L1_Cutting)
-1 Start(O003_L1_Cutting)
+120.0 Seq(O006_L1_Cutting_O003_L1_Cutting)
<= 359.29

c_u_C_SEQ1_NoOverlap(O004_L1_Cutting_O004_L2_Cutting_M01)_:
+120.0 Assign(O004_L1_Cutting_M01)
+120.0 Assign(O004_L2_Cutting_M01)
+1 Finish(O004_L1_Cutting)
-1 Start(O004_L2_Cutting)
+120.0 Seq(O004_L1_Cutting_O004_L2_Cutting)
<= 360.0

c_u_C_SEQ1_NoOverlap(O004_L2_Cutting_O004_L1_Cutting_M01)_:
+120.0 Assign(O004_L1_Cutting_M01)
+120.0 Assign(O004_L2_Cutting_M01)
+1 Finish(O004_L2_Cutting)
-1 Start(O004_L1_Cutting)
+120.0 Seq(O004_L2_Cutting_O004_L1_Cutting)
<= 360.0

c_u_C_SEQ1_NoOverlap(O004_L1_Cutting_O005_L1_Cutting_M01)_:
+120.0 Assign(O004_L1_Cutting_M01)
+120.0 Assign(O005_L1_Cutting_M01)
+1 Finish(O004_L1_Cutting)
-1 Start(O005_L1_Cutting)
+120.0 Seq(O004_L1_Cutting_O005_L1_Cutting)
<= 360.0

c_u_C_SEQ1_NoOverlap(O005_L1_Cutting_O004_L1_Cutting_M01)_:
+120.0 Assign(O004_L1_Cutting_M01)
+120.0 Assign(O005_L1_Cutting_M01)
+1 Finish(O005_L1_Cutting)
-1 Start(O004_L1_Cutting)
+120.0 Seq(O005_L1_Cutting_O004_L1_Cutting)
<= 360.0

c_u_C_SEQ1_NoOverlap(O004_L1_Cutting_O006_L1_Cutting_M01)_:
+120.0 Assign(O004_L1_Cutting_M01)
+120.0 Assign(O006_L1_Cutting_M01)
+1 Finish(O004_L1_Cutting)
-1 Start(O006_L1_Cutting)
+120.0 Seq(O004_L1_Cutting_O006_L1_Cutting)
<= 360.0

c_u_C_SEQ1_NoOverlap(O006_L1_Cutting_O004_L1_Cutting_M01)_:
+120.0 Assign(O004_L1_Cutting_M01)
+120.0 Assign(O006_L1_Cutting_M01)
+1 Finish(O006_L1_Cutting)
-1 Start(O004_L1_Cutting)
+120.0 Seq(O006_L1_Cutting_O004_L1_Cutting)
<= 360.0

c_u_C_SEQ1_NoOverlap(O004_L2_Cutting_O005_L1_Cutting_M01)_:
+120.0 Assign(O004_L2_Cutting_M01)
+120.0 Assign(O005_L1_Cutting_M01)
+1 Finish(O004_L2_Cutting)
-1 Start(O005_L1_Cutting)
+120.0 Seq(O004_L2_Cutting_O005_L1_Cutting)
<= 360.0

c_u_C_SEQ1_NoOverlap(O005_L1_Cutting_O004_L2_Cutting_M01)_:
+120.0 Assign(O004_L2_Cutting_M01)
+120.0 Assign(O005_L1_Cutting_M01)
+1 Finish(O005_L1_Cutting)
-1 Start(O004_L2_Cutting)
+120.0 Seq(O005_L1_Cutting_O004_L2_Cutting)
<= 360.0

c_u_C_SEQ1_NoOverlap(O004_L2_Cutting_O006_L1_Cutting_M01)_:
+120.0 Assign(O004_L2_Cutting_M01)
+120.0 Assign(O006_L1_Cutting_M01)
+1 Finish(O004_L2_Cutting)
-1 Start(O006_L1_Cutting)
+120.0 Seq(O004_L2_Cutting_O006_L1_Cutting)
<= 360.0

c_u_C_SEQ1_NoOverlap(O006_L1_Cutting_O004_L2_Cutting_M01)_:
+120.0 Assign(O004_L2_Cutting_M01)
+120.0 Assign(O006_L1_Cutting_M01)
+1 Finish(O006_L1_Cutting)
-1 Start(O004_L2_Cutting)
+120.0 Seq(O006_L1_Cutting_O004_L2_Cutting)
<= 360.0

c_u_C_SEQ1_NoOverlap(O005_L1_Cutting_O006_L1_Cutting_M01)_:
+120.0 Assign(O005_L1_Cutting_M01)
+120.0 Assign(O006_L1_Cutting_M01)
+1 Finish(O005_L1_Cutting)
-1 Start(O006_L1_Cutting)
+120.0 Seq(O005_L1_Cutting_O006_L1_Cutting)
<= 360.0

c_u_C_SEQ1_NoOverlap(O006_L1_Cutting_O005_L1_Cutting_M01)_:
+120.0 Assign(O005_L1_Cutting_M01)
+120.0 Assign(O006_L1_Cutting_M01)
+1 Finish(O006_L1_Cutting)
-1 Start(O005_L1_Cutting)
+120.0 Seq(O006_L1_Cutting_O005_L1_Cutting)
<= 360.0

c_u_C_SEQ1_NoOverlap(O001_L1_Assembly_O002_L1_Assembly_M02)_:
+120.0 Assign(O001_L1_Assembly_M02)
+120.0 Assign(O002_L1_Assembly_M02)
+1 Finish(O001_L1_Assembly)
-1 Start(O002_L1_Assembly)
+120.0 Seq(O001_L1_Assembly_O002_L1_Assembly)
<= 357.45

c_u_C_SEQ1_NoOverlap(O002_L1_Assembly_O001_L1_Assembly_M02)_:
+120.0 Assign(O001_L1_Assembly_M02)
+120.0 Assign(O002_L1_Assembly_M02)
+1 Finish(O002_L1_Assembly)
-1 Start(O001_L1_Assembly)
+120.0 Seq(O002_L1_Assembly_O001_L1_Assembly)
<= 358.24

c_u_C_SEQ1_NoOverlap(O001_L1_Assembly_O003_L1_Assembly_M02)_:
+120.0 Assign(O001_L1_Assembly_M02)
+120.0 Assign(O003_L1_Assembly_M02)
+1 Finish(O001_L1_Assembly)
-1 Start(O003_L1_Assembly)
+120.0 Seq(O001_L1_Assembly_O003_L1_Assembly)
<= 358.94

c_u_C_SEQ1_NoOverlap(O003_L1_Assembly_O001_L1_Assembly_M02)_:
+120.0 Assign(O001_L1_Assembly_M02)
+120.0 Assign(O003_L1_Assembly_M02)
+1 Finish(O003_L1_Assembly)
-1 Start(O001_L1_Assembly)
+120.0 Seq(O003_L1_Assembly_O001_L1_Assembly)
<= 358.37

c_u_C_SEQ1_NoOverlap(O001_L1_Assembly_O004_L1_Assembly_M02)_:
+120.0 Assign(O001_L1_Assembly_M02)
+120.0 Assign(O004_L1_Assembly_M02)
+1 Finish(O001_L1_Assembly)
-1 Start(O004_L1_Assembly)
+120.0 Seq(O001_L1_Assembly_O004_L1_Assembly)
<= 357.45

c_u_C_SEQ1_NoOverlap(O004_L1_Assembly_O001_L1_Assembly_M02)_:
+120.0 Assign(O001_L1_Assembly_M02)
+120.0 Assign(O004_L1_Assembly_M02)
+1 Finish(O004_L1_Assembly)
-1 Start(O001_L1_Assembly)
+120.0 Seq(O004_L1_Assembly_O001_L1_Assembly)
<= 358.24

c_u_C_SEQ1_NoOverlap(O001_L1_Assembly_O004_L2_Assembly_M02)_:
+120.0 Assign(O001_L1_Assembly_M02)
+120.0 Assign(O004_L2_Assembly_M02)
+1 Finish(O001_L1_Assembly)
-1 Start(O004_L2_Assembly)
+120.0 Seq(O001_L1_Assembly_O004_L2_Assembly)
<= 357.45

c_u_C_SEQ1_NoOverlap(O004_L2_Assembly_O001_L1_Assembly_M02)_:
+120.0 Assign(O001_L1_Assembly_M02)
+120.0 Assign(O004_L2_Assembly_M02)
+1 Finish(O004_L2_Assembly)
-1 Start(O001_L1_Assembly)
+120.0 Seq(O004_L2_Assembly_O001_L1_Assembly)
<= 358.24

c_u_C_SEQ1_NoOverlap(O001_L1_Assembly_O005_L1_Assembly_M02)_:
+120.0 Assign(O001_L1_Assembly_M02)
+120.0 Assign(O005_L1_Assembly_M02)
+1 Finish(O001_L1_Assembly)
-1 Start(O005_L1_Assembly)
+120.0 Seq(O001_L1_Assembly_O005_L1_Assembly)
<= 357.45

c_u_C_SEQ1_NoOverlap(O005_L1_Assembly_O001_L1_Assembly_M02)_:
+120.0 Assign(O001_L1_Assembly_M02)
+120.0 Assign(O005_L1_Assembly_M02)
+1 Finish(O005_L1_Assembly)
-1 Start(O001_L1_Assembly)
+120.0 Seq(O005_L1_Assembly_O001_L1_Assembly)
<= 358.24

c_u_C_SEQ1_NoOverlap(O001_L1_Assembly_O006_L1_Assembly_M02)_:
+120.0 Assign(O001_L1_Assembly_M02)
+120.0 Assign(O006_L1_Assembly_M02)
+1 Finish(O001_L1_Assembly)
-1 Start(O006_L1_Assembly)
+120.0 Seq(O001_L1_Assembly_O006_L1_Assembly)
<= 357.45

c_u_C_SEQ1_NoOverlap(O006_L1_Assembly_O001_L1_Assembly_M02)_:
+120.0 Assign(O001_L1_Assembly_M02)
+120.0 Assign(O006_L1_Assembly_M02)
+1 Finish(O006_L1_Assembly)
-1 Start(O001_L1_Assembly)
+120.0 Seq(O006_L1_Assembly_O001_L1_Assembly)
<= 358.24

c_u_C_SEQ1_NoOverlap(O002_L1_Assembly_O003_L1_Assembly_M02)_:
+120.0 Assign(O002_L1_Assembly_M02)
+120.0 Assign(O003_L1_Assembly_M02)
+1 Finish(O002_L1_Assembly)
-1 Start(O003_L1_Assembly)
+120.0 Seq(O002_L1_Assembly_O003_L1_Assembly)
<= 359.27

c_u_C_SEQ1_NoOverlap(O003_L1_Assembly_O002_L1_Assembly_M02)_:
+120.0 Assign(O002_L1_Assembly_M02)
+120.0 Assign(O003_L1_Assembly_M02)
+1 Finish(O003_L1_Assembly)
-1 Start(O002_L1_Assembly)
+120.0 Seq(O003_L1_Assembly_O002_L1_Assembly)
<= 359.04

c_u_C_SEQ1_NoOverlap(O002_L1_Assembly_O004_L1_Assembly_M02)_:
+120.0 Assign(O002_L1_Assembly_M02)
+120.0 Assign(O004_L1_Assembly_M02)
+1 Finish(O002_L1_Assembly)
-1 Start(O004_L1_Assembly)
+120.0 Seq(O002_L1_Assembly_O004_L1_Assembly)
<= 360.0

c_u_C_SEQ1_NoOverlap(O004_L1_Assembly_O002_L1_Assembly_M02)_:
+120.0 Assign(O002_L1_Assembly_M02)
+120.0 Assign(O004_L1_Assembly_M02)
+1 Finish(O004_L1_Assembly)
-1 Start(O002_L1_Assembly)
+120.0 Seq(O004_L1_Assembly_O002_L1_Assembly)
<= 360.0

c_u_C_SEQ1_NoOverlap(O002_L1_Assembly_O004_L2_Assembly_M02)_:
+120.0 Assign(O002_L1_Assembly_M02)
+120.0 Assign(O004_L2_Assembly_M02)
+1 Finish(O002_L1_Assembly)
-1 Start(O004_L2_Assembly)
+120.0 Seq(O002_L1_Assembly_O004_L2_Assembly)
<= 360.0

c_u_C_SEQ1_NoOverlap(O004_L2_Assembly_O002_L1_Assembly_M02)_:
+120.0 Assign(O002_L1_Assembly_M02)
+120.0 Assign(O004_L2_Assembly_M02)
+1 Finish(O004_L2_Assembly)
-1 Start(O002_L1_Assembly)
+120.0 Seq(O004_L2_Assembly_O002_L1_Assembly)
<= 360.0

c_u_C_SEQ1_NoOverlap(O002_L1_Assembly_O005_L1_Assembly_M02)_:
+120.0 Assign(O002_L1_Assembly_M02)
+120.0 Assign(O005_L1_Assembly_M02)
+1 Finish(O002_L1_Assembly)
-1 Start(O005_L1_Assembly)
+120.0 Seq(O002_L1_Assembly_O005_L1_Assembly)
<= 360.0

c_u_C_SEQ1_NoOverlap(O005_L1_Assembly_O002_L1_Assembly_M02)_:
+120.0 Assign(O002_L1_Assembly_M02)
+120.0 Assign(O005_L1_Assembly_M02)
+1 Finish(O005_L1_Assembly)
-1 Start(O002_L1_Assembly)
+120.0 Seq(O005_L1_Assembly_O002_L1_Assembly)
<= 360.0

c_u_C_SEQ1_NoOverlap(O002_L1_Assembly_O006_L1_Assembly_M02)_:
+120.0 Assign(O002_L1_Assembly_M02)
+120.0 Assign(O006_L1_Assembly_M02)
+1 Finish(O002_L1_Assembly)
-1 Start(O006_L1_Assembly)
+120.0 Seq(O002_L1_Assembly_O006_L1_Assembly)
<= 360.0

c_u_C_SEQ1_NoOverlap(O006_L1_Assembly_O002_L1_Assembly_M02)_:
+120.0 Assign(O002_L1_Assembly_M02)
+120.0 Assign(O006_L1_Assembly_M02)
+1 Finish(O006_L1_Assembly)
-1 Start(O002_L1_Assembly)
+120.0 Seq(O006_L1_Assembly_O002_L1_Assembly)
<= 360.0

c_u_C_SEQ1_NoOverlap(O003_L1_Assembly_O004_L1_Assembly_M02)_:
+120.0 Assign(O003_L1_Assembly_M02)
+120.0 Assign(O004_L1_Assembly_M02)
+1 Finish(O003_L1_Assembly)
-1 Start(O004_L1_Assembly)
+120.0 Seq(O003_L1_Assembly_O004_L1_Assembly)
<= 359.04

c_u_C_SEQ1_NoOverlap(O004_L1_Assembly_O003_L1_Assembly_M02)_:
+120.0 Assign(O003_L1_Assembly_M02)
+120.0 Assign(O004_L1_Assembly_M02)
+1 Finish(O004_L1_Assembly)
-1 Start(O003_L1_Assembly)
+120.0 Seq(O004_L1_Assembly_O003_L1_Assembly)
<= 359.27

c_u_C_SEQ1_NoOverlap(O003_L1_Assembly_O004_L2_Assembly_M02)_:
+120.0 Assign(O003_L1_Assembly_M02)
+120.0 Assign(O004_L2_Assembly_M02)
+1 Finish(O003_L1_Assembly)
-1 Start(O004_L2_Assembly)
+120.0 Seq(O003_L1_Assembly_O004_L2_Assembly)
<= 359.04

c_u_C_SEQ1_NoOverlap(O004_L2_Assembly_O003_L1_Assembly_M02)_:
+120.0 Assign(O003_L1_Assembly_M02)
+120.0 Assign(O004_L2_Assembly_M02)
+1 Finish(O004_L2_Assembly)
-1 Start(O003_L1_Assembly)
+120.0 Seq(O004_L2_Assembly_O003_L1_Assembly)
<= 359.27

c_u_C_SEQ1_NoOverlap(O003_L1_Assembly_O005_L1_Assembly_M02)_:
+120.0 Assign(O003_L1_Assembly_M02)
+120.0 Assign(O005_L1_Assembly_M02)
+1 Finish(O003_L1_Assembly)
-1 Start(O005_L1_Assembly)
+120.0 Seq(O003_L1_Assembly_O005_L1_Assembly)
<= 359.04

c_u_C_SEQ1_NoOverlap(O005_L1_Assembly_O003_L1_Assembly_M02)_:
+120.0 Assign(O003_L1_Assembly_M02)
+120.0 Assign(O005_L1_Assembly_M02)
+1 Finish(O005_L1_Assembly)
-1 Start(O003_L1_Assembly)
+120.0 Seq(O005_L1_Assembly_O003_L1_Assembly)
<= 359.27

c_u_C_SEQ1_NoOverlap(O003_L1_Assembly_O006_L1_Assembly_M02)_:
+120.0 Assign(O003_L1_Assembly_M02)
+120.0 Assign(O006_L1_Assembly_M02)
+1 Finish(O003_L1_Assembly)
-1 Start(O006_L1_Assembly)
+120.0 Seq(O003_L1_Assembly_O006_L1_Assembly)
<= 359.04

c_u_C_SEQ1_NoOverlap(O006_L1_Assembly_O003_L1_Assembly_M02)_:
+120.0 Assign(O003_L1_Assembly_M02)
+120.0 Assign(O006_L1_Assembly_M02)
+1 Finish(O006_L1_Assembly)
-1 Start(O003_L1_Assembly)
+120.0 Seq(O006_L1_Assembly_O003_L1_Assembly)
<= 359.27

c_u_C_SEQ1_NoOverlap(O004_L1_Assembly_O004_L2_Assembly_M02)_:
+120.0 Assign(O004_L1_Assembly_M02)
+120.0 Assign(O004_L2_Assembly_M02)
+1 Finish(O004_L1_Assembly)
-1 Start(O004_L2_Assembly)
+120.0 Seq(O004_L1_Assembly_O004_L2_Assembly)
<= 360.0

c_u_C_SEQ1_NoOverlap(O004_L2_Assembly_O004_L1_Assembly_M02)_:
+120.0 Assign(O004_L1_Assembly_M02)
+120.0 Assign(O004_L2_Assembly_M02)
+1 Finish(O004_L2_Assembly)
-1 Start(O004_L1_Assembly)
+120.0 Seq(O004_L2_Assembly_O004_L1_Assembly)
<= 360.0

c_u_C_SEQ1_NoOverlap(O004_L1_Assembly_O005_L1_Assembly_M02)_:
+120.0 Assign(O004_L1_Assembly_M02)
+120.0 Assign(O005_L1_Assembly_M02)
+1 Finish(O004_L1_Assembly)
-1 Start(O005_L1_Assembly)
+120.0 Seq(O004_L1_Assembly_O005_L1_Assembly)
<= 360.0

c_u_C_SEQ1_NoOverlap(O005_L1_Assembly_O004_L1_Assembly_M02)_:
+120.0 Assign(O004_L1_Assembly_M02)
+120.0 Assign(O005_L1_Assembly_M02)
+1 Finish(O005_L1_Assembly)
-1 Start(O004_L1_Assembly)
+120.0 Seq(O005_L1_Assembly_O004_L1_Assembly)
<= 360.0

c_u_C_SEQ1_NoOverlap(O004_L1_Assembly_O006_L1_Assembly_M02)_:
+120.0 Assign(O004_L1_Assembly_M02)
+120.0 Assign(O006_L1_Assembly_M02)
+1 Finish(O004_L1_Assembly)
-1 Start(O006_L1_Assembly)
+120.0 Seq(O004_L1_Assembly_O006_L1_Assembly)
<= 360.0

c_u_C_SEQ1_NoOverlap(O006_L1_Assembly_O004_L1_Assembly_M02)_:
+120.0 Assign(O004_L1_Assembly_M02)
+120.0 Assign(O006_L1_Assembly_M02)
+1 Finish(O006_L1_Assembly)
-1 Start(O004_L1_Assembly)
+120.0 Seq(O006_L1_Assembly_O004_L1_Assembly)
<= 360.0

c_u_C_SEQ1_NoOverlap(O004_L2_Assembly_O005_L1_Assembly_M02)_:
+120.0 Assign(O004_L2_Assembly_M02)
+120.0 Assign(O005_L1_Assembly_M02)
+1 Finish(O004_L2_Assembly)
-1 Start(O005_L1_Assembly)
+120.0 Seq(O004_L2_Assembly_O005_L1_Assembly)
<= 360.0

c_u_C_SEQ1_NoOverlap(O005_L1_Assembly_O004_L2_Assembly_M02)_:
+120.0 Assign(O004_L2_Assembly_M02)
+120.0 Assign(O005_L1_Assembly_M02)
+1 Finish(O005_L1_Assembly)
-1 Start(O004_L2_Assembly)
+120.0 Seq(O005_L1_Assembly_O004_L2_Assembly)
<= 360.0

c_u_C_SEQ1_NoOverlap(O004_L2_Assembly_O006_L1_Assembly_M02)_:
+120.0 Assign(O004_L2_Assembly_M02)
+120.0 Assign(O006_L1_Assembly_M02)
+1 Finish(O004_L2_Assembly)
-1 Start(O006_L1_Assembly)
+120.0 Seq(O004_L2_Assembly_O006_L1_Assembly)
<= 360.0

c_u_C_SEQ1_NoOverlap(O006_L1_Assembly_O004_L2_Assembly_M02)_:
+120.0 Assign(O004_L2_Assembly_M02)
+120.0 Assign(O006_L1_Assembly_M02)
+1 Finish(O006_L1_Assembly)
-1 Start(O004_L2_Assembly)
+120.0 Seq(O006_L1_Assembly_O004_L2_Assembly)
<= 360.0

c_u_C_SEQ1_NoOverlap(O005_L1_Assembly_O006_L1_Assembly_M02)_:
+120.0 Assign(O005_L1_Assembly_M02)
+120.0 Assign(O006_L1_Assembly_M02)
+1 Finish(O005_L1_Assembly)
-1 Start(O006_L1_Assembly)
+120.0 Seq(O005_L1_Assembly_O006_L1_Assembly)
<= 360.0

c_u_C_SEQ1_NoOverlap(O006_L1_Assembly_O005_L1_Assembly_M02)_:
+120.0 Assign(O005_L1_Assembly_M02)
+120.0 Assign(O006_L1_Assembly_M02)
+1 Finish(O006_L1_Assembly)
-1 Start(O005_L1_Assembly)
+120.0 Seq(O006_L1_Assembly_O005_L1_Assembly)
<= 360.0

c_u_C_MAKESPAN1(O001_L1_Cutting)_:
+1 Finish(O001_L1_Cutting)
-1 Makespan
<= 0

c_u_C_MAKESPAN1(O001_L1_Assembly)_:
+1 Finish(O001_L1_Assembly)
-1 Makespan
<= 0

c_u_C_MAKESPAN1(O002_L1_Cutting)_:
+1 Finish(O002_L1_Cutting)
-1 Makespan
<= 0

c_u_C_MAKESPAN1(O002_L1_Assembly)_:
+1 Finish(O002_L1_Assembly)
-1 Makespan
<= 0

c_u_C_MAKESPAN1(O003_L1_Cutting)_:
+1 Finish(O003_L1_Cutting)
-1 Makespan
<= 0

c_u_C_MAKESPAN1(O003_L1_Assembly)_:
+1 Finish(O003_L1_Assembly)
-1 Makespan
<= 0

c_u_C_MAKESPAN1(O004_L1_Cutting)_:
+1 Finish(O004_L1_Cutting)
-1 Makespan
<= 0

c_u_C_MAKESPAN1(O004_L1_Assembly)_:
+1 Finish(O004_L1_Assembly)
-1 Makespan
<= 0

c_u_C_MAKESPAN1(O004_L2_Cutting)_:
+1 Finish(O004_L2_Cutting)
-1 Makespan
<= 0

c_u_C_MAKESPAN1(O004_L2_Assembly)_:
+1 Finish(O004_L2_Assembly)
-1 Makespan
<= 0

c_u_C_MAKESPAN1(O005_L1_Cutting)_:
+1 Finish(O005_L1_Cutting)
-1 Makespan
<= 0

c_u_C_MAKESPAN1(O005_L1_Assembly)_:
+1 Finish(O005_L1_Assembly)
-1 Makespan
<= 0

c_u_C_MAKESPAN1(O006_L1_Cutting)_:
+1 Finish(O006_L1_Cutting)
-1 Makespan
<= 0

c_u_C_MAKESPAN1(O006_L1_Assembly)_:
+1 Finish(O006_L1_Assembly)
-1 Makespan
<= 0

c_u_C_SEQ3_SetupLower(O002_L1_Cutting_O003_L1_Cutting_M01)_:
+1 Assign(O002_L1_Cutting_M01)
+1 Assign(O003_L1_Cutting_M01)
-1 SetupOccurs(O002_L1_Cutting_O003_L1_Cutting)
+1 Seq(O002_L1_Cutting_O003_L1_Cutting)
<= 2

c_u_C_SEQ3_SetupLower(O003_L1_Cutting_O002_L1_Cutting_M01)_:
+1 Assign(O002_L1_Cutting_M01)
+1 Assign(O003_L1_Cutting_M01)
-1 SetupOccurs(O003_L1_Cutting_O002_L1_Cutting)
+1 Seq(O003_L1_Cutting_O002_L1_Cutting)
<= 2

c_u_C_SEQ3_SetupLower(O003_L1_Cutting_O004_L1_Cutting_M01)_:
+1 Assign(O003_L1_Cutting_M01)
+1 Assign(O004_L1_Cutting_M01)
-1 SetupOccurs(O003_L1_Cutting_O004_L1_Cutting)
+1 Seq(O003_L1_Cutting_O004_L1_Cutting)
<= 2

c_u_C_SEQ3_SetupLower(O004_L1_Cutting_O003_L1_Cutting_M01)_:
+1 Assign(O003_L1_Cutting_M01)
+1 Assign(O004_L1_Cutting_M01)
-1 SetupOccurs(O004_L1_Cutting_O003_L1_Cutting)
+1 Seq(O004_L1_Cutting_O003_L1_Cutting)
<= 2

c_u_C_SEQ3_SetupLower(O003_L1_Cutting_O004_L2_Cutting_M01)_:
+1 Assign(O003_L1_Cutting_M01)
+1 Assign(O004_L2_Cutting_M01)
-1 SetupOccurs(O003_L1_Cutting_O004_L2_Cutting)
+1 Seq(O003_L1_Cutting_O004_L2_Cutting)
<= 2

c_u_C_SEQ3_SetupLower(O004_L2_Cutting_O003_L1_Cutting_M01)_:
+1 Assign(O003_L1_Cutting_M01)
+1 Assign(O004_L2_Cutting_M01)
-1 SetupOccurs(O004_L2_Cutting_O003_L1_Cutting)
+1 Seq(O004_L2_Cutting_O003_L1_Cutting)
<= 2

c_u_C_SEQ3_SetupLower(O003_L1_Cutting_O005_L1_Cutting_M01)_:
+1 Assign(O003_L1_Cutting_M01)
+1 Assign(O005_L1_Cutting_M01)
-1 SetupOccurs(O003_L1_Cutting_O005_L1_Cutting)
+1 Seq(O003_L1_Cutting_O005_L1_Cutting)
<= 2

c_u_C_SEQ3_SetupLower(O005_L1_Cutting_O003_L1_Cutting_M01)_:
+1 Assign(O003_L1_Cutting_M01)
+1 Assign(O005_L1_Cutting_M01)
-1 SetupOccurs(O005_L1_Cutting_O003_L1_Cutting)
+1 Seq(O005_L1_Cutting_O003_L1_Cutting)
<= 2

c_u_C_SEQ3_SetupLower(O003_L1_Cutting_O006_L1_Cutting_M01)_:
+1 Assign(O003_L1_Cutting_M01)
+1 Assign(O006_L1_Cutting_M01)
-1 SetupOccurs(O003_L1_Cutting_O006_L1_Cutting)
+1 Seq(O003_L1_Cutting_O006_L1_Cutting)
<= 2

c_u_C_SEQ3_SetupLower(O006_L1_Cutting_O003_L1_Cutting_M01)_:
+1 Assign(O003_L1_Cutting_M01)
+1 Assign(O006_L1_Cutting_M01)
-1 SetupOccurs(O006_L1_Cutting_O003_L1_Cutting)
+1 Seq(O006_L1_Cutting_O003_L1_Cutting)
<= 2

c_u_C_SEQ3_SetupLower(O001_L1_Assembly_O002_L1_Assembly_M02)_:
+1 Assign(O001_L1_Assembly_M02)
+1 Assign(O002_L1_Assembly_M02)
-1 SetupOccurs(O001_L1_Assembly_O002_L1_Assembly)
+1 Seq(O001_L1_Assembly_O002_L1_Assembly)
<= 2

c_u_C_SEQ3_SetupLower(O002_L1_Assembly_O001_L1_Assembly_M02)_:
+1 Assign(O001_L1_Assembly_M02)
+1 Assign(O002_L1_Assembly_M02)
-1 SetupOccurs(O002_L1_Assembly_O001_L1_Assembly)
+1 Seq(O002_L1_Assembly_O001_L1_Assembly)
<= 2

c_u_C_SEQ3_SetupLower(O001_L1_Assembly_O003_L1_Assembly_M02)_:
+1 Assign(O001_L1_Assembly_M02)
+1 Assign(O003_L1_Assembly_M02)
-1 SetupOccurs(O001_L1_Assembly_O003_L1_Assembly)
+1 Seq(O001_L1_Assembly_O003_L1_Assembly)
<= 2

c_u_C_SEQ3_SetupLower(O003_L1_Assembly_O001_L1_Assembly_M02)_:
+1 Assign(O001_L1_Assembly_M02)
+1 Assign(O003_L1_Assembly_M02)
-1 SetupOccurs(O003_L1_Assembly_O001_L1_Assembly)
+1 Seq(O003_L1_Assembly_O001_L1_Assembly)
<= 2

c_u_C_SEQ3_SetupLower(O001_L1_Assembly_O004_L1_Assembly_M02)_:
+1 Assign(O001_L1_Assembly_M02)
+1 Assign(O004_L1_Assembly_M02)
-1 SetupOccurs(O001_L1_Assembly_O004_L1_Assembly)
+1 Seq(O001_L1_Assembly_O004_L1_Assembly)
<= 2

c_u_C_SEQ3_SetupLower(O004_L1_Assembly_O001_L1_Assembly_M02)_:
+1 Assign(O001_L1_Assembly_M02)
+1 Assign(O004_L1_Assembly_M02)
-1 SetupOccurs(O004_L1_Assembly_O001_L1_Assembly)
+1 Seq(O004_L1_Assembly_O001_L1_Assembly)
<= 2

c_u_C_SEQ3_SetupLower(O001_L1_Assembly_O004_L2_Assembly_M02)_:
+1 Assign(O001_L1_Assembly_M02)
+1 Assign(O004_L2_Assembly_M02)
-1 SetupOccurs(O001_L1_Assembly_O004_L2_Assembly)
+1 Seq(O001_L1_Assembly_O004_L2_Assembly)
<= 2

c_u_C_SEQ3_SetupLower(O004_L2_Assembly_O001_L1_Assembly_M02)_:
+1 Assign(O001_L1_Assembly_M02)
+1 Assign(O004_L2_Assembly_M02)
-1 SetupOccurs(O004_L2_Assembly_O001_L1_Assembly)
+1 Seq(O004_L2_Assembly_O001_L1_Assembly)
<= 2

c_u_C_SEQ3_SetupLower(O001_L1_Assembly_O005_L1_Assembly_M02)_:
+1 Assign(O001_L1_Assembly_M02)
+1 Assign(O005_L1_Assembly_M02)
-1 SetupOccurs(O001_L1_Assembly_O005_L1_Assembly)
+1 Seq(O001_L1_Assembly_O005_L1_Assembly)
<= 2

c_u_C_SEQ3_SetupLower(O005_L1_Assembly_O001_L1_Assembly_M02)_:
+1 Assign(O001_L1_Assembly_M02)
+1 Assign(O005_L1_Assembly_M02)
-1 SetupOccurs(O005_L1_Assembly_O001_L1_Assembly)
+1 Seq(O005_L1_Assembly_O001_L1_Assembly)
<= 2

c_u_C_SEQ3_SetupLower(O001_L1_Assembly_O006_L1_Assembly_M02)_:
+1 Assign(O001_L1_Assembly_M02)
+1 Assign(O006_L1_Assembly_M02)
-1 SetupOccurs(O001_L1_Assembly_O006_L1_Assembly)
+1 Seq(O001_L1_Assembly_O006_L1_Assembly)
<= 2

c_u_C_SEQ3_SetupLower(O006_L1_Assembly_O001_L1_Assembly_M02)_:
+1 Assign(O001_L1_Assembly_M02)
+1 Assign(O006_L1_Assembly_M02)
-1 SetupOccurs(O006_L1_Assembly_O001_L1_Assembly)
+1 Seq(O006_L1_Assembly_O001_L1_Assembly)
<= 2

c_u_C_SEQ3_SetupLower(O002_L1_Assembly_O003_L1_Assembly_M02)_:
+1 Assign(O002_L1_Assembly_M02)
+1 Assign(O003_L1_Assembly_M02)
-1 SetupOccurs(O002_L1_Assembly_O003_L1_Assembly)
+1 Seq(O002_L1_Assembly_O003_L1_Assembly)
<= 2

c_u_C_SEQ3_SetupLower(O003_L1_Assembly_O002_L1_Assembly_M02)_:
+1 Assign(O002_L1_Assembly_M02)
+1 Assign(O003_L1_Assembly_M02)
-1 SetupOccurs(O003_L1_Assembly_O002_L1_Assembly)
+1 Seq(O003_L1_Assembly_O002_L1_Assembly)
<= 2

c_u_C_SEQ3_SetupLower(O003_L1_Assembly_O004_L1_Assembly_M02)_:
+1 Assign(O003_L1_Assembly_M02)
+1 Assign(O004_L1_Assembly_M02)
-1 SetupOccurs(O003_L1_Assembly_O004_L1_Assembly)
+1 Seq(O003_L1_Assembly_O004_L1_Assembly)
<= 2

c_u_C_SEQ3_SetupLower(O004_L1_Assembly_O003_L1_Assembly_M02)_:
+1 Assign(O003_L1_Assembly_M02)
+1 Assign(O004_L1_Assembly_M02)
-1 SetupOccurs(O004_L1_Assembly_O003_L1_Assembly)
+1 Seq(O004_L1_Assembly_O003_L1_Assembly)
<= 2

c_u_C_SEQ3_SetupLower(O003_L1_Assembly_O004_L2_Assembly_M02)_:
+1 Assign(O003_L1_Assembly_M02)
+1 Assign(O004_L2_Assembly_M02)
-1 SetupOccurs(O003_L1_Assembly_O004_L2_Assembly)
+1 Seq(O003_L1_Assembly_O004_L2_Assembly)
<= 2

c_u_C_SEQ3_SetupLower(O004_L2_Assembly_O003_L1_Assembly_M02)_:
+1 Assign(O003_L1_Assembly_M02)
+1 Assign(O004_L2_Assembly_M02)
-1 SetupOccurs(O004_L2_Assembly_O003_L1_Assembly)
+1 Seq(O004_L2_Assembly_O003_L1_Assembly)
<= 2

c_u_C_SEQ3_SetupLower(O003_L1_Assembly_O005_L1_Assembly_M02)_:
+1 Assign(O003_L1_Assembly_M02)
+1 Assign(O005_L1_Assembly_M02)
-1 SetupOccurs(O003_L1_Assembly_O005_L1_Assembly)
+1 Seq(O003_L1_Assembly_O005_L1_Assembly)
<= 2

c_u_C_SEQ3_SetupLower(O005_L1_Assembly_O003_L1_Assembly_M02)_:
+1 Assign(O003_L1_Assembly_M02)
+1 Assign(O005_L1_Assembly_M02)
-1 SetupOccurs(O005_L1_Assembly_O003_L1_Assembly)
+1 Seq(O005_L1_Assembly_O003_L1_Assembly)
<= 2

c_u_C_SEQ3_SetupLower(O003_L1_Assembly_O006_L1_Assembly_M02)_:
+1 Assign(O003_L1_Assembly_M02)
+1 Assign(O006_L1_Assembly_M02)
-1 SetupOccurs(O003_L1_Assembly_O006_L1_Assembly)
+1 Seq(O003_L1_Assembly_O006_L1_Assembly)
<= 2

c_u_C_SEQ3_SetupLower(O006_L1_Assembly_O003_L1_Assembly_M02)_:
+1 Assign(O003_L1_Assembly_M02)
+1 Assign(O006_L1_Assembly_M02)
-1 SetupOccurs(O006_L1_Assembly_O003_L1_Assembly)
+1 Seq(O006_L1_Assembly_O003_L1_Assembly)
<= 2

c_u_C_SEQ3_SetupUpper(O002_L1_Cutting_O003_L1_Cutting)_:
+1 SetupOccurs(O002_L1_Cutting_O003_L1_Cutting)
-1 Seq(O002_L1_Cutting_O003_L1_Cutting)
<= 0

c_u_C_SEQ3_SetupUpper(O003_L1_Cutting_O002_L1_Cutting)_:
+1 SetupOccurs(O003_L1_Cutting_O002_L1_Cutting)
-1 Seq(O003_L1_Cutting_O002_L1_Cutting)
<= 0

c_u_C_SEQ3_SetupUpper(O003_L1_Cutting_O004_L1_Cutting)_:
+1 SetupOccurs(O003_L1_Cutting_O004_L1_Cutting)
-1 Seq(O003_L1_Cutting_O004_L1_Cutting)
<= 0

c_u_C_SEQ3_SetupUpper(O004_L1_Cutting_O003_L1_Cutting)_:
+1 SetupOccurs(O004_L1_Cutting_O003_L1_Cutting)
-1 Seq(O004_L1_Cutting_O003_L1_Cutting)
<= 0

c_u_C_SEQ3_SetupUpper(O003_L1_Cutting_O004_L2_Cutting)_:
+1 SetupOccurs(O003_L1_Cutting_O004_L2_Cutting)
-1 Seq(O003_L1_Cutting_O004_L2_Cutting)
<= 0

c_u_C_SEQ3_SetupUpper(O004_L2_Cutting_O003_L1_Cutting)_:
+1 SetupOccurs(O004_L2_Cutting_O003_L1_Cutting)
-1 Seq(O004_L2_Cutting_O003_L1_Cutting)
<= 0

c_u_C_SEQ3_SetupUpper(O003_L1_Cutting_O005_L1_Cutting)_:
+1 SetupOccurs(O003_L1_Cutting_O005_L1_Cutting)
-1 Seq(O003_L1_Cutting_O005_L1_Cutting)
<= 0

c_u_C_SEQ3_SetupUpper(O005_L1_Cutting_O003_L1_Cutting)_:
+1 SetupOccurs(O005_L1_Cutting_O003_L1_Cutting)
-1 Seq(O005_L1_Cutting_O003_L1_Cutting)
<= 0

c_u_C_SEQ3_SetupUpper(O003_L1_Cutting_O006_L1_Cutting)_:
+1 SetupOccurs(O003_L1_Cutting_O006_L1_Cutting)
-1 Seq(O003_L1_Cutting_O006_L1_Cutting)
<= 0

c_u_C_SEQ3_SetupUpper(O006_L1_Cutting_O003_L1_Cutting)_:
+1 SetupOccurs(O006_L1_Cutting_O003_L1_Cutting)
-1 Seq(O006_L1_Cutting_O003_L1_Cutting)
<= 0

c_u_C_SEQ3_SetupUpper(O001_L1_Assembly_O002_L1_Assembly)_:
+1 SetupOccurs(O001_L1_Assembly_O002_L1_Assembly)
-1 Seq(O001_L1_Assembly_O002_L1_Assembly)
<= 0

c_u_C_SEQ3_SetupUpper(O002_L1_Assembly_O001_L1_Assembly)_:
+1 SetupOccurs(O002_L1_Assembly_O001_L1_Assembly)
-1 Seq(O002_L1_Assembly_O001_L1_Assembly)
<= 0

c_u_C_SEQ3_SetupUpper(O001_L1_Assembly_O003_L1_Assembly)_:
+1 SetupOccurs(O001_L1_Assembly_O003_L1_Assembly)
-1 Seq(O001_L1_Assembly_O003_L1_Assembly)
<= 0

c_u_C_SEQ3_SetupUpper(O003_L1_Assembly_O001_L1_Assembly)_:
+1 SetupOccurs(O003_L1_Assembly_O001_L1_Assembly)
-1 Seq(O003_L1_Assembly_O001_L1_Assembly)
<= 0

c_u_C_SEQ3_SetupUpper(O001_L1_Assembly_O004_L1_Assembly)_:
+1 SetupOccurs(O001_L1_Assembly_O004_L1_Assembly)
-1 Seq(O001_L1_Assembly_O004_L1_Assembly)
<= 0

c_u_C_SEQ3_SetupUpper(O004_L1_Assembly_O001_L1_Assembly)_:
+1 SetupOccurs(O004_L1_Assembly_O001_L1_Assembly)
-1 Seq(O004_L1_Assembly_O001_L1_Assembly)
<= 0

c_u_C_SEQ3_SetupUpper(O001_L1_Assembly_O004_L2_Assembly)_:
+1 SetupOccurs(O001_L1_Assembly_O004_L2_Assembly)
-1 Seq(O001_L1_Assembly_O004_L2_Assembly)
<= 0

c_u_C_SEQ3_SetupUpper(O004_L2_Assembly_O001_L1_Assembly)_:
+1 SetupOccurs(O004_L2_Assembly_O001_L1_Assembly)
-1 Seq(O004_L2_Assembly_O001_L1_Assembly)
<= 0

c_u_C_SEQ3_SetupUpper(O001_L1_Assembly_O005_L1_Assembly)_:
+1 SetupOccurs(O001_L1_Assembly_O005_L1_Assembly)
-1 Seq(O001_L1_Assembly_O005_L1_Assembly)
<= 0

c_u_C_SEQ3_SetupUpper(O005_L1_Assembly_O001_L1_Assembly)_:
+1 SetupOccurs(O005_L1_Assembly_O001_L1_Assembly)
-1 Seq(O005_L1_Assembly_O001_L1_Assembly)
<= 0

c_u_C_SEQ3_SetupUpper(O001_L1_Assembly_O006_L1_Assembly)_:
+1 SetupOccurs(O001_L1_Assembly_O006_L1_Assembly)
-1 Seq(O001_L1_Assembly_O006_L1_Assembly)
<= 0

c_u_C_SEQ3_SetupUpper(O006_L1_Assembly_O001_L1_Assembly)_:
+1 SetupOccurs(O006_L1_Assembly_O001_L1_Assembly)
-1 Seq(O006_L1_Assembly_O001_L1_Assembly)
<= 0

c_u_C_SEQ3_SetupUpper(O002_L1_Assembly_O003_L1_Assembly)_:
+1 SetupOccurs(O002_L1_Assembly_O003_L1_Assembly)
-1 Seq(O002_L1_Assembly_O003_L1_Assembly)
<= 0

c_u_C_SEQ3_SetupUpper(O003_L1_Assembly_O002_L1_Assembly)_:
+1 SetupOccurs(O003_L1_Assembly_O002_L1_Assembly)
-1 Seq(O003_L1_Assembly_O002_L1_Assembly)
<= 0

c_u_C_SEQ3_SetupUpper(O003_L1_Assembly_O004_L1_Assembly)_:
+1 SetupOccurs(O003_L1_Assembly_O004_L1_Assembly)
-1 Seq(O003_L1_Assembly_O004_L1_Assembly)
<= 0

c_u_C_SEQ3_SetupUpper(O004_L1_Assembly_O003_L1_Assembly)_:
+1 SetupOccurs(O004_L1_Assembly_O003_L1_Assembly)
-1 Seq(O004_L1_Assembly_O003_L1_Assembly)
<= 0

c_u_C_SEQ3_SetupUpper(O003_L1_Assembly_O004_L2_Assembly)_:
+1 SetupOccurs(O003_L1_Assembly_O004_L2_Assembly)
-1 Seq(O003_L1_Assembly_O004_L2_Assembly)
<= 0

c_u_C_SEQ3_SetupUpper(O004_L2_Assembly_O003_L1_Assembly)_:
+1 SetupOccurs(O004_L2_Assembly_O003_L1_Assembly)
-1 Seq(O004_L2_Assembly_O003_L1_Assembly)
<= 0

c_u_C_SEQ3_SetupUpper(O003_L1_Assembly_O005_L1_Assembly)_:
+1 SetupOccurs(O003_L1_Assembly_O005_L1_Assembly)
-1 Seq(O003_L1_Assembly_O005_L1_Assembly)
<= 0

c_u_C_SEQ3_SetupUpper(O005_L1_Assembly_O003_L1_Assembly)_:
+1 SetupOccurs(O005_L1_Assembly_O003_L1_Assembly)
-1 Seq(O005_L1_Assembly_O003_L1_Assembly)
<= 0

c_u_C_SEQ3_SetupUpper(O003_L1_Assembly_O006_L1_Assembly)_:
+1 SetupOccurs(O003_L1_Assembly_O006_L1_Assembly)
-1 Seq(O003_L1_Assembly_O006_L1_Assembly)
<= 0

c_u_C_SEQ3_SetupUpper(O006_L1_Assembly_O003_L1_Assembly)_:
+1 SetupOccurs(O006_L1_Assembly_O003_L1_Assembly)
-1 Seq(O006_L1_Assembly_O003_L1_Assembly)
<= 0

c_e_C_TIME2_OneShiftPerBatch(O001_L1_Cutting)_:
+1 ShiftAssign(O001_L1_Cutting_D1_Morning)
+1 ShiftAssign(O001_L1_Cutting_D1_Afternoon)
+1 ShiftAssign(O001_L1_Cutting_D1_Night)
+1 ShiftAssign(O001_L1_Cutting_D2_Morning)
+1 ShiftAssign(O001_L1_Cutting_D2_Afternoon)
+1 ShiftAssign(O001_L1_Cutting_D2_Night)
+1 ShiftAssign(O001_L1_Cutting_D3_Morning)
+1 ShiftAssign(O001_L1_Cutting_D3_Afternoon)
+1 ShiftAssign(O001_L1_Cutting_D3_Night)
+1 ShiftAssign(O001_L1_Cutting_D4_Morning)
+1 ShiftAssign(O001_L1_Cutting_D4_Afternoon)
+1 ShiftAssign(O001_L1_Cutting_D4_Night)
+1 ShiftAssign(O001_L1_Cutting_D5_Morning)
+1 ShiftAssign(O001_L1_Cutting_D5_Afternoon)
+1 ShiftAssign(O001_L1_Cutting_D5_Night)
= 1

c_e_C_TIME2_OneShiftPerBatch(O001_L1_Assembly)_:
+1 ShiftAssign(O001_L1_Assembly_D1_Morning)
+1 ShiftAssign(O001_L1_Assembly_D1_Afternoon)
+1 ShiftAssign(O001_L1_Assembly_D1_Night)
+1 ShiftAssign(O001_L1_Assembly_D2_Morning)
+1 ShiftAssign(O001_L1_Assembly_D2_Afternoon)
+1 ShiftAssign(O001_L1_Assembly_D2_Night)
+1 ShiftAssign(O001_L1_Assembly_D3_Morning)
+1 ShiftAssign(O001_L1_Assembly_D3_Afternoon)
+1 ShiftAssign(O001_L1_Assembly_D3_Night)
+1 ShiftAssign(O001_L1_Assembly_D4_Morning)
+1 ShiftAssign(O001_L1_Assembly_D4_Afternoon)
+1 ShiftAssign(O001_L1_Assembly_D4_Night)
+1 ShiftAssign(O001_L1_Assembly_D5_Morning)
+1 ShiftAssign(O001_L1_Assembly_D5_Afternoon)
+1 ShiftAssign(O001_L1_Assembly_D5_Night)
= 1

c_e_C_TIME2_OneShiftPerBatch(O002_L1_Cutting)_:
+1 ShiftAssign(O002_L1_Cutting_D1_Morning)
+1 ShiftAssign(O002_L1_Cutting_D1_Afternoon)
+1 ShiftAssign(O002_L1_Cutting_D1_Night)
+1 ShiftAssign(O002_L1_Cutting_D2_Morning)
+1 ShiftAssign(O002_L1_Cutting_D2_Afternoon)
+1 ShiftAssign(O002_L1_Cutting_D2_Night)
+1 ShiftAssign(O002_L1_Cutting_D3_Morning)
+1 ShiftAssign(O002_L1_Cutting_D3_Afternoon)
+1 ShiftAssign(O002_L1_Cutting_D3_Night)
+1 ShiftAssign(O002_L1_Cutting_D4_Morning)
+1 ShiftAssign(O002_L1_Cutting_D4_Afternoon)
+1 ShiftAssign(O002_L1_Cutting_D4_Night)
+1 ShiftAssign(O002_L1_Cutting_D5_Morning)
+1 ShiftAssign(O002_L1_Cutting_D5_Afternoon)
+1 ShiftAssign(O002_L1_Cutting_D5_Night)
= 1

c_e_C_TIME2_OneShiftPerBatch(O002_L1_Assembly)_:
+1 ShiftAssign(O002_L1_Assembly_D1_Morning)
+1 ShiftAssign(O002_L1_Assembly_D1_Afternoon)
+1 ShiftAssign(O002_L1_Assembly_D1_Night)
+1 ShiftAssign(O002_L1_Assembly_D2_Morning)
+1 ShiftAssign(O002_L1_Assembly_D2_Afternoon)
+1 ShiftAssign(O002_L1_Assembly_D2_Night)
+1 ShiftAssign(O002_L1_Assembly_D3_Morning)
+1 ShiftAssign(O002_L1_Assembly_D3_Afternoon)
+1 ShiftAssign(O002_L1_Assembly_D3_Night)
+1 ShiftAssign(O002_L1_Assembly_D4_Morning)
+1 ShiftAssign(O002_L1_Assembly_D4_Afternoon)
+1 ShiftAssign(O002_L1_Assembly_D4_Night)
+1 ShiftAssign(O002_L1_Assembly_D5_Morning)
+1 ShiftAssign(O002_L1_Assembly_D5_Afternoon)
+1 ShiftAssign(O002_L1_Assembly_D5_Night)
= 1

c_e_C_TIME2_OneShiftPerBatch(O003_L1_Cutting)_:
+1 ShiftAssign(O003_L1_Cutting_D1_Morning)
+1 ShiftAssign(O003_L1_Cutting_D1_Afternoon)
+1 ShiftAssign(O003_L1_Cutting_D1_Night)
+1 ShiftAssign(O003_L1_Cutting_D2_Morning)
+1 ShiftAssign(O003_L1_Cutting_D2_Afternoon)
+1 ShiftAssign(O003_L1_Cutting_D2_Night)
+1 ShiftAssign(O003_L1_Cutting_D3_Morning)
+1 ShiftAssign(O003_L1_Cutting_D3_Afternoon)
+1 ShiftAssign(O003_L1_Cutting_D3_Night)
+1 ShiftAssign(O003_L1_Cutting_D4_Morning)
+1 ShiftAssign(O003_L1_Cutting_D4_Afternoon)
+1 ShiftAssign(O003_L1_Cutting_D4_Night)
+1 ShiftAssign(O003_L1_Cutting_D5_Morning)
+1 ShiftAssign(O003_L1_Cutting_D5_Afternoon)
+1 ShiftAssign(O003_L1_Cutting_D5_Night)
= 1

c_e_C_TIME2_OneShiftPerBatch(O003_L1_Assembly)_:
+1 ShiftAssign(O003_L1_Assembly_D1_Morning)
+1 ShiftAssign(O003_L1_Assembly_D1_Afternoon)
+1 ShiftAssign(O003_L1_Assembly_D1_Night)
+1 ShiftAssign(O003_L1_Assembly_D2_Morning)
+1 ShiftAssign(O003_L1_Assembly_D2_Afternoon)
+1 ShiftAssign(O003_L1_Assembly_D2_Night)
+1 ShiftAssign(O003_L1_Assembly_D3_Morning)
+1 ShiftAssign(O003_L1_Assembly_D3_Afternoon)
+1 ShiftAssign(O003_L1_Assembly_D3_Night)
+1 ShiftAssign(O003_L1_Assembly_D4_Morning)
+1 ShiftAssign(O003_L1_Assembly_D4_Afternoon)
+1 ShiftAssign(O003_L1_Assembly_D4_Night)
+1 ShiftAssign(O003_L1_Assembly_D5_Morning)
+1 ShiftAssign(O003_L1_Assembly_D5_Afternoon)
+1 ShiftAssign(O003_L1_Assembly_D5_Night)
= 1

c_e_C_TIME2_OneShiftPerBatch(O004_L1_Cutting)_:
+1 ShiftAssign(O004_L1_Cutting_D1_Morning)
+1 ShiftAssign(O004_L1_Cutting_D1_Afternoon)
+1 ShiftAssign(O004_L1_Cutting_D1_Night)
+1 ShiftAssign(O004_L1_Cutting_D2_Morning)
+1 ShiftAssign(O004_L1_Cutting_D2_Afternoon)
+1 ShiftAssign(O004_L1_Cutting_D2_Night)
+1 ShiftAssign(O004_L1_Cutting_D3_Morning)
+1 ShiftAssign(O004_L1_Cutting_D3_Afternoon)
+1 ShiftAssign(O004_L1_Cutting_D3_Night)
+1 ShiftAssign(O004_L1_Cutting_D4_Morning)
+1 ShiftAssign(O004_L1_Cutting_D4_Afternoon)
+1 ShiftAssign(O004_L1_Cutting_D4_Night)
+1 ShiftAssign(O004_L1_Cutting_D5_Morning)
+1 ShiftAssign(O004_L1_Cutting_D5_Afternoon)
+1 ShiftAssign(O004_L1_Cutting_D5_Night)
= 1

c_e_C_TIME2_OneShiftPerBatch(O004_L1_Assembly)_:
+1 ShiftAssign(O004_L1_Assembly_D1_Morning)
+1 ShiftAssign(O004_L1_Assembly_D1_Afternoon)
+1 ShiftAssign(O004_L1_Assembly_D1_Night)
+1 ShiftAssign(O004_L1_Assembly_D2_Morning)
+1 ShiftAssign(O004_L1_Assembly_D2_Afternoon)
+1 ShiftAssign(O004_L1_Assembly_D2_Night)
+1 ShiftAssign(O004_L1_Assembly_D3_Morning)
+1 ShiftAssign(O004_L1_Assembly_D3_Afternoon)
+1 ShiftAssign(O004_L1_Assembly_D3_Night)
+1 ShiftAssign(O004_L1_Assembly_D4_Morning)
+1 ShiftAssign(O004_L1_Assembly_D4_Afternoon)
+1 ShiftAssign(O004_L1_Assembly_D4_Night)
+1 ShiftAssign(O004_L1_Assembly_D5_Morning)
+1 ShiftAssign(O004_L1_Assembly_D5_Afternoon)
+1 ShiftAssign(O004_L1_Assembly_D5_Night)
= 1

c_e_C_TIME2_OneShiftPerBatch(O004_L2_Cutting)_:
+1 ShiftAssign(O004_L2_Cutting_D1_Morning)
+1 ShiftAssign(O004_L2_Cutting_D1_Afternoon)
+1 ShiftAssign(O004_L2_Cutting_D1_Night)
+1 ShiftAssign(O004_L2_Cutting_D2_Morning)
+1 ShiftAssign(O004_L2_Cutting_D2_Afternoon)
+1 ShiftAssign(O004_L2_Cutting_D2_Night)
+1 ShiftAssign(O004_L2_Cutting_D3_Morning)
+1 ShiftAssign(O004_L2_Cutting_D3_Afternoon)
+1 ShiftAssign(O004_L2_Cutting_D3_Night)
+1 ShiftAssign(O004_L2_Cutting_D4_Morning)
+1 ShiftAssign(O004_L2_Cutting_D4_Afternoon)
+1 ShiftAssign(O004_L2_Cutting_D4_Night)
+1 ShiftAssign(O004_L2_Cutting_D5_Morning)
+1 ShiftAssign(O004_L2_Cutting_D5_Afternoon)
+1 ShiftAssign(O004_L2_Cutting_D5_Night)
= 1

c_e_C_TIME2_OneShiftPerBatch(O004_L2_Assembly)_:
+1 ShiftAssign(O004_L2_Assembly_D1_Morning)
+1 ShiftAssign(O004_L2_Assembly_D1_Afternoon)
+1 ShiftAssign(O004_L2_Assembly_D1_Night)
+1 ShiftAssign(O004_L2_Assembly_D2_Morning)
+1 ShiftAssign(O004_L2_Assembly_D2_Afternoon)
+1 ShiftAssign(O004_L2_Assembly_D2_Night)
+1 ShiftAssign(O004_L2_Assembly_D3_Morning)
+1 ShiftAssign(O004_L2_Assembly_D3_Afternoon)
+1 ShiftAssign(O004_L2_Assembly_D3_Night)
+1 ShiftAssign(O004_L2_Assembly_D4_Morning)
+1 ShiftAssign(O004_L2_Assembly_D4_Afternoon)
+1 ShiftAssign(O004_L2_Assembly_D4_Night)
+1 ShiftAssign(O004_L2_Assembly_D5_Morning)
+1 ShiftAssign(O004_L2_Assembly_D5_Afternoon)
+1 ShiftAssign(O004_L2_Assembly_D5_Night)
= 1

c_e_C_TIME2_OneShiftPerBatch(O005_L1_Cutting)_:
+1 ShiftAssign(O005_L1_Cutting_D1_Morning)
+1 ShiftAssign(O005_L1_Cutting_D1_Afternoon)
+1 ShiftAssign(O005_L1_Cutting_D1_Night)
+1 ShiftAssign(O005_L1_Cutting_D2_Morning)
+1 ShiftAssign(O005_L1_Cutting_D2_Afternoon)
+1 ShiftAssign(O005_L1_Cutting_D2_Night)
+1 ShiftAssign(O005_L1_Cutting_D3_Morning)
+1 ShiftAssign(O005_L1_Cutting_D3_Afternoon)
+1 ShiftAssign(O005_L1_Cutting_D3_Night)
+1 ShiftAssign(O005_L1_Cutting_D4_Morning)
+1 ShiftAssign(O005_L1_Cutting_D4_Afternoon)
+1 ShiftAssign(O005_L1_Cutting_D4_Night)
+1 ShiftAssign(O005_L1_Cutting_D5_Morning)
+1 ShiftAssign(O005_L1_Cutting_D5_Afternoon)
+1 ShiftAssign(O005_L1_Cutting_D5_Night)
= 1

c_e_C_TIME2_OneShiftPerBatch(O005_L1_Assembly)_:
+1 ShiftAssign(O005_L1_Assembly_D1_Morning)
+1 ShiftAssign(O005_L1_Assembly_D1_Afternoon)
+1 ShiftAssign(O005_L1_Assembly_D1_Night)
+1 ShiftAssign(O005_L1_Assembly_D2_Morning)
+1 ShiftAssign(O005_L1_Assembly_D2_Afternoon)
+1 ShiftAssign(O005_L1_Assembly_D2_Night)
+1 ShiftAssign(O005_L1_Assembly_D3_Morning)
+1 ShiftAssign(O005_L1_Assembly_D3_Afternoon)
+1 ShiftAssign(O005_L1_Assembly_D3_Night)
+1 ShiftAssign(O005_L1_Assembly_D4_Morning)
+1 ShiftAssign(O005_L1_Assembly_D4_Afternoon)
+1 ShiftAssign(O005_L1_Assembly_D4_Night)
+1 ShiftAssign(O005_L1_Assembly_D5_Morning)
+1 ShiftAssign(O005_L1_Assembly_D5_Afternoon)
+1 ShiftAssign(O005_L1_Assembly_D5_Night)
= 1

c_e_C_TIME2_OneShiftPerBatch(O006_L1_Cutting)_:
+1 ShiftAssign(O006_L1_Cutting_D1_Morning)
+1 ShiftAssign(O006_L1_Cutting_D1_Afternoon)
+1 ShiftAssign(O006_L1_Cutting_D1_Night)
+1 ShiftAssign(O006_L1_Cutting_D2_Morning)
+1 ShiftAssign(O006_L1_Cutting_D2_Afternoon)
+1 ShiftAssign(O006_L1_Cutting_D2_Night)
+1 ShiftAssign(O006_L1_Cutting_D3_Morning)
+1 ShiftAssign(O006_L1_Cutting_D3_Afternoon)
+1 ShiftAssign(O006_L1_Cutting_D3_Night)
+1 ShiftAssign(O006_L1_Cutting_D4_Morning)
+1 ShiftAssign(O006_L1_Cutting_D4_Afternoon)
+1 ShiftAssign(O006_L1_Cutting_D4_Night)
+1 ShiftAssign(O006_L1_Cutting_D5_Morning)
+1 ShiftAssign(O006_L1_Cutting_D5_Afternoon)
+1 ShiftAssign(O006_L1_Cutting_D5_Night)
= 1

c_e_C_TIME2_OneShiftPerBatch(O006_L1_Assembly)_:
+1 ShiftAssign(O006_L1_Assembly_D1_Morning)
+1 ShiftAssign(O006_L1_Assembly_D1_Afternoon)
+1 ShiftAssign(O006_L1_Assembly_D1_Night)
+1 ShiftAssign(O006_L1_Assembly_D2_Morning)
+1 ShiftAssign(O006_L1_Assembly_D2_Afternoon)
+1 ShiftAssign(O006_L1_Assembly_D2_Night)
+1 ShiftAssign(O006_L1_Assembly_D3_Morning)
+1 ShiftAssign(O006_L1_Assembly_D3_Afternoon)
+1 ShiftAssign(O006_L1_Assembly_D3_Night)
+1 ShiftAssign(O006_L1_Assembly_D4_Morning)
+1 ShiftAssign(O006_L1_Assembly_D4_Afternoon)
+1 ShiftAssign(O006_L1_Assembly_D4_Night)
+1 ShiftAssign(O006_L1_Assembly_D5_Morning)
+1 ShiftAssign(O006_L1_Assembly_D5_Afternoon)
+1 ShiftAssign(O006_L1_Assembly_D5_Night)
= 1

c_u_C_TIME3_StartInWindow(O001_L1_Cutting_D1_Morning)_:
-1 Start(O001_L1_Cutting)
+120.0 ShiftAssign(O001_L1_Cutting_D1_Morning)
<= 120.0

c_u_C_TIME3_StartInWindow(O001_L1_Cutting_D1_Afternoon)_:
-1 Start(O001_L1_Cutting)
+120.0 ShiftAssign(O001_L1_Cutting_D1_Afternoon)
<= 112.0

c_u_C_TIME3_StartInWindow(O001_L1_Cutting_D1_Night)_:
-1 Start(O001_L1_Cutting)
+120.0 ShiftAssign(O001_L1_Cutting_D1_Night)
<= 104.0

c_u_C_TIME3_StartInWindow(O001_L1_Cutting_D2_Morning)_:
-1 Start(O001_L1_Cutting)
+120.0 ShiftAssign(O001_L1_Cutting_D2_Morning)
<= 96.0

c_u_C_TIME3_StartInWindow(O001_L1_Cutting_D2_Afternoon)_:
-1 Start(O001_L1_Cutting)
+120.0 ShiftAssign(O001_L1_Cutting_D2_Afternoon)
<= 88.0

c_u_C_TIME3_StartInWindow(O001_L1_Cutting_D2_Night)_:
-1 Start(O001_L1_Cutting)
+120.0 ShiftAssign(O001_L1_Cutting_D2_Night)
<= 80.0

c_u_C_TIME3_StartInWindow(O001_L1_Cutting_D3_Morning)_:
-1 Start(O001_L1_Cutting)
+120.0 ShiftAssign(O001_L1_Cutting_D3_Morning)
<= 72.0

c_u_C_TIME3_StartInWindow(O001_L1_Cutting_D3_Afternoon)_:
-1 Start(O001_L1_Cutting)
+120.0 ShiftAssign(O001_L1_Cutting_D3_Afternoon)
<= 64.0

c_u_C_TIME3_StartInWindow(O001_L1_Cutting_D3_Night)_:
-1 Start(O001_L1_Cutting)
+120.0 ShiftAssign(O001_L1_Cutting_D3_Night)
<= 56.0

c_u_C_TIME3_StartInWindow(O001_L1_Cutting_D4_Morning)_:
-1 Start(O001_L1_Cutting)
+120.0 ShiftAssign(O001_L1_Cutting_D4_Morning)
<= 48.0

c_u_C_TIME3_StartInWindow(O001_L1_Cutting_D4_Afternoon)_:
-1 Start(O001_L1_Cutting)
+120.0 ShiftAssign(O001_L1_Cutting_D4_Afternoon)
<= 40.0

c_u_C_TIME3_StartInWindow(O001_L1_Cutting_D4_Night)_:
-1 Start(O001_L1_Cutting)
+120.0 ShiftAssign(O001_L1_Cutting_D4_Night)
<= 32.0

c_u_C_TIME3_StartInWindow(O001_L1_Cutting_D5_Morning)_:
-1 Start(O001_L1_Cutting)
+120.0 ShiftAssign(O001_L1_Cutting_D5_Morning)
<= 24.0

c_u_C_TIME3_StartInWindow(O001_L1_Cutting_D5_Afternoon)_:
-1 Start(O001_L1_Cutting)
+120.0 ShiftAssign(O001_L1_Cutting_D5_Afternoon)
<= 16.0

c_u_C_TIME3_StartInWindow(O001_L1_Cutting_D5_Night)_:
-1 Start(O001_L1_Cutting)
+120.0 ShiftAssign(O001_L1_Cutting_D5_Night)
<= 8.0

c_u_C_TIME3_StartInWindow(O001_L1_Assembly_D1_Morning)_:
-1 Start(O001_L1_Assembly)
+120.0 ShiftAssign(O001_L1_Assembly_D1_Morning)
<= 120.0

c_u_C_TIME3_StartInWindow(O001_L1_Assembly_D1_Afternoon)_:
-1 Start(O001_L1_Assembly)
+120.0 ShiftAssign(O001_L1_Assembly_D1_Afternoon)
<= 112.0

c_u_C_TIME3_StartInWindow(O001_L1_Assembly_D1_Night)_:
-1 Start(O001_L1_Assembly)
+120.0 ShiftAssign(O001_L1_Assembly_D1_Night)
<= 104.0

c_u_C_TIME3_StartInWindow(O001_L1_Assembly_D2_Morning)_:
-1 Start(O001_L1_Assembly)
+120.0 ShiftAssign(O001_L1_Assembly_D2_Morning)
<= 96.0

c_u_C_TIME3_StartInWindow(O001_L1_Assembly_D2_Afternoon)_:
-1 Start(O001_L1_Assembly)
+120.0 ShiftAssign(O001_L1_Assembly_D2_Afternoon)
<= 88.0

c_u_C_TIME3_StartInWindow(O001_L1_Assembly_D2_Night)_:
-1 Start(O001_L1_Assembly)
+120.0 ShiftAssign(O001_L1_Assembly_D2_Night)
<= 80.0

c_u_C_TIME3_StartInWindow(O001_L1_Assembly_D3_Morning)_:
-1 Start(O001_L1_Assembly)
+120.0 ShiftAssign(O001_L1_Assembly_D3_Morning)
<= 72.0

c_u_C_TIME3_StartInWindow(O001_L1_Assembly_D3_Afternoon)_:
-1 Start(O001_L1_Assembly)
+120.0 ShiftAssign(O001_L1_Assembly_D3_Afternoon)
<= 64.0

c_u_C_TIME3_StartInWindow(O001_L1_Assembly_D3_Night)_:
-1 Start(O001_L1_Assembly)
+120.0 ShiftAssign(O001_L1_Assembly_D3_Night)
<= 56.0

c_u_C_TIME3_StartInWindow(O001_L1_Assembly_D4_Morning)_:
-1 Start(O001_L1_Assembly)
+120.0 ShiftAssign(O001_L1_Assembly_D4_Morning)
<= 48.0

c_u_C_TIME3_StartInWindow(O001_L1_Assembly_D4_Afternoon)_:
-1 Start(O001_L1_Assembly)
+120.0 ShiftAssign(O001_L1_Assembly_D4_Afternoon)
<= 40.0

c_u_C_TIME3_StartInWindow(O001_L1_Assembly_D4_Night)_:
-1 Start(O001_L1_Assembly)
+120.0 ShiftAssign(O001_L1_Assembly_D4_Night)
<= 32.0

c_u_C_TIME3_StartInWindow(O001_L1_Assembly_D5_Morning)_:
-1 Start(O001_L1_Assembly)
+120.0 ShiftAssign(O001_L1_Assembly_D5_Morning)
<= 24.0

c_u_C_TIME3_StartInWindow(O001_L1_Assembly_D5_Afternoon)_:
-1 Start(O001_L1_Assembly)
+120.0 ShiftAssign(O001_L1_Assembly_D5_Afternoon)
<= 16.0

c_u_C_TIME3_StartInWindow(O001_L1_Assembly_D5_Night)_:
-1 Start(O001_L1_Assembly)
+120.0 ShiftAssign(O001_L1_Assembly_D5_Night)
<= 8.0

c_u_C_TIME3_StartInWindow(O002_L1_Cutting_D1_Morning)_:
-1 Start(O002_L1_Cutting)
+120.0 ShiftAssign(O002_L1_Cutting_D1_Morning)
<= 120.0

c_u_C_TIME3_StartInWindow(O002_L1_Cutting_D1_Afternoon)_:
-1 Start(O002_L1_Cutting)
+120.0 ShiftAssign(O002_L1_Cutting_D1_Afternoon)
<= 112.0

c_u_C_TIME3_StartInWindow(O002_L1_Cutting_D1_Night)_:
-1 Start(O002_L1_Cutting)
+120.0 ShiftAssign(O002_L1_Cutting_D1_Night)
<= 104.0

c_u_C_TIME3_StartInWindow(O002_L1_Cutting_D2_Morning)_:
-1 Start(O002_L1_Cutting)
+120.0 ShiftAssign(O002_L1_Cutting_D2_Morning)
<= 96.0

c_u_C_TIME3_StartInWindow(O002_L1_Cutting_D2_Afternoon)_:
-1 Start(O002_L1_Cutting)
+120.0 ShiftAssign(O002_L1_Cutting_D2_Afternoon)
<= 88.0

c_u_C_TIME3_StartInWindow(O002_L1_Cutting_D2_Night)_:
-1 Start(O002_L1_Cutting)
+120.0 ShiftAssign(O002_L1_Cutting_D2_Night)
<= 80.0

c_u_C_TIME3_StartInWindow(O002_L1_Cutting_D3_Morning)_:
-1 Start(O002_L1_Cutting)
+120.0 ShiftAssign(O002_L1_Cutting_D3_Morning)
<= 72.0

c_u_C_TIME3_StartInWindow(O002_L1_Cutting_D3_Afternoon)_:
-1 Start(O002_L1_Cutting)
+120.0 ShiftAssign(O002_L1_Cutting_D3_Afternoon)
<= 64.0

c_u_C_TIME3_StartInWindow(O002_L1_Cutting_D3_Night)_:
-1 Start(O002_L1_Cutting)
+120.0 ShiftAssign(O002_L1_Cutting_D3_Night)
<= 56.0

c_u_C_TIME3_StartInWindow(O002_L1_Cutting_D4_Morning)_:
-1 Start(O002_L1_Cutting)
+120.0 ShiftAssign(O002_L1_Cutting_D4_Morning)
<= 48.0

c_u_C_TIME3_StartInWindow(O002_L1_Cutting_D4_Afternoon)_:
-1 Start(O002_L1_Cutting)
+120.0 ShiftAssign(O002_L1_Cutting_D4_Afternoon)
<= 40.0

c_u_C_TIME3_StartInWindow(O002_L1_Cutting_D4_Night)_:
-1 Start(O002_L1_Cutting)
+120.0 ShiftAssign(O002_L1_Cutting_D4_Night)
<= 32.0

c_u_C_TIME3_StartInWindow(O002_L1_Cutting_D5_Morning)_:
-1 Start(O002_L1_Cutting)
+120.0 ShiftAssign(O002_L1_Cutting_D5_Morning)
<= 24.0

c_u_C_TIME3_StartInWindow(O002_L1_Cutting_D5_Afternoon)_:
-1 Start(O002_L1_Cutting)
+120.0 ShiftAssign(O002_L1_Cutting_D5_Afternoon)
<= 16.0

c_u_C_TIME3_StartInWindow(O002_L1_Cutting_D5_Night)_:
-1 Start(O002_L1_Cutting)
+120.0 ShiftAssign(O002_L1_Cutting_D5_Night)
<= 8.0

c_u_C_TIME3_StartInWindow(O002_L1_Assembly_D1_Morning)_:
-1 Start(O002_L1_Assembly)
+120.0 ShiftAssign(O002_L1_Assembly_D1_Morning)
<= 120.0

c_u_C_TIME3_StartInWindow(O002_L1_Assembly_D1_Afternoon)_:
-1 Start(O002_L1_Assembly)
+120.0 ShiftAssign(O002_L1_Assembly_D1_Afternoon)
<= 112.0

c_u_C_TIME3_StartInWindow(O002_L1_Assembly_D1_Night)_:
-1 Start(O002_L1_Assembly)
+120.0 ShiftAssign(O002_L1_Assembly_D1_Night)
<= 104.0

c_u_C_TIME3_StartInWindow(O002_L1_Assembly_D2_Morning)_:
-1 Start(O002_L1_Assembly)
+120.0 ShiftAssign(O002_L1_Assembly_D2_Morning)
<= 96.0

c_u_C_TIME3_StartInWindow(O002_L1_Assembly_D2_Afternoon)_:
-1 Start(O002_L1_Assembly)
+120.0 ShiftAssign(O002_L1_Assembly_D2_Afternoon)
<= 88.0

c_u_C_TIME3_StartInWindow(O002_L1_Assembly_D2_Night)_:
-1 Start(O002_L1_Assembly)
+120.0 ShiftAssign(O002_L1_Assembly_D2_Night)
<= 80.0

c_u_C_TIME3_StartInWindow(O002_L1_Assembly_D3_Morning)_:
-1 Start(O002_L1_Assembly)
+120.0 ShiftAssign(O002_L1_Assembly_D3_Morning)
<= 72.0

c_u_C_TIME3_StartInWindow(O002_L1_Assembly_D3_Afternoon)_:
-1 Start(O002_L1_Assembly)
+120.0 ShiftAssign(O002_L1_Assembly_D3_Afternoon)
<= 64.0

c_u_C_TIME3_StartInWindow(O002_L1_Assembly_D3_Night)_:
-1 Start(O002_L1_Assembly)
+120.0 ShiftAssign(O002_L1_Assembly_D3_Night)
<= 56.0

c_u_C_TIME3_StartInWindow(O002_L1_Assembly_D4_Morning)_:
-1 Start(O002_L1_Assembly)
+120.0 ShiftAssign(O002_L1_Assembly_D4_Morning)
<= 48.0

c_u_C_TIME3_StartInWindow(O002_L1_Assembly_D4_Afternoon)_:
-1 Start(O002_L1_Assembly)
+120.0 ShiftAssign(O002_L1_Assembly_D4_Afternoon)
<= 40.0

c_u_C_TIME3_StartInWindow(O002_L1_Assembly_D4_Night)_:
-1 Start(O002_L1_Assembly)
+120.0 ShiftAssign(O002_L1_Assembly_D4_Night)
<= 32.0

c_u_C_TIME3_StartInWindow(O002_L1_Assembly_D5_Morning)_:
-1 Start(O002_L1_Assembly)
+120.0 ShiftAssign(O002_L1_Assembly_D5_Morning)
<= 24.0

c_u_C_TIME3_StartInWindow(O002_L1_Assembly_D5_Afternoon)_:
-1 Start(O002_L1_Assembly)
+120.0 ShiftAssign(O002_L1_Assembly_D5_Afternoon)
<= 16.0

c_u_C_TIME3_StartInWindow(O002_L1_Assembly_D5_Night)_:
-1 Start(O002_L1_Assembly)
+120.0 ShiftAssign(O002_L1_Assembly_D5_Night)
<= 8.0

c_u_C_TIME3_StartInWindow(O003_L1_Cutting_D1_Morning)_:
-1 Start(O003_L1_Cutting)
+120.0 ShiftAssign(O003_L1_Cutting_D1_Morning)
<= 120.0

c_u_C_TIME3_StartInWindow(O003_L1_Cutting_D1_Afternoon)_:
-1 Start(O003_L1_Cutting)
+120.0 ShiftAssign(O003_L1_Cutting_D1_Afternoon)
<= 112.0

c_u_C_TIME3_StartInWindow(O003_L1_Cutting_D1_Night)_:
-1 Start(O003_L1_Cutting)
+120.0 ShiftAssign(O003_L1_Cutting_D1_Night)
<= 104.0

c_u_C_TIME3_StartInWindow(O003_L1_Cutting_D2_Morning)_:
-1 Start(O003_L1_Cutting)
+120.0 ShiftAssign(O003_L1_Cutting_D2_Morning)
<= 96.0

c_u_C_TIME3_StartInWindow(O003_L1_Cutting_D2_Afternoon)_:
-1 Start(O003_L1_Cutting)
+120.0 ShiftAssign(O003_L1_Cutting_D2_Afternoon)
<= 88.0

c_u_C_TIME3_StartInWindow(O003_L1_Cutting_D2_Night)_:
-1 Start(O003_L1_Cutting)
+120.0 ShiftAssign(O003_L1_Cutting_D2_Night)
<= 80.0

c_u_C_TIME3_StartInWindow(O003_L1_Cutting_D3_Morning)_:
-1 Start(O003_L1_Cutting)
+120.0 ShiftAssign(O003_L1_Cutting_D3_Morning)
<= 72.0

c_u_C_TIME3_StartInWindow(O003_L1_Cutting_D3_Afternoon)_:
-1 Start(O003_L1_Cutting)
+120.0 ShiftAssign(O003_L1_Cutting_D3_Afternoon)
<= 64.0

c_u_C_TIME3_StartInWindow(O003_L1_Cutting_D3_Night)_:
-1 Start(O003_L1_Cutting)
+120.0 ShiftAssign(O003_L1_Cutting_D3_Night)
<= 56.0

c_u_C_TIME3_StartInWindow(O003_L1_Cutting_D4_Morning)_:
-1 Start(O003_L1_Cutting)
+120.0 ShiftAssign(O003_L1_Cutting_D4_Morning)
<= 48.0

c_u_C_TIME3_StartInWindow(O003_L1_Cutting_D4_Afternoon)_:
-1 Start(O003_L1_Cutting)
+120.0 ShiftAssign(O003_L1_Cutting_D4_Afternoon)
<= 40.0

c_u_C_TIME3_StartInWindow(O003_L1_Cutting_D4_Night)_:
-1 Start(O003_L1_Cutting)
+120.0 ShiftAssign(O003_L1_Cutting_D4_Night)
<= 32.0

c_u_C_TIME3_StartInWindow(O003_L1_Cutting_D5_Morning)_:
-1 Start(O003_L1_Cutting)
+120.0 ShiftAssign(O003_L1_Cutting_D5_Morning)
<= 24.0

c_u_C_TIME3_StartInWindow(O003_L1_Cutting_D5_Afternoon)_:
-1 Start(O003_L1_Cutting)
+120.0 ShiftAssign(O003_L1_Cutting_D5_Afternoon)
<= 16.0

c_u_C_TIME3_StartInWindow(O003_L1_Cutting_D5_Night)_:
-1 Start(O003_L1_Cutting)
+120.0 ShiftAssign(O003_L1_Cutting_D5_Night)
<= 8.0

c_u_C_TIME3_StartInWindow(O003_L1_Assembly_D1_Morning)_:
-1 Start(O003_L1_Assembly)
+120.0 ShiftAssign(O003_L1_Assembly_D1_Morning)
<= 120.0

c_u_C_TIME3_StartInWindow(O003_L1_Assembly_D1_Afternoon)_:
-1 Start(O003_L1_Assembly)
+120.0 ShiftAssign(O003_L1_Assembly_D1_Afternoon)
<= 112.0

c_u_C_TIME3_StartInWindow(O003_L1_Assembly_D1_Night)_:
-1 Start(O003_L1_Assembly)
+120.0 ShiftAssign(O003_L1_Assembly_D1_Night)
<= 104.0

c_u_C_TIME3_StartInWindow(O003_L1_Assembly_D2_Morning)_:
-1 Start(O003_L1_Assembly)
+120.0 ShiftAssign(O003_L1_Assembly_D2_Morning)
<= 96.0

c_u_C_TIME3_StartInWindow(O003_L1_Assembly_D2_Afternoon)_:
-1 Start(O003_L1_Assembly)
+120.0 ShiftAssign(O003_L1_Assembly_D2_Afternoon)
<= 88.0

c_u_C_TIME3_StartInWindow(O003_L1_Assembly_D2_Night)_:
-1 Start(O003_L1_Assembly)
+120.0 ShiftAssign(O003_L1_Assembly_D2_Night)
<= 80.0

c_u_C_TIME3_StartInWindow(O003_L1_Assembly_D3_Morning)_:
-1 Start(O003_L1_Assembly)
+120.0 ShiftAssign(O003_L1_Assembly_D3_Morning)
<= 72.0

c_u_C_TIME3_StartInWindow(O003_L1_Assembly_D3_Afternoon)_:
-1 Start(O003_L1_Assembly)
+120.0 ShiftAssign(O003_L1_Assembly_D3_Afternoon)
<= 64.0

c_u_C_TIME3_StartInWindow(O003_L1_Assembly_D3_Night)_:
-1 Start(O003_L1_Assembly)
+120.0 ShiftAssign(O003_L1_Assembly_D3_Night)
<= 56.0

c_u_C_TIME3_StartInWindow(O003_L1_Assembly_D4_Morning)_:
-1 Start(O003_L1_Assembly)
+120.0 ShiftAssign(O003_L1_Assembly_D4_Morning)
<= 48.0

c_u_C_TIME3_StartInWindow(O003_L1_Assembly_D4_Afternoon)_:
-1 Start(O003_L1_Assembly)
+120.0 ShiftAssign(O003_L1_Assembly_D4_Afternoon)
<= 40.0

c_u_C_TIME3_StartInWindow(O003_L1_Assembly_D4_Night)_:
-1 Start(O003_L1_Assembly)
+120.0 ShiftAssign(O003_L1_Assembly_D4_Night)
<= 32.0

c_u_C_TIME3_StartInWindow(O003_L1_Assembly_D5_Morning)_:
-1 Start(O003_L1_Assembly)
+120.0 ShiftAssign(O003_L1_Assembly_D5_Morning)
<= 24.0

c_u_C_TIME3_StartInWindow(O003_L1_Assembly_D5_Afternoon)_:
-1 Start(O003_L1_Assembly)
+120.0 ShiftAssign(O003_L1_Assembly_D5_Afternoon)
<= 16.0

c_u_C_TIME3_StartInWindow(O003_L1_Assembly_D5_Night)_:
-1 Start(O003_L1_Assembly)
+120.0 ShiftAssign(O003_L1_Assembly_D5_Night)
<= 8.0

c_u_C_TIME3_StartInWindow(O004_L1_Cutting_D1_Morning)_:
-1 Start(O004_L1_Cutting)
+120.0 ShiftAssign(O004_L1_Cutting_D1_Morning)
<= 120.0

c_u_C_TIME3_StartInWindow(O004_L1_Cutting_D1_Afternoon)_:
-1 Start(O004_L1_Cutting)
+120.0 ShiftAssign(O004_L1_Cutting_D1_Afternoon)
<= 112.0

c_u_C_TIME3_StartInWindow(O004_L1_Cutting_D1_Night)_:
-1 Start(O004_L1_Cutting)
+120.0 ShiftAssign(O004_L1_Cutting_D1_Night)
<= 104.0

c_u_C_TIME3_StartInWindow(O004_L1_Cutting_D2_Morning)_:
-1 Start(O004_L1_Cutting)
+120.0 ShiftAssign(O004_L1_Cutting_D2_Morning)
<= 96.0

c_u_C_TIME3_StartInWindow(O004_L1_Cutting_D2_Afternoon)_:
-1 Start(O004_L1_Cutting)
+120.0 ShiftAssign(O004_L1_Cutting_D2_Afternoon)
<= 88.0

c_u_C_TIME3_StartInWindow(O004_L1_Cutting_D2_Night)_:
-1 Start(O004_L1_Cutting)
+120.0 ShiftAssign(O004_L1_Cutting_D2_Night)
<= 80.0

c_u_C_TIME3_StartInWindow(O004_L1_Cutting_D3_Morning)_:
-1 Start(O004_L1_Cutting)
+120.0 ShiftAssign(O004_L1_Cutting_D3_Morning)
<= 72.0

c_u_C_TIME3_StartInWindow(O004_L1_Cutting_D3_Afternoon)_:
-1 Start(O004_L1_Cutting)
+120.0 ShiftAssign(O004_L1_Cutting_D3_Afternoon)
<= 64.0

c_u_C_TIME3_StartInWindow(O004_L1_Cutting_D3_Night)_:
-1 Start(O004_L1_Cutting)
+120.0 ShiftAssign(O004_L1_Cutting_D3_Night)
<= 56.0

c_u_C_TIME3_StartInWindow(O004_L1_Cutting_D4_Morning)_:
-1 Start(O004_L1_Cutting)
+120.0 ShiftAssign(O004_L1_Cutting_D4_Morning)
<= 48.0

c_u_C_TIME3_StartInWindow(O004_L1_Cutting_D4_Afternoon)_:
-1 Start(O004_L1_Cutting)
+120.0 ShiftAssign(O004_L1_Cutting_D4_Afternoon)
<= 40.0

c_u_C_TIME3_StartInWindow(O004_L1_Cutting_D4_Night)_:
-1 Start(O004_L1_Cutting)
+120.0 ShiftAssign(O004_L1_Cutting_D4_Night)
<= 32.0

c_u_C_TIME3_StartInWindow(O004_L1_Cutting_D5_Morning)_:
-1 Start(O004_L1_Cutting)
+120.0 ShiftAssign(O004_L1_Cutting_D5_Morning)
<= 24.0

c_u_C_TIME3_StartInWindow(O004_L1_Cutting_D5_Afternoon)_:
-1 Start(O004_L1_Cutting)
+120.0 ShiftAssign(O004_L1_Cutting_D5_Afternoon)
<= 16.0

c_u_C_TIME3_StartInWindow(O004_L1_Cutting_D5_Night)_:
-1 Start(O004_L1_Cutting)
+120.0 ShiftAssign(O004_L1_Cutting_D5_Night)
<= 8.0

c_u_C_TIME3_StartInWindow(O004_L1_Assembly_D1_Morning)_:
-1 Start(O004_L1_Assembly)
+120.0 ShiftAssign(O004_L1_Assembly_D1_Morning)
<= 120.0

c_u_C_TIME3_StartInWindow(O004_L1_Assembly_D1_Afternoon)_:
-1 Start(O004_L1_Assembly)
+120.0 ShiftAssign(O004_L1_Assembly_D1_Afternoon)
<= 112.0

c_u_C_TIME3_StartInWindow(O004_L1_Assembly_D1_Night)_:
-1 Start(O004_L1_Assembly)
+120.0 ShiftAssign(O004_L1_Assembly_D1_Night)
<= 104.0

c_u_C_TIME3_StartInWindow(O004_L1_Assembly_D2_Morning)_:
-1 Start(O004_L1_Assembly)
+120.0 ShiftAssign(O004_L1_Assembly_D2_Morning)
<= 96.0

c_u_C_TIME3_StartInWindow(O004_L1_Assembly_D2_Afternoon)_:
-1 Start(O004_L1_Assembly)
+120.0 ShiftAssign(O004_L1_Assembly_D2_Afternoon)
<= 88.0

c_u_C_TIME3_StartInWindow(O004_L1_Assembly_D2_Night)_:
-1 Start(O004_L1_Assembly)
+120.0 ShiftAssign(O004_L1_Assembly_D2_Night)
<= 80.0

c_u_C_TIME3_StartInWindow(O004_L1_Assembly_D3_Morning)_:
-1 Start(O004_L1_Assembly)
+120.0 ShiftAssign(O004_L1_Assembly_D3_Morning)
<= 72.0

c_u_C_TIME3_StartInWindow(O004_L1_Assembly_D3_Afternoon)_:
-1 Start(O004_L1_Assembly)
+120.0 ShiftAssign(O004_L1_Assembly_D3_Afternoon)
<= 64.0

c_u_C_TIME3_StartInWindow(O004_L1_Assembly_D3_Night)_:
-1 Start(O004_L1_Assembly)
+120.0 ShiftAssign(O004_L1_Assembly_D3_Night)
<= 56.0

c_u_C_TIME3_StartInWindow(O004_L1_Assembly_D4_Morning)_:
-1 Start(O004_L1_Assembly)
+120.0 ShiftAssign(O004_L1_Assembly_D4_Morning)
<= 48.0

c_u_C_TIME3_StartInWindow(O004_L1_Assembly_D4_Afternoon)_:
-1 Start(O004_L1_Assembly)
+120.0 ShiftAssign(O004_L1_Assembly_D4_Afternoon)
<= 40.0

c_u_C_TIME3_StartInWindow(O004_L1_Assembly_D4_Night)_:
-1 Start(O004_L1_Assembly)
+120.0 ShiftAssign(O004_L1_Assembly_D4_Night)
<= 32.0

c_u_C_TIME3_StartInWindow(O004_L1_Assembly_D5_Morning)_:
-1 Start(O004_L1_Assembly)
+120.0 ShiftAssign(O004_L1_Assembly_D5_Morning)
<= 24.0

c_u_C_TIME3_StartInWindow(O004_L1_Assembly_D5_Afternoon)_:
-1 Start(O004_L1_Assembly)
+120.0 ShiftAssign(O004_L1_Assembly_D5_Afternoon)
<= 16.0

c_u_C_TIME3_StartInWindow(O004_L1_Assembly_D5_Night)_:
-1 Start(O004_L1_Assembly)
+120.0 ShiftAssign(O004_L1_Assembly_D5_Night)
<= 8.0

c_u_C_TIME3_StartInWindow(O004_L2_Cutting_D1_Morning)_:
-1 Start(O004_L2_Cutting)
+120.0 ShiftAssign(O004_L2_Cutting_D1_Morning)
<= 120.0

c_u_C_TIME3_StartInWindow(O004_L2_Cutting_D1_Afternoon)_:
-1 Start(O004_L2_Cutting)
+120.0 ShiftAssign(O004_L2_Cutting_D1_Afternoon)
<= 112.0

c_u_C_TIME3_StartInWindow(O004_L2_Cutting_D1_Night)_:
-1 Start(O004_L2_Cutting)
+120.0 ShiftAssign(O004_L2_Cutting_D1_Night)
<= 104.0

c_u_C_TIME3_StartInWindow(O004_L2_Cutting_D2_Morning)_:
-1 Start(O004_L2_Cutting)
+120.0 ShiftAssign(O004_L2_Cutting_D2_Morning)
<= 96.0

c_u_C_TIME3_StartInWindow(O004_L2_Cutting_D2_Afternoon)_:
-1 Start(O004_L2_Cutting)
+120.0 ShiftAssign(O004_L2_Cutting_D2_Afternoon)
<= 88.0

c_u_C_TIME3_StartInWindow(O004_L2_Cutting_D2_Night)_:
-1 Start(O004_L2_Cutting)
+120.0 ShiftAssign(O004_L2_Cutting_D2_Night)
<= 80.0

c_u_C_TIME3_StartInWindow(O004_L2_Cutting_D3_Morning)_:
-1 Start(O004_L2_Cutting)
+120.0 ShiftAssign(O004_L2_Cutting_D3_Morning)
<= 72.0

c_u_C_TIME3_StartInWindow(O004_L2_Cutting_D3_Afternoon)_:
-1 Start(O004_L2_Cutting)
+120.0 ShiftAssign(O004_L2_Cutting_D3_Afternoon)
<= 64.0

c_u_C_TIME3_StartInWindow(O004_L2_Cutting_D3_Night)_:
-1 Start(O004_L2_Cutting)
+120.0 ShiftAssign(O004_L2_Cutting_D3_Night)
<= 56.0

c_u_C_TIME3_StartInWindow(O004_L2_Cutting_D4_Morning)_:
-1 Start(O004_L2_Cutting)
+120.0 ShiftAssign(O004_L2_Cutting_D4_Morning)
<= 48.0

c_u_C_TIME3_StartInWindow(O004_L2_Cutting_D4_Afternoon)_:
-1 Start(O004_L2_Cutting)
+120.0 ShiftAssign(O004_L2_Cutting_D4_Afternoon)
<= 40.0

c_u_C_TIME3_StartInWindow(O004_L2_Cutting_D4_Night)_:
-1 Start(O004_L2_Cutting)
+120.0 ShiftAssign(O004_L2_Cutting_D4_Night)
<= 32.0

c_u_C_TIME3_StartInWindow(O004_L2_Cutting_D5_Morning)_:
-1 Start(O004_L2_Cutting)
+120.0 ShiftAssign(O004_L2_Cutting_D5_Morning)
<= 24.0

c_u_C_TIME3_StartInWindow(O004_L2_Cutting_D5_Afternoon)_:
-1 Start(O004_L2_Cutting)
+120.0 ShiftAssign(O004_L2_Cutting_D5_Afternoon)
<= 16.0

c_u_C_TIME3_StartInWindow(O004_L2_Cutting_D5_Night)_:
-1 Start(O004_L2_Cutting)
+120.0 ShiftAssign(O004_L2_Cutting_D5_Night)
<= 8.0

c_u_C_TIME3_StartInWindow(O004_L2_Assembly_D1_Morning)_:
-1 Start(O004_L2_Assembly)
+120.0 ShiftAssign(O004_L2_Assembly_D1_Morning)
<= 120.0

c_u_C_TIME3_StartInWindow(O004_L2_Assembly_D1_Afternoon)_:
-1 Start(O004_L2_Assembly)
+120.0 ShiftAssign(O004_L2_Assembly_D1_Afternoon)
<= 112.0

c_u_C_TIME3_StartInWindow(O004_L2_Assembly_D1_Night)_:
-1 Start(O004_L2_Assembly)
+120.0 ShiftAssign(O004_L2_Assembly_D1_Night)
<= 104.0

c_u_C_TIME3_StartInWindow(O004_L2_Assembly_D2_Morning)_:
-1 Start(O004_L2_Assembly)
+120.0 ShiftAssign(O004_L2_Assembly_D2_Morning)
<= 96.0

c_u_C_TIME3_StartInWindow(O004_L2_Assembly_D2_Afternoon)_:
-1 Start(O004_L2_Assembly)
+120.0 ShiftAssign(O004_L2_Assembly_D2_Afternoon)
<= 88.0

c_u_C_TIME3_StartInWindow(O004_L2_Assembly_D2_Night)_:
-1 Start(O004_L2_Assembly)
+120.0 ShiftAssign(O004_L2_Assembly_D2_Night)
<= 80.0

c_u_C_TIME3_StartInWindow(O004_L2_Assembly_D3_Morning)_:
-1 Start(O004_L2_Assembly)
+120.0 ShiftAssign(O004_L2_Assembly_D3_Morning)
<= 72.0

c_u_C_TIME3_StartInWindow(O004_L2_Assembly_D3_Afternoon)_:
-1 Start(O004_L2_Assembly)
+120.0 ShiftAssign(O004_L2_Assembly_D3_Afternoon)
<= 64.0

c_u_C_TIME3_StartInWindow(O004_L2_Assembly_D3_Night)_:
-1 Start(O004_L2_Assembly)
+120.0 ShiftAssign(O004_L2_Assembly_D3_Night)
<= 56.0

c_u_C_TIME3_StartInWindow(O004_L2_Assembly_D4_Morning)_:
-1 Start(O004_L2_Assembly)
+120.0 ShiftAssign(O004_L2_Assembly_D4_Morning)
<= 48.0

c_u_C_TIME3_StartInWindow(O004_L2_Assembly_D4_Afternoon)_:
-1 Start(O004_L2_Assembly)
+120.0 ShiftAssign(O004_L2_Assembly_D4_Afternoon)
<= 40.0

c_u_C_TIME3_StartInWindow(O004_L2_Assembly_D4_Night)_:
-1 Start(O004_L2_Assembly)
+120.0 ShiftAssign(O004_L2_Assembly_D4_Night)
<= 32.0

c_u_C_TIME3_StartInWindow(O004_L2_Assembly_D5_Morning)_:
-1 Start(O004_L2_Assembly)
+120.0 ShiftAssign(O004_L2_Assembly_D5_Morning)
<= 24.0

c_u_C_TIME3_StartInWindow(O004_L2_Assembly_D5_Afternoon)_:
-1 Start(O004_L2_Assembly)
+120.0 ShiftAssign(O004_L2_Assembly_D5_Afternoon)
<= 16.0

c_u_C_TIME3_StartInWindow(O004_L2_Assembly_D5_Night)_:
-1 Start(O004_L2_Assembly)
+120.0 ShiftAssign(O004_L2_Assembly_D5_Night)
<= 8.0

c_u_C_TIME3_StartInWindow(O005_L1_Cutting_D1_Morning)_:
-1 Start(O005_L1_Cutting)
+120.0 ShiftAssign(O005_L1_Cutting_D1_Morning)
<= 120.0

c_u_C_TIME3_StartInWindow(O005_L1_Cutting_D1_Afternoon)_:
-1 Start(O005_L1_Cutting)
+120.0 ShiftAssign(O005_L1_Cutting_D1_Afternoon)
<= 112.0

c_u_C_TIME3_StartInWindow(O005_L1_Cutting_D1_Night)_:
-1 Start(O005_L1_Cutting)
+120.0 ShiftAssign(O005_L1_Cutting_D1_Night)
<= 104.0

c_u_C_TIME3_StartInWindow(O005_L1_Cutting_D2_Morning)_:
-1 Start(O005_L1_Cutting)
+120.0 ShiftAssign(O005_L1_Cutting_D2_Morning)
<= 96.0

c_u_C_TIME3_StartInWindow(O005_L1_Cutting_D2_Afternoon)_:
-1 Start(O005_L1_Cutting)
+120.0 ShiftAssign(O005_L1_Cutting_D2_Afternoon)
<= 88.0

c_u_C_TIME3_StartInWindow(O005_L1_Cutting_D2_Night)_:
-1 Start(O005_L1_Cutting)
+120.0 ShiftAssign(O005_L1_Cutting_D2_Night)
<= 80.0

c_u_C_TIME3_StartInWindow(O005_L1_Cutting_D3_Morning)_:
-1 Start(O005_L1_Cutting)
+120.0 ShiftAssign(O005_L1_Cutting_D3_Morning)
<= 72.0

c_u_C_TIME3_StartInWindow(O005_L1_Cutting_D3_Afternoon)_:
-1 Start(O005_L1_Cutting)
+120.0 ShiftAssign(O005_L1_Cutting_D3_Afternoon)
<= 64.0

c_u_C_TIME3_StartInWindow(O005_L1_Cutting_D3_Night)_:
-1 Start(O005_L1_Cutting)
+120.0 ShiftAssign(O005_L1_Cutting_D3_Night)
<= 56.0

c_u_C_TIME3_StartInWindow(O005_L1_Cutting_D4_Morning)_:
-1 Start(O005_L1_Cutting)
+120.0 ShiftAssign(O005_L1_Cutting_D4_Morning)
<= 48.0

c_u_C_TIME3_StartInWindow(O005_L1_Cutting_D4_Afternoon)_:
-1 Start(O005_L1_Cutting)
+120.0 ShiftAssign(O005_L1_Cutting_D4_Afternoon)
<= 40.0

c_u_C_TIME3_StartInWindow(O005_L1_Cutting_D4_Night)_:
-1 Start(O005_L1_Cutting)
+120.0 ShiftAssign(O005_L1_Cutting_D4_Night)
<= 32.0

c_u_C_TIME3_StartInWindow(O005_L1_Cutting_D5_Morning)_:
-1 Start(O005_L1_Cutting)
+120.0 ShiftAssign(O005_L1_Cutting_D5_Morning)
<= 24.0

c_u_C_TIME3_StartInWindow(O005_L1_Cutting_D5_Afternoon)_:
-1 Start(O005_L1_Cutting)
+120.0 ShiftAssign(O005_L1_Cutting_D5_Afternoon)
<= 16.0

c_u_C_TIME3_StartInWindow(O005_L1_Cutting_D5_Night)_:
-1 Start(O005_L1_Cutting)
+120.0 ShiftAssign(O005_L1_Cutting_D5_Night)
<= 8.0

c_u_C_TIME3_StartInWindow(O005_L1_Assembly_D1_Morning)_:
-1 Start(O005_L1_Assembly)
+120.0 ShiftAssign(O005_L1_Assembly_D1_Morning)
<= 120.0

c_u_C_TIME3_StartInWindow(O005_L1_Assembly_D1_Afternoon)_:
-1 Start(O005_L1_Assembly)
+120.0 ShiftAssign(O005_L1_Assembly_D1_Afternoon)
<= 112.0

c_u_C_TIME3_StartInWindow(O005_L1_Assembly_D1_Night)_:
-1 Start(O005_L1_Assembly)
+120.0 ShiftAssign(O005_L1_Assembly_D1_Night)
<= 104.0

c_u_C_TIME3_StartInWindow(O005_L1_Assembly_D2_Morning)_:
-1 Start(O005_L1_Assembly)
+120.0 ShiftAssign(O005_L1_Assembly_D2_Morning)
<= 96.0

c_u_C_TIME3_StartInWindow(O005_L1_Assembly_D2_Afternoon)_:
-1 Start(O005_L1_Assembly)
+120.0 ShiftAssign(O005_L1_Assembly_D2_Afternoon)
<= 88.0

c_u_C_TIME3_StartInWindow(O005_L1_Assembly_D2_Night)_:
-1 Start(O005_L1_Assembly)
+120.0 ShiftAssign(O005_L1_Assembly_D2_Night)
<= 80.0

c_u_C_TIME3_StartInWindow(O005_L1_Assembly_D3_Morning)_:
-1 Start(O005_L1_Assembly)
+120.0 ShiftAssign(O005_L1_Assembly_D3_Morning)
<= 72.0

c_u_C_TIME3_StartInWindow(O005_L1_Assembly_D3_Afternoon)_:
-1 Start(O005_L1_Assembly)
+120.0 ShiftAssign(O005_L1_Assembly_D3_Afternoon)
<= 64.0

c_u_C_TIME3_StartInWindow(O005_L1_Assembly_D3_Night)_:
-1 Start(O005_L1_Assembly)
+120.0 ShiftAssign(O005_L1_Assembly_D3_Night)
<= 56.0

c_u_C_TIME3_StartInWindow(O005_L1_Assembly_D4_Morning)_:
-1 Start(O005_L1_Assembly)
+120.0 ShiftAssign(O005_L1_Assembly_D4_Morning)
<= 48.0

c_u_C_TIME3_StartInWindow(O005_L1_Assembly_D4_Afternoon)_:
-1 Start(O005_L1_Assembly)
+120.0 ShiftAssign(O005_L1_Assembly_D4_Afternoon)
<= 40.0

c_u_C_TIME3_StartInWindow(O005_L1_Assembly_D4_Night)_:
-1 Start(O005_L1_Assembly)
+120.0 ShiftAssign(O005_L1_Assembly_D4_Night)
<= 32.0

c_u_C_TIME3_StartInWindow(O005_L1_Assembly_D5_Morning)_:
-1 Start(O005_L1_Assembly)
+120.0 ShiftAssign(O005_L1_Assembly_D5_Morning)
<= 24.0

c_u_C_TIME3_StartInWindow(O005_L1_Assembly_D5_Afternoon)_:
-1 Start(O005_L1_Assembly)
+120.0 ShiftAssign(O005_L1_Assembly_D5_Afternoon)
<= 16.0

c_u_C_TIME3_StartInWindow(O005_L1_Assembly_D5_Night)_:
-1 Start(O005_L1_Assembly)
+120.0 ShiftAssign(O005_L1_Assembly_D5_Night)
<= 8.0

c_u_C_TIME3_StartInWindow(O006_L1_Cutting_D1_Morning)_:
-1 Start(O006_L1_Cutting)
+120.0 ShiftAssign(O006_L1_Cutting_D1_Morning)
<= 120.0

c_u_C_TIME3_StartInWindow(O006_L1_Cutting_D1_Afternoon)_:
-1 Start(O006_L1_Cutting)
+120.0 ShiftAssign(O006_L1_Cutting_D1_Afternoon)
<= 112.0

c_u_C_TIME3_StartInWindow(O006_L1_Cutting_D1_Night)_:
-1 Start(O006_L1_Cutting)
+120.0 ShiftAssign(O006_L1_Cutting_D1_Night)
<= 104.0

c_u_C_TIME3_StartInWindow(O006_L1_Cutting_D2_Morning)_:
-1 Start(O006_L1_Cutting)
+120.0 ShiftAssign(O006_L1_Cutting_D2_Morning)
<= 96.0

c_u_C_TIME3_StartInWindow(O006_L1_Cutting_D2_Afternoon)_:
-1 Start(O006_L1_Cutting)
+120.0 ShiftAssign(O006_L1_Cutting_D2_Afternoon)
<= 88.0

c_u_C_TIME3_StartInWindow(O006_L1_Cutting_D2_Night)_:
-1 Start(O006_L1_Cutting)
+120.0 ShiftAssign(O006_L1_Cutting_D2_Night)
<= 80.0

c_u_C_TIME3_StartInWindow(O006_L1_Cutting_D3_Morning)_:
-1 Start(O006_L1_Cutting)
+120.0 ShiftAssign(O006_L1_Cutting_D3_Morning)
<= 72.0

c_u_C_TIME3_StartInWindow(O006_L1_Cutting_D3_Afternoon)_:
-1 Start(O006_L1_Cutting)
+120.0 ShiftAssign(O006_L1_Cutting_D3_Afternoon)
<= 64.0

c_u_C_TIME3_StartInWindow(O006_L1_Cutting_D3_Night)_:
-1 Start(O006_L1_Cutting)
+120.0 ShiftAssign(O006_L1_Cutting_D3_Night)
<= 56.0

c_u_C_TIME3_StartInWindow(O006_L1_Cutting_D4_Morning)_:
-1 Start(O006_L1_Cutting)
+120.0 ShiftAssign(O006_L1_Cutting_D4_Morning)
<= 48.0

c_u_C_TIME3_StartInWindow(O006_L1_Cutting_D4_Afternoon)_:
-1 Start(O006_L1_Cutting)
+120.0 ShiftAssign(O006_L1_Cutting_D4_Afternoon)
<= 40.0

c_u_C_TIME3_StartInWindow(O006_L1_Cutting_D4_Night)_:
-1 Start(O006_L1_Cutting)
+120.0 ShiftAssign(O006_L1_Cutting_D4_Night)
<= 32.0

c_u_C_TIME3_StartInWindow(O006_L1_Cutting_D5_Morning)_:
-1 Start(O006_L1_Cutting)
+120.0 ShiftAssign(O006_L1_Cutting_D5_Morning)
<= 24.0

c_u_C_TIME3_StartInWindow(O006_L1_Cutting_D5_Afternoon)_:
-1 Start(O006_L1_Cutting)
+120.0 ShiftAssign(O006_L1_Cutting_D5_Afternoon)
<= 16.0

c_u_C_TIME3_StartInWindow(O006_L1_Cutting_D5_Night)_:
-1 Start(O006_L1_Cutting)
+120.0 ShiftAssign(O006_L1_Cutting_D5_Night)
<= 8.0

c_u_C_TIME3_StartInWindow(O006_L1_Assembly_D1_Morning)_:
-1 Start(O006_L1_Assembly)
+120.0 ShiftAssign(O006_L1_Assembly_D1_Morning)
<= 120.0

c_u_C_TIME3_StartInWindow(O006_L1_Assembly_D1_Afternoon)_:
-1 Start(O006_L1_Assembly)
+120.0 ShiftAssign(O006_L1_Assembly_D1_Afternoon)
<= 112.0

c_u_C_TIME3_StartInWindow(O006_L1_Assembly_D1_Night)_:
-1 Start(O006_L1_Assembly)
+120.0 ShiftAssign(O006_L1_Assembly_D1_Night)
<= 104.0

c_u_C_TIME3_StartInWindow(O006_L1_Assembly_D2_Morning)_:
-1 Start(O006_L1_Assembly)
+120.0 ShiftAssign(O006_L1_Assembly_D2_Morning)
<= 96.0

c_u_C_TIME3_StartInWindow(O006_L1_Assembly_D2_Afternoon)_:
-1 Start(O006_L1_Assembly)
+120.0 ShiftAssign(O006_L1_Assembly_D2_Afternoon)
<= 88.0

c_u_C_TIME3_StartInWindow(O006_L1_Assembly_D2_Night)_:
-1 Start(O006_L1_Assembly)
+120.0 ShiftAssign(O006_L1_Assembly_D2_Night)
<= 80.0

c_u_C_TIME3_StartInWindow(O006_L1_Assembly_D3_Morning)_:
-1 Start(O006_L1_Assembly)
+120.0 ShiftAssign(O006_L1_Assembly_D3_Morning)
<= 72.0

c_u_C_TIME3_StartInWindow(O006_L1_Assembly_D3_Afternoon)_:
-1 Start(O006_L1_Assembly)
+120.0 ShiftAssign(O006_L1_Assembly_D3_Afternoon)
<= 64.0

c_u_C_TIME3_StartInWindow(O006_L1_Assembly_D3_Night)_:
-1 Start(O006_L1_Assembly)
+120.0 ShiftAssign(O006_L1_Assembly_D3_Night)
<= 56.0

c_u_C_TIME3_StartInWindow(O006_L1_Assembly_D4_Morning)_:
-1 Start(O006_L1_Assembly)
+120.0 ShiftAssign(O006_L1_Assembly_D4_Morning)
<= 48.0

c_u_C_TIME3_StartInWindow(O006_L1_Assembly_D4_Afternoon)_:
-1 Start(O006_L1_Assembly)
+120.0 ShiftAssign(O006_L1_Assembly_D4_Afternoon)
<= 40.0

c_u_C_TIME3_StartInWindow(O006_L1_Assembly_D4_Night)_:
-1 Start(O006_L1_Assembly)
+120.0 ShiftAssign(O006_L1_Assembly_D4_Night)
<= 32.0

c_u_C_TIME3_StartInWindow(O006_L1_Assembly_D5_Morning)_:
-1 Start(O006_L1_Assembly)
+120.0 ShiftAssign(O006_L1_Assembly_D5_Morning)
<= 24.0

c_u_C_TIME3_StartInWindow(O006_L1_Assembly_D5_Afternoon)_:
-1 Start(O006_L1_Assembly)
+120.0 ShiftAssign(O006_L1_Assembly_D5_Afternoon)
<= 16.0

c_u_C_TIME3_StartInWindow(O006_L1_Assembly_D5_Night)_:
-1 Start(O006_L1_Assembly)
+120.0 ShiftAssign(O006_L1_Assembly_D5_Night)
<= 8.0

c_u_C_TIME3_FinishInWindow(O001_L1_Cutting_D1_Morning)_:
+1 Finish(O001_L1_Cutting)
+120.0 ShiftAssign(O001_L1_Cutting_D1_Morning)
<= 128.0

c_u_C_TIME3_FinishInWindow(O001_L1_Cutting_D1_Afternoon)_:
+1 Finish(O001_L1_Cutting)
+120.0 ShiftAssign(O001_L1_Cutting_D1_Afternoon)
<= 136.0

c_u_C_TIME3_FinishInWindow(O001_L1_Cutting_D1_Night)_:
+1 Finish(O001_L1_Cutting)
+120.0 ShiftAssign(O001_L1_Cutting_D1_Night)
<= 144.0

c_u_C_TIME3_FinishInWindow(O001_L1_Cutting_D2_Morning)_:
+1 Finish(O001_L1_Cutting)
+120.0 ShiftAssign(O001_L1_Cutting_D2_Morning)
<= 152.0

c_u_C_TIME3_FinishInWindow(O001_L1_Cutting_D2_Afternoon)_:
+1 Finish(O001_L1_Cutting)
+120.0 ShiftAssign(O001_L1_Cutting_D2_Afternoon)
<= 160.0

c_u_C_TIME3_FinishInWindow(O001_L1_Cutting_D2_Night)_:
+1 Finish(O001_L1_Cutting)
+120.0 ShiftAssign(O001_L1_Cutting_D2_Night)
<= 168.0

c_u_C_TIME3_FinishInWindow(O001_L1_Cutting_D3_Morning)_:
+1 Finish(O001_L1_Cutting)
+120.0 ShiftAssign(O001_L1_Cutting_D3_Morning)
<= 176.0

c_u_C_TIME3_FinishInWindow(O001_L1_Cutting_D3_Afternoon)_:
+1 Finish(O001_L1_Cutting)
+120.0 ShiftAssign(O001_L1_Cutting_D3_Afternoon)
<= 184.0

c_u_C_TIME3_FinishInWindow(O001_L1_Cutting_D3_Night)_:
+1 Finish(O001_L1_Cutting)
+120.0 ShiftAssign(O001_L1_Cutting_D3_Night)
<= 192.0

c_u_C_TIME3_FinishInWindow(O001_L1_Cutting_D4_Morning)_:
+1 Finish(O001_L1_Cutting)
+120.0 ShiftAssign(O001_L1_Cutting_D4_Morning)
<= 200.0

c_u_C_TIME3_FinishInWindow(O001_L1_Cutting_D4_Afternoon)_:
+1 Finish(O001_L1_Cutting)
+120.0 ShiftAssign(O001_L1_Cutting_D4_Afternoon)
<= 208.0

c_u_C_TIME3_FinishInWindow(O001_L1_Cutting_D4_Night)_:
+1 Finish(O001_L1_Cutting)
+120.0 ShiftAssign(O001_L1_Cutting_D4_Night)
<= 216.0

c_u_C_TIME3_FinishInWindow(O001_L1_Cutting_D5_Morning)_:
+1 Finish(O001_L1_Cutting)
+120.0 ShiftAssign(O001_L1_Cutting_D5_Morning)
<= 224.0

c_u_C_TIME3_FinishInWindow(O001_L1_Cutting_D5_Afternoon)_:
+1 Finish(O001_L1_Cutting)
+120.0 ShiftAssign(O001_L1_Cutting_D5_Afternoon)
<= 232.0

c_u_C_TIME3_FinishInWindow(O001_L1_Cutting_D5_Night)_:
+1 Finish(O001_L1_Cutting)
+120.0 ShiftAssign(O001_L1_Cutting_D5_Night)
<= 240.0

c_u_C_TIME3_FinishInWindow(O001_L1_Assembly_D1_Morning)_:
+1 Finish(O001_L1_Assembly)
+120.0 ShiftAssign(O001_L1_Assembly_D1_Morning)
<= 128.0

c_u_C_TIME3_FinishInWindow(O001_L1_Assembly_D1_Afternoon)_:
+1 Finish(O001_L1_Assembly)
+120.0 ShiftAssign(O001_L1_Assembly_D1_Afternoon)
<= 136.0

c_u_C_TIME3_FinishInWindow(O001_L1_Assembly_D1_Night)_:
+1 Finish(O001_L1_Assembly)
+120.0 ShiftAssign(O001_L1_Assembly_D1_Night)
<= 144.0

c_u_C_TIME3_FinishInWindow(O001_L1_Assembly_D2_Morning)_:
+1 Finish(O001_L1_Assembly)
+120.0 ShiftAssign(O001_L1_Assembly_D2_Morning)
<= 152.0

c_u_C_TIME3_FinishInWindow(O001_L1_Assembly_D2_Afternoon)_:
+1 Finish(O001_L1_Assembly)
+120.0 ShiftAssign(O001_L1_Assembly_D2_Afternoon)
<= 160.0

c_u_C_TIME3_FinishInWindow(O001_L1_Assembly_D2_Night)_:
+1 Finish(O001_L1_Assembly)
+120.0 ShiftAssign(O001_L1_Assembly_D2_Night)
<= 168.0

c_u_C_TIME3_FinishInWindow(O001_L1_Assembly_D3_Morning)_:
+1 Finish(O001_L1_Assembly)
+120.0 ShiftAssign(O001_L1_Assembly_D3_Morning)
<= 176.0

c_u_C_TIME3_FinishInWindow(O001_L1_Assembly_D3_Afternoon)_:
+1 Finish(O001_L1_Assembly)
+120.0 ShiftAssign(O001_L1_Assembly_D3_Afternoon)
<= 184.0

c_u_C_TIME3_FinishInWindow(O001_L1_Assembly_D3_Night)_:
+1 Finish(O001_L1_Assembly)
+120.0 ShiftAssign(O001_L1_Assembly_D3_Night)
<= 192.0

c_u_C_TIME3_FinishInWindow(O001_L1_Assembly_D4_Morning)_:
+1 Finish(O001_L1_Assembly)
+120.0 ShiftAssign(O001_L1_Assembly_D4_Morning)
<= 200.0

c_u_C_TIME3_FinishInWindow(O001_L1_Assembly_D4_Afternoon)_:
+1 Finish(O001_L1_Assembly)
+120.0 ShiftAssign(O001_L1_Assembly_D4_Afternoon)
<= 208.0

c_u_C_TIME3_FinishInWindow(O001_L1_Assembly_D4_Night)_:
+1 Finish(O001_L1_Assembly)
+120.0 ShiftAssign(O001_L1_Assembly_D4_Night)
<= 216.0

c_u_C_TIME3_FinishInWindow(O001_L1_Assembly_D5_Morning)_:
+1 Finish(O001_L1_Assembly)
+120.0 ShiftAssign(O001_L1_Assembly_D5_Morning)
<= 224.0

c_u_C_TIME3_FinishInWindow(O001_L1_Assembly_D5_Afternoon)_:
+1 Finish(O001_L1_Assembly)
+120.0 ShiftAssign(O001_L1_Assembly_D5_Afternoon)
<= 232.0

c_u_C_TIME3_FinishInWindow(O001_L1_Assembly_D5_Night)_:
+1 Finish(O001_L1_Assembly)
+120.0 ShiftAssign(O001_L1_Assembly_D5_Night)
<= 240.0

c_u_C_TIME3_FinishInWindow(O002_L1_Cutting_D1_Morning)_:
+1 Finish(O002_L1_Cutting)
+120.0 ShiftAssign(O002_L1_Cutting_D1_Morning)
<= 128.0

c_u_C_TIME3_FinishInWindow(O002_L1_Cutting_D1_Afternoon)_:
+1 Finish(O002_L1_Cutting)
+120.0 ShiftAssign(O002_L1_Cutting_D1_Afternoon)
<= 136.0

c_u_C_TIME3_FinishInWindow(O002_L1_Cutting_D1_Night)_:
+1 Finish(O002_L1_Cutting)
+120.0 ShiftAssign(O002_L1_Cutting_D1_Night)
<= 144.0

c_u_C_TIME3_FinishInWindow(O002_L1_Cutting_D2_Morning)_:
+1 Finish(O002_L1_Cutting)
+120.0 ShiftAssign(O002_L1_Cutting_D2_Morning)
<= 152.0

c_u_C_TIME3_FinishInWindow(O002_L1_Cutting_D2_Afternoon)_:
+1 Finish(O002_L1_Cutting)
+120.0 ShiftAssign(O002_L1_Cutting_D2_Afternoon)
<= 160.0

c_u_C_TIME3_FinishInWindow(O002_L1_Cutting_D2_Night)_:
+1 Finish(O002_L1_Cutting)
+120.0 ShiftAssign(O002_L1_Cutting_D2_Night)
<= 168.0

c_u_C_TIME3_FinishInWindow(O002_L1_Cutting_D3_Morning)_:
+1 Finish(O002_L1_Cutting)
+120.0 ShiftAssign(O002_L1_Cutting_D3_Morning)
<= 176.0

c_u_C_TIME3_FinishInWindow(O002_L1_Cutting_D3_Afternoon)_:
+1 Finish(O002_L1_Cutting)
+120.0 ShiftAssign(O002_L1_Cutting_D3_Afternoon)
<= 184.0

c_u_C_TIME3_FinishInWindow(O002_L1_Cutting_D3_Night)_:
+1 Finish(O002_L1_Cutting)
+120.0 ShiftAssign(O002_L1_Cutting_D3_Night)
<= 192.0

c_u_C_TIME3_FinishInWindow(O002_L1_Cutting_D4_Morning)_:
+1 Finish(O002_L1_Cutting)
+120.0 ShiftAssign(O002_L1_Cutting_D4_Morning)
<= 200.0

c_u_C_TIME3_FinishInWindow(O002_L1_Cutting_D4_Afternoon)_:
+1 Finish(O002_L1_Cutting)
+120.0 ShiftAssign(O002_L1_Cutting_D4_Afternoon)
<= 208.0

c_u_C_TIME3_FinishInWindow(O002_L1_Cutting_D4_Night)_:
+1 Finish(O002_L1_Cutting)
+120.0 ShiftAssign(O002_L1_Cutting_D4_Night)
<= 216.0

c_u_C_TIME3_FinishInWindow(O002_L1_Cutting_D5_Morning)_:
+1 Finish(O002_L1_Cutting)
+120.0 ShiftAssign(O002_L1_Cutting_D5_Morning)
<= 224.0

c_u_C_TIME3_FinishInWindow(O002_L1_Cutting_D5_Afternoon)_:
+1 Finish(O002_L1_Cutting)
+120.0 ShiftAssign(O002_L1_Cutting_D5_Afternoon)
<= 232.0

c_u_C_TIME3_FinishInWindow(O002_L1_Cutting_D5_Night)_:
+1 Finish(O002_L1_Cutting)
+120.0 ShiftAssign(O002_L1_Cutting_D5_Night)
<= 240.0

c_u_C_TIME3_FinishInWindow(O002_L1_Assembly_D1_Morning)_:
+1 Finish(O002_L1_Assembly)
+120.0 ShiftAssign(O002_L1_Assembly_D1_Morning)
<= 128.0

c_u_C_TIME3_FinishInWindow(O002_L1_Assembly_D1_Afternoon)_:
+1 Finish(O002_L1_Assembly)
+120.0 ShiftAssign(O002_L1_Assembly_D1_Afternoon)
<= 136.0

c_u_C_TIME3_FinishInWindow(O002_L1_Assembly_D1_Night)_:
+1 Finish(O002_L1_Assembly)
+120.0 ShiftAssign(O002_L1_Assembly_D1_Night)
<= 144.0

c_u_C_TIME3_FinishInWindow(O002_L1_Assembly_D2_Morning)_:
+1 Finish(O002_L1_Assembly)
+120.0 ShiftAssign(O002_L1_Assembly_D2_Morning)
<= 152.0

c_u_C_TIME3_FinishInWindow(O002_L1_Assembly_D2_Afternoon)_:
+1 Finish(O002_L1_Assembly)
+120.0 ShiftAssign(O002_L1_Assembly_D2_Afternoon)
<= 160.0

c_u_C_TIME3_FinishInWindow(O002_L1_Assembly_D2_Night)_:
+1 Finish(O002_L1_Assembly)
+120.0 ShiftAssign(O002_L1_Assembly_D2_Night)
<= 168.0

c_u_C_TIME3_FinishInWindow(O002_L1_Assembly_D3_Morning)_:
+1 Finish(O002_L1_Assembly)
+120.0 ShiftAssign(O002_L1_Assembly_D3_Morning)
<= 176.0

c_u_C_TIME3_FinishInWindow(O002_L1_Assembly_D3_Afternoon)_:
+1 Finish(O002_L1_Assembly)
+120.0 ShiftAssign(O002_L1_Assembly_D3_Afternoon)
<= 184.0

c_u_C_TIME3_FinishInWindow(O002_L1_Assembly_D3_Night)_:
+1 Finish(O002_L1_Assembly)
+120.0 ShiftAssign(O002_L1_Assembly_D3_Night)
<= 192.0

c_u_C_TIME3_FinishInWindow(O002_L1_Assembly_D4_Morning)_:
+1 Finish(O002_L1_Assembly)
+120.0 ShiftAssign(O002_L1_Assembly_D4_Morning)
<= 200.0

c_u_C_TIME3_FinishInWindow(O002_L1_Assembly_D4_Afternoon)_:
+1 Finish(O002_L1_Assembly)
+120.0 ShiftAssign(O002_L1_Assembly_D4_Afternoon)
<= 208.0

c_u_C_TIME3_FinishInWindow(O002_L1_Assembly_D4_Night)_:
+1 Finish(O002_L1_Assembly)
+120.0 ShiftAssign(O002_L1_Assembly_D4_Night)
<= 216.0

c_u_C_TIME3_FinishInWindow(O002_L1_Assembly_D5_Morning)_:
+1 Finish(O002_L1_Assembly)
+120.0 ShiftAssign(O002_L1_Assembly_D5_Morning)
<= 224.0

c_u_C_TIME3_FinishInWindow(O002_L1_Assembly_D5_Afternoon)_:
+1 Finish(O002_L1_Assembly)
+120.0 ShiftAssign(O002_L1_Assembly_D5_Afternoon)
<= 232.0

c_u_C_TIME3_FinishInWindow(O002_L1_Assembly_D5_Night)_:
+1 Finish(O002_L1_Assembly)
+120.0 ShiftAssign(O002_L1_Assembly_D5_Night)
<= 240.0

c_u_C_TIME3_FinishInWindow(O003_L1_Cutting_D1_Morning)_:
+1 Finish(O003_L1_Cutting)
+120.0 ShiftAssign(O003_L1_Cutting_D1_Morning)
<= 128.0

c_u_C_TIME3_FinishInWindow(O003_L1_Cutting_D1_Afternoon)_:
+1 Finish(O003_L1_Cutting)
+120.0 ShiftAssign(O003_L1_Cutting_D1_Afternoon)
<= 136.0

c_u_C_TIME3_FinishInWindow(O003_L1_Cutting_D1_Night)_:
+1 Finish(O003_L1_Cutting)
+120.0 ShiftAssign(O003_L1_Cutting_D1_Night)
<= 144.0

c_u_C_TIME3_FinishInWindow(O003_L1_Cutting_D2_Morning)_:
+1 Finish(O003_L1_Cutting)
+120.0 ShiftAssign(O003_L1_Cutting_D2_Morning)
<= 152.0

c_u_C_TIME3_FinishInWindow(O003_L1_Cutting_D2_Afternoon)_:
+1 Finish(O003_L1_Cutting)
+120.0 ShiftAssign(O003_L1_Cutting_D2_Afternoon)
<= 160.0

c_u_C_TIME3_FinishInWindow(O003_L1_Cutting_D2_Night)_:
+1 Finish(O003_L1_Cutting)
+120.0 ShiftAssign(O003_L1_Cutting_D2_Night)
<= 168.0

c_u_C_TIME3_FinishInWindow(O003_L1_Cutting_D3_Morning)_:
+1 Finish(O003_L1_Cutting)
+120.0 ShiftAssign(O003_L1_Cutting_D3_Morning)
<= 176.0

c_u_C_TIME3_FinishInWindow(O003_L1_Cutting_D3_Afternoon)_:
+1 Finish(O003_L1_Cutting)
+120.0 ShiftAssign(O003_L1_Cutting_D3_Afternoon)
<= 184.0

c_u_C_TIME3_FinishInWindow(O003_L1_Cutting_D3_Night)_:
+1 Finish(O003_L1_Cutting)
+120.0 ShiftAssign(O003_L1_Cutting_D3_Night)
<= 192.0

c_u_C_TIME3_FinishInWindow(O003_L1_Cutting_D4_Morning)_:
+1 Finish(O003_L1_Cutting)
+120.0 ShiftAssign(O003_L1_Cutting_D4_Morning)
<= 200.0

c_u_C_TIME3_FinishInWindow(O003_L1_Cutting_D4_Afternoon)_:
+1 Finish(O003_L1_Cutting)
+120.0 ShiftAssign(O003_L1_Cutting_D4_Afternoon)
<= 208.0

c_u_C_TIME3_FinishInWindow(O003_L1_Cutting_D4_Night)_:
+1 Finish(O003_L1_Cutting)
+120.0 ShiftAssign(O003_L1_Cutting_D4_Night)
<= 216.0

c_u_C_TIME3_FinishInWindow(O003_L1_Cutting_D5_Morning)_:
+1 Finish(O003_L1_Cutting)
+120.0 ShiftAssign(O003_L1_Cutting_D5_Morning)
<= 224.0

c_u_C_TIME3_FinishInWindow(O003_L1_Cutting_D5_Afternoon)_:
+1 Finish(O003_L1_Cutting)
+120.0 ShiftAssign(O003_L1_Cutting_D5_Afternoon)
<= 232.0

c_u_C_TIME3_FinishInWindow(O003_L1_Cutting_D5_Night)_:
+1 Finish(O003_L1_Cutting)
+120.0 ShiftAssign(O003_L1_Cutting_D5_Night)
<= 240.0

c_u_C_TIME3_FinishInWindow(O003_L1_Assembly_D1_Morning)_:
+1 Finish(O003_L1_Assembly)
+120.0 ShiftAssign(O003_L1_Assembly_D1_Morning)
<= 128.0

c_u_C_TIME3_FinishInWindow(O003_L1_Assembly_D1_Afternoon)_:
+1 Finish(O003_L1_Assembly)
+120.0 ShiftAssign(O003_L1_Assembly_D1_Afternoon)
<= 136.0

c_u_C_TIME3_FinishInWindow(O003_L1_Assembly_D1_Night)_:
+1 Finish(O003_L1_Assembly)
+120.0 ShiftAssign(O003_L1_Assembly_D1_Night)
<= 144.0

c_u_C_TIME3_FinishInWindow(O003_L1_Assembly_D2_Morning)_:
+1 Finish(O003_L1_Assembly)
+120.0 ShiftAssign(O003_L1_Assembly_D2_Morning)
<= 152.0

c_u_C_TIME3_FinishInWindow(O003_L1_Assembly_D2_Afternoon)_:
+1 Finish(O003_L1_Assembly)
+120.0 ShiftAssign(O003_L1_Assembly_D2_Afternoon)
<= 160.0

c_u_C_TIME3_FinishInWindow(O003_L1_Assembly_D2_Night)_:
+1 Finish(O003_L1_Assembly)
+120.0 ShiftAssign(O003_L1_Assembly_D2_Night)
<= 168.0

c_u_C_TIME3_FinishInWindow(O003_L1_Assembly_D3_Morning)_:
+1 Finish(O003_L1_Assembly)
+120.0 ShiftAssign(O003_L1_Assembly_D3_Morning)
<= 176.0

c_u_C_TIME3_FinishInWindow(O003_L1_Assembly_D3_Afternoon)_:
+1 Finish(O003_L1_Assembly)
+120.0 ShiftAssign(O003_L1_Assembly_D3_Afternoon)
<= 184.0

c_u_C_TIME3_FinishInWindow(O003_L1_Assembly_D3_Night)_:
+1 Finish(O003_L1_Assembly)
+120.0 ShiftAssign(O003_L1_Assembly_D3_Night)
<= 192.0

c_u_C_TIME3_FinishInWindow(O003_L1_Assembly_D4_Morning)_:
+1 Finish(O003_L1_Assembly)
+120.0 ShiftAssign(O003_L1_Assembly_D4_Morning)
<= 200.0

c_u_C_TIME3_FinishInWindow(O003_L1_Assembly_D4_Afternoon)_:
+1 Finish(O003_L1_Assembly)
+120.0 ShiftAssign(O003_L1_Assembly_D4_Afternoon)
<= 208.0

c_u_C_TIME3_FinishInWindow(O003_L1_Assembly_D4_Night)_:
+1 Finish(O003_L1_Assembly)
+120.0 ShiftAssign(O003_L1_Assembly_D4_Night)
<= 216.0

c_u_C_TIME3_FinishInWindow(O003_L1_Assembly_D5_Morning)_:
+1 Finish(O003_L1_Assembly)
+120.0 ShiftAssign(O003_L1_Assembly_D5_Morning)
<= 224.0

c_u_C_TIME3_FinishInWindow(O003_L1_Assembly_D5_Afternoon)_:
+1 Finish(O003_L1_Assembly)
+120.0 ShiftAssign(O003_L1_Assembly_D5_Afternoon)
<= 232.0

c_u_C_TIME3_FinishInWindow(O003_L1_Assembly_D5_Night)_:
+1 Finish(O003_L1_Assembly)
+120.0 ShiftAssign(O003_L1_Assembly_D5_Night)
<= 240.0

c_u_C_TIME3_FinishInWindow(O004_L1_Cutting_D1_Morning)_:
+1 Finish(O004_L1_Cutting)
+120.0 ShiftAssign(O004_L1_Cutting_D1_Morning)
<= 128.0

c_u_C_TIME3_FinishInWindow(O004_L1_Cutting_D1_Afternoon)_:
+1 Finish(O004_L1_Cutting)
+120.0 ShiftAssign(O004_L1_Cutting_D1_Afternoon)
<= 136.0

c_u_C_TIME3_FinishInWindow(O004_L1_Cutting_D1_Night)_:
+1 Finish(O004_L1_Cutting)
+120.0 ShiftAssign(O004_L1_Cutting_D1_Night)
<= 144.0

c_u_C_TIME3_FinishInWindow(O004_L1_Cutting_D2_Morning)_:
+1 Finish(O004_L1_Cutting)
+120.0 ShiftAssign(O004_L1_Cutting_D2_Morning)
<= 152.0

c_u_C_TIME3_FinishInWindow(O004_L1_Cutting_D2_Afternoon)_:
+1 Finish(O004_L1_Cutting)
+120.0 ShiftAssign(O004_L1_Cutting_D2_Afternoon)
<= 160.0

c_u_C_TIME3_FinishInWindow(O004_L1_Cutting_D2_Night)_:
+1 Finish(O004_L1_Cutting)
+120.0 ShiftAssign(O004_L1_Cutting_D2_Night)
<= 168.0

c_u_C_TIME3_FinishInWindow(O004_L1_Cutting_D3_Morning)_:
+1 Finish(O004_L1_Cutting)
+120.0 ShiftAssign(O004_L1_Cutting_D3_Morning)
<= 176.0

c_u_C_TIME3_FinishInWindow(O004_L1_Cutting_D3_Afternoon)_:
+1 Finish(O004_L1_Cutting)
+120.0 ShiftAssign(O004_L1_Cutting_D3_Afternoon)
<= 184.0

c_u_C_TIME3_FinishInWindow(O004_L1_Cutting_D3_Night)_:
+1 Finish(O004_L1_Cutting)
+120.0 ShiftAssign(O004_L1_Cutting_D3_Night)
<= 192.0

c_u_C_TIME3_FinishInWindow(O004_L1_Cutting_D4_Morning)_:
+1 Finish(O004_L1_Cutting)
+120.0 ShiftAssign(O004_L1_Cutting_D4_Morning)
<= 200.0

c_u_C_TIME3_FinishInWindow(O004_L1_Cutting_D4_Afternoon)_:
+1 Finish(O004_L1_Cutting)
+120.0 ShiftAssign(O004_L1_Cutting_D4_Afternoon)
<= 208.0

c_u_C_TIME3_FinishInWindow(O004_L1_Cutting_D4_Night)_:
+1 Finish(O004_L1_Cutting)
+120.0 ShiftAssign(O004_L1_Cutting_D4_Night)
<= 216.0

c_u_C_TIME3_FinishInWindow(O004_L1_Cutting_D5_Morning)_:
+1 Finish(O004_L1_Cutting)
+120.0 ShiftAssign(O004_L1_Cutting_D5_Morning)
<= 224.0

c_u_C_TIME3_FinishInWindow(O004_L1_Cutting_D5_Afternoon)_:
+1 Finish(O004_L1_Cutting)
+120.0 ShiftAssign(O004_L1_Cutting_D5_Afternoon)
<= 232.0

c_u_C_TIME3_FinishInWindow(O004_L1_Cutting_D5_Night)_:
+1 Finish(O004_L1_Cutting)
+120.0 ShiftAssign(O004_L1_Cutting_D5_Night)
<= 240.0

c_u_C_TIME3_FinishInWindow(O004_L1_Assembly_D1_Morning)_:
+1 Finish(O004_L1_Assembly)
+120.0 ShiftAssign(O004_L1_Assembly_D1_Morning)
<= 128.0

c_u_C_TIME3_FinishInWindow(O004_L1_Assembly_D1_Afternoon)_:
+1 Finish(O004_L1_Assembly)
+120.0 ShiftAssign(O004_L1_Assembly_D1_Afternoon)
<= 136.0

c_u_C_TIME3_FinishInWindow(O004_L1_Assembly_D1_Night)_:
+1 Finish(O004_L1_Assembly)
+120.0 ShiftAssign(O004_L1_Assembly_D1_Night)
<= 144.0

c_u_C_TIME3_FinishInWindow(O004_L1_Assembly_D2_Morning)_:
+1 Finish(O004_L1_Assembly)
+120.0 ShiftAssign(O004_L1_Assembly_D2_Morning)
<= 152.0

c_u_C_TIME3_FinishInWindow(O004_L1_Assembly_D2_Afternoon)_:
+1 Finish(O004_L1_Assembly)
+120.0 ShiftAssign(O004_L1_Assembly_D2_Afternoon)
<= 160.0

c_u_C_TIME3_FinishInWindow(O004_L1_Assembly_D2_Night)_:
+1 Finish(O004_L1_Assembly)
+120.0 ShiftAssign(O004_L1_Assembly_D2_Night)
<= 168.0

c_u_C_TIME3_FinishInWindow(O004_L1_Assembly_D3_Morning)_:
+1 Finish(O004_L1_Assembly)
+120.0 ShiftAssign(O004_L1_Assembly_D3_Morning)
<= 176.0

c_u_C_TIME3_FinishInWindow(O004_L1_Assembly_D3_Afternoon)_:
+1 Finish(O004_L1_Assembly)
+120.0 ShiftAssign(O004_L1_Assembly_D3_Afternoon)
<= 184.0

c_u_C_TIME3_FinishInWindow(O004_L1_Assembly_D3_Night)_:
+1 Finish(O004_L1_Assembly)
+120.0 ShiftAssign(O004_L1_Assembly_D3_Night)
<= 192.0

c_u_C_TIME3_FinishInWindow(O004_L1_Assembly_D4_Morning)_:
+1 Finish(O004_L1_Assembly)
+120.0 ShiftAssign(O004_L1_Assembly_D4_Morning)
<= 200.0

c_u_C_TIME3_FinishInWindow(O004_L1_Assembly_D4_Afternoon)_:
+1 Finish(O004_L1_Assembly)
+120.0 ShiftAssign(O004_L1_Assembly_D4_Afternoon)
<= 208.0

c_u_C_TIME3_FinishInWindow(O004_L1_Assembly_D4_Night)_:
+1 Finish(O004_L1_Assembly)
+120.0 ShiftAssign(O004_L1_Assembly_D4_Night)
<= 216.0

c_u_C_TIME3_FinishInWindow(O004_L1_Assembly_D5_Morning)_:
+1 Finish(O004_L1_Assembly)
+120.0 ShiftAssign(O004_L1_Assembly_D5_Morning)
<= 224.0

c_u_C_TIME3_FinishInWindow(O004_L1_Assembly_D5_Afternoon)_:
+1 Finish(O004_L1_Assembly)
+120.0 ShiftAssign(O004_L1_Assembly_D5_Afternoon)
<= 232.0

c_u_C_TIME3_FinishInWindow(O004_L1_Assembly_D5_Night)_:
+1 Finish(O004_L1_Assembly)
+120.0 ShiftAssign(O004_L1_Assembly_D5_Night)
<= 240.0

c_u_C_TIME3_FinishInWindow(O004_L2_Cutting_D1_Morning)_:
+1 Finish(O004_L2_Cutting)
+120.0 ShiftAssign(O004_L2_Cutting_D1_Morning)
<= 128.0

c_u_C_TIME3_FinishInWindow(O004_L2_Cutting_D1_Afternoon)_:
+1 Finish(O004_L2_Cutting)
+120.0 ShiftAssign(O004_L2_Cutting_D1_Afternoon)
<= 136.0

c_u_C_TIME3_FinishInWindow(O004_L2_Cutting_D1_Night)_:
+1 Finish(O004_L2_Cutting)
+120.0 ShiftAssign(O004_L2_Cutting_D1_Night)
<= 144.0

c_u_C_TIME3_FinishInWindow(O004_L2_Cutting_D2_Morning)_:
+1 Finish(O004_L2_Cutting)
+120.0 ShiftAssign(O004_L2_Cutting_D2_Morning)
<= 152.0

c_u_C_TIME3_FinishInWindow(O004_L2_Cutting_D2_Afternoon)_:
+1 Finish(O004_L2_Cutting)
+120.0 ShiftAssign(O004_L2_Cutting_D2_Afternoon)
<= 160.0

c_u_C_TIME3_FinishInWindow(O004_L2_Cutting_D2_Night)_:
+1 Finish(O004_L2_Cutting)
+120.0 ShiftAssign(O004_L2_Cutting_D2_Night)
<= 168.0

c_u_C_TIME3_FinishInWindow(O004_L2_Cutting_D3_Morning)_:
+1 Finish(O004_L2_Cutting)
+120.0 ShiftAssign(O004_L2_Cutting_D3_Morning)
<= 176.0

c_u_C_TIME3_FinishInWindow(O004_L2_Cutting_D3_Afternoon)_:
+1 Finish(O004_L2_Cutting)
+120.0 ShiftAssign(O004_L2_Cutting_D3_Afternoon)
<= 184.0

c_u_C_TIME3_FinishInWindow(O004_L2_Cutting_D3_Night)_:
+1 Finish(O004_L2_Cutting)
+120.0 ShiftAssign(O004_L2_Cutting_D3_Night)
<= 192.0

c_u_C_TIME3_FinishInWindow(O004_L2_Cutting_D4_Morning)_:
+1 Finish(O004_L2_Cutting)
+120.0 ShiftAssign(O004_L2_Cutting_D4_Morning)
<= 200.0

c_u_C_TIME3_FinishInWindow(O004_L2_Cutting_D4_Afternoon)_:
+1 Finish(O004_L2_Cutting)
+120.0 ShiftAssign(O004_L2_Cutting_D4_Afternoon)
<= 208.0

c_u_C_TIME3_FinishInWindow(O004_L2_Cutting_D4_Night)_:
+1 Finish(O004_L2_Cutting)
+120.0 ShiftAssign(O004_L2_Cutting_D4_Night)
<= 216.0

c_u_C_TIME3_FinishInWindow(O004_L2_Cutting_D5_Morning)_:
+1 Finish(O004_L2_Cutting)
+120.0 ShiftAssign(O004_L2_Cutting_D5_Morning)
<= 224.0

c_u_C_TIME3_FinishInWindow(O004_L2_Cutting_D5_Afternoon)_:
+1 Finish(O004_L2_Cutting)
+120.0 ShiftAssign(O004_L2_Cutting_D5_Afternoon)
<= 232.0

c_u_C_TIME3_FinishInWindow(O004_L2_Cutting_D5_Night)_:
+1 Finish(O004_L2_Cutting)
+120.0 ShiftAssign(O004_L2_Cutting_D5_Night)
<= 240.0

c_u_C_TIME3_FinishInWindow(O004_L2_Assembly_D1_Morning)_:
+1 Finish(O004_L2_Assembly)
+120.0 ShiftAssign(O004_L2_Assembly_D1_Morning)
<= 128.0

c_u_C_TIME3_FinishInWindow(O004_L2_Assembly_D1_Afternoon)_:
+1 Finish(O004_L2_Assembly)
+120.0 ShiftAssign(O004_L2_Assembly_D1_Afternoon)
<= 136.0

c_u_C_TIME3_FinishInWindow(O004_L2_Assembly_D1_Night)_:
+1 Finish(O004_L2_Assembly)
+120.0 ShiftAssign(O004_L2_Assembly_D1_Night)
<= 144.0

c_u_C_TIME3_FinishInWindow(O004_L2_Assembly_D2_Morning)_:
+1 Finish(O004_L2_Assembly)
+120.0 ShiftAssign(O004_L2_Assembly_D2_Morning)
<= 152.0

c_u_C_TIME3_FinishInWindow(O004_L2_Assembly_D2_Afternoon)_:
+1 Finish(O004_L2_Assembly)
+120.0 ShiftAssign(O004_L2_Assembly_D2_Afternoon)
<= 160.0

c_u_C_TIME3_FinishInWindow(O004_L2_Assembly_D2_Night)_:
+1 Finish(O004_L2_Assembly)
+120.0 ShiftAssign(O004_L2_Assembly_D2_Night)
<= 168.0

c_u_C_TIME3_FinishInWindow(O004_L2_Assembly_D3_Morning)_:
+1 Finish(O004_L2_Assembly)
+120.0 ShiftAssign(O004_L2_Assembly_D3_Morning)
<= 176.0

c_u_C_TIME3_FinishInWindow(O004_L2_Assembly_D3_Afternoon)_:
+1 Finish(O004_L2_Assembly)
+120.0 ShiftAssign(O004_L2_Assembly_D3_Afternoon)
<= 184.0

c_u_C_TIME3_FinishInWindow(O004_L2_Assembly_D3_Night)_:
+1 Finish(O004_L2_Assembly)
+120.0 ShiftAssign(O004_L2_Assembly_D3_Night)
<= 192.0

c_u_C_TIME3_FinishInWindow(O004_L2_Assembly_D4_Morning)_:
+1 Finish(O004_L2_Assembly)
+120.0 ShiftAssign(O004_L2_Assembly_D4_Morning)
<= 200.0

c_u_C_TIME3_FinishInWindow(O004_L2_Assembly_D4_Afternoon)_:
+1 Finish(O004_L2_Assembly)
+120.0 ShiftAssign(O004_L2_Assembly_D4_Afternoon)
<= 208.0

c_u_C_TIME3_FinishInWindow(O004_L2_Assembly_D4_Night)_:
+1 Finish(O004_L2_Assembly)
+120.0 ShiftAssign(O004_L2_Assembly_D4_Night)
<= 216.0

c_u_C_TIME3_FinishInWindow(O004_L2_Assembly_D5_Morning)_:
+1 Finish(O004_L2_Assembly)
+120.0 ShiftAssign(O004_L2_Assembly_D5_Morning)
<= 224.0

c_u_C_TIME3_FinishInWindow(O004_L2_Assembly_D5_Afternoon)_:
+1 Finish(O004_L2_Assembly)
+120.0 ShiftAssign(O004_L2_Assembly_D5_Afternoon)
<= 232.0

c_u_C_TIME3_FinishInWindow(O004_L2_Assembly_D5_Night)_:
+1 Finish(O004_L2_Assembly)
+120.0 ShiftAssign(O004_L2_Assembly_D5_Night)
<= 240.0

c_u_C_TIME3_FinishInWindow(O005_L1_Cutting_D1_Morning)_:
+1 Finish(O005_L1_Cutting)
+120.0 ShiftAssign(O005_L1_Cutting_D1_Morning)
<= 128.0

c_u_C_TIME3_FinishInWindow(O005_L1_Cutting_D1_Afternoon)_:
+1 Finish(O005_L1_Cutting)
+120.0 ShiftAssign(O005_L1_Cutting_D1_Afternoon)
<= 136.0

c_u_C_TIME3_FinishInWindow(O005_L1_Cutting_D1_Night)_:
+1 Finish(O005_L1_Cutting)
+120.0 ShiftAssign(O005_L1_Cutting_D1_Night)
<= 144.0

c_u_C_TIME3_FinishInWindow(O005_L1_Cutting_D2_Morning)_:
+1 Finish(O005_L1_Cutting)
+120.0 ShiftAssign(O005_L1_Cutting_D2_Morning)
<= 152.0

c_u_C_TIME3_FinishInWindow(O005_L1_Cutting_D2_Afternoon)_:
+1 Finish(O005_L1_Cutting)
+120.0 ShiftAssign(O005_L1_Cutting_D2_Afternoon)
<= 160.0

c_u_C_TIME3_FinishInWindow(O005_L1_Cutting_D2_Night)_:
+1 Finish(O005_L1_Cutting)
+120.0 ShiftAssign(O005_L1_Cutting_D2_Night)
<= 168.0

c_u_C_TIME3_FinishInWindow(O005_L1_Cutting_D3_Morning)_:
+1 Finish(O005_L1_Cutting)
+120.0 ShiftAssign(O005_L1_Cutting_D3_Morning)
<= 176.0

c_u_C_TIME3_FinishInWindow(O005_L1_Cutting_D3_Afternoon)_:
+1 Finish(O005_L1_Cutting)
+120.0 ShiftAssign(O005_L1_Cutting_D3_Afternoon)
<= 184.0

c_u_C_TIME3_FinishInWindow(O005_L1_Cutting_D3_Night)_:
+1 Finish(O005_L1_Cutting)
+120.0 ShiftAssign(O005_L1_Cutting_D3_Night)
<= 192.0

c_u_C_TIME3_FinishInWindow(O005_L1_Cutting_D4_Morning)_:
+1 Finish(O005_L1_Cutting)
+120.0 ShiftAssign(O005_L1_Cutting_D4_Morning)
<= 200.0

c_u_C_TIME3_FinishInWindow(O005_L1_Cutting_D4_Afternoon)_:
+1 Finish(O005_L1_Cutting)
+120.0 ShiftAssign(O005_L1_Cutting_D4_Afternoon)
<= 208.0

c_u_C_TIME3_FinishInWindow(O005_L1_Cutting_D4_Night)_:
+1 Finish(O005_L1_Cutting)
+120.0 ShiftAssign(O005_L1_Cutting_D4_Night)
<= 216.0

c_u_C_TIME3_FinishInWindow(O005_L1_Cutting_D5_Morning)_:
+1 Finish(O005_L1_Cutting)
+120.0 ShiftAssign(O005_L1_Cutting_D5_Morning)
<= 224.0

c_u_C_TIME3_FinishInWindow(O005_L1_Cutting_D5_Afternoon)_:
+1 Finish(O005_L1_Cutting)
+120.0 ShiftAssign(O005_L1_Cutting_D5_Afternoon)
<= 232.0

c_u_C_TIME3_FinishInWindow(O005_L1_Cutting_D5_Night)_:
+1 Finish(O005_L1_Cutting)
+120.0 ShiftAssign(O005_L1_Cutting_D5_Night)
<= 240.0

c_u_C_TIME3_FinishInWindow(O005_L1_Assembly_D1_Morning)_:
+1 Finish(O005_L1_Assembly)
+120.0 ShiftAssign(O005_L1_Assembly_D1_Morning)
<= 128.0

c_u_C_TIME3_FinishInWindow(O005_L1_Assembly_D1_Afternoon)_:
+1 Finish(O005_L1_Assembly)
+120.0 ShiftAssign(O005_L1_Assembly_D1_Afternoon)
<= 136.0

c_u_C_TIME3_FinishInWindow(O005_L1_Assembly_D1_Night)_:
+1 Finish(O005_L1_Assembly)
+120.0 ShiftAssign(O005_L1_Assembly_D1_Night)
<= 144.0

c_u_C_TIME3_FinishInWindow(O005_L1_Assembly_D2_Morning)_:
+1 Finish(O005_L1_Assembly)
+120.0 ShiftAssign(O005_L1_Assembly_D2_Morning)
<= 152.0

c_u_C_TIME3_FinishInWindow(O005_L1_Assembly_D2_Afternoon)_:
+1 Finish(O005_L1_Assembly)
+120.0 ShiftAssign(O005_L1_Assembly_D2_Afternoon)
<= 160.0

c_u_C_TIME3_FinishInWindow(O005_L1_Assembly_D2_Night)_:
+1 Finish(O005_L1_Assembly)
+120.0 ShiftAssign(O005_L1_Assembly_D2_Night)
<= 168.0

c_u_C_TIME3_FinishInWindow(O005_L1_Assembly_D3_Morning)_:
+1 Finish(O005_L1_Assembly)
+120.0 ShiftAssign(O005_L1_Assembly_D3_Morning)
<= 176.0

c_u_C_TIME3_FinishInWindow(O005_L1_Assembly_D3_Afternoon)_:
+1 Finish(O005_L1_Assembly)
+120.0 ShiftAssign(O005_L1_Assembly_D3_Afternoon)
<= 184.0

c_u_C_TIME3_FinishInWindow(O005_L1_Assembly_D3_Night)_:
+1 Finish(O005_L1_Assembly)
+120.0 ShiftAssign(O005_L1_Assembly_D3_Night)
<= 192.0

c_u_C_TIME3_FinishInWindow(O005_L1_Assembly_D4_Morning)_:
+1 Finish(O005_L1_Assembly)
+120.0 ShiftAssign(O005_L1_Assembly_D4_Morning)
<= 200.0

c_u_C_TIME3_FinishInWindow(O005_L1_Assembly_D4_Afternoon)_:
+1 Finish(O005_L1_Assembly)
+120.0 ShiftAssign(O005_L1_Assembly_D4_Afternoon)
<= 208.0

c_u_C_TIME3_FinishInWindow(O005_L1_Assembly_D4_Night)_:
+1 Finish(O005_L1_Assembly)
+120.0 ShiftAssign(O005_L1_Assembly_D4_Night)
<= 216.0

c_u_C_TIME3_FinishInWindow(O005_L1_Assembly_D5_Morning)_:
+1 Finish(O005_L1_Assembly)
+120.0 ShiftAssign(O005_L1_Assembly_D5_Morning)
<= 224.0

c_u_C_TIME3_FinishInWindow(O005_L1_Assembly_D5_Afternoon)_:
+1 Finish(O005_L1_Assembly)
+120.0 ShiftAssign(O005_L1_Assembly_D5_Afternoon)
<= 232.0

c_u_C_TIME3_FinishInWindow(O005_L1_Assembly_D5_Night)_:
+1 Finish(O005_L1_Assembly)
+120.0 ShiftAssign(O005_L1_Assembly_D5_Night)
<= 240.0

c_u_C_TIME3_FinishInWindow(O006_L1_Cutting_D1_Morning)_:
+1 Finish(O006_L1_Cutting)
+120.0 ShiftAssign(O006_L1_Cutting_D1_Morning)
<= 128.0

c_u_C_TIME3_FinishInWindow(O006_L1_Cutting_D1_Afternoon)_:
+1 Finish(O006_L1_Cutting)
+120.0 ShiftAssign(O006_L1_Cutting_D1_Afternoon)
<= 136.0

c_u_C_TIME3_FinishInWindow(O006_L1_Cutting_D1_Night)_:
+1 Finish(O006_L1_Cutting)
+120.0 ShiftAssign(O006_L1_Cutting_D1_Night)
<= 144.0

c_u_C_TIME3_FinishInWindow(O006_L1_Cutting_D2_Morning)_:
+1 Finish(O006_L1_Cutting)
+120.0 ShiftAssign(O006_L1_Cutting_D2_Morning)
<= 152.0

c_u_C_TIME3_FinishInWindow(O006_L1_Cutting_D2_Afternoon)_:
+1 Finish(O006_L1_Cutting)
+120.0 ShiftAssign(O006_L1_Cutting_D2_Afternoon)
<= 160.0

c_u_C_TIME3_FinishInWindow(O006_L1_Cutting_D2_Night)_:
+1 Finish(O006_L1_Cutting)
+120.0 ShiftAssign(O006_L1_Cutting_D2_Night)
<= 168.0

c_u_C_TIME3_FinishInWindow(O006_L1_Cutting_D3_Morning)_:
+1 Finish(O006_L1_Cutting)
+120.0 ShiftAssign(O006_L1_Cutting_D3_Morning)
<= 176.0

c_u_C_TIME3_FinishInWindow(O006_L1_Cutting_D3_Afternoon)_:
+1 Finish(O006_L1_Cutting)
+120.0 ShiftAssign(O006_L1_Cutting_D3_Afternoon)
<= 184.0

c_u_C_TIME3_FinishInWindow(O006_L1_Cutting_D3_Night)_:
+1 Finish(O006_L1_Cutting)
+120.0 ShiftAssign(O006_L1_Cutting_D3_Night)
<= 192.0

c_u_C_TIME3_FinishInWindow(O006_L1_Cutting_D4_Morning)_:
+1 Finish(O006_L1_Cutting)
+120.0 ShiftAssign(O006_L1_Cutting_D4_Morning)
<= 200.0

c_u_C_TIME3_FinishInWindow(O006_L1_Cutting_D4_Afternoon)_:
+1 Finish(O006_L1_Cutting)
+120.0 ShiftAssign(O006_L1_Cutting_D4_Afternoon)
<= 208.0

c_u_C_TIME3_FinishInWindow(O006_L1_Cutting_D4_Night)_:
+1 Finish(O006_L1_Cutting)
+120.0 ShiftAssign(O006_L1_Cutting_D4_Night)
<= 216.0

c_u_C_TIME3_FinishInWindow(O006_L1_Cutting_D5_Morning)_:
+1 Finish(O006_L1_Cutting)
+120.0 ShiftAssign(O006_L1_Cutting_D5_Morning)
<= 224.0

c_u_C_TIME3_FinishInWindow(O006_L1_Cutting_D5_Afternoon)_:
+1 Finish(O006_L1_Cutting)
+120.0 ShiftAssign(O006_L1_Cutting_D5_Afternoon)
<= 232.0

c_u_C_TIME3_FinishInWindow(O006_L1_Cutting_D5_Night)_:
+1 Finish(O006_L1_Cutting)
+120.0 ShiftAssign(O006_L1_Cutting_D5_Night)
<= 240.0

c_u_C_TIME3_FinishInWindow(O006_L1_Assembly_D1_Morning)_:
+1 Finish(O006_L1_Assembly)
+120.0 ShiftAssign(O006_L1_Assembly_D1_Morning)
<= 128.0

c_u_C_TIME3_FinishInWindow(O006_L1_Assembly_D1_Afternoon)_:
+1 Finish(O006_L1_Assembly)
+120.0 ShiftAssign(O006_L1_Assembly_D1_Afternoon)
<= 136.0

c_u_C_TIME3_FinishInWindow(O006_L1_Assembly_D1_Night)_:
+1 Finish(O006_L1_Assembly)
+120.0 ShiftAssign(O006_L1_Assembly_D1_Night)
<= 144.0

c_u_C_TIME3_FinishInWindow(O006_L1_Assembly_D2_Morning)_:
+1 Finish(O006_L1_Assembly)
+120.0 ShiftAssign(O006_L1_Assembly_D2_Morning)
<= 152.0

c_u_C_TIME3_FinishInWindow(O006_L1_Assembly_D2_Afternoon)_:
+1 Finish(O006_L1_Assembly)
+120.0 ShiftAssign(O006_L1_Assembly_D2_Afternoon)
<= 160.0

c_u_C_TIME3_FinishInWindow(O006_L1_Assembly_D2_Night)_:
+1 Finish(O006_L1_Assembly)
+120.0 ShiftAssign(O006_L1_Assembly_D2_Night)
<= 168.0

c_u_C_TIME3_FinishInWindow(O006_L1_Assembly_D3_Morning)_:
+1 Finish(O006_L1_Assembly)
+120.0 ShiftAssign(O006_L1_Assembly_D3_Morning)
<= 176.0

c_u_C_TIME3_FinishInWindow(O006_L1_Assembly_D3_Afternoon)_:
+1 Finish(O006_L1_Assembly)
+120.0 ShiftAssign(O006_L1_Assembly_D3_Afternoon)
<= 184.0

c_u_C_TIME3_FinishInWindow(O006_L1_Assembly_D3_Night)_:
+1 Finish(O006_L1_Assembly)
+120.0 ShiftAssign(O006_L1_Assembly_D3_Night)
<= 192.0

c_u_C_TIME3_FinishInWindow(O006_L1_Assembly_D4_Morning)_:
+1 Finish(O006_L1_Assembly)
+120.0 ShiftAssign(O006_L1_Assembly_D4_Morning)
<= 200.0

c_u_C_TIME3_FinishInWindow(O006_L1_Assembly_D4_Afternoon)_:
+1 Finish(O006_L1_Assembly)
+120.0 ShiftAssign(O006_L1_Assembly_D4_Afternoon)
<= 208.0

c_u_C_TIME3_FinishInWindow(O006_L1_Assembly_D4_Night)_:
+1 Finish(O006_L1_Assembly)
+120.0 ShiftAssign(O006_L1_Assembly_D4_Night)
<= 216.0

c_u_C_TIME3_FinishInWindow(O006_L1_Assembly_D5_Morning)_:
+1 Finish(O006_L1_Assembly)
+120.0 ShiftAssign(O006_L1_Assembly_D5_Morning)
<= 224.0

c_u_C_TIME3_FinishInWindow(O006_L1_Assembly_D5_Afternoon)_:
+1 Finish(O006_L1_Assembly)
+120.0 ShiftAssign(O006_L1_Assembly_D5_Afternoon)
<= 232.0

c_u_C_TIME3_FinishInWindow(O006_L1_Assembly_D5_Night)_:
+1 Finish(O006_L1_Assembly)
+120.0 ShiftAssign(O006_L1_Assembly_D5_Night)
<= 240.0

c_u_C_TIME4_MaintenanceExclusion(O001_L1_Assembly_M02_D5_Morning)_:
+1 Assign(O001_L1_Assembly_M02)
+1 ShiftAssign(O001_L1_Assembly_D5_Morning)
<= 1

c_u_C_TIME4_MaintenanceExclusion(O002_L1_Assembly_M02_D5_Morning)_:
+1 Assign(O002_L1_Assembly_M02)
+1 ShiftAssign(O002_L1_Assembly_D5_Morning)
<= 1

c_u_C_TIME4_MaintenanceExclusion(O003_L1_Assembly_M02_D5_Morning)_:
+1 Assign(O003_L1_Assembly_M02)
+1 ShiftAssign(O003_L1_Assembly_D5_Morning)
<= 1

c_u_C_TIME4_MaintenanceExclusion(O004_L1_Assembly_M02_D5_Morning)_:
+1 Assign(O004_L1_Assembly_M02)
+1 ShiftAssign(O004_L1_Assembly_D5_Morning)
<= 1

c_u_C_TIME4_MaintenanceExclusion(O004_L2_Assembly_M02_D5_Morning)_:
+1 Assign(O004_L2_Assembly_M02)
+1 ShiftAssign(O004_L2_Assembly_D5_Morning)
<= 1

c_u_C_TIME4_MaintenanceExclusion(O005_L1_Assembly_M02_D5_Morning)_:
+1 Assign(O005_L1_Assembly_M02)
+1 ShiftAssign(O005_L1_Assembly_D5_Morning)
<= 1

c_u_C_TIME4_MaintenanceExclusion(O006_L1_Assembly_M02_D5_Morning)_:
+1 Assign(O006_L1_Assembly_M02)
+1 ShiftAssign(O006_L1_Assembly_D5_Morning)
<= 1

c_e_C_OPR1_OneOperatorPerBatch(O001_L1_Cutting)_:
-1 Assign(O001_L1_Cutting_M03)
+1 OpAssign(O001_L1_Cutting_OP02)
+1 OpAssign(O001_L1_Cutting_OP03)
+1 OpAssign(O001_L1_Cutting_OP04)
= 0

c_e_C_OPR1_OneOperatorPerBatch(O001_L1_Assembly)_:
-1 Assign(O001_L1_Assembly_M02)
+1 OpAssign(O001_L1_Assembly_OP01)
+1 OpAssign(O001_L1_Assembly_OP02)
+1 OpAssign(O001_L1_Assembly_OP04)
= 0

c_e_C_OPR1_OneOperatorPerBatch(O002_L1_Cutting)_:
-1 Assign(O002_L1_Cutting_M01)
+1 OpAssign(O002_L1_Cutting_OP01)
+1 OpAssign(O002_L1_Cutting_OP03)
+1 OpAssign(O002_L1_Cutting_OP04)
= 0

c_e_C_OPR1_OneOperatorPerBatch(O002_L1_Assembly)_:
-1 Assign(O002_L1_Assembly_M02)
+1 OpAssign(O002_L1_Assembly_OP01)
+1 OpAssign(O002_L1_Assembly_OP02)
+1 OpAssign(O002_L1_Assembly_OP04)
= 0

c_e_C_OPR1_OneOperatorPerBatch(O003_L1_Cutting)_:
-1 Assign(O003_L1_Cutting_M01)
+1 OpAssign(O003_L1_Cutting_OP01)
+1 OpAssign(O003_L1_Cutting_OP03)
+1 OpAssign(O003_L1_Cutting_OP04)
= 0

c_e_C_OPR1_OneOperatorPerBatch(O003_L1_Assembly)_:
-1 Assign(O003_L1_Assembly_M02)
+1 OpAssign(O003_L1_Assembly_OP01)
+1 OpAssign(O003_L1_Assembly_OP02)
+1 OpAssign(O003_L1_Assembly_OP04)
= 0

c_e_C_OPR1_OneOperatorPerBatch(O004_L1_Cutting)_:
-1 Assign(O004_L1_Cutting_M01)
+1 OpAssign(O004_L1_Cutting_OP01)
+1 OpAssign(O004_L1_Cutting_OP03)
+1 OpAssign(O004_L1_Cutting_OP04)
= 0

c_e_C_OPR1_OneOperatorPerBatch(O004_L1_Assembly)_:
-1 Assign(O004_L1_Assembly_M02)
+1 OpAssign(O004_L1_Assembly_OP01)
+1 OpAssign(O004_L1_Assembly_OP02)
+1 OpAssign(O004_L1_Assembly_OP04)
= 0

c_e_C_OPR1_OneOperatorPerBatch(O004_L2_Cutting)_:
-1 Assign(O004_L2_Cutting_M01)
+1 OpAssign(O004_L2_Cutting_OP01)
+1 OpAssign(O004_L2_Cutting_OP03)
+1 OpAssign(O004_L2_Cutting_OP04)
= 0

c_e_C_OPR1_OneOperatorPerBatch(O004_L2_Assembly)_:
-1 Assign(O004_L2_Assembly_M02)
+1 OpAssign(O004_L2_Assembly_OP01)
+1 OpAssign(O004_L2_Assembly_OP02)
+1 OpAssign(O004_L2_Assembly_OP04)
= 0

c_e_C_OPR1_OneOperatorPerBatch(O005_L1_Cutting)_:
-1 Assign(O005_L1_Cutting_M01)
+1 OpAssign(O005_L1_Cutting_OP01)
+1 OpAssign(O005_L1_Cutting_OP03)
+1 OpAssign(O005_L1_Cutting_OP04)
= 0

c_e_C_OPR1_OneOperatorPerBatch(O005_L1_Assembly)_:
-1 Assign(O005_L1_Assembly_M02)
+1 OpAssign(O005_L1_Assembly_OP01)
+1 OpAssign(O005_L1_Assembly_OP02)
+1 OpAssign(O005_L1_Assembly_OP04)
= 0

c_e_C_OPR1_OneOperatorPerBatch(O006_L1_Cutting)_:
-1 Assign(O006_L1_Cutting_M01)
+1 OpAssign(O006_L1_Cutting_OP01)
+1 OpAssign(O006_L1_Cutting_OP03)
+1 OpAssign(O006_L1_Cutting_OP04)
= 0

c_e_C_OPR1_OneOperatorPerBatch(O006_L1_Assembly)_:
-1 Assign(O006_L1_Assembly_M02)
+1 OpAssign(O006_L1_Assembly_OP01)
+1 OpAssign(O006_L1_Assembly_OP02)
+1 OpAssign(O006_L1_Assembly_OP04)
= 0

c_u_C_OPR3_Availability(O001_L1_Cutting_OP02_D1_Night)_:
+1 ShiftAssign(O001_L1_Cutting_D1_Night)
+1 OpAssign(O001_L1_Cutting_OP02)
<= 1

c_u_C_OPR3_Availability(O001_L1_Cutting_OP02_D2_Night)_:
+1 ShiftAssign(O001_L1_Cutting_D2_Night)
+1 OpAssign(O001_L1_Cutting_OP02)
<= 1

c_u_C_OPR3_Availability(O001_L1_Cutting_OP02_D3_Night)_:
+1 ShiftAssign(O001_L1_Cutting_D3_Night)
+1 OpAssign(O001_L1_Cutting_OP02)
<= 1

c_u_C_OPR3_Availability(O001_L1_Cutting_OP02_D4_Night)_:
+1 ShiftAssign(O001_L1_Cutting_D4_Night)
+1 OpAssign(O001_L1_Cutting_OP02)
<= 1

c_u_C_OPR3_Availability(O001_L1_Cutting_OP02_D5_Night)_:
+1 ShiftAssign(O001_L1_Cutting_D5_Night)
+1 OpAssign(O001_L1_Cutting_OP02)
<= 1

c_u_C_OPR3_Availability(O001_L1_Cutting_OP03_D1_Afternoon)_:
+1 ShiftAssign(O001_L1_Cutting_D1_Afternoon)
+1 OpAssign(O001_L1_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O001_L1_Cutting_OP03_D2_Afternoon)_:
+1 ShiftAssign(O001_L1_Cutting_D2_Afternoon)
+1 OpAssign(O001_L1_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O001_L1_Cutting_OP03_D3_Afternoon)_:
+1 ShiftAssign(O001_L1_Cutting_D3_Afternoon)
+1 OpAssign(O001_L1_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O001_L1_Cutting_OP03_D4_Afternoon)_:
+1 ShiftAssign(O001_L1_Cutting_D4_Afternoon)
+1 OpAssign(O001_L1_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O001_L1_Cutting_OP03_D5_Afternoon)_:
+1 ShiftAssign(O001_L1_Cutting_D5_Afternoon)
+1 OpAssign(O001_L1_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O001_L1_Cutting_OP04_D1_Afternoon)_:
+1 ShiftAssign(O001_L1_Cutting_D1_Afternoon)
+1 OpAssign(O001_L1_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O001_L1_Cutting_OP04_D2_Afternoon)_:
+1 ShiftAssign(O001_L1_Cutting_D2_Afternoon)
+1 OpAssign(O001_L1_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O001_L1_Cutting_OP04_D3_Afternoon)_:
+1 ShiftAssign(O001_L1_Cutting_D3_Afternoon)
+1 OpAssign(O001_L1_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O001_L1_Cutting_OP04_D4_Afternoon)_:
+1 ShiftAssign(O001_L1_Cutting_D4_Afternoon)
+1 OpAssign(O001_L1_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O001_L1_Cutting_OP04_D5_Afternoon)_:
+1 ShiftAssign(O001_L1_Cutting_D5_Afternoon)
+1 OpAssign(O001_L1_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O001_L1_Assembly_OP01_D1_Night)_:
+1 ShiftAssign(O001_L1_Assembly_D1_Night)
+1 OpAssign(O001_L1_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O001_L1_Assembly_OP01_D2_Night)_:
+1 ShiftAssign(O001_L1_Assembly_D2_Night)
+1 OpAssign(O001_L1_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O001_L1_Assembly_OP01_D3_Night)_:
+1 ShiftAssign(O001_L1_Assembly_D3_Night)
+1 OpAssign(O001_L1_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O001_L1_Assembly_OP01_D4_Night)_:
+1 ShiftAssign(O001_L1_Assembly_D4_Night)
+1 OpAssign(O001_L1_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O001_L1_Assembly_OP01_D5_Night)_:
+1 ShiftAssign(O001_L1_Assembly_D5_Night)
+1 OpAssign(O001_L1_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O001_L1_Assembly_OP02_D1_Night)_:
+1 ShiftAssign(O001_L1_Assembly_D1_Night)
+1 OpAssign(O001_L1_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O001_L1_Assembly_OP02_D2_Night)_:
+1 ShiftAssign(O001_L1_Assembly_D2_Night)
+1 OpAssign(O001_L1_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O001_L1_Assembly_OP02_D3_Night)_:
+1 ShiftAssign(O001_L1_Assembly_D3_Night)
+1 OpAssign(O001_L1_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O001_L1_Assembly_OP02_D4_Night)_:
+1 ShiftAssign(O001_L1_Assembly_D4_Night)
+1 OpAssign(O001_L1_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O001_L1_Assembly_OP02_D5_Night)_:
+1 ShiftAssign(O001_L1_Assembly_D5_Night)
+1 OpAssign(O001_L1_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O001_L1_Assembly_OP04_D1_Afternoon)_:
+1 ShiftAssign(O001_L1_Assembly_D1_Afternoon)
+1 OpAssign(O001_L1_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O001_L1_Assembly_OP04_D2_Afternoon)_:
+1 ShiftAssign(O001_L1_Assembly_D2_Afternoon)
+1 OpAssign(O001_L1_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O001_L1_Assembly_OP04_D3_Afternoon)_:
+1 ShiftAssign(O001_L1_Assembly_D3_Afternoon)
+1 OpAssign(O001_L1_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O001_L1_Assembly_OP04_D4_Afternoon)_:
+1 ShiftAssign(O001_L1_Assembly_D4_Afternoon)
+1 OpAssign(O001_L1_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O001_L1_Assembly_OP04_D5_Afternoon)_:
+1 ShiftAssign(O001_L1_Assembly_D5_Afternoon)
+1 OpAssign(O001_L1_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O002_L1_Cutting_OP01_D1_Night)_:
+1 ShiftAssign(O002_L1_Cutting_D1_Night)
+1 OpAssign(O002_L1_Cutting_OP01)
<= 1

c_u_C_OPR3_Availability(O002_L1_Cutting_OP01_D2_Night)_:
+1 ShiftAssign(O002_L1_Cutting_D2_Night)
+1 OpAssign(O002_L1_Cutting_OP01)
<= 1

c_u_C_OPR3_Availability(O002_L1_Cutting_OP01_D3_Night)_:
+1 ShiftAssign(O002_L1_Cutting_D3_Night)
+1 OpAssign(O002_L1_Cutting_OP01)
<= 1

c_u_C_OPR3_Availability(O002_L1_Cutting_OP01_D4_Night)_:
+1 ShiftAssign(O002_L1_Cutting_D4_Night)
+1 OpAssign(O002_L1_Cutting_OP01)
<= 1

c_u_C_OPR3_Availability(O002_L1_Cutting_OP01_D5_Night)_:
+1 ShiftAssign(O002_L1_Cutting_D5_Night)
+1 OpAssign(O002_L1_Cutting_OP01)
<= 1

c_u_C_OPR3_Availability(O002_L1_Cutting_OP03_D1_Afternoon)_:
+1 ShiftAssign(O002_L1_Cutting_D1_Afternoon)
+1 OpAssign(O002_L1_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O002_L1_Cutting_OP03_D2_Afternoon)_:
+1 ShiftAssign(O002_L1_Cutting_D2_Afternoon)
+1 OpAssign(O002_L1_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O002_L1_Cutting_OP03_D3_Afternoon)_:
+1 ShiftAssign(O002_L1_Cutting_D3_Afternoon)
+1 OpAssign(O002_L1_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O002_L1_Cutting_OP03_D4_Afternoon)_:
+1 ShiftAssign(O002_L1_Cutting_D4_Afternoon)
+1 OpAssign(O002_L1_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O002_L1_Cutting_OP03_D5_Afternoon)_:
+1 ShiftAssign(O002_L1_Cutting_D5_Afternoon)
+1 OpAssign(O002_L1_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O002_L1_Cutting_OP04_D1_Afternoon)_:
+1 ShiftAssign(O002_L1_Cutting_D1_Afternoon)
+1 OpAssign(O002_L1_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O002_L1_Cutting_OP04_D2_Afternoon)_:
+1 ShiftAssign(O002_L1_Cutting_D2_Afternoon)
+1 OpAssign(O002_L1_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O002_L1_Cutting_OP04_D3_Afternoon)_:
+1 ShiftAssign(O002_L1_Cutting_D3_Afternoon)
+1 OpAssign(O002_L1_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O002_L1_Cutting_OP04_D4_Afternoon)_:
+1 ShiftAssign(O002_L1_Cutting_D4_Afternoon)
+1 OpAssign(O002_L1_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O002_L1_Cutting_OP04_D5_Afternoon)_:
+1 ShiftAssign(O002_L1_Cutting_D5_Afternoon)
+1 OpAssign(O002_L1_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O002_L1_Assembly_OP01_D1_Night)_:
+1 ShiftAssign(O002_L1_Assembly_D1_Night)
+1 OpAssign(O002_L1_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O002_L1_Assembly_OP01_D2_Night)_:
+1 ShiftAssign(O002_L1_Assembly_D2_Night)
+1 OpAssign(O002_L1_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O002_L1_Assembly_OP01_D3_Night)_:
+1 ShiftAssign(O002_L1_Assembly_D3_Night)
+1 OpAssign(O002_L1_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O002_L1_Assembly_OP01_D4_Night)_:
+1 ShiftAssign(O002_L1_Assembly_D4_Night)
+1 OpAssign(O002_L1_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O002_L1_Assembly_OP01_D5_Night)_:
+1 ShiftAssign(O002_L1_Assembly_D5_Night)
+1 OpAssign(O002_L1_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O002_L1_Assembly_OP02_D1_Night)_:
+1 ShiftAssign(O002_L1_Assembly_D1_Night)
+1 OpAssign(O002_L1_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O002_L1_Assembly_OP02_D2_Night)_:
+1 ShiftAssign(O002_L1_Assembly_D2_Night)
+1 OpAssign(O002_L1_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O002_L1_Assembly_OP02_D3_Night)_:
+1 ShiftAssign(O002_L1_Assembly_D3_Night)
+1 OpAssign(O002_L1_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O002_L1_Assembly_OP02_D4_Night)_:
+1 ShiftAssign(O002_L1_Assembly_D4_Night)
+1 OpAssign(O002_L1_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O002_L1_Assembly_OP02_D5_Night)_:
+1 ShiftAssign(O002_L1_Assembly_D5_Night)
+1 OpAssign(O002_L1_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O002_L1_Assembly_OP04_D1_Afternoon)_:
+1 ShiftAssign(O002_L1_Assembly_D1_Afternoon)
+1 OpAssign(O002_L1_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O002_L1_Assembly_OP04_D2_Afternoon)_:
+1 ShiftAssign(O002_L1_Assembly_D2_Afternoon)
+1 OpAssign(O002_L1_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O002_L1_Assembly_OP04_D3_Afternoon)_:
+1 ShiftAssign(O002_L1_Assembly_D3_Afternoon)
+1 OpAssign(O002_L1_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O002_L1_Assembly_OP04_D4_Afternoon)_:
+1 ShiftAssign(O002_L1_Assembly_D4_Afternoon)
+1 OpAssign(O002_L1_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O002_L1_Assembly_OP04_D5_Afternoon)_:
+1 ShiftAssign(O002_L1_Assembly_D5_Afternoon)
+1 OpAssign(O002_L1_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O003_L1_Cutting_OP01_D1_Night)_:
+1 ShiftAssign(O003_L1_Cutting_D1_Night)
+1 OpAssign(O003_L1_Cutting_OP01)
<= 1

c_u_C_OPR3_Availability(O003_L1_Cutting_OP01_D2_Night)_:
+1 ShiftAssign(O003_L1_Cutting_D2_Night)
+1 OpAssign(O003_L1_Cutting_OP01)
<= 1

c_u_C_OPR3_Availability(O003_L1_Cutting_OP01_D3_Night)_:
+1 ShiftAssign(O003_L1_Cutting_D3_Night)
+1 OpAssign(O003_L1_Cutting_OP01)
<= 1

c_u_C_OPR3_Availability(O003_L1_Cutting_OP01_D4_Night)_:
+1 ShiftAssign(O003_L1_Cutting_D4_Night)
+1 OpAssign(O003_L1_Cutting_OP01)
<= 1

c_u_C_OPR3_Availability(O003_L1_Cutting_OP01_D5_Night)_:
+1 ShiftAssign(O003_L1_Cutting_D5_Night)
+1 OpAssign(O003_L1_Cutting_OP01)
<= 1

c_u_C_OPR3_Availability(O003_L1_Cutting_OP03_D1_Afternoon)_:
+1 ShiftAssign(O003_L1_Cutting_D1_Afternoon)
+1 OpAssign(O003_L1_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O003_L1_Cutting_OP03_D2_Afternoon)_:
+1 ShiftAssign(O003_L1_Cutting_D2_Afternoon)
+1 OpAssign(O003_L1_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O003_L1_Cutting_OP03_D3_Afternoon)_:
+1 ShiftAssign(O003_L1_Cutting_D3_Afternoon)
+1 OpAssign(O003_L1_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O003_L1_Cutting_OP03_D4_Afternoon)_:
+1 ShiftAssign(O003_L1_Cutting_D4_Afternoon)
+1 OpAssign(O003_L1_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O003_L1_Cutting_OP03_D5_Afternoon)_:
+1 ShiftAssign(O003_L1_Cutting_D5_Afternoon)
+1 OpAssign(O003_L1_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O003_L1_Cutting_OP04_D1_Afternoon)_:
+1 ShiftAssign(O003_L1_Cutting_D1_Afternoon)
+1 OpAssign(O003_L1_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O003_L1_Cutting_OP04_D2_Afternoon)_:
+1 ShiftAssign(O003_L1_Cutting_D2_Afternoon)
+1 OpAssign(O003_L1_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O003_L1_Cutting_OP04_D3_Afternoon)_:
+1 ShiftAssign(O003_L1_Cutting_D3_Afternoon)
+1 OpAssign(O003_L1_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O003_L1_Cutting_OP04_D4_Afternoon)_:
+1 ShiftAssign(O003_L1_Cutting_D4_Afternoon)
+1 OpAssign(O003_L1_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O003_L1_Cutting_OP04_D5_Afternoon)_:
+1 ShiftAssign(O003_L1_Cutting_D5_Afternoon)
+1 OpAssign(O003_L1_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O003_L1_Assembly_OP01_D1_Night)_:
+1 ShiftAssign(O003_L1_Assembly_D1_Night)
+1 OpAssign(O003_L1_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O003_L1_Assembly_OP01_D2_Night)_:
+1 ShiftAssign(O003_L1_Assembly_D2_Night)
+1 OpAssign(O003_L1_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O003_L1_Assembly_OP01_D3_Night)_:
+1 ShiftAssign(O003_L1_Assembly_D3_Night)
+1 OpAssign(O003_L1_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O003_L1_Assembly_OP01_D4_Night)_:
+1 ShiftAssign(O003_L1_Assembly_D4_Night)
+1 OpAssign(O003_L1_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O003_L1_Assembly_OP01_D5_Night)_:
+1 ShiftAssign(O003_L1_Assembly_D5_Night)
+1 OpAssign(O003_L1_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O003_L1_Assembly_OP02_D1_Night)_:
+1 ShiftAssign(O003_L1_Assembly_D1_Night)
+1 OpAssign(O003_L1_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O003_L1_Assembly_OP02_D2_Night)_:
+1 ShiftAssign(O003_L1_Assembly_D2_Night)
+1 OpAssign(O003_L1_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O003_L1_Assembly_OP02_D3_Night)_:
+1 ShiftAssign(O003_L1_Assembly_D3_Night)
+1 OpAssign(O003_L1_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O003_L1_Assembly_OP02_D4_Night)_:
+1 ShiftAssign(O003_L1_Assembly_D4_Night)
+1 OpAssign(O003_L1_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O003_L1_Assembly_OP02_D5_Night)_:
+1 ShiftAssign(O003_L1_Assembly_D5_Night)
+1 OpAssign(O003_L1_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O003_L1_Assembly_OP04_D1_Afternoon)_:
+1 ShiftAssign(O003_L1_Assembly_D1_Afternoon)
+1 OpAssign(O003_L1_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O003_L1_Assembly_OP04_D2_Afternoon)_:
+1 ShiftAssign(O003_L1_Assembly_D2_Afternoon)
+1 OpAssign(O003_L1_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O003_L1_Assembly_OP04_D3_Afternoon)_:
+1 ShiftAssign(O003_L1_Assembly_D3_Afternoon)
+1 OpAssign(O003_L1_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O003_L1_Assembly_OP04_D4_Afternoon)_:
+1 ShiftAssign(O003_L1_Assembly_D4_Afternoon)
+1 OpAssign(O003_L1_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O003_L1_Assembly_OP04_D5_Afternoon)_:
+1 ShiftAssign(O003_L1_Assembly_D5_Afternoon)
+1 OpAssign(O003_L1_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O004_L1_Cutting_OP01_D1_Night)_:
+1 ShiftAssign(O004_L1_Cutting_D1_Night)
+1 OpAssign(O004_L1_Cutting_OP01)
<= 1

c_u_C_OPR3_Availability(O004_L1_Cutting_OP01_D2_Night)_:
+1 ShiftAssign(O004_L1_Cutting_D2_Night)
+1 OpAssign(O004_L1_Cutting_OP01)
<= 1

c_u_C_OPR3_Availability(O004_L1_Cutting_OP01_D3_Night)_:
+1 ShiftAssign(O004_L1_Cutting_D3_Night)
+1 OpAssign(O004_L1_Cutting_OP01)
<= 1

c_u_C_OPR3_Availability(O004_L1_Cutting_OP01_D4_Night)_:
+1 ShiftAssign(O004_L1_Cutting_D4_Night)
+1 OpAssign(O004_L1_Cutting_OP01)
<= 1

c_u_C_OPR3_Availability(O004_L1_Cutting_OP01_D5_Night)_:
+1 ShiftAssign(O004_L1_Cutting_D5_Night)
+1 OpAssign(O004_L1_Cutting_OP01)
<= 1

c_u_C_OPR3_Availability(O004_L1_Cutting_OP03_D1_Afternoon)_:
+1 ShiftAssign(O004_L1_Cutting_D1_Afternoon)
+1 OpAssign(O004_L1_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O004_L1_Cutting_OP03_D2_Afternoon)_:
+1 ShiftAssign(O004_L1_Cutting_D2_Afternoon)
+1 OpAssign(O004_L1_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O004_L1_Cutting_OP03_D3_Afternoon)_:
+1 ShiftAssign(O004_L1_Cutting_D3_Afternoon)
+1 OpAssign(O004_L1_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O004_L1_Cutting_OP03_D4_Afternoon)_:
+1 ShiftAssign(O004_L1_Cutting_D4_Afternoon)
+1 OpAssign(O004_L1_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O004_L1_Cutting_OP03_D5_Afternoon)_:
+1 ShiftAssign(O004_L1_Cutting_D5_Afternoon)
+1 OpAssign(O004_L1_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O004_L1_Cutting_OP04_D1_Afternoon)_:
+1 ShiftAssign(O004_L1_Cutting_D1_Afternoon)
+1 OpAssign(O004_L1_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O004_L1_Cutting_OP04_D2_Afternoon)_:
+1 ShiftAssign(O004_L1_Cutting_D2_Afternoon)
+1 OpAssign(O004_L1_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O004_L1_Cutting_OP04_D3_Afternoon)_:
+1 ShiftAssign(O004_L1_Cutting_D3_Afternoon)
+1 OpAssign(O004_L1_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O004_L1_Cutting_OP04_D4_Afternoon)_:
+1 ShiftAssign(O004_L1_Cutting_D4_Afternoon)
+1 OpAssign(O004_L1_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O004_L1_Cutting_OP04_D5_Afternoon)_:
+1 ShiftAssign(O004_L1_Cutting_D5_Afternoon)
+1 OpAssign(O004_L1_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O004_L1_Assembly_OP01_D1_Night)_:
+1 ShiftAssign(O004_L1_Assembly_D1_Night)
+1 OpAssign(O004_L1_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O004_L1_Assembly_OP01_D2_Night)_:
+1 ShiftAssign(O004_L1_Assembly_D2_Night)
+1 OpAssign(O004_L1_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O004_L1_Assembly_OP01_D3_Night)_:
+1 ShiftAssign(O004_L1_Assembly_D3_Night)
+1 OpAssign(O004_L1_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O004_L1_Assembly_OP01_D4_Night)_:
+1 ShiftAssign(O004_L1_Assembly_D4_Night)
+1 OpAssign(O004_L1_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O004_L1_Assembly_OP01_D5_Night)_:
+1 ShiftAssign(O004_L1_Assembly_D5_Night)
+1 OpAssign(O004_L1_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O004_L1_Assembly_OP02_D1_Night)_:
+1 ShiftAssign(O004_L1_Assembly_D1_Night)
+1 OpAssign(O004_L1_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O004_L1_Assembly_OP02_D2_Night)_:
+1 ShiftAssign(O004_L1_Assembly_D2_Night)
+1 OpAssign(O004_L1_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O004_L1_Assembly_OP02_D3_Night)_:
+1 ShiftAssign(O004_L1_Assembly_D3_Night)
+1 OpAssign(O004_L1_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O004_L1_Assembly_OP02_D4_Night)_:
+1 ShiftAssign(O004_L1_Assembly_D4_Night)
+1 OpAssign(O004_L1_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O004_L1_Assembly_OP02_D5_Night)_:
+1 ShiftAssign(O004_L1_Assembly_D5_Night)
+1 OpAssign(O004_L1_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O004_L1_Assembly_OP04_D1_Afternoon)_:
+1 ShiftAssign(O004_L1_Assembly_D1_Afternoon)
+1 OpAssign(O004_L1_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O004_L1_Assembly_OP04_D2_Afternoon)_:
+1 ShiftAssign(O004_L1_Assembly_D2_Afternoon)
+1 OpAssign(O004_L1_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O004_L1_Assembly_OP04_D3_Afternoon)_:
+1 ShiftAssign(O004_L1_Assembly_D3_Afternoon)
+1 OpAssign(O004_L1_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O004_L1_Assembly_OP04_D4_Afternoon)_:
+1 ShiftAssign(O004_L1_Assembly_D4_Afternoon)
+1 OpAssign(O004_L1_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O004_L1_Assembly_OP04_D5_Afternoon)_:
+1 ShiftAssign(O004_L1_Assembly_D5_Afternoon)
+1 OpAssign(O004_L1_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O004_L2_Cutting_OP01_D1_Night)_:
+1 ShiftAssign(O004_L2_Cutting_D1_Night)
+1 OpAssign(O004_L2_Cutting_OP01)
<= 1

c_u_C_OPR3_Availability(O004_L2_Cutting_OP01_D2_Night)_:
+1 ShiftAssign(O004_L2_Cutting_D2_Night)
+1 OpAssign(O004_L2_Cutting_OP01)
<= 1

c_u_C_OPR3_Availability(O004_L2_Cutting_OP01_D3_Night)_:
+1 ShiftAssign(O004_L2_Cutting_D3_Night)
+1 OpAssign(O004_L2_Cutting_OP01)
<= 1

c_u_C_OPR3_Availability(O004_L2_Cutting_OP01_D4_Night)_:
+1 ShiftAssign(O004_L2_Cutting_D4_Night)
+1 OpAssign(O004_L2_Cutting_OP01)
<= 1

c_u_C_OPR3_Availability(O004_L2_Cutting_OP01_D5_Night)_:
+1 ShiftAssign(O004_L2_Cutting_D5_Night)
+1 OpAssign(O004_L2_Cutting_OP01)
<= 1

c_u_C_OPR3_Availability(O004_L2_Cutting_OP03_D1_Afternoon)_:
+1 ShiftAssign(O004_L2_Cutting_D1_Afternoon)
+1 OpAssign(O004_L2_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O004_L2_Cutting_OP03_D2_Afternoon)_:
+1 ShiftAssign(O004_L2_Cutting_D2_Afternoon)
+1 OpAssign(O004_L2_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O004_L2_Cutting_OP03_D3_Afternoon)_:
+1 ShiftAssign(O004_L2_Cutting_D3_Afternoon)
+1 OpAssign(O004_L2_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O004_L2_Cutting_OP03_D4_Afternoon)_:
+1 ShiftAssign(O004_L2_Cutting_D4_Afternoon)
+1 OpAssign(O004_L2_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O004_L2_Cutting_OP03_D5_Afternoon)_:
+1 ShiftAssign(O004_L2_Cutting_D5_Afternoon)
+1 OpAssign(O004_L2_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O004_L2_Cutting_OP04_D1_Afternoon)_:
+1 ShiftAssign(O004_L2_Cutting_D1_Afternoon)
+1 OpAssign(O004_L2_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O004_L2_Cutting_OP04_D2_Afternoon)_:
+1 ShiftAssign(O004_L2_Cutting_D2_Afternoon)
+1 OpAssign(O004_L2_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O004_L2_Cutting_OP04_D3_Afternoon)_:
+1 ShiftAssign(O004_L2_Cutting_D3_Afternoon)
+1 OpAssign(O004_L2_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O004_L2_Cutting_OP04_D4_Afternoon)_:
+1 ShiftAssign(O004_L2_Cutting_D4_Afternoon)
+1 OpAssign(O004_L2_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O004_L2_Cutting_OP04_D5_Afternoon)_:
+1 ShiftAssign(O004_L2_Cutting_D5_Afternoon)
+1 OpAssign(O004_L2_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O004_L2_Assembly_OP01_D1_Night)_:
+1 ShiftAssign(O004_L2_Assembly_D1_Night)
+1 OpAssign(O004_L2_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O004_L2_Assembly_OP01_D2_Night)_:
+1 ShiftAssign(O004_L2_Assembly_D2_Night)
+1 OpAssign(O004_L2_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O004_L2_Assembly_OP01_D3_Night)_:
+1 ShiftAssign(O004_L2_Assembly_D3_Night)
+1 OpAssign(O004_L2_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O004_L2_Assembly_OP01_D4_Night)_:
+1 ShiftAssign(O004_L2_Assembly_D4_Night)
+1 OpAssign(O004_L2_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O004_L2_Assembly_OP01_D5_Night)_:
+1 ShiftAssign(O004_L2_Assembly_D5_Night)
+1 OpAssign(O004_L2_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O004_L2_Assembly_OP02_D1_Night)_:
+1 ShiftAssign(O004_L2_Assembly_D1_Night)
+1 OpAssign(O004_L2_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O004_L2_Assembly_OP02_D2_Night)_:
+1 ShiftAssign(O004_L2_Assembly_D2_Night)
+1 OpAssign(O004_L2_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O004_L2_Assembly_OP02_D3_Night)_:
+1 ShiftAssign(O004_L2_Assembly_D3_Night)
+1 OpAssign(O004_L2_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O004_L2_Assembly_OP02_D4_Night)_:
+1 ShiftAssign(O004_L2_Assembly_D4_Night)
+1 OpAssign(O004_L2_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O004_L2_Assembly_OP02_D5_Night)_:
+1 ShiftAssign(O004_L2_Assembly_D5_Night)
+1 OpAssign(O004_L2_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O004_L2_Assembly_OP04_D1_Afternoon)_:
+1 ShiftAssign(O004_L2_Assembly_D1_Afternoon)
+1 OpAssign(O004_L2_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O004_L2_Assembly_OP04_D2_Afternoon)_:
+1 ShiftAssign(O004_L2_Assembly_D2_Afternoon)
+1 OpAssign(O004_L2_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O004_L2_Assembly_OP04_D3_Afternoon)_:
+1 ShiftAssign(O004_L2_Assembly_D3_Afternoon)
+1 OpAssign(O004_L2_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O004_L2_Assembly_OP04_D4_Afternoon)_:
+1 ShiftAssign(O004_L2_Assembly_D4_Afternoon)
+1 OpAssign(O004_L2_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O004_L2_Assembly_OP04_D5_Afternoon)_:
+1 ShiftAssign(O004_L2_Assembly_D5_Afternoon)
+1 OpAssign(O004_L2_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O005_L1_Cutting_OP01_D1_Night)_:
+1 ShiftAssign(O005_L1_Cutting_D1_Night)
+1 OpAssign(O005_L1_Cutting_OP01)
<= 1

c_u_C_OPR3_Availability(O005_L1_Cutting_OP01_D2_Night)_:
+1 ShiftAssign(O005_L1_Cutting_D2_Night)
+1 OpAssign(O005_L1_Cutting_OP01)
<= 1

c_u_C_OPR3_Availability(O005_L1_Cutting_OP01_D3_Night)_:
+1 ShiftAssign(O005_L1_Cutting_D3_Night)
+1 OpAssign(O005_L1_Cutting_OP01)
<= 1

c_u_C_OPR3_Availability(O005_L1_Cutting_OP01_D4_Night)_:
+1 ShiftAssign(O005_L1_Cutting_D4_Night)
+1 OpAssign(O005_L1_Cutting_OP01)
<= 1

c_u_C_OPR3_Availability(O005_L1_Cutting_OP01_D5_Night)_:
+1 ShiftAssign(O005_L1_Cutting_D5_Night)
+1 OpAssign(O005_L1_Cutting_OP01)
<= 1

c_u_C_OPR3_Availability(O005_L1_Cutting_OP03_D1_Afternoon)_:
+1 ShiftAssign(O005_L1_Cutting_D1_Afternoon)
+1 OpAssign(O005_L1_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O005_L1_Cutting_OP03_D2_Afternoon)_:
+1 ShiftAssign(O005_L1_Cutting_D2_Afternoon)
+1 OpAssign(O005_L1_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O005_L1_Cutting_OP03_D3_Afternoon)_:
+1 ShiftAssign(O005_L1_Cutting_D3_Afternoon)
+1 OpAssign(O005_L1_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O005_L1_Cutting_OP03_D4_Afternoon)_:
+1 ShiftAssign(O005_L1_Cutting_D4_Afternoon)
+1 OpAssign(O005_L1_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O005_L1_Cutting_OP03_D5_Afternoon)_:
+1 ShiftAssign(O005_L1_Cutting_D5_Afternoon)
+1 OpAssign(O005_L1_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O005_L1_Cutting_OP04_D1_Afternoon)_:
+1 ShiftAssign(O005_L1_Cutting_D1_Afternoon)
+1 OpAssign(O005_L1_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O005_L1_Cutting_OP04_D2_Afternoon)_:
+1 ShiftAssign(O005_L1_Cutting_D2_Afternoon)
+1 OpAssign(O005_L1_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O005_L1_Cutting_OP04_D3_Afternoon)_:
+1 ShiftAssign(O005_L1_Cutting_D3_Afternoon)
+1 OpAssign(O005_L1_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O005_L1_Cutting_OP04_D4_Afternoon)_:
+1 ShiftAssign(O005_L1_Cutting_D4_Afternoon)
+1 OpAssign(O005_L1_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O005_L1_Cutting_OP04_D5_Afternoon)_:
+1 ShiftAssign(O005_L1_Cutting_D5_Afternoon)
+1 OpAssign(O005_L1_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O005_L1_Assembly_OP01_D1_Night)_:
+1 ShiftAssign(O005_L1_Assembly_D1_Night)
+1 OpAssign(O005_L1_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O005_L1_Assembly_OP01_D2_Night)_:
+1 ShiftAssign(O005_L1_Assembly_D2_Night)
+1 OpAssign(O005_L1_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O005_L1_Assembly_OP01_D3_Night)_:
+1 ShiftAssign(O005_L1_Assembly_D3_Night)
+1 OpAssign(O005_L1_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O005_L1_Assembly_OP01_D4_Night)_:
+1 ShiftAssign(O005_L1_Assembly_D4_Night)
+1 OpAssign(O005_L1_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O005_L1_Assembly_OP01_D5_Night)_:
+1 ShiftAssign(O005_L1_Assembly_D5_Night)
+1 OpAssign(O005_L1_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O005_L1_Assembly_OP02_D1_Night)_:
+1 ShiftAssign(O005_L1_Assembly_D1_Night)
+1 OpAssign(O005_L1_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O005_L1_Assembly_OP02_D2_Night)_:
+1 ShiftAssign(O005_L1_Assembly_D2_Night)
+1 OpAssign(O005_L1_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O005_L1_Assembly_OP02_D3_Night)_:
+1 ShiftAssign(O005_L1_Assembly_D3_Night)
+1 OpAssign(O005_L1_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O005_L1_Assembly_OP02_D4_Night)_:
+1 ShiftAssign(O005_L1_Assembly_D4_Night)
+1 OpAssign(O005_L1_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O005_L1_Assembly_OP02_D5_Night)_:
+1 ShiftAssign(O005_L1_Assembly_D5_Night)
+1 OpAssign(O005_L1_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O005_L1_Assembly_OP04_D1_Afternoon)_:
+1 ShiftAssign(O005_L1_Assembly_D1_Afternoon)
+1 OpAssign(O005_L1_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O005_L1_Assembly_OP04_D2_Afternoon)_:
+1 ShiftAssign(O005_L1_Assembly_D2_Afternoon)
+1 OpAssign(O005_L1_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O005_L1_Assembly_OP04_D3_Afternoon)_:
+1 ShiftAssign(O005_L1_Assembly_D3_Afternoon)
+1 OpAssign(O005_L1_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O005_L1_Assembly_OP04_D4_Afternoon)_:
+1 ShiftAssign(O005_L1_Assembly_D4_Afternoon)
+1 OpAssign(O005_L1_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O005_L1_Assembly_OP04_D5_Afternoon)_:
+1 ShiftAssign(O005_L1_Assembly_D5_Afternoon)
+1 OpAssign(O005_L1_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O006_L1_Cutting_OP01_D1_Night)_:
+1 ShiftAssign(O006_L1_Cutting_D1_Night)
+1 OpAssign(O006_L1_Cutting_OP01)
<= 1

c_u_C_OPR3_Availability(O006_L1_Cutting_OP01_D2_Night)_:
+1 ShiftAssign(O006_L1_Cutting_D2_Night)
+1 OpAssign(O006_L1_Cutting_OP01)
<= 1

c_u_C_OPR3_Availability(O006_L1_Cutting_OP01_D3_Night)_:
+1 ShiftAssign(O006_L1_Cutting_D3_Night)
+1 OpAssign(O006_L1_Cutting_OP01)
<= 1

c_u_C_OPR3_Availability(O006_L1_Cutting_OP01_D4_Night)_:
+1 ShiftAssign(O006_L1_Cutting_D4_Night)
+1 OpAssign(O006_L1_Cutting_OP01)
<= 1

c_u_C_OPR3_Availability(O006_L1_Cutting_OP01_D5_Night)_:
+1 ShiftAssign(O006_L1_Cutting_D5_Night)
+1 OpAssign(O006_L1_Cutting_OP01)
<= 1

c_u_C_OPR3_Availability(O006_L1_Cutting_OP03_D1_Afternoon)_:
+1 ShiftAssign(O006_L1_Cutting_D1_Afternoon)
+1 OpAssign(O006_L1_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O006_L1_Cutting_OP03_D2_Afternoon)_:
+1 ShiftAssign(O006_L1_Cutting_D2_Afternoon)
+1 OpAssign(O006_L1_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O006_L1_Cutting_OP03_D3_Afternoon)_:
+1 ShiftAssign(O006_L1_Cutting_D3_Afternoon)
+1 OpAssign(O006_L1_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O006_L1_Cutting_OP03_D4_Afternoon)_:
+1 ShiftAssign(O006_L1_Cutting_D4_Afternoon)
+1 OpAssign(O006_L1_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O006_L1_Cutting_OP03_D5_Afternoon)_:
+1 ShiftAssign(O006_L1_Cutting_D5_Afternoon)
+1 OpAssign(O006_L1_Cutting_OP03)
<= 1

c_u_C_OPR3_Availability(O006_L1_Cutting_OP04_D1_Afternoon)_:
+1 ShiftAssign(O006_L1_Cutting_D1_Afternoon)
+1 OpAssign(O006_L1_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O006_L1_Cutting_OP04_D2_Afternoon)_:
+1 ShiftAssign(O006_L1_Cutting_D2_Afternoon)
+1 OpAssign(O006_L1_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O006_L1_Cutting_OP04_D3_Afternoon)_:
+1 ShiftAssign(O006_L1_Cutting_D3_Afternoon)
+1 OpAssign(O006_L1_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O006_L1_Cutting_OP04_D4_Afternoon)_:
+1 ShiftAssign(O006_L1_Cutting_D4_Afternoon)
+1 OpAssign(O006_L1_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O006_L1_Cutting_OP04_D5_Afternoon)_:
+1 ShiftAssign(O006_L1_Cutting_D5_Afternoon)
+1 OpAssign(O006_L1_Cutting_OP04)
<= 1

c_u_C_OPR3_Availability(O006_L1_Assembly_OP01_D1_Night)_:
+1 ShiftAssign(O006_L1_Assembly_D1_Night)
+1 OpAssign(O006_L1_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O006_L1_Assembly_OP01_D2_Night)_:
+1 ShiftAssign(O006_L1_Assembly_D2_Night)
+1 OpAssign(O006_L1_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O006_L1_Assembly_OP01_D3_Night)_:
+1 ShiftAssign(O006_L1_Assembly_D3_Night)
+1 OpAssign(O006_L1_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O006_L1_Assembly_OP01_D4_Night)_:
+1 ShiftAssign(O006_L1_Assembly_D4_Night)
+1 OpAssign(O006_L1_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O006_L1_Assembly_OP01_D5_Night)_:
+1 ShiftAssign(O006_L1_Assembly_D5_Night)
+1 OpAssign(O006_L1_Assembly_OP01)
<= 1

c_u_C_OPR3_Availability(O006_L1_Assembly_OP02_D1_Night)_:
+1 ShiftAssign(O006_L1_Assembly_D1_Night)
+1 OpAssign(O006_L1_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O006_L1_Assembly_OP02_D2_Night)_:
+1 ShiftAssign(O006_L1_Assembly_D2_Night)
+1 OpAssign(O006_L1_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O006_L1_Assembly_OP02_D3_Night)_:
+1 ShiftAssign(O006_L1_Assembly_D3_Night)
+1 OpAssign(O006_L1_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O006_L1_Assembly_OP02_D4_Night)_:
+1 ShiftAssign(O006_L1_Assembly_D4_Night)
+1 OpAssign(O006_L1_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O006_L1_Assembly_OP02_D5_Night)_:
+1 ShiftAssign(O006_L1_Assembly_D5_Night)
+1 OpAssign(O006_L1_Assembly_OP02)
<= 1

c_u_C_OPR3_Availability(O006_L1_Assembly_OP04_D1_Afternoon)_:
+1 ShiftAssign(O006_L1_Assembly_D1_Afternoon)
+1 OpAssign(O006_L1_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O006_L1_Assembly_OP04_D2_Afternoon)_:
+1 ShiftAssign(O006_L1_Assembly_D2_Afternoon)
+1 OpAssign(O006_L1_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O006_L1_Assembly_OP04_D3_Afternoon)_:
+1 ShiftAssign(O006_L1_Assembly_D3_Afternoon)
+1 OpAssign(O006_L1_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O006_L1_Assembly_OP04_D4_Afternoon)_:
+1 ShiftAssign(O006_L1_Assembly_D4_Afternoon)
+1 OpAssign(O006_L1_Assembly_OP04)
<= 1

c_u_C_OPR3_Availability(O006_L1_Assembly_OP04_D5_Afternoon)_:
+1 ShiftAssign(O006_L1_Assembly_D5_Afternoon)
+1 OpAssign(O006_L1_Assembly_OP04)
<= 1

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP02_D1_Morning)_:
-1 OpAssign(O001_L1_Cutting_OP02)
+1 OpInShift(O001_L1_Cutting_OP02_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP02_D1_Afternoon)_:
-1 OpAssign(O001_L1_Cutting_OP02)
+1 OpInShift(O001_L1_Cutting_OP02_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP02_D1_Night)_:
-1 OpAssign(O001_L1_Cutting_OP02)
+1 OpInShift(O001_L1_Cutting_OP02_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP02_D2_Morning)_:
-1 OpAssign(O001_L1_Cutting_OP02)
+1 OpInShift(O001_L1_Cutting_OP02_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP02_D2_Afternoon)_:
-1 OpAssign(O001_L1_Cutting_OP02)
+1 OpInShift(O001_L1_Cutting_OP02_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP02_D2_Night)_:
-1 OpAssign(O001_L1_Cutting_OP02)
+1 OpInShift(O001_L1_Cutting_OP02_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP02_D3_Morning)_:
-1 OpAssign(O001_L1_Cutting_OP02)
+1 OpInShift(O001_L1_Cutting_OP02_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP02_D3_Afternoon)_:
-1 OpAssign(O001_L1_Cutting_OP02)
+1 OpInShift(O001_L1_Cutting_OP02_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP02_D3_Night)_:
-1 OpAssign(O001_L1_Cutting_OP02)
+1 OpInShift(O001_L1_Cutting_OP02_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP02_D4_Morning)_:
-1 OpAssign(O001_L1_Cutting_OP02)
+1 OpInShift(O001_L1_Cutting_OP02_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP02_D4_Afternoon)_:
-1 OpAssign(O001_L1_Cutting_OP02)
+1 OpInShift(O001_L1_Cutting_OP02_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP02_D4_Night)_:
-1 OpAssign(O001_L1_Cutting_OP02)
+1 OpInShift(O001_L1_Cutting_OP02_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP02_D5_Morning)_:
-1 OpAssign(O001_L1_Cutting_OP02)
+1 OpInShift(O001_L1_Cutting_OP02_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP02_D5_Afternoon)_:
-1 OpAssign(O001_L1_Cutting_OP02)
+1 OpInShift(O001_L1_Cutting_OP02_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP02_D5_Night)_:
-1 OpAssign(O001_L1_Cutting_OP02)
+1 OpInShift(O001_L1_Cutting_OP02_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP03_D1_Morning)_:
-1 OpAssign(O001_L1_Cutting_OP03)
+1 OpInShift(O001_L1_Cutting_OP03_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP03_D1_Afternoon)_:
-1 OpAssign(O001_L1_Cutting_OP03)
+1 OpInShift(O001_L1_Cutting_OP03_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP03_D1_Night)_:
-1 OpAssign(O001_L1_Cutting_OP03)
+1 OpInShift(O001_L1_Cutting_OP03_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP03_D2_Morning)_:
-1 OpAssign(O001_L1_Cutting_OP03)
+1 OpInShift(O001_L1_Cutting_OP03_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP03_D2_Afternoon)_:
-1 OpAssign(O001_L1_Cutting_OP03)
+1 OpInShift(O001_L1_Cutting_OP03_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP03_D2_Night)_:
-1 OpAssign(O001_L1_Cutting_OP03)
+1 OpInShift(O001_L1_Cutting_OP03_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP03_D3_Morning)_:
-1 OpAssign(O001_L1_Cutting_OP03)
+1 OpInShift(O001_L1_Cutting_OP03_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP03_D3_Afternoon)_:
-1 OpAssign(O001_L1_Cutting_OP03)
+1 OpInShift(O001_L1_Cutting_OP03_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP03_D3_Night)_:
-1 OpAssign(O001_L1_Cutting_OP03)
+1 OpInShift(O001_L1_Cutting_OP03_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP03_D4_Morning)_:
-1 OpAssign(O001_L1_Cutting_OP03)
+1 OpInShift(O001_L1_Cutting_OP03_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP03_D4_Afternoon)_:
-1 OpAssign(O001_L1_Cutting_OP03)
+1 OpInShift(O001_L1_Cutting_OP03_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP03_D4_Night)_:
-1 OpAssign(O001_L1_Cutting_OP03)
+1 OpInShift(O001_L1_Cutting_OP03_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP03_D5_Morning)_:
-1 OpAssign(O001_L1_Cutting_OP03)
+1 OpInShift(O001_L1_Cutting_OP03_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP03_D5_Afternoon)_:
-1 OpAssign(O001_L1_Cutting_OP03)
+1 OpInShift(O001_L1_Cutting_OP03_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP03_D5_Night)_:
-1 OpAssign(O001_L1_Cutting_OP03)
+1 OpInShift(O001_L1_Cutting_OP03_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP04_D1_Morning)_:
-1 OpAssign(O001_L1_Cutting_OP04)
+1 OpInShift(O001_L1_Cutting_OP04_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP04_D1_Afternoon)_:
-1 OpAssign(O001_L1_Cutting_OP04)
+1 OpInShift(O001_L1_Cutting_OP04_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP04_D1_Night)_:
-1 OpAssign(O001_L1_Cutting_OP04)
+1 OpInShift(O001_L1_Cutting_OP04_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP04_D2_Morning)_:
-1 OpAssign(O001_L1_Cutting_OP04)
+1 OpInShift(O001_L1_Cutting_OP04_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP04_D2_Afternoon)_:
-1 OpAssign(O001_L1_Cutting_OP04)
+1 OpInShift(O001_L1_Cutting_OP04_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP04_D2_Night)_:
-1 OpAssign(O001_L1_Cutting_OP04)
+1 OpInShift(O001_L1_Cutting_OP04_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP04_D3_Morning)_:
-1 OpAssign(O001_L1_Cutting_OP04)
+1 OpInShift(O001_L1_Cutting_OP04_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP04_D3_Afternoon)_:
-1 OpAssign(O001_L1_Cutting_OP04)
+1 OpInShift(O001_L1_Cutting_OP04_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP04_D3_Night)_:
-1 OpAssign(O001_L1_Cutting_OP04)
+1 OpInShift(O001_L1_Cutting_OP04_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP04_D4_Morning)_:
-1 OpAssign(O001_L1_Cutting_OP04)
+1 OpInShift(O001_L1_Cutting_OP04_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP04_D4_Afternoon)_:
-1 OpAssign(O001_L1_Cutting_OP04)
+1 OpInShift(O001_L1_Cutting_OP04_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP04_D4_Night)_:
-1 OpAssign(O001_L1_Cutting_OP04)
+1 OpInShift(O001_L1_Cutting_OP04_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP04_D5_Morning)_:
-1 OpAssign(O001_L1_Cutting_OP04)
+1 OpInShift(O001_L1_Cutting_OP04_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP04_D5_Afternoon)_:
-1 OpAssign(O001_L1_Cutting_OP04)
+1 OpInShift(O001_L1_Cutting_OP04_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Cutting_OP04_D5_Night)_:
-1 OpAssign(O001_L1_Cutting_OP04)
+1 OpInShift(O001_L1_Cutting_OP04_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP01_D1_Morning)_:
-1 OpAssign(O001_L1_Assembly_OP01)
+1 OpInShift(O001_L1_Assembly_OP01_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP01_D1_Afternoon)_:
-1 OpAssign(O001_L1_Assembly_OP01)
+1 OpInShift(O001_L1_Assembly_OP01_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP01_D1_Night)_:
-1 OpAssign(O001_L1_Assembly_OP01)
+1 OpInShift(O001_L1_Assembly_OP01_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP01_D2_Morning)_:
-1 OpAssign(O001_L1_Assembly_OP01)
+1 OpInShift(O001_L1_Assembly_OP01_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP01_D2_Afternoon)_:
-1 OpAssign(O001_L1_Assembly_OP01)
+1 OpInShift(O001_L1_Assembly_OP01_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP01_D2_Night)_:
-1 OpAssign(O001_L1_Assembly_OP01)
+1 OpInShift(O001_L1_Assembly_OP01_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP01_D3_Morning)_:
-1 OpAssign(O001_L1_Assembly_OP01)
+1 OpInShift(O001_L1_Assembly_OP01_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP01_D3_Afternoon)_:
-1 OpAssign(O001_L1_Assembly_OP01)
+1 OpInShift(O001_L1_Assembly_OP01_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP01_D3_Night)_:
-1 OpAssign(O001_L1_Assembly_OP01)
+1 OpInShift(O001_L1_Assembly_OP01_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP01_D4_Morning)_:
-1 OpAssign(O001_L1_Assembly_OP01)
+1 OpInShift(O001_L1_Assembly_OP01_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP01_D4_Afternoon)_:
-1 OpAssign(O001_L1_Assembly_OP01)
+1 OpInShift(O001_L1_Assembly_OP01_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP01_D4_Night)_:
-1 OpAssign(O001_L1_Assembly_OP01)
+1 OpInShift(O001_L1_Assembly_OP01_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP01_D5_Morning)_:
-1 OpAssign(O001_L1_Assembly_OP01)
+1 OpInShift(O001_L1_Assembly_OP01_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP01_D5_Afternoon)_:
-1 OpAssign(O001_L1_Assembly_OP01)
+1 OpInShift(O001_L1_Assembly_OP01_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP01_D5_Night)_:
-1 OpAssign(O001_L1_Assembly_OP01)
+1 OpInShift(O001_L1_Assembly_OP01_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP02_D1_Morning)_:
-1 OpAssign(O001_L1_Assembly_OP02)
+1 OpInShift(O001_L1_Assembly_OP02_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP02_D1_Afternoon)_:
-1 OpAssign(O001_L1_Assembly_OP02)
+1 OpInShift(O001_L1_Assembly_OP02_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP02_D1_Night)_:
-1 OpAssign(O001_L1_Assembly_OP02)
+1 OpInShift(O001_L1_Assembly_OP02_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP02_D2_Morning)_:
-1 OpAssign(O001_L1_Assembly_OP02)
+1 OpInShift(O001_L1_Assembly_OP02_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP02_D2_Afternoon)_:
-1 OpAssign(O001_L1_Assembly_OP02)
+1 OpInShift(O001_L1_Assembly_OP02_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP02_D2_Night)_:
-1 OpAssign(O001_L1_Assembly_OP02)
+1 OpInShift(O001_L1_Assembly_OP02_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP02_D3_Morning)_:
-1 OpAssign(O001_L1_Assembly_OP02)
+1 OpInShift(O001_L1_Assembly_OP02_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP02_D3_Afternoon)_:
-1 OpAssign(O001_L1_Assembly_OP02)
+1 OpInShift(O001_L1_Assembly_OP02_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP02_D3_Night)_:
-1 OpAssign(O001_L1_Assembly_OP02)
+1 OpInShift(O001_L1_Assembly_OP02_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP02_D4_Morning)_:
-1 OpAssign(O001_L1_Assembly_OP02)
+1 OpInShift(O001_L1_Assembly_OP02_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP02_D4_Afternoon)_:
-1 OpAssign(O001_L1_Assembly_OP02)
+1 OpInShift(O001_L1_Assembly_OP02_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP02_D4_Night)_:
-1 OpAssign(O001_L1_Assembly_OP02)
+1 OpInShift(O001_L1_Assembly_OP02_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP02_D5_Morning)_:
-1 OpAssign(O001_L1_Assembly_OP02)
+1 OpInShift(O001_L1_Assembly_OP02_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP02_D5_Afternoon)_:
-1 OpAssign(O001_L1_Assembly_OP02)
+1 OpInShift(O001_L1_Assembly_OP02_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP02_D5_Night)_:
-1 OpAssign(O001_L1_Assembly_OP02)
+1 OpInShift(O001_L1_Assembly_OP02_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP04_D1_Morning)_:
-1 OpAssign(O001_L1_Assembly_OP04)
+1 OpInShift(O001_L1_Assembly_OP04_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP04_D1_Afternoon)_:
-1 OpAssign(O001_L1_Assembly_OP04)
+1 OpInShift(O001_L1_Assembly_OP04_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP04_D1_Night)_:
-1 OpAssign(O001_L1_Assembly_OP04)
+1 OpInShift(O001_L1_Assembly_OP04_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP04_D2_Morning)_:
-1 OpAssign(O001_L1_Assembly_OP04)
+1 OpInShift(O001_L1_Assembly_OP04_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP04_D2_Afternoon)_:
-1 OpAssign(O001_L1_Assembly_OP04)
+1 OpInShift(O001_L1_Assembly_OP04_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP04_D2_Night)_:
-1 OpAssign(O001_L1_Assembly_OP04)
+1 OpInShift(O001_L1_Assembly_OP04_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP04_D3_Morning)_:
-1 OpAssign(O001_L1_Assembly_OP04)
+1 OpInShift(O001_L1_Assembly_OP04_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP04_D3_Afternoon)_:
-1 OpAssign(O001_L1_Assembly_OP04)
+1 OpInShift(O001_L1_Assembly_OP04_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP04_D3_Night)_:
-1 OpAssign(O001_L1_Assembly_OP04)
+1 OpInShift(O001_L1_Assembly_OP04_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP04_D4_Morning)_:
-1 OpAssign(O001_L1_Assembly_OP04)
+1 OpInShift(O001_L1_Assembly_OP04_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP04_D4_Afternoon)_:
-1 OpAssign(O001_L1_Assembly_OP04)
+1 OpInShift(O001_L1_Assembly_OP04_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP04_D4_Night)_:
-1 OpAssign(O001_L1_Assembly_OP04)
+1 OpInShift(O001_L1_Assembly_OP04_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP04_D5_Morning)_:
-1 OpAssign(O001_L1_Assembly_OP04)
+1 OpInShift(O001_L1_Assembly_OP04_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP04_D5_Afternoon)_:
-1 OpAssign(O001_L1_Assembly_OP04)
+1 OpInShift(O001_L1_Assembly_OP04_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O001_L1_Assembly_OP04_D5_Night)_:
-1 OpAssign(O001_L1_Assembly_OP04)
+1 OpInShift(O001_L1_Assembly_OP04_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP01_D1_Morning)_:
-1 OpAssign(O002_L1_Cutting_OP01)
+1 OpInShift(O002_L1_Cutting_OP01_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP01_D1_Afternoon)_:
-1 OpAssign(O002_L1_Cutting_OP01)
+1 OpInShift(O002_L1_Cutting_OP01_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP01_D1_Night)_:
-1 OpAssign(O002_L1_Cutting_OP01)
+1 OpInShift(O002_L1_Cutting_OP01_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP01_D2_Morning)_:
-1 OpAssign(O002_L1_Cutting_OP01)
+1 OpInShift(O002_L1_Cutting_OP01_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP01_D2_Afternoon)_:
-1 OpAssign(O002_L1_Cutting_OP01)
+1 OpInShift(O002_L1_Cutting_OP01_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP01_D2_Night)_:
-1 OpAssign(O002_L1_Cutting_OP01)
+1 OpInShift(O002_L1_Cutting_OP01_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP01_D3_Morning)_:
-1 OpAssign(O002_L1_Cutting_OP01)
+1 OpInShift(O002_L1_Cutting_OP01_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP01_D3_Afternoon)_:
-1 OpAssign(O002_L1_Cutting_OP01)
+1 OpInShift(O002_L1_Cutting_OP01_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP01_D3_Night)_:
-1 OpAssign(O002_L1_Cutting_OP01)
+1 OpInShift(O002_L1_Cutting_OP01_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP01_D4_Morning)_:
-1 OpAssign(O002_L1_Cutting_OP01)
+1 OpInShift(O002_L1_Cutting_OP01_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP01_D4_Afternoon)_:
-1 OpAssign(O002_L1_Cutting_OP01)
+1 OpInShift(O002_L1_Cutting_OP01_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP01_D4_Night)_:
-1 OpAssign(O002_L1_Cutting_OP01)
+1 OpInShift(O002_L1_Cutting_OP01_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP01_D5_Morning)_:
-1 OpAssign(O002_L1_Cutting_OP01)
+1 OpInShift(O002_L1_Cutting_OP01_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP01_D5_Afternoon)_:
-1 OpAssign(O002_L1_Cutting_OP01)
+1 OpInShift(O002_L1_Cutting_OP01_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP01_D5_Night)_:
-1 OpAssign(O002_L1_Cutting_OP01)
+1 OpInShift(O002_L1_Cutting_OP01_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP03_D1_Morning)_:
-1 OpAssign(O002_L1_Cutting_OP03)
+1 OpInShift(O002_L1_Cutting_OP03_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP03_D1_Afternoon)_:
-1 OpAssign(O002_L1_Cutting_OP03)
+1 OpInShift(O002_L1_Cutting_OP03_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP03_D1_Night)_:
-1 OpAssign(O002_L1_Cutting_OP03)
+1 OpInShift(O002_L1_Cutting_OP03_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP03_D2_Morning)_:
-1 OpAssign(O002_L1_Cutting_OP03)
+1 OpInShift(O002_L1_Cutting_OP03_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP03_D2_Afternoon)_:
-1 OpAssign(O002_L1_Cutting_OP03)
+1 OpInShift(O002_L1_Cutting_OP03_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP03_D2_Night)_:
-1 OpAssign(O002_L1_Cutting_OP03)
+1 OpInShift(O002_L1_Cutting_OP03_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP03_D3_Morning)_:
-1 OpAssign(O002_L1_Cutting_OP03)
+1 OpInShift(O002_L1_Cutting_OP03_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP03_D3_Afternoon)_:
-1 OpAssign(O002_L1_Cutting_OP03)
+1 OpInShift(O002_L1_Cutting_OP03_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP03_D3_Night)_:
-1 OpAssign(O002_L1_Cutting_OP03)
+1 OpInShift(O002_L1_Cutting_OP03_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP03_D4_Morning)_:
-1 OpAssign(O002_L1_Cutting_OP03)
+1 OpInShift(O002_L1_Cutting_OP03_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP03_D4_Afternoon)_:
-1 OpAssign(O002_L1_Cutting_OP03)
+1 OpInShift(O002_L1_Cutting_OP03_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP03_D4_Night)_:
-1 OpAssign(O002_L1_Cutting_OP03)
+1 OpInShift(O002_L1_Cutting_OP03_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP03_D5_Morning)_:
-1 OpAssign(O002_L1_Cutting_OP03)
+1 OpInShift(O002_L1_Cutting_OP03_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP03_D5_Afternoon)_:
-1 OpAssign(O002_L1_Cutting_OP03)
+1 OpInShift(O002_L1_Cutting_OP03_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP03_D5_Night)_:
-1 OpAssign(O002_L1_Cutting_OP03)
+1 OpInShift(O002_L1_Cutting_OP03_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP04_D1_Morning)_:
-1 OpAssign(O002_L1_Cutting_OP04)
+1 OpInShift(O002_L1_Cutting_OP04_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP04_D1_Afternoon)_:
-1 OpAssign(O002_L1_Cutting_OP04)
+1 OpInShift(O002_L1_Cutting_OP04_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP04_D1_Night)_:
-1 OpAssign(O002_L1_Cutting_OP04)
+1 OpInShift(O002_L1_Cutting_OP04_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP04_D2_Morning)_:
-1 OpAssign(O002_L1_Cutting_OP04)
+1 OpInShift(O002_L1_Cutting_OP04_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP04_D2_Afternoon)_:
-1 OpAssign(O002_L1_Cutting_OP04)
+1 OpInShift(O002_L1_Cutting_OP04_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP04_D2_Night)_:
-1 OpAssign(O002_L1_Cutting_OP04)
+1 OpInShift(O002_L1_Cutting_OP04_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP04_D3_Morning)_:
-1 OpAssign(O002_L1_Cutting_OP04)
+1 OpInShift(O002_L1_Cutting_OP04_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP04_D3_Afternoon)_:
-1 OpAssign(O002_L1_Cutting_OP04)
+1 OpInShift(O002_L1_Cutting_OP04_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP04_D3_Night)_:
-1 OpAssign(O002_L1_Cutting_OP04)
+1 OpInShift(O002_L1_Cutting_OP04_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP04_D4_Morning)_:
-1 OpAssign(O002_L1_Cutting_OP04)
+1 OpInShift(O002_L1_Cutting_OP04_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP04_D4_Afternoon)_:
-1 OpAssign(O002_L1_Cutting_OP04)
+1 OpInShift(O002_L1_Cutting_OP04_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP04_D4_Night)_:
-1 OpAssign(O002_L1_Cutting_OP04)
+1 OpInShift(O002_L1_Cutting_OP04_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP04_D5_Morning)_:
-1 OpAssign(O002_L1_Cutting_OP04)
+1 OpInShift(O002_L1_Cutting_OP04_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP04_D5_Afternoon)_:
-1 OpAssign(O002_L1_Cutting_OP04)
+1 OpInShift(O002_L1_Cutting_OP04_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Cutting_OP04_D5_Night)_:
-1 OpAssign(O002_L1_Cutting_OP04)
+1 OpInShift(O002_L1_Cutting_OP04_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP01_D1_Morning)_:
-1 OpAssign(O002_L1_Assembly_OP01)
+1 OpInShift(O002_L1_Assembly_OP01_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP01_D1_Afternoon)_:
-1 OpAssign(O002_L1_Assembly_OP01)
+1 OpInShift(O002_L1_Assembly_OP01_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP01_D1_Night)_:
-1 OpAssign(O002_L1_Assembly_OP01)
+1 OpInShift(O002_L1_Assembly_OP01_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP01_D2_Morning)_:
-1 OpAssign(O002_L1_Assembly_OP01)
+1 OpInShift(O002_L1_Assembly_OP01_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP01_D2_Afternoon)_:
-1 OpAssign(O002_L1_Assembly_OP01)
+1 OpInShift(O002_L1_Assembly_OP01_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP01_D2_Night)_:
-1 OpAssign(O002_L1_Assembly_OP01)
+1 OpInShift(O002_L1_Assembly_OP01_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP01_D3_Morning)_:
-1 OpAssign(O002_L1_Assembly_OP01)
+1 OpInShift(O002_L1_Assembly_OP01_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP01_D3_Afternoon)_:
-1 OpAssign(O002_L1_Assembly_OP01)
+1 OpInShift(O002_L1_Assembly_OP01_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP01_D3_Night)_:
-1 OpAssign(O002_L1_Assembly_OP01)
+1 OpInShift(O002_L1_Assembly_OP01_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP01_D4_Morning)_:
-1 OpAssign(O002_L1_Assembly_OP01)
+1 OpInShift(O002_L1_Assembly_OP01_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP01_D4_Afternoon)_:
-1 OpAssign(O002_L1_Assembly_OP01)
+1 OpInShift(O002_L1_Assembly_OP01_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP01_D4_Night)_:
-1 OpAssign(O002_L1_Assembly_OP01)
+1 OpInShift(O002_L1_Assembly_OP01_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP01_D5_Morning)_:
-1 OpAssign(O002_L1_Assembly_OP01)
+1 OpInShift(O002_L1_Assembly_OP01_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP01_D5_Afternoon)_:
-1 OpAssign(O002_L1_Assembly_OP01)
+1 OpInShift(O002_L1_Assembly_OP01_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP01_D5_Night)_:
-1 OpAssign(O002_L1_Assembly_OP01)
+1 OpInShift(O002_L1_Assembly_OP01_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP02_D1_Morning)_:
-1 OpAssign(O002_L1_Assembly_OP02)
+1 OpInShift(O002_L1_Assembly_OP02_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP02_D1_Afternoon)_:
-1 OpAssign(O002_L1_Assembly_OP02)
+1 OpInShift(O002_L1_Assembly_OP02_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP02_D1_Night)_:
-1 OpAssign(O002_L1_Assembly_OP02)
+1 OpInShift(O002_L1_Assembly_OP02_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP02_D2_Morning)_:
-1 OpAssign(O002_L1_Assembly_OP02)
+1 OpInShift(O002_L1_Assembly_OP02_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP02_D2_Afternoon)_:
-1 OpAssign(O002_L1_Assembly_OP02)
+1 OpInShift(O002_L1_Assembly_OP02_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP02_D2_Night)_:
-1 OpAssign(O002_L1_Assembly_OP02)
+1 OpInShift(O002_L1_Assembly_OP02_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP02_D3_Morning)_:
-1 OpAssign(O002_L1_Assembly_OP02)
+1 OpInShift(O002_L1_Assembly_OP02_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP02_D3_Afternoon)_:
-1 OpAssign(O002_L1_Assembly_OP02)
+1 OpInShift(O002_L1_Assembly_OP02_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP02_D3_Night)_:
-1 OpAssign(O002_L1_Assembly_OP02)
+1 OpInShift(O002_L1_Assembly_OP02_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP02_D4_Morning)_:
-1 OpAssign(O002_L1_Assembly_OP02)
+1 OpInShift(O002_L1_Assembly_OP02_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP02_D4_Afternoon)_:
-1 OpAssign(O002_L1_Assembly_OP02)
+1 OpInShift(O002_L1_Assembly_OP02_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP02_D4_Night)_:
-1 OpAssign(O002_L1_Assembly_OP02)
+1 OpInShift(O002_L1_Assembly_OP02_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP02_D5_Morning)_:
-1 OpAssign(O002_L1_Assembly_OP02)
+1 OpInShift(O002_L1_Assembly_OP02_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP02_D5_Afternoon)_:
-1 OpAssign(O002_L1_Assembly_OP02)
+1 OpInShift(O002_L1_Assembly_OP02_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP02_D5_Night)_:
-1 OpAssign(O002_L1_Assembly_OP02)
+1 OpInShift(O002_L1_Assembly_OP02_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP04_D1_Morning)_:
-1 OpAssign(O002_L1_Assembly_OP04)
+1 OpInShift(O002_L1_Assembly_OP04_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP04_D1_Afternoon)_:
-1 OpAssign(O002_L1_Assembly_OP04)
+1 OpInShift(O002_L1_Assembly_OP04_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP04_D1_Night)_:
-1 OpAssign(O002_L1_Assembly_OP04)
+1 OpInShift(O002_L1_Assembly_OP04_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP04_D2_Morning)_:
-1 OpAssign(O002_L1_Assembly_OP04)
+1 OpInShift(O002_L1_Assembly_OP04_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP04_D2_Afternoon)_:
-1 OpAssign(O002_L1_Assembly_OP04)
+1 OpInShift(O002_L1_Assembly_OP04_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP04_D2_Night)_:
-1 OpAssign(O002_L1_Assembly_OP04)
+1 OpInShift(O002_L1_Assembly_OP04_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP04_D3_Morning)_:
-1 OpAssign(O002_L1_Assembly_OP04)
+1 OpInShift(O002_L1_Assembly_OP04_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP04_D3_Afternoon)_:
-1 OpAssign(O002_L1_Assembly_OP04)
+1 OpInShift(O002_L1_Assembly_OP04_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP04_D3_Night)_:
-1 OpAssign(O002_L1_Assembly_OP04)
+1 OpInShift(O002_L1_Assembly_OP04_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP04_D4_Morning)_:
-1 OpAssign(O002_L1_Assembly_OP04)
+1 OpInShift(O002_L1_Assembly_OP04_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP04_D4_Afternoon)_:
-1 OpAssign(O002_L1_Assembly_OP04)
+1 OpInShift(O002_L1_Assembly_OP04_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP04_D4_Night)_:
-1 OpAssign(O002_L1_Assembly_OP04)
+1 OpInShift(O002_L1_Assembly_OP04_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP04_D5_Morning)_:
-1 OpAssign(O002_L1_Assembly_OP04)
+1 OpInShift(O002_L1_Assembly_OP04_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP04_D5_Afternoon)_:
-1 OpAssign(O002_L1_Assembly_OP04)
+1 OpInShift(O002_L1_Assembly_OP04_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O002_L1_Assembly_OP04_D5_Night)_:
-1 OpAssign(O002_L1_Assembly_OP04)
+1 OpInShift(O002_L1_Assembly_OP04_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP01_D1_Morning)_:
-1 OpAssign(O003_L1_Cutting_OP01)
+1 OpInShift(O003_L1_Cutting_OP01_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP01_D1_Afternoon)_:
-1 OpAssign(O003_L1_Cutting_OP01)
+1 OpInShift(O003_L1_Cutting_OP01_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP01_D1_Night)_:
-1 OpAssign(O003_L1_Cutting_OP01)
+1 OpInShift(O003_L1_Cutting_OP01_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP01_D2_Morning)_:
-1 OpAssign(O003_L1_Cutting_OP01)
+1 OpInShift(O003_L1_Cutting_OP01_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP01_D2_Afternoon)_:
-1 OpAssign(O003_L1_Cutting_OP01)
+1 OpInShift(O003_L1_Cutting_OP01_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP01_D2_Night)_:
-1 OpAssign(O003_L1_Cutting_OP01)
+1 OpInShift(O003_L1_Cutting_OP01_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP01_D3_Morning)_:
-1 OpAssign(O003_L1_Cutting_OP01)
+1 OpInShift(O003_L1_Cutting_OP01_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP01_D3_Afternoon)_:
-1 OpAssign(O003_L1_Cutting_OP01)
+1 OpInShift(O003_L1_Cutting_OP01_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP01_D3_Night)_:
-1 OpAssign(O003_L1_Cutting_OP01)
+1 OpInShift(O003_L1_Cutting_OP01_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP01_D4_Morning)_:
-1 OpAssign(O003_L1_Cutting_OP01)
+1 OpInShift(O003_L1_Cutting_OP01_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP01_D4_Afternoon)_:
-1 OpAssign(O003_L1_Cutting_OP01)
+1 OpInShift(O003_L1_Cutting_OP01_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP01_D4_Night)_:
-1 OpAssign(O003_L1_Cutting_OP01)
+1 OpInShift(O003_L1_Cutting_OP01_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP01_D5_Morning)_:
-1 OpAssign(O003_L1_Cutting_OP01)
+1 OpInShift(O003_L1_Cutting_OP01_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP01_D5_Afternoon)_:
-1 OpAssign(O003_L1_Cutting_OP01)
+1 OpInShift(O003_L1_Cutting_OP01_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP01_D5_Night)_:
-1 OpAssign(O003_L1_Cutting_OP01)
+1 OpInShift(O003_L1_Cutting_OP01_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP03_D1_Morning)_:
-1 OpAssign(O003_L1_Cutting_OP03)
+1 OpInShift(O003_L1_Cutting_OP03_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP03_D1_Afternoon)_:
-1 OpAssign(O003_L1_Cutting_OP03)
+1 OpInShift(O003_L1_Cutting_OP03_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP03_D1_Night)_:
-1 OpAssign(O003_L1_Cutting_OP03)
+1 OpInShift(O003_L1_Cutting_OP03_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP03_D2_Morning)_:
-1 OpAssign(O003_L1_Cutting_OP03)
+1 OpInShift(O003_L1_Cutting_OP03_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP03_D2_Afternoon)_:
-1 OpAssign(O003_L1_Cutting_OP03)
+1 OpInShift(O003_L1_Cutting_OP03_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP03_D2_Night)_:
-1 OpAssign(O003_L1_Cutting_OP03)
+1 OpInShift(O003_L1_Cutting_OP03_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP03_D3_Morning)_:
-1 OpAssign(O003_L1_Cutting_OP03)
+1 OpInShift(O003_L1_Cutting_OP03_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP03_D3_Afternoon)_:
-1 OpAssign(O003_L1_Cutting_OP03)
+1 OpInShift(O003_L1_Cutting_OP03_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP03_D3_Night)_:
-1 OpAssign(O003_L1_Cutting_OP03)
+1 OpInShift(O003_L1_Cutting_OP03_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP03_D4_Morning)_:
-1 OpAssign(O003_L1_Cutting_OP03)
+1 OpInShift(O003_L1_Cutting_OP03_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP03_D4_Afternoon)_:
-1 OpAssign(O003_L1_Cutting_OP03)
+1 OpInShift(O003_L1_Cutting_OP03_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP03_D4_Night)_:
-1 OpAssign(O003_L1_Cutting_OP03)
+1 OpInShift(O003_L1_Cutting_OP03_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP03_D5_Morning)_:
-1 OpAssign(O003_L1_Cutting_OP03)
+1 OpInShift(O003_L1_Cutting_OP03_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP03_D5_Afternoon)_:
-1 OpAssign(O003_L1_Cutting_OP03)
+1 OpInShift(O003_L1_Cutting_OP03_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP03_D5_Night)_:
-1 OpAssign(O003_L1_Cutting_OP03)
+1 OpInShift(O003_L1_Cutting_OP03_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP04_D1_Morning)_:
-1 OpAssign(O003_L1_Cutting_OP04)
+1 OpInShift(O003_L1_Cutting_OP04_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP04_D1_Afternoon)_:
-1 OpAssign(O003_L1_Cutting_OP04)
+1 OpInShift(O003_L1_Cutting_OP04_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP04_D1_Night)_:
-1 OpAssign(O003_L1_Cutting_OP04)
+1 OpInShift(O003_L1_Cutting_OP04_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP04_D2_Morning)_:
-1 OpAssign(O003_L1_Cutting_OP04)
+1 OpInShift(O003_L1_Cutting_OP04_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP04_D2_Afternoon)_:
-1 OpAssign(O003_L1_Cutting_OP04)
+1 OpInShift(O003_L1_Cutting_OP04_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP04_D2_Night)_:
-1 OpAssign(O003_L1_Cutting_OP04)
+1 OpInShift(O003_L1_Cutting_OP04_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP04_D3_Morning)_:
-1 OpAssign(O003_L1_Cutting_OP04)
+1 OpInShift(O003_L1_Cutting_OP04_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP04_D3_Afternoon)_:
-1 OpAssign(O003_L1_Cutting_OP04)
+1 OpInShift(O003_L1_Cutting_OP04_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP04_D3_Night)_:
-1 OpAssign(O003_L1_Cutting_OP04)
+1 OpInShift(O003_L1_Cutting_OP04_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP04_D4_Morning)_:
-1 OpAssign(O003_L1_Cutting_OP04)
+1 OpInShift(O003_L1_Cutting_OP04_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP04_D4_Afternoon)_:
-1 OpAssign(O003_L1_Cutting_OP04)
+1 OpInShift(O003_L1_Cutting_OP04_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP04_D4_Night)_:
-1 OpAssign(O003_L1_Cutting_OP04)
+1 OpInShift(O003_L1_Cutting_OP04_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP04_D5_Morning)_:
-1 OpAssign(O003_L1_Cutting_OP04)
+1 OpInShift(O003_L1_Cutting_OP04_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP04_D5_Afternoon)_:
-1 OpAssign(O003_L1_Cutting_OP04)
+1 OpInShift(O003_L1_Cutting_OP04_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Cutting_OP04_D5_Night)_:
-1 OpAssign(O003_L1_Cutting_OP04)
+1 OpInShift(O003_L1_Cutting_OP04_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP01_D1_Morning)_:
-1 OpAssign(O003_L1_Assembly_OP01)
+1 OpInShift(O003_L1_Assembly_OP01_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP01_D1_Afternoon)_:
-1 OpAssign(O003_L1_Assembly_OP01)
+1 OpInShift(O003_L1_Assembly_OP01_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP01_D1_Night)_:
-1 OpAssign(O003_L1_Assembly_OP01)
+1 OpInShift(O003_L1_Assembly_OP01_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP01_D2_Morning)_:
-1 OpAssign(O003_L1_Assembly_OP01)
+1 OpInShift(O003_L1_Assembly_OP01_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP01_D2_Afternoon)_:
-1 OpAssign(O003_L1_Assembly_OP01)
+1 OpInShift(O003_L1_Assembly_OP01_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP01_D2_Night)_:
-1 OpAssign(O003_L1_Assembly_OP01)
+1 OpInShift(O003_L1_Assembly_OP01_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP01_D3_Morning)_:
-1 OpAssign(O003_L1_Assembly_OP01)
+1 OpInShift(O003_L1_Assembly_OP01_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP01_D3_Afternoon)_:
-1 OpAssign(O003_L1_Assembly_OP01)
+1 OpInShift(O003_L1_Assembly_OP01_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP01_D3_Night)_:
-1 OpAssign(O003_L1_Assembly_OP01)
+1 OpInShift(O003_L1_Assembly_OP01_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP01_D4_Morning)_:
-1 OpAssign(O003_L1_Assembly_OP01)
+1 OpInShift(O003_L1_Assembly_OP01_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP01_D4_Afternoon)_:
-1 OpAssign(O003_L1_Assembly_OP01)
+1 OpInShift(O003_L1_Assembly_OP01_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP01_D4_Night)_:
-1 OpAssign(O003_L1_Assembly_OP01)
+1 OpInShift(O003_L1_Assembly_OP01_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP01_D5_Morning)_:
-1 OpAssign(O003_L1_Assembly_OP01)
+1 OpInShift(O003_L1_Assembly_OP01_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP01_D5_Afternoon)_:
-1 OpAssign(O003_L1_Assembly_OP01)
+1 OpInShift(O003_L1_Assembly_OP01_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP01_D5_Night)_:
-1 OpAssign(O003_L1_Assembly_OP01)
+1 OpInShift(O003_L1_Assembly_OP01_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP02_D1_Morning)_:
-1 OpAssign(O003_L1_Assembly_OP02)
+1 OpInShift(O003_L1_Assembly_OP02_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP02_D1_Afternoon)_:
-1 OpAssign(O003_L1_Assembly_OP02)
+1 OpInShift(O003_L1_Assembly_OP02_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP02_D1_Night)_:
-1 OpAssign(O003_L1_Assembly_OP02)
+1 OpInShift(O003_L1_Assembly_OP02_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP02_D2_Morning)_:
-1 OpAssign(O003_L1_Assembly_OP02)
+1 OpInShift(O003_L1_Assembly_OP02_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP02_D2_Afternoon)_:
-1 OpAssign(O003_L1_Assembly_OP02)
+1 OpInShift(O003_L1_Assembly_OP02_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP02_D2_Night)_:
-1 OpAssign(O003_L1_Assembly_OP02)
+1 OpInShift(O003_L1_Assembly_OP02_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP02_D3_Morning)_:
-1 OpAssign(O003_L1_Assembly_OP02)
+1 OpInShift(O003_L1_Assembly_OP02_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP02_D3_Afternoon)_:
-1 OpAssign(O003_L1_Assembly_OP02)
+1 OpInShift(O003_L1_Assembly_OP02_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP02_D3_Night)_:
-1 OpAssign(O003_L1_Assembly_OP02)
+1 OpInShift(O003_L1_Assembly_OP02_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP02_D4_Morning)_:
-1 OpAssign(O003_L1_Assembly_OP02)
+1 OpInShift(O003_L1_Assembly_OP02_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP02_D4_Afternoon)_:
-1 OpAssign(O003_L1_Assembly_OP02)
+1 OpInShift(O003_L1_Assembly_OP02_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP02_D4_Night)_:
-1 OpAssign(O003_L1_Assembly_OP02)
+1 OpInShift(O003_L1_Assembly_OP02_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP02_D5_Morning)_:
-1 OpAssign(O003_L1_Assembly_OP02)
+1 OpInShift(O003_L1_Assembly_OP02_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP02_D5_Afternoon)_:
-1 OpAssign(O003_L1_Assembly_OP02)
+1 OpInShift(O003_L1_Assembly_OP02_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP02_D5_Night)_:
-1 OpAssign(O003_L1_Assembly_OP02)
+1 OpInShift(O003_L1_Assembly_OP02_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP04_D1_Morning)_:
-1 OpAssign(O003_L1_Assembly_OP04)
+1 OpInShift(O003_L1_Assembly_OP04_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP04_D1_Afternoon)_:
-1 OpAssign(O003_L1_Assembly_OP04)
+1 OpInShift(O003_L1_Assembly_OP04_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP04_D1_Night)_:
-1 OpAssign(O003_L1_Assembly_OP04)
+1 OpInShift(O003_L1_Assembly_OP04_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP04_D2_Morning)_:
-1 OpAssign(O003_L1_Assembly_OP04)
+1 OpInShift(O003_L1_Assembly_OP04_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP04_D2_Afternoon)_:
-1 OpAssign(O003_L1_Assembly_OP04)
+1 OpInShift(O003_L1_Assembly_OP04_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP04_D2_Night)_:
-1 OpAssign(O003_L1_Assembly_OP04)
+1 OpInShift(O003_L1_Assembly_OP04_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP04_D3_Morning)_:
-1 OpAssign(O003_L1_Assembly_OP04)
+1 OpInShift(O003_L1_Assembly_OP04_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP04_D3_Afternoon)_:
-1 OpAssign(O003_L1_Assembly_OP04)
+1 OpInShift(O003_L1_Assembly_OP04_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP04_D3_Night)_:
-1 OpAssign(O003_L1_Assembly_OP04)
+1 OpInShift(O003_L1_Assembly_OP04_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP04_D4_Morning)_:
-1 OpAssign(O003_L1_Assembly_OP04)
+1 OpInShift(O003_L1_Assembly_OP04_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP04_D4_Afternoon)_:
-1 OpAssign(O003_L1_Assembly_OP04)
+1 OpInShift(O003_L1_Assembly_OP04_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP04_D4_Night)_:
-1 OpAssign(O003_L1_Assembly_OP04)
+1 OpInShift(O003_L1_Assembly_OP04_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP04_D5_Morning)_:
-1 OpAssign(O003_L1_Assembly_OP04)
+1 OpInShift(O003_L1_Assembly_OP04_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP04_D5_Afternoon)_:
-1 OpAssign(O003_L1_Assembly_OP04)
+1 OpInShift(O003_L1_Assembly_OP04_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O003_L1_Assembly_OP04_D5_Night)_:
-1 OpAssign(O003_L1_Assembly_OP04)
+1 OpInShift(O003_L1_Assembly_OP04_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP01_D1_Morning)_:
-1 OpAssign(O004_L1_Cutting_OP01)
+1 OpInShift(O004_L1_Cutting_OP01_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP01_D1_Afternoon)_:
-1 OpAssign(O004_L1_Cutting_OP01)
+1 OpInShift(O004_L1_Cutting_OP01_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP01_D1_Night)_:
-1 OpAssign(O004_L1_Cutting_OP01)
+1 OpInShift(O004_L1_Cutting_OP01_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP01_D2_Morning)_:
-1 OpAssign(O004_L1_Cutting_OP01)
+1 OpInShift(O004_L1_Cutting_OP01_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP01_D2_Afternoon)_:
-1 OpAssign(O004_L1_Cutting_OP01)
+1 OpInShift(O004_L1_Cutting_OP01_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP01_D2_Night)_:
-1 OpAssign(O004_L1_Cutting_OP01)
+1 OpInShift(O004_L1_Cutting_OP01_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP01_D3_Morning)_:
-1 OpAssign(O004_L1_Cutting_OP01)
+1 OpInShift(O004_L1_Cutting_OP01_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP01_D3_Afternoon)_:
-1 OpAssign(O004_L1_Cutting_OP01)
+1 OpInShift(O004_L1_Cutting_OP01_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP01_D3_Night)_:
-1 OpAssign(O004_L1_Cutting_OP01)
+1 OpInShift(O004_L1_Cutting_OP01_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP01_D4_Morning)_:
-1 OpAssign(O004_L1_Cutting_OP01)
+1 OpInShift(O004_L1_Cutting_OP01_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP01_D4_Afternoon)_:
-1 OpAssign(O004_L1_Cutting_OP01)
+1 OpInShift(O004_L1_Cutting_OP01_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP01_D4_Night)_:
-1 OpAssign(O004_L1_Cutting_OP01)
+1 OpInShift(O004_L1_Cutting_OP01_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP01_D5_Morning)_:
-1 OpAssign(O004_L1_Cutting_OP01)
+1 OpInShift(O004_L1_Cutting_OP01_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP01_D5_Afternoon)_:
-1 OpAssign(O004_L1_Cutting_OP01)
+1 OpInShift(O004_L1_Cutting_OP01_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP01_D5_Night)_:
-1 OpAssign(O004_L1_Cutting_OP01)
+1 OpInShift(O004_L1_Cutting_OP01_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP03_D1_Morning)_:
-1 OpAssign(O004_L1_Cutting_OP03)
+1 OpInShift(O004_L1_Cutting_OP03_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP03_D1_Afternoon)_:
-1 OpAssign(O004_L1_Cutting_OP03)
+1 OpInShift(O004_L1_Cutting_OP03_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP03_D1_Night)_:
-1 OpAssign(O004_L1_Cutting_OP03)
+1 OpInShift(O004_L1_Cutting_OP03_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP03_D2_Morning)_:
-1 OpAssign(O004_L1_Cutting_OP03)
+1 OpInShift(O004_L1_Cutting_OP03_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP03_D2_Afternoon)_:
-1 OpAssign(O004_L1_Cutting_OP03)
+1 OpInShift(O004_L1_Cutting_OP03_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP03_D2_Night)_:
-1 OpAssign(O004_L1_Cutting_OP03)
+1 OpInShift(O004_L1_Cutting_OP03_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP03_D3_Morning)_:
-1 OpAssign(O004_L1_Cutting_OP03)
+1 OpInShift(O004_L1_Cutting_OP03_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP03_D3_Afternoon)_:
-1 OpAssign(O004_L1_Cutting_OP03)
+1 OpInShift(O004_L1_Cutting_OP03_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP03_D3_Night)_:
-1 OpAssign(O004_L1_Cutting_OP03)
+1 OpInShift(O004_L1_Cutting_OP03_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP03_D4_Morning)_:
-1 OpAssign(O004_L1_Cutting_OP03)
+1 OpInShift(O004_L1_Cutting_OP03_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP03_D4_Afternoon)_:
-1 OpAssign(O004_L1_Cutting_OP03)
+1 OpInShift(O004_L1_Cutting_OP03_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP03_D4_Night)_:
-1 OpAssign(O004_L1_Cutting_OP03)
+1 OpInShift(O004_L1_Cutting_OP03_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP03_D5_Morning)_:
-1 OpAssign(O004_L1_Cutting_OP03)
+1 OpInShift(O004_L1_Cutting_OP03_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP03_D5_Afternoon)_:
-1 OpAssign(O004_L1_Cutting_OP03)
+1 OpInShift(O004_L1_Cutting_OP03_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP03_D5_Night)_:
-1 OpAssign(O004_L1_Cutting_OP03)
+1 OpInShift(O004_L1_Cutting_OP03_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP04_D1_Morning)_:
-1 OpAssign(O004_L1_Cutting_OP04)
+1 OpInShift(O004_L1_Cutting_OP04_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP04_D1_Afternoon)_:
-1 OpAssign(O004_L1_Cutting_OP04)
+1 OpInShift(O004_L1_Cutting_OP04_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP04_D1_Night)_:
-1 OpAssign(O004_L1_Cutting_OP04)
+1 OpInShift(O004_L1_Cutting_OP04_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP04_D2_Morning)_:
-1 OpAssign(O004_L1_Cutting_OP04)
+1 OpInShift(O004_L1_Cutting_OP04_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP04_D2_Afternoon)_:
-1 OpAssign(O004_L1_Cutting_OP04)
+1 OpInShift(O004_L1_Cutting_OP04_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP04_D2_Night)_:
-1 OpAssign(O004_L1_Cutting_OP04)
+1 OpInShift(O004_L1_Cutting_OP04_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP04_D3_Morning)_:
-1 OpAssign(O004_L1_Cutting_OP04)
+1 OpInShift(O004_L1_Cutting_OP04_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP04_D3_Afternoon)_:
-1 OpAssign(O004_L1_Cutting_OP04)
+1 OpInShift(O004_L1_Cutting_OP04_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP04_D3_Night)_:
-1 OpAssign(O004_L1_Cutting_OP04)
+1 OpInShift(O004_L1_Cutting_OP04_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP04_D4_Morning)_:
-1 OpAssign(O004_L1_Cutting_OP04)
+1 OpInShift(O004_L1_Cutting_OP04_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP04_D4_Afternoon)_:
-1 OpAssign(O004_L1_Cutting_OP04)
+1 OpInShift(O004_L1_Cutting_OP04_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP04_D4_Night)_:
-1 OpAssign(O004_L1_Cutting_OP04)
+1 OpInShift(O004_L1_Cutting_OP04_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP04_D5_Morning)_:
-1 OpAssign(O004_L1_Cutting_OP04)
+1 OpInShift(O004_L1_Cutting_OP04_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP04_D5_Afternoon)_:
-1 OpAssign(O004_L1_Cutting_OP04)
+1 OpInShift(O004_L1_Cutting_OP04_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Cutting_OP04_D5_Night)_:
-1 OpAssign(O004_L1_Cutting_OP04)
+1 OpInShift(O004_L1_Cutting_OP04_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP01_D1_Morning)_:
-1 OpAssign(O004_L1_Assembly_OP01)
+1 OpInShift(O004_L1_Assembly_OP01_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP01_D1_Afternoon)_:
-1 OpAssign(O004_L1_Assembly_OP01)
+1 OpInShift(O004_L1_Assembly_OP01_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP01_D1_Night)_:
-1 OpAssign(O004_L1_Assembly_OP01)
+1 OpInShift(O004_L1_Assembly_OP01_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP01_D2_Morning)_:
-1 OpAssign(O004_L1_Assembly_OP01)
+1 OpInShift(O004_L1_Assembly_OP01_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP01_D2_Afternoon)_:
-1 OpAssign(O004_L1_Assembly_OP01)
+1 OpInShift(O004_L1_Assembly_OP01_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP01_D2_Night)_:
-1 OpAssign(O004_L1_Assembly_OP01)
+1 OpInShift(O004_L1_Assembly_OP01_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP01_D3_Morning)_:
-1 OpAssign(O004_L1_Assembly_OP01)
+1 OpInShift(O004_L1_Assembly_OP01_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP01_D3_Afternoon)_:
-1 OpAssign(O004_L1_Assembly_OP01)
+1 OpInShift(O004_L1_Assembly_OP01_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP01_D3_Night)_:
-1 OpAssign(O004_L1_Assembly_OP01)
+1 OpInShift(O004_L1_Assembly_OP01_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP01_D4_Morning)_:
-1 OpAssign(O004_L1_Assembly_OP01)
+1 OpInShift(O004_L1_Assembly_OP01_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP01_D4_Afternoon)_:
-1 OpAssign(O004_L1_Assembly_OP01)
+1 OpInShift(O004_L1_Assembly_OP01_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP01_D4_Night)_:
-1 OpAssign(O004_L1_Assembly_OP01)
+1 OpInShift(O004_L1_Assembly_OP01_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP01_D5_Morning)_:
-1 OpAssign(O004_L1_Assembly_OP01)
+1 OpInShift(O004_L1_Assembly_OP01_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP01_D5_Afternoon)_:
-1 OpAssign(O004_L1_Assembly_OP01)
+1 OpInShift(O004_L1_Assembly_OP01_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP01_D5_Night)_:
-1 OpAssign(O004_L1_Assembly_OP01)
+1 OpInShift(O004_L1_Assembly_OP01_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP02_D1_Morning)_:
-1 OpAssign(O004_L1_Assembly_OP02)
+1 OpInShift(O004_L1_Assembly_OP02_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP02_D1_Afternoon)_:
-1 OpAssign(O004_L1_Assembly_OP02)
+1 OpInShift(O004_L1_Assembly_OP02_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP02_D1_Night)_:
-1 OpAssign(O004_L1_Assembly_OP02)
+1 OpInShift(O004_L1_Assembly_OP02_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP02_D2_Morning)_:
-1 OpAssign(O004_L1_Assembly_OP02)
+1 OpInShift(O004_L1_Assembly_OP02_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP02_D2_Afternoon)_:
-1 OpAssign(O004_L1_Assembly_OP02)
+1 OpInShift(O004_L1_Assembly_OP02_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP02_D2_Night)_:
-1 OpAssign(O004_L1_Assembly_OP02)
+1 OpInShift(O004_L1_Assembly_OP02_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP02_D3_Morning)_:
-1 OpAssign(O004_L1_Assembly_OP02)
+1 OpInShift(O004_L1_Assembly_OP02_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP02_D3_Afternoon)_:
-1 OpAssign(O004_L1_Assembly_OP02)
+1 OpInShift(O004_L1_Assembly_OP02_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP02_D3_Night)_:
-1 OpAssign(O004_L1_Assembly_OP02)
+1 OpInShift(O004_L1_Assembly_OP02_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP02_D4_Morning)_:
-1 OpAssign(O004_L1_Assembly_OP02)
+1 OpInShift(O004_L1_Assembly_OP02_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP02_D4_Afternoon)_:
-1 OpAssign(O004_L1_Assembly_OP02)
+1 OpInShift(O004_L1_Assembly_OP02_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP02_D4_Night)_:
-1 OpAssign(O004_L1_Assembly_OP02)
+1 OpInShift(O004_L1_Assembly_OP02_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP02_D5_Morning)_:
-1 OpAssign(O004_L1_Assembly_OP02)
+1 OpInShift(O004_L1_Assembly_OP02_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP02_D5_Afternoon)_:
-1 OpAssign(O004_L1_Assembly_OP02)
+1 OpInShift(O004_L1_Assembly_OP02_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP02_D5_Night)_:
-1 OpAssign(O004_L1_Assembly_OP02)
+1 OpInShift(O004_L1_Assembly_OP02_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP04_D1_Morning)_:
-1 OpAssign(O004_L1_Assembly_OP04)
+1 OpInShift(O004_L1_Assembly_OP04_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP04_D1_Afternoon)_:
-1 OpAssign(O004_L1_Assembly_OP04)
+1 OpInShift(O004_L1_Assembly_OP04_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP04_D1_Night)_:
-1 OpAssign(O004_L1_Assembly_OP04)
+1 OpInShift(O004_L1_Assembly_OP04_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP04_D2_Morning)_:
-1 OpAssign(O004_L1_Assembly_OP04)
+1 OpInShift(O004_L1_Assembly_OP04_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP04_D2_Afternoon)_:
-1 OpAssign(O004_L1_Assembly_OP04)
+1 OpInShift(O004_L1_Assembly_OP04_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP04_D2_Night)_:
-1 OpAssign(O004_L1_Assembly_OP04)
+1 OpInShift(O004_L1_Assembly_OP04_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP04_D3_Morning)_:
-1 OpAssign(O004_L1_Assembly_OP04)
+1 OpInShift(O004_L1_Assembly_OP04_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP04_D3_Afternoon)_:
-1 OpAssign(O004_L1_Assembly_OP04)
+1 OpInShift(O004_L1_Assembly_OP04_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP04_D3_Night)_:
-1 OpAssign(O004_L1_Assembly_OP04)
+1 OpInShift(O004_L1_Assembly_OP04_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP04_D4_Morning)_:
-1 OpAssign(O004_L1_Assembly_OP04)
+1 OpInShift(O004_L1_Assembly_OP04_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP04_D4_Afternoon)_:
-1 OpAssign(O004_L1_Assembly_OP04)
+1 OpInShift(O004_L1_Assembly_OP04_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP04_D4_Night)_:
-1 OpAssign(O004_L1_Assembly_OP04)
+1 OpInShift(O004_L1_Assembly_OP04_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP04_D5_Morning)_:
-1 OpAssign(O004_L1_Assembly_OP04)
+1 OpInShift(O004_L1_Assembly_OP04_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP04_D5_Afternoon)_:
-1 OpAssign(O004_L1_Assembly_OP04)
+1 OpInShift(O004_L1_Assembly_OP04_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L1_Assembly_OP04_D5_Night)_:
-1 OpAssign(O004_L1_Assembly_OP04)
+1 OpInShift(O004_L1_Assembly_OP04_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP01_D1_Morning)_:
-1 OpAssign(O004_L2_Cutting_OP01)
+1 OpInShift(O004_L2_Cutting_OP01_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP01_D1_Afternoon)_:
-1 OpAssign(O004_L2_Cutting_OP01)
+1 OpInShift(O004_L2_Cutting_OP01_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP01_D1_Night)_:
-1 OpAssign(O004_L2_Cutting_OP01)
+1 OpInShift(O004_L2_Cutting_OP01_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP01_D2_Morning)_:
-1 OpAssign(O004_L2_Cutting_OP01)
+1 OpInShift(O004_L2_Cutting_OP01_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP01_D2_Afternoon)_:
-1 OpAssign(O004_L2_Cutting_OP01)
+1 OpInShift(O004_L2_Cutting_OP01_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP01_D2_Night)_:
-1 OpAssign(O004_L2_Cutting_OP01)
+1 OpInShift(O004_L2_Cutting_OP01_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP01_D3_Morning)_:
-1 OpAssign(O004_L2_Cutting_OP01)
+1 OpInShift(O004_L2_Cutting_OP01_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP01_D3_Afternoon)_:
-1 OpAssign(O004_L2_Cutting_OP01)
+1 OpInShift(O004_L2_Cutting_OP01_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP01_D3_Night)_:
-1 OpAssign(O004_L2_Cutting_OP01)
+1 OpInShift(O004_L2_Cutting_OP01_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP01_D4_Morning)_:
-1 OpAssign(O004_L2_Cutting_OP01)
+1 OpInShift(O004_L2_Cutting_OP01_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP01_D4_Afternoon)_:
-1 OpAssign(O004_L2_Cutting_OP01)
+1 OpInShift(O004_L2_Cutting_OP01_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP01_D4_Night)_:
-1 OpAssign(O004_L2_Cutting_OP01)
+1 OpInShift(O004_L2_Cutting_OP01_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP01_D5_Morning)_:
-1 OpAssign(O004_L2_Cutting_OP01)
+1 OpInShift(O004_L2_Cutting_OP01_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP01_D5_Afternoon)_:
-1 OpAssign(O004_L2_Cutting_OP01)
+1 OpInShift(O004_L2_Cutting_OP01_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP01_D5_Night)_:
-1 OpAssign(O004_L2_Cutting_OP01)
+1 OpInShift(O004_L2_Cutting_OP01_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP03_D1_Morning)_:
-1 OpAssign(O004_L2_Cutting_OP03)
+1 OpInShift(O004_L2_Cutting_OP03_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP03_D1_Afternoon)_:
-1 OpAssign(O004_L2_Cutting_OP03)
+1 OpInShift(O004_L2_Cutting_OP03_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP03_D1_Night)_:
-1 OpAssign(O004_L2_Cutting_OP03)
+1 OpInShift(O004_L2_Cutting_OP03_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP03_D2_Morning)_:
-1 OpAssign(O004_L2_Cutting_OP03)
+1 OpInShift(O004_L2_Cutting_OP03_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP03_D2_Afternoon)_:
-1 OpAssign(O004_L2_Cutting_OP03)
+1 OpInShift(O004_L2_Cutting_OP03_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP03_D2_Night)_:
-1 OpAssign(O004_L2_Cutting_OP03)
+1 OpInShift(O004_L2_Cutting_OP03_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP03_D3_Morning)_:
-1 OpAssign(O004_L2_Cutting_OP03)
+1 OpInShift(O004_L2_Cutting_OP03_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP03_D3_Afternoon)_:
-1 OpAssign(O004_L2_Cutting_OP03)
+1 OpInShift(O004_L2_Cutting_OP03_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP03_D3_Night)_:
-1 OpAssign(O004_L2_Cutting_OP03)
+1 OpInShift(O004_L2_Cutting_OP03_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP03_D4_Morning)_:
-1 OpAssign(O004_L2_Cutting_OP03)
+1 OpInShift(O004_L2_Cutting_OP03_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP03_D4_Afternoon)_:
-1 OpAssign(O004_L2_Cutting_OP03)
+1 OpInShift(O004_L2_Cutting_OP03_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP03_D4_Night)_:
-1 OpAssign(O004_L2_Cutting_OP03)
+1 OpInShift(O004_L2_Cutting_OP03_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP03_D5_Morning)_:
-1 OpAssign(O004_L2_Cutting_OP03)
+1 OpInShift(O004_L2_Cutting_OP03_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP03_D5_Afternoon)_:
-1 OpAssign(O004_L2_Cutting_OP03)
+1 OpInShift(O004_L2_Cutting_OP03_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP03_D5_Night)_:
-1 OpAssign(O004_L2_Cutting_OP03)
+1 OpInShift(O004_L2_Cutting_OP03_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP04_D1_Morning)_:
-1 OpAssign(O004_L2_Cutting_OP04)
+1 OpInShift(O004_L2_Cutting_OP04_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP04_D1_Afternoon)_:
-1 OpAssign(O004_L2_Cutting_OP04)
+1 OpInShift(O004_L2_Cutting_OP04_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP04_D1_Night)_:
-1 OpAssign(O004_L2_Cutting_OP04)
+1 OpInShift(O004_L2_Cutting_OP04_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP04_D2_Morning)_:
-1 OpAssign(O004_L2_Cutting_OP04)
+1 OpInShift(O004_L2_Cutting_OP04_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP04_D2_Afternoon)_:
-1 OpAssign(O004_L2_Cutting_OP04)
+1 OpInShift(O004_L2_Cutting_OP04_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP04_D2_Night)_:
-1 OpAssign(O004_L2_Cutting_OP04)
+1 OpInShift(O004_L2_Cutting_OP04_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP04_D3_Morning)_:
-1 OpAssign(O004_L2_Cutting_OP04)
+1 OpInShift(O004_L2_Cutting_OP04_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP04_D3_Afternoon)_:
-1 OpAssign(O004_L2_Cutting_OP04)
+1 OpInShift(O004_L2_Cutting_OP04_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP04_D3_Night)_:
-1 OpAssign(O004_L2_Cutting_OP04)
+1 OpInShift(O004_L2_Cutting_OP04_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP04_D4_Morning)_:
-1 OpAssign(O004_L2_Cutting_OP04)
+1 OpInShift(O004_L2_Cutting_OP04_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP04_D4_Afternoon)_:
-1 OpAssign(O004_L2_Cutting_OP04)
+1 OpInShift(O004_L2_Cutting_OP04_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP04_D4_Night)_:
-1 OpAssign(O004_L2_Cutting_OP04)
+1 OpInShift(O004_L2_Cutting_OP04_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP04_D5_Morning)_:
-1 OpAssign(O004_L2_Cutting_OP04)
+1 OpInShift(O004_L2_Cutting_OP04_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP04_D5_Afternoon)_:
-1 OpAssign(O004_L2_Cutting_OP04)
+1 OpInShift(O004_L2_Cutting_OP04_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Cutting_OP04_D5_Night)_:
-1 OpAssign(O004_L2_Cutting_OP04)
+1 OpInShift(O004_L2_Cutting_OP04_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP01_D1_Morning)_:
-1 OpAssign(O004_L2_Assembly_OP01)
+1 OpInShift(O004_L2_Assembly_OP01_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP01_D1_Afternoon)_:
-1 OpAssign(O004_L2_Assembly_OP01)
+1 OpInShift(O004_L2_Assembly_OP01_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP01_D1_Night)_:
-1 OpAssign(O004_L2_Assembly_OP01)
+1 OpInShift(O004_L2_Assembly_OP01_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP01_D2_Morning)_:
-1 OpAssign(O004_L2_Assembly_OP01)
+1 OpInShift(O004_L2_Assembly_OP01_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP01_D2_Afternoon)_:
-1 OpAssign(O004_L2_Assembly_OP01)
+1 OpInShift(O004_L2_Assembly_OP01_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP01_D2_Night)_:
-1 OpAssign(O004_L2_Assembly_OP01)
+1 OpInShift(O004_L2_Assembly_OP01_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP01_D3_Morning)_:
-1 OpAssign(O004_L2_Assembly_OP01)
+1 OpInShift(O004_L2_Assembly_OP01_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP01_D3_Afternoon)_:
-1 OpAssign(O004_L2_Assembly_OP01)
+1 OpInShift(O004_L2_Assembly_OP01_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP01_D3_Night)_:
-1 OpAssign(O004_L2_Assembly_OP01)
+1 OpInShift(O004_L2_Assembly_OP01_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP01_D4_Morning)_:
-1 OpAssign(O004_L2_Assembly_OP01)
+1 OpInShift(O004_L2_Assembly_OP01_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP01_D4_Afternoon)_:
-1 OpAssign(O004_L2_Assembly_OP01)
+1 OpInShift(O004_L2_Assembly_OP01_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP01_D4_Night)_:
-1 OpAssign(O004_L2_Assembly_OP01)
+1 OpInShift(O004_L2_Assembly_OP01_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP01_D5_Morning)_:
-1 OpAssign(O004_L2_Assembly_OP01)
+1 OpInShift(O004_L2_Assembly_OP01_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP01_D5_Afternoon)_:
-1 OpAssign(O004_L2_Assembly_OP01)
+1 OpInShift(O004_L2_Assembly_OP01_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP01_D5_Night)_:
-1 OpAssign(O004_L2_Assembly_OP01)
+1 OpInShift(O004_L2_Assembly_OP01_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP02_D1_Morning)_:
-1 OpAssign(O004_L2_Assembly_OP02)
+1 OpInShift(O004_L2_Assembly_OP02_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP02_D1_Afternoon)_:
-1 OpAssign(O004_L2_Assembly_OP02)
+1 OpInShift(O004_L2_Assembly_OP02_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP02_D1_Night)_:
-1 OpAssign(O004_L2_Assembly_OP02)
+1 OpInShift(O004_L2_Assembly_OP02_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP02_D2_Morning)_:
-1 OpAssign(O004_L2_Assembly_OP02)
+1 OpInShift(O004_L2_Assembly_OP02_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP02_D2_Afternoon)_:
-1 OpAssign(O004_L2_Assembly_OP02)
+1 OpInShift(O004_L2_Assembly_OP02_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP02_D2_Night)_:
-1 OpAssign(O004_L2_Assembly_OP02)
+1 OpInShift(O004_L2_Assembly_OP02_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP02_D3_Morning)_:
-1 OpAssign(O004_L2_Assembly_OP02)
+1 OpInShift(O004_L2_Assembly_OP02_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP02_D3_Afternoon)_:
-1 OpAssign(O004_L2_Assembly_OP02)
+1 OpInShift(O004_L2_Assembly_OP02_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP02_D3_Night)_:
-1 OpAssign(O004_L2_Assembly_OP02)
+1 OpInShift(O004_L2_Assembly_OP02_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP02_D4_Morning)_:
-1 OpAssign(O004_L2_Assembly_OP02)
+1 OpInShift(O004_L2_Assembly_OP02_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP02_D4_Afternoon)_:
-1 OpAssign(O004_L2_Assembly_OP02)
+1 OpInShift(O004_L2_Assembly_OP02_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP02_D4_Night)_:
-1 OpAssign(O004_L2_Assembly_OP02)
+1 OpInShift(O004_L2_Assembly_OP02_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP02_D5_Morning)_:
-1 OpAssign(O004_L2_Assembly_OP02)
+1 OpInShift(O004_L2_Assembly_OP02_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP02_D5_Afternoon)_:
-1 OpAssign(O004_L2_Assembly_OP02)
+1 OpInShift(O004_L2_Assembly_OP02_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP02_D5_Night)_:
-1 OpAssign(O004_L2_Assembly_OP02)
+1 OpInShift(O004_L2_Assembly_OP02_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP04_D1_Morning)_:
-1 OpAssign(O004_L2_Assembly_OP04)
+1 OpInShift(O004_L2_Assembly_OP04_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP04_D1_Afternoon)_:
-1 OpAssign(O004_L2_Assembly_OP04)
+1 OpInShift(O004_L2_Assembly_OP04_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP04_D1_Night)_:
-1 OpAssign(O004_L2_Assembly_OP04)
+1 OpInShift(O004_L2_Assembly_OP04_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP04_D2_Morning)_:
-1 OpAssign(O004_L2_Assembly_OP04)
+1 OpInShift(O004_L2_Assembly_OP04_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP04_D2_Afternoon)_:
-1 OpAssign(O004_L2_Assembly_OP04)
+1 OpInShift(O004_L2_Assembly_OP04_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP04_D2_Night)_:
-1 OpAssign(O004_L2_Assembly_OP04)
+1 OpInShift(O004_L2_Assembly_OP04_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP04_D3_Morning)_:
-1 OpAssign(O004_L2_Assembly_OP04)
+1 OpInShift(O004_L2_Assembly_OP04_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP04_D3_Afternoon)_:
-1 OpAssign(O004_L2_Assembly_OP04)
+1 OpInShift(O004_L2_Assembly_OP04_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP04_D3_Night)_:
-1 OpAssign(O004_L2_Assembly_OP04)
+1 OpInShift(O004_L2_Assembly_OP04_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP04_D4_Morning)_:
-1 OpAssign(O004_L2_Assembly_OP04)
+1 OpInShift(O004_L2_Assembly_OP04_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP04_D4_Afternoon)_:
-1 OpAssign(O004_L2_Assembly_OP04)
+1 OpInShift(O004_L2_Assembly_OP04_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP04_D4_Night)_:
-1 OpAssign(O004_L2_Assembly_OP04)
+1 OpInShift(O004_L2_Assembly_OP04_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP04_D5_Morning)_:
-1 OpAssign(O004_L2_Assembly_OP04)
+1 OpInShift(O004_L2_Assembly_OP04_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP04_D5_Afternoon)_:
-1 OpAssign(O004_L2_Assembly_OP04)
+1 OpInShift(O004_L2_Assembly_OP04_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O004_L2_Assembly_OP04_D5_Night)_:
-1 OpAssign(O004_L2_Assembly_OP04)
+1 OpInShift(O004_L2_Assembly_OP04_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP01_D1_Morning)_:
-1 OpAssign(O005_L1_Cutting_OP01)
+1 OpInShift(O005_L1_Cutting_OP01_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP01_D1_Afternoon)_:
-1 OpAssign(O005_L1_Cutting_OP01)
+1 OpInShift(O005_L1_Cutting_OP01_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP01_D1_Night)_:
-1 OpAssign(O005_L1_Cutting_OP01)
+1 OpInShift(O005_L1_Cutting_OP01_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP01_D2_Morning)_:
-1 OpAssign(O005_L1_Cutting_OP01)
+1 OpInShift(O005_L1_Cutting_OP01_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP01_D2_Afternoon)_:
-1 OpAssign(O005_L1_Cutting_OP01)
+1 OpInShift(O005_L1_Cutting_OP01_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP01_D2_Night)_:
-1 OpAssign(O005_L1_Cutting_OP01)
+1 OpInShift(O005_L1_Cutting_OP01_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP01_D3_Morning)_:
-1 OpAssign(O005_L1_Cutting_OP01)
+1 OpInShift(O005_L1_Cutting_OP01_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP01_D3_Afternoon)_:
-1 OpAssign(O005_L1_Cutting_OP01)
+1 OpInShift(O005_L1_Cutting_OP01_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP01_D3_Night)_:
-1 OpAssign(O005_L1_Cutting_OP01)
+1 OpInShift(O005_L1_Cutting_OP01_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP01_D4_Morning)_:
-1 OpAssign(O005_L1_Cutting_OP01)
+1 OpInShift(O005_L1_Cutting_OP01_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP01_D4_Afternoon)_:
-1 OpAssign(O005_L1_Cutting_OP01)
+1 OpInShift(O005_L1_Cutting_OP01_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP01_D4_Night)_:
-1 OpAssign(O005_L1_Cutting_OP01)
+1 OpInShift(O005_L1_Cutting_OP01_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP01_D5_Morning)_:
-1 OpAssign(O005_L1_Cutting_OP01)
+1 OpInShift(O005_L1_Cutting_OP01_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP01_D5_Afternoon)_:
-1 OpAssign(O005_L1_Cutting_OP01)
+1 OpInShift(O005_L1_Cutting_OP01_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP01_D5_Night)_:
-1 OpAssign(O005_L1_Cutting_OP01)
+1 OpInShift(O005_L1_Cutting_OP01_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP03_D1_Morning)_:
-1 OpAssign(O005_L1_Cutting_OP03)
+1 OpInShift(O005_L1_Cutting_OP03_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP03_D1_Afternoon)_:
-1 OpAssign(O005_L1_Cutting_OP03)
+1 OpInShift(O005_L1_Cutting_OP03_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP03_D1_Night)_:
-1 OpAssign(O005_L1_Cutting_OP03)
+1 OpInShift(O005_L1_Cutting_OP03_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP03_D2_Morning)_:
-1 OpAssign(O005_L1_Cutting_OP03)
+1 OpInShift(O005_L1_Cutting_OP03_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP03_D2_Afternoon)_:
-1 OpAssign(O005_L1_Cutting_OP03)
+1 OpInShift(O005_L1_Cutting_OP03_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP03_D2_Night)_:
-1 OpAssign(O005_L1_Cutting_OP03)
+1 OpInShift(O005_L1_Cutting_OP03_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP03_D3_Morning)_:
-1 OpAssign(O005_L1_Cutting_OP03)
+1 OpInShift(O005_L1_Cutting_OP03_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP03_D3_Afternoon)_:
-1 OpAssign(O005_L1_Cutting_OP03)
+1 OpInShift(O005_L1_Cutting_OP03_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP03_D3_Night)_:
-1 OpAssign(O005_L1_Cutting_OP03)
+1 OpInShift(O005_L1_Cutting_OP03_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP03_D4_Morning)_:
-1 OpAssign(O005_L1_Cutting_OP03)
+1 OpInShift(O005_L1_Cutting_OP03_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP03_D4_Afternoon)_:
-1 OpAssign(O005_L1_Cutting_OP03)
+1 OpInShift(O005_L1_Cutting_OP03_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP03_D4_Night)_:
-1 OpAssign(O005_L1_Cutting_OP03)
+1 OpInShift(O005_L1_Cutting_OP03_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP03_D5_Morning)_:
-1 OpAssign(O005_L1_Cutting_OP03)
+1 OpInShift(O005_L1_Cutting_OP03_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP03_D5_Afternoon)_:
-1 OpAssign(O005_L1_Cutting_OP03)
+1 OpInShift(O005_L1_Cutting_OP03_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP03_D5_Night)_:
-1 OpAssign(O005_L1_Cutting_OP03)
+1 OpInShift(O005_L1_Cutting_OP03_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP04_D1_Morning)_:
-1 OpAssign(O005_L1_Cutting_OP04)
+1 OpInShift(O005_L1_Cutting_OP04_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP04_D1_Afternoon)_:
-1 OpAssign(O005_L1_Cutting_OP04)
+1 OpInShift(O005_L1_Cutting_OP04_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP04_D1_Night)_:
-1 OpAssign(O005_L1_Cutting_OP04)
+1 OpInShift(O005_L1_Cutting_OP04_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP04_D2_Morning)_:
-1 OpAssign(O005_L1_Cutting_OP04)
+1 OpInShift(O005_L1_Cutting_OP04_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP04_D2_Afternoon)_:
-1 OpAssign(O005_L1_Cutting_OP04)
+1 OpInShift(O005_L1_Cutting_OP04_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP04_D2_Night)_:
-1 OpAssign(O005_L1_Cutting_OP04)
+1 OpInShift(O005_L1_Cutting_OP04_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP04_D3_Morning)_:
-1 OpAssign(O005_L1_Cutting_OP04)
+1 OpInShift(O005_L1_Cutting_OP04_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP04_D3_Afternoon)_:
-1 OpAssign(O005_L1_Cutting_OP04)
+1 OpInShift(O005_L1_Cutting_OP04_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP04_D3_Night)_:
-1 OpAssign(O005_L1_Cutting_OP04)
+1 OpInShift(O005_L1_Cutting_OP04_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP04_D4_Morning)_:
-1 OpAssign(O005_L1_Cutting_OP04)
+1 OpInShift(O005_L1_Cutting_OP04_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP04_D4_Afternoon)_:
-1 OpAssign(O005_L1_Cutting_OP04)
+1 OpInShift(O005_L1_Cutting_OP04_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP04_D4_Night)_:
-1 OpAssign(O005_L1_Cutting_OP04)
+1 OpInShift(O005_L1_Cutting_OP04_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP04_D5_Morning)_:
-1 OpAssign(O005_L1_Cutting_OP04)
+1 OpInShift(O005_L1_Cutting_OP04_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP04_D5_Afternoon)_:
-1 OpAssign(O005_L1_Cutting_OP04)
+1 OpInShift(O005_L1_Cutting_OP04_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Cutting_OP04_D5_Night)_:
-1 OpAssign(O005_L1_Cutting_OP04)
+1 OpInShift(O005_L1_Cutting_OP04_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP01_D1_Morning)_:
-1 OpAssign(O005_L1_Assembly_OP01)
+1 OpInShift(O005_L1_Assembly_OP01_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP01_D1_Afternoon)_:
-1 OpAssign(O005_L1_Assembly_OP01)
+1 OpInShift(O005_L1_Assembly_OP01_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP01_D1_Night)_:
-1 OpAssign(O005_L1_Assembly_OP01)
+1 OpInShift(O005_L1_Assembly_OP01_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP01_D2_Morning)_:
-1 OpAssign(O005_L1_Assembly_OP01)
+1 OpInShift(O005_L1_Assembly_OP01_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP01_D2_Afternoon)_:
-1 OpAssign(O005_L1_Assembly_OP01)
+1 OpInShift(O005_L1_Assembly_OP01_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP01_D2_Night)_:
-1 OpAssign(O005_L1_Assembly_OP01)
+1 OpInShift(O005_L1_Assembly_OP01_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP01_D3_Morning)_:
-1 OpAssign(O005_L1_Assembly_OP01)
+1 OpInShift(O005_L1_Assembly_OP01_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP01_D3_Afternoon)_:
-1 OpAssign(O005_L1_Assembly_OP01)
+1 OpInShift(O005_L1_Assembly_OP01_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP01_D3_Night)_:
-1 OpAssign(O005_L1_Assembly_OP01)
+1 OpInShift(O005_L1_Assembly_OP01_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP01_D4_Morning)_:
-1 OpAssign(O005_L1_Assembly_OP01)
+1 OpInShift(O005_L1_Assembly_OP01_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP01_D4_Afternoon)_:
-1 OpAssign(O005_L1_Assembly_OP01)
+1 OpInShift(O005_L1_Assembly_OP01_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP01_D4_Night)_:
-1 OpAssign(O005_L1_Assembly_OP01)
+1 OpInShift(O005_L1_Assembly_OP01_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP01_D5_Morning)_:
-1 OpAssign(O005_L1_Assembly_OP01)
+1 OpInShift(O005_L1_Assembly_OP01_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP01_D5_Afternoon)_:
-1 OpAssign(O005_L1_Assembly_OP01)
+1 OpInShift(O005_L1_Assembly_OP01_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP01_D5_Night)_:
-1 OpAssign(O005_L1_Assembly_OP01)
+1 OpInShift(O005_L1_Assembly_OP01_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP02_D1_Morning)_:
-1 OpAssign(O005_L1_Assembly_OP02)
+1 OpInShift(O005_L1_Assembly_OP02_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP02_D1_Afternoon)_:
-1 OpAssign(O005_L1_Assembly_OP02)
+1 OpInShift(O005_L1_Assembly_OP02_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP02_D1_Night)_:
-1 OpAssign(O005_L1_Assembly_OP02)
+1 OpInShift(O005_L1_Assembly_OP02_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP02_D2_Morning)_:
-1 OpAssign(O005_L1_Assembly_OP02)
+1 OpInShift(O005_L1_Assembly_OP02_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP02_D2_Afternoon)_:
-1 OpAssign(O005_L1_Assembly_OP02)
+1 OpInShift(O005_L1_Assembly_OP02_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP02_D2_Night)_:
-1 OpAssign(O005_L1_Assembly_OP02)
+1 OpInShift(O005_L1_Assembly_OP02_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP02_D3_Morning)_:
-1 OpAssign(O005_L1_Assembly_OP02)
+1 OpInShift(O005_L1_Assembly_OP02_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP02_D3_Afternoon)_:
-1 OpAssign(O005_L1_Assembly_OP02)
+1 OpInShift(O005_L1_Assembly_OP02_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP02_D3_Night)_:
-1 OpAssign(O005_L1_Assembly_OP02)
+1 OpInShift(O005_L1_Assembly_OP02_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP02_D4_Morning)_:
-1 OpAssign(O005_L1_Assembly_OP02)
+1 OpInShift(O005_L1_Assembly_OP02_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP02_D4_Afternoon)_:
-1 OpAssign(O005_L1_Assembly_OP02)
+1 OpInShift(O005_L1_Assembly_OP02_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP02_D4_Night)_:
-1 OpAssign(O005_L1_Assembly_OP02)
+1 OpInShift(O005_L1_Assembly_OP02_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP02_D5_Morning)_:
-1 OpAssign(O005_L1_Assembly_OP02)
+1 OpInShift(O005_L1_Assembly_OP02_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP02_D5_Afternoon)_:
-1 OpAssign(O005_L1_Assembly_OP02)
+1 OpInShift(O005_L1_Assembly_OP02_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP02_D5_Night)_:
-1 OpAssign(O005_L1_Assembly_OP02)
+1 OpInShift(O005_L1_Assembly_OP02_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP04_D1_Morning)_:
-1 OpAssign(O005_L1_Assembly_OP04)
+1 OpInShift(O005_L1_Assembly_OP04_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP04_D1_Afternoon)_:
-1 OpAssign(O005_L1_Assembly_OP04)
+1 OpInShift(O005_L1_Assembly_OP04_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP04_D1_Night)_:
-1 OpAssign(O005_L1_Assembly_OP04)
+1 OpInShift(O005_L1_Assembly_OP04_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP04_D2_Morning)_:
-1 OpAssign(O005_L1_Assembly_OP04)
+1 OpInShift(O005_L1_Assembly_OP04_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP04_D2_Afternoon)_:
-1 OpAssign(O005_L1_Assembly_OP04)
+1 OpInShift(O005_L1_Assembly_OP04_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP04_D2_Night)_:
-1 OpAssign(O005_L1_Assembly_OP04)
+1 OpInShift(O005_L1_Assembly_OP04_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP04_D3_Morning)_:
-1 OpAssign(O005_L1_Assembly_OP04)
+1 OpInShift(O005_L1_Assembly_OP04_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP04_D3_Afternoon)_:
-1 OpAssign(O005_L1_Assembly_OP04)
+1 OpInShift(O005_L1_Assembly_OP04_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP04_D3_Night)_:
-1 OpAssign(O005_L1_Assembly_OP04)
+1 OpInShift(O005_L1_Assembly_OP04_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP04_D4_Morning)_:
-1 OpAssign(O005_L1_Assembly_OP04)
+1 OpInShift(O005_L1_Assembly_OP04_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP04_D4_Afternoon)_:
-1 OpAssign(O005_L1_Assembly_OP04)
+1 OpInShift(O005_L1_Assembly_OP04_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP04_D4_Night)_:
-1 OpAssign(O005_L1_Assembly_OP04)
+1 OpInShift(O005_L1_Assembly_OP04_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP04_D5_Morning)_:
-1 OpAssign(O005_L1_Assembly_OP04)
+1 OpInShift(O005_L1_Assembly_OP04_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP04_D5_Afternoon)_:
-1 OpAssign(O005_L1_Assembly_OP04)
+1 OpInShift(O005_L1_Assembly_OP04_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O005_L1_Assembly_OP04_D5_Night)_:
-1 OpAssign(O005_L1_Assembly_OP04)
+1 OpInShift(O005_L1_Assembly_OP04_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP01_D1_Morning)_:
-1 OpAssign(O006_L1_Cutting_OP01)
+1 OpInShift(O006_L1_Cutting_OP01_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP01_D1_Afternoon)_:
-1 OpAssign(O006_L1_Cutting_OP01)
+1 OpInShift(O006_L1_Cutting_OP01_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP01_D1_Night)_:
-1 OpAssign(O006_L1_Cutting_OP01)
+1 OpInShift(O006_L1_Cutting_OP01_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP01_D2_Morning)_:
-1 OpAssign(O006_L1_Cutting_OP01)
+1 OpInShift(O006_L1_Cutting_OP01_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP01_D2_Afternoon)_:
-1 OpAssign(O006_L1_Cutting_OP01)
+1 OpInShift(O006_L1_Cutting_OP01_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP01_D2_Night)_:
-1 OpAssign(O006_L1_Cutting_OP01)
+1 OpInShift(O006_L1_Cutting_OP01_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP01_D3_Morning)_:
-1 OpAssign(O006_L1_Cutting_OP01)
+1 OpInShift(O006_L1_Cutting_OP01_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP01_D3_Afternoon)_:
-1 OpAssign(O006_L1_Cutting_OP01)
+1 OpInShift(O006_L1_Cutting_OP01_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP01_D3_Night)_:
-1 OpAssign(O006_L1_Cutting_OP01)
+1 OpInShift(O006_L1_Cutting_OP01_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP01_D4_Morning)_:
-1 OpAssign(O006_L1_Cutting_OP01)
+1 OpInShift(O006_L1_Cutting_OP01_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP01_D4_Afternoon)_:
-1 OpAssign(O006_L1_Cutting_OP01)
+1 OpInShift(O006_L1_Cutting_OP01_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP01_D4_Night)_:
-1 OpAssign(O006_L1_Cutting_OP01)
+1 OpInShift(O006_L1_Cutting_OP01_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP01_D5_Morning)_:
-1 OpAssign(O006_L1_Cutting_OP01)
+1 OpInShift(O006_L1_Cutting_OP01_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP01_D5_Afternoon)_:
-1 OpAssign(O006_L1_Cutting_OP01)
+1 OpInShift(O006_L1_Cutting_OP01_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP01_D5_Night)_:
-1 OpAssign(O006_L1_Cutting_OP01)
+1 OpInShift(O006_L1_Cutting_OP01_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP03_D1_Morning)_:
-1 OpAssign(O006_L1_Cutting_OP03)
+1 OpInShift(O006_L1_Cutting_OP03_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP03_D1_Afternoon)_:
-1 OpAssign(O006_L1_Cutting_OP03)
+1 OpInShift(O006_L1_Cutting_OP03_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP03_D1_Night)_:
-1 OpAssign(O006_L1_Cutting_OP03)
+1 OpInShift(O006_L1_Cutting_OP03_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP03_D2_Morning)_:
-1 OpAssign(O006_L1_Cutting_OP03)
+1 OpInShift(O006_L1_Cutting_OP03_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP03_D2_Afternoon)_:
-1 OpAssign(O006_L1_Cutting_OP03)
+1 OpInShift(O006_L1_Cutting_OP03_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP03_D2_Night)_:
-1 OpAssign(O006_L1_Cutting_OP03)
+1 OpInShift(O006_L1_Cutting_OP03_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP03_D3_Morning)_:
-1 OpAssign(O006_L1_Cutting_OP03)
+1 OpInShift(O006_L1_Cutting_OP03_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP03_D3_Afternoon)_:
-1 OpAssign(O006_L1_Cutting_OP03)
+1 OpInShift(O006_L1_Cutting_OP03_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP03_D3_Night)_:
-1 OpAssign(O006_L1_Cutting_OP03)
+1 OpInShift(O006_L1_Cutting_OP03_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP03_D4_Morning)_:
-1 OpAssign(O006_L1_Cutting_OP03)
+1 OpInShift(O006_L1_Cutting_OP03_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP03_D4_Afternoon)_:
-1 OpAssign(O006_L1_Cutting_OP03)
+1 OpInShift(O006_L1_Cutting_OP03_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP03_D4_Night)_:
-1 OpAssign(O006_L1_Cutting_OP03)
+1 OpInShift(O006_L1_Cutting_OP03_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP03_D5_Morning)_:
-1 OpAssign(O006_L1_Cutting_OP03)
+1 OpInShift(O006_L1_Cutting_OP03_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP03_D5_Afternoon)_:
-1 OpAssign(O006_L1_Cutting_OP03)
+1 OpInShift(O006_L1_Cutting_OP03_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP03_D5_Night)_:
-1 OpAssign(O006_L1_Cutting_OP03)
+1 OpInShift(O006_L1_Cutting_OP03_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP04_D1_Morning)_:
-1 OpAssign(O006_L1_Cutting_OP04)
+1 OpInShift(O006_L1_Cutting_OP04_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP04_D1_Afternoon)_:
-1 OpAssign(O006_L1_Cutting_OP04)
+1 OpInShift(O006_L1_Cutting_OP04_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP04_D1_Night)_:
-1 OpAssign(O006_L1_Cutting_OP04)
+1 OpInShift(O006_L1_Cutting_OP04_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP04_D2_Morning)_:
-1 OpAssign(O006_L1_Cutting_OP04)
+1 OpInShift(O006_L1_Cutting_OP04_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP04_D2_Afternoon)_:
-1 OpAssign(O006_L1_Cutting_OP04)
+1 OpInShift(O006_L1_Cutting_OP04_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP04_D2_Night)_:
-1 OpAssign(O006_L1_Cutting_OP04)
+1 OpInShift(O006_L1_Cutting_OP04_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP04_D3_Morning)_:
-1 OpAssign(O006_L1_Cutting_OP04)
+1 OpInShift(O006_L1_Cutting_OP04_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP04_D3_Afternoon)_:
-1 OpAssign(O006_L1_Cutting_OP04)
+1 OpInShift(O006_L1_Cutting_OP04_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP04_D3_Night)_:
-1 OpAssign(O006_L1_Cutting_OP04)
+1 OpInShift(O006_L1_Cutting_OP04_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP04_D4_Morning)_:
-1 OpAssign(O006_L1_Cutting_OP04)
+1 OpInShift(O006_L1_Cutting_OP04_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP04_D4_Afternoon)_:
-1 OpAssign(O006_L1_Cutting_OP04)
+1 OpInShift(O006_L1_Cutting_OP04_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP04_D4_Night)_:
-1 OpAssign(O006_L1_Cutting_OP04)
+1 OpInShift(O006_L1_Cutting_OP04_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP04_D5_Morning)_:
-1 OpAssign(O006_L1_Cutting_OP04)
+1 OpInShift(O006_L1_Cutting_OP04_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP04_D5_Afternoon)_:
-1 OpAssign(O006_L1_Cutting_OP04)
+1 OpInShift(O006_L1_Cutting_OP04_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Cutting_OP04_D5_Night)_:
-1 OpAssign(O006_L1_Cutting_OP04)
+1 OpInShift(O006_L1_Cutting_OP04_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP01_D1_Morning)_:
-1 OpAssign(O006_L1_Assembly_OP01)
+1 OpInShift(O006_L1_Assembly_OP01_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP01_D1_Afternoon)_:
-1 OpAssign(O006_L1_Assembly_OP01)
+1 OpInShift(O006_L1_Assembly_OP01_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP01_D1_Night)_:
-1 OpAssign(O006_L1_Assembly_OP01)
+1 OpInShift(O006_L1_Assembly_OP01_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP01_D2_Morning)_:
-1 OpAssign(O006_L1_Assembly_OP01)
+1 OpInShift(O006_L1_Assembly_OP01_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP01_D2_Afternoon)_:
-1 OpAssign(O006_L1_Assembly_OP01)
+1 OpInShift(O006_L1_Assembly_OP01_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP01_D2_Night)_:
-1 OpAssign(O006_L1_Assembly_OP01)
+1 OpInShift(O006_L1_Assembly_OP01_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP01_D3_Morning)_:
-1 OpAssign(O006_L1_Assembly_OP01)
+1 OpInShift(O006_L1_Assembly_OP01_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP01_D3_Afternoon)_:
-1 OpAssign(O006_L1_Assembly_OP01)
+1 OpInShift(O006_L1_Assembly_OP01_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP01_D3_Night)_:
-1 OpAssign(O006_L1_Assembly_OP01)
+1 OpInShift(O006_L1_Assembly_OP01_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP01_D4_Morning)_:
-1 OpAssign(O006_L1_Assembly_OP01)
+1 OpInShift(O006_L1_Assembly_OP01_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP01_D4_Afternoon)_:
-1 OpAssign(O006_L1_Assembly_OP01)
+1 OpInShift(O006_L1_Assembly_OP01_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP01_D4_Night)_:
-1 OpAssign(O006_L1_Assembly_OP01)
+1 OpInShift(O006_L1_Assembly_OP01_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP01_D5_Morning)_:
-1 OpAssign(O006_L1_Assembly_OP01)
+1 OpInShift(O006_L1_Assembly_OP01_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP01_D5_Afternoon)_:
-1 OpAssign(O006_L1_Assembly_OP01)
+1 OpInShift(O006_L1_Assembly_OP01_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP01_D5_Night)_:
-1 OpAssign(O006_L1_Assembly_OP01)
+1 OpInShift(O006_L1_Assembly_OP01_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP02_D1_Morning)_:
-1 OpAssign(O006_L1_Assembly_OP02)
+1 OpInShift(O006_L1_Assembly_OP02_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP02_D1_Afternoon)_:
-1 OpAssign(O006_L1_Assembly_OP02)
+1 OpInShift(O006_L1_Assembly_OP02_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP02_D1_Night)_:
-1 OpAssign(O006_L1_Assembly_OP02)
+1 OpInShift(O006_L1_Assembly_OP02_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP02_D2_Morning)_:
-1 OpAssign(O006_L1_Assembly_OP02)
+1 OpInShift(O006_L1_Assembly_OP02_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP02_D2_Afternoon)_:
-1 OpAssign(O006_L1_Assembly_OP02)
+1 OpInShift(O006_L1_Assembly_OP02_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP02_D2_Night)_:
-1 OpAssign(O006_L1_Assembly_OP02)
+1 OpInShift(O006_L1_Assembly_OP02_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP02_D3_Morning)_:
-1 OpAssign(O006_L1_Assembly_OP02)
+1 OpInShift(O006_L1_Assembly_OP02_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP02_D3_Afternoon)_:
-1 OpAssign(O006_L1_Assembly_OP02)
+1 OpInShift(O006_L1_Assembly_OP02_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP02_D3_Night)_:
-1 OpAssign(O006_L1_Assembly_OP02)
+1 OpInShift(O006_L1_Assembly_OP02_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP02_D4_Morning)_:
-1 OpAssign(O006_L1_Assembly_OP02)
+1 OpInShift(O006_L1_Assembly_OP02_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP02_D4_Afternoon)_:
-1 OpAssign(O006_L1_Assembly_OP02)
+1 OpInShift(O006_L1_Assembly_OP02_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP02_D4_Night)_:
-1 OpAssign(O006_L1_Assembly_OP02)
+1 OpInShift(O006_L1_Assembly_OP02_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP02_D5_Morning)_:
-1 OpAssign(O006_L1_Assembly_OP02)
+1 OpInShift(O006_L1_Assembly_OP02_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP02_D5_Afternoon)_:
-1 OpAssign(O006_L1_Assembly_OP02)
+1 OpInShift(O006_L1_Assembly_OP02_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP02_D5_Night)_:
-1 OpAssign(O006_L1_Assembly_OP02)
+1 OpInShift(O006_L1_Assembly_OP02_D5_Night)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP04_D1_Morning)_:
-1 OpAssign(O006_L1_Assembly_OP04)
+1 OpInShift(O006_L1_Assembly_OP04_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP04_D1_Afternoon)_:
-1 OpAssign(O006_L1_Assembly_OP04)
+1 OpInShift(O006_L1_Assembly_OP04_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP04_D1_Night)_:
-1 OpAssign(O006_L1_Assembly_OP04)
+1 OpInShift(O006_L1_Assembly_OP04_D1_Night)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP04_D2_Morning)_:
-1 OpAssign(O006_L1_Assembly_OP04)
+1 OpInShift(O006_L1_Assembly_OP04_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP04_D2_Afternoon)_:
-1 OpAssign(O006_L1_Assembly_OP04)
+1 OpInShift(O006_L1_Assembly_OP04_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP04_D2_Night)_:
-1 OpAssign(O006_L1_Assembly_OP04)
+1 OpInShift(O006_L1_Assembly_OP04_D2_Night)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP04_D3_Morning)_:
-1 OpAssign(O006_L1_Assembly_OP04)
+1 OpInShift(O006_L1_Assembly_OP04_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP04_D3_Afternoon)_:
-1 OpAssign(O006_L1_Assembly_OP04)
+1 OpInShift(O006_L1_Assembly_OP04_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP04_D3_Night)_:
-1 OpAssign(O006_L1_Assembly_OP04)
+1 OpInShift(O006_L1_Assembly_OP04_D3_Night)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP04_D4_Morning)_:
-1 OpAssign(O006_L1_Assembly_OP04)
+1 OpInShift(O006_L1_Assembly_OP04_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP04_D4_Afternoon)_:
-1 OpAssign(O006_L1_Assembly_OP04)
+1 OpInShift(O006_L1_Assembly_OP04_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP04_D4_Night)_:
-1 OpAssign(O006_L1_Assembly_OP04)
+1 OpInShift(O006_L1_Assembly_OP04_D4_Night)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP04_D5_Morning)_:
-1 OpAssign(O006_L1_Assembly_OP04)
+1 OpInShift(O006_L1_Assembly_OP04_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP04_D5_Afternoon)_:
-1 OpAssign(O006_L1_Assembly_OP04)
+1 OpInShift(O006_L1_Assembly_OP04_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper1(O006_L1_Assembly_OP04_D5_Night)_:
-1 OpAssign(O006_L1_Assembly_OP04)
+1 OpInShift(O006_L1_Assembly_OP04_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP02_D1_Morning)_:
-1 ShiftAssign(O001_L1_Cutting_D1_Morning)
+1 OpInShift(O001_L1_Cutting_OP02_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP02_D1_Afternoon)_:
-1 ShiftAssign(O001_L1_Cutting_D1_Afternoon)
+1 OpInShift(O001_L1_Cutting_OP02_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP02_D1_Night)_:
-1 ShiftAssign(O001_L1_Cutting_D1_Night)
+1 OpInShift(O001_L1_Cutting_OP02_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP02_D2_Morning)_:
-1 ShiftAssign(O001_L1_Cutting_D2_Morning)
+1 OpInShift(O001_L1_Cutting_OP02_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP02_D2_Afternoon)_:
-1 ShiftAssign(O001_L1_Cutting_D2_Afternoon)
+1 OpInShift(O001_L1_Cutting_OP02_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP02_D2_Night)_:
-1 ShiftAssign(O001_L1_Cutting_D2_Night)
+1 OpInShift(O001_L1_Cutting_OP02_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP02_D3_Morning)_:
-1 ShiftAssign(O001_L1_Cutting_D3_Morning)
+1 OpInShift(O001_L1_Cutting_OP02_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP02_D3_Afternoon)_:
-1 ShiftAssign(O001_L1_Cutting_D3_Afternoon)
+1 OpInShift(O001_L1_Cutting_OP02_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP02_D3_Night)_:
-1 ShiftAssign(O001_L1_Cutting_D3_Night)
+1 OpInShift(O001_L1_Cutting_OP02_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP02_D4_Morning)_:
-1 ShiftAssign(O001_L1_Cutting_D4_Morning)
+1 OpInShift(O001_L1_Cutting_OP02_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP02_D4_Afternoon)_:
-1 ShiftAssign(O001_L1_Cutting_D4_Afternoon)
+1 OpInShift(O001_L1_Cutting_OP02_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP02_D4_Night)_:
-1 ShiftAssign(O001_L1_Cutting_D4_Night)
+1 OpInShift(O001_L1_Cutting_OP02_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP02_D5_Morning)_:
-1 ShiftAssign(O001_L1_Cutting_D5_Morning)
+1 OpInShift(O001_L1_Cutting_OP02_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP02_D5_Afternoon)_:
-1 ShiftAssign(O001_L1_Cutting_D5_Afternoon)
+1 OpInShift(O001_L1_Cutting_OP02_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP02_D5_Night)_:
-1 ShiftAssign(O001_L1_Cutting_D5_Night)
+1 OpInShift(O001_L1_Cutting_OP02_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP03_D1_Morning)_:
-1 ShiftAssign(O001_L1_Cutting_D1_Morning)
+1 OpInShift(O001_L1_Cutting_OP03_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP03_D1_Afternoon)_:
-1 ShiftAssign(O001_L1_Cutting_D1_Afternoon)
+1 OpInShift(O001_L1_Cutting_OP03_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP03_D1_Night)_:
-1 ShiftAssign(O001_L1_Cutting_D1_Night)
+1 OpInShift(O001_L1_Cutting_OP03_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP03_D2_Morning)_:
-1 ShiftAssign(O001_L1_Cutting_D2_Morning)
+1 OpInShift(O001_L1_Cutting_OP03_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP03_D2_Afternoon)_:
-1 ShiftAssign(O001_L1_Cutting_D2_Afternoon)
+1 OpInShift(O001_L1_Cutting_OP03_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP03_D2_Night)_:
-1 ShiftAssign(O001_L1_Cutting_D2_Night)
+1 OpInShift(O001_L1_Cutting_OP03_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP03_D3_Morning)_:
-1 ShiftAssign(O001_L1_Cutting_D3_Morning)
+1 OpInShift(O001_L1_Cutting_OP03_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP03_D3_Afternoon)_:
-1 ShiftAssign(O001_L1_Cutting_D3_Afternoon)
+1 OpInShift(O001_L1_Cutting_OP03_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP03_D3_Night)_:
-1 ShiftAssign(O001_L1_Cutting_D3_Night)
+1 OpInShift(O001_L1_Cutting_OP03_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP03_D4_Morning)_:
-1 ShiftAssign(O001_L1_Cutting_D4_Morning)
+1 OpInShift(O001_L1_Cutting_OP03_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP03_D4_Afternoon)_:
-1 ShiftAssign(O001_L1_Cutting_D4_Afternoon)
+1 OpInShift(O001_L1_Cutting_OP03_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP03_D4_Night)_:
-1 ShiftAssign(O001_L1_Cutting_D4_Night)
+1 OpInShift(O001_L1_Cutting_OP03_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP03_D5_Morning)_:
-1 ShiftAssign(O001_L1_Cutting_D5_Morning)
+1 OpInShift(O001_L1_Cutting_OP03_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP03_D5_Afternoon)_:
-1 ShiftAssign(O001_L1_Cutting_D5_Afternoon)
+1 OpInShift(O001_L1_Cutting_OP03_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP03_D5_Night)_:
-1 ShiftAssign(O001_L1_Cutting_D5_Night)
+1 OpInShift(O001_L1_Cutting_OP03_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP04_D1_Morning)_:
-1 ShiftAssign(O001_L1_Cutting_D1_Morning)
+1 OpInShift(O001_L1_Cutting_OP04_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP04_D1_Afternoon)_:
-1 ShiftAssign(O001_L1_Cutting_D1_Afternoon)
+1 OpInShift(O001_L1_Cutting_OP04_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP04_D1_Night)_:
-1 ShiftAssign(O001_L1_Cutting_D1_Night)
+1 OpInShift(O001_L1_Cutting_OP04_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP04_D2_Morning)_:
-1 ShiftAssign(O001_L1_Cutting_D2_Morning)
+1 OpInShift(O001_L1_Cutting_OP04_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP04_D2_Afternoon)_:
-1 ShiftAssign(O001_L1_Cutting_D2_Afternoon)
+1 OpInShift(O001_L1_Cutting_OP04_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP04_D2_Night)_:
-1 ShiftAssign(O001_L1_Cutting_D2_Night)
+1 OpInShift(O001_L1_Cutting_OP04_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP04_D3_Morning)_:
-1 ShiftAssign(O001_L1_Cutting_D3_Morning)
+1 OpInShift(O001_L1_Cutting_OP04_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP04_D3_Afternoon)_:
-1 ShiftAssign(O001_L1_Cutting_D3_Afternoon)
+1 OpInShift(O001_L1_Cutting_OP04_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP04_D3_Night)_:
-1 ShiftAssign(O001_L1_Cutting_D3_Night)
+1 OpInShift(O001_L1_Cutting_OP04_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP04_D4_Morning)_:
-1 ShiftAssign(O001_L1_Cutting_D4_Morning)
+1 OpInShift(O001_L1_Cutting_OP04_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP04_D4_Afternoon)_:
-1 ShiftAssign(O001_L1_Cutting_D4_Afternoon)
+1 OpInShift(O001_L1_Cutting_OP04_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP04_D4_Night)_:
-1 ShiftAssign(O001_L1_Cutting_D4_Night)
+1 OpInShift(O001_L1_Cutting_OP04_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP04_D5_Morning)_:
-1 ShiftAssign(O001_L1_Cutting_D5_Morning)
+1 OpInShift(O001_L1_Cutting_OP04_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP04_D5_Afternoon)_:
-1 ShiftAssign(O001_L1_Cutting_D5_Afternoon)
+1 OpInShift(O001_L1_Cutting_OP04_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Cutting_OP04_D5_Night)_:
-1 ShiftAssign(O001_L1_Cutting_D5_Night)
+1 OpInShift(O001_L1_Cutting_OP04_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP01_D1_Morning)_:
-1 ShiftAssign(O001_L1_Assembly_D1_Morning)
+1 OpInShift(O001_L1_Assembly_OP01_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP01_D1_Afternoon)_:
-1 ShiftAssign(O001_L1_Assembly_D1_Afternoon)
+1 OpInShift(O001_L1_Assembly_OP01_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP01_D1_Night)_:
-1 ShiftAssign(O001_L1_Assembly_D1_Night)
+1 OpInShift(O001_L1_Assembly_OP01_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP01_D2_Morning)_:
-1 ShiftAssign(O001_L1_Assembly_D2_Morning)
+1 OpInShift(O001_L1_Assembly_OP01_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP01_D2_Afternoon)_:
-1 ShiftAssign(O001_L1_Assembly_D2_Afternoon)
+1 OpInShift(O001_L1_Assembly_OP01_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP01_D2_Night)_:
-1 ShiftAssign(O001_L1_Assembly_D2_Night)
+1 OpInShift(O001_L1_Assembly_OP01_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP01_D3_Morning)_:
-1 ShiftAssign(O001_L1_Assembly_D3_Morning)
+1 OpInShift(O001_L1_Assembly_OP01_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP01_D3_Afternoon)_:
-1 ShiftAssign(O001_L1_Assembly_D3_Afternoon)
+1 OpInShift(O001_L1_Assembly_OP01_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP01_D3_Night)_:
-1 ShiftAssign(O001_L1_Assembly_D3_Night)
+1 OpInShift(O001_L1_Assembly_OP01_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP01_D4_Morning)_:
-1 ShiftAssign(O001_L1_Assembly_D4_Morning)
+1 OpInShift(O001_L1_Assembly_OP01_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP01_D4_Afternoon)_:
-1 ShiftAssign(O001_L1_Assembly_D4_Afternoon)
+1 OpInShift(O001_L1_Assembly_OP01_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP01_D4_Night)_:
-1 ShiftAssign(O001_L1_Assembly_D4_Night)
+1 OpInShift(O001_L1_Assembly_OP01_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP01_D5_Morning)_:
-1 ShiftAssign(O001_L1_Assembly_D5_Morning)
+1 OpInShift(O001_L1_Assembly_OP01_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP01_D5_Afternoon)_:
-1 ShiftAssign(O001_L1_Assembly_D5_Afternoon)
+1 OpInShift(O001_L1_Assembly_OP01_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP01_D5_Night)_:
-1 ShiftAssign(O001_L1_Assembly_D5_Night)
+1 OpInShift(O001_L1_Assembly_OP01_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP02_D1_Morning)_:
-1 ShiftAssign(O001_L1_Assembly_D1_Morning)
+1 OpInShift(O001_L1_Assembly_OP02_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP02_D1_Afternoon)_:
-1 ShiftAssign(O001_L1_Assembly_D1_Afternoon)
+1 OpInShift(O001_L1_Assembly_OP02_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP02_D1_Night)_:
-1 ShiftAssign(O001_L1_Assembly_D1_Night)
+1 OpInShift(O001_L1_Assembly_OP02_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP02_D2_Morning)_:
-1 ShiftAssign(O001_L1_Assembly_D2_Morning)
+1 OpInShift(O001_L1_Assembly_OP02_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP02_D2_Afternoon)_:
-1 ShiftAssign(O001_L1_Assembly_D2_Afternoon)
+1 OpInShift(O001_L1_Assembly_OP02_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP02_D2_Night)_:
-1 ShiftAssign(O001_L1_Assembly_D2_Night)
+1 OpInShift(O001_L1_Assembly_OP02_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP02_D3_Morning)_:
-1 ShiftAssign(O001_L1_Assembly_D3_Morning)
+1 OpInShift(O001_L1_Assembly_OP02_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP02_D3_Afternoon)_:
-1 ShiftAssign(O001_L1_Assembly_D3_Afternoon)
+1 OpInShift(O001_L1_Assembly_OP02_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP02_D3_Night)_:
-1 ShiftAssign(O001_L1_Assembly_D3_Night)
+1 OpInShift(O001_L1_Assembly_OP02_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP02_D4_Morning)_:
-1 ShiftAssign(O001_L1_Assembly_D4_Morning)
+1 OpInShift(O001_L1_Assembly_OP02_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP02_D4_Afternoon)_:
-1 ShiftAssign(O001_L1_Assembly_D4_Afternoon)
+1 OpInShift(O001_L1_Assembly_OP02_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP02_D4_Night)_:
-1 ShiftAssign(O001_L1_Assembly_D4_Night)
+1 OpInShift(O001_L1_Assembly_OP02_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP02_D5_Morning)_:
-1 ShiftAssign(O001_L1_Assembly_D5_Morning)
+1 OpInShift(O001_L1_Assembly_OP02_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP02_D5_Afternoon)_:
-1 ShiftAssign(O001_L1_Assembly_D5_Afternoon)
+1 OpInShift(O001_L1_Assembly_OP02_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP02_D5_Night)_:
-1 ShiftAssign(O001_L1_Assembly_D5_Night)
+1 OpInShift(O001_L1_Assembly_OP02_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP04_D1_Morning)_:
-1 ShiftAssign(O001_L1_Assembly_D1_Morning)
+1 OpInShift(O001_L1_Assembly_OP04_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP04_D1_Afternoon)_:
-1 ShiftAssign(O001_L1_Assembly_D1_Afternoon)
+1 OpInShift(O001_L1_Assembly_OP04_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP04_D1_Night)_:
-1 ShiftAssign(O001_L1_Assembly_D1_Night)
+1 OpInShift(O001_L1_Assembly_OP04_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP04_D2_Morning)_:
-1 ShiftAssign(O001_L1_Assembly_D2_Morning)
+1 OpInShift(O001_L1_Assembly_OP04_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP04_D2_Afternoon)_:
-1 ShiftAssign(O001_L1_Assembly_D2_Afternoon)
+1 OpInShift(O001_L1_Assembly_OP04_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP04_D2_Night)_:
-1 ShiftAssign(O001_L1_Assembly_D2_Night)
+1 OpInShift(O001_L1_Assembly_OP04_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP04_D3_Morning)_:
-1 ShiftAssign(O001_L1_Assembly_D3_Morning)
+1 OpInShift(O001_L1_Assembly_OP04_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP04_D3_Afternoon)_:
-1 ShiftAssign(O001_L1_Assembly_D3_Afternoon)
+1 OpInShift(O001_L1_Assembly_OP04_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP04_D3_Night)_:
-1 ShiftAssign(O001_L1_Assembly_D3_Night)
+1 OpInShift(O001_L1_Assembly_OP04_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP04_D4_Morning)_:
-1 ShiftAssign(O001_L1_Assembly_D4_Morning)
+1 OpInShift(O001_L1_Assembly_OP04_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP04_D4_Afternoon)_:
-1 ShiftAssign(O001_L1_Assembly_D4_Afternoon)
+1 OpInShift(O001_L1_Assembly_OP04_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP04_D4_Night)_:
-1 ShiftAssign(O001_L1_Assembly_D4_Night)
+1 OpInShift(O001_L1_Assembly_OP04_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP04_D5_Morning)_:
-1 ShiftAssign(O001_L1_Assembly_D5_Morning)
+1 OpInShift(O001_L1_Assembly_OP04_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP04_D5_Afternoon)_:
-1 ShiftAssign(O001_L1_Assembly_D5_Afternoon)
+1 OpInShift(O001_L1_Assembly_OP04_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O001_L1_Assembly_OP04_D5_Night)_:
-1 ShiftAssign(O001_L1_Assembly_D5_Night)
+1 OpInShift(O001_L1_Assembly_OP04_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP01_D1_Morning)_:
-1 ShiftAssign(O002_L1_Cutting_D1_Morning)
+1 OpInShift(O002_L1_Cutting_OP01_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP01_D1_Afternoon)_:
-1 ShiftAssign(O002_L1_Cutting_D1_Afternoon)
+1 OpInShift(O002_L1_Cutting_OP01_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP01_D1_Night)_:
-1 ShiftAssign(O002_L1_Cutting_D1_Night)
+1 OpInShift(O002_L1_Cutting_OP01_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP01_D2_Morning)_:
-1 ShiftAssign(O002_L1_Cutting_D2_Morning)
+1 OpInShift(O002_L1_Cutting_OP01_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP01_D2_Afternoon)_:
-1 ShiftAssign(O002_L1_Cutting_D2_Afternoon)
+1 OpInShift(O002_L1_Cutting_OP01_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP01_D2_Night)_:
-1 ShiftAssign(O002_L1_Cutting_D2_Night)
+1 OpInShift(O002_L1_Cutting_OP01_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP01_D3_Morning)_:
-1 ShiftAssign(O002_L1_Cutting_D3_Morning)
+1 OpInShift(O002_L1_Cutting_OP01_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP01_D3_Afternoon)_:
-1 ShiftAssign(O002_L1_Cutting_D3_Afternoon)
+1 OpInShift(O002_L1_Cutting_OP01_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP01_D3_Night)_:
-1 ShiftAssign(O002_L1_Cutting_D3_Night)
+1 OpInShift(O002_L1_Cutting_OP01_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP01_D4_Morning)_:
-1 ShiftAssign(O002_L1_Cutting_D4_Morning)
+1 OpInShift(O002_L1_Cutting_OP01_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP01_D4_Afternoon)_:
-1 ShiftAssign(O002_L1_Cutting_D4_Afternoon)
+1 OpInShift(O002_L1_Cutting_OP01_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP01_D4_Night)_:
-1 ShiftAssign(O002_L1_Cutting_D4_Night)
+1 OpInShift(O002_L1_Cutting_OP01_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP01_D5_Morning)_:
-1 ShiftAssign(O002_L1_Cutting_D5_Morning)
+1 OpInShift(O002_L1_Cutting_OP01_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP01_D5_Afternoon)_:
-1 ShiftAssign(O002_L1_Cutting_D5_Afternoon)
+1 OpInShift(O002_L1_Cutting_OP01_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP01_D5_Night)_:
-1 ShiftAssign(O002_L1_Cutting_D5_Night)
+1 OpInShift(O002_L1_Cutting_OP01_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP03_D1_Morning)_:
-1 ShiftAssign(O002_L1_Cutting_D1_Morning)
+1 OpInShift(O002_L1_Cutting_OP03_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP03_D1_Afternoon)_:
-1 ShiftAssign(O002_L1_Cutting_D1_Afternoon)
+1 OpInShift(O002_L1_Cutting_OP03_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP03_D1_Night)_:
-1 ShiftAssign(O002_L1_Cutting_D1_Night)
+1 OpInShift(O002_L1_Cutting_OP03_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP03_D2_Morning)_:
-1 ShiftAssign(O002_L1_Cutting_D2_Morning)
+1 OpInShift(O002_L1_Cutting_OP03_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP03_D2_Afternoon)_:
-1 ShiftAssign(O002_L1_Cutting_D2_Afternoon)
+1 OpInShift(O002_L1_Cutting_OP03_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP03_D2_Night)_:
-1 ShiftAssign(O002_L1_Cutting_D2_Night)
+1 OpInShift(O002_L1_Cutting_OP03_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP03_D3_Morning)_:
-1 ShiftAssign(O002_L1_Cutting_D3_Morning)
+1 OpInShift(O002_L1_Cutting_OP03_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP03_D3_Afternoon)_:
-1 ShiftAssign(O002_L1_Cutting_D3_Afternoon)
+1 OpInShift(O002_L1_Cutting_OP03_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP03_D3_Night)_:
-1 ShiftAssign(O002_L1_Cutting_D3_Night)
+1 OpInShift(O002_L1_Cutting_OP03_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP03_D4_Morning)_:
-1 ShiftAssign(O002_L1_Cutting_D4_Morning)
+1 OpInShift(O002_L1_Cutting_OP03_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP03_D4_Afternoon)_:
-1 ShiftAssign(O002_L1_Cutting_D4_Afternoon)
+1 OpInShift(O002_L1_Cutting_OP03_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP03_D4_Night)_:
-1 ShiftAssign(O002_L1_Cutting_D4_Night)
+1 OpInShift(O002_L1_Cutting_OP03_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP03_D5_Morning)_:
-1 ShiftAssign(O002_L1_Cutting_D5_Morning)
+1 OpInShift(O002_L1_Cutting_OP03_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP03_D5_Afternoon)_:
-1 ShiftAssign(O002_L1_Cutting_D5_Afternoon)
+1 OpInShift(O002_L1_Cutting_OP03_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP03_D5_Night)_:
-1 ShiftAssign(O002_L1_Cutting_D5_Night)
+1 OpInShift(O002_L1_Cutting_OP03_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP04_D1_Morning)_:
-1 ShiftAssign(O002_L1_Cutting_D1_Morning)
+1 OpInShift(O002_L1_Cutting_OP04_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP04_D1_Afternoon)_:
-1 ShiftAssign(O002_L1_Cutting_D1_Afternoon)
+1 OpInShift(O002_L1_Cutting_OP04_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP04_D1_Night)_:
-1 ShiftAssign(O002_L1_Cutting_D1_Night)
+1 OpInShift(O002_L1_Cutting_OP04_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP04_D2_Morning)_:
-1 ShiftAssign(O002_L1_Cutting_D2_Morning)
+1 OpInShift(O002_L1_Cutting_OP04_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP04_D2_Afternoon)_:
-1 ShiftAssign(O002_L1_Cutting_D2_Afternoon)
+1 OpInShift(O002_L1_Cutting_OP04_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP04_D2_Night)_:
-1 ShiftAssign(O002_L1_Cutting_D2_Night)
+1 OpInShift(O002_L1_Cutting_OP04_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP04_D3_Morning)_:
-1 ShiftAssign(O002_L1_Cutting_D3_Morning)
+1 OpInShift(O002_L1_Cutting_OP04_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP04_D3_Afternoon)_:
-1 ShiftAssign(O002_L1_Cutting_D3_Afternoon)
+1 OpInShift(O002_L1_Cutting_OP04_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP04_D3_Night)_:
-1 ShiftAssign(O002_L1_Cutting_D3_Night)
+1 OpInShift(O002_L1_Cutting_OP04_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP04_D4_Morning)_:
-1 ShiftAssign(O002_L1_Cutting_D4_Morning)
+1 OpInShift(O002_L1_Cutting_OP04_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP04_D4_Afternoon)_:
-1 ShiftAssign(O002_L1_Cutting_D4_Afternoon)
+1 OpInShift(O002_L1_Cutting_OP04_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP04_D4_Night)_:
-1 ShiftAssign(O002_L1_Cutting_D4_Night)
+1 OpInShift(O002_L1_Cutting_OP04_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP04_D5_Morning)_:
-1 ShiftAssign(O002_L1_Cutting_D5_Morning)
+1 OpInShift(O002_L1_Cutting_OP04_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP04_D5_Afternoon)_:
-1 ShiftAssign(O002_L1_Cutting_D5_Afternoon)
+1 OpInShift(O002_L1_Cutting_OP04_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Cutting_OP04_D5_Night)_:
-1 ShiftAssign(O002_L1_Cutting_D5_Night)
+1 OpInShift(O002_L1_Cutting_OP04_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP01_D1_Morning)_:
-1 ShiftAssign(O002_L1_Assembly_D1_Morning)
+1 OpInShift(O002_L1_Assembly_OP01_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP01_D1_Afternoon)_:
-1 ShiftAssign(O002_L1_Assembly_D1_Afternoon)
+1 OpInShift(O002_L1_Assembly_OP01_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP01_D1_Night)_:
-1 ShiftAssign(O002_L1_Assembly_D1_Night)
+1 OpInShift(O002_L1_Assembly_OP01_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP01_D2_Morning)_:
-1 ShiftAssign(O002_L1_Assembly_D2_Morning)
+1 OpInShift(O002_L1_Assembly_OP01_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP01_D2_Afternoon)_:
-1 ShiftAssign(O002_L1_Assembly_D2_Afternoon)
+1 OpInShift(O002_L1_Assembly_OP01_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP01_D2_Night)_:
-1 ShiftAssign(O002_L1_Assembly_D2_Night)
+1 OpInShift(O002_L1_Assembly_OP01_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP01_D3_Morning)_:
-1 ShiftAssign(O002_L1_Assembly_D3_Morning)
+1 OpInShift(O002_L1_Assembly_OP01_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP01_D3_Afternoon)_:
-1 ShiftAssign(O002_L1_Assembly_D3_Afternoon)
+1 OpInShift(O002_L1_Assembly_OP01_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP01_D3_Night)_:
-1 ShiftAssign(O002_L1_Assembly_D3_Night)
+1 OpInShift(O002_L1_Assembly_OP01_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP01_D4_Morning)_:
-1 ShiftAssign(O002_L1_Assembly_D4_Morning)
+1 OpInShift(O002_L1_Assembly_OP01_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP01_D4_Afternoon)_:
-1 ShiftAssign(O002_L1_Assembly_D4_Afternoon)
+1 OpInShift(O002_L1_Assembly_OP01_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP01_D4_Night)_:
-1 ShiftAssign(O002_L1_Assembly_D4_Night)
+1 OpInShift(O002_L1_Assembly_OP01_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP01_D5_Morning)_:
-1 ShiftAssign(O002_L1_Assembly_D5_Morning)
+1 OpInShift(O002_L1_Assembly_OP01_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP01_D5_Afternoon)_:
-1 ShiftAssign(O002_L1_Assembly_D5_Afternoon)
+1 OpInShift(O002_L1_Assembly_OP01_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP01_D5_Night)_:
-1 ShiftAssign(O002_L1_Assembly_D5_Night)
+1 OpInShift(O002_L1_Assembly_OP01_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP02_D1_Morning)_:
-1 ShiftAssign(O002_L1_Assembly_D1_Morning)
+1 OpInShift(O002_L1_Assembly_OP02_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP02_D1_Afternoon)_:
-1 ShiftAssign(O002_L1_Assembly_D1_Afternoon)
+1 OpInShift(O002_L1_Assembly_OP02_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP02_D1_Night)_:
-1 ShiftAssign(O002_L1_Assembly_D1_Night)
+1 OpInShift(O002_L1_Assembly_OP02_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP02_D2_Morning)_:
-1 ShiftAssign(O002_L1_Assembly_D2_Morning)
+1 OpInShift(O002_L1_Assembly_OP02_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP02_D2_Afternoon)_:
-1 ShiftAssign(O002_L1_Assembly_D2_Afternoon)
+1 OpInShift(O002_L1_Assembly_OP02_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP02_D2_Night)_:
-1 ShiftAssign(O002_L1_Assembly_D2_Night)
+1 OpInShift(O002_L1_Assembly_OP02_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP02_D3_Morning)_:
-1 ShiftAssign(O002_L1_Assembly_D3_Morning)
+1 OpInShift(O002_L1_Assembly_OP02_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP02_D3_Afternoon)_:
-1 ShiftAssign(O002_L1_Assembly_D3_Afternoon)
+1 OpInShift(O002_L1_Assembly_OP02_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP02_D3_Night)_:
-1 ShiftAssign(O002_L1_Assembly_D3_Night)
+1 OpInShift(O002_L1_Assembly_OP02_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP02_D4_Morning)_:
-1 ShiftAssign(O002_L1_Assembly_D4_Morning)
+1 OpInShift(O002_L1_Assembly_OP02_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP02_D4_Afternoon)_:
-1 ShiftAssign(O002_L1_Assembly_D4_Afternoon)
+1 OpInShift(O002_L1_Assembly_OP02_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP02_D4_Night)_:
-1 ShiftAssign(O002_L1_Assembly_D4_Night)
+1 OpInShift(O002_L1_Assembly_OP02_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP02_D5_Morning)_:
-1 ShiftAssign(O002_L1_Assembly_D5_Morning)
+1 OpInShift(O002_L1_Assembly_OP02_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP02_D5_Afternoon)_:
-1 ShiftAssign(O002_L1_Assembly_D5_Afternoon)
+1 OpInShift(O002_L1_Assembly_OP02_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP02_D5_Night)_:
-1 ShiftAssign(O002_L1_Assembly_D5_Night)
+1 OpInShift(O002_L1_Assembly_OP02_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP04_D1_Morning)_:
-1 ShiftAssign(O002_L1_Assembly_D1_Morning)
+1 OpInShift(O002_L1_Assembly_OP04_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP04_D1_Afternoon)_:
-1 ShiftAssign(O002_L1_Assembly_D1_Afternoon)
+1 OpInShift(O002_L1_Assembly_OP04_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP04_D1_Night)_:
-1 ShiftAssign(O002_L1_Assembly_D1_Night)
+1 OpInShift(O002_L1_Assembly_OP04_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP04_D2_Morning)_:
-1 ShiftAssign(O002_L1_Assembly_D2_Morning)
+1 OpInShift(O002_L1_Assembly_OP04_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP04_D2_Afternoon)_:
-1 ShiftAssign(O002_L1_Assembly_D2_Afternoon)
+1 OpInShift(O002_L1_Assembly_OP04_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP04_D2_Night)_:
-1 ShiftAssign(O002_L1_Assembly_D2_Night)
+1 OpInShift(O002_L1_Assembly_OP04_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP04_D3_Morning)_:
-1 ShiftAssign(O002_L1_Assembly_D3_Morning)
+1 OpInShift(O002_L1_Assembly_OP04_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP04_D3_Afternoon)_:
-1 ShiftAssign(O002_L1_Assembly_D3_Afternoon)
+1 OpInShift(O002_L1_Assembly_OP04_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP04_D3_Night)_:
-1 ShiftAssign(O002_L1_Assembly_D3_Night)
+1 OpInShift(O002_L1_Assembly_OP04_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP04_D4_Morning)_:
-1 ShiftAssign(O002_L1_Assembly_D4_Morning)
+1 OpInShift(O002_L1_Assembly_OP04_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP04_D4_Afternoon)_:
-1 ShiftAssign(O002_L1_Assembly_D4_Afternoon)
+1 OpInShift(O002_L1_Assembly_OP04_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP04_D4_Night)_:
-1 ShiftAssign(O002_L1_Assembly_D4_Night)
+1 OpInShift(O002_L1_Assembly_OP04_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP04_D5_Morning)_:
-1 ShiftAssign(O002_L1_Assembly_D5_Morning)
+1 OpInShift(O002_L1_Assembly_OP04_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP04_D5_Afternoon)_:
-1 ShiftAssign(O002_L1_Assembly_D5_Afternoon)
+1 OpInShift(O002_L1_Assembly_OP04_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O002_L1_Assembly_OP04_D5_Night)_:
-1 ShiftAssign(O002_L1_Assembly_D5_Night)
+1 OpInShift(O002_L1_Assembly_OP04_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP01_D1_Morning)_:
-1 ShiftAssign(O003_L1_Cutting_D1_Morning)
+1 OpInShift(O003_L1_Cutting_OP01_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP01_D1_Afternoon)_:
-1 ShiftAssign(O003_L1_Cutting_D1_Afternoon)
+1 OpInShift(O003_L1_Cutting_OP01_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP01_D1_Night)_:
-1 ShiftAssign(O003_L1_Cutting_D1_Night)
+1 OpInShift(O003_L1_Cutting_OP01_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP01_D2_Morning)_:
-1 ShiftAssign(O003_L1_Cutting_D2_Morning)
+1 OpInShift(O003_L1_Cutting_OP01_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP01_D2_Afternoon)_:
-1 ShiftAssign(O003_L1_Cutting_D2_Afternoon)
+1 OpInShift(O003_L1_Cutting_OP01_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP01_D2_Night)_:
-1 ShiftAssign(O003_L1_Cutting_D2_Night)
+1 OpInShift(O003_L1_Cutting_OP01_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP01_D3_Morning)_:
-1 ShiftAssign(O003_L1_Cutting_D3_Morning)
+1 OpInShift(O003_L1_Cutting_OP01_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP01_D3_Afternoon)_:
-1 ShiftAssign(O003_L1_Cutting_D3_Afternoon)
+1 OpInShift(O003_L1_Cutting_OP01_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP01_D3_Night)_:
-1 ShiftAssign(O003_L1_Cutting_D3_Night)
+1 OpInShift(O003_L1_Cutting_OP01_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP01_D4_Morning)_:
-1 ShiftAssign(O003_L1_Cutting_D4_Morning)
+1 OpInShift(O003_L1_Cutting_OP01_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP01_D4_Afternoon)_:
-1 ShiftAssign(O003_L1_Cutting_D4_Afternoon)
+1 OpInShift(O003_L1_Cutting_OP01_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP01_D4_Night)_:
-1 ShiftAssign(O003_L1_Cutting_D4_Night)
+1 OpInShift(O003_L1_Cutting_OP01_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP01_D5_Morning)_:
-1 ShiftAssign(O003_L1_Cutting_D5_Morning)
+1 OpInShift(O003_L1_Cutting_OP01_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP01_D5_Afternoon)_:
-1 ShiftAssign(O003_L1_Cutting_D5_Afternoon)
+1 OpInShift(O003_L1_Cutting_OP01_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP01_D5_Night)_:
-1 ShiftAssign(O003_L1_Cutting_D5_Night)
+1 OpInShift(O003_L1_Cutting_OP01_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP03_D1_Morning)_:
-1 ShiftAssign(O003_L1_Cutting_D1_Morning)
+1 OpInShift(O003_L1_Cutting_OP03_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP03_D1_Afternoon)_:
-1 ShiftAssign(O003_L1_Cutting_D1_Afternoon)
+1 OpInShift(O003_L1_Cutting_OP03_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP03_D1_Night)_:
-1 ShiftAssign(O003_L1_Cutting_D1_Night)
+1 OpInShift(O003_L1_Cutting_OP03_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP03_D2_Morning)_:
-1 ShiftAssign(O003_L1_Cutting_D2_Morning)
+1 OpInShift(O003_L1_Cutting_OP03_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP03_D2_Afternoon)_:
-1 ShiftAssign(O003_L1_Cutting_D2_Afternoon)
+1 OpInShift(O003_L1_Cutting_OP03_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP03_D2_Night)_:
-1 ShiftAssign(O003_L1_Cutting_D2_Night)
+1 OpInShift(O003_L1_Cutting_OP03_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP03_D3_Morning)_:
-1 ShiftAssign(O003_L1_Cutting_D3_Morning)
+1 OpInShift(O003_L1_Cutting_OP03_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP03_D3_Afternoon)_:
-1 ShiftAssign(O003_L1_Cutting_D3_Afternoon)
+1 OpInShift(O003_L1_Cutting_OP03_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP03_D3_Night)_:
-1 ShiftAssign(O003_L1_Cutting_D3_Night)
+1 OpInShift(O003_L1_Cutting_OP03_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP03_D4_Morning)_:
-1 ShiftAssign(O003_L1_Cutting_D4_Morning)
+1 OpInShift(O003_L1_Cutting_OP03_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP03_D4_Afternoon)_:
-1 ShiftAssign(O003_L1_Cutting_D4_Afternoon)
+1 OpInShift(O003_L1_Cutting_OP03_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP03_D4_Night)_:
-1 ShiftAssign(O003_L1_Cutting_D4_Night)
+1 OpInShift(O003_L1_Cutting_OP03_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP03_D5_Morning)_:
-1 ShiftAssign(O003_L1_Cutting_D5_Morning)
+1 OpInShift(O003_L1_Cutting_OP03_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP03_D5_Afternoon)_:
-1 ShiftAssign(O003_L1_Cutting_D5_Afternoon)
+1 OpInShift(O003_L1_Cutting_OP03_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP03_D5_Night)_:
-1 ShiftAssign(O003_L1_Cutting_D5_Night)
+1 OpInShift(O003_L1_Cutting_OP03_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP04_D1_Morning)_:
-1 ShiftAssign(O003_L1_Cutting_D1_Morning)
+1 OpInShift(O003_L1_Cutting_OP04_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP04_D1_Afternoon)_:
-1 ShiftAssign(O003_L1_Cutting_D1_Afternoon)
+1 OpInShift(O003_L1_Cutting_OP04_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP04_D1_Night)_:
-1 ShiftAssign(O003_L1_Cutting_D1_Night)
+1 OpInShift(O003_L1_Cutting_OP04_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP04_D2_Morning)_:
-1 ShiftAssign(O003_L1_Cutting_D2_Morning)
+1 OpInShift(O003_L1_Cutting_OP04_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP04_D2_Afternoon)_:
-1 ShiftAssign(O003_L1_Cutting_D2_Afternoon)
+1 OpInShift(O003_L1_Cutting_OP04_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP04_D2_Night)_:
-1 ShiftAssign(O003_L1_Cutting_D2_Night)
+1 OpInShift(O003_L1_Cutting_OP04_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP04_D3_Morning)_:
-1 ShiftAssign(O003_L1_Cutting_D3_Morning)
+1 OpInShift(O003_L1_Cutting_OP04_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP04_D3_Afternoon)_:
-1 ShiftAssign(O003_L1_Cutting_D3_Afternoon)
+1 OpInShift(O003_L1_Cutting_OP04_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP04_D3_Night)_:
-1 ShiftAssign(O003_L1_Cutting_D3_Night)
+1 OpInShift(O003_L1_Cutting_OP04_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP04_D4_Morning)_:
-1 ShiftAssign(O003_L1_Cutting_D4_Morning)
+1 OpInShift(O003_L1_Cutting_OP04_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP04_D4_Afternoon)_:
-1 ShiftAssign(O003_L1_Cutting_D4_Afternoon)
+1 OpInShift(O003_L1_Cutting_OP04_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP04_D4_Night)_:
-1 ShiftAssign(O003_L1_Cutting_D4_Night)
+1 OpInShift(O003_L1_Cutting_OP04_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP04_D5_Morning)_:
-1 ShiftAssign(O003_L1_Cutting_D5_Morning)
+1 OpInShift(O003_L1_Cutting_OP04_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP04_D5_Afternoon)_:
-1 ShiftAssign(O003_L1_Cutting_D5_Afternoon)
+1 OpInShift(O003_L1_Cutting_OP04_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Cutting_OP04_D5_Night)_:
-1 ShiftAssign(O003_L1_Cutting_D5_Night)
+1 OpInShift(O003_L1_Cutting_OP04_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP01_D1_Morning)_:
-1 ShiftAssign(O003_L1_Assembly_D1_Morning)
+1 OpInShift(O003_L1_Assembly_OP01_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP01_D1_Afternoon)_:
-1 ShiftAssign(O003_L1_Assembly_D1_Afternoon)
+1 OpInShift(O003_L1_Assembly_OP01_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP01_D1_Night)_:
-1 ShiftAssign(O003_L1_Assembly_D1_Night)
+1 OpInShift(O003_L1_Assembly_OP01_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP01_D2_Morning)_:
-1 ShiftAssign(O003_L1_Assembly_D2_Morning)
+1 OpInShift(O003_L1_Assembly_OP01_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP01_D2_Afternoon)_:
-1 ShiftAssign(O003_L1_Assembly_D2_Afternoon)
+1 OpInShift(O003_L1_Assembly_OP01_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP01_D2_Night)_:
-1 ShiftAssign(O003_L1_Assembly_D2_Night)
+1 OpInShift(O003_L1_Assembly_OP01_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP01_D3_Morning)_:
-1 ShiftAssign(O003_L1_Assembly_D3_Morning)
+1 OpInShift(O003_L1_Assembly_OP01_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP01_D3_Afternoon)_:
-1 ShiftAssign(O003_L1_Assembly_D3_Afternoon)
+1 OpInShift(O003_L1_Assembly_OP01_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP01_D3_Night)_:
-1 ShiftAssign(O003_L1_Assembly_D3_Night)
+1 OpInShift(O003_L1_Assembly_OP01_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP01_D4_Morning)_:
-1 ShiftAssign(O003_L1_Assembly_D4_Morning)
+1 OpInShift(O003_L1_Assembly_OP01_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP01_D4_Afternoon)_:
-1 ShiftAssign(O003_L1_Assembly_D4_Afternoon)
+1 OpInShift(O003_L1_Assembly_OP01_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP01_D4_Night)_:
-1 ShiftAssign(O003_L1_Assembly_D4_Night)
+1 OpInShift(O003_L1_Assembly_OP01_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP01_D5_Morning)_:
-1 ShiftAssign(O003_L1_Assembly_D5_Morning)
+1 OpInShift(O003_L1_Assembly_OP01_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP01_D5_Afternoon)_:
-1 ShiftAssign(O003_L1_Assembly_D5_Afternoon)
+1 OpInShift(O003_L1_Assembly_OP01_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP01_D5_Night)_:
-1 ShiftAssign(O003_L1_Assembly_D5_Night)
+1 OpInShift(O003_L1_Assembly_OP01_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP02_D1_Morning)_:
-1 ShiftAssign(O003_L1_Assembly_D1_Morning)
+1 OpInShift(O003_L1_Assembly_OP02_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP02_D1_Afternoon)_:
-1 ShiftAssign(O003_L1_Assembly_D1_Afternoon)
+1 OpInShift(O003_L1_Assembly_OP02_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP02_D1_Night)_:
-1 ShiftAssign(O003_L1_Assembly_D1_Night)
+1 OpInShift(O003_L1_Assembly_OP02_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP02_D2_Morning)_:
-1 ShiftAssign(O003_L1_Assembly_D2_Morning)
+1 OpInShift(O003_L1_Assembly_OP02_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP02_D2_Afternoon)_:
-1 ShiftAssign(O003_L1_Assembly_D2_Afternoon)
+1 OpInShift(O003_L1_Assembly_OP02_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP02_D2_Night)_:
-1 ShiftAssign(O003_L1_Assembly_D2_Night)
+1 OpInShift(O003_L1_Assembly_OP02_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP02_D3_Morning)_:
-1 ShiftAssign(O003_L1_Assembly_D3_Morning)
+1 OpInShift(O003_L1_Assembly_OP02_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP02_D3_Afternoon)_:
-1 ShiftAssign(O003_L1_Assembly_D3_Afternoon)
+1 OpInShift(O003_L1_Assembly_OP02_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP02_D3_Night)_:
-1 ShiftAssign(O003_L1_Assembly_D3_Night)
+1 OpInShift(O003_L1_Assembly_OP02_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP02_D4_Morning)_:
-1 ShiftAssign(O003_L1_Assembly_D4_Morning)
+1 OpInShift(O003_L1_Assembly_OP02_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP02_D4_Afternoon)_:
-1 ShiftAssign(O003_L1_Assembly_D4_Afternoon)
+1 OpInShift(O003_L1_Assembly_OP02_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP02_D4_Night)_:
-1 ShiftAssign(O003_L1_Assembly_D4_Night)
+1 OpInShift(O003_L1_Assembly_OP02_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP02_D5_Morning)_:
-1 ShiftAssign(O003_L1_Assembly_D5_Morning)
+1 OpInShift(O003_L1_Assembly_OP02_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP02_D5_Afternoon)_:
-1 ShiftAssign(O003_L1_Assembly_D5_Afternoon)
+1 OpInShift(O003_L1_Assembly_OP02_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP02_D5_Night)_:
-1 ShiftAssign(O003_L1_Assembly_D5_Night)
+1 OpInShift(O003_L1_Assembly_OP02_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP04_D1_Morning)_:
-1 ShiftAssign(O003_L1_Assembly_D1_Morning)
+1 OpInShift(O003_L1_Assembly_OP04_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP04_D1_Afternoon)_:
-1 ShiftAssign(O003_L1_Assembly_D1_Afternoon)
+1 OpInShift(O003_L1_Assembly_OP04_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP04_D1_Night)_:
-1 ShiftAssign(O003_L1_Assembly_D1_Night)
+1 OpInShift(O003_L1_Assembly_OP04_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP04_D2_Morning)_:
-1 ShiftAssign(O003_L1_Assembly_D2_Morning)
+1 OpInShift(O003_L1_Assembly_OP04_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP04_D2_Afternoon)_:
-1 ShiftAssign(O003_L1_Assembly_D2_Afternoon)
+1 OpInShift(O003_L1_Assembly_OP04_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP04_D2_Night)_:
-1 ShiftAssign(O003_L1_Assembly_D2_Night)
+1 OpInShift(O003_L1_Assembly_OP04_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP04_D3_Morning)_:
-1 ShiftAssign(O003_L1_Assembly_D3_Morning)
+1 OpInShift(O003_L1_Assembly_OP04_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP04_D3_Afternoon)_:
-1 ShiftAssign(O003_L1_Assembly_D3_Afternoon)
+1 OpInShift(O003_L1_Assembly_OP04_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP04_D3_Night)_:
-1 ShiftAssign(O003_L1_Assembly_D3_Night)
+1 OpInShift(O003_L1_Assembly_OP04_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP04_D4_Morning)_:
-1 ShiftAssign(O003_L1_Assembly_D4_Morning)
+1 OpInShift(O003_L1_Assembly_OP04_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP04_D4_Afternoon)_:
-1 ShiftAssign(O003_L1_Assembly_D4_Afternoon)
+1 OpInShift(O003_L1_Assembly_OP04_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP04_D4_Night)_:
-1 ShiftAssign(O003_L1_Assembly_D4_Night)
+1 OpInShift(O003_L1_Assembly_OP04_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP04_D5_Morning)_:
-1 ShiftAssign(O003_L1_Assembly_D5_Morning)
+1 OpInShift(O003_L1_Assembly_OP04_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP04_D5_Afternoon)_:
-1 ShiftAssign(O003_L1_Assembly_D5_Afternoon)
+1 OpInShift(O003_L1_Assembly_OP04_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O003_L1_Assembly_OP04_D5_Night)_:
-1 ShiftAssign(O003_L1_Assembly_D5_Night)
+1 OpInShift(O003_L1_Assembly_OP04_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP01_D1_Morning)_:
-1 ShiftAssign(O004_L1_Cutting_D1_Morning)
+1 OpInShift(O004_L1_Cutting_OP01_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP01_D1_Afternoon)_:
-1 ShiftAssign(O004_L1_Cutting_D1_Afternoon)
+1 OpInShift(O004_L1_Cutting_OP01_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP01_D1_Night)_:
-1 ShiftAssign(O004_L1_Cutting_D1_Night)
+1 OpInShift(O004_L1_Cutting_OP01_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP01_D2_Morning)_:
-1 ShiftAssign(O004_L1_Cutting_D2_Morning)
+1 OpInShift(O004_L1_Cutting_OP01_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP01_D2_Afternoon)_:
-1 ShiftAssign(O004_L1_Cutting_D2_Afternoon)
+1 OpInShift(O004_L1_Cutting_OP01_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP01_D2_Night)_:
-1 ShiftAssign(O004_L1_Cutting_D2_Night)
+1 OpInShift(O004_L1_Cutting_OP01_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP01_D3_Morning)_:
-1 ShiftAssign(O004_L1_Cutting_D3_Morning)
+1 OpInShift(O004_L1_Cutting_OP01_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP01_D3_Afternoon)_:
-1 ShiftAssign(O004_L1_Cutting_D3_Afternoon)
+1 OpInShift(O004_L1_Cutting_OP01_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP01_D3_Night)_:
-1 ShiftAssign(O004_L1_Cutting_D3_Night)
+1 OpInShift(O004_L1_Cutting_OP01_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP01_D4_Morning)_:
-1 ShiftAssign(O004_L1_Cutting_D4_Morning)
+1 OpInShift(O004_L1_Cutting_OP01_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP01_D4_Afternoon)_:
-1 ShiftAssign(O004_L1_Cutting_D4_Afternoon)
+1 OpInShift(O004_L1_Cutting_OP01_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP01_D4_Night)_:
-1 ShiftAssign(O004_L1_Cutting_D4_Night)
+1 OpInShift(O004_L1_Cutting_OP01_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP01_D5_Morning)_:
-1 ShiftAssign(O004_L1_Cutting_D5_Morning)
+1 OpInShift(O004_L1_Cutting_OP01_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP01_D5_Afternoon)_:
-1 ShiftAssign(O004_L1_Cutting_D5_Afternoon)
+1 OpInShift(O004_L1_Cutting_OP01_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP01_D5_Night)_:
-1 ShiftAssign(O004_L1_Cutting_D5_Night)
+1 OpInShift(O004_L1_Cutting_OP01_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP03_D1_Morning)_:
-1 ShiftAssign(O004_L1_Cutting_D1_Morning)
+1 OpInShift(O004_L1_Cutting_OP03_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP03_D1_Afternoon)_:
-1 ShiftAssign(O004_L1_Cutting_D1_Afternoon)
+1 OpInShift(O004_L1_Cutting_OP03_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP03_D1_Night)_:
-1 ShiftAssign(O004_L1_Cutting_D1_Night)
+1 OpInShift(O004_L1_Cutting_OP03_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP03_D2_Morning)_:
-1 ShiftAssign(O004_L1_Cutting_D2_Morning)
+1 OpInShift(O004_L1_Cutting_OP03_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP03_D2_Afternoon)_:
-1 ShiftAssign(O004_L1_Cutting_D2_Afternoon)
+1 OpInShift(O004_L1_Cutting_OP03_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP03_D2_Night)_:
-1 ShiftAssign(O004_L1_Cutting_D2_Night)
+1 OpInShift(O004_L1_Cutting_OP03_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP03_D3_Morning)_:
-1 ShiftAssign(O004_L1_Cutting_D3_Morning)
+1 OpInShift(O004_L1_Cutting_OP03_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP03_D3_Afternoon)_:
-1 ShiftAssign(O004_L1_Cutting_D3_Afternoon)
+1 OpInShift(O004_L1_Cutting_OP03_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP03_D3_Night)_:
-1 ShiftAssign(O004_L1_Cutting_D3_Night)
+1 OpInShift(O004_L1_Cutting_OP03_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP03_D4_Morning)_:
-1 ShiftAssign(O004_L1_Cutting_D4_Morning)
+1 OpInShift(O004_L1_Cutting_OP03_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP03_D4_Afternoon)_:
-1 ShiftAssign(O004_L1_Cutting_D4_Afternoon)
+1 OpInShift(O004_L1_Cutting_OP03_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP03_D4_Night)_:
-1 ShiftAssign(O004_L1_Cutting_D4_Night)
+1 OpInShift(O004_L1_Cutting_OP03_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP03_D5_Morning)_:
-1 ShiftAssign(O004_L1_Cutting_D5_Morning)
+1 OpInShift(O004_L1_Cutting_OP03_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP03_D5_Afternoon)_:
-1 ShiftAssign(O004_L1_Cutting_D5_Afternoon)
+1 OpInShift(O004_L1_Cutting_OP03_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP03_D5_Night)_:
-1 ShiftAssign(O004_L1_Cutting_D5_Night)
+1 OpInShift(O004_L1_Cutting_OP03_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP04_D1_Morning)_:
-1 ShiftAssign(O004_L1_Cutting_D1_Morning)
+1 OpInShift(O004_L1_Cutting_OP04_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP04_D1_Afternoon)_:
-1 ShiftAssign(O004_L1_Cutting_D1_Afternoon)
+1 OpInShift(O004_L1_Cutting_OP04_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP04_D1_Night)_:
-1 ShiftAssign(O004_L1_Cutting_D1_Night)
+1 OpInShift(O004_L1_Cutting_OP04_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP04_D2_Morning)_:
-1 ShiftAssign(O004_L1_Cutting_D2_Morning)
+1 OpInShift(O004_L1_Cutting_OP04_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP04_D2_Afternoon)_:
-1 ShiftAssign(O004_L1_Cutting_D2_Afternoon)
+1 OpInShift(O004_L1_Cutting_OP04_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP04_D2_Night)_:
-1 ShiftAssign(O004_L1_Cutting_D2_Night)
+1 OpInShift(O004_L1_Cutting_OP04_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP04_D3_Morning)_:
-1 ShiftAssign(O004_L1_Cutting_D3_Morning)
+1 OpInShift(O004_L1_Cutting_OP04_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP04_D3_Afternoon)_:
-1 ShiftAssign(O004_L1_Cutting_D3_Afternoon)
+1 OpInShift(O004_L1_Cutting_OP04_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP04_D3_Night)_:
-1 ShiftAssign(O004_L1_Cutting_D3_Night)
+1 OpInShift(O004_L1_Cutting_OP04_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP04_D4_Morning)_:
-1 ShiftAssign(O004_L1_Cutting_D4_Morning)
+1 OpInShift(O004_L1_Cutting_OP04_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP04_D4_Afternoon)_:
-1 ShiftAssign(O004_L1_Cutting_D4_Afternoon)
+1 OpInShift(O004_L1_Cutting_OP04_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP04_D4_Night)_:
-1 ShiftAssign(O004_L1_Cutting_D4_Night)
+1 OpInShift(O004_L1_Cutting_OP04_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP04_D5_Morning)_:
-1 ShiftAssign(O004_L1_Cutting_D5_Morning)
+1 OpInShift(O004_L1_Cutting_OP04_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP04_D5_Afternoon)_:
-1 ShiftAssign(O004_L1_Cutting_D5_Afternoon)
+1 OpInShift(O004_L1_Cutting_OP04_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Cutting_OP04_D5_Night)_:
-1 ShiftAssign(O004_L1_Cutting_D5_Night)
+1 OpInShift(O004_L1_Cutting_OP04_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP01_D1_Morning)_:
-1 ShiftAssign(O004_L1_Assembly_D1_Morning)
+1 OpInShift(O004_L1_Assembly_OP01_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP01_D1_Afternoon)_:
-1 ShiftAssign(O004_L1_Assembly_D1_Afternoon)
+1 OpInShift(O004_L1_Assembly_OP01_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP01_D1_Night)_:
-1 ShiftAssign(O004_L1_Assembly_D1_Night)
+1 OpInShift(O004_L1_Assembly_OP01_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP01_D2_Morning)_:
-1 ShiftAssign(O004_L1_Assembly_D2_Morning)
+1 OpInShift(O004_L1_Assembly_OP01_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP01_D2_Afternoon)_:
-1 ShiftAssign(O004_L1_Assembly_D2_Afternoon)
+1 OpInShift(O004_L1_Assembly_OP01_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP01_D2_Night)_:
-1 ShiftAssign(O004_L1_Assembly_D2_Night)
+1 OpInShift(O004_L1_Assembly_OP01_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP01_D3_Morning)_:
-1 ShiftAssign(O004_L1_Assembly_D3_Morning)
+1 OpInShift(O004_L1_Assembly_OP01_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP01_D3_Afternoon)_:
-1 ShiftAssign(O004_L1_Assembly_D3_Afternoon)
+1 OpInShift(O004_L1_Assembly_OP01_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP01_D3_Night)_:
-1 ShiftAssign(O004_L1_Assembly_D3_Night)
+1 OpInShift(O004_L1_Assembly_OP01_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP01_D4_Morning)_:
-1 ShiftAssign(O004_L1_Assembly_D4_Morning)
+1 OpInShift(O004_L1_Assembly_OP01_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP01_D4_Afternoon)_:
-1 ShiftAssign(O004_L1_Assembly_D4_Afternoon)
+1 OpInShift(O004_L1_Assembly_OP01_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP01_D4_Night)_:
-1 ShiftAssign(O004_L1_Assembly_D4_Night)
+1 OpInShift(O004_L1_Assembly_OP01_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP01_D5_Morning)_:
-1 ShiftAssign(O004_L1_Assembly_D5_Morning)
+1 OpInShift(O004_L1_Assembly_OP01_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP01_D5_Afternoon)_:
-1 ShiftAssign(O004_L1_Assembly_D5_Afternoon)
+1 OpInShift(O004_L1_Assembly_OP01_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP01_D5_Night)_:
-1 ShiftAssign(O004_L1_Assembly_D5_Night)
+1 OpInShift(O004_L1_Assembly_OP01_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP02_D1_Morning)_:
-1 ShiftAssign(O004_L1_Assembly_D1_Morning)
+1 OpInShift(O004_L1_Assembly_OP02_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP02_D1_Afternoon)_:
-1 ShiftAssign(O004_L1_Assembly_D1_Afternoon)
+1 OpInShift(O004_L1_Assembly_OP02_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP02_D1_Night)_:
-1 ShiftAssign(O004_L1_Assembly_D1_Night)
+1 OpInShift(O004_L1_Assembly_OP02_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP02_D2_Morning)_:
-1 ShiftAssign(O004_L1_Assembly_D2_Morning)
+1 OpInShift(O004_L1_Assembly_OP02_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP02_D2_Afternoon)_:
-1 ShiftAssign(O004_L1_Assembly_D2_Afternoon)
+1 OpInShift(O004_L1_Assembly_OP02_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP02_D2_Night)_:
-1 ShiftAssign(O004_L1_Assembly_D2_Night)
+1 OpInShift(O004_L1_Assembly_OP02_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP02_D3_Morning)_:
-1 ShiftAssign(O004_L1_Assembly_D3_Morning)
+1 OpInShift(O004_L1_Assembly_OP02_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP02_D3_Afternoon)_:
-1 ShiftAssign(O004_L1_Assembly_D3_Afternoon)
+1 OpInShift(O004_L1_Assembly_OP02_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP02_D3_Night)_:
-1 ShiftAssign(O004_L1_Assembly_D3_Night)
+1 OpInShift(O004_L1_Assembly_OP02_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP02_D4_Morning)_:
-1 ShiftAssign(O004_L1_Assembly_D4_Morning)
+1 OpInShift(O004_L1_Assembly_OP02_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP02_D4_Afternoon)_:
-1 ShiftAssign(O004_L1_Assembly_D4_Afternoon)
+1 OpInShift(O004_L1_Assembly_OP02_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP02_D4_Night)_:
-1 ShiftAssign(O004_L1_Assembly_D4_Night)
+1 OpInShift(O004_L1_Assembly_OP02_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP02_D5_Morning)_:
-1 ShiftAssign(O004_L1_Assembly_D5_Morning)
+1 OpInShift(O004_L1_Assembly_OP02_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP02_D5_Afternoon)_:
-1 ShiftAssign(O004_L1_Assembly_D5_Afternoon)
+1 OpInShift(O004_L1_Assembly_OP02_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP02_D5_Night)_:
-1 ShiftAssign(O004_L1_Assembly_D5_Night)
+1 OpInShift(O004_L1_Assembly_OP02_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP04_D1_Morning)_:
-1 ShiftAssign(O004_L1_Assembly_D1_Morning)
+1 OpInShift(O004_L1_Assembly_OP04_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP04_D1_Afternoon)_:
-1 ShiftAssign(O004_L1_Assembly_D1_Afternoon)
+1 OpInShift(O004_L1_Assembly_OP04_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP04_D1_Night)_:
-1 ShiftAssign(O004_L1_Assembly_D1_Night)
+1 OpInShift(O004_L1_Assembly_OP04_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP04_D2_Morning)_:
-1 ShiftAssign(O004_L1_Assembly_D2_Morning)
+1 OpInShift(O004_L1_Assembly_OP04_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP04_D2_Afternoon)_:
-1 ShiftAssign(O004_L1_Assembly_D2_Afternoon)
+1 OpInShift(O004_L1_Assembly_OP04_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP04_D2_Night)_:
-1 ShiftAssign(O004_L1_Assembly_D2_Night)
+1 OpInShift(O004_L1_Assembly_OP04_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP04_D3_Morning)_:
-1 ShiftAssign(O004_L1_Assembly_D3_Morning)
+1 OpInShift(O004_L1_Assembly_OP04_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP04_D3_Afternoon)_:
-1 ShiftAssign(O004_L1_Assembly_D3_Afternoon)
+1 OpInShift(O004_L1_Assembly_OP04_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP04_D3_Night)_:
-1 ShiftAssign(O004_L1_Assembly_D3_Night)
+1 OpInShift(O004_L1_Assembly_OP04_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP04_D4_Morning)_:
-1 ShiftAssign(O004_L1_Assembly_D4_Morning)
+1 OpInShift(O004_L1_Assembly_OP04_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP04_D4_Afternoon)_:
-1 ShiftAssign(O004_L1_Assembly_D4_Afternoon)
+1 OpInShift(O004_L1_Assembly_OP04_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP04_D4_Night)_:
-1 ShiftAssign(O004_L1_Assembly_D4_Night)
+1 OpInShift(O004_L1_Assembly_OP04_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP04_D5_Morning)_:
-1 ShiftAssign(O004_L1_Assembly_D5_Morning)
+1 OpInShift(O004_L1_Assembly_OP04_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP04_D5_Afternoon)_:
-1 ShiftAssign(O004_L1_Assembly_D5_Afternoon)
+1 OpInShift(O004_L1_Assembly_OP04_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L1_Assembly_OP04_D5_Night)_:
-1 ShiftAssign(O004_L1_Assembly_D5_Night)
+1 OpInShift(O004_L1_Assembly_OP04_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP01_D1_Morning)_:
-1 ShiftAssign(O004_L2_Cutting_D1_Morning)
+1 OpInShift(O004_L2_Cutting_OP01_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP01_D1_Afternoon)_:
-1 ShiftAssign(O004_L2_Cutting_D1_Afternoon)
+1 OpInShift(O004_L2_Cutting_OP01_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP01_D1_Night)_:
-1 ShiftAssign(O004_L2_Cutting_D1_Night)
+1 OpInShift(O004_L2_Cutting_OP01_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP01_D2_Morning)_:
-1 ShiftAssign(O004_L2_Cutting_D2_Morning)
+1 OpInShift(O004_L2_Cutting_OP01_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP01_D2_Afternoon)_:
-1 ShiftAssign(O004_L2_Cutting_D2_Afternoon)
+1 OpInShift(O004_L2_Cutting_OP01_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP01_D2_Night)_:
-1 ShiftAssign(O004_L2_Cutting_D2_Night)
+1 OpInShift(O004_L2_Cutting_OP01_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP01_D3_Morning)_:
-1 ShiftAssign(O004_L2_Cutting_D3_Morning)
+1 OpInShift(O004_L2_Cutting_OP01_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP01_D3_Afternoon)_:
-1 ShiftAssign(O004_L2_Cutting_D3_Afternoon)
+1 OpInShift(O004_L2_Cutting_OP01_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP01_D3_Night)_:
-1 ShiftAssign(O004_L2_Cutting_D3_Night)
+1 OpInShift(O004_L2_Cutting_OP01_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP01_D4_Morning)_:
-1 ShiftAssign(O004_L2_Cutting_D4_Morning)
+1 OpInShift(O004_L2_Cutting_OP01_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP01_D4_Afternoon)_:
-1 ShiftAssign(O004_L2_Cutting_D4_Afternoon)
+1 OpInShift(O004_L2_Cutting_OP01_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP01_D4_Night)_:
-1 ShiftAssign(O004_L2_Cutting_D4_Night)
+1 OpInShift(O004_L2_Cutting_OP01_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP01_D5_Morning)_:
-1 ShiftAssign(O004_L2_Cutting_D5_Morning)
+1 OpInShift(O004_L2_Cutting_OP01_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP01_D5_Afternoon)_:
-1 ShiftAssign(O004_L2_Cutting_D5_Afternoon)
+1 OpInShift(O004_L2_Cutting_OP01_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP01_D5_Night)_:
-1 ShiftAssign(O004_L2_Cutting_D5_Night)
+1 OpInShift(O004_L2_Cutting_OP01_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP03_D1_Morning)_:
-1 ShiftAssign(O004_L2_Cutting_D1_Morning)
+1 OpInShift(O004_L2_Cutting_OP03_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP03_D1_Afternoon)_:
-1 ShiftAssign(O004_L2_Cutting_D1_Afternoon)
+1 OpInShift(O004_L2_Cutting_OP03_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP03_D1_Night)_:
-1 ShiftAssign(O004_L2_Cutting_D1_Night)
+1 OpInShift(O004_L2_Cutting_OP03_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP03_D2_Morning)_:
-1 ShiftAssign(O004_L2_Cutting_D2_Morning)
+1 OpInShift(O004_L2_Cutting_OP03_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP03_D2_Afternoon)_:
-1 ShiftAssign(O004_L2_Cutting_D2_Afternoon)
+1 OpInShift(O004_L2_Cutting_OP03_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP03_D2_Night)_:
-1 ShiftAssign(O004_L2_Cutting_D2_Night)
+1 OpInShift(O004_L2_Cutting_OP03_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP03_D3_Morning)_:
-1 ShiftAssign(O004_L2_Cutting_D3_Morning)
+1 OpInShift(O004_L2_Cutting_OP03_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP03_D3_Afternoon)_:
-1 ShiftAssign(O004_L2_Cutting_D3_Afternoon)
+1 OpInShift(O004_L2_Cutting_OP03_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP03_D3_Night)_:
-1 ShiftAssign(O004_L2_Cutting_D3_Night)
+1 OpInShift(O004_L2_Cutting_OP03_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP03_D4_Morning)_:
-1 ShiftAssign(O004_L2_Cutting_D4_Morning)
+1 OpInShift(O004_L2_Cutting_OP03_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP03_D4_Afternoon)_:
-1 ShiftAssign(O004_L2_Cutting_D4_Afternoon)
+1 OpInShift(O004_L2_Cutting_OP03_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP03_D4_Night)_:
-1 ShiftAssign(O004_L2_Cutting_D4_Night)
+1 OpInShift(O004_L2_Cutting_OP03_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP03_D5_Morning)_:
-1 ShiftAssign(O004_L2_Cutting_D5_Morning)
+1 OpInShift(O004_L2_Cutting_OP03_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP03_D5_Afternoon)_:
-1 ShiftAssign(O004_L2_Cutting_D5_Afternoon)
+1 OpInShift(O004_L2_Cutting_OP03_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP03_D5_Night)_:
-1 ShiftAssign(O004_L2_Cutting_D5_Night)
+1 OpInShift(O004_L2_Cutting_OP03_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP04_D1_Morning)_:
-1 ShiftAssign(O004_L2_Cutting_D1_Morning)
+1 OpInShift(O004_L2_Cutting_OP04_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP04_D1_Afternoon)_:
-1 ShiftAssign(O004_L2_Cutting_D1_Afternoon)
+1 OpInShift(O004_L2_Cutting_OP04_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP04_D1_Night)_:
-1 ShiftAssign(O004_L2_Cutting_D1_Night)
+1 OpInShift(O004_L2_Cutting_OP04_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP04_D2_Morning)_:
-1 ShiftAssign(O004_L2_Cutting_D2_Morning)
+1 OpInShift(O004_L2_Cutting_OP04_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP04_D2_Afternoon)_:
-1 ShiftAssign(O004_L2_Cutting_D2_Afternoon)
+1 OpInShift(O004_L2_Cutting_OP04_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP04_D2_Night)_:
-1 ShiftAssign(O004_L2_Cutting_D2_Night)
+1 OpInShift(O004_L2_Cutting_OP04_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP04_D3_Morning)_:
-1 ShiftAssign(O004_L2_Cutting_D3_Morning)
+1 OpInShift(O004_L2_Cutting_OP04_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP04_D3_Afternoon)_:
-1 ShiftAssign(O004_L2_Cutting_D3_Afternoon)
+1 OpInShift(O004_L2_Cutting_OP04_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP04_D3_Night)_:
-1 ShiftAssign(O004_L2_Cutting_D3_Night)
+1 OpInShift(O004_L2_Cutting_OP04_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP04_D4_Morning)_:
-1 ShiftAssign(O004_L2_Cutting_D4_Morning)
+1 OpInShift(O004_L2_Cutting_OP04_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP04_D4_Afternoon)_:
-1 ShiftAssign(O004_L2_Cutting_D4_Afternoon)
+1 OpInShift(O004_L2_Cutting_OP04_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP04_D4_Night)_:
-1 ShiftAssign(O004_L2_Cutting_D4_Night)
+1 OpInShift(O004_L2_Cutting_OP04_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP04_D5_Morning)_:
-1 ShiftAssign(O004_L2_Cutting_D5_Morning)
+1 OpInShift(O004_L2_Cutting_OP04_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP04_D5_Afternoon)_:
-1 ShiftAssign(O004_L2_Cutting_D5_Afternoon)
+1 OpInShift(O004_L2_Cutting_OP04_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Cutting_OP04_D5_Night)_:
-1 ShiftAssign(O004_L2_Cutting_D5_Night)
+1 OpInShift(O004_L2_Cutting_OP04_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP01_D1_Morning)_:
-1 ShiftAssign(O004_L2_Assembly_D1_Morning)
+1 OpInShift(O004_L2_Assembly_OP01_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP01_D1_Afternoon)_:
-1 ShiftAssign(O004_L2_Assembly_D1_Afternoon)
+1 OpInShift(O004_L2_Assembly_OP01_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP01_D1_Night)_:
-1 ShiftAssign(O004_L2_Assembly_D1_Night)
+1 OpInShift(O004_L2_Assembly_OP01_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP01_D2_Morning)_:
-1 ShiftAssign(O004_L2_Assembly_D2_Morning)
+1 OpInShift(O004_L2_Assembly_OP01_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP01_D2_Afternoon)_:
-1 ShiftAssign(O004_L2_Assembly_D2_Afternoon)
+1 OpInShift(O004_L2_Assembly_OP01_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP01_D2_Night)_:
-1 ShiftAssign(O004_L2_Assembly_D2_Night)
+1 OpInShift(O004_L2_Assembly_OP01_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP01_D3_Morning)_:
-1 ShiftAssign(O004_L2_Assembly_D3_Morning)
+1 OpInShift(O004_L2_Assembly_OP01_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP01_D3_Afternoon)_:
-1 ShiftAssign(O004_L2_Assembly_D3_Afternoon)
+1 OpInShift(O004_L2_Assembly_OP01_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP01_D3_Night)_:
-1 ShiftAssign(O004_L2_Assembly_D3_Night)
+1 OpInShift(O004_L2_Assembly_OP01_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP01_D4_Morning)_:
-1 ShiftAssign(O004_L2_Assembly_D4_Morning)
+1 OpInShift(O004_L2_Assembly_OP01_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP01_D4_Afternoon)_:
-1 ShiftAssign(O004_L2_Assembly_D4_Afternoon)
+1 OpInShift(O004_L2_Assembly_OP01_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP01_D4_Night)_:
-1 ShiftAssign(O004_L2_Assembly_D4_Night)
+1 OpInShift(O004_L2_Assembly_OP01_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP01_D5_Morning)_:
-1 ShiftAssign(O004_L2_Assembly_D5_Morning)
+1 OpInShift(O004_L2_Assembly_OP01_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP01_D5_Afternoon)_:
-1 ShiftAssign(O004_L2_Assembly_D5_Afternoon)
+1 OpInShift(O004_L2_Assembly_OP01_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP01_D5_Night)_:
-1 ShiftAssign(O004_L2_Assembly_D5_Night)
+1 OpInShift(O004_L2_Assembly_OP01_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP02_D1_Morning)_:
-1 ShiftAssign(O004_L2_Assembly_D1_Morning)
+1 OpInShift(O004_L2_Assembly_OP02_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP02_D1_Afternoon)_:
-1 ShiftAssign(O004_L2_Assembly_D1_Afternoon)
+1 OpInShift(O004_L2_Assembly_OP02_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP02_D1_Night)_:
-1 ShiftAssign(O004_L2_Assembly_D1_Night)
+1 OpInShift(O004_L2_Assembly_OP02_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP02_D2_Morning)_:
-1 ShiftAssign(O004_L2_Assembly_D2_Morning)
+1 OpInShift(O004_L2_Assembly_OP02_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP02_D2_Afternoon)_:
-1 ShiftAssign(O004_L2_Assembly_D2_Afternoon)
+1 OpInShift(O004_L2_Assembly_OP02_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP02_D2_Night)_:
-1 ShiftAssign(O004_L2_Assembly_D2_Night)
+1 OpInShift(O004_L2_Assembly_OP02_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP02_D3_Morning)_:
-1 ShiftAssign(O004_L2_Assembly_D3_Morning)
+1 OpInShift(O004_L2_Assembly_OP02_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP02_D3_Afternoon)_:
-1 ShiftAssign(O004_L2_Assembly_D3_Afternoon)
+1 OpInShift(O004_L2_Assembly_OP02_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP02_D3_Night)_:
-1 ShiftAssign(O004_L2_Assembly_D3_Night)
+1 OpInShift(O004_L2_Assembly_OP02_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP02_D4_Morning)_:
-1 ShiftAssign(O004_L2_Assembly_D4_Morning)
+1 OpInShift(O004_L2_Assembly_OP02_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP02_D4_Afternoon)_:
-1 ShiftAssign(O004_L2_Assembly_D4_Afternoon)
+1 OpInShift(O004_L2_Assembly_OP02_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP02_D4_Night)_:
-1 ShiftAssign(O004_L2_Assembly_D4_Night)
+1 OpInShift(O004_L2_Assembly_OP02_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP02_D5_Morning)_:
-1 ShiftAssign(O004_L2_Assembly_D5_Morning)
+1 OpInShift(O004_L2_Assembly_OP02_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP02_D5_Afternoon)_:
-1 ShiftAssign(O004_L2_Assembly_D5_Afternoon)
+1 OpInShift(O004_L2_Assembly_OP02_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP02_D5_Night)_:
-1 ShiftAssign(O004_L2_Assembly_D5_Night)
+1 OpInShift(O004_L2_Assembly_OP02_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP04_D1_Morning)_:
-1 ShiftAssign(O004_L2_Assembly_D1_Morning)
+1 OpInShift(O004_L2_Assembly_OP04_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP04_D1_Afternoon)_:
-1 ShiftAssign(O004_L2_Assembly_D1_Afternoon)
+1 OpInShift(O004_L2_Assembly_OP04_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP04_D1_Night)_:
-1 ShiftAssign(O004_L2_Assembly_D1_Night)
+1 OpInShift(O004_L2_Assembly_OP04_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP04_D2_Morning)_:
-1 ShiftAssign(O004_L2_Assembly_D2_Morning)
+1 OpInShift(O004_L2_Assembly_OP04_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP04_D2_Afternoon)_:
-1 ShiftAssign(O004_L2_Assembly_D2_Afternoon)
+1 OpInShift(O004_L2_Assembly_OP04_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP04_D2_Night)_:
-1 ShiftAssign(O004_L2_Assembly_D2_Night)
+1 OpInShift(O004_L2_Assembly_OP04_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP04_D3_Morning)_:
-1 ShiftAssign(O004_L2_Assembly_D3_Morning)
+1 OpInShift(O004_L2_Assembly_OP04_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP04_D3_Afternoon)_:
-1 ShiftAssign(O004_L2_Assembly_D3_Afternoon)
+1 OpInShift(O004_L2_Assembly_OP04_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP04_D3_Night)_:
-1 ShiftAssign(O004_L2_Assembly_D3_Night)
+1 OpInShift(O004_L2_Assembly_OP04_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP04_D4_Morning)_:
-1 ShiftAssign(O004_L2_Assembly_D4_Morning)
+1 OpInShift(O004_L2_Assembly_OP04_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP04_D4_Afternoon)_:
-1 ShiftAssign(O004_L2_Assembly_D4_Afternoon)
+1 OpInShift(O004_L2_Assembly_OP04_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP04_D4_Night)_:
-1 ShiftAssign(O004_L2_Assembly_D4_Night)
+1 OpInShift(O004_L2_Assembly_OP04_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP04_D5_Morning)_:
-1 ShiftAssign(O004_L2_Assembly_D5_Morning)
+1 OpInShift(O004_L2_Assembly_OP04_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP04_D5_Afternoon)_:
-1 ShiftAssign(O004_L2_Assembly_D5_Afternoon)
+1 OpInShift(O004_L2_Assembly_OP04_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O004_L2_Assembly_OP04_D5_Night)_:
-1 ShiftAssign(O004_L2_Assembly_D5_Night)
+1 OpInShift(O004_L2_Assembly_OP04_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP01_D1_Morning)_:
-1 ShiftAssign(O005_L1_Cutting_D1_Morning)
+1 OpInShift(O005_L1_Cutting_OP01_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP01_D1_Afternoon)_:
-1 ShiftAssign(O005_L1_Cutting_D1_Afternoon)
+1 OpInShift(O005_L1_Cutting_OP01_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP01_D1_Night)_:
-1 ShiftAssign(O005_L1_Cutting_D1_Night)
+1 OpInShift(O005_L1_Cutting_OP01_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP01_D2_Morning)_:
-1 ShiftAssign(O005_L1_Cutting_D2_Morning)
+1 OpInShift(O005_L1_Cutting_OP01_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP01_D2_Afternoon)_:
-1 ShiftAssign(O005_L1_Cutting_D2_Afternoon)
+1 OpInShift(O005_L1_Cutting_OP01_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP01_D2_Night)_:
-1 ShiftAssign(O005_L1_Cutting_D2_Night)
+1 OpInShift(O005_L1_Cutting_OP01_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP01_D3_Morning)_:
-1 ShiftAssign(O005_L1_Cutting_D3_Morning)
+1 OpInShift(O005_L1_Cutting_OP01_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP01_D3_Afternoon)_:
-1 ShiftAssign(O005_L1_Cutting_D3_Afternoon)
+1 OpInShift(O005_L1_Cutting_OP01_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP01_D3_Night)_:
-1 ShiftAssign(O005_L1_Cutting_D3_Night)
+1 OpInShift(O005_L1_Cutting_OP01_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP01_D4_Morning)_:
-1 ShiftAssign(O005_L1_Cutting_D4_Morning)
+1 OpInShift(O005_L1_Cutting_OP01_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP01_D4_Afternoon)_:
-1 ShiftAssign(O005_L1_Cutting_D4_Afternoon)
+1 OpInShift(O005_L1_Cutting_OP01_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP01_D4_Night)_:
-1 ShiftAssign(O005_L1_Cutting_D4_Night)
+1 OpInShift(O005_L1_Cutting_OP01_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP01_D5_Morning)_:
-1 ShiftAssign(O005_L1_Cutting_D5_Morning)
+1 OpInShift(O005_L1_Cutting_OP01_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP01_D5_Afternoon)_:
-1 ShiftAssign(O005_L1_Cutting_D5_Afternoon)
+1 OpInShift(O005_L1_Cutting_OP01_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP01_D5_Night)_:
-1 ShiftAssign(O005_L1_Cutting_D5_Night)
+1 OpInShift(O005_L1_Cutting_OP01_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP03_D1_Morning)_:
-1 ShiftAssign(O005_L1_Cutting_D1_Morning)
+1 OpInShift(O005_L1_Cutting_OP03_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP03_D1_Afternoon)_:
-1 ShiftAssign(O005_L1_Cutting_D1_Afternoon)
+1 OpInShift(O005_L1_Cutting_OP03_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP03_D1_Night)_:
-1 ShiftAssign(O005_L1_Cutting_D1_Night)
+1 OpInShift(O005_L1_Cutting_OP03_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP03_D2_Morning)_:
-1 ShiftAssign(O005_L1_Cutting_D2_Morning)
+1 OpInShift(O005_L1_Cutting_OP03_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP03_D2_Afternoon)_:
-1 ShiftAssign(O005_L1_Cutting_D2_Afternoon)
+1 OpInShift(O005_L1_Cutting_OP03_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP03_D2_Night)_:
-1 ShiftAssign(O005_L1_Cutting_D2_Night)
+1 OpInShift(O005_L1_Cutting_OP03_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP03_D3_Morning)_:
-1 ShiftAssign(O005_L1_Cutting_D3_Morning)
+1 OpInShift(O005_L1_Cutting_OP03_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP03_D3_Afternoon)_:
-1 ShiftAssign(O005_L1_Cutting_D3_Afternoon)
+1 OpInShift(O005_L1_Cutting_OP03_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP03_D3_Night)_:
-1 ShiftAssign(O005_L1_Cutting_D3_Night)
+1 OpInShift(O005_L1_Cutting_OP03_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP03_D4_Morning)_:
-1 ShiftAssign(O005_L1_Cutting_D4_Morning)
+1 OpInShift(O005_L1_Cutting_OP03_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP03_D4_Afternoon)_:
-1 ShiftAssign(O005_L1_Cutting_D4_Afternoon)
+1 OpInShift(O005_L1_Cutting_OP03_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP03_D4_Night)_:
-1 ShiftAssign(O005_L1_Cutting_D4_Night)
+1 OpInShift(O005_L1_Cutting_OP03_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP03_D5_Morning)_:
-1 ShiftAssign(O005_L1_Cutting_D5_Morning)
+1 OpInShift(O005_L1_Cutting_OP03_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP03_D5_Afternoon)_:
-1 ShiftAssign(O005_L1_Cutting_D5_Afternoon)
+1 OpInShift(O005_L1_Cutting_OP03_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP03_D5_Night)_:
-1 ShiftAssign(O005_L1_Cutting_D5_Night)
+1 OpInShift(O005_L1_Cutting_OP03_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP04_D1_Morning)_:
-1 ShiftAssign(O005_L1_Cutting_D1_Morning)
+1 OpInShift(O005_L1_Cutting_OP04_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP04_D1_Afternoon)_:
-1 ShiftAssign(O005_L1_Cutting_D1_Afternoon)
+1 OpInShift(O005_L1_Cutting_OP04_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP04_D1_Night)_:
-1 ShiftAssign(O005_L1_Cutting_D1_Night)
+1 OpInShift(O005_L1_Cutting_OP04_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP04_D2_Morning)_:
-1 ShiftAssign(O005_L1_Cutting_D2_Morning)
+1 OpInShift(O005_L1_Cutting_OP04_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP04_D2_Afternoon)_:
-1 ShiftAssign(O005_L1_Cutting_D2_Afternoon)
+1 OpInShift(O005_L1_Cutting_OP04_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP04_D2_Night)_:
-1 ShiftAssign(O005_L1_Cutting_D2_Night)
+1 OpInShift(O005_L1_Cutting_OP04_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP04_D3_Morning)_:
-1 ShiftAssign(O005_L1_Cutting_D3_Morning)
+1 OpInShift(O005_L1_Cutting_OP04_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP04_D3_Afternoon)_:
-1 ShiftAssign(O005_L1_Cutting_D3_Afternoon)
+1 OpInShift(O005_L1_Cutting_OP04_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP04_D3_Night)_:
-1 ShiftAssign(O005_L1_Cutting_D3_Night)
+1 OpInShift(O005_L1_Cutting_OP04_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP04_D4_Morning)_:
-1 ShiftAssign(O005_L1_Cutting_D4_Morning)
+1 OpInShift(O005_L1_Cutting_OP04_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP04_D4_Afternoon)_:
-1 ShiftAssign(O005_L1_Cutting_D4_Afternoon)
+1 OpInShift(O005_L1_Cutting_OP04_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP04_D4_Night)_:
-1 ShiftAssign(O005_L1_Cutting_D4_Night)
+1 OpInShift(O005_L1_Cutting_OP04_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP04_D5_Morning)_:
-1 ShiftAssign(O005_L1_Cutting_D5_Morning)
+1 OpInShift(O005_L1_Cutting_OP04_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP04_D5_Afternoon)_:
-1 ShiftAssign(O005_L1_Cutting_D5_Afternoon)
+1 OpInShift(O005_L1_Cutting_OP04_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Cutting_OP04_D5_Night)_:
-1 ShiftAssign(O005_L1_Cutting_D5_Night)
+1 OpInShift(O005_L1_Cutting_OP04_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP01_D1_Morning)_:
-1 ShiftAssign(O005_L1_Assembly_D1_Morning)
+1 OpInShift(O005_L1_Assembly_OP01_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP01_D1_Afternoon)_:
-1 ShiftAssign(O005_L1_Assembly_D1_Afternoon)
+1 OpInShift(O005_L1_Assembly_OP01_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP01_D1_Night)_:
-1 ShiftAssign(O005_L1_Assembly_D1_Night)
+1 OpInShift(O005_L1_Assembly_OP01_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP01_D2_Morning)_:
-1 ShiftAssign(O005_L1_Assembly_D2_Morning)
+1 OpInShift(O005_L1_Assembly_OP01_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP01_D2_Afternoon)_:
-1 ShiftAssign(O005_L1_Assembly_D2_Afternoon)
+1 OpInShift(O005_L1_Assembly_OP01_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP01_D2_Night)_:
-1 ShiftAssign(O005_L1_Assembly_D2_Night)
+1 OpInShift(O005_L1_Assembly_OP01_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP01_D3_Morning)_:
-1 ShiftAssign(O005_L1_Assembly_D3_Morning)
+1 OpInShift(O005_L1_Assembly_OP01_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP01_D3_Afternoon)_:
-1 ShiftAssign(O005_L1_Assembly_D3_Afternoon)
+1 OpInShift(O005_L1_Assembly_OP01_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP01_D3_Night)_:
-1 ShiftAssign(O005_L1_Assembly_D3_Night)
+1 OpInShift(O005_L1_Assembly_OP01_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP01_D4_Morning)_:
-1 ShiftAssign(O005_L1_Assembly_D4_Morning)
+1 OpInShift(O005_L1_Assembly_OP01_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP01_D4_Afternoon)_:
-1 ShiftAssign(O005_L1_Assembly_D4_Afternoon)
+1 OpInShift(O005_L1_Assembly_OP01_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP01_D4_Night)_:
-1 ShiftAssign(O005_L1_Assembly_D4_Night)
+1 OpInShift(O005_L1_Assembly_OP01_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP01_D5_Morning)_:
-1 ShiftAssign(O005_L1_Assembly_D5_Morning)
+1 OpInShift(O005_L1_Assembly_OP01_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP01_D5_Afternoon)_:
-1 ShiftAssign(O005_L1_Assembly_D5_Afternoon)
+1 OpInShift(O005_L1_Assembly_OP01_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP01_D5_Night)_:
-1 ShiftAssign(O005_L1_Assembly_D5_Night)
+1 OpInShift(O005_L1_Assembly_OP01_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP02_D1_Morning)_:
-1 ShiftAssign(O005_L1_Assembly_D1_Morning)
+1 OpInShift(O005_L1_Assembly_OP02_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP02_D1_Afternoon)_:
-1 ShiftAssign(O005_L1_Assembly_D1_Afternoon)
+1 OpInShift(O005_L1_Assembly_OP02_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP02_D1_Night)_:
-1 ShiftAssign(O005_L1_Assembly_D1_Night)
+1 OpInShift(O005_L1_Assembly_OP02_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP02_D2_Morning)_:
-1 ShiftAssign(O005_L1_Assembly_D2_Morning)
+1 OpInShift(O005_L1_Assembly_OP02_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP02_D2_Afternoon)_:
-1 ShiftAssign(O005_L1_Assembly_D2_Afternoon)
+1 OpInShift(O005_L1_Assembly_OP02_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP02_D2_Night)_:
-1 ShiftAssign(O005_L1_Assembly_D2_Night)
+1 OpInShift(O005_L1_Assembly_OP02_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP02_D3_Morning)_:
-1 ShiftAssign(O005_L1_Assembly_D3_Morning)
+1 OpInShift(O005_L1_Assembly_OP02_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP02_D3_Afternoon)_:
-1 ShiftAssign(O005_L1_Assembly_D3_Afternoon)
+1 OpInShift(O005_L1_Assembly_OP02_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP02_D3_Night)_:
-1 ShiftAssign(O005_L1_Assembly_D3_Night)
+1 OpInShift(O005_L1_Assembly_OP02_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP02_D4_Morning)_:
-1 ShiftAssign(O005_L1_Assembly_D4_Morning)
+1 OpInShift(O005_L1_Assembly_OP02_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP02_D4_Afternoon)_:
-1 ShiftAssign(O005_L1_Assembly_D4_Afternoon)
+1 OpInShift(O005_L1_Assembly_OP02_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP02_D4_Night)_:
-1 ShiftAssign(O005_L1_Assembly_D4_Night)
+1 OpInShift(O005_L1_Assembly_OP02_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP02_D5_Morning)_:
-1 ShiftAssign(O005_L1_Assembly_D5_Morning)
+1 OpInShift(O005_L1_Assembly_OP02_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP02_D5_Afternoon)_:
-1 ShiftAssign(O005_L1_Assembly_D5_Afternoon)
+1 OpInShift(O005_L1_Assembly_OP02_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP02_D5_Night)_:
-1 ShiftAssign(O005_L1_Assembly_D5_Night)
+1 OpInShift(O005_L1_Assembly_OP02_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP04_D1_Morning)_:
-1 ShiftAssign(O005_L1_Assembly_D1_Morning)
+1 OpInShift(O005_L1_Assembly_OP04_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP04_D1_Afternoon)_:
-1 ShiftAssign(O005_L1_Assembly_D1_Afternoon)
+1 OpInShift(O005_L1_Assembly_OP04_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP04_D1_Night)_:
-1 ShiftAssign(O005_L1_Assembly_D1_Night)
+1 OpInShift(O005_L1_Assembly_OP04_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP04_D2_Morning)_:
-1 ShiftAssign(O005_L1_Assembly_D2_Morning)
+1 OpInShift(O005_L1_Assembly_OP04_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP04_D2_Afternoon)_:
-1 ShiftAssign(O005_L1_Assembly_D2_Afternoon)
+1 OpInShift(O005_L1_Assembly_OP04_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP04_D2_Night)_:
-1 ShiftAssign(O005_L1_Assembly_D2_Night)
+1 OpInShift(O005_L1_Assembly_OP04_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP04_D3_Morning)_:
-1 ShiftAssign(O005_L1_Assembly_D3_Morning)
+1 OpInShift(O005_L1_Assembly_OP04_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP04_D3_Afternoon)_:
-1 ShiftAssign(O005_L1_Assembly_D3_Afternoon)
+1 OpInShift(O005_L1_Assembly_OP04_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP04_D3_Night)_:
-1 ShiftAssign(O005_L1_Assembly_D3_Night)
+1 OpInShift(O005_L1_Assembly_OP04_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP04_D4_Morning)_:
-1 ShiftAssign(O005_L1_Assembly_D4_Morning)
+1 OpInShift(O005_L1_Assembly_OP04_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP04_D4_Afternoon)_:
-1 ShiftAssign(O005_L1_Assembly_D4_Afternoon)
+1 OpInShift(O005_L1_Assembly_OP04_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP04_D4_Night)_:
-1 ShiftAssign(O005_L1_Assembly_D4_Night)
+1 OpInShift(O005_L1_Assembly_OP04_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP04_D5_Morning)_:
-1 ShiftAssign(O005_L1_Assembly_D5_Morning)
+1 OpInShift(O005_L1_Assembly_OP04_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP04_D5_Afternoon)_:
-1 ShiftAssign(O005_L1_Assembly_D5_Afternoon)
+1 OpInShift(O005_L1_Assembly_OP04_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O005_L1_Assembly_OP04_D5_Night)_:
-1 ShiftAssign(O005_L1_Assembly_D5_Night)
+1 OpInShift(O005_L1_Assembly_OP04_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP01_D1_Morning)_:
-1 ShiftAssign(O006_L1_Cutting_D1_Morning)
+1 OpInShift(O006_L1_Cutting_OP01_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP01_D1_Afternoon)_:
-1 ShiftAssign(O006_L1_Cutting_D1_Afternoon)
+1 OpInShift(O006_L1_Cutting_OP01_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP01_D1_Night)_:
-1 ShiftAssign(O006_L1_Cutting_D1_Night)
+1 OpInShift(O006_L1_Cutting_OP01_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP01_D2_Morning)_:
-1 ShiftAssign(O006_L1_Cutting_D2_Morning)
+1 OpInShift(O006_L1_Cutting_OP01_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP01_D2_Afternoon)_:
-1 ShiftAssign(O006_L1_Cutting_D2_Afternoon)
+1 OpInShift(O006_L1_Cutting_OP01_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP01_D2_Night)_:
-1 ShiftAssign(O006_L1_Cutting_D2_Night)
+1 OpInShift(O006_L1_Cutting_OP01_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP01_D3_Morning)_:
-1 ShiftAssign(O006_L1_Cutting_D3_Morning)
+1 OpInShift(O006_L1_Cutting_OP01_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP01_D3_Afternoon)_:
-1 ShiftAssign(O006_L1_Cutting_D3_Afternoon)
+1 OpInShift(O006_L1_Cutting_OP01_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP01_D3_Night)_:
-1 ShiftAssign(O006_L1_Cutting_D3_Night)
+1 OpInShift(O006_L1_Cutting_OP01_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP01_D4_Morning)_:
-1 ShiftAssign(O006_L1_Cutting_D4_Morning)
+1 OpInShift(O006_L1_Cutting_OP01_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP01_D4_Afternoon)_:
-1 ShiftAssign(O006_L1_Cutting_D4_Afternoon)
+1 OpInShift(O006_L1_Cutting_OP01_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP01_D4_Night)_:
-1 ShiftAssign(O006_L1_Cutting_D4_Night)
+1 OpInShift(O006_L1_Cutting_OP01_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP01_D5_Morning)_:
-1 ShiftAssign(O006_L1_Cutting_D5_Morning)
+1 OpInShift(O006_L1_Cutting_OP01_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP01_D5_Afternoon)_:
-1 ShiftAssign(O006_L1_Cutting_D5_Afternoon)
+1 OpInShift(O006_L1_Cutting_OP01_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP01_D5_Night)_:
-1 ShiftAssign(O006_L1_Cutting_D5_Night)
+1 OpInShift(O006_L1_Cutting_OP01_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP03_D1_Morning)_:
-1 ShiftAssign(O006_L1_Cutting_D1_Morning)
+1 OpInShift(O006_L1_Cutting_OP03_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP03_D1_Afternoon)_:
-1 ShiftAssign(O006_L1_Cutting_D1_Afternoon)
+1 OpInShift(O006_L1_Cutting_OP03_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP03_D1_Night)_:
-1 ShiftAssign(O006_L1_Cutting_D1_Night)
+1 OpInShift(O006_L1_Cutting_OP03_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP03_D2_Morning)_:
-1 ShiftAssign(O006_L1_Cutting_D2_Morning)
+1 OpInShift(O006_L1_Cutting_OP03_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP03_D2_Afternoon)_:
-1 ShiftAssign(O006_L1_Cutting_D2_Afternoon)
+1 OpInShift(O006_L1_Cutting_OP03_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP03_D2_Night)_:
-1 ShiftAssign(O006_L1_Cutting_D2_Night)
+1 OpInShift(O006_L1_Cutting_OP03_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP03_D3_Morning)_:
-1 ShiftAssign(O006_L1_Cutting_D3_Morning)
+1 OpInShift(O006_L1_Cutting_OP03_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP03_D3_Afternoon)_:
-1 ShiftAssign(O006_L1_Cutting_D3_Afternoon)
+1 OpInShift(O006_L1_Cutting_OP03_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP03_D3_Night)_:
-1 ShiftAssign(O006_L1_Cutting_D3_Night)
+1 OpInShift(O006_L1_Cutting_OP03_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP03_D4_Morning)_:
-1 ShiftAssign(O006_L1_Cutting_D4_Morning)
+1 OpInShift(O006_L1_Cutting_OP03_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP03_D4_Afternoon)_:
-1 ShiftAssign(O006_L1_Cutting_D4_Afternoon)
+1 OpInShift(O006_L1_Cutting_OP03_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP03_D4_Night)_:
-1 ShiftAssign(O006_L1_Cutting_D4_Night)
+1 OpInShift(O006_L1_Cutting_OP03_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP03_D5_Morning)_:
-1 ShiftAssign(O006_L1_Cutting_D5_Morning)
+1 OpInShift(O006_L1_Cutting_OP03_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP03_D5_Afternoon)_:
-1 ShiftAssign(O006_L1_Cutting_D5_Afternoon)
+1 OpInShift(O006_L1_Cutting_OP03_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP03_D5_Night)_:
-1 ShiftAssign(O006_L1_Cutting_D5_Night)
+1 OpInShift(O006_L1_Cutting_OP03_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP04_D1_Morning)_:
-1 ShiftAssign(O006_L1_Cutting_D1_Morning)
+1 OpInShift(O006_L1_Cutting_OP04_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP04_D1_Afternoon)_:
-1 ShiftAssign(O006_L1_Cutting_D1_Afternoon)
+1 OpInShift(O006_L1_Cutting_OP04_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP04_D1_Night)_:
-1 ShiftAssign(O006_L1_Cutting_D1_Night)
+1 OpInShift(O006_L1_Cutting_OP04_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP04_D2_Morning)_:
-1 ShiftAssign(O006_L1_Cutting_D2_Morning)
+1 OpInShift(O006_L1_Cutting_OP04_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP04_D2_Afternoon)_:
-1 ShiftAssign(O006_L1_Cutting_D2_Afternoon)
+1 OpInShift(O006_L1_Cutting_OP04_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP04_D2_Night)_:
-1 ShiftAssign(O006_L1_Cutting_D2_Night)
+1 OpInShift(O006_L1_Cutting_OP04_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP04_D3_Morning)_:
-1 ShiftAssign(O006_L1_Cutting_D3_Morning)
+1 OpInShift(O006_L1_Cutting_OP04_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP04_D3_Afternoon)_:
-1 ShiftAssign(O006_L1_Cutting_D3_Afternoon)
+1 OpInShift(O006_L1_Cutting_OP04_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP04_D3_Night)_:
-1 ShiftAssign(O006_L1_Cutting_D3_Night)
+1 OpInShift(O006_L1_Cutting_OP04_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP04_D4_Morning)_:
-1 ShiftAssign(O006_L1_Cutting_D4_Morning)
+1 OpInShift(O006_L1_Cutting_OP04_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP04_D4_Afternoon)_:
-1 ShiftAssign(O006_L1_Cutting_D4_Afternoon)
+1 OpInShift(O006_L1_Cutting_OP04_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP04_D4_Night)_:
-1 ShiftAssign(O006_L1_Cutting_D4_Night)
+1 OpInShift(O006_L1_Cutting_OP04_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP04_D5_Morning)_:
-1 ShiftAssign(O006_L1_Cutting_D5_Morning)
+1 OpInShift(O006_L1_Cutting_OP04_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP04_D5_Afternoon)_:
-1 ShiftAssign(O006_L1_Cutting_D5_Afternoon)
+1 OpInShift(O006_L1_Cutting_OP04_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Cutting_OP04_D5_Night)_:
-1 ShiftAssign(O006_L1_Cutting_D5_Night)
+1 OpInShift(O006_L1_Cutting_OP04_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP01_D1_Morning)_:
-1 ShiftAssign(O006_L1_Assembly_D1_Morning)
+1 OpInShift(O006_L1_Assembly_OP01_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP01_D1_Afternoon)_:
-1 ShiftAssign(O006_L1_Assembly_D1_Afternoon)
+1 OpInShift(O006_L1_Assembly_OP01_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP01_D1_Night)_:
-1 ShiftAssign(O006_L1_Assembly_D1_Night)
+1 OpInShift(O006_L1_Assembly_OP01_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP01_D2_Morning)_:
-1 ShiftAssign(O006_L1_Assembly_D2_Morning)
+1 OpInShift(O006_L1_Assembly_OP01_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP01_D2_Afternoon)_:
-1 ShiftAssign(O006_L1_Assembly_D2_Afternoon)
+1 OpInShift(O006_L1_Assembly_OP01_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP01_D2_Night)_:
-1 ShiftAssign(O006_L1_Assembly_D2_Night)
+1 OpInShift(O006_L1_Assembly_OP01_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP01_D3_Morning)_:
-1 ShiftAssign(O006_L1_Assembly_D3_Morning)
+1 OpInShift(O006_L1_Assembly_OP01_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP01_D3_Afternoon)_:
-1 ShiftAssign(O006_L1_Assembly_D3_Afternoon)
+1 OpInShift(O006_L1_Assembly_OP01_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP01_D3_Night)_:
-1 ShiftAssign(O006_L1_Assembly_D3_Night)
+1 OpInShift(O006_L1_Assembly_OP01_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP01_D4_Morning)_:
-1 ShiftAssign(O006_L1_Assembly_D4_Morning)
+1 OpInShift(O006_L1_Assembly_OP01_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP01_D4_Afternoon)_:
-1 ShiftAssign(O006_L1_Assembly_D4_Afternoon)
+1 OpInShift(O006_L1_Assembly_OP01_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP01_D4_Night)_:
-1 ShiftAssign(O006_L1_Assembly_D4_Night)
+1 OpInShift(O006_L1_Assembly_OP01_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP01_D5_Morning)_:
-1 ShiftAssign(O006_L1_Assembly_D5_Morning)
+1 OpInShift(O006_L1_Assembly_OP01_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP01_D5_Afternoon)_:
-1 ShiftAssign(O006_L1_Assembly_D5_Afternoon)
+1 OpInShift(O006_L1_Assembly_OP01_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP01_D5_Night)_:
-1 ShiftAssign(O006_L1_Assembly_D5_Night)
+1 OpInShift(O006_L1_Assembly_OP01_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP02_D1_Morning)_:
-1 ShiftAssign(O006_L1_Assembly_D1_Morning)
+1 OpInShift(O006_L1_Assembly_OP02_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP02_D1_Afternoon)_:
-1 ShiftAssign(O006_L1_Assembly_D1_Afternoon)
+1 OpInShift(O006_L1_Assembly_OP02_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP02_D1_Night)_:
-1 ShiftAssign(O006_L1_Assembly_D1_Night)
+1 OpInShift(O006_L1_Assembly_OP02_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP02_D2_Morning)_:
-1 ShiftAssign(O006_L1_Assembly_D2_Morning)
+1 OpInShift(O006_L1_Assembly_OP02_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP02_D2_Afternoon)_:
-1 ShiftAssign(O006_L1_Assembly_D2_Afternoon)
+1 OpInShift(O006_L1_Assembly_OP02_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP02_D2_Night)_:
-1 ShiftAssign(O006_L1_Assembly_D2_Night)
+1 OpInShift(O006_L1_Assembly_OP02_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP02_D3_Morning)_:
-1 ShiftAssign(O006_L1_Assembly_D3_Morning)
+1 OpInShift(O006_L1_Assembly_OP02_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP02_D3_Afternoon)_:
-1 ShiftAssign(O006_L1_Assembly_D3_Afternoon)
+1 OpInShift(O006_L1_Assembly_OP02_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP02_D3_Night)_:
-1 ShiftAssign(O006_L1_Assembly_D3_Night)
+1 OpInShift(O006_L1_Assembly_OP02_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP02_D4_Morning)_:
-1 ShiftAssign(O006_L1_Assembly_D4_Morning)
+1 OpInShift(O006_L1_Assembly_OP02_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP02_D4_Afternoon)_:
-1 ShiftAssign(O006_L1_Assembly_D4_Afternoon)
+1 OpInShift(O006_L1_Assembly_OP02_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP02_D4_Night)_:
-1 ShiftAssign(O006_L1_Assembly_D4_Night)
+1 OpInShift(O006_L1_Assembly_OP02_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP02_D5_Morning)_:
-1 ShiftAssign(O006_L1_Assembly_D5_Morning)
+1 OpInShift(O006_L1_Assembly_OP02_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP02_D5_Afternoon)_:
-1 ShiftAssign(O006_L1_Assembly_D5_Afternoon)
+1 OpInShift(O006_L1_Assembly_OP02_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP02_D5_Night)_:
-1 ShiftAssign(O006_L1_Assembly_D5_Night)
+1 OpInShift(O006_L1_Assembly_OP02_D5_Night)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP04_D1_Morning)_:
-1 ShiftAssign(O006_L1_Assembly_D1_Morning)
+1 OpInShift(O006_L1_Assembly_OP04_D1_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP04_D1_Afternoon)_:
-1 ShiftAssign(O006_L1_Assembly_D1_Afternoon)
+1 OpInShift(O006_L1_Assembly_OP04_D1_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP04_D1_Night)_:
-1 ShiftAssign(O006_L1_Assembly_D1_Night)
+1 OpInShift(O006_L1_Assembly_OP04_D1_Night)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP04_D2_Morning)_:
-1 ShiftAssign(O006_L1_Assembly_D2_Morning)
+1 OpInShift(O006_L1_Assembly_OP04_D2_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP04_D2_Afternoon)_:
-1 ShiftAssign(O006_L1_Assembly_D2_Afternoon)
+1 OpInShift(O006_L1_Assembly_OP04_D2_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP04_D2_Night)_:
-1 ShiftAssign(O006_L1_Assembly_D2_Night)
+1 OpInShift(O006_L1_Assembly_OP04_D2_Night)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP04_D3_Morning)_:
-1 ShiftAssign(O006_L1_Assembly_D3_Morning)
+1 OpInShift(O006_L1_Assembly_OP04_D3_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP04_D3_Afternoon)_:
-1 ShiftAssign(O006_L1_Assembly_D3_Afternoon)
+1 OpInShift(O006_L1_Assembly_OP04_D3_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP04_D3_Night)_:
-1 ShiftAssign(O006_L1_Assembly_D3_Night)
+1 OpInShift(O006_L1_Assembly_OP04_D3_Night)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP04_D4_Morning)_:
-1 ShiftAssign(O006_L1_Assembly_D4_Morning)
+1 OpInShift(O006_L1_Assembly_OP04_D4_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP04_D4_Afternoon)_:
-1 ShiftAssign(O006_L1_Assembly_D4_Afternoon)
+1 OpInShift(O006_L1_Assembly_OP04_D4_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP04_D4_Night)_:
-1 ShiftAssign(O006_L1_Assembly_D4_Night)
+1 OpInShift(O006_L1_Assembly_OP04_D4_Night)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP04_D5_Morning)_:
-1 ShiftAssign(O006_L1_Assembly_D5_Morning)
+1 OpInShift(O006_L1_Assembly_OP04_D5_Morning)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP04_D5_Afternoon)_:
-1 ShiftAssign(O006_L1_Assembly_D5_Afternoon)
+1 OpInShift(O006_L1_Assembly_OP04_D5_Afternoon)
<= 0

c_u_C_OPR4_AndUpper2(O006_L1_Assembly_OP04_D5_Night)_:
-1 ShiftAssign(O006_L1_Assembly_D5_Night)
+1 OpInShift(O006_L1_Assembly_OP04_D5_Night)
<= 0

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP02_D1_Morning)_:
+1 ShiftAssign(O001_L1_Cutting_D1_Morning)
+1 OpAssign(O001_L1_Cutting_OP02)
-1 OpInShift(O001_L1_Cutting_OP02_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP02_D1_Afternoon)_:
+1 ShiftAssign(O001_L1_Cutting_D1_Afternoon)
+1 OpAssign(O001_L1_Cutting_OP02)
-1 OpInShift(O001_L1_Cutting_OP02_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP02_D1_Night)_:
+1 ShiftAssign(O001_L1_Cutting_D1_Night)
+1 OpAssign(O001_L1_Cutting_OP02)
-1 OpInShift(O001_L1_Cutting_OP02_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP02_D2_Morning)_:
+1 ShiftAssign(O001_L1_Cutting_D2_Morning)
+1 OpAssign(O001_L1_Cutting_OP02)
-1 OpInShift(O001_L1_Cutting_OP02_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP02_D2_Afternoon)_:
+1 ShiftAssign(O001_L1_Cutting_D2_Afternoon)
+1 OpAssign(O001_L1_Cutting_OP02)
-1 OpInShift(O001_L1_Cutting_OP02_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP02_D2_Night)_:
+1 ShiftAssign(O001_L1_Cutting_D2_Night)
+1 OpAssign(O001_L1_Cutting_OP02)
-1 OpInShift(O001_L1_Cutting_OP02_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP02_D3_Morning)_:
+1 ShiftAssign(O001_L1_Cutting_D3_Morning)
+1 OpAssign(O001_L1_Cutting_OP02)
-1 OpInShift(O001_L1_Cutting_OP02_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP02_D3_Afternoon)_:
+1 ShiftAssign(O001_L1_Cutting_D3_Afternoon)
+1 OpAssign(O001_L1_Cutting_OP02)
-1 OpInShift(O001_L1_Cutting_OP02_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP02_D3_Night)_:
+1 ShiftAssign(O001_L1_Cutting_D3_Night)
+1 OpAssign(O001_L1_Cutting_OP02)
-1 OpInShift(O001_L1_Cutting_OP02_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP02_D4_Morning)_:
+1 ShiftAssign(O001_L1_Cutting_D4_Morning)
+1 OpAssign(O001_L1_Cutting_OP02)
-1 OpInShift(O001_L1_Cutting_OP02_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP02_D4_Afternoon)_:
+1 ShiftAssign(O001_L1_Cutting_D4_Afternoon)
+1 OpAssign(O001_L1_Cutting_OP02)
-1 OpInShift(O001_L1_Cutting_OP02_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP02_D4_Night)_:
+1 ShiftAssign(O001_L1_Cutting_D4_Night)
+1 OpAssign(O001_L1_Cutting_OP02)
-1 OpInShift(O001_L1_Cutting_OP02_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP02_D5_Morning)_:
+1 ShiftAssign(O001_L1_Cutting_D5_Morning)
+1 OpAssign(O001_L1_Cutting_OP02)
-1 OpInShift(O001_L1_Cutting_OP02_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP02_D5_Afternoon)_:
+1 ShiftAssign(O001_L1_Cutting_D5_Afternoon)
+1 OpAssign(O001_L1_Cutting_OP02)
-1 OpInShift(O001_L1_Cutting_OP02_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP02_D5_Night)_:
+1 ShiftAssign(O001_L1_Cutting_D5_Night)
+1 OpAssign(O001_L1_Cutting_OP02)
-1 OpInShift(O001_L1_Cutting_OP02_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP03_D1_Morning)_:
+1 ShiftAssign(O001_L1_Cutting_D1_Morning)
+1 OpAssign(O001_L1_Cutting_OP03)
-1 OpInShift(O001_L1_Cutting_OP03_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP03_D1_Afternoon)_:
+1 ShiftAssign(O001_L1_Cutting_D1_Afternoon)
+1 OpAssign(O001_L1_Cutting_OP03)
-1 OpInShift(O001_L1_Cutting_OP03_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP03_D1_Night)_:
+1 ShiftAssign(O001_L1_Cutting_D1_Night)
+1 OpAssign(O001_L1_Cutting_OP03)
-1 OpInShift(O001_L1_Cutting_OP03_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP03_D2_Morning)_:
+1 ShiftAssign(O001_L1_Cutting_D2_Morning)
+1 OpAssign(O001_L1_Cutting_OP03)
-1 OpInShift(O001_L1_Cutting_OP03_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP03_D2_Afternoon)_:
+1 ShiftAssign(O001_L1_Cutting_D2_Afternoon)
+1 OpAssign(O001_L1_Cutting_OP03)
-1 OpInShift(O001_L1_Cutting_OP03_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP03_D2_Night)_:
+1 ShiftAssign(O001_L1_Cutting_D2_Night)
+1 OpAssign(O001_L1_Cutting_OP03)
-1 OpInShift(O001_L1_Cutting_OP03_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP03_D3_Morning)_:
+1 ShiftAssign(O001_L1_Cutting_D3_Morning)
+1 OpAssign(O001_L1_Cutting_OP03)
-1 OpInShift(O001_L1_Cutting_OP03_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP03_D3_Afternoon)_:
+1 ShiftAssign(O001_L1_Cutting_D3_Afternoon)
+1 OpAssign(O001_L1_Cutting_OP03)
-1 OpInShift(O001_L1_Cutting_OP03_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP03_D3_Night)_:
+1 ShiftAssign(O001_L1_Cutting_D3_Night)
+1 OpAssign(O001_L1_Cutting_OP03)
-1 OpInShift(O001_L1_Cutting_OP03_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP03_D4_Morning)_:
+1 ShiftAssign(O001_L1_Cutting_D4_Morning)
+1 OpAssign(O001_L1_Cutting_OP03)
-1 OpInShift(O001_L1_Cutting_OP03_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP03_D4_Afternoon)_:
+1 ShiftAssign(O001_L1_Cutting_D4_Afternoon)
+1 OpAssign(O001_L1_Cutting_OP03)
-1 OpInShift(O001_L1_Cutting_OP03_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP03_D4_Night)_:
+1 ShiftAssign(O001_L1_Cutting_D4_Night)
+1 OpAssign(O001_L1_Cutting_OP03)
-1 OpInShift(O001_L1_Cutting_OP03_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP03_D5_Morning)_:
+1 ShiftAssign(O001_L1_Cutting_D5_Morning)
+1 OpAssign(O001_L1_Cutting_OP03)
-1 OpInShift(O001_L1_Cutting_OP03_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP03_D5_Afternoon)_:
+1 ShiftAssign(O001_L1_Cutting_D5_Afternoon)
+1 OpAssign(O001_L1_Cutting_OP03)
-1 OpInShift(O001_L1_Cutting_OP03_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP03_D5_Night)_:
+1 ShiftAssign(O001_L1_Cutting_D5_Night)
+1 OpAssign(O001_L1_Cutting_OP03)
-1 OpInShift(O001_L1_Cutting_OP03_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP04_D1_Morning)_:
+1 ShiftAssign(O001_L1_Cutting_D1_Morning)
+1 OpAssign(O001_L1_Cutting_OP04)
-1 OpInShift(O001_L1_Cutting_OP04_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP04_D1_Afternoon)_:
+1 ShiftAssign(O001_L1_Cutting_D1_Afternoon)
+1 OpAssign(O001_L1_Cutting_OP04)
-1 OpInShift(O001_L1_Cutting_OP04_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP04_D1_Night)_:
+1 ShiftAssign(O001_L1_Cutting_D1_Night)
+1 OpAssign(O001_L1_Cutting_OP04)
-1 OpInShift(O001_L1_Cutting_OP04_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP04_D2_Morning)_:
+1 ShiftAssign(O001_L1_Cutting_D2_Morning)
+1 OpAssign(O001_L1_Cutting_OP04)
-1 OpInShift(O001_L1_Cutting_OP04_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP04_D2_Afternoon)_:
+1 ShiftAssign(O001_L1_Cutting_D2_Afternoon)
+1 OpAssign(O001_L1_Cutting_OP04)
-1 OpInShift(O001_L1_Cutting_OP04_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP04_D2_Night)_:
+1 ShiftAssign(O001_L1_Cutting_D2_Night)
+1 OpAssign(O001_L1_Cutting_OP04)
-1 OpInShift(O001_L1_Cutting_OP04_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP04_D3_Morning)_:
+1 ShiftAssign(O001_L1_Cutting_D3_Morning)
+1 OpAssign(O001_L1_Cutting_OP04)
-1 OpInShift(O001_L1_Cutting_OP04_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP04_D3_Afternoon)_:
+1 ShiftAssign(O001_L1_Cutting_D3_Afternoon)
+1 OpAssign(O001_L1_Cutting_OP04)
-1 OpInShift(O001_L1_Cutting_OP04_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP04_D3_Night)_:
+1 ShiftAssign(O001_L1_Cutting_D3_Night)
+1 OpAssign(O001_L1_Cutting_OP04)
-1 OpInShift(O001_L1_Cutting_OP04_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP04_D4_Morning)_:
+1 ShiftAssign(O001_L1_Cutting_D4_Morning)
+1 OpAssign(O001_L1_Cutting_OP04)
-1 OpInShift(O001_L1_Cutting_OP04_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP04_D4_Afternoon)_:
+1 ShiftAssign(O001_L1_Cutting_D4_Afternoon)
+1 OpAssign(O001_L1_Cutting_OP04)
-1 OpInShift(O001_L1_Cutting_OP04_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP04_D4_Night)_:
+1 ShiftAssign(O001_L1_Cutting_D4_Night)
+1 OpAssign(O001_L1_Cutting_OP04)
-1 OpInShift(O001_L1_Cutting_OP04_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP04_D5_Morning)_:
+1 ShiftAssign(O001_L1_Cutting_D5_Morning)
+1 OpAssign(O001_L1_Cutting_OP04)
-1 OpInShift(O001_L1_Cutting_OP04_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP04_D5_Afternoon)_:
+1 ShiftAssign(O001_L1_Cutting_D5_Afternoon)
+1 OpAssign(O001_L1_Cutting_OP04)
-1 OpInShift(O001_L1_Cutting_OP04_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Cutting_OP04_D5_Night)_:
+1 ShiftAssign(O001_L1_Cutting_D5_Night)
+1 OpAssign(O001_L1_Cutting_OP04)
-1 OpInShift(O001_L1_Cutting_OP04_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP01_D1_Morning)_:
+1 ShiftAssign(O001_L1_Assembly_D1_Morning)
+1 OpAssign(O001_L1_Assembly_OP01)
-1 OpInShift(O001_L1_Assembly_OP01_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP01_D1_Afternoon)_:
+1 ShiftAssign(O001_L1_Assembly_D1_Afternoon)
+1 OpAssign(O001_L1_Assembly_OP01)
-1 OpInShift(O001_L1_Assembly_OP01_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP01_D1_Night)_:
+1 ShiftAssign(O001_L1_Assembly_D1_Night)
+1 OpAssign(O001_L1_Assembly_OP01)
-1 OpInShift(O001_L1_Assembly_OP01_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP01_D2_Morning)_:
+1 ShiftAssign(O001_L1_Assembly_D2_Morning)
+1 OpAssign(O001_L1_Assembly_OP01)
-1 OpInShift(O001_L1_Assembly_OP01_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP01_D2_Afternoon)_:
+1 ShiftAssign(O001_L1_Assembly_D2_Afternoon)
+1 OpAssign(O001_L1_Assembly_OP01)
-1 OpInShift(O001_L1_Assembly_OP01_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP01_D2_Night)_:
+1 ShiftAssign(O001_L1_Assembly_D2_Night)
+1 OpAssign(O001_L1_Assembly_OP01)
-1 OpInShift(O001_L1_Assembly_OP01_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP01_D3_Morning)_:
+1 ShiftAssign(O001_L1_Assembly_D3_Morning)
+1 OpAssign(O001_L1_Assembly_OP01)
-1 OpInShift(O001_L1_Assembly_OP01_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP01_D3_Afternoon)_:
+1 ShiftAssign(O001_L1_Assembly_D3_Afternoon)
+1 OpAssign(O001_L1_Assembly_OP01)
-1 OpInShift(O001_L1_Assembly_OP01_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP01_D3_Night)_:
+1 ShiftAssign(O001_L1_Assembly_D3_Night)
+1 OpAssign(O001_L1_Assembly_OP01)
-1 OpInShift(O001_L1_Assembly_OP01_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP01_D4_Morning)_:
+1 ShiftAssign(O001_L1_Assembly_D4_Morning)
+1 OpAssign(O001_L1_Assembly_OP01)
-1 OpInShift(O001_L1_Assembly_OP01_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP01_D4_Afternoon)_:
+1 ShiftAssign(O001_L1_Assembly_D4_Afternoon)
+1 OpAssign(O001_L1_Assembly_OP01)
-1 OpInShift(O001_L1_Assembly_OP01_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP01_D4_Night)_:
+1 ShiftAssign(O001_L1_Assembly_D4_Night)
+1 OpAssign(O001_L1_Assembly_OP01)
-1 OpInShift(O001_L1_Assembly_OP01_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP01_D5_Morning)_:
+1 ShiftAssign(O001_L1_Assembly_D5_Morning)
+1 OpAssign(O001_L1_Assembly_OP01)
-1 OpInShift(O001_L1_Assembly_OP01_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP01_D5_Afternoon)_:
+1 ShiftAssign(O001_L1_Assembly_D5_Afternoon)
+1 OpAssign(O001_L1_Assembly_OP01)
-1 OpInShift(O001_L1_Assembly_OP01_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP01_D5_Night)_:
+1 ShiftAssign(O001_L1_Assembly_D5_Night)
+1 OpAssign(O001_L1_Assembly_OP01)
-1 OpInShift(O001_L1_Assembly_OP01_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP02_D1_Morning)_:
+1 ShiftAssign(O001_L1_Assembly_D1_Morning)
+1 OpAssign(O001_L1_Assembly_OP02)
-1 OpInShift(O001_L1_Assembly_OP02_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP02_D1_Afternoon)_:
+1 ShiftAssign(O001_L1_Assembly_D1_Afternoon)
+1 OpAssign(O001_L1_Assembly_OP02)
-1 OpInShift(O001_L1_Assembly_OP02_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP02_D1_Night)_:
+1 ShiftAssign(O001_L1_Assembly_D1_Night)
+1 OpAssign(O001_L1_Assembly_OP02)
-1 OpInShift(O001_L1_Assembly_OP02_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP02_D2_Morning)_:
+1 ShiftAssign(O001_L1_Assembly_D2_Morning)
+1 OpAssign(O001_L1_Assembly_OP02)
-1 OpInShift(O001_L1_Assembly_OP02_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP02_D2_Afternoon)_:
+1 ShiftAssign(O001_L1_Assembly_D2_Afternoon)
+1 OpAssign(O001_L1_Assembly_OP02)
-1 OpInShift(O001_L1_Assembly_OP02_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP02_D2_Night)_:
+1 ShiftAssign(O001_L1_Assembly_D2_Night)
+1 OpAssign(O001_L1_Assembly_OP02)
-1 OpInShift(O001_L1_Assembly_OP02_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP02_D3_Morning)_:
+1 ShiftAssign(O001_L1_Assembly_D3_Morning)
+1 OpAssign(O001_L1_Assembly_OP02)
-1 OpInShift(O001_L1_Assembly_OP02_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP02_D3_Afternoon)_:
+1 ShiftAssign(O001_L1_Assembly_D3_Afternoon)
+1 OpAssign(O001_L1_Assembly_OP02)
-1 OpInShift(O001_L1_Assembly_OP02_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP02_D3_Night)_:
+1 ShiftAssign(O001_L1_Assembly_D3_Night)
+1 OpAssign(O001_L1_Assembly_OP02)
-1 OpInShift(O001_L1_Assembly_OP02_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP02_D4_Morning)_:
+1 ShiftAssign(O001_L1_Assembly_D4_Morning)
+1 OpAssign(O001_L1_Assembly_OP02)
-1 OpInShift(O001_L1_Assembly_OP02_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP02_D4_Afternoon)_:
+1 ShiftAssign(O001_L1_Assembly_D4_Afternoon)
+1 OpAssign(O001_L1_Assembly_OP02)
-1 OpInShift(O001_L1_Assembly_OP02_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP02_D4_Night)_:
+1 ShiftAssign(O001_L1_Assembly_D4_Night)
+1 OpAssign(O001_L1_Assembly_OP02)
-1 OpInShift(O001_L1_Assembly_OP02_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP02_D5_Morning)_:
+1 ShiftAssign(O001_L1_Assembly_D5_Morning)
+1 OpAssign(O001_L1_Assembly_OP02)
-1 OpInShift(O001_L1_Assembly_OP02_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP02_D5_Afternoon)_:
+1 ShiftAssign(O001_L1_Assembly_D5_Afternoon)
+1 OpAssign(O001_L1_Assembly_OP02)
-1 OpInShift(O001_L1_Assembly_OP02_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP02_D5_Night)_:
+1 ShiftAssign(O001_L1_Assembly_D5_Night)
+1 OpAssign(O001_L1_Assembly_OP02)
-1 OpInShift(O001_L1_Assembly_OP02_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP04_D1_Morning)_:
+1 ShiftAssign(O001_L1_Assembly_D1_Morning)
+1 OpAssign(O001_L1_Assembly_OP04)
-1 OpInShift(O001_L1_Assembly_OP04_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP04_D1_Afternoon)_:
+1 ShiftAssign(O001_L1_Assembly_D1_Afternoon)
+1 OpAssign(O001_L1_Assembly_OP04)
-1 OpInShift(O001_L1_Assembly_OP04_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP04_D1_Night)_:
+1 ShiftAssign(O001_L1_Assembly_D1_Night)
+1 OpAssign(O001_L1_Assembly_OP04)
-1 OpInShift(O001_L1_Assembly_OP04_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP04_D2_Morning)_:
+1 ShiftAssign(O001_L1_Assembly_D2_Morning)
+1 OpAssign(O001_L1_Assembly_OP04)
-1 OpInShift(O001_L1_Assembly_OP04_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP04_D2_Afternoon)_:
+1 ShiftAssign(O001_L1_Assembly_D2_Afternoon)
+1 OpAssign(O001_L1_Assembly_OP04)
-1 OpInShift(O001_L1_Assembly_OP04_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP04_D2_Night)_:
+1 ShiftAssign(O001_L1_Assembly_D2_Night)
+1 OpAssign(O001_L1_Assembly_OP04)
-1 OpInShift(O001_L1_Assembly_OP04_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP04_D3_Morning)_:
+1 ShiftAssign(O001_L1_Assembly_D3_Morning)
+1 OpAssign(O001_L1_Assembly_OP04)
-1 OpInShift(O001_L1_Assembly_OP04_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP04_D3_Afternoon)_:
+1 ShiftAssign(O001_L1_Assembly_D3_Afternoon)
+1 OpAssign(O001_L1_Assembly_OP04)
-1 OpInShift(O001_L1_Assembly_OP04_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP04_D3_Night)_:
+1 ShiftAssign(O001_L1_Assembly_D3_Night)
+1 OpAssign(O001_L1_Assembly_OP04)
-1 OpInShift(O001_L1_Assembly_OP04_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP04_D4_Morning)_:
+1 ShiftAssign(O001_L1_Assembly_D4_Morning)
+1 OpAssign(O001_L1_Assembly_OP04)
-1 OpInShift(O001_L1_Assembly_OP04_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP04_D4_Afternoon)_:
+1 ShiftAssign(O001_L1_Assembly_D4_Afternoon)
+1 OpAssign(O001_L1_Assembly_OP04)
-1 OpInShift(O001_L1_Assembly_OP04_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP04_D4_Night)_:
+1 ShiftAssign(O001_L1_Assembly_D4_Night)
+1 OpAssign(O001_L1_Assembly_OP04)
-1 OpInShift(O001_L1_Assembly_OP04_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP04_D5_Morning)_:
+1 ShiftAssign(O001_L1_Assembly_D5_Morning)
+1 OpAssign(O001_L1_Assembly_OP04)
-1 OpInShift(O001_L1_Assembly_OP04_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP04_D5_Afternoon)_:
+1 ShiftAssign(O001_L1_Assembly_D5_Afternoon)
+1 OpAssign(O001_L1_Assembly_OP04)
-1 OpInShift(O001_L1_Assembly_OP04_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O001_L1_Assembly_OP04_D5_Night)_:
+1 ShiftAssign(O001_L1_Assembly_D5_Night)
+1 OpAssign(O001_L1_Assembly_OP04)
-1 OpInShift(O001_L1_Assembly_OP04_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP01_D1_Morning)_:
+1 ShiftAssign(O002_L1_Cutting_D1_Morning)
+1 OpAssign(O002_L1_Cutting_OP01)
-1 OpInShift(O002_L1_Cutting_OP01_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP01_D1_Afternoon)_:
+1 ShiftAssign(O002_L1_Cutting_D1_Afternoon)
+1 OpAssign(O002_L1_Cutting_OP01)
-1 OpInShift(O002_L1_Cutting_OP01_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP01_D1_Night)_:
+1 ShiftAssign(O002_L1_Cutting_D1_Night)
+1 OpAssign(O002_L1_Cutting_OP01)
-1 OpInShift(O002_L1_Cutting_OP01_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP01_D2_Morning)_:
+1 ShiftAssign(O002_L1_Cutting_D2_Morning)
+1 OpAssign(O002_L1_Cutting_OP01)
-1 OpInShift(O002_L1_Cutting_OP01_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP01_D2_Afternoon)_:
+1 ShiftAssign(O002_L1_Cutting_D2_Afternoon)
+1 OpAssign(O002_L1_Cutting_OP01)
-1 OpInShift(O002_L1_Cutting_OP01_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP01_D2_Night)_:
+1 ShiftAssign(O002_L1_Cutting_D2_Night)
+1 OpAssign(O002_L1_Cutting_OP01)
-1 OpInShift(O002_L1_Cutting_OP01_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP01_D3_Morning)_:
+1 ShiftAssign(O002_L1_Cutting_D3_Morning)
+1 OpAssign(O002_L1_Cutting_OP01)
-1 OpInShift(O002_L1_Cutting_OP01_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP01_D3_Afternoon)_:
+1 ShiftAssign(O002_L1_Cutting_D3_Afternoon)
+1 OpAssign(O002_L1_Cutting_OP01)
-1 OpInShift(O002_L1_Cutting_OP01_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP01_D3_Night)_:
+1 ShiftAssign(O002_L1_Cutting_D3_Night)
+1 OpAssign(O002_L1_Cutting_OP01)
-1 OpInShift(O002_L1_Cutting_OP01_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP01_D4_Morning)_:
+1 ShiftAssign(O002_L1_Cutting_D4_Morning)
+1 OpAssign(O002_L1_Cutting_OP01)
-1 OpInShift(O002_L1_Cutting_OP01_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP01_D4_Afternoon)_:
+1 ShiftAssign(O002_L1_Cutting_D4_Afternoon)
+1 OpAssign(O002_L1_Cutting_OP01)
-1 OpInShift(O002_L1_Cutting_OP01_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP01_D4_Night)_:
+1 ShiftAssign(O002_L1_Cutting_D4_Night)
+1 OpAssign(O002_L1_Cutting_OP01)
-1 OpInShift(O002_L1_Cutting_OP01_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP01_D5_Morning)_:
+1 ShiftAssign(O002_L1_Cutting_D5_Morning)
+1 OpAssign(O002_L1_Cutting_OP01)
-1 OpInShift(O002_L1_Cutting_OP01_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP01_D5_Afternoon)_:
+1 ShiftAssign(O002_L1_Cutting_D5_Afternoon)
+1 OpAssign(O002_L1_Cutting_OP01)
-1 OpInShift(O002_L1_Cutting_OP01_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP01_D5_Night)_:
+1 ShiftAssign(O002_L1_Cutting_D5_Night)
+1 OpAssign(O002_L1_Cutting_OP01)
-1 OpInShift(O002_L1_Cutting_OP01_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP03_D1_Morning)_:
+1 ShiftAssign(O002_L1_Cutting_D1_Morning)
+1 OpAssign(O002_L1_Cutting_OP03)
-1 OpInShift(O002_L1_Cutting_OP03_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP03_D1_Afternoon)_:
+1 ShiftAssign(O002_L1_Cutting_D1_Afternoon)
+1 OpAssign(O002_L1_Cutting_OP03)
-1 OpInShift(O002_L1_Cutting_OP03_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP03_D1_Night)_:
+1 ShiftAssign(O002_L1_Cutting_D1_Night)
+1 OpAssign(O002_L1_Cutting_OP03)
-1 OpInShift(O002_L1_Cutting_OP03_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP03_D2_Morning)_:
+1 ShiftAssign(O002_L1_Cutting_D2_Morning)
+1 OpAssign(O002_L1_Cutting_OP03)
-1 OpInShift(O002_L1_Cutting_OP03_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP03_D2_Afternoon)_:
+1 ShiftAssign(O002_L1_Cutting_D2_Afternoon)
+1 OpAssign(O002_L1_Cutting_OP03)
-1 OpInShift(O002_L1_Cutting_OP03_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP03_D2_Night)_:
+1 ShiftAssign(O002_L1_Cutting_D2_Night)
+1 OpAssign(O002_L1_Cutting_OP03)
-1 OpInShift(O002_L1_Cutting_OP03_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP03_D3_Morning)_:
+1 ShiftAssign(O002_L1_Cutting_D3_Morning)
+1 OpAssign(O002_L1_Cutting_OP03)
-1 OpInShift(O002_L1_Cutting_OP03_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP03_D3_Afternoon)_:
+1 ShiftAssign(O002_L1_Cutting_D3_Afternoon)
+1 OpAssign(O002_L1_Cutting_OP03)
-1 OpInShift(O002_L1_Cutting_OP03_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP03_D3_Night)_:
+1 ShiftAssign(O002_L1_Cutting_D3_Night)
+1 OpAssign(O002_L1_Cutting_OP03)
-1 OpInShift(O002_L1_Cutting_OP03_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP03_D4_Morning)_:
+1 ShiftAssign(O002_L1_Cutting_D4_Morning)
+1 OpAssign(O002_L1_Cutting_OP03)
-1 OpInShift(O002_L1_Cutting_OP03_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP03_D4_Afternoon)_:
+1 ShiftAssign(O002_L1_Cutting_D4_Afternoon)
+1 OpAssign(O002_L1_Cutting_OP03)
-1 OpInShift(O002_L1_Cutting_OP03_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP03_D4_Night)_:
+1 ShiftAssign(O002_L1_Cutting_D4_Night)
+1 OpAssign(O002_L1_Cutting_OP03)
-1 OpInShift(O002_L1_Cutting_OP03_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP03_D5_Morning)_:
+1 ShiftAssign(O002_L1_Cutting_D5_Morning)
+1 OpAssign(O002_L1_Cutting_OP03)
-1 OpInShift(O002_L1_Cutting_OP03_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP03_D5_Afternoon)_:
+1 ShiftAssign(O002_L1_Cutting_D5_Afternoon)
+1 OpAssign(O002_L1_Cutting_OP03)
-1 OpInShift(O002_L1_Cutting_OP03_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP03_D5_Night)_:
+1 ShiftAssign(O002_L1_Cutting_D5_Night)
+1 OpAssign(O002_L1_Cutting_OP03)
-1 OpInShift(O002_L1_Cutting_OP03_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP04_D1_Morning)_:
+1 ShiftAssign(O002_L1_Cutting_D1_Morning)
+1 OpAssign(O002_L1_Cutting_OP04)
-1 OpInShift(O002_L1_Cutting_OP04_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP04_D1_Afternoon)_:
+1 ShiftAssign(O002_L1_Cutting_D1_Afternoon)
+1 OpAssign(O002_L1_Cutting_OP04)
-1 OpInShift(O002_L1_Cutting_OP04_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP04_D1_Night)_:
+1 ShiftAssign(O002_L1_Cutting_D1_Night)
+1 OpAssign(O002_L1_Cutting_OP04)
-1 OpInShift(O002_L1_Cutting_OP04_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP04_D2_Morning)_:
+1 ShiftAssign(O002_L1_Cutting_D2_Morning)
+1 OpAssign(O002_L1_Cutting_OP04)
-1 OpInShift(O002_L1_Cutting_OP04_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP04_D2_Afternoon)_:
+1 ShiftAssign(O002_L1_Cutting_D2_Afternoon)
+1 OpAssign(O002_L1_Cutting_OP04)
-1 OpInShift(O002_L1_Cutting_OP04_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP04_D2_Night)_:
+1 ShiftAssign(O002_L1_Cutting_D2_Night)
+1 OpAssign(O002_L1_Cutting_OP04)
-1 OpInShift(O002_L1_Cutting_OP04_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP04_D3_Morning)_:
+1 ShiftAssign(O002_L1_Cutting_D3_Morning)
+1 OpAssign(O002_L1_Cutting_OP04)
-1 OpInShift(O002_L1_Cutting_OP04_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP04_D3_Afternoon)_:
+1 ShiftAssign(O002_L1_Cutting_D3_Afternoon)
+1 OpAssign(O002_L1_Cutting_OP04)
-1 OpInShift(O002_L1_Cutting_OP04_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP04_D3_Night)_:
+1 ShiftAssign(O002_L1_Cutting_D3_Night)
+1 OpAssign(O002_L1_Cutting_OP04)
-1 OpInShift(O002_L1_Cutting_OP04_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP04_D4_Morning)_:
+1 ShiftAssign(O002_L1_Cutting_D4_Morning)
+1 OpAssign(O002_L1_Cutting_OP04)
-1 OpInShift(O002_L1_Cutting_OP04_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP04_D4_Afternoon)_:
+1 ShiftAssign(O002_L1_Cutting_D4_Afternoon)
+1 OpAssign(O002_L1_Cutting_OP04)
-1 OpInShift(O002_L1_Cutting_OP04_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP04_D4_Night)_:
+1 ShiftAssign(O002_L1_Cutting_D4_Night)
+1 OpAssign(O002_L1_Cutting_OP04)
-1 OpInShift(O002_L1_Cutting_OP04_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP04_D5_Morning)_:
+1 ShiftAssign(O002_L1_Cutting_D5_Morning)
+1 OpAssign(O002_L1_Cutting_OP04)
-1 OpInShift(O002_L1_Cutting_OP04_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP04_D5_Afternoon)_:
+1 ShiftAssign(O002_L1_Cutting_D5_Afternoon)
+1 OpAssign(O002_L1_Cutting_OP04)
-1 OpInShift(O002_L1_Cutting_OP04_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Cutting_OP04_D5_Night)_:
+1 ShiftAssign(O002_L1_Cutting_D5_Night)
+1 OpAssign(O002_L1_Cutting_OP04)
-1 OpInShift(O002_L1_Cutting_OP04_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP01_D1_Morning)_:
+1 ShiftAssign(O002_L1_Assembly_D1_Morning)
+1 OpAssign(O002_L1_Assembly_OP01)
-1 OpInShift(O002_L1_Assembly_OP01_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP01_D1_Afternoon)_:
+1 ShiftAssign(O002_L1_Assembly_D1_Afternoon)
+1 OpAssign(O002_L1_Assembly_OP01)
-1 OpInShift(O002_L1_Assembly_OP01_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP01_D1_Night)_:
+1 ShiftAssign(O002_L1_Assembly_D1_Night)
+1 OpAssign(O002_L1_Assembly_OP01)
-1 OpInShift(O002_L1_Assembly_OP01_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP01_D2_Morning)_:
+1 ShiftAssign(O002_L1_Assembly_D2_Morning)
+1 OpAssign(O002_L1_Assembly_OP01)
-1 OpInShift(O002_L1_Assembly_OP01_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP01_D2_Afternoon)_:
+1 ShiftAssign(O002_L1_Assembly_D2_Afternoon)
+1 OpAssign(O002_L1_Assembly_OP01)
-1 OpInShift(O002_L1_Assembly_OP01_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP01_D2_Night)_:
+1 ShiftAssign(O002_L1_Assembly_D2_Night)
+1 OpAssign(O002_L1_Assembly_OP01)
-1 OpInShift(O002_L1_Assembly_OP01_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP01_D3_Morning)_:
+1 ShiftAssign(O002_L1_Assembly_D3_Morning)
+1 OpAssign(O002_L1_Assembly_OP01)
-1 OpInShift(O002_L1_Assembly_OP01_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP01_D3_Afternoon)_:
+1 ShiftAssign(O002_L1_Assembly_D3_Afternoon)
+1 OpAssign(O002_L1_Assembly_OP01)
-1 OpInShift(O002_L1_Assembly_OP01_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP01_D3_Night)_:
+1 ShiftAssign(O002_L1_Assembly_D3_Night)
+1 OpAssign(O002_L1_Assembly_OP01)
-1 OpInShift(O002_L1_Assembly_OP01_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP01_D4_Morning)_:
+1 ShiftAssign(O002_L1_Assembly_D4_Morning)
+1 OpAssign(O002_L1_Assembly_OP01)
-1 OpInShift(O002_L1_Assembly_OP01_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP01_D4_Afternoon)_:
+1 ShiftAssign(O002_L1_Assembly_D4_Afternoon)
+1 OpAssign(O002_L1_Assembly_OP01)
-1 OpInShift(O002_L1_Assembly_OP01_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP01_D4_Night)_:
+1 ShiftAssign(O002_L1_Assembly_D4_Night)
+1 OpAssign(O002_L1_Assembly_OP01)
-1 OpInShift(O002_L1_Assembly_OP01_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP01_D5_Morning)_:
+1 ShiftAssign(O002_L1_Assembly_D5_Morning)
+1 OpAssign(O002_L1_Assembly_OP01)
-1 OpInShift(O002_L1_Assembly_OP01_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP01_D5_Afternoon)_:
+1 ShiftAssign(O002_L1_Assembly_D5_Afternoon)
+1 OpAssign(O002_L1_Assembly_OP01)
-1 OpInShift(O002_L1_Assembly_OP01_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP01_D5_Night)_:
+1 ShiftAssign(O002_L1_Assembly_D5_Night)
+1 OpAssign(O002_L1_Assembly_OP01)
-1 OpInShift(O002_L1_Assembly_OP01_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP02_D1_Morning)_:
+1 ShiftAssign(O002_L1_Assembly_D1_Morning)
+1 OpAssign(O002_L1_Assembly_OP02)
-1 OpInShift(O002_L1_Assembly_OP02_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP02_D1_Afternoon)_:
+1 ShiftAssign(O002_L1_Assembly_D1_Afternoon)
+1 OpAssign(O002_L1_Assembly_OP02)
-1 OpInShift(O002_L1_Assembly_OP02_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP02_D1_Night)_:
+1 ShiftAssign(O002_L1_Assembly_D1_Night)
+1 OpAssign(O002_L1_Assembly_OP02)
-1 OpInShift(O002_L1_Assembly_OP02_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP02_D2_Morning)_:
+1 ShiftAssign(O002_L1_Assembly_D2_Morning)
+1 OpAssign(O002_L1_Assembly_OP02)
-1 OpInShift(O002_L1_Assembly_OP02_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP02_D2_Afternoon)_:
+1 ShiftAssign(O002_L1_Assembly_D2_Afternoon)
+1 OpAssign(O002_L1_Assembly_OP02)
-1 OpInShift(O002_L1_Assembly_OP02_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP02_D2_Night)_:
+1 ShiftAssign(O002_L1_Assembly_D2_Night)
+1 OpAssign(O002_L1_Assembly_OP02)
-1 OpInShift(O002_L1_Assembly_OP02_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP02_D3_Morning)_:
+1 ShiftAssign(O002_L1_Assembly_D3_Morning)
+1 OpAssign(O002_L1_Assembly_OP02)
-1 OpInShift(O002_L1_Assembly_OP02_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP02_D3_Afternoon)_:
+1 ShiftAssign(O002_L1_Assembly_D3_Afternoon)
+1 OpAssign(O002_L1_Assembly_OP02)
-1 OpInShift(O002_L1_Assembly_OP02_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP02_D3_Night)_:
+1 ShiftAssign(O002_L1_Assembly_D3_Night)
+1 OpAssign(O002_L1_Assembly_OP02)
-1 OpInShift(O002_L1_Assembly_OP02_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP02_D4_Morning)_:
+1 ShiftAssign(O002_L1_Assembly_D4_Morning)
+1 OpAssign(O002_L1_Assembly_OP02)
-1 OpInShift(O002_L1_Assembly_OP02_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP02_D4_Afternoon)_:
+1 ShiftAssign(O002_L1_Assembly_D4_Afternoon)
+1 OpAssign(O002_L1_Assembly_OP02)
-1 OpInShift(O002_L1_Assembly_OP02_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP02_D4_Night)_:
+1 ShiftAssign(O002_L1_Assembly_D4_Night)
+1 OpAssign(O002_L1_Assembly_OP02)
-1 OpInShift(O002_L1_Assembly_OP02_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP02_D5_Morning)_:
+1 ShiftAssign(O002_L1_Assembly_D5_Morning)
+1 OpAssign(O002_L1_Assembly_OP02)
-1 OpInShift(O002_L1_Assembly_OP02_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP02_D5_Afternoon)_:
+1 ShiftAssign(O002_L1_Assembly_D5_Afternoon)
+1 OpAssign(O002_L1_Assembly_OP02)
-1 OpInShift(O002_L1_Assembly_OP02_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP02_D5_Night)_:
+1 ShiftAssign(O002_L1_Assembly_D5_Night)
+1 OpAssign(O002_L1_Assembly_OP02)
-1 OpInShift(O002_L1_Assembly_OP02_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP04_D1_Morning)_:
+1 ShiftAssign(O002_L1_Assembly_D1_Morning)
+1 OpAssign(O002_L1_Assembly_OP04)
-1 OpInShift(O002_L1_Assembly_OP04_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP04_D1_Afternoon)_:
+1 ShiftAssign(O002_L1_Assembly_D1_Afternoon)
+1 OpAssign(O002_L1_Assembly_OP04)
-1 OpInShift(O002_L1_Assembly_OP04_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP04_D1_Night)_:
+1 ShiftAssign(O002_L1_Assembly_D1_Night)
+1 OpAssign(O002_L1_Assembly_OP04)
-1 OpInShift(O002_L1_Assembly_OP04_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP04_D2_Morning)_:
+1 ShiftAssign(O002_L1_Assembly_D2_Morning)
+1 OpAssign(O002_L1_Assembly_OP04)
-1 OpInShift(O002_L1_Assembly_OP04_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP04_D2_Afternoon)_:
+1 ShiftAssign(O002_L1_Assembly_D2_Afternoon)
+1 OpAssign(O002_L1_Assembly_OP04)
-1 OpInShift(O002_L1_Assembly_OP04_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP04_D2_Night)_:
+1 ShiftAssign(O002_L1_Assembly_D2_Night)
+1 OpAssign(O002_L1_Assembly_OP04)
-1 OpInShift(O002_L1_Assembly_OP04_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP04_D3_Morning)_:
+1 ShiftAssign(O002_L1_Assembly_D3_Morning)
+1 OpAssign(O002_L1_Assembly_OP04)
-1 OpInShift(O002_L1_Assembly_OP04_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP04_D3_Afternoon)_:
+1 ShiftAssign(O002_L1_Assembly_D3_Afternoon)
+1 OpAssign(O002_L1_Assembly_OP04)
-1 OpInShift(O002_L1_Assembly_OP04_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP04_D3_Night)_:
+1 ShiftAssign(O002_L1_Assembly_D3_Night)
+1 OpAssign(O002_L1_Assembly_OP04)
-1 OpInShift(O002_L1_Assembly_OP04_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP04_D4_Morning)_:
+1 ShiftAssign(O002_L1_Assembly_D4_Morning)
+1 OpAssign(O002_L1_Assembly_OP04)
-1 OpInShift(O002_L1_Assembly_OP04_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP04_D4_Afternoon)_:
+1 ShiftAssign(O002_L1_Assembly_D4_Afternoon)
+1 OpAssign(O002_L1_Assembly_OP04)
-1 OpInShift(O002_L1_Assembly_OP04_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP04_D4_Night)_:
+1 ShiftAssign(O002_L1_Assembly_D4_Night)
+1 OpAssign(O002_L1_Assembly_OP04)
-1 OpInShift(O002_L1_Assembly_OP04_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP04_D5_Morning)_:
+1 ShiftAssign(O002_L1_Assembly_D5_Morning)
+1 OpAssign(O002_L1_Assembly_OP04)
-1 OpInShift(O002_L1_Assembly_OP04_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP04_D5_Afternoon)_:
+1 ShiftAssign(O002_L1_Assembly_D5_Afternoon)
+1 OpAssign(O002_L1_Assembly_OP04)
-1 OpInShift(O002_L1_Assembly_OP04_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O002_L1_Assembly_OP04_D5_Night)_:
+1 ShiftAssign(O002_L1_Assembly_D5_Night)
+1 OpAssign(O002_L1_Assembly_OP04)
-1 OpInShift(O002_L1_Assembly_OP04_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP01_D1_Morning)_:
+1 ShiftAssign(O003_L1_Cutting_D1_Morning)
+1 OpAssign(O003_L1_Cutting_OP01)
-1 OpInShift(O003_L1_Cutting_OP01_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP01_D1_Afternoon)_:
+1 ShiftAssign(O003_L1_Cutting_D1_Afternoon)
+1 OpAssign(O003_L1_Cutting_OP01)
-1 OpInShift(O003_L1_Cutting_OP01_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP01_D1_Night)_:
+1 ShiftAssign(O003_L1_Cutting_D1_Night)
+1 OpAssign(O003_L1_Cutting_OP01)
-1 OpInShift(O003_L1_Cutting_OP01_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP01_D2_Morning)_:
+1 ShiftAssign(O003_L1_Cutting_D2_Morning)
+1 OpAssign(O003_L1_Cutting_OP01)
-1 OpInShift(O003_L1_Cutting_OP01_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP01_D2_Afternoon)_:
+1 ShiftAssign(O003_L1_Cutting_D2_Afternoon)
+1 OpAssign(O003_L1_Cutting_OP01)
-1 OpInShift(O003_L1_Cutting_OP01_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP01_D2_Night)_:
+1 ShiftAssign(O003_L1_Cutting_D2_Night)
+1 OpAssign(O003_L1_Cutting_OP01)
-1 OpInShift(O003_L1_Cutting_OP01_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP01_D3_Morning)_:
+1 ShiftAssign(O003_L1_Cutting_D3_Morning)
+1 OpAssign(O003_L1_Cutting_OP01)
-1 OpInShift(O003_L1_Cutting_OP01_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP01_D3_Afternoon)_:
+1 ShiftAssign(O003_L1_Cutting_D3_Afternoon)
+1 OpAssign(O003_L1_Cutting_OP01)
-1 OpInShift(O003_L1_Cutting_OP01_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP01_D3_Night)_:
+1 ShiftAssign(O003_L1_Cutting_D3_Night)
+1 OpAssign(O003_L1_Cutting_OP01)
-1 OpInShift(O003_L1_Cutting_OP01_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP01_D4_Morning)_:
+1 ShiftAssign(O003_L1_Cutting_D4_Morning)
+1 OpAssign(O003_L1_Cutting_OP01)
-1 OpInShift(O003_L1_Cutting_OP01_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP01_D4_Afternoon)_:
+1 ShiftAssign(O003_L1_Cutting_D4_Afternoon)
+1 OpAssign(O003_L1_Cutting_OP01)
-1 OpInShift(O003_L1_Cutting_OP01_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP01_D4_Night)_:
+1 ShiftAssign(O003_L1_Cutting_D4_Night)
+1 OpAssign(O003_L1_Cutting_OP01)
-1 OpInShift(O003_L1_Cutting_OP01_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP01_D5_Morning)_:
+1 ShiftAssign(O003_L1_Cutting_D5_Morning)
+1 OpAssign(O003_L1_Cutting_OP01)
-1 OpInShift(O003_L1_Cutting_OP01_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP01_D5_Afternoon)_:
+1 ShiftAssign(O003_L1_Cutting_D5_Afternoon)
+1 OpAssign(O003_L1_Cutting_OP01)
-1 OpInShift(O003_L1_Cutting_OP01_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP01_D5_Night)_:
+1 ShiftAssign(O003_L1_Cutting_D5_Night)
+1 OpAssign(O003_L1_Cutting_OP01)
-1 OpInShift(O003_L1_Cutting_OP01_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP03_D1_Morning)_:
+1 ShiftAssign(O003_L1_Cutting_D1_Morning)
+1 OpAssign(O003_L1_Cutting_OP03)
-1 OpInShift(O003_L1_Cutting_OP03_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP03_D1_Afternoon)_:
+1 ShiftAssign(O003_L1_Cutting_D1_Afternoon)
+1 OpAssign(O003_L1_Cutting_OP03)
-1 OpInShift(O003_L1_Cutting_OP03_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP03_D1_Night)_:
+1 ShiftAssign(O003_L1_Cutting_D1_Night)
+1 OpAssign(O003_L1_Cutting_OP03)
-1 OpInShift(O003_L1_Cutting_OP03_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP03_D2_Morning)_:
+1 ShiftAssign(O003_L1_Cutting_D2_Morning)
+1 OpAssign(O003_L1_Cutting_OP03)
-1 OpInShift(O003_L1_Cutting_OP03_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP03_D2_Afternoon)_:
+1 ShiftAssign(O003_L1_Cutting_D2_Afternoon)
+1 OpAssign(O003_L1_Cutting_OP03)
-1 OpInShift(O003_L1_Cutting_OP03_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP03_D2_Night)_:
+1 ShiftAssign(O003_L1_Cutting_D2_Night)
+1 OpAssign(O003_L1_Cutting_OP03)
-1 OpInShift(O003_L1_Cutting_OP03_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP03_D3_Morning)_:
+1 ShiftAssign(O003_L1_Cutting_D3_Morning)
+1 OpAssign(O003_L1_Cutting_OP03)
-1 OpInShift(O003_L1_Cutting_OP03_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP03_D3_Afternoon)_:
+1 ShiftAssign(O003_L1_Cutting_D3_Afternoon)
+1 OpAssign(O003_L1_Cutting_OP03)
-1 OpInShift(O003_L1_Cutting_OP03_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP03_D3_Night)_:
+1 ShiftAssign(O003_L1_Cutting_D3_Night)
+1 OpAssign(O003_L1_Cutting_OP03)
-1 OpInShift(O003_L1_Cutting_OP03_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP03_D4_Morning)_:
+1 ShiftAssign(O003_L1_Cutting_D4_Morning)
+1 OpAssign(O003_L1_Cutting_OP03)
-1 OpInShift(O003_L1_Cutting_OP03_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP03_D4_Afternoon)_:
+1 ShiftAssign(O003_L1_Cutting_D4_Afternoon)
+1 OpAssign(O003_L1_Cutting_OP03)
-1 OpInShift(O003_L1_Cutting_OP03_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP03_D4_Night)_:
+1 ShiftAssign(O003_L1_Cutting_D4_Night)
+1 OpAssign(O003_L1_Cutting_OP03)
-1 OpInShift(O003_L1_Cutting_OP03_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP03_D5_Morning)_:
+1 ShiftAssign(O003_L1_Cutting_D5_Morning)
+1 OpAssign(O003_L1_Cutting_OP03)
-1 OpInShift(O003_L1_Cutting_OP03_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP03_D5_Afternoon)_:
+1 ShiftAssign(O003_L1_Cutting_D5_Afternoon)
+1 OpAssign(O003_L1_Cutting_OP03)
-1 OpInShift(O003_L1_Cutting_OP03_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP03_D5_Night)_:
+1 ShiftAssign(O003_L1_Cutting_D5_Night)
+1 OpAssign(O003_L1_Cutting_OP03)
-1 OpInShift(O003_L1_Cutting_OP03_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP04_D1_Morning)_:
+1 ShiftAssign(O003_L1_Cutting_D1_Morning)
+1 OpAssign(O003_L1_Cutting_OP04)
-1 OpInShift(O003_L1_Cutting_OP04_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP04_D1_Afternoon)_:
+1 ShiftAssign(O003_L1_Cutting_D1_Afternoon)
+1 OpAssign(O003_L1_Cutting_OP04)
-1 OpInShift(O003_L1_Cutting_OP04_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP04_D1_Night)_:
+1 ShiftAssign(O003_L1_Cutting_D1_Night)
+1 OpAssign(O003_L1_Cutting_OP04)
-1 OpInShift(O003_L1_Cutting_OP04_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP04_D2_Morning)_:
+1 ShiftAssign(O003_L1_Cutting_D2_Morning)
+1 OpAssign(O003_L1_Cutting_OP04)
-1 OpInShift(O003_L1_Cutting_OP04_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP04_D2_Afternoon)_:
+1 ShiftAssign(O003_L1_Cutting_D2_Afternoon)
+1 OpAssign(O003_L1_Cutting_OP04)
-1 OpInShift(O003_L1_Cutting_OP04_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP04_D2_Night)_:
+1 ShiftAssign(O003_L1_Cutting_D2_Night)
+1 OpAssign(O003_L1_Cutting_OP04)
-1 OpInShift(O003_L1_Cutting_OP04_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP04_D3_Morning)_:
+1 ShiftAssign(O003_L1_Cutting_D3_Morning)
+1 OpAssign(O003_L1_Cutting_OP04)
-1 OpInShift(O003_L1_Cutting_OP04_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP04_D3_Afternoon)_:
+1 ShiftAssign(O003_L1_Cutting_D3_Afternoon)
+1 OpAssign(O003_L1_Cutting_OP04)
-1 OpInShift(O003_L1_Cutting_OP04_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP04_D3_Night)_:
+1 ShiftAssign(O003_L1_Cutting_D3_Night)
+1 OpAssign(O003_L1_Cutting_OP04)
-1 OpInShift(O003_L1_Cutting_OP04_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP04_D4_Morning)_:
+1 ShiftAssign(O003_L1_Cutting_D4_Morning)
+1 OpAssign(O003_L1_Cutting_OP04)
-1 OpInShift(O003_L1_Cutting_OP04_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP04_D4_Afternoon)_:
+1 ShiftAssign(O003_L1_Cutting_D4_Afternoon)
+1 OpAssign(O003_L1_Cutting_OP04)
-1 OpInShift(O003_L1_Cutting_OP04_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP04_D4_Night)_:
+1 ShiftAssign(O003_L1_Cutting_D4_Night)
+1 OpAssign(O003_L1_Cutting_OP04)
-1 OpInShift(O003_L1_Cutting_OP04_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP04_D5_Morning)_:
+1 ShiftAssign(O003_L1_Cutting_D5_Morning)
+1 OpAssign(O003_L1_Cutting_OP04)
-1 OpInShift(O003_L1_Cutting_OP04_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP04_D5_Afternoon)_:
+1 ShiftAssign(O003_L1_Cutting_D5_Afternoon)
+1 OpAssign(O003_L1_Cutting_OP04)
-1 OpInShift(O003_L1_Cutting_OP04_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Cutting_OP04_D5_Night)_:
+1 ShiftAssign(O003_L1_Cutting_D5_Night)
+1 OpAssign(O003_L1_Cutting_OP04)
-1 OpInShift(O003_L1_Cutting_OP04_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP01_D1_Morning)_:
+1 ShiftAssign(O003_L1_Assembly_D1_Morning)
+1 OpAssign(O003_L1_Assembly_OP01)
-1 OpInShift(O003_L1_Assembly_OP01_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP01_D1_Afternoon)_:
+1 ShiftAssign(O003_L1_Assembly_D1_Afternoon)
+1 OpAssign(O003_L1_Assembly_OP01)
-1 OpInShift(O003_L1_Assembly_OP01_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP01_D1_Night)_:
+1 ShiftAssign(O003_L1_Assembly_D1_Night)
+1 OpAssign(O003_L1_Assembly_OP01)
-1 OpInShift(O003_L1_Assembly_OP01_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP01_D2_Morning)_:
+1 ShiftAssign(O003_L1_Assembly_D2_Morning)
+1 OpAssign(O003_L1_Assembly_OP01)
-1 OpInShift(O003_L1_Assembly_OP01_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP01_D2_Afternoon)_:
+1 ShiftAssign(O003_L1_Assembly_D2_Afternoon)
+1 OpAssign(O003_L1_Assembly_OP01)
-1 OpInShift(O003_L1_Assembly_OP01_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP01_D2_Night)_:
+1 ShiftAssign(O003_L1_Assembly_D2_Night)
+1 OpAssign(O003_L1_Assembly_OP01)
-1 OpInShift(O003_L1_Assembly_OP01_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP01_D3_Morning)_:
+1 ShiftAssign(O003_L1_Assembly_D3_Morning)
+1 OpAssign(O003_L1_Assembly_OP01)
-1 OpInShift(O003_L1_Assembly_OP01_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP01_D3_Afternoon)_:
+1 ShiftAssign(O003_L1_Assembly_D3_Afternoon)
+1 OpAssign(O003_L1_Assembly_OP01)
-1 OpInShift(O003_L1_Assembly_OP01_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP01_D3_Night)_:
+1 ShiftAssign(O003_L1_Assembly_D3_Night)
+1 OpAssign(O003_L1_Assembly_OP01)
-1 OpInShift(O003_L1_Assembly_OP01_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP01_D4_Morning)_:
+1 ShiftAssign(O003_L1_Assembly_D4_Morning)
+1 OpAssign(O003_L1_Assembly_OP01)
-1 OpInShift(O003_L1_Assembly_OP01_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP01_D4_Afternoon)_:
+1 ShiftAssign(O003_L1_Assembly_D4_Afternoon)
+1 OpAssign(O003_L1_Assembly_OP01)
-1 OpInShift(O003_L1_Assembly_OP01_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP01_D4_Night)_:
+1 ShiftAssign(O003_L1_Assembly_D4_Night)
+1 OpAssign(O003_L1_Assembly_OP01)
-1 OpInShift(O003_L1_Assembly_OP01_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP01_D5_Morning)_:
+1 ShiftAssign(O003_L1_Assembly_D5_Morning)
+1 OpAssign(O003_L1_Assembly_OP01)
-1 OpInShift(O003_L1_Assembly_OP01_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP01_D5_Afternoon)_:
+1 ShiftAssign(O003_L1_Assembly_D5_Afternoon)
+1 OpAssign(O003_L1_Assembly_OP01)
-1 OpInShift(O003_L1_Assembly_OP01_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP01_D5_Night)_:
+1 ShiftAssign(O003_L1_Assembly_D5_Night)
+1 OpAssign(O003_L1_Assembly_OP01)
-1 OpInShift(O003_L1_Assembly_OP01_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP02_D1_Morning)_:
+1 ShiftAssign(O003_L1_Assembly_D1_Morning)
+1 OpAssign(O003_L1_Assembly_OP02)
-1 OpInShift(O003_L1_Assembly_OP02_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP02_D1_Afternoon)_:
+1 ShiftAssign(O003_L1_Assembly_D1_Afternoon)
+1 OpAssign(O003_L1_Assembly_OP02)
-1 OpInShift(O003_L1_Assembly_OP02_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP02_D1_Night)_:
+1 ShiftAssign(O003_L1_Assembly_D1_Night)
+1 OpAssign(O003_L1_Assembly_OP02)
-1 OpInShift(O003_L1_Assembly_OP02_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP02_D2_Morning)_:
+1 ShiftAssign(O003_L1_Assembly_D2_Morning)
+1 OpAssign(O003_L1_Assembly_OP02)
-1 OpInShift(O003_L1_Assembly_OP02_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP02_D2_Afternoon)_:
+1 ShiftAssign(O003_L1_Assembly_D2_Afternoon)
+1 OpAssign(O003_L1_Assembly_OP02)
-1 OpInShift(O003_L1_Assembly_OP02_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP02_D2_Night)_:
+1 ShiftAssign(O003_L1_Assembly_D2_Night)
+1 OpAssign(O003_L1_Assembly_OP02)
-1 OpInShift(O003_L1_Assembly_OP02_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP02_D3_Morning)_:
+1 ShiftAssign(O003_L1_Assembly_D3_Morning)
+1 OpAssign(O003_L1_Assembly_OP02)
-1 OpInShift(O003_L1_Assembly_OP02_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP02_D3_Afternoon)_:
+1 ShiftAssign(O003_L1_Assembly_D3_Afternoon)
+1 OpAssign(O003_L1_Assembly_OP02)
-1 OpInShift(O003_L1_Assembly_OP02_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP02_D3_Night)_:
+1 ShiftAssign(O003_L1_Assembly_D3_Night)
+1 OpAssign(O003_L1_Assembly_OP02)
-1 OpInShift(O003_L1_Assembly_OP02_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP02_D4_Morning)_:
+1 ShiftAssign(O003_L1_Assembly_D4_Morning)
+1 OpAssign(O003_L1_Assembly_OP02)
-1 OpInShift(O003_L1_Assembly_OP02_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP02_D4_Afternoon)_:
+1 ShiftAssign(O003_L1_Assembly_D4_Afternoon)
+1 OpAssign(O003_L1_Assembly_OP02)
-1 OpInShift(O003_L1_Assembly_OP02_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP02_D4_Night)_:
+1 ShiftAssign(O003_L1_Assembly_D4_Night)
+1 OpAssign(O003_L1_Assembly_OP02)
-1 OpInShift(O003_L1_Assembly_OP02_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP02_D5_Morning)_:
+1 ShiftAssign(O003_L1_Assembly_D5_Morning)
+1 OpAssign(O003_L1_Assembly_OP02)
-1 OpInShift(O003_L1_Assembly_OP02_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP02_D5_Afternoon)_:
+1 ShiftAssign(O003_L1_Assembly_D5_Afternoon)
+1 OpAssign(O003_L1_Assembly_OP02)
-1 OpInShift(O003_L1_Assembly_OP02_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP02_D5_Night)_:
+1 ShiftAssign(O003_L1_Assembly_D5_Night)
+1 OpAssign(O003_L1_Assembly_OP02)
-1 OpInShift(O003_L1_Assembly_OP02_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP04_D1_Morning)_:
+1 ShiftAssign(O003_L1_Assembly_D1_Morning)
+1 OpAssign(O003_L1_Assembly_OP04)
-1 OpInShift(O003_L1_Assembly_OP04_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP04_D1_Afternoon)_:
+1 ShiftAssign(O003_L1_Assembly_D1_Afternoon)
+1 OpAssign(O003_L1_Assembly_OP04)
-1 OpInShift(O003_L1_Assembly_OP04_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP04_D1_Night)_:
+1 ShiftAssign(O003_L1_Assembly_D1_Night)
+1 OpAssign(O003_L1_Assembly_OP04)
-1 OpInShift(O003_L1_Assembly_OP04_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP04_D2_Morning)_:
+1 ShiftAssign(O003_L1_Assembly_D2_Morning)
+1 OpAssign(O003_L1_Assembly_OP04)
-1 OpInShift(O003_L1_Assembly_OP04_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP04_D2_Afternoon)_:
+1 ShiftAssign(O003_L1_Assembly_D2_Afternoon)
+1 OpAssign(O003_L1_Assembly_OP04)
-1 OpInShift(O003_L1_Assembly_OP04_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP04_D2_Night)_:
+1 ShiftAssign(O003_L1_Assembly_D2_Night)
+1 OpAssign(O003_L1_Assembly_OP04)
-1 OpInShift(O003_L1_Assembly_OP04_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP04_D3_Morning)_:
+1 ShiftAssign(O003_L1_Assembly_D3_Morning)
+1 OpAssign(O003_L1_Assembly_OP04)
-1 OpInShift(O003_L1_Assembly_OP04_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP04_D3_Afternoon)_:
+1 ShiftAssign(O003_L1_Assembly_D3_Afternoon)
+1 OpAssign(O003_L1_Assembly_OP04)
-1 OpInShift(O003_L1_Assembly_OP04_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP04_D3_Night)_:
+1 ShiftAssign(O003_L1_Assembly_D3_Night)
+1 OpAssign(O003_L1_Assembly_OP04)
-1 OpInShift(O003_L1_Assembly_OP04_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP04_D4_Morning)_:
+1 ShiftAssign(O003_L1_Assembly_D4_Morning)
+1 OpAssign(O003_L1_Assembly_OP04)
-1 OpInShift(O003_L1_Assembly_OP04_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP04_D4_Afternoon)_:
+1 ShiftAssign(O003_L1_Assembly_D4_Afternoon)
+1 OpAssign(O003_L1_Assembly_OP04)
-1 OpInShift(O003_L1_Assembly_OP04_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP04_D4_Night)_:
+1 ShiftAssign(O003_L1_Assembly_D4_Night)
+1 OpAssign(O003_L1_Assembly_OP04)
-1 OpInShift(O003_L1_Assembly_OP04_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP04_D5_Morning)_:
+1 ShiftAssign(O003_L1_Assembly_D5_Morning)
+1 OpAssign(O003_L1_Assembly_OP04)
-1 OpInShift(O003_L1_Assembly_OP04_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP04_D5_Afternoon)_:
+1 ShiftAssign(O003_L1_Assembly_D5_Afternoon)
+1 OpAssign(O003_L1_Assembly_OP04)
-1 OpInShift(O003_L1_Assembly_OP04_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O003_L1_Assembly_OP04_D5_Night)_:
+1 ShiftAssign(O003_L1_Assembly_D5_Night)
+1 OpAssign(O003_L1_Assembly_OP04)
-1 OpInShift(O003_L1_Assembly_OP04_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP01_D1_Morning)_:
+1 ShiftAssign(O004_L1_Cutting_D1_Morning)
+1 OpAssign(O004_L1_Cutting_OP01)
-1 OpInShift(O004_L1_Cutting_OP01_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP01_D1_Afternoon)_:
+1 ShiftAssign(O004_L1_Cutting_D1_Afternoon)
+1 OpAssign(O004_L1_Cutting_OP01)
-1 OpInShift(O004_L1_Cutting_OP01_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP01_D1_Night)_:
+1 ShiftAssign(O004_L1_Cutting_D1_Night)
+1 OpAssign(O004_L1_Cutting_OP01)
-1 OpInShift(O004_L1_Cutting_OP01_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP01_D2_Morning)_:
+1 ShiftAssign(O004_L1_Cutting_D2_Morning)
+1 OpAssign(O004_L1_Cutting_OP01)
-1 OpInShift(O004_L1_Cutting_OP01_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP01_D2_Afternoon)_:
+1 ShiftAssign(O004_L1_Cutting_D2_Afternoon)
+1 OpAssign(O004_L1_Cutting_OP01)
-1 OpInShift(O004_L1_Cutting_OP01_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP01_D2_Night)_:
+1 ShiftAssign(O004_L1_Cutting_D2_Night)
+1 OpAssign(O004_L1_Cutting_OP01)
-1 OpInShift(O004_L1_Cutting_OP01_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP01_D3_Morning)_:
+1 ShiftAssign(O004_L1_Cutting_D3_Morning)
+1 OpAssign(O004_L1_Cutting_OP01)
-1 OpInShift(O004_L1_Cutting_OP01_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP01_D3_Afternoon)_:
+1 ShiftAssign(O004_L1_Cutting_D3_Afternoon)
+1 OpAssign(O004_L1_Cutting_OP01)
-1 OpInShift(O004_L1_Cutting_OP01_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP01_D3_Night)_:
+1 ShiftAssign(O004_L1_Cutting_D3_Night)
+1 OpAssign(O004_L1_Cutting_OP01)
-1 OpInShift(O004_L1_Cutting_OP01_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP01_D4_Morning)_:
+1 ShiftAssign(O004_L1_Cutting_D4_Morning)
+1 OpAssign(O004_L1_Cutting_OP01)
-1 OpInShift(O004_L1_Cutting_OP01_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP01_D4_Afternoon)_:
+1 ShiftAssign(O004_L1_Cutting_D4_Afternoon)
+1 OpAssign(O004_L1_Cutting_OP01)
-1 OpInShift(O004_L1_Cutting_OP01_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP01_D4_Night)_:
+1 ShiftAssign(O004_L1_Cutting_D4_Night)
+1 OpAssign(O004_L1_Cutting_OP01)
-1 OpInShift(O004_L1_Cutting_OP01_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP01_D5_Morning)_:
+1 ShiftAssign(O004_L1_Cutting_D5_Morning)
+1 OpAssign(O004_L1_Cutting_OP01)
-1 OpInShift(O004_L1_Cutting_OP01_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP01_D5_Afternoon)_:
+1 ShiftAssign(O004_L1_Cutting_D5_Afternoon)
+1 OpAssign(O004_L1_Cutting_OP01)
-1 OpInShift(O004_L1_Cutting_OP01_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP01_D5_Night)_:
+1 ShiftAssign(O004_L1_Cutting_D5_Night)
+1 OpAssign(O004_L1_Cutting_OP01)
-1 OpInShift(O004_L1_Cutting_OP01_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP03_D1_Morning)_:
+1 ShiftAssign(O004_L1_Cutting_D1_Morning)
+1 OpAssign(O004_L1_Cutting_OP03)
-1 OpInShift(O004_L1_Cutting_OP03_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP03_D1_Afternoon)_:
+1 ShiftAssign(O004_L1_Cutting_D1_Afternoon)
+1 OpAssign(O004_L1_Cutting_OP03)
-1 OpInShift(O004_L1_Cutting_OP03_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP03_D1_Night)_:
+1 ShiftAssign(O004_L1_Cutting_D1_Night)
+1 OpAssign(O004_L1_Cutting_OP03)
-1 OpInShift(O004_L1_Cutting_OP03_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP03_D2_Morning)_:
+1 ShiftAssign(O004_L1_Cutting_D2_Morning)
+1 OpAssign(O004_L1_Cutting_OP03)
-1 OpInShift(O004_L1_Cutting_OP03_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP03_D2_Afternoon)_:
+1 ShiftAssign(O004_L1_Cutting_D2_Afternoon)
+1 OpAssign(O004_L1_Cutting_OP03)
-1 OpInShift(O004_L1_Cutting_OP03_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP03_D2_Night)_:
+1 ShiftAssign(O004_L1_Cutting_D2_Night)
+1 OpAssign(O004_L1_Cutting_OP03)
-1 OpInShift(O004_L1_Cutting_OP03_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP03_D3_Morning)_:
+1 ShiftAssign(O004_L1_Cutting_D3_Morning)
+1 OpAssign(O004_L1_Cutting_OP03)
-1 OpInShift(O004_L1_Cutting_OP03_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP03_D3_Afternoon)_:
+1 ShiftAssign(O004_L1_Cutting_D3_Afternoon)
+1 OpAssign(O004_L1_Cutting_OP03)
-1 OpInShift(O004_L1_Cutting_OP03_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP03_D3_Night)_:
+1 ShiftAssign(O004_L1_Cutting_D3_Night)
+1 OpAssign(O004_L1_Cutting_OP03)
-1 OpInShift(O004_L1_Cutting_OP03_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP03_D4_Morning)_:
+1 ShiftAssign(O004_L1_Cutting_D4_Morning)
+1 OpAssign(O004_L1_Cutting_OP03)
-1 OpInShift(O004_L1_Cutting_OP03_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP03_D4_Afternoon)_:
+1 ShiftAssign(O004_L1_Cutting_D4_Afternoon)
+1 OpAssign(O004_L1_Cutting_OP03)
-1 OpInShift(O004_L1_Cutting_OP03_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP03_D4_Night)_:
+1 ShiftAssign(O004_L1_Cutting_D4_Night)
+1 OpAssign(O004_L1_Cutting_OP03)
-1 OpInShift(O004_L1_Cutting_OP03_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP03_D5_Morning)_:
+1 ShiftAssign(O004_L1_Cutting_D5_Morning)
+1 OpAssign(O004_L1_Cutting_OP03)
-1 OpInShift(O004_L1_Cutting_OP03_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP03_D5_Afternoon)_:
+1 ShiftAssign(O004_L1_Cutting_D5_Afternoon)
+1 OpAssign(O004_L1_Cutting_OP03)
-1 OpInShift(O004_L1_Cutting_OP03_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP03_D5_Night)_:
+1 ShiftAssign(O004_L1_Cutting_D5_Night)
+1 OpAssign(O004_L1_Cutting_OP03)
-1 OpInShift(O004_L1_Cutting_OP03_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP04_D1_Morning)_:
+1 ShiftAssign(O004_L1_Cutting_D1_Morning)
+1 OpAssign(O004_L1_Cutting_OP04)
-1 OpInShift(O004_L1_Cutting_OP04_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP04_D1_Afternoon)_:
+1 ShiftAssign(O004_L1_Cutting_D1_Afternoon)
+1 OpAssign(O004_L1_Cutting_OP04)
-1 OpInShift(O004_L1_Cutting_OP04_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP04_D1_Night)_:
+1 ShiftAssign(O004_L1_Cutting_D1_Night)
+1 OpAssign(O004_L1_Cutting_OP04)
-1 OpInShift(O004_L1_Cutting_OP04_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP04_D2_Morning)_:
+1 ShiftAssign(O004_L1_Cutting_D2_Morning)
+1 OpAssign(O004_L1_Cutting_OP04)
-1 OpInShift(O004_L1_Cutting_OP04_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP04_D2_Afternoon)_:
+1 ShiftAssign(O004_L1_Cutting_D2_Afternoon)
+1 OpAssign(O004_L1_Cutting_OP04)
-1 OpInShift(O004_L1_Cutting_OP04_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP04_D2_Night)_:
+1 ShiftAssign(O004_L1_Cutting_D2_Night)
+1 OpAssign(O004_L1_Cutting_OP04)
-1 OpInShift(O004_L1_Cutting_OP04_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP04_D3_Morning)_:
+1 ShiftAssign(O004_L1_Cutting_D3_Morning)
+1 OpAssign(O004_L1_Cutting_OP04)
-1 OpInShift(O004_L1_Cutting_OP04_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP04_D3_Afternoon)_:
+1 ShiftAssign(O004_L1_Cutting_D3_Afternoon)
+1 OpAssign(O004_L1_Cutting_OP04)
-1 OpInShift(O004_L1_Cutting_OP04_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP04_D3_Night)_:
+1 ShiftAssign(O004_L1_Cutting_D3_Night)
+1 OpAssign(O004_L1_Cutting_OP04)
-1 OpInShift(O004_L1_Cutting_OP04_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP04_D4_Morning)_:
+1 ShiftAssign(O004_L1_Cutting_D4_Morning)
+1 OpAssign(O004_L1_Cutting_OP04)
-1 OpInShift(O004_L1_Cutting_OP04_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP04_D4_Afternoon)_:
+1 ShiftAssign(O004_L1_Cutting_D4_Afternoon)
+1 OpAssign(O004_L1_Cutting_OP04)
-1 OpInShift(O004_L1_Cutting_OP04_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP04_D4_Night)_:
+1 ShiftAssign(O004_L1_Cutting_D4_Night)
+1 OpAssign(O004_L1_Cutting_OP04)
-1 OpInShift(O004_L1_Cutting_OP04_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP04_D5_Morning)_:
+1 ShiftAssign(O004_L1_Cutting_D5_Morning)
+1 OpAssign(O004_L1_Cutting_OP04)
-1 OpInShift(O004_L1_Cutting_OP04_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP04_D5_Afternoon)_:
+1 ShiftAssign(O004_L1_Cutting_D5_Afternoon)
+1 OpAssign(O004_L1_Cutting_OP04)
-1 OpInShift(O004_L1_Cutting_OP04_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Cutting_OP04_D5_Night)_:
+1 ShiftAssign(O004_L1_Cutting_D5_Night)
+1 OpAssign(O004_L1_Cutting_OP04)
-1 OpInShift(O004_L1_Cutting_OP04_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP01_D1_Morning)_:
+1 ShiftAssign(O004_L1_Assembly_D1_Morning)
+1 OpAssign(O004_L1_Assembly_OP01)
-1 OpInShift(O004_L1_Assembly_OP01_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP01_D1_Afternoon)_:
+1 ShiftAssign(O004_L1_Assembly_D1_Afternoon)
+1 OpAssign(O004_L1_Assembly_OP01)
-1 OpInShift(O004_L1_Assembly_OP01_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP01_D1_Night)_:
+1 ShiftAssign(O004_L1_Assembly_D1_Night)
+1 OpAssign(O004_L1_Assembly_OP01)
-1 OpInShift(O004_L1_Assembly_OP01_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP01_D2_Morning)_:
+1 ShiftAssign(O004_L1_Assembly_D2_Morning)
+1 OpAssign(O004_L1_Assembly_OP01)
-1 OpInShift(O004_L1_Assembly_OP01_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP01_D2_Afternoon)_:
+1 ShiftAssign(O004_L1_Assembly_D2_Afternoon)
+1 OpAssign(O004_L1_Assembly_OP01)
-1 OpInShift(O004_L1_Assembly_OP01_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP01_D2_Night)_:
+1 ShiftAssign(O004_L1_Assembly_D2_Night)
+1 OpAssign(O004_L1_Assembly_OP01)
-1 OpInShift(O004_L1_Assembly_OP01_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP01_D3_Morning)_:
+1 ShiftAssign(O004_L1_Assembly_D3_Morning)
+1 OpAssign(O004_L1_Assembly_OP01)
-1 OpInShift(O004_L1_Assembly_OP01_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP01_D3_Afternoon)_:
+1 ShiftAssign(O004_L1_Assembly_D3_Afternoon)
+1 OpAssign(O004_L1_Assembly_OP01)
-1 OpInShift(O004_L1_Assembly_OP01_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP01_D3_Night)_:
+1 ShiftAssign(O004_L1_Assembly_D3_Night)
+1 OpAssign(O004_L1_Assembly_OP01)
-1 OpInShift(O004_L1_Assembly_OP01_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP01_D4_Morning)_:
+1 ShiftAssign(O004_L1_Assembly_D4_Morning)
+1 OpAssign(O004_L1_Assembly_OP01)
-1 OpInShift(O004_L1_Assembly_OP01_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP01_D4_Afternoon)_:
+1 ShiftAssign(O004_L1_Assembly_D4_Afternoon)
+1 OpAssign(O004_L1_Assembly_OP01)
-1 OpInShift(O004_L1_Assembly_OP01_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP01_D4_Night)_:
+1 ShiftAssign(O004_L1_Assembly_D4_Night)
+1 OpAssign(O004_L1_Assembly_OP01)
-1 OpInShift(O004_L1_Assembly_OP01_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP01_D5_Morning)_:
+1 ShiftAssign(O004_L1_Assembly_D5_Morning)
+1 OpAssign(O004_L1_Assembly_OP01)
-1 OpInShift(O004_L1_Assembly_OP01_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP01_D5_Afternoon)_:
+1 ShiftAssign(O004_L1_Assembly_D5_Afternoon)
+1 OpAssign(O004_L1_Assembly_OP01)
-1 OpInShift(O004_L1_Assembly_OP01_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP01_D5_Night)_:
+1 ShiftAssign(O004_L1_Assembly_D5_Night)
+1 OpAssign(O004_L1_Assembly_OP01)
-1 OpInShift(O004_L1_Assembly_OP01_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP02_D1_Morning)_:
+1 ShiftAssign(O004_L1_Assembly_D1_Morning)
+1 OpAssign(O004_L1_Assembly_OP02)
-1 OpInShift(O004_L1_Assembly_OP02_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP02_D1_Afternoon)_:
+1 ShiftAssign(O004_L1_Assembly_D1_Afternoon)
+1 OpAssign(O004_L1_Assembly_OP02)
-1 OpInShift(O004_L1_Assembly_OP02_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP02_D1_Night)_:
+1 ShiftAssign(O004_L1_Assembly_D1_Night)
+1 OpAssign(O004_L1_Assembly_OP02)
-1 OpInShift(O004_L1_Assembly_OP02_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP02_D2_Morning)_:
+1 ShiftAssign(O004_L1_Assembly_D2_Morning)
+1 OpAssign(O004_L1_Assembly_OP02)
-1 OpInShift(O004_L1_Assembly_OP02_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP02_D2_Afternoon)_:
+1 ShiftAssign(O004_L1_Assembly_D2_Afternoon)
+1 OpAssign(O004_L1_Assembly_OP02)
-1 OpInShift(O004_L1_Assembly_OP02_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP02_D2_Night)_:
+1 ShiftAssign(O004_L1_Assembly_D2_Night)
+1 OpAssign(O004_L1_Assembly_OP02)
-1 OpInShift(O004_L1_Assembly_OP02_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP02_D3_Morning)_:
+1 ShiftAssign(O004_L1_Assembly_D3_Morning)
+1 OpAssign(O004_L1_Assembly_OP02)
-1 OpInShift(O004_L1_Assembly_OP02_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP02_D3_Afternoon)_:
+1 ShiftAssign(O004_L1_Assembly_D3_Afternoon)
+1 OpAssign(O004_L1_Assembly_OP02)
-1 OpInShift(O004_L1_Assembly_OP02_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP02_D3_Night)_:
+1 ShiftAssign(O004_L1_Assembly_D3_Night)
+1 OpAssign(O004_L1_Assembly_OP02)
-1 OpInShift(O004_L1_Assembly_OP02_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP02_D4_Morning)_:
+1 ShiftAssign(O004_L1_Assembly_D4_Morning)
+1 OpAssign(O004_L1_Assembly_OP02)
-1 OpInShift(O004_L1_Assembly_OP02_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP02_D4_Afternoon)_:
+1 ShiftAssign(O004_L1_Assembly_D4_Afternoon)
+1 OpAssign(O004_L1_Assembly_OP02)
-1 OpInShift(O004_L1_Assembly_OP02_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP02_D4_Night)_:
+1 ShiftAssign(O004_L1_Assembly_D4_Night)
+1 OpAssign(O004_L1_Assembly_OP02)
-1 OpInShift(O004_L1_Assembly_OP02_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP02_D5_Morning)_:
+1 ShiftAssign(O004_L1_Assembly_D5_Morning)
+1 OpAssign(O004_L1_Assembly_OP02)
-1 OpInShift(O004_L1_Assembly_OP02_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP02_D5_Afternoon)_:
+1 ShiftAssign(O004_L1_Assembly_D5_Afternoon)
+1 OpAssign(O004_L1_Assembly_OP02)
-1 OpInShift(O004_L1_Assembly_OP02_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP02_D5_Night)_:
+1 ShiftAssign(O004_L1_Assembly_D5_Night)
+1 OpAssign(O004_L1_Assembly_OP02)
-1 OpInShift(O004_L1_Assembly_OP02_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP04_D1_Morning)_:
+1 ShiftAssign(O004_L1_Assembly_D1_Morning)
+1 OpAssign(O004_L1_Assembly_OP04)
-1 OpInShift(O004_L1_Assembly_OP04_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP04_D1_Afternoon)_:
+1 ShiftAssign(O004_L1_Assembly_D1_Afternoon)
+1 OpAssign(O004_L1_Assembly_OP04)
-1 OpInShift(O004_L1_Assembly_OP04_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP04_D1_Night)_:
+1 ShiftAssign(O004_L1_Assembly_D1_Night)
+1 OpAssign(O004_L1_Assembly_OP04)
-1 OpInShift(O004_L1_Assembly_OP04_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP04_D2_Morning)_:
+1 ShiftAssign(O004_L1_Assembly_D2_Morning)
+1 OpAssign(O004_L1_Assembly_OP04)
-1 OpInShift(O004_L1_Assembly_OP04_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP04_D2_Afternoon)_:
+1 ShiftAssign(O004_L1_Assembly_D2_Afternoon)
+1 OpAssign(O004_L1_Assembly_OP04)
-1 OpInShift(O004_L1_Assembly_OP04_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP04_D2_Night)_:
+1 ShiftAssign(O004_L1_Assembly_D2_Night)
+1 OpAssign(O004_L1_Assembly_OP04)
-1 OpInShift(O004_L1_Assembly_OP04_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP04_D3_Morning)_:
+1 ShiftAssign(O004_L1_Assembly_D3_Morning)
+1 OpAssign(O004_L1_Assembly_OP04)
-1 OpInShift(O004_L1_Assembly_OP04_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP04_D3_Afternoon)_:
+1 ShiftAssign(O004_L1_Assembly_D3_Afternoon)
+1 OpAssign(O004_L1_Assembly_OP04)
-1 OpInShift(O004_L1_Assembly_OP04_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP04_D3_Night)_:
+1 ShiftAssign(O004_L1_Assembly_D3_Night)
+1 OpAssign(O004_L1_Assembly_OP04)
-1 OpInShift(O004_L1_Assembly_OP04_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP04_D4_Morning)_:
+1 ShiftAssign(O004_L1_Assembly_D4_Morning)
+1 OpAssign(O004_L1_Assembly_OP04)
-1 OpInShift(O004_L1_Assembly_OP04_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP04_D4_Afternoon)_:
+1 ShiftAssign(O004_L1_Assembly_D4_Afternoon)
+1 OpAssign(O004_L1_Assembly_OP04)
-1 OpInShift(O004_L1_Assembly_OP04_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP04_D4_Night)_:
+1 ShiftAssign(O004_L1_Assembly_D4_Night)
+1 OpAssign(O004_L1_Assembly_OP04)
-1 OpInShift(O004_L1_Assembly_OP04_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP04_D5_Morning)_:
+1 ShiftAssign(O004_L1_Assembly_D5_Morning)
+1 OpAssign(O004_L1_Assembly_OP04)
-1 OpInShift(O004_L1_Assembly_OP04_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP04_D5_Afternoon)_:
+1 ShiftAssign(O004_L1_Assembly_D5_Afternoon)
+1 OpAssign(O004_L1_Assembly_OP04)
-1 OpInShift(O004_L1_Assembly_OP04_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L1_Assembly_OP04_D5_Night)_:
+1 ShiftAssign(O004_L1_Assembly_D5_Night)
+1 OpAssign(O004_L1_Assembly_OP04)
-1 OpInShift(O004_L1_Assembly_OP04_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP01_D1_Morning)_:
+1 ShiftAssign(O004_L2_Cutting_D1_Morning)
+1 OpAssign(O004_L2_Cutting_OP01)
-1 OpInShift(O004_L2_Cutting_OP01_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP01_D1_Afternoon)_:
+1 ShiftAssign(O004_L2_Cutting_D1_Afternoon)
+1 OpAssign(O004_L2_Cutting_OP01)
-1 OpInShift(O004_L2_Cutting_OP01_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP01_D1_Night)_:
+1 ShiftAssign(O004_L2_Cutting_D1_Night)
+1 OpAssign(O004_L2_Cutting_OP01)
-1 OpInShift(O004_L2_Cutting_OP01_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP01_D2_Morning)_:
+1 ShiftAssign(O004_L2_Cutting_D2_Morning)
+1 OpAssign(O004_L2_Cutting_OP01)
-1 OpInShift(O004_L2_Cutting_OP01_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP01_D2_Afternoon)_:
+1 ShiftAssign(O004_L2_Cutting_D2_Afternoon)
+1 OpAssign(O004_L2_Cutting_OP01)
-1 OpInShift(O004_L2_Cutting_OP01_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP01_D2_Night)_:
+1 ShiftAssign(O004_L2_Cutting_D2_Night)
+1 OpAssign(O004_L2_Cutting_OP01)
-1 OpInShift(O004_L2_Cutting_OP01_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP01_D3_Morning)_:
+1 ShiftAssign(O004_L2_Cutting_D3_Morning)
+1 OpAssign(O004_L2_Cutting_OP01)
-1 OpInShift(O004_L2_Cutting_OP01_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP01_D3_Afternoon)_:
+1 ShiftAssign(O004_L2_Cutting_D3_Afternoon)
+1 OpAssign(O004_L2_Cutting_OP01)
-1 OpInShift(O004_L2_Cutting_OP01_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP01_D3_Night)_:
+1 ShiftAssign(O004_L2_Cutting_D3_Night)
+1 OpAssign(O004_L2_Cutting_OP01)
-1 OpInShift(O004_L2_Cutting_OP01_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP01_D4_Morning)_:
+1 ShiftAssign(O004_L2_Cutting_D4_Morning)
+1 OpAssign(O004_L2_Cutting_OP01)
-1 OpInShift(O004_L2_Cutting_OP01_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP01_D4_Afternoon)_:
+1 ShiftAssign(O004_L2_Cutting_D4_Afternoon)
+1 OpAssign(O004_L2_Cutting_OP01)
-1 OpInShift(O004_L2_Cutting_OP01_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP01_D4_Night)_:
+1 ShiftAssign(O004_L2_Cutting_D4_Night)
+1 OpAssign(O004_L2_Cutting_OP01)
-1 OpInShift(O004_L2_Cutting_OP01_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP01_D5_Morning)_:
+1 ShiftAssign(O004_L2_Cutting_D5_Morning)
+1 OpAssign(O004_L2_Cutting_OP01)
-1 OpInShift(O004_L2_Cutting_OP01_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP01_D5_Afternoon)_:
+1 ShiftAssign(O004_L2_Cutting_D5_Afternoon)
+1 OpAssign(O004_L2_Cutting_OP01)
-1 OpInShift(O004_L2_Cutting_OP01_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP01_D5_Night)_:
+1 ShiftAssign(O004_L2_Cutting_D5_Night)
+1 OpAssign(O004_L2_Cutting_OP01)
-1 OpInShift(O004_L2_Cutting_OP01_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP03_D1_Morning)_:
+1 ShiftAssign(O004_L2_Cutting_D1_Morning)
+1 OpAssign(O004_L2_Cutting_OP03)
-1 OpInShift(O004_L2_Cutting_OP03_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP03_D1_Afternoon)_:
+1 ShiftAssign(O004_L2_Cutting_D1_Afternoon)
+1 OpAssign(O004_L2_Cutting_OP03)
-1 OpInShift(O004_L2_Cutting_OP03_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP03_D1_Night)_:
+1 ShiftAssign(O004_L2_Cutting_D1_Night)
+1 OpAssign(O004_L2_Cutting_OP03)
-1 OpInShift(O004_L2_Cutting_OP03_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP03_D2_Morning)_:
+1 ShiftAssign(O004_L2_Cutting_D2_Morning)
+1 OpAssign(O004_L2_Cutting_OP03)
-1 OpInShift(O004_L2_Cutting_OP03_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP03_D2_Afternoon)_:
+1 ShiftAssign(O004_L2_Cutting_D2_Afternoon)
+1 OpAssign(O004_L2_Cutting_OP03)
-1 OpInShift(O004_L2_Cutting_OP03_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP03_D2_Night)_:
+1 ShiftAssign(O004_L2_Cutting_D2_Night)
+1 OpAssign(O004_L2_Cutting_OP03)
-1 OpInShift(O004_L2_Cutting_OP03_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP03_D3_Morning)_:
+1 ShiftAssign(O004_L2_Cutting_D3_Morning)
+1 OpAssign(O004_L2_Cutting_OP03)
-1 OpInShift(O004_L2_Cutting_OP03_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP03_D3_Afternoon)_:
+1 ShiftAssign(O004_L2_Cutting_D3_Afternoon)
+1 OpAssign(O004_L2_Cutting_OP03)
-1 OpInShift(O004_L2_Cutting_OP03_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP03_D3_Night)_:
+1 ShiftAssign(O004_L2_Cutting_D3_Night)
+1 OpAssign(O004_L2_Cutting_OP03)
-1 OpInShift(O004_L2_Cutting_OP03_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP03_D4_Morning)_:
+1 ShiftAssign(O004_L2_Cutting_D4_Morning)
+1 OpAssign(O004_L2_Cutting_OP03)
-1 OpInShift(O004_L2_Cutting_OP03_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP03_D4_Afternoon)_:
+1 ShiftAssign(O004_L2_Cutting_D4_Afternoon)
+1 OpAssign(O004_L2_Cutting_OP03)
-1 OpInShift(O004_L2_Cutting_OP03_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP03_D4_Night)_:
+1 ShiftAssign(O004_L2_Cutting_D4_Night)
+1 OpAssign(O004_L2_Cutting_OP03)
-1 OpInShift(O004_L2_Cutting_OP03_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP03_D5_Morning)_:
+1 ShiftAssign(O004_L2_Cutting_D5_Morning)
+1 OpAssign(O004_L2_Cutting_OP03)
-1 OpInShift(O004_L2_Cutting_OP03_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP03_D5_Afternoon)_:
+1 ShiftAssign(O004_L2_Cutting_D5_Afternoon)
+1 OpAssign(O004_L2_Cutting_OP03)
-1 OpInShift(O004_L2_Cutting_OP03_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP03_D5_Night)_:
+1 ShiftAssign(O004_L2_Cutting_D5_Night)
+1 OpAssign(O004_L2_Cutting_OP03)
-1 OpInShift(O004_L2_Cutting_OP03_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP04_D1_Morning)_:
+1 ShiftAssign(O004_L2_Cutting_D1_Morning)
+1 OpAssign(O004_L2_Cutting_OP04)
-1 OpInShift(O004_L2_Cutting_OP04_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP04_D1_Afternoon)_:
+1 ShiftAssign(O004_L2_Cutting_D1_Afternoon)
+1 OpAssign(O004_L2_Cutting_OP04)
-1 OpInShift(O004_L2_Cutting_OP04_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP04_D1_Night)_:
+1 ShiftAssign(O004_L2_Cutting_D1_Night)
+1 OpAssign(O004_L2_Cutting_OP04)
-1 OpInShift(O004_L2_Cutting_OP04_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP04_D2_Morning)_:
+1 ShiftAssign(O004_L2_Cutting_D2_Morning)
+1 OpAssign(O004_L2_Cutting_OP04)
-1 OpInShift(O004_L2_Cutting_OP04_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP04_D2_Afternoon)_:
+1 ShiftAssign(O004_L2_Cutting_D2_Afternoon)
+1 OpAssign(O004_L2_Cutting_OP04)
-1 OpInShift(O004_L2_Cutting_OP04_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP04_D2_Night)_:
+1 ShiftAssign(O004_L2_Cutting_D2_Night)
+1 OpAssign(O004_L2_Cutting_OP04)
-1 OpInShift(O004_L2_Cutting_OP04_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP04_D3_Morning)_:
+1 ShiftAssign(O004_L2_Cutting_D3_Morning)
+1 OpAssign(O004_L2_Cutting_OP04)
-1 OpInShift(O004_L2_Cutting_OP04_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP04_D3_Afternoon)_:
+1 ShiftAssign(O004_L2_Cutting_D3_Afternoon)
+1 OpAssign(O004_L2_Cutting_OP04)
-1 OpInShift(O004_L2_Cutting_OP04_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP04_D3_Night)_:
+1 ShiftAssign(O004_L2_Cutting_D3_Night)
+1 OpAssign(O004_L2_Cutting_OP04)
-1 OpInShift(O004_L2_Cutting_OP04_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP04_D4_Morning)_:
+1 ShiftAssign(O004_L2_Cutting_D4_Morning)
+1 OpAssign(O004_L2_Cutting_OP04)
-1 OpInShift(O004_L2_Cutting_OP04_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP04_D4_Afternoon)_:
+1 ShiftAssign(O004_L2_Cutting_D4_Afternoon)
+1 OpAssign(O004_L2_Cutting_OP04)
-1 OpInShift(O004_L2_Cutting_OP04_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP04_D4_Night)_:
+1 ShiftAssign(O004_L2_Cutting_D4_Night)
+1 OpAssign(O004_L2_Cutting_OP04)
-1 OpInShift(O004_L2_Cutting_OP04_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP04_D5_Morning)_:
+1 ShiftAssign(O004_L2_Cutting_D5_Morning)
+1 OpAssign(O004_L2_Cutting_OP04)
-1 OpInShift(O004_L2_Cutting_OP04_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP04_D5_Afternoon)_:
+1 ShiftAssign(O004_L2_Cutting_D5_Afternoon)
+1 OpAssign(O004_L2_Cutting_OP04)
-1 OpInShift(O004_L2_Cutting_OP04_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Cutting_OP04_D5_Night)_:
+1 ShiftAssign(O004_L2_Cutting_D5_Night)
+1 OpAssign(O004_L2_Cutting_OP04)
-1 OpInShift(O004_L2_Cutting_OP04_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP01_D1_Morning)_:
+1 ShiftAssign(O004_L2_Assembly_D1_Morning)
+1 OpAssign(O004_L2_Assembly_OP01)
-1 OpInShift(O004_L2_Assembly_OP01_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP01_D1_Afternoon)_:
+1 ShiftAssign(O004_L2_Assembly_D1_Afternoon)
+1 OpAssign(O004_L2_Assembly_OP01)
-1 OpInShift(O004_L2_Assembly_OP01_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP01_D1_Night)_:
+1 ShiftAssign(O004_L2_Assembly_D1_Night)
+1 OpAssign(O004_L2_Assembly_OP01)
-1 OpInShift(O004_L2_Assembly_OP01_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP01_D2_Morning)_:
+1 ShiftAssign(O004_L2_Assembly_D2_Morning)
+1 OpAssign(O004_L2_Assembly_OP01)
-1 OpInShift(O004_L2_Assembly_OP01_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP01_D2_Afternoon)_:
+1 ShiftAssign(O004_L2_Assembly_D2_Afternoon)
+1 OpAssign(O004_L2_Assembly_OP01)
-1 OpInShift(O004_L2_Assembly_OP01_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP01_D2_Night)_:
+1 ShiftAssign(O004_L2_Assembly_D2_Night)
+1 OpAssign(O004_L2_Assembly_OP01)
-1 OpInShift(O004_L2_Assembly_OP01_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP01_D3_Morning)_:
+1 ShiftAssign(O004_L2_Assembly_D3_Morning)
+1 OpAssign(O004_L2_Assembly_OP01)
-1 OpInShift(O004_L2_Assembly_OP01_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP01_D3_Afternoon)_:
+1 ShiftAssign(O004_L2_Assembly_D3_Afternoon)
+1 OpAssign(O004_L2_Assembly_OP01)
-1 OpInShift(O004_L2_Assembly_OP01_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP01_D3_Night)_:
+1 ShiftAssign(O004_L2_Assembly_D3_Night)
+1 OpAssign(O004_L2_Assembly_OP01)
-1 OpInShift(O004_L2_Assembly_OP01_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP01_D4_Morning)_:
+1 ShiftAssign(O004_L2_Assembly_D4_Morning)
+1 OpAssign(O004_L2_Assembly_OP01)
-1 OpInShift(O004_L2_Assembly_OP01_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP01_D4_Afternoon)_:
+1 ShiftAssign(O004_L2_Assembly_D4_Afternoon)
+1 OpAssign(O004_L2_Assembly_OP01)
-1 OpInShift(O004_L2_Assembly_OP01_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP01_D4_Night)_:
+1 ShiftAssign(O004_L2_Assembly_D4_Night)
+1 OpAssign(O004_L2_Assembly_OP01)
-1 OpInShift(O004_L2_Assembly_OP01_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP01_D5_Morning)_:
+1 ShiftAssign(O004_L2_Assembly_D5_Morning)
+1 OpAssign(O004_L2_Assembly_OP01)
-1 OpInShift(O004_L2_Assembly_OP01_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP01_D5_Afternoon)_:
+1 ShiftAssign(O004_L2_Assembly_D5_Afternoon)
+1 OpAssign(O004_L2_Assembly_OP01)
-1 OpInShift(O004_L2_Assembly_OP01_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP01_D5_Night)_:
+1 ShiftAssign(O004_L2_Assembly_D5_Night)
+1 OpAssign(O004_L2_Assembly_OP01)
-1 OpInShift(O004_L2_Assembly_OP01_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP02_D1_Morning)_:
+1 ShiftAssign(O004_L2_Assembly_D1_Morning)
+1 OpAssign(O004_L2_Assembly_OP02)
-1 OpInShift(O004_L2_Assembly_OP02_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP02_D1_Afternoon)_:
+1 ShiftAssign(O004_L2_Assembly_D1_Afternoon)
+1 OpAssign(O004_L2_Assembly_OP02)
-1 OpInShift(O004_L2_Assembly_OP02_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP02_D1_Night)_:
+1 ShiftAssign(O004_L2_Assembly_D1_Night)
+1 OpAssign(O004_L2_Assembly_OP02)
-1 OpInShift(O004_L2_Assembly_OP02_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP02_D2_Morning)_:
+1 ShiftAssign(O004_L2_Assembly_D2_Morning)
+1 OpAssign(O004_L2_Assembly_OP02)
-1 OpInShift(O004_L2_Assembly_OP02_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP02_D2_Afternoon)_:
+1 ShiftAssign(O004_L2_Assembly_D2_Afternoon)
+1 OpAssign(O004_L2_Assembly_OP02)
-1 OpInShift(O004_L2_Assembly_OP02_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP02_D2_Night)_:
+1 ShiftAssign(O004_L2_Assembly_D2_Night)
+1 OpAssign(O004_L2_Assembly_OP02)
-1 OpInShift(O004_L2_Assembly_OP02_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP02_D3_Morning)_:
+1 ShiftAssign(O004_L2_Assembly_D3_Morning)
+1 OpAssign(O004_L2_Assembly_OP02)
-1 OpInShift(O004_L2_Assembly_OP02_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP02_D3_Afternoon)_:
+1 ShiftAssign(O004_L2_Assembly_D3_Afternoon)
+1 OpAssign(O004_L2_Assembly_OP02)
-1 OpInShift(O004_L2_Assembly_OP02_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP02_D3_Night)_:
+1 ShiftAssign(O004_L2_Assembly_D3_Night)
+1 OpAssign(O004_L2_Assembly_OP02)
-1 OpInShift(O004_L2_Assembly_OP02_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP02_D4_Morning)_:
+1 ShiftAssign(O004_L2_Assembly_D4_Morning)
+1 OpAssign(O004_L2_Assembly_OP02)
-1 OpInShift(O004_L2_Assembly_OP02_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP02_D4_Afternoon)_:
+1 ShiftAssign(O004_L2_Assembly_D4_Afternoon)
+1 OpAssign(O004_L2_Assembly_OP02)
-1 OpInShift(O004_L2_Assembly_OP02_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP02_D4_Night)_:
+1 ShiftAssign(O004_L2_Assembly_D4_Night)
+1 OpAssign(O004_L2_Assembly_OP02)
-1 OpInShift(O004_L2_Assembly_OP02_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP02_D5_Morning)_:
+1 ShiftAssign(O004_L2_Assembly_D5_Morning)
+1 OpAssign(O004_L2_Assembly_OP02)
-1 OpInShift(O004_L2_Assembly_OP02_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP02_D5_Afternoon)_:
+1 ShiftAssign(O004_L2_Assembly_D5_Afternoon)
+1 OpAssign(O004_L2_Assembly_OP02)
-1 OpInShift(O004_L2_Assembly_OP02_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP02_D5_Night)_:
+1 ShiftAssign(O004_L2_Assembly_D5_Night)
+1 OpAssign(O004_L2_Assembly_OP02)
-1 OpInShift(O004_L2_Assembly_OP02_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP04_D1_Morning)_:
+1 ShiftAssign(O004_L2_Assembly_D1_Morning)
+1 OpAssign(O004_L2_Assembly_OP04)
-1 OpInShift(O004_L2_Assembly_OP04_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP04_D1_Afternoon)_:
+1 ShiftAssign(O004_L2_Assembly_D1_Afternoon)
+1 OpAssign(O004_L2_Assembly_OP04)
-1 OpInShift(O004_L2_Assembly_OP04_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP04_D1_Night)_:
+1 ShiftAssign(O004_L2_Assembly_D1_Night)
+1 OpAssign(O004_L2_Assembly_OP04)
-1 OpInShift(O004_L2_Assembly_OP04_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP04_D2_Morning)_:
+1 ShiftAssign(O004_L2_Assembly_D2_Morning)
+1 OpAssign(O004_L2_Assembly_OP04)
-1 OpInShift(O004_L2_Assembly_OP04_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP04_D2_Afternoon)_:
+1 ShiftAssign(O004_L2_Assembly_D2_Afternoon)
+1 OpAssign(O004_L2_Assembly_OP04)
-1 OpInShift(O004_L2_Assembly_OP04_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP04_D2_Night)_:
+1 ShiftAssign(O004_L2_Assembly_D2_Night)
+1 OpAssign(O004_L2_Assembly_OP04)
-1 OpInShift(O004_L2_Assembly_OP04_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP04_D3_Morning)_:
+1 ShiftAssign(O004_L2_Assembly_D3_Morning)
+1 OpAssign(O004_L2_Assembly_OP04)
-1 OpInShift(O004_L2_Assembly_OP04_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP04_D3_Afternoon)_:
+1 ShiftAssign(O004_L2_Assembly_D3_Afternoon)
+1 OpAssign(O004_L2_Assembly_OP04)
-1 OpInShift(O004_L2_Assembly_OP04_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP04_D3_Night)_:
+1 ShiftAssign(O004_L2_Assembly_D3_Night)
+1 OpAssign(O004_L2_Assembly_OP04)
-1 OpInShift(O004_L2_Assembly_OP04_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP04_D4_Morning)_:
+1 ShiftAssign(O004_L2_Assembly_D4_Morning)
+1 OpAssign(O004_L2_Assembly_OP04)
-1 OpInShift(O004_L2_Assembly_OP04_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP04_D4_Afternoon)_:
+1 ShiftAssign(O004_L2_Assembly_D4_Afternoon)
+1 OpAssign(O004_L2_Assembly_OP04)
-1 OpInShift(O004_L2_Assembly_OP04_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP04_D4_Night)_:
+1 ShiftAssign(O004_L2_Assembly_D4_Night)
+1 OpAssign(O004_L2_Assembly_OP04)
-1 OpInShift(O004_L2_Assembly_OP04_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP04_D5_Morning)_:
+1 ShiftAssign(O004_L2_Assembly_D5_Morning)
+1 OpAssign(O004_L2_Assembly_OP04)
-1 OpInShift(O004_L2_Assembly_OP04_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP04_D5_Afternoon)_:
+1 ShiftAssign(O004_L2_Assembly_D5_Afternoon)
+1 OpAssign(O004_L2_Assembly_OP04)
-1 OpInShift(O004_L2_Assembly_OP04_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O004_L2_Assembly_OP04_D5_Night)_:
+1 ShiftAssign(O004_L2_Assembly_D5_Night)
+1 OpAssign(O004_L2_Assembly_OP04)
-1 OpInShift(O004_L2_Assembly_OP04_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP01_D1_Morning)_:
+1 ShiftAssign(O005_L1_Cutting_D1_Morning)
+1 OpAssign(O005_L1_Cutting_OP01)
-1 OpInShift(O005_L1_Cutting_OP01_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP01_D1_Afternoon)_:
+1 ShiftAssign(O005_L1_Cutting_D1_Afternoon)
+1 OpAssign(O005_L1_Cutting_OP01)
-1 OpInShift(O005_L1_Cutting_OP01_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP01_D1_Night)_:
+1 ShiftAssign(O005_L1_Cutting_D1_Night)
+1 OpAssign(O005_L1_Cutting_OP01)
-1 OpInShift(O005_L1_Cutting_OP01_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP01_D2_Morning)_:
+1 ShiftAssign(O005_L1_Cutting_D2_Morning)
+1 OpAssign(O005_L1_Cutting_OP01)
-1 OpInShift(O005_L1_Cutting_OP01_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP01_D2_Afternoon)_:
+1 ShiftAssign(O005_L1_Cutting_D2_Afternoon)
+1 OpAssign(O005_L1_Cutting_OP01)
-1 OpInShift(O005_L1_Cutting_OP01_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP01_D2_Night)_:
+1 ShiftAssign(O005_L1_Cutting_D2_Night)
+1 OpAssign(O005_L1_Cutting_OP01)
-1 OpInShift(O005_L1_Cutting_OP01_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP01_D3_Morning)_:
+1 ShiftAssign(O005_L1_Cutting_D3_Morning)
+1 OpAssign(O005_L1_Cutting_OP01)
-1 OpInShift(O005_L1_Cutting_OP01_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP01_D3_Afternoon)_:
+1 ShiftAssign(O005_L1_Cutting_D3_Afternoon)
+1 OpAssign(O005_L1_Cutting_OP01)
-1 OpInShift(O005_L1_Cutting_OP01_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP01_D3_Night)_:
+1 ShiftAssign(O005_L1_Cutting_D3_Night)
+1 OpAssign(O005_L1_Cutting_OP01)
-1 OpInShift(O005_L1_Cutting_OP01_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP01_D4_Morning)_:
+1 ShiftAssign(O005_L1_Cutting_D4_Morning)
+1 OpAssign(O005_L1_Cutting_OP01)
-1 OpInShift(O005_L1_Cutting_OP01_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP01_D4_Afternoon)_:
+1 ShiftAssign(O005_L1_Cutting_D4_Afternoon)
+1 OpAssign(O005_L1_Cutting_OP01)
-1 OpInShift(O005_L1_Cutting_OP01_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP01_D4_Night)_:
+1 ShiftAssign(O005_L1_Cutting_D4_Night)
+1 OpAssign(O005_L1_Cutting_OP01)
-1 OpInShift(O005_L1_Cutting_OP01_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP01_D5_Morning)_:
+1 ShiftAssign(O005_L1_Cutting_D5_Morning)
+1 OpAssign(O005_L1_Cutting_OP01)
-1 OpInShift(O005_L1_Cutting_OP01_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP01_D5_Afternoon)_:
+1 ShiftAssign(O005_L1_Cutting_D5_Afternoon)
+1 OpAssign(O005_L1_Cutting_OP01)
-1 OpInShift(O005_L1_Cutting_OP01_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP01_D5_Night)_:
+1 ShiftAssign(O005_L1_Cutting_D5_Night)
+1 OpAssign(O005_L1_Cutting_OP01)
-1 OpInShift(O005_L1_Cutting_OP01_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP03_D1_Morning)_:
+1 ShiftAssign(O005_L1_Cutting_D1_Morning)
+1 OpAssign(O005_L1_Cutting_OP03)
-1 OpInShift(O005_L1_Cutting_OP03_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP03_D1_Afternoon)_:
+1 ShiftAssign(O005_L1_Cutting_D1_Afternoon)
+1 OpAssign(O005_L1_Cutting_OP03)
-1 OpInShift(O005_L1_Cutting_OP03_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP03_D1_Night)_:
+1 ShiftAssign(O005_L1_Cutting_D1_Night)
+1 OpAssign(O005_L1_Cutting_OP03)
-1 OpInShift(O005_L1_Cutting_OP03_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP03_D2_Morning)_:
+1 ShiftAssign(O005_L1_Cutting_D2_Morning)
+1 OpAssign(O005_L1_Cutting_OP03)
-1 OpInShift(O005_L1_Cutting_OP03_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP03_D2_Afternoon)_:
+1 ShiftAssign(O005_L1_Cutting_D2_Afternoon)
+1 OpAssign(O005_L1_Cutting_OP03)
-1 OpInShift(O005_L1_Cutting_OP03_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP03_D2_Night)_:
+1 ShiftAssign(O005_L1_Cutting_D2_Night)
+1 OpAssign(O005_L1_Cutting_OP03)
-1 OpInShift(O005_L1_Cutting_OP03_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP03_D3_Morning)_:
+1 ShiftAssign(O005_L1_Cutting_D3_Morning)
+1 OpAssign(O005_L1_Cutting_OP03)
-1 OpInShift(O005_L1_Cutting_OP03_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP03_D3_Afternoon)_:
+1 ShiftAssign(O005_L1_Cutting_D3_Afternoon)
+1 OpAssign(O005_L1_Cutting_OP03)
-1 OpInShift(O005_L1_Cutting_OP03_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP03_D3_Night)_:
+1 ShiftAssign(O005_L1_Cutting_D3_Night)
+1 OpAssign(O005_L1_Cutting_OP03)
-1 OpInShift(O005_L1_Cutting_OP03_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP03_D4_Morning)_:
+1 ShiftAssign(O005_L1_Cutting_D4_Morning)
+1 OpAssign(O005_L1_Cutting_OP03)
-1 OpInShift(O005_L1_Cutting_OP03_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP03_D4_Afternoon)_:
+1 ShiftAssign(O005_L1_Cutting_D4_Afternoon)
+1 OpAssign(O005_L1_Cutting_OP03)
-1 OpInShift(O005_L1_Cutting_OP03_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP03_D4_Night)_:
+1 ShiftAssign(O005_L1_Cutting_D4_Night)
+1 OpAssign(O005_L1_Cutting_OP03)
-1 OpInShift(O005_L1_Cutting_OP03_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP03_D5_Morning)_:
+1 ShiftAssign(O005_L1_Cutting_D5_Morning)
+1 OpAssign(O005_L1_Cutting_OP03)
-1 OpInShift(O005_L1_Cutting_OP03_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP03_D5_Afternoon)_:
+1 ShiftAssign(O005_L1_Cutting_D5_Afternoon)
+1 OpAssign(O005_L1_Cutting_OP03)
-1 OpInShift(O005_L1_Cutting_OP03_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP03_D5_Night)_:
+1 ShiftAssign(O005_L1_Cutting_D5_Night)
+1 OpAssign(O005_L1_Cutting_OP03)
-1 OpInShift(O005_L1_Cutting_OP03_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP04_D1_Morning)_:
+1 ShiftAssign(O005_L1_Cutting_D1_Morning)
+1 OpAssign(O005_L1_Cutting_OP04)
-1 OpInShift(O005_L1_Cutting_OP04_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP04_D1_Afternoon)_:
+1 ShiftAssign(O005_L1_Cutting_D1_Afternoon)
+1 OpAssign(O005_L1_Cutting_OP04)
-1 OpInShift(O005_L1_Cutting_OP04_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP04_D1_Night)_:
+1 ShiftAssign(O005_L1_Cutting_D1_Night)
+1 OpAssign(O005_L1_Cutting_OP04)
-1 OpInShift(O005_L1_Cutting_OP04_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP04_D2_Morning)_:
+1 ShiftAssign(O005_L1_Cutting_D2_Morning)
+1 OpAssign(O005_L1_Cutting_OP04)
-1 OpInShift(O005_L1_Cutting_OP04_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP04_D2_Afternoon)_:
+1 ShiftAssign(O005_L1_Cutting_D2_Afternoon)
+1 OpAssign(O005_L1_Cutting_OP04)
-1 OpInShift(O005_L1_Cutting_OP04_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP04_D2_Night)_:
+1 ShiftAssign(O005_L1_Cutting_D2_Night)
+1 OpAssign(O005_L1_Cutting_OP04)
-1 OpInShift(O005_L1_Cutting_OP04_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP04_D3_Morning)_:
+1 ShiftAssign(O005_L1_Cutting_D3_Morning)
+1 OpAssign(O005_L1_Cutting_OP04)
-1 OpInShift(O005_L1_Cutting_OP04_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP04_D3_Afternoon)_:
+1 ShiftAssign(O005_L1_Cutting_D3_Afternoon)
+1 OpAssign(O005_L1_Cutting_OP04)
-1 OpInShift(O005_L1_Cutting_OP04_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP04_D3_Night)_:
+1 ShiftAssign(O005_L1_Cutting_D3_Night)
+1 OpAssign(O005_L1_Cutting_OP04)
-1 OpInShift(O005_L1_Cutting_OP04_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP04_D4_Morning)_:
+1 ShiftAssign(O005_L1_Cutting_D4_Morning)
+1 OpAssign(O005_L1_Cutting_OP04)
-1 OpInShift(O005_L1_Cutting_OP04_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP04_D4_Afternoon)_:
+1 ShiftAssign(O005_L1_Cutting_D4_Afternoon)
+1 OpAssign(O005_L1_Cutting_OP04)
-1 OpInShift(O005_L1_Cutting_OP04_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP04_D4_Night)_:
+1 ShiftAssign(O005_L1_Cutting_D4_Night)
+1 OpAssign(O005_L1_Cutting_OP04)
-1 OpInShift(O005_L1_Cutting_OP04_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP04_D5_Morning)_:
+1 ShiftAssign(O005_L1_Cutting_D5_Morning)
+1 OpAssign(O005_L1_Cutting_OP04)
-1 OpInShift(O005_L1_Cutting_OP04_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP04_D5_Afternoon)_:
+1 ShiftAssign(O005_L1_Cutting_D5_Afternoon)
+1 OpAssign(O005_L1_Cutting_OP04)
-1 OpInShift(O005_L1_Cutting_OP04_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Cutting_OP04_D5_Night)_:
+1 ShiftAssign(O005_L1_Cutting_D5_Night)
+1 OpAssign(O005_L1_Cutting_OP04)
-1 OpInShift(O005_L1_Cutting_OP04_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP01_D1_Morning)_:
+1 ShiftAssign(O005_L1_Assembly_D1_Morning)
+1 OpAssign(O005_L1_Assembly_OP01)
-1 OpInShift(O005_L1_Assembly_OP01_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP01_D1_Afternoon)_:
+1 ShiftAssign(O005_L1_Assembly_D1_Afternoon)
+1 OpAssign(O005_L1_Assembly_OP01)
-1 OpInShift(O005_L1_Assembly_OP01_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP01_D1_Night)_:
+1 ShiftAssign(O005_L1_Assembly_D1_Night)
+1 OpAssign(O005_L1_Assembly_OP01)
-1 OpInShift(O005_L1_Assembly_OP01_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP01_D2_Morning)_:
+1 ShiftAssign(O005_L1_Assembly_D2_Morning)
+1 OpAssign(O005_L1_Assembly_OP01)
-1 OpInShift(O005_L1_Assembly_OP01_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP01_D2_Afternoon)_:
+1 ShiftAssign(O005_L1_Assembly_D2_Afternoon)
+1 OpAssign(O005_L1_Assembly_OP01)
-1 OpInShift(O005_L1_Assembly_OP01_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP01_D2_Night)_:
+1 ShiftAssign(O005_L1_Assembly_D2_Night)
+1 OpAssign(O005_L1_Assembly_OP01)
-1 OpInShift(O005_L1_Assembly_OP01_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP01_D3_Morning)_:
+1 ShiftAssign(O005_L1_Assembly_D3_Morning)
+1 OpAssign(O005_L1_Assembly_OP01)
-1 OpInShift(O005_L1_Assembly_OP01_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP01_D3_Afternoon)_:
+1 ShiftAssign(O005_L1_Assembly_D3_Afternoon)
+1 OpAssign(O005_L1_Assembly_OP01)
-1 OpInShift(O005_L1_Assembly_OP01_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP01_D3_Night)_:
+1 ShiftAssign(O005_L1_Assembly_D3_Night)
+1 OpAssign(O005_L1_Assembly_OP01)
-1 OpInShift(O005_L1_Assembly_OP01_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP01_D4_Morning)_:
+1 ShiftAssign(O005_L1_Assembly_D4_Morning)
+1 OpAssign(O005_L1_Assembly_OP01)
-1 OpInShift(O005_L1_Assembly_OP01_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP01_D4_Afternoon)_:
+1 ShiftAssign(O005_L1_Assembly_D4_Afternoon)
+1 OpAssign(O005_L1_Assembly_OP01)
-1 OpInShift(O005_L1_Assembly_OP01_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP01_D4_Night)_:
+1 ShiftAssign(O005_L1_Assembly_D4_Night)
+1 OpAssign(O005_L1_Assembly_OP01)
-1 OpInShift(O005_L1_Assembly_OP01_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP01_D5_Morning)_:
+1 ShiftAssign(O005_L1_Assembly_D5_Morning)
+1 OpAssign(O005_L1_Assembly_OP01)
-1 OpInShift(O005_L1_Assembly_OP01_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP01_D5_Afternoon)_:
+1 ShiftAssign(O005_L1_Assembly_D5_Afternoon)
+1 OpAssign(O005_L1_Assembly_OP01)
-1 OpInShift(O005_L1_Assembly_OP01_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP01_D5_Night)_:
+1 ShiftAssign(O005_L1_Assembly_D5_Night)
+1 OpAssign(O005_L1_Assembly_OP01)
-1 OpInShift(O005_L1_Assembly_OP01_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP02_D1_Morning)_:
+1 ShiftAssign(O005_L1_Assembly_D1_Morning)
+1 OpAssign(O005_L1_Assembly_OP02)
-1 OpInShift(O005_L1_Assembly_OP02_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP02_D1_Afternoon)_:
+1 ShiftAssign(O005_L1_Assembly_D1_Afternoon)
+1 OpAssign(O005_L1_Assembly_OP02)
-1 OpInShift(O005_L1_Assembly_OP02_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP02_D1_Night)_:
+1 ShiftAssign(O005_L1_Assembly_D1_Night)
+1 OpAssign(O005_L1_Assembly_OP02)
-1 OpInShift(O005_L1_Assembly_OP02_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP02_D2_Morning)_:
+1 ShiftAssign(O005_L1_Assembly_D2_Morning)
+1 OpAssign(O005_L1_Assembly_OP02)
-1 OpInShift(O005_L1_Assembly_OP02_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP02_D2_Afternoon)_:
+1 ShiftAssign(O005_L1_Assembly_D2_Afternoon)
+1 OpAssign(O005_L1_Assembly_OP02)
-1 OpInShift(O005_L1_Assembly_OP02_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP02_D2_Night)_:
+1 ShiftAssign(O005_L1_Assembly_D2_Night)
+1 OpAssign(O005_L1_Assembly_OP02)
-1 OpInShift(O005_L1_Assembly_OP02_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP02_D3_Morning)_:
+1 ShiftAssign(O005_L1_Assembly_D3_Morning)
+1 OpAssign(O005_L1_Assembly_OP02)
-1 OpInShift(O005_L1_Assembly_OP02_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP02_D3_Afternoon)_:
+1 ShiftAssign(O005_L1_Assembly_D3_Afternoon)
+1 OpAssign(O005_L1_Assembly_OP02)
-1 OpInShift(O005_L1_Assembly_OP02_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP02_D3_Night)_:
+1 ShiftAssign(O005_L1_Assembly_D3_Night)
+1 OpAssign(O005_L1_Assembly_OP02)
-1 OpInShift(O005_L1_Assembly_OP02_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP02_D4_Morning)_:
+1 ShiftAssign(O005_L1_Assembly_D4_Morning)
+1 OpAssign(O005_L1_Assembly_OP02)
-1 OpInShift(O005_L1_Assembly_OP02_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP02_D4_Afternoon)_:
+1 ShiftAssign(O005_L1_Assembly_D4_Afternoon)
+1 OpAssign(O005_L1_Assembly_OP02)
-1 OpInShift(O005_L1_Assembly_OP02_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP02_D4_Night)_:
+1 ShiftAssign(O005_L1_Assembly_D4_Night)
+1 OpAssign(O005_L1_Assembly_OP02)
-1 OpInShift(O005_L1_Assembly_OP02_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP02_D5_Morning)_:
+1 ShiftAssign(O005_L1_Assembly_D5_Morning)
+1 OpAssign(O005_L1_Assembly_OP02)
-1 OpInShift(O005_L1_Assembly_OP02_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP02_D5_Afternoon)_:
+1 ShiftAssign(O005_L1_Assembly_D5_Afternoon)
+1 OpAssign(O005_L1_Assembly_OP02)
-1 OpInShift(O005_L1_Assembly_OP02_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP02_D5_Night)_:
+1 ShiftAssign(O005_L1_Assembly_D5_Night)
+1 OpAssign(O005_L1_Assembly_OP02)
-1 OpInShift(O005_L1_Assembly_OP02_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP04_D1_Morning)_:
+1 ShiftAssign(O005_L1_Assembly_D1_Morning)
+1 OpAssign(O005_L1_Assembly_OP04)
-1 OpInShift(O005_L1_Assembly_OP04_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP04_D1_Afternoon)_:
+1 ShiftAssign(O005_L1_Assembly_D1_Afternoon)
+1 OpAssign(O005_L1_Assembly_OP04)
-1 OpInShift(O005_L1_Assembly_OP04_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP04_D1_Night)_:
+1 ShiftAssign(O005_L1_Assembly_D1_Night)
+1 OpAssign(O005_L1_Assembly_OP04)
-1 OpInShift(O005_L1_Assembly_OP04_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP04_D2_Morning)_:
+1 ShiftAssign(O005_L1_Assembly_D2_Morning)
+1 OpAssign(O005_L1_Assembly_OP04)
-1 OpInShift(O005_L1_Assembly_OP04_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP04_D2_Afternoon)_:
+1 ShiftAssign(O005_L1_Assembly_D2_Afternoon)
+1 OpAssign(O005_L1_Assembly_OP04)
-1 OpInShift(O005_L1_Assembly_OP04_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP04_D2_Night)_:
+1 ShiftAssign(O005_L1_Assembly_D2_Night)
+1 OpAssign(O005_L1_Assembly_OP04)
-1 OpInShift(O005_L1_Assembly_OP04_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP04_D3_Morning)_:
+1 ShiftAssign(O005_L1_Assembly_D3_Morning)
+1 OpAssign(O005_L1_Assembly_OP04)
-1 OpInShift(O005_L1_Assembly_OP04_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP04_D3_Afternoon)_:
+1 ShiftAssign(O005_L1_Assembly_D3_Afternoon)
+1 OpAssign(O005_L1_Assembly_OP04)
-1 OpInShift(O005_L1_Assembly_OP04_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP04_D3_Night)_:
+1 ShiftAssign(O005_L1_Assembly_D3_Night)
+1 OpAssign(O005_L1_Assembly_OP04)
-1 OpInShift(O005_L1_Assembly_OP04_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP04_D4_Morning)_:
+1 ShiftAssign(O005_L1_Assembly_D4_Morning)
+1 OpAssign(O005_L1_Assembly_OP04)
-1 OpInShift(O005_L1_Assembly_OP04_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP04_D4_Afternoon)_:
+1 ShiftAssign(O005_L1_Assembly_D4_Afternoon)
+1 OpAssign(O005_L1_Assembly_OP04)
-1 OpInShift(O005_L1_Assembly_OP04_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP04_D4_Night)_:
+1 ShiftAssign(O005_L1_Assembly_D4_Night)
+1 OpAssign(O005_L1_Assembly_OP04)
-1 OpInShift(O005_L1_Assembly_OP04_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP04_D5_Morning)_:
+1 ShiftAssign(O005_L1_Assembly_D5_Morning)
+1 OpAssign(O005_L1_Assembly_OP04)
-1 OpInShift(O005_L1_Assembly_OP04_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP04_D5_Afternoon)_:
+1 ShiftAssign(O005_L1_Assembly_D5_Afternoon)
+1 OpAssign(O005_L1_Assembly_OP04)
-1 OpInShift(O005_L1_Assembly_OP04_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O005_L1_Assembly_OP04_D5_Night)_:
+1 ShiftAssign(O005_L1_Assembly_D5_Night)
+1 OpAssign(O005_L1_Assembly_OP04)
-1 OpInShift(O005_L1_Assembly_OP04_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP01_D1_Morning)_:
+1 ShiftAssign(O006_L1_Cutting_D1_Morning)
+1 OpAssign(O006_L1_Cutting_OP01)
-1 OpInShift(O006_L1_Cutting_OP01_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP01_D1_Afternoon)_:
+1 ShiftAssign(O006_L1_Cutting_D1_Afternoon)
+1 OpAssign(O006_L1_Cutting_OP01)
-1 OpInShift(O006_L1_Cutting_OP01_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP01_D1_Night)_:
+1 ShiftAssign(O006_L1_Cutting_D1_Night)
+1 OpAssign(O006_L1_Cutting_OP01)
-1 OpInShift(O006_L1_Cutting_OP01_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP01_D2_Morning)_:
+1 ShiftAssign(O006_L1_Cutting_D2_Morning)
+1 OpAssign(O006_L1_Cutting_OP01)
-1 OpInShift(O006_L1_Cutting_OP01_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP01_D2_Afternoon)_:
+1 ShiftAssign(O006_L1_Cutting_D2_Afternoon)
+1 OpAssign(O006_L1_Cutting_OP01)
-1 OpInShift(O006_L1_Cutting_OP01_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP01_D2_Night)_:
+1 ShiftAssign(O006_L1_Cutting_D2_Night)
+1 OpAssign(O006_L1_Cutting_OP01)
-1 OpInShift(O006_L1_Cutting_OP01_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP01_D3_Morning)_:
+1 ShiftAssign(O006_L1_Cutting_D3_Morning)
+1 OpAssign(O006_L1_Cutting_OP01)
-1 OpInShift(O006_L1_Cutting_OP01_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP01_D3_Afternoon)_:
+1 ShiftAssign(O006_L1_Cutting_D3_Afternoon)
+1 OpAssign(O006_L1_Cutting_OP01)
-1 OpInShift(O006_L1_Cutting_OP01_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP01_D3_Night)_:
+1 ShiftAssign(O006_L1_Cutting_D3_Night)
+1 OpAssign(O006_L1_Cutting_OP01)
-1 OpInShift(O006_L1_Cutting_OP01_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP01_D4_Morning)_:
+1 ShiftAssign(O006_L1_Cutting_D4_Morning)
+1 OpAssign(O006_L1_Cutting_OP01)
-1 OpInShift(O006_L1_Cutting_OP01_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP01_D4_Afternoon)_:
+1 ShiftAssign(O006_L1_Cutting_D4_Afternoon)
+1 OpAssign(O006_L1_Cutting_OP01)
-1 OpInShift(O006_L1_Cutting_OP01_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP01_D4_Night)_:
+1 ShiftAssign(O006_L1_Cutting_D4_Night)
+1 OpAssign(O006_L1_Cutting_OP01)
-1 OpInShift(O006_L1_Cutting_OP01_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP01_D5_Morning)_:
+1 ShiftAssign(O006_L1_Cutting_D5_Morning)
+1 OpAssign(O006_L1_Cutting_OP01)
-1 OpInShift(O006_L1_Cutting_OP01_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP01_D5_Afternoon)_:
+1 ShiftAssign(O006_L1_Cutting_D5_Afternoon)
+1 OpAssign(O006_L1_Cutting_OP01)
-1 OpInShift(O006_L1_Cutting_OP01_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP01_D5_Night)_:
+1 ShiftAssign(O006_L1_Cutting_D5_Night)
+1 OpAssign(O006_L1_Cutting_OP01)
-1 OpInShift(O006_L1_Cutting_OP01_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP03_D1_Morning)_:
+1 ShiftAssign(O006_L1_Cutting_D1_Morning)
+1 OpAssign(O006_L1_Cutting_OP03)
-1 OpInShift(O006_L1_Cutting_OP03_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP03_D1_Afternoon)_:
+1 ShiftAssign(O006_L1_Cutting_D1_Afternoon)
+1 OpAssign(O006_L1_Cutting_OP03)
-1 OpInShift(O006_L1_Cutting_OP03_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP03_D1_Night)_:
+1 ShiftAssign(O006_L1_Cutting_D1_Night)
+1 OpAssign(O006_L1_Cutting_OP03)
-1 OpInShift(O006_L1_Cutting_OP03_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP03_D2_Morning)_:
+1 ShiftAssign(O006_L1_Cutting_D2_Morning)
+1 OpAssign(O006_L1_Cutting_OP03)
-1 OpInShift(O006_L1_Cutting_OP03_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP03_D2_Afternoon)_:
+1 ShiftAssign(O006_L1_Cutting_D2_Afternoon)
+1 OpAssign(O006_L1_Cutting_OP03)
-1 OpInShift(O006_L1_Cutting_OP03_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP03_D2_Night)_:
+1 ShiftAssign(O006_L1_Cutting_D2_Night)
+1 OpAssign(O006_L1_Cutting_OP03)
-1 OpInShift(O006_L1_Cutting_OP03_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP03_D3_Morning)_:
+1 ShiftAssign(O006_L1_Cutting_D3_Morning)
+1 OpAssign(O006_L1_Cutting_OP03)
-1 OpInShift(O006_L1_Cutting_OP03_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP03_D3_Afternoon)_:
+1 ShiftAssign(O006_L1_Cutting_D3_Afternoon)
+1 OpAssign(O006_L1_Cutting_OP03)
-1 OpInShift(O006_L1_Cutting_OP03_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP03_D3_Night)_:
+1 ShiftAssign(O006_L1_Cutting_D3_Night)
+1 OpAssign(O006_L1_Cutting_OP03)
-1 OpInShift(O006_L1_Cutting_OP03_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP03_D4_Morning)_:
+1 ShiftAssign(O006_L1_Cutting_D4_Morning)
+1 OpAssign(O006_L1_Cutting_OP03)
-1 OpInShift(O006_L1_Cutting_OP03_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP03_D4_Afternoon)_:
+1 ShiftAssign(O006_L1_Cutting_D4_Afternoon)
+1 OpAssign(O006_L1_Cutting_OP03)
-1 OpInShift(O006_L1_Cutting_OP03_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP03_D4_Night)_:
+1 ShiftAssign(O006_L1_Cutting_D4_Night)
+1 OpAssign(O006_L1_Cutting_OP03)
-1 OpInShift(O006_L1_Cutting_OP03_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP03_D5_Morning)_:
+1 ShiftAssign(O006_L1_Cutting_D5_Morning)
+1 OpAssign(O006_L1_Cutting_OP03)
-1 OpInShift(O006_L1_Cutting_OP03_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP03_D5_Afternoon)_:
+1 ShiftAssign(O006_L1_Cutting_D5_Afternoon)
+1 OpAssign(O006_L1_Cutting_OP03)
-1 OpInShift(O006_L1_Cutting_OP03_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP03_D5_Night)_:
+1 ShiftAssign(O006_L1_Cutting_D5_Night)
+1 OpAssign(O006_L1_Cutting_OP03)
-1 OpInShift(O006_L1_Cutting_OP03_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP04_D1_Morning)_:
+1 ShiftAssign(O006_L1_Cutting_D1_Morning)
+1 OpAssign(O006_L1_Cutting_OP04)
-1 OpInShift(O006_L1_Cutting_OP04_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP04_D1_Afternoon)_:
+1 ShiftAssign(O006_L1_Cutting_D1_Afternoon)
+1 OpAssign(O006_L1_Cutting_OP04)
-1 OpInShift(O006_L1_Cutting_OP04_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP04_D1_Night)_:
+1 ShiftAssign(O006_L1_Cutting_D1_Night)
+1 OpAssign(O006_L1_Cutting_OP04)
-1 OpInShift(O006_L1_Cutting_OP04_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP04_D2_Morning)_:
+1 ShiftAssign(O006_L1_Cutting_D2_Morning)
+1 OpAssign(O006_L1_Cutting_OP04)
-1 OpInShift(O006_L1_Cutting_OP04_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP04_D2_Afternoon)_:
+1 ShiftAssign(O006_L1_Cutting_D2_Afternoon)
+1 OpAssign(O006_L1_Cutting_OP04)
-1 OpInShift(O006_L1_Cutting_OP04_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP04_D2_Night)_:
+1 ShiftAssign(O006_L1_Cutting_D2_Night)
+1 OpAssign(O006_L1_Cutting_OP04)
-1 OpInShift(O006_L1_Cutting_OP04_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP04_D3_Morning)_:
+1 ShiftAssign(O006_L1_Cutting_D3_Morning)
+1 OpAssign(O006_L1_Cutting_OP04)
-1 OpInShift(O006_L1_Cutting_OP04_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP04_D3_Afternoon)_:
+1 ShiftAssign(O006_L1_Cutting_D3_Afternoon)
+1 OpAssign(O006_L1_Cutting_OP04)
-1 OpInShift(O006_L1_Cutting_OP04_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP04_D3_Night)_:
+1 ShiftAssign(O006_L1_Cutting_D3_Night)
+1 OpAssign(O006_L1_Cutting_OP04)
-1 OpInShift(O006_L1_Cutting_OP04_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP04_D4_Morning)_:
+1 ShiftAssign(O006_L1_Cutting_D4_Morning)
+1 OpAssign(O006_L1_Cutting_OP04)
-1 OpInShift(O006_L1_Cutting_OP04_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP04_D4_Afternoon)_:
+1 ShiftAssign(O006_L1_Cutting_D4_Afternoon)
+1 OpAssign(O006_L1_Cutting_OP04)
-1 OpInShift(O006_L1_Cutting_OP04_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP04_D4_Night)_:
+1 ShiftAssign(O006_L1_Cutting_D4_Night)
+1 OpAssign(O006_L1_Cutting_OP04)
-1 OpInShift(O006_L1_Cutting_OP04_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP04_D5_Morning)_:
+1 ShiftAssign(O006_L1_Cutting_D5_Morning)
+1 OpAssign(O006_L1_Cutting_OP04)
-1 OpInShift(O006_L1_Cutting_OP04_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP04_D5_Afternoon)_:
+1 ShiftAssign(O006_L1_Cutting_D5_Afternoon)
+1 OpAssign(O006_L1_Cutting_OP04)
-1 OpInShift(O006_L1_Cutting_OP04_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Cutting_OP04_D5_Night)_:
+1 ShiftAssign(O006_L1_Cutting_D5_Night)
+1 OpAssign(O006_L1_Cutting_OP04)
-1 OpInShift(O006_L1_Cutting_OP04_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP01_D1_Morning)_:
+1 ShiftAssign(O006_L1_Assembly_D1_Morning)
+1 OpAssign(O006_L1_Assembly_OP01)
-1 OpInShift(O006_L1_Assembly_OP01_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP01_D1_Afternoon)_:
+1 ShiftAssign(O006_L1_Assembly_D1_Afternoon)
+1 OpAssign(O006_L1_Assembly_OP01)
-1 OpInShift(O006_L1_Assembly_OP01_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP01_D1_Night)_:
+1 ShiftAssign(O006_L1_Assembly_D1_Night)
+1 OpAssign(O006_L1_Assembly_OP01)
-1 OpInShift(O006_L1_Assembly_OP01_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP01_D2_Morning)_:
+1 ShiftAssign(O006_L1_Assembly_D2_Morning)
+1 OpAssign(O006_L1_Assembly_OP01)
-1 OpInShift(O006_L1_Assembly_OP01_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP01_D2_Afternoon)_:
+1 ShiftAssign(O006_L1_Assembly_D2_Afternoon)
+1 OpAssign(O006_L1_Assembly_OP01)
-1 OpInShift(O006_L1_Assembly_OP01_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP01_D2_Night)_:
+1 ShiftAssign(O006_L1_Assembly_D2_Night)
+1 OpAssign(O006_L1_Assembly_OP01)
-1 OpInShift(O006_L1_Assembly_OP01_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP01_D3_Morning)_:
+1 ShiftAssign(O006_L1_Assembly_D3_Morning)
+1 OpAssign(O006_L1_Assembly_OP01)
-1 OpInShift(O006_L1_Assembly_OP01_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP01_D3_Afternoon)_:
+1 ShiftAssign(O006_L1_Assembly_D3_Afternoon)
+1 OpAssign(O006_L1_Assembly_OP01)
-1 OpInShift(O006_L1_Assembly_OP01_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP01_D3_Night)_:
+1 ShiftAssign(O006_L1_Assembly_D3_Night)
+1 OpAssign(O006_L1_Assembly_OP01)
-1 OpInShift(O006_L1_Assembly_OP01_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP01_D4_Morning)_:
+1 ShiftAssign(O006_L1_Assembly_D4_Morning)
+1 OpAssign(O006_L1_Assembly_OP01)
-1 OpInShift(O006_L1_Assembly_OP01_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP01_D4_Afternoon)_:
+1 ShiftAssign(O006_L1_Assembly_D4_Afternoon)
+1 OpAssign(O006_L1_Assembly_OP01)
-1 OpInShift(O006_L1_Assembly_OP01_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP01_D4_Night)_:
+1 ShiftAssign(O006_L1_Assembly_D4_Night)
+1 OpAssign(O006_L1_Assembly_OP01)
-1 OpInShift(O006_L1_Assembly_OP01_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP01_D5_Morning)_:
+1 ShiftAssign(O006_L1_Assembly_D5_Morning)
+1 OpAssign(O006_L1_Assembly_OP01)
-1 OpInShift(O006_L1_Assembly_OP01_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP01_D5_Afternoon)_:
+1 ShiftAssign(O006_L1_Assembly_D5_Afternoon)
+1 OpAssign(O006_L1_Assembly_OP01)
-1 OpInShift(O006_L1_Assembly_OP01_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP01_D5_Night)_:
+1 ShiftAssign(O006_L1_Assembly_D5_Night)
+1 OpAssign(O006_L1_Assembly_OP01)
-1 OpInShift(O006_L1_Assembly_OP01_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP02_D1_Morning)_:
+1 ShiftAssign(O006_L1_Assembly_D1_Morning)
+1 OpAssign(O006_L1_Assembly_OP02)
-1 OpInShift(O006_L1_Assembly_OP02_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP02_D1_Afternoon)_:
+1 ShiftAssign(O006_L1_Assembly_D1_Afternoon)
+1 OpAssign(O006_L1_Assembly_OP02)
-1 OpInShift(O006_L1_Assembly_OP02_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP02_D1_Night)_:
+1 ShiftAssign(O006_L1_Assembly_D1_Night)
+1 OpAssign(O006_L1_Assembly_OP02)
-1 OpInShift(O006_L1_Assembly_OP02_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP02_D2_Morning)_:
+1 ShiftAssign(O006_L1_Assembly_D2_Morning)
+1 OpAssign(O006_L1_Assembly_OP02)
-1 OpInShift(O006_L1_Assembly_OP02_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP02_D2_Afternoon)_:
+1 ShiftAssign(O006_L1_Assembly_D2_Afternoon)
+1 OpAssign(O006_L1_Assembly_OP02)
-1 OpInShift(O006_L1_Assembly_OP02_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP02_D2_Night)_:
+1 ShiftAssign(O006_L1_Assembly_D2_Night)
+1 OpAssign(O006_L1_Assembly_OP02)
-1 OpInShift(O006_L1_Assembly_OP02_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP02_D3_Morning)_:
+1 ShiftAssign(O006_L1_Assembly_D3_Morning)
+1 OpAssign(O006_L1_Assembly_OP02)
-1 OpInShift(O006_L1_Assembly_OP02_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP02_D3_Afternoon)_:
+1 ShiftAssign(O006_L1_Assembly_D3_Afternoon)
+1 OpAssign(O006_L1_Assembly_OP02)
-1 OpInShift(O006_L1_Assembly_OP02_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP02_D3_Night)_:
+1 ShiftAssign(O006_L1_Assembly_D3_Night)
+1 OpAssign(O006_L1_Assembly_OP02)
-1 OpInShift(O006_L1_Assembly_OP02_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP02_D4_Morning)_:
+1 ShiftAssign(O006_L1_Assembly_D4_Morning)
+1 OpAssign(O006_L1_Assembly_OP02)
-1 OpInShift(O006_L1_Assembly_OP02_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP02_D4_Afternoon)_:
+1 ShiftAssign(O006_L1_Assembly_D4_Afternoon)
+1 OpAssign(O006_L1_Assembly_OP02)
-1 OpInShift(O006_L1_Assembly_OP02_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP02_D4_Night)_:
+1 ShiftAssign(O006_L1_Assembly_D4_Night)
+1 OpAssign(O006_L1_Assembly_OP02)
-1 OpInShift(O006_L1_Assembly_OP02_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP02_D5_Morning)_:
+1 ShiftAssign(O006_L1_Assembly_D5_Morning)
+1 OpAssign(O006_L1_Assembly_OP02)
-1 OpInShift(O006_L1_Assembly_OP02_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP02_D5_Afternoon)_:
+1 ShiftAssign(O006_L1_Assembly_D5_Afternoon)
+1 OpAssign(O006_L1_Assembly_OP02)
-1 OpInShift(O006_L1_Assembly_OP02_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP02_D5_Night)_:
+1 ShiftAssign(O006_L1_Assembly_D5_Night)
+1 OpAssign(O006_L1_Assembly_OP02)
-1 OpInShift(O006_L1_Assembly_OP02_D5_Night)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP04_D1_Morning)_:
+1 ShiftAssign(O006_L1_Assembly_D1_Morning)
+1 OpAssign(O006_L1_Assembly_OP04)
-1 OpInShift(O006_L1_Assembly_OP04_D1_Morning)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP04_D1_Afternoon)_:
+1 ShiftAssign(O006_L1_Assembly_D1_Afternoon)
+1 OpAssign(O006_L1_Assembly_OP04)
-1 OpInShift(O006_L1_Assembly_OP04_D1_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP04_D1_Night)_:
+1 ShiftAssign(O006_L1_Assembly_D1_Night)
+1 OpAssign(O006_L1_Assembly_OP04)
-1 OpInShift(O006_L1_Assembly_OP04_D1_Night)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP04_D2_Morning)_:
+1 ShiftAssign(O006_L1_Assembly_D2_Morning)
+1 OpAssign(O006_L1_Assembly_OP04)
-1 OpInShift(O006_L1_Assembly_OP04_D2_Morning)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP04_D2_Afternoon)_:
+1 ShiftAssign(O006_L1_Assembly_D2_Afternoon)
+1 OpAssign(O006_L1_Assembly_OP04)
-1 OpInShift(O006_L1_Assembly_OP04_D2_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP04_D2_Night)_:
+1 ShiftAssign(O006_L1_Assembly_D2_Night)
+1 OpAssign(O006_L1_Assembly_OP04)
-1 OpInShift(O006_L1_Assembly_OP04_D2_Night)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP04_D3_Morning)_:
+1 ShiftAssign(O006_L1_Assembly_D3_Morning)
+1 OpAssign(O006_L1_Assembly_OP04)
-1 OpInShift(O006_L1_Assembly_OP04_D3_Morning)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP04_D3_Afternoon)_:
+1 ShiftAssign(O006_L1_Assembly_D3_Afternoon)
+1 OpAssign(O006_L1_Assembly_OP04)
-1 OpInShift(O006_L1_Assembly_OP04_D3_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP04_D3_Night)_:
+1 ShiftAssign(O006_L1_Assembly_D3_Night)
+1 OpAssign(O006_L1_Assembly_OP04)
-1 OpInShift(O006_L1_Assembly_OP04_D3_Night)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP04_D4_Morning)_:
+1 ShiftAssign(O006_L1_Assembly_D4_Morning)
+1 OpAssign(O006_L1_Assembly_OP04)
-1 OpInShift(O006_L1_Assembly_OP04_D4_Morning)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP04_D4_Afternoon)_:
+1 ShiftAssign(O006_L1_Assembly_D4_Afternoon)
+1 OpAssign(O006_L1_Assembly_OP04)
-1 OpInShift(O006_L1_Assembly_OP04_D4_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP04_D4_Night)_:
+1 ShiftAssign(O006_L1_Assembly_D4_Night)
+1 OpAssign(O006_L1_Assembly_OP04)
-1 OpInShift(O006_L1_Assembly_OP04_D4_Night)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP04_D5_Morning)_:
+1 ShiftAssign(O006_L1_Assembly_D5_Morning)
+1 OpAssign(O006_L1_Assembly_OP04)
-1 OpInShift(O006_L1_Assembly_OP04_D5_Morning)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP04_D5_Afternoon)_:
+1 ShiftAssign(O006_L1_Assembly_D5_Afternoon)
+1 OpAssign(O006_L1_Assembly_OP04)
-1 OpInShift(O006_L1_Assembly_OP04_D5_Afternoon)
<= 1

c_u_C_OPR4_AndLower(O006_L1_Assembly_OP04_D5_Night)_:
+1 ShiftAssign(O006_L1_Assembly_D5_Night)
+1 OpAssign(O006_L1_Assembly_OP04)
-1 OpInShift(O006_L1_Assembly_OP04_D5_Night)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP02_D1_Morning)_:
+1 OpInShift(O001_L1_Cutting_OP02_D1_Morning)
+1 OpInShift(O001_L1_Assembly_OP02_D1_Morning)
+1 OpInShift(O002_L1_Assembly_OP02_D1_Morning)
+1 OpInShift(O003_L1_Assembly_OP02_D1_Morning)
+1 OpInShift(O004_L1_Assembly_OP02_D1_Morning)
+1 OpInShift(O004_L2_Assembly_OP02_D1_Morning)
+1 OpInShift(O005_L1_Assembly_OP02_D1_Morning)
+1 OpInShift(O006_L1_Assembly_OP02_D1_Morning)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP02_D1_Afternoon)_:
+1 OpInShift(O001_L1_Cutting_OP02_D1_Afternoon)
+1 OpInShift(O001_L1_Assembly_OP02_D1_Afternoon)
+1 OpInShift(O002_L1_Assembly_OP02_D1_Afternoon)
+1 OpInShift(O003_L1_Assembly_OP02_D1_Afternoon)
+1 OpInShift(O004_L1_Assembly_OP02_D1_Afternoon)
+1 OpInShift(O004_L2_Assembly_OP02_D1_Afternoon)
+1 OpInShift(O005_L1_Assembly_OP02_D1_Afternoon)
+1 OpInShift(O006_L1_Assembly_OP02_D1_Afternoon)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP02_D1_Night)_:
+1 OpInShift(O001_L1_Cutting_OP02_D1_Night)
+1 OpInShift(O001_L1_Assembly_OP02_D1_Night)
+1 OpInShift(O002_L1_Assembly_OP02_D1_Night)
+1 OpInShift(O003_L1_Assembly_OP02_D1_Night)
+1 OpInShift(O004_L1_Assembly_OP02_D1_Night)
+1 OpInShift(O004_L2_Assembly_OP02_D1_Night)
+1 OpInShift(O005_L1_Assembly_OP02_D1_Night)
+1 OpInShift(O006_L1_Assembly_OP02_D1_Night)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP02_D2_Morning)_:
+1 OpInShift(O001_L1_Cutting_OP02_D2_Morning)
+1 OpInShift(O001_L1_Assembly_OP02_D2_Morning)
+1 OpInShift(O002_L1_Assembly_OP02_D2_Morning)
+1 OpInShift(O003_L1_Assembly_OP02_D2_Morning)
+1 OpInShift(O004_L1_Assembly_OP02_D2_Morning)
+1 OpInShift(O004_L2_Assembly_OP02_D2_Morning)
+1 OpInShift(O005_L1_Assembly_OP02_D2_Morning)
+1 OpInShift(O006_L1_Assembly_OP02_D2_Morning)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP02_D2_Afternoon)_:
+1 OpInShift(O001_L1_Cutting_OP02_D2_Afternoon)
+1 OpInShift(O001_L1_Assembly_OP02_D2_Afternoon)
+1 OpInShift(O002_L1_Assembly_OP02_D2_Afternoon)
+1 OpInShift(O003_L1_Assembly_OP02_D2_Afternoon)
+1 OpInShift(O004_L1_Assembly_OP02_D2_Afternoon)
+1 OpInShift(O004_L2_Assembly_OP02_D2_Afternoon)
+1 OpInShift(O005_L1_Assembly_OP02_D2_Afternoon)
+1 OpInShift(O006_L1_Assembly_OP02_D2_Afternoon)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP02_D2_Night)_:
+1 OpInShift(O001_L1_Cutting_OP02_D2_Night)
+1 OpInShift(O001_L1_Assembly_OP02_D2_Night)
+1 OpInShift(O002_L1_Assembly_OP02_D2_Night)
+1 OpInShift(O003_L1_Assembly_OP02_D2_Night)
+1 OpInShift(O004_L1_Assembly_OP02_D2_Night)
+1 OpInShift(O004_L2_Assembly_OP02_D2_Night)
+1 OpInShift(O005_L1_Assembly_OP02_D2_Night)
+1 OpInShift(O006_L1_Assembly_OP02_D2_Night)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP02_D3_Morning)_:
+1 OpInShift(O001_L1_Cutting_OP02_D3_Morning)
+1 OpInShift(O001_L1_Assembly_OP02_D3_Morning)
+1 OpInShift(O002_L1_Assembly_OP02_D3_Morning)
+1 OpInShift(O003_L1_Assembly_OP02_D3_Morning)
+1 OpInShift(O004_L1_Assembly_OP02_D3_Morning)
+1 OpInShift(O004_L2_Assembly_OP02_D3_Morning)
+1 OpInShift(O005_L1_Assembly_OP02_D3_Morning)
+1 OpInShift(O006_L1_Assembly_OP02_D3_Morning)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP02_D3_Afternoon)_:
+1 OpInShift(O001_L1_Cutting_OP02_D3_Afternoon)
+1 OpInShift(O001_L1_Assembly_OP02_D3_Afternoon)
+1 OpInShift(O002_L1_Assembly_OP02_D3_Afternoon)
+1 OpInShift(O003_L1_Assembly_OP02_D3_Afternoon)
+1 OpInShift(O004_L1_Assembly_OP02_D3_Afternoon)
+1 OpInShift(O004_L2_Assembly_OP02_D3_Afternoon)
+1 OpInShift(O005_L1_Assembly_OP02_D3_Afternoon)
+1 OpInShift(O006_L1_Assembly_OP02_D3_Afternoon)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP02_D3_Night)_:
+1 OpInShift(O001_L1_Cutting_OP02_D3_Night)
+1 OpInShift(O001_L1_Assembly_OP02_D3_Night)
+1 OpInShift(O002_L1_Assembly_OP02_D3_Night)
+1 OpInShift(O003_L1_Assembly_OP02_D3_Night)
+1 OpInShift(O004_L1_Assembly_OP02_D3_Night)
+1 OpInShift(O004_L2_Assembly_OP02_D3_Night)
+1 OpInShift(O005_L1_Assembly_OP02_D3_Night)
+1 OpInShift(O006_L1_Assembly_OP02_D3_Night)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP02_D4_Morning)_:
+1 OpInShift(O001_L1_Cutting_OP02_D4_Morning)
+1 OpInShift(O001_L1_Assembly_OP02_D4_Morning)
+1 OpInShift(O002_L1_Assembly_OP02_D4_Morning)
+1 OpInShift(O003_L1_Assembly_OP02_D4_Morning)
+1 OpInShift(O004_L1_Assembly_OP02_D4_Morning)
+1 OpInShift(O004_L2_Assembly_OP02_D4_Morning)
+1 OpInShift(O005_L1_Assembly_OP02_D4_Morning)
+1 OpInShift(O006_L1_Assembly_OP02_D4_Morning)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP02_D4_Afternoon)_:
+1 OpInShift(O001_L1_Cutting_OP02_D4_Afternoon)
+1 OpInShift(O001_L1_Assembly_OP02_D4_Afternoon)
+1 OpInShift(O002_L1_Assembly_OP02_D4_Afternoon)
+1 OpInShift(O003_L1_Assembly_OP02_D4_Afternoon)
+1 OpInShift(O004_L1_Assembly_OP02_D4_Afternoon)
+1 OpInShift(O004_L2_Assembly_OP02_D4_Afternoon)
+1 OpInShift(O005_L1_Assembly_OP02_D4_Afternoon)
+1 OpInShift(O006_L1_Assembly_OP02_D4_Afternoon)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP02_D4_Night)_:
+1 OpInShift(O001_L1_Cutting_OP02_D4_Night)
+1 OpInShift(O001_L1_Assembly_OP02_D4_Night)
+1 OpInShift(O002_L1_Assembly_OP02_D4_Night)
+1 OpInShift(O003_L1_Assembly_OP02_D4_Night)
+1 OpInShift(O004_L1_Assembly_OP02_D4_Night)
+1 OpInShift(O004_L2_Assembly_OP02_D4_Night)
+1 OpInShift(O005_L1_Assembly_OP02_D4_Night)
+1 OpInShift(O006_L1_Assembly_OP02_D4_Night)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP02_D5_Morning)_:
+1 OpInShift(O001_L1_Cutting_OP02_D5_Morning)
+1 OpInShift(O001_L1_Assembly_OP02_D5_Morning)
+1 OpInShift(O002_L1_Assembly_OP02_D5_Morning)
+1 OpInShift(O003_L1_Assembly_OP02_D5_Morning)
+1 OpInShift(O004_L1_Assembly_OP02_D5_Morning)
+1 OpInShift(O004_L2_Assembly_OP02_D5_Morning)
+1 OpInShift(O005_L1_Assembly_OP02_D5_Morning)
+1 OpInShift(O006_L1_Assembly_OP02_D5_Morning)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP02_D5_Afternoon)_:
+1 OpInShift(O001_L1_Cutting_OP02_D5_Afternoon)
+1 OpInShift(O001_L1_Assembly_OP02_D5_Afternoon)
+1 OpInShift(O002_L1_Assembly_OP02_D5_Afternoon)
+1 OpInShift(O003_L1_Assembly_OP02_D5_Afternoon)
+1 OpInShift(O004_L1_Assembly_OP02_D5_Afternoon)
+1 OpInShift(O004_L2_Assembly_OP02_D5_Afternoon)
+1 OpInShift(O005_L1_Assembly_OP02_D5_Afternoon)
+1 OpInShift(O006_L1_Assembly_OP02_D5_Afternoon)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP02_D5_Night)_:
+1 OpInShift(O001_L1_Cutting_OP02_D5_Night)
+1 OpInShift(O001_L1_Assembly_OP02_D5_Night)
+1 OpInShift(O002_L1_Assembly_OP02_D5_Night)
+1 OpInShift(O003_L1_Assembly_OP02_D5_Night)
+1 OpInShift(O004_L1_Assembly_OP02_D5_Night)
+1 OpInShift(O004_L2_Assembly_OP02_D5_Night)
+1 OpInShift(O005_L1_Assembly_OP02_D5_Night)
+1 OpInShift(O006_L1_Assembly_OP02_D5_Night)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP03_D1_Morning)_:
+1 OpInShift(O001_L1_Cutting_OP03_D1_Morning)
+1 OpInShift(O002_L1_Cutting_OP03_D1_Morning)
+1 OpInShift(O003_L1_Cutting_OP03_D1_Morning)
+1 OpInShift(O004_L1_Cutting_OP03_D1_Morning)
+1 OpInShift(O004_L2_Cutting_OP03_D1_Morning)
+1 OpInShift(O005_L1_Cutting_OP03_D1_Morning)
+1 OpInShift(O006_L1_Cutting_OP03_D1_Morning)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP03_D1_Afternoon)_:
+1 OpInShift(O001_L1_Cutting_OP03_D1_Afternoon)
+1 OpInShift(O002_L1_Cutting_OP03_D1_Afternoon)
+1 OpInShift(O003_L1_Cutting_OP03_D1_Afternoon)
+1 OpInShift(O004_L1_Cutting_OP03_D1_Afternoon)
+1 OpInShift(O004_L2_Cutting_OP03_D1_Afternoon)
+1 OpInShift(O005_L1_Cutting_OP03_D1_Afternoon)
+1 OpInShift(O006_L1_Cutting_OP03_D1_Afternoon)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP03_D1_Night)_:
+1 OpInShift(O001_L1_Cutting_OP03_D1_Night)
+1 OpInShift(O002_L1_Cutting_OP03_D1_Night)
+1 OpInShift(O003_L1_Cutting_OP03_D1_Night)
+1 OpInShift(O004_L1_Cutting_OP03_D1_Night)
+1 OpInShift(O004_L2_Cutting_OP03_D1_Night)
+1 OpInShift(O005_L1_Cutting_OP03_D1_Night)
+1 OpInShift(O006_L1_Cutting_OP03_D1_Night)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP03_D2_Morning)_:
+1 OpInShift(O001_L1_Cutting_OP03_D2_Morning)
+1 OpInShift(O002_L1_Cutting_OP03_D2_Morning)
+1 OpInShift(O003_L1_Cutting_OP03_D2_Morning)
+1 OpInShift(O004_L1_Cutting_OP03_D2_Morning)
+1 OpInShift(O004_L2_Cutting_OP03_D2_Morning)
+1 OpInShift(O005_L1_Cutting_OP03_D2_Morning)
+1 OpInShift(O006_L1_Cutting_OP03_D2_Morning)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP03_D2_Afternoon)_:
+1 OpInShift(O001_L1_Cutting_OP03_D2_Afternoon)
+1 OpInShift(O002_L1_Cutting_OP03_D2_Afternoon)
+1 OpInShift(O003_L1_Cutting_OP03_D2_Afternoon)
+1 OpInShift(O004_L1_Cutting_OP03_D2_Afternoon)
+1 OpInShift(O004_L2_Cutting_OP03_D2_Afternoon)
+1 OpInShift(O005_L1_Cutting_OP03_D2_Afternoon)
+1 OpInShift(O006_L1_Cutting_OP03_D2_Afternoon)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP03_D2_Night)_:
+1 OpInShift(O001_L1_Cutting_OP03_D2_Night)
+1 OpInShift(O002_L1_Cutting_OP03_D2_Night)
+1 OpInShift(O003_L1_Cutting_OP03_D2_Night)
+1 OpInShift(O004_L1_Cutting_OP03_D2_Night)
+1 OpInShift(O004_L2_Cutting_OP03_D2_Night)
+1 OpInShift(O005_L1_Cutting_OP03_D2_Night)
+1 OpInShift(O006_L1_Cutting_OP03_D2_Night)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP03_D3_Morning)_:
+1 OpInShift(O001_L1_Cutting_OP03_D3_Morning)
+1 OpInShift(O002_L1_Cutting_OP03_D3_Morning)
+1 OpInShift(O003_L1_Cutting_OP03_D3_Morning)
+1 OpInShift(O004_L1_Cutting_OP03_D3_Morning)
+1 OpInShift(O004_L2_Cutting_OP03_D3_Morning)
+1 OpInShift(O005_L1_Cutting_OP03_D3_Morning)
+1 OpInShift(O006_L1_Cutting_OP03_D3_Morning)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP03_D3_Afternoon)_:
+1 OpInShift(O001_L1_Cutting_OP03_D3_Afternoon)
+1 OpInShift(O002_L1_Cutting_OP03_D3_Afternoon)
+1 OpInShift(O003_L1_Cutting_OP03_D3_Afternoon)
+1 OpInShift(O004_L1_Cutting_OP03_D3_Afternoon)
+1 OpInShift(O004_L2_Cutting_OP03_D3_Afternoon)
+1 OpInShift(O005_L1_Cutting_OP03_D3_Afternoon)
+1 OpInShift(O006_L1_Cutting_OP03_D3_Afternoon)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP03_D3_Night)_:
+1 OpInShift(O001_L1_Cutting_OP03_D3_Night)
+1 OpInShift(O002_L1_Cutting_OP03_D3_Night)
+1 OpInShift(O003_L1_Cutting_OP03_D3_Night)
+1 OpInShift(O004_L1_Cutting_OP03_D3_Night)
+1 OpInShift(O004_L2_Cutting_OP03_D3_Night)
+1 OpInShift(O005_L1_Cutting_OP03_D3_Night)
+1 OpInShift(O006_L1_Cutting_OP03_D3_Night)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP03_D4_Morning)_:
+1 OpInShift(O001_L1_Cutting_OP03_D4_Morning)
+1 OpInShift(O002_L1_Cutting_OP03_D4_Morning)
+1 OpInShift(O003_L1_Cutting_OP03_D4_Morning)
+1 OpInShift(O004_L1_Cutting_OP03_D4_Morning)
+1 OpInShift(O004_L2_Cutting_OP03_D4_Morning)
+1 OpInShift(O005_L1_Cutting_OP03_D4_Morning)
+1 OpInShift(O006_L1_Cutting_OP03_D4_Morning)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP03_D4_Afternoon)_:
+1 OpInShift(O001_L1_Cutting_OP03_D4_Afternoon)
+1 OpInShift(O002_L1_Cutting_OP03_D4_Afternoon)
+1 OpInShift(O003_L1_Cutting_OP03_D4_Afternoon)
+1 OpInShift(O004_L1_Cutting_OP03_D4_Afternoon)
+1 OpInShift(O004_L2_Cutting_OP03_D4_Afternoon)
+1 OpInShift(O005_L1_Cutting_OP03_D4_Afternoon)
+1 OpInShift(O006_L1_Cutting_OP03_D4_Afternoon)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP03_D4_Night)_:
+1 OpInShift(O001_L1_Cutting_OP03_D4_Night)
+1 OpInShift(O002_L1_Cutting_OP03_D4_Night)
+1 OpInShift(O003_L1_Cutting_OP03_D4_Night)
+1 OpInShift(O004_L1_Cutting_OP03_D4_Night)
+1 OpInShift(O004_L2_Cutting_OP03_D4_Night)
+1 OpInShift(O005_L1_Cutting_OP03_D4_Night)
+1 OpInShift(O006_L1_Cutting_OP03_D4_Night)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP03_D5_Morning)_:
+1 OpInShift(O001_L1_Cutting_OP03_D5_Morning)
+1 OpInShift(O002_L1_Cutting_OP03_D5_Morning)
+1 OpInShift(O003_L1_Cutting_OP03_D5_Morning)
+1 OpInShift(O004_L1_Cutting_OP03_D5_Morning)
+1 OpInShift(O004_L2_Cutting_OP03_D5_Morning)
+1 OpInShift(O005_L1_Cutting_OP03_D5_Morning)
+1 OpInShift(O006_L1_Cutting_OP03_D5_Morning)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP03_D5_Afternoon)_:
+1 OpInShift(O001_L1_Cutting_OP03_D5_Afternoon)
+1 OpInShift(O002_L1_Cutting_OP03_D5_Afternoon)
+1 OpInShift(O003_L1_Cutting_OP03_D5_Afternoon)
+1 OpInShift(O004_L1_Cutting_OP03_D5_Afternoon)
+1 OpInShift(O004_L2_Cutting_OP03_D5_Afternoon)
+1 OpInShift(O005_L1_Cutting_OP03_D5_Afternoon)
+1 OpInShift(O006_L1_Cutting_OP03_D5_Afternoon)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP03_D5_Night)_:
+1 OpInShift(O001_L1_Cutting_OP03_D5_Night)
+1 OpInShift(O002_L1_Cutting_OP03_D5_Night)
+1 OpInShift(O003_L1_Cutting_OP03_D5_Night)
+1 OpInShift(O004_L1_Cutting_OP03_D5_Night)
+1 OpInShift(O004_L2_Cutting_OP03_D5_Night)
+1 OpInShift(O005_L1_Cutting_OP03_D5_Night)
+1 OpInShift(O006_L1_Cutting_OP03_D5_Night)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP04_D1_Morning)_:
+1 OpInShift(O001_L1_Cutting_OP04_D1_Morning)
+1 OpInShift(O001_L1_Assembly_OP04_D1_Morning)
+1 OpInShift(O002_L1_Cutting_OP04_D1_Morning)
+1 OpInShift(O002_L1_Assembly_OP04_D1_Morning)
+1 OpInShift(O003_L1_Cutting_OP04_D1_Morning)
+1 OpInShift(O003_L1_Assembly_OP04_D1_Morning)
+1 OpInShift(O004_L1_Cutting_OP04_D1_Morning)
+1 OpInShift(O004_L1_Assembly_OP04_D1_Morning)
+1 OpInShift(O004_L2_Cutting_OP04_D1_Morning)
+1 OpInShift(O004_L2_Assembly_OP04_D1_Morning)
+1 OpInShift(O005_L1_Cutting_OP04_D1_Morning)
+1 OpInShift(O005_L1_Assembly_OP04_D1_Morning)
+1 OpInShift(O006_L1_Cutting_OP04_D1_Morning)
+1 OpInShift(O006_L1_Assembly_OP04_D1_Morning)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP04_D1_Afternoon)_:
+1 OpInShift(O001_L1_Cutting_OP04_D1_Afternoon)
+1 OpInShift(O001_L1_Assembly_OP04_D1_Afternoon)
+1 OpInShift(O002_L1_Cutting_OP04_D1_Afternoon)
+1 OpInShift(O002_L1_Assembly_OP04_D1_Afternoon)
+1 OpInShift(O003_L1_Cutting_OP04_D1_Afternoon)
+1 OpInShift(O003_L1_Assembly_OP04_D1_Afternoon)
+1 OpInShift(O004_L1_Cutting_OP04_D1_Afternoon)
+1 OpInShift(O004_L1_Assembly_OP04_D1_Afternoon)
+1 OpInShift(O004_L2_Cutting_OP04_D1_Afternoon)
+1 OpInShift(O004_L2_Assembly_OP04_D1_Afternoon)
+1 OpInShift(O005_L1_Cutting_OP04_D1_Afternoon)
+1 OpInShift(O005_L1_Assembly_OP04_D1_Afternoon)
+1 OpInShift(O006_L1_Cutting_OP04_D1_Afternoon)
+1 OpInShift(O006_L1_Assembly_OP04_D1_Afternoon)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP04_D1_Night)_:
+1 OpInShift(O001_L1_Cutting_OP04_D1_Night)
+1 OpInShift(O001_L1_Assembly_OP04_D1_Night)
+1 OpInShift(O002_L1_Cutting_OP04_D1_Night)
+1 OpInShift(O002_L1_Assembly_OP04_D1_Night)
+1 OpInShift(O003_L1_Cutting_OP04_D1_Night)
+1 OpInShift(O003_L1_Assembly_OP04_D1_Night)
+1 OpInShift(O004_L1_Cutting_OP04_D1_Night)
+1 OpInShift(O004_L1_Assembly_OP04_D1_Night)
+1 OpInShift(O004_L2_Cutting_OP04_D1_Night)
+1 OpInShift(O004_L2_Assembly_OP04_D1_Night)
+1 OpInShift(O005_L1_Cutting_OP04_D1_Night)
+1 OpInShift(O005_L1_Assembly_OP04_D1_Night)
+1 OpInShift(O006_L1_Cutting_OP04_D1_Night)
+1 OpInShift(O006_L1_Assembly_OP04_D1_Night)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP04_D2_Morning)_:
+1 OpInShift(O001_L1_Cutting_OP04_D2_Morning)
+1 OpInShift(O001_L1_Assembly_OP04_D2_Morning)
+1 OpInShift(O002_L1_Cutting_OP04_D2_Morning)
+1 OpInShift(O002_L1_Assembly_OP04_D2_Morning)
+1 OpInShift(O003_L1_Cutting_OP04_D2_Morning)
+1 OpInShift(O003_L1_Assembly_OP04_D2_Morning)
+1 OpInShift(O004_L1_Cutting_OP04_D2_Morning)
+1 OpInShift(O004_L1_Assembly_OP04_D2_Morning)
+1 OpInShift(O004_L2_Cutting_OP04_D2_Morning)
+1 OpInShift(O004_L2_Assembly_OP04_D2_Morning)
+1 OpInShift(O005_L1_Cutting_OP04_D2_Morning)
+1 OpInShift(O005_L1_Assembly_OP04_D2_Morning)
+1 OpInShift(O006_L1_Cutting_OP04_D2_Morning)
+1 OpInShift(O006_L1_Assembly_OP04_D2_Morning)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP04_D2_Afternoon)_:
+1 OpInShift(O001_L1_Cutting_OP04_D2_Afternoon)
+1 OpInShift(O001_L1_Assembly_OP04_D2_Afternoon)
+1 OpInShift(O002_L1_Cutting_OP04_D2_Afternoon)
+1 OpInShift(O002_L1_Assembly_OP04_D2_Afternoon)
+1 OpInShift(O003_L1_Cutting_OP04_D2_Afternoon)
+1 OpInShift(O003_L1_Assembly_OP04_D2_Afternoon)
+1 OpInShift(O004_L1_Cutting_OP04_D2_Afternoon)
+1 OpInShift(O004_L1_Assembly_OP04_D2_Afternoon)
+1 OpInShift(O004_L2_Cutting_OP04_D2_Afternoon)
+1 OpInShift(O004_L2_Assembly_OP04_D2_Afternoon)
+1 OpInShift(O005_L1_Cutting_OP04_D2_Afternoon)
+1 OpInShift(O005_L1_Assembly_OP04_D2_Afternoon)
+1 OpInShift(O006_L1_Cutting_OP04_D2_Afternoon)
+1 OpInShift(O006_L1_Assembly_OP04_D2_Afternoon)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP04_D2_Night)_:
+1 OpInShift(O001_L1_Cutting_OP04_D2_Night)
+1 OpInShift(O001_L1_Assembly_OP04_D2_Night)
+1 OpInShift(O002_L1_Cutting_OP04_D2_Night)
+1 OpInShift(O002_L1_Assembly_OP04_D2_Night)
+1 OpInShift(O003_L1_Cutting_OP04_D2_Night)
+1 OpInShift(O003_L1_Assembly_OP04_D2_Night)
+1 OpInShift(O004_L1_Cutting_OP04_D2_Night)
+1 OpInShift(O004_L1_Assembly_OP04_D2_Night)
+1 OpInShift(O004_L2_Cutting_OP04_D2_Night)
+1 OpInShift(O004_L2_Assembly_OP04_D2_Night)
+1 OpInShift(O005_L1_Cutting_OP04_D2_Night)
+1 OpInShift(O005_L1_Assembly_OP04_D2_Night)
+1 OpInShift(O006_L1_Cutting_OP04_D2_Night)
+1 OpInShift(O006_L1_Assembly_OP04_D2_Night)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP04_D3_Morning)_:
+1 OpInShift(O001_L1_Cutting_OP04_D3_Morning)
+1 OpInShift(O001_L1_Assembly_OP04_D3_Morning)
+1 OpInShift(O002_L1_Cutting_OP04_D3_Morning)
+1 OpInShift(O002_L1_Assembly_OP04_D3_Morning)
+1 OpInShift(O003_L1_Cutting_OP04_D3_Morning)
+1 OpInShift(O003_L1_Assembly_OP04_D3_Morning)
+1 OpInShift(O004_L1_Cutting_OP04_D3_Morning)
+1 OpInShift(O004_L1_Assembly_OP04_D3_Morning)
+1 OpInShift(O004_L2_Cutting_OP04_D3_Morning)
+1 OpInShift(O004_L2_Assembly_OP04_D3_Morning)
+1 OpInShift(O005_L1_Cutting_OP04_D3_Morning)
+1 OpInShift(O005_L1_Assembly_OP04_D3_Morning)
+1 OpInShift(O006_L1_Cutting_OP04_D3_Morning)
+1 OpInShift(O006_L1_Assembly_OP04_D3_Morning)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP04_D3_Afternoon)_:
+1 OpInShift(O001_L1_Cutting_OP04_D3_Afternoon)
+1 OpInShift(O001_L1_Assembly_OP04_D3_Afternoon)
+1 OpInShift(O002_L1_Cutting_OP04_D3_Afternoon)
+1 OpInShift(O002_L1_Assembly_OP04_D3_Afternoon)
+1 OpInShift(O003_L1_Cutting_OP04_D3_Afternoon)
+1 OpInShift(O003_L1_Assembly_OP04_D3_Afternoon)
+1 OpInShift(O004_L1_Cutting_OP04_D3_Afternoon)
+1 OpInShift(O004_L1_Assembly_OP04_D3_Afternoon)
+1 OpInShift(O004_L2_Cutting_OP04_D3_Afternoon)
+1 OpInShift(O004_L2_Assembly_OP04_D3_Afternoon)
+1 OpInShift(O005_L1_Cutting_OP04_D3_Afternoon)
+1 OpInShift(O005_L1_Assembly_OP04_D3_Afternoon)
+1 OpInShift(O006_L1_Cutting_OP04_D3_Afternoon)
+1 OpInShift(O006_L1_Assembly_OP04_D3_Afternoon)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP04_D3_Night)_:
+1 OpInShift(O001_L1_Cutting_OP04_D3_Night)
+1 OpInShift(O001_L1_Assembly_OP04_D3_Night)
+1 OpInShift(O002_L1_Cutting_OP04_D3_Night)
+1 OpInShift(O002_L1_Assembly_OP04_D3_Night)
+1 OpInShift(O003_L1_Cutting_OP04_D3_Night)
+1 OpInShift(O003_L1_Assembly_OP04_D3_Night)
+1 OpInShift(O004_L1_Cutting_OP04_D3_Night)
+1 OpInShift(O004_L1_Assembly_OP04_D3_Night)
+1 OpInShift(O004_L2_Cutting_OP04_D3_Night)
+1 OpInShift(O004_L2_Assembly_OP04_D3_Night)
+1 OpInShift(O005_L1_Cutting_OP04_D3_Night)
+1 OpInShift(O005_L1_Assembly_OP04_D3_Night)
+1 OpInShift(O006_L1_Cutting_OP04_D3_Night)
+1 OpInShift(O006_L1_Assembly_OP04_D3_Night)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP04_D4_Morning)_:
+1 OpInShift(O001_L1_Cutting_OP04_D4_Morning)
+1 OpInShift(O001_L1_Assembly_OP04_D4_Morning)
+1 OpInShift(O002_L1_Cutting_OP04_D4_Morning)
+1 OpInShift(O002_L1_Assembly_OP04_D4_Morning)
+1 OpInShift(O003_L1_Cutting_OP04_D4_Morning)
+1 OpInShift(O003_L1_Assembly_OP04_D4_Morning)
+1 OpInShift(O004_L1_Cutting_OP04_D4_Morning)
+1 OpInShift(O004_L1_Assembly_OP04_D4_Morning)
+1 OpInShift(O004_L2_Cutting_OP04_D4_Morning)
+1 OpInShift(O004_L2_Assembly_OP04_D4_Morning)
+1 OpInShift(O005_L1_Cutting_OP04_D4_Morning)
+1 OpInShift(O005_L1_Assembly_OP04_D4_Morning)
+1 OpInShift(O006_L1_Cutting_OP04_D4_Morning)
+1 OpInShift(O006_L1_Assembly_OP04_D4_Morning)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP04_D4_Afternoon)_:
+1 OpInShift(O001_L1_Cutting_OP04_D4_Afternoon)
+1 OpInShift(O001_L1_Assembly_OP04_D4_Afternoon)
+1 OpInShift(O002_L1_Cutting_OP04_D4_Afternoon)
+1 OpInShift(O002_L1_Assembly_OP04_D4_Afternoon)
+1 OpInShift(O003_L1_Cutting_OP04_D4_Afternoon)
+1 OpInShift(O003_L1_Assembly_OP04_D4_Afternoon)
+1 OpInShift(O004_L1_Cutting_OP04_D4_Afternoon)
+1 OpInShift(O004_L1_Assembly_OP04_D4_Afternoon)
+1 OpInShift(O004_L2_Cutting_OP04_D4_Afternoon)
+1 OpInShift(O004_L2_Assembly_OP04_D4_Afternoon)
+1 OpInShift(O005_L1_Cutting_OP04_D4_Afternoon)
+1 OpInShift(O005_L1_Assembly_OP04_D4_Afternoon)
+1 OpInShift(O006_L1_Cutting_OP04_D4_Afternoon)
+1 OpInShift(O006_L1_Assembly_OP04_D4_Afternoon)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP04_D4_Night)_:
+1 OpInShift(O001_L1_Cutting_OP04_D4_Night)
+1 OpInShift(O001_L1_Assembly_OP04_D4_Night)
+1 OpInShift(O002_L1_Cutting_OP04_D4_Night)
+1 OpInShift(O002_L1_Assembly_OP04_D4_Night)
+1 OpInShift(O003_L1_Cutting_OP04_D4_Night)
+1 OpInShift(O003_L1_Assembly_OP04_D4_Night)
+1 OpInShift(O004_L1_Cutting_OP04_D4_Night)
+1 OpInShift(O004_L1_Assembly_OP04_D4_Night)
+1 OpInShift(O004_L2_Cutting_OP04_D4_Night)
+1 OpInShift(O004_L2_Assembly_OP04_D4_Night)
+1 OpInShift(O005_L1_Cutting_OP04_D4_Night)
+1 OpInShift(O005_L1_Assembly_OP04_D4_Night)
+1 OpInShift(O006_L1_Cutting_OP04_D4_Night)
+1 OpInShift(O006_L1_Assembly_OP04_D4_Night)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP04_D5_Morning)_:
+1 OpInShift(O001_L1_Cutting_OP04_D5_Morning)
+1 OpInShift(O001_L1_Assembly_OP04_D5_Morning)
+1 OpInShift(O002_L1_Cutting_OP04_D5_Morning)
+1 OpInShift(O002_L1_Assembly_OP04_D5_Morning)
+1 OpInShift(O003_L1_Cutting_OP04_D5_Morning)
+1 OpInShift(O003_L1_Assembly_OP04_D5_Morning)
+1 OpInShift(O004_L1_Cutting_OP04_D5_Morning)
+1 OpInShift(O004_L1_Assembly_OP04_D5_Morning)
+1 OpInShift(O004_L2_Cutting_OP04_D5_Morning)
+1 OpInShift(O004_L2_Assembly_OP04_D5_Morning)
+1 OpInShift(O005_L1_Cutting_OP04_D5_Morning)
+1 OpInShift(O005_L1_Assembly_OP04_D5_Morning)
+1 OpInShift(O006_L1_Cutting_OP04_D5_Morning)
+1 OpInShift(O006_L1_Assembly_OP04_D5_Morning)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP04_D5_Afternoon)_:
+1 OpInShift(O001_L1_Cutting_OP04_D5_Afternoon)
+1 OpInShift(O001_L1_Assembly_OP04_D5_Afternoon)
+1 OpInShift(O002_L1_Cutting_OP04_D5_Afternoon)
+1 OpInShift(O002_L1_Assembly_OP04_D5_Afternoon)
+1 OpInShift(O003_L1_Cutting_OP04_D5_Afternoon)
+1 OpInShift(O003_L1_Assembly_OP04_D5_Afternoon)
+1 OpInShift(O004_L1_Cutting_OP04_D5_Afternoon)
+1 OpInShift(O004_L1_Assembly_OP04_D5_Afternoon)
+1 OpInShift(O004_L2_Cutting_OP04_D5_Afternoon)
+1 OpInShift(O004_L2_Assembly_OP04_D5_Afternoon)
+1 OpInShift(O005_L1_Cutting_OP04_D5_Afternoon)
+1 OpInShift(O005_L1_Assembly_OP04_D5_Afternoon)
+1 OpInShift(O006_L1_Cutting_OP04_D5_Afternoon)
+1 OpInShift(O006_L1_Assembly_OP04_D5_Afternoon)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP04_D5_Night)_:
+1 OpInShift(O001_L1_Cutting_OP04_D5_Night)
+1 OpInShift(O001_L1_Assembly_OP04_D5_Night)
+1 OpInShift(O002_L1_Cutting_OP04_D5_Night)
+1 OpInShift(O002_L1_Assembly_OP04_D5_Night)
+1 OpInShift(O003_L1_Cutting_OP04_D5_Night)
+1 OpInShift(O003_L1_Assembly_OP04_D5_Night)
+1 OpInShift(O004_L1_Cutting_OP04_D5_Night)
+1 OpInShift(O004_L1_Assembly_OP04_D5_Night)
+1 OpInShift(O004_L2_Cutting_OP04_D5_Night)
+1 OpInShift(O004_L2_Assembly_OP04_D5_Night)
+1 OpInShift(O005_L1_Cutting_OP04_D5_Night)
+1 OpInShift(O005_L1_Assembly_OP04_D5_Night)
+1 OpInShift(O006_L1_Cutting_OP04_D5_Night)
+1 OpInShift(O006_L1_Assembly_OP04_D5_Night)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP01_D1_Morning)_:
+1 OpInShift(O001_L1_Assembly_OP01_D1_Morning)
+1 OpInShift(O002_L1_Cutting_OP01_D1_Morning)
+1 OpInShift(O002_L1_Assembly_OP01_D1_Morning)
+1 OpInShift(O003_L1_Cutting_OP01_D1_Morning)
+1 OpInShift(O003_L1_Assembly_OP01_D1_Morning)
+1 OpInShift(O004_L1_Cutting_OP01_D1_Morning)
+1 OpInShift(O004_L1_Assembly_OP01_D1_Morning)
+1 OpInShift(O004_L2_Cutting_OP01_D1_Morning)
+1 OpInShift(O004_L2_Assembly_OP01_D1_Morning)
+1 OpInShift(O005_L1_Cutting_OP01_D1_Morning)
+1 OpInShift(O005_L1_Assembly_OP01_D1_Morning)
+1 OpInShift(O006_L1_Cutting_OP01_D1_Morning)
+1 OpInShift(O006_L1_Assembly_OP01_D1_Morning)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP01_D1_Afternoon)_:
+1 OpInShift(O001_L1_Assembly_OP01_D1_Afternoon)
+1 OpInShift(O002_L1_Cutting_OP01_D1_Afternoon)
+1 OpInShift(O002_L1_Assembly_OP01_D1_Afternoon)
+1 OpInShift(O003_L1_Cutting_OP01_D1_Afternoon)
+1 OpInShift(O003_L1_Assembly_OP01_D1_Afternoon)
+1 OpInShift(O004_L1_Cutting_OP01_D1_Afternoon)
+1 OpInShift(O004_L1_Assembly_OP01_D1_Afternoon)
+1 OpInShift(O004_L2_Cutting_OP01_D1_Afternoon)
+1 OpInShift(O004_L2_Assembly_OP01_D1_Afternoon)
+1 OpInShift(O005_L1_Cutting_OP01_D1_Afternoon)
+1 OpInShift(O005_L1_Assembly_OP01_D1_Afternoon)
+1 OpInShift(O006_L1_Cutting_OP01_D1_Afternoon)
+1 OpInShift(O006_L1_Assembly_OP01_D1_Afternoon)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP01_D1_Night)_:
+1 OpInShift(O001_L1_Assembly_OP01_D1_Night)
+1 OpInShift(O002_L1_Cutting_OP01_D1_Night)
+1 OpInShift(O002_L1_Assembly_OP01_D1_Night)
+1 OpInShift(O003_L1_Cutting_OP01_D1_Night)
+1 OpInShift(O003_L1_Assembly_OP01_D1_Night)
+1 OpInShift(O004_L1_Cutting_OP01_D1_Night)
+1 OpInShift(O004_L1_Assembly_OP01_D1_Night)
+1 OpInShift(O004_L2_Cutting_OP01_D1_Night)
+1 OpInShift(O004_L2_Assembly_OP01_D1_Night)
+1 OpInShift(O005_L1_Cutting_OP01_D1_Night)
+1 OpInShift(O005_L1_Assembly_OP01_D1_Night)
+1 OpInShift(O006_L1_Cutting_OP01_D1_Night)
+1 OpInShift(O006_L1_Assembly_OP01_D1_Night)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP01_D2_Morning)_:
+1 OpInShift(O001_L1_Assembly_OP01_D2_Morning)
+1 OpInShift(O002_L1_Cutting_OP01_D2_Morning)
+1 OpInShift(O002_L1_Assembly_OP01_D2_Morning)
+1 OpInShift(O003_L1_Cutting_OP01_D2_Morning)
+1 OpInShift(O003_L1_Assembly_OP01_D2_Morning)
+1 OpInShift(O004_L1_Cutting_OP01_D2_Morning)
+1 OpInShift(O004_L1_Assembly_OP01_D2_Morning)
+1 OpInShift(O004_L2_Cutting_OP01_D2_Morning)
+1 OpInShift(O004_L2_Assembly_OP01_D2_Morning)
+1 OpInShift(O005_L1_Cutting_OP01_D2_Morning)
+1 OpInShift(O005_L1_Assembly_OP01_D2_Morning)
+1 OpInShift(O006_L1_Cutting_OP01_D2_Morning)
+1 OpInShift(O006_L1_Assembly_OP01_D2_Morning)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP01_D2_Afternoon)_:
+1 OpInShift(O001_L1_Assembly_OP01_D2_Afternoon)
+1 OpInShift(O002_L1_Cutting_OP01_D2_Afternoon)
+1 OpInShift(O002_L1_Assembly_OP01_D2_Afternoon)
+1 OpInShift(O003_L1_Cutting_OP01_D2_Afternoon)
+1 OpInShift(O003_L1_Assembly_OP01_D2_Afternoon)
+1 OpInShift(O004_L1_Cutting_OP01_D2_Afternoon)
+1 OpInShift(O004_L1_Assembly_OP01_D2_Afternoon)
+1 OpInShift(O004_L2_Cutting_OP01_D2_Afternoon)
+1 OpInShift(O004_L2_Assembly_OP01_D2_Afternoon)
+1 OpInShift(O005_L1_Cutting_OP01_D2_Afternoon)
+1 OpInShift(O005_L1_Assembly_OP01_D2_Afternoon)
+1 OpInShift(O006_L1_Cutting_OP01_D2_Afternoon)
+1 OpInShift(O006_L1_Assembly_OP01_D2_Afternoon)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP01_D2_Night)_:
+1 OpInShift(O001_L1_Assembly_OP01_D2_Night)
+1 OpInShift(O002_L1_Cutting_OP01_D2_Night)
+1 OpInShift(O002_L1_Assembly_OP01_D2_Night)
+1 OpInShift(O003_L1_Cutting_OP01_D2_Night)
+1 OpInShift(O003_L1_Assembly_OP01_D2_Night)
+1 OpInShift(O004_L1_Cutting_OP01_D2_Night)
+1 OpInShift(O004_L1_Assembly_OP01_D2_Night)
+1 OpInShift(O004_L2_Cutting_OP01_D2_Night)
+1 OpInShift(O004_L2_Assembly_OP01_D2_Night)
+1 OpInShift(O005_L1_Cutting_OP01_D2_Night)
+1 OpInShift(O005_L1_Assembly_OP01_D2_Night)
+1 OpInShift(O006_L1_Cutting_OP01_D2_Night)
+1 OpInShift(O006_L1_Assembly_OP01_D2_Night)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP01_D3_Morning)_:
+1 OpInShift(O001_L1_Assembly_OP01_D3_Morning)
+1 OpInShift(O002_L1_Cutting_OP01_D3_Morning)
+1 OpInShift(O002_L1_Assembly_OP01_D3_Morning)
+1 OpInShift(O003_L1_Cutting_OP01_D3_Morning)
+1 OpInShift(O003_L1_Assembly_OP01_D3_Morning)
+1 OpInShift(O004_L1_Cutting_OP01_D3_Morning)
+1 OpInShift(O004_L1_Assembly_OP01_D3_Morning)
+1 OpInShift(O004_L2_Cutting_OP01_D3_Morning)
+1 OpInShift(O004_L2_Assembly_OP01_D3_Morning)
+1 OpInShift(O005_L1_Cutting_OP01_D3_Morning)
+1 OpInShift(O005_L1_Assembly_OP01_D3_Morning)
+1 OpInShift(O006_L1_Cutting_OP01_D3_Morning)
+1 OpInShift(O006_L1_Assembly_OP01_D3_Morning)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP01_D3_Afternoon)_:
+1 OpInShift(O001_L1_Assembly_OP01_D3_Afternoon)
+1 OpInShift(O002_L1_Cutting_OP01_D3_Afternoon)
+1 OpInShift(O002_L1_Assembly_OP01_D3_Afternoon)
+1 OpInShift(O003_L1_Cutting_OP01_D3_Afternoon)
+1 OpInShift(O003_L1_Assembly_OP01_D3_Afternoon)
+1 OpInShift(O004_L1_Cutting_OP01_D3_Afternoon)
+1 OpInShift(O004_L1_Assembly_OP01_D3_Afternoon)
+1 OpInShift(O004_L2_Cutting_OP01_D3_Afternoon)
+1 OpInShift(O004_L2_Assembly_OP01_D3_Afternoon)
+1 OpInShift(O005_L1_Cutting_OP01_D3_Afternoon)
+1 OpInShift(O005_L1_Assembly_OP01_D3_Afternoon)
+1 OpInShift(O006_L1_Cutting_OP01_D3_Afternoon)
+1 OpInShift(O006_L1_Assembly_OP01_D3_Afternoon)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP01_D3_Night)_:
+1 OpInShift(O001_L1_Assembly_OP01_D3_Night)
+1 OpInShift(O002_L1_Cutting_OP01_D3_Night)
+1 OpInShift(O002_L1_Assembly_OP01_D3_Night)
+1 OpInShift(O003_L1_Cutting_OP01_D3_Night)
+1 OpInShift(O003_L1_Assembly_OP01_D3_Night)
+1 OpInShift(O004_L1_Cutting_OP01_D3_Night)
+1 OpInShift(O004_L1_Assembly_OP01_D3_Night)
+1 OpInShift(O004_L2_Cutting_OP01_D3_Night)
+1 OpInShift(O004_L2_Assembly_OP01_D3_Night)
+1 OpInShift(O005_L1_Cutting_OP01_D3_Night)
+1 OpInShift(O005_L1_Assembly_OP01_D3_Night)
+1 OpInShift(O006_L1_Cutting_OP01_D3_Night)
+1 OpInShift(O006_L1_Assembly_OP01_D3_Night)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP01_D4_Morning)_:
+1 OpInShift(O001_L1_Assembly_OP01_D4_Morning)
+1 OpInShift(O002_L1_Cutting_OP01_D4_Morning)
+1 OpInShift(O002_L1_Assembly_OP01_D4_Morning)
+1 OpInShift(O003_L1_Cutting_OP01_D4_Morning)
+1 OpInShift(O003_L1_Assembly_OP01_D4_Morning)
+1 OpInShift(O004_L1_Cutting_OP01_D4_Morning)
+1 OpInShift(O004_L1_Assembly_OP01_D4_Morning)
+1 OpInShift(O004_L2_Cutting_OP01_D4_Morning)
+1 OpInShift(O004_L2_Assembly_OP01_D4_Morning)
+1 OpInShift(O005_L1_Cutting_OP01_D4_Morning)
+1 OpInShift(O005_L1_Assembly_OP01_D4_Morning)
+1 OpInShift(O006_L1_Cutting_OP01_D4_Morning)
+1 OpInShift(O006_L1_Assembly_OP01_D4_Morning)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP01_D4_Afternoon)_:
+1 OpInShift(O001_L1_Assembly_OP01_D4_Afternoon)
+1 OpInShift(O002_L1_Cutting_OP01_D4_Afternoon)
+1 OpInShift(O002_L1_Assembly_OP01_D4_Afternoon)
+1 OpInShift(O003_L1_Cutting_OP01_D4_Afternoon)
+1 OpInShift(O003_L1_Assembly_OP01_D4_Afternoon)
+1 OpInShift(O004_L1_Cutting_OP01_D4_Afternoon)
+1 OpInShift(O004_L1_Assembly_OP01_D4_Afternoon)
+1 OpInShift(O004_L2_Cutting_OP01_D4_Afternoon)
+1 OpInShift(O004_L2_Assembly_OP01_D4_Afternoon)
+1 OpInShift(O005_L1_Cutting_OP01_D4_Afternoon)
+1 OpInShift(O005_L1_Assembly_OP01_D4_Afternoon)
+1 OpInShift(O006_L1_Cutting_OP01_D4_Afternoon)
+1 OpInShift(O006_L1_Assembly_OP01_D4_Afternoon)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP01_D4_Night)_:
+1 OpInShift(O001_L1_Assembly_OP01_D4_Night)
+1 OpInShift(O002_L1_Cutting_OP01_D4_Night)
+1 OpInShift(O002_L1_Assembly_OP01_D4_Night)
+1 OpInShift(O003_L1_Cutting_OP01_D4_Night)
+1 OpInShift(O003_L1_Assembly_OP01_D4_Night)
+1 OpInShift(O004_L1_Cutting_OP01_D4_Night)
+1 OpInShift(O004_L1_Assembly_OP01_D4_Night)
+1 OpInShift(O004_L2_Cutting_OP01_D4_Night)
+1 OpInShift(O004_L2_Assembly_OP01_D4_Night)
+1 OpInShift(O005_L1_Cutting_OP01_D4_Night)
+1 OpInShift(O005_L1_Assembly_OP01_D4_Night)
+1 OpInShift(O006_L1_Cutting_OP01_D4_Night)
+1 OpInShift(O006_L1_Assembly_OP01_D4_Night)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP01_D5_Morning)_:
+1 OpInShift(O001_L1_Assembly_OP01_D5_Morning)
+1 OpInShift(O002_L1_Cutting_OP01_D5_Morning)
+1 OpInShift(O002_L1_Assembly_OP01_D5_Morning)
+1 OpInShift(O003_L1_Cutting_OP01_D5_Morning)
+1 OpInShift(O003_L1_Assembly_OP01_D5_Morning)
+1 OpInShift(O004_L1_Cutting_OP01_D5_Morning)
+1 OpInShift(O004_L1_Assembly_OP01_D5_Morning)
+1 OpInShift(O004_L2_Cutting_OP01_D5_Morning)
+1 OpInShift(O004_L2_Assembly_OP01_D5_Morning)
+1 OpInShift(O005_L1_Cutting_OP01_D5_Morning)
+1 OpInShift(O005_L1_Assembly_OP01_D5_Morning)
+1 OpInShift(O006_L1_Cutting_OP01_D5_Morning)
+1 OpInShift(O006_L1_Assembly_OP01_D5_Morning)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP01_D5_Afternoon)_:
+1 OpInShift(O001_L1_Assembly_OP01_D5_Afternoon)
+1 OpInShift(O002_L1_Cutting_OP01_D5_Afternoon)
+1 OpInShift(O002_L1_Assembly_OP01_D5_Afternoon)
+1 OpInShift(O003_L1_Cutting_OP01_D5_Afternoon)
+1 OpInShift(O003_L1_Assembly_OP01_D5_Afternoon)
+1 OpInShift(O004_L1_Cutting_OP01_D5_Afternoon)
+1 OpInShift(O004_L1_Assembly_OP01_D5_Afternoon)
+1 OpInShift(O004_L2_Cutting_OP01_D5_Afternoon)
+1 OpInShift(O004_L2_Assembly_OP01_D5_Afternoon)
+1 OpInShift(O005_L1_Cutting_OP01_D5_Afternoon)
+1 OpInShift(O005_L1_Assembly_OP01_D5_Afternoon)
+1 OpInShift(O006_L1_Cutting_OP01_D5_Afternoon)
+1 OpInShift(O006_L1_Assembly_OP01_D5_Afternoon)
<= 1

c_u_C_OPR4_NoDoubleBooking(OP01_D5_Night)_:
+1 OpInShift(O001_L1_Assembly_OP01_D5_Night)
+1 OpInShift(O002_L1_Cutting_OP01_D5_Night)
+1 OpInShift(O002_L1_Assembly_OP01_D5_Night)
+1 OpInShift(O003_L1_Cutting_OP01_D5_Night)
+1 OpInShift(O003_L1_Assembly_OP01_D5_Night)
+1 OpInShift(O004_L1_Cutting_OP01_D5_Night)
+1 OpInShift(O004_L1_Assembly_OP01_D5_Night)
+1 OpInShift(O004_L2_Cutting_OP01_D5_Night)
+1 OpInShift(O004_L2_Assembly_OP01_D5_Night)
+1 OpInShift(O005_L1_Cutting_OP01_D5_Night)
+1 OpInShift(O005_L1_Assembly_OP01_D5_Night)
+1 OpInShift(O006_L1_Cutting_OP01_D5_Night)
+1 OpInShift(O006_L1_Assembly_OP01_D5_Night)
<= 1

c_u_C_BATCH1_MinSize(O001_L1_Cutting_M03)_:
+135.0 Assign(O001_L1_Cutting_M03)
<= 256.0

c_u_C_BATCH1_MinSize(O001_L1_Assembly_M02)_:
+135.0 Assign(O001_L1_Assembly_M02)
<= 256.0

c_u_C_BATCH1_MinSize(O002_L1_Cutting_M01)_:
+135.0 Assign(O002_L1_Cutting_M01)
<= 185.0

c_u_C_BATCH1_MinSize(O002_L1_Assembly_M02)_:
+135.0 Assign(O002_L1_Assembly_M02)
<= 185.0

c_u_C_BATCH1_MinSize(O003_L1_Cutting_M01)_:
+135.0 Assign(O003_L1_Cutting_M01)
<= 269.0

c_u_C_BATCH1_MinSize(O003_L1_Assembly_M02)_:
+135.0 Assign(O003_L1_Assembly_M02)
<= 269.0

c_u_C_BATCH1_MinSize(O004_L1_Cutting_M01)_:
+135.0 Assign(O004_L1_Cutting_M01)
<= 199.0

c_u_C_BATCH1_MinSize(O004_L1_Assembly_M02)_:
+135.0 Assign(O004_L1_Assembly_M02)
<= 199.0

c_u_C_BATCH1_MinSize(O004_L2_Cutting_M01)_:
+135.0 Assign(O004_L2_Cutting_M01)
<= 199.0

c_u_C_BATCH1_MinSize(O004_L2_Assembly_M02)_:
+135.0 Assign(O004_L2_Assembly_M02)
<= 199.0

c_u_C_BATCH1_MinSize(O005_L1_Cutting_M01)_:
+135.0 Assign(O005_L1_Cutting_M01)
<= 144.0

c_u_C_BATCH1_MinSize(O005_L1_Assembly_M02)_:
+135.0 Assign(O005_L1_Assembly_M02)
<= 144.0

c_u_C_BATCH1_MinSize(O006_L1_Cutting_M01)_:
+135.0 Assign(O006_L1_Cutting_M01)
<= 154.0

c_u_C_BATCH1_MinSize(O006_L1_Assembly_M02)_:
+135.0 Assign(O006_L1_Assembly_M02)
<= 154.0

c_u_C_BATCH2_MaxSize(O001_L1_Cutting_M03)_:
-30.0 Assign(O001_L1_Cutting_M03)
<= -16.0

c_u_C_BATCH2_MaxSize(O001_L1_Assembly_M02)_:
-30.0 Assign(O001_L1_Assembly_M02)
<= -16.0

c_u_C_BATCH2_MaxSize(O002_L1_Cutting_M01)_:
-30.0 Assign(O002_L1_Cutting_M01)
<= 55.0

c_u_C_BATCH2_MaxSize(O002_L1_Assembly_M02)_:
-30.0 Assign(O002_L1_Assembly_M02)
<= 55.0

c_u_C_BATCH2_MaxSize(O003_L1_Cutting_M01)_:
-30.0 Assign(O003_L1_Cutting_M01)
<= -29.0

c_u_C_BATCH2_MaxSize(O003_L1_Assembly_M02)_:
-30.0 Assign(O003_L1_Assembly_M02)
<= -29.0

c_u_C_BATCH2_MaxSize(O004_L1_Cutting_M01)_:
-30.0 Assign(O004_L1_Cutting_M01)
<= 41.0

c_u_C_BATCH2_MaxSize(O004_L1_Assembly_M02)_:
-30.0 Assign(O004_L1_Assembly_M02)
<= 41.0

c_u_C_BATCH2_MaxSize(O004_L2_Cutting_M01)_:
-30.0 Assign(O004_L2_Cutting_M01)
<= 41.0

c_u_C_BATCH2_MaxSize(O004_L2_Assembly_M02)_:
-30.0 Assign(O004_L2_Assembly_M02)
<= 41.0

c_u_C_BATCH2_MaxSize(O005_L1_Cutting_M01)_:
-30.0 Assign(O005_L1_Cutting_M01)
<= 96.0

c_u_C_BATCH2_MaxSize(O005_L1_Assembly_M02)_:
-30.0 Assign(O005_L1_Assembly_M02)
<= 96.0

c_u_C_BATCH2_MaxSize(O006_L1_Cutting_M01)_:
-30.0 Assign(O006_L1_Cutting_M01)
<= 86.0

c_u_C_BATCH2_MaxSize(O006_L1_Assembly_M02)_:
-30.0 Assign(O006_L1_Assembly_M02)
<= 86.0

c_u_C_PREC1_StagePrecedence(O001_L1_Cutting_O001_L1_Assembly)_:
+1 Finish(O001_L1_Cutting)
-1 Start(O001_L1_Assembly)
<= 0

c_u_C_PREC1_StagePrecedence(O002_L1_Cutting_O002_L1_Assembly)_:
+1 Finish(O002_L1_Cutting)
-1 Start(O002_L1_Assembly)
<= 0

c_u_C_PREC1_StagePrecedence(O003_L1_Cutting_O003_L1_Assembly)_:
+1 Finish(O003_L1_Cutting)
-1 Start(O003_L1_Assembly)
<= 0

c_u_C_PREC1_StagePrecedence(O004_L1_Cutting_O004_L1_Assembly)_:
+1 Finish(O004_L1_Cutting)
-1 Start(O004_L1_Assembly)
<= 0

c_u_C_PREC1_StagePrecedence(O004_L2_Cutting_O004_L2_Assembly)_:
+1 Finish(O004_L2_Cutting)
-1 Start(O004_L2_Assembly)
<= 0

c_u_C_PREC1_StagePrecedence(O005_L1_Cutting_O005_L1_Assembly)_:
+1 Finish(O005_L1_Cutting)
-1 Start(O005_L1_Assembly)
<= 0

c_u_C_PREC1_StagePrecedence(O006_L1_Cutting_O006_L1_Assembly)_:
+1 Finish(O006_L1_Cutting)
-1 Start(O006_L1_Assembly)
<= 0

c_u_C_CAP_AndUpper1(O001_L1_Cutting_M03_D1_Morning)_:
-1 Assign(O001_L1_Cutting_M03)
+1 AssignInShift(O001_L1_Cutting_M03_D1_Morning)
<= 0

c_u_C_CAP_AndUpper1(O001_L1_Cutting_M03_D1_Afternoon)_:
-1 Assign(O001_L1_Cutting_M03)
+1 AssignInShift(O001_L1_Cutting_M03_D1_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O001_L1_Cutting_M03_D1_Night)_:
-1 Assign(O001_L1_Cutting_M03)
+1 AssignInShift(O001_L1_Cutting_M03_D1_Night)
<= 0

c_u_C_CAP_AndUpper1(O001_L1_Cutting_M03_D2_Morning)_:
-1 Assign(O001_L1_Cutting_M03)
+1 AssignInShift(O001_L1_Cutting_M03_D2_Morning)
<= 0

c_u_C_CAP_AndUpper1(O001_L1_Cutting_M03_D2_Afternoon)_:
-1 Assign(O001_L1_Cutting_M03)
+1 AssignInShift(O001_L1_Cutting_M03_D2_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O001_L1_Cutting_M03_D2_Night)_:
-1 Assign(O001_L1_Cutting_M03)
+1 AssignInShift(O001_L1_Cutting_M03_D2_Night)
<= 0

c_u_C_CAP_AndUpper1(O001_L1_Cutting_M03_D3_Morning)_:
-1 Assign(O001_L1_Cutting_M03)
+1 AssignInShift(O001_L1_Cutting_M03_D3_Morning)
<= 0

c_u_C_CAP_AndUpper1(O001_L1_Cutting_M03_D3_Afternoon)_:
-1 Assign(O001_L1_Cutting_M03)
+1 AssignInShift(O001_L1_Cutting_M03_D3_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O001_L1_Cutting_M03_D3_Night)_:
-1 Assign(O001_L1_Cutting_M03)
+1 AssignInShift(O001_L1_Cutting_M03_D3_Night)
<= 0

c_u_C_CAP_AndUpper1(O001_L1_Cutting_M03_D4_Morning)_:
-1 Assign(O001_L1_Cutting_M03)
+1 AssignInShift(O001_L1_Cutting_M03_D4_Morning)
<= 0

c_u_C_CAP_AndUpper1(O001_L1_Cutting_M03_D4_Afternoon)_:
-1 Assign(O001_L1_Cutting_M03)
+1 AssignInShift(O001_L1_Cutting_M03_D4_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O001_L1_Cutting_M03_D4_Night)_:
-1 Assign(O001_L1_Cutting_M03)
+1 AssignInShift(O001_L1_Cutting_M03_D4_Night)
<= 0

c_u_C_CAP_AndUpper1(O001_L1_Cutting_M03_D5_Morning)_:
-1 Assign(O001_L1_Cutting_M03)
+1 AssignInShift(O001_L1_Cutting_M03_D5_Morning)
<= 0

c_u_C_CAP_AndUpper1(O001_L1_Cutting_M03_D5_Afternoon)_:
-1 Assign(O001_L1_Cutting_M03)
+1 AssignInShift(O001_L1_Cutting_M03_D5_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O001_L1_Cutting_M03_D5_Night)_:
-1 Assign(O001_L1_Cutting_M03)
+1 AssignInShift(O001_L1_Cutting_M03_D5_Night)
<= 0

c_u_C_CAP_AndUpper1(O001_L1_Assembly_M02_D1_Morning)_:
-1 Assign(O001_L1_Assembly_M02)
+1 AssignInShift(O001_L1_Assembly_M02_D1_Morning)
<= 0

c_u_C_CAP_AndUpper1(O001_L1_Assembly_M02_D1_Afternoon)_:
-1 Assign(O001_L1_Assembly_M02)
+1 AssignInShift(O001_L1_Assembly_M02_D1_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O001_L1_Assembly_M02_D1_Night)_:
-1 Assign(O001_L1_Assembly_M02)
+1 AssignInShift(O001_L1_Assembly_M02_D1_Night)
<= 0

c_u_C_CAP_AndUpper1(O001_L1_Assembly_M02_D2_Morning)_:
-1 Assign(O001_L1_Assembly_M02)
+1 AssignInShift(O001_L1_Assembly_M02_D2_Morning)
<= 0

c_u_C_CAP_AndUpper1(O001_L1_Assembly_M02_D2_Afternoon)_:
-1 Assign(O001_L1_Assembly_M02)
+1 AssignInShift(O001_L1_Assembly_M02_D2_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O001_L1_Assembly_M02_D2_Night)_:
-1 Assign(O001_L1_Assembly_M02)
+1 AssignInShift(O001_L1_Assembly_M02_D2_Night)
<= 0

c_u_C_CAP_AndUpper1(O001_L1_Assembly_M02_D3_Morning)_:
-1 Assign(O001_L1_Assembly_M02)
+1 AssignInShift(O001_L1_Assembly_M02_D3_Morning)
<= 0

c_u_C_CAP_AndUpper1(O001_L1_Assembly_M02_D3_Afternoon)_:
-1 Assign(O001_L1_Assembly_M02)
+1 AssignInShift(O001_L1_Assembly_M02_D3_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O001_L1_Assembly_M02_D3_Night)_:
-1 Assign(O001_L1_Assembly_M02)
+1 AssignInShift(O001_L1_Assembly_M02_D3_Night)
<= 0

c_u_C_CAP_AndUpper1(O001_L1_Assembly_M02_D4_Morning)_:
-1 Assign(O001_L1_Assembly_M02)
+1 AssignInShift(O001_L1_Assembly_M02_D4_Morning)
<= 0

c_u_C_CAP_AndUpper1(O001_L1_Assembly_M02_D4_Afternoon)_:
-1 Assign(O001_L1_Assembly_M02)
+1 AssignInShift(O001_L1_Assembly_M02_D4_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O001_L1_Assembly_M02_D4_Night)_:
-1 Assign(O001_L1_Assembly_M02)
+1 AssignInShift(O001_L1_Assembly_M02_D4_Night)
<= 0

c_u_C_CAP_AndUpper1(O001_L1_Assembly_M02_D5_Morning)_:
-1 Assign(O001_L1_Assembly_M02)
+1 AssignInShift(O001_L1_Assembly_M02_D5_Morning)
<= 0

c_u_C_CAP_AndUpper1(O001_L1_Assembly_M02_D5_Afternoon)_:
-1 Assign(O001_L1_Assembly_M02)
+1 AssignInShift(O001_L1_Assembly_M02_D5_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O001_L1_Assembly_M02_D5_Night)_:
-1 Assign(O001_L1_Assembly_M02)
+1 AssignInShift(O001_L1_Assembly_M02_D5_Night)
<= 0

c_u_C_CAP_AndUpper1(O002_L1_Cutting_M01_D1_Morning)_:
-1 Assign(O002_L1_Cutting_M01)
+1 AssignInShift(O002_L1_Cutting_M01_D1_Morning)
<= 0

c_u_C_CAP_AndUpper1(O002_L1_Cutting_M01_D1_Afternoon)_:
-1 Assign(O002_L1_Cutting_M01)
+1 AssignInShift(O002_L1_Cutting_M01_D1_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O002_L1_Cutting_M01_D1_Night)_:
-1 Assign(O002_L1_Cutting_M01)
+1 AssignInShift(O002_L1_Cutting_M01_D1_Night)
<= 0

c_u_C_CAP_AndUpper1(O002_L1_Cutting_M01_D2_Morning)_:
-1 Assign(O002_L1_Cutting_M01)
+1 AssignInShift(O002_L1_Cutting_M01_D2_Morning)
<= 0

c_u_C_CAP_AndUpper1(O002_L1_Cutting_M01_D2_Afternoon)_:
-1 Assign(O002_L1_Cutting_M01)
+1 AssignInShift(O002_L1_Cutting_M01_D2_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O002_L1_Cutting_M01_D2_Night)_:
-1 Assign(O002_L1_Cutting_M01)
+1 AssignInShift(O002_L1_Cutting_M01_D2_Night)
<= 0

c_u_C_CAP_AndUpper1(O002_L1_Cutting_M01_D3_Morning)_:
-1 Assign(O002_L1_Cutting_M01)
+1 AssignInShift(O002_L1_Cutting_M01_D3_Morning)
<= 0

c_u_C_CAP_AndUpper1(O002_L1_Cutting_M01_D3_Afternoon)_:
-1 Assign(O002_L1_Cutting_M01)
+1 AssignInShift(O002_L1_Cutting_M01_D3_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O002_L1_Cutting_M01_D3_Night)_:
-1 Assign(O002_L1_Cutting_M01)
+1 AssignInShift(O002_L1_Cutting_M01_D3_Night)
<= 0

c_u_C_CAP_AndUpper1(O002_L1_Cutting_M01_D4_Morning)_:
-1 Assign(O002_L1_Cutting_M01)
+1 AssignInShift(O002_L1_Cutting_M01_D4_Morning)
<= 0

c_u_C_CAP_AndUpper1(O002_L1_Cutting_M01_D4_Afternoon)_:
-1 Assign(O002_L1_Cutting_M01)
+1 AssignInShift(O002_L1_Cutting_M01_D4_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O002_L1_Cutting_M01_D4_Night)_:
-1 Assign(O002_L1_Cutting_M01)
+1 AssignInShift(O002_L1_Cutting_M01_D4_Night)
<= 0

c_u_C_CAP_AndUpper1(O002_L1_Cutting_M01_D5_Morning)_:
-1 Assign(O002_L1_Cutting_M01)
+1 AssignInShift(O002_L1_Cutting_M01_D5_Morning)
<= 0

c_u_C_CAP_AndUpper1(O002_L1_Cutting_M01_D5_Afternoon)_:
-1 Assign(O002_L1_Cutting_M01)
+1 AssignInShift(O002_L1_Cutting_M01_D5_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O002_L1_Cutting_M01_D5_Night)_:
-1 Assign(O002_L1_Cutting_M01)
+1 AssignInShift(O002_L1_Cutting_M01_D5_Night)
<= 0

c_u_C_CAP_AndUpper1(O002_L1_Assembly_M02_D1_Morning)_:
-1 Assign(O002_L1_Assembly_M02)
+1 AssignInShift(O002_L1_Assembly_M02_D1_Morning)
<= 0

c_u_C_CAP_AndUpper1(O002_L1_Assembly_M02_D1_Afternoon)_:
-1 Assign(O002_L1_Assembly_M02)
+1 AssignInShift(O002_L1_Assembly_M02_D1_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O002_L1_Assembly_M02_D1_Night)_:
-1 Assign(O002_L1_Assembly_M02)
+1 AssignInShift(O002_L1_Assembly_M02_D1_Night)
<= 0

c_u_C_CAP_AndUpper1(O002_L1_Assembly_M02_D2_Morning)_:
-1 Assign(O002_L1_Assembly_M02)
+1 AssignInShift(O002_L1_Assembly_M02_D2_Morning)
<= 0

c_u_C_CAP_AndUpper1(O002_L1_Assembly_M02_D2_Afternoon)_:
-1 Assign(O002_L1_Assembly_M02)
+1 AssignInShift(O002_L1_Assembly_M02_D2_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O002_L1_Assembly_M02_D2_Night)_:
-1 Assign(O002_L1_Assembly_M02)
+1 AssignInShift(O002_L1_Assembly_M02_D2_Night)
<= 0

c_u_C_CAP_AndUpper1(O002_L1_Assembly_M02_D3_Morning)_:
-1 Assign(O002_L1_Assembly_M02)
+1 AssignInShift(O002_L1_Assembly_M02_D3_Morning)
<= 0

c_u_C_CAP_AndUpper1(O002_L1_Assembly_M02_D3_Afternoon)_:
-1 Assign(O002_L1_Assembly_M02)
+1 AssignInShift(O002_L1_Assembly_M02_D3_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O002_L1_Assembly_M02_D3_Night)_:
-1 Assign(O002_L1_Assembly_M02)
+1 AssignInShift(O002_L1_Assembly_M02_D3_Night)
<= 0

c_u_C_CAP_AndUpper1(O002_L1_Assembly_M02_D4_Morning)_:
-1 Assign(O002_L1_Assembly_M02)
+1 AssignInShift(O002_L1_Assembly_M02_D4_Morning)
<= 0

c_u_C_CAP_AndUpper1(O002_L1_Assembly_M02_D4_Afternoon)_:
-1 Assign(O002_L1_Assembly_M02)
+1 AssignInShift(O002_L1_Assembly_M02_D4_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O002_L1_Assembly_M02_D4_Night)_:
-1 Assign(O002_L1_Assembly_M02)
+1 AssignInShift(O002_L1_Assembly_M02_D4_Night)
<= 0

c_u_C_CAP_AndUpper1(O002_L1_Assembly_M02_D5_Morning)_:
-1 Assign(O002_L1_Assembly_M02)
+1 AssignInShift(O002_L1_Assembly_M02_D5_Morning)
<= 0

c_u_C_CAP_AndUpper1(O002_L1_Assembly_M02_D5_Afternoon)_:
-1 Assign(O002_L1_Assembly_M02)
+1 AssignInShift(O002_L1_Assembly_M02_D5_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O002_L1_Assembly_M02_D5_Night)_:
-1 Assign(O002_L1_Assembly_M02)
+1 AssignInShift(O002_L1_Assembly_M02_D5_Night)
<= 0

c_u_C_CAP_AndUpper1(O003_L1_Cutting_M01_D1_Morning)_:
-1 Assign(O003_L1_Cutting_M01)
+1 AssignInShift(O003_L1_Cutting_M01_D1_Morning)
<= 0

c_u_C_CAP_AndUpper1(O003_L1_Cutting_M01_D1_Afternoon)_:
-1 Assign(O003_L1_Cutting_M01)
+1 AssignInShift(O003_L1_Cutting_M01_D1_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O003_L1_Cutting_M01_D1_Night)_:
-1 Assign(O003_L1_Cutting_M01)
+1 AssignInShift(O003_L1_Cutting_M01_D1_Night)
<= 0

c_u_C_CAP_AndUpper1(O003_L1_Cutting_M01_D2_Morning)_:
-1 Assign(O003_L1_Cutting_M01)
+1 AssignInShift(O003_L1_Cutting_M01_D2_Morning)
<= 0

c_u_C_CAP_AndUpper1(O003_L1_Cutting_M01_D2_Afternoon)_:
-1 Assign(O003_L1_Cutting_M01)
+1 AssignInShift(O003_L1_Cutting_M01_D2_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O003_L1_Cutting_M01_D2_Night)_:
-1 Assign(O003_L1_Cutting_M01)
+1 AssignInShift(O003_L1_Cutting_M01_D2_Night)
<= 0

c_u_C_CAP_AndUpper1(O003_L1_Cutting_M01_D3_Morning)_:
-1 Assign(O003_L1_Cutting_M01)
+1 AssignInShift(O003_L1_Cutting_M01_D3_Morning)
<= 0

c_u_C_CAP_AndUpper1(O003_L1_Cutting_M01_D3_Afternoon)_:
-1 Assign(O003_L1_Cutting_M01)
+1 AssignInShift(O003_L1_Cutting_M01_D3_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O003_L1_Cutting_M01_D3_Night)_:
-1 Assign(O003_L1_Cutting_M01)
+1 AssignInShift(O003_L1_Cutting_M01_D3_Night)
<= 0

c_u_C_CAP_AndUpper1(O003_L1_Cutting_M01_D4_Morning)_:
-1 Assign(O003_L1_Cutting_M01)
+1 AssignInShift(O003_L1_Cutting_M01_D4_Morning)
<= 0

c_u_C_CAP_AndUpper1(O003_L1_Cutting_M01_D4_Afternoon)_:
-1 Assign(O003_L1_Cutting_M01)
+1 AssignInShift(O003_L1_Cutting_M01_D4_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O003_L1_Cutting_M01_D4_Night)_:
-1 Assign(O003_L1_Cutting_M01)
+1 AssignInShift(O003_L1_Cutting_M01_D4_Night)
<= 0

c_u_C_CAP_AndUpper1(O003_L1_Cutting_M01_D5_Morning)_:
-1 Assign(O003_L1_Cutting_M01)
+1 AssignInShift(O003_L1_Cutting_M01_D5_Morning)
<= 0

c_u_C_CAP_AndUpper1(O003_L1_Cutting_M01_D5_Afternoon)_:
-1 Assign(O003_L1_Cutting_M01)
+1 AssignInShift(O003_L1_Cutting_M01_D5_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O003_L1_Cutting_M01_D5_Night)_:
-1 Assign(O003_L1_Cutting_M01)
+1 AssignInShift(O003_L1_Cutting_M01_D5_Night)
<= 0

c_u_C_CAP_AndUpper1(O003_L1_Assembly_M02_D1_Morning)_:
-1 Assign(O003_L1_Assembly_M02)
+1 AssignInShift(O003_L1_Assembly_M02_D1_Morning)
<= 0

c_u_C_CAP_AndUpper1(O003_L1_Assembly_M02_D1_Afternoon)_:
-1 Assign(O003_L1_Assembly_M02)
+1 AssignInShift(O003_L1_Assembly_M02_D1_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O003_L1_Assembly_M02_D1_Night)_:
-1 Assign(O003_L1_Assembly_M02)
+1 AssignInShift(O003_L1_Assembly_M02_D1_Night)
<= 0

c_u_C_CAP_AndUpper1(O003_L1_Assembly_M02_D2_Morning)_:
-1 Assign(O003_L1_Assembly_M02)
+1 AssignInShift(O003_L1_Assembly_M02_D2_Morning)
<= 0

c_u_C_CAP_AndUpper1(O003_L1_Assembly_M02_D2_Afternoon)_:
-1 Assign(O003_L1_Assembly_M02)
+1 AssignInShift(O003_L1_Assembly_M02_D2_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O003_L1_Assembly_M02_D2_Night)_:
-1 Assign(O003_L1_Assembly_M02)
+1 AssignInShift(O003_L1_Assembly_M02_D2_Night)
<= 0

c_u_C_CAP_AndUpper1(O003_L1_Assembly_M02_D3_Morning)_:
-1 Assign(O003_L1_Assembly_M02)
+1 AssignInShift(O003_L1_Assembly_M02_D3_Morning)
<= 0

c_u_C_CAP_AndUpper1(O003_L1_Assembly_M02_D3_Afternoon)_:
-1 Assign(O003_L1_Assembly_M02)
+1 AssignInShift(O003_L1_Assembly_M02_D3_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O003_L1_Assembly_M02_D3_Night)_:
-1 Assign(O003_L1_Assembly_M02)
+1 AssignInShift(O003_L1_Assembly_M02_D3_Night)
<= 0

c_u_C_CAP_AndUpper1(O003_L1_Assembly_M02_D4_Morning)_:
-1 Assign(O003_L1_Assembly_M02)
+1 AssignInShift(O003_L1_Assembly_M02_D4_Morning)
<= 0

c_u_C_CAP_AndUpper1(O003_L1_Assembly_M02_D4_Afternoon)_:
-1 Assign(O003_L1_Assembly_M02)
+1 AssignInShift(O003_L1_Assembly_M02_D4_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O003_L1_Assembly_M02_D4_Night)_:
-1 Assign(O003_L1_Assembly_M02)
+1 AssignInShift(O003_L1_Assembly_M02_D4_Night)
<= 0

c_u_C_CAP_AndUpper1(O003_L1_Assembly_M02_D5_Morning)_:
-1 Assign(O003_L1_Assembly_M02)
+1 AssignInShift(O003_L1_Assembly_M02_D5_Morning)
<= 0

c_u_C_CAP_AndUpper1(O003_L1_Assembly_M02_D5_Afternoon)_:
-1 Assign(O003_L1_Assembly_M02)
+1 AssignInShift(O003_L1_Assembly_M02_D5_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O003_L1_Assembly_M02_D5_Night)_:
-1 Assign(O003_L1_Assembly_M02)
+1 AssignInShift(O003_L1_Assembly_M02_D5_Night)
<= 0

c_u_C_CAP_AndUpper1(O004_L1_Cutting_M01_D1_Morning)_:
-1 Assign(O004_L1_Cutting_M01)
+1 AssignInShift(O004_L1_Cutting_M01_D1_Morning)
<= 0

c_u_C_CAP_AndUpper1(O004_L1_Cutting_M01_D1_Afternoon)_:
-1 Assign(O004_L1_Cutting_M01)
+1 AssignInShift(O004_L1_Cutting_M01_D1_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O004_L1_Cutting_M01_D1_Night)_:
-1 Assign(O004_L1_Cutting_M01)
+1 AssignInShift(O004_L1_Cutting_M01_D1_Night)
<= 0

c_u_C_CAP_AndUpper1(O004_L1_Cutting_M01_D2_Morning)_:
-1 Assign(O004_L1_Cutting_M01)
+1 AssignInShift(O004_L1_Cutting_M01_D2_Morning)
<= 0

c_u_C_CAP_AndUpper1(O004_L1_Cutting_M01_D2_Afternoon)_:
-1 Assign(O004_L1_Cutting_M01)
+1 AssignInShift(O004_L1_Cutting_M01_D2_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O004_L1_Cutting_M01_D2_Night)_:
-1 Assign(O004_L1_Cutting_M01)
+1 AssignInShift(O004_L1_Cutting_M01_D2_Night)
<= 0

c_u_C_CAP_AndUpper1(O004_L1_Cutting_M01_D3_Morning)_:
-1 Assign(O004_L1_Cutting_M01)
+1 AssignInShift(O004_L1_Cutting_M01_D3_Morning)
<= 0

c_u_C_CAP_AndUpper1(O004_L1_Cutting_M01_D3_Afternoon)_:
-1 Assign(O004_L1_Cutting_M01)
+1 AssignInShift(O004_L1_Cutting_M01_D3_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O004_L1_Cutting_M01_D3_Night)_:
-1 Assign(O004_L1_Cutting_M01)
+1 AssignInShift(O004_L1_Cutting_M01_D3_Night)
<= 0

c_u_C_CAP_AndUpper1(O004_L1_Cutting_M01_D4_Morning)_:
-1 Assign(O004_L1_Cutting_M01)
+1 AssignInShift(O004_L1_Cutting_M01_D4_Morning)
<= 0

c_u_C_CAP_AndUpper1(O004_L1_Cutting_M01_D4_Afternoon)_:
-1 Assign(O004_L1_Cutting_M01)
+1 AssignInShift(O004_L1_Cutting_M01_D4_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O004_L1_Cutting_M01_D4_Night)_:
-1 Assign(O004_L1_Cutting_M01)
+1 AssignInShift(O004_L1_Cutting_M01_D4_Night)
<= 0

c_u_C_CAP_AndUpper1(O004_L1_Cutting_M01_D5_Morning)_:
-1 Assign(O004_L1_Cutting_M01)
+1 AssignInShift(O004_L1_Cutting_M01_D5_Morning)
<= 0

c_u_C_CAP_AndUpper1(O004_L1_Cutting_M01_D5_Afternoon)_:
-1 Assign(O004_L1_Cutting_M01)
+1 AssignInShift(O004_L1_Cutting_M01_D5_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O004_L1_Cutting_M01_D5_Night)_:
-1 Assign(O004_L1_Cutting_M01)
+1 AssignInShift(O004_L1_Cutting_M01_D5_Night)
<= 0

c_u_C_CAP_AndUpper1(O004_L1_Assembly_M02_D1_Morning)_:
-1 Assign(O004_L1_Assembly_M02)
+1 AssignInShift(O004_L1_Assembly_M02_D1_Morning)
<= 0

c_u_C_CAP_AndUpper1(O004_L1_Assembly_M02_D1_Afternoon)_:
-1 Assign(O004_L1_Assembly_M02)
+1 AssignInShift(O004_L1_Assembly_M02_D1_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O004_L1_Assembly_M02_D1_Night)_:
-1 Assign(O004_L1_Assembly_M02)
+1 AssignInShift(O004_L1_Assembly_M02_D1_Night)
<= 0

c_u_C_CAP_AndUpper1(O004_L1_Assembly_M02_D2_Morning)_:
-1 Assign(O004_L1_Assembly_M02)
+1 AssignInShift(O004_L1_Assembly_M02_D2_Morning)
<= 0

c_u_C_CAP_AndUpper1(O004_L1_Assembly_M02_D2_Afternoon)_:
-1 Assign(O004_L1_Assembly_M02)
+1 AssignInShift(O004_L1_Assembly_M02_D2_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O004_L1_Assembly_M02_D2_Night)_:
-1 Assign(O004_L1_Assembly_M02)
+1 AssignInShift(O004_L1_Assembly_M02_D2_Night)
<= 0

c_u_C_CAP_AndUpper1(O004_L1_Assembly_M02_D3_Morning)_:
-1 Assign(O004_L1_Assembly_M02)
+1 AssignInShift(O004_L1_Assembly_M02_D3_Morning)
<= 0

c_u_C_CAP_AndUpper1(O004_L1_Assembly_M02_D3_Afternoon)_:
-1 Assign(O004_L1_Assembly_M02)
+1 AssignInShift(O004_L1_Assembly_M02_D3_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O004_L1_Assembly_M02_D3_Night)_:
-1 Assign(O004_L1_Assembly_M02)
+1 AssignInShift(O004_L1_Assembly_M02_D3_Night)
<= 0

c_u_C_CAP_AndUpper1(O004_L1_Assembly_M02_D4_Morning)_:
-1 Assign(O004_L1_Assembly_M02)
+1 AssignInShift(O004_L1_Assembly_M02_D4_Morning)
<= 0

c_u_C_CAP_AndUpper1(O004_L1_Assembly_M02_D4_Afternoon)_:
-1 Assign(O004_L1_Assembly_M02)
+1 AssignInShift(O004_L1_Assembly_M02_D4_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O004_L1_Assembly_M02_D4_Night)_:
-1 Assign(O004_L1_Assembly_M02)
+1 AssignInShift(O004_L1_Assembly_M02_D4_Night)
<= 0

c_u_C_CAP_AndUpper1(O004_L1_Assembly_M02_D5_Morning)_:
-1 Assign(O004_L1_Assembly_M02)
+1 AssignInShift(O004_L1_Assembly_M02_D5_Morning)
<= 0

c_u_C_CAP_AndUpper1(O004_L1_Assembly_M02_D5_Afternoon)_:
-1 Assign(O004_L1_Assembly_M02)
+1 AssignInShift(O004_L1_Assembly_M02_D5_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O004_L1_Assembly_M02_D5_Night)_:
-1 Assign(O004_L1_Assembly_M02)
+1 AssignInShift(O004_L1_Assembly_M02_D5_Night)
<= 0

c_u_C_CAP_AndUpper1(O004_L2_Cutting_M01_D1_Morning)_:
-1 Assign(O004_L2_Cutting_M01)
+1 AssignInShift(O004_L2_Cutting_M01_D1_Morning)
<= 0

c_u_C_CAP_AndUpper1(O004_L2_Cutting_M01_D1_Afternoon)_:
-1 Assign(O004_L2_Cutting_M01)
+1 AssignInShift(O004_L2_Cutting_M01_D1_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O004_L2_Cutting_M01_D1_Night)_:
-1 Assign(O004_L2_Cutting_M01)
+1 AssignInShift(O004_L2_Cutting_M01_D1_Night)
<= 0

c_u_C_CAP_AndUpper1(O004_L2_Cutting_M01_D2_Morning)_:
-1 Assign(O004_L2_Cutting_M01)
+1 AssignInShift(O004_L2_Cutting_M01_D2_Morning)
<= 0

c_u_C_CAP_AndUpper1(O004_L2_Cutting_M01_D2_Afternoon)_:
-1 Assign(O004_L2_Cutting_M01)
+1 AssignInShift(O004_L2_Cutting_M01_D2_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O004_L2_Cutting_M01_D2_Night)_:
-1 Assign(O004_L2_Cutting_M01)
+1 AssignInShift(O004_L2_Cutting_M01_D2_Night)
<= 0

c_u_C_CAP_AndUpper1(O004_L2_Cutting_M01_D3_Morning)_:
-1 Assign(O004_L2_Cutting_M01)
+1 AssignInShift(O004_L2_Cutting_M01_D3_Morning)
<= 0

c_u_C_CAP_AndUpper1(O004_L2_Cutting_M01_D3_Afternoon)_:
-1 Assign(O004_L2_Cutting_M01)
+1 AssignInShift(O004_L2_Cutting_M01_D3_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O004_L2_Cutting_M01_D3_Night)_:
-1 Assign(O004_L2_Cutting_M01)
+1 AssignInShift(O004_L2_Cutting_M01_D3_Night)
<= 0

c_u_C_CAP_AndUpper1(O004_L2_Cutting_M01_D4_Morning)_:
-1 Assign(O004_L2_Cutting_M01)
+1 AssignInShift(O004_L2_Cutting_M01_D4_Morning)
<= 0

c_u_C_CAP_AndUpper1(O004_L2_Cutting_M01_D4_Afternoon)_:
-1 Assign(O004_L2_Cutting_M01)
+1 AssignInShift(O004_L2_Cutting_M01_D4_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O004_L2_Cutting_M01_D4_Night)_:
-1 Assign(O004_L2_Cutting_M01)
+1 AssignInShift(O004_L2_Cutting_M01_D4_Night)
<= 0

c_u_C_CAP_AndUpper1(O004_L2_Cutting_M01_D5_Morning)_:
-1 Assign(O004_L2_Cutting_M01)
+1 AssignInShift(O004_L2_Cutting_M01_D5_Morning)
<= 0

c_u_C_CAP_AndUpper1(O004_L2_Cutting_M01_D5_Afternoon)_:
-1 Assign(O004_L2_Cutting_M01)
+1 AssignInShift(O004_L2_Cutting_M01_D5_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O004_L2_Cutting_M01_D5_Night)_:
-1 Assign(O004_L2_Cutting_M01)
+1 AssignInShift(O004_L2_Cutting_M01_D5_Night)
<= 0

c_u_C_CAP_AndUpper1(O004_L2_Assembly_M02_D1_Morning)_:
-1 Assign(O004_L2_Assembly_M02)
+1 AssignInShift(O004_L2_Assembly_M02_D1_Morning)
<= 0

c_u_C_CAP_AndUpper1(O004_L2_Assembly_M02_D1_Afternoon)_:
-1 Assign(O004_L2_Assembly_M02)
+1 AssignInShift(O004_L2_Assembly_M02_D1_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O004_L2_Assembly_M02_D1_Night)_:
-1 Assign(O004_L2_Assembly_M02)
+1 AssignInShift(O004_L2_Assembly_M02_D1_Night)
<= 0

c_u_C_CAP_AndUpper1(O004_L2_Assembly_M02_D2_Morning)_:
-1 Assign(O004_L2_Assembly_M02)
+1 AssignInShift(O004_L2_Assembly_M02_D2_Morning)
<= 0

c_u_C_CAP_AndUpper1(O004_L2_Assembly_M02_D2_Afternoon)_:
-1 Assign(O004_L2_Assembly_M02)
+1 AssignInShift(O004_L2_Assembly_M02_D2_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O004_L2_Assembly_M02_D2_Night)_:
-1 Assign(O004_L2_Assembly_M02)
+1 AssignInShift(O004_L2_Assembly_M02_D2_Night)
<= 0

c_u_C_CAP_AndUpper1(O004_L2_Assembly_M02_D3_Morning)_:
-1 Assign(O004_L2_Assembly_M02)
+1 AssignInShift(O004_L2_Assembly_M02_D3_Morning)
<= 0

c_u_C_CAP_AndUpper1(O004_L2_Assembly_M02_D3_Afternoon)_:
-1 Assign(O004_L2_Assembly_M02)
+1 AssignInShift(O004_L2_Assembly_M02_D3_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O004_L2_Assembly_M02_D3_Night)_:
-1 Assign(O004_L2_Assembly_M02)
+1 AssignInShift(O004_L2_Assembly_M02_D3_Night)
<= 0

c_u_C_CAP_AndUpper1(O004_L2_Assembly_M02_D4_Morning)_:
-1 Assign(O004_L2_Assembly_M02)
+1 AssignInShift(O004_L2_Assembly_M02_D4_Morning)
<= 0

c_u_C_CAP_AndUpper1(O004_L2_Assembly_M02_D4_Afternoon)_:
-1 Assign(O004_L2_Assembly_M02)
+1 AssignInShift(O004_L2_Assembly_M02_D4_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O004_L2_Assembly_M02_D4_Night)_:
-1 Assign(O004_L2_Assembly_M02)
+1 AssignInShift(O004_L2_Assembly_M02_D4_Night)
<= 0

c_u_C_CAP_AndUpper1(O004_L2_Assembly_M02_D5_Morning)_:
-1 Assign(O004_L2_Assembly_M02)
+1 AssignInShift(O004_L2_Assembly_M02_D5_Morning)
<= 0

c_u_C_CAP_AndUpper1(O004_L2_Assembly_M02_D5_Afternoon)_:
-1 Assign(O004_L2_Assembly_M02)
+1 AssignInShift(O004_L2_Assembly_M02_D5_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O004_L2_Assembly_M02_D5_Night)_:
-1 Assign(O004_L2_Assembly_M02)
+1 AssignInShift(O004_L2_Assembly_M02_D5_Night)
<= 0

c_u_C_CAP_AndUpper1(O005_L1_Cutting_M01_D1_Morning)_:
-1 Assign(O005_L1_Cutting_M01)
+1 AssignInShift(O005_L1_Cutting_M01_D1_Morning)
<= 0

c_u_C_CAP_AndUpper1(O005_L1_Cutting_M01_D1_Afternoon)_:
-1 Assign(O005_L1_Cutting_M01)
+1 AssignInShift(O005_L1_Cutting_M01_D1_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O005_L1_Cutting_M01_D1_Night)_:
-1 Assign(O005_L1_Cutting_M01)
+1 AssignInShift(O005_L1_Cutting_M01_D1_Night)
<= 0

c_u_C_CAP_AndUpper1(O005_L1_Cutting_M01_D2_Morning)_:
-1 Assign(O005_L1_Cutting_M01)
+1 AssignInShift(O005_L1_Cutting_M01_D2_Morning)
<= 0

c_u_C_CAP_AndUpper1(O005_L1_Cutting_M01_D2_Afternoon)_:
-1 Assign(O005_L1_Cutting_M01)
+1 AssignInShift(O005_L1_Cutting_M01_D2_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O005_L1_Cutting_M01_D2_Night)_:
-1 Assign(O005_L1_Cutting_M01)
+1 AssignInShift(O005_L1_Cutting_M01_D2_Night)
<= 0

c_u_C_CAP_AndUpper1(O005_L1_Cutting_M01_D3_Morning)_:
-1 Assign(O005_L1_Cutting_M01)
+1 AssignInShift(O005_L1_Cutting_M01_D3_Morning)
<= 0

c_u_C_CAP_AndUpper1(O005_L1_Cutting_M01_D3_Afternoon)_:
-1 Assign(O005_L1_Cutting_M01)
+1 AssignInShift(O005_L1_Cutting_M01_D3_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O005_L1_Cutting_M01_D3_Night)_:
-1 Assign(O005_L1_Cutting_M01)
+1 AssignInShift(O005_L1_Cutting_M01_D3_Night)
<= 0

c_u_C_CAP_AndUpper1(O005_L1_Cutting_M01_D4_Morning)_:
-1 Assign(O005_L1_Cutting_M01)
+1 AssignInShift(O005_L1_Cutting_M01_D4_Morning)
<= 0

c_u_C_CAP_AndUpper1(O005_L1_Cutting_M01_D4_Afternoon)_:
-1 Assign(O005_L1_Cutting_M01)
+1 AssignInShift(O005_L1_Cutting_M01_D4_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O005_L1_Cutting_M01_D4_Night)_:
-1 Assign(O005_L1_Cutting_M01)
+1 AssignInShift(O005_L1_Cutting_M01_D4_Night)
<= 0

c_u_C_CAP_AndUpper1(O005_L1_Cutting_M01_D5_Morning)_:
-1 Assign(O005_L1_Cutting_M01)
+1 AssignInShift(O005_L1_Cutting_M01_D5_Morning)
<= 0

c_u_C_CAP_AndUpper1(O005_L1_Cutting_M01_D5_Afternoon)_:
-1 Assign(O005_L1_Cutting_M01)
+1 AssignInShift(O005_L1_Cutting_M01_D5_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O005_L1_Cutting_M01_D5_Night)_:
-1 Assign(O005_L1_Cutting_M01)
+1 AssignInShift(O005_L1_Cutting_M01_D5_Night)
<= 0

c_u_C_CAP_AndUpper1(O005_L1_Assembly_M02_D1_Morning)_:
-1 Assign(O005_L1_Assembly_M02)
+1 AssignInShift(O005_L1_Assembly_M02_D1_Morning)
<= 0

c_u_C_CAP_AndUpper1(O005_L1_Assembly_M02_D1_Afternoon)_:
-1 Assign(O005_L1_Assembly_M02)
+1 AssignInShift(O005_L1_Assembly_M02_D1_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O005_L1_Assembly_M02_D1_Night)_:
-1 Assign(O005_L1_Assembly_M02)
+1 AssignInShift(O005_L1_Assembly_M02_D1_Night)
<= 0

c_u_C_CAP_AndUpper1(O005_L1_Assembly_M02_D2_Morning)_:
-1 Assign(O005_L1_Assembly_M02)
+1 AssignInShift(O005_L1_Assembly_M02_D2_Morning)
<= 0

c_u_C_CAP_AndUpper1(O005_L1_Assembly_M02_D2_Afternoon)_:
-1 Assign(O005_L1_Assembly_M02)
+1 AssignInShift(O005_L1_Assembly_M02_D2_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O005_L1_Assembly_M02_D2_Night)_:
-1 Assign(O005_L1_Assembly_M02)
+1 AssignInShift(O005_L1_Assembly_M02_D2_Night)
<= 0

c_u_C_CAP_AndUpper1(O005_L1_Assembly_M02_D3_Morning)_:
-1 Assign(O005_L1_Assembly_M02)
+1 AssignInShift(O005_L1_Assembly_M02_D3_Morning)
<= 0

c_u_C_CAP_AndUpper1(O005_L1_Assembly_M02_D3_Afternoon)_:
-1 Assign(O005_L1_Assembly_M02)
+1 AssignInShift(O005_L1_Assembly_M02_D3_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O005_L1_Assembly_M02_D3_Night)_:
-1 Assign(O005_L1_Assembly_M02)
+1 AssignInShift(O005_L1_Assembly_M02_D3_Night)
<= 0

c_u_C_CAP_AndUpper1(O005_L1_Assembly_M02_D4_Morning)_:
-1 Assign(O005_L1_Assembly_M02)
+1 AssignInShift(O005_L1_Assembly_M02_D4_Morning)
<= 0

c_u_C_CAP_AndUpper1(O005_L1_Assembly_M02_D4_Afternoon)_:
-1 Assign(O005_L1_Assembly_M02)
+1 AssignInShift(O005_L1_Assembly_M02_D4_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O005_L1_Assembly_M02_D4_Night)_:
-1 Assign(O005_L1_Assembly_M02)
+1 AssignInShift(O005_L1_Assembly_M02_D4_Night)
<= 0

c_u_C_CAP_AndUpper1(O005_L1_Assembly_M02_D5_Morning)_:
-1 Assign(O005_L1_Assembly_M02)
+1 AssignInShift(O005_L1_Assembly_M02_D5_Morning)
<= 0

c_u_C_CAP_AndUpper1(O005_L1_Assembly_M02_D5_Afternoon)_:
-1 Assign(O005_L1_Assembly_M02)
+1 AssignInShift(O005_L1_Assembly_M02_D5_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O005_L1_Assembly_M02_D5_Night)_:
-1 Assign(O005_L1_Assembly_M02)
+1 AssignInShift(O005_L1_Assembly_M02_D5_Night)
<= 0

c_u_C_CAP_AndUpper1(O006_L1_Cutting_M01_D1_Morning)_:
-1 Assign(O006_L1_Cutting_M01)
+1 AssignInShift(O006_L1_Cutting_M01_D1_Morning)
<= 0

c_u_C_CAP_AndUpper1(O006_L1_Cutting_M01_D1_Afternoon)_:
-1 Assign(O006_L1_Cutting_M01)
+1 AssignInShift(O006_L1_Cutting_M01_D1_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O006_L1_Cutting_M01_D1_Night)_:
-1 Assign(O006_L1_Cutting_M01)
+1 AssignInShift(O006_L1_Cutting_M01_D1_Night)
<= 0

c_u_C_CAP_AndUpper1(O006_L1_Cutting_M01_D2_Morning)_:
-1 Assign(O006_L1_Cutting_M01)
+1 AssignInShift(O006_L1_Cutting_M01_D2_Morning)
<= 0

c_u_C_CAP_AndUpper1(O006_L1_Cutting_M01_D2_Afternoon)_:
-1 Assign(O006_L1_Cutting_M01)
+1 AssignInShift(O006_L1_Cutting_M01_D2_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O006_L1_Cutting_M01_D2_Night)_:
-1 Assign(O006_L1_Cutting_M01)
+1 AssignInShift(O006_L1_Cutting_M01_D2_Night)
<= 0

c_u_C_CAP_AndUpper1(O006_L1_Cutting_M01_D3_Morning)_:
-1 Assign(O006_L1_Cutting_M01)
+1 AssignInShift(O006_L1_Cutting_M01_D3_Morning)
<= 0

c_u_C_CAP_AndUpper1(O006_L1_Cutting_M01_D3_Afternoon)_:
-1 Assign(O006_L1_Cutting_M01)
+1 AssignInShift(O006_L1_Cutting_M01_D3_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O006_L1_Cutting_M01_D3_Night)_:
-1 Assign(O006_L1_Cutting_M01)
+1 AssignInShift(O006_L1_Cutting_M01_D3_Night)
<= 0

c_u_C_CAP_AndUpper1(O006_L1_Cutting_M01_D4_Morning)_:
-1 Assign(O006_L1_Cutting_M01)
+1 AssignInShift(O006_L1_Cutting_M01_D4_Morning)
<= 0

c_u_C_CAP_AndUpper1(O006_L1_Cutting_M01_D4_Afternoon)_:
-1 Assign(O006_L1_Cutting_M01)
+1 AssignInShift(O006_L1_Cutting_M01_D4_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O006_L1_Cutting_M01_D4_Night)_:
-1 Assign(O006_L1_Cutting_M01)
+1 AssignInShift(O006_L1_Cutting_M01_D4_Night)
<= 0

c_u_C_CAP_AndUpper1(O006_L1_Cutting_M01_D5_Morning)_:
-1 Assign(O006_L1_Cutting_M01)
+1 AssignInShift(O006_L1_Cutting_M01_D5_Morning)
<= 0

c_u_C_CAP_AndUpper1(O006_L1_Cutting_M01_D5_Afternoon)_:
-1 Assign(O006_L1_Cutting_M01)
+1 AssignInShift(O006_L1_Cutting_M01_D5_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O006_L1_Cutting_M01_D5_Night)_:
-1 Assign(O006_L1_Cutting_M01)
+1 AssignInShift(O006_L1_Cutting_M01_D5_Night)
<= 0

c_u_C_CAP_AndUpper1(O006_L1_Assembly_M02_D1_Morning)_:
-1 Assign(O006_L1_Assembly_M02)
+1 AssignInShift(O006_L1_Assembly_M02_D1_Morning)
<= 0

c_u_C_CAP_AndUpper1(O006_L1_Assembly_M02_D1_Afternoon)_:
-1 Assign(O006_L1_Assembly_M02)
+1 AssignInShift(O006_L1_Assembly_M02_D1_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O006_L1_Assembly_M02_D1_Night)_:
-1 Assign(O006_L1_Assembly_M02)
+1 AssignInShift(O006_L1_Assembly_M02_D1_Night)
<= 0

c_u_C_CAP_AndUpper1(O006_L1_Assembly_M02_D2_Morning)_:
-1 Assign(O006_L1_Assembly_M02)
+1 AssignInShift(O006_L1_Assembly_M02_D2_Morning)
<= 0

c_u_C_CAP_AndUpper1(O006_L1_Assembly_M02_D2_Afternoon)_:
-1 Assign(O006_L1_Assembly_M02)
+1 AssignInShift(O006_L1_Assembly_M02_D2_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O006_L1_Assembly_M02_D2_Night)_:
-1 Assign(O006_L1_Assembly_M02)
+1 AssignInShift(O006_L1_Assembly_M02_D2_Night)
<= 0

c_u_C_CAP_AndUpper1(O006_L1_Assembly_M02_D3_Morning)_:
-1 Assign(O006_L1_Assembly_M02)
+1 AssignInShift(O006_L1_Assembly_M02_D3_Morning)
<= 0

c_u_C_CAP_AndUpper1(O006_L1_Assembly_M02_D3_Afternoon)_:
-1 Assign(O006_L1_Assembly_M02)
+1 AssignInShift(O006_L1_Assembly_M02_D3_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O006_L1_Assembly_M02_D3_Night)_:
-1 Assign(O006_L1_Assembly_M02)
+1 AssignInShift(O006_L1_Assembly_M02_D3_Night)
<= 0

c_u_C_CAP_AndUpper1(O006_L1_Assembly_M02_D4_Morning)_:
-1 Assign(O006_L1_Assembly_M02)
+1 AssignInShift(O006_L1_Assembly_M02_D4_Morning)
<= 0

c_u_C_CAP_AndUpper1(O006_L1_Assembly_M02_D4_Afternoon)_:
-1 Assign(O006_L1_Assembly_M02)
+1 AssignInShift(O006_L1_Assembly_M02_D4_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O006_L1_Assembly_M02_D4_Night)_:
-1 Assign(O006_L1_Assembly_M02)
+1 AssignInShift(O006_L1_Assembly_M02_D4_Night)
<= 0

c_u_C_CAP_AndUpper1(O006_L1_Assembly_M02_D5_Morning)_:
-1 Assign(O006_L1_Assembly_M02)
+1 AssignInShift(O006_L1_Assembly_M02_D5_Morning)
<= 0

c_u_C_CAP_AndUpper1(O006_L1_Assembly_M02_D5_Afternoon)_:
-1 Assign(O006_L1_Assembly_M02)
+1 AssignInShift(O006_L1_Assembly_M02_D5_Afternoon)
<= 0

c_u_C_CAP_AndUpper1(O006_L1_Assembly_M02_D5_Night)_:
-1 Assign(O006_L1_Assembly_M02)
+1 AssignInShift(O006_L1_Assembly_M02_D5_Night)
<= 0

c_u_C_CAP_AndUpper2(O001_L1_Cutting_M03_D1_Morning)_:
-1 ShiftAssign(O001_L1_Cutting_D1_Morning)
+1 AssignInShift(O001_L1_Cutting_M03_D1_Morning)
<= 0

c_u_C_CAP_AndUpper2(O001_L1_Cutting_M03_D1_Afternoon)_:
-1 ShiftAssign(O001_L1_Cutting_D1_Afternoon)
+1 AssignInShift(O001_L1_Cutting_M03_D1_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O001_L1_Cutting_M03_D1_Night)_:
-1 ShiftAssign(O001_L1_Cutting_D1_Night)
+1 AssignInShift(O001_L1_Cutting_M03_D1_Night)
<= 0

c_u_C_CAP_AndUpper2(O001_L1_Cutting_M03_D2_Morning)_:
-1 ShiftAssign(O001_L1_Cutting_D2_Morning)
+1 AssignInShift(O001_L1_Cutting_M03_D2_Morning)
<= 0

c_u_C_CAP_AndUpper2(O001_L1_Cutting_M03_D2_Afternoon)_:
-1 ShiftAssign(O001_L1_Cutting_D2_Afternoon)
+1 AssignInShift(O001_L1_Cutting_M03_D2_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O001_L1_Cutting_M03_D2_Night)_:
-1 ShiftAssign(O001_L1_Cutting_D2_Night)
+1 AssignInShift(O001_L1_Cutting_M03_D2_Night)
<= 0

c_u_C_CAP_AndUpper2(O001_L1_Cutting_M03_D3_Morning)_:
-1 ShiftAssign(O001_L1_Cutting_D3_Morning)
+1 AssignInShift(O001_L1_Cutting_M03_D3_Morning)
<= 0

c_u_C_CAP_AndUpper2(O001_L1_Cutting_M03_D3_Afternoon)_:
-1 ShiftAssign(O001_L1_Cutting_D3_Afternoon)
+1 AssignInShift(O001_L1_Cutting_M03_D3_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O001_L1_Cutting_M03_D3_Night)_:
-1 ShiftAssign(O001_L1_Cutting_D3_Night)
+1 AssignInShift(O001_L1_Cutting_M03_D3_Night)
<= 0

c_u_C_CAP_AndUpper2(O001_L1_Cutting_M03_D4_Morning)_:
-1 ShiftAssign(O001_L1_Cutting_D4_Morning)
+1 AssignInShift(O001_L1_Cutting_M03_D4_Morning)
<= 0

c_u_C_CAP_AndUpper2(O001_L1_Cutting_M03_D4_Afternoon)_:
-1 ShiftAssign(O001_L1_Cutting_D4_Afternoon)
+1 AssignInShift(O001_L1_Cutting_M03_D4_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O001_L1_Cutting_M03_D4_Night)_:
-1 ShiftAssign(O001_L1_Cutting_D4_Night)
+1 AssignInShift(O001_L1_Cutting_M03_D4_Night)
<= 0

c_u_C_CAP_AndUpper2(O001_L1_Cutting_M03_D5_Morning)_:
-1 ShiftAssign(O001_L1_Cutting_D5_Morning)
+1 AssignInShift(O001_L1_Cutting_M03_D5_Morning)
<= 0

c_u_C_CAP_AndUpper2(O001_L1_Cutting_M03_D5_Afternoon)_:
-1 ShiftAssign(O001_L1_Cutting_D5_Afternoon)
+1 AssignInShift(O001_L1_Cutting_M03_D5_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O001_L1_Cutting_M03_D5_Night)_:
-1 ShiftAssign(O001_L1_Cutting_D5_Night)
+1 AssignInShift(O001_L1_Cutting_M03_D5_Night)
<= 0

c_u_C_CAP_AndUpper2(O001_L1_Assembly_M02_D1_Morning)_:
-1 ShiftAssign(O001_L1_Assembly_D1_Morning)
+1 AssignInShift(O001_L1_Assembly_M02_D1_Morning)
<= 0

c_u_C_CAP_AndUpper2(O001_L1_Assembly_M02_D1_Afternoon)_:
-1 ShiftAssign(O001_L1_Assembly_D1_Afternoon)
+1 AssignInShift(O001_L1_Assembly_M02_D1_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O001_L1_Assembly_M02_D1_Night)_:
-1 ShiftAssign(O001_L1_Assembly_D1_Night)
+1 AssignInShift(O001_L1_Assembly_M02_D1_Night)
<= 0

c_u_C_CAP_AndUpper2(O001_L1_Assembly_M02_D2_Morning)_:
-1 ShiftAssign(O001_L1_Assembly_D2_Morning)
+1 AssignInShift(O001_L1_Assembly_M02_D2_Morning)
<= 0

c_u_C_CAP_AndUpper2(O001_L1_Assembly_M02_D2_Afternoon)_:
-1 ShiftAssign(O001_L1_Assembly_D2_Afternoon)
+1 AssignInShift(O001_L1_Assembly_M02_D2_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O001_L1_Assembly_M02_D2_Night)_:
-1 ShiftAssign(O001_L1_Assembly_D2_Night)
+1 AssignInShift(O001_L1_Assembly_M02_D2_Night)
<= 0

c_u_C_CAP_AndUpper2(O001_L1_Assembly_M02_D3_Morning)_:
-1 ShiftAssign(O001_L1_Assembly_D3_Morning)
+1 AssignInShift(O001_L1_Assembly_M02_D3_Morning)
<= 0

c_u_C_CAP_AndUpper2(O001_L1_Assembly_M02_D3_Afternoon)_:
-1 ShiftAssign(O001_L1_Assembly_D3_Afternoon)
+1 AssignInShift(O001_L1_Assembly_M02_D3_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O001_L1_Assembly_M02_D3_Night)_:
-1 ShiftAssign(O001_L1_Assembly_D3_Night)
+1 AssignInShift(O001_L1_Assembly_M02_D3_Night)
<= 0

c_u_C_CAP_AndUpper2(O001_L1_Assembly_M02_D4_Morning)_:
-1 ShiftAssign(O001_L1_Assembly_D4_Morning)
+1 AssignInShift(O001_L1_Assembly_M02_D4_Morning)
<= 0

c_u_C_CAP_AndUpper2(O001_L1_Assembly_M02_D4_Afternoon)_:
-1 ShiftAssign(O001_L1_Assembly_D4_Afternoon)
+1 AssignInShift(O001_L1_Assembly_M02_D4_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O001_L1_Assembly_M02_D4_Night)_:
-1 ShiftAssign(O001_L1_Assembly_D4_Night)
+1 AssignInShift(O001_L1_Assembly_M02_D4_Night)
<= 0

c_u_C_CAP_AndUpper2(O001_L1_Assembly_M02_D5_Morning)_:
-1 ShiftAssign(O001_L1_Assembly_D5_Morning)
+1 AssignInShift(O001_L1_Assembly_M02_D5_Morning)
<= 0

c_u_C_CAP_AndUpper2(O001_L1_Assembly_M02_D5_Afternoon)_:
-1 ShiftAssign(O001_L1_Assembly_D5_Afternoon)
+1 AssignInShift(O001_L1_Assembly_M02_D5_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O001_L1_Assembly_M02_D5_Night)_:
-1 ShiftAssign(O001_L1_Assembly_D5_Night)
+1 AssignInShift(O001_L1_Assembly_M02_D5_Night)
<= 0

c_u_C_CAP_AndUpper2(O002_L1_Cutting_M01_D1_Morning)_:
-1 ShiftAssign(O002_L1_Cutting_D1_Morning)
+1 AssignInShift(O002_L1_Cutting_M01_D1_Morning)
<= 0

c_u_C_CAP_AndUpper2(O002_L1_Cutting_M01_D1_Afternoon)_:
-1 ShiftAssign(O002_L1_Cutting_D1_Afternoon)
+1 AssignInShift(O002_L1_Cutting_M01_D1_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O002_L1_Cutting_M01_D1_Night)_:
-1 ShiftAssign(O002_L1_Cutting_D1_Night)
+1 AssignInShift(O002_L1_Cutting_M01_D1_Night)
<= 0

c_u_C_CAP_AndUpper2(O002_L1_Cutting_M01_D2_Morning)_:
-1 ShiftAssign(O002_L1_Cutting_D2_Morning)
+1 AssignInShift(O002_L1_Cutting_M01_D2_Morning)
<= 0

c_u_C_CAP_AndUpper2(O002_L1_Cutting_M01_D2_Afternoon)_:
-1 ShiftAssign(O002_L1_Cutting_D2_Afternoon)
+1 AssignInShift(O002_L1_Cutting_M01_D2_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O002_L1_Cutting_M01_D2_Night)_:
-1 ShiftAssign(O002_L1_Cutting_D2_Night)
+1 AssignInShift(O002_L1_Cutting_M01_D2_Night)
<= 0

c_u_C_CAP_AndUpper2(O002_L1_Cutting_M01_D3_Morning)_:
-1 ShiftAssign(O002_L1_Cutting_D3_Morning)
+1 AssignInShift(O002_L1_Cutting_M01_D3_Morning)
<= 0

c_u_C_CAP_AndUpper2(O002_L1_Cutting_M01_D3_Afternoon)_:
-1 ShiftAssign(O002_L1_Cutting_D3_Afternoon)
+1 AssignInShift(O002_L1_Cutting_M01_D3_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O002_L1_Cutting_M01_D3_Night)_:
-1 ShiftAssign(O002_L1_Cutting_D3_Night)
+1 AssignInShift(O002_L1_Cutting_M01_D3_Night)
<= 0

c_u_C_CAP_AndUpper2(O002_L1_Cutting_M01_D4_Morning)_:
-1 ShiftAssign(O002_L1_Cutting_D4_Morning)
+1 AssignInShift(O002_L1_Cutting_M01_D4_Morning)
<= 0

c_u_C_CAP_AndUpper2(O002_L1_Cutting_M01_D4_Afternoon)_:
-1 ShiftAssign(O002_L1_Cutting_D4_Afternoon)
+1 AssignInShift(O002_L1_Cutting_M01_D4_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O002_L1_Cutting_M01_D4_Night)_:
-1 ShiftAssign(O002_L1_Cutting_D4_Night)
+1 AssignInShift(O002_L1_Cutting_M01_D4_Night)
<= 0

c_u_C_CAP_AndUpper2(O002_L1_Cutting_M01_D5_Morning)_:
-1 ShiftAssign(O002_L1_Cutting_D5_Morning)
+1 AssignInShift(O002_L1_Cutting_M01_D5_Morning)
<= 0

c_u_C_CAP_AndUpper2(O002_L1_Cutting_M01_D5_Afternoon)_:
-1 ShiftAssign(O002_L1_Cutting_D5_Afternoon)
+1 AssignInShift(O002_L1_Cutting_M01_D5_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O002_L1_Cutting_M01_D5_Night)_:
-1 ShiftAssign(O002_L1_Cutting_D5_Night)
+1 AssignInShift(O002_L1_Cutting_M01_D5_Night)
<= 0

c_u_C_CAP_AndUpper2(O002_L1_Assembly_M02_D1_Morning)_:
-1 ShiftAssign(O002_L1_Assembly_D1_Morning)
+1 AssignInShift(O002_L1_Assembly_M02_D1_Morning)
<= 0

c_u_C_CAP_AndUpper2(O002_L1_Assembly_M02_D1_Afternoon)_:
-1 ShiftAssign(O002_L1_Assembly_D1_Afternoon)
+1 AssignInShift(O002_L1_Assembly_M02_D1_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O002_L1_Assembly_M02_D1_Night)_:
-1 ShiftAssign(O002_L1_Assembly_D1_Night)
+1 AssignInShift(O002_L1_Assembly_M02_D1_Night)
<= 0

c_u_C_CAP_AndUpper2(O002_L1_Assembly_M02_D2_Morning)_:
-1 ShiftAssign(O002_L1_Assembly_D2_Morning)
+1 AssignInShift(O002_L1_Assembly_M02_D2_Morning)
<= 0

c_u_C_CAP_AndUpper2(O002_L1_Assembly_M02_D2_Afternoon)_:
-1 ShiftAssign(O002_L1_Assembly_D2_Afternoon)
+1 AssignInShift(O002_L1_Assembly_M02_D2_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O002_L1_Assembly_M02_D2_Night)_:
-1 ShiftAssign(O002_L1_Assembly_D2_Night)
+1 AssignInShift(O002_L1_Assembly_M02_D2_Night)
<= 0

c_u_C_CAP_AndUpper2(O002_L1_Assembly_M02_D3_Morning)_:
-1 ShiftAssign(O002_L1_Assembly_D3_Morning)
+1 AssignInShift(O002_L1_Assembly_M02_D3_Morning)
<= 0

c_u_C_CAP_AndUpper2(O002_L1_Assembly_M02_D3_Afternoon)_:
-1 ShiftAssign(O002_L1_Assembly_D3_Afternoon)
+1 AssignInShift(O002_L1_Assembly_M02_D3_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O002_L1_Assembly_M02_D3_Night)_:
-1 ShiftAssign(O002_L1_Assembly_D3_Night)
+1 AssignInShift(O002_L1_Assembly_M02_D3_Night)
<= 0

c_u_C_CAP_AndUpper2(O002_L1_Assembly_M02_D4_Morning)_:
-1 ShiftAssign(O002_L1_Assembly_D4_Morning)
+1 AssignInShift(O002_L1_Assembly_M02_D4_Morning)
<= 0

c_u_C_CAP_AndUpper2(O002_L1_Assembly_M02_D4_Afternoon)_:
-1 ShiftAssign(O002_L1_Assembly_D4_Afternoon)
+1 AssignInShift(O002_L1_Assembly_M02_D4_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O002_L1_Assembly_M02_D4_Night)_:
-1 ShiftAssign(O002_L1_Assembly_D4_Night)
+1 AssignInShift(O002_L1_Assembly_M02_D4_Night)
<= 0

c_u_C_CAP_AndUpper2(O002_L1_Assembly_M02_D5_Morning)_:
-1 ShiftAssign(O002_L1_Assembly_D5_Morning)
+1 AssignInShift(O002_L1_Assembly_M02_D5_Morning)
<= 0

c_u_C_CAP_AndUpper2(O002_L1_Assembly_M02_D5_Afternoon)_:
-1 ShiftAssign(O002_L1_Assembly_D5_Afternoon)
+1 AssignInShift(O002_L1_Assembly_M02_D5_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O002_L1_Assembly_M02_D5_Night)_:
-1 ShiftAssign(O002_L1_Assembly_D5_Night)
+1 AssignInShift(O002_L1_Assembly_M02_D5_Night)
<= 0

c_u_C_CAP_AndUpper2(O003_L1_Cutting_M01_D1_Morning)_:
-1 ShiftAssign(O003_L1_Cutting_D1_Morning)
+1 AssignInShift(O003_L1_Cutting_M01_D1_Morning)
<= 0

c_u_C_CAP_AndUpper2(O003_L1_Cutting_M01_D1_Afternoon)_:
-1 ShiftAssign(O003_L1_Cutting_D1_Afternoon)
+1 AssignInShift(O003_L1_Cutting_M01_D1_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O003_L1_Cutting_M01_D1_Night)_:
-1 ShiftAssign(O003_L1_Cutting_D1_Night)
+1 AssignInShift(O003_L1_Cutting_M01_D1_Night)
<= 0

c_u_C_CAP_AndUpper2(O003_L1_Cutting_M01_D2_Morning)_:
-1 ShiftAssign(O003_L1_Cutting_D2_Morning)
+1 AssignInShift(O003_L1_Cutting_M01_D2_Morning)
<= 0

c_u_C_CAP_AndUpper2(O003_L1_Cutting_M01_D2_Afternoon)_:
-1 ShiftAssign(O003_L1_Cutting_D2_Afternoon)
+1 AssignInShift(O003_L1_Cutting_M01_D2_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O003_L1_Cutting_M01_D2_Night)_:
-1 ShiftAssign(O003_L1_Cutting_D2_Night)
+1 AssignInShift(O003_L1_Cutting_M01_D2_Night)
<= 0

c_u_C_CAP_AndUpper2(O003_L1_Cutting_M01_D3_Morning)_:
-1 ShiftAssign(O003_L1_Cutting_D3_Morning)
+1 AssignInShift(O003_L1_Cutting_M01_D3_Morning)
<= 0

c_u_C_CAP_AndUpper2(O003_L1_Cutting_M01_D3_Afternoon)_:
-1 ShiftAssign(O003_L1_Cutting_D3_Afternoon)
+1 AssignInShift(O003_L1_Cutting_M01_D3_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O003_L1_Cutting_M01_D3_Night)_:
-1 ShiftAssign(O003_L1_Cutting_D3_Night)
+1 AssignInShift(O003_L1_Cutting_M01_D3_Night)
<= 0

c_u_C_CAP_AndUpper2(O003_L1_Cutting_M01_D4_Morning)_:
-1 ShiftAssign(O003_L1_Cutting_D4_Morning)
+1 AssignInShift(O003_L1_Cutting_M01_D4_Morning)
<= 0

c_u_C_CAP_AndUpper2(O003_L1_Cutting_M01_D4_Afternoon)_:
-1 ShiftAssign(O003_L1_Cutting_D4_Afternoon)
+1 AssignInShift(O003_L1_Cutting_M01_D4_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O003_L1_Cutting_M01_D4_Night)_:
-1 ShiftAssign(O003_L1_Cutting_D4_Night)
+1 AssignInShift(O003_L1_Cutting_M01_D4_Night)
<= 0

c_u_C_CAP_AndUpper2(O003_L1_Cutting_M01_D5_Morning)_:
-1 ShiftAssign(O003_L1_Cutting_D5_Morning)
+1 AssignInShift(O003_L1_Cutting_M01_D5_Morning)
<= 0

c_u_C_CAP_AndUpper2(O003_L1_Cutting_M01_D5_Afternoon)_:
-1 ShiftAssign(O003_L1_Cutting_D5_Afternoon)
+1 AssignInShift(O003_L1_Cutting_M01_D5_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O003_L1_Cutting_M01_D5_Night)_:
-1 ShiftAssign(O003_L1_Cutting_D5_Night)
+1 AssignInShift(O003_L1_Cutting_M01_D5_Night)
<= 0

c_u_C_CAP_AndUpper2(O003_L1_Assembly_M02_D1_Morning)_:
-1 ShiftAssign(O003_L1_Assembly_D1_Morning)
+1 AssignInShift(O003_L1_Assembly_M02_D1_Morning)
<= 0

c_u_C_CAP_AndUpper2(O003_L1_Assembly_M02_D1_Afternoon)_:
-1 ShiftAssign(O003_L1_Assembly_D1_Afternoon)
+1 AssignInShift(O003_L1_Assembly_M02_D1_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O003_L1_Assembly_M02_D1_Night)_:
-1 ShiftAssign(O003_L1_Assembly_D1_Night)
+1 AssignInShift(O003_L1_Assembly_M02_D1_Night)
<= 0

c_u_C_CAP_AndUpper2(O003_L1_Assembly_M02_D2_Morning)_:
-1 ShiftAssign(O003_L1_Assembly_D2_Morning)
+1 AssignInShift(O003_L1_Assembly_M02_D2_Morning)
<= 0

c_u_C_CAP_AndUpper2(O003_L1_Assembly_M02_D2_Afternoon)_:
-1 ShiftAssign(O003_L1_Assembly_D2_Afternoon)
+1 AssignInShift(O003_L1_Assembly_M02_D2_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O003_L1_Assembly_M02_D2_Night)_:
-1 ShiftAssign(O003_L1_Assembly_D2_Night)
+1 AssignInShift(O003_L1_Assembly_M02_D2_Night)
<= 0

c_u_C_CAP_AndUpper2(O003_L1_Assembly_M02_D3_Morning)_:
-1 ShiftAssign(O003_L1_Assembly_D3_Morning)
+1 AssignInShift(O003_L1_Assembly_M02_D3_Morning)
<= 0

c_u_C_CAP_AndUpper2(O003_L1_Assembly_M02_D3_Afternoon)_:
-1 ShiftAssign(O003_L1_Assembly_D3_Afternoon)
+1 AssignInShift(O003_L1_Assembly_M02_D3_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O003_L1_Assembly_M02_D3_Night)_:
-1 ShiftAssign(O003_L1_Assembly_D3_Night)
+1 AssignInShift(O003_L1_Assembly_M02_D3_Night)
<= 0

c_u_C_CAP_AndUpper2(O003_L1_Assembly_M02_D4_Morning)_:
-1 ShiftAssign(O003_L1_Assembly_D4_Morning)
+1 AssignInShift(O003_L1_Assembly_M02_D4_Morning)
<= 0

c_u_C_CAP_AndUpper2(O003_L1_Assembly_M02_D4_Afternoon)_:
-1 ShiftAssign(O003_L1_Assembly_D4_Afternoon)
+1 AssignInShift(O003_L1_Assembly_M02_D4_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O003_L1_Assembly_M02_D4_Night)_:
-1 ShiftAssign(O003_L1_Assembly_D4_Night)
+1 AssignInShift(O003_L1_Assembly_M02_D4_Night)
<= 0

c_u_C_CAP_AndUpper2(O003_L1_Assembly_M02_D5_Morning)_:
-1 ShiftAssign(O003_L1_Assembly_D5_Morning)
+1 AssignInShift(O003_L1_Assembly_M02_D5_Morning)
<= 0

c_u_C_CAP_AndUpper2(O003_L1_Assembly_M02_D5_Afternoon)_:
-1 ShiftAssign(O003_L1_Assembly_D5_Afternoon)
+1 AssignInShift(O003_L1_Assembly_M02_D5_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O003_L1_Assembly_M02_D5_Night)_:
-1 ShiftAssign(O003_L1_Assembly_D5_Night)
+1 AssignInShift(O003_L1_Assembly_M02_D5_Night)
<= 0

c_u_C_CAP_AndUpper2(O004_L1_Cutting_M01_D1_Morning)_:
-1 ShiftAssign(O004_L1_Cutting_D1_Morning)
+1 AssignInShift(O004_L1_Cutting_M01_D1_Morning)
<= 0

c_u_C_CAP_AndUpper2(O004_L1_Cutting_M01_D1_Afternoon)_:
-1 ShiftAssign(O004_L1_Cutting_D1_Afternoon)
+1 AssignInShift(O004_L1_Cutting_M01_D1_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O004_L1_Cutting_M01_D1_Night)_:
-1 ShiftAssign(O004_L1_Cutting_D1_Night)
+1 AssignInShift(O004_L1_Cutting_M01_D1_Night)
<= 0

c_u_C_CAP_AndUpper2(O004_L1_Cutting_M01_D2_Morning)_:
-1 ShiftAssign(O004_L1_Cutting_D2_Morning)
+1 AssignInShift(O004_L1_Cutting_M01_D2_Morning)
<= 0

c_u_C_CAP_AndUpper2(O004_L1_Cutting_M01_D2_Afternoon)_:
-1 ShiftAssign(O004_L1_Cutting_D2_Afternoon)
+1 AssignInShift(O004_L1_Cutting_M01_D2_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O004_L1_Cutting_M01_D2_Night)_:
-1 ShiftAssign(O004_L1_Cutting_D2_Night)
+1 AssignInShift(O004_L1_Cutting_M01_D2_Night)
<= 0

c_u_C_CAP_AndUpper2(O004_L1_Cutting_M01_D3_Morning)_:
-1 ShiftAssign(O004_L1_Cutting_D3_Morning)
+1 AssignInShift(O004_L1_Cutting_M01_D3_Morning)
<= 0

c_u_C_CAP_AndUpper2(O004_L1_Cutting_M01_D3_Afternoon)_:
-1 ShiftAssign(O004_L1_Cutting_D3_Afternoon)
+1 AssignInShift(O004_L1_Cutting_M01_D3_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O004_L1_Cutting_M01_D3_Night)_:
-1 ShiftAssign(O004_L1_Cutting_D3_Night)
+1 AssignInShift(O004_L1_Cutting_M01_D3_Night)
<= 0

c_u_C_CAP_AndUpper2(O004_L1_Cutting_M01_D4_Morning)_:
-1 ShiftAssign(O004_L1_Cutting_D4_Morning)
+1 AssignInShift(O004_L1_Cutting_M01_D4_Morning)
<= 0

c_u_C_CAP_AndUpper2(O004_L1_Cutting_M01_D4_Afternoon)_:
-1 ShiftAssign(O004_L1_Cutting_D4_Afternoon)
+1 AssignInShift(O004_L1_Cutting_M01_D4_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O004_L1_Cutting_M01_D4_Night)_:
-1 ShiftAssign(O004_L1_Cutting_D4_Night)
+1 AssignInShift(O004_L1_Cutting_M01_D4_Night)
<= 0

c_u_C_CAP_AndUpper2(O004_L1_Cutting_M01_D5_Morning)_:
-1 ShiftAssign(O004_L1_Cutting_D5_Morning)
+1 AssignInShift(O004_L1_Cutting_M01_D5_Morning)
<= 0

c_u_C_CAP_AndUpper2(O004_L1_Cutting_M01_D5_Afternoon)_:
-1 ShiftAssign(O004_L1_Cutting_D5_Afternoon)
+1 AssignInShift(O004_L1_Cutting_M01_D5_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O004_L1_Cutting_M01_D5_Night)_:
-1 ShiftAssign(O004_L1_Cutting_D5_Night)
+1 AssignInShift(O004_L1_Cutting_M01_D5_Night)
<= 0

c_u_C_CAP_AndUpper2(O004_L1_Assembly_M02_D1_Morning)_:
-1 ShiftAssign(O004_L1_Assembly_D1_Morning)
+1 AssignInShift(O004_L1_Assembly_M02_D1_Morning)
<= 0

c_u_C_CAP_AndUpper2(O004_L1_Assembly_M02_D1_Afternoon)_:
-1 ShiftAssign(O004_L1_Assembly_D1_Afternoon)
+1 AssignInShift(O004_L1_Assembly_M02_D1_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O004_L1_Assembly_M02_D1_Night)_:
-1 ShiftAssign(O004_L1_Assembly_D1_Night)
+1 AssignInShift(O004_L1_Assembly_M02_D1_Night)
<= 0

c_u_C_CAP_AndUpper2(O004_L1_Assembly_M02_D2_Morning)_:
-1 ShiftAssign(O004_L1_Assembly_D2_Morning)
+1 AssignInShift(O004_L1_Assembly_M02_D2_Morning)
<= 0

c_u_C_CAP_AndUpper2(O004_L1_Assembly_M02_D2_Afternoon)_:
-1 ShiftAssign(O004_L1_Assembly_D2_Afternoon)
+1 AssignInShift(O004_L1_Assembly_M02_D2_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O004_L1_Assembly_M02_D2_Night)_:
-1 ShiftAssign(O004_L1_Assembly_D2_Night)
+1 AssignInShift(O004_L1_Assembly_M02_D2_Night)
<= 0

c_u_C_CAP_AndUpper2(O004_L1_Assembly_M02_D3_Morning)_:
-1 ShiftAssign(O004_L1_Assembly_D3_Morning)
+1 AssignInShift(O004_L1_Assembly_M02_D3_Morning)
<= 0

c_u_C_CAP_AndUpper2(O004_L1_Assembly_M02_D3_Afternoon)_:
-1 ShiftAssign(O004_L1_Assembly_D3_Afternoon)
+1 AssignInShift(O004_L1_Assembly_M02_D3_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O004_L1_Assembly_M02_D3_Night)_:
-1 ShiftAssign(O004_L1_Assembly_D3_Night)
+1 AssignInShift(O004_L1_Assembly_M02_D3_Night)
<= 0

c_u_C_CAP_AndUpper2(O004_L1_Assembly_M02_D4_Morning)_:
-1 ShiftAssign(O004_L1_Assembly_D4_Morning)
+1 AssignInShift(O004_L1_Assembly_M02_D4_Morning)
<= 0

c_u_C_CAP_AndUpper2(O004_L1_Assembly_M02_D4_Afternoon)_:
-1 ShiftAssign(O004_L1_Assembly_D4_Afternoon)
+1 AssignInShift(O004_L1_Assembly_M02_D4_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O004_L1_Assembly_M02_D4_Night)_:
-1 ShiftAssign(O004_L1_Assembly_D4_Night)
+1 AssignInShift(O004_L1_Assembly_M02_D4_Night)
<= 0

c_u_C_CAP_AndUpper2(O004_L1_Assembly_M02_D5_Morning)_:
-1 ShiftAssign(O004_L1_Assembly_D5_Morning)
+1 AssignInShift(O004_L1_Assembly_M02_D5_Morning)
<= 0

c_u_C_CAP_AndUpper2(O004_L1_Assembly_M02_D5_Afternoon)_:
-1 ShiftAssign(O004_L1_Assembly_D5_Afternoon)
+1 AssignInShift(O004_L1_Assembly_M02_D5_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O004_L1_Assembly_M02_D5_Night)_:
-1 ShiftAssign(O004_L1_Assembly_D5_Night)
+1 AssignInShift(O004_L1_Assembly_M02_D5_Night)
<= 0

c_u_C_CAP_AndUpper2(O004_L2_Cutting_M01_D1_Morning)_:
-1 ShiftAssign(O004_L2_Cutting_D1_Morning)
+1 AssignInShift(O004_L2_Cutting_M01_D1_Morning)
<= 0

c_u_C_CAP_AndUpper2(O004_L2_Cutting_M01_D1_Afternoon)_:
-1 ShiftAssign(O004_L2_Cutting_D1_Afternoon)
+1 AssignInShift(O004_L2_Cutting_M01_D1_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O004_L2_Cutting_M01_D1_Night)_:
-1 ShiftAssign(O004_L2_Cutting_D1_Night)
+1 AssignInShift(O004_L2_Cutting_M01_D1_Night)
<= 0

c_u_C_CAP_AndUpper2(O004_L2_Cutting_M01_D2_Morning)_:
-1 ShiftAssign(O004_L2_Cutting_D2_Morning)
+1 AssignInShift(O004_L2_Cutting_M01_D2_Morning)
<= 0

c_u_C_CAP_AndUpper2(O004_L2_Cutting_M01_D2_Afternoon)_:
-1 ShiftAssign(O004_L2_Cutting_D2_Afternoon)
+1 AssignInShift(O004_L2_Cutting_M01_D2_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O004_L2_Cutting_M01_D2_Night)_:
-1 ShiftAssign(O004_L2_Cutting_D2_Night)
+1 AssignInShift(O004_L2_Cutting_M01_D2_Night)
<= 0

c_u_C_CAP_AndUpper2(O004_L2_Cutting_M01_D3_Morning)_:
-1 ShiftAssign(O004_L2_Cutting_D3_Morning)
+1 AssignInShift(O004_L2_Cutting_M01_D3_Morning)
<= 0

c_u_C_CAP_AndUpper2(O004_L2_Cutting_M01_D3_Afternoon)_:
-1 ShiftAssign(O004_L2_Cutting_D3_Afternoon)
+1 AssignInShift(O004_L2_Cutting_M01_D3_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O004_L2_Cutting_M01_D3_Night)_:
-1 ShiftAssign(O004_L2_Cutting_D3_Night)
+1 AssignInShift(O004_L2_Cutting_M01_D3_Night)
<= 0

c_u_C_CAP_AndUpper2(O004_L2_Cutting_M01_D4_Morning)_:
-1 ShiftAssign(O004_L2_Cutting_D4_Morning)
+1 AssignInShift(O004_L2_Cutting_M01_D4_Morning)
<= 0

c_u_C_CAP_AndUpper2(O004_L2_Cutting_M01_D4_Afternoon)_:
-1 ShiftAssign(O004_L2_Cutting_D4_Afternoon)
+1 AssignInShift(O004_L2_Cutting_M01_D4_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O004_L2_Cutting_M01_D4_Night)_:
-1 ShiftAssign(O004_L2_Cutting_D4_Night)
+1 AssignInShift(O004_L2_Cutting_M01_D4_Night)
<= 0

c_u_C_CAP_AndUpper2(O004_L2_Cutting_M01_D5_Morning)_:
-1 ShiftAssign(O004_L2_Cutting_D5_Morning)
+1 AssignInShift(O004_L2_Cutting_M01_D5_Morning)
<= 0

c_u_C_CAP_AndUpper2(O004_L2_Cutting_M01_D5_Afternoon)_:
-1 ShiftAssign(O004_L2_Cutting_D5_Afternoon)
+1 AssignInShift(O004_L2_Cutting_M01_D5_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O004_L2_Cutting_M01_D5_Night)_:
-1 ShiftAssign(O004_L2_Cutting_D5_Night)
+1 AssignInShift(O004_L2_Cutting_M01_D5_Night)
<= 0

c_u_C_CAP_AndUpper2(O004_L2_Assembly_M02_D1_Morning)_:
-1 ShiftAssign(O004_L2_Assembly_D1_Morning)
+1 AssignInShift(O004_L2_Assembly_M02_D1_Morning)
<= 0

c_u_C_CAP_AndUpper2(O004_L2_Assembly_M02_D1_Afternoon)_:
-1 ShiftAssign(O004_L2_Assembly_D1_Afternoon)
+1 AssignInShift(O004_L2_Assembly_M02_D1_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O004_L2_Assembly_M02_D1_Night)_:
-1 ShiftAssign(O004_L2_Assembly_D1_Night)
+1 AssignInShift(O004_L2_Assembly_M02_D1_Night)
<= 0

c_u_C_CAP_AndUpper2(O004_L2_Assembly_M02_D2_Morning)_:
-1 ShiftAssign(O004_L2_Assembly_D2_Morning)
+1 AssignInShift(O004_L2_Assembly_M02_D2_Morning)
<= 0

c_u_C_CAP_AndUpper2(O004_L2_Assembly_M02_D2_Afternoon)_:
-1 ShiftAssign(O004_L2_Assembly_D2_Afternoon)
+1 AssignInShift(O004_L2_Assembly_M02_D2_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O004_L2_Assembly_M02_D2_Night)_:
-1 ShiftAssign(O004_L2_Assembly_D2_Night)
+1 AssignInShift(O004_L2_Assembly_M02_D2_Night)
<= 0

c_u_C_CAP_AndUpper2(O004_L2_Assembly_M02_D3_Morning)_:
-1 ShiftAssign(O004_L2_Assembly_D3_Morning)
+1 AssignInShift(O004_L2_Assembly_M02_D3_Morning)
<= 0

c_u_C_CAP_AndUpper2(O004_L2_Assembly_M02_D3_Afternoon)_:
-1 ShiftAssign(O004_L2_Assembly_D3_Afternoon)
+1 AssignInShift(O004_L2_Assembly_M02_D3_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O004_L2_Assembly_M02_D3_Night)_:
-1 ShiftAssign(O004_L2_Assembly_D3_Night)
+1 AssignInShift(O004_L2_Assembly_M02_D3_Night)
<= 0

c_u_C_CAP_AndUpper2(O004_L2_Assembly_M02_D4_Morning)_:
-1 ShiftAssign(O004_L2_Assembly_D4_Morning)
+1 AssignInShift(O004_L2_Assembly_M02_D4_Morning)
<= 0

c_u_C_CAP_AndUpper2(O004_L2_Assembly_M02_D4_Afternoon)_:
-1 ShiftAssign(O004_L2_Assembly_D4_Afternoon)
+1 AssignInShift(O004_L2_Assembly_M02_D4_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O004_L2_Assembly_M02_D4_Night)_:
-1 ShiftAssign(O004_L2_Assembly_D4_Night)
+1 AssignInShift(O004_L2_Assembly_M02_D4_Night)
<= 0

c_u_C_CAP_AndUpper2(O004_L2_Assembly_M02_D5_Morning)_:
-1 ShiftAssign(O004_L2_Assembly_D5_Morning)
+1 AssignInShift(O004_L2_Assembly_M02_D5_Morning)
<= 0

c_u_C_CAP_AndUpper2(O004_L2_Assembly_M02_D5_Afternoon)_:
-1 ShiftAssign(O004_L2_Assembly_D5_Afternoon)
+1 AssignInShift(O004_L2_Assembly_M02_D5_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O004_L2_Assembly_M02_D5_Night)_:
-1 ShiftAssign(O004_L2_Assembly_D5_Night)
+1 AssignInShift(O004_L2_Assembly_M02_D5_Night)
<= 0

c_u_C_CAP_AndUpper2(O005_L1_Cutting_M01_D1_Morning)_:
-1 ShiftAssign(O005_L1_Cutting_D1_Morning)
+1 AssignInShift(O005_L1_Cutting_M01_D1_Morning)
<= 0

c_u_C_CAP_AndUpper2(O005_L1_Cutting_M01_D1_Afternoon)_:
-1 ShiftAssign(O005_L1_Cutting_D1_Afternoon)
+1 AssignInShift(O005_L1_Cutting_M01_D1_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O005_L1_Cutting_M01_D1_Night)_:
-1 ShiftAssign(O005_L1_Cutting_D1_Night)
+1 AssignInShift(O005_L1_Cutting_M01_D1_Night)
<= 0

c_u_C_CAP_AndUpper2(O005_L1_Cutting_M01_D2_Morning)_:
-1 ShiftAssign(O005_L1_Cutting_D2_Morning)
+1 AssignInShift(O005_L1_Cutting_M01_D2_Morning)
<= 0

c_u_C_CAP_AndUpper2(O005_L1_Cutting_M01_D2_Afternoon)_:
-1 ShiftAssign(O005_L1_Cutting_D2_Afternoon)
+1 AssignInShift(O005_L1_Cutting_M01_D2_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O005_L1_Cutting_M01_D2_Night)_:
-1 ShiftAssign(O005_L1_Cutting_D2_Night)
+1 AssignInShift(O005_L1_Cutting_M01_D2_Night)
<= 0

c_u_C_CAP_AndUpper2(O005_L1_Cutting_M01_D3_Morning)_:
-1 ShiftAssign(O005_L1_Cutting_D3_Morning)
+1 AssignInShift(O005_L1_Cutting_M01_D3_Morning)
<= 0

c_u_C_CAP_AndUpper2(O005_L1_Cutting_M01_D3_Afternoon)_:
-1 ShiftAssign(O005_L1_Cutting_D3_Afternoon)
+1 AssignInShift(O005_L1_Cutting_M01_D3_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O005_L1_Cutting_M01_D3_Night)_:
-1 ShiftAssign(O005_L1_Cutting_D3_Night)
+1 AssignInShift(O005_L1_Cutting_M01_D3_Night)
<= 0

c_u_C_CAP_AndUpper2(O005_L1_Cutting_M01_D4_Morning)_:
-1 ShiftAssign(O005_L1_Cutting_D4_Morning)
+1 AssignInShift(O005_L1_Cutting_M01_D4_Morning)
<= 0

c_u_C_CAP_AndUpper2(O005_L1_Cutting_M01_D4_Afternoon)_:
-1 ShiftAssign(O005_L1_Cutting_D4_Afternoon)
+1 AssignInShift(O005_L1_Cutting_M01_D4_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O005_L1_Cutting_M01_D4_Night)_:
-1 ShiftAssign(O005_L1_Cutting_D4_Night)
+1 AssignInShift(O005_L1_Cutting_M01_D4_Night)
<= 0

c_u_C_CAP_AndUpper2(O005_L1_Cutting_M01_D5_Morning)_:
-1 ShiftAssign(O005_L1_Cutting_D5_Morning)
+1 AssignInShift(O005_L1_Cutting_M01_D5_Morning)
<= 0

c_u_C_CAP_AndUpper2(O005_L1_Cutting_M01_D5_Afternoon)_:
-1 ShiftAssign(O005_L1_Cutting_D5_Afternoon)
+1 AssignInShift(O005_L1_Cutting_M01_D5_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O005_L1_Cutting_M01_D5_Night)_:
-1 ShiftAssign(O005_L1_Cutting_D5_Night)
+1 AssignInShift(O005_L1_Cutting_M01_D5_Night)
<= 0

c_u_C_CAP_AndUpper2(O005_L1_Assembly_M02_D1_Morning)_:
-1 ShiftAssign(O005_L1_Assembly_D1_Morning)
+1 AssignInShift(O005_L1_Assembly_M02_D1_Morning)
<= 0

c_u_C_CAP_AndUpper2(O005_L1_Assembly_M02_D1_Afternoon)_:
-1 ShiftAssign(O005_L1_Assembly_D1_Afternoon)
+1 AssignInShift(O005_L1_Assembly_M02_D1_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O005_L1_Assembly_M02_D1_Night)_:
-1 ShiftAssign(O005_L1_Assembly_D1_Night)
+1 AssignInShift(O005_L1_Assembly_M02_D1_Night)
<= 0

c_u_C_CAP_AndUpper2(O005_L1_Assembly_M02_D2_Morning)_:
-1 ShiftAssign(O005_L1_Assembly_D2_Morning)
+1 AssignInShift(O005_L1_Assembly_M02_D2_Morning)
<= 0

c_u_C_CAP_AndUpper2(O005_L1_Assembly_M02_D2_Afternoon)_:
-1 ShiftAssign(O005_L1_Assembly_D2_Afternoon)
+1 AssignInShift(O005_L1_Assembly_M02_D2_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O005_L1_Assembly_M02_D2_Night)_:
-1 ShiftAssign(O005_L1_Assembly_D2_Night)
+1 AssignInShift(O005_L1_Assembly_M02_D2_Night)
<= 0

c_u_C_CAP_AndUpper2(O005_L1_Assembly_M02_D3_Morning)_:
-1 ShiftAssign(O005_L1_Assembly_D3_Morning)
+1 AssignInShift(O005_L1_Assembly_M02_D3_Morning)
<= 0

c_u_C_CAP_AndUpper2(O005_L1_Assembly_M02_D3_Afternoon)_:
-1 ShiftAssign(O005_L1_Assembly_D3_Afternoon)
+1 AssignInShift(O005_L1_Assembly_M02_D3_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O005_L1_Assembly_M02_D3_Night)_:
-1 ShiftAssign(O005_L1_Assembly_D3_Night)
+1 AssignInShift(O005_L1_Assembly_M02_D3_Night)
<= 0

c_u_C_CAP_AndUpper2(O005_L1_Assembly_M02_D4_Morning)_:
-1 ShiftAssign(O005_L1_Assembly_D4_Morning)
+1 AssignInShift(O005_L1_Assembly_M02_D4_Morning)
<= 0

c_u_C_CAP_AndUpper2(O005_L1_Assembly_M02_D4_Afternoon)_:
-1 ShiftAssign(O005_L1_Assembly_D4_Afternoon)
+1 AssignInShift(O005_L1_Assembly_M02_D4_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O005_L1_Assembly_M02_D4_Night)_:
-1 ShiftAssign(O005_L1_Assembly_D4_Night)
+1 AssignInShift(O005_L1_Assembly_M02_D4_Night)
<= 0

c_u_C_CAP_AndUpper2(O005_L1_Assembly_M02_D5_Morning)_:
-1 ShiftAssign(O005_L1_Assembly_D5_Morning)
+1 AssignInShift(O005_L1_Assembly_M02_D5_Morning)
<= 0

c_u_C_CAP_AndUpper2(O005_L1_Assembly_M02_D5_Afternoon)_:
-1 ShiftAssign(O005_L1_Assembly_D5_Afternoon)
+1 AssignInShift(O005_L1_Assembly_M02_D5_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O005_L1_Assembly_M02_D5_Night)_:
-1 ShiftAssign(O005_L1_Assembly_D5_Night)
+1 AssignInShift(O005_L1_Assembly_M02_D5_Night)
<= 0

c_u_C_CAP_AndUpper2(O006_L1_Cutting_M01_D1_Morning)_:
-1 ShiftAssign(O006_L1_Cutting_D1_Morning)
+1 AssignInShift(O006_L1_Cutting_M01_D1_Morning)
<= 0

c_u_C_CAP_AndUpper2(O006_L1_Cutting_M01_D1_Afternoon)_:
-1 ShiftAssign(O006_L1_Cutting_D1_Afternoon)
+1 AssignInShift(O006_L1_Cutting_M01_D1_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O006_L1_Cutting_M01_D1_Night)_:
-1 ShiftAssign(O006_L1_Cutting_D1_Night)
+1 AssignInShift(O006_L1_Cutting_M01_D1_Night)
<= 0

c_u_C_CAP_AndUpper2(O006_L1_Cutting_M01_D2_Morning)_:
-1 ShiftAssign(O006_L1_Cutting_D2_Morning)
+1 AssignInShift(O006_L1_Cutting_M01_D2_Morning)
<= 0

c_u_C_CAP_AndUpper2(O006_L1_Cutting_M01_D2_Afternoon)_:
-1 ShiftAssign(O006_L1_Cutting_D2_Afternoon)
+1 AssignInShift(O006_L1_Cutting_M01_D2_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O006_L1_Cutting_M01_D2_Night)_:
-1 ShiftAssign(O006_L1_Cutting_D2_Night)
+1 AssignInShift(O006_L1_Cutting_M01_D2_Night)
<= 0

c_u_C_CAP_AndUpper2(O006_L1_Cutting_M01_D3_Morning)_:
-1 ShiftAssign(O006_L1_Cutting_D3_Morning)
+1 AssignInShift(O006_L1_Cutting_M01_D3_Morning)
<= 0

c_u_C_CAP_AndUpper2(O006_L1_Cutting_M01_D3_Afternoon)_:
-1 ShiftAssign(O006_L1_Cutting_D3_Afternoon)
+1 AssignInShift(O006_L1_Cutting_M01_D3_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O006_L1_Cutting_M01_D3_Night)_:
-1 ShiftAssign(O006_L1_Cutting_D3_Night)
+1 AssignInShift(O006_L1_Cutting_M01_D3_Night)
<= 0

c_u_C_CAP_AndUpper2(O006_L1_Cutting_M01_D4_Morning)_:
-1 ShiftAssign(O006_L1_Cutting_D4_Morning)
+1 AssignInShift(O006_L1_Cutting_M01_D4_Morning)
<= 0

c_u_C_CAP_AndUpper2(O006_L1_Cutting_M01_D4_Afternoon)_:
-1 ShiftAssign(O006_L1_Cutting_D4_Afternoon)
+1 AssignInShift(O006_L1_Cutting_M01_D4_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O006_L1_Cutting_M01_D4_Night)_:
-1 ShiftAssign(O006_L1_Cutting_D4_Night)
+1 AssignInShift(O006_L1_Cutting_M01_D4_Night)
<= 0

c_u_C_CAP_AndUpper2(O006_L1_Cutting_M01_D5_Morning)_:
-1 ShiftAssign(O006_L1_Cutting_D5_Morning)
+1 AssignInShift(O006_L1_Cutting_M01_D5_Morning)
<= 0

c_u_C_CAP_AndUpper2(O006_L1_Cutting_M01_D5_Afternoon)_:
-1 ShiftAssign(O006_L1_Cutting_D5_Afternoon)
+1 AssignInShift(O006_L1_Cutting_M01_D5_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O006_L1_Cutting_M01_D5_Night)_:
-1 ShiftAssign(O006_L1_Cutting_D5_Night)
+1 AssignInShift(O006_L1_Cutting_M01_D5_Night)
<= 0

c_u_C_CAP_AndUpper2(O006_L1_Assembly_M02_D1_Morning)_:
-1 ShiftAssign(O006_L1_Assembly_D1_Morning)
+1 AssignInShift(O006_L1_Assembly_M02_D1_Morning)
<= 0

c_u_C_CAP_AndUpper2(O006_L1_Assembly_M02_D1_Afternoon)_:
-1 ShiftAssign(O006_L1_Assembly_D1_Afternoon)
+1 AssignInShift(O006_L1_Assembly_M02_D1_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O006_L1_Assembly_M02_D1_Night)_:
-1 ShiftAssign(O006_L1_Assembly_D1_Night)
+1 AssignInShift(O006_L1_Assembly_M02_D1_Night)
<= 0

c_u_C_CAP_AndUpper2(O006_L1_Assembly_M02_D2_Morning)_:
-1 ShiftAssign(O006_L1_Assembly_D2_Morning)
+1 AssignInShift(O006_L1_Assembly_M02_D2_Morning)
<= 0

c_u_C_CAP_AndUpper2(O006_L1_Assembly_M02_D2_Afternoon)_:
-1 ShiftAssign(O006_L1_Assembly_D2_Afternoon)
+1 AssignInShift(O006_L1_Assembly_M02_D2_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O006_L1_Assembly_M02_D2_Night)_:
-1 ShiftAssign(O006_L1_Assembly_D2_Night)
+1 AssignInShift(O006_L1_Assembly_M02_D2_Night)
<= 0

c_u_C_CAP_AndUpper2(O006_L1_Assembly_M02_D3_Morning)_:
-1 ShiftAssign(O006_L1_Assembly_D3_Morning)
+1 AssignInShift(O006_L1_Assembly_M02_D3_Morning)
<= 0

c_u_C_CAP_AndUpper2(O006_L1_Assembly_M02_D3_Afternoon)_:
-1 ShiftAssign(O006_L1_Assembly_D3_Afternoon)
+1 AssignInShift(O006_L1_Assembly_M02_D3_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O006_L1_Assembly_M02_D3_Night)_:
-1 ShiftAssign(O006_L1_Assembly_D3_Night)
+1 AssignInShift(O006_L1_Assembly_M02_D3_Night)
<= 0

c_u_C_CAP_AndUpper2(O006_L1_Assembly_M02_D4_Morning)_:
-1 ShiftAssign(O006_L1_Assembly_D4_Morning)
+1 AssignInShift(O006_L1_Assembly_M02_D4_Morning)
<= 0

c_u_C_CAP_AndUpper2(O006_L1_Assembly_M02_D4_Afternoon)_:
-1 ShiftAssign(O006_L1_Assembly_D4_Afternoon)
+1 AssignInShift(O006_L1_Assembly_M02_D4_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O006_L1_Assembly_M02_D4_Night)_:
-1 ShiftAssign(O006_L1_Assembly_D4_Night)
+1 AssignInShift(O006_L1_Assembly_M02_D4_Night)
<= 0

c_u_C_CAP_AndUpper2(O006_L1_Assembly_M02_D5_Morning)_:
-1 ShiftAssign(O006_L1_Assembly_D5_Morning)
+1 AssignInShift(O006_L1_Assembly_M02_D5_Morning)
<= 0

c_u_C_CAP_AndUpper2(O006_L1_Assembly_M02_D5_Afternoon)_:
-1 ShiftAssign(O006_L1_Assembly_D5_Afternoon)
+1 AssignInShift(O006_L1_Assembly_M02_D5_Afternoon)
<= 0

c_u_C_CAP_AndUpper2(O006_L1_Assembly_M02_D5_Night)_:
-1 ShiftAssign(O006_L1_Assembly_D5_Night)
+1 AssignInShift(O006_L1_Assembly_M02_D5_Night)
<= 0

c_u_C_CAP_AndLower(O001_L1_Cutting_M03_D1_Morning)_:
+1 Assign(O001_L1_Cutting_M03)
+1 ShiftAssign(O001_L1_Cutting_D1_Morning)
-1 AssignInShift(O001_L1_Cutting_M03_D1_Morning)
<= 1

c_u_C_CAP_AndLower(O001_L1_Cutting_M03_D1_Afternoon)_:
+1 Assign(O001_L1_Cutting_M03)
+1 ShiftAssign(O001_L1_Cutting_D1_Afternoon)
-1 AssignInShift(O001_L1_Cutting_M03_D1_Afternoon)
<= 1

c_u_C_CAP_AndLower(O001_L1_Cutting_M03_D1_Night)_:
+1 Assign(O001_L1_Cutting_M03)
+1 ShiftAssign(O001_L1_Cutting_D1_Night)
-1 AssignInShift(O001_L1_Cutting_M03_D1_Night)
<= 1

c_u_C_CAP_AndLower(O001_L1_Cutting_M03_D2_Morning)_:
+1 Assign(O001_L1_Cutting_M03)
+1 ShiftAssign(O001_L1_Cutting_D2_Morning)
-1 AssignInShift(O001_L1_Cutting_M03_D2_Morning)
<= 1

c_u_C_CAP_AndLower(O001_L1_Cutting_M03_D2_Afternoon)_:
+1 Assign(O001_L1_Cutting_M03)
+1 ShiftAssign(O001_L1_Cutting_D2_Afternoon)
-1 AssignInShift(O001_L1_Cutting_M03_D2_Afternoon)
<= 1

c_u_C_CAP_AndLower(O001_L1_Cutting_M03_D2_Night)_:
+1 Assign(O001_L1_Cutting_M03)
+1 ShiftAssign(O001_L1_Cutting_D2_Night)
-1 AssignInShift(O001_L1_Cutting_M03_D2_Night)
<= 1

c_u_C_CAP_AndLower(O001_L1_Cutting_M03_D3_Morning)_:
+1 Assign(O001_L1_Cutting_M03)
+1 ShiftAssign(O001_L1_Cutting_D3_Morning)
-1 AssignInShift(O001_L1_Cutting_M03_D3_Morning)
<= 1

c_u_C_CAP_AndLower(O001_L1_Cutting_M03_D3_Afternoon)_:
+1 Assign(O001_L1_Cutting_M03)
+1 ShiftAssign(O001_L1_Cutting_D3_Afternoon)
-1 AssignInShift(O001_L1_Cutting_M03_D3_Afternoon)
<= 1

c_u_C_CAP_AndLower(O001_L1_Cutting_M03_D3_Night)_:
+1 Assign(O001_L1_Cutting_M03)
+1 ShiftAssign(O001_L1_Cutting_D3_Night)
-1 AssignInShift(O001_L1_Cutting_M03_D3_Night)
<= 1

c_u_C_CAP_AndLower(O001_L1_Cutting_M03_D4_Morning)_:
+1 Assign(O001_L1_Cutting_M03)
+1 ShiftAssign(O001_L1_Cutting_D4_Morning)
-1 AssignInShift(O001_L1_Cutting_M03_D4_Morning)
<= 1

c_u_C_CAP_AndLower(O001_L1_Cutting_M03_D4_Afternoon)_:
+1 Assign(O001_L1_Cutting_M03)
+1 ShiftAssign(O001_L1_Cutting_D4_Afternoon)
-1 AssignInShift(O001_L1_Cutting_M03_D4_Afternoon)
<= 1

c_u_C_CAP_AndLower(O001_L1_Cutting_M03_D4_Night)_:
+1 Assign(O001_L1_Cutting_M03)
+1 ShiftAssign(O001_L1_Cutting_D4_Night)
-1 AssignInShift(O001_L1_Cutting_M03_D4_Night)
<= 1

c_u_C_CAP_AndLower(O001_L1_Cutting_M03_D5_Morning)_:
+1 Assign(O001_L1_Cutting_M03)
+1 ShiftAssign(O001_L1_Cutting_D5_Morning)
-1 AssignInShift(O001_L1_Cutting_M03_D5_Morning)
<= 1

c_u_C_CAP_AndLower(O001_L1_Cutting_M03_D5_Afternoon)_:
+1 Assign(O001_L1_Cutting_M03)
+1 ShiftAssign(O001_L1_Cutting_D5_Afternoon)
-1 AssignInShift(O001_L1_Cutting_M03_D5_Afternoon)
<= 1

c_u_C_CAP_AndLower(O001_L1_Cutting_M03_D5_Night)_:
+1 Assign(O001_L1_Cutting_M03)
+1 ShiftAssign(O001_L1_Cutting_D5_Night)
-1 AssignInShift(O001_L1_Cutting_M03_D5_Night)
<= 1

c_u_C_CAP_AndLower(O001_L1_Assembly_M02_D1_Morning)_:
+1 Assign(O001_L1_Assembly_M02)
+1 ShiftAssign(O001_L1_Assembly_D1_Morning)
-1 AssignInShift(O001_L1_Assembly_M02_D1_Morning)
<= 1

c_u_C_CAP_AndLower(O001_L1_Assembly_M02_D1_Afternoon)_:
+1 Assign(O001_L1_Assembly_M02)
+1 ShiftAssign(O001_L1_Assembly_D1_Afternoon)
-1 AssignInShift(O001_L1_Assembly_M02_D1_Afternoon)
<= 1

c_u_C_CAP_AndLower(O001_L1_Assembly_M02_D1_Night)_:
+1 Assign(O001_L1_Assembly_M02)
+1 ShiftAssign(O001_L1_Assembly_D1_Night)
-1 AssignInShift(O001_L1_Assembly_M02_D1_Night)
<= 1

c_u_C_CAP_AndLower(O001_L1_Assembly_M02_D2_Morning)_:
+1 Assign(O001_L1_Assembly_M02)
+1 ShiftAssign(O001_L1_Assembly_D2_Morning)
-1 AssignInShift(O001_L1_Assembly_M02_D2_Morning)
<= 1

c_u_C_CAP_AndLower(O001_L1_Assembly_M02_D2_Afternoon)_:
+1 Assign(O001_L1_Assembly_M02)
+1 ShiftAssign(O001_L1_Assembly_D2_Afternoon)
-1 AssignInShift(O001_L1_Assembly_M02_D2_Afternoon)
<= 1

c_u_C_CAP_AndLower(O001_L1_Assembly_M02_D2_Night)_:
+1 Assign(O001_L1_Assembly_M02)
+1 ShiftAssign(O001_L1_Assembly_D2_Night)
-1 AssignInShift(O001_L1_Assembly_M02_D2_Night)
<= 1

c_u_C_CAP_AndLower(O001_L1_Assembly_M02_D3_Morning)_:
+1 Assign(O001_L1_Assembly_M02)
+1 ShiftAssign(O001_L1_Assembly_D3_Morning)
-1 AssignInShift(O001_L1_Assembly_M02_D3_Morning)
<= 1

c_u_C_CAP_AndLower(O001_L1_Assembly_M02_D3_Afternoon)_:
+1 Assign(O001_L1_Assembly_M02)
+1 ShiftAssign(O001_L1_Assembly_D3_Afternoon)
-1 AssignInShift(O001_L1_Assembly_M02_D3_Afternoon)
<= 1

c_u_C_CAP_AndLower(O001_L1_Assembly_M02_D3_Night)_:
+1 Assign(O001_L1_Assembly_M02)
+1 ShiftAssign(O001_L1_Assembly_D3_Night)
-1 AssignInShift(O001_L1_Assembly_M02_D3_Night)
<= 1

c_u_C_CAP_AndLower(O001_L1_Assembly_M02_D4_Morning)_:
+1 Assign(O001_L1_Assembly_M02)
+1 ShiftAssign(O001_L1_Assembly_D4_Morning)
-1 AssignInShift(O001_L1_Assembly_M02_D4_Morning)
<= 1

c_u_C_CAP_AndLower(O001_L1_Assembly_M02_D4_Afternoon)_:
+1 Assign(O001_L1_Assembly_M02)
+1 ShiftAssign(O001_L1_Assembly_D4_Afternoon)
-1 AssignInShift(O001_L1_Assembly_M02_D4_Afternoon)
<= 1

c_u_C_CAP_AndLower(O001_L1_Assembly_M02_D4_Night)_:
+1 Assign(O001_L1_Assembly_M02)
+1 ShiftAssign(O001_L1_Assembly_D4_Night)
-1 AssignInShift(O001_L1_Assembly_M02_D4_Night)
<= 1

c_u_C_CAP_AndLower(O001_L1_Assembly_M02_D5_Morning)_:
+1 Assign(O001_L1_Assembly_M02)
+1 ShiftAssign(O001_L1_Assembly_D5_Morning)
-1 AssignInShift(O001_L1_Assembly_M02_D5_Morning)
<= 1

c_u_C_CAP_AndLower(O001_L1_Assembly_M02_D5_Afternoon)_:
+1 Assign(O001_L1_Assembly_M02)
+1 ShiftAssign(O001_L1_Assembly_D5_Afternoon)
-1 AssignInShift(O001_L1_Assembly_M02_D5_Afternoon)
<= 1

c_u_C_CAP_AndLower(O001_L1_Assembly_M02_D5_Night)_:
+1 Assign(O001_L1_Assembly_M02)
+1 ShiftAssign(O001_L1_Assembly_D5_Night)
-1 AssignInShift(O001_L1_Assembly_M02_D5_Night)
<= 1

c_u_C_CAP_AndLower(O002_L1_Cutting_M01_D1_Morning)_:
+1 Assign(O002_L1_Cutting_M01)
+1 ShiftAssign(O002_L1_Cutting_D1_Morning)
-1 AssignInShift(O002_L1_Cutting_M01_D1_Morning)
<= 1

c_u_C_CAP_AndLower(O002_L1_Cutting_M01_D1_Afternoon)_:
+1 Assign(O002_L1_Cutting_M01)
+1 ShiftAssign(O002_L1_Cutting_D1_Afternoon)
-1 AssignInShift(O002_L1_Cutting_M01_D1_Afternoon)
<= 1

c_u_C_CAP_AndLower(O002_L1_Cutting_M01_D1_Night)_:
+1 Assign(O002_L1_Cutting_M01)
+1 ShiftAssign(O002_L1_Cutting_D1_Night)
-1 AssignInShift(O002_L1_Cutting_M01_D1_Night)
<= 1

c_u_C_CAP_AndLower(O002_L1_Cutting_M01_D2_Morning)_:
+1 Assign(O002_L1_Cutting_M01)
+1 ShiftAssign(O002_L1_Cutting_D2_Morning)
-1 AssignInShift(O002_L1_Cutting_M01_D2_Morning)
<= 1

c_u_C_CAP_AndLower(O002_L1_Cutting_M01_D2_Afternoon)_:
+1 Assign(O002_L1_Cutting_M01)
+1 ShiftAssign(O002_L1_Cutting_D2_Afternoon)
-1 AssignInShift(O002_L1_Cutting_M01_D2_Afternoon)
<= 1

c_u_C_CAP_AndLower(O002_L1_Cutting_M01_D2_Night)_:
+1 Assign(O002_L1_Cutting_M01)
+1 ShiftAssign(O002_L1_Cutting_D2_Night)
-1 AssignInShift(O002_L1_Cutting_M01_D2_Night)
<= 1

c_u_C_CAP_AndLower(O002_L1_Cutting_M01_D3_Morning)_:
+1 Assign(O002_L1_Cutting_M01)
+1 ShiftAssign(O002_L1_Cutting_D3_Morning)
-1 AssignInShift(O002_L1_Cutting_M01_D3_Morning)
<= 1

c_u_C_CAP_AndLower(O002_L1_Cutting_M01_D3_Afternoon)_:
+1 Assign(O002_L1_Cutting_M01)
+1 ShiftAssign(O002_L1_Cutting_D3_Afternoon)
-1 AssignInShift(O002_L1_Cutting_M01_D3_Afternoon)
<= 1

c_u_C_CAP_AndLower(O002_L1_Cutting_M01_D3_Night)_:
+1 Assign(O002_L1_Cutting_M01)
+1 ShiftAssign(O002_L1_Cutting_D3_Night)
-1 AssignInShift(O002_L1_Cutting_M01_D3_Night)
<= 1

c_u_C_CAP_AndLower(O002_L1_Cutting_M01_D4_Morning)_:
+1 Assign(O002_L1_Cutting_M01)
+1 ShiftAssign(O002_L1_Cutting_D4_Morning)
-1 AssignInShift(O002_L1_Cutting_M01_D4_Morning)
<= 1

c_u_C_CAP_AndLower(O002_L1_Cutting_M01_D4_Afternoon)_:
+1 Assign(O002_L1_Cutting_M01)
+1 ShiftAssign(O002_L1_Cutting_D4_Afternoon)
-1 AssignInShift(O002_L1_Cutting_M01_D4_Afternoon)
<= 1

c_u_C_CAP_AndLower(O002_L1_Cutting_M01_D4_Night)_:
+1 Assign(O002_L1_Cutting_M01)
+1 ShiftAssign(O002_L1_Cutting_D4_Night)
-1 AssignInShift(O002_L1_Cutting_M01_D4_Night)
<= 1

c_u_C_CAP_AndLower(O002_L1_Cutting_M01_D5_Morning)_:
+1 Assign(O002_L1_Cutting_M01)
+1 ShiftAssign(O002_L1_Cutting_D5_Morning)
-1 AssignInShift(O002_L1_Cutting_M01_D5_Morning)
<= 1

c_u_C_CAP_AndLower(O002_L1_Cutting_M01_D5_Afternoon)_:
+1 Assign(O002_L1_Cutting_M01)
+1 ShiftAssign(O002_L1_Cutting_D5_Afternoon)
-1 AssignInShift(O002_L1_Cutting_M01_D5_Afternoon)
<= 1

c_u_C_CAP_AndLower(O002_L1_Cutting_M01_D5_Night)_:
+1 Assign(O002_L1_Cutting_M01)
+1 ShiftAssign(O002_L1_Cutting_D5_Night)
-1 AssignInShift(O002_L1_Cutting_M01_D5_Night)
<= 1

c_u_C_CAP_AndLower(O002_L1_Assembly_M02_D1_Morning)_:
+1 Assign(O002_L1_Assembly_M02)
+1 ShiftAssign(O002_L1_Assembly_D1_Morning)
-1 AssignInShift(O002_L1_Assembly_M02_D1_Morning)
<= 1

c_u_C_CAP_AndLower(O002_L1_Assembly_M02_D1_Afternoon)_:
+1 Assign(O002_L1_Assembly_M02)
+1 ShiftAssign(O002_L1_Assembly_D1_Afternoon)
-1 AssignInShift(O002_L1_Assembly_M02_D1_Afternoon)
<= 1

c_u_C_CAP_AndLower(O002_L1_Assembly_M02_D1_Night)_:
+1 Assign(O002_L1_Assembly_M02)
+1 ShiftAssign(O002_L1_Assembly_D1_Night)
-1 AssignInShift(O002_L1_Assembly_M02_D1_Night)
<= 1

c_u_C_CAP_AndLower(O002_L1_Assembly_M02_D2_Morning)_:
+1 Assign(O002_L1_Assembly_M02)
+1 ShiftAssign(O002_L1_Assembly_D2_Morning)
-1 AssignInShift(O002_L1_Assembly_M02_D2_Morning)
<= 1

c_u_C_CAP_AndLower(O002_L1_Assembly_M02_D2_Afternoon)_:
+1 Assign(O002_L1_Assembly_M02)
+1 ShiftAssign(O002_L1_Assembly_D2_Afternoon)
-1 AssignInShift(O002_L1_Assembly_M02_D2_Afternoon)
<= 1

c_u_C_CAP_AndLower(O002_L1_Assembly_M02_D2_Night)_:
+1 Assign(O002_L1_Assembly_M02)
+1 ShiftAssign(O002_L1_Assembly_D2_Night)
-1 AssignInShift(O002_L1_Assembly_M02_D2_Night)
<= 1

c_u_C_CAP_AndLower(O002_L1_Assembly_M02_D3_Morning)_:
+1 Assign(O002_L1_Assembly_M02)
+1 ShiftAssign(O002_L1_Assembly_D3_Morning)
-1 AssignInShift(O002_L1_Assembly_M02_D3_Morning)
<= 1

c_u_C_CAP_AndLower(O002_L1_Assembly_M02_D3_Afternoon)_:
+1 Assign(O002_L1_Assembly_M02)
+1 ShiftAssign(O002_L1_Assembly_D3_Afternoon)
-1 AssignInShift(O002_L1_Assembly_M02_D3_Afternoon)
<= 1

c_u_C_CAP_AndLower(O002_L1_Assembly_M02_D3_Night)_:
+1 Assign(O002_L1_Assembly_M02)
+1 ShiftAssign(O002_L1_Assembly_D3_Night)
-1 AssignInShift(O002_L1_Assembly_M02_D3_Night)
<= 1

c_u_C_CAP_AndLower(O002_L1_Assembly_M02_D4_Morning)_:
+1 Assign(O002_L1_Assembly_M02)
+1 ShiftAssign(O002_L1_Assembly_D4_Morning)
-1 AssignInShift(O002_L1_Assembly_M02_D4_Morning)
<= 1

c_u_C_CAP_AndLower(O002_L1_Assembly_M02_D4_Afternoon)_:
+1 Assign(O002_L1_Assembly_M02)
+1 ShiftAssign(O002_L1_Assembly_D4_Afternoon)
-1 AssignInShift(O002_L1_Assembly_M02_D4_Afternoon)
<= 1

c_u_C_CAP_AndLower(O002_L1_Assembly_M02_D4_Night)_:
+1 Assign(O002_L1_Assembly_M02)
+1 ShiftAssign(O002_L1_Assembly_D4_Night)
-1 AssignInShift(O002_L1_Assembly_M02_D4_Night)
<= 1

c_u_C_CAP_AndLower(O002_L1_Assembly_M02_D5_Morning)_:
+1 Assign(O002_L1_Assembly_M02)
+1 ShiftAssign(O002_L1_Assembly_D5_Morning)
-1 AssignInShift(O002_L1_Assembly_M02_D5_Morning)
<= 1

c_u_C_CAP_AndLower(O002_L1_Assembly_M02_D5_Afternoon)_:
+1 Assign(O002_L1_Assembly_M02)
+1 ShiftAssign(O002_L1_Assembly_D5_Afternoon)
-1 AssignInShift(O002_L1_Assembly_M02_D5_Afternoon)
<= 1

c_u_C_CAP_AndLower(O002_L1_Assembly_M02_D5_Night)_:
+1 Assign(O002_L1_Assembly_M02)
+1 ShiftAssign(O002_L1_Assembly_D5_Night)
-1 AssignInShift(O002_L1_Assembly_M02_D5_Night)
<= 1

c_u_C_CAP_AndLower(O003_L1_Cutting_M01_D1_Morning)_:
+1 Assign(O003_L1_Cutting_M01)
+1 ShiftAssign(O003_L1_Cutting_D1_Morning)
-1 AssignInShift(O003_L1_Cutting_M01_D1_Morning)
<= 1

c_u_C_CAP_AndLower(O003_L1_Cutting_M01_D1_Afternoon)_:
+1 Assign(O003_L1_Cutting_M01)
+1 ShiftAssign(O003_L1_Cutting_D1_Afternoon)
-1 AssignInShift(O003_L1_Cutting_M01_D1_Afternoon)
<= 1

c_u_C_CAP_AndLower(O003_L1_Cutting_M01_D1_Night)_:
+1 Assign(O003_L1_Cutting_M01)
+1 ShiftAssign(O003_L1_Cutting_D1_Night)
-1 AssignInShift(O003_L1_Cutting_M01_D1_Night)
<= 1

c_u_C_CAP_AndLower(O003_L1_Cutting_M01_D2_Morning)_:
+1 Assign(O003_L1_Cutting_M01)
+1 ShiftAssign(O003_L1_Cutting_D2_Morning)
-1 AssignInShift(O003_L1_Cutting_M01_D2_Morning)
<= 1

c_u_C_CAP_AndLower(O003_L1_Cutting_M01_D2_Afternoon)_:
+1 Assign(O003_L1_Cutting_M01)
+1 ShiftAssign(O003_L1_Cutting_D2_Afternoon)
-1 AssignInShift(O003_L1_Cutting_M01_D2_Afternoon)
<= 1

c_u_C_CAP_AndLower(O003_L1_Cutting_M01_D2_Night)_:
+1 Assign(O003_L1_Cutting_M01)
+1 ShiftAssign(O003_L1_Cutting_D2_Night)
-1 AssignInShift(O003_L1_Cutting_M01_D2_Night)
<= 1

c_u_C_CAP_AndLower(O003_L1_Cutting_M01_D3_Morning)_:
+1 Assign(O003_L1_Cutting_M01)
+1 ShiftAssign(O003_L1_Cutting_D3_Morning)
-1 AssignInShift(O003_L1_Cutting_M01_D3_Morning)
<= 1

c_u_C_CAP_AndLower(O003_L1_Cutting_M01_D3_Afternoon)_:
+1 Assign(O003_L1_Cutting_M01)
+1 ShiftAssign(O003_L1_Cutting_D3_Afternoon)
-1 AssignInShift(O003_L1_Cutting_M01_D3_Afternoon)
<= 1

c_u_C_CAP_AndLower(O003_L1_Cutting_M01_D3_Night)_:
+1 Assign(O003_L1_Cutting_M01)
+1 ShiftAssign(O003_L1_Cutting_D3_Night)
-1 AssignInShift(O003_L1_Cutting_M01_D3_Night)
<= 1

c_u_C_CAP_AndLower(O003_L1_Cutting_M01_D4_Morning)_:
+1 Assign(O003_L1_Cutting_M01)
+1 ShiftAssign(O003_L1_Cutting_D4_Morning)
-1 AssignInShift(O003_L1_Cutting_M01_D4_Morning)
<= 1

c_u_C_CAP_AndLower(O003_L1_Cutting_M01_D4_Afternoon)_:
+1 Assign(O003_L1_Cutting_M01)
+1 ShiftAssign(O003_L1_Cutting_D4_Afternoon)
-1 AssignInShift(O003_L1_Cutting_M01_D4_Afternoon)
<= 1

c_u_C_CAP_AndLower(O003_L1_Cutting_M01_D4_Night)_:
+1 Assign(O003_L1_Cutting_M01)
+1 ShiftAssign(O003_L1_Cutting_D4_Night)
-1 AssignInShift(O003_L1_Cutting_M01_D4_Night)
<= 1

c_u_C_CAP_AndLower(O003_L1_Cutting_M01_D5_Morning)_:
+1 Assign(O003_L1_Cutting_M01)
+1 ShiftAssign(O003_L1_Cutting_D5_Morning)
-1 AssignInShift(O003_L1_Cutting_M01_D5_Morning)
<= 1

c_u_C_CAP_AndLower(O003_L1_Cutting_M01_D5_Afternoon)_:
+1 Assign(O003_L1_Cutting_M01)
+1 ShiftAssign(O003_L1_Cutting_D5_Afternoon)
-1 AssignInShift(O003_L1_Cutting_M01_D5_Afternoon)
<= 1

c_u_C_CAP_AndLower(O003_L1_Cutting_M01_D5_Night)_:
+1 Assign(O003_L1_Cutting_M01)
+1 ShiftAssign(O003_L1_Cutting_D5_Night)
-1 AssignInShift(O003_L1_Cutting_M01_D5_Night)
<= 1

c_u_C_CAP_AndLower(O003_L1_Assembly_M02_D1_Morning)_:
+1 Assign(O003_L1_Assembly_M02)
+1 ShiftAssign(O003_L1_Assembly_D1_Morning)
-1 AssignInShift(O003_L1_Assembly_M02_D1_Morning)
<= 1

c_u_C_CAP_AndLower(O003_L1_Assembly_M02_D1_Afternoon)_:
+1 Assign(O003_L1_Assembly_M02)
+1 ShiftAssign(O003_L1_Assembly_D1_Afternoon)
-1 AssignInShift(O003_L1_Assembly_M02_D1_Afternoon)
<= 1

c_u_C_CAP_AndLower(O003_L1_Assembly_M02_D1_Night)_:
+1 Assign(O003_L1_Assembly_M02)
+1 ShiftAssign(O003_L1_Assembly_D1_Night)
-1 AssignInShift(O003_L1_Assembly_M02_D1_Night)
<= 1

c_u_C_CAP_AndLower(O003_L1_Assembly_M02_D2_Morning)_:
+1 Assign(O003_L1_Assembly_M02)
+1 ShiftAssign(O003_L1_Assembly_D2_Morning)
-1 AssignInShift(O003_L1_Assembly_M02_D2_Morning)
<= 1

c_u_C_CAP_AndLower(O003_L1_Assembly_M02_D2_Afternoon)_:
+1 Assign(O003_L1_Assembly_M02)
+1 ShiftAssign(O003_L1_Assembly_D2_Afternoon)
-1 AssignInShift(O003_L1_Assembly_M02_D2_Afternoon)
<= 1

c_u_C_CAP_AndLower(O003_L1_Assembly_M02_D2_Night)_:
+1 Assign(O003_L1_Assembly_M02)
+1 ShiftAssign(O003_L1_Assembly_D2_Night)
-1 AssignInShift(O003_L1_Assembly_M02_D2_Night)
<= 1

c_u_C_CAP_AndLower(O003_L1_Assembly_M02_D3_Morning)_:
+1 Assign(O003_L1_Assembly_M02)
+1 ShiftAssign(O003_L1_Assembly_D3_Morning)
-1 AssignInShift(O003_L1_Assembly_M02_D3_Morning)
<= 1

c_u_C_CAP_AndLower(O003_L1_Assembly_M02_D3_Afternoon)_:
+1 Assign(O003_L1_Assembly_M02)
+1 ShiftAssign(O003_L1_Assembly_D3_Afternoon)
-1 AssignInShift(O003_L1_Assembly_M02_D3_Afternoon)
<= 1

c_u_C_CAP_AndLower(O003_L1_Assembly_M02_D3_Night)_:
+1 Assign(O003_L1_Assembly_M02)
+1 ShiftAssign(O003_L1_Assembly_D3_Night)
-1 AssignInShift(O003_L1_Assembly_M02_D3_Night)
<= 1

c_u_C_CAP_AndLower(O003_L1_Assembly_M02_D4_Morning)_:
+1 Assign(O003_L1_Assembly_M02)
+1 ShiftAssign(O003_L1_Assembly_D4_Morning)
-1 AssignInShift(O003_L1_Assembly_M02_D4_Morning)
<= 1

c_u_C_CAP_AndLower(O003_L1_Assembly_M02_D4_Afternoon)_:
+1 Assign(O003_L1_Assembly_M02)
+1 ShiftAssign(O003_L1_Assembly_D4_Afternoon)
-1 AssignInShift(O003_L1_Assembly_M02_D4_Afternoon)
<= 1

c_u_C_CAP_AndLower(O003_L1_Assembly_M02_D4_Night)_:
+1 Assign(O003_L1_Assembly_M02)
+1 ShiftAssign(O003_L1_Assembly_D4_Night)
-1 AssignInShift(O003_L1_Assembly_M02_D4_Night)
<= 1

c_u_C_CAP_AndLower(O003_L1_Assembly_M02_D5_Morning)_:
+1 Assign(O003_L1_Assembly_M02)
+1 ShiftAssign(O003_L1_Assembly_D5_Morning)
-1 AssignInShift(O003_L1_Assembly_M02_D5_Morning)
<= 1

c_u_C_CAP_AndLower(O003_L1_Assembly_M02_D5_Afternoon)_:
+1 Assign(O003_L1_Assembly_M02)
+1 ShiftAssign(O003_L1_Assembly_D5_Afternoon)
-1 AssignInShift(O003_L1_Assembly_M02_D5_Afternoon)
<= 1

c_u_C_CAP_AndLower(O003_L1_Assembly_M02_D5_Night)_:
+1 Assign(O003_L1_Assembly_M02)
+1 ShiftAssign(O003_L1_Assembly_D5_Night)
-1 AssignInShift(O003_L1_Assembly_M02_D5_Night)
<= 1

c_u_C_CAP_AndLower(O004_L1_Cutting_M01_D1_Morning)_:
+1 Assign(O004_L1_Cutting_M01)
+1 ShiftAssign(O004_L1_Cutting_D1_Morning)
-1 AssignInShift(O004_L1_Cutting_M01_D1_Morning)
<= 1

c_u_C_CAP_AndLower(O004_L1_Cutting_M01_D1_Afternoon)_:
+1 Assign(O004_L1_Cutting_M01)
+1 ShiftAssign(O004_L1_Cutting_D1_Afternoon)
-1 AssignInShift(O004_L1_Cutting_M01_D1_Afternoon)
<= 1

c_u_C_CAP_AndLower(O004_L1_Cutting_M01_D1_Night)_:
+1 Assign(O004_L1_Cutting_M01)
+1 ShiftAssign(O004_L1_Cutting_D1_Night)
-1 AssignInShift(O004_L1_Cutting_M01_D1_Night)
<= 1

c_u_C_CAP_AndLower(O004_L1_Cutting_M01_D2_Morning)_:
+1 Assign(O004_L1_Cutting_M01)
+1 ShiftAssign(O004_L1_Cutting_D2_Morning)
-1 AssignInShift(O004_L1_Cutting_M01_D2_Morning)
<= 1

c_u_C_CAP_AndLower(O004_L1_Cutting_M01_D2_Afternoon)_:
+1 Assign(O004_L1_Cutting_M01)
+1 ShiftAssign(O004_L1_Cutting_D2_Afternoon)
-1 AssignInShift(O004_L1_Cutting_M01_D2_Afternoon)
<= 1

c_u_C_CAP_AndLower(O004_L1_Cutting_M01_D2_Night)_:
+1 Assign(O004_L1_Cutting_M01)
+1 ShiftAssign(O004_L1_Cutting_D2_Night)
-1 AssignInShift(O004_L1_Cutting_M01_D2_Night)
<= 1

c_u_C_CAP_AndLower(O004_L1_Cutting_M01_D3_Morning)_:
+1 Assign(O004_L1_Cutting_M01)
+1 ShiftAssign(O004_L1_Cutting_D3_Morning)
-1 AssignInShift(O004_L1_Cutting_M01_D3_Morning)
<= 1

c_u_C_CAP_AndLower(O004_L1_Cutting_M01_D3_Afternoon)_:
+1 Assign(O004_L1_Cutting_M01)
+1 ShiftAssign(O004_L1_Cutting_D3_Afternoon)
-1 AssignInShift(O004_L1_Cutting_M01_D3_Afternoon)
<= 1

c_u_C_CAP_AndLower(O004_L1_Cutting_M01_D3_Night)_:
+1 Assign(O004_L1_Cutting_M01)
+1 ShiftAssign(O004_L1_Cutting_D3_Night)
-1 AssignInShift(O004_L1_Cutting_M01_D3_Night)
<= 1

c_u_C_CAP_AndLower(O004_L1_Cutting_M01_D4_Morning)_:
+1 Assign(O004_L1_Cutting_M01)
+1 ShiftAssign(O004_L1_Cutting_D4_Morning)
-1 AssignInShift(O004_L1_Cutting_M01_D4_Morning)
<= 1

c_u_C_CAP_AndLower(O004_L1_Cutting_M01_D4_Afternoon)_:
+1 Assign(O004_L1_Cutting_M01)
+1 ShiftAssign(O004_L1_Cutting_D4_Afternoon)
-1 AssignInShift(O004_L1_Cutting_M01_D4_Afternoon)
<= 1

c_u_C_CAP_AndLower(O004_L1_Cutting_M01_D4_Night)_:
+1 Assign(O004_L1_Cutting_M01)
+1 ShiftAssign(O004_L1_Cutting_D4_Night)
-1 AssignInShift(O004_L1_Cutting_M01_D4_Night)
<= 1

c_u_C_CAP_AndLower(O004_L1_Cutting_M01_D5_Morning)_:
+1 Assign(O004_L1_Cutting_M01)
+1 ShiftAssign(O004_L1_Cutting_D5_Morning)
-1 AssignInShift(O004_L1_Cutting_M01_D5_Morning)
<= 1

c_u_C_CAP_AndLower(O004_L1_Cutting_M01_D5_Afternoon)_:
+1 Assign(O004_L1_Cutting_M01)
+1 ShiftAssign(O004_L1_Cutting_D5_Afternoon)
-1 AssignInShift(O004_L1_Cutting_M01_D5_Afternoon)
<= 1

c_u_C_CAP_AndLower(O004_L1_Cutting_M01_D5_Night)_:
+1 Assign(O004_L1_Cutting_M01)
+1 ShiftAssign(O004_L1_Cutting_D5_Night)
-1 AssignInShift(O004_L1_Cutting_M01_D5_Night)
<= 1

c_u_C_CAP_AndLower(O004_L1_Assembly_M02_D1_Morning)_:
+1 Assign(O004_L1_Assembly_M02)
+1 ShiftAssign(O004_L1_Assembly_D1_Morning)
-1 AssignInShift(O004_L1_Assembly_M02_D1_Morning)
<= 1

c_u_C_CAP_AndLower(O004_L1_Assembly_M02_D1_Afternoon)_:
+1 Assign(O004_L1_Assembly_M02)
+1 ShiftAssign(O004_L1_Assembly_D1_Afternoon)
-1 AssignInShift(O004_L1_Assembly_M02_D1_Afternoon)
<= 1

c_u_C_CAP_AndLower(O004_L1_Assembly_M02_D1_Night)_:
+1 Assign(O004_L1_Assembly_M02)
+1 ShiftAssign(O004_L1_Assembly_D1_Night)
-1 AssignInShift(O004_L1_Assembly_M02_D1_Night)
<= 1

c_u_C_CAP_AndLower(O004_L1_Assembly_M02_D2_Morning)_:
+1 Assign(O004_L1_Assembly_M02)
+1 ShiftAssign(O004_L1_Assembly_D2_Morning)
-1 AssignInShift(O004_L1_Assembly_M02_D2_Morning)
<= 1

c_u_C_CAP_AndLower(O004_L1_Assembly_M02_D2_Afternoon)_:
+1 Assign(O004_L1_Assembly_M02)
+1 ShiftAssign(O004_L1_Assembly_D2_Afternoon)
-1 AssignInShift(O004_L1_Assembly_M02_D2_Afternoon)
<= 1

c_u_C_CAP_AndLower(O004_L1_Assembly_M02_D2_Night)_:
+1 Assign(O004_L1_Assembly_M02)
+1 ShiftAssign(O004_L1_Assembly_D2_Night)
-1 AssignInShift(O004_L1_Assembly_M02_D2_Night)
<= 1

c_u_C_CAP_AndLower(O004_L1_Assembly_M02_D3_Morning)_:
+1 Assign(O004_L1_Assembly_M02)
+1 ShiftAssign(O004_L1_Assembly_D3_Morning)
-1 AssignInShift(O004_L1_Assembly_M02_D3_Morning)
<= 1

c_u_C_CAP_AndLower(O004_L1_Assembly_M02_D3_Afternoon)_:
+1 Assign(O004_L1_Assembly_M02)
+1 ShiftAssign(O004_L1_Assembly_D3_Afternoon)
-1 AssignInShift(O004_L1_Assembly_M02_D3_Afternoon)
<= 1

c_u_C_CAP_AndLower(O004_L1_Assembly_M02_D3_Night)_:
+1 Assign(O004_L1_Assembly_M02)
+1 ShiftAssign(O004_L1_Assembly_D3_Night)
-1 AssignInShift(O004_L1_Assembly_M02_D3_Night)
<= 1

c_u_C_CAP_AndLower(O004_L1_Assembly_M02_D4_Morning)_:
+1 Assign(O004_L1_Assembly_M02)
+1 ShiftAssign(O004_L1_Assembly_D4_Morning)
-1 AssignInShift(O004_L1_Assembly_M02_D4_Morning)
<= 1

c_u_C_CAP_AndLower(O004_L1_Assembly_M02_D4_Afternoon)_:
+1 Assign(O004_L1_Assembly_M02)
+1 ShiftAssign(O004_L1_Assembly_D4_Afternoon)
-1 AssignInShift(O004_L1_Assembly_M02_D4_Afternoon)
<= 1

c_u_C_CAP_AndLower(O004_L1_Assembly_M02_D4_Night)_:
+1 Assign(O004_L1_Assembly_M02)
+1 ShiftAssign(O004_L1_Assembly_D4_Night)
-1 AssignInShift(O004_L1_Assembly_M02_D4_Night)
<= 1

c_u_C_CAP_AndLower(O004_L1_Assembly_M02_D5_Morning)_:
+1 Assign(O004_L1_Assembly_M02)
+1 ShiftAssign(O004_L1_Assembly_D5_Morning)
-1 AssignInShift(O004_L1_Assembly_M02_D5_Morning)
<= 1

c_u_C_CAP_AndLower(O004_L1_Assembly_M02_D5_Afternoon)_:
+1 Assign(O004_L1_Assembly_M02)
+1 ShiftAssign(O004_L1_Assembly_D5_Afternoon)
-1 AssignInShift(O004_L1_Assembly_M02_D5_Afternoon)
<= 1

c_u_C_CAP_AndLower(O004_L1_Assembly_M02_D5_Night)_:
+1 Assign(O004_L1_Assembly_M02)
+1 ShiftAssign(O004_L1_Assembly_D5_Night)
-1 AssignInShift(O004_L1_Assembly_M02_D5_Night)
<= 1

c_u_C_CAP_AndLower(O004_L2_Cutting_M01_D1_Morning)_:
+1 Assign(O004_L2_Cutting_M01)
+1 ShiftAssign(O004_L2_Cutting_D1_Morning)
-1 AssignInShift(O004_L2_Cutting_M01_D1_Morning)
<= 1

c_u_C_CAP_AndLower(O004_L2_Cutting_M01_D1_Afternoon)_:
+1 Assign(O004_L2_Cutting_M01)
+1 ShiftAssign(O004_L2_Cutting_D1_Afternoon)
-1 AssignInShift(O004_L2_Cutting_M01_D1_Afternoon)
<= 1

c_u_C_CAP_AndLower(O004_L2_Cutting_M01_D1_Night)_:
+1 Assign(O004_L2_Cutting_M01)
+1 ShiftAssign(O004_L2_Cutting_D1_Night)
-1 AssignInShift(O004_L2_Cutting_M01_D1_Night)
<= 1

c_u_C_CAP_AndLower(O004_L2_Cutting_M01_D2_Morning)_:
+1 Assign(O004_L2_Cutting_M01)
+1 ShiftAssign(O004_L2_Cutting_D2_Morning)
-1 AssignInShift(O004_L2_Cutting_M01_D2_Morning)
<= 1

c_u_C_CAP_AndLower(O004_L2_Cutting_M01_D2_Afternoon)_:
+1 Assign(O004_L2_Cutting_M01)
+1 ShiftAssign(O004_L2_Cutting_D2_Afternoon)
-1 AssignInShift(O004_L2_Cutting_M01_D2_Afternoon)
<= 1

c_u_C_CAP_AndLower(O004_L2_Cutting_M01_D2_Night)_:
+1 Assign(O004_L2_Cutting_M01)
+1 ShiftAssign(O004_L2_Cutting_D2_Night)
-1 AssignInShift(O004_L2_Cutting_M01_D2_Night)
<= 1

c_u_C_CAP_AndLower(O004_L2_Cutting_M01_D3_Morning)_:
+1 Assign(O004_L2_Cutting_M01)
+1 ShiftAssign(O004_L2_Cutting_D3_Morning)
-1 AssignInShift(O004_L2_Cutting_M01_D3_Morning)
<= 1

c_u_C_CAP_AndLower(O004_L2_Cutting_M01_D3_Afternoon)_:
+1 Assign(O004_L2_Cutting_M01)
+1 ShiftAssign(O004_L2_Cutting_D3_Afternoon)
-1 AssignInShift(O004_L2_Cutting_M01_D3_Afternoon)
<= 1

c_u_C_CAP_AndLower(O004_L2_Cutting_M01_D3_Night)_:
+1 Assign(O004_L2_Cutting_M01)
+1 ShiftAssign(O004_L2_Cutting_D3_Night)
-1 AssignInShift(O004_L2_Cutting_M01_D3_Night)
<= 1

c_u_C_CAP_AndLower(O004_L2_Cutting_M01_D4_Morning)_:
+1 Assign(O004_L2_Cutting_M01)
+1 ShiftAssign(O004_L2_Cutting_D4_Morning)
-1 AssignInShift(O004_L2_Cutting_M01_D4_Morning)
<= 1

c_u_C_CAP_AndLower(O004_L2_Cutting_M01_D4_Afternoon)_:
+1 Assign(O004_L2_Cutting_M01)
+1 ShiftAssign(O004_L2_Cutting_D4_Afternoon)
-1 AssignInShift(O004_L2_Cutting_M01_D4_Afternoon)
<= 1

c_u_C_CAP_AndLower(O004_L2_Cutting_M01_D4_Night)_:
+1 Assign(O004_L2_Cutting_M01)
+1 ShiftAssign(O004_L2_Cutting_D4_Night)
-1 AssignInShift(O004_L2_Cutting_M01_D4_Night)
<= 1

c_u_C_CAP_AndLower(O004_L2_Cutting_M01_D5_Morning)_:
+1 Assign(O004_L2_Cutting_M01)
+1 ShiftAssign(O004_L2_Cutting_D5_Morning)
-1 AssignInShift(O004_L2_Cutting_M01_D5_Morning)
<= 1

c_u_C_CAP_AndLower(O004_L2_Cutting_M01_D5_Afternoon)_:
+1 Assign(O004_L2_Cutting_M01)
+1 ShiftAssign(O004_L2_Cutting_D5_Afternoon)
-1 AssignInShift(O004_L2_Cutting_M01_D5_Afternoon)
<= 1

c_u_C_CAP_AndLower(O004_L2_Cutting_M01_D5_Night)_:
+1 Assign(O004_L2_Cutting_M01)
+1 ShiftAssign(O004_L2_Cutting_D5_Night)
-1 AssignInShift(O004_L2_Cutting_M01_D5_Night)
<= 1

c_u_C_CAP_AndLower(O004_L2_Assembly_M02_D1_Morning)_:
+1 Assign(O004_L2_Assembly_M02)
+1 ShiftAssign(O004_L2_Assembly_D1_Morning)
-1 AssignInShift(O004_L2_Assembly_M02_D1_Morning)
<= 1

c_u_C_CAP_AndLower(O004_L2_Assembly_M02_D1_Afternoon)_:
+1 Assign(O004_L2_Assembly_M02)
+1 ShiftAssign(O004_L2_Assembly_D1_Afternoon)
-1 AssignInShift(O004_L2_Assembly_M02_D1_Afternoon)
<= 1

c_u_C_CAP_AndLower(O004_L2_Assembly_M02_D1_Night)_:
+1 Assign(O004_L2_Assembly_M02)
+1 ShiftAssign(O004_L2_Assembly_D1_Night)
-1 AssignInShift(O004_L2_Assembly_M02_D1_Night)
<= 1

c_u_C_CAP_AndLower(O004_L2_Assembly_M02_D2_Morning)_:
+1 Assign(O004_L2_Assembly_M02)
+1 ShiftAssign(O004_L2_Assembly_D2_Morning)
-1 AssignInShift(O004_L2_Assembly_M02_D2_Morning)
<= 1

c_u_C_CAP_AndLower(O004_L2_Assembly_M02_D2_Afternoon)_:
+1 Assign(O004_L2_Assembly_M02)
+1 ShiftAssign(O004_L2_Assembly_D2_Afternoon)
-1 AssignInShift(O004_L2_Assembly_M02_D2_Afternoon)
<= 1

c_u_C_CAP_AndLower(O004_L2_Assembly_M02_D2_Night)_:
+1 Assign(O004_L2_Assembly_M02)
+1 ShiftAssign(O004_L2_Assembly_D2_Night)
-1 AssignInShift(O004_L2_Assembly_M02_D2_Night)
<= 1

c_u_C_CAP_AndLower(O004_L2_Assembly_M02_D3_Morning)_:
+1 Assign(O004_L2_Assembly_M02)
+1 ShiftAssign(O004_L2_Assembly_D3_Morning)
-1 AssignInShift(O004_L2_Assembly_M02_D3_Morning)
<= 1

c_u_C_CAP_AndLower(O004_L2_Assembly_M02_D3_Afternoon)_:
+1 Assign(O004_L2_Assembly_M02)
+1 ShiftAssign(O004_L2_Assembly_D3_Afternoon)
-1 AssignInShift(O004_L2_Assembly_M02_D3_Afternoon)
<= 1

c_u_C_CAP_AndLower(O004_L2_Assembly_M02_D3_Night)_:
+1 Assign(O004_L2_Assembly_M02)
+1 ShiftAssign(O004_L2_Assembly_D3_Night)
-1 AssignInShift(O004_L2_Assembly_M02_D3_Night)
<= 1

c_u_C_CAP_AndLower(O004_L2_Assembly_M02_D4_Morning)_:
+1 Assign(O004_L2_Assembly_M02)
+1 ShiftAssign(O004_L2_Assembly_D4_Morning)
-1 AssignInShift(O004_L2_Assembly_M02_D4_Morning)
<= 1

c_u_C_CAP_AndLower(O004_L2_Assembly_M02_D4_Afternoon)_:
+1 Assign(O004_L2_Assembly_M02)
+1 ShiftAssign(O004_L2_Assembly_D4_Afternoon)
-1 AssignInShift(O004_L2_Assembly_M02_D4_Afternoon)
<= 1

c_u_C_CAP_AndLower(O004_L2_Assembly_M02_D4_Night)_:
+1 Assign(O004_L2_Assembly_M02)
+1 ShiftAssign(O004_L2_Assembly_D4_Night)
-1 AssignInShift(O004_L2_Assembly_M02_D4_Night)
<= 1

c_u_C_CAP_AndLower(O004_L2_Assembly_M02_D5_Morning)_:
+1 Assign(O004_L2_Assembly_M02)
+1 ShiftAssign(O004_L2_Assembly_D5_Morning)
-1 AssignInShift(O004_L2_Assembly_M02_D5_Morning)
<= 1

c_u_C_CAP_AndLower(O004_L2_Assembly_M02_D5_Afternoon)_:
+1 Assign(O004_L2_Assembly_M02)
+1 ShiftAssign(O004_L2_Assembly_D5_Afternoon)
-1 AssignInShift(O004_L2_Assembly_M02_D5_Afternoon)
<= 1

c_u_C_CAP_AndLower(O004_L2_Assembly_M02_D5_Night)_:
+1 Assign(O004_L2_Assembly_M02)
+1 ShiftAssign(O004_L2_Assembly_D5_Night)
-1 AssignInShift(O004_L2_Assembly_M02_D5_Night)
<= 1

c_u_C_CAP_AndLower(O005_L1_Cutting_M01_D1_Morning)_:
+1 Assign(O005_L1_Cutting_M01)
+1 ShiftAssign(O005_L1_Cutting_D1_Morning)
-1 AssignInShift(O005_L1_Cutting_M01_D1_Morning)
<= 1

c_u_C_CAP_AndLower(O005_L1_Cutting_M01_D1_Afternoon)_:
+1 Assign(O005_L1_Cutting_M01)
+1 ShiftAssign(O005_L1_Cutting_D1_Afternoon)
-1 AssignInShift(O005_L1_Cutting_M01_D1_Afternoon)
<= 1

c_u_C_CAP_AndLower(O005_L1_Cutting_M01_D1_Night)_:
+1 Assign(O005_L1_Cutting_M01)
+1 ShiftAssign(O005_L1_Cutting_D1_Night)
-1 AssignInShift(O005_L1_Cutting_M01_D1_Night)
<= 1

c_u_C_CAP_AndLower(O005_L1_Cutting_M01_D2_Morning)_:
+1 Assign(O005_L1_Cutting_M01)
+1 ShiftAssign(O005_L1_Cutting_D2_Morning)
-1 AssignInShift(O005_L1_Cutting_M01_D2_Morning)
<= 1

c_u_C_CAP_AndLower(O005_L1_Cutting_M01_D2_Afternoon)_:
+1 Assign(O005_L1_Cutting_M01)
+1 ShiftAssign(O005_L1_Cutting_D2_Afternoon)
-1 AssignInShift(O005_L1_Cutting_M01_D2_Afternoon)
<= 1

c_u_C_CAP_AndLower(O005_L1_Cutting_M01_D2_Night)_:
+1 Assign(O005_L1_Cutting_M01)
+1 ShiftAssign(O005_L1_Cutting_D2_Night)
-1 AssignInShift(O005_L1_Cutting_M01_D2_Night)
<= 1

c_u_C_CAP_AndLower(O005_L1_Cutting_M01_D3_Morning)_:
+1 Assign(O005_L1_Cutting_M01)
+1 ShiftAssign(O005_L1_Cutting_D3_Morning)
-1 AssignInShift(O005_L1_Cutting_M01_D3_Morning)
<= 1

c_u_C_CAP_AndLower(O005_L1_Cutting_M01_D3_Afternoon)_:
+1 Assign(O005_L1_Cutting_M01)
+1 ShiftAssign(O005_L1_Cutting_D3_Afternoon)
-1 AssignInShift(O005_L1_Cutting_M01_D3_Afternoon)
<= 1

c_u_C_CAP_AndLower(O005_L1_Cutting_M01_D3_Night)_:
+1 Assign(O005_L1_Cutting_M01)
+1 ShiftAssign(O005_L1_Cutting_D3_Night)
-1 AssignInShift(O005_L1_Cutting_M01_D3_Night)
<= 1

c_u_C_CAP_AndLower(O005_L1_Cutting_M01_D4_Morning)_:
+1 Assign(O005_L1_Cutting_M01)
+1 ShiftAssign(O005_L1_Cutting_D4_Morning)
-1 AssignInShift(O005_L1_Cutting_M01_D4_Morning)
<= 1

c_u_C_CAP_AndLower(O005_L1_Cutting_M01_D4_Afternoon)_:
+1 Assign(O005_L1_Cutting_M01)
+1 ShiftAssign(O005_L1_Cutting_D4_Afternoon)
-1 AssignInShift(O005_L1_Cutting_M01_D4_Afternoon)
<= 1

c_u_C_CAP_AndLower(O005_L1_Cutting_M01_D4_Night)_:
+1 Assign(O005_L1_Cutting_M01)
+1 ShiftAssign(O005_L1_Cutting_D4_Night)
-1 AssignInShift(O005_L1_Cutting_M01_D4_Night)
<= 1

c_u_C_CAP_AndLower(O005_L1_Cutting_M01_D5_Morning)_:
+1 Assign(O005_L1_Cutting_M01)
+1 ShiftAssign(O005_L1_Cutting_D5_Morning)
-1 AssignInShift(O005_L1_Cutting_M01_D5_Morning)
<= 1

c_u_C_CAP_AndLower(O005_L1_Cutting_M01_D5_Afternoon)_:
+1 Assign(O005_L1_Cutting_M01)
+1 ShiftAssign(O005_L1_Cutting_D5_Afternoon)
-1 AssignInShift(O005_L1_Cutting_M01_D5_Afternoon)
<= 1

c_u_C_CAP_AndLower(O005_L1_Cutting_M01_D5_Night)_:
+1 Assign(O005_L1_Cutting_M01)
+1 ShiftAssign(O005_L1_Cutting_D5_Night)
-1 AssignInShift(O005_L1_Cutting_M01_D5_Night)
<= 1

c_u_C_CAP_AndLower(O005_L1_Assembly_M02_D1_Morning)_:
+1 Assign(O005_L1_Assembly_M02)
+1 ShiftAssign(O005_L1_Assembly_D1_Morning)
-1 AssignInShift(O005_L1_Assembly_M02_D1_Morning)
<= 1

c_u_C_CAP_AndLower(O005_L1_Assembly_M02_D1_Afternoon)_:
+1 Assign(O005_L1_Assembly_M02)
+1 ShiftAssign(O005_L1_Assembly_D1_Afternoon)
-1 AssignInShift(O005_L1_Assembly_M02_D1_Afternoon)
<= 1

c_u_C_CAP_AndLower(O005_L1_Assembly_M02_D1_Night)_:
+1 Assign(O005_L1_Assembly_M02)
+1 ShiftAssign(O005_L1_Assembly_D1_Night)
-1 AssignInShift(O005_L1_Assembly_M02_D1_Night)
<= 1

c_u_C_CAP_AndLower(O005_L1_Assembly_M02_D2_Morning)_:
+1 Assign(O005_L1_Assembly_M02)
+1 ShiftAssign(O005_L1_Assembly_D2_Morning)
-1 AssignInShift(O005_L1_Assembly_M02_D2_Morning)
<= 1

c_u_C_CAP_AndLower(O005_L1_Assembly_M02_D2_Afternoon)_:
+1 Assign(O005_L1_Assembly_M02)
+1 ShiftAssign(O005_L1_Assembly_D2_Afternoon)
-1 AssignInShift(O005_L1_Assembly_M02_D2_Afternoon)
<= 1

c_u_C_CAP_AndLower(O005_L1_Assembly_M02_D2_Night)_:
+1 Assign(O005_L1_Assembly_M02)
+1 ShiftAssign(O005_L1_Assembly_D2_Night)
-1 AssignInShift(O005_L1_Assembly_M02_D2_Night)
<= 1

c_u_C_CAP_AndLower(O005_L1_Assembly_M02_D3_Morning)_:
+1 Assign(O005_L1_Assembly_M02)
+1 ShiftAssign(O005_L1_Assembly_D3_Morning)
-1 AssignInShift(O005_L1_Assembly_M02_D3_Morning)
<= 1

c_u_C_CAP_AndLower(O005_L1_Assembly_M02_D3_Afternoon)_:
+1 Assign(O005_L1_Assembly_M02)
+1 ShiftAssign(O005_L1_Assembly_D3_Afternoon)
-1 AssignInShift(O005_L1_Assembly_M02_D3_Afternoon)
<= 1

c_u_C_CAP_AndLower(O005_L1_Assembly_M02_D3_Night)_:
+1 Assign(O005_L1_Assembly_M02)
+1 ShiftAssign(O005_L1_Assembly_D3_Night)
-1 AssignInShift(O005_L1_Assembly_M02_D3_Night)
<= 1

c_u_C_CAP_AndLower(O005_L1_Assembly_M02_D4_Morning)_:
+1 Assign(O005_L1_Assembly_M02)
+1 ShiftAssign(O005_L1_Assembly_D4_Morning)
-1 AssignInShift(O005_L1_Assembly_M02_D4_Morning)
<= 1

c_u_C_CAP_AndLower(O005_L1_Assembly_M02_D4_Afternoon)_:
+1 Assign(O005_L1_Assembly_M02)
+1 ShiftAssign(O005_L1_Assembly_D4_Afternoon)
-1 AssignInShift(O005_L1_Assembly_M02_D4_Afternoon)
<= 1

c_u_C_CAP_AndLower(O005_L1_Assembly_M02_D4_Night)_:
+1 Assign(O005_L1_Assembly_M02)
+1 ShiftAssign(O005_L1_Assembly_D4_Night)
-1 AssignInShift(O005_L1_Assembly_M02_D4_Night)
<= 1

c_u_C_CAP_AndLower(O005_L1_Assembly_M02_D5_Morning)_:
+1 Assign(O005_L1_Assembly_M02)
+1 ShiftAssign(O005_L1_Assembly_D5_Morning)
-1 AssignInShift(O005_L1_Assembly_M02_D5_Morning)
<= 1

c_u_C_CAP_AndLower(O005_L1_Assembly_M02_D5_Afternoon)_:
+1 Assign(O005_L1_Assembly_M02)
+1 ShiftAssign(O005_L1_Assembly_D5_Afternoon)
-1 AssignInShift(O005_L1_Assembly_M02_D5_Afternoon)
<= 1

c_u_C_CAP_AndLower(O005_L1_Assembly_M02_D5_Night)_:
+1 Assign(O005_L1_Assembly_M02)
+1 ShiftAssign(O005_L1_Assembly_D5_Night)
-1 AssignInShift(O005_L1_Assembly_M02_D5_Night)
<= 1

c_u_C_CAP_AndLower(O006_L1_Cutting_M01_D1_Morning)_:
+1 Assign(O006_L1_Cutting_M01)
+1 ShiftAssign(O006_L1_Cutting_D1_Morning)
-1 AssignInShift(O006_L1_Cutting_M01_D1_Morning)
<= 1

c_u_C_CAP_AndLower(O006_L1_Cutting_M01_D1_Afternoon)_:
+1 Assign(O006_L1_Cutting_M01)
+1 ShiftAssign(O006_L1_Cutting_D1_Afternoon)
-1 AssignInShift(O006_L1_Cutting_M01_D1_Afternoon)
<= 1

c_u_C_CAP_AndLower(O006_L1_Cutting_M01_D1_Night)_:
+1 Assign(O006_L1_Cutting_M01)
+1 ShiftAssign(O006_L1_Cutting_D1_Night)
-1 AssignInShift(O006_L1_Cutting_M01_D1_Night)
<= 1

c_u_C_CAP_AndLower(O006_L1_Cutting_M01_D2_Morning)_:
+1 Assign(O006_L1_Cutting_M01)
+1 ShiftAssign(O006_L1_Cutting_D2_Morning)
-1 AssignInShift(O006_L1_Cutting_M01_D2_Morning)
<= 1

c_u_C_CAP_AndLower(O006_L1_Cutting_M01_D2_Afternoon)_:
+1 Assign(O006_L1_Cutting_M01)
+1 ShiftAssign(O006_L1_Cutting_D2_Afternoon)
-1 AssignInShift(O006_L1_Cutting_M01_D2_Afternoon)
<= 1

c_u_C_CAP_AndLower(O006_L1_Cutting_M01_D2_Night)_:
+1 Assign(O006_L1_Cutting_M01)
+1 ShiftAssign(O006_L1_Cutting_D2_Night)
-1 AssignInShift(O006_L1_Cutting_M01_D2_Night)
<= 1

c_u_C_CAP_AndLower(O006_L1_Cutting_M01_D3_Morning)_:
+1 Assign(O006_L1_Cutting_M01)
+1 ShiftAssign(O006_L1_Cutting_D3_Morning)
-1 AssignInShift(O006_L1_Cutting_M01_D3_Morning)
<= 1

c_u_C_CAP_AndLower(O006_L1_Cutting_M01_D3_Afternoon)_:
+1 Assign(O006_L1_Cutting_M01)
+1 ShiftAssign(O006_L1_Cutting_D3_Afternoon)
-1 AssignInShift(O006_L1_Cutting_M01_D3_Afternoon)
<= 1

c_u_C_CAP_AndLower(O006_L1_Cutting_M01_D3_Night)_:
+1 Assign(O006_L1_Cutting_M01)
+1 ShiftAssign(O006_L1_Cutting_D3_Night)
-1 AssignInShift(O006_L1_Cutting_M01_D3_Night)
<= 1

c_u_C_CAP_AndLower(O006_L1_Cutting_M01_D4_Morning)_:
+1 Assign(O006_L1_Cutting_M01)
+1 ShiftAssign(O006_L1_Cutting_D4_Morning)
-1 AssignInShift(O006_L1_Cutting_M01_D4_Morning)
<= 1

c_u_C_CAP_AndLower(O006_L1_Cutting_M01_D4_Afternoon)_:
+1 Assign(O006_L1_Cutting_M01)
+1 ShiftAssign(O006_L1_Cutting_D4_Afternoon)
-1 AssignInShift(O006_L1_Cutting_M01_D4_Afternoon)
<= 1

c_u_C_CAP_AndLower(O006_L1_Cutting_M01_D4_Night)_:
+1 Assign(O006_L1_Cutting_M01)
+1 ShiftAssign(O006_L1_Cutting_D4_Night)
-1 AssignInShift(O006_L1_Cutting_M01_D4_Night)
<= 1

c_u_C_CAP_AndLower(O006_L1_Cutting_M01_D5_Morning)_:
+1 Assign(O006_L1_Cutting_M01)
+1 ShiftAssign(O006_L1_Cutting_D5_Morning)
-1 AssignInShift(O006_L1_Cutting_M01_D5_Morning)
<= 1

c_u_C_CAP_AndLower(O006_L1_Cutting_M01_D5_Afternoon)_:
+1 Assign(O006_L1_Cutting_M01)
+1 ShiftAssign(O006_L1_Cutting_D5_Afternoon)
-1 AssignInShift(O006_L1_Cutting_M01_D5_Afternoon)
<= 1

c_u_C_CAP_AndLower(O006_L1_Cutting_M01_D5_Night)_:
+1 Assign(O006_L1_Cutting_M01)
+1 ShiftAssign(O006_L1_Cutting_D5_Night)
-1 AssignInShift(O006_L1_Cutting_M01_D5_Night)
<= 1

c_u_C_CAP_AndLower(O006_L1_Assembly_M02_D1_Morning)_:
+1 Assign(O006_L1_Assembly_M02)
+1 ShiftAssign(O006_L1_Assembly_D1_Morning)
-1 AssignInShift(O006_L1_Assembly_M02_D1_Morning)
<= 1

c_u_C_CAP_AndLower(O006_L1_Assembly_M02_D1_Afternoon)_:
+1 Assign(O006_L1_Assembly_M02)
+1 ShiftAssign(O006_L1_Assembly_D1_Afternoon)
-1 AssignInShift(O006_L1_Assembly_M02_D1_Afternoon)
<= 1

c_u_C_CAP_AndLower(O006_L1_Assembly_M02_D1_Night)_:
+1 Assign(O006_L1_Assembly_M02)
+1 ShiftAssign(O006_L1_Assembly_D1_Night)
-1 AssignInShift(O006_L1_Assembly_M02_D1_Night)
<= 1

c_u_C_CAP_AndLower(O006_L1_Assembly_M02_D2_Morning)_:
+1 Assign(O006_L1_Assembly_M02)
+1 ShiftAssign(O006_L1_Assembly_D2_Morning)
-1 AssignInShift(O006_L1_Assembly_M02_D2_Morning)
<= 1

c_u_C_CAP_AndLower(O006_L1_Assembly_M02_D2_Afternoon)_:
+1 Assign(O006_L1_Assembly_M02)
+1 ShiftAssign(O006_L1_Assembly_D2_Afternoon)
-1 AssignInShift(O006_L1_Assembly_M02_D2_Afternoon)
<= 1

c_u_C_CAP_AndLower(O006_L1_Assembly_M02_D2_Night)_:
+1 Assign(O006_L1_Assembly_M02)
+1 ShiftAssign(O006_L1_Assembly_D2_Night)
-1 AssignInShift(O006_L1_Assembly_M02_D2_Night)
<= 1

c_u_C_CAP_AndLower(O006_L1_Assembly_M02_D3_Morning)_:
+1 Assign(O006_L1_Assembly_M02)
+1 ShiftAssign(O006_L1_Assembly_D3_Morning)
-1 AssignInShift(O006_L1_Assembly_M02_D3_Morning)
<= 1

c_u_C_CAP_AndLower(O006_L1_Assembly_M02_D3_Afternoon)_:
+1 Assign(O006_L1_Assembly_M02)
+1 ShiftAssign(O006_L1_Assembly_D3_Afternoon)
-1 AssignInShift(O006_L1_Assembly_M02_D3_Afternoon)
<= 1

c_u_C_CAP_AndLower(O006_L1_Assembly_M02_D3_Night)_:
+1 Assign(O006_L1_Assembly_M02)
+1 ShiftAssign(O006_L1_Assembly_D3_Night)
-1 AssignInShift(O006_L1_Assembly_M02_D3_Night)
<= 1

c_u_C_CAP_AndLower(O006_L1_Assembly_M02_D4_Morning)_:
+1 Assign(O006_L1_Assembly_M02)
+1 ShiftAssign(O006_L1_Assembly_D4_Morning)
-1 AssignInShift(O006_L1_Assembly_M02_D4_Morning)
<= 1

c_u_C_CAP_AndLower(O006_L1_Assembly_M02_D4_Afternoon)_:
+1 Assign(O006_L1_Assembly_M02)
+1 ShiftAssign(O006_L1_Assembly_D4_Afternoon)
-1 AssignInShift(O006_L1_Assembly_M02_D4_Afternoon)
<= 1

c_u_C_CAP_AndLower(O006_L1_Assembly_M02_D4_Night)_:
+1 Assign(O006_L1_Assembly_M02)
+1 ShiftAssign(O006_L1_Assembly_D4_Night)
-1 AssignInShift(O006_L1_Assembly_M02_D4_Night)
<= 1

c_u_C_CAP_AndLower(O006_L1_Assembly_M02_D5_Morning)_:
+1 Assign(O006_L1_Assembly_M02)
+1 ShiftAssign(O006_L1_Assembly_D5_Morning)
-1 AssignInShift(O006_L1_Assembly_M02_D5_Morning)
<= 1

c_u_C_CAP_AndLower(O006_L1_Assembly_M02_D5_Afternoon)_:
+1 Assign(O006_L1_Assembly_M02)
+1 ShiftAssign(O006_L1_Assembly_D5_Afternoon)
-1 AssignInShift(O006_L1_Assembly_M02_D5_Afternoon)
<= 1

c_u_C_CAP_AndLower(O006_L1_Assembly_M02_D5_Night)_:
+1 Assign(O006_L1_Assembly_M02)
+1 ShiftAssign(O006_L1_Assembly_D5_Night)
-1 AssignInShift(O006_L1_Assembly_M02_D5_Night)
<= 1

c_u_C_CAP1_DailyCapacity(M01_1)_:
+65.0 AssignInShift(O002_L1_Cutting_M01_D1_Morning)
+65.0 AssignInShift(O002_L1_Cutting_M01_D1_Afternoon)
+65.0 AssignInShift(O002_L1_Cutting_M01_D1_Night)
+149.0 AssignInShift(O003_L1_Cutting_M01_D1_Morning)
+149.0 AssignInShift(O003_L1_Cutting_M01_D1_Afternoon)
+149.0 AssignInShift(O003_L1_Cutting_M01_D1_Night)
+79.0 AssignInShift(O004_L1_Cutting_M01_D1_Morning)
+79.0 AssignInShift(O004_L1_Cutting_M01_D1_Afternoon)
+79.0 AssignInShift(O004_L1_Cutting_M01_D1_Night)
+79.0 AssignInShift(O004_L2_Cutting_M01_D1_Morning)
+79.0 AssignInShift(O004_L2_Cutting_M01_D1_Afternoon)
+79.0 AssignInShift(O004_L2_Cutting_M01_D1_Night)
+24.0 AssignInShift(O005_L1_Cutting_M01_D1_Morning)
+24.0 AssignInShift(O005_L1_Cutting_M01_D1_Afternoon)
+24.0 AssignInShift(O005_L1_Cutting_M01_D1_Night)
+34.0 AssignInShift(O006_L1_Cutting_M01_D1_Morning)
+34.0 AssignInShift(O006_L1_Cutting_M01_D1_Afternoon)
+34.0 AssignInShift(O006_L1_Cutting_M01_D1_Night)
<= 523.2

c_u_C_CAP1_DailyCapacity(M01_2)_:
+65.0 AssignInShift(O002_L1_Cutting_M01_D2_Morning)
+65.0 AssignInShift(O002_L1_Cutting_M01_D2_Afternoon)
+65.0 AssignInShift(O002_L1_Cutting_M01_D2_Night)
+149.0 AssignInShift(O003_L1_Cutting_M01_D2_Morning)
+149.0 AssignInShift(O003_L1_Cutting_M01_D2_Afternoon)
+149.0 AssignInShift(O003_L1_Cutting_M01_D2_Night)
+79.0 AssignInShift(O004_L1_Cutting_M01_D2_Morning)
+79.0 AssignInShift(O004_L1_Cutting_M01_D2_Afternoon)
+79.0 AssignInShift(O004_L1_Cutting_M01_D2_Night)
+79.0 AssignInShift(O004_L2_Cutting_M01_D2_Morning)
+79.0 AssignInShift(O004_L2_Cutting_M01_D2_Afternoon)
+79.0 AssignInShift(O004_L2_Cutting_M01_D2_Night)
+24.0 AssignInShift(O005_L1_Cutting_M01_D2_Morning)
+24.0 AssignInShift(O005_L1_Cutting_M01_D2_Afternoon)
+24.0 AssignInShift(O005_L1_Cutting_M01_D2_Night)
+34.0 AssignInShift(O006_L1_Cutting_M01_D2_Morning)
+34.0 AssignInShift(O006_L1_Cutting_M01_D2_Afternoon)
+34.0 AssignInShift(O006_L1_Cutting_M01_D2_Night)
<= 523.2

c_u_C_CAP1_DailyCapacity(M01_3)_:
+65.0 AssignInShift(O002_L1_Cutting_M01_D3_Morning)
+65.0 AssignInShift(O002_L1_Cutting_M01_D3_Afternoon)
+65.0 AssignInShift(O002_L1_Cutting_M01_D3_Night)
+149.0 AssignInShift(O003_L1_Cutting_M01_D3_Morning)
+149.0 AssignInShift(O003_L1_Cutting_M01_D3_Afternoon)
+149.0 AssignInShift(O003_L1_Cutting_M01_D3_Night)
+79.0 AssignInShift(O004_L1_Cutting_M01_D3_Morning)
+79.0 AssignInShift(O004_L1_Cutting_M01_D3_Afternoon)
+79.0 AssignInShift(O004_L1_Cutting_M01_D3_Night)
+79.0 AssignInShift(O004_L2_Cutting_M01_D3_Morning)
+79.0 AssignInShift(O004_L2_Cutting_M01_D3_Afternoon)
+79.0 AssignInShift(O004_L2_Cutting_M01_D3_Night)
+24.0 AssignInShift(O005_L1_Cutting_M01_D3_Morning)
+24.0 AssignInShift(O005_L1_Cutting_M01_D3_Afternoon)
+24.0 AssignInShift(O005_L1_Cutting_M01_D3_Night)
+34.0 AssignInShift(O006_L1_Cutting_M01_D3_Morning)
+34.0 AssignInShift(O006_L1_Cutting_M01_D3_Afternoon)
+34.0 AssignInShift(O006_L1_Cutting_M01_D3_Night)
<= 523.2

c_u_C_CAP1_DailyCapacity(M01_4)_:
+65.0 AssignInShift(O002_L1_Cutting_M01_D4_Morning)
+65.0 AssignInShift(O002_L1_Cutting_M01_D4_Afternoon)
+65.0 AssignInShift(O002_L1_Cutting_M01_D4_Night)
+149.0 AssignInShift(O003_L1_Cutting_M01_D4_Morning)
+149.0 AssignInShift(O003_L1_Cutting_M01_D4_Afternoon)
+149.0 AssignInShift(O003_L1_Cutting_M01_D4_Night)
+79.0 AssignInShift(O004_L1_Cutting_M01_D4_Morning)
+79.0 AssignInShift(O004_L1_Cutting_M01_D4_Afternoon)
+79.0 AssignInShift(O004_L1_Cutting_M01_D4_Night)
+79.0 AssignInShift(O004_L2_Cutting_M01_D4_Morning)
+79.0 AssignInShift(O004_L2_Cutting_M01_D4_Afternoon)
+79.0 AssignInShift(O004_L2_Cutting_M01_D4_Night)
+24.0 AssignInShift(O005_L1_Cutting_M01_D4_Morning)
+24.0 AssignInShift(O005_L1_Cutting_M01_D4_Afternoon)
+24.0 AssignInShift(O005_L1_Cutting_M01_D4_Night)
+34.0 AssignInShift(O006_L1_Cutting_M01_D4_Morning)
+34.0 AssignInShift(O006_L1_Cutting_M01_D4_Afternoon)
+34.0 AssignInShift(O006_L1_Cutting_M01_D4_Night)
<= 523.2

c_u_C_CAP1_DailyCapacity(M01_5)_:
+65.0 AssignInShift(O002_L1_Cutting_M01_D5_Morning)
+65.0 AssignInShift(O002_L1_Cutting_M01_D5_Afternoon)
+65.0 AssignInShift(O002_L1_Cutting_M01_D5_Night)
+149.0 AssignInShift(O003_L1_Cutting_M01_D5_Morning)
+149.0 AssignInShift(O003_L1_Cutting_M01_D5_Afternoon)
+149.0 AssignInShift(O003_L1_Cutting_M01_D5_Night)
+79.0 AssignInShift(O004_L1_Cutting_M01_D5_Morning)
+79.0 AssignInShift(O004_L1_Cutting_M01_D5_Afternoon)
+79.0 AssignInShift(O004_L1_Cutting_M01_D5_Night)
+79.0 AssignInShift(O004_L2_Cutting_M01_D5_Morning)
+79.0 AssignInShift(O004_L2_Cutting_M01_D5_Afternoon)
+79.0 AssignInShift(O004_L2_Cutting_M01_D5_Night)
+24.0 AssignInShift(O005_L1_Cutting_M01_D5_Morning)
+24.0 AssignInShift(O005_L1_Cutting_M01_D5_Afternoon)
+24.0 AssignInShift(O005_L1_Cutting_M01_D5_Night)
+34.0 AssignInShift(O006_L1_Cutting_M01_D5_Morning)
+34.0 AssignInShift(O006_L1_Cutting_M01_D5_Afternoon)
+34.0 AssignInShift(O006_L1_Cutting_M01_D5_Night)
<= 523.2

c_u_C_CAP1_DailyCapacity(M02_1)_:
+136.0 AssignInShift(O001_L1_Assembly_M02_D1_Morning)
+136.0 AssignInShift(O001_L1_Assembly_M02_D1_Afternoon)
+136.0 AssignInShift(O001_L1_Assembly_M02_D1_Night)
+65.0 AssignInShift(O002_L1_Assembly_M02_D1_Morning)
+65.0 AssignInShift(O002_L1_Assembly_M02_D1_Afternoon)
+65.0 AssignInShift(O002_L1_Assembly_M02_D1_Night)
+149.0 AssignInShift(O003_L1_Assembly_M02_D1_Morning)
+149.0 AssignInShift(O003_L1_Assembly_M02_D1_Afternoon)
+149.0 AssignInShift(O003_L1_Assembly_M02_D1_Night)
+79.0 AssignInShift(O004_L1_Assembly_M02_D1_Morning)
+79.0 AssignInShift(O004_L1_Assembly_M02_D1_Afternoon)
+79.0 AssignInShift(O004_L1_Assembly_M02_D1_Night)
+79.0 AssignInShift(O004_L2_Assembly_M02_D1_Morning)
+79.0 AssignInShift(O004_L2_Assembly_M02_D1_Afternoon)
+79.0 AssignInShift(O004_L2_Assembly_M02_D1_Night)
+24.0 AssignInShift(O005_L1_Assembly_M02_D1_Morning)
+24.0 AssignInShift(O005_L1_Assembly_M02_D1_Afternoon)
+24.0 AssignInShift(O005_L1_Assembly_M02_D1_Night)
+34.0 AssignInShift(O006_L1_Assembly_M02_D1_Morning)
+34.0 AssignInShift(O006_L1_Assembly_M02_D1_Afternoon)
+34.0 AssignInShift(O006_L1_Assembly_M02_D1_Night)
<= 1264.8000000000002

c_u_C_CAP1_DailyCapacity(M02_2)_:
+136.0 AssignInShift(O001_L1_Assembly_M02_D2_Morning)
+136.0 AssignInShift(O001_L1_Assembly_M02_D2_Afternoon)
+136.0 AssignInShift(O001_L1_Assembly_M02_D2_Night)
+65.0 AssignInShift(O002_L1_Assembly_M02_D2_Morning)
+65.0 AssignInShift(O002_L1_Assembly_M02_D2_Afternoon)
+65.0 AssignInShift(O002_L1_Assembly_M02_D2_Night)
+149.0 AssignInShift(O003_L1_Assembly_M02_D2_Morning)
+149.0 AssignInShift(O003_L1_Assembly_M02_D2_Afternoon)
+149.0 AssignInShift(O003_L1_Assembly_M02_D2_Night)
+79.0 AssignInShift(O004_L1_Assembly_M02_D2_Morning)
+79.0 AssignInShift(O004_L1_Assembly_M02_D2_Afternoon)
+79.0 AssignInShift(O004_L1_Assembly_M02_D2_Night)
+79.0 AssignInShift(O004_L2_Assembly_M02_D2_Morning)
+79.0 AssignInShift(O004_L2_Assembly_M02_D2_Afternoon)
+79.0 AssignInShift(O004_L2_Assembly_M02_D2_Night)
+24.0 AssignInShift(O005_L1_Assembly_M02_D2_Morning)
+24.0 AssignInShift(O005_L1_Assembly_M02_D2_Afternoon)
+24.0 AssignInShift(O005_L1_Assembly_M02_D2_Night)
+34.0 AssignInShift(O006_L1_Assembly_M02_D2_Morning)
+34.0 AssignInShift(O006_L1_Assembly_M02_D2_Afternoon)
+34.0 AssignInShift(O006_L1_Assembly_M02_D2_Night)
<= 1264.8000000000002

c_u_C_CAP1_DailyCapacity(M02_3)_:
+136.0 AssignInShift(O001_L1_Assembly_M02_D3_Morning)
+136.0 AssignInShift(O001_L1_Assembly_M02_D3_Afternoon)
+136.0 AssignInShift(O001_L1_Assembly_M02_D3_Night)
+65.0 AssignInShift(O002_L1_Assembly_M02_D3_Morning)
+65.0 AssignInShift(O002_L1_Assembly_M02_D3_Afternoon)
+65.0 AssignInShift(O002_L1_Assembly_M02_D3_Night)
+149.0 AssignInShift(O003_L1_Assembly_M02_D3_Morning)
+149.0 AssignInShift(O003_L1_Assembly_M02_D3_Afternoon)
+149.0 AssignInShift(O003_L1_Assembly_M02_D3_Night)
+79.0 AssignInShift(O004_L1_Assembly_M02_D3_Morning)
+79.0 AssignInShift(O004_L1_Assembly_M02_D3_Afternoon)
+79.0 AssignInShift(O004_L1_Assembly_M02_D3_Night)
+79.0 AssignInShift(O004_L2_Assembly_M02_D3_Morning)
+79.0 AssignInShift(O004_L2_Assembly_M02_D3_Afternoon)
+79.0 AssignInShift(O004_L2_Assembly_M02_D3_Night)
+24.0 AssignInShift(O005_L1_Assembly_M02_D3_Morning)
+24.0 AssignInShift(O005_L1_Assembly_M02_D3_Afternoon)
+24.0 AssignInShift(O005_L1_Assembly_M02_D3_Night)
+34.0 AssignInShift(O006_L1_Assembly_M02_D3_Morning)
+34.0 AssignInShift(O006_L1_Assembly_M02_D3_Afternoon)
+34.0 AssignInShift(O006_L1_Assembly_M02_D3_Night)
<= 1264.8000000000002

c_u_C_CAP1_DailyCapacity(M02_4)_:
+136.0 AssignInShift(O001_L1_Assembly_M02_D4_Morning)
+136.0 AssignInShift(O001_L1_Assembly_M02_D4_Afternoon)
+136.0 AssignInShift(O001_L1_Assembly_M02_D4_Night)
+65.0 AssignInShift(O002_L1_Assembly_M02_D4_Morning)
+65.0 AssignInShift(O002_L1_Assembly_M02_D4_Afternoon)
+65.0 AssignInShift(O002_L1_Assembly_M02_D4_Night)
+149.0 AssignInShift(O003_L1_Assembly_M02_D4_Morning)
+149.0 AssignInShift(O003_L1_Assembly_M02_D4_Afternoon)
+149.0 AssignInShift(O003_L1_Assembly_M02_D4_Night)
+79.0 AssignInShift(O004_L1_Assembly_M02_D4_Morning)
+79.0 AssignInShift(O004_L1_Assembly_M02_D4_Afternoon)
+79.0 AssignInShift(O004_L1_Assembly_M02_D4_Night)
+79.0 AssignInShift(O004_L2_Assembly_M02_D4_Morning)
+79.0 AssignInShift(O004_L2_Assembly_M02_D4_Afternoon)
+79.0 AssignInShift(O004_L2_Assembly_M02_D4_Night)
+24.0 AssignInShift(O005_L1_Assembly_M02_D4_Morning)
+24.0 AssignInShift(O005_L1_Assembly_M02_D4_Afternoon)
+24.0 AssignInShift(O005_L1_Assembly_M02_D4_Night)
+34.0 AssignInShift(O006_L1_Assembly_M02_D4_Morning)
+34.0 AssignInShift(O006_L1_Assembly_M02_D4_Afternoon)
+34.0 AssignInShift(O006_L1_Assembly_M02_D4_Night)
<= 1264.8000000000002

c_u_C_CAP1_DailyCapacity(M02_5)_:
+136.0 AssignInShift(O001_L1_Assembly_M02_D5_Morning)
+136.0 AssignInShift(O001_L1_Assembly_M02_D5_Afternoon)
+136.0 AssignInShift(O001_L1_Assembly_M02_D5_Night)
+65.0 AssignInShift(O002_L1_Assembly_M02_D5_Morning)
+65.0 AssignInShift(O002_L1_Assembly_M02_D5_Afternoon)
+65.0 AssignInShift(O002_L1_Assembly_M02_D5_Night)
+149.0 AssignInShift(O003_L1_Assembly_M02_D5_Morning)
+149.0 AssignInShift(O003_L1_Assembly_M02_D5_Afternoon)
+149.0 AssignInShift(O003_L1_Assembly_M02_D5_Night)
+79.0 AssignInShift(O004_L1_Assembly_M02_D5_Morning)
+79.0 AssignInShift(O004_L1_Assembly_M02_D5_Afternoon)
+79.0 AssignInShift(O004_L1_Assembly_M02_D5_Night)
+79.0 AssignInShift(O004_L2_Assembly_M02_D5_Morning)
+79.0 AssignInShift(O004_L2_Assembly_M02_D5_Afternoon)
+79.0 AssignInShift(O004_L2_Assembly_M02_D5_Night)
+24.0 AssignInShift(O005_L1_Assembly_M02_D5_Morning)
+24.0 AssignInShift(O005_L1_Assembly_M02_D5_Afternoon)
+24.0 AssignInShift(O005_L1_Assembly_M02_D5_Night)
+34.0 AssignInShift(O006_L1_Assembly_M02_D5_Morning)
+34.0 AssignInShift(O006_L1_Assembly_M02_D5_Afternoon)
+34.0 AssignInShift(O006_L1_Assembly_M02_D5_Night)
<= 1264.8000000000002

c_u_C_CAP1_DailyCapacity(M03_1)_:
+136.0 AssignInShift(O001_L1_Cutting_M03_D1_Morning)
+136.0 AssignInShift(O001_L1_Cutting_M03_D1_Afternoon)
+136.0 AssignInShift(O001_L1_Cutting_M03_D1_Night)
<= 969.5999999999999

c_u_C_CAP1_DailyCapacity(M03_2)_:
+136.0 AssignInShift(O001_L1_Cutting_M03_D2_Morning)
+136.0 AssignInShift(O001_L1_Cutting_M03_D2_Afternoon)
+136.0 AssignInShift(O001_L1_Cutting_M03_D2_Night)
<= 969.5999999999999

c_u_C_CAP1_DailyCapacity(M03_3)_:
+136.0 AssignInShift(O001_L1_Cutting_M03_D3_Morning)
+136.0 AssignInShift(O001_L1_Cutting_M03_D3_Afternoon)
+136.0 AssignInShift(O001_L1_Cutting_M03_D3_Night)
<= 969.5999999999999

c_u_C_CAP1_DailyCapacity(M03_4)_:
+136.0 AssignInShift(O001_L1_Cutting_M03_D4_Morning)
+136.0 AssignInShift(O001_L1_Cutting_M03_D4_Afternoon)
+136.0 AssignInShift(O001_L1_Cutting_M03_D4_Night)
<= 969.5999999999999

c_u_C_CAP1_DailyCapacity(M03_5)_:
+136.0 AssignInShift(O001_L1_Cutting_M03_D5_Morning)
+136.0 AssignInShift(O001_L1_Cutting_M03_D5_Afternoon)
+136.0 AssignInShift(O001_L1_Cutting_M03_D5_Night)
<= 969.5999999999999

c_u_C_CAP2_Overtime(M01_1)_:
-1 Overtime(M01_1)
+2.529182879377432 AssignInShift(O002_L1_Cutting_M01_D1_Morning)
+2.529182879377432 AssignInShift(O002_L1_Cutting_M01_D1_Afternoon)
+2.529182879377432 AssignInShift(O002_L1_Cutting_M01_D1_Night)
+3.675382338431179 AssignInShift(O003_L1_Cutting_M01_D1_Morning)
+3.675382338431179 AssignInShift(O003_L1_Cutting_M01_D1_Afternoon)
+3.675382338431179 AssignInShift(O003_L1_Cutting_M01_D1_Night)
+3.0739299610894943 AssignInShift(O004_L1_Cutting_M01_D1_Morning)
+3.0739299610894943 AssignInShift(O004_L1_Cutting_M01_D1_Afternoon)
+3.0739299610894943 AssignInShift(O004_L1_Cutting_M01_D1_Night)
+3.0739299610894943 AssignInShift(O004_L2_Cutting_M01_D1_Morning)
+3.0739299610894943 AssignInShift(O004_L2_Cutting_M01_D1_Afternoon)
+3.0739299610894943 AssignInShift(O004_L2_Cutting_M01_D1_Night)
+0.933852140077821 AssignInShift(O005_L1_Cutting_M01_D1_Morning)
+0.933852140077821 AssignInShift(O005_L1_Cutting_M01_D1_Afternoon)
+0.933852140077821 AssignInShift(O005_L1_Cutting_M01_D1_Night)
+1.3229571984435797 AssignInShift(O006_L1_Cutting_M01_D1_Morning)
+1.3229571984435797 AssignInShift(O006_L1_Cutting_M01_D1_Afternoon)
+1.3229571984435797 AssignInShift(O006_L1_Cutting_M01_D1_Night)
<= 24.0

c_u_C_CAP2_Overtime(M01_2)_:
-1 Overtime(M01_2)
+2.529182879377432 AssignInShift(O002_L1_Cutting_M01_D2_Morning)
+2.529182879377432 AssignInShift(O002_L1_Cutting_M01_D2_Afternoon)
+2.529182879377432 AssignInShift(O002_L1_Cutting_M01_D2_Night)
+3.675382338431179 AssignInShift(O003_L1_Cutting_M01_D2_Morning)
+3.675382338431179 AssignInShift(O003_L1_Cutting_M01_D2_Afternoon)
+3.675382338431179 AssignInShift(O003_L1_Cutting_M01_D2_Night)
+3.0739299610894943 AssignInShift(O004_L1_Cutting_M01_D2_Morning)
+3.0739299610894943 AssignInShift(O004_L1_Cutting_M01_D2_Afternoon)
+3.0739299610894943 AssignInShift(O004_L1_Cutting_M01_D2_Night)
+3.0739299610894943 AssignInShift(O004_L2_Cutting_M01_D2_Morning)
+3.0739299610894943 AssignInShift(O004_L2_Cutting_M01_D2_Afternoon)
+3.0739299610894943 AssignInShift(O004_L2_Cutting_M01_D2_Night)
+0.933852140077821 AssignInShift(O005_L1_Cutting_M01_D2_Morning)
+0.933852140077821 AssignInShift(O005_L1_Cutting_M01_D2_Afternoon)
+0.933852140077821 AssignInShift(O005_L1_Cutting_M01_D2_Night)
+1.3229571984435797 AssignInShift(O006_L1_Cutting_M01_D2_Morning)
+1.3229571984435797 AssignInShift(O006_L1_Cutting_M01_D2_Afternoon)
+1.3229571984435797 AssignInShift(O006_L1_Cutting_M01_D2_Night)
<= 24.0

c_u_C_CAP2_Overtime(M01_3)_:
-1 Overtime(M01_3)
+2.529182879377432 AssignInShift(O002_L1_Cutting_M01_D3_Morning)
+2.529182879377432 AssignInShift(O002_L1_Cutting_M01_D3_Afternoon)
+2.529182879377432 AssignInShift(O002_L1_Cutting_M01_D3_Night)
+3.675382338431179 AssignInShift(O003_L1_Cutting_M01_D3_Morning)
+3.675382338431179 AssignInShift(O003_L1_Cutting_M01_D3_Afternoon)
+3.675382338431179 AssignInShift(O003_L1_Cutting_M01_D3_Night)
+3.0739299610894943 AssignInShift(O004_L1_Cutting_M01_D3_Morning)
+3.0739299610894943 AssignInShift(O004_L1_Cutting_M01_D3_Afternoon)
+3.0739299610894943 AssignInShift(O004_L1_Cutting_M01_D3_Night)
+3.0739299610894943 AssignInShift(O004_L2_Cutting_M01_D3_Morning)
+3.0739299610894943 AssignInShift(O004_L2_Cutting_M01_D3_Afternoon)
+3.0739299610894943 AssignInShift(O004_L2_Cutting_M01_D3_Night)
+0.933852140077821 AssignInShift(O005_L1_Cutting_M01_D3_Morning)
+0.933852140077821 AssignInShift(O005_L1_Cutting_M01_D3_Afternoon)
+0.933852140077821 AssignInShift(O005_L1_Cutting_M01_D3_Night)
+1.3229571984435797 AssignInShift(O006_L1_Cutting_M01_D3_Morning)
+1.3229571984435797 AssignInShift(O006_L1_Cutting_M01_D3_Afternoon)
+1.3229571984435797 AssignInShift(O006_L1_Cutting_M01_D3_Night)
<= 24.0

c_u_C_CAP2_Overtime(M01_4)_:
-1 Overtime(M01_4)
+2.529182879377432 AssignInShift(O002_L1_Cutting_M01_D4_Morning)
+2.529182879377432 AssignInShift(O002_L1_Cutting_M01_D4_Afternoon)
+2.529182879377432 AssignInShift(O002_L1_Cutting_M01_D4_Night)
+3.675382338431179 AssignInShift(O003_L1_Cutting_M01_D4_Morning)
+3.675382338431179 AssignInShift(O003_L1_Cutting_M01_D4_Afternoon)
+3.675382338431179 AssignInShift(O003_L1_Cutting_M01_D4_Night)
+3.0739299610894943 AssignInShift(O004_L1_Cutting_M01_D4_Morning)
+3.0739299610894943 AssignInShift(O004_L1_Cutting_M01_D4_Afternoon)
+3.0739299610894943 AssignInShift(O004_L1_Cutting_M01_D4_Night)
+3.0739299610894943 AssignInShift(O004_L2_Cutting_M01_D4_Morning)
+3.0739299610894943 AssignInShift(O004_L2_Cutting_M01_D4_Afternoon)
+3.0739299610894943 AssignInShift(O004_L2_Cutting_M01_D4_Night)
+0.933852140077821 AssignInShift(O005_L1_Cutting_M01_D4_Morning)
+0.933852140077821 AssignInShift(O005_L1_Cutting_M01_D4_Afternoon)
+0.933852140077821 AssignInShift(O005_L1_Cutting_M01_D4_Night)
+1.3229571984435797 AssignInShift(O006_L1_Cutting_M01_D4_Morning)
+1.3229571984435797 AssignInShift(O006_L1_Cutting_M01_D4_Afternoon)
+1.3229571984435797 AssignInShift(O006_L1_Cutting_M01_D4_Night)
<= 24.0

c_u_C_CAP2_Overtime(M01_5)_:
-1 Overtime(M01_5)
+2.529182879377432 AssignInShift(O002_L1_Cutting_M01_D5_Morning)
+2.529182879377432 AssignInShift(O002_L1_Cutting_M01_D5_Afternoon)
+2.529182879377432 AssignInShift(O002_L1_Cutting_M01_D5_Night)
+3.675382338431179 AssignInShift(O003_L1_Cutting_M01_D5_Morning)
+3.675382338431179 AssignInShift(O003_L1_Cutting_M01_D5_Afternoon)
+3.675382338431179 AssignInShift(O003_L1_Cutting_M01_D5_Night)
+3.0739299610894943 AssignInShift(O004_L1_Cutting_M01_D5_Morning)
+3.0739299610894943 AssignInShift(O004_L1_Cutting_M01_D5_Afternoon)
+3.0739299610894943 AssignInShift(O004_L1_Cutting_M01_D5_Night)
+3.0739299610894943 AssignInShift(O004_L2_Cutting_M01_D5_Morning)
+3.0739299610894943 AssignInShift(O004_L2_Cutting_M01_D5_Afternoon)
+3.0739299610894943 AssignInShift(O004_L2_Cutting_M01_D5_Night)
+0.933852140077821 AssignInShift(O005_L1_Cutting_M01_D5_Morning)
+0.933852140077821 AssignInShift(O005_L1_Cutting_M01_D5_Afternoon)
+0.933852140077821 AssignInShift(O005_L1_Cutting_M01_D5_Night)
+1.3229571984435797 AssignInShift(O006_L1_Cutting_M01_D5_Morning)
+1.3229571984435797 AssignInShift(O006_L1_Cutting_M01_D5_Afternoon)
+1.3229571984435797 AssignInShift(O006_L1_Cutting_M01_D5_Night)
<= 24.0

c_u_C_CAP2_Overtime(M02_1)_:
-1 Overtime(M02_1)
+3.6179835062516625 AssignInShift(O001_L1_Assembly_M02_D1_Morning)
+3.6179835062516625 AssignInShift(O001_L1_Assembly_M02_D1_Afternoon)
+3.6179835062516625 AssignInShift(O001_L1_Assembly_M02_D1_Night)
+1.5011547344110856 AssignInShift(O002_L1_Assembly_M02_D1_Morning)
+1.5011547344110856 AssignInShift(O002_L1_Assembly_M02_D1_Afternoon)
+1.5011547344110856 AssignInShift(O002_L1_Assembly_M02_D1_Night)
+4.137739516800889 AssignInShift(O003_L1_Assembly_M02_D1_Morning)
+4.137739516800889 AssignInShift(O003_L1_Assembly_M02_D1_Afternoon)
+4.137739516800889 AssignInShift(O003_L1_Assembly_M02_D1_Night)
+1.8244803695150116 AssignInShift(O004_L1_Assembly_M02_D1_Morning)
+1.8244803695150116 AssignInShift(O004_L1_Assembly_M02_D1_Afternoon)
+1.8244803695150116 AssignInShift(O004_L1_Assembly_M02_D1_Night)
+1.8244803695150116 AssignInShift(O004_L2_Assembly_M02_D1_Morning)
+1.8244803695150116 AssignInShift(O004_L2_Assembly_M02_D1_Afternoon)
+1.8244803695150116 AssignInShift(O004_L2_Assembly_M02_D1_Night)
+0.5542725173210162 AssignInShift(O005_L1_Assembly_M02_D1_Morning)
+0.5542725173210162 AssignInShift(O005_L1_Assembly_M02_D1_Afternoon)
+0.5542725173210162 AssignInShift(O005_L1_Assembly_M02_D1_Night)
+0.7852193995381063 AssignInShift(O006_L1_Assembly_M02_D1_Morning)
+0.7852193995381063 AssignInShift(O006_L1_Assembly_M02_D1_Afternoon)
+0.7852193995381063 AssignInShift(O006_L1_Assembly_M02_D1_Night)
<= 24.0

c_u_C_CAP2_Overtime(M02_2)_:
-1 Overtime(M02_2)
+3.6179835062516625 AssignInShift(O001_L1_Assembly_M02_D2_Morning)
+3.6179835062516625 AssignInShift(O001_L1_Assembly_M02_D2_Afternoon)
+3.6179835062516625 AssignInShift(O001_L1_Assembly_M02_D2_Night)
+1.5011547344110856 AssignInShift(O002_L1_Assembly_M02_D2_Morning)
+1.5011547344110856 AssignInShift(O002_L1_Assembly_M02_D2_Afternoon)
+1.5011547344110856 AssignInShift(O002_L1_Assembly_M02_D2_Night)
+4.137739516800889 AssignInShift(O003_L1_Assembly_M02_D2_Morning)
+4.137739516800889 AssignInShift(O003_L1_Assembly_M02_D2_Afternoon)
+4.137739516800889 AssignInShift(O003_L1_Assembly_M02_D2_Night)
+1.8244803695150116 AssignInShift(O004_L1_Assembly_M02_D2_Morning)
+1.8244803695150116 AssignInShift(O004_L1_Assembly_M02_D2_Afternoon)
+1.8244803695150116 AssignInShift(O004_L1_Assembly_M02_D2_Night)
+1.8244803695150116 AssignInShift(O004_L2_Assembly_M02_D2_Morning)
+1.8244803695150116 AssignInShift(O004_L2_Assembly_M02_D2_Afternoon)
+1.8244803695150116 AssignInShift(O004_L2_Assembly_M02_D2_Night)
+0.5542725173210162 AssignInShift(O005_L1_Assembly_M02_D2_Morning)
+0.5542725173210162 AssignInShift(O005_L1_Assembly_M02_D2_Afternoon)
+0.5542725173210162 AssignInShift(O005_L1_Assembly_M02_D2_Night)
+0.7852193995381063 AssignInShift(O006_L1_Assembly_M02_D2_Morning)
+0.7852193995381063 AssignInShift(O006_L1_Assembly_M02_D2_Afternoon)
+0.7852193995381063 AssignInShift(O006_L1_Assembly_M02_D2_Night)
<= 24.0

c_u_C_CAP2_Overtime(M02_3)_:
-1 Overtime(M02_3)
+3.6179835062516625 AssignInShift(O001_L1_Assembly_M02_D3_Morning)
+3.6179835062516625 AssignInShift(O001_L1_Assembly_M02_D3_Afternoon)
+3.6179835062516625 AssignInShift(O001_L1_Assembly_M02_D3_Night)
+1.5011547344110856 AssignInShift(O002_L1_Assembly_M02_D3_Morning)
+1.5011547344110856 AssignInShift(O002_L1_Assembly_M02_D3_Afternoon)
+1.5011547344110856 AssignInShift(O002_L1_Assembly_M02_D3_Night)
+4.137739516800889 AssignInShift(O003_L1_Assembly_M02_D3_Morning)
+4.137739516800889 AssignInShift(O003_L1_Assembly_M02_D3_Afternoon)
+4.137739516800889 AssignInShift(O003_L1_Assembly_M02_D3_Night)
+1.8244803695150116 AssignInShift(O004_L1_Assembly_M02_D3_Morning)
+1.8244803695150116 AssignInShift(O004_L1_Assembly_M02_D3_Afternoon)
+1.8244803695150116 AssignInShift(O004_L1_Assembly_M02_D3_Night)
+1.8244803695150116 AssignInShift(O004_L2_Assembly_M02_D3_Morning)
+1.8244803695150116 AssignInShift(O004_L2_Assembly_M02_D3_Afternoon)
+1.8244803695150116 AssignInShift(O004_L2_Assembly_M02_D3_Night)
+0.5542725173210162 AssignInShift(O005_L1_Assembly_M02_D3_Morning)
+0.5542725173210162 AssignInShift(O005_L1_Assembly_M02_D3_Afternoon)
+0.5542725173210162 AssignInShift(O005_L1_Assembly_M02_D3_Night)
+0.7852193995381063 AssignInShift(O006_L1_Assembly_M02_D3_Morning)
+0.7852193995381063 AssignInShift(O006_L1_Assembly_M02_D3_Afternoon)
+0.7852193995381063 AssignInShift(O006_L1_Assembly_M02_D3_Night)
<= 24.0

c_u_C_CAP2_Overtime(M02_4)_:
-1 Overtime(M02_4)
+3.6179835062516625 AssignInShift(O001_L1_Assembly_M02_D4_Morning)
+3.6179835062516625 AssignInShift(O001_L1_Assembly_M02_D4_Afternoon)
+3.6179835062516625 AssignInShift(O001_L1_Assembly_M02_D4_Night)
+1.5011547344110856 AssignInShift(O002_L1_Assembly_M02_D4_Morning)
+1.5011547344110856 AssignInShift(O002_L1_Assembly_M02_D4_Afternoon)
+1.5011547344110856 AssignInShift(O002_L1_Assembly_M02_D4_Night)
+4.137739516800889 AssignInShift(O003_L1_Assembly_M02_D4_Morning)
+4.137739516800889 AssignInShift(O003_L1_Assembly_M02_D4_Afternoon)
+4.137739516800889 AssignInShift(O003_L1_Assembly_M02_D4_Night)
+1.8244803695150116 AssignInShift(O004_L1_Assembly_M02_D4_Morning)
+1.8244803695150116 AssignInShift(O004_L1_Assembly_M02_D4_Afternoon)
+1.8244803695150116 AssignInShift(O004_L1_Assembly_M02_D4_Night)
+1.8244803695150116 AssignInShift(O004_L2_Assembly_M02_D4_Morning)
+1.8244803695150116 AssignInShift(O004_L2_Assembly_M02_D4_Afternoon)
+1.8244803695150116 AssignInShift(O004_L2_Assembly_M02_D4_Night)
+0.5542725173210162 AssignInShift(O005_L1_Assembly_M02_D4_Morning)
+0.5542725173210162 AssignInShift(O005_L1_Assembly_M02_D4_Afternoon)
+0.5542725173210162 AssignInShift(O005_L1_Assembly_M02_D4_Night)
+0.7852193995381063 AssignInShift(O006_L1_Assembly_M02_D4_Morning)
+0.7852193995381063 AssignInShift(O006_L1_Assembly_M02_D4_Afternoon)
+0.7852193995381063 AssignInShift(O006_L1_Assembly_M02_D4_Night)
<= 24.0

c_u_C_CAP2_Overtime(M02_5)_:
-1 Overtime(M02_5)
+3.6179835062516625 AssignInShift(O001_L1_Assembly_M02_D5_Morning)
+3.6179835062516625 AssignInShift(O001_L1_Assembly_M02_D5_Afternoon)
+3.6179835062516625 AssignInShift(O001_L1_Assembly_M02_D5_Night)
+1.5011547344110856 AssignInShift(O002_L1_Assembly_M02_D5_Morning)
+1.5011547344110856 AssignInShift(O002_L1_Assembly_M02_D5_Afternoon)
+1.5011547344110856 AssignInShift(O002_L1_Assembly_M02_D5_Night)
+4.137739516800889 AssignInShift(O003_L1_Assembly_M02_D5_Morning)
+4.137739516800889 AssignInShift(O003_L1_Assembly_M02_D5_Afternoon)
+4.137739516800889 AssignInShift(O003_L1_Assembly_M02_D5_Night)
+1.8244803695150116 AssignInShift(O004_L1_Assembly_M02_D5_Morning)
+1.8244803695150116 AssignInShift(O004_L1_Assembly_M02_D5_Afternoon)
+1.8244803695150116 AssignInShift(O004_L1_Assembly_M02_D5_Night)
+1.8244803695150116 AssignInShift(O004_L2_Assembly_M02_D5_Morning)
+1.8244803695150116 AssignInShift(O004_L2_Assembly_M02_D5_Afternoon)
+1.8244803695150116 AssignInShift(O004_L2_Assembly_M02_D5_Night)
+0.5542725173210162 AssignInShift(O005_L1_Assembly_M02_D5_Morning)
+0.5542725173210162 AssignInShift(O005_L1_Assembly_M02_D5_Afternoon)
+0.5542725173210162 AssignInShift(O005_L1_Assembly_M02_D5_Night)
+0.7852193995381063 AssignInShift(O006_L1_Assembly_M02_D5_Morning)
+0.7852193995381063 AssignInShift(O006_L1_Assembly_M02_D5_Afternoon)
+0.7852193995381063 AssignInShift(O006_L1_Assembly_M02_D5_Night)
<= 16.0

c_u_C_CAP2_Overtime(M03_1)_:
-1 Overtime(M03_1)
+3.2113341204250294 AssignInShift(O001_L1_Cutting_M03_D1_Morning)
+3.2113341204250294 AssignInShift(O001_L1_Cutting_M03_D1_Afternoon)
+3.2113341204250294 AssignInShift(O001_L1_Cutting_M03_D1_Night)
<= 24.0

c_u_C_CAP2_Overtime(M03_2)_:
-1 Overtime(M03_2)
+3.2113341204250294 AssignInShift(O001_L1_Cutting_M03_D2_Morning)
+3.2113341204250294 AssignInShift(O001_L1_Cutting_M03_D2_Afternoon)
+3.2113341204250294 AssignInShift(O001_L1_Cutting_M03_D2_Night)
<= 24.0

c_u_C_CAP2_Overtime(M03_3)_:
-1 Overtime(M03_3)
+3.2113341204250294 AssignInShift(O001_L1_Cutting_M03_D3_Morning)
+3.2113341204250294 AssignInShift(O001_L1_Cutting_M03_D3_Afternoon)
+3.2113341204250294 AssignInShift(O001_L1_Cutting_M03_D3_Night)
<= 24.0

c_u_C_CAP2_Overtime(M03_4)_:
-1 Overtime(M03_4)
+3.2113341204250294 AssignInShift(O001_L1_Cutting_M03_D4_Morning)
+3.2113341204250294 AssignInShift(O001_L1_Cutting_M03_D4_Afternoon)
+3.2113341204250294 AssignInShift(O001_L1_Cutting_M03_D4_Night)
<= 24.0

c_u_C_CAP2_Overtime(M03_5)_:
-1 Overtime(M03_5)
+3.2113341204250294 AssignInShift(O001_L1_Cutting_M03_D5_Morning)
+3.2113341204250294 AssignInShift(O001_L1_Cutting_M03_D5_Afternoon)
+3.2113341204250294 AssignInShift(O001_L1_Cutting_M03_D5_Night)
<= 24.0

c_e_C_INV1_Balance(P01_1)_:
+1 Inv(P01_1)
-65.0 ShiftAssign(O002_L1_Assembly_D1_Morning)
-65.0 ShiftAssign(O002_L1_Assembly_D1_Afternoon)
-65.0 ShiftAssign(O002_L1_Assembly_D1_Night)
-79.0 ShiftAssign(O004_L1_Assembly_D1_Morning)
-79.0 ShiftAssign(O004_L1_Assembly_D1_Afternoon)
-79.0 ShiftAssign(O004_L1_Assembly_D1_Night)
-79.0 ShiftAssign(O004_L2_Assembly_D1_Morning)
-79.0 ShiftAssign(O004_L2_Assembly_D1_Afternoon)
-79.0 ShiftAssign(O004_L2_Assembly_D1_Night)
-24.0 ShiftAssign(O005_L1_Assembly_D1_Morning)
-24.0 ShiftAssign(O005_L1_Assembly_D1_Afternoon)
-24.0 ShiftAssign(O005_L1_Assembly_D1_Night)
-34.0 ShiftAssign(O006_L1_Assembly_D1_Morning)
-34.0 ShiftAssign(O006_L1_Assembly_D1_Afternoon)
-34.0 ShiftAssign(O006_L1_Assembly_D1_Night)
-1 Backlog(P01_1)
= 44.0

c_e_C_INV1_Balance(P01_2)_:
-1 Inv(P01_1)
+1 Inv(P01_2)
-65.0 ShiftAssign(O002_L1_Assembly_D2_Morning)
-65.0 ShiftAssign(O002_L1_Assembly_D2_Afternoon)
-65.0 ShiftAssign(O002_L1_Assembly_D2_Night)
-79.0 ShiftAssign(O004_L1_Assembly_D2_Morning)
-79.0 ShiftAssign(O004_L1_Assembly_D2_Afternoon)
-79.0 ShiftAssign(O004_L1_Assembly_D2_Night)
-79.0 ShiftAssign(O004_L2_Assembly_D2_Morning)
-79.0 ShiftAssign(O004_L2_Assembly_D2_Afternoon)
-79.0 ShiftAssign(O004_L2_Assembly_D2_Night)
-24.0 ShiftAssign(O005_L1_Assembly_D2_Morning)
-24.0 ShiftAssign(O005_L1_Assembly_D2_Afternoon)
-24.0 ShiftAssign(O005_L1_Assembly_D2_Night)
-34.0 ShiftAssign(O006_L1_Assembly_D2_Morning)
-34.0 ShiftAssign(O006_L1_Assembly_D2_Afternoon)
-34.0 ShiftAssign(O006_L1_Assembly_D2_Night)
+1 Backlog(P01_1)
-1 Backlog(P01_2)
= -247.0

c_e_C_INV1_Balance(P01_3)_:
-1 Inv(P01_2)
+1 Inv(P01_3)
-65.0 ShiftAssign(O002_L1_Assembly_D3_Morning)
-65.0 ShiftAssign(O002_L1_Assembly_D3_Afternoon)
-65.0 ShiftAssign(O002_L1_Assembly_D3_Night)
-79.0 ShiftAssign(O004_L1_Assembly_D3_Morning)
-79.0 ShiftAssign(O004_L1_Assembly_D3_Afternoon)
-79.0 ShiftAssign(O004_L1_Assembly_D3_Night)
-79.0 ShiftAssign(O004_L2_Assembly_D3_Morning)
-79.0 ShiftAssign(O004_L2_Assembly_D3_Afternoon)
-79.0 ShiftAssign(O004_L2_Assembly_D3_Night)
-24.0 ShiftAssign(O005_L1_Assembly_D3_Morning)
-24.0 ShiftAssign(O005_L1_Assembly_D3_Afternoon)
-24.0 ShiftAssign(O005_L1_Assembly_D3_Night)
-34.0 ShiftAssign(O006_L1_Assembly_D3_Morning)
-34.0 ShiftAssign(O006_L1_Assembly_D3_Afternoon)
-34.0 ShiftAssign(O006_L1_Assembly_D3_Night)
+1 Backlog(P01_2)
-1 Backlog(P01_3)
= -34.0

c_e_C_INV1_Balance(P01_4)_:
-1 Inv(P01_3)
+1 Inv(P01_4)
-65.0 ShiftAssign(O002_L1_Assembly_D4_Morning)
-65.0 ShiftAssign(O002_L1_Assembly_D4_Afternoon)
-65.0 ShiftAssign(O002_L1_Assembly_D4_Night)
-79.0 ShiftAssign(O004_L1_Assembly_D4_Morning)
-79.0 ShiftAssign(O004_L1_Assembly_D4_Afternoon)
-79.0 ShiftAssign(O004_L1_Assembly_D4_Night)
-79.0 ShiftAssign(O004_L2_Assembly_D4_Morning)
-79.0 ShiftAssign(O004_L2_Assembly_D4_Afternoon)
-79.0 ShiftAssign(O004_L2_Assembly_D4_Night)
-24.0 ShiftAssign(O005_L1_Assembly_D4_Morning)
-24.0 ShiftAssign(O005_L1_Assembly_D4_Afternoon)
-24.0 ShiftAssign(O005_L1_Assembly_D4_Night)
-34.0 ShiftAssign(O006_L1_Assembly_D4_Morning)
-34.0 ShiftAssign(O006_L1_Assembly_D4_Afternoon)
-34.0 ShiftAssign(O006_L1_Assembly_D4_Night)
+1 Backlog(P01_3)
-1 Backlog(P01_4)
= 0

c_e_C_INV1_Balance(P01_5)_:
-1 Inv(P01_4)
+1 Inv(P01_5)
-65.0 ShiftAssign(O002_L1_Assembly_D5_Morning)
-65.0 ShiftAssign(O002_L1_Assembly_D5_Afternoon)
-65.0 ShiftAssign(O002_L1_Assembly_D5_Night)
-79.0 ShiftAssign(O004_L1_Assembly_D5_Morning)
-79.0 ShiftAssign(O004_L1_Assembly_D5_Afternoon)
-79.0 ShiftAssign(O004_L1_Assembly_D5_Night)
-79.0 ShiftAssign(O004_L2_Assembly_D5_Morning)
-79.0 ShiftAssign(O004_L2_Assembly_D5_Afternoon)
-79.0 ShiftAssign(O004_L2_Assembly_D5_Night)
-24.0 ShiftAssign(O005_L1_Assembly_D5_Morning)
-24.0 ShiftAssign(O005_L1_Assembly_D5_Afternoon)
-24.0 ShiftAssign(O005_L1_Assembly_D5_Night)
-34.0 ShiftAssign(O006_L1_Assembly_D5_Morning)
-34.0 ShiftAssign(O006_L1_Assembly_D5_Afternoon)
-34.0 ShiftAssign(O006_L1_Assembly_D5_Night)
+1 Backlog(P01_4)
-1 Backlog(P01_5)
= 0

c_e_C_INV1_Balance(P02_1)_:
+1 Inv(P02_1)
-136.0 ShiftAssign(O001_L1_Assembly_D1_Morning)
-136.0 ShiftAssign(O001_L1_Assembly_D1_Afternoon)
-136.0 ShiftAssign(O001_L1_Assembly_D1_Night)
-1 Backlog(P02_1)
= 12.0

c_e_C_INV1_Balance(P02_2)_:
-1 Inv(P02_1)
+1 Inv(P02_2)
-136.0 ShiftAssign(O001_L1_Assembly_D2_Morning)
-136.0 ShiftAssign(O001_L1_Assembly_D2_Afternoon)
-136.0 ShiftAssign(O001_L1_Assembly_D2_Night)
+1 Backlog(P02_1)
-1 Backlog(P02_2)
= -136.0

c_e_C_INV1_Balance(P02_3)_:
-1 Inv(P02_2)
+1 Inv(P02_3)
-136.0 ShiftAssign(O001_L1_Assembly_D3_Morning)
-136.0 ShiftAssign(O001_L1_Assembly_D3_Afternoon)
-136.0 ShiftAssign(O001_L1_Assembly_D3_Night)
+1 Backlog(P02_2)
-1 Backlog(P02_3)
= 0

c_e_C_INV1_Balance(P02_4)_:
-1 Inv(P02_3)
+1 Inv(P02_4)
-136.0 ShiftAssign(O001_L1_Assembly_D4_Morning)
-136.0 ShiftAssign(O001_L1_Assembly_D4_Afternoon)
-136.0 ShiftAssign(O001_L1_Assembly_D4_Night)
+1 Backlog(P02_3)
-1 Backlog(P02_4)
= 0

c_e_C_INV1_Balance(P02_5)_:
-1 Inv(P02_4)
+1 Inv(P02_5)
-136.0 ShiftAssign(O001_L1_Assembly_D5_Morning)
-136.0 ShiftAssign(O001_L1_Assembly_D5_Afternoon)
-136.0 ShiftAssign(O001_L1_Assembly_D5_Night)
+1 Backlog(P02_4)
-1 Backlog(P02_5)
= 0

c_e_C_INV1_Balance(P03_1)_:
+1 Inv(P03_1)
-149.0 ShiftAssign(O003_L1_Assembly_D1_Morning)
-149.0 ShiftAssign(O003_L1_Assembly_D1_Afternoon)
-149.0 ShiftAssign(O003_L1_Assembly_D1_Night)
-1 Backlog(P03_1)
= 45.0

c_e_C_INV1_Balance(P03_2)_:
-1 Inv(P03_1)
+1 Inv(P03_2)
-149.0 ShiftAssign(O003_L1_Assembly_D2_Morning)
-149.0 ShiftAssign(O003_L1_Assembly_D2_Afternoon)
-149.0 ShiftAssign(O003_L1_Assembly_D2_Night)
+1 Backlog(P03_1)
-1 Backlog(P03_2)
= 0

c_e_C_INV1_Balance(P03_3)_:
-1 Inv(P03_2)
+1 Inv(P03_3)
-149.0 ShiftAssign(O003_L1_Assembly_D3_Morning)
-149.0 ShiftAssign(O003_L1_Assembly_D3_Afternoon)
-149.0 ShiftAssign(O003_L1_Assembly_D3_Night)
+1 Backlog(P03_2)
-1 Backlog(P03_3)
= -149.0

c_e_C_INV1_Balance(P03_4)_:
-1 Inv(P03_3)
+1 Inv(P03_4)
-149.0 ShiftAssign(O003_L1_Assembly_D4_Morning)
-149.0 ShiftAssign(O003_L1_Assembly_D4_Afternoon)
-149.0 ShiftAssign(O003_L1_Assembly_D4_Night)
+1 Backlog(P03_3)
-1 Backlog(P03_4)
= 0

c_e_C_INV1_Balance(P03_5)_:
-1 Inv(P03_4)
+1 Inv(P03_5)
-149.0 ShiftAssign(O003_L1_Assembly_D5_Morning)
-149.0 ShiftAssign(O003_L1_Assembly_D5_Afternoon)
-149.0 ShiftAssign(O003_L1_Assembly_D5_Night)
+1 Backlog(P03_4)
-1 Backlog(P03_5)
= 0

c_e_C_INV1_Balance(P04_1)_:
+1 Inv(P04_1)
-1 Backlog(P04_1)
= 19.0

c_e_C_INV1_Balance(P04_2)_:
-1 Inv(P04_1)
+1 Inv(P04_2)
+1 Backlog(P04_1)
-1 Backlog(P04_2)
= 0

c_e_C_INV1_Balance(P04_3)_:
-1 Inv(P04_2)
+1 Inv(P04_3)
+1 Backlog(P04_2)
-1 Backlog(P04_3)
= 0

c_e_C_INV1_Balance(P04_4)_:
-1 Inv(P04_3)
+1 Inv(P04_4)
+1 Backlog(P04_3)
-1 Backlog(P04_4)
= 0

c_e_C_INV1_Balance(P04_5)_:
-1 Inv(P04_4)
+1 Inv(P04_5)
+1 Backlog(P04_4)
-1 Backlog(P04_5)
= 0

c_e_C_MAT1_Balance(RM01_1)_:
+198.9 ShiftAssign(O002_L1_Cutting_D1_Morning)
+198.9 ShiftAssign(O002_L1_Cutting_D1_Afternoon)
+198.9 ShiftAssign(O002_L1_Cutting_D1_Night)
+241.74 ShiftAssign(O004_L1_Cutting_D1_Morning)
+241.74 ShiftAssign(O004_L1_Cutting_D1_Afternoon)
+241.74 ShiftAssign(O004_L1_Cutting_D1_Night)
+241.74 ShiftAssign(O004_L2_Cutting_D1_Morning)
+241.74 ShiftAssign(O004_L2_Cutting_D1_Afternoon)
+241.74 ShiftAssign(O004_L2_Cutting_D1_Night)
+73.44 ShiftAssign(O005_L1_Cutting_D1_Morning)
+73.44 ShiftAssign(O005_L1_Cutting_D1_Afternoon)
+73.44 ShiftAssign(O005_L1_Cutting_D1_Night)
+104.04 ShiftAssign(O006_L1_Cutting_D1_Morning)
+104.04 ShiftAssign(O006_L1_Cutting_D1_Afternoon)
+104.04 ShiftAssign(O006_L1_Cutting_D1_Night)
+1 InvRM(RM01_1)
= 1262.9

c_e_C_MAT1_Balance(RM01_2)_:
+198.9 ShiftAssign(O002_L1_Cutting_D2_Morning)
+198.9 ShiftAssign(O002_L1_Cutting_D2_Afternoon)
+198.9 ShiftAssign(O002_L1_Cutting_D2_Night)
+241.74 ShiftAssign(O004_L1_Cutting_D2_Morning)
+241.74 ShiftAssign(O004_L1_Cutting_D2_Afternoon)
+241.74 ShiftAssign(O004_L1_Cutting_D2_Night)
+241.74 ShiftAssign(O004_L2_Cutting_D2_Morning)
+241.74 ShiftAssign(O004_L2_Cutting_D2_Afternoon)
+241.74 ShiftAssign(O004_L2_Cutting_D2_Night)
+73.44 ShiftAssign(O005_L1_Cutting_D2_Morning)
+73.44 ShiftAssign(O005_L1_Cutting_D2_Afternoon)
+73.44 ShiftAssign(O005_L1_Cutting_D2_Night)
+104.04 ShiftAssign(O006_L1_Cutting_D2_Morning)
+104.04 ShiftAssign(O006_L1_Cutting_D2_Afternoon)
+104.04 ShiftAssign(O006_L1_Cutting_D2_Night)
-1 InvRM(RM01_1)
+1 InvRM(RM01_2)
= 0

c_e_C_MAT1_Balance(RM01_3)_:
+198.9 ShiftAssign(O002_L1_Cutting_D3_Morning)
+198.9 ShiftAssign(O002_L1_Cutting_D3_Afternoon)
+198.9 ShiftAssign(O002_L1_Cutting_D3_Night)
+241.74 ShiftAssign(O004_L1_Cutting_D3_Morning)
+241.74 ShiftAssign(O004_L1_Cutting_D3_Afternoon)
+241.74 ShiftAssign(O004_L1_Cutting_D3_Night)
+241.74 ShiftAssign(O004_L2_Cutting_D3_Morning)
+241.74 ShiftAssign(O004_L2_Cutting_D3_Afternoon)
+241.74 ShiftAssign(O004_L2_Cutting_D3_Night)
+73.44 ShiftAssign(O005_L1_Cutting_D3_Morning)
+73.44 ShiftAssign(O005_L1_Cutting_D3_Afternoon)
+73.44 ShiftAssign(O005_L1_Cutting_D3_Night)
+104.04 ShiftAssign(O006_L1_Cutting_D3_Morning)
+104.04 ShiftAssign(O006_L1_Cutting_D3_Afternoon)
+104.04 ShiftAssign(O006_L1_Cutting_D3_Night)
-1 InvRM(RM01_2)
+1 InvRM(RM01_3)
= 0

c_e_C_MAT1_Balance(RM01_4)_:
+198.9 ShiftAssign(O002_L1_Cutting_D4_Morning)
+198.9 ShiftAssign(O002_L1_Cutting_D4_Afternoon)
+198.9 ShiftAssign(O002_L1_Cutting_D4_Night)
+241.74 ShiftAssign(O004_L1_Cutting_D4_Morning)
+241.74 ShiftAssign(O004_L1_Cutting_D4_Afternoon)
+241.74 ShiftAssign(O004_L1_Cutting_D4_Night)
+241.74 ShiftAssign(O004_L2_Cutting_D4_Morning)
+241.74 ShiftAssign(O004_L2_Cutting_D4_Afternoon)
+241.74 ShiftAssign(O004_L2_Cutting_D4_Night)
+73.44 ShiftAssign(O005_L1_Cutting_D4_Morning)
+73.44 ShiftAssign(O005_L1_Cutting_D4_Afternoon)
+73.44 ShiftAssign(O005_L1_Cutting_D4_Night)
+104.04 ShiftAssign(O006_L1_Cutting_D4_Morning)
+104.04 ShiftAssign(O006_L1_Cutting_D4_Afternoon)
+104.04 ShiftAssign(O006_L1_Cutting_D4_Night)
-1 InvRM(RM01_3)
+1 InvRM(RM01_4)
= 0

c_e_C_MAT1_Balance(RM01_5)_:
+198.9 ShiftAssign(O002_L1_Cutting_D5_Morning)
+198.9 ShiftAssign(O002_L1_Cutting_D5_Afternoon)
+198.9 ShiftAssign(O002_L1_Cutting_D5_Night)
+241.74 ShiftAssign(O004_L1_Cutting_D5_Morning)
+241.74 ShiftAssign(O004_L1_Cutting_D5_Afternoon)
+241.74 ShiftAssign(O004_L1_Cutting_D5_Night)
+241.74 ShiftAssign(O004_L2_Cutting_D5_Morning)
+241.74 ShiftAssign(O004_L2_Cutting_D5_Afternoon)
+241.74 ShiftAssign(O004_L2_Cutting_D5_Night)
+73.44 ShiftAssign(O005_L1_Cutting_D5_Morning)
+73.44 ShiftAssign(O005_L1_Cutting_D5_Afternoon)
+73.44 ShiftAssign(O005_L1_Cutting_D5_Night)
+104.04 ShiftAssign(O006_L1_Cutting_D5_Morning)
+104.04 ShiftAssign(O006_L1_Cutting_D5_Afternoon)
+104.04 ShiftAssign(O006_L1_Cutting_D5_Night)
-1 InvRM(RM01_4)
+1 InvRM(RM01_5)
= 0

c_e_C_MAT1_Balance(RM02_1)_:
+1 InvRM(RM02_1)
= 0.0

c_e_C_MAT1_Balance(RM02_2)_:
-1 InvRM(RM02_1)
+1 InvRM(RM02_2)
= 0

c_e_C_MAT1_Balance(RM02_3)_:
-1 InvRM(RM02_2)
+1 InvRM(RM02_3)
= 0

c_e_C_MAT1_Balance(RM02_4)_:
-1 InvRM(RM02_3)
+1 InvRM(RM02_4)
= 0

c_e_C_MAT1_Balance(RM02_5)_:
-1 InvRM(RM02_4)
+1 InvRM(RM02_5)
= 0

c_e_C_MAT1_Balance(RM03_1)_:
+1 InvRM(RM03_1)
= 0.0

c_e_C_MAT1_Balance(RM03_2)_:
-1 InvRM(RM03_1)
+1 InvRM(RM03_2)
= 0

c_e_C_MAT1_Balance(RM03_3)_:
-1 InvRM(RM03_2)
+1 InvRM(RM03_3)
= 0

c_e_C_MAT1_Balance(RM03_4)_:
-1 InvRM(RM03_3)
+1 InvRM(RM03_4)
= 0

c_e_C_MAT1_Balance(RM03_5)_:
-1 InvRM(RM03_4)
+1 InvRM(RM03_5)
= 0

c_e_C_MAT1_Balance(RM04_1)_:
+1 InvRM(RM04_1)
= 0.0

c_e_C_MAT1_Balance(RM04_2)_:
-1 InvRM(RM04_1)
+1 InvRM(RM04_2)
= 0

c_e_C_MAT1_Balance(RM04_3)_:
-1 InvRM(RM04_2)
+1 InvRM(RM04_3)
= 0

c_e_C_MAT1_Balance(RM04_4)_:
-1 InvRM(RM04_3)
+1 InvRM(RM04_4)
= 0

c_e_C_MAT1_Balance(RM04_5)_:
-1 InvRM(RM04_4)
+1 InvRM(RM04_5)
= 0

c_e_C_MAT1_Balance(RM05_1)_:
+432.48 ShiftAssign(O001_L1_Cutting_D1_Morning)
+432.48 ShiftAssign(O001_L1_Cutting_D1_Afternoon)
+432.48 ShiftAssign(O001_L1_Cutting_D1_Night)
+1 InvRM(RM05_1)
= 620.8

c_e_C_MAT1_Balance(RM05_2)_:
+432.48 ShiftAssign(O001_L1_Cutting_D2_Morning)
+432.48 ShiftAssign(O001_L1_Cutting_D2_Afternoon)
+432.48 ShiftAssign(O001_L1_Cutting_D2_Night)
-1 InvRM(RM05_1)
+1 InvRM(RM05_2)
= 0

c_e_C_MAT1_Balance(RM05_3)_:
+432.48 ShiftAssign(O001_L1_Cutting_D3_Morning)
+432.48 ShiftAssign(O001_L1_Cutting_D3_Afternoon)
+432.48 ShiftAssign(O001_L1_Cutting_D3_Night)
-1 InvRM(RM05_2)
+1 InvRM(RM05_3)
= 0

c_e_C_MAT1_Balance(RM05_4)_:
+432.48 ShiftAssign(O001_L1_Cutting_D4_Morning)
+432.48 ShiftAssign(O001_L1_Cutting_D4_Afternoon)
+432.48 ShiftAssign(O001_L1_Cutting_D4_Night)
-1 InvRM(RM05_3)
+1 InvRM(RM05_4)
= 0

c_e_C_MAT1_Balance(RM05_5)_:
+432.48 ShiftAssign(O001_L1_Cutting_D5_Morning)
+432.48 ShiftAssign(O001_L1_Cutting_D5_Afternoon)
+432.48 ShiftAssign(O001_L1_Cutting_D5_Night)
-1 InvRM(RM05_4)
+1 InvRM(RM05_5)
= 0

c_e_C_MAT1_Balance(RM06_1)_:
+321.84000000000003 ShiftAssign(O003_L1_Cutting_D1_Morning)
+321.84000000000003 ShiftAssign(O003_L1_Cutting_D1_Afternoon)
+321.84000000000003 ShiftAssign(O003_L1_Cutting_D1_Night)
+1 InvRM(RM06_1)
= 477.3

c_e_C_MAT1_Balance(RM06_2)_:
+321.84000000000003 ShiftAssign(O003_L1_Cutting_D2_Morning)
+321.84000000000003 ShiftAssign(O003_L1_Cutting_D2_Afternoon)
+321.84000000000003 ShiftAssign(O003_L1_Cutting_D2_Night)
-1 InvRM(RM06_1)
+1 InvRM(RM06_2)
= 0

c_e_C_MAT1_Balance(RM06_3)_:
+321.84000000000003 ShiftAssign(O003_L1_Cutting_D3_Morning)
+321.84000000000003 ShiftAssign(O003_L1_Cutting_D3_Afternoon)
+321.84000000000003 ShiftAssign(O003_L1_Cutting_D3_Night)
-1 InvRM(RM06_2)
+1 InvRM(RM06_3)
= 0

c_e_C_MAT1_Balance(RM06_4)_:
+321.84000000000003 ShiftAssign(O003_L1_Cutting_D4_Morning)
+321.84000000000003 ShiftAssign(O003_L1_Cutting_D4_Afternoon)
+321.84000000000003 ShiftAssign(O003_L1_Cutting_D4_Night)
-1 InvRM(RM06_3)
+1 InvRM(RM06_4)
= 0

c_e_C_MAT1_Balance(RM06_5)_:
+321.84000000000003 ShiftAssign(O003_L1_Cutting_D5_Morning)
+321.84000000000003 ShiftAssign(O003_L1_Cutting_D5_Afternoon)
+321.84000000000003 ShiftAssign(O003_L1_Cutting_D5_Night)
-1 InvRM(RM06_4)
+1 InvRM(RM06_5)
= 0

c_u_C_DUE1_TardyEpigraph(O001_O001_L1_Assembly)_:
-1 Tardy(O001)
+0.041666666666666664 Finish(O001_L1_Assembly)
<= 2.0

c_u_C_DUE1_TardyEpigraph(O002_O002_L1_Assembly)_:
-1 Tardy(O002)
+0.041666666666666664 Finish(O002_L1_Assembly)
<= 2.0

c_u_C_DUE1_TardyEpigraph(O003_O003_L1_Assembly)_:
-1 Tardy(O003)
+0.041666666666666664 Finish(O003_L1_Assembly)
<= 3.0

c_u_C_DUE1_TardyEpigraph(O004_O004_L1_Assembly)_:
-1 Tardy(O004)
+0.041666666666666664 Finish(O004_L1_Assembly)
<= 2.0

c_u_C_DUE1_TardyEpigraph(O004_O004_L2_Assembly)_:
-1 Tardy(O004)
+0.041666666666666664 Finish(O004_L2_Assembly)
<= 2.0

c_u_C_DUE1_TardyEpigraph(O005_O005_L1_Assembly)_:
-1 Tardy(O005)
+0.041666666666666664 Finish(O005_L1_Assembly)
<= 2.0

c_u_C_DUE1_TardyEpigraph(O006_O006_L1_Assembly)_:
-1 Tardy(O006)
+0.041666666666666664 Finish(O006_L1_Assembly)
<= 3.0

bounds
   0 <= Assign(O001_L1_Cutting_M03) <= 1
   0 <= Assign(O001_L1_Assembly_M02) <= 1
   0 <= Assign(O002_L1_Cutting_M01) <= 1
   0 <= Assign(O002_L1_Assembly_M02) <= 1
   0 <= Assign(O003_L1_Cutting_M01) <= 1
   0 <= Assign(O003_L1_Assembly_M02) <= 1
   0 <= Assign(O004_L1_Cutting_M01) <= 1
   0 <= Assign(O004_L1_Assembly_M02) <= 1
   0 <= Assign(O004_L2_Cutting_M01) <= 1
   0 <= Assign(O004_L2_Assembly_M02) <= 1
   0 <= Assign(O005_L1_Cutting_M01) <= 1
   0 <= Assign(O005_L1_Assembly_M02) <= 1
   0 <= Assign(O006_L1_Cutting_M01) <= 1
   0 <= Assign(O006_L1_Assembly_M02) <= 1
   0 <= SetupOccurs(O002_L1_Cutting_O003_L1_Cutting) <= 1
   0 <= SetupOccurs(O003_L1_Cutting_O002_L1_Cutting) <= 1
   0 <= SetupOccurs(O003_L1_Cutting_O004_L1_Cutting) <= 1
   0 <= SetupOccurs(O004_L1_Cutting_O003_L1_Cutting) <= 1
   0 <= SetupOccurs(O003_L1_Cutting_O004_L2_Cutting) <= 1
   0 <= SetupOccurs(O004_L2_Cutting_O003_L1_Cutting) <= 1
   0 <= SetupOccurs(O003_L1_Cutting_O005_L1_Cutting) <= 1
   0 <= SetupOccurs(O005_L1_Cutting_O003_L1_Cutting) <= 1
   0 <= SetupOccurs(O003_L1_Cutting_O006_L1_Cutting) <= 1
   0 <= SetupOccurs(O006_L1_Cutting_O003_L1_Cutting) <= 1
   0 <= SetupOccurs(O001_L1_Assembly_O002_L1_Assembly) <= 1
   0 <= SetupOccurs(O002_L1_Assembly_O001_L1_Assembly) <= 1
   0 <= SetupOccurs(O001_L1_Assembly_O003_L1_Assembly) <= 1
   0 <= SetupOccurs(O003_L1_Assembly_O001_L1_Assembly) <= 1
   0 <= SetupOccurs(O001_L1_Assembly_O004_L1_Assembly) <= 1
   0 <= SetupOccurs(O004_L1_Assembly_O001_L1_Assembly) <= 1
   0 <= SetupOccurs(O001_L1_Assembly_O004_L2_Assembly) <= 1
   0 <= SetupOccurs(O004_L2_Assembly_O001_L1_Assembly) <= 1
   0 <= SetupOccurs(O001_L1_Assembly_O005_L1_Assembly) <= 1
   0 <= SetupOccurs(O005_L1_Assembly_O001_L1_Assembly) <= 1
   0 <= SetupOccurs(O001_L1_Assembly_O006_L1_Assembly) <= 1
   0 <= SetupOccurs(O006_L1_Assembly_O001_L1_Assembly) <= 1
   0 <= SetupOccurs(O002_L1_Assembly_O003_L1_Assembly) <= 1
   0 <= SetupOccurs(O003_L1_Assembly_O002_L1_Assembly) <= 1
   0 <= SetupOccurs(O003_L1_Assembly_O004_L1_Assembly) <= 1
   0 <= SetupOccurs(O004_L1_Assembly_O003_L1_Assembly) <= 1
   0 <= SetupOccurs(O003_L1_Assembly_O004_L2_Assembly) <= 1
   0 <= SetupOccurs(O004_L2_Assembly_O003_L1_Assembly) <= 1
   0 <= SetupOccurs(O003_L1_Assembly_O005_L1_Assembly) <= 1
   0 <= SetupOccurs(O005_L1_Assembly_O003_L1_Assembly) <= 1
   0 <= SetupOccurs(O003_L1_Assembly_O006_L1_Assembly) <= 1
   0 <= SetupOccurs(O006_L1_Assembly_O003_L1_Assembly) <= 1
   0 <= Inv(P01_1) <= +inf
   0 <= Inv(P01_2) <= +inf
   0 <= Inv(P01_3) <= +inf
   0 <= Inv(P01_4) <= +inf
   0 <= Inv(P01_5) <= +inf
   0 <= Inv(P02_1) <= +inf
   0 <= Inv(P02_2) <= +inf
   0 <= Inv(P02_3) <= +inf
   0 <= Inv(P02_4) <= +inf
   0 <= Inv(P02_5) <= +inf
   0 <= Inv(P03_1) <= +inf
   0 <= Inv(P03_2) <= +inf
   0 <= Inv(P03_3) <= +inf
   0 <= Inv(P03_4) <= +inf
   0 <= Inv(P03_5) <= +inf
   0 <= Inv(P04_1) <= +inf
   0 <= Inv(P04_2) <= +inf
   0 <= Inv(P04_3) <= +inf
   0 <= Inv(P04_4) <= +inf
   0 <= Inv(P04_5) <= +inf
   0 <= Tardy(O001) <= +inf
   0 <= Tardy(O002) <= +inf
   0 <= Tardy(O003) <= +inf
   0 <= Tardy(O004) <= +inf
   0 <= Tardy(O005) <= +inf
   0 <= Tardy(O006) <= +inf
   0 <= Active(P01_M01) <= 1
   0 <= Active(P01_M02) <= 1
   0 <= Active(P02_M02) <= 1
   0 <= Active(P02_M03) <= 1
   0 <= Active(P03_M01) <= 1
   0 <= Active(P03_M02) <= 1
   0 <= Overtime(M01_1) <= +inf
   0 <= Overtime(M01_2) <= +inf
   0 <= Overtime(M01_3) <= +inf
   0 <= Overtime(M01_4) <= +inf
   0 <= Overtime(M01_5) <= +inf
   0 <= Overtime(M02_1) <= +inf
   0 <= Overtime(M02_2) <= +inf
   0 <= Overtime(M02_3) <= +inf
   0 <= Overtime(M02_4) <= +inf
   0 <= Overtime(M02_5) <= +inf
   0 <= Overtime(M03_1) <= +inf
   0 <= Overtime(M03_2) <= +inf
   0 <= Overtime(M03_3) <= +inf
   0 <= Overtime(M03_4) <= +inf
   0 <= Overtime(M03_5) <= +inf
   0 <= Finish(O001_L1_Cutting) <= 120.0
   0 <= Finish(O001_L1_Assembly) <= 120.0
   0 <= Finish(O002_L1_Cutting) <= 120.0
   0 <= Finish(O002_L1_Assembly) <= 120.0
   0 <= Finish(O003_L1_Cutting) <= 120.0
   0 <= Finish(O003_L1_Assembly) <= 120.0
   0 <= Finish(O004_L1_Cutting) <= 120.0
   0 <= Finish(O004_L1_Assembly) <= 120.0
   0 <= Finish(O004_L2_Cutting) <= 120.0
   0 <= Finish(O004_L2_Assembly) <= 120.0
   0 <= Finish(O005_L1_Cutting) <= 120.0
   0 <= Finish(O005_L1_Assembly) <= 120.0
   0 <= Finish(O006_L1_Cutting) <= 120.0
   0 <= Finish(O006_L1_Assembly) <= 120.0
   0 <= Start(O001_L1_Cutting) <= 120.0
   0 <= Start(O001_L1_Assembly) <= 120.0
   0 <= Start(O002_L1_Cutting) <= 120.0
   0 <= Start(O002_L1_Assembly) <= 120.0
   0 <= Start(O003_L1_Cutting) <= 120.0
   0 <= Start(O003_L1_Assembly) <= 120.0
   0 <= Start(O004_L1_Cutting) <= 120.0
   0 <= Start(O004_L1_Assembly) <= 120.0
   0 <= Start(O004_L2_Cutting) <= 120.0
   0 <= Start(O004_L2_Assembly) <= 120.0
   0 <= Start(O005_L1_Cutting) <= 120.0
   0 <= Start(O005_L1_Assembly) <= 120.0
   0 <= Start(O006_L1_Cutting) <= 120.0
   0 <= Start(O006_L1_Assembly) <= 120.0
   0 <= Seq(O002_L1_Cutting_O003_L1_Cutting) <= 1
   0 <= Seq(O003_L1_Cutting_O002_L1_Cutting) <= 1
   0 <= Seq(O002_L1_Cutting_O004_L1_Cutting) <= 1
   0 <= Seq(O004_L1_Cutting_O002_L1_Cutting) <= 1
   0 <= Seq(O002_L1_Cutting_O004_L2_Cutting) <= 1
   0 <= Seq(O004_L2_Cutting_O002_L1_Cutting) <= 1
   0 <= Seq(O002_L1_Cutting_O005_L1_Cutting) <= 1
   0 <= Seq(O005_L1_Cutting_O002_L1_Cutting) <= 1
   0 <= Seq(O002_L1_Cutting_O006_L1_Cutting) <= 1
   0 <= Seq(O006_L1_Cutting_O002_L1_Cutting) <= 1
   0 <= Seq(O003_L1_Cutting_O004_L1_Cutting) <= 1
   0 <= Seq(O004_L1_Cutting_O003_L1_Cutting) <= 1
   0 <= Seq(O003_L1_Cutting_O004_L2_Cutting) <= 1
   0 <= Seq(O004_L2_Cutting_O003_L1_Cutting) <= 1
   0 <= Seq(O003_L1_Cutting_O005_L1_Cutting) <= 1
   0 <= Seq(O005_L1_Cutting_O003_L1_Cutting) <= 1
   0 <= Seq(O003_L1_Cutting_O006_L1_Cutting) <= 1
   0 <= Seq(O006_L1_Cutting_O003_L1_Cutting) <= 1
   0 <= Seq(O004_L1_Cutting_O004_L2_Cutting) <= 1
   0 <= Seq(O004_L2_Cutting_O004_L1_Cutting) <= 1
   0 <= Seq(O004_L1_Cutting_O005_L1_Cutting) <= 1
   0 <= Seq(O005_L1_Cutting_O004_L1_Cutting) <= 1
   0 <= Seq(O004_L1_Cutting_O006_L1_Cutting) <= 1
   0 <= Seq(O006_L1_Cutting_O004_L1_Cutting) <= 1
   0 <= Seq(O004_L2_Cutting_O005_L1_Cutting) <= 1
   0 <= Seq(O005_L1_Cutting_O004_L2_Cutting) <= 1
   0 <= Seq(O004_L2_Cutting_O006_L1_Cutting) <= 1
   0 <= Seq(O006_L1_Cutting_O004_L2_Cutting) <= 1
   0 <= Seq(O005_L1_Cutting_O006_L1_Cutting) <= 1
   0 <= Seq(O006_L1_Cutting_O005_L1_Cutting) <= 1
   0 <= Seq(O001_L1_Assembly_O002_L1_Assembly) <= 1
   0 <= Seq(O002_L1_Assembly_O001_L1_Assembly) <= 1
   0 <= Seq(O001_L1_Assembly_O003_L1_Assembly) <= 1
   0 <= Seq(O003_L1_Assembly_O001_L1_Assembly) <= 1
   0 <= Seq(O001_L1_Assembly_O004_L1_Assembly) <= 1
   0 <= Seq(O004_L1_Assembly_O001_L1_Assembly) <= 1
   0 <= Seq(O001_L1_Assembly_O004_L2_Assembly) <= 1
   0 <= Seq(O004_L2_Assembly_O001_L1_Assembly) <= 1
   0 <= Seq(O001_L1_Assembly_O005_L1_Assembly) <= 1
   0 <= Seq(O005_L1_Assembly_O001_L1_Assembly) <= 1
   0 <= Seq(O001_L1_Assembly_O006_L1_Assembly) <= 1
   0 <= Seq(O006_L1_Assembly_O001_L1_Assembly) <= 1
   0 <= Seq(O002_L1_Assembly_O003_L1_Assembly) <= 1
   0 <= Seq(O003_L1_Assembly_O002_L1_Assembly) <= 1
   0 <= Seq(O002_L1_Assembly_O004_L1_Assembly) <= 1
   0 <= Seq(O004_L1_Assembly_O002_L1_Assembly) <= 1
   0 <= Seq(O002_L1_Assembly_O004_L2_Assembly) <= 1
   0 <= Seq(O004_L2_Assembly_O002_L1_Assembly) <= 1
   0 <= Seq(O002_L1_Assembly_O005_L1_Assembly) <= 1
   0 <= Seq(O005_L1_Assembly_O002_L1_Assembly) <= 1
   0 <= Seq(O002_L1_Assembly_O006_L1_Assembly) <= 1
   0 <= Seq(O006_L1_Assembly_O002_L1_Assembly) <= 1
   0 <= Seq(O003_L1_Assembly_O004_L1_Assembly) <= 1
   0 <= Seq(O004_L1_Assembly_O003_L1_Assembly) <= 1
   0 <= Seq(O003_L1_Assembly_O004_L2_Assembly) <= 1
   0 <= Seq(O004_L2_Assembly_O003_L1_Assembly) <= 1
   0 <= Seq(O003_L1_Assembly_O005_L1_Assembly) <= 1
   0 <= Seq(O005_L1_Assembly_O003_L1_Assembly) <= 1
   0 <= Seq(O003_L1_Assembly_O006_L1_Assembly) <= 1
   0 <= Seq(O006_L1_Assembly_O003_L1_Assembly) <= 1
   0 <= Seq(O004_L1_Assembly_O004_L2_Assembly) <= 1
   0 <= Seq(O004_L2_Assembly_O004_L1_Assembly) <= 1
   0 <= Seq(O004_L1_Assembly_O005_L1_Assembly) <= 1
   0 <= Seq(O005_L1_Assembly_O004_L1_Assembly) <= 1
   0 <= Seq(O004_L1_Assembly_O006_L1_Assembly) <= 1
   0 <= Seq(O006_L1_Assembly_O004_L1_Assembly) <= 1
   0 <= Seq(O004_L2_Assembly_O005_L1_Assembly) <= 1
   0 <= Seq(O005_L1_Assembly_O004_L2_Assembly) <= 1
   0 <= Seq(O004_L2_Assembly_O006_L1_Assembly) <= 1
   0 <= Seq(O006_L1_Assembly_O004_L2_Assembly) <= 1
   0 <= Seq(O005_L1_Assembly_O006_L1_Assembly) <= 1
   0 <= Seq(O006_L1_Assembly_O005_L1_Assembly) <= 1
   0 <= Makespan <= 120.0
   0 <= ShiftAssign(O001_L1_Cutting_D1_Morning) <= 1
   0 <= ShiftAssign(O001_L1_Cutting_D1_Afternoon) <= 1
   0 <= ShiftAssign(O001_L1_Cutting_D1_Night) <= 1
   0 <= ShiftAssign(O001_L1_Cutting_D2_Morning) <= 1
   0 <= ShiftAssign(O001_L1_Cutting_D2_Afternoon) <= 1
   0 <= ShiftAssign(O001_L1_Cutting_D2_Night) <= 1
   0 <= ShiftAssign(O001_L1_Cutting_D3_Morning) <= 1
   0 <= ShiftAssign(O001_L1_Cutting_D3_Afternoon) <= 1
   0 <= ShiftAssign(O001_L1_Cutting_D3_Night) <= 1
   0 <= ShiftAssign(O001_L1_Cutting_D4_Morning) <= 1
   0 <= ShiftAssign(O001_L1_Cutting_D4_Afternoon) <= 1
   0 <= ShiftAssign(O001_L1_Cutting_D4_Night) <= 1
   0 <= ShiftAssign(O001_L1_Cutting_D5_Morning) <= 1
   0 <= ShiftAssign(O001_L1_Cutting_D5_Afternoon) <= 1
   0 <= ShiftAssign(O001_L1_Cutting_D5_Night) <= 1
   0 <= ShiftAssign(O001_L1_Assembly_D1_Morning) <= 1
   0 <= ShiftAssign(O001_L1_Assembly_D1_Afternoon) <= 1
   0 <= ShiftAssign(O001_L1_Assembly_D1_Night) <= 1
   0 <= ShiftAssign(O001_L1_Assembly_D2_Morning) <= 1
   0 <= ShiftAssign(O001_L1_Assembly_D2_Afternoon) <= 1
   0 <= ShiftAssign(O001_L1_Assembly_D2_Night) <= 1
   0 <= ShiftAssign(O001_L1_Assembly_D3_Morning) <= 1
   0 <= ShiftAssign(O001_L1_Assembly_D3_Afternoon) <= 1
   0 <= ShiftAssign(O001_L1_Assembly_D3_Night) <= 1
   0 <= ShiftAssign(O001_L1_Assembly_D4_Morning) <= 1
   0 <= ShiftAssign(O001_L1_Assembly_D4_Afternoon) <= 1
   0 <= ShiftAssign(O001_L1_Assembly_D4_Night) <= 1
   0 <= ShiftAssign(O001_L1_Assembly_D5_Morning) <= 1
   0 <= ShiftAssign(O001_L1_Assembly_D5_Afternoon) <= 1
   0 <= ShiftAssign(O001_L1_Assembly_D5_Night) <= 1
   0 <= ShiftAssign(O002_L1_Cutting_D1_Morning) <= 1
   0 <= ShiftAssign(O002_L1_Cutting_D1_Afternoon) <= 1
   0 <= ShiftAssign(O002_L1_Cutting_D1_Night) <= 1
   0 <= ShiftAssign(O002_L1_Cutting_D2_Morning) <= 1
   0 <= ShiftAssign(O002_L1_Cutting_D2_Afternoon) <= 1
   0 <= ShiftAssign(O002_L1_Cutting_D2_Night) <= 1
   0 <= ShiftAssign(O002_L1_Cutting_D3_Morning) <= 1
   0 <= ShiftAssign(O002_L1_Cutting_D3_Afternoon) <= 1
   0 <= ShiftAssign(O002_L1_Cutting_D3_Night) <= 1
   0 <= ShiftAssign(O002_L1_Cutting_D4_Morning) <= 1
   0 <= ShiftAssign(O002_L1_Cutting_D4_Afternoon) <= 1
   0 <= ShiftAssign(O002_L1_Cutting_D4_Night) <= 1
   0 <= ShiftAssign(O002_L1_Cutting_D5_Morning) <= 1
   0 <= ShiftAssign(O002_L1_Cutting_D5_Afternoon) <= 1
   0 <= ShiftAssign(O002_L1_Cutting_D5_Night) <= 1
   0 <= ShiftAssign(O002_L1_Assembly_D1_Morning) <= 1
   0 <= ShiftAssign(O002_L1_Assembly_D1_Afternoon) <= 1
   0 <= ShiftAssign(O002_L1_Assembly_D1_Night) <= 1
   0 <= ShiftAssign(O002_L1_Assembly_D2_Morning) <= 1
   0 <= ShiftAssign(O002_L1_Assembly_D2_Afternoon) <= 1
   0 <= ShiftAssign(O002_L1_Assembly_D2_Night) <= 1
   0 <= ShiftAssign(O002_L1_Assembly_D3_Morning) <= 1
   0 <= ShiftAssign(O002_L1_Assembly_D3_Afternoon) <= 1
   0 <= ShiftAssign(O002_L1_Assembly_D3_Night) <= 1
   0 <= ShiftAssign(O002_L1_Assembly_D4_Morning) <= 1
   0 <= ShiftAssign(O002_L1_Assembly_D4_Afternoon) <= 1
   0 <= ShiftAssign(O002_L1_Assembly_D4_Night) <= 1
   0 <= ShiftAssign(O002_L1_Assembly_D5_Morning) <= 1
   0 <= ShiftAssign(O002_L1_Assembly_D5_Afternoon) <= 1
   0 <= ShiftAssign(O002_L1_Assembly_D5_Night) <= 1
   0 <= ShiftAssign(O003_L1_Cutting_D1_Morning) <= 1
   0 <= ShiftAssign(O003_L1_Cutting_D1_Afternoon) <= 1
   0 <= ShiftAssign(O003_L1_Cutting_D1_Night) <= 1
   0 <= ShiftAssign(O003_L1_Cutting_D2_Morning) <= 1
   0 <= ShiftAssign(O003_L1_Cutting_D2_Afternoon) <= 1
   0 <= ShiftAssign(O003_L1_Cutting_D2_Night) <= 1
   0 <= ShiftAssign(O003_L1_Cutting_D3_Morning) <= 1
   0 <= ShiftAssign(O003_L1_Cutting_D3_Afternoon) <= 1
   0 <= ShiftAssign(O003_L1_Cutting_D3_Night) <= 1
   0 <= ShiftAssign(O003_L1_Cutting_D4_Morning) <= 1
   0 <= ShiftAssign(O003_L1_Cutting_D4_Afternoon) <= 1
   0 <= ShiftAssign(O003_L1_Cutting_D4_Night) <= 1
   0 <= ShiftAssign(O003_L1_Cutting_D5_Morning) <= 1
   0 <= ShiftAssign(O003_L1_Cutting_D5_Afternoon) <= 1
   0 <= ShiftAssign(O003_L1_Cutting_D5_Night) <= 1
   0 <= ShiftAssign(O003_L1_Assembly_D1_Morning) <= 1
   0 <= ShiftAssign(O003_L1_Assembly_D1_Afternoon) <= 1
   0 <= ShiftAssign(O003_L1_Assembly_D1_Night) <= 1
   0 <= ShiftAssign(O003_L1_Assembly_D2_Morning) <= 1
   0 <= ShiftAssign(O003_L1_Assembly_D2_Afternoon) <= 1
   0 <= ShiftAssign(O003_L1_Assembly_D2_Night) <= 1
   0 <= ShiftAssign(O003_L1_Assembly_D3_Morning) <= 1
   0 <= ShiftAssign(O003_L1_Assembly_D3_Afternoon) <= 1
   0 <= ShiftAssign(O003_L1_Assembly_D3_Night) <= 1
   0 <= ShiftAssign(O003_L1_Assembly_D4_Morning) <= 1
   0 <= ShiftAssign(O003_L1_Assembly_D4_Afternoon) <= 1
   0 <= ShiftAssign(O003_L1_Assembly_D4_Night) <= 1
   0 <= ShiftAssign(O003_L1_Assembly_D5_Morning) <= 1
   0 <= ShiftAssign(O003_L1_Assembly_D5_Afternoon) <= 1
   0 <= ShiftAssign(O003_L1_Assembly_D5_Night) <= 1
   0 <= ShiftAssign(O004_L1_Cutting_D1_Morning) <= 1
   0 <= ShiftAssign(O004_L1_Cutting_D1_Afternoon) <= 1
   0 <= ShiftAssign(O004_L1_Cutting_D1_Night) <= 1
   0 <= ShiftAssign(O004_L1_Cutting_D2_Morning) <= 1
   0 <= ShiftAssign(O004_L1_Cutting_D2_Afternoon) <= 1
   0 <= ShiftAssign(O004_L1_Cutting_D2_Night) <= 1
   0 <= ShiftAssign(O004_L1_Cutting_D3_Morning) <= 1
   0 <= ShiftAssign(O004_L1_Cutting_D3_Afternoon) <= 1
   0 <= ShiftAssign(O004_L1_Cutting_D3_Night) <= 1
   0 <= ShiftAssign(O004_L1_Cutting_D4_Morning) <= 1
   0 <= ShiftAssign(O004_L1_Cutting_D4_Afternoon) <= 1
   0 <= ShiftAssign(O004_L1_Cutting_D4_Night) <= 1
   0 <= ShiftAssign(O004_L1_Cutting_D5_Morning) <= 1
   0 <= ShiftAssign(O004_L1_Cutting_D5_Afternoon) <= 1
   0 <= ShiftAssign(O004_L1_Cutting_D5_Night) <= 1
   0 <= ShiftAssign(O004_L1_Assembly_D1_Morning) <= 1
   0 <= ShiftAssign(O004_L1_Assembly_D1_Afternoon) <= 1
   0 <= ShiftAssign(O004_L1_Assembly_D1_Night) <= 1
   0 <= ShiftAssign(O004_L1_Assembly_D2_Morning) <= 1
   0 <= ShiftAssign(O004_L1_Assembly_D2_Afternoon) <= 1
   0 <= ShiftAssign(O004_L1_Assembly_D2_Night) <= 1
   0 <= ShiftAssign(O004_L1_Assembly_D3_Morning) <= 1
   0 <= ShiftAssign(O004_L1_Assembly_D3_Afternoon) <= 1
   0 <= ShiftAssign(O004_L1_Assembly_D3_Night) <= 1
   0 <= ShiftAssign(O004_L1_Assembly_D4_Morning) <= 1
   0 <= ShiftAssign(O004_L1_Assembly_D4_Afternoon) <= 1
   0 <= ShiftAssign(O004_L1_Assembly_D4_Night) <= 1
   0 <= ShiftAssign(O004_L1_Assembly_D5_Morning) <= 1
   0 <= ShiftAssign(O004_L1_Assembly_D5_Afternoon) <= 1
   0 <= ShiftAssign(O004_L1_Assembly_D5_Night) <= 1
   0 <= ShiftAssign(O004_L2_Cutting_D1_Morning) <= 1
   0 <= ShiftAssign(O004_L2_Cutting_D1_Afternoon) <= 1
   0 <= ShiftAssign(O004_L2_Cutting_D1_Night) <= 1
   0 <= ShiftAssign(O004_L2_Cutting_D2_Morning) <= 1
   0 <= ShiftAssign(O004_L2_Cutting_D2_Afternoon) <= 1
   0 <= ShiftAssign(O004_L2_Cutting_D2_Night) <= 1
   0 <= ShiftAssign(O004_L2_Cutting_D3_Morning) <= 1
   0 <= ShiftAssign(O004_L2_Cutting_D3_Afternoon) <= 1
   0 <= ShiftAssign(O004_L2_Cutting_D3_Night) <= 1
   0 <= ShiftAssign(O004_L2_Cutting_D4_Morning) <= 1
   0 <= ShiftAssign(O004_L2_Cutting_D4_Afternoon) <= 1
   0 <= ShiftAssign(O004_L2_Cutting_D4_Night) <= 1
   0 <= ShiftAssign(O004_L2_Cutting_D5_Morning) <= 1
   0 <= ShiftAssign(O004_L2_Cutting_D5_Afternoon) <= 1
   0 <= ShiftAssign(O004_L2_Cutting_D5_Night) <= 1
   0 <= ShiftAssign(O004_L2_Assembly_D1_Morning) <= 1
   0 <= ShiftAssign(O004_L2_Assembly_D1_Afternoon) <= 1
   0 <= ShiftAssign(O004_L2_Assembly_D1_Night) <= 1
   0 <= ShiftAssign(O004_L2_Assembly_D2_Morning) <= 1
   0 <= ShiftAssign(O004_L2_Assembly_D2_Afternoon) <= 1
   0 <= ShiftAssign(O004_L2_Assembly_D2_Night) <= 1
   0 <= ShiftAssign(O004_L2_Assembly_D3_Morning) <= 1
   0 <= ShiftAssign(O004_L2_Assembly_D3_Afternoon) <= 1
   0 <= ShiftAssign(O004_L2_Assembly_D3_Night) <= 1
   0 <= ShiftAssign(O004_L2_Assembly_D4_Morning) <= 1
   0 <= ShiftAssign(O004_L2_Assembly_D4_Afternoon) <= 1
   0 <= ShiftAssign(O004_L2_Assembly_D4_Night) <= 1
   0 <= ShiftAssign(O004_L2_Assembly_D5_Morning) <= 1
   0 <= ShiftAssign(O004_L2_Assembly_D5_Afternoon) <= 1
   0 <= ShiftAssign(O004_L2_Assembly_D5_Night) <= 1
   0 <= ShiftAssign(O005_L1_Cutting_D1_Morning) <= 1
   0 <= ShiftAssign(O005_L1_Cutting_D1_Afternoon) <= 1
   0 <= ShiftAssign(O005_L1_Cutting_D1_Night) <= 1
   0 <= ShiftAssign(O005_L1_Cutting_D2_Morning) <= 1
   0 <= ShiftAssign(O005_L1_Cutting_D2_Afternoon) <= 1
   0 <= ShiftAssign(O005_L1_Cutting_D2_Night) <= 1
   0 <= ShiftAssign(O005_L1_Cutting_D3_Morning) <= 1
   0 <= ShiftAssign(O005_L1_Cutting_D3_Afternoon) <= 1
   0 <= ShiftAssign(O005_L1_Cutting_D3_Night) <= 1
   0 <= ShiftAssign(O005_L1_Cutting_D4_Morning) <= 1
   0 <= ShiftAssign(O005_L1_Cutting_D4_Afternoon) <= 1
   0 <= ShiftAssign(O005_L1_Cutting_D4_Night) <= 1
   0 <= ShiftAssign(O005_L1_Cutting_D5_Morning) <= 1
   0 <= ShiftAssign(O005_L1_Cutting_D5_Afternoon) <= 1
   0 <= ShiftAssign(O005_L1_Cutting_D5_Night) <= 1
   0 <= ShiftAssign(O005_L1_Assembly_D1_Morning) <= 1
   0 <= ShiftAssign(O005_L1_Assembly_D1_Afternoon) <= 1
   0 <= ShiftAssign(O005_L1_Assembly_D1_Night) <= 1
   0 <= ShiftAssign(O005_L1_Assembly_D2_Morning) <= 1
   0 <= ShiftAssign(O005_L1_Assembly_D2_Afternoon) <= 1
   0 <= ShiftAssign(O005_L1_Assembly_D2_Night) <= 1
   0 <= ShiftAssign(O005_L1_Assembly_D3_Morning) <= 1
   0 <= ShiftAssign(O005_L1_Assembly_D3_Afternoon) <= 1
   0 <= ShiftAssign(O005_L1_Assembly_D3_Night) <= 1
   0 <= ShiftAssign(O005_L1_Assembly_D4_Morning) <= 1
   0 <= ShiftAssign(O005_L1_Assembly_D4_Afternoon) <= 1
   0 <= ShiftAssign(O005_L1_Assembly_D4_Night) <= 1
   0 <= ShiftAssign(O005_L1_Assembly_D5_Morning) <= 1
   0 <= ShiftAssign(O005_L1_Assembly_D5_Afternoon) <= 1
   0 <= ShiftAssign(O005_L1_Assembly_D5_Night) <= 1
   0 <= ShiftAssign(O006_L1_Cutting_D1_Morning) <= 1
   0 <= ShiftAssign(O006_L1_Cutting_D1_Afternoon) <= 1
   0 <= ShiftAssign(O006_L1_Cutting_D1_Night) <= 1
   0 <= ShiftAssign(O006_L1_Cutting_D2_Morning) <= 1
   0 <= ShiftAssign(O006_L1_Cutting_D2_Afternoon) <= 1
   0 <= ShiftAssign(O006_L1_Cutting_D2_Night) <= 1
   0 <= ShiftAssign(O006_L1_Cutting_D3_Morning) <= 1
   0 <= ShiftAssign(O006_L1_Cutting_D3_Afternoon) <= 1
   0 <= ShiftAssign(O006_L1_Cutting_D3_Night) <= 1
   0 <= ShiftAssign(O006_L1_Cutting_D4_Morning) <= 1
   0 <= ShiftAssign(O006_L1_Cutting_D4_Afternoon) <= 1
   0 <= ShiftAssign(O006_L1_Cutting_D4_Night) <= 1
   0 <= ShiftAssign(O006_L1_Cutting_D5_Morning) <= 1
   0 <= ShiftAssign(O006_L1_Cutting_D5_Afternoon) <= 1
   0 <= ShiftAssign(O006_L1_Cutting_D5_Night) <= 1
   0 <= ShiftAssign(O006_L1_Assembly_D1_Morning) <= 1
   0 <= ShiftAssign(O006_L1_Assembly_D1_Afternoon) <= 1
   0 <= ShiftAssign(O006_L1_Assembly_D1_Night) <= 1
   0 <= ShiftAssign(O006_L1_Assembly_D2_Morning) <= 1
   0 <= ShiftAssign(O006_L1_Assembly_D2_Afternoon) <= 1
   0 <= ShiftAssign(O006_L1_Assembly_D2_Night) <= 1
   0 <= ShiftAssign(O006_L1_Assembly_D3_Morning) <= 1
   0 <= ShiftAssign(O006_L1_Assembly_D3_Afternoon) <= 1
   0 <= ShiftAssign(O006_L1_Assembly_D3_Night) <= 1
   0 <= ShiftAssign(O006_L1_Assembly_D4_Morning) <= 1
   0 <= ShiftAssign(O006_L1_Assembly_D4_Afternoon) <= 1
   0 <= ShiftAssign(O006_L1_Assembly_D4_Night) <= 1
   0 <= ShiftAssign(O006_L1_Assembly_D5_Morning) <= 1
   0 <= ShiftAssign(O006_L1_Assembly_D5_Afternoon) <= 1
   0 <= ShiftAssign(O006_L1_Assembly_D5_Night) <= 1
   0 <= OpAssign(O001_L1_Cutting_OP02) <= 1
   0 <= OpAssign(O001_L1_Cutting_OP03) <= 1
   0 <= OpAssign(O001_L1_Cutting_OP04) <= 1
   0 <= OpAssign(O001_L1_Assembly_OP01) <= 1
   0 <= OpAssign(O001_L1_Assembly_OP02) <= 1
   0 <= OpAssign(O001_L1_Assembly_OP04) <= 1
   0 <= OpAssign(O002_L1_Cutting_OP01) <= 1
   0 <= OpAssign(O002_L1_Cutting_OP03) <= 1
   0 <= OpAssign(O002_L1_Cutting_OP04) <= 1
   0 <= OpAssign(O002_L1_Assembly_OP01) <= 1
   0 <= OpAssign(O002_L1_Assembly_OP02) <= 1
   0 <= OpAssign(O002_L1_Assembly_OP04) <= 1
   0 <= OpAssign(O003_L1_Cutting_OP01) <= 1
   0 <= OpAssign(O003_L1_Cutting_OP03) <= 1
   0 <= OpAssign(O003_L1_Cutting_OP04) <= 1
   0 <= OpAssign(O003_L1_Assembly_OP01) <= 1
   0 <= OpAssign(O003_L1_Assembly_OP02) <= 1
   0 <= OpAssign(O003_L1_Assembly_OP04) <= 1
   0 <= OpAssign(O004_L1_Cutting_OP01) <= 1
   0 <= OpAssign(O004_L1_Cutting_OP03) <= 1
   0 <= OpAssign(O004_L1_Cutting_OP04) <= 1
   0 <= OpAssign(O004_L1_Assembly_OP01) <= 1
   0 <= OpAssign(O004_L1_Assembly_OP02) <= 1
   0 <= OpAssign(O004_L1_Assembly_OP04) <= 1
   0 <= OpAssign(O004_L2_Cutting_OP01) <= 1
   0 <= OpAssign(O004_L2_Cutting_OP03) <= 1
   0 <= OpAssign(O004_L2_Cutting_OP04) <= 1
   0 <= OpAssign(O004_L2_Assembly_OP01) <= 1
   0 <= OpAssign(O004_L2_Assembly_OP02) <= 1
   0 <= OpAssign(O004_L2_Assembly_OP04) <= 1
   0 <= OpAssign(O005_L1_Cutting_OP01) <= 1
   0 <= OpAssign(O005_L1_Cutting_OP03) <= 1
   0 <= OpAssign(O005_L1_Cutting_OP04) <= 1
   0 <= OpAssign(O005_L1_Assembly_OP01) <= 1
   0 <= OpAssign(O005_L1_Assembly_OP02) <= 1
   0 <= OpAssign(O005_L1_Assembly_OP04) <= 1
   0 <= OpAssign(O006_L1_Cutting_OP01) <= 1
   0 <= OpAssign(O006_L1_Cutting_OP03) <= 1
   0 <= OpAssign(O006_L1_Cutting_OP04) <= 1
   0 <= OpAssign(O006_L1_Assembly_OP01) <= 1
   0 <= OpAssign(O006_L1_Assembly_OP02) <= 1
   0 <= OpAssign(O006_L1_Assembly_OP04) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP02_D1_Morning) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP02_D1_Afternoon) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP02_D1_Night) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP02_D2_Morning) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP02_D2_Afternoon) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP02_D2_Night) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP02_D3_Morning) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP02_D3_Afternoon) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP02_D3_Night) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP02_D4_Morning) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP02_D4_Afternoon) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP02_D4_Night) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP02_D5_Morning) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP02_D5_Afternoon) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP02_D5_Night) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP03_D1_Morning) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP03_D1_Afternoon) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP03_D1_Night) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP03_D2_Morning) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP03_D2_Afternoon) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP03_D2_Night) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP03_D3_Morning) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP03_D3_Afternoon) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP03_D3_Night) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP03_D4_Morning) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP03_D4_Afternoon) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP03_D4_Night) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP03_D5_Morning) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP03_D5_Afternoon) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP03_D5_Night) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP04_D1_Morning) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP04_D1_Afternoon) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP04_D1_Night) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP04_D2_Morning) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP04_D2_Afternoon) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP04_D2_Night) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP04_D3_Morning) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP04_D3_Afternoon) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP04_D3_Night) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP04_D4_Morning) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP04_D4_Afternoon) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP04_D4_Night) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP04_D5_Morning) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP04_D5_Afternoon) <= 1
   0 <= OpInShift(O001_L1_Cutting_OP04_D5_Night) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP01_D1_Morning) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP01_D1_Afternoon) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP01_D1_Night) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP01_D2_Morning) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP01_D2_Afternoon) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP01_D2_Night) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP01_D3_Morning) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP01_D3_Afternoon) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP01_D3_Night) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP01_D4_Morning) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP01_D4_Afternoon) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP01_D4_Night) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP01_D5_Morning) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP01_D5_Afternoon) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP01_D5_Night) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP02_D1_Morning) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP02_D1_Afternoon) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP02_D1_Night) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP02_D2_Morning) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP02_D2_Afternoon) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP02_D2_Night) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP02_D3_Morning) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP02_D3_Afternoon) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP02_D3_Night) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP02_D4_Morning) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP02_D4_Afternoon) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP02_D4_Night) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP02_D5_Morning) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP02_D5_Afternoon) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP02_D5_Night) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP04_D1_Morning) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP04_D1_Afternoon) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP04_D1_Night) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP04_D2_Morning) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP04_D2_Afternoon) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP04_D2_Night) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP04_D3_Morning) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP04_D3_Afternoon) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP04_D3_Night) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP04_D4_Morning) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP04_D4_Afternoon) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP04_D4_Night) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP04_D5_Morning) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP04_D5_Afternoon) <= 1
   0 <= OpInShift(O001_L1_Assembly_OP04_D5_Night) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP01_D1_Morning) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP01_D1_Afternoon) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP01_D1_Night) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP01_D2_Morning) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP01_D2_Afternoon) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP01_D2_Night) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP01_D3_Morning) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP01_D3_Afternoon) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP01_D3_Night) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP01_D4_Morning) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP01_D4_Afternoon) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP01_D4_Night) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP01_D5_Morning) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP01_D5_Afternoon) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP01_D5_Night) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP03_D1_Morning) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP03_D1_Afternoon) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP03_D1_Night) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP03_D2_Morning) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP03_D2_Afternoon) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP03_D2_Night) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP03_D3_Morning) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP03_D3_Afternoon) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP03_D3_Night) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP03_D4_Morning) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP03_D4_Afternoon) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP03_D4_Night) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP03_D5_Morning) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP03_D5_Afternoon) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP03_D5_Night) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP04_D1_Morning) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP04_D1_Afternoon) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP04_D1_Night) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP04_D2_Morning) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP04_D2_Afternoon) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP04_D2_Night) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP04_D3_Morning) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP04_D3_Afternoon) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP04_D3_Night) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP04_D4_Morning) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP04_D4_Afternoon) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP04_D4_Night) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP04_D5_Morning) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP04_D5_Afternoon) <= 1
   0 <= OpInShift(O002_L1_Cutting_OP04_D5_Night) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP01_D1_Morning) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP01_D1_Afternoon) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP01_D1_Night) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP01_D2_Morning) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP01_D2_Afternoon) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP01_D2_Night) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP01_D3_Morning) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP01_D3_Afternoon) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP01_D3_Night) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP01_D4_Morning) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP01_D4_Afternoon) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP01_D4_Night) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP01_D5_Morning) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP01_D5_Afternoon) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP01_D5_Night) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP02_D1_Morning) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP02_D1_Afternoon) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP02_D1_Night) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP02_D2_Morning) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP02_D2_Afternoon) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP02_D2_Night) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP02_D3_Morning) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP02_D3_Afternoon) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP02_D3_Night) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP02_D4_Morning) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP02_D4_Afternoon) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP02_D4_Night) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP02_D5_Morning) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP02_D5_Afternoon) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP02_D5_Night) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP04_D1_Morning) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP04_D1_Afternoon) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP04_D1_Night) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP04_D2_Morning) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP04_D2_Afternoon) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP04_D2_Night) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP04_D3_Morning) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP04_D3_Afternoon) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP04_D3_Night) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP04_D4_Morning) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP04_D4_Afternoon) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP04_D4_Night) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP04_D5_Morning) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP04_D5_Afternoon) <= 1
   0 <= OpInShift(O002_L1_Assembly_OP04_D5_Night) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP01_D1_Morning) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP01_D1_Afternoon) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP01_D1_Night) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP01_D2_Morning) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP01_D2_Afternoon) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP01_D2_Night) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP01_D3_Morning) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP01_D3_Afternoon) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP01_D3_Night) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP01_D4_Morning) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP01_D4_Afternoon) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP01_D4_Night) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP01_D5_Morning) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP01_D5_Afternoon) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP01_D5_Night) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP03_D1_Morning) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP03_D1_Afternoon) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP03_D1_Night) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP03_D2_Morning) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP03_D2_Afternoon) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP03_D2_Night) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP03_D3_Morning) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP03_D3_Afternoon) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP03_D3_Night) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP03_D4_Morning) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP03_D4_Afternoon) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP03_D4_Night) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP03_D5_Morning) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP03_D5_Afternoon) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP03_D5_Night) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP04_D1_Morning) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP04_D1_Afternoon) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP04_D1_Night) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP04_D2_Morning) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP04_D2_Afternoon) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP04_D2_Night) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP04_D3_Morning) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP04_D3_Afternoon) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP04_D3_Night) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP04_D4_Morning) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP04_D4_Afternoon) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP04_D4_Night) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP04_D5_Morning) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP04_D5_Afternoon) <= 1
   0 <= OpInShift(O003_L1_Cutting_OP04_D5_Night) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP01_D1_Morning) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP01_D1_Afternoon) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP01_D1_Night) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP01_D2_Morning) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP01_D2_Afternoon) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP01_D2_Night) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP01_D3_Morning) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP01_D3_Afternoon) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP01_D3_Night) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP01_D4_Morning) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP01_D4_Afternoon) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP01_D4_Night) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP01_D5_Morning) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP01_D5_Afternoon) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP01_D5_Night) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP02_D1_Morning) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP02_D1_Afternoon) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP02_D1_Night) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP02_D2_Morning) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP02_D2_Afternoon) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP02_D2_Night) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP02_D3_Morning) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP02_D3_Afternoon) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP02_D3_Night) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP02_D4_Morning) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP02_D4_Afternoon) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP02_D4_Night) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP02_D5_Morning) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP02_D5_Afternoon) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP02_D5_Night) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP04_D1_Morning) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP04_D1_Afternoon) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP04_D1_Night) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP04_D2_Morning) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP04_D2_Afternoon) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP04_D2_Night) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP04_D3_Morning) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP04_D3_Afternoon) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP04_D3_Night) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP04_D4_Morning) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP04_D4_Afternoon) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP04_D4_Night) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP04_D5_Morning) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP04_D5_Afternoon) <= 1
   0 <= OpInShift(O003_L1_Assembly_OP04_D5_Night) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP01_D1_Morning) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP01_D1_Afternoon) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP01_D1_Night) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP01_D2_Morning) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP01_D2_Afternoon) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP01_D2_Night) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP01_D3_Morning) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP01_D3_Afternoon) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP01_D3_Night) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP01_D4_Morning) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP01_D4_Afternoon) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP01_D4_Night) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP01_D5_Morning) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP01_D5_Afternoon) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP01_D5_Night) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP03_D1_Morning) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP03_D1_Afternoon) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP03_D1_Night) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP03_D2_Morning) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP03_D2_Afternoon) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP03_D2_Night) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP03_D3_Morning) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP03_D3_Afternoon) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP03_D3_Night) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP03_D4_Morning) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP03_D4_Afternoon) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP03_D4_Night) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP03_D5_Morning) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP03_D5_Afternoon) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP03_D5_Night) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP04_D1_Morning) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP04_D1_Afternoon) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP04_D1_Night) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP04_D2_Morning) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP04_D2_Afternoon) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP04_D2_Night) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP04_D3_Morning) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP04_D3_Afternoon) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP04_D3_Night) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP04_D4_Morning) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP04_D4_Afternoon) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP04_D4_Night) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP04_D5_Morning) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP04_D5_Afternoon) <= 1
   0 <= OpInShift(O004_L1_Cutting_OP04_D5_Night) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP01_D1_Morning) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP01_D1_Afternoon) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP01_D1_Night) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP01_D2_Morning) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP01_D2_Afternoon) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP01_D2_Night) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP01_D3_Morning) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP01_D3_Afternoon) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP01_D3_Night) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP01_D4_Morning) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP01_D4_Afternoon) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP01_D4_Night) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP01_D5_Morning) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP01_D5_Afternoon) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP01_D5_Night) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP02_D1_Morning) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP02_D1_Afternoon) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP02_D1_Night) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP02_D2_Morning) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP02_D2_Afternoon) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP02_D2_Night) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP02_D3_Morning) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP02_D3_Afternoon) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP02_D3_Night) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP02_D4_Morning) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP02_D4_Afternoon) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP02_D4_Night) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP02_D5_Morning) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP02_D5_Afternoon) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP02_D5_Night) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP04_D1_Morning) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP04_D1_Afternoon) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP04_D1_Night) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP04_D2_Morning) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP04_D2_Afternoon) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP04_D2_Night) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP04_D3_Morning) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP04_D3_Afternoon) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP04_D3_Night) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP04_D4_Morning) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP04_D4_Afternoon) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP04_D4_Night) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP04_D5_Morning) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP04_D5_Afternoon) <= 1
   0 <= OpInShift(O004_L1_Assembly_OP04_D5_Night) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP01_D1_Morning) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP01_D1_Afternoon) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP01_D1_Night) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP01_D2_Morning) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP01_D2_Afternoon) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP01_D2_Night) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP01_D3_Morning) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP01_D3_Afternoon) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP01_D3_Night) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP01_D4_Morning) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP01_D4_Afternoon) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP01_D4_Night) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP01_D5_Morning) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP01_D5_Afternoon) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP01_D5_Night) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP03_D1_Morning) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP03_D1_Afternoon) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP03_D1_Night) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP03_D2_Morning) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP03_D2_Afternoon) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP03_D2_Night) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP03_D3_Morning) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP03_D3_Afternoon) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP03_D3_Night) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP03_D4_Morning) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP03_D4_Afternoon) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP03_D4_Night) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP03_D5_Morning) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP03_D5_Afternoon) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP03_D5_Night) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP04_D1_Morning) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP04_D1_Afternoon) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP04_D1_Night) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP04_D2_Morning) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP04_D2_Afternoon) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP04_D2_Night) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP04_D3_Morning) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP04_D3_Afternoon) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP04_D3_Night) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP04_D4_Morning) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP04_D4_Afternoon) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP04_D4_Night) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP04_D5_Morning) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP04_D5_Afternoon) <= 1
   0 <= OpInShift(O004_L2_Cutting_OP04_D5_Night) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP01_D1_Morning) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP01_D1_Afternoon) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP01_D1_Night) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP01_D2_Morning) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP01_D2_Afternoon) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP01_D2_Night) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP01_D3_Morning) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP01_D3_Afternoon) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP01_D3_Night) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP01_D4_Morning) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP01_D4_Afternoon) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP01_D4_Night) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP01_D5_Morning) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP01_D5_Afternoon) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP01_D5_Night) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP02_D1_Morning) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP02_D1_Afternoon) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP02_D1_Night) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP02_D2_Morning) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP02_D2_Afternoon) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP02_D2_Night) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP02_D3_Morning) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP02_D3_Afternoon) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP02_D3_Night) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP02_D4_Morning) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP02_D4_Afternoon) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP02_D4_Night) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP02_D5_Morning) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP02_D5_Afternoon) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP02_D5_Night) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP04_D1_Morning) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP04_D1_Afternoon) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP04_D1_Night) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP04_D2_Morning) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP04_D2_Afternoon) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP04_D2_Night) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP04_D3_Morning) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP04_D3_Afternoon) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP04_D3_Night) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP04_D4_Morning) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP04_D4_Afternoon) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP04_D4_Night) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP04_D5_Morning) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP04_D5_Afternoon) <= 1
   0 <= OpInShift(O004_L2_Assembly_OP04_D5_Night) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP01_D1_Morning) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP01_D1_Afternoon) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP01_D1_Night) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP01_D2_Morning) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP01_D2_Afternoon) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP01_D2_Night) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP01_D3_Morning) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP01_D3_Afternoon) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP01_D3_Night) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP01_D4_Morning) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP01_D4_Afternoon) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP01_D4_Night) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP01_D5_Morning) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP01_D5_Afternoon) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP01_D5_Night) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP03_D1_Morning) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP03_D1_Afternoon) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP03_D1_Night) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP03_D2_Morning) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP03_D2_Afternoon) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP03_D2_Night) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP03_D3_Morning) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP03_D3_Afternoon) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP03_D3_Night) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP03_D4_Morning) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP03_D4_Afternoon) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP03_D4_Night) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP03_D5_Morning) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP03_D5_Afternoon) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP03_D5_Night) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP04_D1_Morning) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP04_D1_Afternoon) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP04_D1_Night) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP04_D2_Morning) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP04_D2_Afternoon) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP04_D2_Night) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP04_D3_Morning) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP04_D3_Afternoon) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP04_D3_Night) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP04_D4_Morning) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP04_D4_Afternoon) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP04_D4_Night) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP04_D5_Morning) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP04_D5_Afternoon) <= 1
   0 <= OpInShift(O005_L1_Cutting_OP04_D5_Night) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP01_D1_Morning) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP01_D1_Afternoon) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP01_D1_Night) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP01_D2_Morning) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP01_D2_Afternoon) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP01_D2_Night) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP01_D3_Morning) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP01_D3_Afternoon) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP01_D3_Night) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP01_D4_Morning) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP01_D4_Afternoon) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP01_D4_Night) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP01_D5_Morning) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP01_D5_Afternoon) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP01_D5_Night) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP02_D1_Morning) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP02_D1_Afternoon) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP02_D1_Night) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP02_D2_Morning) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP02_D2_Afternoon) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP02_D2_Night) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP02_D3_Morning) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP02_D3_Afternoon) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP02_D3_Night) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP02_D4_Morning) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP02_D4_Afternoon) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP02_D4_Night) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP02_D5_Morning) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP02_D5_Afternoon) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP02_D5_Night) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP04_D1_Morning) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP04_D1_Afternoon) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP04_D1_Night) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP04_D2_Morning) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP04_D2_Afternoon) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP04_D2_Night) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP04_D3_Morning) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP04_D3_Afternoon) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP04_D3_Night) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP04_D4_Morning) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP04_D4_Afternoon) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP04_D4_Night) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP04_D5_Morning) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP04_D5_Afternoon) <= 1
   0 <= OpInShift(O005_L1_Assembly_OP04_D5_Night) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP01_D1_Morning) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP01_D1_Afternoon) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP01_D1_Night) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP01_D2_Morning) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP01_D2_Afternoon) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP01_D2_Night) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP01_D3_Morning) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP01_D3_Afternoon) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP01_D3_Night) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP01_D4_Morning) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP01_D4_Afternoon) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP01_D4_Night) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP01_D5_Morning) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP01_D5_Afternoon) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP01_D5_Night) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP03_D1_Morning) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP03_D1_Afternoon) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP03_D1_Night) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP03_D2_Morning) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP03_D2_Afternoon) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP03_D2_Night) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP03_D3_Morning) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP03_D3_Afternoon) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP03_D3_Night) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP03_D4_Morning) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP03_D4_Afternoon) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP03_D4_Night) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP03_D5_Morning) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP03_D5_Afternoon) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP03_D5_Night) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP04_D1_Morning) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP04_D1_Afternoon) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP04_D1_Night) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP04_D2_Morning) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP04_D2_Afternoon) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP04_D2_Night) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP04_D3_Morning) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP04_D3_Afternoon) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP04_D3_Night) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP04_D4_Morning) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP04_D4_Afternoon) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP04_D4_Night) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP04_D5_Morning) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP04_D5_Afternoon) <= 1
   0 <= OpInShift(O006_L1_Cutting_OP04_D5_Night) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP01_D1_Morning) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP01_D1_Afternoon) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP01_D1_Night) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP01_D2_Morning) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP01_D2_Afternoon) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP01_D2_Night) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP01_D3_Morning) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP01_D3_Afternoon) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP01_D3_Night) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP01_D4_Morning) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP01_D4_Afternoon) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP01_D4_Night) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP01_D5_Morning) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP01_D5_Afternoon) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP01_D5_Night) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP02_D1_Morning) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP02_D1_Afternoon) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP02_D1_Night) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP02_D2_Morning) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP02_D2_Afternoon) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP02_D2_Night) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP02_D3_Morning) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP02_D3_Afternoon) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP02_D3_Night) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP02_D4_Morning) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP02_D4_Afternoon) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP02_D4_Night) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP02_D5_Morning) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP02_D5_Afternoon) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP02_D5_Night) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP04_D1_Morning) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP04_D1_Afternoon) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP04_D1_Night) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP04_D2_Morning) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP04_D2_Afternoon) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP04_D2_Night) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP04_D3_Morning) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP04_D3_Afternoon) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP04_D3_Night) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP04_D4_Morning) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP04_D4_Afternoon) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP04_D4_Night) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP04_D5_Morning) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP04_D5_Afternoon) <= 1
   0 <= OpInShift(O006_L1_Assembly_OP04_D5_Night) <= 1
   0 <= AssignInShift(O001_L1_Cutting_M03_D1_Morning) <= 1
   0 <= AssignInShift(O001_L1_Cutting_M03_D1_Afternoon) <= 1
   0 <= AssignInShift(O001_L1_Cutting_M03_D1_Night) <= 1
   0 <= AssignInShift(O001_L1_Cutting_M03_D2_Morning) <= 1
   0 <= AssignInShift(O001_L1_Cutting_M03_D2_Afternoon) <= 1
   0 <= AssignInShift(O001_L1_Cutting_M03_D2_Night) <= 1
   0 <= AssignInShift(O001_L1_Cutting_M03_D3_Morning) <= 1
   0 <= AssignInShift(O001_L1_Cutting_M03_D3_Afternoon) <= 1
   0 <= AssignInShift(O001_L1_Cutting_M03_D3_Night) <= 1
   0 <= AssignInShift(O001_L1_Cutting_M03_D4_Morning) <= 1
   0 <= AssignInShift(O001_L1_Cutting_M03_D4_Afternoon) <= 1
   0 <= AssignInShift(O001_L1_Cutting_M03_D4_Night) <= 1
   0 <= AssignInShift(O001_L1_Cutting_M03_D5_Morning) <= 1
   0 <= AssignInShift(O001_L1_Cutting_M03_D5_Afternoon) <= 1
   0 <= AssignInShift(O001_L1_Cutting_M03_D5_Night) <= 1
   0 <= AssignInShift(O001_L1_Assembly_M02_D1_Morning) <= 1
   0 <= AssignInShift(O001_L1_Assembly_M02_D1_Afternoon) <= 1
   0 <= AssignInShift(O001_L1_Assembly_M02_D1_Night) <= 1
   0 <= AssignInShift(O001_L1_Assembly_M02_D2_Morning) <= 1
   0 <= AssignInShift(O001_L1_Assembly_M02_D2_Afternoon) <= 1
   0 <= AssignInShift(O001_L1_Assembly_M02_D2_Night) <= 1
   0 <= AssignInShift(O001_L1_Assembly_M02_D3_Morning) <= 1
   0 <= AssignInShift(O001_L1_Assembly_M02_D3_Afternoon) <= 1
   0 <= AssignInShift(O001_L1_Assembly_M02_D3_Night) <= 1
   0 <= AssignInShift(O001_L1_Assembly_M02_D4_Morning) <= 1
   0 <= AssignInShift(O001_L1_Assembly_M02_D4_Afternoon) <= 1
   0 <= AssignInShift(O001_L1_Assembly_M02_D4_Night) <= 1
   0 <= AssignInShift(O001_L1_Assembly_M02_D5_Morning) <= 1
   0 <= AssignInShift(O001_L1_Assembly_M02_D5_Afternoon) <= 1
   0 <= AssignInShift(O001_L1_Assembly_M02_D5_Night) <= 1
   0 <= AssignInShift(O002_L1_Cutting_M01_D1_Morning) <= 1
   0 <= AssignInShift(O002_L1_Cutting_M01_D1_Afternoon) <= 1
   0 <= AssignInShift(O002_L1_Cutting_M01_D1_Night) <= 1
   0 <= AssignInShift(O002_L1_Cutting_M01_D2_Morning) <= 1
   0 <= AssignInShift(O002_L1_Cutting_M01_D2_Afternoon) <= 1
   0 <= AssignInShift(O002_L1_Cutting_M01_D2_Night) <= 1
   0 <= AssignInShift(O002_L1_Cutting_M01_D3_Morning) <= 1
   0 <= AssignInShift(O002_L1_Cutting_M01_D3_Afternoon) <= 1
   0 <= AssignInShift(O002_L1_Cutting_M01_D3_Night) <= 1
   0 <= AssignInShift(O002_L1_Cutting_M01_D4_Morning) <= 1
   0 <= AssignInShift(O002_L1_Cutting_M01_D4_Afternoon) <= 1
   0 <= AssignInShift(O002_L1_Cutting_M01_D4_Night) <= 1
   0 <= AssignInShift(O002_L1_Cutting_M01_D5_Morning) <= 1
   0 <= AssignInShift(O002_L1_Cutting_M01_D5_Afternoon) <= 1
   0 <= AssignInShift(O002_L1_Cutting_M01_D5_Night) <= 1
   0 <= AssignInShift(O002_L1_Assembly_M02_D1_Morning) <= 1
   0 <= AssignInShift(O002_L1_Assembly_M02_D1_Afternoon) <= 1
   0 <= AssignInShift(O002_L1_Assembly_M02_D1_Night) <= 1
   0 <= AssignInShift(O002_L1_Assembly_M02_D2_Morning) <= 1
   0 <= AssignInShift(O002_L1_Assembly_M02_D2_Afternoon) <= 1
   0 <= AssignInShift(O002_L1_Assembly_M02_D2_Night) <= 1
   0 <= AssignInShift(O002_L1_Assembly_M02_D3_Morning) <= 1
   0 <= AssignInShift(O002_L1_Assembly_M02_D3_Afternoon) <= 1
   0 <= AssignInShift(O002_L1_Assembly_M02_D3_Night) <= 1
   0 <= AssignInShift(O002_L1_Assembly_M02_D4_Morning) <= 1
   0 <= AssignInShift(O002_L1_Assembly_M02_D4_Afternoon) <= 1
   0 <= AssignInShift(O002_L1_Assembly_M02_D4_Night) <= 1
   0 <= AssignInShift(O002_L1_Assembly_M02_D5_Morning) <= 1
   0 <= AssignInShift(O002_L1_Assembly_M02_D5_Afternoon) <= 1
   0 <= AssignInShift(O002_L1_Assembly_M02_D5_Night) <= 1
   0 <= AssignInShift(O003_L1_Cutting_M01_D1_Morning) <= 1
   0 <= AssignInShift(O003_L1_Cutting_M01_D1_Afternoon) <= 1
   0 <= AssignInShift(O003_L1_Cutting_M01_D1_Night) <= 1
   0 <= AssignInShift(O003_L1_Cutting_M01_D2_Morning) <= 1
   0 <= AssignInShift(O003_L1_Cutting_M01_D2_Afternoon) <= 1
   0 <= AssignInShift(O003_L1_Cutting_M01_D2_Night) <= 1
   0 <= AssignInShift(O003_L1_Cutting_M01_D3_Morning) <= 1
   0 <= AssignInShift(O003_L1_Cutting_M01_D3_Afternoon) <= 1
   0 <= AssignInShift(O003_L1_Cutting_M01_D3_Night) <= 1
   0 <= AssignInShift(O003_L1_Cutting_M01_D4_Morning) <= 1
   0 <= AssignInShift(O003_L1_Cutting_M01_D4_Afternoon) <= 1
   0 <= AssignInShift(O003_L1_Cutting_M01_D4_Night) <= 1
   0 <= AssignInShift(O003_L1_Cutting_M01_D5_Morning) <= 1
   0 <= AssignInShift(O003_L1_Cutting_M01_D5_Afternoon) <= 1
   0 <= AssignInShift(O003_L1_Cutting_M01_D5_Night) <= 1
   0 <= AssignInShift(O003_L1_Assembly_M02_D1_Morning) <= 1
   0 <= AssignInShift(O003_L1_Assembly_M02_D1_Afternoon) <= 1
   0 <= AssignInShift(O003_L1_Assembly_M02_D1_Night) <= 1
   0 <= AssignInShift(O003_L1_Assembly_M02_D2_Morning) <= 1
   0 <= AssignInShift(O003_L1_Assembly_M02_D2_Afternoon) <= 1
   0 <= AssignInShift(O003_L1_Assembly_M02_D2_Night) <= 1
   0 <= AssignInShift(O003_L1_Assembly_M02_D3_Morning) <= 1
   0 <= AssignInShift(O003_L1_Assembly_M02_D3_Afternoon) <= 1
   0 <= AssignInShift(O003_L1_Assembly_M02_D3_Night) <= 1
   0 <= AssignInShift(O003_L1_Assembly_M02_D4_Morning) <= 1
   0 <= AssignInShift(O003_L1_Assembly_M02_D4_Afternoon) <= 1
   0 <= AssignInShift(O003_L1_Assembly_M02_D4_Night) <= 1
   0 <= AssignInShift(O003_L1_Assembly_M02_D5_Morning) <= 1
   0 <= AssignInShift(O003_L1_Assembly_M02_D5_Afternoon) <= 1
   0 <= AssignInShift(O003_L1_Assembly_M02_D5_Night) <= 1
   0 <= AssignInShift(O004_L1_Cutting_M01_D1_Morning) <= 1
   0 <= AssignInShift(O004_L1_Cutting_M01_D1_Afternoon) <= 1
   0 <= AssignInShift(O004_L1_Cutting_M01_D1_Night) <= 1
   0 <= AssignInShift(O004_L1_Cutting_M01_D2_Morning) <= 1
   0 <= AssignInShift(O004_L1_Cutting_M01_D2_Afternoon) <= 1
   0 <= AssignInShift(O004_L1_Cutting_M01_D2_Night) <= 1
   0 <= AssignInShift(O004_L1_Cutting_M01_D3_Morning) <= 1
   0 <= AssignInShift(O004_L1_Cutting_M01_D3_Afternoon) <= 1
   0 <= AssignInShift(O004_L1_Cutting_M01_D3_Night) <= 1
   0 <= AssignInShift(O004_L1_Cutting_M01_D4_Morning) <= 1
   0 <= AssignInShift(O004_L1_Cutting_M01_D4_Afternoon) <= 1
   0 <= AssignInShift(O004_L1_Cutting_M01_D4_Night) <= 1
   0 <= AssignInShift(O004_L1_Cutting_M01_D5_Morning) <= 1
   0 <= AssignInShift(O004_L1_Cutting_M01_D5_Afternoon) <= 1
   0 <= AssignInShift(O004_L1_Cutting_M01_D5_Night) <= 1
   0 <= AssignInShift(O004_L1_Assembly_M02_D1_Morning) <= 1
   0 <= AssignInShift(O004_L1_Assembly_M02_D1_Afternoon) <= 1
   0 <= AssignInShift(O004_L1_Assembly_M02_D1_Night) <= 1
   0 <= AssignInShift(O004_L1_Assembly_M02_D2_Morning) <= 1
   0 <= AssignInShift(O004_L1_Assembly_M02_D2_Afternoon) <= 1
   0 <= AssignInShift(O004_L1_Assembly_M02_D2_Night) <= 1
   0 <= AssignInShift(O004_L1_Assembly_M02_D3_Morning) <= 1
   0 <= AssignInShift(O004_L1_Assembly_M02_D3_Afternoon) <= 1
   0 <= AssignInShift(O004_L1_Assembly_M02_D3_Night) <= 1
   0 <= AssignInShift(O004_L1_Assembly_M02_D4_Morning) <= 1
   0 <= AssignInShift(O004_L1_Assembly_M02_D4_Afternoon) <= 1
   0 <= AssignInShift(O004_L1_Assembly_M02_D4_Night) <= 1
   0 <= AssignInShift(O004_L1_Assembly_M02_D5_Morning) <= 1
   0 <= AssignInShift(O004_L1_Assembly_M02_D5_Afternoon) <= 1
   0 <= AssignInShift(O004_L1_Assembly_M02_D5_Night) <= 1
   0 <= AssignInShift(O004_L2_Cutting_M01_D1_Morning) <= 1
   0 <= AssignInShift(O004_L2_Cutting_M01_D1_Afternoon) <= 1
   0 <= AssignInShift(O004_L2_Cutting_M01_D1_Night) <= 1
   0 <= AssignInShift(O004_L2_Cutting_M01_D2_Morning) <= 1
   0 <= AssignInShift(O004_L2_Cutting_M01_D2_Afternoon) <= 1
   0 <= AssignInShift(O004_L2_Cutting_M01_D2_Night) <= 1
   0 <= AssignInShift(O004_L2_Cutting_M01_D3_Morning) <= 1
   0 <= AssignInShift(O004_L2_Cutting_M01_D3_Afternoon) <= 1
   0 <= AssignInShift(O004_L2_Cutting_M01_D3_Night) <= 1
   0 <= AssignInShift(O004_L2_Cutting_M01_D4_Morning) <= 1
   0 <= AssignInShift(O004_L2_Cutting_M01_D4_Afternoon) <= 1
   0 <= AssignInShift(O004_L2_Cutting_M01_D4_Night) <= 1
   0 <= AssignInShift(O004_L2_Cutting_M01_D5_Morning) <= 1
   0 <= AssignInShift(O004_L2_Cutting_M01_D5_Afternoon) <= 1
   0 <= AssignInShift(O004_L2_Cutting_M01_D5_Night) <= 1
   0 <= AssignInShift(O004_L2_Assembly_M02_D1_Morning) <= 1
   0 <= AssignInShift(O004_L2_Assembly_M02_D1_Afternoon) <= 1
   0 <= AssignInShift(O004_L2_Assembly_M02_D1_Night) <= 1
   0 <= AssignInShift(O004_L2_Assembly_M02_D2_Morning) <= 1
   0 <= AssignInShift(O004_L2_Assembly_M02_D2_Afternoon) <= 1
   0 <= AssignInShift(O004_L2_Assembly_M02_D2_Night) <= 1
   0 <= AssignInShift(O004_L2_Assembly_M02_D3_Morning) <= 1
   0 <= AssignInShift(O004_L2_Assembly_M02_D3_Afternoon) <= 1
   0 <= AssignInShift(O004_L2_Assembly_M02_D3_Night) <= 1
   0 <= AssignInShift(O004_L2_Assembly_M02_D4_Morning) <= 1
   0 <= AssignInShift(O004_L2_Assembly_M02_D4_Afternoon) <= 1
   0 <= AssignInShift(O004_L2_Assembly_M02_D4_Night) <= 1
   0 <= AssignInShift(O004_L2_Assembly_M02_D5_Morning) <= 1
   0 <= AssignInShift(O004_L2_Assembly_M02_D5_Afternoon) <= 1
   0 <= AssignInShift(O004_L2_Assembly_M02_D5_Night) <= 1
   0 <= AssignInShift(O005_L1_Cutting_M01_D1_Morning) <= 1
   0 <= AssignInShift(O005_L1_Cutting_M01_D1_Afternoon) <= 1
   0 <= AssignInShift(O005_L1_Cutting_M01_D1_Night) <= 1
   0 <= AssignInShift(O005_L1_Cutting_M01_D2_Morning) <= 1
   0 <= AssignInShift(O005_L1_Cutting_M01_D2_Afternoon) <= 1
   0 <= AssignInShift(O005_L1_Cutting_M01_D2_Night) <= 1
   0 <= AssignInShift(O005_L1_Cutting_M01_D3_Morning) <= 1
   0 <= AssignInShift(O005_L1_Cutting_M01_D3_Afternoon) <= 1
   0 <= AssignInShift(O005_L1_Cutting_M01_D3_Night) <= 1
   0 <= AssignInShift(O005_L1_Cutting_M01_D4_Morning) <= 1
   0 <= AssignInShift(O005_L1_Cutting_M01_D4_Afternoon) <= 1
   0 <= AssignInShift(O005_L1_Cutting_M01_D4_Night) <= 1
   0 <= AssignInShift(O005_L1_Cutting_M01_D5_Morning) <= 1
   0 <= AssignInShift(O005_L1_Cutting_M01_D5_Afternoon) <= 1
   0 <= AssignInShift(O005_L1_Cutting_M01_D5_Night) <= 1
   0 <= AssignInShift(O005_L1_Assembly_M02_D1_Morning) <= 1
   0 <= AssignInShift(O005_L1_Assembly_M02_D1_Afternoon) <= 1
   0 <= AssignInShift(O005_L1_Assembly_M02_D1_Night) <= 1
   0 <= AssignInShift(O005_L1_Assembly_M02_D2_Morning) <= 1
   0 <= AssignInShift(O005_L1_Assembly_M02_D2_Afternoon) <= 1
   0 <= AssignInShift(O005_L1_Assembly_M02_D2_Night) <= 1
   0 <= AssignInShift(O005_L1_Assembly_M02_D3_Morning) <= 1
   0 <= AssignInShift(O005_L1_Assembly_M02_D3_Afternoon) <= 1
   0 <= AssignInShift(O005_L1_Assembly_M02_D3_Night) <= 1
   0 <= AssignInShift(O005_L1_Assembly_M02_D4_Morning) <= 1
   0 <= AssignInShift(O005_L1_Assembly_M02_D4_Afternoon) <= 1
   0 <= AssignInShift(O005_L1_Assembly_M02_D4_Night) <= 1
   0 <= AssignInShift(O005_L1_Assembly_M02_D5_Morning) <= 1
   0 <= AssignInShift(O005_L1_Assembly_M02_D5_Afternoon) <= 1
   0 <= AssignInShift(O005_L1_Assembly_M02_D5_Night) <= 1
   0 <= AssignInShift(O006_L1_Cutting_M01_D1_Morning) <= 1
   0 <= AssignInShift(O006_L1_Cutting_M01_D1_Afternoon) <= 1
   0 <= AssignInShift(O006_L1_Cutting_M01_D1_Night) <= 1
   0 <= AssignInShift(O006_L1_Cutting_M01_D2_Morning) <= 1
   0 <= AssignInShift(O006_L1_Cutting_M01_D2_Afternoon) <= 1
   0 <= AssignInShift(O006_L1_Cutting_M01_D2_Night) <= 1
   0 <= AssignInShift(O006_L1_Cutting_M01_D3_Morning) <= 1
   0 <= AssignInShift(O006_L1_Cutting_M01_D3_Afternoon) <= 1
   0 <= AssignInShift(O006_L1_Cutting_M01_D3_Night) <= 1
   0 <= AssignInShift(O006_L1_Cutting_M01_D4_Morning) <= 1
   0 <= AssignInShift(O006_L1_Cutting_M01_D4_Afternoon) <= 1
   0 <= AssignInShift(O006_L1_Cutting_M01_D4_Night) <= 1
   0 <= AssignInShift(O006_L1_Cutting_M01_D5_Morning) <= 1
   0 <= AssignInShift(O006_L1_Cutting_M01_D5_Afternoon) <= 1
   0 <= AssignInShift(O006_L1_Cutting_M01_D5_Night) <= 1
   0 <= AssignInShift(O006_L1_Assembly_M02_D1_Morning) <= 1
   0 <= AssignInShift(O006_L1_Assembly_M02_D1_Afternoon) <= 1
   0 <= AssignInShift(O006_L1_Assembly_M02_D1_Night) <= 1
   0 <= AssignInShift(O006_L1_Assembly_M02_D2_Morning) <= 1
   0 <= AssignInShift(O006_L1_Assembly_M02_D2_Afternoon) <= 1
   0 <= AssignInShift(O006_L1_Assembly_M02_D2_Night) <= 1
   0 <= AssignInShift(O006_L1_Assembly_M02_D3_Morning) <= 1
   0 <= AssignInShift(O006_L1_Assembly_M02_D3_Afternoon) <= 1
   0 <= AssignInShift(O006_L1_Assembly_M02_D3_Night) <= 1
   0 <= AssignInShift(O006_L1_Assembly_M02_D4_Morning) <= 1
   0 <= AssignInShift(O006_L1_Assembly_M02_D4_Afternoon) <= 1
   0 <= AssignInShift(O006_L1_Assembly_M02_D4_Night) <= 1
   0 <= AssignInShift(O006_L1_Assembly_M02_D5_Morning) <= 1
   0 <= AssignInShift(O006_L1_Assembly_M02_D5_Afternoon) <= 1
   0 <= AssignInShift(O006_L1_Assembly_M02_D5_Night) <= 1
   0 <= Backlog(P01_1) <= +inf
   0 <= Backlog(P01_2) <= +inf
   0 <= Backlog(P01_3) <= +inf
   0 <= Backlog(P01_4) <= +inf
   0 <= Backlog(P01_5) <= +inf
   0 <= Backlog(P02_1) <= +inf
   0 <= Backlog(P02_2) <= +inf
   0 <= Backlog(P02_3) <= +inf
   0 <= Backlog(P02_4) <= +inf
   0 <= Backlog(P02_5) <= +inf
   0 <= Backlog(P03_1) <= +inf
   0 <= Backlog(P03_2) <= +inf
   0 <= Backlog(P03_3) <= +inf
   0 <= Backlog(P03_4) <= +inf
   0 <= Backlog(P03_5) <= +inf
   0 <= Backlog(P04_1) <= +inf
   0 <= Backlog(P04_2) <= +inf
   0 <= Backlog(P04_3) <= +inf
   0 <= Backlog(P04_4) <= +inf
   0 <= Backlog(P04_5) <= +inf
   0 <= InvRM(RM01_1) <= +inf
   0 <= InvRM(RM01_2) <= +inf
   0 <= InvRM(RM01_3) <= +inf
   0 <= InvRM(RM01_4) <= +inf
   0 <= InvRM(RM01_5) <= +inf
   0 <= InvRM(RM02_1) <= +inf
   0 <= InvRM(RM02_2) <= +inf
   0 <= InvRM(RM02_3) <= +inf
   0 <= InvRM(RM02_4) <= +inf
   0 <= InvRM(RM02_5) <= +inf
   0 <= InvRM(RM03_1) <= +inf
   0 <= InvRM(RM03_2) <= +inf
   0 <= InvRM(RM03_3) <= +inf
   0 <= InvRM(RM03_4) <= +inf
   0 <= InvRM(RM03_5) <= +inf
   0 <= InvRM(RM04_1) <= +inf
   0 <= InvRM(RM04_2) <= +inf
   0 <= InvRM(RM04_3) <= +inf
   0 <= InvRM(RM04_4) <= +inf
   0 <= InvRM(RM04_5) <= +inf
   0 <= InvRM(RM05_1) <= +inf
   0 <= InvRM(RM05_2) <= +inf
   0 <= InvRM(RM05_3) <= +inf
   0 <= InvRM(RM05_4) <= +inf
   0 <= InvRM(RM05_5) <= +inf
   0 <= InvRM(RM06_1) <= +inf
   0 <= InvRM(RM06_2) <= +inf
   0 <= InvRM(RM06_3) <= +inf
   0 <= InvRM(RM06_4) <= +inf
   0 <= InvRM(RM06_5) <= +inf
binary
  Assign(O001_L1_Cutting_M03)
  Assign(O001_L1_Assembly_M02)
  Assign(O002_L1_Cutting_M01)
  Assign(O002_L1_Assembly_M02)
  Assign(O003_L1_Cutting_M01)
  Assign(O003_L1_Assembly_M02)
  Assign(O004_L1_Cutting_M01)
  Assign(O004_L1_Assembly_M02)
  Assign(O004_L2_Cutting_M01)
  Assign(O004_L2_Assembly_M02)
  Assign(O005_L1_Cutting_M01)
  Assign(O005_L1_Assembly_M02)
  Assign(O006_L1_Cutting_M01)
  Assign(O006_L1_Assembly_M02)
  SetupOccurs(O002_L1_Cutting_O003_L1_Cutting)
  SetupOccurs(O003_L1_Cutting_O002_L1_Cutting)
  SetupOccurs(O003_L1_Cutting_O004_L1_Cutting)
  SetupOccurs(O004_L1_Cutting_O003_L1_Cutting)
  SetupOccurs(O003_L1_Cutting_O004_L2_Cutting)
  SetupOccurs(O004_L2_Cutting_O003_L1_Cutting)
  SetupOccurs(O003_L1_Cutting_O005_L1_Cutting)
  SetupOccurs(O005_L1_Cutting_O003_L1_Cutting)
  SetupOccurs(O003_L1_Cutting_O006_L1_Cutting)
  SetupOccurs(O006_L1_Cutting_O003_L1_Cutting)
  SetupOccurs(O001_L1_Assembly_O002_L1_Assembly)
  SetupOccurs(O002_L1_Assembly_O001_L1_Assembly)
  SetupOccurs(O001_L1_Assembly_O003_L1_Assembly)
  SetupOccurs(O003_L1_Assembly_O001_L1_Assembly)
  SetupOccurs(O001_L1_Assembly_O004_L1_Assembly)
  SetupOccurs(O004_L1_Assembly_O001_L1_Assembly)
  SetupOccurs(O001_L1_Assembly_O004_L2_Assembly)
  SetupOccurs(O004_L2_Assembly_O001_L1_Assembly)
  SetupOccurs(O001_L1_Assembly_O005_L1_Assembly)
  SetupOccurs(O005_L1_Assembly_O001_L1_Assembly)
  SetupOccurs(O001_L1_Assembly_O006_L1_Assembly)
  SetupOccurs(O006_L1_Assembly_O001_L1_Assembly)
  SetupOccurs(O002_L1_Assembly_O003_L1_Assembly)
  SetupOccurs(O003_L1_Assembly_O002_L1_Assembly)
  SetupOccurs(O003_L1_Assembly_O004_L1_Assembly)
  SetupOccurs(O004_L1_Assembly_O003_L1_Assembly)
  SetupOccurs(O003_L1_Assembly_O004_L2_Assembly)
  SetupOccurs(O004_L2_Assembly_O003_L1_Assembly)
  SetupOccurs(O003_L1_Assembly_O005_L1_Assembly)
  SetupOccurs(O005_L1_Assembly_O003_L1_Assembly)
  SetupOccurs(O003_L1_Assembly_O006_L1_Assembly)
  SetupOccurs(O006_L1_Assembly_O003_L1_Assembly)
  Active(P01_M01)
  Active(P01_M02)
  Active(P02_M02)
  Active(P02_M03)
  Active(P03_M01)
  Active(P03_M02)
  Seq(O002_L1_Cutting_O003_L1_Cutting)
  Seq(O003_L1_Cutting_O002_L1_Cutting)
  Seq(O002_L1_Cutting_O004_L1_Cutting)
  Seq(O004_L1_Cutting_O002_L1_Cutting)
  Seq(O002_L1_Cutting_O004_L2_Cutting)
  Seq(O004_L2_Cutting_O002_L1_Cutting)
  Seq(O002_L1_Cutting_O005_L1_Cutting)
  Seq(O005_L1_Cutting_O002_L1_Cutting)
  Seq(O002_L1_Cutting_O006_L1_Cutting)
  Seq(O006_L1_Cutting_O002_L1_Cutting)
  Seq(O003_L1_Cutting_O004_L1_Cutting)
  Seq(O004_L1_Cutting_O003_L1_Cutting)
  Seq(O003_L1_Cutting_O004_L2_Cutting)
  Seq(O004_L2_Cutting_O003_L1_Cutting)
  Seq(O003_L1_Cutting_O005_L1_Cutting)
  Seq(O005_L1_Cutting_O003_L1_Cutting)
  Seq(O003_L1_Cutting_O006_L1_Cutting)
  Seq(O006_L1_Cutting_O003_L1_Cutting)
  Seq(O004_L1_Cutting_O004_L2_Cutting)
  Seq(O004_L2_Cutting_O004_L1_Cutting)
  Seq(O004_L1_Cutting_O005_L1_Cutting)
  Seq(O005_L1_Cutting_O004_L1_Cutting)
  Seq(O004_L1_Cutting_O006_L1_Cutting)
  Seq(O006_L1_Cutting_O004_L1_Cutting)
  Seq(O004_L2_Cutting_O005_L1_Cutting)
  Seq(O005_L1_Cutting_O004_L2_Cutting)
  Seq(O004_L2_Cutting_O006_L1_Cutting)
  Seq(O006_L1_Cutting_O004_L2_Cutting)
  Seq(O005_L1_Cutting_O006_L1_Cutting)
  Seq(O006_L1_Cutting_O005_L1_Cutting)
  Seq(O001_L1_Assembly_O002_L1_Assembly)
  Seq(O002_L1_Assembly_O001_L1_Assembly)
  Seq(O001_L1_Assembly_O003_L1_Assembly)
  Seq(O003_L1_Assembly_O001_L1_Assembly)
  Seq(O001_L1_Assembly_O004_L1_Assembly)
  Seq(O004_L1_Assembly_O001_L1_Assembly)
  Seq(O001_L1_Assembly_O004_L2_Assembly)
  Seq(O004_L2_Assembly_O001_L1_Assembly)
  Seq(O001_L1_Assembly_O005_L1_Assembly)
  Seq(O005_L1_Assembly_O001_L1_Assembly)
  Seq(O001_L1_Assembly_O006_L1_Assembly)
  Seq(O006_L1_Assembly_O001_L1_Assembly)
  Seq(O002_L1_Assembly_O003_L1_Assembly)
  Seq(O003_L1_Assembly_O002_L1_Assembly)
  Seq(O002_L1_Assembly_O004_L1_Assembly)
  Seq(O004_L1_Assembly_O002_L1_Assembly)
  Seq(O002_L1_Assembly_O004_L2_Assembly)
  Seq(O004_L2_Assembly_O002_L1_Assembly)
  Seq(O002_L1_Assembly_O005_L1_Assembly)
  Seq(O005_L1_Assembly_O002_L1_Assembly)
  Seq(O002_L1_Assembly_O006_L1_Assembly)
  Seq(O006_L1_Assembly_O002_L1_Assembly)
  Seq(O003_L1_Assembly_O004_L1_Assembly)
  Seq(O004_L1_Assembly_O003_L1_Assembly)
  Seq(O003_L1_Assembly_O004_L2_Assembly)
  Seq(O004_L2_Assembly_O003_L1_Assembly)
  Seq(O003_L1_Assembly_O005_L1_Assembly)
  Seq(O005_L1_Assembly_O003_L1_Assembly)
  Seq(O003_L1_Assembly_O006_L1_Assembly)
  Seq(O006_L1_Assembly_O003_L1_Assembly)
  Seq(O004_L1_Assembly_O004_L2_Assembly)
  Seq(O004_L2_Assembly_O004_L1_Assembly)
  Seq(O004_L1_Assembly_O005_L1_Assembly)
  Seq(O005_L1_Assembly_O004_L1_Assembly)
  Seq(O004_L1_Assembly_O006_L1_Assembly)
  Seq(O006_L1_Assembly_O004_L1_Assembly)
  Seq(O004_L2_Assembly_O005_L1_Assembly)
  Seq(O005_L1_Assembly_O004_L2_Assembly)
  Seq(O004_L2_Assembly_O006_L1_Assembly)
  Seq(O006_L1_Assembly_O004_L2_Assembly)
  Seq(O005_L1_Assembly_O006_L1_Assembly)
  Seq(O006_L1_Assembly_O005_L1_Assembly)
  ShiftAssign(O001_L1_Cutting_D1_Morning)
  ShiftAssign(O001_L1_Cutting_D1_Afternoon)
  ShiftAssign(O001_L1_Cutting_D1_Night)
  ShiftAssign(O001_L1_Cutting_D2_Morning)
  ShiftAssign(O001_L1_Cutting_D2_Afternoon)
  ShiftAssign(O001_L1_Cutting_D2_Night)
  ShiftAssign(O001_L1_Cutting_D3_Morning)
  ShiftAssign(O001_L1_Cutting_D3_Afternoon)
  ShiftAssign(O001_L1_Cutting_D3_Night)
  ShiftAssign(O001_L1_Cutting_D4_Morning)
  ShiftAssign(O001_L1_Cutting_D4_Afternoon)
  ShiftAssign(O001_L1_Cutting_D4_Night)
  ShiftAssign(O001_L1_Cutting_D5_Morning)
  ShiftAssign(O001_L1_Cutting_D5_Afternoon)
  ShiftAssign(O001_L1_Cutting_D5_Night)
  ShiftAssign(O001_L1_Assembly_D1_Morning)
  ShiftAssign(O001_L1_Assembly_D1_Afternoon)
  ShiftAssign(O001_L1_Assembly_D1_Night)
  ShiftAssign(O001_L1_Assembly_D2_Morning)
  ShiftAssign(O001_L1_Assembly_D2_Afternoon)
  ShiftAssign(O001_L1_Assembly_D2_Night)
  ShiftAssign(O001_L1_Assembly_D3_Morning)
  ShiftAssign(O001_L1_Assembly_D3_Afternoon)
  ShiftAssign(O001_L1_Assembly_D3_Night)
  ShiftAssign(O001_L1_Assembly_D4_Morning)
  ShiftAssign(O001_L1_Assembly_D4_Afternoon)
  ShiftAssign(O001_L1_Assembly_D4_Night)
  ShiftAssign(O001_L1_Assembly_D5_Morning)
  ShiftAssign(O001_L1_Assembly_D5_Afternoon)
  ShiftAssign(O001_L1_Assembly_D5_Night)
  ShiftAssign(O002_L1_Cutting_D1_Morning)
  ShiftAssign(O002_L1_Cutting_D1_Afternoon)
  ShiftAssign(O002_L1_Cutting_D1_Night)
  ShiftAssign(O002_L1_Cutting_D2_Morning)
  ShiftAssign(O002_L1_Cutting_D2_Afternoon)
  ShiftAssign(O002_L1_Cutting_D2_Night)
  ShiftAssign(O002_L1_Cutting_D3_Morning)
  ShiftAssign(O002_L1_Cutting_D3_Afternoon)
  ShiftAssign(O002_L1_Cutting_D3_Night)
  ShiftAssign(O002_L1_Cutting_D4_Morning)
  ShiftAssign(O002_L1_Cutting_D4_Afternoon)
  ShiftAssign(O002_L1_Cutting_D4_Night)
  ShiftAssign(O002_L1_Cutting_D5_Morning)
  ShiftAssign(O002_L1_Cutting_D5_Afternoon)
  ShiftAssign(O002_L1_Cutting_D5_Night)
  ShiftAssign(O002_L1_Assembly_D1_Morning)
  ShiftAssign(O002_L1_Assembly_D1_Afternoon)
  ShiftAssign(O002_L1_Assembly_D1_Night)
  ShiftAssign(O002_L1_Assembly_D2_Morning)
  ShiftAssign(O002_L1_Assembly_D2_Afternoon)
  ShiftAssign(O002_L1_Assembly_D2_Night)
  ShiftAssign(O002_L1_Assembly_D3_Morning)
  ShiftAssign(O002_L1_Assembly_D3_Afternoon)
  ShiftAssign(O002_L1_Assembly_D3_Night)
  ShiftAssign(O002_L1_Assembly_D4_Morning)
  ShiftAssign(O002_L1_Assembly_D4_Afternoon)
  ShiftAssign(O002_L1_Assembly_D4_Night)
  ShiftAssign(O002_L1_Assembly_D5_Morning)
  ShiftAssign(O002_L1_Assembly_D5_Afternoon)
  ShiftAssign(O002_L1_Assembly_D5_Night)
  ShiftAssign(O003_L1_Cutting_D1_Morning)
  ShiftAssign(O003_L1_Cutting_D1_Afternoon)
  ShiftAssign(O003_L1_Cutting_D1_Night)
  ShiftAssign(O003_L1_Cutting_D2_Morning)
  ShiftAssign(O003_L1_Cutting_D2_Afternoon)
  ShiftAssign(O003_L1_Cutting_D2_Night)
  ShiftAssign(O003_L1_Cutting_D3_Morning)
  ShiftAssign(O003_L1_Cutting_D3_Afternoon)
  ShiftAssign(O003_L1_Cutting_D3_Night)
  ShiftAssign(O003_L1_Cutting_D4_Morning)
  ShiftAssign(O003_L1_Cutting_D4_Afternoon)
  ShiftAssign(O003_L1_Cutting_D4_Night)
  ShiftAssign(O003_L1_Cutting_D5_Morning)
  ShiftAssign(O003_L1_Cutting_D5_Afternoon)
  ShiftAssign(O003_L1_Cutting_D5_Night)
  ShiftAssign(O003_L1_Assembly_D1_Morning)
  ShiftAssign(O003_L1_Assembly_D1_Afternoon)
  ShiftAssign(O003_L1_Assembly_D1_Night)
  ShiftAssign(O003_L1_Assembly_D2_Morning)
  ShiftAssign(O003_L1_Assembly_D2_Afternoon)
  ShiftAssign(O003_L1_Assembly_D2_Night)
  ShiftAssign(O003_L1_Assembly_D3_Morning)
  ShiftAssign(O003_L1_Assembly_D3_Afternoon)
  ShiftAssign(O003_L1_Assembly_D3_Night)
  ShiftAssign(O003_L1_Assembly_D4_Morning)
  ShiftAssign(O003_L1_Assembly_D4_Afternoon)
  ShiftAssign(O003_L1_Assembly_D4_Night)
  ShiftAssign(O003_L1_Assembly_D5_Morning)
  ShiftAssign(O003_L1_Assembly_D5_Afternoon)
  ShiftAssign(O003_L1_Assembly_D5_Night)
  ShiftAssign(O004_L1_Cutting_D1_Morning)
  ShiftAssign(O004_L1_Cutting_D1_Afternoon)
  ShiftAssign(O004_L1_Cutting_D1_Night)
  ShiftAssign(O004_L1_Cutting_D2_Morning)
  ShiftAssign(O004_L1_Cutting_D2_Afternoon)
  ShiftAssign(O004_L1_Cutting_D2_Night)
  ShiftAssign(O004_L1_Cutting_D3_Morning)
  ShiftAssign(O004_L1_Cutting_D3_Afternoon)
  ShiftAssign(O004_L1_Cutting_D3_Night)
  ShiftAssign(O004_L1_Cutting_D4_Morning)
  ShiftAssign(O004_L1_Cutting_D4_Afternoon)
  ShiftAssign(O004_L1_Cutting_D4_Night)
  ShiftAssign(O004_L1_Cutting_D5_Morning)
  ShiftAssign(O004_L1_Cutting_D5_Afternoon)
  ShiftAssign(O004_L1_Cutting_D5_Night)
  ShiftAssign(O004_L1_Assembly_D1_Morning)
  ShiftAssign(O004_L1_Assembly_D1_Afternoon)
  ShiftAssign(O004_L1_Assembly_D1_Night)
  ShiftAssign(O004_L1_Assembly_D2_Morning)
  ShiftAssign(O004_L1_Assembly_D2_Afternoon)
  ShiftAssign(O004_L1_Assembly_D2_Night)
  ShiftAssign(O004_L1_Assembly_D3_Morning)
  ShiftAssign(O004_L1_Assembly_D3_Afternoon)
  ShiftAssign(O004_L1_Assembly_D3_Night)
  ShiftAssign(O004_L1_Assembly_D4_Morning)
  ShiftAssign(O004_L1_Assembly_D4_Afternoon)
  ShiftAssign(O004_L1_Assembly_D4_Night)
  ShiftAssign(O004_L1_Assembly_D5_Morning)
  ShiftAssign(O004_L1_Assembly_D5_Afternoon)
  ShiftAssign(O004_L1_Assembly_D5_Night)
  ShiftAssign(O004_L2_Cutting_D1_Morning)
  ShiftAssign(O004_L2_Cutting_D1_Afternoon)
  ShiftAssign(O004_L2_Cutting_D1_Night)
  ShiftAssign(O004_L2_Cutting_D2_Morning)
  ShiftAssign(O004_L2_Cutting_D2_Afternoon)
  ShiftAssign(O004_L2_Cutting_D2_Night)
  ShiftAssign(O004_L2_Cutting_D3_Morning)
  ShiftAssign(O004_L2_Cutting_D3_Afternoon)
  ShiftAssign(O004_L2_Cutting_D3_Night)
  ShiftAssign(O004_L2_Cutting_D4_Morning)
  ShiftAssign(O004_L2_Cutting_D4_Afternoon)
  ShiftAssign(O004_L2_Cutting_D4_Night)
  ShiftAssign(O004_L2_Cutting_D5_Morning)
  ShiftAssign(O004_L2_Cutting_D5_Afternoon)
  ShiftAssign(O004_L2_Cutting_D5_Night)
  ShiftAssign(O004_L2_Assembly_D1_Morning)
  ShiftAssign(O004_L2_Assembly_D1_Afternoon)
  ShiftAssign(O004_L2_Assembly_D1_Night)
  ShiftAssign(O004_L2_Assembly_D2_Morning)
  ShiftAssign(O004_L2_Assembly_D2_Afternoon)
  ShiftAssign(O004_L2_Assembly_D2_Night)
  ShiftAssign(O004_L2_Assembly_D3_Morning)
  ShiftAssign(O004_L2_Assembly_D3_Afternoon)
  ShiftAssign(O004_L2_Assembly_D3_Night)
  ShiftAssign(O004_L2_Assembly_D4_Morning)
  ShiftAssign(O004_L2_Assembly_D4_Afternoon)
  ShiftAssign(O004_L2_Assembly_D4_Night)
  ShiftAssign(O004_L2_Assembly_D5_Morning)
  ShiftAssign(O004_L2_Assembly_D5_Afternoon)
  ShiftAssign(O004_L2_Assembly_D5_Night)
  ShiftAssign(O005_L1_Cutting_D1_Morning)
  ShiftAssign(O005_L1_Cutting_D1_Afternoon)
  ShiftAssign(O005_L1_Cutting_D1_Night)
  ShiftAssign(O005_L1_Cutting_D2_Morning)
  ShiftAssign(O005_L1_Cutting_D2_Afternoon)
  ShiftAssign(O005_L1_Cutting_D2_Night)
  ShiftAssign(O005_L1_Cutting_D3_Morning)
  ShiftAssign(O005_L1_Cutting_D3_Afternoon)
  ShiftAssign(O005_L1_Cutting_D3_Night)
  ShiftAssign(O005_L1_Cutting_D4_Morning)
  ShiftAssign(O005_L1_Cutting_D4_Afternoon)
  ShiftAssign(O005_L1_Cutting_D4_Night)
  ShiftAssign(O005_L1_Cutting_D5_Morning)
  ShiftAssign(O005_L1_Cutting_D5_Afternoon)
  ShiftAssign(O005_L1_Cutting_D5_Night)
  ShiftAssign(O005_L1_Assembly_D1_Morning)
  ShiftAssign(O005_L1_Assembly_D1_Afternoon)
  ShiftAssign(O005_L1_Assembly_D1_Night)
  ShiftAssign(O005_L1_Assembly_D2_Morning)
  ShiftAssign(O005_L1_Assembly_D2_Afternoon)
  ShiftAssign(O005_L1_Assembly_D2_Night)
  ShiftAssign(O005_L1_Assembly_D3_Morning)
  ShiftAssign(O005_L1_Assembly_D3_Afternoon)
  ShiftAssign(O005_L1_Assembly_D3_Night)
  ShiftAssign(O005_L1_Assembly_D4_Morning)
  ShiftAssign(O005_L1_Assembly_D4_Afternoon)
  ShiftAssign(O005_L1_Assembly_D4_Night)
  ShiftAssign(O005_L1_Assembly_D5_Morning)
  ShiftAssign(O005_L1_Assembly_D5_Afternoon)
  ShiftAssign(O005_L1_Assembly_D5_Night)
  ShiftAssign(O006_L1_Cutting_D1_Morning)
  ShiftAssign(O006_L1_Cutting_D1_Afternoon)
  ShiftAssign(O006_L1_Cutting_D1_Night)
  ShiftAssign(O006_L1_Cutting_D2_Morning)
  ShiftAssign(O006_L1_Cutting_D2_Afternoon)
  ShiftAssign(O006_L1_Cutting_D2_Night)
  ShiftAssign(O006_L1_Cutting_D3_Morning)
  ShiftAssign(O006_L1_Cutting_D3_Afternoon)
  ShiftAssign(O006_L1_Cutting_D3_Night)
  ShiftAssign(O006_L1_Cutting_D4_Morning)
  ShiftAssign(O006_L1_Cutting_D4_Afternoon)
  ShiftAssign(O006_L1_Cutting_D4_Night)
  ShiftAssign(O006_L1_Cutting_D5_Morning)
  ShiftAssign(O006_L1_Cutting_D5_Afternoon)
  ShiftAssign(O006_L1_Cutting_D5_Night)
  ShiftAssign(O006_L1_Assembly_D1_Morning)
  ShiftAssign(O006_L1_Assembly_D1_Afternoon)
  ShiftAssign(O006_L1_Assembly_D1_Night)
  ShiftAssign(O006_L1_Assembly_D2_Morning)
  ShiftAssign(O006_L1_Assembly_D2_Afternoon)
  ShiftAssign(O006_L1_Assembly_D2_Night)
  ShiftAssign(O006_L1_Assembly_D3_Morning)
  ShiftAssign(O006_L1_Assembly_D3_Afternoon)
  ShiftAssign(O006_L1_Assembly_D3_Night)
  ShiftAssign(O006_L1_Assembly_D4_Morning)
  ShiftAssign(O006_L1_Assembly_D4_Afternoon)
  ShiftAssign(O006_L1_Assembly_D4_Night)
  ShiftAssign(O006_L1_Assembly_D5_Morning)
  ShiftAssign(O006_L1_Assembly_D5_Afternoon)
  ShiftAssign(O006_L1_Assembly_D5_Night)
  OpAssign(O001_L1_Cutting_OP02)
  OpAssign(O001_L1_Cutting_OP03)
  OpAssign(O001_L1_Cutting_OP04)
  OpAssign(O001_L1_Assembly_OP01)
  OpAssign(O001_L1_Assembly_OP02)
  OpAssign(O001_L1_Assembly_OP04)
  OpAssign(O002_L1_Cutting_OP01)
  OpAssign(O002_L1_Cutting_OP03)
  OpAssign(O002_L1_Cutting_OP04)
  OpAssign(O002_L1_Assembly_OP01)
  OpAssign(O002_L1_Assembly_OP02)
  OpAssign(O002_L1_Assembly_OP04)
  OpAssign(O003_L1_Cutting_OP01)
  OpAssign(O003_L1_Cutting_OP03)
  OpAssign(O003_L1_Cutting_OP04)
  OpAssign(O003_L1_Assembly_OP01)
  OpAssign(O003_L1_Assembly_OP02)
  OpAssign(O003_L1_Assembly_OP04)
  OpAssign(O004_L1_Cutting_OP01)
  OpAssign(O004_L1_Cutting_OP03)
  OpAssign(O004_L1_Cutting_OP04)
  OpAssign(O004_L1_Assembly_OP01)
  OpAssign(O004_L1_Assembly_OP02)
  OpAssign(O004_L1_Assembly_OP04)
  OpAssign(O004_L2_Cutting_OP01)
  OpAssign(O004_L2_Cutting_OP03)
  OpAssign(O004_L2_Cutting_OP04)
  OpAssign(O004_L2_Assembly_OP01)
  OpAssign(O004_L2_Assembly_OP02)
  OpAssign(O004_L2_Assembly_OP04)
  OpAssign(O005_L1_Cutting_OP01)
  OpAssign(O005_L1_Cutting_OP03)
  OpAssign(O005_L1_Cutting_OP04)
  OpAssign(O005_L1_Assembly_OP01)
  OpAssign(O005_L1_Assembly_OP02)
  OpAssign(O005_L1_Assembly_OP04)
  OpAssign(O006_L1_Cutting_OP01)
  OpAssign(O006_L1_Cutting_OP03)
  OpAssign(O006_L1_Cutting_OP04)
  OpAssign(O006_L1_Assembly_OP01)
  OpAssign(O006_L1_Assembly_OP02)
  OpAssign(O006_L1_Assembly_OP04)
  OpInShift(O001_L1_Cutting_OP02_D1_Morning)
  OpInShift(O001_L1_Cutting_OP02_D1_Afternoon)
  OpInShift(O001_L1_Cutting_OP02_D1_Night)
  OpInShift(O001_L1_Cutting_OP02_D2_Morning)
  OpInShift(O001_L1_Cutting_OP02_D2_Afternoon)
  OpInShift(O001_L1_Cutting_OP02_D2_Night)
  OpInShift(O001_L1_Cutting_OP02_D3_Morning)
  OpInShift(O001_L1_Cutting_OP02_D3_Afternoon)
  OpInShift(O001_L1_Cutting_OP02_D3_Night)
  OpInShift(O001_L1_Cutting_OP02_D4_Morning)
  OpInShift(O001_L1_Cutting_OP02_D4_Afternoon)
  OpInShift(O001_L1_Cutting_OP02_D4_Night)
  OpInShift(O001_L1_Cutting_OP02_D5_Morning)
  OpInShift(O001_L1_Cutting_OP02_D5_Afternoon)
  OpInShift(O001_L1_Cutting_OP02_D5_Night)
  OpInShift(O001_L1_Cutting_OP03_D1_Morning)
  OpInShift(O001_L1_Cutting_OP03_D1_Afternoon)
  OpInShift(O001_L1_Cutting_OP03_D1_Night)
  OpInShift(O001_L1_Cutting_OP03_D2_Morning)
  OpInShift(O001_L1_Cutting_OP03_D2_Afternoon)
  OpInShift(O001_L1_Cutting_OP03_D2_Night)
  OpInShift(O001_L1_Cutting_OP03_D3_Morning)
  OpInShift(O001_L1_Cutting_OP03_D3_Afternoon)
  OpInShift(O001_L1_Cutting_OP03_D3_Night)
  OpInShift(O001_L1_Cutting_OP03_D4_Morning)
  OpInShift(O001_L1_Cutting_OP03_D4_Afternoon)
  OpInShift(O001_L1_Cutting_OP03_D4_Night)
  OpInShift(O001_L1_Cutting_OP03_D5_Morning)
  OpInShift(O001_L1_Cutting_OP03_D5_Afternoon)
  OpInShift(O001_L1_Cutting_OP03_D5_Night)
  OpInShift(O001_L1_Cutting_OP04_D1_Morning)
  OpInShift(O001_L1_Cutting_OP04_D1_Afternoon)
  OpInShift(O001_L1_Cutting_OP04_D1_Night)
  OpInShift(O001_L1_Cutting_OP04_D2_Morning)
  OpInShift(O001_L1_Cutting_OP04_D2_Afternoon)
  OpInShift(O001_L1_Cutting_OP04_D2_Night)
  OpInShift(O001_L1_Cutting_OP04_D3_Morning)
  OpInShift(O001_L1_Cutting_OP04_D3_Afternoon)
  OpInShift(O001_L1_Cutting_OP04_D3_Night)
  OpInShift(O001_L1_Cutting_OP04_D4_Morning)
  OpInShift(O001_L1_Cutting_OP04_D4_Afternoon)
  OpInShift(O001_L1_Cutting_OP04_D4_Night)
  OpInShift(O001_L1_Cutting_OP04_D5_Morning)
  OpInShift(O001_L1_Cutting_OP04_D5_Afternoon)
  OpInShift(O001_L1_Cutting_OP04_D5_Night)
  OpInShift(O001_L1_Assembly_OP01_D1_Morning)
  OpInShift(O001_L1_Assembly_OP01_D1_Afternoon)
  OpInShift(O001_L1_Assembly_OP01_D1_Night)
  OpInShift(O001_L1_Assembly_OP01_D2_Morning)
  OpInShift(O001_L1_Assembly_OP01_D2_Afternoon)
  OpInShift(O001_L1_Assembly_OP01_D2_Night)
  OpInShift(O001_L1_Assembly_OP01_D3_Morning)
  OpInShift(O001_L1_Assembly_OP01_D3_Afternoon)
  OpInShift(O001_L1_Assembly_OP01_D3_Night)
  OpInShift(O001_L1_Assembly_OP01_D4_Morning)
  OpInShift(O001_L1_Assembly_OP01_D4_Afternoon)
  OpInShift(O001_L1_Assembly_OP01_D4_Night)
  OpInShift(O001_L1_Assembly_OP01_D5_Morning)
  OpInShift(O001_L1_Assembly_OP01_D5_Afternoon)
  OpInShift(O001_L1_Assembly_OP01_D5_Night)
  OpInShift(O001_L1_Assembly_OP02_D1_Morning)
  OpInShift(O001_L1_Assembly_OP02_D1_Afternoon)
  OpInShift(O001_L1_Assembly_OP02_D1_Night)
  OpInShift(O001_L1_Assembly_OP02_D2_Morning)
  OpInShift(O001_L1_Assembly_OP02_D2_Afternoon)
  OpInShift(O001_L1_Assembly_OP02_D2_Night)
  OpInShift(O001_L1_Assembly_OP02_D3_Morning)
  OpInShift(O001_L1_Assembly_OP02_D3_Afternoon)
  OpInShift(O001_L1_Assembly_OP02_D3_Night)
  OpInShift(O001_L1_Assembly_OP02_D4_Morning)
  OpInShift(O001_L1_Assembly_OP02_D4_Afternoon)
  OpInShift(O001_L1_Assembly_OP02_D4_Night)
  OpInShift(O001_L1_Assembly_OP02_D5_Morning)
  OpInShift(O001_L1_Assembly_OP02_D5_Afternoon)
  OpInShift(O001_L1_Assembly_OP02_D5_Night)
  OpInShift(O001_L1_Assembly_OP04_D1_Morning)
  OpInShift(O001_L1_Assembly_OP04_D1_Afternoon)
  OpInShift(O001_L1_Assembly_OP04_D1_Night)
  OpInShift(O001_L1_Assembly_OP04_D2_Morning)
  OpInShift(O001_L1_Assembly_OP04_D2_Afternoon)
  OpInShift(O001_L1_Assembly_OP04_D2_Night)
  OpInShift(O001_L1_Assembly_OP04_D3_Morning)
  OpInShift(O001_L1_Assembly_OP04_D3_Afternoon)
  OpInShift(O001_L1_Assembly_OP04_D3_Night)
  OpInShift(O001_L1_Assembly_OP04_D4_Morning)
  OpInShift(O001_L1_Assembly_OP04_D4_Afternoon)
  OpInShift(O001_L1_Assembly_OP04_D4_Night)
  OpInShift(O001_L1_Assembly_OP04_D5_Morning)
  OpInShift(O001_L1_Assembly_OP04_D5_Afternoon)
  OpInShift(O001_L1_Assembly_OP04_D5_Night)
  OpInShift(O002_L1_Cutting_OP01_D1_Morning)
  OpInShift(O002_L1_Cutting_OP01_D1_Afternoon)
  OpInShift(O002_L1_Cutting_OP01_D1_Night)
  OpInShift(O002_L1_Cutting_OP01_D2_Morning)
  OpInShift(O002_L1_Cutting_OP01_D2_Afternoon)
  OpInShift(O002_L1_Cutting_OP01_D2_Night)
  OpInShift(O002_L1_Cutting_OP01_D3_Morning)
  OpInShift(O002_L1_Cutting_OP01_D3_Afternoon)
  OpInShift(O002_L1_Cutting_OP01_D3_Night)
  OpInShift(O002_L1_Cutting_OP01_D4_Morning)
  OpInShift(O002_L1_Cutting_OP01_D4_Afternoon)
  OpInShift(O002_L1_Cutting_OP01_D4_Night)
  OpInShift(O002_L1_Cutting_OP01_D5_Morning)
  OpInShift(O002_L1_Cutting_OP01_D5_Afternoon)
  OpInShift(O002_L1_Cutting_OP01_D5_Night)
  OpInShift(O002_L1_Cutting_OP03_D1_Morning)
  OpInShift(O002_L1_Cutting_OP03_D1_Afternoon)
  OpInShift(O002_L1_Cutting_OP03_D1_Night)
  OpInShift(O002_L1_Cutting_OP03_D2_Morning)
  OpInShift(O002_L1_Cutting_OP03_D2_Afternoon)
  OpInShift(O002_L1_Cutting_OP03_D2_Night)
  OpInShift(O002_L1_Cutting_OP03_D3_Morning)
  OpInShift(O002_L1_Cutting_OP03_D3_Afternoon)
  OpInShift(O002_L1_Cutting_OP03_D3_Night)
  OpInShift(O002_L1_Cutting_OP03_D4_Morning)
  OpInShift(O002_L1_Cutting_OP03_D4_Afternoon)
  OpInShift(O002_L1_Cutting_OP03_D4_Night)
  OpInShift(O002_L1_Cutting_OP03_D5_Morning)
  OpInShift(O002_L1_Cutting_OP03_D5_Afternoon)
  OpInShift(O002_L1_Cutting_OP03_D5_Night)
  OpInShift(O002_L1_Cutting_OP04_D1_Morning)
  OpInShift(O002_L1_Cutting_OP04_D1_Afternoon)
  OpInShift(O002_L1_Cutting_OP04_D1_Night)
  OpInShift(O002_L1_Cutting_OP04_D2_Morning)
  OpInShift(O002_L1_Cutting_OP04_D2_Afternoon)
  OpInShift(O002_L1_Cutting_OP04_D2_Night)
  OpInShift(O002_L1_Cutting_OP04_D3_Morning)
  OpInShift(O002_L1_Cutting_OP04_D3_Afternoon)
  OpInShift(O002_L1_Cutting_OP04_D3_Night)
  OpInShift(O002_L1_Cutting_OP04_D4_Morning)
  OpInShift(O002_L1_Cutting_OP04_D4_Afternoon)
  OpInShift(O002_L1_Cutting_OP04_D4_Night)
  OpInShift(O002_L1_Cutting_OP04_D5_Morning)
  OpInShift(O002_L1_Cutting_OP04_D5_Afternoon)
  OpInShift(O002_L1_Cutting_OP04_D5_Night)
  OpInShift(O002_L1_Assembly_OP01_D1_Morning)
  OpInShift(O002_L1_Assembly_OP01_D1_Afternoon)
  OpInShift(O002_L1_Assembly_OP01_D1_Night)
  OpInShift(O002_L1_Assembly_OP01_D2_Morning)
  OpInShift(O002_L1_Assembly_OP01_D2_Afternoon)
  OpInShift(O002_L1_Assembly_OP01_D2_Night)
  OpInShift(O002_L1_Assembly_OP01_D3_Morning)
  OpInShift(O002_L1_Assembly_OP01_D3_Afternoon)
  OpInShift(O002_L1_Assembly_OP01_D3_Night)
  OpInShift(O002_L1_Assembly_OP01_D4_Morning)
  OpInShift(O002_L1_Assembly_OP01_D4_Afternoon)
  OpInShift(O002_L1_Assembly_OP01_D4_Night)
  OpInShift(O002_L1_Assembly_OP01_D5_Morning)
  OpInShift(O002_L1_Assembly_OP01_D5_Afternoon)
  OpInShift(O002_L1_Assembly_OP01_D5_Night)
  OpInShift(O002_L1_Assembly_OP02_D1_Morning)
  OpInShift(O002_L1_Assembly_OP02_D1_Afternoon)
  OpInShift(O002_L1_Assembly_OP02_D1_Night)
  OpInShift(O002_L1_Assembly_OP02_D2_Morning)
  OpInShift(O002_L1_Assembly_OP02_D2_Afternoon)
  OpInShift(O002_L1_Assembly_OP02_D2_Night)
  OpInShift(O002_L1_Assembly_OP02_D3_Morning)
  OpInShift(O002_L1_Assembly_OP02_D3_Afternoon)
  OpInShift(O002_L1_Assembly_OP02_D3_Night)
  OpInShift(O002_L1_Assembly_OP02_D4_Morning)
  OpInShift(O002_L1_Assembly_OP02_D4_Afternoon)
  OpInShift(O002_L1_Assembly_OP02_D4_Night)
  OpInShift(O002_L1_Assembly_OP02_D5_Morning)
  OpInShift(O002_L1_Assembly_OP02_D5_Afternoon)
  OpInShift(O002_L1_Assembly_OP02_D5_Night)
  OpInShift(O002_L1_Assembly_OP04_D1_Morning)
  OpInShift(O002_L1_Assembly_OP04_D1_Afternoon)
  OpInShift(O002_L1_Assembly_OP04_D1_Night)
  OpInShift(O002_L1_Assembly_OP04_D2_Morning)
  OpInShift(O002_L1_Assembly_OP04_D2_Afternoon)
  OpInShift(O002_L1_Assembly_OP04_D2_Night)
  OpInShift(O002_L1_Assembly_OP04_D3_Morning)
  OpInShift(O002_L1_Assembly_OP04_D3_Afternoon)
  OpInShift(O002_L1_Assembly_OP04_D3_Night)
  OpInShift(O002_L1_Assembly_OP04_D4_Morning)
  OpInShift(O002_L1_Assembly_OP04_D4_Afternoon)
  OpInShift(O002_L1_Assembly_OP04_D4_Night)
  OpInShift(O002_L1_Assembly_OP04_D5_Morning)
  OpInShift(O002_L1_Assembly_OP04_D5_Afternoon)
  OpInShift(O002_L1_Assembly_OP04_D5_Night)
  OpInShift(O003_L1_Cutting_OP01_D1_Morning)
  OpInShift(O003_L1_Cutting_OP01_D1_Afternoon)
  OpInShift(O003_L1_Cutting_OP01_D1_Night)
  OpInShift(O003_L1_Cutting_OP01_D2_Morning)
  OpInShift(O003_L1_Cutting_OP01_D2_Afternoon)
  OpInShift(O003_L1_Cutting_OP01_D2_Night)
  OpInShift(O003_L1_Cutting_OP01_D3_Morning)
  OpInShift(O003_L1_Cutting_OP01_D3_Afternoon)
  OpInShift(O003_L1_Cutting_OP01_D3_Night)
  OpInShift(O003_L1_Cutting_OP01_D4_Morning)
  OpInShift(O003_L1_Cutting_OP01_D4_Afternoon)
  OpInShift(O003_L1_Cutting_OP01_D4_Night)
  OpInShift(O003_L1_Cutting_OP01_D5_Morning)
  OpInShift(O003_L1_Cutting_OP01_D5_Afternoon)
  OpInShift(O003_L1_Cutting_OP01_D5_Night)
  OpInShift(O003_L1_Cutting_OP03_D1_Morning)
  OpInShift(O003_L1_Cutting_OP03_D1_Afternoon)
  OpInShift(O003_L1_Cutting_OP03_D1_Night)
  OpInShift(O003_L1_Cutting_OP03_D2_Morning)
  OpInShift(O003_L1_Cutting_OP03_D2_Afternoon)
  OpInShift(O003_L1_Cutting_OP03_D2_Night)
  OpInShift(O003_L1_Cutting_OP03_D3_Morning)
  OpInShift(O003_L1_Cutting_OP03_D3_Afternoon)
  OpInShift(O003_L1_Cutting_OP03_D3_Night)
  OpInShift(O003_L1_Cutting_OP03_D4_Morning)
  OpInShift(O003_L1_Cutting_OP03_D4_Afternoon)
  OpInShift(O003_L1_Cutting_OP03_D4_Night)
  OpInShift(O003_L1_Cutting_OP03_D5_Morning)
  OpInShift(O003_L1_Cutting_OP03_D5_Afternoon)
  OpInShift(O003_L1_Cutting_OP03_D5_Night)
  OpInShift(O003_L1_Cutting_OP04_D1_Morning)
  OpInShift(O003_L1_Cutting_OP04_D1_Afternoon)
  OpInShift(O003_L1_Cutting_OP04_D1_Night)
  OpInShift(O003_L1_Cutting_OP04_D2_Morning)
  OpInShift(O003_L1_Cutting_OP04_D2_Afternoon)
  OpInShift(O003_L1_Cutting_OP04_D2_Night)
  OpInShift(O003_L1_Cutting_OP04_D3_Morning)
  OpInShift(O003_L1_Cutting_OP04_D3_Afternoon)
  OpInShift(O003_L1_Cutting_OP04_D3_Night)
  OpInShift(O003_L1_Cutting_OP04_D4_Morning)
  OpInShift(O003_L1_Cutting_OP04_D4_Afternoon)
  OpInShift(O003_L1_Cutting_OP04_D4_Night)
  OpInShift(O003_L1_Cutting_OP04_D5_Morning)
  OpInShift(O003_L1_Cutting_OP04_D5_Afternoon)
  OpInShift(O003_L1_Cutting_OP04_D5_Night)
  OpInShift(O003_L1_Assembly_OP01_D1_Morning)
  OpInShift(O003_L1_Assembly_OP01_D1_Afternoon)
  OpInShift(O003_L1_Assembly_OP01_D1_Night)
  OpInShift(O003_L1_Assembly_OP01_D2_Morning)
  OpInShift(O003_L1_Assembly_OP01_D2_Afternoon)
  OpInShift(O003_L1_Assembly_OP01_D2_Night)
  OpInShift(O003_L1_Assembly_OP01_D3_Morning)
  OpInShift(O003_L1_Assembly_OP01_D3_Afternoon)
  OpInShift(O003_L1_Assembly_OP01_D3_Night)
  OpInShift(O003_L1_Assembly_OP01_D4_Morning)
  OpInShift(O003_L1_Assembly_OP01_D4_Afternoon)
  OpInShift(O003_L1_Assembly_OP01_D4_Night)
  OpInShift(O003_L1_Assembly_OP01_D5_Morning)
  OpInShift(O003_L1_Assembly_OP01_D5_Afternoon)
  OpInShift(O003_L1_Assembly_OP01_D5_Night)
  OpInShift(O003_L1_Assembly_OP02_D1_Morning)
  OpInShift(O003_L1_Assembly_OP02_D1_Afternoon)
  OpInShift(O003_L1_Assembly_OP02_D1_Night)
  OpInShift(O003_L1_Assembly_OP02_D2_Morning)
  OpInShift(O003_L1_Assembly_OP02_D2_Afternoon)
  OpInShift(O003_L1_Assembly_OP02_D2_Night)
  OpInShift(O003_L1_Assembly_OP02_D3_Morning)
  OpInShift(O003_L1_Assembly_OP02_D3_Afternoon)
  OpInShift(O003_L1_Assembly_OP02_D3_Night)
  OpInShift(O003_L1_Assembly_OP02_D4_Morning)
  OpInShift(O003_L1_Assembly_OP02_D4_Afternoon)
  OpInShift(O003_L1_Assembly_OP02_D4_Night)
  OpInShift(O003_L1_Assembly_OP02_D5_Morning)
  OpInShift(O003_L1_Assembly_OP02_D5_Afternoon)
  OpInShift(O003_L1_Assembly_OP02_D5_Night)
  OpInShift(O003_L1_Assembly_OP04_D1_Morning)
  OpInShift(O003_L1_Assembly_OP04_D1_Afternoon)
  OpInShift(O003_L1_Assembly_OP04_D1_Night)
  OpInShift(O003_L1_Assembly_OP04_D2_Morning)
  OpInShift(O003_L1_Assembly_OP04_D2_Afternoon)
  OpInShift(O003_L1_Assembly_OP04_D2_Night)
  OpInShift(O003_L1_Assembly_OP04_D3_Morning)
  OpInShift(O003_L1_Assembly_OP04_D3_Afternoon)
  OpInShift(O003_L1_Assembly_OP04_D3_Night)
  OpInShift(O003_L1_Assembly_OP04_D4_Morning)
  OpInShift(O003_L1_Assembly_OP04_D4_Afternoon)
  OpInShift(O003_L1_Assembly_OP04_D4_Night)
  OpInShift(O003_L1_Assembly_OP04_D5_Morning)
  OpInShift(O003_L1_Assembly_OP04_D5_Afternoon)
  OpInShift(O003_L1_Assembly_OP04_D5_Night)
  OpInShift(O004_L1_Cutting_OP01_D1_Morning)
  OpInShift(O004_L1_Cutting_OP01_D1_Afternoon)
  OpInShift(O004_L1_Cutting_OP01_D1_Night)
  OpInShift(O004_L1_Cutting_OP01_D2_Morning)
  OpInShift(O004_L1_Cutting_OP01_D2_Afternoon)
  OpInShift(O004_L1_Cutting_OP01_D2_Night)
  OpInShift(O004_L1_Cutting_OP01_D3_Morning)
  OpInShift(O004_L1_Cutting_OP01_D3_Afternoon)
  OpInShift(O004_L1_Cutting_OP01_D3_Night)
  OpInShift(O004_L1_Cutting_OP01_D4_Morning)
  OpInShift(O004_L1_Cutting_OP01_D4_Afternoon)
  OpInShift(O004_L1_Cutting_OP01_D4_Night)
  OpInShift(O004_L1_Cutting_OP01_D5_Morning)
  OpInShift(O004_L1_Cutting_OP01_D5_Afternoon)
  OpInShift(O004_L1_Cutting_OP01_D5_Night)
  OpInShift(O004_L1_Cutting_OP03_D1_Morning)
  OpInShift(O004_L1_Cutting_OP03_D1_Afternoon)
  OpInShift(O004_L1_Cutting_OP03_D1_Night)
  OpInShift(O004_L1_Cutting_OP03_D2_Morning)
  OpInShift(O004_L1_Cutting_OP03_D2_Afternoon)
  OpInShift(O004_L1_Cutting_OP03_D2_Night)
  OpInShift(O004_L1_Cutting_OP03_D3_Morning)
  OpInShift(O004_L1_Cutting_OP03_D3_Afternoon)
  OpInShift(O004_L1_Cutting_OP03_D3_Night)
  OpInShift(O004_L1_Cutting_OP03_D4_Morning)
  OpInShift(O004_L1_Cutting_OP03_D4_Afternoon)
  OpInShift(O004_L1_Cutting_OP03_D4_Night)
  OpInShift(O004_L1_Cutting_OP03_D5_Morning)
  OpInShift(O004_L1_Cutting_OP03_D5_Afternoon)
  OpInShift(O004_L1_Cutting_OP03_D5_Night)
  OpInShift(O004_L1_Cutting_OP04_D1_Morning)
  OpInShift(O004_L1_Cutting_OP04_D1_Afternoon)
  OpInShift(O004_L1_Cutting_OP04_D1_Night)
  OpInShift(O004_L1_Cutting_OP04_D2_Morning)
  OpInShift(O004_L1_Cutting_OP04_D2_Afternoon)
  OpInShift(O004_L1_Cutting_OP04_D2_Night)
  OpInShift(O004_L1_Cutting_OP04_D3_Morning)
  OpInShift(O004_L1_Cutting_OP04_D3_Afternoon)
  OpInShift(O004_L1_Cutting_OP04_D3_Night)
  OpInShift(O004_L1_Cutting_OP04_D4_Morning)
  OpInShift(O004_L1_Cutting_OP04_D4_Afternoon)
  OpInShift(O004_L1_Cutting_OP04_D4_Night)
  OpInShift(O004_L1_Cutting_OP04_D5_Morning)
  OpInShift(O004_L1_Cutting_OP04_D5_Afternoon)
  OpInShift(O004_L1_Cutting_OP04_D5_Night)
  OpInShift(O004_L1_Assembly_OP01_D1_Morning)
  OpInShift(O004_L1_Assembly_OP01_D1_Afternoon)
  OpInShift(O004_L1_Assembly_OP01_D1_Night)
  OpInShift(O004_L1_Assembly_OP01_D2_Morning)
  OpInShift(O004_L1_Assembly_OP01_D2_Afternoon)
  OpInShift(O004_L1_Assembly_OP01_D2_Night)
  OpInShift(O004_L1_Assembly_OP01_D3_Morning)
  OpInShift(O004_L1_Assembly_OP01_D3_Afternoon)
  OpInShift(O004_L1_Assembly_OP01_D3_Night)
  OpInShift(O004_L1_Assembly_OP01_D4_Morning)
  OpInShift(O004_L1_Assembly_OP01_D4_Afternoon)
  OpInShift(O004_L1_Assembly_OP01_D4_Night)
  OpInShift(O004_L1_Assembly_OP01_D5_Morning)
  OpInShift(O004_L1_Assembly_OP01_D5_Afternoon)
  OpInShift(O004_L1_Assembly_OP01_D5_Night)
  OpInShift(O004_L1_Assembly_OP02_D1_Morning)
  OpInShift(O004_L1_Assembly_OP02_D1_Afternoon)
  OpInShift(O004_L1_Assembly_OP02_D1_Night)
  OpInShift(O004_L1_Assembly_OP02_D2_Morning)
  OpInShift(O004_L1_Assembly_OP02_D2_Afternoon)
  OpInShift(O004_L1_Assembly_OP02_D2_Night)
  OpInShift(O004_L1_Assembly_OP02_D3_Morning)
  OpInShift(O004_L1_Assembly_OP02_D3_Afternoon)
  OpInShift(O004_L1_Assembly_OP02_D3_Night)
  OpInShift(O004_L1_Assembly_OP02_D4_Morning)
  OpInShift(O004_L1_Assembly_OP02_D4_Afternoon)
  OpInShift(O004_L1_Assembly_OP02_D4_Night)
  OpInShift(O004_L1_Assembly_OP02_D5_Morning)
  OpInShift(O004_L1_Assembly_OP02_D5_Afternoon)
  OpInShift(O004_L1_Assembly_OP02_D5_Night)
  OpInShift(O004_L1_Assembly_OP04_D1_Morning)
  OpInShift(O004_L1_Assembly_OP04_D1_Afternoon)
  OpInShift(O004_L1_Assembly_OP04_D1_Night)
  OpInShift(O004_L1_Assembly_OP04_D2_Morning)
  OpInShift(O004_L1_Assembly_OP04_D2_Afternoon)
  OpInShift(O004_L1_Assembly_OP04_D2_Night)
  OpInShift(O004_L1_Assembly_OP04_D3_Morning)
  OpInShift(O004_L1_Assembly_OP04_D3_Afternoon)
  OpInShift(O004_L1_Assembly_OP04_D3_Night)
  OpInShift(O004_L1_Assembly_OP04_D4_Morning)
  OpInShift(O004_L1_Assembly_OP04_D4_Afternoon)
  OpInShift(O004_L1_Assembly_OP04_D4_Night)
  OpInShift(O004_L1_Assembly_OP04_D5_Morning)
  OpInShift(O004_L1_Assembly_OP04_D5_Afternoon)
  OpInShift(O004_L1_Assembly_OP04_D5_Night)
  OpInShift(O004_L2_Cutting_OP01_D1_Morning)
  OpInShift(O004_L2_Cutting_OP01_D1_Afternoon)
  OpInShift(O004_L2_Cutting_OP01_D1_Night)
  OpInShift(O004_L2_Cutting_OP01_D2_Morning)
  OpInShift(O004_L2_Cutting_OP01_D2_Afternoon)
  OpInShift(O004_L2_Cutting_OP01_D2_Night)
  OpInShift(O004_L2_Cutting_OP01_D3_Morning)
  OpInShift(O004_L2_Cutting_OP01_D3_Afternoon)
  OpInShift(O004_L2_Cutting_OP01_D3_Night)
  OpInShift(O004_L2_Cutting_OP01_D4_Morning)
  OpInShift(O004_L2_Cutting_OP01_D4_Afternoon)
  OpInShift(O004_L2_Cutting_OP01_D4_Night)
  OpInShift(O004_L2_Cutting_OP01_D5_Morning)
  OpInShift(O004_L2_Cutting_OP01_D5_Afternoon)
  OpInShift(O004_L2_Cutting_OP01_D5_Night)
  OpInShift(O004_L2_Cutting_OP03_D1_Morning)
  OpInShift(O004_L2_Cutting_OP03_D1_Afternoon)
  OpInShift(O004_L2_Cutting_OP03_D1_Night)
  OpInShift(O004_L2_Cutting_OP03_D2_Morning)
  OpInShift(O004_L2_Cutting_OP03_D2_Afternoon)
  OpInShift(O004_L2_Cutting_OP03_D2_Night)
  OpInShift(O004_L2_Cutting_OP03_D3_Morning)
  OpInShift(O004_L2_Cutting_OP03_D3_Afternoon)
  OpInShift(O004_L2_Cutting_OP03_D3_Night)
  OpInShift(O004_L2_Cutting_OP03_D4_Morning)
  OpInShift(O004_L2_Cutting_OP03_D4_Afternoon)
  OpInShift(O004_L2_Cutting_OP03_D4_Night)
  OpInShift(O004_L2_Cutting_OP03_D5_Morning)
  OpInShift(O004_L2_Cutting_OP03_D5_Afternoon)
  OpInShift(O004_L2_Cutting_OP03_D5_Night)
  OpInShift(O004_L2_Cutting_OP04_D1_Morning)
  OpInShift(O004_L2_Cutting_OP04_D1_Afternoon)
  OpInShift(O004_L2_Cutting_OP04_D1_Night)
  OpInShift(O004_L2_Cutting_OP04_D2_Morning)
  OpInShift(O004_L2_Cutting_OP04_D2_Afternoon)
  OpInShift(O004_L2_Cutting_OP04_D2_Night)
  OpInShift(O004_L2_Cutting_OP04_D3_Morning)
  OpInShift(O004_L2_Cutting_OP04_D3_Afternoon)
  OpInShift(O004_L2_Cutting_OP04_D3_Night)
  OpInShift(O004_L2_Cutting_OP04_D4_Morning)
  OpInShift(O004_L2_Cutting_OP04_D4_Afternoon)
  OpInShift(O004_L2_Cutting_OP04_D4_Night)
  OpInShift(O004_L2_Cutting_OP04_D5_Morning)
  OpInShift(O004_L2_Cutting_OP04_D5_Afternoon)
  OpInShift(O004_L2_Cutting_OP04_D5_Night)
  OpInShift(O004_L2_Assembly_OP01_D1_Morning)
  OpInShift(O004_L2_Assembly_OP01_D1_Afternoon)
  OpInShift(O004_L2_Assembly_OP01_D1_Night)
  OpInShift(O004_L2_Assembly_OP01_D2_Morning)
  OpInShift(O004_L2_Assembly_OP01_D2_Afternoon)
  OpInShift(O004_L2_Assembly_OP01_D2_Night)
  OpInShift(O004_L2_Assembly_OP01_D3_Morning)
  OpInShift(O004_L2_Assembly_OP01_D3_Afternoon)
  OpInShift(O004_L2_Assembly_OP01_D3_Night)
  OpInShift(O004_L2_Assembly_OP01_D4_Morning)
  OpInShift(O004_L2_Assembly_OP01_D4_Afternoon)
  OpInShift(O004_L2_Assembly_OP01_D4_Night)
  OpInShift(O004_L2_Assembly_OP01_D5_Morning)
  OpInShift(O004_L2_Assembly_OP01_D5_Afternoon)
  OpInShift(O004_L2_Assembly_OP01_D5_Night)
  OpInShift(O004_L2_Assembly_OP02_D1_Morning)
  OpInShift(O004_L2_Assembly_OP02_D1_Afternoon)
  OpInShift(O004_L2_Assembly_OP02_D1_Night)
  OpInShift(O004_L2_Assembly_OP02_D2_Morning)
  OpInShift(O004_L2_Assembly_OP02_D2_Afternoon)
  OpInShift(O004_L2_Assembly_OP02_D2_Night)
  OpInShift(O004_L2_Assembly_OP02_D3_Morning)
  OpInShift(O004_L2_Assembly_OP02_D3_Afternoon)
  OpInShift(O004_L2_Assembly_OP02_D3_Night)
  OpInShift(O004_L2_Assembly_OP02_D4_Morning)
  OpInShift(O004_L2_Assembly_OP02_D4_Afternoon)
  OpInShift(O004_L2_Assembly_OP02_D4_Night)
  OpInShift(O004_L2_Assembly_OP02_D5_Morning)
  OpInShift(O004_L2_Assembly_OP02_D5_Afternoon)
  OpInShift(O004_L2_Assembly_OP02_D5_Night)
  OpInShift(O004_L2_Assembly_OP04_D1_Morning)
  OpInShift(O004_L2_Assembly_OP04_D1_Afternoon)
  OpInShift(O004_L2_Assembly_OP04_D1_Night)
  OpInShift(O004_L2_Assembly_OP04_D2_Morning)
  OpInShift(O004_L2_Assembly_OP04_D2_Afternoon)
  OpInShift(O004_L2_Assembly_OP04_D2_Night)
  OpInShift(O004_L2_Assembly_OP04_D3_Morning)
  OpInShift(O004_L2_Assembly_OP04_D3_Afternoon)
  OpInShift(O004_L2_Assembly_OP04_D3_Night)
  OpInShift(O004_L2_Assembly_OP04_D4_Morning)
  OpInShift(O004_L2_Assembly_OP04_D4_Afternoon)
  OpInShift(O004_L2_Assembly_OP04_D4_Night)
  OpInShift(O004_L2_Assembly_OP04_D5_Morning)
  OpInShift(O004_L2_Assembly_OP04_D5_Afternoon)
  OpInShift(O004_L2_Assembly_OP04_D5_Night)
  OpInShift(O005_L1_Cutting_OP01_D1_Morning)
  OpInShift(O005_L1_Cutting_OP01_D1_Afternoon)
  OpInShift(O005_L1_Cutting_OP01_D1_Night)
  OpInShift(O005_L1_Cutting_OP01_D2_Morning)
  OpInShift(O005_L1_Cutting_OP01_D2_Afternoon)
  OpInShift(O005_L1_Cutting_OP01_D2_Night)
  OpInShift(O005_L1_Cutting_OP01_D3_Morning)
  OpInShift(O005_L1_Cutting_OP01_D3_Afternoon)
  OpInShift(O005_L1_Cutting_OP01_D3_Night)
  OpInShift(O005_L1_Cutting_OP01_D4_Morning)
  OpInShift(O005_L1_Cutting_OP01_D4_Afternoon)
  OpInShift(O005_L1_Cutting_OP01_D4_Night)
  OpInShift(O005_L1_Cutting_OP01_D5_Morning)
  OpInShift(O005_L1_Cutting_OP01_D5_Afternoon)
  OpInShift(O005_L1_Cutting_OP01_D5_Night)
  OpInShift(O005_L1_Cutting_OP03_D1_Morning)
  OpInShift(O005_L1_Cutting_OP03_D1_Afternoon)
  OpInShift(O005_L1_Cutting_OP03_D1_Night)
  OpInShift(O005_L1_Cutting_OP03_D2_Morning)
  OpInShift(O005_L1_Cutting_OP03_D2_Afternoon)
  OpInShift(O005_L1_Cutting_OP03_D2_Night)
  OpInShift(O005_L1_Cutting_OP03_D3_Morning)
  OpInShift(O005_L1_Cutting_OP03_D3_Afternoon)
  OpInShift(O005_L1_Cutting_OP03_D3_Night)
  OpInShift(O005_L1_Cutting_OP03_D4_Morning)
  OpInShift(O005_L1_Cutting_OP03_D4_Afternoon)
  OpInShift(O005_L1_Cutting_OP03_D4_Night)
  OpInShift(O005_L1_Cutting_OP03_D5_Morning)
  OpInShift(O005_L1_Cutting_OP03_D5_Afternoon)
  OpInShift(O005_L1_Cutting_OP03_D5_Night)
  OpInShift(O005_L1_Cutting_OP04_D1_Morning)
  OpInShift(O005_L1_Cutting_OP04_D1_Afternoon)
  OpInShift(O005_L1_Cutting_OP04_D1_Night)
  OpInShift(O005_L1_Cutting_OP04_D2_Morning)
  OpInShift(O005_L1_Cutting_OP04_D2_Afternoon)
  OpInShift(O005_L1_Cutting_OP04_D2_Night)
  OpInShift(O005_L1_Cutting_OP04_D3_Morning)
  OpInShift(O005_L1_Cutting_OP04_D3_Afternoon)
  OpInShift(O005_L1_Cutting_OP04_D3_Night)
  OpInShift(O005_L1_Cutting_OP04_D4_Morning)
  OpInShift(O005_L1_Cutting_OP04_D4_Afternoon)
  OpInShift(O005_L1_Cutting_OP04_D4_Night)
  OpInShift(O005_L1_Cutting_OP04_D5_Morning)
  OpInShift(O005_L1_Cutting_OP04_D5_Afternoon)
  OpInShift(O005_L1_Cutting_OP04_D5_Night)
  OpInShift(O005_L1_Assembly_OP01_D1_Morning)
  OpInShift(O005_L1_Assembly_OP01_D1_Afternoon)
  OpInShift(O005_L1_Assembly_OP01_D1_Night)
  OpInShift(O005_L1_Assembly_OP01_D2_Morning)
  OpInShift(O005_L1_Assembly_OP01_D2_Afternoon)
  OpInShift(O005_L1_Assembly_OP01_D2_Night)
  OpInShift(O005_L1_Assembly_OP01_D3_Morning)
  OpInShift(O005_L1_Assembly_OP01_D3_Afternoon)
  OpInShift(O005_L1_Assembly_OP01_D3_Night)
  OpInShift(O005_L1_Assembly_OP01_D4_Morning)
  OpInShift(O005_L1_Assembly_OP01_D4_Afternoon)
  OpInShift(O005_L1_Assembly_OP01_D4_Night)
  OpInShift(O005_L1_Assembly_OP01_D5_Morning)
  OpInShift(O005_L1_Assembly_OP01_D5_Afternoon)
  OpInShift(O005_L1_Assembly_OP01_D5_Night)
  OpInShift(O005_L1_Assembly_OP02_D1_Morning)
  OpInShift(O005_L1_Assembly_OP02_D1_Afternoon)
  OpInShift(O005_L1_Assembly_OP02_D1_Night)
  OpInShift(O005_L1_Assembly_OP02_D2_Morning)
  OpInShift(O005_L1_Assembly_OP02_D2_Afternoon)
  OpInShift(O005_L1_Assembly_OP02_D2_Night)
  OpInShift(O005_L1_Assembly_OP02_D3_Morning)
  OpInShift(O005_L1_Assembly_OP02_D3_Afternoon)
  OpInShift(O005_L1_Assembly_OP02_D3_Night)
  OpInShift(O005_L1_Assembly_OP02_D4_Morning)
  OpInShift(O005_L1_Assembly_OP02_D4_Afternoon)
  OpInShift(O005_L1_Assembly_OP02_D4_Night)
  OpInShift(O005_L1_Assembly_OP02_D5_Morning)
  OpInShift(O005_L1_Assembly_OP02_D5_Afternoon)
  OpInShift(O005_L1_Assembly_OP02_D5_Night)
  OpInShift(O005_L1_Assembly_OP04_D1_Morning)
  OpInShift(O005_L1_Assembly_OP04_D1_Afternoon)
  OpInShift(O005_L1_Assembly_OP04_D1_Night)
  OpInShift(O005_L1_Assembly_OP04_D2_Morning)
  OpInShift(O005_L1_Assembly_OP04_D2_Afternoon)
  OpInShift(O005_L1_Assembly_OP04_D2_Night)
  OpInShift(O005_L1_Assembly_OP04_D3_Morning)
  OpInShift(O005_L1_Assembly_OP04_D3_Afternoon)
  OpInShift(O005_L1_Assembly_OP04_D3_Night)
  OpInShift(O005_L1_Assembly_OP04_D4_Morning)
  OpInShift(O005_L1_Assembly_OP04_D4_Afternoon)
  OpInShift(O005_L1_Assembly_OP04_D4_Night)
  OpInShift(O005_L1_Assembly_OP04_D5_Morning)
  OpInShift(O005_L1_Assembly_OP04_D5_Afternoon)
  OpInShift(O005_L1_Assembly_OP04_D5_Night)
  OpInShift(O006_L1_Cutting_OP01_D1_Morning)
  OpInShift(O006_L1_Cutting_OP01_D1_Afternoon)
  OpInShift(O006_L1_Cutting_OP01_D1_Night)
  OpInShift(O006_L1_Cutting_OP01_D2_Morning)
  OpInShift(O006_L1_Cutting_OP01_D2_Afternoon)
  OpInShift(O006_L1_Cutting_OP01_D2_Night)
  OpInShift(O006_L1_Cutting_OP01_D3_Morning)
  OpInShift(O006_L1_Cutting_OP01_D3_Afternoon)
  OpInShift(O006_L1_Cutting_OP01_D3_Night)
  OpInShift(O006_L1_Cutting_OP01_D4_Morning)
  OpInShift(O006_L1_Cutting_OP01_D4_Afternoon)
  OpInShift(O006_L1_Cutting_OP01_D4_Night)
  OpInShift(O006_L1_Cutting_OP01_D5_Morning)
  OpInShift(O006_L1_Cutting_OP01_D5_Afternoon)
  OpInShift(O006_L1_Cutting_OP01_D5_Night)
  OpInShift(O006_L1_Cutting_OP03_D1_Morning)
  OpInShift(O006_L1_Cutting_OP03_D1_Afternoon)
  OpInShift(O006_L1_Cutting_OP03_D1_Night)
  OpInShift(O006_L1_Cutting_OP03_D2_Morning)
  OpInShift(O006_L1_Cutting_OP03_D2_Afternoon)
  OpInShift(O006_L1_Cutting_OP03_D2_Night)
  OpInShift(O006_L1_Cutting_OP03_D3_Morning)
  OpInShift(O006_L1_Cutting_OP03_D3_Afternoon)
  OpInShift(O006_L1_Cutting_OP03_D3_Night)
  OpInShift(O006_L1_Cutting_OP03_D4_Morning)
  OpInShift(O006_L1_Cutting_OP03_D4_Afternoon)
  OpInShift(O006_L1_Cutting_OP03_D4_Night)
  OpInShift(O006_L1_Cutting_OP03_D5_Morning)
  OpInShift(O006_L1_Cutting_OP03_D5_Afternoon)
  OpInShift(O006_L1_Cutting_OP03_D5_Night)
  OpInShift(O006_L1_Cutting_OP04_D1_Morning)
  OpInShift(O006_L1_Cutting_OP04_D1_Afternoon)
  OpInShift(O006_L1_Cutting_OP04_D1_Night)
  OpInShift(O006_L1_Cutting_OP04_D2_Morning)
  OpInShift(O006_L1_Cutting_OP04_D2_Afternoon)
  OpInShift(O006_L1_Cutting_OP04_D2_Night)
  OpInShift(O006_L1_Cutting_OP04_D3_Morning)
  OpInShift(O006_L1_Cutting_OP04_D3_Afternoon)
  OpInShift(O006_L1_Cutting_OP04_D3_Night)
  OpInShift(O006_L1_Cutting_OP04_D4_Morning)
  OpInShift(O006_L1_Cutting_OP04_D4_Afternoon)
  OpInShift(O006_L1_Cutting_OP04_D4_Night)
  OpInShift(O006_L1_Cutting_OP04_D5_Morning)
  OpInShift(O006_L1_Cutting_OP04_D5_Afternoon)
  OpInShift(O006_L1_Cutting_OP04_D5_Night)
  OpInShift(O006_L1_Assembly_OP01_D1_Morning)
  OpInShift(O006_L1_Assembly_OP01_D1_Afternoon)
  OpInShift(O006_L1_Assembly_OP01_D1_Night)
  OpInShift(O006_L1_Assembly_OP01_D2_Morning)
  OpInShift(O006_L1_Assembly_OP01_D2_Afternoon)
  OpInShift(O006_L1_Assembly_OP01_D2_Night)
  OpInShift(O006_L1_Assembly_OP01_D3_Morning)
  OpInShift(O006_L1_Assembly_OP01_D3_Afternoon)
  OpInShift(O006_L1_Assembly_OP01_D3_Night)
  OpInShift(O006_L1_Assembly_OP01_D4_Morning)
  OpInShift(O006_L1_Assembly_OP01_D4_Afternoon)
  OpInShift(O006_L1_Assembly_OP01_D4_Night)
  OpInShift(O006_L1_Assembly_OP01_D5_Morning)
  OpInShift(O006_L1_Assembly_OP01_D5_Afternoon)
  OpInShift(O006_L1_Assembly_OP01_D5_Night)
  OpInShift(O006_L1_Assembly_OP02_D1_Morning)
  OpInShift(O006_L1_Assembly_OP02_D1_Afternoon)
  OpInShift(O006_L1_Assembly_OP02_D1_Night)
  OpInShift(O006_L1_Assembly_OP02_D2_Morning)
  OpInShift(O006_L1_Assembly_OP02_D2_Afternoon)
  OpInShift(O006_L1_Assembly_OP02_D2_Night)
  OpInShift(O006_L1_Assembly_OP02_D3_Morning)
  OpInShift(O006_L1_Assembly_OP02_D3_Afternoon)
  OpInShift(O006_L1_Assembly_OP02_D3_Night)
  OpInShift(O006_L1_Assembly_OP02_D4_Morning)
  OpInShift(O006_L1_Assembly_OP02_D4_Afternoon)
  OpInShift(O006_L1_Assembly_OP02_D4_Night)
  OpInShift(O006_L1_Assembly_OP02_D5_Morning)
  OpInShift(O006_L1_Assembly_OP02_D5_Afternoon)
  OpInShift(O006_L1_Assembly_OP02_D5_Night)
  OpInShift(O006_L1_Assembly_OP04_D1_Morning)
  OpInShift(O006_L1_Assembly_OP04_D1_Afternoon)
  OpInShift(O006_L1_Assembly_OP04_D1_Night)
  OpInShift(O006_L1_Assembly_OP04_D2_Morning)
  OpInShift(O006_L1_Assembly_OP04_D2_Afternoon)
  OpInShift(O006_L1_Assembly_OP04_D2_Night)
  OpInShift(O006_L1_Assembly_OP04_D3_Morning)
  OpInShift(O006_L1_Assembly_OP04_D3_Afternoon)
  OpInShift(O006_L1_Assembly_OP04_D3_Night)
  OpInShift(O006_L1_Assembly_OP04_D4_Morning)
  OpInShift(O006_L1_Assembly_OP04_D4_Afternoon)
  OpInShift(O006_L1_Assembly_OP04_D4_Night)
  OpInShift(O006_L1_Assembly_OP04_D5_Morning)
  OpInShift(O006_L1_Assembly_OP04_D5_Afternoon)
  OpInShift(O006_L1_Assembly_OP04_D5_Night)
  AssignInShift(O001_L1_Cutting_M03_D1_Morning)
  AssignInShift(O001_L1_Cutting_M03_D1_Afternoon)
  AssignInShift(O001_L1_Cutting_M03_D1_Night)
  AssignInShift(O001_L1_Cutting_M03_D2_Morning)
  AssignInShift(O001_L1_Cutting_M03_D2_Afternoon)
  AssignInShift(O001_L1_Cutting_M03_D2_Night)
  AssignInShift(O001_L1_Cutting_M03_D3_Morning)
  AssignInShift(O001_L1_Cutting_M03_D3_Afternoon)
  AssignInShift(O001_L1_Cutting_M03_D3_Night)
  AssignInShift(O001_L1_Cutting_M03_D4_Morning)
  AssignInShift(O001_L1_Cutting_M03_D4_Afternoon)
  AssignInShift(O001_L1_Cutting_M03_D4_Night)
  AssignInShift(O001_L1_Cutting_M03_D5_Morning)
  AssignInShift(O001_L1_Cutting_M03_D5_Afternoon)
  AssignInShift(O001_L1_Cutting_M03_D5_Night)
  AssignInShift(O001_L1_Assembly_M02_D1_Morning)
  AssignInShift(O001_L1_Assembly_M02_D1_Afternoon)
  AssignInShift(O001_L1_Assembly_M02_D1_Night)
  AssignInShift(O001_L1_Assembly_M02_D2_Morning)
  AssignInShift(O001_L1_Assembly_M02_D2_Afternoon)
  AssignInShift(O001_L1_Assembly_M02_D2_Night)
  AssignInShift(O001_L1_Assembly_M02_D3_Morning)
  AssignInShift(O001_L1_Assembly_M02_D3_Afternoon)
  AssignInShift(O001_L1_Assembly_M02_D3_Night)
  AssignInShift(O001_L1_Assembly_M02_D4_Morning)
  AssignInShift(O001_L1_Assembly_M02_D4_Afternoon)
  AssignInShift(O001_L1_Assembly_M02_D4_Night)
  AssignInShift(O001_L1_Assembly_M02_D5_Morning)
  AssignInShift(O001_L1_Assembly_M02_D5_Afternoon)
  AssignInShift(O001_L1_Assembly_M02_D5_Night)
  AssignInShift(O002_L1_Cutting_M01_D1_Morning)
  AssignInShift(O002_L1_Cutting_M01_D1_Afternoon)
  AssignInShift(O002_L1_Cutting_M01_D1_Night)
  AssignInShift(O002_L1_Cutting_M01_D2_Morning)
  AssignInShift(O002_L1_Cutting_M01_D2_Afternoon)
  AssignInShift(O002_L1_Cutting_M01_D2_Night)
  AssignInShift(O002_L1_Cutting_M01_D3_Morning)
  AssignInShift(O002_L1_Cutting_M01_D3_Afternoon)
  AssignInShift(O002_L1_Cutting_M01_D3_Night)
  AssignInShift(O002_L1_Cutting_M01_D4_Morning)
  AssignInShift(O002_L1_Cutting_M01_D4_Afternoon)
  AssignInShift(O002_L1_Cutting_M01_D4_Night)
  AssignInShift(O002_L1_Cutting_M01_D5_Morning)
  AssignInShift(O002_L1_Cutting_M01_D5_Afternoon)
  AssignInShift(O002_L1_Cutting_M01_D5_Night)
  AssignInShift(O002_L1_Assembly_M02_D1_Morning)
  AssignInShift(O002_L1_Assembly_M02_D1_Afternoon)
  AssignInShift(O002_L1_Assembly_M02_D1_Night)
  AssignInShift(O002_L1_Assembly_M02_D2_Morning)
  AssignInShift(O002_L1_Assembly_M02_D2_Afternoon)
  AssignInShift(O002_L1_Assembly_M02_D2_Night)
  AssignInShift(O002_L1_Assembly_M02_D3_Morning)
  AssignInShift(O002_L1_Assembly_M02_D3_Afternoon)
  AssignInShift(O002_L1_Assembly_M02_D3_Night)
  AssignInShift(O002_L1_Assembly_M02_D4_Morning)
  AssignInShift(O002_L1_Assembly_M02_D4_Afternoon)
  AssignInShift(O002_L1_Assembly_M02_D4_Night)
  AssignInShift(O002_L1_Assembly_M02_D5_Morning)
  AssignInShift(O002_L1_Assembly_M02_D5_Afternoon)
  AssignInShift(O002_L1_Assembly_M02_D5_Night)
  AssignInShift(O003_L1_Cutting_M01_D1_Morning)
  AssignInShift(O003_L1_Cutting_M01_D1_Afternoon)
  AssignInShift(O003_L1_Cutting_M01_D1_Night)
  AssignInShift(O003_L1_Cutting_M01_D2_Morning)
  AssignInShift(O003_L1_Cutting_M01_D2_Afternoon)
  AssignInShift(O003_L1_Cutting_M01_D2_Night)
  AssignInShift(O003_L1_Cutting_M01_D3_Morning)
  AssignInShift(O003_L1_Cutting_M01_D3_Afternoon)
  AssignInShift(O003_L1_Cutting_M01_D3_Night)
  AssignInShift(O003_L1_Cutting_M01_D4_Morning)
  AssignInShift(O003_L1_Cutting_M01_D4_Afternoon)
  AssignInShift(O003_L1_Cutting_M01_D4_Night)
  AssignInShift(O003_L1_Cutting_M01_D5_Morning)
  AssignInShift(O003_L1_Cutting_M01_D5_Afternoon)
  AssignInShift(O003_L1_Cutting_M01_D5_Night)
  AssignInShift(O003_L1_Assembly_M02_D1_Morning)
  AssignInShift(O003_L1_Assembly_M02_D1_Afternoon)
  AssignInShift(O003_L1_Assembly_M02_D1_Night)
  AssignInShift(O003_L1_Assembly_M02_D2_Morning)
  AssignInShift(O003_L1_Assembly_M02_D2_Afternoon)
  AssignInShift(O003_L1_Assembly_M02_D2_Night)
  AssignInShift(O003_L1_Assembly_M02_D3_Morning)
  AssignInShift(O003_L1_Assembly_M02_D3_Afternoon)
  AssignInShift(O003_L1_Assembly_M02_D3_Night)
  AssignInShift(O003_L1_Assembly_M02_D4_Morning)
  AssignInShift(O003_L1_Assembly_M02_D4_Afternoon)
  AssignInShift(O003_L1_Assembly_M02_D4_Night)
  AssignInShift(O003_L1_Assembly_M02_D5_Morning)
  AssignInShift(O003_L1_Assembly_M02_D5_Afternoon)
  AssignInShift(O003_L1_Assembly_M02_D5_Night)
  AssignInShift(O004_L1_Cutting_M01_D1_Morning)
  AssignInShift(O004_L1_Cutting_M01_D1_Afternoon)
  AssignInShift(O004_L1_Cutting_M01_D1_Night)
  AssignInShift(O004_L1_Cutting_M01_D2_Morning)
  AssignInShift(O004_L1_Cutting_M01_D2_Afternoon)
  AssignInShift(O004_L1_Cutting_M01_D2_Night)
  AssignInShift(O004_L1_Cutting_M01_D3_Morning)
  AssignInShift(O004_L1_Cutting_M01_D3_Afternoon)
  AssignInShift(O004_L1_Cutting_M01_D3_Night)
  AssignInShift(O004_L1_Cutting_M01_D4_Morning)
  AssignInShift(O004_L1_Cutting_M01_D4_Afternoon)
  AssignInShift(O004_L1_Cutting_M01_D4_Night)
  AssignInShift(O004_L1_Cutting_M01_D5_Morning)
  AssignInShift(O004_L1_Cutting_M01_D5_Afternoon)
  AssignInShift(O004_L1_Cutting_M01_D5_Night)
  AssignInShift(O004_L1_Assembly_M02_D1_Morning)
  AssignInShift(O004_L1_Assembly_M02_D1_Afternoon)
  AssignInShift(O004_L1_Assembly_M02_D1_Night)
  AssignInShift(O004_L1_Assembly_M02_D2_Morning)
  AssignInShift(O004_L1_Assembly_M02_D2_Afternoon)
  AssignInShift(O004_L1_Assembly_M02_D2_Night)
  AssignInShift(O004_L1_Assembly_M02_D3_Morning)
  AssignInShift(O004_L1_Assembly_M02_D3_Afternoon)
  AssignInShift(O004_L1_Assembly_M02_D3_Night)
  AssignInShift(O004_L1_Assembly_M02_D4_Morning)
  AssignInShift(O004_L1_Assembly_M02_D4_Afternoon)
  AssignInShift(O004_L1_Assembly_M02_D4_Night)
  AssignInShift(O004_L1_Assembly_M02_D5_Morning)
  AssignInShift(O004_L1_Assembly_M02_D5_Afternoon)
  AssignInShift(O004_L1_Assembly_M02_D5_Night)
  AssignInShift(O004_L2_Cutting_M01_D1_Morning)
  AssignInShift(O004_L2_Cutting_M01_D1_Afternoon)
  AssignInShift(O004_L2_Cutting_M01_D1_Night)
  AssignInShift(O004_L2_Cutting_M01_D2_Morning)
  AssignInShift(O004_L2_Cutting_M01_D2_Afternoon)
  AssignInShift(O004_L2_Cutting_M01_D2_Night)
  AssignInShift(O004_L2_Cutting_M01_D3_Morning)
  AssignInShift(O004_L2_Cutting_M01_D3_Afternoon)
  AssignInShift(O004_L2_Cutting_M01_D3_Night)
  AssignInShift(O004_L2_Cutting_M01_D4_Morning)
  AssignInShift(O004_L2_Cutting_M01_D4_Afternoon)
  AssignInShift(O004_L2_Cutting_M01_D4_Night)
  AssignInShift(O004_L2_Cutting_M01_D5_Morning)
  AssignInShift(O004_L2_Cutting_M01_D5_Afternoon)
  AssignInShift(O004_L2_Cutting_M01_D5_Night)
  AssignInShift(O004_L2_Assembly_M02_D1_Morning)
  AssignInShift(O004_L2_Assembly_M02_D1_Afternoon)
  AssignInShift(O004_L2_Assembly_M02_D1_Night)
  AssignInShift(O004_L2_Assembly_M02_D2_Morning)
  AssignInShift(O004_L2_Assembly_M02_D2_Afternoon)
  AssignInShift(O004_L2_Assembly_M02_D2_Night)
  AssignInShift(O004_L2_Assembly_M02_D3_Morning)
  AssignInShift(O004_L2_Assembly_M02_D3_Afternoon)
  AssignInShift(O004_L2_Assembly_M02_D3_Night)
  AssignInShift(O004_L2_Assembly_M02_D4_Morning)
  AssignInShift(O004_L2_Assembly_M02_D4_Afternoon)
  AssignInShift(O004_L2_Assembly_M02_D4_Night)
  AssignInShift(O004_L2_Assembly_M02_D5_Morning)
  AssignInShift(O004_L2_Assembly_M02_D5_Afternoon)
  AssignInShift(O004_L2_Assembly_M02_D5_Night)
  AssignInShift(O005_L1_Cutting_M01_D1_Morning)
  AssignInShift(O005_L1_Cutting_M01_D1_Afternoon)
  AssignInShift(O005_L1_Cutting_M01_D1_Night)
  AssignInShift(O005_L1_Cutting_M01_D2_Morning)
  AssignInShift(O005_L1_Cutting_M01_D2_Afternoon)
  AssignInShift(O005_L1_Cutting_M01_D2_Night)
  AssignInShift(O005_L1_Cutting_M01_D3_Morning)
  AssignInShift(O005_L1_Cutting_M01_D3_Afternoon)
  AssignInShift(O005_L1_Cutting_M01_D3_Night)
  AssignInShift(O005_L1_Cutting_M01_D4_Morning)
  AssignInShift(O005_L1_Cutting_M01_D4_Afternoon)
  AssignInShift(O005_L1_Cutting_M01_D4_Night)
  AssignInShift(O005_L1_Cutting_M01_D5_Morning)
  AssignInShift(O005_L1_Cutting_M01_D5_Afternoon)
  AssignInShift(O005_L1_Cutting_M01_D5_Night)
  AssignInShift(O005_L1_Assembly_M02_D1_Morning)
  AssignInShift(O005_L1_Assembly_M02_D1_Afternoon)
  AssignInShift(O005_L1_Assembly_M02_D1_Night)
  AssignInShift(O005_L1_Assembly_M02_D2_Morning)
  AssignInShift(O005_L1_Assembly_M02_D2_Afternoon)
  AssignInShift(O005_L1_Assembly_M02_D2_Night)
  AssignInShift(O005_L1_Assembly_M02_D3_Morning)
  AssignInShift(O005_L1_Assembly_M02_D3_Afternoon)
  AssignInShift(O005_L1_Assembly_M02_D3_Night)
  AssignInShift(O005_L1_Assembly_M02_D4_Morning)
  AssignInShift(O005_L1_Assembly_M02_D4_Afternoon)
  AssignInShift(O005_L1_Assembly_M02_D4_Night)
  AssignInShift(O005_L1_Assembly_M02_D5_Morning)
  AssignInShift(O005_L1_Assembly_M02_D5_Afternoon)
  AssignInShift(O005_L1_Assembly_M02_D5_Night)
  AssignInShift(O006_L1_Cutting_M01_D1_Morning)
  AssignInShift(O006_L1_Cutting_M01_D1_Afternoon)
  AssignInShift(O006_L1_Cutting_M01_D1_Night)
  AssignInShift(O006_L1_Cutting_M01_D2_Morning)
  AssignInShift(O006_L1_Cutting_M01_D2_Afternoon)
  AssignInShift(O006_L1_Cutting_M01_D2_Night)
  AssignInShift(O006_L1_Cutting_M01_D3_Morning)
  AssignInShift(O006_L1_Cutting_M01_D3_Afternoon)
  AssignInShift(O006_L1_Cutting_M01_D3_Night)
  AssignInShift(O006_L1_Cutting_M01_D4_Morning)
  AssignInShift(O006_L1_Cutting_M01_D4_Afternoon)
  AssignInShift(O006_L1_Cutting_M01_D4_Night)
  AssignInShift(O006_L1_Cutting_M01_D5_Morning)
  AssignInShift(O006_L1_Cutting_M01_D5_Afternoon)
  AssignInShift(O006_L1_Cutting_M01_D5_Night)
  AssignInShift(O006_L1_Assembly_M02_D1_Morning)
  AssignInShift(O006_L1_Assembly_M02_D1_Afternoon)
  AssignInShift(O006_L1_Assembly_M02_D1_Night)
  AssignInShift(O006_L1_Assembly_M02_D2_Morning)
  AssignInShift(O006_L1_Assembly_M02_D2_Afternoon)
  AssignInShift(O006_L1_Assembly_M02_D2_Night)
  AssignInShift(O006_L1_Assembly_M02_D3_Morning)
  AssignInShift(O006_L1_Assembly_M02_D3_Afternoon)
  AssignInShift(O006_L1_Assembly_M02_D3_Night)
  AssignInShift(O006_L1_Assembly_M02_D4_Morning)
  AssignInShift(O006_L1_Assembly_M02_D4_Afternoon)
  AssignInShift(O006_L1_Assembly_M02_D4_Night)
  AssignInShift(O006_L1_Assembly_M02_D5_Morning)
  AssignInShift(O006_L1_Assembly_M02_D5_Afternoon)
  AssignInShift(O006_L1_Assembly_M02_D5_Night)
end
