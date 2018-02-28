`timescale 1ns/1ps
`define MEM_DEPTH  1024
`define MEM_WIDTH  8
`define WORD_WIDTH 16

/* Possible Actions
 * random hop (explore hop)
 * besthop
 * nextsink
 * self (CH role)
 */

module selectMyAction(clock, reset, start, nexthop, nextsinks, action, forAggregation, done);
    input clock, reset, start;
    input [`WORD_WIDTH-1:0] nexthop, nextsinks;
    output forAggregation, done;
    output [`WORD_WIDTH-1:0] action;

    // Registers
    reg forAggregation_buf, done_buf;
    reg [`WORD_WIDTH-1:0] action_buf;

    initial begin
        done_buf <= 0;
        action_buf <= nexthop;
    end

    always @ (posedge reset) begin
        done_buf <= 0;
        action_buf <= nexthop;
    end

    always @ (posedge start) begin
        if (nextsinks != 16'd65) begin
            action_buf = nextsinks;
            //$display("Send pkt to neighbor sink in my cluster!");
        end
        if (action_buf == 65) begin
            forAggregation_buf = 1;
            // Toggle reset
            //$display("No better in-cluster head. Schedule aggregation!");
        end
        done_buf = 1;
    end

    assign done = done_buf;
    assign forAggregation = forAggregation_buf;
    assign action = action_buf;
endmodule