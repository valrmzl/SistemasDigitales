`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:07:35 02/21/2022 
// Design Name: 
// Module Name:    ejercicioKarnaugh 
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
module ejercicioKarnaugh(
    input d,
    input c,
    input b,
    input a,
    output x,
	 output y,
	 output z
    );
	 
	 assign x=(~d)&(b)&(~a) | (~c)&(~a) | (d)&(~b) | (c)&(b)&(a);
	 assign y=(a)&(~b)&(~d) | (~a)&(~b)&(d) | (a)&(b)&(d) | (~a)&(b);
	 assign z= (b)&(~c)&(~d) | (~b)&(c)&(~d) | (b)&(c)&(d) | (~b)&(~c)&(d);
	 


endmodule
