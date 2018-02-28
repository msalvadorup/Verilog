`timescale 1ns/1ps
`define MEM_DEPTH  1024
`define MEM_WIDTH  8
`define WORD_WIDTH 16

module fixSinkList(clock, reset, start, address, data_in, done);
	input clock, reset, start;
	input [`WORD_WIDTH-1:0] data_in;
    output done;
    output [`WORD_WIDTH-1:0] address;

    // Registers
    reg done_buf;
    reg [`WORD_WIDTH-1:0] address_count, i, j;
    reg [`WORD_WIDTH-1:0] knownSinks, worstHops, sinkIDs, qValue, ;
    reg [2:0] state;

    initial begin
        done_buf <= 0;
        address_count <= 16'h48;
        state <= 0;
        i <= 0;
        j <= 0;        
    end

    always @ (posedge reset) begin
        done_buf <= 0;
        address_count <= 16'h0;
        state <= 0;
        i <= 0;
        j <= 0;
    end

    always @ (posedge clock) begin
        if (start && !done_buf) begin
        	case (state)
                2'd0: begin
                    // Read data_in from address_count = 16'h48 + 2*i 
                    neighborID = data_in;
                    state = 2'd1;
                    address_count = 16'hC8 + 2*i;
                end

                2'd1: begin
                    // Read data_in from address_count = 16'hC8 + 2*i
                    clusterID = data_in;
                    state = 2'd2;
                    address_count = 16'h8 + 2*j;
                end

                2'd2: begin
                    // Read data_in from address_count = 16'h8 + 2*j
                    knownSinks = data_in;
                    state = 2'd3;
                end

                2'd3: begin
                    // Find neighbor[i] in knownSinks!
                    // If there are neighbor sinks in other clusters, schedule aggregation!
                    $display("%d,%d,%d,%d,%d", neighborID, clusterID, knownSinks, i, j);
                    if ((neighborID == knownSinks) && (clusterID != MY_CLUSTER_ID)) begin
                        forAggregation_buf = 1;
                        done_buf = 1;
                    end

                    j = j + 1;
                    state = 2'd2;
                    address_count = 16'h8 + 2*j; 

                    if (j == 16) begin
                        j = 0;
                        i = i + 1;
                        state = 2'd0;
                        address_count = 16'h48 + 2*i;
                    end

                    if (i == 64) begin
                        done_buf = 1;
                        // $display("I'm done");
                    end
                end
            endcase
        end
    end
    assign done = done_buf;
    assign address = address_count;

endmodule