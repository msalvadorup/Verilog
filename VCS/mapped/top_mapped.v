
module mux_11bit ( select, out, in0, in1, in2, in3, in4, in5, in6, in7 );
  input [2:0] select;
  output [10:0] out;
  input [10:0] in0;
  input [10:0] in1;
  input [10:0] in2;
  input [10:0] in3;
  input [10:0] in4;
  input [10:0] in5;
  input [10:0] in6;
  input [10:0] in7;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n1, n2;

  OR2X1 U3 ( .IN1(n3), .IN2(n4), .Q(out[9]) );
  AO221X1 U4 ( .IN1(in3[9]), .IN2(n5), .IN3(in2[9]), .IN4(n6), .IN5(n7), .Q(n4) );
  AO22X1 U5 ( .IN1(in0[9]), .IN2(n8), .IN3(in1[9]), .IN4(n9), .Q(n7) );
  AO221X1 U6 ( .IN1(in5[9]), .IN2(n10), .IN3(in4[9]), .IN4(n11), .IN5(n12), 
        .Q(n3) );
  AO22X1 U7 ( .IN1(in6[9]), .IN2(n13), .IN3(in7[9]), .IN4(n14), .Q(n12) );
  OR2X1 U8 ( .IN1(n15), .IN2(n16), .Q(out[8]) );
  AO221X1 U9 ( .IN1(in3[8]), .IN2(n5), .IN3(in2[8]), .IN4(n6), .IN5(n17), .Q(
        n16) );
  AO22X1 U10 ( .IN1(in0[8]), .IN2(n8), .IN3(in1[8]), .IN4(n9), .Q(n17) );
  AO221X1 U11 ( .IN1(in5[8]), .IN2(n10), .IN3(in4[8]), .IN4(n11), .IN5(n18), 
        .Q(n15) );
  AO22X1 U12 ( .IN1(in6[8]), .IN2(n13), .IN3(in7[8]), .IN4(n14), .Q(n18) );
  OR2X1 U13 ( .IN1(n19), .IN2(n20), .Q(out[7]) );
  AO221X1 U14 ( .IN1(in3[7]), .IN2(n5), .IN3(in2[7]), .IN4(n6), .IN5(n21), .Q(
        n20) );
  AO22X1 U15 ( .IN1(in0[7]), .IN2(n8), .IN3(in1[7]), .IN4(n9), .Q(n21) );
  AO221X1 U16 ( .IN1(in5[7]), .IN2(n10), .IN3(in4[7]), .IN4(n11), .IN5(n22), 
        .Q(n19) );
  AO22X1 U17 ( .IN1(in6[7]), .IN2(n13), .IN3(in7[7]), .IN4(n14), .Q(n22) );
  OR2X1 U18 ( .IN1(n23), .IN2(n24), .Q(out[6]) );
  AO221X1 U19 ( .IN1(in3[6]), .IN2(n5), .IN3(in2[6]), .IN4(n6), .IN5(n25), .Q(
        n24) );
  AO22X1 U20 ( .IN1(in0[6]), .IN2(n8), .IN3(in1[6]), .IN4(n9), .Q(n25) );
  AO221X1 U21 ( .IN1(in5[6]), .IN2(n10), .IN3(in4[6]), .IN4(n11), .IN5(n26), 
        .Q(n23) );
  AO22X1 U22 ( .IN1(in6[6]), .IN2(n13), .IN3(in7[6]), .IN4(n14), .Q(n26) );
  OR2X1 U23 ( .IN1(n27), .IN2(n28), .Q(out[5]) );
  AO221X1 U24 ( .IN1(in3[5]), .IN2(n5), .IN3(in2[5]), .IN4(n6), .IN5(n29), .Q(
        n28) );
  AO22X1 U25 ( .IN1(in0[5]), .IN2(n8), .IN3(in1[5]), .IN4(n9), .Q(n29) );
  AO221X1 U26 ( .IN1(in5[5]), .IN2(n10), .IN3(in4[5]), .IN4(n11), .IN5(n30), 
        .Q(n27) );
  AO22X1 U27 ( .IN1(in6[5]), .IN2(n13), .IN3(in7[5]), .IN4(n14), .Q(n30) );
  OR2X1 U28 ( .IN1(n31), .IN2(n32), .Q(out[4]) );
  AO221X1 U29 ( .IN1(in3[4]), .IN2(n5), .IN3(in2[4]), .IN4(n6), .IN5(n33), .Q(
        n32) );
  AO22X1 U30 ( .IN1(in0[4]), .IN2(n8), .IN3(in1[4]), .IN4(n9), .Q(n33) );
  AO221X1 U31 ( .IN1(in5[4]), .IN2(n10), .IN3(in4[4]), .IN4(n11), .IN5(n34), 
        .Q(n31) );
  AO22X1 U32 ( .IN1(in6[4]), .IN2(n13), .IN3(in7[4]), .IN4(n14), .Q(n34) );
  OR2X1 U33 ( .IN1(n35), .IN2(n36), .Q(out[3]) );
  AO221X1 U34 ( .IN1(in3[3]), .IN2(n5), .IN3(in2[3]), .IN4(n6), .IN5(n37), .Q(
        n36) );
  AO22X1 U35 ( .IN1(in0[3]), .IN2(n8), .IN3(in1[3]), .IN4(n9), .Q(n37) );
  AO221X1 U36 ( .IN1(in5[3]), .IN2(n10), .IN3(in4[3]), .IN4(n11), .IN5(n38), 
        .Q(n35) );
  AO22X1 U37 ( .IN1(in6[3]), .IN2(n13), .IN3(in7[3]), .IN4(n14), .Q(n38) );
  OR2X1 U38 ( .IN1(n39), .IN2(n40), .Q(out[2]) );
  AO221X1 U39 ( .IN1(in3[2]), .IN2(n5), .IN3(in2[2]), .IN4(n6), .IN5(n41), .Q(
        n40) );
  AO22X1 U40 ( .IN1(in0[2]), .IN2(n8), .IN3(in1[2]), .IN4(n9), .Q(n41) );
  AO221X1 U41 ( .IN1(in5[2]), .IN2(n10), .IN3(in4[2]), .IN4(n11), .IN5(n42), 
        .Q(n39) );
  AO22X1 U42 ( .IN1(in6[2]), .IN2(n13), .IN3(in7[2]), .IN4(n14), .Q(n42) );
  OR2X1 U43 ( .IN1(n43), .IN2(n44), .Q(out[1]) );
  AO221X1 U44 ( .IN1(in3[1]), .IN2(n5), .IN3(in2[1]), .IN4(n6), .IN5(n45), .Q(
        n44) );
  AO22X1 U45 ( .IN1(in0[1]), .IN2(n8), .IN3(in1[1]), .IN4(n9), .Q(n45) );
  AO221X1 U46 ( .IN1(in5[1]), .IN2(n10), .IN3(in4[1]), .IN4(n11), .IN5(n46), 
        .Q(n43) );
  AO22X1 U47 ( .IN1(in6[1]), .IN2(n13), .IN3(in7[1]), .IN4(n14), .Q(n46) );
  OR2X1 U48 ( .IN1(n47), .IN2(n48), .Q(out[10]) );
  AO221X1 U49 ( .IN1(in3[10]), .IN2(n5), .IN3(in2[10]), .IN4(n6), .IN5(n49), 
        .Q(n48) );
  AO22X1 U50 ( .IN1(in0[10]), .IN2(n8), .IN3(in1[10]), .IN4(n9), .Q(n49) );
  AO221X1 U51 ( .IN1(in5[10]), .IN2(n10), .IN3(in4[10]), .IN4(n11), .IN5(n50), 
        .Q(n47) );
  AO22X1 U52 ( .IN1(in6[10]), .IN2(n13), .IN3(in7[10]), .IN4(n14), .Q(n50) );
  OR2X1 U53 ( .IN1(n51), .IN2(n52), .Q(out[0]) );
  AO221X1 U54 ( .IN1(in3[0]), .IN2(n5), .IN3(in2[0]), .IN4(n6), .IN5(n53), .Q(
        n52) );
  AO22X1 U55 ( .IN1(in0[0]), .IN2(n8), .IN3(in1[0]), .IN4(n9), .Q(n53) );
  NOR3X0 U56 ( .IN1(select[1]), .IN2(select[2]), .IN3(n2), .QN(n9) );
  NOR3X0 U57 ( .IN1(select[1]), .IN2(select[2]), .IN3(select[0]), .QN(n8) );
  NOR3X0 U59 ( .IN1(n2), .IN2(select[2]), .IN3(n1), .QN(n5) );
  AO221X1 U60 ( .IN1(in5[0]), .IN2(n10), .IN3(in4[0]), .IN4(n11), .IN5(n54), 
        .Q(n51) );
  AO22X1 U61 ( .IN1(in6[0]), .IN2(n13), .IN3(in7[0]), .IN4(n14), .Q(n54) );
  AND3X1 U62 ( .IN1(select[1]), .IN2(select[0]), .IN3(select[2]), .Q(n14) );
  AND3X1 U63 ( .IN1(select[1]), .IN2(n2), .IN3(select[2]), .Q(n13) );
  AND3X1 U64 ( .IN1(n2), .IN2(n1), .IN3(select[2]), .Q(n11) );
  AND3X1 U65 ( .IN1(select[0]), .IN2(n1), .IN3(select[2]), .Q(n10) );
  NOR3X0 U1 ( .IN1(select[0]), .IN2(select[2]), .IN3(n1), .QN(n6) );
  INVX0 U2 ( .INP(select[0]), .ZN(n2) );
  INVX0 U58 ( .INP(select[1]), .ZN(n1) );
endmodule


module mux_16bit ( select, out, in0, in1, in2, in3, in4, in5, in6, in7 );
  input [2:0] select;
  output [15:0] out;
  input [15:0] in0;
  input [15:0] in1;
  input [15:0] in2;
  input [15:0] in3;
  input [15:0] in4;
  input [15:0] in5;
  input [15:0] in6;
  input [15:0] in7;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n1, n2;

  OR2X1 U3 ( .IN1(n3), .IN2(n4), .Q(out[9]) );
  AO221X1 U4 ( .IN1(in3[9]), .IN2(n5), .IN3(in2[9]), .IN4(n6), .IN5(n7), .Q(n4) );
  AO22X1 U5 ( .IN1(in0[9]), .IN2(n8), .IN3(in1[9]), .IN4(n9), .Q(n7) );
  AO221X1 U6 ( .IN1(in5[9]), .IN2(n10), .IN3(in4[9]), .IN4(n11), .IN5(n12), 
        .Q(n3) );
  AO22X1 U7 ( .IN1(in6[9]), .IN2(n13), .IN3(in7[9]), .IN4(n14), .Q(n12) );
  OR2X1 U8 ( .IN1(n15), .IN2(n16), .Q(out[8]) );
  AO221X1 U9 ( .IN1(in3[8]), .IN2(n5), .IN3(in2[8]), .IN4(n6), .IN5(n17), .Q(
        n16) );
  AO22X1 U10 ( .IN1(in0[8]), .IN2(n8), .IN3(in1[8]), .IN4(n9), .Q(n17) );
  AO221X1 U11 ( .IN1(in5[8]), .IN2(n10), .IN3(in4[8]), .IN4(n11), .IN5(n18), 
        .Q(n15) );
  AO22X1 U12 ( .IN1(in6[8]), .IN2(n13), .IN3(in7[8]), .IN4(n14), .Q(n18) );
  OR2X1 U13 ( .IN1(n19), .IN2(n20), .Q(out[7]) );
  AO221X1 U14 ( .IN1(in3[7]), .IN2(n5), .IN3(in2[7]), .IN4(n6), .IN5(n21), .Q(
        n20) );
  AO22X1 U15 ( .IN1(in0[7]), .IN2(n8), .IN3(in1[7]), .IN4(n9), .Q(n21) );
  AO221X1 U16 ( .IN1(in5[7]), .IN2(n10), .IN3(in4[7]), .IN4(n11), .IN5(n22), 
        .Q(n19) );
  AO22X1 U17 ( .IN1(in6[7]), .IN2(n13), .IN3(in7[7]), .IN4(n14), .Q(n22) );
  OR2X1 U18 ( .IN1(n23), .IN2(n24), .Q(out[6]) );
  AO221X1 U19 ( .IN1(in3[6]), .IN2(n5), .IN3(in2[6]), .IN4(n6), .IN5(n25), .Q(
        n24) );
  AO22X1 U20 ( .IN1(in0[6]), .IN2(n8), .IN3(in1[6]), .IN4(n9), .Q(n25) );
  AO221X1 U21 ( .IN1(in5[6]), .IN2(n10), .IN3(in4[6]), .IN4(n11), .IN5(n26), 
        .Q(n23) );
  AO22X1 U22 ( .IN1(in6[6]), .IN2(n13), .IN3(in7[6]), .IN4(n14), .Q(n26) );
  OR2X1 U23 ( .IN1(n27), .IN2(n28), .Q(out[5]) );
  AO221X1 U24 ( .IN1(in3[5]), .IN2(n5), .IN3(in2[5]), .IN4(n6), .IN5(n29), .Q(
        n28) );
  AO22X1 U25 ( .IN1(in0[5]), .IN2(n8), .IN3(in1[5]), .IN4(n9), .Q(n29) );
  AO221X1 U26 ( .IN1(in5[5]), .IN2(n10), .IN3(in4[5]), .IN4(n11), .IN5(n30), 
        .Q(n27) );
  AO22X1 U27 ( .IN1(in6[5]), .IN2(n13), .IN3(in7[5]), .IN4(n14), .Q(n30) );
  OR2X1 U28 ( .IN1(n31), .IN2(n32), .Q(out[4]) );
  AO221X1 U29 ( .IN1(in3[4]), .IN2(n5), .IN3(in2[4]), .IN4(n6), .IN5(n33), .Q(
        n32) );
  AO22X1 U30 ( .IN1(in0[4]), .IN2(n8), .IN3(in1[4]), .IN4(n9), .Q(n33) );
  AO221X1 U31 ( .IN1(in5[4]), .IN2(n10), .IN3(in4[4]), .IN4(n11), .IN5(n34), 
        .Q(n31) );
  AO22X1 U32 ( .IN1(in6[4]), .IN2(n13), .IN3(in7[4]), .IN4(n14), .Q(n34) );
  OR2X1 U33 ( .IN1(n35), .IN2(n36), .Q(out[3]) );
  AO221X1 U34 ( .IN1(in3[3]), .IN2(n5), .IN3(in2[3]), .IN4(n6), .IN5(n37), .Q(
        n36) );
  AO22X1 U35 ( .IN1(in0[3]), .IN2(n8), .IN3(in1[3]), .IN4(n9), .Q(n37) );
  AO221X1 U36 ( .IN1(in5[3]), .IN2(n10), .IN3(in4[3]), .IN4(n11), .IN5(n38), 
        .Q(n35) );
  AO22X1 U37 ( .IN1(in6[3]), .IN2(n13), .IN3(in7[3]), .IN4(n14), .Q(n38) );
  OR2X1 U38 ( .IN1(n39), .IN2(n40), .Q(out[2]) );
  AO221X1 U39 ( .IN1(in3[2]), .IN2(n5), .IN3(in2[2]), .IN4(n6), .IN5(n41), .Q(
        n40) );
  AO22X1 U40 ( .IN1(in0[2]), .IN2(n8), .IN3(in1[2]), .IN4(n9), .Q(n41) );
  AO221X1 U41 ( .IN1(in5[2]), .IN2(n10), .IN3(in4[2]), .IN4(n11), .IN5(n42), 
        .Q(n39) );
  AO22X1 U42 ( .IN1(in6[2]), .IN2(n13), .IN3(in7[2]), .IN4(n14), .Q(n42) );
  OR2X1 U43 ( .IN1(n43), .IN2(n44), .Q(out[1]) );
  AO221X1 U44 ( .IN1(in3[1]), .IN2(n5), .IN3(in2[1]), .IN4(n6), .IN5(n45), .Q(
        n44) );
  AO22X1 U45 ( .IN1(in0[1]), .IN2(n8), .IN3(in1[1]), .IN4(n9), .Q(n45) );
  AO221X1 U46 ( .IN1(in5[1]), .IN2(n10), .IN3(in4[1]), .IN4(n11), .IN5(n46), 
        .Q(n43) );
  AO22X1 U47 ( .IN1(in6[1]), .IN2(n13), .IN3(in7[1]), .IN4(n14), .Q(n46) );
  OR2X1 U48 ( .IN1(n47), .IN2(n48), .Q(out[15]) );
  AO221X1 U49 ( .IN1(in3[15]), .IN2(n5), .IN3(in2[15]), .IN4(n6), .IN5(n49), 
        .Q(n48) );
  AO22X1 U50 ( .IN1(in0[15]), .IN2(n8), .IN3(in1[15]), .IN4(n9), .Q(n49) );
  AO221X1 U51 ( .IN1(in5[15]), .IN2(n10), .IN3(in4[15]), .IN4(n11), .IN5(n50), 
        .Q(n47) );
  AO22X1 U52 ( .IN1(in6[15]), .IN2(n13), .IN3(in7[15]), .IN4(n14), .Q(n50) );
  OR2X1 U53 ( .IN1(n51), .IN2(n52), .Q(out[14]) );
  AO221X1 U54 ( .IN1(in3[14]), .IN2(n5), .IN3(in2[14]), .IN4(n6), .IN5(n53), 
        .Q(n52) );
  AO22X1 U55 ( .IN1(in0[14]), .IN2(n8), .IN3(in1[14]), .IN4(n9), .Q(n53) );
  AO221X1 U56 ( .IN1(in5[14]), .IN2(n10), .IN3(in4[14]), .IN4(n11), .IN5(n54), 
        .Q(n51) );
  AO22X1 U57 ( .IN1(in6[14]), .IN2(n13), .IN3(in7[14]), .IN4(n14), .Q(n54) );
  OR2X1 U58 ( .IN1(n55), .IN2(n56), .Q(out[13]) );
  AO221X1 U59 ( .IN1(in3[13]), .IN2(n5), .IN3(in2[13]), .IN4(n6), .IN5(n57), 
        .Q(n56) );
  AO22X1 U60 ( .IN1(in0[13]), .IN2(n8), .IN3(in1[13]), .IN4(n9), .Q(n57) );
  AO221X1 U61 ( .IN1(in5[13]), .IN2(n10), .IN3(in4[13]), .IN4(n11), .IN5(n58), 
        .Q(n55) );
  AO22X1 U62 ( .IN1(in6[13]), .IN2(n13), .IN3(in7[13]), .IN4(n14), .Q(n58) );
  OR2X1 U63 ( .IN1(n59), .IN2(n60), .Q(out[12]) );
  AO221X1 U64 ( .IN1(in3[12]), .IN2(n5), .IN3(in2[12]), .IN4(n6), .IN5(n61), 
        .Q(n60) );
  AO22X1 U65 ( .IN1(in0[12]), .IN2(n8), .IN3(in1[12]), .IN4(n9), .Q(n61) );
  AO221X1 U66 ( .IN1(in5[12]), .IN2(n10), .IN3(in4[12]), .IN4(n11), .IN5(n62), 
        .Q(n59) );
  AO22X1 U67 ( .IN1(in6[12]), .IN2(n13), .IN3(in7[12]), .IN4(n14), .Q(n62) );
  OR2X1 U68 ( .IN1(n63), .IN2(n64), .Q(out[11]) );
  AO221X1 U69 ( .IN1(in3[11]), .IN2(n5), .IN3(in2[11]), .IN4(n6), .IN5(n65), 
        .Q(n64) );
  AO22X1 U70 ( .IN1(in0[11]), .IN2(n8), .IN3(in1[11]), .IN4(n9), .Q(n65) );
  AO221X1 U71 ( .IN1(in5[11]), .IN2(n10), .IN3(in4[11]), .IN4(n11), .IN5(n66), 
        .Q(n63) );
  AO22X1 U72 ( .IN1(in6[11]), .IN2(n13), .IN3(in7[11]), .IN4(n14), .Q(n66) );
  OR2X1 U73 ( .IN1(n67), .IN2(n68), .Q(out[10]) );
  AO221X1 U74 ( .IN1(in3[10]), .IN2(n5), .IN3(in2[10]), .IN4(n6), .IN5(n69), 
        .Q(n68) );
  AO22X1 U75 ( .IN1(in0[10]), .IN2(n8), .IN3(in1[10]), .IN4(n9), .Q(n69) );
  AO221X1 U76 ( .IN1(in5[10]), .IN2(n10), .IN3(in4[10]), .IN4(n11), .IN5(n70), 
        .Q(n67) );
  AO22X1 U77 ( .IN1(in6[10]), .IN2(n13), .IN3(in7[10]), .IN4(n14), .Q(n70) );
  OR2X1 U78 ( .IN1(n71), .IN2(n72), .Q(out[0]) );
  AO221X1 U79 ( .IN1(in3[0]), .IN2(n5), .IN3(in2[0]), .IN4(n6), .IN5(n73), .Q(
        n72) );
  AO22X1 U80 ( .IN1(in0[0]), .IN2(n8), .IN3(in1[0]), .IN4(n9), .Q(n73) );
  AO221X1 U85 ( .IN1(in5[0]), .IN2(n10), .IN3(in4[0]), .IN4(n11), .IN5(n74), 
        .Q(n71) );
  AO22X1 U86 ( .IN1(in6[0]), .IN2(n13), .IN3(in7[0]), .IN4(n14), .Q(n74) );
  AND3X1 U1 ( .IN1(n2), .IN2(n1), .IN3(select[2]), .Q(n11) );
  AND3X1 U2 ( .IN1(select[1]), .IN2(select[0]), .IN3(select[2]), .Q(n14) );
  AND3X1 U81 ( .IN1(select[0]), .IN2(n1), .IN3(select[2]), .Q(n10) );
  AND3X1 U82 ( .IN1(select[1]), .IN2(n2), .IN3(select[2]), .Q(n13) );
  NOR3X0 U83 ( .IN1(select[0]), .IN2(select[2]), .IN3(n1), .QN(n6) );
  NOR3X0 U84 ( .IN1(select[1]), .IN2(select[2]), .IN3(n2), .QN(n9) );
  NOR3X0 U87 ( .IN1(n2), .IN2(select[2]), .IN3(n1), .QN(n5) );
  NOR3X0 U88 ( .IN1(select[1]), .IN2(select[2]), .IN3(select[0]), .QN(n8) );
  INVX0 U89 ( .INP(select[0]), .ZN(n2) );
  INVX0 U90 ( .INP(select[1]), .ZN(n1) );
endmodule


module mux_1bit ( select, out, in0, in1, in2, in3, in4, in5, in6, in7 );
  input [2:0] select;
  input in0, in1, in2, in3, in4, in5, in6, in7;
  output out;
  wire   n4, n5, n6, n7, n8, n9, n1, n2, n3;

  AO22X1 U4 ( .IN1(select[2]), .IN2(n4), .IN3(n5), .IN4(n1), .Q(out) );
  AO22X1 U5 ( .IN1(select[1]), .IN2(n6), .IN3(n7), .IN4(n2), .Q(n5) );
  AO22X1 U6 ( .IN1(select[0]), .IN2(in1), .IN3(in0), .IN4(n3), .Q(n7) );
  AO22X1 U7 ( .IN1(in3), .IN2(select[0]), .IN3(in2), .IN4(n3), .Q(n6) );
  AO22X1 U8 ( .IN1(select[1]), .IN2(n8), .IN3(n9), .IN4(n2), .Q(n4) );
  AO22X1 U9 ( .IN1(in5), .IN2(select[0]), .IN3(in4), .IN4(n3), .Q(n9) );
  AO22X1 U10 ( .IN1(in7), .IN2(select[0]), .IN3(in6), .IN4(n3), .Q(n8) );
  INVX0 U1 ( .INP(select[2]), .ZN(n1) );
  INVX0 U2 ( .INP(select[0]), .ZN(n3) );
  INVX0 U3 ( .INP(select[1]), .ZN(n2) );
endmodule


module learnCosts_DW01_inc_0 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HADDX1 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .C1(carry[15]), .SO(SUM[14]) );
  HADDX1 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .C1(carry[14]), .SO(SUM[13]) );
  HADDX1 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .C1(carry[13]), .SO(SUM[12]) );
  HADDX1 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(carry[12]), .SO(SUM[11]) );
  HADDX1 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX0 U1 ( .INP(A[0]), .ZN(SUM[0]) );
  XOR2X1 U2 ( .IN1(carry[15]), .IN2(A[15]), .Q(SUM[15]) );
endmodule


module learnCosts_DW01_inc_1 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HADDX1 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .C1(carry[15]), .SO(SUM[14]) );
  HADDX1 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .C1(carry[14]), .SO(SUM[13]) );
  HADDX1 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .C1(carry[13]), .SO(SUM[12]) );
  HADDX1 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(carry[12]), .SO(SUM[11]) );
  HADDX1 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX0 U1 ( .INP(A[0]), .ZN(SUM[0]) );
  XOR2X1 U2 ( .IN1(carry[15]), .IN2(A[15]), .Q(SUM[15]) );
endmodule


module learnCosts_DW01_inc_2 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HADDX1 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .C1(carry[15]), .SO(SUM[14]) );
  HADDX1 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .C1(carry[14]), .SO(SUM[13]) );
  HADDX1 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .C1(carry[13]), .SO(SUM[12]) );
  HADDX1 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(carry[12]), .SO(SUM[11]) );
  HADDX1 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX0 U1 ( .INP(A[0]), .ZN(SUM[0]) );
  XOR2X1 U2 ( .IN1(carry[15]), .IN2(A[15]), .Q(SUM[15]) );
endmodule


module learnCosts_DW01_add_11 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [10:1] carry;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  FADDX1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .S(SUM[10]) );
  FADDX1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FADDX1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  FADDX1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  FADDX1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  FADDX1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  FADDX1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  FADDX1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  FADDX1 U1_2 ( .A(A[2]), .B(B[2]), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  AND2X1 U1 ( .IN1(B[1]), .IN2(A[1]), .Q(n1) );
  XOR2X1 U2 ( .IN1(B[1]), .IN2(A[1]), .Q(SUM[1]) );
endmodule


module learnCosts ( clock, nrst, en, fsourceID, fbatteryStat, fValue, 
        fclusterID, initial_epsilon, address, wr_en, data_in, data_out, done
 );
  input [15:0] fsourceID;
  input [15:0] fbatteryStat;
  input [15:0] fValue;
  input [15:0] fclusterID;
  input [15:0] initial_epsilon;
  output [10:0] address;
  input [15:0] data_in;
  output [15:0] data_out;
  input clock, nrst, en;
  output wr_en, done;
  wire   reinit, found, N188, N191, N192, N194, N195, N196, N197, N198, N199,
         N200, N203, N211, N212, N213, N214, N215, N216, N217, N218, N219,
         N220, N221, N222, N223, N224, N225, N226, N227, N228, N229, N230,
         N231, N234, N237, N238, N239, N240, N241, N242, N243, N244, N245,
         N246, N248, N249, N250, N251, N252, N253, N254, N255, N256, N257,
         N270, N271, N272, N273, N274, N275, N276, N277, N278, N279, N280,
         N281, N282, N283, N284, N285, N286, N287, N288, N289, N290, N291,
         N292, N293, N294, N295, N296, N301, N302, N303, N304, N305, N306,
         N307, N312, N313, N314, N315, N316, N317, N318, N319, N325, N326,
         N328, N329, N330, N331, N332, N333, N334, N339, N340, N341, N342,
         N343, N344, N345, N350, N351, N352, N353, N354, N355, N356, N361,
         N362, N363, N364, N365, N366, N367, N374, N375, N376, N377, N378,
         N383, N384, N385, N386, N387, N388, N389, N390, N391, N392, N442,
         N443, N444, N445, N446, N447, N448, N449, N450, N451, N452, N453,
         N454, N455, N456, N457, N582, N583, N584, N585, N586, n61, n66, n67,
         n68, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, \add_176/carry[10] , \add_176/carry[9] ,
         \add_176/carry[8] , \add_176/carry[7] , \add_176/carry[6] ,
         \add_176/carry[5] , \add_176/carry[4] , \add_176/carry[3] ,
         \add_169/carry[10] , \add_169/carry[9] , \add_169/carry[8] ,
         \add_163/carry[10] , \add_163/carry[9] , \add_163/carry[8] ,
         \add_163/carry[7] , \add_163/carry[6] , \add_163/carry[5] ,
         \add_157/carry[10] , \add_157/carry[9] , \add_157/carry[8] ,
         \add_157/carry[7] , \add_157/carry[6] , \add_157/carry[5] ,
         \add_151/carry[10] , \add_151/carry[9] , \add_151/carry[8] ,
         \add_151/carry[7] , \add_151/carry[6] , \add_151/carry[5] ,
         \add_144/carry[10] , \add_144/carry[9] , \add_144/carry[8] ,
         \add_144/carry[7] , \add_144/carry[6] , \add_144/carry[5] ,
         \add_114/carry[10] , \add_114/carry[9] , \add_114/carry[8] ,
         \add_114/carry[7] , \add_114/carry[6] , \add_114/carry[5] ,
         \add_108/carry[10] , \add_108/carry[9] , \add_108/carry[8] ,
         \add_108/carry[7] , \add_108/carry[6] , \add_108/carry[5] ,
         \add_84/carry[10] , \add_84/carry[9] , \add_84/carry[8] ,
         \add_84/carry[7] , \add_84/carry[6] , \add_84/carry[5] ,
         \add_84/carry[4] , \add_84/carry[3] , \add_72/carry[10] ,
         \add_72/carry[9] , \add_72/carry[8] , \add_59/carry[10] ,
         \add_59/carry[9] , \add_59/carry[8] , \add_59/carry[7] ,
         \add_59/carry[6] , \add_59/carry[5] , \r158/carry[10] ,
         \r158/carry[9] , \r158/carry[8] , \r158/carry[7] , \r158/carry[6] ,
         \r158/carry[5] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n62, n63, n64, n65, n69, n70, n71, n136,
         n137, n138, n139, n153, n404, n405, n406, n407, n408, n409, n410,
         n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, n421,
         n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432,
         n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443,
         n444, n445, n446, n447, n448, n449, n450, n451, n452, n453, n454,
         n455, n456, n457, n458, n459, n460, n461, n462, n463, n464, n465,
         n466, n467, n468, n469, n470, n471, n472, n473, n474, n475, n476,
         n477, n478;
  wire   [4:0] state;
  wire   [15:0] n;
  wire   [15:0] neighborCount;
  wire   [15:0] k;
  wire   [15:0] knownSinkCount;
  wire   [10:0] sinkID_address_buf;

  DFFX1 reinit_reg ( .D(n385), .CLK(clock), .Q(reinit) );
  DFFX1 \sinkID_address_buf_reg[4]  ( .D(n315), .CLK(clock), .Q(
        sinkID_address_buf[4]) );
  DFFX1 \sinkID_address_buf_reg[5]  ( .D(n314), .CLK(clock), .Q(
        sinkID_address_buf[5]) );
  DFFX1 \sinkID_address_buf_reg[6]  ( .D(n313), .CLK(clock), .Q(
        sinkID_address_buf[6]) );
  DFFX1 \sinkID_address_buf_reg[7]  ( .D(n312), .CLK(clock), .Q(
        sinkID_address_buf[7]) );
  DFFX1 \sinkID_address_buf_reg[8]  ( .D(n311), .CLK(clock), .Q(
        sinkID_address_buf[8]) );
  DFFX1 \sinkID_address_buf_reg[9]  ( .D(n310), .CLK(clock), .Q(
        sinkID_address_buf[9]) );
  DFFX1 \sinkID_address_buf_reg[10]  ( .D(n309), .CLK(clock), .Q(
        sinkID_address_buf[10]) );
  DFFX1 \address_count_reg[0]  ( .D(n308), .CLK(clock), .Q(address[0]) );
  DFFX1 \address_count_reg[1]  ( .D(n307), .CLK(clock), .Q(address[1]) );
  DFFX1 \address_count_reg[2]  ( .D(n306), .CLK(clock), .Q(address[2]) );
  DFFX1 \address_count_reg[3]  ( .D(n305), .CLK(clock), .Q(address[3]) );
  DFFX1 \address_count_reg[4]  ( .D(n304), .CLK(clock), .Q(address[4]) );
  DFFX1 \address_count_reg[5]  ( .D(n303), .CLK(clock), .Q(address[5]) );
  DFFX1 \address_count_reg[6]  ( .D(n302), .CLK(clock), .Q(address[6]) );
  DFFX1 \address_count_reg[7]  ( .D(n301), .CLK(clock), .Q(address[7]) );
  DFFX1 \address_count_reg[8]  ( .D(n300), .CLK(clock), .Q(address[8]) );
  DFFX1 \address_count_reg[9]  ( .D(n299), .CLK(clock), .Q(address[9]) );
  DFFX1 \address_count_reg[10]  ( .D(n298), .CLK(clock), .Q(address[10]) );
  AO22X1 U87 ( .IN1(address[10]), .IN2(n72), .IN3(n73), .IN4(n74), .Q(n298) );
  OR4X1 U88 ( .IN1(n75), .IN2(n76), .IN3(n77), .IN4(n78), .Q(n74) );
  AO222X1 U89 ( .IN1(N367), .IN2(n474), .IN3(N280), .IN4(n79), .IN5(N356), 
        .IN6(n80), .Q(n78) );
  AO222X1 U90 ( .IN1(N392), .IN2(n81), .IN3(N257), .IN4(n82), .IN5(N246), 
        .IN6(n83), .Q(n77) );
  AO221X1 U91 ( .IN1(N307), .IN2(n462), .IN3(N200), .IN4(n471), .IN5(n84), .Q(
        n76) );
  AO222X1 U92 ( .IN1(N334), .IN2(n85), .IN3(N345), .IN4(n473), .IN5(N318), 
        .IN6(n460), .Q(n75) );
  AO22X1 U93 ( .IN1(address[9]), .IN2(n72), .IN3(n73), .IN4(n86), .Q(n299) );
  OR4X1 U94 ( .IN1(n87), .IN2(n88), .IN3(n89), .IN4(n90), .Q(n86) );
  AO222X1 U95 ( .IN1(N366), .IN2(n474), .IN3(N279), .IN4(n79), .IN5(N355), 
        .IN6(n6), .Q(n90) );
  AO222X1 U96 ( .IN1(N391), .IN2(n81), .IN3(N256), .IN4(n82), .IN5(N245), 
        .IN6(n83), .Q(n89) );
  AO221X1 U97 ( .IN1(N306), .IN2(n462), .IN3(N199), .IN4(n471), .IN5(n84), .Q(
        n88) );
  AO222X1 U98 ( .IN1(N333), .IN2(n4), .IN3(N344), .IN4(n473), .IN5(N317), 
        .IN6(n460), .Q(n87) );
  AO22X1 U99 ( .IN1(address[8]), .IN2(n72), .IN3(n73), .IN4(n91), .Q(n300) );
  OR3X1 U100 ( .IN1(n92), .IN2(n93), .IN3(n94), .Q(n91) );
  AO221X1 U101 ( .IN1(N305), .IN2(n462), .IN3(N198), .IN4(n471), .IN5(n95), 
        .Q(n94) );
  AO222X1 U102 ( .IN1(N332), .IN2(n3), .IN3(N343), .IN4(n473), .IN5(N316), 
        .IN6(n460), .Q(n95) );
  AO222X1 U103 ( .IN1(N365), .IN2(n474), .IN3(N278), .IN4(n79), .IN5(N354), 
        .IN6(n5), .Q(n93) );
  AO222X1 U104 ( .IN1(N390), .IN2(n81), .IN3(N255), .IN4(n82), .IN5(N244), 
        .IN6(n83), .Q(n92) );
  AO22X1 U105 ( .IN1(address[7]), .IN2(n72), .IN3(n73), .IN4(n96), .Q(n301) );
  OR4X1 U106 ( .IN1(n97), .IN2(n98), .IN3(n99), .IN4(n100), .Q(n96) );
  AO222X1 U107 ( .IN1(N364), .IN2(n474), .IN3(N277), .IN4(n79), .IN5(N353), 
        .IN6(n80), .Q(n100) );
  AO222X1 U108 ( .IN1(N389), .IN2(n81), .IN3(N254), .IN4(n82), .IN5(N243), 
        .IN6(n83), .Q(n99) );
  AO221X1 U109 ( .IN1(N304), .IN2(n462), .IN3(N197), .IN4(n471), .IN5(n84), 
        .Q(n98) );
  AO222X1 U110 ( .IN1(N331), .IN2(n85), .IN3(N342), .IN4(n473), .IN5(N315), 
        .IN6(n460), .Q(n97) );
  AO22X1 U111 ( .IN1(address[6]), .IN2(n72), .IN3(n73), .IN4(n101), .Q(n302)
         );
  OR3X1 U112 ( .IN1(n102), .IN2(n103), .IN3(n104), .Q(n101) );
  AO221X1 U113 ( .IN1(N303), .IN2(n462), .IN3(N196), .IN4(n471), .IN5(n105), 
        .Q(n104) );
  AO222X1 U114 ( .IN1(N330), .IN2(n4), .IN3(N341), .IN4(n473), .IN5(N314), 
        .IN6(n460), .Q(n105) );
  AO222X1 U115 ( .IN1(N363), .IN2(n474), .IN3(N276), .IN4(n79), .IN5(N352), 
        .IN6(n6), .Q(n103) );
  AO222X1 U116 ( .IN1(N388), .IN2(n81), .IN3(N253), .IN4(n82), .IN5(N242), 
        .IN6(n83), .Q(n102) );
  AO22X1 U117 ( .IN1(address[5]), .IN2(n72), .IN3(n73), .IN4(n106), .Q(n303)
         );
  OR3X1 U118 ( .IN1(n107), .IN2(n108), .IN3(n109), .Q(n106) );
  AO221X1 U119 ( .IN1(N302), .IN2(n462), .IN3(N195), .IN4(n471), .IN5(n110), 
        .Q(n109) );
  AO222X1 U120 ( .IN1(N329), .IN2(n3), .IN3(N340), .IN4(n473), .IN5(N313), 
        .IN6(n460), .Q(n110) );
  AO222X1 U121 ( .IN1(N362), .IN2(n474), .IN3(N275), .IN4(n79), .IN5(N351), 
        .IN6(n5), .Q(n108) );
  AO222X1 U122 ( .IN1(N387), .IN2(n81), .IN3(N252), .IN4(n82), .IN5(N241), 
        .IN6(n83), .Q(n107) );
  AO22X1 U123 ( .IN1(address[4]), .IN2(n72), .IN3(n73), .IN4(n111), .Q(n304)
         );
  OR3X1 U124 ( .IN1(n112), .IN2(n113), .IN3(n114), .Q(n111) );
  AO221X1 U125 ( .IN1(N301), .IN2(n462), .IN3(N194), .IN4(n471), .IN5(n115), 
        .Q(n114) );
  AO222X1 U126 ( .IN1(N328), .IN2(n85), .IN3(N339), .IN4(n473), .IN5(N312), 
        .IN6(n460), .Q(n115) );
  AO222X1 U127 ( .IN1(N361), .IN2(n474), .IN3(N274), .IN4(n79), .IN5(N350), 
        .IN6(n80), .Q(n113) );
  AO222X1 U128 ( .IN1(N386), .IN2(n81), .IN3(N251), .IN4(n82), .IN5(N240), 
        .IN6(n83), .Q(n112) );
  AO22X1 U129 ( .IN1(address[3]), .IN2(n72), .IN3(n73), .IN4(n116), .Q(n305)
         );
  OR4X1 U130 ( .IN1(n117), .IN2(n118), .IN3(n119), .IN4(n120), .Q(n116) );
  AO222X1 U131 ( .IN1(N374), .IN2(n474), .IN3(N273), .IN4(n79), .IN5(N374), 
        .IN6(n6), .Q(n120) );
  AO222X1 U132 ( .IN1(N385), .IN2(n81), .IN3(N250), .IN4(n82), .IN5(N239), 
        .IN6(n83), .Q(n119) );
  AO221X1 U133 ( .IN1(N211), .IN2(n462), .IN3(N211), .IN4(n471), .IN5(n84), 
        .Q(n118) );
  NAND3X0 U134 ( .IN1(n121), .IN2(n122), .IN3(n123), .QN(n84) );
  AO222X1 U135 ( .IN1(N374), .IN2(n4), .IN3(N374), .IN4(n473), .IN5(N211), 
        .IN6(n460), .Q(n117) );
  AO22X1 U136 ( .IN1(address[2]), .IN2(n72), .IN3(n73), .IN4(n124), .Q(n306)
         );
  OR4X1 U137 ( .IN1(n125), .IN2(n126), .IN3(n127), .IN4(n128), .Q(n124) );
  AO222X1 U138 ( .IN1(N272), .IN2(n79), .IN3(N238), .IN4(n83), .IN5(N326), 
        .IN6(n474), .Q(n128) );
  AO221X1 U139 ( .IN1(N249), .IN2(n82), .IN3(N384), .IN4(n81), .IN5(n463), .Q(
        n127) );
  AO222X1 U140 ( .IN1(N192), .IN2(n462), .IN3(N192), .IN4(n460), .IN5(N192), 
        .IN6(n471), .Q(n126) );
  AO222X1 U141 ( .IN1(N326), .IN2(n473), .IN3(N326), .IN4(n6), .IN5(N326), 
        .IN6(n4), .Q(n125) );
  AO22X1 U142 ( .IN1(address[1]), .IN2(n72), .IN3(n73), .IN4(n129), .Q(n307)
         );
  OR4X1 U143 ( .IN1(n130), .IN2(n131), .IN3(n132), .IN4(n133), .Q(n129) );
  AO222X1 U144 ( .IN1(N271), .IN2(n79), .IN3(N237), .IN4(n83), .IN5(N325), 
        .IN6(n474), .Q(n133) );
  AO221X1 U145 ( .IN1(N248), .IN2(n82), .IN3(N383), .IN4(n81), .IN5(n134), .Q(
        n132) );
  AO222X1 U146 ( .IN1(N191), .IN2(n462), .IN3(N191), .IN4(n460), .IN5(N191), 
        .IN6(n471), .Q(n131) );
  AO222X1 U147 ( .IN1(N325), .IN2(n473), .IN3(N325), .IN4(n5), .IN5(N325), 
        .IN6(n3), .Q(n130) );
  AO22X1 U148 ( .IN1(address[0]), .IN2(n72), .IN3(n73), .IN4(n135), .Q(n308)
         );
  AND4X1 U155 ( .IN1(n122), .IN2(n143), .IN3(n144), .IN4(n145), .Q(n142) );
  OR2X1 U156 ( .IN1(N188), .IN2(n146), .Q(n144) );
  AO222X1 U157 ( .IN1(N215), .IN2(n147), .IN3(N378), .IN4(n148), .IN5(
        sinkID_address_buf[10]), .IN6(n149), .Q(n309) );
  AO222X1 U158 ( .IN1(N214), .IN2(n147), .IN3(N377), .IN4(n148), .IN5(
        sinkID_address_buf[9]), .IN6(n149), .Q(n310) );
  AO222X1 U159 ( .IN1(N213), .IN2(n147), .IN3(N376), .IN4(n148), .IN5(
        sinkID_address_buf[8]), .IN6(n149), .Q(n311) );
  AO222X1 U160 ( .IN1(N212), .IN2(n147), .IN3(N375), .IN4(n148), .IN5(
        sinkID_address_buf[7]), .IN6(n149), .Q(n312) );
  AO222X1 U161 ( .IN1(N211), .IN2(n147), .IN3(N374), .IN4(n148), .IN5(
        sinkID_address_buf[6]), .IN6(n149), .Q(n313) );
  AO222X1 U162 ( .IN1(N192), .IN2(n147), .IN3(N326), .IN4(n148), .IN5(
        sinkID_address_buf[5]), .IN6(n149), .Q(n314) );
  AO222X1 U163 ( .IN1(N191), .IN2(n147), .IN3(N325), .IN4(n148), .IN5(
        sinkID_address_buf[4]), .IN6(n149), .Q(n315) );
  AND2X1 U168 ( .IN1(n150), .IN2(n474), .Q(n148) );
  AND2X1 U169 ( .IN1(n150), .IN2(n469), .Q(n147) );
  NAND4X0 U173 ( .IN1(n156), .IN2(n468), .IN3(n141), .IN4(n157), .QN(n155) );
  NAND4X0 U174 ( .IN1(n159), .IN2(n160), .IN3(n161), .IN4(n143), .QN(n154) );
  AO22X1 U175 ( .IN1(data_out[15]), .IN2(n159), .IN3(n162), .IN4(n163), .Q(
        n321) );
  OR2X1 U176 ( .IN1(n164), .IN2(n165), .Q(n163) );
  AO221X1 U177 ( .IN1(fclusterID[15]), .IN2(n474), .IN3(initial_epsilon[15]), 
        .IN4(n463), .IN5(n166), .Q(n165) );
  AO22X1 U178 ( .IN1(fsourceID[15]), .IN2(n3), .IN3(fValue[15]), .IN4(n5), .Q(
        n166) );
  AO221X1 U179 ( .IN1(fbatteryStat[15]), .IN2(n461), .IN3(n35), .IN4(n464), 
        .IN5(n167), .Q(n164) );
  AO22X1 U180 ( .IN1(N457), .IN2(n472), .IN3(k[15]), .IN4(n158), .Q(n167) );
  AO22X1 U181 ( .IN1(data_out[14]), .IN2(n159), .IN3(n162), .IN4(n168), .Q(
        n322) );
  OR2X1 U182 ( .IN1(n169), .IN2(n170), .Q(n168) );
  AO221X1 U183 ( .IN1(fclusterID[14]), .IN2(n474), .IN3(initial_epsilon[14]), 
        .IN4(n463), .IN5(n171), .Q(n170) );
  AO22X1 U184 ( .IN1(fsourceID[14]), .IN2(n85), .IN3(fValue[14]), .IN4(n80), 
        .Q(n171) );
  AO221X1 U185 ( .IN1(fbatteryStat[14]), .IN2(n461), .IN3(n33), .IN4(n464), 
        .IN5(n172), .Q(n169) );
  AO22X1 U186 ( .IN1(N456), .IN2(n472), .IN3(k[14]), .IN4(n158), .Q(n172) );
  AO22X1 U187 ( .IN1(data_out[13]), .IN2(n159), .IN3(n162), .IN4(n173), .Q(
        n323) );
  OR2X1 U188 ( .IN1(n174), .IN2(n175), .Q(n173) );
  AO221X1 U189 ( .IN1(fclusterID[13]), .IN2(n474), .IN3(initial_epsilon[13]), 
        .IN4(n463), .IN5(n176), .Q(n175) );
  AO22X1 U190 ( .IN1(fsourceID[13]), .IN2(n4), .IN3(fValue[13]), .IN4(n6), .Q(
        n176) );
  AO221X1 U191 ( .IN1(fbatteryStat[13]), .IN2(n461), .IN3(n31), .IN4(n464), 
        .IN5(n177), .Q(n174) );
  AO22X1 U192 ( .IN1(N455), .IN2(n472), .IN3(k[13]), .IN4(n158), .Q(n177) );
  AO22X1 U193 ( .IN1(data_out[12]), .IN2(n159), .IN3(n162), .IN4(n178), .Q(
        n324) );
  OR2X1 U194 ( .IN1(n179), .IN2(n180), .Q(n178) );
  AO221X1 U195 ( .IN1(fclusterID[12]), .IN2(n474), .IN3(initial_epsilon[12]), 
        .IN4(n463), .IN5(n181), .Q(n180) );
  AO22X1 U196 ( .IN1(fsourceID[12]), .IN2(n3), .IN3(fValue[12]), .IN4(n5), .Q(
        n181) );
  AO221X1 U197 ( .IN1(fbatteryStat[12]), .IN2(n461), .IN3(n29), .IN4(n464), 
        .IN5(n182), .Q(n179) );
  AO22X1 U198 ( .IN1(N454), .IN2(n472), .IN3(k[12]), .IN4(n158), .Q(n182) );
  AO22X1 U199 ( .IN1(data_out[11]), .IN2(n159), .IN3(n162), .IN4(n183), .Q(
        n325) );
  OR2X1 U200 ( .IN1(n184), .IN2(n185), .Q(n183) );
  AO221X1 U201 ( .IN1(fclusterID[11]), .IN2(n474), .IN3(initial_epsilon[11]), 
        .IN4(n463), .IN5(n186), .Q(n185) );
  AO22X1 U202 ( .IN1(fsourceID[11]), .IN2(n85), .IN3(fValue[11]), .IN4(n80), 
        .Q(n186) );
  AO221X1 U203 ( .IN1(fbatteryStat[11]), .IN2(n461), .IN3(n27), .IN4(n464), 
        .IN5(n187), .Q(n184) );
  AO22X1 U204 ( .IN1(N453), .IN2(n472), .IN3(k[11]), .IN4(n158), .Q(n187) );
  AO22X1 U205 ( .IN1(data_out[10]), .IN2(n159), .IN3(n162), .IN4(n188), .Q(
        n326) );
  OR2X1 U206 ( .IN1(n189), .IN2(n190), .Q(n188) );
  AO221X1 U207 ( .IN1(fclusterID[10]), .IN2(n474), .IN3(initial_epsilon[10]), 
        .IN4(n463), .IN5(n191), .Q(n190) );
  AO22X1 U208 ( .IN1(fsourceID[10]), .IN2(n4), .IN3(fValue[10]), .IN4(n6), .Q(
        n191) );
  AO221X1 U209 ( .IN1(fbatteryStat[10]), .IN2(n461), .IN3(n25), .IN4(n464), 
        .IN5(n192), .Q(n189) );
  AO22X1 U210 ( .IN1(N452), .IN2(n472), .IN3(k[10]), .IN4(n158), .Q(n192) );
  AO22X1 U211 ( .IN1(data_out[9]), .IN2(n159), .IN3(n162), .IN4(n193), .Q(n327) );
  OR2X1 U212 ( .IN1(n194), .IN2(n195), .Q(n193) );
  AO221X1 U213 ( .IN1(fclusterID[9]), .IN2(n474), .IN3(initial_epsilon[9]), 
        .IN4(n463), .IN5(n196), .Q(n195) );
  AO22X1 U214 ( .IN1(fsourceID[9]), .IN2(n3), .IN3(fValue[9]), .IN4(n5), .Q(
        n196) );
  AO221X1 U215 ( .IN1(fbatteryStat[9]), .IN2(n461), .IN3(n23), .IN4(n464), 
        .IN5(n197), .Q(n194) );
  AO22X1 U216 ( .IN1(N451), .IN2(n472), .IN3(k[9]), .IN4(n158), .Q(n197) );
  AO22X1 U217 ( .IN1(data_out[8]), .IN2(n159), .IN3(n162), .IN4(n198), .Q(n328) );
  OR2X1 U218 ( .IN1(n199), .IN2(n200), .Q(n198) );
  AO221X1 U219 ( .IN1(fclusterID[8]), .IN2(n474), .IN3(initial_epsilon[8]), 
        .IN4(n463), .IN5(n201), .Q(n200) );
  AO22X1 U220 ( .IN1(fsourceID[8]), .IN2(n85), .IN3(fValue[8]), .IN4(n80), .Q(
        n201) );
  AO221X1 U221 ( .IN1(fbatteryStat[8]), .IN2(n461), .IN3(n21), .IN4(n464), 
        .IN5(n202), .Q(n199) );
  AO22X1 U222 ( .IN1(N450), .IN2(n472), .IN3(k[8]), .IN4(n158), .Q(n202) );
  AO22X1 U223 ( .IN1(data_out[7]), .IN2(n159), .IN3(n162), .IN4(n203), .Q(n329) );
  OR2X1 U224 ( .IN1(n204), .IN2(n205), .Q(n203) );
  AO221X1 U225 ( .IN1(fclusterID[7]), .IN2(n474), .IN3(initial_epsilon[7]), 
        .IN4(n463), .IN5(n206), .Q(n205) );
  AO22X1 U226 ( .IN1(fsourceID[7]), .IN2(n4), .IN3(fValue[7]), .IN4(n6), .Q(
        n206) );
  AO221X1 U227 ( .IN1(fbatteryStat[7]), .IN2(n461), .IN3(n19), .IN4(n464), 
        .IN5(n207), .Q(n204) );
  AO22X1 U228 ( .IN1(N449), .IN2(n472), .IN3(k[7]), .IN4(n158), .Q(n207) );
  AO22X1 U229 ( .IN1(data_out[6]), .IN2(n159), .IN3(n162), .IN4(n208), .Q(n330) );
  OR2X1 U230 ( .IN1(n209), .IN2(n210), .Q(n208) );
  AO221X1 U231 ( .IN1(fclusterID[6]), .IN2(n474), .IN3(initial_epsilon[6]), 
        .IN4(n463), .IN5(n211), .Q(n210) );
  AO22X1 U232 ( .IN1(fsourceID[6]), .IN2(n3), .IN3(fValue[6]), .IN4(n5), .Q(
        n211) );
  AO221X1 U233 ( .IN1(fbatteryStat[6]), .IN2(n461), .IN3(n17), .IN4(n464), 
        .IN5(n212), .Q(n209) );
  AO22X1 U234 ( .IN1(N448), .IN2(n472), .IN3(k[6]), .IN4(n158), .Q(n212) );
  AO22X1 U235 ( .IN1(data_out[5]), .IN2(n159), .IN3(n162), .IN4(n213), .Q(n331) );
  OR2X1 U236 ( .IN1(n214), .IN2(n215), .Q(n213) );
  AO221X1 U237 ( .IN1(fclusterID[5]), .IN2(n474), .IN3(initial_epsilon[5]), 
        .IN4(n463), .IN5(n216), .Q(n215) );
  AO22X1 U238 ( .IN1(fsourceID[5]), .IN2(n85), .IN3(fValue[5]), .IN4(n80), .Q(
        n216) );
  AO221X1 U239 ( .IN1(fbatteryStat[5]), .IN2(n461), .IN3(n14), .IN4(n464), 
        .IN5(n217), .Q(n214) );
  AO22X1 U240 ( .IN1(N447), .IN2(n472), .IN3(k[5]), .IN4(n158), .Q(n217) );
  AO22X1 U241 ( .IN1(data_out[4]), .IN2(n159), .IN3(n162), .IN4(n218), .Q(n332) );
  OR2X1 U242 ( .IN1(n219), .IN2(n220), .Q(n218) );
  AO221X1 U243 ( .IN1(fclusterID[4]), .IN2(n474), .IN3(initial_epsilon[4]), 
        .IN4(n463), .IN5(n221), .Q(n220) );
  AO22X1 U244 ( .IN1(fsourceID[4]), .IN2(n4), .IN3(fValue[4]), .IN4(n6), .Q(
        n221) );
  AO221X1 U245 ( .IN1(fbatteryStat[4]), .IN2(n461), .IN3(n12), .IN4(n464), 
        .IN5(n222), .Q(n219) );
  AO22X1 U246 ( .IN1(N446), .IN2(n472), .IN3(k[4]), .IN4(n158), .Q(n222) );
  AO22X1 U247 ( .IN1(data_out[3]), .IN2(n159), .IN3(n162), .IN4(n223), .Q(n333) );
  OR2X1 U248 ( .IN1(n224), .IN2(n225), .Q(n223) );
  AO221X1 U249 ( .IN1(fclusterID[3]), .IN2(n474), .IN3(initial_epsilon[3]), 
        .IN4(n463), .IN5(n226), .Q(n225) );
  AO22X1 U250 ( .IN1(fsourceID[3]), .IN2(n3), .IN3(fValue[3]), .IN4(n5), .Q(
        n226) );
  AO221X1 U251 ( .IN1(fbatteryStat[3]), .IN2(n461), .IN3(n10), .IN4(n464), 
        .IN5(n227), .Q(n224) );
  AO22X1 U252 ( .IN1(N445), .IN2(n472), .IN3(k[3]), .IN4(n158), .Q(n227) );
  AO22X1 U253 ( .IN1(data_out[2]), .IN2(n159), .IN3(n162), .IN4(n228), .Q(n334) );
  OR2X1 U254 ( .IN1(n229), .IN2(n230), .Q(n228) );
  AO221X1 U255 ( .IN1(fclusterID[2]), .IN2(n474), .IN3(initial_epsilon[2]), 
        .IN4(n463), .IN5(n231), .Q(n230) );
  AO22X1 U256 ( .IN1(fsourceID[2]), .IN2(n85), .IN3(fValue[2]), .IN4(n80), .Q(
        n231) );
  AO221X1 U257 ( .IN1(fbatteryStat[2]), .IN2(n461), .IN3(n8), .IN4(n464), 
        .IN5(n232), .Q(n229) );
  AO22X1 U258 ( .IN1(N444), .IN2(n472), .IN3(k[2]), .IN4(n158), .Q(n232) );
  AO22X1 U259 ( .IN1(data_out[1]), .IN2(n159), .IN3(n162), .IN4(n233), .Q(n335) );
  OR2X1 U260 ( .IN1(n234), .IN2(n235), .Q(n233) );
  AO221X1 U261 ( .IN1(fclusterID[1]), .IN2(n474), .IN3(initial_epsilon[1]), 
        .IN4(n463), .IN5(n236), .Q(n235) );
  AO22X1 U262 ( .IN1(fsourceID[1]), .IN2(n4), .IN3(fValue[1]), .IN4(n6), .Q(
        n236) );
  AO221X1 U263 ( .IN1(fbatteryStat[1]), .IN2(n461), .IN3(data_in[1]), .IN4(
        n464), .IN5(n237), .Q(n234) );
  AO22X1 U264 ( .IN1(N443), .IN2(n472), .IN3(N249), .IN4(n158), .Q(n237) );
  AO22X1 U265 ( .IN1(data_out[0]), .IN2(n159), .IN3(n162), .IN4(n238), .Q(n336) );
  OR2X1 U266 ( .IN1(n239), .IN2(n240), .Q(n238) );
  AO221X1 U267 ( .IN1(fclusterID[0]), .IN2(n474), .IN3(initial_epsilon[0]), 
        .IN4(n463), .IN5(n241), .Q(n240) );
  AO22X1 U268 ( .IN1(fsourceID[0]), .IN2(n3), .IN3(fValue[0]), .IN4(n5), .Q(
        n241) );
  AO221X1 U269 ( .IN1(fbatteryStat[0]), .IN2(n461), .IN3(data_in[0]), .IN4(
        n464), .IN5(n242), .Q(n239) );
  AO22X1 U270 ( .IN1(N442), .IN2(n472), .IN3(N248), .IN4(n158), .Q(n242) );
  AND3X1 U272 ( .IN1(found), .IN2(n463), .IN3(reinit), .Q(n248) );
  AND4X1 U273 ( .IN1(n243), .IN2(n249), .IN3(n123), .IN4(n152), .Q(n141) );
  AO22X1 U274 ( .IN1(n151), .IN2(found), .IN3(n250), .IN4(n469), .Q(n337) );
  AO22X1 U275 ( .IN1(n[14]), .IN2(n252), .IN3(N230), .IN4(n253), .Q(n338) );
  AO22X1 U276 ( .IN1(n[13]), .IN2(n252), .IN3(N229), .IN4(n253), .Q(n339) );
  AO22X1 U277 ( .IN1(n[12]), .IN2(n252), .IN3(N228), .IN4(n253), .Q(n340) );
  AO22X1 U278 ( .IN1(n[11]), .IN2(n252), .IN3(N227), .IN4(n253), .Q(n341) );
  AO22X1 U279 ( .IN1(n[10]), .IN2(n252), .IN3(N226), .IN4(n253), .Q(n342) );
  AO22X1 U280 ( .IN1(n[9]), .IN2(n252), .IN3(N225), .IN4(n253), .Q(n343) );
  AO22X1 U281 ( .IN1(n[8]), .IN2(n252), .IN3(N224), .IN4(n253), .Q(n344) );
  AO22X1 U282 ( .IN1(n[7]), .IN2(n252), .IN3(N223), .IN4(n253), .Q(n345) );
  AO22X1 U283 ( .IN1(n[6]), .IN2(n252), .IN3(N222), .IN4(n253), .Q(n346) );
  AO22X1 U284 ( .IN1(n[5]), .IN2(n252), .IN3(N221), .IN4(n253), .Q(n347) );
  AO22X1 U285 ( .IN1(n[4]), .IN2(n252), .IN3(N220), .IN4(n253), .Q(n348) );
  AO22X1 U286 ( .IN1(n[3]), .IN2(n252), .IN3(N219), .IN4(n253), .Q(n349) );
  AO22X1 U287 ( .IN1(n[2]), .IN2(n252), .IN3(N218), .IN4(n253), .Q(n350) );
  AO22X1 U288 ( .IN1(N192), .IN2(n252), .IN3(N217), .IN4(n253), .Q(n351) );
  AO22X1 U289 ( .IN1(knownSinkCount[15]), .IN2(n254), .IN3(n255), .IN4(n35), 
        .Q(n352) );
  AO22X1 U290 ( .IN1(knownSinkCount[14]), .IN2(n254), .IN3(n255), .IN4(n33), 
        .Q(n353) );
  AO22X1 U291 ( .IN1(knownSinkCount[13]), .IN2(n254), .IN3(n255), .IN4(n31), 
        .Q(n354) );
  AO22X1 U292 ( .IN1(knownSinkCount[12]), .IN2(n254), .IN3(n255), .IN4(n29), 
        .Q(n355) );
  AO22X1 U293 ( .IN1(knownSinkCount[11]), .IN2(n254), .IN3(n255), .IN4(n27), 
        .Q(n356) );
  AO22X1 U294 ( .IN1(knownSinkCount[10]), .IN2(n254), .IN3(n255), .IN4(n25), 
        .Q(n357) );
  AO22X1 U295 ( .IN1(knownSinkCount[9]), .IN2(n254), .IN3(n255), .IN4(n23), 
        .Q(n358) );
  AO22X1 U296 ( .IN1(knownSinkCount[8]), .IN2(n254), .IN3(n255), .IN4(n21), 
        .Q(n359) );
  AO22X1 U297 ( .IN1(knownSinkCount[7]), .IN2(n254), .IN3(n255), .IN4(n19), 
        .Q(n360) );
  AO22X1 U298 ( .IN1(knownSinkCount[6]), .IN2(n254), .IN3(n255), .IN4(n17), 
        .Q(n361) );
  AO22X1 U299 ( .IN1(knownSinkCount[5]), .IN2(n254), .IN3(n255), .IN4(n14), 
        .Q(n362) );
  AO22X1 U300 ( .IN1(knownSinkCount[4]), .IN2(n254), .IN3(n255), .IN4(n12), 
        .Q(n363) );
  AO22X1 U301 ( .IN1(knownSinkCount[3]), .IN2(n254), .IN3(n255), .IN4(n10), 
        .Q(n364) );
  AO22X1 U302 ( .IN1(knownSinkCount[2]), .IN2(n254), .IN3(n255), .IN4(n8), .Q(
        n365) );
  AO22X1 U303 ( .IN1(knownSinkCount[1]), .IN2(n254), .IN3(n255), .IN4(
        data_in[1]), .Q(n366) );
  AO22X1 U304 ( .IN1(knownSinkCount[0]), .IN2(n254), .IN3(n255), .IN4(
        data_in[0]), .Q(n367) );
  AO22X1 U306 ( .IN1(neighborCount[15]), .IN2(n140), .IN3(n257), .IN4(n35), 
        .Q(n368) );
  AO22X1 U307 ( .IN1(neighborCount[14]), .IN2(n140), .IN3(n257), .IN4(n33), 
        .Q(n369) );
  AO22X1 U308 ( .IN1(neighborCount[13]), .IN2(n140), .IN3(n257), .IN4(n31), 
        .Q(n370) );
  AO22X1 U309 ( .IN1(neighborCount[12]), .IN2(n140), .IN3(n257), .IN4(n29), 
        .Q(n371) );
  AO22X1 U310 ( .IN1(neighborCount[11]), .IN2(n140), .IN3(n257), .IN4(n27), 
        .Q(n372) );
  AO22X1 U311 ( .IN1(neighborCount[10]), .IN2(n140), .IN3(n257), .IN4(n25), 
        .Q(n373) );
  AO22X1 U312 ( .IN1(neighborCount[9]), .IN2(n140), .IN3(n257), .IN4(n23), .Q(
        n374) );
  AO22X1 U313 ( .IN1(neighborCount[8]), .IN2(n140), .IN3(n257), .IN4(n21), .Q(
        n375) );
  AO22X1 U314 ( .IN1(neighborCount[7]), .IN2(n140), .IN3(n257), .IN4(n19), .Q(
        n376) );
  AO22X1 U315 ( .IN1(neighborCount[6]), .IN2(n140), .IN3(n257), .IN4(n17), .Q(
        n377) );
  AO22X1 U316 ( .IN1(neighborCount[5]), .IN2(n140), .IN3(n257), .IN4(n14), .Q(
        n378) );
  AO22X1 U317 ( .IN1(neighborCount[4]), .IN2(n140), .IN3(n257), .IN4(n12), .Q(
        n379) );
  AO22X1 U318 ( .IN1(neighborCount[3]), .IN2(n140), .IN3(n257), .IN4(n10), .Q(
        n380) );
  AO22X1 U319 ( .IN1(neighborCount[2]), .IN2(n140), .IN3(n257), .IN4(n8), .Q(
        n381) );
  AO22X1 U320 ( .IN1(N326), .IN2(n140), .IN3(n257), .IN4(data_in[1]), .Q(n382)
         );
  AO22X1 U321 ( .IN1(N325), .IN2(n140), .IN3(n257), .IN4(data_in[0]), .Q(n383)
         );
  AO22X1 U323 ( .IN1(done), .IN2(n466), .IN3(n258), .IN4(n259), .Q(n384) );
  AO22X1 U324 ( .IN1(n244), .IN2(reinit), .IN3(n261), .IN4(N319), .Q(n385) );
  AO22X1 U325 ( .IN1(n264), .IN2(k[14]), .IN3(N295), .IN4(n265), .Q(n386) );
  AO22X1 U326 ( .IN1(n264), .IN2(k[13]), .IN3(N294), .IN4(n265), .Q(n387) );
  AO22X1 U327 ( .IN1(n264), .IN2(k[12]), .IN3(N293), .IN4(n265), .Q(n388) );
  AO22X1 U328 ( .IN1(n264), .IN2(k[11]), .IN3(N292), .IN4(n265), .Q(n389) );
  AO22X1 U329 ( .IN1(n264), .IN2(k[10]), .IN3(N291), .IN4(n265), .Q(n390) );
  AO22X1 U330 ( .IN1(n264), .IN2(k[9]), .IN3(N290), .IN4(n265), .Q(n391) );
  AO22X1 U331 ( .IN1(n264), .IN2(k[8]), .IN3(N289), .IN4(n265), .Q(n392) );
  AO22X1 U332 ( .IN1(n264), .IN2(k[7]), .IN3(N288), .IN4(n265), .Q(n393) );
  AO22X1 U333 ( .IN1(n264), .IN2(k[6]), .IN3(N287), .IN4(n265), .Q(n394) );
  AO22X1 U334 ( .IN1(n264), .IN2(k[5]), .IN3(N286), .IN4(n265), .Q(n395) );
  AO22X1 U335 ( .IN1(n264), .IN2(k[4]), .IN3(N285), .IN4(n265), .Q(n396) );
  AO22X1 U336 ( .IN1(n264), .IN2(k[3]), .IN3(N284), .IN4(n265), .Q(n397) );
  AO22X1 U337 ( .IN1(n264), .IN2(k[2]), .IN3(N283), .IN4(n265), .Q(n398) );
  AO22X1 U338 ( .IN1(n264), .IN2(N249), .IN3(N282), .IN4(n265), .Q(n399) );
  AO22X1 U339 ( .IN1(n264), .IN2(N248), .IN3(N281), .IN4(n265), .Q(n400) );
  AO22X1 U340 ( .IN1(n264), .IN2(k[15]), .IN3(N296), .IN4(n265), .Q(n401) );
  AND2X1 U342 ( .IN1(n266), .IN2(n267), .Q(n160) );
  AO22X1 U343 ( .IN1(n[15]), .IN2(n252), .IN3(N231), .IN4(n253), .Q(n402) );
  AO22X1 U344 ( .IN1(N191), .IN2(n252), .IN3(N216), .IN4(n253), .Q(n403) );
  AO21X1 U346 ( .IN1(en), .IN2(n268), .IN3(n37), .Q(n263) );
  NAND4X0 U347 ( .IN1(n267), .IN2(n161), .IN3(n269), .IN4(n270), .QN(N586) );
  AND3X1 U348 ( .IN1(n247), .IN2(n152), .IN3(n271), .Q(n270) );
  NAND3X0 U349 ( .IN1(state[1]), .IN2(n272), .IN3(n273), .QN(n152) );
  NOR4X0 U350 ( .IN1(n277), .IN2(n465), .IN3(n83), .IN4(n460), .QN(n276) );
  NAND3X0 U351 ( .IN1(n249), .IN2(n278), .IN3(n243), .QN(n277) );
  NAND4X0 U352 ( .IN1(n281), .IN2(n282), .IN3(n283), .IN4(n269), .QN(N584) );
  NOR3X0 U353 ( .IN1(n463), .IN2(n472), .IN3(n284), .QN(n269) );
  NAND4X0 U354 ( .IN1(n256), .IN2(n121), .IN3(n285), .IN4(n286), .QN(N583) );
  NOR4X0 U355 ( .IN1(n287), .IN2(n464), .IN3(n284), .IN4(n467), .QN(n286) );
  AO221X1 U356 ( .IN1(n259), .IN2(state[2]), .IN3(n268), .IN4(n476), .IN5(n289), .Q(n284) );
  AO21X1 U357 ( .IN1(state[4]), .IN2(state[3]), .IN3(n37), .Q(n289) );
  AND2X1 U358 ( .IN1(n290), .IN2(n275), .Q(n268) );
  NAND3X0 U359 ( .IN1(n292), .IN2(n67), .IN3(n259), .QN(n271) );
  NOR3X0 U360 ( .IN1(n80), .IN2(n81), .IN3(n460), .QN(n285) );
  AND2X1 U361 ( .IN1(n272), .IN2(n67), .Q(n288) );
  NAND4X0 U362 ( .IN1(n281), .IN2(n296), .IN3(n256), .IN4(n262), .QN(n295) );
  NAND3X0 U363 ( .IN1(n293), .IN2(n297), .IN3(state[1]), .QN(n262) );
  AND2X1 U364 ( .IN1(state[1]), .IN2(n292), .Q(n274) );
  AO21X1 U365 ( .IN1(reinit), .IN2(found), .IN3(n157), .Q(n296) );
  NAND3X0 U366 ( .IN1(n293), .IN2(n272), .IN3(state[1]), .QN(n157) );
  AND4X1 U367 ( .IN1(n249), .IN2(n266), .IN3(n161), .IN4(n291), .Q(n281) );
  AND3X1 U368 ( .IN1(state[2]), .IN2(n66), .IN3(state[1]), .Q(n290) );
  AND3X1 U369 ( .IN1(state[1]), .IN2(n297), .IN3(n273), .Q(n80) );
  AND3X1 U370 ( .IN1(n297), .IN2(n67), .IN3(n273), .Q(n85) );
  AND2X1 U371 ( .IN1(state[2]), .IN2(state[3]), .Q(n273) );
  NAND4X0 U372 ( .IN1(n251), .IN2(n247), .IN3(n280), .IN4(n122), .QN(n294) );
  NAND3X0 U373 ( .IN1(n297), .IN2(n67), .IN3(n292), .QN(n122) );
  NAND3X0 U374 ( .IN1(n297), .IN2(n67), .IN3(n293), .QN(n280) );
  NAND3X0 U375 ( .IN1(n292), .IN2(n67), .IN3(n275), .QN(n247) );
  NAND3X0 U376 ( .IN1(n67), .IN2(n66), .IN3(state[2]), .QN(n260) );
  learnCosts_DW01_inc_0 add_198 ( .A({neighborCount[15:2], N326, N325}), .SUM(
        {N457, N456, N455, N454, N453, N452, N451, N450, N449, N448, N447, 
        N446, N445, N444, N443, N442}) );
  learnCosts_DW01_inc_1 add_75 ( .A({n[15:2], N192, N191}), .SUM({N231, N230, 
        N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, 
        N217, N216}) );
  learnCosts_DW01_inc_2 r160 ( .A({k[15:2], N249, N248}), .SUM({N296, N295, 
        N294, N293, N292, N291, N290, N289, N288, N287, N286, N285, N284, N283, 
        N282, N281}) );
  learnCosts_DW01_add_11 r159 ( .A(sinkID_address_buf), .B({k[9:2], N249, N248, 
        1'b0}), .CI(1'b0), .SUM({N280, N279, N278, N277, N276, N275, N274, 
        N273, N272, N271, N270}) );
  DFFX1 done_buf_reg ( .D(n384), .CLK(clock), .Q(done) );
  DFFX1 \state_reg[2]  ( .D(N584), .CLK(clock), .Q(state[2]) );
  DFFX1 \knownSinkCount_reg[15]  ( .D(n352), .CLK(clock), .Q(
        knownSinkCount[15]) );
  DFFX1 \knownSinkCount_reg[14]  ( .D(n353), .CLK(clock), .Q(
        knownSinkCount[14]) );
  DFFX1 \knownSinkCount_reg[13]  ( .D(n354), .CLK(clock), .Q(
        knownSinkCount[13]) );
  DFFX1 \knownSinkCount_reg[12]  ( .D(n355), .CLK(clock), .Q(
        knownSinkCount[12]) );
  DFFX1 \knownSinkCount_reg[11]  ( .D(n356), .CLK(clock), .Q(
        knownSinkCount[11]) );
  DFFX1 \knownSinkCount_reg[10]  ( .D(n357), .CLK(clock), .Q(
        knownSinkCount[10]) );
  DFFX1 \knownSinkCount_reg[9]  ( .D(n358), .CLK(clock), .Q(knownSinkCount[9])
         );
  DFFX1 \knownSinkCount_reg[8]  ( .D(n359), .CLK(clock), .Q(knownSinkCount[8])
         );
  DFFX1 \knownSinkCount_reg[7]  ( .D(n360), .CLK(clock), .Q(knownSinkCount[7])
         );
  DFFX1 \knownSinkCount_reg[6]  ( .D(n361), .CLK(clock), .Q(knownSinkCount[6])
         );
  DFFX1 \knownSinkCount_reg[5]  ( .D(n362), .CLK(clock), .Q(knownSinkCount[5])
         );
  DFFX1 \knownSinkCount_reg[4]  ( .D(n363), .CLK(clock), .Q(knownSinkCount[4])
         );
  DFFX1 \knownSinkCount_reg[3]  ( .D(n364), .CLK(clock), .Q(knownSinkCount[3])
         );
  DFFX1 \knownSinkCount_reg[2]  ( .D(n365), .CLK(clock), .Q(knownSinkCount[2])
         );
  DFFX1 \knownSinkCount_reg[1]  ( .D(n366), .CLK(clock), .Q(knownSinkCount[1]), 
        .QN(n63) );
  DFFX1 \knownSinkCount_reg[0]  ( .D(n367), .CLK(clock), .Q(knownSinkCount[0]), 
        .QN(n62) );
  DFFX1 \neighborCount_reg[15]  ( .D(n368), .CLK(clock), .Q(neighborCount[15])
         );
  DFFX1 \neighborCount_reg[14]  ( .D(n369), .CLK(clock), .Q(neighborCount[14])
         );
  DFFX1 \neighborCount_reg[13]  ( .D(n370), .CLK(clock), .Q(neighborCount[13])
         );
  DFFX1 \neighborCount_reg[12]  ( .D(n371), .CLK(clock), .Q(neighborCount[12])
         );
  DFFX1 \neighborCount_reg[11]  ( .D(n372), .CLK(clock), .Q(neighborCount[11])
         );
  DFFX1 \neighborCount_reg[10]  ( .D(n373), .CLK(clock), .Q(neighborCount[10])
         );
  DFFX1 \neighborCount_reg[9]  ( .D(n374), .CLK(clock), .Q(neighborCount[9])
         );
  DFFX1 \neighborCount_reg[8]  ( .D(n375), .CLK(clock), .Q(neighborCount[8])
         );
  DFFX1 \neighborCount_reg[7]  ( .D(n376), .CLK(clock), .Q(neighborCount[7])
         );
  DFFX1 \neighborCount_reg[6]  ( .D(n377), .CLK(clock), .Q(neighborCount[6])
         );
  DFFX1 \neighborCount_reg[5]  ( .D(n378), .CLK(clock), .Q(neighborCount[5])
         );
  DFFX1 \neighborCount_reg[4]  ( .D(n379), .CLK(clock), .Q(neighborCount[4])
         );
  DFFX1 \neighborCount_reg[3]  ( .D(n380), .CLK(clock), .Q(neighborCount[3])
         );
  DFFX1 \neighborCount_reg[2]  ( .D(n381), .CLK(clock), .Q(neighborCount[2]), 
        .QN(N374) );
  DFFX1 \neighborCount_reg[1]  ( .D(n382), .CLK(clock), .Q(N326), .QN(n416) );
  DFFX1 \neighborCount_reg[0]  ( .D(n383), .CLK(clock), .Q(N325), .QN(N383) );
  DFFX1 found_reg ( .D(n337), .CLK(clock), .Q(found) );
  DFFX1 \k_reg[15]  ( .D(n401), .CLK(clock), .Q(k[15]) );
  DFFX1 \k_reg[14]  ( .D(n386), .CLK(clock), .Q(k[14]) );
  DFFX1 \k_reg[13]  ( .D(n387), .CLK(clock), .Q(k[13]) );
  DFFX1 \k_reg[12]  ( .D(n388), .CLK(clock), .Q(k[12]) );
  DFFX1 \k_reg[11]  ( .D(n389), .CLK(clock), .Q(k[11]) );
  DFFX1 \k_reg[10]  ( .D(n390), .CLK(clock), .Q(k[10]) );
  DFFX1 \k_reg[9]  ( .D(n391), .CLK(clock), .Q(k[9]) );
  DFFX1 \k_reg[8]  ( .D(n392), .CLK(clock), .Q(k[8]) );
  DFFX1 \k_reg[7]  ( .D(n393), .CLK(clock), .Q(k[7]) );
  DFFX1 \k_reg[6]  ( .D(n394), .CLK(clock), .Q(k[6]) );
  DFFX1 \k_reg[5]  ( .D(n395), .CLK(clock), .Q(k[5]) );
  DFFX1 \k_reg[4]  ( .D(n396), .CLK(clock), .Q(k[4]) );
  DFFX1 \k_reg[3]  ( .D(n397), .CLK(clock), .Q(k[3]) );
  DFFX1 \k_reg[2]  ( .D(n398), .CLK(clock), .Q(k[2]), .QN(N250) );
  DFFX1 \k_reg[1]  ( .D(n399), .CLK(clock), .Q(N249), .QN(n60) );
  DFFX1 \k_reg[0]  ( .D(n400), .CLK(clock), .Q(N248), .QN(N237) );
  DFFX1 \sinkID_address_buf_reg[2]  ( .D(n317), .CLK(clock), .Q(
        sinkID_address_buf[2]) );
  DFFX1 \sinkID_address_buf_reg[1]  ( .D(n318), .CLK(clock), .Q(
        sinkID_address_buf[1]) );
  DFFX1 \sinkID_address_buf_reg[0]  ( .D(n319), .CLK(clock), .Q(
        sinkID_address_buf[0]) );
  DFFX1 \n_reg[15]  ( .D(n402), .CLK(clock), .Q(n[15]) );
  DFFX1 \n_reg[14]  ( .D(n338), .CLK(clock), .Q(n[14]) );
  DFFX1 \n_reg[13]  ( .D(n339), .CLK(clock), .Q(n[13]) );
  DFFX1 \n_reg[12]  ( .D(n340), .CLK(clock), .Q(n[12]) );
  DFFX1 \n_reg[11]  ( .D(n341), .CLK(clock), .Q(n[11]) );
  DFFX1 \n_reg[10]  ( .D(n342), .CLK(clock), .Q(n[10]) );
  DFFX1 \n_reg[9]  ( .D(n343), .CLK(clock), .Q(n[9]) );
  DFFX1 \n_reg[8]  ( .D(n344), .CLK(clock), .Q(n[8]) );
  DFFX1 \n_reg[7]  ( .D(n345), .CLK(clock), .Q(n[7]) );
  DFFX1 \n_reg[6]  ( .D(n346), .CLK(clock), .Q(n[6]) );
  DFFX1 \n_reg[5]  ( .D(n347), .CLK(clock), .Q(n[5]) );
  DFFX1 \n_reg[4]  ( .D(n348), .CLK(clock), .Q(n[4]) );
  DFFX1 \n_reg[3]  ( .D(n349), .CLK(clock), .Q(n[3]) );
  DFFX1 \n_reg[2]  ( .D(n350), .CLK(clock), .Q(n[2]), .QN(N211) );
  DFFX1 \n_reg[1]  ( .D(n351), .CLK(clock), .Q(N192), .QN(n417) );
  DFFX1 \n_reg[0]  ( .D(n403), .CLK(clock), .Q(N191) );
  DFFX1 \sinkID_address_buf_reg[3]  ( .D(n316), .CLK(clock), .Q(
        sinkID_address_buf[3]) );
  DFFX1 \data_out_buf_reg[15]  ( .D(n321), .CLK(clock), .Q(data_out[15]) );
  DFFX1 \data_out_buf_reg[14]  ( .D(n322), .CLK(clock), .Q(data_out[14]) );
  DFFX1 \data_out_buf_reg[13]  ( .D(n323), .CLK(clock), .Q(data_out[13]) );
  DFFX1 \data_out_buf_reg[12]  ( .D(n324), .CLK(clock), .Q(data_out[12]) );
  DFFX1 \data_out_buf_reg[11]  ( .D(n325), .CLK(clock), .Q(data_out[11]) );
  DFFX1 \data_out_buf_reg[10]  ( .D(n326), .CLK(clock), .Q(data_out[10]) );
  DFFX1 \data_out_buf_reg[9]  ( .D(n327), .CLK(clock), .Q(data_out[9]) );
  DFFX1 \data_out_buf_reg[8]  ( .D(n328), .CLK(clock), .Q(data_out[8]) );
  DFFX1 \data_out_buf_reg[7]  ( .D(n329), .CLK(clock), .Q(data_out[7]) );
  DFFX1 \data_out_buf_reg[6]  ( .D(n330), .CLK(clock), .Q(data_out[6]) );
  DFFX1 \data_out_buf_reg[5]  ( .D(n331), .CLK(clock), .Q(data_out[5]) );
  DFFX1 \data_out_buf_reg[4]  ( .D(n332), .CLK(clock), .Q(data_out[4]) );
  DFFX1 \data_out_buf_reg[3]  ( .D(n333), .CLK(clock), .Q(data_out[3]) );
  DFFX1 \data_out_buf_reg[2]  ( .D(n334), .CLK(clock), .Q(data_out[2]) );
  DFFX1 \data_out_buf_reg[1]  ( .D(n335), .CLK(clock), .Q(data_out[1]) );
  DFFX1 \data_out_buf_reg[0]  ( .D(n336), .CLK(clock), .Q(data_out[0]) );
  DFFX1 \state_reg[0]  ( .D(N582), .CLK(clock), .Q(state[0]), .QN(n68) );
  DFFX1 \state_reg[3]  ( .D(N585), .CLK(clock), .Q(state[3]), .QN(n66) );
  DFFX1 \state_reg[1]  ( .D(N583), .CLK(clock), .Q(state[1]), .QN(n67) );
  DFFX1 \state_reg[4]  ( .D(N586), .CLK(clock), .Q(state[4]), .QN(n61) );
  DFFX1 wr_en_buf_reg ( .D(n320), .CLK(clock), .Q(wr_en), .QN(n1) );
  NOR2X0 U3 ( .IN1(n37), .IN2(n160), .QN(n265) );
  INVX0 U4 ( .INP(n156), .ZN(n464) );
  INVX0 U5 ( .INP(n243), .ZN(n461) );
  INVX0 U6 ( .INP(N203), .ZN(n477) );
  NOR2X0 U7 ( .IN1(n37), .IN2(n149), .QN(n150) );
  OA21X1 U8 ( .IN1(n477), .IN2(n251), .IN3(n466), .Q(n151) );
  NOR3X0 U9 ( .IN1(n37), .IN2(n252), .IN3(n251), .QN(n253) );
  INVX0 U10 ( .INP(nrst), .ZN(n37) );
  NOR2X0 U11 ( .IN1(n37), .IN2(n159), .QN(n162) );
  OA21X1 U12 ( .IN1(n251), .IN2(n477), .IN3(n146), .Q(n283) );
  OA21X1 U13 ( .IN1(n251), .IN2(N203), .IN3(n466), .Q(n252) );
  NOR2X0 U14 ( .IN1(n256), .IN2(n37), .QN(n255) );
  NOR2X0 U15 ( .IN1(n121), .IN2(n37), .QN(n257) );
  AND2X1 U16 ( .IN1(n466), .IN2(n121), .Q(n140) );
  AND2X1 U17 ( .IN1(n466), .IN2(n256), .Q(n254) );
  NOR2X0 U18 ( .IN1(n37), .IN2(n72), .QN(n73) );
  NOR2X0 U19 ( .IN1(N203), .IN2(n251), .QN(n287) );
  NOR2X0 U20 ( .IN1(n276), .IN2(n37), .QN(N585) );
  NAND2X1 U21 ( .IN1(N188), .IN2(n471), .QN(n278) );
  INVX0 U22 ( .INP(N234), .ZN(n475) );
  NOR2X0 U23 ( .IN1(n468), .IN2(N234), .QN(n82) );
  NOR2X0 U24 ( .IN1(n79), .IN2(n465), .QN(n156) );
  NOR2X0 U25 ( .IN1(n462), .IN2(n473), .QN(n243) );
  NOR2X0 U26 ( .IN1(n246), .IN2(n475), .QN(n83) );
  INVX0 U27 ( .INP(n158), .ZN(n468) );
  INVX0 U28 ( .INP(n123), .ZN(n472) );
  OA21X1 U29 ( .IN1(n246), .IN2(N234), .IN3(n279), .Q(n282) );
  INVX0 U30 ( .INP(n146), .ZN(n471) );
  INVX0 U31 ( .INP(n143), .ZN(n460) );
  INVX0 U32 ( .INP(n279), .ZN(n473) );
  INVX0 U33 ( .INP(n251), .ZN(n469) );
  INVX0 U34 ( .INP(n36), .ZN(n35) );
  INVX0 U35 ( .INP(n9), .ZN(n8) );
  INVX0 U37 ( .INP(n34), .ZN(n33) );
  INVX0 U38 ( .INP(n32), .ZN(n31) );
  INVX0 U39 ( .INP(n30), .ZN(n29) );
  INVX0 U40 ( .INP(n28), .ZN(n27) );
  INVX0 U41 ( .INP(n26), .ZN(n25) );
  INVX0 U42 ( .INP(n24), .ZN(n23) );
  INVX0 U43 ( .INP(n22), .ZN(n21) );
  INVX0 U44 ( .INP(n20), .ZN(n19) );
  INVX0 U45 ( .INP(n18), .ZN(n17) );
  INVX0 U46 ( .INP(n16), .ZN(n14) );
  INVX0 U47 ( .INP(n13), .ZN(n12) );
  INVX0 U48 ( .INP(n11), .ZN(n10) );
  AND2X1 U49 ( .IN1(n151), .IN2(n152), .Q(n149) );
  AND4X1 U50 ( .IN1(n244), .IN2(n141), .IN3(n145), .IN4(n245), .Q(n159) );
  NAND2X1 U51 ( .IN1(N234), .IN2(n158), .QN(n245) );
  AND4X1 U52 ( .IN1(n140), .IN2(n141), .IN3(n468), .IN4(n142), .Q(n72) );
  AND3X1 U53 ( .IN1(n466), .IN2(n152), .IN3(n160), .Q(n264) );
  INVX0 U54 ( .INP(n282), .ZN(n467) );
  INVX0 U55 ( .INP(n263), .ZN(n466) );
  NOR2X0 U56 ( .IN1(n263), .IN2(n465), .QN(n244) );
  NOR2X0 U57 ( .IN1(n475), .IN2(n247), .QN(n81) );
  INVX0 U58 ( .INP(n152), .ZN(n474) );
  NAND2X1 U59 ( .IN1(n291), .IN2(n271), .QN(n79) );
  INVX0 U60 ( .INP(n157), .ZN(n463) );
  NAND2X1 U61 ( .IN1(n246), .IN2(n247), .QN(n158) );
  NAND2X1 U62 ( .IN1(n470), .IN2(n272), .QN(n246) );
  NAND2X1 U63 ( .IN1(n470), .IN2(n297), .QN(n251) );
  INVX0 U64 ( .INP(n262), .ZN(n465) );
  NAND2X1 U65 ( .IN1(n274), .IN2(n259), .QN(n123) );
  NAND2X1 U66 ( .IN1(n274), .IN2(n297), .QN(n256) );
  INVX0 U67 ( .INP(n260), .ZN(n470) );
  NAND2X1 U68 ( .IN1(n274), .IN2(n272), .QN(n146) );
  NAND2X1 U69 ( .IN1(n288), .IN2(n292), .QN(n121) );
  INVX0 U70 ( .INP(n280), .ZN(n462) );
  NAND2X1 U71 ( .IN1(n293), .IN2(n288), .QN(n143) );
  NAND2X1 U72 ( .IN1(n273), .IN2(n288), .QN(n279) );
  NAND2X1 U73 ( .IN1(n290), .IN2(n297), .QN(n291) );
  NOR2X0 U74 ( .IN1(n85), .IN2(n5), .QN(n249) );
  NAND2X1 U75 ( .IN1(n470), .IN2(n275), .QN(n161) );
  NAND2X1 U76 ( .IN1(n290), .IN2(n272), .QN(n266) );
  NAND2X1 U77 ( .IN1(n274), .IN2(n275), .QN(n267) );
  INVX0 U78 ( .INP(data_in[3]), .ZN(n11) );
  INVX0 U79 ( .INP(data_in[5]), .ZN(n16) );
  INVX0 U80 ( .INP(data_in[7]), .ZN(n20) );
  INVX0 U81 ( .INP(data_in[11]), .ZN(n28) );
  INVX0 U82 ( .INP(data_in[13]), .ZN(n32) );
  INVX0 U83 ( .INP(data_in[15]), .ZN(n36) );
  INVX0 U84 ( .INP(data_in[9]), .ZN(n24) );
  INVX0 U85 ( .INP(data_in[2]), .ZN(n9) );
  INVX0 U86 ( .INP(data_in[10]), .ZN(n26) );
  INVX0 U149 ( .INP(data_in[4]), .ZN(n13) );
  INVX0 U150 ( .INP(data_in[6]), .ZN(n18) );
  INVX0 U151 ( .INP(data_in[8]), .ZN(n22) );
  INVX0 U152 ( .INP(data_in[12]), .ZN(n30) );
  INVX0 U153 ( .INP(data_in[14]), .ZN(n34) );
  INVX0 U154 ( .INP(fValue[0]), .ZN(n459) );
  INVX0 U164 ( .INP(data_in[1]), .ZN(n7) );
  INVX0 U165 ( .INP(fsourceID[1]), .ZN(n441) );
  NOR2X0 U166 ( .IN1(n37), .IN2(n262), .QN(n261) );
  INVX0 U167 ( .INP(en), .ZN(n476) );
  NOR2X0 U170 ( .IN1(n260), .IN2(n37), .QN(n258) );
  OA21X1 U171 ( .IN1(n294), .IN2(n295), .IN3(nrst), .Q(N582) );
  NOR2X0 U172 ( .IN1(n151), .IN2(n37), .QN(n250) );
  OAI21X1 U271 ( .IN1(n1), .IN2(n154), .IN3(n2), .QN(n320) );
  NAND3X0 U305 ( .IN1(n154), .IN2(n155), .IN3(nrst), .QN(n2) );
  INVX0 U322 ( .INP(fsourceID[0]), .ZN(n440) );
  NAND2X1 U341 ( .IN1(n123), .IN2(n122), .QN(n134) );
  NOR2X0 U345 ( .IN1(state[4]), .IN2(state[0]), .QN(n297) );
  NOR2X0 U377 ( .IN1(n68), .IN2(state[4]), .QN(n272) );
  NOR2X0 U378 ( .IN1(n61), .IN2(state[0]), .QN(n275) );
  AND3X1 U379 ( .IN1(state[1]), .IN2(n297), .IN3(n273), .Q(n5) );
  NOR2X0 U380 ( .IN1(state[3]), .IN2(state[2]), .QN(n292) );
  NOR2X0 U381 ( .IN1(n66), .IN2(state[2]), .QN(n293) );
  NOR2X0 U382 ( .IN1(n61), .IN2(n68), .QN(n259) );
  NOR2X0 U383 ( .IN1(n79), .IN2(n248), .QN(n145) );
  AND3X1 U384 ( .IN1(n297), .IN2(n67), .IN3(n273), .Q(n3) );
  AND3X1 U385 ( .IN1(n297), .IN2(n67), .IN3(n273), .Q(n4) );
  AND3X1 U386 ( .IN1(state[1]), .IN2(n297), .IN3(n273), .Q(n6) );
  XOR2X1 U387 ( .IN1(neighborCount[9]), .IN2(\add_157/carry[10] ), .Q(N356) );
  XOR2X1 U388 ( .IN1(neighborCount[9]), .IN2(\add_163/carry[10] ), .Q(N367) );
  XNOR2X1 U389 ( .IN1(k[9]), .IN2(\add_84/carry[10] ), .Q(N246) );
  XOR2X1 U390 ( .IN1(k[9]), .IN2(\r158/carry[10] ), .Q(N257) );
  XNOR2X1 U391 ( .IN1(neighborCount[9]), .IN2(\add_176/carry[10] ), .Q(N392)
         );
  XOR2X1 U392 ( .IN1(n[9]), .IN2(\add_59/carry[10] ), .Q(N200) );
  XOR2X1 U393 ( .IN1(n[9]), .IN2(\add_108/carry[10] ), .Q(N307) );
  XOR2X1 U394 ( .IN1(n[9]), .IN2(\add_114/carry[10] ), .Q(N318) );
  XOR2X1 U395 ( .IN1(neighborCount[9]), .IN2(\add_151/carry[10] ), .Q(N345) );
  XOR2X1 U396 ( .IN1(neighborCount[9]), .IN2(\add_144/carry[10] ), .Q(N334) );
  AND2X1 U397 ( .IN1(\add_157/carry[9] ), .IN2(neighborCount[8]), .Q(
        \add_157/carry[10] ) );
  XOR2X1 U398 ( .IN1(neighborCount[8]), .IN2(\add_157/carry[9] ), .Q(N355) );
  AND2X1 U399 ( .IN1(\add_163/carry[9] ), .IN2(neighborCount[8]), .Q(
        \add_163/carry[10] ) );
  XOR2X1 U400 ( .IN1(neighborCount[8]), .IN2(\add_163/carry[9] ), .Q(N366) );
  OR2X1 U401 ( .IN1(k[8]), .IN2(\add_84/carry[9] ), .Q(\add_84/carry[10] ) );
  XNOR2X1 U402 ( .IN1(\add_84/carry[9] ), .IN2(k[8]), .Q(N245) );
  AND2X1 U403 ( .IN1(\r158/carry[9] ), .IN2(k[8]), .Q(\r158/carry[10] ) );
  XOR2X1 U404 ( .IN1(k[8]), .IN2(\r158/carry[9] ), .Q(N256) );
  OR2X1 U405 ( .IN1(neighborCount[8]), .IN2(\add_176/carry[9] ), .Q(
        \add_176/carry[10] ) );
  XNOR2X1 U406 ( .IN1(\add_176/carry[9] ), .IN2(neighborCount[8]), .Q(N391) );
  AND2X1 U407 ( .IN1(\add_59/carry[9] ), .IN2(n[8]), .Q(\add_59/carry[10] ) );
  XOR2X1 U408 ( .IN1(n[8]), .IN2(\add_59/carry[9] ), .Q(N199) );
  AND2X1 U409 ( .IN1(\add_108/carry[9] ), .IN2(n[8]), .Q(\add_108/carry[10] )
         );
  XOR2X1 U410 ( .IN1(n[8]), .IN2(\add_108/carry[9] ), .Q(N306) );
  AND2X1 U411 ( .IN1(\add_114/carry[9] ), .IN2(n[8]), .Q(\add_114/carry[10] )
         );
  XOR2X1 U412 ( .IN1(n[8]), .IN2(\add_114/carry[9] ), .Q(N317) );
  AND2X1 U413 ( .IN1(\add_151/carry[9] ), .IN2(neighborCount[8]), .Q(
        \add_151/carry[10] ) );
  XOR2X1 U414 ( .IN1(neighborCount[8]), .IN2(\add_151/carry[9] ), .Q(N344) );
  AND2X1 U415 ( .IN1(\add_144/carry[9] ), .IN2(neighborCount[8]), .Q(
        \add_144/carry[10] ) );
  XOR2X1 U416 ( .IN1(neighborCount[8]), .IN2(\add_144/carry[9] ), .Q(N333) );
  OR2X1 U417 ( .IN1(n[7]), .IN2(\add_114/carry[8] ), .Q(\add_114/carry[9] ) );
  XNOR2X1 U418 ( .IN1(\add_114/carry[8] ), .IN2(n[7]), .Q(N316) );
  OR2X1 U419 ( .IN1(neighborCount[7]), .IN2(\add_151/carry[8] ), .Q(
        \add_151/carry[9] ) );
  XNOR2X1 U420 ( .IN1(\add_151/carry[8] ), .IN2(neighborCount[7]), .Q(N343) );
  AND2X1 U421 ( .IN1(\add_144/carry[8] ), .IN2(neighborCount[7]), .Q(
        \add_144/carry[9] ) );
  XOR2X1 U422 ( .IN1(neighborCount[7]), .IN2(\add_144/carry[8] ), .Q(N332) );
  AND2X1 U423 ( .IN1(\add_59/carry[8] ), .IN2(n[7]), .Q(\add_59/carry[9] ) );
  XOR2X1 U424 ( .IN1(n[7]), .IN2(\add_59/carry[8] ), .Q(N198) );
  OR2X1 U425 ( .IN1(n[7]), .IN2(\add_108/carry[8] ), .Q(\add_108/carry[9] ) );
  XNOR2X1 U426 ( .IN1(\add_108/carry[8] ), .IN2(n[7]), .Q(N305) );
  OR2X1 U427 ( .IN1(neighborCount[7]), .IN2(\add_157/carry[8] ), .Q(
        \add_157/carry[9] ) );
  XNOR2X1 U428 ( .IN1(\add_157/carry[8] ), .IN2(neighborCount[7]), .Q(N354) );
  AND2X1 U429 ( .IN1(\add_163/carry[8] ), .IN2(neighborCount[7]), .Q(
        \add_163/carry[9] ) );
  XOR2X1 U430 ( .IN1(neighborCount[7]), .IN2(\add_163/carry[8] ), .Q(N365) );
  AND2X1 U431 ( .IN1(\add_84/carry[8] ), .IN2(k[7]), .Q(\add_84/carry[9] ) );
  XOR2X1 U432 ( .IN1(k[7]), .IN2(\add_84/carry[8] ), .Q(N244) );
  AND2X1 U433 ( .IN1(\r158/carry[8] ), .IN2(k[7]), .Q(\r158/carry[9] ) );
  XOR2X1 U434 ( .IN1(k[7]), .IN2(\r158/carry[8] ), .Q(N255) );
  AND2X1 U435 ( .IN1(\add_176/carry[8] ), .IN2(neighborCount[7]), .Q(
        \add_176/carry[9] ) );
  XOR2X1 U436 ( .IN1(neighborCount[7]), .IN2(\add_176/carry[8] ), .Q(N390) );
  OR2X1 U437 ( .IN1(neighborCount[6]), .IN2(\add_157/carry[7] ), .Q(
        \add_157/carry[8] ) );
  XNOR2X1 U438 ( .IN1(\add_157/carry[7] ), .IN2(neighborCount[6]), .Q(N353) );
  OR2X1 U439 ( .IN1(neighborCount[6]), .IN2(\add_163/carry[7] ), .Q(
        \add_163/carry[8] ) );
  XNOR2X1 U440 ( .IN1(\add_163/carry[7] ), .IN2(neighborCount[6]), .Q(N364) );
  OR2X1 U441 ( .IN1(k[6]), .IN2(\add_84/carry[7] ), .Q(\add_84/carry[8] ) );
  XNOR2X1 U442 ( .IN1(\add_84/carry[7] ), .IN2(k[6]), .Q(N243) );
  AND2X1 U443 ( .IN1(\r158/carry[7] ), .IN2(k[6]), .Q(\r158/carry[8] ) );
  XOR2X1 U444 ( .IN1(k[6]), .IN2(\r158/carry[7] ), .Q(N254) );
  OR2X1 U445 ( .IN1(neighborCount[6]), .IN2(\add_176/carry[7] ), .Q(
        \add_176/carry[8] ) );
  XNOR2X1 U446 ( .IN1(\add_176/carry[7] ), .IN2(neighborCount[6]), .Q(N389) );
  AND2X1 U447 ( .IN1(\add_59/carry[7] ), .IN2(n[6]), .Q(\add_59/carry[8] ) );
  XOR2X1 U448 ( .IN1(n[6]), .IN2(\add_59/carry[7] ), .Q(N197) );
  AND2X1 U449 ( .IN1(\add_108/carry[7] ), .IN2(n[6]), .Q(\add_108/carry[8] )
         );
  XOR2X1 U450 ( .IN1(n[6]), .IN2(\add_108/carry[7] ), .Q(N304) );
  OR2X1 U451 ( .IN1(n[6]), .IN2(\add_114/carry[7] ), .Q(\add_114/carry[8] ) );
  XNOR2X1 U452 ( .IN1(\add_114/carry[7] ), .IN2(n[6]), .Q(N315) );
  AND2X1 U453 ( .IN1(\add_151/carry[7] ), .IN2(neighborCount[6]), .Q(
        \add_151/carry[8] ) );
  XOR2X1 U454 ( .IN1(neighborCount[6]), .IN2(\add_151/carry[7] ), .Q(N342) );
  AND2X1 U455 ( .IN1(\add_144/carry[7] ), .IN2(neighborCount[6]), .Q(
        \add_144/carry[8] ) );
  XOR2X1 U456 ( .IN1(neighborCount[6]), .IN2(\add_144/carry[7] ), .Q(N331) );
  OR2X1 U457 ( .IN1(n[5]), .IN2(\add_114/carry[6] ), .Q(\add_114/carry[7] ) );
  XNOR2X1 U458 ( .IN1(\add_114/carry[6] ), .IN2(n[5]), .Q(N314) );
  OR2X1 U459 ( .IN1(neighborCount[5]), .IN2(\add_151/carry[6] ), .Q(
        \add_151/carry[7] ) );
  XNOR2X1 U460 ( .IN1(\add_151/carry[6] ), .IN2(neighborCount[5]), .Q(N341) );
  OR2X1 U461 ( .IN1(neighborCount[5]), .IN2(\add_144/carry[6] ), .Q(
        \add_144/carry[7] ) );
  XNOR2X1 U462 ( .IN1(\add_144/carry[6] ), .IN2(neighborCount[5]), .Q(N330) );
  OR2X1 U463 ( .IN1(n[5]), .IN2(\add_59/carry[6] ), .Q(\add_59/carry[7] ) );
  XNOR2X1 U464 ( .IN1(\add_59/carry[6] ), .IN2(n[5]), .Q(N196) );
  OR2X1 U465 ( .IN1(n[5]), .IN2(\add_108/carry[6] ), .Q(\add_108/carry[7] ) );
  XNOR2X1 U466 ( .IN1(\add_108/carry[6] ), .IN2(n[5]), .Q(N303) );
  OR2X1 U467 ( .IN1(neighborCount[5]), .IN2(\add_157/carry[6] ), .Q(
        \add_157/carry[7] ) );
  XNOR2X1 U468 ( .IN1(\add_157/carry[6] ), .IN2(neighborCount[5]), .Q(N352) );
  OR2X1 U469 ( .IN1(neighborCount[5]), .IN2(\add_163/carry[6] ), .Q(
        \add_163/carry[7] ) );
  XNOR2X1 U470 ( .IN1(\add_163/carry[6] ), .IN2(neighborCount[5]), .Q(N363) );
  AND2X1 U471 ( .IN1(\add_84/carry[6] ), .IN2(k[5]), .Q(\add_84/carry[7] ) );
  XOR2X1 U472 ( .IN1(k[5]), .IN2(\add_84/carry[6] ), .Q(N242) );
  AND2X1 U473 ( .IN1(\r158/carry[6] ), .IN2(k[5]), .Q(\r158/carry[7] ) );
  XOR2X1 U474 ( .IN1(k[5]), .IN2(\r158/carry[6] ), .Q(N253) );
  AND2X1 U475 ( .IN1(\add_176/carry[6] ), .IN2(neighborCount[5]), .Q(
        \add_176/carry[7] ) );
  XOR2X1 U476 ( .IN1(neighborCount[5]), .IN2(\add_176/carry[6] ), .Q(N388) );
  AND2X1 U477 ( .IN1(\add_114/carry[5] ), .IN2(n[4]), .Q(\add_114/carry[6] )
         );
  XOR2X1 U478 ( .IN1(n[4]), .IN2(\add_114/carry[5] ), .Q(N313) );
  AND2X1 U479 ( .IN1(\add_151/carry[5] ), .IN2(neighborCount[4]), .Q(
        \add_151/carry[6] ) );
  XOR2X1 U480 ( .IN1(neighborCount[4]), .IN2(\add_151/carry[5] ), .Q(N340) );
  AND2X1 U481 ( .IN1(\add_144/carry[5] ), .IN2(neighborCount[4]), .Q(
        \add_144/carry[6] ) );
  XOR2X1 U482 ( .IN1(neighborCount[4]), .IN2(\add_144/carry[5] ), .Q(N329) );
  AND2X1 U483 ( .IN1(\add_59/carry[5] ), .IN2(n[4]), .Q(\add_59/carry[6] ) );
  XOR2X1 U484 ( .IN1(n[4]), .IN2(\add_59/carry[5] ), .Q(N195) );
  AND2X1 U485 ( .IN1(\add_108/carry[5] ), .IN2(n[4]), .Q(\add_108/carry[6] )
         );
  XOR2X1 U486 ( .IN1(n[4]), .IN2(\add_108/carry[5] ), .Q(N302) );
  AND2X1 U487 ( .IN1(\add_157/carry[5] ), .IN2(neighborCount[4]), .Q(
        \add_157/carry[6] ) );
  XOR2X1 U488 ( .IN1(neighborCount[4]), .IN2(\add_157/carry[5] ), .Q(N351) );
  AND2X1 U489 ( .IN1(\add_163/carry[5] ), .IN2(neighborCount[4]), .Q(
        \add_163/carry[6] ) );
  XOR2X1 U490 ( .IN1(neighborCount[4]), .IN2(\add_163/carry[5] ), .Q(N362) );
  AND2X1 U491 ( .IN1(\add_84/carry[5] ), .IN2(k[4]), .Q(\add_84/carry[6] ) );
  XOR2X1 U492 ( .IN1(k[4]), .IN2(\add_84/carry[5] ), .Q(N241) );
  AND2X1 U493 ( .IN1(\r158/carry[5] ), .IN2(k[4]), .Q(\r158/carry[6] ) );
  XOR2X1 U494 ( .IN1(k[4]), .IN2(\r158/carry[5] ), .Q(N252) );
  AND2X1 U495 ( .IN1(\add_176/carry[5] ), .IN2(neighborCount[4]), .Q(
        \add_176/carry[6] ) );
  XOR2X1 U496 ( .IN1(neighborCount[4]), .IN2(\add_176/carry[5] ), .Q(N387) );
  AND2X1 U497 ( .IN1(n[2]), .IN2(n[3]), .Q(\add_114/carry[5] ) );
  XOR2X1 U498 ( .IN1(n[3]), .IN2(n[2]), .Q(N312) );
  AND2X1 U499 ( .IN1(neighborCount[2]), .IN2(neighborCount[3]), .Q(
        \add_151/carry[5] ) );
  XOR2X1 U500 ( .IN1(neighborCount[3]), .IN2(neighborCount[2]), .Q(N339) );
  AND2X1 U501 ( .IN1(neighborCount[2]), .IN2(neighborCount[3]), .Q(
        \add_144/carry[5] ) );
  XOR2X1 U502 ( .IN1(neighborCount[3]), .IN2(neighborCount[2]), .Q(N328) );
  AND2X1 U503 ( .IN1(n[2]), .IN2(n[3]), .Q(\add_59/carry[5] ) );
  XOR2X1 U504 ( .IN1(n[3]), .IN2(n[2]), .Q(N194) );
  AND2X1 U505 ( .IN1(n[2]), .IN2(n[3]), .Q(\add_108/carry[5] ) );
  XOR2X1 U506 ( .IN1(n[3]), .IN2(n[2]), .Q(N301) );
  AND2X1 U507 ( .IN1(neighborCount[2]), .IN2(neighborCount[3]), .Q(
        \add_157/carry[5] ) );
  XOR2X1 U508 ( .IN1(neighborCount[3]), .IN2(neighborCount[2]), .Q(N350) );
  AND2X1 U509 ( .IN1(neighborCount[2]), .IN2(neighborCount[3]), .Q(
        \add_163/carry[5] ) );
  XOR2X1 U510 ( .IN1(neighborCount[3]), .IN2(neighborCount[2]), .Q(N361) );
  AND2X1 U511 ( .IN1(\add_84/carry[4] ), .IN2(k[3]), .Q(\add_84/carry[5] ) );
  XOR2X1 U512 ( .IN1(k[3]), .IN2(\add_84/carry[4] ), .Q(N240) );
  AND2X1 U513 ( .IN1(k[2]), .IN2(k[3]), .Q(\r158/carry[5] ) );
  XOR2X1 U514 ( .IN1(k[3]), .IN2(k[2]), .Q(N251) );
  AND2X1 U515 ( .IN1(\add_176/carry[4] ), .IN2(neighborCount[3]), .Q(
        \add_176/carry[5] ) );
  XOR2X1 U516 ( .IN1(neighborCount[3]), .IN2(\add_176/carry[4] ), .Q(N386) );
  OR2X1 U517 ( .IN1(k[2]), .IN2(\add_84/carry[3] ), .Q(\add_84/carry[4] ) );
  XNOR2X1 U518 ( .IN1(\add_84/carry[3] ), .IN2(k[2]), .Q(N239) );
  OR2X1 U519 ( .IN1(neighborCount[2]), .IN2(\add_176/carry[3] ), .Q(
        \add_176/carry[4] ) );
  XNOR2X1 U520 ( .IN1(\add_176/carry[3] ), .IN2(neighborCount[2]), .Q(N385) );
  OR2X1 U521 ( .IN1(N249), .IN2(N248), .Q(\add_84/carry[3] ) );
  XNOR2X1 U522 ( .IN1(N248), .IN2(N249), .Q(N238) );
  OR2X1 U523 ( .IN1(N326), .IN2(N325), .Q(\add_176/carry[3] ) );
  XNOR2X1 U524 ( .IN1(N325), .IN2(N326), .Q(N384) );
  XOR2X1 U525 ( .IN1(neighborCount[6]), .IN2(\add_169/carry[10] ), .Q(N378) );
  XOR2X1 U526 ( .IN1(n[6]), .IN2(\add_72/carry[10] ), .Q(N215) );
  OR2X1 U527 ( .IN1(neighborCount[5]), .IN2(\add_169/carry[9] ), .Q(
        \add_169/carry[10] ) );
  XNOR2X1 U528 ( .IN1(\add_169/carry[9] ), .IN2(neighborCount[5]), .Q(N377) );
  OR2X1 U529 ( .IN1(n[5]), .IN2(\add_72/carry[9] ), .Q(\add_72/carry[10] ) );
  XNOR2X1 U530 ( .IN1(\add_72/carry[9] ), .IN2(n[5]), .Q(N214) );
  AND2X1 U531 ( .IN1(\add_169/carry[8] ), .IN2(neighborCount[4]), .Q(
        \add_169/carry[9] ) );
  XOR2X1 U532 ( .IN1(neighborCount[4]), .IN2(\add_169/carry[8] ), .Q(N376) );
  AND2X1 U533 ( .IN1(\add_72/carry[8] ), .IN2(n[4]), .Q(\add_72/carry[9] ) );
  XOR2X1 U534 ( .IN1(n[4]), .IN2(\add_72/carry[8] ), .Q(N213) );
  AND2X1 U535 ( .IN1(neighborCount[2]), .IN2(neighborCount[3]), .Q(
        \add_169/carry[8] ) );
  XOR2X1 U536 ( .IN1(neighborCount[3]), .IN2(neighborCount[2]), .Q(N375) );
  AND2X1 U537 ( .IN1(n[2]), .IN2(n[3]), .Q(\add_72/carry[8] ) );
  XOR2X1 U538 ( .IN1(n[3]), .IN2(n[2]), .Q(N212) );
  XOR2X1 U539 ( .IN1(knownSinkCount[15]), .IN2(k[15]), .Q(n43) );
  XOR2X1 U540 ( .IN1(knownSinkCount[2]), .IN2(k[2]), .Q(n42) );
  NOR2X0 U541 ( .IN1(n62), .IN2(N248), .QN(n38) );
  OA22X1 U542 ( .IN1(knownSinkCount[1]), .IN2(n38), .IN3(n38), .IN4(n60), .Q(
        n41) );
  AND2X1 U543 ( .IN1(N248), .IN2(n62), .Q(n39) );
  OA22X1 U544 ( .IN1(n39), .IN2(n63), .IN3(N249), .IN4(n39), .Q(n40) );
  OR4X1 U545 ( .IN1(n43), .IN2(n42), .IN3(n41), .IN4(n40), .Q(n59) );
  XNOR2X1 U546 ( .IN1(knownSinkCount[6]), .IN2(k[6]), .Q(n47) );
  XNOR2X1 U547 ( .IN1(knownSinkCount[5]), .IN2(k[5]), .Q(n46) );
  XNOR2X1 U548 ( .IN1(knownSinkCount[4]), .IN2(k[4]), .Q(n45) );
  XNOR2X1 U549 ( .IN1(knownSinkCount[3]), .IN2(k[3]), .Q(n44) );
  NAND4X0 U550 ( .IN1(n47), .IN2(n46), .IN3(n45), .IN4(n44), .QN(n58) );
  XNOR2X1 U551 ( .IN1(knownSinkCount[10]), .IN2(k[10]), .Q(n51) );
  XNOR2X1 U552 ( .IN1(knownSinkCount[9]), .IN2(k[9]), .Q(n50) );
  XNOR2X1 U553 ( .IN1(knownSinkCount[8]), .IN2(k[8]), .Q(n49) );
  XNOR2X1 U554 ( .IN1(knownSinkCount[7]), .IN2(k[7]), .Q(n48) );
  NAND4X0 U555 ( .IN1(n51), .IN2(n50), .IN3(n49), .IN4(n48), .QN(n57) );
  XNOR2X1 U556 ( .IN1(knownSinkCount[14]), .IN2(k[14]), .Q(n55) );
  XNOR2X1 U557 ( .IN1(knownSinkCount[13]), .IN2(k[13]), .Q(n54) );
  XNOR2X1 U558 ( .IN1(knownSinkCount[12]), .IN2(k[12]), .Q(n53) );
  XNOR2X1 U559 ( .IN1(knownSinkCount[11]), .IN2(k[11]), .Q(n52) );
  NAND4X0 U560 ( .IN1(n55), .IN2(n54), .IN3(n53), .IN4(n52), .QN(n56) );
  NOR4X0 U561 ( .IN1(n59), .IN2(n58), .IN3(n57), .IN4(n56), .QN(N234) );
  XOR2X1 U562 ( .IN1(neighborCount[15]), .IN2(n[15]), .Q(n136) );
  XOR2X1 U563 ( .IN1(neighborCount[2]), .IN2(n[2]), .Q(n71) );
  NOR2X0 U564 ( .IN1(N383), .IN2(N191), .QN(n64) );
  OA22X1 U565 ( .IN1(N326), .IN2(n64), .IN3(n64), .IN4(n417), .Q(n70) );
  AND2X1 U566 ( .IN1(N191), .IN2(N383), .Q(n65) );
  OA22X1 U567 ( .IN1(n65), .IN2(n416), .IN3(N192), .IN4(n65), .Q(n69) );
  OR4X1 U568 ( .IN1(n136), .IN2(n71), .IN3(n70), .IN4(n69), .Q(n415) );
  XNOR2X1 U569 ( .IN1(neighborCount[6]), .IN2(n[6]), .Q(n153) );
  XNOR2X1 U570 ( .IN1(neighborCount[5]), .IN2(n[5]), .Q(n139) );
  XNOR2X1 U571 ( .IN1(neighborCount[4]), .IN2(n[4]), .Q(n138) );
  XNOR2X1 U572 ( .IN1(neighborCount[3]), .IN2(n[3]), .Q(n137) );
  NAND4X0 U573 ( .IN1(n153), .IN2(n139), .IN3(n138), .IN4(n137), .QN(n414) );
  XNOR2X1 U574 ( .IN1(neighborCount[10]), .IN2(n[10]), .Q(n407) );
  XNOR2X1 U575 ( .IN1(neighborCount[9]), .IN2(n[9]), .Q(n406) );
  XNOR2X1 U576 ( .IN1(neighborCount[8]), .IN2(n[8]), .Q(n405) );
  XNOR2X1 U577 ( .IN1(neighborCount[7]), .IN2(n[7]), .Q(n404) );
  NAND4X0 U578 ( .IN1(n407), .IN2(n406), .IN3(n405), .IN4(n404), .QN(n413) );
  XNOR2X1 U579 ( .IN1(neighborCount[14]), .IN2(n[14]), .Q(n411) );
  XNOR2X1 U580 ( .IN1(neighborCount[13]), .IN2(n[13]), .Q(n410) );
  XNOR2X1 U581 ( .IN1(neighborCount[12]), .IN2(n[12]), .Q(n409) );
  XNOR2X1 U582 ( .IN1(neighborCount[11]), .IN2(n[11]), .Q(n408) );
  NAND4X0 U583 ( .IN1(n411), .IN2(n410), .IN3(n409), .IN4(n408), .QN(n412) );
  NOR4X0 U584 ( .IN1(n415), .IN2(n414), .IN3(n413), .IN4(n412), .QN(N188) );
  XOR2X1 U585 ( .IN1(fsourceID[15]), .IN2(n35), .Q(n423) );
  XOR2X1 U586 ( .IN1(fsourceID[2]), .IN2(n8), .Q(n422) );
  NOR2X0 U587 ( .IN1(n440), .IN2(data_in[0]), .QN(n418) );
  OA22X1 U588 ( .IN1(fsourceID[1]), .IN2(n418), .IN3(n418), .IN4(n7), .Q(n421)
         );
  AND2X1 U589 ( .IN1(data_in[0]), .IN2(n440), .Q(n419) );
  OA22X1 U590 ( .IN1(n419), .IN2(n441), .IN3(data_in[1]), .IN4(n419), .Q(n420)
         );
  OR4X1 U591 ( .IN1(n423), .IN2(n422), .IN3(n421), .IN4(n420), .Q(n439) );
  XNOR2X1 U592 ( .IN1(fsourceID[6]), .IN2(n17), .Q(n427) );
  XNOR2X1 U593 ( .IN1(fsourceID[5]), .IN2(n14), .Q(n426) );
  XNOR2X1 U594 ( .IN1(fsourceID[4]), .IN2(n12), .Q(n425) );
  XNOR2X1 U595 ( .IN1(fsourceID[3]), .IN2(n10), .Q(n424) );
  NAND4X0 U596 ( .IN1(n427), .IN2(n426), .IN3(n425), .IN4(n424), .QN(n438) );
  XNOR2X1 U597 ( .IN1(fsourceID[10]), .IN2(n25), .Q(n431) );
  XNOR2X1 U598 ( .IN1(fsourceID[9]), .IN2(n23), .Q(n430) );
  XNOR2X1 U599 ( .IN1(fsourceID[8]), .IN2(n21), .Q(n429) );
  XNOR2X1 U600 ( .IN1(fsourceID[7]), .IN2(n19), .Q(n428) );
  NAND4X0 U601 ( .IN1(n431), .IN2(n430), .IN3(n429), .IN4(n428), .QN(n437) );
  XNOR2X1 U602 ( .IN1(fsourceID[14]), .IN2(n33), .Q(n435) );
  XNOR2X1 U603 ( .IN1(fsourceID[13]), .IN2(n31), .Q(n434) );
  XNOR2X1 U604 ( .IN1(fsourceID[12]), .IN2(n29), .Q(n433) );
  XNOR2X1 U605 ( .IN1(fsourceID[11]), .IN2(n27), .Q(n432) );
  NAND4X0 U606 ( .IN1(n435), .IN2(n434), .IN3(n433), .IN4(n432), .QN(n436) );
  NOR4X0 U607 ( .IN1(n439), .IN2(n438), .IN3(n437), .IN4(n436), .QN(N203) );
  AND2X1 U608 ( .IN1(n34), .IN2(fValue[14]), .Q(n457) );
  NOR2X0 U609 ( .IN1(n459), .IN2(data_in[0]), .QN(n442) );
  AND2X1 U610 ( .IN1(n7), .IN2(n442), .Q(n443) );
  OA222X1 U611 ( .IN1(fValue[2]), .IN2(n9), .IN3(fValue[1]), .IN4(n443), .IN5(
        n442), .IN6(n7), .Q(n444) );
  AO221X1 U612 ( .IN1(fValue[2]), .IN2(n9), .IN3(fValue[3]), .IN4(n11), .IN5(
        n444), .Q(n445) );
  OA221X1 U613 ( .IN1(fValue[4]), .IN2(n13), .IN3(fValue[3]), .IN4(n11), .IN5(
        n445), .Q(n446) );
  AO221X1 U614 ( .IN1(fValue[4]), .IN2(n13), .IN3(fValue[5]), .IN4(n16), .IN5(
        n446), .Q(n447) );
  OA221X1 U615 ( .IN1(fValue[6]), .IN2(n18), .IN3(fValue[5]), .IN4(n16), .IN5(
        n447), .Q(n448) );
  AO221X1 U616 ( .IN1(fValue[6]), .IN2(n18), .IN3(fValue[7]), .IN4(n20), .IN5(
        n448), .Q(n449) );
  OA221X1 U617 ( .IN1(fValue[8]), .IN2(n22), .IN3(fValue[7]), .IN4(n20), .IN5(
        n449), .Q(n450) );
  AO221X1 U618 ( .IN1(fValue[8]), .IN2(n22), .IN3(fValue[9]), .IN4(n24), .IN5(
        n450), .Q(n451) );
  OA221X1 U619 ( .IN1(fValue[9]), .IN2(n24), .IN3(fValue[10]), .IN4(n26), 
        .IN5(n451), .Q(n452) );
  AO221X1 U620 ( .IN1(fValue[10]), .IN2(n26), .IN3(fValue[11]), .IN4(n28), 
        .IN5(n452), .Q(n453) );
  OA221X1 U621 ( .IN1(fValue[12]), .IN2(n30), .IN3(fValue[11]), .IN4(n28), 
        .IN5(n453), .Q(n454) );
  AO221X1 U622 ( .IN1(fValue[12]), .IN2(n30), .IN3(fValue[13]), .IN4(n32), 
        .IN5(n454), .Q(n455) );
  OA221X1 U623 ( .IN1(fValue[14]), .IN2(n34), .IN3(fValue[13]), .IN4(n32), 
        .IN5(n455), .Q(n456) );
  OA22X1 U624 ( .IN1(fValue[15]), .IN2(n36), .IN3(n457), .IN4(n456), .Q(n458)
         );
  AO21X1 U625 ( .IN1(fValue[15]), .IN2(n36), .IN3(n458), .Q(N319) );
  AND2X1 U626 ( .IN1(N270), .IN2(n79), .Q(n135) );
  OR3X1 U627 ( .IN1(n147), .IN2(n148), .IN3(n478), .Q(n316) );
  AND2X1 U628 ( .IN1(sinkID_address_buf[3]), .IN2(n149), .Q(n478) );
  AND2X1 U629 ( .IN1(sinkID_address_buf[2]), .IN2(n149), .Q(n317) );
  AND2X1 U630 ( .IN1(sinkID_address_buf[1]), .IN2(n149), .Q(n318) );
  AND2X1 U631 ( .IN1(sinkID_address_buf[0]), .IN2(n149), .Q(n319) );
endmodule


module amISink ( clock, nrst, en, start, address, wr_en, data_in, data_out, 
        forAggregation, done );
  output [10:0] address;
  input [15:0] data_in;
  output [15:0] data_out;
  input clock, nrst, en, start;
  output wr_en, forAggregation, done;
  wire   N52, N55, N57, n8, n9, n10, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n1, n2, n3, n4, n5, n6, n7, n11, n12, n13, n14;
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

  DFFSSRX1 \state_reg[1]  ( .D(n6), .RSTB(nrst), .SETB(n12), .CLK(clock), .Q(
        state[1]), .QN(n9) );
  AO22X1 U35 ( .IN1(wr_en), .IN2(n4), .IN3(n15), .IN4(n16), .Q(n36) );
  NAND3X0 U36 ( .IN1(n17), .IN2(n18), .IN3(n5), .QN(n16) );
  AO22X1 U37 ( .IN1(address[1]), .IN2(n3), .IN3(n15), .IN4(N52), .Q(n37) );
  AO22X1 U38 ( .IN1(done), .IN2(n19), .IN3(n20), .IN4(n21), .Q(n39) );
  AOI21X1 U39 ( .IN1(n21), .IN2(state[0]), .IN3(n22), .QN(n19) );
  AO22X1 U40 ( .IN1(n23), .IN2(forAggregation), .IN3(n7), .IN4(nrst), .Q(n40)
         );
  AO221X1 U41 ( .IN1(state[2]), .IN2(n24), .IN3(n25), .IN4(n14), .IN5(n26), 
        .Q(N57) );
  AO21X1 U42 ( .IN1(state[1]), .IN2(state[0]), .IN3(n2), .Q(n26) );
  OA221X1 U43 ( .IN1(n29), .IN2(n27), .IN3(n13), .IN4(n30), .IN5(n18), .Q(n28)
         );
  NAND3X0 U44 ( .IN1(n31), .IN2(n17), .IN3(n5), .QN(N52) );
  AO21X1 U45 ( .IN1(en), .IN2(n25), .IN3(n2), .Q(n22) );
  NAND3X0 U46 ( .IN1(n9), .IN2(n8), .IN3(state[0]), .QN(n27) );
  AND4X1 U47 ( .IN1(n32), .IN2(n33), .IN3(n34), .IN4(n35), .Q(n29) );
  NOR4X0 U48 ( .IN1(data_in[9]), .IN2(data_in[8]), .IN3(data_in[7]), .IN4(
        data_in[6]), .QN(n35) );
  NOR4X0 U49 ( .IN1(data_in[5]), .IN2(data_in[4]), .IN3(data_in[3]), .IN4(
        data_in[2]), .QN(n34) );
  NOR4X0 U50 ( .IN1(data_in[1]), .IN2(data_in[15]), .IN3(data_in[14]), .IN4(
        data_in[13]), .QN(n33) );
  NOR4X0 U51 ( .IN1(data_in[12]), .IN2(data_in[11]), .IN3(data_in[10]), .IN4(
        n1), .QN(n32) );
  OR3X1 U52 ( .IN1(n24), .IN2(state[2]), .IN3(n13), .Q(n31) );
  DFFX1 data_out_buf_reg ( .D(n38), .CLK(clock), .Q(data_out[0]) );
  DFFX1 forAggregation_buf_reg ( .D(n40), .CLK(clock), .Q(forAggregation) );
  DFFX1 \address_count_reg[1]  ( .D(n37), .CLK(clock), .Q(address[1]) );
  DFFX1 wr_en_buf_reg ( .D(n36), .CLK(clock), .Q(wr_en) );
  DFFX1 done_buf_reg ( .D(n39), .CLK(clock), .Q(done) );
  DFFX1 \state_reg[0]  ( .D(N55), .CLK(clock), .Q(state[0]), .QN(n10) );
  DFFX1 \state_reg[2]  ( .D(N57), .CLK(clock), .Q(state[2]), .QN(n8) );
  INVX0 U13 ( .INP(nrst), .ZN(n2) );
  INVX0 U14 ( .INP(n17), .ZN(n7) );
  INVX0 U15 ( .INP(n15), .ZN(n12) );
  NOR2X0 U16 ( .IN1(n2), .IN2(n27), .QN(n15) );
  NAND2X1 U17 ( .IN1(n29), .IN2(n11), .QN(n17) );
  INVX0 U18 ( .INP(n22), .ZN(n5) );
  INVX0 U19 ( .INP(n27), .ZN(n11) );
  INVX0 U20 ( .INP(n18), .ZN(n6) );
  INVX0 U21 ( .INP(data_in[0]), .ZN(n1) );
  INVX0 U22 ( .INP(N52), .ZN(n3) );
  INVX0 U23 ( .INP(en), .ZN(n14) );
  NOR2X0 U24 ( .IN1(n28), .IN2(n2), .QN(N55) );
  NAND2X1 U25 ( .IN1(n10), .IN2(n8), .QN(n30) );
  NOR2X0 U26 ( .IN1(n19), .IN2(n2), .QN(n20) );
  NOR2X0 U27 ( .IN1(n11), .IN2(n22), .QN(n23) );
  OA21X1 U28 ( .IN1(n7), .IN2(data_out[0]), .IN3(nrst), .Q(n38) );
  INVX0 U29 ( .INP(n16), .ZN(n4) );
  NOR2X0 U30 ( .IN1(n9), .IN2(state[2]), .QN(n21) );
  NAND2X1 U31 ( .IN1(n9), .IN2(n10), .QN(n24) );
  NAND2X1 U32 ( .IN1(n21), .IN2(n10), .QN(n18) );
  NOR2X0 U33 ( .IN1(n8), .IN2(n24), .QN(n25) );
  INVX0 U34 ( .INP(start), .ZN(n13) );
endmodule


module amIDestination ( clock, nrst, en, start, MY_NODE_ID, destinationID, 
        iamDestination, done );
  input [15:0] MY_NODE_ID;
  input [15:0] destinationID;
  input clock, nrst, en, start;
  output iamDestination, done;
  wire   N23, N38, N39, n6, n7, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n21, n22, n23, n24, n1, n2, n3, n4, n5, n8, n9, n20, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46;
  wire   [2:0] state;

  NAND4X0 U20 ( .IN1(N23), .IN2(n2), .IN3(n12), .IN4(n6), .QN(n11) );
  AO22X1 U22 ( .IN1(done), .IN2(n15), .IN3(n16), .IN4(n17), .Q(n24) );
  AND2X1 U23 ( .IN1(n2), .IN2(n18), .Q(n15) );
  NAND4X0 U25 ( .IN1(n2), .IN2(n21), .IN3(n14), .IN4(n45), .QN(N39) );
  NAND4X0 U26 ( .IN1(n2), .IN2(n22), .IN3(n14), .IN4(n45), .QN(N38) );
  DFFX1 done_buf_reg ( .D(n24), .CLK(clock), .Q(done) );
  DFFX1 \state_reg[1]  ( .D(N39), .CLK(clock), .Q(state[1]), .QN(n6) );
  DFFX1 \state_reg[0]  ( .D(N38), .CLK(clock), .Q(state[0]), .QN(n7) );
  DFFX1 iamDestination_buf_reg ( .D(n23), .CLK(clock), .Q(iamDestination), 
        .QN(n1) );
  NAND2X1 U3 ( .IN1(n10), .IN2(n11), .QN(n23) );
  INVX0 U4 ( .INP(n3), .ZN(n2) );
  INVX0 U5 ( .INP(nrst), .ZN(n3) );
  INVX0 U6 ( .INP(n17), .ZN(n45) );
  NAND2X1 U7 ( .IN1(state[0]), .IN2(n6), .QN(n21) );
  NAND2X1 U8 ( .IN1(start), .IN2(n7), .QN(n22) );
  NAND2X1 U9 ( .IN1(state[1]), .IN2(n46), .QN(n14) );
  OR2X1 U10 ( .IN1(n1), .IN2(n12), .Q(n10) );
  NAND2X1 U11 ( .IN1(state[0]), .IN2(n46), .QN(n19) );
  NAND2X1 U12 ( .IN1(n2), .IN2(n13), .QN(n12) );
  NAND2X1 U13 ( .IN1(n14), .IN2(state[0]), .QN(n13) );
  INVX0 U14 ( .INP(en), .ZN(n46) );
  INVX0 U15 ( .INP(destinationID[1]), .ZN(n44) );
  NOR2X0 U16 ( .IN1(n15), .IN2(n3), .QN(n16) );
  NAND2X1 U17 ( .IN1(n19), .IN2(state[1]), .QN(n18) );
  INVX0 U18 ( .INP(destinationID[0]), .ZN(n43) );
  NOR2X0 U19 ( .IN1(n6), .IN2(state[0]), .QN(n17) );
  INVX0 U21 ( .INP(MY_NODE_ID[1]), .ZN(n42) );
  XOR2X1 U24 ( .IN1(destinationID[15]), .IN2(MY_NODE_ID[15]), .Q(n25) );
  XOR2X1 U27 ( .IN1(destinationID[2]), .IN2(MY_NODE_ID[2]), .Q(n20) );
  NOR2X0 U28 ( .IN1(n43), .IN2(MY_NODE_ID[0]), .QN(n4) );
  OA22X1 U29 ( .IN1(destinationID[1]), .IN2(n4), .IN3(n4), .IN4(n42), .Q(n9)
         );
  AND2X1 U30 ( .IN1(MY_NODE_ID[0]), .IN2(n43), .Q(n5) );
  OA22X1 U31 ( .IN1(n5), .IN2(n44), .IN3(MY_NODE_ID[1]), .IN4(n5), .Q(n8) );
  OR4X1 U32 ( .IN1(n25), .IN2(n20), .IN3(n9), .IN4(n8), .Q(n41) );
  XNOR2X1 U33 ( .IN1(destinationID[6]), .IN2(MY_NODE_ID[6]), .Q(n29) );
  XNOR2X1 U34 ( .IN1(destinationID[5]), .IN2(MY_NODE_ID[5]), .Q(n28) );
  XNOR2X1 U35 ( .IN1(destinationID[4]), .IN2(MY_NODE_ID[4]), .Q(n27) );
  XNOR2X1 U36 ( .IN1(destinationID[3]), .IN2(MY_NODE_ID[3]), .Q(n26) );
  NAND4X0 U37 ( .IN1(n29), .IN2(n28), .IN3(n27), .IN4(n26), .QN(n40) );
  XNOR2X1 U38 ( .IN1(destinationID[10]), .IN2(MY_NODE_ID[10]), .Q(n33) );
  XNOR2X1 U39 ( .IN1(destinationID[9]), .IN2(MY_NODE_ID[9]), .Q(n32) );
  XNOR2X1 U40 ( .IN1(destinationID[8]), .IN2(MY_NODE_ID[8]), .Q(n31) );
  XNOR2X1 U41 ( .IN1(destinationID[7]), .IN2(MY_NODE_ID[7]), .Q(n30) );
  NAND4X0 U42 ( .IN1(n33), .IN2(n32), .IN3(n31), .IN4(n30), .QN(n39) );
  XNOR2X1 U43 ( .IN1(destinationID[14]), .IN2(MY_NODE_ID[14]), .Q(n37) );
  XNOR2X1 U44 ( .IN1(destinationID[13]), .IN2(MY_NODE_ID[13]), .Q(n36) );
  XNOR2X1 U45 ( .IN1(destinationID[12]), .IN2(MY_NODE_ID[12]), .Q(n35) );
  XNOR2X1 U46 ( .IN1(destinationID[11]), .IN2(MY_NODE_ID[11]), .Q(n34) );
  NAND4X0 U47 ( .IN1(n37), .IN2(n36), .IN3(n35), .IN4(n34), .QN(n38) );
  NOR4X0 U48 ( .IN1(n41), .IN2(n40), .IN3(n39), .IN4(n38), .QN(N23) );
endmodule


module fixSinkList_DW01_inc_0 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HADDX1 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .C1(carry[15]), .SO(SUM[14]) );
  HADDX1 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .C1(carry[14]), .SO(SUM[13]) );
  HADDX1 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .C1(carry[13]), .SO(SUM[12]) );
  HADDX1 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(carry[12]), .SO(SUM[11]) );
  HADDX1 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX0 U1 ( .INP(A[0]), .ZN(SUM[0]) );
  XOR2X1 U2 ( .IN1(carry[15]), .IN2(A[15]), .Q(SUM[15]) );
endmodule


module fixSinkList_DW01_inc_1 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HADDX1 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .C1(carry[15]), .SO(SUM[14]) );
  HADDX1 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .C1(carry[14]), .SO(SUM[13]) );
  HADDX1 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .C1(carry[13]), .SO(SUM[12]) );
  HADDX1 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(carry[12]), .SO(SUM[11]) );
  HADDX1 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX0 U1 ( .INP(A[0]), .ZN(SUM[0]) );
  XOR2X1 U2 ( .IN1(carry[15]), .IN2(A[15]), .Q(SUM[15]) );
endmodule


module fixSinkList_DW01_inc_2 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HADDX1 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .C1(carry[15]), .SO(SUM[14]) );
  HADDX1 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .C1(carry[14]), .SO(SUM[13]) );
  HADDX1 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .C1(carry[13]), .SO(SUM[12]) );
  HADDX1 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(carry[12]), .SO(SUM[11]) );
  HADDX1 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX0 U1 ( .INP(A[0]), .ZN(SUM[0]) );
  XOR2X1 U2 ( .IN1(carry[15]), .IN2(A[15]), .Q(SUM[15]) );
endmodule


module fixSinkList_DW01_inc_3 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HADDX1 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .C1(carry[15]), .SO(SUM[14]) );
  HADDX1 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .C1(carry[14]), .SO(SUM[13]) );
  HADDX1 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .C1(carry[13]), .SO(SUM[12]) );
  HADDX1 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(carry[12]), .SO(SUM[11]) );
  HADDX1 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX0 U1 ( .INP(A[0]), .ZN(SUM[0]) );
  XOR2X1 U2 ( .IN1(carry[15]), .IN2(A[15]), .Q(SUM[15]) );
endmodule


module fixSinkList_DW01_inc_4 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HADDX1 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .C1(carry[15]), .SO(SUM[14]) );
  HADDX1 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .C1(carry[14]), .SO(SUM[13]) );
  HADDX1 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .C1(carry[13]), .SO(SUM[12]) );
  HADDX1 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(carry[12]), .SO(SUM[11]) );
  HADDX1 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX0 U1 ( .INP(A[0]), .ZN(SUM[0]) );
  XOR2X1 U2 ( .IN1(carry[15]), .IN2(A[15]), .Q(SUM[15]) );
endmodule


module fixSinkList_DW01_add_11 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;

  FADDX1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FADDX1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FADDX1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FADDX1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FADDX1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FADDX1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FADDX1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  FADDX1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  FADDX1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  FADDX1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  FADDX1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  FADDX1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  FADDX1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  FADDX1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_15 ( .IN1(A[15]), .IN2(B[15]), .IN3(carry[15]), .Q(SUM[15]) );
  AND2X1 U1 ( .IN1(B[0]), .IN2(A[0]), .Q(n1) );
  XOR2X1 U2 ( .IN1(B[0]), .IN2(A[0]), .Q(SUM[0]) );
endmodule


module fixSinkList ( clock, nrst, en, start, address, wr_en, data_in, data_out, 
        done );
  output [10:0] address;
  input [15:0] data_in;
  output [15:0] data_out;
  input clock, nrst, en, start;
  output wr_en, done;
  wire   N107, N108, N110, N111, N112, N113, N114, N115, N116, N119, N120,
         N121, N122, N123, N124, N125, N126, N127, N132, N133, N135, N136,
         N137, N138, N140, N141, N142, N143, N144, N145, N146, N147, N148,
         N149, N151, N154, N155, N156, N157, N158, N159, N160, N161, N162,
         N163, N164, N165, N166, N167, N168, N169, N170, N175, N176, N177,
         N178, N179, N180, N181, N182, N183, N184, N185, N186, N187, N188,
         N189, N192, N193, N194, N195, N196, N197, N198, N199, N200, N201,
         N204, N205, N206, N207, N208, N209, N210, N211, N212, N213, N247,
         N248, N249, N250, N251, N252, N253, N254, N255, N256, N257, N258,
         N259, N260, N261, N309, N310, N311, N312, N313, N314, N315, N316,
         N317, N318, N357, N358, N359, N360, N361, N362, N363, N368, N369,
         N370, N371, N372, N373, N374, N391, N392, N393, N394, N395, N396,
         N397, N398, N399, N400, N401, N402, N403, N404, N405, N406, N407,
         N408, N409, N410, N411, N412, N413, N414, N415, N416, N417, N418,
         N419, N420, N421, N422, N476, N477, N478, N479, N480, N481, N482,
         N486, N487, N488, N489, N490, N491, N492, N493, N494, N732, N733,
         N734, N735, n72, n77, n78, n79, n82, n87, n88, n89, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, N390,
         N389, N388, N387, N386, N385, N384, N383, N382, N381, N380, N379,
         N378, N377, N376, N375, \add_160/carry[10] , \add_160/carry[9] ,
         \add_160/carry[8] , \add_160/carry[7] , \add_160/carry[6] ,
         \add_160/carry[5] , \add_160/carry[4] , \add_160/carry[3] ,
         \add_155/carry[10] , \add_155/carry[9] , \add_155/carry[8] ,
         \add_155/carry[7] , \add_155/carry[6] , \add_155/carry[5] ,
         \add_121/carry[10] , \add_121/carry[9] , \add_121/carry[8] ,
         \add_121/carry[7] , \add_121/carry[6] , \add_121/carry[5] ,
         \add_115/carry[10] , \add_115/carry[9] , \add_115/carry[8] ,
         \add_115/carry[7] , \add_115/carry[6] , \add_115/carry[5] ,
         \add_92/carry[10] , \add_92/carry[9] , \add_92/carry[8] ,
         \add_92/carry[7] , \add_92/carry[6] , \add_92/carry[5] ,
         \add_92/carry[4] , \add_92/carry[3] , \add_87/carry[10] ,
         \add_87/carry[9] , \add_87/carry[8] , \add_87/carry[7] ,
         \add_87/carry[6] , \add_87/carry[5] , \add_0_root_add_67_2/carry[10] ,
         \add_0_root_add_67_2/carry[9] , \add_0_root_add_67_2/carry[8] ,
         \add_0_root_add_67_2/carry[7] , \add_0_root_add_67_2/carry[6] ,
         \add_0_root_add_67_2/carry[5] , \add_55/carry[10] , \add_55/carry[9] ,
         \add_55/carry[8] , \add_55/carry[7] , \add_55/carry[6] ,
         \add_55/carry[5] , \r239/carry[10] , \r239/carry[9] , \r239/carry[8] ,
         \r239/carry[7] , \r239/carry[6] , \r239/carry[5] , \r228/carry[10] ,
         \r228/carry[9] , \r228/carry[8] , \r227/carry[10] , \r227/carry[9] ,
         \r227/carry[8] , \r227/carry[7] , \r227/carry[6] , \r227/carry[5] ,
         \r227/carry[4] , \r227/carry[3] , n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n73, n74, n75, n76, n80, n81, n83, n84,
         n85, n86, n90, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n410,
         n411, n412, n413, n414, n415, n416, n417, n418, n419, n420;
  wire   [3:0] state;
  wire   [15:0] j;
  wire   [15:0] i;
  wire   [15:0] k;
  wire   [15:0] knownSinkCount;
  wire   [15:0] neighborCount;
  wire   [15:0] knownSinks;
  wire   [15:0] sinkIDCount;
  wire   [15:0] worstHops;

  DFFX1 \i_reg[15]  ( .D(n314), .CLK(clock), .Q(i[15]) );
  DFFX1 \i_reg[0]  ( .D(n297), .CLK(clock), .Q(N132), .QN(n2) );
  DFFX1 \i_reg[1]  ( .D(n296), .CLK(clock), .Q(N133) );
  DFFX1 \i_reg[2]  ( .D(n295), .CLK(clock), .Q(i[2]), .QN(n1) );
  DFFX1 \i_reg[3]  ( .D(n294), .CLK(clock), .Q(i[3]) );
  DFFX1 \i_reg[4]  ( .D(n293), .CLK(clock), .Q(i[4]) );
  DFFX1 \i_reg[5]  ( .D(n292), .CLK(clock), .Q(i[5]) );
  DFFX1 \i_reg[6]  ( .D(n291), .CLK(clock), .Q(i[6]) );
  DFFX1 \i_reg[7]  ( .D(n290), .CLK(clock), .Q(i[7]) );
  DFFX1 \i_reg[8]  ( .D(n289), .CLK(clock), .Q(i[8]) );
  DFFX1 \i_reg[9]  ( .D(n288), .CLK(clock), .Q(i[9]) );
  DFFX1 \i_reg[10]  ( .D(n287), .CLK(clock), .Q(i[10]) );
  DFFX1 \i_reg[11]  ( .D(n286), .CLK(clock), .Q(i[11]) );
  DFFX1 \i_reg[12]  ( .D(n285), .CLK(clock), .Q(i[12]) );
  DFFX1 \i_reg[13]  ( .D(n284), .CLK(clock), .Q(i[13]) );
  DFFX1 \i_reg[14]  ( .D(n283), .CLK(clock), .Q(i[14]) );
  DFFX1 \j_reg[15]  ( .D(n313), .CLK(clock), .Q(j[15]) );
  DFFX1 \j_reg[0]  ( .D(n312), .CLK(clock), .Q(N107) );
  DFFX1 \j_reg[1]  ( .D(n311), .CLK(clock), .Q(N108) );
  DFFX1 \j_reg[2]  ( .D(n310), .CLK(clock), .Q(j[2]), .QN(n3) );
  DFFX1 \j_reg[3]  ( .D(n309), .CLK(clock), .Q(j[3]) );
  DFFX1 \j_reg[4]  ( .D(n308), .CLK(clock), .Q(j[4]) );
  DFFX1 \j_reg[5]  ( .D(n307), .CLK(clock), .Q(j[5]) );
  DFFX1 \j_reg[6]  ( .D(n306), .CLK(clock), .Q(j[6]) );
  DFFX1 \j_reg[7]  ( .D(n305), .CLK(clock), .Q(j[7]) );
  DFFX1 \j_reg[8]  ( .D(n304), .CLK(clock), .Q(j[8]) );
  DFFX1 \j_reg[9]  ( .D(n303), .CLK(clock), .Q(j[9]) );
  DFFX1 \j_reg[10]  ( .D(n302), .CLK(clock), .Q(j[10]) );
  DFFX1 \j_reg[11]  ( .D(n301), .CLK(clock), .Q(j[11]) );
  DFFX1 \j_reg[12]  ( .D(n300), .CLK(clock), .Q(j[12]) );
  DFFX1 \j_reg[13]  ( .D(n299), .CLK(clock), .Q(j[13]) );
  DFFX1 \j_reg[14]  ( .D(n298), .CLK(clock), .Q(j[14]) );
  DFFX1 \data_out_buf_reg[15]  ( .D(n250), .CLK(clock), .Q(data_out[15]) );
  DFFX1 \data_out_buf_reg[14]  ( .D(n251), .CLK(clock), .Q(data_out[14]) );
  DFFX1 \data_out_buf_reg[13]  ( .D(n252), .CLK(clock), .Q(data_out[13]) );
  DFFX1 \data_out_buf_reg[12]  ( .D(n253), .CLK(clock), .Q(data_out[12]) );
  DFFX1 \data_out_buf_reg[11]  ( .D(n254), .CLK(clock), .Q(data_out[11]) );
  DFFX1 \data_out_buf_reg[10]  ( .D(n255), .CLK(clock), .Q(data_out[10]) );
  DFFX1 \data_out_buf_reg[9]  ( .D(n256), .CLK(clock), .Q(data_out[9]) );
  DFFX1 \data_out_buf_reg[8]  ( .D(n257), .CLK(clock), .Q(data_out[8]) );
  DFFX1 \data_out_buf_reg[7]  ( .D(n258), .CLK(clock), .Q(data_out[7]) );
  DFFX1 \data_out_buf_reg[6]  ( .D(n259), .CLK(clock), .Q(data_out[6]) );
  DFFX1 \data_out_buf_reg[5]  ( .D(n260), .CLK(clock), .Q(data_out[5]) );
  DFFX1 \data_out_buf_reg[4]  ( .D(n261), .CLK(clock), .Q(data_out[4]) );
  DFFX1 \data_out_buf_reg[3]  ( .D(n262), .CLK(clock), .Q(data_out[3]) );
  DFFX1 \data_out_buf_reg[2]  ( .D(n263), .CLK(clock), .Q(data_out[2]) );
  DFFX1 \data_out_buf_reg[1]  ( .D(n264), .CLK(clock), .Q(data_out[1]) );
  DFFX1 \data_out_buf_reg[0]  ( .D(n265), .CLK(clock), .Q(data_out[0]) );
  DFFX1 \address_count_reg[10]  ( .D(n233), .CLK(clock), .Q(address[10]) );
  DFFX1 \address_count_reg[9]  ( .D(n232), .CLK(clock), .Q(address[9]) );
  DFFX1 \address_count_reg[8]  ( .D(n231), .CLK(clock), .Q(address[8]) );
  DFFX1 \address_count_reg[7]  ( .D(n230), .CLK(clock), .Q(address[7]) );
  DFFX1 \address_count_reg[6]  ( .D(n229), .CLK(clock), .Q(address[6]) );
  DFFX1 \address_count_reg[5]  ( .D(n228), .CLK(clock), .Q(address[5]) );
  DFFX1 \address_count_reg[4]  ( .D(n227), .CLK(clock), .Q(address[4]) );
  DFFX1 \address_count_reg[3]  ( .D(n226), .CLK(clock), .Q(address[3]) );
  DFFX1 \address_count_reg[2]  ( .D(n225), .CLK(clock), .Q(address[2]) );
  DFFX1 \address_count_reg[1]  ( .D(n224), .CLK(clock), .Q(address[1]) );
  DFFX1 \address_count_reg[0]  ( .D(n223), .CLK(clock), .Q(address[0]) );
  AO22X1 U80 ( .IN1(n94), .IN2(n95), .IN3(address[1]), .IN4(n405), .Q(n224) );
  OR4X1 U81 ( .IN1(n96), .IN2(n97), .IN3(n98), .IN4(n99), .Q(n94) );
  AO222X1 U82 ( .IN1(N309), .IN2(n89), .IN3(N192), .IN4(n88), .IN5(n2), .IN6(
        n87), .Q(n99) );
  AO222X1 U83 ( .IN1(N204), .IN2(n91), .IN3(N204), .IN4(n92), .IN5(N192), 
        .IN6(n93), .Q(n98) );
  NAND3X0 U84 ( .IN1(nrst), .IN2(n100), .IN3(n101), .QN(n97) );
  AO222X1 U85 ( .IN1(N107), .IN2(n413), .IN3(N132), .IN4(n410), .IN5(N140), 
        .IN6(n415), .Q(n96) );
  AO22X1 U86 ( .IN1(address[2]), .IN2(n405), .IN3(n82), .IN4(n102), .Q(n225)
         );
  OR2X1 U87 ( .IN1(n103), .IN2(n104), .Q(n102) );
  AO221X1 U88 ( .IN1(N141), .IN2(n415), .IN3(N108), .IN4(n411), .IN5(n105), 
        .Q(n104) );
  AO222X1 U89 ( .IN1(N133), .IN2(n410), .IN3(N119), .IN4(n87), .IN5(N108), 
        .IN6(n413), .Q(n105) );
  AO221X1 U90 ( .IN1(N193), .IN2(n88), .IN3(N310), .IN4(n89), .IN5(n106), .Q(
        n103) );
  AO222X1 U91 ( .IN1(N486), .IN2(n91), .IN3(N205), .IN4(n92), .IN5(N193), 
        .IN6(n93), .Q(n106) );
  AO22X1 U92 ( .IN1(n107), .IN2(n95), .IN3(address[3]), .IN4(n405), .Q(n226)
         );
  OR4X1 U93 ( .IN1(n108), .IN2(n109), .IN3(n110), .IN4(n111), .Q(n107) );
  AO222X1 U94 ( .IN1(N311), .IN2(n89), .IN3(N194), .IN4(n88), .IN5(N120), 
        .IN6(n87), .Q(n111) );
  AO222X1 U95 ( .IN1(N487), .IN2(n91), .IN3(N206), .IN4(n92), .IN5(N194), 
        .IN6(n93), .Q(n110) );
  AO21X1 U96 ( .IN1(n3), .IN2(n411), .IN3(n112), .Q(n109) );
  AO222X1 U97 ( .IN1(n3), .IN2(n413), .IN3(n1), .IN4(n410), .IN5(N142), .IN6(
        n415), .Q(n108) );
  AO22X1 U98 ( .IN1(address[4]), .IN2(n405), .IN3(n82), .IN4(n113), .Q(n227)
         );
  OR2X1 U99 ( .IN1(n114), .IN2(n115), .Q(n113) );
  AO221X1 U100 ( .IN1(N143), .IN2(n415), .IN3(N110), .IN4(n411), .IN5(n116), 
        .Q(n115) );
  AO222X1 U101 ( .IN1(N368), .IN2(n410), .IN3(N121), .IN4(n87), .IN5(N357), 
        .IN6(n413), .Q(n116) );
  AO221X1 U102 ( .IN1(N476), .IN2(n88), .IN3(N312), .IN4(n89), .IN5(n117), .Q(
        n114) );
  AO222X1 U103 ( .IN1(N488), .IN2(n91), .IN3(N207), .IN4(n92), .IN5(N195), 
        .IN6(n93), .Q(n117) );
  AO22X1 U104 ( .IN1(address[5]), .IN2(n405), .IN3(n82), .IN4(n118), .Q(n228)
         );
  OR2X1 U105 ( .IN1(n119), .IN2(n120), .Q(n118) );
  AO221X1 U106 ( .IN1(N144), .IN2(n415), .IN3(N111), .IN4(n411), .IN5(n121), 
        .Q(n120) );
  AO222X1 U107 ( .IN1(N369), .IN2(n410), .IN3(N122), .IN4(n87), .IN5(N358), 
        .IN6(n413), .Q(n121) );
  AO221X1 U108 ( .IN1(N477), .IN2(n88), .IN3(N313), .IN4(n89), .IN5(n122), .Q(
        n119) );
  AO222X1 U109 ( .IN1(N489), .IN2(n91), .IN3(N208), .IN4(n92), .IN5(N196), 
        .IN6(n93), .Q(n122) );
  AO22X1 U110 ( .IN1(address[6]), .IN2(n405), .IN3(n82), .IN4(n123), .Q(n229)
         );
  OR2X1 U111 ( .IN1(n124), .IN2(n125), .Q(n123) );
  AO221X1 U112 ( .IN1(N145), .IN2(n415), .IN3(N112), .IN4(n411), .IN5(n126), 
        .Q(n125) );
  AO222X1 U113 ( .IN1(N370), .IN2(n410), .IN3(N123), .IN4(n87), .IN5(N359), 
        .IN6(n413), .Q(n126) );
  AO221X1 U114 ( .IN1(N478), .IN2(n88), .IN3(N314), .IN4(n89), .IN5(n127), .Q(
        n124) );
  AO222X1 U115 ( .IN1(N490), .IN2(n91), .IN3(N209), .IN4(n92), .IN5(N197), 
        .IN6(n93), .Q(n127) );
  AO22X1 U116 ( .IN1(n128), .IN2(n95), .IN3(address[7]), .IN4(n405), .Q(n230)
         );
  OR4X1 U117 ( .IN1(n129), .IN2(n130), .IN3(n131), .IN4(n132), .Q(n128) );
  AO222X1 U118 ( .IN1(N315), .IN2(n89), .IN3(N479), .IN4(n88), .IN5(N124), 
        .IN6(n87), .Q(n132) );
  AO222X1 U119 ( .IN1(N491), .IN2(n91), .IN3(N210), .IN4(n92), .IN5(N198), 
        .IN6(n93), .Q(n131) );
  AO21X1 U120 ( .IN1(N113), .IN2(n411), .IN3(n112), .Q(n130) );
  AO222X1 U121 ( .IN1(N360), .IN2(n413), .IN3(N371), .IN4(n410), .IN5(N146), 
        .IN6(n415), .Q(n129) );
  AO22X1 U122 ( .IN1(address[8]), .IN2(n405), .IN3(n82), .IN4(n133), .Q(n231)
         );
  OR2X1 U123 ( .IN1(n134), .IN2(n135), .Q(n133) );
  AO221X1 U124 ( .IN1(N147), .IN2(n415), .IN3(N114), .IN4(n411), .IN5(n136), 
        .Q(n135) );
  AO222X1 U125 ( .IN1(N372), .IN2(n410), .IN3(N125), .IN4(n87), .IN5(N361), 
        .IN6(n413), .Q(n136) );
  AO221X1 U126 ( .IN1(N480), .IN2(n88), .IN3(N316), .IN4(n89), .IN5(n137), .Q(
        n134) );
  AO222X1 U127 ( .IN1(N492), .IN2(n91), .IN3(N211), .IN4(n92), .IN5(N199), 
        .IN6(n93), .Q(n137) );
  AO22X1 U128 ( .IN1(n138), .IN2(n95), .IN3(address[9]), .IN4(n405), .Q(n232)
         );
  OR4X1 U129 ( .IN1(n139), .IN2(n140), .IN3(n141), .IN4(n142), .Q(n138) );
  AO222X1 U130 ( .IN1(N317), .IN2(n89), .IN3(N481), .IN4(n88), .IN5(N126), 
        .IN6(n87), .Q(n142) );
  AO222X1 U131 ( .IN1(N493), .IN2(n91), .IN3(N212), .IN4(n92), .IN5(N200), 
        .IN6(n93), .Q(n141) );
  AO21X1 U132 ( .IN1(N115), .IN2(n411), .IN3(n112), .Q(n140) );
  AO222X1 U133 ( .IN1(N362), .IN2(n413), .IN3(N373), .IN4(n410), .IN5(N148), 
        .IN6(n415), .Q(n139) );
  AO22X1 U134 ( .IN1(n143), .IN2(n95), .IN3(address[10]), .IN4(n405), .Q(n233)
         );
  NAND4X0 U135 ( .IN1(n144), .IN2(n412), .IN3(n406), .IN4(n145), .QN(n95) );
  AND3X1 U136 ( .IN1(n146), .IN2(n147), .IN3(n148), .Q(n145) );
  OR2X1 U137 ( .IN1(N189), .IN2(n149), .Q(n148) );
  OR4X1 U138 ( .IN1(n151), .IN2(n152), .IN3(n153), .IN4(n154), .Q(n143) );
  AO222X1 U139 ( .IN1(N318), .IN2(n89), .IN3(N482), .IN4(n88), .IN5(N127), 
        .IN6(n87), .Q(n154) );
  AO222X1 U140 ( .IN1(N494), .IN2(n91), .IN3(N213), .IN4(n92), .IN5(N201), 
        .IN6(n93), .Q(n153) );
  AO21X1 U141 ( .IN1(N116), .IN2(n411), .IN3(n112), .Q(n152) );
  NAND3X0 U142 ( .IN1(nrst), .IN2(n147), .IN3(n101), .QN(n112) );
  AOI21X1 U143 ( .IN1(n159), .IN2(n77), .IN3(n160), .QN(n101) );
  AO222X1 U144 ( .IN1(N363), .IN2(n413), .IN3(N374), .IN4(n410), .IN5(N149), 
        .IN6(n415), .Q(n151) );
  AO22X1 U145 ( .IN1(k[15]), .IN2(n161), .IN3(N260), .IN4(n162), .Q(n234) );
  AO22X1 U146 ( .IN1(k[14]), .IN2(n161), .IN3(N259), .IN4(n162), .Q(n235) );
  AO22X1 U147 ( .IN1(k[13]), .IN2(n161), .IN3(N258), .IN4(n162), .Q(n236) );
  AO22X1 U148 ( .IN1(k[12]), .IN2(n161), .IN3(N257), .IN4(n162), .Q(n237) );
  AO22X1 U149 ( .IN1(k[11]), .IN2(n161), .IN3(N256), .IN4(n162), .Q(n238) );
  AO22X1 U150 ( .IN1(k[10]), .IN2(n161), .IN3(N255), .IN4(n162), .Q(n239) );
  AO22X1 U151 ( .IN1(k[9]), .IN2(n161), .IN3(N254), .IN4(n162), .Q(n240) );
  AO22X1 U152 ( .IN1(k[8]), .IN2(n161), .IN3(N253), .IN4(n162), .Q(n241) );
  AO22X1 U153 ( .IN1(k[7]), .IN2(n161), .IN3(N252), .IN4(n162), .Q(n242) );
  AO22X1 U154 ( .IN1(k[6]), .IN2(n161), .IN3(N251), .IN4(n162), .Q(n243) );
  AO22X1 U155 ( .IN1(k[5]), .IN2(n161), .IN3(N250), .IN4(n162), .Q(n244) );
  AO22X1 U156 ( .IN1(k[4]), .IN2(n161), .IN3(N249), .IN4(n162), .Q(n245) );
  AO22X1 U157 ( .IN1(k[3]), .IN2(n161), .IN3(N248), .IN4(n162), .Q(n246) );
  AO22X1 U158 ( .IN1(k[2]), .IN2(n161), .IN3(N247), .IN4(n162), .Q(n247) );
  AO22X1 U159 ( .IN1(N141), .IN2(n161), .IN3(N310), .IN4(n162), .Q(n248) );
  AO22X1 U160 ( .IN1(wr_en), .IN2(n404), .IN3(n163), .IN4(nrst), .Q(n249) );
  NAND4X0 U161 ( .IN1(n165), .IN2(n416), .IN3(n157), .IN4(n166), .QN(n164) );
  AO221X1 U162 ( .IN1(knownSinks[15]), .IN2(n167), .IN3(data_out[15]), .IN4(
        n168), .IN5(n169), .Q(n250) );
  AO22X1 U163 ( .IN1(N406), .IN2(n170), .IN3(N422), .IN4(n171), .Q(n169) );
  AO221X1 U164 ( .IN1(knownSinks[14]), .IN2(n167), .IN3(data_out[14]), .IN4(
        n168), .IN5(n172), .Q(n251) );
  AO22X1 U165 ( .IN1(N405), .IN2(n170), .IN3(N421), .IN4(n171), .Q(n172) );
  AO221X1 U166 ( .IN1(knownSinks[13]), .IN2(n167), .IN3(data_out[13]), .IN4(
        n168), .IN5(n173), .Q(n252) );
  AO22X1 U167 ( .IN1(N404), .IN2(n170), .IN3(N420), .IN4(n171), .Q(n173) );
  AO221X1 U168 ( .IN1(knownSinks[12]), .IN2(n167), .IN3(data_out[12]), .IN4(
        n168), .IN5(n174), .Q(n253) );
  AO22X1 U169 ( .IN1(N403), .IN2(n170), .IN3(N419), .IN4(n171), .Q(n174) );
  AO221X1 U170 ( .IN1(knownSinks[11]), .IN2(n167), .IN3(data_out[11]), .IN4(
        n168), .IN5(n175), .Q(n254) );
  AO22X1 U171 ( .IN1(N402), .IN2(n170), .IN3(N418), .IN4(n171), .Q(n175) );
  AO221X1 U172 ( .IN1(knownSinks[10]), .IN2(n167), .IN3(data_out[10]), .IN4(
        n168), .IN5(n176), .Q(n255) );
  AO22X1 U173 ( .IN1(N401), .IN2(n170), .IN3(N417), .IN4(n171), .Q(n176) );
  AO221X1 U174 ( .IN1(knownSinks[9]), .IN2(n167), .IN3(data_out[9]), .IN4(n168), .IN5(n177), .Q(n256) );
  AO22X1 U175 ( .IN1(N400), .IN2(n170), .IN3(N416), .IN4(n171), .Q(n177) );
  AO221X1 U176 ( .IN1(knownSinks[8]), .IN2(n167), .IN3(data_out[8]), .IN4(n168), .IN5(n178), .Q(n257) );
  AO22X1 U177 ( .IN1(N399), .IN2(n170), .IN3(N415), .IN4(n171), .Q(n178) );
  AO221X1 U178 ( .IN1(knownSinks[7]), .IN2(n167), .IN3(data_out[7]), .IN4(n168), .IN5(n179), .Q(n258) );
  AO22X1 U179 ( .IN1(N398), .IN2(n170), .IN3(N414), .IN4(n171), .Q(n179) );
  AO221X1 U180 ( .IN1(knownSinks[6]), .IN2(n167), .IN3(data_out[6]), .IN4(n168), .IN5(n180), .Q(n259) );
  AO22X1 U181 ( .IN1(N397), .IN2(n170), .IN3(N413), .IN4(n171), .Q(n180) );
  AO221X1 U182 ( .IN1(knownSinks[5]), .IN2(n167), .IN3(data_out[5]), .IN4(n168), .IN5(n181), .Q(n260) );
  AO22X1 U183 ( .IN1(N396), .IN2(n170), .IN3(N412), .IN4(n171), .Q(n181) );
  AO221X1 U184 ( .IN1(knownSinks[4]), .IN2(n167), .IN3(data_out[4]), .IN4(n168), .IN5(n182), .Q(n261) );
  AO22X1 U185 ( .IN1(N395), .IN2(n170), .IN3(N411), .IN4(n171), .Q(n182) );
  AO221X1 U186 ( .IN1(knownSinks[3]), .IN2(n167), .IN3(data_out[3]), .IN4(n168), .IN5(n183), .Q(n262) );
  AO22X1 U187 ( .IN1(N394), .IN2(n170), .IN3(N410), .IN4(n171), .Q(n183) );
  AO221X1 U188 ( .IN1(knownSinks[2]), .IN2(n167), .IN3(data_out[2]), .IN4(n168), .IN5(n184), .Q(n263) );
  AO22X1 U189 ( .IN1(N393), .IN2(n170), .IN3(N409), .IN4(n171), .Q(n184) );
  AO221X1 U190 ( .IN1(knownSinks[1]), .IN2(n167), .IN3(data_out[1]), .IN4(n168), .IN5(n185), .Q(n264) );
  AO22X1 U191 ( .IN1(N392), .IN2(n170), .IN3(N408), .IN4(n171), .Q(n185) );
  AO221X1 U192 ( .IN1(knownSinks[0]), .IN2(n167), .IN3(data_out[0]), .IN4(n168), .IN5(n186), .Q(n265) );
  AO22X1 U193 ( .IN1(N391), .IN2(n170), .IN3(N407), .IN4(n171), .Q(n186) );
  OR2X1 U194 ( .IN1(n8), .IN2(n168), .Q(n187) );
  AOI21X1 U196 ( .IN1(N261), .IN2(n89), .IN3(n414), .QN(n165) );
  AO22X1 U197 ( .IN1(done), .IN2(n416), .IN3(n417), .IN4(nrst), .Q(n266) );
  AO22X1 U198 ( .IN1(worstHops[15]), .IN2(n144), .IN3(data_in[15]), .IN4(n191), 
        .Q(n267) );
  AO22X1 U199 ( .IN1(worstHops[14]), .IN2(n144), .IN3(data_in[14]), .IN4(n191), 
        .Q(n268) );
  AO22X1 U200 ( .IN1(worstHops[13]), .IN2(n144), .IN3(data_in[13]), .IN4(n191), 
        .Q(n269) );
  AO22X1 U201 ( .IN1(worstHops[12]), .IN2(n144), .IN3(data_in[12]), .IN4(n191), 
        .Q(n270) );
  AO22X1 U202 ( .IN1(worstHops[11]), .IN2(n144), .IN3(data_in[11]), .IN4(n191), 
        .Q(n271) );
  AO22X1 U203 ( .IN1(worstHops[10]), .IN2(n144), .IN3(data_in[10]), .IN4(n191), 
        .Q(n272) );
  AO22X1 U204 ( .IN1(worstHops[9]), .IN2(n144), .IN3(data_in[9]), .IN4(n191), 
        .Q(n273) );
  AO22X1 U205 ( .IN1(worstHops[8]), .IN2(n144), .IN3(data_in[8]), .IN4(n191), 
        .Q(n274) );
  AO22X1 U206 ( .IN1(worstHops[7]), .IN2(n144), .IN3(data_in[7]), .IN4(n191), 
        .Q(n275) );
  AO22X1 U207 ( .IN1(worstHops[6]), .IN2(n144), .IN3(data_in[6]), .IN4(n191), 
        .Q(n276) );
  AO22X1 U208 ( .IN1(worstHops[5]), .IN2(n144), .IN3(data_in[5]), .IN4(n191), 
        .Q(n277) );
  AO22X1 U209 ( .IN1(worstHops[4]), .IN2(n144), .IN3(data_in[4]), .IN4(n191), 
        .Q(n278) );
  AO22X1 U210 ( .IN1(worstHops[3]), .IN2(n144), .IN3(data_in[3]), .IN4(n191), 
        .Q(n279) );
  AO22X1 U211 ( .IN1(worstHops[2]), .IN2(n144), .IN3(data_in[2]), .IN4(n191), 
        .Q(n280) );
  AO22X1 U212 ( .IN1(worstHops[1]), .IN2(n144), .IN3(n6), .IN4(n191), .Q(n281)
         );
  AO22X1 U213 ( .IN1(worstHops[0]), .IN2(n144), .IN3(n4), .IN4(n191), .Q(n282)
         );
  AO22X1 U214 ( .IN1(i[14]), .IN2(n194), .IN3(N168), .IN4(n195), .Q(n283) );
  AO22X1 U215 ( .IN1(i[13]), .IN2(n194), .IN3(N167), .IN4(n195), .Q(n284) );
  AO22X1 U216 ( .IN1(i[12]), .IN2(n194), .IN3(N166), .IN4(n195), .Q(n285) );
  AO22X1 U217 ( .IN1(i[11]), .IN2(n194), .IN3(N165), .IN4(n195), .Q(n286) );
  AO22X1 U218 ( .IN1(i[10]), .IN2(n194), .IN3(N164), .IN4(n195), .Q(n287) );
  AO22X1 U219 ( .IN1(i[9]), .IN2(n194), .IN3(N163), .IN4(n195), .Q(n288) );
  AO22X1 U220 ( .IN1(i[8]), .IN2(n194), .IN3(N162), .IN4(n195), .Q(n289) );
  AO22X1 U221 ( .IN1(i[7]), .IN2(n194), .IN3(N161), .IN4(n195), .Q(n290) );
  AO22X1 U222 ( .IN1(i[6]), .IN2(n194), .IN3(N160), .IN4(n195), .Q(n291) );
  AO22X1 U223 ( .IN1(i[5]), .IN2(n194), .IN3(N159), .IN4(n195), .Q(n292) );
  AO22X1 U224 ( .IN1(i[4]), .IN2(n194), .IN3(N158), .IN4(n195), .Q(n293) );
  AO22X1 U225 ( .IN1(i[3]), .IN2(n194), .IN3(N157), .IN4(n195), .Q(n294) );
  AO22X1 U226 ( .IN1(i[2]), .IN2(n194), .IN3(N156), .IN4(n195), .Q(n295) );
  AO22X1 U227 ( .IN1(N133), .IN2(n194), .IN3(N155), .IN4(n195), .Q(n296) );
  AO22X1 U228 ( .IN1(N132), .IN2(n194), .IN3(N154), .IN4(n195), .Q(n297) );
  AO22X1 U229 ( .IN1(j[14]), .IN2(n196), .IN3(N187), .IN4(n197), .Q(n298) );
  AO22X1 U230 ( .IN1(j[13]), .IN2(n196), .IN3(N186), .IN4(n197), .Q(n299) );
  AO22X1 U231 ( .IN1(j[12]), .IN2(n196), .IN3(N185), .IN4(n197), .Q(n300) );
  AO22X1 U232 ( .IN1(j[11]), .IN2(n196), .IN3(N184), .IN4(n197), .Q(n301) );
  AO22X1 U233 ( .IN1(j[10]), .IN2(n196), .IN3(N183), .IN4(n197), .Q(n302) );
  AO22X1 U234 ( .IN1(j[9]), .IN2(n196), .IN3(N182), .IN4(n197), .Q(n303) );
  AO22X1 U235 ( .IN1(j[8]), .IN2(n196), .IN3(N181), .IN4(n197), .Q(n304) );
  AO22X1 U236 ( .IN1(j[7]), .IN2(n196), .IN3(N180), .IN4(n197), .Q(n305) );
  AO22X1 U237 ( .IN1(j[6]), .IN2(n196), .IN3(N179), .IN4(n197), .Q(n306) );
  AO22X1 U238 ( .IN1(j[5]), .IN2(n196), .IN3(N178), .IN4(n197), .Q(n307) );
  AO22X1 U239 ( .IN1(j[4]), .IN2(n196), .IN3(N177), .IN4(n197), .Q(n308) );
  AO22X1 U240 ( .IN1(j[3]), .IN2(n196), .IN3(N176), .IN4(n197), .Q(n309) );
  AO22X1 U241 ( .IN1(j[2]), .IN2(n196), .IN3(N175), .IN4(n197), .Q(n310) );
  AO22X1 U242 ( .IN1(N108), .IN2(n196), .IN3(N193), .IN4(n197), .Q(n311) );
  AO22X1 U243 ( .IN1(N107), .IN2(n196), .IN3(N192), .IN4(n197), .Q(n312) );
  AO22X1 U244 ( .IN1(j[15]), .IN2(n196), .IN3(N188), .IN4(n197), .Q(n313) );
  AO22X1 U246 ( .IN1(i[15]), .IN2(n194), .IN3(N169), .IN4(n195), .Q(n314) );
  AO22X1 U248 ( .IN1(sinkIDCount[15]), .IN2(n199), .IN3(n200), .IN4(
        data_in[15]), .Q(n315) );
  AO22X1 U249 ( .IN1(sinkIDCount[14]), .IN2(n199), .IN3(n200), .IN4(
        data_in[14]), .Q(n316) );
  AO22X1 U250 ( .IN1(sinkIDCount[13]), .IN2(n199), .IN3(n200), .IN4(
        data_in[13]), .Q(n317) );
  AO22X1 U251 ( .IN1(sinkIDCount[12]), .IN2(n199), .IN3(n200), .IN4(
        data_in[12]), .Q(n318) );
  AO22X1 U252 ( .IN1(sinkIDCount[11]), .IN2(n199), .IN3(n200), .IN4(
        data_in[11]), .Q(n319) );
  AO22X1 U253 ( .IN1(sinkIDCount[10]), .IN2(n199), .IN3(n200), .IN4(
        data_in[10]), .Q(n320) );
  AO22X1 U254 ( .IN1(sinkIDCount[9]), .IN2(n199), .IN3(n200), .IN4(data_in[9]), 
        .Q(n321) );
  AO22X1 U255 ( .IN1(sinkIDCount[8]), .IN2(n199), .IN3(n200), .IN4(data_in[8]), 
        .Q(n322) );
  AO22X1 U256 ( .IN1(sinkIDCount[7]), .IN2(n199), .IN3(n200), .IN4(data_in[7]), 
        .Q(n323) );
  AO22X1 U257 ( .IN1(sinkIDCount[6]), .IN2(n199), .IN3(n200), .IN4(data_in[6]), 
        .Q(n324) );
  AO22X1 U258 ( .IN1(sinkIDCount[5]), .IN2(n199), .IN3(n200), .IN4(data_in[5]), 
        .Q(n325) );
  AO22X1 U259 ( .IN1(sinkIDCount[4]), .IN2(n199), .IN3(n200), .IN4(data_in[4]), 
        .Q(n326) );
  AO22X1 U260 ( .IN1(sinkIDCount[3]), .IN2(n199), .IN3(n200), .IN4(data_in[3]), 
        .Q(n327) );
  AO22X1 U261 ( .IN1(sinkIDCount[2]), .IN2(n199), .IN3(n200), .IN4(data_in[2]), 
        .Q(n328) );
  AO22X1 U262 ( .IN1(sinkIDCount[1]), .IN2(n199), .IN3(n200), .IN4(n6), .Q(
        n329) );
  AO22X1 U263 ( .IN1(sinkIDCount[0]), .IN2(n199), .IN3(n200), .IN4(n4), .Q(
        n330) );
  AO22X1 U264 ( .IN1(n202), .IN2(knownSinks[15]), .IN3(n203), .IN4(data_in[15]), .Q(n331) );
  AO22X1 U265 ( .IN1(n202), .IN2(knownSinks[14]), .IN3(n203), .IN4(data_in[14]), .Q(n332) );
  AO22X1 U266 ( .IN1(n202), .IN2(knownSinks[13]), .IN3(n203), .IN4(data_in[13]), .Q(n333) );
  AO22X1 U267 ( .IN1(n202), .IN2(knownSinks[12]), .IN3(n203), .IN4(data_in[12]), .Q(n334) );
  AO22X1 U268 ( .IN1(n202), .IN2(knownSinks[11]), .IN3(n203), .IN4(data_in[11]), .Q(n335) );
  AO22X1 U269 ( .IN1(n202), .IN2(knownSinks[10]), .IN3(n203), .IN4(data_in[10]), .Q(n336) );
  AO22X1 U270 ( .IN1(n202), .IN2(knownSinks[9]), .IN3(n203), .IN4(data_in[9]), 
        .Q(n337) );
  AO22X1 U271 ( .IN1(n202), .IN2(knownSinks[8]), .IN3(n203), .IN4(data_in[8]), 
        .Q(n338) );
  AO22X1 U272 ( .IN1(n202), .IN2(knownSinks[7]), .IN3(n203), .IN4(data_in[7]), 
        .Q(n339) );
  AO22X1 U273 ( .IN1(n202), .IN2(knownSinks[6]), .IN3(n203), .IN4(data_in[6]), 
        .Q(n340) );
  AO22X1 U274 ( .IN1(n202), .IN2(knownSinks[5]), .IN3(n203), .IN4(data_in[5]), 
        .Q(n341) );
  AO22X1 U275 ( .IN1(n202), .IN2(knownSinks[4]), .IN3(n203), .IN4(data_in[4]), 
        .Q(n342) );
  AO22X1 U276 ( .IN1(n202), .IN2(knownSinks[3]), .IN3(n203), .IN4(data_in[3]), 
        .Q(n343) );
  AO22X1 U277 ( .IN1(n202), .IN2(knownSinks[2]), .IN3(n203), .IN4(data_in[2]), 
        .Q(n344) );
  AO22X1 U278 ( .IN1(n202), .IN2(knownSinks[1]), .IN3(n203), .IN4(n6), .Q(n345) );
  AO22X1 U279 ( .IN1(n202), .IN2(knownSinks[0]), .IN3(n203), .IN4(n4), .Q(n346) );
  AO22X1 U281 ( .IN1(knownSinkCount[15]), .IN2(n204), .IN3(n205), .IN4(
        data_in[15]), .Q(n347) );
  AO22X1 U282 ( .IN1(knownSinkCount[14]), .IN2(n204), .IN3(n205), .IN4(
        data_in[14]), .Q(n348) );
  AO22X1 U283 ( .IN1(knownSinkCount[13]), .IN2(n204), .IN3(n205), .IN4(
        data_in[13]), .Q(n349) );
  AO22X1 U284 ( .IN1(knownSinkCount[12]), .IN2(n204), .IN3(n205), .IN4(
        data_in[12]), .Q(n350) );
  AO22X1 U285 ( .IN1(knownSinkCount[11]), .IN2(n204), .IN3(n205), .IN4(
        data_in[11]), .Q(n351) );
  AO22X1 U286 ( .IN1(knownSinkCount[10]), .IN2(n204), .IN3(n205), .IN4(
        data_in[10]), .Q(n352) );
  AO22X1 U287 ( .IN1(knownSinkCount[9]), .IN2(n204), .IN3(n205), .IN4(
        data_in[9]), .Q(n353) );
  AO22X1 U288 ( .IN1(knownSinkCount[8]), .IN2(n204), .IN3(n205), .IN4(
        data_in[8]), .Q(n354) );
  AO22X1 U289 ( .IN1(knownSinkCount[7]), .IN2(n204), .IN3(n205), .IN4(
        data_in[7]), .Q(n355) );
  AO22X1 U290 ( .IN1(knownSinkCount[6]), .IN2(n204), .IN3(n205), .IN4(
        data_in[6]), .Q(n356) );
  AO22X1 U291 ( .IN1(knownSinkCount[5]), .IN2(n204), .IN3(n205), .IN4(
        data_in[5]), .Q(n357) );
  AO22X1 U292 ( .IN1(knownSinkCount[4]), .IN2(n204), .IN3(n205), .IN4(
        data_in[4]), .Q(n358) );
  AO22X1 U293 ( .IN1(knownSinkCount[3]), .IN2(n204), .IN3(n205), .IN4(
        data_in[3]), .Q(n359) );
  AO22X1 U294 ( .IN1(knownSinkCount[2]), .IN2(n204), .IN3(n205), .IN4(
        data_in[2]), .Q(n360) );
  AO22X1 U295 ( .IN1(knownSinkCount[1]), .IN2(n204), .IN3(n205), .IN4(n6), .Q(
        n361) );
  AO22X1 U296 ( .IN1(knownSinkCount[0]), .IN2(n204), .IN3(n205), .IN4(n4), .Q(
        n362) );
  AO22X1 U297 ( .IN1(neighborCount[15]), .IN2(n207), .IN3(n208), .IN4(
        data_in[15]), .Q(n363) );
  AO22X1 U298 ( .IN1(neighborCount[14]), .IN2(n207), .IN3(n208), .IN4(
        data_in[14]), .Q(n364) );
  AO22X1 U299 ( .IN1(neighborCount[13]), .IN2(n207), .IN3(n208), .IN4(
        data_in[13]), .Q(n365) );
  AO22X1 U300 ( .IN1(neighborCount[12]), .IN2(n207), .IN3(n208), .IN4(
        data_in[12]), .Q(n366) );
  AO22X1 U301 ( .IN1(neighborCount[11]), .IN2(n207), .IN3(n208), .IN4(
        data_in[11]), .Q(n367) );
  AO22X1 U302 ( .IN1(neighborCount[10]), .IN2(n207), .IN3(n208), .IN4(
        data_in[10]), .Q(n368) );
  AO22X1 U303 ( .IN1(neighborCount[9]), .IN2(n207), .IN3(n208), .IN4(
        data_in[9]), .Q(n369) );
  AO22X1 U304 ( .IN1(neighborCount[8]), .IN2(n207), .IN3(n208), .IN4(
        data_in[8]), .Q(n370) );
  AO22X1 U305 ( .IN1(neighborCount[7]), .IN2(n207), .IN3(n208), .IN4(
        data_in[7]), .Q(n371) );
  AO22X1 U306 ( .IN1(neighborCount[6]), .IN2(n207), .IN3(n208), .IN4(
        data_in[6]), .Q(n372) );
  AO22X1 U307 ( .IN1(neighborCount[5]), .IN2(n207), .IN3(n208), .IN4(
        data_in[5]), .Q(n373) );
  AO22X1 U308 ( .IN1(neighborCount[4]), .IN2(n207), .IN3(n208), .IN4(
        data_in[4]), .Q(n374) );
  AO22X1 U309 ( .IN1(neighborCount[3]), .IN2(n207), .IN3(n208), .IN4(
        data_in[3]), .Q(n375) );
  AO22X1 U310 ( .IN1(neighborCount[2]), .IN2(n207), .IN3(n208), .IN4(
        data_in[2]), .Q(n376) );
  AO22X1 U311 ( .IN1(neighborCount[1]), .IN2(n207), .IN3(n208), .IN4(n6), .Q(
        n377) );
  AO22X1 U312 ( .IN1(neighborCount[0]), .IN2(n207), .IN3(n208), .IN4(n4), .Q(
        n378) );
  AO22X1 U314 ( .IN1(N140), .IN2(n161), .IN3(N309), .IN4(n162), .Q(n379) );
  AO21X1 U316 ( .IN1(en), .IN2(n160), .IN3(n8), .Q(n193) );
  NAND4X0 U317 ( .IN1(n156), .IN2(n192), .IN3(n188), .IN4(n209), .QN(N735) );
  NAND3X0 U318 ( .IN1(n212), .IN2(state[1]), .IN3(state[2]), .QN(n192) );
  NAND4X0 U319 ( .IN1(n211), .IN2(n146), .IN3(n213), .IN4(n155), .QN(N734) );
  AND2X1 U320 ( .IN1(n189), .IN2(n157), .Q(n149) );
  AND4X1 U321 ( .IN1(nrst), .IN2(n215), .IN3(n216), .IN4(n190), .Q(n211) );
  NAND3X0 U322 ( .IN1(state[3]), .IN2(state[0]), .IN3(n214), .QN(n190) );
  OR3X1 U323 ( .IN1(n72), .IN2(n159), .IN3(n77), .Q(n216) );
  AND3X1 U324 ( .IN1(state[2]), .IN2(state[3]), .IN3(n159), .Q(n160) );
  NOR4X0 U325 ( .IN1(n218), .IN2(n413), .IN3(n407), .IN4(n411), .QN(n217) );
  NAND3X0 U326 ( .IN1(n147), .IN2(n156), .IN3(n219), .QN(n218) );
  NAND4X0 U327 ( .IN1(state[3]), .IN2(state[0]), .IN3(n78), .IN4(n77), .QN(
        n156) );
  NAND3X0 U328 ( .IN1(n78), .IN2(n77), .IN3(n212), .QN(n147) );
  NOR4X0 U329 ( .IN1(n407), .IN2(n414), .IN3(n221), .IN4(n150), .QN(n220) );
  NAND4X0 U330 ( .IN1(n222), .IN2(n166), .IN3(n201), .IN4(n206), .QN(n150) );
  NAND3X0 U331 ( .IN1(n79), .IN2(n72), .IN3(n214), .QN(n206) );
  NAND3X0 U332 ( .IN1(state[2]), .IN2(n72), .IN3(n159), .QN(n201) );
  NAND4X0 U333 ( .IN1(state[2]), .IN2(state[1]), .IN3(n79), .IN4(n72), .QN(
        n166) );
  NAND3X0 U334 ( .IN1(n159), .IN2(n72), .IN3(start), .QN(n222) );
  NAND3X0 U335 ( .IN1(state[3]), .IN2(n77), .IN3(n159), .QN(n188) );
  NAND3X0 U336 ( .IN1(n212), .IN2(n78), .IN3(state[2]), .QN(n189) );
  NAND3X0 U337 ( .IN1(state[3]), .IN2(n79), .IN3(n214), .QN(n157) );
  fixSinkList_DW01_inc_0 add_135 ( .A(sinkIDCount), .SUM({N422, N421, N420, 
        N419, N418, N417, N416, N415, N414, N413, N412, N411, N410, N409, N408, 
        N407}) );
  fixSinkList_DW01_inc_1 r233 ( .A({j[15:2], N108, N107}), .SUM({N188, N187, 
        N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, 
        N193, N192}) );
  fixSinkList_DW01_inc_2 r231 ( .A({i[15:2], N133, N132}), .SUM({N169, N168, 
        N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, 
        N155, N154}) );
  fixSinkList_DW01_inc_3 add_96 ( .A({k[15:2], N141, N140}), .SUM({N260, N259, 
        N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, N247, 
        N310, N309}) );
  fixSinkList_DW01_inc_4 add_127 ( .A(worstHops), .SUM({N390, N389, N388, N387, 
        N386, N385, N384, N383, N382, N381, N380, N379, N378, N377, N376, N375}) );
  fixSinkList_DW01_add_11 add_127_2 ( .A({data_in[15:2], n6, n4}), .B({N390, 
        N389, N388, N387, N386, N385, N384, N383, N382, N381, N380, N379, N378, 
        N377, N376, N375}), .CI(1'b0), .SUM({N406, N405, N404, N403, N402, 
        N401, N400, N399, N398, N397, N396, N395, N394, N393, N392, N391}) );
  FADDX1 \add_0_root_add_67_2/U1_4  ( .A(k[3]), .B(N132), .CI(k[2]), .CO(
        \add_0_root_add_67_2/carry[5] ), .S(N143) );
  FADDX1 \add_0_root_add_67_2/U1_5  ( .A(k[4]), .B(N133), .CI(
        \add_0_root_add_67_2/carry[5] ), .CO(\add_0_root_add_67_2/carry[6] ), 
        .S(N144) );
  FADDX1 \add_0_root_add_67_2/U1_6  ( .A(k[5]), .B(n1), .CI(
        \add_0_root_add_67_2/carry[6] ), .CO(\add_0_root_add_67_2/carry[7] ), 
        .S(N145) );
  FADDX1 \add_0_root_add_67_2/U1_7  ( .A(k[6]), .B(N135), .CI(
        \add_0_root_add_67_2/carry[7] ), .CO(\add_0_root_add_67_2/carry[8] ), 
        .S(N146) );
  FADDX1 \add_0_root_add_67_2/U1_8  ( .A(k[7]), .B(N136), .CI(
        \add_0_root_add_67_2/carry[8] ), .CO(\add_0_root_add_67_2/carry[9] ), 
        .S(N147) );
  FADDX1 \add_0_root_add_67_2/U1_9  ( .A(k[8]), .B(N137), .CI(
        \add_0_root_add_67_2/carry[9] ), .CO(\add_0_root_add_67_2/carry[10] ), 
        .S(N148) );
  FADDX1 \add_0_root_add_67_2/U1_10  ( .A(k[9]), .B(N138), .CI(
        \add_0_root_add_67_2/carry[10] ), .S(N149) );
  FADDX1 \r239/U1_4  ( .A(N248), .B(N132), .CI(N247), .CO(\r239/carry[5] ), 
        .S(N312) );
  FADDX1 \r239/U1_5  ( .A(N249), .B(N133), .CI(\r239/carry[5] ), .CO(
        \r239/carry[6] ), .S(N313) );
  FADDX1 \r239/U1_6  ( .A(N250), .B(n1), .CI(\r239/carry[6] ), .CO(
        \r239/carry[7] ), .S(N314) );
  FADDX1 \r239/U1_7  ( .A(N251), .B(N135), .CI(\r239/carry[7] ), .CO(
        \r239/carry[8] ), .S(N315) );
  FADDX1 \r239/U1_8  ( .A(N252), .B(N136), .CI(\r239/carry[8] ), .CO(
        \r239/carry[9] ), .S(N316) );
  FADDX1 \r239/U1_9  ( .A(N253), .B(N137), .CI(\r239/carry[9] ), .CO(
        \r239/carry[10] ), .S(N317) );
  DFFX1 done_buf_reg ( .D(n266), .CLK(clock), .Q(done) );
  DFFX1 \sinkIDCount_reg[15]  ( .D(n315), .CLK(clock), .Q(sinkIDCount[15]) );
  DFFX1 \sinkIDCount_reg[14]  ( .D(n316), .CLK(clock), .Q(sinkIDCount[14]) );
  DFFX1 \sinkIDCount_reg[13]  ( .D(n317), .CLK(clock), .Q(sinkIDCount[13]) );
  DFFX1 \sinkIDCount_reg[12]  ( .D(n318), .CLK(clock), .Q(sinkIDCount[12]) );
  DFFX1 \sinkIDCount_reg[11]  ( .D(n319), .CLK(clock), .Q(sinkIDCount[11]) );
  DFFX1 \sinkIDCount_reg[10]  ( .D(n320), .CLK(clock), .Q(sinkIDCount[10]) );
  DFFX1 \sinkIDCount_reg[9]  ( .D(n321), .CLK(clock), .Q(sinkIDCount[9]) );
  DFFX1 \sinkIDCount_reg[8]  ( .D(n322), .CLK(clock), .Q(sinkIDCount[8]) );
  DFFX1 \sinkIDCount_reg[7]  ( .D(n323), .CLK(clock), .Q(sinkIDCount[7]) );
  DFFX1 \sinkIDCount_reg[6]  ( .D(n324), .CLK(clock), .Q(sinkIDCount[6]) );
  DFFX1 \sinkIDCount_reg[5]  ( .D(n325), .CLK(clock), .Q(sinkIDCount[5]) );
  DFFX1 \sinkIDCount_reg[4]  ( .D(n326), .CLK(clock), .Q(sinkIDCount[4]) );
  DFFX1 \sinkIDCount_reg[3]  ( .D(n327), .CLK(clock), .Q(sinkIDCount[3]) );
  DFFX1 \sinkIDCount_reg[2]  ( .D(n328), .CLK(clock), .Q(sinkIDCount[2]) );
  DFFX1 \sinkIDCount_reg[1]  ( .D(n329), .CLK(clock), .Q(sinkIDCount[1]), .QN(
        n55) );
  DFFX1 \sinkIDCount_reg[0]  ( .D(n330), .CLK(clock), .Q(sinkIDCount[0]), .QN(
        n54) );
  DFFX1 \knownSinkCount_reg[15]  ( .D(n347), .CLK(clock), .Q(
        knownSinkCount[15]) );
  DFFX1 \knownSinkCount_reg[14]  ( .D(n348), .CLK(clock), .Q(
        knownSinkCount[14]) );
  DFFX1 \knownSinkCount_reg[13]  ( .D(n349), .CLK(clock), .Q(
        knownSinkCount[13]) );
  DFFX1 \knownSinkCount_reg[12]  ( .D(n350), .CLK(clock), .Q(
        knownSinkCount[12]) );
  DFFX1 \knownSinkCount_reg[11]  ( .D(n351), .CLK(clock), .Q(
        knownSinkCount[11]) );
  DFFX1 \knownSinkCount_reg[10]  ( .D(n352), .CLK(clock), .Q(
        knownSinkCount[10]) );
  DFFX1 \knownSinkCount_reg[9]  ( .D(n353), .CLK(clock), .Q(knownSinkCount[9])
         );
  DFFX1 \knownSinkCount_reg[8]  ( .D(n354), .CLK(clock), .Q(knownSinkCount[8])
         );
  DFFX1 \knownSinkCount_reg[7]  ( .D(n355), .CLK(clock), .Q(knownSinkCount[7])
         );
  DFFX1 \knownSinkCount_reg[6]  ( .D(n356), .CLK(clock), .Q(knownSinkCount[6])
         );
  DFFX1 \knownSinkCount_reg[5]  ( .D(n357), .CLK(clock), .Q(knownSinkCount[5])
         );
  DFFX1 \knownSinkCount_reg[4]  ( .D(n358), .CLK(clock), .Q(knownSinkCount[4])
         );
  DFFX1 \knownSinkCount_reg[3]  ( .D(n359), .CLK(clock), .Q(knownSinkCount[3])
         );
  DFFX1 \knownSinkCount_reg[2]  ( .D(n360), .CLK(clock), .Q(knownSinkCount[2])
         );
  DFFX1 \knownSinkCount_reg[1]  ( .D(n361), .CLK(clock), .Q(knownSinkCount[1]), 
        .QN(n403) );
  DFFX1 \knownSinkCount_reg[0]  ( .D(n362), .CLK(clock), .Q(knownSinkCount[0]), 
        .QN(n402) );
  DFFX1 \worstHops_reg[15]  ( .D(n267), .CLK(clock), .Q(worstHops[15]) );
  DFFX1 \worstHops_reg[14]  ( .D(n268), .CLK(clock), .Q(worstHops[14]) );
  DFFX1 \worstHops_reg[13]  ( .D(n269), .CLK(clock), .Q(worstHops[13]) );
  DFFX1 \worstHops_reg[12]  ( .D(n270), .CLK(clock), .Q(worstHops[12]) );
  DFFX1 \worstHops_reg[11]  ( .D(n271), .CLK(clock), .Q(worstHops[11]) );
  DFFX1 \worstHops_reg[10]  ( .D(n272), .CLK(clock), .Q(worstHops[10]) );
  DFFX1 \worstHops_reg[9]  ( .D(n273), .CLK(clock), .Q(worstHops[9]) );
  DFFX1 \worstHops_reg[8]  ( .D(n274), .CLK(clock), .Q(worstHops[8]) );
  DFFX1 \worstHops_reg[7]  ( .D(n275), .CLK(clock), .Q(worstHops[7]) );
  DFFX1 \worstHops_reg[6]  ( .D(n276), .CLK(clock), .Q(worstHops[6]) );
  DFFX1 \worstHops_reg[5]  ( .D(n277), .CLK(clock), .Q(worstHops[5]) );
  DFFX1 \worstHops_reg[4]  ( .D(n278), .CLK(clock), .Q(worstHops[4]) );
  DFFX1 \worstHops_reg[3]  ( .D(n279), .CLK(clock), .Q(worstHops[3]) );
  DFFX1 \worstHops_reg[2]  ( .D(n280), .CLK(clock), .Q(worstHops[2]) );
  DFFX1 \worstHops_reg[1]  ( .D(n281), .CLK(clock), .Q(worstHops[1]) );
  DFFX1 \worstHops_reg[0]  ( .D(n282), .CLK(clock), .Q(worstHops[0]) );
  DFFX1 \knownSinks_reg[15]  ( .D(n331), .CLK(clock), .Q(knownSinks[15]) );
  DFFX1 \knownSinks_reg[14]  ( .D(n332), .CLK(clock), .Q(knownSinks[14]) );
  DFFX1 \knownSinks_reg[13]  ( .D(n333), .CLK(clock), .Q(knownSinks[13]) );
  DFFX1 \knownSinks_reg[12]  ( .D(n334), .CLK(clock), .Q(knownSinks[12]) );
  DFFX1 \knownSinks_reg[11]  ( .D(n335), .CLK(clock), .Q(knownSinks[11]) );
  DFFX1 \knownSinks_reg[10]  ( .D(n336), .CLK(clock), .Q(knownSinks[10]) );
  DFFX1 \knownSinks_reg[9]  ( .D(n337), .CLK(clock), .Q(knownSinks[9]) );
  DFFX1 \knownSinks_reg[8]  ( .D(n338), .CLK(clock), .Q(knownSinks[8]) );
  DFFX1 \knownSinks_reg[7]  ( .D(n339), .CLK(clock), .Q(knownSinks[7]) );
  DFFX1 \knownSinks_reg[6]  ( .D(n340), .CLK(clock), .Q(knownSinks[6]) );
  DFFX1 \knownSinks_reg[5]  ( .D(n341), .CLK(clock), .Q(knownSinks[5]) );
  DFFX1 \knownSinks_reg[4]  ( .D(n342), .CLK(clock), .Q(knownSinks[4]) );
  DFFX1 \knownSinks_reg[3]  ( .D(n343), .CLK(clock), .Q(knownSinks[3]) );
  DFFX1 \knownSinks_reg[2]  ( .D(n344), .CLK(clock), .Q(knownSinks[2]) );
  DFFX1 \knownSinks_reg[1]  ( .D(n345), .CLK(clock), .Q(knownSinks[1]), .QN(
        n31) );
  DFFX1 \knownSinks_reg[0]  ( .D(n346), .CLK(clock), .Q(knownSinks[0]) );
  DFFX1 \neighborCount_reg[15]  ( .D(n363), .CLK(clock), .Q(neighborCount[15])
         );
  DFFX1 \neighborCount_reg[14]  ( .D(n364), .CLK(clock), .Q(neighborCount[14])
         );
  DFFX1 \neighborCount_reg[13]  ( .D(n365), .CLK(clock), .Q(neighborCount[13])
         );
  DFFX1 \neighborCount_reg[12]  ( .D(n366), .CLK(clock), .Q(neighborCount[12])
         );
  DFFX1 \neighborCount_reg[11]  ( .D(n367), .CLK(clock), .Q(neighborCount[11])
         );
  DFFX1 \neighborCount_reg[10]  ( .D(n368), .CLK(clock), .Q(neighborCount[10])
         );
  DFFX1 \neighborCount_reg[9]  ( .D(n369), .CLK(clock), .Q(neighborCount[9])
         );
  DFFX1 \neighborCount_reg[8]  ( .D(n370), .CLK(clock), .Q(neighborCount[8])
         );
  DFFX1 \neighborCount_reg[7]  ( .D(n371), .CLK(clock), .Q(neighborCount[7])
         );
  DFFX1 \neighborCount_reg[6]  ( .D(n372), .CLK(clock), .Q(neighborCount[6])
         );
  DFFX1 \neighborCount_reg[5]  ( .D(n373), .CLK(clock), .Q(neighborCount[5])
         );
  DFFX1 \neighborCount_reg[4]  ( .D(n374), .CLK(clock), .Q(neighborCount[4])
         );
  DFFX1 \neighborCount_reg[3]  ( .D(n375), .CLK(clock), .Q(neighborCount[3])
         );
  DFFX1 \neighborCount_reg[2]  ( .D(n376), .CLK(clock), .Q(neighborCount[2])
         );
  DFFX1 \neighborCount_reg[1]  ( .D(n377), .CLK(clock), .Q(neighborCount[1]), 
        .QN(n86) );
  DFFX1 \neighborCount_reg[0]  ( .D(n378), .CLK(clock), .Q(neighborCount[0]), 
        .QN(n85) );
  DFFX1 wr_en_buf_reg ( .D(n249), .CLK(clock), .Q(wr_en) );
  DFFX1 \k_reg[15]  ( .D(n234), .CLK(clock), .Q(k[15]) );
  DFFX1 \k_reg[14]  ( .D(n235), .CLK(clock), .Q(k[14]) );
  DFFX1 \k_reg[13]  ( .D(n236), .CLK(clock), .Q(k[13]) );
  DFFX1 \k_reg[12]  ( .D(n237), .CLK(clock), .Q(k[12]) );
  DFFX1 \k_reg[11]  ( .D(n238), .CLK(clock), .Q(k[11]) );
  DFFX1 \k_reg[10]  ( .D(n239), .CLK(clock), .Q(k[10]) );
  DFFX1 \k_reg[9]  ( .D(n240), .CLK(clock), .Q(k[9]) );
  DFFX1 \k_reg[8]  ( .D(n241), .CLK(clock), .Q(k[8]) );
  DFFX1 \k_reg[7]  ( .D(n242), .CLK(clock), .Q(k[7]) );
  DFFX1 \k_reg[6]  ( .D(n243), .CLK(clock), .Q(k[6]) );
  DFFX1 \k_reg[5]  ( .D(n244), .CLK(clock), .Q(k[5]) );
  DFFX1 \k_reg[4]  ( .D(n245), .CLK(clock), .Q(k[4]) );
  DFFX1 \k_reg[3]  ( .D(n246), .CLK(clock), .Q(k[3]) );
  DFFX1 \k_reg[2]  ( .D(n247), .CLK(clock), .Q(k[2]), .QN(N142) );
  DFFX1 \k_reg[1]  ( .D(n248), .CLK(clock), .Q(N141) );
  DFFX1 \k_reg[0]  ( .D(n379), .CLK(clock), .Q(N140) );
  DFFX1 \state_reg[3]  ( .D(N735), .CLK(clock), .Q(state[3]), .QN(n72) );
  DFFX1 \state_reg[1]  ( .D(N733), .CLK(clock), .Q(state[1]), .QN(n78) );
  DFFX1 \state_reg[2]  ( .D(N734), .CLK(clock), .Q(state[2]), .QN(n77) );
  DFFX1 \state_reg[0]  ( .D(N732), .CLK(clock), .Q(state[0]), .QN(n79) );
  XOR3X1 U3 ( .IN1(N254), .IN2(N138), .IN3(\r239/carry[10] ), .Q(N318) );
  INVX0 U4 ( .INP(n210), .ZN(n407) );
  NOR2X0 U5 ( .IN1(n8), .IN2(n405), .QN(n82) );
  NOR2X0 U6 ( .IN1(n409), .IN2(n8), .QN(n162) );
  NOR2X0 U7 ( .IN1(n419), .IN2(n158), .QN(n93) );
  NOR2X0 U8 ( .IN1(n158), .IN2(N170), .QN(n92) );
  NAND2X1 U9 ( .IN1(N151), .IN2(n408), .QN(n158) );
  INVX0 U10 ( .INP(n89), .ZN(n409) );
  NAND2X1 U11 ( .IN1(N170), .IN2(n198), .QN(n210) );
  INVX0 U12 ( .INP(n95), .ZN(n405) );
  NOR3X0 U13 ( .IN1(n196), .IN2(n149), .IN3(n8), .QN(n197) );
  OA21X1 U14 ( .IN1(n149), .IN2(N170), .IN3(n409), .Q(n146) );
  NOR4X0 U15 ( .IN1(n8), .IN2(n194), .IN3(n149), .IN4(N170), .QN(n195) );
  INVX0 U16 ( .INP(nrst), .ZN(n8) );
  NOR2X0 U17 ( .IN1(n155), .IN2(n8), .QN(n203) );
  AND2X1 U18 ( .IN1(n416), .IN2(n155), .Q(n202) );
  AND2X1 U19 ( .IN1(n149), .IN2(n416), .Q(n161) );
  INVX0 U20 ( .INP(N170), .ZN(n419) );
  INVX0 U21 ( .INP(n5), .ZN(n4) );
  NOR2X0 U22 ( .IN1(n189), .IN2(N151), .QN(n89) );
  NOR2X0 U23 ( .IN1(n187), .IN2(n156), .QN(n171) );
  NOR2X0 U24 ( .IN1(n193), .IN2(n407), .QN(n196) );
  AND3X1 U25 ( .IN1(nrst), .IN2(n156), .IN3(n165), .Q(n168) );
  NOR2X0 U26 ( .IN1(n187), .IN2(n189), .QN(n167) );
  NOR2X0 U27 ( .IN1(n188), .IN2(n187), .QN(n170) );
  NAND2X1 U28 ( .IN1(n157), .IN2(n158), .QN(n198) );
  INVX0 U29 ( .INP(n7), .ZN(n6) );
  INVX0 U30 ( .INP(N154), .ZN(N204) );
  INVX0 U31 ( .INP(N175), .ZN(N194) );
  INVX0 U32 ( .INP(n87), .ZN(n406) );
  INVX0 U33 ( .INP(n150), .ZN(n412) );
  NOR2X0 U34 ( .IN1(n198), .IN2(n193), .QN(n194) );
  NOR2X0 U35 ( .IN1(n193), .IN2(n410), .QN(n144) );
  NOR2X0 U36 ( .IN1(n193), .IN2(n411), .QN(n204) );
  NOR2X0 U37 ( .IN1(n193), .IN2(n415), .QN(n199) );
  NOR2X0 U38 ( .IN1(n192), .IN2(n8), .QN(n191) );
  NOR2X0 U39 ( .IN1(n206), .IN2(n8), .QN(n205) );
  NOR2X0 U40 ( .IN1(n201), .IN2(n8), .QN(n200) );
  NOR2X0 U41 ( .IN1(n147), .IN2(n8), .QN(n208) );
  OA21X1 U42 ( .IN1(n210), .IN2(n418), .IN3(n211), .Q(n209) );
  INVX0 U43 ( .INP(N189), .ZN(n418) );
  INVX0 U44 ( .INP(n193), .ZN(n416) );
  NOR2X0 U45 ( .IN1(n415), .IN2(n413), .QN(n213) );
  AND2X1 U46 ( .IN1(n416), .IN2(n147), .Q(n207) );
  NOR2X0 U47 ( .IN1(n220), .IN2(n8), .QN(N732) );
  NOR2X0 U48 ( .IN1(N261), .IN2(n409), .QN(n221) );
  NOR2X0 U49 ( .IN1(n217), .IN2(n8), .QN(N733) );
  NAND2X1 U50 ( .IN1(N261), .IN2(n89), .QN(n219) );
  NOR2X0 U51 ( .IN1(n157), .IN2(N170), .QN(n91) );
  NOR2X0 U52 ( .IN1(n419), .IN2(n157), .QN(n88) );
  INVX0 U53 ( .INP(N155), .ZN(n84) );
  INVX0 U54 ( .INP(N310), .ZN(n56) );
  NAND2X1 U55 ( .IN1(n155), .IN2(n156), .QN(n87) );
  INVX0 U56 ( .INP(n206), .ZN(n411) );
  INVX0 U57 ( .INP(n201), .ZN(n415) );
  INVX0 U58 ( .INP(n192), .ZN(n410) );
  INVX0 U59 ( .INP(n166), .ZN(n413) );
  NAND2X1 U60 ( .IN1(n214), .IN2(n212), .QN(n155) );
  INVX0 U61 ( .INP(n189), .ZN(n408) );
  INVX0 U62 ( .INP(n188), .ZN(n414) );
  INVX0 U63 ( .INP(N193), .ZN(n401) );
  INVX0 U64 ( .INP(data_in[0]), .ZN(n5) );
  INVX0 U65 ( .INP(data_in[1]), .ZN(n7) );
  INVX0 U66 ( .INP(n164), .ZN(n404) );
  OA21X1 U67 ( .IN1(n414), .IN2(n408), .IN3(n164), .Q(n163) );
  INVX0 U68 ( .INP(N247), .ZN(N311) );
  NAND2X1 U69 ( .IN1(n160), .IN2(n420), .QN(n215) );
  INVX0 U70 ( .INP(en), .ZN(n420) );
  INVX0 U71 ( .INP(n190), .ZN(n417) );
  NOR2X0 U72 ( .IN1(n79), .IN2(state[3]), .QN(n212) );
  NOR2X0 U73 ( .IN1(n78), .IN2(state[2]), .QN(n214) );
  NOR2X0 U74 ( .IN1(state[1]), .IN2(state[0]), .QN(n159) );
  NAND2X1 U75 ( .IN1(N107), .IN2(n411), .QN(n100) );
  XNOR2X1 U76 ( .IN1(i[9]), .IN2(\r227/carry[10] ), .Q(N127) );
  OR2X1 U77 ( .IN1(i[8]), .IN2(\r227/carry[9] ), .Q(\r227/carry[10] ) );
  XNOR2X1 U78 ( .IN1(\r227/carry[9] ), .IN2(i[8]), .Q(N126) );
  AND2X1 U79 ( .IN1(\r227/carry[8] ), .IN2(i[7]), .Q(\r227/carry[9] ) );
  XOR2X1 U195 ( .IN1(i[7]), .IN2(\r227/carry[8] ), .Q(N125) );
  OR2X1 U245 ( .IN1(i[6]), .IN2(\r227/carry[7] ), .Q(\r227/carry[8] ) );
  XNOR2X1 U247 ( .IN1(\r227/carry[7] ), .IN2(i[6]), .Q(N124) );
  AND2X1 U280 ( .IN1(\r227/carry[6] ), .IN2(i[5]), .Q(\r227/carry[7] ) );
  XOR2X1 U313 ( .IN1(i[5]), .IN2(\r227/carry[6] ), .Q(N123) );
  AND2X1 U315 ( .IN1(\r227/carry[5] ), .IN2(i[4]), .Q(\r227/carry[6] ) );
  XOR2X1 U338 ( .IN1(i[4]), .IN2(\r227/carry[5] ), .Q(N122) );
  AND2X1 U339 ( .IN1(\r227/carry[4] ), .IN2(i[3]), .Q(\r227/carry[5] ) );
  XOR2X1 U340 ( .IN1(i[3]), .IN2(\r227/carry[4] ), .Q(N121) );
  OR2X1 U341 ( .IN1(i[2]), .IN2(\r227/carry[3] ), .Q(\r227/carry[4] ) );
  XNOR2X1 U342 ( .IN1(\r227/carry[3] ), .IN2(i[2]), .Q(N120) );
  OR2X1 U343 ( .IN1(N133), .IN2(N132), .Q(\r227/carry[3] ) );
  XNOR2X1 U344 ( .IN1(N132), .IN2(N133), .Q(N119) );
  XOR2X1 U345 ( .IN1(N182), .IN2(\add_155/carry[10] ), .Q(N482) );
  AND2X1 U346 ( .IN1(\add_155/carry[9] ), .IN2(N181), .Q(\add_155/carry[10] )
         );
  XOR2X1 U347 ( .IN1(N181), .IN2(\add_155/carry[9] ), .Q(N481) );
  AND2X1 U348 ( .IN1(\add_155/carry[8] ), .IN2(N180), .Q(\add_155/carry[9] )
         );
  XOR2X1 U349 ( .IN1(N180), .IN2(\add_155/carry[8] ), .Q(N480) );
  AND2X1 U350 ( .IN1(\add_155/carry[7] ), .IN2(N179), .Q(\add_155/carry[8] )
         );
  XOR2X1 U351 ( .IN1(N179), .IN2(\add_155/carry[7] ), .Q(N479) );
  AND2X1 U352 ( .IN1(\add_155/carry[6] ), .IN2(N178), .Q(\add_155/carry[7] )
         );
  XOR2X1 U353 ( .IN1(N178), .IN2(\add_155/carry[6] ), .Q(N478) );
  AND2X1 U354 ( .IN1(\add_155/carry[5] ), .IN2(N177), .Q(\add_155/carry[6] )
         );
  XOR2X1 U355 ( .IN1(N177), .IN2(\add_155/carry[5] ), .Q(N477) );
  AND2X1 U356 ( .IN1(N175), .IN2(N176), .Q(\add_155/carry[5] ) );
  XOR2X1 U357 ( .IN1(N176), .IN2(N175), .Q(N476) );
  XOR2X1 U358 ( .IN1(N182), .IN2(\add_87/carry[10] ), .Q(N201) );
  AND2X1 U359 ( .IN1(\add_87/carry[9] ), .IN2(N181), .Q(\add_87/carry[10] ) );
  XOR2X1 U360 ( .IN1(N181), .IN2(\add_87/carry[9] ), .Q(N200) );
  AND2X1 U361 ( .IN1(\add_87/carry[8] ), .IN2(N180), .Q(\add_87/carry[9] ) );
  XOR2X1 U362 ( .IN1(N180), .IN2(\add_87/carry[8] ), .Q(N199) );
  AND2X1 U363 ( .IN1(\add_87/carry[7] ), .IN2(N179), .Q(\add_87/carry[8] ) );
  XOR2X1 U364 ( .IN1(N179), .IN2(\add_87/carry[7] ), .Q(N198) );
  AND2X1 U365 ( .IN1(\add_87/carry[6] ), .IN2(N178), .Q(\add_87/carry[7] ) );
  XOR2X1 U366 ( .IN1(N178), .IN2(\add_87/carry[6] ), .Q(N197) );
  AND2X1 U367 ( .IN1(\add_87/carry[5] ), .IN2(N177), .Q(\add_87/carry[6] ) );
  XOR2X1 U368 ( .IN1(N177), .IN2(\add_87/carry[5] ), .Q(N196) );
  AND2X1 U369 ( .IN1(N175), .IN2(N176), .Q(\add_87/carry[5] ) );
  XOR2X1 U370 ( .IN1(N176), .IN2(N175), .Q(N195) );
  XNOR2X1 U371 ( .IN1(N163), .IN2(\add_92/carry[10] ), .Q(N213) );
  OR2X1 U372 ( .IN1(N162), .IN2(\add_92/carry[9] ), .Q(\add_92/carry[10] ) );
  XNOR2X1 U373 ( .IN1(\add_92/carry[9] ), .IN2(N162), .Q(N212) );
  AND2X1 U374 ( .IN1(\add_92/carry[8] ), .IN2(N161), .Q(\add_92/carry[9] ) );
  XOR2X1 U375 ( .IN1(N161), .IN2(\add_92/carry[8] ), .Q(N211) );
  OR2X1 U376 ( .IN1(N160), .IN2(\add_92/carry[7] ), .Q(\add_92/carry[8] ) );
  XNOR2X1 U377 ( .IN1(\add_92/carry[7] ), .IN2(N160), .Q(N210) );
  AND2X1 U378 ( .IN1(\add_92/carry[6] ), .IN2(N159), .Q(\add_92/carry[7] ) );
  XOR2X1 U379 ( .IN1(N159), .IN2(\add_92/carry[6] ), .Q(N209) );
  AND2X1 U380 ( .IN1(\add_92/carry[5] ), .IN2(N158), .Q(\add_92/carry[6] ) );
  XOR2X1 U381 ( .IN1(N158), .IN2(\add_92/carry[5] ), .Q(N208) );
  AND2X1 U382 ( .IN1(\add_92/carry[4] ), .IN2(N157), .Q(\add_92/carry[5] ) );
  XOR2X1 U383 ( .IN1(N157), .IN2(\add_92/carry[4] ), .Q(N207) );
  OR2X1 U384 ( .IN1(N156), .IN2(\add_92/carry[3] ), .Q(\add_92/carry[4] ) );
  XNOR2X1 U385 ( .IN1(\add_92/carry[3] ), .IN2(N156), .Q(N206) );
  OR2X1 U386 ( .IN1(N155), .IN2(N154), .Q(\add_92/carry[3] ) );
  XNOR2X1 U387 ( .IN1(N154), .IN2(N155), .Q(N205) );
  XNOR2X1 U388 ( .IN1(N163), .IN2(\add_160/carry[10] ), .Q(N494) );
  OR2X1 U389 ( .IN1(N162), .IN2(\add_160/carry[9] ), .Q(\add_160/carry[10] )
         );
  XNOR2X1 U390 ( .IN1(\add_160/carry[9] ), .IN2(N162), .Q(N493) );
  AND2X1 U391 ( .IN1(\add_160/carry[8] ), .IN2(N161), .Q(\add_160/carry[9] )
         );
  XOR2X1 U392 ( .IN1(N161), .IN2(\add_160/carry[8] ), .Q(N492) );
  OR2X1 U393 ( .IN1(N160), .IN2(\add_160/carry[7] ), .Q(\add_160/carry[8] ) );
  XNOR2X1 U394 ( .IN1(\add_160/carry[7] ), .IN2(N160), .Q(N491) );
  AND2X1 U395 ( .IN1(\add_160/carry[6] ), .IN2(N159), .Q(\add_160/carry[7] )
         );
  XOR2X1 U396 ( .IN1(N159), .IN2(\add_160/carry[6] ), .Q(N490) );
  AND2X1 U397 ( .IN1(\add_160/carry[5] ), .IN2(N158), .Q(\add_160/carry[6] )
         );
  XOR2X1 U398 ( .IN1(N158), .IN2(\add_160/carry[5] ), .Q(N489) );
  AND2X1 U399 ( .IN1(\add_160/carry[4] ), .IN2(N157), .Q(\add_160/carry[5] )
         );
  XOR2X1 U400 ( .IN1(N157), .IN2(\add_160/carry[4] ), .Q(N488) );
  OR2X1 U401 ( .IN1(N156), .IN2(\add_160/carry[3] ), .Q(\add_160/carry[4] ) );
  XNOR2X1 U402 ( .IN1(\add_160/carry[3] ), .IN2(N156), .Q(N487) );
  OR2X1 U403 ( .IN1(N155), .IN2(N154), .Q(\add_160/carry[3] ) );
  XNOR2X1 U404 ( .IN1(N154), .IN2(N155), .Q(N486) );
  XOR2X1 U405 ( .IN1(j[9]), .IN2(\add_55/carry[10] ), .Q(N116) );
  AND2X1 U406 ( .IN1(\add_55/carry[9] ), .IN2(j[8]), .Q(\add_55/carry[10] ) );
  XOR2X1 U407 ( .IN1(j[8]), .IN2(\add_55/carry[9] ), .Q(N115) );
  AND2X1 U408 ( .IN1(\add_55/carry[8] ), .IN2(j[7]), .Q(\add_55/carry[9] ) );
  XOR2X1 U409 ( .IN1(j[7]), .IN2(\add_55/carry[8] ), .Q(N114) );
  AND2X1 U410 ( .IN1(\add_55/carry[7] ), .IN2(j[6]), .Q(\add_55/carry[8] ) );
  XOR2X1 U411 ( .IN1(j[6]), .IN2(\add_55/carry[7] ), .Q(N113) );
  AND2X1 U412 ( .IN1(\add_55/carry[6] ), .IN2(j[5]), .Q(\add_55/carry[7] ) );
  XOR2X1 U413 ( .IN1(j[5]), .IN2(\add_55/carry[6] ), .Q(N112) );
  AND2X1 U414 ( .IN1(\add_55/carry[5] ), .IN2(j[4]), .Q(\add_55/carry[6] ) );
  XOR2X1 U415 ( .IN1(j[4]), .IN2(\add_55/carry[5] ), .Q(N111) );
  AND2X1 U416 ( .IN1(j[2]), .IN2(j[3]), .Q(\add_55/carry[5] ) );
  XOR2X1 U417 ( .IN1(j[3]), .IN2(j[2]), .Q(N110) );
  XOR2X1 U418 ( .IN1(i[6]), .IN2(\r228/carry[10] ), .Q(N138) );
  OR2X1 U419 ( .IN1(i[5]), .IN2(\r228/carry[9] ), .Q(\r228/carry[10] ) );
  XNOR2X1 U420 ( .IN1(\r228/carry[9] ), .IN2(i[5]), .Q(N137) );
  AND2X1 U421 ( .IN1(\r228/carry[8] ), .IN2(i[4]), .Q(\r228/carry[9] ) );
  XOR2X1 U422 ( .IN1(i[4]), .IN2(\r228/carry[8] ), .Q(N136) );
  AND2X1 U423 ( .IN1(i[2]), .IN2(i[3]), .Q(\r228/carry[8] ) );
  XOR2X1 U424 ( .IN1(i[3]), .IN2(i[2]), .Q(N135) );
  XOR2X1 U425 ( .IN1(i[9]), .IN2(\add_121/carry[10] ), .Q(N374) );
  AND2X1 U426 ( .IN1(\add_121/carry[9] ), .IN2(i[8]), .Q(\add_121/carry[10] )
         );
  XOR2X1 U427 ( .IN1(i[8]), .IN2(\add_121/carry[9] ), .Q(N373) );
  OR2X1 U428 ( .IN1(i[7]), .IN2(\add_121/carry[8] ), .Q(\add_121/carry[9] ) );
  XNOR2X1 U429 ( .IN1(\add_121/carry[8] ), .IN2(i[7]), .Q(N372) );
  OR2X1 U430 ( .IN1(i[6]), .IN2(\add_121/carry[7] ), .Q(\add_121/carry[8] ) );
  XNOR2X1 U431 ( .IN1(\add_121/carry[7] ), .IN2(i[6]), .Q(N371) );
  OR2X1 U432 ( .IN1(i[5]), .IN2(\add_121/carry[6] ), .Q(\add_121/carry[7] ) );
  XNOR2X1 U433 ( .IN1(\add_121/carry[6] ), .IN2(i[5]), .Q(N370) );
  AND2X1 U434 ( .IN1(\add_121/carry[5] ), .IN2(i[4]), .Q(\add_121/carry[6] )
         );
  XOR2X1 U435 ( .IN1(i[4]), .IN2(\add_121/carry[5] ), .Q(N369) );
  AND2X1 U436 ( .IN1(i[2]), .IN2(i[3]), .Q(\add_121/carry[5] ) );
  XOR2X1 U437 ( .IN1(i[3]), .IN2(i[2]), .Q(N368) );
  XOR2X1 U438 ( .IN1(j[9]), .IN2(\add_115/carry[10] ), .Q(N363) );
  AND2X1 U439 ( .IN1(\add_115/carry[9] ), .IN2(j[8]), .Q(\add_115/carry[10] )
         );
  XOR2X1 U440 ( .IN1(j[8]), .IN2(\add_115/carry[9] ), .Q(N362) );
  AND2X1 U441 ( .IN1(\add_115/carry[8] ), .IN2(j[7]), .Q(\add_115/carry[9] )
         );
  XOR2X1 U442 ( .IN1(j[7]), .IN2(\add_115/carry[8] ), .Q(N361) );
  AND2X1 U443 ( .IN1(\add_115/carry[7] ), .IN2(j[6]), .Q(\add_115/carry[8] )
         );
  XOR2X1 U444 ( .IN1(j[6]), .IN2(\add_115/carry[7] ), .Q(N360) );
  AND2X1 U445 ( .IN1(\add_115/carry[6] ), .IN2(j[5]), .Q(\add_115/carry[7] )
         );
  XOR2X1 U446 ( .IN1(j[5]), .IN2(\add_115/carry[6] ), .Q(N359) );
  OR2X1 U447 ( .IN1(j[4]), .IN2(\add_115/carry[5] ), .Q(\add_115/carry[6] ) );
  XNOR2X1 U448 ( .IN1(\add_115/carry[5] ), .IN2(j[4]), .Q(N358) );
  AND2X1 U449 ( .IN1(j[2]), .IN2(j[3]), .Q(\add_115/carry[5] ) );
  XOR2X1 U450 ( .IN1(j[3]), .IN2(j[2]), .Q(N357) );
  XOR2X1 U451 ( .IN1(data_in[15]), .IN2(knownSinks[15]), .Q(n14) );
  XOR2X1 U452 ( .IN1(data_in[2]), .IN2(knownSinks[2]), .Q(n13) );
  NOR2X0 U453 ( .IN1(n5), .IN2(knownSinks[0]), .QN(n9) );
  OA22X1 U454 ( .IN1(n6), .IN2(n9), .IN3(n9), .IN4(n31), .Q(n12) );
  AND2X1 U455 ( .IN1(knownSinks[0]), .IN2(n5), .Q(n10) );
  OA22X1 U456 ( .IN1(n10), .IN2(n7), .IN3(knownSinks[1]), .IN4(n10), .Q(n11)
         );
  OR4X1 U457 ( .IN1(n14), .IN2(n13), .IN3(n12), .IN4(n11), .Q(n30) );
  XNOR2X1 U458 ( .IN1(data_in[6]), .IN2(knownSinks[6]), .Q(n18) );
  XNOR2X1 U459 ( .IN1(data_in[5]), .IN2(knownSinks[5]), .Q(n17) );
  XNOR2X1 U460 ( .IN1(data_in[4]), .IN2(knownSinks[4]), .Q(n16) );
  XNOR2X1 U461 ( .IN1(data_in[3]), .IN2(knownSinks[3]), .Q(n15) );
  NAND4X0 U462 ( .IN1(n18), .IN2(n17), .IN3(n16), .IN4(n15), .QN(n29) );
  XNOR2X1 U463 ( .IN1(data_in[10]), .IN2(knownSinks[10]), .Q(n22) );
  XNOR2X1 U464 ( .IN1(data_in[9]), .IN2(knownSinks[9]), .Q(n21) );
  XNOR2X1 U465 ( .IN1(data_in[8]), .IN2(knownSinks[8]), .Q(n20) );
  XNOR2X1 U466 ( .IN1(data_in[7]), .IN2(knownSinks[7]), .Q(n19) );
  NAND4X0 U467 ( .IN1(n22), .IN2(n21), .IN3(n20), .IN4(n19), .QN(n28) );
  XNOR2X1 U468 ( .IN1(data_in[14]), .IN2(knownSinks[14]), .Q(n26) );
  XNOR2X1 U469 ( .IN1(data_in[13]), .IN2(knownSinks[13]), .Q(n25) );
  XNOR2X1 U470 ( .IN1(data_in[12]), .IN2(knownSinks[12]), .Q(n24) );
  XNOR2X1 U471 ( .IN1(data_in[11]), .IN2(knownSinks[11]), .Q(n23) );
  NAND4X0 U472 ( .IN1(n26), .IN2(n25), .IN3(n24), .IN4(n23), .QN(n27) );
  NOR4X0 U473 ( .IN1(n30), .IN2(n29), .IN3(n28), .IN4(n27), .QN(N151) );
  XOR2X1 U474 ( .IN1(sinkIDCount[15]), .IN2(N260), .Q(n37) );
  XOR2X1 U475 ( .IN1(sinkIDCount[2]), .IN2(N247), .Q(n36) );
  NOR2X0 U476 ( .IN1(n54), .IN2(N309), .QN(n32) );
  OA22X1 U477 ( .IN1(sinkIDCount[1]), .IN2(n32), .IN3(n32), .IN4(n56), .Q(n35)
         );
  AND2X1 U478 ( .IN1(N309), .IN2(n54), .Q(n33) );
  OA22X1 U479 ( .IN1(n33), .IN2(n55), .IN3(N310), .IN4(n33), .Q(n34) );
  OR4X1 U480 ( .IN1(n37), .IN2(n36), .IN3(n35), .IN4(n34), .Q(n53) );
  XNOR2X1 U481 ( .IN1(sinkIDCount[6]), .IN2(N251), .Q(n41) );
  XNOR2X1 U482 ( .IN1(sinkIDCount[5]), .IN2(N250), .Q(n40) );
  XNOR2X1 U483 ( .IN1(sinkIDCount[4]), .IN2(N249), .Q(n39) );
  XNOR2X1 U484 ( .IN1(sinkIDCount[3]), .IN2(N248), .Q(n38) );
  NAND4X0 U485 ( .IN1(n41), .IN2(n40), .IN3(n39), .IN4(n38), .QN(n52) );
  XNOR2X1 U486 ( .IN1(sinkIDCount[10]), .IN2(N255), .Q(n45) );
  XNOR2X1 U487 ( .IN1(sinkIDCount[9]), .IN2(N254), .Q(n44) );
  XNOR2X1 U488 ( .IN1(sinkIDCount[8]), .IN2(N253), .Q(n43) );
  XNOR2X1 U489 ( .IN1(sinkIDCount[7]), .IN2(N252), .Q(n42) );
  NAND4X0 U490 ( .IN1(n45), .IN2(n44), .IN3(n43), .IN4(n42), .QN(n51) );
  XNOR2X1 U491 ( .IN1(sinkIDCount[14]), .IN2(N259), .Q(n49) );
  XNOR2X1 U492 ( .IN1(sinkIDCount[13]), .IN2(N258), .Q(n48) );
  XNOR2X1 U493 ( .IN1(sinkIDCount[12]), .IN2(N257), .Q(n47) );
  XNOR2X1 U494 ( .IN1(sinkIDCount[11]), .IN2(N256), .Q(n46) );
  NAND4X0 U495 ( .IN1(n49), .IN2(n48), .IN3(n47), .IN4(n46), .QN(n50) );
  NOR4X0 U496 ( .IN1(n53), .IN2(n52), .IN3(n51), .IN4(n50), .QN(N261) );
  XOR2X1 U497 ( .IN1(neighborCount[15]), .IN2(N169), .Q(n62) );
  XOR2X1 U498 ( .IN1(neighborCount[2]), .IN2(N156), .Q(n61) );
  NOR2X0 U499 ( .IN1(n85), .IN2(N154), .QN(n57) );
  OA22X1 U500 ( .IN1(neighborCount[1]), .IN2(n57), .IN3(n57), .IN4(n84), .Q(
        n60) );
  AND2X1 U501 ( .IN1(N154), .IN2(n85), .Q(n58) );
  OA22X1 U502 ( .IN1(n58), .IN2(n86), .IN3(N155), .IN4(n58), .Q(n59) );
  OR4X1 U503 ( .IN1(n62), .IN2(n61), .IN3(n60), .IN4(n59), .Q(n83) );
  XNOR2X1 U504 ( .IN1(neighborCount[6]), .IN2(N160), .Q(n66) );
  XNOR2X1 U505 ( .IN1(neighborCount[5]), .IN2(N159), .Q(n65) );
  XNOR2X1 U506 ( .IN1(neighborCount[4]), .IN2(N158), .Q(n64) );
  XNOR2X1 U507 ( .IN1(neighborCount[3]), .IN2(N157), .Q(n63) );
  NAND4X0 U508 ( .IN1(n66), .IN2(n65), .IN3(n64), .IN4(n63), .QN(n81) );
  XNOR2X1 U509 ( .IN1(neighborCount[10]), .IN2(N164), .Q(n70) );
  XNOR2X1 U510 ( .IN1(neighborCount[9]), .IN2(N163), .Q(n69) );
  XNOR2X1 U511 ( .IN1(neighborCount[8]), .IN2(N162), .Q(n68) );
  XNOR2X1 U512 ( .IN1(neighborCount[7]), .IN2(N161), .Q(n67) );
  NAND4X0 U513 ( .IN1(n70), .IN2(n69), .IN3(n68), .IN4(n67), .QN(n80) );
  XNOR2X1 U514 ( .IN1(neighborCount[14]), .IN2(N168), .Q(n75) );
  XNOR2X1 U515 ( .IN1(neighborCount[13]), .IN2(N167), .Q(n74) );
  XNOR2X1 U516 ( .IN1(neighborCount[12]), .IN2(N166), .Q(n73) );
  XNOR2X1 U517 ( .IN1(neighborCount[11]), .IN2(N165), .Q(n71) );
  NAND4X0 U518 ( .IN1(n75), .IN2(n74), .IN3(n73), .IN4(n71), .QN(n76) );
  NOR4X0 U519 ( .IN1(n83), .IN2(n81), .IN3(n80), .IN4(n76), .QN(N170) );
  XOR2X1 U520 ( .IN1(knownSinkCount[15]), .IN2(N188), .Q(n384) );
  XOR2X1 U521 ( .IN1(knownSinkCount[2]), .IN2(N175), .Q(n383) );
  NOR2X0 U522 ( .IN1(n402), .IN2(N192), .QN(n90) );
  OA22X1 U523 ( .IN1(knownSinkCount[1]), .IN2(n90), .IN3(n90), .IN4(n401), .Q(
        n382) );
  AND2X1 U524 ( .IN1(N192), .IN2(n402), .Q(n380) );
  OA22X1 U525 ( .IN1(n380), .IN2(n403), .IN3(N193), .IN4(n380), .Q(n381) );
  OR4X1 U526 ( .IN1(n384), .IN2(n383), .IN3(n382), .IN4(n381), .Q(n400) );
  XNOR2X1 U527 ( .IN1(knownSinkCount[6]), .IN2(N179), .Q(n388) );
  XNOR2X1 U528 ( .IN1(knownSinkCount[5]), .IN2(N178), .Q(n387) );
  XNOR2X1 U529 ( .IN1(knownSinkCount[4]), .IN2(N177), .Q(n386) );
  XNOR2X1 U530 ( .IN1(knownSinkCount[3]), .IN2(N176), .Q(n385) );
  NAND4X0 U531 ( .IN1(n388), .IN2(n387), .IN3(n386), .IN4(n385), .QN(n399) );
  XNOR2X1 U532 ( .IN1(knownSinkCount[10]), .IN2(N183), .Q(n392) );
  XNOR2X1 U533 ( .IN1(knownSinkCount[9]), .IN2(N182), .Q(n391) );
  XNOR2X1 U534 ( .IN1(knownSinkCount[8]), .IN2(N181), .Q(n390) );
  XNOR2X1 U535 ( .IN1(knownSinkCount[7]), .IN2(N180), .Q(n389) );
  NAND4X0 U536 ( .IN1(n392), .IN2(n391), .IN3(n390), .IN4(n389), .QN(n398) );
  XNOR2X1 U537 ( .IN1(knownSinkCount[14]), .IN2(N187), .Q(n396) );
  XNOR2X1 U538 ( .IN1(knownSinkCount[13]), .IN2(N186), .Q(n395) );
  XNOR2X1 U539 ( .IN1(knownSinkCount[12]), .IN2(N185), .Q(n394) );
  XNOR2X1 U540 ( .IN1(knownSinkCount[11]), .IN2(N184), .Q(n393) );
  NAND4X0 U541 ( .IN1(n396), .IN2(n395), .IN3(n394), .IN4(n393), .QN(n397) );
  NOR4X0 U542 ( .IN1(n400), .IN2(n399), .IN3(n398), .IN4(n397), .QN(N189) );
  AND2X1 U543 ( .IN1(address[0]), .IN2(n405), .Q(n223) );
endmodule


module neighborSinkInOtherCluster_DW01_inc_0 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HADDX1 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .C1(carry[15]), .SO(SUM[14]) );
  HADDX1 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .C1(carry[14]), .SO(SUM[13]) );
  HADDX1 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .C1(carry[13]), .SO(SUM[12]) );
  HADDX1 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(carry[12]), .SO(SUM[11]) );
  HADDX1 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX0 U1 ( .INP(A[0]), .ZN(SUM[0]) );
  XOR2X1 U2 ( .IN1(carry[15]), .IN2(A[15]), .Q(SUM[15]) );
endmodule


module neighborSinkInOtherCluster_DW01_inc_1 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HADDX1 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .C1(carry[15]), .SO(SUM[14]) );
  HADDX1 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .C1(carry[14]), .SO(SUM[13]) );
  HADDX1 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .C1(carry[13]), .SO(SUM[12]) );
  HADDX1 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(carry[12]), .SO(SUM[11]) );
  HADDX1 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX0 U1 ( .INP(A[0]), .ZN(SUM[0]) );
  XOR2X1 U2 ( .IN1(carry[15]), .IN2(A[15]), .Q(SUM[15]) );
endmodule


module neighborSinkInOtherCluster ( clock, nrst, en, start, address, wr_en, 
        data_in, MY_CLUSTER_ID, data_out, forAggregation, done );
  output [10:0] address;
  input [15:0] data_in;
  input [15:0] MY_CLUSTER_ID;
  output [15:0] data_out;
  input clock, nrst, en, start;
  output wr_en, forAggregation, done;
  wire   N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N91, N92, N93, N94,
         N95, N96, N97, N98, N99, N100, N102, N103, N107, N108, N109, N110,
         N111, N112, N113, N114, N115, N116, N117, N118, N119, N120, N122,
         N123, N124, N125, N126, N127, N128, N129, N130, N131, N132, N136,
         N137, N138, N139, N140, N141, N142, N143, N144, N145, N146, N147,
         N148, N149, N151, N152, N153, N154, N155, N156, N157, N158, N159,
         N160, N188, N189, N190, N191, N192, N193, N194, N195, N196, N197,
         N198, N199, N200, N201, N202, N203, N204, n23, n29, n30, n31, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, \add_92/carry[10] , \add_92/carry[9] ,
         \add_92/carry[8] , \add_92/carry[7] , \add_92/carry[6] ,
         \add_92/carry[5] , \add_86/carry[10] , \add_86/carry[9] ,
         \add_86/carry[8] , \add_86/carry[7] , \add_86/carry[6] ,
         \add_86/carry[5] , \add_72/carry[10] , \add_72/carry[9] ,
         \add_72/carry[8] , \add_72/carry[7] , \add_72/carry[6] ,
         \add_72/carry[5] , \add_66/carry[10] , \add_66/carry[9] ,
         \add_66/carry[8] , \add_66/carry[7] , \add_66/carry[6] ,
         \add_66/carry[5] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n24, n25, n26, n27,
         n28, n32, n33, n34, n35, n73, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308;
  wire   [3:0] state;
  wire   [15:0] i;
  wire   [15:0] j;
  wire   [15:0] clusterID;
  wire   [15:0] knownSinkCount;
  wire   [15:0] neighborCount;
  wire   [15:0] neighborID;
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

  AO22X1 U69 ( .IN1(wr_en), .IN2(n298), .IN3(n36), .IN4(n37), .Q(n106) );
  NAND3X0 U70 ( .IN1(n38), .IN2(n39), .IN3(n40), .QN(n37) );
  AO22X1 U71 ( .IN1(done), .IN2(n305), .IN3(n302), .IN4(nrst), .Q(n107) );
  AO22X1 U72 ( .IN1(forAggregation), .IN2(n42), .IN3(n36), .IN4(n296), .Q(n108) );
  AO22X1 U73 ( .IN1(n43), .IN2(n44), .IN3(address[10]), .IN4(n300), .Q(n109)
         );
  AO221X1 U74 ( .IN1(n45), .IN2(n46), .IN3(N100), .IN4(n307), .IN5(n47), .Q(
        n44) );
  AO21X1 U75 ( .IN1(N89), .IN2(n301), .IN3(n303), .Q(n47) );
  AO22X1 U76 ( .IN1(N160), .IN2(n3), .IN3(N131), .IN4(n4), .Q(n46) );
  AO22X1 U77 ( .IN1(n48), .IN2(n43), .IN3(address[9]), .IN4(n300), .Q(n110) );
  AO221X1 U78 ( .IN1(n45), .IN2(n49), .IN3(N99), .IN4(n307), .IN5(n50), .Q(n48) );
  AO21X1 U79 ( .IN1(N88), .IN2(n301), .IN3(n303), .Q(n50) );
  AO22X1 U80 ( .IN1(N159), .IN2(n3), .IN3(N130), .IN4(n4), .Q(n49) );
  AO221X1 U81 ( .IN1(N158), .IN2(n51), .IN3(address[8]), .IN4(n300), .IN5(n52), 
        .Q(n111) );
  AO222X1 U82 ( .IN1(N87), .IN2(n53), .IN3(N98), .IN4(n54), .IN5(N129), .IN6(
        n55), .Q(n52) );
  AO22X1 U83 ( .IN1(n56), .IN2(n43), .IN3(address[7]), .IN4(n300), .Q(n112) );
  AO221X1 U84 ( .IN1(n45), .IN2(n57), .IN3(N97), .IN4(n307), .IN5(n58), .Q(n56) );
  AO21X1 U85 ( .IN1(N86), .IN2(n301), .IN3(n303), .Q(n58) );
  AO22X1 U86 ( .IN1(N157), .IN2(n3), .IN3(N128), .IN4(n4), .Q(n57) );
  AO221X1 U87 ( .IN1(nrst), .IN2(n60), .IN3(address[6]), .IN4(n300), .IN5(n61), 
        .Q(n113) );
  AO22X1 U88 ( .IN1(N156), .IN2(n51), .IN3(N127), .IN4(n55), .Q(n61) );
  AO221X1 U89 ( .IN1(N96), .IN2(n307), .IN3(N85), .IN4(n301), .IN5(n306), .Q(
        n60) );
  AO221X1 U90 ( .IN1(N155), .IN2(n51), .IN3(address[5]), .IN4(n300), .IN5(n62), 
        .Q(n114) );
  AO222X1 U91 ( .IN1(N84), .IN2(n1), .IN3(N95), .IN4(n2), .IN5(N126), .IN6(n55), .Q(n62) );
  AO221X1 U92 ( .IN1(N154), .IN2(n51), .IN3(address[4]), .IN4(n300), .IN5(n63), 
        .Q(n115) );
  AO222X1 U93 ( .IN1(N83), .IN2(n53), .IN3(N94), .IN4(n54), .IN5(N125), .IN6(
        n55), .Q(n63) );
  AO22X1 U94 ( .IN1(n64), .IN2(n43), .IN3(address[3]), .IN4(n300), .Q(n116) );
  NAND3X0 U95 ( .IN1(n59), .IN2(n65), .IN3(n66), .QN(n64) );
  AOI221X1 U96 ( .IN1(N93), .IN2(n307), .IN3(n45), .IN4(n67), .IN5(n306), .QN(
        n66) );
  AO22X1 U97 ( .IN1(N153), .IN2(n3), .IN3(N124), .IN4(n4), .Q(n67) );
  NOR4X0 U98 ( .IN1(n9), .IN2(n304), .IN3(n41), .IN4(n69), .QN(n59) );
  AO221X1 U99 ( .IN1(N152), .IN2(n51), .IN3(address[2]), .IN4(n300), .IN5(n70), 
        .Q(n117) );
  AO222X1 U100 ( .IN1(N81), .IN2(n1), .IN3(N92), .IN4(n2), .IN5(N123), .IN6(
        n55), .Q(n70) );
  AO222X1 U101 ( .IN1(nrst), .IN2(n71), .IN3(n36), .IN4(n72), .IN5(address[1]), 
        .IN6(n300), .Q(n118) );
  AO221X1 U102 ( .IN1(N122), .IN2(n4), .IN3(N151), .IN4(n3), .IN5(n296), .Q(
        n72) );
  AO221X1 U103 ( .IN1(N91), .IN2(n307), .IN3(N80), .IN4(n301), .IN5(n304), .Q(
        n71) );
  AND2X1 U106 ( .IN1(n74), .IN2(n4), .Q(n55) );
  NAND4X0 U107 ( .IN1(n75), .IN2(n42), .IN3(n76), .IN4(n77), .QN(n43) );
  AND2X1 U108 ( .IN1(n74), .IN2(n3), .Q(n51) );
  AO22X1 U109 ( .IN1(nrst), .IN2(n297), .IN3(data_out[0]), .IN4(n39), .Q(n120)
         );
  AO22X1 U110 ( .IN1(i[14]), .IN2(n78), .IN3(N148), .IN4(n79), .Q(n121) );
  AO22X1 U111 ( .IN1(i[13]), .IN2(n78), .IN3(N147), .IN4(n79), .Q(n122) );
  AO22X1 U112 ( .IN1(i[12]), .IN2(n78), .IN3(N146), .IN4(n79), .Q(n123) );
  AO22X1 U113 ( .IN1(i[11]), .IN2(n78), .IN3(N145), .IN4(n79), .Q(n124) );
  AO22X1 U114 ( .IN1(i[10]), .IN2(n78), .IN3(N144), .IN4(n79), .Q(n125) );
  AO22X1 U115 ( .IN1(i[9]), .IN2(n78), .IN3(N143), .IN4(n79), .Q(n126) );
  AO22X1 U116 ( .IN1(i[8]), .IN2(n78), .IN3(N142), .IN4(n79), .Q(n127) );
  AO22X1 U117 ( .IN1(i[7]), .IN2(n78), .IN3(N141), .IN4(n79), .Q(n128) );
  AO22X1 U118 ( .IN1(i[6]), .IN2(n78), .IN3(N140), .IN4(n79), .Q(n129) );
  AO22X1 U119 ( .IN1(i[5]), .IN2(n78), .IN3(N139), .IN4(n79), .Q(n130) );
  AO22X1 U120 ( .IN1(i[4]), .IN2(n78), .IN3(N138), .IN4(n79), .Q(n131) );
  AO22X1 U121 ( .IN1(i[3]), .IN2(n78), .IN3(N137), .IN4(n79), .Q(n132) );
  AO22X1 U122 ( .IN1(i[2]), .IN2(n78), .IN3(N136), .IN4(n79), .Q(n133) );
  AO22X1 U123 ( .IN1(N81), .IN2(n78), .IN3(N152), .IN4(n79), .Q(n134) );
  AO22X1 U124 ( .IN1(N80), .IN2(n78), .IN3(N151), .IN4(n79), .Q(n135) );
  AO22X1 U125 ( .IN1(i[15]), .IN2(n78), .IN3(N149), .IN4(n79), .Q(n136) );
  AO22X1 U126 ( .IN1(j[15]), .IN2(n42), .IN3(N120), .IN4(n80), .Q(n137) );
  AO22X1 U127 ( .IN1(j[14]), .IN2(n42), .IN3(N119), .IN4(n80), .Q(n138) );
  AO22X1 U128 ( .IN1(j[13]), .IN2(n42), .IN3(N118), .IN4(n80), .Q(n139) );
  AO22X1 U129 ( .IN1(j[12]), .IN2(n42), .IN3(N117), .IN4(n80), .Q(n140) );
  AO22X1 U130 ( .IN1(j[11]), .IN2(n42), .IN3(N116), .IN4(n80), .Q(n141) );
  AO22X1 U131 ( .IN1(j[10]), .IN2(n42), .IN3(N115), .IN4(n80), .Q(n142) );
  AO22X1 U132 ( .IN1(j[9]), .IN2(n42), .IN3(N114), .IN4(n80), .Q(n143) );
  AO22X1 U133 ( .IN1(j[8]), .IN2(n42), .IN3(N113), .IN4(n80), .Q(n144) );
  AO22X1 U134 ( .IN1(j[7]), .IN2(n42), .IN3(N112), .IN4(n80), .Q(n145) );
  AO22X1 U135 ( .IN1(j[6]), .IN2(n42), .IN3(N111), .IN4(n80), .Q(n146) );
  AO22X1 U136 ( .IN1(j[5]), .IN2(n42), .IN3(N110), .IN4(n80), .Q(n147) );
  AO22X1 U137 ( .IN1(j[4]), .IN2(n42), .IN3(N109), .IN4(n80), .Q(n148) );
  AO22X1 U138 ( .IN1(j[3]), .IN2(n42), .IN3(N108), .IN4(n80), .Q(n149) );
  AO22X1 U139 ( .IN1(j[2]), .IN2(n42), .IN3(N107), .IN4(n80), .Q(n150) );
  AO22X1 U140 ( .IN1(N92), .IN2(n42), .IN3(N123), .IN4(n80), .Q(n151) );
  AO22X1 U141 ( .IN1(N91), .IN2(n42), .IN3(N122), .IN4(n80), .Q(n152) );
  AO22X1 U143 ( .IN1(knownSinkCount[15]), .IN2(n82), .IN3(data_in[15]), .IN4(
        n83), .Q(n153) );
  AO22X1 U144 ( .IN1(knownSinkCount[14]), .IN2(n82), .IN3(data_in[14]), .IN4(
        n83), .Q(n154) );
  AO22X1 U145 ( .IN1(knownSinkCount[13]), .IN2(n82), .IN3(data_in[13]), .IN4(
        n83), .Q(n155) );
  AO22X1 U146 ( .IN1(knownSinkCount[12]), .IN2(n82), .IN3(data_in[12]), .IN4(
        n83), .Q(n156) );
  AO22X1 U147 ( .IN1(knownSinkCount[11]), .IN2(n82), .IN3(data_in[11]), .IN4(
        n83), .Q(n157) );
  AO22X1 U148 ( .IN1(knownSinkCount[10]), .IN2(n82), .IN3(data_in[10]), .IN4(
        n83), .Q(n158) );
  AO22X1 U149 ( .IN1(knownSinkCount[9]), .IN2(n82), .IN3(data_in[9]), .IN4(n83), .Q(n159) );
  AO22X1 U150 ( .IN1(knownSinkCount[8]), .IN2(n82), .IN3(data_in[8]), .IN4(n83), .Q(n160) );
  AO22X1 U151 ( .IN1(knownSinkCount[7]), .IN2(n82), .IN3(data_in[7]), .IN4(n83), .Q(n161) );
  AO22X1 U152 ( .IN1(knownSinkCount[6]), .IN2(n82), .IN3(data_in[6]), .IN4(n83), .Q(n162) );
  AO22X1 U153 ( .IN1(knownSinkCount[5]), .IN2(n82), .IN3(data_in[5]), .IN4(n83), .Q(n163) );
  AO22X1 U154 ( .IN1(knownSinkCount[4]), .IN2(n82), .IN3(data_in[4]), .IN4(n83), .Q(n164) );
  AO22X1 U155 ( .IN1(knownSinkCount[3]), .IN2(n82), .IN3(data_in[3]), .IN4(n83), .Q(n165) );
  AO22X1 U156 ( .IN1(knownSinkCount[2]), .IN2(n82), .IN3(data_in[2]), .IN4(n83), .Q(n166) );
  AO22X1 U157 ( .IN1(knownSinkCount[1]), .IN2(n82), .IN3(n7), .IN4(n83), .Q(
        n167) );
  AO22X1 U158 ( .IN1(knownSinkCount[0]), .IN2(n82), .IN3(n5), .IN4(n83), .Q(
        n168) );
  AO22X1 U159 ( .IN1(neighborCount[15]), .IN2(n84), .IN3(n85), .IN4(
        data_in[15]), .Q(n169) );
  AO22X1 U160 ( .IN1(neighborCount[14]), .IN2(n84), .IN3(n85), .IN4(
        data_in[14]), .Q(n170) );
  AO22X1 U161 ( .IN1(neighborCount[13]), .IN2(n84), .IN3(n85), .IN4(
        data_in[13]), .Q(n171) );
  AO22X1 U162 ( .IN1(neighborCount[12]), .IN2(n84), .IN3(n85), .IN4(
        data_in[12]), .Q(n172) );
  AO22X1 U163 ( .IN1(neighborCount[11]), .IN2(n84), .IN3(n85), .IN4(
        data_in[11]), .Q(n173) );
  AO22X1 U164 ( .IN1(neighborCount[10]), .IN2(n84), .IN3(n85), .IN4(
        data_in[10]), .Q(n174) );
  AO22X1 U165 ( .IN1(neighborCount[9]), .IN2(n84), .IN3(n85), .IN4(data_in[9]), 
        .Q(n175) );
  AO22X1 U166 ( .IN1(neighborCount[8]), .IN2(n84), .IN3(n85), .IN4(data_in[8]), 
        .Q(n176) );
  AO22X1 U167 ( .IN1(neighborCount[7]), .IN2(n84), .IN3(n85), .IN4(data_in[7]), 
        .Q(n177) );
  AO22X1 U168 ( .IN1(neighborCount[6]), .IN2(n84), .IN3(n85), .IN4(data_in[6]), 
        .Q(n178) );
  AO22X1 U169 ( .IN1(neighborCount[5]), .IN2(n84), .IN3(n85), .IN4(data_in[5]), 
        .Q(n179) );
  AO22X1 U170 ( .IN1(neighborCount[4]), .IN2(n84), .IN3(n85), .IN4(data_in[4]), 
        .Q(n180) );
  AO22X1 U171 ( .IN1(neighborCount[3]), .IN2(n84), .IN3(n85), .IN4(data_in[3]), 
        .Q(n181) );
  AO22X1 U172 ( .IN1(neighborCount[2]), .IN2(n84), .IN3(n85), .IN4(data_in[2]), 
        .Q(n182) );
  AO22X1 U173 ( .IN1(neighborCount[1]), .IN2(n84), .IN3(n85), .IN4(n7), .Q(
        n183) );
  AO22X1 U174 ( .IN1(neighborCount[0]), .IN2(n84), .IN3(n85), .IN4(n5), .Q(
        n184) );
  AO22X1 U175 ( .IN1(neighborID[15]), .IN2(n87), .IN3(n53), .IN4(data_in[15]), 
        .Q(n185) );
  AO22X1 U176 ( .IN1(neighborID[14]), .IN2(n87), .IN3(n1), .IN4(data_in[14]), 
        .Q(n186) );
  AO22X1 U177 ( .IN1(neighborID[13]), .IN2(n87), .IN3(n53), .IN4(data_in[13]), 
        .Q(n187) );
  AO22X1 U178 ( .IN1(neighborID[12]), .IN2(n87), .IN3(n1), .IN4(data_in[12]), 
        .Q(n188) );
  AO22X1 U179 ( .IN1(neighborID[11]), .IN2(n87), .IN3(n53), .IN4(data_in[11]), 
        .Q(n189) );
  AO22X1 U180 ( .IN1(neighborID[10]), .IN2(n87), .IN3(n1), .IN4(data_in[10]), 
        .Q(n190) );
  AO22X1 U181 ( .IN1(neighborID[9]), .IN2(n87), .IN3(n53), .IN4(data_in[9]), 
        .Q(n191) );
  AO22X1 U182 ( .IN1(neighborID[8]), .IN2(n87), .IN3(n1), .IN4(data_in[8]), 
        .Q(n192) );
  AO22X1 U183 ( .IN1(neighborID[7]), .IN2(n87), .IN3(n53), .IN4(data_in[7]), 
        .Q(n193) );
  AO22X1 U184 ( .IN1(neighborID[6]), .IN2(n87), .IN3(n1), .IN4(data_in[6]), 
        .Q(n194) );
  AO22X1 U185 ( .IN1(neighborID[5]), .IN2(n87), .IN3(n53), .IN4(data_in[5]), 
        .Q(n195) );
  AO22X1 U186 ( .IN1(neighborID[4]), .IN2(n87), .IN3(n1), .IN4(data_in[4]), 
        .Q(n196) );
  AO22X1 U187 ( .IN1(neighborID[3]), .IN2(n87), .IN3(n53), .IN4(data_in[3]), 
        .Q(n197) );
  AO22X1 U188 ( .IN1(neighborID[2]), .IN2(n87), .IN3(n1), .IN4(data_in[2]), 
        .Q(n198) );
  AO22X1 U189 ( .IN1(neighborID[1]), .IN2(n87), .IN3(n53), .IN4(n7), .Q(n199)
         );
  AO22X1 U190 ( .IN1(clusterID[15]), .IN2(n88), .IN3(n54), .IN4(data_in[15]), 
        .Q(n200) );
  AO22X1 U191 ( .IN1(clusterID[14]), .IN2(n88), .IN3(n2), .IN4(data_in[14]), 
        .Q(n201) );
  AO22X1 U192 ( .IN1(clusterID[13]), .IN2(n88), .IN3(n54), .IN4(data_in[13]), 
        .Q(n202) );
  AO22X1 U193 ( .IN1(clusterID[12]), .IN2(n88), .IN3(n2), .IN4(data_in[12]), 
        .Q(n203) );
  AO22X1 U194 ( .IN1(clusterID[11]), .IN2(n88), .IN3(n54), .IN4(data_in[11]), 
        .Q(n204) );
  AO22X1 U195 ( .IN1(clusterID[10]), .IN2(n88), .IN3(n2), .IN4(data_in[10]), 
        .Q(n205) );
  AO22X1 U196 ( .IN1(clusterID[9]), .IN2(n88), .IN3(n54), .IN4(data_in[9]), 
        .Q(n206) );
  AO22X1 U197 ( .IN1(clusterID[8]), .IN2(n88), .IN3(n2), .IN4(data_in[8]), .Q(
        n207) );
  AO22X1 U198 ( .IN1(clusterID[7]), .IN2(n88), .IN3(n54), .IN4(data_in[7]), 
        .Q(n208) );
  AO22X1 U199 ( .IN1(clusterID[6]), .IN2(n88), .IN3(n2), .IN4(data_in[6]), .Q(
        n209) );
  AO22X1 U200 ( .IN1(clusterID[5]), .IN2(n88), .IN3(n54), .IN4(data_in[5]), 
        .Q(n210) );
  AO22X1 U201 ( .IN1(clusterID[4]), .IN2(n88), .IN3(n2), .IN4(data_in[4]), .Q(
        n211) );
  AO22X1 U202 ( .IN1(clusterID[3]), .IN2(n88), .IN3(n54), .IN4(data_in[3]), 
        .Q(n212) );
  AO22X1 U203 ( .IN1(clusterID[2]), .IN2(n88), .IN3(n2), .IN4(data_in[2]), .Q(
        n213) );
  AO22X1 U204 ( .IN1(clusterID[1]), .IN2(n88), .IN3(n54), .IN4(n7), .Q(n214)
         );
  AO22X1 U205 ( .IN1(clusterID[0]), .IN2(n88), .IN3(n2), .IN4(n5), .Q(n215) );
  AO221X1 U206 ( .IN1(n90), .IN2(n91), .IN3(nrst), .IN4(n92), .IN5(n93), .Q(
        n216) );
  NAND3X0 U207 ( .IN1(n77), .IN2(n38), .IN3(n89), .QN(n92) );
  OR2X1 U208 ( .IN1(N204), .IN2(n296), .Q(n91) );
  AO21X1 U209 ( .IN1(nrst), .IN2(n95), .IN3(n90), .Q(n217) );
  AO221X1 U210 ( .IN1(nrst), .IN2(n96), .IN3(n90), .IN4(n94), .IN5(n93), .Q(
        n218) );
  AND4X1 U211 ( .IN1(n39), .IN2(n4), .IN3(n97), .IN4(n98), .Q(n93) );
  NOR4X0 U212 ( .IN1(n69), .IN2(n302), .IN3(n301), .IN4(n95), .QN(n98) );
  NAND3X0 U213 ( .IN1(n76), .IN2(n38), .IN3(n86), .QN(n95) );
  NAND3X0 U214 ( .IN1(n30), .IN2(n29), .IN3(n99), .QN(n76) );
  NAND3X0 U215 ( .IN1(n101), .IN2(state[2]), .IN3(state[1]), .QN(n38) );
  AND3X1 U216 ( .IN1(n86), .IN2(n89), .IN3(n102), .Q(n75) );
  NAND3X0 U217 ( .IN1(state[2]), .IN2(n30), .IN3(n101), .QN(n89) );
  NAND3X0 U218 ( .IN1(n101), .IN2(n29), .IN3(state[1]), .QN(n86) );
  NAND4X0 U219 ( .IN1(nrst), .IN2(n104), .IN3(n105), .IN4(n100), .QN(n219) );
  NAND3X0 U220 ( .IN1(state[2]), .IN2(n99), .IN3(state[1]), .QN(n100) );
  AO22X1 U221 ( .IN1(neighborID[0]), .IN2(n87), .IN3(n1), .IN4(n5), .Q(n220)
         );
  NAND3X0 U222 ( .IN1(n99), .IN2(n29), .IN3(state[1]), .QN(n77) );
  AO21X1 U223 ( .IN1(en), .IN2(n41), .IN3(n9), .Q(n81) );
  NAND3X0 U224 ( .IN1(n30), .IN2(n29), .IN3(n31), .QN(n103) );
  NAND3X0 U225 ( .IN1(n99), .IN2(n30), .IN3(state[2]), .QN(n68) );
  AO22X1 U226 ( .IN1(N151), .IN2(n3), .IN3(N80), .IN4(n4), .Q(N203) );
  AO22X1 U227 ( .IN1(N152), .IN2(n3), .IN3(N81), .IN4(n4), .Q(N202) );
  AO22X1 U228 ( .IN1(N136), .IN2(n3), .IN3(i[2]), .IN4(n4), .Q(N201) );
  AO22X1 U229 ( .IN1(N137), .IN2(n3), .IN3(i[3]), .IN4(n4), .Q(N200) );
  AO22X1 U230 ( .IN1(N138), .IN2(n3), .IN3(i[4]), .IN4(n4), .Q(N199) );
  AO22X1 U231 ( .IN1(N139), .IN2(n3), .IN3(i[5]), .IN4(n4), .Q(N198) );
  AO22X1 U232 ( .IN1(N140), .IN2(n3), .IN3(i[6]), .IN4(n4), .Q(N197) );
  AO22X1 U233 ( .IN1(N141), .IN2(n3), .IN3(i[7]), .IN4(n4), .Q(N196) );
  AO22X1 U234 ( .IN1(N142), .IN2(n3), .IN3(i[8]), .IN4(n4), .Q(N195) );
  AO22X1 U235 ( .IN1(N143), .IN2(n3), .IN3(i[9]), .IN4(n4), .Q(N194) );
  AO22X1 U236 ( .IN1(N144), .IN2(n3), .IN3(i[10]), .IN4(n4), .Q(N193) );
  AO22X1 U237 ( .IN1(N145), .IN2(n3), .IN3(i[11]), .IN4(n4), .Q(N192) );
  AO22X1 U238 ( .IN1(N146), .IN2(n3), .IN3(i[12]), .IN4(n4), .Q(N191) );
  AO22X1 U239 ( .IN1(N147), .IN2(n3), .IN3(i[13]), .IN4(n4), .Q(N190) );
  AO22X1 U240 ( .IN1(N148), .IN2(n3), .IN3(i[14]), .IN4(n4), .Q(N189) );
  AO22X1 U241 ( .IN1(N149), .IN2(n3), .IN3(i[15]), .IN4(n4), .Q(N188) );
  neighborSinkInOtherCluster_DW01_inc_0 add_90 ( .A({i[15:2], N81, N80}), 
        .SUM({N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, 
        N138, N137, N136, N152, N151}) );
  neighborSinkInOtherCluster_DW01_inc_1 add_85 ( .A({j[15:2], N92, N91}), 
        .SUM({N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, 
        N109, N108, N107, N123, N122}) );
  DFFX1 done_buf_reg ( .D(n107), .CLK(clock), .Q(done) );
  DFFX1 \data_out_buf_reg[0]  ( .D(n120), .CLK(clock), .Q(data_out[0]) );
  DFFX1 wr_en_buf_reg ( .D(n106), .CLK(clock), .Q(wr_en) );
  DFFX1 \knownSinkCount_reg[15]  ( .D(n153), .CLK(clock), .Q(
        knownSinkCount[15]) );
  DFFX1 \knownSinkCount_reg[14]  ( .D(n154), .CLK(clock), .Q(
        knownSinkCount[14]) );
  DFFX1 \knownSinkCount_reg[13]  ( .D(n155), .CLK(clock), .Q(
        knownSinkCount[13]) );
  DFFX1 \knownSinkCount_reg[12]  ( .D(n156), .CLK(clock), .Q(
        knownSinkCount[12]) );
  DFFX1 \knownSinkCount_reg[11]  ( .D(n157), .CLK(clock), .Q(
        knownSinkCount[11]) );
  DFFX1 \knownSinkCount_reg[10]  ( .D(n158), .CLK(clock), .Q(
        knownSinkCount[10]) );
  DFFX1 \knownSinkCount_reg[9]  ( .D(n159), .CLK(clock), .Q(knownSinkCount[9])
         );
  DFFX1 \knownSinkCount_reg[8]  ( .D(n160), .CLK(clock), .Q(knownSinkCount[8])
         );
  DFFX1 \knownSinkCount_reg[7]  ( .D(n161), .CLK(clock), .Q(knownSinkCount[7])
         );
  DFFX1 \knownSinkCount_reg[6]  ( .D(n162), .CLK(clock), .Q(knownSinkCount[6])
         );
  DFFX1 \knownSinkCount_reg[5]  ( .D(n163), .CLK(clock), .Q(knownSinkCount[5])
         );
  DFFX1 \knownSinkCount_reg[4]  ( .D(n164), .CLK(clock), .Q(knownSinkCount[4])
         );
  DFFX1 \knownSinkCount_reg[3]  ( .D(n165), .CLK(clock), .Q(knownSinkCount[3])
         );
  DFFX1 \knownSinkCount_reg[2]  ( .D(n166), .CLK(clock), .Q(knownSinkCount[2])
         );
  DFFX1 \knownSinkCount_reg[1]  ( .D(n167), .CLK(clock), .Q(knownSinkCount[1]), 
        .QN(n270) );
  DFFX1 \knownSinkCount_reg[0]  ( .D(n168), .CLK(clock), .Q(knownSinkCount[0]), 
        .QN(n269) );
  DFFX1 \neighborCount_reg[15]  ( .D(n169), .CLK(clock), .Q(neighborCount[15])
         );
  DFFX1 \neighborCount_reg[14]  ( .D(n170), .CLK(clock), .Q(neighborCount[14])
         );
  DFFX1 \neighborCount_reg[13]  ( .D(n171), .CLK(clock), .Q(neighborCount[13])
         );
  DFFX1 \neighborCount_reg[12]  ( .D(n172), .CLK(clock), .Q(neighborCount[12])
         );
  DFFX1 \neighborCount_reg[11]  ( .D(n173), .CLK(clock), .Q(neighborCount[11])
         );
  DFFX1 \neighborCount_reg[10]  ( .D(n174), .CLK(clock), .Q(neighborCount[10])
         );
  DFFX1 \neighborCount_reg[9]  ( .D(n175), .CLK(clock), .Q(neighborCount[9])
         );
  DFFX1 \neighborCount_reg[8]  ( .D(n176), .CLK(clock), .Q(neighborCount[8])
         );
  DFFX1 \neighborCount_reg[7]  ( .D(n177), .CLK(clock), .Q(neighborCount[7])
         );
  DFFX1 \neighborCount_reg[6]  ( .D(n178), .CLK(clock), .Q(neighborCount[6])
         );
  DFFX1 \neighborCount_reg[5]  ( .D(n179), .CLK(clock), .Q(neighborCount[5])
         );
  DFFX1 \neighborCount_reg[4]  ( .D(n180), .CLK(clock), .Q(neighborCount[4])
         );
  DFFX1 \neighborCount_reg[3]  ( .D(n181), .CLK(clock), .Q(neighborCount[3])
         );
  DFFX1 \neighborCount_reg[2]  ( .D(n182), .CLK(clock), .Q(neighborCount[2])
         );
  DFFX1 \neighborCount_reg[1]  ( .D(n183), .CLK(clock), .Q(neighborCount[1]), 
        .QN(n294) );
  DFFX1 \neighborCount_reg[0]  ( .D(n184), .CLK(clock), .Q(neighborCount[0]), 
        .QN(n295) );
  DFFX1 \clusterID_reg[15]  ( .D(n200), .CLK(clock), .Q(clusterID[15]) );
  DFFX1 \clusterID_reg[14]  ( .D(n201), .CLK(clock), .Q(clusterID[14]) );
  DFFX1 \clusterID_reg[13]  ( .D(n202), .CLK(clock), .Q(clusterID[13]) );
  DFFX1 \clusterID_reg[12]  ( .D(n203), .CLK(clock), .Q(clusterID[12]) );
  DFFX1 \clusterID_reg[11]  ( .D(n204), .CLK(clock), .Q(clusterID[11]) );
  DFFX1 \clusterID_reg[10]  ( .D(n205), .CLK(clock), .Q(clusterID[10]) );
  DFFX1 \clusterID_reg[9]  ( .D(n206), .CLK(clock), .Q(clusterID[9]) );
  DFFX1 \clusterID_reg[8]  ( .D(n207), .CLK(clock), .Q(clusterID[8]) );
  DFFX1 \clusterID_reg[7]  ( .D(n208), .CLK(clock), .Q(clusterID[7]) );
  DFFX1 \clusterID_reg[6]  ( .D(n209), .CLK(clock), .Q(clusterID[6]) );
  DFFX1 \clusterID_reg[5]  ( .D(n210), .CLK(clock), .Q(clusterID[5]) );
  DFFX1 \clusterID_reg[4]  ( .D(n211), .CLK(clock), .Q(clusterID[4]) );
  DFFX1 \clusterID_reg[3]  ( .D(n212), .CLK(clock), .Q(clusterID[3]) );
  DFFX1 \clusterID_reg[2]  ( .D(n213), .CLK(clock), .Q(clusterID[2]) );
  DFFX1 \clusterID_reg[1]  ( .D(n214), .CLK(clock), .Q(clusterID[1]), .QN(n245) );
  DFFX1 \clusterID_reg[0]  ( .D(n215), .CLK(clock), .Q(clusterID[0]), .QN(n244) );
  DFFX1 forAggregation_buf_reg ( .D(n108), .CLK(clock), .Q(forAggregation) );
  DFFX1 \neighborID_reg[15]  ( .D(n185), .CLK(clock), .Q(neighborID[15]) );
  DFFX1 \neighborID_reg[14]  ( .D(n186), .CLK(clock), .Q(neighborID[14]) );
  DFFX1 \neighborID_reg[13]  ( .D(n187), .CLK(clock), .Q(neighborID[13]) );
  DFFX1 \neighborID_reg[12]  ( .D(n188), .CLK(clock), .Q(neighborID[12]) );
  DFFX1 \neighborID_reg[11]  ( .D(n189), .CLK(clock), .Q(neighborID[11]) );
  DFFX1 \neighborID_reg[10]  ( .D(n190), .CLK(clock), .Q(neighborID[10]) );
  DFFX1 \neighborID_reg[9]  ( .D(n191), .CLK(clock), .Q(neighborID[9]) );
  DFFX1 \neighborID_reg[8]  ( .D(n192), .CLK(clock), .Q(neighborID[8]) );
  DFFX1 \neighborID_reg[7]  ( .D(n193), .CLK(clock), .Q(neighborID[7]) );
  DFFX1 \neighborID_reg[6]  ( .D(n194), .CLK(clock), .Q(neighborID[6]) );
  DFFX1 \neighborID_reg[5]  ( .D(n195), .CLK(clock), .Q(neighborID[5]) );
  DFFX1 \neighborID_reg[4]  ( .D(n196), .CLK(clock), .Q(neighborID[4]) );
  DFFX1 \neighborID_reg[3]  ( .D(n197), .CLK(clock), .Q(neighborID[3]) );
  DFFX1 \neighborID_reg[2]  ( .D(n198), .CLK(clock), .Q(neighborID[2]) );
  DFFX1 \neighborID_reg[1]  ( .D(n199), .CLK(clock), .Q(neighborID[1]), .QN(
        n73) );
  DFFX1 \neighborID_reg[0]  ( .D(n220), .CLK(clock), .Q(neighborID[0]) );
  DFFX1 \j_reg[15]  ( .D(n137), .CLK(clock), .Q(j[15]) );
  DFFX1 \j_reg[14]  ( .D(n138), .CLK(clock), .Q(j[14]) );
  DFFX1 \j_reg[13]  ( .D(n139), .CLK(clock), .Q(j[13]) );
  DFFX1 \j_reg[12]  ( .D(n140), .CLK(clock), .Q(j[12]) );
  DFFX1 \j_reg[11]  ( .D(n141), .CLK(clock), .Q(j[11]) );
  DFFX1 \j_reg[10]  ( .D(n142), .CLK(clock), .Q(j[10]) );
  DFFX1 \j_reg[9]  ( .D(n143), .CLK(clock), .Q(j[9]) );
  DFFX1 \j_reg[8]  ( .D(n144), .CLK(clock), .Q(j[8]) );
  DFFX1 \j_reg[7]  ( .D(n145), .CLK(clock), .Q(j[7]) );
  DFFX1 \j_reg[6]  ( .D(n146), .CLK(clock), .Q(j[6]) );
  DFFX1 \j_reg[5]  ( .D(n147), .CLK(clock), .Q(j[5]) );
  DFFX1 \j_reg[4]  ( .D(n148), .CLK(clock), .Q(j[4]) );
  DFFX1 \j_reg[3]  ( .D(n149), .CLK(clock), .Q(j[3]) );
  DFFX1 \j_reg[2]  ( .D(n150), .CLK(clock), .Q(j[2]), .QN(N93) );
  DFFX1 \j_reg[1]  ( .D(n151), .CLK(clock), .Q(N92) );
  DFFX1 \j_reg[0]  ( .D(n152), .CLK(clock), .Q(N91) );
  DFFX1 \address_count_reg[0]  ( .D(n119), .CLK(clock), .Q(address[0]) );
  DFFX1 \i_reg[15]  ( .D(n136), .CLK(clock), .Q(i[15]) );
  DFFX1 \i_reg[14]  ( .D(n121), .CLK(clock), .Q(i[14]) );
  DFFX1 \i_reg[13]  ( .D(n122), .CLK(clock), .Q(i[13]) );
  DFFX1 \i_reg[12]  ( .D(n123), .CLK(clock), .Q(i[12]) );
  DFFX1 \i_reg[11]  ( .D(n124), .CLK(clock), .Q(i[11]) );
  DFFX1 \i_reg[10]  ( .D(n125), .CLK(clock), .Q(i[10]) );
  DFFX1 \i_reg[9]  ( .D(n126), .CLK(clock), .Q(i[9]) );
  DFFX1 \i_reg[8]  ( .D(n127), .CLK(clock), .Q(i[8]) );
  DFFX1 \i_reg[7]  ( .D(n128), .CLK(clock), .Q(i[7]) );
  DFFX1 \i_reg[6]  ( .D(n129), .CLK(clock), .Q(i[6]) );
  DFFX1 \i_reg[5]  ( .D(n130), .CLK(clock), .Q(i[5]) );
  DFFX1 \i_reg[4]  ( .D(n131), .CLK(clock), .Q(i[4]) );
  DFFX1 \i_reg[3]  ( .D(n132), .CLK(clock), .Q(i[3]) );
  DFFX1 \i_reg[2]  ( .D(n133), .CLK(clock), .Q(i[2]), .QN(N82) );
  DFFX1 \i_reg[1]  ( .D(n134), .CLK(clock), .Q(N81) );
  DFFX1 \i_reg[0]  ( .D(n135), .CLK(clock), .Q(N80) );
  DFFX1 \address_count_reg[1]  ( .D(n118), .CLK(clock), .Q(address[1]) );
  DFFX1 \address_count_reg[10]  ( .D(n109), .CLK(clock), .Q(address[10]) );
  DFFX1 \address_count_reg[9]  ( .D(n110), .CLK(clock), .Q(address[9]) );
  DFFX1 \address_count_reg[7]  ( .D(n112), .CLK(clock), .Q(address[7]) );
  DFFX1 \address_count_reg[3]  ( .D(n116), .CLK(clock), .Q(address[3]) );
  DFFX1 \address_count_reg[8]  ( .D(n111), .CLK(clock), .Q(address[8]) );
  DFFX1 \address_count_reg[5]  ( .D(n114), .CLK(clock), .Q(address[5]) );
  DFFX1 \address_count_reg[4]  ( .D(n115), .CLK(clock), .Q(address[4]) );
  DFFX1 \address_count_reg[2]  ( .D(n117), .CLK(clock), .Q(address[2]) );
  DFFX1 \address_count_reg[6]  ( .D(n113), .CLK(clock), .Q(address[6]) );
  DFFX1 \state_reg[3]  ( .D(n219), .CLK(clock), .Q(state[3]), .QN(n23) );
  DFFX1 \state_reg[1]  ( .D(n217), .CLK(clock), .Q(state[1]), .QN(n30) );
  DFFX1 \state_reg[0]  ( .D(n218), .CLK(clock), .Q(state[0]), .QN(n31) );
  DFFX1 \state_reg[2]  ( .D(n216), .CLK(clock), .Q(state[2]), .QN(n29) );
  NOR2X0 U13 ( .IN1(n299), .IN2(n296), .QN(n74) );
  INVX0 U14 ( .INP(n36), .ZN(n299) );
  NOR2X0 U15 ( .IN1(n299), .IN2(n3), .QN(n80) );
  NOR2X0 U16 ( .IN1(n299), .IN2(n78), .QN(n79) );
  INVX0 U17 ( .INP(nrst), .ZN(n9) );
  INVX0 U18 ( .INP(n43), .ZN(n300) );
  INVX0 U19 ( .INP(n94), .ZN(n296) );
  INVX0 U20 ( .INP(n59), .ZN(n303) );
  INVX0 U26 ( .INP(n3), .ZN(n4) );
  NOR2X0 U27 ( .IN1(n76), .IN2(n9), .QN(n83) );
  NOR2X0 U28 ( .IN1(n86), .IN2(n9), .QN(n85) );
  NOR2X0 U29 ( .IN1(n81), .IN2(n304), .QN(n82) );
  NOR2X0 U30 ( .IN1(n81), .IN2(n307), .QN(n88) );
  NOR2X0 U31 ( .IN1(n81), .IN2(n306), .QN(n84) );
  NOR2X0 U32 ( .IN1(n81), .IN2(n301), .QN(n87) );
  OA21X1 U33 ( .IN1(n4), .IN2(n68), .IN3(n305), .Q(n78) );
  NOR2X0 U34 ( .IN1(n89), .IN2(n9), .QN(n2) );
  NOR2X0 U35 ( .IN1(n89), .IN2(n9), .QN(n54) );
  NOR2X0 U36 ( .IN1(n77), .IN2(n9), .QN(n53) );
  NOR2X0 U37 ( .IN1(n77), .IN2(n9), .QN(n1) );
  NOR2X0 U38 ( .IN1(n9), .IN2(n68), .QN(n36) );
  AND2X1 U39 ( .IN1(n305), .IN2(n68), .Q(n42) );
  INVX0 U40 ( .INP(n8), .ZN(n7) );
  INVX0 U41 ( .INP(n6), .ZN(n5) );
  NOR2X0 U42 ( .IN1(n68), .IN2(n296), .QN(n45) );
  INVX0 U43 ( .INP(n81), .ZN(n305) );
  NAND2X1 U44 ( .IN1(N103), .IN2(N102), .QN(n94) );
  NOR2X0 U45 ( .IN1(n299), .IN2(n93), .QN(n90) );
  OA21X1 U46 ( .IN1(n94), .IN2(n68), .IN3(nrst), .Q(n39) );
  NAND2X1 U47 ( .IN1(n75), .IN2(n38), .QN(n96) );
  NBUFFX2 U48 ( .INP(N132), .Z(n3) );
  INVX0 U49 ( .INP(N107), .ZN(N124) );
  INVX0 U50 ( .INP(N136), .ZN(N153) );
  INVX0 U51 ( .INP(N202), .ZN(n293) );
  INVX0 U52 ( .INP(N123), .ZN(n268) );
  INVX0 U53 ( .INP(n77), .ZN(n301) );
  INVX0 U54 ( .INP(n89), .ZN(n307) );
  INVX0 U55 ( .INP(n76), .ZN(n304) );
  INVX0 U56 ( .INP(n86), .ZN(n306) );
  INVX0 U57 ( .INP(n100), .ZN(n302) );
  INVX0 U58 ( .INP(data_in[0]), .ZN(n6) );
  INVX0 U59 ( .INP(data_in[1]), .ZN(n8) );
  NAND2X1 U60 ( .IN1(state[3]), .IN2(n103), .QN(n104) );
  NAND2X1 U61 ( .IN1(n41), .IN2(n308), .QN(n105) );
  INVX0 U62 ( .INP(en), .ZN(n308) );
  NOR2X0 U63 ( .IN1(state[3]), .IN2(N204), .QN(n97) );
  INVX0 U64 ( .INP(n37), .ZN(n298) );
  NAND2X1 U65 ( .IN1(en), .IN2(n41), .QN(n40) );
  NAND2X1 U66 ( .IN1(N82), .IN2(n301), .QN(n65) );
  INVX0 U67 ( .INP(n39), .ZN(n297) );
  NOR2X0 U68 ( .IN1(n23), .IN2(n103), .QN(n41) );
  NOR2X0 U104 ( .IN1(n103), .IN2(state[3]), .QN(n69) );
  NOR2X0 U105 ( .IN1(n31), .IN2(state[3]), .QN(n99) );
  NOR2X0 U142 ( .IN1(state[3]), .IN2(state[0]), .QN(n101) );
  NAND2X1 U242 ( .IN1(start), .IN2(n69), .QN(n102) );
  INVX0 U243 ( .INP(MY_CLUSTER_ID[1]), .ZN(n243) );
  XOR2X1 U244 ( .IN1(i[9]), .IN2(\add_66/carry[10] ), .Q(N89) );
  XOR2X1 U245 ( .IN1(j[9]), .IN2(\add_72/carry[10] ), .Q(N100) );
  XOR2X1 U246 ( .IN1(N114), .IN2(\add_86/carry[10] ), .Q(N131) );
  XOR2X1 U247 ( .IN1(N143), .IN2(\add_92/carry[10] ), .Q(N160) );
  AND2X1 U248 ( .IN1(\add_66/carry[9] ), .IN2(i[8]), .Q(\add_66/carry[10] ) );
  XOR2X1 U249 ( .IN1(i[8]), .IN2(\add_66/carry[9] ), .Q(N88) );
  AND2X1 U250 ( .IN1(\add_72/carry[9] ), .IN2(j[8]), .Q(\add_72/carry[10] ) );
  XOR2X1 U251 ( .IN1(j[8]), .IN2(\add_72/carry[9] ), .Q(N99) );
  AND2X1 U252 ( .IN1(\add_86/carry[9] ), .IN2(N113), .Q(\add_86/carry[10] ) );
  XOR2X1 U253 ( .IN1(N113), .IN2(\add_86/carry[9] ), .Q(N130) );
  AND2X1 U254 ( .IN1(\add_92/carry[9] ), .IN2(N142), .Q(\add_92/carry[10] ) );
  XOR2X1 U255 ( .IN1(N142), .IN2(\add_92/carry[9] ), .Q(N159) );
  AND2X1 U256 ( .IN1(\add_86/carry[8] ), .IN2(N112), .Q(\add_86/carry[9] ) );
  XOR2X1 U257 ( .IN1(N112), .IN2(\add_86/carry[8] ), .Q(N129) );
  AND2X1 U258 ( .IN1(\add_72/carry[8] ), .IN2(j[7]), .Q(\add_72/carry[9] ) );
  XOR2X1 U259 ( .IN1(j[7]), .IN2(\add_72/carry[8] ), .Q(N98) );
  AND2X1 U260 ( .IN1(\add_66/carry[8] ), .IN2(i[7]), .Q(\add_66/carry[9] ) );
  XOR2X1 U261 ( .IN1(i[7]), .IN2(\add_66/carry[8] ), .Q(N87) );
  AND2X1 U262 ( .IN1(\add_92/carry[8] ), .IN2(N141), .Q(\add_92/carry[9] ) );
  XOR2X1 U263 ( .IN1(N141), .IN2(\add_92/carry[8] ), .Q(N158) );
  OR2X1 U264 ( .IN1(i[6]), .IN2(\add_66/carry[7] ), .Q(\add_66/carry[8] ) );
  XNOR2X1 U265 ( .IN1(\add_66/carry[7] ), .IN2(i[6]), .Q(N86) );
  AND2X1 U266 ( .IN1(\add_72/carry[7] ), .IN2(j[6]), .Q(\add_72/carry[8] ) );
  XOR2X1 U267 ( .IN1(j[6]), .IN2(\add_72/carry[7] ), .Q(N97) );
  AND2X1 U268 ( .IN1(\add_86/carry[7] ), .IN2(N111), .Q(\add_86/carry[8] ) );
  XOR2X1 U269 ( .IN1(N111), .IN2(\add_86/carry[7] ), .Q(N128) );
  AND2X1 U270 ( .IN1(\add_92/carry[7] ), .IN2(N140), .Q(\add_92/carry[8] ) );
  XOR2X1 U271 ( .IN1(N140), .IN2(\add_92/carry[7] ), .Q(N157) );
  AND2X1 U272 ( .IN1(\add_86/carry[6] ), .IN2(N110), .Q(\add_86/carry[7] ) );
  XOR2X1 U273 ( .IN1(N110), .IN2(\add_86/carry[6] ), .Q(N127) );
  OR2X1 U274 ( .IN1(N139), .IN2(\add_92/carry[6] ), .Q(\add_92/carry[7] ) );
  XNOR2X1 U275 ( .IN1(\add_92/carry[6] ), .IN2(N139), .Q(N156) );
  OR2X1 U276 ( .IN1(i[5]), .IN2(\add_66/carry[6] ), .Q(\add_66/carry[7] ) );
  XNOR2X1 U277 ( .IN1(\add_66/carry[6] ), .IN2(i[5]), .Q(N85) );
  AND2X1 U278 ( .IN1(\add_72/carry[6] ), .IN2(j[5]), .Q(\add_72/carry[7] ) );
  XOR2X1 U279 ( .IN1(j[5]), .IN2(\add_72/carry[6] ), .Q(N96) );
  AND2X1 U280 ( .IN1(\add_86/carry[5] ), .IN2(N109), .Q(\add_86/carry[6] ) );
  XOR2X1 U281 ( .IN1(N109), .IN2(\add_86/carry[5] ), .Q(N126) );
  AND2X1 U282 ( .IN1(\add_72/carry[5] ), .IN2(j[4]), .Q(\add_72/carry[6] ) );
  XOR2X1 U283 ( .IN1(j[4]), .IN2(\add_72/carry[5] ), .Q(N95) );
  AND2X1 U284 ( .IN1(\add_66/carry[5] ), .IN2(i[4]), .Q(\add_66/carry[6] ) );
  XOR2X1 U285 ( .IN1(i[4]), .IN2(\add_66/carry[5] ), .Q(N84) );
  AND2X1 U286 ( .IN1(\add_92/carry[5] ), .IN2(N138), .Q(\add_92/carry[6] ) );
  XOR2X1 U287 ( .IN1(N138), .IN2(\add_92/carry[5] ), .Q(N155) );
  AND2X1 U288 ( .IN1(N107), .IN2(N108), .Q(\add_86/carry[5] ) );
  XOR2X1 U289 ( .IN1(N108), .IN2(N107), .Q(N125) );
  AND2X1 U290 ( .IN1(j[2]), .IN2(j[3]), .Q(\add_72/carry[5] ) );
  XOR2X1 U291 ( .IN1(j[3]), .IN2(j[2]), .Q(N94) );
  AND2X1 U292 ( .IN1(i[2]), .IN2(i[3]), .Q(\add_66/carry[5] ) );
  XOR2X1 U293 ( .IN1(i[3]), .IN2(i[2]), .Q(N83) );
  AND2X1 U294 ( .IN1(N136), .IN2(N137), .Q(\add_92/carry[5] ) );
  XOR2X1 U295 ( .IN1(N137), .IN2(N136), .Q(N154) );
  XOR2X1 U296 ( .IN1(data_in[15]), .IN2(neighborID[15]), .Q(n15) );
  XOR2X1 U297 ( .IN1(data_in[2]), .IN2(neighborID[2]), .Q(n14) );
  NOR2X0 U298 ( .IN1(n6), .IN2(neighborID[0]), .QN(n10) );
  OA22X1 U299 ( .IN1(n7), .IN2(n10), .IN3(n10), .IN4(n73), .Q(n13) );
  AND2X1 U300 ( .IN1(neighborID[0]), .IN2(n6), .Q(n11) );
  OA22X1 U301 ( .IN1(n11), .IN2(n8), .IN3(neighborID[1]), .IN4(n11), .Q(n12)
         );
  OR4X1 U302 ( .IN1(n15), .IN2(n14), .IN3(n13), .IN4(n12), .Q(n35) );
  XNOR2X1 U303 ( .IN1(data_in[6]), .IN2(neighborID[6]), .Q(n19) );
  XNOR2X1 U304 ( .IN1(data_in[5]), .IN2(neighborID[5]), .Q(n18) );
  XNOR2X1 U305 ( .IN1(data_in[4]), .IN2(neighborID[4]), .Q(n17) );
  XNOR2X1 U306 ( .IN1(data_in[3]), .IN2(neighborID[3]), .Q(n16) );
  NAND4X0 U307 ( .IN1(n19), .IN2(n18), .IN3(n17), .IN4(n16), .QN(n34) );
  XNOR2X1 U308 ( .IN1(data_in[10]), .IN2(neighborID[10]), .Q(n24) );
  XNOR2X1 U309 ( .IN1(data_in[9]), .IN2(neighborID[9]), .Q(n22) );
  XNOR2X1 U310 ( .IN1(data_in[8]), .IN2(neighborID[8]), .Q(n21) );
  XNOR2X1 U311 ( .IN1(data_in[7]), .IN2(neighborID[7]), .Q(n20) );
  NAND4X0 U312 ( .IN1(n24), .IN2(n22), .IN3(n21), .IN4(n20), .QN(n33) );
  XNOR2X1 U313 ( .IN1(data_in[14]), .IN2(neighborID[14]), .Q(n28) );
  XNOR2X1 U314 ( .IN1(data_in[13]), .IN2(neighborID[13]), .Q(n27) );
  XNOR2X1 U315 ( .IN1(data_in[12]), .IN2(neighborID[12]), .Q(n26) );
  XNOR2X1 U316 ( .IN1(data_in[11]), .IN2(neighborID[11]), .Q(n25) );
  NAND4X0 U317 ( .IN1(n28), .IN2(n27), .IN3(n26), .IN4(n25), .QN(n32) );
  NOR4X0 U318 ( .IN1(n35), .IN2(n34), .IN3(n33), .IN4(n32), .QN(N102) );
  XOR2X1 U319 ( .IN1(MY_CLUSTER_ID[12]), .IN2(clusterID[12]), .Q(n224) );
  XOR2X1 U320 ( .IN1(MY_CLUSTER_ID[13]), .IN2(clusterID[13]), .Q(n223) );
  XOR2X1 U321 ( .IN1(MY_CLUSTER_ID[14]), .IN2(clusterID[14]), .Q(n222) );
  XOR2X1 U322 ( .IN1(MY_CLUSTER_ID[15]), .IN2(clusterID[15]), .Q(n221) );
  NOR4X0 U323 ( .IN1(n224), .IN2(n223), .IN3(n222), .IN4(n221), .QN(n242) );
  XOR2X1 U324 ( .IN1(MY_CLUSTER_ID[8]), .IN2(clusterID[8]), .Q(n228) );
  XOR2X1 U325 ( .IN1(MY_CLUSTER_ID[9]), .IN2(clusterID[9]), .Q(n227) );
  XOR2X1 U326 ( .IN1(MY_CLUSTER_ID[10]), .IN2(clusterID[10]), .Q(n226) );
  XOR2X1 U327 ( .IN1(MY_CLUSTER_ID[11]), .IN2(clusterID[11]), .Q(n225) );
  NOR4X0 U328 ( .IN1(n228), .IN2(n227), .IN3(n226), .IN4(n225), .QN(n241) );
  XOR2X1 U329 ( .IN1(MY_CLUSTER_ID[4]), .IN2(clusterID[4]), .Q(n232) );
  XOR2X1 U330 ( .IN1(MY_CLUSTER_ID[5]), .IN2(clusterID[5]), .Q(n231) );
  XOR2X1 U331 ( .IN1(MY_CLUSTER_ID[6]), .IN2(clusterID[6]), .Q(n230) );
  XOR2X1 U332 ( .IN1(MY_CLUSTER_ID[7]), .IN2(clusterID[7]), .Q(n229) );
  NOR4X0 U333 ( .IN1(n232), .IN2(n231), .IN3(n230), .IN4(n229), .QN(n240) );
  NOR2X0 U334 ( .IN1(n244), .IN2(MY_CLUSTER_ID[0]), .QN(n233) );
  OA22X1 U335 ( .IN1(n233), .IN2(n243), .IN3(clusterID[1]), .IN4(n233), .Q(
        n238) );
  AND2X1 U336 ( .IN1(MY_CLUSTER_ID[0]), .IN2(n244), .Q(n234) );
  OA22X1 U337 ( .IN1(MY_CLUSTER_ID[1]), .IN2(n234), .IN3(n234), .IN4(n245), 
        .Q(n237) );
  XOR2X1 U338 ( .IN1(MY_CLUSTER_ID[2]), .IN2(clusterID[2]), .Q(n236) );
  XOR2X1 U339 ( .IN1(MY_CLUSTER_ID[3]), .IN2(clusterID[3]), .Q(n235) );
  NOR4X0 U340 ( .IN1(n238), .IN2(n237), .IN3(n236), .IN4(n235), .QN(n239) );
  NAND4X0 U341 ( .IN1(n242), .IN2(n241), .IN3(n240), .IN4(n239), .QN(N103) );
  XOR2X1 U342 ( .IN1(knownSinkCount[15]), .IN2(N120), .Q(n251) );
  XOR2X1 U343 ( .IN1(knownSinkCount[2]), .IN2(N107), .Q(n250) );
  NOR2X0 U344 ( .IN1(n269), .IN2(N122), .QN(n246) );
  OA22X1 U345 ( .IN1(knownSinkCount[1]), .IN2(n246), .IN3(n246), .IN4(n268), 
        .Q(n249) );
  AND2X1 U346 ( .IN1(N122), .IN2(n269), .Q(n247) );
  OA22X1 U347 ( .IN1(n247), .IN2(n270), .IN3(N123), .IN4(n247), .Q(n248) );
  OR4X1 U348 ( .IN1(n251), .IN2(n250), .IN3(n249), .IN4(n248), .Q(n267) );
  XNOR2X1 U349 ( .IN1(knownSinkCount[6]), .IN2(N111), .Q(n255) );
  XNOR2X1 U350 ( .IN1(knownSinkCount[5]), .IN2(N110), .Q(n254) );
  XNOR2X1 U351 ( .IN1(knownSinkCount[4]), .IN2(N109), .Q(n253) );
  XNOR2X1 U352 ( .IN1(knownSinkCount[3]), .IN2(N108), .Q(n252) );
  NAND4X0 U353 ( .IN1(n255), .IN2(n254), .IN3(n253), .IN4(n252), .QN(n266) );
  XNOR2X1 U354 ( .IN1(knownSinkCount[10]), .IN2(N115), .Q(n259) );
  XNOR2X1 U355 ( .IN1(knownSinkCount[9]), .IN2(N114), .Q(n258) );
  XNOR2X1 U356 ( .IN1(knownSinkCount[8]), .IN2(N113), .Q(n257) );
  XNOR2X1 U357 ( .IN1(knownSinkCount[7]), .IN2(N112), .Q(n256) );
  NAND4X0 U358 ( .IN1(n259), .IN2(n258), .IN3(n257), .IN4(n256), .QN(n265) );
  XNOR2X1 U359 ( .IN1(knownSinkCount[14]), .IN2(N119), .Q(n263) );
  XNOR2X1 U360 ( .IN1(knownSinkCount[13]), .IN2(N118), .Q(n262) );
  XNOR2X1 U361 ( .IN1(knownSinkCount[12]), .IN2(N117), .Q(n261) );
  XNOR2X1 U362 ( .IN1(knownSinkCount[11]), .IN2(N116), .Q(n260) );
  NAND4X0 U363 ( .IN1(n263), .IN2(n262), .IN3(n261), .IN4(n260), .QN(n264) );
  NOR4X0 U364 ( .IN1(n267), .IN2(n266), .IN3(n265), .IN4(n264), .QN(N132) );
  XOR2X1 U365 ( .IN1(neighborCount[15]), .IN2(N188), .Q(n276) );
  XOR2X1 U366 ( .IN1(neighborCount[2]), .IN2(N201), .Q(n275) );
  NOR2X0 U367 ( .IN1(n295), .IN2(N203), .QN(n271) );
  OA22X1 U368 ( .IN1(neighborCount[1]), .IN2(n271), .IN3(n271), .IN4(n293), 
        .Q(n274) );
  AND2X1 U369 ( .IN1(N203), .IN2(n295), .Q(n272) );
  OA22X1 U370 ( .IN1(n272), .IN2(n294), .IN3(N202), .IN4(n272), .Q(n273) );
  OR4X1 U371 ( .IN1(n276), .IN2(n275), .IN3(n274), .IN4(n273), .Q(n292) );
  XNOR2X1 U372 ( .IN1(neighborCount[6]), .IN2(N197), .Q(n280) );
  XNOR2X1 U373 ( .IN1(neighborCount[5]), .IN2(N198), .Q(n279) );
  XNOR2X1 U374 ( .IN1(neighborCount[4]), .IN2(N199), .Q(n278) );
  XNOR2X1 U375 ( .IN1(neighborCount[3]), .IN2(N200), .Q(n277) );
  NAND4X0 U376 ( .IN1(n280), .IN2(n279), .IN3(n278), .IN4(n277), .QN(n291) );
  XNOR2X1 U377 ( .IN1(neighborCount[10]), .IN2(N193), .Q(n284) );
  XNOR2X1 U378 ( .IN1(neighborCount[9]), .IN2(N194), .Q(n283) );
  XNOR2X1 U379 ( .IN1(neighborCount[8]), .IN2(N195), .Q(n282) );
  XNOR2X1 U380 ( .IN1(neighborCount[7]), .IN2(N196), .Q(n281) );
  NAND4X0 U381 ( .IN1(n284), .IN2(n283), .IN3(n282), .IN4(n281), .QN(n290) );
  XNOR2X1 U382 ( .IN1(neighborCount[14]), .IN2(N189), .Q(n288) );
  XNOR2X1 U383 ( .IN1(neighborCount[13]), .IN2(N190), .Q(n287) );
  XNOR2X1 U384 ( .IN1(neighborCount[12]), .IN2(N191), .Q(n286) );
  XNOR2X1 U385 ( .IN1(neighborCount[11]), .IN2(N192), .Q(n285) );
  NAND4X0 U386 ( .IN1(n288), .IN2(n287), .IN3(n286), .IN4(n285), .QN(n289) );
  NOR4X0 U387 ( .IN1(n292), .IN2(n291), .IN3(n290), .IN4(n289), .QN(N204) );
  AND2X1 U388 ( .IN1(address[0]), .IN2(n300), .Q(n119) );
endmodule


module findMyBest_DW01_inc_1 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HADDX1 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .C1(carry[15]), .SO(SUM[14]) );
  HADDX1 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .C1(carry[14]), .SO(SUM[13]) );
  HADDX1 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .C1(carry[13]), .SO(SUM[12]) );
  HADDX1 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(carry[12]), .SO(SUM[11]) );
  HADDX1 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX0 U1 ( .INP(A[0]), .ZN(SUM[0]) );
  XOR2X1 U2 ( .IN1(carry[15]), .IN2(A[15]), .Q(SUM[15]) );
endmodule


module findMyBest_DW01_add_3 ( A, B, CI, SUM, CO );
  input [29:0] A;
  input [29:0] B;
  output [29:0] SUM;
  input CI;
  output CO;
  wire   \A[14] , \A[13] , \A[12] , \A[11] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47;
  assign SUM[14] = \A[14] ;
  assign \A[14]  = A[14];
  assign SUM[13] = \A[13] ;
  assign \A[13]  = A[13];
  assign SUM[12] = \A[12] ;
  assign \A[12]  = A[12];
  assign SUM[11] = \A[11] ;
  assign \A[11]  = A[11];

  INVX0 U2 ( .INP(n16), .ZN(n1) );
  INVX0 U3 ( .INP(n40), .ZN(n7) );
  INVX0 U4 ( .INP(n36), .ZN(n6) );
  INVX0 U5 ( .INP(n32), .ZN(n5) );
  INVX0 U6 ( .INP(n28), .ZN(n4) );
  INVX0 U7 ( .INP(n24), .ZN(n3) );
  INVX0 U8 ( .INP(n20), .ZN(n2) );
  INVX0 U9 ( .INP(n44), .ZN(n8) );
  INVX0 U10 ( .INP(n43), .ZN(n9) );
  XNOR3X1 U11 ( .IN1(B[26]), .IN2(A[26]), .IN3(n10), .Q(SUM[26]) );
  AOI22X1 U12 ( .IN1(n11), .IN2(B[25]), .IN3(n12), .IN4(A[25]), .QN(n10) );
  OR2X1 U13 ( .IN1(A[25]), .IN2(n12), .Q(n11) );
  XOR3X1 U14 ( .IN1(B[25]), .IN2(A[25]), .IN3(n12), .Q(SUM[25]) );
  AO22X1 U15 ( .IN1(A[24]), .IN2(n13), .IN3(B[24]), .IN4(n14), .Q(n12) );
  OR2X1 U16 ( .IN1(n13), .IN2(A[24]), .Q(n14) );
  XOR3X1 U17 ( .IN1(B[24]), .IN2(A[24]), .IN3(n13), .Q(SUM[24]) );
  OAI21X1 U18 ( .IN1(n15), .IN2(n16), .IN3(n17), .QN(n13) );
  XOR2X1 U19 ( .IN1(n18), .IN2(n15), .Q(SUM[23]) );
  OA21X1 U20 ( .IN1(n19), .IN2(n20), .IN3(n21), .Q(n15) );
  NAND2X0 U21 ( .IN1(n1), .IN2(n17), .QN(n18) );
  NAND2X0 U22 ( .IN1(B[23]), .IN2(A[23]), .QN(n17) );
  NOR2X0 U23 ( .IN1(B[23]), .IN2(A[23]), .QN(n16) );
  XOR2X1 U24 ( .IN1(n22), .IN2(n19), .Q(SUM[22]) );
  OA21X1 U25 ( .IN1(n23), .IN2(n24), .IN3(n25), .Q(n19) );
  NAND2X0 U26 ( .IN1(n2), .IN2(n21), .QN(n22) );
  NAND2X0 U27 ( .IN1(B[22]), .IN2(A[22]), .QN(n21) );
  NOR2X0 U28 ( .IN1(B[22]), .IN2(A[22]), .QN(n20) );
  XOR2X1 U29 ( .IN1(n26), .IN2(n23), .Q(SUM[21]) );
  OA21X1 U30 ( .IN1(n27), .IN2(n28), .IN3(n29), .Q(n23) );
  NAND2X0 U31 ( .IN1(n3), .IN2(n25), .QN(n26) );
  NAND2X0 U32 ( .IN1(B[21]), .IN2(A[21]), .QN(n25) );
  NOR2X0 U33 ( .IN1(B[21]), .IN2(A[21]), .QN(n24) );
  XOR2X1 U34 ( .IN1(n30), .IN2(n27), .Q(SUM[20]) );
  OA21X1 U35 ( .IN1(n31), .IN2(n32), .IN3(n33), .Q(n27) );
  NAND2X0 U36 ( .IN1(n4), .IN2(n29), .QN(n30) );
  NAND2X0 U37 ( .IN1(B[20]), .IN2(A[20]), .QN(n29) );
  NOR2X0 U38 ( .IN1(B[20]), .IN2(A[20]), .QN(n28) );
  XOR2X1 U39 ( .IN1(n34), .IN2(n31), .Q(SUM[19]) );
  OA21X1 U40 ( .IN1(n35), .IN2(n36), .IN3(n37), .Q(n31) );
  NAND2X0 U41 ( .IN1(n5), .IN2(n33), .QN(n34) );
  NAND2X0 U42 ( .IN1(B[19]), .IN2(A[19]), .QN(n33) );
  NOR2X0 U43 ( .IN1(B[19]), .IN2(A[19]), .QN(n32) );
  XOR2X1 U44 ( .IN1(n38), .IN2(n35), .Q(SUM[18]) );
  OA21X1 U45 ( .IN1(n39), .IN2(n40), .IN3(n41), .Q(n35) );
  NAND2X0 U46 ( .IN1(n6), .IN2(n37), .QN(n38) );
  NAND2X0 U47 ( .IN1(B[18]), .IN2(A[18]), .QN(n37) );
  NOR2X0 U48 ( .IN1(B[18]), .IN2(A[18]), .QN(n36) );
  XOR2X1 U49 ( .IN1(n42), .IN2(n39), .Q(SUM[17]) );
  OA21X1 U50 ( .IN1(n43), .IN2(n44), .IN3(n45), .Q(n39) );
  NAND2X0 U51 ( .IN1(n7), .IN2(n41), .QN(n42) );
  NAND2X0 U52 ( .IN1(B[17]), .IN2(A[17]), .QN(n41) );
  NOR2X0 U53 ( .IN1(B[17]), .IN2(A[17]), .QN(n40) );
  XOR2X1 U54 ( .IN1(n46), .IN2(n43), .Q(SUM[16]) );
  NAND2X0 U55 ( .IN1(n8), .IN2(n45), .QN(n46) );
  NAND2X0 U56 ( .IN1(B[16]), .IN2(A[16]), .QN(n45) );
  NOR2X0 U57 ( .IN1(B[16]), .IN2(A[16]), .QN(n44) );
  NOR2X0 U58 ( .IN1(n9), .IN2(n47), .QN(SUM[15]) );
  NOR2X0 U59 ( .IN1(B[15]), .IN2(A[15]), .QN(n47) );
  NAND2X0 U60 ( .IN1(B[15]), .IN2(A[15]), .QN(n43) );
endmodule


module findMyBest_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [15:0] A;
  input [15:0] B;
  output [31:0] PRODUCT;
  input TC;
  wire   \ab[15][15] , \ab[15][14] , \ab[15][13] , \ab[15][12] , \ab[15][11] ,
         \ab[15][10] , \ab[15][9] , \ab[15][8] , \ab[15][7] , \ab[15][6] ,
         \ab[15][5] , \ab[15][4] , \ab[15][3] , \ab[15][2] , \ab[15][1] ,
         \ab[15][0] , \ab[14][15] , \ab[14][14] , \ab[14][13] , \ab[14][12] ,
         \ab[14][11] , \ab[14][10] , \ab[14][9] , \ab[14][8] , \ab[14][7] ,
         \ab[14][6] , \ab[14][5] , \ab[14][4] , \ab[14][3] , \ab[14][2] ,
         \ab[14][1] , \ab[14][0] , \ab[13][15] , \ab[13][14] , \ab[13][13] ,
         \ab[13][12] , \ab[13][11] , \ab[13][10] , \ab[13][9] , \ab[13][8] ,
         \ab[13][7] , \ab[13][6] , \ab[13][5] , \ab[13][4] , \ab[13][3] ,
         \ab[13][2] , \ab[13][1] , \ab[13][0] , \ab[12][15] , \ab[12][14] ,
         \ab[12][13] , \ab[12][12] , \ab[12][11] , \ab[12][10] , \ab[12][9] ,
         \ab[12][8] , \ab[12][7] , \ab[12][6] , \ab[12][5] , \ab[12][4] ,
         \ab[12][3] , \ab[12][2] , \ab[12][1] , \ab[12][0] , \ab[11][15] ,
         \ab[11][14] , \ab[11][13] , \ab[11][12] , \ab[11][11] , \ab[11][10] ,
         \ab[11][9] , \ab[11][8] , \ab[11][7] , \ab[11][6] , \ab[11][5] ,
         \ab[11][4] , \ab[11][3] , \ab[11][2] , \ab[11][1] , \ab[11][0] ,
         \ab[10][15] , \ab[10][14] , \ab[10][13] , \ab[10][12] , \ab[10][11] ,
         \ab[10][10] , \ab[10][9] , \ab[10][8] , \ab[10][7] , \ab[10][6] ,
         \ab[10][5] , \ab[10][4] , \ab[10][3] , \ab[10][2] , \ab[10][1] ,
         \ab[10][0] , \ab[9][15] , \ab[9][14] , \ab[9][13] , \ab[9][12] ,
         \ab[9][11] , \ab[9][10] , \ab[9][9] , \ab[9][8] , \ab[9][7] ,
         \ab[9][6] , \ab[9][5] , \ab[9][4] , \ab[9][3] , \ab[9][2] ,
         \ab[9][1] , \ab[9][0] , \ab[8][15] , \ab[8][14] , \ab[8][13] ,
         \ab[8][12] , \ab[8][11] , \ab[8][10] , \ab[8][9] , \ab[8][8] ,
         \ab[8][7] , \ab[8][6] , \ab[8][5] , \ab[8][4] , \ab[8][3] ,
         \ab[8][2] , \ab[8][1] , \ab[8][0] , \ab[7][15] , \ab[7][14] ,
         \ab[7][13] , \ab[7][12] , \ab[7][11] , \ab[7][10] , \ab[7][9] ,
         \ab[7][8] , \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] ,
         \ab[7][3] , \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][15] ,
         \ab[6][14] , \ab[6][13] , \ab[6][12] , \ab[6][11] , \ab[6][10] ,
         \ab[6][9] , \ab[6][8] , \ab[6][7] , \ab[6][6] , \ab[6][5] ,
         \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] , \ab[6][0] ,
         \ab[5][15] , \ab[5][14] , \ab[5][13] , \ab[5][12] , \ab[5][11] ,
         \ab[5][10] , \ab[5][9] , \ab[5][8] , \ab[5][7] , \ab[5][6] ,
         \ab[5][5] , \ab[5][4] , \ab[5][3] , \ab[5][2] , \ab[5][1] ,
         \ab[5][0] , \ab[4][15] , \ab[4][14] , \ab[4][13] , \ab[4][12] ,
         \ab[4][11] , \ab[4][10] , \ab[4][9] , \ab[4][8] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][15] , \ab[3][14] , \ab[3][13] ,
         \ab[3][12] , \ab[3][11] , \ab[3][10] , \ab[3][9] , \ab[3][8] ,
         \ab[3][7] , \ab[3][6] , \ab[3][5] , \ab[3][4] , \ab[3][3] ,
         \ab[3][2] , \ab[3][1] , \ab[3][0] , \ab[2][15] , \ab[2][14] ,
         \ab[2][13] , \ab[2][12] , \ab[2][11] , \ab[2][10] , \ab[2][9] ,
         \ab[2][8] , \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] ,
         \ab[2][3] , \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][15] ,
         \ab[1][14] , \ab[1][13] , \ab[1][12] , \ab[1][11] , \ab[1][10] ,
         \ab[1][9] , \ab[1][8] , \ab[1][7] , \ab[1][6] , \ab[1][5] ,
         \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] , \ab[0][15] ,
         \ab[0][14] , \ab[0][13] , \ab[0][12] , \ab[0][11] , \ab[0][10] ,
         \ab[0][9] , \ab[0][8] , \ab[0][7] , \ab[0][6] , \ab[0][5] ,
         \ab[0][4] , \ab[0][3] , \ab[0][2] , \CARRYB[15][14] ,
         \CARRYB[15][13] , \CARRYB[15][12] , \CARRYB[15][11] ,
         \CARRYB[15][10] , \CARRYB[15][9] , \CARRYB[15][8] , \CARRYB[15][7] ,
         \CARRYB[15][6] , \CARRYB[15][5] , \CARRYB[15][4] , \CARRYB[15][3] ,
         \CARRYB[15][2] , \CARRYB[15][1] , \CARRYB[15][0] , \CARRYB[14][14] ,
         \CARRYB[14][13] , \CARRYB[14][12] , \CARRYB[14][11] ,
         \CARRYB[14][10] , \CARRYB[14][9] , \CARRYB[14][8] , \CARRYB[14][7] ,
         \CARRYB[14][6] , \CARRYB[14][5] , \CARRYB[14][4] , \CARRYB[14][3] ,
         \CARRYB[14][2] , \CARRYB[14][1] , \CARRYB[14][0] , \CARRYB[13][14] ,
         \CARRYB[13][13] , \CARRYB[13][12] , \CARRYB[13][11] ,
         \CARRYB[13][10] , \CARRYB[13][9] , \CARRYB[13][8] , \CARRYB[13][7] ,
         \CARRYB[13][6] , \CARRYB[13][5] , \CARRYB[13][4] , \CARRYB[13][3] ,
         \CARRYB[13][2] , \CARRYB[13][1] , \CARRYB[13][0] , \CARRYB[12][14] ,
         \CARRYB[12][13] , \CARRYB[12][12] , \CARRYB[12][11] ,
         \CARRYB[12][10] , \CARRYB[12][9] , \CARRYB[12][8] , \CARRYB[12][7] ,
         \CARRYB[12][6] , \CARRYB[12][5] , \CARRYB[12][4] , \CARRYB[12][3] ,
         \CARRYB[12][2] , \CARRYB[12][1] , \CARRYB[12][0] , \CARRYB[11][14] ,
         \CARRYB[11][13] , \CARRYB[11][12] , \CARRYB[11][11] ,
         \CARRYB[11][10] , \CARRYB[11][9] , \CARRYB[11][8] , \CARRYB[11][7] ,
         \CARRYB[11][6] , \CARRYB[11][5] , \CARRYB[11][4] , \CARRYB[11][3] ,
         \CARRYB[11][2] , \CARRYB[11][1] , \CARRYB[11][0] , \CARRYB[10][14] ,
         \CARRYB[10][13] , \CARRYB[10][12] , \CARRYB[10][11] ,
         \CARRYB[10][10] , \CARRYB[10][9] , \CARRYB[10][8] , \CARRYB[10][7] ,
         \CARRYB[10][6] , \CARRYB[10][5] , \CARRYB[10][4] , \CARRYB[10][3] ,
         \CARRYB[10][2] , \CARRYB[10][1] , \CARRYB[10][0] , \CARRYB[9][14] ,
         \CARRYB[9][13] , \CARRYB[9][12] , \CARRYB[9][11] , \CARRYB[9][10] ,
         \CARRYB[9][9] , \CARRYB[9][8] , \CARRYB[9][7] , \CARRYB[9][6] ,
         \CARRYB[9][5] , \CARRYB[9][4] , \CARRYB[9][3] , \CARRYB[9][2] ,
         \CARRYB[9][1] , \CARRYB[9][0] , \CARRYB[8][14] , \CARRYB[8][13] ,
         \CARRYB[8][12] , \CARRYB[8][11] , \CARRYB[8][10] , \CARRYB[8][9] ,
         \CARRYB[8][8] , \CARRYB[8][7] , \CARRYB[8][6] , \CARRYB[8][5] ,
         \CARRYB[8][4] , \CARRYB[8][3] , \CARRYB[8][2] , \CARRYB[8][1] ,
         \CARRYB[8][0] , \CARRYB[7][14] , \CARRYB[7][13] , \CARRYB[7][12] ,
         \CARRYB[7][11] , \CARRYB[7][10] , \CARRYB[7][9] , \CARRYB[7][8] ,
         \CARRYB[7][7] , \CARRYB[7][6] , \CARRYB[7][5] , \CARRYB[7][4] ,
         \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] , \CARRYB[7][0] ,
         \CARRYB[6][14] , \CARRYB[6][13] , \CARRYB[6][12] , \CARRYB[6][11] ,
         \CARRYB[6][10] , \CARRYB[6][9] , \CARRYB[6][8] , \CARRYB[6][7] ,
         \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] , \CARRYB[6][3] ,
         \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] , \CARRYB[5][14] ,
         \CARRYB[5][13] , \CARRYB[5][12] , \CARRYB[5][11] , \CARRYB[5][10] ,
         \CARRYB[5][9] , \CARRYB[5][8] , \CARRYB[5][7] , \CARRYB[5][6] ,
         \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] , \CARRYB[5][2] ,
         \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][14] , \CARRYB[4][13] ,
         \CARRYB[4][12] , \CARRYB[4][11] , \CARRYB[4][10] , \CARRYB[4][9] ,
         \CARRYB[4][8] , \CARRYB[4][7] , \CARRYB[4][6] , \CARRYB[4][5] ,
         \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] , \CARRYB[4][1] ,
         \CARRYB[4][0] , \CARRYB[3][14] , \CARRYB[3][13] , \CARRYB[3][12] ,
         \CARRYB[3][11] , \CARRYB[3][10] , \CARRYB[3][9] , \CARRYB[3][8] ,
         \CARRYB[3][7] , \CARRYB[3][6] , \CARRYB[3][5] , \CARRYB[3][4] ,
         \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] , \CARRYB[3][0] ,
         \CARRYB[2][14] , \CARRYB[2][13] , \CARRYB[2][12] , \CARRYB[2][11] ,
         \CARRYB[2][10] , \CARRYB[2][9] , \CARRYB[2][8] , \CARRYB[2][7] ,
         \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] , \CARRYB[2][3] ,
         \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] , \CARRYB[1][0] ,
         \SUMB[15][14] , \SUMB[15][13] , \SUMB[15][12] , \SUMB[15][11] ,
         \SUMB[15][10] , \SUMB[15][9] , \SUMB[15][8] , \SUMB[15][7] ,
         \SUMB[15][6] , \SUMB[15][5] , \SUMB[15][4] , \SUMB[15][3] ,
         \SUMB[15][2] , \SUMB[15][1] , \SUMB[15][0] , \SUMB[14][14] ,
         \SUMB[14][13] , \SUMB[14][12] , \SUMB[14][11] , \SUMB[14][10] ,
         \SUMB[14][9] , \SUMB[14][8] , \SUMB[14][7] , \SUMB[14][6] ,
         \SUMB[14][5] , \SUMB[14][4] , \SUMB[14][3] , \SUMB[14][2] ,
         \SUMB[14][1] , \SUMB[13][14] , \SUMB[13][13] , \SUMB[13][12] ,
         \SUMB[13][11] , \SUMB[13][10] , \SUMB[13][9] , \SUMB[13][8] ,
         \SUMB[13][7] , \SUMB[13][6] , \SUMB[13][5] , \SUMB[13][4] ,
         \SUMB[13][3] , \SUMB[13][2] , \SUMB[13][1] , \SUMB[12][14] ,
         \SUMB[12][13] , \SUMB[12][12] , \SUMB[12][11] , \SUMB[12][10] ,
         \SUMB[12][9] , \SUMB[12][8] , \SUMB[12][7] , \SUMB[12][6] ,
         \SUMB[12][5] , \SUMB[12][4] , \SUMB[12][3] , \SUMB[12][2] ,
         \SUMB[12][1] , \SUMB[11][14] , \SUMB[11][13] , \SUMB[11][12] ,
         \SUMB[11][11] , \SUMB[11][10] , \SUMB[11][9] , \SUMB[11][8] ,
         \SUMB[11][7] , \SUMB[11][6] , \SUMB[11][5] , \SUMB[11][4] ,
         \SUMB[11][3] , \SUMB[11][2] , \SUMB[11][1] , \SUMB[10][14] ,
         \SUMB[10][13] , \SUMB[10][12] , \SUMB[10][11] , \SUMB[10][10] ,
         \SUMB[10][9] , \SUMB[10][8] , \SUMB[10][7] , \SUMB[10][6] ,
         \SUMB[10][5] , \SUMB[10][4] , \SUMB[10][3] , \SUMB[10][2] ,
         \SUMB[10][1] , \SUMB[9][14] , \SUMB[9][13] , \SUMB[9][12] ,
         \SUMB[9][11] , \SUMB[9][10] , \SUMB[9][9] , \SUMB[9][8] ,
         \SUMB[9][7] , \SUMB[9][6] , \SUMB[9][5] , \SUMB[9][4] , \SUMB[9][3] ,
         \SUMB[9][2] , \SUMB[9][1] , \SUMB[8][14] , \SUMB[8][13] ,
         \SUMB[8][12] , \SUMB[8][11] , \SUMB[8][10] , \SUMB[8][9] ,
         \SUMB[8][8] , \SUMB[8][7] , \SUMB[8][6] , \SUMB[8][5] , \SUMB[8][4] ,
         \SUMB[8][3] , \SUMB[8][2] , \SUMB[8][1] , \SUMB[7][14] ,
         \SUMB[7][13] , \SUMB[7][12] , \SUMB[7][11] , \SUMB[7][10] ,
         \SUMB[7][9] , \SUMB[7][8] , \SUMB[7][7] , \SUMB[7][6] , \SUMB[7][5] ,
         \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] , \SUMB[7][1] , \SUMB[6][14] ,
         \SUMB[6][13] , \SUMB[6][12] , \SUMB[6][11] , \SUMB[6][10] ,
         \SUMB[6][9] , \SUMB[6][8] , \SUMB[6][7] , \SUMB[6][6] , \SUMB[6][5] ,
         \SUMB[6][4] , \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][14] ,
         \SUMB[5][13] , \SUMB[5][12] , \SUMB[5][11] , \SUMB[5][10] ,
         \SUMB[5][9] , \SUMB[5][8] , \SUMB[5][7] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][14] ,
         \SUMB[4][13] , \SUMB[4][12] , \SUMB[4][11] , \SUMB[4][10] ,
         \SUMB[4][9] , \SUMB[4][8] , \SUMB[4][7] , \SUMB[4][6] , \SUMB[4][5] ,
         \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] , \SUMB[3][14] ,
         \SUMB[3][13] , \SUMB[3][12] , \SUMB[3][11] , \SUMB[3][10] ,
         \SUMB[3][9] , \SUMB[3][8] , \SUMB[3][7] , \SUMB[3][6] , \SUMB[3][5] ,
         \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] , \SUMB[3][1] , \SUMB[2][14] ,
         \SUMB[2][13] , \SUMB[2][12] , \SUMB[2][11] , \SUMB[2][10] ,
         \SUMB[2][9] , \SUMB[2][8] , \SUMB[2][7] , \SUMB[2][6] , \SUMB[2][5] ,
         \SUMB[2][4] , \SUMB[2][3] , \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][14] ,
         \SUMB[1][13] , \SUMB[1][12] , \SUMB[1][11] , \SUMB[1][10] ,
         \SUMB[1][9] , \SUMB[1][8] , \SUMB[1][7] , \SUMB[1][6] , \SUMB[1][5] ,
         \SUMB[1][4] , \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[28] ,
         \A1[27] , \A1[26] , \A1[25] , \A1[24] , \A1[23] , \A1[22] , \A1[21] ,
         \A1[20] , \A1[19] , \A1[18] , \A1[17] , \A1[16] , \A1[15] , \A1[14] ,
         \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] ,
         \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13;

  FADDX1 S4_0 ( .A(\ab[15][0] ), .B(\CARRYB[14][0] ), .CI(\SUMB[14][1] ), .CO(
        \CARRYB[15][0] ), .S(\SUMB[15][0] ) );
  FADDX1 S4_1 ( .A(\ab[15][1] ), .B(\CARRYB[14][1] ), .CI(\SUMB[14][2] ), .CO(
        \CARRYB[15][1] ), .S(\SUMB[15][1] ) );
  FADDX1 S4_2 ( .A(\ab[15][2] ), .B(\CARRYB[14][2] ), .CI(\SUMB[14][3] ), .CO(
        \CARRYB[15][2] ), .S(\SUMB[15][2] ) );
  FADDX1 S4_3 ( .A(\ab[15][3] ), .B(\CARRYB[14][3] ), .CI(\SUMB[14][4] ), .CO(
        \CARRYB[15][3] ), .S(\SUMB[15][3] ) );
  FADDX1 S4_4 ( .A(\ab[15][4] ), .B(\CARRYB[14][4] ), .CI(\SUMB[14][5] ), .CO(
        \CARRYB[15][4] ), .S(\SUMB[15][4] ) );
  FADDX1 S4_5 ( .A(\ab[15][5] ), .B(\CARRYB[14][5] ), .CI(\SUMB[14][6] ), .CO(
        \CARRYB[15][5] ), .S(\SUMB[15][5] ) );
  FADDX1 S4_6 ( .A(\ab[15][6] ), .B(\CARRYB[14][6] ), .CI(\SUMB[14][7] ), .CO(
        \CARRYB[15][6] ), .S(\SUMB[15][6] ) );
  FADDX1 S4_7 ( .A(\ab[15][7] ), .B(\CARRYB[14][7] ), .CI(\SUMB[14][8] ), .CO(
        \CARRYB[15][7] ), .S(\SUMB[15][7] ) );
  FADDX1 S4_8 ( .A(\ab[15][8] ), .B(\CARRYB[14][8] ), .CI(\SUMB[14][9] ), .CO(
        \CARRYB[15][8] ), .S(\SUMB[15][8] ) );
  FADDX1 S4_9 ( .A(\ab[15][9] ), .B(\CARRYB[14][9] ), .CI(\SUMB[14][10] ), 
        .CO(\CARRYB[15][9] ), .S(\SUMB[15][9] ) );
  FADDX1 S4_10 ( .A(\ab[15][10] ), .B(\CARRYB[14][10] ), .CI(\SUMB[14][11] ), 
        .CO(\CARRYB[15][10] ), .S(\SUMB[15][10] ) );
  FADDX1 S4_11 ( .A(\ab[15][11] ), .B(\CARRYB[14][11] ), .CI(\SUMB[14][12] ), 
        .CO(\CARRYB[15][11] ), .S(\SUMB[15][11] ) );
  FADDX1 S4_12 ( .A(\ab[15][12] ), .B(\CARRYB[14][12] ), .CI(\SUMB[14][13] ), 
        .CO(\CARRYB[15][12] ), .S(\SUMB[15][12] ) );
  FADDX1 S4_13 ( .A(\ab[15][13] ), .B(\CARRYB[14][13] ), .CI(\SUMB[14][14] ), 
        .CO(\CARRYB[15][13] ), .S(\SUMB[15][13] ) );
  FADDX1 S5_14 ( .A(\ab[15][14] ), .B(\CARRYB[14][14] ), .CI(\ab[14][15] ), 
        .CO(\CARRYB[15][14] ), .S(\SUMB[15][14] ) );
  FADDX1 S1_14_0 ( .A(\ab[14][0] ), .B(\CARRYB[13][0] ), .CI(\SUMB[13][1] ), 
        .CO(\CARRYB[14][0] ), .S(\A1[12] ) );
  FADDX1 S2_14_1 ( .A(\ab[14][1] ), .B(\CARRYB[13][1] ), .CI(\SUMB[13][2] ), 
        .CO(\CARRYB[14][1] ), .S(\SUMB[14][1] ) );
  FADDX1 S2_14_2 ( .A(\ab[14][2] ), .B(\CARRYB[13][2] ), .CI(\SUMB[13][3] ), 
        .CO(\CARRYB[14][2] ), .S(\SUMB[14][2] ) );
  FADDX1 S2_14_3 ( .A(\ab[14][3] ), .B(\CARRYB[13][3] ), .CI(\SUMB[13][4] ), 
        .CO(\CARRYB[14][3] ), .S(\SUMB[14][3] ) );
  FADDX1 S2_14_4 ( .A(\ab[14][4] ), .B(\CARRYB[13][4] ), .CI(\SUMB[13][5] ), 
        .CO(\CARRYB[14][4] ), .S(\SUMB[14][4] ) );
  FADDX1 S2_14_5 ( .A(\ab[14][5] ), .B(\CARRYB[13][5] ), .CI(\SUMB[13][6] ), 
        .CO(\CARRYB[14][5] ), .S(\SUMB[14][5] ) );
  FADDX1 S2_14_6 ( .A(\ab[14][6] ), .B(\CARRYB[13][6] ), .CI(\SUMB[13][7] ), 
        .CO(\CARRYB[14][6] ), .S(\SUMB[14][6] ) );
  FADDX1 S2_14_7 ( .A(\ab[14][7] ), .B(\CARRYB[13][7] ), .CI(\SUMB[13][8] ), 
        .CO(\CARRYB[14][7] ), .S(\SUMB[14][7] ) );
  FADDX1 S2_14_8 ( .A(\ab[14][8] ), .B(\CARRYB[13][8] ), .CI(\SUMB[13][9] ), 
        .CO(\CARRYB[14][8] ), .S(\SUMB[14][8] ) );
  FADDX1 S2_14_9 ( .A(\ab[14][9] ), .B(\CARRYB[13][9] ), .CI(\SUMB[13][10] ), 
        .CO(\CARRYB[14][9] ), .S(\SUMB[14][9] ) );
  FADDX1 S2_14_10 ( .A(\ab[14][10] ), .B(\CARRYB[13][10] ), .CI(\SUMB[13][11] ), .CO(\CARRYB[14][10] ), .S(\SUMB[14][10] ) );
  FADDX1 S2_14_11 ( .A(\ab[14][11] ), .B(\CARRYB[13][11] ), .CI(\SUMB[13][12] ), .CO(\CARRYB[14][11] ), .S(\SUMB[14][11] ) );
  FADDX1 S2_14_12 ( .A(\ab[14][12] ), .B(\CARRYB[13][12] ), .CI(\SUMB[13][13] ), .CO(\CARRYB[14][12] ), .S(\SUMB[14][12] ) );
  FADDX1 S2_14_13 ( .A(\ab[14][13] ), .B(\CARRYB[13][13] ), .CI(\SUMB[13][14] ), .CO(\CARRYB[14][13] ), .S(\SUMB[14][13] ) );
  FADDX1 S3_14_14 ( .A(\ab[14][14] ), .B(\CARRYB[13][14] ), .CI(\ab[13][15] ), 
        .CO(\CARRYB[14][14] ), .S(\SUMB[14][14] ) );
  FADDX1 S1_13_0 ( .A(\ab[13][0] ), .B(\CARRYB[12][0] ), .CI(\SUMB[12][1] ), 
        .CO(\CARRYB[13][0] ), .S(\A1[11] ) );
  FADDX1 S2_13_1 ( .A(\ab[13][1] ), .B(\CARRYB[12][1] ), .CI(\SUMB[12][2] ), 
        .CO(\CARRYB[13][1] ), .S(\SUMB[13][1] ) );
  FADDX1 S2_13_2 ( .A(\ab[13][2] ), .B(\CARRYB[12][2] ), .CI(\SUMB[12][3] ), 
        .CO(\CARRYB[13][2] ), .S(\SUMB[13][2] ) );
  FADDX1 S2_13_3 ( .A(\ab[13][3] ), .B(\CARRYB[12][3] ), .CI(\SUMB[12][4] ), 
        .CO(\CARRYB[13][3] ), .S(\SUMB[13][3] ) );
  FADDX1 S2_13_4 ( .A(\ab[13][4] ), .B(\CARRYB[12][4] ), .CI(\SUMB[12][5] ), 
        .CO(\CARRYB[13][4] ), .S(\SUMB[13][4] ) );
  FADDX1 S2_13_5 ( .A(\ab[13][5] ), .B(\CARRYB[12][5] ), .CI(\SUMB[12][6] ), 
        .CO(\CARRYB[13][5] ), .S(\SUMB[13][5] ) );
  FADDX1 S2_13_6 ( .A(\ab[13][6] ), .B(\CARRYB[12][6] ), .CI(\SUMB[12][7] ), 
        .CO(\CARRYB[13][6] ), .S(\SUMB[13][6] ) );
  FADDX1 S2_13_7 ( .A(\ab[13][7] ), .B(\CARRYB[12][7] ), .CI(\SUMB[12][8] ), 
        .CO(\CARRYB[13][7] ), .S(\SUMB[13][7] ) );
  FADDX1 S2_13_8 ( .A(\ab[13][8] ), .B(\CARRYB[12][8] ), .CI(\SUMB[12][9] ), 
        .CO(\CARRYB[13][8] ), .S(\SUMB[13][8] ) );
  FADDX1 S2_13_9 ( .A(\ab[13][9] ), .B(\CARRYB[12][9] ), .CI(\SUMB[12][10] ), 
        .CO(\CARRYB[13][9] ), .S(\SUMB[13][9] ) );
  FADDX1 S2_13_10 ( .A(\ab[13][10] ), .B(\CARRYB[12][10] ), .CI(\SUMB[12][11] ), .CO(\CARRYB[13][10] ), .S(\SUMB[13][10] ) );
  FADDX1 S2_13_11 ( .A(\ab[13][11] ), .B(\CARRYB[12][11] ), .CI(\SUMB[12][12] ), .CO(\CARRYB[13][11] ), .S(\SUMB[13][11] ) );
  FADDX1 S2_13_12 ( .A(\ab[13][12] ), .B(\CARRYB[12][12] ), .CI(\SUMB[12][13] ), .CO(\CARRYB[13][12] ), .S(\SUMB[13][12] ) );
  FADDX1 S2_13_13 ( .A(\ab[13][13] ), .B(\CARRYB[12][13] ), .CI(\SUMB[12][14] ), .CO(\CARRYB[13][13] ), .S(\SUMB[13][13] ) );
  FADDX1 S3_13_14 ( .A(\ab[13][14] ), .B(\CARRYB[12][14] ), .CI(\ab[12][15] ), 
        .CO(\CARRYB[13][14] ), .S(\SUMB[13][14] ) );
  FADDX1 S1_12_0 ( .A(\ab[12][0] ), .B(\CARRYB[11][0] ), .CI(\SUMB[11][1] ), 
        .CO(\CARRYB[12][0] ), .S(\A1[10] ) );
  FADDX1 S2_12_1 ( .A(\ab[12][1] ), .B(\CARRYB[11][1] ), .CI(\SUMB[11][2] ), 
        .CO(\CARRYB[12][1] ), .S(\SUMB[12][1] ) );
  FADDX1 S2_12_2 ( .A(\ab[12][2] ), .B(\CARRYB[11][2] ), .CI(\SUMB[11][3] ), 
        .CO(\CARRYB[12][2] ), .S(\SUMB[12][2] ) );
  FADDX1 S2_12_3 ( .A(\ab[12][3] ), .B(\CARRYB[11][3] ), .CI(\SUMB[11][4] ), 
        .CO(\CARRYB[12][3] ), .S(\SUMB[12][3] ) );
  FADDX1 S2_12_4 ( .A(\ab[12][4] ), .B(\CARRYB[11][4] ), .CI(\SUMB[11][5] ), 
        .CO(\CARRYB[12][4] ), .S(\SUMB[12][4] ) );
  FADDX1 S2_12_5 ( .A(\ab[12][5] ), .B(\CARRYB[11][5] ), .CI(\SUMB[11][6] ), 
        .CO(\CARRYB[12][5] ), .S(\SUMB[12][5] ) );
  FADDX1 S2_12_6 ( .A(\ab[12][6] ), .B(\CARRYB[11][6] ), .CI(\SUMB[11][7] ), 
        .CO(\CARRYB[12][6] ), .S(\SUMB[12][6] ) );
  FADDX1 S2_12_7 ( .A(\ab[12][7] ), .B(\CARRYB[11][7] ), .CI(\SUMB[11][8] ), 
        .CO(\CARRYB[12][7] ), .S(\SUMB[12][7] ) );
  FADDX1 S2_12_8 ( .A(\ab[12][8] ), .B(\CARRYB[11][8] ), .CI(\SUMB[11][9] ), 
        .CO(\CARRYB[12][8] ), .S(\SUMB[12][8] ) );
  FADDX1 S2_12_9 ( .A(\ab[12][9] ), .B(\CARRYB[11][9] ), .CI(\SUMB[11][10] ), 
        .CO(\CARRYB[12][9] ), .S(\SUMB[12][9] ) );
  FADDX1 S2_12_10 ( .A(\ab[12][10] ), .B(\CARRYB[11][10] ), .CI(\SUMB[11][11] ), .CO(\CARRYB[12][10] ), .S(\SUMB[12][10] ) );
  FADDX1 S2_12_11 ( .A(\ab[12][11] ), .B(\CARRYB[11][11] ), .CI(\SUMB[11][12] ), .CO(\CARRYB[12][11] ), .S(\SUMB[12][11] ) );
  FADDX1 S2_12_12 ( .A(\ab[12][12] ), .B(\CARRYB[11][12] ), .CI(\SUMB[11][13] ), .CO(\CARRYB[12][12] ), .S(\SUMB[12][12] ) );
  FADDX1 S2_12_13 ( .A(\ab[12][13] ), .B(\CARRYB[11][13] ), .CI(\SUMB[11][14] ), .CO(\CARRYB[12][13] ), .S(\SUMB[12][13] ) );
  FADDX1 S3_12_14 ( .A(\ab[12][14] ), .B(\CARRYB[11][14] ), .CI(\ab[11][15] ), 
        .CO(\CARRYB[12][14] ), .S(\SUMB[12][14] ) );
  FADDX1 S1_11_0 ( .A(\ab[11][0] ), .B(\CARRYB[10][0] ), .CI(\SUMB[10][1] ), 
        .CO(\CARRYB[11][0] ), .S(\A1[9] ) );
  FADDX1 S2_11_1 ( .A(\ab[11][1] ), .B(\CARRYB[10][1] ), .CI(\SUMB[10][2] ), 
        .CO(\CARRYB[11][1] ), .S(\SUMB[11][1] ) );
  FADDX1 S2_11_2 ( .A(\ab[11][2] ), .B(\CARRYB[10][2] ), .CI(\SUMB[10][3] ), 
        .CO(\CARRYB[11][2] ), .S(\SUMB[11][2] ) );
  FADDX1 S2_11_3 ( .A(\ab[11][3] ), .B(\CARRYB[10][3] ), .CI(\SUMB[10][4] ), 
        .CO(\CARRYB[11][3] ), .S(\SUMB[11][3] ) );
  FADDX1 S2_11_4 ( .A(\ab[11][4] ), .B(\CARRYB[10][4] ), .CI(\SUMB[10][5] ), 
        .CO(\CARRYB[11][4] ), .S(\SUMB[11][4] ) );
  FADDX1 S2_11_5 ( .A(\ab[11][5] ), .B(\CARRYB[10][5] ), .CI(\SUMB[10][6] ), 
        .CO(\CARRYB[11][5] ), .S(\SUMB[11][5] ) );
  FADDX1 S2_11_6 ( .A(\ab[11][6] ), .B(\CARRYB[10][6] ), .CI(\SUMB[10][7] ), 
        .CO(\CARRYB[11][6] ), .S(\SUMB[11][6] ) );
  FADDX1 S2_11_7 ( .A(\ab[11][7] ), .B(\CARRYB[10][7] ), .CI(\SUMB[10][8] ), 
        .CO(\CARRYB[11][7] ), .S(\SUMB[11][7] ) );
  FADDX1 S2_11_8 ( .A(\ab[11][8] ), .B(\CARRYB[10][8] ), .CI(\SUMB[10][9] ), 
        .CO(\CARRYB[11][8] ), .S(\SUMB[11][8] ) );
  FADDX1 S2_11_9 ( .A(\ab[11][9] ), .B(\CARRYB[10][9] ), .CI(\SUMB[10][10] ), 
        .CO(\CARRYB[11][9] ), .S(\SUMB[11][9] ) );
  FADDX1 S2_11_10 ( .A(\ab[11][10] ), .B(\CARRYB[10][10] ), .CI(\SUMB[10][11] ), .CO(\CARRYB[11][10] ), .S(\SUMB[11][10] ) );
  FADDX1 S2_11_11 ( .A(\ab[11][11] ), .B(\CARRYB[10][11] ), .CI(\SUMB[10][12] ), .CO(\CARRYB[11][11] ), .S(\SUMB[11][11] ) );
  FADDX1 S2_11_12 ( .A(\ab[11][12] ), .B(\CARRYB[10][12] ), .CI(\SUMB[10][13] ), .CO(\CARRYB[11][12] ), .S(\SUMB[11][12] ) );
  FADDX1 S2_11_13 ( .A(\ab[11][13] ), .B(\CARRYB[10][13] ), .CI(\SUMB[10][14] ), .CO(\CARRYB[11][13] ), .S(\SUMB[11][13] ) );
  FADDX1 S3_11_14 ( .A(\ab[11][14] ), .B(\CARRYB[10][14] ), .CI(\ab[10][15] ), 
        .CO(\CARRYB[11][14] ), .S(\SUMB[11][14] ) );
  FADDX1 S1_10_0 ( .A(\ab[10][0] ), .B(\CARRYB[9][0] ), .CI(\SUMB[9][1] ), 
        .CO(\CARRYB[10][0] ), .S(\A1[8] ) );
  FADDX1 S2_10_1 ( .A(\ab[10][1] ), .B(\CARRYB[9][1] ), .CI(\SUMB[9][2] ), 
        .CO(\CARRYB[10][1] ), .S(\SUMB[10][1] ) );
  FADDX1 S2_10_2 ( .A(\ab[10][2] ), .B(\CARRYB[9][2] ), .CI(\SUMB[9][3] ), 
        .CO(\CARRYB[10][2] ), .S(\SUMB[10][2] ) );
  FADDX1 S2_10_3 ( .A(\ab[10][3] ), .B(\CARRYB[9][3] ), .CI(\SUMB[9][4] ), 
        .CO(\CARRYB[10][3] ), .S(\SUMB[10][3] ) );
  FADDX1 S2_10_4 ( .A(\ab[10][4] ), .B(\CARRYB[9][4] ), .CI(\SUMB[9][5] ), 
        .CO(\CARRYB[10][4] ), .S(\SUMB[10][4] ) );
  FADDX1 S2_10_5 ( .A(\ab[10][5] ), .B(\CARRYB[9][5] ), .CI(\SUMB[9][6] ), 
        .CO(\CARRYB[10][5] ), .S(\SUMB[10][5] ) );
  FADDX1 S2_10_6 ( .A(\ab[10][6] ), .B(\CARRYB[9][6] ), .CI(\SUMB[9][7] ), 
        .CO(\CARRYB[10][6] ), .S(\SUMB[10][6] ) );
  FADDX1 S2_10_7 ( .A(\ab[10][7] ), .B(\CARRYB[9][7] ), .CI(\SUMB[9][8] ), 
        .CO(\CARRYB[10][7] ), .S(\SUMB[10][7] ) );
  FADDX1 S2_10_8 ( .A(\ab[10][8] ), .B(\CARRYB[9][8] ), .CI(\SUMB[9][9] ), 
        .CO(\CARRYB[10][8] ), .S(\SUMB[10][8] ) );
  FADDX1 S2_10_9 ( .A(\ab[10][9] ), .B(\CARRYB[9][9] ), .CI(\SUMB[9][10] ), 
        .CO(\CARRYB[10][9] ), .S(\SUMB[10][9] ) );
  FADDX1 S2_10_10 ( .A(\ab[10][10] ), .B(\CARRYB[9][10] ), .CI(\SUMB[9][11] ), 
        .CO(\CARRYB[10][10] ), .S(\SUMB[10][10] ) );
  FADDX1 S2_10_11 ( .A(\ab[10][11] ), .B(\CARRYB[9][11] ), .CI(\SUMB[9][12] ), 
        .CO(\CARRYB[10][11] ), .S(\SUMB[10][11] ) );
  FADDX1 S2_10_12 ( .A(\ab[10][12] ), .B(\CARRYB[9][12] ), .CI(\SUMB[9][13] ), 
        .CO(\CARRYB[10][12] ), .S(\SUMB[10][12] ) );
  FADDX1 S2_10_13 ( .A(\ab[10][13] ), .B(\CARRYB[9][13] ), .CI(\SUMB[9][14] ), 
        .CO(\CARRYB[10][13] ), .S(\SUMB[10][13] ) );
  FADDX1 S3_10_14 ( .A(\ab[10][14] ), .B(\CARRYB[9][14] ), .CI(\ab[9][15] ), 
        .CO(\CARRYB[10][14] ), .S(\SUMB[10][14] ) );
  FADDX1 S1_9_0 ( .A(\ab[9][0] ), .B(\CARRYB[8][0] ), .CI(\SUMB[8][1] ), .CO(
        \CARRYB[9][0] ), .S(\A1[7] ) );
  FADDX1 S2_9_1 ( .A(\ab[9][1] ), .B(\CARRYB[8][1] ), .CI(\SUMB[8][2] ), .CO(
        \CARRYB[9][1] ), .S(\SUMB[9][1] ) );
  FADDX1 S2_9_2 ( .A(\ab[9][2] ), .B(\CARRYB[8][2] ), .CI(\SUMB[8][3] ), .CO(
        \CARRYB[9][2] ), .S(\SUMB[9][2] ) );
  FADDX1 S2_9_3 ( .A(\ab[9][3] ), .B(\CARRYB[8][3] ), .CI(\SUMB[8][4] ), .CO(
        \CARRYB[9][3] ), .S(\SUMB[9][3] ) );
  FADDX1 S2_9_4 ( .A(\ab[9][4] ), .B(\CARRYB[8][4] ), .CI(\SUMB[8][5] ), .CO(
        \CARRYB[9][4] ), .S(\SUMB[9][4] ) );
  FADDX1 S2_9_5 ( .A(\ab[9][5] ), .B(\CARRYB[8][5] ), .CI(\SUMB[8][6] ), .CO(
        \CARRYB[9][5] ), .S(\SUMB[9][5] ) );
  FADDX1 S2_9_6 ( .A(\ab[9][6] ), .B(\CARRYB[8][6] ), .CI(\SUMB[8][7] ), .CO(
        \CARRYB[9][6] ), .S(\SUMB[9][6] ) );
  FADDX1 S2_9_7 ( .A(\ab[9][7] ), .B(\CARRYB[8][7] ), .CI(\SUMB[8][8] ), .CO(
        \CARRYB[9][7] ), .S(\SUMB[9][7] ) );
  FADDX1 S2_9_8 ( .A(\ab[9][8] ), .B(\CARRYB[8][8] ), .CI(\SUMB[8][9] ), .CO(
        \CARRYB[9][8] ), .S(\SUMB[9][8] ) );
  FADDX1 S2_9_9 ( .A(\ab[9][9] ), .B(\CARRYB[8][9] ), .CI(\SUMB[8][10] ), .CO(
        \CARRYB[9][9] ), .S(\SUMB[9][9] ) );
  FADDX1 S2_9_10 ( .A(\ab[9][10] ), .B(\CARRYB[8][10] ), .CI(\SUMB[8][11] ), 
        .CO(\CARRYB[9][10] ), .S(\SUMB[9][10] ) );
  FADDX1 S2_9_11 ( .A(\ab[9][11] ), .B(\CARRYB[8][11] ), .CI(\SUMB[8][12] ), 
        .CO(\CARRYB[9][11] ), .S(\SUMB[9][11] ) );
  FADDX1 S2_9_12 ( .A(\ab[9][12] ), .B(\CARRYB[8][12] ), .CI(\SUMB[8][13] ), 
        .CO(\CARRYB[9][12] ), .S(\SUMB[9][12] ) );
  FADDX1 S2_9_13 ( .A(\ab[9][13] ), .B(\CARRYB[8][13] ), .CI(\SUMB[8][14] ), 
        .CO(\CARRYB[9][13] ), .S(\SUMB[9][13] ) );
  FADDX1 S3_9_14 ( .A(\ab[9][14] ), .B(\CARRYB[8][14] ), .CI(\ab[8][15] ), 
        .CO(\CARRYB[9][14] ), .S(\SUMB[9][14] ) );
  FADDX1 S1_8_0 ( .A(\ab[8][0] ), .B(\CARRYB[7][0] ), .CI(\SUMB[7][1] ), .CO(
        \CARRYB[8][0] ), .S(\A1[6] ) );
  FADDX1 S2_8_1 ( .A(\ab[8][1] ), .B(\CARRYB[7][1] ), .CI(\SUMB[7][2] ), .CO(
        \CARRYB[8][1] ), .S(\SUMB[8][1] ) );
  FADDX1 S2_8_2 ( .A(\ab[8][2] ), .B(\CARRYB[7][2] ), .CI(\SUMB[7][3] ), .CO(
        \CARRYB[8][2] ), .S(\SUMB[8][2] ) );
  FADDX1 S2_8_3 ( .A(\ab[8][3] ), .B(\CARRYB[7][3] ), .CI(\SUMB[7][4] ), .CO(
        \CARRYB[8][3] ), .S(\SUMB[8][3] ) );
  FADDX1 S2_8_4 ( .A(\ab[8][4] ), .B(\CARRYB[7][4] ), .CI(\SUMB[7][5] ), .CO(
        \CARRYB[8][4] ), .S(\SUMB[8][4] ) );
  FADDX1 S2_8_5 ( .A(\ab[8][5] ), .B(\CARRYB[7][5] ), .CI(\SUMB[7][6] ), .CO(
        \CARRYB[8][5] ), .S(\SUMB[8][5] ) );
  FADDX1 S2_8_6 ( .A(\ab[8][6] ), .B(\CARRYB[7][6] ), .CI(\SUMB[7][7] ), .CO(
        \CARRYB[8][6] ), .S(\SUMB[8][6] ) );
  FADDX1 S2_8_7 ( .A(\ab[8][7] ), .B(\CARRYB[7][7] ), .CI(\SUMB[7][8] ), .CO(
        \CARRYB[8][7] ), .S(\SUMB[8][7] ) );
  FADDX1 S2_8_8 ( .A(\ab[8][8] ), .B(\CARRYB[7][8] ), .CI(\SUMB[7][9] ), .CO(
        \CARRYB[8][8] ), .S(\SUMB[8][8] ) );
  FADDX1 S2_8_9 ( .A(\ab[8][9] ), .B(\CARRYB[7][9] ), .CI(\SUMB[7][10] ), .CO(
        \CARRYB[8][9] ), .S(\SUMB[8][9] ) );
  FADDX1 S2_8_10 ( .A(\ab[8][10] ), .B(\CARRYB[7][10] ), .CI(\SUMB[7][11] ), 
        .CO(\CARRYB[8][10] ), .S(\SUMB[8][10] ) );
  FADDX1 S2_8_11 ( .A(\ab[8][11] ), .B(\CARRYB[7][11] ), .CI(\SUMB[7][12] ), 
        .CO(\CARRYB[8][11] ), .S(\SUMB[8][11] ) );
  FADDX1 S2_8_12 ( .A(\ab[8][12] ), .B(\CARRYB[7][12] ), .CI(\SUMB[7][13] ), 
        .CO(\CARRYB[8][12] ), .S(\SUMB[8][12] ) );
  FADDX1 S2_8_13 ( .A(\ab[8][13] ), .B(\CARRYB[7][13] ), .CI(\SUMB[7][14] ), 
        .CO(\CARRYB[8][13] ), .S(\SUMB[8][13] ) );
  FADDX1 S3_8_14 ( .A(\ab[8][14] ), .B(\CARRYB[7][14] ), .CI(\ab[7][15] ), 
        .CO(\CARRYB[8][14] ), .S(\SUMB[8][14] ) );
  FADDX1 S1_7_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\A1[5] ) );
  FADDX1 S2_7_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  FADDX1 S2_7_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  FADDX1 S2_7_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  FADDX1 S2_7_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  FADDX1 S2_7_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  FADDX1 S2_7_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\SUMB[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  FADDX1 S2_7_7 ( .A(\ab[7][7] ), .B(\CARRYB[6][7] ), .CI(\SUMB[6][8] ), .CO(
        \CARRYB[7][7] ), .S(\SUMB[7][7] ) );
  FADDX1 S2_7_8 ( .A(\ab[7][8] ), .B(\CARRYB[6][8] ), .CI(\SUMB[6][9] ), .CO(
        \CARRYB[7][8] ), .S(\SUMB[7][8] ) );
  FADDX1 S2_7_9 ( .A(\ab[7][9] ), .B(\CARRYB[6][9] ), .CI(\SUMB[6][10] ), .CO(
        \CARRYB[7][9] ), .S(\SUMB[7][9] ) );
  FADDX1 S2_7_10 ( .A(\ab[7][10] ), .B(\CARRYB[6][10] ), .CI(\SUMB[6][11] ), 
        .CO(\CARRYB[7][10] ), .S(\SUMB[7][10] ) );
  FADDX1 S2_7_11 ( .A(\ab[7][11] ), .B(\CARRYB[6][11] ), .CI(\SUMB[6][12] ), 
        .CO(\CARRYB[7][11] ), .S(\SUMB[7][11] ) );
  FADDX1 S2_7_12 ( .A(\ab[7][12] ), .B(\CARRYB[6][12] ), .CI(\SUMB[6][13] ), 
        .CO(\CARRYB[7][12] ), .S(\SUMB[7][12] ) );
  FADDX1 S2_7_13 ( .A(\ab[7][13] ), .B(\CARRYB[6][13] ), .CI(\SUMB[6][14] ), 
        .CO(\CARRYB[7][13] ), .S(\SUMB[7][13] ) );
  FADDX1 S3_7_14 ( .A(\ab[7][14] ), .B(\CARRYB[6][14] ), .CI(\ab[6][15] ), 
        .CO(\CARRYB[7][14] ), .S(\SUMB[7][14] ) );
  FADDX1 S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  FADDX1 S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  FADDX1 S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  FADDX1 S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  FADDX1 S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  FADDX1 S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  FADDX1 S2_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\SUMB[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  FADDX1 S2_6_7 ( .A(\ab[6][7] ), .B(\CARRYB[5][7] ), .CI(\SUMB[5][8] ), .CO(
        \CARRYB[6][7] ), .S(\SUMB[6][7] ) );
  FADDX1 S2_6_8 ( .A(\ab[6][8] ), .B(\CARRYB[5][8] ), .CI(\SUMB[5][9] ), .CO(
        \CARRYB[6][8] ), .S(\SUMB[6][8] ) );
  FADDX1 S2_6_9 ( .A(\ab[6][9] ), .B(\CARRYB[5][9] ), .CI(\SUMB[5][10] ), .CO(
        \CARRYB[6][9] ), .S(\SUMB[6][9] ) );
  FADDX1 S2_6_10 ( .A(\ab[6][10] ), .B(\CARRYB[5][10] ), .CI(\SUMB[5][11] ), 
        .CO(\CARRYB[6][10] ), .S(\SUMB[6][10] ) );
  FADDX1 S2_6_11 ( .A(\ab[6][11] ), .B(\CARRYB[5][11] ), .CI(\SUMB[5][12] ), 
        .CO(\CARRYB[6][11] ), .S(\SUMB[6][11] ) );
  FADDX1 S2_6_12 ( .A(\ab[6][12] ), .B(\CARRYB[5][12] ), .CI(\SUMB[5][13] ), 
        .CO(\CARRYB[6][12] ), .S(\SUMB[6][12] ) );
  FADDX1 S2_6_13 ( .A(\ab[6][13] ), .B(\CARRYB[5][13] ), .CI(\SUMB[5][14] ), 
        .CO(\CARRYB[6][13] ), .S(\SUMB[6][13] ) );
  FADDX1 S3_6_14 ( .A(\ab[6][14] ), .B(\CARRYB[5][14] ), .CI(\ab[5][15] ), 
        .CO(\CARRYB[6][14] ), .S(\SUMB[6][14] ) );
  FADDX1 S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  FADDX1 S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  FADDX1 S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  FADDX1 S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  FADDX1 S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  FADDX1 S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  FADDX1 S2_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\SUMB[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  FADDX1 S2_5_7 ( .A(\ab[5][7] ), .B(\CARRYB[4][7] ), .CI(\SUMB[4][8] ), .CO(
        \CARRYB[5][7] ), .S(\SUMB[5][7] ) );
  FADDX1 S2_5_8 ( .A(\ab[5][8] ), .B(\CARRYB[4][8] ), .CI(\SUMB[4][9] ), .CO(
        \CARRYB[5][8] ), .S(\SUMB[5][8] ) );
  FADDX1 S2_5_9 ( .A(\ab[5][9] ), .B(\CARRYB[4][9] ), .CI(\SUMB[4][10] ), .CO(
        \CARRYB[5][9] ), .S(\SUMB[5][9] ) );
  FADDX1 S2_5_10 ( .A(\ab[5][10] ), .B(\CARRYB[4][10] ), .CI(\SUMB[4][11] ), 
        .CO(\CARRYB[5][10] ), .S(\SUMB[5][10] ) );
  FADDX1 S2_5_11 ( .A(\ab[5][11] ), .B(\CARRYB[4][11] ), .CI(\SUMB[4][12] ), 
        .CO(\CARRYB[5][11] ), .S(\SUMB[5][11] ) );
  FADDX1 S2_5_12 ( .A(\ab[5][12] ), .B(\CARRYB[4][12] ), .CI(\SUMB[4][13] ), 
        .CO(\CARRYB[5][12] ), .S(\SUMB[5][12] ) );
  FADDX1 S2_5_13 ( .A(\ab[5][13] ), .B(\CARRYB[4][13] ), .CI(\SUMB[4][14] ), 
        .CO(\CARRYB[5][13] ), .S(\SUMB[5][13] ) );
  FADDX1 S3_5_14 ( .A(\ab[5][14] ), .B(\CARRYB[4][14] ), .CI(\ab[4][15] ), 
        .CO(\CARRYB[5][14] ), .S(\SUMB[5][14] ) );
  FADDX1 S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  FADDX1 S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  FADDX1 S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  FADDX1 S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  FADDX1 S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  FADDX1 S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  FADDX1 S2_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\SUMB[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  FADDX1 S2_4_7 ( .A(\ab[4][7] ), .B(\CARRYB[3][7] ), .CI(\SUMB[3][8] ), .CO(
        \CARRYB[4][7] ), .S(\SUMB[4][7] ) );
  FADDX1 S2_4_8 ( .A(\ab[4][8] ), .B(\CARRYB[3][8] ), .CI(\SUMB[3][9] ), .CO(
        \CARRYB[4][8] ), .S(\SUMB[4][8] ) );
  FADDX1 S2_4_9 ( .A(\ab[4][9] ), .B(\CARRYB[3][9] ), .CI(\SUMB[3][10] ), .CO(
        \CARRYB[4][9] ), .S(\SUMB[4][9] ) );
  FADDX1 S2_4_10 ( .A(\ab[4][10] ), .B(\CARRYB[3][10] ), .CI(\SUMB[3][11] ), 
        .CO(\CARRYB[4][10] ), .S(\SUMB[4][10] ) );
  FADDX1 S2_4_11 ( .A(\ab[4][11] ), .B(\CARRYB[3][11] ), .CI(\SUMB[3][12] ), 
        .CO(\CARRYB[4][11] ), .S(\SUMB[4][11] ) );
  FADDX1 S2_4_12 ( .A(\ab[4][12] ), .B(\CARRYB[3][12] ), .CI(\SUMB[3][13] ), 
        .CO(\CARRYB[4][12] ), .S(\SUMB[4][12] ) );
  FADDX1 S2_4_13 ( .A(\ab[4][13] ), .B(\CARRYB[3][13] ), .CI(\SUMB[3][14] ), 
        .CO(\CARRYB[4][13] ), .S(\SUMB[4][13] ) );
  FADDX1 S3_4_14 ( .A(\ab[4][14] ), .B(\CARRYB[3][14] ), .CI(\ab[3][15] ), 
        .CO(\CARRYB[4][14] ), .S(\SUMB[4][14] ) );
  FADDX1 S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  FADDX1 S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  FADDX1 S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  FADDX1 S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  FADDX1 S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  FADDX1 S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  FADDX1 S2_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\SUMB[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  FADDX1 S2_3_7 ( .A(\ab[3][7] ), .B(\CARRYB[2][7] ), .CI(\SUMB[2][8] ), .CO(
        \CARRYB[3][7] ), .S(\SUMB[3][7] ) );
  FADDX1 S2_3_8 ( .A(\ab[3][8] ), .B(\CARRYB[2][8] ), .CI(\SUMB[2][9] ), .CO(
        \CARRYB[3][8] ), .S(\SUMB[3][8] ) );
  FADDX1 S2_3_9 ( .A(\ab[3][9] ), .B(\CARRYB[2][9] ), .CI(\SUMB[2][10] ), .CO(
        \CARRYB[3][9] ), .S(\SUMB[3][9] ) );
  FADDX1 S2_3_10 ( .A(\ab[3][10] ), .B(\CARRYB[2][10] ), .CI(\SUMB[2][11] ), 
        .CO(\CARRYB[3][10] ), .S(\SUMB[3][10] ) );
  FADDX1 S2_3_11 ( .A(\ab[3][11] ), .B(\CARRYB[2][11] ), .CI(\SUMB[2][12] ), 
        .CO(\CARRYB[3][11] ), .S(\SUMB[3][11] ) );
  FADDX1 S2_3_12 ( .A(\ab[3][12] ), .B(\CARRYB[2][12] ), .CI(\SUMB[2][13] ), 
        .CO(\CARRYB[3][12] ), .S(\SUMB[3][12] ) );
  FADDX1 S2_3_13 ( .A(\ab[3][13] ), .B(\CARRYB[2][13] ), .CI(\SUMB[2][14] ), 
        .CO(\CARRYB[3][13] ), .S(\SUMB[3][13] ) );
  FADDX1 S3_3_14 ( .A(\ab[3][14] ), .B(\CARRYB[2][14] ), .CI(\ab[2][15] ), 
        .CO(\CARRYB[3][14] ), .S(\SUMB[3][14] ) );
  FADDX1 S1_2_0 ( .A(\ab[2][0] ), .B(\CARRYB[1][0] ), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  FADDX1 S2_2_1 ( .A(\ab[2][1] ), .B(n19), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  FADDX1 S2_2_2 ( .A(\ab[2][2] ), .B(n18), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  FADDX1 S2_2_3 ( .A(\ab[2][3] ), .B(n17), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  FADDX1 S2_2_4 ( .A(\ab[2][4] ), .B(n16), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  FADDX1 S2_2_5 ( .A(\ab[2][5] ), .B(n15), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  FADDX1 S2_2_6 ( .A(\ab[2][6] ), .B(n14), .CI(\SUMB[1][7] ), .CO(
        \CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  FADDX1 S2_2_7 ( .A(\ab[2][7] ), .B(n13), .CI(\SUMB[1][8] ), .CO(
        \CARRYB[2][7] ), .S(\SUMB[2][7] ) );
  FADDX1 S2_2_8 ( .A(\ab[2][8] ), .B(n12), .CI(\SUMB[1][9] ), .CO(
        \CARRYB[2][8] ), .S(\SUMB[2][8] ) );
  FADDX1 S2_2_9 ( .A(\ab[2][9] ), .B(n11), .CI(\SUMB[1][10] ), .CO(
        \CARRYB[2][9] ), .S(\SUMB[2][9] ) );
  FADDX1 S2_2_10 ( .A(\ab[2][10] ), .B(n10), .CI(\SUMB[1][11] ), .CO(
        \CARRYB[2][10] ), .S(\SUMB[2][10] ) );
  FADDX1 S2_2_11 ( .A(\ab[2][11] ), .B(n9), .CI(\SUMB[1][12] ), .CO(
        \CARRYB[2][11] ), .S(\SUMB[2][11] ) );
  FADDX1 S2_2_12 ( .A(\ab[2][12] ), .B(n8), .CI(\SUMB[1][13] ), .CO(
        \CARRYB[2][12] ), .S(\SUMB[2][12] ) );
  FADDX1 S2_2_13 ( .A(\ab[2][13] ), .B(n7), .CI(\SUMB[1][14] ), .CO(
        \CARRYB[2][13] ), .S(\SUMB[2][13] ) );
  FADDX1 S3_2_14 ( .A(\ab[2][14] ), .B(n6), .CI(\ab[1][15] ), .CO(
        \CARRYB[2][14] ), .S(\SUMB[2][14] ) );
  findMyBest_DW01_add_3 FS_1 ( .A({1'b0, \A1[28] , \A1[27] , \A1[26] , 
        \A1[25] , \A1[24] , \A1[23] , \A1[22] , \A1[21] , \A1[20] , \A1[19] , 
        \A1[18] , \A1[17] , \A1[16] , \A1[15] , \A1[14] , \SUMB[15][0] , 
        \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , 
        \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({n4, n5, n3, 
        n20, n30, n29, n23, n22, n21, n28, n27, n25, n24, n26, n31, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, PRODUCT[28:13], 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13}) );
  AND2X1 U2 ( .IN1(\CARRYB[15][12] ), .IN2(\SUMB[15][13] ), .Q(n3) );
  AND2X1 U3 ( .IN1(\CARRYB[15][14] ), .IN2(\ab[15][15] ), .Q(n4) );
  AND2X1 U4 ( .IN1(\CARRYB[15][13] ), .IN2(\SUMB[15][14] ), .Q(n5) );
  AND2X1 U5 ( .IN1(\ab[0][15] ), .IN2(\ab[1][14] ), .Q(n6) );
  AND2X1 U6 ( .IN1(\ab[0][14] ), .IN2(\ab[1][13] ), .Q(n7) );
  AND2X1 U7 ( .IN1(\ab[0][13] ), .IN2(\ab[1][12] ), .Q(n8) );
  AND2X1 U8 ( .IN1(\ab[0][12] ), .IN2(\ab[1][11] ), .Q(n9) );
  AND2X1 U9 ( .IN1(\ab[0][11] ), .IN2(\ab[1][10] ), .Q(n10) );
  AND2X1 U10 ( .IN1(\ab[0][10] ), .IN2(\ab[1][9] ), .Q(n11) );
  AND2X1 U11 ( .IN1(\ab[0][9] ), .IN2(\ab[1][8] ), .Q(n12) );
  AND2X1 U12 ( .IN1(\ab[0][8] ), .IN2(\ab[1][7] ), .Q(n13) );
  AND2X1 U13 ( .IN1(\ab[0][7] ), .IN2(\ab[1][6] ), .Q(n14) );
  AND2X1 U14 ( .IN1(\ab[0][6] ), .IN2(\ab[1][5] ), .Q(n15) );
  AND2X1 U15 ( .IN1(\ab[0][5] ), .IN2(\ab[1][4] ), .Q(n16) );
  AND2X1 U16 ( .IN1(\ab[0][4] ), .IN2(\ab[1][3] ), .Q(n17) );
  AND2X1 U17 ( .IN1(\ab[0][3] ), .IN2(\ab[1][2] ), .Q(n18) );
  AND2X1 U18 ( .IN1(\ab[0][2] ), .IN2(\ab[1][1] ), .Q(n19) );
  AND2X1 U19 ( .IN1(\CARRYB[15][11] ), .IN2(\SUMB[15][12] ), .Q(n20) );
  AND2X1 U20 ( .IN1(\CARRYB[15][6] ), .IN2(\SUMB[15][7] ), .Q(n21) );
  AND2X1 U21 ( .IN1(\CARRYB[15][7] ), .IN2(\SUMB[15][8] ), .Q(n22) );
  AND2X1 U22 ( .IN1(\CARRYB[15][8] ), .IN2(\SUMB[15][9] ), .Q(n23) );
  AND2X1 U23 ( .IN1(\CARRYB[15][2] ), .IN2(\SUMB[15][3] ), .Q(n24) );
  AND2X1 U24 ( .IN1(\CARRYB[15][3] ), .IN2(\SUMB[15][4] ), .Q(n25) );
  AND2X1 U25 ( .IN1(\CARRYB[15][1] ), .IN2(\SUMB[15][2] ), .Q(n26) );
  AND2X1 U26 ( .IN1(\CARRYB[15][4] ), .IN2(\SUMB[15][5] ), .Q(n27) );
  AND2X1 U27 ( .IN1(\CARRYB[15][5] ), .IN2(\SUMB[15][6] ), .Q(n28) );
  AND2X1 U28 ( .IN1(\CARRYB[15][9] ), .IN2(\SUMB[15][10] ), .Q(n29) );
  AND2X1 U29 ( .IN1(\CARRYB[15][10] ), .IN2(\SUMB[15][11] ), .Q(n30) );
  AND2X1 U30 ( .IN1(\CARRYB[15][0] ), .IN2(\SUMB[15][1] ), .Q(n31) );
  INVX0 U31 ( .INP(B[6]), .ZN(n46) );
  INVX0 U32 ( .INP(B[3]), .ZN(n43) );
  INVX0 U33 ( .INP(B[4]), .ZN(n44) );
  INVX0 U34 ( .INP(B[2]), .ZN(n42) );
  INVX0 U35 ( .INP(B[7]), .ZN(n47) );
  INVX0 U36 ( .INP(B[5]), .ZN(n45) );
  INVX0 U37 ( .INP(B[8]), .ZN(n48) );
  INVX0 U38 ( .INP(B[9]), .ZN(n49) );
  INVX0 U39 ( .INP(B[10]), .ZN(n50) );
  INVX0 U40 ( .INP(B[11]), .ZN(n51) );
  INVX0 U41 ( .INP(B[12]), .ZN(n52) );
  INVX0 U42 ( .INP(B[13]), .ZN(n53) );
  INVX0 U43 ( .INP(B[14]), .ZN(n54) );
  INVX0 U44 ( .INP(B[15]), .ZN(n55) );
  INVX0 U45 ( .INP(B[1]), .ZN(n41) );
  INVX0 U46 ( .INP(A[7]), .ZN(n32) );
  INVX0 U47 ( .INP(A[8]), .ZN(n33) );
  INVX0 U48 ( .INP(A[9]), .ZN(n34) );
  INVX0 U49 ( .INP(A[10]), .ZN(n35) );
  INVX0 U50 ( .INP(A[11]), .ZN(n36) );
  INVX0 U51 ( .INP(A[12]), .ZN(n37) );
  INVX0 U52 ( .INP(A[13]), .ZN(n38) );
  INVX0 U53 ( .INP(A[15]), .ZN(n39) );
  INVX0 U54 ( .INP(B[0]), .ZN(n40) );
  INVX0 U55 ( .INP(A[6]), .ZN(n62) );
  INVX0 U56 ( .INP(A[3]), .ZN(n59) );
  INVX0 U57 ( .INP(A[5]), .ZN(n61) );
  INVX0 U58 ( .INP(A[2]), .ZN(n58) );
  INVX0 U59 ( .INP(A[4]), .ZN(n60) );
  INVX0 U60 ( .INP(A[1]), .ZN(n57) );
  INVX0 U61 ( .INP(A[0]), .ZN(n56) );
  INVX0 U62 ( .INP(A[14]), .ZN(n63) );
  XOR2X1 U63 ( .IN1(\CARRYB[15][0] ), .IN2(\SUMB[15][1] ), .Q(\A1[14] ) );
  XOR2X1 U64 ( .IN1(\CARRYB[15][1] ), .IN2(\SUMB[15][2] ), .Q(\A1[15] ) );
  XOR2X1 U65 ( .IN1(\CARRYB[15][2] ), .IN2(\SUMB[15][3] ), .Q(\A1[16] ) );
  XOR2X1 U66 ( .IN1(\CARRYB[15][3] ), .IN2(\SUMB[15][4] ), .Q(\A1[17] ) );
  XOR2X1 U67 ( .IN1(\CARRYB[15][4] ), .IN2(\SUMB[15][5] ), .Q(\A1[18] ) );
  XOR2X1 U68 ( .IN1(\CARRYB[15][5] ), .IN2(\SUMB[15][6] ), .Q(\A1[19] ) );
  XOR2X1 U69 ( .IN1(\CARRYB[15][6] ), .IN2(\SUMB[15][7] ), .Q(\A1[20] ) );
  XOR2X1 U70 ( .IN1(\CARRYB[15][7] ), .IN2(\SUMB[15][8] ), .Q(\A1[21] ) );
  XOR2X1 U71 ( .IN1(\CARRYB[15][8] ), .IN2(\SUMB[15][9] ), .Q(\A1[22] ) );
  XOR2X1 U72 ( .IN1(\CARRYB[15][9] ), .IN2(\SUMB[15][10] ), .Q(\A1[23] ) );
  XOR2X1 U73 ( .IN1(\CARRYB[15][10] ), .IN2(\SUMB[15][11] ), .Q(\A1[24] ) );
  XOR2X1 U74 ( .IN1(\CARRYB[15][11] ), .IN2(\SUMB[15][12] ), .Q(\A1[25] ) );
  XOR2X1 U75 ( .IN1(\CARRYB[15][12] ), .IN2(\SUMB[15][13] ), .Q(\A1[26] ) );
  XOR2X1 U76 ( .IN1(\CARRYB[15][13] ), .IN2(\SUMB[15][14] ), .Q(\A1[27] ) );
  XOR2X1 U77 ( .IN1(\CARRYB[15][14] ), .IN2(\ab[15][15] ), .Q(\A1[28] ) );
  XOR2X1 U78 ( .IN1(\ab[1][1] ), .IN2(\ab[0][2] ), .Q(\SUMB[1][1] ) );
  XOR2X1 U79 ( .IN1(\ab[1][2] ), .IN2(\ab[0][3] ), .Q(\SUMB[1][2] ) );
  XOR2X1 U80 ( .IN1(\ab[1][3] ), .IN2(\ab[0][4] ), .Q(\SUMB[1][3] ) );
  XOR2X1 U81 ( .IN1(\ab[1][4] ), .IN2(\ab[0][5] ), .Q(\SUMB[1][4] ) );
  XOR2X1 U82 ( .IN1(\ab[1][5] ), .IN2(\ab[0][6] ), .Q(\SUMB[1][5] ) );
  XOR2X1 U83 ( .IN1(\ab[1][6] ), .IN2(\ab[0][7] ), .Q(\SUMB[1][6] ) );
  XOR2X1 U84 ( .IN1(\ab[1][7] ), .IN2(\ab[0][8] ), .Q(\SUMB[1][7] ) );
  XOR2X1 U85 ( .IN1(\ab[1][8] ), .IN2(\ab[0][9] ), .Q(\SUMB[1][8] ) );
  XOR2X1 U86 ( .IN1(\ab[1][9] ), .IN2(\ab[0][10] ), .Q(\SUMB[1][9] ) );
  XOR2X1 U87 ( .IN1(\ab[1][10] ), .IN2(\ab[0][11] ), .Q(\SUMB[1][10] ) );
  XOR2X1 U88 ( .IN1(\ab[1][11] ), .IN2(\ab[0][12] ), .Q(\SUMB[1][11] ) );
  XOR2X1 U89 ( .IN1(\ab[1][12] ), .IN2(\ab[0][13] ), .Q(\SUMB[1][12] ) );
  XOR2X1 U90 ( .IN1(\ab[1][13] ), .IN2(\ab[0][14] ), .Q(\SUMB[1][13] ) );
  XOR2X1 U91 ( .IN1(\ab[1][14] ), .IN2(\ab[0][15] ), .Q(\SUMB[1][14] ) );
  NOR2X0 U93 ( .IN1(n34), .IN2(n49), .QN(\ab[9][9] ) );
  NOR2X0 U94 ( .IN1(n34), .IN2(n48), .QN(\ab[9][8] ) );
  NOR2X0 U95 ( .IN1(n34), .IN2(n47), .QN(\ab[9][7] ) );
  NOR2X0 U96 ( .IN1(n34), .IN2(n46), .QN(\ab[9][6] ) );
  NOR2X0 U97 ( .IN1(n34), .IN2(n45), .QN(\ab[9][5] ) );
  NOR2X0 U98 ( .IN1(n34), .IN2(n44), .QN(\ab[9][4] ) );
  NOR2X0 U99 ( .IN1(n34), .IN2(n43), .QN(\ab[9][3] ) );
  NOR2X0 U100 ( .IN1(n34), .IN2(n42), .QN(\ab[9][2] ) );
  NOR2X0 U101 ( .IN1(n34), .IN2(n41), .QN(\ab[9][1] ) );
  NOR2X0 U102 ( .IN1(n34), .IN2(n55), .QN(\ab[9][15] ) );
  NOR2X0 U103 ( .IN1(n34), .IN2(n54), .QN(\ab[9][14] ) );
  NOR2X0 U104 ( .IN1(n34), .IN2(n53), .QN(\ab[9][13] ) );
  NOR2X0 U105 ( .IN1(n34), .IN2(n52), .QN(\ab[9][12] ) );
  NOR2X0 U106 ( .IN1(n34), .IN2(n51), .QN(\ab[9][11] ) );
  NOR2X0 U107 ( .IN1(n34), .IN2(n50), .QN(\ab[9][10] ) );
  NOR2X0 U108 ( .IN1(n34), .IN2(n40), .QN(\ab[9][0] ) );
  NOR2X0 U109 ( .IN1(n49), .IN2(n33), .QN(\ab[8][9] ) );
  NOR2X0 U110 ( .IN1(n48), .IN2(n33), .QN(\ab[8][8] ) );
  NOR2X0 U111 ( .IN1(n47), .IN2(n33), .QN(\ab[8][7] ) );
  NOR2X0 U112 ( .IN1(n46), .IN2(n33), .QN(\ab[8][6] ) );
  NOR2X0 U113 ( .IN1(n45), .IN2(n33), .QN(\ab[8][5] ) );
  NOR2X0 U114 ( .IN1(n44), .IN2(n33), .QN(\ab[8][4] ) );
  NOR2X0 U115 ( .IN1(n43), .IN2(n33), .QN(\ab[8][3] ) );
  NOR2X0 U116 ( .IN1(n42), .IN2(n33), .QN(\ab[8][2] ) );
  NOR2X0 U117 ( .IN1(n41), .IN2(n33), .QN(\ab[8][1] ) );
  NOR2X0 U118 ( .IN1(n55), .IN2(n33), .QN(\ab[8][15] ) );
  NOR2X0 U119 ( .IN1(n54), .IN2(n33), .QN(\ab[8][14] ) );
  NOR2X0 U120 ( .IN1(n53), .IN2(n33), .QN(\ab[8][13] ) );
  NOR2X0 U121 ( .IN1(n52), .IN2(n33), .QN(\ab[8][12] ) );
  NOR2X0 U122 ( .IN1(n51), .IN2(n33), .QN(\ab[8][11] ) );
  NOR2X0 U123 ( .IN1(n50), .IN2(n33), .QN(\ab[8][10] ) );
  NOR2X0 U124 ( .IN1(n40), .IN2(n33), .QN(\ab[8][0] ) );
  NOR2X0 U125 ( .IN1(n49), .IN2(n32), .QN(\ab[7][9] ) );
  NOR2X0 U126 ( .IN1(n48), .IN2(n32), .QN(\ab[7][8] ) );
  NOR2X0 U127 ( .IN1(n47), .IN2(n32), .QN(\ab[7][7] ) );
  NOR2X0 U128 ( .IN1(n46), .IN2(n32), .QN(\ab[7][6] ) );
  NOR2X0 U129 ( .IN1(n45), .IN2(n32), .QN(\ab[7][5] ) );
  NOR2X0 U130 ( .IN1(n44), .IN2(n32), .QN(\ab[7][4] ) );
  NOR2X0 U131 ( .IN1(n43), .IN2(n32), .QN(\ab[7][3] ) );
  NOR2X0 U132 ( .IN1(n42), .IN2(n32), .QN(\ab[7][2] ) );
  NOR2X0 U133 ( .IN1(n41), .IN2(n32), .QN(\ab[7][1] ) );
  NOR2X0 U134 ( .IN1(n55), .IN2(n32), .QN(\ab[7][15] ) );
  NOR2X0 U135 ( .IN1(n54), .IN2(n32), .QN(\ab[7][14] ) );
  NOR2X0 U136 ( .IN1(n53), .IN2(n32), .QN(\ab[7][13] ) );
  NOR2X0 U137 ( .IN1(n52), .IN2(n32), .QN(\ab[7][12] ) );
  NOR2X0 U138 ( .IN1(n51), .IN2(n32), .QN(\ab[7][11] ) );
  NOR2X0 U139 ( .IN1(n50), .IN2(n32), .QN(\ab[7][10] ) );
  NOR2X0 U140 ( .IN1(n40), .IN2(n32), .QN(\ab[7][0] ) );
  NOR2X0 U141 ( .IN1(n49), .IN2(n62), .QN(\ab[6][9] ) );
  NOR2X0 U142 ( .IN1(n48), .IN2(n62), .QN(\ab[6][8] ) );
  NOR2X0 U143 ( .IN1(n47), .IN2(n62), .QN(\ab[6][7] ) );
  NOR2X0 U144 ( .IN1(n46), .IN2(n62), .QN(\ab[6][6] ) );
  NOR2X0 U145 ( .IN1(n45), .IN2(n62), .QN(\ab[6][5] ) );
  NOR2X0 U146 ( .IN1(n44), .IN2(n62), .QN(\ab[6][4] ) );
  NOR2X0 U147 ( .IN1(n43), .IN2(n62), .QN(\ab[6][3] ) );
  NOR2X0 U148 ( .IN1(n42), .IN2(n62), .QN(\ab[6][2] ) );
  NOR2X0 U149 ( .IN1(n41), .IN2(n62), .QN(\ab[6][1] ) );
  NOR2X0 U150 ( .IN1(n55), .IN2(n62), .QN(\ab[6][15] ) );
  NOR2X0 U151 ( .IN1(n54), .IN2(n62), .QN(\ab[6][14] ) );
  NOR2X0 U152 ( .IN1(n53), .IN2(n62), .QN(\ab[6][13] ) );
  NOR2X0 U153 ( .IN1(n52), .IN2(n62), .QN(\ab[6][12] ) );
  NOR2X0 U154 ( .IN1(n51), .IN2(n62), .QN(\ab[6][11] ) );
  NOR2X0 U155 ( .IN1(n50), .IN2(n62), .QN(\ab[6][10] ) );
  NOR2X0 U156 ( .IN1(n40), .IN2(n62), .QN(\ab[6][0] ) );
  NOR2X0 U157 ( .IN1(n49), .IN2(n61), .QN(\ab[5][9] ) );
  NOR2X0 U158 ( .IN1(n48), .IN2(n61), .QN(\ab[5][8] ) );
  NOR2X0 U159 ( .IN1(n47), .IN2(n61), .QN(\ab[5][7] ) );
  NOR2X0 U160 ( .IN1(n46), .IN2(n61), .QN(\ab[5][6] ) );
  NOR2X0 U161 ( .IN1(n45), .IN2(n61), .QN(\ab[5][5] ) );
  NOR2X0 U162 ( .IN1(n44), .IN2(n61), .QN(\ab[5][4] ) );
  NOR2X0 U163 ( .IN1(n43), .IN2(n61), .QN(\ab[5][3] ) );
  NOR2X0 U164 ( .IN1(n42), .IN2(n61), .QN(\ab[5][2] ) );
  NOR2X0 U165 ( .IN1(n41), .IN2(n61), .QN(\ab[5][1] ) );
  NOR2X0 U166 ( .IN1(n55), .IN2(n61), .QN(\ab[5][15] ) );
  NOR2X0 U167 ( .IN1(n54), .IN2(n61), .QN(\ab[5][14] ) );
  NOR2X0 U168 ( .IN1(n53), .IN2(n61), .QN(\ab[5][13] ) );
  NOR2X0 U169 ( .IN1(n52), .IN2(n61), .QN(\ab[5][12] ) );
  NOR2X0 U170 ( .IN1(n51), .IN2(n61), .QN(\ab[5][11] ) );
  NOR2X0 U171 ( .IN1(n50), .IN2(n61), .QN(\ab[5][10] ) );
  NOR2X0 U172 ( .IN1(n40), .IN2(n61), .QN(\ab[5][0] ) );
  NOR2X0 U173 ( .IN1(n49), .IN2(n60), .QN(\ab[4][9] ) );
  NOR2X0 U174 ( .IN1(n48), .IN2(n60), .QN(\ab[4][8] ) );
  NOR2X0 U175 ( .IN1(n47), .IN2(n60), .QN(\ab[4][7] ) );
  NOR2X0 U176 ( .IN1(n46), .IN2(n60), .QN(\ab[4][6] ) );
  NOR2X0 U177 ( .IN1(n45), .IN2(n60), .QN(\ab[4][5] ) );
  NOR2X0 U178 ( .IN1(n44), .IN2(n60), .QN(\ab[4][4] ) );
  NOR2X0 U179 ( .IN1(n43), .IN2(n60), .QN(\ab[4][3] ) );
  NOR2X0 U180 ( .IN1(n42), .IN2(n60), .QN(\ab[4][2] ) );
  NOR2X0 U181 ( .IN1(n41), .IN2(n60), .QN(\ab[4][1] ) );
  NOR2X0 U182 ( .IN1(n55), .IN2(n60), .QN(\ab[4][15] ) );
  NOR2X0 U183 ( .IN1(n54), .IN2(n60), .QN(\ab[4][14] ) );
  NOR2X0 U184 ( .IN1(n53), .IN2(n60), .QN(\ab[4][13] ) );
  NOR2X0 U185 ( .IN1(n52), .IN2(n60), .QN(\ab[4][12] ) );
  NOR2X0 U186 ( .IN1(n51), .IN2(n60), .QN(\ab[4][11] ) );
  NOR2X0 U187 ( .IN1(n50), .IN2(n60), .QN(\ab[4][10] ) );
  NOR2X0 U188 ( .IN1(n40), .IN2(n60), .QN(\ab[4][0] ) );
  NOR2X0 U189 ( .IN1(n49), .IN2(n59), .QN(\ab[3][9] ) );
  NOR2X0 U190 ( .IN1(n48), .IN2(n59), .QN(\ab[3][8] ) );
  NOR2X0 U191 ( .IN1(n47), .IN2(n59), .QN(\ab[3][7] ) );
  NOR2X0 U192 ( .IN1(n46), .IN2(n59), .QN(\ab[3][6] ) );
  NOR2X0 U193 ( .IN1(n45), .IN2(n59), .QN(\ab[3][5] ) );
  NOR2X0 U194 ( .IN1(n44), .IN2(n59), .QN(\ab[3][4] ) );
  NOR2X0 U195 ( .IN1(n43), .IN2(n59), .QN(\ab[3][3] ) );
  NOR2X0 U196 ( .IN1(n42), .IN2(n59), .QN(\ab[3][2] ) );
  NOR2X0 U197 ( .IN1(n41), .IN2(n59), .QN(\ab[3][1] ) );
  NOR2X0 U198 ( .IN1(n55), .IN2(n59), .QN(\ab[3][15] ) );
  NOR2X0 U199 ( .IN1(n54), .IN2(n59), .QN(\ab[3][14] ) );
  NOR2X0 U200 ( .IN1(n53), .IN2(n59), .QN(\ab[3][13] ) );
  NOR2X0 U201 ( .IN1(n52), .IN2(n59), .QN(\ab[3][12] ) );
  NOR2X0 U202 ( .IN1(n51), .IN2(n59), .QN(\ab[3][11] ) );
  NOR2X0 U203 ( .IN1(n50), .IN2(n59), .QN(\ab[3][10] ) );
  NOR2X0 U204 ( .IN1(n40), .IN2(n59), .QN(\ab[3][0] ) );
  NOR2X0 U205 ( .IN1(n49), .IN2(n58), .QN(\ab[2][9] ) );
  NOR2X0 U206 ( .IN1(n48), .IN2(n58), .QN(\ab[2][8] ) );
  NOR2X0 U207 ( .IN1(n47), .IN2(n58), .QN(\ab[2][7] ) );
  NOR2X0 U208 ( .IN1(n46), .IN2(n58), .QN(\ab[2][6] ) );
  NOR2X0 U209 ( .IN1(n45), .IN2(n58), .QN(\ab[2][5] ) );
  NOR2X0 U210 ( .IN1(n44), .IN2(n58), .QN(\ab[2][4] ) );
  NOR2X0 U211 ( .IN1(n43), .IN2(n58), .QN(\ab[2][3] ) );
  NOR2X0 U212 ( .IN1(n42), .IN2(n58), .QN(\ab[2][2] ) );
  NOR2X0 U213 ( .IN1(n41), .IN2(n58), .QN(\ab[2][1] ) );
  NOR2X0 U214 ( .IN1(n55), .IN2(n58), .QN(\ab[2][15] ) );
  NOR2X0 U215 ( .IN1(n54), .IN2(n58), .QN(\ab[2][14] ) );
  NOR2X0 U216 ( .IN1(n53), .IN2(n58), .QN(\ab[2][13] ) );
  NOR2X0 U217 ( .IN1(n52), .IN2(n58), .QN(\ab[2][12] ) );
  NOR2X0 U218 ( .IN1(n51), .IN2(n58), .QN(\ab[2][11] ) );
  NOR2X0 U219 ( .IN1(n50), .IN2(n58), .QN(\ab[2][10] ) );
  NOR2X0 U220 ( .IN1(n40), .IN2(n58), .QN(\ab[2][0] ) );
  NOR2X0 U221 ( .IN1(n49), .IN2(n57), .QN(\ab[1][9] ) );
  NOR2X0 U222 ( .IN1(n48), .IN2(n57), .QN(\ab[1][8] ) );
  NOR2X0 U223 ( .IN1(n47), .IN2(n57), .QN(\ab[1][7] ) );
  NOR2X0 U224 ( .IN1(n46), .IN2(n57), .QN(\ab[1][6] ) );
  NOR2X0 U225 ( .IN1(n45), .IN2(n57), .QN(\ab[1][5] ) );
  NOR2X0 U226 ( .IN1(n44), .IN2(n57), .QN(\ab[1][4] ) );
  NOR2X0 U227 ( .IN1(n43), .IN2(n57), .QN(\ab[1][3] ) );
  NOR2X0 U228 ( .IN1(n42), .IN2(n57), .QN(\ab[1][2] ) );
  NOR2X0 U229 ( .IN1(n55), .IN2(n57), .QN(\ab[1][15] ) );
  NOR2X0 U230 ( .IN1(n54), .IN2(n57), .QN(\ab[1][14] ) );
  NOR2X0 U231 ( .IN1(n53), .IN2(n57), .QN(\ab[1][13] ) );
  NOR2X0 U232 ( .IN1(n52), .IN2(n57), .QN(\ab[1][12] ) );
  NOR2X0 U233 ( .IN1(n51), .IN2(n57), .QN(\ab[1][11] ) );
  NOR2X0 U234 ( .IN1(n50), .IN2(n57), .QN(\ab[1][10] ) );
  NOR2X0 U235 ( .IN1(n49), .IN2(n39), .QN(\ab[15][9] ) );
  NOR2X0 U236 ( .IN1(n48), .IN2(n39), .QN(\ab[15][8] ) );
  NOR2X0 U237 ( .IN1(n47), .IN2(n39), .QN(\ab[15][7] ) );
  NOR2X0 U238 ( .IN1(n46), .IN2(n39), .QN(\ab[15][6] ) );
  NOR2X0 U239 ( .IN1(n45), .IN2(n39), .QN(\ab[15][5] ) );
  NOR2X0 U240 ( .IN1(n44), .IN2(n39), .QN(\ab[15][4] ) );
  NOR2X0 U241 ( .IN1(n43), .IN2(n39), .QN(\ab[15][3] ) );
  NOR2X0 U242 ( .IN1(n42), .IN2(n39), .QN(\ab[15][2] ) );
  NOR2X0 U243 ( .IN1(n41), .IN2(n39), .QN(\ab[15][1] ) );
  NOR2X0 U244 ( .IN1(n55), .IN2(n39), .QN(\ab[15][15] ) );
  NOR2X0 U245 ( .IN1(n54), .IN2(n39), .QN(\ab[15][14] ) );
  NOR2X0 U246 ( .IN1(n53), .IN2(n39), .QN(\ab[15][13] ) );
  NOR2X0 U247 ( .IN1(n52), .IN2(n39), .QN(\ab[15][12] ) );
  NOR2X0 U248 ( .IN1(n51), .IN2(n39), .QN(\ab[15][11] ) );
  NOR2X0 U249 ( .IN1(n50), .IN2(n39), .QN(\ab[15][10] ) );
  NOR2X0 U250 ( .IN1(n40), .IN2(n39), .QN(\ab[15][0] ) );
  NOR2X0 U251 ( .IN1(n49), .IN2(n63), .QN(\ab[14][9] ) );
  NOR2X0 U252 ( .IN1(n48), .IN2(n63), .QN(\ab[14][8] ) );
  NOR2X0 U253 ( .IN1(n47), .IN2(n63), .QN(\ab[14][7] ) );
  NOR2X0 U254 ( .IN1(n46), .IN2(n63), .QN(\ab[14][6] ) );
  NOR2X0 U255 ( .IN1(n45), .IN2(n63), .QN(\ab[14][5] ) );
  NOR2X0 U256 ( .IN1(n44), .IN2(n63), .QN(\ab[14][4] ) );
  NOR2X0 U257 ( .IN1(n43), .IN2(n63), .QN(\ab[14][3] ) );
  NOR2X0 U258 ( .IN1(n42), .IN2(n63), .QN(\ab[14][2] ) );
  NOR2X0 U259 ( .IN1(n41), .IN2(n63), .QN(\ab[14][1] ) );
  NOR2X0 U260 ( .IN1(n55), .IN2(n63), .QN(\ab[14][15] ) );
  NOR2X0 U261 ( .IN1(n54), .IN2(n63), .QN(\ab[14][14] ) );
  NOR2X0 U262 ( .IN1(n53), .IN2(n63), .QN(\ab[14][13] ) );
  NOR2X0 U263 ( .IN1(n52), .IN2(n63), .QN(\ab[14][12] ) );
  NOR2X0 U264 ( .IN1(n51), .IN2(n63), .QN(\ab[14][11] ) );
  NOR2X0 U265 ( .IN1(n50), .IN2(n63), .QN(\ab[14][10] ) );
  NOR2X0 U266 ( .IN1(n40), .IN2(n63), .QN(\ab[14][0] ) );
  NOR2X0 U267 ( .IN1(n49), .IN2(n38), .QN(\ab[13][9] ) );
  NOR2X0 U268 ( .IN1(n48), .IN2(n38), .QN(\ab[13][8] ) );
  NOR2X0 U269 ( .IN1(n47), .IN2(n38), .QN(\ab[13][7] ) );
  NOR2X0 U270 ( .IN1(n46), .IN2(n38), .QN(\ab[13][6] ) );
  NOR2X0 U271 ( .IN1(n45), .IN2(n38), .QN(\ab[13][5] ) );
  NOR2X0 U272 ( .IN1(n44), .IN2(n38), .QN(\ab[13][4] ) );
  NOR2X0 U273 ( .IN1(n43), .IN2(n38), .QN(\ab[13][3] ) );
  NOR2X0 U274 ( .IN1(n42), .IN2(n38), .QN(\ab[13][2] ) );
  NOR2X0 U275 ( .IN1(n41), .IN2(n38), .QN(\ab[13][1] ) );
  NOR2X0 U276 ( .IN1(n55), .IN2(n38), .QN(\ab[13][15] ) );
  NOR2X0 U277 ( .IN1(n54), .IN2(n38), .QN(\ab[13][14] ) );
  NOR2X0 U278 ( .IN1(n53), .IN2(n38), .QN(\ab[13][13] ) );
  NOR2X0 U279 ( .IN1(n52), .IN2(n38), .QN(\ab[13][12] ) );
  NOR2X0 U280 ( .IN1(n51), .IN2(n38), .QN(\ab[13][11] ) );
  NOR2X0 U281 ( .IN1(n50), .IN2(n38), .QN(\ab[13][10] ) );
  NOR2X0 U282 ( .IN1(n40), .IN2(n38), .QN(\ab[13][0] ) );
  NOR2X0 U283 ( .IN1(n49), .IN2(n37), .QN(\ab[12][9] ) );
  NOR2X0 U284 ( .IN1(n48), .IN2(n37), .QN(\ab[12][8] ) );
  NOR2X0 U285 ( .IN1(n47), .IN2(n37), .QN(\ab[12][7] ) );
  NOR2X0 U286 ( .IN1(n46), .IN2(n37), .QN(\ab[12][6] ) );
  NOR2X0 U287 ( .IN1(n45), .IN2(n37), .QN(\ab[12][5] ) );
  NOR2X0 U288 ( .IN1(n44), .IN2(n37), .QN(\ab[12][4] ) );
  NOR2X0 U289 ( .IN1(n43), .IN2(n37), .QN(\ab[12][3] ) );
  NOR2X0 U290 ( .IN1(n42), .IN2(n37), .QN(\ab[12][2] ) );
  NOR2X0 U291 ( .IN1(n41), .IN2(n37), .QN(\ab[12][1] ) );
  NOR2X0 U292 ( .IN1(n55), .IN2(n37), .QN(\ab[12][15] ) );
  NOR2X0 U293 ( .IN1(n54), .IN2(n37), .QN(\ab[12][14] ) );
  NOR2X0 U294 ( .IN1(n53), .IN2(n37), .QN(\ab[12][13] ) );
  NOR2X0 U295 ( .IN1(n52), .IN2(n37), .QN(\ab[12][12] ) );
  NOR2X0 U296 ( .IN1(n51), .IN2(n37), .QN(\ab[12][11] ) );
  NOR2X0 U297 ( .IN1(n50), .IN2(n37), .QN(\ab[12][10] ) );
  NOR2X0 U298 ( .IN1(n40), .IN2(n37), .QN(\ab[12][0] ) );
  NOR2X0 U299 ( .IN1(n49), .IN2(n36), .QN(\ab[11][9] ) );
  NOR2X0 U300 ( .IN1(n48), .IN2(n36), .QN(\ab[11][8] ) );
  NOR2X0 U301 ( .IN1(n47), .IN2(n36), .QN(\ab[11][7] ) );
  NOR2X0 U302 ( .IN1(n46), .IN2(n36), .QN(\ab[11][6] ) );
  NOR2X0 U303 ( .IN1(n45), .IN2(n36), .QN(\ab[11][5] ) );
  NOR2X0 U304 ( .IN1(n44), .IN2(n36), .QN(\ab[11][4] ) );
  NOR2X0 U305 ( .IN1(n43), .IN2(n36), .QN(\ab[11][3] ) );
  NOR2X0 U306 ( .IN1(n42), .IN2(n36), .QN(\ab[11][2] ) );
  NOR2X0 U307 ( .IN1(n41), .IN2(n36), .QN(\ab[11][1] ) );
  NOR2X0 U308 ( .IN1(n55), .IN2(n36), .QN(\ab[11][15] ) );
  NOR2X0 U309 ( .IN1(n54), .IN2(n36), .QN(\ab[11][14] ) );
  NOR2X0 U310 ( .IN1(n53), .IN2(n36), .QN(\ab[11][13] ) );
  NOR2X0 U311 ( .IN1(n52), .IN2(n36), .QN(\ab[11][12] ) );
  NOR2X0 U312 ( .IN1(n51), .IN2(n36), .QN(\ab[11][11] ) );
  NOR2X0 U313 ( .IN1(n50), .IN2(n36), .QN(\ab[11][10] ) );
  NOR2X0 U314 ( .IN1(n40), .IN2(n36), .QN(\ab[11][0] ) );
  NOR2X0 U315 ( .IN1(n49), .IN2(n35), .QN(\ab[10][9] ) );
  NOR2X0 U316 ( .IN1(n48), .IN2(n35), .QN(\ab[10][8] ) );
  NOR2X0 U317 ( .IN1(n47), .IN2(n35), .QN(\ab[10][7] ) );
  NOR2X0 U318 ( .IN1(n46), .IN2(n35), .QN(\ab[10][6] ) );
  NOR2X0 U319 ( .IN1(n45), .IN2(n35), .QN(\ab[10][5] ) );
  NOR2X0 U320 ( .IN1(n44), .IN2(n35), .QN(\ab[10][4] ) );
  NOR2X0 U321 ( .IN1(n43), .IN2(n35), .QN(\ab[10][3] ) );
  NOR2X0 U322 ( .IN1(n42), .IN2(n35), .QN(\ab[10][2] ) );
  NOR2X0 U323 ( .IN1(n41), .IN2(n35), .QN(\ab[10][1] ) );
  NOR2X0 U324 ( .IN1(n55), .IN2(n35), .QN(\ab[10][15] ) );
  NOR2X0 U325 ( .IN1(n54), .IN2(n35), .QN(\ab[10][14] ) );
  NOR2X0 U326 ( .IN1(n53), .IN2(n35), .QN(\ab[10][13] ) );
  NOR2X0 U327 ( .IN1(n52), .IN2(n35), .QN(\ab[10][12] ) );
  NOR2X0 U328 ( .IN1(n51), .IN2(n35), .QN(\ab[10][11] ) );
  NOR2X0 U329 ( .IN1(n50), .IN2(n35), .QN(\ab[10][10] ) );
  NOR2X0 U330 ( .IN1(n40), .IN2(n35), .QN(\ab[10][0] ) );
  NOR2X0 U331 ( .IN1(n49), .IN2(n56), .QN(\ab[0][9] ) );
  NOR2X0 U332 ( .IN1(n48), .IN2(n56), .QN(\ab[0][8] ) );
  NOR2X0 U333 ( .IN1(n47), .IN2(n56), .QN(\ab[0][7] ) );
  NOR2X0 U334 ( .IN1(n46), .IN2(n56), .QN(\ab[0][6] ) );
  NOR2X0 U335 ( .IN1(n45), .IN2(n56), .QN(\ab[0][5] ) );
  NOR2X0 U336 ( .IN1(n44), .IN2(n56), .QN(\ab[0][4] ) );
  NOR2X0 U337 ( .IN1(n43), .IN2(n56), .QN(\ab[0][3] ) );
  NOR2X0 U338 ( .IN1(n42), .IN2(n56), .QN(\ab[0][2] ) );
  NOR2X0 U339 ( .IN1(n55), .IN2(n56), .QN(\ab[0][15] ) );
  NOR2X0 U340 ( .IN1(n54), .IN2(n56), .QN(\ab[0][14] ) );
  NOR2X0 U341 ( .IN1(n53), .IN2(n56), .QN(\ab[0][13] ) );
  NOR2X0 U342 ( .IN1(n52), .IN2(n56), .QN(\ab[0][12] ) );
  NOR2X0 U343 ( .IN1(n51), .IN2(n56), .QN(\ab[0][11] ) );
  NOR2X0 U344 ( .IN1(n50), .IN2(n56), .QN(\ab[0][10] ) );
  AND3X1 U345 ( .IN1(\ab[1][1] ), .IN2(B[0]), .IN3(A[0]), .Q(\CARRYB[1][0] )
         );
  NOR2X0 U346 ( .IN1(n57), .IN2(n41), .QN(\ab[1][1] ) );
endmodule


module findMyBest_DW01_add_4 ( A, B, CI, SUM, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] SUM;
  input CI;
  output CO;
  wire   \A[2] , \A[1] , \A[0] , n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66;
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  INVX0 U2 ( .INP(n38), .ZN(n14) );
  AND2X1 U3 ( .IN1(A[3]), .IN2(B[3]), .Q(n1) );
  INVX0 U4 ( .INP(n52), .ZN(n5) );
  INVX0 U5 ( .INP(n43), .ZN(n3) );
  OAI21X1 U6 ( .IN1(n39), .IN2(n40), .IN3(n41), .QN(SUM[17]) );
  INVX0 U7 ( .INP(n47), .ZN(n4) );
  INVX0 U8 ( .INP(n39), .ZN(n15) );
  INVX0 U9 ( .INP(n23), .ZN(n10) );
  INVX0 U10 ( .INP(n19), .ZN(n9) );
  INVX0 U11 ( .INP(n65), .ZN(n8) );
  INVX0 U12 ( .INP(n56), .ZN(n6) );
  INVX0 U13 ( .INP(n35), .ZN(n13) );
  INVX0 U14 ( .INP(n31), .ZN(n12) );
  INVX0 U15 ( .INP(n27), .ZN(n11) );
  INVX0 U16 ( .INP(n59), .ZN(n7) );
  XOR2X1 U17 ( .IN1(A[3]), .IN2(B[3]), .Q(SUM[3]) );
  XNOR2X1 U18 ( .IN1(n16), .IN2(n17), .Q(SUM[9]) );
  NOR2X0 U19 ( .IN1(n9), .IN2(n18), .QN(n17) );
  XOR2X1 U20 ( .IN1(n20), .IN2(n21), .Q(SUM[8]) );
  NAND2X0 U21 ( .IN1(n10), .IN2(n22), .QN(n20) );
  XOR2X1 U22 ( .IN1(n24), .IN2(n25), .Q(SUM[7]) );
  NAND2X0 U23 ( .IN1(n11), .IN2(n26), .QN(n24) );
  XNOR2X1 U24 ( .IN1(n28), .IN2(n29), .Q(SUM[6]) );
  NOR2X0 U25 ( .IN1(n12), .IN2(n30), .QN(n29) );
  XNOR2X1 U26 ( .IN1(n32), .IN2(n33), .Q(SUM[5]) );
  NOR2X0 U27 ( .IN1(n13), .IN2(n34), .QN(n33) );
  XOR2X1 U28 ( .IN1(n1), .IN2(n36), .Q(SUM[4]) );
  NOR2X0 U29 ( .IN1(n37), .IN2(n38), .QN(n36) );
  XOR2X1 U30 ( .IN1(n42), .IN2(n40), .Q(SUM[16]) );
  OA21X1 U31 ( .IN1(n43), .IN2(n44), .IN3(n45), .Q(n40) );
  NAND2X0 U32 ( .IN1(n15), .IN2(n41), .QN(n42) );
  NAND2X0 U33 ( .IN1(B[16]), .IN2(A[16]), .QN(n41) );
  NOR2X0 U34 ( .IN1(B[16]), .IN2(A[16]), .QN(n39) );
  XOR2X1 U35 ( .IN1(n46), .IN2(n44), .Q(SUM[15]) );
  OA21X1 U36 ( .IN1(n47), .IN2(n48), .IN3(n49), .Q(n44) );
  NAND2X0 U37 ( .IN1(n3), .IN2(n45), .QN(n46) );
  NAND2X0 U38 ( .IN1(B[15]), .IN2(A[15]), .QN(n45) );
  NOR2X0 U39 ( .IN1(B[15]), .IN2(A[15]), .QN(n43) );
  XOR2X1 U40 ( .IN1(n50), .IN2(n48), .Q(SUM[14]) );
  OA21X1 U41 ( .IN1(n51), .IN2(n52), .IN3(n53), .Q(n48) );
  NAND2X0 U42 ( .IN1(n4), .IN2(n49), .QN(n50) );
  NAND2X0 U43 ( .IN1(B[14]), .IN2(A[14]), .QN(n49) );
  NOR2X0 U44 ( .IN1(B[14]), .IN2(A[14]), .QN(n47) );
  XOR2X1 U45 ( .IN1(n54), .IN2(n51), .Q(SUM[13]) );
  OA21X1 U46 ( .IN1(n55), .IN2(n56), .IN3(n57), .Q(n51) );
  NAND2X0 U47 ( .IN1(n5), .IN2(n53), .QN(n54) );
  NAND2X0 U48 ( .IN1(B[13]), .IN2(A[13]), .QN(n53) );
  NOR2X0 U49 ( .IN1(B[13]), .IN2(A[13]), .QN(n52) );
  XOR2X1 U50 ( .IN1(n58), .IN2(n55), .Q(SUM[12]) );
  OA21X1 U51 ( .IN1(n59), .IN2(n60), .IN3(n61), .Q(n55) );
  NAND2X0 U52 ( .IN1(n6), .IN2(n57), .QN(n58) );
  NAND2X0 U53 ( .IN1(B[12]), .IN2(A[12]), .QN(n57) );
  NOR2X0 U54 ( .IN1(B[12]), .IN2(A[12]), .QN(n56) );
  XOR2X1 U55 ( .IN1(n62), .IN2(n60), .Q(SUM[11]) );
  OA21X1 U56 ( .IN1(n63), .IN2(n64), .IN3(n65), .Q(n60) );
  NAND2X0 U57 ( .IN1(n7), .IN2(n61), .QN(n62) );
  NAND2X0 U58 ( .IN1(B[11]), .IN2(A[11]), .QN(n61) );
  NOR2X0 U59 ( .IN1(B[11]), .IN2(A[11]), .QN(n59) );
  XNOR2X1 U60 ( .IN1(n64), .IN2(n66), .Q(SUM[10]) );
  NOR2X0 U61 ( .IN1(n8), .IN2(n63), .QN(n66) );
  NOR2X0 U62 ( .IN1(B[10]), .IN2(A[10]), .QN(n63) );
  NAND2X0 U63 ( .IN1(B[10]), .IN2(A[10]), .QN(n65) );
  OA21X1 U64 ( .IN1(n18), .IN2(n16), .IN3(n19), .Q(n64) );
  NAND2X0 U65 ( .IN1(B[9]), .IN2(A[9]), .QN(n19) );
  OA21X1 U66 ( .IN1(n21), .IN2(n23), .IN3(n22), .Q(n16) );
  NAND2X0 U67 ( .IN1(B[8]), .IN2(A[8]), .QN(n22) );
  NOR2X0 U68 ( .IN1(B[8]), .IN2(A[8]), .QN(n23) );
  OA21X1 U69 ( .IN1(n27), .IN2(n25), .IN3(n26), .Q(n21) );
  NAND2X0 U70 ( .IN1(B[7]), .IN2(A[7]), .QN(n26) );
  OA21X1 U71 ( .IN1(n30), .IN2(n28), .IN3(n31), .Q(n25) );
  NAND2X0 U72 ( .IN1(B[6]), .IN2(A[6]), .QN(n31) );
  OA21X1 U73 ( .IN1(n32), .IN2(n34), .IN3(n35), .Q(n28) );
  NAND2X0 U74 ( .IN1(B[5]), .IN2(A[5]), .QN(n35) );
  NOR2X0 U75 ( .IN1(B[5]), .IN2(A[5]), .QN(n34) );
  AOI21X1 U76 ( .IN1(n14), .IN2(n1), .IN3(n37), .QN(n32) );
  AND2X1 U77 ( .IN1(B[4]), .IN2(A[4]), .Q(n37) );
  NOR2X0 U78 ( .IN1(B[4]), .IN2(A[4]), .QN(n38) );
  NOR2X0 U79 ( .IN1(B[6]), .IN2(A[6]), .QN(n30) );
  NOR2X0 U80 ( .IN1(B[7]), .IN2(A[7]), .QN(n27) );
  NOR2X0 U81 ( .IN1(B[9]), .IN2(A[9]), .QN(n18) );
endmodule


module findMyBest_DW02_mult_1 ( A, B, TC, PRODUCT );
  input [3:0] A;
  input [15:0] B;
  output [19:0] PRODUCT;
  input TC;
  wire   \ab[3][15] , \ab[3][14] , \ab[3][13] , \ab[3][12] , \ab[3][11] ,
         \ab[3][10] , \ab[3][9] , \ab[3][8] , \ab[3][7] , \ab[3][6] ,
         \ab[3][5] , \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] ,
         \ab[3][0] , \SUMB[3][13] , \SUMB[3][12] , \SUMB[3][11] ,
         \SUMB[3][10] , \SUMB[3][9] , \SUMB[3][8] , \SUMB[3][7] , \SUMB[3][6] ,
         \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] , \SUMB[3][1] ,
         \SUMB[3][0] , \A1[15] , \A1[14] , \A1[13] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[5] , \A1[4] ,
         \A1[3] , \A1[2] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30;
  assign \ab[3][15]  = B[15];
  assign \ab[3][14]  = B[14];
  assign \ab[3][13]  = B[13];
  assign \ab[3][12]  = B[12];
  assign \ab[3][11]  = B[11];
  assign \ab[3][10]  = B[10];
  assign \ab[3][9]  = B[9];
  assign \ab[3][8]  = B[8];
  assign \ab[3][7]  = B[7];
  assign \ab[3][6]  = B[6];
  assign \ab[3][5]  = B[5];
  assign \ab[3][4]  = B[4];
  assign \ab[3][3]  = B[3];
  assign \ab[3][2]  = B[2];
  assign \ab[3][1]  = B[1];
  assign PRODUCT[1] = \ab[3][0] ;
  assign \ab[3][0]  = B[0];

  findMyBest_DW01_add_4 FS_1 ( .A({1'b0, \ab[3][15] , \A1[15] , \A1[14] , 
        \A1[13] , \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , 
        \A1[6] , \A1[5] , \A1[4] , \A1[3] , \A1[2] , \SUMB[3][0] , \ab[3][1] }), .B({1'b0, n30, n3, n9, n13, n12, n6, n8, n15, n11, n5, n7, n14, n10, n4, 
        1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[19:2]) );
  AND2X1 U2 ( .IN1(n16), .IN2(\SUMB[3][13] ), .Q(n3) );
  AND2X1 U3 ( .IN1(n22), .IN2(\SUMB[3][1] ), .Q(n4) );
  AND2X1 U4 ( .IN1(n17), .IN2(\SUMB[3][5] ), .Q(n5) );
  AND2X1 U5 ( .IN1(n18), .IN2(\SUMB[3][9] ), .Q(n6) );
  AND2X1 U6 ( .IN1(n20), .IN2(\SUMB[3][4] ), .Q(n7) );
  AND2X1 U7 ( .IN1(n21), .IN2(\SUMB[3][8] ), .Q(n8) );
  AND2X1 U8 ( .IN1(n19), .IN2(\SUMB[3][12] ), .Q(n9) );
  AND2X1 U9 ( .IN1(n23), .IN2(\SUMB[3][2] ), .Q(n10) );
  AND2X1 U10 ( .IN1(n25), .IN2(\SUMB[3][6] ), .Q(n11) );
  AND2X1 U11 ( .IN1(n27), .IN2(\SUMB[3][10] ), .Q(n12) );
  AND2X1 U12 ( .IN1(n28), .IN2(\SUMB[3][11] ), .Q(n13) );
  AND2X1 U13 ( .IN1(n24), .IN2(\SUMB[3][3] ), .Q(n14) );
  AND2X1 U14 ( .IN1(n26), .IN2(\SUMB[3][7] ), .Q(n15) );
  AND2X1 U15 ( .IN1(\ab[3][12] ), .IN2(\ab[3][14] ), .Q(n16) );
  AND2X1 U16 ( .IN1(\ab[3][4] ), .IN2(\ab[3][6] ), .Q(n17) );
  AND2X1 U17 ( .IN1(\ab[3][8] ), .IN2(\ab[3][10] ), .Q(n18) );
  AND2X1 U18 ( .IN1(\ab[3][11] ), .IN2(\ab[3][13] ), .Q(n19) );
  AND2X1 U19 ( .IN1(\ab[3][3] ), .IN2(\ab[3][5] ), .Q(n20) );
  AND2X1 U20 ( .IN1(\ab[3][7] ), .IN2(\ab[3][9] ), .Q(n21) );
  AND2X1 U21 ( .IN1(\ab[3][0] ), .IN2(\ab[3][2] ), .Q(n22) );
  AND2X1 U22 ( .IN1(\ab[3][1] ), .IN2(\ab[3][3] ), .Q(n23) );
  AND2X1 U23 ( .IN1(\ab[3][2] ), .IN2(\ab[3][4] ), .Q(n24) );
  AND2X1 U24 ( .IN1(\ab[3][5] ), .IN2(\ab[3][7] ), .Q(n25) );
  AND2X1 U25 ( .IN1(\ab[3][6] ), .IN2(\ab[3][8] ), .Q(n26) );
  AND2X1 U26 ( .IN1(\ab[3][9] ), .IN2(\ab[3][11] ), .Q(n27) );
  AND2X1 U27 ( .IN1(\ab[3][10] ), .IN2(\ab[3][12] ), .Q(n28) );
  AND2X1 U28 ( .IN1(\ab[3][13] ), .IN2(\ab[3][15] ), .Q(n29) );
  AND2X1 U29 ( .IN1(n29), .IN2(\ab[3][14] ), .Q(n30) );
  XOR2X1 U30 ( .IN1(n22), .IN2(\SUMB[3][1] ), .Q(\A1[2] ) );
  XOR2X1 U31 ( .IN1(n23), .IN2(\SUMB[3][2] ), .Q(\A1[3] ) );
  XOR2X1 U32 ( .IN1(n24), .IN2(\SUMB[3][3] ), .Q(\A1[4] ) );
  XOR2X1 U33 ( .IN1(n20), .IN2(\SUMB[3][4] ), .Q(\A1[5] ) );
  XOR2X1 U34 ( .IN1(n17), .IN2(\SUMB[3][5] ), .Q(\A1[6] ) );
  XOR2X1 U35 ( .IN1(n25), .IN2(\SUMB[3][6] ), .Q(\A1[7] ) );
  XOR2X1 U36 ( .IN1(n26), .IN2(\SUMB[3][7] ), .Q(\A1[8] ) );
  XOR2X1 U37 ( .IN1(n21), .IN2(\SUMB[3][8] ), .Q(\A1[9] ) );
  XOR2X1 U38 ( .IN1(n18), .IN2(\SUMB[3][9] ), .Q(\A1[10] ) );
  XOR2X1 U39 ( .IN1(n27), .IN2(\SUMB[3][10] ), .Q(\A1[11] ) );
  XOR2X1 U40 ( .IN1(n28), .IN2(\SUMB[3][11] ), .Q(\A1[12] ) );
  XOR2X1 U41 ( .IN1(n16), .IN2(\SUMB[3][13] ), .Q(\A1[14] ) );
  XOR2X1 U42 ( .IN1(n29), .IN2(\ab[3][14] ), .Q(\A1[15] ) );
  XOR2X1 U43 ( .IN1(n19), .IN2(\SUMB[3][12] ), .Q(\A1[13] ) );
  XOR2X1 U44 ( .IN1(\ab[3][2] ), .IN2(\ab[3][0] ), .Q(\SUMB[3][0] ) );
  XOR2X1 U45 ( .IN1(\ab[3][3] ), .IN2(\ab[3][1] ), .Q(\SUMB[3][1] ) );
  XOR2X1 U46 ( .IN1(\ab[3][4] ), .IN2(\ab[3][2] ), .Q(\SUMB[3][2] ) );
  XOR2X1 U47 ( .IN1(\ab[3][5] ), .IN2(\ab[3][3] ), .Q(\SUMB[3][3] ) );
  XOR2X1 U48 ( .IN1(\ab[3][6] ), .IN2(\ab[3][4] ), .Q(\SUMB[3][4] ) );
  XOR2X1 U49 ( .IN1(\ab[3][7] ), .IN2(\ab[3][5] ), .Q(\SUMB[3][5] ) );
  XOR2X1 U50 ( .IN1(\ab[3][8] ), .IN2(\ab[3][6] ), .Q(\SUMB[3][6] ) );
  XOR2X1 U51 ( .IN1(\ab[3][9] ), .IN2(\ab[3][7] ), .Q(\SUMB[3][7] ) );
  XOR2X1 U52 ( .IN1(\ab[3][10] ), .IN2(\ab[3][8] ), .Q(\SUMB[3][8] ) );
  XOR2X1 U53 ( .IN1(\ab[3][11] ), .IN2(\ab[3][9] ), .Q(\SUMB[3][9] ) );
  XOR2X1 U54 ( .IN1(\ab[3][12] ), .IN2(\ab[3][10] ), .Q(\SUMB[3][10] ) );
  XOR2X1 U55 ( .IN1(\ab[3][13] ), .IN2(\ab[3][11] ), .Q(\SUMB[3][11] ) );
  XOR2X1 U56 ( .IN1(\ab[3][14] ), .IN2(\ab[3][12] ), .Q(\SUMB[3][12] ) );
  XOR2X1 U57 ( .IN1(\ab[3][15] ), .IN2(\ab[3][13] ), .Q(\SUMB[3][13] ) );
endmodule


module findMyBest ( clock, nrst, en, start, address, data_in, MY_BATTERY_STAT, 
        mybest, done );
  output [10:0] address;
  input [15:0] data_in;
  input [15:0] MY_BATTERY_STAT;
  output [15:0] mybest;
  input clock, nrst, en, start;
  output done;
  wire   N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86,
         N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N101,
         N102, N103, N104, N105, N106, N107, N108, N109, N110, N111, N112,
         N113, N114, N115, N116, N117, N118, N119, N122, N123, N124, N125,
         N126, N127, N154, N161, N166, N167, N168, N169, N170, N171, N172,
         N173, N174, N175, N192, N193, N194, N195, N196, N197, N198, N199,
         N200, N201, N202, N203, N204, N205, N206, N207, N444, N446, N448,
         N450, N452, N454, N458, n28, n29, n30, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182,
         N181, \add_84/carry[10] , \add_84/carry[9] , \add_84/carry[8] ,
         \add_84/carry[7] , \add_84/carry[6] , \add_84/carry[5] ,
         \add_75/carry[4] , \add_75/carry[3] , \add_75/carry[2] ,
         \add_55/carry[10] , \add_55/carry[9] , \add_55/carry[8] ,
         \add_55/carry[7] , \add_55/carry[6] , \add_55/carry[5] ,
         \add_93/carry[15] , \add_93/carry[14] , \add_93/carry[13] ,
         \add_93/carry[12] , \add_93/carry[11] , \add_93/carry[10] ,
         \add_93/carry[9] , \add_93/carry[8] , \add_93/carry[7] , n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n31, n32, n33, n95, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n276, n277;
  wire   [3:0] state;
  wire   [30:0] kTemp;
  wire   [15:0] k;
  wire   [15:0] l;
  wire   [15:0] neighborCount;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16;

  DFFSSRX1 \state_reg[1]  ( .D(nrst), .RSTB(n99), .SETB(n260), .CLK(clock), 
        .Q(state[1]), .QN(n29) );
  DFFX1 \mybest_buf_reg[0]  ( .D(n166), .CLK(clock), .Q(mybest[0]), .QN(n1) );
  DFFX1 \mybest_buf_reg[1]  ( .D(n165), .CLK(clock), .Q(mybest[1]) );
  DFFX1 \mybest_buf_reg[2]  ( .D(n164), .CLK(clock), .Q(mybest[2]) );
  DFFX1 \mybest_buf_reg[3]  ( .D(n163), .CLK(clock), .Q(mybest[3]) );
  DFFX1 \mybest_buf_reg[4]  ( .D(n162), .CLK(clock), .Q(mybest[4]) );
  DFFX1 \mybest_buf_reg[5]  ( .D(n161), .CLK(clock), .Q(mybest[5]) );
  DFFX1 \mybest_buf_reg[6]  ( .D(n160), .CLK(clock), .Q(mybest[6]) );
  DFFX1 \mybest_buf_reg[7]  ( .D(n159), .CLK(clock), .Q(mybest[7]) );
  DFFX1 \mybest_buf_reg[8]  ( .D(n158), .CLK(clock), .Q(mybest[8]) );
  DFFX1 \mybest_buf_reg[9]  ( .D(n157), .CLK(clock), .Q(mybest[9]) );
  DFFX1 \mybest_buf_reg[10]  ( .D(n156), .CLK(clock), .Q(mybest[10]) );
  DFFX1 \mybest_buf_reg[11]  ( .D(n155), .CLK(clock), .Q(mybest[11]) );
  DFFX1 \mybest_buf_reg[12]  ( .D(n154), .CLK(clock), .Q(mybest[12]) );
  DFFX1 \mybest_buf_reg[13]  ( .D(n153), .CLK(clock), .Q(mybest[13]) );
  DFFX1 \mybest_buf_reg[14]  ( .D(n152), .CLK(clock), .Q(mybest[14]) );
  DFFX1 \mybest_buf_reg[15]  ( .D(n151), .CLK(clock), .Q(mybest[15]) );
  AO22X1 U59 ( .IN1(l[15]), .IN2(n34), .IN3(N86), .IN4(n35), .Q(n109) );
  AO22X1 U60 ( .IN1(l[14]), .IN2(n34), .IN3(N85), .IN4(n35), .Q(n110) );
  AO22X1 U61 ( .IN1(l[13]), .IN2(n34), .IN3(N84), .IN4(n35), .Q(n111) );
  AO22X1 U62 ( .IN1(l[12]), .IN2(n34), .IN3(N83), .IN4(n35), .Q(n112) );
  AO22X1 U63 ( .IN1(l[11]), .IN2(n34), .IN3(N82), .IN4(n35), .Q(n113) );
  AO22X1 U64 ( .IN1(l[10]), .IN2(n34), .IN3(N81), .IN4(n35), .Q(n114) );
  AO22X1 U65 ( .IN1(l[9]), .IN2(n34), .IN3(N80), .IN4(n35), .Q(n115) );
  AO22X1 U66 ( .IN1(l[8]), .IN2(n34), .IN3(N79), .IN4(n35), .Q(n116) );
  AO22X1 U67 ( .IN1(l[7]), .IN2(n34), .IN3(N78), .IN4(n35), .Q(n117) );
  AO22X1 U68 ( .IN1(l[6]), .IN2(n34), .IN3(N77), .IN4(n35), .Q(n118) );
  AO22X1 U69 ( .IN1(l[5]), .IN2(n34), .IN3(N76), .IN4(n35), .Q(n119) );
  AO22X1 U70 ( .IN1(l[4]), .IN2(n34), .IN3(N75), .IN4(n35), .Q(n120) );
  AO22X1 U71 ( .IN1(l[3]), .IN2(n34), .IN3(N74), .IN4(n35), .Q(n121) );
  AO22X1 U72 ( .IN1(l[2]), .IN2(n34), .IN3(N73), .IN4(n35), .Q(n122) );
  AO22X1 U73 ( .IN1(l[1]), .IN2(n34), .IN3(N89), .IN4(n35), .Q(n123) );
  AO221X1 U74 ( .IN1(N97), .IN2(n264), .IN3(address[10]), .IN4(n265), .IN5(n36), .Q(n124) );
  AO21X1 U75 ( .IN1(N175), .IN2(n267), .IN3(n37), .Q(n36) );
  AO221X1 U76 ( .IN1(N96), .IN2(n264), .IN3(address[9]), .IN4(n265), .IN5(n38), 
        .Q(n125) );
  AO21X1 U77 ( .IN1(N174), .IN2(n267), .IN3(n37), .Q(n38) );
  AO22X1 U78 ( .IN1(address[8]), .IN2(n265), .IN3(nrst), .IN4(n39), .Q(n126)
         );
  AO221X1 U79 ( .IN1(N173), .IN2(n267), .IN3(N95), .IN4(n264), .IN5(n266), .Q(
        n39) );
  AO221X1 U80 ( .IN1(N172), .IN2(n267), .IN3(N94), .IN4(n264), .IN5(n40), .Q(
        n127) );
  AO21X1 U81 ( .IN1(address[7]), .IN2(n265), .IN3(n41), .Q(n40) );
  AO22X1 U82 ( .IN1(address[6]), .IN2(n265), .IN3(nrst), .IN4(n42), .Q(n128)
         );
  AO221X1 U83 ( .IN1(N171), .IN2(n267), .IN3(N93), .IN4(n264), .IN5(n266), .Q(
        n42) );
  AO222X1 U84 ( .IN1(N92), .IN2(n35), .IN3(N170), .IN4(n43), .IN5(address[5]), 
        .IN6(n265), .Q(n129) );
  AO222X1 U85 ( .IN1(N91), .IN2(n35), .IN3(N169), .IN4(n43), .IN5(address[4]), 
        .IN6(n265), .Q(n130) );
  AO221X1 U86 ( .IN1(N168), .IN2(n267), .IN3(N90), .IN4(n264), .IN5(n44), .Q(
        n131) );
  AO21X1 U87 ( .IN1(address[3]), .IN2(n265), .IN3(n41), .Q(n44) );
  OR2X1 U88 ( .IN1(n266), .IN2(n37), .Q(n41) );
  AO222X1 U89 ( .IN1(N89), .IN2(n35), .IN3(N167), .IN4(n43), .IN5(address[2]), 
        .IN6(n265), .Q(n132) );
  AO221X1 U90 ( .IN1(N88), .IN2(n264), .IN3(address[1]), .IN4(n265), .IN5(n46), 
        .Q(n133) );
  AO21X1 U91 ( .IN1(N166), .IN2(n267), .IN3(n37), .Q(n46) );
  NAND4X0 U93 ( .IN1(n34), .IN2(n50), .IN3(n51), .IN4(n45), .QN(n49) );
  AO22X1 U94 ( .IN1(neighborCount[15]), .IN2(n52), .IN3(n209), .IN4(n53), .Q(
        n135) );
  AO22X1 U95 ( .IN1(neighborCount[14]), .IN2(n52), .IN3(n177), .IN4(n53), .Q(
        n136) );
  AO22X1 U96 ( .IN1(neighborCount[13]), .IN2(n52), .IN3(n175), .IN4(n53), .Q(
        n137) );
  AO22X1 U97 ( .IN1(neighborCount[12]), .IN2(n52), .IN3(n173), .IN4(n53), .Q(
        n138) );
  AO22X1 U98 ( .IN1(neighborCount[11]), .IN2(n52), .IN3(n171), .IN4(n53), .Q(
        n139) );
  AO22X1 U99 ( .IN1(neighborCount[10]), .IN2(n52), .IN3(n169), .IN4(n53), .Q(
        n140) );
  AO22X1 U100 ( .IN1(neighborCount[9]), .IN2(n52), .IN3(n95), .IN4(n53), .Q(
        n141) );
  AO22X1 U101 ( .IN1(neighborCount[8]), .IN2(n52), .IN3(n32), .IN4(n53), .Q(
        n142) );
  AO22X1 U102 ( .IN1(neighborCount[7]), .IN2(n52), .IN3(n27), .IN4(n53), .Q(
        n143) );
  AO22X1 U103 ( .IN1(neighborCount[6]), .IN2(n52), .IN3(n25), .IN4(n53), .Q(
        n144) );
  AO22X1 U104 ( .IN1(neighborCount[5]), .IN2(n52), .IN3(n23), .IN4(n53), .Q(
        n145) );
  AO22X1 U105 ( .IN1(neighborCount[4]), .IN2(n52), .IN3(n21), .IN4(n53), .Q(
        n146) );
  AO22X1 U106 ( .IN1(neighborCount[3]), .IN2(n52), .IN3(n19), .IN4(n53), .Q(
        n147) );
  AO22X1 U107 ( .IN1(neighborCount[2]), .IN2(n52), .IN3(n17), .IN4(n53), .Q(
        n148) );
  AO22X1 U108 ( .IN1(neighborCount[1]), .IN2(n52), .IN3(data_in[1]), .IN4(n53), 
        .Q(n149) );
  AO22X1 U109 ( .IN1(neighborCount[0]), .IN2(n52), .IN3(data_in[0]), .IN4(n53), 
        .Q(n150) );
  AO221X1 U111 ( .IN1(n55), .IN2(n209), .IN3(mybest[15]), .IN4(n262), .IN5(n56), .Q(n151) );
  AO21X1 U112 ( .IN1(N207), .IN2(n261), .IN3(n57), .Q(n56) );
  AO221X1 U113 ( .IN1(n55), .IN2(n177), .IN3(mybest[14]), .IN4(n262), .IN5(n58), .Q(n152) );
  AO21X1 U114 ( .IN1(N206), .IN2(n261), .IN3(n57), .Q(n58) );
  AO221X1 U115 ( .IN1(n55), .IN2(n175), .IN3(mybest[13]), .IN4(n262), .IN5(n59), .Q(n153) );
  AO21X1 U116 ( .IN1(N205), .IN2(n261), .IN3(n57), .Q(n59) );
  AO221X1 U117 ( .IN1(n55), .IN2(n173), .IN3(mybest[12]), .IN4(n262), .IN5(n60), .Q(n154) );
  AO21X1 U118 ( .IN1(N204), .IN2(n261), .IN3(n57), .Q(n60) );
  AO221X1 U119 ( .IN1(n55), .IN2(n171), .IN3(mybest[11]), .IN4(n262), .IN5(n61), .Q(n155) );
  AO21X1 U120 ( .IN1(N203), .IN2(n261), .IN3(n57), .Q(n61) );
  AO221X1 U121 ( .IN1(n55), .IN2(n169), .IN3(mybest[10]), .IN4(n262), .IN5(n62), .Q(n156) );
  AO21X1 U122 ( .IN1(N202), .IN2(n261), .IN3(n57), .Q(n62) );
  AO221X1 U123 ( .IN1(n55), .IN2(n95), .IN3(mybest[9]), .IN4(n262), .IN5(n63), 
        .Q(n157) );
  AO21X1 U124 ( .IN1(N201), .IN2(n261), .IN3(n57), .Q(n63) );
  AO221X1 U125 ( .IN1(n55), .IN2(n32), .IN3(mybest[8]), .IN4(n262), .IN5(n64), 
        .Q(n158) );
  AO21X1 U126 ( .IN1(N200), .IN2(n261), .IN3(n57), .Q(n64) );
  AO221X1 U127 ( .IN1(n55), .IN2(n27), .IN3(mybest[7]), .IN4(n262), .IN5(n65), 
        .Q(n159) );
  AO21X1 U128 ( .IN1(N199), .IN2(n261), .IN3(n57), .Q(n65) );
  AO221X1 U129 ( .IN1(n55), .IN2(n25), .IN3(mybest[6]), .IN4(n262), .IN5(n66), 
        .Q(n160) );
  AO21X1 U130 ( .IN1(N198), .IN2(n261), .IN3(n57), .Q(n66) );
  AO221X1 U131 ( .IN1(n55), .IN2(n23), .IN3(mybest[5]), .IN4(n262), .IN5(n67), 
        .Q(n161) );
  AO21X1 U132 ( .IN1(N197), .IN2(n261), .IN3(n57), .Q(n67) );
  AO221X1 U133 ( .IN1(n55), .IN2(n21), .IN3(mybest[4]), .IN4(n262), .IN5(n68), 
        .Q(n162) );
  AO21X1 U134 ( .IN1(N196), .IN2(n261), .IN3(n57), .Q(n68) );
  AO221X1 U135 ( .IN1(n55), .IN2(n19), .IN3(mybest[3]), .IN4(n262), .IN5(n69), 
        .Q(n163) );
  AO21X1 U136 ( .IN1(N195), .IN2(n261), .IN3(n57), .Q(n69) );
  AO221X1 U137 ( .IN1(n55), .IN2(n17), .IN3(mybest[2]), .IN4(n262), .IN5(n70), 
        .Q(n164) );
  AO21X1 U138 ( .IN1(N194), .IN2(n261), .IN3(n57), .Q(n70) );
  AO221X1 U139 ( .IN1(n55), .IN2(data_in[1]), .IN3(mybest[1]), .IN4(n262), 
        .IN5(n71), .Q(n165) );
  AO21X1 U140 ( .IN1(N193), .IN2(n261), .IN3(n57), .Q(n71) );
  AO22X1 U142 ( .IN1(mybest[0]), .IN2(n262), .IN3(nrst), .IN4(n74), .Q(n166)
         );
  AO22X1 U143 ( .IN1(n55), .IN2(data_in[0]), .IN3(N192), .IN4(n261), .Q(n74)
         );
  NAND3X0 U144 ( .IN1(n77), .IN2(n75), .IN3(n54), .QN(n72) );
  AO22X1 U145 ( .IN1(done), .IN2(n54), .IN3(n268), .IN4(nrst), .Q(n167) );
  AO222X1 U157 ( .IN1(N126), .IN2(n79), .IN3(kTemp[19]), .IN4(n80), .IN5(k[4]), 
        .IN6(n81), .Q(n179) );
  AO221X1 U158 ( .IN1(N125), .IN2(n79), .IN3(k[3]), .IN4(n81), .IN5(n82), .Q(
        n180) );
  AO21X1 U159 ( .IN1(kTemp[18]), .IN2(n80), .IN3(n83), .Q(n82) );
  AO222X1 U160 ( .IN1(N124), .IN2(n79), .IN3(kTemp[17]), .IN4(n80), .IN5(k[2]), 
        .IN6(n81), .Q(n181) );
  AO221X1 U161 ( .IN1(N123), .IN2(n79), .IN3(k[1]), .IN4(n81), .IN5(n84), .Q(
        n182) );
  AO21X1 U162 ( .IN1(kTemp[16]), .IN2(n80), .IN3(n83), .Q(n84) );
  NOR3X0 U163 ( .IN1(n211), .IN2(n81), .IN3(n51), .QN(n83) );
  AO222X1 U164 ( .IN1(N122), .IN2(n79), .IN3(kTemp[15]), .IN4(n80), .IN5(k[0]), 
        .IN6(n81), .Q(n183) );
  AND2X1 U166 ( .IN1(n87), .IN2(n88), .Q(n80) );
  NOR4X0 U167 ( .IN1(n89), .IN2(n90), .IN3(n91), .IN4(n92), .QN(n88) );
  OR4X1 U168 ( .IN1(kTemp[2]), .IN2(kTemp[3]), .IN3(kTemp[4]), .IN4(kTemp[5]), 
        .Q(n92) );
  OR4X1 U169 ( .IN1(kTemp[6]), .IN2(kTemp[7]), .IN3(kTemp[8]), .IN4(kTemp[9]), 
        .Q(n91) );
  OR3X1 U170 ( .IN1(kTemp[10]), .IN2(kTemp[11]), .IN3(kTemp[0]), .Q(n90) );
  OR4X1 U171 ( .IN1(kTemp[12]), .IN2(kTemp[13]), .IN3(kTemp[14]), .IN4(
        kTemp[1]), .Q(n89) );
  AO22X1 U172 ( .IN1(kTemp[19]), .IN2(n93), .IN3(N119), .IN4(n94), .Q(n184) );
  AO22X1 U173 ( .IN1(kTemp[18]), .IN2(n15), .IN3(N118), .IN4(n94), .Q(n185) );
  AO22X1 U174 ( .IN1(kTemp[17]), .IN2(n14), .IN3(N117), .IN4(n94), .Q(n186) );
  AO22X1 U175 ( .IN1(kTemp[16]), .IN2(n93), .IN3(N116), .IN4(n94), .Q(n187) );
  AO22X1 U176 ( .IN1(kTemp[15]), .IN2(n15), .IN3(N115), .IN4(n94), .Q(n188) );
  AO22X1 U177 ( .IN1(kTemp[14]), .IN2(n14), .IN3(N114), .IN4(n94), .Q(n189) );
  AO22X1 U178 ( .IN1(kTemp[13]), .IN2(n93), .IN3(N113), .IN4(n94), .Q(n190) );
  AO22X1 U179 ( .IN1(kTemp[12]), .IN2(n15), .IN3(N112), .IN4(n94), .Q(n191) );
  AO22X1 U180 ( .IN1(kTemp[11]), .IN2(n14), .IN3(N111), .IN4(n94), .Q(n192) );
  AO22X1 U181 ( .IN1(kTemp[10]), .IN2(n93), .IN3(N110), .IN4(n94), .Q(n193) );
  AO22X1 U182 ( .IN1(kTemp[9]), .IN2(n15), .IN3(N109), .IN4(n94), .Q(n194) );
  AO22X1 U183 ( .IN1(kTemp[8]), .IN2(n14), .IN3(N108), .IN4(n94), .Q(n195) );
  AO22X1 U184 ( .IN1(kTemp[7]), .IN2(n93), .IN3(N107), .IN4(n94), .Q(n196) );
  AO22X1 U185 ( .IN1(kTemp[6]), .IN2(n15), .IN3(N106), .IN4(n94), .Q(n197) );
  AO22X1 U186 ( .IN1(kTemp[5]), .IN2(n14), .IN3(N105), .IN4(n94), .Q(n198) );
  AO22X1 U187 ( .IN1(kTemp[4]), .IN2(n15), .IN3(N104), .IN4(n94), .Q(n199) );
  AO22X1 U188 ( .IN1(kTemp[3]), .IN2(n14), .IN3(N103), .IN4(n94), .Q(n200) );
  AO22X1 U189 ( .IN1(kTemp[2]), .IN2(n15), .IN3(N102), .IN4(n94), .Q(n201) );
  AO22X1 U190 ( .IN1(kTemp[1]), .IN2(n14), .IN3(N101), .IN4(n94), .Q(n202) );
  AND4X1 U193 ( .IN1(n86), .IN2(n78), .IN3(n101), .IN4(n103), .Q(n100) );
  NOR4X0 U194 ( .IN1(state[3]), .IN2(N99), .IN3(n269), .IN4(n48), .QN(n103) );
  AND3X1 U195 ( .IN1(n51), .IN2(n45), .IN3(n75), .Q(n101) );
  NAND3X0 U196 ( .IN1(n104), .IN2(n28), .IN3(state[0]), .QN(n45) );
  NAND3X0 U197 ( .IN1(state[0]), .IN2(n104), .IN3(state[2]), .QN(n51) );
  AO21X1 U198 ( .IN1(start), .IN2(n48), .IN3(n264), .Q(n102) );
  NAND3X0 U199 ( .IN1(n106), .IN2(n30), .IN3(state[2]), .QN(n75) );
  NAND3X0 U200 ( .IN1(n104), .IN2(n30), .IN3(state[2]), .QN(n86) );
  NAND4X0 U201 ( .IN1(nrst), .IN2(n107), .IN3(n108), .IN4(n78), .QN(n206) );
  NAND3X0 U202 ( .IN1(state[0]), .IN2(n106), .IN3(state[2]), .QN(n78) );
  OR2X1 U203 ( .IN1(n73), .IN2(en), .Q(n108) );
  AO22X1 U204 ( .IN1(l[0]), .IN2(n34), .IN3(N88), .IN4(n35), .Q(n207) );
  NAND3X0 U206 ( .IN1(n30), .IN2(n28), .IN3(n106), .QN(n76) );
  NAND3X0 U207 ( .IN1(n29), .IN2(n28), .IN3(n30), .QN(n105) );
  AND2X1 U208 ( .IN1(n270), .IN2(k[0]), .Q(N166) );
  AND2X1 U209 ( .IN1(n270), .IN2(k[2]), .Q(N458) );
  AND2X1 U210 ( .IN1(n270), .IN2(k[4]), .Q(N454) );
  AND2X1 U211 ( .IN1(n270), .IN2(k[5]), .Q(N452) );
  AND2X1 U212 ( .IN1(n270), .IN2(k[6]), .Q(N450) );
  AND2X1 U213 ( .IN1(n270), .IN2(k[7]), .Q(N448) );
  AND2X1 U214 ( .IN1(n270), .IN2(k[8]), .Q(N446) );
  AND2X1 U215 ( .IN1(n270), .IN2(k[9]), .Q(N444) );
  AND3X1 U216 ( .IN1(n106), .IN2(n28), .IN3(state[0]), .Q(n98) );
  OR2X1 U217 ( .IN1(k[1]), .IN2(N154), .Q(N167) );
  OR2X1 U218 ( .IN1(k[3]), .IN2(N154), .Q(N161) );
  findMyBest_DW01_inc_1 add_54 ( .A(l), .SUM({N86, N85, N84, N83, N82, N81, 
        N80, N79, N78, N77, N76, N75, N74, N73, N89, N88}) );
  findMyBest_DW02_mult_0 mult_91 ( .A(mybest), .B({n209, n177, n175, n173, 
        n171, n169, n95, n32, n27, n25, n23, n21, n19, n17, data_in[1:0]}), 
        .TC(1'b0), .PRODUCT({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, N191, N190, N189, N188, N187, N186, N185, 
        N184, N183, N182, N181, N196, N195, N194, N193, N192, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15}) );
  findMyBest_DW02_mult_1 mult_68 ( .A({1'b1, 1'b0, 1'b1, 1'b0}), .B(
        MY_BATTERY_STAT), .TC(1'b0), .PRODUCT({N119, N118, N117, N116, N115, 
        N114, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, 
        N102, N101, SYNOPSYS_UNCONNECTED__16}) );
  HADDX1 \add_75/U1_1_1  ( .A0(kTemp[16]), .B0(kTemp[15]), .C1(
        \add_75/carry[2] ), .SO(N123) );
  HADDX1 \add_75/U1_1_2  ( .A0(kTemp[17]), .B0(\add_75/carry[2] ), .C1(
        \add_75/carry[3] ), .SO(N124) );
  HADDX1 \add_75/U1_1_3  ( .A0(kTemp[18]), .B0(\add_75/carry[3] ), .C1(
        \add_75/carry[4] ), .SO(N125) );
  HADDX1 \add_75/U1_1_4  ( .A0(kTemp[19]), .B0(\add_75/carry[4] ), .C1(N127), 
        .SO(N126) );
  DFFX1 done_buf_reg ( .D(n167), .CLK(clock), .Q(done) );
  DFFX1 \kTemp_reg[0]  ( .D(n203), .CLK(clock), .Q(kTemp[0]) );
  DFFX1 \k_reg[15]  ( .D(n12), .CLK(clock), .Q(k[15]) );
  DFFX1 \k_reg[14]  ( .D(n11), .CLK(clock), .Q(k[14]) );
  DFFX1 \k_reg[13]  ( .D(n10), .CLK(clock), .Q(k[13]) );
  DFFX1 \k_reg[12]  ( .D(n9), .CLK(clock), .Q(k[12]) );
  DFFX1 \k_reg[11]  ( .D(n8), .CLK(clock), .Q(k[11]) );
  DFFX1 \k_reg[10]  ( .D(n7), .CLK(clock), .Q(k[10]) );
  DFFX1 \k_reg[9]  ( .D(n6), .CLK(clock), .Q(k[9]) );
  DFFX1 \k_reg[8]  ( .D(n5), .CLK(clock), .Q(k[8]) );
  DFFX1 \k_reg[7]  ( .D(n4), .CLK(clock), .Q(k[7]) );
  DFFX1 \k_reg[6]  ( .D(n3), .CLK(clock), .Q(k[6]) );
  DFFX1 \kTemp_reg[2]  ( .D(n201), .CLK(clock), .Q(kTemp[2]) );
  DFFX1 \k_reg[5]  ( .D(n178), .CLK(clock), .Q(k[5]) );
  DFFX1 \neighborCount_reg[15]  ( .D(n135), .CLK(clock), .Q(neighborCount[15])
         );
  DFFX1 \neighborCount_reg[14]  ( .D(n136), .CLK(clock), .Q(neighborCount[14])
         );
  DFFX1 \neighborCount_reg[13]  ( .D(n137), .CLK(clock), .Q(neighborCount[13])
         );
  DFFX1 \neighborCount_reg[12]  ( .D(n138), .CLK(clock), .Q(neighborCount[12])
         );
  DFFX1 \neighborCount_reg[11]  ( .D(n139), .CLK(clock), .Q(neighborCount[11])
         );
  DFFX1 \neighborCount_reg[10]  ( .D(n140), .CLK(clock), .Q(neighborCount[10])
         );
  DFFX1 \neighborCount_reg[9]  ( .D(n141), .CLK(clock), .Q(neighborCount[9])
         );
  DFFX1 \neighborCount_reg[8]  ( .D(n142), .CLK(clock), .Q(neighborCount[8])
         );
  DFFX1 \neighborCount_reg[7]  ( .D(n143), .CLK(clock), .Q(neighborCount[7])
         );
  DFFX1 \neighborCount_reg[6]  ( .D(n144), .CLK(clock), .Q(neighborCount[6])
         );
  DFFX1 \neighborCount_reg[5]  ( .D(n145), .CLK(clock), .Q(neighborCount[5])
         );
  DFFX1 \neighborCount_reg[4]  ( .D(n146), .CLK(clock), .Q(neighborCount[4])
         );
  DFFX1 \neighborCount_reg[3]  ( .D(n147), .CLK(clock), .Q(neighborCount[3])
         );
  DFFX1 \neighborCount_reg[2]  ( .D(n148), .CLK(clock), .Q(neighborCount[2])
         );
  DFFX1 \neighborCount_reg[1]  ( .D(n149), .CLK(clock), .Q(neighborCount[1]), 
        .QN(n252) );
  DFFX1 \neighborCount_reg[0]  ( .D(n150), .CLK(clock), .Q(neighborCount[0]), 
        .QN(n251) );
  DFFX1 \k_reg[4]  ( .D(n179), .CLK(clock), .Q(k[4]) );
  DFFX1 \k_reg[2]  ( .D(n181), .CLK(clock), .Q(k[2]) );
  DFFX1 \k_reg[0]  ( .D(n183), .CLK(clock), .Q(k[0]) );
  DFFX1 \l_reg[15]  ( .D(n109), .CLK(clock), .Q(l[15]) );
  DFFX1 \l_reg[14]  ( .D(n110), .CLK(clock), .Q(l[14]) );
  DFFX1 \l_reg[13]  ( .D(n111), .CLK(clock), .Q(l[13]) );
  DFFX1 \l_reg[12]  ( .D(n112), .CLK(clock), .Q(l[12]) );
  DFFX1 \l_reg[11]  ( .D(n113), .CLK(clock), .Q(l[11]) );
  DFFX1 \l_reg[10]  ( .D(n114), .CLK(clock), .Q(l[10]) );
  DFFX1 \l_reg[9]  ( .D(n115), .CLK(clock), .Q(l[9]) );
  DFFX1 \l_reg[8]  ( .D(n116), .CLK(clock), .Q(l[8]) );
  DFFX1 \l_reg[7]  ( .D(n117), .CLK(clock), .Q(l[7]) );
  DFFX1 \l_reg[6]  ( .D(n118), .CLK(clock), .Q(l[6]) );
  DFFX1 \l_reg[5]  ( .D(n119), .CLK(clock), .Q(l[5]) );
  DFFX1 \l_reg[4]  ( .D(n120), .CLK(clock), .Q(l[4]) );
  DFFX1 \l_reg[3]  ( .D(n121), .CLK(clock), .Q(l[3]) );
  DFFX1 \l_reg[2]  ( .D(n122), .CLK(clock), .Q(l[2]) );
  DFFX1 \l_reg[1]  ( .D(n123), .CLK(clock), .Q(l[1]) );
  DFFX1 \l_reg[0]  ( .D(n207), .CLK(clock), .Q(l[0]) );
  DFFX1 \address_count_reg[0]  ( .D(n134), .CLK(clock), .Q(address[0]) );
  DFFX1 \address_count_reg[8]  ( .D(n126), .CLK(clock), .Q(address[8]) );
  DFFX1 \address_count_reg[6]  ( .D(n128), .CLK(clock), .Q(address[6]) );
  DFFX1 \k_reg[3]  ( .D(n180), .CLK(clock), .Q(k[3]) );
  DFFX1 \k_reg[1]  ( .D(n182), .CLK(clock), .Q(k[1]) );
  DFFX1 \address_count_reg[5]  ( .D(n129), .CLK(clock), .Q(address[5]) );
  DFFX1 \address_count_reg[4]  ( .D(n130), .CLK(clock), .Q(address[4]) );
  DFFX1 \address_count_reg[2]  ( .D(n132), .CLK(clock), .Q(address[2]) );
  DFFX1 \address_count_reg[10]  ( .D(n124), .CLK(clock), .Q(address[10]) );
  DFFX1 \address_count_reg[9]  ( .D(n125), .CLK(clock), .Q(address[9]) );
  DFFX1 \address_count_reg[1]  ( .D(n133), .CLK(clock), .Q(address[1]) );
  DFFX1 \kTemp_reg[19]  ( .D(n184), .CLK(clock), .Q(kTemp[19]) );
  DFFX1 \kTemp_reg[18]  ( .D(n185), .CLK(clock), .Q(kTemp[18]) );
  DFFX1 \kTemp_reg[17]  ( .D(n186), .CLK(clock), .Q(kTemp[17]) );
  DFFX1 \kTemp_reg[16]  ( .D(n187), .CLK(clock), .Q(kTemp[16]) );
  DFFX1 \kTemp_reg[15]  ( .D(n188), .CLK(clock), .Q(kTemp[15]), .QN(N122) );
  DFFX1 \kTemp_reg[14]  ( .D(n189), .CLK(clock), .Q(kTemp[14]) );
  DFFX1 \kTemp_reg[13]  ( .D(n190), .CLK(clock), .Q(kTemp[13]) );
  DFFX1 \kTemp_reg[12]  ( .D(n191), .CLK(clock), .Q(kTemp[12]) );
  DFFX1 \kTemp_reg[11]  ( .D(n192), .CLK(clock), .Q(kTemp[11]) );
  DFFX1 \kTemp_reg[10]  ( .D(n193), .CLK(clock), .Q(kTemp[10]) );
  DFFX1 \kTemp_reg[9]  ( .D(n194), .CLK(clock), .Q(kTemp[9]) );
  DFFX1 \kTemp_reg[8]  ( .D(n195), .CLK(clock), .Q(kTemp[8]) );
  DFFX1 \kTemp_reg[7]  ( .D(n196), .CLK(clock), .Q(kTemp[7]) );
  DFFX1 \kTemp_reg[6]  ( .D(n197), .CLK(clock), .Q(kTemp[6]) );
  DFFX1 \kTemp_reg[5]  ( .D(n198), .CLK(clock), .Q(kTemp[5]) );
  DFFX1 \kTemp_reg[4]  ( .D(n199), .CLK(clock), .Q(kTemp[4]) );
  DFFX1 \kTemp_reg[3]  ( .D(n200), .CLK(clock), .Q(kTemp[3]) );
  DFFX1 \kTemp_reg[1]  ( .D(n202), .CLK(clock), .Q(kTemp[1]) );
  DFFX1 \address_count_reg[7]  ( .D(n127), .CLK(clock), .Q(address[7]) );
  DFFX1 \address_count_reg[3]  ( .D(n131), .CLK(clock), .Q(address[3]) );
  DFFX1 \state_reg[3]  ( .D(n206), .CLK(clock), .Q(state[3]), .QN(n13) );
  DFFX1 \state_reg[2]  ( .D(n204), .CLK(clock), .Q(state[2]), .QN(n28) );
  DFFX1 \state_reg[0]  ( .D(n205), .CLK(clock), .Q(state[0]), .QN(n30) );
  INVX0 U3 ( .INP(n176), .ZN(n175) );
  INVX0 U4 ( .INP(n172), .ZN(n171) );
  INVX0 U5 ( .INP(n31), .ZN(n27) );
  INVX0 U6 ( .INP(n24), .ZN(n23) );
  INVX0 U7 ( .INP(n20), .ZN(n19) );
  INVX0 U8 ( .INP(n210), .ZN(n209) );
  INVX0 U9 ( .INP(n168), .ZN(n95) );
  INVX0 U10 ( .INP(n18), .ZN(n17) );
  INVX0 U11 ( .INP(n170), .ZN(n169) );
  INVX0 U12 ( .INP(n174), .ZN(n173) );
  INVX0 U13 ( .INP(n33), .ZN(n32) );
  INVX0 U14 ( .INP(n26), .ZN(n25) );
  INVX0 U15 ( .INP(n22), .ZN(n21) );
  INVX0 U16 ( .INP(n208), .ZN(n177) );
  INVX0 U17 ( .INP(n72), .ZN(n262) );
  AND2X1 U18 ( .IN1(n72), .IN2(n47), .Q(n57) );
  NOR2X0 U19 ( .IN1(n211), .IN2(n15), .QN(n94) );
  INVX0 U20 ( .INP(nrst), .ZN(n211) );
  NOR2X0 U21 ( .IN1(n76), .IN2(n262), .QN(n55) );
  NAND2X1 U22 ( .IN1(N98), .IN2(n264), .QN(n77) );
  AND3X1 U23 ( .IN1(n85), .IN2(n86), .IN3(n54), .Q(n81) );
  NAND2X1 U24 ( .IN1(N154), .IN2(n267), .QN(n85) );
  NOR2X0 U25 ( .IN1(n211), .IN2(n76), .QN(n35) );
  NOR2X0 U26 ( .IN1(n45), .IN2(n211), .QN(n53) );
  NOR2X0 U27 ( .IN1(n263), .IN2(n88), .QN(n79) );
  INVX0 U28 ( .INP(n87), .ZN(n263) );
  AND2X1 U29 ( .IN1(n54), .IN2(n76), .Q(n34) );
  NOR2X0 U30 ( .IN1(n211), .IN2(n98), .QN(n15) );
  NOR2X0 U31 ( .IN1(n211), .IN2(n98), .QN(n14) );
  AND2X1 U32 ( .IN1(n54), .IN2(n45), .Q(n52) );
  NOR2X0 U33 ( .IN1(n211), .IN2(n98), .QN(n93) );
  INVX0 U34 ( .INP(n49), .ZN(n265) );
  NOR2X0 U35 ( .IN1(n51), .IN2(n211), .QN(n43) );
  NOR2X0 U36 ( .IN1(n86), .IN2(n211), .QN(n87) );
  NOR2X0 U37 ( .IN1(n211), .IN2(n100), .QN(n96) );
  OA21X1 U38 ( .IN1(n47), .IN2(n48), .IN3(n49), .Q(n37) );
  AND2X1 U39 ( .IN1(n2), .IN2(n96), .Q(n204) );
  OR3X1 U40 ( .IN1(n97), .IN2(n267), .IN3(n98), .Q(n2) );
  NAND2X1 U41 ( .IN1(nrst), .IN2(n73), .QN(n47) );
  INVX0 U42 ( .INP(n100), .ZN(n260) );
  INVX0 U43 ( .INP(N154), .ZN(n270) );
  INVX0 U44 ( .INP(n76), .ZN(n264) );
  INVX0 U45 ( .INP(n75), .ZN(n261) );
  INVX0 U46 ( .INP(n51), .ZN(n267) );
  NAND2X1 U47 ( .IN1(n101), .IN2(n76), .QN(n99) );
  INVX0 U48 ( .INP(n45), .ZN(n266) );
  NAND2X1 U49 ( .IN1(n86), .IN2(n75), .QN(n97) );
  INVX0 U50 ( .INP(N89), .ZN(n253) );
  INVX0 U51 ( .INP(data_in[3]), .ZN(n20) );
  INVX0 U52 ( .INP(data_in[5]), .ZN(n24) );
  INVX0 U53 ( .INP(data_in[7]), .ZN(n31) );
  INVX0 U54 ( .INP(data_in[11]), .ZN(n172) );
  INVX0 U55 ( .INP(data_in[13]), .ZN(n176) );
  INVX0 U56 ( .INP(data_in[15]), .ZN(n210) );
  INVX0 U57 ( .INP(data_in[9]), .ZN(n168) );
  INVX0 U58 ( .INP(data_in[2]), .ZN(n18) );
  INVX0 U92 ( .INP(data_in[10]), .ZN(n170) );
  INVX0 U110 ( .INP(data_in[1]), .ZN(n16) );
  INVX0 U141 ( .INP(data_in[4]), .ZN(n22) );
  INVX0 U146 ( .INP(data_in[6]), .ZN(n26) );
  INVX0 U147 ( .INP(data_in[8]), .ZN(n33) );
  INVX0 U148 ( .INP(data_in[12]), .ZN(n174) );
  INVX0 U149 ( .INP(data_in[14]), .ZN(n208) );
  INVX0 U150 ( .INP(N181), .ZN(N197) );
  NAND2X1 U151 ( .IN1(start), .IN2(n48), .QN(n50) );
  NAND2X1 U152 ( .IN1(state[3]), .IN2(n105), .QN(n107) );
  INVX0 U153 ( .INP(n93), .ZN(n269) );
  OA21X1 U154 ( .IN1(n271), .IN2(n73), .IN3(nrst), .Q(n54) );
  INVX0 U155 ( .INP(en), .ZN(n271) );
  INVX0 U156 ( .INP(N73), .ZN(N90) );
  INVX0 U165 ( .INP(N458), .ZN(N168) );
  INVX0 U191 ( .INP(n78), .ZN(n268) );
  OA21X1 U192 ( .IN1(n97), .IN2(n102), .IN3(n96), .Q(n205) );
  NAND2X1 U205 ( .IN1(n276), .IN2(n277), .QN(n178) );
  NAND2X1 U219 ( .IN1(k[5]), .IN2(n81), .QN(n277) );
  NAND2X1 U220 ( .IN1(N127), .IN2(n79), .QN(n276) );
  AND2X1 U221 ( .IN1(k[6]), .IN2(n81), .Q(n3) );
  AND2X1 U222 ( .IN1(k[7]), .IN2(n81), .Q(n4) );
  AND2X1 U223 ( .IN1(k[8]), .IN2(n81), .Q(n5) );
  AND2X1 U224 ( .IN1(k[9]), .IN2(n81), .Q(n6) );
  AND2X1 U225 ( .IN1(k[10]), .IN2(n81), .Q(n7) );
  AND2X1 U226 ( .IN1(k[11]), .IN2(n81), .Q(n8) );
  AND2X1 U227 ( .IN1(k[12]), .IN2(n81), .Q(n9) );
  AND2X1 U228 ( .IN1(k[13]), .IN2(n81), .Q(n10) );
  AND2X1 U229 ( .IN1(k[14]), .IN2(n81), .Q(n11) );
  AND2X1 U230 ( .IN1(k[15]), .IN2(n81), .Q(n12) );
  NOR2X0 U231 ( .IN1(n105), .IN2(state[3]), .QN(n48) );
  NOR2X0 U232 ( .IN1(n29), .IN2(state[3]), .QN(n106) );
  NOR2X0 U233 ( .IN1(state[3]), .IN2(state[1]), .QN(n104) );
  OR2X1 U234 ( .IN1(n13), .IN2(n105), .Q(n73) );
  XNOR2X1 U235 ( .IN1(N444), .IN2(\add_84/carry[10] ), .Q(N175) );
  XOR2X1 U236 ( .IN1(N80), .IN2(\add_55/carry[10] ), .Q(N97) );
  OR2X1 U237 ( .IN1(N446), .IN2(\add_84/carry[9] ), .Q(\add_84/carry[10] ) );
  XNOR2X1 U238 ( .IN1(\add_84/carry[9] ), .IN2(N446), .Q(N174) );
  AND2X1 U239 ( .IN1(\add_84/carry[8] ), .IN2(N448), .Q(\add_84/carry[9] ) );
  XOR2X1 U240 ( .IN1(N448), .IN2(\add_84/carry[8] ), .Q(N173) );
  AND2X1 U241 ( .IN1(\add_84/carry[7] ), .IN2(N450), .Q(\add_84/carry[8] ) );
  XOR2X1 U242 ( .IN1(N450), .IN2(\add_84/carry[7] ), .Q(N172) );
  OR2X1 U243 ( .IN1(N452), .IN2(\add_84/carry[6] ), .Q(\add_84/carry[7] ) );
  XNOR2X1 U244 ( .IN1(\add_84/carry[6] ), .IN2(N452), .Q(N171) );
  AND2X1 U245 ( .IN1(\add_55/carry[9] ), .IN2(N79), .Q(\add_55/carry[10] ) );
  XOR2X1 U246 ( .IN1(N79), .IN2(\add_55/carry[9] ), .Q(N96) );
  OR2X1 U247 ( .IN1(N78), .IN2(\add_55/carry[8] ), .Q(\add_55/carry[9] ) );
  XNOR2X1 U248 ( .IN1(\add_55/carry[8] ), .IN2(N78), .Q(N95) );
  OR2X1 U249 ( .IN1(N77), .IN2(\add_55/carry[7] ), .Q(\add_55/carry[8] ) );
  XNOR2X1 U250 ( .IN1(\add_55/carry[7] ), .IN2(N77), .Q(N94) );
  OR2X1 U251 ( .IN1(N76), .IN2(\add_55/carry[6] ), .Q(\add_55/carry[7] ) );
  XNOR2X1 U252 ( .IN1(\add_55/carry[6] ), .IN2(N76), .Q(N93) );
  AND2X1 U253 ( .IN1(\add_84/carry[5] ), .IN2(N454), .Q(\add_84/carry[6] ) );
  XOR2X1 U254 ( .IN1(N454), .IN2(\add_84/carry[5] ), .Q(N170) );
  AND2X1 U255 ( .IN1(\add_55/carry[5] ), .IN2(N75), .Q(\add_55/carry[6] ) );
  XOR2X1 U256 ( .IN1(N75), .IN2(\add_55/carry[5] ), .Q(N92) );
  AND2X1 U257 ( .IN1(N458), .IN2(N161), .Q(\add_84/carry[5] ) );
  XOR2X1 U258 ( .IN1(N161), .IN2(N458), .Q(N169) );
  AND2X1 U259 ( .IN1(N73), .IN2(N74), .Q(\add_55/carry[5] ) );
  XOR2X1 U260 ( .IN1(N74), .IN2(N73), .Q(N91) );
  XOR2X1 U261 ( .IN1(\add_93/carry[15] ), .IN2(N191), .Q(N207) );
  AND2X1 U262 ( .IN1(N190), .IN2(\add_93/carry[14] ), .Q(\add_93/carry[15] )
         );
  XOR2X1 U263 ( .IN1(\add_93/carry[14] ), .IN2(N190), .Q(N206) );
  AND2X1 U264 ( .IN1(N189), .IN2(\add_93/carry[13] ), .Q(\add_93/carry[14] )
         );
  XOR2X1 U265 ( .IN1(\add_93/carry[13] ), .IN2(N189), .Q(N205) );
  AND2X1 U266 ( .IN1(N188), .IN2(\add_93/carry[12] ), .Q(\add_93/carry[13] )
         );
  XOR2X1 U267 ( .IN1(\add_93/carry[12] ), .IN2(N188), .Q(N204) );
  AND2X1 U268 ( .IN1(N187), .IN2(\add_93/carry[11] ), .Q(\add_93/carry[12] )
         );
  XOR2X1 U269 ( .IN1(\add_93/carry[11] ), .IN2(N187), .Q(N203) );
  AND2X1 U270 ( .IN1(N186), .IN2(\add_93/carry[10] ), .Q(\add_93/carry[11] )
         );
  XOR2X1 U271 ( .IN1(\add_93/carry[10] ), .IN2(N186), .Q(N202) );
  AND2X1 U272 ( .IN1(N185), .IN2(\add_93/carry[9] ), .Q(\add_93/carry[10] ) );
  XOR2X1 U273 ( .IN1(\add_93/carry[9] ), .IN2(N185), .Q(N201) );
  AND2X1 U274 ( .IN1(N184), .IN2(\add_93/carry[8] ), .Q(\add_93/carry[9] ) );
  XOR2X1 U275 ( .IN1(\add_93/carry[8] ), .IN2(N184), .Q(N200) );
  AND2X1 U276 ( .IN1(N183), .IN2(\add_93/carry[7] ), .Q(\add_93/carry[8] ) );
  XOR2X1 U277 ( .IN1(\add_93/carry[7] ), .IN2(N183), .Q(N199) );
  AND2X1 U278 ( .IN1(N182), .IN2(N181), .Q(\add_93/carry[7] ) );
  XOR2X1 U279 ( .IN1(N181), .IN2(N182), .Q(N198) );
  AND2X1 U280 ( .IN1(n208), .IN2(mybest[14]), .Q(n227) );
  NOR2X0 U281 ( .IN1(n1), .IN2(data_in[0]), .QN(n212) );
  AND2X1 U282 ( .IN1(n16), .IN2(n212), .Q(n213) );
  OA222X1 U283 ( .IN1(mybest[2]), .IN2(n18), .IN3(mybest[1]), .IN4(n213), 
        .IN5(n212), .IN6(n16), .Q(n214) );
  AO221X1 U284 ( .IN1(mybest[2]), .IN2(n18), .IN3(mybest[3]), .IN4(n20), .IN5(
        n214), .Q(n215) );
  OA221X1 U285 ( .IN1(mybest[4]), .IN2(n22), .IN3(mybest[3]), .IN4(n20), .IN5(
        n215), .Q(n216) );
  AO221X1 U286 ( .IN1(mybest[4]), .IN2(n22), .IN3(mybest[5]), .IN4(n24), .IN5(
        n216), .Q(n217) );
  OA221X1 U287 ( .IN1(mybest[6]), .IN2(n26), .IN3(mybest[5]), .IN4(n24), .IN5(
        n217), .Q(n218) );
  AO221X1 U288 ( .IN1(mybest[6]), .IN2(n26), .IN3(mybest[7]), .IN4(n31), .IN5(
        n218), .Q(n219) );
  OA221X1 U289 ( .IN1(mybest[8]), .IN2(n33), .IN3(mybest[7]), .IN4(n31), .IN5(
        n219), .Q(n220) );
  AO221X1 U290 ( .IN1(mybest[8]), .IN2(n33), .IN3(mybest[9]), .IN4(n168), 
        .IN5(n220), .Q(n221) );
  OA221X1 U291 ( .IN1(mybest[9]), .IN2(n168), .IN3(mybest[10]), .IN4(n170), 
        .IN5(n221), .Q(n222) );
  AO221X1 U292 ( .IN1(mybest[10]), .IN2(n170), .IN3(mybest[11]), .IN4(n172), 
        .IN5(n222), .Q(n223) );
  OA221X1 U293 ( .IN1(mybest[12]), .IN2(n174), .IN3(mybest[11]), .IN4(n172), 
        .IN5(n223), .Q(n224) );
  AO221X1 U294 ( .IN1(mybest[12]), .IN2(n174), .IN3(mybest[13]), .IN4(n176), 
        .IN5(n224), .Q(n225) );
  OA221X1 U295 ( .IN1(mybest[14]), .IN2(n208), .IN3(mybest[13]), .IN4(n176), 
        .IN5(n225), .Q(n226) );
  OA22X1 U296 ( .IN1(mybest[15]), .IN2(n210), .IN3(n227), .IN4(n226), .Q(n228)
         );
  AO21X1 U297 ( .IN1(mybest[15]), .IN2(n210), .IN3(n228), .Q(N98) );
  XOR2X1 U298 ( .IN1(neighborCount[15]), .IN2(N86), .Q(n234) );
  XOR2X1 U299 ( .IN1(neighborCount[2]), .IN2(N73), .Q(n233) );
  NOR2X0 U300 ( .IN1(n251), .IN2(N88), .QN(n229) );
  OA22X1 U301 ( .IN1(neighborCount[1]), .IN2(n229), .IN3(n229), .IN4(n253), 
        .Q(n232) );
  AND2X1 U302 ( .IN1(N88), .IN2(n251), .Q(n230) );
  OA22X1 U303 ( .IN1(n230), .IN2(n252), .IN3(N89), .IN4(n230), .Q(n231) );
  OR4X1 U304 ( .IN1(n234), .IN2(n233), .IN3(n232), .IN4(n231), .Q(n250) );
  XNOR2X1 U305 ( .IN1(neighborCount[6]), .IN2(N77), .Q(n238) );
  XNOR2X1 U306 ( .IN1(neighborCount[5]), .IN2(N76), .Q(n237) );
  XNOR2X1 U307 ( .IN1(neighborCount[4]), .IN2(N75), .Q(n236) );
  XNOR2X1 U308 ( .IN1(neighborCount[3]), .IN2(N74), .Q(n235) );
  NAND4X0 U309 ( .IN1(n238), .IN2(n237), .IN3(n236), .IN4(n235), .QN(n249) );
  XNOR2X1 U310 ( .IN1(neighborCount[10]), .IN2(N81), .Q(n242) );
  XNOR2X1 U311 ( .IN1(neighborCount[9]), .IN2(N80), .Q(n241) );
  XNOR2X1 U312 ( .IN1(neighborCount[8]), .IN2(N79), .Q(n240) );
  XNOR2X1 U313 ( .IN1(neighborCount[7]), .IN2(N78), .Q(n239) );
  NAND4X0 U314 ( .IN1(n242), .IN2(n241), .IN3(n240), .IN4(n239), .QN(n248) );
  XNOR2X1 U315 ( .IN1(neighborCount[14]), .IN2(N85), .Q(n246) );
  XNOR2X1 U316 ( .IN1(neighborCount[13]), .IN2(N84), .Q(n245) );
  XNOR2X1 U317 ( .IN1(neighborCount[12]), .IN2(N83), .Q(n244) );
  XNOR2X1 U318 ( .IN1(neighborCount[11]), .IN2(N82), .Q(n243) );
  NAND4X0 U319 ( .IN1(n246), .IN2(n245), .IN3(n244), .IN4(n243), .QN(n247) );
  NOR4X0 U320 ( .IN1(n250), .IN2(n249), .IN3(n248), .IN4(n247), .QN(N99) );
  NOR2X0 U321 ( .IN1(k[11]), .IN2(k[10]), .QN(n259) );
  AO21X1 U322 ( .IN1(k[1]), .IN2(k[0]), .IN3(k[2]), .Q(n254) );
  NAND2X0 U323 ( .IN1(k[3]), .IN2(n254), .QN(n258) );
  NOR3X0 U324 ( .IN1(k[12]), .IN2(k[14]), .IN3(k[13]), .QN(n257) );
  OR4X1 U325 ( .IN1(k[7]), .IN2(k[6]), .IN3(k[9]), .IN4(k[8]), .Q(n255) );
  NOR4X0 U326 ( .IN1(n255), .IN2(k[15]), .IN3(k[5]), .IN4(k[4]), .QN(n256) );
  NAND4X0 U327 ( .IN1(n259), .IN2(n258), .IN3(n257), .IN4(n256), .QN(N154) );
  AND2X1 U328 ( .IN1(address[0]), .IN2(n265), .Q(n134) );
  AND2X1 U329 ( .IN1(kTemp[0]), .IN2(n14), .Q(n203) );
endmodule


module betterNeighborsInMyCluster_DW01_inc_0 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HADDX1 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .C1(carry[15]), .SO(SUM[14]) );
  HADDX1 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .C1(carry[14]), .SO(SUM[13]) );
  HADDX1 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .C1(carry[13]), .SO(SUM[12]) );
  HADDX1 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(carry[12]), .SO(SUM[11]) );
  HADDX1 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX0 U1 ( .INP(A[0]), .ZN(SUM[0]) );
  XOR2X1 U2 ( .IN1(carry[15]), .IN2(A[15]), .Q(SUM[15]) );
endmodule


module betterNeighborsInMyCluster_DW01_inc_1 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HADDX1 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .C1(carry[15]), .SO(SUM[14]) );
  HADDX1 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .C1(carry[14]), .SO(SUM[13]) );
  HADDX1 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .C1(carry[13]), .SO(SUM[12]) );
  HADDX1 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(carry[12]), .SO(SUM[11]) );
  HADDX1 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX0 U1 ( .INP(A[0]), .ZN(SUM[0]) );
  XOR2X1 U2 ( .IN1(carry[15]), .IN2(A[15]), .Q(SUM[15]) );
endmodule


module betterNeighborsInMyCluster_DW01_inc_2 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HADDX1 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .C1(carry[15]), .SO(SUM[14]) );
  HADDX1 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .C1(carry[14]), .SO(SUM[13]) );
  HADDX1 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .C1(carry[13]), .SO(SUM[12]) );
  HADDX1 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(carry[12]), .SO(SUM[11]) );
  HADDX1 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX0 U1 ( .INP(A[0]), .ZN(SUM[0]) );
  XOR2X1 U2 ( .IN1(carry[15]), .IN2(A[15]), .Q(SUM[15]) );
endmodule


module betterNeighborsInMyCluster_DW01_inc_3 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  HADDX1 U1_1_14 ( .A0(A[14]), .B0(carry[14]), .C1(carry[15]), .SO(SUM[14]) );
  HADDX1 U1_1_13 ( .A0(A[13]), .B0(carry[13]), .C1(carry[14]), .SO(SUM[13]) );
  HADDX1 U1_1_12 ( .A0(A[12]), .B0(carry[12]), .C1(carry[13]), .SO(SUM[12]) );
  HADDX1 U1_1_11 ( .A0(A[11]), .B0(carry[11]), .C1(carry[12]), .SO(SUM[11]) );
  HADDX1 U1_1_10 ( .A0(A[10]), .B0(carry[10]), .C1(carry[11]), .SO(SUM[10]) );
  HADDX1 U1_1_9 ( .A0(A[9]), .B0(carry[9]), .C1(carry[10]), .SO(SUM[9]) );
  HADDX1 U1_1_8 ( .A0(A[8]), .B0(carry[8]), .C1(carry[9]), .SO(SUM[8]) );
  HADDX1 U1_1_7 ( .A0(A[7]), .B0(carry[7]), .C1(carry[8]), .SO(SUM[7]) );
  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX0 U1 ( .INP(A[0]), .ZN(SUM[0]) );
  XOR2X1 U2 ( .IN1(carry[15]), .IN2(A[15]), .Q(SUM[15]) );
endmodule


module betterNeighborsInMyCluster_DW01_add_10 ( A, B, CI, SUM, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] SUM;
  input CI;
  output CO;
  wire   \A[2] , \A[1] , \A[0] , n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66;
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  INVX0 U2 ( .INP(n38), .ZN(n14) );
  INVX0 U3 ( .INP(n35), .ZN(n13) );
  INVX0 U4 ( .INP(n31), .ZN(n12) );
  INVX0 U5 ( .INP(n19), .ZN(n9) );
  INVX0 U6 ( .INP(n65), .ZN(n8) );
  INVX0 U7 ( .INP(n27), .ZN(n11) );
  INVX0 U8 ( .INP(n59), .ZN(n7) );
  INVX0 U9 ( .INP(n23), .ZN(n10) );
  INVX0 U10 ( .INP(n56), .ZN(n6) );
  AND2X1 U11 ( .IN1(A[3]), .IN2(B[3]), .Q(n1) );
  INVX0 U12 ( .INP(n52), .ZN(n5) );
  INVX0 U13 ( .INP(n43), .ZN(n3) );
  OAI21X1 U14 ( .IN1(n39), .IN2(n40), .IN3(n41), .QN(SUM[17]) );
  INVX0 U15 ( .INP(n47), .ZN(n4) );
  INVX0 U16 ( .INP(n39), .ZN(n15) );
  XOR2X1 U17 ( .IN1(A[3]), .IN2(B[3]), .Q(SUM[3]) );
  XNOR2X1 U18 ( .IN1(n16), .IN2(n17), .Q(SUM[9]) );
  NOR2X0 U19 ( .IN1(n9), .IN2(n18), .QN(n17) );
  XOR2X1 U20 ( .IN1(n20), .IN2(n21), .Q(SUM[8]) );
  NAND2X0 U21 ( .IN1(n10), .IN2(n22), .QN(n20) );
  XOR2X1 U22 ( .IN1(n24), .IN2(n25), .Q(SUM[7]) );
  NAND2X0 U23 ( .IN1(n11), .IN2(n26), .QN(n24) );
  XNOR2X1 U24 ( .IN1(n28), .IN2(n29), .Q(SUM[6]) );
  NOR2X0 U25 ( .IN1(n12), .IN2(n30), .QN(n29) );
  XNOR2X1 U26 ( .IN1(n32), .IN2(n33), .Q(SUM[5]) );
  NOR2X0 U27 ( .IN1(n13), .IN2(n34), .QN(n33) );
  XOR2X1 U28 ( .IN1(n1), .IN2(n36), .Q(SUM[4]) );
  NOR2X0 U29 ( .IN1(n37), .IN2(n38), .QN(n36) );
  XOR2X1 U30 ( .IN1(n42), .IN2(n40), .Q(SUM[16]) );
  OA21X1 U31 ( .IN1(n43), .IN2(n44), .IN3(n45), .Q(n40) );
  NAND2X0 U32 ( .IN1(n15), .IN2(n41), .QN(n42) );
  NAND2X0 U33 ( .IN1(B[16]), .IN2(A[16]), .QN(n41) );
  NOR2X0 U34 ( .IN1(B[16]), .IN2(A[16]), .QN(n39) );
  XOR2X1 U35 ( .IN1(n46), .IN2(n44), .Q(SUM[15]) );
  OA21X1 U36 ( .IN1(n47), .IN2(n48), .IN3(n49), .Q(n44) );
  NAND2X0 U37 ( .IN1(n3), .IN2(n45), .QN(n46) );
  NAND2X0 U38 ( .IN1(B[15]), .IN2(A[15]), .QN(n45) );
  NOR2X0 U39 ( .IN1(B[15]), .IN2(A[15]), .QN(n43) );
  XOR2X1 U40 ( .IN1(n50), .IN2(n48), .Q(SUM[14]) );
  OA21X1 U41 ( .IN1(n51), .IN2(n52), .IN3(n53), .Q(n48) );
  NAND2X0 U42 ( .IN1(n4), .IN2(n49), .QN(n50) );
  NAND2X0 U43 ( .IN1(B[14]), .IN2(A[14]), .QN(n49) );
  NOR2X0 U44 ( .IN1(B[14]), .IN2(A[14]), .QN(n47) );
  XOR2X1 U45 ( .IN1(n54), .IN2(n51), .Q(SUM[13]) );
  OA21X1 U46 ( .IN1(n55), .IN2(n56), .IN3(n57), .Q(n51) );
  NAND2X0 U47 ( .IN1(n5), .IN2(n53), .QN(n54) );
  NAND2X0 U48 ( .IN1(B[13]), .IN2(A[13]), .QN(n53) );
  NOR2X0 U49 ( .IN1(B[13]), .IN2(A[13]), .QN(n52) );
  XOR2X1 U50 ( .IN1(n58), .IN2(n55), .Q(SUM[12]) );
  OA21X1 U51 ( .IN1(n59), .IN2(n60), .IN3(n61), .Q(n55) );
  NAND2X0 U52 ( .IN1(n6), .IN2(n57), .QN(n58) );
  NAND2X0 U53 ( .IN1(B[12]), .IN2(A[12]), .QN(n57) );
  NOR2X0 U54 ( .IN1(B[12]), .IN2(A[12]), .QN(n56) );
  XOR2X1 U55 ( .IN1(n62), .IN2(n60), .Q(SUM[11]) );
  OA21X1 U56 ( .IN1(n63), .IN2(n64), .IN3(n65), .Q(n60) );
  NAND2X0 U57 ( .IN1(n7), .IN2(n61), .QN(n62) );
  NAND2X0 U58 ( .IN1(B[11]), .IN2(A[11]), .QN(n61) );
  NOR2X0 U59 ( .IN1(B[11]), .IN2(A[11]), .QN(n59) );
  XNOR2X1 U60 ( .IN1(n64), .IN2(n66), .Q(SUM[10]) );
  NOR2X0 U61 ( .IN1(n8), .IN2(n63), .QN(n66) );
  NOR2X0 U62 ( .IN1(B[10]), .IN2(A[10]), .QN(n63) );
  NAND2X0 U63 ( .IN1(B[10]), .IN2(A[10]), .QN(n65) );
  OA21X1 U64 ( .IN1(n18), .IN2(n16), .IN3(n19), .Q(n64) );
  NAND2X0 U65 ( .IN1(B[9]), .IN2(A[9]), .QN(n19) );
  OA21X1 U66 ( .IN1(n21), .IN2(n23), .IN3(n22), .Q(n16) );
  NAND2X0 U67 ( .IN1(B[8]), .IN2(A[8]), .QN(n22) );
  NOR2X0 U68 ( .IN1(B[8]), .IN2(A[8]), .QN(n23) );
  OA21X1 U69 ( .IN1(n27), .IN2(n25), .IN3(n26), .Q(n21) );
  NAND2X0 U70 ( .IN1(B[7]), .IN2(A[7]), .QN(n26) );
  OA21X1 U71 ( .IN1(n30), .IN2(n28), .IN3(n31), .Q(n25) );
  NAND2X0 U72 ( .IN1(B[6]), .IN2(A[6]), .QN(n31) );
  OA21X1 U73 ( .IN1(n32), .IN2(n34), .IN3(n35), .Q(n28) );
  NAND2X0 U74 ( .IN1(B[5]), .IN2(A[5]), .QN(n35) );
  NOR2X0 U75 ( .IN1(B[5]), .IN2(A[5]), .QN(n34) );
  AOI21X1 U76 ( .IN1(n14), .IN2(n1), .IN3(n37), .QN(n32) );
  AND2X1 U77 ( .IN1(B[4]), .IN2(A[4]), .Q(n37) );
  NOR2X0 U78 ( .IN1(B[4]), .IN2(A[4]), .QN(n38) );
  NOR2X0 U79 ( .IN1(B[6]), .IN2(A[6]), .QN(n30) );
  NOR2X0 U80 ( .IN1(B[7]), .IN2(A[7]), .QN(n27) );
  NOR2X0 U81 ( .IN1(B[9]), .IN2(A[9]), .QN(n18) );
endmodule


module betterNeighborsInMyCluster_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [3:0] A;
  input [15:0] B;
  output [19:0] PRODUCT;
  input TC;
  wire   \ab[3][15] , \ab[3][14] , \ab[3][13] , \ab[3][12] , \ab[3][11] ,
         \ab[3][10] , \ab[3][9] , \ab[3][8] , \ab[3][7] , \ab[3][6] ,
         \ab[3][5] , \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] ,
         \ab[3][0] , \SUMB[3][13] , \SUMB[3][12] , \SUMB[3][11] ,
         \SUMB[3][10] , \SUMB[3][9] , \SUMB[3][8] , \SUMB[3][7] , \SUMB[3][6] ,
         \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] , \SUMB[3][1] ,
         \SUMB[3][0] , \A1[15] , \A1[14] , \A1[13] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[5] , \A1[4] ,
         \A1[3] , \A1[2] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30;
  assign \ab[3][15]  = B[15];
  assign \ab[3][14]  = B[14];
  assign \ab[3][13]  = B[13];
  assign \ab[3][12]  = B[12];
  assign \ab[3][11]  = B[11];
  assign \ab[3][10]  = B[10];
  assign \ab[3][9]  = B[9];
  assign \ab[3][8]  = B[8];
  assign \ab[3][7]  = B[7];
  assign \ab[3][6]  = B[6];
  assign \ab[3][5]  = B[5];
  assign \ab[3][4]  = B[4];
  assign \ab[3][3]  = B[3];
  assign \ab[3][2]  = B[2];
  assign \ab[3][1]  = B[1];
  assign PRODUCT[1] = \ab[3][0] ;
  assign \ab[3][0]  = B[0];

  betterNeighborsInMyCluster_DW01_add_10 FS_1 ( .A({1'b0, \ab[3][15] , 
        \A1[15] , \A1[14] , \A1[13] , \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \A1[5] , \A1[4] , \A1[3] , \A1[2] , 
        \SUMB[3][0] , \ab[3][1] }), .B({1'b0, n30, n14, n15, n13, n12, n7, n6, 
        n5, n4, n10, n9, n8, n11, n3, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(
        PRODUCT[19:2]) );
  AND2X1 U2 ( .IN1(n21), .IN2(\SUMB[3][1] ), .Q(n3) );
  AND2X1 U3 ( .IN1(n19), .IN2(\SUMB[3][6] ), .Q(n4) );
  AND2X1 U4 ( .IN1(n20), .IN2(\SUMB[3][7] ), .Q(n5) );
  AND2X1 U5 ( .IN1(n24), .IN2(\SUMB[3][8] ), .Q(n6) );
  AND2X1 U6 ( .IN1(n25), .IN2(\SUMB[3][9] ), .Q(n7) );
  AND2X1 U7 ( .IN1(n16), .IN2(\SUMB[3][3] ), .Q(n8) );
  AND2X1 U8 ( .IN1(n17), .IN2(\SUMB[3][4] ), .Q(n9) );
  AND2X1 U9 ( .IN1(n18), .IN2(\SUMB[3][5] ), .Q(n10) );
  AND2X1 U10 ( .IN1(n22), .IN2(\SUMB[3][2] ), .Q(n11) );
  AND2X1 U11 ( .IN1(n23), .IN2(\SUMB[3][10] ), .Q(n12) );
  AND2X1 U12 ( .IN1(n27), .IN2(\SUMB[3][11] ), .Q(n13) );
  AND2X1 U13 ( .IN1(n29), .IN2(\SUMB[3][13] ), .Q(n14) );
  AND2X1 U14 ( .IN1(n28), .IN2(\SUMB[3][12] ), .Q(n15) );
  AND2X1 U15 ( .IN1(\ab[3][2] ), .IN2(\ab[3][4] ), .Q(n16) );
  AND2X1 U16 ( .IN1(\ab[3][3] ), .IN2(\ab[3][5] ), .Q(n17) );
  AND2X1 U17 ( .IN1(\ab[3][4] ), .IN2(\ab[3][6] ), .Q(n18) );
  AND2X1 U18 ( .IN1(\ab[3][5] ), .IN2(\ab[3][7] ), .Q(n19) );
  AND2X1 U19 ( .IN1(\ab[3][6] ), .IN2(\ab[3][8] ), .Q(n20) );
  AND2X1 U20 ( .IN1(\ab[3][0] ), .IN2(\ab[3][2] ), .Q(n21) );
  AND2X1 U21 ( .IN1(\ab[3][1] ), .IN2(\ab[3][3] ), .Q(n22) );
  AND2X1 U22 ( .IN1(\ab[3][9] ), .IN2(\ab[3][11] ), .Q(n23) );
  AND2X1 U23 ( .IN1(\ab[3][7] ), .IN2(\ab[3][9] ), .Q(n24) );
  AND2X1 U24 ( .IN1(\ab[3][8] ), .IN2(\ab[3][10] ), .Q(n25) );
  AND2X1 U25 ( .IN1(\ab[3][13] ), .IN2(\ab[3][15] ), .Q(n26) );
  AND2X1 U26 ( .IN1(\ab[3][10] ), .IN2(\ab[3][12] ), .Q(n27) );
  AND2X1 U27 ( .IN1(\ab[3][11] ), .IN2(\ab[3][13] ), .Q(n28) );
  AND2X1 U28 ( .IN1(\ab[3][12] ), .IN2(\ab[3][14] ), .Q(n29) );
  AND2X1 U29 ( .IN1(n26), .IN2(\ab[3][14] ), .Q(n30) );
  XOR2X1 U30 ( .IN1(n21), .IN2(\SUMB[3][1] ), .Q(\A1[2] ) );
  XOR2X1 U31 ( .IN1(n22), .IN2(\SUMB[3][2] ), .Q(\A1[3] ) );
  XOR2X1 U32 ( .IN1(n16), .IN2(\SUMB[3][3] ), .Q(\A1[4] ) );
  XOR2X1 U33 ( .IN1(n17), .IN2(\SUMB[3][4] ), .Q(\A1[5] ) );
  XOR2X1 U34 ( .IN1(n18), .IN2(\SUMB[3][5] ), .Q(\A1[6] ) );
  XOR2X1 U35 ( .IN1(n19), .IN2(\SUMB[3][6] ), .Q(\A1[7] ) );
  XOR2X1 U36 ( .IN1(n20), .IN2(\SUMB[3][7] ), .Q(\A1[8] ) );
  XOR2X1 U37 ( .IN1(n24), .IN2(\SUMB[3][8] ), .Q(\A1[9] ) );
  XOR2X1 U38 ( .IN1(n25), .IN2(\SUMB[3][9] ), .Q(\A1[10] ) );
  XOR2X1 U39 ( .IN1(n23), .IN2(\SUMB[3][10] ), .Q(\A1[11] ) );
  XOR2X1 U40 ( .IN1(n27), .IN2(\SUMB[3][11] ), .Q(\A1[12] ) );
  XOR2X1 U41 ( .IN1(n29), .IN2(\SUMB[3][13] ), .Q(\A1[14] ) );
  XOR2X1 U42 ( .IN1(n26), .IN2(\ab[3][14] ), .Q(\A1[15] ) );
  XOR2X1 U43 ( .IN1(n28), .IN2(\SUMB[3][12] ), .Q(\A1[13] ) );
  XOR2X1 U44 ( .IN1(\ab[3][2] ), .IN2(\ab[3][0] ), .Q(\SUMB[3][0] ) );
  XOR2X1 U45 ( .IN1(\ab[3][3] ), .IN2(\ab[3][1] ), .Q(\SUMB[3][1] ) );
  XOR2X1 U46 ( .IN1(\ab[3][4] ), .IN2(\ab[3][2] ), .Q(\SUMB[3][2] ) );
  XOR2X1 U47 ( .IN1(\ab[3][5] ), .IN2(\ab[3][3] ), .Q(\SUMB[3][3] ) );
  XOR2X1 U48 ( .IN1(\ab[3][6] ), .IN2(\ab[3][4] ), .Q(\SUMB[3][4] ) );
  XOR2X1 U49 ( .IN1(\ab[3][7] ), .IN2(\ab[3][5] ), .Q(\SUMB[3][5] ) );
  XOR2X1 U50 ( .IN1(\ab[3][8] ), .IN2(\ab[3][6] ), .Q(\SUMB[3][6] ) );
  XOR2X1 U51 ( .IN1(\ab[3][9] ), .IN2(\ab[3][7] ), .Q(\SUMB[3][7] ) );
  XOR2X1 U52 ( .IN1(\ab[3][10] ), .IN2(\ab[3][8] ), .Q(\SUMB[3][8] ) );
  XOR2X1 U53 ( .IN1(\ab[3][11] ), .IN2(\ab[3][9] ), .Q(\SUMB[3][9] ) );
  XOR2X1 U54 ( .IN1(\ab[3][12] ), .IN2(\ab[3][10] ), .Q(\SUMB[3][10] ) );
  XOR2X1 U55 ( .IN1(\ab[3][13] ), .IN2(\ab[3][11] ), .Q(\SUMB[3][11] ) );
  XOR2X1 U56 ( .IN1(\ab[3][14] ), .IN2(\ab[3][12] ), .Q(\SUMB[3][12] ) );
  XOR2X1 U57 ( .IN1(\ab[3][15] ), .IN2(\ab[3][13] ), .Q(\SUMB[3][13] ) );
endmodule


module betterNeighborsInMyCluster_DW01_add_11 ( A, B, CI, SUM, CO );
  input [29:0] A;
  input [29:0] B;
  output [29:0] SUM;
  input CI;
  output CO;
  wire   \A[14] , \A[13] , \A[12] , \A[11] , \A[10] , \A[9] , \A[8] , \A[7] ,
         \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62;
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

  INVX0 U2 ( .INP(n56), .ZN(n12) );
  INVX0 U3 ( .INP(n52), .ZN(n11) );
  INVX0 U4 ( .INP(n44), .ZN(n9) );
  INVX0 U5 ( .INP(n48), .ZN(n10) );
  INVX0 U6 ( .INP(n40), .ZN(n8) );
  INVX0 U7 ( .INP(n32), .ZN(n6) );
  INVX0 U8 ( .INP(n36), .ZN(n7) );
  INVX0 U9 ( .INP(n28), .ZN(n5) );
  INVX0 U10 ( .INP(n24), .ZN(n4) );
  INVX0 U11 ( .INP(n20), .ZN(n3) );
  INVX0 U12 ( .INP(n60), .ZN(n13) );
  AND2X1 U13 ( .IN1(n59), .IN2(n1), .Q(SUM[15]) );
  OR2X1 U14 ( .IN1(B[15]), .IN2(A[15]), .Q(n1) );
  INVX0 U15 ( .INP(n15), .ZN(n2) );
  XNOR3X1 U16 ( .IN1(B[28]), .IN2(A[28]), .IN3(n14), .Q(SUM[28]) );
  OA21X1 U17 ( .IN1(n15), .IN2(n16), .IN3(n17), .Q(n14) );
  XOR2X1 U18 ( .IN1(n18), .IN2(n16), .Q(SUM[27]) );
  OA21X1 U19 ( .IN1(n19), .IN2(n20), .IN3(n21), .Q(n16) );
  NAND2X0 U20 ( .IN1(n2), .IN2(n17), .QN(n18) );
  NAND2X0 U21 ( .IN1(B[27]), .IN2(A[27]), .QN(n17) );
  NOR2X0 U22 ( .IN1(B[27]), .IN2(A[27]), .QN(n15) );
  XOR2X1 U23 ( .IN1(n22), .IN2(n19), .Q(SUM[26]) );
  OA21X1 U24 ( .IN1(n23), .IN2(n24), .IN3(n25), .Q(n19) );
  NAND2X0 U25 ( .IN1(n3), .IN2(n21), .QN(n22) );
  NAND2X0 U26 ( .IN1(B[26]), .IN2(A[26]), .QN(n21) );
  NOR2X0 U27 ( .IN1(B[26]), .IN2(A[26]), .QN(n20) );
  XOR2X1 U28 ( .IN1(n26), .IN2(n23), .Q(SUM[25]) );
  OA21X1 U29 ( .IN1(n27), .IN2(n28), .IN3(n29), .Q(n23) );
  NAND2X0 U30 ( .IN1(n4), .IN2(n25), .QN(n26) );
  NAND2X0 U31 ( .IN1(B[25]), .IN2(A[25]), .QN(n25) );
  NOR2X0 U32 ( .IN1(B[25]), .IN2(A[25]), .QN(n24) );
  XOR2X1 U33 ( .IN1(n30), .IN2(n27), .Q(SUM[24]) );
  OA21X1 U34 ( .IN1(n31), .IN2(n32), .IN3(n33), .Q(n27) );
  NAND2X0 U35 ( .IN1(n5), .IN2(n29), .QN(n30) );
  NAND2X0 U36 ( .IN1(B[24]), .IN2(A[24]), .QN(n29) );
  NOR2X0 U37 ( .IN1(B[24]), .IN2(A[24]), .QN(n28) );
  XOR2X1 U38 ( .IN1(n34), .IN2(n31), .Q(SUM[23]) );
  OA21X1 U39 ( .IN1(n35), .IN2(n36), .IN3(n37), .Q(n31) );
  NAND2X0 U40 ( .IN1(n6), .IN2(n33), .QN(n34) );
  NAND2X0 U41 ( .IN1(B[23]), .IN2(A[23]), .QN(n33) );
  NOR2X0 U42 ( .IN1(B[23]), .IN2(A[23]), .QN(n32) );
  XOR2X1 U43 ( .IN1(n38), .IN2(n35), .Q(SUM[22]) );
  OA21X1 U44 ( .IN1(n39), .IN2(n40), .IN3(n41), .Q(n35) );
  NAND2X0 U45 ( .IN1(n7), .IN2(n37), .QN(n38) );
  NAND2X0 U46 ( .IN1(B[22]), .IN2(A[22]), .QN(n37) );
  NOR2X0 U47 ( .IN1(B[22]), .IN2(A[22]), .QN(n36) );
  XOR2X1 U48 ( .IN1(n42), .IN2(n39), .Q(SUM[21]) );
  OA21X1 U49 ( .IN1(n43), .IN2(n44), .IN3(n45), .Q(n39) );
  NAND2X0 U50 ( .IN1(n8), .IN2(n41), .QN(n42) );
  NAND2X0 U51 ( .IN1(B[21]), .IN2(A[21]), .QN(n41) );
  NOR2X0 U52 ( .IN1(B[21]), .IN2(A[21]), .QN(n40) );
  XOR2X1 U53 ( .IN1(n46), .IN2(n43), .Q(SUM[20]) );
  OA21X1 U54 ( .IN1(n47), .IN2(n48), .IN3(n49), .Q(n43) );
  NAND2X0 U55 ( .IN1(n9), .IN2(n45), .QN(n46) );
  NAND2X0 U56 ( .IN1(B[20]), .IN2(A[20]), .QN(n45) );
  NOR2X0 U57 ( .IN1(B[20]), .IN2(A[20]), .QN(n44) );
  XOR2X1 U58 ( .IN1(n50), .IN2(n47), .Q(SUM[19]) );
  OA21X1 U59 ( .IN1(n51), .IN2(n52), .IN3(n53), .Q(n47) );
  NAND2X0 U60 ( .IN1(n10), .IN2(n49), .QN(n50) );
  NAND2X0 U61 ( .IN1(B[19]), .IN2(A[19]), .QN(n49) );
  NOR2X0 U62 ( .IN1(B[19]), .IN2(A[19]), .QN(n48) );
  XOR2X1 U63 ( .IN1(n54), .IN2(n51), .Q(SUM[18]) );
  OA21X1 U64 ( .IN1(n55), .IN2(n56), .IN3(n57), .Q(n51) );
  NAND2X0 U65 ( .IN1(n11), .IN2(n53), .QN(n54) );
  NAND2X0 U66 ( .IN1(B[18]), .IN2(A[18]), .QN(n53) );
  NOR2X0 U67 ( .IN1(B[18]), .IN2(A[18]), .QN(n52) );
  XOR2X1 U68 ( .IN1(n58), .IN2(n55), .Q(SUM[17]) );
  OA21X1 U69 ( .IN1(n59), .IN2(n60), .IN3(n61), .Q(n55) );
  NAND2X0 U70 ( .IN1(n12), .IN2(n57), .QN(n58) );
  NAND2X0 U71 ( .IN1(B[17]), .IN2(A[17]), .QN(n57) );
  NOR2X0 U72 ( .IN1(B[17]), .IN2(A[17]), .QN(n56) );
  XOR2X1 U73 ( .IN1(n62), .IN2(n59), .Q(SUM[16]) );
  NAND2X0 U74 ( .IN1(n13), .IN2(n61), .QN(n62) );
  NAND2X0 U75 ( .IN1(B[16]), .IN2(A[16]), .QN(n61) );
  NOR2X0 U76 ( .IN1(B[16]), .IN2(A[16]), .QN(n60) );
  NAND2X0 U77 ( .IN1(B[15]), .IN2(A[15]), .QN(n59) );
endmodule


module betterNeighborsInMyCluster_DW02_mult_1 ( A, B, TC, PRODUCT );
  input [15:0] A;
  input [15:0] B;
  output [31:0] PRODUCT;
  input TC;
  wire   \ab[15][15] , \ab[15][14] , \ab[15][13] , \ab[15][12] , \ab[15][11] ,
         \ab[15][10] , \ab[15][9] , \ab[15][8] , \ab[15][7] , \ab[15][6] ,
         \ab[15][5] , \ab[15][4] , \ab[15][3] , \ab[15][2] , \ab[15][1] ,
         \ab[15][0] , \ab[14][15] , \ab[14][14] , \ab[14][13] , \ab[14][12] ,
         \ab[14][11] , \ab[14][10] , \ab[14][9] , \ab[14][8] , \ab[14][7] ,
         \ab[14][6] , \ab[14][5] , \ab[14][4] , \ab[14][3] , \ab[14][2] ,
         \ab[14][1] , \ab[14][0] , \ab[13][15] , \ab[13][14] , \ab[13][13] ,
         \ab[13][12] , \ab[13][11] , \ab[13][10] , \ab[13][9] , \ab[13][8] ,
         \ab[13][7] , \ab[13][6] , \ab[13][5] , \ab[13][4] , \ab[13][3] ,
         \ab[13][2] , \ab[13][1] , \ab[13][0] , \ab[12][15] , \ab[12][14] ,
         \ab[12][13] , \ab[12][12] , \ab[12][11] , \ab[12][10] , \ab[12][9] ,
         \ab[12][8] , \ab[12][7] , \ab[12][6] , \ab[12][5] , \ab[12][4] ,
         \ab[12][3] , \ab[12][2] , \ab[12][1] , \ab[12][0] , \ab[11][15] ,
         \ab[11][14] , \ab[11][13] , \ab[11][12] , \ab[11][11] , \ab[11][10] ,
         \ab[11][9] , \ab[11][8] , \ab[11][7] , \ab[11][6] , \ab[11][5] ,
         \ab[11][4] , \ab[11][3] , \ab[11][2] , \ab[11][1] , \ab[11][0] ,
         \ab[10][15] , \ab[10][14] , \ab[10][13] , \ab[10][12] , \ab[10][11] ,
         \ab[10][10] , \ab[10][9] , \ab[10][8] , \ab[10][7] , \ab[10][6] ,
         \ab[10][5] , \ab[10][4] , \ab[10][3] , \ab[10][2] , \ab[10][1] ,
         \ab[10][0] , \ab[9][15] , \ab[9][14] , \ab[9][13] , \ab[9][12] ,
         \ab[9][11] , \ab[9][10] , \ab[9][9] , \ab[9][8] , \ab[9][7] ,
         \ab[9][6] , \ab[9][5] , \ab[9][4] , \ab[9][3] , \ab[9][2] ,
         \ab[9][1] , \ab[9][0] , \ab[8][15] , \ab[8][14] , \ab[8][13] ,
         \ab[8][12] , \ab[8][11] , \ab[8][10] , \ab[8][9] , \ab[8][8] ,
         \ab[8][7] , \ab[8][6] , \ab[8][5] , \ab[8][4] , \ab[8][3] ,
         \ab[8][2] , \ab[8][1] , \ab[8][0] , \ab[7][15] , \ab[7][14] ,
         \ab[7][13] , \ab[7][12] , \ab[7][11] , \ab[7][10] , \ab[7][9] ,
         \ab[7][8] , \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] ,
         \ab[7][3] , \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][15] ,
         \ab[6][14] , \ab[6][13] , \ab[6][12] , \ab[6][11] , \ab[6][10] ,
         \ab[6][9] , \ab[6][8] , \ab[6][7] , \ab[6][6] , \ab[6][5] ,
         \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] , \ab[6][0] ,
         \ab[5][15] , \ab[5][14] , \ab[5][13] , \ab[5][12] , \ab[5][11] ,
         \ab[5][10] , \ab[5][9] , \ab[5][8] , \ab[5][7] , \ab[5][6] ,
         \ab[5][5] , \ab[5][4] , \ab[5][3] , \ab[5][2] , \ab[5][1] ,
         \ab[5][0] , \ab[4][15] , \ab[4][14] , \ab[4][13] , \ab[4][12] ,
         \ab[4][11] , \ab[4][10] , \ab[4][9] , \ab[4][8] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][15] , \ab[3][14] , \ab[3][13] ,
         \ab[3][12] , \ab[3][11] , \ab[3][10] , \ab[3][9] , \ab[3][8] ,
         \ab[3][7] , \ab[3][6] , \ab[3][5] , \ab[3][4] , \ab[3][3] ,
         \ab[3][2] , \ab[3][1] , \ab[3][0] , \ab[2][15] , \ab[2][14] ,
         \ab[2][13] , \ab[2][12] , \ab[2][11] , \ab[2][10] , \ab[2][9] ,
         \ab[2][8] , \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] ,
         \ab[2][3] , \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][15] ,
         \ab[1][14] , \ab[1][13] , \ab[1][12] , \ab[1][11] , \ab[1][10] ,
         \ab[1][9] , \ab[1][8] , \ab[1][7] , \ab[1][6] , \ab[1][5] ,
         \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] , \ab[1][0] ,
         \ab[0][15] , \ab[0][14] , \ab[0][13] , \ab[0][12] , \ab[0][11] ,
         \ab[0][10] , \ab[0][9] , \ab[0][8] , \ab[0][7] , \ab[0][6] ,
         \ab[0][5] , \ab[0][4] , \ab[0][3] , \ab[0][2] , \ab[0][1] ,
         \CARRYB[15][14] , \CARRYB[15][13] , \CARRYB[15][12] ,
         \CARRYB[15][11] , \CARRYB[15][10] , \CARRYB[15][9] , \CARRYB[15][8] ,
         \CARRYB[15][7] , \CARRYB[15][6] , \CARRYB[15][5] , \CARRYB[15][4] ,
         \CARRYB[15][3] , \CARRYB[15][2] , \CARRYB[15][1] , \CARRYB[15][0] ,
         \CARRYB[14][14] , \CARRYB[14][13] , \CARRYB[14][12] ,
         \CARRYB[14][11] , \CARRYB[14][10] , \CARRYB[14][9] , \CARRYB[14][8] ,
         \CARRYB[14][7] , \CARRYB[14][6] , \CARRYB[14][5] , \CARRYB[14][4] ,
         \CARRYB[14][3] , \CARRYB[14][2] , \CARRYB[14][1] , \CARRYB[14][0] ,
         \CARRYB[13][14] , \CARRYB[13][13] , \CARRYB[13][12] ,
         \CARRYB[13][11] , \CARRYB[13][10] , \CARRYB[13][9] , \CARRYB[13][8] ,
         \CARRYB[13][7] , \CARRYB[13][6] , \CARRYB[13][5] , \CARRYB[13][4] ,
         \CARRYB[13][3] , \CARRYB[13][2] , \CARRYB[13][1] , \CARRYB[13][0] ,
         \CARRYB[12][14] , \CARRYB[12][13] , \CARRYB[12][12] ,
         \CARRYB[12][11] , \CARRYB[12][10] , \CARRYB[12][9] , \CARRYB[12][8] ,
         \CARRYB[12][7] , \CARRYB[12][6] , \CARRYB[12][5] , \CARRYB[12][4] ,
         \CARRYB[12][3] , \CARRYB[12][2] , \CARRYB[12][1] , \CARRYB[12][0] ,
         \CARRYB[11][14] , \CARRYB[11][13] , \CARRYB[11][12] ,
         \CARRYB[11][11] , \CARRYB[11][10] , \CARRYB[11][9] , \CARRYB[11][8] ,
         \CARRYB[11][7] , \CARRYB[11][6] , \CARRYB[11][5] , \CARRYB[11][4] ,
         \CARRYB[11][3] , \CARRYB[11][2] , \CARRYB[11][1] , \CARRYB[11][0] ,
         \CARRYB[10][14] , \CARRYB[10][13] , \CARRYB[10][12] ,
         \CARRYB[10][11] , \CARRYB[10][10] , \CARRYB[10][9] , \CARRYB[10][8] ,
         \CARRYB[10][7] , \CARRYB[10][6] , \CARRYB[10][5] , \CARRYB[10][4] ,
         \CARRYB[10][3] , \CARRYB[10][2] , \CARRYB[10][1] , \CARRYB[10][0] ,
         \CARRYB[9][14] , \CARRYB[9][13] , \CARRYB[9][12] , \CARRYB[9][11] ,
         \CARRYB[9][10] , \CARRYB[9][9] , \CARRYB[9][8] , \CARRYB[9][7] ,
         \CARRYB[9][6] , \CARRYB[9][5] , \CARRYB[9][4] , \CARRYB[9][3] ,
         \CARRYB[9][2] , \CARRYB[9][1] , \CARRYB[9][0] , \CARRYB[8][14] ,
         \CARRYB[8][13] , \CARRYB[8][12] , \CARRYB[8][11] , \CARRYB[8][10] ,
         \CARRYB[8][9] , \CARRYB[8][8] , \CARRYB[8][7] , \CARRYB[8][6] ,
         \CARRYB[8][5] , \CARRYB[8][4] , \CARRYB[8][3] , \CARRYB[8][2] ,
         \CARRYB[8][1] , \CARRYB[8][0] , \CARRYB[7][14] , \CARRYB[7][13] ,
         \CARRYB[7][12] , \CARRYB[7][11] , \CARRYB[7][10] , \CARRYB[7][9] ,
         \CARRYB[7][8] , \CARRYB[7][7] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][14] , \CARRYB[6][13] , \CARRYB[6][12] ,
         \CARRYB[6][11] , \CARRYB[6][10] , \CARRYB[6][9] , \CARRYB[6][8] ,
         \CARRYB[6][7] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][14] , \CARRYB[5][13] , \CARRYB[5][12] , \CARRYB[5][11] ,
         \CARRYB[5][10] , \CARRYB[5][9] , \CARRYB[5][8] , \CARRYB[5][7] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][14] ,
         \CARRYB[4][13] , \CARRYB[4][12] , \CARRYB[4][11] , \CARRYB[4][10] ,
         \CARRYB[4][9] , \CARRYB[4][8] , \CARRYB[4][7] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][14] , \CARRYB[3][13] ,
         \CARRYB[3][12] , \CARRYB[3][11] , \CARRYB[3][10] , \CARRYB[3][9] ,
         \CARRYB[3][8] , \CARRYB[3][7] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][14] , \CARRYB[2][13] , \CARRYB[2][12] ,
         \CARRYB[2][11] , \CARRYB[2][10] , \CARRYB[2][9] , \CARRYB[2][8] ,
         \CARRYB[2][7] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[15][14] , \SUMB[15][13] , \SUMB[15][12] , \SUMB[15][11] ,
         \SUMB[15][10] , \SUMB[15][9] , \SUMB[15][8] , \SUMB[15][7] ,
         \SUMB[15][6] , \SUMB[15][5] , \SUMB[15][4] , \SUMB[15][3] ,
         \SUMB[15][2] , \SUMB[15][1] , \SUMB[15][0] , \SUMB[14][14] ,
         \SUMB[14][13] , \SUMB[14][12] , \SUMB[14][11] , \SUMB[14][10] ,
         \SUMB[14][9] , \SUMB[14][8] , \SUMB[14][7] , \SUMB[14][6] ,
         \SUMB[14][5] , \SUMB[14][4] , \SUMB[14][3] , \SUMB[14][2] ,
         \SUMB[14][1] , \SUMB[13][14] , \SUMB[13][13] , \SUMB[13][12] ,
         \SUMB[13][11] , \SUMB[13][10] , \SUMB[13][9] , \SUMB[13][8] ,
         \SUMB[13][7] , \SUMB[13][6] , \SUMB[13][5] , \SUMB[13][4] ,
         \SUMB[13][3] , \SUMB[13][2] , \SUMB[13][1] , \SUMB[12][14] ,
         \SUMB[12][13] , \SUMB[12][12] , \SUMB[12][11] , \SUMB[12][10] ,
         \SUMB[12][9] , \SUMB[12][8] , \SUMB[12][7] , \SUMB[12][6] ,
         \SUMB[12][5] , \SUMB[12][4] , \SUMB[12][3] , \SUMB[12][2] ,
         \SUMB[12][1] , \SUMB[11][14] , \SUMB[11][13] , \SUMB[11][12] ,
         \SUMB[11][11] , \SUMB[11][10] , \SUMB[11][9] , \SUMB[11][8] ,
         \SUMB[11][7] , \SUMB[11][6] , \SUMB[11][5] , \SUMB[11][4] ,
         \SUMB[11][3] , \SUMB[11][2] , \SUMB[11][1] , \SUMB[10][14] ,
         \SUMB[10][13] , \SUMB[10][12] , \SUMB[10][11] , \SUMB[10][10] ,
         \SUMB[10][9] , \SUMB[10][8] , \SUMB[10][7] , \SUMB[10][6] ,
         \SUMB[10][5] , \SUMB[10][4] , \SUMB[10][3] , \SUMB[10][2] ,
         \SUMB[10][1] , \SUMB[9][14] , \SUMB[9][13] , \SUMB[9][12] ,
         \SUMB[9][11] , \SUMB[9][10] , \SUMB[9][9] , \SUMB[9][8] ,
         \SUMB[9][7] , \SUMB[9][6] , \SUMB[9][5] , \SUMB[9][4] , \SUMB[9][3] ,
         \SUMB[9][2] , \SUMB[9][1] , \SUMB[8][14] , \SUMB[8][13] ,
         \SUMB[8][12] , \SUMB[8][11] , \SUMB[8][10] , \SUMB[8][9] ,
         \SUMB[8][8] , \SUMB[8][7] , \SUMB[8][6] , \SUMB[8][5] , \SUMB[8][4] ,
         \SUMB[8][3] , \SUMB[8][2] , \SUMB[8][1] , \SUMB[7][14] ,
         \SUMB[7][13] , \SUMB[7][12] , \SUMB[7][11] , \SUMB[7][10] ,
         \SUMB[7][9] , \SUMB[7][8] , \SUMB[7][7] , \SUMB[7][6] , \SUMB[7][5] ,
         \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] , \SUMB[7][1] , \SUMB[6][14] ,
         \SUMB[6][13] , \SUMB[6][12] , \SUMB[6][11] , \SUMB[6][10] ,
         \SUMB[6][9] , \SUMB[6][8] , \SUMB[6][7] , \SUMB[6][6] , \SUMB[6][5] ,
         \SUMB[6][4] , \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][14] ,
         \SUMB[5][13] , \SUMB[5][12] , \SUMB[5][11] , \SUMB[5][10] ,
         \SUMB[5][9] , \SUMB[5][8] , \SUMB[5][7] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][14] ,
         \SUMB[4][13] , \SUMB[4][12] , \SUMB[4][11] , \SUMB[4][10] ,
         \SUMB[4][9] , \SUMB[4][8] , \SUMB[4][7] , \SUMB[4][6] , \SUMB[4][5] ,
         \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] , \SUMB[3][14] ,
         \SUMB[3][13] , \SUMB[3][12] , \SUMB[3][11] , \SUMB[3][10] ,
         \SUMB[3][9] , \SUMB[3][8] , \SUMB[3][7] , \SUMB[3][6] , \SUMB[3][5] ,
         \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] , \SUMB[3][1] , \SUMB[2][14] ,
         \SUMB[2][13] , \SUMB[2][12] , \SUMB[2][11] , \SUMB[2][10] ,
         \SUMB[2][9] , \SUMB[2][8] , \SUMB[2][7] , \SUMB[2][6] , \SUMB[2][5] ,
         \SUMB[2][4] , \SUMB[2][3] , \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][14] ,
         \SUMB[1][13] , \SUMB[1][12] , \SUMB[1][11] , \SUMB[1][10] ,
         \SUMB[1][9] , \SUMB[1][8] , \SUMB[1][7] , \SUMB[1][6] , \SUMB[1][5] ,
         \SUMB[1][4] , \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[28] ,
         \A1[27] , \A1[26] , \A1[25] , \A1[24] , \A1[23] , \A1[22] , \A1[21] ,
         \A1[20] , \A1[19] , \A1[18] , \A1[17] , \A1[16] , \A1[15] , \A1[14] ,
         \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] ,
         \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64;
  wire   SYNOPSYS_UNCONNECTED__0;

  FADDX1 S4_0 ( .A(\ab[15][0] ), .B(\CARRYB[14][0] ), .CI(\SUMB[14][1] ), .CO(
        \CARRYB[15][0] ), .S(\SUMB[15][0] ) );
  FADDX1 S4_1 ( .A(\ab[15][1] ), .B(\CARRYB[14][1] ), .CI(\SUMB[14][2] ), .CO(
        \CARRYB[15][1] ), .S(\SUMB[15][1] ) );
  FADDX1 S4_2 ( .A(\ab[15][2] ), .B(\CARRYB[14][2] ), .CI(\SUMB[14][3] ), .CO(
        \CARRYB[15][2] ), .S(\SUMB[15][2] ) );
  FADDX1 S4_3 ( .A(\ab[15][3] ), .B(\CARRYB[14][3] ), .CI(\SUMB[14][4] ), .CO(
        \CARRYB[15][3] ), .S(\SUMB[15][3] ) );
  FADDX1 S4_4 ( .A(\ab[15][4] ), .B(\CARRYB[14][4] ), .CI(\SUMB[14][5] ), .CO(
        \CARRYB[15][4] ), .S(\SUMB[15][4] ) );
  FADDX1 S4_5 ( .A(\ab[15][5] ), .B(\CARRYB[14][5] ), .CI(\SUMB[14][6] ), .CO(
        \CARRYB[15][5] ), .S(\SUMB[15][5] ) );
  FADDX1 S4_6 ( .A(\ab[15][6] ), .B(\CARRYB[14][6] ), .CI(\SUMB[14][7] ), .CO(
        \CARRYB[15][6] ), .S(\SUMB[15][6] ) );
  FADDX1 S4_7 ( .A(\ab[15][7] ), .B(\CARRYB[14][7] ), .CI(\SUMB[14][8] ), .CO(
        \CARRYB[15][7] ), .S(\SUMB[15][7] ) );
  FADDX1 S4_8 ( .A(\ab[15][8] ), .B(\CARRYB[14][8] ), .CI(\SUMB[14][9] ), .CO(
        \CARRYB[15][8] ), .S(\SUMB[15][8] ) );
  FADDX1 S4_9 ( .A(\ab[15][9] ), .B(\CARRYB[14][9] ), .CI(\SUMB[14][10] ), 
        .CO(\CARRYB[15][9] ), .S(\SUMB[15][9] ) );
  FADDX1 S4_10 ( .A(\ab[15][10] ), .B(\CARRYB[14][10] ), .CI(\SUMB[14][11] ), 
        .CO(\CARRYB[15][10] ), .S(\SUMB[15][10] ) );
  FADDX1 S4_11 ( .A(\ab[15][11] ), .B(\CARRYB[14][11] ), .CI(\SUMB[14][12] ), 
        .CO(\CARRYB[15][11] ), .S(\SUMB[15][11] ) );
  FADDX1 S4_12 ( .A(\ab[15][12] ), .B(\CARRYB[14][12] ), .CI(\SUMB[14][13] ), 
        .CO(\CARRYB[15][12] ), .S(\SUMB[15][12] ) );
  FADDX1 S4_13 ( .A(\ab[15][13] ), .B(\CARRYB[14][13] ), .CI(\SUMB[14][14] ), 
        .CO(\CARRYB[15][13] ), .S(\SUMB[15][13] ) );
  FADDX1 S5_14 ( .A(\ab[15][14] ), .B(\CARRYB[14][14] ), .CI(\ab[14][15] ), 
        .CO(\CARRYB[15][14] ), .S(\SUMB[15][14] ) );
  FADDX1 S1_14_0 ( .A(\ab[14][0] ), .B(\CARRYB[13][0] ), .CI(\SUMB[13][1] ), 
        .CO(\CARRYB[14][0] ), .S(\A1[12] ) );
  FADDX1 S2_14_1 ( .A(\ab[14][1] ), .B(\CARRYB[13][1] ), .CI(\SUMB[13][2] ), 
        .CO(\CARRYB[14][1] ), .S(\SUMB[14][1] ) );
  FADDX1 S2_14_2 ( .A(\ab[14][2] ), .B(\CARRYB[13][2] ), .CI(\SUMB[13][3] ), 
        .CO(\CARRYB[14][2] ), .S(\SUMB[14][2] ) );
  FADDX1 S2_14_3 ( .A(\ab[14][3] ), .B(\CARRYB[13][3] ), .CI(\SUMB[13][4] ), 
        .CO(\CARRYB[14][3] ), .S(\SUMB[14][3] ) );
  FADDX1 S2_14_4 ( .A(\ab[14][4] ), .B(\CARRYB[13][4] ), .CI(\SUMB[13][5] ), 
        .CO(\CARRYB[14][4] ), .S(\SUMB[14][4] ) );
  FADDX1 S2_14_5 ( .A(\ab[14][5] ), .B(\CARRYB[13][5] ), .CI(\SUMB[13][6] ), 
        .CO(\CARRYB[14][5] ), .S(\SUMB[14][5] ) );
  FADDX1 S2_14_6 ( .A(\ab[14][6] ), .B(\CARRYB[13][6] ), .CI(\SUMB[13][7] ), 
        .CO(\CARRYB[14][6] ), .S(\SUMB[14][6] ) );
  FADDX1 S2_14_7 ( .A(\ab[14][7] ), .B(\CARRYB[13][7] ), .CI(\SUMB[13][8] ), 
        .CO(\CARRYB[14][7] ), .S(\SUMB[14][7] ) );
  FADDX1 S2_14_8 ( .A(\ab[14][8] ), .B(\CARRYB[13][8] ), .CI(\SUMB[13][9] ), 
        .CO(\CARRYB[14][8] ), .S(\SUMB[14][8] ) );
  FADDX1 S2_14_9 ( .A(\ab[14][9] ), .B(\CARRYB[13][9] ), .CI(\SUMB[13][10] ), 
        .CO(\CARRYB[14][9] ), .S(\SUMB[14][9] ) );
  FADDX1 S2_14_10 ( .A(\ab[14][10] ), .B(\CARRYB[13][10] ), .CI(\SUMB[13][11] ), .CO(\CARRYB[14][10] ), .S(\SUMB[14][10] ) );
  FADDX1 S2_14_11 ( .A(\ab[14][11] ), .B(\CARRYB[13][11] ), .CI(\SUMB[13][12] ), .CO(\CARRYB[14][11] ), .S(\SUMB[14][11] ) );
  FADDX1 S2_14_12 ( .A(\ab[14][12] ), .B(\CARRYB[13][12] ), .CI(\SUMB[13][13] ), .CO(\CARRYB[14][12] ), .S(\SUMB[14][12] ) );
  FADDX1 S2_14_13 ( .A(\ab[14][13] ), .B(\CARRYB[13][13] ), .CI(\SUMB[13][14] ), .CO(\CARRYB[14][13] ), .S(\SUMB[14][13] ) );
  FADDX1 S3_14_14 ( .A(\ab[14][14] ), .B(\CARRYB[13][14] ), .CI(\ab[13][15] ), 
        .CO(\CARRYB[14][14] ), .S(\SUMB[14][14] ) );
  FADDX1 S1_13_0 ( .A(\ab[13][0] ), .B(\CARRYB[12][0] ), .CI(\SUMB[12][1] ), 
        .CO(\CARRYB[13][0] ), .S(\A1[11] ) );
  FADDX1 S2_13_1 ( .A(\ab[13][1] ), .B(\CARRYB[12][1] ), .CI(\SUMB[12][2] ), 
        .CO(\CARRYB[13][1] ), .S(\SUMB[13][1] ) );
  FADDX1 S2_13_2 ( .A(\ab[13][2] ), .B(\CARRYB[12][2] ), .CI(\SUMB[12][3] ), 
        .CO(\CARRYB[13][2] ), .S(\SUMB[13][2] ) );
  FADDX1 S2_13_3 ( .A(\ab[13][3] ), .B(\CARRYB[12][3] ), .CI(\SUMB[12][4] ), 
        .CO(\CARRYB[13][3] ), .S(\SUMB[13][3] ) );
  FADDX1 S2_13_4 ( .A(\ab[13][4] ), .B(\CARRYB[12][4] ), .CI(\SUMB[12][5] ), 
        .CO(\CARRYB[13][4] ), .S(\SUMB[13][4] ) );
  FADDX1 S2_13_5 ( .A(\ab[13][5] ), .B(\CARRYB[12][5] ), .CI(\SUMB[12][6] ), 
        .CO(\CARRYB[13][5] ), .S(\SUMB[13][5] ) );
  FADDX1 S2_13_6 ( .A(\ab[13][6] ), .B(\CARRYB[12][6] ), .CI(\SUMB[12][7] ), 
        .CO(\CARRYB[13][6] ), .S(\SUMB[13][6] ) );
  FADDX1 S2_13_7 ( .A(\ab[13][7] ), .B(\CARRYB[12][7] ), .CI(\SUMB[12][8] ), 
        .CO(\CARRYB[13][7] ), .S(\SUMB[13][7] ) );
  FADDX1 S2_13_8 ( .A(\ab[13][8] ), .B(\CARRYB[12][8] ), .CI(\SUMB[12][9] ), 
        .CO(\CARRYB[13][8] ), .S(\SUMB[13][8] ) );
  FADDX1 S2_13_9 ( .A(\ab[13][9] ), .B(\CARRYB[12][9] ), .CI(\SUMB[12][10] ), 
        .CO(\CARRYB[13][9] ), .S(\SUMB[13][9] ) );
  FADDX1 S2_13_10 ( .A(\ab[13][10] ), .B(\CARRYB[12][10] ), .CI(\SUMB[12][11] ), .CO(\CARRYB[13][10] ), .S(\SUMB[13][10] ) );
  FADDX1 S2_13_11 ( .A(\ab[13][11] ), .B(\CARRYB[12][11] ), .CI(\SUMB[12][12] ), .CO(\CARRYB[13][11] ), .S(\SUMB[13][11] ) );
  FADDX1 S2_13_12 ( .A(\ab[13][12] ), .B(\CARRYB[12][12] ), .CI(\SUMB[12][13] ), .CO(\CARRYB[13][12] ), .S(\SUMB[13][12] ) );
  FADDX1 S2_13_13 ( .A(\ab[13][13] ), .B(\CARRYB[12][13] ), .CI(\SUMB[12][14] ), .CO(\CARRYB[13][13] ), .S(\SUMB[13][13] ) );
  FADDX1 S3_13_14 ( .A(\ab[13][14] ), .B(\CARRYB[12][14] ), .CI(\ab[12][15] ), 
        .CO(\CARRYB[13][14] ), .S(\SUMB[13][14] ) );
  FADDX1 S1_12_0 ( .A(\ab[12][0] ), .B(\CARRYB[11][0] ), .CI(\SUMB[11][1] ), 
        .CO(\CARRYB[12][0] ), .S(\A1[10] ) );
  FADDX1 S2_12_1 ( .A(\ab[12][1] ), .B(\CARRYB[11][1] ), .CI(\SUMB[11][2] ), 
        .CO(\CARRYB[12][1] ), .S(\SUMB[12][1] ) );
  FADDX1 S2_12_2 ( .A(\ab[12][2] ), .B(\CARRYB[11][2] ), .CI(\SUMB[11][3] ), 
        .CO(\CARRYB[12][2] ), .S(\SUMB[12][2] ) );
  FADDX1 S2_12_3 ( .A(\ab[12][3] ), .B(\CARRYB[11][3] ), .CI(\SUMB[11][4] ), 
        .CO(\CARRYB[12][3] ), .S(\SUMB[12][3] ) );
  FADDX1 S2_12_4 ( .A(\ab[12][4] ), .B(\CARRYB[11][4] ), .CI(\SUMB[11][5] ), 
        .CO(\CARRYB[12][4] ), .S(\SUMB[12][4] ) );
  FADDX1 S2_12_5 ( .A(\ab[12][5] ), .B(\CARRYB[11][5] ), .CI(\SUMB[11][6] ), 
        .CO(\CARRYB[12][5] ), .S(\SUMB[12][5] ) );
  FADDX1 S2_12_6 ( .A(\ab[12][6] ), .B(\CARRYB[11][6] ), .CI(\SUMB[11][7] ), 
        .CO(\CARRYB[12][6] ), .S(\SUMB[12][6] ) );
  FADDX1 S2_12_7 ( .A(\ab[12][7] ), .B(\CARRYB[11][7] ), .CI(\SUMB[11][8] ), 
        .CO(\CARRYB[12][7] ), .S(\SUMB[12][7] ) );
  FADDX1 S2_12_8 ( .A(\ab[12][8] ), .B(\CARRYB[11][8] ), .CI(\SUMB[11][9] ), 
        .CO(\CARRYB[12][8] ), .S(\SUMB[12][8] ) );
  FADDX1 S2_12_9 ( .A(\ab[12][9] ), .B(\CARRYB[11][9] ), .CI(\SUMB[11][10] ), 
        .CO(\CARRYB[12][9] ), .S(\SUMB[12][9] ) );
  FADDX1 S2_12_10 ( .A(\ab[12][10] ), .B(\CARRYB[11][10] ), .CI(\SUMB[11][11] ), .CO(\CARRYB[12][10] ), .S(\SUMB[12][10] ) );
  FADDX1 S2_12_11 ( .A(\ab[12][11] ), .B(\CARRYB[11][11] ), .CI(\SUMB[11][12] ), .CO(\CARRYB[12][11] ), .S(\SUMB[12][11] ) );
  FADDX1 S2_12_12 ( .A(\ab[12][12] ), .B(\CARRYB[11][12] ), .CI(\SUMB[11][13] ), .CO(\CARRYB[12][12] ), .S(\SUMB[12][12] ) );
  FADDX1 S2_12_13 ( .A(\ab[12][13] ), .B(\CARRYB[11][13] ), .CI(\SUMB[11][14] ), .CO(\CARRYB[12][13] ), .S(\SUMB[12][13] ) );
  FADDX1 S3_12_14 ( .A(\ab[12][14] ), .B(\CARRYB[11][14] ), .CI(\ab[11][15] ), 
        .CO(\CARRYB[12][14] ), .S(\SUMB[12][14] ) );
  FADDX1 S1_11_0 ( .A(\ab[11][0] ), .B(\CARRYB[10][0] ), .CI(\SUMB[10][1] ), 
        .CO(\CARRYB[11][0] ), .S(\A1[9] ) );
  FADDX1 S2_11_1 ( .A(\ab[11][1] ), .B(\CARRYB[10][1] ), .CI(\SUMB[10][2] ), 
        .CO(\CARRYB[11][1] ), .S(\SUMB[11][1] ) );
  FADDX1 S2_11_2 ( .A(\ab[11][2] ), .B(\CARRYB[10][2] ), .CI(\SUMB[10][3] ), 
        .CO(\CARRYB[11][2] ), .S(\SUMB[11][2] ) );
  FADDX1 S2_11_3 ( .A(\ab[11][3] ), .B(\CARRYB[10][3] ), .CI(\SUMB[10][4] ), 
        .CO(\CARRYB[11][3] ), .S(\SUMB[11][3] ) );
  FADDX1 S2_11_4 ( .A(\ab[11][4] ), .B(\CARRYB[10][4] ), .CI(\SUMB[10][5] ), 
        .CO(\CARRYB[11][4] ), .S(\SUMB[11][4] ) );
  FADDX1 S2_11_5 ( .A(\ab[11][5] ), .B(\CARRYB[10][5] ), .CI(\SUMB[10][6] ), 
        .CO(\CARRYB[11][5] ), .S(\SUMB[11][5] ) );
  FADDX1 S2_11_6 ( .A(\ab[11][6] ), .B(\CARRYB[10][6] ), .CI(\SUMB[10][7] ), 
        .CO(\CARRYB[11][6] ), .S(\SUMB[11][6] ) );
  FADDX1 S2_11_7 ( .A(\ab[11][7] ), .B(\CARRYB[10][7] ), .CI(\SUMB[10][8] ), 
        .CO(\CARRYB[11][7] ), .S(\SUMB[11][7] ) );
  FADDX1 S2_11_8 ( .A(\ab[11][8] ), .B(\CARRYB[10][8] ), .CI(\SUMB[10][9] ), 
        .CO(\CARRYB[11][8] ), .S(\SUMB[11][8] ) );
  FADDX1 S2_11_9 ( .A(\ab[11][9] ), .B(\CARRYB[10][9] ), .CI(\SUMB[10][10] ), 
        .CO(\CARRYB[11][9] ), .S(\SUMB[11][9] ) );
  FADDX1 S2_11_10 ( .A(\ab[11][10] ), .B(\CARRYB[10][10] ), .CI(\SUMB[10][11] ), .CO(\CARRYB[11][10] ), .S(\SUMB[11][10] ) );
  FADDX1 S2_11_11 ( .A(\ab[11][11] ), .B(\CARRYB[10][11] ), .CI(\SUMB[10][12] ), .CO(\CARRYB[11][11] ), .S(\SUMB[11][11] ) );
  FADDX1 S2_11_12 ( .A(\ab[11][12] ), .B(\CARRYB[10][12] ), .CI(\SUMB[10][13] ), .CO(\CARRYB[11][12] ), .S(\SUMB[11][12] ) );
  FADDX1 S2_11_13 ( .A(\ab[11][13] ), .B(\CARRYB[10][13] ), .CI(\SUMB[10][14] ), .CO(\CARRYB[11][13] ), .S(\SUMB[11][13] ) );
  FADDX1 S3_11_14 ( .A(\ab[11][14] ), .B(\CARRYB[10][14] ), .CI(\ab[10][15] ), 
        .CO(\CARRYB[11][14] ), .S(\SUMB[11][14] ) );
  FADDX1 S1_10_0 ( .A(\ab[10][0] ), .B(\CARRYB[9][0] ), .CI(\SUMB[9][1] ), 
        .CO(\CARRYB[10][0] ), .S(\A1[8] ) );
  FADDX1 S2_10_1 ( .A(\ab[10][1] ), .B(\CARRYB[9][1] ), .CI(\SUMB[9][2] ), 
        .CO(\CARRYB[10][1] ), .S(\SUMB[10][1] ) );
  FADDX1 S2_10_2 ( .A(\ab[10][2] ), .B(\CARRYB[9][2] ), .CI(\SUMB[9][3] ), 
        .CO(\CARRYB[10][2] ), .S(\SUMB[10][2] ) );
  FADDX1 S2_10_3 ( .A(\ab[10][3] ), .B(\CARRYB[9][3] ), .CI(\SUMB[9][4] ), 
        .CO(\CARRYB[10][3] ), .S(\SUMB[10][3] ) );
  FADDX1 S2_10_4 ( .A(\ab[10][4] ), .B(\CARRYB[9][4] ), .CI(\SUMB[9][5] ), 
        .CO(\CARRYB[10][4] ), .S(\SUMB[10][4] ) );
  FADDX1 S2_10_5 ( .A(\ab[10][5] ), .B(\CARRYB[9][5] ), .CI(\SUMB[9][6] ), 
        .CO(\CARRYB[10][5] ), .S(\SUMB[10][5] ) );
  FADDX1 S2_10_6 ( .A(\ab[10][6] ), .B(\CARRYB[9][6] ), .CI(\SUMB[9][7] ), 
        .CO(\CARRYB[10][6] ), .S(\SUMB[10][6] ) );
  FADDX1 S2_10_7 ( .A(\ab[10][7] ), .B(\CARRYB[9][7] ), .CI(\SUMB[9][8] ), 
        .CO(\CARRYB[10][7] ), .S(\SUMB[10][7] ) );
  FADDX1 S2_10_8 ( .A(\ab[10][8] ), .B(\CARRYB[9][8] ), .CI(\SUMB[9][9] ), 
        .CO(\CARRYB[10][8] ), .S(\SUMB[10][8] ) );
  FADDX1 S2_10_9 ( .A(\ab[10][9] ), .B(\CARRYB[9][9] ), .CI(\SUMB[9][10] ), 
        .CO(\CARRYB[10][9] ), .S(\SUMB[10][9] ) );
  FADDX1 S2_10_10 ( .A(\ab[10][10] ), .B(\CARRYB[9][10] ), .CI(\SUMB[9][11] ), 
        .CO(\CARRYB[10][10] ), .S(\SUMB[10][10] ) );
  FADDX1 S2_10_11 ( .A(\ab[10][11] ), .B(\CARRYB[9][11] ), .CI(\SUMB[9][12] ), 
        .CO(\CARRYB[10][11] ), .S(\SUMB[10][11] ) );
  FADDX1 S2_10_12 ( .A(\ab[10][12] ), .B(\CARRYB[9][12] ), .CI(\SUMB[9][13] ), 
        .CO(\CARRYB[10][12] ), .S(\SUMB[10][12] ) );
  FADDX1 S2_10_13 ( .A(\ab[10][13] ), .B(\CARRYB[9][13] ), .CI(\SUMB[9][14] ), 
        .CO(\CARRYB[10][13] ), .S(\SUMB[10][13] ) );
  FADDX1 S3_10_14 ( .A(\ab[10][14] ), .B(\CARRYB[9][14] ), .CI(\ab[9][15] ), 
        .CO(\CARRYB[10][14] ), .S(\SUMB[10][14] ) );
  FADDX1 S1_9_0 ( .A(\ab[9][0] ), .B(\CARRYB[8][0] ), .CI(\SUMB[8][1] ), .CO(
        \CARRYB[9][0] ), .S(\A1[7] ) );
  FADDX1 S2_9_1 ( .A(\ab[9][1] ), .B(\CARRYB[8][1] ), .CI(\SUMB[8][2] ), .CO(
        \CARRYB[9][1] ), .S(\SUMB[9][1] ) );
  FADDX1 S2_9_2 ( .A(\ab[9][2] ), .B(\CARRYB[8][2] ), .CI(\SUMB[8][3] ), .CO(
        \CARRYB[9][2] ), .S(\SUMB[9][2] ) );
  FADDX1 S2_9_3 ( .A(\ab[9][3] ), .B(\CARRYB[8][3] ), .CI(\SUMB[8][4] ), .CO(
        \CARRYB[9][3] ), .S(\SUMB[9][3] ) );
  FADDX1 S2_9_4 ( .A(\ab[9][4] ), .B(\CARRYB[8][4] ), .CI(\SUMB[8][5] ), .CO(
        \CARRYB[9][4] ), .S(\SUMB[9][4] ) );
  FADDX1 S2_9_5 ( .A(\ab[9][5] ), .B(\CARRYB[8][5] ), .CI(\SUMB[8][6] ), .CO(
        \CARRYB[9][5] ), .S(\SUMB[9][5] ) );
  FADDX1 S2_9_6 ( .A(\ab[9][6] ), .B(\CARRYB[8][6] ), .CI(\SUMB[8][7] ), .CO(
        \CARRYB[9][6] ), .S(\SUMB[9][6] ) );
  FADDX1 S2_9_7 ( .A(\ab[9][7] ), .B(\CARRYB[8][7] ), .CI(\SUMB[8][8] ), .CO(
        \CARRYB[9][7] ), .S(\SUMB[9][7] ) );
  FADDX1 S2_9_8 ( .A(\ab[9][8] ), .B(\CARRYB[8][8] ), .CI(\SUMB[8][9] ), .CO(
        \CARRYB[9][8] ), .S(\SUMB[9][8] ) );
  FADDX1 S2_9_9 ( .A(\ab[9][9] ), .B(\CARRYB[8][9] ), .CI(\SUMB[8][10] ), .CO(
        \CARRYB[9][9] ), .S(\SUMB[9][9] ) );
  FADDX1 S2_9_10 ( .A(\ab[9][10] ), .B(\CARRYB[8][10] ), .CI(\SUMB[8][11] ), 
        .CO(\CARRYB[9][10] ), .S(\SUMB[9][10] ) );
  FADDX1 S2_9_11 ( .A(\ab[9][11] ), .B(\CARRYB[8][11] ), .CI(\SUMB[8][12] ), 
        .CO(\CARRYB[9][11] ), .S(\SUMB[9][11] ) );
  FADDX1 S2_9_12 ( .A(\ab[9][12] ), .B(\CARRYB[8][12] ), .CI(\SUMB[8][13] ), 
        .CO(\CARRYB[9][12] ), .S(\SUMB[9][12] ) );
  FADDX1 S2_9_13 ( .A(\ab[9][13] ), .B(\CARRYB[8][13] ), .CI(\SUMB[8][14] ), 
        .CO(\CARRYB[9][13] ), .S(\SUMB[9][13] ) );
  FADDX1 S3_9_14 ( .A(\ab[9][14] ), .B(\CARRYB[8][14] ), .CI(\ab[8][15] ), 
        .CO(\CARRYB[9][14] ), .S(\SUMB[9][14] ) );
  FADDX1 S1_8_0 ( .A(\ab[8][0] ), .B(\CARRYB[7][0] ), .CI(\SUMB[7][1] ), .CO(
        \CARRYB[8][0] ), .S(\A1[6] ) );
  FADDX1 S2_8_1 ( .A(\ab[8][1] ), .B(\CARRYB[7][1] ), .CI(\SUMB[7][2] ), .CO(
        \CARRYB[8][1] ), .S(\SUMB[8][1] ) );
  FADDX1 S2_8_2 ( .A(\ab[8][2] ), .B(\CARRYB[7][2] ), .CI(\SUMB[7][3] ), .CO(
        \CARRYB[8][2] ), .S(\SUMB[8][2] ) );
  FADDX1 S2_8_3 ( .A(\ab[8][3] ), .B(\CARRYB[7][3] ), .CI(\SUMB[7][4] ), .CO(
        \CARRYB[8][3] ), .S(\SUMB[8][3] ) );
  FADDX1 S2_8_4 ( .A(\ab[8][4] ), .B(\CARRYB[7][4] ), .CI(\SUMB[7][5] ), .CO(
        \CARRYB[8][4] ), .S(\SUMB[8][4] ) );
  FADDX1 S2_8_5 ( .A(\ab[8][5] ), .B(\CARRYB[7][5] ), .CI(\SUMB[7][6] ), .CO(
        \CARRYB[8][5] ), .S(\SUMB[8][5] ) );
  FADDX1 S2_8_6 ( .A(\ab[8][6] ), .B(\CARRYB[7][6] ), .CI(\SUMB[7][7] ), .CO(
        \CARRYB[8][6] ), .S(\SUMB[8][6] ) );
  FADDX1 S2_8_7 ( .A(\ab[8][7] ), .B(\CARRYB[7][7] ), .CI(\SUMB[7][8] ), .CO(
        \CARRYB[8][7] ), .S(\SUMB[8][7] ) );
  FADDX1 S2_8_8 ( .A(\ab[8][8] ), .B(\CARRYB[7][8] ), .CI(\SUMB[7][9] ), .CO(
        \CARRYB[8][8] ), .S(\SUMB[8][8] ) );
  FADDX1 S2_8_9 ( .A(\ab[8][9] ), .B(\CARRYB[7][9] ), .CI(\SUMB[7][10] ), .CO(
        \CARRYB[8][9] ), .S(\SUMB[8][9] ) );
  FADDX1 S2_8_10 ( .A(\ab[8][10] ), .B(\CARRYB[7][10] ), .CI(\SUMB[7][11] ), 
        .CO(\CARRYB[8][10] ), .S(\SUMB[8][10] ) );
  FADDX1 S2_8_11 ( .A(\ab[8][11] ), .B(\CARRYB[7][11] ), .CI(\SUMB[7][12] ), 
        .CO(\CARRYB[8][11] ), .S(\SUMB[8][11] ) );
  FADDX1 S2_8_12 ( .A(\ab[8][12] ), .B(\CARRYB[7][12] ), .CI(\SUMB[7][13] ), 
        .CO(\CARRYB[8][12] ), .S(\SUMB[8][12] ) );
  FADDX1 S2_8_13 ( .A(\ab[8][13] ), .B(\CARRYB[7][13] ), .CI(\SUMB[7][14] ), 
        .CO(\CARRYB[8][13] ), .S(\SUMB[8][13] ) );
  FADDX1 S3_8_14 ( .A(\ab[8][14] ), .B(\CARRYB[7][14] ), .CI(\ab[7][15] ), 
        .CO(\CARRYB[8][14] ), .S(\SUMB[8][14] ) );
  FADDX1 S1_7_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\A1[5] ) );
  FADDX1 S2_7_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  FADDX1 S2_7_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  FADDX1 S2_7_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  FADDX1 S2_7_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  FADDX1 S2_7_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  FADDX1 S2_7_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\SUMB[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  FADDX1 S2_7_7 ( .A(\ab[7][7] ), .B(\CARRYB[6][7] ), .CI(\SUMB[6][8] ), .CO(
        \CARRYB[7][7] ), .S(\SUMB[7][7] ) );
  FADDX1 S2_7_8 ( .A(\ab[7][8] ), .B(\CARRYB[6][8] ), .CI(\SUMB[6][9] ), .CO(
        \CARRYB[7][8] ), .S(\SUMB[7][8] ) );
  FADDX1 S2_7_9 ( .A(\ab[7][9] ), .B(\CARRYB[6][9] ), .CI(\SUMB[6][10] ), .CO(
        \CARRYB[7][9] ), .S(\SUMB[7][9] ) );
  FADDX1 S2_7_10 ( .A(\ab[7][10] ), .B(\CARRYB[6][10] ), .CI(\SUMB[6][11] ), 
        .CO(\CARRYB[7][10] ), .S(\SUMB[7][10] ) );
  FADDX1 S2_7_11 ( .A(\ab[7][11] ), .B(\CARRYB[6][11] ), .CI(\SUMB[6][12] ), 
        .CO(\CARRYB[7][11] ), .S(\SUMB[7][11] ) );
  FADDX1 S2_7_12 ( .A(\ab[7][12] ), .B(\CARRYB[6][12] ), .CI(\SUMB[6][13] ), 
        .CO(\CARRYB[7][12] ), .S(\SUMB[7][12] ) );
  FADDX1 S2_7_13 ( .A(\ab[7][13] ), .B(\CARRYB[6][13] ), .CI(\SUMB[6][14] ), 
        .CO(\CARRYB[7][13] ), .S(\SUMB[7][13] ) );
  FADDX1 S3_7_14 ( .A(\ab[7][14] ), .B(\CARRYB[6][14] ), .CI(\ab[6][15] ), 
        .CO(\CARRYB[7][14] ), .S(\SUMB[7][14] ) );
  FADDX1 S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  FADDX1 S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  FADDX1 S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  FADDX1 S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  FADDX1 S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  FADDX1 S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  FADDX1 S2_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\SUMB[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  FADDX1 S2_6_7 ( .A(\ab[6][7] ), .B(\CARRYB[5][7] ), .CI(\SUMB[5][8] ), .CO(
        \CARRYB[6][7] ), .S(\SUMB[6][7] ) );
  FADDX1 S2_6_8 ( .A(\ab[6][8] ), .B(\CARRYB[5][8] ), .CI(\SUMB[5][9] ), .CO(
        \CARRYB[6][8] ), .S(\SUMB[6][8] ) );
  FADDX1 S2_6_9 ( .A(\ab[6][9] ), .B(\CARRYB[5][9] ), .CI(\SUMB[5][10] ), .CO(
        \CARRYB[6][9] ), .S(\SUMB[6][9] ) );
  FADDX1 S2_6_10 ( .A(\ab[6][10] ), .B(\CARRYB[5][10] ), .CI(\SUMB[5][11] ), 
        .CO(\CARRYB[6][10] ), .S(\SUMB[6][10] ) );
  FADDX1 S2_6_11 ( .A(\ab[6][11] ), .B(\CARRYB[5][11] ), .CI(\SUMB[5][12] ), 
        .CO(\CARRYB[6][11] ), .S(\SUMB[6][11] ) );
  FADDX1 S2_6_12 ( .A(\ab[6][12] ), .B(\CARRYB[5][12] ), .CI(\SUMB[5][13] ), 
        .CO(\CARRYB[6][12] ), .S(\SUMB[6][12] ) );
  FADDX1 S2_6_13 ( .A(\ab[6][13] ), .B(\CARRYB[5][13] ), .CI(\SUMB[5][14] ), 
        .CO(\CARRYB[6][13] ), .S(\SUMB[6][13] ) );
  FADDX1 S3_6_14 ( .A(\ab[6][14] ), .B(\CARRYB[5][14] ), .CI(\ab[5][15] ), 
        .CO(\CARRYB[6][14] ), .S(\SUMB[6][14] ) );
  FADDX1 S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  FADDX1 S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  FADDX1 S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  FADDX1 S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  FADDX1 S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  FADDX1 S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  FADDX1 S2_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\SUMB[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  FADDX1 S2_5_7 ( .A(\ab[5][7] ), .B(\CARRYB[4][7] ), .CI(\SUMB[4][8] ), .CO(
        \CARRYB[5][7] ), .S(\SUMB[5][7] ) );
  FADDX1 S2_5_8 ( .A(\ab[5][8] ), .B(\CARRYB[4][8] ), .CI(\SUMB[4][9] ), .CO(
        \CARRYB[5][8] ), .S(\SUMB[5][8] ) );
  FADDX1 S2_5_9 ( .A(\ab[5][9] ), .B(\CARRYB[4][9] ), .CI(\SUMB[4][10] ), .CO(
        \CARRYB[5][9] ), .S(\SUMB[5][9] ) );
  FADDX1 S2_5_10 ( .A(\ab[5][10] ), .B(\CARRYB[4][10] ), .CI(\SUMB[4][11] ), 
        .CO(\CARRYB[5][10] ), .S(\SUMB[5][10] ) );
  FADDX1 S2_5_11 ( .A(\ab[5][11] ), .B(\CARRYB[4][11] ), .CI(\SUMB[4][12] ), 
        .CO(\CARRYB[5][11] ), .S(\SUMB[5][11] ) );
  FADDX1 S2_5_12 ( .A(\ab[5][12] ), .B(\CARRYB[4][12] ), .CI(\SUMB[4][13] ), 
        .CO(\CARRYB[5][12] ), .S(\SUMB[5][12] ) );
  FADDX1 S2_5_13 ( .A(\ab[5][13] ), .B(\CARRYB[4][13] ), .CI(\SUMB[4][14] ), 
        .CO(\CARRYB[5][13] ), .S(\SUMB[5][13] ) );
  FADDX1 S3_5_14 ( .A(\ab[5][14] ), .B(\CARRYB[4][14] ), .CI(\ab[4][15] ), 
        .CO(\CARRYB[5][14] ), .S(\SUMB[5][14] ) );
  FADDX1 S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  FADDX1 S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  FADDX1 S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  FADDX1 S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  FADDX1 S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  FADDX1 S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  FADDX1 S2_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\SUMB[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  FADDX1 S2_4_7 ( .A(\ab[4][7] ), .B(\CARRYB[3][7] ), .CI(\SUMB[3][8] ), .CO(
        \CARRYB[4][7] ), .S(\SUMB[4][7] ) );
  FADDX1 S2_4_8 ( .A(\ab[4][8] ), .B(\CARRYB[3][8] ), .CI(\SUMB[3][9] ), .CO(
        \CARRYB[4][8] ), .S(\SUMB[4][8] ) );
  FADDX1 S2_4_9 ( .A(\ab[4][9] ), .B(\CARRYB[3][9] ), .CI(\SUMB[3][10] ), .CO(
        \CARRYB[4][9] ), .S(\SUMB[4][9] ) );
  FADDX1 S2_4_10 ( .A(\ab[4][10] ), .B(\CARRYB[3][10] ), .CI(\SUMB[3][11] ), 
        .CO(\CARRYB[4][10] ), .S(\SUMB[4][10] ) );
  FADDX1 S2_4_11 ( .A(\ab[4][11] ), .B(\CARRYB[3][11] ), .CI(\SUMB[3][12] ), 
        .CO(\CARRYB[4][11] ), .S(\SUMB[4][11] ) );
  FADDX1 S2_4_12 ( .A(\ab[4][12] ), .B(\CARRYB[3][12] ), .CI(\SUMB[3][13] ), 
        .CO(\CARRYB[4][12] ), .S(\SUMB[4][12] ) );
  FADDX1 S2_4_13 ( .A(\ab[4][13] ), .B(\CARRYB[3][13] ), .CI(\SUMB[3][14] ), 
        .CO(\CARRYB[4][13] ), .S(\SUMB[4][13] ) );
  FADDX1 S3_4_14 ( .A(\ab[4][14] ), .B(\CARRYB[3][14] ), .CI(\ab[3][15] ), 
        .CO(\CARRYB[4][14] ), .S(\SUMB[4][14] ) );
  FADDX1 S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  FADDX1 S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  FADDX1 S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  FADDX1 S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  FADDX1 S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  FADDX1 S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  FADDX1 S2_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\SUMB[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  FADDX1 S2_3_7 ( .A(\ab[3][7] ), .B(\CARRYB[2][7] ), .CI(\SUMB[2][8] ), .CO(
        \CARRYB[3][7] ), .S(\SUMB[3][7] ) );
  FADDX1 S2_3_8 ( .A(\ab[3][8] ), .B(\CARRYB[2][8] ), .CI(\SUMB[2][9] ), .CO(
        \CARRYB[3][8] ), .S(\SUMB[3][8] ) );
  FADDX1 S2_3_9 ( .A(\ab[3][9] ), .B(\CARRYB[2][9] ), .CI(\SUMB[2][10] ), .CO(
        \CARRYB[3][9] ), .S(\SUMB[3][9] ) );
  FADDX1 S2_3_10 ( .A(\ab[3][10] ), .B(\CARRYB[2][10] ), .CI(\SUMB[2][11] ), 
        .CO(\CARRYB[3][10] ), .S(\SUMB[3][10] ) );
  FADDX1 S2_3_11 ( .A(\ab[3][11] ), .B(\CARRYB[2][11] ), .CI(\SUMB[2][12] ), 
        .CO(\CARRYB[3][11] ), .S(\SUMB[3][11] ) );
  FADDX1 S2_3_12 ( .A(\ab[3][12] ), .B(\CARRYB[2][12] ), .CI(\SUMB[2][13] ), 
        .CO(\CARRYB[3][12] ), .S(\SUMB[3][12] ) );
  FADDX1 S2_3_13 ( .A(\ab[3][13] ), .B(\CARRYB[2][13] ), .CI(\SUMB[2][14] ), 
        .CO(\CARRYB[3][13] ), .S(\SUMB[3][13] ) );
  FADDX1 S3_3_14 ( .A(\ab[3][14] ), .B(\CARRYB[2][14] ), .CI(\ab[2][15] ), 
        .CO(\CARRYB[3][14] ), .S(\SUMB[3][14] ) );
  FADDX1 S1_2_0 ( .A(\ab[2][0] ), .B(n18), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  FADDX1 S2_2_1 ( .A(\ab[2][1] ), .B(n17), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  FADDX1 S2_2_2 ( .A(\ab[2][2] ), .B(n16), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  FADDX1 S2_2_3 ( .A(\ab[2][3] ), .B(n15), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  FADDX1 S2_2_4 ( .A(\ab[2][4] ), .B(n14), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  FADDX1 S2_2_5 ( .A(\ab[2][5] ), .B(n13), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  FADDX1 S2_2_6 ( .A(\ab[2][6] ), .B(n12), .CI(\SUMB[1][7] ), .CO(
        \CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  FADDX1 S2_2_7 ( .A(\ab[2][7] ), .B(n11), .CI(\SUMB[1][8] ), .CO(
        \CARRYB[2][7] ), .S(\SUMB[2][7] ) );
  FADDX1 S2_2_8 ( .A(\ab[2][8] ), .B(n10), .CI(\SUMB[1][9] ), .CO(
        \CARRYB[2][8] ), .S(\SUMB[2][8] ) );
  FADDX1 S2_2_9 ( .A(\ab[2][9] ), .B(n9), .CI(\SUMB[1][10] ), .CO(
        \CARRYB[2][9] ), .S(\SUMB[2][9] ) );
  FADDX1 S2_2_10 ( .A(\ab[2][10] ), .B(n8), .CI(\SUMB[1][11] ), .CO(
        \CARRYB[2][10] ), .S(\SUMB[2][10] ) );
  FADDX1 S2_2_11 ( .A(\ab[2][11] ), .B(n7), .CI(\SUMB[1][12] ), .CO(
        \CARRYB[2][11] ), .S(\SUMB[2][11] ) );
  FADDX1 S2_2_12 ( .A(\ab[2][12] ), .B(n6), .CI(\SUMB[1][13] ), .CO(
        \CARRYB[2][12] ), .S(\SUMB[2][12] ) );
  FADDX1 S2_2_13 ( .A(\ab[2][13] ), .B(n5), .CI(\SUMB[1][14] ), .CO(
        \CARRYB[2][13] ), .S(\SUMB[2][13] ) );
  FADDX1 S3_2_14 ( .A(\ab[2][14] ), .B(n4), .CI(\ab[1][15] ), .CO(
        \CARRYB[2][14] ), .S(\SUMB[2][14] ) );
  betterNeighborsInMyCluster_DW01_add_11 FS_1 ( .A({1'b0, \A1[28] , \A1[27] , 
        \A1[26] , \A1[25] , \A1[24] , \A1[23] , \A1[22] , \A1[21] , \A1[20] , 
        \A1[19] , \A1[18] , \A1[17] , \A1[16] , \A1[15] , \A1[14] , 
        \SUMB[15][0] , \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , 
        \A1[6] , \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({
        n3, n19, n32, n31, n30, n29, n20, n28, n27, n25, n26, n24, n22, n23, 
        n21, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED__0, 
        PRODUCT[30:2]}) );
  AND2X1 U2 ( .IN1(\CARRYB[15][14] ), .IN2(\ab[15][15] ), .Q(n3) );
  AND2X1 U3 ( .IN1(\ab[0][15] ), .IN2(\ab[1][14] ), .Q(n4) );
  AND2X1 U4 ( .IN1(\ab[0][14] ), .IN2(\ab[1][13] ), .Q(n5) );
  AND2X1 U5 ( .IN1(\ab[0][13] ), .IN2(\ab[1][12] ), .Q(n6) );
  AND2X1 U6 ( .IN1(\ab[0][12] ), .IN2(\ab[1][11] ), .Q(n7) );
  AND2X1 U7 ( .IN1(\ab[0][11] ), .IN2(\ab[1][10] ), .Q(n8) );
  AND2X1 U8 ( .IN1(\ab[0][10] ), .IN2(\ab[1][9] ), .Q(n9) );
  AND2X1 U9 ( .IN1(\ab[0][9] ), .IN2(\ab[1][8] ), .Q(n10) );
  AND2X1 U10 ( .IN1(\ab[0][8] ), .IN2(\ab[1][7] ), .Q(n11) );
  AND2X1 U11 ( .IN1(\ab[0][7] ), .IN2(\ab[1][6] ), .Q(n12) );
  AND2X1 U12 ( .IN1(\ab[0][6] ), .IN2(\ab[1][5] ), .Q(n13) );
  AND2X1 U13 ( .IN1(\ab[0][5] ), .IN2(\ab[1][4] ), .Q(n14) );
  AND2X1 U14 ( .IN1(\ab[0][4] ), .IN2(\ab[1][3] ), .Q(n15) );
  AND2X1 U15 ( .IN1(\ab[0][3] ), .IN2(\ab[1][2] ), .Q(n16) );
  AND2X1 U16 ( .IN1(\ab[0][2] ), .IN2(\ab[1][1] ), .Q(n17) );
  AND2X1 U17 ( .IN1(\ab[0][1] ), .IN2(\ab[1][0] ), .Q(n18) );
  AND2X1 U18 ( .IN1(\CARRYB[15][13] ), .IN2(\SUMB[15][14] ), .Q(n19) );
  AND2X1 U19 ( .IN1(\CARRYB[15][8] ), .IN2(\SUMB[15][9] ), .Q(n20) );
  AND2X1 U20 ( .IN1(\CARRYB[15][0] ), .IN2(\SUMB[15][1] ), .Q(n21) );
  AND2X1 U21 ( .IN1(\CARRYB[15][2] ), .IN2(\SUMB[15][3] ), .Q(n22) );
  AND2X1 U22 ( .IN1(\CARRYB[15][1] ), .IN2(\SUMB[15][2] ), .Q(n23) );
  AND2X1 U23 ( .IN1(\CARRYB[15][3] ), .IN2(\SUMB[15][4] ), .Q(n24) );
  AND2X1 U24 ( .IN1(\CARRYB[15][5] ), .IN2(\SUMB[15][6] ), .Q(n25) );
  AND2X1 U25 ( .IN1(\CARRYB[15][4] ), .IN2(\SUMB[15][5] ), .Q(n26) );
  AND2X1 U26 ( .IN1(\CARRYB[15][6] ), .IN2(\SUMB[15][7] ), .Q(n27) );
  AND2X1 U27 ( .IN1(\CARRYB[15][7] ), .IN2(\SUMB[15][8] ), .Q(n28) );
  INVX0 U28 ( .INP(B[15]), .ZN(n48) );
  INVX0 U29 ( .INP(B[9]), .ZN(n42) );
  INVX0 U30 ( .INP(B[13]), .ZN(n46) );
  INVX0 U31 ( .INP(B[14]), .ZN(n47) );
  INVX0 U32 ( .INP(B[2]), .ZN(n35) );
  INVX0 U33 ( .INP(B[11]), .ZN(n44) );
  INVX0 U34 ( .INP(B[5]), .ZN(n38) );
  INVX0 U35 ( .INP(B[6]), .ZN(n39) );
  INVX0 U36 ( .INP(B[8]), .ZN(n41) );
  INVX0 U37 ( .INP(B[3]), .ZN(n36) );
  INVX0 U38 ( .INP(B[7]), .ZN(n40) );
  INVX0 U39 ( .INP(B[12]), .ZN(n45) );
  INVX0 U40 ( .INP(B[4]), .ZN(n37) );
  INVX0 U41 ( .INP(B[10]), .ZN(n43) );
  INVX0 U42 ( .INP(B[1]), .ZN(n34) );
  INVX0 U43 ( .INP(B[0]), .ZN(n33) );
  AND2X1 U44 ( .IN1(\CARRYB[15][9] ), .IN2(\SUMB[15][10] ), .Q(n29) );
  AND2X1 U45 ( .IN1(\CARRYB[15][10] ), .IN2(\SUMB[15][11] ), .Q(n30) );
  AND2X1 U46 ( .IN1(\CARRYB[15][11] ), .IN2(\SUMB[15][12] ), .Q(n31) );
  AND2X1 U47 ( .IN1(\CARRYB[15][12] ), .IN2(\SUMB[15][13] ), .Q(n32) );
  INVX0 U48 ( .INP(A[0]), .ZN(n64) );
  INVX0 U49 ( .INP(A[3]), .ZN(n61) );
  INVX0 U50 ( .INP(A[1]), .ZN(n63) );
  INVX0 U51 ( .INP(A[4]), .ZN(n60) );
  INVX0 U52 ( .INP(A[5]), .ZN(n59) );
  INVX0 U53 ( .INP(A[2]), .ZN(n62) );
  INVX0 U54 ( .INP(A[6]), .ZN(n58) );
  INVX0 U55 ( .INP(A[9]), .ZN(n55) );
  INVX0 U56 ( .INP(A[7]), .ZN(n57) );
  INVX0 U57 ( .INP(A[8]), .ZN(n56) );
  INVX0 U58 ( .INP(A[10]), .ZN(n54) );
  INVX0 U59 ( .INP(A[11]), .ZN(n53) );
  INVX0 U60 ( .INP(A[12]), .ZN(n52) );
  INVX0 U61 ( .INP(A[13]), .ZN(n51) );
  INVX0 U62 ( .INP(A[14]), .ZN(n50) );
  INVX0 U63 ( .INP(A[15]), .ZN(n49) );
  XOR2X1 U64 ( .IN1(\CARRYB[15][0] ), .IN2(\SUMB[15][1] ), .Q(\A1[14] ) );
  XOR2X1 U65 ( .IN1(\CARRYB[15][1] ), .IN2(\SUMB[15][2] ), .Q(\A1[15] ) );
  XOR2X1 U66 ( .IN1(\CARRYB[15][2] ), .IN2(\SUMB[15][3] ), .Q(\A1[16] ) );
  XOR2X1 U67 ( .IN1(\CARRYB[15][3] ), .IN2(\SUMB[15][4] ), .Q(\A1[17] ) );
  XOR2X1 U68 ( .IN1(\CARRYB[15][4] ), .IN2(\SUMB[15][5] ), .Q(\A1[18] ) );
  XOR2X1 U69 ( .IN1(\CARRYB[15][5] ), .IN2(\SUMB[15][6] ), .Q(\A1[19] ) );
  XOR2X1 U70 ( .IN1(\CARRYB[15][6] ), .IN2(\SUMB[15][7] ), .Q(\A1[20] ) );
  XOR2X1 U71 ( .IN1(\CARRYB[15][7] ), .IN2(\SUMB[15][8] ), .Q(\A1[21] ) );
  XOR2X1 U72 ( .IN1(\CARRYB[15][8] ), .IN2(\SUMB[15][9] ), .Q(\A1[22] ) );
  XOR2X1 U73 ( .IN1(\CARRYB[15][9] ), .IN2(\SUMB[15][10] ), .Q(\A1[23] ) );
  XOR2X1 U74 ( .IN1(\CARRYB[15][10] ), .IN2(\SUMB[15][11] ), .Q(\A1[24] ) );
  XOR2X1 U75 ( .IN1(\CARRYB[15][11] ), .IN2(\SUMB[15][12] ), .Q(\A1[25] ) );
  XOR2X1 U76 ( .IN1(\CARRYB[15][12] ), .IN2(\SUMB[15][13] ), .Q(\A1[26] ) );
  XOR2X1 U77 ( .IN1(\CARRYB[15][13] ), .IN2(\SUMB[15][14] ), .Q(\A1[27] ) );
  XOR2X1 U78 ( .IN1(\CARRYB[15][14] ), .IN2(\ab[15][15] ), .Q(\A1[28] ) );
  XOR2X1 U79 ( .IN1(\ab[1][0] ), .IN2(\ab[0][1] ), .Q(PRODUCT[1]) );
  XOR2X1 U80 ( .IN1(\ab[1][1] ), .IN2(\ab[0][2] ), .Q(\SUMB[1][1] ) );
  XOR2X1 U81 ( .IN1(\ab[1][2] ), .IN2(\ab[0][3] ), .Q(\SUMB[1][2] ) );
  XOR2X1 U82 ( .IN1(\ab[1][3] ), .IN2(\ab[0][4] ), .Q(\SUMB[1][3] ) );
  XOR2X1 U83 ( .IN1(\ab[1][4] ), .IN2(\ab[0][5] ), .Q(\SUMB[1][4] ) );
  XOR2X1 U84 ( .IN1(\ab[1][5] ), .IN2(\ab[0][6] ), .Q(\SUMB[1][5] ) );
  XOR2X1 U85 ( .IN1(\ab[1][6] ), .IN2(\ab[0][7] ), .Q(\SUMB[1][6] ) );
  XOR2X1 U86 ( .IN1(\ab[1][7] ), .IN2(\ab[0][8] ), .Q(\SUMB[1][7] ) );
  XOR2X1 U87 ( .IN1(\ab[1][8] ), .IN2(\ab[0][9] ), .Q(\SUMB[1][8] ) );
  XOR2X1 U88 ( .IN1(\ab[1][9] ), .IN2(\ab[0][10] ), .Q(\SUMB[1][9] ) );
  XOR2X1 U89 ( .IN1(\ab[1][10] ), .IN2(\ab[0][11] ), .Q(\SUMB[1][10] ) );
  XOR2X1 U90 ( .IN1(\ab[1][11] ), .IN2(\ab[0][12] ), .Q(\SUMB[1][11] ) );
  XOR2X1 U91 ( .IN1(\ab[1][12] ), .IN2(\ab[0][13] ), .Q(\SUMB[1][12] ) );
  XOR2X1 U92 ( .IN1(\ab[1][13] ), .IN2(\ab[0][14] ), .Q(\SUMB[1][13] ) );
  XOR2X1 U93 ( .IN1(\ab[1][14] ), .IN2(\ab[0][15] ), .Q(\SUMB[1][14] ) );
  NOR2X0 U95 ( .IN1(n55), .IN2(n42), .QN(\ab[9][9] ) );
  NOR2X0 U96 ( .IN1(n55), .IN2(n41), .QN(\ab[9][8] ) );
  NOR2X0 U97 ( .IN1(n55), .IN2(n40), .QN(\ab[9][7] ) );
  NOR2X0 U98 ( .IN1(n55), .IN2(n39), .QN(\ab[9][6] ) );
  NOR2X0 U99 ( .IN1(n55), .IN2(n38), .QN(\ab[9][5] ) );
  NOR2X0 U100 ( .IN1(n55), .IN2(n37), .QN(\ab[9][4] ) );
  NOR2X0 U101 ( .IN1(n55), .IN2(n36), .QN(\ab[9][3] ) );
  NOR2X0 U102 ( .IN1(n55), .IN2(n35), .QN(\ab[9][2] ) );
  NOR2X0 U103 ( .IN1(n55), .IN2(n34), .QN(\ab[9][1] ) );
  NOR2X0 U104 ( .IN1(n55), .IN2(n48), .QN(\ab[9][15] ) );
  NOR2X0 U105 ( .IN1(n55), .IN2(n47), .QN(\ab[9][14] ) );
  NOR2X0 U106 ( .IN1(n55), .IN2(n46), .QN(\ab[9][13] ) );
  NOR2X0 U107 ( .IN1(n55), .IN2(n45), .QN(\ab[9][12] ) );
  NOR2X0 U108 ( .IN1(n55), .IN2(n44), .QN(\ab[9][11] ) );
  NOR2X0 U109 ( .IN1(n55), .IN2(n43), .QN(\ab[9][10] ) );
  NOR2X0 U110 ( .IN1(n55), .IN2(n33), .QN(\ab[9][0] ) );
  NOR2X0 U111 ( .IN1(n42), .IN2(n56), .QN(\ab[8][9] ) );
  NOR2X0 U112 ( .IN1(n41), .IN2(n56), .QN(\ab[8][8] ) );
  NOR2X0 U113 ( .IN1(n40), .IN2(n56), .QN(\ab[8][7] ) );
  NOR2X0 U114 ( .IN1(n39), .IN2(n56), .QN(\ab[8][6] ) );
  NOR2X0 U115 ( .IN1(n38), .IN2(n56), .QN(\ab[8][5] ) );
  NOR2X0 U116 ( .IN1(n37), .IN2(n56), .QN(\ab[8][4] ) );
  NOR2X0 U117 ( .IN1(n36), .IN2(n56), .QN(\ab[8][3] ) );
  NOR2X0 U118 ( .IN1(n35), .IN2(n56), .QN(\ab[8][2] ) );
  NOR2X0 U119 ( .IN1(n34), .IN2(n56), .QN(\ab[8][1] ) );
  NOR2X0 U120 ( .IN1(n48), .IN2(n56), .QN(\ab[8][15] ) );
  NOR2X0 U121 ( .IN1(n47), .IN2(n56), .QN(\ab[8][14] ) );
  NOR2X0 U122 ( .IN1(n46), .IN2(n56), .QN(\ab[8][13] ) );
  NOR2X0 U123 ( .IN1(n45), .IN2(n56), .QN(\ab[8][12] ) );
  NOR2X0 U124 ( .IN1(n44), .IN2(n56), .QN(\ab[8][11] ) );
  NOR2X0 U125 ( .IN1(n43), .IN2(n56), .QN(\ab[8][10] ) );
  NOR2X0 U126 ( .IN1(n33), .IN2(n56), .QN(\ab[8][0] ) );
  NOR2X0 U127 ( .IN1(n42), .IN2(n57), .QN(\ab[7][9] ) );
  NOR2X0 U128 ( .IN1(n41), .IN2(n57), .QN(\ab[7][8] ) );
  NOR2X0 U129 ( .IN1(n40), .IN2(n57), .QN(\ab[7][7] ) );
  NOR2X0 U130 ( .IN1(n39), .IN2(n57), .QN(\ab[7][6] ) );
  NOR2X0 U131 ( .IN1(n38), .IN2(n57), .QN(\ab[7][5] ) );
  NOR2X0 U132 ( .IN1(n37), .IN2(n57), .QN(\ab[7][4] ) );
  NOR2X0 U133 ( .IN1(n36), .IN2(n57), .QN(\ab[7][3] ) );
  NOR2X0 U134 ( .IN1(n35), .IN2(n57), .QN(\ab[7][2] ) );
  NOR2X0 U135 ( .IN1(n34), .IN2(n57), .QN(\ab[7][1] ) );
  NOR2X0 U136 ( .IN1(n48), .IN2(n57), .QN(\ab[7][15] ) );
  NOR2X0 U137 ( .IN1(n47), .IN2(n57), .QN(\ab[7][14] ) );
  NOR2X0 U138 ( .IN1(n46), .IN2(n57), .QN(\ab[7][13] ) );
  NOR2X0 U139 ( .IN1(n45), .IN2(n57), .QN(\ab[7][12] ) );
  NOR2X0 U140 ( .IN1(n44), .IN2(n57), .QN(\ab[7][11] ) );
  NOR2X0 U141 ( .IN1(n43), .IN2(n57), .QN(\ab[7][10] ) );
  NOR2X0 U142 ( .IN1(n33), .IN2(n57), .QN(\ab[7][0] ) );
  NOR2X0 U143 ( .IN1(n42), .IN2(n58), .QN(\ab[6][9] ) );
  NOR2X0 U144 ( .IN1(n41), .IN2(n58), .QN(\ab[6][8] ) );
  NOR2X0 U145 ( .IN1(n40), .IN2(n58), .QN(\ab[6][7] ) );
  NOR2X0 U146 ( .IN1(n39), .IN2(n58), .QN(\ab[6][6] ) );
  NOR2X0 U147 ( .IN1(n38), .IN2(n58), .QN(\ab[6][5] ) );
  NOR2X0 U148 ( .IN1(n37), .IN2(n58), .QN(\ab[6][4] ) );
  NOR2X0 U149 ( .IN1(n36), .IN2(n58), .QN(\ab[6][3] ) );
  NOR2X0 U150 ( .IN1(n35), .IN2(n58), .QN(\ab[6][2] ) );
  NOR2X0 U151 ( .IN1(n34), .IN2(n58), .QN(\ab[6][1] ) );
  NOR2X0 U152 ( .IN1(n48), .IN2(n58), .QN(\ab[6][15] ) );
  NOR2X0 U153 ( .IN1(n47), .IN2(n58), .QN(\ab[6][14] ) );
  NOR2X0 U154 ( .IN1(n46), .IN2(n58), .QN(\ab[6][13] ) );
  NOR2X0 U155 ( .IN1(n45), .IN2(n58), .QN(\ab[6][12] ) );
  NOR2X0 U156 ( .IN1(n44), .IN2(n58), .QN(\ab[6][11] ) );
  NOR2X0 U157 ( .IN1(n43), .IN2(n58), .QN(\ab[6][10] ) );
  NOR2X0 U158 ( .IN1(n33), .IN2(n58), .QN(\ab[6][0] ) );
  NOR2X0 U159 ( .IN1(n42), .IN2(n59), .QN(\ab[5][9] ) );
  NOR2X0 U160 ( .IN1(n41), .IN2(n59), .QN(\ab[5][8] ) );
  NOR2X0 U161 ( .IN1(n40), .IN2(n59), .QN(\ab[5][7] ) );
  NOR2X0 U162 ( .IN1(n39), .IN2(n59), .QN(\ab[5][6] ) );
  NOR2X0 U163 ( .IN1(n38), .IN2(n59), .QN(\ab[5][5] ) );
  NOR2X0 U164 ( .IN1(n37), .IN2(n59), .QN(\ab[5][4] ) );
  NOR2X0 U165 ( .IN1(n36), .IN2(n59), .QN(\ab[5][3] ) );
  NOR2X0 U166 ( .IN1(n35), .IN2(n59), .QN(\ab[5][2] ) );
  NOR2X0 U167 ( .IN1(n34), .IN2(n59), .QN(\ab[5][1] ) );
  NOR2X0 U168 ( .IN1(n48), .IN2(n59), .QN(\ab[5][15] ) );
  NOR2X0 U169 ( .IN1(n47), .IN2(n59), .QN(\ab[5][14] ) );
  NOR2X0 U170 ( .IN1(n46), .IN2(n59), .QN(\ab[5][13] ) );
  NOR2X0 U171 ( .IN1(n45), .IN2(n59), .QN(\ab[5][12] ) );
  NOR2X0 U172 ( .IN1(n44), .IN2(n59), .QN(\ab[5][11] ) );
  NOR2X0 U173 ( .IN1(n43), .IN2(n59), .QN(\ab[5][10] ) );
  NOR2X0 U174 ( .IN1(n33), .IN2(n59), .QN(\ab[5][0] ) );
  NOR2X0 U175 ( .IN1(n42), .IN2(n60), .QN(\ab[4][9] ) );
  NOR2X0 U176 ( .IN1(n41), .IN2(n60), .QN(\ab[4][8] ) );
  NOR2X0 U177 ( .IN1(n40), .IN2(n60), .QN(\ab[4][7] ) );
  NOR2X0 U178 ( .IN1(n39), .IN2(n60), .QN(\ab[4][6] ) );
  NOR2X0 U179 ( .IN1(n38), .IN2(n60), .QN(\ab[4][5] ) );
  NOR2X0 U180 ( .IN1(n37), .IN2(n60), .QN(\ab[4][4] ) );
  NOR2X0 U181 ( .IN1(n36), .IN2(n60), .QN(\ab[4][3] ) );
  NOR2X0 U182 ( .IN1(n35), .IN2(n60), .QN(\ab[4][2] ) );
  NOR2X0 U183 ( .IN1(n34), .IN2(n60), .QN(\ab[4][1] ) );
  NOR2X0 U184 ( .IN1(n48), .IN2(n60), .QN(\ab[4][15] ) );
  NOR2X0 U185 ( .IN1(n47), .IN2(n60), .QN(\ab[4][14] ) );
  NOR2X0 U186 ( .IN1(n46), .IN2(n60), .QN(\ab[4][13] ) );
  NOR2X0 U187 ( .IN1(n45), .IN2(n60), .QN(\ab[4][12] ) );
  NOR2X0 U188 ( .IN1(n44), .IN2(n60), .QN(\ab[4][11] ) );
  NOR2X0 U189 ( .IN1(n43), .IN2(n60), .QN(\ab[4][10] ) );
  NOR2X0 U190 ( .IN1(n33), .IN2(n60), .QN(\ab[4][0] ) );
  NOR2X0 U191 ( .IN1(n42), .IN2(n61), .QN(\ab[3][9] ) );
  NOR2X0 U192 ( .IN1(n41), .IN2(n61), .QN(\ab[3][8] ) );
  NOR2X0 U193 ( .IN1(n40), .IN2(n61), .QN(\ab[3][7] ) );
  NOR2X0 U194 ( .IN1(n39), .IN2(n61), .QN(\ab[3][6] ) );
  NOR2X0 U195 ( .IN1(n38), .IN2(n61), .QN(\ab[3][5] ) );
  NOR2X0 U196 ( .IN1(n37), .IN2(n61), .QN(\ab[3][4] ) );
  NOR2X0 U197 ( .IN1(n36), .IN2(n61), .QN(\ab[3][3] ) );
  NOR2X0 U198 ( .IN1(n35), .IN2(n61), .QN(\ab[3][2] ) );
  NOR2X0 U199 ( .IN1(n34), .IN2(n61), .QN(\ab[3][1] ) );
  NOR2X0 U200 ( .IN1(n48), .IN2(n61), .QN(\ab[3][15] ) );
  NOR2X0 U201 ( .IN1(n47), .IN2(n61), .QN(\ab[3][14] ) );
  NOR2X0 U202 ( .IN1(n46), .IN2(n61), .QN(\ab[3][13] ) );
  NOR2X0 U203 ( .IN1(n45), .IN2(n61), .QN(\ab[3][12] ) );
  NOR2X0 U204 ( .IN1(n44), .IN2(n61), .QN(\ab[3][11] ) );
  NOR2X0 U205 ( .IN1(n43), .IN2(n61), .QN(\ab[3][10] ) );
  NOR2X0 U206 ( .IN1(n33), .IN2(n61), .QN(\ab[3][0] ) );
  NOR2X0 U207 ( .IN1(n42), .IN2(n62), .QN(\ab[2][9] ) );
  NOR2X0 U208 ( .IN1(n41), .IN2(n62), .QN(\ab[2][8] ) );
  NOR2X0 U209 ( .IN1(n40), .IN2(n62), .QN(\ab[2][7] ) );
  NOR2X0 U210 ( .IN1(n39), .IN2(n62), .QN(\ab[2][6] ) );
  NOR2X0 U211 ( .IN1(n38), .IN2(n62), .QN(\ab[2][5] ) );
  NOR2X0 U212 ( .IN1(n37), .IN2(n62), .QN(\ab[2][4] ) );
  NOR2X0 U213 ( .IN1(n36), .IN2(n62), .QN(\ab[2][3] ) );
  NOR2X0 U214 ( .IN1(n35), .IN2(n62), .QN(\ab[2][2] ) );
  NOR2X0 U215 ( .IN1(n34), .IN2(n62), .QN(\ab[2][1] ) );
  NOR2X0 U216 ( .IN1(n48), .IN2(n62), .QN(\ab[2][15] ) );
  NOR2X0 U217 ( .IN1(n47), .IN2(n62), .QN(\ab[2][14] ) );
  NOR2X0 U218 ( .IN1(n46), .IN2(n62), .QN(\ab[2][13] ) );
  NOR2X0 U219 ( .IN1(n45), .IN2(n62), .QN(\ab[2][12] ) );
  NOR2X0 U220 ( .IN1(n44), .IN2(n62), .QN(\ab[2][11] ) );
  NOR2X0 U221 ( .IN1(n43), .IN2(n62), .QN(\ab[2][10] ) );
  NOR2X0 U222 ( .IN1(n33), .IN2(n62), .QN(\ab[2][0] ) );
  NOR2X0 U223 ( .IN1(n42), .IN2(n63), .QN(\ab[1][9] ) );
  NOR2X0 U224 ( .IN1(n41), .IN2(n63), .QN(\ab[1][8] ) );
  NOR2X0 U225 ( .IN1(n40), .IN2(n63), .QN(\ab[1][7] ) );
  NOR2X0 U226 ( .IN1(n39), .IN2(n63), .QN(\ab[1][6] ) );
  NOR2X0 U227 ( .IN1(n38), .IN2(n63), .QN(\ab[1][5] ) );
  NOR2X0 U228 ( .IN1(n37), .IN2(n63), .QN(\ab[1][4] ) );
  NOR2X0 U229 ( .IN1(n36), .IN2(n63), .QN(\ab[1][3] ) );
  NOR2X0 U230 ( .IN1(n35), .IN2(n63), .QN(\ab[1][2] ) );
  NOR2X0 U231 ( .IN1(n34), .IN2(n63), .QN(\ab[1][1] ) );
  NOR2X0 U232 ( .IN1(n48), .IN2(n63), .QN(\ab[1][15] ) );
  NOR2X0 U233 ( .IN1(n47), .IN2(n63), .QN(\ab[1][14] ) );
  NOR2X0 U234 ( .IN1(n46), .IN2(n63), .QN(\ab[1][13] ) );
  NOR2X0 U235 ( .IN1(n45), .IN2(n63), .QN(\ab[1][12] ) );
  NOR2X0 U236 ( .IN1(n44), .IN2(n63), .QN(\ab[1][11] ) );
  NOR2X0 U237 ( .IN1(n43), .IN2(n63), .QN(\ab[1][10] ) );
  NOR2X0 U238 ( .IN1(n33), .IN2(n63), .QN(\ab[1][0] ) );
  NOR2X0 U239 ( .IN1(n42), .IN2(n49), .QN(\ab[15][9] ) );
  NOR2X0 U240 ( .IN1(n41), .IN2(n49), .QN(\ab[15][8] ) );
  NOR2X0 U241 ( .IN1(n40), .IN2(n49), .QN(\ab[15][7] ) );
  NOR2X0 U242 ( .IN1(n39), .IN2(n49), .QN(\ab[15][6] ) );
  NOR2X0 U243 ( .IN1(n38), .IN2(n49), .QN(\ab[15][5] ) );
  NOR2X0 U244 ( .IN1(n37), .IN2(n49), .QN(\ab[15][4] ) );
  NOR2X0 U245 ( .IN1(n36), .IN2(n49), .QN(\ab[15][3] ) );
  NOR2X0 U246 ( .IN1(n35), .IN2(n49), .QN(\ab[15][2] ) );
  NOR2X0 U247 ( .IN1(n34), .IN2(n49), .QN(\ab[15][1] ) );
  NOR2X0 U248 ( .IN1(n48), .IN2(n49), .QN(\ab[15][15] ) );
  NOR2X0 U249 ( .IN1(n47), .IN2(n49), .QN(\ab[15][14] ) );
  NOR2X0 U250 ( .IN1(n46), .IN2(n49), .QN(\ab[15][13] ) );
  NOR2X0 U251 ( .IN1(n45), .IN2(n49), .QN(\ab[15][12] ) );
  NOR2X0 U252 ( .IN1(n44), .IN2(n49), .QN(\ab[15][11] ) );
  NOR2X0 U253 ( .IN1(n43), .IN2(n49), .QN(\ab[15][10] ) );
  NOR2X0 U254 ( .IN1(n33), .IN2(n49), .QN(\ab[15][0] ) );
  NOR2X0 U255 ( .IN1(n42), .IN2(n50), .QN(\ab[14][9] ) );
  NOR2X0 U256 ( .IN1(n41), .IN2(n50), .QN(\ab[14][8] ) );
  NOR2X0 U257 ( .IN1(n40), .IN2(n50), .QN(\ab[14][7] ) );
  NOR2X0 U258 ( .IN1(n39), .IN2(n50), .QN(\ab[14][6] ) );
  NOR2X0 U259 ( .IN1(n38), .IN2(n50), .QN(\ab[14][5] ) );
  NOR2X0 U260 ( .IN1(n37), .IN2(n50), .QN(\ab[14][4] ) );
  NOR2X0 U261 ( .IN1(n36), .IN2(n50), .QN(\ab[14][3] ) );
  NOR2X0 U262 ( .IN1(n35), .IN2(n50), .QN(\ab[14][2] ) );
  NOR2X0 U263 ( .IN1(n34), .IN2(n50), .QN(\ab[14][1] ) );
  NOR2X0 U264 ( .IN1(n48), .IN2(n50), .QN(\ab[14][15] ) );
  NOR2X0 U265 ( .IN1(n47), .IN2(n50), .QN(\ab[14][14] ) );
  NOR2X0 U266 ( .IN1(n46), .IN2(n50), .QN(\ab[14][13] ) );
  NOR2X0 U267 ( .IN1(n45), .IN2(n50), .QN(\ab[14][12] ) );
  NOR2X0 U268 ( .IN1(n44), .IN2(n50), .QN(\ab[14][11] ) );
  NOR2X0 U269 ( .IN1(n43), .IN2(n50), .QN(\ab[14][10] ) );
  NOR2X0 U270 ( .IN1(n33), .IN2(n50), .QN(\ab[14][0] ) );
  NOR2X0 U271 ( .IN1(n42), .IN2(n51), .QN(\ab[13][9] ) );
  NOR2X0 U272 ( .IN1(n41), .IN2(n51), .QN(\ab[13][8] ) );
  NOR2X0 U273 ( .IN1(n40), .IN2(n51), .QN(\ab[13][7] ) );
  NOR2X0 U274 ( .IN1(n39), .IN2(n51), .QN(\ab[13][6] ) );
  NOR2X0 U275 ( .IN1(n38), .IN2(n51), .QN(\ab[13][5] ) );
  NOR2X0 U276 ( .IN1(n37), .IN2(n51), .QN(\ab[13][4] ) );
  NOR2X0 U277 ( .IN1(n36), .IN2(n51), .QN(\ab[13][3] ) );
  NOR2X0 U278 ( .IN1(n35), .IN2(n51), .QN(\ab[13][2] ) );
  NOR2X0 U279 ( .IN1(n34), .IN2(n51), .QN(\ab[13][1] ) );
  NOR2X0 U280 ( .IN1(n48), .IN2(n51), .QN(\ab[13][15] ) );
  NOR2X0 U281 ( .IN1(n47), .IN2(n51), .QN(\ab[13][14] ) );
  NOR2X0 U282 ( .IN1(n46), .IN2(n51), .QN(\ab[13][13] ) );
  NOR2X0 U283 ( .IN1(n45), .IN2(n51), .QN(\ab[13][12] ) );
  NOR2X0 U284 ( .IN1(n44), .IN2(n51), .QN(\ab[13][11] ) );
  NOR2X0 U285 ( .IN1(n43), .IN2(n51), .QN(\ab[13][10] ) );
  NOR2X0 U286 ( .IN1(n33), .IN2(n51), .QN(\ab[13][0] ) );
  NOR2X0 U287 ( .IN1(n42), .IN2(n52), .QN(\ab[12][9] ) );
  NOR2X0 U288 ( .IN1(n41), .IN2(n52), .QN(\ab[12][8] ) );
  NOR2X0 U289 ( .IN1(n40), .IN2(n52), .QN(\ab[12][7] ) );
  NOR2X0 U290 ( .IN1(n39), .IN2(n52), .QN(\ab[12][6] ) );
  NOR2X0 U291 ( .IN1(n38), .IN2(n52), .QN(\ab[12][5] ) );
  NOR2X0 U292 ( .IN1(n37), .IN2(n52), .QN(\ab[12][4] ) );
  NOR2X0 U293 ( .IN1(n36), .IN2(n52), .QN(\ab[12][3] ) );
  NOR2X0 U294 ( .IN1(n35), .IN2(n52), .QN(\ab[12][2] ) );
  NOR2X0 U295 ( .IN1(n34), .IN2(n52), .QN(\ab[12][1] ) );
  NOR2X0 U296 ( .IN1(n48), .IN2(n52), .QN(\ab[12][15] ) );
  NOR2X0 U297 ( .IN1(n47), .IN2(n52), .QN(\ab[12][14] ) );
  NOR2X0 U298 ( .IN1(n46), .IN2(n52), .QN(\ab[12][13] ) );
  NOR2X0 U299 ( .IN1(n45), .IN2(n52), .QN(\ab[12][12] ) );
  NOR2X0 U300 ( .IN1(n44), .IN2(n52), .QN(\ab[12][11] ) );
  NOR2X0 U301 ( .IN1(n43), .IN2(n52), .QN(\ab[12][10] ) );
  NOR2X0 U302 ( .IN1(n33), .IN2(n52), .QN(\ab[12][0] ) );
  NOR2X0 U303 ( .IN1(n42), .IN2(n53), .QN(\ab[11][9] ) );
  NOR2X0 U304 ( .IN1(n41), .IN2(n53), .QN(\ab[11][8] ) );
  NOR2X0 U305 ( .IN1(n40), .IN2(n53), .QN(\ab[11][7] ) );
  NOR2X0 U306 ( .IN1(n39), .IN2(n53), .QN(\ab[11][6] ) );
  NOR2X0 U307 ( .IN1(n38), .IN2(n53), .QN(\ab[11][5] ) );
  NOR2X0 U308 ( .IN1(n37), .IN2(n53), .QN(\ab[11][4] ) );
  NOR2X0 U309 ( .IN1(n36), .IN2(n53), .QN(\ab[11][3] ) );
  NOR2X0 U310 ( .IN1(n35), .IN2(n53), .QN(\ab[11][2] ) );
  NOR2X0 U311 ( .IN1(n34), .IN2(n53), .QN(\ab[11][1] ) );
  NOR2X0 U312 ( .IN1(n48), .IN2(n53), .QN(\ab[11][15] ) );
  NOR2X0 U313 ( .IN1(n47), .IN2(n53), .QN(\ab[11][14] ) );
  NOR2X0 U314 ( .IN1(n46), .IN2(n53), .QN(\ab[11][13] ) );
  NOR2X0 U315 ( .IN1(n45), .IN2(n53), .QN(\ab[11][12] ) );
  NOR2X0 U316 ( .IN1(n44), .IN2(n53), .QN(\ab[11][11] ) );
  NOR2X0 U317 ( .IN1(n43), .IN2(n53), .QN(\ab[11][10] ) );
  NOR2X0 U318 ( .IN1(n33), .IN2(n53), .QN(\ab[11][0] ) );
  NOR2X0 U319 ( .IN1(n42), .IN2(n54), .QN(\ab[10][9] ) );
  NOR2X0 U320 ( .IN1(n41), .IN2(n54), .QN(\ab[10][8] ) );
  NOR2X0 U321 ( .IN1(n40), .IN2(n54), .QN(\ab[10][7] ) );
  NOR2X0 U322 ( .IN1(n39), .IN2(n54), .QN(\ab[10][6] ) );
  NOR2X0 U323 ( .IN1(n38), .IN2(n54), .QN(\ab[10][5] ) );
  NOR2X0 U324 ( .IN1(n37), .IN2(n54), .QN(\ab[10][4] ) );
  NOR2X0 U325 ( .IN1(n36), .IN2(n54), .QN(\ab[10][3] ) );
  NOR2X0 U326 ( .IN1(n35), .IN2(n54), .QN(\ab[10][2] ) );
  NOR2X0 U327 ( .IN1(n34), .IN2(n54), .QN(\ab[10][1] ) );
  NOR2X0 U328 ( .IN1(n48), .IN2(n54), .QN(\ab[10][15] ) );
  NOR2X0 U329 ( .IN1(n47), .IN2(n54), .QN(\ab[10][14] ) );
  NOR2X0 U330 ( .IN1(n46), .IN2(n54), .QN(\ab[10][13] ) );
  NOR2X0 U331 ( .IN1(n45), .IN2(n54), .QN(\ab[10][12] ) );
  NOR2X0 U332 ( .IN1(n44), .IN2(n54), .QN(\ab[10][11] ) );
  NOR2X0 U333 ( .IN1(n43), .IN2(n54), .QN(\ab[10][10] ) );
  NOR2X0 U334 ( .IN1(n33), .IN2(n54), .QN(\ab[10][0] ) );
  NOR2X0 U335 ( .IN1(n42), .IN2(n64), .QN(\ab[0][9] ) );
  NOR2X0 U336 ( .IN1(n41), .IN2(n64), .QN(\ab[0][8] ) );
  NOR2X0 U337 ( .IN1(n40), .IN2(n64), .QN(\ab[0][7] ) );
  NOR2X0 U338 ( .IN1(n39), .IN2(n64), .QN(\ab[0][6] ) );
  NOR2X0 U339 ( .IN1(n38), .IN2(n64), .QN(\ab[0][5] ) );
  NOR2X0 U340 ( .IN1(n37), .IN2(n64), .QN(\ab[0][4] ) );
  NOR2X0 U341 ( .IN1(n36), .IN2(n64), .QN(\ab[0][3] ) );
  NOR2X0 U342 ( .IN1(n35), .IN2(n64), .QN(\ab[0][2] ) );
  NOR2X0 U343 ( .IN1(n34), .IN2(n64), .QN(\ab[0][1] ) );
  NOR2X0 U344 ( .IN1(n48), .IN2(n64), .QN(\ab[0][15] ) );
  NOR2X0 U345 ( .IN1(n47), .IN2(n64), .QN(\ab[0][14] ) );
  NOR2X0 U346 ( .IN1(n46), .IN2(n64), .QN(\ab[0][13] ) );
  NOR2X0 U347 ( .IN1(n45), .IN2(n64), .QN(\ab[0][12] ) );
  NOR2X0 U348 ( .IN1(n44), .IN2(n64), .QN(\ab[0][11] ) );
  NOR2X0 U349 ( .IN1(n43), .IN2(n64), .QN(\ab[0][10] ) );
  NOR2X0 U350 ( .IN1(n33), .IN2(n64), .QN(PRODUCT[0]) );
endmodule


module betterNeighborsInMyCluster ( clock, nrst, en, start, address, wr_en, 
        data_in, MY_CLUSTER_ID, mybest, besthop, bestvalue, bestneighborID, 
        nextsinks, data_out, done );
  output [10:0] address;
  input [15:0] data_in;
  input [15:0] MY_CLUSTER_ID;
  input [15:0] mybest;
  output [15:0] besthop;
  output [15:0] bestvalue;
  output [15:0] bestneighborID;
  output [15:0] nextsinks;
  output [15:0] data_out;
  input clock, nrst, en, start;
  output wr_en, done;
  wire   N130, N135, N136, N137, N138, N139, N140, N141, N142, N143, N144,
         N145, N146, N147, N148, N150, N151, N153, N154, N155, N156, N157,
         N158, N159, N160, N163, N164, N166, N167, N168, N169, N170, N171,
         N172, N188, N189, N190, N191, N192, N193, N194, N230, N231, N232,
         N233, N234, N235, N236, N237, N267, N268, N269, N270, N271, N272,
         N273, N292, N293, N294, N295, N296, N297, N298, N299, N300, N301,
         N302, N303, N304, N305, N306, N307, N319, N320, N321, N322, N323,
         N324, N325, N326, N327, N328, N330, N331, N332, N333, N334, N335,
         N336, N337, N338, N339, N353, N354, N355, N356, N357, N358, N359,
         N360, N361, N362, N363, N364, N365, N366, N367, N368, N369, N370,
         N371, N374, N375, N376, N377, N378, N379, N380, N381, N382, N383,
         N384, N385, N386, N387, N388, N389, N406, N413, N418, N419, N420,
         N421, N422, N423, N424, N425, N426, N427, N428, N429, N430, N431,
         N432, N433, N434, N435, N436, N437, N438, N439, N440, N441, N442,
         N443, N444, N445, N446, N447, N448, N449, N450, N451, N452, N453,
         N454, N455, N456, N457, N458, N459, N472, N473, N474, N475, N476,
         N477, N478, N479, N480, N481, N483, N486, N487, N488, N489, N490,
         N491, N492, N493, N494, N495, N496, N497, N498, N499, N501, N502,
         N503, N504, N505, N506, N507, N508, N509, N510, N511, N534, N535,
         N536, N537, N538, N539, N540, N1262, N1264, N1266, N1268, N1270,
         N1272, N1276, n55, n56, n57, n58, n59, n60, n61, n62, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510,
         n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521,
         n522, n523, n524, n525, n526, n527, N317, N316, N315, N314, N313,
         N312, N311, N310, \add_218/carry[10] , \add_218/carry[9] ,
         \add_218/carry[8] , \add_218/carry[7] , \add_218/carry[6] ,
         \add_218/carry[5] , \add_212/carry[10] , \add_212/carry[9] ,
         \add_212/carry[8] , \add_212/carry[7] , \add_212/carry[6] ,
         \add_212/carry[5] , \add_199/carry[10] , \add_199/carry[9] ,
         \add_199/carry[8] , \add_199/carry[7] , \add_199/carry[6] ,
         \add_199/carry[5] , \add_177/carry[10] , \add_177/carry[9] ,
         \add_177/carry[8] , \add_177/carry[7] , \add_177/carry[6] ,
         \add_177/carry[5] , \add_137/carry[10] , \add_137/carry[9] ,
         \add_137/carry[8] , \add_137/carry[7] , \add_137/carry[6] ,
         \add_137/carry[5] , \add_128/carry[10] , \add_128/carry[9] ,
         \add_128/carry[8] , \add_128/carry[7] , \add_128/carry[6] ,
         \add_128/carry[5] , \add_117/carry[10] , \add_117/carry[9] ,
         \add_117/carry[8] , \add_117/carry[7] , \add_117/carry[6] ,
         \add_117/carry[5] , \add_108/carry[10] , \add_108/carry[9] ,
         \add_108/carry[8] , \add_108/carry[7] , \add_108/carry[6] ,
         \add_108/carry[5] , \r221/carry[10] , \r221/carry[9] ,
         \r221/carry[8] , \r221/carry[7] , \r221/carry[6] , \r221/carry[5] ,
         \r212/carry[10] , \r212/carry[9] , \r212/carry[8] , \r212/carry[7] ,
         \r212/carry[6] , \r212/carry[5] , \add_151/carry[10] ,
         \add_151/carry[9] , \add_151/carry[8] , \add_151/carry[7] ,
         \add_151/carry[6] , \add_151/carry[5] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n528, n529, n530, n531, n532, n533, n534, n535, n536,
         n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, n547,
         n548, n549, n550, n551, n552, n553, n554, n555, n556, n557, n558,
         n559, n560, n561, n562, n563, n564, n565, n566, n567, n568, n569,
         n570, n571, n572, n573, n574, n575, n576, n577, n578, n579, n580,
         n581, n582, n583, n584, n585, n586, n587, n588, n589, n590, n591,
         n592, n593, n594, n595, n596, n597, n598, n599, n600, n601, n602,
         n603, n604, n605, n606, n607, n608, n609, n610, n611, n612, n613,
         n614, n615, n616, n617, n618, n619, n620, n621, n622, n623, n624,
         n625, n626, n627, n628, n629, n630, n631, n632, n633, n634, n635,
         n636, n637, n638, n639, n640, n641, n642, n643, n644, n645, n646,
         n647, n648, n649, n650, n651, n652, n653, n654, n655, n656, n657,
         n658, n659, n660, n661, n662, n663, n664, n665, n666, n667, n668,
         n669, n670, n671, n672, n673, n674, n675, n676, n677, n678, n679,
         n680, n681, n682, n683, n684, n685, n686, n687, n688, n689, n690,
         n691, n692, n693, n694, n695, n696, n697, n698, n699, n700, n701,
         n702, n703, n704, n705, n706, n707, n708, n709, n710, n711, n712,
         n713, n714, n715, n716, n717, n718, n719, n720, n721, n722, n723,
         n724, n725, n726, n727, n728, n729, n730, n731, n732, n733, n734,
         n735, n736, n737, n738, n739, n740, n741, n742, n743, n744, n745,
         n746, n747, n748, n749, n750, n751, n752, n753, n754, n755, n756,
         n757, n758, n759, n760;
  wire   [3:0] state;
  wire   [15:0] i;
  wire   [15:0] neighborCount;
  wire   [15:0] betterneighborCount;
  wire   [30:0] fpTemp;
  wire   [15:0] j;
  wire   [15:0] k;
  wire   [15:0] batteryStat;
  wire   [15:0] knownSinkCount;
  wire   [15:0] neighborID;
  wire   [15:0] qValue;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;
  assign besthop[0] = N163;
  assign besthop[1] = N164;

  DFFX1 \state_reg[3]  ( .D(n526), .CLK(clock), .Q(state[3]), .QN(n1) );
  DFFX1 \state_reg[2]  ( .D(n523), .CLK(clock), .Q(state[2]), .QN(n4) );
  DFFX1 \nextsinks_buf_reg[1]  ( .D(n426), .CLK(clock), .Q(nextsinks[1]) );
  DFFX1 \nextsinks_buf_reg[2]  ( .D(n425), .CLK(clock), .Q(nextsinks[2]) );
  DFFX1 \nextsinks_buf_reg[3]  ( .D(n424), .CLK(clock), .Q(nextsinks[3]) );
  DFFX1 \nextsinks_buf_reg[4]  ( .D(n423), .CLK(clock), .Q(nextsinks[4]) );
  DFFX1 \nextsinks_buf_reg[5]  ( .D(n422), .CLK(clock), .Q(nextsinks[5]) );
  DFFX1 \nextsinks_buf_reg[7]  ( .D(n420), .CLK(clock), .Q(nextsinks[7]) );
  DFFX1 \nextsinks_buf_reg[8]  ( .D(n419), .CLK(clock), .Q(nextsinks[8]) );
  DFFX1 \nextsinks_buf_reg[9]  ( .D(n418), .CLK(clock), .Q(nextsinks[9]) );
  DFFX1 \nextsinks_buf_reg[10]  ( .D(n417), .CLK(clock), .Q(nextsinks[10]) );
  DFFX1 \nextsinks_buf_reg[11]  ( .D(n416), .CLK(clock), .Q(nextsinks[11]) );
  DFFX1 \nextsinks_buf_reg[12]  ( .D(n415), .CLK(clock), .Q(nextsinks[12]) );
  DFFX1 \nextsinks_buf_reg[13]  ( .D(n414), .CLK(clock), .Q(nextsinks[13]) );
  DFFX1 \nextsinks_buf_reg[14]  ( .D(n413), .CLK(clock), .Q(nextsinks[14]) );
  DFFX1 \nextsinks_buf_reg[15]  ( .D(n412), .CLK(clock), .Q(nextsinks[15]) );
  DFFX1 \fpTemp_reg[14]  ( .D(n395), .CLK(clock), .Q(n556), .QN(n754) );
  DFFX1 \fpTemp_reg[13]  ( .D(n394), .CLK(clock), .Q(n557), .QN(n753) );
  DFFX1 \fpTemp_reg[12]  ( .D(n393), .CLK(clock), .Q(n558), .QN(n752) );
  DFFX1 \fpTemp_reg[11]  ( .D(n392), .CLK(clock), .Q(n559), .QN(n751) );
  DFFX1 \fpTemp_reg[10]  ( .D(n391), .CLK(clock), .Q(n560), .QN(n750) );
  DFFX1 \fpTemp_reg[9]  ( .D(n390), .CLK(clock), .Q(n561), .QN(n749) );
  DFFX1 \fpTemp_reg[8]  ( .D(n389), .CLK(clock), .Q(n562), .QN(n748) );
  DFFX1 \fpTemp_reg[7]  ( .D(n388), .CLK(clock), .Q(n563), .QN(n747) );
  DFFX1 \fpTemp_reg[6]  ( .D(n387), .CLK(clock), .Q(n564), .QN(n746) );
  DFFX1 \fpTemp_reg[5]  ( .D(n386), .CLK(clock), .Q(n565), .QN(n745) );
  DFFX1 \fpTemp_reg[4]  ( .D(n385), .CLK(clock), .Q(n566), .QN(n744) );
  DFFX1 \fpTemp_reg[3]  ( .D(n384), .CLK(clock), .Q(n567), .QN(n743) );
  DFFX1 \fpTemp_reg[2]  ( .D(n383), .CLK(clock), .Q(n568), .QN(n742) );
  DFFX1 \fpTemp_reg[1]  ( .D(n382), .CLK(clock), .Q(n569), .QN(n741) );
  DFFX1 \fpTemp_reg[0]  ( .D(n381), .CLK(clock), .Q(n570), .QN(n759) );
  DFFX1 \bestneighborID_buf_reg[11]  ( .D(n360), .CLK(clock), .Q(
        bestneighborID[11]) );
  DFFX1 \bestneighborID_buf_reg[10]  ( .D(n359), .CLK(clock), .Q(
        bestneighborID[10]) );
  DFFX1 \bestneighborID_buf_reg[9]  ( .D(n358), .CLK(clock), .Q(
        bestneighborID[9]) );
  DFFX1 \bestneighborID_buf_reg[8]  ( .D(n357), .CLK(clock), .Q(
        bestneighborID[8]) );
  DFFX1 \bestneighborID_buf_reg[7]  ( .D(n356), .CLK(clock), .Q(
        bestneighborID[7]) );
  DFFX1 \bestneighborID_buf_reg[6]  ( .D(n355), .CLK(clock), .Q(
        bestneighborID[6]) );
  DFFX1 \bestneighborID_buf_reg[5]  ( .D(n354), .CLK(clock), .Q(
        bestneighborID[5]) );
  DFFX1 \bestneighborID_buf_reg[4]  ( .D(n353), .CLK(clock), .Q(
        bestneighborID[4]) );
  DFFX1 \bestneighborID_buf_reg[3]  ( .D(n352), .CLK(clock), .Q(
        bestneighborID[3]) );
  DFFX1 \bestneighborID_buf_reg[2]  ( .D(n351), .CLK(clock), .Q(
        bestneighborID[2]) );
  DFFX1 \bestneighborID_buf_reg[1]  ( .D(n350), .CLK(clock), .Q(
        bestneighborID[1]) );
  DFFX1 \qValue_reg[15]  ( .D(n348), .CLK(clock), .Q(qValue[15]) );
  DFFX1 \qValue_reg[14]  ( .D(n347), .CLK(clock), .Q(qValue[14]) );
  DFFX1 \qValue_reg[13]  ( .D(n346), .CLK(clock), .Q(qValue[13]) );
  DFFX1 \qValue_reg[12]  ( .D(n345), .CLK(clock), .Q(qValue[12]) );
  DFFX1 \qValue_reg[11]  ( .D(n344), .CLK(clock), .Q(qValue[11]) );
  DFFX1 \qValue_reg[10]  ( .D(n343), .CLK(clock), .Q(qValue[10]) );
  DFFX1 \qValue_reg[9]  ( .D(n342), .CLK(clock), .Q(qValue[9]) );
  DFFX1 \qValue_reg[8]  ( .D(n341), .CLK(clock), .Q(qValue[8]) );
  DFFX1 \qValue_reg[7]  ( .D(n340), .CLK(clock), .Q(qValue[7]) );
  DFFX1 \qValue_reg[6]  ( .D(n339), .CLK(clock), .Q(qValue[6]) );
  DFFX1 \qValue_reg[5]  ( .D(n338), .CLK(clock), .Q(qValue[5]) );
  DFFX1 \qValue_reg[4]  ( .D(n337), .CLK(clock), .Q(qValue[4]) );
  DFFX1 \qValue_reg[3]  ( .D(n336), .CLK(clock), .Q(qValue[3]) );
  DFFX1 \qValue_reg[2]  ( .D(n335), .CLK(clock), .Q(qValue[2]) );
  DFFX1 \qValue_reg[1]  ( .D(n334), .CLK(clock), .Q(qValue[1]) );
  DFFX1 \qValue_reg[0]  ( .D(n333), .CLK(clock), .Q(qValue[0]) );
  DFFX1 wr_en_buf_reg ( .D(n331), .CLK(clock), .Q(wr_en) );
  DFFX1 \data_out_buf_reg[1]  ( .D(n313), .CLK(clock), .Q(data_out[1]) );
  DFFX1 \data_out_buf_reg[2]  ( .D(n312), .CLK(clock), .Q(data_out[2]) );
  DFFX1 \data_out_buf_reg[3]  ( .D(n311), .CLK(clock), .Q(data_out[3]) );
  DFFX1 \data_out_buf_reg[4]  ( .D(n310), .CLK(clock), .Q(data_out[4]) );
  DFFX1 \data_out_buf_reg[5]  ( .D(n309), .CLK(clock), .Q(data_out[5]) );
  DFFX1 \data_out_buf_reg[6]  ( .D(n308), .CLK(clock), .Q(data_out[6]) );
  DFFX1 \data_out_buf_reg[7]  ( .D(n307), .CLK(clock), .Q(data_out[7]) );
  DFFX1 \data_out_buf_reg[8]  ( .D(n306), .CLK(clock), .Q(data_out[8]) );
  DFFX1 \data_out_buf_reg[9]  ( .D(n305), .CLK(clock), .Q(data_out[9]) );
  DFFX1 \data_out_buf_reg[10]  ( .D(n304), .CLK(clock), .Q(data_out[10]) );
  DFFX1 \data_out_buf_reg[11]  ( .D(n303), .CLK(clock), .Q(data_out[11]) );
  DFFX1 \data_out_buf_reg[12]  ( .D(n302), .CLK(clock), .Q(data_out[12]) );
  DFFX1 \data_out_buf_reg[13]  ( .D(n301), .CLK(clock), .Q(data_out[13]) );
  DFFX1 \data_out_buf_reg[14]  ( .D(n300), .CLK(clock), .Q(data_out[14]) );
  DFFX1 \data_out_buf_reg[15]  ( .D(n299), .CLK(clock), .Q(data_out[15]) );
  DFFX1 \data_out_buf_reg[0]  ( .D(n314), .CLK(clock), .Q(data_out[0]) );
  DFFX1 \bestvalue_buf_reg[0]  ( .D(n298), .CLK(clock), .Q(bestvalue[0]), .QN(
        n5) );
  DFFX1 \besthop_buf_reg[15]  ( .D(n271), .CLK(clock), .Q(besthop[15]) );
  DFFX1 \besthop_buf_reg[14]  ( .D(n272), .CLK(clock), .Q(besthop[14]) );
  DFFX1 \besthop_buf_reg[13]  ( .D(n273), .CLK(clock), .Q(besthop[13]) );
  DFFX1 \besthop_buf_reg[12]  ( .D(n274), .CLK(clock), .Q(besthop[12]) );
  DFFX1 \besthop_buf_reg[11]  ( .D(n275), .CLK(clock), .Q(besthop[11]) );
  DFFX1 \besthop_buf_reg[10]  ( .D(n276), .CLK(clock), .Q(besthop[10]) );
  DFFX1 \besthop_buf_reg[9]  ( .D(n288), .CLK(clock), .Q(besthop[9]) );
  DFFX1 \besthop_buf_reg[8]  ( .D(n289), .CLK(clock), .Q(besthop[8]) );
  DFFX1 \besthop_buf_reg[7]  ( .D(n290), .CLK(clock), .Q(besthop[7]) );
  DFFX1 \besthop_buf_reg[5]  ( .D(n292), .CLK(clock), .Q(besthop[5]) );
  DFFX1 \besthop_buf_reg[4]  ( .D(n293), .CLK(clock), .Q(besthop[4]) );
  DFFX1 \besthop_buf_reg[3]  ( .D(n294), .CLK(clock), .Q(besthop[3]) );
  DFFX1 \besthop_buf_reg[2]  ( .D(n295), .CLK(clock), .Q(besthop[2]), .QN(n6)
         );
  DFFX1 \besthop_buf_reg[1]  ( .D(n296), .CLK(clock), .Q(N164) );
  DFFX1 \address_count_reg[1]  ( .D(n286), .CLK(clock), .Q(address[1]) );
  DFFX1 \address_count_reg[2]  ( .D(n285), .CLK(clock), .Q(address[2]) );
  DFFX1 \address_count_reg[3]  ( .D(n284), .CLK(clock), .Q(address[3]) );
  DFFX1 \address_count_reg[4]  ( .D(n283), .CLK(clock), .Q(address[4]) );
  DFFX1 \address_count_reg[5]  ( .D(n282), .CLK(clock), .Q(address[5]) );
  DFFX1 \address_count_reg[6]  ( .D(n281), .CLK(clock), .Q(address[6]) );
  DFFX1 \address_count_reg[7]  ( .D(n280), .CLK(clock), .Q(address[7]) );
  DFFX1 \address_count_reg[8]  ( .D(n279), .CLK(clock), .Q(address[8]) );
  DFFX1 \address_count_reg[9]  ( .D(n278), .CLK(clock), .Q(address[9]) );
  DFFX1 \address_count_reg[10]  ( .D(n277), .CLK(clock), .Q(address[10]) );
  betterNeighborsInMyCluster_DW01_inc_0 add_168 ( .A(fpTemp[30:15]), .SUM({
        N389, N388, N387, N386, N385, N384, N383, N382, N381, N380, N379, N378, 
        N377, N376, N375, N374}) );
  betterNeighborsInMyCluster_DW01_inc_1 add_146 ( .A(betterneighborCount), 
        .SUM({N307, N306, N305, N304, N303, N302, N301, N300, N299, N298, N297, 
        N296, N295, N294, N293, N292}) );
  betterNeighborsInMyCluster_DW01_inc_2 r209 ( .A({i[15:2], N331, N330}), 
        .SUM({N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, 
        N137, N136, N135, N151, N150}) );
  betterNeighborsInMyCluster_DW01_inc_3 add_211 ( .A({j[15:2], N473, N472}), 
        .SUM({N499, N498, N497, N496, N495, N494, N493, N492, N491, N490, N489, 
        N488, N487, N486, N502, N501}) );
  betterNeighborsInMyCluster_DW02_mult_0 mult_163 ( .A({1'b1, 1'b0, 1'b1, 1'b0}), .B(batteryStat), .TC(1'b0), .PRODUCT({N371, N370, N369, N368, N367, N366, 
        N365, N364, N363, N362, N361, N360, N359, N358, N357, N356, N355, N354, 
        N353, SYNOPSYS_UNCONNECTED__0}) );
  betterNeighborsInMyCluster_DW02_mult_1 mult_184 ( .A(qValue), .B({n43, n41, 
        n39, n37, n35, n33, n31, n29, n27, n25, n23, n21, n19, n17, n15, n13}), 
        .TC(1'b0), .PRODUCT({SYNOPSYS_UNCONNECTED__1, N458, N457, N456, N455, 
        N454, N453, N452, N451, N450, N449, N448, N447, N446, N445, N444, N443, 
        N442, N441, N440, N439, N438, N437, N436, N435, N434, N433, N432, N431, 
        N430, N429, N428}) );
  DFFX1 done_buf_reg ( .D(n332), .CLK(clock), .Q(done) );
  DFFX1 \state_reg[0]  ( .D(n525), .CLK(clock), .Q(state[0]), .QN(n722) );
  DFFX1 \state_reg[1]  ( .D(n524), .CLK(clock), .Q(state[1]), .QN(n685) );
  DFFX1 \neighborCount_reg[15]  ( .D(n476), .CLK(clock), .Q(neighborCount[15])
         );
  DFFX1 \neighborCount_reg[14]  ( .D(n477), .CLK(clock), .Q(neighborCount[14])
         );
  DFFX1 \neighborCount_reg[13]  ( .D(n478), .CLK(clock), .Q(neighborCount[13])
         );
  DFFX1 \neighborCount_reg[12]  ( .D(n479), .CLK(clock), .Q(neighborCount[12])
         );
  DFFX1 \neighborCount_reg[11]  ( .D(n480), .CLK(clock), .Q(neighborCount[11])
         );
  DFFX1 \neighborCount_reg[10]  ( .D(n481), .CLK(clock), .Q(neighborCount[10])
         );
  DFFX1 \neighborCount_reg[9]  ( .D(n482), .CLK(clock), .Q(neighborCount[9])
         );
  DFFX1 \neighborCount_reg[8]  ( .D(n483), .CLK(clock), .Q(neighborCount[8])
         );
  DFFX1 \neighborCount_reg[7]  ( .D(n484), .CLK(clock), .Q(neighborCount[7])
         );
  DFFX1 \neighborCount_reg[6]  ( .D(n485), .CLK(clock), .Q(neighborCount[6])
         );
  DFFX1 \neighborCount_reg[5]  ( .D(n486), .CLK(clock), .Q(neighborCount[5])
         );
  DFFX1 \neighborCount_reg[4]  ( .D(n487), .CLK(clock), .Q(neighborCount[4])
         );
  DFFX1 \neighborCount_reg[3]  ( .D(n488), .CLK(clock), .Q(neighborCount[3])
         );
  DFFX1 \neighborCount_reg[2]  ( .D(n489), .CLK(clock), .Q(neighborCount[2])
         );
  DFFX1 \neighborCount_reg[1]  ( .D(n490), .CLK(clock), .Q(neighborCount[1]), 
        .QN(n140) );
  DFFX1 \neighborCount_reg[0]  ( .D(n527), .CLK(clock), .Q(neighborCount[0]), 
        .QN(n142) );
  DFFX1 \knownSinkCount_reg[15]  ( .D(n460), .CLK(clock), .Q(
        knownSinkCount[15]) );
  DFFX1 \knownSinkCount_reg[14]  ( .D(n461), .CLK(clock), .Q(
        knownSinkCount[14]) );
  DFFX1 \knownSinkCount_reg[13]  ( .D(n462), .CLK(clock), .Q(
        knownSinkCount[13]) );
  DFFX1 \knownSinkCount_reg[12]  ( .D(n463), .CLK(clock), .Q(
        knownSinkCount[12]) );
  DFFX1 \knownSinkCount_reg[11]  ( .D(n464), .CLK(clock), .Q(
        knownSinkCount[11]) );
  DFFX1 \knownSinkCount_reg[10]  ( .D(n465), .CLK(clock), .Q(
        knownSinkCount[10]) );
  DFFX1 \knownSinkCount_reg[9]  ( .D(n466), .CLK(clock), .Q(knownSinkCount[9])
         );
  DFFX1 \knownSinkCount_reg[8]  ( .D(n467), .CLK(clock), .Q(knownSinkCount[8])
         );
  DFFX1 \knownSinkCount_reg[7]  ( .D(n468), .CLK(clock), .Q(knownSinkCount[7])
         );
  DFFX1 \knownSinkCount_reg[6]  ( .D(n469), .CLK(clock), .Q(knownSinkCount[6])
         );
  DFFX1 \knownSinkCount_reg[5]  ( .D(n470), .CLK(clock), .Q(knownSinkCount[5])
         );
  DFFX1 \knownSinkCount_reg[4]  ( .D(n471), .CLK(clock), .Q(knownSinkCount[4])
         );
  DFFX1 \knownSinkCount_reg[3]  ( .D(n472), .CLK(clock), .Q(knownSinkCount[3])
         );
  DFFX1 \knownSinkCount_reg[2]  ( .D(n473), .CLK(clock), .Q(knownSinkCount[2])
         );
  DFFX1 \knownSinkCount_reg[1]  ( .D(n474), .CLK(clock), .Q(knownSinkCount[1]), 
        .QN(n117) );
  DFFX1 \knownSinkCount_reg[0]  ( .D(n475), .CLK(clock), .Q(knownSinkCount[0]), 
        .QN(n116) );
  DFFX1 \j_reg[15]  ( .D(n444), .CLK(clock), .Q(j[15]) );
  DFFX1 \j_reg[14]  ( .D(n445), .CLK(clock), .Q(j[14]) );
  DFFX1 \j_reg[13]  ( .D(n446), .CLK(clock), .Q(j[13]) );
  DFFX1 \j_reg[12]  ( .D(n447), .CLK(clock), .Q(j[12]) );
  DFFX1 \j_reg[11]  ( .D(n448), .CLK(clock), .Q(j[11]) );
  DFFX1 \j_reg[10]  ( .D(n449), .CLK(clock), .Q(j[10]) );
  DFFX1 \j_reg[9]  ( .D(n450), .CLK(clock), .Q(j[9]) );
  DFFX1 \j_reg[8]  ( .D(n451), .CLK(clock), .Q(j[8]) );
  DFFX1 \j_reg[7]  ( .D(n452), .CLK(clock), .Q(j[7]) );
  DFFX1 \j_reg[6]  ( .D(n453), .CLK(clock), .Q(j[6]) );
  DFFX1 \j_reg[5]  ( .D(n454), .CLK(clock), .Q(j[5]) );
  DFFX1 \j_reg[4]  ( .D(n455), .CLK(clock), .Q(j[4]) );
  DFFX1 \j_reg[3]  ( .D(n456), .CLK(clock), .Q(j[3]) );
  DFFX1 \j_reg[2]  ( .D(n457), .CLK(clock), .Q(j[2]), .QN(N474) );
  DFFX1 \j_reg[1]  ( .D(n458), .CLK(clock), .Q(N473) );
  DFFX1 \j_reg[0]  ( .D(n459), .CLK(clock), .Q(N472) );
  DFFX1 \batteryStat_reg[15]  ( .D(n507), .CLK(clock), .Q(batteryStat[15]) );
  DFFX1 \batteryStat_reg[14]  ( .D(n508), .CLK(clock), .Q(batteryStat[14]) );
  DFFX1 \batteryStat_reg[13]  ( .D(n509), .CLK(clock), .Q(batteryStat[13]) );
  DFFX1 \batteryStat_reg[12]  ( .D(n510), .CLK(clock), .Q(batteryStat[12]) );
  DFFX1 \batteryStat_reg[11]  ( .D(n511), .CLK(clock), .Q(batteryStat[11]) );
  DFFX1 \batteryStat_reg[10]  ( .D(n512), .CLK(clock), .Q(batteryStat[10]) );
  DFFX1 \batteryStat_reg[9]  ( .D(n513), .CLK(clock), .Q(batteryStat[9]) );
  DFFX1 \batteryStat_reg[8]  ( .D(n514), .CLK(clock), .Q(batteryStat[8]) );
  DFFX1 \batteryStat_reg[7]  ( .D(n515), .CLK(clock), .Q(batteryStat[7]) );
  DFFX1 \batteryStat_reg[6]  ( .D(n516), .CLK(clock), .Q(batteryStat[6]) );
  DFFX1 \batteryStat_reg[5]  ( .D(n517), .CLK(clock), .Q(batteryStat[5]) );
  DFFX1 \batteryStat_reg[4]  ( .D(n518), .CLK(clock), .Q(batteryStat[4]) );
  DFFX1 \batteryStat_reg[3]  ( .D(n519), .CLK(clock), .Q(batteryStat[3]) );
  DFFX1 \batteryStat_reg[2]  ( .D(n520), .CLK(clock), .Q(batteryStat[2]) );
  DFFX1 \batteryStat_reg[1]  ( .D(n521), .CLK(clock), .Q(batteryStat[1]) );
  DFFX1 \batteryStat_reg[0]  ( .D(n522), .CLK(clock), .Q(batteryStat[0]) );
  DFFX1 \neighborID_reg[15]  ( .D(n491), .CLK(clock), .Q(neighborID[15]) );
  DFFX1 \neighborID_reg[14]  ( .D(n492), .CLK(clock), .Q(neighborID[14]) );
  DFFX1 \neighborID_reg[13]  ( .D(n493), .CLK(clock), .Q(neighborID[13]) );
  DFFX1 \neighborID_reg[12]  ( .D(n494), .CLK(clock), .Q(neighborID[12]) );
  DFFX1 \neighborID_reg[11]  ( .D(n495), .CLK(clock), .Q(neighborID[11]) );
  DFFX1 \neighborID_reg[10]  ( .D(n496), .CLK(clock), .Q(neighborID[10]) );
  DFFX1 \neighborID_reg[9]  ( .D(n497), .CLK(clock), .Q(neighborID[9]) );
  DFFX1 \neighborID_reg[8]  ( .D(n498), .CLK(clock), .Q(neighborID[8]) );
  DFFX1 \neighborID_reg[7]  ( .D(n499), .CLK(clock), .Q(neighborID[7]) );
  DFFX1 \neighborID_reg[6]  ( .D(n500), .CLK(clock), .Q(neighborID[6]) );
  DFFX1 \neighborID_reg[5]  ( .D(n501), .CLK(clock), .Q(neighborID[5]) );
  DFFX1 \neighborID_reg[4]  ( .D(n502), .CLK(clock), .Q(neighborID[4]) );
  DFFX1 \neighborID_reg[3]  ( .D(n503), .CLK(clock), .Q(neighborID[3]) );
  DFFX1 \neighborID_reg[2]  ( .D(n504), .CLK(clock), .Q(neighborID[2]) );
  DFFX1 \neighborID_reg[1]  ( .D(n505), .CLK(clock), .Q(neighborID[1]), .QN(
        n203) );
  DFFX1 \neighborID_reg[0]  ( .D(n506), .CLK(clock), .Q(neighborID[0]) );
  DFFX1 \bestneighborID_buf_reg[15]  ( .D(n364), .CLK(clock), .Q(
        bestneighborID[15]) );
  DFFX1 \bestneighborID_buf_reg[14]  ( .D(n363), .CLK(clock), .Q(
        bestneighborID[14]) );
  DFFX1 \bestneighborID_buf_reg[13]  ( .D(n362), .CLK(clock), .Q(
        bestneighborID[13]) );
  DFFX1 \bestneighborID_buf_reg[12]  ( .D(n361), .CLK(clock), .Q(
        bestneighborID[12]) );
  DFFX1 \bestneighborID_buf_reg[0]  ( .D(n349), .CLK(clock), .Q(
        bestneighborID[0]) );
  DFFX1 \k_reg[15]  ( .D(n380), .CLK(clock), .Q(k[15]) );
  DFFX1 \k_reg[14]  ( .D(n365), .CLK(clock), .Q(k[14]) );
  DFFX1 \k_reg[13]  ( .D(n366), .CLK(clock), .Q(k[13]) );
  DFFX1 \k_reg[12]  ( .D(n367), .CLK(clock), .Q(k[12]) );
  DFFX1 \k_reg[11]  ( .D(n368), .CLK(clock), .Q(k[11]) );
  DFFX1 \k_reg[10]  ( .D(n369), .CLK(clock), .Q(k[10]) );
  DFFX1 \nextsinks_buf_reg[6]  ( .D(n421), .CLK(clock), .Q(nextsinks[6]) );
  DFFX1 \nextsinks_buf_reg[0]  ( .D(n427), .CLK(clock), .Q(nextsinks[0]) );
  DFFX1 \k_reg[9]  ( .D(n370), .CLK(clock), .Q(k[9]), .QN(n55) );
  DFFX1 \k_reg[8]  ( .D(n371), .CLK(clock), .Q(k[8]), .QN(n56) );
  DFFX1 \k_reg[7]  ( .D(n372), .CLK(clock), .Q(k[7]), .QN(n57) );
  DFFX1 \k_reg[6]  ( .D(n373), .CLK(clock), .Q(k[6]), .QN(n58) );
  DFFX1 \k_reg[5]  ( .D(n374), .CLK(clock), .Q(k[5]), .QN(n59) );
  DFFX1 \k_reg[4]  ( .D(n375), .CLK(clock), .Q(k[4]), .QN(n60) );
  DFFX1 \k_reg[2]  ( .D(n377), .CLK(clock), .Q(k[2]), .QN(n61) );
  DFFX1 \k_reg[0]  ( .D(n379), .CLK(clock), .Q(k[0]), .QN(n62) );
  DFFX1 \k_reg[3]  ( .D(n376), .CLK(clock), .Q(k[3]), .QN(n758) );
  DFFX1 \k_reg[1]  ( .D(n378), .CLK(clock), .Q(k[1]), .QN(n757) );
  DFFX1 \address_count_reg[0]  ( .D(n287), .CLK(clock), .Q(address[0]), .QN(
        n760) );
  DFFX1 \i_reg[15]  ( .D(n443), .CLK(clock), .Q(i[15]) );
  DFFX1 \i_reg[14]  ( .D(n428), .CLK(clock), .Q(i[14]) );
  DFFX1 \i_reg[13]  ( .D(n429), .CLK(clock), .Q(i[13]) );
  DFFX1 \i_reg[12]  ( .D(n430), .CLK(clock), .Q(i[12]) );
  DFFX1 \i_reg[11]  ( .D(n431), .CLK(clock), .Q(i[11]) );
  DFFX1 \i_reg[10]  ( .D(n432), .CLK(clock), .Q(i[10]) );
  DFFX1 \i_reg[9]  ( .D(n433), .CLK(clock), .Q(i[9]) );
  DFFX1 \i_reg[8]  ( .D(n434), .CLK(clock), .Q(i[8]) );
  DFFX1 \i_reg[7]  ( .D(n435), .CLK(clock), .Q(i[7]) );
  DFFX1 \i_reg[6]  ( .D(n436), .CLK(clock), .Q(i[6]), .QN(n755) );
  DFFX1 \i_reg[5]  ( .D(n437), .CLK(clock), .Q(i[5]) );
  DFFX1 \i_reg[4]  ( .D(n438), .CLK(clock), .Q(i[4]) );
  DFFX1 \i_reg[3]  ( .D(n439), .CLK(clock), .Q(i[3]) );
  DFFX1 \i_reg[2]  ( .D(n440), .CLK(clock), .Q(i[2]), .QN(N332) );
  DFFX1 \i_reg[1]  ( .D(n441), .CLK(clock), .Q(N331) );
  DFFX1 \i_reg[0]  ( .D(n442), .CLK(clock), .Q(N330), .QN(n756) );
  DFFX1 \betterneighborCount_reg[15]  ( .D(n315), .CLK(clock), .Q(
        betterneighborCount[15]) );
  DFFX1 \betterneighborCount_reg[14]  ( .D(n316), .CLK(clock), .Q(
        betterneighborCount[14]) );
  DFFX1 \betterneighborCount_reg[13]  ( .D(n317), .CLK(clock), .Q(
        betterneighborCount[13]) );
  DFFX1 \betterneighborCount_reg[12]  ( .D(n318), .CLK(clock), .Q(
        betterneighborCount[12]) );
  DFFX1 \betterneighborCount_reg[11]  ( .D(n319), .CLK(clock), .Q(
        betterneighborCount[11]) );
  DFFX1 \betterneighborCount_reg[10]  ( .D(n320), .CLK(clock), .Q(
        betterneighborCount[10]) );
  DFFX1 \betterneighborCount_reg[9]  ( .D(n321), .CLK(clock), .Q(
        betterneighborCount[9]) );
  DFFX1 \betterneighborCount_reg[8]  ( .D(n322), .CLK(clock), .Q(
        betterneighborCount[8]) );
  DFFX1 \betterneighborCount_reg[7]  ( .D(n323), .CLK(clock), .Q(
        betterneighborCount[7]) );
  DFFX1 \betterneighborCount_reg[6]  ( .D(n324), .CLK(clock), .Q(
        betterneighborCount[6]) );
  DFFX1 \betterneighborCount_reg[5]  ( .D(n325), .CLK(clock), .Q(
        betterneighborCount[5]) );
  DFFX1 \betterneighborCount_reg[4]  ( .D(n326), .CLK(clock), .Q(
        betterneighborCount[4]) );
  DFFX1 \betterneighborCount_reg[3]  ( .D(n327), .CLK(clock), .Q(
        betterneighborCount[3]) );
  DFFX1 \betterneighborCount_reg[2]  ( .D(n328), .CLK(clock), .Q(
        betterneighborCount[2]) );
  DFFX1 \betterneighborCount_reg[1]  ( .D(n329), .CLK(clock), .Q(
        betterneighborCount[1]) );
  DFFX1 \betterneighborCount_reg[0]  ( .D(n330), .CLK(clock), .Q(
        betterneighborCount[0]) );
  DFFX1 \fpTemp_reg[15]  ( .D(n396), .CLK(clock), .Q(fpTemp[15]) );
  DFFX1 \fpTemp_reg[16]  ( .D(n397), .CLK(clock), .Q(fpTemp[16]) );
  DFFX1 \fpTemp_reg[17]  ( .D(n398), .CLK(clock), .Q(fpTemp[17]) );
  DFFX1 \fpTemp_reg[18]  ( .D(n399), .CLK(clock), .Q(fpTemp[18]) );
  DFFX1 \fpTemp_reg[19]  ( .D(n400), .CLK(clock), .Q(fpTemp[19]) );
  DFFX1 \fpTemp_reg[20]  ( .D(n401), .CLK(clock), .Q(fpTemp[20]) );
  DFFX1 \fpTemp_reg[21]  ( .D(n402), .CLK(clock), .Q(fpTemp[21]) );
  DFFX1 \fpTemp_reg[22]  ( .D(n403), .CLK(clock), .Q(fpTemp[22]) );
  DFFX1 \fpTemp_reg[23]  ( .D(n404), .CLK(clock), .Q(fpTemp[23]) );
  DFFX1 \fpTemp_reg[24]  ( .D(n405), .CLK(clock), .Q(fpTemp[24]) );
  DFFX1 \fpTemp_reg[25]  ( .D(n406), .CLK(clock), .Q(fpTemp[25]) );
  DFFX1 \fpTemp_reg[26]  ( .D(n407), .CLK(clock), .Q(fpTemp[26]) );
  DFFX1 \fpTemp_reg[27]  ( .D(n408), .CLK(clock), .Q(fpTemp[27]) );
  DFFX1 \fpTemp_reg[28]  ( .D(n409), .CLK(clock), .Q(fpTemp[28]) );
  DFFX1 \fpTemp_reg[29]  ( .D(n410), .CLK(clock), .Q(fpTemp[29]) );
  DFFX1 \fpTemp_reg[30]  ( .D(n411), .CLK(clock), .Q(fpTemp[30]) );
  DFFX1 \bestvalue_buf_reg[15]  ( .D(n256), .CLK(clock), .Q(bestvalue[15]), 
        .QN(n724) );
  DFFX1 \bestvalue_buf_reg[14]  ( .D(n257), .CLK(clock), .Q(bestvalue[14]), 
        .QN(n725) );
  DFFX1 \bestvalue_buf_reg[13]  ( .D(n258), .CLK(clock), .Q(bestvalue[13]), 
        .QN(n726) );
  DFFX1 \bestvalue_buf_reg[12]  ( .D(n259), .CLK(clock), .Q(bestvalue[12]), 
        .QN(n727) );
  DFFX1 \bestvalue_buf_reg[11]  ( .D(n260), .CLK(clock), .Q(bestvalue[11]), 
        .QN(n728) );
  DFFX1 \bestvalue_buf_reg[10]  ( .D(n261), .CLK(clock), .Q(bestvalue[10]), 
        .QN(n729) );
  DFFX1 \bestvalue_buf_reg[9]  ( .D(n262), .CLK(clock), .Q(bestvalue[9]), .QN(
        n730) );
  DFFX1 \bestvalue_buf_reg[8]  ( .D(n263), .CLK(clock), .Q(bestvalue[8]), .QN(
        n731) );
  DFFX1 \bestvalue_buf_reg[4]  ( .D(n267), .CLK(clock), .Q(bestvalue[4]), .QN(
        n735) );
  DFFX1 \bestvalue_buf_reg[3]  ( .D(n268), .CLK(clock), .Q(bestvalue[3]), .QN(
        n736) );
  DFFX1 \bestvalue_buf_reg[2]  ( .D(n269), .CLK(clock), .Q(bestvalue[2]), .QN(
        n737) );
  DFFX1 \bestvalue_buf_reg[1]  ( .D(n270), .CLK(clock), .Q(bestvalue[1]), .QN(
        n738) );
  DFFX1 \besthop_buf_reg[6]  ( .D(n291), .CLK(clock), .Q(besthop[6]), .QN(n739) );
  DFFX1 \besthop_buf_reg[0]  ( .D(n297), .CLK(clock), .Q(N163), .QN(n740) );
  DFFX1 \bestvalue_buf_reg[7]  ( .D(n264), .CLK(clock), .Q(bestvalue[7]), .QN(
        n732) );
  DFFX1 \bestvalue_buf_reg[6]  ( .D(n265), .CLK(clock), .Q(bestvalue[6]), .QN(
        n733) );
  DFFX1 \bestvalue_buf_reg[5]  ( .D(n266), .CLK(clock), .Q(bestvalue[5]), .QN(
        n734) );
  OR2X1 U3 ( .IN1(n253), .IN2(n45), .Q(n2) );
  OR2X1 U4 ( .IN1(n571), .IN2(n251), .Q(n3) );
  INVX0 U5 ( .INP(n44), .ZN(n43) );
  INVX0 U6 ( .INP(n32), .ZN(n31) );
  INVX0 U7 ( .INP(n42), .ZN(n41) );
  INVX0 U8 ( .INP(n40), .ZN(n39) );
  INVX0 U9 ( .INP(n18), .ZN(n17) );
  INVX0 U10 ( .INP(n36), .ZN(n35) );
  INVX0 U11 ( .INP(n24), .ZN(n23) );
  INVX0 U12 ( .INP(n26), .ZN(n25) );
  INVX0 U13 ( .INP(n28), .ZN(n27) );
  INVX0 U14 ( .INP(n30), .ZN(n29) );
  INVX0 U15 ( .INP(n20), .ZN(n19) );
  INVX0 U16 ( .INP(n34), .ZN(n33) );
  INVX0 U17 ( .INP(n22), .ZN(n21) );
  INVX0 U18 ( .INP(n38), .ZN(n37) );
  INVX0 U19 ( .INP(n16), .ZN(n15) );
  INVX0 U20 ( .INP(n14), .ZN(n13) );
  INVX0 U21 ( .INP(data_in[1]), .ZN(n16) );
  INVX0 U22 ( .INP(data_in[0]), .ZN(n14) );
  INVX0 U23 ( .INP(data_in[11]), .ZN(n36) );
  INVX0 U24 ( .INP(data_in[12]), .ZN(n38) );
  INVX0 U25 ( .INP(data_in[6]), .ZN(n26) );
  INVX0 U26 ( .INP(data_in[8]), .ZN(n30) );
  INVX0 U27 ( .INP(data_in[5]), .ZN(n24) );
  INVX0 U28 ( .INP(data_in[7]), .ZN(n28) );
  INVX0 U29 ( .INP(data_in[3]), .ZN(n20) );
  INVX0 U30 ( .INP(data_in[4]), .ZN(n22) );
  INVX0 U31 ( .INP(data_in[10]), .ZN(n34) );
  INVX0 U32 ( .INP(data_in[2]), .ZN(n18) );
  INVX0 U33 ( .INP(data_in[9]), .ZN(n32) );
  INVX0 U34 ( .INP(data_in[13]), .ZN(n40) );
  INVX0 U35 ( .INP(data_in[15]), .ZN(n44) );
  INVX0 U36 ( .INP(data_in[14]), .ZN(n42) );
  INVX0 U37 ( .INP(N446), .ZN(n170) );
  INVX0 U38 ( .INP(N452), .ZN(n176) );
  INVX0 U39 ( .INP(N450), .ZN(n174) );
  INVX0 U40 ( .INP(N447), .ZN(n171) );
  INVX0 U41 ( .INP(N449), .ZN(n173) );
  INVX0 U42 ( .INP(N453), .ZN(n177) );
  INVX0 U43 ( .INP(N455), .ZN(n179) );
  INVX0 U44 ( .INP(n3), .ZN(n12) );
  INVX0 U45 ( .INP(n226), .ZN(n624) );
  INVX0 U46 ( .INP(n3), .ZN(n11) );
  INVX0 U47 ( .INP(N444), .ZN(n168) );
  NOR2X0 U48 ( .IN1(n601), .IN2(n604), .QN(n605) );
  NOR2X0 U49 ( .IN1(n571), .IN2(n606), .QN(n593) );
  INVX0 U50 ( .INP(n235), .ZN(n604) );
  INVX0 U51 ( .INP(n601), .ZN(n594) );
  INVX0 U52 ( .INP(n219), .ZN(n623) );
  INVX0 U53 ( .INP(n2), .ZN(n9) );
  INVX0 U54 ( .INP(n2), .ZN(n7) );
  INVX0 U55 ( .INP(n2), .ZN(n8) );
  INVX0 U56 ( .INP(n2), .ZN(n10) );
  INVX0 U57 ( .INP(N443), .ZN(n167) );
  NOR2X0 U58 ( .IN1(n601), .IN2(n599), .QN(n602) );
  INVX0 U59 ( .INP(n607), .ZN(n603) );
  INVX0 U60 ( .INP(nrst), .ZN(n45) );
  INVX0 U61 ( .INP(n208), .ZN(n625) );
  NOR2X0 U62 ( .IN1(n213), .IN2(n45), .QN(n588) );
  NOR2X0 U63 ( .IN1(n215), .IN2(N160), .QN(n622) );
  NOR2X0 U64 ( .IN1(n242), .IN2(N130), .QN(n254) );
  NOR2X0 U65 ( .IN1(n243), .IN2(n45), .QN(n555) );
  NOR2X0 U66 ( .IN1(n225), .IN2(n45), .QN(n538) );
  NOR2X0 U67 ( .IN1(n241), .IN2(n45), .QN(n529) );
  NOR2X0 U68 ( .IN1(n533), .IN2(n45), .QN(n532) );
  NOR2X0 U69 ( .IN1(n45), .IN2(n535), .QN(n205) );
  NOR2X0 U70 ( .IN1(n592), .IN2(n589), .QN(n591) );
  AND2X1 U71 ( .IN1(n542), .IN2(nrst), .Q(n541) );
  AND2X1 U72 ( .IN1(n548), .IN2(nrst), .Q(n553) );
  NOR3X0 U73 ( .IN1(n544), .IN2(n546), .IN3(n45), .QN(n545) );
  INVX0 U74 ( .INP(n551), .ZN(n552) );
  NOR2X0 U75 ( .IN1(n244), .IN2(N160), .QN(n626) );
  NOR2X0 U76 ( .IN1(n231), .IN2(N511), .QN(n542) );
  INVX0 U77 ( .INP(n52), .ZN(n68) );
  INVX0 U78 ( .INP(n47), .ZN(n63) );
  INVX0 U79 ( .INP(n48), .ZN(n64) );
  INVX0 U80 ( .INP(n49), .ZN(n65) );
  INVX0 U81 ( .INP(n50), .ZN(n66) );
  INVX0 U82 ( .INP(n51), .ZN(n67) );
  INVX0 U83 ( .INP(n46), .ZN(n54) );
  INVX0 U84 ( .INP(n533), .ZN(n534) );
  INVX0 U85 ( .INP(n213), .ZN(n590) );
  INVX0 U86 ( .INP(n212), .ZN(n255) );
  NAND2X1 U87 ( .IN1(n612), .IN2(n550), .QN(n611) );
  AND2X1 U88 ( .IN1(n612), .IN2(n9), .Q(n609) );
  INVX0 U89 ( .INP(n612), .ZN(n608) );
  NOR2X0 U90 ( .IN1(n530), .IN2(n603), .QN(n599) );
  NOR2X0 U91 ( .IN1(n590), .IN2(n530), .QN(n589) );
  NOR2X0 U92 ( .IN1(n547), .IN2(n530), .QN(n544) );
  AND3X1 U93 ( .IN1(n214), .IN2(n579), .IN3(n580), .Q(n573) );
  NOR2X0 U94 ( .IN1(n543), .IN2(n530), .QN(n540) );
  NOR2X0 U95 ( .IN1(n534), .IN2(n530), .QN(n531) );
  NOR2X0 U96 ( .IN1(n224), .IN2(n530), .QN(n528) );
  NOR2X0 U97 ( .IN1(n539), .IN2(n530), .QN(n537) );
  NOR2X0 U98 ( .IN1(n536), .IN2(n530), .QN(n204) );
  NOR3X0 U99 ( .IN1(n45), .IN2(n578), .IN3(n214), .QN(n574) );
  NOR3X0 U100 ( .IN1(n214), .IN2(n45), .IN3(n581), .QN(n572) );
  INVX0 U101 ( .INP(N151), .ZN(n141) );
  INVX0 U102 ( .INP(N502), .ZN(n115) );
  INVX0 U103 ( .INP(N1276), .ZN(N420) );
  INVX0 U104 ( .INP(N486), .ZN(N503) );
  INVX0 U105 ( .INP(N442), .ZN(n166) );
  INVX0 U106 ( .INP(N451), .ZN(n175) );
  INVX0 U107 ( .INP(N445), .ZN(n169) );
  INVX0 U108 ( .INP(N448), .ZN(n172) );
  INVX0 U109 ( .INP(N454), .ZN(n178) );
  OA21X1 U110 ( .IN1(N459), .IN2(n530), .IN3(n571), .Q(n612) );
  INVX0 U111 ( .INP(N456), .ZN(n180) );
  OA21X1 U112 ( .IN1(n45), .IN2(en), .IN3(n550), .Q(n530) );
  INVX0 U113 ( .INP(N135), .ZN(N230) );
  INVX0 U114 ( .INP(N292), .ZN(N319) );
  INVX0 U115 ( .INP(N310), .ZN(N321) );
  INVX0 U116 ( .INP(MY_CLUSTER_ID[0]), .ZN(n91) );
  INVX0 U117 ( .INP(MY_CLUSTER_ID[1]), .ZN(n92) );
  XOR2X1 U118 ( .IN1(i[9]), .IN2(\add_117/carry[10] ), .Q(N194) );
  XOR2X1 U119 ( .IN1(N493), .IN2(\add_212/carry[10] ), .Q(N510) );
  XOR2X1 U120 ( .IN1(besthop[9]), .IN2(\r212/carry[10] ), .Q(N172) );
  XNOR2X1 U121 ( .IN1(N317), .IN2(\add_151/carry[10] ), .Q(N328) );
  XOR2X1 U122 ( .IN1(N142), .IN2(\add_108/carry[10] ), .Q(N159) );
  XOR2X1 U123 ( .IN1(i[9]), .IN2(\add_137/carry[10] ), .Q(N273) );
  XNOR2X1 U124 ( .IN1(N1262), .IN2(\add_177/carry[10] ), .Q(N427) );
  XOR2X1 U125 ( .IN1(j[9]), .IN2(\add_199/carry[10] ), .Q(N481) );
  XOR2X1 U126 ( .IN1(N142), .IN2(\add_128/carry[10] ), .Q(N237) );
  XOR2X1 U127 ( .IN1(i[9]), .IN2(\r221/carry[10] ), .Q(N339) );
  XOR2X1 U128 ( .IN1(N142), .IN2(\add_218/carry[10] ), .Q(N540) );
  AND2X1 U129 ( .IN1(\add_117/carry[9] ), .IN2(i[8]), .Q(\add_117/carry[10] )
         );
  XOR2X1 U130 ( .IN1(i[8]), .IN2(\add_117/carry[9] ), .Q(N193) );
  AND2X1 U131 ( .IN1(\add_212/carry[9] ), .IN2(N492), .Q(\add_212/carry[10] )
         );
  XOR2X1 U132 ( .IN1(N492), .IN2(\add_212/carry[9] ), .Q(N509) );
  AND2X1 U133 ( .IN1(\r212/carry[9] ), .IN2(besthop[8]), .Q(\r212/carry[10] )
         );
  XOR2X1 U134 ( .IN1(besthop[8]), .IN2(\r212/carry[9] ), .Q(N171) );
  OR2X1 U135 ( .IN1(N316), .IN2(\add_151/carry[9] ), .Q(\add_151/carry[10] )
         );
  XNOR2X1 U136 ( .IN1(\add_151/carry[9] ), .IN2(N316), .Q(N327) );
  AND2X1 U137 ( .IN1(\add_108/carry[9] ), .IN2(N141), .Q(\add_108/carry[10] )
         );
  XOR2X1 U138 ( .IN1(N141), .IN2(\add_108/carry[9] ), .Q(N158) );
  AND2X1 U139 ( .IN1(\add_137/carry[9] ), .IN2(i[8]), .Q(\add_137/carry[10] )
         );
  XOR2X1 U140 ( .IN1(i[8]), .IN2(\add_137/carry[9] ), .Q(N272) );
  OR2X1 U141 ( .IN1(N1264), .IN2(\add_177/carry[9] ), .Q(\add_177/carry[10] )
         );
  XNOR2X1 U142 ( .IN1(\add_177/carry[9] ), .IN2(N1264), .Q(N426) );
  AND2X1 U143 ( .IN1(\add_199/carry[9] ), .IN2(j[8]), .Q(\add_199/carry[10] )
         );
  XOR2X1 U144 ( .IN1(j[8]), .IN2(\add_199/carry[9] ), .Q(N480) );
  AND2X1 U145 ( .IN1(\add_128/carry[9] ), .IN2(N141), .Q(\add_128/carry[10] )
         );
  XOR2X1 U146 ( .IN1(N141), .IN2(\add_128/carry[9] ), .Q(N236) );
  AND2X1 U147 ( .IN1(\r221/carry[9] ), .IN2(i[8]), .Q(\r221/carry[10] ) );
  XOR2X1 U148 ( .IN1(i[8]), .IN2(\r221/carry[9] ), .Q(N338) );
  AND2X1 U149 ( .IN1(\add_218/carry[9] ), .IN2(N141), .Q(\add_218/carry[10] )
         );
  XOR2X1 U150 ( .IN1(N141), .IN2(\add_218/carry[9] ), .Q(N539) );
  OR2X1 U151 ( .IN1(i[7]), .IN2(\add_117/carry[8] ), .Q(\add_117/carry[9] ) );
  XNOR2X1 U152 ( .IN1(\add_117/carry[8] ), .IN2(i[7]), .Q(N192) );
  AND2X1 U153 ( .IN1(\add_212/carry[8] ), .IN2(N491), .Q(\add_212/carry[9] )
         );
  XOR2X1 U154 ( .IN1(N491), .IN2(\add_212/carry[8] ), .Q(N508) );
  AND2X1 U155 ( .IN1(\r212/carry[8] ), .IN2(besthop[7]), .Q(\r212/carry[9] )
         );
  XOR2X1 U156 ( .IN1(besthop[7]), .IN2(\r212/carry[8] ), .Q(N170) );
  AND2X1 U157 ( .IN1(\add_151/carry[8] ), .IN2(N315), .Q(\add_151/carry[9] )
         );
  XOR2X1 U158 ( .IN1(N315), .IN2(\add_151/carry[8] ), .Q(N326) );
  AND2X1 U159 ( .IN1(\add_108/carry[8] ), .IN2(N140), .Q(\add_108/carry[9] )
         );
  XOR2X1 U160 ( .IN1(N140), .IN2(\add_108/carry[8] ), .Q(N157) );
  OR2X1 U161 ( .IN1(i[7]), .IN2(\add_137/carry[8] ), .Q(\add_137/carry[9] ) );
  XNOR2X1 U162 ( .IN1(\add_137/carry[8] ), .IN2(i[7]), .Q(N271) );
  AND2X1 U163 ( .IN1(\add_199/carry[8] ), .IN2(j[7]), .Q(\add_199/carry[9] )
         );
  XOR2X1 U164 ( .IN1(j[7]), .IN2(\add_199/carry[8] ), .Q(N479) );
  AND2X1 U165 ( .IN1(\add_177/carry[8] ), .IN2(N1266), .Q(\add_177/carry[9] )
         );
  XOR2X1 U166 ( .IN1(N1266), .IN2(\add_177/carry[8] ), .Q(N425) );
  AND2X1 U167 ( .IN1(\add_128/carry[8] ), .IN2(N140), .Q(\add_128/carry[9] )
         );
  XOR2X1 U168 ( .IN1(N140), .IN2(\add_128/carry[8] ), .Q(N235) );
  AND2X1 U169 ( .IN1(\r221/carry[8] ), .IN2(i[7]), .Q(\r221/carry[9] ) );
  XOR2X1 U170 ( .IN1(i[7]), .IN2(\r221/carry[8] ), .Q(N337) );
  AND2X1 U171 ( .IN1(\add_218/carry[8] ), .IN2(N140), .Q(\add_218/carry[9] )
         );
  XOR2X1 U172 ( .IN1(N140), .IN2(\add_218/carry[8] ), .Q(N538) );
  AND2X1 U173 ( .IN1(\add_117/carry[7] ), .IN2(i[6]), .Q(\add_117/carry[8] )
         );
  XOR2X1 U174 ( .IN1(i[6]), .IN2(\add_117/carry[7] ), .Q(N191) );
  AND2X1 U175 ( .IN1(\add_212/carry[7] ), .IN2(N490), .Q(\add_212/carry[8] )
         );
  XOR2X1 U176 ( .IN1(N490), .IN2(\add_212/carry[7] ), .Q(N507) );
  AND2X1 U177 ( .IN1(\r212/carry[7] ), .IN2(besthop[6]), .Q(\r212/carry[8] )
         );
  XOR2X1 U178 ( .IN1(besthop[6]), .IN2(\r212/carry[7] ), .Q(N169) );
  OR2X1 U179 ( .IN1(N139), .IN2(\add_108/carry[7] ), .Q(\add_108/carry[8] ) );
  XNOR2X1 U180 ( .IN1(\add_108/carry[7] ), .IN2(N139), .Q(N156) );
  AND2X1 U181 ( .IN1(\add_151/carry[7] ), .IN2(N314), .Q(\add_151/carry[8] )
         );
  XOR2X1 U182 ( .IN1(N314), .IN2(\add_151/carry[7] ), .Q(N325) );
  OR2X1 U183 ( .IN1(i[6]), .IN2(\add_137/carry[7] ), .Q(\add_137/carry[8] ) );
  XNOR2X1 U184 ( .IN1(\add_137/carry[7] ), .IN2(i[6]), .Q(N270) );
  AND2X1 U185 ( .IN1(\add_177/carry[7] ), .IN2(N1268), .Q(\add_177/carry[8] )
         );
  XOR2X1 U186 ( .IN1(N1268), .IN2(\add_177/carry[7] ), .Q(N424) );
  AND2X1 U187 ( .IN1(\add_199/carry[7] ), .IN2(j[6]), .Q(\add_199/carry[8] )
         );
  XOR2X1 U188 ( .IN1(j[6]), .IN2(\add_199/carry[7] ), .Q(N478) );
  OR2X1 U189 ( .IN1(N139), .IN2(\add_128/carry[7] ), .Q(\add_128/carry[8] ) );
  XNOR2X1 U190 ( .IN1(\add_128/carry[7] ), .IN2(N139), .Q(N234) );
  AND2X1 U191 ( .IN1(\r221/carry[7] ), .IN2(i[6]), .Q(\r221/carry[8] ) );
  XOR2X1 U192 ( .IN1(i[6]), .IN2(\r221/carry[7] ), .Q(N336) );
  OR2X1 U193 ( .IN1(N139), .IN2(\add_218/carry[7] ), .Q(\add_218/carry[8] ) );
  XNOR2X1 U194 ( .IN1(\add_218/carry[7] ), .IN2(N139), .Q(N537) );
  OR2X1 U195 ( .IN1(besthop[5]), .IN2(\r212/carry[6] ), .Q(\r212/carry[7] ) );
  XNOR2X1 U196 ( .IN1(\r212/carry[6] ), .IN2(besthop[5]), .Q(N168) );
  OR2X1 U197 ( .IN1(N313), .IN2(\add_151/carry[6] ), .Q(\add_151/carry[7] ) );
  XNOR2X1 U198 ( .IN1(\add_151/carry[6] ), .IN2(N313), .Q(N324) );
  AND2X1 U199 ( .IN1(\add_212/carry[6] ), .IN2(N489), .Q(\add_212/carry[7] )
         );
  XOR2X1 U200 ( .IN1(N489), .IN2(\add_212/carry[6] ), .Q(N506) );
  OR2X1 U201 ( .IN1(i[5]), .IN2(\add_137/carry[6] ), .Q(\add_137/carry[7] ) );
  XNOR2X1 U202 ( .IN1(\add_137/carry[6] ), .IN2(i[5]), .Q(N269) );
  OR2X1 U203 ( .IN1(N138), .IN2(\add_108/carry[6] ), .Q(\add_108/carry[7] ) );
  XNOR2X1 U204 ( .IN1(\add_108/carry[6] ), .IN2(N138), .Q(N155) );
  OR2X1 U205 ( .IN1(N1270), .IN2(\add_177/carry[6] ), .Q(\add_177/carry[7] )
         );
  XNOR2X1 U206 ( .IN1(\add_177/carry[6] ), .IN2(N1270), .Q(N423) );
  OR2X1 U207 ( .IN1(N138), .IN2(\add_128/carry[6] ), .Q(\add_128/carry[7] ) );
  XNOR2X1 U208 ( .IN1(\add_128/carry[6] ), .IN2(N138), .Q(N233) );
  AND2X1 U209 ( .IN1(\add_199/carry[6] ), .IN2(j[5]), .Q(\add_199/carry[7] )
         );
  XOR2X1 U210 ( .IN1(j[5]), .IN2(\add_199/carry[6] ), .Q(N477) );
  OR2X1 U211 ( .IN1(N138), .IN2(\add_218/carry[6] ), .Q(\add_218/carry[7] ) );
  XNOR2X1 U212 ( .IN1(\add_218/carry[6] ), .IN2(N138), .Q(N536) );
  OR2X1 U213 ( .IN1(i[5]), .IN2(\add_117/carry[6] ), .Q(\add_117/carry[7] ) );
  XNOR2X1 U214 ( .IN1(\add_117/carry[6] ), .IN2(i[5]), .Q(N190) );
  OR2X1 U215 ( .IN1(i[5]), .IN2(\r221/carry[6] ), .Q(\r221/carry[7] ) );
  XNOR2X1 U216 ( .IN1(\r221/carry[6] ), .IN2(i[5]), .Q(N335) );
  AND2X1 U217 ( .IN1(\add_117/carry[5] ), .IN2(i[4]), .Q(\add_117/carry[6] )
         );
  XOR2X1 U218 ( .IN1(i[4]), .IN2(\add_117/carry[5] ), .Q(N189) );
  AND2X1 U219 ( .IN1(\add_212/carry[5] ), .IN2(N488), .Q(\add_212/carry[6] )
         );
  XOR2X1 U220 ( .IN1(N488), .IN2(\add_212/carry[5] ), .Q(N505) );
  AND2X1 U221 ( .IN1(\r212/carry[5] ), .IN2(besthop[4]), .Q(\r212/carry[6] )
         );
  XOR2X1 U222 ( .IN1(besthop[4]), .IN2(\r212/carry[5] ), .Q(N167) );
  OR2X1 U223 ( .IN1(N312), .IN2(\add_151/carry[5] ), .Q(\add_151/carry[6] ) );
  XNOR2X1 U224 ( .IN1(\add_151/carry[5] ), .IN2(N312), .Q(N323) );
  AND2X1 U225 ( .IN1(\add_108/carry[5] ), .IN2(N137), .Q(\add_108/carry[6] )
         );
  XOR2X1 U226 ( .IN1(N137), .IN2(\add_108/carry[5] ), .Q(N154) );
  AND2X1 U227 ( .IN1(\add_137/carry[5] ), .IN2(i[4]), .Q(\add_137/carry[6] )
         );
  XOR2X1 U228 ( .IN1(i[4]), .IN2(\add_137/carry[5] ), .Q(N268) );
  AND2X1 U229 ( .IN1(\add_199/carry[5] ), .IN2(j[4]), .Q(\add_199/carry[6] )
         );
  XOR2X1 U230 ( .IN1(j[4]), .IN2(\add_199/carry[5] ), .Q(N476) );
  AND2X1 U231 ( .IN1(\add_177/carry[5] ), .IN2(N1272), .Q(\add_177/carry[6] )
         );
  XOR2X1 U232 ( .IN1(N1272), .IN2(\add_177/carry[5] ), .Q(N422) );
  AND2X1 U233 ( .IN1(\add_128/carry[5] ), .IN2(N137), .Q(\add_128/carry[6] )
         );
  XOR2X1 U234 ( .IN1(N137), .IN2(\add_128/carry[5] ), .Q(N232) );
  AND2X1 U235 ( .IN1(\r221/carry[5] ), .IN2(i[4]), .Q(\r221/carry[6] ) );
  XOR2X1 U236 ( .IN1(i[4]), .IN2(\r221/carry[5] ), .Q(N334) );
  AND2X1 U237 ( .IN1(\add_218/carry[5] ), .IN2(N137), .Q(\add_218/carry[6] )
         );
  XOR2X1 U238 ( .IN1(N137), .IN2(\add_218/carry[5] ), .Q(N535) );
  AND2X1 U239 ( .IN1(i[2]), .IN2(i[3]), .Q(\add_117/carry[5] ) );
  XOR2X1 U240 ( .IN1(i[3]), .IN2(i[2]), .Q(N188) );
  AND2X1 U241 ( .IN1(N486), .IN2(N487), .Q(\add_212/carry[5] ) );
  XOR2X1 U242 ( .IN1(N487), .IN2(N486), .Q(N504) );
  AND2X1 U243 ( .IN1(besthop[2]), .IN2(besthop[3]), .Q(\r212/carry[5] ) );
  XOR2X1 U244 ( .IN1(besthop[3]), .IN2(besthop[2]), .Q(N166) );
  AND2X1 U245 ( .IN1(N310), .IN2(N311), .Q(\add_151/carry[5] ) );
  XOR2X1 U246 ( .IN1(N311), .IN2(N310), .Q(N322) );
  AND2X1 U247 ( .IN1(N135), .IN2(N136), .Q(\add_108/carry[5] ) );
  XOR2X1 U248 ( .IN1(N136), .IN2(N135), .Q(N153) );
  AND2X1 U249 ( .IN1(i[2]), .IN2(i[3]), .Q(\add_137/carry[5] ) );
  XOR2X1 U250 ( .IN1(i[3]), .IN2(i[2]), .Q(N267) );
  AND2X1 U251 ( .IN1(j[2]), .IN2(j[3]), .Q(\add_199/carry[5] ) );
  XOR2X1 U252 ( .IN1(j[3]), .IN2(j[2]), .Q(N475) );
  AND2X1 U253 ( .IN1(N1276), .IN2(N413), .Q(\add_177/carry[5] ) );
  XOR2X1 U254 ( .IN1(N413), .IN2(N1276), .Q(N421) );
  AND2X1 U255 ( .IN1(N135), .IN2(N136), .Q(\add_128/carry[5] ) );
  XOR2X1 U256 ( .IN1(N136), .IN2(N135), .Q(N231) );
  AND2X1 U257 ( .IN1(i[2]), .IN2(i[3]), .Q(\r221/carry[5] ) );
  XOR2X1 U258 ( .IN1(i[3]), .IN2(i[2]), .Q(N333) );
  AND2X1 U259 ( .IN1(N135), .IN2(N136), .Q(\add_218/carry[5] ) );
  XOR2X1 U260 ( .IN1(N136), .IN2(N135), .Q(N534) );
  NOR2X0 U261 ( .IN1(N293), .IN2(N292), .QN(n46) );
  AO21X1 U262 ( .IN1(N293), .IN2(N292), .IN3(n46), .Q(N320) );
  NOR2X0 U263 ( .IN1(n54), .IN2(N294), .QN(n47) );
  AO21X1 U264 ( .IN1(N294), .IN2(n54), .IN3(n47), .Q(N310) );
  NOR2X0 U265 ( .IN1(n63), .IN2(N295), .QN(n48) );
  AO21X1 U266 ( .IN1(N295), .IN2(n63), .IN3(n48), .Q(N311) );
  NOR2X0 U267 ( .IN1(n64), .IN2(N296), .QN(n49) );
  AO21X1 U268 ( .IN1(N296), .IN2(n64), .IN3(n49), .Q(N312) );
  NOR2X0 U269 ( .IN1(n65), .IN2(N297), .QN(n50) );
  AO21X1 U270 ( .IN1(N297), .IN2(n65), .IN3(n50), .Q(N313) );
  NOR2X0 U271 ( .IN1(n66), .IN2(N298), .QN(n51) );
  AO21X1 U272 ( .IN1(N298), .IN2(n66), .IN3(n51), .Q(N314) );
  NOR2X0 U273 ( .IN1(n67), .IN2(N299), .QN(n52) );
  AO21X1 U274 ( .IN1(N299), .IN2(n67), .IN3(n52), .Q(N315) );
  XNOR2X1 U275 ( .IN1(N300), .IN2(n68), .Q(N316) );
  NOR2X0 U276 ( .IN1(N300), .IN2(n68), .QN(n53) );
  XOR2X1 U277 ( .IN1(N301), .IN2(n53), .Q(N317) );
  XOR2X1 U278 ( .IN1(n37), .IN2(MY_CLUSTER_ID[12]), .Q(n72) );
  XOR2X1 U279 ( .IN1(n39), .IN2(MY_CLUSTER_ID[13]), .Q(n71) );
  XOR2X1 U280 ( .IN1(n41), .IN2(MY_CLUSTER_ID[14]), .Q(n70) );
  XOR2X1 U281 ( .IN1(n43), .IN2(MY_CLUSTER_ID[15]), .Q(n69) );
  NOR4X0 U282 ( .IN1(n72), .IN2(n71), .IN3(n70), .IN4(n69), .QN(n90) );
  XOR2X1 U283 ( .IN1(n29), .IN2(MY_CLUSTER_ID[8]), .Q(n76) );
  XOR2X1 U284 ( .IN1(n31), .IN2(MY_CLUSTER_ID[9]), .Q(n75) );
  XOR2X1 U285 ( .IN1(n33), .IN2(MY_CLUSTER_ID[10]), .Q(n74) );
  XOR2X1 U286 ( .IN1(n35), .IN2(MY_CLUSTER_ID[11]), .Q(n73) );
  NOR4X0 U287 ( .IN1(n76), .IN2(n75), .IN3(n74), .IN4(n73), .QN(n89) );
  XOR2X1 U288 ( .IN1(n21), .IN2(MY_CLUSTER_ID[4]), .Q(n80) );
  XOR2X1 U289 ( .IN1(n23), .IN2(MY_CLUSTER_ID[5]), .Q(n79) );
  XOR2X1 U290 ( .IN1(n25), .IN2(MY_CLUSTER_ID[6]), .Q(n78) );
  XOR2X1 U291 ( .IN1(n27), .IN2(MY_CLUSTER_ID[7]), .Q(n77) );
  NOR4X0 U292 ( .IN1(n80), .IN2(n79), .IN3(n78), .IN4(n77), .QN(n88) );
  NOR2X0 U293 ( .IN1(n91), .IN2(n13), .QN(n81) );
  OA22X1 U294 ( .IN1(n81), .IN2(n16), .IN3(MY_CLUSTER_ID[1]), .IN4(n81), .Q(
        n86) );
  AND2X1 U295 ( .IN1(n13), .IN2(n91), .Q(n82) );
  OA22X1 U296 ( .IN1(n15), .IN2(n82), .IN3(n82), .IN4(n92), .Q(n85) );
  XOR2X1 U297 ( .IN1(n17), .IN2(MY_CLUSTER_ID[2]), .Q(n84) );
  XOR2X1 U298 ( .IN1(n19), .IN2(MY_CLUSTER_ID[3]), .Q(n83) );
  NOR4X0 U299 ( .IN1(n86), .IN2(n85), .IN3(n84), .IN4(n83), .QN(n87) );
  NAND4X0 U300 ( .IN1(n90), .IN2(n89), .IN3(n88), .IN4(n87), .QN(N130) );
  XOR2X1 U301 ( .IN1(knownSinkCount[15]), .IN2(N499), .Q(n98) );
  XOR2X1 U302 ( .IN1(knownSinkCount[2]), .IN2(N486), .Q(n97) );
  NOR2X0 U303 ( .IN1(n116), .IN2(N501), .QN(n93) );
  OA22X1 U304 ( .IN1(knownSinkCount[1]), .IN2(n93), .IN3(n93), .IN4(n115), .Q(
        n96) );
  AND2X1 U305 ( .IN1(N501), .IN2(n116), .Q(n94) );
  OA22X1 U306 ( .IN1(n94), .IN2(n117), .IN3(N502), .IN4(n94), .Q(n95) );
  OR4X1 U307 ( .IN1(n98), .IN2(n97), .IN3(n96), .IN4(n95), .Q(n114) );
  XNOR2X1 U308 ( .IN1(knownSinkCount[6]), .IN2(N490), .Q(n102) );
  XNOR2X1 U309 ( .IN1(knownSinkCount[5]), .IN2(N489), .Q(n101) );
  XNOR2X1 U310 ( .IN1(knownSinkCount[4]), .IN2(N488), .Q(n100) );
  XNOR2X1 U311 ( .IN1(knownSinkCount[3]), .IN2(N487), .Q(n99) );
  NAND4X0 U312 ( .IN1(n102), .IN2(n101), .IN3(n100), .IN4(n99), .QN(n113) );
  XNOR2X1 U313 ( .IN1(knownSinkCount[10]), .IN2(N494), .Q(n106) );
  XNOR2X1 U314 ( .IN1(knownSinkCount[9]), .IN2(N493), .Q(n105) );
  XNOR2X1 U315 ( .IN1(knownSinkCount[8]), .IN2(N492), .Q(n104) );
  XNOR2X1 U316 ( .IN1(knownSinkCount[7]), .IN2(N491), .Q(n103) );
  NAND4X0 U317 ( .IN1(n106), .IN2(n105), .IN3(n104), .IN4(n103), .QN(n112) );
  XNOR2X1 U318 ( .IN1(knownSinkCount[14]), .IN2(N498), .Q(n110) );
  XNOR2X1 U319 ( .IN1(knownSinkCount[13]), .IN2(N497), .Q(n109) );
  XNOR2X1 U320 ( .IN1(knownSinkCount[12]), .IN2(N496), .Q(n108) );
  XNOR2X1 U321 ( .IN1(knownSinkCount[11]), .IN2(N495), .Q(n107) );
  NAND4X0 U322 ( .IN1(n110), .IN2(n109), .IN3(n108), .IN4(n107), .QN(n111) );
  NOR4X0 U323 ( .IN1(n114), .IN2(n113), .IN3(n112), .IN4(n111), .QN(N511) );
  XOR2X1 U324 ( .IN1(neighborCount[15]), .IN2(N148), .Q(n123) );
  XOR2X1 U325 ( .IN1(neighborCount[2]), .IN2(N135), .Q(n122) );
  NOR2X0 U326 ( .IN1(n142), .IN2(N150), .QN(n118) );
  OA22X1 U327 ( .IN1(neighborCount[1]), .IN2(n118), .IN3(n118), .IN4(n141), 
        .Q(n121) );
  AND2X1 U328 ( .IN1(N150), .IN2(n142), .Q(n119) );
  OA22X1 U329 ( .IN1(n119), .IN2(n140), .IN3(N151), .IN4(n119), .Q(n120) );
  OR4X1 U330 ( .IN1(n123), .IN2(n122), .IN3(n121), .IN4(n120), .Q(n139) );
  XNOR2X1 U331 ( .IN1(neighborCount[6]), .IN2(N139), .Q(n127) );
  XNOR2X1 U332 ( .IN1(neighborCount[5]), .IN2(N138), .Q(n126) );
  XNOR2X1 U333 ( .IN1(neighborCount[4]), .IN2(N137), .Q(n125) );
  XNOR2X1 U334 ( .IN1(neighborCount[3]), .IN2(N136), .Q(n124) );
  NAND4X0 U335 ( .IN1(n127), .IN2(n126), .IN3(n125), .IN4(n124), .QN(n138) );
  XNOR2X1 U336 ( .IN1(neighborCount[10]), .IN2(N143), .Q(n131) );
  XNOR2X1 U337 ( .IN1(neighborCount[9]), .IN2(N142), .Q(n130) );
  XNOR2X1 U338 ( .IN1(neighborCount[8]), .IN2(N141), .Q(n129) );
  XNOR2X1 U339 ( .IN1(neighborCount[7]), .IN2(N140), .Q(n128) );
  NAND4X0 U340 ( .IN1(n131), .IN2(n130), .IN3(n129), .IN4(n128), .QN(n137) );
  XNOR2X1 U341 ( .IN1(neighborCount[14]), .IN2(N147), .Q(n135) );
  XNOR2X1 U342 ( .IN1(neighborCount[13]), .IN2(N146), .Q(n134) );
  XNOR2X1 U343 ( .IN1(neighborCount[12]), .IN2(N145), .Q(n133) );
  XNOR2X1 U344 ( .IN1(neighborCount[11]), .IN2(N144), .Q(n132) );
  NAND4X0 U345 ( .IN1(n135), .IN2(n134), .IN3(n133), .IN4(n132), .QN(n136) );
  NOR4X0 U346 ( .IN1(n139), .IN2(n138), .IN3(n137), .IN4(n136), .QN(N160) );
  NOR2X0 U347 ( .IN1(k[11]), .IN2(k[10]), .QN(n148) );
  AO21X1 U348 ( .IN1(k[1]), .IN2(k[0]), .IN3(k[2]), .Q(n143) );
  NAND2X0 U349 ( .IN1(k[3]), .IN2(n143), .QN(n147) );
  NOR3X0 U350 ( .IN1(k[12]), .IN2(k[14]), .IN3(k[13]), .QN(n146) );
  OR4X1 U351 ( .IN1(k[7]), .IN2(k[6]), .IN3(k[9]), .IN4(k[8]), .Q(n144) );
  NOR4X0 U352 ( .IN1(n144), .IN2(k[15]), .IN3(k[5]), .IN4(k[4]), .QN(n145) );
  NAND4X0 U353 ( .IN1(n148), .IN2(n147), .IN3(n146), .IN4(n145), .QN(N406) );
  AND2X1 U354 ( .IN1(n179), .IN2(bestvalue[14]), .Q(n164) );
  NOR2X0 U355 ( .IN1(n5), .IN2(N441), .QN(n149) );
  AND2X1 U356 ( .IN1(n166), .IN2(n149), .Q(n150) );
  OA222X1 U357 ( .IN1(bestvalue[2]), .IN2(n167), .IN3(bestvalue[1]), .IN4(n150), .IN5(n149), .IN6(n166), .Q(n151) );
  AO221X1 U358 ( .IN1(bestvalue[2]), .IN2(n167), .IN3(bestvalue[3]), .IN4(n168), .IN5(n151), .Q(n152) );
  OA221X1 U359 ( .IN1(bestvalue[4]), .IN2(n169), .IN3(bestvalue[3]), .IN4(n168), .IN5(n152), .Q(n153) );
  AO221X1 U360 ( .IN1(bestvalue[4]), .IN2(n169), .IN3(bestvalue[5]), .IN4(n170), .IN5(n153), .Q(n154) );
  OA221X1 U361 ( .IN1(bestvalue[6]), .IN2(n171), .IN3(bestvalue[5]), .IN4(n170), .IN5(n154), .Q(n155) );
  AO221X1 U362 ( .IN1(bestvalue[6]), .IN2(n171), .IN3(bestvalue[7]), .IN4(n172), .IN5(n155), .Q(n156) );
  OA221X1 U363 ( .IN1(bestvalue[8]), .IN2(n173), .IN3(bestvalue[7]), .IN4(n172), .IN5(n156), .Q(n157) );
  AO221X1 U364 ( .IN1(bestvalue[8]), .IN2(n173), .IN3(bestvalue[9]), .IN4(n174), .IN5(n157), .Q(n158) );
  OA221X1 U365 ( .IN1(bestvalue[9]), .IN2(n174), .IN3(bestvalue[10]), .IN4(
        n175), .IN5(n158), .Q(n159) );
  AO221X1 U366 ( .IN1(bestvalue[10]), .IN2(n175), .IN3(bestvalue[11]), .IN4(
        n176), .IN5(n159), .Q(n160) );
  OA221X1 U367 ( .IN1(bestvalue[12]), .IN2(n177), .IN3(bestvalue[11]), .IN4(
        n176), .IN5(n160), .Q(n161) );
  AO221X1 U368 ( .IN1(bestvalue[12]), .IN2(n177), .IN3(bestvalue[13]), .IN4(
        n178), .IN5(n161), .Q(n162) );
  OA221X1 U369 ( .IN1(bestvalue[14]), .IN2(n179), .IN3(bestvalue[13]), .IN4(
        n178), .IN5(n162), .Q(n163) );
  OA22X1 U370 ( .IN1(bestvalue[15]), .IN2(n180), .IN3(n164), .IN4(n163), .Q(
        n165) );
  AO21X1 U371 ( .IN1(bestvalue[15]), .IN2(n180), .IN3(n165), .Q(N459) );
  XOR2X1 U372 ( .IN1(n43), .IN2(neighborID[15]), .Q(n186) );
  XOR2X1 U373 ( .IN1(n17), .IN2(neighborID[2]), .Q(n185) );
  NOR2X0 U374 ( .IN1(n14), .IN2(neighborID[0]), .QN(n181) );
  OA22X1 U375 ( .IN1(n15), .IN2(n181), .IN3(n181), .IN4(n203), .Q(n184) );
  AND2X1 U376 ( .IN1(neighborID[0]), .IN2(n14), .Q(n182) );
  OA22X1 U377 ( .IN1(n182), .IN2(n16), .IN3(neighborID[1]), .IN4(n182), .Q(
        n183) );
  OR4X1 U378 ( .IN1(n186), .IN2(n185), .IN3(n184), .IN4(n183), .Q(n202) );
  XNOR2X1 U379 ( .IN1(n25), .IN2(neighborID[6]), .Q(n190) );
  XNOR2X1 U380 ( .IN1(n23), .IN2(neighborID[5]), .Q(n189) );
  XNOR2X1 U381 ( .IN1(n21), .IN2(neighborID[4]), .Q(n188) );
  XNOR2X1 U382 ( .IN1(n19), .IN2(neighborID[3]), .Q(n187) );
  NAND4X0 U383 ( .IN1(n190), .IN2(n189), .IN3(n188), .IN4(n187), .QN(n201) );
  XNOR2X1 U384 ( .IN1(n33), .IN2(neighborID[10]), .Q(n194) );
  XNOR2X1 U385 ( .IN1(n31), .IN2(neighborID[9]), .Q(n193) );
  XNOR2X1 U386 ( .IN1(n29), .IN2(neighborID[8]), .Q(n192) );
  XNOR2X1 U387 ( .IN1(n27), .IN2(neighborID[7]), .Q(n191) );
  NAND4X0 U388 ( .IN1(n194), .IN2(n193), .IN3(n192), .IN4(n191), .QN(n200) );
  XNOR2X1 U389 ( .IN1(n41), .IN2(neighborID[14]), .Q(n198) );
  XNOR2X1 U390 ( .IN1(n39), .IN2(neighborID[13]), .Q(n197) );
  XNOR2X1 U391 ( .IN1(n37), .IN2(neighborID[12]), .Q(n196) );
  XNOR2X1 U392 ( .IN1(n35), .IN2(neighborID[11]), .Q(n195) );
  NAND4X0 U393 ( .IN1(n198), .IN2(n197), .IN3(n196), .IN4(n195), .QN(n199) );
  NOR4X0 U394 ( .IN1(n202), .IN2(n201), .IN3(n200), .IN4(n199), .QN(N483) );
  AO22X1 U395 ( .IN1(n204), .IN2(neighborCount[0]), .IN3(n13), .IN4(n205), .Q(
        n527) );
  MUX21X1 U396 ( .IN1(n206), .IN2(state[3]), .S(n207), .Q(n526) );
  NAND4X0 U397 ( .IN1(n208), .IN2(n209), .IN3(n210), .IN4(n211), .QN(n206) );
  AND4X1 U398 ( .IN1(n212), .IN2(n213), .IN3(n214), .IN4(n215), .Q(n211) );
  OA21X1 U399 ( .IN1(n216), .IN2(n217), .IN3(nrst), .Q(n210) );
  NAND4X0 U400 ( .IN1(n218), .IN2(n219), .IN3(n220), .IN4(n221), .QN(n525) );
  NOR2X0 U401 ( .IN1(n222), .IN2(n223), .QN(n221) );
  NAND2X0 U402 ( .IN1(n224), .IN2(n216), .QN(n220) );
  NAND4X0 U403 ( .IN1(n225), .IN2(n226), .IN3(n218), .IN4(n227), .QN(n524) );
  NOR2X0 U404 ( .IN1(n228), .IN2(n222), .QN(n227) );
  NAND3X0 U405 ( .IN1(n229), .IN2(nrst), .IN3(n230), .QN(n222) );
  OA22X1 U406 ( .IN1(N160), .IN2(n231), .IN3(en), .IN4(n232), .Q(n230) );
  NOR2X0 U407 ( .IN1(n207), .IN2(n233), .QN(n523) );
  NOR4X0 U408 ( .IN1(n234), .IN2(n235), .IN3(n236), .IN4(n237), .QN(n233) );
  INVX0 U409 ( .INP(n209), .ZN(n237) );
  OA221X1 U410 ( .IN1(n216), .IN2(n231), .IN3(n232), .IN4(en), .IN5(n238), .Q(
        n209) );
  AND2X1 U411 ( .IN1(n239), .IN2(n240), .Q(n238) );
  NOR2X0 U412 ( .IN1(n216), .IN2(n241), .QN(n236) );
  NAND3X0 U413 ( .IN1(n242), .IN2(n219), .IN3(n243), .QN(n234) );
  INVX0 U414 ( .INP(n218), .ZN(n207) );
  NAND4X0 U415 ( .IN1(n244), .IN2(n214), .IN3(n245), .IN4(n246), .QN(n218) );
  NOR4X0 U416 ( .IN1(n247), .IN2(n228), .IN3(n248), .IN4(n249), .QN(n246) );
  NOR2X0 U417 ( .IN1(n216), .IN2(n242), .QN(n249) );
  INVX0 U418 ( .INP(n229), .ZN(n248) );
  NOR2X0 U419 ( .IN1(n250), .IN2(n251), .QN(n229) );
  NAND3X0 U420 ( .IN1(n252), .IN2(n253), .IN3(n240), .QN(n228) );
  NOR3X0 U421 ( .IN1(n224), .IN2(n254), .IN3(n255), .QN(n245) );
  AO22X1 U422 ( .IN1(n528), .IN2(batteryStat[0]), .IN3(n529), .IN4(n13), .Q(
        n522) );
  AO22X1 U423 ( .IN1(n528), .IN2(batteryStat[1]), .IN3(n529), .IN4(n15), .Q(
        n521) );
  AO22X1 U424 ( .IN1(n528), .IN2(batteryStat[2]), .IN3(n529), .IN4(n17), .Q(
        n520) );
  AO22X1 U425 ( .IN1(n528), .IN2(batteryStat[3]), .IN3(n529), .IN4(n19), .Q(
        n519) );
  AO22X1 U426 ( .IN1(n528), .IN2(batteryStat[4]), .IN3(n529), .IN4(n21), .Q(
        n518) );
  AO22X1 U427 ( .IN1(n528), .IN2(batteryStat[5]), .IN3(n529), .IN4(n23), .Q(
        n517) );
  AO22X1 U428 ( .IN1(n528), .IN2(batteryStat[6]), .IN3(n529), .IN4(n25), .Q(
        n516) );
  AO22X1 U429 ( .IN1(n528), .IN2(batteryStat[7]), .IN3(n529), .IN4(n27), .Q(
        n515) );
  AO22X1 U430 ( .IN1(n528), .IN2(batteryStat[8]), .IN3(n529), .IN4(n29), .Q(
        n514) );
  AO22X1 U431 ( .IN1(n528), .IN2(batteryStat[9]), .IN3(n529), .IN4(n31), .Q(
        n513) );
  AO22X1 U432 ( .IN1(n528), .IN2(batteryStat[10]), .IN3(n529), .IN4(n33), .Q(
        n512) );
  AO22X1 U433 ( .IN1(n528), .IN2(batteryStat[11]), .IN3(n529), .IN4(n35), .Q(
        n511) );
  AO22X1 U434 ( .IN1(n528), .IN2(batteryStat[12]), .IN3(n529), .IN4(n37), .Q(
        n510) );
  AO22X1 U435 ( .IN1(n528), .IN2(batteryStat[13]), .IN3(n529), .IN4(n39), .Q(
        n509) );
  AO22X1 U436 ( .IN1(n528), .IN2(batteryStat[14]), .IN3(n529), .IN4(n41), .Q(
        n508) );
  AO22X1 U437 ( .IN1(n528), .IN2(batteryStat[15]), .IN3(n529), .IN4(n43), .Q(
        n507) );
  AO22X1 U438 ( .IN1(n531), .IN2(neighborID[0]), .IN3(n532), .IN4(n13), .Q(
        n506) );
  AO22X1 U439 ( .IN1(n531), .IN2(neighborID[1]), .IN3(n532), .IN4(n15), .Q(
        n505) );
  AO22X1 U440 ( .IN1(n531), .IN2(neighborID[2]), .IN3(n532), .IN4(n17), .Q(
        n504) );
  AO22X1 U441 ( .IN1(n531), .IN2(neighborID[3]), .IN3(n532), .IN4(n19), .Q(
        n503) );
  AO22X1 U442 ( .IN1(n531), .IN2(neighborID[4]), .IN3(n532), .IN4(n21), .Q(
        n502) );
  AO22X1 U443 ( .IN1(n531), .IN2(neighborID[5]), .IN3(n532), .IN4(n23), .Q(
        n501) );
  AO22X1 U444 ( .IN1(n531), .IN2(neighborID[6]), .IN3(n532), .IN4(n25), .Q(
        n500) );
  AO22X1 U445 ( .IN1(n531), .IN2(neighborID[7]), .IN3(n532), .IN4(n27), .Q(
        n499) );
  AO22X1 U446 ( .IN1(n531), .IN2(neighborID[8]), .IN3(n532), .IN4(n29), .Q(
        n498) );
  AO22X1 U447 ( .IN1(n531), .IN2(neighborID[9]), .IN3(n532), .IN4(n31), .Q(
        n497) );
  AO22X1 U448 ( .IN1(n531), .IN2(neighborID[10]), .IN3(n532), .IN4(n33), .Q(
        n496) );
  AO22X1 U449 ( .IN1(n531), .IN2(neighborID[11]), .IN3(n532), .IN4(n35), .Q(
        n495) );
  AO22X1 U450 ( .IN1(n531), .IN2(neighborID[12]), .IN3(n532), .IN4(n37), .Q(
        n494) );
  AO22X1 U451 ( .IN1(n531), .IN2(neighborID[13]), .IN3(n532), .IN4(n39), .Q(
        n493) );
  AO22X1 U452 ( .IN1(n531), .IN2(neighborID[14]), .IN3(n532), .IN4(n41), .Q(
        n492) );
  AO22X1 U453 ( .IN1(n531), .IN2(neighborID[15]), .IN3(n532), .IN4(n43), .Q(
        n491) );
  AO22X1 U454 ( .IN1(n204), .IN2(neighborCount[1]), .IN3(n15), .IN4(n205), .Q(
        n490) );
  AO22X1 U455 ( .IN1(n204), .IN2(neighborCount[2]), .IN3(n17), .IN4(n205), .Q(
        n489) );
  AO22X1 U456 ( .IN1(n204), .IN2(neighborCount[3]), .IN3(n19), .IN4(n205), .Q(
        n488) );
  AO22X1 U457 ( .IN1(n204), .IN2(neighborCount[4]), .IN3(n21), .IN4(n205), .Q(
        n487) );
  AO22X1 U458 ( .IN1(n204), .IN2(neighborCount[5]), .IN3(n23), .IN4(n205), .Q(
        n486) );
  AO22X1 U459 ( .IN1(n204), .IN2(neighborCount[6]), .IN3(n25), .IN4(n205), .Q(
        n485) );
  AO22X1 U460 ( .IN1(n204), .IN2(neighborCount[7]), .IN3(n27), .IN4(n205), .Q(
        n484) );
  AO22X1 U461 ( .IN1(n204), .IN2(neighborCount[8]), .IN3(n29), .IN4(n205), .Q(
        n483) );
  AO22X1 U462 ( .IN1(n204), .IN2(neighborCount[9]), .IN3(n31), .IN4(n205), .Q(
        n482) );
  AO22X1 U463 ( .IN1(n204), .IN2(neighborCount[10]), .IN3(n33), .IN4(n205), 
        .Q(n481) );
  AO22X1 U464 ( .IN1(n204), .IN2(neighborCount[11]), .IN3(n35), .IN4(n205), 
        .Q(n480) );
  AO22X1 U465 ( .IN1(n204), .IN2(neighborCount[12]), .IN3(n37), .IN4(n205), 
        .Q(n479) );
  AO22X1 U466 ( .IN1(n204), .IN2(neighborCount[13]), .IN3(n39), .IN4(n205), 
        .Q(n478) );
  AO22X1 U467 ( .IN1(n204), .IN2(neighborCount[14]), .IN3(n41), .IN4(n205), 
        .Q(n477) );
  AO22X1 U468 ( .IN1(n204), .IN2(neighborCount[15]), .IN3(n43), .IN4(n205), 
        .Q(n476) );
  AO22X1 U469 ( .IN1(n537), .IN2(knownSinkCount[0]), .IN3(n538), .IN4(n13), 
        .Q(n475) );
  AO22X1 U470 ( .IN1(n537), .IN2(knownSinkCount[1]), .IN3(n538), .IN4(n15), 
        .Q(n474) );
  AO22X1 U471 ( .IN1(n537), .IN2(knownSinkCount[2]), .IN3(n538), .IN4(n17), 
        .Q(n473) );
  AO22X1 U472 ( .IN1(n537), .IN2(knownSinkCount[3]), .IN3(n538), .IN4(n19), 
        .Q(n472) );
  AO22X1 U473 ( .IN1(n537), .IN2(knownSinkCount[4]), .IN3(n538), .IN4(n21), 
        .Q(n471) );
  AO22X1 U474 ( .IN1(n537), .IN2(knownSinkCount[5]), .IN3(n538), .IN4(n23), 
        .Q(n470) );
  AO22X1 U475 ( .IN1(n537), .IN2(knownSinkCount[6]), .IN3(n538), .IN4(n25), 
        .Q(n469) );
  AO22X1 U476 ( .IN1(n537), .IN2(knownSinkCount[7]), .IN3(n538), .IN4(n27), 
        .Q(n468) );
  AO22X1 U477 ( .IN1(n537), .IN2(knownSinkCount[8]), .IN3(n538), .IN4(n29), 
        .Q(n467) );
  AO22X1 U478 ( .IN1(n537), .IN2(knownSinkCount[9]), .IN3(n538), .IN4(n31), 
        .Q(n466) );
  AO22X1 U479 ( .IN1(n537), .IN2(knownSinkCount[10]), .IN3(n538), .IN4(n33), 
        .Q(n465) );
  AO22X1 U480 ( .IN1(n537), .IN2(knownSinkCount[11]), .IN3(n538), .IN4(n35), 
        .Q(n464) );
  AO22X1 U481 ( .IN1(n537), .IN2(knownSinkCount[12]), .IN3(n538), .IN4(n37), 
        .Q(n463) );
  AO22X1 U482 ( .IN1(n537), .IN2(knownSinkCount[13]), .IN3(n538), .IN4(n39), 
        .Q(n462) );
  AO22X1 U483 ( .IN1(n537), .IN2(knownSinkCount[14]), .IN3(n538), .IN4(n41), 
        .Q(n461) );
  AO22X1 U484 ( .IN1(n537), .IN2(knownSinkCount[15]), .IN3(n538), .IN4(n43), 
        .Q(n460) );
  AO22X1 U485 ( .IN1(n540), .IN2(N472), .IN3(N501), .IN4(n541), .Q(n459) );
  AO22X1 U486 ( .IN1(n540), .IN2(N473), .IN3(N502), .IN4(n541), .Q(n458) );
  AO22X1 U487 ( .IN1(n540), .IN2(j[2]), .IN3(N486), .IN4(n541), .Q(n457) );
  AO22X1 U488 ( .IN1(n540), .IN2(j[3]), .IN3(N487), .IN4(n541), .Q(n456) );
  AO22X1 U489 ( .IN1(n540), .IN2(j[4]), .IN3(N488), .IN4(n541), .Q(n455) );
  AO22X1 U490 ( .IN1(n540), .IN2(j[5]), .IN3(N489), .IN4(n541), .Q(n454) );
  AO22X1 U491 ( .IN1(n540), .IN2(j[6]), .IN3(N490), .IN4(n541), .Q(n453) );
  AO22X1 U492 ( .IN1(n540), .IN2(j[7]), .IN3(N491), .IN4(n541), .Q(n452) );
  AO22X1 U493 ( .IN1(n540), .IN2(j[8]), .IN3(N492), .IN4(n541), .Q(n451) );
  AO22X1 U494 ( .IN1(n540), .IN2(j[9]), .IN3(N493), .IN4(n541), .Q(n450) );
  AO22X1 U495 ( .IN1(n540), .IN2(j[10]), .IN3(N494), .IN4(n541), .Q(n449) );
  AO22X1 U496 ( .IN1(n540), .IN2(j[11]), .IN3(N495), .IN4(n541), .Q(n448) );
  AO22X1 U497 ( .IN1(n540), .IN2(j[12]), .IN3(N496), .IN4(n541), .Q(n447) );
  AO22X1 U498 ( .IN1(n540), .IN2(j[13]), .IN3(N497), .IN4(n541), .Q(n446) );
  AO22X1 U499 ( .IN1(n540), .IN2(j[14]), .IN3(N498), .IN4(n541), .Q(n445) );
  AO22X1 U500 ( .IN1(n540), .IN2(j[15]), .IN3(N499), .IN4(n541), .Q(n444) );
  AO22X1 U501 ( .IN1(n544), .IN2(i[15]), .IN3(N148), .IN4(n545), .Q(n443) );
  AO22X1 U502 ( .IN1(n544), .IN2(N330), .IN3(N150), .IN4(n545), .Q(n442) );
  AO22X1 U503 ( .IN1(n544), .IN2(N331), .IN3(N151), .IN4(n545), .Q(n441) );
  AO22X1 U504 ( .IN1(n544), .IN2(i[2]), .IN3(N135), .IN4(n545), .Q(n440) );
  AO22X1 U505 ( .IN1(n544), .IN2(i[3]), .IN3(N136), .IN4(n545), .Q(n439) );
  AO22X1 U506 ( .IN1(n544), .IN2(i[4]), .IN3(N137), .IN4(n545), .Q(n438) );
  AO22X1 U507 ( .IN1(n544), .IN2(i[5]), .IN3(N138), .IN4(n545), .Q(n437) );
  AO22X1 U508 ( .IN1(n544), .IN2(i[6]), .IN3(N139), .IN4(n545), .Q(n436) );
  AO22X1 U509 ( .IN1(n544), .IN2(i[7]), .IN3(N140), .IN4(n545), .Q(n435) );
  AO22X1 U510 ( .IN1(n544), .IN2(i[8]), .IN3(N141), .IN4(n545), .Q(n434) );
  AO22X1 U511 ( .IN1(n544), .IN2(i[9]), .IN3(N142), .IN4(n545), .Q(n433) );
  AO22X1 U512 ( .IN1(n544), .IN2(i[10]), .IN3(N143), .IN4(n545), .Q(n432) );
  AO22X1 U513 ( .IN1(n544), .IN2(i[11]), .IN3(N144), .IN4(n545), .Q(n431) );
  AO22X1 U514 ( .IN1(n544), .IN2(i[12]), .IN3(N145), .IN4(n545), .Q(n430) );
  AO22X1 U515 ( .IN1(n544), .IN2(i[13]), .IN3(N146), .IN4(n545), .Q(n429) );
  AO22X1 U516 ( .IN1(n544), .IN2(i[14]), .IN3(N147), .IN4(n545), .Q(n428) );
  AO21X1 U517 ( .IN1(n548), .IN2(N330), .IN3(n549), .Q(n427) );
  MUX21X1 U518 ( .IN1(nextsinks[0]), .IN2(n550), .S(n551), .Q(n549) );
  AO22X1 U519 ( .IN1(nextsinks[1]), .IN2(n552), .IN3(n553), .IN4(N331), .Q(
        n426) );
  AO22X1 U520 ( .IN1(nextsinks[2]), .IN2(n552), .IN3(n553), .IN4(i[2]), .Q(
        n425) );
  AO22X1 U521 ( .IN1(nextsinks[3]), .IN2(n552), .IN3(n553), .IN4(i[3]), .Q(
        n424) );
  AO22X1 U522 ( .IN1(nextsinks[4]), .IN2(n552), .IN3(n553), .IN4(i[4]), .Q(
        n423) );
  AO22X1 U523 ( .IN1(nextsinks[5]), .IN2(n552), .IN3(n553), .IN4(i[5]), .Q(
        n422) );
  AO21X1 U524 ( .IN1(n548), .IN2(i[6]), .IN3(n554), .Q(n421) );
  MUX21X1 U525 ( .IN1(nextsinks[6]), .IN2(n550), .S(n551), .Q(n554) );
  AO22X1 U526 ( .IN1(nextsinks[7]), .IN2(n552), .IN3(n553), .IN4(i[7]), .Q(
        n420) );
  AO22X1 U527 ( .IN1(nextsinks[8]), .IN2(n552), .IN3(n553), .IN4(i[8]), .Q(
        n419) );
  AO22X1 U528 ( .IN1(nextsinks[9]), .IN2(n552), .IN3(n553), .IN4(i[9]), .Q(
        n418) );
  AO22X1 U529 ( .IN1(nextsinks[10]), .IN2(n552), .IN3(n553), .IN4(i[10]), .Q(
        n417) );
  AO22X1 U530 ( .IN1(nextsinks[11]), .IN2(n552), .IN3(n553), .IN4(i[11]), .Q(
        n416) );
  AO22X1 U531 ( .IN1(nextsinks[12]), .IN2(n552), .IN3(n553), .IN4(i[12]), .Q(
        n415) );
  AO22X1 U532 ( .IN1(nextsinks[13]), .IN2(n552), .IN3(n553), .IN4(i[13]), .Q(
        n414) );
  AO22X1 U533 ( .IN1(nextsinks[14]), .IN2(n552), .IN3(n553), .IN4(i[14]), .Q(
        n413) );
  AO22X1 U534 ( .IN1(nextsinks[15]), .IN2(n552), .IN3(n553), .IN4(i[15]), .Q(
        n412) );
  NOR2X0 U535 ( .IN1(n231), .IN2(n552), .QN(n548) );
  AO21X1 U536 ( .IN1(N483), .IN2(n543), .IN3(n530), .Q(n551) );
  AO22X1 U537 ( .IN1(N458), .IN2(n10), .IN3(n11), .IN4(fpTemp[30]), .Q(n411)
         );
  AO22X1 U538 ( .IN1(N457), .IN2(n10), .IN3(n11), .IN4(fpTemp[29]), .Q(n410)
         );
  AO22X1 U539 ( .IN1(N456), .IN2(n10), .IN3(n11), .IN4(fpTemp[28]), .Q(n409)
         );
  AO22X1 U540 ( .IN1(N455), .IN2(n10), .IN3(n11), .IN4(fpTemp[27]), .Q(n408)
         );
  AO22X1 U541 ( .IN1(N454), .IN2(n10), .IN3(n11), .IN4(fpTemp[26]), .Q(n407)
         );
  AO22X1 U542 ( .IN1(N453), .IN2(n10), .IN3(n11), .IN4(fpTemp[25]), .Q(n406)
         );
  AO22X1 U543 ( .IN1(N452), .IN2(n10), .IN3(n11), .IN4(fpTemp[24]), .Q(n405)
         );
  AO22X1 U544 ( .IN1(N451), .IN2(n10), .IN3(n11), .IN4(fpTemp[23]), .Q(n404)
         );
  AO22X1 U545 ( .IN1(N450), .IN2(n10), .IN3(n11), .IN4(fpTemp[22]), .Q(n403)
         );
  AO22X1 U546 ( .IN1(N449), .IN2(n10), .IN3(n11), .IN4(fpTemp[21]), .Q(n402)
         );
  AO22X1 U547 ( .IN1(N448), .IN2(n10), .IN3(n11), .IN4(fpTemp[20]), .Q(n401)
         );
  AO222X1 U548 ( .IN1(n12), .IN2(fpTemp[19]), .IN3(N371), .IN4(n555), .IN5(
        N447), .IN6(n9), .Q(n400) );
  AO222X1 U549 ( .IN1(n11), .IN2(fpTemp[18]), .IN3(N370), .IN4(n555), .IN5(
        N446), .IN6(n9), .Q(n399) );
  AO222X1 U550 ( .IN1(n11), .IN2(fpTemp[17]), .IN3(N369), .IN4(n555), .IN5(
        N445), .IN6(n9), .Q(n398) );
  AO222X1 U551 ( .IN1(n12), .IN2(fpTemp[16]), .IN3(N368), .IN4(n555), .IN5(
        N444), .IN6(n9), .Q(n397) );
  AO222X1 U552 ( .IN1(n11), .IN2(fpTemp[15]), .IN3(N367), .IN4(n555), .IN5(
        N443), .IN6(n9), .Q(n396) );
  AO222X1 U553 ( .IN1(n12), .IN2(n556), .IN3(N366), .IN4(n555), .IN5(N442), 
        .IN6(n9), .Q(n395) );
  AO222X1 U554 ( .IN1(n11), .IN2(n557), .IN3(N365), .IN4(n555), .IN5(N441), 
        .IN6(n9), .Q(n394) );
  AO222X1 U555 ( .IN1(n12), .IN2(n558), .IN3(N364), .IN4(n555), .IN5(N440), 
        .IN6(n9), .Q(n393) );
  AO222X1 U556 ( .IN1(n12), .IN2(n559), .IN3(N363), .IN4(n555), .IN5(N439), 
        .IN6(n9), .Q(n392) );
  AO222X1 U557 ( .IN1(n12), .IN2(n560), .IN3(N362), .IN4(n555), .IN5(N438), 
        .IN6(n9), .Q(n391) );
  AO222X1 U558 ( .IN1(n12), .IN2(n561), .IN3(N361), .IN4(n555), .IN5(N437), 
        .IN6(n8), .Q(n390) );
  AO222X1 U559 ( .IN1(n12), .IN2(n562), .IN3(N360), .IN4(n555), .IN5(N436), 
        .IN6(n9), .Q(n389) );
  AO222X1 U560 ( .IN1(n12), .IN2(n563), .IN3(N359), .IN4(n555), .IN5(N435), 
        .IN6(n8), .Q(n388) );
  AO222X1 U561 ( .IN1(n12), .IN2(n564), .IN3(N358), .IN4(n555), .IN5(N434), 
        .IN6(n8), .Q(n387) );
  AO222X1 U562 ( .IN1(n12), .IN2(n565), .IN3(N357), .IN4(n555), .IN5(N433), 
        .IN6(n8), .Q(n386) );
  AO222X1 U563 ( .IN1(n12), .IN2(n566), .IN3(N356), .IN4(n555), .IN5(N432), 
        .IN6(n8), .Q(n385) );
  AO222X1 U564 ( .IN1(n12), .IN2(n567), .IN3(N355), .IN4(n555), .IN5(N431), 
        .IN6(n8), .Q(n384) );
  AO222X1 U565 ( .IN1(n12), .IN2(n568), .IN3(N354), .IN4(n555), .IN5(N430), 
        .IN6(n8), .Q(n383) );
  AO222X1 U566 ( .IN1(n12), .IN2(n569), .IN3(N353), .IN4(n555), .IN5(N429), 
        .IN6(n8), .Q(n382) );
  AO22X1 U567 ( .IN1(N428), .IN2(n9), .IN3(n11), .IN4(n570), .Q(n381) );
  INVX0 U568 ( .INP(n243), .ZN(n251) );
  AO222X1 U569 ( .IN1(n572), .IN2(fpTemp[30]), .IN3(n573), .IN4(k[15]), .IN5(
        N389), .IN6(n574), .Q(n380) );
  AO222X1 U570 ( .IN1(n572), .IN2(fpTemp[15]), .IN3(n573), .IN4(k[0]), .IN5(
        N374), .IN6(n574), .Q(n379) );
  AO221X1 U571 ( .IN1(n572), .IN2(fpTemp[16]), .IN3(N375), .IN4(n574), .IN5(
        n575), .Q(n378) );
  AO21X1 U572 ( .IN1(n573), .IN2(k[1]), .IN3(n576), .Q(n575) );
  AO222X1 U573 ( .IN1(n572), .IN2(fpTemp[17]), .IN3(n573), .IN4(k[2]), .IN5(
        N376), .IN6(n574), .Q(n377) );
  AO221X1 U574 ( .IN1(n572), .IN2(fpTemp[18]), .IN3(N377), .IN4(n574), .IN5(
        n577), .Q(n376) );
  AO21X1 U575 ( .IN1(n573), .IN2(k[3]), .IN3(n576), .Q(n577) );
  NOR3X0 U576 ( .IN1(n45), .IN2(n573), .IN3(n212), .QN(n576) );
  AO222X1 U577 ( .IN1(n572), .IN2(fpTemp[19]), .IN3(n573), .IN4(k[4]), .IN5(
        N378), .IN6(n574), .Q(n375) );
  AO222X1 U578 ( .IN1(n572), .IN2(fpTemp[20]), .IN3(n573), .IN4(k[5]), .IN5(
        N379), .IN6(n574), .Q(n374) );
  AO222X1 U579 ( .IN1(n572), .IN2(fpTemp[21]), .IN3(n573), .IN4(k[6]), .IN5(
        N380), .IN6(n574), .Q(n373) );
  AO222X1 U580 ( .IN1(n572), .IN2(fpTemp[22]), .IN3(n573), .IN4(k[7]), .IN5(
        N381), .IN6(n574), .Q(n372) );
  AO222X1 U581 ( .IN1(n572), .IN2(fpTemp[23]), .IN3(n573), .IN4(k[8]), .IN5(
        N382), .IN6(n574), .Q(n371) );
  AO222X1 U582 ( .IN1(n572), .IN2(fpTemp[24]), .IN3(n573), .IN4(k[9]), .IN5(
        N383), .IN6(n574), .Q(n370) );
  AO222X1 U583 ( .IN1(n572), .IN2(fpTemp[25]), .IN3(n573), .IN4(k[10]), .IN5(
        N384), .IN6(n574), .Q(n369) );
  AO222X1 U584 ( .IN1(n572), .IN2(fpTemp[26]), .IN3(n573), .IN4(k[11]), .IN5(
        N385), .IN6(n574), .Q(n368) );
  AO222X1 U585 ( .IN1(n572), .IN2(fpTemp[27]), .IN3(n573), .IN4(k[12]), .IN5(
        N386), .IN6(n574), .Q(n367) );
  AO222X1 U586 ( .IN1(n572), .IN2(fpTemp[28]), .IN3(n573), .IN4(k[13]), .IN5(
        N387), .IN6(n574), .Q(n366) );
  AO222X1 U587 ( .IN1(n572), .IN2(fpTemp[29]), .IN3(n573), .IN4(k[14]), .IN5(
        N388), .IN6(n574), .Q(n365) );
  NAND2X0 U588 ( .IN1(N406), .IN2(n255), .QN(n580) );
  INVX0 U589 ( .INP(n578), .ZN(n581) );
  NOR4X0 U590 ( .IN1(n582), .IN2(n583), .IN3(n584), .IN4(n585), .QN(n578) );
  NAND4X0 U591 ( .IN1(n748), .IN2(n749), .IN3(n750), .IN4(n751), .QN(n585) );
  NAND4X0 U592 ( .IN1(n752), .IN2(n753), .IN3(n754), .IN4(n759), .QN(n584) );
  NAND3X0 U593 ( .IN1(n742), .IN2(n743), .IN3(n741), .QN(n583) );
  NAND4X0 U594 ( .IN1(n744), .IN2(n745), .IN3(n746), .IN4(n747), .QN(n582) );
  NAND2X0 U595 ( .IN1(n586), .IN2(n587), .QN(n214) );
  AO22X1 U596 ( .IN1(n588), .IN2(n43), .IN3(n589), .IN4(bestneighborID[15]), 
        .Q(n364) );
  AO22X1 U597 ( .IN1(n588), .IN2(n41), .IN3(n589), .IN4(bestneighborID[14]), 
        .Q(n363) );
  AO22X1 U598 ( .IN1(n588), .IN2(n39), .IN3(n589), .IN4(bestneighborID[13]), 
        .Q(n362) );
  AO22X1 U599 ( .IN1(n588), .IN2(n37), .IN3(n589), .IN4(bestneighborID[12]), 
        .Q(n361) );
  AO221X1 U600 ( .IN1(n589), .IN2(bestneighborID[11]), .IN3(n590), .IN4(n35), 
        .IN5(n591), .Q(n360) );
  AO221X1 U601 ( .IN1(n589), .IN2(bestneighborID[10]), .IN3(n590), .IN4(n33), 
        .IN5(n591), .Q(n359) );
  AO221X1 U602 ( .IN1(n589), .IN2(bestneighborID[9]), .IN3(n590), .IN4(n31), 
        .IN5(n591), .Q(n358) );
  AO221X1 U603 ( .IN1(n589), .IN2(bestneighborID[8]), .IN3(n590), .IN4(n29), 
        .IN5(n591), .Q(n357) );
  AO221X1 U604 ( .IN1(n589), .IN2(bestneighborID[7]), .IN3(n590), .IN4(n27), 
        .IN5(n591), .Q(n356) );
  AO221X1 U605 ( .IN1(n589), .IN2(bestneighborID[6]), .IN3(n590), .IN4(n25), 
        .IN5(n591), .Q(n355) );
  AO221X1 U606 ( .IN1(n589), .IN2(bestneighborID[5]), .IN3(n590), .IN4(n23), 
        .IN5(n591), .Q(n354) );
  AO221X1 U607 ( .IN1(n589), .IN2(bestneighborID[4]), .IN3(n590), .IN4(n21), 
        .IN5(n591), .Q(n353) );
  AO221X1 U608 ( .IN1(n589), .IN2(bestneighborID[3]), .IN3(n590), .IN4(n19), 
        .IN5(n591), .Q(n352) );
  AO221X1 U609 ( .IN1(n589), .IN2(bestneighborID[2]), .IN3(n590), .IN4(n17), 
        .IN5(n591), .Q(n351) );
  AO221X1 U610 ( .IN1(n589), .IN2(bestneighborID[1]), .IN3(n590), .IN4(n15), 
        .IN5(n591), .Q(n350) );
  AO22X1 U611 ( .IN1(n588), .IN2(n13), .IN3(n589), .IN4(bestneighborID[0]), 
        .Q(n349) );
  AO222X1 U612 ( .IN1(qValue[15]), .IN2(n593), .IN3(n594), .IN4(n43), .IN5(
        N456), .IN6(n8), .Q(n348) );
  AO222X1 U613 ( .IN1(qValue[14]), .IN2(n593), .IN3(n594), .IN4(n41), .IN5(
        N455), .IN6(n8), .Q(n347) );
  AO222X1 U614 ( .IN1(qValue[13]), .IN2(n593), .IN3(n594), .IN4(n39), .IN5(
        N454), .IN6(n8), .Q(n346) );
  AO222X1 U615 ( .IN1(qValue[12]), .IN2(n593), .IN3(n594), .IN4(n37), .IN5(
        N453), .IN6(n8), .Q(n345) );
  AO222X1 U616 ( .IN1(qValue[11]), .IN2(n593), .IN3(n594), .IN4(n35), .IN5(
        N452), .IN6(n7), .Q(n344) );
  AO222X1 U617 ( .IN1(qValue[10]), .IN2(n593), .IN3(n594), .IN4(n33), .IN5(
        N451), .IN6(n7), .Q(n343) );
  AO222X1 U618 ( .IN1(qValue[9]), .IN2(n593), .IN3(n594), .IN4(n31), .IN5(N450), .IN6(n7), .Q(n342) );
  AO222X1 U619 ( .IN1(qValue[8]), .IN2(n593), .IN3(n594), .IN4(n29), .IN5(N449), .IN6(n7), .Q(n341) );
  AO222X1 U620 ( .IN1(qValue[7]), .IN2(n593), .IN3(n594), .IN4(n27), .IN5(N448), .IN6(n7), .Q(n340) );
  AO222X1 U621 ( .IN1(qValue[6]), .IN2(n593), .IN3(n594), .IN4(n25), .IN5(N447), .IN6(n7), .Q(n339) );
  AO222X1 U622 ( .IN1(qValue[5]), .IN2(n593), .IN3(n594), .IN4(n23), .IN5(N446), .IN6(n7), .Q(n338) );
  AO222X1 U623 ( .IN1(qValue[4]), .IN2(n593), .IN3(n594), .IN4(n21), .IN5(N445), .IN6(n7), .Q(n337) );
  AO222X1 U624 ( .IN1(qValue[3]), .IN2(n593), .IN3(n594), .IN4(n19), .IN5(N444), .IN6(n7), .Q(n336) );
  AO222X1 U625 ( .IN1(qValue[2]), .IN2(n593), .IN3(n594), .IN4(n17), .IN5(N443), .IN6(n7), .Q(n335) );
  AO222X1 U626 ( .IN1(qValue[1]), .IN2(n593), .IN3(n594), .IN4(n15), .IN5(N442), .IN6(n7), .Q(n334) );
  AO222X1 U627 ( .IN1(qValue[0]), .IN2(n593), .IN3(n594), .IN4(n13), .IN5(N441), .IN6(n7), .Q(n333) );
  AO22X1 U628 ( .IN1(n579), .IN2(done), .IN3(n250), .IN4(nrst), .Q(n332) );
  INVX0 U629 ( .INP(n239), .ZN(n250) );
  NAND2X0 U630 ( .IN1(n595), .IN2(n596), .QN(n239) );
  MUX21X1 U631 ( .IN1(n597), .IN2(wr_en), .S(n598), .Q(n331) );
  AND4X1 U632 ( .IN1(n213), .IN2(n240), .IN3(n243), .IN4(n599), .Q(n598) );
  NAND2X0 U633 ( .IN1(n586), .IN2(n596), .QN(n243) );
  NAND2X0 U634 ( .IN1(n600), .IN2(n595), .QN(n240) );
  OR2X1 U635 ( .IN1(n588), .IN2(n594), .Q(n597) );
  AO22X1 U636 ( .IN1(n599), .IN2(betterneighborCount[0]), .IN3(N292), .IN4(
        n602), .Q(n330) );
  AO22X1 U637 ( .IN1(n599), .IN2(betterneighborCount[1]), .IN3(N293), .IN4(
        n602), .Q(n329) );
  AO22X1 U638 ( .IN1(n599), .IN2(betterneighborCount[2]), .IN3(N294), .IN4(
        n602), .Q(n328) );
  AO22X1 U639 ( .IN1(n599), .IN2(betterneighborCount[3]), .IN3(N295), .IN4(
        n602), .Q(n327) );
  AO22X1 U640 ( .IN1(n599), .IN2(betterneighborCount[4]), .IN3(N296), .IN4(
        n602), .Q(n326) );
  AO22X1 U641 ( .IN1(n599), .IN2(betterneighborCount[5]), .IN3(N297), .IN4(
        n602), .Q(n325) );
  AO22X1 U642 ( .IN1(n599), .IN2(betterneighborCount[6]), .IN3(N298), .IN4(
        n602), .Q(n324) );
  AO22X1 U643 ( .IN1(n599), .IN2(betterneighborCount[7]), .IN3(N299), .IN4(
        n602), .Q(n323) );
  AO22X1 U644 ( .IN1(n599), .IN2(betterneighborCount[8]), .IN3(N300), .IN4(
        n602), .Q(n322) );
  AO22X1 U645 ( .IN1(n599), .IN2(betterneighborCount[9]), .IN3(N301), .IN4(
        n602), .Q(n321) );
  AO22X1 U646 ( .IN1(n599), .IN2(betterneighborCount[10]), .IN3(N302), .IN4(
        n602), .Q(n320) );
  AO22X1 U647 ( .IN1(n599), .IN2(betterneighborCount[11]), .IN3(N303), .IN4(
        n602), .Q(n319) );
  AO22X1 U648 ( .IN1(n599), .IN2(betterneighborCount[12]), .IN3(N304), .IN4(
        n602), .Q(n318) );
  AO22X1 U649 ( .IN1(n599), .IN2(betterneighborCount[13]), .IN3(N305), .IN4(
        n602), .Q(n317) );
  AO22X1 U650 ( .IN1(n599), .IN2(betterneighborCount[14]), .IN3(N306), .IN4(
        n602), .Q(n316) );
  AO22X1 U651 ( .IN1(n599), .IN2(betterneighborCount[15]), .IN3(N307), .IN4(
        n602), .Q(n315) );
  AO222X1 U652 ( .IN1(n604), .IN2(data_out[0]), .IN3(n605), .IN4(N330), .IN5(
        n588), .IN6(betterneighborCount[0]), .Q(n314) );
  AO222X1 U653 ( .IN1(n604), .IN2(data_out[1]), .IN3(n605), .IN4(N331), .IN5(
        n588), .IN6(betterneighborCount[1]), .Q(n313) );
  AO222X1 U654 ( .IN1(n604), .IN2(data_out[2]), .IN3(n605), .IN4(i[2]), .IN5(
        n588), .IN6(betterneighborCount[2]), .Q(n312) );
  AO222X1 U655 ( .IN1(n604), .IN2(data_out[3]), .IN3(n605), .IN4(i[3]), .IN5(
        n588), .IN6(betterneighborCount[3]), .Q(n311) );
  AO222X1 U656 ( .IN1(n604), .IN2(data_out[4]), .IN3(n605), .IN4(i[4]), .IN5(
        n588), .IN6(betterneighborCount[4]), .Q(n310) );
  AO222X1 U657 ( .IN1(n604), .IN2(data_out[5]), .IN3(n605), .IN4(i[5]), .IN5(
        n588), .IN6(betterneighborCount[5]), .Q(n309) );
  AO222X1 U658 ( .IN1(n604), .IN2(data_out[6]), .IN3(n605), .IN4(i[6]), .IN5(
        n588), .IN6(betterneighborCount[6]), .Q(n308) );
  AO222X1 U659 ( .IN1(n604), .IN2(data_out[7]), .IN3(n605), .IN4(i[7]), .IN5(
        n588), .IN6(betterneighborCount[7]), .Q(n307) );
  AO222X1 U660 ( .IN1(n604), .IN2(data_out[8]), .IN3(n605), .IN4(i[8]), .IN5(
        n588), .IN6(betterneighborCount[8]), .Q(n306) );
  AO222X1 U661 ( .IN1(n604), .IN2(data_out[9]), .IN3(n605), .IN4(i[9]), .IN5(
        n588), .IN6(betterneighborCount[9]), .Q(n305) );
  AO222X1 U662 ( .IN1(n604), .IN2(data_out[10]), .IN3(n605), .IN4(i[10]), 
        .IN5(n588), .IN6(betterneighborCount[10]), .Q(n304) );
  AO222X1 U663 ( .IN1(n604), .IN2(data_out[11]), .IN3(n605), .IN4(i[11]), 
        .IN5(n588), .IN6(betterneighborCount[11]), .Q(n303) );
  AO222X1 U664 ( .IN1(n604), .IN2(data_out[12]), .IN3(n605), .IN4(i[12]), 
        .IN5(n588), .IN6(betterneighborCount[12]), .Q(n302) );
  AO222X1 U665 ( .IN1(n604), .IN2(data_out[13]), .IN3(n605), .IN4(i[13]), 
        .IN5(n588), .IN6(betterneighborCount[13]), .Q(n301) );
  AO222X1 U666 ( .IN1(n604), .IN2(data_out[14]), .IN3(n605), .IN4(i[14]), 
        .IN5(n588), .IN6(betterneighborCount[14]), .Q(n300) );
  AO222X1 U667 ( .IN1(n604), .IN2(data_out[15]), .IN3(n605), .IN4(i[15]), 
        .IN5(n588), .IN6(betterneighborCount[15]), .Q(n299) );
  NAND2X0 U668 ( .IN1(n606), .IN2(nrst), .QN(n601) );
  NAND3X0 U669 ( .IN1(n213), .IN2(n607), .IN3(nrst), .QN(n235) );
  AO22X1 U670 ( .IN1(n608), .IN2(bestvalue[0]), .IN3(n609), .IN4(N441), .Q(
        n298) );
  NAND2X0 U671 ( .IN1(n610), .IN2(n611), .QN(n297) );
  MUX21X1 U672 ( .IN1(n740), .IN2(n756), .S(n612), .Q(n610) );
  AO22X1 U673 ( .IN1(n608), .IN2(N164), .IN3(n609), .IN4(N331), .Q(n296) );
  AO22X1 U674 ( .IN1(n608), .IN2(besthop[2]), .IN3(n609), .IN4(i[2]), .Q(n295)
         );
  AO22X1 U675 ( .IN1(n608), .IN2(besthop[3]), .IN3(n609), .IN4(i[3]), .Q(n294)
         );
  AO22X1 U676 ( .IN1(n608), .IN2(besthop[4]), .IN3(n609), .IN4(i[4]), .Q(n293)
         );
  AO22X1 U677 ( .IN1(n608), .IN2(besthop[5]), .IN3(n609), .IN4(i[5]), .Q(n292)
         );
  NAND2X0 U678 ( .IN1(n613), .IN2(n611), .QN(n291) );
  MUX21X1 U679 ( .IN1(n739), .IN2(n755), .S(n612), .Q(n613) );
  AO22X1 U680 ( .IN1(n608), .IN2(besthop[7]), .IN3(n609), .IN4(i[7]), .Q(n290)
         );
  AO22X1 U681 ( .IN1(n608), .IN2(besthop[8]), .IN3(n609), .IN4(i[8]), .Q(n289)
         );
  AO22X1 U682 ( .IN1(n608), .IN2(besthop[9]), .IN3(n609), .IN4(i[9]), .Q(n288)
         );
  NOR2X0 U683 ( .IN1(n760), .IN2(n614), .QN(n287) );
  AO22X1 U684 ( .IN1(n615), .IN2(address[1]), .IN3(nrst), .IN4(n616), .Q(n286)
         );
  OR4X1 U685 ( .IN1(n617), .IN2(n618), .IN3(n619), .IN4(n620), .Q(n616) );
  AO222X1 U686 ( .IN1(N501), .IN2(n542), .IN3(N319), .IN4(n603), .IN5(N163), 
        .IN6(n621), .Q(n620) );
  AO221X1 U687 ( .IN1(N150), .IN2(n622), .IN3(N330), .IN4(n623), .IN5(n539), 
        .Q(n619) );
  INVX0 U688 ( .INP(n225), .ZN(n539) );
  AO222X1 U689 ( .IN1(N472), .IN2(n534), .IN3(N150), .IN4(n624), .IN5(N418), 
        .IN6(n255), .Q(n618) );
  AO222X1 U690 ( .IN1(N330), .IN2(n625), .IN3(N330), .IN4(n254), .IN5(N150), 
        .IN6(n626), .Q(n617) );
  AO22X1 U691 ( .IN1(n615), .IN2(address[2]), .IN3(nrst), .IN4(n627), .Q(n285)
         );
  OR4X1 U692 ( .IN1(n628), .IN2(n629), .IN3(n630), .IN4(n631), .Q(n627) );
  AO222X1 U693 ( .IN1(N502), .IN2(n542), .IN3(N320), .IN4(n603), .IN5(N164), 
        .IN6(n621), .Q(n631) );
  AO221X1 U694 ( .IN1(N151), .IN2(n622), .IN3(N331), .IN4(n623), .IN5(n590), 
        .Q(n630) );
  AO222X1 U695 ( .IN1(N473), .IN2(n534), .IN3(N151), .IN4(n624), .IN5(N419), 
        .IN6(n255), .Q(n629) );
  AO222X1 U696 ( .IN1(N331), .IN2(n625), .IN3(N331), .IN4(n254), .IN5(N151), 
        .IN6(n626), .Q(n628) );
  MUX21X1 U697 ( .IN1(address[3]), .IN2(n632), .S(n614), .Q(n284) );
  OR4X1 U698 ( .IN1(n633), .IN2(n634), .IN3(n635), .IN4(n636), .Q(n632) );
  AO222X1 U699 ( .IN1(n6), .IN2(n621), .IN3(N503), .IN4(n542), .IN5(N332), 
        .IN6(n254), .Q(n636) );
  AO221X1 U700 ( .IN1(N332), .IN2(n623), .IN3(N321), .IN4(n603), .IN5(n637), 
        .Q(n635) );
  AO21X1 U701 ( .IN1(N230), .IN2(n622), .IN3(n536), .Q(n637) );
  AO221X1 U702 ( .IN1(N474), .IN2(n534), .IN3(N420), .IN4(n255), .IN5(n247), 
        .Q(n634) );
  AO222X1 U703 ( .IN1(N230), .IN2(n626), .IN3(N332), .IN4(n625), .IN5(N230), 
        .IN6(n624), .Q(n633) );
  AO22X1 U704 ( .IN1(n615), .IN2(address[4]), .IN3(nrst), .IN4(n638), .Q(n283)
         );
  OR4X1 U705 ( .IN1(n639), .IN2(n640), .IN3(n641), .IN4(n642), .Q(n638) );
  AO222X1 U706 ( .IN1(N166), .IN2(n621), .IN3(N504), .IN4(n542), .IN5(N188), 
        .IN6(n254), .Q(n642) );
  AO222X1 U707 ( .IN1(N267), .IN2(n623), .IN3(N153), .IN4(n622), .IN5(N322), 
        .IN6(n603), .Q(n641) );
  AO22X1 U708 ( .IN1(N421), .IN2(n255), .IN3(N475), .IN4(n534), .Q(n640) );
  AO222X1 U709 ( .IN1(N534), .IN2(n626), .IN3(N333), .IN4(n625), .IN5(N231), 
        .IN6(n624), .Q(n639) );
  AO22X1 U710 ( .IN1(n615), .IN2(address[5]), .IN3(nrst), .IN4(n643), .Q(n282)
         );
  OR4X1 U711 ( .IN1(n644), .IN2(n645), .IN3(n646), .IN4(n647), .Q(n643) );
  AO222X1 U712 ( .IN1(N167), .IN2(n621), .IN3(N505), .IN4(n542), .IN5(N189), 
        .IN6(n254), .Q(n647) );
  AO222X1 U713 ( .IN1(N268), .IN2(n623), .IN3(N154), .IN4(n622), .IN5(N323), 
        .IN6(n603), .Q(n646) );
  AO22X1 U714 ( .IN1(N422), .IN2(n255), .IN3(N476), .IN4(n534), .Q(n645) );
  AO222X1 U715 ( .IN1(N535), .IN2(n626), .IN3(N334), .IN4(n625), .IN5(N232), 
        .IN6(n624), .Q(n644) );
  AO22X1 U716 ( .IN1(n615), .IN2(address[6]), .IN3(nrst), .IN4(n648), .Q(n281)
         );
  OR4X1 U717 ( .IN1(n649), .IN2(n650), .IN3(n651), .IN4(n652), .Q(n648) );
  AO222X1 U718 ( .IN1(N506), .IN2(n542), .IN3(N324), .IN4(n603), .IN5(N168), 
        .IN6(n621), .Q(n652) );
  AO221X1 U719 ( .IN1(N155), .IN2(n622), .IN3(N269), .IN4(n623), .IN5(n536), 
        .Q(n651) );
  AO222X1 U720 ( .IN1(N477), .IN2(n534), .IN3(N233), .IN4(n624), .IN5(N423), 
        .IN6(n255), .Q(n650) );
  AO222X1 U721 ( .IN1(N335), .IN2(n625), .IN3(N190), .IN4(n254), .IN5(N536), 
        .IN6(n626), .Q(n649) );
  MUX21X1 U722 ( .IN1(address[7]), .IN2(n653), .S(n614), .Q(n280) );
  OR4X1 U723 ( .IN1(n654), .IN2(n655), .IN3(n656), .IN4(n657), .Q(n653) );
  AO222X1 U724 ( .IN1(N169), .IN2(n621), .IN3(N507), .IN4(n542), .IN5(N191), 
        .IN6(n254), .Q(n657) );
  AO221X1 U725 ( .IN1(N270), .IN2(n623), .IN3(N325), .IN4(n603), .IN5(n658), 
        .Q(n656) );
  AO21X1 U726 ( .IN1(N156), .IN2(n622), .IN3(n536), .Q(n658) );
  INVX0 U727 ( .INP(n535), .ZN(n536) );
  AO221X1 U728 ( .IN1(N478), .IN2(n534), .IN3(N424), .IN4(n255), .IN5(n247), 
        .Q(n655) );
  AO222X1 U729 ( .IN1(N537), .IN2(n626), .IN3(N336), .IN4(n625), .IN5(N234), 
        .IN6(n624), .Q(n654) );
  AO22X1 U730 ( .IN1(n615), .IN2(address[8]), .IN3(nrst), .IN4(n659), .Q(n279)
         );
  OR4X1 U731 ( .IN1(n660), .IN2(n661), .IN3(n662), .IN4(n663), .Q(n659) );
  AO222X1 U732 ( .IN1(N170), .IN2(n621), .IN3(N508), .IN4(n542), .IN5(N192), 
        .IN6(n254), .Q(n663) );
  AO222X1 U733 ( .IN1(N271), .IN2(n623), .IN3(N157), .IN4(n622), .IN5(N326), 
        .IN6(n603), .Q(n662) );
  AO22X1 U734 ( .IN1(N425), .IN2(n255), .IN3(N479), .IN4(n534), .Q(n661) );
  AO222X1 U735 ( .IN1(N538), .IN2(n626), .IN3(N337), .IN4(n625), .IN5(N235), 
        .IN6(n624), .Q(n660) );
  INVX0 U736 ( .INP(n614), .ZN(n615) );
  MUX21X1 U737 ( .IN1(address[9]), .IN2(n664), .S(n614), .Q(n278) );
  OR4X1 U738 ( .IN1(n665), .IN2(n666), .IN3(n667), .IN4(n668), .Q(n664) );
  AO222X1 U739 ( .IN1(N171), .IN2(n621), .IN3(N509), .IN4(n542), .IN5(N193), 
        .IN6(n254), .Q(n668) );
  AO222X1 U740 ( .IN1(N272), .IN2(n623), .IN3(N158), .IN4(n622), .IN5(N327), 
        .IN6(n603), .Q(n667) );
  AO221X1 U741 ( .IN1(N480), .IN2(n534), .IN3(N426), .IN4(n255), .IN5(n247), 
        .Q(n666) );
  AO222X1 U742 ( .IN1(N539), .IN2(n626), .IN3(N338), .IN4(n625), .IN5(N236), 
        .IN6(n624), .Q(n665) );
  MUX21X1 U743 ( .IN1(address[10]), .IN2(n669), .S(n614), .Q(n277) );
  NAND4X0 U744 ( .IN1(n593), .IN2(n670), .IN3(n546), .IN4(n671), .QN(n614) );
  AND3X1 U745 ( .IN1(n533), .IN2(n535), .IN3(n225), .Q(n671) );
  NAND2X0 U746 ( .IN1(n596), .IN2(n672), .QN(n535) );
  NOR3X0 U747 ( .IN1(n673), .IN2(n224), .IN3(n543), .QN(n546) );
  INVX0 U748 ( .INP(n223), .ZN(n670) );
  NAND3X0 U749 ( .IN1(n213), .IN2(n212), .IN3(n674), .QN(n223) );
  NAND3X0 U750 ( .IN1(n675), .IN2(n672), .IN3(start), .QN(n674) );
  OR4X1 U751 ( .IN1(n676), .IN2(n677), .IN3(n678), .IN4(n679), .Q(n669) );
  AO222X1 U752 ( .IN1(N172), .IN2(n621), .IN3(N510), .IN4(n542), .IN5(N194), 
        .IN6(n254), .Q(n679) );
  AND2X1 U753 ( .IN1(N160), .IN2(n547), .Q(n621) );
  NAND3X0 U754 ( .IN1(n217), .IN2(n244), .IN3(n215), .QN(n547) );
  INVX0 U755 ( .INP(n680), .ZN(n217) );
  AO222X1 U756 ( .IN1(N273), .IN2(n623), .IN3(N159), .IN4(n622), .IN5(N328), 
        .IN6(n603), .Q(n678) );
  NAND2X0 U757 ( .IN1(n606), .IN2(n681), .QN(n607) );
  INVX0 U758 ( .INP(n252), .ZN(n606) );
  NAND2X0 U759 ( .IN1(N130), .IN2(n673), .QN(n215) );
  INVX0 U760 ( .INP(n242), .ZN(n673) );
  NAND2X0 U761 ( .IN1(n587), .IN2(n672), .QN(n242) );
  NAND2X0 U762 ( .IN1(n224), .IN2(n682), .QN(n219) );
  INVX0 U763 ( .INP(n241), .ZN(n224) );
  AO221X1 U764 ( .IN1(N481), .IN2(n534), .IN3(N427), .IN4(n255), .IN5(n247), 
        .Q(n677) );
  NAND4X0 U765 ( .IN1(n592), .IN2(n683), .IN3(n225), .IN4(n213), .QN(n247) );
  NAND2X0 U766 ( .IN1(n675), .IN2(n595), .QN(n213) );
  NAND2X0 U767 ( .IN1(n600), .IN2(n672), .QN(n225) );
  NAND2X0 U768 ( .IN1(n675), .IN2(n672), .QN(n683) );
  NOR2X0 U769 ( .IN1(state[3]), .IN2(state[2]), .QN(n672) );
  INVX0 U770 ( .INP(n550), .ZN(n592) );
  NAND2X0 U771 ( .IN1(n684), .IN2(n675), .QN(n212) );
  NAND2X0 U772 ( .IN1(n684), .IN2(n596), .QN(n533) );
  NOR2X0 U773 ( .IN1(n685), .IN2(state[0]), .QN(n596) );
  AO222X1 U774 ( .IN1(N540), .IN2(n626), .IN3(N339), .IN4(n625), .IN5(N237), 
        .IN6(n624), .Q(n676) );
  NAND2X0 U775 ( .IN1(n680), .IN2(n216), .QN(n226) );
  INVX0 U776 ( .INP(N160), .ZN(n216) );
  NOR2X0 U777 ( .IN1(n682), .IN2(n241), .QN(n680) );
  NAND2X0 U778 ( .IN1(n586), .IN2(n675), .QN(n241) );
  NOR2X0 U779 ( .IN1(state[1]), .IN2(state[0]), .QN(n675) );
  NAND4X0 U780 ( .IN1(n36), .IN2(n38), .IN3(n686), .IN4(n687), .QN(n682) );
  NOR4X0 U781 ( .IN1(n31), .IN2(n43), .IN3(n41), .IN4(n39), .QN(n687) );
  OA21X1 U782 ( .IN1(n688), .IN2(n30), .IN3(n34), .Q(n686) );
  OA21X1 U783 ( .IN1(n689), .IN2(n26), .IN3(n28), .Q(n688) );
  AND3X1 U784 ( .IN1(n20), .IN2(n24), .IN3(n22), .Q(n689) );
  OA21X1 U785 ( .IN1(n252), .IN2(n681), .IN3(n253), .Q(n208) );
  AO21X1 U786 ( .IN1(mybest[15]), .IN2(n44), .IN3(n690), .Q(n681) );
  OA22X1 U787 ( .IN1(mybest[15]), .IN2(n44), .IN3(n691), .IN4(n692), .Q(n690)
         );
  AND2X1 U788 ( .IN1(n42), .IN2(mybest[14]), .Q(n692) );
  OA221X1 U789 ( .IN1(mybest[13]), .IN2(n40), .IN3(mybest[14]), .IN4(n42), 
        .IN5(n693), .Q(n691) );
  AO221X1 U790 ( .IN1(mybest[12]), .IN2(n38), .IN3(mybest[13]), .IN4(n40), 
        .IN5(n694), .Q(n693) );
  OA221X1 U791 ( .IN1(mybest[11]), .IN2(n36), .IN3(mybest[12]), .IN4(n38), 
        .IN5(n695), .Q(n694) );
  AO221X1 U792 ( .IN1(mybest[10]), .IN2(n34), .IN3(mybest[11]), .IN4(n36), 
        .IN5(n696), .Q(n695) );
  OA221X1 U793 ( .IN1(mybest[9]), .IN2(n32), .IN3(mybest[10]), .IN4(n34), 
        .IN5(n697), .Q(n696) );
  AO221X1 U794 ( .IN1(mybest[8]), .IN2(n30), .IN3(mybest[9]), .IN4(n32), .IN5(
        n698), .Q(n697) );
  OA221X1 U795 ( .IN1(mybest[7]), .IN2(n28), .IN3(mybest[8]), .IN4(n30), .IN5(
        n699), .Q(n698) );
  AO221X1 U796 ( .IN1(mybest[6]), .IN2(n26), .IN3(mybest[7]), .IN4(n28), .IN5(
        n700), .Q(n699) );
  OA221X1 U797 ( .IN1(mybest[5]), .IN2(n24), .IN3(mybest[6]), .IN4(n26), .IN5(
        n701), .Q(n700) );
  AO221X1 U798 ( .IN1(mybest[4]), .IN2(n22), .IN3(mybest[5]), .IN4(n24), .IN5(
        n702), .Q(n701) );
  OA221X1 U799 ( .IN1(mybest[3]), .IN2(n20), .IN3(mybest[4]), .IN4(n22), .IN5(
        n703), .Q(n702) );
  AO222X1 U800 ( .IN1(n704), .IN2(n18), .IN3(mybest[2]), .IN4(n705), .IN5(
        mybest[3]), .IN6(n20), .Q(n703) );
  OR2X1 U801 ( .IN1(n18), .IN2(n704), .Q(n705) );
  OA22X1 U802 ( .IN1(mybest[1]), .IN2(n16), .IN3(n14), .IN4(n706), .Q(n704) );
  AO21X1 U803 ( .IN1(mybest[1]), .IN2(n16), .IN3(mybest[0]), .Q(n706) );
  NAND2X0 U804 ( .IN1(n600), .IN2(n586), .QN(n252) );
  NOR2X0 U805 ( .IN1(n4), .IN2(state[3]), .QN(n586) );
  NAND2X0 U806 ( .IN1(N511), .IN2(n543), .QN(n244) );
  INVX0 U807 ( .INP(n231), .ZN(n543) );
  NAND2X0 U808 ( .IN1(n684), .IN2(n587), .QN(n231) );
  AO22X1 U809 ( .IN1(n608), .IN2(besthop[10]), .IN3(n609), .IN4(i[10]), .Q(
        n276) );
  AO22X1 U810 ( .IN1(n608), .IN2(besthop[11]), .IN3(n609), .IN4(i[11]), .Q(
        n275) );
  AO22X1 U811 ( .IN1(n608), .IN2(besthop[12]), .IN3(n609), .IN4(i[12]), .Q(
        n274) );
  AO22X1 U812 ( .IN1(n608), .IN2(besthop[13]), .IN3(n609), .IN4(i[13]), .Q(
        n273) );
  AO22X1 U813 ( .IN1(n608), .IN2(besthop[14]), .IN3(n609), .IN4(i[14]), .Q(
        n272) );
  AO22X1 U814 ( .IN1(n608), .IN2(besthop[15]), .IN3(n609), .IN4(i[15]), .Q(
        n271) );
  NAND2X0 U815 ( .IN1(n707), .IN2(n611), .QN(n270) );
  MUX21X1 U816 ( .IN1(n738), .IN2(n166), .S(n612), .Q(n707) );
  NAND2X0 U817 ( .IN1(n708), .IN2(n611), .QN(n269) );
  MUX21X1 U818 ( .IN1(n737), .IN2(n167), .S(n612), .Q(n708) );
  NAND2X0 U819 ( .IN1(n709), .IN2(n611), .QN(n268) );
  MUX21X1 U820 ( .IN1(n736), .IN2(n168), .S(n612), .Q(n709) );
  NAND2X0 U821 ( .IN1(n710), .IN2(n611), .QN(n267) );
  MUX21X1 U822 ( .IN1(n735), .IN2(n169), .S(n612), .Q(n710) );
  NAND2X0 U823 ( .IN1(n711), .IN2(n611), .QN(n266) );
  MUX21X1 U824 ( .IN1(n170), .IN2(n734), .S(n608), .Q(n711) );
  NAND2X0 U825 ( .IN1(n712), .IN2(n611), .QN(n265) );
  MUX21X1 U826 ( .IN1(n171), .IN2(n733), .S(n608), .Q(n712) );
  NAND2X0 U827 ( .IN1(n713), .IN2(n611), .QN(n264) );
  MUX21X1 U828 ( .IN1(n172), .IN2(n732), .S(n608), .Q(n713) );
  NAND2X0 U829 ( .IN1(n714), .IN2(n611), .QN(n263) );
  MUX21X1 U830 ( .IN1(n731), .IN2(n173), .S(n612), .Q(n714) );
  NAND2X0 U831 ( .IN1(n715), .IN2(n611), .QN(n262) );
  MUX21X1 U832 ( .IN1(n730), .IN2(n174), .S(n612), .Q(n715) );
  NAND2X0 U833 ( .IN1(n716), .IN2(n611), .QN(n261) );
  MUX21X1 U834 ( .IN1(n729), .IN2(n175), .S(n612), .Q(n716) );
  NAND2X0 U835 ( .IN1(n717), .IN2(n611), .QN(n260) );
  MUX21X1 U836 ( .IN1(n728), .IN2(n176), .S(n612), .Q(n717) );
  NAND2X0 U837 ( .IN1(n718), .IN2(n611), .QN(n259) );
  MUX21X1 U838 ( .IN1(n727), .IN2(n177), .S(n612), .Q(n718) );
  NAND2X0 U839 ( .IN1(n719), .IN2(n611), .QN(n258) );
  MUX21X1 U840 ( .IN1(n726), .IN2(n178), .S(n612), .Q(n719) );
  NAND2X0 U841 ( .IN1(n720), .IN2(n611), .QN(n257) );
  MUX21X1 U842 ( .IN1(n725), .IN2(n179), .S(n612), .Q(n720) );
  NAND2X0 U843 ( .IN1(n721), .IN2(n611), .QN(n256) );
  MUX21X1 U844 ( .IN1(n724), .IN2(n180), .S(n612), .Q(n721) );
  NAND2X0 U845 ( .IN1(n253), .IN2(n579), .QN(n571) );
  INVX0 U846 ( .INP(n530), .ZN(n579) );
  NAND2X0 U847 ( .IN1(n600), .IN2(n684), .QN(n253) );
  NOR2X0 U848 ( .IN1(n1), .IN2(state[2]), .QN(n684) );
  NOR2X0 U849 ( .IN1(n722), .IN2(state[1]), .QN(n600) );
  NAND2X0 U850 ( .IN1(nrst), .IN2(n232), .QN(n550) );
  NAND2X0 U851 ( .IN1(n595), .IN2(n587), .QN(n232) );
  NOR2X0 U852 ( .IN1(n722), .IN2(n685), .QN(n587) );
  NOR2X0 U853 ( .IN1(n1), .IN2(n4), .QN(n595) );
  NAND2X0 U854 ( .IN1(n757), .IN2(n723), .QN(N419) );
  NAND2X0 U855 ( .IN1(n758), .IN2(n723), .QN(N413) );
  INVX0 U856 ( .INP(N406), .ZN(n723) );
  NOR2X0 U857 ( .IN1(n62), .IN2(N406), .QN(N418) );
  NOR2X0 U858 ( .IN1(n61), .IN2(N406), .QN(N1276) );
  NOR2X0 U859 ( .IN1(n60), .IN2(N406), .QN(N1272) );
  NOR2X0 U860 ( .IN1(n59), .IN2(N406), .QN(N1270) );
  NOR2X0 U861 ( .IN1(n58), .IN2(N406), .QN(N1268) );
  NOR2X0 U862 ( .IN1(n57), .IN2(N406), .QN(N1266) );
  NOR2X0 U863 ( .IN1(n56), .IN2(N406), .QN(N1264) );
  NOR2X0 U864 ( .IN1(n55), .IN2(N406), .QN(N1262) );
endmodule


module randomGenerator ( clock, nrst, rng_out, rng_out_4bit, en_rng, done );
  output [15:0] rng_out;
  output [15:0] rng_out_4bit;
  input clock, nrst, en_rng;
  output done;
  wire   N41, N42, n3, n5, n6, n7, n8, n9, n10, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n1, n2, n4;
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

  AO22X1 U11 ( .IN1(rng_out[15]), .IN2(n2), .IN3(rng_out[14]), .IN4(n5), .Q(
        n16) );
  AO22X1 U12 ( .IN1(n2), .IN2(rng_out[14]), .IN3(rng_out[13]), .IN4(n5), .Q(
        n17) );
  AO22X1 U13 ( .IN1(rng_out[13]), .IN2(n2), .IN3(rng_out[12]), .IN4(n5), .Q(
        n18) );
  AO22X1 U14 ( .IN1(rng_out[12]), .IN2(n2), .IN3(rng_out[11]), .IN4(n5), .Q(
        n19) );
  AO22X1 U15 ( .IN1(rng_out[11]), .IN2(n2), .IN3(rng_out[10]), .IN4(n5), .Q(
        n20) );
  AO22X1 U16 ( .IN1(rng_out[10]), .IN2(n2), .IN3(rng_out[9]), .IN4(n5), .Q(n21) );
  AO22X1 U17 ( .IN1(rng_out[9]), .IN2(n2), .IN3(rng_out[8]), .IN4(n5), .Q(n22)
         );
  AO22X1 U18 ( .IN1(rng_out[8]), .IN2(n2), .IN3(rng_out[7]), .IN4(n5), .Q(n23)
         );
  AO22X1 U19 ( .IN1(rng_out[7]), .IN2(n2), .IN3(rng_out[6]), .IN4(n5), .Q(n24)
         );
  AO22X1 U20 ( .IN1(rng_out[6]), .IN2(n2), .IN3(rng_out[5]), .IN4(n5), .Q(n25)
         );
  AO22X1 U21 ( .IN1(rng_out[5]), .IN2(n2), .IN3(rng_out[4]), .IN4(n5), .Q(n26)
         );
  AO22X1 U22 ( .IN1(rng_out[4]), .IN2(n2), .IN3(rng_out[3]), .IN4(n5), .Q(n27)
         );
  AO22X1 U23 ( .IN1(rng_out[3]), .IN2(n2), .IN3(rng_out[2]), .IN4(n5), .Q(n28)
         );
  AO22X1 U24 ( .IN1(rng_out[2]), .IN2(n2), .IN3(n6), .IN4(n7), .Q(n29) );
  OR2X1 U25 ( .IN1(n1), .IN2(rng_out[1]), .Q(n6) );
  AO22X1 U26 ( .IN1(rng_out[1]), .IN2(n2), .IN3(rng_out[0]), .IN4(n5), .Q(n30)
         );
  AO22X1 U27 ( .IN1(rng_out[0]), .IN2(n2), .IN3(n8), .IN4(n7), .Q(n31) );
  XOR3X1 U28 ( .IN1(rng_out[14]), .IN2(rng_out[12]), .IN3(n10), .Q(n9) );
  XOR2X1 U29 ( .IN1(rng_out[3]), .IN2(rng_out[15]), .Q(n10) );
  AO21X1 U30 ( .IN1(state[0]), .IN2(n4), .IN3(n1), .Q(n7) );
  AO22X1 U31 ( .IN1(done), .IN2(n12), .IN3(n13), .IN4(state[1]), .Q(n32) );
  AND2X1 U32 ( .IN1(nrst), .IN2(n14), .Q(n12) );
  OR2X1 U34 ( .IN1(state[1]), .IN2(en_rng), .Q(n15) );
  AND3X1 U35 ( .IN1(state[0]), .IN2(n4), .IN3(nrst), .Q(N42) );
  AND4X1 U36 ( .IN1(n3), .IN2(n4), .IN3(nrst), .IN4(en_rng), .Q(N41) );
  DFFX1 \state_reg[1]  ( .D(N42), .CLK(clock), .Q(state[1]), .QN(n4) );
  DFFX1 done_buf_reg ( .D(n32), .CLK(clock), .Q(done) );
  DFFX1 \rng_out_buf_reg[2]  ( .D(n29), .CLK(clock), .Q(rng_out[2]) );
  DFFX1 \rng_out_buf_reg[0]  ( .D(n31), .CLK(clock), .Q(rng_out[0]) );
  DFFX1 \rng_out_buf_reg[15]  ( .D(n16), .CLK(clock), .Q(rng_out[15]) );
  DFFX1 \rng_out_buf_reg[13]  ( .D(n18), .CLK(clock), .Q(rng_out[13]) );
  DFFX1 \rng_out_buf_reg[12]  ( .D(n19), .CLK(clock), .Q(rng_out[12]) );
  DFFX1 \rng_out_buf_reg[11]  ( .D(n20), .CLK(clock), .Q(rng_out[11]) );
  DFFX1 \rng_out_buf_reg[10]  ( .D(n21), .CLK(clock), .Q(rng_out[10]) );
  DFFX1 \rng_out_buf_reg[9]  ( .D(n22), .CLK(clock), .Q(rng_out[9]) );
  DFFX1 \rng_out_buf_reg[8]  ( .D(n23), .CLK(clock), .Q(rng_out[8]) );
  DFFX1 \rng_out_buf_reg[7]  ( .D(n24), .CLK(clock), .Q(rng_out[7]) );
  DFFX1 \rng_out_buf_reg[6]  ( .D(n25), .CLK(clock), .Q(rng_out[6]) );
  DFFX1 \rng_out_buf_reg[5]  ( .D(n26), .CLK(clock), .Q(rng_out[5]) );
  DFFX1 \rng_out_buf_reg[4]  ( .D(n27), .CLK(clock), .Q(rng_out[4]) );
  DFFX1 \rng_out_buf_reg[3]  ( .D(n28), .CLK(clock), .Q(rng_out[3]) );
  DFFX1 \rng_out_buf_reg[1]  ( .D(n30), .CLK(clock), .Q(rng_out[1]) );
  DFFX1 \rng_out_buf_reg[14]  ( .D(n17), .CLK(clock), .Q(rng_out[14]) );
  DFFX1 \state_reg[0]  ( .D(N41), .CLK(clock), .Q(state[0]), .QN(n3) );
  INVX0 U3 ( .INP(nrst), .ZN(n1) );
  NOR2X0 U4 ( .IN1(n1), .IN2(n2), .QN(n5) );
  INVX0 U5 ( .INP(n7), .ZN(n2) );
  NAND2X1 U6 ( .IN1(nrst), .IN2(n9), .QN(n8) );
  NOR2X0 U7 ( .IN1(n12), .IN2(n1), .QN(n13) );
  NAND2X1 U8 ( .IN1(n3), .IN2(n15), .QN(n14) );
endmodule


module rngAddress_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17;
  wire   [16:0] carry;

  FADDX1 U2_14 ( .A(A[14]), .B(n16), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  FADDX1 U2_13 ( .A(A[13]), .B(n15), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  FADDX1 U2_12 ( .A(A[12]), .B(n14), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  FADDX1 U2_11 ( .A(A[11]), .B(n13), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  FADDX1 U2_10 ( .A(A[10]), .B(n12), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FADDX1 U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FADDX1 U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  FADDX1 U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FADDX1 U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FADDX1 U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FADDX1 U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FADDX1 U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FADDX1 U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FADDX1 U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  XOR3X1 U2_15 ( .IN1(A[15]), .IN2(n17), .IN3(carry[15]), .Q(DIFF[15]) );
  INVX0 U1 ( .INP(B[15]), .ZN(n17) );
  INVX0 U2 ( .INP(B[2]), .ZN(n4) );
  INVX0 U3 ( .INP(B[4]), .ZN(n6) );
  INVX0 U4 ( .INP(B[8]), .ZN(n10) );
  INVX0 U5 ( .INP(B[5]), .ZN(n7) );
  INVX0 U6 ( .INP(B[6]), .ZN(n8) );
  INVX0 U7 ( .INP(B[3]), .ZN(n5) );
  INVX0 U8 ( .INP(B[7]), .ZN(n9) );
  INVX0 U9 ( .INP(B[9]), .ZN(n11) );
  INVX0 U10 ( .INP(B[1]), .ZN(n3) );
  NAND2X1 U11 ( .IN1(B[0]), .IN2(n1), .QN(carry[1]) );
  INVX0 U12 ( .INP(B[12]), .ZN(n14) );
  INVX0 U13 ( .INP(B[10]), .ZN(n12) );
  INVX0 U14 ( .INP(B[11]), .ZN(n13) );
  INVX0 U15 ( .INP(B[13]), .ZN(n15) );
  INVX0 U16 ( .INP(B[14]), .ZN(n16) );
  INVX0 U17 ( .INP(A[0]), .ZN(n1) );
  INVX0 U18 ( .INP(B[0]), .ZN(n2) );
  XOR2X1 U19 ( .IN1(n1), .IN2(n2), .Q(DIFF[0]) );
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
         n37, n38, n39, n40, n41, n2, n3, n4, n5, n6, n8, n9, n10, n12, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68;
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
  AO22X1 U32 ( .IN1(nrst), .IN2(n16), .IN3(done_rng_address), .IN4(n67), .Q(
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
  DFFX1 \state_reg[1]  ( .D(n39), .CLK(clock), .Q(state[1]) );
  DFFX1 done_rng_address_buf_reg ( .D(n38), .CLK(clock), .Q(done_rng_address)
         );
  DFFX1 \rng_address_buf_reg[15]  ( .D(n40), .CLK(clock), .Q(rng_address[15])
         );
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
        .QN(n52) );
  DFFX1 \rng_address_buf_reg[1]  ( .D(n37), .CLK(clock), .Q(rng_address[1]), 
        .QN(n51) );
  DFFX1 \rng_address_buf_reg[0]  ( .D(n41), .CLK(clock), .Q(rng_address[0]) );
  INVX0 U4 ( .INP(nrst), .ZN(n2) );
  NOR2X0 U5 ( .IN1(n2), .IN2(n15), .QN(n22) );
  NOR2X0 U6 ( .IN1(n18), .IN2(n2), .QN(n15) );
  AND2X1 U8 ( .IN1(n22), .IN2(n23), .Q(n14) );
  AND2X1 U9 ( .IN1(n22), .IN2(n21), .Q(n13) );
  NOR2X0 U10 ( .IN1(n19), .IN2(n2), .QN(n39) );
  NOR2X0 U11 ( .IN1(n20), .IN2(state[1]), .QN(n19) );
  NOR2X0 U12 ( .IN1(N21), .IN2(n68), .QN(n20) );
  INVX0 U13 ( .INP(n21), .ZN(n68) );
  INVX0 U14 ( .INP(n16), .ZN(n67) );
  NAND2X1 U15 ( .IN1(nrst), .IN2(n17), .QN(n16) );
  NAND2X1 U16 ( .IN1(n11), .IN2(state[1]), .QN(n17) );
  INVX0 U17 ( .INP(betterNeighborCount[15]), .ZN(n53) );
  INVX0 U33 ( .INP(betterNeighborCount[4]), .ZN(n64) );
  INVX0 U34 ( .INP(betterNeighborCount[7]), .ZN(n61) );
  INVX0 U37 ( .INP(betterNeighborCount[10]), .ZN(n58) );
  INVX0 U38 ( .INP(betterNeighborCount[13]), .ZN(n55) );
  INVX0 U39 ( .INP(betterNeighborCount[3]), .ZN(n65) );
  INVX0 U41 ( .INP(betterNeighborCount[5]), .ZN(n63) );
  INVX0 U42 ( .INP(betterNeighborCount[11]), .ZN(n57) );
  INVX0 U43 ( .INP(betterNeighborCount[9]), .ZN(n59) );
  INVX0 U44 ( .INP(betterNeighborCount[6]), .ZN(n62) );
  INVX0 U45 ( .INP(betterNeighborCount[8]), .ZN(n60) );
  INVX0 U46 ( .INP(betterNeighborCount[2]), .ZN(n66) );
  NOR2X0 U47 ( .IN1(n11), .IN2(state[1]), .QN(n21) );
  NOR2X0 U48 ( .IN1(state[0]), .IN2(state[1]), .QN(n23) );
  INVX0 U49 ( .INP(betterNeighborCount[12]), .ZN(n56) );
  INVX0 U50 ( .INP(betterNeighborCount[14]), .ZN(n54) );
  AND2X1 U51 ( .IN1(n54), .IN2(rng_address[14]), .Q(n49) );
  NOR2X0 U52 ( .IN1(betterNeighborCount[1]), .IN2(n51), .QN(n3) );
  NOR2X0 U53 ( .IN1(rng_address[0]), .IN2(n3), .QN(n4) );
  AOI222X1 U54 ( .IN1(betterNeighborCount[2]), .IN2(n52), .IN3(n4), .IN4(
        betterNeighborCount[0]), .IN5(betterNeighborCount[1]), .IN6(n51), .QN(
        n5) );
  AO221X1 U55 ( .IN1(rng_address[2]), .IN2(n66), .IN3(rng_address[3]), .IN4(
        n65), .IN5(n5), .Q(n6) );
  OA221X1 U56 ( .IN1(rng_address[4]), .IN2(n64), .IN3(rng_address[3]), .IN4(
        n65), .IN5(n6), .Q(n8) );
  AO221X1 U57 ( .IN1(rng_address[4]), .IN2(n64), .IN3(rng_address[5]), .IN4(
        n63), .IN5(n8), .Q(n9) );
  OA221X1 U58 ( .IN1(rng_address[6]), .IN2(n62), .IN3(rng_address[5]), .IN4(
        n63), .IN5(n9), .Q(n10) );
  AO221X1 U59 ( .IN1(rng_address[6]), .IN2(n62), .IN3(rng_address[7]), .IN4(
        n61), .IN5(n10), .Q(n12) );
  OA221X1 U60 ( .IN1(rng_address[8]), .IN2(n60), .IN3(rng_address[7]), .IN4(
        n61), .IN5(n12), .Q(n42) );
  AO221X1 U61 ( .IN1(rng_address[8]), .IN2(n60), .IN3(rng_address[9]), .IN4(
        n59), .IN5(n42), .Q(n43) );
  OA221X1 U62 ( .IN1(rng_address[9]), .IN2(n59), .IN3(rng_address[10]), .IN4(
        n58), .IN5(n43), .Q(n44) );
  AO221X1 U63 ( .IN1(rng_address[10]), .IN2(n58), .IN3(rng_address[11]), .IN4(
        n57), .IN5(n44), .Q(n45) );
  OA221X1 U64 ( .IN1(rng_address[12]), .IN2(n56), .IN3(rng_address[11]), .IN4(
        n57), .IN5(n45), .Q(n46) );
  AO221X1 U65 ( .IN1(rng_address[12]), .IN2(n56), .IN3(rng_address[13]), .IN4(
        n55), .IN5(n46), .Q(n47) );
  OA221X1 U66 ( .IN1(rng_address[14]), .IN2(n54), .IN3(rng_address[13]), .IN4(
        n55), .IN5(n47), .Q(n48) );
  OA22X1 U67 ( .IN1(rng_address[15]), .IN2(n53), .IN3(n49), .IN4(n48), .Q(n50)
         );
  AO21X1 U68 ( .IN1(rng_address[15]), .IN2(n53), .IN3(n50), .Q(N21) );
endmodule


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
  INVX0 U1 ( .INP(B[15]), .ZN(n2) );
  INVX0 U2 ( .INP(B[1]), .ZN(n16) );
  NAND2X1 U3 ( .IN1(B[0]), .IN2(n1), .QN(carry[1]) );
  INVX0 U4 ( .INP(B[2]), .ZN(n15) );
  INVX0 U5 ( .INP(B[3]), .ZN(n14) );
  INVX0 U6 ( .INP(B[4]), .ZN(n13) );
  INVX0 U7 ( .INP(B[5]), .ZN(n12) );
  INVX0 U8 ( .INP(B[6]), .ZN(n11) );
  INVX0 U9 ( .INP(B[7]), .ZN(n10) );
  INVX0 U10 ( .INP(B[8]), .ZN(n9) );
  INVX0 U11 ( .INP(B[9]), .ZN(n8) );
  INVX0 U12 ( .INP(B[10]), .ZN(n7) );
  INVX0 U13 ( .INP(B[11]), .ZN(n6) );
  INVX0 U14 ( .INP(B[12]), .ZN(n5) );
  INVX0 U15 ( .INP(B[13]), .ZN(n4) );
  INVX0 U16 ( .INP(B[14]), .ZN(n3) );
  INVX0 U17 ( .INP(A[0]), .ZN(n1) );
  INVX0 U18 ( .INP(B[0]), .ZN(n17) );
  XOR2X1 U19 ( .IN1(n1), .IN2(n17), .Q(DIFF[0]) );
endmodule


module winnerPolicy_DW02_mult_1 ( A, B, TC, PRODUCT );
  input [15:0] A;
  input [15:0] B;
  output [31:0] PRODUCT;
  input TC;
  wire   \ab[15][5] , \ab[14][5] , \ab[13][5] , \ab[12][5] , \ab[11][5] ,
         \ab[10][5] , \CARRYB[15][5] , \CARRYB[14][5] , \CARRYB[13][5] ,
         \CARRYB[12][5] , \CARRYB[11][5] , n3, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29;
  assign \ab[15][5]  = A[15];
  assign \ab[14][5]  = A[14];
  assign \ab[13][5]  = A[13];
  assign \ab[12][5]  = A[12];
  assign \ab[11][5]  = A[11];
  assign \ab[10][5]  = A[10];

  FADDX1 S4_5 ( .A(\ab[15][5] ), .B(\CARRYB[14][5] ), .CI(A[5]), .CO(
        \CARRYB[15][5] ), .S(PRODUCT[20]) );
  FADDX1 S2_14_5 ( .A(\ab[14][5] ), .B(\CARRYB[13][5] ), .CI(A[4]), .CO(
        \CARRYB[14][5] ), .S(PRODUCT[19]) );
  FADDX1 S2_13_5 ( .A(\ab[13][5] ), .B(\CARRYB[12][5] ), .CI(A[3]), .CO(
        \CARRYB[13][5] ), .S(PRODUCT[18]) );
  FADDX1 S2_12_5 ( .A(\ab[12][5] ), .B(\CARRYB[11][5] ), .CI(A[2]), .CO(
        \CARRYB[12][5] ), .S(PRODUCT[17]) );
  FADDX1 S2_11_5 ( .A(\ab[11][5] ), .B(n6), .CI(A[1]), .CO(\CARRYB[11][5] ), 
        .S(PRODUCT[16]) );
  OR2X1 U2 ( .IN1(n7), .IN2(A[7]), .Q(n3) );
  AND2X1 U3 ( .IN1(n22), .IN2(\ab[15][5] ), .Q(PRODUCT[31]) );
  NAND2X1 U4 ( .IN1(n29), .IN2(\ab[13][5] ), .QN(n21) );
  INVX0 U5 ( .INP(n20), .ZN(n29) );
  NAND2X1 U6 ( .IN1(n28), .IN2(\ab[12][5] ), .QN(n20) );
  INVX0 U7 ( .INP(n19), .ZN(n28) );
  NAND2X1 U8 ( .IN1(n26), .IN2(n10), .QN(n18) );
  INVX0 U9 ( .INP(n17), .ZN(n26) );
  NAND2X1 U10 ( .IN1(n27), .IN2(\ab[11][5] ), .QN(n19) );
  INVX0 U11 ( .INP(n18), .ZN(n27) );
  INVX0 U12 ( .INP(n11), .ZN(n10) );
  NAND2X1 U13 ( .IN1(n24), .IN2(A[8]), .QN(n16) );
  INVX0 U14 ( .INP(n15), .ZN(n24) );
  NAND2X1 U15 ( .IN1(n25), .IN2(A[9]), .QN(n17) );
  INVX0 U16 ( .INP(n16), .ZN(n25) );
  INVX0 U17 ( .INP(\ab[10][5] ), .ZN(n11) );
  INVX0 U18 ( .INP(\ab[11][5] ), .ZN(n12) );
  INVX0 U19 ( .INP(\ab[12][5] ), .ZN(n13) );
  INVX0 U20 ( .INP(\ab[13][5] ), .ZN(n14) );
  AND2X1 U21 ( .IN1(n3), .IN2(n15), .Q(PRODUCT[22]) );
  NOR2X0 U22 ( .IN1(n21), .IN2(n23), .QN(n22) );
  INVX0 U23 ( .INP(A[8]), .ZN(n8) );
  INVX0 U24 ( .INP(A[9]), .ZN(n9) );
  AND2X1 U25 ( .IN1(n10), .IN2(A[0]), .Q(n6) );
  AND2X1 U26 ( .IN1(A[6]), .IN2(\CARRYB[15][5] ), .Q(n7) );
  INVX0 U27 ( .INP(\ab[14][5] ), .ZN(n23) );
  XOR2X1 U28 ( .IN1(\CARRYB[15][5] ), .IN2(A[6]), .Q(PRODUCT[21]) );
  XOR2X1 U29 ( .IN1(A[0]), .IN2(n10), .Q(PRODUCT[15]) );
  NAND2X0 U30 ( .IN1(n7), .IN2(A[7]), .QN(n15) );
  XOR2X1 U31 ( .IN1(n8), .IN2(n15), .Q(PRODUCT[23]) );
  XOR2X1 U32 ( .IN1(n9), .IN2(n16), .Q(PRODUCT[24]) );
  XOR2X1 U33 ( .IN1(n11), .IN2(n17), .Q(PRODUCT[25]) );
  XOR2X1 U34 ( .IN1(n12), .IN2(n18), .Q(PRODUCT[26]) );
  XOR2X1 U35 ( .IN1(n13), .IN2(n19), .Q(PRODUCT[27]) );
  XOR2X1 U36 ( .IN1(n14), .IN2(n20), .Q(PRODUCT[28]) );
  XOR2X1 U37 ( .IN1(n23), .IN2(n21), .Q(PRODUCT[29]) );
  XOR2X1 U38 ( .IN1(\ab[15][5] ), .IN2(n22), .Q(PRODUCT[30]) );
endmodule


module winnerPolicy_DW01_add_2 ( A, B, CI, SUM, CO );
  input [29:0] A;
  input [29:0] B;
  output [29:0] SUM;
  input CI;
  output CO;
  wire   \A[14] , \A[13] , \A[12] , \A[11] , \A[10] , \A[9] , \A[8] , \A[7] ,
         \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , n1, n2, n4,
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

  OR2X1 U2 ( .IN1(B[16]), .IN2(A[16]), .Q(n1) );
  NAND2X1 U3 ( .IN1(n10), .IN2(A[21]), .QN(n37) );
  INVX0 U4 ( .INP(n41), .ZN(n10) );
  XOR2X1 U5 ( .IN1(B[29]), .IN2(n2), .Q(SUM[29]) );
  AO22X1 U6 ( .IN1(n15), .IN2(B[28]), .IN3(n16), .IN4(A[28]), .Q(n2) );
  INVX0 U7 ( .INP(n18), .ZN(n4) );
  INVX0 U8 ( .INP(n22), .ZN(n5) );
  INVX0 U9 ( .INP(n26), .ZN(n6) );
  INVX0 U10 ( .INP(n30), .ZN(n7) );
  INVX0 U11 ( .INP(n34), .ZN(n8) );
  INVX0 U12 ( .INP(n38), .ZN(n9) );
  XNOR2X1 U13 ( .IN1(A[21]), .IN2(n41), .Q(SUM[21]) );
  INVX0 U14 ( .INP(n43), .ZN(n11) );
  INVX0 U15 ( .INP(n47), .ZN(n12) );
  INVX0 U16 ( .INP(n51), .ZN(n13) );
  INVX0 U17 ( .INP(n55), .ZN(n14) );
  AND2X1 U18 ( .IN1(n1), .IN2(n54), .Q(SUM[16]) );
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
  wire   \ab[15][9] , \ab[14][9] , \ab[13][9] , \ab[12][9] , \ab[11][9] ,
         \ab[10][9] , \ab[9][9] , \ab[8][9] , \ab[7][9] , \ab[6][9] ,
         \ab[5][9] , \ab[4][9] , \ab[3][9] , \ab[2][9] , \ab[1][9] ,
         \ab[0][9] , \CARRYB[15][14] , \CARRYB[15][13] , \CARRYB[15][12] ,
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
         \CARRYB[1][13] , \CARRYB[1][11] , \CARRYB[1][10] , \CARRYB[1][7] ,
         \CARRYB[1][3] , \SUMB[15][14] , \SUMB[15][13] , \SUMB[15][12] ,
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
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;
  assign \ab[15][9]  = A[15];
  assign \ab[14][9]  = A[14];
  assign \ab[13][9]  = A[13];
  assign \ab[12][9]  = A[12];
  assign \ab[11][9]  = A[11];
  assign \ab[10][9]  = A[10];
  assign \ab[9][9]  = A[9];
  assign \ab[8][9]  = A[8];
  assign \ab[7][9]  = A[7];
  assign \ab[6][9]  = A[6];
  assign \ab[5][9]  = A[5];
  assign \ab[4][9]  = A[4];
  assign \ab[3][9]  = A[3];
  assign \ab[2][9]  = A[2];
  assign \ab[1][9]  = A[1];
  assign \ab[0][9]  = A[0];

  FADDX1 S4_1 ( .A(\ab[15][9] ), .B(\CARRYB[14][1] ), .CI(\SUMB[14][2] ), .CO(
        \CARRYB[15][1] ), .S(\SUMB[15][1] ) );
  FADDX1 S4_2 ( .A(\ab[15][9] ), .B(\CARRYB[14][2] ), .CI(\SUMB[14][3] ), .CO(
        \CARRYB[15][2] ), .S(\SUMB[15][2] ) );
  FADDX1 S4_3 ( .A(\ab[15][9] ), .B(\CARRYB[14][3] ), .CI(\SUMB[14][4] ), .CO(
        \CARRYB[15][3] ), .S(\SUMB[15][3] ) );
  FADDX1 S4_4 ( .A(\ab[15][9] ), .B(\CARRYB[14][4] ), .CI(\SUMB[14][5] ), .CO(
        \CARRYB[15][4] ), .S(\SUMB[15][4] ) );
  FADDX1 S4_5 ( .A(\ab[15][9] ), .B(\CARRYB[14][5] ), .CI(\SUMB[13][7] ), .CO(
        \CARRYB[15][5] ), .S(\SUMB[15][5] ) );
  FADDX1 S4_7 ( .A(\ab[15][9] ), .B(\CARRYB[14][7] ), .CI(\SUMB[14][8] ), .CO(
        \CARRYB[15][7] ), .S(\SUMB[15][7] ) );
  FADDX1 S4_8 ( .A(\ab[15][9] ), .B(\CARRYB[14][8] ), .CI(\SUMB[14][9] ), .CO(
        \CARRYB[15][8] ), .S(\SUMB[15][8] ) );
  FADDX1 S4_9 ( .A(\ab[15][9] ), .B(\CARRYB[14][9] ), .CI(\SUMB[14][10] ), 
        .CO(\CARRYB[15][9] ), .S(\SUMB[15][9] ) );
  FADDX1 S4_10 ( .A(\ab[15][9] ), .B(\CARRYB[14][10] ), .CI(\SUMB[14][11] ), 
        .CO(\CARRYB[15][10] ), .S(\SUMB[15][10] ) );
  FADDX1 S4_11 ( .A(\ab[15][9] ), .B(\CARRYB[14][11] ), .CI(\SUMB[14][12] ), 
        .CO(\CARRYB[15][11] ), .S(\SUMB[15][11] ) );
  FADDX1 S4_12 ( .A(\ab[15][9] ), .B(\CARRYB[14][12] ), .CI(\SUMB[14][13] ), 
        .CO(\CARRYB[15][12] ), .S(\SUMB[15][12] ) );
  FADDX1 S4_13 ( .A(\ab[15][9] ), .B(\CARRYB[14][13] ), .CI(\SUMB[14][14] ), 
        .CO(\CARRYB[15][13] ), .S(\SUMB[15][13] ) );
  FADDX1 S5_14 ( .A(\ab[15][9] ), .B(\CARRYB[14][14] ), .CI(n39), .CO(
        \CARRYB[15][14] ), .S(\SUMB[15][14] ) );
  FADDX1 S2_14_1 ( .A(n39), .B(\CARRYB[13][1] ), .CI(\SUMB[13][2] ), .CO(
        \CARRYB[14][1] ), .S(\SUMB[14][1] ) );
  FADDX1 S2_14_2 ( .A(n39), .B(\CARRYB[13][2] ), .CI(\SUMB[13][3] ), .CO(
        \CARRYB[14][2] ), .S(\SUMB[14][2] ) );
  FADDX1 S2_14_3 ( .A(n38), .B(\CARRYB[13][3] ), .CI(\SUMB[13][4] ), .CO(
        \CARRYB[14][3] ), .S(\SUMB[14][3] ) );
  FADDX1 S2_14_4 ( .A(n38), .B(\CARRYB[13][4] ), .CI(\SUMB[13][5] ), .CO(
        \CARRYB[14][4] ), .S(\SUMB[14][4] ) );
  FADDX1 S2_14_5 ( .A(n39), .B(\CARRYB[13][5] ), .CI(\SUMB[12][7] ), .CO(
        \CARRYB[14][5] ), .S(\SUMB[14][5] ) );
  FADDX1 S2_14_7 ( .A(n39), .B(\CARRYB[13][7] ), .CI(\SUMB[13][8] ), .CO(
        \CARRYB[14][7] ), .S(\SUMB[14][7] ) );
  FADDX1 S2_14_8 ( .A(n38), .B(\CARRYB[13][8] ), .CI(\SUMB[13][9] ), .CO(
        \CARRYB[14][8] ), .S(\SUMB[14][8] ) );
  FADDX1 S2_14_9 ( .A(n38), .B(\CARRYB[13][9] ), .CI(\SUMB[13][10] ), .CO(
        \CARRYB[14][9] ), .S(\SUMB[14][9] ) );
  FADDX1 S2_14_10 ( .A(n38), .B(\CARRYB[13][10] ), .CI(\SUMB[13][11] ), .CO(
        \CARRYB[14][10] ), .S(\SUMB[14][10] ) );
  FADDX1 S2_14_11 ( .A(n39), .B(\CARRYB[13][11] ), .CI(\SUMB[13][12] ), .CO(
        \CARRYB[14][11] ), .S(\SUMB[14][11] ) );
  FADDX1 S2_14_12 ( .A(n39), .B(\CARRYB[13][12] ), .CI(\SUMB[13][13] ), .CO(
        \CARRYB[14][12] ), .S(\SUMB[14][12] ) );
  FADDX1 S2_14_13 ( .A(n38), .B(\CARRYB[13][13] ), .CI(\SUMB[13][14] ), .CO(
        \CARRYB[14][13] ), .S(\SUMB[14][13] ) );
  FADDX1 S3_14_14 ( .A(n38), .B(\CARRYB[13][14] ), .CI(\ab[13][9] ), .CO(
        \CARRYB[14][14] ), .S(\SUMB[14][14] ) );
  FADDX1 S2_13_1 ( .A(\ab[13][9] ), .B(\CARRYB[12][1] ), .CI(\SUMB[12][2] ), 
        .CO(\CARRYB[13][1] ), .S(\SUMB[13][1] ) );
  FADDX1 S2_13_2 ( .A(\ab[13][9] ), .B(\CARRYB[12][2] ), .CI(\SUMB[12][3] ), 
        .CO(\CARRYB[13][2] ), .S(\SUMB[13][2] ) );
  FADDX1 S2_13_3 ( .A(\ab[13][9] ), .B(\CARRYB[12][3] ), .CI(\SUMB[12][4] ), 
        .CO(\CARRYB[13][3] ), .S(\SUMB[13][3] ) );
  FADDX1 S2_13_4 ( .A(\ab[13][9] ), .B(\CARRYB[12][4] ), .CI(\SUMB[12][5] ), 
        .CO(\CARRYB[13][4] ), .S(\SUMB[13][4] ) );
  FADDX1 S2_13_5 ( .A(\ab[13][9] ), .B(\CARRYB[12][5] ), .CI(\SUMB[11][7] ), 
        .CO(\CARRYB[13][5] ), .S(\SUMB[13][5] ) );
  FADDX1 S2_13_7 ( .A(\ab[13][9] ), .B(\CARRYB[12][7] ), .CI(\SUMB[12][8] ), 
        .CO(\CARRYB[13][7] ), .S(\SUMB[13][7] ) );
  FADDX1 S2_13_8 ( .A(\ab[13][9] ), .B(\CARRYB[12][8] ), .CI(\SUMB[12][9] ), 
        .CO(\CARRYB[13][8] ), .S(\SUMB[13][8] ) );
  FADDX1 S2_13_9 ( .A(\ab[13][9] ), .B(\CARRYB[12][9] ), .CI(\SUMB[12][10] ), 
        .CO(\CARRYB[13][9] ), .S(\SUMB[13][9] ) );
  FADDX1 S2_13_10 ( .A(\ab[13][9] ), .B(\CARRYB[12][10] ), .CI(\SUMB[12][11] ), 
        .CO(\CARRYB[13][10] ), .S(\SUMB[13][10] ) );
  FADDX1 S2_13_11 ( .A(\ab[13][9] ), .B(\CARRYB[12][11] ), .CI(\SUMB[12][12] ), 
        .CO(\CARRYB[13][11] ), .S(\SUMB[13][11] ) );
  FADDX1 S2_13_12 ( .A(\ab[13][9] ), .B(\CARRYB[12][12] ), .CI(\SUMB[12][13] ), 
        .CO(\CARRYB[13][12] ), .S(\SUMB[13][12] ) );
  FADDX1 S2_13_13 ( .A(\ab[13][9] ), .B(\CARRYB[12][13] ), .CI(\SUMB[12][14] ), 
        .CO(\CARRYB[13][13] ), .S(\SUMB[13][13] ) );
  FADDX1 S3_13_14 ( .A(\ab[13][9] ), .B(\CARRYB[12][14] ), .CI(\ab[12][9] ), 
        .CO(\CARRYB[13][14] ), .S(\SUMB[13][14] ) );
  FADDX1 S2_12_1 ( .A(\ab[12][9] ), .B(\CARRYB[11][1] ), .CI(\SUMB[11][2] ), 
        .CO(\CARRYB[12][1] ), .S(\SUMB[12][1] ) );
  FADDX1 S2_12_2 ( .A(\ab[12][9] ), .B(\CARRYB[11][2] ), .CI(\SUMB[11][3] ), 
        .CO(\CARRYB[12][2] ), .S(\SUMB[12][2] ) );
  FADDX1 S2_12_3 ( .A(\ab[12][9] ), .B(\CARRYB[11][3] ), .CI(\SUMB[11][4] ), 
        .CO(\CARRYB[12][3] ), .S(\SUMB[12][3] ) );
  FADDX1 S2_12_4 ( .A(\ab[12][9] ), .B(\CARRYB[11][4] ), .CI(\SUMB[11][5] ), 
        .CO(\CARRYB[12][4] ), .S(\SUMB[12][4] ) );
  FADDX1 S2_12_5 ( .A(\ab[12][9] ), .B(\CARRYB[11][5] ), .CI(\SUMB[10][7] ), 
        .CO(\CARRYB[12][5] ), .S(\SUMB[12][5] ) );
  FADDX1 S2_12_7 ( .A(\ab[12][9] ), .B(\CARRYB[11][7] ), .CI(\SUMB[11][8] ), 
        .CO(\CARRYB[12][7] ), .S(\SUMB[12][7] ) );
  FADDX1 S2_12_8 ( .A(\ab[12][9] ), .B(\CARRYB[11][8] ), .CI(\SUMB[11][9] ), 
        .CO(\CARRYB[12][8] ), .S(\SUMB[12][8] ) );
  FADDX1 S2_12_9 ( .A(\ab[12][9] ), .B(\CARRYB[11][9] ), .CI(\SUMB[11][10] ), 
        .CO(\CARRYB[12][9] ), .S(\SUMB[12][9] ) );
  FADDX1 S2_12_10 ( .A(\ab[12][9] ), .B(\CARRYB[11][10] ), .CI(\SUMB[11][11] ), 
        .CO(\CARRYB[12][10] ), .S(\SUMB[12][10] ) );
  FADDX1 S2_12_11 ( .A(\ab[12][9] ), .B(\CARRYB[11][11] ), .CI(\SUMB[11][12] ), 
        .CO(\CARRYB[12][11] ), .S(\SUMB[12][11] ) );
  FADDX1 S2_12_12 ( .A(\ab[12][9] ), .B(\CARRYB[11][12] ), .CI(\SUMB[11][13] ), 
        .CO(\CARRYB[12][12] ), .S(\SUMB[12][12] ) );
  FADDX1 S2_12_13 ( .A(\ab[12][9] ), .B(\CARRYB[11][13] ), .CI(\SUMB[11][14] ), 
        .CO(\CARRYB[12][13] ), .S(\SUMB[12][13] ) );
  FADDX1 S3_12_14 ( .A(\ab[12][9] ), .B(\CARRYB[11][14] ), .CI(\ab[11][9] ), 
        .CO(\CARRYB[12][14] ), .S(\SUMB[12][14] ) );
  FADDX1 S2_11_1 ( .A(\ab[11][9] ), .B(\CARRYB[10][1] ), .CI(\SUMB[10][2] ), 
        .CO(\CARRYB[11][1] ), .S(\SUMB[11][1] ) );
  FADDX1 S2_11_2 ( .A(\ab[11][9] ), .B(\CARRYB[10][2] ), .CI(\SUMB[10][3] ), 
        .CO(\CARRYB[11][2] ), .S(\SUMB[11][2] ) );
  FADDX1 S2_11_3 ( .A(\ab[11][9] ), .B(\CARRYB[10][3] ), .CI(\SUMB[10][4] ), 
        .CO(\CARRYB[11][3] ), .S(\SUMB[11][3] ) );
  FADDX1 S2_11_4 ( .A(\ab[11][9] ), .B(\CARRYB[10][4] ), .CI(\SUMB[10][5] ), 
        .CO(\CARRYB[11][4] ), .S(\SUMB[11][4] ) );
  FADDX1 S2_11_5 ( .A(\ab[11][9] ), .B(\CARRYB[10][5] ), .CI(\SUMB[9][7] ), 
        .CO(\CARRYB[11][5] ), .S(\SUMB[11][5] ) );
  FADDX1 S2_11_7 ( .A(\ab[11][9] ), .B(\CARRYB[10][7] ), .CI(\SUMB[10][8] ), 
        .CO(\CARRYB[11][7] ), .S(\SUMB[11][7] ) );
  FADDX1 S2_11_8 ( .A(\ab[11][9] ), .B(\CARRYB[10][8] ), .CI(\SUMB[10][9] ), 
        .CO(\CARRYB[11][8] ), .S(\SUMB[11][8] ) );
  FADDX1 S2_11_9 ( .A(\ab[11][9] ), .B(\CARRYB[10][9] ), .CI(\SUMB[10][10] ), 
        .CO(\CARRYB[11][9] ), .S(\SUMB[11][9] ) );
  FADDX1 S2_11_10 ( .A(\ab[11][9] ), .B(\CARRYB[10][10] ), .CI(\SUMB[10][11] ), 
        .CO(\CARRYB[11][10] ), .S(\SUMB[11][10] ) );
  FADDX1 S2_11_11 ( .A(\ab[11][9] ), .B(\CARRYB[10][11] ), .CI(\SUMB[10][12] ), 
        .CO(\CARRYB[11][11] ), .S(\SUMB[11][11] ) );
  FADDX1 S2_11_12 ( .A(\ab[11][9] ), .B(\CARRYB[10][12] ), .CI(\SUMB[10][13] ), 
        .CO(\CARRYB[11][12] ), .S(\SUMB[11][12] ) );
  FADDX1 S2_11_13 ( .A(\ab[11][9] ), .B(\CARRYB[10][13] ), .CI(\SUMB[10][14] ), 
        .CO(\CARRYB[11][13] ), .S(\SUMB[11][13] ) );
  FADDX1 S3_11_14 ( .A(\ab[11][9] ), .B(\CARRYB[10][14] ), .CI(\ab[10][9] ), 
        .CO(\CARRYB[11][14] ), .S(\SUMB[11][14] ) );
  FADDX1 S2_10_1 ( .A(\ab[10][9] ), .B(\CARRYB[9][1] ), .CI(\SUMB[9][2] ), 
        .CO(\CARRYB[10][1] ), .S(\SUMB[10][1] ) );
  FADDX1 S2_10_2 ( .A(\ab[10][9] ), .B(\CARRYB[9][2] ), .CI(\SUMB[9][3] ), 
        .CO(\CARRYB[10][2] ), .S(\SUMB[10][2] ) );
  FADDX1 S2_10_3 ( .A(\ab[10][9] ), .B(\CARRYB[9][3] ), .CI(\SUMB[9][4] ), 
        .CO(\CARRYB[10][3] ), .S(\SUMB[10][3] ) );
  FADDX1 S2_10_4 ( .A(\ab[10][9] ), .B(\CARRYB[9][4] ), .CI(\SUMB[9][5] ), 
        .CO(\CARRYB[10][4] ), .S(\SUMB[10][4] ) );
  FADDX1 S2_10_5 ( .A(\ab[10][9] ), .B(\CARRYB[9][5] ), .CI(\SUMB[8][7] ), 
        .CO(\CARRYB[10][5] ), .S(\SUMB[10][5] ) );
  FADDX1 S2_10_7 ( .A(\ab[10][9] ), .B(\CARRYB[9][7] ), .CI(\SUMB[9][8] ), 
        .CO(\CARRYB[10][7] ), .S(\SUMB[10][7] ) );
  FADDX1 S2_10_8 ( .A(\ab[10][9] ), .B(\CARRYB[9][8] ), .CI(\SUMB[9][9] ), 
        .CO(\CARRYB[10][8] ), .S(\SUMB[10][8] ) );
  FADDX1 S2_10_9 ( .A(\ab[10][9] ), .B(\CARRYB[9][9] ), .CI(\SUMB[9][10] ), 
        .CO(\CARRYB[10][9] ), .S(\SUMB[10][9] ) );
  FADDX1 S2_10_10 ( .A(\ab[10][9] ), .B(\CARRYB[9][10] ), .CI(\SUMB[9][11] ), 
        .CO(\CARRYB[10][10] ), .S(\SUMB[10][10] ) );
  FADDX1 S2_10_11 ( .A(\ab[10][9] ), .B(\CARRYB[9][11] ), .CI(\SUMB[9][12] ), 
        .CO(\CARRYB[10][11] ), .S(\SUMB[10][11] ) );
  FADDX1 S2_10_12 ( .A(\ab[10][9] ), .B(\CARRYB[9][12] ), .CI(\SUMB[9][13] ), 
        .CO(\CARRYB[10][12] ), .S(\SUMB[10][12] ) );
  FADDX1 S2_10_13 ( .A(\ab[10][9] ), .B(\CARRYB[9][13] ), .CI(\SUMB[9][14] ), 
        .CO(\CARRYB[10][13] ), .S(\SUMB[10][13] ) );
  FADDX1 S3_10_14 ( .A(\ab[10][9] ), .B(\CARRYB[9][14] ), .CI(\ab[9][9] ), 
        .CO(\CARRYB[10][14] ), .S(\SUMB[10][14] ) );
  FADDX1 S2_9_1 ( .A(\ab[9][9] ), .B(\CARRYB[8][1] ), .CI(\SUMB[8][2] ), .CO(
        \CARRYB[9][1] ), .S(\SUMB[9][1] ) );
  FADDX1 S2_9_2 ( .A(\ab[9][9] ), .B(\CARRYB[8][2] ), .CI(\SUMB[8][3] ), .CO(
        \CARRYB[9][2] ), .S(\SUMB[9][2] ) );
  FADDX1 S2_9_3 ( .A(\ab[9][9] ), .B(\CARRYB[8][3] ), .CI(\SUMB[8][4] ), .CO(
        \CARRYB[9][3] ), .S(\SUMB[9][3] ) );
  FADDX1 S2_9_4 ( .A(\ab[9][9] ), .B(\CARRYB[8][4] ), .CI(\SUMB[8][5] ), .CO(
        \CARRYB[9][4] ), .S(\SUMB[9][4] ) );
  FADDX1 S2_9_5 ( .A(\ab[9][9] ), .B(\CARRYB[8][5] ), .CI(\SUMB[7][7] ), .CO(
        \CARRYB[9][5] ), .S(\SUMB[9][5] ) );
  FADDX1 S2_9_7 ( .A(\ab[9][9] ), .B(\CARRYB[8][7] ), .CI(\SUMB[8][8] ), .CO(
        \CARRYB[9][7] ), .S(\SUMB[9][7] ) );
  FADDX1 S2_9_8 ( .A(\ab[9][9] ), .B(\CARRYB[8][8] ), .CI(\SUMB[8][9] ), .CO(
        \CARRYB[9][8] ), .S(\SUMB[9][8] ) );
  FADDX1 S2_9_9 ( .A(\ab[9][9] ), .B(\CARRYB[8][9] ), .CI(\SUMB[8][10] ), .CO(
        \CARRYB[9][9] ), .S(\SUMB[9][9] ) );
  FADDX1 S2_9_10 ( .A(\ab[9][9] ), .B(\CARRYB[8][10] ), .CI(\SUMB[8][11] ), 
        .CO(\CARRYB[9][10] ), .S(\SUMB[9][10] ) );
  FADDX1 S2_9_11 ( .A(\ab[9][9] ), .B(\CARRYB[8][11] ), .CI(\SUMB[8][12] ), 
        .CO(\CARRYB[9][11] ), .S(\SUMB[9][11] ) );
  FADDX1 S2_9_12 ( .A(\ab[9][9] ), .B(\CARRYB[8][12] ), .CI(\SUMB[8][13] ), 
        .CO(\CARRYB[9][12] ), .S(\SUMB[9][12] ) );
  FADDX1 S2_9_13 ( .A(\ab[9][9] ), .B(\CARRYB[8][13] ), .CI(\SUMB[8][14] ), 
        .CO(\CARRYB[9][13] ), .S(\SUMB[9][13] ) );
  FADDX1 S3_9_14 ( .A(\ab[9][9] ), .B(\CARRYB[8][14] ), .CI(\ab[8][9] ), .CO(
        \CARRYB[9][14] ), .S(\SUMB[9][14] ) );
  FADDX1 S2_8_1 ( .A(\ab[8][9] ), .B(\CARRYB[7][1] ), .CI(\SUMB[7][2] ), .CO(
        \CARRYB[8][1] ), .S(\SUMB[8][1] ) );
  FADDX1 S2_8_2 ( .A(\ab[8][9] ), .B(\CARRYB[7][2] ), .CI(\SUMB[7][3] ), .CO(
        \CARRYB[8][2] ), .S(\SUMB[8][2] ) );
  FADDX1 S2_8_3 ( .A(\ab[8][9] ), .B(\CARRYB[7][3] ), .CI(\SUMB[7][4] ), .CO(
        \CARRYB[8][3] ), .S(\SUMB[8][3] ) );
  FADDX1 S2_8_4 ( .A(\ab[8][9] ), .B(\CARRYB[7][4] ), .CI(\SUMB[7][5] ), .CO(
        \CARRYB[8][4] ), .S(\SUMB[8][4] ) );
  FADDX1 S2_8_5 ( .A(\ab[8][9] ), .B(\CARRYB[7][5] ), .CI(\SUMB[6][7] ), .CO(
        \CARRYB[8][5] ), .S(\SUMB[8][5] ) );
  FADDX1 S2_8_7 ( .A(\ab[8][9] ), .B(\CARRYB[7][7] ), .CI(\SUMB[7][8] ), .CO(
        \CARRYB[8][7] ), .S(\SUMB[8][7] ) );
  FADDX1 S2_8_8 ( .A(\ab[8][9] ), .B(\CARRYB[7][8] ), .CI(\SUMB[7][9] ), .CO(
        \CARRYB[8][8] ), .S(\SUMB[8][8] ) );
  FADDX1 S2_8_9 ( .A(\ab[8][9] ), .B(\CARRYB[7][9] ), .CI(\SUMB[7][10] ), .CO(
        \CARRYB[8][9] ), .S(\SUMB[8][9] ) );
  FADDX1 S2_8_10 ( .A(\ab[8][9] ), .B(\CARRYB[7][10] ), .CI(\SUMB[7][11] ), 
        .CO(\CARRYB[8][10] ), .S(\SUMB[8][10] ) );
  FADDX1 S2_8_11 ( .A(\ab[8][9] ), .B(\CARRYB[7][11] ), .CI(\SUMB[7][12] ), 
        .CO(\CARRYB[8][11] ), .S(\SUMB[8][11] ) );
  FADDX1 S2_8_12 ( .A(\ab[8][9] ), .B(\CARRYB[7][12] ), .CI(\SUMB[7][13] ), 
        .CO(\CARRYB[8][12] ), .S(\SUMB[8][12] ) );
  FADDX1 S2_8_13 ( .A(\ab[8][9] ), .B(\CARRYB[7][13] ), .CI(\SUMB[7][14] ), 
        .CO(\CARRYB[8][13] ), .S(\SUMB[8][13] ) );
  FADDX1 S3_8_14 ( .A(\ab[8][9] ), .B(\CARRYB[7][14] ), .CI(\ab[7][9] ), .CO(
        \CARRYB[8][14] ), .S(\SUMB[8][14] ) );
  FADDX1 S2_7_1 ( .A(\ab[7][9] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  FADDX1 S2_7_2 ( .A(\ab[7][9] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  FADDX1 S2_7_3 ( .A(\ab[7][9] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  FADDX1 S2_7_4 ( .A(\ab[7][9] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  FADDX1 S2_7_5 ( .A(\ab[7][9] ), .B(\CARRYB[6][5] ), .CI(\SUMB[5][7] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  FADDX1 S2_7_7 ( .A(\ab[7][9] ), .B(\CARRYB[6][7] ), .CI(\SUMB[6][8] ), .CO(
        \CARRYB[7][7] ), .S(\SUMB[7][7] ) );
  FADDX1 S2_7_8 ( .A(\ab[7][9] ), .B(\CARRYB[6][8] ), .CI(\SUMB[6][9] ), .CO(
        \CARRYB[7][8] ), .S(\SUMB[7][8] ) );
  FADDX1 S2_7_9 ( .A(\ab[7][9] ), .B(\CARRYB[6][9] ), .CI(\SUMB[6][10] ), .CO(
        \CARRYB[7][9] ), .S(\SUMB[7][9] ) );
  FADDX1 S2_7_10 ( .A(\ab[7][9] ), .B(\CARRYB[6][10] ), .CI(\SUMB[6][11] ), 
        .CO(\CARRYB[7][10] ), .S(\SUMB[7][10] ) );
  FADDX1 S2_7_11 ( .A(\ab[7][9] ), .B(\CARRYB[6][11] ), .CI(\SUMB[6][12] ), 
        .CO(\CARRYB[7][11] ), .S(\SUMB[7][11] ) );
  FADDX1 S2_7_12 ( .A(\ab[7][9] ), .B(\CARRYB[6][12] ), .CI(\SUMB[6][13] ), 
        .CO(\CARRYB[7][12] ), .S(\SUMB[7][12] ) );
  FADDX1 S2_7_13 ( .A(\ab[7][9] ), .B(\CARRYB[6][13] ), .CI(\SUMB[6][14] ), 
        .CO(\CARRYB[7][13] ), .S(\SUMB[7][13] ) );
  FADDX1 S3_7_14 ( .A(\ab[7][9] ), .B(\CARRYB[6][14] ), .CI(n37), .CO(
        \CARRYB[7][14] ), .S(\SUMB[7][14] ) );
  FADDX1 S2_6_1 ( .A(n37), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  FADDX1 S2_6_2 ( .A(n37), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  FADDX1 S2_6_3 ( .A(n36), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  FADDX1 S2_6_4 ( .A(n36), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  FADDX1 S2_6_5 ( .A(n37), .B(\CARRYB[5][5] ), .CI(\SUMB[4][7] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  FADDX1 S2_6_7 ( .A(n37), .B(\CARRYB[5][7] ), .CI(\SUMB[5][8] ), .CO(
        \CARRYB[6][7] ), .S(\SUMB[6][7] ) );
  FADDX1 S2_6_8 ( .A(n36), .B(\CARRYB[5][8] ), .CI(\SUMB[5][9] ), .CO(
        \CARRYB[6][8] ), .S(\SUMB[6][8] ) );
  FADDX1 S2_6_9 ( .A(n36), .B(\CARRYB[5][9] ), .CI(\SUMB[5][10] ), .CO(
        \CARRYB[6][9] ), .S(\SUMB[6][9] ) );
  FADDX1 S2_6_10 ( .A(n36), .B(\CARRYB[5][10] ), .CI(\SUMB[5][11] ), .CO(
        \CARRYB[6][10] ), .S(\SUMB[6][10] ) );
  FADDX1 S2_6_11 ( .A(n37), .B(\CARRYB[5][11] ), .CI(\SUMB[5][12] ), .CO(
        \CARRYB[6][11] ), .S(\SUMB[6][11] ) );
  FADDX1 S2_6_12 ( .A(n37), .B(\CARRYB[5][12] ), .CI(\SUMB[5][13] ), .CO(
        \CARRYB[6][12] ), .S(\SUMB[6][12] ) );
  FADDX1 S2_6_13 ( .A(n36), .B(\CARRYB[5][13] ), .CI(\SUMB[5][14] ), .CO(
        \CARRYB[6][13] ), .S(\SUMB[6][13] ) );
  FADDX1 S3_6_14 ( .A(n36), .B(\CARRYB[5][14] ), .CI(n35), .CO(\CARRYB[6][14] ), .S(\SUMB[6][14] ) );
  FADDX1 S2_5_1 ( .A(n35), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  FADDX1 S2_5_2 ( .A(n35), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  FADDX1 S2_5_3 ( .A(n34), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  FADDX1 S2_5_4 ( .A(n34), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  FADDX1 S2_5_5 ( .A(n35), .B(\CARRYB[4][5] ), .CI(\SUMB[3][7] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  FADDX1 S2_5_7 ( .A(n35), .B(\CARRYB[4][7] ), .CI(\SUMB[4][8] ), .CO(
        \CARRYB[5][7] ), .S(\SUMB[5][7] ) );
  FADDX1 S2_5_8 ( .A(n34), .B(\CARRYB[4][8] ), .CI(\SUMB[4][9] ), .CO(
        \CARRYB[5][8] ), .S(\SUMB[5][8] ) );
  FADDX1 S2_5_9 ( .A(n34), .B(\CARRYB[4][9] ), .CI(\SUMB[4][10] ), .CO(
        \CARRYB[5][9] ), .S(\SUMB[5][9] ) );
  FADDX1 S2_5_10 ( .A(n34), .B(\CARRYB[4][10] ), .CI(\SUMB[4][11] ), .CO(
        \CARRYB[5][10] ), .S(\SUMB[5][10] ) );
  FADDX1 S2_5_11 ( .A(n35), .B(\CARRYB[4][11] ), .CI(\SUMB[4][12] ), .CO(
        \CARRYB[5][11] ), .S(\SUMB[5][11] ) );
  FADDX1 S2_5_12 ( .A(n35), .B(\CARRYB[4][12] ), .CI(\SUMB[4][13] ), .CO(
        \CARRYB[5][12] ), .S(\SUMB[5][12] ) );
  FADDX1 S2_5_13 ( .A(n34), .B(\CARRYB[4][13] ), .CI(\SUMB[4][14] ), .CO(
        \CARRYB[5][13] ), .S(\SUMB[5][13] ) );
  FADDX1 S3_5_14 ( .A(n34), .B(\CARRYB[4][14] ), .CI(n33), .CO(\CARRYB[5][14] ), .S(\SUMB[5][14] ) );
  FADDX1 S2_4_1 ( .A(n33), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  FADDX1 S2_4_2 ( .A(n33), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  FADDX1 S2_4_3 ( .A(n32), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  FADDX1 S2_4_4 ( .A(n32), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  FADDX1 S2_4_5 ( .A(n33), .B(\CARRYB[3][5] ), .CI(\SUMB[2][7] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  FADDX1 S2_4_7 ( .A(n33), .B(\CARRYB[3][7] ), .CI(\SUMB[3][8] ), .CO(
        \CARRYB[4][7] ), .S(\SUMB[4][7] ) );
  FADDX1 S2_4_8 ( .A(n32), .B(\CARRYB[3][8] ), .CI(\SUMB[3][9] ), .CO(
        \CARRYB[4][8] ), .S(\SUMB[4][8] ) );
  FADDX1 S2_4_9 ( .A(n32), .B(\CARRYB[3][9] ), .CI(\SUMB[3][10] ), .CO(
        \CARRYB[4][9] ), .S(\SUMB[4][9] ) );
  FADDX1 S2_4_10 ( .A(n32), .B(\CARRYB[3][10] ), .CI(\SUMB[3][11] ), .CO(
        \CARRYB[4][10] ), .S(\SUMB[4][10] ) );
  FADDX1 S2_4_11 ( .A(n33), .B(\CARRYB[3][11] ), .CI(\SUMB[3][12] ), .CO(
        \CARRYB[4][11] ), .S(\SUMB[4][11] ) );
  FADDX1 S2_4_12 ( .A(n33), .B(\CARRYB[3][12] ), .CI(\SUMB[3][13] ), .CO(
        \CARRYB[4][12] ), .S(\SUMB[4][12] ) );
  FADDX1 S2_4_13 ( .A(n32), .B(\CARRYB[3][13] ), .CI(\SUMB[3][14] ), .CO(
        \CARRYB[4][13] ), .S(\SUMB[4][13] ) );
  FADDX1 S3_4_14 ( .A(n32), .B(\CARRYB[3][14] ), .CI(n31), .CO(\CARRYB[4][14] ), .S(\SUMB[4][14] ) );
  FADDX1 S2_3_1 ( .A(n31), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  FADDX1 S2_3_2 ( .A(n31), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  FADDX1 S2_3_3 ( .A(n30), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  FADDX1 S2_3_4 ( .A(n30), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  FADDX1 S2_3_5 ( .A(n31), .B(n3), .CI(\SUMB[1][7] ), .CO(\CARRYB[3][5] ), .S(
        \SUMB[3][5] ) );
  FADDX1 S2_3_7 ( .A(n31), .B(\CARRYB[2][7] ), .CI(\SUMB[2][8] ), .CO(
        \CARRYB[3][7] ), .S(\SUMB[3][7] ) );
  FADDX1 S2_3_8 ( .A(n30), .B(\CARRYB[2][8] ), .CI(\SUMB[2][9] ), .CO(
        \CARRYB[3][8] ), .S(\SUMB[3][8] ) );
  FADDX1 S2_3_9 ( .A(n30), .B(\CARRYB[2][9] ), .CI(\SUMB[2][10] ), .CO(
        \CARRYB[3][9] ), .S(\SUMB[3][9] ) );
  FADDX1 S2_3_10 ( .A(n30), .B(\CARRYB[2][10] ), .CI(\SUMB[2][11] ), .CO(
        \CARRYB[3][10] ), .S(\SUMB[3][10] ) );
  FADDX1 S2_3_11 ( .A(n31), .B(\CARRYB[2][11] ), .CI(\SUMB[2][12] ), .CO(
        \CARRYB[3][11] ), .S(\SUMB[3][11] ) );
  FADDX1 S2_3_12 ( .A(n31), .B(\CARRYB[2][12] ), .CI(\SUMB[2][13] ), .CO(
        \CARRYB[3][12] ), .S(\SUMB[3][12] ) );
  FADDX1 S2_3_13 ( .A(n30), .B(\CARRYB[2][13] ), .CI(\SUMB[2][14] ), .CO(
        \CARRYB[3][13] ), .S(\SUMB[3][13] ) );
  FADDX1 S3_3_14 ( .A(n30), .B(\CARRYB[2][14] ), .CI(n29), .CO(\CARRYB[3][14] ), .S(\SUMB[3][14] ) );
  FADDX1 S2_2_1 ( .A(n29), .B(n16), .CI(\SUMB[1][2] ), .CO(\CARRYB[2][1] ), 
        .S(\SUMB[2][1] ) );
  FADDX1 S2_2_2 ( .A(n29), .B(\CARRYB[1][10] ), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  FADDX1 S2_2_3 ( .A(n28), .B(\CARRYB[1][3] ), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  FADDX1 S2_2_4 ( .A(n28), .B(n17), .CI(n26), .CO(\CARRYB[2][4] ), .S(
        \SUMB[2][4] ) );
  FADDX1 S2_2_7 ( .A(n29), .B(\CARRYB[1][7] ), .CI(\SUMB[1][8] ), .CO(
        \CARRYB[2][7] ), .S(\SUMB[2][7] ) );
  FADDX1 S2_2_8 ( .A(n28), .B(\CARRYB[1][7] ), .CI(\SUMB[1][9] ), .CO(
        \CARRYB[2][8] ), .S(\SUMB[2][8] ) );
  FADDX1 S2_2_9 ( .A(n28), .B(\CARRYB[1][11] ), .CI(\SUMB[1][10] ), .CO(
        \CARRYB[2][9] ), .S(\SUMB[2][9] ) );
  FADDX1 S2_2_10 ( .A(n28), .B(\CARRYB[1][10] ), .CI(\SUMB[1][11] ), .CO(
        \CARRYB[2][10] ), .S(\SUMB[2][10] ) );
  FADDX1 S2_2_11 ( .A(n29), .B(\CARRYB[1][11] ), .CI(\SUMB[1][12] ), .CO(
        \CARRYB[2][11] ), .S(\SUMB[2][11] ) );
  FADDX1 S2_2_12 ( .A(n29), .B(\CARRYB[1][13] ), .CI(\SUMB[1][13] ), .CO(
        \CARRYB[2][12] ), .S(\SUMB[2][12] ) );
  FADDX1 S2_2_13 ( .A(n28), .B(\CARRYB[1][13] ), .CI(\SUMB[1][14] ), .CO(
        \CARRYB[2][13] ), .S(\SUMB[2][13] ) );
  FADDX1 S3_2_14 ( .A(n28), .B(n16), .CI(n27), .CO(\CARRYB[2][14] ), .S(
        \SUMB[2][14] ) );
  winnerPolicy_DW01_add_2 FS_1 ( .A({1'b0, \A1[28] , \A1[27] , \A1[26] , 
        \A1[25] , \A1[24] , \A1[23] , \A1[22] , \A1[21] , \SUMB[15][7] , 
        \A1[19] , \A1[18] , \A1[17] , \A1[16] , \A1[15] , \SUMB[15][1] , 
        \SUMB[14][1] , \SUMB[13][1] , \SUMB[12][1] , \SUMB[11][1] , 
        \SUMB[10][1] , \SUMB[9][1] , \SUMB[8][1] , \SUMB[7][1] , \SUMB[6][1] , 
        \SUMB[5][1] , \SUMB[4][1] , \SUMB[3][1] , \SUMB[2][1] , \SUMB[1][1] }), 
        .B({n18, n14, n8, n9, n10, n11, n12, n13, 1'b0, n15, n4, n5, n6, n7, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[31:2]) );
  AND2X1 U2 ( .IN1(n29), .IN2(n24), .Q(n3) );
  AND2X1 U3 ( .IN1(\CARRYB[15][4] ), .IN2(\SUMB[15][5] ), .Q(n4) );
  AND2X1 U4 ( .IN1(\CARRYB[15][3] ), .IN2(\SUMB[15][4] ), .Q(n5) );
  AND2X1 U5 ( .IN1(\CARRYB[15][2] ), .IN2(\SUMB[15][3] ), .Q(n6) );
  AND2X1 U6 ( .IN1(\CARRYB[15][1] ), .IN2(\SUMB[15][2] ), .Q(n7) );
  AND2X1 U7 ( .IN1(\CARRYB[15][12] ), .IN2(\SUMB[15][13] ), .Q(n8) );
  AND2X1 U8 ( .IN1(\CARRYB[15][11] ), .IN2(\SUMB[15][12] ), .Q(n9) );
  AND2X1 U9 ( .IN1(\CARRYB[15][10] ), .IN2(\SUMB[15][11] ), .Q(n10) );
  AND2X1 U10 ( .IN1(\CARRYB[15][9] ), .IN2(\SUMB[15][10] ), .Q(n11) );
  AND2X1 U11 ( .IN1(\CARRYB[15][8] ), .IN2(\SUMB[15][9] ), .Q(n12) );
  AND2X1 U12 ( .IN1(\CARRYB[15][7] ), .IN2(\SUMB[15][8] ), .Q(n13) );
  AND2X1 U13 ( .IN1(\CARRYB[15][13] ), .IN2(\SUMB[15][14] ), .Q(n14) );
  AND2X1 U14 ( .IN1(\CARRYB[15][5] ), .IN2(\SUMB[14][7] ), .Q(n15) );
  INVX0 U15 ( .INP(n20), .ZN(\CARRYB[1][7] ) );
  NAND2X1 U16 ( .IN1(n24), .IN2(n26), .QN(n20) );
  INVX0 U17 ( .INP(n19), .ZN(\CARRYB[1][3] ) );
  NAND2X1 U18 ( .IN1(n24), .IN2(n27), .QN(n19) );
  INVX0 U19 ( .INP(n22), .ZN(\CARRYB[1][11] ) );
  NAND2X1 U20 ( .IN1(n24), .IN2(n26), .QN(n22) );
  INVX0 U21 ( .INP(n21), .ZN(\CARRYB[1][10] ) );
  NAND2X1 U22 ( .IN1(n24), .IN2(n27), .QN(n21) );
  INVX0 U23 ( .INP(n23), .ZN(\CARRYB[1][13] ) );
  NAND2X1 U24 ( .IN1(PRODUCT[1]), .IN2(n27), .QN(n23) );
  AND2X1 U25 ( .IN1(n24), .IN2(n27), .Q(n16) );
  AND2X1 U26 ( .IN1(PRODUCT[1]), .IN2(n27), .Q(n17) );
  AND2X1 U27 ( .IN1(\CARRYB[15][14] ), .IN2(\ab[15][9] ), .Q(n18) );
  NBUFFX2 U28 ( .INP(\ab[3][9] ), .Z(n30) );
  NBUFFX2 U29 ( .INP(\ab[4][9] ), .Z(n32) );
  NBUFFX2 U30 ( .INP(\ab[5][9] ), .Z(n34) );
  NBUFFX2 U31 ( .INP(\ab[2][9] ), .Z(n28) );
  NBUFFX2 U32 ( .INP(\ab[3][9] ), .Z(n31) );
  NBUFFX2 U33 ( .INP(\ab[4][9] ), .Z(n33) );
  NBUFFX2 U34 ( .INP(\ab[5][9] ), .Z(n35) );
  NBUFFX2 U35 ( .INP(\ab[2][9] ), .Z(n29) );
  NBUFFX2 U36 ( .INP(\ab[1][9] ), .Z(n27) );
  NBUFFX2 U37 ( .INP(\ab[1][9] ), .Z(n26) );
  NBUFFX2 U38 ( .INP(\ab[0][9] ), .Z(n24) );
  NBUFFX2 U39 ( .INP(\ab[0][9] ), .Z(PRODUCT[1]) );
  NBUFFX2 U40 ( .INP(\ab[14][9] ), .Z(n38) );
  NBUFFX2 U41 ( .INP(\ab[6][9] ), .Z(n36) );
  NBUFFX2 U42 ( .INP(\ab[14][9] ), .Z(n39) );
  NBUFFX2 U43 ( .INP(\ab[6][9] ), .Z(n37) );
  XOR2X1 U44 ( .IN1(\CARRYB[15][1] ), .IN2(\SUMB[15][2] ), .Q(\A1[15] ) );
  XOR2X1 U45 ( .IN1(\CARRYB[15][2] ), .IN2(\SUMB[15][3] ), .Q(\A1[16] ) );
  XOR2X1 U46 ( .IN1(\CARRYB[15][3] ), .IN2(\SUMB[15][4] ), .Q(\A1[17] ) );
  XOR2X1 U47 ( .IN1(\CARRYB[15][4] ), .IN2(\SUMB[15][5] ), .Q(\A1[18] ) );
  XOR2X1 U48 ( .IN1(\CARRYB[15][5] ), .IN2(\SUMB[14][7] ), .Q(\A1[19] ) );
  XOR2X1 U49 ( .IN1(\CARRYB[15][7] ), .IN2(\SUMB[15][8] ), .Q(\A1[21] ) );
  XOR2X1 U50 ( .IN1(\CARRYB[15][8] ), .IN2(\SUMB[15][9] ), .Q(\A1[22] ) );
  XOR2X1 U51 ( .IN1(\CARRYB[15][9] ), .IN2(\SUMB[15][10] ), .Q(\A1[23] ) );
  XOR2X1 U52 ( .IN1(\CARRYB[15][10] ), .IN2(\SUMB[15][11] ), .Q(\A1[24] ) );
  XOR2X1 U53 ( .IN1(\CARRYB[15][11] ), .IN2(\SUMB[15][12] ), .Q(\A1[25] ) );
  XOR2X1 U54 ( .IN1(\CARRYB[15][12] ), .IN2(\SUMB[15][13] ), .Q(\A1[26] ) );
  XOR2X1 U55 ( .IN1(\CARRYB[15][13] ), .IN2(\SUMB[15][14] ), .Q(\A1[27] ) );
  XOR2X1 U56 ( .IN1(\CARRYB[15][14] ), .IN2(\ab[15][9] ), .Q(\A1[28] ) );
  XOR2X1 U57 ( .IN1(n26), .IN2(PRODUCT[1]), .Q(\SUMB[1][1] ) );
  XOR2X1 U58 ( .IN1(n26), .IN2(n24), .Q(\SUMB[1][2] ) );
  XOR2X1 U59 ( .IN1(n27), .IN2(n24), .Q(\SUMB[1][3] ) );
  XOR2X1 U60 ( .IN1(n27), .IN2(PRODUCT[1]), .Q(\SUMB[1][4] ) );
  XOR2X1 U61 ( .IN1(n26), .IN2(n24), .Q(\SUMB[1][7] ) );
  XOR2X1 U62 ( .IN1(n26), .IN2(PRODUCT[1]), .Q(\SUMB[1][8] ) );
  XOR2X1 U63 ( .IN1(n27), .IN2(PRODUCT[1]), .Q(\SUMB[1][9] ) );
  XOR2X1 U64 ( .IN1(n27), .IN2(n24), .Q(\SUMB[1][10] ) );
  XOR2X1 U65 ( .IN1(n26), .IN2(n24), .Q(\SUMB[1][11] ) );
  XOR2X1 U66 ( .IN1(n26), .IN2(PRODUCT[1]), .Q(\SUMB[1][12] ) );
  XOR2X1 U67 ( .IN1(n27), .IN2(PRODUCT[1]), .Q(\SUMB[1][13] ) );
  XOR2X1 U68 ( .IN1(n27), .IN2(n24), .Q(\SUMB[1][14] ) );
  XOR2X1 U69 ( .IN1(n24), .IN2(n29), .Q(\SUMB[2][5] ) );
endmodule


module winnerPolicy ( clock, nrst, en, start_winnerPolicy, mybest, besthop, 
        bestvalue, bestneighborID, MY_NODE_ID, address, data_in, wr_en, 
        data_out, epsilon_step, nexthop, done_winnerPolicy, en_rng, rng_out, 
        rng_out_4bit, rng_address, start_rngAddress, done_rng_address, 
        betterNeighborCount, which );
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
  input clock, nrst, en, start_winnerPolicy, done_rng_address;
  output wr_en, done_winnerPolicy, en_rng, start_rngAddress;
  wire   one, two, three, N119, N120, N121, N122, N123, N124, N125, N126, N127,
         N128, N132, N133, N134, N135, N136, N137, N138, N139, N140, N141,
         N142, N143, N144, N145, N146, N147, N165, N166, N167, N168, N169,
         N170, N171, N172, N173, N174, N175, N176, N177, N178, N179, N180,
         N181, N182, N183, N184, N185, N186, N187, N188, N189, N190, N191,
         N192, N193, N194, N195, N196, N235, N236, N237, N238, N239, N240,
         N241, N242, N243, N244, N245, N246, N247, N248, N249, N250, N251,
         N252, N253, N254, N255, N256, N257, N258, N259, N260, N261, N262,
         N263, N476, N477, N478, N479, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, N229, N228, N227,
         N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216,
         N215, N214, N213, \add_121/carry[10] , \add_121/carry[9] ,
         \add_121/carry[8] , \add_121/carry[7] , \add_121/carry[6] ,
         \add_121/carry[5] , \add_173/carry[31] , \add_173/carry[30] ,
         \add_173/carry[29] , \add_173/carry[28] , \add_173/carry[27] ,
         \add_173/carry[26] , \add_173/carry[25] , \add_173/carry[24] ,
         \add_173/carry[23] , \add_173/carry[22] , \add_173/carry[21] ,
         \add_173/carry[20] , \add_173/carry[19] , \add_173/carry[18] ,
         \add_173/carry[17] , \add_173/carry[16] , n1, n2, n3, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n171, n172, n173, n174,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n460,
         n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471,
         n472, n473, n474, n475, n476, n477, n478, n479, n480, n481;
  wire   [3:0] state;
  wire   [15:0] epsilon_buf;
  wire   [31:0] _left;
  wire   [31:0] _right3;
  wire   [31:0] _right;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15;
  assign N119 = rng_address[0];
  assign N120 = rng_address[1];
  assign N235 = mybest[0];
  assign N236 = mybest[1];
  assign N237 = mybest[2];
  assign N238 = mybest[3];
  assign N239 = mybest[4];
  assign N240 = mybest[5];
  assign N241 = mybest[6];
  assign N242 = mybest[7];
  assign N243 = mybest[8];
  assign N244 = mybest[9];

  DFFX1 \_right3_reg[31]  ( .D(n144), .CLK(clock), .Q(_right3[31]) );
  DFFX1 \_right3_reg[30]  ( .D(n145), .CLK(clock), .Q(_right3[30]) );
  DFFX1 \_right3_reg[29]  ( .D(n146), .CLK(clock), .Q(_right3[29]) );
  DFFX1 \_right3_reg[28]  ( .D(n147), .CLK(clock), .Q(_right3[28]) );
  DFFX1 \_right3_reg[27]  ( .D(n148), .CLK(clock), .Q(_right3[27]) );
  DFFX1 \_right3_reg[26]  ( .D(n149), .CLK(clock), .Q(_right3[26]) );
  DFFX1 \_right3_reg[25]  ( .D(n150), .CLK(clock), .Q(_right3[25]) );
  DFFX1 \_right3_reg[24]  ( .D(n151), .CLK(clock), .Q(_right3[24]) );
  DFFX1 \_right3_reg[23]  ( .D(n152), .CLK(clock), .Q(_right3[23]) );
  DFFX1 \_right3_reg[22]  ( .D(n153), .CLK(clock), .Q(_right3[22]) );
  DFFX1 \_right3_reg[21]  ( .D(n154), .CLK(clock), .Q(_right3[21]) );
  DFFX1 \_right3_reg[20]  ( .D(n155), .CLK(clock), .Q(_right3[20]) );
  DFFX1 \_right3_reg[19]  ( .D(n156), .CLK(clock), .Q(_right3[19]) );
  DFFX1 \_right3_reg[18]  ( .D(n157), .CLK(clock), .Q(_right3[18]) );
  DFFX1 \_right3_reg[17]  ( .D(n158), .CLK(clock), .Q(_right3[17]) );
  DFFX1 \_right3_reg[16]  ( .D(n159), .CLK(clock), .Q(_right3[16]) );
  DFFX1 \_right3_reg[15]  ( .D(n160), .CLK(clock), .Q(_right3[15]) );
  DFFX1 \_right3_reg[14]  ( .D(n161), .CLK(clock), .Q(_right3[14]) );
  DFFX1 \_right3_reg[13]  ( .D(n162), .CLK(clock), .Q(_right3[13]) );
  DFFX1 \_right3_reg[12]  ( .D(n163), .CLK(clock), .Q(_right3[12]) );
  DFFX1 \_right3_reg[11]  ( .D(n164), .CLK(clock), .Q(_right3[11]) );
  DFFX1 \_right3_reg[10]  ( .D(n165), .CLK(clock), .Q(_right3[10]) );
  DFFX1 \_right3_reg[9]  ( .D(n166), .CLK(clock), .Q(_right3[9]) );
  DFFX1 \_right3_reg[8]  ( .D(n167), .CLK(clock), .Q(_right3[8]) );
  DFFX1 \_right3_reg[7]  ( .D(n168), .CLK(clock), .Q(_right3[7]) );
  DFFX1 \_right3_reg[6]  ( .D(n169), .CLK(clock), .Q(_right3[6]) );
  DFFX1 \_right3_reg[5]  ( .D(n170), .CLK(clock), .Q(_right3[5]) );
  DFFX1 \which_buf_reg[0]  ( .D(n273), .CLK(clock), .Q(which[0]) );
  DFFX1 \betterNeighborCount_buf_reg[0]  ( .D(n272), .CLK(clock), .Q(
        betterNeighborCount[0]) );
  DFFX1 \betterNeighborCount_buf_reg[1]  ( .D(n271), .CLK(clock), .Q(
        betterNeighborCount[1]) );
  DFFX1 \betterNeighborCount_buf_reg[2]  ( .D(n270), .CLK(clock), .Q(
        betterNeighborCount[2]) );
  DFFX1 \betterNeighborCount_buf_reg[3]  ( .D(n269), .CLK(clock), .Q(
        betterNeighborCount[3]) );
  DFFX1 \betterNeighborCount_buf_reg[4]  ( .D(n268), .CLK(clock), .Q(
        betterNeighborCount[4]) );
  DFFX1 \betterNeighborCount_buf_reg[5]  ( .D(n267), .CLK(clock), .Q(
        betterNeighborCount[5]) );
  DFFX1 \betterNeighborCount_buf_reg[6]  ( .D(n266), .CLK(clock), .Q(
        betterNeighborCount[6]) );
  DFFX1 \betterNeighborCount_buf_reg[7]  ( .D(n265), .CLK(clock), .Q(
        betterNeighborCount[7]) );
  DFFX1 \betterNeighborCount_buf_reg[8]  ( .D(n264), .CLK(clock), .Q(
        betterNeighborCount[8]) );
  DFFX1 \betterNeighborCount_buf_reg[9]  ( .D(n263), .CLK(clock), .Q(
        betterNeighborCount[9]) );
  DFFX1 \betterNeighborCount_buf_reg[10]  ( .D(n262), .CLK(clock), .Q(
        betterNeighborCount[10]) );
  DFFX1 \betterNeighborCount_buf_reg[11]  ( .D(n261), .CLK(clock), .Q(
        betterNeighborCount[11]) );
  DFFX1 \betterNeighborCount_buf_reg[12]  ( .D(n260), .CLK(clock), .Q(
        betterNeighborCount[12]) );
  DFFX1 \betterNeighborCount_buf_reg[13]  ( .D(n259), .CLK(clock), .Q(
        betterNeighborCount[13]) );
  DFFX1 \betterNeighborCount_buf_reg[14]  ( .D(n258), .CLK(clock), .Q(
        betterNeighborCount[14]) );
  DFFX1 \betterNeighborCount_buf_reg[15]  ( .D(n257), .CLK(clock), .Q(
        betterNeighborCount[15]) );
  DFFX1 \which_buf_reg[1]  ( .D(n256), .CLK(clock), .Q(which[1]) );
  DFFX1 \which_buf_reg[2]  ( .D(n255), .CLK(clock), .Q(which[2]) );
  DFFX1 \which_buf_reg[3]  ( .D(n254), .CLK(clock), .Q(which[3]) );
  DFFX1 \which_buf_reg[4]  ( .D(n253), .CLK(clock), .Q(which[4]) );
  DFFX1 \which_buf_reg[5]  ( .D(n252), .CLK(clock), .Q(which[5]) );
  DFFX1 \which_buf_reg[6]  ( .D(n251), .CLK(clock), .Q(which[6]) );
  DFFX1 \which_buf_reg[7]  ( .D(n250), .CLK(clock), .Q(which[7]) );
  DFFX1 \which_buf_reg[8]  ( .D(n249), .CLK(clock), .Q(which[8]) );
  DFFX1 \which_buf_reg[9]  ( .D(n248), .CLK(clock), .Q(which[9]) );
  DFFX1 \which_buf_reg[10]  ( .D(n247), .CLK(clock), .Q(which[10]) );
  DFFX1 \which_buf_reg[11]  ( .D(n246), .CLK(clock), .Q(which[11]) );
  DFFX1 \which_buf_reg[12]  ( .D(n245), .CLK(clock), .Q(which[12]) );
  DFFX1 \which_buf_reg[13]  ( .D(n244), .CLK(clock), .Q(which[13]) );
  DFFX1 \explore_constant_reg[15]  ( .D(n290), .CLK(clock), .Q(n307), .QN(n446) );
  DFFX1 \explore_constant_reg[14]  ( .D(n291), .CLK(clock), .Q(n174), .QN(n447) );
  DFFX1 \explore_constant_reg[13]  ( .D(n292), .CLK(clock), .Q(n173), .QN(n448) );
  DFFX1 \explore_constant_reg[12]  ( .D(n293), .CLK(clock), .Q(n172), .QN(n449) );
  DFFX1 \explore_constant_reg[11]  ( .D(n294), .CLK(clock), .Q(n171), .QN(n450) );
  DFFX1 \explore_constant_reg[10]  ( .D(n295), .CLK(clock), .Q(n112), .QN(n451) );
  DFFX1 \explore_constant_reg[9]  ( .D(n296), .CLK(clock), .Q(n111), .QN(n452)
         );
  DFFX1 \explore_constant_reg[8]  ( .D(n297), .CLK(clock), .Q(n110), .QN(n453)
         );
  DFFX1 \explore_constant_reg[7]  ( .D(n298), .CLK(clock), .Q(n109), .QN(n454)
         );
  DFFX1 \explore_constant_reg[6]  ( .D(n299), .CLK(clock), .Q(n108), .QN(n455)
         );
  DFFX1 \explore_constant_reg[5]  ( .D(n300), .CLK(clock), .Q(n107), .QN(n456)
         );
  DFFX1 \explore_constant_reg[4]  ( .D(n301), .CLK(clock), .Q(n106), .QN(n457)
         );
  DFFX1 \explore_constant_reg[3]  ( .D(n302), .CLK(clock), .Q(n105), .QN(n458)
         );
  DFFX1 \explore_constant_reg[2]  ( .D(n303), .CLK(clock), .Q(n104), .QN(n459)
         );
  DFFX1 \explore_constant_reg[1]  ( .D(n304), .CLK(clock), .Q(n103), .QN(n460)
         );
  DFFX1 \explore_constant_reg[0]  ( .D(n305), .CLK(clock), .Q(n101), .QN(n461)
         );
  DFFX1 \address_count_reg[10]  ( .D(n130), .CLK(clock), .Q(address[10]) );
  DFFX1 \address_count_reg[9]  ( .D(n131), .CLK(clock), .Q(address[9]) );
  DFFX1 \address_count_reg[8]  ( .D(n132), .CLK(clock), .Q(address[8]) );
  DFFX1 \address_count_reg[7]  ( .D(n133), .CLK(clock), .Q(address[7]) );
  DFFX1 \address_count_reg[6]  ( .D(n134), .CLK(clock), .Q(address[6]) );
  DFFX1 \address_count_reg[5]  ( .D(n135), .CLK(clock), .Q(address[5]) );
  DFFX1 \address_count_reg[4]  ( .D(n136), .CLK(clock), .Q(address[4]) );
  DFFX1 \address_count_reg[3]  ( .D(n137), .CLK(clock), .Q(address[3]) );
  DFFX1 \address_count_reg[2]  ( .D(n138), .CLK(clock), .Q(address[2]) );
  DFFX1 \address_count_reg[1]  ( .D(n139), .CLK(clock), .Q(address[1]) );
  DFFX1 \nexthop_buf_reg[15]  ( .D(n113), .CLK(clock), .Q(nexthop[15]) );
  DFFX1 \nexthop_buf_reg[14]  ( .D(n114), .CLK(clock), .Q(nexthop[14]) );
  DFFX1 \nexthop_buf_reg[13]  ( .D(n115), .CLK(clock), .Q(nexthop[13]) );
  DFFX1 \nexthop_buf_reg[12]  ( .D(n116), .CLK(clock), .Q(nexthop[12]) );
  DFFX1 \nexthop_buf_reg[11]  ( .D(n117), .CLK(clock), .Q(nexthop[11]) );
  DFFX1 \nexthop_buf_reg[10]  ( .D(n118), .CLK(clock), .Q(nexthop[10]) );
  DFFX1 \nexthop_buf_reg[9]  ( .D(n119), .CLK(clock), .Q(nexthop[9]) );
  DFFX1 \nexthop_buf_reg[8]  ( .D(n120), .CLK(clock), .Q(nexthop[8]) );
  DFFX1 \nexthop_buf_reg[7]  ( .D(n121), .CLK(clock), .Q(nexthop[7]) );
  DFFX1 \nexthop_buf_reg[5]  ( .D(n123), .CLK(clock), .Q(nexthop[5]) );
  DFFX1 \nexthop_buf_reg[4]  ( .D(n124), .CLK(clock), .Q(nexthop[4]) );
  DFFX1 \nexthop_buf_reg[3]  ( .D(n125), .CLK(clock), .Q(nexthop[3]) );
  DFFX1 \nexthop_buf_reg[2]  ( .D(n126), .CLK(clock), .Q(nexthop[2]) );
  DFFX1 \nexthop_buf_reg[1]  ( .D(n127), .CLK(clock), .Q(nexthop[1]) );
  winnerPolicy_DW01_sub_0 sub_131 ( .A(epsilon_buf), .B(epsilon_step), .CI(
        1'b0), .DIFF({N147, N146, N145, N144, N143, N142, N141, N140, N139, 
        N138, N137, N136, N135, N134, N133, N132}) );
  winnerPolicy_DW02_mult_1 mult_171 ( .A({mybest[15:10], N244, N243, N242, 
        N241, N240, N239, N238, N237, N236, N235}), .B({1'b1, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TC(1'b0), .PRODUCT({N229, N228, N227, N226, N225, N224, N223, N222, N221, 
        N220, N219, N218, N217, N216, N215, N214, N213, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14}) );
  winnerPolicy_DW02_mult_0 mult_147 ( .A({mybest[15:10], N244, N243, N242, 
        N241, N240, N239, N238, N237, N236, N235}), .B({1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0}), .TC(1'b0), .PRODUCT({N195, N194, N193, N192, N191, N190, N189, N188, N187, 
        N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, 
        N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, 
        SYNOPSYS_UNCONNECTED__15}) );
  FADDX1 \add_173/U1_16  ( .A(N214), .B(N236), .CI(\add_173/carry[16] ), .CO(
        \add_173/carry[17] ), .S(N246) );
  FADDX1 \add_173/U1_17  ( .A(N215), .B(N237), .CI(\add_173/carry[17] ), .CO(
        \add_173/carry[18] ), .S(N247) );
  FADDX1 \add_173/U1_18  ( .A(N216), .B(N238), .CI(\add_173/carry[18] ), .CO(
        \add_173/carry[19] ), .S(N248) );
  FADDX1 \add_173/U1_19  ( .A(N217), .B(N239), .CI(\add_173/carry[19] ), .CO(
        \add_173/carry[20] ), .S(N249) );
  FADDX1 \add_173/U1_20  ( .A(N218), .B(N240), .CI(\add_173/carry[20] ), .CO(
        \add_173/carry[21] ), .S(N250) );
  FADDX1 \add_173/U1_21  ( .A(N219), .B(N241), .CI(\add_173/carry[21] ), .CO(
        \add_173/carry[22] ), .S(N251) );
  FADDX1 \add_173/U1_22  ( .A(N220), .B(N242), .CI(\add_173/carry[22] ), .CO(
        \add_173/carry[23] ), .S(N252) );
  FADDX1 \add_173/U1_23  ( .A(N221), .B(N243), .CI(\add_173/carry[23] ), .CO(
        \add_173/carry[24] ), .S(N253) );
  FADDX1 \add_173/U1_24  ( .A(N222), .B(N244), .CI(\add_173/carry[24] ), .CO(
        \add_173/carry[25] ), .S(N254) );
  FADDX1 \add_173/U1_25  ( .A(N223), .B(mybest[10]), .CI(\add_173/carry[25] ), 
        .CO(\add_173/carry[26] ), .S(N255) );
  FADDX1 \add_173/U1_26  ( .A(N224), .B(mybest[11]), .CI(\add_173/carry[26] ), 
        .CO(\add_173/carry[27] ), .S(N256) );
  FADDX1 \add_173/U1_27  ( .A(N225), .B(mybest[12]), .CI(\add_173/carry[27] ), 
        .CO(\add_173/carry[28] ), .S(N257) );
  FADDX1 \add_173/U1_28  ( .A(N226), .B(mybest[13]), .CI(\add_173/carry[28] ), 
        .CO(\add_173/carry[29] ), .S(N258) );
  FADDX1 \add_173/U1_29  ( .A(N227), .B(mybest[14]), .CI(\add_173/carry[29] ), 
        .CO(\add_173/carry[30] ), .S(N259) );
  FADDX1 \add_173/U1_30  ( .A(N228), .B(mybest[15]), .CI(\add_173/carry[30] ), 
        .CO(\add_173/carry[31] ), .S(N260) );
  DFFX1 \state_reg[3]  ( .D(N479), .CLK(clock), .Q(state[3]), .QN(n435) );
  DFFX1 \state_reg[0]  ( .D(N476), .CLK(clock), .Q(state[0]), .QN(n412) );
  DFFX1 \state_reg[1]  ( .D(N477), .CLK(clock), .Q(state[1]), .QN(n437) );
  DFFX1 done_winnerPolicy_buf_reg ( .D(n141), .CLK(clock), .Q(
        done_winnerPolicy) );
  DFFX1 \state_reg[2]  ( .D(N478), .CLK(clock), .Q(state[2]), .QN(n430) );
  DFFX1 two_reg ( .D(n143), .CLK(clock), .Q(two) );
  DFFX1 three_reg ( .D(n142), .CLK(clock), .Q(three) );
  DFFX1 one_reg ( .D(n176), .CLK(clock), .Q(one) );
  DFFX1 wr_en_buf_reg ( .D(n224), .CLK(clock), .Q(wr_en) );
  DFFX1 en_rng_buf_reg ( .D(n129), .CLK(clock), .Q(en_rng) );
  DFFX1 \data_out_buf_reg[15]  ( .D(n225), .CLK(clock), .Q(data_out[15]) );
  DFFX1 \data_out_buf_reg[14]  ( .D(n226), .CLK(clock), .Q(data_out[14]) );
  DFFX1 \data_out_buf_reg[13]  ( .D(n227), .CLK(clock), .Q(data_out[13]) );
  DFFX1 \data_out_buf_reg[12]  ( .D(n228), .CLK(clock), .Q(data_out[12]) );
  DFFX1 \data_out_buf_reg[11]  ( .D(n229), .CLK(clock), .Q(data_out[11]) );
  DFFX1 \data_out_buf_reg[10]  ( .D(n230), .CLK(clock), .Q(data_out[10]) );
  DFFX1 \data_out_buf_reg[9]  ( .D(n231), .CLK(clock), .Q(data_out[9]) );
  DFFX1 \data_out_buf_reg[8]  ( .D(n232), .CLK(clock), .Q(data_out[8]) );
  DFFX1 \data_out_buf_reg[7]  ( .D(n233), .CLK(clock), .Q(data_out[7]) );
  DFFX1 \data_out_buf_reg[6]  ( .D(n234), .CLK(clock), .Q(data_out[6]) );
  DFFX1 \data_out_buf_reg[5]  ( .D(n235), .CLK(clock), .Q(data_out[5]) );
  DFFX1 \data_out_buf_reg[4]  ( .D(n236), .CLK(clock), .Q(data_out[4]) );
  DFFX1 \data_out_buf_reg[3]  ( .D(n237), .CLK(clock), .Q(data_out[3]) );
  DFFX1 \data_out_buf_reg[2]  ( .D(n238), .CLK(clock), .Q(data_out[2]) );
  DFFX1 \data_out_buf_reg[1]  ( .D(n239), .CLK(clock), .Q(data_out[1]) );
  DFFX1 \data_out_buf_reg[0]  ( .D(n240), .CLK(clock), .Q(data_out[0]) );
  DFFX1 \_right_reg[31]  ( .D(n177), .CLK(clock), .Q(_right[31]) );
  DFFX1 \_right_reg[30]  ( .D(n178), .CLK(clock), .Q(_right[30]) );
  DFFX1 \_right_reg[29]  ( .D(n179), .CLK(clock), .Q(_right[29]) );
  DFFX1 \_right_reg[28]  ( .D(n180), .CLK(clock), .Q(_right[28]) );
  DFFX1 \_right_reg[27]  ( .D(n181), .CLK(clock), .Q(_right[27]) );
  DFFX1 \_right_reg[26]  ( .D(n182), .CLK(clock), .Q(_right[26]) );
  DFFX1 \_right_reg[25]  ( .D(n183), .CLK(clock), .Q(_right[25]) );
  DFFX1 \_right_reg[24]  ( .D(n184), .CLK(clock), .Q(_right[24]) );
  DFFX1 \_right_reg[23]  ( .D(n185), .CLK(clock), .Q(_right[23]) );
  DFFX1 \_right_reg[22]  ( .D(n186), .CLK(clock), .Q(_right[22]) );
  DFFX1 \_right_reg[21]  ( .D(n187), .CLK(clock), .Q(_right[21]) );
  DFFX1 \_right_reg[20]  ( .D(n188), .CLK(clock), .Q(_right[20]) );
  DFFX1 \_right_reg[19]  ( .D(n189), .CLK(clock), .Q(_right[19]) );
  DFFX1 \_right_reg[18]  ( .D(n190), .CLK(clock), .Q(_right[18]) );
  DFFX1 \_right_reg[17]  ( .D(n191), .CLK(clock), .Q(_right[17]) );
  DFFX1 \_right_reg[16]  ( .D(n192), .CLK(clock), .Q(_right[16]) );
  DFFX1 \_right_reg[15]  ( .D(n193), .CLK(clock), .Q(_right[15]) );
  DFFX1 \_right_reg[14]  ( .D(n194), .CLK(clock), .Q(_right[14]) );
  DFFX1 \_right_reg[13]  ( .D(n195), .CLK(clock), .Q(_right[13]) );
  DFFX1 \_right_reg[12]  ( .D(n196), .CLK(clock), .Q(_right[12]) );
  DFFX1 \_right_reg[11]  ( .D(n197), .CLK(clock), .Q(_right[11]) );
  DFFX1 \_right_reg[10]  ( .D(n198), .CLK(clock), .Q(_right[10]) );
  DFFX1 \_right_reg[9]  ( .D(n199), .CLK(clock), .Q(_right[9]) );
  DFFX1 \_right_reg[8]  ( .D(n200), .CLK(clock), .Q(_right[8]) );
  DFFX1 \_right_reg[7]  ( .D(n201), .CLK(clock), .Q(_right[7]) );
  DFFX1 \_right_reg[6]  ( .D(n202), .CLK(clock), .Q(_right[6]) );
  DFFX1 \_right_reg[5]  ( .D(n203), .CLK(clock), .Q(_right[5]) );
  DFFX1 \_right_reg[4]  ( .D(n204), .CLK(clock), .Q(_right[4]) );
  DFFX1 \_right_reg[3]  ( .D(n205), .CLK(clock), .Q(_right[3]) );
  DFFX1 \_right_reg[2]  ( .D(n206), .CLK(clock), .Q(_right[2]) );
  DFFX1 \_right_reg[1]  ( .D(n207), .CLK(clock), .Q(_right[1]) );
  DFFX1 \_left_reg[31]  ( .D(n208), .CLK(clock), .Q(_left[31]), .QN(n35) );
  DFFX1 \_left_reg[30]  ( .D(n209), .CLK(clock), .Q(_left[30]), .QN(n64) );
  DFFX1 \_left_reg[29]  ( .D(n210), .CLK(clock), .Q(_left[29]), .QN(n65) );
  DFFX1 \_left_reg[28]  ( .D(n211), .CLK(clock), .Q(_left[28]), .QN(n36) );
  DFFX1 \_left_reg[27]  ( .D(n212), .CLK(clock), .Q(_left[27]), .QN(n66) );
  DFFX1 \_left_reg[26]  ( .D(n213), .CLK(clock), .Q(_left[26]), .QN(n37) );
  DFFX1 \_left_reg[25]  ( .D(n214), .CLK(clock), .Q(_left[25]), .QN(n38) );
  DFFX1 \_left_reg[24]  ( .D(n215), .CLK(clock), .Q(_left[24]), .QN(n67) );
  DFFX1 \_left_reg[23]  ( .D(n216), .CLK(clock), .Q(_left[23]), .QN(n68) );
  DFFX1 \_left_reg[22]  ( .D(n217), .CLK(clock), .Q(_left[22]), .QN(n39) );
  DFFX1 \_left_reg[21]  ( .D(n218), .CLK(clock), .Q(_left[21]), .QN(n69) );
  DFFX1 \_left_reg[20]  ( .D(n219), .CLK(clock), .Q(_left[20]), .QN(n70) );
  DFFX1 \_left_reg[19]  ( .D(n220), .CLK(clock), .Q(_left[19]), .QN(n40) );
  DFFX1 \_left_reg[18]  ( .D(n221), .CLK(clock), .Q(_left[18]), .QN(n71) );
  DFFX1 \_left_reg[17]  ( .D(n222), .CLK(clock), .Q(_left[17]), .QN(n72) );
  DFFX1 \_left_reg[16]  ( .D(n223), .CLK(clock), .Q(_left[16]), .QN(n41) );
  DFFX1 \nexthop_buf_reg[6]  ( .D(n122), .CLK(clock), .Q(nexthop[6]) );
  DFFX1 \nexthop_buf_reg[0]  ( .D(n128), .CLK(clock), .Q(nexthop[0]) );
  DFFX1 start_rngAddress_buf_reg ( .D(n241), .CLK(clock), .Q(start_rngAddress)
         );
  DFFX1 \which_buf_reg[15]  ( .D(n242), .CLK(clock), .Q(which[15]) );
  DFFX1 \which_buf_reg[14]  ( .D(n243), .CLK(clock), .Q(which[14]) );
  DFFX1 \_right_reg[0]  ( .D(n306), .CLK(clock), .Q(_right[0]), .QN(n439) );
  DFFX1 \_right3_reg[4]  ( .D(n478), .CLK(clock), .Q(_right3[4]), .QN(n445) );
  DFFX1 \_right3_reg[3]  ( .D(n479), .CLK(clock), .Q(_right3[3]), .QN(n444) );
  DFFX1 \_right3_reg[2]  ( .D(n480), .CLK(clock), .Q(_right3[2]), .QN(n443) );
  DFFX1 \_right3_reg[1]  ( .D(n481), .CLK(clock), .Q(_right3[1]), .QN(n442) );
  DFFX1 \_right3_reg[0]  ( .D(n175), .CLK(clock), .Q(_right3[0]), .QN(n440) );
  DFFX1 \epsilon_buf_reg[15]  ( .D(n274), .CLK(clock), .Q(epsilon_buf[15]), 
        .QN(n462) );
  DFFX1 \epsilon_buf_reg[14]  ( .D(n275), .CLK(clock), .Q(epsilon_buf[14]), 
        .QN(n463) );
  DFFX1 \epsilon_buf_reg[13]  ( .D(n276), .CLK(clock), .Q(epsilon_buf[13]), 
        .QN(n464) );
  DFFX1 \epsilon_buf_reg[12]  ( .D(n277), .CLK(clock), .Q(epsilon_buf[12]), 
        .QN(n465) );
  DFFX1 \epsilon_buf_reg[11]  ( .D(n278), .CLK(clock), .Q(epsilon_buf[11]), 
        .QN(n466) );
  DFFX1 \epsilon_buf_reg[10]  ( .D(n279), .CLK(clock), .Q(epsilon_buf[10]), 
        .QN(n467) );
  DFFX1 \epsilon_buf_reg[9]  ( .D(n280), .CLK(clock), .Q(epsilon_buf[9]), .QN(
        n468) );
  DFFX1 \epsilon_buf_reg[8]  ( .D(n281), .CLK(clock), .Q(epsilon_buf[8]), .QN(
        n469) );
  DFFX1 \epsilon_buf_reg[7]  ( .D(n282), .CLK(clock), .Q(epsilon_buf[7]), .QN(
        n470) );
  DFFX1 \epsilon_buf_reg[6]  ( .D(n283), .CLK(clock), .Q(epsilon_buf[6]), .QN(
        n471) );
  DFFX1 \epsilon_buf_reg[5]  ( .D(n284), .CLK(clock), .Q(epsilon_buf[5]), .QN(
        n472) );
  DFFX1 \epsilon_buf_reg[4]  ( .D(n285), .CLK(clock), .Q(epsilon_buf[4]), .QN(
        n473) );
  DFFX1 \epsilon_buf_reg[3]  ( .D(n286), .CLK(clock), .Q(epsilon_buf[3]), .QN(
        n474) );
  DFFX1 \epsilon_buf_reg[2]  ( .D(n287), .CLK(clock), .Q(epsilon_buf[2]), .QN(
        n475) );
  DFFX1 \epsilon_buf_reg[1]  ( .D(n288), .CLK(clock), .Q(epsilon_buf[1]), .QN(
        n476) );
  DFFX1 \epsilon_buf_reg[0]  ( .D(n289), .CLK(clock), .Q(epsilon_buf[0]), .QN(
        n477) );
  DFFX1 \address_count_reg[0]  ( .D(n140), .CLK(clock), .Q(address[0]), .QN(
        n441) );
  OR2X1 U3 ( .IN1(n342), .IN2(n12), .Q(n1) );
  INVX0 U4 ( .INP(n315), .ZN(n5) );
  INVX0 U5 ( .INP(n99), .ZN(n8) );
  INVX0 U6 ( .INP(n99), .ZN(n7) );
  INVX0 U7 ( .INP(n99), .ZN(n6) );
  INVX0 U8 ( .INP(n98), .ZN(n347) );
  INVX0 U9 ( .INP(n318), .ZN(n314) );
  INVX0 U10 ( .INP(n324), .ZN(n379) );
  INVX0 U11 ( .INP(n5), .ZN(n3) );
  INVX0 U12 ( .INP(n1), .ZN(n9) );
  INVX0 U13 ( .INP(n1), .ZN(n10) );
  INVX0 U14 ( .INP(n1), .ZN(n11) );
  NOR2X0 U15 ( .IN1(n349), .IN2(n12), .QN(n2) );
  NOR2X0 U16 ( .IN1(n369), .IN2(n12), .QN(n102) );
  NOR2X0 U17 ( .IN1(n349), .IN2(n12), .QN(n348) );
  NOR2X0 U18 ( .IN1(n312), .IN2(n12), .QN(n311) );
  INVX0 U20 ( .INP(nrst), .ZN(n12) );
  INVX0 U21 ( .INP(n358), .ZN(n359) );
  NOR2X0 U22 ( .IN1(n376), .IN2(n309), .QN(n320) );
  NOR2X0 U23 ( .IN1(n308), .IN2(n309), .QN(n100) );
  AND3X1 U24 ( .IN1(n377), .IN2(n375), .IN3(nrst), .Q(n380) );
  NOR2X0 U25 ( .IN1(n313), .IN2(n309), .QN(n310) );
  INVX0 U26 ( .INP(n375), .ZN(n381) );
  AOI221X1 U27 ( .IN1(n322), .IN2(n323), .IN3(n462), .IN4(epsilon_step[15]), 
        .IN5(n324), .QN(n321) );
  INVX0 U28 ( .INP(rng_address[2]), .ZN(N121) );
  INVX0 U29 ( .INP(bestneighborID[1]), .ZN(n97) );
  INVX0 U30 ( .INP(MY_NODE_ID[0]), .ZN(n95) );
  INVX0 U31 ( .INP(MY_NODE_ID[1]), .ZN(n96) );
  XNOR2X1 U32 ( .IN1(rng_address[9]), .IN2(\add_121/carry[10] ), .Q(N128) );
  OR2X1 U33 ( .IN1(rng_address[8]), .IN2(\add_121/carry[9] ), .Q(
        \add_121/carry[10] ) );
  XNOR2X1 U34 ( .IN1(\add_121/carry[9] ), .IN2(rng_address[8]), .Q(N127) );
  AND2X1 U35 ( .IN1(\add_121/carry[8] ), .IN2(rng_address[7]), .Q(
        \add_121/carry[9] ) );
  XOR2X1 U36 ( .IN1(rng_address[7]), .IN2(\add_121/carry[8] ), .Q(N126) );
  AND2X1 U37 ( .IN1(\add_121/carry[7] ), .IN2(rng_address[6]), .Q(
        \add_121/carry[8] ) );
  XOR2X1 U38 ( .IN1(rng_address[6]), .IN2(\add_121/carry[7] ), .Q(N125) );
  OR2X1 U39 ( .IN1(rng_address[5]), .IN2(\add_121/carry[6] ), .Q(
        \add_121/carry[7] ) );
  XNOR2X1 U40 ( .IN1(\add_121/carry[6] ), .IN2(rng_address[5]), .Q(N124) );
  OR2X1 U41 ( .IN1(rng_address[4]), .IN2(\add_121/carry[5] ), .Q(
        \add_121/carry[6] ) );
  XNOR2X1 U42 ( .IN1(\add_121/carry[5] ), .IN2(rng_address[4]), .Q(N123) );
  AND2X1 U43 ( .IN1(rng_address[2]), .IN2(rng_address[3]), .Q(
        \add_121/carry[5] ) );
  XOR2X1 U44 ( .IN1(rng_address[3]), .IN2(rng_address[2]), .Q(N122) );
  XOR2X1 U45 ( .IN1(\add_173/carry[31] ), .IN2(N229), .Q(N261) );
  AND2X1 U46 ( .IN1(N213), .IN2(N235), .Q(\add_173/carry[16] ) );
  XOR2X1 U47 ( .IN1(N235), .IN2(N213), .Q(N245) );
  AND2X1 U48 ( .IN1(n41), .IN2(_right[16]), .Q(n13) );
  NOR4X0 U49 ( .IN1(_right[11]), .IN2(_right[10]), .IN3(_right[0]), .IN4(n13), 
        .QN(n18) );
  NOR4X0 U50 ( .IN1(_right[15]), .IN2(_right[14]), .IN3(_right[13]), .IN4(
        _right[12]), .QN(n17) );
  NOR4X0 U51 ( .IN1(_right[4]), .IN2(_right[3]), .IN3(_right[2]), .IN4(
        _right[1]), .QN(n16) );
  OR2X1 U52 ( .IN1(_right[6]), .IN2(_right[5]), .Q(n14) );
  NOR4X0 U53 ( .IN1(n14), .IN2(_right[7]), .IN3(_right[9]), .IN4(_right[8]), 
        .QN(n15) );
  NAND4X0 U54 ( .IN1(n18), .IN2(n17), .IN3(n16), .IN4(n15), .QN(n19) );
  OA221X1 U55 ( .IN1(_right[17]), .IN2(n72), .IN3(_right[16]), .IN4(n41), 
        .IN5(n19), .Q(n20) );
  AO221X1 U56 ( .IN1(_right[17]), .IN2(n72), .IN3(_right[18]), .IN4(n71), 
        .IN5(n20), .Q(n21) );
  OA221X1 U57 ( .IN1(_right[19]), .IN2(n40), .IN3(_right[18]), .IN4(n71), 
        .IN5(n21), .Q(n22) );
  AO221X1 U58 ( .IN1(_right[19]), .IN2(n40), .IN3(_right[20]), .IN4(n70), 
        .IN5(n22), .Q(n23) );
  OA221X1 U59 ( .IN1(_right[21]), .IN2(n69), .IN3(_right[20]), .IN4(n70), 
        .IN5(n23), .Q(n24) );
  AO221X1 U60 ( .IN1(_right[21]), .IN2(n69), .IN3(_right[22]), .IN4(n39), 
        .IN5(n24), .Q(n25) );
  OA221X1 U61 ( .IN1(_right[23]), .IN2(n68), .IN3(_right[22]), .IN4(n39), 
        .IN5(n25), .Q(n26) );
  AO221X1 U62 ( .IN1(_right[23]), .IN2(n68), .IN3(_right[24]), .IN4(n67), 
        .IN5(n26), .Q(n27) );
  OA221X1 U63 ( .IN1(_right[25]), .IN2(n38), .IN3(_right[24]), .IN4(n67), 
        .IN5(n27), .Q(n28) );
  AO221X1 U64 ( .IN1(_right[25]), .IN2(n38), .IN3(_right[26]), .IN4(n37), 
        .IN5(n28), .Q(n29) );
  OA221X1 U65 ( .IN1(_right[27]), .IN2(n66), .IN3(_right[26]), .IN4(n37), 
        .IN5(n29), .Q(n30) );
  AO221X1 U66 ( .IN1(_right[27]), .IN2(n66), .IN3(_right[28]), .IN4(n36), 
        .IN5(n30), .Q(n31) );
  OA221X1 U67 ( .IN1(_right[29]), .IN2(n65), .IN3(_right[28]), .IN4(n36), 
        .IN5(n31), .Q(n32) );
  AO221X1 U68 ( .IN1(_right[29]), .IN2(n65), .IN3(_right[30]), .IN4(n64), 
        .IN5(n32), .Q(n33) );
  OA221X1 U69 ( .IN1(_right[31]), .IN2(n35), .IN3(_right[30]), .IN4(n64), 
        .IN5(n33), .Q(n34) );
  AO21X1 U70 ( .IN1(_right[31]), .IN2(n35), .IN3(n34), .Q(N196) );
  AND2X1 U71 ( .IN1(n41), .IN2(_right3[16]), .Q(n42) );
  NOR4X0 U72 ( .IN1(_right3[11]), .IN2(_right3[10]), .IN3(_right3[0]), .IN4(
        n42), .QN(n47) );
  NOR4X0 U73 ( .IN1(_right3[15]), .IN2(_right3[14]), .IN3(_right3[13]), .IN4(
        _right3[12]), .QN(n46) );
  NOR4X0 U74 ( .IN1(_right3[4]), .IN2(_right3[3]), .IN3(_right3[2]), .IN4(
        _right3[1]), .QN(n45) );
  OR2X1 U75 ( .IN1(_right3[6]), .IN2(_right3[5]), .Q(n43) );
  NOR4X0 U76 ( .IN1(n43), .IN2(_right3[7]), .IN3(_right3[9]), .IN4(_right3[8]), 
        .QN(n44) );
  NAND4X0 U77 ( .IN1(n47), .IN2(n46), .IN3(n45), .IN4(n44), .QN(n48) );
  OA221X1 U78 ( .IN1(_right3[17]), .IN2(n72), .IN3(_right3[16]), .IN4(n41), 
        .IN5(n48), .Q(n49) );
  AO221X1 U79 ( .IN1(_right3[17]), .IN2(n72), .IN3(_right3[18]), .IN4(n71), 
        .IN5(n49), .Q(n50) );
  OA221X1 U80 ( .IN1(_right3[19]), .IN2(n40), .IN3(_right3[18]), .IN4(n71), 
        .IN5(n50), .Q(n51) );
  AO221X1 U81 ( .IN1(_right3[19]), .IN2(n40), .IN3(_right3[20]), .IN4(n70), 
        .IN5(n51), .Q(n52) );
  OA221X1 U82 ( .IN1(_right3[21]), .IN2(n69), .IN3(_right3[20]), .IN4(n70), 
        .IN5(n52), .Q(n53) );
  AO221X1 U83 ( .IN1(_right3[21]), .IN2(n69), .IN3(_right3[22]), .IN4(n39), 
        .IN5(n53), .Q(n54) );
  OA221X1 U84 ( .IN1(_right3[23]), .IN2(n68), .IN3(_right3[22]), .IN4(n39), 
        .IN5(n54), .Q(n55) );
  AO221X1 U85 ( .IN1(_right3[23]), .IN2(n68), .IN3(_right3[24]), .IN4(n67), 
        .IN5(n55), .Q(n56) );
  OA221X1 U86 ( .IN1(_right3[25]), .IN2(n38), .IN3(_right3[24]), .IN4(n67), 
        .IN5(n56), .Q(n57) );
  AO221X1 U87 ( .IN1(_right3[25]), .IN2(n38), .IN3(_right3[26]), .IN4(n37), 
        .IN5(n57), .Q(n58) );
  OA221X1 U88 ( .IN1(_right3[27]), .IN2(n66), .IN3(_right3[26]), .IN4(n37), 
        .IN5(n58), .Q(n59) );
  AO221X1 U89 ( .IN1(_right3[27]), .IN2(n66), .IN3(_right3[28]), .IN4(n36), 
        .IN5(n59), .Q(n60) );
  OA221X1 U90 ( .IN1(_right3[29]), .IN2(n65), .IN3(_right3[28]), .IN4(n36), 
        .IN5(n60), .Q(n61) );
  AO221X1 U91 ( .IN1(_right3[29]), .IN2(n65), .IN3(_right3[30]), .IN4(n64), 
        .IN5(n61), .Q(n62) );
  OA221X1 U92 ( .IN1(_right3[31]), .IN2(n35), .IN3(_right3[30]), .IN4(n64), 
        .IN5(n62), .Q(n63) );
  AO21X1 U93 ( .IN1(_right3[31]), .IN2(n35), .IN3(n63), .Q(N262) );
  XOR2X1 U94 ( .IN1(MY_NODE_ID[15]), .IN2(bestneighborID[15]), .Q(n78) );
  XOR2X1 U95 ( .IN1(MY_NODE_ID[2]), .IN2(bestneighborID[2]), .Q(n77) );
  NOR2X0 U96 ( .IN1(n95), .IN2(bestneighborID[0]), .QN(n73) );
  OA22X1 U97 ( .IN1(MY_NODE_ID[1]), .IN2(n73), .IN3(n73), .IN4(n97), .Q(n76)
         );
  AND2X1 U98 ( .IN1(bestneighborID[0]), .IN2(n95), .Q(n74) );
  OA22X1 U99 ( .IN1(n74), .IN2(n96), .IN3(bestneighborID[1]), .IN4(n74), .Q(
        n75) );
  OR4X1 U100 ( .IN1(n78), .IN2(n77), .IN3(n76), .IN4(n75), .Q(n94) );
  XNOR2X1 U101 ( .IN1(MY_NODE_ID[6]), .IN2(bestneighborID[6]), .Q(n82) );
  XNOR2X1 U102 ( .IN1(MY_NODE_ID[5]), .IN2(bestneighborID[5]), .Q(n81) );
  XNOR2X1 U103 ( .IN1(MY_NODE_ID[4]), .IN2(bestneighborID[4]), .Q(n80) );
  XNOR2X1 U104 ( .IN1(MY_NODE_ID[3]), .IN2(bestneighborID[3]), .Q(n79) );
  NAND4X0 U105 ( .IN1(n82), .IN2(n81), .IN3(n80), .IN4(n79), .QN(n93) );
  XNOR2X1 U106 ( .IN1(MY_NODE_ID[10]), .IN2(bestneighborID[10]), .Q(n86) );
  XNOR2X1 U107 ( .IN1(MY_NODE_ID[9]), .IN2(bestneighborID[9]), .Q(n85) );
  XNOR2X1 U108 ( .IN1(MY_NODE_ID[8]), .IN2(bestneighborID[8]), .Q(n84) );
  XNOR2X1 U109 ( .IN1(MY_NODE_ID[7]), .IN2(bestneighborID[7]), .Q(n83) );
  NAND4X0 U110 ( .IN1(n86), .IN2(n85), .IN3(n84), .IN4(n83), .QN(n92) );
  XNOR2X1 U111 ( .IN1(MY_NODE_ID[14]), .IN2(bestneighborID[14]), .Q(n90) );
  XNOR2X1 U112 ( .IN1(MY_NODE_ID[13]), .IN2(bestneighborID[13]), .Q(n89) );
  XNOR2X1 U113 ( .IN1(MY_NODE_ID[12]), .IN2(bestneighborID[12]), .Q(n88) );
  XNOR2X1 U114 ( .IN1(MY_NODE_ID[11]), .IN2(bestneighborID[11]), .Q(n87) );
  NAND4X0 U115 ( .IN1(n90), .IN2(n89), .IN3(n88), .IN4(n87), .QN(n91) );
  NOR4X0 U116 ( .IN1(n94), .IN2(n93), .IN3(n92), .IN4(n91), .QN(N263) );
  NOR2X0 U117 ( .IN1(n445), .IN2(n98), .QN(n478) );
  NOR2X0 U118 ( .IN1(n444), .IN2(n98), .QN(n479) );
  NOR2X0 U119 ( .IN1(n443), .IN2(n98), .QN(n480) );
  NOR2X0 U120 ( .IN1(n442), .IN2(n98), .QN(n481) );
  NOR2X0 U121 ( .IN1(n439), .IN2(n99), .QN(n306) );
  AO22X1 U122 ( .IN1(n100), .IN2(n101), .IN3(rng_out_4bit[0]), .IN4(n102), .Q(
        n305) );
  AO22X1 U123 ( .IN1(n100), .IN2(n103), .IN3(rng_out_4bit[1]), .IN4(n102), .Q(
        n304) );
  AO22X1 U124 ( .IN1(n100), .IN2(n104), .IN3(rng_out_4bit[2]), .IN4(n102), .Q(
        n303) );
  AO22X1 U125 ( .IN1(n100), .IN2(n105), .IN3(rng_out_4bit[3]), .IN4(n102), .Q(
        n302) );
  AO22X1 U126 ( .IN1(n100), .IN2(n106), .IN3(rng_out_4bit[4]), .IN4(n102), .Q(
        n301) );
  AO22X1 U127 ( .IN1(n100), .IN2(n107), .IN3(rng_out_4bit[5]), .IN4(n102), .Q(
        n300) );
  AO22X1 U128 ( .IN1(n100), .IN2(n108), .IN3(rng_out_4bit[6]), .IN4(n102), .Q(
        n299) );
  AO22X1 U129 ( .IN1(n100), .IN2(n109), .IN3(rng_out_4bit[7]), .IN4(n102), .Q(
        n298) );
  AO22X1 U130 ( .IN1(n100), .IN2(n110), .IN3(rng_out_4bit[8]), .IN4(n102), .Q(
        n297) );
  AO22X1 U131 ( .IN1(n100), .IN2(n111), .IN3(rng_out_4bit[9]), .IN4(n102), .Q(
        n296) );
  AO22X1 U132 ( .IN1(n100), .IN2(n112), .IN3(rng_out_4bit[10]), .IN4(n102), 
        .Q(n295) );
  AO22X1 U133 ( .IN1(n100), .IN2(n171), .IN3(rng_out_4bit[11]), .IN4(n102), 
        .Q(n294) );
  AO22X1 U134 ( .IN1(n100), .IN2(n172), .IN3(rng_out_4bit[12]), .IN4(n102), 
        .Q(n293) );
  AO22X1 U135 ( .IN1(n100), .IN2(n173), .IN3(rng_out_4bit[13]), .IN4(n102), 
        .Q(n292) );
  AO22X1 U136 ( .IN1(n100), .IN2(n174), .IN3(rng_out_4bit[14]), .IN4(n102), 
        .Q(n291) );
  AO22X1 U137 ( .IN1(n100), .IN2(n307), .IN3(rng_out_4bit[15]), .IN4(n102), 
        .Q(n290) );
  AO22X1 U138 ( .IN1(n310), .IN2(epsilon_buf[0]), .IN3(data_in[0]), .IN4(n311), 
        .Q(n289) );
  AO22X1 U139 ( .IN1(n310), .IN2(epsilon_buf[1]), .IN3(data_in[1]), .IN4(n311), 
        .Q(n288) );
  AO22X1 U140 ( .IN1(n310), .IN2(epsilon_buf[2]), .IN3(data_in[2]), .IN4(n311), 
        .Q(n287) );
  AO22X1 U141 ( .IN1(n310), .IN2(epsilon_buf[3]), .IN3(data_in[3]), .IN4(n311), 
        .Q(n286) );
  AO22X1 U142 ( .IN1(n310), .IN2(epsilon_buf[4]), .IN3(data_in[4]), .IN4(n311), 
        .Q(n285) );
  AO22X1 U143 ( .IN1(n310), .IN2(epsilon_buf[5]), .IN3(data_in[5]), .IN4(n311), 
        .Q(n284) );
  AO22X1 U144 ( .IN1(n310), .IN2(epsilon_buf[6]), .IN3(data_in[6]), .IN4(n311), 
        .Q(n283) );
  AO22X1 U145 ( .IN1(n310), .IN2(epsilon_buf[7]), .IN3(data_in[7]), .IN4(n311), 
        .Q(n282) );
  AO22X1 U146 ( .IN1(n310), .IN2(epsilon_buf[8]), .IN3(data_in[8]), .IN4(n311), 
        .Q(n281) );
  AO22X1 U147 ( .IN1(n310), .IN2(epsilon_buf[9]), .IN3(data_in[9]), .IN4(n311), 
        .Q(n280) );
  AO22X1 U148 ( .IN1(n310), .IN2(epsilon_buf[10]), .IN3(data_in[10]), .IN4(
        n311), .Q(n279) );
  AO22X1 U149 ( .IN1(n310), .IN2(epsilon_buf[11]), .IN3(data_in[11]), .IN4(
        n311), .Q(n278) );
  AO22X1 U150 ( .IN1(n310), .IN2(epsilon_buf[12]), .IN3(data_in[12]), .IN4(
        n311), .Q(n277) );
  AO22X1 U151 ( .IN1(n310), .IN2(epsilon_buf[13]), .IN3(data_in[13]), .IN4(
        n311), .Q(n276) );
  AO22X1 U152 ( .IN1(n310), .IN2(epsilon_buf[14]), .IN3(data_in[14]), .IN4(
        n311), .Q(n275) );
  AO22X1 U153 ( .IN1(n310), .IN2(epsilon_buf[15]), .IN3(data_in[15]), .IN4(
        n311), .Q(n274) );
  AO22X1 U154 ( .IN1(which[0]), .IN2(n314), .IN3(n3), .IN4(rng_out_4bit[0]), 
        .Q(n273) );
  AO22X1 U155 ( .IN1(n314), .IN2(betterNeighborCount[0]), .IN3(n3), .IN4(
        data_in[0]), .Q(n272) );
  AO22X1 U156 ( .IN1(n314), .IN2(betterNeighborCount[1]), .IN3(n3), .IN4(
        data_in[1]), .Q(n271) );
  AO22X1 U157 ( .IN1(n314), .IN2(betterNeighborCount[2]), .IN3(n3), .IN4(
        data_in[2]), .Q(n270) );
  AO22X1 U158 ( .IN1(n314), .IN2(betterNeighborCount[3]), .IN3(n3), .IN4(
        data_in[3]), .Q(n269) );
  AO22X1 U159 ( .IN1(n314), .IN2(betterNeighborCount[4]), .IN3(n3), .IN4(
        data_in[4]), .Q(n268) );
  AO22X1 U160 ( .IN1(n314), .IN2(betterNeighborCount[5]), .IN3(n3), .IN4(
        data_in[5]), .Q(n267) );
  AO22X1 U161 ( .IN1(n314), .IN2(betterNeighborCount[6]), .IN3(n3), .IN4(
        data_in[6]), .Q(n266) );
  AO22X1 U162 ( .IN1(n314), .IN2(betterNeighborCount[7]), .IN3(n3), .IN4(
        data_in[7]), .Q(n265) );
  AO22X1 U163 ( .IN1(n314), .IN2(betterNeighborCount[8]), .IN3(n315), .IN4(
        data_in[8]), .Q(n264) );
  AO22X1 U164 ( .IN1(n314), .IN2(betterNeighborCount[9]), .IN3(n315), .IN4(
        data_in[9]), .Q(n263) );
  AO22X1 U165 ( .IN1(n314), .IN2(betterNeighborCount[10]), .IN3(n315), .IN4(
        data_in[10]), .Q(n262) );
  AO22X1 U166 ( .IN1(n314), .IN2(betterNeighborCount[11]), .IN3(n315), .IN4(
        data_in[11]), .Q(n261) );
  AO22X1 U167 ( .IN1(n314), .IN2(betterNeighborCount[12]), .IN3(n315), .IN4(
        data_in[12]), .Q(n260) );
  AO22X1 U168 ( .IN1(n314), .IN2(betterNeighborCount[13]), .IN3(n315), .IN4(
        data_in[13]), .Q(n259) );
  AO22X1 U169 ( .IN1(n314), .IN2(betterNeighborCount[14]), .IN3(n315), .IN4(
        data_in[14]), .Q(n258) );
  AO22X1 U170 ( .IN1(n314), .IN2(betterNeighborCount[15]), .IN3(n315), .IN4(
        data_in[15]), .Q(n257) );
  AO22X1 U171 ( .IN1(which[1]), .IN2(n314), .IN3(n315), .IN4(rng_out_4bit[1]), 
        .Q(n256) );
  AO22X1 U172 ( .IN1(which[2]), .IN2(n314), .IN3(n315), .IN4(rng_out_4bit[2]), 
        .Q(n255) );
  AO22X1 U173 ( .IN1(which[3]), .IN2(n314), .IN3(n315), .IN4(rng_out_4bit[3]), 
        .Q(n254) );
  AO22X1 U174 ( .IN1(which[4]), .IN2(n314), .IN3(n3), .IN4(rng_out_4bit[4]), 
        .Q(n253) );
  AO22X1 U175 ( .IN1(which[5]), .IN2(n314), .IN3(n3), .IN4(rng_out_4bit[5]), 
        .Q(n252) );
  AO22X1 U176 ( .IN1(which[6]), .IN2(n314), .IN3(n3), .IN4(rng_out_4bit[6]), 
        .Q(n251) );
  AO22X1 U177 ( .IN1(which[7]), .IN2(n314), .IN3(n3), .IN4(rng_out_4bit[7]), 
        .Q(n250) );
  AO22X1 U178 ( .IN1(which[8]), .IN2(n314), .IN3(n3), .IN4(rng_out_4bit[8]), 
        .Q(n249) );
  AO22X1 U179 ( .IN1(which[9]), .IN2(n314), .IN3(n315), .IN4(rng_out_4bit[9]), 
        .Q(n248) );
  AO22X1 U180 ( .IN1(which[10]), .IN2(n314), .IN3(n3), .IN4(rng_out_4bit[10]), 
        .Q(n247) );
  AO22X1 U181 ( .IN1(which[11]), .IN2(n314), .IN3(n315), .IN4(rng_out_4bit[11]), .Q(n246) );
  AO22X1 U182 ( .IN1(which[12]), .IN2(n314), .IN3(n315), .IN4(rng_out_4bit[12]), .Q(n245) );
  AO22X1 U183 ( .IN1(which[13]), .IN2(n314), .IN3(n315), .IN4(rng_out_4bit[13]), .Q(n244) );
  AO22X1 U184 ( .IN1(which[14]), .IN2(n314), .IN3(n315), .IN4(rng_out_4bit[14]), .Q(n243) );
  AO22X1 U185 ( .IN1(which[15]), .IN2(n314), .IN3(n315), .IN4(rng_out_4bit[15]), .Q(n242) );
  NAND2X0 U186 ( .IN1(n5), .IN2(n316), .QN(n241) );
  NAND3X0 U187 ( .IN1(n314), .IN2(n317), .IN3(start_rngAddress), .QN(n316) );
  NOR2X0 U188 ( .IN1(n319), .IN2(n12), .QN(n315) );
  AO22X1 U189 ( .IN1(n320), .IN2(data_out[0]), .IN3(N132), .IN4(n321), .Q(n240) );
  AO22X1 U190 ( .IN1(n320), .IN2(data_out[1]), .IN3(N133), .IN4(n321), .Q(n239) );
  AO22X1 U191 ( .IN1(n320), .IN2(data_out[2]), .IN3(N134), .IN4(n321), .Q(n238) );
  AO22X1 U192 ( .IN1(n320), .IN2(data_out[3]), .IN3(N135), .IN4(n321), .Q(n237) );
  AO22X1 U193 ( .IN1(n320), .IN2(data_out[4]), .IN3(N136), .IN4(n321), .Q(n236) );
  AO22X1 U194 ( .IN1(n320), .IN2(data_out[5]), .IN3(N137), .IN4(n321), .Q(n235) );
  AO22X1 U195 ( .IN1(n320), .IN2(data_out[6]), .IN3(N138), .IN4(n321), .Q(n234) );
  AO22X1 U196 ( .IN1(n320), .IN2(data_out[7]), .IN3(N139), .IN4(n321), .Q(n233) );
  AO22X1 U197 ( .IN1(n320), .IN2(data_out[8]), .IN3(N140), .IN4(n321), .Q(n232) );
  AO22X1 U198 ( .IN1(n320), .IN2(data_out[9]), .IN3(N141), .IN4(n321), .Q(n231) );
  AO22X1 U199 ( .IN1(n320), .IN2(data_out[10]), .IN3(N142), .IN4(n321), .Q(
        n230) );
  AO22X1 U200 ( .IN1(n320), .IN2(data_out[11]), .IN3(N143), .IN4(n321), .Q(
        n229) );
  AO22X1 U201 ( .IN1(n320), .IN2(data_out[12]), .IN3(N144), .IN4(n321), .Q(
        n228) );
  AO22X1 U202 ( .IN1(n320), .IN2(data_out[13]), .IN3(N145), .IN4(n321), .Q(
        n227) );
  AO22X1 U203 ( .IN1(n320), .IN2(data_out[14]), .IN3(N146), .IN4(n321), .Q(
        n226) );
  AO22X1 U204 ( .IN1(n320), .IN2(data_out[15]), .IN3(N147), .IN4(n321), .Q(
        n225) );
  OR2X1 U205 ( .IN1(n462), .IN2(epsilon_step[15]), .Q(n323) );
  AO21X1 U206 ( .IN1(n463), .IN2(epsilon_step[14]), .IN3(n325), .Q(n322) );
  OA221X1 U207 ( .IN1(epsilon_step[13]), .IN2(n464), .IN3(epsilon_step[14]), 
        .IN4(n463), .IN5(n326), .Q(n325) );
  AO221X1 U208 ( .IN1(n465), .IN2(epsilon_step[12]), .IN3(n464), .IN4(
        epsilon_step[13]), .IN5(n327), .Q(n326) );
  OA221X1 U209 ( .IN1(epsilon_step[11]), .IN2(n466), .IN3(epsilon_step[12]), 
        .IN4(n465), .IN5(n328), .Q(n327) );
  AO221X1 U210 ( .IN1(n467), .IN2(epsilon_step[10]), .IN3(n466), .IN4(
        epsilon_step[11]), .IN5(n329), .Q(n328) );
  OA221X1 U211 ( .IN1(epsilon_step[9]), .IN2(n468), .IN3(epsilon_step[10]), 
        .IN4(n467), .IN5(n330), .Q(n329) );
  AO221X1 U212 ( .IN1(n469), .IN2(epsilon_step[8]), .IN3(n468), .IN4(
        epsilon_step[9]), .IN5(n331), .Q(n330) );
  OA221X1 U213 ( .IN1(epsilon_step[7]), .IN2(n470), .IN3(epsilon_step[8]), 
        .IN4(n469), .IN5(n332), .Q(n331) );
  AO221X1 U214 ( .IN1(n471), .IN2(epsilon_step[6]), .IN3(n470), .IN4(
        epsilon_step[7]), .IN5(n333), .Q(n332) );
  OA221X1 U215 ( .IN1(epsilon_step[5]), .IN2(n472), .IN3(epsilon_step[6]), 
        .IN4(n471), .IN5(n334), .Q(n333) );
  AO221X1 U216 ( .IN1(n473), .IN2(epsilon_step[4]), .IN3(n472), .IN4(
        epsilon_step[5]), .IN5(n335), .Q(n334) );
  OA221X1 U217 ( .IN1(epsilon_step[3]), .IN2(n474), .IN3(epsilon_step[4]), 
        .IN4(n473), .IN5(n336), .Q(n335) );
  AO222X1 U218 ( .IN1(epsilon_step[2]), .IN2(n337), .IN3(n475), .IN4(n338), 
        .IN5(n474), .IN6(epsilon_step[3]), .Q(n336) );
  OR2X1 U219 ( .IN1(n337), .IN2(epsilon_step[2]), .Q(n338) );
  AO22X1 U220 ( .IN1(n476), .IN2(epsilon_step[1]), .IN3(n339), .IN4(n477), .Q(
        n337) );
  OA21X1 U221 ( .IN1(epsilon_step[1]), .IN2(n476), .IN3(epsilon_step[0]), .Q(
        n339) );
  NAND2X0 U222 ( .IN1(n324), .IN2(n340), .QN(n224) );
  NAND3X0 U223 ( .IN1(n320), .IN2(n341), .IN3(wr_en), .QN(n340) );
  AO22X1 U224 ( .IN1(n6), .IN2(_left[16]), .IN3(bestvalue[0]), .IN4(n9), .Q(
        n223) );
  AO22X1 U225 ( .IN1(n6), .IN2(_left[17]), .IN3(bestvalue[1]), .IN4(n10), .Q(
        n222) );
  AO22X1 U226 ( .IN1(n6), .IN2(_left[18]), .IN3(bestvalue[2]), .IN4(n11), .Q(
        n221) );
  AO22X1 U227 ( .IN1(n6), .IN2(_left[19]), .IN3(bestvalue[3]), .IN4(n9), .Q(
        n220) );
  AO22X1 U228 ( .IN1(n6), .IN2(_left[20]), .IN3(bestvalue[4]), .IN4(n10), .Q(
        n219) );
  AO22X1 U229 ( .IN1(n6), .IN2(_left[21]), .IN3(bestvalue[5]), .IN4(n11), .Q(
        n218) );
  AO22X1 U230 ( .IN1(n6), .IN2(_left[22]), .IN3(bestvalue[6]), .IN4(n9), .Q(
        n217) );
  AO22X1 U231 ( .IN1(n6), .IN2(_left[23]), .IN3(bestvalue[7]), .IN4(n10), .Q(
        n216) );
  AO22X1 U232 ( .IN1(n6), .IN2(_left[24]), .IN3(bestvalue[8]), .IN4(n11), .Q(
        n215) );
  AO22X1 U233 ( .IN1(n6), .IN2(_left[25]), .IN3(bestvalue[9]), .IN4(n9), .Q(
        n214) );
  AO22X1 U234 ( .IN1(n6), .IN2(_left[26]), .IN3(bestvalue[10]), .IN4(n10), .Q(
        n213) );
  AO22X1 U235 ( .IN1(n6), .IN2(_left[27]), .IN3(bestvalue[11]), .IN4(n11), .Q(
        n212) );
  AO22X1 U236 ( .IN1(n7), .IN2(_left[28]), .IN3(bestvalue[12]), .IN4(n11), .Q(
        n211) );
  AO22X1 U237 ( .IN1(n7), .IN2(_left[29]), .IN3(bestvalue[13]), .IN4(n11), .Q(
        n210) );
  AO22X1 U238 ( .IN1(n7), .IN2(_left[30]), .IN3(bestvalue[14]), .IN4(n11), .Q(
        n209) );
  AO22X1 U239 ( .IN1(n7), .IN2(_left[31]), .IN3(bestvalue[15]), .IN4(n11), .Q(
        n208) );
  AO22X1 U240 ( .IN1(n7), .IN2(_right[1]), .IN3(N165), .IN4(n11), .Q(n207) );
  AO22X1 U241 ( .IN1(n7), .IN2(_right[2]), .IN3(N166), .IN4(n11), .Q(n206) );
  AO22X1 U242 ( .IN1(n7), .IN2(_right[3]), .IN3(N167), .IN4(n11), .Q(n205) );
  AO22X1 U243 ( .IN1(n7), .IN2(_right[4]), .IN3(N168), .IN4(n11), .Q(n204) );
  AO22X1 U244 ( .IN1(n7), .IN2(_right[5]), .IN3(N169), .IN4(n11), .Q(n203) );
  AO22X1 U245 ( .IN1(n7), .IN2(_right[6]), .IN3(N170), .IN4(n11), .Q(n202) );
  AO22X1 U246 ( .IN1(n7), .IN2(_right[7]), .IN3(N171), .IN4(n11), .Q(n201) );
  AO22X1 U247 ( .IN1(n7), .IN2(_right[8]), .IN3(N172), .IN4(n10), .Q(n200) );
  AO22X1 U248 ( .IN1(n8), .IN2(_right[9]), .IN3(N173), .IN4(n10), .Q(n199) );
  AO22X1 U249 ( .IN1(n8), .IN2(_right[10]), .IN3(N174), .IN4(n10), .Q(n198) );
  AO22X1 U250 ( .IN1(n8), .IN2(_right[11]), .IN3(N175), .IN4(n10), .Q(n197) );
  AO22X1 U251 ( .IN1(n8), .IN2(_right[12]), .IN3(N176), .IN4(n10), .Q(n196) );
  AO22X1 U252 ( .IN1(n8), .IN2(_right[13]), .IN3(N177), .IN4(n10), .Q(n195) );
  AO22X1 U253 ( .IN1(n8), .IN2(_right[14]), .IN3(N178), .IN4(n10), .Q(n194) );
  AO22X1 U254 ( .IN1(n8), .IN2(_right[15]), .IN3(N179), .IN4(n10), .Q(n193) );
  AO22X1 U255 ( .IN1(n8), .IN2(_right[16]), .IN3(N180), .IN4(n10), .Q(n192) );
  AO22X1 U256 ( .IN1(n8), .IN2(_right[17]), .IN3(N181), .IN4(n10), .Q(n191) );
  AO22X1 U257 ( .IN1(n8), .IN2(_right[18]), .IN3(N182), .IN4(n10), .Q(n190) );
  AO22X1 U258 ( .IN1(n8), .IN2(_right[19]), .IN3(N183), .IN4(n10), .Q(n189) );
  AO22X1 U259 ( .IN1(n8), .IN2(_right[20]), .IN3(N184), .IN4(n9), .Q(n188) );
  AO22X1 U260 ( .IN1(n7), .IN2(_right[21]), .IN3(N185), .IN4(n9), .Q(n187) );
  AO22X1 U261 ( .IN1(n8), .IN2(_right[22]), .IN3(N186), .IN4(n9), .Q(n186) );
  AO22X1 U262 ( .IN1(n6), .IN2(_right[23]), .IN3(N187), .IN4(n9), .Q(n185) );
  AO22X1 U263 ( .IN1(n7), .IN2(_right[24]), .IN3(N188), .IN4(n9), .Q(n184) );
  AO22X1 U264 ( .IN1(n8), .IN2(_right[25]), .IN3(N189), .IN4(n9), .Q(n183) );
  AO22X1 U265 ( .IN1(n6), .IN2(_right[26]), .IN3(N190), .IN4(n9), .Q(n182) );
  AO22X1 U266 ( .IN1(n7), .IN2(_right[27]), .IN3(N191), .IN4(n9), .Q(n181) );
  AO22X1 U267 ( .IN1(n8), .IN2(_right[28]), .IN3(N192), .IN4(n9), .Q(n180) );
  AO22X1 U268 ( .IN1(n6), .IN2(_right[29]), .IN3(N193), .IN4(n9), .Q(n179) );
  AO22X1 U269 ( .IN1(n7), .IN2(_right[30]), .IN3(N194), .IN4(n9), .Q(n178) );
  AO22X1 U270 ( .IN1(n8), .IN2(_right[31]), .IN3(N195), .IN4(n9), .Q(n177) );
  NAND2X0 U271 ( .IN1(n342), .IN2(n343), .QN(n99) );
  MUX21X1 U272 ( .IN1(n344), .IN2(n345), .S(n346), .Q(n176) );
  NOR2X0 U273 ( .IN1(N196), .IN2(n12), .QN(n345) );
  AND2X1 U274 ( .IN1(n343), .IN2(one), .Q(n344) );
  NOR2X0 U275 ( .IN1(n440), .IN2(n98), .QN(n175) );
  AO22X1 U276 ( .IN1(n347), .IN2(_right3[5]), .IN3(N235), .IN4(n2), .Q(n170)
         );
  AO22X1 U277 ( .IN1(n347), .IN2(_right3[6]), .IN3(N236), .IN4(n348), .Q(n169)
         );
  AO22X1 U278 ( .IN1(n347), .IN2(_right3[7]), .IN3(N237), .IN4(n2), .Q(n168)
         );
  AO22X1 U279 ( .IN1(n347), .IN2(_right3[8]), .IN3(N238), .IN4(n348), .Q(n167)
         );
  AO22X1 U280 ( .IN1(n347), .IN2(_right3[9]), .IN3(N239), .IN4(n2), .Q(n166)
         );
  AO22X1 U281 ( .IN1(n347), .IN2(_right3[10]), .IN3(N240), .IN4(n348), .Q(n165) );
  AO22X1 U282 ( .IN1(n347), .IN2(_right3[11]), .IN3(N241), .IN4(n2), .Q(n164)
         );
  AO22X1 U283 ( .IN1(n347), .IN2(_right3[12]), .IN3(N242), .IN4(n348), .Q(n163) );
  AO22X1 U284 ( .IN1(n347), .IN2(_right3[13]), .IN3(N243), .IN4(n2), .Q(n162)
         );
  AO22X1 U285 ( .IN1(n347), .IN2(_right3[14]), .IN3(N244), .IN4(n348), .Q(n161) );
  AO22X1 U286 ( .IN1(n347), .IN2(_right3[15]), .IN3(N245), .IN4(n2), .Q(n160)
         );
  AO22X1 U287 ( .IN1(n347), .IN2(_right3[16]), .IN3(N246), .IN4(n348), .Q(n159) );
  AO22X1 U288 ( .IN1(n347), .IN2(_right3[17]), .IN3(N247), .IN4(n2), .Q(n158)
         );
  AO22X1 U289 ( .IN1(n347), .IN2(_right3[18]), .IN3(N248), .IN4(n348), .Q(n157) );
  AO22X1 U290 ( .IN1(n347), .IN2(_right3[19]), .IN3(N249), .IN4(n2), .Q(n156)
         );
  AO22X1 U291 ( .IN1(n347), .IN2(_right3[20]), .IN3(N250), .IN4(n348), .Q(n155) );
  AO22X1 U292 ( .IN1(n347), .IN2(_right3[21]), .IN3(N251), .IN4(n2), .Q(n154)
         );
  AO22X1 U293 ( .IN1(n347), .IN2(_right3[22]), .IN3(N252), .IN4(n348), .Q(n153) );
  AO22X1 U294 ( .IN1(n347), .IN2(_right3[23]), .IN3(N253), .IN4(n2), .Q(n152)
         );
  AO22X1 U295 ( .IN1(n347), .IN2(_right3[24]), .IN3(N254), .IN4(n348), .Q(n151) );
  AO22X1 U296 ( .IN1(n347), .IN2(_right3[25]), .IN3(N255), .IN4(n2), .Q(n150)
         );
  AO22X1 U297 ( .IN1(n347), .IN2(_right3[26]), .IN3(N256), .IN4(n348), .Q(n149) );
  AO22X1 U298 ( .IN1(n347), .IN2(_right3[27]), .IN3(N257), .IN4(n2), .Q(n148)
         );
  AO22X1 U299 ( .IN1(n347), .IN2(_right3[28]), .IN3(N258), .IN4(n348), .Q(n147) );
  AO22X1 U300 ( .IN1(n347), .IN2(_right3[29]), .IN3(N259), .IN4(n2), .Q(n146)
         );
  AO22X1 U301 ( .IN1(n347), .IN2(_right3[30]), .IN3(N260), .IN4(n348), .Q(n145) );
  AO22X1 U302 ( .IN1(n347), .IN2(_right3[31]), .IN3(N261), .IN4(n2), .Q(n144)
         );
  NAND2X0 U303 ( .IN1(n343), .IN2(n349), .QN(n98) );
  MUX21X1 U304 ( .IN1(n350), .IN2(n351), .S(n352), .Q(n143) );
  AND2X1 U305 ( .IN1(N262), .IN2(nrst), .Q(n351) );
  AND2X1 U306 ( .IN1(n343), .IN2(two), .Q(n350) );
  MUX21X1 U307 ( .IN1(n353), .IN2(n354), .S(n352), .Q(n142) );
  INVX0 U308 ( .INP(n355), .ZN(n352) );
  NOR2X0 U309 ( .IN1(N263), .IN2(n12), .QN(n354) );
  AND2X1 U310 ( .IN1(n343), .IN2(three), .Q(n353) );
  AO22X1 U311 ( .IN1(n356), .IN2(nrst), .IN3(n343), .IN4(done_winnerPolicy), 
        .Q(n141) );
  INVX0 U312 ( .INP(n357), .ZN(n356) );
  NOR2X0 U313 ( .IN1(n441), .IN2(n358), .QN(n140) );
  AO22X1 U314 ( .IN1(n359), .IN2(address[1]), .IN3(N119), .IN4(n360), .Q(n139)
         );
  NAND4X0 U315 ( .IN1(n361), .IN2(n362), .IN3(n363), .IN4(n364), .QN(n138) );
  NAND2X0 U316 ( .IN1(N120), .IN2(n360), .QN(n363) );
  NAND2X0 U317 ( .IN1(n359), .IN2(address[2]), .QN(n362) );
  AO221X1 U318 ( .IN1(N121), .IN2(n360), .IN3(n359), .IN4(address[3]), .IN5(
        n365), .Q(n137) );
  AO22X1 U319 ( .IN1(n359), .IN2(address[4]), .IN3(N122), .IN4(n360), .Q(n136)
         );
  AO22X1 U320 ( .IN1(n359), .IN2(address[5]), .IN3(N123), .IN4(n360), .Q(n135)
         );
  AO22X1 U321 ( .IN1(n359), .IN2(address[6]), .IN3(N124), .IN4(n360), .Q(n134)
         );
  AO221X1 U322 ( .IN1(N125), .IN2(n360), .IN3(n359), .IN4(address[7]), .IN5(
        n365), .Q(n133) );
  AO22X1 U323 ( .IN1(n359), .IN2(address[8]), .IN3(N126), .IN4(n360), .Q(n132)
         );
  AO221X1 U324 ( .IN1(N127), .IN2(n360), .IN3(n359), .IN4(address[9]), .IN5(
        n365), .Q(n131) );
  AO221X1 U325 ( .IN1(N128), .IN2(n360), .IN3(n359), .IN4(address[10]), .IN5(
        n365), .Q(n130) );
  INVX0 U326 ( .INP(n364), .ZN(n365) );
  NAND3X0 U327 ( .IN1(nrst), .IN2(n358), .IN3(n366), .QN(n364) );
  AND3X1 U328 ( .IN1(nrst), .IN2(n358), .IN3(n367), .Q(n360) );
  NAND4X0 U329 ( .IN1(n320), .IN2(n368), .IN3(n317), .IN4(n369), .QN(n358) );
  MUX21X1 U330 ( .IN1(n370), .IN2(en_rng), .S(n371), .Q(n129) );
  NOR3X0 U331 ( .IN1(n372), .IN2(n308), .IN3(n318), .QN(n371) );
  NAND2X0 U332 ( .IN1(n319), .IN2(n343), .QN(n318) );
  INVX0 U333 ( .INP(n309), .ZN(n343) );
  OA21X1 U334 ( .IN1(n373), .IN2(n366), .IN3(nrst), .Q(n370) );
  MUX21X1 U335 ( .IN1(nexthop[0]), .IN2(n374), .S(n375), .Q(n128) );
  AO221X1 U336 ( .IN1(n376), .IN2(data_in[0]), .IN3(besthop[0]), .IN4(n377), 
        .IN5(n378), .Q(n374) );
  AO222X1 U337 ( .IN1(n379), .IN2(data_in[1]), .IN3(besthop[1]), .IN4(n380), 
        .IN5(nexthop[1]), .IN6(n381), .Q(n127) );
  AO222X1 U338 ( .IN1(n379), .IN2(data_in[2]), .IN3(besthop[2]), .IN4(n380), 
        .IN5(nexthop[2]), .IN6(n381), .Q(n126) );
  AO222X1 U339 ( .IN1(n379), .IN2(data_in[3]), .IN3(besthop[3]), .IN4(n380), 
        .IN5(nexthop[3]), .IN6(n381), .Q(n125) );
  AO222X1 U340 ( .IN1(n379), .IN2(data_in[4]), .IN3(besthop[4]), .IN4(n380), 
        .IN5(nexthop[4]), .IN6(n381), .Q(n124) );
  AO222X1 U341 ( .IN1(n379), .IN2(data_in[5]), .IN3(besthop[5]), .IN4(n380), 
        .IN5(nexthop[5]), .IN6(n381), .Q(n123) );
  MUX21X1 U342 ( .IN1(nexthop[6]), .IN2(n382), .S(n375), .Q(n122) );
  AO221X1 U343 ( .IN1(n376), .IN2(data_in[6]), .IN3(besthop[6]), .IN4(n377), 
        .IN5(n378), .Q(n382) );
  AO222X1 U344 ( .IN1(n379), .IN2(data_in[7]), .IN3(besthop[7]), .IN4(n380), 
        .IN5(nexthop[7]), .IN6(n381), .Q(n121) );
  AO222X1 U345 ( .IN1(n379), .IN2(data_in[8]), .IN3(besthop[8]), .IN4(n380), 
        .IN5(nexthop[8]), .IN6(n381), .Q(n120) );
  AO222X1 U346 ( .IN1(n379), .IN2(data_in[9]), .IN3(besthop[9]), .IN4(n380), 
        .IN5(nexthop[9]), .IN6(n381), .Q(n119) );
  AO222X1 U347 ( .IN1(n379), .IN2(data_in[10]), .IN3(besthop[10]), .IN4(n380), 
        .IN5(nexthop[10]), .IN6(n381), .Q(n118) );
  AO222X1 U348 ( .IN1(n379), .IN2(data_in[11]), .IN3(besthop[11]), .IN4(n380), 
        .IN5(nexthop[11]), .IN6(n381), .Q(n117) );
  AO222X1 U349 ( .IN1(n379), .IN2(data_in[12]), .IN3(besthop[12]), .IN4(n380), 
        .IN5(nexthop[12]), .IN6(n381), .Q(n116) );
  AO222X1 U350 ( .IN1(n379), .IN2(data_in[13]), .IN3(besthop[13]), .IN4(n380), 
        .IN5(nexthop[13]), .IN6(n381), .Q(n115) );
  AO222X1 U351 ( .IN1(n379), .IN2(data_in[14]), .IN3(besthop[14]), .IN4(n380), 
        .IN5(nexthop[14]), .IN6(n381), .Q(n114) );
  AO222X1 U352 ( .IN1(n379), .IN2(data_in[15]), .IN3(besthop[15]), .IN4(n380), 
        .IN5(nexthop[15]), .IN6(n381), .Q(n113) );
  NAND3X0 U353 ( .IN1(n383), .IN2(n384), .IN3(n320), .QN(n375) );
  OA21X1 U354 ( .IN1(n12), .IN2(en), .IN3(n378), .Q(n309) );
  AO21X1 U355 ( .IN1(n385), .IN2(n386), .IN3(n12), .Q(n378) );
  NAND4X0 U356 ( .IN1(n387), .IN2(three), .IN3(two), .IN4(one), .QN(n384) );
  NAND2X0 U357 ( .IN1(N196), .IN2(n346), .QN(n383) );
  NAND4X0 U358 ( .IN1(n355), .IN2(n341), .IN3(n388), .IN4(n389), .QN(N479) );
  NOR4X0 U359 ( .IN1(n390), .IN2(n387), .IN3(n391), .IN4(n392), .QN(n389) );
  AND2X1 U360 ( .IN1(n346), .IN2(N196), .Q(n391) );
  INVX0 U361 ( .INP(n393), .ZN(n346) );
  INVX0 U362 ( .INP(n394), .ZN(n387) );
  INVX0 U363 ( .INP(n395), .ZN(n390) );
  AND3X1 U364 ( .IN1(n396), .IN2(n349), .IN3(n369), .Q(n388) );
  NAND2X0 U365 ( .IN1(n397), .IN2(n386), .QN(n349) );
  NAND3X0 U366 ( .IN1(n398), .IN2(n1), .IN3(n361), .QN(N478) );
  NOR2X0 U367 ( .IN1(n102), .IN2(n379), .QN(n361) );
  NAND2X0 U368 ( .IN1(n376), .IN2(nrst), .QN(n324) );
  INVX0 U369 ( .INP(n396), .ZN(n376) );
  NAND2X0 U370 ( .IN1(n373), .IN2(n397), .QN(n396) );
  NAND2X0 U371 ( .IN1(nrst), .IN2(n399), .QN(n398) );
  NAND3X0 U372 ( .IN1(n395), .IN2(n317), .IN3(n400), .QN(n399) );
  NAND2X0 U373 ( .IN1(done_rng_address), .IN2(n367), .QN(n317) );
  NAND4X0 U374 ( .IN1(n341), .IN2(n342), .IN3(n401), .IN4(n402), .QN(N477) );
  NOR2X0 U375 ( .IN1(n403), .IN2(n377), .QN(n402) );
  NAND2X0 U376 ( .IN1(n393), .IN2(n394), .QN(n377) );
  NAND2X0 U377 ( .IN1(n404), .IN2(n385), .QN(n394) );
  INVX0 U378 ( .INP(n372), .ZN(n401) );
  NAND2X0 U379 ( .IN1(n395), .IN2(n368), .QN(n372) );
  NAND2X0 U380 ( .IN1(n366), .IN2(n405), .QN(n368) );
  INVX0 U381 ( .INP(n406), .ZN(n366) );
  NAND3X0 U382 ( .IN1(n373), .IN2(n407), .IN3(start_winnerPolicy), .QN(n395)
         );
  NAND2X0 U383 ( .IN1(n404), .IN2(n397), .QN(n342) );
  NAND2X0 U384 ( .IN1(n373), .IN2(n408), .QN(n341) );
  NAND4X0 U385 ( .IN1(n409), .IN2(n400), .IN3(n410), .IN4(n355), .QN(N476) );
  NAND2X0 U386 ( .IN1(n373), .IN2(n385), .QN(n355) );
  NOR2X0 U387 ( .IN1(state[1]), .IN2(state[0]), .QN(n373) );
  NOR2X0 U388 ( .IN1(n308), .IN2(n313), .QN(n410) );
  INVX0 U389 ( .INP(n312), .ZN(n313) );
  NAND2X0 U390 ( .IN1(n408), .IN2(n404), .QN(n312) );
  INVX0 U391 ( .INP(n369), .ZN(n308) );
  NAND2X0 U392 ( .IN1(n411), .IN2(n408), .QN(n369) );
  OA22X1 U393 ( .IN1(n393), .IN2(N196), .IN3(n405), .IN4(n406), .Q(n400) );
  NAND2X0 U394 ( .IN1(n407), .IN2(n404), .QN(n406) );
  NOR2X0 U395 ( .IN1(n412), .IN2(state[1]), .QN(n404) );
  AO21X1 U396 ( .IN1(n446), .IN2(epsilon_buf[15]), .IN3(n413), .Q(n405) );
  OA22X1 U397 ( .IN1(n446), .IN2(epsilon_buf[15]), .IN3(n414), .IN4(n415), .Q(
        n413) );
  NOR2X0 U398 ( .IN1(n463), .IN2(n174), .QN(n415) );
  OA221X1 U399 ( .IN1(n448), .IN2(epsilon_buf[13]), .IN3(n447), .IN4(
        epsilon_buf[14]), .IN5(n416), .Q(n414) );
  AO221X1 U400 ( .IN1(n449), .IN2(epsilon_buf[12]), .IN3(n448), .IN4(
        epsilon_buf[13]), .IN5(n417), .Q(n416) );
  OA221X1 U401 ( .IN1(n450), .IN2(epsilon_buf[11]), .IN3(n449), .IN4(
        epsilon_buf[12]), .IN5(n418), .Q(n417) );
  AO221X1 U402 ( .IN1(n451), .IN2(epsilon_buf[10]), .IN3(n450), .IN4(
        epsilon_buf[11]), .IN5(n419), .Q(n418) );
  OA221X1 U403 ( .IN1(n452), .IN2(epsilon_buf[9]), .IN3(n451), .IN4(
        epsilon_buf[10]), .IN5(n420), .Q(n419) );
  AO221X1 U404 ( .IN1(n453), .IN2(epsilon_buf[8]), .IN3(n452), .IN4(
        epsilon_buf[9]), .IN5(n421), .Q(n420) );
  OA221X1 U405 ( .IN1(n454), .IN2(epsilon_buf[7]), .IN3(n453), .IN4(
        epsilon_buf[8]), .IN5(n422), .Q(n421) );
  AO221X1 U406 ( .IN1(n455), .IN2(epsilon_buf[6]), .IN3(n454), .IN4(
        epsilon_buf[7]), .IN5(n423), .Q(n422) );
  OA221X1 U407 ( .IN1(n456), .IN2(epsilon_buf[5]), .IN3(n455), .IN4(
        epsilon_buf[6]), .IN5(n424), .Q(n423) );
  AO221X1 U408 ( .IN1(n457), .IN2(epsilon_buf[4]), .IN3(n456), .IN4(
        epsilon_buf[5]), .IN5(n425), .Q(n424) );
  OA221X1 U409 ( .IN1(n458), .IN2(epsilon_buf[3]), .IN3(n457), .IN4(
        epsilon_buf[4]), .IN5(n426), .Q(n425) );
  AO222X1 U410 ( .IN1(n427), .IN2(epsilon_buf[2]), .IN3(n459), .IN4(n428), 
        .IN5(n458), .IN6(epsilon_buf[3]), .Q(n426) );
  OR2X1 U411 ( .IN1(n427), .IN2(epsilon_buf[2]), .Q(n428) );
  AO22X1 U412 ( .IN1(n460), .IN2(epsilon_buf[1]), .IN3(n429), .IN4(n461), .Q(
        n427) );
  OA21X1 U413 ( .IN1(n460), .IN2(epsilon_buf[1]), .IN3(epsilon_buf[0]), .Q(
        n429) );
  NAND2X0 U414 ( .IN1(n411), .IN2(n397), .QN(n393) );
  NOR2X0 U415 ( .IN1(n430), .IN2(state[3]), .QN(n397) );
  INVX0 U416 ( .INP(n403), .ZN(n409) );
  NAND3X0 U417 ( .IN1(n431), .IN2(n319), .IN3(n432), .QN(n403) );
  INVX0 U418 ( .INP(n392), .ZN(n432) );
  NAND4X0 U419 ( .IN1(nrst), .IN2(n433), .IN3(n434), .IN4(n357), .QN(n392) );
  NAND2X0 U420 ( .IN1(n411), .IN2(n385), .QN(n357) );
  NAND2X0 U421 ( .IN1(n408), .IN2(n386), .QN(n434) );
  NOR2X0 U422 ( .IN1(n435), .IN2(n430), .QN(n408) );
  NAND3X0 U423 ( .IN1(n386), .IN2(n436), .IN3(n385), .QN(n433) );
  NOR2X0 U424 ( .IN1(n435), .IN2(state[2]), .QN(n385) );
  INVX0 U425 ( .INP(en), .ZN(n436) );
  NAND2X0 U426 ( .IN1(n407), .IN2(n411), .QN(n319) );
  NOR2X0 U427 ( .IN1(n437), .IN2(state[0]), .QN(n411) );
  NAND2X0 U428 ( .IN1(n367), .IN2(n438), .QN(n431) );
  INVX0 U429 ( .INP(done_rng_address), .ZN(n438) );
  AND2X1 U430 ( .IN1(n407), .IN2(n386), .Q(n367) );
  NOR2X0 U431 ( .IN1(n437), .IN2(n412), .QN(n386) );
  NOR2X0 U432 ( .IN1(state[3]), .IN2(state[2]), .QN(n407) );
endmodule


module selectMyAction ( clock, nrst, en, start, address, wr_en, nexthop, 
        nextsinks, action, data_out, forAggregation, done );
  output [10:0] address;
  input [15:0] nexthop;
  input [15:0] nextsinks;
  output [15:0] action;
  output [15:0] data_out;
  input clock, nrst, en, start;
  output wr_en, forAggregation, done;
  wire   N98, n10, n11, n12, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n1, n2, n3, n4, n5, n6, n7, n8, n9, n13, n14, n15, n16
;
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

  DFFSSRX1 \state_reg[1]  ( .D(nrst), .RSTB(n33), .SETB(n5), .CLK(clock), .Q(
        state[1]), .QN(n11) );
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
  AO22X1 U62 ( .IN1(action[6]), .IN2(n26), .IN3(n27), .IN4(n6), .Q(n63) );
  AO221X1 U63 ( .IN1(n4), .IN2(nexthop[6]), .IN3(n8), .IN4(nextsinks[6]), 
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
  AO22X1 U71 ( .IN1(action[0]), .IN2(n26), .IN3(n29), .IN4(n6), .Q(n69) );
  AO221X1 U72 ( .IN1(n4), .IN2(nexthop[0]), .IN3(n8), .IN4(nextsinks[0]), 
        .IN5(n28), .Q(n29) );
  NAND3X0 U74 ( .IN1(n5), .IN2(n24), .IN3(n35), .QN(n70) );
  NAND4X0 U75 ( .IN1(n35), .IN2(n36), .IN3(n37), .IN4(n31), .QN(n71) );
  NAND3X0 U76 ( .IN1(n12), .IN2(n11), .IN3(start), .QN(n37) );
  NOR4X0 U77 ( .IN1(n33), .IN2(n28), .IN3(n11), .IN4(n7), .QN(n34) );
  NAND3X0 U78 ( .IN1(state[0]), .IN2(n10), .IN3(state[1]), .QN(n24) );
  NAND3X0 U79 ( .IN1(n11), .IN2(n10), .IN3(state[0]), .QN(n30) );
  AND3X1 U80 ( .IN1(n39), .IN2(n18), .IN3(nrst), .Q(n35) );
  NAND3X0 U81 ( .IN1(n12), .IN2(n11), .IN3(state[2]), .QN(n18) );
  OR2X1 U82 ( .IN1(n38), .IN2(en), .Q(n39) );
  AO21X1 U83 ( .IN1(n22), .IN2(n4), .IN3(n9), .Q(N98) );
  NAND3X0 U84 ( .IN1(state[2]), .IN2(n11), .IN3(state[0]), .QN(n38) );
  NAND3X0 U85 ( .IN1(n12), .IN2(n10), .IN3(state[1]), .QN(n31) );
  NOR4X0 U86 ( .IN1(n40), .IN2(n41), .IN3(n42), .IN4(n43), .QN(n22) );
  OR4X1 U87 ( .IN1(nexthop[15]), .IN2(nexthop[1]), .IN3(nexthop[2]), .IN4(
        nexthop[3]), .Q(n43) );
  OR4X1 U88 ( .IN1(nexthop[4]), .IN2(nexthop[5]), .IN3(n44), .IN4(nexthop[7]), 
        .Q(n42) );
  OR2X1 U89 ( .IN1(nexthop[9]), .IN2(nexthop[8]), .Q(n44) );
  NAND4X0 U90 ( .IN1(nexthop[6]), .IN2(nexthop[0]), .IN3(n32), .IN4(n13), .QN(
        n41) );
  NOR4X0 U91 ( .IN1(n45), .IN2(n46), .IN3(n47), .IN4(n48), .QN(n32) );
  OR4X1 U92 ( .IN1(nextsinks[1]), .IN2(nextsinks[2]), .IN3(nextsinks[3]), 
        .IN4(nextsinks[4]), .Q(n48) );
  OR4X1 U93 ( .IN1(nextsinks[5]), .IN2(nextsinks[7]), .IN3(nextsinks[8]), 
        .IN4(nextsinks[9]), .Q(n47) );
  NAND4X0 U94 ( .IN1(nextsinks[6]), .IN2(nextsinks[0]), .IN3(n14), .IN4(n15), 
        .QN(n46) );
  OR4X1 U95 ( .IN1(nextsinks[12]), .IN2(nextsinks[13]), .IN3(nextsinks[14]), 
        .IN4(nextsinks[15]), .Q(n45) );
  OR4X1 U96 ( .IN1(nexthop[11]), .IN2(nexthop[12]), .IN3(nexthop[13]), .IN4(
        nexthop[14]), .Q(n40) );
  DFFX1 done_buf_reg ( .D(n49), .CLK(clock), .Q(done) );
  DFFX1 forAggregation_buf_reg ( .D(n51), .CLK(clock), .Q(forAggregation) );
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
  DFFX1 \data_out_buf_reg[0]  ( .D(n50), .CLK(clock), .Q(data_out[0]) );
  DFFX1 \address_count_reg[1]  ( .D(n52), .CLK(clock), .Q(address[1]) );
  DFFX1 \action_buf_reg[6]  ( .D(n63), .CLK(clock), .Q(action[6]) );
  DFFX1 \action_buf_reg[0]  ( .D(n69), .CLK(clock), .Q(action[0]) );
  DFFX1 wr_en_buf_reg ( .D(n53), .CLK(clock), .Q(wr_en) );
  DFFX1 \state_reg[2]  ( .D(n70), .CLK(clock), .Q(state[2]), .QN(n10) );
  DFFX1 \state_reg[0]  ( .D(n71), .CLK(clock), .Q(state[0]), .QN(n12) );
  AND2X1 U28 ( .IN1(n4), .IN2(nrst), .Q(n21) );
  AND2X1 U29 ( .IN1(n8), .IN2(nrst), .Q(n25) );
  INVX0 U30 ( .INP(N98), .ZN(n3) );
  INVX0 U31 ( .INP(n26), .ZN(n6) );
  OA221X1 U32 ( .IN1(n31), .IN2(n22), .IN3(n30), .IN4(n32), .IN5(n17), .Q(n26)
         );
  INVX0 U33 ( .INP(n34), .ZN(n5) );
  NAND2X1 U34 ( .IN1(nrst), .IN2(n38), .QN(n28) );
  INVX0 U35 ( .INP(n17), .ZN(n9) );
  INVX0 U36 ( .INP(n31), .ZN(n4) );
  NAND2X1 U37 ( .IN1(n30), .IN2(n31), .QN(n33) );
  INVX0 U38 ( .INP(n30), .ZN(n8) );
  INVX0 U39 ( .INP(n24), .ZN(n7) );
  NAND2X1 U40 ( .IN1(n34), .IN2(state[0]), .QN(n36) );
  INVX0 U41 ( .INP(n23), .ZN(n2) );
  NAND2X1 U42 ( .IN1(n24), .IN2(n3), .QN(n23) );
  INVX0 U43 ( .INP(n18), .ZN(n1) );
  OA21X1 U44 ( .IN1(n16), .IN2(n38), .IN3(nrst), .Q(n17) );
  INVX0 U45 ( .INP(en), .ZN(n16) );
  NOR2X0 U46 ( .IN1(n4), .IN2(n9), .QN(n20) );
  INVX0 U69 ( .INP(nexthop[10]), .ZN(n13) );
  INVX0 U70 ( .INP(nextsinks[11]), .ZN(n15) );
  INVX0 U73 ( .INP(nextsinks[10]), .ZN(n14) );
endmodule


module reward ( clock, nrst, en, start, MY_NODE_ID, MY_CLUSTER_ID, action, 
        besthop, address, data_in, data_out, done );
  input [15:0] MY_NODE_ID;
  input [15:0] MY_CLUSTER_ID;
  input [15:0] action;
  input [15:0] besthop;
  output [10:0] address;
  input [15:0] data_in;
  output [15:0] data_out;
  input clock, nrst, en, start;
  output done;
  wire   N51, N52, N54, N55, N56, N57, N58, N59, N60, N64, N65, N66, N67, N68,
         N69, N70, N71, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N122,
         N123, N124, n13, n14, n15, n19, n20, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         \add_66/carry[10] , \add_66/carry[9] , \add_66/carry[8] ,
         \add_66/carry[7] , \add_66/carry[6] , \add_66/carry[5] ,
         \add_55/carry[10] , \add_55/carry[9] , \add_55/carry[8] ,
         \add_55/carry[7] , \add_55/carry[6] , \add_55/carry[5] ,
         \add_49/carry[10] , \add_49/carry[9] , \add_49/carry[8] ,
         \add_49/carry[7] , \add_49/carry[6] , \add_49/carry[5] , n1, n2, n3,
         n4, n5, n6, n7, n8, n9;
  wire   [3:0] state;
  assign N51 = besthop[0];
  assign N52 = besthop[1];
  assign N73 = action[0];
  assign N74 = action[1];

  AO22X1 U34 ( .IN1(address[1]), .IN2(n19), .IN3(n20), .IN4(n22), .Q(n73) );
  AO222X1 U35 ( .IN1(N73), .IN2(n7), .IN3(N51), .IN4(n5), .IN5(N51), .IN6(n6), 
        .Q(n22) );
  AO22X1 U36 ( .IN1(address[2]), .IN2(n19), .IN3(n20), .IN4(n23), .Q(n74) );
  AO222X1 U37 ( .IN1(N74), .IN2(n7), .IN3(N52), .IN4(n5), .IN5(N52), .IN6(n6), 
        .Q(n23) );
  AO22X1 U38 ( .IN1(address[3]), .IN2(n19), .IN3(n20), .IN4(n24), .Q(n75) );
  AO222X1 U39 ( .IN1(N75), .IN2(n7), .IN3(N64), .IN4(n5), .IN5(N64), .IN6(n6), 
        .Q(n24) );
  AO22X1 U40 ( .IN1(address[4]), .IN2(n19), .IN3(n20), .IN4(n25), .Q(n76) );
  AO222X1 U41 ( .IN1(N76), .IN2(n7), .IN3(N54), .IN4(n5), .IN5(N65), .IN6(n6), 
        .Q(n25) );
  AO22X1 U42 ( .IN1(address[5]), .IN2(n19), .IN3(n20), .IN4(n26), .Q(n77) );
  AO222X1 U43 ( .IN1(N77), .IN2(n7), .IN3(N55), .IN4(n5), .IN5(N66), .IN6(n6), 
        .Q(n26) );
  AO22X1 U44 ( .IN1(address[6]), .IN2(n19), .IN3(n20), .IN4(n27), .Q(n78) );
  AO222X1 U45 ( .IN1(N78), .IN2(n7), .IN3(N56), .IN4(n5), .IN5(N67), .IN6(n6), 
        .Q(n27) );
  AO22X1 U46 ( .IN1(address[7]), .IN2(n19), .IN3(n20), .IN4(n28), .Q(n79) );
  AO222X1 U47 ( .IN1(N79), .IN2(n7), .IN3(N57), .IN4(n5), .IN5(N68), .IN6(n6), 
        .Q(n28) );
  AO22X1 U48 ( .IN1(address[8]), .IN2(n19), .IN3(n20), .IN4(n29), .Q(n80) );
  AO222X1 U49 ( .IN1(N80), .IN2(n7), .IN3(N58), .IN4(n5), .IN5(N69), .IN6(n6), 
        .Q(n29) );
  AO22X1 U50 ( .IN1(address[9]), .IN2(n19), .IN3(n20), .IN4(n30), .Q(n81) );
  AO222X1 U51 ( .IN1(N81), .IN2(n7), .IN3(N59), .IN4(n5), .IN5(N70), .IN6(n6), 
        .Q(n30) );
  AO22X1 U52 ( .IN1(address[10]), .IN2(n19), .IN3(n20), .IN4(n31), .Q(n82) );
  AO222X1 U53 ( .IN1(N82), .IN2(n7), .IN3(N60), .IN4(n5), .IN5(N71), .IN6(n6), 
        .Q(n31) );
  AO221X1 U54 ( .IN1(data_in[0]), .IN2(n33), .IN3(MY_NODE_ID[0]), .IN4(n34), 
        .IN5(n35), .Q(n83) );
  AO22X1 U55 ( .IN1(data_out[0]), .IN2(n1), .IN3(MY_CLUSTER_ID[0]), .IN4(n37), 
        .Q(n35) );
  AO221X1 U56 ( .IN1(data_in[1]), .IN2(n33), .IN3(MY_NODE_ID[1]), .IN4(n34), 
        .IN5(n38), .Q(n84) );
  AO22X1 U57 ( .IN1(data_out[1]), .IN2(n1), .IN3(MY_CLUSTER_ID[1]), .IN4(n37), 
        .Q(n38) );
  AO221X1 U58 ( .IN1(data_in[2]), .IN2(n33), .IN3(MY_NODE_ID[2]), .IN4(n34), 
        .IN5(n39), .Q(n85) );
  AO22X1 U59 ( .IN1(data_out[2]), .IN2(n1), .IN3(MY_CLUSTER_ID[2]), .IN4(n37), 
        .Q(n39) );
  AO221X1 U60 ( .IN1(data_in[3]), .IN2(n33), .IN3(MY_NODE_ID[3]), .IN4(n34), 
        .IN5(n40), .Q(n86) );
  AO22X1 U61 ( .IN1(data_out[3]), .IN2(n1), .IN3(MY_CLUSTER_ID[3]), .IN4(n37), 
        .Q(n40) );
  AO221X1 U62 ( .IN1(data_in[4]), .IN2(n33), .IN3(MY_NODE_ID[4]), .IN4(n34), 
        .IN5(n41), .Q(n87) );
  AO22X1 U63 ( .IN1(data_out[4]), .IN2(n1), .IN3(MY_CLUSTER_ID[4]), .IN4(n37), 
        .Q(n41) );
  AO221X1 U64 ( .IN1(data_in[5]), .IN2(n33), .IN3(MY_NODE_ID[5]), .IN4(n34), 
        .IN5(n42), .Q(n88) );
  AO22X1 U65 ( .IN1(data_out[5]), .IN2(n1), .IN3(MY_CLUSTER_ID[5]), .IN4(n37), 
        .Q(n42) );
  AO221X1 U66 ( .IN1(data_in[6]), .IN2(n33), .IN3(MY_NODE_ID[6]), .IN4(n34), 
        .IN5(n43), .Q(n89) );
  AO22X1 U67 ( .IN1(data_out[6]), .IN2(n1), .IN3(MY_CLUSTER_ID[6]), .IN4(n37), 
        .Q(n43) );
  AO221X1 U68 ( .IN1(data_in[7]), .IN2(n33), .IN3(MY_NODE_ID[7]), .IN4(n34), 
        .IN5(n44), .Q(n90) );
  AO22X1 U69 ( .IN1(data_out[7]), .IN2(n1), .IN3(MY_CLUSTER_ID[7]), .IN4(n37), 
        .Q(n44) );
  AO221X1 U70 ( .IN1(data_in[8]), .IN2(n33), .IN3(MY_NODE_ID[8]), .IN4(n34), 
        .IN5(n45), .Q(n91) );
  AO22X1 U71 ( .IN1(data_out[8]), .IN2(n1), .IN3(MY_CLUSTER_ID[8]), .IN4(n37), 
        .Q(n45) );
  AO221X1 U72 ( .IN1(data_in[9]), .IN2(n33), .IN3(MY_NODE_ID[9]), .IN4(n34), 
        .IN5(n46), .Q(n92) );
  AO22X1 U73 ( .IN1(data_out[9]), .IN2(n1), .IN3(MY_CLUSTER_ID[9]), .IN4(n37), 
        .Q(n46) );
  AO221X1 U74 ( .IN1(data_in[10]), .IN2(n33), .IN3(MY_NODE_ID[10]), .IN4(n34), 
        .IN5(n47), .Q(n93) );
  AO22X1 U75 ( .IN1(data_out[10]), .IN2(n1), .IN3(MY_CLUSTER_ID[10]), .IN4(n37), .Q(n47) );
  AO221X1 U76 ( .IN1(data_in[11]), .IN2(n33), .IN3(MY_NODE_ID[11]), .IN4(n34), 
        .IN5(n48), .Q(n94) );
  AO22X1 U77 ( .IN1(data_out[11]), .IN2(n1), .IN3(MY_CLUSTER_ID[11]), .IN4(n37), .Q(n48) );
  AO221X1 U78 ( .IN1(data_in[12]), .IN2(n33), .IN3(MY_NODE_ID[12]), .IN4(n34), 
        .IN5(n49), .Q(n95) );
  AO22X1 U79 ( .IN1(data_out[12]), .IN2(n1), .IN3(MY_CLUSTER_ID[12]), .IN4(n37), .Q(n49) );
  AO221X1 U80 ( .IN1(data_in[13]), .IN2(n33), .IN3(MY_NODE_ID[13]), .IN4(n34), 
        .IN5(n50), .Q(n96) );
  AO22X1 U81 ( .IN1(data_out[13]), .IN2(n1), .IN3(MY_CLUSTER_ID[13]), .IN4(n37), .Q(n50) );
  AO221X1 U82 ( .IN1(data_in[14]), .IN2(n33), .IN3(MY_NODE_ID[14]), .IN4(n34), 
        .IN5(n51), .Q(n97) );
  AO22X1 U83 ( .IN1(data_out[14]), .IN2(n1), .IN3(MY_CLUSTER_ID[14]), .IN4(n37), .Q(n51) );
  AO221X1 U84 ( .IN1(data_in[15]), .IN2(n33), .IN3(MY_NODE_ID[15]), .IN4(n34), 
        .IN5(n52), .Q(n98) );
  AO22X1 U85 ( .IN1(data_out[15]), .IN2(n1), .IN3(MY_CLUSTER_ID[15]), .IN4(n37), .Q(n52) );
  NAND3X0 U90 ( .IN1(n58), .IN2(n32), .IN3(n59), .QN(n56) );
  AO22X1 U91 ( .IN1(done), .IN2(n60), .IN3(n61), .IN4(state[0]), .Q(n99) );
  NAND3X0 U94 ( .IN1(state[0]), .IN2(n13), .IN3(state[1]), .QN(n32) );
  OA221X1 U95 ( .IN1(n8), .IN2(n67), .IN3(state[0]), .IN4(n14), .IN5(n58), .Q(
        n66) );
  NAND3X0 U96 ( .IN1(state[0]), .IN2(n14), .IN3(state[2]), .QN(n58) );
  NOR4X0 U97 ( .IN1(n5), .IN2(n3), .IN3(n70), .IN4(n71), .QN(n69) );
  AND3X1 U98 ( .IN1(n68), .IN2(n8), .IN3(state[0]), .Q(n70) );
  NAND3X0 U99 ( .IN1(n15), .IN2(n13), .IN3(state[1]), .QN(n59) );
  DFFX1 done_buf_reg ( .D(n99), .CLK(clock), .Q(done) );
  DFFX1 \address_count_reg[0]  ( .D(n72), .CLK(clock), .Q(address[0]) );
  DFFX1 \address_count_reg[10]  ( .D(n82), .CLK(clock), .Q(address[10]) );
  DFFX1 \address_count_reg[9]  ( .D(n81), .CLK(clock), .Q(address[9]) );
  DFFX1 \address_count_reg[8]  ( .D(n80), .CLK(clock), .Q(address[8]) );
  DFFX1 \address_count_reg[7]  ( .D(n79), .CLK(clock), .Q(address[7]) );
  DFFX1 \address_count_reg[6]  ( .D(n78), .CLK(clock), .Q(address[6]) );
  DFFX1 \address_count_reg[5]  ( .D(n77), .CLK(clock), .Q(address[5]) );
  DFFX1 \address_count_reg[4]  ( .D(n76), .CLK(clock), .Q(address[4]) );
  DFFX1 \address_count_reg[3]  ( .D(n75), .CLK(clock), .Q(address[3]) );
  DFFX1 \address_count_reg[2]  ( .D(n74), .CLK(clock), .Q(address[2]) );
  DFFX1 \address_count_reg[1]  ( .D(n73), .CLK(clock), .Q(address[1]) );
  DFFX1 \data_out_buf_reg[15]  ( .D(n98), .CLK(clock), .Q(data_out[15]) );
  DFFX1 \data_out_buf_reg[14]  ( .D(n97), .CLK(clock), .Q(data_out[14]) );
  DFFX1 \data_out_buf_reg[13]  ( .D(n96), .CLK(clock), .Q(data_out[13]) );
  DFFX1 \data_out_buf_reg[12]  ( .D(n95), .CLK(clock), .Q(data_out[12]) );
  DFFX1 \data_out_buf_reg[11]  ( .D(n94), .CLK(clock), .Q(data_out[11]) );
  DFFX1 \data_out_buf_reg[10]  ( .D(n93), .CLK(clock), .Q(data_out[10]) );
  DFFX1 \data_out_buf_reg[9]  ( .D(n92), .CLK(clock), .Q(data_out[9]) );
  DFFX1 \data_out_buf_reg[8]  ( .D(n91), .CLK(clock), .Q(data_out[8]) );
  DFFX1 \data_out_buf_reg[7]  ( .D(n90), .CLK(clock), .Q(data_out[7]) );
  DFFX1 \data_out_buf_reg[6]  ( .D(n89), .CLK(clock), .Q(data_out[6]) );
  DFFX1 \data_out_buf_reg[5]  ( .D(n88), .CLK(clock), .Q(data_out[5]) );
  DFFX1 \data_out_buf_reg[4]  ( .D(n87), .CLK(clock), .Q(data_out[4]) );
  DFFX1 \data_out_buf_reg[3]  ( .D(n86), .CLK(clock), .Q(data_out[3]) );
  DFFX1 \data_out_buf_reg[2]  ( .D(n85), .CLK(clock), .Q(data_out[2]) );
  DFFX1 \data_out_buf_reg[1]  ( .D(n84), .CLK(clock), .Q(data_out[1]) );
  DFFX1 \data_out_buf_reg[0]  ( .D(n83), .CLK(clock), .Q(data_out[0]) );
  DFFX1 \state_reg[2]  ( .D(N124), .CLK(clock), .Q(state[2]), .QN(n13) );
  DFFX1 \state_reg[1]  ( .D(N123), .CLK(clock), .Q(state[1]), .QN(n14) );
  DFFX1 \state_reg[0]  ( .D(N122), .CLK(clock), .Q(state[0]), .QN(n15) );
  AND2X1 U3 ( .IN1(n53), .IN2(n5), .Q(n34) );
  INVX0 U4 ( .INP(nrst), .ZN(n2) );
  AND2X1 U5 ( .IN1(n53), .IN2(n7), .Q(n37) );
  AND2X1 U6 ( .IN1(n53), .IN2(n54), .Q(n33) );
  NOR2X0 U7 ( .IN1(n2), .IN2(n19), .QN(n20) );
  NOR2X0 U8 ( .IN1(n2), .IN2(n1), .QN(n53) );
  OA21X1 U9 ( .IN1(n7), .IN2(n54), .IN3(nrst), .Q(N124) );
  NOR2X0 U10 ( .IN1(n56), .IN2(n57), .QN(n19) );
  AND2X1 U11 ( .IN1(n55), .IN2(n19), .Q(n1) );
  INVX0 U12 ( .INP(n59), .ZN(n5) );
  INVX0 U13 ( .INP(n32), .ZN(n6) );
  INVX0 U14 ( .INP(n58), .ZN(n7) );
  NAND2X1 U15 ( .IN1(n55), .IN2(n32), .QN(n54) );
  NAND2X1 U16 ( .IN1(nrst), .IN2(n63), .QN(n57) );
  NAND2X1 U17 ( .IN1(n4), .IN2(en), .QN(n63) );
  INVX0 U18 ( .INP(n64), .ZN(n4) );
  NOR2X0 U19 ( .IN1(n69), .IN2(n2), .QN(N122) );
  INVX0 U20 ( .INP(n55), .ZN(n3) );
  NOR2X0 U21 ( .IN1(n60), .IN2(n2), .QN(n61) );
  NOR2X0 U22 ( .IN1(n57), .IN2(n62), .QN(n60) );
  NOR2X0 U23 ( .IN1(n66), .IN2(n2), .QN(N123) );
  NAND2X1 U24 ( .IN1(state[0]), .IN2(n68), .QN(n67) );
  NOR2X0 U25 ( .IN1(n64), .IN2(n9), .QN(n71) );
  INVX0 U26 ( .INP(en), .ZN(n9) );
  INVX0 U27 ( .INP(besthop[2]), .ZN(N64) );
  INVX0 U28 ( .INP(action[2]), .ZN(N75) );
  NOR2X0 U29 ( .IN1(state[1]), .IN2(state[2]), .QN(n68) );
  NAND2X1 U30 ( .IN1(state[2]), .IN2(n15), .QN(n55) );
  INVX0 U31 ( .INP(start), .ZN(n8) );
  NAND2X1 U32 ( .IN1(n68), .IN2(n15), .QN(n64) );
  XOR2X1 U33 ( .IN1(besthop[9]), .IN2(\add_55/carry[10] ), .Q(N71) );
  AND2X1 U86 ( .IN1(\add_55/carry[9] ), .IN2(besthop[8]), .Q(
        \add_55/carry[10] ) );
  XOR2X1 U87 ( .IN1(besthop[8]), .IN2(\add_55/carry[9] ), .Q(N70) );
  OR2X1 U88 ( .IN1(besthop[7]), .IN2(\add_55/carry[8] ), .Q(\add_55/carry[9] )
         );
  XNOR2X1 U89 ( .IN1(\add_55/carry[8] ), .IN2(besthop[7]), .Q(N69) );
  OR2X1 U92 ( .IN1(besthop[6]), .IN2(\add_55/carry[7] ), .Q(\add_55/carry[8] )
         );
  XNOR2X1 U93 ( .IN1(\add_55/carry[7] ), .IN2(besthop[6]), .Q(N68) );
  OR2X1 U100 ( .IN1(besthop[5]), .IN2(\add_55/carry[6] ), .Q(\add_55/carry[7] ) );
  XNOR2X1 U101 ( .IN1(\add_55/carry[6] ), .IN2(besthop[5]), .Q(N67) );
  AND2X1 U102 ( .IN1(\add_55/carry[5] ), .IN2(besthop[4]), .Q(
        \add_55/carry[6] ) );
  XOR2X1 U103 ( .IN1(besthop[4]), .IN2(\add_55/carry[5] ), .Q(N66) );
  AND2X1 U104 ( .IN1(besthop[2]), .IN2(besthop[3]), .Q(\add_55/carry[5] ) );
  XOR2X1 U105 ( .IN1(besthop[3]), .IN2(besthop[2]), .Q(N65) );
  XOR2X1 U106 ( .IN1(besthop[9]), .IN2(\add_49/carry[10] ), .Q(N60) );
  AND2X1 U107 ( .IN1(\add_49/carry[9] ), .IN2(besthop[8]), .Q(
        \add_49/carry[10] ) );
  XOR2X1 U108 ( .IN1(besthop[8]), .IN2(\add_49/carry[9] ), .Q(N59) );
  OR2X1 U109 ( .IN1(besthop[7]), .IN2(\add_49/carry[8] ), .Q(\add_49/carry[9] ) );
  XNOR2X1 U110 ( .IN1(\add_49/carry[8] ), .IN2(besthop[7]), .Q(N58) );
  AND2X1 U111 ( .IN1(\add_49/carry[7] ), .IN2(besthop[6]), .Q(
        \add_49/carry[8] ) );
  XOR2X1 U112 ( .IN1(besthop[6]), .IN2(\add_49/carry[7] ), .Q(N57) );
  OR2X1 U113 ( .IN1(besthop[5]), .IN2(\add_49/carry[6] ), .Q(\add_49/carry[7] ) );
  XNOR2X1 U114 ( .IN1(\add_49/carry[6] ), .IN2(besthop[5]), .Q(N56) );
  AND2X1 U115 ( .IN1(\add_49/carry[5] ), .IN2(besthop[4]), .Q(
        \add_49/carry[6] ) );
  XOR2X1 U116 ( .IN1(besthop[4]), .IN2(\add_49/carry[5] ), .Q(N55) );
  AND2X1 U117 ( .IN1(besthop[2]), .IN2(besthop[3]), .Q(\add_49/carry[5] ) );
  XOR2X1 U118 ( .IN1(besthop[3]), .IN2(besthop[2]), .Q(N54) );
  XOR2X1 U119 ( .IN1(action[9]), .IN2(\add_66/carry[10] ), .Q(N82) );
  AND2X1 U120 ( .IN1(\add_66/carry[9] ), .IN2(action[8]), .Q(
        \add_66/carry[10] ) );
  XOR2X1 U121 ( .IN1(action[8]), .IN2(\add_66/carry[9] ), .Q(N81) );
  AND2X1 U122 ( .IN1(\add_66/carry[8] ), .IN2(action[7]), .Q(\add_66/carry[9] ) );
  XOR2X1 U123 ( .IN1(action[7]), .IN2(\add_66/carry[8] ), .Q(N80) );
  AND2X1 U124 ( .IN1(\add_66/carry[7] ), .IN2(action[6]), .Q(\add_66/carry[8] ) );
  XOR2X1 U125 ( .IN1(action[6]), .IN2(\add_66/carry[7] ), .Q(N79) );
  OR2X1 U126 ( .IN1(action[5]), .IN2(\add_66/carry[6] ), .Q(\add_66/carry[7] )
         );
  XNOR2X1 U127 ( .IN1(\add_66/carry[6] ), .IN2(action[5]), .Q(N78) );
  AND2X1 U128 ( .IN1(\add_66/carry[5] ), .IN2(action[4]), .Q(\add_66/carry[6] ) );
  XOR2X1 U129 ( .IN1(action[4]), .IN2(\add_66/carry[5] ), .Q(N77) );
  AND2X1 U130 ( .IN1(action[2]), .IN2(action[3]), .Q(\add_66/carry[5] ) );
  XOR2X1 U131 ( .IN1(action[3]), .IN2(action[2]), .Q(N76) );
  AND2X1 U132 ( .IN1(address[0]), .IN2(n19), .Q(n72) );
  NOR3X0 U133 ( .IN1(n15), .IN2(n13), .IN3(n14), .QN(n62) );
endmodule


module top ( clock, nrst, en, address, wr_en, mem_data_in, mem_data_out, 
        fsourceID, fbatteryStat, fValue, fclusterID, fdestinationID, 
        reward_out, done_reward );
  output [10:0] address;
  output [15:0] mem_data_in;
  input [15:0] mem_data_out;
  input [15:0] fsourceID;
  input [15:0] fbatteryStat;
  input [15:0] fValue;
  input [15:0] fclusterID;
  input [15:0] fdestinationID;
  output [15:0] reward_out;
  input clock, nrst, en;
  output wr_en, done_reward;
  wire   wren_0, wren_1, wren_2, wren_3, wren_5, wren_6, wren_7,
         done_learnCosts, done_iamSink, done_iamDestination, done_fixSinkList,
         done_neighborSinkInOtherCluster, done_findMyBest,
         done_betterNeighborsInMyCluster, en_rng, start_rngAddress,
         done_rngAddress, done_winnerPolicy, done_selectMyAction,
         \addr_7_buf[1] , \addr_7_0[1] , \state[0] , N32, N33, N34, N35, N36,
         N37, N38, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66;
  wire   [2:0] addr_select;
  wire   [10:0] addr_0;
  wire   [10:0] addr_1;
  wire   [10:0] addr_2;
  wire   [10:0] addr_3;
  wire   [10:0] addr_4;
  wire   [10:0] addr_5;
  wire   [10:0] addr_6;
  wire   [15:0] mdi_0;
  wire   [15:0] mdi_1;
  wire   [15:0] mdi_2;
  wire   [15:0] mdi_3;
  wire   [15:0] mdi_4;
  wire   [15:0] mdi_5;
  wire   [15:0] mdi_6;
  wire   [15:0] mdi_7;
  wire   [2:0] wr_select;
  wire   [15:0] initial_epsilon;
  wire   [15:0] MY_NODE_ID;
  wire   [15:0] MY_CLUSTER_ID;
  wire   [15:0] MY_BATTERY_STAT;
  wire   [15:0] mybest;
  wire   [15:0] besthop;
  wire   [15:0] bestvalue;
  wire   [15:0] bestneighborID;
  wire   [15:0] nextsinks;
  wire   [15:0] rng_out;
  wire   [15:0] rng_out_4bit;
  wire   [15:0] betterNeighborCount;
  wire   [15:0] which;
  wire   [15:0] rng_address;
  wire   [15:0] epsilon_step;
  wire   [15:0] nexthop;
  wire   [10:0] addr_7_1;
  wire   [15:0] action;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, 
        SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, 
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71, 
        SYNOPSYS_UNCONNECTED__72, SYNOPSYS_UNCONNECTED__73, 
        SYNOPSYS_UNCONNECTED__74, SYNOPSYS_UNCONNECTED__75, 
        SYNOPSYS_UNCONNECTED__76;

  DFFX1 \MY_BATTERY_STAT_reg[15]  ( .D(n32), .CLK(clock), .Q(
        MY_BATTERY_STAT[15]) );
  DFFX1 \MY_BATTERY_STAT_reg[14]  ( .D(n33), .CLK(clock), .Q(
        MY_BATTERY_STAT[14]) );
  DFFX1 \MY_BATTERY_STAT_reg[12]  ( .D(n34), .CLK(clock), .Q(
        MY_BATTERY_STAT[12]) );
  DFFX1 \MY_BATTERY_STAT_reg[11]  ( .D(n35), .CLK(clock), .Q(
        MY_BATTERY_STAT[11]) );
  DFFX1 \MY_BATTERY_STAT_reg[8]  ( .D(n36), .CLK(clock), .Q(MY_BATTERY_STAT[8]) );
  DFFX1 \MY_BATTERY_STAT_reg[7]  ( .D(n37), .CLK(clock), .Q(MY_BATTERY_STAT[7]) );
  DFFX1 \MY_BATTERY_STAT_reg[4]  ( .D(n38), .CLK(clock), .Q(MY_BATTERY_STAT[4]) );
  DFFX1 \MY_BATTERY_STAT_reg[3]  ( .D(n39), .CLK(clock), .Q(MY_BATTERY_STAT[3]) );
  DFFX1 \MY_BATTERY_STAT_reg[0]  ( .D(n40), .CLK(clock), .Q(MY_BATTERY_STAT[0]) );
  LATCHX1 \addr_select_reg[2]  ( .CLK(N32), .D(N34), .Q(addr_select[2]) );
  LATCHX1 \addr_select_reg[1]  ( .CLK(N32), .D(N33), .Q(addr_select[1]) );
  LATCHX1 \addr_select_reg[0]  ( .CLK(N32), .D(N36), .Q(addr_select[0]) );
  LATCHX1 \wr_select_reg[2]  ( .CLK(N35), .D(N38), .Q(wr_select[2]) );
  LATCHX1 \wr_select_reg[1]  ( .CLK(N35), .D(N37), .Q(wr_select[1]) );
  LATCHX1 \wr_select_reg[0]  ( .CLK(N35), .D(N36), .Q(wr_select[0]) );
  AO21X1 U122 ( .IN1(MY_BATTERY_STAT[15]), .IN2(n41), .IN3(n54), .Q(n32) );
  AO21X1 U123 ( .IN1(MY_BATTERY_STAT[14]), .IN2(n41), .IN3(n17), .Q(n33) );
  AO21X1 U124 ( .IN1(MY_BATTERY_STAT[12]), .IN2(n41), .IN3(n17), .Q(n34) );
  AO21X1 U125 ( .IN1(MY_BATTERY_STAT[11]), .IN2(n41), .IN3(n17), .Q(n35) );
  AO21X1 U126 ( .IN1(MY_BATTERY_STAT[8]), .IN2(n41), .IN3(n17), .Q(n36) );
  AO21X1 U127 ( .IN1(MY_BATTERY_STAT[7]), .IN2(n41), .IN3(n17), .Q(n37) );
  AO21X1 U128 ( .IN1(MY_BATTERY_STAT[4]), .IN2(n41), .IN3(n17), .Q(n38) );
  AO21X1 U129 ( .IN1(MY_BATTERY_STAT[3]), .IN2(n41), .IN3(n17), .Q(n39) );
  AO21X1 U130 ( .IN1(MY_BATTERY_STAT[0]), .IN2(n41), .IN3(n17), .Q(n40) );
  AO22X1 U139 ( .IN1(addr_7_1[1]), .IN2(done_selectMyAction), .IN3(
        \addr_7_0[1] ), .IN4(n58), .Q(\addr_7_buf[1] ) );
  NAND3X0 U142 ( .IN1(n18), .IN2(n55), .IN3(n19), .QN(N36) );
  NAND3X0 U143 ( .IN1(n20), .IN2(n55), .IN3(n21), .QN(N34) );
  NAND3X0 U144 ( .IN1(n20), .IN2(n56), .IN3(done_findMyBest), .QN(N32) );
  NAND3X0 U145 ( .IN1(n23), .IN2(n57), .IN3(n63), .QN(N35) );
  NAND3X0 U146 ( .IN1(n24), .IN2(n19), .IN3(n25), .QN(N37) );
  OR4X1 U147 ( .IN1(n59), .IN2(n28), .IN3(done_reward), .IN4(n29), .Q(n24) );
  NOR3X0 U148 ( .IN1(n62), .IN2(n26), .IN3(n27), .QN(n22) );
  mux_11bit addr_mux ( .select(addr_select), .out(address), .in0(addr_0), 
        .in1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, addr_1[1], 
        1'b0}), .in2(addr_2), .in3(addr_3), .in4(addr_4), .in5(addr_5), .in6(
        addr_6), .in7({n51, n52, n50, n49, n48, n47, n46, n45, n44, 
        \addr_7_buf[1] , n43}) );
  mux_16bit mdi_mux ( .select(addr_select), .out(mem_data_in), .in0(mdi_0), 
        .in1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, mdi_1[0]}), .in2(mdi_2), .in3({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, mdi_3[0]}), .in4({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .in5(mdi_5), .in6(
        mdi_6), .in7({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, mdi_7[0]}) );
  mux_1bit wren_mux ( .select(wr_select), .out(wr_en), .in0(wren_0), .in1(
        wren_1), .in2(wren_2), .in3(wren_3), .in4(1'b0), .in5(wren_5), .in6(
        wren_6), .in7(wren_7) );
  learnCosts lc1 ( .clock(clock), .nrst(nrst), .en(en), .fsourceID(fsourceID), 
        .fbatteryStat(fbatteryStat), .fValue(fValue), .fclusterID(fclusterID), 
        .initial_epsilon({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1}), .address(addr_0), .wr_en(
        wren_0), .data_in(mem_data_out), .data_out(mdi_0), .done(
        done_learnCosts) );
  amISink ais1 ( .clock(clock), .nrst(nrst), .en(en), .start(done_learnCosts), 
        .address({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, addr_1[1], SYNOPSYS_UNCONNECTED__9}), .wr_en(
        wren_1), .data_in(mem_data_out), .data_out({SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, mdi_1[0]}), .done(
        done_iamSink) );
  amIDestination aif1 ( .clock(clock), .nrst(nrst), .en(en), .start(
        done_iamSink), .MY_NODE_ID({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1}), 
        .destinationID(fdestinationID), .done(done_iamDestination) );
  fixSinkList fsl1 ( .clock(clock), .nrst(nrst), .en(en), .start(
        done_iamDestination), .address(addr_2), .wr_en(wren_2), .data_in(
        mem_data_out), .data_out(mdi_2), .done(done_fixSinkList) );
  neighborSinkInOtherCluster nsioc1 ( .clock(clock), .nrst(nrst), .en(en), 
        .start(done_fixSinkList), .address(addr_3), .wr_en(wren_3), .data_in(
        mem_data_out), .MY_CLUSTER_ID({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1}), 
        .data_out({SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, mdi_3[0]}), .done(
        done_neighborSinkInOtherCluster) );
  findMyBest fmb1 ( .clock(clock), .nrst(nrst), .en(en), .start(
        done_neighborSinkInOtherCluster), .address(addr_4), .data_in(
        mem_data_out), .MY_BATTERY_STAT({MY_BATTERY_STAT[15:14], 1'b0, 
        MY_BATTERY_STAT[12:11], 1'b0, 1'b0, MY_BATTERY_STAT[8:7], 1'b0, 1'b0, 
        MY_BATTERY_STAT[4:3], 1'b0, 1'b0, MY_BATTERY_STAT[0]}), .mybest(mybest), .done(done_findMyBest) );
  betterNeighborsInMyCluster bnimc1 ( .clock(clock), .nrst(nrst), .en(en), 
        .start(done_findMyBest), .address(addr_5), .wr_en(wren_5), .data_in(
        mem_data_out), .MY_CLUSTER_ID({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1}), .mybest(
        mybest), .besthop(besthop), .bestvalue(bestvalue), .bestneighborID(
        bestneighborID), .nextsinks(nextsinks), .data_out(mdi_5), .done(
        done_betterNeighborsInMyCluster) );
  randomGenerator rng1 ( .clock(clock), .nrst(nrst), .rng_out(rng_out), 
        .rng_out_4bit({SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, rng_out_4bit[3:0]}), .en_rng(en_rng) );
  rngAddress rad1 ( .clock(clock), .nrst(nrst), .start_rng_address(
        start_rngAddress), .betterNeighborCount(betterNeighborCount), .which(
        which), .rng_address(rng_address), .done_rng_address(done_rngAddress)
         );
  winnerPolicy wp1 ( .clock(clock), .nrst(nrst), .en(en), .start_winnerPolicy(
        done_betterNeighborsInMyCluster), .mybest(mybest), .besthop(besthop), 
        .bestvalue(bestvalue), .bestneighborID(bestneighborID), .MY_NODE_ID({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b1, 1'b1}), .address(addr_6), .data_in(mem_data_out), 
        .wr_en(wren_6), .data_out(mdi_6), .epsilon_step({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b1}), .nexthop(nexthop), .done_winnerPolicy(done_winnerPolicy), 
        .en_rng(en_rng), .rng_out(rng_out), .rng_out_4bit({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        rng_out_4bit[3:0]}), .rng_address(rng_address), .start_rngAddress(
        start_rngAddress), .done_rng_address(done_rngAddress), 
        .betterNeighborCount(betterNeighborCount), .which(which) );
  selectMyAction sma1 ( .clock(clock), .nrst(nrst), .en(en), .start(
        done_winnerPolicy), .address({SYNOPSYS_UNCONNECTED__52, 
        SYNOPSYS_UNCONNECTED__53, SYNOPSYS_UNCONNECTED__54, 
        SYNOPSYS_UNCONNECTED__55, SYNOPSYS_UNCONNECTED__56, 
        SYNOPSYS_UNCONNECTED__57, SYNOPSYS_UNCONNECTED__58, 
        SYNOPSYS_UNCONNECTED__59, SYNOPSYS_UNCONNECTED__60, \addr_7_0[1] , 
        SYNOPSYS_UNCONNECTED__61}), .wr_en(wren_7), .nexthop(nexthop), 
        .nextsinks(nextsinks), .action(action), .data_out({
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, 
        SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, 
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71, 
        SYNOPSYS_UNCONNECTED__72, SYNOPSYS_UNCONNECTED__73, 
        SYNOPSYS_UNCONNECTED__74, SYNOPSYS_UNCONNECTED__75, 
        SYNOPSYS_UNCONNECTED__76, mdi_7[0]}), .done(done_selectMyAction) );
  reward r1 ( .clock(clock), .nrst(nrst), .en(en), .start(done_selectMyAction), 
        .MY_NODE_ID({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1}), .MY_CLUSTER_ID({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b1}), .action(action), .besthop(besthop), .address(addr_7_1), 
        .data_in(mem_data_out), .data_out(reward_out), .done(done_reward) );
  DFFSSRX1 \state_reg[0]  ( .D(n53), .RSTB(nrst), .SETB(1'b1), .CLK(clock), 
        .Q(\state[0] ), .QN(n66) );
  INVX0 U151 ( .INP(en), .ZN(n65) );
  AND2X1 U152 ( .IN1(nrst), .IN2(n31), .Q(n41) );
  INVX0 U154 ( .INP(nrst), .ZN(n54) );
  INVX0 U155 ( .INP(N37), .ZN(n57) );
  INVX0 U156 ( .INP(N38), .ZN(n55) );
  NAND2X1 U157 ( .IN1(n20), .IN2(n57), .QN(N33) );
  NOR2X0 U158 ( .IN1(n54), .IN2(n41), .QN(n17) );
  NAND2X1 U159 ( .IN1(n63), .IN2(n62), .QN(n25) );
  INVX0 U160 ( .INP(n27), .ZN(n63) );
  INVX0 U161 ( .INP(n28), .ZN(n61) );
  NAND2X1 U162 ( .IN1(n29), .IN2(n61), .QN(n20) );
  NAND2X1 U163 ( .IN1(n61), .IN2(n59), .QN(n23) );
  NAND2X1 U164 ( .IN1(n23), .IN2(n24), .QN(N38) );
  NAND2X1 U165 ( .IN1(n26), .IN2(n63), .QN(n19) );
  AND2X1 U166 ( .IN1(addr_7_1[0]), .IN2(done_selectMyAction), .Q(n43) );
  INVX0 U167 ( .INP(done_selectMyAction), .ZN(n58) );
  AND2X1 U168 ( .IN1(addr_7_1[2]), .IN2(done_selectMyAction), .Q(n44) );
  AND2X1 U169 ( .IN1(addr_7_1[3]), .IN2(done_selectMyAction), .Q(n45) );
  AND2X1 U170 ( .IN1(addr_7_1[4]), .IN2(done_selectMyAction), .Q(n46) );
  AND2X1 U171 ( .IN1(addr_7_1[5]), .IN2(done_selectMyAction), .Q(n47) );
  AND2X1 U172 ( .IN1(addr_7_1[6]), .IN2(done_selectMyAction), .Q(n48) );
  AND2X1 U173 ( .IN1(addr_7_1[7]), .IN2(done_selectMyAction), .Q(n49) );
  AND2X1 U174 ( .IN1(addr_7_1[8]), .IN2(done_selectMyAction), .Q(n50) );
  AND2X1 U175 ( .IN1(addr_7_1[10]), .IN2(done_selectMyAction), .Q(n51) );
  NAND2X1 U176 ( .IN1(en), .IN2(n66), .QN(n31) );
  AND2X1 U177 ( .IN1(done_selectMyAction), .IN2(addr_7_1[9]), .Q(n52) );
  OAI22X1 U178 ( .IN1(done_selectMyAction), .IN2(n66), .IN3(\state[0] ), .IN4(
        n65), .QN(n53) );
  INVX0 U179 ( .INP(N35), .ZN(n56) );
  INVX0 U180 ( .INP(done_fixSinkList), .ZN(n62) );
  INVX0 U181 ( .INP(done_betterNeighborsInMyCluster), .ZN(n59) );
  NAND2X1 U182 ( .IN1(done_findMyBest), .IN2(n22), .QN(n28) );
  NOR2X0 U183 ( .IN1(done_neighborSinkInOtherCluster), .IN2(n62), .QN(n26) );
  NAND2X1 U184 ( .IN1(n22), .IN2(n60), .QN(n21) );
  INVX0 U185 ( .INP(done_findMyBest), .ZN(n60) );
  NOR2X0 U186 ( .IN1(done_winnerPolicy), .IN2(n59), .QN(n29) );
  NAND2X1 U187 ( .IN1(n64), .IN2(done_learnCosts), .QN(n18) );
  INVX0 U188 ( .INP(done_iamDestination), .ZN(n64) );
  NAND2X1 U189 ( .IN1(done_learnCosts), .IN2(n18), .QN(n27) );
endmodule

