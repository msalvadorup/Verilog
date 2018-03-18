`timescale 1ns/1ps
`define MEM_DEPTH  2048
`define MEM_WIDTH  8
`define WORD_WIDTH 16

/* Address List
 * (2/4)        [0x0 - 0x07]        amISink/forAggregation/epsilon FLAGS (0-3)
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
	//initial begin
	//	$readmemh("./mem.txt", memory);
	//end

	// Test Case
	integer i;
	initial begin
		// Zero Coating
		for (i = 0; i < 2048; i=i+1) begin
			memory[i] = 0;
		end

		// epsilon 
        memory['h4] = 0; 
        memory['h5] = 7;

		// FLAGS
		memory['h0] = 0;
		memory['h1] = 0;

		memory['h2] = 0;
		memory['h3] = 0;

/*
		memory['h4] = 0;
		memory['h5] = 0;
*/

		memory['h6] = 0;
		memory['h7] = 0;

		// knownSinks
		memory['h8 + 0] = 0;
		memory['h8 + 1] = 2;

		memory['h8 + 2] = 0;
		memory['h8 + 3] = 5;

		memory['h8 + 4] = 0;
		memory['h8 + 5] = 10;

		memory['h8 + 6] = 0;
		memory['h8 + 7] = 171;

		memory['h8 + 8] = 0;
		memory['h8 + 9] = 205; // 5 knownSinks

		memory['h8 + 10] = 0;
		memory['h8 + 11] = 0;

		// knownSinkCount
		memory['h688] = 0;
		memory['h688 + 1] = 5;
		
		// betterneighbors
		memory['h668 + 0] = 0;
		memory['h668 + 1] = 0;

		memory['h668 + 2] = 0;
		memory['h668 + 3] = 0;

		memory['h668 + 4] = 0;
		memory['h668 + 5] = 0;

		memory['h668 + 6] = 0;
		memory['h668 + 7] = 0;

		memory['h668 + 8] = 0;
		memory['h668 + 9] = 0;

		memory['h668 + 10] = 0;
		memory['h668 + 11] = 0;
		
		// betterneighborCount
		memory['h68C] = 0;
		memory['h68C + 1] = 0;

		// worstHops
		memory['h28 + 0] = 8'b1;
		memory['h28 + 1] = 8'b01100000;	// 11

		memory['h28 + 2] = 8'b0;
		memory['h28 + 3] = 8'b01100000;	// 3

		memory['h28 + 4] = 8'b0;
		memory['h28 + 5] = 8'b10100000; // 5

		memory['h28 + 6] = 8'b0;
		memory['h28 + 7] = 8'b11100000; // 7

		memory['h28 + 8] = 8'b1;
		memory['h28 + 9] = 8'b10100000; // 13	// 5 worstHops

		memory['h28 + 10] = 0;
		memory['h28 + 11] = 0;

		// neighborCount
		memory['h68A] = 0;
		memory['h68A + 1] = 4;


		// sinkIDsCount
		memory['h68E + 0] = 0;
		memory['h68E + 1] = 3;

		memory['h68E + 2] = 0;
		memory['h68E + 3] = 5;

		memory['h68E + 4] = 0;
		memory['h68E + 5] = 3;

		memory['h68E + 6] = 0;
		memory['h68E + 7] = 1;  // 4 sinkIDsCount

		memory['h68E + 8] = 0;
		memory['h68E + 9] = 0;

		memory['h68E + 10] = 0;
		memory['h68E + 11] = 0;

		// sinkIDs
		memory['h248 + 0 + 0] = 0;
		memory['h248 + 0 + 1] = 10;

		memory['h248 + 0 + 2] = 0;
		memory['h248 + 0 + 3] = 171;

		memory['h248 + 0 + 4] = 0;
		memory['h248 + 0 + 5] = 205;

		memory['h248 + 0 + 6] = 0;
		memory['h248 + 0 + 7] = 0;

		memory['h248 + 0 + 8] = 0;
		memory['h248 + 0 + 9] = 0;


		memory['h248 + 16 + 0] = 0;
		memory['h248 + 16 + 1] = 2;

		memory['h248 + 16 + 2] = 0;
		memory['h248 + 16 + 3] = 5;

		memory['h248 + 16 + 4] = 0;
		memory['h248 + 16 + 5] = 10;

		memory['h248 + 16 + 6] = 0;
		memory['h248 + 16 + 7] = 171;

		memory['h248 + 16 + 8] = 0;
		memory['h248 + 16 + 9] = 205;


		memory['h248 + 32 + 0] = 0;
		memory['h248 + 32 + 1] = 2;

		memory['h248 + 32 + 2] = 0;
		memory['h248 + 32 + 3] = 5;

		memory['h248 + 32 + 4] = 0;
		memory['h248 + 32 + 5] = 10;

		memory['h248 + 32 + 6] = 0;
		memory['h248 + 32 + 7] = 0;

		memory['h248 + 32 + 8] = 0;
		memory['h248 + 32 + 9] = 0;


		memory['h248 + 48 + 0] = 0;
		memory['h248 + 48 + 1] = 2;

		memory['h248 + 48 + 2] = 0;
		memory['h248 + 48 + 3] = 0;

		memory['h248 + 48 + 4] = 0;
		memory['h248 + 48 + 5] = 0;

		memory['h248 + 48 + 6] = 0;
		memory['h248 + 48 + 7] = 0;

		memory['h248 + 48 + 8] = 0;
		memory['h248 + 48 + 9] = 0; // 4 sinkIDs


		memory['h248 + 64 + 0] = 0;
		memory['h248 + 64 + 1] = 0;

		memory['h248 + 64 + 2] = 0;
		memory['h248 + 64 + 3] = 0;

		memory['h248 + 64 + 4] = 0;
		memory['h248 + 64 + 5] = 0;

		memory['h248 + 64 + 6] = 0;
		memory['h248 + 64 + 7] = 0;

		memory['h248 + 64 + 8] = 0;
		memory['h248 + 64 + 9] = 0;


		memory['h248 + 80 + 0] = 0;
		memory['h248 + 80 + 1] = 0;

		memory['h248 + 80 + 2] = 0;
		memory['h248 + 80 + 3] = 0;

		memory['h248 + 80 + 4] = 0;
		memory['h248 + 80 + 5] = 0;

		memory['h248 + 80 + 6] = 0;
		memory['h248 + 80 + 7] = 0;

		memory['h248 + 80 + 8] = 0;
		memory['h248 + 80 + 9] = 0;

		// HCM		
		memory['h648 + 0] = 8'b10110000;	// 5.5
		memory['h648 + 1] = 8'b0;

		memory['h648 + 2] = 8'b10010100;	// 4.64 ~ 4.639892578125
		memory['h648 + 3] = 8'b01111010;

		memory['h648 + 4] = 8'b01111101;	// 3.91 ~ 3.909912109375
		memory['h648 + 5] = 8'b00011110;

		memory['h648 + 6] = 8'b01101001;	// 3.3 ~ 3.2999267578125
		memory['h648 + 7] = 8'b10011001;

		memory['h648 + 8] = 8'b01011000;	// 2.78 ~ 2.7799072265625
		memory['h648 + 9] = 8'b11110101;

		memory['h648 + 10] = 8'b01001011;	// 2.35 ~ 2.3499755859375
		memory['h648 + 11] = 8'b00110011;

		memory['h648 + 12] = 8'b00111111;	// 1.98 ~ 1.97998046875
		memory['h648 + 13] = 8'b01011100;

		memory['h648 + 14] = 8'b00110101;	// 1.67 ~ 1.669921875
		memory['h648 + 15] = 8'b01110000;

		memory['h648 + 16] = 8'b00101101;	// 1.41 ~ 1.409912109375
		memory['h648 + 17] = 8'b00011110;

		memory['h648 + 18] = 8'b00100110;	// 1.19	~ 1.18994140625
		memory['h648 + 19] = 8'b00010100;

		memory['h648 + 20] = 8'b00100000;	// 1.0
		memory['h648 + 21] = 8'b0;


		//* betterNeighborsInMyCluster
		// neighborID
		memory['h48 + 0] = 0;
		memory['h48 + 1] = 1;

		memory['h48 + 2] = 0;
		memory['h48 + 3] = 3;

		memory['h48 + 4] = 0;
		memory['h48 + 5] = 4;

		memory['h48 + 6] = 0;
		memory['h48 + 7] = 6; // 4 neighborID

		memory['h48 + 8] = 0;
		memory['h48 + 9] = 0;

		memory['h48 + 10] = 0;
		memory['h48 + 11] = 0;
		
		// clusterID
		memory['hC8 + 0] = 0;
		memory['hC8 + 1] = 9;

		memory['hC8 + 2] = 0;
		memory['hC8 + 3] = 1;

		memory['hC8 + 4] = 0;
		memory['hC8 + 5] = 1;

		memory['hC8 + 6] = 0;
		memory['hC8 + 7] = 3;	// 4 clusterID

		memory['hC8 + 8] = 0;
		memory['hC8 + 9] = 0;

		memory['hC8 + 10] = 0;
		memory['hC8 + 11] = 0;

		// qValue
		memory['h1C8 + 0] = 8'b111;			// 60 /1
		memory['h1C8 + 1] = 8'b10000000;
		
		memory['h1C8 + 2] = 8'b101;			// 40 /3
		memory['h1C8 + 3] = 8'b0;

		memory['h1C8 + 4] = 8'b100;			// 35 /4
		memory['h1C8 + 5] = 8'b01100000;
		
		memory['h1C8 + 6] = 8'b1;			// 10 /6
		memory['h1C8 + 7] = 8'b01000000;

		memory['h1C8 + 8] = 8'b0;
		memory['h1C8 + 9] = 8'b0;

		memory['h1C8 + 10] = 8'b0;
		memory['h1C8 + 11] = 8'b0;
		
		// batteryStat
		memory['h148 + 0] = 8'b01000000;	// 0.5
		memory['h148 + 1] = 8'b00000000;

		memory['h148 + 2] = 8'b00000001;	// 0.008
		memory['h148 + 3] = 8'b00000110;

		memory['h148 + 4] = 8'b01011001;	// 0.7
		memory['h148 + 5] = 8'b10011001;

		memory['h148 + 6] = 8'b10000000;	// 1.0
		memory['h148 + 7] = 8'b00000000;

		memory['h148 + 8] = 8'b0;
		memory['h148 + 9] = 8'b0;

		memory['h148 + 10] = 8'b0;
		memory['h148 + 11] = 8'b0;
		//*/

		/* fixSinkList, findMyBest testcase

		// neighborID
		memory['h48 + 0] = 0;
		memory['h48 + 1] = 1;

		memory['h48 + 2] = 0;
		memory['h48 + 3] = 3;

		memory['h48 + 4] = 0;
		memory['h48 + 5] = 4;

		memory['h48 + 6] = 0;
		memory['h48 + 7] = 6;
		
		memory['h48 + 8] = 8'b0;
		memory['h48 + 9] = 8'b0;

		// clusterID
		memory['hC8 + 0] = 0;
		memory['hC8 + 1] = 9;

		memory['hC8 + 2] = 0;
		memory['hC8 + 3] = 1;

		memory['hC8 + 4] = 0;
		memory['hC8 + 5] = 1;

		memory['hC8 + 6] = 0;
		memory['hC8 + 7] = 3;

		memory['hC8 + 8] = 8'b0;
		memory['hC8 + 9] = 8'b0;

		// qValue
		memory['h1C8 + 0] = 8'b1;
		memory['h1C8 + 1] = 8'b01000000;

		memory['h1C8 + 2] = 8'b100;
		memory['h1C8 + 3] = 8'b01100000;

		memory['h1C8 + 4] = 8'b101;
		memory['h1C8 + 5] = 8'b0;

		memory['h1C8 + 6] = 8'b111;
		memory['h1C8 + 7] = 8'b10000000;

		memory['h1C8 + 8] = 8'b0;
		memory['h1C8 + 9] = 8'b0;

		//*/


		/* neighborSinkInOtherCluster testcase
		// neighborID
		memory['h48 + 0] = 0;
		memory['h48 + 1] = 3;
		memory['h48 + 2] = 0;
		memory['h48 + 3] = 1;
		memory['h48 + 4] = 0;
		memory['h48 + 5] = 10;
		memory['h48 + 6] = 0;
		memory['h48 + 7] = 6;		
		// clusterID
		memory['hC8 + 0] = 0;
		memory['hC8 + 1] = 1;
		memory['hC8 + 2] = 0;
		memory['hC8 + 3] = 1;
		memory['hC8 + 4] = 0;
		memory['hC8 + 5] = 2;
		memory['hC8 + 6] = 0;
		memory['hC8 + 7] = 3;
		//*/

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

