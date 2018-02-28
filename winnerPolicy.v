`timescale 1ns/1ps
`define MEM_DEPTH  1024
`define MEM_WIDTH  8
`define WORD_WIDTH 16

module winnerPolicy(clock, nrst, _mybest, _besthop, _bestvalue, address, data_in, _bestneighborID, nexthop, done);
    input clock, nrst;
    input [`WORD_WIDTH-1:0] _mybest;
    input [`WORD_WIDTH-1:0] _besthop;
    input [`WORD_WIDTH-1:0] _bestvalue;
    
    // _better_qvalue
    output [`WORD_WIDTH-1:0] address;
    input [`WORD_WIDTH-1:0] data_in;

    input [`WORD_WIDTH-1:0] _bestneighborID;
    output [`WORD_WIDTH-1:0] nexthop;
    output done;

    reg [`WORD_WIDTH-1:0] nexthop;


    // Initial / nrst
    always @ (posedge nrst) begin
        nexthop <= 100;     // For the lack of negative number representaion, let's use 100 as -1 

        //  Call Randomizer
        //  Add delay
        //  Proceed to explore_constant < epsion ....
    
    end

    // Main
    

    reg [`WORD_WIDTH-1:0] address_count;

endmodule


