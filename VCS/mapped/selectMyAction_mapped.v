
module selectMyAction ( clock, nrst, en, start, address, wr_en, nexthop, 
        nextsinks, action, data_out, forAggregation, done );
  output [10:0] address;
  input [15:0] nexthop;
  input [15:0] nextsinks;
  output [15:0] action;
  output [15:0] data_out;
  input clock, nrst, en, start;
  output wr_en, forAggregation, done;
  wire   N98, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71;
  wire   [2:0] state;
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
  assign data_out[15] = 1'b0;
  assign data_out[14] = 1'b0;
  assign data_out[13] = 1'b0;
  assign data_out[12] = 1'b0;
  assign data_out[11] = 1'b0;
  assign data_out[10] = 1'b0;
  assign data_out[9] = 1'b0;
  assign data_out[8] = 1'b0;
  assign data_out[7] = 1'b0;
  assign data_out[6] = 1'b0;
  assign data_out[5] = 1'b0;
  assign data_out[4] = 1'b0;
  assign data_out[3] = 1'b0;
  assign data_out[2] = 1'b0;
  assign data_out[1] = 1'b0;

  DFFX1 \state_reg[0]  ( .D(n71), .CLK(clock), .Q(state[0]), .QN(n12) );
  DFFX1 \state_reg[2]  ( .D(n70), .CLK(clock), .Q(state[2]), .QN(n10) );
  DFFSSRX1 \state_reg[1]  ( .D(nrst), .RSTB(n33), .SETB(n6), .CLK(clock), .Q(
        state[1]), .QN(n11) );
  DFFX1 \action_buf_reg[0]  ( .D(n69), .CLK(clock), .Q(action[0]) );
  DFFX1 \action_buf_reg[15]  ( .D(n54), .CLK(clock), .Q(action[15]) );
  DFFX1 \action_buf_reg[14]  ( .D(n55), .CLK(clock), .Q(action[14]) );
  DFFX1 \action_buf_reg[13]  ( .D(n56), .CLK(clock), .Q(action[13]) );
  DFFX1 \action_buf_reg[12]  ( .D(n57), .CLK(clock), .Q(action[12]) );
  DFFX1 \action_buf_reg[11]  ( .D(n58), .CLK(clock), .Q(action[11]) );
  DFFX1 \action_buf_reg[10]  ( .D(n59), .CLK(clock), .Q(action[10]) );
  DFFX1 \action_buf_reg[9]  ( .D(n60), .CLK(clock), .Q(action[9]) );
  DFFX1 \action_buf_reg[8]  ( .D(n61), .CLK(clock), .Q(action[8]) );
  DFFX1 \action_buf_reg[7]  ( .D(n62), .CLK(clock), .Q(action[7]) );
  DFFX1 \action_buf_reg[5]  ( .D(n64), .CLK(clock), .Q(action[5]) );
  DFFX1 \action_buf_reg[4]  ( .D(n65), .CLK(clock), .Q(action[4]) );
  DFFX1 \action_buf_reg[3]  ( .D(n66), .CLK(clock), .Q(action[3]) );
  DFFX1 \action_buf_reg[2]  ( .D(n67), .CLK(clock), .Q(action[2]) );
  DFFX1 \action_buf_reg[1]  ( .D(n68), .CLK(clock), .Q(action[1]) );
  DFFX1 \action_buf_reg[6]  ( .D(n63), .CLK(clock), .Q(action[6]) );
  DFFX1 wr_en_buf_reg ( .D(n53), .CLK(clock), .Q(wr_en) );
  DFFX1 \address_count_reg[1]  ( .D(n52), .CLK(clock), .Q(address[1]) );
  DFFX1 forAggregation_buf_reg ( .D(n51), .CLK(clock), .Q(forAggregation) );
  DFFX1 \data_out_buf_reg[0]  ( .D(n50), .CLK(clock), .Q(data_out[0]) );
  DFFX1 done_buf_reg ( .D(n49), .CLK(clock), .Q(done) );
  AO22X1 U47 ( .IN1(done), .IN2(n17), .IN3(nrst), .IN4(n1), .Q(n49) );
  AO21X1 U48 ( .IN1(data_out[0]), .IN2(n3), .IN3(n19), .Q(n50) );
  AO22X1 U49 ( .IN1(n20), .IN2(forAggregation), .IN3(n21), .IN4(n22), .Q(n51)
         );
  AO21X1 U50 ( .IN1(address[1]), .IN2(n3), .IN3(n19), .Q(n52) );
  AND2X1 U51 ( .IN1(n21), .IN2(N98), .Q(n19) );
  AO22X1 U52 ( .IN1(wr_en), .IN2(n2), .IN3(n21), .IN4(n23), .Q(n53) );
  AO222X1 U53 ( .IN1(nextsinks[15]), .IN2(n25), .IN3(nexthop[15]), .IN4(n21), 
        .IN5(action[15]), .IN6(n26), .Q(n54) );
  AO222X1 U54 ( .IN1(nextsinks[14]), .IN2(n25), .IN3(nexthop[14]), .IN4(n21), 
        .IN5(action[14]), .IN6(n26), .Q(n55) );
  AO222X1 U55 ( .IN1(nextsinks[13]), .IN2(n25), .IN3(nexthop[13]), .IN4(n21), 
        .IN5(action[13]), .IN6(n26), .Q(n56) );
  AO222X1 U56 ( .IN1(nextsinks[12]), .IN2(n25), .IN3(nexthop[12]), .IN4(n21), 
        .IN5(action[12]), .IN6(n26), .Q(n57) );
  AO222X1 U57 ( .IN1(nextsinks[11]), .IN2(n25), .IN3(nexthop[11]), .IN4(n21), 
        .IN5(action[11]), .IN6(n26), .Q(n58) );
  AO222X1 U58 ( .IN1(nextsinks[10]), .IN2(n25), .IN3(nexthop[10]), .IN4(n21), 
        .IN5(action[10]), .IN6(n26), .Q(n59) );
  AO222X1 U59 ( .IN1(nextsinks[9]), .IN2(n25), .IN3(nexthop[9]), .IN4(n21), 
        .IN5(action[9]), .IN6(n26), .Q(n60) );
  AO222X1 U60 ( .IN1(nextsinks[8]), .IN2(n25), .IN3(nexthop[8]), .IN4(n21), 
        .IN5(action[8]), .IN6(n26), .Q(n61) );
  AO222X1 U61 ( .IN1(nextsinks[7]), .IN2(n25), .IN3(nexthop[7]), .IN4(n21), 
        .IN5(action[7]), .IN6(n26), .Q(n62) );
  AO22X1 U62 ( .IN1(action[6]), .IN2(n26), .IN3(n27), .IN4(n5), .Q(n63) );
  AO221X1 U63 ( .IN1(n7), .IN2(nexthop[6]), .IN3(n8), .IN4(nextsinks[6]), 
        .IN5(n28), .Q(n27) );
  AO222X1 U64 ( .IN1(nextsinks[5]), .IN2(n25), .IN3(nexthop[5]), .IN4(n21), 
        .IN5(action[5]), .IN6(n26), .Q(n64) );
  AO222X1 U65 ( .IN1(nextsinks[4]), .IN2(n25), .IN3(nexthop[4]), .IN4(n21), 
        .IN5(action[4]), .IN6(n26), .Q(n65) );
  AO222X1 U66 ( .IN1(nextsinks[3]), .IN2(n25), .IN3(nexthop[3]), .IN4(n21), 
        .IN5(action[3]), .IN6(n26), .Q(n66) );
  AO222X1 U67 ( .IN1(nextsinks[2]), .IN2(n25), .IN3(nexthop[2]), .IN4(n21), 
        .IN5(action[2]), .IN6(n26), .Q(n67) );
  AO222X1 U68 ( .IN1(nextsinks[1]), .IN2(n25), .IN3(nexthop[1]), .IN4(n21), 
        .IN5(action[1]), .IN6(n26), .Q(n68) );
  AO22X1 U71 ( .IN1(action[0]), .IN2(n26), .IN3(n29), .IN4(n5), .Q(n69) );
  AO221X1 U72 ( .IN1(n7), .IN2(nexthop[0]), .IN3(n8), .IN4(nextsinks[0]), 
        .IN5(n28), .Q(n29) );
  NAND3X0 U74 ( .IN1(n6), .IN2(n24), .IN3(n35), .QN(n70) );
  NAND4X0 U75 ( .IN1(n35), .IN2(n36), .IN3(n37), .IN4(n31), .QN(n71) );
  NAND3X0 U76 ( .IN1(n12), .IN2(n11), .IN3(start), .QN(n37) );
  NOR4X0 U77 ( .IN1(n33), .IN2(n28), .IN3(n11), .IN4(n9), .QN(n34) );
  NAND3X0 U78 ( .IN1(state[1]), .IN2(n10), .IN3(state[0]), .QN(n24) );
  NAND3X0 U79 ( .IN1(n11), .IN2(n10), .IN3(state[0]), .QN(n30) );
  AND3X1 U80 ( .IN1(n39), .IN2(n18), .IN3(nrst), .Q(n35) );
  NAND3X0 U81 ( .IN1(n12), .IN2(n11), .IN3(state[2]), .QN(n18) );
  OR2X1 U82 ( .IN1(n38), .IN2(en), .Q(n39) );
  AO21X1 U83 ( .IN1(n22), .IN2(n7), .IN3(n4), .Q(N98) );
  NAND3X0 U84 ( .IN1(state[2]), .IN2(n11), .IN3(state[0]), .QN(n38) );
  NAND3X0 U85 ( .IN1(n12), .IN2(n10), .IN3(state[1]), .QN(n31) );
  NOR4X0 U86 ( .IN1(n40), .IN2(n41), .IN3(n42), .IN4(n43), .QN(n22) );
  OR4X1 U87 ( .IN1(nexthop[15]), .IN2(nexthop[1]), .IN3(nexthop[2]), .IN4(
        nexthop[3]), .Q(n43) );
  OR4X1 U88 ( .IN1(nexthop[4]), .IN2(nexthop[5]), .IN3(n44), .IN4(nexthop[7]), 
        .Q(n42) );
  OR2X1 U89 ( .IN1(nexthop[9]), .IN2(nexthop[8]), .Q(n44) );
  NAND4X0 U90 ( .IN1(nexthop[6]), .IN2(nexthop[0]), .IN3(n32), .IN4(n14), .QN(
        n41) );
  NOR4X0 U91 ( .IN1(n45), .IN2(n46), .IN3(n47), .IN4(n48), .QN(n32) );
  OR4X1 U92 ( .IN1(nextsinks[1]), .IN2(nextsinks[2]), .IN3(nextsinks[3]), 
        .IN4(nextsinks[4]), .Q(n48) );
  OR4X1 U93 ( .IN1(nextsinks[5]), .IN2(nextsinks[7]), .IN3(nextsinks[8]), 
        .IN4(nextsinks[9]), .Q(n47) );
  NAND4X0 U94 ( .IN1(nextsinks[6]), .IN2(nextsinks[0]), .IN3(n16), .IN4(n15), 
        .QN(n46) );
  OR4X1 U95 ( .IN1(nextsinks[12]), .IN2(nextsinks[13]), .IN3(nextsinks[14]), 
        .IN4(nextsinks[15]), .Q(n45) );
  OR4X1 U96 ( .IN1(nexthop[11]), .IN2(nexthop[12]), .IN3(nexthop[13]), .IN4(
        nexthop[14]), .Q(n40) );
  INVX0 U97 ( .INP(N98), .ZN(n3) );
  INVX0 U98 ( .INP(n26), .ZN(n5) );
  OA221X1 U99 ( .IN1(n31), .IN2(n22), .IN3(n30), .IN4(n32), .IN5(n17), .Q(n26)
         );
  INVX0 U100 ( .INP(n34), .ZN(n6) );
  INVX0 U101 ( .INP(n17), .ZN(n4) );
  INVX0 U102 ( .INP(n31), .ZN(n7) );
  NAND2X1 U103 ( .IN1(n30), .IN2(n31), .QN(n33) );
  INVX0 U104 ( .INP(n30), .ZN(n8) );
  INVX0 U105 ( .INP(n24), .ZN(n9) );
  INVX0 U106 ( .INP(nexthop[10]), .ZN(n14) );
  AND2X1 U107 ( .IN1(n7), .IN2(nrst), .Q(n21) );
  AND2X1 U108 ( .IN1(n8), .IN2(nrst), .Q(n25) );
  NAND2X1 U109 ( .IN1(n34), .IN2(state[0]), .QN(n36) );
  NAND2X1 U110 ( .IN1(nrst), .IN2(n38), .QN(n28) );
  OA21X1 U111 ( .IN1(n13), .IN2(n38), .IN3(nrst), .Q(n17) );
  INVX0 U112 ( .INP(en), .ZN(n13) );
  NOR2X0 U113 ( .IN1(n7), .IN2(n4), .QN(n20) );
  INVX0 U114 ( .INP(n18), .ZN(n1) );
  INVX0 U115 ( .INP(n23), .ZN(n2) );
  NAND2X1 U116 ( .IN1(n24), .IN2(n3), .QN(n23) );
  INVX0 U117 ( .INP(nextsinks[10]), .ZN(n16) );
  INVX0 U118 ( .INP(nextsinks[11]), .ZN(n15) );
endmodule

