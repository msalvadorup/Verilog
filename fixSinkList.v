`define WORD_WIDTH 16

module fixSinkList(clock, nrst, start, address, wr_en, data_in, data_out, done);
	input clock, nrst, start;
	input [`WORD_WIDTH-1:0] data_in;
	output done, wr_en;
	output [`WORD_WIDTH-1:0] address, data_out;

	// Registers
	reg done_buf, wr_en_buf;
	reg [`WORD_WIDTH-1:0] address_count, data_out_buf, i, j, k;
	reg [`WORD_WIDTH-1:0] knownSinks, sinkIDs, worstHops, qValue, neighborCount, knownSinkCount, sinkIDCount;
	reg [3:0] state;

	always @ (posedge clock) begin
		if (!nrst) begin
			done_buf = 0;
			wr_en_buf = 0;
			address_count = 16'h68A; // neighborCount address
			state = 0;
			i = 0; // qValue, sinkIDCount
			j = 0; // knownSinks, worstHops
			k = 0; // sinkID_index
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
					address_count = 16'h688; // knownSinkCount address
				end

				2: begin
					knownSinkCount = data_in;
					state = 3;
					address_count = 16'h8 + 2*j; // knownSinks address
				end

				3: begin
					knownSinks = data_in;
					state = 4;
					address_count = 16'h68E + 2*i; // sinkIDCount address           
				end

				4: begin                    
					sinkIDCount = data_in;
					state = 5;
					address_count = 16'h248 + 16*i + 2*k; // sinkIDs address
				end

				5: begin
					sinkIDs = data_in;
					// If found, compare with next set of sinkIDs
					if (knownSinks == sinkIDs) begin
						i = i + 1;
						k = 0;

						if (i == neighborCount) begin
							j = j + 1;
							i = 0;
							k = 0;
							
							if (j == knownSinkCount) begin
								state = 11;
							end
							else begin
								state = 3;
								address_count = 16'h8 + 2*j; // knownSinks address
							end
						end
						else begin
							state = 4;
							address_count = 16'h68E + 2*i; // sinkIDCount address
						end
					end
					else begin
						k = k + 1;
						
						if (k == sinkIDCount) begin
							state = 6;  // Append knownSink to sinkIDs
							data_out_buf = knownSinks;
							address_count = 16'h248 + 16*i + 2*k; // sinkIDs address
							wr_en_buf = 1;
							$display("Append knownSink to sinkIDs");
						end
						else begin
							// state = 5;
							address_count = 16'h248 + 16*i + 2*k; // sinkIDs address
						end
					end
				end

				6: begin
					wr_en_buf = 0;
					state = 7;
					address_count = 16'h28 + 2*j; // worstHops address
				end

				7: begin
					worstHops = data_in;
					state = 8;
					address_count = 16'h1C8 + 2*i; // qValue address (read)
				end

				8: begin
					qValue = data_in;
					state = 9;
					data_out_buf = qValue + (worstHops - 1); // Update qValue (add worstHops)
					// address_count = 16'h1C8 + 2*i; // qValue address (write)
					wr_en_buf = 1;
				end

				9: begin
					wr_en_buf = 0;
					state = 10;
					data_out_buf = sinkIDCount + 1;
					address_count = 16'h68E + 2*i;
					wr_en_buf = 1;
				end

				10: begin
					wr_en_buf = 0;
					i = i + 1; // Compare knownSink with next set of sinkIDs after append
					k = 0;

					if (i == neighborCount) begin
						j = j + 1;
						i = 0;
						k = 0;
						
						if (j == knownSinkCount) begin
							state = 11;
						end
						else begin
							state = 3;
							address_count = 16'h8 + 2*j; // knownSinks address
						end 
					end
					else begin
						state = 4;
						address_count = 16'h68E + 2*i; // sinkIDCount address
					end 
				end

				11: begin
					done_buf = 1;
				end

				default: state = 11;
			endcase
		end
	end
	assign done = done_buf;
	assign address = address_count;
	assign wr_en = wr_en_buf;
	assign data_out = data_out_buf;
endmodule