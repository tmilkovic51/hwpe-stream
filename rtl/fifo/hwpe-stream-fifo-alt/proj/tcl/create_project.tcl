create_project simulation .
add_files -scan_for_includes -fileset sources_1 { ../ ../../../hwpe_stream_interfaces.sv ../../../hwpe_stream_package.sv }
update_compile_order -fileset sources_1
set_property board_part em.avnet.com:zed:part0:1.4 [current_project]
set_property top my_hwpe_stream_fifo_tb [get_filesets sim_1]
set_property top my_hwpe_stream_fifo [get_filesets sources_1]
set_property top_lib xil_defaultlib [get_filesets sim_1]
update_compile_order -fileset sources_1
