`timescale 1ns/1ps
`define MEM_DEPTH  2048
`define MEM_WIDTH  8
`define WORD_WIDTH 16

`include "top.v"

module tb_top();	
	reg clock, nrst, en;

	// Top Module Instantiation
	top t1(clock, nrst);

	// Clock
	initial begin
		clock = 0;
		forever #10 clock = ~clock;
	end

	// Reset
	initial begin
		nrst = 1;
		#5 nrst = ~nrst;
		#25 nrst = ~nrst;
	end

	// Enable
	initial begin
		en = 1;
		#21 en = 0;
	end

	integer i;
	initial begin
		$dumpfile("tb_top.vcd");
		$dumpvars(0, tb_top);
		
		for (i=0;i<22;i=i+1) begin
		$display("%X%X", t1.mem1.memory[(i*2)], t1.mem1.memory[(i*2)+1],);
		end

		#10000
		$finish;
	end
endmodule