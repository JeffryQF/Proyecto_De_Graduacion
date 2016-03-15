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
ExecStep $xv_path/bin/xsim TB32_ZDetector_func_synth -key {Post-Synthesis:sim_1:Functional:TB32_ZDetector} -tclbatch TB32_ZDetector.tcl -view /media/francis/Acer/Users/Francis/Documents/GitHub/Proyecto_De_Graduacion/Proyecto_version_inicial_Diego/Iteracion 1/TB32_ZDetector_behav.wcfg -log simulate.log
