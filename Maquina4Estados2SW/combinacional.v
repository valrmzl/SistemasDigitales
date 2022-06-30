`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ITESO
// Engineer: Valrmzl
// 
// Create Date:    11:34:01 03/09/2022 
// Design Name: 
// Module Name:    combinacional 
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
module combinacional(
    input [1:0]sw,
    input [1:0] Q,
    output [1:0] Qnext
    );
	 
	 assign Qnext= (sw== 2'b00) ? Q+1: 
	               (sw== 2'b01) ? Q-1:
						(sw== 2'b10) ? Q:
						 Q+2; 
	 
	 




endmodule
