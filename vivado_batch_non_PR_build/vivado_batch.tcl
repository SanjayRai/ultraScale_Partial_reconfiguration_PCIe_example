# Created : 16:59:35, Fri May 20, 2016 : Sanjay Rai

source ../device_type.tcl


set TOP_module xilinx_axi_pcie3_ep

create_project -in_memory -part [DEVICE_TYPE] 

read_ip {
../IP/pcie_gen3x8_brige_ip/pcie_gen3x8_brige_ip.xci
}

read_bd ../IP/bd/axi_ddr_kcu105/axi_ddr_kcu105.bd
read_verilog {
../src/PR_modules/PR_BD_ddr4_kcu105/src/PR_modules.v
../src/PR_modules/PR_BD_ddr4_kcu105/src/xilinx_axi_pcie3_ep_app.v
../src/TOP_module/src/xilinx_axi_pcie3_ep.v
}

read_xdc {
../src/TOP_module/src/xdc/xilinx_axi_pcie3_x0y0_NON_PR.xdc
}

synth_design -top $TOP_module -part [DEVICE_TYPE] 
opt_design -verbose -directive Explore
write_checkpoint -force $TOP_module.post_synth_opt.dcp
if (1) {
place_design -verbose -directive Explore
write_checkpoint -force $TOP_module.post_place.dcp
phys_opt_design  -verbose -directive Explore
write_checkpoint -force $TOP_module.post_place_phys_opt.dcp
route_design  -verbose -directive Explore
write_checkpoint -force $TOP_module.post_route.dcp
phys_opt_design  -verbose -directive Explore
write_checkpoint -force $TOP_module.post_route_phys_opt.dcp
report_timing_summary -file $TOP_module.timing_summary.rpt
report_drc -file $TOP_module.drc.rpt
set_property config_mode SPIx4 [current_design]
set_property config_mode B_SCAN [current_design]
set_property config_mode SPIx4 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
write_bitstream $TOP_module.bit      
}
