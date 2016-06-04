-------------------------------------------------------------------------------
-- xilinx_primitives.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2012 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and 
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------
-- Filename:        xilinx_primitives.vhd
--
-- Description:     
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--                  xilinx_primitives.vhd
--
-------------------------------------------------------------------------------
-- Author:          bilski
--
-- History:
--   bilski  2012-04-27    First Version
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity XIL_SRL16E is
  generic(
    C_USE_SRL16 : string;
    C_STATIC    : boolean    := false;
    INIT        : bit_vector := X"0000");
  port(
    Config_Reset : in  std_logic;
    Q            : out std_logic;
    A0           : in  std_logic;
    A1           : in  std_logic;
    A2           : in  std_logic;
    A3           : in  std_logic;
    CE           : in  std_logic;
    CLK          : in  std_logic;
    D            : in  std_logic);
end entity XIL_SRL16E;

library unisim;
use unisim.vcomponents.all;

library ieee;
use ieee.numeric_std.all;

architecture IMP of XIL_SRL16E is

begin  -- architecture IMP

  Use_unisim: if (C_USE_SRL16 /= "no") generate
    XIL_SRL16E_I1: SRL16E
      generic map (
        INIT  => INIT)  -- [bit_vector]
      port map (
        Q   => Q,       -- [out std_logic]
        A0  => A0,      -- [in  std_logic]
        A1  => A1,      -- [in  std_logic]
        A2  => A2,      -- [in  std_logic]
        A3  => A3,      -- [in  std_logic]
        CE  => CE,      -- [in  std_logic]
        CLK => CLK,     -- [in  std_logic]
        D   => D);      -- [in std_logic]
  end generate Use_unisim;

  Use_RTL : if (C_USE_SRL16 = "no") generate
    signal shift_reg         : std_logic_vector(15 downto 0) := to_stdLogicVector(INIT);
    constant shift_reg_const : std_logic_vector(15 downto 0) := to_stdLogicVector(INIT);
    attribute shreg_extract : string;
    attribute shreg_extract of SHIFT_REG : signal is C_USE_SRL16;
  begin

    Static_Values: if (C_STATIC) generate
    begin
      Q <= shift_reg_const(to_integer(unsigned(to_stdLogicVector(A3 & A2 & A1 & A0))));
    end generate Static_Values;

    Dynamic_Values: if (not C_STATIC) generate
    begin
      Q <= shift_reg(to_integer(unsigned(to_stdLogicVector(A3 & A2 & A1 & A0))));

      process(CLK, Config_Reset)
      begin
        if (Config_Reset = '1') then
          shift_reg <= shift_reg_const;
        elsif (rising_edge(CLK)) then
          if CE = '1' then
            shift_reg <= shift_reg(14 downto 0) & D;
          end if;
        end if;
      end process;
      
    end generate Dynamic_Values;

  end generate Use_RTL;

end architecture IMP;

library IEEE;
use IEEE.std_logic_1164.all;

entity XIL_SRLC16E is
  generic(
    C_USE_SRL16 : string;
    INIT        : bit_vector := X"0000");
  port(
    Config_Reset : in  std_logic;
    Q            : out std_logic;
    Q15          : out std_logic;
    A0           : in  std_logic;
    A1           : in  std_logic;
    A2           : in  std_logic;
    A3           : in  std_logic;
    CE           : in  std_logic;
    CLK          : in  std_logic;
    D            : in  std_logic);
end entity XIL_SRLC16E;

library unisim;
use unisim.vcomponents.all;

library ieee;
use ieee.numeric_std.all;

architecture IMP of XIL_SRLC16E is

begin  -- architecture IMP

  Use_unisim: if (C_USE_SRL16 /= "no") generate
    XIL_SRL16CE_I1: SRLC16E
      generic map (
        INIT  => INIT)  -- [bit_vector]
      port map (
        Q15 => Q15,       -- [out std_logic]
        Q   => Q,       -- [out std_logic]
        A0  => A0,      -- [in  std_logic]
        A1  => A1,      -- [in  std_logic]
        A2  => A2,      -- [in  std_logic]
        A3  => A3,      -- [in  std_logic]
        CE  => CE,      -- [in  std_logic]
        CLK => CLK,     -- [in  std_logic]
        D   => D);      -- [in std_logic]
  end generate Use_unisim;

  Use_RTL : if (C_USE_SRL16 = "no") generate
    signal shift_reg        : std_logic_vector(15 downto 0) := to_stdLogicVector(INIT);
    attribute shreg_extract : string;
    attribute shreg_extract of SHIFT_REG : signal is C_USE_SRL16;
  begin

    Q   <= shift_reg(to_integer(unsigned(to_stdLogicVector(A3 & A2 & A1 & A0))));
    Q15 <= shift_reg(15);

    process(CLK, Config_Reset)
    begin
      if (Config_Reset = '1') then
        shift_reg <= (others => '0');
      elsif (rising_edge(CLK)) then
        if CE = '1' then
          shift_reg <= shift_reg(14 downto 0) & D;
        end if;
      end if;
    end process;

  end generate Use_RTL;

end architecture IMP;
