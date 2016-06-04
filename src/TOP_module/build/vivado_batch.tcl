# Created : 16:59:35, Fri May 20, 2016 : Sanjay Rai

source ../../../device_type.tcl


set TOP_module xilinx_axi_pcie3_ep

create_project -in_memory -part [DEVICE_TYPE] 

read_ip {
../../../IP/pcie_gen3x8_brige_ip/pcie_gen3x8_brige_ip.xci
}

read_verilog {
../src/PR_modules_BB.v
../src/xilinx_axi_pcie3_ep.v
}

read_xdc {
../src/xdc/xilinx_axi_pcie3_x0y0.xdc
}

if (1) {
synth_design -top xilinx_axi_pcie3_ep -part [DEVICE_TYPE]
write_checkpoint -force xilinx_axi_pcie3_ep_static_synth.dcp
}
