# Created : 16:59:35, Fri May 20, 2016 : Sanjay Rai

source ../../../device_type.tcl

source ../../scripts/hd_floorplan_utils.tcl

set TOP_module xilinx_axi_pcie3_ep

create_project -in_memory -part [DEVICE_TYPE] 

read_ip {
../../../IP/pcie_gen3x8_brige_ip/pcie_gen3x8_brige_ip.xci
}

read_bd ../../../IP/bd/axi_ddr_kcu105/axi_ddr_kcu105.bd

read_verilog {
../../PR_modules/PR_BD_ddr4_kcu105/src/xilinx_axi_pcie3_ep_app.v
../../PR_modules/PR_BD_ddr4_kcu105/src/PR_modules.v
../src/xilinx_axi_pcie3_ep.v
}

read_xdc {
../src/xdc/xilinx_axi_pcie3_x0y0.xdc
}

set_property verilog_define XSDB_SLV_DIS [current_fileset]
synth_design -top xilinx_axi_pcie3_ep -part [DEVICE_TYPE]
opt_design
write_checkpoint -force xilinx_axi_pcie3_ep_static_synth_opt.dcp

hd_floorplan [get_cells PR_modules_A] 
