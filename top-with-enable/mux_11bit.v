/*
 * Address Multiplexer (8:1)
 * 0: learnCost
 * 1: amISink
 * 2: fixSinkList
 * 3: neighborSinkInOtherCluster
 * 4: findMyBest
 * 5: betterNeighborsInMyCluster
 * 6: winnerPolicy
 * 7: selectMyAction
 */

module mux_11bit(select, out, in0, in1, in2, in3, in4, in5, in6, in7);
	input[2:0] select;
	input[10:0] in0, in1, in2, in3, in4, in5, in6, in7;
	output[10:0] out;

	reg [10:0] out_buf;

	always @(*) begin
		case(select)
			0 : out_buf = in0;
			1 : out_buf = in1;
			2 : out_buf = in2;
			3 : out_buf = in3;
			4 : out_buf = in4;
			5 : out_buf = in5;
			6 : out_buf = in6;
			7 : out_buf = in7;
		endcase
	end
	assign out = out_buf;
endmodule