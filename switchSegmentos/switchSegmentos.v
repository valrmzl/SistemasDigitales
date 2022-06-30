`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Val
// 
// Create Date:    11:19:22 02/14/2022 
// Design Name: 
// Module Name:    switchSegmentos 
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
module switchSegmentos(
    input sw0,
    input sw1,
    input sw2,
    input sw3,
    input sw4,
    input sw5,
    input sw6,
    output a,
    output b,
    output c,
    inout d,
    output e,
    output f,
    output g
    );
	 
	 assign a = sw0;
	 assign b = sw1;
	 assign c = sw2;
	 assign d = sw3;
	 assign e = sw4;
	 assign f = sw5;
	 assign g = sw6;
	 


endmodule
