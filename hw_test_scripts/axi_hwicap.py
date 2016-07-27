#! /usr/bin/python
import binascii
import os
import sys
import subprocess

def AXI_HwIcap_write_control_reg(HWICAP_BaseAddress, data_val):
        cmd_strng = "iotools mmio_write32 %s %s" % (hex(HWICAP_BaseAddress + 0x10C), hex(data_val))
        #print ("%s") % cmd_strng
	output_stng = subprocess.Popen(cmd_strng, stdout=subprocess.PIPE, shell=True)
	while(True) :
		return 1 
def AXI_HwIcap_write_WR_FIFO_reg(HWICAP_BaseAddress, hex_data_val):
        cmd_strng = "iotools mmio_write32 %s 0x%s" % (hex(HWICAP_BaseAddress + 0x100), hex_data_val)
        #print ("%s") % cmd_strng
	output_stng = subprocess.Popen(cmd_strng, stdout=subprocess.PIPE, shell=True)
	while(True) :
		return 1 
def AXI_HwIcap_read_WR_FIFO_vacancy_reg(HWICAP_BaseAddress):
        cmd_strng = "iotools mmio_read32 %s" % (hex(HWICAP_BaseAddress + 0x114))
        #print ("%s") % cmd_strng
	output_stng = subprocess.Popen(cmd_strng, stdout=subprocess.PIPE, shell=True)
	while(True) :
		return int(output_stng.stdout.readline().rstrip(),16)
def AXI_HwIcap_read_status_reg(HWICAP_BaseAddress):
        cmd_strng = "iotools mmio_read32 %s" % (hex(HWICAP_BaseAddress + 0x110))
        #print ("%s") % cmd_strng
	output_stng = subprocess.Popen(cmd_strng, stdout=subprocess.PIPE, shell=True)
	while(True) :
		return int(output_stng.stdout.readline().rstrip(),16)
	

if (len(sys.argv)) != 3 :
    print "Wrong arguments\n\n\t ./axi_hwicap.py 0xf7c00000 srai.bin"
else :
	base_addr_m = int(sys.argv[1],16)
	filename = sys.argv[2]
	FP = open (filename, 'rb')
	icap_write_count = 0
	icap_write_byte_count = 0
	try:
		if AXI_HwIcap_read_status_reg(base_addr_m) != 0x00000005 :
			print "AXI_HW_ICAP is not initialized"
		else :
			content = FP.read(4)
			icap_write_byte_count = icap_write_byte_count + 4 
			while content != "":
				hex_val = binascii.hexlify(content)
				if AXI_HwIcap_read_WR_FIFO_vacancy_reg(base_addr_m) > 10 :
					AXI_HwIcap_write_WR_FIFO_reg(base_addr_m, hex_val)
					icap_write_count = icap_write_count+1
				else :
					if AXI_HwIcap_read_status_reg(base_addr_m) != 0x00000005 :
						print "AXI_HW_ICAP is not ready"
					else :
						AXI_HwIcap_write_WR_FIFO_reg(base_addr_m, hex_val)
						AXI_HwIcap_write_control_reg(base_addr_m, 0x1)
						print icap_write_byte_count
						icap_write_count = 0

				content = FP.read(4)
				icap_write_byte_count = icap_write_byte_count + 4 
	finally:
	        AXI_HwIcap_write_control_reg(base_addr_m, 0x1)
		FP.close()
