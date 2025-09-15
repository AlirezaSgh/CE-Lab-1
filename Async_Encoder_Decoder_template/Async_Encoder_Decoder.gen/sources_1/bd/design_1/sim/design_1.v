//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Wed Sep 11 16:45:35 2024
//Host        : DESKTOP-5D6U9FV running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (bin_rot,
    gray_rot,
    led,
    reset,
    sw);
  input [2:0]bin_rot;
  input [3:0]gray_rot;
  output [3:0]led;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset;
  input sw;

  wire [3:0]async_en_decode_0_led;
  wire [2:0]bin_rot_0_1;
  wire [3:0]gray_rot_0_1;
  wire prog_select_0_1;
  wire reset_0_1;

  assign bin_rot_0_1 = bin_rot[2:0];
  assign gray_rot_0_1 = gray_rot[3:0];
  assign led[3:0] = async_en_decode_0_led;
  assign prog_select_0_1 = sw;
  assign reset_0_1 = reset;
  design_1_async_en_decode_0_0 async_en_decode_0
       (.bin_rot(bin_rot_0_1),
        .gray_rot(gray_rot_0_1),
        .led(async_en_decode_0_led),
        .prog_select(prog_select_0_1),
        .reset(reset_0_1));
endmodule
