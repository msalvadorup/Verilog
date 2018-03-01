`timescale 1ns/1ps
`define MEM_DEPTH  1024
`define MEM_WIDTH  8
`define WORD_WIDTH 16

/* States
 * 0: Get neighborID 
 * 1: Get clusterID
 * 2: Get knownSinks and determine forAggregation flag
 */

module neighborSinkInOtherCluster(clock, nrst, start, address, wr_en, data_in, MY_CLUSTER_ID, data_out, forAggregation, done);
	input clock, nrst, start;
	input [`WORD_WIDTH-1:0] data_in, MY_CLUSTER_ID;
	output forAggregation, done, wr_en;
	output [`WORD_WIDTH-1:0] address, data_out;

	// Registers
	reg forAggregation_buf, done_buf, wr_en_buf;
	reg [`WORD_WIDTH-1:0] address_count, data_out_buf, i, j;
	reg [`WORD_WIDTH-1:0] neighborID, clusterID, knownSinks;
	reg [2:0] state;
	 
	always @ (posedge clock) begin
		if (!nrst) begin
			forAggregation_buf <= 0;
			done_buf <= 0;
			wr_en_buf <= 0;
			address_count <= 16'h48; // neighborID address
			state <= 0;
			i <= 0;
			j <= 0;
		end
		else begin
			case (state)
				0: begin
					if (start) begin
						state = 1;
						address_count = 16'h48; // neighborID address
					end
					else state = 0;
				end

				1: begin
					neighborID = data_in;
					state = 2;
					address_count = 16'hC8 + 2*i; // clusterID address
				end

				2: begin
					clusterID = data_in;
					state = 3;
					address_count = 16'h8 + 2*j; // knownSinks address
				end

				3: begin
					knownSinks = data_in;
					// If there are neighbor sinks in other clusters, schedule aggregation!
					$display("%d,%d,%d,%d,%d", neighborID, clusterID, knownSinks, i, j);
					if ((neighborID == knownSinks) && (clusterID != MY_CLUSTER_ID)) begin
						forAggregation_buf = 1;
					end
					else forAggregation_buf = 0;

					j = j + 1;
					address_count = 16'h8 + 2*j; // knownSinks address

					if (j == 16) begin
						j = 0;
						i = i + 1;
						state = 1;
						address_count = 16'h48 + 2*i; // neighborID address
					end

					if (i == 64)
						state = 5;

					if (forAggregation_buf) begin
						state = 4;
						data_out_buf = 16'h1;
						address_count = 16'h2; // forAggregation (FLAG) address
						wr_en_buf = 1;
					end
				end

				4: begin
					wr_en_buf = 0;
					state = 5;
				end

				5: begin
					done_buf = 1;
				end
				
				default: state = 5;    
			endcase
		end
	end
	
	assign done = done_buf;
	assign address = address_count;
	assign wr_en = wr_en_buf;
	assign data_out = data_out_buf;
	assign forAggregation = forAggregation_buf;
endmodule