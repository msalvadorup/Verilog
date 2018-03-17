`timescale 1ns/1ps
`define MEM_DEPTH  2048
`define MEM_WIDTH  8
`define WORD_WIDTH 16

/* Address List
 * (2/4)        [0x0 - 0x07]        amISink/forAggregation FLAGS (0-3)
 * (2/16)       [0x8 - 0x27]        knownSinks (4-19)
 * (2/16)       [0x28 - 0x47]       worstHops (20-35)
 * (2/64)       [0x48 - 0xC7]       neighborID (36-99)
 * (2/64)       [0xC8 - 0x147]      clusterID (100-163)
 * (2/64)       [0x148 - 0x1C7]     batteryStat (164-227)
 * (2/64)       [0x1C8 - 0x247]     qValue (228-291)
 * (2/8*64)     [0x248 - 0x647]     sinkIDs (292-803)
 * (2/16)       [0x648 - 0x667]     HCM (804-819)
 * (2/16)       [0x668 - 0x687]     betterneighbors (820-835)
 * 
 * (2/1)        [0x688 - 0x689]     knownSinkCount (836)
 * (2/1)        [0x68A - 0x68B]     neighborCount (837)
 * (2/1)        [0x68C - 0x68D]     betterneighborCount (838)
 * (2/64)       [0x68E - 0x70D]     sinkIDCount (839-902)
 */

module mem(clock, address, wr_en, data_in, data_out);
	input clock, wr_en;
	input [10:0] address;
	input [`WORD_WIDTH-1:0] data_in;
	output [`WORD_WIDTH-1:0] data_out;

	//INITIALIZE MEMORY ARRAY
	reg [`MEM_WIDTH-1:0] memory [0:`MEM_DEPTH-1];


	//STORE INITIAL CONTENTS
	initial begin
		$readmemh("mem_rusty.txt", memory);
	end

	//READ PORT
	reg [`WORD_WIDTH-1:0] data_out_buf;

	always@(*)
		data_out_buf <= {memory[address], memory[address+1]};

	assign data_out = data_out_buf;

	//WRITE PORT
	always@(posedge clock) begin
		if (wr_en) begin
			memory[address] <= data_in[15:8];
			memory[address+1] <= data_in[7:0];
		end
	end
endmodule
