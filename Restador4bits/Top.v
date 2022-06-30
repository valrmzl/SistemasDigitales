`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:05:25 03/02/2022 
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
    output [3:0] R,
    output Cout
    );
	 wire w0,w1,w2;
	 
	 restador  Full0(.a(A[0]),.b(B[0]),.cin(0),.r(R[0]),.cout(w0));
	 
	 restador Full1(.a(A[1]),.b(B[1]),.cin(w0),.r(R[1]),.cout(w1));
	 
	 restador Full2(.a(A[2]),.b(B[2]),.cin(w1),.r(R[2]),.cout(w2));
	 
	 restador Full3(.a(A[3]),.b(B[3]),.cin(w2),.r(R[3]),.cout(Cout));

endmodule
