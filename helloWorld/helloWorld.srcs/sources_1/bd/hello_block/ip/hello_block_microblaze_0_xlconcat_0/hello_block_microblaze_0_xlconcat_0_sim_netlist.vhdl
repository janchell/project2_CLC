-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4.1 (win64) Build 2117270 Tue Jan 30 15:32:00 MST 2018
-- Date        : Wed May  2 16:19:41 2018
-- Host        : LAPTOP-K69KCL0Q running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Jonathan/Desktop/proj2/hello_world/helloWorld/helloWorld.srcs/sources_1/bd/hello_block/ip/hello_block_microblaze_0_xlconcat_0/hello_block_microblaze_0_xlconcat_0_sim_netlist.vhdl
-- Design      : hello_block_microblaze_0_xlconcat_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hello_block_microblaze_0_xlconcat_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of hello_block_microblaze_0_xlconcat_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of hello_block_microblaze_0_xlconcat_0 : entity is "hello_block_microblaze_0_xlconcat_0,xlconcat_v2_1_1_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of hello_block_microblaze_0_xlconcat_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of hello_block_microblaze_0_xlconcat_0 : entity is "xlconcat_v2_1_1_xlconcat,Vivado 2017.4.1";
end hello_block_microblaze_0_xlconcat_0;

architecture STRUCTURE of hello_block_microblaze_0_xlconcat_0 is
  signal \^in0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^in1\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \^in0\(0) <= In0(0);
  \^in1\(0) <= In1(0);
  dout(1) <= \^in1\(0);
  dout(0) <= \^in0\(0);
end STRUCTURE;
