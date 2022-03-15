`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:29:41 04/01/2020 
// Design Name: 
// Module Name:    SCPU 
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
module SCPU(
				input wire clk,
				input wire reset,
				input wire MIO_ready,
				input wire [31:0]inst_in,
				input wire [31:0]Data_in,
				output wire mem_w,
				output wire [31:0]PC_out,
				output wire [31:0]Addr_out,
				output wire [31:0]Data_out,
				output wire CPU_MIO,
				input wire INT
    );


endmodule
