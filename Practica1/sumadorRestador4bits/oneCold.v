`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:26:12 03/06/2022 
// Design Name: 
// Module Name:    oneCold 
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
module oneCold(
    input [1:0] GTV,
    output [3:0] T
    );
	 
	 assign T = (GTV== 2'b00) ? 4'b1110 :
				(GTV==2'b01) ? 4'b1101 :
				(GTV==2'b10) ? 4'b1011: 4'b0111;
				
				
				


endmodule
