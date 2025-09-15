-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Mon Sep 15 19:00:47 2025
-- Host        : fedora running 64-bit Fedora release 42 (Adams)
-- Command     : write_vhdl -force -mode funcsim
--               /home/alireza/Uni/Computer-Engineering/Labs/1/Debouncer/Debouncer.gen/sources_1/bd/design_1/ip/design_1_encoder_0_0/design_1_encoder_0_0_sim_netlist.vhdl
-- Design      : design_1_encoder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_encoder_0_0 is
  port (
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    EncOut : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_encoder_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_encoder_0_0 : entity is "design_1_encoder_0_0,encoder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_encoder_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_encoder_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_encoder_0_0 : entity is "encoder,Vivado 2025.1";
end design_1_encoder_0_0;

architecture STRUCTURE of design_1_encoder_0_0 is
  component design_1_encoder_0_0_encoder is
  port (
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    EncOut : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1_encoder_0_0_encoder;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_sysclk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_MODE of reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: component design_1_encoder_0_0_encoder
     port map (
      A => A,
      B => B,
      EncOut(3 downto 0) => EncOut(3 downto 0),
      clk => clk,
      reset => reset
    );
end STRUCTURE;
