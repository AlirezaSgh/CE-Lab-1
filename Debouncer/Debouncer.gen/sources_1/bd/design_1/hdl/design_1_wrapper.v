//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
//Date        : Mon Sep 15 20:16:25 2025
//Host        : fedora running 64-bit Fedora release 42 (Adams)
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
