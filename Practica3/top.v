`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:03:04 03/27/2022 
// Design Name: 
// Module Name:    top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module top(
input clk, //basys internal
    input reset, //pb
	 input enable, //pb
    
	 //output [3:0] outcome,
	 output [3:0] outcomeDecs,
	 output [3:0] outcomeSeg,
	 output [3:0] outcomeDecenaSeg,
	 output [3:0] outcomeMin,
	 
	 output [3:0] printMux,
	 output dpMux,
	 
	 output sa, sb, sc, sd, se, sf, sg, dp,
	 output [3:0] Transistor
    );
	
	wire [1:0] resultGTV;
	wire [3:0] estadoDecs;
	wire [3:0] estadoSeg;
	wire [3:0] estadoDecenaSeg;
	wire [3:0] estadoMin;

	GTV_module GTVcode(.clk(clk),.contadorGTV(resultGTV));

	contador09 decimasSegundo(.clk(clk),.reset(reset),.enable(enable),.outcome(estadoDecs));
	assign outcomeDecs = estadoDecs;
	contador09_seg segundos(.clk(clk),.reset(reset),.enable(enable),.outcome(estadoSeg));
	assign outcomeSeg = estadoSeg;
	contador05 decenasMinutos(.clk(clk),.reset(reset),.enable(enable),.outcome(estadoDecenaSeg));
	assign outcomeDecenaSeg = estadoDecenaSeg;
	contador09_min minutos(.clk(clk),.reset(reset),.enable(enable),.outcome(estadoMin));
	assign outcomeMin = estadoMin;
	
	mux4_1 mux4_1_forOneCold(.GTV(resultGTV),.D0(outcomeDecs),.D1(outcomeSeg),.D2(outcomeDecenaSeg),.D3(outcomeMin),.muxResult(printMux));
	
	mux4_1 muxdp(.GTV(resultGTV),.D0(1),.D1(0),.D2(1),.D3(0),.muxResult(dpMux));
	
	oneCold sweepDisplay(.GTV(resultGTV),.T(Transistor));
	
	binarioHexadecimalVGRL decoder(.punto(dpMux),.w(printMux[3]),.x(printMux[2]),.y(printMux[1]),.z(printMux[0]),
									.a(sa),.b(sb),.c(sc),.d(sd),.e(se),.f(sf),.g(sg),.dp(dp));


endmodule
