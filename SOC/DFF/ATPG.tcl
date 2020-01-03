read_netlist /home/SOC_06/Verilog/SOC/DFF/SET_syn_dft.v
read_netlist /home/SOC_06/Verilog/SOC/DFF/tsmc13_neg.v
run_build_model SET
set_drc /home/SOC_06/Verilog/SOC/DFF/SET_syn_dft.spf
run_drc
add_faults -all
remove_faults -all
add_faults -all
run_atpg -auto_compression -ndetects 1 > ./report/ATPG.txt
run_atpg full_sequential_only >> ./report/ATPG.txt
