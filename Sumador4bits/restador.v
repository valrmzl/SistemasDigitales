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
    input cin,
    output cout,
    output r
    );
	 assign r=(a&~b&~cin)|(~a&~b&cin)|(a&b&cin)|(~a&b&~cin);
	 assign cout=(~a&cin)|(~a&b)|(a&b&cin)|(b&cin);
	 


endmodule
