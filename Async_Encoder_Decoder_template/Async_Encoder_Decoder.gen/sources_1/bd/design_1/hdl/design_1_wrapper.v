//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Wed Sep 11 16:45:35 2024
//Host        : DESKTOP-5D6U9FV running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (bin_rot,
    gray_rot,
    led,
    reset,
    sw);
  input [2:0]bin_rot;
  input [3:0]gray_rot;
  output [3:0]led;
  input reset;
  input sw;

  wire [2:0]bin_rot;
  wire [3:0]gray_rot;
  wire [3:0]led;
  wire reset;
  wire sw;

  design_1 design_1_i
       (.bin_rot(bin_rot),
        .gray_rot(gray_rot),
        .led(led),
        .reset(reset),
        .sw(sw));
endmodule
