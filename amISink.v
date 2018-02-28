`timescale 1ns/1ps
`define MEM_DEPTH  1024
`define MEM_WIDTH  8
`define WORD_WIDTH 16

/*  Register bank
 *  0x0 - forAggregation
 */

module amISink(clock, reset, start, address, data_in, MY_NODE_ID, forAggregation, done);
    input clock, reset, start;
    input [`WORD_WIDTH-1:0] data_in, MY_NODE_ID;
    output forAggregation, done;
    output [`WORD_WIDTH-1:0] address;

    // Registers
    reg forAggregation_buf, done_buf;
    reg [`WORD_WIDTH-1:0] address_count;
    
    initial begin
        forAggregation_buf <= 0;
        done_buf <= 0;
        address_count <= 16'h8; // knownSinks address
    end
  
    always @ (posedge reset) begin
        forAggregation_buf <= 0;
        done_buf <= 0;
        address_count <= 16'h8;
    end

    always @ (posedge clock) begin
        if (start && !done_buf) begin
            // $display("Sink Data %X%X", data_in[15:8], data_in[7:0]);
            if (MY_NODE_ID == data_in) begin
                forAggregation_buf = 1;
                done_buf = 1;
                // Toggle reset
            end

            if (address_count == 16'h26)
                done_buf = 1;
            else
                address_count = address_count + 2;          
        end
    end

    assign forAggregation = forAggregation_buf;
    assign done = done_buf;
    assign address = address_count;
endmodule