`timescale 1ns/1ps
module rngAddress(clock, nrst, start_rng_address, betterNeighborCount, which, rng_address, done_rng_address);
	input clock, nrst, start_rng_address;
	input [15:0] betterNeighborCount, which;
	output [15:0] rng_address;
	output done_rng_address;

	reg [15:0] rng_address_buf;
	reg [2:0] state;
	reg done_rng_address_buf;

	always @ (posedge clock) begin  
		if (!nrst) begin
			rng_address_buf = 0;
			state = 0;
			done_rng_address_buf = 0;
		end
		else begin
			case (state)
				3'd0: begin
					if (start_rng_address) begin
						state = 1;
						rng_address_buf = which;
					end
					else state = 0;
				end
				3'd1: begin
					if (betterNeighborCount <= rng_address_buf) begin
						rng_address_buf = rng_address_buf - betterNeighborCount;
						state = 1;
					end
					else begin
						state = 2;
					end
				end
				3'd2: begin
					done_rng_address_buf = 1;
				end
				default: state = 2;
			endcase
		end
	end

	assign rng_address = rng_address_buf;
	assign done_rng_address = done_rng_address_buf;
endmodule

