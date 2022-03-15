`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:41:57 03/16/2020 
// Design Name: 
// Module Name:    ADC32 
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
module ADC32(
				input [31:0] A,
				input [31:0] B,
				input c0,
				output [32:0] S
    );
	wire [31:0] nB;
	assign nB = B+c0;
	
	adder_32 add0(.A(A[31:0]), .B(nB[31:0]), .S(S[32:0]));
	//MUX2T1_32 m0(.I0(add[31:0]), .I1(sub[31:0]), .s(c0), .o(S[31:0]));


endmodule
