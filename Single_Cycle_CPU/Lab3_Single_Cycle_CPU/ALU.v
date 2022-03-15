`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:01:46 05/10/2020 
// Design Name: 
// Module Name:    ALU 
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
module ALU(input [31:0]A, B, 
				input[2:0] ALU_operation, 
				output[31:0] res, 
				output zero, overflow
    );
	 
	 wire [31:0] res_and,res_or,res_add,res_sub,res_nor,res_slt,res_xor,res_srl,shamt;
	 reg [31:0] r;
	 parameter one = 32'h00000001, zero_0 = 32'h00000000;
	 assign res_and = A & B;
	 assign res_or = A | B;
	 assign res_add = A + B;
	 assign res_sub = A - B;
	 assign res_nor = ~(A | B);
	 assign res_xor = A ^ B;
	 assign res_srl = B >> A;
	 assign res_slt =(A < B) ? one : zero_0;
	 assign res = r;
	 
	 always @(*)
		 case (ALU_operation)
			3'b000: r = res_and;	
			3'b001: r = res_or;	
			3'b010: r = res_add;
			3'b011: r = res_xor;
			3'b100: r = res_nor;
			3'b101: r = res_srl;
			3'b110: r = res_sub;	
			3'b111: r = res_slt;
			default: r = 32'hx;
		 endcase
	 assign zero = (r == 0)? 1'b1: 1'b0;
	 
endmodule
