`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:59:53 03/06/2022 
// Design Name: 
// Module Name:    moduloXOR 
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
module moduloXOR(
    input a,
    input b,
    output x
    );
	 
	 assign x=(~a)&b | a&(~b); //descripcion de xor


endmodule
