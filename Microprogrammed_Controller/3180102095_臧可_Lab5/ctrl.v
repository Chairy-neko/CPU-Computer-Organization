`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:28:34 06/19/2020 
// Design Name: 
// Module Name:    ctrl 
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
module ctrl(input clk,
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
	/*状态变量*/
	parameter IF      = 5'b0000, ID     = 5'b00001, EX_R  = 5'b00010, EX_Mem = 5'b00011, EX_I  = 5'b00100, Lui_WB = 5'b00101;
	parameter EX_Beq = 5'b00110, EX_Bne = 5'b00111, EX_Jr = 5'b01000, EX_Jal = 5'b01001, EX_J  = 5'b01010, Mem_RD = 5'b01011;
	parameter Mem_WD = 5'b01100, R_WB   = 5'b01101, I_WB  = 5'b01110, LW_WB  = 5'b01111, Error = 5'b11111; 
	parameter AND = 3'b000, OR = 3'b001, ADD = 3'b010, SUB = 3'b110, NOR = 3'b100, SLT = 3'b111, XOR = 3'b011, SRL = 3'b101;
	parameter value0  = 17'h12821, value1  = 17'h00060, value2  = 17'h00050, value3  = 17'h06001;
	parameter value4  = 17'h00208, value5  = 17'h05001, value6  = 17'h00010, value7  = 17'h0001a;
	parameter value8  = 17'h08090, value9  = 17'h10160, value10 = 17'h00050, value11 = 17'h00058;
	parameter value12 = 17'h00468, value13 = 17'h08090, value14 = 17'h10010, value15 = 17'h1076c;
	/*输出变量宏定义*/
	`define CPU_ctrl_signals {PCWrite, PCWriteCond, IorD, MemRead, MemWrite, IRWrite, MemtoReg[1:0], PCSource[1:0], ALUSrcB[1:0], ALUSrcA, RegWrite, RegDst[1:0], CPU_MIO}
	/*状态转换*/
	reg [4:0] state;
	assign state_out = state;
	always@(posedge clk or posedge reset)begin
		if(reset == 1) state <= IF;
		else begin
			case(state)
				IF: 		if(MIO_ready) state <= ID;
							else          state <= IF;
				ID: 		begin
								case(Inst_in[31:26])
								6'b000000: begin 
												case (Inst_in[5:0])
													6'b001000: state <= EX_Jr;
													default:   state <= EX_R;
												endcase
											  end
								6'b100011: state <= EX_Mem;   //LW
								6'b101011: state <= EX_Mem;   //SW
								6'b001000: state <= EX_I;    //addi
								6'b001100: state <= EX_I;    //andi
								6'b001101: state <= EX_I;    //ori
								6'b001110: state <= EX_I;    //xori
								6'b001010: state <= EX_I;    //slti
				//				6'b001011: state <= EX_I; //I-type
								6'b001111: state <= Lui_WB;   //Lui
								6'b000100: state <= EX_Beq;  //Beq
								6'b000101: state <= EX_Bne;  //Bne
								6'b000011: state <= EX_Jal;      //Jal
								6'b000010: state <= EX_J;        //J
								default:   state <= Error;
								endcase
							end
				EX_Mem: 	begin
								case(Inst_in[31:26])
									6'b100011: state <= Mem_RD; //LW
									6'b101011: state <= Mem_WD; //SW
									default:   state <= Error;
								endcase
							end
				EX_R:       state <= R_WB;
				EX_I:       state <= I_WB;
				EX_Beq:     state <= IF;
				EX_Bne:     state <= IF;
				EX_Jal:     state <= IF;
				EX_Jr:		state <= IF;
				EX_J:		   state <= IF;
				Mem_RD:		state <= LW_WB;
				LW_WB:		state <= IF;
				Mem_WD:		state <= IF;
				R_WB: 		state <= IF;
				I_WB:		   state <= IF;
				Lui_WB:		state <= IF;
				Error:      state <= Error;
				default:	   state <= Error;
			endcase
		end
	end
	
	always@*begin
		case(state)
			IF: 	  begin `CPU_ctrl_signals <= value0; Branch <= 0; ALU_operation = ADD; end
			ID: 	  begin `CPU_ctrl_signals <= value1; Branch <= 0; ALU_operation = ADD; end
			EX_Mem: begin `CPU_ctrl_signals <= value2; Branch <= 0; ALU_operation = ADD; end
			Mem_RD: begin `CPU_ctrl_signals <= value3; Branch <= 0; ALU_operation = ADD; end
			LW_WB:  begin `CPU_ctrl_signals <= value4; Branch <= 0; ALU_operation = ADD; end
			Mem_WD: begin `CPU_ctrl_signals <= value5; Branch <= 0; ALU_operation = ADD; end
			EX_R:   begin 
						`CPU_ctrl_signals <= value6;
						Branch <= 0; 
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
					  end
			R_WB:   begin `CPU_ctrl_signals <= value7 ; Branch <= 0; ALU_operation = ADD; end
			EX_Beq: begin `CPU_ctrl_signals <= value8 ; Branch <= 1; ALU_operation = SUB; end
			EX_J:	  begin `CPU_ctrl_signals <= value9 ; Branch <= 0; ALU_operation = ADD; end
			EX_I:   begin 
							`CPU_ctrl_signals <= value10; 
							Branch <= 0;
							case(Inst_in[31:26])
								6'b001000: ALU_operation = ADD; //addi
								6'b001100: ALU_operation = AND; //andi
								6'b001101: ALU_operation = OR;  //ori
								6'b001110: ALU_operation = XOR; //xori
								6'b001010: ALU_operation = SLT; //slti
								default:   ALU_operation = ADD;
							endcase
						end
			I_WB:   begin `CPU_ctrl_signals <= value11; Branch <= 0; ALU_operation = ADD; end
			Lui_WB: begin `CPU_ctrl_signals <= value12; Branch <= 0; ALU_operation = ADD; end
			EX_Bne: begin `CPU_ctrl_signals <= value13; Branch <= 0; ALU_operation = SUB; end
			EX_Jr:  begin `CPU_ctrl_signals <= value14; Branch <= 0; ALU_operation = ADD; end
			EX_Jal: begin `CPU_ctrl_signals <= value15; Branch <= 0; ALU_operation = ADD; end
			default:begin `CPU_ctrl_signals <= value0 ; Branch <= 0; ALU_operation = ADD; end
		endcase
	end
	
	
endmodule

