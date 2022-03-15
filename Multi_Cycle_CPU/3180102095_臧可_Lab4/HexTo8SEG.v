`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:54:55 03/18/2020 
// Design Name: 
// Module Name:    HexTo8SEG 
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
module HexTo8SEG(
					input flash,
					input [7:0] LES,
					input [7:0] point,
					input [31:0] Hexs,
					output [63:0] SEG_TXT
    );
	 wire a0, a1, a2, a3, a4, a5, a6, a7;
	 and
	 A0(a0,flash,LES[0]),
	 A1(a1,flash,LES[1]),
	 A2(a2,flash,LES[2]),
	 A3(a3,flash,LES[3]),
	 A4(a4,flash,LES[4]),
	 A5(a5,flash,LES[5]),
	 A6(a6,flash,LES[6]),
	 A7(a7,flash,LES[7]);
	 MyMC14495 M0(.D3(Hexs[3]), 
					 .D2(Hexs[2]), 
					 .D1(Hexs[1]), 
					 .D0(Hexs[0]), 
					 .LE(a0), 
					 .point(point[0]), 
					 .a(SEG_TXT[63]), 
					 .b(SEG_TXT[62]), 
					 .c(SEG_TXT[61]), 
					 .d(SEG_TXT[60]), 
					 .e(SEG_TXT[59]), 
					 .f(SEG_TXT[58]), 
					 .g(SEG_TXT[57]), 
					 .p(SEG_TXT[56]));
	 MyMC14495 M1(.D3(Hexs[7]), 
					 .D2(Hexs[6]), 
					 .D1(Hexs[5]), 
					 .D0(Hexs[4]), 
					 .LE(a1), 
					 .point(point[1]), 
					 .a(SEG_TXT[55]), 
					 .b(SEG_TXT[54]), 
					 .c(SEG_TXT[53]), 
					 .d(SEG_TXT[52]), 
					 .e(SEG_TXT[51]), 
					 .f(SEG_TXT[50]), 
					 .g(SEG_TXT[49]), 
					 .p(SEG_TXT[48]));
	 MyMC14495 M2(.D3(Hexs[11]), 
					 .D2(Hexs[10]), 
					 .D1(Hexs[9]), 
					 .D0(Hexs[8]), 
					 .LE(a2), 
					 .point(point[2]), 
					 .a(SEG_TXT[47]), 
					 .b(SEG_TXT[46]), 
					 .c(SEG_TXT[45]), 
					 .d(SEG_TXT[44]), 
					 .e(SEG_TXT[43]), 
					 .f(SEG_TXT[42]), 
					 .g(SEG_TXT[41]), 
					 .p(SEG_TXT[40]));
	 MyMC14495 M3(.D3(Hexs[15]), 
					 .D2(Hexs[14]), 
					 .D1(Hexs[13]), 
					 .D0(Hexs[12]), 
					 .LE(a3), 
					 .point(point[3]), 
					 .a(SEG_TXT[39]), 
					 .b(SEG_TXT[38]), 
					 .c(SEG_TXT[37]), 
					 .d(SEG_TXT[36]), 
					 .e(SEG_TXT[35]), 
					 .f(SEG_TXT[34]), 
					 .g(SEG_TXT[33]), 
					 .p(SEG_TXT[32]));
	 MyMC14495 M4(.D3(Hexs[19]), 
					 .D2(Hexs[18]), 
					 .D1(Hexs[17]), 
					 .D0(Hexs[16]), 
					 .LE(a4), 
					 .point(point[4]), 
					 .a(SEG_TXT[31]), 
					 .b(SEG_TXT[30]), 
					 .c(SEG_TXT[29]), 
					 .d(SEG_TXT[28]), 
					 .e(SEG_TXT[27]), 
					 .f(SEG_TXT[26]), 
					 .g(SEG_TXT[25]), 
					 .p(SEG_TXT[24]));
	 MyMC14495 M5(.D3(Hexs[23]), 
					 .D2(Hexs[22]), 
					 .D1(Hexs[21]), 
					 .D0(Hexs[20]), 
					 .LE(a5), 
					 .point(point[5]), 
					 .a(SEG_TXT[23]), 
					 .b(SEG_TXT[22]), 
					 .c(SEG_TXT[21]), 
					 .d(SEG_TXT[20]), 
					 .e(SEG_TXT[19]), 
					 .f(SEG_TXT[18]), 
					 .g(SEG_TXT[17]), 
					 .p(SEG_TXT[16]));
	 MyMC14495 M6(.D3(Hexs[27]), 
					 .D2(Hexs[26]), 
					 .D1(Hexs[25]), 
					 .D0(Hexs[24]), 
					 .LE(a6), 
					 .point(point[6]), 
					 .a(SEG_TXT[15]), 
					 .b(SEG_TXT[14]), 
					 .c(SEG_TXT[13]), 
					 .d(SEG_TXT[12]), 
					 .e(SEG_TXT[11]), 
					 .f(SEG_TXT[10]), 
					 .g(SEG_TXT[9]), 
					 .p(SEG_TXT[8]));
	 MyMC14495 M7(.D3(Hexs[31]), 
					 .D2(Hexs[30]), 
					 .D1(Hexs[29]), 
					 .D0(Hexs[28]), 
					 .LE(a7), 
					 .point(point[7]), 
					 .a(SEG_TXT[7]), 
					 .b(SEG_TXT[6]), 
					 .c(SEG_TXT[5]), 
					 .d(SEG_TXT[4]), 
					 .e(SEG_TXT[3]), 
					 .f(SEG_TXT[2]), 
					 .g(SEG_TXT[1]), 
					 .p(SEG_TXT[0]));


endmodule
