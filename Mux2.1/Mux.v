`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:37:14 02/28/2022 
// Design Name: 
// Module Name:    Mux 
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
module Mux(
    input a,
    input b,
    input s,
    output x
    );
	 
	 assign x =(~s)&(a) | (s)&(b);


endmodule
