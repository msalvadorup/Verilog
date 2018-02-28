`timescale 1ns/1ps
`define MEM_DEPTH  1024
`define MEM_WIDTH  8
`define WORD_WIDTH 16

/*
* Demultiplexer (1:8)
* 0: 
* 1: 
* 2: 
* 3:
* 4:
* 5:
* 6:
* 7:
*/

module demux(select, in, out0, out1, out2, out3, out4, out5, out6, out7);
	input [2:0] select;
	input[`WORD_WIDTH-1:0] in;
	output[`WORD_WIDTH-1:0] out0, out1, out2, out3, out4, out5, out6, out7;

	reg [`WORD_WIDTH-1:0] out0_buf, out1_buf, out2_buf, out3_buf, out4_buf, out5_buf, out6_buf, out7_buf;

	always @(select) begin
	   case(select)
	       0 : out0;
	       1 : out1;
	       2 : out2;
	       3 : out3;
	       4 : out4;
	       5 : out5;
	       6 : out6;
	       7 : out7;
	   endcase
	end
	assign out0 = out0_buf;
	assign out1 = out1_buf;
	assign out2 = out2_buf;
	assign out3 = out3_buf;
	assign out4 = out4_buf;
	assign out5 = out5_buf;
	assign out6 = out6_buf;
	assign out7 = out7_buf;
endmodule

	/*
    // DEMUX MODULE
    reg [2:0] mdo_select;
    wire [`WORD_WIDTH-1:0] mdo_0, mdo_1, mdo_2, mdo_3, mdo_4, mdo_5, mdo_6, mdo_7;    
    demux mdo_demux(mdo_select, mem_data_out, mdo_0, mdo_1, mdo_2, mdo_3, mdo_4, mdo_5, mdo_6, mdo_7);
    //*/