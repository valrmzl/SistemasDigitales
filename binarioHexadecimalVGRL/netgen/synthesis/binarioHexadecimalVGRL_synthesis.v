////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: binarioHexadecimalVGRL_synthesis.v
// /___/   /\     Timestamp: Mon Feb 28 12:23:55 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim binarioHexadecimalVGRL.ngc binarioHexadecimalVGRL_synthesis.v 
// Device	: xc3s100e-5-cp132
// Input file	: binarioHexadecimalVGRL.ngc
// Output file	: D:\Sistemas digitales\binarioHexadecimalVGRL\netgen\synthesis\binarioHexadecimalVGRL_synthesis.v
// # of Modules	: 1
// Design Name	: binarioHexadecimalVGRL
// Xilinx        : D:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module binarioHexadecimalVGRL (
  a, b, c, d, e, f, g, w, x, y, z, transistor, GTV
);
  output a;
  output b;
  output c;
  output d;
  output e;
  output f;
  output g;
  input w;
  input x;
  input y;
  input z;
  output [0 : 3] transistor;
  input [1 : 0] GTV;
  wire GTV_0_IBUF_2;
  wire GTV_1_IBUF_3;
  wire a_OBUF_5;
  wire b_OBUF_7;
  wire c_OBUF_9;
  wire d_OBUF_11;
  wire e_OBUF_13;
  wire f_OBUF_15;
  wire g_OBUF_17;
  wire transistor_0_OBUF_22;
  wire transistor_1_OBUF_23;
  wire transistor_2_OBUF_24;
  wire transistor_3_OBUF_25;
  wire w_IBUF_27;
  wire x_IBUF_29;
  wire y_IBUF_31;
  wire z_IBUF_33;
  LUT2 #(
    .INIT ( 4'h7 ))
  Mdecod_transistor31 (
    .I0(GTV_0_IBUF_2),
    .I1(GTV_1_IBUF_3),
    .O(transistor_0_OBUF_22)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  Mdecod_transistor21 (
    .I0(GTV_1_IBUF_3),
    .I1(GTV_0_IBUF_2),
    .O(transistor_1_OBUF_23)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  Mdecod_transistor11 (
    .I0(GTV_0_IBUF_2),
    .I1(GTV_1_IBUF_3),
    .O(transistor_2_OBUF_24)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  Mdecod_transistor01 (
    .I0(GTV_0_IBUF_2),
    .I1(GTV_1_IBUF_3),
    .O(transistor_3_OBUF_25)
  );
  LUT4 #(
    .INIT ( 16'h232A ))
  e1 (
    .I0(z_IBUF_33),
    .I1(w_IBUF_27),
    .I2(y_IBUF_31),
    .I3(x_IBUF_29),
    .O(e_OBUF_13)
  );
  LUT4 #(
    .INIT ( 16'h8098 ))
  c1 (
    .I0(w_IBUF_27),
    .I1(x_IBUF_29),
    .I2(y_IBUF_31),
    .I3(z_IBUF_33),
    .O(c_OBUF_9)
  );
  LUT4 #(
    .INIT ( 16'h4109 ))
  g1 (
    .I0(w_IBUF_27),
    .I1(x_IBUF_29),
    .I2(y_IBUF_31),
    .I3(z_IBUF_33),
    .O(g_OBUF_17)
  );
  LUT4 #(
    .INIT ( 16'h5910 ))
  f1 (
    .I0(w_IBUF_27),
    .I1(x_IBUF_29),
    .I2(y_IBUF_31),
    .I3(z_IBUF_33),
    .O(f_OBUF_15)
  );
  LUT4 #(
    .INIT ( 16'hB860 ))
  b1 (
    .I0(y_IBUF_31),
    .I1(z_IBUF_33),
    .I2(x_IBUF_29),
    .I3(w_IBUF_27),
    .O(b_OBUF_7)
  );
  LUT4 #(
    .INIT ( 16'h8964 ))
  d1 (
    .I0(y_IBUF_31),
    .I1(z_IBUF_33),
    .I2(w_IBUF_27),
    .I3(x_IBUF_29),
    .O(d_OBUF_11)
  );
  LUT4 #(
    .INIT ( 16'h6102 ))
  a1 (
    .I0(x_IBUF_29),
    .I1(y_IBUF_31),
    .I2(w_IBUF_27),
    .I3(z_IBUF_33),
    .O(a_OBUF_5)
  );
  IBUF   w_IBUF (
    .I(w),
    .O(w_IBUF_27)
  );
  IBUF   x_IBUF (
    .I(x),
    .O(x_IBUF_29)
  );
  IBUF   y_IBUF (
    .I(y),
    .O(y_IBUF_31)
  );
  IBUF   z_IBUF (
    .I(z),
    .O(z_IBUF_33)
  );
  IBUF   GTV_1_IBUF (
    .I(GTV[1]),
    .O(GTV_1_IBUF_3)
  );
  IBUF   GTV_0_IBUF (
    .I(GTV[0]),
    .O(GTV_0_IBUF_2)
  );
  OBUF   a_OBUF (
    .I(a_OBUF_5),
    .O(a)
  );
  OBUF   b_OBUF (
    .I(b_OBUF_7),
    .O(b)
  );
  OBUF   c_OBUF (
    .I(c_OBUF_9),
    .O(c)
  );
  OBUF   d_OBUF (
    .I(d_OBUF_11),
    .O(d)
  );
  OBUF   e_OBUF (
    .I(e_OBUF_13),
    .O(e)
  );
  OBUF   f_OBUF (
    .I(f_OBUF_15),
    .O(f)
  );
  OBUF   g_OBUF (
    .I(g_OBUF_17),
    .O(g)
  );
  OBUF   transistor_0_OBUF (
    .I(transistor_0_OBUF_22),
    .O(transistor[0])
  );
  OBUF   transistor_1_OBUF (
    .I(transistor_1_OBUF_23),
    .O(transistor[1])
  );
  OBUF   transistor_2_OBUF (
    .I(transistor_2_OBUF_24),
    .O(transistor[2])
  );
  OBUF   transistor_3_OBUF (
    .I(transistor_3_OBUF_25),
    .O(transistor[3])
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule

`endif

