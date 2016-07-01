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
ExecStep $xv_path/bin/xelab -wto 36f1cfea73054869b536686a8cc3f809 -m64 --debug typical --relax --mt 8 --maxdelay -L xil_defaultlib -L simprims_ver -L secureip --snapshot TBMULTZERO32_time_impl -transport_int_delays -pulse_r 0 -pulse_int_r 0 xil_defaultlib.TBMULTZERO32 xil_defaultlib.glbl -log elaborate.log
