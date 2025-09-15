//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Thu Aug 29 16:01:17 2024
//Host        : DESKTOP-5D6U9FV running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (btn,
    led,
    reset,
    rgbled,
    sysclk);
  input [3:0]btn;
  output [3:0]led;
  input reset;
  output [2:0]rgbled;
  input sysclk;

  wire [3:0]btn;
  wire [3:0]led;
  wire reset;
  wire [2:0]rgbled;
  wire sysclk;

  design_1 design_1_i
       (.btn(btn),
        .led(led),
        .reset(reset),
        .rgbled(rgbled),
        .sysclk(sysclk));
endmodule
