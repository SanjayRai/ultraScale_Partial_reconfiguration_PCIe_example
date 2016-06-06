create_clock -period 4.000 -name s_axi_aclk -waveform {0.000 2.000} [get_ports s_axi_aclk]

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
set_property PACKAGE_PIN AG15 [get_ports {ddr4_sdram_bg}]
set_property PACKAGE_PIN AE15 [get_ports {ddr4_sdram_ck_c}]
set_property PACKAGE_PIN AE16 [get_ports {ddr4_sdram_ck_t}]
set_property PACKAGE_PIN AD15 [get_ports {ddr4_sdram_cke}]
set_property PACKAGE_PIN AL19 [get_ports {ddr4_sdram_cs_n}]
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
set_property PACKAGE_PIN AJ18 [get_ports {ddr4_sdram_odt}]
set_property PACKAGE_PIN AL18 [get_ports ddr4_sdram_reset_n]

set_property PACKAGE_PIN AK16 [get_ports default_sysclk_300_clk_n]
set_property PACKAGE_PIN AK17 [get_ports default_sysclk_300_clk_p]
set_property PACKAGE_PIN AN8 [get_ports reset]
set_property IOSTANDARD LVCMOS18 [get_ports reset]




set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[47]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[46]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dm_n[5]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_adr[4]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_adr[0]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dqs_c[5]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dqs_t[5]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[44]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[42]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_adr[5]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_adr[1]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_adr[6]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_adr[7]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_adr[10]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_adr[11]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[41]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[40]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[45]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[43]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_adr[2]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_adr[8]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_adr[12]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_adr[13]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_cs_n" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[39]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[38]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[35]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[34]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[36]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_adr[3]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_ck_t" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_adr[9]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_adr[14]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_adr[15]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[32]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dm_n[4]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[37]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_ck_c" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_ba[1]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_bg" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_adr[16]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dm_n[6]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[52]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[53]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dqs_c[4]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dqs_t[4]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[33]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[28]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dqs_t[0]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dm_n[0]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_ba[0]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[54]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[26]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[31]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[30]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[29]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dqs_c[0]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_cke" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[0]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[1]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_odt" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[50]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[51]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[55]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dm_n[3]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[27]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dqs_c[3]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dqs_t[3]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[24]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[2]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[4]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[5]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[6]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[7]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dqs_t[6]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dqs_c[6]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[60]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[62]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[21]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[20]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[18]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[25]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[3]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dm_n[1]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[8]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[10]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[48]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[49]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[61]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[63]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dm_n[2]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[19]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dqs_c[2]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dqs_t[2]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[16]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_act_n" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[9]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[14]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[11]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dm_n[7]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[58]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[59]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dqs_t[7]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[23]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[22]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[17]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dqs_t[1]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dqs_c[1]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[15]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[12]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[13]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[56]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dq[57]" ]
set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "ddr4_sdram_dqs_c[7]" ]




set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[47]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[46]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dm_n[5]" ]
set_property IOSTANDARD SSTL12_DCI [ get_ports "ddr4_sdram_adr[4]" ]
set_property IOSTANDARD SSTL12_DCI [ get_ports "ddr4_sdram_adr[0]" ]
set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "ddr4_sdram_dqs_c[5]" ]
set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "ddr4_sdram_dqs_t[5]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[44]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[42]" ]
set_property IOSTANDARD SSTL12_DCI [ get_ports "ddr4_sdram_adr[5]" ]
set_property IOSTANDARD SSTL12_DCI [ get_ports "ddr4_sdram_adr[1]" ]
set_property IOSTANDARD SSTL12_DCI [ get_ports "ddr4_sdram_adr[6]" ]
set_property IOSTANDARD SSTL12_DCI [ get_ports "ddr4_sdram_adr[7]" ]
set_property IOSTANDARD SSTL12_DCI [ get_ports "ddr4_sdram_adr[10]" ]
set_property IOSTANDARD SSTL12_DCI [ get_ports "ddr4_sdram_adr[11]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[41]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[40]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[45]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[43]" ]
set_property IOSTANDARD SSTL12_DCI [ get_ports "ddr4_sdram_adr[2]" ]
set_property IOSTANDARD SSTL12_DCI [ get_ports "ddr4_sdram_adr[8]" ]
set_property IOSTANDARD SSTL12_DCI [ get_ports "ddr4_sdram_adr[12]" ]
set_property IOSTANDARD SSTL12_DCI [ get_ports "ddr4_sdram_adr[13]" ]
set_property IOSTANDARD SSTL12_DCI [ get_ports "ddr4_sdram_cs_n" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[39]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[38]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[35]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[34]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[36]" ]
set_property IOSTANDARD SSTL12_DCI [ get_ports "ddr4_sdram_adr[3]" ]
set_property IOSTANDARD DIFF_SSTL12_DCI [ get_ports "ddr4_sdram_ck_t" ]
set_property IOSTANDARD SSTL12_DCI [ get_ports "ddr4_sdram_adr[9]" ]
set_property IOSTANDARD SSTL12_DCI [ get_ports "ddr4_sdram_adr[14]" ]
set_property IOSTANDARD SSTL12_DCI [ get_ports "ddr4_sdram_adr[15]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[32]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dm_n[4]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[37]" ]
set_property IOSTANDARD DIFF_SSTL12_DCI [ get_ports "ddr4_sdram_ck_c" ]
set_property IOSTANDARD SSTL12_DCI [ get_ports "ddr4_sdram_ba[1]" ]
set_property IOSTANDARD SSTL12_DCI [ get_ports "ddr4_sdram_bg" ]
set_property IOSTANDARD SSTL12_DCI [ get_ports "ddr4_sdram_adr[16]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dm_n[6]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[52]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[53]" ]
set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "ddr4_sdram_dqs_c[4]" ]
set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "ddr4_sdram_dqs_t[4]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[33]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[28]" ]
set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "ddr4_sdram_dqs_t[0]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dm_n[0]" ]
set_property IOSTANDARD DIFF_SSTL12 [ get_ports "default_sysclk_300_clk_p" ]
set_property IOSTANDARD DIFF_SSTL12 [ get_ports "default_sysclk_300_clk_n" ]
set_property IOSTANDARD SSTL12_DCI [ get_ports "ddr4_sdram_ba[0]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[54]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[26]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[31]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[30]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[29]" ]
set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "ddr4_sdram_dqs_c[0]" ]
set_property IOSTANDARD SSTL12_DCI [ get_ports "ddr4_sdram_cke" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[0]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[1]" ]
set_property IOSTANDARD SSTL12_DCI [ get_ports "ddr4_sdram_odt" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[50]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[51]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[55]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dm_n[3]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[27]" ]
set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "ddr4_sdram_dqs_c[3]" ]
set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "ddr4_sdram_dqs_t[3]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[24]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[2]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[4]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[5]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[6]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[7]" ]
set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "ddr4_sdram_dqs_t[6]" ]
set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "ddr4_sdram_dqs_c[6]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[60]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[62]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[21]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[20]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[18]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[25]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[3]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dm_n[1]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[8]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[10]" ]
set_property IOSTANDARD LVCMOS12 [ get_ports "ddr4_sdram_reset_n" ]
set_property DRIVE 8 [ get_ports "ddr4_sdram_reset_n" ]

set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[48]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[49]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[61]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[63]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dm_n[2]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[19]" ]
set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "ddr4_sdram_dqs_c[2]" ]
set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "ddr4_sdram_dqs_t[2]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[16]" ]
set_property IOSTANDARD SSTL12_DCI [ get_ports "ddr4_sdram_act_n" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[9]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[14]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[11]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dm_n[7]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[58]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[59]" ]
set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "ddr4_sdram_dqs_t[7]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[23]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[22]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[17]" ]
set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "ddr4_sdram_dqs_t[1]" ]
set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "ddr4_sdram_dqs_c[1]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[15]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[12]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[13]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[56]" ]
set_property IOSTANDARD POD12_DCI [ get_ports "ddr4_sdram_dq[57]" ]
set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "ddr4_sdram_dqs_c[7]" ]

set_property SLEW FAST  [get_ports {ddr4_sdram_adr[*] ddr4_sdram_act_n ddr4_sdram_ba[*] ddr4_sdram_bg ddr4_sdram_cke ddr4_sdram_ck_t ddr4_sdram_ck_c ddr4_sdram_odt ddr4_sdram_dq[*] ddr4_sdram_dqs_t[*] ddr4_sdram_dqs_c[*]}]
set_property IBUF_LOW_PWR FALSE  [get_ports {ddr4_sdram_dq[*] ddr4_sdram_dqs_t[*] ddr4_sdram_dqs_c[*]}]
set_property ODT RTT_40  [get_ports {ddr4_sdram_dq[*] ddr4_sdram_dqs_t[*] ddr4_sdram_dqs_c[*]}]
set_property EQUALIZATION EQ_LEVEL2 [get_ports {ddr4_sdram_dq[*] ddr4_sdram_dqs_t[*] ddr4_sdram_dqs_c[*]}]
set_property PRE_EMPHASIS RDRV_240 [get_ports {ddr4_sdram_dq[*] ddr4_sdram_dqs_t[*] ddr4_sdram_dqs_c[*]}]
set_property SLEW FAST  [get_ports {ddr4_sdram_cs_n}]
set_property DATA_RATE SDR  [get_ports {ddr4_sdram_cs_n}]
set_property SLEW FAST  [get_ports {ddr4_sdram_dm_n[*]}]
set_property IBUF_LOW_PWR FALSE  [get_ports {ddr4_sdram_dm_n[*]}]
set_property ODT RTT_40  [get_ports {ddr4_sdram_dm_n[*]}]
set_property EQUALIZATION EQ_LEVEL2 [get_ports {ddr4_sdram_dm_n[*]}]
set_property PRE_EMPHASIS RDRV_240 [get_ports {ddr4_sdram_dm_n[*]}]
set_property DATA_RATE DDR [get_ports {ddr4_sdram_dm_n[*]}]
set_property DATA_RATE SDR  [get_ports {ddr4_sdram_adr[*] ddr4_sdram_act_n ddr4_sdram_ba[*] ddr4_sdram_bg ddr4_sdram_cke ddr4_sdram_odt }]
set_property DATA_RATE DDR  [get_ports {ddr4_sdram_dq[*] ddr4_sdram_dqs_t[*] ddr4_sdram_dqs_c[*] ddr4_sdram_ck_t ddr4_sdram_ck_c}]

#create_pblock pblock_PR_modules_A
#add_cells_to_pblock [get_pblocks pblock_PR_modules_A] [get_cells -quiet [list PR_modules_A]]
#resize_pblock [get_pblocks pblock_PR_modules_A] -add {SLICE_X49Y102:SLICE_X100Y299 SLICE_X0Y0:SLICE_X48Y299}
#resize_pblock [get_pblocks pblock_PR_modules_A] -add {DSP48E2_X8Y42:DSP48E2_X15Y119 DSP48E2_X0Y0:DSP48E2_X7Y119}
#resize_pblock [get_pblocks pblock_PR_modules_A] -add {GTHE3_CHANNEL_X0Y8:GTHE3_CHANNEL_X0Y19}
#resize_pblock [get_pblocks pblock_PR_modules_A] -add {GTHE3_COMMON_X0Y2:GTHE3_COMMON_X0Y4}
#resize_pblock [get_pblocks pblock_PR_modules_A] -add {IOB_X1Y0:IOB_X1Y51}
#resize_pblock [get_pblocks pblock_PR_modules_A] -add {IOB_X1Y104:IOB_X1Y259 IOB_X0Y0:IOB_X0Y259}
#resize_pblock [get_pblocks pblock_PR_modules_A] -add {PCIE_3_1_X0Y1:PCIE_3_1_X0Y2}
#resize_pblock [get_pblocks pblock_PR_modules_A] -add {RAMB18_X6Y42:RAMB18_X9Y119 RAMB18_X0Y0:RAMB18_X5Y119}
#resize_pblock [get_pblocks pblock_PR_modules_A] -add {RAMB36_X6Y21:RAMB36_X9Y59 RAMB36_X0Y0:RAMB36_X5Y59}
#resize_pblock [get_pblocks pblock_PR_modules_A] -add {SYSMONE1_X0Y0:SYSMONE1_X0Y0}
#set_property SNAPPING_MODE ON [get_pblocks pblock_PR_modules_A]
#
#add_cells_to_pblock pblock_PR_modules_A -top
