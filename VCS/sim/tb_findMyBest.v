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

//`include "memory.v"
//`include "findMyBest.v"

module tb_findMyBest();
	reg clock, nrst;
	reg wr_en;
	// MEMORY MODULE
	wire [`WORD_WIDTH-1:0] mem_data_out;
	reg [`WORD_WIDTH-1:0] mem_data_in; 
	wire [10:0] address;
	mem mem1(clock, address, wr_en, mem_data_in, mem_data_out);
	
	// findMyBest MODULE
	reg [`WORD_WIDTH-1:0] MY_BATTERY_STAT;
	wire [`WORD_WIDTH-1:0] mybest;
	reg done_neighborSinkInOtherCluster, en;
	wire done_findMyBest;
	findMyBest fmb1(clock, nrst, en, done_neighborSinkInOtherCluster, address, mem_data_out, MY_BATTERY_STAT, mybest, done_findMyBest);

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
		#20 en = 1;
		#20 en = 0;
	end

	initial begin
		wr_en = 0;
		mem_data_in = 0;
		done_neighborSinkInOtherCluster = 1;
		MY_BATTERY_STAT = 16'h8000;
	end    

	initial begin
		//$dumpfile("tb_findMyBest.vcd");
		//$dumpvars(0, tb_findMyBest);
		$vcdplusfile("tb_findMyBest.vpd");
		$vcdpluson;
		$sdf_annotate("../mapped/findMyBest_mapped.sdf", findMyBest);
		#10000
		$finish;
	end
endmodule
