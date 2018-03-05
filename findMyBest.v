`timescale 1ns/1ps
`define MEM_DEPTH  1024
`define MEM_WIDTH  8
`define WORD_WIDTH 16
`define HCM_LENGTH 11

/* States
 * 0: Find mybest
 * 1: Compute full mybest
 * 
 * NOte: Gagawin pang fixed-point yung mga values
 */

module findMyBest(clock, nrst, start, address, data_in, MY_BATTERY_STAT, mybest, done);
	input clock, nrst, start;
	input [`WORD_WIDTH-1:0] data_in, MY_BATTERY_STAT;
	output done;
	output [`WORD_WIDTH-1:0] address;
	output [`WORD_WIDTH-1:0] mybest; // fixed-point

	// Registers
	reg done_buf;
	reg [`WORD_WIDTH-1:0] address_count, k;
	reg [`WORD_WIDTH-1:0] mybest_buf, qValue, HCM; // fixed-point
	reg [1:0] state;

	always @ (posedge clock) begin
		if (!nrst) begin
			done_buf <= 0;
			address_count <= 16'h1C8; // qValue address
			mybest_buf <= 16'hFFFE; // fixed-point
			state <= 0;
			k <= 0;
		end
		else begin
			case (state)
				0: begin
					if (start) begin
						state = 1;
						address_count <= 16'h1C8; // qValue address
					end
					else state = 0;
				end

				1: begin
					qValue = data_in;
					if (qValue < mybest_buf) begin // fixed-point comparison
						mybest_buf = qValue;
					end

					if (address_count == 16'h246) begin
						state = 2;
						k = $ceil((`HCM_LENGTH-1) * MY_BATTERY_STAT); // fixed-point multiplication

						if (k >= `HCM_LENGTH)
							k = `HCM_LENGTH - 1;

						address_count = 16'h648 + 2*k; // HCM address
					end
					else address_count = address_count + 2; // qValue address
				end

				2: begin
					HCM = data_in;
					mybest_buf = mybest_buf * data_in; // fixed-point multiplication
					state = 3;
				end

				3: begin
					done_buf = 1;
				end

				default: state = 3;
			endcase
		end
	end

	assign done = done_buf;
	assign address = address_count;
	assign mybest = mybest_buf;
endmodule