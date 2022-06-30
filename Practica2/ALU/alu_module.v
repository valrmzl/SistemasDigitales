`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:48:33 03/13/2022 
// Design Name: 
// Module Name:    alu_module 
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
module alu_module(
    input [2:0] button,
	 input [3:0] A,
	 input [3:0] B,
	 output reg[8:0] RESULT,
	 output reg [3:0] compA,
	 output reg [3:0] compB,
	 output reg signA,
	 output reg signB,
	 output reg signRES
	 //output reg [8:0] compRESULT
	 );


	always @(A,B,button,RESULT)
		begin
			if(button == 3'b000)
				begin
				compA = A;
				compB = B;
				signA = 1'b1; signB = 1'b1; signRES = 1'b1;
				RESULT = compA&compB;
				end
			if(button == 3'b001)
				begin
				compA = A;
				compB = B;
				signA = 1'b1; signB = 1'b1; signRES = 1'b1;
				RESULT = A|B;
				end
			if(button == 3'b010)
				begin
				compA = A;
				compB = B;
				signA = 1'b1; signB = 1'b1; signRES = 1'b1;
				RESULT = ~B;
				end
			if(button == 3'b011)
				begin
				compA = A;
				compB = B;
				signA = 1'b1; signB = 1'b1; signRES = 1'b1;
				RESULT = A^B;
				end
			
			
			if(button == 3'b100)
				begin
					RESULT = A+B;
				
					signA = (A[3] == 1'b1) ? 1'b0 : 1'b1;
					compA = (A[3] == 1'b1) ? ((~A)+1'b1) : A;
					
					signB = (B[3] == 1'b1) ? 1'b0 : 1'b1;
					compB = (B[3] == 1'b1) ? ((~B)+1'b1) : B;
	
					signRES = (RESULT[8] == 1'b1) ? 1'b0 : 1'b1;
					//RESULT = (compRESULT[8] == 1'b1) ? ((~compRESULT)+1'b1) : compRESULT;
				end
			
			if (button == 3'b101) 
				begin
					RESULT = A-B;
				
					signA = (A[3] == 1'b1) ? 1'b0 : 1'b1;
					compA = (A[3] == 1'b1) ? ((~A)+1'b1) : A;
					
					signB = (B[3] == 1'b1) ? 1'b0 : 1'b1;
					compB = (B[3] == 1'b1) ? ((~B)+1'b1) : B;
					
					
					signRES = (RESULT[8] == 1'b1) ? 1'b0 : 1'b1;
					//RESULT = (compRESULT[8] == 1'b1)? ((~compRESULT)+1'b1) : compRESULT;
				end
				
			if (button == 3'b110) 
				begin
					RESULT = (-A);
				
					signA = (A[3] == 1'b1) ? 1'b0 : 1'b1;
					compA = (A[3] == 1'b1) ? ((~A)+1'b1) : A;
					
					signB = (B[3] == 1'b1) ? 1'b0 : 1'b1;
					compB = (B[3] == 1'b1) ? ((~B)+1'b1) : B;
					
					signRES = (RESULT[8] == 1'b1) ? 1'b0 : 1'b1;
					//RESULT = (compRESULT[8] == 1'b1) ? ((~compRESULT)+1'b1) : compRESULT;
				end
				
			if (button == 3'b111) 
				begin
					RESULT = A*B;
					
					signA = (A[3] == 1'b1) ? 1'b0 : 1'b1;
					compA = (A[3] == 1'b1) ? ((~A)+1'b1) : A;
					
					signB = (B[3] == 1'b1) ? 1'b0 : 1'b1;
					compB = (B[3] == 1'b1) ? ((~B)+1'b1) : B;
					
					if (signA == signB)
						signRES = 1'b1;
					else
						signRES = 1'b0;
					//RESULT = (compRESULT[8] == 1'b1) ? ((~compRESULT)+1'b1) : compRESULT;
				end
		end

	 


endmodule
