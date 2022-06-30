`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:13:49 03/14/2022 
// Design Name: 
// Module Name:    mux_dp 
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
module mux_dp(
    input [1:0] GTV,
    input [3:0] D0dp,
    input [3:0] D1dp,
    input [3:0] D2dp,
    input [3:0] D3dp,
    output [3:0] dpMuxResult
    );

	assign dpMuxResult = (GTV == 2'b00) ? D0dp:
			(GTV == 2'b10) ? D2dp : 
			(GTV == 2'b11) ? D3dp : D1dp; 


endmodule
