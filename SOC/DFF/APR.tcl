create_mw_lib  -technology /usr/cad/CBDK/CBDK_IC_Contest_v2.1/Astro/tsmc13_CIC.tf -mw_reference_library {/usr/cad/CBDK/CBDK_IC_Contest_v2.1/Astro/tsmc13gfsg_fram} -bus_naming_style {[%d]}  -open  SET
import_designs -format verilog -top SET -cel SET {/home/SOC_06/Verilog/SOC/DFF/SET_syn_dft.v}
read_def { "/home/SOC_06/Verilog/SOC/DFF/SET_syn_dft.def"}
set_tlu_plus_files -max_tluplus /usr/cad/CBDK/CBDK_IC_Contest_v2.1/Astro/tluplus/t013s8mg_fsg_typical.tluplus -tech2itf_map  /usr/cad/CBDK/CBDK_IC_Contest_v2.1/Astro/tluplus/t013s8mg_fsg.map