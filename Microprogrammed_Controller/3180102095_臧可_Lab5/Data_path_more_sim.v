// Verilog test fixture created from schematic C:\Xilinx\lab3\Top_Simple_CPU_App\Data_path.sch - Sat May 09 14:22:39 2020

`timescale 1ns / 1ps

module Data_path_Data_path_sch_tb();

// Inputs
   reg RegWrite;
   reg [1:0] DatatoReg;
   reg [31:0] Data_in;
   reg ALUSrc_B;
   reg [2:0] ALU_Control;
   reg rst;
   reg [1:0] Branch;
   reg clk;
   reg Jal;
   reg [25:0] inst_field;
   reg RegDst;

// Output
   wire [31:0] Data_out;
   wire [31:0] ALU_out;
   wire [31:0] PC_out;
   wire overflow;
   wire zero;

// Bidirs

// Instantiate the UUT
   Data_path UUT (
		.Data_out(Data_out), 
		.RegWrite(RegWrite), 
		.DatatoReg(DatatoReg), 
		.Data_in(Data_in), 
		.ALU_out(ALU_out), 
		.ALUSrc_B(ALUSrc_B), 
		.ALU_Control(ALU_Control), 
		.PC_out(PC_out), 
		.rst(rst), 
		.Branch(Branch), 
		.clk(clk), 
		.overflow(overflow), 
		.zero(zero), 
		.Jal(Jal), 
		.inst_field(inst_field), 
		.RegDst(RegDst)
   );
// Initialize Inputs
//   `ifdef auto_init
          initial begin
				RegWrite = 0;
				DatatoReg = 0;
				Data_in = 0;
				ALUSrc_B = 0;
				ALU_Control = 0;
				rst = 1;
				Branch = 0;
				clk = 0;
				Jal = 0;
				inst_field = 0;
				RegDst = 0;

				#40; rst=0; 
				#20; 
				//lw $5,11($6)
				Jal = 0; 
				Branch = 0; 
				RegWrite = 1; 
				inst_field[25:21]=6; //rs
				inst_field[20:16]=5; //rt 
				inst_field[15:0]=11; 
				RegDst = 0; 
				DatatoReg = 1; 
				Data_in = 32'haaaaffff; 
				ALUSrc_B = 1;
				ALU_Control=2; 
				#20; 
				//lw $6,12($5)
				inst_field[25:21]=5; 
				inst_field[20:16]=6; 
				inst_field[15:0]=12; 
				Data_in = 32'hffffaaaa; 
				#20; 
				//sw $5,15($6) 
				RegWrite = 0; 
				inst_field[25:21]=6; 
				inst_field[20:16]=5; 
				inst_field[15:0]=15; 
				DatatoReg = 0; 
				Data_in = 0; 
				#20; 
				//add $7,$6,$5 
				RegWrite = 1; 
				inst_field[25:21]=6; 
				inst_field[20:16]=5; 
				inst_field[15:11]=7; 
				RegDst = 1; 
				ALUSrc_B = 0; 
				#20; 
				//sw $7,5($6)
				RegWrite = 0; 
				inst_field[25:21]=6; 
				inst_field[20:16]=7; 
				inst_field[15:0]=5; 
				RegDst = 0; 
				ALUSrc_B = 1; 
				#20; 
				//sub $8,$5,$6 
				RegWrite = 1;
				inst_field[25:21]=5; 
				inst_field[20:16]=6; 
				inst_field[15:11]=8; 
				RegDst = 1; 
				ALUSrc_B = 0; 
				ALU_Control=6; 
				#20; 
				//sw $8,0($6) 
				RegWrite = 0; 
				inst_field[25:21]=6; 
				inst_field[20:16]=8; 
				inst_field[15:0]=0; 
				RegDst = 0; 
				DatatoReg = 0; 
				ALUSrc_B = 1; 
				ALU_Control=2; 
				#20; 
				//and $8,$5,$6 
				RegWrite = 1; 
				inst_field[25:21]=5; 
				inst_field[20:16]=6; 
				inst_field[15:11]=8; 
				RegDst = 1; 
				ALUSrc_B = 0; 
				ALU_Control=0; 
				#20; 
				//sw $8,0($6)
				RegWrite = 0; 
				inst_field[25:21]=6; 
				inst_field[20:16]=8; 
				inst_field[15:0]=0; 
				RegDst = 0; 
				ALUSrc_B = 1; 
				ALU_Control=2; 
				#20; 
				//or $8,$5,$6 
				RegWrite = 1;
				inst_field[25:21]=5;
				inst_field[20:16]=6; 
				inst_field[15:11]=8; 
				RegDst = 1; 
				ALUSrc_B = 0; 
				ALU_Control=1; 
				#20; 
				//sw $8,0($6) 
				RegWrite = 0; 
				inst_field[25:21]=6; 
				inst_field[20:16]=8; 
				inst_field[15:0]=0; 
				RegDst = 0; 
				ALUSrc_B = 1; 
				ALU_Control=2; 
				#20; 
				//slt $25,$9,$1 
				Branch = 1; 
				RegWrite = 0; 
				inst_field[25:21]=9; 
				inst_field[20:16]=1; 
				inst_field[15:0]=25; 
				RegDst = 1; 
				ALUSrc_B = 0; 
				ALU_Control=7; 
				#20; 
				//beq $6,$8,0
				Branch = 0; 
				RegWrite = 0; 
				inst_field[25:21]=6; 
				inst_field[20:16]=8; 
				inst_field[15:0]=0; 
				RegDst = 0; 
				ALUSrc_B = 1; 
				ALU_Control=2; 
				#20; 
				//nor $8,$5,$6
				RegWrite = 1; 
				inst_field[25:21]=5; 
				inst_field[20:16]=6; 
				inst_field[15:11]=8; 
				RegDst = 1; 
				ALUSrc_B = 0; 
				ALU_Control=4; 
				#20;  
		end

		always begin 
		clk = 0; #20;
		clk = 1; #20;
		end
//  `endif
endmodule
