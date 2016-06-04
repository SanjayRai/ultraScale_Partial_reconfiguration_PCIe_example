vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_9
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/fifo_generator_v13_1_0
vlib activehdl/axi_data_fifo_v2_1_7
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_8
vlib activehdl/axi_protocol_converter_v2_1_8
vlib activehdl/axi_clock_converter_v2_1_7
vlib activehdl/blk_mem_gen_v8_3_2
vlib activehdl/axi_dwidth_converter_v2_1_8

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_9 activehdl/proc_sys_reset_v5_0_9
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_1_0 activehdl/fifo_generator_v13_1_0
vmap axi_data_fifo_v2_1_7 activehdl/axi_data_fifo_v2_1_7
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_8 activehdl/axi_register_slice_v2_1_8
vmap axi_protocol_converter_v2_1_8 activehdl/axi_protocol_converter_v2_1_8
vmap axi_clock_converter_v2_1_7 activehdl/axi_clock_converter_v2_1_7
vmap blk_mem_gen_v8_3_2 activehdl/blk_mem_gen_v8_3_2
vmap axi_dwidth_converter_v2_1_8 activehdl/axi_dwidth_converter_v2_1_8

vlog -work xil_defaultlib -v2k5 -sv "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" \
"/home/applications/Xilinx/Vivado/2016.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/applications/Xilinx/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_base.sv" \
"/home/applications/Xilinx/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_dpdistram.sv" \
"/home/applications/Xilinx/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_dprom.sv" \
"/home/applications/Xilinx/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_sdpram.sv" \
"/home/applications/Xilinx/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_spram.sv" \
"/home/applications/Xilinx/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_sprom.sv" \
"/home/applications/Xilinx/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_tdpram.sv" \

vcom -work xpm -93 \
"/home/applications/Xilinx/Vivado/2016.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -v2k5 -sv "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/phy/ddr4_phy_v2_0_xiphy_behav.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/phy/ddr4_phy_v2_0_xiphy.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/iob/ddr4_phy_v2_0_iob_byte.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/iob/ddr4_phy_v2_0_iob.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/clocking/ddr4_phy_v2_0_pll.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/xiphy_files/ddr4_phy_v2_0_xiphy_tristate_wrapper.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/xiphy_files/ddr4_phy_v2_0_xiphy_riuor_wrapper.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/xiphy_files/ddr4_phy_v2_0_xiphy_control_wrapper.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/xiphy_files/ddr4_phy_v2_0_xiphy_byte_wrapper.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/xiphy_files/ddr4_phy_v2_0_xiphy_bitslice_wrapper.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/phy/axi_ddr_kcu105_ddr4_0_0_phy_ddr4.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/ip_top/axi_ddr_kcu105_ddr4_0_0_phy.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/controller/ddr4_v2_0_mc_wtr.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/controller/ddr4_v2_0_mc_ref.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/controller/ddr4_v2_0_mc_rd_wr.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/controller/ddr4_v2_0_mc_periodic.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/controller/ddr4_v2_0_mc_group.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/controller/ddr4_v2_0_mc_ecc_merge_enc.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/controller/ddr4_v2_0_mc_ecc_gen.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/controller/ddr4_v2_0_mc_ecc_fi_xor.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/controller/ddr4_v2_0_mc_ecc_dec_fix.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/controller/ddr4_v2_0_mc_ecc_buf.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/controller/ddr4_v2_0_mc_ecc.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/controller/ddr4_v2_0_mc_ctl.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/controller/ddr4_v2_0_mc_cmd_mux_c.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/controller/ddr4_v2_0_mc_cmd_mux_ap.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/controller/ddr4_v2_0_mc_arb_p.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/controller/ddr4_v2_0_mc_arb_mux_p.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/controller/ddr4_v2_0_mc_arb_c.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/controller/ddr4_v2_0_mc_arb_a.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/controller/ddr4_v2_0_mc_act_timer.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/controller/ddr4_v2_0_mc_act_rank.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/controller/ddr4_v2_0_mc.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ui/ddr4_v2_0_ui_wr_data.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ui/ddr4_v2_0_ui_rd_data.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ui/ddr4_v2_0_ui_cmd.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ui/ddr4_v2_0_ui.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi/ddr4_v2_0_axi_ar_channel.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi/ddr4_v2_0_axi_aw_channel.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi/ddr4_v2_0_axi_b_channel.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi/ddr4_v2_0_axi_cmd_arbiter.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi/ddr4_v2_0_axi_cmd_fsm.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi/ddr4_v2_0_axi_cmd_translator.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi/ddr4_v2_0_axi_fifo.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi/ddr4_v2_0_axi_incr_cmd.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi/ddr4_v2_0_axi_r_channel.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi/ddr4_v2_0_axi_w_channel.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi/ddr4_v2_0_axi_wr_cmd_fsm.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi/ddr4_v2_0_axi_wrap_cmd.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi/ddr4_v2_0_a_upsizer.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi/ddr4_v2_0_axi.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi/ddr4_v2_0_axi_register_slice.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi/ddr4_v2_0_axi_upsizer.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi/ddr4_v2_0_axic_register_slice.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi/ddr4_v2_0_carry_and.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi/ddr4_v2_0_carry_latch_and.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi/ddr4_v2_0_carry_latch_or.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi/ddr4_v2_0_carry_or.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi/ddr4_v2_0_command_fifo.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi/ddr4_v2_0_comparator.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi/ddr4_v2_0_comparator_sel.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi/ddr4_v2_0_comparator_sel_static.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi/ddr4_v2_0_r_upsizer.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi/ddr4_v2_0_w_upsizer.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi_ctrl/ddr4_v2_0_axi_ctrl_addr_decode.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi_ctrl/ddr4_v2_0_axi_ctrl_read.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi_ctrl/ddr4_v2_0_axi_ctrl_reg_bank.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi_ctrl/ddr4_v2_0_axi_ctrl_reg.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi_ctrl/ddr4_v2_0_axi_ctrl_top.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/axi_ctrl/ddr4_v2_0_axi_ctrl_write.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/clocking/ddr4_v2_0_infrastructure.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal/ddr4_v2_0_cal_xsdb_bram.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal/ddr4_v2_0_cal_write.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal/ddr4_v2_0_cal_wr_byte.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal/ddr4_v2_0_cal_wr_bit.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal/ddr4_v2_0_cal_sync.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal/ddr4_v2_0_cal_riu.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal/ddr4_v2_0_cal_read.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal/ddr4_v2_0_cal_rd_en.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal/ddr4_v2_0_cal_pi.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal/ddr4_v2_0_cal_odt.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal/ddr4_v2_0_cal_mc_odt.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal/ddr4_v2_0_cal_debug_microblaze.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal/ddr4_v2_0_cal_cplx_data.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal/ddr4_v2_0_cal_cplx.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal/ddr4_v2_0_cal_config_rom.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal/ddr4_v2_0_cal_bfifo.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal/ddr4_v2_0_cal_addr_decode.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal/ddr4_v2_0_cal_top.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal/ddr4_v2_0_cal_xsdb_arbiter.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal/ddr4_v2_0_cal.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal/ddr4_v2_0_chipscope_xsdb_slave.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal/ddr4_v2_0_dp_AB9.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top/axi_ddr_kcu105_ddr4_0_0.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top/axi_ddr_kcu105_ddr4_0_0_ddr4.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top/axi_ddr_kcu105_ddr4_0_0_ddr4_mem_intfc.sv" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/tb/microblaze_mcs_0.sv" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_proc_sys_reset_0_0/lib_cdc_v1_0_2/hdl/src/vhdl/cdc_sync.vhd" \

vcom -work proc_sys_reset_v5_0_9 -93 \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_proc_sys_reset_0_0/proc_sys_reset_v5_0_9/hdl/src/vhdl/upcnt_n.vhd" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_proc_sys_reset_0_0/proc_sys_reset_v5_0_9/hdl/src/vhdl/sequence_psr.vhd" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_proc_sys_reset_0_0/proc_sys_reset_v5_0_9/hdl/src/vhdl/lpf.vhd" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_proc_sys_reset_0_0/proc_sys_reset_v5_0_9/hdl/src/vhdl/proc_sys_reset.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_proc_sys_reset_0_0/sim/axi_ddr_kcu105_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" \
"../../../bd/axi_ddr_kcu105/hdl/axi_ddr_kcu105.v" \

vlog -work generic_baseblocks_v2_1_0 -v2k5 "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_carry_and.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_carry_latch_and.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_carry_latch_or.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_carry_or.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_carry.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_command_fifo.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_comparator_mask_static.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_comparator_mask.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask_static.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_static.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_comparator_sel.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_comparator_static.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_comparator.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_mux_enc.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_mux.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/generic_baseblocks_v2_1_0/hdl/verilog/generic_baseblocks_v2_1_nto1_mux.v" \

vlog -work fifo_generator_v13_1_0 -v2k5 "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/fifo_generator_v13_1_0/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_0 -93 \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/fifo_generator_v13_1_0/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_0 -v2k5 "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/fifo_generator_v13_1_0/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_7 -v2k5 "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_data_fifo_v2_1_7/hdl/verilog/axi_data_fifo_v2_1_axic_fifo.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_data_fifo_v2_1_7/hdl/verilog/axi_data_fifo_v2_1_fifo_gen.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_data_fifo_v2_1_7/hdl/verilog/axi_data_fifo_v2_1_axic_srl_fifo.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_data_fifo_v2_1_7/hdl/verilog/axi_data_fifo_v2_1_axic_reg_srl_fifo.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_data_fifo_v2_1_7/hdl/verilog/axi_data_fifo_v2_1_ndeep_srl.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_data_fifo_v2_1_7/hdl/verilog/axi_data_fifo_v2_1_axi_data_fifo.v" \

vlog -work axi_infrastructure_v1_1_0 -v2k5 "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog/axi_infrastructure_v1_1_axi2vector.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog/axi_infrastructure_v1_1_axic_srl_fifo.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog/axi_infrastructure_v1_1_vector2axi.v" \

vlog -work axi_register_slice_v2_1_8 -v2k5 "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_register_slice_v2_1_8/hdl/verilog/axi_register_slice_v2_1_axic_register_slice.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_register_slice_v2_1_8/hdl/verilog/axi_register_slice_v2_1_axi_register_slice.v" \

vlog -work axi_protocol_converter_v2_1_8 -v2k5 "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_protocol_converter_v2_1_8/hdl/verilog/axi_protocol_converter_v2_1_a_axi3_conv.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_protocol_converter_v2_1_8/hdl/verilog/axi_protocol_converter_v2_1_axi3_conv.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_protocol_converter_v2_1_8/hdl/verilog/axi_protocol_converter_v2_1_axilite_conv.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_protocol_converter_v2_1_8/hdl/verilog/axi_protocol_converter_v2_1_r_axi3_conv.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_protocol_converter_v2_1_8/hdl/verilog/axi_protocol_converter_v2_1_w_axi3_conv.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_protocol_converter_v2_1_8/hdl/verilog/axi_protocol_converter_v2_1_b_downsizer.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_protocol_converter_v2_1_8/hdl/verilog/axi_protocol_converter_v2_1_decerr_slave.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_protocol_converter_v2_1_8/hdl/verilog/axi_protocol_converter_v2_1_b2s_simple_fifo.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_protocol_converter_v2_1_8/hdl/verilog/axi_protocol_converter_v2_1_b2s_wrap_cmd.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_protocol_converter_v2_1_8/hdl/verilog/axi_protocol_converter_v2_1_b2s_incr_cmd.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_protocol_converter_v2_1_8/hdl/verilog/axi_protocol_converter_v2_1_b2s_wr_cmd_fsm.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_protocol_converter_v2_1_8/hdl/verilog/axi_protocol_converter_v2_1_b2s_rd_cmd_fsm.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_protocol_converter_v2_1_8/hdl/verilog/axi_protocol_converter_v2_1_b2s_cmd_translator.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_protocol_converter_v2_1_8/hdl/verilog/axi_protocol_converter_v2_1_b2s_b_channel.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_protocol_converter_v2_1_8/hdl/verilog/axi_protocol_converter_v2_1_b2s_r_channel.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_protocol_converter_v2_1_8/hdl/verilog/axi_protocol_converter_v2_1_b2s_aw_channel.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_protocol_converter_v2_1_8/hdl/verilog/axi_protocol_converter_v2_1_b2s_ar_channel.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_protocol_converter_v2_1_8/hdl/verilog/axi_protocol_converter_v2_1_b2s.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_protocol_converter_v2_1_8/hdl/verilog/axi_protocol_converter_v2_1_axi_protocol_converter.v" \

vlog -work axi_clock_converter_v2_1_7 -v2k5 "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_clock_converter_v2_1_7/hdl/verilog/axi_clock_converter_v2_1_axic_sync_clock_converter.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_clock_converter_v2_1_7/hdl/verilog/axi_clock_converter_v2_1_axic_sample_cycle_ratio.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_clock_converter_v2_1_7/hdl/verilog/axi_clock_converter_v2_1_axi_clock_converter.v" \

vlog -work blk_mem_gen_v8_3_2 -v2k5 "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/blk_mem_gen_v8_3_2/simulation/blk_mem_gen_v8_3.v" \

vlog -work axi_dwidth_converter_v2_1_8 -v2k5 "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_dwidth_converter_v2_1_8/hdl/verilog/axi_dwidth_converter_v2_1_a_downsizer.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_dwidth_converter_v2_1_8/hdl/verilog/axi_dwidth_converter_v2_1_b_downsizer.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_dwidth_converter_v2_1_8/hdl/verilog/axi_dwidth_converter_v2_1_r_downsizer.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_dwidth_converter_v2_1_8/hdl/verilog/axi_dwidth_converter_v2_1_w_downsizer.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_dwidth_converter_v2_1_8/hdl/verilog/axi_dwidth_converter_v2_1_axi_downsizer.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_dwidth_converter_v2_1_8/hdl/verilog/axi_dwidth_converter_v2_1_axi4lite_downsizer.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_dwidth_converter_v2_1_8/hdl/verilog/axi_dwidth_converter_v2_1_axi4lite_upsizer.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_dwidth_converter_v2_1_8/hdl/verilog/axi_dwidth_converter_v2_1_a_upsizer.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_dwidth_converter_v2_1_8/hdl/verilog/axi_dwidth_converter_v2_1_r_upsizer.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_dwidth_converter_v2_1_8/hdl/verilog/axi_dwidth_converter_v2_1_w_upsizer.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_dwidth_converter_v2_1_8/hdl/verilog/axi_dwidth_converter_v2_1_w_upsizer_pktfifo.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_dwidth_converter_v2_1_8/hdl/verilog/axi_dwidth_converter_v2_1_r_upsizer_pktfifo.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_dwidth_converter_v2_1_8/hdl/verilog/axi_dwidth_converter_v2_1_axi_upsizer.v" \
"../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_dwidth_converter_v2_1_8/hdl/verilog/axi_dwidth_converter_v2_1_top.v" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/axi_infrastructure_v1_1_0/hdl/verilog" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/ip_0/rtl/map" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/cal" "+incdir+../../../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_ddr4_0_0/rtl/ip_top" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_us_0/sim/axi_ddr_kcu105_auto_us_0.v" \
"../../../bd/axi_ddr_kcu105/ip/axi_ddr_kcu105_auto_cc_0/sim/axi_ddr_kcu105_auto_cc_0.v" \

vlog -work xil_defaultlib "glbl.v"

