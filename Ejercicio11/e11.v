`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:21:21 02/02/2022 
// Design Name: 
// Module Name:    e11 
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
module e11(
    input a,
    input b,
    input c,
    output x,
    output y
    );
	 assign x=(~c)&(~b)&(~a)|(~c)&(b)&(~a)|(c)&(~b)&(~a)|(c)&(~b)&(a);
	 assign y=(~c)&(~b)&(a)|(~c)&(b)&(~a)|(~c)&(b)&(a)|(c)&(~b)&(~a)|(c)&(b)&(~a);


endmodule
