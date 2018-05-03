#!/bin/bash -f
#*********************************************************************************************************
# Vivado (TM) v2017.4.1 (64-bit)
#
# Filename    : hello_block.sh
# Simulator   : Synopsys Verilog Compiler Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Wed May 02 16:16:05 -0700 2018
# SW Build 2117270 on Tue Jan 30 15:32:00 MST 2018
#
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved. 
#
# usage: hello_block.sh [-help]
# usage: hello_block.sh [-lib_map_path]
# usage: hello_block.sh [-noclean_files]
# usage: hello_block.sh [-reset_run]
#
# Prerequisite:- To compile and run simulation, you must compile the Xilinx simulation libraries using the
# 'compile_simlib' TCL command. For more information about this command, run 'compile_simlib -help' in the
# Vivado Tcl Shell. Once the libraries have been compiled successfully, specify the -lib_map_path switch
# that points to these libraries and rerun export_simulation. For more information about this switch please
# type 'export_simulation -help' in the Tcl shell.
#
# You can also point to the simulation libraries by either replacing the <SPECIFY_COMPILED_LIB_PATH> in this
# script with the compiled library directory path or specify this path with the '-lib_map_path' switch when
# executing this script. Please type 'hello_block.sh -help' for more information.
#
# Additional references - 'Xilinx Vivado Design Suite User Guide:Logic simulation (UG900)'
#
#*********************************************************************************************************

# Directory path for design sources and include directories (if any) wrt this path
ref_dir="."

# Override directory with 'export_sim_ref_dir' env path value if set in the shell
if [[ (! -z "$export_sim_ref_dir") && ($export_sim_ref_dir != "") ]]; then
  ref_dir="$export_sim_ref_dir"
fi

# Command line options
vlogan_opts="-full64"
vhdlan_opts="-full64"
vcs_elab_opts="-full64 -debug_pp -t ps -licqueue -l elaborate.log"
vcs_sim_opts="-ucli -licqueue -l simulate.log"

# Design libraries
design_libs=(xil_defaultlib xpm lib_cdc_v1_0_2 proc_sys_reset_v5_0_12 microblaze_v10_0_5 axi_lite_ipif_v3_0_4 axi_intc_v4_1_10 xlconcat_v2_1_1 mdm_v3_2_12 lib_pkg_v1_0_2 axi_timer_v2_0_17 lib_srl_fifo_v1_0_2 axi_uartlite_v2_0_19 generic_baseblocks_v2_1_0 axi_infrastructure_v1_1_0 axi_register_slice_v2_1_15 fifo_generator_v13_2_1 axi_data_fifo_v2_1_14 axi_crossbar_v2_1_16 axi_protocol_converter_v2_1_15 axi_clock_converter_v2_1_14 blk_mem_gen_v8_4_1 axi_dwidth_converter_v2_1_15 lmb_v10_v3_0_9 lmb_bram_if_cntlr_v4_0_14)

# Simulation root library directory
sim_lib_dir="vcs_lib"

# Script info
echo -e "hello_block.sh - Script generated by export_simulation (Vivado v2017.4.1 (64-bit)-id)\n"

# Main steps
run()
{
  check_args $# $1
  setup $1 $2
  compile
  elaborate
  simulate
}

# RUN_STEP: <compile>
compile()
{
  # Compile design files
  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/4868" +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/ec67/hdl" \
    "C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
    "C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xpm $vhdlan_opts \
    "C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/4868" +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/ec67/hdl" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_clk_wiz_0_0/hello_block_clk_wiz_0_0_clk_wiz.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_clk_wiz_0_0/hello_block_clk_wiz_0_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work lib_cdc_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work proc_sys_reset_v5_0_12 $vhdlan_opts \
    "$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_proc_sys_reset_0_0/sim/hello_block_proc_sys_reset_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work microblaze_v10_0_5 $vhdlan_opts \
    "$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/4f30/hdl/microblaze_v10_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_microblaze_0_0/sim/hello_block_microblaze_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_lite_ipif_v3_0_4 $vhdlan_opts \
    "$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_intc_v4_1_10 $vhdlan_opts \
    "$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/cf04/hdl/axi_intc_v4_1_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_microblaze_0_axi_intc_0/sim/hello_block_microblaze_0_axi_intc_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xlconcat_v2_1_1 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/4868" +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/ec67/hdl" \
    "$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/4868" +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/ec67/hdl" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_microblaze_0_xlconcat_0/sim/hello_block_microblaze_0_xlconcat_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work mdm_v3_2_12 $vhdlan_opts \
    "$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/8608/hdl/mdm_v3_2_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mdm_1_0/sim/hello_block_mdm_1_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/4868" +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/ec67/hdl" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_addr_decode.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_read.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_reg.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_reg_bank.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_top.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_write.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_ar_channel.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_aw_channel.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_b_channel.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_cmd_arbiter.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_cmd_fsm.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_cmd_translator.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_fifo.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_incr_cmd.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_r_channel.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_simple_fifo.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_wrap_cmd.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_wr_cmd_fsm.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_w_channel.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_axic_register_slice.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_axi_register_slice.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_axi_upsizer.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_a_upsizer.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_and.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_latch_and.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_latch_or.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_or.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_command_fifo.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_comparator.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_comparator_sel.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_comparator_sel_static.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_r_upsizer.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_w_upsizer.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_0_clk_ibuf.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_0_infrastructure.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_0_iodelay_ctrl.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_0_tempmon.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_arb_mux.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_arb_row_col.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_arb_select.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_cntrl.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_common.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_compare.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_mach.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_queue.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_state.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_col_mach.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_mc.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_rank_cntrl.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_rank_common.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_rank_mach.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_round_robin_arb.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_0_ecc_buf.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_0_ecc_dec_fix.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_0_ecc_gen.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_0_ecc_merge_enc.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_0_fi_xor.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_0_memc_ui_top_axi.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_0_mem_intfc.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_byte_group_io.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_byte_lane.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_calib_top.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_if_post_fifo.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_mc_phy.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_mc_phy_wrapper.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_of_pre_fifo.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_4lanes.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ck_addr_cmd_delay.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_dqs_found_cal.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_dqs_found_cal_hr.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_init.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_cntlr.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_data.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_edge.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_lim.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_mux.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_po_cntlr.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_samp.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_oclkdelay_cal.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_prbs_rdlvl.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_rdlvl.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_tempmon.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_top.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrcal.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrlvl.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrlvl_off_delay.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_prbs_gen.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_cc.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_edge_store.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_meta.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_pd.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_tap_base.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_top.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_0_ui_cmd.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_0_ui_rd_data.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_0_ui_top.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_0_ui_wr_data.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/hello_block_mig_7series_0_0_mig_sim.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_mig_7series_0_0/hello_block_mig_7series_0_0/user_design/rtl/hello_block_mig_7series_0_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work lib_pkg_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_timer_v2_0_17 $vhdlan_opts \
    "$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/38c3/hdl/axi_timer_v2_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_axi_timer_0_0/sim/hello_block_axi_timer_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lib_srl_fifo_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_uartlite_v2_0_19 $vhdlan_opts \
    "$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/c778/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_axi_uartlite_0_0/sim/hello_block_axi_uartlite_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work generic_baseblocks_v2_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/4868" +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/ec67/hdl" \
    "$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_infrastructure_v1_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/4868" +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/ec67/hdl" \
    "$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_register_slice_v2_1_15 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/4868" +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/ec67/hdl" \
    "$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/3ed1/hdl/axi_register_slice_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work fifo_generator_v13_2_1 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/4868" +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/ec67/hdl" \
    "$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/5c35/simulation/fifo_generator_vlog_beh.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work fifo_generator_v13_2_1 $vhdlan_opts \
    "$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work fifo_generator_v13_2_1 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/4868" +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/ec67/hdl" \
    "$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_data_fifo_v2_1_14 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/4868" +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/ec67/hdl" \
    "$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/9909/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_crossbar_v2_1_16 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/4868" +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/ec67/hdl" \
    "$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/c631/hdl/axi_crossbar_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/4868" +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/ec67/hdl" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_xbar_0/sim/hello_block_xbar_0.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_protocol_converter_v2_1_15 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/4868" +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/ec67/hdl" \
    "$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/ff69/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_clock_converter_v2_1_14 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/4868" +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/ec67/hdl" \
    "$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/445f/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work blk_mem_gen_v8_4_1 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/4868" +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/ec67/hdl" \
    "$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_dwidth_converter_v2_1_15 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/4868" +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/ec67/hdl" \
    "$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/1cdc/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/4868" +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/ec67/hdl" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_auto_ds_3/sim/hello_block_auto_ds_3.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_auto_pc_3/sim/hello_block_auto_pc_3.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_auto_ds_2/sim/hello_block_auto_ds_2.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_auto_pc_2/sim/hello_block_auto_pc_2.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_auto_cc_0/sim/hello_block_auto_cc_0.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_auto_ds_1/sim/hello_block_auto_ds_1.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_auto_pc_1/sim/hello_block_auto_pc_1.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_auto_ds_0/sim/hello_block_auto_ds_0.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_auto_pc_0/sim/hello_block_auto_pc_0.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_auto_us_2/sim/hello_block_auto_us_2.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_auto_us_1/sim/hello_block_auto_us_1.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_auto_pc_4/sim/hello_block_auto_pc_4.v" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_auto_us_0/sim/hello_block_auto_us_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work lmb_v10_v3_0_9 $vhdlan_opts \
    "$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_dlmb_v10_0/sim/hello_block_dlmb_v10_0.vhd" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_ilmb_v10_0/sim/hello_block_ilmb_v10_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lmb_bram_if_cntlr_v4_0_14 $vhdlan_opts \
    "$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/226d/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_dlmb_bram_if_cntlr_0/sim/hello_block_dlmb_bram_if_cntlr_0.vhd" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_ilmb_bram_if_cntlr_0/sim/hello_block_ilmb_bram_if_cntlr_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/4868" +incdir+"$ref_dir/../../../../helloWorld.srcs/sources_1/bd/hello_block/ipshared/ec67/hdl" \
    "$ref_dir/../../../bd/hello_block/ip/hello_block_lmb_bram_0/sim/hello_block_lmb_bram_0.v" \
    "$ref_dir/../../../bd/hello_block/sim/hello_block.v" \
  2>&1 | tee -a vlogan.log


  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    glbl.v \
  2>&1 | tee -a vlogan.log

}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.hello_block xil_defaultlib.glbl -o hello_block_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./hello_block_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  case $1 in
    "-lib_map_path" )
      if [[ ($2 == "") ]]; then
        echo -e "ERROR: Simulation library directory path not specified (type \"./hello_block.sh -help\" for more information)\n"
        exit 1
      fi
      create_lib_mappings $2
    ;;
    "-reset_run" )
      reset_run
      echo -e "INFO: Simulation run files deleted.\n"
      exit 0
    ;;
    "-noclean_files" )
      # do not remove previous data
    ;;
    * )
      create_lib_mappings $2
  esac

  create_lib_dir

  # Add any setup/initialization commands here:-

  # <user specific commands>

}

# Define design library mappings
create_lib_mappings()
{
  file="synopsys_sim.setup"
  if [[ -e $file ]]; then
    if [[ ($1 == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file

  lib_map_path=""
  if [[ ($1 != "") ]]; then
    lib_map_path="$1"
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="$lib:$sim_lib_dir/$lib"
    echo $mapping >> $file
  done

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
    echo $incl_ref >> $file
  fi
}

# Create design library directory paths
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# Delete generated data from the previous run
reset_run()
{
  files_to_remove=(ucli.key hello_block_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log 64 AN.DB csrc hello_block_simv.daidir)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done

  create_lib_dir
}

# Check command line arguments
check_args()
{
  if [[ ($1 == 1 ) && ($2 != "-lib_map_path" && $2 != "-noclean_files" && $2 != "-reset_run" && $2 != "-help" && $2 != "-h") ]]; then
    echo -e "ERROR: Unknown option specified '$2' (type \"./hello_block.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($2 == "-help" || $2 == "-h") ]]; then
    usage
  fi
}

# Script usage
usage()
{
  msg="Usage: hello_block.sh [-help]\n\
Usage: hello_block.sh [-lib_map_path]\n\
Usage: hello_block.sh [-reset_run]\n\
Usage: hello_block.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}

# Launch script
run $1 $2
