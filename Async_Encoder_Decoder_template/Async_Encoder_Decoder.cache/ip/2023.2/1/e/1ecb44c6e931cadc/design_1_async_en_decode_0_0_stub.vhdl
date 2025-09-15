-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed Sep 11 16:46:38 2024
-- Host        : DESKTOP-5D6U9FV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_async_en_decode_0_0_stub.vhdl
-- Design      : design_1_async_en_decode_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    reset : in STD_LOGIC;
    prog_select : in STD_LOGIC;
    bin_rot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gray_rot : in STD_LOGIC_VECTOR ( 3 downto 0 );
    led : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "reset,prog_select,bin_rot[2:0],gray_rot[3:0],led[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "async_en_decode,Vivado 2023.2";
begin
end;
