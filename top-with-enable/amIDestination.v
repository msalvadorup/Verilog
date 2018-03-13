`define WORD_WIDTH 16

module amIDestination(clock, nrst, en, start, MY_NODE_ID, destinationID, iamDestination, done);
	input clock, nrst, en, start;
	input [`WORD_WIDTH-1:0] MY_NODE_ID, destinationID;
	output iamDestination, done;

	// Registers
	reg iamDestination_buf, done_buf;
	reg [2:0] state;

	always @ (posedge clock) begin
		if (!nrst) begin
			iamDestination_buf = 0;
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
						iamDestination_buf = 1;
					else iamDestination_buf = 0;
					state = 2;
				end

				2: begin
					done_buf = 1;
					state = 3;
				end

				3: begin
					if (en) begin
						iamDestination_buf = 0;
						done_buf = 0;
						state = 0;
					end
					else state = 3;
				end

				default: state = 3;
			endcase
		end
	end

	assign iamDestination = iamDestination_buf;
	assign done = done_buf;
endmodule