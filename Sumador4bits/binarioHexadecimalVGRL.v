`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:10:12 02/21/2022 
// Design Name: 
// Module Name:    binarioHexadecimalVGRL 
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
module binarioHexadecimalVGRL(
    input w,
    input x,
    input y,
    input z,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g,
	 input [1:0] GTV, // MODIFICACION
	 output [0:3]transistor 
    //output [3:0] T
    );
	 
	 // C A N O N I C A S 
	 
	 //assign g=(~w)&(~x)&(~y)&(~z) | (~w)&(~x)&(~y)&(z) | (~w)&(x)&(y)&(z) | (w)&(x)&(~y)&(~z);
	 //assign f=(~w)&(~x)&(~y)&(z) | (~w)&(~x)&(y)&(~z) | (~w)&(~x)&(y)&(z) | (~w)&(x)&(y)&(z) | (w)&(x)&(~y)&(z);
	 //assign e=(~w)&(~x)&(~y)&(z) | (~w)&(~x)&(y)&(z) | (~w)&(x)&(~y)&(~z) | (~w)&(x)&(~y)&(z) | (~w)&(x)&(y)&(z) | (w)&(~x)&(~y)&(z);
	 //assign d= (~w)&(~x)&(~y)&(z) | (~w)&(x)&(~y)&(~z) | (~w)&(x)&(y)&(z) | (w)&(~x)&(~y)&(z) | (w)&(~x)&(y)&(~z) | (w)&(x)&(y)&(z);
	 //assign c=(~w)&(~x)&(y)&(~z) | (w)&(x)&(~y)&(~z) | (w)&(x)&(y)&(~z) | (w)&(x)&(y)&(z);
	 //assign b=(~w)&(x)&(~y)&(z) | (~w)&(x)&(y)&(~z) | (w)&(~x)&(y)&(z) | (w)&(x)&(~y)&(~z) | (w)&(x)&(y)&(~z) | (w)&(x)&(y)&(z);
	 //assign a =(~w)&(~x)&(~y)&(z) | (~w)&(x)&(~y)&(~z) | (w)&(~x)&(y)&(z) | (w)&(x)&(~y)&(z);
	 
	 // S I M P L I F I C A D A S
	 
	 assign g=(~w)&(x)&(y)&(z) | (w)&(x)&(~y)&(~z) | (~w)&(~x)&(~y);
	 assign f= (~w)&(~x)&(~y)&(z) | (w)&(x)&(~y)&(z) | (~w)&(x)&(y)&(z) | (~w)&(~x)&(y);
	 assign e= (~w)&(x)&(~y)&(~z) | (w)&(~x)&(~y)&(z) | (~w)&(z); 
	 assign d= (~w)&(x)&(~y)&(~z) | (~w)&(~x)&(~y)&(z) | (w)&(~x)&(~y)&(z) | (x)&(y)&(z) | (w)&(~x)&(y)&(~z);
	 assign c= (w)&(x)&(~y)&(~z) | (~w)&(~x)&(y)&(~z) | (w)&(x)&(y);	 
	 assign b=(w)&(x)&(~y)&(~z) | (~w)&(x)&(~y)&(z) | (w)&(y)&(z) | (x)&(y)&(~z);
	 assign a =(~w)&(x)&(~y)&(~z) | (~w)&(~x)&(~y)&(z) | (w)&(x)&(~y)&(z) | (w)&(~x)&(y)&(z);
	 assign T=4'b1110;
	 
	 //assign T=4'b0000; //indica que se vean los 4 displays
	 
	 
	 //assig condicional
	 
	 assign transistor= (GTV ==2'b00) ? 4'b1110:  //si la entrada es 00 se enciende el transitor 0
							(GTV ==2'b01) ? 4'b1101:
							(GTV ==2'b10) ? 4'b1011:
												 4'b0111;

endmodule
