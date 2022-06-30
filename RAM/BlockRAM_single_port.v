`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:01:24 03/30/2022 
// Design Name: 
// Module Name:    BlockRAM_single_port 
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
module BlockRAM_single_port
	 #( parameter DW  =8, m=2)

(
		// m = LOG2(DEEP)

	 input [DW-1:0]  DataIn,
    input [m-1:0] Address,
    input  we,
    input    clk,
    output [DW-1:0]  DataOut
    );
	 
	 reg [DW-1:0]Locations[2**m-1:0];  // Registers
	always @(posedge clk)
		begin
			if (we==1)  // Escribe cuando we=0
				Locations[Address]<=DataIn;
		end
		
	assign DataOut=Locations[Address];  // Lee de manera asincrona.


endmodule
