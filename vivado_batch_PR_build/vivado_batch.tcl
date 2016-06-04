# Created : 16:59:35, Fri May 20, 2016 : Sanjay Rai

proc create_PR_config_X {} {
open_checkpoint ../src/TOP_module/build/xilinx_axi_pcie3_ep_static_synth.dcp
set_property HD.RECONFIGURABLE true [get_cells PR_modules_A]
read_checkpoint -cell PR_modules_A ../src/PR_modules/PR_BD_ddr4_kcu105/build/PR_modules_synth_opt.dcp
#read_checkpoint -cell PR_modules_A ../src/PR_modules/PR_BD_ddr4_kcu105/build/PR_modules_placed.dcp
#lock_design -level logical [get_cells PR_modules_A]
opt_design
place_design
phys_opt_design
route_design
write_checkpoint -force PR_config_X_full_design_routed.dcp
write_bitstream full_design_PR_X
write_checkpoint -force -cell PR_modules_A ../src/PR_modules/PR_BD_ddr4_kcu105/build/PR_modules_routed.dcp
update_design -cell PR_modules_A -black_box
lock_design -level routing
write_checkpoint -force ../src/TOP_module/build/xilinx_axi_pcie3_ep_static_only_routed.dcp
write_bitstream full_BB_design_PR_X
close_design
}

proc create_PR_config_A {} {
open_checkpoint ../src/TOP_module/build/xilinx_axi_pcie3_ep_static_only_routed.dcp
set_property HD.RECONFIGURABLE true [get_cells PR_modules_A]
read_checkpoint -cell PR_modules_A ../src/PR_modules/PR_BD_AXI_IC_BRAMS/build/PR_modules_synth_opt.dcp
opt_design
place_design
phys_opt_design
route_design
write_checkpoint -force PR_config_A_full_design_routed.dcp
write_bitstream full_design_PR_A
write_checkpoint -force -cell PR_modules_A ../src/PR_modules/PR_BD_AXI_IC_BRAMS/build/PR_modules_routed.dcp
close_design
}

proc create_PR_config_B {} {
open_checkpoint ../src/TOP_module/build/xilinx_axi_pcie3_ep_static_only_routed.dcp
set_property HD.RECONFIGURABLE true [get_cells PR_modules_A]
read_checkpoint -cell PR_modules_A ../src/PR_modules/PR_BRAM_AXI_CTRL/build/PR_modules_synth_opt.dcp
opt_design
place_design
phys_opt_design
route_design
write_checkpoint -force PR_config_B_full_design_routed.dcp
write_bitstream full_design_PR_B
write_checkpoint -force -cell PR_modules_A ../src/PR_modules/PR_BRAM_AXI_CTRL/build/PR_modules_routed.dcp
close_design
}

proc create_PR_config_X_bits {} {
open_checkpoint ./PR_config_X_full_design_routed.dcp
write_bitstream full_design_PR_X
close_design
}
proc create_PR_config_A_bits {} {
open_checkpoint ./PR_config_A_full_design_routed.dcp
write_bitstream full_design_PR_A
close_design
}

proc create_PR_config_B_bits {} {
open_checkpoint ./PR_config_B_full_design_routed.dcp
write_bitstream full_design_PR_B
close_design
}

create_PR_config_X
#create_PR_config_X_bits
create_PR_config_A
#create_PR_config_A_bits
create_PR_config_B
#create_PR_config_B_bits
