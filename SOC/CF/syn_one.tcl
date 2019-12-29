# Sample TCL
# Date: 2019/11/30
# Author: Hu, Ren Bo

# Read all Files
read_file -format verilog {/home/SOC_06/Verilog/SOC/CF/SET.v}

# Set clock
create_clock -name "clk" -period 4 -waveform { 2 4 }  { clk  }

# SYN
compile -exact_map -map_effort high -area_effort high -power_effort none -auto_ungroup area

# Report
uplevel #0 { report_timing -path full -delay max -nworst 1 -max_paths 1 -significant_digits 2 -sort_by group } > ./report/Timing_one.txt
uplevel #0 { report_area } > ./report/Area_one.txt
uplevel #0 { report_power -analysis_effort low } > ./report/Power_one.txt
uplevel #0 { report_cell } > ./report/Cell_one.txt

# Output file
write -hierarchy -format verilog -output SET_syn.v
write_sdf -version 2.1 SET_syn.sdf