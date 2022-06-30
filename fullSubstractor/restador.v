`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:51:42 03/02/2022 
// Design Name: 
// Module Name:    restador 
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
module restador(
    input a,
    input b,
    input Cin,
    output Cout,
    output R
    );
	 assign R=(a&~b&~Cin)|(~a&~b&Cin)|(a&b&Cin)|(~a&b&~Cin);
	 assign Cout=(~a&Cin)|(~a&b)|(a&b&Cin)|(b&Cin);
	 


endmodule
