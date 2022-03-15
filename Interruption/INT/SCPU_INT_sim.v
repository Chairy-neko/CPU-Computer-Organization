// Verilog test fixture created from schematic D:\neko1\INT\SCPU.sch - Sun Aug 23 10:02:58 2020

`timescale 1ns / 1ps

module SCPU_SCPU_sch_tb();

// Inputs
   reg clk;
   reg reset;
   reg [31:0] Data_in;
   reg [31:0] inst_in;
   reg INT;
   reg MIO_ready;

// Output
   wire [31:0] PC_out;
   wire [31:0] Addr_out;
   wire [31:0] Data_out;
   wire mem_w;
   wire CPU_MIO;

// Bidirs

// Instantiate the UUT
   SCPU UUT (
		.clk(clk), 
		.reset(reset), 
		.Data_in(Data_in), 
		.inst_in(inst_in), 
		.INT(INT), 
		.PC_out(PC_out), 
		.Addr_out(Addr_out), 
		.Data_out(Data_out), 
		.MIO_ready(MIO_ready), 
		.mem_w(mem_w), 
		.CPU_MIO(CPU_MIO)
   );
// Initialize Inputs
  // `ifdef auto_init
       initial begin
		clk = 0;
		reset = 1;
		Data_in = 0;
		inst_in = 0;
		INT = 0;
		MIO_ready = 1;
   //`endif
		#10;reset=0;
		// Add stimulus here
			inst_in = 32'h22520001; // addi s2, s2, 1
			#40;
			inst_in = 32'h36520002; //ori $s2, $s2, 2
			#40;
			INT = 1;
			#40;
			inst_in = 32'h22520001; // addi s2, s2, 1
			#40;
			inst_in = 32'hac120000; //sw $s2, 0($zero)
			#40;
			inst_in = 32'h42000018; //eret 
			#40;
			inst_in = 32'h22520001; // addi s2, s2, 1
		end
	
	always begin
		clk = 0;#20;
		clk = 1;#20;
	end
endmodule
