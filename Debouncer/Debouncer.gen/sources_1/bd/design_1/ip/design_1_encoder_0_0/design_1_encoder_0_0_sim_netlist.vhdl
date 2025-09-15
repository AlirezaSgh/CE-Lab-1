-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Mon Sep 15 20:17:00 2025
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
entity design_1_encoder_0_0_encoder is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_encoder_0_0_encoder : entity is "encoder";
end design_1_encoder_0_0_encoder;

architecture STRUCTURE of design_1_encoder_0_0_encoder is
  signal \EncOut[0]_i_1_n_0\ : STD_LOGIC;
  signal \EncOut[1]_i_1_n_0\ : STD_LOGIC;
  signal \EncOut[2]_i_1_n_0\ : STD_LOGIC;
  signal \EncOut[3]_i_1_n_0\ : STD_LOGIC;
  signal \EncOut[3]_i_2_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \EncOut[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \EncOut[2]_i_1\ : label is "soft_lutpair0";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\EncOut[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \EncOut[0]_i_1_n_0\
    );
\EncOut[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A659"
    )
        port map (
      I0 => \^q\(0),
      I1 => A,
      I2 => B,
      I3 => \^q\(1),
      O => \EncOut[1]_i_1_n_0\
    );
\EncOut[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F708AE51"
    )
        port map (
      I0 => \^q\(0),
      I1 => A,
      I2 => B,
      I3 => \^q\(2),
      I4 => \^q\(1),
      O => \EncOut[2]_i_1_n_0\
    );
\EncOut[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A,
      I1 => B,
      O => \EncOut[3]_i_1_n_0\
    );
\EncOut[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF4000FFF4000B"
    )
        port map (
      I0 => B,
      I1 => A,
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(2),
      O => \EncOut[3]_i_2_n_0\
    );
\EncOut_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \EncOut[3]_i_1_n_0\,
      D => \EncOut[0]_i_1_n_0\,
      Q => \^q\(0),
      R => reset
    );
\EncOut_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \EncOut[3]_i_1_n_0\,
      D => \EncOut[1]_i_1_n_0\,
      Q => \^q\(1),
      R => reset
    );
\EncOut_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \EncOut[3]_i_1_n_0\,
      D => \EncOut[2]_i_1_n_0\,
      Q => \^q\(2),
      R => reset
    );
\EncOut_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \EncOut[3]_i_1_n_0\,
      D => \EncOut[3]_i_2_n_0\,
      Q => \^q\(3),
      R => reset
    );
end STRUCTURE;
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
inst: entity work.design_1_encoder_0_0_encoder
     port map (
      A => A,
      B => B,
      Q(3 downto 0) => EncOut(3 downto 0),
      clk => clk,
      reset => reset
    );
end STRUCTURE;
