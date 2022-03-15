`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:54:13 06/18/2020 
// Design Name: 
// Module Name:    IP2MCPU 
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
module IP2MCPU(input RSTN,
               input clk_50mhz,
               input [3:0]BTN_Y,
               output [4:0]BTN_X,
			   input [15:0]SW,
			   output seg_clk,
               output seg_sout,
               output SEG_PEN,
               output seg_clrn,
			   output led_clk,
			   output led_sout,
               output LED_PEN,
               output led_clrn,
               output CR,
               output RDY,
               output readn
    );
	wire Clk_CPU, rst, clk_m, mem_w, data_ram_we, GPIOf0000000_we, GPIOe0000000_we, counter_we;
	wire counter_OUT0, counter_OUT1, counter_OUT2;
	wire Key_ready;
	wire [1:0]Counter_set;
	wire MIO_ready;
	wire CPU_MIO;
	wire [31:0] Addr_out, Data_in, Data_out, ram_data_in, ram_data_out, Counter_out, PC, Disp_num, CPU2IO, Div, Ai, Bi;
	wire [4:0] state, Key_out;
	wire [9:0] ram_addr;
	wire [3:0] BTN_OK,Pulse;
	wire [15:0] SW_OK, LED_out;
	wire [7:0] point_out, LE_out, blink;
	
	//assign MIO_ready=~button_out[1];//???????????????????
	assign SW2=SW_OK[2];
	//assign LED={led_out[7]|Clk_CPU, led_out[6:0]};
	assign clk_m=~clk_50mhz;
	assign clk_io=~Clk_CPU;
	
	Multi_CPU U1(.clk(Clk_CPU),
				  .reset(rst), 
				  .MIO_ready(1'b1),   
				  .inst_out(inst),
				  .INT(counter_OUT0),
				  .Data_in(Data_in),
				  .mem_w(mem_w),
				  .PC_out(PC),
				  .state(state),           //Test
				  .Addr_out(Addr_out),
				  .Data_out(Data_out),         
				  .CPU_MIO()
				  );
				  
	RAM_B U3(.clka(clk_50mhz),
			 .wea(data_ram_we),
			 .addra(ram_addr),
			 .dina(ram_data_in),
			 .douta(ram_data_out)
			 );
	
	MIO_BUS U4(.clk(clk_50mhz),
			   .rst(rst),
			   .BTN(BTN_OK),
			   .SW(SW_OK),
			   .mem_w(mem_w),
			   .addr_bus(Addr_out),
			   .Cpu_data4bus(Data_in),
			   .Cpu_data2bus(Data_out),
			   .ram_data_in(ram_data_in),
			   .data_ram_we(data_ram_we),
			   .ram_addr(ram_addr),
			   .ram_data_out(ram_data_out),
			   .Peripheral_in(CPU2IO),         //??????????????
			   .GPIOe0000000_we(GPIOe0000000_we),
			   .GPIOf0000000_we(GPIOf0000000_we),
			   .led_out(LED_out),
			   .counter_out(Counter_out),
			   .counter2_out(counter_OUT2),
			   .counter1_out(counter_OUT1),
			   .counter0_out(counter_OUT0),
			   .counter_we(counter_we)
			   );
	
		Multi_8CH32 U5(.clk(clk_io),
							.rst(rst),
							.EN(GPIOe0000000_we),
							.Test(SW_OK[7:5]),
							.point_in({Div[31:0],Div[31:0]}),
							.blink_in({64{1'b0}}),
							.Data0(CPU2IO),
							.Test_data1({2'b00,PC[31:2]}),
							.Test_data2(inst),
							.Test_data3(Counter_out),
							.Test_data4(Addr_out),
							.Test_data5(Data_out),
							.Test_data6(Data_in),
							.Test_data7(PC),
							.Disp_num(Disp_num),
							.point_out(point_out),
							.blink_out(LE_out)
							);
							
		SSeg7_Dev U6(.clk(clk_50mhz),
				.rst(rst),
				.Start(Div[20]),
				.SW0(SW_OK[0]),
				.flash(Div[25]),
				.Hexs(Disp_num),
				.point(point_out),
				.LES(LE_out),
				.seg_clk(seg_clk),
				.seg_out(seg_sout),
				.SEG_PEN(SEG_PEN),
				.seg_clrn(seg_clrn)
				);
							
		SPIO U7(.clk(clk_io),
					  .rst(rst),
					  .EN(GPIOf0000000_we),
					  .Start(Div[20]),
					  .P_Data(CPU2IO),
					  .counter_set(Counter_set),
					  .LED_out(LED_out),
					  .GPIOf0(),
					  .led_clk(led_clk),
					  .led_sout(led_sout),
					  .LED_PEN(LED_PEN),
					  .led_clrn(led_clrn)
					 );
					 
		clk_div U8(.clk(clk_50mhz),
					.rst(rst),
					.SW2(SW2),
					.clkdiv(Div),
					.Clk_CPU(Clk_CPU)
				);
				
		SAnti_jitter U9(.clk(clk_50mhz),
					.rst(rst),
					.RSTN(RSTN),
					.Key_y(BTN_Y),
					.Key_x(BTN_X),
					.SW(SW),
					.readn(readn),
					.CR(CR),
					.Key_out(Key_out),
					.Key_ready(RDY),
					.pulse_out(Pulse),
					.BTN_OK(BTN_OK),
					.SW_OK(SW_OK)
					);
					
		SEnter_2_32 M4 (
					 .clk(clk_50mhz), 
					 .BTN(BTN_OK[2:0]), 
					 .Ctrl({SW_OK[7:5],SW_OK[15],SW_OK[0]}), 
					 .D_ready(RDY), 
					 .Din(Key_out), 
					 .readn(readn), 
					 .Ai(Ai), 
					 .Bi(Bi), 
					 .blink(blink)
					 );
									
		Counter_x U10(.clk(clk_io),
					.clk0(Div[8]),
					.clk1(Div[9]),
					.clk2(Div[11]),
					.counter_we(counter_we),
					.counter_val(CPU2IO),
					.counter_ch(Counter_set),
					.counter0_OUT(counter_OUT0),
					.counter1_OUT(counter_OUT1),
					.counter2_OUT(counter_OUT2),
					.counter_out(Counter_out)
					);
		
endmodule