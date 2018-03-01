`timescale 1ns/1ps
`define MEM_DEPTH  1024
`define MEM_WIDTH  8
`define WORD_WIDTH 16
`define HCM_LENGTH 11

/* States
 * 0: Check if neighbor is in my cluster
 * 1: Check if neighbor is still alive, get batteryStat
 * 2: Check if neighbor qValue <= mybest (betterneighbors)
 * 3: Compute bestvalue
 * 4: Get neighborID
 * 5: Get knownSinks and check if I have neighbor sinks (nextsinks)
 * 6: Get bestneighborID
 * 
 * Note: Gagawin pang float yung mga values
 */

module betterNeighborsInMyCluster(clock, nrst, start, address, wr_en, data_in, MY_CLUSTER_ID, mybest, besthop, bestvalue, bestneighborID, nextsinks, data_out, done);
	input clock, nrst, start;
	input [`WORD_WIDTH-1:0] data_in, MY_CLUSTER_ID;
	input [`WORD_WIDTH-1:0] mybest; // float
	output done, wr_en;
	output [`WORD_WIDTH-1:0] address, data_out;
	output [`WORD_WIDTH-1:0] besthop, bestneighborID, nextsinks;
	output [`WORD_WIDTH-1:0] bestvalue; // float

	// Registers
	reg done_buf, wr_en_buf;
	reg [`WORD_WIDTH-1:0] address_count, data_out_buf, i, j, k;
	reg [`WORD_WIDTH-1:0] neighborID, knownSinks, betterneighbors, betterneighborCount, besthop_buf, bestneighborID_buf, nextsinks_buf;
	reg [`WORD_WIDTH-1:0] BATTERY_THRESHOLD, batteryStat, qValue, bestvalue_buf; // float
	reg [3:0] state;

	always @ (posedge clock) begin
		if (!nrst) begin
			done_buf <= 0;
			address_count <= 16'hC8; // clusterID address
			betterneighbors <= 0;
			betterneighborCount <= 0;
			besthop_buf <= 16'd65;
			bestvalue_buf  <= 16'hFFFE; //float
			BATTERY_THRESHOLD <= 0; // float (0.01)
			nextsinks_buf <= 16'd65;
			state <= 0;
			i <= 0;
			j <= 0;
			k <= 0;
		end
		else begin
			case (state)
				0: begin
					if (start) begin
						state = 1;
						address_count <= 16'hC8; // clusterID address
					end
					else state = 0;
				end

				1: begin
					if (MY_CLUSTER_ID != data_in) begin
						i = i + 1;
					end
					else begin
						state = 2;
						address_count = 16'h148 + 2*i; // batteryStat address
					end
				end

				2: begin
					batteryStat = data_in; 
					
					if (BATTERY_THRESHOLD > batteryStat) begin
						i = i + 1;
						state = 1;
						address_count = 16'hC8 + 2*i; // clusterID address
					end
					else begin
						state = 3;
						address_count = 16'h1C8 + 2*i; // qValue address
					end
				end

				3: begin
					qValue = data_in;
					
					if (qValue <= mybest) begin
						betterneighborCount = betterneighborCount + 1;
						state = 4;
						data_out_buf = betterneighbors;
						address_count = 16'h668 + 2*(betterneighborCount-1);
						wr_en_buf = 1;
					end
					else begin
						state = 6;
						address_count = 16'h48 + 2*i; // neighborID address
					end
				end

				4: begin
					wr_en_buf = 0;
					state = 5;
					k = $ceil((`HCM_LENGTH-1) * batteryStat); // float multiplication

					if (k >= `HCM_LENGTH)
						k = `HCM_LENGTH - 1;
					
					address_count = 16'h648 + 2*k; // HCM address
				end
				
				5: begin
					qValue = qValue * data_in; // float multiplication
					
					if (qValue < bestvalue_buf) begin
						besthop_buf = i;
						bestvalue_buf = qValue;
					end

					state = 6;
					address_count = 16'h48 + 2*i; // neighborID address
				end

				6: begin
					neighborID = data_in;
					state = 7;
					address_count = 16'h8 + 2*j; // knownSinks address
				end

				7: begin
					knownSinks = data_in;
					// $display("%d,%d,%d,%d,%d,%d,%d", batteryStat, qValue, k, neighborID, knownSinks, i, j);
					// If there is a neighbor sink in my cluster, send my packet to that sink!
					if (neighborID == knownSinks) begin
						nextsinks_buf = i;
					end

					j = j + 1;
					address_count = 16'h8 + 2*j; // knownSinks address
					
					if (j == 16) begin
						j = 0;
						i = i + 1;
						state = 1;
						address_count = 16'hC8 + 2*i; // clusterID address
					end

					if (i == 64) begin
						state = 8;
						address_count = 16'h48 + 2*besthop_buf; // bestneighborID address
					end
				end

				8: begin
					bestneighborID_buf = data_in;
					state = 9;
					data_out_buf = betterneighborCount;
					address_count = 16'h68C;
					wr_en_buf = 1;
				end

				9: begin
					wr_en_buf = 0;
					state = 10;
				end

				10: begin
					done_buf = 1;
				end

				default: state = 10;
			endcase
		end
	end

	assign done = done_buf;
	assign address = address_count;
	assign wr_en = wr_en_buf;
	assign besthop = besthop_buf;
	assign bestvalue = bestvalue_buf;
	assign bestneighborID = bestneighborID_buf;
	assign nextsinks = nextsinks_buf;
	assign data_out = data_out_buf;
endmodule