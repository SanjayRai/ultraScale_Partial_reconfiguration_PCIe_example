module PR_modules (
  output ddr4_sdram_act_n,
  output [16:0]ddr4_sdram_adr,
  output [1:0]ddr4_sdram_ba,
  output ddr4_sdram_bg,
  output ddr4_sdram_ck_c,
  output ddr4_sdram_ck_t,
  output ddr4_sdram_cke,
  output ddr4_sdram_cs_n,
  inout [7:0]ddr4_sdram_dm_n,
  inout [63:0]ddr4_sdram_dq,
  inout [7:0]ddr4_sdram_dqs_c,
  inout [7:0]ddr4_sdram_dqs_t,
  output [0:0]ddr4_sdram_odt,
  output ddr4_sdram_reset_n,
  input default_sysclk_300_clk_n,
  input default_sysclk_300_clk_p,
  input reset,
  input [7:0]  s_axi_awlen,
  input [2:0]  s_axi_awsize,
  input [1:0]  s_axi_awburst,
  input        s_axi_awlock,
  input [3:0]  s_axi_awcache,
  input [2:0]  s_axi_awprot,
  input        s_axi_awvalid,
  input [31 :0]  s_axi_wstrb,
  input        s_axi_wlast,
  input        s_axi_wvalid,
  input        s_axi_bready, 
  input [7:0]  s_axi_arlen,
  input [2:0]  s_axi_arsize,
  input [1:0]  s_axi_arburst,
  input        s_axi_arlock,
  input [3:0]  s_axi_arcache,
  input [2:0]  s_axi_arprot, 
  input        s_axi_arvalid,
  input        s_axi_rready,

// Common ports, regardless of $en_axi_master_if
  input [15:0] s_axi_awaddr,
  input [15:0] s_axi_araddr,
  output        s_axi_awready,
  input [255 :0]  s_axi_wdata,
  output        s_axi_wready,  
  output [1:0]  s_axi_bresp,
  output        s_axi_bvalid,
  output        s_axi_arready,
  output [255 :0]  s_axi_rdata,
  output [1:0]  s_axi_rresp,
  output        s_axi_rlast,
  output        s_axi_rvalid,
  input        s_axi_aclk,
  input        s_axi_aresetn 
);
 
 
endmodule
