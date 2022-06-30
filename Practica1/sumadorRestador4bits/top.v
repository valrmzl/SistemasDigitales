`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:05:46 03/06/2022 
// Design Name: 
// Module Name:    top 
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
module top(
    input [3:0] A,
    input [3:0] B,
    output [3:0] S,
    output COUT,
    input button,
	 
    output carryin,
	 
    output sa,
    output sb,
    output sc,
    output sd,
    output se,
	 output sf,
    output sg,
	 
    output [3:0] T,
    input [1:0] GTV
    );
	 
	 //definir cables
	 wire w0,w1,w2;
	 wire [3:0] bXOR;
	 wire [3:0] final;
	 
	 //ver si boton esta encendido
	 
	 assign carryin = (button==1) ? 1:0;
	 //aplicar xor en caso de resta
	 moduloXOR cero(.a(button),.b(B[0]),.x(bXOR[0]));
	 moduloXOR uno(.a(button),.b(B[1]),.x(bXOR[1]));
	 moduloXOR dos(.a(button),.b(B[2]),.x(bXOR[2]));
	 moduloXOR tres(.a(button),.b(B[3]),.x(bXOR[3]));
	 //sumador 
	 sumador Full0(.a(A[0]),.b(bXOR[0]),.cin(carryin),.s(S[0]),.cout(w0));
	 sumador Full1(.a(A[1]),.b(bXOR[1]),.cin(w0),.s(S[1]),.cout(w1));
	 sumador Full2(.a(A[2]),.b(bXOR[2]),.cin(w1),.s(S[2]),.cout(w2));
	 sumador Full3(.a(A[3]),.b(bXOR[3]),.cin(w2),.s(S[3]),.cout(COUT));
	 
	 //mux 4 a 1 para cada uno de lso 4 diferentes displays
	 
	 mux4_1 mux_4_1_eachD(.GTV(GTV),.D0(S),.D1(COUT),.D2(B),.D3(A),.muxResult(final));
	 
	 //que cambie tan rapido que parece que no cambia
	 
	 oneCold sweep(.GTV(GTV),.T(T));
	 
	 //asignación de segmentos
	 segmentos resultDisplay(.w(final[3]),.x(final[2]),.y(final[1]),.z(final[0]),.a(sa),.b(sb),.c(sc),.d(sd),.e(se),.f(sf),.g(sg));
	 
	 
	 
	 


endmodule
