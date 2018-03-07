`timescale 1ns/1ps
`define MEM_DEPTH  2048
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
	reg [`WORD_WIDTH-1:0] address_count, neighborCount, k;
	reg [`WORD_WIDTH-1:0] mybest_buf, qValue, HCM; // fixed-point
	reg [1:0] state;
	reg [31:0] kTemp; //MIKKO temp int
	reg [1:0] count; //MIKKO

	always @ (posedge clock) begin
		if (!nrst) begin
			done_buf <= 0;
			address_count = 16'h68A; // neighborCount address
			mybest_buf <= 16'hFFFE; // fixed-point
			state <= 0;
			count <= 2'd3;
			k <= 0;	// HCM index
		end
		else begin
			case (state)
				0: begin
					if (start) begin
						state = 1;
						address_count = 16'h68A; // neighborCount address
					end
					else state = 0;
				end

				1: begin
					neighborCount = data_in;
					state = 2;
					address_count <= 16'h1C8; // qValue address
				end

				2: begin
					qValue = data_in;
					if (qValue < mybest_buf) begin // fixed-point comparison
						mybest_buf = qValue;
					end

					if (address_count == 16'h1C8 + 2*(neighborCount-1)) begin
						state = 3;
					end
					else address_count = address_count + 2; // qValue address
				end

				3: begin
					kTemp = (`HCM_LENGTH - 1) * MY_BATTERY_STAT; //16./0 * 1./15 = 17./15
					state = 4;
				end

				4: begin
					if(kTemp[14:0] != 15'd0) 
						k <= kTemp[30:15] + 1;
					else
						k <= kTemp[30:15];
					state = 5;
				end

				5: begin
					if (k >= `HCM_LENGTH)
						k = `HCM_LENGTH - 1;
					address_count = 16'h648 + 2*k; // HCM address
					state = 6;
				end

				6: begin
					HCM = data_in;
					//mybest_buf = mybest_buf * HCM; // fixed-point multiplication
					kTemp = mybest_buf * data_in; //fixed-point multiplication 11./5 * 11./5 = 11./5
					mybest_buf = kTemp[20:5];
					state = 7;
				end

				7: begin
					done_buf = 1;
				end

				default: state = 7;
			endcase
		end
	end

	assign done = done_buf;
	assign address = address_count;
	assign mybest = mybest_buf;
endmodule