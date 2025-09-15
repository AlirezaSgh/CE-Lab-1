// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Mon Sep 15 19:00:47 2025
// Host        : fedora running 64-bit Fedora release 42 (Adams)
// Command     : write_verilog -force -mode synth_stub
//               /home/alireza/Uni/Computer-Engineering/Labs/1/Debouncer/Debouncer.gen/sources_1/bd/design_1/ip/design_1_encoder_0_0/design_1_encoder_0_0_stub.v
// Design      : design_1_encoder_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_encoder_0_0,encoder,{}" *) (* CORE_GENERATION_INFO = "design_1_encoder_0_0,encoder,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=encoder,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "encoder,Vivado 2025.1" *) 
module design_1_encoder_0_0(reset, clk, A, B, EncOut)
/* synthesis syn_black_box black_box_pad_pin="reset,clk,A,B,EncOut[3:0]" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_sysclk, INSERT_VIP 0" *) input clk;
  input A;
  input B;
  output [3:0]EncOut;
endmodule
