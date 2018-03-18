`timescale 1ns/1ps
`define MEM_DEPTH  2048
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

/*
 *	Missing Features:
 *		1. Saan ilalagay yung mga unique ID at mga global variable ng bawat node?
			a. MY_NODE_ID
			b. CLUSTER_ID
			c. epsilon_step
			d. epsilon (okay)
			
			Suggestion: 
				1. Ilagay sa memory (oooops)
				2. Ilagay sa registers at initialize sa nrst or enable
 */

`include "mux_11bit.v"
`include "mux_16bit.v"
`include "mux_1bit.v"
`include "learnCosts.v"
`include "amISink.v"
`include "amIDestination.v"
`include "fixSinkList.v"
`include "neighborSinkInOtherCluster.v"
`include "findMyBest.v"
`include "betterNeighborsInMyCluster.v"
`include "randomGenerator.v"
`include "winnerPolicy.v"
`include "rngAddress.v"
`include "selectMyAction.v"
`include "reward.v"


module top(clock, nrst, en, address, wr_en, mem_data_in, mem_data_out, fsourceID, fbatteryStat, fValue, fclusterID, fdestinationID, reward_out, done_reward);
	input clock, nrst, en;
	input [`WORD_WIDTH-1:0] fsourceID, fbatteryStat, fValue, fclusterID, fdestinationID;

	// MEMORY MODULE CONNECTIONS
	input [`WORD_WIDTH-1:0] mem_data_out;
	output [10:0] address;
	output [`WORD_WIDTH-1:0] mem_data_in;
	output wr_en;

	// MUX MODULE
	reg [2:0] addr_select, wr_select;
	
	wire [10:0] addr_0, addr_1, addr_2, addr_3, addr_4, addr_5, addr_6, addr_7;
	mux_11bit addr_mux(addr_select, address, addr_0, addr_1, addr_2, addr_3, addr_4, addr_5, addr_6, addr_7);

	wire [`WORD_WIDTH-1:0] mdi_0, mdi_1, mdi_2, mdi_3, mdi_5, mdi_6, mdi_7;
	reg [`WORD_WIDTH-1:0] mdi_4;
	mux_16bit mdi_mux(addr_select, mem_data_in, mdi_0, mdi_1, mdi_2, mdi_3, mdi_4, mdi_5, mdi_6, mdi_7);
	
	wire wren_0, wren_1, wren_2, wren_3, wren_5, wren_6, wren_7;
	reg wren_4;
	mux_1bit wren_mux(wr_select, wr_en, wren_0, wren_1, wren_2, wren_3, wren_4, wren_5, wren_6, wren_7);

	// learnCosts MODULE
	wire done_learnCosts;
	reg [`WORD_WIDTH-1:0] initial_epsilon;
	learnCosts lc1(clock, nrst, en, fsourceID, fbatteryStat, fValue, fclusterID, initial_epsilon, addr_0, wren_0, mem_data_out, mdi_0, done_learnCosts);
	//*/
	// amISink MODULE
	wire forAggregation1, done_iamSink;
	amISink ais1(clock, nrst, en, done_learnCosts, addr_1, wren_1, mem_data_out, mdi_1, forAggregation1, done_iamSink);
  
	// amIDestination MODULE
	reg [`WORD_WIDTH-1:0] MY_NODE_ID;
	wire iamDestination, done_iamDestination;
	amIDestination aif1(clock, nrst, en, done_iamSink, MY_NODE_ID, fdestinationID, iamDestination, done_iamDestination);
	
	// fixSinkList MODULE
	wire done_fixSinkList;
	fixSinkList fsl1(clock, nrst, en, done_iamDestination, addr_2, wren_2, mem_data_out, mdi_2, done_fixSinkList);

	// neighborSinkInOtherCluster MODULE
	reg [`WORD_WIDTH-1:0] MY_CLUSTER_ID;
	wire forAggregation2, done_neighborSinkInOtherCluster;
	neighborSinkInOtherCluster nsioc1(clock, nrst, en, done_fixSinkList, addr_3, wren_3, mem_data_out, MY_CLUSTER_ID, mdi_3, forAggregation2, done_neighborSinkInOtherCluster);
	
	// findMyBest MODULE
	reg [`WORD_WIDTH-1:0] MY_BATTERY_STAT;
	wire [`WORD_WIDTH-1:0] mybest;
	wire done_findMyBest;
	findMyBest fmb1(clock, nrst, en, done_neighborSinkInOtherCluster, addr_4, mem_data_out, MY_BATTERY_STAT, mybest, done_findMyBest);
	
	// betterNeighborsInMyCluster MODULE
	wire [`WORD_WIDTH-1:0] besthop, bestvalue, bestneighborID, nextsinks;
	wire done_betterNeighborsInMyCluster;
	betterNeighborsInMyCluster bnimc1(clock, nrst, en, done_findMyBest, addr_5, wren_5, mem_data_out, MY_CLUSTER_ID, mybest, besthop, bestvalue, bestneighborID, nextsinks, mdi_5, done_betterNeighborsInMyCluster);
	
	// winnerPolicy MODULE

	// RNG MODULE
	wire en_rng, done_rng;
	wire [`WORD_WIDTH-1:0] rng_out, rng_out_4bit;
	randomGenerator rng1(clock, nrst, rng_out, rng_out_4bit, en_rng, done_rng);

	// Modulo Module
	wire [`WORD_WIDTH-1:0] rng_address, betterNeighborCount, which;
	wire start_rngAddress, done_rngAddress;
	rngAddress rad1(clock, nrst, start_rngAddress, betterNeighborCount, which, rng_address, done_rngAddress);

	// WinnerPolicy Module
	reg [`WORD_WIDTH-1:0] epsilon_step;
	wire [`WORD_WIDTH-1:0] nexthop;
	wire done_winnerPolicy;
	winnerPolicy wp1(clock, nrst, en, done_betterNeighborsInMyCluster, mybest, besthop, bestvalue, bestneighborID, MY_NODE_ID,
						addr_6, mem_data_out, wren_6, mdi_6, epsilon_step, nexthop, done_winnerPolicy, en_rng, rng_out, rng_out_4bit, 
						rng_address, start_rngAddress, done_rngAddress, betterNeighborCount, which
	);

	// reward ~ selectMyAction Mux Address
	reg [10:0] addr_7_buf;
	wire [10:0] addr_7_1, addr_7_0;
	wire done_selectMyAction;
	always @ (*) begin
		if (done_selectMyAction)
			addr_7_buf = addr_7_1;	// reward 
		else
			addr_7_buf = addr_7_0;	// selectMyAction
	end
	assign addr_7 = addr_7_buf;

	// selectMyAction MODULE
	wire [`WORD_WIDTH-1:0] action;
	wire forAggregation3;
	selectMyAction sma1(clock, nrst, en, done_winnerPolicy, addr_7_0, wren_7, nexthop, nextsinks, action, mdi_7, forAggregation3, done_selectMyAction);
	//*/

	// reward MODULE
	output done_reward;
	output [`WORD_WIDTH-1:0] reward_out;
	reward r1(clock, nrst, en, done_selectMyAction, MY_NODE_ID, MY_CLUSTER_ID, action, besthop, addr_7_1, mem_data_out, reward_out, done_reward);

	reg [2:0] state;
	always @ (posedge clock) begin
		if (!nrst) begin
			initial_epsilon = 7;
			wren_4 <= 0;		
			mdi_4 <= 0;
			MY_BATTERY_STAT <= 16'h8000;
			MY_NODE_ID <= 3;
			MY_CLUSTER_ID <= 1;
			epsilon_step = 1;
			state <= 0;
		end
		else begin
			case (state)
				0: begin
					if (en) begin
						initial_epsilon = 7;
						wren_4 <= 0;
						mdi_4 <= 0;
						MY_BATTERY_STAT <= 16'h5999;//16'h4000; // 16'h8000;
						MY_NODE_ID <= 3;
						MY_CLUSTER_ID <= 1;
						epsilon_step = 1;
						state <= 1;
					end
					else state <= 0;
				end
				1: begin
					if (done_selectMyAction) state <= 0;
					else state <= 1;
				end
				default: state <= 0;
			endcase
		end
	end

	// Address Selection
	always @ (*) begin

		if (!done_learnCosts) begin
			addr_select = 3'd0;
			wr_select = 3'd0;
		end

		else if (done_learnCosts && !done_iamDestination) begin //!done_iamSink) begin
			addr_select = 3'd1;
			wr_select = 3'd1;
		end

		else if (done_iamDestination && !done_fixSinkList) begin
			addr_select = 3'd2;
			wr_select = 3'd2;
		end

		else if (done_fixSinkList && !done_neighborSinkInOtherCluster) begin
			addr_select = 3'd3;
			wr_select = 3'd3;
		end
		
		else if (done_neighborSinkInOtherCluster && !done_findMyBest) begin
			addr_select = 3'd4;
		end
		
		else if (done_findMyBest && !done_betterNeighborsInMyCluster) begin
			addr_select = 3'd5;
			wr_select = 3'd5;
		end
		
		else if (done_betterNeighborsInMyCluster && !done_winnerPolicy) begin
			addr_select = 3'd6;
		end
		
		else if (done_winnerPolicy && !done_reward) begin
			addr_select = 3'd7;
			wr_select = 3'd7;
		end
	end

endmodule

