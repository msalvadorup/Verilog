`timescale 1ns/1ps
/*
 *  Linear Feedback Shift Register
 *  Reference: https://www.xilinx.com/support/documentation/application_notes/xapp052.pdf
 */

module randomGenerator(clock, nrst, rng_out, rng_out_4bit, en_rng, done);
	input clock, nrst, en_rng;
	output [15:0] rng_out, rng_out_4bit;
	reg [15:0] rng_out_buf;
	reg feedback, done_buf;
	output done;//, feedback_out;

	// RNG
	reg [2:0] state;
	always @ (posedge clock) begin
		if (!nrst) begin
			rng_out_buf = 5;
			state = 0;
			feedback = 0;
			done_buf = 0;
		end
		else begin
			case (state)
				3'd0: begin
					if (en_rng) begin
						feedback = 0;
						done_buf = 0;
						state = 1;
					end
					else
						state = 0;
				end
				3'd1: begin
					feedback = ~(rng_out_buf[15] ^ rng_out_buf[14] ^ rng_out_buf[12] ^ rng_out_buf[3]);
					rng_out_buf = {rng_out_buf[14:0], feedback};
					state = 2;
				end
				3'd2: begin
					done_buf = 1;
					state = 0;
				end
				default: 
					state = 0;
			endcase
		end
	end

	assign rng_out = rng_out_buf;
	assign rng_out_4bit = {12'd0, rng_out_buf[3:0]};
	assign done = done_buf;
endmodule

