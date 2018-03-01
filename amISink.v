`timescale 1ns/1ps
`define MEM_DEPTH  1024
`define MEM_WIDTH  8
`define WORD_WIDTH 16

/*  Register bank
 *  0x0 - forAggregation
 */

module amISink(clock, nrst, start, address, data_in, forAggregation, done);
	input clock, nrst, start;
	input [`WORD_WIDTH-1:0] data_in;
	output forAggregation, done;
	output [`WORD_WIDTH-1:0] address;

	// Registers
	reg forAggregation_buf, done_buf;
	reg [`WORD_WIDTH-1:0] address_count;
	reg [`WORD_WIDTH-1:0] amISink;
	reg [1:0] state;

	always @ (posedge clock) begin
		if (!nrst) begin
			forAggregation_buf <= 0;
			done_buf <= 0;
			address_count <= 16'h0; // amISink (FLAG) address
			state <= 0;
		end
		else begin
			case (state)
				0: begin
					if (start) begin
						state = 1;
						address_count = 16'h0; // amISink (FLAG) address
					end
					else state = 0;
				end

				1: begin
					amISink = data_in;

					if (amISink == 1)
						forAggregation_buf = 1;
					else forAggregation_buf = 0;
					
					state = 2;
				end

				2: begin
					done_buf = 1;
				end

				default: state = 2;
			endcase
		end
	end

	assign forAggregation = forAggregation_buf;
	assign done = done_buf;
	assign address = address_count;
endmodule