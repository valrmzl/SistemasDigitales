`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:46:33 02/14/2022 
// Design Name: 
// Module Name:    displayVal 
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
module displayVal(
    input w,
    input x,
    input y,
    input z,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g
    );
	 
	 assign g=(~w)&(~x)&(~y)&(~z) | (~w)&(~x)&(~y)&(z) | (~w)&(x)&(y)&(z) | (w)&(x)&(~y)&(~z);
	 assign f=(~w)&(~x)&(~y)&(z) | (~w)&(~x)&(y)&(~z) | (~w)&(~x)&(y)&(z) | (~w)&(x)&(y)&(z) | (w)&(x)&(~y)&(z);
	 assign e=(~w)&(~x)&(~y)&(z) | (~w)&(~x)&(y)&(z) | (~w)&(x)&(~y)&(~z) | (~w)&(x)&(~y)&(z) | (~w)&(x)&(y)&(z) | (w)&(~x)&(~y)&(z);
	 assign d= (~w)&(~x)&(~y)&(z) | (~w)&(x)&(~y)&(~z) | (~w)&(x)&(y)&(z) | (w)&(~x)&(~y)&(z) | (w)&(~x)&(y)&(~z) | (w)&(x)&(y)&(z);
	 assign c=(~w)&(~x)&(y)&(~z) | (w)&(x)&(~y)&(~z) | (w)&(x)&(y)&(~z) | (w)&(x)&(y)&(z);
	 assign b=(~w)&(x)&(~y)&(z) | (~w)&(x)&(y)&(~z) | (w)&(~x)&(y)&(z) | (w)&(x)&(~y)&(~z) | (w)&(x)&(y)&(~z) | (w)&(x)&(y)&(z);
	 assign a =(~w)&(~x)&(~y)&(z) | (~w)&(x)&(~y)&(~z) | (w)&(~x)&(y)&(z) | (w)&(x)&(~y)&(z);

endmodule
