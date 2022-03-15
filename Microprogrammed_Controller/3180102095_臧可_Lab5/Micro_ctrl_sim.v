`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:02:26 07/02/2020
// Design Name:   Micro_ctrl
// Module Name:   C:/Xilinx/lab4/Top_Simple_CPU_App/Micro_ctrl_sim.v
// Project Name:  Top_Simple_CPU_App
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Micro_ctrl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Micro_ctrl_sim;

	// Inputs
	reg clk;
	reg reset;
	reg [31:0] Inst_in;
	reg zero;
	reg overflow;
	reg MIO_ready;

	// Outputs
	wire MemRead;
	wire MemWrite;
	wire [2:0] ALU_operation;
	wire [4:0] state_out;
	wire CPU_MIO;
	wire IorD;
	wire IRWrite;
	wire [1:0] RegDst;
	wire RegWrite;
	wire [1:0] MemtoReg;
	wire ALUSrcA;
	wire [1:0] ALUSrcB;
	wire [1:0] PCSource;
	wire PCWrite;
	wire PCWriteCond;
	wire Branch;

	// Instantiate the Unit Under Test (UUT)
	Micro_ctrl uut (
		.clk(clk), 
		.reset(reset), 
		.Inst_in(Inst_in), 
		.zero(zero), 
		.overflow(overflow), 
		.MIO_ready(MIO_ready), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.ALU_operation(ALU_operation), 
		.state_out(state_out), 
		.CPU_MIO(CPU_MIO), 
		.IorD(IorD), 
		.IRWrite(IRWrite), 
		.RegDst(RegDst), 
		.RegWrite(RegWrite), 
		.MemtoReg(MemtoReg), 
		.ALUSrcA(ALUSrcA), 
		.ALUSrcB(ALUSrcB), 
		.PCSource(PCSource), 
		.PCWrite(PCWrite), 
		.PCWriteCond(PCWriteCond), 
		.Branch(Branch)
	);

	initial begin
			// Initialize Inputs
		clk = 0;
		reset = 1;
		Inst_in = 0;
		zero = 0;
		overflow = 0;
		MIO_ready = 1;

		#10;
		reset = 0;
		// R-type
		Inst_in = 32'b000000_00000_00000_00000_00000_100000;// add $s0<=$zero+$zero
		#80;
		// I-type
		Inst_in = 32'b001000_00000_01000_0000000000000001;// addi $t0<=$zero+1
		#80;
		// condition
		Inst_in = 32'b000100_10110_10111_1111111111101110;// beq $s6 $s7 1111111111101110
		#60; 
		zero = 1;
		#60;
		Inst_in = 32'b000101_10110_10111_1111111111101110;// bne $s6 $s7 1111111111101110
		#60;
		zero = 0;
		#60;
		// sw
		Inst_in = 32'b101011_01001_10001_0000000000010100;//sw mem[$t1+20]=$s1
		#80;
		// lw
		Inst_in = 32'b100011_01001_10001_0000000000010100;//lw $s1=$t1+20
		#100
		// jump
		Inst_in = 32'b000010_00000000000000000000001000;//j
		#60;
		Inst_in = 32'b000011_00000000000000010000000000;//jal
		#60;
		Inst_in = 32'b000000_10000_00000_00000_00000_001000;//jr $31
		#60
		// lui
		Inst_in = 32'b001111_00000_10000_0000000000001111;//lui $8=15*65536
		
	end
	
	always begin
		clk = 1;#10;
		clk = 0;#10;
	end
      
endmodule

