
module winnerPolicy_DW01_sub_0 ( A, B, CI, DIFF, CO );
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
  INVX0 U2 ( .INP(B[3]), .ZN(n14) );
  INVX0 U3 ( .INP(B[4]), .ZN(n13) );
  INVX0 U4 ( .INP(B[5]), .ZN(n12) );
  INVX0 U5 ( .INP(B[6]), .ZN(n11) );
  INVX0 U6 ( .INP(B[7]), .ZN(n10) );
  INVX0 U7 ( .INP(B[8]), .ZN(n9) );
  INVX0 U8 ( .INP(B[9]), .ZN(n8) );
  INVX0 U9 ( .INP(B[10]), .ZN(n7) );
  INVX0 U10 ( .INP(B[11]), .ZN(n6) );
  INVX0 U11 ( .INP(B[12]), .ZN(n5) );
  INVX0 U12 ( .INP(B[13]), .ZN(n4) );
  INVX0 U13 ( .INP(B[14]), .ZN(n3) );
  INVX0 U14 ( .INP(B[1]), .ZN(n16) );
  NAND2X1 U15 ( .IN1(B[0]), .IN2(n1), .QN(carry[1]) );
  INVX0 U16 ( .INP(B[15]), .ZN(n2) );
  INVX0 U17 ( .INP(B[0]), .ZN(n17) );
  INVX0 U18 ( .INP(A[0]), .ZN(n1) );
  XOR2X1 U19 ( .IN1(n1), .IN2(n17), .Q(DIFF[0]) );
endmodule


module winnerPolicy_DW02_mult_1 ( A, B, TC, PRODUCT );
  input [15:0] A;
  input [15:0] B;
  output [31:0] PRODUCT;
  input TC;
  wire   \CARRYB[15][5] , \CARRYB[14][5] , \CARRYB[13][5] , \CARRYB[12][5] ,
         \CARRYB[11][5] , n3, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22;

  FADDX1 S4_5 ( .A(A[15]), .B(\CARRYB[14][5] ), .CI(A[5]), .CO(\CARRYB[15][5] ), .S(PRODUCT[20]) );
  FADDX1 S2_14_5 ( .A(A[14]), .B(\CARRYB[13][5] ), .CI(A[4]), .CO(
        \CARRYB[14][5] ), .S(PRODUCT[19]) );
  FADDX1 S2_13_5 ( .A(A[13]), .B(\CARRYB[12][5] ), .CI(A[3]), .CO(
        \CARRYB[13][5] ), .S(PRODUCT[18]) );
  FADDX1 S2_12_5 ( .A(A[12]), .B(\CARRYB[11][5] ), .CI(A[2]), .CO(
        \CARRYB[12][5] ), .S(PRODUCT[17]) );
  FADDX1 S2_11_5 ( .A(A[11]), .B(n5), .CI(A[1]), .CO(\CARRYB[11][5] ), .S(
        PRODUCT[16]) );
  OR2X1 U2 ( .IN1(n7), .IN2(A[7]), .Q(n3) );
  AND2X1 U3 ( .IN1(n15), .IN2(A[15]), .Q(PRODUCT[31]) );
  NOR2X0 U4 ( .IN1(n14), .IN2(n16), .QN(n15) );
  AND2X1 U5 ( .IN1(A[10]), .IN2(A[0]), .Q(n5) );
  AND2X1 U6 ( .IN1(n3), .IN2(n8), .Q(PRODUCT[22]) );
  XNOR2X1 U7 ( .IN1(A[9]), .IN2(n9), .Q(PRODUCT[24]) );
  XNOR2X1 U8 ( .IN1(A[10]), .IN2(n10), .Q(PRODUCT[25]) );
  XNOR2X1 U9 ( .IN1(A[11]), .IN2(n11), .Q(PRODUCT[26]) );
  XNOR2X1 U10 ( .IN1(A[12]), .IN2(n12), .Q(PRODUCT[27]) );
  XNOR2X1 U11 ( .IN1(A[13]), .IN2(n13), .Q(PRODUCT[28]) );
  XNOR2X1 U12 ( .IN1(A[8]), .IN2(n8), .Q(PRODUCT[23]) );
  NAND2X1 U13 ( .IN1(n17), .IN2(A[8]), .QN(n9) );
  INVX0 U14 ( .INP(n8), .ZN(n17) );
  NAND2X1 U15 ( .IN1(n18), .IN2(A[9]), .QN(n10) );
  INVX0 U16 ( .INP(n9), .ZN(n18) );
  NAND2X1 U17 ( .IN1(n19), .IN2(A[10]), .QN(n11) );
  INVX0 U18 ( .INP(n10), .ZN(n19) );
  NAND2X1 U19 ( .IN1(n20), .IN2(A[11]), .QN(n12) );
  INVX0 U20 ( .INP(n11), .ZN(n20) );
  AND2X1 U21 ( .IN1(A[6]), .IN2(\CARRYB[15][5] ), .Q(n7) );
  NAND2X1 U22 ( .IN1(n22), .IN2(A[13]), .QN(n14) );
  INVX0 U23 ( .INP(n13), .ZN(n22) );
  NAND2X1 U24 ( .IN1(n21), .IN2(A[12]), .QN(n13) );
  INVX0 U25 ( .INP(n12), .ZN(n21) );
  INVX0 U26 ( .INP(A[14]), .ZN(n16) );
  XOR2X1 U27 ( .IN1(\CARRYB[15][5] ), .IN2(A[6]), .Q(PRODUCT[21]) );
  XOR2X1 U28 ( .IN1(A[0]), .IN2(A[10]), .Q(PRODUCT[15]) );
  NAND2X0 U29 ( .IN1(n7), .IN2(A[7]), .QN(n8) );
  XOR2X1 U30 ( .IN1(n16), .IN2(n14), .Q(PRODUCT[29]) );
  XOR2X1 U31 ( .IN1(A[15]), .IN2(n15), .Q(PRODUCT[30]) );
endmodule


module winnerPolicy_DW01_add_2 ( A, B, CI, SUM, CO );
  input [29:0] A;
  input [29:0] B;
  output [29:0] SUM;
  input CI;
  output CO;
  wire   \A[14] , \A[13] , \A[12] , \A[11] , \A[10] , \A[9] , \A[8] , \A[7] ,
         \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57;
  assign SUM[15] = A[15];
  assign SUM[14] = \A[14] ;
  assign \A[14]  = A[14];
  assign SUM[13] = \A[13] ;
  assign \A[13]  = A[13];
  assign SUM[12] = \A[12] ;
  assign \A[12]  = A[12];
  assign SUM[11] = \A[11] ;
  assign \A[11]  = A[11];
  assign SUM[10] = \A[10] ;
  assign \A[10]  = A[10];
  assign SUM[9] = \A[9] ;
  assign \A[9]  = A[9];
  assign SUM[8] = \A[8] ;
  assign \A[8]  = A[8];
  assign SUM[7] = \A[7] ;
  assign \A[7]  = A[7];
  assign SUM[6] = \A[6] ;
  assign \A[6]  = A[6];
  assign SUM[5] = \A[5] ;
  assign \A[5]  = A[5];
  assign SUM[4] = \A[4] ;
  assign \A[4]  = A[4];
  assign SUM[3] = \A[3] ;
  assign \A[3]  = A[3];
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  AND2X1 U2 ( .IN1(n2), .IN2(n54), .Q(SUM[16]) );
  OR2X1 U3 ( .IN1(B[16]), .IN2(A[16]), .Q(n2) );
  NAND2X1 U4 ( .IN1(n10), .IN2(A[21]), .QN(n37) );
  INVX0 U5 ( .INP(n41), .ZN(n10) );
  INVX0 U6 ( .INP(n18), .ZN(n4) );
  INVX0 U7 ( .INP(n30), .ZN(n7) );
  INVX0 U8 ( .INP(n26), .ZN(n6) );
  INVX0 U9 ( .INP(n22), .ZN(n5) );
  XOR2X1 U10 ( .IN1(B[29]), .IN2(n3), .Q(SUM[29]) );
  AO22X1 U11 ( .IN1(n15), .IN2(B[28]), .IN3(n16), .IN4(A[28]), .Q(n3) );
  INVX0 U12 ( .INP(n55), .ZN(n14) );
  INVX0 U13 ( .INP(n43), .ZN(n11) );
  INVX0 U14 ( .INP(n51), .ZN(n13) );
  INVX0 U15 ( .INP(n47), .ZN(n12) );
  INVX0 U16 ( .INP(n38), .ZN(n9) );
  INVX0 U17 ( .INP(n34), .ZN(n8) );
  XNOR2X1 U18 ( .IN1(A[21]), .IN2(n41), .Q(SUM[21]) );
  OR2X1 U19 ( .IN1(A[28]), .IN2(n16), .Q(n15) );
  XOR3X1 U20 ( .IN1(B[28]), .IN2(A[28]), .IN3(n16), .Q(SUM[28]) );
  OAI21X1 U21 ( .IN1(n17), .IN2(n18), .IN3(n19), .QN(n16) );
  XOR2X1 U22 ( .IN1(n20), .IN2(n17), .Q(SUM[27]) );
  OA21X1 U23 ( .IN1(n21), .IN2(n22), .IN3(n23), .Q(n17) );
  NAND2X0 U24 ( .IN1(n4), .IN2(n19), .QN(n20) );
  NAND2X0 U25 ( .IN1(B[27]), .IN2(A[27]), .QN(n19) );
  NOR2X0 U26 ( .IN1(B[27]), .IN2(A[27]), .QN(n18) );
  XOR2X1 U27 ( .IN1(n24), .IN2(n21), .Q(SUM[26]) );
  OA21X1 U28 ( .IN1(n25), .IN2(n26), .IN3(n27), .Q(n21) );
  NAND2X0 U29 ( .IN1(n5), .IN2(n23), .QN(n24) );
  NAND2X0 U30 ( .IN1(B[26]), .IN2(A[26]), .QN(n23) );
  NOR2X0 U31 ( .IN1(B[26]), .IN2(A[26]), .QN(n22) );
  XOR2X1 U32 ( .IN1(n28), .IN2(n25), .Q(SUM[25]) );
  OA21X1 U33 ( .IN1(n29), .IN2(n30), .IN3(n31), .Q(n25) );
  NAND2X0 U34 ( .IN1(n6), .IN2(n27), .QN(n28) );
  NAND2X0 U35 ( .IN1(B[25]), .IN2(A[25]), .QN(n27) );
  NOR2X0 U36 ( .IN1(B[25]), .IN2(A[25]), .QN(n26) );
  XOR2X1 U37 ( .IN1(n32), .IN2(n29), .Q(SUM[24]) );
  OA21X1 U38 ( .IN1(n33), .IN2(n34), .IN3(n35), .Q(n29) );
  NAND2X0 U39 ( .IN1(n7), .IN2(n31), .QN(n32) );
  NAND2X0 U40 ( .IN1(B[24]), .IN2(A[24]), .QN(n31) );
  NOR2X0 U41 ( .IN1(B[24]), .IN2(A[24]), .QN(n30) );
  XOR2X1 U42 ( .IN1(n36), .IN2(n33), .Q(SUM[23]) );
  OA21X1 U43 ( .IN1(n37), .IN2(n38), .IN3(n39), .Q(n33) );
  NAND2X0 U44 ( .IN1(n8), .IN2(n35), .QN(n36) );
  NAND2X0 U45 ( .IN1(B[23]), .IN2(A[23]), .QN(n35) );
  NOR2X0 U46 ( .IN1(B[23]), .IN2(A[23]), .QN(n34) );
  XOR2X1 U47 ( .IN1(n40), .IN2(n37), .Q(SUM[22]) );
  NAND2X0 U48 ( .IN1(n9), .IN2(n39), .QN(n40) );
  NAND2X0 U49 ( .IN1(B[22]), .IN2(A[22]), .QN(n39) );
  NOR2X0 U50 ( .IN1(B[22]), .IN2(A[22]), .QN(n38) );
  OA21X1 U51 ( .IN1(n42), .IN2(n43), .IN3(n44), .Q(n41) );
  XOR2X1 U52 ( .IN1(n45), .IN2(n42), .Q(SUM[20]) );
  OA21X1 U53 ( .IN1(n46), .IN2(n47), .IN3(n48), .Q(n42) );
  NAND2X0 U54 ( .IN1(n11), .IN2(n44), .QN(n45) );
  NAND2X0 U55 ( .IN1(B[20]), .IN2(A[20]), .QN(n44) );
  NOR2X0 U56 ( .IN1(B[20]), .IN2(A[20]), .QN(n43) );
  XOR2X1 U57 ( .IN1(n49), .IN2(n46), .Q(SUM[19]) );
  OA21X1 U58 ( .IN1(n50), .IN2(n51), .IN3(n52), .Q(n46) );
  NAND2X0 U59 ( .IN1(n12), .IN2(n48), .QN(n49) );
  NAND2X0 U60 ( .IN1(B[19]), .IN2(A[19]), .QN(n48) );
  NOR2X0 U61 ( .IN1(B[19]), .IN2(A[19]), .QN(n47) );
  XOR2X1 U62 ( .IN1(n53), .IN2(n50), .Q(SUM[18]) );
  OA21X1 U63 ( .IN1(n54), .IN2(n55), .IN3(n56), .Q(n50) );
  NAND2X0 U64 ( .IN1(n13), .IN2(n52), .QN(n53) );
  NAND2X0 U65 ( .IN1(B[18]), .IN2(A[18]), .QN(n52) );
  NOR2X0 U66 ( .IN1(B[18]), .IN2(A[18]), .QN(n51) );
  XOR2X1 U67 ( .IN1(n57), .IN2(n54), .Q(SUM[17]) );
  NAND2X0 U68 ( .IN1(n14), .IN2(n56), .QN(n57) );
  NAND2X0 U69 ( .IN1(B[17]), .IN2(A[17]), .QN(n56) );
  NOR2X0 U70 ( .IN1(B[17]), .IN2(A[17]), .QN(n55) );
  NAND2X0 U71 ( .IN1(B[16]), .IN2(A[16]), .QN(n54) );
endmodule


module winnerPolicy_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [15:0] A;
  input [15:0] B;
  output [31:0] PRODUCT;
  input TC;
  wire   \CARRYB[15][14] , \CARRYB[15][13] , \CARRYB[15][12] ,
         \CARRYB[15][11] , \CARRYB[15][10] , \CARRYB[15][9] , \CARRYB[15][8] ,
         \CARRYB[15][7] , \CARRYB[15][5] , \CARRYB[15][4] , \CARRYB[15][3] ,
         \CARRYB[15][2] , \CARRYB[15][1] , \CARRYB[14][14] , \CARRYB[14][13] ,
         \CARRYB[14][12] , \CARRYB[14][11] , \CARRYB[14][10] , \CARRYB[14][9] ,
         \CARRYB[14][8] , \CARRYB[14][7] , \CARRYB[14][5] , \CARRYB[14][4] ,
         \CARRYB[14][3] , \CARRYB[14][2] , \CARRYB[14][1] , \CARRYB[13][14] ,
         \CARRYB[13][13] , \CARRYB[13][12] , \CARRYB[13][11] ,
         \CARRYB[13][10] , \CARRYB[13][9] , \CARRYB[13][8] , \CARRYB[13][7] ,
         \CARRYB[13][5] , \CARRYB[13][4] , \CARRYB[13][3] , \CARRYB[13][2] ,
         \CARRYB[13][1] , \CARRYB[12][14] , \CARRYB[12][13] , \CARRYB[12][12] ,
         \CARRYB[12][11] , \CARRYB[12][10] , \CARRYB[12][9] , \CARRYB[12][8] ,
         \CARRYB[12][7] , \CARRYB[12][5] , \CARRYB[12][4] , \CARRYB[12][3] ,
         \CARRYB[12][2] , \CARRYB[12][1] , \CARRYB[11][14] , \CARRYB[11][13] ,
         \CARRYB[11][12] , \CARRYB[11][11] , \CARRYB[11][10] , \CARRYB[11][9] ,
         \CARRYB[11][8] , \CARRYB[11][7] , \CARRYB[11][5] , \CARRYB[11][4] ,
         \CARRYB[11][3] , \CARRYB[11][2] , \CARRYB[11][1] , \CARRYB[10][14] ,
         \CARRYB[10][13] , \CARRYB[10][12] , \CARRYB[10][11] ,
         \CARRYB[10][10] , \CARRYB[10][9] , \CARRYB[10][8] , \CARRYB[10][7] ,
         \CARRYB[10][5] , \CARRYB[10][4] , \CARRYB[10][3] , \CARRYB[10][2] ,
         \CARRYB[10][1] , \CARRYB[9][14] , \CARRYB[9][13] , \CARRYB[9][12] ,
         \CARRYB[9][11] , \CARRYB[9][10] , \CARRYB[9][9] , \CARRYB[9][8] ,
         \CARRYB[9][7] , \CARRYB[9][5] , \CARRYB[9][4] , \CARRYB[9][3] ,
         \CARRYB[9][2] , \CARRYB[9][1] , \CARRYB[8][14] , \CARRYB[8][13] ,
         \CARRYB[8][12] , \CARRYB[8][11] , \CARRYB[8][10] , \CARRYB[8][9] ,
         \CARRYB[8][8] , \CARRYB[8][7] , \CARRYB[8][5] , \CARRYB[8][4] ,
         \CARRYB[8][3] , \CARRYB[8][2] , \CARRYB[8][1] , \CARRYB[7][14] ,
         \CARRYB[7][13] , \CARRYB[7][12] , \CARRYB[7][11] , \CARRYB[7][10] ,
         \CARRYB[7][9] , \CARRYB[7][8] , \CARRYB[7][7] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[6][14] , \CARRYB[6][13] , \CARRYB[6][12] , \CARRYB[6][11] ,
         \CARRYB[6][10] , \CARRYB[6][9] , \CARRYB[6][8] , \CARRYB[6][7] ,
         \CARRYB[6][5] , \CARRYB[6][4] , \CARRYB[6][3] , \CARRYB[6][2] ,
         \CARRYB[6][1] , \CARRYB[5][14] , \CARRYB[5][13] , \CARRYB[5][12] ,
         \CARRYB[5][11] , \CARRYB[5][10] , \CARRYB[5][9] , \CARRYB[5][8] ,
         \CARRYB[5][7] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[4][14] , \CARRYB[4][13] ,
         \CARRYB[4][12] , \CARRYB[4][11] , \CARRYB[4][10] , \CARRYB[4][9] ,
         \CARRYB[4][8] , \CARRYB[4][7] , \CARRYB[4][5] , \CARRYB[4][4] ,
         \CARRYB[4][3] , \CARRYB[4][2] , \CARRYB[4][1] , \CARRYB[3][14] ,
         \CARRYB[3][13] , \CARRYB[3][12] , \CARRYB[3][11] , \CARRYB[3][10] ,
         \CARRYB[3][9] , \CARRYB[3][8] , \CARRYB[3][7] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[2][14] , \CARRYB[2][13] , \CARRYB[2][12] , \CARRYB[2][11] ,
         \CARRYB[2][10] , \CARRYB[2][9] , \CARRYB[2][8] , \CARRYB[2][7] ,
         \CARRYB[2][4] , \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] ,
         \CARRYB[1][13] , \CARRYB[1][12] , \CARRYB[1][11] , \CARRYB[1][10] ,
         \CARRYB[1][9] , \SUMB[15][14] , \SUMB[15][13] , \SUMB[15][12] ,
         \SUMB[15][11] , \SUMB[15][10] , \SUMB[15][9] , \SUMB[15][8] ,
         \SUMB[15][7] , \SUMB[15][5] , \SUMB[15][4] , \SUMB[15][3] ,
         \SUMB[15][2] , \SUMB[15][1] , \SUMB[14][14] , \SUMB[14][13] ,
         \SUMB[14][12] , \SUMB[14][11] , \SUMB[14][10] , \SUMB[14][9] ,
         \SUMB[14][8] , \SUMB[14][7] , \SUMB[14][5] , \SUMB[14][4] ,
         \SUMB[14][3] , \SUMB[14][2] , \SUMB[14][1] , \SUMB[13][14] ,
         \SUMB[13][13] , \SUMB[13][12] , \SUMB[13][11] , \SUMB[13][10] ,
         \SUMB[13][9] , \SUMB[13][8] , \SUMB[13][7] , \SUMB[13][5] ,
         \SUMB[13][4] , \SUMB[13][3] , \SUMB[13][2] , \SUMB[13][1] ,
         \SUMB[12][14] , \SUMB[12][13] , \SUMB[12][12] , \SUMB[12][11] ,
         \SUMB[12][10] , \SUMB[12][9] , \SUMB[12][8] , \SUMB[12][7] ,
         \SUMB[12][5] , \SUMB[12][4] , \SUMB[12][3] , \SUMB[12][2] ,
         \SUMB[12][1] , \SUMB[11][14] , \SUMB[11][13] , \SUMB[11][12] ,
         \SUMB[11][11] , \SUMB[11][10] , \SUMB[11][9] , \SUMB[11][8] ,
         \SUMB[11][7] , \SUMB[11][5] , \SUMB[11][4] , \SUMB[11][3] ,
         \SUMB[11][2] , \SUMB[11][1] , \SUMB[10][14] , \SUMB[10][13] ,
         \SUMB[10][12] , \SUMB[10][11] , \SUMB[10][10] , \SUMB[10][9] ,
         \SUMB[10][8] , \SUMB[10][7] , \SUMB[10][5] , \SUMB[10][4] ,
         \SUMB[10][3] , \SUMB[10][2] , \SUMB[10][1] , \SUMB[9][14] ,
         \SUMB[9][13] , \SUMB[9][12] , \SUMB[9][11] , \SUMB[9][10] ,
         \SUMB[9][9] , \SUMB[9][8] , \SUMB[9][7] , \SUMB[9][5] , \SUMB[9][4] ,
         \SUMB[9][3] , \SUMB[9][2] , \SUMB[9][1] , \SUMB[8][14] ,
         \SUMB[8][13] , \SUMB[8][12] , \SUMB[8][11] , \SUMB[8][10] ,
         \SUMB[8][9] , \SUMB[8][8] , \SUMB[8][7] , \SUMB[8][5] , \SUMB[8][4] ,
         \SUMB[8][3] , \SUMB[8][2] , \SUMB[8][1] , \SUMB[7][14] ,
         \SUMB[7][13] , \SUMB[7][12] , \SUMB[7][11] , \SUMB[7][10] ,
         \SUMB[7][9] , \SUMB[7][8] , \SUMB[7][7] , \SUMB[7][5] , \SUMB[7][4] ,
         \SUMB[7][3] , \SUMB[7][2] , \SUMB[7][1] , \SUMB[6][14] ,
         \SUMB[6][13] , \SUMB[6][12] , \SUMB[6][11] , \SUMB[6][10] ,
         \SUMB[6][9] , \SUMB[6][8] , \SUMB[6][7] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][14] ,
         \SUMB[5][13] , \SUMB[5][12] , \SUMB[5][11] , \SUMB[5][10] ,
         \SUMB[5][9] , \SUMB[5][8] , \SUMB[5][7] , \SUMB[5][5] , \SUMB[5][4] ,
         \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][14] ,
         \SUMB[4][13] , \SUMB[4][12] , \SUMB[4][11] , \SUMB[4][10] ,
         \SUMB[4][9] , \SUMB[4][8] , \SUMB[4][7] , \SUMB[4][5] , \SUMB[4][4] ,
         \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] , \SUMB[3][14] ,
         \SUMB[3][13] , \SUMB[3][12] , \SUMB[3][11] , \SUMB[3][10] ,
         \SUMB[3][9] , \SUMB[3][8] , \SUMB[3][7] , \SUMB[3][5] , \SUMB[3][4] ,
         \SUMB[3][3] , \SUMB[3][2] , \SUMB[3][1] , \SUMB[2][14] ,
         \SUMB[2][13] , \SUMB[2][12] , \SUMB[2][11] , \SUMB[2][10] ,
         \SUMB[2][9] , \SUMB[2][8] , \SUMB[2][7] , \SUMB[2][5] , \SUMB[2][4] ,
         \SUMB[2][3] , \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][14] ,
         \SUMB[1][13] , \SUMB[1][12] , \SUMB[1][11] , \SUMB[1][10] ,
         \SUMB[1][9] , \SUMB[1][8] , \SUMB[1][7] , \SUMB[1][4] , \SUMB[1][3] ,
         \SUMB[1][2] , \SUMB[1][1] , \A1[28] , \A1[27] , \A1[26] , \A1[25] ,
         \A1[24] , \A1[23] , \A1[22] , \A1[21] , \A1[19] , \A1[18] , \A1[17] ,
         \A1[16] , \A1[15] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23;
  assign PRODUCT[1] = A[0];

  FADDX1 S4_1 ( .A(A[15]), .B(\CARRYB[14][1] ), .CI(\SUMB[14][2] ), .CO(
        \CARRYB[15][1] ), .S(\SUMB[15][1] ) );
  FADDX1 S4_2 ( .A(A[15]), .B(\CARRYB[14][2] ), .CI(\SUMB[14][3] ), .CO(
        \CARRYB[15][2] ), .S(\SUMB[15][2] ) );
  FADDX1 S4_3 ( .A(A[15]), .B(\CARRYB[14][3] ), .CI(\SUMB[14][4] ), .CO(
        \CARRYB[15][3] ), .S(\SUMB[15][3] ) );
  FADDX1 S4_4 ( .A(A[15]), .B(\CARRYB[14][4] ), .CI(\SUMB[14][5] ), .CO(
        \CARRYB[15][4] ), .S(\SUMB[15][4] ) );
  FADDX1 S4_5 ( .A(A[15]), .B(\CARRYB[14][5] ), .CI(\SUMB[13][7] ), .CO(
        \CARRYB[15][5] ), .S(\SUMB[15][5] ) );
  FADDX1 S4_7 ( .A(A[15]), .B(\CARRYB[14][7] ), .CI(\SUMB[14][8] ), .CO(
        \CARRYB[15][7] ), .S(\SUMB[15][7] ) );
  FADDX1 S4_8 ( .A(A[15]), .B(\CARRYB[14][8] ), .CI(\SUMB[14][9] ), .CO(
        \CARRYB[15][8] ), .S(\SUMB[15][8] ) );
  FADDX1 S4_9 ( .A(A[15]), .B(\CARRYB[14][9] ), .CI(\SUMB[14][10] ), .CO(
        \CARRYB[15][9] ), .S(\SUMB[15][9] ) );
  FADDX1 S4_10 ( .A(A[15]), .B(\CARRYB[14][10] ), .CI(\SUMB[14][11] ), .CO(
        \CARRYB[15][10] ), .S(\SUMB[15][10] ) );
  FADDX1 S4_11 ( .A(A[15]), .B(\CARRYB[14][11] ), .CI(\SUMB[14][12] ), .CO(
        \CARRYB[15][11] ), .S(\SUMB[15][11] ) );
  FADDX1 S4_12 ( .A(A[15]), .B(\CARRYB[14][12] ), .CI(\SUMB[14][13] ), .CO(
        \CARRYB[15][12] ), .S(\SUMB[15][12] ) );
  FADDX1 S4_13 ( .A(A[15]), .B(\CARRYB[14][13] ), .CI(\SUMB[14][14] ), .CO(
        \CARRYB[15][13] ), .S(\SUMB[15][13] ) );
  FADDX1 S5_14 ( .A(A[15]), .B(\CARRYB[14][14] ), .CI(A[14]), .CO(
        \CARRYB[15][14] ), .S(\SUMB[15][14] ) );
  FADDX1 S2_14_1 ( .A(A[14]), .B(\CARRYB[13][1] ), .CI(\SUMB[13][2] ), .CO(
        \CARRYB[14][1] ), .S(\SUMB[14][1] ) );
  FADDX1 S2_14_2 ( .A(A[14]), .B(\CARRYB[13][2] ), .CI(\SUMB[13][3] ), .CO(
        \CARRYB[14][2] ), .S(\SUMB[14][2] ) );
  FADDX1 S2_14_3 ( .A(A[14]), .B(\CARRYB[13][3] ), .CI(\SUMB[13][4] ), .CO(
        \CARRYB[14][3] ), .S(\SUMB[14][3] ) );
  FADDX1 S2_14_4 ( .A(A[14]), .B(\CARRYB[13][4] ), .CI(\SUMB[13][5] ), .CO(
        \CARRYB[14][4] ), .S(\SUMB[14][4] ) );
  FADDX1 S2_14_5 ( .A(A[14]), .B(\CARRYB[13][5] ), .CI(\SUMB[12][7] ), .CO(
        \CARRYB[14][5] ), .S(\SUMB[14][5] ) );
  FADDX1 S2_14_7 ( .A(A[14]), .B(\CARRYB[13][7] ), .CI(\SUMB[13][8] ), .CO(
        \CARRYB[14][7] ), .S(\SUMB[14][7] ) );
  FADDX1 S2_14_8 ( .A(A[14]), .B(\CARRYB[13][8] ), .CI(\SUMB[13][9] ), .CO(
        \CARRYB[14][8] ), .S(\SUMB[14][8] ) );
  FADDX1 S2_14_9 ( .A(A[14]), .B(\CARRYB[13][9] ), .CI(\SUMB[13][10] ), .CO(
        \CARRYB[14][9] ), .S(\SUMB[14][9] ) );
  FADDX1 S2_14_10 ( .A(A[14]), .B(\CARRYB[13][10] ), .CI(\SUMB[13][11] ), .CO(
        \CARRYB[14][10] ), .S(\SUMB[14][10] ) );
  FADDX1 S2_14_11 ( .A(A[14]), .B(\CARRYB[13][11] ), .CI(\SUMB[13][12] ), .CO(
        \CARRYB[14][11] ), .S(\SUMB[14][11] ) );
  FADDX1 S2_14_12 ( .A(A[14]), .B(\CARRYB[13][12] ), .CI(\SUMB[13][13] ), .CO(
        \CARRYB[14][12] ), .S(\SUMB[14][12] ) );
  FADDX1 S2_14_13 ( .A(A[14]), .B(\CARRYB[13][13] ), .CI(\SUMB[13][14] ), .CO(
        \CARRYB[14][13] ), .S(\SUMB[14][13] ) );
  FADDX1 S3_14_14 ( .A(A[14]), .B(\CARRYB[13][14] ), .CI(A[13]), .CO(
        \CARRYB[14][14] ), .S(\SUMB[14][14] ) );
  FADDX1 S2_13_1 ( .A(A[13]), .B(\CARRYB[12][1] ), .CI(\SUMB[12][2] ), .CO(
        \CARRYB[13][1] ), .S(\SUMB[13][1] ) );
  FADDX1 S2_13_2 ( .A(A[13]), .B(\CARRYB[12][2] ), .CI(\SUMB[12][3] ), .CO(
        \CARRYB[13][2] ), .S(\SUMB[13][2] ) );
  FADDX1 S2_13_3 ( .A(A[13]), .B(\CARRYB[12][3] ), .CI(\SUMB[12][4] ), .CO(
        \CARRYB[13][3] ), .S(\SUMB[13][3] ) );
  FADDX1 S2_13_4 ( .A(A[13]), .B(\CARRYB[12][4] ), .CI(\SUMB[12][5] ), .CO(
        \CARRYB[13][4] ), .S(\SUMB[13][4] ) );
  FADDX1 S2_13_5 ( .A(A[13]), .B(\CARRYB[12][5] ), .CI(\SUMB[11][7] ), .CO(
        \CARRYB[13][5] ), .S(\SUMB[13][5] ) );
  FADDX1 S2_13_7 ( .A(A[13]), .B(\CARRYB[12][7] ), .CI(\SUMB[12][8] ), .CO(
        \CARRYB[13][7] ), .S(\SUMB[13][7] ) );
  FADDX1 S2_13_8 ( .A(A[13]), .B(\CARRYB[12][8] ), .CI(\SUMB[12][9] ), .CO(
        \CARRYB[13][8] ), .S(\SUMB[13][8] ) );
  FADDX1 S2_13_9 ( .A(A[13]), .B(\CARRYB[12][9] ), .CI(\SUMB[12][10] ), .CO(
        \CARRYB[13][9] ), .S(\SUMB[13][9] ) );
  FADDX1 S2_13_10 ( .A(A[13]), .B(\CARRYB[12][10] ), .CI(\SUMB[12][11] ), .CO(
        \CARRYB[13][10] ), .S(\SUMB[13][10] ) );
  FADDX1 S2_13_11 ( .A(A[13]), .B(\CARRYB[12][11] ), .CI(\SUMB[12][12] ), .CO(
        \CARRYB[13][11] ), .S(\SUMB[13][11] ) );
  FADDX1 S2_13_12 ( .A(A[13]), .B(\CARRYB[12][12] ), .CI(\SUMB[12][13] ), .CO(
        \CARRYB[13][12] ), .S(\SUMB[13][12] ) );
  FADDX1 S2_13_13 ( .A(A[13]), .B(\CARRYB[12][13] ), .CI(\SUMB[12][14] ), .CO(
        \CARRYB[13][13] ), .S(\SUMB[13][13] ) );
  FADDX1 S3_13_14 ( .A(A[13]), .B(\CARRYB[12][14] ), .CI(A[12]), .CO(
        \CARRYB[13][14] ), .S(\SUMB[13][14] ) );
  FADDX1 S2_12_1 ( .A(A[12]), .B(\CARRYB[11][1] ), .CI(\SUMB[11][2] ), .CO(
        \CARRYB[12][1] ), .S(\SUMB[12][1] ) );
  FADDX1 S2_12_2 ( .A(A[12]), .B(\CARRYB[11][2] ), .CI(\SUMB[11][3] ), .CO(
        \CARRYB[12][2] ), .S(\SUMB[12][2] ) );
  FADDX1 S2_12_3 ( .A(A[12]), .B(\CARRYB[11][3] ), .CI(\SUMB[11][4] ), .CO(
        \CARRYB[12][3] ), .S(\SUMB[12][3] ) );
  FADDX1 S2_12_4 ( .A(A[12]), .B(\CARRYB[11][4] ), .CI(\SUMB[11][5] ), .CO(
        \CARRYB[12][4] ), .S(\SUMB[12][4] ) );
  FADDX1 S2_12_5 ( .A(A[12]), .B(\CARRYB[11][5] ), .CI(\SUMB[10][7] ), .CO(
        \CARRYB[12][5] ), .S(\SUMB[12][5] ) );
  FADDX1 S2_12_7 ( .A(A[12]), .B(\CARRYB[11][7] ), .CI(\SUMB[11][8] ), .CO(
        \CARRYB[12][7] ), .S(\SUMB[12][7] ) );
  FADDX1 S2_12_8 ( .A(A[12]), .B(\CARRYB[11][8] ), .CI(\SUMB[11][9] ), .CO(
        \CARRYB[12][8] ), .S(\SUMB[12][8] ) );
  FADDX1 S2_12_9 ( .A(A[12]), .B(\CARRYB[11][9] ), .CI(\SUMB[11][10] ), .CO(
        \CARRYB[12][9] ), .S(\SUMB[12][9] ) );
  FADDX1 S2_12_10 ( .A(A[12]), .B(\CARRYB[11][10] ), .CI(\SUMB[11][11] ), .CO(
        \CARRYB[12][10] ), .S(\SUMB[12][10] ) );
  FADDX1 S2_12_11 ( .A(A[12]), .B(\CARRYB[11][11] ), .CI(\SUMB[11][12] ), .CO(
        \CARRYB[12][11] ), .S(\SUMB[12][11] ) );
  FADDX1 S2_12_12 ( .A(A[12]), .B(\CARRYB[11][12] ), .CI(\SUMB[11][13] ), .CO(
        \CARRYB[12][12] ), .S(\SUMB[12][12] ) );
  FADDX1 S2_12_13 ( .A(A[12]), .B(\CARRYB[11][13] ), .CI(\SUMB[11][14] ), .CO(
        \CARRYB[12][13] ), .S(\SUMB[12][13] ) );
  FADDX1 S3_12_14 ( .A(A[12]), .B(\CARRYB[11][14] ), .CI(A[11]), .CO(
        \CARRYB[12][14] ), .S(\SUMB[12][14] ) );
  FADDX1 S2_11_1 ( .A(A[11]), .B(\CARRYB[10][1] ), .CI(\SUMB[10][2] ), .CO(
        \CARRYB[11][1] ), .S(\SUMB[11][1] ) );
  FADDX1 S2_11_2 ( .A(A[11]), .B(\CARRYB[10][2] ), .CI(\SUMB[10][3] ), .CO(
        \CARRYB[11][2] ), .S(\SUMB[11][2] ) );
  FADDX1 S2_11_3 ( .A(A[11]), .B(\CARRYB[10][3] ), .CI(\SUMB[10][4] ), .CO(
        \CARRYB[11][3] ), .S(\SUMB[11][3] ) );
  FADDX1 S2_11_4 ( .A(A[11]), .B(\CARRYB[10][4] ), .CI(\SUMB[10][5] ), .CO(
        \CARRYB[11][4] ), .S(\SUMB[11][4] ) );
  FADDX1 S2_11_5 ( .A(A[11]), .B(\CARRYB[10][5] ), .CI(\SUMB[9][7] ), .CO(
        \CARRYB[11][5] ), .S(\SUMB[11][5] ) );
  FADDX1 S2_11_7 ( .A(A[11]), .B(\CARRYB[10][7] ), .CI(\SUMB[10][8] ), .CO(
        \CARRYB[11][7] ), .S(\SUMB[11][7] ) );
  FADDX1 S2_11_8 ( .A(A[11]), .B(\CARRYB[10][8] ), .CI(\SUMB[10][9] ), .CO(
        \CARRYB[11][8] ), .S(\SUMB[11][8] ) );
  FADDX1 S2_11_9 ( .A(A[11]), .B(\CARRYB[10][9] ), .CI(\SUMB[10][10] ), .CO(
        \CARRYB[11][9] ), .S(\SUMB[11][9] ) );
  FADDX1 S2_11_10 ( .A(A[11]), .B(\CARRYB[10][10] ), .CI(\SUMB[10][11] ), .CO(
        \CARRYB[11][10] ), .S(\SUMB[11][10] ) );
  FADDX1 S2_11_11 ( .A(A[11]), .B(\CARRYB[10][11] ), .CI(\SUMB[10][12] ), .CO(
        \CARRYB[11][11] ), .S(\SUMB[11][11] ) );
  FADDX1 S2_11_12 ( .A(A[11]), .B(\CARRYB[10][12] ), .CI(\SUMB[10][13] ), .CO(
        \CARRYB[11][12] ), .S(\SUMB[11][12] ) );
  FADDX1 S2_11_13 ( .A(A[11]), .B(\CARRYB[10][13] ), .CI(\SUMB[10][14] ), .CO(
        \CARRYB[11][13] ), .S(\SUMB[11][13] ) );
  FADDX1 S3_11_14 ( .A(A[11]), .B(\CARRYB[10][14] ), .CI(A[10]), .CO(
        \CARRYB[11][14] ), .S(\SUMB[11][14] ) );
  FADDX1 S2_10_1 ( .A(A[10]), .B(\CARRYB[9][1] ), .CI(\SUMB[9][2] ), .CO(
        \CARRYB[10][1] ), .S(\SUMB[10][1] ) );
  FADDX1 S2_10_2 ( .A(A[10]), .B(\CARRYB[9][2] ), .CI(\SUMB[9][3] ), .CO(
        \CARRYB[10][2] ), .S(\SUMB[10][2] ) );
  FADDX1 S2_10_3 ( .A(A[10]), .B(\CARRYB[9][3] ), .CI(\SUMB[9][4] ), .CO(
        \CARRYB[10][3] ), .S(\SUMB[10][3] ) );
  FADDX1 S2_10_4 ( .A(A[10]), .B(\CARRYB[9][4] ), .CI(\SUMB[9][5] ), .CO(
        \CARRYB[10][4] ), .S(\SUMB[10][4] ) );
  FADDX1 S2_10_5 ( .A(A[10]), .B(\CARRYB[9][5] ), .CI(\SUMB[8][7] ), .CO(
        \CARRYB[10][5] ), .S(\SUMB[10][5] ) );
  FADDX1 S2_10_7 ( .A(A[10]), .B(\CARRYB[9][7] ), .CI(\SUMB[9][8] ), .CO(
        \CARRYB[10][7] ), .S(\SUMB[10][7] ) );
  FADDX1 S2_10_8 ( .A(A[10]), .B(\CARRYB[9][8] ), .CI(\SUMB[9][9] ), .CO(
        \CARRYB[10][8] ), .S(\SUMB[10][8] ) );
  FADDX1 S2_10_9 ( .A(A[10]), .B(\CARRYB[9][9] ), .CI(\SUMB[9][10] ), .CO(
        \CARRYB[10][9] ), .S(\SUMB[10][9] ) );
  FADDX1 S2_10_10 ( .A(A[10]), .B(\CARRYB[9][10] ), .CI(\SUMB[9][11] ), .CO(
        \CARRYB[10][10] ), .S(\SUMB[10][10] ) );
  FADDX1 S2_10_11 ( .A(A[10]), .B(\CARRYB[9][11] ), .CI(\SUMB[9][12] ), .CO(
        \CARRYB[10][11] ), .S(\SUMB[10][11] ) );
  FADDX1 S2_10_12 ( .A(A[10]), .B(\CARRYB[9][12] ), .CI(\SUMB[9][13] ), .CO(
        \CARRYB[10][12] ), .S(\SUMB[10][12] ) );
  FADDX1 S2_10_13 ( .A(A[10]), .B(\CARRYB[9][13] ), .CI(\SUMB[9][14] ), .CO(
        \CARRYB[10][13] ), .S(\SUMB[10][13] ) );
  FADDX1 S3_10_14 ( .A(A[10]), .B(\CARRYB[9][14] ), .CI(A[9]), .CO(
        \CARRYB[10][14] ), .S(\SUMB[10][14] ) );
  FADDX1 S2_9_1 ( .A(A[9]), .B(\CARRYB[8][1] ), .CI(\SUMB[8][2] ), .CO(
        \CARRYB[9][1] ), .S(\SUMB[9][1] ) );
  FADDX1 S2_9_2 ( .A(A[9]), .B(\CARRYB[8][2] ), .CI(\SUMB[8][3] ), .CO(
        \CARRYB[9][2] ), .S(\SUMB[9][2] ) );
  FADDX1 S2_9_3 ( .A(A[9]), .B(\CARRYB[8][3] ), .CI(\SUMB[8][4] ), .CO(
        \CARRYB[9][3] ), .S(\SUMB[9][3] ) );
  FADDX1 S2_9_4 ( .A(A[9]), .B(\CARRYB[8][4] ), .CI(\SUMB[8][5] ), .CO(
        \CARRYB[9][4] ), .S(\SUMB[9][4] ) );
  FADDX1 S2_9_5 ( .A(A[9]), .B(\CARRYB[8][5] ), .CI(\SUMB[7][7] ), .CO(
        \CARRYB[9][5] ), .S(\SUMB[9][5] ) );
  FADDX1 S2_9_7 ( .A(A[9]), .B(\CARRYB[8][7] ), .CI(\SUMB[8][8] ), .CO(
        \CARRYB[9][7] ), .S(\SUMB[9][7] ) );
  FADDX1 S2_9_8 ( .A(A[9]), .B(\CARRYB[8][8] ), .CI(\SUMB[8][9] ), .CO(
        \CARRYB[9][8] ), .S(\SUMB[9][8] ) );
  FADDX1 S2_9_9 ( .A(A[9]), .B(\CARRYB[8][9] ), .CI(\SUMB[8][10] ), .CO(
        \CARRYB[9][9] ), .S(\SUMB[9][9] ) );
  FADDX1 S2_9_10 ( .A(A[9]), .B(\CARRYB[8][10] ), .CI(\SUMB[8][11] ), .CO(
        \CARRYB[9][10] ), .S(\SUMB[9][10] ) );
  FADDX1 S2_9_11 ( .A(A[9]), .B(\CARRYB[8][11] ), .CI(\SUMB[8][12] ), .CO(
        \CARRYB[9][11] ), .S(\SUMB[9][11] ) );
  FADDX1 S2_9_12 ( .A(A[9]), .B(\CARRYB[8][12] ), .CI(\SUMB[8][13] ), .CO(
        \CARRYB[9][12] ), .S(\SUMB[9][12] ) );
  FADDX1 S2_9_13 ( .A(A[9]), .B(\CARRYB[8][13] ), .CI(\SUMB[8][14] ), .CO(
        \CARRYB[9][13] ), .S(\SUMB[9][13] ) );
  FADDX1 S3_9_14 ( .A(A[9]), .B(\CARRYB[8][14] ), .CI(A[8]), .CO(
        \CARRYB[9][14] ), .S(\SUMB[9][14] ) );
  FADDX1 S2_8_1 ( .A(A[8]), .B(\CARRYB[7][1] ), .CI(\SUMB[7][2] ), .CO(
        \CARRYB[8][1] ), .S(\SUMB[8][1] ) );
  FADDX1 S2_8_2 ( .A(A[8]), .B(\CARRYB[7][2] ), .CI(\SUMB[7][3] ), .CO(
        \CARRYB[8][2] ), .S(\SUMB[8][2] ) );
  FADDX1 S2_8_3 ( .A(A[8]), .B(\CARRYB[7][3] ), .CI(\SUMB[7][4] ), .CO(
        \CARRYB[8][3] ), .S(\SUMB[8][3] ) );
  FADDX1 S2_8_4 ( .A(A[8]), .B(\CARRYB[7][4] ), .CI(\SUMB[7][5] ), .CO(
        \CARRYB[8][4] ), .S(\SUMB[8][4] ) );
  FADDX1 S2_8_5 ( .A(A[8]), .B(\CARRYB[7][5] ), .CI(\SUMB[6][7] ), .CO(
        \CARRYB[8][5] ), .S(\SUMB[8][5] ) );
  FADDX1 S2_8_7 ( .A(A[8]), .B(\CARRYB[7][7] ), .CI(\SUMB[7][8] ), .CO(
        \CARRYB[8][7] ), .S(\SUMB[8][7] ) );
  FADDX1 S2_8_8 ( .A(A[8]), .B(\CARRYB[7][8] ), .CI(\SUMB[7][9] ), .CO(
        \CARRYB[8][8] ), .S(\SUMB[8][8] ) );
  FADDX1 S2_8_9 ( .A(A[8]), .B(\CARRYB[7][9] ), .CI(\SUMB[7][10] ), .CO(
        \CARRYB[8][9] ), .S(\SUMB[8][9] ) );
  FADDX1 S2_8_10 ( .A(A[8]), .B(\CARRYB[7][10] ), .CI(\SUMB[7][11] ), .CO(
        \CARRYB[8][10] ), .S(\SUMB[8][10] ) );
  FADDX1 S2_8_11 ( .A(A[8]), .B(\CARRYB[7][11] ), .CI(\SUMB[7][12] ), .CO(
        \CARRYB[8][11] ), .S(\SUMB[8][11] ) );
  FADDX1 S2_8_12 ( .A(A[8]), .B(\CARRYB[7][12] ), .CI(\SUMB[7][13] ), .CO(
        \CARRYB[8][12] ), .S(\SUMB[8][12] ) );
  FADDX1 S2_8_13 ( .A(A[8]), .B(\CARRYB[7][13] ), .CI(\SUMB[7][14] ), .CO(
        \CARRYB[8][13] ), .S(\SUMB[8][13] ) );
  FADDX1 S3_8_14 ( .A(A[8]), .B(\CARRYB[7][14] ), .CI(A[7]), .CO(
        \CARRYB[8][14] ), .S(\SUMB[8][14] ) );
  FADDX1 S2_7_1 ( .A(A[7]), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  FADDX1 S2_7_2 ( .A(A[7]), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  FADDX1 S2_7_3 ( .A(A[7]), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  FADDX1 S2_7_4 ( .A(A[7]), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  FADDX1 S2_7_5 ( .A(A[7]), .B(\CARRYB[6][5] ), .CI(\SUMB[5][7] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  FADDX1 S2_7_7 ( .A(A[7]), .B(\CARRYB[6][7] ), .CI(\SUMB[6][8] ), .CO(
        \CARRYB[7][7] ), .S(\SUMB[7][7] ) );
  FADDX1 S2_7_8 ( .A(A[7]), .B(\CARRYB[6][8] ), .CI(\SUMB[6][9] ), .CO(
        \CARRYB[7][8] ), .S(\SUMB[7][8] ) );
  FADDX1 S2_7_9 ( .A(A[7]), .B(\CARRYB[6][9] ), .CI(\SUMB[6][10] ), .CO(
        \CARRYB[7][9] ), .S(\SUMB[7][9] ) );
  FADDX1 S2_7_10 ( .A(A[7]), .B(\CARRYB[6][10] ), .CI(\SUMB[6][11] ), .CO(
        \CARRYB[7][10] ), .S(\SUMB[7][10] ) );
  FADDX1 S2_7_11 ( .A(A[7]), .B(\CARRYB[6][11] ), .CI(\SUMB[6][12] ), .CO(
        \CARRYB[7][11] ), .S(\SUMB[7][11] ) );
  FADDX1 S2_7_12 ( .A(A[7]), .B(\CARRYB[6][12] ), .CI(\SUMB[6][13] ), .CO(
        \CARRYB[7][12] ), .S(\SUMB[7][12] ) );
  FADDX1 S2_7_13 ( .A(A[7]), .B(\CARRYB[6][13] ), .CI(\SUMB[6][14] ), .CO(
        \CARRYB[7][13] ), .S(\SUMB[7][13] ) );
  FADDX1 S3_7_14 ( .A(A[7]), .B(\CARRYB[6][14] ), .CI(A[6]), .CO(
        \CARRYB[7][14] ), .S(\SUMB[7][14] ) );
  FADDX1 S2_6_1 ( .A(A[6]), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  FADDX1 S2_6_2 ( .A(A[6]), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  FADDX1 S2_6_3 ( .A(A[6]), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  FADDX1 S2_6_4 ( .A(A[6]), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  FADDX1 S2_6_5 ( .A(A[6]), .B(\CARRYB[5][5] ), .CI(\SUMB[4][7] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  FADDX1 S2_6_7 ( .A(A[6]), .B(\CARRYB[5][7] ), .CI(\SUMB[5][8] ), .CO(
        \CARRYB[6][7] ), .S(\SUMB[6][7] ) );
  FADDX1 S2_6_8 ( .A(A[6]), .B(\CARRYB[5][8] ), .CI(\SUMB[5][9] ), .CO(
        \CARRYB[6][8] ), .S(\SUMB[6][8] ) );
  FADDX1 S2_6_9 ( .A(A[6]), .B(\CARRYB[5][9] ), .CI(\SUMB[5][10] ), .CO(
        \CARRYB[6][9] ), .S(\SUMB[6][9] ) );
  FADDX1 S2_6_10 ( .A(A[6]), .B(\CARRYB[5][10] ), .CI(\SUMB[5][11] ), .CO(
        \CARRYB[6][10] ), .S(\SUMB[6][10] ) );
  FADDX1 S2_6_11 ( .A(A[6]), .B(\CARRYB[5][11] ), .CI(\SUMB[5][12] ), .CO(
        \CARRYB[6][11] ), .S(\SUMB[6][11] ) );
  FADDX1 S2_6_12 ( .A(A[6]), .B(\CARRYB[5][12] ), .CI(\SUMB[5][13] ), .CO(
        \CARRYB[6][12] ), .S(\SUMB[6][12] ) );
  FADDX1 S2_6_13 ( .A(A[6]), .B(\CARRYB[5][13] ), .CI(\SUMB[5][14] ), .CO(
        \CARRYB[6][13] ), .S(\SUMB[6][13] ) );
  FADDX1 S3_6_14 ( .A(A[6]), .B(\CARRYB[5][14] ), .CI(A[5]), .CO(
        \CARRYB[6][14] ), .S(\SUMB[6][14] ) );
  FADDX1 S2_5_1 ( .A(A[5]), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  FADDX1 S2_5_2 ( .A(A[5]), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  FADDX1 S2_5_3 ( .A(A[5]), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  FADDX1 S2_5_4 ( .A(A[5]), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  FADDX1 S2_5_5 ( .A(A[5]), .B(\CARRYB[4][5] ), .CI(\SUMB[3][7] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  FADDX1 S2_5_7 ( .A(A[5]), .B(\CARRYB[4][7] ), .CI(\SUMB[4][8] ), .CO(
        \CARRYB[5][7] ), .S(\SUMB[5][7] ) );
  FADDX1 S2_5_8 ( .A(A[5]), .B(\CARRYB[4][8] ), .CI(\SUMB[4][9] ), .CO(
        \CARRYB[5][8] ), .S(\SUMB[5][8] ) );
  FADDX1 S2_5_9 ( .A(A[5]), .B(\CARRYB[4][9] ), .CI(\SUMB[4][10] ), .CO(
        \CARRYB[5][9] ), .S(\SUMB[5][9] ) );
  FADDX1 S2_5_10 ( .A(A[5]), .B(\CARRYB[4][10] ), .CI(\SUMB[4][11] ), .CO(
        \CARRYB[5][10] ), .S(\SUMB[5][10] ) );
  FADDX1 S2_5_11 ( .A(A[5]), .B(\CARRYB[4][11] ), .CI(\SUMB[4][12] ), .CO(
        \CARRYB[5][11] ), .S(\SUMB[5][11] ) );
  FADDX1 S2_5_12 ( .A(A[5]), .B(\CARRYB[4][12] ), .CI(\SUMB[4][13] ), .CO(
        \CARRYB[5][12] ), .S(\SUMB[5][12] ) );
  FADDX1 S2_5_13 ( .A(A[5]), .B(\CARRYB[4][13] ), .CI(\SUMB[4][14] ), .CO(
        \CARRYB[5][13] ), .S(\SUMB[5][13] ) );
  FADDX1 S3_5_14 ( .A(A[5]), .B(\CARRYB[4][14] ), .CI(A[4]), .CO(
        \CARRYB[5][14] ), .S(\SUMB[5][14] ) );
  FADDX1 S2_4_1 ( .A(A[4]), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  FADDX1 S2_4_2 ( .A(A[4]), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  FADDX1 S2_4_3 ( .A(A[4]), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  FADDX1 S2_4_4 ( .A(A[4]), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  FADDX1 S2_4_5 ( .A(A[4]), .B(\CARRYB[3][5] ), .CI(\SUMB[2][7] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  FADDX1 S2_4_7 ( .A(A[4]), .B(\CARRYB[3][7] ), .CI(\SUMB[3][8] ), .CO(
        \CARRYB[4][7] ), .S(\SUMB[4][7] ) );
  FADDX1 S2_4_8 ( .A(A[4]), .B(\CARRYB[3][8] ), .CI(\SUMB[3][9] ), .CO(
        \CARRYB[4][8] ), .S(\SUMB[4][8] ) );
  FADDX1 S2_4_9 ( .A(A[4]), .B(\CARRYB[3][9] ), .CI(\SUMB[3][10] ), .CO(
        \CARRYB[4][9] ), .S(\SUMB[4][9] ) );
  FADDX1 S2_4_10 ( .A(A[4]), .B(\CARRYB[3][10] ), .CI(\SUMB[3][11] ), .CO(
        \CARRYB[4][10] ), .S(\SUMB[4][10] ) );
  FADDX1 S2_4_11 ( .A(A[4]), .B(\CARRYB[3][11] ), .CI(\SUMB[3][12] ), .CO(
        \CARRYB[4][11] ), .S(\SUMB[4][11] ) );
  FADDX1 S2_4_12 ( .A(A[4]), .B(\CARRYB[3][12] ), .CI(\SUMB[3][13] ), .CO(
        \CARRYB[4][12] ), .S(\SUMB[4][12] ) );
  FADDX1 S2_4_13 ( .A(A[4]), .B(\CARRYB[3][13] ), .CI(\SUMB[3][14] ), .CO(
        \CARRYB[4][13] ), .S(\SUMB[4][13] ) );
  FADDX1 S3_4_14 ( .A(A[4]), .B(\CARRYB[3][14] ), .CI(A[3]), .CO(
        \CARRYB[4][14] ), .S(\SUMB[4][14] ) );
  FADDX1 S2_3_1 ( .A(A[3]), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  FADDX1 S2_3_2 ( .A(A[3]), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  FADDX1 S2_3_3 ( .A(A[3]), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  FADDX1 S2_3_4 ( .A(A[3]), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  FADDX1 S2_3_5 ( .A(A[3]), .B(n3), .CI(\SUMB[1][7] ), .CO(\CARRYB[3][5] ), 
        .S(\SUMB[3][5] ) );
  FADDX1 S2_3_7 ( .A(A[3]), .B(\CARRYB[2][7] ), .CI(\SUMB[2][8] ), .CO(
        \CARRYB[3][7] ), .S(\SUMB[3][7] ) );
  FADDX1 S2_3_8 ( .A(A[3]), .B(\CARRYB[2][8] ), .CI(\SUMB[2][9] ), .CO(
        \CARRYB[3][8] ), .S(\SUMB[3][8] ) );
  FADDX1 S2_3_9 ( .A(A[3]), .B(\CARRYB[2][9] ), .CI(\SUMB[2][10] ), .CO(
        \CARRYB[3][9] ), .S(\SUMB[3][9] ) );
  FADDX1 S2_3_10 ( .A(A[3]), .B(\CARRYB[2][10] ), .CI(\SUMB[2][11] ), .CO(
        \CARRYB[3][10] ), .S(\SUMB[3][10] ) );
  FADDX1 S2_3_11 ( .A(A[3]), .B(\CARRYB[2][11] ), .CI(\SUMB[2][12] ), .CO(
        \CARRYB[3][11] ), .S(\SUMB[3][11] ) );
  FADDX1 S2_3_12 ( .A(A[3]), .B(\CARRYB[2][12] ), .CI(\SUMB[2][13] ), .CO(
        \CARRYB[3][12] ), .S(\SUMB[3][12] ) );
  FADDX1 S2_3_13 ( .A(A[3]), .B(\CARRYB[2][13] ), .CI(\SUMB[2][14] ), .CO(
        \CARRYB[3][13] ), .S(\SUMB[3][13] ) );
  FADDX1 S3_3_14 ( .A(A[3]), .B(\CARRYB[2][14] ), .CI(A[2]), .CO(
        \CARRYB[3][14] ), .S(\SUMB[3][14] ) );
  FADDX1 S2_2_1 ( .A(A[2]), .B(n16), .CI(\SUMB[1][2] ), .CO(\CARRYB[2][1] ), 
        .S(\SUMB[2][1] ) );
  FADDX1 S2_2_2 ( .A(A[2]), .B(\CARRYB[1][10] ), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  FADDX1 S2_2_3 ( .A(A[2]), .B(n17), .CI(\SUMB[1][4] ), .CO(\CARRYB[2][3] ), 
        .S(\SUMB[2][3] ) );
  FADDX1 S2_2_4 ( .A(A[2]), .B(n17), .CI(A[1]), .CO(\CARRYB[2][4] ), .S(
        \SUMB[2][4] ) );
  FADDX1 S2_2_7 ( .A(A[2]), .B(\CARRYB[1][12] ), .CI(\SUMB[1][8] ), .CO(
        \CARRYB[2][7] ), .S(\SUMB[2][7] ) );
  FADDX1 S2_2_8 ( .A(A[2]), .B(\CARRYB[1][13] ), .CI(\SUMB[1][9] ), .CO(
        \CARRYB[2][8] ), .S(\SUMB[2][8] ) );
  FADDX1 S2_2_9 ( .A(A[2]), .B(\CARRYB[1][9] ), .CI(\SUMB[1][10] ), .CO(
        \CARRYB[2][9] ), .S(\SUMB[2][9] ) );
  FADDX1 S2_2_10 ( .A(A[2]), .B(\CARRYB[1][10] ), .CI(\SUMB[1][11] ), .CO(
        \CARRYB[2][10] ), .S(\SUMB[2][10] ) );
  FADDX1 S2_2_11 ( .A(A[2]), .B(\CARRYB[1][11] ), .CI(\SUMB[1][12] ), .CO(
        \CARRYB[2][11] ), .S(\SUMB[2][11] ) );
  FADDX1 S2_2_12 ( .A(A[2]), .B(\CARRYB[1][12] ), .CI(\SUMB[1][13] ), .CO(
        \CARRYB[2][12] ), .S(\SUMB[2][12] ) );
  FADDX1 S2_2_13 ( .A(A[2]), .B(\CARRYB[1][13] ), .CI(\SUMB[1][14] ), .CO(
        \CARRYB[2][13] ), .S(\SUMB[2][13] ) );
  FADDX1 S3_2_14 ( .A(A[2]), .B(n16), .CI(A[1]), .CO(\CARRYB[2][14] ), .S(
        \SUMB[2][14] ) );
  winnerPolicy_DW01_add_2 FS_1 ( .A({1'b0, \A1[28] , \A1[27] , \A1[26] , 
        \A1[25] , \A1[24] , \A1[23] , \A1[22] , \A1[21] , \SUMB[15][7] , 
        \A1[19] , \A1[18] , \A1[17] , \A1[16] , \A1[15] , \SUMB[15][1] , 
        \SUMB[14][1] , \SUMB[13][1] , \SUMB[12][1] , \SUMB[11][1] , 
        \SUMB[10][1] , \SUMB[9][1] , \SUMB[8][1] , \SUMB[7][1] , \SUMB[6][1] , 
        \SUMB[5][1] , \SUMB[4][1] , \SUMB[3][1] , \SUMB[2][1] , \SUMB[1][1] }), 
        .B({n18, n11, n15, n14, n13, n12, n10, n9, 1'b0, n8, n7, n6, n5, n4, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[31:2]) );
  AND2X1 U2 ( .IN1(A[2]), .IN2(A[0]), .Q(n3) );
  AND2X1 U3 ( .IN1(\CARRYB[15][1] ), .IN2(\SUMB[15][2] ), .Q(n4) );
  AND2X1 U4 ( .IN1(\CARRYB[15][2] ), .IN2(\SUMB[15][3] ), .Q(n5) );
  AND2X1 U5 ( .IN1(\CARRYB[15][3] ), .IN2(\SUMB[15][4] ), .Q(n6) );
  AND2X1 U6 ( .IN1(\CARRYB[15][4] ), .IN2(\SUMB[15][5] ), .Q(n7) );
  AND2X1 U7 ( .IN1(\CARRYB[15][5] ), .IN2(\SUMB[14][7] ), .Q(n8) );
  AND2X1 U8 ( .IN1(\CARRYB[15][7] ), .IN2(\SUMB[15][8] ), .Q(n9) );
  AND2X1 U9 ( .IN1(\CARRYB[15][8] ), .IN2(\SUMB[15][9] ), .Q(n10) );
  AND2X1 U10 ( .IN1(\CARRYB[15][13] ), .IN2(\SUMB[15][14] ), .Q(n11) );
  AND2X1 U11 ( .IN1(\CARRYB[15][9] ), .IN2(\SUMB[15][10] ), .Q(n12) );
  AND2X1 U12 ( .IN1(\CARRYB[15][10] ), .IN2(\SUMB[15][11] ), .Q(n13) );
  AND2X1 U13 ( .IN1(\CARRYB[15][11] ), .IN2(\SUMB[15][12] ), .Q(n14) );
  AND2X1 U14 ( .IN1(\CARRYB[15][12] ), .IN2(\SUMB[15][13] ), .Q(n15) );
  INVX0 U15 ( .INP(n19), .ZN(\CARRYB[1][9] ) );
  NAND2X1 U16 ( .IN1(A[0]), .IN2(A[1]), .QN(n19) );
  AND2X1 U17 ( .IN1(A[0]), .IN2(A[1]), .Q(n16) );
  AND2X1 U18 ( .IN1(A[0]), .IN2(A[1]), .Q(n17) );
  INVX0 U19 ( .INP(n20), .ZN(\CARRYB[1][10] ) );
  NAND2X1 U20 ( .IN1(A[0]), .IN2(A[1]), .QN(n20) );
  INVX0 U21 ( .INP(n21), .ZN(\CARRYB[1][11] ) );
  NAND2X1 U22 ( .IN1(A[0]), .IN2(A[1]), .QN(n21) );
  INVX0 U23 ( .INP(n22), .ZN(\CARRYB[1][12] ) );
  NAND2X1 U24 ( .IN1(A[0]), .IN2(A[1]), .QN(n22) );
  INVX0 U25 ( .INP(n23), .ZN(\CARRYB[1][13] ) );
  NAND2X1 U26 ( .IN1(A[0]), .IN2(A[1]), .QN(n23) );
  AND2X1 U27 ( .IN1(\CARRYB[15][14] ), .IN2(A[15]), .Q(n18) );
  XOR2X1 U28 ( .IN1(\CARRYB[15][1] ), .IN2(\SUMB[15][2] ), .Q(\A1[15] ) );
  XOR2X1 U29 ( .IN1(\CARRYB[15][2] ), .IN2(\SUMB[15][3] ), .Q(\A1[16] ) );
  XOR2X1 U30 ( .IN1(\CARRYB[15][3] ), .IN2(\SUMB[15][4] ), .Q(\A1[17] ) );
  XOR2X1 U31 ( .IN1(\CARRYB[15][4] ), .IN2(\SUMB[15][5] ), .Q(\A1[18] ) );
  XOR2X1 U32 ( .IN1(\CARRYB[15][5] ), .IN2(\SUMB[14][7] ), .Q(\A1[19] ) );
  XOR2X1 U33 ( .IN1(\CARRYB[15][7] ), .IN2(\SUMB[15][8] ), .Q(\A1[21] ) );
  XOR2X1 U34 ( .IN1(\CARRYB[15][8] ), .IN2(\SUMB[15][9] ), .Q(\A1[22] ) );
  XOR2X1 U35 ( .IN1(\CARRYB[15][9] ), .IN2(\SUMB[15][10] ), .Q(\A1[23] ) );
  XOR2X1 U36 ( .IN1(\CARRYB[15][10] ), .IN2(\SUMB[15][11] ), .Q(\A1[24] ) );
  XOR2X1 U37 ( .IN1(\CARRYB[15][11] ), .IN2(\SUMB[15][12] ), .Q(\A1[25] ) );
  XOR2X1 U38 ( .IN1(\CARRYB[15][12] ), .IN2(\SUMB[15][13] ), .Q(\A1[26] ) );
  XOR2X1 U39 ( .IN1(\CARRYB[15][13] ), .IN2(\SUMB[15][14] ), .Q(\A1[27] ) );
  XOR2X1 U40 ( .IN1(\CARRYB[15][14] ), .IN2(A[15]), .Q(\A1[28] ) );
  XOR2X1 U41 ( .IN1(A[1]), .IN2(A[0]), .Q(\SUMB[1][1] ) );
  XOR2X1 U42 ( .IN1(A[1]), .IN2(A[0]), .Q(\SUMB[1][2] ) );
  XOR2X1 U43 ( .IN1(A[1]), .IN2(A[0]), .Q(\SUMB[1][3] ) );
  XOR2X1 U44 ( .IN1(A[1]), .IN2(A[0]), .Q(\SUMB[1][4] ) );
  XOR2X1 U45 ( .IN1(A[1]), .IN2(A[0]), .Q(\SUMB[1][7] ) );
  XOR2X1 U46 ( .IN1(A[1]), .IN2(A[0]), .Q(\SUMB[1][8] ) );
  XOR2X1 U47 ( .IN1(A[1]), .IN2(A[0]), .Q(\SUMB[1][9] ) );
  XOR2X1 U48 ( .IN1(A[1]), .IN2(A[0]), .Q(\SUMB[1][10] ) );
  XOR2X1 U49 ( .IN1(A[1]), .IN2(A[0]), .Q(\SUMB[1][11] ) );
  XOR2X1 U50 ( .IN1(A[1]), .IN2(A[0]), .Q(\SUMB[1][12] ) );
  XOR2X1 U51 ( .IN1(A[1]), .IN2(A[0]), .Q(\SUMB[1][13] ) );
  XOR2X1 U52 ( .IN1(A[1]), .IN2(A[0]), .Q(\SUMB[1][14] ) );
  XOR2X1 U53 ( .IN1(A[0]), .IN2(A[2]), .Q(\SUMB[2][5] ) );
endmodule


module winnerPolicy ( clock, nrst, en, start_winnerPolicy, mybest, besthop, 
        bestvalue, bestneighborID, MY_NODE_ID, address, data_in, wr_en, 
        data_out, epsilon_step, nexthop, done_winnerPolicy, en_rng, rng_out, 
        rng_out_4bit, rng_address, start_rngAddress, done_rng_address, 
        betterNeighborCount, which, state_out );
  input [15:0] mybest;
  input [15:0] besthop;
  input [15:0] bestvalue;
  input [15:0] bestneighborID;
  input [15:0] MY_NODE_ID;
  output [10:0] address;
  input [15:0] data_in;
  output [15:0] data_out;
  input [15:0] epsilon_step;
  output [15:0] nexthop;
  input [15:0] rng_out;
  input [15:0] rng_out_4bit;
  input [15:0] rng_address;
  output [15:0] betterNeighborCount;
  output [15:0] which;
  output [4:0] state_out;
  input clock, nrst, en, start_winnerPolicy, done_rng_address;
  output wr_en, done_winnerPolicy, en_rng, start_rngAddress;
  wire   N107, N109, N110, N111, N112, N113, N114, N115, N116, N120, N121,
         N122, N123, N124, N125, N126, N127, N128, N129, N130, N131, N132,
         N133, N134, N135, N153, N154, N155, N156, N157, N158, N159, N160,
         N161, N162, N163, N164, N165, N166, N167, N168, N169, N170, N171,
         N172, N173, N174, N175, N176, N177, N178, N179, N180, N181, N182,
         N183, N184, one, N223, N224, N225, N226, N227, N228, N229, N230, N231,
         N232, N233, N234, N235, N236, N237, N238, N239, N240, N241, N242,
         N243, N244, N245, N246, N247, N248, N249, N250, two, three, N313,
         N314, N315, N316, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, N217, N216, N215, N214, N213,
         N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202,
         N201, \add_107/carry[10] , \add_107/carry[9] , \add_107/carry[8] ,
         \add_107/carry[7] , \add_107/carry[6] , \add_107/carry[5] ,
         \add_159/carry[31] , \add_159/carry[30] , \add_159/carry[29] ,
         \add_159/carry[28] , \add_159/carry[27] , \add_159/carry[26] ,
         \add_159/carry[25] , \add_159/carry[24] , \add_159/carry[23] ,
         \add_159/carry[22] , \add_159/carry[21] , \add_159/carry[20] ,
         \add_159/carry[19] , \add_159/carry[18] , \add_159/carry[17] ,
         \add_159/carry[16] , n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
         n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436,
         n437, n438, n439, n440, n441, n442, n443, n444, n445, n446, n447,
         n448, n449, n450, n451, n452, n453, n454, n455, n456, n457, n458,
         n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, n469,
         n470, n471, n472, n473, n474, n475, n476, n477, n478, n479, n480,
         n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, n491,
         n492, n493, n494, n495, n496, n497, n498, n499, n500, n501, n502,
         n503, n504, n505, n506, n507, n508, n509, n510, n511, n512, n513,
         n514, n515, n516, n517, n518, n519, n520, n521, n522, n523, n524,
         n525, n526, n527, n528, n529, n530, n531, n532, n533, n534, n535,
         n536, n537, n538, n539, n540, n541, n542, n543, n544, n545, n546,
         n547, n548, n549, n550, n551, n552, n553, n554, n555, n556, n557,
         n558, n559, n560, n561, n562, n563, n564, n565, n566, n567, n568,
         n569, n570, n571, n572, n573, n574, n575, n576, n577, n578, n579,
         n580, n581, n582, n583, n584, n585, n586, n587, n588, n589, n590,
         n591, n592, n593, n594, n595, n596, n597;
  wire   [15:0] epsilon_buf;
  wire   [31:0] _left;
  wire   [15:0] nineninenine;
  wire   [15:0] onezerozeroone;
  wire   [31:0] _right;
  wire   [31:0] _right3;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15;
  assign state_out[4] = 1'b0;
  assign N107 = rng_address[0];
  assign N223 = mybest[0];
  assign N224 = mybest[1];
  assign N225 = mybest[2];
  assign N226 = mybest[3];
  assign N227 = mybest[4];
  assign N228 = mybest[5];
  assign N229 = mybest[6];
  assign N230 = mybest[7];
  assign N231 = mybest[8];
  assign N232 = mybest[9];

  DFFX1 \explore_constant_reg[0]  ( .D(n171), .CLK(clock), .Q(n442), .QN(n577)
         );
  DFFX1 \explore_constant_reg[1]  ( .D(n170), .CLK(clock), .Q(n444), .QN(n562)
         );
  DFFX1 \explore_constant_reg[2]  ( .D(n169), .CLK(clock), .Q(n445), .QN(n563)
         );
  DFFX1 \explore_constant_reg[3]  ( .D(n168), .CLK(clock), .Q(n446), .QN(n564)
         );
  DFFX1 \explore_constant_reg[4]  ( .D(n167), .CLK(clock), .Q(n447), .QN(n565)
         );
  DFFX1 \explore_constant_reg[5]  ( .D(n166), .CLK(clock), .Q(n448), .QN(n566)
         );
  DFFX1 \explore_constant_reg[6]  ( .D(n165), .CLK(clock), .Q(n449), .QN(n567)
         );
  DFFX1 \explore_constant_reg[7]  ( .D(n164), .CLK(clock), .Q(n450), .QN(n568)
         );
  DFFX1 \explore_constant_reg[8]  ( .D(n163), .CLK(clock), .Q(n451), .QN(n569)
         );
  DFFX1 \explore_constant_reg[9]  ( .D(n162), .CLK(clock), .Q(n453), .QN(n570)
         );
  DFFX1 \explore_constant_reg[10]  ( .D(n161), .CLK(clock), .Q(n454), .QN(n571) );
  DFFX1 \explore_constant_reg[11]  ( .D(n160), .CLK(clock), .Q(n455), .QN(n572) );
  DFFX1 \explore_constant_reg[12]  ( .D(n159), .CLK(clock), .Q(n456), .QN(n573) );
  DFFX1 \explore_constant_reg[13]  ( .D(n158), .CLK(clock), .Q(n457), .QN(n574) );
  DFFX1 \explore_constant_reg[14]  ( .D(n157), .CLK(clock), .Q(n458), .QN(n575) );
  DFFX1 \explore_constant_reg[15]  ( .D(n156), .CLK(clock), .Q(n459), .QN(n576) );
  DFFX1 \_right_reg[31]  ( .D(n239), .CLK(clock), .Q(_right[31]) );
  DFFX1 \_right_reg[30]  ( .D(n240), .CLK(clock), .Q(_right[30]) );
  DFFX1 \_right_reg[29]  ( .D(n241), .CLK(clock), .Q(_right[29]) );
  DFFX1 \_right_reg[28]  ( .D(n242), .CLK(clock), .Q(_right[28]) );
  DFFX1 \_right_reg[27]  ( .D(n243), .CLK(clock), .Q(_right[27]) );
  DFFX1 \_right_reg[26]  ( .D(n244), .CLK(clock), .Q(_right[26]) );
  DFFX1 \_right_reg[25]  ( .D(n245), .CLK(clock), .Q(_right[25]) );
  DFFX1 \_right_reg[24]  ( .D(n246), .CLK(clock), .Q(_right[24]) );
  DFFX1 \_right_reg[23]  ( .D(n247), .CLK(clock), .Q(_right[23]) );
  DFFX1 \_right_reg[22]  ( .D(n248), .CLK(clock), .Q(_right[22]) );
  DFFX1 \_right_reg[21]  ( .D(n249), .CLK(clock), .Q(_right[21]) );
  DFFX1 \_right_reg[20]  ( .D(n250), .CLK(clock), .Q(_right[20]) );
  DFFX1 \_right_reg[19]  ( .D(n251), .CLK(clock), .Q(_right[19]) );
  DFFX1 \_right_reg[18]  ( .D(n252), .CLK(clock), .Q(_right[18]) );
  DFFX1 \_right_reg[17]  ( .D(n253), .CLK(clock), .Q(_right[17]) );
  DFFX1 \_right_reg[16]  ( .D(n254), .CLK(clock), .Q(_right[16]) );
  DFFX1 \_right_reg[15]  ( .D(n255), .CLK(clock), .Q(_right[15]) );
  DFFX1 \_right_reg[14]  ( .D(n256), .CLK(clock), .Q(_right[14]) );
  DFFX1 \_right_reg[13]  ( .D(n257), .CLK(clock), .Q(_right[13]) );
  DFFX1 \_right_reg[12]  ( .D(n258), .CLK(clock), .Q(_right[12]) );
  DFFX1 \_right_reg[11]  ( .D(n259), .CLK(clock), .Q(_right[11]) );
  DFFX1 \_right_reg[10]  ( .D(n260), .CLK(clock), .Q(_right[10]) );
  DFFX1 \_right_reg[9]  ( .D(n261), .CLK(clock), .Q(_right[9]) );
  DFFX1 \_right_reg[8]  ( .D(n262), .CLK(clock), .Q(_right[8]) );
  DFFX1 \_right_reg[7]  ( .D(n263), .CLK(clock), .Q(_right[7]) );
  DFFX1 \_right_reg[6]  ( .D(n264), .CLK(clock), .Q(_right[6]) );
  DFFX1 \_right_reg[5]  ( .D(n265), .CLK(clock), .Q(_right[5]) );
  DFFX1 \_right_reg[4]  ( .D(n266), .CLK(clock), .Q(_right[4]) );
  DFFX1 \_right_reg[3]  ( .D(n267), .CLK(clock), .Q(_right[3]) );
  DFFX1 \data_out_buf_reg[0]  ( .D(n187), .CLK(clock), .Q(data_out[0]) );
  DFFX1 \data_out_buf_reg[1]  ( .D(n186), .CLK(clock), .Q(data_out[1]) );
  DFFX1 \data_out_buf_reg[2]  ( .D(n185), .CLK(clock), .Q(data_out[2]) );
  DFFX1 \data_out_buf_reg[3]  ( .D(n184), .CLK(clock), .Q(data_out[3]) );
  DFFX1 \data_out_buf_reg[4]  ( .D(n183), .CLK(clock), .Q(data_out[4]) );
  DFFX1 \data_out_buf_reg[5]  ( .D(n182), .CLK(clock), .Q(data_out[5]) );
  DFFX1 \data_out_buf_reg[6]  ( .D(n181), .CLK(clock), .Q(data_out[6]) );
  DFFX1 \data_out_buf_reg[7]  ( .D(n180), .CLK(clock), .Q(data_out[7]) );
  DFFX1 \data_out_buf_reg[8]  ( .D(n179), .CLK(clock), .Q(data_out[8]) );
  DFFX1 \data_out_buf_reg[9]  ( .D(n178), .CLK(clock), .Q(data_out[9]) );
  DFFX1 \data_out_buf_reg[10]  ( .D(n177), .CLK(clock), .Q(data_out[10]) );
  DFFX1 \data_out_buf_reg[11]  ( .D(n176), .CLK(clock), .Q(data_out[11]) );
  DFFX1 \data_out_buf_reg[12]  ( .D(n175), .CLK(clock), .Q(data_out[12]) );
  DFFX1 \data_out_buf_reg[13]  ( .D(n174), .CLK(clock), .Q(data_out[13]) );
  DFFX1 \data_out_buf_reg[14]  ( .D(n173), .CLK(clock), .Q(data_out[14]) );
  DFFX1 \data_out_buf_reg[15]  ( .D(n172), .CLK(clock), .Q(data_out[15]) );
  DFFX1 \address_count_reg[8]  ( .D(n128), .CLK(clock), .Q(address[8]) );
  DFFX1 \address_count_reg[6]  ( .D(n130), .CLK(clock), .Q(address[6]) );
  DFFX1 \address_count_reg[5]  ( .D(n131), .CLK(clock), .Q(address[5]) );
  DFFX1 \address_count_reg[4]  ( .D(n132), .CLK(clock), .Q(address[4]) );
  DFFX1 \address_count_reg[1]  ( .D(n135), .CLK(clock), .Q(address[1]) );
  DFFX1 \address_count_reg[10]  ( .D(n126), .CLK(clock), .Q(address[10]) );
  DFFX1 \address_count_reg[9]  ( .D(n127), .CLK(clock), .Q(address[9]) );
  DFFX1 \address_count_reg[7]  ( .D(n129), .CLK(clock), .Q(address[7]) );
  DFFX1 \address_count_reg[3]  ( .D(n133), .CLK(clock), .Q(address[3]) );
  DFFX1 \which_buf_reg[0]  ( .D(n318), .CLK(clock), .Q(which[0]) );
  DFFX1 \which_buf_reg[1]  ( .D(n317), .CLK(clock), .Q(which[1]) );
  DFFX1 \which_buf_reg[2]  ( .D(n316), .CLK(clock), .Q(which[2]) );
  DFFX1 \which_buf_reg[3]  ( .D(n315), .CLK(clock), .Q(which[3]) );
  DFFX1 \which_buf_reg[4]  ( .D(n314), .CLK(clock), .Q(which[4]) );
  DFFX1 \which_buf_reg[5]  ( .D(n313), .CLK(clock), .Q(which[5]) );
  DFFX1 \which_buf_reg[6]  ( .D(n312), .CLK(clock), .Q(which[6]) );
  DFFX1 \which_buf_reg[7]  ( .D(n311), .CLK(clock), .Q(which[7]) );
  DFFX1 \which_buf_reg[8]  ( .D(n310), .CLK(clock), .Q(which[8]) );
  DFFX1 \which_buf_reg[9]  ( .D(n309), .CLK(clock), .Q(which[9]) );
  DFFX1 \which_buf_reg[10]  ( .D(n308), .CLK(clock), .Q(which[10]) );
  DFFX1 \which_buf_reg[11]  ( .D(n307), .CLK(clock), .Q(which[11]) );
  DFFX1 \which_buf_reg[12]  ( .D(n306), .CLK(clock), .Q(which[12]) );
  DFFX1 \which_buf_reg[13]  ( .D(n305), .CLK(clock), .Q(which[13]) );
  DFFX1 \which_buf_reg[14]  ( .D(n304), .CLK(clock), .Q(which[14]) );
  DFFX1 \which_buf_reg[15]  ( .D(n303), .CLK(clock), .Q(which[15]) );
  DFFX1 start_rngAddress_buf_reg ( .D(n155), .CLK(clock), .Q(start_rngAddress)
         );
  DFFX1 \_right3_reg[18]  ( .D(n219), .CLK(clock), .Q(_right3[18]) );
  DFFX1 \_right3_reg[19]  ( .D(n218), .CLK(clock), .Q(_right3[19]) );
  DFFX1 \_right3_reg[20]  ( .D(n217), .CLK(clock), .Q(_right3[20]) );
  DFFX1 \_right3_reg[21]  ( .D(n216), .CLK(clock), .Q(_right3[21]) );
  DFFX1 \_right3_reg[22]  ( .D(n215), .CLK(clock), .Q(_right3[22]) );
  DFFX1 \_right3_reg[23]  ( .D(n214), .CLK(clock), .Q(_right3[23]) );
  DFFX1 \_right3_reg[24]  ( .D(n213), .CLK(clock), .Q(_right3[24]) );
  DFFX1 \_right3_reg[25]  ( .D(n212), .CLK(clock), .Q(_right3[25]) );
  DFFX1 \_right3_reg[26]  ( .D(n211), .CLK(clock), .Q(_right3[26]) );
  DFFX1 \_right3_reg[27]  ( .D(n210), .CLK(clock), .Q(_right3[27]) );
  DFFX1 \_right3_reg[28]  ( .D(n209), .CLK(clock), .Q(_right3[28]) );
  DFFX1 \_right3_reg[29]  ( .D(n208), .CLK(clock), .Q(_right3[29]) );
  DFFX1 \_right3_reg[30]  ( .D(n207), .CLK(clock), .Q(_right3[30]) );
  DFFX1 \_right3_reg[31]  ( .D(n206), .CLK(clock), .Q(_right3[31]) );
  DFFX1 \nexthop_buf_reg[12]  ( .D(n141), .CLK(clock), .Q(nexthop[12]) );
  DFFX1 \nexthop_buf_reg[11]  ( .D(n142), .CLK(clock), .Q(nexthop[11]) );
  DFFX1 \nexthop_buf_reg[10]  ( .D(n143), .CLK(clock), .Q(nexthop[10]) );
  DFFX1 \nexthop_buf_reg[9]  ( .D(n144), .CLK(clock), .Q(nexthop[9]) );
  DFFX1 \nexthop_buf_reg[7]  ( .D(n146), .CLK(clock), .Q(nexthop[7]) );
  DFFX1 \nexthop_buf_reg[6]  ( .D(n147), .CLK(clock), .Q(nexthop[6]) );
  DFFX1 \nexthop_buf_reg[4]  ( .D(n149), .CLK(clock), .Q(nexthop[4]) );
  DFFX1 \nexthop_buf_reg[1]  ( .D(n152), .CLK(clock), .Q(nexthop[1]) );
  winnerPolicy_DW01_sub_0 sub_117 ( .A(epsilon_buf), .B(epsilon_step), .CI(
        1'b0), .DIFF({N135, N134, N133, N132, N131, N130, N129, N128, N127, 
        N126, N125, N124, N123, N122, N121, N120}) );
  winnerPolicy_DW02_mult_1 mult_157 ( .A({mybest[15:10], N232, N231, N230, 
        N229, N228, N227, N226, N225, N224, N223}), .B({1'b1, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TC(1'b0), .PRODUCT({N217, N216, N215, N214, N213, N212, N211, N210, N209, 
        N208, N207, N206, N205, N204, N203, N202, N201, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14}) );
  winnerPolicy_DW02_mult_0 mult_133 ( .A({mybest[15:10], N232, N231, N230, 
        N229, N228, N227, N226, N225, N224, N223}), .B({1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0}), .TC(1'b0), .PRODUCT({N183, N182, N181, N180, N179, N178, N177, N176, N175, 
        N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, 
        N162, N161, N160, N159, N158, N157, N156, N155, N154, N153, 
        SYNOPSYS_UNCONNECTED__15}) );
  FADDX1 \add_159/U1_16  ( .A(N202), .B(N224), .CI(\add_159/carry[16] ), .CO(
        \add_159/carry[17] ), .S(N234) );
  FADDX1 \add_159/U1_17  ( .A(N203), .B(N225), .CI(\add_159/carry[17] ), .CO(
        \add_159/carry[18] ), .S(N235) );
  FADDX1 \add_159/U1_18  ( .A(N204), .B(N226), .CI(\add_159/carry[18] ), .CO(
        \add_159/carry[19] ), .S(N236) );
  FADDX1 \add_159/U1_19  ( .A(N205), .B(N227), .CI(\add_159/carry[19] ), .CO(
        \add_159/carry[20] ), .S(N237) );
  FADDX1 \add_159/U1_20  ( .A(N206), .B(N228), .CI(\add_159/carry[20] ), .CO(
        \add_159/carry[21] ), .S(N238) );
  FADDX1 \add_159/U1_21  ( .A(N207), .B(N229), .CI(\add_159/carry[21] ), .CO(
        \add_159/carry[22] ), .S(N239) );
  FADDX1 \add_159/U1_22  ( .A(N208), .B(N230), .CI(\add_159/carry[22] ), .CO(
        \add_159/carry[23] ), .S(N240) );
  FADDX1 \add_159/U1_23  ( .A(N209), .B(N231), .CI(\add_159/carry[23] ), .CO(
        \add_159/carry[24] ), .S(N241) );
  FADDX1 \add_159/U1_24  ( .A(N210), .B(N232), .CI(\add_159/carry[24] ), .CO(
        \add_159/carry[25] ), .S(N242) );
  FADDX1 \add_159/U1_25  ( .A(N211), .B(mybest[10]), .CI(\add_159/carry[25] ), 
        .CO(\add_159/carry[26] ), .S(N243) );
  FADDX1 \add_159/U1_26  ( .A(N212), .B(mybest[11]), .CI(\add_159/carry[26] ), 
        .CO(\add_159/carry[27] ), .S(N244) );
  FADDX1 \add_159/U1_27  ( .A(N213), .B(mybest[12]), .CI(\add_159/carry[27] ), 
        .CO(\add_159/carry[28] ), .S(N245) );
  FADDX1 \add_159/U1_28  ( .A(N214), .B(mybest[13]), .CI(\add_159/carry[28] ), 
        .CO(\add_159/carry[29] ), .S(N246) );
  FADDX1 \add_159/U1_29  ( .A(N215), .B(mybest[14]), .CI(\add_159/carry[29] ), 
        .CO(\add_159/carry[30] ), .S(N247) );
  FADDX1 \add_159/U1_30  ( .A(N216), .B(mybest[15]), .CI(\add_159/carry[30] ), 
        .CO(\add_159/carry[31] ), .S(N248) );
  DFFX1 \_right3_reg[4]  ( .D(n594), .CLK(clock), .Q(_right3[4]), .QN(n561) );
  DFFX1 \_right3_reg[3]  ( .D(n595), .CLK(clock), .Q(_right3[3]), .QN(n560) );
  DFFX1 \_right3_reg[2]  ( .D(n596), .CLK(clock), .Q(_right3[2]), .QN(n559) );
  DFFX1 \_right3_reg[1]  ( .D(n597), .CLK(clock), .Q(_right3[1]), .QN(n558) );
  DFFX1 \_right3_reg[0]  ( .D(n237), .CLK(clock), .Q(_right3[0]), .QN(n557) );
  DFFX1 \epsilon_buf_reg[15]  ( .D(n188), .CLK(clock), .Q(epsilon_buf[15]), 
        .QN(n592) );
  DFFX1 \epsilon_buf_reg[14]  ( .D(n189), .CLK(clock), .Q(epsilon_buf[14]), 
        .QN(n591) );
  DFFX1 \epsilon_buf_reg[13]  ( .D(n190), .CLK(clock), .Q(epsilon_buf[13]), 
        .QN(n590) );
  DFFX1 \epsilon_buf_reg[12]  ( .D(n191), .CLK(clock), .Q(epsilon_buf[12]), 
        .QN(n589) );
  DFFX1 \epsilon_buf_reg[11]  ( .D(n192), .CLK(clock), .Q(epsilon_buf[11]), 
        .QN(n588) );
  DFFX1 \epsilon_buf_reg[10]  ( .D(n193), .CLK(clock), .Q(epsilon_buf[10]), 
        .QN(n587) );
  DFFX1 \epsilon_buf_reg[9]  ( .D(n194), .CLK(clock), .Q(epsilon_buf[9]), .QN(
        n586) );
  DFFX1 \epsilon_buf_reg[8]  ( .D(n195), .CLK(clock), .Q(epsilon_buf[8]), .QN(
        n585) );
  DFFX1 \epsilon_buf_reg[7]  ( .D(n196), .CLK(clock), .Q(epsilon_buf[7]), .QN(
        n584) );
  DFFX1 \epsilon_buf_reg[6]  ( .D(n197), .CLK(clock), .Q(epsilon_buf[6]), .QN(
        n583) );
  DFFX1 \epsilon_buf_reg[5]  ( .D(n198), .CLK(clock), .Q(epsilon_buf[5]), .QN(
        n582) );
  DFFX1 \epsilon_buf_reg[4]  ( .D(n199), .CLK(clock), .Q(epsilon_buf[4]), .QN(
        n581) );
  DFFX1 \epsilon_buf_reg[3]  ( .D(n200), .CLK(clock), .Q(epsilon_buf[3]), .QN(
        n580) );
  DFFX1 \epsilon_buf_reg[2]  ( .D(n201), .CLK(clock), .Q(epsilon_buf[2]), .QN(
        n579) );
  DFFX1 \epsilon_buf_reg[1]  ( .D(n202), .CLK(clock), .Q(epsilon_buf[1]), .QN(
        n578) );
  DFFX1 \epsilon_buf_reg[0]  ( .D(n203), .CLK(clock), .Q(epsilon_buf[0]), .QN(
        n593) );
  DFFX1 \_right_reg[0]  ( .D(n270), .CLK(clock), .Q(_right[0]), .QN(n555) );
  DFFX1 \address_count_reg[0]  ( .D(n136), .CLK(clock), .Q(address[0]), .QN(
        n556) );
  DFFX1 \address_count_reg[2]  ( .D(n134), .CLK(clock), .Q(address[2]), .QN(
        n554) );
  DFFX1 \state_reg[3]  ( .D(N316), .CLK(clock), .Q(state_out[3]), .QN(n518) );
  DFFX1 done_winnerPolicy_buf_reg ( .D(n154), .CLK(clock), .Q(
        done_winnerPolicy) );
  DFFX1 one_reg ( .D(n238), .CLK(clock), .Q(one) );
  DFFX1 two_reg ( .D(n205), .CLK(clock), .Q(two) );
  DFFX1 \state_reg[1]  ( .D(N314), .CLK(clock), .Q(state_out[1]), .QN(n535) );
  DFFX1 \state_reg[0]  ( .D(N313), .CLK(clock), .Q(state_out[0]), .QN(n536) );
  DFFX1 en_rng_buf_reg ( .D(n137), .CLK(clock), .Q(en_rng) );
  DFFX1 \_right3_reg[7]  ( .D(n230), .CLK(clock), .Q(_right3[7]) );
  DFFX1 \_right3_reg[6]  ( .D(n231), .CLK(clock), .Q(_right3[6]) );
  DFFX1 \_right3_reg[5]  ( .D(n232), .CLK(clock), .Q(_right3[5]) );
  DFFX1 three_reg ( .D(n204), .CLK(clock), .Q(three) );
  DFFX1 wr_en_buf_reg ( .D(n125), .CLK(clock), .Q(wr_en) );
  DFFX1 \_right_reg[2]  ( .D(n268), .CLK(clock), .Q(_right[2]) );
  DFFX1 \_right_reg[1]  ( .D(n269), .CLK(clock), .Q(_right[1]) );
  DFFX1 \_left_reg[31]  ( .D(n271), .CLK(clock), .Q(_left[31]), .QN(n383) );
  DFFX1 \_left_reg[30]  ( .D(n272), .CLK(clock), .Q(_left[30]), .QN(n355) );
  DFFX1 \_left_reg[29]  ( .D(n273), .CLK(clock), .Q(_left[29]), .QN(n382) );
  DFFX1 \_left_reg[28]  ( .D(n274), .CLK(clock), .Q(_left[28]), .QN(n354) );
  DFFX1 \_left_reg[27]  ( .D(n275), .CLK(clock), .Q(_left[27]), .QN(n353) );
  DFFX1 \_left_reg[26]  ( .D(n276), .CLK(clock), .Q(_left[26]), .QN(n381) );
  DFFX1 \_left_reg[25]  ( .D(n277), .CLK(clock), .Q(_left[25]), .QN(n352) );
  DFFX1 \_left_reg[24]  ( .D(n278), .CLK(clock), .Q(_left[24]), .QN(n351) );
  DFFX1 \_left_reg[23]  ( .D(n279), .CLK(clock), .Q(_left[23]), .QN(n380) );
  DFFX1 \_left_reg[22]  ( .D(n280), .CLK(clock), .Q(_left[22]), .QN(n350) );
  DFFX1 \_left_reg[21]  ( .D(n281), .CLK(clock), .Q(_left[21]), .QN(n349) );
  DFFX1 \_left_reg[20]  ( .D(n282), .CLK(clock), .Q(_left[20]), .QN(n379) );
  DFFX1 \_left_reg[19]  ( .D(n283), .CLK(clock), .Q(_left[19]), .QN(n348) );
  DFFX1 \_left_reg[18]  ( .D(n284), .CLK(clock), .Q(_left[18]), .QN(n347) );
  DFFX1 \_left_reg[17]  ( .D(n285), .CLK(clock), .Q(_left[17]), .QN(n378) );
  DFFX1 \_left_reg[16]  ( .D(n286), .CLK(clock), .Q(_left[16]), .QN(n346) );
  DFFX1 \_right3_reg[16]  ( .D(n221), .CLK(clock), .Q(_right3[16]) );
  DFFX1 \_right3_reg[15]  ( .D(n222), .CLK(clock), .Q(_right3[15]) );
  DFFX1 \_right3_reg[14]  ( .D(n223), .CLK(clock), .Q(_right3[14]) );
  DFFX1 \_right3_reg[13]  ( .D(n224), .CLK(clock), .Q(_right3[13]) );
  DFFX1 \_right3_reg[12]  ( .D(n225), .CLK(clock), .Q(_right3[12]) );
  DFFX1 \_right3_reg[11]  ( .D(n226), .CLK(clock), .Q(_right3[11]) );
  DFFX1 \_right3_reg[10]  ( .D(n227), .CLK(clock), .Q(_right3[10]) );
  DFFX1 \_right3_reg[9]  ( .D(n228), .CLK(clock), .Q(_right3[9]) );
  DFFX1 \_right3_reg[8]  ( .D(n229), .CLK(clock), .Q(_right3[8]) );
  DFFX1 \_right3_reg[17]  ( .D(n220), .CLK(clock), .Q(_right3[17]) );
  DFFX1 \betterNeighborCount_buf_reg[15]  ( .D(n287), .CLK(clock), .Q(
        betterNeighborCount[15]) );
  DFFX1 \betterNeighborCount_buf_reg[14]  ( .D(n288), .CLK(clock), .Q(
        betterNeighborCount[14]) );
  DFFX1 \betterNeighborCount_buf_reg[13]  ( .D(n289), .CLK(clock), .Q(
        betterNeighborCount[13]) );
  DFFX1 \betterNeighborCount_buf_reg[12]  ( .D(n290), .CLK(clock), .Q(
        betterNeighborCount[12]) );
  DFFX1 \betterNeighborCount_buf_reg[11]  ( .D(n291), .CLK(clock), .Q(
        betterNeighborCount[11]) );
  DFFX1 \betterNeighborCount_buf_reg[10]  ( .D(n292), .CLK(clock), .Q(
        betterNeighborCount[10]) );
  DFFX1 \betterNeighborCount_buf_reg[9]  ( .D(n293), .CLK(clock), .Q(
        betterNeighborCount[9]) );
  DFFX1 \betterNeighborCount_buf_reg[8]  ( .D(n294), .CLK(clock), .Q(
        betterNeighborCount[8]) );
  DFFX1 \betterNeighborCount_buf_reg[7]  ( .D(n295), .CLK(clock), .Q(
        betterNeighborCount[7]) );
  DFFX1 \betterNeighborCount_buf_reg[6]  ( .D(n296), .CLK(clock), .Q(
        betterNeighborCount[6]) );
  DFFX1 \betterNeighborCount_buf_reg[5]  ( .D(n297), .CLK(clock), .Q(
        betterNeighborCount[5]) );
  DFFX1 \betterNeighborCount_buf_reg[4]  ( .D(n298), .CLK(clock), .Q(
        betterNeighborCount[4]) );
  DFFX1 \betterNeighborCount_buf_reg[3]  ( .D(n299), .CLK(clock), .Q(
        betterNeighborCount[3]) );
  DFFX1 \betterNeighborCount_buf_reg[2]  ( .D(n300), .CLK(clock), .Q(
        betterNeighborCount[2]) );
  DFFX1 \betterNeighborCount_buf_reg[1]  ( .D(n301), .CLK(clock), .Q(
        betterNeighborCount[1]) );
  DFFX1 \betterNeighborCount_buf_reg[0]  ( .D(n302), .CLK(clock), .Q(
        betterNeighborCount[0]) );
  DFFX1 \nexthop_buf_reg[8]  ( .D(n145), .CLK(clock), .Q(nexthop[8]) );
  DFFX1 \nexthop_buf_reg[5]  ( .D(n148), .CLK(clock), .Q(nexthop[5]) );
  DFFX1 \nexthop_buf_reg[3]  ( .D(n150), .CLK(clock), .Q(nexthop[3]) );
  DFFX1 \nexthop_buf_reg[2]  ( .D(n151), .CLK(clock), .Q(nexthop[2]) );
  DFFX1 \nexthop_buf_reg[0]  ( .D(n153), .CLK(clock), .Q(nexthop[0]) );
  DFFX1 \state_reg[2]  ( .D(N315), .CLK(clock), .Q(state_out[2]), .QN(n519) );
  DFFX1 \nexthop_buf_reg[15]  ( .D(n138), .CLK(clock), .Q(nexthop[15]) );
  DFFX1 \nexthop_buf_reg[14]  ( .D(n139), .CLK(clock), .Q(nexthop[14]) );
  DFFX1 \nexthop_buf_reg[13]  ( .D(n140), .CLK(clock), .Q(nexthop[13]) );
  OR4X1 U361 ( .IN1(n405), .IN2(n404), .IN3(n403), .IN4(n402), .Q(n319) );
  INVX0 U362 ( .INP(n409), .ZN(n321) );
  INVX0 U363 ( .INP(n412), .ZN(n323) );
  INVX0 U364 ( .INP(n412), .ZN(n322) );
  NOR2X0 U365 ( .IN1(n501), .IN2(n494), .QN(n495) );
  INVX0 U366 ( .INP(n452), .ZN(n443) );
  INVX0 U367 ( .INP(n471), .ZN(n423) );
  INVX0 U368 ( .INP(n411), .ZN(n410) );
  INVX0 U369 ( .INP(n321), .ZN(n320) );
  NOR2X0 U370 ( .IN1(n488), .IN2(n415), .QN(n452) );
  NOR2X0 U371 ( .IN1(n479), .IN2(n415), .QN(n471) );
  NAND2X1 U372 ( .IN1(n422), .IN2(n518), .QN(n412) );
  INVX0 U373 ( .INP(n493), .ZN(n494) );
  INVX0 U374 ( .INP(n478), .ZN(n467) );
  NOR2X0 U375 ( .IN1(n463), .IN2(n415), .QN(n411) );
  AND2X1 U376 ( .IN1(n469), .IN2(nrst), .Q(n472) );
  AOI21X1 U377 ( .IN1(n425), .IN2(n426), .IN3(n423), .QN(n424) );
  INVX0 U378 ( .INP(rng_address[2]), .ZN(N109) );
  INVX0 U379 ( .INP(nrst), .ZN(n415) );
  AND2X1 U380 ( .IN1(state_out[3]), .IN2(n422), .Q(n421) );
  INVX0 U381 ( .INP(MY_NODE_ID[1]), .ZN(n407) );
  INVX0 U382 ( .INP(MY_NODE_ID[0]), .ZN(n406) );
  INVX0 U383 ( .INP(bestneighborID[1]), .ZN(n408) );
  XOR2X1 U384 ( .IN1(\add_159/carry[31] ), .IN2(N217), .Q(N249) );
  AND2X1 U385 ( .IN1(N201), .IN2(N223), .Q(\add_159/carry[16] ) );
  XOR2X1 U386 ( .IN1(N223), .IN2(N201), .Q(N233) );
  XNOR2X1 U387 ( .IN1(rng_address[9]), .IN2(\add_107/carry[10] ), .Q(N116) );
  OR2X1 U388 ( .IN1(rng_address[8]), .IN2(\add_107/carry[9] ), .Q(
        \add_107/carry[10] ) );
  XNOR2X1 U389 ( .IN1(\add_107/carry[9] ), .IN2(rng_address[8]), .Q(N115) );
  AND2X1 U390 ( .IN1(\add_107/carry[8] ), .IN2(rng_address[7]), .Q(
        \add_107/carry[9] ) );
  XOR2X1 U391 ( .IN1(rng_address[7]), .IN2(\add_107/carry[8] ), .Q(N114) );
  AND2X1 U392 ( .IN1(\add_107/carry[7] ), .IN2(rng_address[6]), .Q(
        \add_107/carry[8] ) );
  XOR2X1 U393 ( .IN1(rng_address[6]), .IN2(\add_107/carry[7] ), .Q(N113) );
  OR2X1 U394 ( .IN1(rng_address[5]), .IN2(\add_107/carry[6] ), .Q(
        \add_107/carry[7] ) );
  XNOR2X1 U395 ( .IN1(\add_107/carry[6] ), .IN2(rng_address[5]), .Q(N112) );
  OR2X1 U396 ( .IN1(rng_address[4]), .IN2(\add_107/carry[5] ), .Q(
        \add_107/carry[6] ) );
  XNOR2X1 U397 ( .IN1(\add_107/carry[5] ), .IN2(rng_address[4]), .Q(N111) );
  AND2X1 U398 ( .IN1(rng_address[2]), .IN2(rng_address[3]), .Q(
        \add_107/carry[5] ) );
  XOR2X1 U399 ( .IN1(rng_address[3]), .IN2(rng_address[2]), .Q(N110) );
  AND2X1 U400 ( .IN1(n346), .IN2(_right[16]), .Q(n324) );
  NOR4X0 U401 ( .IN1(_right[11]), .IN2(_right[10]), .IN3(_right[0]), .IN4(n324), .QN(n329) );
  NOR4X0 U402 ( .IN1(_right[15]), .IN2(_right[14]), .IN3(_right[13]), .IN4(
        _right[12]), .QN(n328) );
  NOR4X0 U403 ( .IN1(_right[4]), .IN2(_right[3]), .IN3(_right[2]), .IN4(
        _right[1]), .QN(n327) );
  OR2X1 U404 ( .IN1(_right[6]), .IN2(_right[5]), .Q(n325) );
  NOR4X0 U405 ( .IN1(n325), .IN2(_right[7]), .IN3(_right[9]), .IN4(_right[8]), 
        .QN(n326) );
  NAND4X0 U406 ( .IN1(n329), .IN2(n328), .IN3(n327), .IN4(n326), .QN(n330) );
  OA221X1 U407 ( .IN1(_right[17]), .IN2(n378), .IN3(_right[16]), .IN4(n346), 
        .IN5(n330), .Q(n331) );
  AO221X1 U408 ( .IN1(_right[17]), .IN2(n378), .IN3(_right[18]), .IN4(n347), 
        .IN5(n331), .Q(n332) );
  OA221X1 U409 ( .IN1(_right[19]), .IN2(n348), .IN3(_right[18]), .IN4(n347), 
        .IN5(n332), .Q(n333) );
  AO221X1 U410 ( .IN1(_right[19]), .IN2(n348), .IN3(_right[20]), .IN4(n379), 
        .IN5(n333), .Q(n334) );
  OA221X1 U411 ( .IN1(_right[21]), .IN2(n349), .IN3(_right[20]), .IN4(n379), 
        .IN5(n334), .Q(n335) );
  AO221X1 U412 ( .IN1(_right[21]), .IN2(n349), .IN3(_right[22]), .IN4(n350), 
        .IN5(n335), .Q(n336) );
  OA221X1 U413 ( .IN1(_right[23]), .IN2(n380), .IN3(_right[22]), .IN4(n350), 
        .IN5(n336), .Q(n337) );
  AO221X1 U414 ( .IN1(_right[23]), .IN2(n380), .IN3(_right[24]), .IN4(n351), 
        .IN5(n337), .Q(n338) );
  OA221X1 U415 ( .IN1(_right[25]), .IN2(n352), .IN3(_right[24]), .IN4(n351), 
        .IN5(n338), .Q(n339) );
  AO221X1 U416 ( .IN1(_right[25]), .IN2(n352), .IN3(_right[26]), .IN4(n381), 
        .IN5(n339), .Q(n340) );
  OA221X1 U417 ( .IN1(_right[27]), .IN2(n353), .IN3(_right[26]), .IN4(n381), 
        .IN5(n340), .Q(n341) );
  AO221X1 U418 ( .IN1(_right[27]), .IN2(n353), .IN3(_right[28]), .IN4(n354), 
        .IN5(n341), .Q(n342) );
  OA221X1 U419 ( .IN1(_right[29]), .IN2(n382), .IN3(_right[28]), .IN4(n354), 
        .IN5(n342), .Q(n343) );
  AO221X1 U420 ( .IN1(_right[29]), .IN2(n382), .IN3(_right[30]), .IN4(n355), 
        .IN5(n343), .Q(n344) );
  OA221X1 U421 ( .IN1(_right[31]), .IN2(n383), .IN3(_right[30]), .IN4(n355), 
        .IN5(n344), .Q(n345) );
  AO21X1 U422 ( .IN1(_right[31]), .IN2(n383), .IN3(n345), .Q(N184) );
  AND2X1 U423 ( .IN1(n346), .IN2(_right3[16]), .Q(n356) );
  NOR4X0 U424 ( .IN1(_right3[11]), .IN2(_right3[10]), .IN3(_right3[0]), .IN4(
        n356), .QN(n361) );
  NOR4X0 U425 ( .IN1(_right3[15]), .IN2(_right3[14]), .IN3(_right3[13]), .IN4(
        _right3[12]), .QN(n360) );
  NOR4X0 U426 ( .IN1(_right3[4]), .IN2(_right3[3]), .IN3(_right3[2]), .IN4(
        _right3[1]), .QN(n359) );
  OR2X1 U427 ( .IN1(_right3[6]), .IN2(_right3[5]), .Q(n357) );
  NOR4X0 U428 ( .IN1(n357), .IN2(_right3[7]), .IN3(_right3[9]), .IN4(
        _right3[8]), .QN(n358) );
  NAND4X0 U429 ( .IN1(n361), .IN2(n360), .IN3(n359), .IN4(n358), .QN(n362) );
  OA221X1 U430 ( .IN1(_right3[17]), .IN2(n378), .IN3(_right3[16]), .IN4(n346), 
        .IN5(n362), .Q(n363) );
  AO221X1 U431 ( .IN1(_right3[17]), .IN2(n378), .IN3(_right3[18]), .IN4(n347), 
        .IN5(n363), .Q(n364) );
  OA221X1 U432 ( .IN1(_right3[19]), .IN2(n348), .IN3(_right3[18]), .IN4(n347), 
        .IN5(n364), .Q(n365) );
  AO221X1 U433 ( .IN1(_right3[19]), .IN2(n348), .IN3(_right3[20]), .IN4(n379), 
        .IN5(n365), .Q(n366) );
  OA221X1 U434 ( .IN1(_right3[21]), .IN2(n349), .IN3(_right3[20]), .IN4(n379), 
        .IN5(n366), .Q(n367) );
  AO221X1 U435 ( .IN1(_right3[21]), .IN2(n349), .IN3(_right3[22]), .IN4(n350), 
        .IN5(n367), .Q(n368) );
  OA221X1 U436 ( .IN1(_right3[23]), .IN2(n380), .IN3(_right3[22]), .IN4(n350), 
        .IN5(n368), .Q(n369) );
  AO221X1 U437 ( .IN1(_right3[23]), .IN2(n380), .IN3(_right3[24]), .IN4(n351), 
        .IN5(n369), .Q(n370) );
  OA221X1 U438 ( .IN1(_right3[25]), .IN2(n352), .IN3(_right3[24]), .IN4(n351), 
        .IN5(n370), .Q(n371) );
  AO221X1 U439 ( .IN1(_right3[25]), .IN2(n352), .IN3(_right3[26]), .IN4(n381), 
        .IN5(n371), .Q(n372) );
  OA221X1 U440 ( .IN1(_right3[27]), .IN2(n353), .IN3(_right3[26]), .IN4(n381), 
        .IN5(n372), .Q(n373) );
  AO221X1 U441 ( .IN1(_right3[27]), .IN2(n353), .IN3(_right3[28]), .IN4(n354), 
        .IN5(n373), .Q(n374) );
  OA221X1 U442 ( .IN1(_right3[29]), .IN2(n382), .IN3(_right3[28]), .IN4(n354), 
        .IN5(n374), .Q(n375) );
  AO221X1 U443 ( .IN1(_right3[29]), .IN2(n382), .IN3(_right3[30]), .IN4(n355), 
        .IN5(n375), .Q(n376) );
  OA221X1 U444 ( .IN1(_right3[31]), .IN2(n383), .IN3(_right3[30]), .IN4(n355), 
        .IN5(n376), .Q(n377) );
  AO21X1 U445 ( .IN1(_right3[31]), .IN2(n383), .IN3(n377), .Q(N250) );
  XOR2X1 U446 ( .IN1(MY_NODE_ID[15]), .IN2(bestneighborID[15]), .Q(n389) );
  XOR2X1 U447 ( .IN1(MY_NODE_ID[2]), .IN2(bestneighborID[2]), .Q(n388) );
  NOR2X0 U448 ( .IN1(n406), .IN2(bestneighborID[0]), .QN(n384) );
  OA22X1 U449 ( .IN1(MY_NODE_ID[1]), .IN2(n384), .IN3(n384), .IN4(n408), .Q(
        n387) );
  AND2X1 U450 ( .IN1(bestneighborID[0]), .IN2(n406), .Q(n385) );
  OA22X1 U451 ( .IN1(n385), .IN2(n407), .IN3(bestneighborID[1]), .IN4(n385), 
        .Q(n386) );
  OR4X1 U452 ( .IN1(n389), .IN2(n388), .IN3(n387), .IN4(n386), .Q(n405) );
  XNOR2X1 U453 ( .IN1(MY_NODE_ID[6]), .IN2(bestneighborID[6]), .Q(n393) );
  XNOR2X1 U454 ( .IN1(MY_NODE_ID[5]), .IN2(bestneighborID[5]), .Q(n392) );
  XNOR2X1 U455 ( .IN1(MY_NODE_ID[4]), .IN2(bestneighborID[4]), .Q(n391) );
  XNOR2X1 U456 ( .IN1(MY_NODE_ID[3]), .IN2(bestneighborID[3]), .Q(n390) );
  NAND4X0 U457 ( .IN1(n393), .IN2(n392), .IN3(n391), .IN4(n390), .QN(n404) );
  XNOR2X1 U458 ( .IN1(MY_NODE_ID[10]), .IN2(bestneighborID[10]), .Q(n397) );
  XNOR2X1 U459 ( .IN1(MY_NODE_ID[9]), .IN2(bestneighborID[9]), .Q(n396) );
  XNOR2X1 U460 ( .IN1(MY_NODE_ID[8]), .IN2(bestneighborID[8]), .Q(n395) );
  XNOR2X1 U461 ( .IN1(MY_NODE_ID[7]), .IN2(bestneighborID[7]), .Q(n394) );
  NAND4X0 U462 ( .IN1(n397), .IN2(n396), .IN3(n395), .IN4(n394), .QN(n403) );
  XNOR2X1 U463 ( .IN1(MY_NODE_ID[14]), .IN2(bestneighborID[14]), .Q(n401) );
  XNOR2X1 U464 ( .IN1(MY_NODE_ID[13]), .IN2(bestneighborID[13]), .Q(n400) );
  XNOR2X1 U465 ( .IN1(MY_NODE_ID[12]), .IN2(bestneighborID[12]), .Q(n399) );
  XNOR2X1 U466 ( .IN1(MY_NODE_ID[11]), .IN2(bestneighborID[11]), .Q(n398) );
  NAND4X0 U467 ( .IN1(n401), .IN2(n400), .IN3(n399), .IN4(n398), .QN(n402) );
  NOR2X0 U468 ( .IN1(n561), .IN2(n409), .QN(n594) );
  NOR2X0 U469 ( .IN1(n560), .IN2(n409), .QN(n595) );
  NOR2X0 U470 ( .IN1(n559), .IN2(n409), .QN(n596) );
  NOR2X0 U471 ( .IN1(n558), .IN2(n409), .QN(n597) );
  MUX21X1 U472 ( .IN1(rng_out_4bit[0]), .IN2(which[0]), .S(n410), .Q(n318) );
  MUX21X1 U473 ( .IN1(rng_out_4bit[1]), .IN2(which[1]), .S(n410), .Q(n317) );
  MUX21X1 U474 ( .IN1(rng_out_4bit[2]), .IN2(which[2]), .S(n410), .Q(n316) );
  MUX21X1 U475 ( .IN1(rng_out_4bit[3]), .IN2(which[3]), .S(n410), .Q(n315) );
  MUX21X1 U476 ( .IN1(rng_out_4bit[4]), .IN2(which[4]), .S(n410), .Q(n314) );
  MUX21X1 U477 ( .IN1(rng_out_4bit[5]), .IN2(which[5]), .S(n410), .Q(n313) );
  MUX21X1 U478 ( .IN1(rng_out_4bit[6]), .IN2(which[6]), .S(n410), .Q(n312) );
  MUX21X1 U479 ( .IN1(rng_out_4bit[7]), .IN2(which[7]), .S(n410), .Q(n311) );
  MUX21X1 U480 ( .IN1(rng_out_4bit[8]), .IN2(which[8]), .S(n410), .Q(n310) );
  MUX21X1 U481 ( .IN1(rng_out_4bit[9]), .IN2(which[9]), .S(n410), .Q(n309) );
  MUX21X1 U482 ( .IN1(rng_out_4bit[10]), .IN2(which[10]), .S(n410), .Q(n308)
         );
  MUX21X1 U483 ( .IN1(rng_out_4bit[11]), .IN2(which[11]), .S(n410), .Q(n307)
         );
  MUX21X1 U484 ( .IN1(rng_out_4bit[12]), .IN2(which[12]), .S(n410), .Q(n306)
         );
  MUX21X1 U485 ( .IN1(rng_out_4bit[13]), .IN2(which[13]), .S(n410), .Q(n305)
         );
  MUX21X1 U486 ( .IN1(rng_out_4bit[14]), .IN2(which[14]), .S(n410), .Q(n304)
         );
  MUX21X1 U487 ( .IN1(rng_out_4bit[15]), .IN2(which[15]), .S(n410), .Q(n303)
         );
  MUX21X1 U488 ( .IN1(betterNeighborCount[0]), .IN2(data_in[0]), .S(n411), .Q(
        n302) );
  MUX21X1 U489 ( .IN1(betterNeighborCount[1]), .IN2(data_in[1]), .S(n411), .Q(
        n301) );
  MUX21X1 U490 ( .IN1(betterNeighborCount[2]), .IN2(data_in[2]), .S(n411), .Q(
        n300) );
  MUX21X1 U491 ( .IN1(betterNeighborCount[3]), .IN2(data_in[3]), .S(n411), .Q(
        n299) );
  MUX21X1 U492 ( .IN1(betterNeighborCount[4]), .IN2(data_in[4]), .S(n411), .Q(
        n298) );
  MUX21X1 U493 ( .IN1(betterNeighborCount[5]), .IN2(data_in[5]), .S(n411), .Q(
        n297) );
  MUX21X1 U494 ( .IN1(betterNeighborCount[6]), .IN2(data_in[6]), .S(n411), .Q(
        n296) );
  MUX21X1 U495 ( .IN1(betterNeighborCount[7]), .IN2(data_in[7]), .S(n411), .Q(
        n295) );
  MUX21X1 U496 ( .IN1(betterNeighborCount[8]), .IN2(data_in[8]), .S(n411), .Q(
        n294) );
  MUX21X1 U497 ( .IN1(betterNeighborCount[9]), .IN2(data_in[9]), .S(n411), .Q(
        n293) );
  MUX21X1 U498 ( .IN1(betterNeighborCount[10]), .IN2(data_in[10]), .S(n411), 
        .Q(n292) );
  MUX21X1 U499 ( .IN1(betterNeighborCount[11]), .IN2(data_in[11]), .S(n411), 
        .Q(n291) );
  MUX21X1 U500 ( .IN1(betterNeighborCount[12]), .IN2(data_in[12]), .S(n411), 
        .Q(n290) );
  MUX21X1 U501 ( .IN1(betterNeighborCount[13]), .IN2(data_in[13]), .S(n411), 
        .Q(n289) );
  MUX21X1 U502 ( .IN1(betterNeighborCount[14]), .IN2(data_in[14]), .S(n411), 
        .Q(n288) );
  MUX21X1 U503 ( .IN1(betterNeighborCount[15]), .IN2(data_in[15]), .S(n411), 
        .Q(n287) );
  MUX21X1 U504 ( .IN1(bestvalue[0]), .IN2(_left[16]), .S(n412), .Q(n286) );
  MUX21X1 U505 ( .IN1(bestvalue[1]), .IN2(_left[17]), .S(n412), .Q(n285) );
  MUX21X1 U506 ( .IN1(bestvalue[2]), .IN2(_left[18]), .S(n412), .Q(n284) );
  MUX21X1 U507 ( .IN1(bestvalue[3]), .IN2(_left[19]), .S(n412), .Q(n283) );
  MUX21X1 U508 ( .IN1(bestvalue[4]), .IN2(_left[20]), .S(n412), .Q(n282) );
  MUX21X1 U509 ( .IN1(bestvalue[5]), .IN2(_left[21]), .S(n412), .Q(n281) );
  MUX21X1 U510 ( .IN1(bestvalue[6]), .IN2(_left[22]), .S(n412), .Q(n280) );
  MUX21X1 U511 ( .IN1(bestvalue[7]), .IN2(_left[23]), .S(n412), .Q(n279) );
  MUX21X1 U512 ( .IN1(bestvalue[8]), .IN2(_left[24]), .S(n412), .Q(n278) );
  MUX21X1 U513 ( .IN1(bestvalue[9]), .IN2(_left[25]), .S(n412), .Q(n277) );
  MUX21X1 U514 ( .IN1(bestvalue[10]), .IN2(_left[26]), .S(n412), .Q(n276) );
  MUX21X1 U515 ( .IN1(bestvalue[11]), .IN2(_left[27]), .S(n412), .Q(n275) );
  MUX21X1 U516 ( .IN1(bestvalue[12]), .IN2(_left[28]), .S(n412), .Q(n274) );
  MUX21X1 U517 ( .IN1(bestvalue[13]), .IN2(_left[29]), .S(n412), .Q(n273) );
  MUX21X1 U518 ( .IN1(bestvalue[14]), .IN2(_left[30]), .S(n412), .Q(n272) );
  MUX21X1 U519 ( .IN1(bestvalue[15]), .IN2(_left[31]), .S(n412), .Q(n271) );
  NOR2X0 U520 ( .IN1(n555), .IN2(n322), .QN(n270) );
  MUX21X1 U521 ( .IN1(N153), .IN2(_right[1]), .S(n412), .Q(n269) );
  MUX21X1 U522 ( .IN1(N154), .IN2(_right[2]), .S(n412), .Q(n268) );
  MUX21X1 U523 ( .IN1(_right[3]), .IN2(N155), .S(n323), .Q(n267) );
  MUX21X1 U524 ( .IN1(_right[4]), .IN2(N156), .S(n322), .Q(n266) );
  MUX21X1 U525 ( .IN1(_right[5]), .IN2(N157), .S(n323), .Q(n265) );
  MUX21X1 U526 ( .IN1(_right[6]), .IN2(N158), .S(n322), .Q(n264) );
  MUX21X1 U527 ( .IN1(_right[7]), .IN2(N159), .S(n323), .Q(n263) );
  MUX21X1 U528 ( .IN1(_right[8]), .IN2(N160), .S(n323), .Q(n262) );
  MUX21X1 U529 ( .IN1(_right[9]), .IN2(N161), .S(n323), .Q(n261) );
  MUX21X1 U530 ( .IN1(_right[10]), .IN2(N162), .S(n323), .Q(n260) );
  MUX21X1 U531 ( .IN1(_right[11]), .IN2(N163), .S(n323), .Q(n259) );
  MUX21X1 U532 ( .IN1(_right[12]), .IN2(N164), .S(n323), .Q(n258) );
  MUX21X1 U533 ( .IN1(_right[13]), .IN2(N165), .S(n323), .Q(n257) );
  MUX21X1 U534 ( .IN1(_right[14]), .IN2(N166), .S(n323), .Q(n256) );
  MUX21X1 U535 ( .IN1(_right[15]), .IN2(N167), .S(n323), .Q(n255) );
  MUX21X1 U536 ( .IN1(_right[16]), .IN2(N168), .S(n323), .Q(n254) );
  MUX21X1 U537 ( .IN1(_right[17]), .IN2(N169), .S(n323), .Q(n253) );
  MUX21X1 U538 ( .IN1(_right[18]), .IN2(N170), .S(n323), .Q(n252) );
  MUX21X1 U539 ( .IN1(_right[19]), .IN2(N171), .S(n323), .Q(n251) );
  MUX21X1 U540 ( .IN1(_right[20]), .IN2(N172), .S(n322), .Q(n250) );
  MUX21X1 U541 ( .IN1(_right[21]), .IN2(N173), .S(n322), .Q(n249) );
  MUX21X1 U542 ( .IN1(_right[22]), .IN2(N174), .S(n322), .Q(n248) );
  MUX21X1 U543 ( .IN1(_right[23]), .IN2(N175), .S(n322), .Q(n247) );
  MUX21X1 U544 ( .IN1(_right[24]), .IN2(N176), .S(n322), .Q(n246) );
  MUX21X1 U545 ( .IN1(_right[25]), .IN2(N177), .S(n322), .Q(n245) );
  MUX21X1 U546 ( .IN1(_right[26]), .IN2(N178), .S(n322), .Q(n244) );
  MUX21X1 U547 ( .IN1(_right[27]), .IN2(N179), .S(n322), .Q(n243) );
  MUX21X1 U548 ( .IN1(_right[28]), .IN2(N180), .S(n322), .Q(n242) );
  MUX21X1 U549 ( .IN1(_right[29]), .IN2(N181), .S(n322), .Q(n241) );
  MUX21X1 U550 ( .IN1(_right[30]), .IN2(N182), .S(n322), .Q(n240) );
  MUX21X1 U551 ( .IN1(_right[31]), .IN2(N183), .S(n322), .Q(n239) );
  MUX21X1 U552 ( .IN1(one), .IN2(n413), .S(n414), .Q(n238) );
  NOR2X0 U553 ( .IN1(n415), .IN2(n416), .QN(n414) );
  NOR2X0 U554 ( .IN1(n557), .IN2(n409), .QN(n237) );
  MUX21X1 U555 ( .IN1(_right3[5]), .IN2(N223), .S(n320), .Q(n232) );
  MUX21X1 U556 ( .IN1(_right3[6]), .IN2(N224), .S(n320), .Q(n231) );
  MUX21X1 U557 ( .IN1(_right3[7]), .IN2(N225), .S(n409), .Q(n230) );
  MUX21X1 U558 ( .IN1(_right3[8]), .IN2(N226), .S(n320), .Q(n229) );
  MUX21X1 U559 ( .IN1(_right3[9]), .IN2(N227), .S(n320), .Q(n228) );
  MUX21X1 U560 ( .IN1(_right3[10]), .IN2(N228), .S(n320), .Q(n227) );
  MUX21X1 U561 ( .IN1(_right3[11]), .IN2(N229), .S(n320), .Q(n226) );
  MUX21X1 U562 ( .IN1(_right3[12]), .IN2(N230), .S(n320), .Q(n225) );
  MUX21X1 U563 ( .IN1(_right3[13]), .IN2(N231), .S(n320), .Q(n224) );
  MUX21X1 U564 ( .IN1(_right3[14]), .IN2(N232), .S(n320), .Q(n223) );
  MUX21X1 U565 ( .IN1(_right3[15]), .IN2(N233), .S(n320), .Q(n222) );
  MUX21X1 U566 ( .IN1(_right3[16]), .IN2(N234), .S(n320), .Q(n221) );
  MUX21X1 U567 ( .IN1(_right3[17]), .IN2(N235), .S(n320), .Q(n220) );
  MUX21X1 U568 ( .IN1(_right3[18]), .IN2(N236), .S(n320), .Q(n219) );
  MUX21X1 U569 ( .IN1(_right3[19]), .IN2(N237), .S(n320), .Q(n218) );
  MUX21X1 U570 ( .IN1(_right3[20]), .IN2(N238), .S(n409), .Q(n217) );
  MUX21X1 U571 ( .IN1(_right3[21]), .IN2(N239), .S(n409), .Q(n216) );
  MUX21X1 U572 ( .IN1(_right3[22]), .IN2(N240), .S(n409), .Q(n215) );
  MUX21X1 U573 ( .IN1(_right3[23]), .IN2(N241), .S(n409), .Q(n214) );
  MUX21X1 U574 ( .IN1(_right3[24]), .IN2(N242), .S(n409), .Q(n213) );
  MUX21X1 U575 ( .IN1(_right3[25]), .IN2(N243), .S(n409), .Q(n212) );
  MUX21X1 U576 ( .IN1(_right3[26]), .IN2(N244), .S(n409), .Q(n211) );
  MUX21X1 U577 ( .IN1(_right3[27]), .IN2(N245), .S(n409), .Q(n210) );
  MUX21X1 U578 ( .IN1(_right3[28]), .IN2(N246), .S(n409), .Q(n209) );
  MUX21X1 U579 ( .IN1(_right3[29]), .IN2(N247), .S(n409), .Q(n208) );
  MUX21X1 U580 ( .IN1(_right3[30]), .IN2(N248), .S(n409), .Q(n207) );
  MUX21X1 U581 ( .IN1(_right3[31]), .IN2(N249), .S(n409), .Q(n206) );
  NOR3X0 U582 ( .IN1(n417), .IN2(n418), .IN3(n415), .QN(n409) );
  MUX21X1 U583 ( .IN1(two), .IN2(N250), .S(n419), .Q(n205) );
  MUX21X1 U584 ( .IN1(three), .IN2(n319), .S(n419), .Q(n204) );
  NOR2X0 U585 ( .IN1(n420), .IN2(n415), .QN(n419) );
  MUX21X1 U586 ( .IN1(epsilon_buf[0]), .IN2(data_in[0]), .S(n421), .Q(n203) );
  MUX21X1 U587 ( .IN1(epsilon_buf[1]), .IN2(data_in[1]), .S(n421), .Q(n202) );
  MUX21X1 U588 ( .IN1(epsilon_buf[2]), .IN2(data_in[2]), .S(n421), .Q(n201) );
  MUX21X1 U589 ( .IN1(epsilon_buf[3]), .IN2(data_in[3]), .S(n421), .Q(n200) );
  MUX21X1 U590 ( .IN1(epsilon_buf[4]), .IN2(data_in[4]), .S(n421), .Q(n199) );
  MUX21X1 U591 ( .IN1(epsilon_buf[5]), .IN2(data_in[5]), .S(n421), .Q(n198) );
  MUX21X1 U592 ( .IN1(epsilon_buf[6]), .IN2(data_in[6]), .S(n421), .Q(n197) );
  MUX21X1 U593 ( .IN1(epsilon_buf[7]), .IN2(data_in[7]), .S(n421), .Q(n196) );
  MUX21X1 U594 ( .IN1(epsilon_buf[8]), .IN2(data_in[8]), .S(n421), .Q(n195) );
  MUX21X1 U595 ( .IN1(epsilon_buf[9]), .IN2(data_in[9]), .S(n421), .Q(n194) );
  MUX21X1 U596 ( .IN1(epsilon_buf[10]), .IN2(data_in[10]), .S(n421), .Q(n193)
         );
  MUX21X1 U597 ( .IN1(epsilon_buf[11]), .IN2(data_in[11]), .S(n421), .Q(n192)
         );
  MUX21X1 U598 ( .IN1(epsilon_buf[12]), .IN2(data_in[12]), .S(n421), .Q(n191)
         );
  MUX21X1 U599 ( .IN1(epsilon_buf[13]), .IN2(data_in[13]), .S(n421), .Q(n190)
         );
  MUX21X1 U600 ( .IN1(epsilon_buf[14]), .IN2(data_in[14]), .S(n421), .Q(n189)
         );
  MUX21X1 U601 ( .IN1(epsilon_buf[15]), .IN2(data_in[15]), .S(n421), .Q(n188)
         );
  AO22X1 U602 ( .IN1(n423), .IN2(data_out[0]), .IN3(N120), .IN4(n424), .Q(n187) );
  AO22X1 U603 ( .IN1(n423), .IN2(data_out[1]), .IN3(N121), .IN4(n424), .Q(n186) );
  AO22X1 U604 ( .IN1(n423), .IN2(data_out[2]), .IN3(N122), .IN4(n424), .Q(n185) );
  AO22X1 U605 ( .IN1(n423), .IN2(data_out[3]), .IN3(N123), .IN4(n424), .Q(n184) );
  AO22X1 U606 ( .IN1(n423), .IN2(data_out[4]), .IN3(N124), .IN4(n424), .Q(n183) );
  AO22X1 U607 ( .IN1(n423), .IN2(data_out[5]), .IN3(N125), .IN4(n424), .Q(n182) );
  AO22X1 U608 ( .IN1(n423), .IN2(data_out[6]), .IN3(N126), .IN4(n424), .Q(n181) );
  AO22X1 U609 ( .IN1(n423), .IN2(data_out[7]), .IN3(N127), .IN4(n424), .Q(n180) );
  AO22X1 U610 ( .IN1(n423), .IN2(data_out[8]), .IN3(N128), .IN4(n424), .Q(n179) );
  AO22X1 U611 ( .IN1(n423), .IN2(data_out[9]), .IN3(N129), .IN4(n424), .Q(n178) );
  AO22X1 U612 ( .IN1(n423), .IN2(data_out[10]), .IN3(N130), .IN4(n424), .Q(
        n177) );
  AO22X1 U613 ( .IN1(n423), .IN2(data_out[11]), .IN3(N131), .IN4(n424), .Q(
        n176) );
  AO22X1 U614 ( .IN1(n423), .IN2(data_out[12]), .IN3(N132), .IN4(n424), .Q(
        n175) );
  AO22X1 U615 ( .IN1(n423), .IN2(data_out[13]), .IN3(N133), .IN4(n424), .Q(
        n174) );
  AO22X1 U616 ( .IN1(n423), .IN2(data_out[14]), .IN3(N134), .IN4(n424), .Q(
        n173) );
  AO22X1 U617 ( .IN1(n423), .IN2(data_out[15]), .IN3(N135), .IN4(n424), .Q(
        n172) );
  AO221X1 U618 ( .IN1(n592), .IN2(epsilon_step[15]), .IN3(n591), .IN4(
        epsilon_step[14]), .IN5(n427), .Q(n426) );
  OA221X1 U619 ( .IN1(epsilon_step[14]), .IN2(n591), .IN3(epsilon_step[13]), 
        .IN4(n590), .IN5(n428), .Q(n427) );
  AO221X1 U620 ( .IN1(n589), .IN2(epsilon_step[12]), .IN3(n590), .IN4(
        epsilon_step[13]), .IN5(n429), .Q(n428) );
  OA221X1 U621 ( .IN1(epsilon_step[11]), .IN2(n588), .IN3(epsilon_step[12]), 
        .IN4(n589), .IN5(n430), .Q(n429) );
  AO221X1 U622 ( .IN1(n587), .IN2(epsilon_step[10]), .IN3(n588), .IN4(
        epsilon_step[11]), .IN5(n431), .Q(n430) );
  OA221X1 U623 ( .IN1(epsilon_step[9]), .IN2(n586), .IN3(epsilon_step[10]), 
        .IN4(n587), .IN5(n432), .Q(n431) );
  AO221X1 U624 ( .IN1(n585), .IN2(epsilon_step[8]), .IN3(n586), .IN4(
        epsilon_step[9]), .IN5(n433), .Q(n432) );
  OA221X1 U625 ( .IN1(epsilon_step[7]), .IN2(n584), .IN3(epsilon_step[8]), 
        .IN4(n585), .IN5(n434), .Q(n433) );
  AO221X1 U626 ( .IN1(n583), .IN2(epsilon_step[6]), .IN3(n584), .IN4(
        epsilon_step[7]), .IN5(n435), .Q(n434) );
  OA221X1 U627 ( .IN1(epsilon_step[5]), .IN2(n582), .IN3(epsilon_step[6]), 
        .IN4(n583), .IN5(n436), .Q(n435) );
  AO221X1 U628 ( .IN1(n581), .IN2(epsilon_step[4]), .IN3(n582), .IN4(
        epsilon_step[5]), .IN5(n437), .Q(n436) );
  OA221X1 U629 ( .IN1(epsilon_step[3]), .IN2(n580), .IN3(epsilon_step[4]), 
        .IN4(n581), .IN5(n438), .Q(n437) );
  AO222X1 U630 ( .IN1(epsilon_step[2]), .IN2(n439), .IN3(n579), .IN4(n440), 
        .IN5(n580), .IN6(epsilon_step[3]), .Q(n438) );
  OR2X1 U631 ( .IN1(n439), .IN2(epsilon_step[2]), .Q(n440) );
  AO22X1 U632 ( .IN1(n578), .IN2(epsilon_step[1]), .IN3(n441), .IN4(n593), .Q(
        n439) );
  OA21X1 U633 ( .IN1(epsilon_step[1]), .IN2(n578), .IN3(epsilon_step[0]), .Q(
        n441) );
  OR2X1 U634 ( .IN1(epsilon_step[15]), .IN2(n592), .Q(n425) );
  MUX21X1 U635 ( .IN1(rng_out_4bit[0]), .IN2(n442), .S(n443), .Q(n171) );
  MUX21X1 U636 ( .IN1(rng_out_4bit[1]), .IN2(n444), .S(n443), .Q(n170) );
  MUX21X1 U637 ( .IN1(rng_out_4bit[2]), .IN2(n445), .S(n443), .Q(n169) );
  MUX21X1 U638 ( .IN1(rng_out_4bit[3]), .IN2(n446), .S(n443), .Q(n168) );
  MUX21X1 U639 ( .IN1(rng_out_4bit[4]), .IN2(n447), .S(n443), .Q(n167) );
  MUX21X1 U640 ( .IN1(rng_out_4bit[5]), .IN2(n448), .S(n443), .Q(n166) );
  MUX21X1 U641 ( .IN1(rng_out_4bit[6]), .IN2(n449), .S(n443), .Q(n165) );
  MUX21X1 U642 ( .IN1(rng_out_4bit[7]), .IN2(n450), .S(n443), .Q(n164) );
  MUX21X1 U643 ( .IN1(n451), .IN2(rng_out_4bit[8]), .S(n452), .Q(n163) );
  MUX21X1 U644 ( .IN1(n453), .IN2(rng_out_4bit[9]), .S(n452), .Q(n162) );
  MUX21X1 U645 ( .IN1(n454), .IN2(rng_out_4bit[10]), .S(n452), .Q(n161) );
  MUX21X1 U646 ( .IN1(n455), .IN2(rng_out_4bit[11]), .S(n452), .Q(n160) );
  MUX21X1 U647 ( .IN1(n456), .IN2(rng_out_4bit[12]), .S(n452), .Q(n159) );
  MUX21X1 U648 ( .IN1(n457), .IN2(rng_out_4bit[13]), .S(n452), .Q(n158) );
  MUX21X1 U649 ( .IN1(n458), .IN2(rng_out_4bit[14]), .S(n452), .Q(n157) );
  MUX21X1 U650 ( .IN1(n459), .IN2(rng_out_4bit[15]), .S(n452), .Q(n156) );
  NAND2X0 U651 ( .IN1(n410), .IN2(n460), .QN(n155) );
  NAND3X0 U652 ( .IN1(n461), .IN2(n462), .IN3(start_rngAddress), .QN(n460) );
  AO22X1 U653 ( .IN1(n461), .IN2(done_winnerPolicy), .IN3(n464), .IN4(nrst), 
        .Q(n154) );
  INVX0 U654 ( .INP(n465), .ZN(n464) );
  AO221X1 U655 ( .IN1(n466), .IN2(data_in[0]), .IN3(nexthop[0]), .IN4(n467), 
        .IN5(n468), .Q(n153) );
  AO21X1 U656 ( .IN1(besthop[0]), .IN2(n469), .IN3(n470), .Q(n468) );
  AO222X1 U657 ( .IN1(n471), .IN2(data_in[1]), .IN3(besthop[1]), .IN4(n472), 
        .IN5(nexthop[1]), .IN6(n467), .Q(n152) );
  AO221X1 U658 ( .IN1(n466), .IN2(data_in[2]), .IN3(nexthop[2]), .IN4(n467), 
        .IN5(n473), .Q(n151) );
  AO21X1 U659 ( .IN1(besthop[2]), .IN2(n469), .IN3(n470), .Q(n473) );
  AO221X1 U660 ( .IN1(n466), .IN2(data_in[3]), .IN3(nexthop[3]), .IN4(n467), 
        .IN5(n474), .Q(n150) );
  AO21X1 U661 ( .IN1(besthop[3]), .IN2(n469), .IN3(n470), .Q(n474) );
  AO222X1 U662 ( .IN1(n471), .IN2(data_in[4]), .IN3(besthop[4]), .IN4(n472), 
        .IN5(nexthop[4]), .IN6(n467), .Q(n149) );
  AO221X1 U663 ( .IN1(n466), .IN2(data_in[5]), .IN3(nexthop[5]), .IN4(n467), 
        .IN5(n475), .Q(n148) );
  AO21X1 U664 ( .IN1(besthop[5]), .IN2(n469), .IN3(n470), .Q(n475) );
  AO222X1 U665 ( .IN1(n471), .IN2(data_in[6]), .IN3(besthop[6]), .IN4(n472), 
        .IN5(nexthop[6]), .IN6(n467), .Q(n147) );
  AO222X1 U666 ( .IN1(n471), .IN2(data_in[7]), .IN3(besthop[7]), .IN4(n472), 
        .IN5(nexthop[7]), .IN6(n467), .Q(n146) );
  AO221X1 U667 ( .IN1(n466), .IN2(data_in[8]), .IN3(nexthop[8]), .IN4(n467), 
        .IN5(n476), .Q(n145) );
  AO21X1 U668 ( .IN1(besthop[8]), .IN2(n469), .IN3(n470), .Q(n476) );
  OA21X1 U669 ( .IN1(n415), .IN2(n477), .IN3(n478), .Q(n470) );
  INVX0 U670 ( .INP(n479), .ZN(n466) );
  AO222X1 U671 ( .IN1(n471), .IN2(data_in[9]), .IN3(besthop[9]), .IN4(n472), 
        .IN5(nexthop[9]), .IN6(n467), .Q(n144) );
  AO222X1 U672 ( .IN1(n471), .IN2(data_in[10]), .IN3(besthop[10]), .IN4(n472), 
        .IN5(nexthop[10]), .IN6(n467), .Q(n143) );
  AO222X1 U673 ( .IN1(n471), .IN2(data_in[11]), .IN3(besthop[11]), .IN4(n472), 
        .IN5(nexthop[11]), .IN6(n467), .Q(n142) );
  AO222X1 U674 ( .IN1(n471), .IN2(data_in[12]), .IN3(besthop[12]), .IN4(n472), 
        .IN5(nexthop[12]), .IN6(n467), .Q(n141) );
  AO222X1 U675 ( .IN1(n471), .IN2(data_in[13]), .IN3(besthop[13]), .IN4(n472), 
        .IN5(nexthop[13]), .IN6(n467), .Q(n140) );
  AO222X1 U676 ( .IN1(n471), .IN2(data_in[14]), .IN3(besthop[14]), .IN4(n472), 
        .IN5(nexthop[14]), .IN6(n467), .Q(n139) );
  AO222X1 U677 ( .IN1(n471), .IN2(data_in[15]), .IN3(besthop[15]), .IN4(n472), 
        .IN5(nexthop[15]), .IN6(n467), .Q(n138) );
  NOR2X0 U678 ( .IN1(n480), .IN2(n467), .QN(n469) );
  NAND4X0 U679 ( .IN1(n461), .IN2(n481), .IN3(n482), .IN4(n479), .QN(n478) );
  NAND4X0 U680 ( .IN1(n483), .IN2(three), .IN3(two), .IN4(one), .QN(n482) );
  NAND2X0 U681 ( .IN1(N184), .IN2(n484), .QN(n481) );
  MUX21X1 U682 ( .IN1(n485), .IN2(en_rng), .S(n486), .Q(n137) );
  AND3X1 U683 ( .IN1(n487), .IN2(n488), .IN3(n461), .Q(n486) );
  OA21X1 U684 ( .IN1(n489), .IN2(n490), .IN3(nrst), .Q(n461) );
  OA21X1 U685 ( .IN1(n491), .IN2(n492), .IN3(nrst), .Q(n485) );
  NOR2X0 U686 ( .IN1(n556), .IN2(n493), .QN(n136) );
  AO22X1 U687 ( .IN1(n494), .IN2(address[1]), .IN3(N107), .IN4(n495), .Q(n135)
         );
  NAND2X0 U688 ( .IN1(n496), .IN2(n497), .QN(n134) );
  MUX21X1 U689 ( .IN1(n554), .IN2(n498), .S(n493), .Q(n496) );
  NOR2X0 U690 ( .IN1(rng_address[1]), .IN2(n499), .QN(n498) );
  AO221X1 U691 ( .IN1(N109), .IN2(n495), .IN3(n494), .IN4(address[3]), .IN5(
        n500), .Q(n133) );
  AO22X1 U692 ( .IN1(n494), .IN2(address[4]), .IN3(N110), .IN4(n495), .Q(n132)
         );
  AO22X1 U693 ( .IN1(n494), .IN2(address[5]), .IN3(N111), .IN4(n495), .Q(n131)
         );
  AO22X1 U694 ( .IN1(n494), .IN2(address[6]), .IN3(N112), .IN4(n495), .Q(n130)
         );
  AO221X1 U695 ( .IN1(N113), .IN2(n495), .IN3(n494), .IN4(address[7]), .IN5(
        n500), .Q(n129) );
  AO22X1 U696 ( .IN1(n494), .IN2(address[8]), .IN3(N114), .IN4(n495), .Q(n128)
         );
  AO221X1 U697 ( .IN1(N115), .IN2(n495), .IN3(n494), .IN4(address[9]), .IN5(
        n500), .Q(n127) );
  AO221X1 U698 ( .IN1(N116), .IN2(n495), .IN3(n494), .IN4(address[10]), .IN5(
        n500), .Q(n126) );
  INVX0 U699 ( .INP(n497), .ZN(n500) );
  NAND2X0 U700 ( .IN1(n492), .IN2(n493), .QN(n497) );
  NAND2X0 U701 ( .IN1(n502), .IN2(n503), .QN(n493) );
  NAND3X0 U702 ( .IN1(nrst), .IN2(n504), .IN3(n492), .QN(n503) );
  NAND2X0 U703 ( .IN1(n423), .IN2(n505), .QN(n125) );
  NAND3X0 U704 ( .IN1(nrst), .IN2(n506), .IN3(wr_en), .QN(n505) );
  NAND4X0 U705 ( .IN1(n507), .IN2(n508), .IN3(n509), .IN4(n510), .QN(N316) );
  AND4X1 U706 ( .IN1(n420), .IN2(n511), .IN3(n512), .IN4(n506), .Q(n510) );
  OA22X1 U707 ( .IN1(n418), .IN2(n417), .IN3(n416), .IN4(n413), .Q(n509) );
  INVX0 U708 ( .INP(N184), .ZN(n413) );
  INVX0 U709 ( .INP(n513), .ZN(n418) );
  INVX0 U710 ( .INP(n499), .ZN(n508) );
  NAND2X0 U711 ( .IN1(n488), .IN2(n479), .QN(n499) );
  NAND3X0 U712 ( .IN1(n514), .IN2(n412), .IN3(n502), .QN(N315) );
  AND3X1 U713 ( .IN1(n423), .IN2(n443), .IN3(n515), .Q(n502) );
  OR2X1 U714 ( .IN1(n462), .IN2(n415), .Q(n515) );
  NAND2X0 U715 ( .IN1(done_rng_address), .IN2(n516), .QN(n462) );
  INVX0 U716 ( .INP(n501), .ZN(n516) );
  NAND2X0 U717 ( .IN1(n491), .IN2(n517), .QN(n479) );
  NOR3X0 U718 ( .IN1(n415), .IN2(n519), .IN3(n520), .QN(n422) );
  AO21X1 U719 ( .IN1(n521), .IN2(n512), .IN3(n415), .Q(n514) );
  NAND4X0 U720 ( .IN1(n480), .IN2(n522), .IN3(n523), .IN4(n487), .QN(N314) );
  AND3X1 U721 ( .IN1(n512), .IN2(n463), .IN3(n524), .Q(n487) );
  NAND2X0 U722 ( .IN1(n492), .IN2(n504), .QN(n524) );
  INVX0 U723 ( .INP(n525), .ZN(n492) );
  NAND3X0 U724 ( .IN1(n491), .IN2(n526), .IN3(start_winnerPolicy), .QN(n512)
         );
  OA21X1 U725 ( .IN1(n417), .IN2(n520), .IN3(n506), .Q(n523) );
  NAND2X0 U726 ( .IN1(n527), .IN2(n491), .QN(n506) );
  INVX0 U727 ( .INP(n528), .ZN(n520) );
  INVX0 U728 ( .INP(n517), .ZN(n417) );
  NOR2X0 U729 ( .IN1(n484), .IN2(n483), .QN(n480) );
  INVX0 U730 ( .INP(n511), .ZN(n483) );
  NAND2X0 U731 ( .IN1(n529), .IN2(n528), .QN(n511) );
  INVX0 U732 ( .INP(n416), .ZN(n484) );
  NAND4X0 U733 ( .IN1(n521), .IN2(n530), .IN3(n522), .IN4(n531), .QN(N313) );
  AND3X1 U734 ( .IN1(n488), .IN2(n463), .IN3(n420), .Q(n531) );
  NAND2X0 U735 ( .IN1(n529), .IN2(n491), .QN(n420) );
  NOR2X0 U736 ( .IN1(state_out[1]), .IN2(state_out[0]), .QN(n491) );
  NAND2X0 U737 ( .IN1(n526), .IN2(n532), .QN(n463) );
  NAND2X0 U738 ( .IN1(n527), .IN2(n532), .QN(n488) );
  OA21X1 U739 ( .IN1(n501), .IN2(done_rng_address), .IN3(n507), .Q(n522) );
  AND4X1 U740 ( .IN1(nrst), .IN2(n533), .IN3(n534), .IN4(n465), .Q(n507) );
  NAND2X0 U741 ( .IN1(n529), .IN2(n532), .QN(n465) );
  NAND2X0 U742 ( .IN1(n527), .IN2(n513), .QN(n534) );
  NAND2X0 U743 ( .IN1(n477), .IN2(n489), .QN(n533) );
  INVX0 U744 ( .INP(en), .ZN(n489) );
  INVX0 U745 ( .INP(n490), .ZN(n477) );
  NAND2X0 U746 ( .IN1(n529), .IN2(n513), .QN(n490) );
  NOR2X0 U747 ( .IN1(n518), .IN2(state_out[2]), .QN(n529) );
  NAND2X0 U748 ( .IN1(n526), .IN2(n513), .QN(n501) );
  NOR2X0 U749 ( .IN1(n535), .IN2(n536), .QN(n513) );
  NAND2X0 U750 ( .IN1(n527), .IN2(state_out[0]), .QN(n530) );
  NOR2X0 U751 ( .IN1(n518), .IN2(n519), .QN(n527) );
  OA22X1 U752 ( .IN1(n504), .IN2(n525), .IN3(n416), .IN4(N184), .Q(n521) );
  NAND2X0 U753 ( .IN1(n532), .IN2(n517), .QN(n416) );
  NOR2X0 U754 ( .IN1(n519), .IN2(state_out[3]), .QN(n517) );
  NOR2X0 U755 ( .IN1(n535), .IN2(state_out[0]), .QN(n532) );
  NAND2X0 U756 ( .IN1(n528), .IN2(n526), .QN(n525) );
  NOR2X0 U757 ( .IN1(state_out[3]), .IN2(state_out[2]), .QN(n526) );
  NOR2X0 U758 ( .IN1(n536), .IN2(state_out[1]), .QN(n528) );
  AO21X1 U759 ( .IN1(n576), .IN2(epsilon_buf[15]), .IN3(n537), .Q(n504) );
  OA22X1 U760 ( .IN1(n576), .IN2(epsilon_buf[15]), .IN3(n538), .IN4(n539), .Q(
        n537) );
  NOR2X0 U761 ( .IN1(n591), .IN2(n458), .QN(n539) );
  OA221X1 U762 ( .IN1(n575), .IN2(epsilon_buf[14]), .IN3(n574), .IN4(
        epsilon_buf[13]), .IN5(n540), .Q(n538) );
  AO221X1 U763 ( .IN1(n574), .IN2(epsilon_buf[13]), .IN3(n573), .IN4(
        epsilon_buf[12]), .IN5(n541), .Q(n540) );
  OA221X1 U764 ( .IN1(n572), .IN2(epsilon_buf[11]), .IN3(n573), .IN4(
        epsilon_buf[12]), .IN5(n542), .Q(n541) );
  AO221X1 U765 ( .IN1(n572), .IN2(epsilon_buf[11]), .IN3(n571), .IN4(
        epsilon_buf[10]), .IN5(n543), .Q(n542) );
  OA221X1 U766 ( .IN1(n570), .IN2(epsilon_buf[9]), .IN3(n571), .IN4(
        epsilon_buf[10]), .IN5(n544), .Q(n543) );
  AO221X1 U767 ( .IN1(n570), .IN2(epsilon_buf[9]), .IN3(n569), .IN4(
        epsilon_buf[8]), .IN5(n545), .Q(n544) );
  OA221X1 U768 ( .IN1(n568), .IN2(epsilon_buf[7]), .IN3(n569), .IN4(
        epsilon_buf[8]), .IN5(n546), .Q(n545) );
  AO221X1 U769 ( .IN1(n568), .IN2(epsilon_buf[7]), .IN3(n567), .IN4(
        epsilon_buf[6]), .IN5(n547), .Q(n546) );
  OA221X1 U770 ( .IN1(n566), .IN2(epsilon_buf[5]), .IN3(n567), .IN4(
        epsilon_buf[6]), .IN5(n548), .Q(n547) );
  AO221X1 U771 ( .IN1(n566), .IN2(epsilon_buf[5]), .IN3(n565), .IN4(
        epsilon_buf[4]), .IN5(n549), .Q(n548) );
  OA221X1 U772 ( .IN1(n564), .IN2(epsilon_buf[3]), .IN3(n565), .IN4(
        epsilon_buf[4]), .IN5(n550), .Q(n549) );
  AO222X1 U773 ( .IN1(n551), .IN2(epsilon_buf[2]), .IN3(n563), .IN4(n552), 
        .IN5(n564), .IN6(epsilon_buf[3]), .Q(n550) );
  OR2X1 U774 ( .IN1(n551), .IN2(epsilon_buf[2]), .Q(n552) );
  AO22X1 U775 ( .IN1(n562), .IN2(epsilon_buf[1]), .IN3(n553), .IN4(n577), .Q(
        n551) );
  OA21X1 U776 ( .IN1(n562), .IN2(epsilon_buf[1]), .IN3(epsilon_buf[0]), .Q(
        n553) );
endmodule

