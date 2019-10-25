/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : M-2016.12
// Date      : Fri Oct 25 08:32:30 2019
/////////////////////////////////////////////////////////////


module Reg_Cell_31 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n3;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n3), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n3) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Reg_Cell_30 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n3;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n3), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n3) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Reg_Cell_29 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n5;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n5), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n5) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Reg_Cell_28 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n5;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n5), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n5) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Reg_Cell_27 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n5;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n5), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n5) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Reg_Cell_26 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n5;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n5), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n5) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Reg_Cell_25 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n5;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n5), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n5) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Reg_Cell_24 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n5;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n5), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n5) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Reg_Cell_23 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n5;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n5), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n5) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Reg_Cell_22 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n5;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n5), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n5) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Reg_Cell_21 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n5;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n5), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n5) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Reg_Cell_20 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n5;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n5), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n5) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Reg_Cell_19 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n5;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n5), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n5) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Reg_Cell_18 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n5;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n5), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n5) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Reg_Cell_17 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n5;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n5), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n5) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Reg_Cell_16 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n5;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n5), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n5) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Generator_0 ( seed, addr, set, clk );
  input [14:0] seed;
  output [3:0] addr;
  input set, clk;
  wire   \_0_net_[0] , n1, n2, n3, n4, n5, n6, n7, n8, n11, n12;
  wire   [15:0] R;

  Reg_Cell_31 \Cell[0]  ( .D(\_0_net_[0] ), .Q(R[0]), .set(n12), .set_D(1'b1), 
        .clk(clk) );
  Reg_Cell_30 \Cell[1]  ( .D(R[0]), .Q(R[1]), .set(n12), .set_D(seed[0]), 
        .clk(clk) );
  Reg_Cell_29 \Cell[2]  ( .D(R[1]), .Q(R[2]), .set(n11), .set_D(seed[1]), 
        .clk(clk) );
  Reg_Cell_28 \Cell[3]  ( .D(R[2]), .Q(R[3]), .set(n11), .set_D(seed[2]), 
        .clk(clk) );
  Reg_Cell_27 \Cell[4]  ( .D(R[3]), .Q(R[4]), .set(n11), .set_D(seed[3]), 
        .clk(clk) );
  Reg_Cell_26 \Cell[5]  ( .D(R[4]), .Q(R[5]), .set(n11), .set_D(seed[4]), 
        .clk(clk) );
  Reg_Cell_25 \Cell[6]  ( .D(R[5]), .Q(R[6]), .set(n11), .set_D(seed[5]), 
        .clk(clk) );
  Reg_Cell_24 \Cell[7]  ( .D(R[6]), .Q(R[7]), .set(n11), .set_D(seed[6]), 
        .clk(clk) );
  Reg_Cell_23 \Cell[8]  ( .D(R[7]), .Q(R[8]), .set(n11), .set_D(seed[7]), 
        .clk(clk) );
  Reg_Cell_22 \Cell[9]  ( .D(R[8]), .Q(R[9]), .set(n11), .set_D(seed[8]), 
        .clk(clk) );
  Reg_Cell_21 \Cell[10]  ( .D(R[9]), .Q(R[10]), .set(n11), .set_D(seed[9]), 
        .clk(clk) );
  Reg_Cell_20 \Cell[11]  ( .D(R[10]), .Q(R[11]), .set(n11), .set_D(seed[10]), 
        .clk(clk) );
  Reg_Cell_19 \Cell[12]  ( .D(R[11]), .Q(R[12]), .set(n11), .set_D(seed[11]), 
        .clk(clk) );
  Reg_Cell_18 \Cell[13]  ( .D(R[12]), .Q(R[13]), .set(n11), .set_D(seed[12]), 
        .clk(clk) );
  Reg_Cell_17 \Cell[14]  ( .D(R[13]), .Q(R[14]), .set(n12), .set_D(seed[13]), 
        .clk(clk) );
  Reg_Cell_16 \Cell[15]  ( .D(R[14]), .Q(R[15]), .set(n12), .set_D(seed[14]), 
        .clk(clk) );
  XNOR2X1 U2 ( .A(R[13]), .B(n1), .Y(addr[3]) );
  XNOR2X1 U3 ( .A(R[3]), .B(n1), .Y(\_0_net_[0] ) );
  CLKBUFX3 U4 ( .A(set), .Y(n11) );
  XOR2X1 U5 ( .A(n2), .B(n3), .Y(addr[2]) );
  XNOR2X1 U6 ( .A(R[11]), .B(R[10]), .Y(n3) );
  XNOR2X1 U7 ( .A(R[9]), .B(R[8]), .Y(n2) );
  XOR2X1 U8 ( .A(n4), .B(n5), .Y(addr[1]) );
  XNOR2X1 U9 ( .A(R[5]), .B(R[4]), .Y(n5) );
  XNOR2X1 U10 ( .A(R[7]), .B(R[6]), .Y(n4) );
  XOR2X1 U11 ( .A(n6), .B(n7), .Y(addr[0]) );
  XOR2X1 U12 ( .A(R[1]), .B(R[0]), .Y(n7) );
  XOR2X1 U13 ( .A(R[3]), .B(R[2]), .Y(n6) );
  XOR2X1 U14 ( .A(n8), .B(R[12]), .Y(n1) );
  XNOR2X1 U15 ( .A(R[15]), .B(R[14]), .Y(n8) );
  CLKBUFX3 U16 ( .A(set), .Y(n12) );
endmodule


module Reg_Cell_15 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n5;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n5), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n5) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Reg_Cell_14 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n5;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n5), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n5) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Reg_Cell_13 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n5;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n5), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n5) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Reg_Cell_12 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n5;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n5), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n5) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Reg_Cell_11 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n5;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n5), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n5) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Reg_Cell_10 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n5;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n5), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n5) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Reg_Cell_9 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n5;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n5), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n5) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Reg_Cell_8 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n5;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n5), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n5) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Reg_Cell_7 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n5;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n5), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n5) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Reg_Cell_6 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n5;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n5), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n5) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Reg_Cell_5 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n5;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n5), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n5) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Reg_Cell_4 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n5;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n5), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n5) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Reg_Cell_3 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n5;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n5), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n5) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Reg_Cell_2 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n5;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n5), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n5) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Reg_Cell_1 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n5;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n5), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n5) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Reg_Cell_0 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n5;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n5), .Q(Q) );
  NAND2BX1 U3 ( .AN(set_D), .B(set), .Y(n5) );
  NAND2X1 U4 ( .A(set_D), .B(set), .Y(n1) );
endmodule


module Generator_1 ( seed, addr, set, clk );
  input [14:0] seed;
  output [3:0] addr;
  input set, clk;
  wire   \_0_net_[0] , n1, n2, n3, n4, n5, n6, n7, n8, n19, n20;
  wire   [15:0] R;

  Reg_Cell_15 \Cell[0]  ( .D(\_0_net_[0] ), .Q(R[0]), .set(n19), .set_D(1'b1), 
        .clk(clk) );
  Reg_Cell_14 \Cell[1]  ( .D(R[0]), .Q(R[1]), .set(n19), .set_D(seed[0]), 
        .clk(clk) );
  Reg_Cell_13 \Cell[2]  ( .D(R[1]), .Q(R[2]), .set(n19), .set_D(seed[1]), 
        .clk(clk) );
  Reg_Cell_12 \Cell[3]  ( .D(R[2]), .Q(R[3]), .set(n19), .set_D(seed[2]), 
        .clk(clk) );
  Reg_Cell_11 \Cell[4]  ( .D(R[3]), .Q(R[4]), .set(n19), .set_D(seed[3]), 
        .clk(clk) );
  Reg_Cell_10 \Cell[5]  ( .D(R[4]), .Q(R[5]), .set(n19), .set_D(seed[4]), 
        .clk(clk) );
  Reg_Cell_9 \Cell[6]  ( .D(R[5]), .Q(R[6]), .set(n19), .set_D(seed[5]), .clk(
        clk) );
  Reg_Cell_8 \Cell[7]  ( .D(R[6]), .Q(R[7]), .set(n19), .set_D(seed[6]), .clk(
        clk) );
  Reg_Cell_7 \Cell[8]  ( .D(R[7]), .Q(R[8]), .set(n19), .set_D(seed[7]), .clk(
        clk) );
  Reg_Cell_6 \Cell[9]  ( .D(R[8]), .Q(R[9]), .set(n19), .set_D(seed[8]), .clk(
        clk) );
  Reg_Cell_5 \Cell[10]  ( .D(R[9]), .Q(R[10]), .set(n19), .set_D(seed[9]), 
        .clk(clk) );
  Reg_Cell_4 \Cell[11]  ( .D(R[10]), .Q(R[11]), .set(n19), .set_D(seed[10]), 
        .clk(clk) );
  Reg_Cell_3 \Cell[12]  ( .D(R[11]), .Q(R[12]), .set(n20), .set_D(seed[11]), 
        .clk(clk) );
  Reg_Cell_2 \Cell[13]  ( .D(R[12]), .Q(R[13]), .set(n20), .set_D(seed[12]), 
        .clk(clk) );
  Reg_Cell_1 \Cell[14]  ( .D(R[13]), .Q(R[14]), .set(n20), .set_D(seed[13]), 
        .clk(clk) );
  Reg_Cell_0 \Cell[15]  ( .D(R[14]), .Q(R[15]), .set(n20), .set_D(seed[14]), 
        .clk(clk) );
  XNOR2X1 U2 ( .A(R[13]), .B(n1), .Y(addr[3]) );
  XNOR2X1 U3 ( .A(R[3]), .B(n1), .Y(\_0_net_[0] ) );
  CLKBUFX3 U4 ( .A(set), .Y(n19) );
  XOR2X1 U5 ( .A(n2), .B(n3), .Y(addr[2]) );
  XNOR2X1 U6 ( .A(R[11]), .B(R[10]), .Y(n3) );
  XNOR2X1 U7 ( .A(R[9]), .B(R[8]), .Y(n2) );
  XOR2X1 U8 ( .A(n4), .B(n5), .Y(addr[1]) );
  XNOR2X1 U9 ( .A(R[5]), .B(R[4]), .Y(n5) );
  XNOR2X1 U10 ( .A(R[7]), .B(R[6]), .Y(n4) );
  XOR2X1 U11 ( .A(n6), .B(n7), .Y(addr[0]) );
  XOR2X1 U12 ( .A(R[1]), .B(R[0]), .Y(n7) );
  XOR2X1 U13 ( .A(R[3]), .B(R[2]), .Y(n6) );
  XOR2X1 U14 ( .A(n8), .B(R[12]), .Y(n1) );
  XNOR2X1 U15 ( .A(R[15]), .B(R[14]), .Y(n8) );
  CLKBUFX3 U16 ( .A(set), .Y(n20) );
endmodule


module Decoder_4_to_16_0 ( addr, enable, signal );
  input [3:0] addr;
  output [15:0] signal;
  input enable;
  wire   n5, n6, n7, n8, n9, n10, n11, n12, n4, n13, n14, n15;

  NOR2X1 U2 ( .A(n6), .B(n10), .Y(signal[0]) );
  NAND3X1 U3 ( .A(n4), .B(n15), .C(enable), .Y(n10) );
  NOR2X1 U4 ( .A(n6), .B(n7), .Y(signal[8]) );
  NOR2X1 U5 ( .A(n6), .B(n8), .Y(signal[1]) );
  NOR2X1 U6 ( .A(n9), .B(n10), .Y(signal[6]) );
  NOR2X1 U7 ( .A(n5), .B(n12), .Y(signal[11]) );
  NOR2X1 U8 ( .A(n5), .B(n11), .Y(signal[13]) );
  NOR2X1 U9 ( .A(n5), .B(n9), .Y(signal[15]) );
  NOR2X1 U10 ( .A(n5), .B(n6), .Y(signal[9]) );
  NOR2X1 U11 ( .A(n7), .B(n9), .Y(signal[14]) );
  NOR2X1 U12 ( .A(n7), .B(n11), .Y(signal[12]) );
  NOR2X1 U13 ( .A(n7), .B(n12), .Y(signal[10]) );
  NOR2X1 U14 ( .A(n8), .B(n11), .Y(signal[5]) );
  NOR2X1 U15 ( .A(n8), .B(n9), .Y(signal[7]) );
  NOR2X1 U16 ( .A(n8), .B(n12), .Y(signal[3]) );
  NOR2X1 U17 ( .A(n10), .B(n12), .Y(signal[2]) );
  NOR2X1 U18 ( .A(n10), .B(n11), .Y(signal[4]) );
  NAND2X1 U19 ( .A(n13), .B(n14), .Y(n6) );
  NAND3X1 U20 ( .A(addr[3]), .B(addr[0]), .C(enable), .Y(n5) );
  NAND3X1 U21 ( .A(addr[3]), .B(n4), .C(enable), .Y(n7) );
  NAND3X1 U22 ( .A(addr[0]), .B(n15), .C(enable), .Y(n8) );
  NAND2X1 U23 ( .A(addr[2]), .B(addr[1]), .Y(n9) );
  NAND2X1 U24 ( .A(addr[2]), .B(n13), .Y(n11) );
  NAND2X1 U25 ( .A(addr[1]), .B(n14), .Y(n12) );
  CLKINVX1 U26 ( .A(addr[3]), .Y(n15) );
  CLKINVX1 U27 ( .A(addr[1]), .Y(n13) );
  CLKINVX1 U28 ( .A(addr[2]), .Y(n14) );
  CLKINVX1 U29 ( .A(addr[0]), .Y(n4) );
endmodule


module Decoder_4_to_16_1 ( addr, enable, signal );
  input [3:0] addr;
  output [15:0] signal;
  input enable;
  wire   n5, n6, n7, n8, n9, n10, n11, n12, n22, n23, n24, n25;

  NOR2X1 U2 ( .A(n6), .B(n10), .Y(signal[0]) );
  NOR2X1 U3 ( .A(n8), .B(n11), .Y(signal[5]) );
  NOR2X1 U4 ( .A(n10), .B(n12), .Y(signal[2]) );
  NOR2X1 U5 ( .A(n10), .B(n11), .Y(signal[4]) );
  NOR2X1 U6 ( .A(n5), .B(n12), .Y(signal[11]) );
  NOR2X1 U7 ( .A(n5), .B(n11), .Y(signal[13]) );
  NOR2X1 U8 ( .A(n5), .B(n9), .Y(signal[15]) );
  NOR2X1 U9 ( .A(n7), .B(n9), .Y(signal[14]) );
  NOR2X1 U10 ( .A(n7), .B(n11), .Y(signal[12]) );
  NOR2X1 U11 ( .A(n7), .B(n12), .Y(signal[10]) );
  NOR2X1 U12 ( .A(n5), .B(n6), .Y(signal[9]) );
  NOR2X1 U13 ( .A(n8), .B(n9), .Y(signal[7]) );
  NOR2X1 U14 ( .A(n8), .B(n12), .Y(signal[3]) );
  NOR2X1 U15 ( .A(n9), .B(n10), .Y(signal[6]) );
  NOR2X1 U16 ( .A(n6), .B(n7), .Y(signal[8]) );
  NOR2X1 U17 ( .A(n6), .B(n8), .Y(signal[1]) );
  NAND3X1 U18 ( .A(n22), .B(n25), .C(enable), .Y(n10) );
  NAND2X1 U19 ( .A(n23), .B(n24), .Y(n6) );
  NAND3X1 U20 ( .A(addr[3]), .B(addr[0]), .C(enable), .Y(n5) );
  NAND3X1 U21 ( .A(addr[3]), .B(n22), .C(enable), .Y(n7) );
  NAND3X1 U22 ( .A(addr[0]), .B(n25), .C(enable), .Y(n8) );
  NAND2X1 U23 ( .A(addr[2]), .B(addr[1]), .Y(n9) );
  NAND2X1 U24 ( .A(addr[2]), .B(n23), .Y(n11) );
  NAND2X1 U25 ( .A(addr[1]), .B(n24), .Y(n12) );
  CLKINVX1 U26 ( .A(addr[3]), .Y(n25) );
  CLKINVX1 U27 ( .A(addr[1]), .Y(n23) );
  CLKINVX1 U28 ( .A(addr[2]), .Y(n24) );
  CLKINVX1 U29 ( .A(addr[0]), .Y(n22) );
endmodule


module Mole_Cell_15 ( good_signal, good_mole, bad_signal, bad_mole, hit_piont, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_piont, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N6, N7, n18, n1, n2, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82;
  wire   [9:0] next_cell_score;
  wire   [3:0] next_counter;
  assign good_mole = N6;
  assign cell_score[9] = N7;
  assign bad_mole = N7;

  DFFRX1 \cell_score_reg[9]  ( .D(n66), .CK(clk), .RN(n79), .Q(N7), .QN(n65)
         );
  DFFRX1 \counter_reg[1]  ( .D(next_counter[1]), .CK(clk), .RN(n79), .QN(n57)
         );
  DFFRX1 \counter_reg[2]  ( .D(n77), .CK(clk), .RN(n79), .Q(n73), .QN(n18) );
  DFFRX1 \counter_reg[0]  ( .D(next_counter[0]), .CK(clk), .RN(n79), .QN(n56)
         );
  DFFRX1 \counter_reg[3]  ( .D(next_counter[3]), .CK(clk), .RN(n79), .Q(n55)
         );
  DFFRX1 \cell_score_reg[6]  ( .D(n69), .CK(clk), .RN(n79), .Q(cell_score[6]), 
        .QN(n61) );
  DFFRX1 \cell_score_reg[8]  ( .D(n71), .CK(clk), .RN(n79), .Q(cell_score[8]), 
        .QN(n60) );
  DFFRX1 \cell_score_reg[7]  ( .D(n70), .CK(clk), .RN(n79), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[4]  ( .D(n67), .CK(clk), .RN(n79), .Q(cell_score[4]), 
        .QN(n58) );
  DFFRX1 \cell_score_reg[5]  ( .D(n68), .CK(clk), .RN(n79), .Q(cell_score[5]), 
        .QN(n59) );
  DFFRX1 \cell_score_reg[3]  ( .D(next_cell_score[3]), .CK(clk), .RN(n79), .Q(
        cell_score[3]), .QN(n64) );
  DFFRX1 \cell_score_reg[2]  ( .D(next_cell_score[2]), .CK(clk), .RN(n79), .Q(
        cell_score[2]), .QN(n63) );
  DFFRX1 \cell_score_reg[1]  ( .D(next_cell_score[1]), .CK(clk), .RN(n79), .Q(
        cell_score[1]), .QN(n62) );
  DFFRX1 \cell_score_reg[0]  ( .D(n72), .CK(clk), .RN(n79), .Q(cell_score[0]), 
        .QN(n1) );
  NAND3X1 U3 ( .A(enable), .B(n76), .C(bad_signal), .Y(n43) );
  OA21XL U4 ( .A0(n75), .A1(n76), .B0(n43), .Y(n37) );
  CLKINVX1 U5 ( .A(good_signal), .Y(n76) );
  CLKINVX1 U6 ( .A(n39), .Y(n78) );
  OA21XL U7 ( .A0(n80), .A1(n39), .B0(n44), .Y(n52) );
  OA21XL U8 ( .A0(n82), .A1(n39), .B0(n44), .Y(n35) );
  OA21XL U9 ( .A0(n81), .A1(n39), .B0(n44), .Y(n48) );
  CLKINVX1 U10 ( .A(enable), .Y(n75) );
  CLKINVX1 U11 ( .A(game_reset), .Y(n79) );
  NAND2X1 U12 ( .A(N6), .B(n54), .Y(n39) );
  NAND2BX1 U13 ( .AN(N6), .B(n54), .Y(n44) );
  CLKINVX1 U14 ( .A(n38), .Y(n82) );
  CLKINVX1 U15 ( .A(n47), .Y(n81) );
  CLKINVX1 U16 ( .A(n51), .Y(n80) );
  NOR3X1 U17 ( .A(hit_piont), .B(enable), .C(n33), .Y(n54) );
  OAI22XL U18 ( .A0(n38), .A1(n39), .B0(n63), .B1(n40), .Y(next_cell_score[2])
         );
  OA21XL U19 ( .A0(n62), .A1(n39), .B0(n41), .Y(n40) );
  NAND3X1 U20 ( .A(n63), .B(n1), .C(n62), .Y(n38) );
  NAND3X1 U21 ( .A(n61), .B(n81), .C(n59), .Y(n51) );
  NAND3X1 U22 ( .A(n64), .B(n82), .C(n58), .Y(n47) );
  NOR3BXL U23 ( .AN(n56), .B(n33), .C(enable), .Y(next_counter[0]) );
  OA21XL U24 ( .A0(n2), .A1(n39), .B0(n52), .Y(n45) );
  AOI31X1 U25 ( .A0(n60), .A1(n80), .A2(n2), .B0(N7), .Y(N6) );
  OAI21XL U26 ( .A0(n65), .A1(n45), .B0(n43), .Y(n66) );
  OAI21XL U27 ( .A0(n60), .A1(n45), .B0(n43), .Y(n71) );
  OA21XL U28 ( .A0(n1), .A1(n39), .B0(n44), .Y(n41) );
  OAI221XL U29 ( .A0(n1), .A1(n44), .B0(cell_score[0]), .B1(n39), .C0(n43), 
        .Y(n72) );
  OAI221XL U30 ( .A0(n58), .A1(n46), .B0(n47), .B1(n39), .C0(n43), .Y(n67) );
  OA21XL U31 ( .A0(n64), .A1(n39), .B0(n35), .Y(n46) );
  OAI221XL U32 ( .A0(n61), .A1(n50), .B0(n51), .B1(n39), .C0(n43), .Y(n69) );
  OA21XL U33 ( .A0(n59), .A1(n39), .B0(n48), .Y(n50) );
  OAI211X1 U34 ( .A0(n62), .A1(n41), .B0(n42), .C0(n37), .Y(next_cell_score[1]) );
  NAND3X1 U35 ( .A(n62), .B(n1), .C(n78), .Y(n42) );
  OAI211X1 U36 ( .A0(n64), .A1(n35), .B0(n36), .C0(n37), .Y(next_cell_score[3]) );
  NAND3X1 U37 ( .A(n64), .B(n82), .C(n78), .Y(n36) );
  OAI211X1 U38 ( .A0(n59), .A1(n48), .B0(n49), .C0(n43), .Y(n68) );
  NAND3X1 U39 ( .A(n59), .B(n81), .C(n78), .Y(n49) );
  OAI211X1 U40 ( .A0(n2), .A1(n52), .B0(n53), .C0(n43), .Y(n70) );
  NAND3X1 U41 ( .A(n2), .B(n80), .C(n78), .Y(n53) );
  CLKINVX1 U42 ( .A(n32), .Y(n77) );
  AOI33X1 U43 ( .A0(next_counter[0]), .A1(n57), .A2(n18), .B0(n31), .B1(n73), 
        .B2(n75), .Y(n32) );
  NOR3X1 U44 ( .A(n31), .B(n55), .C(n73), .Y(n33) );
  NAND2X1 U45 ( .A(n56), .B(n57), .Y(n31) );
  OAI21XL U46 ( .A0(n33), .A1(n34), .B0(n75), .Y(next_counter[1]) );
  OA21XL U47 ( .A0(n56), .A1(n57), .B0(n31), .Y(n34) );
  OAI2BB1X1 U48 ( .A0N(n74), .A1N(n55), .B0(n75), .Y(next_counter[3]) );
  OR2X1 U49 ( .A(n31), .B(n73), .Y(n74) );
endmodule


module Mole_Cell_14 ( good_signal, good_mole, bad_signal, bad_mole, hit_piont, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_piont, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N6, N7, n1, n2, n63, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82;
  wire   [9:0] next_cell_score;
  wire   [3:0] next_counter;
  assign good_mole = N6;
  assign cell_score[9] = N7;
  assign bad_mole = N7;

  DFFRX1 \cell_score_reg[9]  ( .D(n71), .CK(clk), .RN(n79), .Q(N7), .QN(n65)
         );
  DFFRX1 \counter_reg[1]  ( .D(next_counter[1]), .CK(clk), .RN(n79), .QN(n56)
         );
  DFFRX1 \counter_reg[2]  ( .D(n77), .CK(clk), .RN(n79), .Q(n73), .QN(n63) );
  DFFRX1 \counter_reg[0]  ( .D(next_counter[0]), .CK(clk), .RN(n79), .QN(n55)
         );
  DFFRX1 \counter_reg[3]  ( .D(next_counter[3]), .CK(clk), .RN(n79), .Q(n54)
         );
  DFFRX1 \cell_score_reg[6]  ( .D(n68), .CK(clk), .RN(n79), .Q(cell_score[6]), 
        .QN(n60) );
  DFFRX1 \cell_score_reg[8]  ( .D(n70), .CK(clk), .RN(n79), .Q(cell_score[8]), 
        .QN(n59) );
  DFFRX1 \cell_score_reg[7]  ( .D(n69), .CK(clk), .RN(n79), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[4]  ( .D(n66), .CK(clk), .RN(n79), .Q(cell_score[4]), 
        .QN(n57) );
  DFFRX1 \cell_score_reg[5]  ( .D(n67), .CK(clk), .RN(n79), .Q(cell_score[5]), 
        .QN(n58) );
  DFFRX1 \cell_score_reg[0]  ( .D(n72), .CK(clk), .RN(n79), .Q(cell_score[0]), 
        .QN(n1) );
  DFFRX1 \cell_score_reg[3]  ( .D(next_cell_score[3]), .CK(clk), .RN(n79), .Q(
        cell_score[3]), .QN(n64) );
  DFFRX1 \cell_score_reg[2]  ( .D(next_cell_score[2]), .CK(clk), .RN(n79), .Q(
        cell_score[2]), .QN(n62) );
  DFFRX1 \cell_score_reg[1]  ( .D(next_cell_score[1]), .CK(clk), .RN(n79), .Q(
        cell_score[1]), .QN(n61) );
  OA21XL U3 ( .A0(n75), .A1(n76), .B0(n42), .Y(n36) );
  NAND3X1 U4 ( .A(enable), .B(n76), .C(bad_signal), .Y(n42) );
  CLKINVX1 U5 ( .A(n38), .Y(n78) );
  OA21XL U6 ( .A0(n80), .A1(n38), .B0(n43), .Y(n50) );
  OA21XL U7 ( .A0(n82), .A1(n38), .B0(n43), .Y(n34) );
  OA21XL U8 ( .A0(n81), .A1(n38), .B0(n43), .Y(n46) );
  CLKINVX1 U9 ( .A(enable), .Y(n75) );
  CLKINVX1 U10 ( .A(good_signal), .Y(n76) );
  CLKINVX1 U11 ( .A(game_reset), .Y(n79) );
  NAND2X1 U12 ( .A(N6), .B(n53), .Y(n38) );
  NAND2BX1 U13 ( .AN(N6), .B(n53), .Y(n43) );
  CLKINVX1 U14 ( .A(n37), .Y(n82) );
  CLKINVX1 U15 ( .A(n45), .Y(n81) );
  CLKINVX1 U16 ( .A(n49), .Y(n80) );
  NOR3X1 U17 ( .A(hit_piont), .B(enable), .C(n32), .Y(n53) );
  OAI22XL U18 ( .A0(n37), .A1(n38), .B0(n62), .B1(n39), .Y(next_cell_score[2])
         );
  OA21XL U19 ( .A0(n61), .A1(n38), .B0(n40), .Y(n39) );
  NAND3X1 U20 ( .A(n62), .B(n1), .C(n61), .Y(n37) );
  NAND3X1 U21 ( .A(n60), .B(n81), .C(n58), .Y(n49) );
  NAND3X1 U22 ( .A(n64), .B(n82), .C(n57), .Y(n45) );
  NOR3BXL U23 ( .AN(n55), .B(n32), .C(enable), .Y(next_counter[0]) );
  OA21XL U24 ( .A0(n2), .A1(n38), .B0(n50), .Y(n52) );
  AOI31X1 U25 ( .A0(n59), .A1(n80), .A2(n2), .B0(N7), .Y(N6) );
  OAI21XL U26 ( .A0(n65), .A1(n52), .B0(n42), .Y(n71) );
  OAI21XL U27 ( .A0(n59), .A1(n52), .B0(n42), .Y(n70) );
  OA21XL U28 ( .A0(n1), .A1(n38), .B0(n43), .Y(n40) );
  OAI221XL U29 ( .A0(n1), .A1(n43), .B0(cell_score[0]), .B1(n38), .C0(n42), 
        .Y(n72) );
  OAI221XL U30 ( .A0(n57), .A1(n44), .B0(n45), .B1(n38), .C0(n42), .Y(n66) );
  OA21XL U31 ( .A0(n64), .A1(n38), .B0(n34), .Y(n44) );
  OAI221XL U32 ( .A0(n60), .A1(n48), .B0(n49), .B1(n38), .C0(n42), .Y(n68) );
  OA21XL U33 ( .A0(n58), .A1(n38), .B0(n46), .Y(n48) );
  OAI211X1 U34 ( .A0(n61), .A1(n40), .B0(n41), .C0(n36), .Y(next_cell_score[1]) );
  NAND3X1 U35 ( .A(n61), .B(n1), .C(n78), .Y(n41) );
  OAI211X1 U36 ( .A0(n64), .A1(n34), .B0(n35), .C0(n36), .Y(next_cell_score[3]) );
  NAND3X1 U37 ( .A(n64), .B(n82), .C(n78), .Y(n35) );
  OAI211X1 U38 ( .A0(n58), .A1(n46), .B0(n47), .C0(n42), .Y(n67) );
  NAND3X1 U39 ( .A(n58), .B(n81), .C(n78), .Y(n47) );
  OAI211X1 U40 ( .A0(n2), .A1(n50), .B0(n51), .C0(n42), .Y(n69) );
  NAND3X1 U41 ( .A(n2), .B(n80), .C(n78), .Y(n51) );
  CLKINVX1 U42 ( .A(n31), .Y(n77) );
  AOI33X1 U43 ( .A0(next_counter[0]), .A1(n56), .A2(n63), .B0(n30), .B1(n73), 
        .B2(n75), .Y(n31) );
  NOR3X1 U44 ( .A(n30), .B(n54), .C(n73), .Y(n32) );
  NAND2X1 U45 ( .A(n55), .B(n56), .Y(n30) );
  OAI21XL U46 ( .A0(n32), .A1(n33), .B0(n75), .Y(next_counter[1]) );
  OA21XL U47 ( .A0(n55), .A1(n56), .B0(n30), .Y(n33) );
  OAI2BB1X1 U48 ( .A0N(n74), .A1N(n54), .B0(n75), .Y(next_counter[3]) );
  OR2X1 U49 ( .A(n30), .B(n73), .Y(n74) );
endmodule


module Mole_Cell_13 ( good_signal, good_mole, bad_signal, bad_mole, hit_piont, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_piont, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N6, N7, n1, n2, n63, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124;
  wire   [9:0] next_cell_score;
  wire   [3:0] next_counter;
  assign good_mole = N6;
  assign cell_score[9] = N7;
  assign bad_mole = N7;

  DFFRX1 \cell_score_reg[9]  ( .D(n84), .CK(clk), .RN(n82), .Q(N7), .QN(n90)
         );
  DFFRX1 \counter_reg[1]  ( .D(next_counter[1]), .CK(clk), .RN(n82), .QN(n98)
         );
  DFFRX1 \counter_reg[2]  ( .D(n76), .CK(clk), .RN(n82), .Q(n73), .QN(n63) );
  DFFRX1 \counter_reg[0]  ( .D(next_counter[0]), .CK(clk), .RN(n82), .QN(n99)
         );
  DFFRX1 \counter_reg[3]  ( .D(next_counter[3]), .CK(clk), .RN(n82), .Q(n100)
         );
  DFFRX1 \cell_score_reg[6]  ( .D(n87), .CK(clk), .RN(n82), .Q(cell_score[6]), 
        .QN(n94) );
  DFFRX1 \cell_score_reg[8]  ( .D(n85), .CK(clk), .RN(n82), .Q(cell_score[8]), 
        .QN(n95) );
  DFFRX1 \cell_score_reg[7]  ( .D(n86), .CK(clk), .RN(n82), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[4]  ( .D(n89), .CK(clk), .RN(n82), .Q(cell_score[4]), 
        .QN(n97) );
  DFFRX1 \cell_score_reg[5]  ( .D(n88), .CK(clk), .RN(n82), .Q(cell_score[5]), 
        .QN(n96) );
  DFFRX1 \cell_score_reg[0]  ( .D(n83), .CK(clk), .RN(n82), .Q(cell_score[0]), 
        .QN(n1) );
  DFFRX1 \cell_score_reg[3]  ( .D(next_cell_score[3]), .CK(clk), .RN(n82), .Q(
        cell_score[3]), .QN(n91) );
  DFFRX1 \cell_score_reg[2]  ( .D(next_cell_score[2]), .CK(clk), .RN(n82), .Q(
        cell_score[2]), .QN(n92) );
  DFFRX1 \cell_score_reg[1]  ( .D(next_cell_score[1]), .CK(clk), .RN(n82), .Q(
        cell_score[1]), .QN(n93) );
  CLKINVX1 U3 ( .A(enable), .Y(n75) );
  OA21XL U4 ( .A0(n75), .A1(n81), .B0(n112), .Y(n118) );
  NAND3X1 U5 ( .A(enable), .B(n81), .C(bad_signal), .Y(n112) );
  CLKINVX1 U6 ( .A(n116), .Y(n77) );
  OA21XL U7 ( .A0(n78), .A1(n116), .B0(n111), .Y(n104) );
  OA21XL U8 ( .A0(n80), .A1(n116), .B0(n111), .Y(n120) );
  OA21XL U9 ( .A0(n79), .A1(n116), .B0(n111), .Y(n108) );
  CLKINVX1 U10 ( .A(good_signal), .Y(n81) );
  CLKINVX1 U11 ( .A(game_reset), .Y(n82) );
  NAND2X1 U12 ( .A(N6), .B(n101), .Y(n116) );
  NAND2BX1 U13 ( .AN(N6), .B(n101), .Y(n111) );
  CLKINVX1 U14 ( .A(n117), .Y(n80) );
  CLKINVX1 U15 ( .A(n109), .Y(n79) );
  CLKINVX1 U16 ( .A(n105), .Y(n78) );
  NOR3X1 U17 ( .A(hit_piont), .B(enable), .C(n122), .Y(n101) );
  NAND3X1 U18 ( .A(n92), .B(n1), .C(n93), .Y(n117) );
  NAND3X1 U19 ( .A(n94), .B(n79), .C(n96), .Y(n105) );
  NAND3X1 U20 ( .A(n91), .B(n80), .C(n97), .Y(n109) );
  NOR3BXL U21 ( .AN(n99), .B(n122), .C(enable), .Y(next_counter[0]) );
  OA21XL U22 ( .A0(n2), .A1(n116), .B0(n104), .Y(n102) );
  AOI31X1 U23 ( .A0(n95), .A1(n78), .A2(n2), .B0(N7), .Y(N6) );
  OAI21XL U24 ( .A0(n90), .A1(n102), .B0(n112), .Y(n84) );
  OAI21XL U25 ( .A0(n95), .A1(n102), .B0(n112), .Y(n85) );
  OAI22XL U26 ( .A0(n117), .A1(n116), .B0(n92), .B1(n115), .Y(
        next_cell_score[2]) );
  OA21XL U27 ( .A0(n93), .A1(n116), .B0(n114), .Y(n115) );
  OA21XL U28 ( .A0(n1), .A1(n116), .B0(n111), .Y(n114) );
  OAI221XL U29 ( .A0(n1), .A1(n111), .B0(cell_score[0]), .B1(n116), .C0(n112), 
        .Y(n83) );
  OAI221XL U30 ( .A0(n97), .A1(n110), .B0(n109), .B1(n116), .C0(n112), .Y(n89)
         );
  OA21XL U31 ( .A0(n91), .A1(n116), .B0(n120), .Y(n110) );
  OAI221XL U32 ( .A0(n94), .A1(n106), .B0(n105), .B1(n116), .C0(n112), .Y(n87)
         );
  OA21XL U33 ( .A0(n96), .A1(n116), .B0(n108), .Y(n106) );
  OAI211X1 U34 ( .A0(n93), .A1(n114), .B0(n113), .C0(n118), .Y(
        next_cell_score[1]) );
  NAND3X1 U35 ( .A(n93), .B(n1), .C(n77), .Y(n113) );
  OAI211X1 U36 ( .A0(n91), .A1(n120), .B0(n119), .C0(n118), .Y(
        next_cell_score[3]) );
  NAND3X1 U37 ( .A(n91), .B(n80), .C(n77), .Y(n119) );
  OAI211X1 U38 ( .A0(n96), .A1(n108), .B0(n107), .C0(n112), .Y(n88) );
  NAND3X1 U39 ( .A(n96), .B(n79), .C(n77), .Y(n107) );
  OAI211X1 U40 ( .A0(n2), .A1(n104), .B0(n103), .C0(n112), .Y(n86) );
  NAND3X1 U41 ( .A(n2), .B(n78), .C(n77), .Y(n103) );
  CLKINVX1 U42 ( .A(n123), .Y(n76) );
  AOI33X1 U43 ( .A0(next_counter[0]), .A1(n98), .A2(n63), .B0(n124), .B1(n73), 
        .B2(n75), .Y(n123) );
  NOR3X1 U44 ( .A(n124), .B(n100), .C(n73), .Y(n122) );
  NAND2X1 U45 ( .A(n99), .B(n98), .Y(n124) );
  OAI21XL U46 ( .A0(n122), .A1(n121), .B0(n75), .Y(next_counter[1]) );
  OA21XL U47 ( .A0(n99), .A1(n98), .B0(n124), .Y(n121) );
  OAI2BB1X1 U48 ( .A0N(n74), .A1N(n100), .B0(n75), .Y(next_counter[3]) );
  OR2X1 U49 ( .A(n124), .B(n73), .Y(n74) );
endmodule


module Mole_Cell_12 ( good_signal, good_mole, bad_signal, bad_mole, hit_piont, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_piont, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N6, N7, n1, n2, n63, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82;
  wire   [9:0] next_cell_score;
  wire   [3:0] next_counter;
  assign good_mole = N6;
  assign cell_score[9] = N7;
  assign bad_mole = N7;

  DFFRX1 \cell_score_reg[9]  ( .D(n66), .CK(clk), .RN(n79), .Q(N7), .QN(n65)
         );
  DFFRX1 \counter_reg[1]  ( .D(next_counter[1]), .CK(clk), .RN(n79), .QN(n56)
         );
  DFFRX1 \counter_reg[2]  ( .D(n77), .CK(clk), .RN(n79), .Q(n73), .QN(n63) );
  DFFRX1 \counter_reg[0]  ( .D(next_counter[0]), .CK(clk), .RN(n79), .QN(n55)
         );
  DFFRX1 \counter_reg[3]  ( .D(next_counter[3]), .CK(clk), .RN(n79), .Q(n54)
         );
  DFFRX1 \cell_score_reg[6]  ( .D(n69), .CK(clk), .RN(n79), .Q(cell_score[6]), 
        .QN(n60) );
  DFFRX1 \cell_score_reg[8]  ( .D(n71), .CK(clk), .RN(n79), .Q(cell_score[8]), 
        .QN(n59) );
  DFFRX1 \cell_score_reg[7]  ( .D(n70), .CK(clk), .RN(n79), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[4]  ( .D(n67), .CK(clk), .RN(n79), .Q(cell_score[4]), 
        .QN(n57) );
  DFFRX1 \cell_score_reg[5]  ( .D(n68), .CK(clk), .RN(n79), .Q(cell_score[5]), 
        .QN(n58) );
  DFFRX1 \cell_score_reg[0]  ( .D(n72), .CK(clk), .RN(n79), .Q(cell_score[0]), 
        .QN(n1) );
  DFFRX1 \cell_score_reg[3]  ( .D(next_cell_score[3]), .CK(clk), .RN(n79), .Q(
        cell_score[3]), .QN(n64) );
  DFFRX1 \cell_score_reg[2]  ( .D(next_cell_score[2]), .CK(clk), .RN(n79), .Q(
        cell_score[2]), .QN(n62) );
  DFFRX1 \cell_score_reg[1]  ( .D(next_cell_score[1]), .CK(clk), .RN(n79), .Q(
        cell_score[1]), .QN(n61) );
  OA21XL U3 ( .A0(n75), .A1(n76), .B0(n42), .Y(n36) );
  NAND3X1 U4 ( .A(enable), .B(n76), .C(bad_signal), .Y(n42) );
  CLKINVX1 U5 ( .A(n38), .Y(n78) );
  OA21XL U6 ( .A0(n80), .A1(n38), .B0(n43), .Y(n51) );
  OA21XL U7 ( .A0(n82), .A1(n38), .B0(n43), .Y(n34) );
  OA21XL U8 ( .A0(n81), .A1(n38), .B0(n43), .Y(n47) );
  CLKINVX1 U9 ( .A(enable), .Y(n75) );
  CLKINVX1 U10 ( .A(good_signal), .Y(n76) );
  CLKINVX1 U11 ( .A(game_reset), .Y(n79) );
  NAND2X1 U12 ( .A(N6), .B(n53), .Y(n38) );
  NAND2BX1 U13 ( .AN(N6), .B(n53), .Y(n43) );
  CLKINVX1 U14 ( .A(n37), .Y(n82) );
  CLKINVX1 U15 ( .A(n46), .Y(n81) );
  CLKINVX1 U16 ( .A(n50), .Y(n80) );
  NOR3X1 U17 ( .A(hit_piont), .B(enable), .C(n32), .Y(n53) );
  OAI22XL U18 ( .A0(n37), .A1(n38), .B0(n62), .B1(n39), .Y(next_cell_score[2])
         );
  OA21XL U19 ( .A0(n61), .A1(n38), .B0(n40), .Y(n39) );
  NAND3X1 U20 ( .A(n62), .B(n1), .C(n61), .Y(n37) );
  NAND3X1 U21 ( .A(n60), .B(n81), .C(n58), .Y(n50) );
  NAND3X1 U22 ( .A(n64), .B(n82), .C(n57), .Y(n46) );
  NOR3BXL U23 ( .AN(n55), .B(n32), .C(enable), .Y(next_counter[0]) );
  OA21XL U24 ( .A0(n2), .A1(n38), .B0(n51), .Y(n44) );
  AOI31X1 U25 ( .A0(n59), .A1(n80), .A2(n2), .B0(N7), .Y(N6) );
  OAI21XL U26 ( .A0(n65), .A1(n44), .B0(n42), .Y(n66) );
  OAI21XL U27 ( .A0(n59), .A1(n44), .B0(n42), .Y(n71) );
  OA21XL U28 ( .A0(n1), .A1(n38), .B0(n43), .Y(n40) );
  OAI221XL U29 ( .A0(n1), .A1(n43), .B0(cell_score[0]), .B1(n38), .C0(n42), 
        .Y(n72) );
  OAI221XL U30 ( .A0(n57), .A1(n45), .B0(n46), .B1(n38), .C0(n42), .Y(n67) );
  OA21XL U31 ( .A0(n64), .A1(n38), .B0(n34), .Y(n45) );
  OAI221XL U32 ( .A0(n60), .A1(n49), .B0(n50), .B1(n38), .C0(n42), .Y(n69) );
  OA21XL U33 ( .A0(n58), .A1(n38), .B0(n47), .Y(n49) );
  OAI211X1 U34 ( .A0(n61), .A1(n40), .B0(n41), .C0(n36), .Y(next_cell_score[1]) );
  NAND3X1 U35 ( .A(n61), .B(n1), .C(n78), .Y(n41) );
  OAI211X1 U36 ( .A0(n64), .A1(n34), .B0(n35), .C0(n36), .Y(next_cell_score[3]) );
  NAND3X1 U37 ( .A(n64), .B(n82), .C(n78), .Y(n35) );
  OAI211X1 U38 ( .A0(n58), .A1(n47), .B0(n48), .C0(n42), .Y(n68) );
  NAND3X1 U39 ( .A(n58), .B(n81), .C(n78), .Y(n48) );
  OAI211X1 U40 ( .A0(n2), .A1(n51), .B0(n52), .C0(n42), .Y(n70) );
  NAND3X1 U41 ( .A(n2), .B(n80), .C(n78), .Y(n52) );
  CLKINVX1 U42 ( .A(n31), .Y(n77) );
  AOI33X1 U43 ( .A0(next_counter[0]), .A1(n56), .A2(n63), .B0(n30), .B1(n73), 
        .B2(n75), .Y(n31) );
  NOR3X1 U44 ( .A(n30), .B(n54), .C(n73), .Y(n32) );
  NAND2X1 U45 ( .A(n55), .B(n56), .Y(n30) );
  OAI21XL U46 ( .A0(n32), .A1(n33), .B0(n75), .Y(next_counter[1]) );
  OA21XL U47 ( .A0(n55), .A1(n56), .B0(n30), .Y(n33) );
  OAI2BB1X1 U48 ( .A0N(n74), .A1N(n54), .B0(n75), .Y(next_counter[3]) );
  OR2X1 U49 ( .A(n30), .B(n73), .Y(n74) );
endmodule


module Mole_Cell_11 ( good_signal, good_mole, bad_signal, bad_mole, hit_piont, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_piont, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N6, N7, n1, n2, n63, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124;
  wire   [9:0] next_cell_score;
  wire   [3:0] next_counter;
  assign good_mole = N6;
  assign cell_score[9] = N7;
  assign bad_mole = N7;

  DFFRX1 \counter_reg[1]  ( .D(next_counter[1]), .CK(clk), .RN(n82), .QN(n98)
         );
  DFFRX1 \counter_reg[2]  ( .D(n76), .CK(clk), .RN(n82), .Q(n73), .QN(n63) );
  DFFRX1 \counter_reg[0]  ( .D(next_counter[0]), .CK(clk), .RN(n82), .QN(n99)
         );
  DFFRX1 \counter_reg[3]  ( .D(next_counter[3]), .CK(clk), .RN(n82), .Q(n100)
         );
  DFFRX1 \cell_score_reg[9]  ( .D(n84), .CK(clk), .RN(n82), .Q(N7), .QN(n90)
         );
  DFFRX1 \cell_score_reg[6]  ( .D(n87), .CK(clk), .RN(n82), .Q(cell_score[6]), 
        .QN(n94) );
  DFFRX1 \cell_score_reg[8]  ( .D(n85), .CK(clk), .RN(n82), .Q(cell_score[8]), 
        .QN(n95) );
  DFFRX1 \cell_score_reg[7]  ( .D(n86), .CK(clk), .RN(n82), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[5]  ( .D(n88), .CK(clk), .RN(n82), .Q(cell_score[5]), 
        .QN(n96) );
  DFFRX1 \cell_score_reg[4]  ( .D(n89), .CK(clk), .RN(n82), .Q(cell_score[4]), 
        .QN(n97) );
  DFFRX1 \cell_score_reg[3]  ( .D(next_cell_score[3]), .CK(clk), .RN(n82), .Q(
        cell_score[3]), .QN(n91) );
  DFFRX1 \cell_score_reg[2]  ( .D(next_cell_score[2]), .CK(clk), .RN(n82), .Q(
        cell_score[2]), .QN(n92) );
  DFFRX1 \cell_score_reg[1]  ( .D(next_cell_score[1]), .CK(clk), .RN(n82), .Q(
        cell_score[1]), .QN(n93) );
  DFFRX1 \cell_score_reg[0]  ( .D(n83), .CK(clk), .RN(n82), .Q(cell_score[0]), 
        .QN(n1) );
  CLKINVX1 U3 ( .A(enable), .Y(n75) );
  OA21XL U4 ( .A0(n75), .A1(n81), .B0(n112), .Y(n118) );
  NAND3X1 U5 ( .A(enable), .B(n81), .C(bad_signal), .Y(n112) );
  CLKINVX1 U6 ( .A(n116), .Y(n77) );
  OA21XL U7 ( .A0(n78), .A1(n116), .B0(n111), .Y(n104) );
  OA21XL U8 ( .A0(n80), .A1(n116), .B0(n111), .Y(n120) );
  OA21XL U9 ( .A0(n79), .A1(n116), .B0(n111), .Y(n108) );
  CLKINVX1 U10 ( .A(good_signal), .Y(n81) );
  CLKINVX1 U11 ( .A(game_reset), .Y(n82) );
  NAND2X1 U12 ( .A(N6), .B(n101), .Y(n116) );
  NAND2BX1 U13 ( .AN(N6), .B(n101), .Y(n111) );
  CLKINVX1 U14 ( .A(n117), .Y(n80) );
  CLKINVX1 U15 ( .A(n109), .Y(n79) );
  CLKINVX1 U16 ( .A(n105), .Y(n78) );
  NOR3X1 U17 ( .A(hit_piont), .B(enable), .C(n122), .Y(n101) );
  NAND3X1 U18 ( .A(n92), .B(n1), .C(n93), .Y(n117) );
  NAND3X1 U19 ( .A(n94), .B(n79), .C(n96), .Y(n105) );
  NAND3X1 U20 ( .A(n91), .B(n80), .C(n97), .Y(n109) );
  NOR3BXL U21 ( .AN(n99), .B(n122), .C(enable), .Y(next_counter[0]) );
  OA21XL U22 ( .A0(n2), .A1(n116), .B0(n104), .Y(n102) );
  AOI31X1 U23 ( .A0(n95), .A1(n78), .A2(n2), .B0(N7), .Y(N6) );
  OAI21XL U24 ( .A0(n90), .A1(n102), .B0(n112), .Y(n84) );
  OAI21XL U25 ( .A0(n95), .A1(n102), .B0(n112), .Y(n85) );
  OAI22XL U26 ( .A0(n117), .A1(n116), .B0(n92), .B1(n115), .Y(
        next_cell_score[2]) );
  OA21XL U27 ( .A0(n93), .A1(n116), .B0(n114), .Y(n115) );
  OA21XL U28 ( .A0(n1), .A1(n116), .B0(n111), .Y(n114) );
  OAI221XL U29 ( .A0(n1), .A1(n111), .B0(cell_score[0]), .B1(n116), .C0(n112), 
        .Y(n83) );
  OAI221XL U30 ( .A0(n97), .A1(n110), .B0(n109), .B1(n116), .C0(n112), .Y(n89)
         );
  OA21XL U31 ( .A0(n91), .A1(n116), .B0(n120), .Y(n110) );
  OAI221XL U32 ( .A0(n94), .A1(n106), .B0(n105), .B1(n116), .C0(n112), .Y(n87)
         );
  OA21XL U33 ( .A0(n96), .A1(n116), .B0(n108), .Y(n106) );
  OAI211X1 U34 ( .A0(n93), .A1(n114), .B0(n113), .C0(n118), .Y(
        next_cell_score[1]) );
  NAND3X1 U35 ( .A(n93), .B(n1), .C(n77), .Y(n113) );
  OAI211X1 U36 ( .A0(n91), .A1(n120), .B0(n119), .C0(n118), .Y(
        next_cell_score[3]) );
  NAND3X1 U37 ( .A(n91), .B(n80), .C(n77), .Y(n119) );
  OAI211X1 U38 ( .A0(n96), .A1(n108), .B0(n107), .C0(n112), .Y(n88) );
  NAND3X1 U39 ( .A(n96), .B(n79), .C(n77), .Y(n107) );
  OAI211X1 U40 ( .A0(n2), .A1(n104), .B0(n103), .C0(n112), .Y(n86) );
  NAND3X1 U41 ( .A(n2), .B(n78), .C(n77), .Y(n103) );
  CLKINVX1 U42 ( .A(n123), .Y(n76) );
  AOI33X1 U43 ( .A0(next_counter[0]), .A1(n98), .A2(n63), .B0(n124), .B1(n73), 
        .B2(n75), .Y(n123) );
  NOR3X1 U44 ( .A(n124), .B(n100), .C(n73), .Y(n122) );
  NAND2X1 U45 ( .A(n99), .B(n98), .Y(n124) );
  OAI21XL U46 ( .A0(n122), .A1(n121), .B0(n75), .Y(next_counter[1]) );
  OA21XL U47 ( .A0(n99), .A1(n98), .B0(n124), .Y(n121) );
  OAI2BB1X1 U48 ( .A0N(n74), .A1N(n100), .B0(n75), .Y(next_counter[3]) );
  OR2X1 U49 ( .A(n124), .B(n73), .Y(n74) );
endmodule


module Mole_Cell_10 ( good_signal, good_mole, bad_signal, bad_mole, hit_piont, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_piont, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N6, N7, n1, n2, n63, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125;
  wire   [9:0] next_cell_score;
  wire   [3:0] next_counter;
  assign good_mole = N6;
  assign cell_score[9] = N7;
  assign bad_mole = N7;

  DFFRX1 \counter_reg[1]  ( .D(next_counter[1]), .CK(clk), .RN(n83), .QN(n99)
         );
  DFFRX1 \counter_reg[2]  ( .D(n77), .CK(clk), .RN(n83), .Q(n73), .QN(n63) );
  DFFRX1 \counter_reg[0]  ( .D(next_counter[0]), .CK(clk), .RN(n83), .QN(n100)
         );
  DFFRX1 \counter_reg[3]  ( .D(next_counter[3]), .CK(clk), .RN(n83), .Q(n101)
         );
  DFFRX1 \cell_score_reg[9]  ( .D(n90), .CK(clk), .RN(n83), .Q(N7), .QN(n91)
         );
  DFFRX1 \cell_score_reg[6]  ( .D(n87), .CK(clk), .RN(n83), .Q(cell_score[6]), 
        .QN(n95) );
  DFFRX1 \cell_score_reg[8]  ( .D(n85), .CK(clk), .RN(n83), .Q(cell_score[8]), 
        .QN(n96) );
  DFFRX1 \cell_score_reg[7]  ( .D(n86), .CK(clk), .RN(n83), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[4]  ( .D(n89), .CK(clk), .RN(n83), .Q(cell_score[4]), 
        .QN(n98) );
  DFFRX1 \cell_score_reg[5]  ( .D(n88), .CK(clk), .RN(n83), .Q(cell_score[5]), 
        .QN(n97) );
  DFFRX1 \cell_score_reg[0]  ( .D(n84), .CK(clk), .RN(n83), .Q(cell_score[0]), 
        .QN(n1) );
  DFFRX1 \cell_score_reg[3]  ( .D(next_cell_score[3]), .CK(clk), .RN(n83), .Q(
        cell_score[3]), .QN(n92) );
  DFFRX1 \cell_score_reg[2]  ( .D(next_cell_score[2]), .CK(clk), .RN(n83), .Q(
        cell_score[2]), .QN(n93) );
  DFFRX1 \cell_score_reg[1]  ( .D(next_cell_score[1]), .CK(clk), .RN(n83), .Q(
        cell_score[1]), .QN(n94) );
  CLKINVX1 U3 ( .A(n76), .Y(n75) );
  CLKINVX1 U4 ( .A(enable), .Y(n76) );
  OA21XL U5 ( .A0(n76), .A1(n82), .B0(n113), .Y(n119) );
  NAND3X1 U6 ( .A(n75), .B(n82), .C(bad_signal), .Y(n113) );
  CLKINVX1 U7 ( .A(n117), .Y(n78) );
  OA21XL U8 ( .A0(n79), .A1(n117), .B0(n112), .Y(n104) );
  OA21XL U9 ( .A0(n81), .A1(n117), .B0(n112), .Y(n121) );
  OA21XL U10 ( .A0(n80), .A1(n117), .B0(n112), .Y(n108) );
  CLKINVX1 U11 ( .A(good_signal), .Y(n82) );
  CLKINVX1 U12 ( .A(game_reset), .Y(n83) );
  NAND2X1 U13 ( .A(N6), .B(n102), .Y(n117) );
  NAND2BX1 U14 ( .AN(N6), .B(n102), .Y(n112) );
  CLKINVX1 U15 ( .A(n118), .Y(n81) );
  CLKINVX1 U16 ( .A(n109), .Y(n80) );
  CLKINVX1 U17 ( .A(n105), .Y(n79) );
  NOR3X1 U18 ( .A(hit_piont), .B(n75), .C(n123), .Y(n102) );
  OAI22XL U19 ( .A0(n118), .A1(n117), .B0(n93), .B1(n116), .Y(
        next_cell_score[2]) );
  OA21XL U20 ( .A0(n94), .A1(n117), .B0(n115), .Y(n116) );
  NAND3X1 U21 ( .A(n93), .B(n1), .C(n94), .Y(n118) );
  NAND3X1 U22 ( .A(n95), .B(n80), .C(n97), .Y(n105) );
  NAND3X1 U23 ( .A(n92), .B(n81), .C(n98), .Y(n109) );
  NOR3BXL U24 ( .AN(n100), .B(n123), .C(n75), .Y(next_counter[0]) );
  OA21XL U25 ( .A0(n2), .A1(n117), .B0(n104), .Y(n111) );
  AOI31X1 U26 ( .A0(n96), .A1(n79), .A2(n2), .B0(N7), .Y(N6) );
  OAI21XL U27 ( .A0(n91), .A1(n111), .B0(n113), .Y(n90) );
  OAI21XL U28 ( .A0(n96), .A1(n111), .B0(n113), .Y(n85) );
  OA21XL U29 ( .A0(n1), .A1(n117), .B0(n112), .Y(n115) );
  OAI221XL U30 ( .A0(n1), .A1(n112), .B0(cell_score[0]), .B1(n117), .C0(n113), 
        .Y(n84) );
  OAI221XL U31 ( .A0(n98), .A1(n110), .B0(n109), .B1(n117), .C0(n113), .Y(n89)
         );
  OA21XL U32 ( .A0(n92), .A1(n117), .B0(n121), .Y(n110) );
  OAI221XL U33 ( .A0(n95), .A1(n106), .B0(n105), .B1(n117), .C0(n113), .Y(n87)
         );
  OA21XL U34 ( .A0(n97), .A1(n117), .B0(n108), .Y(n106) );
  OAI211X1 U35 ( .A0(n94), .A1(n115), .B0(n114), .C0(n119), .Y(
        next_cell_score[1]) );
  NAND3X1 U36 ( .A(n94), .B(n1), .C(n78), .Y(n114) );
  OAI211X1 U37 ( .A0(n92), .A1(n121), .B0(n120), .C0(n119), .Y(
        next_cell_score[3]) );
  NAND3X1 U38 ( .A(n92), .B(n81), .C(n78), .Y(n120) );
  OAI211X1 U39 ( .A0(n97), .A1(n108), .B0(n107), .C0(n113), .Y(n88) );
  NAND3X1 U40 ( .A(n97), .B(n80), .C(n78), .Y(n107) );
  OAI211X1 U41 ( .A0(n2), .A1(n104), .B0(n103), .C0(n113), .Y(n86) );
  NAND3X1 U42 ( .A(n2), .B(n79), .C(n78), .Y(n103) );
  CLKINVX1 U43 ( .A(n124), .Y(n77) );
  AOI33X1 U44 ( .A0(next_counter[0]), .A1(n99), .A2(n63), .B0(n125), .B1(n73), 
        .B2(n76), .Y(n124) );
  NOR3X1 U45 ( .A(n125), .B(n101), .C(n73), .Y(n123) );
  NAND2X1 U46 ( .A(n100), .B(n99), .Y(n125) );
  OAI21XL U47 ( .A0(n123), .A1(n122), .B0(n76), .Y(next_counter[1]) );
  OA21XL U48 ( .A0(n100), .A1(n99), .B0(n125), .Y(n122) );
  OAI2BB1X1 U49 ( .A0N(n74), .A1N(n101), .B0(n76), .Y(next_counter[3]) );
  OR2X1 U50 ( .A(n125), .B(n73), .Y(n74) );
endmodule


module Mole_Cell_9 ( good_signal, good_mole, bad_signal, bad_mole, hit_piont, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_piont, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N6, N7, n1, n2, n63, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124;
  wire   [9:0] next_cell_score;
  wire   [3:0] next_counter;
  assign good_mole = N6;
  assign cell_score[9] = N7;
  assign bad_mole = N7;

  DFFRX1 \cell_score_reg[9]  ( .D(n84), .CK(clk), .RN(n82), .Q(N7), .QN(n90)
         );
  DFFRX1 \counter_reg[1]  ( .D(next_counter[1]), .CK(clk), .RN(n82), .QN(n98)
         );
  DFFRX1 \counter_reg[2]  ( .D(n76), .CK(clk), .RN(n82), .Q(n73), .QN(n63) );
  DFFRX1 \counter_reg[0]  ( .D(next_counter[0]), .CK(clk), .RN(n82), .QN(n99)
         );
  DFFRX1 \counter_reg[3]  ( .D(next_counter[3]), .CK(clk), .RN(n82), .Q(n100)
         );
  DFFRX1 \cell_score_reg[6]  ( .D(n87), .CK(clk), .RN(n82), .Q(cell_score[6]), 
        .QN(n94) );
  DFFRX1 \cell_score_reg[8]  ( .D(n85), .CK(clk), .RN(n82), .Q(cell_score[8]), 
        .QN(n95) );
  DFFRX1 \cell_score_reg[7]  ( .D(n86), .CK(clk), .RN(n82), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[4]  ( .D(n89), .CK(clk), .RN(n82), .Q(cell_score[4]), 
        .QN(n97) );
  DFFRX1 \cell_score_reg[5]  ( .D(n88), .CK(clk), .RN(n82), .Q(cell_score[5]), 
        .QN(n96) );
  DFFRX1 \cell_score_reg[3]  ( .D(next_cell_score[3]), .CK(clk), .RN(n82), .Q(
        cell_score[3]), .QN(n91) );
  DFFRX1 \cell_score_reg[2]  ( .D(next_cell_score[2]), .CK(clk), .RN(n82), .Q(
        cell_score[2]), .QN(n92) );
  DFFRX1 \cell_score_reg[1]  ( .D(next_cell_score[1]), .CK(clk), .RN(n82), .Q(
        cell_score[1]), .QN(n93) );
  DFFRX1 \cell_score_reg[0]  ( .D(n83), .CK(clk), .RN(n82), .Q(cell_score[0]), 
        .QN(n1) );
  CLKINVX1 U3 ( .A(enable), .Y(n75) );
  OA21XL U4 ( .A0(n75), .A1(n81), .B0(n112), .Y(n118) );
  NAND3X1 U5 ( .A(enable), .B(n81), .C(bad_signal), .Y(n112) );
  CLKINVX1 U6 ( .A(n116), .Y(n77) );
  OA21XL U7 ( .A0(n78), .A1(n116), .B0(n111), .Y(n104) );
  OA21XL U8 ( .A0(n80), .A1(n116), .B0(n111), .Y(n120) );
  OA21XL U9 ( .A0(n79), .A1(n116), .B0(n111), .Y(n108) );
  CLKINVX1 U10 ( .A(good_signal), .Y(n81) );
  CLKINVX1 U11 ( .A(game_reset), .Y(n82) );
  NAND2X1 U12 ( .A(N6), .B(n101), .Y(n116) );
  NAND2BX1 U13 ( .AN(N6), .B(n101), .Y(n111) );
  CLKINVX1 U14 ( .A(n117), .Y(n80) );
  CLKINVX1 U15 ( .A(n109), .Y(n79) );
  CLKINVX1 U16 ( .A(n105), .Y(n78) );
  NOR3X1 U17 ( .A(hit_piont), .B(enable), .C(n122), .Y(n101) );
  OAI22XL U18 ( .A0(n117), .A1(n116), .B0(n92), .B1(n115), .Y(
        next_cell_score[2]) );
  OA21XL U19 ( .A0(n93), .A1(n116), .B0(n114), .Y(n115) );
  NAND3X1 U20 ( .A(n92), .B(n1), .C(n93), .Y(n117) );
  NAND3X1 U21 ( .A(n94), .B(n79), .C(n96), .Y(n105) );
  NAND3X1 U22 ( .A(n91), .B(n80), .C(n97), .Y(n109) );
  NOR3BXL U23 ( .AN(n99), .B(n122), .C(enable), .Y(next_counter[0]) );
  OA21XL U24 ( .A0(n2), .A1(n116), .B0(n104), .Y(n102) );
  AOI31X1 U25 ( .A0(n95), .A1(n78), .A2(n2), .B0(N7), .Y(N6) );
  OAI21XL U26 ( .A0(n90), .A1(n102), .B0(n112), .Y(n84) );
  OAI21XL U27 ( .A0(n95), .A1(n102), .B0(n112), .Y(n85) );
  OA21XL U28 ( .A0(n1), .A1(n116), .B0(n111), .Y(n114) );
  OAI221XL U29 ( .A0(n1), .A1(n111), .B0(cell_score[0]), .B1(n116), .C0(n112), 
        .Y(n83) );
  OAI221XL U30 ( .A0(n97), .A1(n110), .B0(n109), .B1(n116), .C0(n112), .Y(n89)
         );
  OA21XL U31 ( .A0(n91), .A1(n116), .B0(n120), .Y(n110) );
  OAI221XL U32 ( .A0(n94), .A1(n106), .B0(n105), .B1(n116), .C0(n112), .Y(n87)
         );
  OA21XL U33 ( .A0(n96), .A1(n116), .B0(n108), .Y(n106) );
  OAI211X1 U34 ( .A0(n93), .A1(n114), .B0(n113), .C0(n118), .Y(
        next_cell_score[1]) );
  NAND3X1 U35 ( .A(n93), .B(n1), .C(n77), .Y(n113) );
  OAI211X1 U36 ( .A0(n91), .A1(n120), .B0(n119), .C0(n118), .Y(
        next_cell_score[3]) );
  NAND3X1 U37 ( .A(n91), .B(n80), .C(n77), .Y(n119) );
  OAI211X1 U38 ( .A0(n96), .A1(n108), .B0(n107), .C0(n112), .Y(n88) );
  NAND3X1 U39 ( .A(n96), .B(n79), .C(n77), .Y(n107) );
  OAI211X1 U40 ( .A0(n2), .A1(n104), .B0(n103), .C0(n112), .Y(n86) );
  NAND3X1 U41 ( .A(n2), .B(n78), .C(n77), .Y(n103) );
  CLKINVX1 U42 ( .A(n123), .Y(n76) );
  AOI33X1 U43 ( .A0(next_counter[0]), .A1(n98), .A2(n63), .B0(n124), .B1(n73), 
        .B2(n75), .Y(n123) );
  NOR3X1 U44 ( .A(n124), .B(n100), .C(n73), .Y(n122) );
  NAND2X1 U45 ( .A(n99), .B(n98), .Y(n124) );
  OAI21XL U46 ( .A0(n122), .A1(n121), .B0(n75), .Y(next_counter[1]) );
  OA21XL U47 ( .A0(n99), .A1(n98), .B0(n124), .Y(n121) );
  OAI2BB1X1 U48 ( .A0N(n74), .A1N(n100), .B0(n75), .Y(next_counter[3]) );
  OR2X1 U49 ( .A(n124), .B(n73), .Y(n74) );
endmodule


module Mole_Cell_8 ( good_signal, good_mole, bad_signal, bad_mole, hit_piont, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_piont, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N6, N7, n1, n2, n62, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82;
  wire   [9:0] next_cell_score;
  wire   [3:0] next_counter;
  assign good_mole = N6;
  assign cell_score[9] = N7;
  assign bad_mole = N7;

  DFFRX1 \counter_reg[1]  ( .D(next_counter[1]), .CK(clk), .RN(n79), .QN(n56)
         );
  DFFRX1 \counter_reg[2]  ( .D(n77), .CK(clk), .RN(n79), .Q(n73), .QN(n62) );
  DFFRX1 \counter_reg[0]  ( .D(next_counter[0]), .CK(clk), .RN(n79), .QN(n55)
         );
  DFFRX1 \counter_reg[3]  ( .D(next_counter[3]), .CK(clk), .RN(n79), .Q(n54)
         );
  DFFRX1 \cell_score_reg[6]  ( .D(n68), .CK(clk), .RN(n79), .Q(cell_score[6]), 
        .QN(n60) );
  DFFRX1 \cell_score_reg[8]  ( .D(n70), .CK(clk), .RN(n79), .Q(cell_score[8]), 
        .QN(n59) );
  DFFRX1 \cell_score_reg[7]  ( .D(n69), .CK(clk), .RN(n79), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[4]  ( .D(n66), .CK(clk), .RN(n79), .Q(cell_score[4]), 
        .QN(n57) );
  DFFRX1 \cell_score_reg[5]  ( .D(n67), .CK(clk), .RN(n79), .Q(cell_score[5]), 
        .QN(n58) );
  DFFRX1 \cell_score_reg[9]  ( .D(n71), .CK(clk), .RN(n79), .Q(N7), .QN(n65)
         );
  DFFRX1 \cell_score_reg[3]  ( .D(next_cell_score[3]), .CK(clk), .RN(n79), .Q(
        cell_score[3]), .QN(n64) );
  DFFRX1 \cell_score_reg[2]  ( .D(next_cell_score[2]), .CK(clk), .RN(n79), .Q(
        cell_score[2]), .QN(n63) );
  DFFRX1 \cell_score_reg[1]  ( .D(next_cell_score[1]), .CK(clk), .RN(n79), .Q(
        cell_score[1]), .QN(n61) );
  DFFRX1 \cell_score_reg[0]  ( .D(n72), .CK(clk), .RN(n79), .Q(cell_score[0]), 
        .QN(n1) );
  CLKINVX1 U3 ( .A(enable), .Y(n75) );
  OA21XL U4 ( .A0(n75), .A1(n76), .B0(n42), .Y(n36) );
  NAND3X1 U5 ( .A(enable), .B(n76), .C(bad_signal), .Y(n42) );
  CLKINVX1 U6 ( .A(n38), .Y(n78) );
  OA21XL U7 ( .A0(n80), .A1(n38), .B0(n43), .Y(n50) );
  OA21XL U8 ( .A0(n82), .A1(n38), .B0(n43), .Y(n34) );
  OA21XL U9 ( .A0(n81), .A1(n38), .B0(n43), .Y(n46) );
  CLKINVX1 U10 ( .A(good_signal), .Y(n76) );
  CLKINVX1 U11 ( .A(game_reset), .Y(n79) );
  NAND2X1 U12 ( .A(N6), .B(n53), .Y(n38) );
  NAND2BX1 U13 ( .AN(N6), .B(n53), .Y(n43) );
  CLKINVX1 U14 ( .A(n37), .Y(n82) );
  CLKINVX1 U15 ( .A(n45), .Y(n81) );
  CLKINVX1 U16 ( .A(n49), .Y(n80) );
  NOR3X1 U17 ( .A(hit_piont), .B(enable), .C(n32), .Y(n53) );
  OAI22XL U18 ( .A0(n37), .A1(n38), .B0(n63), .B1(n39), .Y(next_cell_score[2])
         );
  OA21XL U19 ( .A0(n61), .A1(n38), .B0(n40), .Y(n39) );
  NAND3X1 U20 ( .A(n63), .B(n1), .C(n61), .Y(n37) );
  NAND3X1 U21 ( .A(n60), .B(n81), .C(n58), .Y(n49) );
  NAND3X1 U22 ( .A(n64), .B(n82), .C(n57), .Y(n45) );
  NOR3BXL U23 ( .AN(n55), .B(n32), .C(enable), .Y(next_counter[0]) );
  OA21XL U24 ( .A0(n2), .A1(n38), .B0(n50), .Y(n52) );
  AOI31X1 U25 ( .A0(n59), .A1(n80), .A2(n2), .B0(N7), .Y(N6) );
  OAI21XL U26 ( .A0(n65), .A1(n52), .B0(n42), .Y(n71) );
  OAI21XL U27 ( .A0(n59), .A1(n52), .B0(n42), .Y(n70) );
  OA21XL U28 ( .A0(n1), .A1(n38), .B0(n43), .Y(n40) );
  OAI221XL U29 ( .A0(n1), .A1(n43), .B0(cell_score[0]), .B1(n38), .C0(n42), 
        .Y(n72) );
  OAI221XL U30 ( .A0(n57), .A1(n44), .B0(n45), .B1(n38), .C0(n42), .Y(n66) );
  OA21XL U31 ( .A0(n64), .A1(n38), .B0(n34), .Y(n44) );
  OAI221XL U32 ( .A0(n60), .A1(n48), .B0(n49), .B1(n38), .C0(n42), .Y(n68) );
  OA21XL U33 ( .A0(n58), .A1(n38), .B0(n46), .Y(n48) );
  OAI211X1 U34 ( .A0(n61), .A1(n40), .B0(n41), .C0(n36), .Y(next_cell_score[1]) );
  NAND3X1 U35 ( .A(n61), .B(n1), .C(n78), .Y(n41) );
  OAI211X1 U36 ( .A0(n64), .A1(n34), .B0(n35), .C0(n36), .Y(next_cell_score[3]) );
  NAND3X1 U37 ( .A(n64), .B(n82), .C(n78), .Y(n35) );
  OAI211X1 U38 ( .A0(n58), .A1(n46), .B0(n47), .C0(n42), .Y(n67) );
  NAND3X1 U39 ( .A(n58), .B(n81), .C(n78), .Y(n47) );
  OAI211X1 U40 ( .A0(n2), .A1(n50), .B0(n51), .C0(n42), .Y(n69) );
  NAND3X1 U41 ( .A(n2), .B(n80), .C(n78), .Y(n51) );
  CLKINVX1 U42 ( .A(n31), .Y(n77) );
  AOI33X1 U43 ( .A0(next_counter[0]), .A1(n56), .A2(n62), .B0(n30), .B1(n73), 
        .B2(n75), .Y(n31) );
  NOR3X1 U44 ( .A(n30), .B(n54), .C(n73), .Y(n32) );
  NAND2X1 U45 ( .A(n55), .B(n56), .Y(n30) );
  OAI21XL U46 ( .A0(n32), .A1(n33), .B0(n75), .Y(next_counter[1]) );
  OA21XL U47 ( .A0(n55), .A1(n56), .B0(n30), .Y(n33) );
  OAI2BB1X1 U48 ( .A0N(n74), .A1N(n54), .B0(n75), .Y(next_counter[3]) );
  OR2X1 U49 ( .A(n30), .B(n73), .Y(n74) );
endmodule


module Mole_Cell_7 ( good_signal, good_mole, bad_signal, bad_mole, hit_piont, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_piont, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N6, N7, n1, n2, n62, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82;
  wire   [9:0] next_cell_score;
  wire   [3:0] next_counter;
  assign good_mole = N6;
  assign cell_score[9] = N7;
  assign bad_mole = N7;

  DFFRX1 \cell_score_reg[9]  ( .D(n66), .CK(clk), .RN(n79), .Q(N7), .QN(n65)
         );
  DFFRX1 \cell_score_reg[8]  ( .D(n71), .CK(clk), .RN(n79), .Q(cell_score[8]), 
        .QN(n59) );
  DFFRX1 \counter_reg[1]  ( .D(next_counter[1]), .CK(clk), .RN(n79), .QN(n56)
         );
  DFFRX1 \counter_reg[2]  ( .D(n77), .CK(clk), .RN(n79), .Q(n73), .QN(n62) );
  DFFRX1 \counter_reg[0]  ( .D(next_counter[0]), .CK(clk), .RN(n79), .QN(n55)
         );
  DFFRX1 \counter_reg[3]  ( .D(next_counter[3]), .CK(clk), .RN(n79), .Q(n54)
         );
  DFFRX1 \cell_score_reg[5]  ( .D(n68), .CK(clk), .RN(n79), .Q(cell_score[5]), 
        .QN(n58) );
  DFFRX1 \cell_score_reg[6]  ( .D(n69), .CK(clk), .RN(n79), .Q(cell_score[6]), 
        .QN(n60) );
  DFFRX1 \cell_score_reg[7]  ( .D(n70), .CK(clk), .RN(n79), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[4]  ( .D(n67), .CK(clk), .RN(n79), .Q(cell_score[4]), 
        .QN(n57) );
  DFFRX1 \cell_score_reg[3]  ( .D(next_cell_score[3]), .CK(clk), .RN(n79), .Q(
        cell_score[3]), .QN(n64) );
  DFFRX1 \cell_score_reg[2]  ( .D(next_cell_score[2]), .CK(clk), .RN(n79), .Q(
        cell_score[2]), .QN(n63) );
  DFFRX1 \cell_score_reg[1]  ( .D(next_cell_score[1]), .CK(clk), .RN(n79), .Q(
        cell_score[1]), .QN(n61) );
  DFFRX1 \cell_score_reg[0]  ( .D(n72), .CK(clk), .RN(n79), .Q(cell_score[0]), 
        .QN(n1) );
  CLKINVX1 U3 ( .A(enable), .Y(n75) );
  OA21XL U4 ( .A0(n75), .A1(n76), .B0(n42), .Y(n36) );
  NAND3X1 U5 ( .A(enable), .B(n76), .C(bad_signal), .Y(n42) );
  CLKINVX1 U6 ( .A(n38), .Y(n78) );
  OA21XL U7 ( .A0(n81), .A1(n38), .B0(n43), .Y(n47) );
  OA21XL U8 ( .A0(n80), .A1(n38), .B0(n43), .Y(n51) );
  OA21XL U9 ( .A0(n82), .A1(n38), .B0(n43), .Y(n34) );
  CLKINVX1 U10 ( .A(good_signal), .Y(n76) );
  CLKINVX1 U11 ( .A(game_reset), .Y(n79) );
  NAND2X1 U12 ( .A(N6), .B(n53), .Y(n38) );
  NAND2BX1 U13 ( .AN(N6), .B(n53), .Y(n43) );
  CLKINVX1 U14 ( .A(n37), .Y(n82) );
  CLKINVX1 U15 ( .A(n46), .Y(n81) );
  CLKINVX1 U16 ( .A(n50), .Y(n80) );
  NOR3X1 U17 ( .A(hit_piont), .B(enable), .C(n32), .Y(n53) );
  NAND3X1 U18 ( .A(n63), .B(n1), .C(n61), .Y(n37) );
  NAND3X1 U19 ( .A(n60), .B(n81), .C(n58), .Y(n50) );
  NAND3X1 U20 ( .A(n64), .B(n82), .C(n57), .Y(n46) );
  NOR3BXL U21 ( .AN(n55), .B(n32), .C(enable), .Y(next_counter[0]) );
  OA21XL U22 ( .A0(n2), .A1(n38), .B0(n51), .Y(n44) );
  AOI31X1 U23 ( .A0(n59), .A1(n80), .A2(n2), .B0(N7), .Y(N6) );
  OAI21XL U24 ( .A0(n65), .A1(n44), .B0(n42), .Y(n66) );
  OAI21XL U25 ( .A0(n59), .A1(n44), .B0(n42), .Y(n71) );
  OAI22XL U26 ( .A0(n37), .A1(n38), .B0(n63), .B1(n39), .Y(next_cell_score[2])
         );
  OA21XL U27 ( .A0(n61), .A1(n38), .B0(n40), .Y(n39) );
  OA21XL U28 ( .A0(n1), .A1(n38), .B0(n43), .Y(n40) );
  OAI221XL U29 ( .A0(n1), .A1(n43), .B0(cell_score[0]), .B1(n38), .C0(n42), 
        .Y(n72) );
  OAI221XL U30 ( .A0(n57), .A1(n45), .B0(n46), .B1(n38), .C0(n42), .Y(n67) );
  OA21XL U31 ( .A0(n64), .A1(n38), .B0(n34), .Y(n45) );
  OAI221XL U32 ( .A0(n60), .A1(n49), .B0(n50), .B1(n38), .C0(n42), .Y(n69) );
  OA21XL U33 ( .A0(n58), .A1(n38), .B0(n47), .Y(n49) );
  OAI211X1 U34 ( .A0(n61), .A1(n40), .B0(n41), .C0(n36), .Y(next_cell_score[1]) );
  NAND3X1 U35 ( .A(n61), .B(n1), .C(n78), .Y(n41) );
  OAI211X1 U36 ( .A0(n64), .A1(n34), .B0(n35), .C0(n36), .Y(next_cell_score[3]) );
  NAND3X1 U37 ( .A(n64), .B(n82), .C(n78), .Y(n35) );
  OAI211X1 U38 ( .A0(n2), .A1(n51), .B0(n52), .C0(n42), .Y(n70) );
  NAND3X1 U39 ( .A(n2), .B(n80), .C(n78), .Y(n52) );
  OAI211X1 U40 ( .A0(n58), .A1(n47), .B0(n48), .C0(n42), .Y(n68) );
  NAND3X1 U41 ( .A(n58), .B(n81), .C(n78), .Y(n48) );
  CLKINVX1 U42 ( .A(n31), .Y(n77) );
  AOI33X1 U43 ( .A0(next_counter[0]), .A1(n56), .A2(n62), .B0(n30), .B1(n73), 
        .B2(n75), .Y(n31) );
  NOR3X1 U44 ( .A(n30), .B(n54), .C(n73), .Y(n32) );
  NAND2X1 U45 ( .A(n55), .B(n56), .Y(n30) );
  OAI21XL U46 ( .A0(n32), .A1(n33), .B0(n75), .Y(next_counter[1]) );
  OA21XL U47 ( .A0(n55), .A1(n56), .B0(n30), .Y(n33) );
  OAI2BB1X1 U48 ( .A0N(n74), .A1N(n54), .B0(n75), .Y(next_counter[3]) );
  OR2X1 U49 ( .A(n30), .B(n73), .Y(n74) );
endmodule


module Mole_Cell_6 ( good_signal, good_mole, bad_signal, bad_mole, hit_piont, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_piont, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N6, N7, n1, n2, n63, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82;
  wire   [9:0] next_cell_score;
  wire   [3:0] next_counter;
  assign good_mole = N6;
  assign cell_score[9] = N7;
  assign bad_mole = N7;

  DFFRX1 \cell_score_reg[8]  ( .D(n70), .CK(clk), .RN(n79), .Q(cell_score[8]), 
        .QN(n59) );
  DFFRX1 \counter_reg[1]  ( .D(next_counter[1]), .CK(clk), .RN(n79), .QN(n56)
         );
  DFFRX1 \counter_reg[2]  ( .D(n77), .CK(clk), .RN(n79), .Q(n73), .QN(n63) );
  DFFRX1 \counter_reg[0]  ( .D(next_counter[0]), .CK(clk), .RN(n79), .QN(n55)
         );
  DFFRX1 \cell_score_reg[9]  ( .D(n71), .CK(clk), .RN(n79), .Q(N7), .QN(n65)
         );
  DFFRX1 \counter_reg[3]  ( .D(next_counter[3]), .CK(clk), .RN(n79), .Q(n54)
         );
  DFFRX1 \cell_score_reg[7]  ( .D(n69), .CK(clk), .RN(n79), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[4]  ( .D(n66), .CK(clk), .RN(n79), .Q(cell_score[4]), 
        .QN(n57) );
  DFFRX1 \cell_score_reg[5]  ( .D(n67), .CK(clk), .RN(n79), .Q(cell_score[5]), 
        .QN(n58) );
  DFFRX1 \cell_score_reg[6]  ( .D(n68), .CK(clk), .RN(n79), .Q(cell_score[6]), 
        .QN(n60) );
  DFFRX1 \cell_score_reg[3]  ( .D(next_cell_score[3]), .CK(clk), .RN(n79), .Q(
        cell_score[3]), .QN(n64) );
  DFFRX1 \cell_score_reg[2]  ( .D(next_cell_score[2]), .CK(clk), .RN(n79), .Q(
        cell_score[2]), .QN(n62) );
  DFFRX1 \cell_score_reg[1]  ( .D(next_cell_score[1]), .CK(clk), .RN(n79), .Q(
        cell_score[1]), .QN(n61) );
  DFFRX1 \cell_score_reg[0]  ( .D(n72), .CK(clk), .RN(n79), .Q(cell_score[0]), 
        .QN(n1) );
  CLKINVX1 U3 ( .A(enable), .Y(n75) );
  OA21XL U4 ( .A0(n75), .A1(n76), .B0(n42), .Y(n36) );
  NAND3X1 U5 ( .A(enable), .B(n76), .C(bad_signal), .Y(n42) );
  CLKINVX1 U6 ( .A(n38), .Y(n78) );
  OA21XL U7 ( .A0(n81), .A1(n38), .B0(n43), .Y(n46) );
  OA21XL U8 ( .A0(n80), .A1(n38), .B0(n43), .Y(n50) );
  OA21XL U9 ( .A0(n82), .A1(n38), .B0(n43), .Y(n34) );
  CLKINVX1 U10 ( .A(good_signal), .Y(n76) );
  CLKINVX1 U11 ( .A(game_reset), .Y(n79) );
  NAND2X1 U12 ( .A(N6), .B(n53), .Y(n38) );
  NAND2BX1 U13 ( .AN(N6), .B(n53), .Y(n43) );
  CLKINVX1 U14 ( .A(n37), .Y(n82) );
  CLKINVX1 U15 ( .A(n45), .Y(n81) );
  CLKINVX1 U16 ( .A(n49), .Y(n80) );
  NOR3X1 U17 ( .A(hit_piont), .B(enable), .C(n32), .Y(n53) );
  NAND3X1 U18 ( .A(n62), .B(n1), .C(n61), .Y(n37) );
  NAND3X1 U19 ( .A(n60), .B(n81), .C(n58), .Y(n49) );
  NAND3X1 U20 ( .A(n64), .B(n82), .C(n57), .Y(n45) );
  NOR3BXL U21 ( .AN(n55), .B(n32), .C(enable), .Y(next_counter[0]) );
  OA21XL U22 ( .A0(n2), .A1(n38), .B0(n50), .Y(n52) );
  AOI31X1 U23 ( .A0(n59), .A1(n80), .A2(n2), .B0(N7), .Y(N6) );
  OAI21XL U24 ( .A0(n65), .A1(n52), .B0(n42), .Y(n71) );
  OAI21XL U25 ( .A0(n59), .A1(n52), .B0(n42), .Y(n70) );
  OAI22XL U26 ( .A0(n37), .A1(n38), .B0(n62), .B1(n39), .Y(next_cell_score[2])
         );
  OA21XL U27 ( .A0(n61), .A1(n38), .B0(n40), .Y(n39) );
  OA21XL U28 ( .A0(n1), .A1(n38), .B0(n43), .Y(n40) );
  OAI221XL U29 ( .A0(n1), .A1(n43), .B0(cell_score[0]), .B1(n38), .C0(n42), 
        .Y(n72) );
  OAI221XL U30 ( .A0(n60), .A1(n48), .B0(n49), .B1(n38), .C0(n42), .Y(n68) );
  OA21XL U31 ( .A0(n58), .A1(n38), .B0(n46), .Y(n48) );
  OAI221XL U32 ( .A0(n57), .A1(n44), .B0(n45), .B1(n38), .C0(n42), .Y(n66) );
  OA21XL U33 ( .A0(n64), .A1(n38), .B0(n34), .Y(n44) );
  OAI211X1 U34 ( .A0(n61), .A1(n40), .B0(n41), .C0(n36), .Y(next_cell_score[1]) );
  NAND3X1 U35 ( .A(n61), .B(n1), .C(n78), .Y(n41) );
  OAI211X1 U36 ( .A0(n64), .A1(n34), .B0(n35), .C0(n36), .Y(next_cell_score[3]) );
  NAND3X1 U37 ( .A(n64), .B(n82), .C(n78), .Y(n35) );
  OAI211X1 U38 ( .A0(n58), .A1(n46), .B0(n47), .C0(n42), .Y(n67) );
  NAND3X1 U39 ( .A(n58), .B(n81), .C(n78), .Y(n47) );
  OAI211X1 U40 ( .A0(n2), .A1(n50), .B0(n51), .C0(n42), .Y(n69) );
  NAND3X1 U41 ( .A(n2), .B(n80), .C(n78), .Y(n51) );
  CLKINVX1 U42 ( .A(n31), .Y(n77) );
  AOI33X1 U43 ( .A0(next_counter[0]), .A1(n56), .A2(n63), .B0(n30), .B1(n73), 
        .B2(n75), .Y(n31) );
  NOR3X1 U44 ( .A(n30), .B(n54), .C(n73), .Y(n32) );
  NAND2X1 U45 ( .A(n55), .B(n56), .Y(n30) );
  OAI21XL U46 ( .A0(n32), .A1(n33), .B0(n75), .Y(next_counter[1]) );
  OA21XL U47 ( .A0(n55), .A1(n56), .B0(n30), .Y(n33) );
  OAI2BB1X1 U48 ( .A0N(n74), .A1N(n54), .B0(n75), .Y(next_counter[3]) );
  OR2X1 U49 ( .A(n30), .B(n73), .Y(n74) );
endmodule


module Mole_Cell_5 ( good_signal, good_mole, bad_signal, bad_mole, hit_piont, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_piont, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N6, N7, n1, n2, n62, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82;
  wire   [9:0] next_cell_score;
  wire   [3:0] next_counter;
  assign good_mole = N6;
  assign cell_score[9] = N7;
  assign bad_mole = N7;

  DFFRX1 \cell_score_reg[9]  ( .D(n71), .CK(clk), .RN(n79), .Q(N7), .QN(n65)
         );
  DFFRX1 \cell_score_reg[8]  ( .D(n70), .CK(clk), .RN(n79), .Q(cell_score[8]), 
        .QN(n59) );
  DFFRX1 \counter_reg[1]  ( .D(next_counter[1]), .CK(clk), .RN(n79), .QN(n56)
         );
  DFFRX1 \counter_reg[2]  ( .D(n77), .CK(clk), .RN(n79), .Q(n73), .QN(n62) );
  DFFRX1 \counter_reg[0]  ( .D(next_counter[0]), .CK(clk), .RN(n79), .QN(n55)
         );
  DFFRX1 \counter_reg[3]  ( .D(next_counter[3]), .CK(clk), .RN(n79), .Q(n54)
         );
  DFFRX1 \cell_score_reg[5]  ( .D(n67), .CK(clk), .RN(n79), .Q(cell_score[5]), 
        .QN(n58) );
  DFFRX1 \cell_score_reg[6]  ( .D(n68), .CK(clk), .RN(n79), .Q(cell_score[6]), 
        .QN(n60) );
  DFFRX1 \cell_score_reg[7]  ( .D(n69), .CK(clk), .RN(n79), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[4]  ( .D(n66), .CK(clk), .RN(n79), .Q(cell_score[4]), 
        .QN(n57) );
  DFFRX1 \cell_score_reg[3]  ( .D(next_cell_score[3]), .CK(clk), .RN(n79), .Q(
        cell_score[3]), .QN(n64) );
  DFFRX1 \cell_score_reg[2]  ( .D(next_cell_score[2]), .CK(clk), .RN(n79), .Q(
        cell_score[2]), .QN(n63) );
  DFFRX1 \cell_score_reg[1]  ( .D(next_cell_score[1]), .CK(clk), .RN(n79), .Q(
        cell_score[1]), .QN(n61) );
  DFFRX1 \cell_score_reg[0]  ( .D(n72), .CK(clk), .RN(n79), .Q(cell_score[0]), 
        .QN(n1) );
  CLKINVX1 U3 ( .A(enable), .Y(n75) );
  OA21XL U4 ( .A0(n75), .A1(n76), .B0(n42), .Y(n36) );
  NAND3X1 U5 ( .A(enable), .B(n76), .C(bad_signal), .Y(n42) );
  CLKINVX1 U6 ( .A(n38), .Y(n78) );
  OA21XL U7 ( .A0(n81), .A1(n38), .B0(n43), .Y(n46) );
  OA21XL U8 ( .A0(n80), .A1(n38), .B0(n43), .Y(n50) );
  OA21XL U9 ( .A0(n82), .A1(n38), .B0(n43), .Y(n34) );
  CLKINVX1 U10 ( .A(good_signal), .Y(n76) );
  CLKINVX1 U11 ( .A(game_reset), .Y(n79) );
  NAND2X1 U12 ( .A(N6), .B(n53), .Y(n38) );
  NAND2BX1 U13 ( .AN(N6), .B(n53), .Y(n43) );
  CLKINVX1 U14 ( .A(n37), .Y(n82) );
  CLKINVX1 U15 ( .A(n45), .Y(n81) );
  CLKINVX1 U16 ( .A(n49), .Y(n80) );
  NOR3X1 U17 ( .A(hit_piont), .B(enable), .C(n32), .Y(n53) );
  OAI22XL U18 ( .A0(n37), .A1(n38), .B0(n63), .B1(n39), .Y(next_cell_score[2])
         );
  OA21XL U19 ( .A0(n61), .A1(n38), .B0(n40), .Y(n39) );
  NAND3X1 U20 ( .A(n63), .B(n1), .C(n61), .Y(n37) );
  NAND3X1 U21 ( .A(n60), .B(n81), .C(n58), .Y(n49) );
  NAND3X1 U22 ( .A(n64), .B(n82), .C(n57), .Y(n45) );
  NOR3BXL U23 ( .AN(n55), .B(n32), .C(enable), .Y(next_counter[0]) );
  OA21XL U24 ( .A0(n2), .A1(n38), .B0(n50), .Y(n52) );
  AOI31X1 U25 ( .A0(n59), .A1(n80), .A2(n2), .B0(N7), .Y(N6) );
  OAI21XL U26 ( .A0(n65), .A1(n52), .B0(n42), .Y(n71) );
  OAI21XL U27 ( .A0(n59), .A1(n52), .B0(n42), .Y(n70) );
  OA21XL U28 ( .A0(n1), .A1(n38), .B0(n43), .Y(n40) );
  OAI221XL U29 ( .A0(n1), .A1(n43), .B0(cell_score[0]), .B1(n38), .C0(n42), 
        .Y(n72) );
  OAI221XL U30 ( .A0(n57), .A1(n44), .B0(n45), .B1(n38), .C0(n42), .Y(n66) );
  OA21XL U31 ( .A0(n64), .A1(n38), .B0(n34), .Y(n44) );
  OAI221XL U32 ( .A0(n60), .A1(n48), .B0(n49), .B1(n38), .C0(n42), .Y(n68) );
  OA21XL U33 ( .A0(n58), .A1(n38), .B0(n46), .Y(n48) );
  OAI211X1 U34 ( .A0(n61), .A1(n40), .B0(n41), .C0(n36), .Y(next_cell_score[1]) );
  NAND3X1 U35 ( .A(n61), .B(n1), .C(n78), .Y(n41) );
  OAI211X1 U36 ( .A0(n64), .A1(n34), .B0(n35), .C0(n36), .Y(next_cell_score[3]) );
  NAND3X1 U37 ( .A(n64), .B(n82), .C(n78), .Y(n35) );
  OAI211X1 U38 ( .A0(n2), .A1(n50), .B0(n51), .C0(n42), .Y(n69) );
  NAND3X1 U39 ( .A(n2), .B(n80), .C(n78), .Y(n51) );
  OAI211X1 U40 ( .A0(n58), .A1(n46), .B0(n47), .C0(n42), .Y(n67) );
  NAND3X1 U41 ( .A(n58), .B(n81), .C(n78), .Y(n47) );
  CLKINVX1 U42 ( .A(n31), .Y(n77) );
  AOI33X1 U43 ( .A0(next_counter[0]), .A1(n56), .A2(n62), .B0(n30), .B1(n73), 
        .B2(n75), .Y(n31) );
  NOR3X1 U44 ( .A(n30), .B(n54), .C(n73), .Y(n32) );
  NAND2X1 U45 ( .A(n55), .B(n56), .Y(n30) );
  OAI21XL U46 ( .A0(n32), .A1(n33), .B0(n75), .Y(next_counter[1]) );
  OA21XL U47 ( .A0(n55), .A1(n56), .B0(n30), .Y(n33) );
  OAI2BB1X1 U48 ( .A0N(n74), .A1N(n54), .B0(n75), .Y(next_counter[3]) );
  OR2X1 U49 ( .A(n30), .B(n73), .Y(n74) );
endmodule


module Mole_Cell_4 ( good_signal, good_mole, bad_signal, bad_mole, hit_piont, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_piont, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N6, N7, n1, n2, n62, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124;
  wire   [9:0] next_cell_score;
  wire   [3:0] next_counter;
  assign good_mole = N6;
  assign cell_score[9] = N7;
  assign bad_mole = N7;

  DFFRX1 \cell_score_reg[9]  ( .D(n84), .CK(clk), .RN(n82), .Q(N7), .QN(n90)
         );
  DFFRX1 \cell_score_reg[8]  ( .D(n85), .CK(clk), .RN(n82), .Q(cell_score[8]), 
        .QN(n95) );
  DFFRX1 \counter_reg[1]  ( .D(next_counter[1]), .CK(clk), .RN(n82), .QN(n98)
         );
  DFFRX1 \counter_reg[2]  ( .D(n76), .CK(clk), .RN(n82), .Q(n73), .QN(n62) );
  DFFRX1 \counter_reg[0]  ( .D(next_counter[0]), .CK(clk), .RN(n82), .QN(n99)
         );
  DFFRX1 \counter_reg[3]  ( .D(next_counter[3]), .CK(clk), .RN(n82), .Q(n100)
         );
  DFFRX1 \cell_score_reg[6]  ( .D(n87), .CK(clk), .RN(n82), .Q(cell_score[6]), 
        .QN(n94) );
  DFFRX1 \cell_score_reg[7]  ( .D(n86), .CK(clk), .RN(n82), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[4]  ( .D(n89), .CK(clk), .RN(n82), .Q(cell_score[4]), 
        .QN(n97) );
  DFFRX1 \cell_score_reg[5]  ( .D(n88), .CK(clk), .RN(n82), .Q(cell_score[5]), 
        .QN(n96) );
  DFFRX1 \cell_score_reg[3]  ( .D(next_cell_score[3]), .CK(clk), .RN(n82), .Q(
        cell_score[3]), .QN(n91) );
  DFFRX1 \cell_score_reg[0]  ( .D(n83), .CK(clk), .RN(n82), .Q(cell_score[0]), 
        .QN(n1) );
  DFFRX1 \cell_score_reg[2]  ( .D(next_cell_score[2]), .CK(clk), .RN(n82), .Q(
        cell_score[2]), .QN(n92) );
  DFFRX1 \cell_score_reg[1]  ( .D(next_cell_score[1]), .CK(clk), .RN(n82), .Q(
        cell_score[1]), .QN(n93) );
  CLKINVX1 U3 ( .A(enable), .Y(n75) );
  OA21XL U4 ( .A0(n75), .A1(n81), .B0(n112), .Y(n118) );
  NAND3X1 U5 ( .A(enable), .B(n81), .C(bad_signal), .Y(n112) );
  CLKINVX1 U6 ( .A(n116), .Y(n77) );
  OA21XL U7 ( .A0(n78), .A1(n116), .B0(n111), .Y(n104) );
  OA21XL U8 ( .A0(n80), .A1(n116), .B0(n111), .Y(n120) );
  OA21XL U9 ( .A0(n79), .A1(n116), .B0(n111), .Y(n108) );
  CLKINVX1 U10 ( .A(good_signal), .Y(n81) );
  CLKINVX1 U11 ( .A(game_reset), .Y(n82) );
  NAND2X1 U12 ( .A(N6), .B(n101), .Y(n116) );
  NAND2BX1 U13 ( .AN(N6), .B(n101), .Y(n111) );
  CLKINVX1 U14 ( .A(n117), .Y(n80) );
  CLKINVX1 U15 ( .A(n109), .Y(n79) );
  CLKINVX1 U16 ( .A(n105), .Y(n78) );
  NOR3X1 U17 ( .A(hit_piont), .B(enable), .C(n122), .Y(n101) );
  NAND3X1 U18 ( .A(n92), .B(n1), .C(n93), .Y(n117) );
  NAND3X1 U19 ( .A(n94), .B(n79), .C(n96), .Y(n105) );
  NAND3X1 U20 ( .A(n91), .B(n80), .C(n97), .Y(n109) );
  NOR3BXL U21 ( .AN(n99), .B(n122), .C(enable), .Y(next_counter[0]) );
  OA21XL U22 ( .A0(n2), .A1(n116), .B0(n104), .Y(n102) );
  AOI31X1 U23 ( .A0(n95), .A1(n78), .A2(n2), .B0(N7), .Y(N6) );
  OAI21XL U24 ( .A0(n90), .A1(n102), .B0(n112), .Y(n84) );
  OAI21XL U25 ( .A0(n95), .A1(n102), .B0(n112), .Y(n85) );
  OAI22XL U26 ( .A0(n117), .A1(n116), .B0(n92), .B1(n115), .Y(
        next_cell_score[2]) );
  OA21XL U27 ( .A0(n93), .A1(n116), .B0(n114), .Y(n115) );
  OA21XL U28 ( .A0(n1), .A1(n116), .B0(n111), .Y(n114) );
  OAI221XL U29 ( .A0(n1), .A1(n111), .B0(cell_score[0]), .B1(n116), .C0(n112), 
        .Y(n83) );
  OAI221XL U30 ( .A0(n97), .A1(n110), .B0(n109), .B1(n116), .C0(n112), .Y(n89)
         );
  OA21XL U31 ( .A0(n91), .A1(n116), .B0(n120), .Y(n110) );
  OAI221XL U32 ( .A0(n94), .A1(n106), .B0(n105), .B1(n116), .C0(n112), .Y(n87)
         );
  OA21XL U33 ( .A0(n96), .A1(n116), .B0(n108), .Y(n106) );
  OAI211X1 U34 ( .A0(n93), .A1(n114), .B0(n113), .C0(n118), .Y(
        next_cell_score[1]) );
  NAND3X1 U35 ( .A(n93), .B(n1), .C(n77), .Y(n113) );
  OAI211X1 U36 ( .A0(n91), .A1(n120), .B0(n119), .C0(n118), .Y(
        next_cell_score[3]) );
  NAND3X1 U37 ( .A(n91), .B(n80), .C(n77), .Y(n119) );
  OAI211X1 U38 ( .A0(n96), .A1(n108), .B0(n107), .C0(n112), .Y(n88) );
  NAND3X1 U39 ( .A(n96), .B(n79), .C(n77), .Y(n107) );
  OAI211X1 U40 ( .A0(n2), .A1(n104), .B0(n103), .C0(n112), .Y(n86) );
  NAND3X1 U41 ( .A(n2), .B(n78), .C(n77), .Y(n103) );
  CLKINVX1 U42 ( .A(n123), .Y(n76) );
  AOI33X1 U43 ( .A0(next_counter[0]), .A1(n98), .A2(n62), .B0(n124), .B1(n73), 
        .B2(n75), .Y(n123) );
  NOR3X1 U44 ( .A(n124), .B(n100), .C(n73), .Y(n122) );
  NAND2X1 U45 ( .A(n99), .B(n98), .Y(n124) );
  OAI21XL U46 ( .A0(n122), .A1(n121), .B0(n75), .Y(next_counter[1]) );
  OA21XL U47 ( .A0(n99), .A1(n98), .B0(n124), .Y(n121) );
  OAI2BB1X1 U48 ( .A0N(n74), .A1N(n100), .B0(n75), .Y(next_counter[3]) );
  OR2X1 U49 ( .A(n124), .B(n73), .Y(n74) );
endmodule


module Mole_Cell_3 ( good_signal, good_mole, bad_signal, bad_mole, hit_piont, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_piont, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N6, N7, n1, n2, n62, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82;
  wire   [9:0] next_cell_score;
  wire   [3:0] next_counter;
  assign good_mole = N6;
  assign cell_score[9] = N7;
  assign bad_mole = N7;

  DFFRX1 \cell_score_reg[9]  ( .D(n71), .CK(clk), .RN(n79), .Q(N7), .QN(n65)
         );
  DFFRX1 \cell_score_reg[8]  ( .D(n70), .CK(clk), .RN(n79), .Q(cell_score[8]), 
        .QN(n59) );
  DFFRX1 \counter_reg[1]  ( .D(next_counter[1]), .CK(clk), .RN(n79), .QN(n56)
         );
  DFFRX1 \counter_reg[2]  ( .D(n77), .CK(clk), .RN(n79), .Q(n73), .QN(n62) );
  DFFRX1 \counter_reg[0]  ( .D(next_counter[0]), .CK(clk), .RN(n79), .QN(n55)
         );
  DFFRX1 \counter_reg[3]  ( .D(next_counter[3]), .CK(clk), .RN(n79), .Q(n54)
         );
  DFFRX1 \cell_score_reg[7]  ( .D(n69), .CK(clk), .RN(n79), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[4]  ( .D(n66), .CK(clk), .RN(n79), .Q(cell_score[4]), 
        .QN(n57) );
  DFFRX1 \cell_score_reg[5]  ( .D(n67), .CK(clk), .RN(n79), .Q(cell_score[5]), 
        .QN(n58) );
  DFFRX1 \cell_score_reg[6]  ( .D(n68), .CK(clk), .RN(n79), .Q(cell_score[6]), 
        .QN(n60) );
  DFFRX1 \cell_score_reg[3]  ( .D(next_cell_score[3]), .CK(clk), .RN(n79), .Q(
        cell_score[3]), .QN(n64) );
  DFFRX1 \cell_score_reg[2]  ( .D(next_cell_score[2]), .CK(clk), .RN(n79), .Q(
        cell_score[2]), .QN(n63) );
  DFFRX1 \cell_score_reg[1]  ( .D(next_cell_score[1]), .CK(clk), .RN(n79), .Q(
        cell_score[1]), .QN(n61) );
  DFFRX1 \cell_score_reg[0]  ( .D(n72), .CK(clk), .RN(n79), .Q(cell_score[0]), 
        .QN(n1) );
  CLKINVX1 U3 ( .A(enable), .Y(n75) );
  OA21XL U4 ( .A0(n75), .A1(n76), .B0(n42), .Y(n36) );
  NAND3X1 U5 ( .A(enable), .B(n76), .C(bad_signal), .Y(n42) );
  CLKINVX1 U6 ( .A(n38), .Y(n78) );
  OA21XL U7 ( .A0(n81), .A1(n38), .B0(n43), .Y(n46) );
  OA21XL U8 ( .A0(n80), .A1(n38), .B0(n43), .Y(n50) );
  OA21XL U9 ( .A0(n82), .A1(n38), .B0(n43), .Y(n34) );
  CLKINVX1 U10 ( .A(good_signal), .Y(n76) );
  CLKINVX1 U11 ( .A(game_reset), .Y(n79) );
  NAND2X1 U12 ( .A(N6), .B(n53), .Y(n38) );
  NAND2BX1 U13 ( .AN(N6), .B(n53), .Y(n43) );
  CLKINVX1 U14 ( .A(n37), .Y(n82) );
  CLKINVX1 U15 ( .A(n45), .Y(n81) );
  CLKINVX1 U16 ( .A(n49), .Y(n80) );
  NOR3X1 U17 ( .A(hit_piont), .B(enable), .C(n32), .Y(n53) );
  NAND3X1 U18 ( .A(n63), .B(n1), .C(n61), .Y(n37) );
  NAND3X1 U19 ( .A(n60), .B(n81), .C(n58), .Y(n49) );
  NAND3X1 U20 ( .A(n64), .B(n82), .C(n57), .Y(n45) );
  NOR3BXL U21 ( .AN(n55), .B(n32), .C(enable), .Y(next_counter[0]) );
  OA21XL U22 ( .A0(n2), .A1(n38), .B0(n50), .Y(n52) );
  AOI31X1 U23 ( .A0(n59), .A1(n80), .A2(n2), .B0(N7), .Y(N6) );
  OAI21XL U24 ( .A0(n65), .A1(n52), .B0(n42), .Y(n71) );
  OAI21XL U25 ( .A0(n59), .A1(n52), .B0(n42), .Y(n70) );
  OAI22XL U26 ( .A0(n37), .A1(n38), .B0(n63), .B1(n39), .Y(next_cell_score[2])
         );
  OA21XL U27 ( .A0(n61), .A1(n38), .B0(n40), .Y(n39) );
  OA21XL U28 ( .A0(n1), .A1(n38), .B0(n43), .Y(n40) );
  OAI221XL U29 ( .A0(n1), .A1(n43), .B0(cell_score[0]), .B1(n38), .C0(n42), 
        .Y(n72) );
  OAI221XL U30 ( .A0(n60), .A1(n48), .B0(n49), .B1(n38), .C0(n42), .Y(n68) );
  OA21XL U31 ( .A0(n58), .A1(n38), .B0(n46), .Y(n48) );
  OAI221XL U32 ( .A0(n57), .A1(n44), .B0(n45), .B1(n38), .C0(n42), .Y(n66) );
  OA21XL U33 ( .A0(n64), .A1(n38), .B0(n34), .Y(n44) );
  OAI211X1 U34 ( .A0(n61), .A1(n40), .B0(n41), .C0(n36), .Y(next_cell_score[1]) );
  NAND3X1 U35 ( .A(n61), .B(n1), .C(n78), .Y(n41) );
  OAI211X1 U36 ( .A0(n64), .A1(n34), .B0(n35), .C0(n36), .Y(next_cell_score[3]) );
  NAND3X1 U37 ( .A(n64), .B(n82), .C(n78), .Y(n35) );
  OAI211X1 U38 ( .A0(n58), .A1(n46), .B0(n47), .C0(n42), .Y(n67) );
  NAND3X1 U39 ( .A(n58), .B(n81), .C(n78), .Y(n47) );
  OAI211X1 U40 ( .A0(n2), .A1(n50), .B0(n51), .C0(n42), .Y(n69) );
  NAND3X1 U41 ( .A(n2), .B(n80), .C(n78), .Y(n51) );
  CLKINVX1 U42 ( .A(n31), .Y(n77) );
  AOI33X1 U43 ( .A0(next_counter[0]), .A1(n56), .A2(n62), .B0(n30), .B1(n73), 
        .B2(n75), .Y(n31) );
  NOR3X1 U44 ( .A(n30), .B(n54), .C(n73), .Y(n32) );
  NAND2X1 U45 ( .A(n55), .B(n56), .Y(n30) );
  OAI21XL U46 ( .A0(n32), .A1(n33), .B0(n75), .Y(next_counter[1]) );
  OA21XL U47 ( .A0(n55), .A1(n56), .B0(n30), .Y(n33) );
  OAI2BB1X1 U48 ( .A0N(n74), .A1N(n54), .B0(n75), .Y(next_counter[3]) );
  OR2X1 U49 ( .A(n30), .B(n73), .Y(n74) );
endmodule


module Mole_Cell_2 ( good_signal, good_mole, bad_signal, bad_mole, hit_piont, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_piont, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N6, N7, n1, n2, n62, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124;
  wire   [9:0] next_cell_score;
  wire   [3:0] next_counter;
  assign good_mole = N6;
  assign cell_score[9] = N7;
  assign bad_mole = N7;

  DFFRX1 \cell_score_reg[9]  ( .D(n89), .CK(clk), .RN(n82), .Q(N7), .QN(n90)
         );
  DFFRX1 \cell_score_reg[8]  ( .D(n84), .CK(clk), .RN(n82), .Q(cell_score[8]), 
        .QN(n95) );
  DFFRX1 \counter_reg[1]  ( .D(next_counter[1]), .CK(clk), .RN(n82), .QN(n98)
         );
  DFFRX1 \counter_reg[2]  ( .D(n76), .CK(clk), .RN(n82), .Q(n73), .QN(n62) );
  DFFRX1 \counter_reg[0]  ( .D(next_counter[0]), .CK(clk), .RN(n82), .QN(n99)
         );
  DFFRX1 \counter_reg[3]  ( .D(next_counter[3]), .CK(clk), .RN(n82), .Q(n100)
         );
  DFFRX1 \cell_score_reg[5]  ( .D(n87), .CK(clk), .RN(n82), .Q(cell_score[5]), 
        .QN(n96) );
  DFFRX1 \cell_score_reg[6]  ( .D(n86), .CK(clk), .RN(n82), .Q(cell_score[6]), 
        .QN(n94) );
  DFFRX1 \cell_score_reg[7]  ( .D(n85), .CK(clk), .RN(n82), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[4]  ( .D(n88), .CK(clk), .RN(n82), .Q(cell_score[4]), 
        .QN(n97) );
  DFFRX1 \cell_score_reg[3]  ( .D(next_cell_score[3]), .CK(clk), .RN(n82), .Q(
        cell_score[3]), .QN(n91) );
  DFFRX1 \cell_score_reg[0]  ( .D(n83), .CK(clk), .RN(n82), .Q(cell_score[0]), 
        .QN(n1) );
  DFFRX1 \cell_score_reg[2]  ( .D(next_cell_score[2]), .CK(clk), .RN(n82), .Q(
        cell_score[2]), .QN(n92) );
  DFFRX1 \cell_score_reg[1]  ( .D(next_cell_score[1]), .CK(clk), .RN(n82), .Q(
        cell_score[1]), .QN(n93) );
  CLKINVX1 U3 ( .A(enable), .Y(n75) );
  OA21XL U4 ( .A0(n75), .A1(n81), .B0(n112), .Y(n118) );
  NAND3X1 U5 ( .A(enable), .B(n81), .C(bad_signal), .Y(n112) );
  CLKINVX1 U6 ( .A(n116), .Y(n77) );
  OA21XL U7 ( .A0(n79), .A1(n116), .B0(n111), .Y(n107) );
  OA21XL U8 ( .A0(n78), .A1(n116), .B0(n111), .Y(n103) );
  OA21XL U9 ( .A0(n80), .A1(n116), .B0(n111), .Y(n120) );
  CLKINVX1 U10 ( .A(good_signal), .Y(n81) );
  CLKINVX1 U11 ( .A(game_reset), .Y(n82) );
  NAND2X1 U12 ( .A(N6), .B(n101), .Y(n116) );
  NAND2BX1 U13 ( .AN(N6), .B(n101), .Y(n111) );
  CLKINVX1 U14 ( .A(n117), .Y(n80) );
  CLKINVX1 U15 ( .A(n108), .Y(n79) );
  CLKINVX1 U16 ( .A(n104), .Y(n78) );
  NOR3X1 U17 ( .A(hit_piont), .B(enable), .C(n122), .Y(n101) );
  NAND3X1 U18 ( .A(n92), .B(n1), .C(n93), .Y(n117) );
  NAND3X1 U19 ( .A(n94), .B(n79), .C(n96), .Y(n104) );
  NAND3X1 U20 ( .A(n91), .B(n80), .C(n97), .Y(n108) );
  NOR3BXL U21 ( .AN(n99), .B(n122), .C(enable), .Y(next_counter[0]) );
  OA21XL U22 ( .A0(n2), .A1(n116), .B0(n103), .Y(n110) );
  AOI31X1 U23 ( .A0(n95), .A1(n78), .A2(n2), .B0(N7), .Y(N6) );
  OAI21XL U24 ( .A0(n90), .A1(n110), .B0(n112), .Y(n89) );
  OAI21XL U25 ( .A0(n95), .A1(n110), .B0(n112), .Y(n84) );
  OAI22XL U26 ( .A0(n117), .A1(n116), .B0(n92), .B1(n115), .Y(
        next_cell_score[2]) );
  OA21XL U27 ( .A0(n93), .A1(n116), .B0(n114), .Y(n115) );
  OA21XL U28 ( .A0(n1), .A1(n116), .B0(n111), .Y(n114) );
  OAI221XL U29 ( .A0(n1), .A1(n111), .B0(cell_score[0]), .B1(n116), .C0(n112), 
        .Y(n83) );
  OAI221XL U30 ( .A0(n97), .A1(n109), .B0(n108), .B1(n116), .C0(n112), .Y(n88)
         );
  OA21XL U31 ( .A0(n91), .A1(n116), .B0(n120), .Y(n109) );
  OAI221XL U32 ( .A0(n94), .A1(n105), .B0(n104), .B1(n116), .C0(n112), .Y(n86)
         );
  OA21XL U33 ( .A0(n96), .A1(n116), .B0(n107), .Y(n105) );
  OAI211X1 U34 ( .A0(n93), .A1(n114), .B0(n113), .C0(n118), .Y(
        next_cell_score[1]) );
  NAND3X1 U35 ( .A(n93), .B(n1), .C(n77), .Y(n113) );
  OAI211X1 U36 ( .A0(n91), .A1(n120), .B0(n119), .C0(n118), .Y(
        next_cell_score[3]) );
  NAND3X1 U37 ( .A(n91), .B(n80), .C(n77), .Y(n119) );
  OAI211X1 U38 ( .A0(n2), .A1(n103), .B0(n102), .C0(n112), .Y(n85) );
  NAND3X1 U39 ( .A(n2), .B(n78), .C(n77), .Y(n102) );
  OAI211X1 U40 ( .A0(n96), .A1(n107), .B0(n106), .C0(n112), .Y(n87) );
  NAND3X1 U41 ( .A(n96), .B(n79), .C(n77), .Y(n106) );
  CLKINVX1 U42 ( .A(n123), .Y(n76) );
  AOI33X1 U43 ( .A0(next_counter[0]), .A1(n98), .A2(n62), .B0(n124), .B1(n73), 
        .B2(n75), .Y(n123) );
  NOR3X1 U44 ( .A(n124), .B(n100), .C(n73), .Y(n122) );
  NAND2X1 U45 ( .A(n99), .B(n98), .Y(n124) );
  OAI21XL U46 ( .A0(n122), .A1(n121), .B0(n75), .Y(next_counter[1]) );
  OA21XL U47 ( .A0(n99), .A1(n98), .B0(n124), .Y(n121) );
  OAI2BB1X1 U48 ( .A0N(n74), .A1N(n100), .B0(n75), .Y(next_counter[3]) );
  OR2X1 U49 ( .A(n124), .B(n73), .Y(n74) );
endmodule


module Mole_Cell_1 ( good_signal, good_mole, bad_signal, bad_mole, hit_piont, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_piont, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N6, N7, n1, n2, n62, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82;
  wire   [9:0] next_cell_score;
  wire   [3:0] next_counter;
  assign good_mole = N6;
  assign cell_score[9] = N7;
  assign bad_mole = N7;

  DFFRX1 \cell_score_reg[8]  ( .D(n67), .CK(clk), .RN(n79), .Q(cell_score[8]), 
        .QN(n59) );
  DFFRX1 \cell_score_reg[9]  ( .D(n71), .CK(clk), .RN(n79), .Q(N7), .QN(n65)
         );
  DFFRX1 \counter_reg[1]  ( .D(next_counter[1]), .CK(clk), .RN(n79), .QN(n56)
         );
  DFFRX1 \counter_reg[2]  ( .D(n77), .CK(clk), .RN(n79), .Q(n73), .QN(n62) );
  DFFRX1 \counter_reg[0]  ( .D(next_counter[0]), .CK(clk), .RN(n79), .QN(n55)
         );
  DFFRX1 \counter_reg[3]  ( .D(next_counter[3]), .CK(clk), .RN(n79), .Q(n54)
         );
  DFFRX1 \cell_score_reg[6]  ( .D(n70), .CK(clk), .RN(n79), .Q(cell_score[6]), 
        .QN(n60) );
  DFFRX1 \cell_score_reg[7]  ( .D(n66), .CK(clk), .RN(n79), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[4]  ( .D(n68), .CK(clk), .RN(n79), .Q(cell_score[4]), 
        .QN(n57) );
  DFFRX1 \cell_score_reg[5]  ( .D(n69), .CK(clk), .RN(n79), .Q(cell_score[5]), 
        .QN(n58) );
  DFFRX1 \cell_score_reg[3]  ( .D(next_cell_score[3]), .CK(clk), .RN(n79), .Q(
        cell_score[3]), .QN(n64) );
  DFFRX1 \cell_score_reg[2]  ( .D(next_cell_score[2]), .CK(clk), .RN(n79), .Q(
        cell_score[2]), .QN(n63) );
  DFFRX1 \cell_score_reg[1]  ( .D(next_cell_score[1]), .CK(clk), .RN(n79), .Q(
        cell_score[1]), .QN(n61) );
  DFFRX1 \cell_score_reg[0]  ( .D(n72), .CK(clk), .RN(n79), .Q(cell_score[0]), 
        .QN(n1) );
  CLKINVX1 U3 ( .A(enable), .Y(n75) );
  OA21XL U4 ( .A0(n75), .A1(n76), .B0(n42), .Y(n36) );
  NAND3X1 U5 ( .A(enable), .B(n76), .C(bad_signal), .Y(n42) );
  CLKINVX1 U6 ( .A(n38), .Y(n78) );
  OA21XL U7 ( .A0(n80), .A1(n38), .B0(n43), .Y(n44) );
  OA21XL U8 ( .A0(n82), .A1(n38), .B0(n43), .Y(n34) );
  OA21XL U9 ( .A0(n81), .A1(n38), .B0(n43), .Y(n49) );
  CLKINVX1 U10 ( .A(good_signal), .Y(n76) );
  CLKINVX1 U11 ( .A(game_reset), .Y(n79) );
  NAND2X1 U12 ( .A(N6), .B(n53), .Y(n38) );
  NAND2BX1 U13 ( .AN(N6), .B(n53), .Y(n43) );
  CLKINVX1 U14 ( .A(n37), .Y(n82) );
  CLKINVX1 U15 ( .A(n48), .Y(n81) );
  CLKINVX1 U16 ( .A(n52), .Y(n80) );
  NOR3X1 U17 ( .A(hit_piont), .B(enable), .C(n32), .Y(n53) );
  NAND3X1 U18 ( .A(n63), .B(n1), .C(n61), .Y(n37) );
  NAND3X1 U19 ( .A(n60), .B(n81), .C(n58), .Y(n52) );
  NAND3X1 U20 ( .A(n64), .B(n82), .C(n57), .Y(n48) );
  NOR3BXL U21 ( .AN(n55), .B(n32), .C(enable), .Y(next_counter[0]) );
  OA21XL U22 ( .A0(n2), .A1(n38), .B0(n44), .Y(n46) );
  AOI31X1 U23 ( .A0(n59), .A1(n80), .A2(n2), .B0(N7), .Y(N6) );
  OAI21XL U24 ( .A0(n65), .A1(n46), .B0(n42), .Y(n71) );
  OAI21XL U25 ( .A0(n59), .A1(n46), .B0(n42), .Y(n67) );
  OAI22XL U26 ( .A0(n37), .A1(n38), .B0(n63), .B1(n39), .Y(next_cell_score[2])
         );
  OA21XL U27 ( .A0(n61), .A1(n38), .B0(n40), .Y(n39) );
  OA21XL U28 ( .A0(n1), .A1(n38), .B0(n43), .Y(n40) );
  OAI221XL U29 ( .A0(n1), .A1(n43), .B0(cell_score[0]), .B1(n38), .C0(n42), 
        .Y(n72) );
  OAI221XL U30 ( .A0(n57), .A1(n47), .B0(n48), .B1(n38), .C0(n42), .Y(n68) );
  OA21XL U31 ( .A0(n64), .A1(n38), .B0(n34), .Y(n47) );
  OAI221XL U32 ( .A0(n60), .A1(n51), .B0(n52), .B1(n38), .C0(n42), .Y(n70) );
  OA21XL U33 ( .A0(n58), .A1(n38), .B0(n49), .Y(n51) );
  OAI211X1 U34 ( .A0(n61), .A1(n40), .B0(n41), .C0(n36), .Y(next_cell_score[1]) );
  NAND3X1 U35 ( .A(n61), .B(n1), .C(n78), .Y(n41) );
  OAI211X1 U36 ( .A0(n64), .A1(n34), .B0(n35), .C0(n36), .Y(next_cell_score[3]) );
  NAND3X1 U37 ( .A(n64), .B(n82), .C(n78), .Y(n35) );
  OAI211X1 U38 ( .A0(n58), .A1(n49), .B0(n50), .C0(n42), .Y(n69) );
  NAND3X1 U39 ( .A(n58), .B(n81), .C(n78), .Y(n50) );
  OAI211X1 U40 ( .A0(n2), .A1(n44), .B0(n45), .C0(n42), .Y(n66) );
  NAND3X1 U41 ( .A(n2), .B(n80), .C(n78), .Y(n45) );
  CLKINVX1 U42 ( .A(n31), .Y(n77) );
  AOI33X1 U43 ( .A0(next_counter[0]), .A1(n56), .A2(n62), .B0(n30), .B1(n73), 
        .B2(n75), .Y(n31) );
  NOR3X1 U44 ( .A(n30), .B(n54), .C(n73), .Y(n32) );
  NAND2X1 U45 ( .A(n55), .B(n56), .Y(n30) );
  OAI21XL U46 ( .A0(n32), .A1(n33), .B0(n75), .Y(next_counter[1]) );
  OA21XL U47 ( .A0(n55), .A1(n56), .B0(n30), .Y(n33) );
  OAI2BB1X1 U48 ( .A0N(n74), .A1N(n54), .B0(n75), .Y(next_counter[3]) );
  OR2X1 U49 ( .A(n30), .B(n73), .Y(n74) );
endmodule


module Mole_Cell_0 ( good_signal, good_mole, bad_signal, bad_mole, hit_piont, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_piont, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N6, N7, n1, n2, n62, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82;
  wire   [9:0] next_cell_score;
  wire   [3:0] next_counter;
  assign good_mole = N6;
  assign cell_score[9] = N7;
  assign bad_mole = N7;

  DFFRX1 \cell_score_reg[8]  ( .D(n70), .CK(clk), .RN(n79), .Q(cell_score[8]), 
        .QN(n59) );
  DFFRX1 \cell_score_reg[6]  ( .D(n69), .CK(clk), .RN(n79), .Q(cell_score[6]), 
        .QN(n60) );
  DFFRX1 \cell_score_reg[7]  ( .D(n66), .CK(clk), .RN(n79), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \counter_reg[1]  ( .D(next_counter[1]), .CK(clk), .RN(n79), .QN(n56)
         );
  DFFRX1 \counter_reg[2]  ( .D(n77), .CK(clk), .RN(n79), .Q(n73), .QN(n62) );
  DFFRX1 \counter_reg[0]  ( .D(next_counter[0]), .CK(clk), .RN(n79), .QN(n55)
         );
  DFFRX1 \cell_score_reg[9]  ( .D(n71), .CK(clk), .RN(n79), .Q(N7), .QN(n65)
         );
  DFFRX1 \counter_reg[3]  ( .D(next_counter[3]), .CK(clk), .RN(n79), .Q(n54)
         );
  DFFRX1 \cell_score_reg[4]  ( .D(n67), .CK(clk), .RN(n79), .Q(cell_score[4]), 
        .QN(n57) );
  DFFRX1 \cell_score_reg[5]  ( .D(n68), .CK(clk), .RN(n79), .Q(cell_score[5]), 
        .QN(n58) );
  DFFRX1 \cell_score_reg[2]  ( .D(next_cell_score[2]), .CK(clk), .RN(n79), .Q(
        cell_score[2]), .QN(n63) );
  DFFRX1 \cell_score_reg[3]  ( .D(next_cell_score[3]), .CK(clk), .RN(n79), .Q(
        cell_score[3]), .QN(n64) );
  DFFRX1 \cell_score_reg[1]  ( .D(next_cell_score[1]), .CK(clk), .RN(n79), .Q(
        cell_score[1]), .QN(n61) );
  DFFRX1 \cell_score_reg[0]  ( .D(n72), .CK(clk), .RN(n79), .Q(cell_score[0]), 
        .QN(n1) );
  CLKINVX1 U3 ( .A(enable), .Y(n75) );
  OA21XL U4 ( .A0(n75), .A1(n76), .B0(n42), .Y(n36) );
  NAND3X1 U5 ( .A(enable), .B(n76), .C(bad_signal), .Y(n42) );
  CLKINVX1 U6 ( .A(n38), .Y(n78) );
  OA21XL U7 ( .A0(n81), .A1(n38), .B0(n43), .Y(n48) );
  OA21XL U8 ( .A0(n80), .A1(n38), .B0(n43), .Y(n44) );
  OA21XL U9 ( .A0(n82), .A1(n38), .B0(n43), .Y(n34) );
  CLKINVX1 U10 ( .A(good_signal), .Y(n76) );
  CLKINVX1 U11 ( .A(game_reset), .Y(n79) );
  NAND2X1 U12 ( .A(N6), .B(n53), .Y(n38) );
  NAND2BX1 U13 ( .AN(N6), .B(n53), .Y(n43) );
  CLKINVX1 U14 ( .A(n37), .Y(n82) );
  CLKINVX1 U15 ( .A(n47), .Y(n81) );
  CLKINVX1 U16 ( .A(n51), .Y(n80) );
  NOR3X1 U17 ( .A(hit_piont), .B(enable), .C(n32), .Y(n53) );
  OAI22XL U18 ( .A0(n37), .A1(n38), .B0(n63), .B1(n39), .Y(next_cell_score[2])
         );
  OA21XL U19 ( .A0(n61), .A1(n38), .B0(n40), .Y(n39) );
  NAND3X1 U20 ( .A(n63), .B(n1), .C(n61), .Y(n37) );
  NAND3X1 U21 ( .A(n60), .B(n81), .C(n58), .Y(n51) );
  NAND3X1 U22 ( .A(n64), .B(n82), .C(n57), .Y(n47) );
  NOR3BXL U23 ( .AN(n55), .B(n32), .C(enable), .Y(next_counter[0]) );
  OA21XL U24 ( .A0(n2), .A1(n38), .B0(n44), .Y(n52) );
  AOI31X1 U25 ( .A0(n59), .A1(n80), .A2(n2), .B0(N7), .Y(N6) );
  OAI21XL U26 ( .A0(n65), .A1(n52), .B0(n42), .Y(n71) );
  OAI21XL U27 ( .A0(n59), .A1(n52), .B0(n42), .Y(n70) );
  OA21XL U28 ( .A0(n1), .A1(n38), .B0(n43), .Y(n40) );
  OAI221XL U29 ( .A0(n1), .A1(n43), .B0(cell_score[0]), .B1(n38), .C0(n42), 
        .Y(n72) );
  OAI221XL U30 ( .A0(n60), .A1(n50), .B0(n51), .B1(n38), .C0(n42), .Y(n69) );
  OA21XL U31 ( .A0(n58), .A1(n38), .B0(n48), .Y(n50) );
  OAI221XL U32 ( .A0(n57), .A1(n46), .B0(n47), .B1(n38), .C0(n42), .Y(n67) );
  OA21XL U33 ( .A0(n64), .A1(n38), .B0(n34), .Y(n46) );
  OAI211X1 U34 ( .A0(n64), .A1(n34), .B0(n35), .C0(n36), .Y(next_cell_score[3]) );
  NAND3X1 U35 ( .A(n64), .B(n82), .C(n78), .Y(n35) );
  OAI211X1 U36 ( .A0(n61), .A1(n40), .B0(n41), .C0(n36), .Y(next_cell_score[1]) );
  NAND3X1 U37 ( .A(n61), .B(n1), .C(n78), .Y(n41) );
  OAI211X1 U38 ( .A0(n2), .A1(n44), .B0(n45), .C0(n42), .Y(n66) );
  NAND3X1 U39 ( .A(n2), .B(n80), .C(n78), .Y(n45) );
  OAI211X1 U40 ( .A0(n58), .A1(n48), .B0(n49), .C0(n42), .Y(n68) );
  NAND3X1 U41 ( .A(n58), .B(n81), .C(n78), .Y(n49) );
  CLKINVX1 U42 ( .A(n31), .Y(n77) );
  AOI33X1 U43 ( .A0(next_counter[0]), .A1(n56), .A2(n62), .B0(n30), .B1(n73), 
        .B2(n75), .Y(n31) );
  NOR3X1 U44 ( .A(n30), .B(n54), .C(n73), .Y(n32) );
  NAND2X1 U45 ( .A(n55), .B(n56), .Y(n30) );
  OAI21XL U46 ( .A0(n32), .A1(n33), .B0(n75), .Y(next_counter[1]) );
  OA21XL U47 ( .A0(n55), .A1(n56), .B0(n30), .Y(n33) );
  OAI2BB1X1 U48 ( .A0N(n74), .A1N(n54), .B0(n75), .Y(next_counter[3]) );
  OR2X1 U49 ( .A(n30), .B(n73), .Y(n74) );
endmodule


module Select_16_to_1 ( cell_score, hit_piont, add_score );
  input [159:0] cell_score;
  input [15:0] hit_piont;
  output [9:0] add_score;
  wire   n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n133, n134, n135, n136, n137;

  OAI2BB2XL U2 ( .B0(hit_piont[15]), .B1(n59), .A0N(cell_score[155]), .A1N(
        hit_piont[15]), .Y(add_score[5]) );
  OAI2BB2XL U3 ( .B0(hit_piont[15]), .B1(n49), .A0N(cell_score[156]), .A1N(
        hit_piont[15]), .Y(add_score[6]) );
  OAI2BB2XL U4 ( .B0(hit_piont[15]), .B1(n5), .A0N(hit_piont[15]), .A1N(
        cell_score[159]), .Y(add_score[9]) );
  OAI2BB2XL U5 ( .B0(hit_piont[15]), .B1(n39), .A0N(cell_score[157]), .A1N(
        hit_piont[15]), .Y(add_score[7]) );
  OAI2BB2XL U6 ( .B0(hit_piont[15]), .B1(n29), .A0N(cell_score[158]), .A1N(
        hit_piont[15]), .Y(add_score[8]) );
  NOR2BX1 U7 ( .AN(n115), .B(n135), .Y(n11) );
  NOR2BX1 U8 ( .AN(n116), .B(n134), .Y(n14) );
  OAI2BB2XL U9 ( .B0(hit_piont[15]), .B1(n89), .A0N(cell_score[152]), .A1N(
        hit_piont[15]), .Y(add_score[2]) );
  NOR4X1 U10 ( .A(n90), .B(n91), .C(n92), .D(n93), .Y(n89) );
  AO22X1 U11 ( .A0(cell_score[112]), .A1(n13), .B0(cell_score[122]), .B1(n14), 
        .Y(n91) );
  AO22X1 U12 ( .A0(cell_score[102]), .A1(n11), .B0(cell_score[132]), .B1(n12), 
        .Y(n92) );
  OAI2BB2XL U13 ( .B0(hit_piont[15]), .B1(n79), .A0N(cell_score[153]), .A1N(
        hit_piont[15]), .Y(add_score[3]) );
  NOR4X1 U14 ( .A(n80), .B(n81), .C(n82), .D(n83), .Y(n79) );
  AO22X1 U15 ( .A0(cell_score[113]), .A1(n13), .B0(cell_score[123]), .B1(n14), 
        .Y(n81) );
  AO22X1 U16 ( .A0(cell_score[103]), .A1(n11), .B0(cell_score[133]), .B1(n12), 
        .Y(n82) );
  OAI2BB2XL U17 ( .B0(hit_piont[15]), .B1(n69), .A0N(cell_score[154]), .A1N(
        hit_piont[15]), .Y(add_score[4]) );
  NOR4X1 U18 ( .A(n70), .B(n71), .C(n72), .D(n73), .Y(n69) );
  AO22X1 U19 ( .A0(cell_score[114]), .A1(n13), .B0(cell_score[124]), .B1(n14), 
        .Y(n71) );
  AO22X1 U20 ( .A0(cell_score[104]), .A1(n11), .B0(cell_score[134]), .B1(n12), 
        .Y(n72) );
  OAI2BB2XL U21 ( .B0(n109), .B1(hit_piont[15]), .A0N(cell_score[150]), .A1N(
        hit_piont[15]), .Y(add_score[0]) );
  AND4X1 U22 ( .A(n110), .B(n111), .C(n112), .D(n113), .Y(n109) );
  NAND2X1 U23 ( .A(cell_score[140]), .B(hit_piont[14]), .Y(n110) );
  AOI22X1 U24 ( .A0(cell_score[100]), .A1(n11), .B0(cell_score[80]), .B1(n10), 
        .Y(n112) );
  OAI2BB2XL U25 ( .B0(hit_piont[15]), .B1(n99), .A0N(cell_score[151]), .A1N(
        hit_piont[15]), .Y(add_score[1]) );
  NOR4X1 U26 ( .A(n100), .B(n101), .C(n102), .D(n103), .Y(n99) );
  AO22X1 U27 ( .A0(cell_score[111]), .A1(n13), .B0(cell_score[121]), .B1(n14), 
        .Y(n101) );
  AO22X1 U28 ( .A0(cell_score[101]), .A1(n11), .B0(cell_score[131]), .B1(n12), 
        .Y(n102) );
  OAI2BB2XL U29 ( .B0(n104), .B1(n133), .A0N(cell_score[91]), .A1N(n17), .Y(
        n100) );
  NOR4X1 U30 ( .A(n105), .B(n106), .C(n107), .D(n108), .Y(n104) );
  AO22X1 U31 ( .A0(cell_score[11]), .A1(n27), .B0(cell_score[31]), .B1(n28), 
        .Y(n105) );
  AO22X1 U32 ( .A0(cell_score[61]), .A1(n25), .B0(cell_score[1]), .B1(n26), 
        .Y(n106) );
  OAI2BB2XL U33 ( .B0(n94), .B1(n133), .A0N(cell_score[92]), .A1N(n17), .Y(n90) );
  NOR4X1 U34 ( .A(n95), .B(n96), .C(n97), .D(n98), .Y(n94) );
  AO22X1 U35 ( .A0(cell_score[12]), .A1(n27), .B0(cell_score[32]), .B1(n28), 
        .Y(n95) );
  AO22X1 U36 ( .A0(cell_score[62]), .A1(n25), .B0(cell_score[2]), .B1(n26), 
        .Y(n96) );
  OAI2BB2XL U37 ( .B0(n84), .B1(n133), .A0N(cell_score[93]), .A1N(n17), .Y(n80) );
  NOR4X1 U38 ( .A(n85), .B(n86), .C(n87), .D(n88), .Y(n84) );
  AO22X1 U39 ( .A0(cell_score[13]), .A1(n27), .B0(cell_score[33]), .B1(n28), 
        .Y(n85) );
  AO22X1 U40 ( .A0(cell_score[63]), .A1(n25), .B0(cell_score[3]), .B1(n26), 
        .Y(n86) );
  OAI2BB2XL U41 ( .B0(n74), .B1(n133), .A0N(cell_score[94]), .A1N(n17), .Y(n70) );
  NOR4X1 U42 ( .A(n75), .B(n76), .C(n77), .D(n78), .Y(n74) );
  AO22X1 U43 ( .A0(cell_score[14]), .A1(n27), .B0(cell_score[34]), .B1(n28), 
        .Y(n75) );
  AO22X1 U44 ( .A0(cell_score[64]), .A1(n25), .B0(cell_score[4]), .B1(n26), 
        .Y(n76) );
  AO22X1 U45 ( .A0(cell_score[71]), .A1(hit_piont[7]), .B0(cell_score[41]), 
        .B1(n22), .Y(n108) );
  AO22X1 U46 ( .A0(cell_score[141]), .A1(hit_piont[14]), .B0(cell_score[81]), 
        .B1(n10), .Y(n103) );
  AO22X1 U47 ( .A0(cell_score[72]), .A1(hit_piont[7]), .B0(cell_score[42]), 
        .B1(n22), .Y(n98) );
  AO22X1 U48 ( .A0(cell_score[142]), .A1(hit_piont[14]), .B0(cell_score[82]), 
        .B1(n10), .Y(n93) );
  AO22X1 U49 ( .A0(cell_score[73]), .A1(hit_piont[7]), .B0(cell_score[43]), 
        .B1(n22), .Y(n88) );
  AO22X1 U50 ( .A0(cell_score[74]), .A1(hit_piont[7]), .B0(cell_score[44]), 
        .B1(n22), .Y(n78) );
  AO22X1 U51 ( .A0(cell_score[21]), .A1(n23), .B0(cell_score[51]), .B1(n24), 
        .Y(n107) );
  AO22X1 U52 ( .A0(cell_score[22]), .A1(n23), .B0(cell_score[52]), .B1(n24), 
        .Y(n97) );
  AO22X1 U53 ( .A0(cell_score[23]), .A1(n23), .B0(cell_score[53]), .B1(n24), 
        .Y(n87) );
  AOI221XL U54 ( .A0(cell_score[110]), .A1(n13), .B0(cell_score[130]), .B1(n12), .C0(n114), .Y(n113) );
  AO22X1 U55 ( .A0(cell_score[120]), .A1(n14), .B0(cell_score[90]), .B1(n17), 
        .Y(n114) );
  AO21X1 U56 ( .A0(n118), .A1(n119), .B0(n133), .Y(n111) );
  AOI221XL U57 ( .A0(cell_score[50]), .A1(n24), .B0(cell_score[20]), .B1(n23), 
        .C0(n123), .Y(n118) );
  AOI221XL U58 ( .A0(cell_score[30]), .A1(n28), .B0(cell_score[10]), .B1(n27), 
        .C0(n120), .Y(n119) );
  AO22X1 U59 ( .A0(cell_score[70]), .A1(hit_piont[7]), .B0(cell_score[40]), 
        .B1(n22), .Y(n123) );
  AO22X1 U60 ( .A0(cell_score[60]), .A1(n25), .B0(cell_score[0]), .B1(n26), 
        .Y(n120) );
  NOR4X1 U61 ( .A(n60), .B(n61), .C(n62), .D(n63), .Y(n59) );
  AO22X1 U62 ( .A0(cell_score[115]), .A1(n13), .B0(cell_score[125]), .B1(n14), 
        .Y(n61) );
  AO22X1 U63 ( .A0(cell_score[105]), .A1(n11), .B0(cell_score[135]), .B1(n12), 
        .Y(n62) );
  NOR4X1 U64 ( .A(n50), .B(n51), .C(n52), .D(n53), .Y(n49) );
  AO22X1 U65 ( .A0(cell_score[116]), .A1(n13), .B0(cell_score[126]), .B1(n14), 
        .Y(n51) );
  AO22X1 U66 ( .A0(cell_score[106]), .A1(n11), .B0(cell_score[136]), .B1(n12), 
        .Y(n52) );
  NOR4X1 U67 ( .A(n40), .B(n41), .C(n42), .D(n43), .Y(n39) );
  AO22X1 U68 ( .A0(cell_score[117]), .A1(n13), .B0(cell_score[127]), .B1(n14), 
        .Y(n41) );
  AO22X1 U69 ( .A0(cell_score[107]), .A1(n11), .B0(cell_score[137]), .B1(n12), 
        .Y(n42) );
  NOR4X1 U70 ( .A(n30), .B(n31), .C(n32), .D(n33), .Y(n29) );
  AO22X1 U71 ( .A0(cell_score[118]), .A1(n13), .B0(cell_score[128]), .B1(n14), 
        .Y(n31) );
  AO22X1 U72 ( .A0(cell_score[108]), .A1(n11), .B0(cell_score[138]), .B1(n12), 
        .Y(n32) );
  NOR4X1 U73 ( .A(n6), .B(n7), .C(n8), .D(n9), .Y(n5) );
  AO22X1 U74 ( .A0(cell_score[119]), .A1(n13), .B0(cell_score[129]), .B1(n14), 
        .Y(n7) );
  AO22X1 U75 ( .A0(cell_score[109]), .A1(n11), .B0(cell_score[139]), .B1(n12), 
        .Y(n8) );
  OAI2BB2XL U76 ( .B0(n64), .B1(n133), .A0N(cell_score[95]), .A1N(n17), .Y(n60) );
  NOR4X1 U77 ( .A(n65), .B(n66), .C(n67), .D(n68), .Y(n64) );
  AO22X1 U78 ( .A0(cell_score[15]), .A1(n27), .B0(cell_score[35]), .B1(n28), 
        .Y(n65) );
  AO22X1 U79 ( .A0(cell_score[65]), .A1(n25), .B0(cell_score[5]), .B1(n26), 
        .Y(n66) );
  OAI2BB2XL U80 ( .B0(n54), .B1(n133), .A0N(cell_score[96]), .A1N(n17), .Y(n50) );
  NOR4X1 U81 ( .A(n55), .B(n56), .C(n57), .D(n58), .Y(n54) );
  AO22X1 U82 ( .A0(cell_score[16]), .A1(n27), .B0(cell_score[36]), .B1(n28), 
        .Y(n55) );
  AO22X1 U83 ( .A0(cell_score[66]), .A1(n25), .B0(cell_score[6]), .B1(n26), 
        .Y(n56) );
  OAI2BB2XL U84 ( .B0(n44), .B1(n133), .A0N(cell_score[97]), .A1N(n17), .Y(n40) );
  NOR4X1 U85 ( .A(n45), .B(n46), .C(n47), .D(n48), .Y(n44) );
  AO22X1 U86 ( .A0(cell_score[17]), .A1(n27), .B0(cell_score[37]), .B1(n28), 
        .Y(n45) );
  AO22X1 U87 ( .A0(cell_score[67]), .A1(n25), .B0(cell_score[7]), .B1(n26), 
        .Y(n46) );
  OAI2BB2XL U88 ( .B0(n34), .B1(n133), .A0N(cell_score[98]), .A1N(n17), .Y(n30) );
  NOR4X1 U89 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n34) );
  AO22X1 U90 ( .A0(cell_score[18]), .A1(n27), .B0(cell_score[38]), .B1(n28), 
        .Y(n35) );
  AO22X1 U91 ( .A0(cell_score[68]), .A1(n25), .B0(cell_score[8]), .B1(n26), 
        .Y(n36) );
  OAI2BB2XL U92 ( .B0(n15), .B1(n133), .A0N(cell_score[99]), .A1N(n17), .Y(n6)
         );
  NOR4X1 U93 ( .A(n18), .B(n19), .C(n20), .D(n21), .Y(n15) );
  AO22X1 U94 ( .A0(cell_score[19]), .A1(n27), .B0(cell_score[39]), .B1(n28), 
        .Y(n18) );
  AO22X1 U95 ( .A0(cell_score[69]), .A1(n25), .B0(cell_score[9]), .B1(n26), 
        .Y(n19) );
  AO22X1 U96 ( .A0(cell_score[143]), .A1(hit_piont[14]), .B0(cell_score[83]), 
        .B1(n10), .Y(n83) );
  AO22X1 U97 ( .A0(cell_score[144]), .A1(hit_piont[14]), .B0(cell_score[84]), 
        .B1(n10), .Y(n73) );
  AO22X1 U98 ( .A0(cell_score[75]), .A1(hit_piont[7]), .B0(cell_score[45]), 
        .B1(n22), .Y(n68) );
  AO22X1 U99 ( .A0(cell_score[145]), .A1(hit_piont[14]), .B0(cell_score[85]), 
        .B1(n10), .Y(n63) );
  AO22X1 U100 ( .A0(cell_score[76]), .A1(hit_piont[7]), .B0(cell_score[46]), 
        .B1(n22), .Y(n58) );
  AO22X1 U101 ( .A0(cell_score[146]), .A1(hit_piont[14]), .B0(cell_score[86]), 
        .B1(n10), .Y(n53) );
  AO22X1 U102 ( .A0(cell_score[77]), .A1(hit_piont[7]), .B0(cell_score[47]), 
        .B1(n22), .Y(n48) );
  AO22X1 U103 ( .A0(cell_score[147]), .A1(hit_piont[14]), .B0(cell_score[87]), 
        .B1(n10), .Y(n43) );
  AO22X1 U104 ( .A0(cell_score[78]), .A1(hit_piont[7]), .B0(cell_score[48]), 
        .B1(n22), .Y(n38) );
  AO22X1 U105 ( .A0(hit_piont[7]), .A1(cell_score[79]), .B0(cell_score[49]), 
        .B1(n22), .Y(n21) );
  AO22X1 U106 ( .A0(cell_score[24]), .A1(n23), .B0(cell_score[54]), .B1(n24), 
        .Y(n77) );
  AO22X1 U107 ( .A0(cell_score[25]), .A1(n23), .B0(cell_score[55]), .B1(n24), 
        .Y(n67) );
  AO22X1 U108 ( .A0(cell_score[26]), .A1(n23), .B0(cell_score[56]), .B1(n24), 
        .Y(n57) );
  AO22X1 U109 ( .A0(cell_score[27]), .A1(n23), .B0(cell_score[57]), .B1(n24), 
        .Y(n47) );
  AO22X1 U110 ( .A0(cell_score[28]), .A1(n23), .B0(cell_score[58]), .B1(n24), 
        .Y(n37) );
  AO22X1 U111 ( .A0(cell_score[29]), .A1(n23), .B0(cell_score[59]), .B1(n24), 
        .Y(n20) );
  AO22X1 U112 ( .A0(cell_score[148]), .A1(hit_piont[14]), .B0(cell_score[88]), 
        .B1(n10), .Y(n33) );
  AO22X1 U113 ( .A0(hit_piont[14]), .A1(cell_score[149]), .B0(cell_score[89]), 
        .B1(n10), .Y(n9) );
  NOR4BBX1 U114 ( .AN(n121), .BN(hit_piont[0]), .C(hit_piont[1]), .D(
        hit_piont[2]), .Y(n26) );
  NOR2BX1 U115 ( .AN(hit_piont[6]), .B(hit_piont[7]), .Y(n25) );
  NOR2BX1 U116 ( .AN(hit_piont[13]), .B(hit_piont[14]), .Y(n12) );
  NOR3BXL U117 ( .AN(n115), .B(hit_piont[10]), .C(hit_piont[9]), .Y(n117) );
  NOR3BXL U118 ( .AN(n116), .B(hit_piont[11]), .C(hit_piont[12]), .Y(n115) );
  NOR3BXL U119 ( .AN(n124), .B(hit_piont[4]), .C(hit_piont[5]), .Y(n122) );
  NOR2BX1 U120 ( .AN(n122), .B(hit_piont[3]), .Y(n121) );
  AND2X2 U121 ( .A(hit_piont[8]), .B(n117), .Y(n10) );
  AND3X2 U122 ( .A(n134), .B(n116), .C(hit_piont[11]), .Y(n13) );
  AND3X2 U123 ( .A(n121), .B(n137), .C(hit_piont[1]), .Y(n27) );
  CLKINVX1 U124 ( .A(hit_piont[2]), .Y(n137) );
  AND3X2 U125 ( .A(n135), .B(n115), .C(hit_piont[9]), .Y(n17) );
  AND3X2 U126 ( .A(n136), .B(n124), .C(hit_piont[4]), .Y(n22) );
  CLKINVX1 U127 ( .A(hit_piont[5]), .Y(n136) );
  NOR2X1 U128 ( .A(hit_piont[6]), .B(hit_piont[7]), .Y(n124) );
  AND2X2 U129 ( .A(n121), .B(hit_piont[2]), .Y(n23) );
  AND2X2 U130 ( .A(hit_piont[3]), .B(n122), .Y(n28) );
  AND2X2 U131 ( .A(n124), .B(hit_piont[5]), .Y(n24) );
  NOR2X1 U132 ( .A(hit_piont[13]), .B(hit_piont[14]), .Y(n116) );
  CLKBUFX3 U133 ( .A(n16), .Y(n133) );
  NAND2BX1 U134 ( .AN(hit_piont[8]), .B(n117), .Y(n16) );
  CLKINVX1 U135 ( .A(hit_piont[10]), .Y(n135) );
  CLKINVX1 U136 ( .A(hit_piont[12]), .Y(n134) );
endmodule


module Controller ( reset, game_start, clk, generator_clk, decoder_enable, 
        reg_enable, game_reset, countdown );
  output [9:0] countdown;
  input reset, game_start, clk;
  output generator_clk, decoder_enable, reg_enable, game_reset;
  wire   n8, n10, n11, n12, n13, n14, n38, n39, n40, n41, n42, n43, n44, n45,
         n47, n2, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n67, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99;
  wire   [2:0] state;
  wire   [3:0] next_counter;
  wire   [2:0] next_state;
  assign countdown[9] = 1'b0;

  DFFRX1 \counter_reg[2]  ( .D(next_counter[2]), .CK(clk), .RN(n93), .Q(n67), 
        .QN(n81) );
  DFFRX1 \counter_reg[1]  ( .D(next_counter[1]), .CK(clk), .RN(n93), .Q(n91), 
        .QN(n82) );
  DFFRX1 \counter_reg[0]  ( .D(next_counter[0]), .CK(clk), .RN(n93), .Q(n89), 
        .QN(n83) );
  DFFRX1 \counter_reg[3]  ( .D(next_counter[3]), .CK(clk), .RN(n93), .QN(n80)
         );
  DFFRX1 \countdown_reg[2]  ( .D(n39), .CK(clk), .RN(n93), .Q(countdown[2]), 
        .QN(n12) );
  DFFRX1 \countdown_reg[6]  ( .D(n43), .CK(clk), .RN(n93), .Q(countdown[6]), 
        .QN(n85) );
  DFFRX1 \countdown_reg[4]  ( .D(n41), .CK(clk), .RN(n93), .Q(countdown[4]), 
        .QN(n10) );
  DFFRX1 \state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(n93), .Q(state[2]), 
        .QN(n90) );
  DFFRX1 \countdown_reg[1]  ( .D(n38), .CK(clk), .RN(n93), .Q(countdown[1]), 
        .QN(n13) );
  DFFRX1 \countdown_reg[0]  ( .D(n47), .CK(clk), .RN(n93), .Q(countdown[0]), 
        .QN(n14) );
  DFFRX1 \countdown_reg[5]  ( .D(n42), .CK(clk), .RN(n93), .Q(countdown[5]), 
        .QN(n84) );
  DFFRX1 \countdown_reg[3]  ( .D(n40), .CK(clk), .RN(n93), .Q(countdown[3]), 
        .QN(n11) );
  DFFRX1 \countdown_reg[7]  ( .D(n44), .CK(clk), .RN(n93), .Q(countdown[7]), 
        .QN(n2) );
  DFFRX1 \countdown_reg[8]  ( .D(n45), .CK(clk), .RN(n93), .Q(countdown[8]), 
        .QN(n86) );
  DFFRX1 \state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(n93), .Q(state[1]), 
        .QN(n88) );
  DFFRX1 \state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(n93), .Q(
        generator_clk), .QN(n8) );
  NAND4X1 U3 ( .A(n86), .B(1'b1), .C(n2), .D(n97), .Y(n56) );
  NAND2X1 U4 ( .A(n90), .B(n88), .Y(decoder_enable) );
  CLKINVX1 U5 ( .A(n70), .Y(n97) );
  OR2X1 U6 ( .A(decoder_enable), .B(generator_clk), .Y(n53) );
  CLKINVX1 U7 ( .A(n73), .Y(n98) );
  CLKINVX1 U8 ( .A(n77), .Y(n99) );
  OA21XL U9 ( .A0(generator_clk), .A1(n54), .B0(n57), .Y(n74) );
  AOI2BB1X1 U10 ( .A0N(n99), .A1N(n74), .B0(generator_clk), .Y(n76) );
  CLKINVX1 U11 ( .A(n59), .Y(n94) );
  CLKINVX1 U12 ( .A(n92), .Y(n93) );
  NAND3X1 U13 ( .A(n53), .B(n54), .C(n55), .Y(reg_enable) );
  NAND3BX1 U14 ( .AN(n56), .B(n8), .C(n90), .Y(n55) );
  NAND3X1 U15 ( .A(n10), .B(n99), .C(n11), .Y(n73) );
  NAND3X1 U16 ( .A(n85), .B(n98), .C(n84), .Y(n70) );
  NAND3X1 U17 ( .A(n13), .B(n12), .C(n14), .Y(n77) );
  NAND2X1 U18 ( .A(state[2]), .B(n56), .Y(n54) );
  NOR4X1 U19 ( .A(n67), .B(n91), .C(n89), .D(n80), .Y(n59) );
  NAND3X1 U20 ( .A(decoder_enable), .B(n56), .C(n8), .Y(n65) );
  NOR2X1 U21 ( .A(n83), .B(n82), .Y(n63) );
  OAI22XL U22 ( .A0(n86), .A1(n66), .B0(countdown[8]), .B1(n68), .Y(n45) );
  OA21XL U23 ( .A0(n2), .A1(n65), .B0(n69), .Y(n66) );
  OAI22XL U24 ( .A0(n74), .A1(n73), .B0(n10), .B1(n75), .Y(n41) );
  OA21XL U25 ( .A0(n11), .A1(n74), .B0(n76), .Y(n75) );
  OAI22XL U26 ( .A0(n70), .A1(n65), .B0(n85), .B1(n71), .Y(n43) );
  OA21XL U27 ( .A0(n84), .A1(n65), .B0(n72), .Y(n71) );
  NOR2X1 U28 ( .A(n8), .B(state[1]), .Y(game_reset) );
  NAND2X1 U29 ( .A(state[1]), .B(n8), .Y(n57) );
  NAND3X1 U30 ( .A(n2), .B(n97), .C(n96), .Y(n68) );
  CLKINVX1 U31 ( .A(n65), .Y(n96) );
  NOR2X1 U32 ( .A(n89), .B(n8), .Y(next_counter[0]) );
  OAI21XL U33 ( .A0(n2), .A1(n69), .B0(n68), .Y(n44) );
  AOI2BB1X1 U34 ( .A0N(n8), .A1N(n91), .B0(next_counter[0]), .Y(n64) );
  OA21XL U35 ( .A0(n97), .A1(n65), .B0(n8), .Y(n69) );
  OAI21XL U36 ( .A0(n61), .A1(n80), .B0(n62), .Y(next_counter[3]) );
  NAND4X1 U37 ( .A(n80), .B(n63), .C(generator_clk), .D(n67), .Y(n62) );
  OA21XL U38 ( .A0(n8), .A1(n67), .B0(n64), .Y(n61) );
  NAND3X1 U39 ( .A(n57), .B(n54), .C(n60), .Y(next_state[0]) );
  AOI32X1 U40 ( .A0(n8), .A1(n90), .A2(game_start), .B0(n94), .B1(
        generator_clk), .Y(n60) );
  OA21XL U41 ( .A0(n14), .A1(n74), .B0(n8), .Y(n79) );
  OA21XL U42 ( .A0(n98), .A1(n65), .B0(n8), .Y(n72) );
  OAI32X1 U43 ( .A0(countdown[3]), .A1(n74), .A2(n77), .B0(n11), .B1(n76), .Y(
        n40) );
  OAI32X1 U44 ( .A0(countdown[0]), .A1(n74), .A2(countdown[1]), .B0(n13), .B1(
        n79), .Y(n38) );
  OAI32X1 U45 ( .A0(n65), .A1(n73), .A2(countdown[5]), .B0(n84), .B1(n72), .Y(
        n42) );
  OAI32X1 U46 ( .A0(n95), .A1(n8), .A2(n67), .B0(n81), .B1(n64), .Y(
        next_counter[2]) );
  CLKINVX1 U47 ( .A(n63), .Y(n95) );
  OAI221XL U48 ( .A0(countdown[0]), .A1(n65), .B0(n8), .B1(n14), .C0(n53), .Y(
        n47) );
  OAI211X1 U49 ( .A0(n56), .A1(n57), .B0(n54), .C0(n58), .Y(next_state[1]) );
  AOI32X1 U50 ( .A0(n94), .A1(generator_clk), .A2(state[1]), .B0(game_reset), 
        .B1(n59), .Y(n58) );
  OAI211X1 U51 ( .A0(n74), .A1(n77), .B0(n78), .C0(n53), .Y(n39) );
  AO21X1 U52 ( .A0(n13), .A1(n79), .B0(n12), .Y(n78) );
  NOR3X1 U53 ( .A(n88), .B(n8), .C(n94), .Y(next_state[2]) );
  AOI211X1 U54 ( .A0(n82), .A1(n83), .B0(n8), .C0(n63), .Y(next_counter[1]) );
  CLKBUFX3 U55 ( .A(reset), .Y(n92) );
endmodule


module Mole_DW01_add_0 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n3, n4;
  wire   [9:1] carry;

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .Y(SUM[9]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n4), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n4), .B(n3), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n3) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n4) );
endmodule


module Mole_DW01_add_1 ( A, B, CI, SUM, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] SUM;
  input CI;
  output CO;
  wire   \carry[10] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17;

  XOR3X1 U1_10 ( .A(A[10]), .B(B[10]), .C(\carry[10] ), .Y(SUM[10]) );
  OAI2BB1X1 U1 ( .A0N(n15), .A1N(A[2]), .B0(n16), .Y(n13) );
  OAI21XL U2 ( .A0(A[2]), .A1(n15), .B0(B[2]), .Y(n16) );
  OAI2BB1X1 U3 ( .A0N(A[1]), .A1N(B[1]), .B0(n17), .Y(n15) );
  OAI211X1 U4 ( .A0(A[1]), .A1(B[1]), .B0(A[0]), .C0(B[0]), .Y(n17) );
  OAI2BB1X1 U5 ( .A0N(n11), .A1N(A[4]), .B0(n12), .Y(n9) );
  OAI21XL U6 ( .A0(A[4]), .A1(n11), .B0(B[4]), .Y(n12) );
  OAI2BB1X1 U7 ( .A0N(n13), .A1N(A[3]), .B0(n14), .Y(n11) );
  OAI21XL U8 ( .A0(A[3]), .A1(n13), .B0(B[3]), .Y(n14) );
  OAI2BB1X1 U9 ( .A0N(n7), .A1N(A[6]), .B0(n8), .Y(n5) );
  OAI21XL U10 ( .A0(A[6]), .A1(n7), .B0(B[6]), .Y(n8) );
  OAI2BB1X1 U11 ( .A0N(n9), .A1N(A[5]), .B0(n10), .Y(n7) );
  OAI21XL U12 ( .A0(A[5]), .A1(n9), .B0(B[5]), .Y(n10) );
  OAI2BB1X1 U13 ( .A0N(n3), .A1N(A[8]), .B0(n4), .Y(n1) );
  OAI21XL U14 ( .A0(A[8]), .A1(n3), .B0(B[8]), .Y(n4) );
  OAI2BB1X1 U15 ( .A0N(n5), .A1N(A[7]), .B0(n6), .Y(n3) );
  OAI21XL U16 ( .A0(A[7]), .A1(n5), .B0(B[7]), .Y(n6) );
  OAI2BB1X1 U17 ( .A0N(n1), .A1N(A[9]), .B0(n2), .Y(\carry[10] ) );
  OAI21XL U18 ( .A0(A[9]), .A1(n1), .B0(B[9]), .Y(n2) );
endmodule


module Mole ( Game_start, Reset, Clk, Seed, Hit_point, Countdown, Score, 
        Good_mole, Bad_mole );
  input [29:0] Seed;
  input [15:0] Hit_point;
  output [9:0] Countdown;
  output [9:0] Score;
  output [15:0] Good_mole;
  output [15:0] Bad_mole;
  input Game_start, Reset, Clk;
  wire   generator_clk, decoder_enable, reg_enable, game_reset, N14, N16, N17,
         N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31,
         N32, N33, N34, N35, n31, n32, n33, n34, n35, n36, n37, n38, n39;
  wire   [3:0] good_addr;
  wire   [3:0] bad_addr;
  wire   [15:0] good_signal;
  wire   [15:0] bad_signal;
  wire   [159:0] cell_score;
  wire   [9:0] add_score;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10;
  assign Countdown[9] = 1'b0;

  Generator_0 Good_Addr ( .seed(Seed[29:15]), .addr(good_addr), .set(Reset), 
        .clk(n38) );
  Generator_1 Bad_Addr ( .seed(Seed[14:0]), .addr(bad_addr), .set(Reset), 
        .clk(n38) );
  Decoder_4_to_16_0 Good ( .addr(good_addr), .enable(decoder_enable), .signal(
        good_signal) );
  Decoder_4_to_16_1 Bad ( .addr(bad_addr), .enable(decoder_enable), .signal(
        bad_signal) );
  Mole_Cell_15 \M[0]  ( .good_signal(good_signal[0]), .good_mole(Good_mole[0]), 
        .bad_signal(bad_signal[0]), .bad_mole(Bad_mole[0]), .hit_piont(
        Hit_point[0]), .cell_score(cell_score[9:0]), .enable(n37), 
        .game_reset(n32), .clk(Clk) );
  Mole_Cell_14 \M[1]  ( .good_signal(good_signal[1]), .good_mole(Good_mole[1]), 
        .bad_signal(bad_signal[1]), .bad_mole(Bad_mole[1]), .hit_piont(
        Hit_point[1]), .cell_score(cell_score[19:10]), .enable(n37), 
        .game_reset(n32), .clk(Clk) );
  Mole_Cell_13 \M[2]  ( .good_signal(good_signal[2]), .good_mole(Good_mole[2]), 
        .bad_signal(bad_signal[2]), .bad_mole(Bad_mole[2]), .hit_piont(
        Hit_point[2]), .cell_score(cell_score[29:20]), .enable(n36), 
        .game_reset(n32), .clk(Clk) );
  Mole_Cell_12 \M[3]  ( .good_signal(good_signal[3]), .good_mole(Good_mole[3]), 
        .bad_signal(bad_signal[3]), .bad_mole(Bad_mole[3]), .hit_piont(
        Hit_point[3]), .cell_score(cell_score[39:30]), .enable(n37), 
        .game_reset(n32), .clk(Clk) );
  Mole_Cell_11 \M[4]  ( .good_signal(good_signal[4]), .good_mole(Good_mole[4]), 
        .bad_signal(bad_signal[4]), .bad_mole(Bad_mole[4]), .hit_piont(
        Hit_point[4]), .cell_score(cell_score[49:40]), .enable(n35), 
        .game_reset(n32), .clk(Clk) );
  Mole_Cell_10 \M[5]  ( .good_signal(good_signal[5]), .good_mole(Good_mole[5]), 
        .bad_signal(bad_signal[5]), .bad_mole(Bad_mole[5]), .hit_piont(
        Hit_point[5]), .cell_score(cell_score[59:50]), .enable(n34), 
        .game_reset(n32), .clk(Clk) );
  Mole_Cell_9 \M[6]  ( .good_signal(good_signal[6]), .good_mole(Good_mole[6]), 
        .bad_signal(bad_signal[6]), .bad_mole(Bad_mole[6]), .hit_piont(
        Hit_point[6]), .cell_score(cell_score[69:60]), .enable(n34), 
        .game_reset(n32), .clk(Clk) );
  Mole_Cell_8 \M[7]  ( .good_signal(good_signal[7]), .good_mole(Good_mole[7]), 
        .bad_signal(bad_signal[7]), .bad_mole(Bad_mole[7]), .hit_piont(
        Hit_point[7]), .cell_score(cell_score[79:70]), .enable(n34), 
        .game_reset(n32), .clk(Clk) );
  Mole_Cell_7 \M[8]  ( .good_signal(good_signal[8]), .good_mole(Good_mole[8]), 
        .bad_signal(bad_signal[8]), .bad_mole(Bad_mole[8]), .hit_piont(
        Hit_point[8]), .cell_score(cell_score[89:80]), .enable(n35), 
        .game_reset(n32), .clk(Clk) );
  Mole_Cell_6 \M[9]  ( .good_signal(good_signal[9]), .good_mole(Good_mole[9]), 
        .bad_signal(bad_signal[9]), .bad_mole(Bad_mole[9]), .hit_piont(
        Hit_point[9]), .cell_score(cell_score[99:90]), .enable(n36), 
        .game_reset(n32), .clk(Clk) );
  Mole_Cell_5 \M[10]  ( .good_signal(good_signal[10]), .good_mole(
        Good_mole[10]), .bad_signal(bad_signal[10]), .bad_mole(Bad_mole[10]), 
        .hit_piont(Hit_point[10]), .cell_score(cell_score[109:100]), .enable(
        n34), .game_reset(n32), .clk(Clk) );
  Mole_Cell_4 \M[11]  ( .good_signal(good_signal[11]), .good_mole(
        Good_mole[11]), .bad_signal(bad_signal[11]), .bad_mole(Bad_mole[11]), 
        .hit_piont(Hit_point[11]), .cell_score(cell_score[119:110]), .enable(
        n36), .game_reset(n32), .clk(Clk) );
  Mole_Cell_3 \M[12]  ( .good_signal(good_signal[12]), .good_mole(
        Good_mole[12]), .bad_signal(bad_signal[12]), .bad_mole(Bad_mole[12]), 
        .hit_piont(Hit_point[12]), .cell_score(cell_score[129:120]), .enable(
        n35), .game_reset(n32), .clk(Clk) );
  Mole_Cell_2 \M[13]  ( .good_signal(good_signal[13]), .good_mole(
        Good_mole[13]), .bad_signal(bad_signal[13]), .bad_mole(Bad_mole[13]), 
        .hit_piont(Hit_point[13]), .cell_score(cell_score[139:130]), .enable(
        n35), .game_reset(n32), .clk(Clk) );
  Mole_Cell_1 \M[14]  ( .good_signal(good_signal[14]), .good_mole(
        Good_mole[14]), .bad_signal(bad_signal[14]), .bad_mole(Bad_mole[14]), 
        .hit_piont(Hit_point[14]), .cell_score(cell_score[149:140]), .enable(
        n36), .game_reset(n32), .clk(Clk) );
  Mole_Cell_0 \M[15]  ( .good_signal(good_signal[15]), .good_mole(
        Good_mole[15]), .bad_signal(bad_signal[15]), .bad_mole(Bad_mole[15]), 
        .hit_piont(Hit_point[15]), .cell_score(cell_score[159:150]), .enable(
        n34), .game_reset(n32), .clk(Clk) );
  Select_16_to_1 Select ( .cell_score(cell_score), .hit_piont(Hit_point), 
        .add_score(add_score) );
  Controller Control ( .reset(Reset), .game_start(Game_start), .clk(Clk), 
        .generator_clk(generator_clk), .decoder_enable(decoder_enable), 
        .reg_enable(reg_enable), .game_reset(game_reset), .countdown({
        SYNOPSYS_UNCONNECTED__0, Countdown[8:0]}) );
  Mole_DW01_add_0 add_195_2 ( .A(Score), .B(add_score), .CI(1'b0), .SUM({N25, 
        N24, N23, N22, N21, N20, N19, N18, N17, N16}) );
  Mole_DW01_add_1 add_195 ( .A({Score[9], Score}), .B({add_score[9], add_score}), .CI(1'b0), .SUM({N14, SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10}) );
  DFFRX1 \Score_reg[9]  ( .D(N35), .CK(Clk), .RN(n39), .Q(Score[9]) );
  DFFRX1 \Score_reg[8]  ( .D(N34), .CK(Clk), .RN(n39), .Q(Score[8]) );
  DFFRX1 \Score_reg[7]  ( .D(N33), .CK(Clk), .RN(n39), .Q(Score[7]) );
  DFFRX1 \Score_reg[6]  ( .D(N32), .CK(Clk), .RN(n39), .Q(Score[6]) );
  DFFRX1 \Score_reg[0]  ( .D(N26), .CK(Clk), .RN(n39), .Q(Score[0]) );
  DFFRX1 \Score_reg[5]  ( .D(N31), .CK(Clk), .RN(n39), .Q(Score[5]) );
  DFFRX1 \Score_reg[4]  ( .D(N30), .CK(Clk), .RN(n39), .Q(Score[4]) );
  DFFRX1 \Score_reg[3]  ( .D(N29), .CK(Clk), .RN(n39), .Q(Score[3]) );
  DFFRX1 \Score_reg[2]  ( .D(N28), .CK(Clk), .RN(n39), .Q(Score[2]) );
  DFFRX1 \Score_reg[1]  ( .D(N27), .CK(Clk), .RN(n39), .Q(Score[1]) );
  CLKINVX1 U32 ( .A(n33), .Y(n34) );
  CLKINVX1 U33 ( .A(n33), .Y(n36) );
  CLKINVX1 U34 ( .A(n33), .Y(n35) );
  CLKINVX1 U35 ( .A(reg_enable), .Y(n33) );
  CLKBUFX3 U36 ( .A(game_reset), .Y(n32) );
  CLKINVX1 U37 ( .A(n32), .Y(n39) );
  NOR2BX1 U38 ( .AN(N16), .B(n31), .Y(N26) );
  NOR2BX1 U39 ( .AN(N17), .B(n31), .Y(N27) );
  NOR2BX1 U40 ( .AN(N18), .B(n31), .Y(N28) );
  NOR2BX1 U41 ( .AN(N19), .B(n31), .Y(N29) );
  NOR2BX1 U42 ( .AN(N20), .B(n31), .Y(N30) );
  NOR2BX1 U43 ( .AN(N21), .B(n31), .Y(N31) );
  NOR2BX1 U44 ( .AN(N22), .B(n31), .Y(N32) );
  NOR2BX1 U45 ( .AN(N23), .B(n31), .Y(N33) );
  NOR2BX1 U46 ( .AN(N24), .B(n31), .Y(N34) );
  CLKBUFX3 U47 ( .A(reg_enable), .Y(n37) );
  CLKBUFX3 U48 ( .A(N14), .Y(n31) );
  NOR2BX1 U49 ( .AN(N25), .B(n31), .Y(N35) );
  CLKBUFX3 U50 ( .A(generator_clk), .Y(n38) );
endmodule

