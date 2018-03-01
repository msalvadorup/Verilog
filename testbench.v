`timescale 1ns/1ps
`define MEM_DEPTH  1024
`define MEM_WIDTH  8
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
`include "mux.v"
//`include "demux.v"
`include "amISink.v"
`include "amIForwarding.v"
`include "fixSinkList.v"
`include "neighborSinkInOtherCluster.v"
`include "findMyBest.v"
`include "betterNeighborsInMyCluster.v"
`include "selectMyAction.v"


module testbench();
	reg clock, nrst, wr_en;
	reg done_learnCost;

	// MEMORY MODULE
	reg [`WORD_WIDTH-1:0] mem_data_in; 
	wire [`WORD_WIDTH-1:0] mem_data_out; 
	wire [`WORD_WIDTH-1:0] address;
	mem mem1(clock, address, wr_en, mem_data_in, mem_data_out);
	
	// MUX MODULE
	reg [2:0] addr_select;
	wire [`WORD_WIDTH-1:0] addr_0, addr_1, addr_2, addr_3, addr_4, addr_5, addr_6, addr_7;
	mux addr_mux(addr_select, address, addr_0, addr_1, addr_2, addr_3, addr_4, addr_5, addr_6, addr_7);
   
	// amISink MODULE
	wire forAggregation1, done_iamSink;
	amISink ais1(clock, nrst, done_learnCost, addr_1, mem_data_out, forAggregation1, done_iamSink);
  
	//amIForwarding MODULE
	reg [`WORD_WIDTH-1:0] MY_NODE_ID, destinationID;
	wire iamForwarding, done_iamForwarding;
	amIForwarding aif1(clock, nrst, done_iamSink, MY_NODE_ID, destinationID, iamForwarding, done_iamForwarding);
	
	//fixSinkList MODULE
	//wire forAggregation, done_fixSinkList;
	//fixSinkList fsl1(clock, nrst, done_iamForwarding, addr_2, wr_en, mem_data_out, done_fixSinkList);

	//neighborSinkInOtherCluster MODULE
	reg [`WORD_WIDTH-1:0] MY_CLUSTER_ID;
	wire forAggregation2, done_neighborSinkInOtherCluster;
	//neighborSinkInOtherCluster nsioc1(clock, nrst, done_fixSinkList, addr_3, mem_data_out, MY_CLUSTER_ID, forAggregation, done_neighborSinkInOtherCluster);
	neighborSinkInOtherCluster nsioc1(clock, nrst, done_iamForwarding, addr_3, mem_data_out, MY_CLUSTER_ID, forAggregation2, done_neighborSinkInOtherCluster);
	
	// findMyBest MODULE
	//reg [`WORD_WIDTH-1:0] MY_BATTERY_STAT;
	//wire [`WORD_WIDTH-1:0] mybest;
	//wire done_findMyBest;
	//findMyBest fmb1(clock, nrst, done_neighborSinkInOtherCluster, addr_4, mem_data_out, MY_BATTERY_STAT, mybest, done_findMyBest);

	// betterNeighborsInMyCluster MODULE
	//wire [`WORD_WIDTH-1:0] betterneighbors, besthop, bestvalue, bestneighborID, nextsinks;
	//wire done_betterNeighborsInMyCluster;
	//betterNeighborsInMyCluster bnimc1(clock, nrst, done_findMyBest, addr_5, mem_data_out, MY_CLUSTER_ID, mybest, betterneighbors, besthop, bestvalue, bestneighborID, nextsinks, done_betterNeighborsInMyCluster);
	
	// winnerPolicy MODULE


	// selectMyAction MODULE
	//wire [`WORD_WIDTH-1:0] action;
	// wire forAggregation3, done_selectMyAction;
	//selectMyAction sma1(clock, nrst, done_winnerPolicy, nexthop, nextsinks, action, forAggregation3, done_selectMyAction);

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

	// MY_NODE_ID, destinationID, MY_CLUSTER_ID
	initial begin
		done_learnCost <= 1;
		MY_NODE_ID <= 3;
		destinationID <= 3;
		MY_CLUSTER_ID <= 1;
	end

	// Address Selection
	always @ (*) begin
		if (done_learnCost && !done_iamSink) begin
			addr_select <= 1;
		end
		/*
		else if (done_iamForwarding && !done_fixSinkList) begin
			addr_select <= 2;
		end
		else if (done_fixSinkList && !done_neighborSinkInOtherCluster) begin
			addr_select <= 3;
		end
		else if (done_neighborSinkInOtherCluster && !done_findMyBest) begin
			addr_select <= 4;
		end
		else if (done_findMyBest && !done_betterNeighborsInMyCluster) begin
			addr_select <= 5;
		end
		else if (done_betterNeighborsInMyCluster && !done_winnerPolicy) begin
			addr_select <= 6;
		end
		else if (done_winnerPolicy && !done_selectMyAction) begin
			addr_select <= 7;
		end
		//*/
		//*
		else if (done_iamForwarding && !done_neighborSinkInOtherCluster) begin
			addr_select <= 3;
		end
		//*/
	end

	always @ (done_iamSink or done_iamForwarding or done_neighborSinkInOtherCluster) begin
		if (done_iamSink && forAggregation1) begin
			nrst = ~nrst;
			#25 nrst = ~nrst;
		end
		if (done_iamForwarding && !iamForwarding) begin
			nrst = ~nrst;
			#25 nrst = ~nrst;
		end
		if (done_neighborSinkInOtherCluster && forAggregation2) begin
			nrst = ~nrst;
			#25 nrst = ~nrst;
		end
	end    
/*
	// Memory testbench
	
	initial begin
		wr_en = 0;
		#5
		mem_data_in = 1;
		address = 0; 
		wr_en = 1;
		#10 wr_en = 0;
	end
//*/
	integer i;
	initial begin
		$dumpfile("testbench.vcd");
		$dumpvars(0, testbench);
		
		for (i=0;i<22;i=i+1) begin
		$display("%X%X", mem1.memory[(i*2)], mem1.memory[(i*2)+1],);
		end

		#50000
		$finish;
	end
endmodule
