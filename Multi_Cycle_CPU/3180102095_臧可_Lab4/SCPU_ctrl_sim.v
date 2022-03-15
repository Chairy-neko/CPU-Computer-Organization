`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:51:33 05/09/2020
// Design Name:   SCPU_ctrl
// Module Name:   C:/Xilinx/lab3/Top_Simple_CPU_App/SCPU_ctrl_sim.v
// Project Name:  Top_Simple_CPU_App
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SCPU_ctrl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SCPU_ctrl_sim;

	// Inputs
	reg [5:0] OPcode;
	reg [5:0] Fun;
	reg MIO_ready;

	// Outputs
	wire RegDst;
	wire ALUSrc_B;
	wire MemtoReg;
	wire Jump;
	wire Branch;
	wire RegWrite;
	wire mem_w;
	wire [2:0] ALU_Control;
	wire CPU_MIO;

	// Instantiate the Unit Under Test (UUT)
	SCPU_ctrl uut (
		.OPcode(OPcode), 
		.Fun(Fun), 
		.MIO_ready(MIO_ready), 
		.RegDst(RegDst), 
		.ALUSrc_B(ALUSrc_B), 
		.MemtoReg(MemtoReg), 
		.Jump(Jump), 
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

		// Wait 40 ns for global reset to finish
		#40;
		OPcode = 0;
		Fun = 6'b100000;//add
		#20;
		Fun = 6'b100010;//sub
		#20;
		Fun = 6'b100100;//and
		#20;
		Fun = 6'b100101;//or
		#20;
		Fun = 6'b101010;//slt
		#20;
		Fun = 6'b100111;//nor
		#20;
		Fun = 6'b000010;//srl
		#20;
		Fun = 6'b010110;//xor
		#20;
		Fun = 6'b111111;//¼ä¸ô
		#1;
		OPcode = 6'b100011;//load
		#20;
		OPcode = 6'b101011;//store
		#20;
		OPcode = 6'b000100;//beq
		#20;
		OPcode = 6'b000010;//jump
		#20;
		OPcode = 6'b001010;//slti
		#20;
		OPcode = 6'h3f;//¼ä¸ô
		Fun = 6'b000000;//¼ä¸ô
		
		
        
		// Add stimulus here

	end
      
endmodule

