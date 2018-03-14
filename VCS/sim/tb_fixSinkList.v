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
//`include "fixSinkList.v"

module tb_fixSinkList();
	reg clock, nrst;
	wire wr_en;

	// MEMORY MODULE
	wire [`WORD_WIDTH-1:0] mem_data_in, mem_data_out; 
	wire [10:0] address;
	mem mem1(clock, address, wr_en, mem_data_in, mem_data_out);
	
	reg done_iamDestination, en;
	wire done_fixSinkList;
	fixSinkList fsl1(clock, nrst, en, done_iamDestination, address, wr_en, mem_data_out, mem_data_in, done_fixSinkList);

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
		#50 en = 1;
		#20 en = 0;
	end

	initial begin
		done_iamDestination = 1;
	end

	initial begin
		//$dumpfile("tb_fixSinkList.vcd");
		//$dumpvars(0, tb_fixSinkList);
		$vcdplusfile("tb_fixSinkList.vpd");
		$vcdpluson;
		$sdf_annotate("../mapped/fixSinkList_mapped.sdf", fixSinkList);
		#5000
		$finish;
	end
endmodule
