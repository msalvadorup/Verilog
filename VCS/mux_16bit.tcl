set_app_var search_path "$search_path mapped lib cons rtl"
set_app_var target_library saed90nm_typ.db
set_app_var link_library "* $target_library"

read_verilog "mux_16bit.v"
current_design mux_16bit
link
check_design > check_design.log
source timing.con
compile
report_constraint -all_violators > constraint_report.log
report_area > area_report.log
report_timing > timing_report.log
write_sdf -version 1.0 mapped/mux_16bit_mapped.sdf
write -f verilog -hier -out mapped/mux_16bit_mapped.v
gui_start
