`timescale 1ns/1ps
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
 * Note: Gagawin pang fixed-point yung mga values
 */

module betterNeighborsInMyCluster(clock, nrst, en, start, address, wr_en, data_in, MY_CLUSTER_ID, mybest, besthop, bestvalue, bestneighborID, nextsinks, data_out, done);
	input clock, nrst, en, start;
	input [`WORD_WIDTH-1:0] data_in, MY_CLUSTER_ID;
	input [`WORD_WIDTH-1:0] mybest; // fixed-point
	output done, wr_en;
	output [10:0] address;
	output [`WORD_WIDTH-1:0] data_out;
	output [`WORD_WIDTH-1:0] besthop, bestneighborID, nextsinks;
	output [`WORD_WIDTH-1:0] bestvalue; // fixed-point

	// Registers
	reg done_buf, wr_en_buf;
	reg [10:0] address_count;
	reg [`WORD_WIDTH-1:0] data_out_buf, i, j, k;
	reg [`WORD_WIDTH-1:0] knownSinkCount, neighborCount, clusterID, neighborID, knownSinks, betterneighbors, betterneighborCount, besthop_buf, bestneighborID_buf, nextsinks_buf;
	reg [`WORD_WIDTH-1:0] BATTERY_THRESHOLD, batteryStat, qValue, bestvalue_buf, HCM; // fixed-point
	reg [3:0] state;
	reg [31:0] fpTemp;
	/**
	
		FIXED POINT:
		- BATTERY_THRESHOLD 1./15
		- batteryStat 1./15
		- qValue 11./5
		- bestvalue_buf 11./5
		- HCM 3./13
	 */
/*
	always @ (posedge clock) begin
		if (!nrst)
			knownSinkCount = 0;
		else
			if (state == 4'd1)
				knownSinkCount = data_in;
	end
*/
	always @ (posedge clock) begin
		if (!nrst) begin
			done_buf = 0;
			wr_en_buf = 0;
			address_count = 11'h688; // knownSinkCount address
			data_out_buf = 16'h0;
			betterneighbors = 16'h0;
			betterneighborCount = 16'h0;
			besthop_buf = 16'd65;
			bestvalue_buf  = 16'hFFFE; //fixed-point
			BATTERY_THRESHOLD = 16'h148; // fixed-point (0.01)
			nextsinks_buf = 16'd65;
			bestneighborID_buf = 16'hFFE;
			state = 4'd15;
			i = 0; // neighbors index
			j = 0; // knownSinks index
			k = 0; // HCM idex
		end
		else begin
			case (state)
				4'd0: begin
					if (start) begin
						state = 4'd1;
						address_count = 11'h688; // knownSinkCount address
					end
					else state = 4'd0;
				end

				4'd1: begin
					knownSinkCount = data_in;
					state = 4'd2;
					address_count = 11'h68A; // neighborCount address
				end

				4'd2: begin
					neighborCount = data_in;
					state = 4'd3;
					address_count = 11'hC8; // clusterID address
				end
				
				4'd3: begin
					clusterID = data_in;

					if (MY_CLUSTER_ID != clusterID) begin
						$display("Neighbor does not belong in my cluster. %d", i);
						i = i + 1;
						address_count = 11'hC8 + 2*i; // clusterID address

						if (i == neighborCount) begin
							state = 4'd12;
							address_count = 11'h48 + 2*besthop_buf; // bestneighborID address
						end
					end
					else begin
						state = 4'd4;
						address_count = 11'h148 + 2*i; // batteryStat address
					end
				end

				4'd4: begin
					batteryStat = data_in; 
					
					if (BATTERY_THRESHOLD > batteryStat) begin
						$display("Low batteryStat: %b, %d", batteryStat, i);
						i = i + 1;
						state = 4'd3;
						address_count = 11'hC8 + 2*i; // clusterID address
		
						if (i == neighborCount) begin
							state = 4'd12;
							address_count = 11'h48 + 2*besthop_buf; // bestneighborID address
						end
					end
					else begin
						state = 4'd5;
						address_count = 11'h1C8 + 2*i; // qValue address
					end
				end

				4'd5: begin
					qValue = data_in;
					
					if (qValue <= mybest) begin // fixed-point comparison
						betterneighborCount = betterneighborCount + 1;
						betterneighbors = i;
						$display("betterneighborCount, betterneighbors: %d, %d", betterneighborCount, betterneighbors);
						state = 4'd6;
						data_out_buf = betterneighbors;
						address_count = 11'h668 + 2*(betterneighborCount-1);
						wr_en_buf = 1;
					end
					else begin
						state = 4'd10;
						address_count = 11'h48 + 2*i; // neighborID address
					end
				end

				4'd6: begin
					//k = $ceil((`HCM_LENGTH-1) * batteryStat); // fixed-point multiplication
					wr_en_buf = 0;
					fpTemp = (`HCM_LENGTH-1) * batteryStat; // 16.0 * 1.15 = 17.15
					state = 4'd7;
				end
				4'd7: begin
					if(fpTemp[14:0] != 15'd0) 
						k = fpTemp[30:15] + 1;
					else
						k = fpTemp[30:15];
					state = 4'd8;
				end
				4'd8: begin
					if (k >= `HCM_LENGTH)
						k = `HCM_LENGTH - 1;

					address_count = 11'h648 + 2*k; // HCM address

					state = 4'd9;
				end
				4'd9: begin
					HCM = data_in;
					//qValue = qValue * HCM; // fixed-point multiplication
					fpTemp = qValue * HCM; //11./5 * 3./13 = 14./18
					qValue = fpTemp[28:13]; //14./18 ===> 11./5

					if (qValue < bestvalue_buf) begin // fixed-point comparison
						besthop_buf = i;
						bestvalue_buf = qValue;
					end

					state = 4'd10;
					address_count = 11'h48 + 2*i; // neighborID address
				end

				4'd10: begin
					neighborID = data_in;
					state = 4'd11;
					address_count = 11'h8 + 2*j; // knownSinks address
				end

				4'd11: begin
					knownSinks = data_in;
					// $display("%d,%d,%d,%d,%d,%d,%d", batteryStat, qValue, k, neighborID, knownSinks, i, j);
					// If there is a neighbor sink in my cluster, send my packet to that sink!
					if (neighborID == knownSinks) begin
						nextsinks_buf = i;
						$display("I have neighbor sink in my cluster: %d", nextsinks_buf);
					end

					j = j + 1;
					address_count = 11'h8 + 2*j; // knownSinks address

					if (j == knownSinkCount) begin
						j = 0;
						i = i + 1;
						state = 4'd3;
						address_count = 11'hC8 + 2*i; // clusterID address
						
						if (i == neighborCount) begin
							state = 4'd12;
							address_count = 11'h48 + 2*besthop_buf; // bestneighborID address
						end
					end

				end

				4'd12: begin
					bestneighborID_buf = data_in;
					$display("besthop, bestvalue, bestneighborID: %d, %b, %d", besthop, bestvalue, bestneighborID);
					state = 13;
					data_out_buf = betterneighborCount;
					address_count = 11'h68C; // betterneighborCount address
					wr_en_buf = 1;
				end

				4'd13: begin
					wr_en_buf = 0;
					state = 4'd14;
				end

				4'd14: begin
					done_buf = 1;
					state = 4'd15;
				end

				4'd15: begin
					if (en) begin
						done_buf = 0;
						wr_en_buf = 0;
						address_count = 11'h688; // knownSinkCount address
						betterneighbors = 16'h0;
						betterneighborCount = 16'h0;
						besthop_buf = 16'd65;
						bestvalue_buf  = 16'hFFFE; //fixed-point
						BATTERY_THRESHOLD = 16'h148; // fixed-point (0.01)
						nextsinks_buf = 16'd65;
						bestneighborID_buf = 16'hFFE;
						state = 4'd0;
						i = 0;
						j = 0;
						k = 0;
					end
					else state = 4'd15; 
				end

				default: state = 4'd15;
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
