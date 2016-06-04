# Created : 16:59:35, Fri May 20, 2016 : Sanjay Rai

source ../device_type.tcl
create_project project_X project_X -part [DEVICE_TYPE] 

add_files -fileset sources_1 -norecurse {
../IP/axi_bram_ctrl_0/axi_bram_ctrl_0.xci
../IP/pcie_gen3x8_brige_ip/pcie_gen3x8_brige_ip.xci
}

