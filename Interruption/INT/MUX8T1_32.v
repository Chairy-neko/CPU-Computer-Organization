`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:34:21 03/01/2020 
// Design Name: 
// Module Name:    MUX8T1_32 
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
module MUX8T1_32(input [31:0]I0,
					input [31:0]I1,
					input [31:0]I2,
					input [31:0]I3,
					input [31:0]I4,
					input [31:0]I5,
					input [31:0]I6,
					input [31:0]I7,
					input [2:0]s,
					output [31:0]o
    );
	 assign o = !s[2]&!s[1]&!s[0]?I0:
				!s[2]&!s[1]& s[0]?I1:
				!s[2]& s[1]&!s[0]?I2:
				!s[2]& s[1]& s[0]?I3:
				s[2]&!s[1]&!s[0]?I4:
				s[2]&!s[1]& s[0]?I5:
				s[2]& s[1]&!s[0]?I6:I7;
endmodule
