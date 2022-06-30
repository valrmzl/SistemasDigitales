`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:55:10 02/23/2022 
// Design Name: 
// Module Name:    fullAdder 
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
module fullAdder(
    input a,
    input b,
    input cin,
    output cout,
    output s
    );
	 
	 
	 assign s=(~cin)&(~b)&(a)|(~cin)&(b)&(~a)|(cin)&(~b)&(~a)|(cin)&(b)&(a);
	 
	 assign cout=(~cin)&(b)&(a)|(cin)&(~b)&(a)|(cin)&(b)&(~a)|(cin)&(b)&(a);


endmodule
