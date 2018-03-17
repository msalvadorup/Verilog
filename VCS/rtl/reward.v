`timescale 1ns/1ps
`define WORD_WIDTH 16

//fsourceID, fbatteryStat, fValue, fclusterID, fdestinationID

module reward(clock, nrst, en, start, MY_NODE_ID, MY_CLUSTER_ID, action, besthop, address, data_in, data_out, done);

    input clock, nrst, start, en;
    input [`WORD_WIDTH-1:0] MY_NODE_ID, MY_CLUSTER_ID, action, besthop, data_in;
    output [`WORD_WIDTH-1:0] data_out;
    output [10:0] address;
    output done;

    // Registers
    reg [10:0] address_count;
    reg [`WORD_WIDTH-1:0] data_out_buf;
    reg done_buf;

    reg [3:0] state;
    always @ (posedge clock) begin
        if (!nrst) begin
            state = 0;
            done_buf = 0;
            address_count = 0;
            data_out_buf = 0;
        end
        else begin
            case (state)
                4'd0: begin
                    if (en) begin
                        state = 1;
                        done_buf = 0;
                        address_count = 0;
                        data_out_buf = 0;
                    end
                    else
                        state = 0;
                end
                4'd1: begin
                    if (start) begin
                        state = 2;
                    end
                    else
                        state = 1;
                end
                4'd2: begin // fsourceID
                    data_out_buf = MY_NODE_ID;
                    state = 3;
                    address_count = 16'h148 + besthop * 2;  // batteryStat address
                    $display("fsourceID: %d", data_out_buf);
                end
                4'd3: begin // fbatteryStat
                    data_out_buf = data_in;
                    state = 4;
                    address_count =  16'h1C8 + besthop * 2; // qValue address
                    $display("fbatteryStat: %b,%d", data_out_buf, besthop);
                end
                4'd4: begin // fValue
                    data_out_buf = data_in;
                    state = 5;
                    $display("fValue: %b", data_out_buf);
                end
                4'd5: begin // fclusterID
                    data_out_buf = MY_CLUSTER_ID;
                    state = 6;
                    address_count = 16'h48 + action * 2; // neighborID address
                    $display("fclusterID: %d", data_out_buf);
                end
                4'd6: begin // fdestinationID
                    data_out_buf = data_in;
                    state = 7;
                    $display("fdestinationID: %d", data_out_buf);
                end
                4'd7: begin
                    done_buf = 1;
                    state = 0;
                end
                default: begin
                    state = 0;
                end
            endcase
        end
    end

    assign data_out = data_out_buf;
    assign done = done_buf;
    assign address = address_count;
endmodule
