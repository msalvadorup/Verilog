`timescale 1ns/1ps
`define MEM_DEPTH  2048
`define MEM_WIDTH  8
`define WORD_WIDTH 16
`define CLOCK_PD 20

module learnCosts(clock, nrst, en, fsourceID, fbatteryStat, fValue, fclusterID, initial_epsilon, address, wr_en, data_in, data_out, done);
	input clock, nrst, en;
	input [`WORD_WIDTH-1:0] fsourceID, fbatteryStat, fValue, fclusterID, data_in, initial_epsilon;
	output done, wr_en;
	output [10:0] address;
	output [`WORD_WIDTH-1: 0] data_out;

	// Registers
	reg [10:0] address_count;
	reg [`WORD_WIDTH-1:0] data_out_buf, neighborCount, knownSinkCount, cur_nID, cur_knownSink, cur_qValue, sinkID_address_buf;
	reg done_buf, found, reinit, wr_en_buf;
	reg [`WORD_WIDTH-1:0] n, k;
	reg [4:0] state;

	always @ (posedge clock) begin
		if (!nrst) begin
			done_buf <= 0;
			state <= 22;	// Idle state
			wr_en_buf <= 0;
			found <= 0;
			reinit <= 0;
			n = 0;
			k = 0;
			address_count <= 0;
			data_out_buf = 0;
			neighborCount <= 0;	
			knownSinkCount <= 0;
			cur_nID = 16'd65;
			cur_knownSink = 16'd65;
			cur_qValue = 16'd0;
			sinkID_address_buf = 0;
		end
		else begin
			case (state)
				0: begin
					state <= 1;
					address_count <= 11'h68A; // neighborCount address
				end
				1: begin
					neighborCount <= data_in;
					state <= 2;
					address_count <= 11'h688; // knownSinkCount address
				end
				2: begin
					knownSinkCount <= data_in;
					state <= 3;
				end
				3: begin
					// if not found, add a new neighbor
					if (n == neighborCount)
						state <= 12;
					else begin
						address_count <= 11'h48 + n*2; // neighborID address 
						state <= 4;
					end
				end
				4: begin
					cur_nID = data_in;	// current neighborID

					// if found, update the routingTable values
					if (cur_nID == fsourceID) begin
						found <= 1;
						state <= 5;

						// para hindi multiply nang multiply sa state
						sinkID_address_buf = 16'h248 + 16*n;
					end
					else begin
						n = n + 1;
						state <= 3;
					end
				end
				5: begin
					if (k == knownSinkCount) begin
						//data_out_buf = fbatteryStat;
						//address_count <= 11'h148 + n*2; // batteryStat address
						data_out_buf = k;
						address_count <= 11'h68E + 2*k; // sinkIDCount address
						wr_en_buf <= 1;
						state <= 8;
					end
					else begin
						address_count <= 11'h8 + k*2; // knownSinks address
						state <= 6;
					end
				end
				6: begin
					cur_knownSink = data_in; // current knownSink
					data_out_buf = cur_knownSink;
					address_count <= sinkID_address_buf + k*2;	// sinkIDs address
					wr_en_buf <= 1;
					state <= 7;
				end
				7: begin
					wr_en_buf <= 0;
					k = k + 1;
					state <= 5;
				end
				8: begin
					//wr_en_buf <= 0;
					data_out_buf = fbatteryStat;
					address_count <= 11'h148 + n*2; // batteryStat address
					wr_en_buf <= 1;
					state <= 9;
				end
				9: begin
					wr_en_buf <= 0;
					address_count <= 11'h1C8 + n*2; // qValue address
					state <= 10;
				end
				10: begin
					cur_qValue = data_in;
					data_out_buf = cur_qValue;
					wr_en_buf <= 1;

					if (cur_qValue < fValue)
						reinit <= 1;
					else
						reinit <= 0;

					state <= 11;
				end
				11: begin
					if (found) begin
						if (reinit) begin
							data_out_buf = initial_epsilon;
							address_count <= 11'h4;	// epsilon address
							wr_en_buf <= 1;
							state <= 20;
						end
						else
							state <= 21; // Done state
					end
					else 
						state <= 21;	// Done state
				end
				12: begin
					address_count <= 11'h48 + neighborCount*2; // neighborID address
					data_out_buf = fsourceID;
					wr_en_buf <= 1;
					state <= 13;
				end
				13: begin
					//wr_en_buf <= 0;
					address_count <= 11'h148 + neighborCount*2; // batteryStat address
					data_out_buf = fbatteryStat;
					wr_en_buf <= 1;
					state <= 14;	
				end
				14: begin
					address_count <= 11'h1C8 + neighborCount*2; // qValue address
					data_out_buf = fValue;
					wr_en_buf <= 1;
					state <= 15;
				end
				15: begin
					address_count <= 11'hC8 + neighborCount*2;
					data_out_buf = fclusterID;
					wr_en_buf <= 1;
					k = 0;

					// Para hindi multiply nang multiply sa state 16
					sinkID_address_buf = 16'h248 + 16*neighborCount;
					
					state <= 16; 
				end
				16: begin
					if (k == knownSinkCount) begin
						state <= 19;
						address_count <= 11'h68E + 2*neighborCount; // sinkIDCount address
						data_out_buf = k;
						wr_en_buf <= 1;
					end
					else begin
						address_count <= 11'h8 + k*2; // knownSinks address
						state <= 17;
					end
				end
				17: begin
					cur_knownSink = data_in;
					data_out_buf = cur_knownSink;
					address_count <= sinkID_address_buf + 2*k; // knownSinkCount address
					wr_en_buf <= 1;
					state <= 18;
				end
				18: begin
					wr_en_buf <= 0;
					k = k + 1;
					state <= 16;
				end
				19: begin
					data_out_buf = neighborCount + 1;
					address_count <= 11'h68A;	// neighborCount address 
					wr_en_buf <= 1;
					state <= 20;
				end
				20: begin
					wr_en_buf <= 0;
					state <= 21;
				end
				21: begin
					done_buf <= 1;
					state <= 22;
				end
				22: begin	// Idle State
					if (en) begin
						done_buf <= 0;
						state <= 0;
						wr_en_buf <= 0;
						found <= 0;
						reinit <= 0;
						n = 0;
						k = 0;
						address_count <= 0;
						data_out_buf = 0;
						neighborCount <= 0;	
						knownSinkCount <= 0;
						cur_nID = 16'd65;
						cur_knownSink = 16'd65;
						cur_qValue = 16'd0;
						sinkID_address_buf = 0;
					end
					else
						state <= 22;
				end

				default: 
					state <= 22;
			endcase
		end
	end

	assign done = done_buf;
	assign address = address_count;
	assign data_out = data_out_buf;
	assign wr_en = wr_en_buf;
endmodule
