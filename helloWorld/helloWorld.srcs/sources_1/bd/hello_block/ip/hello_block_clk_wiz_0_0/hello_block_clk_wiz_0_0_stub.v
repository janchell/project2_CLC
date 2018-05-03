// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4.1 (win64) Build 2117270 Tue Jan 30 15:32:00 MST 2018
// Date        : Wed May  2 16:18:06 2018
// Host        : LAPTOP-K69KCL0Q running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Jonathan/Desktop/proj2/hello_world/helloWorld/helloWorld.srcs/sources_1/bd/hello_block/ip/hello_block_clk_wiz_0_0/hello_block_clk_wiz_0_0_stub.v
// Design      : hello_block_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module hello_block_clk_wiz_0_0(clk_out1, clk_out2, clk_out3, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,clk_out2,clk_out3,locked,clk_in1" */;
  output clk_out1;
  output clk_out2;
  output clk_out3;
  output locked;
  input clk_in1;
endmodule