`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ITESO
// Engineer: VALERIA RAMIREZ LOPEZ 
// 
// Create Date:    12:07:51 03/28/2022 
// Design Name: 
// Module Name:    Transmitter 
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
module Transmitter(
    input clk,
    input reset,
    input [7:0] sw,
    input IniciaTx,
    output reg Tx
    );
	 
	 
	 
	 reg [4:0] estado;
	 
	 
	 always @(posedge clk, posedge reset)
	 begin
		if(reset)
				begin
					estado<=0; //iniciamos la maquina
					Tx<=1;  //manguera
				end
		else
			begin
				case (estado)
						0:begin
							Tx<=1; //antes de transmitir
							if(IniciaTx)
								estado <=1;
							end
						1: begin
							Tx<=0; // starbit 
							estado <=2;
							end
						2: begin
							Tx<= sw[0];
							estado <=3;
							end
						3: begin
							Tx<= sw[1];
							estado <=4;
							end
						4: begin
							Tx<= sw[2];
							estado <=5;
							end
						5: begin
							Tx<= sw[3];
							estado <=6;
							end
						6: begin
							Tx<= sw[4];
							estado <=7;
							end
						7: begin
							Tx<= sw[5];
							estado <=8;
							end
						8: begin
							Tx<= sw[6];
							estado <=9;
							end
						9: begin
							Tx<= sw[7];
							estado <=3;
							end
						10: begin
							Tx<=0;
							estado <=11;
							end
						11: begin
							Tx<=1;
							estado <=0;
							end
					default: estado <=0;
					endcase
				
			end
	 end
	 
endmodule
