`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:59:55 05/09/2020
// Design Name:   SCPU_ctrl_more
// Module Name:   C:/Xilinx/lab3/Top_Simple_CPU_App/SCPU_ctrl_more_sim.v
// Project Name:  Top_Simple_CPU_App
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SCPU_ctrl_more
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SCPU_ctrl_more_sim;

	// Inputs
	reg [5:0] OPcode;
	reg [5:0] Fun;
	reg MIO_ready;
	reg zero;

	// Outputs
	wire RegDst;
	wire ALUSrc_B;
	wire [1:0] DatatoReg;
	wire Jal;
	wire [1:0] Branch;
	wire RegWrite;
	wire mem_w;
	wire [2:0] ALU_Control;
	wire CPU_MIO;

	// Instantiate the Unit Under Test (UUT)
	SCPU_ctrl_more uut (
		.OPcode(OPcode), 
		.Fun(Fun), 
		.MIO_ready(MIO_ready), 
		.zero(zero), 
		.RegDst(RegDst), 
		.ALUSrc_B(ALUSrc_B), 
		.DatatoReg(DatatoReg), 
		.Jal(Jal), 
		.Branch(Branch), 
		.RegWrite(RegWrite), 
		.mem_w(mem_w), 
		.ALU_Control(ALU_Control), 
		.CPU_MIO(CPU_MIO)
	);

	initial begin
		// Initialize Inputs
		OPcode = 0;
		Fun = 0;
		MIO_ready = 0;
		zero = 0;

		// Wait 20 ns for global reset to finish
		#20;
        
		// Add stimulus here
		Fun = 6'b100000;//add 
		#20; Fun = 6'b100010;//sub 
		#20; Fun = 6'b100100;//and 
		#20; Fun = 6'b100101;//or 
		#20; Fun = 6'b000010;//srl 
		#20; Fun = 6'b101010;//slt 
		#20; Fun = 6'b100111;//nor 
		#20; Fun = 6'b100110;//xor 
		#20; Fun = 6'b001000;//jr 
		#20; Fun = 6'b001001;//jalr 
		#20; OPcode = 6'b000010;//j 
		#20; OPcode = 6'b000011;//jal 
		#20; OPcode = 6'b001111;//lui 
		#20; OPcode = 6'b001010;//slti 
		#20; OPcode = 6'b001110;//xori 
		#20; OPcode = 6'b001111;//ori 
		#20; OPcode = 6'b001100;//andi 
		#20; Fun = 6'b000000;//interval 
		#20; OPcode = 6'b100011;//lw 
		#20; OPcode = 6'b101011;//sw 
		#20; OPcode = 6'b000101;//bne 
		zero = 0;//ne 
		#20; OPcode = 6'b000101;//bne 
		zero = 1;//eq 
		#20; OPcode = 6'b000100;//beq 
		zero = 0;//ne 
		#20; OPcode = 6'b000100;//beq 
		zero = 1;//eq 
		#20; OPcode = 6'b001000;//addi 
		#20; OPcode = 6'b010000;//eret 

	end
      
endmodule

