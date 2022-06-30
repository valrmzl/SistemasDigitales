`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:10:12 02/21/2022 
// Design Name: 
// Module Name:    binarioHexadecimalVGRL 
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
module binarioHexadecimalVGRL(
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
	 

	 
	 // S I M P L I F I C A D A S
	 
	 assign g=(~w)&(x)&(y)&(z) | (w)&(x)&(~y)&(~z) | (~w)&(~x)&(~y);
	 assign f= (~w)&(~x)&(~y)&(z) | (w)&(x)&(~y)&(z) | (~w)&(x)&(y)&(z) | (~w)&(~x)&(y);
	 assign e= (~w)&(x)&(~y)&(~z) | (w)&(~x)&(~y)&(z) | (~w)&(z); 
	 assign d= (~w)&(x)&(~y)&(~z) | (~w)&(~x)&(~y)&(z) | (w)&(~x)&(~y)&(z) | (x)&(y)&(z) | (w)&(~x)&(y)&(~z);
	 assign c= (w)&(x)&(~y)&(~z) | (~w)&(~x)&(y)&(~z) | (w)&(x)&(y);	 
	 assign b=(w)&(x)&(~y)&(~z) | (~w)&(x)&(~y)&(z) | (w)&(y)&(z) | (x)&(y)&(~z);
	 assign a =(~w)&(x)&(~y)&(~z) | (~w)&(~x)&(~y)&(z) | (w)&(x)&(~y)&(z) | (w)&(~x)&(y)&(z);
	 
	

endmodule
