`timescale 1ns/1ps
`define WORD_WIDTH 16

//`include "top.v"

module tb_top();	
	reg clock, nrst, en;
	reg [`WORD_WIDTH-1:0] fsourceID, fbatteryStat, fValue, fclusterID, fdestinationID;
	wire done_reward;
	wire [`WORD_WIDTH-1:0] reward_out;

	// Top Module Instantiation
	top t1(clock, nrst, en, fsourceID, fbatteryStat, fValue, fclusterID, fdestinationID, reward_out, done_reward);

	// Clock
	initial begin
		clock = 0;
		forever #10 clock = ~clock;
	end

	// Reset
	initial begin
		en = 0;
		nrst = 1;
		#5 nrst = ~nrst;
		#25 nrst = ~nrst;

		#5 en = 1;
		#20 en = ~en;
	end

	initial begin
		// new neighbor
		fsourceID = 15;
		fbatteryStat = 16'h5999;//16'b0100000000000000; // 0.5
		fValue = 16'b0000011010000000; // 16'h4C4; 
		fclusterID = 1;//2;
		fdestinationID = 3;
/*
		// existing neighbor
		fsourceID = 1;
		fbatteryStat = 16'b0010000000000000; // 0.25
		fValue = 16'b0000011010000000; // idk
		fclusterID = 1;
		fdestinationID = 3;
*/
	end

	initial begin
		//$dumpfile("tb_top.vcd");
		//$dumpvars(0, tb_top);
        	$vcdplusfile("tb_top.vpd"); //$dumpfile("tb_randomGenerator.vcd");
        	$vcdpluson;

		#10000
		$finish;
	end
endmodule
