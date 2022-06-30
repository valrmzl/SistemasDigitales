`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:11:44 03/27/2022 
// Design Name: 
// Module Name:    contador05 
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
module contador05(
    input clk,
    input reset,
	 input enable,
    
	 output [3:0] outcome
    );
	
	reg [3:0] estado; // estado de la máquina
	reg ClkRedu; // variable para conectar al proceso del contador
	assign outcome = estado; //conectando el estado a la salida 
	
	always @(posedge ClkRedu, posedge reset) // ya no es posedge clk, sino ClkRedu para que se conecte con el proceso paralelo
		begin
			if(reset)
				estado <= 0;
			else 
				begin
					case(estado)
						0: estado <= 1;
						1: estado <= 2;
						2: estado <= 3;
						3: estado <= 4;
						4: estado <= 5;
						default: estado <= 0;
						endcase
				end
		end
	
	reg [0:27] conteo;

	 always @(posedge clk, posedge reset, posedge enable)
		begin
			if(enable)
			conteo<=conteo;
			else if(reset)
			conteo <= 0; //reinicio
			else
				begin
					conteo <= conteo+1; //incrementamos contador
					if(conteo == 250_000_000)
						begin
							ClkRedu =! ClkRedu; //Toggleamos ClkRedu
							conteo <=0;
						end
				end
		end

endmodule
