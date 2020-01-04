###################################################################

# Created by write_sdc on Sat Jan  4 23:09:41 2020

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
create_clock [get_ports clk]  -period 10  -waveform {5 10}
