# Created : 16:59:35, Fri May 20, 2016 : Sanjay Rai

.PHONY: all

all: build_all

build_all:
	cd ./src/PR_modules/PR_BD_ddr4_kcu105/build;vivado -mode batch -source vivado_batch.tcl 
	cd ./src/PR_modules/PR_BRAM_AXI_CTRL/build;vivado -mode batch -source vivado_batch.tcl 
	cd ./src/PR_modules/PR_BD_AXI_IC_BRAMS/build;vivado -mode batch -source vivado_batch.tcl 
	cd ./src/TOP_module/build;vivado -mode batch -source vivado_batch.tcl 
	cd vivado_batch_PR_build;vivado -mode batch -source vivado_batch.tcl 
clean:
	cd ./src/PR_modules/PR_BD_ddr4_kcu105/build; ./mk_clean.bat
	cd ./src/PR_modules/PR_BRAM_AXI_CTRL/build; ./mk_clean.bat
	cd ./src/PR_modules/PR_BD_AXI_IC_BRAMS/build; ./mk_clean.bat
	cd ./src/TOP_module/build; ./mk_clean.bat
	cd vivado_batch_PR_build;./mk_clean.bat
