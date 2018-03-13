`define WORD_WIDTH 16

module reward(clock, nrst, en, start, MY_NODE_ID, MY_CLUSTER_ID, action, besthop, address, data_in, data_out, done);

<<<<<<< HEAD
    input clock, nrst, start, en;
    input [`WORD_WIDTH-1:0] MY_NODE_ID, MY_CLUSTER_ID, action, besthop, data_in;
    output [`WORD_WIDTH-1:0] data_out, address;
=======
    input clock, nrst, start;
    input [`WORD_WIDTH-1:0] MY_NODE_ID, MY_CLUSTER_ID, action, besthop, data_in;
    output [10:0] address;
    output [`WORD_WIDTH-1:0] data_out;
>>>>>>> 4e5d100a5cb258fcdb5de494bdda609d9e5cf6b8
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
                    if (en) begin
                        state <= 1;
                        done_buf <= 0;
                    end
                    else
                        state <= 0;
                end
                4'd1: begin
<<<<<<< HEAD
                    if (start) begin
                        state <= 2;
                    end
                    else
                        state <= 1;
                end
                4'd2: begin
                    state <= 3;
                    address_count = 16'h148 + {MY_CLUSTER_ID[14:0], 1'd0};
=======
                    state <= 2;
                    address_count = 11'h148 + MY_CLUSTER_ID*2;
                end
                4'd2: begin
                    state <= 3;
                    address_count = 11'h1C8 + besthop*2;
>>>>>>> 4e5d100a5cb258fcdb5de494bdda609d9e5cf6b8
                end
                4'd3: begin
                    state <= 4;
                    address_count =  16'h1C8 + {besthop[14:0], 1'd0};
                end
                4'd4: begin
                    state <= 5;
<<<<<<< HEAD
=======
                    address_count = 11'h48 + action*2;
>>>>>>> 4e5d100a5cb258fcdb5de494bdda609d9e5cf6b8
                end
                4'd5: begin
                    state <= 6;
                    address_count = 16'h48 + {action[14:0], 1'd0};
                end
                4'd6: begin
                    state <= 0;
                    done_buf <= 1;
                end
                default: begin
                    state <= 0;
                end
            endcase
        end
    end

    always @ (*) begin
        case (state)
            2: data_out_buf = MY_NODE_ID;
            5: data_out_buf = MY_CLUSTER_ID;
            default: data_out_buf = data_in;
        endcase
    end

    assign data_out = data_out_buf;
    assign done = done_buf;
    assign address = address_count;
endmodule