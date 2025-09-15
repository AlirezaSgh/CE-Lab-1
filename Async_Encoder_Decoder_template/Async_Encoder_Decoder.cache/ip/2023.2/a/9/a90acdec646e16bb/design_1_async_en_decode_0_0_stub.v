// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Sep 11 16:39:34 2024
// Host        : DESKTOP-5D6U9FV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_async_en_decode_0_0_stub.v
// Design      : design_1_async_en_decode_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "async_en_decode,Vivado 2023.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(reset, prog_select, bin_rot, gray_rot, led)
/* synthesis syn_black_box black_box_pad_pin="reset,prog_select,bin_rot[2:0],gray_rot[3:0],led[3:0]" */;
  input reset;
  input prog_select;
  input [2:0]bin_rot;
  input [3:0]gray_rot;
  output [3:0]led;
endmodule
