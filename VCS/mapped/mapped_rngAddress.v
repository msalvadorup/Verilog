
module rngAddress_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17;
  wire   [16:0] carry;

  FADDX1 U2_14 ( .A(A[14]), .B(n3), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  FADDX1 U2_13 ( .A(A[13]), .B(n4), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  FADDX1 U2_12 ( .A(A[12]), .B(n5), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  FADDX1 U2_11 ( .A(A[11]), .B(n6), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  FADDX1 U2_10 ( .A(A[10]), .B(n7), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FADDX1 U2_9 ( .A(A[9]), .B(n8), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FADDX1 U2_8 ( .A(A[8]), .B(n9), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  FADDX1 U2_7 ( .A(A[7]), .B(n10), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  FADDX1 U2_6 ( .A(A[6]), .B(n11), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  FADDX1 U2_5 ( .A(A[5]), .B(n12), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  FADDX1 U2_4 ( .A(A[4]), .B(n13), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  FADDX1 U2_3 ( .A(A[3]), .B(n14), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  FADDX1 U2_2 ( .A(A[2]), .B(n15), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  FADDX1 U2_1 ( .A(A[1]), .B(n16), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  XOR3X1 U2_15 ( .IN1(A[15]), .IN2(n2), .IN3(carry[15]), .Q(DIFF[15]) );
  INVX0 U1 ( .INP(B[2]), .ZN(n15) );
  INVX0 U2 ( .INP(B[4]), .ZN(n13) );
  INVX0 U3 ( .INP(B[6]), .ZN(n11) );
  INVX0 U4 ( .INP(B[8]), .ZN(n9) );
  INVX0 U5 ( .INP(B[12]), .ZN(n5) );
  INVX0 U6 ( .INP(B[9]), .ZN(n8) );
  INVX0 U7 ( .INP(B[10]), .ZN(n7) );
  INVX0 U8 ( .INP(B[3]), .ZN(n14) );
  INVX0 U9 ( .INP(B[5]), .ZN(n12) );
  INVX0 U10 ( .INP(B[7]), .ZN(n10) );
  INVX0 U11 ( .INP(B[11]), .ZN(n6) );
  INVX0 U12 ( .INP(B[13]), .ZN(n4) );
  INVX0 U13 ( .INP(B[14]), .ZN(n3) );
  INVX0 U14 ( .INP(B[1]), .ZN(n16) );
  NAND2X1 U15 ( .IN1(B[0]), .IN2(n1), .QN(carry[1]) );
  INVX0 U16 ( .INP(B[15]), .ZN(n2) );
  INVX0 U17 ( .INP(B[0]), .ZN(n17) );
  INVX0 U18 ( .INP(A[0]), .ZN(n1) );
  XOR2X1 U19 ( .IN1(n1), .IN2(n17), .Q(DIFF[0]) );
endmodule


module rngAddress ( clock, nrst, start_rng_address, betterNeighborCount, which, 
        rng_address, done_rng_address );
  input [15:0] betterNeighborCount;
  input [15:0] which;
  output [15:0] rng_address;
  input clock, nrst, start_rng_address;
  output done_rng_address;
  wire   N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34,
         N35, N36, N37, n11, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77;
  wire   [2:0] state;

  DFFSSRX1 \state_reg[0]  ( .D(n18), .RSTB(nrst), .SETB(1'b1), .CLK(clock), 
        .Q(state[0]), .QN(n11) );
  AO222X1 U18 ( .IN1(N36), .IN2(n13), .IN3(which[14]), .IN4(n14), .IN5(
        rng_address[14]), .IN6(n15), .Q(n24) );
  AO222X1 U19 ( .IN1(N35), .IN2(n13), .IN3(which[13]), .IN4(n14), .IN5(
        rng_address[13]), .IN6(n15), .Q(n25) );
  AO222X1 U20 ( .IN1(N34), .IN2(n13), .IN3(which[12]), .IN4(n14), .IN5(
        rng_address[12]), .IN6(n15), .Q(n26) );
  AO222X1 U21 ( .IN1(N33), .IN2(n13), .IN3(which[11]), .IN4(n14), .IN5(
        rng_address[11]), .IN6(n15), .Q(n27) );
  AO222X1 U22 ( .IN1(N32), .IN2(n13), .IN3(which[10]), .IN4(n14), .IN5(
        rng_address[10]), .IN6(n15), .Q(n28) );
  AO222X1 U23 ( .IN1(N31), .IN2(n13), .IN3(which[9]), .IN4(n14), .IN5(
        rng_address[9]), .IN6(n15), .Q(n29) );
  AO222X1 U24 ( .IN1(N30), .IN2(n13), .IN3(which[8]), .IN4(n14), .IN5(
        rng_address[8]), .IN6(n15), .Q(n30) );
  AO222X1 U25 ( .IN1(N29), .IN2(n13), .IN3(which[7]), .IN4(n14), .IN5(
        rng_address[7]), .IN6(n15), .Q(n31) );
  AO222X1 U26 ( .IN1(N28), .IN2(n13), .IN3(which[6]), .IN4(n14), .IN5(
        rng_address[6]), .IN6(n15), .Q(n32) );
  AO222X1 U27 ( .IN1(N27), .IN2(n13), .IN3(which[5]), .IN4(n14), .IN5(
        rng_address[5]), .IN6(n15), .Q(n33) );
  AO222X1 U28 ( .IN1(N26), .IN2(n13), .IN3(which[4]), .IN4(n14), .IN5(
        rng_address[4]), .IN6(n15), .Q(n34) );
  AO222X1 U29 ( .IN1(N25), .IN2(n13), .IN3(which[3]), .IN4(n14), .IN5(
        rng_address[3]), .IN6(n15), .Q(n35) );
  AO222X1 U30 ( .IN1(N24), .IN2(n13), .IN3(which[2]), .IN4(n14), .IN5(
        rng_address[2]), .IN6(n15), .Q(n36) );
  AO222X1 U31 ( .IN1(N23), .IN2(n13), .IN3(which[1]), .IN4(n14), .IN5(
        rng_address[1]), .IN6(n15), .Q(n37) );
  AO22X1 U32 ( .IN1(nrst), .IN2(n16), .IN3(done_rng_address), .IN4(n76), .Q(
        n38) );
  AO222X1 U35 ( .IN1(N37), .IN2(n13), .IN3(which[15]), .IN4(n14), .IN5(
        rng_address[15]), .IN6(n15), .Q(n40) );
  AO222X1 U36 ( .IN1(N22), .IN2(n13), .IN3(which[0]), .IN4(n14), .IN5(
        rng_address[0]), .IN6(n15), .Q(n41) );
  AO22X1 U40 ( .IN1(N21), .IN2(n21), .IN3(start_rng_address), .IN4(n23), .Q(
        n18) );
  rngAddress_DW01_sub_0 sub_29 ( .A(rng_address), .B(betterNeighborCount), 
        .CI(1'b0), .DIFF({N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, 
        N27, N26, N25, N24, N23, N22}) );
  DFFX1 done_rng_address_buf_reg ( .D(n38), .CLK(clock), .Q(done_rng_address)
         );
  DFFX1 \state_reg[1]  ( .D(n39), .CLK(clock), .Q(state[1]) );
  DFFX1 \rng_address_buf_reg[14]  ( .D(n24), .CLK(clock), .Q(rng_address[14])
         );
  DFFX1 \rng_address_buf_reg[13]  ( .D(n25), .CLK(clock), .Q(rng_address[13])
         );
  DFFX1 \rng_address_buf_reg[12]  ( .D(n26), .CLK(clock), .Q(rng_address[12])
         );
  DFFX1 \rng_address_buf_reg[11]  ( .D(n27), .CLK(clock), .Q(rng_address[11])
         );
  DFFX1 \rng_address_buf_reg[10]  ( .D(n28), .CLK(clock), .Q(rng_address[10])
         );
  DFFX1 \rng_address_buf_reg[9]  ( .D(n29), .CLK(clock), .Q(rng_address[9]) );
  DFFX1 \rng_address_buf_reg[8]  ( .D(n30), .CLK(clock), .Q(rng_address[8]) );
  DFFX1 \rng_address_buf_reg[7]  ( .D(n31), .CLK(clock), .Q(rng_address[7]) );
  DFFX1 \rng_address_buf_reg[6]  ( .D(n32), .CLK(clock), .Q(rng_address[6]) );
  DFFX1 \rng_address_buf_reg[5]  ( .D(n33), .CLK(clock), .Q(rng_address[5]) );
  DFFX1 \rng_address_buf_reg[4]  ( .D(n34), .CLK(clock), .Q(rng_address[4]) );
  DFFX1 \rng_address_buf_reg[3]  ( .D(n35), .CLK(clock), .Q(rng_address[3]) );
  DFFX1 \rng_address_buf_reg[2]  ( .D(n36), .CLK(clock), .Q(rng_address[2]), 
        .QN(n60) );
  DFFX1 \rng_address_buf_reg[1]  ( .D(n37), .CLK(clock), .Q(rng_address[1]), 
        .QN(n59) );
  DFFX1 \rng_address_buf_reg[0]  ( .D(n41), .CLK(clock), .Q(rng_address[0]) );
  DFFX1 \rng_address_buf_reg[15]  ( .D(n40), .CLK(clock), .Q(rng_address[15])
         );
  NOR2X0 U41 ( .IN1(n18), .IN2(n75), .QN(n15) );
  AND2X1 U42 ( .IN1(n22), .IN2(n23), .Q(n14) );
  AND2X1 U43 ( .IN1(n22), .IN2(n21), .Q(n13) );
  NOR2X0 U44 ( .IN1(n75), .IN2(n15), .QN(n22) );
  INVX0 U45 ( .INP(betterNeighborCount[15]), .ZN(n74) );
  INVX0 U46 ( .INP(betterNeighborCount[10]), .ZN(n69) );
  INVX0 U47 ( .INP(betterNeighborCount[4]), .ZN(n63) );
  INVX0 U48 ( .INP(betterNeighborCount[7]), .ZN(n66) );
  INVX0 U49 ( .INP(betterNeighborCount[13]), .ZN(n72) );
  NOR2X0 U50 ( .IN1(n19), .IN2(n75), .QN(n39) );
  NOR2X0 U51 ( .IN1(n20), .IN2(state[1]), .QN(n19) );
  NOR2X0 U52 ( .IN1(N21), .IN2(n77), .QN(n20) );
  INVX0 U53 ( .INP(n21), .ZN(n77) );
  INVX0 U54 ( .INP(betterNeighborCount[3]), .ZN(n62) );
  INVX0 U55 ( .INP(betterNeighborCount[5]), .ZN(n64) );
  INVX0 U56 ( .INP(betterNeighborCount[11]), .ZN(n70) );
  INVX0 U57 ( .INP(betterNeighborCount[9]), .ZN(n68) );
  INVX0 U58 ( .INP(betterNeighborCount[6]), .ZN(n65) );
  INVX0 U59 ( .INP(betterNeighborCount[8]), .ZN(n67) );
  INVX0 U60 ( .INP(betterNeighborCount[12]), .ZN(n71) );
  INVX0 U61 ( .INP(betterNeighborCount[14]), .ZN(n73) );
  INVX0 U62 ( .INP(betterNeighborCount[2]), .ZN(n61) );
  INVX0 U63 ( .INP(nrst), .ZN(n75) );
  INVX0 U64 ( .INP(n16), .ZN(n76) );
  NAND2X1 U65 ( .IN1(nrst), .IN2(n17), .QN(n16) );
  NAND2X1 U66 ( .IN1(n11), .IN2(state[1]), .QN(n17) );
  NOR2X0 U67 ( .IN1(n11), .IN2(state[1]), .QN(n21) );
  NOR2X0 U68 ( .IN1(state[0]), .IN2(state[1]), .QN(n23) );
  AND2X1 U69 ( .IN1(n73), .IN2(rng_address[14]), .Q(n57) );
  NOR2X0 U70 ( .IN1(betterNeighborCount[1]), .IN2(n59), .QN(n42) );
  NOR2X0 U71 ( .IN1(rng_address[0]), .IN2(n42), .QN(n43) );
  AOI222X1 U72 ( .IN1(betterNeighborCount[2]), .IN2(n60), .IN3(n43), .IN4(
        betterNeighborCount[0]), .IN5(betterNeighborCount[1]), .IN6(n59), .QN(
        n44) );
  AO221X1 U73 ( .IN1(rng_address[2]), .IN2(n61), .IN3(rng_address[3]), .IN4(
        n62), .IN5(n44), .Q(n45) );
  OA221X1 U74 ( .IN1(rng_address[4]), .IN2(n63), .IN3(rng_address[3]), .IN4(
        n62), .IN5(n45), .Q(n46) );
  AO221X1 U75 ( .IN1(rng_address[4]), .IN2(n63), .IN3(rng_address[5]), .IN4(
        n64), .IN5(n46), .Q(n47) );
  OA221X1 U76 ( .IN1(rng_address[6]), .IN2(n65), .IN3(rng_address[5]), .IN4(
        n64), .IN5(n47), .Q(n48) );
  AO221X1 U77 ( .IN1(rng_address[6]), .IN2(n65), .IN3(rng_address[7]), .IN4(
        n66), .IN5(n48), .Q(n49) );
  OA221X1 U78 ( .IN1(rng_address[8]), .IN2(n67), .IN3(rng_address[7]), .IN4(
        n66), .IN5(n49), .Q(n50) );
  AO221X1 U79 ( .IN1(rng_address[8]), .IN2(n67), .IN3(rng_address[9]), .IN4(
        n68), .IN5(n50), .Q(n51) );
  OA221X1 U80 ( .IN1(rng_address[9]), .IN2(n68), .IN3(rng_address[10]), .IN4(
        n69), .IN5(n51), .Q(n52) );
  AO221X1 U81 ( .IN1(rng_address[10]), .IN2(n69), .IN3(rng_address[11]), .IN4(
        n70), .IN5(n52), .Q(n53) );
  OA221X1 U82 ( .IN1(rng_address[12]), .IN2(n71), .IN3(rng_address[11]), .IN4(
        n70), .IN5(n53), .Q(n54) );
  AO221X1 U83 ( .IN1(rng_address[12]), .IN2(n71), .IN3(rng_address[13]), .IN4(
        n72), .IN5(n54), .Q(n55) );
  OA221X1 U84 ( .IN1(rng_address[14]), .IN2(n73), .IN3(rng_address[13]), .IN4(
        n72), .IN5(n55), .Q(n56) );
  OA22X1 U85 ( .IN1(rng_address[15]), .IN2(n74), .IN3(n57), .IN4(n56), .Q(n58)
         );
  AO21X1 U86 ( .IN1(rng_address[15]), .IN2(n74), .IN3(n58), .Q(N21) );
endmodule

