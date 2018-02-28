`timescale 1ns/1ps
`define MEM_DEPTH  1024
`define MEM_WIDTH  8
`define WORD_WIDTH 16
`define HCM_LENGTH 11

/* States
 * 0: Check if neighbor is in my cluster
 * 1: Check if neighbor is still alive, get batteryStat
 * 2: Check if neighbor qValue <= mybest (betterneighbors)
 * 3: Compute bestvalue
 * 4: Get neighborID
 * 5: Get knownSinks and check if I have neighbor sinks (nextsinks)
 * 6: Get bestneighborID
 * 
 * Note: Gagawin pang float yung mga values
 */

module betterNeighborsInMyCluster(clock, reset, start, address, data_in, MY_CLUSTER_ID, mybest, betterneighbors, besthop, bestvalue, bestneighborID, nextsinks, done);
    input clock, reset, start;
    input [`WORD_WIDTH-1:0] data_in, MY_CLUSTER_ID;
    input [`WORD_WIDTH-1:0] mybest; // float
    output done;
    output [`WORD_WIDTH-1:0] address;
    output [`WORD_WIDTH-1:0] betterneighbors, besthop, bestneighborID, nextsinks;
    output [`WORD_WIDTH-1:0] bestvalue; // float

    // Registers
    reg done_buf;
    reg [`WORD_WIDTH-1:0] address_count, i, j, k;
    reg [`WORD_WIDTH-1:0] neighborID, knownSinks, betterneighbors_buf, besthop_buf, bestneighborID_buf, nextsinks_buf;
    reg [`WORD_WIDTH-1:0] BATTERY_THRESHOLD, batteryStat, qValue, bestvalue_buf; // float
    reg [2:0] state;

    initial begin
        done_buf <= 0;
        address_count <= 16'hC8; // clusterID address
        betterneighbors_buf <= 0;
        besthop_buf <= 16'd65;
        bestvalue_buf  <= 16'hFFFE; //float
        BATTERY_THRESHOLD <= 0; // float (0.01)
        nextsinks_buf <= 16'd65;
        state <= 0;
        i <= 0;
        j <= 0;
        k <= 0;
    end

    always @ (posedge reset) begin
        done_buf <= 0;
        address_count <= 16'hC8;
        betterneighbors_buf <= 0;
        besthop_buf <= 16'd65;
        bestvalue_buf <= 16'hFFFE; //float
        BATTERY_THRESHOLD <= 0; // float (0.01)
        nextsinks_buf <= 16'd65;
        state <= 0;
        i <= 0;
        j <= 0;
        k <= 0;
    end

    always @ (posedge clock) begin
        if (start && !done_buf) begin
            case (state)
                3'd0: begin
                    if (MY_CLUSTER_ID != data_in) begin
                        i = i + 1;
                    end
                    else begin
                        state = 3'd1;
                        address_count = 16'h148 + 2*i; // batteryStat address
                    end
                end

                3'd1: begin
                    batteryStat = data_in; 
                    if (BATTERY_THRESHOLD > batteryStat) begin
                        i = i + 1;
                        state = 3'd0;
                        address_count = 16'hC8 + 2*i; // clusterID address
                    end
                    else begin
                        state = 3'd2;
                        address_count = 16'h1C8 + 2*i; // qValue address
                    end
                end

                3'd2: begin
                    // Read data_in from address_count = 16'h1C8;
                    qValue = data_in;
                    if (qValue <= mybest) begin
                        betterneighbors_buf = betterneighbors_buf + 1;
                        state = 3'd3;
                        k = $ceil((`HCM_LENGTH-1) * batteryStat); // float multiplication
                        if (k >= `HCM_LENGTH)
                            k = `HCM_LENGTH - 1;
                        address_count = 16'h648 + 2*k; // HCM address
                    end
                    else begin
                        state = 3'd4;
                        address_count = 16'h48 + 2*i; // neighborID address
                    end

                end

                3'd3: begin
                    // Read data_in from address_count = 16'h648 + 2*k;
                    qValue = qValue * data_in; // float multiplication
                    if (qValue < bestvalue_buf) begin
                        besthop_buf = i;
                        bestvalue_buf = qValue;
                    end
                    state = 3'd4;
                    address_count = 16'h48 + 2*i; // neighborID address
                end

                3'd4: begin
                    // Read data_in from address_count = 16'h48 + 2*i;
                    neighborID = data_in;
                    state = 3'd5;
                    address_count = 16'h8 + 2*j; // knownSinks address
                    
                end

                3'd5: begin
                    // Read data_in from address_count = 16'h8 + 2*j;
                    knownSinks = data_in;
                    $display("%d,%d,%d,%d,%d,%d,%d", batteryStat, qValue, k, neighborID, knownSinks, i, j);
                    // If there is a neighbor sink in my cluster, send my packet to that sink!
                    if (neighborID == knownSinks) begin
                        nextsinks_buf = i;
                    end

                    j = j + 1;
                    address_count = 16'h8 + 2*j; // knownSinks address

                    if (j == 16) begin
                        j = 0;
                        i = i + 1;
                        state = 3'd0;
                        address_count = 16'hC8 + 2*i; // clusterID address
                    end

                    if (i == 64) begin
                        state = 3'd6;
                        address_count = 16'h48 + 2*besthop_buf; // bestneighborID address
                        
                    end
                end

                3'd6: begin
                    bestneighborID_buf = data_in;
                    done_buf = 1;
                    //$display("I'm done");
                end
            endcase
        end
    end

    assign done = done_buf;
    assign address = address_count;
    assign betterneighbors = betterneighbors_buf;
    assign besthop = besthop_buf;
    assign bestvalue = bestvalue_buf;
    assign bestneighborID = bestneighborID_buf;
    assign nextsinks = nextsinks_buf;
endmodule