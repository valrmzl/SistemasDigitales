`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ITESO
// Engineer: Val
// 
// Create Date:    12:31:22 03/23/2022 
// Design Name: 
// Module Name:    Contador0a9 
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
module Contador0a9(
    input clk,
    input reset,
	 input enable,
    output [3:0] OutCome
    );
	 
	 reg [3:0] estado; // estado de la maquina
	 reg ClkRedu; //variable para cocnectar al procesador del contador
	 
	 
	 assign OutCome = estado;
	 always @(posedge ClkRedu, posedge reset)
		 begin
			if(reset)
				estado<=0;
			else
				begin
					case(estado)
						0: estado<=1;
						1: estado<=2;
						2: estado<=3;
						3: estado<=4;
						4: estado<=5;
						5: estado<=6;
						6: estado<=7;
						7: estado<=8;
						8: estado<=9;
						default: estado<=0;
						endcase
				end
		 end

	reg [0:24]conteo;
		
		
		 always @(posedge clk, posedge reset)
			begin
				if(reset)
					conteo <=0; //reinicio
				else
					begin
						conteo <= conteo +1;
						if(conteo == 2_500_000)
							begin
								ClkRedu <= ClkRedu + 1; //toogleamos ClkRedu
								conteo <=0;
							end
					end
			end	 
			
	

endmodule
