`timescale 1ns/1ps
`define MEM_DEPTH  1024
`define MEM_WIDTH  8
`define WORD_WIDTH 16

module fixSinkList(clock, nrst, start, address, data_in, done);
	input clock, nrst, start;
	input [`WORD_WIDTH-1:0] data_in;
    output done;
    output [`WORD_WIDTH-1:0] address;

    // Registers
    reg done_buf;
    reg [`WORD_WIDTH-1:0] address_count, i, j, l;
    reg [`WORD_WIDTH-1:0] knownSinks, worstHops, sinkIDs, qValue, neighborCount, knownSinksCount, sinkIDsCount;
    reg [2:0] state;

    always @ (posedge clock) begin
        if (!nrst) begin
            done_buf <= 0;
            address_count <= 16'h0000; // neighborCount address
            state <= 0;
            i <= 0;
            j <= 0;
            l <= 0;
        end
        else begin
            if (start && !done_buf) begin
                case (state)
                0: begin
                    neighborCount = data_in;
                    state = 1;
                    address_count = 16'h000000000; // knownSinksCount address
                end

                1: begin
                    knownSinksCount = data_in;
                    state = 2;
                    address_count = 16'h00000 + 2*l; // sinkIDsCount address
                end

                2: begin
                    sinkIDsCount = data_in;
                    state = 3;
                    address_count = 16'h8; // knownSinks address
                end

                3: begin
                    knownSinks = data_in;
                    state = 4;
                    address_count = 16'h0000 + 2*
                end

                4: begin
                    if (knownSinks == sinkIDs) begin

                    end

                    if (j == knownSinksCount) begin

                    end

                    if 
                end

            endcase
        end
    end
    assign done = done_buf;
    assign address = address_count;

endmodule


