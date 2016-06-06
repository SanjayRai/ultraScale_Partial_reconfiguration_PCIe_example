# Created : 16:59:35, Fri May 20, 2016 : Sanjay Rai

source ../../../../device_type.tcl


set TOP_module PR_modules

create_project -in_memory -part [DEVICE_TYPE] 

read_bd ../../../../IP/bd/axi_infra/axi_infra.bd

read_verilog {
../../dummy_ddr4_module.v
../src/xilinx_axi_pcie3_ep_app.v
../src/PR_modules.v
}

read_xdc {
../../../xdc/PR_modules.xdc
}
# ../../../xdc/PR_modules_A_ooc_budget.xdc
# ../../../xdc/PR_modules_A_ooc_optimize.xdc
# ../../../xdc/PR_modules_A_ooc_timing.xdc
# ../../../xdc/PR_modules_A_phys.xdc

set_property verilog_define XSDB_SLV_DIS [current_fileset]
synth_design -top $TOP_module -part [DEVICE_TYPE] -mode out_of_context 
write_checkpoint -force ./PR_modules_synth.dcp
opt_design
write_checkpoint -force ./PR_modules_synth_opt.dcp
place_design
write_checkpoint ./PR_modules_placed.dcp
route_design
write_checkpoint ./PR_modules_routed.dcp
