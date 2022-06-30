`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:44:15 04/04/2022 
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

	input clk,
	input reset,
	input [7:0] sw,
	input startBit,
	input Rx,  //lo que se recibe
	output Tx,  //dato a transmitir
	output [6:0] Display,
	output [3:0] transistores,
	output [7:0] MessageReceived	 
    );
	 
	 wire [7:0] message;
  	 wire Tx1,Tx2;
 	 wire [1:0] ID; //Necesario para saber si el mensaje es para mi		assign ID = sw [7:6]; //Asignamos lo que tengas como identificador
	 wire [1:0] in; //Sirve para la GTV
	 wire [6:0] d;



endmodule
