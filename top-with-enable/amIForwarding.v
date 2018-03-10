`define WORD_WIDTH 16

module amIForwarding(clock, nrst, en, start, MY_NODE_ID, destinationID, iamForwarding, done);
	input clock, nrst, en, start;
	input [`WORD_WIDTH-1:0] MY_NODE_ID, destinationID;
	output iamForwarding, done;

	// Registers
	reg iamForwarding_buf, done_buf;
	reg [2:0] state;

	always @ (posedge clock) begin
		if (!nrst) begin
			iamForwarding_buf = 0;
			done_buf = 0;
			state = 3;
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
					state = 3;
				end

				3: begin
					if (en) begin
						iamForwarding_buf = 0;
						done_buf = 0;
						state = 0;
					end
					else state = 3;
				end

				default: state = 3;
			endcase
		end
	end

	assign iamForwarding = iamForwarding_buf;
	assign done = done_buf;
endmodule