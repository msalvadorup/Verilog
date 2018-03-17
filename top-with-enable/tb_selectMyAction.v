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
`include "selectMyAction.v"

module tb_selectMyAction();

	//INPUTS
	reg clock, nrst, start, en;
	reg [`WORD_WIDTH-1:0] nextsinks, nexthop;

	//OUTPUTS
	wire [`WORD_WIDTH-1:0] action, data_out;

	// MEMORY MODULE
	wire [`WORD_WIDTH-1:0] mem_data_in, mem_data_out; 
	wire [10:0] address;
	mem mem1(clock, address, wr_en, mem_data_in, mem_data_out);
	
	//UUT
	selectMyAction sma(clock, nrst, en, start, address, wr_en, nexthop, nextsinks, action, mem_data_in, forAggregation, done);

	// Clock
	initial begin
		clock = 0;
		forever #10 clock = ~clock;
	end

	initial begin
		// Reset
		en = 0;
		nrst = 1;
		#5 nrst = ~nrst;
		#25 nrst = ~nrst;
		#20 en = 1;
		#20 en = 0;

		//TEST: (4) NORMAL DATA, test if right action is selected
		// random hop (explore hop) - not implemented

		// besthop
		#10 nexthop = 16'd51;
		nextsinks = 16'd65;
		start = 1;
		#200

		// nextsink (sink in cluster)
		en = 1;
		start = 0;
		#20 en = 0;
		#10 nexthop = 16'd65;
		nextsinks = 16'd45;
		start = 1;
		#200

		// self (CH role)
		en = 1;
		start = 0;
		#20 en = 0;
		#10 nexthop = 16'd65;
		nextsinks = 16'd65;
		start = 1;
	end

	initial begin
		$dumpfile("tb_selectMyAction.vcd");
		$dumpvars(0, tb_selectMyAction);

		// $vcdplusfile("tb_selectMyAction.vpd");
		// $vcdpluson;
		// $sdf_annotate("../mapped/tb_selectMyAction.sdf", selectMyAction);


		#5000
		$finish;
	end
endmodule
