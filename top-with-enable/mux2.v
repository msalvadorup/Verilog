/*
 * Address Multiplexer (2:1)
 * 0: winnerPolicy
 * 1: randomGenerator
 */

module mux2(select, out, in0, in1);
	input select;
	input[10:0] in0, in1;
	output[10:0] out;

	reg [10:0] out_buf;

	always @(*) begin
		case(select)
			0 : out_buf = in0;
			1 : out_buf = in1;
		endcase
	end
	assign out = out_buf;
endmodule