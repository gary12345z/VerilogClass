read_file -format verilog {/home/SOC_06/Verilog/SOC/CF/SET.v}

current_design { /home/SOC_06/Verilog/SOC/CF/TMP.db:TMP}
create_clock -name "clk" -period 4 -waveform { 2 4 }  { clk  }
compile -exact_map -map_effort high -area_effort none -ungroup_all -auto_ungroup area

current_design { /home/SOC_06/Verilog/SOC/CF/addressGenerator.db:addressGenerator}
create_clock -name "clk" -period 4 -waveform { 2 4 }  { clk  }
compile -exact_map -map_effort none -area_effort high -ungroup_all -auto_ungroup area

current_design { /home/SOC_06/Verilog/SOC/CF/stateGenerator.db:stateGenerator}
create_clock -name "clk" -period 4 -waveform { 2 4 }  { clk  }
compile -exact_map -map_effort none -area_effort high -ungroup_all -auto_ungroup area

current_design { /home/SOC_06/Verilog/SOC/CF/SET.db:SET}
create_clock -name "clk" -period 4 -waveform { 2 4 }  { clk  }
compile -exact_map -map_effort high -area_effort high -power_effort none
# Report
uplevel #0 { report_timing -path full -delay max -nworst 1 -max_paths 1 -significant_digits 2 -sort_by group } > ./report/Timing_partition.txt
uplevel #0 { report_area } > ./report/Area_partition.txt
uplevel #0 { report_power -analysis_effort low } > ./report/Power_partition.txt
uplevel #0 { report_cell } > ./report/Cell_partition.txt

# Output file
write -hierarchy -format verilog -output SET_syn.v
write_sdf -version 2.1 SET_syn.sdf
