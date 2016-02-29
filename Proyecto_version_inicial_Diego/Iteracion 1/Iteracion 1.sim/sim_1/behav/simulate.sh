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
ExecStep $xv_path/bin/xsim TB32_ZDetector_behav -key {Behavioral:sim_1:Functional:TB32_ZDetector} -tclbatch TB32_ZDetector.tcl -log simulate.log
