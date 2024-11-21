# ----------------------------------------------------------------------------------------------------
# Copyright (c) 2024 by Enclustra GmbH, Switzerland.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this hardware, software, firmware, and associated documentation files (the
# "Product"), to deal in the Product without restriction, including without
# limitation the rights to use, copy, modify, merge, publish, distribute,
# sublicense, and/or sell copies of the Product, and to permit persons to whom the
# Product is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Product.
#
# THE PRODUCT IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
# INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
# PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
# HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# PRODUCT OR THE USE OR OTHER DEALINGS IN THE PRODUCT.
# ----------------------------------------------------------------------------------------------------

set_property BITSTREAM.CONFIG.OVERTEMPSHUTDOWN ENABLE [current_design]
 
# ----------------------------------------------------------------------------------
# Important! Do not remove this constraint!
# This property ensures that all unused pins are set to high impedance.
# If the constraint is removed, all unused pins have to be set to HiZ in the top level file.
set_property BITSTREAM.CONFIG.UNUSEDPIN PULLNONE [current_design]
# ----------------------------------------------------------------------------------

# Anios IO
set_property -dict {PACKAGE_PIN F16   IOSTANDARD LVCMOS18  } [get_ports {IO_D0_P}]
set_property -dict {PACKAGE_PIN F15   IOSTANDARD LVCMOS18  } [get_ports {IO_D1_N}]
set_property -dict {PACKAGE_PIN E14   IOSTANDARD LVCMOS18  } [get_ports {IO_D2_P}]
set_property -dict {PACKAGE_PIN E13   IOSTANDARD LVCMOS18  } [get_ports {IO_D3_N}]
set_property -dict {PACKAGE_PIN B12   IOSTANDARD LVCMOS18  } [get_ports {IO_D4_P}]
set_property -dict {PACKAGE_PIN A12   IOSTANDARD LVCMOS18  } [get_ports {IO_D5_N}]
set_property -dict {PACKAGE_PIN F12   IOSTANDARD LVCMOS18  } [get_ports {IO_D6_P}]
set_property -dict {PACKAGE_PIN E12   IOSTANDARD LVCMOS18  } [get_ports {IO_D7_N}]
set_property -dict {PACKAGE_PIN A14   IOSTANDARD LVCMOS18  } [get_ports {IO_D8_P}]
set_property -dict {PACKAGE_PIN A13   IOSTANDARD LVCMOS18  } [get_ports {IO_D9_N}]
set_property -dict {PACKAGE_PIN C17   IOSTANDARD LVCMOS18  } [get_ports {IO_D10_P}]
set_property -dict {PACKAGE_PIN B16   IOSTANDARD LVCMOS18  } [get_ports {IO_D11_N}]
set_property -dict {PACKAGE_PIN D12   IOSTANDARD LVCMOS18  } [get_ports {IO_D12_P}]
set_property -dict {PACKAGE_PIN C12   IOSTANDARD LVCMOS18  } [get_ports {IO_D13_N}]
set_property -dict {PACKAGE_PIN H14   IOSTANDARD LVCMOS18  } [get_ports {IO_D14_P}]
set_property -dict {PACKAGE_PIN G14   IOSTANDARD LVCMOS18  } [get_ports {IO_D15_N}]
set_property -dict {PACKAGE_PIN H13   IOSTANDARD LVCMOS18  } [get_ports {IO_D16_P}]
set_property -dict {PACKAGE_PIN H12   IOSTANDARD LVCMOS18  } [get_ports {IO_D17_N}]
set_property -dict {PACKAGE_PIN K13   IOSTANDARD LVCMOS18  } [get_ports {IO_D18_P}]
set_property -dict {PACKAGE_PIN J12   IOSTANDARD LVCMOS18  } [get_ports {IO_D19_N}]
set_property -dict {PACKAGE_PIN G13   IOSTANDARD LVCMOS18  } [get_ports {IO_D20_P}]
set_property -dict {PACKAGE_PIN F13   IOSTANDARD LVCMOS18  } [get_ports {IO_D21_N}]
set_property -dict {PACKAGE_PIN C14   IOSTANDARD LVCMOS18  } [get_ports {IO_D22_P}]
set_property -dict {PACKAGE_PIN B14   IOSTANDARD LVCMOS18  } [get_ports {IO_D23_N}]
set_property -dict {PACKAGE_PIN C13   IOSTANDARD LVCMOS18  } [get_ports {IO_CLK0_N}]
set_property -dict {PACKAGE_PIN D14   IOSTANDARD LVCMOS18  } [get_ports {IO_CLK0_P}]

# Clock Generator
set_property -dict {PACKAGE_PIN G15   IOSTANDARD LVCMOS18  } [get_ports {OSC_N}]
set_property -dict {PACKAGE_PIN G16   IOSTANDARD LVCMOS18  } [get_ports {OSC_P}]

# Display Port
set_property -dict {PACKAGE_PIN AG19  IOSTANDARD LVCMOS12  } [get_ports {DP_HPD}]
set_property -dict {PACKAGE_PIN AF17  IOSTANDARD LVCMOS12  } [get_ports {DP_AUX_IN}]
set_property -dict {PACKAGE_PIN AH16  IOSTANDARD LVCMOS12  } [get_ports {DP_AUX_OE}]
set_property -dict {PACKAGE_PIN AC19  IOSTANDARD LVCMOS12  } [get_ports {DP_AUX_OUT}]

# FMC HPC Connector
set_property -dict {PACKAGE_PIN AK10  IOSTANDARD LVCMOS12  } [get_ports {FMC_HA02_N}]
set_property -dict {PACKAGE_PIN AJ10  IOSTANDARD LVCMOS12  } [get_ports {FMC_HA02_P}]
set_property -dict {PACKAGE_PIN AK11  IOSTANDARD LVCMOS12  } [get_ports {FMC_HA03_N}]
set_property -dict {PACKAGE_PIN AJ11  IOSTANDARD LVCMOS12  } [get_ports {FMC_HA03_P}]
set_property -dict {PACKAGE_PIN AJ12  IOSTANDARD LVCMOS12  } [get_ports {FMC_HA04_N}]
set_property -dict {PACKAGE_PIN AH12  IOSTANDARD LVCMOS12  } [get_ports {FMC_HA04_P}]
set_property -dict {PACKAGE_PIN AG10  IOSTANDARD LVCMOS12  } [get_ports {FMC_HA05_N}]
set_property -dict {PACKAGE_PIN AF10  IOSTANDARD LVCMOS12  } [get_ports {FMC_HA05_P}]
set_property -dict {PACKAGE_PIN AF11  IOSTANDARD LVCMOS12  } [get_ports {FMC_HA06_N}]
set_property -dict {PACKAGE_PIN AF12  IOSTANDARD LVCMOS12  } [get_ports {FMC_HA06_P}]
set_property -dict {PACKAGE_PIN AH11  IOSTANDARD LVCMOS12  } [get_ports {FMC_HA07_N}]
set_property -dict {PACKAGE_PIN AG11  IOSTANDARD LVCMOS12  } [get_ports {FMC_HA07_P}]
set_property -dict {PACKAGE_PIN AK8   IOSTANDARD LVCMOS12  } [get_ports {FMC_HA08_N}]
set_property -dict {PACKAGE_PIN AK9   IOSTANDARD LVCMOS12  } [get_ports {FMC_HA08_P}]
set_property -dict {PACKAGE_PIN AJ9   IOSTANDARD LVCMOS12  } [get_ports {FMC_HA09_N}]
set_property -dict {PACKAGE_PIN AH9   IOSTANDARD LVCMOS12  } [get_ports {FMC_HA09_P}]
set_property -dict {PACKAGE_PIN AE2   IOSTANDARD LVCMOS12  } [get_ports {FMC_HA10_N}]
set_property -dict {PACKAGE_PIN AE3   IOSTANDARD LVCMOS12  } [get_ports {FMC_HA10_P}]
set_property -dict {PACKAGE_PIN AE7   IOSTANDARD LVCMOS12  } [get_ports {FMC_HA12_N}]
set_property -dict {PACKAGE_PIN AD9   IOSTANDARD LVCMOS12  } [get_ports {FMC_HA12_P}]
set_property -dict {PACKAGE_PIN AD12  IOSTANDARD LVCMOS12  } [get_ports {FMC_HA14_N}]
set_property -dict {PACKAGE_PIN Y1    IOSTANDARD LVCMOS12  } [get_ports {FMC_HA14_P}]
set_property -dict {PACKAGE_PIN AJ7   IOSTANDARD LVCMOS12  } [get_ports {FMC_HA00_CC_N}]
set_property -dict {PACKAGE_PIN AH7   IOSTANDARD LVCMOS12  } [get_ports {FMC_HA00_CC_P}]
set_property -dict {PACKAGE_PIN AH8   IOSTANDARD LVCMOS12  } [get_ports {FMC_HA01_CC_N}]
set_property -dict {PACKAGE_PIN AG8   IOSTANDARD LVCMOS12  } [get_ports {FMC_HA01_CC_P}]

# Firefly
set_property -dict {PACKAGE_PIN E17   IOSTANDARD LVCMOS18  } [get_ports {FF_DIO0_P}]
set_property -dict {PACKAGE_PIN D17   IOSTANDARD LVCMOS18  } [get_ports {FF_DIO0_N}]
set_property -dict {PACKAGE_PIN A17   IOSTANDARD LVCMOS18  } [get_ports {FF_DIO1_P}]
set_property -dict {PACKAGE_PIN A16   IOSTANDARD LVCMOS18  } [get_ports {FF_DIO1_N}]
set_property -dict {PACKAGE_PIN B15   IOSTANDARD LVCMOS18  } [get_ports {FF_DIO2_P}]
set_property -dict {PACKAGE_PIN A15   IOSTANDARD LVCMOS18  } [get_ports {FF_DIO2_N}]
set_property -dict {PACKAGE_PIN D16   IOSTANDARD LVCMOS18  } [get_ports {FF_DIO3_P}]
set_property -dict {PACKAGE_PIN C16   IOSTANDARD LVCMOS18  } [get_ports {FF_DIO3_N}]

# HDMI
set_property -dict {PACKAGE_PIN H16   IOSTANDARD LVCMOS18  } [get_ports {HDMI_CEC}]
set_property -dict {PACKAGE_PIN J16   IOSTANDARD LVCMOS18  } [get_ports {HDMI_HPD}]

# I2C MGMT
set_property -dict {PACKAGE_PIN AB13  IOSTANDARD LVCMOS12  } [get_ports {I2C_MGMT_SCL}]
set_property -dict {PACKAGE_PIN AH13  IOSTANDARD LVCMOS12  } [get_ports {I2C_MGMT_SDA}]

# I2C USER
set_property SLEW SLOW [get_ports I2C_USER_SDA]
set_property SLEW SLOW [get_ports I2C_USER_SCL]
set_property -dict {PACKAGE_PIN K12   IOSTANDARD LVCMOS18  } [get_ports {I2C_USER_INT_N}]
set_property -dict {PACKAGE_PIN K15   IOSTANDARD LVCMOS18  } [get_ports {I2C_USER_SCL}]
set_property -dict {PACKAGE_PIN K14   IOSTANDARD LVCMOS18  } [get_ports {I2C_USER_SDA}]

# LED
set_property -dict {PACKAGE_PIN AF13  IOSTANDARD LVCMOS12  } [get_ports {PL_LED2_N}]

# MGT Group 1
# set_property PACKAGE_PIN D6    [get_ports {MGT_TX4_P}] # GTH
# set_property PACKAGE_PIN D5    [get_ports {MGT_TX4_N}] # GTH
# set_property PACKAGE_PIN C8    [get_ports {MGT_TX5_P}] # GTH
# set_property PACKAGE_PIN C7    [get_ports {MGT_TX5_N}] # GTH
# set_property PACKAGE_PIN B6    [get_ports {MGT_TX6_P}] # GTH
# set_property PACKAGE_PIN B5    [get_ports {MGT_TX6_N}] # GTH
# set_property PACKAGE_PIN A8    [get_ports {MGT_TX7_P}] # GTH
# set_property PACKAGE_PIN A7    [get_ports {MGT_TX7_N}] # GTH
# set_property PACKAGE_PIN D2    [get_ports {MGT_RX4_P}] # GTH
# set_property PACKAGE_PIN D1    [get_ports {MGT_RX4_N}] # GTH
# set_property PACKAGE_PIN C4    [get_ports {MGT_RX5_P}] # GTH
# set_property PACKAGE_PIN C3    [get_ports {MGT_RX5_N}] # GTH
# set_property PACKAGE_PIN B2    [get_ports {MGT_RX6_P}] # GTH
# set_property PACKAGE_PIN B1    [get_ports {MGT_RX6_N}] # GTH
# set_property PACKAGE_PIN A4    [get_ports {MGT_RX7_P}] # GTH
# set_property PACKAGE_PIN A3    [get_ports {MGT_RX7_N}] # GTH

# MGT Group 2
# set_property PACKAGE_PIN H6    [get_ports {MGT_TX8_P}] # GTH
# set_property PACKAGE_PIN H5    [get_ports {MGT_TX8_N}] # GTH
# set_property PACKAGE_PIN G8    [get_ports {MGT_TX9_P}] # GTH
# set_property PACKAGE_PIN G7    [get_ports {MGT_TX9_N}] # GTH
# set_property PACKAGE_PIN F6    [get_ports {MGT_TX10_P}] # GTH
# set_property PACKAGE_PIN F5    [get_ports {MGT_TX10_N}] # GTH
# set_property PACKAGE_PIN E8    [get_ports {MGT_TX11_P}] # GTH
# set_property PACKAGE_PIN E7    [get_ports {MGT_TX11_N}] # GTH
# set_property PACKAGE_PIN H2    [get_ports {MGT_RX8_P}] # GTH
# set_property PACKAGE_PIN H1    [get_ports {MGT_RX8_N}] # GTH
# set_property PACKAGE_PIN G4    [get_ports {MGT_RX9_P}] # GTH
# set_property PACKAGE_PIN G3    [get_ports {MGT_RX9_N}] # GTH
# set_property PACKAGE_PIN F2    [get_ports {MGT_RX10_P}] # GTH
# set_property PACKAGE_PIN F1    [get_ports {MGT_RX10_N}] # GTH
# set_property PACKAGE_PIN E4    [get_ports {MGT_RX11_P}] # GTH
# set_property PACKAGE_PIN E3    [get_ports {MGT_RX11_N}] # GTH

# MGT Group 3
# set_property PACKAGE_PIN P6    [get_ports {MGT_TX12_P}] # GTH
# set_property PACKAGE_PIN P5    [get_ports {MGT_TX12_N}] # GTH
# set_property PACKAGE_PIN M6    [get_ports {MGT_TX13_P}] # GTH
# set_property PACKAGE_PIN M5    [get_ports {MGT_TX13_N}] # GTH
# set_property PACKAGE_PIN L4    [get_ports {MGT_TX14_P}] # GTH
# set_property PACKAGE_PIN L3    [get_ports {MGT_TX14_N}] # GTH
# set_property PACKAGE_PIN K6    [get_ports {MGT_TX15_P}] # GTH
# set_property PACKAGE_PIN K5    [get_ports {MGT_TX15_N}] # GTH
# set_property PACKAGE_PIN N4    [get_ports {MGT_RX12_P}] # GTH
# set_property PACKAGE_PIN N3    [get_ports {MGT_RX12_N}] # GTH
# set_property PACKAGE_PIN M2    [get_ports {MGT_RX13_P}] # GTH
# set_property PACKAGE_PIN M1    [get_ports {MGT_RX13_N}] # GTH
# set_property PACKAGE_PIN K2    [get_ports {MGT_RX14_P}] # GTH
# set_property PACKAGE_PIN K1    [get_ports {MGT_RX14_N}] # GTH
# set_property PACKAGE_PIN J4    [get_ports {MGT_RX15_P}] # GTH
# set_property PACKAGE_PIN J3    [get_ports {MGT_RX15_N}] # GTH

# MGT Group 4
# set_property PACKAGE_PIN W4    [get_ports {MGT_TX16_P}] # GTH
# set_property PACKAGE_PIN W3    [get_ports {MGT_TX16_N}] # GTH
# set_property PACKAGE_PIN V6    [get_ports {MGT_TX17_P}] # GTH
# set_property PACKAGE_PIN V5    [get_ports {MGT_TX17_N}] # GTH
# set_property PACKAGE_PIN T6    [get_ports {MGT_TX18_P}] # GTH
# set_property PACKAGE_PIN T5    [get_ports {MGT_TX18_N}] # GTH
# set_property PACKAGE_PIN R4    [get_ports {MGT_TX19_P}] # GTH
# set_property PACKAGE_PIN R3    [get_ports {MGT_TX19_N}] # GTH
# set_property PACKAGE_PIN V2    [get_ports {MGT_RX16_P}] # GTH
# set_property PACKAGE_PIN V1    [get_ports {MGT_RX16_N}] # GTH
# set_property PACKAGE_PIN U4    [get_ports {MGT_RX17_P}] # GTH
# set_property PACKAGE_PIN U3    [get_ports {MGT_RX17_N}] # GTH
# set_property PACKAGE_PIN T2    [get_ports {MGT_RX18_P}] # GTH
# set_property PACKAGE_PIN T1    [get_ports {MGT_RX18_N}] # GTH
# set_property PACKAGE_PIN P2    [get_ports {MGT_RX19_P}] # GTH
# set_property PACKAGE_PIN P1    [get_ports {MGT_RX19_N}] # GTH

# Clock Generator MGT RefClk2
# set_property PACKAGE_PIN B9    [get_ports {MGT_REFCLK2_N}] # GTH
# set_property PACKAGE_PIN B10   [get_ports {MGT_REFCLK2_P}] # GTH

# Clock Generator MGT RefClk3
# set_property PACKAGE_PIN D9    [get_ports {MGT_REFCLK3_N}] # GTH
# set_property PACKAGE_PIN D10   [get_ports {MGT_REFCLK3_P}] # GTH

# Clock Generator MGT RefClk4
# set_property PACKAGE_PIN H9    [get_ports {MGT_REFCLK4_N}] # GTH
# set_property PACKAGE_PIN H10   [get_ports {MGT_REFCLK4_P}] # GTH

# Clock Generator MGT RefClk5
# set_property PACKAGE_PIN F9    [get_ports {MGT_REFCLK5_N}] # GTH
# set_property PACKAGE_PIN F10   [get_ports {MGT_REFCLK5_P}] # GTH

# Clock Generator MGT RefClk6
# set_property PACKAGE_PIN J7    [get_ports {MGT_REFCLK6_N}] # GTH
# set_property PACKAGE_PIN J8    [get_ports {MGT_REFCLK6_P}] # GTH

# Clock Generator MGT RefClk7
# set_property PACKAGE_PIN L7    [get_ports {MGT_REFCLK7_N}] # GTH
# set_property PACKAGE_PIN L8    [get_ports {MGT_REFCLK7_P}] # GTH

# Clock Generator MGT RefClk8
# set_property PACKAGE_PIN N7    [get_ports {MGT_REFCLK8_N}] # GTH
# set_property PACKAGE_PIN N8    [get_ports {MGT_REFCLK8_P}] # GTH

# Clock Generator MGT RefClk9
# set_property PACKAGE_PIN R7    [get_ports {MGT_REFCLK9_N}] # GTH
# set_property PACKAGE_PIN R8    [get_ports {MGT_REFCLK9_P}] # GTH

# Oscillator 100 MHz
set_property -dict {PACKAGE_PIN K11   IOSTANDARD LVCMOS18  } [get_ports {CALIB_CLK}]

# PE3 LED
set_property -dict {PACKAGE_PIN J15   IOSTANDARD LVCMOS18  } [get_ports {PE3_LED0_N}]
set_property -dict {PACKAGE_PIN J14   IOSTANDARD LVCMOS18  } [get_ports {PE3_LED1_N}]
set_property -dict {PACKAGE_PIN E15   IOSTANDARD LVCMOS18  } [get_ports {DII_LED_N}]
set_property -dict {PACKAGE_PIN D15   IOSTANDARD LVCMOS18  } [get_ports {DIO_LED_N}]

# PL 100 MHz Oscillator
set_property -dict {PACKAGE_PIN AJ6   IOSTANDARD DIFF_SSTL12_DCI} [get_ports {CLK100_PL_N}]
set_property -dict {PACKAGE_PIN AH6   IOSTANDARD DIFF_SSTL12_DCI} [get_ports {CLK100_PL_P}]

# PL DDR4 Memory
set_property INTERNAL_VREF 0.600 [get_iobanks 64]
set_property -dict {PACKAGE_PIN AH1   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL_BA[0]}]
set_property -dict {PACKAGE_PIN AF3   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL_BA[1]}]
set_property -dict {PACKAGE_PIN AF8   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL_BG[0]}]
set_property -dict {PACKAGE_PIN AE8   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL_CKE[0]}]
set_property -dict {PACKAGE_PIN AD15  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[0]}]
set_property -dict {PACKAGE_PIN AC14  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[1]}]
set_property -dict {PACKAGE_PIN AA15  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[2]}]
set_property -dict {PACKAGE_PIN AD14  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[3]}]
set_property -dict {PACKAGE_PIN AB15  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[4]}]
set_property -dict {PACKAGE_PIN AE14  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[5]}]
set_property -dict {PACKAGE_PIN AE15  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[6]}]
set_property -dict {PACKAGE_PIN AE13  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[7]}]
set_property -dict {PACKAGE_PIN AF15  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[8]}]
set_property -dict {PACKAGE_PIN AK14  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[9]}]
set_property -dict {PACKAGE_PIN AF1   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL_ODT[0]}]
set_property -dict {PACKAGE_PIN AG6   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL_A[0]}]
set_property -dict {PACKAGE_PIN AG5   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL_A[1]}]
set_property -dict {PACKAGE_PIN AK7   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL_A[2]}]
set_property -dict {PACKAGE_PIN AK6   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL_A[3]}]
set_property -dict {PACKAGE_PIN AJ4   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL_A[4]}]
set_property -dict {PACKAGE_PIN AK4   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL_A[5]}]
set_property -dict {PACKAGE_PIN AF6   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL_A[6]}]
set_property -dict {PACKAGE_PIN AF5   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL_A[7]}]
set_property -dict {PACKAGE_PIN AH4   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL_A[8]}]
set_property -dict {PACKAGE_PIN AK3   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL_A[9]}]
set_property -dict {PACKAGE_PIN AK5   IOSTANDARD DIFF_SSTL12_DCI} [get_ports {DDR4PL_CK_N[0]}]
set_property -dict {PACKAGE_PIN AJ5   IOSTANDARD DIFF_SSTL12_DCI} [get_ports {DDR4PL_CK_P[0]}]
set_property -dict {PACKAGE_PIN AE9   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL_CS_N[0]}]
set_property -dict {PACKAGE_PIN AG15  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[10]}]
set_property -dict {PACKAGE_PIN AJ14  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[11]}]
set_property -dict {PACKAGE_PIN AG14  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[12]}]
set_property -dict {PACKAGE_PIN AK13  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[13]}]
set_property -dict {PACKAGE_PIN AH14  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[14]}]
set_property -dict {PACKAGE_PIN AK12  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[15]}]
set_property -dict {PACKAGE_PIN AC18  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[16]}]
set_property -dict {PACKAGE_PIN AE19  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[17]}]
set_property -dict {PACKAGE_PIN AD19  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[18]}]
set_property -dict {PACKAGE_PIN AD16  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[19]}]
set_property -dict {PACKAGE_PIN AC17  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[20]}]
set_property -dict {PACKAGE_PIN AE17  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[21]}]
set_property -dict {PACKAGE_PIN AC16  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[22]}]
set_property -dict {PACKAGE_PIN AD17  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[23]}]
set_property -dict {PACKAGE_PIN AF18  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[24]}]
set_property -dict {PACKAGE_PIN AJ16  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[25]}]
set_property -dict {PACKAGE_PIN AE18  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[26]}]
set_property -dict {PACKAGE_PIN AJ17  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[27]}]
set_property -dict {PACKAGE_PIN AG18  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[28]}]
set_property -dict {PACKAGE_PIN AK16  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[29]}]
set_property -dict {PACKAGE_PIN AH18  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[30]}]
set_property -dict {PACKAGE_PIN AH17  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[31]}]
set_property -dict {PACKAGE_PIN AB9   IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[32]}]
set_property -dict {PACKAGE_PIN AC11  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[33]}]
set_property -dict {PACKAGE_PIN Y10   IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[34]}]
set_property -dict {PACKAGE_PIN AA11  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[35]}]
set_property -dict {PACKAGE_PIN AB10  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[36]}]
set_property -dict {PACKAGE_PIN AB11  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[37]}]
set_property -dict {PACKAGE_PIN AA10  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[38]}]
set_property -dict {PACKAGE_PIN AA12  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[39]}]
set_property -dict {PACKAGE_PIN AD6   IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[40]}]
set_property -dict {PACKAGE_PIN AC8   IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[41]}]
set_property -dict {PACKAGE_PIN AC7   IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[42]}]
set_property -dict {PACKAGE_PIN AB8   IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[43]}]
set_property -dict {PACKAGE_PIN AC6   IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[44]}]
set_property -dict {PACKAGE_PIN AA8   IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[45]}]
set_property -dict {PACKAGE_PIN W8    IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[46]}]
set_property -dict {PACKAGE_PIN Y8    IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[47]}]
set_property -dict {PACKAGE_PIN AE5   IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[48]}]
set_property -dict {PACKAGE_PIN AB5   IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[49]}]
set_property -dict {PACKAGE_PIN AB4   IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[50]}]
set_property -dict {PACKAGE_PIN AB6   IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[51]}]
set_property -dict {PACKAGE_PIN AD5   IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[52]}]
set_property -dict {PACKAGE_PIN AA6   IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[53]}]
set_property -dict {PACKAGE_PIN AC4   IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[54]}]
set_property -dict {PACKAGE_PIN AA5   IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[55]}]
set_property -dict {PACKAGE_PIN AE1   IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[56]}]
set_property -dict {PACKAGE_PIN AC3   IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[57]}]
set_property -dict {PACKAGE_PIN AB1   IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[58]}]
set_property -dict {PACKAGE_PIN AC2   IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[59]}]
set_property -dict {PACKAGE_PIN AD1   IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[60]}]
set_property -dict {PACKAGE_PIN AA2   IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[61]}]
set_property -dict {PACKAGE_PIN AC1   IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[62]}]
set_property -dict {PACKAGE_PIN AA1   IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DQ[63]}]
set_property -dict {PACKAGE_PIN AG1   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL_ACT_N}]
set_property -dict {PACKAGE_PIN AK2   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL_A[10]}]
set_property -dict {PACKAGE_PIN AJ2   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL_A[11]}]
set_property -dict {PACKAGE_PIN AJ1   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL_A[12]}]
set_property -dict {PACKAGE_PIN AH3   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL_A[13]}]
set_property -dict {PACKAGE_PIN AH2   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL_A[14]}]
set_property -dict {PACKAGE_PIN AG4   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL_A[15]}]
set_property -dict {PACKAGE_PIN AG3   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL_A[16]}]
set_property -dict {PACKAGE_PIN AA13  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DM[0]}]
set_property -dict {PACKAGE_PIN AG13  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DM[1]}]
set_property -dict {PACKAGE_PIN AF16  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DM[2]}]
set_property -dict {PACKAGE_PIN AG16  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DM[3]}]
set_property -dict {PACKAGE_PIN AC12  IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DM[4]}]
set_property -dict {PACKAGE_PIN AC9   IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DM[5]}]
set_property -dict {PACKAGE_PIN AD7   IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DM[6]}]
set_property -dict {PACKAGE_PIN AD2   IOSTANDARD POD12_DCI } [get_ports {DDR4PL_DM[7]}]
set_property -dict {PACKAGE_PIN AA14  IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL_DQS_P[0]}]
set_property -dict {PACKAGE_PIN AJ15  IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL_DQS_P[1]}]
set_property -dict {PACKAGE_PIN AA16  IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL_DQS_P[2]}]
set_property -dict {PACKAGE_PIN AK17  IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL_DQS_P[3]}]
set_property -dict {PACKAGE_PIN AD11  IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL_DQS_P[4]}]
set_property -dict {PACKAGE_PIN Y7    IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL_DQS_P[5]}]
set_property -dict {PACKAGE_PIN AD4   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL_DQS_P[6]}]
set_property -dict {PACKAGE_PIN AA3   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL_DQS_P[7]}]
set_property -dict {PACKAGE_PIN AB14  IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL_DQS_N[0]}]
set_property -dict {PACKAGE_PIN AK15  IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL_DQS_N[1]}]
set_property -dict {PACKAGE_PIN AB16  IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL_DQS_N[2]}]
set_property -dict {PACKAGE_PIN AK18  IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL_DQS_N[3]}]
set_property -dict {PACKAGE_PIN AD10  IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL_DQS_N[4]}]
set_property -dict {PACKAGE_PIN AA7   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL_DQS_N[5]}]
set_property -dict {PACKAGE_PIN AE4   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL_DQS_N[6]}]
set_property -dict {PACKAGE_PIN AB3   IOSTANDARD DIFF_POD12_DCI} [get_ports {DDR4PL_DQS_N[7]}]
set_property -dict {PACKAGE_PIN AF7   IOSTANDARD SSTL12_DCI} [get_ports {DDR4PL_BG[1]}]
set_property -dict {PACKAGE_PIN AG9   IOSTANDARD LVCMOS12  } [get_ports {DDR4PL_RST_N}]

# USER INPUT
set_property -dict {PACKAGE_PIN L15   IOSTANDARD LVCMOS18  } [get_ports {BTN_N}]
set_property -dict {PACKAGE_PIN L14   IOSTANDARD LVCMOS18  } [get_ports {DIP_N}]
