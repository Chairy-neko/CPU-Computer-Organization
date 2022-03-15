`timescale 1ns / 1ps

module ARM_INT
    (
     input wire clk,
     input wire reset,            // reset
     input wire INT,        // external interrupt
     input wire eret,             // return to exception address instruction
     input wire [31:0] pc_next,
     output reg [31:0] pc
    );
	
	reg int_req;//interrupt request

    reg [31:0] epc;
	reg [31:0] epc_next;
    
    reg handled;
	reg handled_next;

	//中断触发检测与服务锁存
    always @(posedge reset or posedge INT or posedge handled) begin
        if (reset) int_req <= 1'b0;
        else if (handled) int_req <= 1'b0;
        else int_req <= 1'b1;				//set interrupt request
	end
		
    //断点保护，中断开，关与返回
    always @(posedge clk or posedge reset) begin
        if (reset) 
			begin 
				epc <= 32'h00000000;
				handled <= 1'b0;
			end
        else 
			begin
                epc <= epc_next;
                handled <= handled_next;
			end
	end
	
	//PC输出通路
    always @* begin
            epc_next = epc;
            handled_next = 1'b0;
            pc = pc_next;			//next instruction
            if (eret) pc = epc;		//interrupt return
            else if (int_req)
                begin
                    epc_next = pc_next;
                    handled_next = 1'b1;
                    pc = 32'h4;		//interrupt vector
                end
	end

endmodule
