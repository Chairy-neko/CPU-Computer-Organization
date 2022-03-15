`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:42:07 06/26/2020
// Design Name:   Regs
// Module Name:   C:/Xilinx/lab4/Top_Simple_CPU_App/regs_sim.v
// Project Name:  Top_Simple_CPU_App
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Regs
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module regs_sim;

	// Inputs
	reg clk;
	reg rst;
	reg L_S;
	reg [4:0] R_addr_A;
	reg [4:0] R_addr_B;
	reg [4:0] Wt_addr;
	reg [31:0] wt_data;

	// Outputs
	wire [31:0] rdata_A;
	wire [31:0] rdata_B;

	// Instantiate the Unit Under Test (UUT)
	Regs uut (
		.clk(clk), 
		.rst(rst), 
		.L_S(L_S), 
		.R_addr_A(R_addr_A), 
		.R_addr_B(R_addr_B), 
		.Wt_addr(Wt_addr), 
		.wt_data(wt_data), 
		.rdata_A(rdata_A), 
		.rdata_B(rdata_B)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		L_S = 0;
		R_addr_A = 0;
		R_addr_B = 0;
		Wt_addr = 0;
		wt_data = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
		R_addr_A = 5'b01011;
		L_S = 1;
		wt_data = 32'h5a5a5a5a;
		Wt_addr = 5'b0000;

	end
		
      always begin
		clk = 0; #10;
		clk = 1;#10;
		end
		// Add stimulus here
      
endmodule

