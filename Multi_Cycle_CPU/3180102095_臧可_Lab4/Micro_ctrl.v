`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:58:31 07/02/2020 
// Design Name: 
// Module Name:    Micro_ctrl 
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
module Micro_ctrl(input clk,
			input reset,
			input [31:0]Inst_in,
			input zero,
			input overflow,
			input MIO_ready,              //外部输入=1
			output reg MemRead,
			output reg MemWrite,
			output reg[2:0]ALU_operation, //ALU_Control
			output [4:0] state_out,
			
			output reg CPU_MIO,
			output reg IorD,
			output reg IRWrite,
			output reg [1:0]RegDst,       //预留2位
			output reg RegWrite,
			output reg [1:0]MemtoReg,     //预留2位
			output reg ALUSrcA,
			output reg [1:0]ALUSrcB,
			output reg [1:0]PCSource,
			output reg PCWrite,
			output reg PCWriteCond,
			output reg Branch
    );
	reg [1:0]AddrCtrl;//00-Fetch, 01-Dispatch1, 10-Dispatch2, 11-Seq
	/*20位微指令*/
	`define CPU_ctrl_signals {PCWrite, PCWriteCond, IorD, MemRead, MemWrite, IRWrite, MemtoReg[1:0], PCSource[1:0], ALUSrcB[1:0], ALUSrcA, RegWrite, RegDst[1:0], CPU_MIO, Branch, AddrCtrl[1:0]}
	parameter AND = 3'b000, OR = 3'b001, ADD = 3'b010, SUB = 3'b110, NOR = 3'b100, SLT = 3'b111, XOR = 3'b011, SRL = 3'b101;
	parameter IF   = 5'b00000, ID     = 5'b00001, EX_Mem = 5'b00010, EX_R   = 5'b00011, R_WB  = 5'b00100, EX_I   = 5'b00101;
	parameter I_WB = 5'b00110, EX_Lui = 5'b00111, EX_Beq = 5'b01000, EX_Bne = 5'b01001, EX_Jr = 5'b01010, EX_Jal = 5'b01011;
	parameter EX_J = 5'b01100, Mem_RD = 5'b01101, LW_WB  = 5'b01110, Mem_WD = 5'b01111, Error = 5'b10000;
	parameter value0  = 20'b1001_0100_0001_0000_1011, value1  = 20'b0000_0000_0011_0000_0001;//IF,ID
	parameter value2  = 20'b0000_0000_0010_1000_0010, value3  = 20'b0000_0000_0000_1000_0011;//EX_Mem, EX_R
	parameter value4  = 20'b0000_0000_0000_1101_0000, value5  = 20'b0000_0000_0010_1000_0011;//R_WB, EX_I
	parameter value6  = 20'b0000_0000_0010_1100_0000, value7  = 20'b0000_0010_0011_0100_0000;//I_WB, EX_Lui
	parameter value8  = 20'b0100_0000_0100_1000_0100, value9  = 20'b0100_0000_0100_1000_0000;//EX_Beq, EX_Bne
	parameter value10 = 20'b1000_0000_0000_1000_0000, value11 = 20'b1000_0011_1011_0110_0000;//EX_Jr, EX_Jal
	parameter value12 = 20'b1000_0000_1011_0000_0000, value13 = 20'b0011_0000_0010_1000_1011;//EX_J, Mem_RD
	parameter value14 = 20'b0000_0001_0000_0100_0000, value15 = 20'b0010_1000_0010_1000_1000;//LW_WB, Mem_WD
	reg [4:0] state, Dispatch1, Dispatch2;
	reg [19:0] MicroMem [16:0];
	wire [4:0] next_state;
	wire [19:0]MicroInst;
	assign state_out = state;
	
	always@(posedge clk or posedge reset)begin
		if(reset == 1) begin//微指令初始化存入MicroMem
			state = 5'b00000;
			MicroMem[0]  = value0;
			MicroMem[1]  = value1;
			MicroMem[2]  = value2;
			MicroMem[3]  = value3;
			MicroMem[4]  = value4;
			MicroMem[5]  = value5;
			MicroMem[6]  = value6;
			MicroMem[7]  = value7;
			MicroMem[8]  = value8;
			MicroMem[9]  = value9;
			MicroMem[10] = value10;
			MicroMem[11] = value11;
			MicroMem[12] = value12;
			MicroMem[13] = value13;
			MicroMem[14] = value14;
			MicroMem[15] = value15;
			MicroMem[16] = 20'b00000_0000_0000_0000_0000;
		end
		else 
			state = next_state;
	end
	assign MicroInst = MicroMem[state];//取指
	//Dispatch
	always@(Inst_in[31:26] or Inst_in[5:0]) begin
		case(Inst_in[31:26])
			6'b000000:  begin 
						    case (Inst_in[5:0])
								6'b001000: Dispatch1 <= EX_Jr;
								default:   Dispatch1 <= EX_R;
							endcase
						end
			6'b100011: begin
								Dispatch1 <= EX_Mem;  //LW
								Dispatch2 <= Mem_RD;
							end
			6'b101011: begin
								Dispatch1 <= EX_Mem;  //SW
								Dispatch2 <= Mem_WD;
						  end
			6'b001000: Dispatch1 <= EX_I;    //addi
			6'b001100: Dispatch1 <= EX_I;    //andi
			6'b001101: Dispatch1 <= EX_I;    //ori
			6'b001110: Dispatch1 <= EX_I;    //xori
			6'b001010: Dispatch1 <= EX_I;    //slti
			6'b001111: Dispatch1 <= EX_Lui;  //Lui
			6'b000100: Dispatch1 <= EX_Beq;  //Beq
			6'b000101: Dispatch1 <= EX_Bne;  //Bne
			6'b000011: Dispatch1 <= EX_Jal;  //Jal
			6'b000010: Dispatch1 <= EX_J;    //J
			default:   Dispatch1 <= Error;
		endcase
	end
	//Dispatch2:EX_Mem分支
/*	always@(Inst_in[31:26]) begin
		case(Inst_in[31:26])
			6'b100011: Dispatch2 <= Mem_RD; //LW
			6'b101011: Dispatch2 <= Mem_WD; //SW
			default:   Dispatch2 <= Error;
		endcase
	end
*/	
	MUX4T1_5 Sequencing(
		.I0(5'b0000),
		.I1(Dispatch1),
		.I2(Dispatch2),
		.I3(state+1'b1),//Seq
		.s(AddrCtrl),
		.o(next_state)
	);
	
	always@*begin
		`CPU_ctrl_signals = MicroInst;
	end
	
	always@*begin
		case(state)
			EX_R:
				case(Inst_in[5:0])
					6'b100000: ALU_operation = ADD;
					6'b100010: ALU_operation = SUB;
					6'b100100: ALU_operation = AND;
					6'b100101: ALU_operation = OR;
					6'b100111: ALU_operation = NOR;
					6'b101010: ALU_operation = SLT;
					6'b000010: ALU_operation = SRL;
					6'b000000: ALU_operation = XOR;
					6'b001000: ALU_operation = ADD; //jr 
					default:   ALU_operation = ADD;
				endcase
			EX_I:
				case(Inst_in[31:26])
					6'b001000: ALU_operation = ADD; //addi
					6'b001100: ALU_operation = AND; //andi
					6'b001101: ALU_operation = OR;  //ori
					6'b001110: ALU_operation = XOR; //xori
					6'b001010: ALU_operation = SLT; //slti
					default:   ALU_operation = ADD;
				endcase
			EX_Beq:  ALU_operation = SUB;
			EX_Bne:  ALU_operation = SUB;
			default: ALU_operation = ADD;
		endcase
	end
	
endmodule
