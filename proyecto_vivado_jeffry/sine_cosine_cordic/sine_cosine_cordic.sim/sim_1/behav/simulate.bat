@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.4\\bin
call %xv_path%/xsim Sine_Cosine_CORDIC_tb_behav -key {Behavioral:sim_1:Functional:Sine_Cosine_CORDIC_tb} -tclbatch Sine_Cosine_CORDIC_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
