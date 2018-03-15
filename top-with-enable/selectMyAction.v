`define WORD_WIDTH 16

/* Possible Actions
 * random hop (explore hop)
 * besthop
 * nextsink (sink in cluster)
 * self (CH role)
 */

module selectMyAction(clock, nrst, en, start, address, wr_en, nexthop, nextsinks, action, data_out, forAggregation, done);
	input clock, nrst, en, start;
	input [`WORD_WIDTH-1:0] nexthop, nextsinks;
	output forAggregation, done, wr_en;
	output [10:0] address;
	output [`WORD_WIDTH-1:0] action, data_out;

	// Registers
	reg forAggregation_buf, done_buf, wr_en_buf;
	reg [10:0] address_count;
	reg [`WORD_WIDTH-1:0] action_buf, data_out_buf;
	reg [2:0] state;

	always @ (posedge clock) begin
		if (!nrst) begin
			done_buf = 0;
			wr_en_buf = 0;
			forAggregation_buf = 0;
			state = 5;
			address_count = 0;
			action_buf = 16'd65;
			data_out_buf = 0;
		end
		else begin
			case (state)
				0: begin
					if (start) begin
						state = 1;
					end
					else state = 0;
				end

				1: begin //***Offset is passed instead of nID? If action is self, reward.v attaches wrong dest. Also, wider.
					if (nextsinks != 16'd65) begin
						action_buf = nextsinks;
						$display("Send pkt to neighbor sink in my cluster!");
					end
					state = 2;
				end

				2: begin
					if (nexthop == 16'd65 && nextsinks == 16'd65) begin
						forAggregation_buf = 1;
						data_out_buf = 16'h1;
						address_count = 11'h2; // forAggregation (FLAG) address
						wr_en_buf = 1;
						$display("No better in-cluster head. Schedule aggregation! %d", action_buf);
					end
					else begin 
						forAggregation_buf = 0;
						action_buf = nexthop;
					end
					state = 3;
				end

				3: begin
					wr_en_buf = 0;
					state = 4;
				end

				4: begin
					done_buf = 1;
					state = 5;
				end

				5: begin
					if (en) begin
						done_buf = 0;
						wr_en_buf = 0;
						forAggregation_buf = 0;
						state = 0;
						address_count = 0;
						action_buf = 16'd65;
						data_out_buf = 0;
					end
					else state = 5;
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
	assign action = action_buf;
endmodule