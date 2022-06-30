`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:39:50 01/31/2022 
// Design Name: 
// Module Name:    ModuloXOR 
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
module ModuloXOR(
    input a,
    input b,
    output x
    );
	assign x= (~a)&b | (a)&(~b);  //descripcion de compuerta XOR
	

endmodule
