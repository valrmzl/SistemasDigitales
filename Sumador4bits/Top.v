`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:02:10 02/23/2022 
// Design Name: 
// Module Name:    Top 
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
module Top(
    input [3:0] A,
    input [3:0] B,
	 input operacion,
    output [3:0] S,
    output Cout
    );
	 
	 wire w0,w1,w2;
	 
	
	 	restador Res0(.a(A[0]),.b(B[0]),.cin(0),.r(S[0]),.cout(w0));
		restador Res1(.a(A[1]),.b(B[1]),.cin(w0),.r(S[1]),.cout(w1));
		restador Res2(.a(A[2]),.b(B[2]),.cin(w1),.r(S[2]),.cout(w2));
		restador Res3(.a(A[3]),.b(B[3]),.cin(w2),.r(S[3]),.cout(Cout));
	 
	 
	 //fullAdder Full0(.a(A[0]),.b(B[0]),.cin(0),.s(S[0]),.cout(w0));
	 //fullAdder Full1(.a(A[1]),.b(B[1]),.cin(w0),.s(S[1]),.cout(w1));
	//fullAdder Full2(.a(A[2]),.b(B[2]),.cin(w1),.s(S[2]),.cout(w2));
	//fullAdder Full3(.a(A[3]),.b(B[3]),.cin(w2),.s(S[3]),.cout(Cout));
			
	 

endmodule
