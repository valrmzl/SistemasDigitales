`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:19:43 01/31/2022 
// Design Name: 
// Module Name:    Compuerta5 
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
module Compuerta5(
    input a,
    input b,
    input c,
    output x
    );
	 assign x= (~c&~b&~a)|(~c&b&~a)|(c&~b&a)|(~c&~b&a);
	 
	 
	 
	 


endmodule
