`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:07:41 06/24/2020
// Design Name:   M_datapath
// Module Name:   C:/Xilinx/lab4/Top_Simple_CPU_App/m_datapath_sim.v
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

module m_datapath_sim;

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

	initial begin // Initialize Inputs 
	clk = 0; 
	reset = 1; 
	MIO_ready = 1; 
	IorD = 0; 
	IRWrite = 1; 
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
	// Wait 100 ns for global reset to finish 
	#100; 
	// Add stimulus here 
	reset = 0; 
	
	//J 1000 
	//Start 
	IorD = 0; 
	IRWrite = 1; 
	RegWrite = 0; 
	ALUSrcA = 1; //PC_Current 
	ALUSrcB = 2'b01; 
	PCSource = 2'b00; 
	PCWrite = 1; 
	ALU_operation = 3'b010;//add 
	data2CPU = 32'b000010_00000000000000000000001000; 
	#40; 
	//state1 
	IRWrite = 0; 
	ALUSrcA = 1; 
	ALUSrcB = 2'b11; 
	PCWrite = 0; 
	ALU_operation = 3'b010; //add 
	#40; 
	//state 9 
	PCWrite = 1; 
	PCSource = 2'b10; 
	#40; //220 
	
	//Beq 
	//Start 
	IorD = 0; 
	IRWrite = 1; 
	RegWrite = 0; 
	ALUSrcA = 1; 
	ALUSrcB = 2'b01; 
	PCSource = 2'b00; 
	PCWrite = 1; 
	ALU_operation = 3'b010;//add 
	data2CPU = 32'b000100_01011_00000_0000000000000101; //beq $t3, $zero, 5 
	#40; 
	//state 1 
	IRWrite = 0; 
	ALUSrcA = 1; 
	ALUSrcB = 2'b11; 
	PCWrite = 0; 
	ALU_operation = 3'b010;//add 
	#40; 
	//state 8 
	ALUSrcA = 0;//A 
	ALUSrcB = 00;//B 
	ALU_operation = 3'b110; //sub 
	PCWriteCond = 1;
	Branch = 1; 
	PCSource = 2'b01; 
	#40; 
	PCWriteCond = 0; //340 
	
	//Lw 
	//Start 
	IorD = 0; 
	IRWrite = 1; 
	RegWrite = 0; 
	ALUSrcA = 1; 
	ALUSrcB = 2'b01; 
	PCSource = 2'b00; 
	PCWrite = 1; 
	ALU_operation = 3'b010;//add 
	data2CPU = 32'b100011_00000_10010_0000000000000010; //lw $s2, 2($zero) 
	#40; 
	//state 1 
	IRWrite = 0; 
	ALUSrcA = 1; 
	ALUSrcB = 2'b11; 
	PCWrite = 0; 
	ALU_operation = 3'b010;//add 
	#40; 
	//state 2 
	ALUSrcA = 0; 
	ALUSrcB = 10; 
	ALU_operation = 3'b010;//add 
	#40; 
	//state 3 
	IorD = 1; 
	data2CPU = 32'h5a5a5a5a; 
	#40; 
	//state 4 
	RegDst = 2'b00; 
	RegWrite = 1; 
	MemtoReg = 2'b01; 
	#40; //540
	
	//Add 
	//Start 
	IorD = 0; 
	IRWrite = 1; 
	RegWrite = 0; 
	ALUSrcA = 1; 
	ALUSrcB = 2'b01; 
	PCSource = 2'b00; 
	PCWrite = 1; 
	ALU_operation = 3'b010;//add 
	data2CPU = 32'h000000_00000_10010_10001_00000_100000; //add $s1, $zero, $s2 
	#40; 
	//state1 
	IRWrite = 0; 
	ALUSrcA = 1;//PC_Current 
	ALUSrcB = 2'b11; 
	PCWrite = 0;
	ALU_operation = 3'b010;//add 
	#40; 
	//state6 
	ALUSrcA = 0; 
	ALUSrcB = 00; 
	ALU_operation = 3'b010; //add 
	#40; 
	//state7 
	RegDst = 2'b01; 
	RegWrite = 1; 
	MemtoReg = 2'b00; 
	#40; //700 
	end 
	
	always begin
		clk = 1; #10; 
		clk = 0; #10; 
	end 
endmodule
	

