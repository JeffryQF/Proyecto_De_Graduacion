@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.4\\bin
call %xv_path%/xsim CORDIC_FSM_v2_tb_behav -key {Behavioral:sim_1:Functional:CORDIC_FSM_v2_tb} -tclbatch CORDIC_FSM_v2_tb.tcl -view C:/Users/Jeffry/Dropbox/Proyecto_De_Graduacion/Proyecto_De_Graduacion_2/Proyecto_De_Graduacion/proyecto_vivado_jeffry/sine_cosine_cordic/CORDIC_FSM_v2_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
