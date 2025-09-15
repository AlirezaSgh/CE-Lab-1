//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
//Date        : Mon Sep 15 18:57:21 2025
//Host        : fedora running 64-bit Fedora release 42 (Adams)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (btn1,
    btn2,
    led,
    reset,
    sysclk);
  input btn1;
  input btn2;
  output [3:0]led;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYSCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYSCLK, ASSOCIATED_RESET reset, CLK_DOMAIN design_1_sysclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input sysclk;

  wire btn1;
  wire btn2;
  wire [3:0]led;
  wire reset;
  wire sysclk;

  design_1_debouncer_0_1 debouncer_0
       (.btn_in(btn1),
        .clk(sysclk));
  design_1_debouncer_1_0 debouncer_1
       (.btn_in(btn2),
        .clk(sysclk));
  design_1_encoder_0_0 encoder_0
       (.A(btn1),
        .B(btn2),
        .EncOut(led),
        .clk(sysclk),
        .reset(reset));
endmodule
