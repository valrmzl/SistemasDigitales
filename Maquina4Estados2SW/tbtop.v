`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:59:54 03/16/2022
// Design Name:   top
// Module Name:   D:/Sistemas digitales/Maquina4Estados2SW/tbtop.v
// Project Name:  Maquina4Estados2SW
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tbtop;

	// Inputs
	reg [1:0] sw;
	reg clk;
	reg reset;

	// Outputs
	wire [1:0] Q;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.sw(sw), 
		.clk(clk), 
		.reset(reset), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		sw = 0;
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#10;
		#10 clk=0; reset=0;
		#10 reset=1;
		#10 reset=0;
		#10;
		#10;
		#10;
		#10;
		#10; sw=2'b11;
        
		// Add stimulus here

	end
		always
			#5 clk = !clk;
		always
			#50 sw=sw+1;
      
endmodule

