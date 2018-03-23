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
`include "rewardn.v"
//`include "topfin.v"
//`include "mem.v"

module top(clock, nrst, en, address, wr_en, mem_data_in, mem_data_out, fsourceID, fbatteryStat, fValue, fclusterID, fdestinationID, isAggregated, MY_BATTERY_STAT,
	out_sourceID, out_clusterID, out_batteryStat, out_Value, out_destinationID, forAggregation, done);

	//I/O except memory
	input clock, nrst, en, isAggregated;
	input [`WORD_WIDTH-1:0] fsourceID, fbatteryStat, fValue, fclusterID, fdestinationID, MY_BATTERY_STAT;
	output forAggregation, done;
	output [`WORD_WIDTH-1:0] out_sourceID, out_clusterID, out_batteryStat, out_Value, out_destinationID;

	// MEMORY MODULE CONNECTIONS
	input [`WORD_WIDTH-1:0] mem_data_out;
	output wr_en;
	output [10:0] address;
	output [`WORD_WIDTH-1:0] mem_data_in;

	//Output buffer registers
	reg forAggregation_buf, done_buf;
	assign done = done_buf;
	assign forAggregation = forAggregation_buf;

	//Status Registers
	reg [`WORD_WIDTH-1:0] MY_CLUSTER_ID, MY_NODE_ID;

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
	reg start_learnCosts;
	reg [`WORD_WIDTH-1:0] initial_epsilon;
	learnCosts lc1(clock, nrst, start_learnCosts, fsourceID, fbatteryStat, fValue, fclusterID, initial_epsilon, addr_0, wren_0, mem_data_out, mdi_0, done_learnCosts);

	// amISink MODULE
	wire forAggregation1, done_iamSink;
	reg start_amISink;
	amISink ais1(clock, nrst, en, start_amISink, addr_1, wren_1, mem_data_out, mdi_1, forAggregation1, done_iamSink);
  
	// amIDestination MODULE
	//reg [`WORD_WIDTH-1:0] 
	wire iamDestination, done_iamDestination;
	reg start_amIDestination;
	amIDestination aif1(clock, nrst, en, start_amIDestination, MY_NODE_ID, fdestinationID, iamDestination, done_iamDestination);
	
	// fixSinkList MODULE
	wire done_fixSinkList;
	reg start_fixSinkList;
	fixSinkList fsl1(clock, nrst, en, start_fixSinkList, addr_2, wren_2, mem_data_out, mdi_2, done_fixSinkList);

	// neighborSinkInOtherCluster MODULE
	wire forAggregation2, done_neighborSinkInOtherCluster;
	reg start_neighborSinkInOtherCluster;
	neighborSinkInOtherCluster nsioc1(clock, nrst, en, start_neighborSinkInOtherCluster, addr_3, wren_3, mem_data_out, MY_CLUSTER_ID, mdi_3, forAggregation2, done_neighborSinkInOtherCluster);
	
	// findMyBest MODULE
	//reg [`WORD_WIDTH-1:0] MY_BATTERY_STAT;
	wire [`WORD_WIDTH-1:0] mybest;
	wire done_findMyBest;
	reg start_findMyBest;
	findMyBest fmb1(clock, nrst, en, start_findMyBest, addr_4, mem_data_out, MY_BATTERY_STAT, mybest, done_findMyBest);
	
	// betterNeighborsInMyCluster MODULE
	wire [`WORD_WIDTH-1:0] besthop, bestvalue, bestneighborID, nextsinks;
	wire done_betterNeighborsInMyCluster;
	reg start_betterNeighborsInMyCluster;
	betterNeighborsInMyCluster bnimc1(clock, nrst, en, start_betterNeighborsInMyCluster, addr_5, wren_5, mem_data_out, MY_CLUSTER_ID, mybest, besthop, bestvalue, bestneighborID, nextsinks, mdi_5, done_betterNeighborsInMyCluster);
	
	// winnerPolicy MODULE
	// RNG MODULE
	wire en_rng, done_rng;
	wire [`WORD_WIDTH-1:0] rng_out, rng_out_4bit;
	randomGenerator rng1(clock, nrst, rng_out, rng_out_4bit, en_rng, done_rng);

	// Modulo Module
	wire [`WORD_WIDTH-1:0] rng_address, betterNeighborCount, which;
	wire done_rngAddress;
	//reg start_rngAddress;
	rngAddress rad1(clock, nrst, start_rngAddress, betterNeighborCount, which, rng_address, done_rngAddress);

	// WinnerPolicy Module
	reg [`WORD_WIDTH-1:0] epsilon_step;
	wire [`WORD_WIDTH-1:0] nexthop;
	wire done_winnerPolicy;
	reg start_winnerPolicy;
	winnerPolicy wp1(clock, nrst, en, start_winnerPolicy, mybest, besthop, bestvalue, bestneighborID, MY_NODE_ID,
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
	reg start_selectMyAction;
	selectMyAction sma1(clock, nrst, en, start_selectMyAction, addr_7_0, wren_7, nexthop, nextsinks, action, mdi_7, forAggregation3, done_selectMyAction);

	// reward MODULE
	assign out_sourceID = MY_NODE_ID;
	assign out_clusterID = MY_CLUSTER_ID;
	reg start_reward;
	reward r1(clock, nrst, en, start_reward, action, besthop, addr_7_1, mem_data_out,  out_Value, out_batteryStat, out_destinationID, done_reward);
	
	// reg [2:0] state;
	// always @ (posedge clock) begin
	// 	if (!nrst) begin
	// 		initial_epsilon = 7;
	// 		wren_4 <= 0;		
	// 		mdi_4 <= 0;
	// 		//MY_BATTERY_STAT <= 16'h8000;
	// 		MY_NODE_ID <= 3;
	// 		MY_CLUSTER_ID <= 1;
	// 		epsilon_step = 1;
	// 		state <= 0;
	// 		start_amIDestination_buf <= 0;
	// 		start_findMyBest_buf <= 0;
	// 		start_reward_buf <= 0;
	// 		start_amISink_buf <= 0;
	// 		forAggregation_buf <= 0;
	// 		done_buf <= 0;
	// 	end
	// 	else if(forAggregation) begin
	// 		done_buf <= 1'd1;
	// 	end
	// 	else begin
	// 		case (state)
	// 			0: begin
	// 				if (en) begin
	// 					initial_epsilon = 7;
	// 					wren_4 <= 0;
	// 					mdi_4 <= 0;
	// 					//MY_BATTERY_STAT <= 16'h5999;//16'h4000; // 16'h8000;
	// 					MY_NODE_ID <= 3;
	// 					MY_CLUSTER_ID <= 1;
	// 					epsilon_step = 1;
	// 					start_amIDestination_buf <= 0;
	// 					start_findMyBest_buf <= 0;
	// 					start_reward_buf <= 0;
	// 					start_amISink_buf <= 0;
	// 					forAggregation_buf <= 0;
	// 					done_buf <= 0;

	// 				end
	// 				else state <= 0;
	// 			end
	// 			1: begin
	// 				if (done_selectMyAction) state <= 0;
	// 				else state <= 1;
	// 			end
	// 			default: state <= 0;
	// 		endcase
	// 	end
	// end
reg [3:0] state; 
always @(posedge clock) begin
	if (!nrst) begin
			initial_epsilon = 7;
			wren_4 <= 0;		
			mdi_4 <= 0;
			epsilon_step = 1;
			start_learnCosts <= 0;
			start_amISink <= 0;
			start_amIDestination <= 0;
			start_fixSinkList <= 0;
			start_neighborSinkInOtherCluster <= 0;
			start_findMyBest <= 0;
			start_betterNeighborsInMyCluster <= 0;
			start_winnerPolicy <= 0;
			start_selectMyAction <= 0;
			start_reward <= 0;
			MY_CLUSTER_ID  <= 1; 
			MY_NODE_ID <= 3;
			forAggregation_buf <= 0;
			done_buf <= 0;
			state <= 4'd0;
		
	end
	else begin
		case(state)
			0: begin //IDLE
				if(en) begin
					state <= 4'd1;
					initial_epsilon = 7;
					wren_4 <= 0;		
					mdi_4 <= 0;
					epsilon_step = 1;
					start_learnCosts <= 0;
					start_amISink <= 0;
					start_amIDestination <= 0;
					start_fixSinkList <= 0;
					start_neighborSinkInOtherCluster <= 0;
					start_findMyBest <= 0;
					start_betterNeighborsInMyCluster <= 0;
					start_winnerPolicy <= 0;
					start_selectMyAction <= 0;
					start_reward <= 0;
					MY_CLUSTER_ID  <= 1; 
					MY_NODE_ID <= 3;
					forAggregation_buf <= 0;
					done_buf <= 0;
				end
				else state <= 0;
			end
			4'd1: begin //Check isAggregated
				if(isAggregated) begin
					done_buf <= 1;
					state <= 4'd0;//100;
				end
				else begin
					start_learnCosts <= 1;
					addr_select = 3'd0;
					wr_select = 3'd0;
					state <= 4'd2;
				end
			end
			4'd2: begin //learnCosts
				if(done_learnCosts) begin

					start_amISink <= 1;
					addr_select = 3'd1;
					wr_select = 3'd1;
					state <= 4'd3;
				end
				else begin
					state <= 4'd2;
					start_learnCosts <= 0;
				end
			end
			4'd3: begin //amISink
				if(done_iamSink) begin
					if(forAggregation1) begin
						forAggregation_buf <= 1;
						done_buf <= 1;
						state <= 4'd0;//101; 
					end
					else begin
						start_amIDestination <= 1;
						state <= 4'd4;
					end
				end
				else begin 
					state <= 4'd3;
					start_amISink <= 0;
				end
			end
			4'd4: begin //amIDestination
				if(done_iamDestination) begin
					start_fixSinkList <= 1;
					state <= 4'd5;
					addr_select = 3'd2;
					wr_select = 3'd2;
				end
				else begin
					state <= 4'd4;
					start_amIDestination <= 0;
				end
			end
			4'd5: begin //fixSinkList
				if(done_fixSinkList) begin
					start_neighborSinkInOtherCluster <= 1;
					state <= 4'd6;
					addr_select = 3'd3;
					wr_select = 3'd3;
				end
				else begin 
					state <= 4'd5;
					start_fixSinkList <= 0;
				end
			end
			4'd6: begin //neighborSinkInOtherCluster
				if(done_neighborSinkInOtherCluster) begin
					if(forAggregation2) begin
						forAggregation_buf <= 1;
						done_buf <= 1;
						state <= 4'd0;//101;
					end
					else begin
						start_findMyBest <= 1;
						state <= 4'd7;
						addr_select = 3'd4;
					end
				end
				else begin 
					state <= 4'd6;
					start_neighborSinkInOtherCluster <= 0;
				end
			end
			4'd7: begin //findMyBest
				if(done_findMyBest) begin
					start_betterNeighborsInMyCluster <= 1;
					state <= 4'd8;
					addr_select = 3'd5;
					wr_select = 3'd5;
				end
				else begin
					start_findMyBest <= 0;
					state <= 4'd7;
				end
			end
			4'd8: begin //betterNeighbors
				if(done_betterNeighborsInMyCluster) begin
					start_winnerPolicy <= 1;
					state <= 4'd9;
					addr_select = 3'd6;
				end
				else begin 
					state <= 4'd8;
					start_betterNeighborsInMyCluster <= 0;
				end
			end
			4'd9: begin //winnerPolicy
				if(done_winnerPolicy) begin
					start_selectMyAction <= 1;
					state <= 10;
					addr_select = 3'd7;
					wr_select = 3'd7;
				end
				else begin 
					state <= 4'd9;
					start_winnerPolicy <= 0;
				end
			end
			4'd10: begin //selectMyAction
				if(done_selectMyAction) begin
					if(forAggregation3) begin
						forAggregation_buf <= 1;
						done_buf <= 1;
						state <= 4'd0;//101;
					end
					else begin
						start_reward <= 1;
						state <= 4'd11;
					end
				end
				else begin
					state <= 4'd10;
					start_selectMyAction <= 0;
				end
			end
			4'd11: begin //reward
				if(done_reward) begin
					done_buf <= 1;
					state <= 4'd0;
				end
				else begin
					state <= 4'd11;
					start_reward <= 0;
				end
			end
			// 100: begin //Aggregated Packet 
				
			// end
			// 101: begin //forAggregation
				
			// end
		endcase
	end
end

endmodule
