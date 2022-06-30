`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:49:28 03/07/2022 
// Design Name: 
// Module Name:    FlipFlop 
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
module FlipFlop(
    input [1:0] D,
    input clk,
    input reset,
    output reg [1:0] Q    //reg para reservar un FlipFlop
    );
	 
	 always @(posedge clk, posedge reset)	 //a que voy  ser sensible
		begin //abro corchetes
			if(reset == 1)
				begin
					Q <=0;
				end 
			else
				begin
				 Q <= D;  //" tomo la foto"
				end
		end    // cerro corcheytes


endmodule
