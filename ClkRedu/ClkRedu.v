`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ITESO
// Engineer:  VALERIA GUADALUPE RAMIREZ LOPEZ
// 
// Create Date:    11:44:37 03/23/2022 
// Design Name: 
// Module Name:    ClkRedu 
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
module ClkRedu(
    input clk,
    input reset,
    output reg ClkRedu
    );
	 
//variable para el conteo
	reg [0:24]conteo;
	
	
	 always @(posedge clk, posedge reset)
		begin
			if(reset)
				conteo <=0; //reinicio
			else
				begin
					conteo <= conteo +1;
					if(conteo == 50_000)
						begin
							ClkRedu <= ClkRedu + 1; //toogleamos ClkRedu
							conteo <=0;
						end
				end
		end	


endmodule
