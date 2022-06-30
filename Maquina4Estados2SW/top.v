`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:33:25 03/16/2022 
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
    input [1:0] sw,
    input clk,
    input reset,
    output [1:0] Q,
	 output sa,
	 output sb,
	 output sc,
	 output sd,
	 output se,
	 output sf,
	 output sg
    );
	 
	 wire [1:0] wqnext;
	 
	 FlipFlop Flip0(.D(wqnext),.Q(Q),.clk(clk), . reset(reset));
	 
	 combinacional Combi0(.sw(sw),.Q(Q),.Qnext(wqnext));
	 
	 binarioHexadecimalVGRL display(.w(0),.x(0),.y(Q[1]),.z(Q[0]),.a(sa),.b(sb),.c(sc),.d(sd),.e(se),.f(sf),.g(sg));


endmodule
