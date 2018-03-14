
module mux_1bit ( select, out, in0, in1, in2, in3, in4, in5, in6, in7 );
  input [2:0] select;
  input in0, in1, in2, in3, in4, in5, in6, in7;
  output out;
  wire   n10, n11;

  MUX21X1 U11 ( .IN1(n10), .IN2(n11), .S(select[2]), .Q(out) );
  MUX41X1 U12 ( .IN1(in4), .IN3(in6), .IN2(in5), .IN4(in7), .S0(select[1]), 
        .S1(select[0]), .Q(n11) );
  MUX41X1 U13 ( .IN1(in0), .IN3(in2), .IN2(in1), .IN4(in3), .S0(select[1]), 
        .S1(select[0]), .Q(n10) );
endmodule

