`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:55:15 08/12/2020 
// Design Name: 
// Module Name:    SCPU_ctrl_INT 
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
module SCPU_ctrl_INT( input [5:0]OPcode,
					  input [5:0]Fun,
					  input int_code,
					  input MIO_ready,
					  input zero,
					  output reg RegDst,
					  output reg ALUSrc_B,
					  output reg [1:0] DatatoReg,
					  output reg Jal,
					  output reg [1:0]Branch,
					  output reg RegWrite,
					  output reg mem_w,
					  output reg [2:0]ALU_Control,
					  output reg CPU_MIO,
                 output reg eret
    );
	 
	`define CPU_ctrl_signals{RegDst,ALUSrc_B,DatatoReg,Jal,Branch,RegWrite,mem_w,CPU_MIO,ALU_Control}
		always@*begin
			eret = 0;
			case(OPcode)
				6'b000000:begin
					case(Fun)
						6'b100000:begin `CPU_ctrl_signals = 13'b10000_00100_010;end //add
						6'b100010:begin `CPU_ctrl_signals = 13'b10000_00100_110;end //sub
						6'b100100:begin `CPU_ctrl_signals = 13'b10000_00100_000;end //and
						6'b100101:begin `CPU_ctrl_signals = 13'b10000_00100_001;end //or
						6'b000010:begin `CPU_ctrl_signals = 13'b10000_00100_101;end //srl
						6'b101010:begin `CPU_ctrl_signals = 13'b10000_00100_111;end //slt
						6'b100111:begin `CPU_ctrl_signals = 13'b10000_00100_100;end //nor
						6'b100110:begin `CPU_ctrl_signals = 13'b10000_00100_011;end //xor
						6'b001000:begin `CPU_ctrl_signals = 13'b10001_11000_000;end //jr
						6'b001001:begin `CPU_ctrl_signals = 13'b10111_11100_010;end //jalr
						default:  begin `CPU_ctrl_signals = 13'b00000_00000_000;end
					endcase
				end
				6'b100011:begin `CPU_ctrl_signals = 13'b01010_00100_010;end //load
				6'b101011:begin `CPU_ctrl_signals = 13'b01000_00010_010;end //store
				6'b000100:begin
					if(zero==1'b1) `CPU_ctrl_signals = 13'b00000_01000_110;
					else           `CPU_ctrl_signals = 13'b00000_00000_110;
				end //beq
				6'b000101:begin
					if(zero==1'b0) `CPU_ctrl_signals = 13'b00000_01000_110;
					else           `CPU_ctrl_signals = 13'b00000_00000_110;
				end //bne
				6'b000010:begin `CPU_ctrl_signals = 13'b00000_10000_000;end //j
				6'b000011:begin `CPU_ctrl_signals = 13'b00111_10100_010;end //jal
				6'b001111:begin `CPU_ctrl_signals = 13'b00100_00100_010;end //lui
				6'b001010:begin `CPU_ctrl_signals = 13'b01000_00100_111;end //slti	
				6'b001110:begin `CPU_ctrl_signals = 13'b01000_00100_011;end //xori
				6'b001101:begin `CPU_ctrl_signals = 13'b01000_00100_001;end //ori				
				6'b001100:begin `CPU_ctrl_signals = 13'b01000_00100_000;end //andi			
				6'b001000:begin `CPU_ctrl_signals = 13'b01000_00100_010;end //addi				
				6'b010000:begin 
                            `CPU_ctrl_signals = 13'b10000_11100_010;
                            eret = 1;
						    end //eret
				default:  begin `CPU_ctrl_signals = 10'b00000_00000_000;end 				
			endcase
		end

endmodule
