`timescale 1ns/1ps
`define MEM_DEPTH  1024
`define MEM_WIDTH  8
`define WORD_WIDTH 16

/*
 * wr_en Multiplexer (8:1)
 * 0: learnCost
 * 1: amISink
 * 2: fixSinkList
 * 3: neighborSinkInOtherCluster
 * 4: findMyBest
 * 5: betterNeighborsInMyCluster
 * 6: winnerPolicy
 * 7: selectMyAction
 */

module mux_1bit(select, out, in0, in1, in2, in3, in4, in5, in6, in7);
	input[2:0] select;
	input in0, in1, in2, in3, in4, in5, in6, in7;
	output out;

	reg out_buf;

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