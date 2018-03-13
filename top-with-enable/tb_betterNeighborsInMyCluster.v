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
`include "betterNeighborsInMyCluster.v"

module tb_betterNeighborsInMyCluster();
	reg clock, nrst;
	wire wr_en;
	// MEMORY MODULE
	wire [`WORD_WIDTH-1:0] mem_data_in, mem_data_out; 
	wire [10:0] address;
	mem mem1(clock, address, wr_en, mem_data_in, mem_data_out);
	
	// betterNeighborsInMyCluster MODULE
	reg [`WORD_WIDTH-1:0] MY_CLUSTER_ID, mybest;
	wire [`WORD_WIDTH-1:0] besthop, bestvalue, bestneighborID, nextsinks;
	reg done_findMyBest, en;
	wire done_betterNeighborsInMyCluster;
	betterNeighborsInMyCluster bnimc1(clock, nrst, en, done_findMyBest, address, wr_en, mem_data_out, MY_CLUSTER_ID, mybest, besthop, bestvalue, bestneighborID, nextsinks, mem_data_in, done_betterNeighborsInMyCluster);

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

	initial begin
		en = 1;
		done_findMyBest = 1;
		MY_CLUSTER_ID = 1;
		mybest = 16'b0001000101000000;	// 138
	end

	initial begin
		$dumpfile("tb_betterNeighborsInMyCluster.vcd");
		$dumpvars(0, tb_betterNeighborsInMyCluster);

		#10000
		$finish;
	end
endmodule
