`define WORD_WIDTH 16

/*  Register bank
 *  0x0 - forAggregation
 */

module amISink(clock, nrst, en, start, address, wr_en, data_in, data_out, forAggregation, done);
	input clock, nrst, en, start;
	input [`WORD_WIDTH-1:0] data_in;
	output forAggregation, done, wr_en;
	output [10:0] address;
	output [`WORD_WIDTH-1:0] data_out;

	// Registers
	reg forAggregation_buf, done_buf, wr_en_buf, data_out_buf;
	reg [10:0] address_count;
	reg [`WORD_WIDTH-1:0] amISink;
	reg [2:0] state;

	always @ (posedge clock) begin
		if (!nrst) begin
			forAggregation_buf = 0;
			done_buf = 0;
			wr_en_buf = 0;
			address_count = 11'h0; // amISink (FLAG) address
			data_out_buf = 16'h0;
			state = 4;
			amISink = 0;
		end
		else begin
			case (state)
				0: begin
					if (start) begin
						state = 1;
						address_count = 11'h0; // amISink (FLAG) address
					end
					else state = 0;
				end

				1: begin
					amISink = data_in;

					if (amISink == 1) begin
						forAggregation_buf = 1;
						state = 2;
						data_out_buf = 16'h1;
						address_count = 11'h2; // forAggregation (FLAG) address
						wr_en_buf = 1;
					end
					else begin
						forAggregation_buf = 0;
						state = 3;
					end
				end

				2: begin
					wr_en_buf = 0;
					state = 3;
				end

				3: begin
					done_buf = 1;
					state = 4;
				end

				4: begin
					if (en) begin
						forAggregation_buf = 0;
						done_buf = 0;
						wr_en_buf = 0;
						address_count = 11'h0; // amISink (FLAG) address
						state = 0;
						amISink = 0;
					end
					else state = 4;
				end

				default: state = 4;
			endcase
		end
	end

	assign forAggregation = forAggregation_buf;
	assign done = done_buf;
	assign address = address_count;
	assign wr_en = wr_en_buf;
	assign data_out = data_out_buf;
endmodule