`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:20:53 03/16/2020 
// Design Name: 
// Module Name:    adder_32 
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
module adder_32(
					input [31:0] A,
					input [31:0] B,
					output [32:0] S
    );
	 wire c1,c2;
	 full_add_16 f1(.A(A[15: 0]), .B(B[15: 0]), .cin(0),  .S(S[15: 0]), .cout(c1));
	 full_add_16 f2(.A(A[31:16]), .B(B[31:16]), .cin(c1), .S(S[31:16]), .cout(c2));
	 assign S[32] = c2;

endmodule
