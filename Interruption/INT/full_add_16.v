`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:11:59 03/16/2020 
// Design Name: 
// Module Name:    full_add_16 
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
module full_add_16(
						input [15:0] A,
						input [15:0] B,
						input cin,
						output [15:0]S,
						output cout
    );
	 wire c1,c2,c3;
	 CLA cla0(.A(A[ 3: 0]), .B(B[ 3: 0]), .c0(cin), .S(S[ 3: 0]), .cout(c1));
	 CLA cla1(.A(A[ 7: 4]), .B(B[ 7: 4]), .c0(c1),  .S(S[ 7: 4]), .cout(c2));
	 CLA cla2(.A(A[11: 8]), .B(B[11: 8]), .c0(c2),  .S(S[11: 8]), .cout(c3));
	 CLA cla3(.A(A[15:12]), .B(B[15:12]), .c0(c3),  .S(S[15:12]), .cout(cout)); 

endmodule
