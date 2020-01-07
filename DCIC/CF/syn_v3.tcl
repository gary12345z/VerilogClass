# read_file -format verilog {/home/SOC_06/Verilog/DCIC/EP/Sort.v}
read_file -format verilog {/home/SOC_06/Verilog/DCIC/CF/Ver.3_Merge_and_Split/huffman.v}

current_design { /home/SOC_06/Verilog/DCIC/CF/Ver.3_Merge_and_Split/CNTcounter.db:CNTcounter}
create_clock -name "clk" -period 10 -waveform { 5 10 }  { clk  }
compile -exact_map -map_effort high -area_effort high -power_effort none -auto_ungroup area -ungroup_all
current_design { /home/SOC_06/Verilog/DCIC/CF/Ver.3_Merge_and_Split/encoder.db:encoder}
create_clock -name "clk" -period 10 -waveform { 5 10 }  { clk  }
compile -exact_map -map_effort high -area_effort high -power_effort none -auto_ungroup area -ungroup_all

current_design { /home/SOC_06/Verilog/DCIC/CF/Ver.3_Merge_and_Split/huffman.db:huffman}
# Set clock
create_clock -name "clk" -period 10 -waveform { 5 10 }  { clk  }
# SYN
# compile -exact_map -area_effort high -incremental_mapping -ungroup_all -auto_ungroup area
compile -exact_map -map_effort high -area_effort high -power_effort none -auto_ungroup area
# Report
uplevel #0 { report_timing -path full -delay max -nworst 1 -max_paths 1 -significant_digits 2 -sort_by group } > ./report/Timing_v3.txt
uplevel #0 { report_area } > ./report/Area_v3.txt
uplevel #0 { report_power -analysis_effort low } > ./report/Power_v3.txt
uplevel #0 { report_cell } > ./report/Cell_v3.txt

# Output file
write -hierarchy -format verilog -output huffman_syn.v
write_sdf -version 2.1 huffman_syn.sdf
