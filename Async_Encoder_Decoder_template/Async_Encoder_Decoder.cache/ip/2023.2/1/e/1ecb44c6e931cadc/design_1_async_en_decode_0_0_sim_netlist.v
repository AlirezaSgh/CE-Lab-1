// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Sep 11 16:46:38 2024
// Host        : DESKTOP-5D6U9FV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_async_en_decode_0_0_sim_netlist.v
// Design      : design_1_async_en_decode_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_async_en_decode_0_0,async_en_decode,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "async_en_decode,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (reset,
    prog_select,
    bin_rot,
    gray_rot,
    led);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input prog_select;
  input [2:0]bin_rot;
  input [3:0]gray_rot;
  output [3:0]led;

  wire [2:0]bin_rot;
  wire [3:0]gray_rot;
  wire [3:0]led;
  wire \led[0]_INST_0_i_1_n_0 ;
  wire \led[1]_INST_0_i_1_n_0 ;
  wire \led[2]_INST_0_i_1_n_0 ;
  wire prog_select;
  wire reset;

  LUT2 #(
    .INIT(4'h2)) 
    \led[0]_INST_0 
       (.I0(\led[0]_INST_0_i_1_n_0 ),
        .I1(reset),
        .O(led[0]));
  LUT6 #(
    .INIT(64'h550F550F55FF553F)) 
    \led[0]_INST_0_i_1 
       (.I0(bin_rot[0]),
        .I1(gray_rot[0]),
        .I2(gray_rot[1]),
        .I3(prog_select),
        .I4(gray_rot[3]),
        .I5(gray_rot[2]),
        .O(\led[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \led[1]_INST_0 
       (.I0(\led[1]_INST_0_i_1_n_0 ),
        .I1(reset),
        .O(led[1]));
  LUT6 #(
    .INIT(64'h4744477777774777)) 
    \led[1]_INST_0_i_1 
       (.I0(bin_rot[1]),
        .I1(prog_select),
        .I2(gray_rot[2]),
        .I3(gray_rot[1]),
        .I4(gray_rot[0]),
        .I5(gray_rot[3]),
        .O(\led[1]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \led[2]_INST_0 
       (.I0(\led[2]_INST_0_i_1_n_0 ),
        .I1(reset),
        .O(led[2]));
  LUT6 #(
    .INIT(64'h5530553355FF55FF)) 
    \led[2]_INST_0_i_1 
       (.I0(bin_rot[2]),
        .I1(gray_rot[3]),
        .I2(gray_rot[2]),
        .I3(prog_select),
        .I4(gray_rot[1]),
        .I5(gray_rot[0]),
        .O(\led[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008BDF)) 
    \led[3]_INST_0 
       (.I0(gray_rot[2]),
        .I1(gray_rot[3]),
        .I2(gray_rot[1]),
        .I3(gray_rot[0]),
        .I4(prog_select),
        .I5(reset),
        .O(led[3]));
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
