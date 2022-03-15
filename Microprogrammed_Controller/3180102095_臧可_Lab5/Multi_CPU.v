`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:14:21 06/18/2020 
// Design Name: 
// Module Name:    Multi_CPU 
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
module Multi_CPU(input clk,             //muliti_CPU
					  input reset,
					  input MIO_ready,
					  output[31:0] PC_out,   //TEST
					  output[31:0] inst_out, //TEST
					  output mem_w,
					  output[31:0] Addr_out,
					  output[31:0] Data_out,
					  input[31:0] Data_in,
					  output CPU_MIO,
					  input INT,
					  output [4:0]state     //Test
    );
		wire zero, overflow;
		wire MemRead, MemWrite, IorD, IRWrite, RegWrite, PCWrite, PCWriteCond, Branch, Unsign;
		wire[1:0] RegDst, MemtoReg, ALUSrcA, ALUSrcB, PCSource;
		wire[2:0] ALU_operation;
		assign mem_w = MemWrite&&(~MemRead); 
		
		Micro_ctrl x_ctrl(.clk(clk),
					.reset(reset),
					.Inst_in(inst_out),
					.zero(zero),
					.overflow(overflow),
					.MIO_ready(MIO_ready),
					.MemRead(MemRead),
					.MemWrite(MemWrite),
					.CPU_MIO(CPU_MIO),
					.IorD(IorD),
					.IRWrite(IRWrite),
					.RegWrite(RegWrite),
					.ALUSrcA(ALUSrcA),
					.PCWrite(PCWrite),
					.PCWriteCond(PCWriteCond),
					.Branch(Branch),
					.Unsign(Unsign),
					.RegDst(RegDst),
					.MemtoReg(MemtoReg),
					.ALUSrcB(ALUSrcB),
					.PCSource(PCSource),
					.ALU_operation(ALU_operation),
					.state_out(state)
					);
					
		M_datapath x_datapath(.clk(clk),
							  .reset(reset),
							  .MIO_ready(MIO_ready),
							  .IorD(IorD),
							  .IRWrite(IRWrite),
							   .RegWrite(RegWrite),
							  .ALUSrcA(ALUSrcA),
							  .PCWrite(PCWrite),
							  .PCWriteCond(PCWriteCond),
							  .Branch(Branch),
							  .Unsign(Unsign),
							   .RegDst(RegDst),
						  	  .MemtoReg(MemtoReg),
							  .ALUSrcB(ALUSrcB),
							  .PCSource(PCSource),
							  .ALU_operation(ALU_operation),
							  .data2CPU(Data_in),
							  .M_addr(Addr_out),
							  .zero(zero),
							  .overflow(overflow),
							  .PC_Current(PC_out),
							  .Inst(inst_out),
							  .data_out(Data_out)
							  );
endmodule
