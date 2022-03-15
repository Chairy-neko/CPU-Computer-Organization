`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:24:15 05/09/2020 
// Design Name: 
// Module Name:    SCPU_ctrl_more 
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
module SCPU_ctrl_more(input [5:0]OPcode,
					  input [5:0]Fun,
					  input MIO_ready,
					  input zero,
					  output reg RegDst,
					  output reg ALUSrc_A,
					  output reg ALUSrc_B,
					  output reg [1:0] DatatoReg,
					  output reg Jal,
					  output reg [1:0]Branch,
					  output reg RegWrite,
					  output reg mem_w,
					  output reg [2:0]ALU_Control,
					  output reg CPU_MIO
    );
	`define CPU_ctrl_signals{RegDst,ALUSrc_A,ALUSrc_B,DatatoReg,Jal,Branch,RegWrite,mem_w,CPU_MIO,ALU_Control}
		always@*begin
			case(OPcode)
				6'b000000:begin 
					case(Fun)
						6'b100000:begin `CPU_ctrl_signals = 14'b100000_00100_010;end //add
						6'b100010:begin `CPU_ctrl_signals = 14'b100000_00100_110;end //sub
						6'b100100:begin `CPU_ctrl_signals = 14'b100000_00100_000;end //and
						6'b100101:begin `CPU_ctrl_signals = 14'b100000_00100_001;end //or
						6'b000010:begin `CPU_ctrl_signals = 14'b110000_00100_101;end //srl
						6'b101010:begin `CPU_ctrl_signals = 14'b100000_00100_111;end //slt
						6'b100111:begin `CPU_ctrl_signals = 14'b100000_00100_100;end //nor
						6'b100110:begin `CPU_ctrl_signals = 14'b100000_00100_011;end //xor
						6'b001000:begin `CPU_ctrl_signals = 14'b100001_11000_000;end //jr
						default:  begin `CPU_ctrl_signals = 14'b000000_00000_000;end
					endcase
				end
				6'b100011:begin `CPU_ctrl_signals = 14'b001010_00100_010;end //load
				6'b101011:begin `CPU_ctrl_signals = 14'b001000_00010_010;end //store
				6'b000100:begin
					if(zero==1'b1) `CPU_ctrl_signals = 14'b000000_01000_110;
					else           `CPU_ctrl_signals = 14'b000000_00000_110;
				end //beq
				6'b000101:begin
					if(zero==1'b0) `CPU_ctrl_signals = 14'b000000_00000_110;
					else           `CPU_ctrl_signals = 14'b000000_01000_110;
				end //bne
				6'b000010:begin `CPU_ctrl_signals = 14'b000000_10000_000;end //j
				6'b000011:begin `CPU_ctrl_signals = 14'b000111_10100_010;end //jal
				6'b001111:begin `CPU_ctrl_signals = 14'b000100_00100_010;end //lui
				6'b001010:begin `CPU_ctrl_signals = 14'b001000_00100_111;end //slti	
				6'b001110:begin `CPU_ctrl_signals = 14'b001000_00100_011;end //xori
				6'b001111:begin `CPU_ctrl_signals = 14'b001000_00100_001;end //ori				
				6'b001100:begin `CPU_ctrl_signals = 14'b001000_00100_000;end //andi			
				6'b001000:begin `CPU_ctrl_signals = 14'b001000_00100_010;end //addi				
				//6'b010000:begin `CPU_ctrl_signals = 14'b100000_11100_010;end //eret
				default:  begin `CPU_ctrl_signals = 14'b000000_00000_000;end 				
			endcase
		end

endmodule