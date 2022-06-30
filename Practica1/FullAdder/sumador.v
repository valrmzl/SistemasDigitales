`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:19:26 03/06/2022 
// Design Name: 
// Module Name:    sumador 
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
module sumador(
    input a,
    input b,
    input cin,
    output s,
    output cout
    );
	 assign s = (~cin)&(~b)&(a) | (~cin)&(b)&(~a) | (cin)&(~b)&(~a) | (cin)&(b)&(a);
	
	 assign cout = (~cin)&(b)&(a) | (cin)&(~b)&(a) | (cin)&(b)&(~a) | (cin)&(b)&(a);
	 


endmodule
