`define WORD_WIDTH 16
`define HCM_LENGTH 11

module findMyBest(clock, nrst, start, address, data_in, MY_BATTERY_STAT, mybest, done);
	input clock, nrst, start;
	input [`WORD_WIDTH-1:0] data_in, MY_BATTERY_STAT;
	output done;
	output [`WORD_WIDTH-1:0] address;
	output [`WORD_WIDTH-1:0] mybest; // fixed-point

	// Registers
	reg done_buf;
	reg [`WORD_WIDTH-1:0] address_count, neighborCount, k, l;
	reg [`WORD_WIDTH-1:0] mybest_buf, qValue, HCM; // fixed-point
	reg [2:0] state;
	reg [31:0] kTemp, mybestTemp;

	always @ (posedge clock) begin
		if (!nrst) begin
			done_buf = 0;
			address_count = 16'h68A; // neighborCount address
			mybest_buf = 16'hFFFE; // fixed-point
			state = 0;
			k = 0;	// HCM index
			l = 0; // neighborCount index
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
					address_count = 16'h1C8; // qValue address
				end

				2: begin
					qValue = data_in;
					$display("qValue: %b", qValue);

					l = l + 1;
					address_count = 16'h1C8 + 2*l; // qValue address

					if (qValue < mybest_buf) begin // fixed-point comparison
						mybest_buf = qValue;
						$display("mybest: %b", mybest_buf);
					end

					if (l == neighborCount) begin
						state = 3;
					end
				end

				3: begin
					kTemp = (`HCM_LENGTH - 1) * MY_BATTERY_STAT; //16./0 * 1./15 = 17./15
					$display("MY_BATTERY_STAT: %B", MY_BATTERY_STAT);
					state = 4;
				end

				4: begin
					if(kTemp[14:0] != 15'd0) 
						k = kTemp[30:15] + 1;
					else
						k = kTemp[30:15];
					state = 5;
				end

				5: begin
					if (k >= `HCM_LENGTH)
						k = `HCM_LENGTH - 1;
					address_count = 16'h648 + 2*k; // HCM address
					state = 6;
				end

				6: begin
					HCM = data_in;
					//mybest_buf = mybest_buf * HCM; // fixed-point multiplication
					mybestTemp = mybest_buf * HCM; //fixed-point multiplication 11./5 * 3./13 = 14./18
					$display("k, kTemp, mybestTemp, mybest_buf, HCM: %D,%B,%B,%B,%B", k, kTemp, mybestTemp, mybest_buf, HCM);
					mybest_buf = mybestTemp[28:13]; // 14./18 ===> 11./5
					$display("mybest_buf: %B", mybest_buf);
					state = 7;
				end

				7: begin
					done_buf = 1;
				end

				default: state = 7;
			endcase
		end
	end

	assign done = done_buf;
	assign address = address_count;
	assign mybest = mybest_buf;
endmodule