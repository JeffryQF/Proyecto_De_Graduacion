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
ExecStep $xv_path/bin/xsim Temporal_op_result_sign_behav -key {Behavioral:sim_1:Functional:Temporal_op_result_sign} -tclbatch Temporal_op_result_sign.tcl -view /media/francis/Acer/Users/Francis/Documents/GitHub/Proyecto_De_Graduacion/Proyecto_version_inicial_Diego/Iteracion 1/TB32_ZDetector_behav.wcfg -log simulate.log
