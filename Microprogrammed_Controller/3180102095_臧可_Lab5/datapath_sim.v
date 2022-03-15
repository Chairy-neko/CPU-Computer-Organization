`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:01:53 06/24/2020
// Design Name:   M_datapath
// Module Name:   C:/Xilinx/lab4/Top_Simple_CPU_App/datapath_sim.v
// Project Name:  Top_Simple_CPU_App
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: M_datapath
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module datapath_sim;

	// Inputs
	reg clk;
	reg reset;
	reg MIO_ready;
	reg IorD;
	reg IRWrite;
	reg [1:0] RegDst;
	reg RegWrite;
	reg [1:0] MemtoReg;
	reg ALUSrcA;
	reg [1:0] ALUSrcB;
	reg [1:0] PCSource;
	reg PCWrite;
	reg PCWriteCond;
	reg Branch;
	reg [2:0] ALU_operation;
	reg [31:0] data2CPU;

	// Outputs
	wire [31:0] PC_Current;
	wire [31:0] Inst;
	wire [31:0] data_out;
	wire [31:0] M_addr;
	wire zero;
	wire overflow;

	// Instantiate the Unit Under Test (UUT)
	M_datapath uut (
		.clk(clk), 
		.reset(reset), 
		.MIO_ready(MIO_ready), 
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
		.Branch(Branch), 
		.ALU_operation(ALU_operation), 
		.PC_Current(PC_Current), 
		.data2CPU(data2CPU), 
		.Inst(Inst), 
		.data_out(data_out), 
		.M_addr(M_addr), 
		.zero(zero), 
		.overflow(overflow)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		MIO_ready = 0;
		IorD = 0;
		IRWrite = 0;
		RegDst = 0;
		RegWrite = 0;
		MemtoReg = 0;
		ALUSrcA = 0;
		ALUSrcB = 0;
		PCSource = 0;
		PCWrite = 0;
		PCWriteCond = 0;
		Branch = 0;
		ALU_operation = 0;
		data2CPU = 0;


		#8;
		
		//////////////////////addi:$s0<=$zero+3/////////////////////////////////////

		// IF
		PCWrite = 1;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 1;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b01;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		
		data2CPU = 32'b0010_0000_0001_0000_0000_0000_0000_0011;//$s0 <= 3;
		#20;
		
		// ID
		PCWrite = 0;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b11;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		#20;
		
		// Exe_I
		PCWrite = 0;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 1;
		ALUSrcB = 2'b10;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		#20;
		
		// I_WB
		PCWrite = 0;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b01;
		RegWrite = 1;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 0;
		#20;
		
		//////////////////////ori:$s1<=$s0 or 15/////////////////////////////////////

		// IF
		PCWrite = 1;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 1;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b01;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		
		data2CPU = 32'b0011_0010_0001_0001_0000_0000_0000_1111;//$s1 <= 15;
		#20;
		
		// ID
		PCWrite = 0;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b11;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		#20;
		
		// Exe_I
		PCWrite = 0;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 1;
		ALUSrcB = 2'b10;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b001;
		#20;
		
		// I_WB
		PCWrite = 0;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b01;
		RegWrite = 1;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		#20;
		

		//////////////////////xori:$s2<=$s0 or 15/////////////////////////////////////

		// IF
		PCWrite = 1;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 1;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b01;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		
		data2CPU = 32'b0011_1010_0001_0010_0000_0000_0000_1111;//$s2 <= 12;
		#20;
		
		// ID
		PCWrite = 0;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b11;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		#20;
		
		// Exe_I
		PCWrite = 0;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 1;
		ALUSrcB = 2'b10;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b011;
		#20;
		
		// I_WB
		PCWrite = 0;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b01;
		RegWrite = 1;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		#20;
		
		
		//////////////////////// $s0 <= $s0 + $s0

		// IF
		PCWrite = 1;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 1;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b01;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		data2CPU = 32'b0000_0010_0001_0000_1000_0000_0010_0000;

		// ID
		#20;
		PCWrite = 0;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b11;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		
		// Exe_R
		#20;
		PCWrite = 0;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 1;
		ALUSrcB = 2'b00;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		
		// R_WB
		#20;
		PCWrite = 0;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b00;
		RegWrite = 1;
		RegDst = 2'b01;
		Branch = 0;
		ALU_operation = 0;
		#20;
	
		/////////////////////////////////// beq $s1,$s1
		
		// IF
		PCWrite = 1;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 1;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b01;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		
		data2CPU = 32'b0001_0010_0011_0001_0000_0000_0000_0111;//beq $s1 $s1
		#20;
		
		// ID
		PCWrite = 0;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b11;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		#20;
		
		// ExecBeq
		PCWrite = 0;
		PCWriteCond = 1;
		IorD = 1;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 2'b01;
		ALUSrcA = 1;
		ALUSrcB = 2'b00;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 1;
		ALU_operation = 3'b110;
		#20;
		
		/////////////////////////////////// beq $s1,$s2
		
		// IF
		PCWrite = 1;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 1;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b01;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		
		data2CPU=32'b0001_0010_0011_0010_0000_0000_0000_0111;//beq $s1, $s2
		#20;
		
		// ID
		PCWrite = 0;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b11;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		#20;
		
		// ExecBeq
		PCWrite = 0;
		PCWriteCond = 1;
		IorD = 0;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 2'b01;
		ALUSrcA = 1;
		ALUSrcB = 2'b00;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 1;
		ALU_operation = 3'b110;
		#20;
		
		///////////////////////bne with same values
		PCWrite =1'b1;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 1'b1;
		MemtoReg = 2'b00;
		PCSource = 0;
		ALUSrcA = 0;
		ALUSrcB = 2'b01;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		data2CPU = 32'b0001_0100_0000_0000_0000_0000_0000_1111;
		#20;
		
		PCWrite = 0;
		PCWriteCond = 0;
		IorD = 1;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 0;
		ALUSrcA = 0;
		ALUSrcB = 2'b11;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		#20;
		
		PCWrite = 0;
		PCWriteCond = 1'b1;
		IorD = 1;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 2'b01;
		ALUSrcA = 1'b1;
		ALUSrcB = 2'b00;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation =3'b110;
		#20;
		
		/////////////////////// bne with different values
		PCWrite =1'b1;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 1'b1;
		MemtoReg = 2'b00;
		PCSource = 0;
		ALUSrcA = 0;
		ALUSrcB = 2'b01;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		data2CPU = 32'b0001_0110_0000_0000_0000_0000_0000_1111;
		#20;
		
		PCWrite = 0;
		PCWriteCond = 0;
		IorD = 1;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 0;
		ALUSrcA = 0;
		ALUSrcB = 2'b11;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		#20;
		
		PCWrite = 0;
		PCWriteCond = 1'b1;
		IorD = 0;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 2'b01;
		ALUSrcA = 1'b1;
		ALUSrcB = 2'b00;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation =3'b110;
		#20
		
		//lui
		PCWrite = 1;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 1;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b01;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		data2CPU = 32'b0011_1100_0001_0000_0000_0000_0000_0110;
		
		#20;
		PCWrite = 0;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b11;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		
		#20;
		PCWrite = 0;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 0;
		MemtoReg = 2'b10;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b00;
		RegWrite = 1;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		#20
		
		/////////////////////////////////// lw $s0,6($s1)
		
		// IF
		PCWrite = 1;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 1;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b01;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		
		data2CPU = 32'b1000_1110_0011_0000_0000_0000_0000_0110;
		#20;
		
		// ID
		PCWrite = 0;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b11;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		#20;
		
		// ExecMem
		PCWrite = 0;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 1;
		ALUSrcB = 2'b10;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		#20;
		
		// MemRD
		PCWrite = 0;
		PCWriteCond = 0;
		IorD = 1;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b00;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		#20;
		
		// LW_WB
		PCWrite = 0;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 0;
		MemtoReg = 2'b01;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b00;
		RegWrite = 1;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		#20;


		/////////////////////////////////// sw $s2,6($s1)
		
		// IF
		PCWrite = 1;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 1;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b01;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
	
		data2CPU = 32'b1010_1110_0011_0010_0000_0000_0000_0110;
		#20;
		
		// ID
		PCWrite = 0;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b11;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		#20;
		
		// ExecMem
		PCWrite = 0;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 1;
		ALUSrcB = 2'b10;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		#20;
		
		// MemWD
		PCWrite = 0;
		PCWriteCond = 0;
		IorD = 1;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b00;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		#20;
		
		PCWrite = 0; 
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 0;
		MemtoReg = 2'b00; 
		PCSource = 0;
		ALUSrcA = 0;
		ALUSrcB = 2'b00; 
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0; 
		ALU_operation = 3'b000; 
		#20;
	
		//////////////////////////////////////j 00000
		
		// IF
		#20
		PCWrite = 1;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 1;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b01;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		data2CPU = 32'b0000_1000_0000_0000_0000_0000_0001_1111;//
		
		// ID
		#20;
		PCWrite = 0;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b11;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		
		// ExecJ
		#20;
		PCWrite = 1;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 2'b10;
		ALUSrcA = 0;
		ALUSrcB = 2'b00;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		#20
		
		////////////////////////////////////jr 
		PCWrite = 1;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 1;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b01;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		data2CPU = 32'b000000_0000_00000_00000_00000_001000;//jr $s0<=0
		
		#20;
		PCWrite = 0;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b11;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		
		#20;
		PCWrite = 1;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 2'b11;
		ALUSrcA = 0;
		ALUSrcB = 2'b00;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		#20;
		
		//////////////////////////////////////jal
		PCWrite = 1;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 1;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b01;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		data2CPU = 32'b000011_00000_00000_00000_00000_001000;//jal 8
		
		#20;
		PCWrite = 0;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 0;
		MemtoReg = 2'b00;
		PCSource = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 2'b11;
		RegWrite = 0;
		RegDst = 2'b00;
		Branch = 0;
		ALU_operation = 3'b010;
		
		#20;
		PCWrite = 1;
		PCWriteCond = 0;
		IorD = 0;
		IRWrite = 0;
		MemtoReg = 2'b11;
		PCSource = 2'b11;
		ALUSrcA = 0;
		ALUSrcB = 2'b00;
		RegWrite = 1;
		RegDst = 2'b10;
		Branch = 0;
		ALU_operation = 3'b010;
		#20;
		
		// Dafault
		#20;
		IorD = 0;
		IRWrite = 0;
		RegDst = 2'b00;
		RegWrite = 0;
		MemtoReg = 2'b00;
		ALUSrcA = 0;
		ALUSrcB = 0;
		PCSource = 0;
		PCWrite = 0;
		PCWriteCond = 0;
		Branch = 0;
		ALU_operation = 0;
		data2CPU = 0;
		#20;
	
	end
    
	always begin
		clk = 1;#10;
		clk = 0;#10;
	end
      
endmodule
