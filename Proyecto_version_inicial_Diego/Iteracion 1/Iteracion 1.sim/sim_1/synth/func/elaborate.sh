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
ExecStep $xv_path/bin/xelab -wto 36f1cfea73054869b536686a8cc3f809 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L secureip --snapshot TB32_ZDetector_func_synth xil_defaultlib.TB32_ZDetector xil_defaultlib.glbl -log elaborate.log
