onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+axi_ddr_kcu105 -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -L xpm -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_9 -L generic_baseblocks_v2_1_0 -L fifo_generator_v13_1_0 -L axi_data_fifo_v2_1_7 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_8 -L axi_protocol_converter_v2_1_8 -L axi_clock_converter_v2_1_7 -L blk_mem_gen_v8_3_2 -L axi_dwidth_converter_v2_1_8 -O5 xil_defaultlib.axi_ddr_kcu105 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {axi_ddr_kcu105.udo}

run -all

endsim

quit -force
