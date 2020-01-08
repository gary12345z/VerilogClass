# 3. create lib
create_mw_lib  -technology /usr/cad/CBDK/CBDK_IC_Contest_v2.1/Astro/tsmc13_CIC.tf -mw_reference_library {/usr/cad/CBDK/CBDK_IC_Contest_v2.1/Astro/tsmc13gfsg_fram} -bus_naming_style {[%d]}  -open  SET
# 4. import verilog
import_designs -format verilog -top SET -cel SET {/home/SOC_06/Verilog/SOC/DFF/SET_syn_dft.v}
# 5. TLU+
set_tlu_plus_files -max_tluplus /usr/cad/CBDK/CBDK_IC_Contest_v2.1/Astro/tluplus/t013s8mg_fsg_typical.tluplus -tech2itf_map  /usr/cad/CBDK/CBDK_IC_Contest_v2.1/Astro/tluplus/t013s8mg_fsg.map
# 6. import SDC & DEF
read_sdc  -version Latest "/home/SOC_06/Verilog/SOC/DFF/SET_syn_dft.sdc"
read_def { "/home/SOC_06/Verilog/SOC/DFF/SET_syn_dft.def"}
# 7. All Task
gui_set_current_task -name {All}
# 8. Floorplan
create_floorplan -core_utilization 0.7 -flip_first_row
# 9. Place Macro and Standard Cells # -timing_driven
create_fp_placement -effort High 
# 11. PG net
derive_pg_connection -power_net {VDD} -ground_net {VSS} -power_pin {VDD} -ground_pin {VSS}
# 12. PNS Constraints
set_fp_rail_constraints -add_layer  -layer METAL5 -direction horizontal -max_strap 10 -min_strap 3 -max_width 4 -min_width 4 -spacing minimum
set_fp_rail_constraints -add_layer  -layer METAL4 -direction vertical -max_strap 10 -min_strap 3 -max_width 4 -min_width 4 -spacing minimum
set_fp_rail_constraints  -set_ring -nets  {VDD VSS VDD VSS VDD VSS}  -horizontal_ring_layer { METAL5 } -vertical_ring_layer { METAL4 } -ring_width 8 -ring_offset 3 -extend_strap core_ring
set_pnet_options -complete [list METAL4 METAL5]
create_fp_placement -incremental all
# Draw Line
gui_mouse_tool -window [gui_get_current_window -types Layout -mru] -start RulerTool
gui_set_mouse_tool_option -tool RulerTool -option {Mode} -value {Two point}
gui_mouse_tool -window [gui_get_current_window -types Layout -mru] -add_point {0 0} -scale 0.1252
gui_mouse_tool -window [gui_get_current_window -types Layout -mru] -add_point {0 110} -scale 0.1252
gui_mouse_tool -window [gui_get_current_window -types Layout -mru] -add_point {0 0} -scale 0.1252
gui_mouse_tool -window [gui_get_current_window -types Layout -mru] -add_point {110 0} -scale 0.1252
gui_mouse_tool -window [gui_get_current_window -types Layout -mru] -abort
# 13. Add power strap *4
create_power_straps  -direction vertical  -start_at 27.5 -nets  {VDD VSS}  -layer METAL4 -width 1 -extend_for_multiple_connections  -extension_gap 16
create_power_straps  -direction vertical  -start_at 55 -nets  {VDD VSS}  -layer METAL4 -width 1 -extend_for_multiple_connections  -extension_gap 16
create_power_straps  -direction vertical  -start_at 82.5 -nets  {VDD VSS}  -layer METAL4 -width 1 -extend_for_multiple_connections  -extension_gap 16
create_power_straps  -direction horizontal  -start_at 27.5 -nets  {VDD VSS}  -layer METAL5 -width 1 -extend_for_multiple_connections  -extension_gap 16
create_power_straps  -direction horizontal  -start_at 55 -nets  {VDD VSS}  -layer METAL5 -width 1 -extend_for_multiple_connections  -extension_gap 16
create_power_straps  -direction horizontal  -start_at 82.5 -nets  {VDD VSS}  -layer METAL5 -width 1 -extend_for_multiple_connections  -extension_gap 16
# 14. CTS (report)
check_physical_design -stage pre_place_opt
check_physical_design -stage pre_clock_opt
report_constraint -all > ./report/CTS_report.txt
clock_opt -optimize_dft -fix_hold_all_clocks -no_clock_route
# 15. route
check_zrt_routability  -error_view SET.err
set_route_zrt_common_options  -post_detail_route_redundant_via_insertion high -concurrent_redundant_via_mode insert_at_high_cost -concurrent_redundant_via_effort_level high
route_zrt_group -all_clock_nets
route_zrt_auto
# 16. verify
verify_zrt_route > ./report/Route_report.txt
report_timing > ./report/Timing_route.txt
# 17. fix DRC
route_zrt_detail -incremental true -initial_drc_from_input true
# 18. Export SDF & Verilog
write_sdf -version 2.0 -context verilog -load_delay net SET_route.sdf
write_verilog -unconnected_ports -diode_ports -wire_declaration -keep_backslash_before_hiersep -no_physical_only_cells SET_route.v
# Power Network Synthesis
# synthesize_fp_rail  -nets {VDD VSS} -voltage_supply 1.2 -synthesize_power_plan -power_budget 500
# area report
report_design -physical > report/Area_route.txt

