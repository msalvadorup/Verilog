`timescale 1ns/1ps
module amISink ( clock, nrst, en, start, address, wr_en, data_in, data_out, 
        forAggregation, done );
  output [10:0] address;
  input [15:0] data_in;
  output [15:0] data_out;
  input clock, nrst, en, start;
  output wr_en, forAggregation, done;
  wire   N52, N54, N56, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37;
  wire   [2:0] state;
  assign data_out[1] = 1'b0;
  assign data_out[2] = 1'b0;
  assign data_out[3] = 1'b0;
  assign data_out[4] = 1'b0;
  assign data_out[5] = 1'b0;
  assign data_out[6] = 1'b0;
  assign data_out[7] = 1'b0;
  assign data_out[8] = 1'b0;
  assign data_out[9] = 1'b0;
  assign data_out[10] = 1'b0;
  assign data_out[11] = 1'b0;
  assign data_out[12] = 1'b0;
  assign data_out[13] = 1'b0;
  assign data_out[14] = 1'b0;
  assign data_out[15] = 1'b0;
  assign address[10] = 1'b0;
  assign address[9] = 1'b0;
  assign address[8] = 1'b0;
  assign address[7] = 1'b0;
  assign address[6] = 1'b0;
  assign address[5] = 1'b0;
  assign address[4] = 1'b0;
  assign address[3] = 1'b0;
  assign address[2] = 1'b0;
  assign address[0] = 1'b0;
  assign data_out[0] = 1'b1;

  DFFX1 \state_reg[0]  ( .D(N54), .CLK(clock), .Q(state[0]), .QN(n8) );
  DFFX1 \state_reg[2]  ( .D(N56), .CLK(clock), .Q(state[2]), .QN(n6) );
  DFFSSRX1 \state_reg[1]  ( .D(n2), .RSTB(nrst), .SETB(n1), .CLK(clock), .Q(
        state[1]), .QN(n7) );
  DFFX1 done_buf_reg ( .D(n37), .CLK(clock), .Q(done) );
  DFFSSRX1 forAggregation_buf_reg ( .D(n14), .RSTB(n12), .SETB(n22), .CLK(
        clock), .Q(forAggregation) );
  DFFX1 \address_count_reg[1]  ( .D(n36), .CLK(clock), .Q(address[1]) );
  DFFX1 wr_en_buf_reg ( .D(n35), .CLK(clock), .Q(wr_en) );
  INVX0 U14 ( .INP(n14), .ZN(n1) );
  AO22X1 U35 ( .IN1(wr_en), .IN2(n3), .IN3(n14), .IN4(n15), .Q(n35) );
  AO22X1 U36 ( .IN1(address[1]), .IN2(n4), .IN3(n14), .IN4(N52), .Q(n36) );
  AO22X1 U37 ( .IN1(done), .IN2(n18), .IN3(n19), .IN4(n20), .Q(n37) );
  AOI21X1 U38 ( .IN1(n20), .IN2(state[0]), .IN3(n21), .QN(n18) );
  NAND3X0 U39 ( .IN1(n5), .IN2(n23), .IN3(forAggregation), .QN(n22) );
  AO221X1 U40 ( .IN1(state[2]), .IN2(n24), .IN3(n25), .IN4(n10), .IN5(n26), 
        .Q(N56) );
  AO21X1 U41 ( .IN1(state[1]), .IN2(state[0]), .IN3(n9), .Q(n26) );
  OA221X1 U42 ( .IN1(n12), .IN2(n23), .IN3(n11), .IN4(n28), .IN5(n17), .Q(n27)
         );
  OR3X1 U43 ( .IN1(n24), .IN2(state[2]), .IN3(n11), .Q(n30) );
  AO21X1 U44 ( .IN1(en), .IN2(n25), .IN3(n9), .Q(n21) );
  NAND3X0 U45 ( .IN1(n7), .IN2(n6), .IN3(state[0]), .QN(n23) );
  NAND4X0 U46 ( .IN1(n31), .IN2(n32), .IN3(n33), .IN4(n34), .QN(n29) );
  NOR4X0 U47 ( .IN1(data_in[9]), .IN2(data_in[8]), .IN3(data_in[7]), .IN4(
        data_in[6]), .QN(n34) );
  NOR4X0 U48 ( .IN1(data_in[5]), .IN2(data_in[4]), .IN3(data_in[3]), .IN4(
        data_in[2]), .QN(n33) );
  NOR4X0 U49 ( .IN1(data_in[1]), .IN2(data_in[15]), .IN3(data_in[14]), .IN4(
        data_in[13]), .QN(n32) );
  NOR4X0 U50 ( .IN1(data_in[12]), .IN2(data_in[11]), .IN3(data_in[10]), .IN4(
        n13), .QN(n31) );
  NOR2X0 U51 ( .IN1(n9), .IN2(n23), .QN(n14) );
  OA21X1 U52 ( .IN1(n29), .IN2(n23), .IN3(n5), .Q(n16) );
  INVX0 U53 ( .INP(n29), .ZN(n12) );
  INVX0 U54 ( .INP(n21), .ZN(n5) );
  INVX0 U55 ( .INP(n17), .ZN(n2) );
  INVX0 U56 ( .INP(data_in[0]), .ZN(n13) );
  INVX0 U57 ( .INP(nrst), .ZN(n9) );
  INVX0 U58 ( .INP(en), .ZN(n10) );
  NOR2X0 U59 ( .IN1(n18), .IN2(n9), .QN(n19) );
  NOR2X0 U60 ( .IN1(n27), .IN2(n9), .QN(N54) );
  NAND2X1 U61 ( .IN1(n8), .IN2(n6), .QN(n28) );
  INVX0 U62 ( .INP(n15), .ZN(n3) );
  NAND2X1 U63 ( .IN1(n16), .IN2(n17), .QN(n15) );
  INVX0 U64 ( .INP(N52), .ZN(n4) );
  NAND2X1 U65 ( .IN1(n16), .IN2(n30), .QN(N52) );
  INVX0 U66 ( .INP(start), .ZN(n11) );
  NOR2X0 U67 ( .IN1(n7), .IN2(state[2]), .QN(n20) );
  NAND2X1 U68 ( .IN1(n7), .IN2(n8), .QN(n24) );
  NAND2X1 U69 ( .IN1(n20), .IN2(n8), .QN(n17) );
  NOR2X0 U70 ( .IN1(n6), .IN2(n24), .QN(n25) );
endmodule

