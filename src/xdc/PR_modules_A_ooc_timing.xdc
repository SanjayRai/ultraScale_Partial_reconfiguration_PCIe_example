#---------------------------------------
# Create Clock Constraints - PR_modules_A 
#---------------------------------------
create_clock -period 3.332 -name default_sysclk_300_clk_p.default_sysclk_300_clk_p [get_ports {default_sysclk_300_clk_p}] -waveform {0.000 1.666}
create_clock -period 4.000 -name axi_aclk_out.s_axi_aclk [get_ports {s_axi_aclk}] -waveform {0.000 2.000}
#WARNING: Clock Source for pin "PR_modules_A/s_axi_aclk" (pcie_gen3x8_brige_ip_i/inst/pcie3_ip_i/inst/gt_top_i/phy_clk_i/bufg_gt_userclk) is not locked. Add a location constraint to the XDC prior to running this command.
set_system_jitter 0.0
set_clock_latency -source -max 2.707 [get_clocks {default_sysclk_300_clk_p.default_sysclk_300_clk_p}]
set_clock_latency -source -min 1.237 [get_clocks {default_sysclk_300_clk_p.default_sysclk_300_clk_p}]
set_clock_uncertainty 0.035 [get_clocks {default_sysclk_300_clk_p.default_sysclk_300_clk_p}]
set_clock_latency -source -max 1.973 [get_clocks {axi_aclk_out.s_axi_aclk}]
set_clock_latency -source -min 0.3969999999999998 [get_clocks {axi_aclk_out.s_axi_aclk}]
set_clock_uncertainty 0.035 [get_clocks {axi_aclk_out.s_axi_aclk}]
