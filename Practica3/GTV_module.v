`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:19:03 03/27/2022 
// Design Name: 
// Module Name:    GTV_module 
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
module GTV_module(

	input clk,
	output reg[1:0] contadorGTV
    );
	 
	 reg[24:0]conteo;
	 always @(posedge clk)
		begin
			conteo <= conteo +1;
			
			if (conteo == 50_000)
				begin
					contadorGTV <= contadorGTV +1;
					conteo <= 0;
				end
		end
			
endmodule
