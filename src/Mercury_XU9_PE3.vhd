----------------------------------------------------------------------------------------------------
-- Copyright (c) 2025 by Enclustra GmbH, Switzerland.
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy of
-- this hardware, software, firmware, and associated documentation files (the
-- "Product"), to deal in the Product without restriction, including without
-- limitation the rights to use, copy, modify, merge, publish, distribute,
-- sublicense, and/or sell copies of the Product, and to permit persons to whom the
-- Product is furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Product.
--
-- THE PRODUCT IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
-- INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
-- PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
-- HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
-- OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
-- PRODUCT OR THE USE OR OTHER DEALINGS IN THE PRODUCT.
----------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------
-- libraries
----------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

----------------------------------------------------------------------------------------------------
-- entity declaration
----------------------------------------------------------------------------------------------------
entity Mercury_XU9_PE3 is
  generic (
    BG_WIDTH : natural
  );
  
  port (
    
    -- Anios IO
    IO_D0_P                        : inout   std_logic;
    IO_D1_N                        : inout   std_logic;
    IO_D2_P                        : inout   std_logic;
    IO_D3_N                        : inout   std_logic;
    IO_D4_P                        : inout   std_logic;
    IO_D5_N                        : inout   std_logic;
    IO_D6_P                        : inout   std_logic;
    IO_D7_N                        : inout   std_logic;
    IO_D8_P                        : inout   std_logic;
    IO_D9_N                        : inout   std_logic;
    IO_CLK0_N                      : inout   std_logic;
    IO_CLK0_P                      : inout   std_logic;
    IO_D10_P                       : inout   std_logic;
    IO_D11_N                       : inout   std_logic;
    IO_D12_P                       : inout   std_logic;
    IO_D13_N                       : inout   std_logic;
    IO_D14_P                       : inout   std_logic;
    IO_D15_N                       : inout   std_logic;
    IO_D16_P                       : inout   std_logic;
    IO_D17_N                       : inout   std_logic;
    IO_D18_P                       : inout   std_logic;
    IO_D19_N                       : inout   std_logic;
    IO_D20_P                       : inout   std_logic;
    IO_D21_N                       : inout   std_logic;
    IO_D22_P                       : inout   std_logic;
    IO_D23_N                       : inout   std_logic;
    
    -- Clock Generator
    OSC_N                          : in      std_logic;
    OSC_P                          : in      std_logic;
    
    -- Display Port
    DP_HPD                         : in      std_logic;
    DP_AUX_IN                      : in      std_logic;
    DP_AUX_OE                      : out     std_logic;
    DP_AUX_OUT                     : out     std_logic;
    
    -- FMC HPC Connector
    FMC_HA02_N                     : inout   std_logic;
    FMC_HA02_P                     : inout   std_logic;
    FMC_HA03_N                     : inout   std_logic;
    FMC_HA03_P                     : inout   std_logic;
    FMC_HA04_N                     : inout   std_logic;
    FMC_HA04_P                     : inout   std_logic;
    FMC_HA05_N                     : inout   std_logic;
    FMC_HA05_P                     : inout   std_logic;
    FMC_HA06_N                     : inout   std_logic;
    FMC_HA06_P                     : inout   std_logic;
    FMC_HA07_N                     : inout   std_logic;
    FMC_HA07_P                     : inout   std_logic;
    FMC_HA08_N                     : inout   std_logic;
    FMC_HA08_P                     : inout   std_logic;
    FMC_HA09_N                     : inout   std_logic;
    FMC_HA09_P                     : inout   std_logic;
    FMC_HA10_N                     : inout   std_logic;
    FMC_HA10_P                     : inout   std_logic;
    FMC_HA12_N                     : inout   std_logic;
    FMC_HA12_P                     : inout   std_logic;
    FMC_HA14_N                     : inout   std_logic;
    FMC_HA14_P                     : inout   std_logic;
    FMC_HA00_CC_N                  : inout   std_logic;
    FMC_HA00_CC_P                  : inout   std_logic;
    FMC_HA01_CC_N                  : inout   std_logic;
    FMC_HA01_CC_P                  : inout   std_logic;
    
    -- Firefly
    FF_DIO0_P                      : inout   std_logic;
    FF_DIO0_N                      : inout   std_logic;
    FF_DIO1_P                      : inout   std_logic;
    FF_DIO1_N                      : inout   std_logic;
    FF_DIO2_P                      : inout   std_logic;
    FF_DIO2_N                      : inout   std_logic;
    FF_DIO3_P                      : inout   std_logic;
    FF_DIO3_N                      : inout   std_logic;
    
    -- HDMI
    HDMI_CEC                       : inout   std_logic;
    HDMI_HPD                       : in      std_logic;
    
    -- I2C MGMT
    I2C_MGMT_SCL                   : inout   std_logic;
    I2C_MGMT_SDA                   : inout   std_logic;
    
    -- I2C USER
    I2C_USER_INT_N                 : in      std_logic;
    I2C_USER_SCL                   : inout   std_logic;
    I2C_USER_SDA                   : inout   std_logic;
    
    -- LED
    PL_LED2_N                      : out     std_logic;
    
    -- Oscillator 100 MHz
    CALIB_CLK                      : in      std_logic;
    
    -- PE3 LED
    PE3_LED0_N                     : out     std_logic;
    PE3_LED1_N                     : out     std_logic;
    DII_LED_N                      : out     std_logic;
    DIO_LED_N                      : out     std_logic;
    
    -- PL 100 MHz Oscillator
    CLK100_PL_N                    : in      std_logic;
    CLK100_PL_P                    : in      std_logic;
    
    -- PL DDR4 Memory
    DDR4PL_ACT_N                   : out     std_logic;
    DDR4PL_RST_N                   : out     std_logic;
    DDR4PL_BA                      : out     std_logic_vector(1 downto 0);
    DDR4PL_BG                      : out     std_logic_vector(1 downto 0);
    DDR4PL_CKE                     : out     std_logic_vector(0 downto 0);
    DDR4PL_DQ                      : inout   std_logic_vector(63 downto 0);
    DDR4PL_ODT                     : out     std_logic_vector(0 downto 0);
    DDR4PL_A                       : out     std_logic_vector(16 downto 0);
    DDR4PL_CK_N                    : out     std_logic_vector(0 downto 0);
    DDR4PL_CK_P                    : out     std_logic_vector(0 downto 0);
    DDR4PL_CS_N                    : out     std_logic_vector(0 downto 0);
    DDR4PL_DM                      : inout   std_logic_vector(7 downto 0);
    DDR4PL_DQS_P                   : inout   std_logic_vector(7 downto 0);
    DDR4PL_DQS_N                   : inout   std_logic_vector(7 downto 0);
    
    -- USER INPUT
    BTN_N                          : in      std_logic;
    DIP_N                          : in      std_logic
  );
end Mercury_XU9_PE3;

architecture rtl of Mercury_XU9_PE3 is

  ----------------------------------------------------------------------------------------------------
  -- component declarations
  ----------------------------------------------------------------------------------------------------
  component Mercury_XU9 is
    port (
      DP_AUX_OUT          : out    std_logic;
      DP_AUX_OE           : out    std_logic;
      DP_AUX_IN           : in     std_logic;
      DP_HPD              : in     std_logic;
      Clk100              : out    std_logic;
      Clk50               : out    std_logic;
      Rst_N               : out    std_logic;
      IIC_USER_sda_i      : in     std_logic;
      IIC_USER_sda_o      : out    std_logic;
      IIC_USER_sda_t      : out    std_logic;
      IIC_USER_scl_i      : in     std_logic;
      IIC_USER_scl_o      : out    std_logic;
      IIC_USER_scl_t      : out    std_logic;
      C0_SYS_CLK_clk_n    : in     std_logic;
      C0_SYS_CLK_clk_p    : in     std_logic;
      C0_DDR4_act_n       : out    std_logic;
      C0_DDR4_reset_n     : out    std_logic;
      C0_DDR4_ba          : out    std_logic_vector(1 downto 0);
      C0_DDR4_bg          : out    std_logic_vector(BG_WIDTH-1 downto 0);
      C0_DDR4_cke         : out    std_logic_vector(0 downto 0);
      C0_DDR4_dq          : inout  std_logic_vector(63 downto 0);
      C0_DDR4_odt         : out    std_logic_vector(0 downto 0);
      C0_DDR4_adr         : out    std_logic_vector(16 downto 0);
      C0_DDR4_ck_c        : out    std_logic_vector(0 downto 0);
      C0_DDR4_ck_t        : out    std_logic_vector(0 downto 0);
      C0_DDR4_cs_n        : out    std_logic_vector(0 downto 0);
      C0_DDR4_dm_n        : inout  std_logic_vector(7 downto 0);
      C0_DDR4_dqs_c       : inout  std_logic_vector(7 downto 0);
      C0_DDR4_dqs_t       : inout  std_logic_vector(7 downto 0)
    );
  end component Mercury_XU9;
  

  ----------------------------------------------------------------------------------------------------
  -- signal declarations
  ----------------------------------------------------------------------------------------------------
  signal Clk100           : std_logic;
  signal Clk50            : std_logic;
  signal Rst_N            : std_logic;
  signal IIC_USER_sda_i   : std_logic;
  signal IIC_USER_sda_o   : std_logic;
  signal IIC_USER_sda_t   : std_logic;
  signal IIC_USER_scl_i   : std_logic;
  signal IIC_USER_scl_o   : std_logic;
  signal IIC_USER_scl_t   : std_logic;
  signal dp_aux_data_oe_n : std_logic;
  signal LedCount         : unsigned(23 downto 0);
  
  ----------------------------------------------------------------------------------------------------
  -- attribute declarations
  ----------------------------------------------------------------------------------------------------

begin
  
  ----------------------------------------------------------------------------------------------------
  -- processor system instance
  ----------------------------------------------------------------------------------------------------
  Mercury_XU9_i: component Mercury_XU9
    port map (
      DP_AUX_OUT           => DP_AUX_OUT,
      DP_AUX_OE            => dp_aux_data_oe_n,
      DP_AUX_IN            => DP_AUX_IN,
      DP_HPD               => DP_HPD,
      Clk100               => Clk100,
      Clk50                => Clk50,
      Rst_N                => Rst_N,
      IIC_USER_sda_i       => IIC_USER_sda_i,
      IIC_USER_sda_o       => IIC_USER_sda_o,
      IIC_USER_sda_t       => IIC_USER_sda_t,
      IIC_USER_scl_i       => IIC_USER_scl_i,
      IIC_USER_scl_o       => IIC_USER_scl_o,
      IIC_USER_scl_t       => IIC_USER_scl_t,
      C0_SYS_CLK_clk_n     => CLK100_PL_N,
      C0_SYS_CLK_clk_p     => CLK100_PL_P,
      C0_DDR4_act_n        => DDR4PL_ACT_N,
      C0_DDR4_reset_n      => DDR4PL_RST_N,
      C0_DDR4_ba           => DDR4PL_BA,
      C0_DDR4_bg           => DDR4PL_BG (BG_WIDTH-1 downto 0),
      C0_DDR4_cke          => DDR4PL_CKE,
      C0_DDR4_dq           => DDR4PL_DQ,
      C0_DDR4_odt          => DDR4PL_ODT,
      C0_DDR4_adr          => DDR4PL_A,
      C0_DDR4_ck_c         => DDR4PL_CK_N,
      C0_DDR4_ck_t         => DDR4PL_CK_P,
      C0_DDR4_cs_n         => DDR4PL_CS_N,
      C0_DDR4_dm_n         => DDR4PL_DM,
      C0_DDR4_dqs_c        => DDR4PL_DQS_N,
      C0_DDR4_dqs_t        => DDR4PL_DQS_P
    );
  
  DP_AUX_OE <= not dp_aux_data_oe_n;
  
  IIC_USER_sda_iobuf: component IOBUF
    port map (
    I => IIC_USER_sda_o,
    IO => I2C_USER_SDA,
    O => IIC_USER_sda_i,
    T => IIC_USER_sda_t
  );
  
  IIC_USER_scl_iobuf: component IOBUF
    port map (
    I => IIC_USER_scl_o,
    IO => I2C_USER_SCL,
    O => IIC_USER_scl_i,
    T => IIC_USER_scl_t
  );
  process (Clk50)
  begin
    if rising_edge (Clk50) then
      if Rst_N = '0' then
        LedCount    <= (others => '0');
      else
        LedCount    <= LedCount + 1;
      end if;
    end if;
  end process;
  PL_LED2_N <= '0' when LedCount(LedCount'high) = '0' else 'Z';
  
end rtl;
