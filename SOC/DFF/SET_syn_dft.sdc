###################################################################

# Created by write_sdc on Sat Jan  4 15:49:42 2020

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
create_clock [get_ports clk]  -period 5.5  -waveform {2.25 5.5}
