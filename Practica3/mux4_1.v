`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:01:09 03/13/2022 
// Design Name: 
// Module Name:    mux4_1 
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
module mux4_1(
    input [1:0] GTV,
    input [3:0] D0,
    input [3:0] D1,
    input [3:0] D2,
    input [3:0] D3,
    output [3:0] muxResult
    );
	 
	 assign muxResult = (GTV== 2'b00) ? D0:
							  (GTV== 2'b01) ? D1:
							  (GTV== 2'b10) ? D2: D3;
	 


endmodule
