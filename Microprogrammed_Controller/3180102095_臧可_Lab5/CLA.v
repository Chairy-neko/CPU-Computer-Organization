`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:03:08 03/16/2020 
// Design Name: 
// Module Name:    CLA 
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
module CLA(
		input [3:0] A,
		input [3:0] B,
		input c0,
		output [3:0] S,
		output cout
    );
	 wire c1,c2,c3;
	 wire [3:0]P;
	 wire [3:0]G;
		 genvar i;
		 for(i = 0; i < 4; i = i+1)
			begin
				assign P[i] = A[i]^B[i];
				assign G[i] = A[i]&B[i];
			end
	 assign S[0] = P[0]^c0;
	 assign c1 = G[0]+(P[0]&c0);
	 assign S[1] = P[1]^c1;
	 assign c2 = G[1]+(P[1]&c1);
	 assign S[2] = P[2]^c2;
	 assign c3 = G[2]+(P[2]&c2);
	 assign S[3] = P[3]^c3;
	 assign cout = G[3]+(P[3]&c3);
	 


endmodule
