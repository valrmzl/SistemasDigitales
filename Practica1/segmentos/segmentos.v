`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:44:47 03/06/2022 
// Design Name: 
// Module Name:    segmentos 
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
module segmentos(
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g,
    input w,
    input x,
    input y,
    input z
    );
	 
	 assign g=(~w)&(x)&(y)&(z) | (w)&(x)&(~y)&(~z) | (~w)&(~x)&(~y);
	 assign f= (~w)&(~x)&(~y)&(z) | (w)&(x)&(~y)&(z) | (~w)&(x)&(y)&(z) | (~w)&(~x)&(y);
	 assign e= (~w)&(x)&(~y)&(~z) | (w)&(~x)&(~y)&(z) | (~w)&(z); 
	 assign d= (~w)&(x)&(~y)&(~z) | (~w)&(~x)&(~y)&(z) | (w)&(~x)&(~y)&(z) | (x)&(y)&(z) | (w)&(~x)&(y)&(~z);
	 assign c= (w)&(x)&(~y)&(~z) | (~w)&(~x)&(y)&(~z) | (w)&(x)&(y);	 
	 assign b=(w)&(x)&(~y)&(~z) | (~w)&(x)&(~y)&(z) | (w)&(y)&(z) | (x)&(y)&(~z);
	 assign a =(~w)&(x)&(~y)&(~z) | (~w)&(~x)&(~y)&(z) | (w)&(x)&(~y)&(z) | (w)&(~x)&(y)&(z);



endmodule
