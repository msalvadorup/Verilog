
module randomGenerator ( clock, nrst, rng_out, rng_out_4bit, en_rng, done );
  output [15:0] rng_out;
  output [15:0] rng_out_4bit;
  input clock, nrst, en_rng;
  output done;
  wire   N41, N42, n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31;
  wire   [2:0] state;
  assign rng_out_4bit[4] = 1'b0;
  assign rng_out_4bit[5] = 1'b0;
  assign rng_out_4bit[6] = 1'b0;
  assign rng_out_4bit[7] = 1'b0;
  assign rng_out_4bit[8] = 1'b0;
  assign rng_out_4bit[9] = 1'b0;
  assign rng_out_4bit[10] = 1'b0;
  assign rng_out_4bit[11] = 1'b0;
  assign rng_out_4bit[12] = 1'b0;
  assign rng_out_4bit[13] = 1'b0;
  assign rng_out_4bit[14] = 1'b0;
  assign rng_out_4bit[15] = 1'b0;
  assign rng_out_4bit[3] = rng_out[3];
  assign rng_out_4bit[2] = rng_out[2];
  assign rng_out_4bit[1] = rng_out[1];
  assign rng_out_4bit[0] = rng_out[0];

  DFFX1 \state_reg[0]  ( .D(N41), .CLK(clock), .Q(state[0]), .QN(n4) );
  DFFX1 done_buf_reg ( .D(n31), .CLK(clock), .Q(done) );
  DFFX1 \rng_out_buf_reg[0]  ( .D(n30), .CLK(clock), .Q(rng_out[0]) );
  DFFX1 \rng_out_buf_reg[1]  ( .D(n29), .CLK(clock), .Q(rng_out[1]) );
  DFFX1 \rng_out_buf_reg[2]  ( .D(n28), .CLK(clock), .Q(rng_out[2]) );
  DFFX1 \rng_out_buf_reg[3]  ( .D(n27), .CLK(clock), .Q(rng_out[3]) );
  DFFX1 \rng_out_buf_reg[4]  ( .D(n26), .CLK(clock), .Q(rng_out[4]) );
  DFFX1 \rng_out_buf_reg[5]  ( .D(n25), .CLK(clock), .Q(rng_out[5]) );
  DFFX1 \rng_out_buf_reg[6]  ( .D(n24), .CLK(clock), .Q(rng_out[6]) );
  DFFX1 \rng_out_buf_reg[7]  ( .D(n23), .CLK(clock), .Q(rng_out[7]) );
  DFFX1 \rng_out_buf_reg[8]  ( .D(n22), .CLK(clock), .Q(rng_out[8]) );
  DFFX1 \rng_out_buf_reg[9]  ( .D(n21), .CLK(clock), .Q(rng_out[9]) );
  DFFX1 \rng_out_buf_reg[10]  ( .D(n20), .CLK(clock), .Q(rng_out[10]) );
  DFFX1 \rng_out_buf_reg[11]  ( .D(n19), .CLK(clock), .Q(rng_out[11]) );
  DFFX1 \rng_out_buf_reg[12]  ( .D(n18), .CLK(clock), .Q(rng_out[12]) );
  DFFX1 \rng_out_buf_reg[13]  ( .D(n17), .CLK(clock), .Q(rng_out[13]) );
  DFFX1 \rng_out_buf_reg[14]  ( .D(n16), .CLK(clock), .Q(rng_out[14]) );
  DFFX1 \rng_out_buf_reg[15]  ( .D(n15), .CLK(clock), .Q(rng_out[15]) );
  AO22X1 U11 ( .IN1(rng_out[6]), .IN2(n3), .IN3(rng_out[5]), .IN4(n6), .Q(n24)
         );
  AO22X1 U12 ( .IN1(n3), .IN2(rng_out[5]), .IN3(rng_out[4]), .IN4(n6), .Q(n25)
         );
  AO22X1 U13 ( .IN1(rng_out[4]), .IN2(n3), .IN3(rng_out[3]), .IN4(n6), .Q(n26)
         );
  AO22X1 U14 ( .IN1(rng_out[3]), .IN2(n3), .IN3(rng_out[2]), .IN4(n6), .Q(n27)
         );
  AO22X1 U15 ( .IN1(rng_out[2]), .IN2(n3), .IN3(n7), .IN4(n8), .Q(n28) );
  OR2X1 U16 ( .IN1(n5), .IN2(rng_out[1]), .Q(n7) );
  AO22X1 U17 ( .IN1(rng_out[1]), .IN2(n3), .IN3(rng_out[0]), .IN4(n6), .Q(n29)
         );
  AO22X1 U18 ( .IN1(rng_out[0]), .IN2(n3), .IN3(n9), .IN4(n8), .Q(n30) );
  XOR3X1 U19 ( .IN1(rng_out[14]), .IN2(rng_out[12]), .IN3(n11), .Q(n10) );
  XOR2X1 U20 ( .IN1(rng_out[3]), .IN2(rng_out[15]), .Q(n11) );
  AO22X1 U21 ( .IN1(done), .IN2(n12), .IN3(state[1]), .IN4(n1), .Q(n31) );
  OR2X1 U23 ( .IN1(state[1]), .IN2(en_rng), .Q(n13) );
  AO22X1 U24 ( .IN1(rng_out[15]), .IN2(n3), .IN3(rng_out[14]), .IN4(n6), .Q(
        n15) );
  AO22X1 U25 ( .IN1(rng_out[14]), .IN2(n3), .IN3(rng_out[13]), .IN4(n6), .Q(
        n16) );
  AO22X1 U26 ( .IN1(rng_out[13]), .IN2(n3), .IN3(rng_out[12]), .IN4(n6), .Q(
        n17) );
  AO22X1 U27 ( .IN1(rng_out[12]), .IN2(n3), .IN3(rng_out[11]), .IN4(n6), .Q(
        n18) );
  AO22X1 U28 ( .IN1(rng_out[11]), .IN2(n3), .IN3(rng_out[10]), .IN4(n6), .Q(
        n19) );
  AO22X1 U29 ( .IN1(rng_out[10]), .IN2(n3), .IN3(rng_out[9]), .IN4(n6), .Q(n20) );
  AO22X1 U30 ( .IN1(rng_out[9]), .IN2(n3), .IN3(rng_out[8]), .IN4(n6), .Q(n21)
         );
  AO22X1 U31 ( .IN1(rng_out[8]), .IN2(n3), .IN3(rng_out[7]), .IN4(n6), .Q(n22)
         );
  AO22X1 U32 ( .IN1(rng_out[7]), .IN2(n3), .IN3(rng_out[6]), .IN4(n6), .Q(n23)
         );
  AO21X1 U33 ( .IN1(state[0]), .IN2(n14), .IN3(n5), .Q(n8) );
  AND3X1 U34 ( .IN1(state[0]), .IN2(n14), .IN3(nrst), .Q(N42) );
  AND4X1 U35 ( .IN1(n4), .IN2(n14), .IN3(nrst), .IN4(en_rng), .Q(N41) );
  DFFX1 \state_reg[1]  ( .D(N42), .CLK(clock), .Q(state[1]), .QN(n14) );
  NOR2X0 U36 ( .IN1(n5), .IN2(n3), .QN(n6) );
  INVX0 U37 ( .INP(n8), .ZN(n3) );
  INVX0 U38 ( .INP(nrst), .ZN(n5) );
  NAND2X1 U39 ( .IN1(nrst), .IN2(n10), .QN(n9) );
  INVX0 U40 ( .INP(n12), .ZN(n1) );
  NAND3X0 U41 ( .IN1(n13), .IN2(n4), .IN3(nrst), .QN(n12) );
endmodule

