`define WORD_WIDTH 16

module reward(clock, nrst, start, MY_NODE_ID, MY_CLUSTER_ID, action, besthop, address, data_in, data_out, done);

    input clock, nrst, start;
    input [`WORD_WIDTH-1:0] MY_NODE_ID, MY_CLUSTER_ID, action, besthop, data_in;
    output [10:0] address;
    output [`WORD_WIDTH-1:0] data_out;
    output done;

    // Registers
    reg [10:0] address_count;
    reg [`WORD_WIDTH-1:0] data_out_buf;
    reg done_buf;

    reg [3:0] state;
    always @ (posedge clock) begin
        if (!nrst) begin
            state <= 0;
            done_buf <= 0;
        end
        else begin
            case (state)
                4'd0: begin
                    if (start)
                        state <= 1;
                    else
                        state <= 0;
                end
                4'd1: begin
                    state <= 2;
                    address_count = 11'h148 + MY_CLUSTER_ID*2;
                end
                4'd2: begin
                    state <= 3;
                    address_count = 11'h1C8 + besthop*2;
                end
                4'd3: begin
                    state <= 4;
                end
                4'd4: begin
                    state <= 5;
                    address_count = 11'h48 + action*2;
                end
                4'd5: begin
                    state <= 6;
                    done_buf <= 1;
                end
                default: begin
                    state <= 6;
                    done_buf <= 1;
                end
            endcase
        end
    end

    always @ (*) begin
        case (state)
            1: data_out_buf = MY_NODE_ID;
            4: data_out_buf = MY_CLUSTER_ID;
            default: data_out_buf = data_in;
        endcase
    end

    assign data_out = data_out_buf;
    assign done = done_buf;
    assign address = address_count;
endmodule