-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed Sep 11 16:46:38 2024
-- Host        : DESKTOP-5D6U9FV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/TUD/Vivado_Projects/CE_Lab1/Async_Encoder_Decoder/Async_Encoder_Decoder.gen/sources_1/bd/design_1/ip/design_1_async_en_decode_0_0/design_1_async_en_decode_0_0_sim_netlist.vhdl
-- Design      : design_1_async_en_decode_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_async_en_decode_0_0 is
  port (
    reset : in STD_LOGIC;
    prog_select : in STD_LOGIC;
    bin_rot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gray_rot : in STD_LOGIC_VECTOR ( 3 downto 0 );
    led : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_async_en_decode_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_async_en_decode_0_0 : entity is "design_1_async_en_decode_0_0,async_en_decode,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_async_en_decode_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_async_en_decode_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_async_en_decode_0_0 : entity is "async_en_decode,Vivado 2023.2";
end design_1_async_en_decode_0_0;

architecture STRUCTURE of design_1_async_en_decode_0_0 is
  signal \led[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \led[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \led[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
\led[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \led[0]_INST_0_i_1_n_0\,
      I1 => reset,
      O => led(0)
    );
\led[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"550F550F55FF553F"
    )
        port map (
      I0 => bin_rot(0),
      I1 => gray_rot(0),
      I2 => gray_rot(1),
      I3 => prog_select,
      I4 => gray_rot(3),
      I5 => gray_rot(2),
      O => \led[0]_INST_0_i_1_n_0\
    );
\led[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \led[1]_INST_0_i_1_n_0\,
      I1 => reset,
      O => led(1)
    );
\led[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4744477777774777"
    )
        port map (
      I0 => bin_rot(1),
      I1 => prog_select,
      I2 => gray_rot(2),
      I3 => gray_rot(1),
      I4 => gray_rot(0),
      I5 => gray_rot(3),
      O => \led[1]_INST_0_i_1_n_0\
    );
\led[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \led[2]_INST_0_i_1_n_0\,
      I1 => reset,
      O => led(2)
    );
\led[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5530553355FF55FF"
    )
        port map (
      I0 => bin_rot(2),
      I1 => gray_rot(3),
      I2 => gray_rot(2),
      I3 => prog_select,
      I4 => gray_rot(1),
      I5 => gray_rot(0),
      O => \led[2]_INST_0_i_1_n_0\
    );
\led[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008BDF"
    )
        port map (
      I0 => gray_rot(2),
      I1 => gray_rot(3),
      I2 => gray_rot(1),
      I3 => gray_rot(0),
      I4 => prog_select,
      I5 => reset,
      O => led(3)
    );
end STRUCTURE;
