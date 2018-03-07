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
	input [`WORD_WIDTH-1:0] address, data_in;
	output [`WORD_WIDTH-1:0] data_out;

	//INITIALIZE MEMORY ARRAY
	reg [`MEM_WIDTH-1:0] memory [0:`MEM_DEPTH-1];


	//STORE INITIAL CONTENTS
	initial begin
		$readmemh("./mem.txt", memory);
	end

/*
    // INITIAL CONTENTS FOR TESTING PURPOSES ONLY
    integer i;
    initial begin
        for (i = 0; i < 15; i=i+1) begin
            memory[i*2+1] = 15 - i;   // totoong value
            memory[i*2] = 0;          // padding para hindi XX
        end
    end
    MY_NODE_ID <= 3;
	destinationID <= 3;
	MY_CLUSTER_ID <= 1;
*/
	// Test Case
	initial begin
		// HCM
		memory['h648] = 8'b00100000;		// 1.0
		memory['h648 + 1] = 8'b0;

		memory['h648 + 2] = 8'b00100110;	// 1.19	~ 1.18994140625
		memory['h648 + 3] = 8'b00010100;

		memory['h648 + 4] = 8'b00101101;	// 1.41 ~ 1.409912109375
		memory['h648 + 5] = 8'b00011110;

		memory['h648 + 6] = 8'b00110101;	// 1.67 ~ 1.669921875
		memory['h648 + 7] = 8'b01110000;

		memory['h648 + 8] = 8'b00111111;	// 1.98 ~ 1.97998046875
		memory['h648 + 9] = 8'b01011100;

		memory['h648 + 10] = 8'b01001011;	// 2.35 ~ 2.3499755859375
		memory['h648 + 11] = 8'b00110011;

		memory['h648 + 12] = 8'b01011000;	// 2.78 ~ 2.7799072265625
		memory['h648 + 13] = 8'b11110101;

		memory['h648 + 14] = 8'b01101001;	// 3.3 ~ 3.2999267578125
		memory['h648 + 15] = 8'b10011001;

		memory['h648 + 16] = 8'b01111101;	// 3.91 ~ 3.909912109375
		memory['h648 + 17] = 8'b00011110;

		memory['h648 + 18] = 8'b10010100;	// 4.64 ~ 4.639892578125
		memory['h648 + 19] = 8'b01111010;

		memory['h648 + 20] = 8'b10110000;	// 5.5
		memory['h648 + 21] = 8'b0;

	//*/
		// knownSinkCount
		memory['h688] = 0;
		memory['h688 + 1] = 5;

		// neighborCount
		memory['h68A] = 0;
		memory['h68A + 1] = 4;

		///* fixSinkList testcase
		// neighborID
		memory['h48 + 0] = 0;
		memory['h48 + 1] = 1;

		memory['h48 + 2] = 0;
		memory['h48 + 3] = 3;

		memory['h48 + 4] = 0;
		memory['h48 + 5] = 4;

		memory['h48 + 6] = 0;
		memory['h48 + 7] = 6;
		
		// clusterID
		memory['hC8 + 0] = 0;
		memory['hC8 + 1] = 9;

		memory['hC8 + 2] = 0;
		memory['hC8 + 3] = 1;

		memory['hC8 + 4] = 0;
		memory['hC8 + 5] = 1;

		memory['hC8 + 6] = 0;
		memory['hC8 + 7] = 3;

		// sinkIDsCount
		memory['h68E + 0] = 0;
		memory['h68E + 1] = 3;

		memory['h68E + 2] = 0;
		memory['h68E + 3] = 5;

		memory['h68E + 4] = 0;
		memory['h68E + 5] = 3;

		memory['h68E + 6] = 0;
		memory['h68E + 7] = 1;

		// sinkIDs
		memory['h248 + 0 + 0] = 0;
		memory['h248 + 0 + 1] = 10;

		memory['h248 + 0 + 2] = 0;
		memory['h248 + 0 + 3] = 171;

		memory['h248 + 0 + 4] = 0;
		memory['h248 + 0 + 5] = 205;


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
		

		memory['h248 + 48 + 0] = 0;
		memory['h248 + 48 + 1] = 2;

		// qValue
		memory['h1C8 + 0] = 0;
		memory['h1C8 + 1] = 10;

		memory['h1C8 + 2] = 0;
		memory['h1C8 + 3] = 35;

		memory['h1C8 + 4] = 0;
		memory['h1C8 + 5] = 40;

		memory['h1C8 + 6] = 0;
		memory['h1C8 + 7] = 60;

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