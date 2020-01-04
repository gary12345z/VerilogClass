# Sample TCL
# Date: 2019/11/30
# Author: Hu, Ren Bo

# Read all Files
read_file -format verilog {/home/SOC_06/Verilog/SOC/DFF/SET_v4.v /home/SOC_06/Verilog/SOC/DFF/Control_3_v2.v /home/SOC_06/Verilog/SOC/DFF/MapCell_v6.v /home/SOC_06/Verilog/SOC/DFF/GenerateAddress.v/home/SOC_06/Verilog/SOC/DFF/CandidateAdder.v}

current_design { /home/SOC_06/Verilog/SOC/DFF/Control.db:Control}
create_clock -name "clk" -period 10 -waveform { 5 10 }  { clk  }
set_max_area 0
compile -exact_map -area_effort high -ungroup_all -auto_ungroup area 

current_design { /home/SOC_06/Verilog/SOC/DFF/GenerateAddress_MapCell.db:GenerateAddress_MapCell}
create_clock -name "clk" -period 10 -waveform { 5 10 }  { clk  }
set_max_area 0
compile -exact_map -map_effort high -ungroup_all -auto_ungroup area 

current_design { /home/SOC_06/Verilog/SOC/DFF/CandidateAdder.db:CandidateAdder}
create_clock -name "clk" -period 10 -waveform { 5 10 }  { clk  }
set_max_area 0
compile -exact_map -area_effort high -ungroup_all -auto_ungroup area 

current_design { /home/SOC_06/Verilog/SOC/DFF/SET.db:SET}
create_clock -name "clk" -period 10 -waveform { 5 10 }  { clk  }
set_max_area 0
compile -exact_map -area_effort high -auto_ungroup area 

# Report
uplevel #0 { report_timing -path full -delay max -nworst 1 -max_paths 1 -significant_digits 2 -sort_by group } > ./report/Timing_partition.txt
uplevel #0 { report_area } > ./report/Area_partition.txt
uplevel #0 { report_power -analysis_effort low } > ./report/Power_partition.txt
uplevel #0 { report_cell } > ./report/Cell_partition.txt

# Output file
write -hierarchy -format verilog -output SET_syn.v
write_sdf -version 2.1 SET_syn.sdf

# DFT

# read_file -format verilog {/home/SOC_06/Verilog/SOC/DFF/SET_syn.v}
# current_design { /home/SOC_06/Verilog/SOC/DFF/SET.db:SET}
# 
# set test_default_delay 0
# set test_default_bidir_delay 0
# set test_default_strobe 40
# set test_default_period 100
# 
# create_test_protocol -infer_asynch -infer_clock
# 
# uplevel #0 { report_constraint -all_violators -significant_digits 2 } > ./report/Pre_scan_Check.txt
# 
# dft_drc
# 
# set_scan_configuration -chain_count 1
# 
# preview_dft
# 
# insert_dft
# 
# uplevel #0 { report_constraint -all_violators -significant_digits 2 } > ./report/Scan_Check.txt
# 
# create_clock -name "clk" -period 10 -waveform { 5 10 }  { clk  }
# # compile -exact_map -map_effort high -area_effort high -power_effort none -auto_ungroup area
# 
# # Report
# uplevel #0 { report_timing -path full -delay max -nworst 1 -max_paths 1 -significant_digits 2 -sort_by group } > ./report/Timing_dft.txt
# uplevel #0 { report_area } > ./report/Area_dft.txt
# uplevel #0 { report_power -analysis_effort low } > ./report/Power_dft.txt
# uplevel #0 { report_cell } > ./report/Cell_dft.txt
# 
# # Output file
# write -hierarchy -format verilog -output SET_syn_dft.v
# write_sdf -version 2.1 SET_syn_dft.sdf
# write_test_protocol -output SET_syn_dft.spf
