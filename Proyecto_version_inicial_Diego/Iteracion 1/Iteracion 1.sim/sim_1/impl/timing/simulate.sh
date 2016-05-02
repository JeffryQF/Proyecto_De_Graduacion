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
ExecStep $xv_path/bin/xsim TB32_ZDetector_time_impl -key {Post-Implementation:sim_1:Timing:TB32_ZDetector} -tclbatch TB32_ZDetector.tcl -view /media/francis/Acer/Users/Francis/Documents/GitHub/Proyecto_De_Graduacion/Proyecto_version_inicial_Diego/Iteracion 1/TB32_ZDetector_behav.wcfg -view /media/francis/Acer/Users/Francis/Documents/GitHub/Proyecto_De_Graduacion/Proyecto_version_inicial_Diego/Iteracion 1/TB32_ZDetector_time_impl.wcfg -log simulate.log
