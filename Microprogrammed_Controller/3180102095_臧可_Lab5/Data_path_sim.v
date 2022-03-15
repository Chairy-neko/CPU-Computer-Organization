// Verilog test fixture created from schematic C:\Xilinx\lab3\Top_Simple_CPU_App\Dat_path.sch - Fri May 08 19:46:31 2020

`timescale 1ns / 1ps

module Dat_path_Dat_path_sch_tb();

// Inputs
   reg RegWrite;
   reg RegDst;
   reg [25:0] inst_field;
   reg MemtoReg;
   reg [31:0] Data_in;
   reg ALUSrc_B;
   reg [2:0] ALU_Control;
   reg rst;
   reg Jump;
   reg branch;
   reg clk;

// Output
   wire [31:0] Data_out;
   wire [31:0] ALU_out;
   wire [31:0] PC_out;

// Bidirs

// Instantiate the UUT
   Dat_path UUT (
		.Data_out(Data_out), 
		.RegWrite(RegWrite), 
		.RegDst(RegDst), 
		.inst_field(inst_field), 
		.MemtoReg(MemtoReg), 
		.Data_in(Data_in), 
		.ALU_out(ALU_out), 
		.ALUSrc_B(ALUSrc_B), 
		.ALU_Control(ALU_Control), 
		.PC_out(PC_out), 
		.rst(rst), 
		.Jump(Jump), 
		.branch(branch), 
		.clk(clk)
   );
// Initialize Inputs
//   `ifdef auto_init
       initial begin
		RegWrite = 0;//寄存器写信号 WReg
		RegDst = 0;//Regs目的地址控制 RtRd
		inst_field = 0;//指令数据域
		MemtoReg = 0;//Regs写入数据源控制
		Data_in = 0;//存储器输入
		ALUSrc_B = 0;//ALU端口B输入选择
		ALU_Control = 0;//ALU操作控制
		rst = 0;//寄存器复位
		Jump = 0;//J指令
		branch = 0;//Beq指令
		clk = 0;
			
		#10; rst = 1; //jump to the start 
		#20; rst = 0;
		
		Jump = 1; 
		inst_field = 26'b10_0000_0000_0000_0000_0000_0000; 
		#20; 
		Jump = 0; 
		MemtoReg = 1; 
		Data_in = 32'hA5A5A5A5A5; 
		RegWrite = 1; 
		RegDst = 0; 
		ALUSrc_B = 0; 
		ALU_Control = 3'b001; 
		inst_field = 26'h10000; 
		#20; 
		Data_in = 32'h5A5A5A5A; 
		inst_field = 26'h20000; 
		#20; 
		Data_in = 32'h12345678; 
		inst_field = 26'h30000; 
		//add $1,$1,$2 
		#20; 
		RegDst = 1; 
		MemtoReg = 0; 
		ALU_Control = 3'b010; 
		inst_field = 26'b00001_00001_00010_00000_100000; 
		// sw $4,10($0) 
		#20; 
		RegDst = 0; 
		inst_field = 26'b00000_00100_00000_00000_000000; 
		// sub $7,$4,$2 
		#20; 
		RegDst = 1; 
		ALU_Control = 3'b110; 
		inst_field = 26'b00100_00010_00111_00000_100010; 
		// sw $5,0($0) 
		#20; 
		RegDst = 0; 
		inst_field = 26'b00000_00101_00000_00000_000000; 
		// and $7,$2,$2 
		#20; 
		RegDst = 1; 
		ALU_Control = 3'b000; 
		inst_field = 26'b00010_00010_00111_00000_100100; 
		// sw $6,0($0) 
		#20;
		RegDst = 0; 
		inst_field = 26'b00000_00110_00000_00000_000000; 
		// or $8,$1,$2 
		#20; 
		RegDst = 1; 
		ALU_Control = 3'b111; 
		inst_field = 26'b00001_00010_01000_00000_101010; 
		// sw $8,0($0) 
		#20; 
		RegDst = 1; 
		ALU_Control = 3'b001; 
		inst_field = 26'b00001_00010_00111_00000_100101; 
		// sw $15,0($0) 
		#20; 
		RegDst = 0; 
		inst_field = 26'b00000_01111_00000_00000_000000; 
		// slt $9,$1,$2 
		#20; 
		RegDst = 0; 
		inst_field = 26'b00000_01001_00000_00000_000000; 
		// nor $9,$1,$2 
		#20; 
		RegDst = 0; 
		inst_field = 26'b00000_01001_00000_00000_000000; 
		#40; 
		rst = 1;
		
		end
		
		always begin
		clk = 0;#20;
		clk = 1;#20;
		end
//   `endif
endmodule
