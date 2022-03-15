`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:25:38 03/01/2020 
// Design Name: 
// Module Name:    clk_div 
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
module clk_div(input clk,          			/* board clock */
					input rst,         			/* reset */
					input SW2,         			/* 0/1 fast/slow clock */
					output reg [31:0]clkdiv,	/* 32 bit frequency clock */
					output Clk_CPU					/* output CPU clock */
    );

	always @ (posedge clk or posedge rst) begin
		if(rst) clkdiv <= 0;
		else clkdiv <= clkdiv + 1'b1;
	end
	assign Clk_CPU = (SW2)?clkdiv[24]:clkdiv[2];
	
 
endmodule
