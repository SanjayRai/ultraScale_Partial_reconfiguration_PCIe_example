(*dont_touch = "true" *)module dummy_ddr4_module (
  output ddr4_sdram_act_n,
  output [16:0]ddr4_sdram_adr,
  output [1:0]ddr4_sdram_ba,
  output [0:0]ddr4_sdram_bg,
  output [0:0]ddr4_sdram_ck_c,
  output [0:0]ddr4_sdram_ck_t,
  output [0:0]ddr4_sdram_cke,
  output [0:0]ddr4_sdram_cs_n,
  inout [7:0]ddr4_sdram_dm_n,
  inout [63:0]ddr4_sdram_dq,
  inout [7:0]ddr4_sdram_dqs_c,
  inout [7:0]ddr4_sdram_dqs_t,
  output [0:0]ddr4_sdram_odt,
  output ddr4_sdram_reset_n,
  input default_sysclk_300_clk_n,
  input default_sysclk_300_clk_p,
  input reset);


(*dont_touch = "true" *) wire i_ddr4_sdram_act_n;
(*dont_touch = "true" *) wire [16:0]i_ddr4_sdram_adr;
(*dont_touch = "true" *) wire [1:0]i_ddr4_sdram_ba;
(*dont_touch = "true" *) wire [0:0]i_ddr4_sdram_bg;
(*dont_touch = "true" *) wire [0:0]i_ddr4_sdram_ck;
(*dont_touch = "true" *) wire [0:0]i_ddr4_sdram_cke;
(*dont_touch = "true" *) wire [0:0]i_ddr4_sdram_cs_n;
(*dont_touch = "true" *) wire i_ddr4_sdram_odt;
(*dont_touch = "true" *) wire i_ddr4_sdram_reset_n;
(*dont_touch = "true" *) wire [7:0]i_ddr4_sdram_dm_n;
(*dont_touch = "true" *) wire [63:0]i_ddr4_sdram_dq;
(*dont_touch = "true" *) wire [7:0]i_ddr4_sdram_dqs;


  assign i_ddr4_sdram_act_n = 1'b1;
  assign i_ddr4_sdram_adr = 16'd0;
  assign i_ddr4_sdram_ba = 2'b00;
  assign i_ddr4_sdram_bg = 1'b1;
  assign i_ddr4_sdram_ck = 1'b1;
  assign i_ddr4_sdram_cke = 1'b0;
  assign i_ddr4_sdram_cs_n = 1'b1;
  assign i_ddr4_sdram_odt = 1'b1;
  assign i_ddr4_sdram_reset_n = 1'b1;
  assign i_ddr4_sdram_dm_n = 8'd0;
  assign i_ddr4_sdram_dq = 64'd0;
  assign i_ddr4_sdram_dqs = 8'd0;

  genvar i;
  
  (*dont_touch = "true" *)OBUF u_OBUF_ddr4_sdram_act_n (.O(ddr4_sdram_act_n),.I(i_ddr4_sdram_act_n));
  generate
      for (i= 0; i < 17; i = i+1) begin: u_OBUF_ddr4_sdram_adr_gen 
          (*dont_touch = "true" *)OBUF u_OBUF_ddr4_sdram_adr (.O(ddr4_sdram_adr[i]),.I(i_ddr4_sdram_adr));
      end
  endgenerate
  (*dont_touch = "true" *)OBUF u_OBUF_ddr4_sdram_ba_0 (.O(ddr4_sdram_ba[0]),.I(i_ddr4_sdram_ba[0]));
  (*dont_touch = "true" *)OBUF u_OBUF_ddr4_sdram_ba_1 (.O(ddr4_sdram_ba[1]),.I(i_ddr4_sdram_ba[1]));
  (*dont_touch = "true" *)OBUF u_OBUF_ddr4_sdram_bg (.O(ddr4_sdram_bg),.I(i_ddr4_sdram_bg));
  (*dont_touch = "true" *)OBUF u_OBUF_ddr4_sdram_cke (.O(ddr4_sdram_cke),.I(i_ddr4_sdram_cke));
  (*dont_touch = "true" *)OBUF u_OBUF_ddr4_sdram_cs_n (.O(ddr4_sdram_cs_n),.I(i_ddr4_sdram_cs_n));
  (*dont_touch = "true" *)OBUF u_OBUF_ddr4_sdram_odt (.O(ddr4_sdram_odt),.I(i_ddr4_sdram_odt));
  (*dont_touch = "true" *)OBUF u_OBUF_ddr4_sdram_reset_n (.O(ddr4_sdram_reset_n),.I(i_ddr4_sdram_reset_n));

  generate
      for (i= 0; i < 8; i = i+1) begin: u_IOBUF_ddr4_sdram_dm_n_gen 
          (*dont_touch = "true" *)IOBUF u_IOBUF_ddr4_sdram_dm_n (.IO(ddr4_sdram_dm_n[i]), .I(i_ddr4_sdram_dm_n), .O(), .T(1'b0));
      end
  endgenerate    
  generate
      for (i= 0; i < 64; i = i+1) begin: u_IOBUF_ddr4_sdram_dq_gen 
          (*dont_touch = "true" *)IOBUF u_IOBUF_ddr4_sdram_dq(.IO(ddr4_sdram_dq[i]), .I(i_ddr4_sdram_dq), .O(), .T(1'b0));
      end
  endgenerate

  generate
      for (i= 0; i < 8; i = i+1) begin: u_IOBUF_ddr4_sdram_dqs_gen 
          (*dont_touch = "true" *)IOBUFDS u_IOBUF_ddr4_sdram_dqs(.IO(ddr4_sdram_dqs_t[i]), .IOB(ddr4_sdram_dqs_c[i]), .I(i_ddr4_sdram_dqs), .O(), .T(1'b0));
      end
  endgenerate

  (*dont_touch = "true" *)OBUFDS u_OBUF_ddr4_sdram_ck_c (.O(ddr4_sdram_ck_t),.OB(ddr4_sdram_ck_c), .I(i_ddr4_sdram_ck));
   
  (*dont_touch = "true" *)IBUFDS u_IBUFDS_default_sysclk_300_clk (.I(default_sysclk_300_clk_p), .IB(default_sysclk_300_clk_n), .O());
  (*dont_touch = "true" *)IBUF u_IBUF_reset (.I(reset), .O());

endmodule

