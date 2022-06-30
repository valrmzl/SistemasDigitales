`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:46:14 03/13/2022 
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
    input signed [3:0] A,
    input signed [3:0] B,
    input [2:0] button,
	 
	 input [1:0] GTV,
    
	 
	 output [7:0] muxResult,
	 output dpMuxResult,
	 
	 output [3:0] T,
	 output sa,
	 output sb,
	 output sc,
	 output sd,
	 output se,
	 output sf,
	 output sg,
	 output dp
    );
	 
	wire [7:0] finalResult;
	wire [3:0] compA, compB;
	wire signA, signB, signRES;

	
	alu_module alu(.A(A),.B(B),.button(button),.RESULT(finalResult),.compA(compA),.compB(compB),.signA(signA),.signB(signB),.signRES(signRES));
				
	mux4_1 mux4_1_eachD(.GTV(GTV),.D0(finalResult[3:0]),.D1(finalResult[7:4]),.D2(compB),.D3(compA),.muxResult(muxResult));
	
	mux_dp decimalPoint(.GTV(GTV),.D0dp(signRES),.D1dp(1),.D2dp(signB),.D3dp(signA),.dpMuxResult(dpMuxResult));
				
	oneCold sweep(.GTV(GTV),.T(T));	
		
	binarioHexadecimalVGRL printDisplay(.punto(dpMuxResult),.w(muxResult[3]),.x(muxResult[2]),.y(muxResult[1]),.z(muxResult[0]),
											.a(sa),.b(sb),.c(sc),.d(sd),.e(se),.f(sf),.g(sg),.dp(dp));
    


endmodule
