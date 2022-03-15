`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:27:32 08/16/2020 
// Design Name: 
// Module Name:    Unsign_Ext 
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
module Unsign_Ext(input [15:0] imm_16,
						output [31:0] imm_32
    );
		assign imm_32 = {{16{1'b0}},imm_16[15:0]};


endmodule
