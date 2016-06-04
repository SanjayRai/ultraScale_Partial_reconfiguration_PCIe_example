-------------------------------------------------------------------------------
-- intr_ctrl.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
-- (c) Copyright 2011-2012 Xilinx, Inc. All rights reserved.
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
-- Filename:        intr_ctrl.vhd
--
-- Description:     
--                  
-- VHDL-Standard:   VHDL'93/02
-------------------------------------------------------------------------------
-- Structure:   
--              intr_ctrl.vhd
--
-------------------------------------------------------------------------------
-- Author:          goran
--
-- History:
--   goran  2008-01-08    First Version
--   stefan 2011-12-28    Added Fast Interrupt
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
use IEEE.numeric_std.all;

entity intr_ctrl is

  generic (
    C_USE_COMB_MUX      : integer := 0;
    C_INTC_ENABLED      : std_logic_vector(31 downto 0);
    C_INTC_LEVEL_EDGE   : std_logic_vector(31 downto 0);
    C_INTC_POSITIVE     : std_logic_vector(31 downto 0);
    C_INTC_ASYNC_INTR   : std_logic_vector(31 downto 0);
    C_INTC_HAS_FAST     : integer range 0 to 1  := 0;
    C_INTC_ADDR_WIDTH   : integer range 5 to 32 := 32;
    C_INTC_NUM_SYNC_FF  : integer range 0 to 7  := 2;
    C_INTC_BASE_VECTORS : std_logic_vector(31 downto 0);
    C_USE_LUTRAM        : string);
  port (
    Clk              : in  std_logic;
    Reset            : in  boolean;
    INTR             : in  std_logic_vector(31 downto 0);
    INTR_ACK         : in  std_logic_vector(1 downto 0);
    INTR_ADDR        : out std_logic_vector(31 downto 0);
    INTC_WRITE_CIAR  : in  std_logic;
    INTC_WRITE_CIER  : in  std_logic;
    INTC_WRITE_CIMR  : in  std_logic;
    INTC_WRITE_CIVAR : in  std_logic;
    INTC_CIVAR_ADDR  : in  std_logic_vector(4 downto 0);
    Write_Data       : in  std_logic_vector(31 downto 0);
    INTC_READ_CISR   : in  std_logic;
    INTC_READ_CIPR   : in  std_logic;
    INTC_IRQ         : out std_logic;
    INTC_CISR        : out std_logic_vector(31 downto 0);
    INTC_CIPR        : out std_logic_vector(31 downto 0));
end entity intr_ctrl;

library UNISIM;
use UNISIM.vcomponents.all;

architecture IMP of intr_ctrl is

  constant C_ENABLED_NONE : boolean := (C_INTC_ENABLED = (31 downto 0  => '0'));
  constant C_ENABLED_MSH  : boolean := (C_INTC_ENABLED(31 downto 16) /= X"0000");
  constant C_CIVAR_WIDTH  : integer := Boolean'Pos(C_ENABLED_MSH) + 4;
  constant C_CIVAR_SIZE   : integer := 2 ** C_CIVAR_WIDTH;

  constant USE_LUTRAM : boolean := C_USE_LUTRAM = "yes";
  
  signal interrupt    : std_logic_vector(31 downto 0);
  signal intr_present : std_logic_vector(31 downto 0);
  signal cisr         : std_logic_vector(31 downto 0);
  signal cier         : std_logic_vector(31 downto 0);
  signal cipr         : std_logic_vector(31 downto 0);
  signal rst_cipr_rd  : std_logic;
  signal civr         : std_logic_vector(4 downto 0);
  signal fast_ack     : std_logic_vector(31 downto 0);
  signal cimr         : std_logic_vector(31 downto 0);

begin

  All_INTR_Bits : for I in 31 downto 0 generate
  begin

    Using_Intr : if (C_INTC_ENABLED(I) = '1') generate
    begin

      -- Clean the interrupt signals
      -- All internal sources are considered clean and only external needs to be registred once
      Ext_Intr : if (I > 15) generate
        signal synced_intr : std_logic;
      begin

        -- Synchronize the interrupt signals
        Async_Gen : if C_INTC_ASYNC_INTR(I) = '1' and C_INTC_NUM_SYNC_FF > 0 generate
          signal intr_ff : std_logic_vector(0 to C_INTC_NUM_SYNC_FF - 1) := (others => '0');
          attribute ASYNC_REG : string;
          attribute ASYNC_REG of intr_ff : signal is "TRUE";
        begin

          Sync_P : process (Clk) is
          begin
            if Clk'event and Clk = '1' then
              intr_ff(0) <= INTR(I);
              for k in intr_ff'left to intr_ff'right - 1 loop
                intr_ff(k + 1) <= intr_ff(k);
              end loop;
            end if;
          end process Sync_P;

          synced_intr <= intr_ff(intr_ff'right);
        end generate Async_Gen;

        Sync_Gen: if C_INTC_ASYNC_INTR(I) = '0' or C_INTC_NUM_SYNC_FF = 0 generate
        begin
          synced_intr <= INTR(i);
        end generate Sync_Gen;

        Clean_Signal : process (Clk) is
        begin  -- process Clean_Signal
          if Clk'event and Clk = '1' then  -- rising clock edge
            if Reset then                  -- synchronous reset (active high)
              interrupt(I) <= not C_INTC_POSITIVE(I);
            else
              interrupt(I) <= synced_intr;
            end if;
          end if;
        end process Clean_Signal;

        -- Detect External Interrupt
        Level : if (C_INTC_LEVEL_EDGE(I) = '0') generate
        begin
          intr_present(I) <= interrupt(I) xnor C_INTC_POSITIVE(I);
        end generate Level;

        Edge : if (C_INTC_LEVEL_EDGE(I) = '1') generate
        begin
          Reg_INTR : process (Clk) is
            variable s1 : std_logic;
          begin  -- process Reg_INTR
            if Clk'event and Clk = '1' then  -- rising clock edge
              if Reset then                  -- synchronous reset (active high)
                intr_present(I) <= '0';
                s1              := not C_INTC_POSITIVE(I);
              else
                intr_present(I) <= '0';
                if (C_INTC_POSITIVE(I) = '0') and (s1 = '1') and (interrupt(I) = '0') then
                  intr_present(I) <= '1';
                end if;
                if (C_INTC_POSITIVE(I) = '1') and (s1 = '0') and (interrupt(I) = '1') then
                  intr_present(I) <= '1';
                end if;
                s1 := interrupt(I);
              end if;
            end if;
          end process Reg_INTR;
        end generate Edge;
      end generate Ext_Intr;

      Internal_Intr : if (I < 16) generate
      begin
        -- Internal source is always one-clock long and active high, no need to detect an edge
        intr_present(I) <= INTR(I);
        interrupt(I)    <= '0'; -- Unused
      end generate Internal_Intr;

      CISR_Reg : process (Clk) is
      begin  -- process CISR_Reg
        if Clk'event and Clk = '1' then  -- rising clock edge
          if Reset then                  -- synchronous reset (active high)
            cisr(I) <= '0';
          else
            if (intr_present(I) = '1') then
              cisr(I) <= '1';
            elsif (INTC_WRITE_CIAR = '1' and Write_Data(I) = '1') or (fast_ack(I) = '1') then
              cisr(I) <= '0';
            end if;
          end if;
        end if;
      end process CISR_Reg;

      CIER_Reg : process (Clk) is
      begin  -- process CIER_Reg
        if Clk'event and Clk = '1' then  -- rising clock edge
          if Reset then                  -- synchronous reset (active high)
            cier(I) <= '0';
          elsif (INTC_WRITE_CIER = '1') then
            cier(I) <= Write_Data(I);
          end if;
        end if;
      end process CIER_Reg;

      cipr(I) <= cisr(I) and cier(I);
      
    end generate Using_Intr;

    Not_Using_Intr : if (C_INTC_ENABLED(I) = '0') generate
    begin
      interrupt(I)    <= '0';
      intr_present(I) <= '0';
      cier(I)         <= '0';
      cisr(I)         <= '0';
      cipr(I)         <= '0';
    end generate Not_Using_Intr;

    Using_CIMR : if (C_INTC_ENABLED(I) = '1') and (C_INTC_HAS_FAST = 1) generate
    begin

      CIMR_Reg : process (Clk) is
      begin  -- process CIMR_Reg
        if Clk'event and Clk = '1' then  -- rising clock edge
          if Reset then                  -- synchronous reset (active high)
            cimr(I) <= '0';
          elsif (INTC_WRITE_CIMR = '1') then
            cimr(I) <= Write_Data(I);
          end if;
        end if;
      end process CIMR_Reg;

    end generate Using_CIMR;

    Not_Using_CIMR : if (C_INTC_ENABLED(I) = '0') or (C_INTC_HAS_FAST = 0) generate
    begin
      cimr(I) <= '0';
    end generate Not_Using_CIMR;

  end generate All_INTR_Bits;

  Using_Fast : if C_INTC_HAS_FAST = 1 and not C_ENABLED_NONE generate
    subtype byte_res_vec is std_logic_vector(2 downto 0);
    type byte_res_array is array (3 downto 0) of byte_res_vec;

    subtype mux_res_vec is std_logic_vector(4 downto 0);
    type mux_res_array is array (4 downto 0) of mux_res_vec;

    type civar_type is array (C_CIVAR_SIZE - 1 downto 0) of std_logic_vector(C_INTC_ADDR_WIDTH - 3 downto 0);

    type fast_state_type is (Idle, Interrupting, Handling, Acknowledge);

    constant C_DEFAULT_ADDR : std_logic_vector(31 downto 0) := (C_INTC_BASE_VECTORS and X"FFFFFF80") or X"00000010";

    signal byte_zeros       : std_logic_vector(3 downto 0);
    signal byte_res         : byte_res_array;
    signal mux_res          : mux_res_array;
    signal fast_state       : fast_state_type;
    signal do_fast_ack      : std_logic;
    signal civar            : civar_type := (others => C_DEFAULT_ADDR(C_INTC_ADDR_WIDTH - 1 downto 2));
    signal write_data_i     : std_logic_vector(C_INTC_ADDR_WIDTH - 3 downto 0);
    signal civar_read_addr  : std_logic_vector(C_CIVAR_WIDTH - 1 downto 0);
    signal civar_write_addr : std_logic_vector(C_CIVAR_WIDTH - 1 downto 0);
    signal intr_addr_i      : std_logic_vector(C_INTC_ADDR_WIDTH - 3 downto 0);
    signal early_ack        : std_logic;
    signal has_fast         : std_logic;

    attribute ram_style            : string;
    attribute ram_style of civar   : signal is "distributed";
    attribute ram_extract          : string;
    attribute ram_extract of civar : signal is C_USE_LUTRAM;

  begin

    -- Calculate first bit set to get highest priority interrupt number (civr)
    Calc_Byte_Res: for I in 0 to 3 generate
    begin
      byte_zeros(I)  <= '1' when cipr(8*I+7 downto 8*I) = "00000000" else '0';

      byte_res(I)(2) <= '1' when cipr(8*I+3 downto 8*I) = "0000" else '0';

      byte_res(I)(1) <= '0' when cipr(8*I+0) = '1' or cipr(8*I+1) = '1' else
                        '1' when cipr(8*I+2) = '1' or cipr(8*I+3) = '1' else
                        '0' when cipr(8*I+4) = '1' or cipr(8*I+5) = '1' else
                        '1';

      byte_res(I)(0) <= '0' when cipr(8*I+0)= '1' else
                        '1' when cipr(8*I+1)= '1' else
                        '0' when cipr(8*I+2)= '1' else
                        '1' when cipr(8*I+3)= '1' else
                        '0' when cipr(8*I+4)= '1' else
                        '1' when cipr(8*I+5)= '1' else
                        '0' when cipr(8*I+6)= '1' else
                        '1';
    end generate Calc_Byte_Res;

    mux_res(4) <= "00000";
    Mux_the_Results: for I in 3 downto 0 generate
      mux_res(I) <= mux_res(I+1) when byte_zeros(I) = '1' else
                    std_logic_vector(to_unsigned(I,2)) & byte_res(I);
    end generate Mux_the_Results;

    -- Handle interrupt occurrence and acknowledge
    Fast_FSM : process(Clk)
    begin
      if Clk'event and Clk = '1' then
        if Reset then                   -- synchronous reset (active high)
          fast_state  <= Idle;
          INTC_IRQ    <= '0';
          civr        <= (others => '0');
          do_fast_ack <= '0';
        else
          case fast_state is
            when Idle =>                -- wait for interrupt
              if byte_zeros /= "1111" then
                fast_state <= Interrupting;
              end if;
              INTC_IRQ    <= '0';
              civr        <= mux_res(0);
              do_fast_ack <= '0';
            when Interrupting =>        -- wait for first ack
              if INTR_ACK = "01" then
                fast_state  <= Handling;
                INTC_IRQ    <= '0';
                do_fast_ack <= early_ack and has_fast;
              else
                INTC_IRQ    <= '1';
                do_fast_ack <= '0';
              end if;
            when Handling =>            -- wait for second ack
              if INTR_ACK(1) = '1' then
                fast_state  <= Acknowledge;
                do_fast_ack <= not early_ack and has_fast;
              else
                do_fast_ack <= '0';
              end if;
              INTC_IRQ <= '0';
            when Acknowledge =>         -- wait until acknowledged in cisr
              fast_state  <= Idle;
              do_fast_ack <= '0';
              INTC_IRQ    <= '0';
            when others =>
              null;
          end case;
        end if;
      end if;
    end process Fast_FSM;

    Fast_Ack_Assign : process(civr, do_fast_ack)
    begin
      fast_ack <= (others => '0');
      fast_ack(to_integer(unsigned(civr))) <= do_fast_ack;
    end process Fast_Ack_Assign;

    early_ack <= C_INTC_LEVEL_EDGE(to_integer(unsigned(civr)));
    has_fast  <= cimr(to_integer(unsigned(civr)));

    -- Vector address registers implemented as a LUTRAM
    write_data_i     <= Write_Data(C_INTC_ADDR_WIDTH - 1 downto 2);
    civar_write_addr <= INTC_CIVAR_ADDR(C_CIVAR_WIDTH - 1 downto 0);
    civar_read_addr  <= civr(C_CIVAR_WIDTH - 1 downto 0);

    Using_LUTRAM: if USE_LUTRAM generate
    begin  

      civar_reg : process(Clk)
      begin
        if Clk'event and Clk = '1' then
          if (INTC_WRITE_CIVAR = '1') then
            civar(to_integer(unsigned(civar_write_addr))) <= write_data_i;
            intr_addr_i <= civar(to_integer(unsigned(civar_read_addr)));
          else
            intr_addr_i <= civar(to_integer(unsigned(civar_read_addr)));
          end if;
        end if;
      end process civar_reg;

    end generate Using_LUTRAM;

    Not_Using_LUTRAM: if not USE_LUTRAM generate
    begin 

      civar_reg : process(Clk)
      begin
        if Clk'event and Clk = '1' then
          if (Reset) then 
            civar <= (others => C_DEFAULT_ADDR(C_INTC_ADDR_WIDTH - 1 downto 2));
          elsif (INTC_WRITE_CIVAR = '1') then
            civar(to_integer(unsigned(civar_write_addr))) <= write_data_i;
            intr_addr_i <= civar(to_integer(unsigned(civar_read_addr)));
          else
            intr_addr_i <= civar(to_integer(unsigned(civar_read_addr)));
          end if;
        end if;
      end process civar_reg;      

    end generate Not_Using_LUTRAM;

    INTR_ADDR_Assign : process(intr_addr_i)
    begin
      INTR_ADDR <= (others => '0');
      INTR_ADDR(C_INTC_ADDR_WIDTH - 1 downto 2) <= intr_addr_i(C_INTC_ADDR_WIDTH - 3 downto 0);
    end process INTR_ADDR_Assign;

  end generate Using_Fast;

  Not_Using_Fast : if C_INTC_HAS_FAST = 0 or C_ENABLED_NONE generate
  begin
    civr      <= (others => '0');
    fast_ack  <= (others => '0');
    INTR_ADDR <= X"00000010";
    INTC_IRQ  <= '1' when cipr /= X"00000000" else '0';
  end generate Not_Using_Fast;

  cisr_rd_dff : process (Clk) is
  begin  -- process cisr_rd_dff
    if Clk'event and Clk = '1' then   -- rising clock edge
      if (INTC_READ_CISR = '0') then  -- synchronous reset (active high)
        INTC_CISR <= (others => '0');
      else
        INTC_CISR <= cisr;
      end if;
    end if;
  end process cisr_rd_dff;

  rst_cipr_rd <= not(INTC_READ_CIPR);

  cipr_rd_dff_all : for I in 0 to 31 generate
    fdr_i : FDR
      port map (
        Q => INTC_CIPR(I),
        C => Clk,
        D => cipr(I),
        R => rst_cipr_rd);
  end generate cipr_rd_dff_all;

end architecture IMP;
