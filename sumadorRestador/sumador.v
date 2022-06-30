`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:45:51 02/02/2022 
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
    input Cin,
    output Cout,
    output S
    );
	 assign S = (~Cin)&(~b)&(a) | (~Cin)&(b)&(~a) | (Cin)&(~b)&(~a) | (Cin)&(b)&(a);
	
	 assign Cout = (~Cin)&(b)&(a) | (Cin)&(~b)&(a) | (Cin)&(b)&(~a) | (Cin)&(b)&(a);
	 


endmodule
