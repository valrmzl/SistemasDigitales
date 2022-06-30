`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:37:16 03/09/2022 
// Design Name: 
// Module Name:    Combinacional 
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
module Combinacional(
    input sw,
    input [1:0] Q,
    output [1:0] Qnext
    );
	 
	 assign Qnext= (sw==0) ? Q: //nos quedamos en el mismo estado
									Q+1;  //incrementamos 


endmodule
