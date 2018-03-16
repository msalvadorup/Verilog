`timescale 1ns/1ps
`define WORD_WIDTH 16

/* Address List
 * (2/4)        [0x0 - 0x07]        amISink/forAggregation FLAGS
 * (2/16)       [0x8 - 0x27]        knownSinks  
 * (2/16)       [0x28 - 0x47]       worstHops
 * (2/64)       [0x48 - 0xC7]       neighborID
 * (2/64)       [0xC8 - 0x147]      clusterID
 * (2/64)       [0x148 - 0x1C7]     batteryStat
 * (2/64)       [0x1C8 - 0x247]     qValue
 * (2/8*64)     [0x248 - 0x647]     sinkIDs
 * (2/16)       [0x648 - 0x667]     HCM
 * (2/16)       [0x668 - 0x687]     betterneighbors
 * 
 * (2/1)        [0x688 - 0x689]     knownSinkCount
 * (2/1)        [0x68A - 0x68B]     neighborCount
 * (2/1)        [0x68C - 0x68D]     betterneighborCount
 * (2/64)       [0x68E - 0x70D]     sinkIDCount
 */

`include "memory.v"
`include "reward.v"

module tb_reward();

	//INPUTS
	reg clock, nrst, start, en;
	reg [`WORD_WIDTH-1:0] MY_NODE_ID, MY_CLUSTER_ID, action, besthop, data_in, data_out;

	// MEMORY MODULE
	wire [`WORD_WIDTH-1:0] mem_data_in, mem_data_out; 
	wire [10:0] address;
	mem mem1(clock, address, wr_en, mem_data_in, mem_data_out);
	

	//UUT
	wire [`WORD_WIDTH-1:0] reward_out;
	reward r1(clock, nrst, en, start, MY_NODE_ID, MY_CLUSTER_ID, action, besthop, address, mem_data_out, reward_out, done);

	// Clock
	initial begin
		clock = 0;
		forever #10 clock = ~clock;
	end

	// Constants
	initial begin
		MY_NODE_ID = 16'hF365;
		MY_CLUSTER_ID = 16'h4888;
		besthop = 16'd3;
		action = 16'd2;
	end

	// Reset
	initial begin
		en = 0;
		nrst = 1;
		#5 nrst = ~nrst;
		#25 nrst = ~nrst;
		#20 en = 1;
		#20 en = 0;
		start = 1;

		//TEST: 1 Normal data, check reward_out

	end


	initial begin
		$dumpfile("tb_reward.vcd");
		$dumpvars(0, tb_reward);

		// $vcdplusfile("tb_reward.vpd");
		// $vcdpluson;
		// $sdf_annotate("../mapped/tb_reward.sdf", reward);


		#5000
		$finish;
	end
endmodule
