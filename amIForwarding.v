`timescale 1ns/1ps
`define MEM_DEPTH  1024
`define MEM_WIDTH  8
`define WORD_WIDTH 16

module amIForwarding(clock, reset, start, MY_NODE_ID, destinationID, iamForwarding, done);
	input clock, reset, start;
	input [`WORD_WIDTH-1:0] MY_NODE_ID, destinationID;
    output iamForwarding, done;

    // Registers
    reg iamForwarding_buf, done_buf;
    
    initial begin
    	iamForwarding_buf <= 0;
        done_buf <= 0;
    end

    always @ (posedge reset) begin
        iamForwarding_buf <= 0;
        done_buf <= 0;
    end

    always @ (posedge start) begin
        if (MY_NODE_ID == destinationID)
            iamForwarding_buf = 1;
        else begin
            iamForwarding_buf = 0;
            // Toggle reset
        end
        done_buf = 1;
    end

    assign iamForwarding = iamForwarding_buf;
    assign done = done_buf;
endmodule