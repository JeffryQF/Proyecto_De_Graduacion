#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2015.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim Testbench_Barrel_Shifter_behav -key {Behavioral:sim_1:Functional:Testbench_Barrel_Shifter} -tclbatch Testbench_Barrel_Shifter.tcl -log simulate.log
