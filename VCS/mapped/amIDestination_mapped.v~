
module amIDestination ( clock, nrst, en, start, MY_NODE_ID, destinationID, 
        iamDestination, done );
  input [15:0] MY_NODE_ID;
  input [15:0] destinationID;
  input clock, nrst, en, start;
  output iamDestination, done;
  wire   N23, N38, N39, n6, n7, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53;
  wire   [2:0] state;

  DFFX1 \state_reg[0]  ( .D(N38), .CLK(clock), .Q(state[0]), .QN(n7) );
  DFFX1 \state_reg[1]  ( .D(N39), .CLK(clock), .Q(state[1]), .QN(n6) );
  DFFX1 done_buf_reg ( .D(n24), .CLK(clock), .Q(done) );
  DFFX1 iamDestination_buf_reg ( .D(n23), .CLK(clock), .Q(iamDestination), 
        .QN(n25) );
  NAND4X0 U20 ( .IN1(N23), .IN2(nrst), .IN3(n12), .IN4(n6), .QN(n11) );
  AO22X1 U22 ( .IN1(done), .IN2(n15), .IN3(n16), .IN4(n17), .Q(n24) );
  AND2X1 U23 ( .IN1(nrst), .IN2(n18), .Q(n15) );
  NAND4X0 U25 ( .IN1(nrst), .IN2(n21), .IN3(n14), .IN4(n53), .QN(N39) );
  NAND4X0 U26 ( .IN1(nrst), .IN2(n22), .IN3(n14), .IN4(n53), .QN(N38) );
  NAND2X1 U27 ( .IN1(n10), .IN2(n11), .QN(n23) );
  INVX0 U28 ( .INP(n17), .ZN(n53) );
  NAND2X1 U29 ( .IN1(state[0]), .IN2(n6), .QN(n21) );
  NAND2X1 U30 ( .IN1(start), .IN2(n7), .QN(n22) );
  NAND2X1 U31 ( .IN1(state[1]), .IN2(n52), .QN(n14) );
  OR2X1 U32 ( .IN1(n25), .IN2(n12), .Q(n10) );
  INVX0 U33 ( .INP(en), .ZN(n52) );
  INVX0 U34 ( .INP(destinationID[1]), .ZN(n49) );
  NAND2X1 U35 ( .IN1(nrst), .IN2(n13), .QN(n12) );
  NAND2X1 U36 ( .IN1(n14), .IN2(state[0]), .QN(n13) );
  NOR2X0 U37 ( .IN1(n15), .IN2(n51), .QN(n16) );
  INVX0 U38 ( .INP(nrst), .ZN(n51) );
  NAND2X1 U39 ( .IN1(n19), .IN2(state[1]), .QN(n18) );
  NAND2X1 U40 ( .IN1(state[0]), .IN2(n52), .QN(n19) );
  INVX0 U41 ( .INP(destinationID[0]), .ZN(n48) );
  INVX0 U42 ( .INP(MY_NODE_ID[1]), .ZN(n50) );
  NOR2X0 U43 ( .IN1(n6), .IN2(state[0]), .QN(n17) );
  XOR2X1 U44 ( .IN1(destinationID[15]), .IN2(MY_NODE_ID[15]), .Q(n31) );
  XOR2X1 U45 ( .IN1(destinationID[2]), .IN2(MY_NODE_ID[2]), .Q(n30) );
  NOR2X0 U46 ( .IN1(n48), .IN2(MY_NODE_ID[0]), .QN(n26) );
  OA22X1 U47 ( .IN1(destinationID[1]), .IN2(n26), .IN3(n26), .IN4(n50), .Q(n29) );
  AND2X1 U48 ( .IN1(MY_NODE_ID[0]), .IN2(n48), .Q(n27) );
  OA22X1 U49 ( .IN1(n27), .IN2(n49), .IN3(MY_NODE_ID[1]), .IN4(n27), .Q(n28)
         );
  OR4X1 U50 ( .IN1(n31), .IN2(n30), .IN3(n29), .IN4(n28), .Q(n47) );
  XNOR2X1 U51 ( .IN1(destinationID[6]), .IN2(MY_NODE_ID[6]), .Q(n35) );
  XNOR2X1 U52 ( .IN1(destinationID[5]), .IN2(MY_NODE_ID[5]), .Q(n34) );
  XNOR2X1 U53 ( .IN1(destinationID[4]), .IN2(MY_NODE_ID[4]), .Q(n33) );
  XNOR2X1 U54 ( .IN1(destinationID[3]), .IN2(MY_NODE_ID[3]), .Q(n32) );
  NAND4X0 U55 ( .IN1(n35), .IN2(n34), .IN3(n33), .IN4(n32), .QN(n46) );
  XNOR2X1 U56 ( .IN1(destinationID[10]), .IN2(MY_NODE_ID[10]), .Q(n39) );
  XNOR2X1 U57 ( .IN1(destinationID[9]), .IN2(MY_NODE_ID[9]), .Q(n38) );
  XNOR2X1 U58 ( .IN1(destinationID[8]), .IN2(MY_NODE_ID[8]), .Q(n37) );
  XNOR2X1 U59 ( .IN1(destinationID[7]), .IN2(MY_NODE_ID[7]), .Q(n36) );
  NAND4X0 U60 ( .IN1(n39), .IN2(n38), .IN3(n37), .IN4(n36), .QN(n45) );
  XNOR2X1 U61 ( .IN1(destinationID[14]), .IN2(MY_NODE_ID[14]), .Q(n43) );
  XNOR2X1 U62 ( .IN1(destinationID[13]), .IN2(MY_NODE_ID[13]), .Q(n42) );
  XNOR2X1 U63 ( .IN1(destinationID[12]), .IN2(MY_NODE_ID[12]), .Q(n41) );
  XNOR2X1 U64 ( .IN1(destinationID[11]), .IN2(MY_NODE_ID[11]), .Q(n40) );
  NAND4X0 U65 ( .IN1(n43), .IN2(n42), .IN3(n41), .IN4(n40), .QN(n44) );
  NOR4X0 U66 ( .IN1(n47), .IN2(n46), .IN3(n45), .IN4(n44), .QN(N23) );
endmodule

