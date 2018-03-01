`timescale 1ns/1ps
`define MEM_DEPTH  1024
`define MEM_WIDTH  8
`define WORD_WIDTH 16

module amIForwarding(clock, nrst, start, MY_NODE_ID, destinationID, iamForwarding, done);
	input clock, nrst, start;
	input [`WORD_WIDTH-1:0] MY_NODE_ID, destinationID;
	output iamForwarding, done;

	// Registers
	reg iamForwarding_buf, done_buf;
	reg [1:0] state;

	always @ (posedge clock) begin
		if (!nrst) begin
			iamForwarding_buf <= 0;
			done_buf <= 0;
			state <= 0;
		end
		else begin
			case (state)
				0: begin
					if (start)
						state = 1;
					else state = 0;
				end

				1: begin
					if (MY_NODE_ID == destinationID)
						iamForwarding_buf = 1;
					else iamForwarding_buf = 0;
					state = 2;
				end

				2: begin
					done_buf = 1;
				end

				default: state = 2;
			endcase
		end
	end

	assign iamForwarding = iamForwarding_buf;
	assign done = done_buf;
endmodule