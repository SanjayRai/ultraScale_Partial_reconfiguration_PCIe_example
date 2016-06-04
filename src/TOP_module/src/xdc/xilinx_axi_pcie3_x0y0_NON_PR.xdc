##-----------------------------------------------------------------------------
##
## (c) Copyright 2012-2012 Xilinx, Inc. All rights reserved.
##
## This file contains confidential and proprietary information
## of Xilinx, Inc. and is protected under U.S. and
## international copyright and other intellectual property
## laws.
##
## DISCLAIMER
## This disclaimer is not a license and does not grant any
## rights to the materials distributed herewith. Except as
## otherwise provided in a valid license issued to you by
## Xilinx, and to the maximum extent permitted by applicable
## law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
## WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
## AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
## BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
## INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
## (2) Xilinx shall not be liable (whether in contract or tort,
## including negligence, or under any other theory of
## liability) for any loss or damage of any kind or nature
## related to, arising under or in connection with these
## materials, including for any direct, or any indirect,
## special, incidental, or consequential loss or damage
## (including loss of data, profits, goodwill, or any type of
## loss or damage suffered as a result of any action brought
## by a third party) even if such damage or loss was
## reasonably foreseeable or Xilinx had been advised of the
## possibility of the same.
##
## CRITICAL APPLICATIONS
## Xilinx products are not designed or intended to be fail-
## safe, or for use in any application requiring fail-safe
## performance, such as life-support or safety devices or
## systems, Class III medical devices, nuclear facilities,
## applications related to the deployment of airbags, or any
## other applications that could lead to death, personal
## injury, or severe property or environmental damage
## (individually and collectively, "Critical
## Applications"). Customer assumes the sole risk and
## liability of any use of Xilinx products in Critical
## Applications, subject only to applicable laws and
## regulations governing limitations on product liability.
##
## THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
## PART OF THIS FILE AT ALL TIMES.
##
##-----------------------------------------------------------------------------
##
## Project    : AXI-MM to PCI Express
## File       : xilinx_axi_pcie3_x0y0.xdc
## Version    : $IpVersion 
##-----------------------------------------------------------------------------
###########################################################################
# User Configuration 
# Link Width   - x8
# Link Speed   - gen3
# Family       - kintexu
# Part         - xcku040
# Package      - ffva1156
# Speed grade  - -2
# PCIe Block   - X0Y0
###########################################################################
###############################################################################
# User Time Names / User Time Groups / Time Specs
###############################################################################
create_clock -name sys_clk -period 10 [get_ports sys_clk_p]

set_false_path -through [get_pins pcie_gen3x8_brige_ip_i/inst/pcie3_ip_i/inst/pcie3_uscale_top_inst/pcie3_uscale_wrapper_inst/PCIE_3_1_inst/CFGMAX*]
set_false_path -through [get_nets pcie_gen3x8_brige_ip_i/inst/inst/cfg_max*]


set_false_path -from [get_ports sys_rst_n]

	
###############################################################################
# User Physical Constraints
###############################################################################

###############################################################################
# Pinout and Related I/O Constraints
###############################################################################
##### SYS RESET###########
set_property LOC [get_package_pins -filter {PIN_FUNC == IO_T3U_N12_PERSTN0_65}] [get_ports sys_rst_n]
set_property PULLUP true [get_ports sys_rst_n]
set_property IOSTANDARD LVCMOS18 [get_ports sys_rst_n]

set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property CFGBVS GND [current_design]

##### REFCLK_IBUF###########
set_property LOC AB6 [get_cells refclk_ibuf]
###############################################################################
# Flash Programming Settings: Uncomment as required by your design
# Items below between < > must be updated with correct values to work properly.
###############################################################################
# BPI Flash Programming
#set_property CONFIG_MODE BPI16 [current_design]
#set_property BITSTREAM.CONFIG.BPI_SYNC_MODE <disable | Type1 | Type2> [current_design]
#set_property BITSTREAM.CONFIG.CONFIGRATE 9 [current_design]
#set_property CONFIG_VOLTAGE <voltage> [current_design]
#set_property CFGBVS GND [current_design]
# Example PROM Generation command that should be executed from the Tcl Console
#write_cfgmem -format mcs -interface bpix16 -size 128 -loadbit "up 0x0 <inputBitfile.bit>" <outputBitfile.bit>

# SPI Flash Programming
#set_property CONFIG_MODE SPIx4 [current_design]
#set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 \[current_design\]"
#set_property CONFIG_VOLTAGE <voltage> [current_design]
#set_property CFGBVS <GND | VCC> [current_design]
# Example PROM Generation command that should be executed from the Tcl Console
#write_cfgmem -format mcs -interface spix4 -size 128 -loadbit "up 0x0 <inputBitfile.bit>" <outputBitfile.bit>
##
##

# BITSLICE_CONTROL cell PR_modules_A/xilinx_axi_pcie3_ep_app_i/axi_ddr_kcu105_i/ddr4_0/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[0].xiphy_byte_wrapper.u_xiphy_byte_wrapper/I_CONTROL[1].GEN_I_CONTROL.u_xiphy_control/xiphy_control on site BITSLICE_CONTROL_X0Y15 because Instance PR_modules_A/xilinx_axi_pcie3_ep_app_i/axi_ddr_kcu105_i/ddr4_0/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[0].xiphy_byte_wrapper.u_xiphy_byte_wrapper/I_CONTROL[1].GEN_I_CONTROL.u_xiphy_control/xiphy_control can not be placed in CONTROL of site BITSLICE_CONTROL_X0Y15 because the bel is occupied by PR_modules_A/xilinx_axi_pcie3_ep_app_i/axi_ddr_kcu105_i/ddr4_0/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[0].xiphy_byte_wrapper.u_xiphy_byte_wrapper/I_CONTROL[0].GEN_I_CONTROL.u_xiphy_control/xiphy_control(port:). This could be caused by bel constraint conflict. Please check if the cell is used correctly in the design.
# TX_BITSLICE_TRI cell PR_modules_A/xilinx_axi_pcie3_ep_app_i/axi_ddr_kcu105_i/ddr4_0/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[0].xiphy_byte_wrapper.u_xiphy_byte_wrapper/I_TRISTATE[1].GEN_TRISTATE.u_xiphy_tristate/xiphy_bitslice_write on site BITSLICE_TX_X0Y15 because Instance PR_modules_A/xilinx_axi_pcie3_ep_app_i/axi_ddr_kcu105_i/ddr4_0/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[0].xiphy_byte_wrapper.u_xiphy_byte_wrapper/I_TRISTATE[1].GEN_TRISTATE.u_xiphy_tristate/xiphy_bitslice_write can not be placed in TRISTATE_TX_BITSLICE of site BITSLICE_TX_X0Y15 because the bel is occupied by PR_modules_A/xilinx_axi_pcie3_ep_app_i/axi_ddr_kcu105_i/ddr4_0/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[0].xiphy_byte_wrapper.u_xiphy_byte_wrapper/I_TRISTATE[0].GEN_TRISTATE.u_xiphy_tristate/xiphy_bitslice_write(port:). This could be caused by bel constraint conflict. Please check if the cell is used correctly in the design.
# RIU_OR cell PR_modules_A/xilinx_axi_pcie3_ep_app_i/axi_ddr_kcu105_i/ddr4_0/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[1].xiphy_byte_wrapper.u_xiphy_byte_wrapper/u_xiphy_riuor/xiphy_riu_or on site RIU_OR_X0Y7 because Instance PR_modules_A/xilinx_axi_pcie3_ep_app_i/axi_ddr_kcu105_i/ddr4_0/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[1].xiphy_byte_wrapper.u_xiphy_byte_wrapper/u_xiphy_riuor/xiphy_riu_or can not be placed in RIU_OR of site RIU_OR_X0Y7 because the bel is occupied by PR_modules_A/xilinx_axi_pcie3_ep_app_i/axi_ddr_kcu105_i/ddr4_0/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[0].xiphy_byte_wrapper.u_xiphy_byte_wrapper/u_xiphy_riuor/xiphy_riu_or(port:). This could be caused by bel constraint conflict. Please check if the cell is used correctly in the design.
# BITSLICE_CONTROL cell PR_modules_A/xilinx_axi_pcie3_ep_app_i/axi_ddr_kcu105_i/ddr4_0/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[1].xiphy_byte_wrapper.u_xiphy_byte_wrapper/I_CONTROL[1].GEN_I_CONTROL.u_xiphy_control/xiphy_control on site BITSLICE_CONTROL_X0Y14 because Instance PR_modules_A/xilinx_axi_pcie3_ep_app_i/axi_ddr_kcu105_i/ddr4_0/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[1].xiphy_byte_wrapper.u_xiphy_byte_wrapper/I_CONTROL[1].GEN_I_CONTROL.u_xiphy_control/xiphy_control can not be placed in CONTROL of site BITSLICE_CONTROL_X0Y14 because the bel is occupied by PR_modules_A/xilinx_axi_pcie3_ep_app_i/axi_ddr_kcu105_i/ddr4_0/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[1].xiphy_byte_wrapper.u_xiphy_byte_wrapper/I_CONTROL[0].GEN_I_CONTROL.u_xiphy_control/xiphy_control(port:). This could be caused by bel constraint conflict. Please check if the cell is used correctly in the design.
# TX_BITSLICE_TRI cell PR_modules_A/xilinx_axi_pcie3_ep_app_i/axi_ddr_kcu105_i/ddr4_0/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[1].xiphy_byte_wrapper.u_xiphy_byte_wrapper/I_TRISTATE[1].GEN_TRISTATE.u_xiphy_tristate/xiphy_bitslice_write on site BITSLICE_TX_X0Y14 because Instance PR_modules_A/xilinx_axi_pcie3_ep_app_i/axi_ddr_kcu105_i/ddr4_0/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[1].xiphy_byte_wrapper.u_xiphy_byte_wrapper/I_TRISTATE[1].GEN_TRISTATE.u_xiphy_tristate/xiphy_bitslice_write can not be placed in TRISTATE_TX_BITSLICE of site BITSLICE_TX_X0Y14 because the bel is occupied by PR_modules_A/xilinx_axi_pcie3_ep_app_i/axi_ddr_kcu105_i/ddr4_0/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[1].xiphy_byte_wrapper.u_xiphy_byte_wrapper/I_TRISTATE[0].GEN_TRISTATE.u_xiphy_tristate/xiphy_bitslice_write(port:). This could be caused by bel constraint conflict. Please check if the cell is used correctly in the design.
# RIU_OR cell PR_modules_A/xilinx_axi_pcie3_ep_app_i/axi_ddr_kcu105_i/ddr4_0/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[1].xiphy_byte_wrapper.u_xiphy_byte_wrapper/u_xiphy_riuor/xiphy_riu_or on site RIU_OR_X0Y7 because Instance PR_modules_A/xilinx_axi_pcie3_ep_app_i/axi_ddr_kcu105_i/ddr4_0/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[1].xiphy_byte_wrapper.u_xiphy_byte_wrapper/u_xiphy_riuor/xiphy_riu_or can not be placed in RIU_OR of site RIU_OR_X0Y7 because the bel is occupied by PR_modules_A/xilinx_axi_pcie3_ep_app_i/axi_ddr_kcu105_i/ddr4_0/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[0].xiphy_byte_wrapper.u_xiphy_byte_wrapper/u_xiphy_riuor/xiphy_riu_or(port:). This could be caused by bel constraint conflict. Please check if the cell is used correctly in the design.
# 
# 
# BITSLICE_CONTROL cell 
# PR_modules_A/xilinx_axi_pcie3_ep_app_i/axi_ddr_kcu105_i/ddr4_0/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[0].xiphy_byte_wrapper.u_xiphy_byte_wrapper/I_CONTROL[1].GEN_I_CONTROL.u_xiphy_control/xiphy_control
# on site BITSLICE_CONTROL_X0Y15 because Instance 
# PR_modules_A/xilinx_axi_pcie3_ep_app_i/axi_ddr_kcu105_i/ddr4_0/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[0].xiphy_byte_wrapper.u_xiphy_byte_wrapper/I_CONTROL[1].GEN_I_CONTROL.u_xiphy_control/xiphy_control
# can not be placed in CONTROL of site BITSLICE_CONTROL_X0Y15 because the bel is occupied by 
# PR_modules_A/xilinx_axi_pcie3_ep_app_i/axi_ddr_kcu105_i/ddr4_0/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[0].xiphy_byte_wrapper.u_xiphy_byte_wrapper/I_CONTROL[0].GEN_I_CONTROL.u_xiphy_control/xiphy_control
# (port:). This could be caused by bel constraint conflict. Please check if the cell is used correctly in the design.
# 
# 
# RIU_OR cell 
# PR_modules_A/xilinx_axi_pcie3_ep_app_i/axi_ddr_kcu105_i/ddr4_0/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[1].xiphy_byte_wrapper.u_xiphy_byte_wrapper/u_xiphy_riuor/xiphy_riu_or
# on site RIU_OR_X0Y7 because Instance
# PR_modules_A/xilinx_axi_pcie3_ep_app_i/axi_ddr_kcu105_i/ddr4_0/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[1].xiphy_byte_wrapper.u_xiphy_byte_wrapper/u_xiphy_riuor/xiphy_riu_or
# can not be placed in RIU_OR of site RIU_OR_X0Y7 because the bel is occupied by 
# PR_modules_A/xilinx_axi_pcie3_ep_app_i/axi_ddr_kcu105_i/ddr4_0/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[0].xiphy_byte_wrapper.u_xiphy_byte_wrapper/u_xiphy_riuor/xiphy_riu_or
# (port:). This could be caused by bel constraint conflict. Please check if the cell is used correctly in the design.
#
set_property IO_BUFFER_TYPE NONE [get_ports ddr4_sdram_act_n]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_adr[0]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_adr[1]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_adr[2]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_adr[3]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_adr[4]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_adr[5]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_adr[6]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_adr[7]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_adr[8]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_adr[9]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_adr[10]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_adr[11]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_adr[12]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_adr[13]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_adr[14]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_adr[15]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_adr[16]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_ba[0]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_ba[1]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_bg[0]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_ck_c[0]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_ck_t[0]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_cke[0]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_cs_n[0]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dm_n[0]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dm_n[1]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dm_n[2]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dm_n[3]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dm_n[4]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dm_n[5]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dm_n[6]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dm_n[7]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[0]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[1]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[2]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[3]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[4]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[5]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[6]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[7]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[8]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[9]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[10]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[11]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[12]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[13]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[14]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[15]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[16]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[17]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[18]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[19]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[20]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[21]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[22]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[23]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[24]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[25]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[26]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[27]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[28]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[29]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[30]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[31]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[32]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[33]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[34]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[35]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[36]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[37]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[38]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[39]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[40]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[41]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[42]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[43]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[44]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[45]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[46]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[47]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[48]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[49]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[50]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[51]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[52]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[53]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[54]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[55]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[56]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[57]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[58]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[59]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[60]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[61]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[62]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dq[63]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dqs_c[0]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dqs_t[0]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dqs_c[1]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dqs_t[1]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dqs_t[2]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dqs_c[2]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dqs_c[3]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dqs_t[3]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dqs_t[4]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dqs_c[4]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dqs_c[5]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dqs_t[5]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dqs_c[6]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dqs_t[6]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dqs_c[7]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_dqs_t[7]}]
set_property IO_BUFFER_TYPE NONE [get_ports {ddr4_sdram_odt[0]}]
set_property IO_BUFFER_TYPE NONE [get_ports ddr4_sdram_reset_n]
set_property IO_BUFFER_TYPE NONE [get_ports default_sysclk_300_clk_n]
set_property IO_BUFFER_TYPE NONE [get_ports default_sysclk_300_clk_p]
set_property IO_BUFFER_TYPE NONE [get_ports reset]

set_property PACKAGE_PIN AH14 [get_ports ddr4_sdram_act_n]
set_property PACKAGE_PIN AE17 [get_ports {ddr4_sdram_adr[0]}]
set_property PACKAGE_PIN AH17 [get_ports {ddr4_sdram_adr[1]}]
set_property PACKAGE_PIN AE18 [get_ports {ddr4_sdram_adr[2]}]
set_property PACKAGE_PIN AJ15 [get_ports {ddr4_sdram_adr[3]}]
set_property PACKAGE_PIN AG16 [get_ports {ddr4_sdram_adr[4]}]
set_property PACKAGE_PIN AL17 [get_ports {ddr4_sdram_adr[5]}]
set_property PACKAGE_PIN AK18 [get_ports {ddr4_sdram_adr[6]}]
set_property PACKAGE_PIN AG17 [get_ports {ddr4_sdram_adr[7]}]
set_property PACKAGE_PIN AF18 [get_ports {ddr4_sdram_adr[8]}]
set_property PACKAGE_PIN AH19 [get_ports {ddr4_sdram_adr[9]}]
set_property PACKAGE_PIN AF15 [get_ports {ddr4_sdram_adr[10]}]
set_property PACKAGE_PIN AD19 [get_ports {ddr4_sdram_adr[11]}]
set_property PACKAGE_PIN AJ14 [get_ports {ddr4_sdram_adr[12]}]
set_property PACKAGE_PIN AG19 [get_ports {ddr4_sdram_adr[13]}]
set_property PACKAGE_PIN AD16 [get_ports {ddr4_sdram_adr[14]}]
set_property PACKAGE_PIN AG14 [get_ports {ddr4_sdram_adr[15]}]
set_property PACKAGE_PIN AF14 [get_ports {ddr4_sdram_adr[16]}]
set_property PACKAGE_PIN AF17 [get_ports {ddr4_sdram_ba[0]}]
set_property PACKAGE_PIN AL15 [get_ports {ddr4_sdram_ba[1]}]
set_property PACKAGE_PIN AG15 [get_ports {ddr4_sdram_bg[0]}]
set_property PACKAGE_PIN AE15 [get_ports {ddr4_sdram_ck_c[0]}]
set_property PACKAGE_PIN AE16 [get_ports {ddr4_sdram_ck_t[0]}]
set_property PACKAGE_PIN AD15 [get_ports {ddr4_sdram_cke[0]}]
set_property PACKAGE_PIN AL19 [get_ports {ddr4_sdram_cs_n[0]}]
set_property PACKAGE_PIN AD21 [get_ports {ddr4_sdram_dm_n[0]}]
set_property PACKAGE_PIN AE25 [get_ports {ddr4_sdram_dm_n[1]}]
set_property PACKAGE_PIN AJ21 [get_ports {ddr4_sdram_dm_n[2]}]
set_property PACKAGE_PIN AM21 [get_ports {ddr4_sdram_dm_n[3]}]
set_property PACKAGE_PIN AH26 [get_ports {ddr4_sdram_dm_n[4]}]
set_property PACKAGE_PIN AN26 [get_ports {ddr4_sdram_dm_n[5]}]
set_property PACKAGE_PIN AJ29 [get_ports {ddr4_sdram_dm_n[6]}]
set_property PACKAGE_PIN AL32 [get_ports {ddr4_sdram_dm_n[7]}]
set_property PACKAGE_PIN AE23 [get_ports {ddr4_sdram_dq[0]}]
set_property PACKAGE_PIN AG20 [get_ports {ddr4_sdram_dq[1]}]
set_property PACKAGE_PIN AF22 [get_ports {ddr4_sdram_dq[2]}]
set_property PACKAGE_PIN AF20 [get_ports {ddr4_sdram_dq[3]}]
set_property PACKAGE_PIN AE22 [get_ports {ddr4_sdram_dq[4]}]
set_property PACKAGE_PIN AD20 [get_ports {ddr4_sdram_dq[5]}]
set_property PACKAGE_PIN AG22 [get_ports {ddr4_sdram_dq[6]}]
set_property PACKAGE_PIN AE20 [get_ports {ddr4_sdram_dq[7]}]
set_property PACKAGE_PIN AJ24 [get_ports {ddr4_sdram_dq[8]}]
set_property PACKAGE_PIN AG24 [get_ports {ddr4_sdram_dq[9]}]
set_property PACKAGE_PIN AJ23 [get_ports {ddr4_sdram_dq[10]}]
set_property PACKAGE_PIN AF23 [get_ports {ddr4_sdram_dq[11]}]
set_property PACKAGE_PIN AH23 [get_ports {ddr4_sdram_dq[12]}]
set_property PACKAGE_PIN AF24 [get_ports {ddr4_sdram_dq[13]}]
set_property PACKAGE_PIN AH22 [get_ports {ddr4_sdram_dq[14]}]
set_property PACKAGE_PIN AG25 [get_ports {ddr4_sdram_dq[15]}]
set_property PACKAGE_PIN AL22 [get_ports {ddr4_sdram_dq[16]}]
set_property PACKAGE_PIN AL25 [get_ports {ddr4_sdram_dq[17]}]
set_property PACKAGE_PIN AM20 [get_ports {ddr4_sdram_dq[18]}]
set_property PACKAGE_PIN AK23 [get_ports {ddr4_sdram_dq[19]}]
set_property PACKAGE_PIN AK22 [get_ports {ddr4_sdram_dq[20]}]
set_property PACKAGE_PIN AL24 [get_ports {ddr4_sdram_dq[21]}]
set_property PACKAGE_PIN AL20 [get_ports {ddr4_sdram_dq[22]}]
set_property PACKAGE_PIN AL23 [get_ports {ddr4_sdram_dq[23]}]
set_property PACKAGE_PIN AM24 [get_ports {ddr4_sdram_dq[24]}]
set_property PACKAGE_PIN AN23 [get_ports {ddr4_sdram_dq[25]}]
set_property PACKAGE_PIN AN24 [get_ports {ddr4_sdram_dq[26]}]
set_property PACKAGE_PIN AP23 [get_ports {ddr4_sdram_dq[27]}]
set_property PACKAGE_PIN AP25 [get_ports {ddr4_sdram_dq[28]}]
set_property PACKAGE_PIN AN22 [get_ports {ddr4_sdram_dq[29]}]
set_property PACKAGE_PIN AP24 [get_ports {ddr4_sdram_dq[30]}]
set_property PACKAGE_PIN AM22 [get_ports {ddr4_sdram_dq[31]}]
set_property PACKAGE_PIN AH28 [get_ports {ddr4_sdram_dq[32]}]
set_property PACKAGE_PIN AK26 [get_ports {ddr4_sdram_dq[33]}]
set_property PACKAGE_PIN AK28 [get_ports {ddr4_sdram_dq[34]}]
set_property PACKAGE_PIN AM27 [get_ports {ddr4_sdram_dq[35]}]
set_property PACKAGE_PIN AJ28 [get_ports {ddr4_sdram_dq[36]}]
set_property PACKAGE_PIN AH27 [get_ports {ddr4_sdram_dq[37]}]
set_property PACKAGE_PIN AK27 [get_ports {ddr4_sdram_dq[38]}]
set_property PACKAGE_PIN AM26 [get_ports {ddr4_sdram_dq[39]}]
set_property PACKAGE_PIN AL30 [get_ports {ddr4_sdram_dq[40]}]
set_property PACKAGE_PIN AP29 [get_ports {ddr4_sdram_dq[41]}]
set_property PACKAGE_PIN AM30 [get_ports {ddr4_sdram_dq[42]}]
set_property PACKAGE_PIN AN28 [get_ports {ddr4_sdram_dq[43]}]
set_property PACKAGE_PIN AL29 [get_ports {ddr4_sdram_dq[44]}]
set_property PACKAGE_PIN AP28 [get_ports {ddr4_sdram_dq[45]}]
set_property PACKAGE_PIN AM29 [get_ports {ddr4_sdram_dq[46]}]
set_property PACKAGE_PIN AN27 [get_ports {ddr4_sdram_dq[47]}]
set_property PACKAGE_PIN AH31 [get_ports {ddr4_sdram_dq[48]}]
set_property PACKAGE_PIN AH32 [get_ports {ddr4_sdram_dq[49]}]
set_property PACKAGE_PIN AJ34 [get_ports {ddr4_sdram_dq[50]}]
set_property PACKAGE_PIN AK31 [get_ports {ddr4_sdram_dq[51]}]
set_property PACKAGE_PIN AJ31 [get_ports {ddr4_sdram_dq[52]}]
set_property PACKAGE_PIN AJ30 [get_ports {ddr4_sdram_dq[53]}]
set_property PACKAGE_PIN AH34 [get_ports {ddr4_sdram_dq[54]}]
set_property PACKAGE_PIN AK32 [get_ports {ddr4_sdram_dq[55]}]
set_property PACKAGE_PIN AN33 [get_ports {ddr4_sdram_dq[56]}]
set_property PACKAGE_PIN AP33 [get_ports {ddr4_sdram_dq[57]}]
set_property PACKAGE_PIN AM34 [get_ports {ddr4_sdram_dq[58]}]
set_property PACKAGE_PIN AP31 [get_ports {ddr4_sdram_dq[59]}]
set_property PACKAGE_PIN AM32 [get_ports {ddr4_sdram_dq[60]}]
set_property PACKAGE_PIN AN31 [get_ports {ddr4_sdram_dq[61]}]
set_property PACKAGE_PIN AL34 [get_ports {ddr4_sdram_dq[62]}]
set_property PACKAGE_PIN AN32 [get_ports {ddr4_sdram_dq[63]}]
set_property PACKAGE_PIN AH21 [get_ports {ddr4_sdram_dqs_c[0]}]
set_property PACKAGE_PIN AG21 [get_ports {ddr4_sdram_dqs_t[0]}]
set_property PACKAGE_PIN AJ25 [get_ports {ddr4_sdram_dqs_c[1]}]
set_property PACKAGE_PIN AH24 [get_ports {ddr4_sdram_dqs_t[1]}]
set_property PACKAGE_PIN AJ20 [get_ports {ddr4_sdram_dqs_t[2]}]
set_property PACKAGE_PIN AK20 [get_ports {ddr4_sdram_dqs_c[2]}]
set_property PACKAGE_PIN AP21 [get_ports {ddr4_sdram_dqs_c[3]}]
set_property PACKAGE_PIN AP20 [get_ports {ddr4_sdram_dqs_t[3]}]
set_property PACKAGE_PIN AL27 [get_ports {ddr4_sdram_dqs_t[4]}]
set_property PACKAGE_PIN AL28 [get_ports {ddr4_sdram_dqs_c[4]}]
set_property PACKAGE_PIN AP30 [get_ports {ddr4_sdram_dqs_c[5]}]
set_property PACKAGE_PIN AN29 [get_ports {ddr4_sdram_dqs_t[5]}]
set_property PACKAGE_PIN AJ33 [get_ports {ddr4_sdram_dqs_c[6]}]
set_property PACKAGE_PIN AH33 [get_ports {ddr4_sdram_dqs_t[6]}]
set_property PACKAGE_PIN AP34 [get_ports {ddr4_sdram_dqs_c[7]}]
set_property PACKAGE_PIN AN34 [get_ports {ddr4_sdram_dqs_t[7]}]
set_property PACKAGE_PIN AJ18 [get_ports {ddr4_sdram_odt[0]}]
set_property PACKAGE_PIN AL18 [get_ports ddr4_sdram_reset_n]

set_property PACKAGE_PIN AK16 [get_ports default_sysclk_300_clk_n]
set_property PACKAGE_PIN AK17 [get_ports default_sysclk_300_clk_p]
set_property PACKAGE_PIN AN8 [get_ports reset]
set_property IOSTANDARD LVCMOS18 [get_ports reset]

# __SRAI create_pblock pblock_PR_modules_A
# __SRAI set_property SNAPPING_MODE ON [get_pblocks pblock_PR_modules_A]
# __SRAI add_cells_to_pblock [get_pblocks pblock_PR_modules_A] [get_cells -quiet [list PR_modules_A]]
# __SRAI #resize_pblock [get_pblocks pblock_PR_modules_A] -add {SLICE_X0Y0:SLICE_X81Y119}
# __SRAI #resize_pblock [get_pblocks pblock_PR_modules_A] -add {DSP48E2_X0Y0:DSP48E2_X14Y47}
# __SRAI #resize_pblock [get_pblocks pblock_PR_modules_A] -add {RAMB18_X0Y0:RAMB18_X7Y47}
# __SRAI #resize_pblock [get_pblocks pblock_PR_modules_A] -add {RAMB36_X0Y0:RAMB36_X7Y23}
# __SRAI #resize_pblock [get_pblocks pblock_PR_modules_A] -add {RIU_OR_X0Y0:RIU_OR_X0Y7}
# __SRAI #resize_pblock [get_pblocks pblock_PR_modules_A] -add {IOB_X0Y0:IOB_X0Y90}
# __SRAI 
# __SRAI resize_pblock [get_pblocks pblock_PR_modules_A] -add {CLOCKREGION_X0Y2:CLOCKREGION_X3Y4}
# __SRAI resize_pblock [get_pblocks pblock_PR_modules_A] -add {CLOCKREGION_X0Y0:CLOCKREGION_X2Y0}
# __SRAI resize_pblock [get_pblocks pblock_PR_modules_A] -add {CLOCKREGION_X0Y0:CLOCKREGION_X2Y0}
# __SRAI resize_pblock [get_pblocks pblock_PR_modules_A] -add {CLOCKREGION_X0Y1:CLOCKREGION_X1Y1}

# __SRAI set_property HD.RECONFIGURABLE true [get_cells PR_modules_A]
# __SRAI create_pblock pblock_PR_modules_A
# __SRAI add_cells_to_pblock [get_pblocks pblock_PR_modules_A] [get_cells -quiet [list PR_modules_A]]
# __SRAI set_property SNAPPING_MODE ON [get_pblocks pblock_PR_modules_A]
# __SRAI resize_pblock [get_pblocks pblock_PR_modules_A] -add {SLICE_X49Y102:SLICE_X100Y299 SLICE_X0Y0:SLICE_X48Y299}
# __SRAI resize_pblock [get_pblocks pblock_PR_modules_A] -add {DSP48E2_X8Y42:DSP48E2_X15Y119 DSP48E2_X0Y0:DSP48E2_X7Y119}
# __SRAI resize_pblock [get_pblocks pblock_PR_modules_A] -add {GTHE3_CHANNEL_X0Y8:GTHE3_CHANNEL_X0Y19}
# __SRAI resize_pblock [get_pblocks pblock_PR_modules_A] -add {GTHE3_COMMON_X0Y2:GTHE3_COMMON_X0Y4}
# __SRAI resize_pblock [get_pblocks pblock_PR_modules_A] -add {IOB_X1Y0:IOB_X1Y51}
# __SRAI resize_pblock [get_pblocks pblock_PR_modules_A] -add {IOB_X1Y104:IOB_X1Y259 IOB_X0Y0:IOB_X0Y259}
# __SRAI resize_pblock [get_pblocks pblock_PR_modules_A] -add {PCIE_3_1_X0Y1:PCIE_3_1_X0Y2}
# __SRAI resize_pblock [get_pblocks pblock_PR_modules_A] -add {RAMB18_X6Y42:RAMB18_X9Y119 RAMB18_X0Y0:RAMB18_X5Y119}
# __SRAI resize_pblock [get_pblocks pblock_PR_modules_A] -add {RAMB36_X6Y21:RAMB36_X9Y59 RAMB36_X0Y0:RAMB36_X5Y59}
# __SRAI resize_pblock [get_pblocks pblock_PR_modules_A] -add {SYSMONE1_X0Y0:SYSMONE1_X0Y0}

# __SRAI  set_property HD.RECONFIGURABLE true [get_cells PR_modules_A]
# __SRAI  create_pblock pblock_PR_modules_A
# __SRAI  add_cells_to_pblock [get_pblocks pblock_PR_modules_A] [get_cells -quiet [list PR_modules_A]]
# __SRAI  resize_pblock [get_pblocks pblock_PR_modules_A] -add {SLICE_X0Y102:SLICE_X100Y299 SLICE_X0Y60:SLICE_X48Y101}
# __SRAI  resize_pblock [get_pblocks pblock_PR_modules_A] -add {DSP48E2_X0Y42:DSP48E2_X15Y119 DSP48E2_X0Y24:DSP48E2_X7Y41}
# __SRAI  resize_pblock [get_pblocks pblock_PR_modules_A] -add {GTHE3_CHANNEL_X0Y8:GTHE3_CHANNEL_X0Y19}
# __SRAI  resize_pblock [get_pblocks pblock_PR_modules_A] -add {GTHE3_COMMON_X0Y2:GTHE3_COMMON_X0Y4}
# __SRAI  resize_pblock [get_pblocks pblock_PR_modules_A] -add {IOB_X0Y104:IOB_X1Y259 IOB_X0Y52:IOB_X0Y103}
# __SRAI  resize_pblock [get_pblocks pblock_PR_modules_A] -add {PCIE_3_1_X0Y1:PCIE_3_1_X0Y2}
# __SRAI  resize_pblock [get_pblocks pblock_PR_modules_A] -add {RAMB18_X0Y42:RAMB18_X9Y119 RAMB18_X0Y24:RAMB18_X5Y41}
# __SRAI  resize_pblock [get_pblocks pblock_PR_modules_A] -add {RAMB36_X0Y21:RAMB36_X9Y59 RAMB36_X0Y12:RAMB36_X5Y20}
# __SRAI  resize_pblock [get_pblocks pblock_PR_modules_A] -add {SYSMONE1_X0Y0:SYSMONE1_X0Y0}
# __SRAI  resize_pblock [get_pblocks pblock_PR_modules_A] -add {CLOCKREGION_X0Y0:CLOCKREGION_X2Y0}
# __SRAI  set_property SNAPPING_MODE ON [get_pblocks pblock_PR_modules_A]

create_pblock pblock_PR_modules_A
add_cells_to_pblock [get_pblocks pblock_PR_modules_A] [get_cells -quiet [list PR_modules_A]]
resize_pblock [get_pblocks pblock_PR_modules_A] -add {CLOCKREGION_X0Y2:CLOCKREGION_X3Y4 CLOCKREGION_X0Y1:CLOCKREGION_X1Y1 CLOCKREGION_X0Y0:CLOCKREGION_X2Y0}
set_property SNAPPING_MODE ON [get_pblocks pblock_PR_modules_A]

