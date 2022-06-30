`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ITESO
// Engineer: Valrmzl
// 
// Create Date:    11:34:01 03/09/2022 
// Design Name: 
// Module Name:    combinacional 
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
module combinacional(
    input sw,
    input Q,
    output Qnext
    );
	 
	 assign Qnext= sw ^ Q;
	 
	 




endmodule
