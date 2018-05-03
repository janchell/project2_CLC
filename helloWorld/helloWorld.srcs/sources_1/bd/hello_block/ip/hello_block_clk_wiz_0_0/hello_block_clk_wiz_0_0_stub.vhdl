-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4.1 (win64) Build 2117270 Tue Jan 30 15:32:00 MST 2018
-- Date        : Wed May  2 16:18:07 2018
-- Host        : LAPTOP-K69KCL0Q running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Jonathan/Desktop/proj2/hello_world/helloWorld/helloWorld.srcs/sources_1/bd/hello_block/ip/hello_block_clk_wiz_0_0/hello_block_clk_wiz_0_0_stub.vhdl
-- Design      : hello_block_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hello_block_clk_wiz_0_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    clk_out3 : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end hello_block_clk_wiz_0_0;

architecture stub of hello_block_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,clk_out2,clk_out3,locked,clk_in1";
begin
end;