`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:  ITESO
// Engineer:  Valrmzl
// 
// Create Date:    11:37:56 03/09/2022 
// Design Name: 
// Module Name:    Top 
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
module Top(
    input sw,
    input clk,
    input reset,
    output [1:0] Q //MODIFICACION
    );
	 
	 wire [1:0] wqnext; //MODIFICACION
	 
	 FlipFlop Flip0 (.D(wqnext), .Q(Q), .clk(clk), . reset(reset));
	 
	 Combinacional Combi0(.sw(sw),.Q(Q),.Qnext(wqnext));


endmodule
