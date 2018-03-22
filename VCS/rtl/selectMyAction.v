`timescale 1ns/1ps
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

	assign done = done_buf;
	assign address = address_count;
	assign wr_en = wr_en_buf;
	assign data_out = data_out_buf;
	assign forAggregation = forAggregation_buf;
	assign action = action_buf;

	always @ (posedge clock) begin
		if (nrst != 1) begin
			done_buf = 1'd0;
			wr_en_buf = 1'd0;
			forAggregation_buf = 1'd0;
			state = 3'd5;
			address_count = 16'd0;
			action_buf = 16'd65;
			data_out_buf = 16'd0;
		end
		else begin
			case (state)
				3'd0: begin
					if (start == 1'd1) begin
						state = 3'd1;
					end
					else begin
						state = 3'd0;
					end
				end

				3'd1: begin //***Offset is passed instead of nID? If action is self, reward.v attaches wrong dest. Also, wider.
					if (nextsinks != 16'd65) begin
						action_buf = nextsinks;
						//$display("Send pkt to neighbor sink in my cluster!");
						state = 3'd2;
					end 
					else begin
						state = 3'd2;
					end
				end

				3'd2: begin
					if (nexthop == 16'd65 && nextsinks == 16'd65) begin
						forAggregation_buf = 1'd1;
						data_out_buf = 16'h1;
						address_count = 11'h2; // forAggregation (FLAG) address
						wr_en_buf = 1'd1;
						//$display("No better in-cluster head. Schedule aggregation! %d", action_buf);
					end
					else begin 
						forAggregation_buf = 1'd0;
						action_buf = nexthop;
					end
					state = 3'd3;
				end

				3'd3: begin
					wr_en_buf = 1'd0;
					state = 3'd4;
				end

				3'd4: begin
					done_buf = 1'd1;
					//forAggregation_buf = 1'd0;
					state = 3'd5;
				end

				3'd5: begin
					if (en == 1'd1) begin
						done_buf = 1'd0;
						wr_en_buf = 1'd0;
						forAggregation_buf = 1'd0;
						state = 3'd0;
						address_count = 11'd0;
						action_buf = 16'd65;
						data_out_buf = 16'd0;
					end
					else begin
						state = 3'd5;
					end
				end

				//default: state = 3'd5;
			endcase
		end
	end

endmodule