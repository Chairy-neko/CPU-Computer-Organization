`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:31:31 06/18/2020 
// Design Name: 
// Module Name:    M_datapath 
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
module M_datapath(input clk, 
						input reset, 
						input MIO_ready, 
						input IorD, 
						input IRWrite, 
						input [1:0] RegDst, 
						input RegWrite, 
						input [1:0]MemtoReg, 
						input [1:0]ALUSrcA, 
						input [1:0]ALUSrcB, 
						input [1:0]PCSource, 
						input PCWrite, 
						input PCWriteCond, 
						input Branch, 
						input Unsign,
						input [2:0]ALU_operation, 
						output[31:0]PC_Current, 
						input [31:0]data2CPU, 
						output[31:0]Inst, 
						output[31:0]data_out, 
						output[31:0]M_addr, 
						output zero, 
						output overflow );
			assign N0 = 1'b0; 
			assign CE = MIO_ready && (PCWrite || (PCWriteCond && (Branch == zero)));
			wire[4:0] rs = Inst[25:21]; 
			wire[4:0] rt = Inst[20:16]; 
			wire[4:0] rd = Inst[15:11]; 
			wire[4:0] Wt_addr; 
			wire[15:0] Imm_16 = Inst[15:0]; 
			wire[31:0] Wt_data, rdata_A, rdata_B, MDR, Alu_A, Alu_B, Imm_32, UnImm_32, Imm, res, PC_Next, ALU_Out; 
			
			MUX4T1_32 PC_MUX6 ( 
									.I0(res), 
									.I1(ALU_Out), 
									.I2({PC_Current[31:28], Inst[25:0], N0, N0}), 
									.I3(ALU_Out), 
									.s(PCSource[1:0]), 
									.o(PC_Next) 
									);
									
			REG32 PC ( 
						.clk(clk), 
						.rst(reset), 
						.CE(CE), 
						.D(PC_Next),
						.Q(PC_Current)
						);
	 
			 Regs regs(
						 .clk(clk),
						 .rst(reset),
						 .L_S(RegWrite), 
						 .R_addr_A(rs),
						 .R_addr_B(rt),
						 .Wt_addr(Wt_addr), 
						 .wt_data(Wt_data), 
						 .rdata_A(rdata_A), 
						 .rdata_B(rdata_B)
						 );	
			
			 MUX4T1_5 MUX1(
							 .I0(rt), 
							 .I1(rd), 
							 .I2(5'b11111), 
							 .I3(5'b00000), 
							 .s(RegDst),
							 .o(Wt_addr)
							 );	
			
			 MUX4T1_32 Mem2Reg_MUX2(
										 .I0(ALU_Out), 
										 .I1(MDR), 
										 .I2({Inst[15:0],16'h0000}), 
										 .I3(PC_Current), 
										 .s(MemtoReg),
										 .o(Wt_data)
										 );	
				
			 ALU x_ALU(
						 .A(Alu_A),
						 .B(Alu_B),
						 .ALU_operation(ALU_operation),
						 .res(res),
						 .zero(zero),
						 .overflow(overflow)
						 );
	
			MUX4T1_32 A_MUX4 (
								 .I0(PC_Current), 
								 .I1(rdata_A), 
								 .I2({27'h00000,Inst[10:6]}),
								 .s(ALUSrcA),
								 .o(Alu_A)
								 );
	
			 MUX4T1_32 B_MUX3 (
								 .I0(rdata_B), 
								 .I1(32'h00000004), 
								 .I2(Imm), 
								 .I3({Imm[29:0], N0, N0}), 
								 .s(ALUSrcB),
								 .o(Alu_B)
								 );	
			
			 REG32 ALUout (
							 .clk(clk), 
							 .rst(1'b0), 
							 .CE(1'b1), 
							 .D(res), 
							 .Q(ALU_Out)
							 );
	
			 REG32 IR (
						 .clk(clk), 
						 .rst(reset), 
						 .CE(IRWrite), 
						 .D(data2CPU), 
						 .Q(Inst)
						 );
	
			 REG32 reg_MDR (
								 .clk(clk), 
								 .rst(1'b0), 
								 .CE(1'b1), 
								 .D(data2CPU), 
								 .Q(MDR)
								 );
			
			 MUX2T1_32 MUX5 (
								 .I0(PC_Current), 
								 .I1(ALU_Out), 
								 .s(IorD),
								 .o(M_addr)
								 );
			
			MUX2T1_32 Imm_MUX(
									.I0(Imm_32),
									.I1(UnImm_32),
									.s(Unsign),
									.o(Imm)
									);
			
			 Ext_32 U5 (
							 .imm_16(Imm_16), 
							 .imm_32(Imm_32)
							 );
							 
			 Unsign_Ext U6(
								.imm_16(Imm_16),
								.imm_32(UnImm_32)
								);
		 
			 assign data_out = rdata_B;

endmodule
