set_property SRC_FILE_INFO {cfile:c:/Users/Jonathan/Desktop/proj2/hello_world/helloWorld/helloWorld.srcs/sources_1/bd/hello_block/ip/hello_block_clk_wiz_0_0/hello_block_clk_wiz_0_0_board.xdc rfile:../../../helloWorld.srcs/sources_1/bd/hello_block/ip/hello_block_clk_wiz_0_0/hello_block_clk_wiz_0_0_board.xdc id:1 order:EARLY used_in_board:yes scoped_inst:inst prop_thru_buffer:yes} [current_design]
set_property SRC_FILE_INFO {cfile:c:/Users/Jonathan/Desktop/proj2/hello_world/helloWorld/helloWorld.srcs/sources_1/bd/hello_block/ip/hello_block_clk_wiz_0_0/hello_block_clk_wiz_0_0.xdc rfile:../../../helloWorld.srcs/sources_1/bd/hello_block/ip/hello_block_clk_wiz_0_0/hello_block_clk_wiz_0_0.xdc id:2 order:EARLY scoped_inst:inst} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
set_property BOARD_PIN {reset} [get_ports reset]
set_property src_info {type:SCOPED_XDC file:2 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
