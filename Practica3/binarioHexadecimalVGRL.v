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
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g,
	 output dp,
    input w,
    input x,
    input y,
    input z,
	 input punto
    );

// Ecuaciones simplificadas con mapas de Karnaugh
	assign a = (~w&~x&~y&z) | (~w&x&~y&~z) | (w&~x&y&z) | (w&x&~y&z);
	assign b = (~w&x&~y&z) | (w&x&~z) | (w&y&z) | (x&y&~z);
	assign c = (~w&~x&y&~z) | (w&x&~z) | (w&x&y);
	assign d = (~w&~x&~y&z) | (~w&x&~y&~z) | (x&y&z) | (w&~x&y&~z);
	assign e = (~x&~y&z) | (~w&z) | (~w&x&~y);
	assign f = (~w&~x&z) | (~w&~x&y) | (w&x&~y&z);
	assign g = (~w&~x&~y) | (~w&x&y&z) | (w&x&~y&~z);
	assign dp = punto;	

endmodule
