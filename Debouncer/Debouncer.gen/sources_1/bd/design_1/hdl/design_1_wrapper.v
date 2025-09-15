//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Wed Sep 11 17:06:56 2024
//Host        : DESKTOP-5D6U9FV running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (btn1,
    btn2,
    led,
    reset,
    sysclk);
  input btn1;
  input btn2;
  output [3:0]led;
  input reset;
  input sysclk;

  wire btn1;
  wire btn2;
  wire [3:0]led;
  wire reset;
  wire sysclk;

  design_1 design_1_i
       (.btn1(btn1),
        .btn2(btn2),
        .led(led),
        .reset(reset),
        .sysclk(sysclk));
endmodule
