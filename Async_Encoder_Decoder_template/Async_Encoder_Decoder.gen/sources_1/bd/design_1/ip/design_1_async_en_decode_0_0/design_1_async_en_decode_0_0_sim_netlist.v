// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Mon Sep 15 19:59:14 2025
// Host        : fedora running 64-bit Fedora release 42 (Adams)
// Command     : write_verilog -force -mode funcsim
//               /home/alireza/Uni/Computer-Engineering/Labs/1/Async_Encoder_Decoder_template/Async_Encoder_Decoder.gen/sources_1/bd/design_1/ip/design_1_async_en_decode_0_0/design_1_async_en_decode_0_0_sim_netlist.v
// Design      : design_1_async_en_decode_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_async_en_decode_0_0,async_en_decode,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "async_en_decode,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_async_en_decode_0_0
   (reset,
    prog_select,
    bin_rot,
    gray_rot,
    led);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input prog_select;
  input [2:0]bin_rot;
  input [3:0]gray_rot;
  output [3:0]led;

  wire [2:0]bin_rot;
  wire [3:0]gray_rot;
  wire [3:0]led;
  wire prog_select;
  wire reset;

  design_1_async_en_decode_0_0_async_en_decode inst
       (.bin_rot(bin_rot),
        .gray_rot(gray_rot),
        .led(led),
        .prog_select(prog_select),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "async_en_decode" *) 
module design_1_async_en_decode_0_0_async_en_decode
   (led,
    gray_rot,
    prog_select,
    reset,
    bin_rot);
  output [3:0]led;
  input [3:0]gray_rot;
  input prog_select;
  input reset;
  input [2:0]bin_rot;

  wire \/i__n_0 ;
  wire [2:0]bin_rot;
  wire [3:0]gray_rot;
  wire [3:0]led;
  wire \led_reg[0]_i_1_n_0 ;
  wire \led_reg[1]_i_1_n_0 ;
  wire \led_reg[2]_i_1_n_0 ;
  wire \led_reg[3]_i_1_n_0 ;
  wire \led_reg[3]_i_2_n_0 ;
  wire prog_select;
  wire reset;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF555D)) 
    \/i_ 
       (.I0(gray_rot[3]),
        .I1(gray_rot[0]),
        .I2(gray_rot[2]),
        .I3(gray_rot[1]),
        .I4(prog_select),
        .O(\/i__n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_reg[0] 
       (.CLR(reset),
        .D(\led_reg[0]_i_1_n_0 ),
        .G(\/i__n_0 ),
        .GE(1'b1),
        .Q(led[0]));
  LUT6 #(
    .INIT(64'hCCCCCCCC50050550)) 
    \led_reg[0]_i_1 
       (.I0(gray_rot[3]),
        .I1(bin_rot[0]),
        .I2(gray_rot[0]),
        .I3(gray_rot[2]),
        .I4(gray_rot[1]),
        .I5(prog_select),
        .O(\led_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_reg[1] 
       (.CLR(reset),
        .D(\led_reg[1]_i_1_n_0 ),
        .G(\/i__n_0 ),
        .GE(1'b1),
        .Q(led[1]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \led_reg[1]_i_1 
       (.I0(bin_rot[1]),
        .I1(prog_select),
        .I2(gray_rot[0]),
        .I3(gray_rot[3]),
        .O(\led_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_reg[2] 
       (.CLR(reset),
        .D(\led_reg[2]_i_1_n_0 ),
        .G(\/i__n_0 ),
        .GE(1'b1),
        .Q(led[2]));
  LUT6 #(
    .INIT(64'h888BBBBB888B8888)) 
    \led_reg[2]_i_1 
       (.I0(bin_rot[2]),
        .I1(prog_select),
        .I2(gray_rot[2]),
        .I3(gray_rot[3]),
        .I4(gray_rot[0]),
        .I5(gray_rot[1]),
        .O(\led_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \led_reg[3] 
       (.CLR(\led_reg[3]_i_2_n_0 ),
        .D(\led_reg[3]_i_1_n_0 ),
        .G(\/i__n_0 ),
        .GE(1'b1),
        .Q(led[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \led_reg[3]_i_1 
       (.I0(gray_rot[3]),
        .I1(prog_select),
        .O(\led_reg[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \led_reg[3]_i_2 
       (.I0(prog_select),
        .I1(reset),
        .O(\led_reg[3]_i_2_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
