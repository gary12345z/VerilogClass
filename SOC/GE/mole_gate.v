/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : M-2016.12
// Date      : Thu Oct 17 21:18:57 2019
/////////////////////////////////////////////////////////////


module Reg_Cell_31 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n3, n1, n2;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n3), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n3) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Reg_Cell_30 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Reg_Cell_29 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Reg_Cell_28 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Reg_Cell_27 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Reg_Cell_26 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Reg_Cell_25 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Reg_Cell_24 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Reg_Cell_23 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Reg_Cell_22 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Reg_Cell_21 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Reg_Cell_20 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Reg_Cell_19 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Reg_Cell_18 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Reg_Cell_17 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Reg_Cell_16 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Generator_0 ( seed, addr, set, clk );
  input [14:0] seed;
  output [3:0] addr;
  input set, clk;
  wire   \_0_net_[0] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [15:0] R;

  Reg_Cell_31 \Cell[0]  ( .D(\_0_net_[0] ), .Q(R[0]), .set(n10), .set_D(1'b1), 
        .clk(clk) );
  Reg_Cell_30 \Cell[1]  ( .D(R[0]), .Q(R[1]), .set(n9), .set_D(seed[0]), .clk(
        clk) );
  Reg_Cell_29 \Cell[2]  ( .D(R[1]), .Q(R[2]), .set(n9), .set_D(seed[1]), .clk(
        clk) );
  Reg_Cell_28 \Cell[3]  ( .D(R[2]), .Q(R[3]), .set(n9), .set_D(seed[2]), .clk(
        clk) );
  Reg_Cell_27 \Cell[4]  ( .D(R[3]), .Q(R[4]), .set(n9), .set_D(seed[3]), .clk(
        clk) );
  Reg_Cell_26 \Cell[5]  ( .D(R[4]), .Q(R[5]), .set(n9), .set_D(seed[4]), .clk(
        clk) );
  Reg_Cell_25 \Cell[6]  ( .D(R[5]), .Q(R[6]), .set(n9), .set_D(seed[5]), .clk(
        clk) );
  Reg_Cell_24 \Cell[7]  ( .D(R[6]), .Q(R[7]), .set(n9), .set_D(seed[6]), .clk(
        clk) );
  Reg_Cell_23 \Cell[8]  ( .D(R[7]), .Q(R[8]), .set(n9), .set_D(seed[7]), .clk(
        clk) );
  Reg_Cell_22 \Cell[9]  ( .D(R[8]), .Q(R[9]), .set(n9), .set_D(seed[8]), .clk(
        clk) );
  Reg_Cell_21 \Cell[10]  ( .D(R[9]), .Q(R[10]), .set(n9), .set_D(seed[9]), 
        .clk(clk) );
  Reg_Cell_20 \Cell[11]  ( .D(R[10]), .Q(R[11]), .set(n9), .set_D(seed[10]), 
        .clk(clk) );
  Reg_Cell_19 \Cell[12]  ( .D(R[11]), .Q(R[12]), .set(n9), .set_D(seed[11]), 
        .clk(clk) );
  Reg_Cell_18 \Cell[13]  ( .D(R[12]), .Q(R[13]), .set(n9), .set_D(seed[12]), 
        .clk(clk) );
  Reg_Cell_17 \Cell[14]  ( .D(R[13]), .Q(R[14]), .set(n10), .set_D(seed[13]), 
        .clk(clk) );
  Reg_Cell_16 \Cell[15]  ( .D(R[14]), .Q(R[15]), .set(n10), .set_D(seed[14]), 
        .clk(clk) );
  XNOR2X1 U2 ( .A(R[13]), .B(n1), .Y(addr[3]) );
  XNOR2X1 U3 ( .A(R[3]), .B(n1), .Y(\_0_net_[0] ) );
  XOR2X1 U4 ( .A(n2), .B(n3), .Y(addr[2]) );
  XNOR2X1 U5 ( .A(R[11]), .B(R[10]), .Y(n3) );
  XNOR2X1 U6 ( .A(R[9]), .B(R[8]), .Y(n2) );
  XOR2X1 U7 ( .A(n4), .B(n5), .Y(addr[1]) );
  XNOR2X1 U8 ( .A(R[5]), .B(R[4]), .Y(n5) );
  XNOR2X1 U9 ( .A(R[7]), .B(R[6]), .Y(n4) );
  XOR2X1 U10 ( .A(n6), .B(n7), .Y(addr[0]) );
  XOR2X1 U11 ( .A(R[1]), .B(R[0]), .Y(n7) );
  XOR2X1 U12 ( .A(R[3]), .B(R[2]), .Y(n6) );
  CLKBUFX3 U13 ( .A(set), .Y(n9) );
  XOR2X1 U14 ( .A(n8), .B(R[12]), .Y(n1) );
  XNOR2X1 U15 ( .A(R[15]), .B(R[14]), .Y(n8) );
  CLKBUFX3 U16 ( .A(set), .Y(n10) );
endmodule


module Reg_Cell_15 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Reg_Cell_14 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Reg_Cell_13 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Reg_Cell_12 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Reg_Cell_11 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Reg_Cell_10 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Reg_Cell_9 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Reg_Cell_8 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Reg_Cell_7 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Reg_Cell_6 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Reg_Cell_5 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Reg_Cell_4 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Reg_Cell_3 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Reg_Cell_2 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Reg_Cell_1 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Reg_Cell_0 ( D, Q, set, set_D, clk );
  input D, set, set_D, clk;
  output Q;
  wire   n1, n2, n4;

  DFFSRX1 Q_reg ( .D(D), .CK(clk), .SN(n1), .RN(n2), .Q(Q) );
  CLKINVX1 U3 ( .A(n4), .Y(n2) );
  NOR2BX1 U4 ( .AN(set), .B(set_D), .Y(n4) );
  NAND2X1 U5 ( .A(set), .B(set_D), .Y(n1) );
endmodule


module Generator_1 ( seed, addr, set, clk );
  input [14:0] seed;
  output [3:0] addr;
  input set, clk;
  wire   \_0_net_[0] , n9, n10, n11, n12, n13, n14, n15, n16, n17, n18;
  wire   [15:0] R;

  Reg_Cell_15 \Cell[0]  ( .D(\_0_net_[0] ), .Q(R[0]), .set(n9), .set_D(1'b1), 
        .clk(clk) );
  Reg_Cell_14 \Cell[1]  ( .D(R[0]), .Q(R[1]), .set(n9), .set_D(seed[0]), .clk(
        clk) );
  Reg_Cell_13 \Cell[2]  ( .D(R[1]), .Q(R[2]), .set(n9), .set_D(seed[1]), .clk(
        clk) );
  Reg_Cell_12 \Cell[3]  ( .D(R[2]), .Q(R[3]), .set(n9), .set_D(seed[2]), .clk(
        clk) );
  Reg_Cell_11 \Cell[4]  ( .D(R[3]), .Q(R[4]), .set(n9), .set_D(seed[3]), .clk(
        clk) );
  Reg_Cell_10 \Cell[5]  ( .D(R[4]), .Q(R[5]), .set(n9), .set_D(seed[4]), .clk(
        clk) );
  Reg_Cell_9 \Cell[6]  ( .D(R[5]), .Q(R[6]), .set(n9), .set_D(seed[5]), .clk(
        clk) );
  Reg_Cell_8 \Cell[7]  ( .D(R[6]), .Q(R[7]), .set(n9), .set_D(seed[6]), .clk(
        clk) );
  Reg_Cell_7 \Cell[8]  ( .D(R[7]), .Q(R[8]), .set(n9), .set_D(seed[7]), .clk(
        clk) );
  Reg_Cell_6 \Cell[9]  ( .D(R[8]), .Q(R[9]), .set(n9), .set_D(seed[8]), .clk(
        clk) );
  Reg_Cell_5 \Cell[10]  ( .D(R[9]), .Q(R[10]), .set(n9), .set_D(seed[9]), 
        .clk(clk) );
  Reg_Cell_4 \Cell[11]  ( .D(R[10]), .Q(R[11]), .set(n9), .set_D(seed[10]), 
        .clk(clk) );
  Reg_Cell_3 \Cell[12]  ( .D(R[11]), .Q(R[12]), .set(n9), .set_D(seed[11]), 
        .clk(clk) );
  Reg_Cell_2 \Cell[13]  ( .D(R[12]), .Q(R[13]), .set(n10), .set_D(seed[12]), 
        .clk(clk) );
  Reg_Cell_1 \Cell[14]  ( .D(R[13]), .Q(R[14]), .set(n10), .set_D(seed[13]), 
        .clk(clk) );
  Reg_Cell_0 \Cell[15]  ( .D(R[14]), .Q(R[15]), .set(n10), .set_D(seed[14]), 
        .clk(clk) );
  XNOR2X1 U2 ( .A(R[13]), .B(n18), .Y(addr[3]) );
  XNOR2X1 U3 ( .A(R[3]), .B(n18), .Y(\_0_net_[0] ) );
  XOR2X1 U4 ( .A(n17), .B(n16), .Y(addr[2]) );
  XNOR2X1 U5 ( .A(R[11]), .B(R[10]), .Y(n16) );
  XNOR2X1 U6 ( .A(R[9]), .B(R[8]), .Y(n17) );
  XOR2X1 U7 ( .A(n15), .B(n14), .Y(addr[1]) );
  XNOR2X1 U8 ( .A(R[5]), .B(R[4]), .Y(n14) );
  XNOR2X1 U9 ( .A(R[7]), .B(R[6]), .Y(n15) );
  XOR2X1 U10 ( .A(n13), .B(n12), .Y(addr[0]) );
  XOR2X1 U11 ( .A(R[1]), .B(R[0]), .Y(n12) );
  XOR2X1 U12 ( .A(R[3]), .B(R[2]), .Y(n13) );
  CLKBUFX3 U13 ( .A(set), .Y(n9) );
  XOR2X1 U14 ( .A(n11), .B(R[12]), .Y(n18) );
  XNOR2X1 U15 ( .A(R[15]), .B(R[14]), .Y(n11) );
  CLKBUFX3 U16 ( .A(set), .Y(n10) );
endmodule


module Decoder_4_to_16_0 ( addr, enable, signal );
  input [3:0] addr;
  output [15:0] signal;
  input enable;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n1, n2, n3;

  NOR2X1 U2 ( .A(n5), .B(n9), .Y(signal[0]) );
  NAND2X1 U3 ( .A(n12), .B(n1), .Y(n9) );
  NOR2X1 U4 ( .A(n4), .B(n5), .Y(signal[9]) );
  NOR2X1 U5 ( .A(n4), .B(n11), .Y(signal[11]) );
  NOR2X1 U6 ( .A(n4), .B(n10), .Y(signal[13]) );
  NOR2X1 U7 ( .A(n4), .B(n8), .Y(signal[15]) );
  NOR2X1 U8 ( .A(n6), .B(n11), .Y(signal[10]) );
  NOR2X1 U9 ( .A(n6), .B(n10), .Y(signal[12]) );
  NOR2X1 U10 ( .A(n6), .B(n8), .Y(signal[14]) );
  NOR2X1 U11 ( .A(n5), .B(n6), .Y(signal[8]) );
  NOR2X1 U12 ( .A(n7), .B(n11), .Y(signal[3]) );
  NOR2X1 U13 ( .A(n7), .B(n10), .Y(signal[5]) );
  NOR2X1 U14 ( .A(n7), .B(n8), .Y(signal[7]) );
  NOR2X1 U15 ( .A(n9), .B(n11), .Y(signal[2]) );
  NOR2X1 U16 ( .A(n9), .B(n10), .Y(signal[4]) );
  NOR2X1 U17 ( .A(n5), .B(n7), .Y(signal[1]) );
  NOR2X1 U18 ( .A(n8), .B(n9), .Y(signal[6]) );
  NAND2X1 U19 ( .A(n2), .B(n3), .Y(n5) );
  NAND3X1 U20 ( .A(addr[3]), .B(addr[0]), .C(enable), .Y(n4) );
  NAND3X1 U21 ( .A(addr[3]), .B(n1), .C(enable), .Y(n6) );
  NOR2BX1 U22 ( .AN(enable), .B(addr[3]), .Y(n12) );
  NAND2X1 U23 ( .A(n12), .B(addr[0]), .Y(n7) );
  NAND2X1 U24 ( .A(addr[2]), .B(addr[1]), .Y(n8) );
  NAND2X1 U25 ( .A(addr[1]), .B(n3), .Y(n11) );
  NAND2X1 U26 ( .A(addr[2]), .B(n2), .Y(n10) );
  CLKINVX1 U27 ( .A(addr[1]), .Y(n2) );
  CLKINVX1 U28 ( .A(addr[2]), .Y(n3) );
  CLKINVX1 U29 ( .A(addr[0]), .Y(n1) );
endmodule


module Decoder_4_to_16_1 ( addr, enable, signal );
  input [3:0] addr;
  output [15:0] signal;
  input enable;
  wire   n1, n2, n3, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  NOR2X1 U2 ( .A(n20), .B(n16), .Y(signal[0]) );
  NAND2X1 U3 ( .A(n13), .B(n1), .Y(n16) );
  NOR2X1 U4 ( .A(n21), .B(n20), .Y(signal[9]) );
  NOR2X1 U5 ( .A(n21), .B(n14), .Y(signal[11]) );
  NOR2X1 U6 ( .A(n21), .B(n15), .Y(signal[13]) );
  NOR2X1 U7 ( .A(n21), .B(n17), .Y(signal[15]) );
  NOR2X1 U8 ( .A(n19), .B(n14), .Y(signal[10]) );
  NOR2X1 U9 ( .A(n19), .B(n15), .Y(signal[12]) );
  NOR2X1 U10 ( .A(n19), .B(n17), .Y(signal[14]) );
  NOR2X1 U11 ( .A(n20), .B(n19), .Y(signal[8]) );
  NOR2X1 U12 ( .A(n18), .B(n14), .Y(signal[3]) );
  NOR2X1 U13 ( .A(n18), .B(n15), .Y(signal[5]) );
  NOR2X1 U14 ( .A(n18), .B(n17), .Y(signal[7]) );
  NOR2X1 U15 ( .A(n16), .B(n14), .Y(signal[2]) );
  NOR2X1 U16 ( .A(n16), .B(n15), .Y(signal[4]) );
  NOR2X1 U17 ( .A(n20), .B(n18), .Y(signal[1]) );
  NOR2X1 U18 ( .A(n17), .B(n16), .Y(signal[6]) );
  NAND2X1 U19 ( .A(n2), .B(n3), .Y(n20) );
  NAND3X1 U20 ( .A(addr[3]), .B(addr[0]), .C(enable), .Y(n21) );
  NAND3X1 U21 ( .A(addr[3]), .B(n1), .C(enable), .Y(n19) );
  NOR2BX1 U22 ( .AN(enable), .B(addr[3]), .Y(n13) );
  NAND2X1 U23 ( .A(n13), .B(addr[0]), .Y(n18) );
  NAND2X1 U24 ( .A(addr[2]), .B(addr[1]), .Y(n17) );
  NAND2X1 U25 ( .A(addr[1]), .B(n3), .Y(n14) );
  NAND2X1 U26 ( .A(addr[2]), .B(n2), .Y(n15) );
  CLKINVX1 U27 ( .A(addr[1]), .Y(n2) );
  CLKINVX1 U28 ( .A(addr[2]), .Y(n3) );
  CLKINVX1 U29 ( .A(addr[0]), .Y(n1) );
endmodule


module Mole_Cell_15 ( good_signal, good_mole, bad_signal, bad_mole, hit_reg, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_reg, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N3, N4, N14, N15, N16, N17, N18, N19, N20, N21, N22, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n33,
         n34, n35, n36, n37, n38, n39;
  assign good_mole = N3;
  assign cell_score[9] = N4;
  assign bad_mole = N4;

  DFFRX1 \cell_score_reg[9]  ( .D(n34), .CK(clk), .RN(n39), .Q(N4) );
  DFFRX1 \cell_score_reg[5]  ( .D(n16), .CK(clk), .RN(n39), .Q(cell_score[5])
         );
  DFFRX1 \cell_score_reg[6]  ( .D(n17), .CK(clk), .RN(n39), .Q(cell_score[6])
         );
  DFFRX1 \cell_score_reg[8]  ( .D(n33), .CK(clk), .RN(n39), .Q(cell_score[8])
         );
  DFFRX1 \cell_score_reg[7]  ( .D(n18), .CK(clk), .RN(n39), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[4]  ( .D(n15), .CK(clk), .RN(n39), .Q(cell_score[4])
         );
  DFFRX1 \cell_score_reg[3]  ( .D(n37), .CK(clk), .RN(n39), .Q(cell_score[3])
         );
  DFFRX1 \cell_score_reg[2]  ( .D(n32), .CK(clk), .RN(n39), .Q(cell_score[2])
         );
  DFFRX1 \cell_score_reg[1]  ( .D(n38), .CK(clk), .RN(n39), .Q(cell_score[1])
         );
  DFFRX1 \cell_score_reg[0]  ( .D(n35), .CK(clk), .RN(n39), .Q(cell_score[0]), 
        .QN(n1) );
  CLKINVX1 U3 ( .A(n31), .Y(n36) );
  NAND3BX1 U4 ( .AN(good_signal), .B(n3), .C(bad_signal), .Y(n31) );
  OA21XL U5 ( .A0(bad_signal), .A1(good_signal), .B0(n3), .Y(n22) );
  CLKBUFX3 U6 ( .A(enable), .Y(n3) );
  CLKINVX1 U7 ( .A(game_reset), .Y(n39) );
  CLKINVX1 U8 ( .A(n28), .Y(n33) );
  AOI221XL U9 ( .A0(cell_score[8]), .A1(n20), .B0(N21), .B1(n21), .C0(n36), 
        .Y(n28) );
  CLKINVX1 U10 ( .A(n26), .Y(n17) );
  AOI221XL U11 ( .A0(cell_score[6]), .A1(n20), .B0(N19), .B1(n21), .C0(n36), 
        .Y(n26) );
  CLKINVX1 U12 ( .A(n29), .Y(n34) );
  AOI221XL U13 ( .A0(N4), .A1(n20), .B0(N22), .B1(n21), .C0(n36), .Y(n29) );
  CLKINVX1 U14 ( .A(n25), .Y(n16) );
  AOI221XL U15 ( .A0(cell_score[5]), .A1(n20), .B0(N18), .B1(n21), .C0(n36), 
        .Y(n25) );
  CLKINVX1 U16 ( .A(n27), .Y(n18) );
  AOI221XL U17 ( .A0(cell_score[7]), .A1(n20), .B0(N20), .B1(n21), .C0(n36), 
        .Y(n27) );
  NOR3X1 U18 ( .A(N3), .B(hit_reg), .C(n3), .Y(n20) );
  NOR3X1 U19 ( .A(n3), .B(hit_reg), .C(n20), .Y(n21) );
  CLKINVX1 U20 ( .A(n23), .Y(n37) );
  AOI221XL U21 ( .A0(cell_score[3]), .A1(n20), .B0(N16), .B1(n21), .C0(n22), 
        .Y(n23) );
  CLKINVX1 U22 ( .A(n19), .Y(n38) );
  AOI221XL U23 ( .A0(cell_score[1]), .A1(n20), .B0(N14), .B1(n21), .C0(n22), 
        .Y(n19) );
  CLKINVX1 U24 ( .A(n30), .Y(n35) );
  AOI221XL U25 ( .A0(cell_score[0]), .A1(n20), .B0(n1), .B1(n21), .C0(n36), 
        .Y(n30) );
  AO22X1 U26 ( .A0(cell_score[2]), .A1(n20), .B0(N15), .B1(n21), .Y(n32) );
  CLKINVX1 U27 ( .A(n24), .Y(n15) );
  AOI221XL U28 ( .A0(cell_score[4]), .A1(n20), .B0(N17), .B1(n21), .C0(n36), 
        .Y(n24) );
  NAND2BX1 U29 ( .AN(cell_score[1]), .B(n1), .Y(n4) );
  OAI2BB1X1 U30 ( .A0N(cell_score[0]), .A1N(cell_score[1]), .B0(n4), .Y(N14)
         );
  OR2X1 U31 ( .A(n4), .B(cell_score[2]), .Y(n5) );
  OAI2BB1X1 U32 ( .A0N(n4), .A1N(cell_score[2]), .B0(n5), .Y(N15) );
  OR2X1 U33 ( .A(n5), .B(cell_score[3]), .Y(n6) );
  OAI2BB1X1 U34 ( .A0N(n5), .A1N(cell_score[3]), .B0(n6), .Y(N16) );
  OR2X1 U35 ( .A(n6), .B(cell_score[4]), .Y(n7) );
  OAI2BB1X1 U36 ( .A0N(n6), .A1N(cell_score[4]), .B0(n7), .Y(N17) );
  OR2X1 U37 ( .A(n7), .B(cell_score[5]), .Y(n8) );
  OAI2BB1X1 U38 ( .A0N(n7), .A1N(cell_score[5]), .B0(n8), .Y(N18) );
  NOR2X1 U39 ( .A(n8), .B(cell_score[6]), .Y(n9) );
  AO21X1 U40 ( .A0(n8), .A1(cell_score[6]), .B0(n9), .Y(N19) );
  NAND2X1 U41 ( .A(n9), .B(n2), .Y(n10) );
  OAI21XL U42 ( .A0(n9), .A1(n2), .B0(n10), .Y(N20) );
  XNOR2X1 U43 ( .A(cell_score[8]), .B(n10), .Y(N21) );
  NOR2X1 U44 ( .A(cell_score[8]), .B(n10), .Y(n11) );
  XOR2X1 U45 ( .A(N4), .B(n11), .Y(N22) );
  NOR2X1 U46 ( .A(cell_score[5]), .B(cell_score[4]), .Y(n14) );
  NOR3X1 U47 ( .A(cell_score[6]), .B(cell_score[8]), .C(cell_score[7]), .Y(n13) );
  NOR4X1 U48 ( .A(cell_score[3]), .B(cell_score[2]), .C(cell_score[1]), .D(
        cell_score[0]), .Y(n12) );
  AOI31X1 U49 ( .A0(n14), .A1(n13), .A2(n12), .B0(N4), .Y(N3) );
endmodule


module Mole_Cell_14 ( good_signal, good_mole, bad_signal, bad_mole, hit_reg, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_reg, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N3, N4, N14, N15, N16, N17, N18, N19, N20, N21, N22, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53;
  assign good_mole = N3;
  assign cell_score[9] = N4;
  assign bad_mole = N4;

  DFFRX1 \cell_score_reg[9]  ( .D(n16), .CK(clk), .RN(n39), .Q(N4) );
  DFFRX1 \cell_score_reg[6]  ( .D(n33), .CK(clk), .RN(n39), .Q(cell_score[6])
         );
  DFFRX1 \cell_score_reg[8]  ( .D(n17), .CK(clk), .RN(n39), .Q(cell_score[8])
         );
  DFFRX1 \cell_score_reg[7]  ( .D(n18), .CK(clk), .RN(n39), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[4]  ( .D(n35), .CK(clk), .RN(n39), .Q(cell_score[4])
         );
  DFFRX1 \cell_score_reg[5]  ( .D(n34), .CK(clk), .RN(n39), .Q(cell_score[5])
         );
  DFFRX1 \cell_score_reg[3]  ( .D(n36), .CK(clk), .RN(n39), .Q(cell_score[3])
         );
  DFFRX1 \cell_score_reg[2]  ( .D(n40), .CK(clk), .RN(n39), .Q(cell_score[2])
         );
  DFFRX1 \cell_score_reg[1]  ( .D(n37), .CK(clk), .RN(n39), .Q(cell_score[1])
         );
  DFFRX1 \cell_score_reg[0]  ( .D(n15), .CK(clk), .RN(n39), .Q(cell_score[0]), 
        .QN(n1) );
  OA21XL U3 ( .A0(bad_signal), .A1(good_signal), .B0(n3), .Y(n50) );
  CLKINVX1 U4 ( .A(n41), .Y(n38) );
  NAND3BX1 U5 ( .AN(good_signal), .B(n3), .C(bad_signal), .Y(n41) );
  CLKBUFX3 U6 ( .A(enable), .Y(n3) );
  CLKINVX1 U7 ( .A(game_reset), .Y(n39) );
  CLKINVX1 U8 ( .A(n44), .Y(n17) );
  AOI221XL U9 ( .A0(cell_score[8]), .A1(n52), .B0(N21), .B1(n51), .C0(n38), 
        .Y(n44) );
  CLKINVX1 U10 ( .A(n46), .Y(n33) );
  AOI221XL U11 ( .A0(cell_score[6]), .A1(n52), .B0(N19), .B1(n51), .C0(n38), 
        .Y(n46) );
  CLKINVX1 U12 ( .A(n43), .Y(n16) );
  AOI221XL U13 ( .A0(N4), .A1(n52), .B0(N22), .B1(n51), .C0(n38), .Y(n43) );
  CLKINVX1 U14 ( .A(n47), .Y(n34) );
  AOI221XL U15 ( .A0(cell_score[5]), .A1(n52), .B0(N18), .B1(n51), .C0(n38), 
        .Y(n47) );
  CLKINVX1 U16 ( .A(n45), .Y(n18) );
  AOI221XL U17 ( .A0(cell_score[7]), .A1(n52), .B0(N20), .B1(n51), .C0(n38), 
        .Y(n45) );
  NOR3X1 U18 ( .A(N3), .B(hit_reg), .C(n3), .Y(n52) );
  NOR3X1 U19 ( .A(n3), .B(hit_reg), .C(n52), .Y(n51) );
  CLKINVX1 U20 ( .A(n49), .Y(n36) );
  AOI221XL U21 ( .A0(cell_score[3]), .A1(n52), .B0(N16), .B1(n51), .C0(n50), 
        .Y(n49) );
  CLKINVX1 U22 ( .A(n53), .Y(n37) );
  AOI221XL U23 ( .A0(cell_score[1]), .A1(n52), .B0(N14), .B1(n51), .C0(n50), 
        .Y(n53) );
  CLKINVX1 U24 ( .A(n42), .Y(n15) );
  AOI221XL U25 ( .A0(cell_score[0]), .A1(n52), .B0(n1), .B1(n51), .C0(n38), 
        .Y(n42) );
  AO22X1 U26 ( .A0(cell_score[2]), .A1(n52), .B0(N15), .B1(n51), .Y(n40) );
  CLKINVX1 U27 ( .A(n48), .Y(n35) );
  AOI221XL U28 ( .A0(cell_score[4]), .A1(n52), .B0(N17), .B1(n51), .C0(n38), 
        .Y(n48) );
  NAND2BX1 U29 ( .AN(cell_score[1]), .B(n1), .Y(n4) );
  OAI2BB1X1 U30 ( .A0N(cell_score[0]), .A1N(cell_score[1]), .B0(n4), .Y(N14)
         );
  OR2X1 U31 ( .A(n4), .B(cell_score[2]), .Y(n5) );
  OAI2BB1X1 U32 ( .A0N(n4), .A1N(cell_score[2]), .B0(n5), .Y(N15) );
  OR2X1 U33 ( .A(n5), .B(cell_score[3]), .Y(n6) );
  OAI2BB1X1 U34 ( .A0N(n5), .A1N(cell_score[3]), .B0(n6), .Y(N16) );
  OR2X1 U35 ( .A(n6), .B(cell_score[4]), .Y(n7) );
  OAI2BB1X1 U36 ( .A0N(n6), .A1N(cell_score[4]), .B0(n7), .Y(N17) );
  OR2X1 U37 ( .A(n7), .B(cell_score[5]), .Y(n8) );
  OAI2BB1X1 U38 ( .A0N(n7), .A1N(cell_score[5]), .B0(n8), .Y(N18) );
  NOR2X1 U39 ( .A(n8), .B(cell_score[6]), .Y(n9) );
  AO21X1 U40 ( .A0(n8), .A1(cell_score[6]), .B0(n9), .Y(N19) );
  NAND2X1 U41 ( .A(n9), .B(n2), .Y(n10) );
  OAI21XL U42 ( .A0(n9), .A1(n2), .B0(n10), .Y(N20) );
  XNOR2X1 U43 ( .A(cell_score[8]), .B(n10), .Y(N21) );
  NOR2X1 U44 ( .A(cell_score[8]), .B(n10), .Y(n11) );
  XOR2X1 U45 ( .A(N4), .B(n11), .Y(N22) );
  NOR2X1 U46 ( .A(cell_score[5]), .B(cell_score[4]), .Y(n14) );
  NOR3X1 U47 ( .A(cell_score[6]), .B(cell_score[8]), .C(cell_score[7]), .Y(n13) );
  NOR4X1 U48 ( .A(cell_score[3]), .B(cell_score[2]), .C(cell_score[1]), .D(
        cell_score[0]), .Y(n12) );
  AOI31X1 U49 ( .A0(n14), .A1(n13), .A2(n12), .B0(N4), .Y(N3) );
endmodule


module Mole_Cell_13 ( good_signal, good_mole, bad_signal, bad_mole, hit_reg, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_reg, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N3, N4, N14, N15, N16, N17, N18, N19, N20, N21, N22, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53;
  assign good_mole = N3;
  assign cell_score[9] = N4;
  assign bad_mole = N4;

  DFFRX1 \cell_score_reg[9]  ( .D(n16), .CK(clk), .RN(n39), .Q(N4) );
  DFFRX1 \cell_score_reg[8]  ( .D(n17), .CK(clk), .RN(n39), .Q(cell_score[8])
         );
  DFFRX1 \cell_score_reg[7]  ( .D(n18), .CK(clk), .RN(n39), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[4]  ( .D(n35), .CK(clk), .RN(n39), .Q(cell_score[4])
         );
  DFFRX1 \cell_score_reg[5]  ( .D(n34), .CK(clk), .RN(n39), .Q(cell_score[5])
         );
  DFFRX1 \cell_score_reg[6]  ( .D(n33), .CK(clk), .RN(n39), .Q(cell_score[6])
         );
  DFFRX1 \cell_score_reg[1]  ( .D(n37), .CK(clk), .RN(n39), .Q(cell_score[1])
         );
  DFFRX1 \cell_score_reg[3]  ( .D(n36), .CK(clk), .RN(n39), .Q(cell_score[3])
         );
  DFFRX1 \cell_score_reg[2]  ( .D(n40), .CK(clk), .RN(n39), .Q(cell_score[2])
         );
  DFFRX1 \cell_score_reg[0]  ( .D(n15), .CK(clk), .RN(n39), .Q(cell_score[0]), 
        .QN(n1) );
  OA21XL U3 ( .A0(bad_signal), .A1(good_signal), .B0(n3), .Y(n50) );
  CLKINVX1 U4 ( .A(n41), .Y(n38) );
  NAND3BX1 U5 ( .AN(good_signal), .B(n3), .C(bad_signal), .Y(n41) );
  CLKBUFX3 U6 ( .A(enable), .Y(n3) );
  CLKINVX1 U7 ( .A(game_reset), .Y(n39) );
  CLKINVX1 U8 ( .A(n44), .Y(n17) );
  AOI221XL U9 ( .A0(cell_score[8]), .A1(n52), .B0(N21), .B1(n51), .C0(n38), 
        .Y(n44) );
  CLKINVX1 U10 ( .A(n46), .Y(n33) );
  AOI221XL U11 ( .A0(cell_score[6]), .A1(n52), .B0(N19), .B1(n51), .C0(n38), 
        .Y(n46) );
  CLKINVX1 U12 ( .A(n43), .Y(n16) );
  AOI221XL U13 ( .A0(N4), .A1(n52), .B0(N22), .B1(n51), .C0(n38), .Y(n43) );
  CLKINVX1 U14 ( .A(n47), .Y(n34) );
  AOI221XL U15 ( .A0(cell_score[5]), .A1(n52), .B0(N18), .B1(n51), .C0(n38), 
        .Y(n47) );
  CLKINVX1 U16 ( .A(n45), .Y(n18) );
  AOI221XL U17 ( .A0(cell_score[7]), .A1(n52), .B0(N20), .B1(n51), .C0(n38), 
        .Y(n45) );
  NOR3X1 U18 ( .A(N3), .B(hit_reg), .C(n3), .Y(n52) );
  NOR3X1 U19 ( .A(n3), .B(hit_reg), .C(n52), .Y(n51) );
  CLKINVX1 U20 ( .A(n49), .Y(n36) );
  AOI221XL U21 ( .A0(cell_score[3]), .A1(n52), .B0(N16), .B1(n51), .C0(n50), 
        .Y(n49) );
  CLKINVX1 U22 ( .A(n53), .Y(n37) );
  AOI221XL U23 ( .A0(cell_score[1]), .A1(n52), .B0(N14), .B1(n51), .C0(n50), 
        .Y(n53) );
  CLKINVX1 U24 ( .A(n42), .Y(n15) );
  AOI221XL U25 ( .A0(cell_score[0]), .A1(n52), .B0(n1), .B1(n51), .C0(n38), 
        .Y(n42) );
  AO22X1 U26 ( .A0(cell_score[2]), .A1(n52), .B0(N15), .B1(n51), .Y(n40) );
  CLKINVX1 U27 ( .A(n48), .Y(n35) );
  AOI221XL U28 ( .A0(cell_score[4]), .A1(n52), .B0(N17), .B1(n51), .C0(n38), 
        .Y(n48) );
  NAND2BX1 U29 ( .AN(cell_score[1]), .B(n1), .Y(n4) );
  OAI2BB1X1 U30 ( .A0N(cell_score[0]), .A1N(cell_score[1]), .B0(n4), .Y(N14)
         );
  OR2X1 U31 ( .A(n4), .B(cell_score[2]), .Y(n5) );
  OAI2BB1X1 U32 ( .A0N(n4), .A1N(cell_score[2]), .B0(n5), .Y(N15) );
  OR2X1 U33 ( .A(n5), .B(cell_score[3]), .Y(n6) );
  OAI2BB1X1 U34 ( .A0N(n5), .A1N(cell_score[3]), .B0(n6), .Y(N16) );
  OR2X1 U35 ( .A(n6), .B(cell_score[4]), .Y(n7) );
  OAI2BB1X1 U36 ( .A0N(n6), .A1N(cell_score[4]), .B0(n7), .Y(N17) );
  OR2X1 U37 ( .A(n7), .B(cell_score[5]), .Y(n8) );
  OAI2BB1X1 U38 ( .A0N(n7), .A1N(cell_score[5]), .B0(n8), .Y(N18) );
  NOR2X1 U39 ( .A(n8), .B(cell_score[6]), .Y(n9) );
  AO21X1 U40 ( .A0(n8), .A1(cell_score[6]), .B0(n9), .Y(N19) );
  NAND2X1 U41 ( .A(n9), .B(n2), .Y(n10) );
  OAI21XL U42 ( .A0(n9), .A1(n2), .B0(n10), .Y(N20) );
  XNOR2X1 U43 ( .A(cell_score[8]), .B(n10), .Y(N21) );
  NOR2X1 U44 ( .A(cell_score[8]), .B(n10), .Y(n11) );
  XOR2X1 U45 ( .A(N4), .B(n11), .Y(N22) );
  NOR2X1 U46 ( .A(cell_score[5]), .B(cell_score[4]), .Y(n14) );
  NOR3X1 U47 ( .A(cell_score[6]), .B(cell_score[8]), .C(cell_score[7]), .Y(n13) );
  NOR4X1 U48 ( .A(cell_score[3]), .B(cell_score[2]), .C(cell_score[1]), .D(
        cell_score[0]), .Y(n12) );
  AOI31X1 U49 ( .A0(n14), .A1(n13), .A2(n12), .B0(N4), .Y(N3) );
endmodule


module Mole_Cell_12 ( good_signal, good_mole, bad_signal, bad_mole, hit_reg, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_reg, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N3, N4, N14, N15, N16, N17, N18, N19, N20, N21, N22, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53;
  assign good_mole = N3;
  assign cell_score[9] = N4;
  assign bad_mole = N4;

  DFFRX1 \cell_score_reg[9]  ( .D(n16), .CK(clk), .RN(n39), .Q(N4) );
  DFFRX1 \cell_score_reg[8]  ( .D(n17), .CK(clk), .RN(n39), .Q(cell_score[8])
         );
  DFFRX1 \cell_score_reg[4]  ( .D(n35), .CK(clk), .RN(n39), .Q(cell_score[4])
         );
  DFFRX1 \cell_score_reg[5]  ( .D(n34), .CK(clk), .RN(n39), .Q(cell_score[5])
         );
  DFFRX1 \cell_score_reg[6]  ( .D(n33), .CK(clk), .RN(n39), .Q(cell_score[6])
         );
  DFFRX1 \cell_score_reg[7]  ( .D(n18), .CK(clk), .RN(n39), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[1]  ( .D(n37), .CK(clk), .RN(n39), .Q(cell_score[1])
         );
  DFFRX1 \cell_score_reg[3]  ( .D(n36), .CK(clk), .RN(n39), .Q(cell_score[3])
         );
  DFFRX1 \cell_score_reg[2]  ( .D(n40), .CK(clk), .RN(n39), .Q(cell_score[2])
         );
  DFFRX1 \cell_score_reg[0]  ( .D(n15), .CK(clk), .RN(n39), .Q(cell_score[0]), 
        .QN(n1) );
  OA21XL U3 ( .A0(bad_signal), .A1(good_signal), .B0(n3), .Y(n50) );
  CLKINVX1 U4 ( .A(n41), .Y(n38) );
  NAND3BX1 U5 ( .AN(good_signal), .B(n3), .C(bad_signal), .Y(n41) );
  CLKBUFX3 U6 ( .A(enable), .Y(n3) );
  CLKINVX1 U7 ( .A(game_reset), .Y(n39) );
  CLKINVX1 U8 ( .A(n44), .Y(n17) );
  AOI221XL U9 ( .A0(cell_score[8]), .A1(n52), .B0(N21), .B1(n51), .C0(n38), 
        .Y(n44) );
  CLKINVX1 U10 ( .A(n46), .Y(n33) );
  AOI221XL U11 ( .A0(cell_score[6]), .A1(n52), .B0(N19), .B1(n51), .C0(n38), 
        .Y(n46) );
  CLKINVX1 U12 ( .A(n43), .Y(n16) );
  AOI221XL U13 ( .A0(N4), .A1(n52), .B0(N22), .B1(n51), .C0(n38), .Y(n43) );
  CLKINVX1 U14 ( .A(n47), .Y(n34) );
  AOI221XL U15 ( .A0(cell_score[5]), .A1(n52), .B0(N18), .B1(n51), .C0(n38), 
        .Y(n47) );
  CLKINVX1 U16 ( .A(n45), .Y(n18) );
  AOI221XL U17 ( .A0(cell_score[7]), .A1(n52), .B0(N20), .B1(n51), .C0(n38), 
        .Y(n45) );
  NOR3X1 U18 ( .A(N3), .B(hit_reg), .C(n3), .Y(n52) );
  NOR3X1 U19 ( .A(n3), .B(hit_reg), .C(n52), .Y(n51) );
  CLKINVX1 U20 ( .A(n49), .Y(n36) );
  AOI221XL U21 ( .A0(cell_score[3]), .A1(n52), .B0(N16), .B1(n51), .C0(n50), 
        .Y(n49) );
  CLKINVX1 U22 ( .A(n53), .Y(n37) );
  AOI221XL U23 ( .A0(cell_score[1]), .A1(n52), .B0(N14), .B1(n51), .C0(n50), 
        .Y(n53) );
  CLKINVX1 U24 ( .A(n42), .Y(n15) );
  AOI221XL U25 ( .A0(cell_score[0]), .A1(n52), .B0(n1), .B1(n51), .C0(n38), 
        .Y(n42) );
  AO22X1 U26 ( .A0(cell_score[2]), .A1(n52), .B0(N15), .B1(n51), .Y(n40) );
  CLKINVX1 U27 ( .A(n48), .Y(n35) );
  AOI221XL U28 ( .A0(cell_score[4]), .A1(n52), .B0(N17), .B1(n51), .C0(n38), 
        .Y(n48) );
  NAND2BX1 U29 ( .AN(cell_score[1]), .B(n1), .Y(n4) );
  OAI2BB1X1 U30 ( .A0N(cell_score[0]), .A1N(cell_score[1]), .B0(n4), .Y(N14)
         );
  OR2X1 U31 ( .A(n4), .B(cell_score[2]), .Y(n5) );
  OAI2BB1X1 U32 ( .A0N(n4), .A1N(cell_score[2]), .B0(n5), .Y(N15) );
  OR2X1 U33 ( .A(n5), .B(cell_score[3]), .Y(n6) );
  OAI2BB1X1 U34 ( .A0N(n5), .A1N(cell_score[3]), .B0(n6), .Y(N16) );
  OR2X1 U35 ( .A(n6), .B(cell_score[4]), .Y(n7) );
  OAI2BB1X1 U36 ( .A0N(n6), .A1N(cell_score[4]), .B0(n7), .Y(N17) );
  OR2X1 U37 ( .A(n7), .B(cell_score[5]), .Y(n8) );
  OAI2BB1X1 U38 ( .A0N(n7), .A1N(cell_score[5]), .B0(n8), .Y(N18) );
  NOR2X1 U39 ( .A(n8), .B(cell_score[6]), .Y(n9) );
  AO21X1 U40 ( .A0(n8), .A1(cell_score[6]), .B0(n9), .Y(N19) );
  NAND2X1 U41 ( .A(n9), .B(n2), .Y(n10) );
  OAI21XL U42 ( .A0(n9), .A1(n2), .B0(n10), .Y(N20) );
  XNOR2X1 U43 ( .A(cell_score[8]), .B(n10), .Y(N21) );
  NOR2X1 U44 ( .A(cell_score[8]), .B(n10), .Y(n11) );
  XOR2X1 U45 ( .A(N4), .B(n11), .Y(N22) );
  NOR2X1 U46 ( .A(cell_score[5]), .B(cell_score[4]), .Y(n14) );
  NOR3X1 U47 ( .A(cell_score[6]), .B(cell_score[8]), .C(cell_score[7]), .Y(n13) );
  NOR4X1 U48 ( .A(cell_score[3]), .B(cell_score[2]), .C(cell_score[1]), .D(
        cell_score[0]), .Y(n12) );
  AOI31X1 U49 ( .A0(n14), .A1(n13), .A2(n12), .B0(N4), .Y(N3) );
endmodule


module Mole_Cell_11 ( good_signal, good_mole, bad_signal, bad_mole, hit_reg, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_reg, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N3, N4, N14, N15, N16, N17, N18, N19, N20, N21, N22, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53;
  assign good_mole = N3;
  assign cell_score[9] = N4;
  assign bad_mole = N4;

  DFFRX1 \cell_score_reg[9]  ( .D(n16), .CK(clk), .RN(n39), .Q(N4) );
  DFFRX1 \cell_score_reg[8]  ( .D(n17), .CK(clk), .RN(n39), .Q(cell_score[8])
         );
  DFFRX1 \cell_score_reg[4]  ( .D(n35), .CK(clk), .RN(n39), .Q(cell_score[4])
         );
  DFFRX1 \cell_score_reg[5]  ( .D(n34), .CK(clk), .RN(n39), .Q(cell_score[5])
         );
  DFFRX1 \cell_score_reg[6]  ( .D(n33), .CK(clk), .RN(n39), .Q(cell_score[6])
         );
  DFFRX1 \cell_score_reg[7]  ( .D(n18), .CK(clk), .RN(n39), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[1]  ( .D(n37), .CK(clk), .RN(n39), .Q(cell_score[1])
         );
  DFFRX1 \cell_score_reg[3]  ( .D(n36), .CK(clk), .RN(n39), .Q(cell_score[3])
         );
  DFFRX1 \cell_score_reg[2]  ( .D(n40), .CK(clk), .RN(n39), .Q(cell_score[2])
         );
  DFFRX1 \cell_score_reg[0]  ( .D(n15), .CK(clk), .RN(n39), .Q(cell_score[0]), 
        .QN(n1) );
  OA21XL U3 ( .A0(bad_signal), .A1(good_signal), .B0(n3), .Y(n50) );
  CLKINVX1 U4 ( .A(n41), .Y(n38) );
  NAND3BX1 U5 ( .AN(good_signal), .B(n3), .C(bad_signal), .Y(n41) );
  CLKBUFX3 U6 ( .A(enable), .Y(n3) );
  CLKINVX1 U7 ( .A(game_reset), .Y(n39) );
  CLKINVX1 U8 ( .A(n43), .Y(n16) );
  AOI221XL U9 ( .A0(N4), .A1(n52), .B0(N22), .B1(n51), .C0(n38), .Y(n43) );
  CLKINVX1 U10 ( .A(n44), .Y(n17) );
  AOI221XL U11 ( .A0(cell_score[8]), .A1(n52), .B0(N21), .B1(n51), .C0(n38), 
        .Y(n44) );
  CLKINVX1 U12 ( .A(n46), .Y(n33) );
  AOI221XL U13 ( .A0(cell_score[6]), .A1(n52), .B0(N19), .B1(n51), .C0(n38), 
        .Y(n46) );
  CLKINVX1 U14 ( .A(n47), .Y(n34) );
  AOI221XL U15 ( .A0(cell_score[5]), .A1(n52), .B0(N18), .B1(n51), .C0(n38), 
        .Y(n47) );
  CLKINVX1 U16 ( .A(n45), .Y(n18) );
  AOI221XL U17 ( .A0(cell_score[7]), .A1(n52), .B0(N20), .B1(n51), .C0(n38), 
        .Y(n45) );
  NOR3X1 U18 ( .A(N3), .B(hit_reg), .C(n3), .Y(n52) );
  NOR3X1 U19 ( .A(n3), .B(hit_reg), .C(n52), .Y(n51) );
  CLKINVX1 U20 ( .A(n49), .Y(n36) );
  AOI221XL U21 ( .A0(cell_score[3]), .A1(n52), .B0(N16), .B1(n51), .C0(n50), 
        .Y(n49) );
  CLKINVX1 U22 ( .A(n53), .Y(n37) );
  AOI221XL U23 ( .A0(cell_score[1]), .A1(n52), .B0(N14), .B1(n51), .C0(n50), 
        .Y(n53) );
  CLKINVX1 U24 ( .A(n42), .Y(n15) );
  AOI221XL U25 ( .A0(cell_score[0]), .A1(n52), .B0(n1), .B1(n51), .C0(n38), 
        .Y(n42) );
  AO22X1 U26 ( .A0(cell_score[2]), .A1(n52), .B0(N15), .B1(n51), .Y(n40) );
  CLKINVX1 U27 ( .A(n48), .Y(n35) );
  AOI221XL U28 ( .A0(cell_score[4]), .A1(n52), .B0(N17), .B1(n51), .C0(n38), 
        .Y(n48) );
  NAND2BX1 U29 ( .AN(cell_score[1]), .B(n1), .Y(n4) );
  OAI2BB1X1 U30 ( .A0N(cell_score[0]), .A1N(cell_score[1]), .B0(n4), .Y(N14)
         );
  OR2X1 U31 ( .A(n4), .B(cell_score[2]), .Y(n5) );
  OAI2BB1X1 U32 ( .A0N(n4), .A1N(cell_score[2]), .B0(n5), .Y(N15) );
  OR2X1 U33 ( .A(n5), .B(cell_score[3]), .Y(n6) );
  OAI2BB1X1 U34 ( .A0N(n5), .A1N(cell_score[3]), .B0(n6), .Y(N16) );
  OR2X1 U35 ( .A(n6), .B(cell_score[4]), .Y(n7) );
  OAI2BB1X1 U36 ( .A0N(n6), .A1N(cell_score[4]), .B0(n7), .Y(N17) );
  OR2X1 U37 ( .A(n7), .B(cell_score[5]), .Y(n8) );
  OAI2BB1X1 U38 ( .A0N(n7), .A1N(cell_score[5]), .B0(n8), .Y(N18) );
  NOR2X1 U39 ( .A(n8), .B(cell_score[6]), .Y(n9) );
  AO21X1 U40 ( .A0(n8), .A1(cell_score[6]), .B0(n9), .Y(N19) );
  NAND2X1 U41 ( .A(n9), .B(n2), .Y(n10) );
  OAI21XL U42 ( .A0(n9), .A1(n2), .B0(n10), .Y(N20) );
  XNOR2X1 U43 ( .A(cell_score[8]), .B(n10), .Y(N21) );
  NOR2X1 U44 ( .A(cell_score[8]), .B(n10), .Y(n11) );
  XOR2X1 U45 ( .A(N4), .B(n11), .Y(N22) );
  NOR2X1 U46 ( .A(cell_score[5]), .B(cell_score[4]), .Y(n14) );
  NOR3X1 U47 ( .A(cell_score[6]), .B(cell_score[8]), .C(cell_score[7]), .Y(n13) );
  NOR4X1 U48 ( .A(cell_score[3]), .B(cell_score[2]), .C(cell_score[1]), .D(
        cell_score[0]), .Y(n12) );
  AOI31X1 U49 ( .A0(n14), .A1(n13), .A2(n12), .B0(N4), .Y(N3) );
endmodule


module Mole_Cell_10 ( good_signal, good_mole, bad_signal, bad_mole, hit_reg, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_reg, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N3, N4, N14, N15, N16, N17, N18, N19, N20, N21, N22, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53;
  assign good_mole = N3;
  assign cell_score[9] = N4;
  assign bad_mole = N4;

  DFFRX1 \cell_score_reg[9]  ( .D(n16), .CK(clk), .RN(n39), .Q(N4) );
  DFFRX1 \cell_score_reg[8]  ( .D(n17), .CK(clk), .RN(n39), .Q(cell_score[8])
         );
  DFFRX1 \cell_score_reg[4]  ( .D(n35), .CK(clk), .RN(n39), .Q(cell_score[4])
         );
  DFFRX1 \cell_score_reg[5]  ( .D(n34), .CK(clk), .RN(n39), .Q(cell_score[5])
         );
  DFFRX1 \cell_score_reg[6]  ( .D(n33), .CK(clk), .RN(n39), .Q(cell_score[6])
         );
  DFFRX1 \cell_score_reg[7]  ( .D(n18), .CK(clk), .RN(n39), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[1]  ( .D(n37), .CK(clk), .RN(n39), .Q(cell_score[1])
         );
  DFFRX1 \cell_score_reg[3]  ( .D(n36), .CK(clk), .RN(n39), .Q(cell_score[3])
         );
  DFFRX1 \cell_score_reg[2]  ( .D(n40), .CK(clk), .RN(n39), .Q(cell_score[2])
         );
  DFFRX1 \cell_score_reg[0]  ( .D(n15), .CK(clk), .RN(n39), .Q(cell_score[0]), 
        .QN(n1) );
  OA21XL U3 ( .A0(bad_signal), .A1(good_signal), .B0(n3), .Y(n50) );
  CLKINVX1 U4 ( .A(n41), .Y(n38) );
  NAND3BX1 U5 ( .AN(good_signal), .B(n3), .C(bad_signal), .Y(n41) );
  CLKBUFX3 U6 ( .A(enable), .Y(n3) );
  CLKINVX1 U7 ( .A(game_reset), .Y(n39) );
  CLKINVX1 U8 ( .A(n44), .Y(n17) );
  AOI221XL U9 ( .A0(cell_score[8]), .A1(n52), .B0(N21), .B1(n51), .C0(n38), 
        .Y(n44) );
  CLKINVX1 U10 ( .A(n46), .Y(n33) );
  AOI221XL U11 ( .A0(cell_score[6]), .A1(n52), .B0(N19), .B1(n51), .C0(n38), 
        .Y(n46) );
  CLKINVX1 U12 ( .A(n43), .Y(n16) );
  AOI221XL U13 ( .A0(N4), .A1(n52), .B0(N22), .B1(n51), .C0(n38), .Y(n43) );
  CLKINVX1 U14 ( .A(n47), .Y(n34) );
  AOI221XL U15 ( .A0(cell_score[5]), .A1(n52), .B0(N18), .B1(n51), .C0(n38), 
        .Y(n47) );
  CLKINVX1 U16 ( .A(n45), .Y(n18) );
  AOI221XL U17 ( .A0(cell_score[7]), .A1(n52), .B0(N20), .B1(n51), .C0(n38), 
        .Y(n45) );
  NOR3X1 U18 ( .A(N3), .B(hit_reg), .C(n3), .Y(n52) );
  NOR3X1 U19 ( .A(n3), .B(hit_reg), .C(n52), .Y(n51) );
  CLKINVX1 U20 ( .A(n49), .Y(n36) );
  AOI221XL U21 ( .A0(cell_score[3]), .A1(n52), .B0(N16), .B1(n51), .C0(n50), 
        .Y(n49) );
  CLKINVX1 U22 ( .A(n53), .Y(n37) );
  AOI221XL U23 ( .A0(cell_score[1]), .A1(n52), .B0(N14), .B1(n51), .C0(n50), 
        .Y(n53) );
  CLKINVX1 U24 ( .A(n42), .Y(n15) );
  AOI221XL U25 ( .A0(cell_score[0]), .A1(n52), .B0(n1), .B1(n51), .C0(n38), 
        .Y(n42) );
  AO22X1 U26 ( .A0(cell_score[2]), .A1(n52), .B0(N15), .B1(n51), .Y(n40) );
  CLKINVX1 U27 ( .A(n48), .Y(n35) );
  AOI221XL U28 ( .A0(cell_score[4]), .A1(n52), .B0(N17), .B1(n51), .C0(n38), 
        .Y(n48) );
  NAND2BX1 U29 ( .AN(cell_score[1]), .B(n1), .Y(n4) );
  OAI2BB1X1 U30 ( .A0N(cell_score[0]), .A1N(cell_score[1]), .B0(n4), .Y(N14)
         );
  OR2X1 U31 ( .A(n4), .B(cell_score[2]), .Y(n5) );
  OAI2BB1X1 U32 ( .A0N(n4), .A1N(cell_score[2]), .B0(n5), .Y(N15) );
  OR2X1 U33 ( .A(n5), .B(cell_score[3]), .Y(n6) );
  OAI2BB1X1 U34 ( .A0N(n5), .A1N(cell_score[3]), .B0(n6), .Y(N16) );
  OR2X1 U35 ( .A(n6), .B(cell_score[4]), .Y(n7) );
  OAI2BB1X1 U36 ( .A0N(n6), .A1N(cell_score[4]), .B0(n7), .Y(N17) );
  OR2X1 U37 ( .A(n7), .B(cell_score[5]), .Y(n8) );
  OAI2BB1X1 U38 ( .A0N(n7), .A1N(cell_score[5]), .B0(n8), .Y(N18) );
  NOR2X1 U39 ( .A(n8), .B(cell_score[6]), .Y(n9) );
  AO21X1 U40 ( .A0(n8), .A1(cell_score[6]), .B0(n9), .Y(N19) );
  NAND2X1 U41 ( .A(n9), .B(n2), .Y(n10) );
  OAI21XL U42 ( .A0(n9), .A1(n2), .B0(n10), .Y(N20) );
  XNOR2X1 U43 ( .A(cell_score[8]), .B(n10), .Y(N21) );
  NOR2X1 U44 ( .A(cell_score[8]), .B(n10), .Y(n11) );
  XOR2X1 U45 ( .A(N4), .B(n11), .Y(N22) );
  NOR2X1 U46 ( .A(cell_score[5]), .B(cell_score[4]), .Y(n14) );
  NOR3X1 U47 ( .A(cell_score[6]), .B(cell_score[8]), .C(cell_score[7]), .Y(n13) );
  NOR4X1 U48 ( .A(cell_score[3]), .B(cell_score[2]), .C(cell_score[1]), .D(
        cell_score[0]), .Y(n12) );
  AOI31X1 U49 ( .A0(n14), .A1(n13), .A2(n12), .B0(N4), .Y(N3) );
endmodule


module Mole_Cell_9 ( good_signal, good_mole, bad_signal, bad_mole, hit_reg, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_reg, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N3, N4, N14, N15, N16, N17, N18, N19, N20, N21, N22, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53;
  assign good_mole = N3;
  assign cell_score[9] = N4;
  assign bad_mole = N4;

  DFFRX1 \cell_score_reg[9]  ( .D(n16), .CK(clk), .RN(n39), .Q(N4) );
  DFFRX1 \cell_score_reg[8]  ( .D(n17), .CK(clk), .RN(n39), .Q(cell_score[8])
         );
  DFFRX1 \cell_score_reg[4]  ( .D(n35), .CK(clk), .RN(n39), .Q(cell_score[4])
         );
  DFFRX1 \cell_score_reg[5]  ( .D(n34), .CK(clk), .RN(n39), .Q(cell_score[5])
         );
  DFFRX1 \cell_score_reg[6]  ( .D(n33), .CK(clk), .RN(n39), .Q(cell_score[6])
         );
  DFFRX1 \cell_score_reg[7]  ( .D(n18), .CK(clk), .RN(n39), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[1]  ( .D(n37), .CK(clk), .RN(n39), .Q(cell_score[1])
         );
  DFFRX1 \cell_score_reg[3]  ( .D(n36), .CK(clk), .RN(n39), .Q(cell_score[3])
         );
  DFFRX1 \cell_score_reg[2]  ( .D(n40), .CK(clk), .RN(n39), .Q(cell_score[2])
         );
  DFFRX1 \cell_score_reg[0]  ( .D(n15), .CK(clk), .RN(n39), .Q(cell_score[0]), 
        .QN(n1) );
  OA21XL U3 ( .A0(bad_signal), .A1(good_signal), .B0(n3), .Y(n50) );
  CLKINVX1 U4 ( .A(n41), .Y(n38) );
  NAND3BX1 U5 ( .AN(good_signal), .B(n3), .C(bad_signal), .Y(n41) );
  CLKBUFX3 U6 ( .A(enable), .Y(n3) );
  CLKINVX1 U7 ( .A(game_reset), .Y(n39) );
  CLKINVX1 U8 ( .A(n43), .Y(n16) );
  AOI221XL U9 ( .A0(N4), .A1(n52), .B0(N22), .B1(n51), .C0(n38), .Y(n43) );
  CLKINVX1 U10 ( .A(n44), .Y(n17) );
  AOI221XL U11 ( .A0(cell_score[8]), .A1(n52), .B0(N21), .B1(n51), .C0(n38), 
        .Y(n44) );
  CLKINVX1 U12 ( .A(n46), .Y(n33) );
  AOI221XL U13 ( .A0(cell_score[6]), .A1(n52), .B0(N19), .B1(n51), .C0(n38), 
        .Y(n46) );
  CLKINVX1 U14 ( .A(n47), .Y(n34) );
  AOI221XL U15 ( .A0(cell_score[5]), .A1(n52), .B0(N18), .B1(n51), .C0(n38), 
        .Y(n47) );
  CLKINVX1 U16 ( .A(n45), .Y(n18) );
  AOI221XL U17 ( .A0(cell_score[7]), .A1(n52), .B0(N20), .B1(n51), .C0(n38), 
        .Y(n45) );
  NOR3X1 U18 ( .A(N3), .B(hit_reg), .C(n3), .Y(n52) );
  NOR3X1 U19 ( .A(n3), .B(hit_reg), .C(n52), .Y(n51) );
  CLKINVX1 U20 ( .A(n49), .Y(n36) );
  AOI221XL U21 ( .A0(cell_score[3]), .A1(n52), .B0(N16), .B1(n51), .C0(n50), 
        .Y(n49) );
  CLKINVX1 U22 ( .A(n53), .Y(n37) );
  AOI221XL U23 ( .A0(cell_score[1]), .A1(n52), .B0(N14), .B1(n51), .C0(n50), 
        .Y(n53) );
  CLKINVX1 U24 ( .A(n42), .Y(n15) );
  AOI221XL U25 ( .A0(cell_score[0]), .A1(n52), .B0(n1), .B1(n51), .C0(n38), 
        .Y(n42) );
  AO22X1 U26 ( .A0(cell_score[2]), .A1(n52), .B0(N15), .B1(n51), .Y(n40) );
  CLKINVX1 U27 ( .A(n48), .Y(n35) );
  AOI221XL U28 ( .A0(cell_score[4]), .A1(n52), .B0(N17), .B1(n51), .C0(n38), 
        .Y(n48) );
  NAND2BX1 U29 ( .AN(cell_score[1]), .B(n1), .Y(n4) );
  OAI2BB1X1 U30 ( .A0N(cell_score[0]), .A1N(cell_score[1]), .B0(n4), .Y(N14)
         );
  OR2X1 U31 ( .A(n4), .B(cell_score[2]), .Y(n5) );
  OAI2BB1X1 U32 ( .A0N(n4), .A1N(cell_score[2]), .B0(n5), .Y(N15) );
  OR2X1 U33 ( .A(n5), .B(cell_score[3]), .Y(n6) );
  OAI2BB1X1 U34 ( .A0N(n5), .A1N(cell_score[3]), .B0(n6), .Y(N16) );
  OR2X1 U35 ( .A(n6), .B(cell_score[4]), .Y(n7) );
  OAI2BB1X1 U36 ( .A0N(n6), .A1N(cell_score[4]), .B0(n7), .Y(N17) );
  OR2X1 U37 ( .A(n7), .B(cell_score[5]), .Y(n8) );
  OAI2BB1X1 U38 ( .A0N(n7), .A1N(cell_score[5]), .B0(n8), .Y(N18) );
  NOR2X1 U39 ( .A(n8), .B(cell_score[6]), .Y(n9) );
  AO21X1 U40 ( .A0(n8), .A1(cell_score[6]), .B0(n9), .Y(N19) );
  NAND2X1 U41 ( .A(n9), .B(n2), .Y(n10) );
  OAI21XL U42 ( .A0(n9), .A1(n2), .B0(n10), .Y(N20) );
  XNOR2X1 U43 ( .A(cell_score[8]), .B(n10), .Y(N21) );
  NOR2X1 U44 ( .A(cell_score[8]), .B(n10), .Y(n11) );
  XOR2X1 U45 ( .A(N4), .B(n11), .Y(N22) );
  NOR2X1 U46 ( .A(cell_score[5]), .B(cell_score[4]), .Y(n14) );
  NOR3X1 U47 ( .A(cell_score[6]), .B(cell_score[8]), .C(cell_score[7]), .Y(n13) );
  NOR4X1 U48 ( .A(cell_score[3]), .B(cell_score[2]), .C(cell_score[1]), .D(
        cell_score[0]), .Y(n12) );
  AOI31X1 U49 ( .A0(n14), .A1(n13), .A2(n12), .B0(N4), .Y(N3) );
endmodule


module Mole_Cell_8 ( good_signal, good_mole, bad_signal, bad_mole, hit_reg, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_reg, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N3, N4, N14, N15, N16, N17, N18, N19, N20, N21, N22, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53;
  assign good_mole = N3;
  assign cell_score[9] = N4;
  assign bad_mole = N4;

  DFFRX1 \cell_score_reg[9]  ( .D(n16), .CK(clk), .RN(n39), .Q(N4) );
  DFFRX1 \cell_score_reg[8]  ( .D(n17), .CK(clk), .RN(n39), .Q(cell_score[8])
         );
  DFFRX1 \cell_score_reg[4]  ( .D(n35), .CK(clk), .RN(n39), .Q(cell_score[4])
         );
  DFFRX1 \cell_score_reg[5]  ( .D(n34), .CK(clk), .RN(n39), .Q(cell_score[5])
         );
  DFFRX1 \cell_score_reg[6]  ( .D(n33), .CK(clk), .RN(n39), .Q(cell_score[6])
         );
  DFFRX1 \cell_score_reg[7]  ( .D(n18), .CK(clk), .RN(n39), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[1]  ( .D(n37), .CK(clk), .RN(n39), .Q(cell_score[1])
         );
  DFFRX1 \cell_score_reg[3]  ( .D(n36), .CK(clk), .RN(n39), .Q(cell_score[3])
         );
  DFFRX1 \cell_score_reg[2]  ( .D(n40), .CK(clk), .RN(n39), .Q(cell_score[2])
         );
  DFFRX1 \cell_score_reg[0]  ( .D(n15), .CK(clk), .RN(n39), .Q(cell_score[0]), 
        .QN(n1) );
  OA21XL U3 ( .A0(bad_signal), .A1(good_signal), .B0(n3), .Y(n50) );
  CLKINVX1 U4 ( .A(n41), .Y(n38) );
  NAND3BX1 U5 ( .AN(good_signal), .B(n3), .C(bad_signal), .Y(n41) );
  CLKBUFX3 U6 ( .A(enable), .Y(n3) );
  CLKINVX1 U7 ( .A(game_reset), .Y(n39) );
  CLKINVX1 U8 ( .A(n44), .Y(n17) );
  AOI221XL U9 ( .A0(cell_score[8]), .A1(n52), .B0(N21), .B1(n51), .C0(n38), 
        .Y(n44) );
  CLKINVX1 U10 ( .A(n46), .Y(n33) );
  AOI221XL U11 ( .A0(cell_score[6]), .A1(n52), .B0(N19), .B1(n51), .C0(n38), 
        .Y(n46) );
  CLKINVX1 U12 ( .A(n43), .Y(n16) );
  AOI221XL U13 ( .A0(N4), .A1(n52), .B0(N22), .B1(n51), .C0(n38), .Y(n43) );
  CLKINVX1 U14 ( .A(n47), .Y(n34) );
  AOI221XL U15 ( .A0(cell_score[5]), .A1(n52), .B0(N18), .B1(n51), .C0(n38), 
        .Y(n47) );
  CLKINVX1 U16 ( .A(n45), .Y(n18) );
  AOI221XL U17 ( .A0(cell_score[7]), .A1(n52), .B0(N20), .B1(n51), .C0(n38), 
        .Y(n45) );
  NOR3X1 U18 ( .A(N3), .B(hit_reg), .C(n3), .Y(n52) );
  NOR3X1 U19 ( .A(n3), .B(hit_reg), .C(n52), .Y(n51) );
  CLKINVX1 U20 ( .A(n49), .Y(n36) );
  AOI221XL U21 ( .A0(cell_score[3]), .A1(n52), .B0(N16), .B1(n51), .C0(n50), 
        .Y(n49) );
  CLKINVX1 U22 ( .A(n53), .Y(n37) );
  AOI221XL U23 ( .A0(cell_score[1]), .A1(n52), .B0(N14), .B1(n51), .C0(n50), 
        .Y(n53) );
  CLKINVX1 U24 ( .A(n42), .Y(n15) );
  AOI221XL U25 ( .A0(cell_score[0]), .A1(n52), .B0(n1), .B1(n51), .C0(n38), 
        .Y(n42) );
  AO22X1 U26 ( .A0(cell_score[2]), .A1(n52), .B0(N15), .B1(n51), .Y(n40) );
  CLKINVX1 U27 ( .A(n48), .Y(n35) );
  AOI221XL U28 ( .A0(cell_score[4]), .A1(n52), .B0(N17), .B1(n51), .C0(n38), 
        .Y(n48) );
  NAND2BX1 U29 ( .AN(cell_score[1]), .B(n1), .Y(n4) );
  OAI2BB1X1 U30 ( .A0N(cell_score[0]), .A1N(cell_score[1]), .B0(n4), .Y(N14)
         );
  OR2X1 U31 ( .A(n4), .B(cell_score[2]), .Y(n5) );
  OAI2BB1X1 U32 ( .A0N(n4), .A1N(cell_score[2]), .B0(n5), .Y(N15) );
  OR2X1 U33 ( .A(n5), .B(cell_score[3]), .Y(n6) );
  OAI2BB1X1 U34 ( .A0N(n5), .A1N(cell_score[3]), .B0(n6), .Y(N16) );
  OR2X1 U35 ( .A(n6), .B(cell_score[4]), .Y(n7) );
  OAI2BB1X1 U36 ( .A0N(n6), .A1N(cell_score[4]), .B0(n7), .Y(N17) );
  OR2X1 U37 ( .A(n7), .B(cell_score[5]), .Y(n8) );
  OAI2BB1X1 U38 ( .A0N(n7), .A1N(cell_score[5]), .B0(n8), .Y(N18) );
  NOR2X1 U39 ( .A(n8), .B(cell_score[6]), .Y(n9) );
  AO21X1 U40 ( .A0(n8), .A1(cell_score[6]), .B0(n9), .Y(N19) );
  NAND2X1 U41 ( .A(n9), .B(n2), .Y(n10) );
  OAI21XL U42 ( .A0(n9), .A1(n2), .B0(n10), .Y(N20) );
  XNOR2X1 U43 ( .A(cell_score[8]), .B(n10), .Y(N21) );
  NOR2X1 U44 ( .A(cell_score[8]), .B(n10), .Y(n11) );
  XOR2X1 U45 ( .A(N4), .B(n11), .Y(N22) );
  NOR2X1 U46 ( .A(cell_score[5]), .B(cell_score[4]), .Y(n14) );
  NOR3X1 U47 ( .A(cell_score[6]), .B(cell_score[8]), .C(cell_score[7]), .Y(n13) );
  NOR4X1 U48 ( .A(cell_score[3]), .B(cell_score[2]), .C(cell_score[1]), .D(
        cell_score[0]), .Y(n12) );
  AOI31X1 U49 ( .A0(n14), .A1(n13), .A2(n12), .B0(N4), .Y(N3) );
endmodule


module Mole_Cell_7 ( good_signal, good_mole, bad_signal, bad_mole, hit_reg, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_reg, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N3, N4, N14, N15, N16, N17, N18, N19, N20, N21, N22, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53;
  assign good_mole = N3;
  assign cell_score[9] = N4;
  assign bad_mole = N4;

  DFFRX1 \cell_score_reg[9]  ( .D(n16), .CK(clk), .RN(n39), .Q(N4) );
  DFFRX1 \cell_score_reg[8]  ( .D(n17), .CK(clk), .RN(n39), .Q(cell_score[8])
         );
  DFFRX1 \cell_score_reg[4]  ( .D(n35), .CK(clk), .RN(n39), .Q(cell_score[4])
         );
  DFFRX1 \cell_score_reg[5]  ( .D(n34), .CK(clk), .RN(n39), .Q(cell_score[5])
         );
  DFFRX1 \cell_score_reg[6]  ( .D(n33), .CK(clk), .RN(n39), .Q(cell_score[6])
         );
  DFFRX1 \cell_score_reg[7]  ( .D(n18), .CK(clk), .RN(n39), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[1]  ( .D(n37), .CK(clk), .RN(n39), .Q(cell_score[1])
         );
  DFFRX1 \cell_score_reg[3]  ( .D(n36), .CK(clk), .RN(n39), .Q(cell_score[3])
         );
  DFFRX1 \cell_score_reg[2]  ( .D(n40), .CK(clk), .RN(n39), .Q(cell_score[2])
         );
  DFFRX1 \cell_score_reg[0]  ( .D(n15), .CK(clk), .RN(n39), .Q(cell_score[0]), 
        .QN(n1) );
  OA21XL U3 ( .A0(bad_signal), .A1(good_signal), .B0(n3), .Y(n50) );
  CLKINVX1 U4 ( .A(n41), .Y(n38) );
  NAND3BX1 U5 ( .AN(good_signal), .B(n3), .C(bad_signal), .Y(n41) );
  CLKBUFX3 U6 ( .A(enable), .Y(n3) );
  CLKINVX1 U7 ( .A(game_reset), .Y(n39) );
  CLKINVX1 U8 ( .A(n44), .Y(n17) );
  AOI221XL U9 ( .A0(cell_score[8]), .A1(n52), .B0(N21), .B1(n51), .C0(n38), 
        .Y(n44) );
  CLKINVX1 U10 ( .A(n46), .Y(n33) );
  AOI221XL U11 ( .A0(cell_score[6]), .A1(n52), .B0(N19), .B1(n51), .C0(n38), 
        .Y(n46) );
  CLKINVX1 U12 ( .A(n43), .Y(n16) );
  AOI221XL U13 ( .A0(N4), .A1(n52), .B0(N22), .B1(n51), .C0(n38), .Y(n43) );
  CLKINVX1 U14 ( .A(n47), .Y(n34) );
  AOI221XL U15 ( .A0(cell_score[5]), .A1(n52), .B0(N18), .B1(n51), .C0(n38), 
        .Y(n47) );
  CLKINVX1 U16 ( .A(n45), .Y(n18) );
  AOI221XL U17 ( .A0(cell_score[7]), .A1(n52), .B0(N20), .B1(n51), .C0(n38), 
        .Y(n45) );
  NOR3X1 U18 ( .A(N3), .B(hit_reg), .C(n3), .Y(n52) );
  NOR3X1 U19 ( .A(n3), .B(hit_reg), .C(n52), .Y(n51) );
  CLKINVX1 U20 ( .A(n49), .Y(n36) );
  AOI221XL U21 ( .A0(cell_score[3]), .A1(n52), .B0(N16), .B1(n51), .C0(n50), 
        .Y(n49) );
  CLKINVX1 U22 ( .A(n53), .Y(n37) );
  AOI221XL U23 ( .A0(cell_score[1]), .A1(n52), .B0(N14), .B1(n51), .C0(n50), 
        .Y(n53) );
  CLKINVX1 U24 ( .A(n42), .Y(n15) );
  AOI221XL U25 ( .A0(cell_score[0]), .A1(n52), .B0(n1), .B1(n51), .C0(n38), 
        .Y(n42) );
  AO22X1 U26 ( .A0(cell_score[2]), .A1(n52), .B0(N15), .B1(n51), .Y(n40) );
  CLKINVX1 U27 ( .A(n48), .Y(n35) );
  AOI221XL U28 ( .A0(cell_score[4]), .A1(n52), .B0(N17), .B1(n51), .C0(n38), 
        .Y(n48) );
  NAND2BX1 U29 ( .AN(cell_score[1]), .B(n1), .Y(n4) );
  OAI2BB1X1 U30 ( .A0N(cell_score[0]), .A1N(cell_score[1]), .B0(n4), .Y(N14)
         );
  OR2X1 U31 ( .A(n4), .B(cell_score[2]), .Y(n5) );
  OAI2BB1X1 U32 ( .A0N(n4), .A1N(cell_score[2]), .B0(n5), .Y(N15) );
  OR2X1 U33 ( .A(n5), .B(cell_score[3]), .Y(n6) );
  OAI2BB1X1 U34 ( .A0N(n5), .A1N(cell_score[3]), .B0(n6), .Y(N16) );
  OR2X1 U35 ( .A(n6), .B(cell_score[4]), .Y(n7) );
  OAI2BB1X1 U36 ( .A0N(n6), .A1N(cell_score[4]), .B0(n7), .Y(N17) );
  OR2X1 U37 ( .A(n7), .B(cell_score[5]), .Y(n8) );
  OAI2BB1X1 U38 ( .A0N(n7), .A1N(cell_score[5]), .B0(n8), .Y(N18) );
  NOR2X1 U39 ( .A(n8), .B(cell_score[6]), .Y(n9) );
  AO21X1 U40 ( .A0(n8), .A1(cell_score[6]), .B0(n9), .Y(N19) );
  NAND2X1 U41 ( .A(n9), .B(n2), .Y(n10) );
  OAI21XL U42 ( .A0(n9), .A1(n2), .B0(n10), .Y(N20) );
  XNOR2X1 U43 ( .A(cell_score[8]), .B(n10), .Y(N21) );
  NOR2X1 U44 ( .A(cell_score[8]), .B(n10), .Y(n11) );
  XOR2X1 U45 ( .A(N4), .B(n11), .Y(N22) );
  NOR2X1 U46 ( .A(cell_score[5]), .B(cell_score[4]), .Y(n14) );
  NOR3X1 U47 ( .A(cell_score[6]), .B(cell_score[8]), .C(cell_score[7]), .Y(n13) );
  NOR4X1 U48 ( .A(cell_score[3]), .B(cell_score[2]), .C(cell_score[1]), .D(
        cell_score[0]), .Y(n12) );
  AOI31X1 U49 ( .A0(n14), .A1(n13), .A2(n12), .B0(N4), .Y(N3) );
endmodule


module Mole_Cell_6 ( good_signal, good_mole, bad_signal, bad_mole, hit_reg, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_reg, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N3, N4, N14, N15, N16, N17, N18, N19, N20, N21, N22, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53;
  assign good_mole = N3;
  assign cell_score[9] = N4;
  assign bad_mole = N4;

  DFFRX1 \cell_score_reg[9]  ( .D(n16), .CK(clk), .RN(n39), .Q(N4) );
  DFFRX1 \cell_score_reg[8]  ( .D(n17), .CK(clk), .RN(n39), .Q(cell_score[8])
         );
  DFFRX1 \cell_score_reg[4]  ( .D(n35), .CK(clk), .RN(n39), .Q(cell_score[4])
         );
  DFFRX1 \cell_score_reg[5]  ( .D(n34), .CK(clk), .RN(n39), .Q(cell_score[5])
         );
  DFFRX1 \cell_score_reg[6]  ( .D(n33), .CK(clk), .RN(n39), .Q(cell_score[6])
         );
  DFFRX1 \cell_score_reg[7]  ( .D(n18), .CK(clk), .RN(n39), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[1]  ( .D(n37), .CK(clk), .RN(n39), .Q(cell_score[1])
         );
  DFFRX1 \cell_score_reg[3]  ( .D(n36), .CK(clk), .RN(n39), .Q(cell_score[3])
         );
  DFFRX1 \cell_score_reg[2]  ( .D(n40), .CK(clk), .RN(n39), .Q(cell_score[2])
         );
  DFFRX1 \cell_score_reg[0]  ( .D(n15), .CK(clk), .RN(n39), .Q(cell_score[0]), 
        .QN(n1) );
  OA21XL U3 ( .A0(bad_signal), .A1(good_signal), .B0(n3), .Y(n50) );
  CLKINVX1 U4 ( .A(n41), .Y(n38) );
  NAND3BX1 U5 ( .AN(good_signal), .B(n3), .C(bad_signal), .Y(n41) );
  CLKBUFX3 U6 ( .A(enable), .Y(n3) );
  CLKINVX1 U7 ( .A(game_reset), .Y(n39) );
  CLKINVX1 U8 ( .A(n44), .Y(n17) );
  AOI221XL U9 ( .A0(cell_score[8]), .A1(n52), .B0(N21), .B1(n51), .C0(n38), 
        .Y(n44) );
  CLKINVX1 U10 ( .A(n46), .Y(n33) );
  AOI221XL U11 ( .A0(cell_score[6]), .A1(n52), .B0(N19), .B1(n51), .C0(n38), 
        .Y(n46) );
  CLKINVX1 U12 ( .A(n43), .Y(n16) );
  AOI221XL U13 ( .A0(N4), .A1(n52), .B0(N22), .B1(n51), .C0(n38), .Y(n43) );
  CLKINVX1 U14 ( .A(n47), .Y(n34) );
  AOI221XL U15 ( .A0(cell_score[5]), .A1(n52), .B0(N18), .B1(n51), .C0(n38), 
        .Y(n47) );
  CLKINVX1 U16 ( .A(n45), .Y(n18) );
  AOI221XL U17 ( .A0(cell_score[7]), .A1(n52), .B0(N20), .B1(n51), .C0(n38), 
        .Y(n45) );
  NOR3X1 U18 ( .A(N3), .B(hit_reg), .C(n3), .Y(n52) );
  NOR3X1 U19 ( .A(n3), .B(hit_reg), .C(n52), .Y(n51) );
  CLKINVX1 U20 ( .A(n49), .Y(n36) );
  AOI221XL U21 ( .A0(cell_score[3]), .A1(n52), .B0(N16), .B1(n51), .C0(n50), 
        .Y(n49) );
  CLKINVX1 U22 ( .A(n53), .Y(n37) );
  AOI221XL U23 ( .A0(cell_score[1]), .A1(n52), .B0(N14), .B1(n51), .C0(n50), 
        .Y(n53) );
  CLKINVX1 U24 ( .A(n42), .Y(n15) );
  AOI221XL U25 ( .A0(cell_score[0]), .A1(n52), .B0(n1), .B1(n51), .C0(n38), 
        .Y(n42) );
  AO22X1 U26 ( .A0(cell_score[2]), .A1(n52), .B0(N15), .B1(n51), .Y(n40) );
  CLKINVX1 U27 ( .A(n48), .Y(n35) );
  AOI221XL U28 ( .A0(cell_score[4]), .A1(n52), .B0(N17), .B1(n51), .C0(n38), 
        .Y(n48) );
  NAND2BX1 U29 ( .AN(cell_score[1]), .B(n1), .Y(n4) );
  OAI2BB1X1 U30 ( .A0N(cell_score[0]), .A1N(cell_score[1]), .B0(n4), .Y(N14)
         );
  OR2X1 U31 ( .A(n4), .B(cell_score[2]), .Y(n5) );
  OAI2BB1X1 U32 ( .A0N(n4), .A1N(cell_score[2]), .B0(n5), .Y(N15) );
  OR2X1 U33 ( .A(n5), .B(cell_score[3]), .Y(n6) );
  OAI2BB1X1 U34 ( .A0N(n5), .A1N(cell_score[3]), .B0(n6), .Y(N16) );
  OR2X1 U35 ( .A(n6), .B(cell_score[4]), .Y(n7) );
  OAI2BB1X1 U36 ( .A0N(n6), .A1N(cell_score[4]), .B0(n7), .Y(N17) );
  OR2X1 U37 ( .A(n7), .B(cell_score[5]), .Y(n8) );
  OAI2BB1X1 U38 ( .A0N(n7), .A1N(cell_score[5]), .B0(n8), .Y(N18) );
  NOR2X1 U39 ( .A(n8), .B(cell_score[6]), .Y(n9) );
  AO21X1 U40 ( .A0(n8), .A1(cell_score[6]), .B0(n9), .Y(N19) );
  NAND2X1 U41 ( .A(n9), .B(n2), .Y(n10) );
  OAI21XL U42 ( .A0(n9), .A1(n2), .B0(n10), .Y(N20) );
  XNOR2X1 U43 ( .A(cell_score[8]), .B(n10), .Y(N21) );
  NOR2X1 U44 ( .A(cell_score[8]), .B(n10), .Y(n11) );
  XOR2X1 U45 ( .A(N4), .B(n11), .Y(N22) );
  NOR2X1 U46 ( .A(cell_score[5]), .B(cell_score[4]), .Y(n14) );
  NOR3X1 U47 ( .A(cell_score[6]), .B(cell_score[8]), .C(cell_score[7]), .Y(n13) );
  NOR4X1 U48 ( .A(cell_score[3]), .B(cell_score[2]), .C(cell_score[1]), .D(
        cell_score[0]), .Y(n12) );
  AOI31X1 U49 ( .A0(n14), .A1(n13), .A2(n12), .B0(N4), .Y(N3) );
endmodule


module Mole_Cell_5 ( good_signal, good_mole, bad_signal, bad_mole, hit_reg, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_reg, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N3, N4, N14, N15, N16, N17, N18, N19, N20, N21, N22, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53;
  assign good_mole = N3;
  assign cell_score[9] = N4;
  assign bad_mole = N4;

  DFFRX1 \cell_score_reg[9]  ( .D(n16), .CK(clk), .RN(n39), .Q(N4) );
  DFFRX1 \cell_score_reg[8]  ( .D(n17), .CK(clk), .RN(n39), .Q(cell_score[8])
         );
  DFFRX1 \cell_score_reg[4]  ( .D(n35), .CK(clk), .RN(n39), .Q(cell_score[4])
         );
  DFFRX1 \cell_score_reg[5]  ( .D(n34), .CK(clk), .RN(n39), .Q(cell_score[5])
         );
  DFFRX1 \cell_score_reg[6]  ( .D(n33), .CK(clk), .RN(n39), .Q(cell_score[6])
         );
  DFFRX1 \cell_score_reg[7]  ( .D(n18), .CK(clk), .RN(n39), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[1]  ( .D(n37), .CK(clk), .RN(n39), .Q(cell_score[1])
         );
  DFFRX1 \cell_score_reg[3]  ( .D(n36), .CK(clk), .RN(n39), .Q(cell_score[3])
         );
  DFFRX1 \cell_score_reg[2]  ( .D(n40), .CK(clk), .RN(n39), .Q(cell_score[2])
         );
  DFFRX1 \cell_score_reg[0]  ( .D(n15), .CK(clk), .RN(n39), .Q(cell_score[0]), 
        .QN(n1) );
  OA21XL U3 ( .A0(bad_signal), .A1(good_signal), .B0(n3), .Y(n50) );
  CLKINVX1 U4 ( .A(n41), .Y(n38) );
  NAND3BX1 U5 ( .AN(good_signal), .B(n3), .C(bad_signal), .Y(n41) );
  CLKBUFX3 U6 ( .A(enable), .Y(n3) );
  CLKINVX1 U7 ( .A(game_reset), .Y(n39) );
  CLKINVX1 U8 ( .A(n44), .Y(n17) );
  AOI221XL U9 ( .A0(cell_score[8]), .A1(n52), .B0(N21), .B1(n51), .C0(n38), 
        .Y(n44) );
  CLKINVX1 U10 ( .A(n46), .Y(n33) );
  AOI221XL U11 ( .A0(cell_score[6]), .A1(n52), .B0(N19), .B1(n51), .C0(n38), 
        .Y(n46) );
  CLKINVX1 U12 ( .A(n43), .Y(n16) );
  AOI221XL U13 ( .A0(N4), .A1(n52), .B0(N22), .B1(n51), .C0(n38), .Y(n43) );
  CLKINVX1 U14 ( .A(n47), .Y(n34) );
  AOI221XL U15 ( .A0(cell_score[5]), .A1(n52), .B0(N18), .B1(n51), .C0(n38), 
        .Y(n47) );
  CLKINVX1 U16 ( .A(n45), .Y(n18) );
  AOI221XL U17 ( .A0(cell_score[7]), .A1(n52), .B0(N20), .B1(n51), .C0(n38), 
        .Y(n45) );
  NOR3X1 U18 ( .A(N3), .B(hit_reg), .C(n3), .Y(n52) );
  NOR3X1 U19 ( .A(n3), .B(hit_reg), .C(n52), .Y(n51) );
  CLKINVX1 U20 ( .A(n49), .Y(n36) );
  AOI221XL U21 ( .A0(cell_score[3]), .A1(n52), .B0(N16), .B1(n51), .C0(n50), 
        .Y(n49) );
  CLKINVX1 U22 ( .A(n53), .Y(n37) );
  AOI221XL U23 ( .A0(cell_score[1]), .A1(n52), .B0(N14), .B1(n51), .C0(n50), 
        .Y(n53) );
  CLKINVX1 U24 ( .A(n42), .Y(n15) );
  AOI221XL U25 ( .A0(cell_score[0]), .A1(n52), .B0(n1), .B1(n51), .C0(n38), 
        .Y(n42) );
  AO22X1 U26 ( .A0(cell_score[2]), .A1(n52), .B0(N15), .B1(n51), .Y(n40) );
  CLKINVX1 U27 ( .A(n48), .Y(n35) );
  AOI221XL U28 ( .A0(cell_score[4]), .A1(n52), .B0(N17), .B1(n51), .C0(n38), 
        .Y(n48) );
  NAND2BX1 U29 ( .AN(cell_score[1]), .B(n1), .Y(n4) );
  OAI2BB1X1 U30 ( .A0N(cell_score[0]), .A1N(cell_score[1]), .B0(n4), .Y(N14)
         );
  OR2X1 U31 ( .A(n4), .B(cell_score[2]), .Y(n5) );
  OAI2BB1X1 U32 ( .A0N(n4), .A1N(cell_score[2]), .B0(n5), .Y(N15) );
  OR2X1 U33 ( .A(n5), .B(cell_score[3]), .Y(n6) );
  OAI2BB1X1 U34 ( .A0N(n5), .A1N(cell_score[3]), .B0(n6), .Y(N16) );
  OR2X1 U35 ( .A(n6), .B(cell_score[4]), .Y(n7) );
  OAI2BB1X1 U36 ( .A0N(n6), .A1N(cell_score[4]), .B0(n7), .Y(N17) );
  OR2X1 U37 ( .A(n7), .B(cell_score[5]), .Y(n8) );
  OAI2BB1X1 U38 ( .A0N(n7), .A1N(cell_score[5]), .B0(n8), .Y(N18) );
  NOR2X1 U39 ( .A(n8), .B(cell_score[6]), .Y(n9) );
  AO21X1 U40 ( .A0(n8), .A1(cell_score[6]), .B0(n9), .Y(N19) );
  NAND2X1 U41 ( .A(n9), .B(n2), .Y(n10) );
  OAI21XL U42 ( .A0(n9), .A1(n2), .B0(n10), .Y(N20) );
  XNOR2X1 U43 ( .A(cell_score[8]), .B(n10), .Y(N21) );
  NOR2X1 U44 ( .A(cell_score[8]), .B(n10), .Y(n11) );
  XOR2X1 U45 ( .A(N4), .B(n11), .Y(N22) );
  NOR2X1 U46 ( .A(cell_score[5]), .B(cell_score[4]), .Y(n14) );
  NOR3X1 U47 ( .A(cell_score[6]), .B(cell_score[8]), .C(cell_score[7]), .Y(n13) );
  NOR4X1 U48 ( .A(cell_score[3]), .B(cell_score[2]), .C(cell_score[1]), .D(
        cell_score[0]), .Y(n12) );
  AOI31X1 U49 ( .A0(n14), .A1(n13), .A2(n12), .B0(N4), .Y(N3) );
endmodule


module Mole_Cell_4 ( good_signal, good_mole, bad_signal, bad_mole, hit_reg, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_reg, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N3, N4, N14, N15, N16, N17, N18, N19, N20, N21, N22, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53;
  assign good_mole = N3;
  assign cell_score[9] = N4;
  assign bad_mole = N4;

  DFFRX1 \cell_score_reg[9]  ( .D(n16), .CK(clk), .RN(n39), .Q(N4) );
  DFFRX1 \cell_score_reg[8]  ( .D(n17), .CK(clk), .RN(n39), .Q(cell_score[8])
         );
  DFFRX1 \cell_score_reg[4]  ( .D(n35), .CK(clk), .RN(n39), .Q(cell_score[4])
         );
  DFFRX1 \cell_score_reg[5]  ( .D(n34), .CK(clk), .RN(n39), .Q(cell_score[5])
         );
  DFFRX1 \cell_score_reg[6]  ( .D(n33), .CK(clk), .RN(n39), .Q(cell_score[6])
         );
  DFFRX1 \cell_score_reg[7]  ( .D(n18), .CK(clk), .RN(n39), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[1]  ( .D(n37), .CK(clk), .RN(n39), .Q(cell_score[1])
         );
  DFFRX1 \cell_score_reg[3]  ( .D(n36), .CK(clk), .RN(n39), .Q(cell_score[3])
         );
  DFFRX1 \cell_score_reg[2]  ( .D(n40), .CK(clk), .RN(n39), .Q(cell_score[2])
         );
  DFFRX1 \cell_score_reg[0]  ( .D(n15), .CK(clk), .RN(n39), .Q(cell_score[0]), 
        .QN(n1) );
  OA21XL U3 ( .A0(bad_signal), .A1(good_signal), .B0(n3), .Y(n50) );
  CLKINVX1 U4 ( .A(n41), .Y(n38) );
  NAND3BX1 U5 ( .AN(good_signal), .B(n3), .C(bad_signal), .Y(n41) );
  CLKBUFX3 U6 ( .A(enable), .Y(n3) );
  CLKINVX1 U7 ( .A(game_reset), .Y(n39) );
  CLKINVX1 U8 ( .A(n43), .Y(n16) );
  AOI221XL U9 ( .A0(N4), .A1(n52), .B0(N22), .B1(n51), .C0(n38), .Y(n43) );
  CLKINVX1 U10 ( .A(n44), .Y(n17) );
  AOI221XL U11 ( .A0(cell_score[8]), .A1(n52), .B0(N21), .B1(n51), .C0(n38), 
        .Y(n44) );
  CLKINVX1 U12 ( .A(n46), .Y(n33) );
  AOI221XL U13 ( .A0(cell_score[6]), .A1(n52), .B0(N19), .B1(n51), .C0(n38), 
        .Y(n46) );
  CLKINVX1 U14 ( .A(n47), .Y(n34) );
  AOI221XL U15 ( .A0(cell_score[5]), .A1(n52), .B0(N18), .B1(n51), .C0(n38), 
        .Y(n47) );
  CLKINVX1 U16 ( .A(n45), .Y(n18) );
  AOI221XL U17 ( .A0(cell_score[7]), .A1(n52), .B0(N20), .B1(n51), .C0(n38), 
        .Y(n45) );
  NOR3X1 U18 ( .A(N3), .B(hit_reg), .C(n3), .Y(n52) );
  NOR3X1 U19 ( .A(n3), .B(hit_reg), .C(n52), .Y(n51) );
  CLKINVX1 U20 ( .A(n49), .Y(n36) );
  AOI221XL U21 ( .A0(cell_score[3]), .A1(n52), .B0(N16), .B1(n51), .C0(n50), 
        .Y(n49) );
  CLKINVX1 U22 ( .A(n53), .Y(n37) );
  AOI221XL U23 ( .A0(cell_score[1]), .A1(n52), .B0(N14), .B1(n51), .C0(n50), 
        .Y(n53) );
  CLKINVX1 U24 ( .A(n42), .Y(n15) );
  AOI221XL U25 ( .A0(cell_score[0]), .A1(n52), .B0(n1), .B1(n51), .C0(n38), 
        .Y(n42) );
  AO22X1 U26 ( .A0(cell_score[2]), .A1(n52), .B0(N15), .B1(n51), .Y(n40) );
  CLKINVX1 U27 ( .A(n48), .Y(n35) );
  AOI221XL U28 ( .A0(cell_score[4]), .A1(n52), .B0(N17), .B1(n51), .C0(n38), 
        .Y(n48) );
  NAND2BX1 U29 ( .AN(cell_score[1]), .B(n1), .Y(n4) );
  OAI2BB1X1 U30 ( .A0N(cell_score[0]), .A1N(cell_score[1]), .B0(n4), .Y(N14)
         );
  OR2X1 U31 ( .A(n4), .B(cell_score[2]), .Y(n5) );
  OAI2BB1X1 U32 ( .A0N(n4), .A1N(cell_score[2]), .B0(n5), .Y(N15) );
  OR2X1 U33 ( .A(n5), .B(cell_score[3]), .Y(n6) );
  OAI2BB1X1 U34 ( .A0N(n5), .A1N(cell_score[3]), .B0(n6), .Y(N16) );
  OR2X1 U35 ( .A(n6), .B(cell_score[4]), .Y(n7) );
  OAI2BB1X1 U36 ( .A0N(n6), .A1N(cell_score[4]), .B0(n7), .Y(N17) );
  OR2X1 U37 ( .A(n7), .B(cell_score[5]), .Y(n8) );
  OAI2BB1X1 U38 ( .A0N(n7), .A1N(cell_score[5]), .B0(n8), .Y(N18) );
  NOR2X1 U39 ( .A(n8), .B(cell_score[6]), .Y(n9) );
  AO21X1 U40 ( .A0(n8), .A1(cell_score[6]), .B0(n9), .Y(N19) );
  NAND2X1 U41 ( .A(n9), .B(n2), .Y(n10) );
  OAI21XL U42 ( .A0(n9), .A1(n2), .B0(n10), .Y(N20) );
  XNOR2X1 U43 ( .A(cell_score[8]), .B(n10), .Y(N21) );
  NOR2X1 U44 ( .A(cell_score[8]), .B(n10), .Y(n11) );
  XOR2X1 U45 ( .A(N4), .B(n11), .Y(N22) );
  NOR2X1 U46 ( .A(cell_score[5]), .B(cell_score[4]), .Y(n14) );
  NOR3X1 U47 ( .A(cell_score[6]), .B(cell_score[8]), .C(cell_score[7]), .Y(n13) );
  NOR4X1 U48 ( .A(cell_score[3]), .B(cell_score[2]), .C(cell_score[1]), .D(
        cell_score[0]), .Y(n12) );
  AOI31X1 U49 ( .A0(n14), .A1(n13), .A2(n12), .B0(N4), .Y(N3) );
endmodule


module Mole_Cell_3 ( good_signal, good_mole, bad_signal, bad_mole, hit_reg, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_reg, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N3, N4, N14, N15, N16, N17, N18, N19, N20, N21, N22, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53;
  assign good_mole = N3;
  assign cell_score[9] = N4;
  assign bad_mole = N4;

  DFFRX1 \cell_score_reg[9]  ( .D(n16), .CK(clk), .RN(n39), .Q(N4) );
  DFFRX1 \cell_score_reg[8]  ( .D(n17), .CK(clk), .RN(n39), .Q(cell_score[8])
         );
  DFFRX1 \cell_score_reg[4]  ( .D(n35), .CK(clk), .RN(n39), .Q(cell_score[4])
         );
  DFFRX1 \cell_score_reg[5]  ( .D(n34), .CK(clk), .RN(n39), .Q(cell_score[5])
         );
  DFFRX1 \cell_score_reg[6]  ( .D(n33), .CK(clk), .RN(n39), .Q(cell_score[6])
         );
  DFFRX1 \cell_score_reg[7]  ( .D(n18), .CK(clk), .RN(n39), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[1]  ( .D(n37), .CK(clk), .RN(n39), .Q(cell_score[1])
         );
  DFFRX1 \cell_score_reg[3]  ( .D(n36), .CK(clk), .RN(n39), .Q(cell_score[3])
         );
  DFFRX1 \cell_score_reg[2]  ( .D(n40), .CK(clk), .RN(n39), .Q(cell_score[2])
         );
  DFFRX1 \cell_score_reg[0]  ( .D(n15), .CK(clk), .RN(n39), .Q(cell_score[0]), 
        .QN(n1) );
  OA21XL U3 ( .A0(bad_signal), .A1(good_signal), .B0(n3), .Y(n50) );
  CLKINVX1 U4 ( .A(n41), .Y(n38) );
  NAND3BX1 U5 ( .AN(good_signal), .B(n3), .C(bad_signal), .Y(n41) );
  CLKBUFX3 U6 ( .A(enable), .Y(n3) );
  CLKINVX1 U7 ( .A(game_reset), .Y(n39) );
  CLKINVX1 U8 ( .A(n44), .Y(n17) );
  AOI221XL U9 ( .A0(cell_score[8]), .A1(n52), .B0(N21), .B1(n51), .C0(n38), 
        .Y(n44) );
  CLKINVX1 U10 ( .A(n46), .Y(n33) );
  AOI221XL U11 ( .A0(cell_score[6]), .A1(n52), .B0(N19), .B1(n51), .C0(n38), 
        .Y(n46) );
  CLKINVX1 U12 ( .A(n43), .Y(n16) );
  AOI221XL U13 ( .A0(N4), .A1(n52), .B0(N22), .B1(n51), .C0(n38), .Y(n43) );
  CLKINVX1 U14 ( .A(n47), .Y(n34) );
  AOI221XL U15 ( .A0(cell_score[5]), .A1(n52), .B0(N18), .B1(n51), .C0(n38), 
        .Y(n47) );
  CLKINVX1 U16 ( .A(n45), .Y(n18) );
  AOI221XL U17 ( .A0(cell_score[7]), .A1(n52), .B0(N20), .B1(n51), .C0(n38), 
        .Y(n45) );
  NOR3X1 U18 ( .A(N3), .B(hit_reg), .C(n3), .Y(n52) );
  NOR3X1 U19 ( .A(n3), .B(hit_reg), .C(n52), .Y(n51) );
  CLKINVX1 U20 ( .A(n49), .Y(n36) );
  AOI221XL U21 ( .A0(cell_score[3]), .A1(n52), .B0(N16), .B1(n51), .C0(n50), 
        .Y(n49) );
  CLKINVX1 U22 ( .A(n53), .Y(n37) );
  AOI221XL U23 ( .A0(cell_score[1]), .A1(n52), .B0(N14), .B1(n51), .C0(n50), 
        .Y(n53) );
  CLKINVX1 U24 ( .A(n42), .Y(n15) );
  AOI221XL U25 ( .A0(cell_score[0]), .A1(n52), .B0(n1), .B1(n51), .C0(n38), 
        .Y(n42) );
  AO22X1 U26 ( .A0(cell_score[2]), .A1(n52), .B0(N15), .B1(n51), .Y(n40) );
  CLKINVX1 U27 ( .A(n48), .Y(n35) );
  AOI221XL U28 ( .A0(cell_score[4]), .A1(n52), .B0(N17), .B1(n51), .C0(n38), 
        .Y(n48) );
  NAND2BX1 U29 ( .AN(cell_score[1]), .B(n1), .Y(n4) );
  OAI2BB1X1 U30 ( .A0N(cell_score[0]), .A1N(cell_score[1]), .B0(n4), .Y(N14)
         );
  OR2X1 U31 ( .A(n4), .B(cell_score[2]), .Y(n5) );
  OAI2BB1X1 U32 ( .A0N(n4), .A1N(cell_score[2]), .B0(n5), .Y(N15) );
  OR2X1 U33 ( .A(n5), .B(cell_score[3]), .Y(n6) );
  OAI2BB1X1 U34 ( .A0N(n5), .A1N(cell_score[3]), .B0(n6), .Y(N16) );
  OR2X1 U35 ( .A(n6), .B(cell_score[4]), .Y(n7) );
  OAI2BB1X1 U36 ( .A0N(n6), .A1N(cell_score[4]), .B0(n7), .Y(N17) );
  OR2X1 U37 ( .A(n7), .B(cell_score[5]), .Y(n8) );
  OAI2BB1X1 U38 ( .A0N(n7), .A1N(cell_score[5]), .B0(n8), .Y(N18) );
  NOR2X1 U39 ( .A(n8), .B(cell_score[6]), .Y(n9) );
  AO21X1 U40 ( .A0(n8), .A1(cell_score[6]), .B0(n9), .Y(N19) );
  NAND2X1 U41 ( .A(n9), .B(n2), .Y(n10) );
  OAI21XL U42 ( .A0(n9), .A1(n2), .B0(n10), .Y(N20) );
  XNOR2X1 U43 ( .A(cell_score[8]), .B(n10), .Y(N21) );
  NOR2X1 U44 ( .A(cell_score[8]), .B(n10), .Y(n11) );
  XOR2X1 U45 ( .A(N4), .B(n11), .Y(N22) );
  NOR2X1 U46 ( .A(cell_score[5]), .B(cell_score[4]), .Y(n14) );
  NOR3X1 U47 ( .A(cell_score[6]), .B(cell_score[8]), .C(cell_score[7]), .Y(n13) );
  NOR4X1 U48 ( .A(cell_score[3]), .B(cell_score[2]), .C(cell_score[1]), .D(
        cell_score[0]), .Y(n12) );
  AOI31X1 U49 ( .A0(n14), .A1(n13), .A2(n12), .B0(N4), .Y(N3) );
endmodule


module Mole_Cell_2 ( good_signal, good_mole, bad_signal, bad_mole, hit_reg, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_reg, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N3, N4, N14, N15, N16, N17, N18, N19, N20, N21, N22, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53;
  assign good_mole = N3;
  assign cell_score[9] = N4;
  assign bad_mole = N4;

  DFFRX1 \cell_score_reg[9]  ( .D(n16), .CK(clk), .RN(n39), .Q(N4) );
  DFFRX1 \cell_score_reg[8]  ( .D(n17), .CK(clk), .RN(n39), .Q(cell_score[8])
         );
  DFFRX1 \cell_score_reg[5]  ( .D(n34), .CK(clk), .RN(n39), .Q(cell_score[5])
         );
  DFFRX1 \cell_score_reg[6]  ( .D(n33), .CK(clk), .RN(n39), .Q(cell_score[6])
         );
  DFFRX1 \cell_score_reg[7]  ( .D(n18), .CK(clk), .RN(n39), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[4]  ( .D(n35), .CK(clk), .RN(n39), .Q(cell_score[4])
         );
  DFFRX1 \cell_score_reg[1]  ( .D(n37), .CK(clk), .RN(n39), .Q(cell_score[1])
         );
  DFFRX1 \cell_score_reg[3]  ( .D(n36), .CK(clk), .RN(n39), .Q(cell_score[3])
         );
  DFFRX1 \cell_score_reg[2]  ( .D(n40), .CK(clk), .RN(n39), .Q(cell_score[2])
         );
  DFFRX1 \cell_score_reg[0]  ( .D(n15), .CK(clk), .RN(n39), .Q(cell_score[0]), 
        .QN(n1) );
  CLKINVX1 U3 ( .A(n41), .Y(n38) );
  NAND3BX1 U4 ( .AN(good_signal), .B(n3), .C(bad_signal), .Y(n41) );
  OA21XL U5 ( .A0(bad_signal), .A1(good_signal), .B0(n3), .Y(n50) );
  CLKBUFX3 U6 ( .A(enable), .Y(n3) );
  CLKINVX1 U7 ( .A(game_reset), .Y(n39) );
  CLKINVX1 U8 ( .A(n43), .Y(n16) );
  AOI221XL U9 ( .A0(N4), .A1(n52), .B0(N22), .B1(n51), .C0(n38), .Y(n43) );
  CLKINVX1 U10 ( .A(n44), .Y(n17) );
  AOI221XL U11 ( .A0(cell_score[8]), .A1(n52), .B0(N21), .B1(n51), .C0(n38), 
        .Y(n44) );
  CLKINVX1 U12 ( .A(n46), .Y(n33) );
  AOI221XL U13 ( .A0(cell_score[6]), .A1(n52), .B0(N19), .B1(n51), .C0(n38), 
        .Y(n46) );
  CLKINVX1 U14 ( .A(n47), .Y(n34) );
  AOI221XL U15 ( .A0(cell_score[5]), .A1(n52), .B0(N18), .B1(n51), .C0(n38), 
        .Y(n47) );
  CLKINVX1 U16 ( .A(n45), .Y(n18) );
  AOI221XL U17 ( .A0(cell_score[7]), .A1(n52), .B0(N20), .B1(n51), .C0(n38), 
        .Y(n45) );
  NOR3X1 U18 ( .A(N3), .B(hit_reg), .C(n3), .Y(n52) );
  NOR3X1 U19 ( .A(n3), .B(hit_reg), .C(n52), .Y(n51) );
  CLKINVX1 U20 ( .A(n49), .Y(n36) );
  AOI221XL U21 ( .A0(cell_score[3]), .A1(n52), .B0(N16), .B1(n51), .C0(n50), 
        .Y(n49) );
  CLKINVX1 U22 ( .A(n53), .Y(n37) );
  AOI221XL U23 ( .A0(cell_score[1]), .A1(n52), .B0(N14), .B1(n51), .C0(n50), 
        .Y(n53) );
  CLKINVX1 U24 ( .A(n42), .Y(n15) );
  AOI221XL U25 ( .A0(cell_score[0]), .A1(n52), .B0(n1), .B1(n51), .C0(n38), 
        .Y(n42) );
  AO22X1 U26 ( .A0(cell_score[2]), .A1(n52), .B0(N15), .B1(n51), .Y(n40) );
  CLKINVX1 U27 ( .A(n48), .Y(n35) );
  AOI221XL U28 ( .A0(cell_score[4]), .A1(n52), .B0(N17), .B1(n51), .C0(n38), 
        .Y(n48) );
  NAND2BX1 U29 ( .AN(cell_score[1]), .B(n1), .Y(n4) );
  OAI2BB1X1 U30 ( .A0N(cell_score[0]), .A1N(cell_score[1]), .B0(n4), .Y(N14)
         );
  OR2X1 U31 ( .A(n4), .B(cell_score[2]), .Y(n5) );
  OAI2BB1X1 U32 ( .A0N(n4), .A1N(cell_score[2]), .B0(n5), .Y(N15) );
  OR2X1 U33 ( .A(n5), .B(cell_score[3]), .Y(n6) );
  OAI2BB1X1 U34 ( .A0N(n5), .A1N(cell_score[3]), .B0(n6), .Y(N16) );
  OR2X1 U35 ( .A(n6), .B(cell_score[4]), .Y(n7) );
  OAI2BB1X1 U36 ( .A0N(n6), .A1N(cell_score[4]), .B0(n7), .Y(N17) );
  OR2X1 U37 ( .A(n7), .B(cell_score[5]), .Y(n8) );
  OAI2BB1X1 U38 ( .A0N(n7), .A1N(cell_score[5]), .B0(n8), .Y(N18) );
  NOR2X1 U39 ( .A(n8), .B(cell_score[6]), .Y(n9) );
  AO21X1 U40 ( .A0(n8), .A1(cell_score[6]), .B0(n9), .Y(N19) );
  NAND2X1 U41 ( .A(n9), .B(n2), .Y(n10) );
  OAI21XL U42 ( .A0(n9), .A1(n2), .B0(n10), .Y(N20) );
  XNOR2X1 U43 ( .A(cell_score[8]), .B(n10), .Y(N21) );
  NOR2X1 U44 ( .A(cell_score[8]), .B(n10), .Y(n11) );
  XOR2X1 U45 ( .A(N4), .B(n11), .Y(N22) );
  NOR2X1 U46 ( .A(cell_score[5]), .B(cell_score[4]), .Y(n14) );
  NOR3X1 U47 ( .A(cell_score[6]), .B(cell_score[8]), .C(cell_score[7]), .Y(n13) );
  NOR4X1 U48 ( .A(cell_score[3]), .B(cell_score[2]), .C(cell_score[1]), .D(
        cell_score[0]), .Y(n12) );
  AOI31X1 U49 ( .A0(n14), .A1(n13), .A2(n12), .B0(N4), .Y(N3) );
endmodule


module Mole_Cell_1 ( good_signal, good_mole, bad_signal, bad_mole, hit_reg, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_reg, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N3, N4, N14, N15, N16, N17, N18, N19, N20, N21, N22, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53;
  assign good_mole = N3;
  assign cell_score[9] = N4;
  assign bad_mole = N4;

  DFFRX1 \cell_score_reg[9]  ( .D(n16), .CK(clk), .RN(n39), .Q(N4) );
  DFFRX1 \cell_score_reg[8]  ( .D(n17), .CK(clk), .RN(n39), .Q(cell_score[8])
         );
  DFFRX1 \cell_score_reg[4]  ( .D(n35), .CK(clk), .RN(n39), .Q(cell_score[4])
         );
  DFFRX1 \cell_score_reg[5]  ( .D(n34), .CK(clk), .RN(n39), .Q(cell_score[5])
         );
  DFFRX1 \cell_score_reg[6]  ( .D(n33), .CK(clk), .RN(n39), .Q(cell_score[6])
         );
  DFFRX1 \cell_score_reg[7]  ( .D(n18), .CK(clk), .RN(n39), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[1]  ( .D(n37), .CK(clk), .RN(n39), .Q(cell_score[1])
         );
  DFFRX1 \cell_score_reg[3]  ( .D(n36), .CK(clk), .RN(n39), .Q(cell_score[3])
         );
  DFFRX1 \cell_score_reg[2]  ( .D(n40), .CK(clk), .RN(n39), .Q(cell_score[2])
         );
  DFFRX1 \cell_score_reg[0]  ( .D(n15), .CK(clk), .RN(n39), .Q(cell_score[0]), 
        .QN(n1) );
  OA21XL U3 ( .A0(bad_signal), .A1(good_signal), .B0(n3), .Y(n50) );
  CLKINVX1 U4 ( .A(n41), .Y(n38) );
  NAND3BX1 U5 ( .AN(good_signal), .B(n3), .C(bad_signal), .Y(n41) );
  CLKBUFX3 U6 ( .A(enable), .Y(n3) );
  CLKINVX1 U7 ( .A(game_reset), .Y(n39) );
  CLKINVX1 U8 ( .A(n44), .Y(n17) );
  AOI221XL U9 ( .A0(cell_score[8]), .A1(n52), .B0(N21), .B1(n51), .C0(n38), 
        .Y(n44) );
  CLKINVX1 U10 ( .A(n46), .Y(n33) );
  AOI221XL U11 ( .A0(cell_score[6]), .A1(n52), .B0(N19), .B1(n51), .C0(n38), 
        .Y(n46) );
  CLKINVX1 U12 ( .A(n43), .Y(n16) );
  AOI221XL U13 ( .A0(N4), .A1(n52), .B0(N22), .B1(n51), .C0(n38), .Y(n43) );
  CLKINVX1 U14 ( .A(n47), .Y(n34) );
  AOI221XL U15 ( .A0(cell_score[5]), .A1(n52), .B0(N18), .B1(n51), .C0(n38), 
        .Y(n47) );
  CLKINVX1 U16 ( .A(n45), .Y(n18) );
  AOI221XL U17 ( .A0(cell_score[7]), .A1(n52), .B0(N20), .B1(n51), .C0(n38), 
        .Y(n45) );
  NOR3X1 U18 ( .A(N3), .B(hit_reg), .C(n3), .Y(n52) );
  NOR3X1 U19 ( .A(n3), .B(hit_reg), .C(n52), .Y(n51) );
  CLKINVX1 U20 ( .A(n49), .Y(n36) );
  AOI221XL U21 ( .A0(cell_score[3]), .A1(n52), .B0(N16), .B1(n51), .C0(n50), 
        .Y(n49) );
  CLKINVX1 U22 ( .A(n53), .Y(n37) );
  AOI221XL U23 ( .A0(cell_score[1]), .A1(n52), .B0(N14), .B1(n51), .C0(n50), 
        .Y(n53) );
  CLKINVX1 U24 ( .A(n42), .Y(n15) );
  AOI221XL U25 ( .A0(cell_score[0]), .A1(n52), .B0(n1), .B1(n51), .C0(n38), 
        .Y(n42) );
  AO22X1 U26 ( .A0(cell_score[2]), .A1(n52), .B0(N15), .B1(n51), .Y(n40) );
  CLKINVX1 U27 ( .A(n48), .Y(n35) );
  AOI221XL U28 ( .A0(cell_score[4]), .A1(n52), .B0(N17), .B1(n51), .C0(n38), 
        .Y(n48) );
  NAND2BX1 U29 ( .AN(cell_score[1]), .B(n1), .Y(n4) );
  OAI2BB1X1 U30 ( .A0N(cell_score[0]), .A1N(cell_score[1]), .B0(n4), .Y(N14)
         );
  OR2X1 U31 ( .A(n4), .B(cell_score[2]), .Y(n5) );
  OAI2BB1X1 U32 ( .A0N(n4), .A1N(cell_score[2]), .B0(n5), .Y(N15) );
  OR2X1 U33 ( .A(n5), .B(cell_score[3]), .Y(n6) );
  OAI2BB1X1 U34 ( .A0N(n5), .A1N(cell_score[3]), .B0(n6), .Y(N16) );
  OR2X1 U35 ( .A(n6), .B(cell_score[4]), .Y(n7) );
  OAI2BB1X1 U36 ( .A0N(n6), .A1N(cell_score[4]), .B0(n7), .Y(N17) );
  OR2X1 U37 ( .A(n7), .B(cell_score[5]), .Y(n8) );
  OAI2BB1X1 U38 ( .A0N(n7), .A1N(cell_score[5]), .B0(n8), .Y(N18) );
  NOR2X1 U39 ( .A(n8), .B(cell_score[6]), .Y(n9) );
  AO21X1 U40 ( .A0(n8), .A1(cell_score[6]), .B0(n9), .Y(N19) );
  NAND2X1 U41 ( .A(n9), .B(n2), .Y(n10) );
  OAI21XL U42 ( .A0(n9), .A1(n2), .B0(n10), .Y(N20) );
  XNOR2X1 U43 ( .A(cell_score[8]), .B(n10), .Y(N21) );
  NOR2X1 U44 ( .A(cell_score[8]), .B(n10), .Y(n11) );
  XOR2X1 U45 ( .A(N4), .B(n11), .Y(N22) );
  NOR2X1 U46 ( .A(cell_score[5]), .B(cell_score[4]), .Y(n14) );
  NOR3X1 U47 ( .A(cell_score[6]), .B(cell_score[8]), .C(cell_score[7]), .Y(n13) );
  NOR4X1 U48 ( .A(cell_score[3]), .B(cell_score[2]), .C(cell_score[1]), .D(
        cell_score[0]), .Y(n12) );
  AOI31X1 U49 ( .A0(n14), .A1(n13), .A2(n12), .B0(N4), .Y(N3) );
endmodule


module Mole_Cell_0 ( good_signal, good_mole, bad_signal, bad_mole, hit_reg, 
        cell_score, enable, game_reset, clk );
  output [9:0] cell_score;
  input good_signal, bad_signal, hit_reg, enable, game_reset, clk;
  output good_mole, bad_mole;
  wire   N3, N4, N14, N15, N16, N17, N18, N19, N20, N21, N22, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53;
  assign good_mole = N3;
  assign cell_score[9] = N4;
  assign bad_mole = N4;

  DFFRX1 \cell_score_reg[9]  ( .D(n16), .CK(clk), .RN(n39), .Q(N4) );
  DFFRX1 \cell_score_reg[8]  ( .D(n17), .CK(clk), .RN(n39), .Q(cell_score[8])
         );
  DFFRX1 \cell_score_reg[4]  ( .D(n35), .CK(clk), .RN(n39), .Q(cell_score[4])
         );
  DFFRX1 \cell_score_reg[5]  ( .D(n34), .CK(clk), .RN(n39), .Q(cell_score[5])
         );
  DFFRX1 \cell_score_reg[6]  ( .D(n33), .CK(clk), .RN(n39), .Q(cell_score[6])
         );
  DFFRX1 \cell_score_reg[7]  ( .D(n18), .CK(clk), .RN(n39), .Q(cell_score[7]), 
        .QN(n2) );
  DFFRX1 \cell_score_reg[1]  ( .D(n37), .CK(clk), .RN(n39), .Q(cell_score[1])
         );
  DFFRX1 \cell_score_reg[3]  ( .D(n36), .CK(clk), .RN(n39), .Q(cell_score[3])
         );
  DFFRX1 \cell_score_reg[2]  ( .D(n40), .CK(clk), .RN(n39), .Q(cell_score[2])
         );
  DFFRX1 \cell_score_reg[0]  ( .D(n15), .CK(clk), .RN(n39), .Q(cell_score[0]), 
        .QN(n1) );
  CLKINVX1 U3 ( .A(n41), .Y(n38) );
  NAND3BX1 U4 ( .AN(good_signal), .B(n3), .C(bad_signal), .Y(n41) );
  OA21XL U5 ( .A0(bad_signal), .A1(good_signal), .B0(n3), .Y(n50) );
  CLKBUFX3 U6 ( .A(enable), .Y(n3) );
  CLKINVX1 U7 ( .A(game_reset), .Y(n39) );
  CLKINVX1 U8 ( .A(n44), .Y(n17) );
  AOI221XL U9 ( .A0(cell_score[8]), .A1(n52), .B0(N21), .B1(n51), .C0(n38), 
        .Y(n44) );
  CLKINVX1 U10 ( .A(n46), .Y(n33) );
  AOI221XL U11 ( .A0(cell_score[6]), .A1(n52), .B0(N19), .B1(n51), .C0(n38), 
        .Y(n46) );
  CLKINVX1 U12 ( .A(n43), .Y(n16) );
  AOI221XL U13 ( .A0(N4), .A1(n52), .B0(N22), .B1(n51), .C0(n38), .Y(n43) );
  CLKINVX1 U14 ( .A(n47), .Y(n34) );
  AOI221XL U15 ( .A0(cell_score[5]), .A1(n52), .B0(N18), .B1(n51), .C0(n38), 
        .Y(n47) );
  CLKINVX1 U16 ( .A(n45), .Y(n18) );
  AOI221XL U17 ( .A0(cell_score[7]), .A1(n52), .B0(N20), .B1(n51), .C0(n38), 
        .Y(n45) );
  NOR3X1 U18 ( .A(N3), .B(hit_reg), .C(n3), .Y(n52) );
  NOR3X1 U19 ( .A(n3), .B(hit_reg), .C(n52), .Y(n51) );
  CLKINVX1 U20 ( .A(n49), .Y(n36) );
  AOI221XL U21 ( .A0(cell_score[3]), .A1(n52), .B0(N16), .B1(n51), .C0(n50), 
        .Y(n49) );
  CLKINVX1 U22 ( .A(n53), .Y(n37) );
  AOI221XL U23 ( .A0(cell_score[1]), .A1(n52), .B0(N14), .B1(n51), .C0(n50), 
        .Y(n53) );
  CLKINVX1 U24 ( .A(n42), .Y(n15) );
  AOI221XL U25 ( .A0(cell_score[0]), .A1(n52), .B0(n1), .B1(n51), .C0(n38), 
        .Y(n42) );
  AO22X1 U26 ( .A0(cell_score[2]), .A1(n52), .B0(N15), .B1(n51), .Y(n40) );
  CLKINVX1 U27 ( .A(n48), .Y(n35) );
  AOI221XL U28 ( .A0(cell_score[4]), .A1(n52), .B0(N17), .B1(n51), .C0(n38), 
        .Y(n48) );
  NAND2BX1 U29 ( .AN(cell_score[1]), .B(n1), .Y(n4) );
  OAI2BB1X1 U30 ( .A0N(cell_score[0]), .A1N(cell_score[1]), .B0(n4), .Y(N14)
         );
  OR2X1 U31 ( .A(n4), .B(cell_score[2]), .Y(n5) );
  OAI2BB1X1 U32 ( .A0N(n4), .A1N(cell_score[2]), .B0(n5), .Y(N15) );
  OR2X1 U33 ( .A(n5), .B(cell_score[3]), .Y(n6) );
  OAI2BB1X1 U34 ( .A0N(n5), .A1N(cell_score[3]), .B0(n6), .Y(N16) );
  OR2X1 U35 ( .A(n6), .B(cell_score[4]), .Y(n7) );
  OAI2BB1X1 U36 ( .A0N(n6), .A1N(cell_score[4]), .B0(n7), .Y(N17) );
  OR2X1 U37 ( .A(n7), .B(cell_score[5]), .Y(n8) );
  OAI2BB1X1 U38 ( .A0N(n7), .A1N(cell_score[5]), .B0(n8), .Y(N18) );
  NOR2X1 U39 ( .A(n8), .B(cell_score[6]), .Y(n9) );
  AO21X1 U40 ( .A0(n8), .A1(cell_score[6]), .B0(n9), .Y(N19) );
  NAND2X1 U41 ( .A(n9), .B(n2), .Y(n10) );
  OAI21XL U42 ( .A0(n9), .A1(n2), .B0(n10), .Y(N20) );
  XNOR2X1 U43 ( .A(cell_score[8]), .B(n10), .Y(N21) );
  NOR2X1 U44 ( .A(cell_score[8]), .B(n10), .Y(n11) );
  XOR2X1 U45 ( .A(N4), .B(n11), .Y(N22) );
  NOR2X1 U46 ( .A(cell_score[5]), .B(cell_score[4]), .Y(n14) );
  NOR3X1 U47 ( .A(cell_score[6]), .B(cell_score[8]), .C(cell_score[7]), .Y(n13) );
  NOR4X1 U48 ( .A(cell_score[3]), .B(cell_score[2]), .C(cell_score[1]), .D(
        cell_score[0]), .Y(n12) );
  AOI31X1 U49 ( .A0(n14), .A1(n13), .A2(n12), .B0(N4), .Y(N3) );
endmodule


module Select_16_to_1 ( cell_score, hit_reg, add_score );
  input [159:0] cell_score;
  input [15:0] hit_reg;
  output [9:0] add_score;
  wire   n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n11, n12, n13, n14;

  AOI222XL U2 ( .A0(cell_score[94]), .A1(n26), .B0(cell_score[114]), .B1(n27), 
        .C0(cell_score[104]), .C1(n28), .Y(n72) );
  AOI222XL U3 ( .A0(cell_score[96]), .A1(n26), .B0(cell_score[116]), .B1(n27), 
        .C0(cell_score[106]), .C1(n28), .Y(n56) );
  AOI222XL U4 ( .A0(cell_score[97]), .A1(n26), .B0(cell_score[117]), .B1(n27), 
        .C0(cell_score[107]), .C1(n28), .Y(n48) );
  AOI221XL U5 ( .A0(cell_score[151]), .A1(n11), .B0(cell_score[141]), .B1(n23), 
        .C0(n98), .Y(n97) );
  AO22X1 U6 ( .A0(cell_score[121]), .A1(n25), .B0(cell_score[131]), .B1(n12), 
        .Y(n98) );
  AOI221XL U7 ( .A0(cell_score[150]), .A1(n11), .B0(cell_score[140]), .B1(n23), 
        .C0(n106), .Y(n105) );
  AO22X1 U8 ( .A0(cell_score[120]), .A1(n25), .B0(cell_score[130]), .B1(n12), 
        .Y(n106) );
  AOI222XL U9 ( .A0(cell_score[91]), .A1(n26), .B0(cell_score[111]), .B1(n27), 
        .C0(cell_score[101]), .C1(n28), .Y(n96) );
  AOI222XL U10 ( .A0(cell_score[92]), .A1(n26), .B0(cell_score[112]), .B1(n27), 
        .C0(cell_score[102]), .C1(n28), .Y(n88) );
  AOI222XL U11 ( .A0(cell_score[93]), .A1(n26), .B0(cell_score[113]), .B1(n27), 
        .C0(cell_score[103]), .C1(n28), .Y(n80) );
  AOI222XL U12 ( .A0(cell_score[90]), .A1(n26), .B0(cell_score[110]), .B1(n27), 
        .C0(cell_score[100]), .C1(n28), .Y(n104) );
  AOI221XL U13 ( .A0(cell_score[82]), .A1(n29), .B0(cell_score[72]), .B1(n30), 
        .C0(n91), .Y(n87) );
  AO22X1 U14 ( .A0(cell_score[52]), .A1(n32), .B0(cell_score[62]), .B1(n33), 
        .Y(n91) );
  AOI221XL U15 ( .A0(cell_score[83]), .A1(n29), .B0(cell_score[73]), .B1(n30), 
        .C0(n83), .Y(n79) );
  AO22X1 U16 ( .A0(cell_score[53]), .A1(n32), .B0(cell_score[63]), .B1(n33), 
        .Y(n83) );
  AOI221XL U17 ( .A0(cell_score[80]), .A1(n29), .B0(cell_score[70]), .B1(n30), 
        .C0(n114), .Y(n103) );
  AO22X1 U18 ( .A0(cell_score[50]), .A1(n32), .B0(cell_score[60]), .B1(n33), 
        .Y(n114) );
  CLKINVX1 U19 ( .A(n100), .Y(add_score[0]) );
  AOI222XL U20 ( .A0(cell_score[0]), .A1(hit_reg[0]), .B0(n16), .B1(n101), 
        .C0(cell_score[10]), .C1(n18), .Y(n100) );
  NAND4X1 U21 ( .A(n102), .B(n103), .C(n104), .D(n105), .Y(n101) );
  AOI222XL U22 ( .A0(cell_score[20]), .A1(hit_reg[2]), .B0(cell_score[40]), 
        .B1(n34), .C0(cell_score[30]), .C1(n35), .Y(n102) );
  CLKINVX1 U23 ( .A(n92), .Y(add_score[1]) );
  AOI222XL U24 ( .A0(cell_score[1]), .A1(hit_reg[0]), .B0(n16), .B1(n93), .C0(
        cell_score[11]), .C1(n18), .Y(n92) );
  NAND4X1 U25 ( .A(n94), .B(n95), .C(n96), .D(n97), .Y(n93) );
  AOI222XL U26 ( .A0(cell_score[21]), .A1(hit_reg[2]), .B0(cell_score[41]), 
        .B1(n34), .C0(cell_score[31]), .C1(n35), .Y(n94) );
  CLKINVX1 U27 ( .A(n84), .Y(add_score[2]) );
  AOI222XL U28 ( .A0(cell_score[2]), .A1(hit_reg[0]), .B0(n16), .B1(n85), .C0(
        cell_score[12]), .C1(n18), .Y(n84) );
  NAND4X1 U29 ( .A(n86), .B(n87), .C(n88), .D(n89), .Y(n85) );
  AOI222XL U30 ( .A0(cell_score[22]), .A1(hit_reg[2]), .B0(cell_score[42]), 
        .B1(n34), .C0(cell_score[32]), .C1(n35), .Y(n86) );
  CLKINVX1 U31 ( .A(n76), .Y(add_score[3]) );
  AOI222XL U32 ( .A0(cell_score[3]), .A1(hit_reg[0]), .B0(n16), .B1(n77), .C0(
        cell_score[13]), .C1(n18), .Y(n76) );
  NAND4X1 U33 ( .A(n78), .B(n79), .C(n80), .D(n81), .Y(n77) );
  AOI222XL U34 ( .A0(cell_score[23]), .A1(hit_reg[2]), .B0(cell_score[43]), 
        .B1(n34), .C0(cell_score[33]), .C1(n35), .Y(n78) );
  CLKINVX1 U35 ( .A(n68), .Y(add_score[4]) );
  AOI222XL U36 ( .A0(cell_score[4]), .A1(hit_reg[0]), .B0(n16), .B1(n69), .C0(
        cell_score[14]), .C1(n18), .Y(n68) );
  NAND4X1 U37 ( .A(n70), .B(n71), .C(n72), .D(n73), .Y(n69) );
  AOI222XL U38 ( .A0(cell_score[24]), .A1(hit_reg[2]), .B0(cell_score[44]), 
        .B1(n34), .C0(cell_score[34]), .C1(n35), .Y(n70) );
  AOI221XL U39 ( .A0(cell_score[152]), .A1(n11), .B0(cell_score[142]), .B1(n23), .C0(n90), .Y(n89) );
  AO22X1 U40 ( .A0(cell_score[122]), .A1(n25), .B0(cell_score[132]), .B1(n12), 
        .Y(n90) );
  AOI221XL U41 ( .A0(cell_score[153]), .A1(n11), .B0(cell_score[143]), .B1(n23), .C0(n82), .Y(n81) );
  AO22X1 U42 ( .A0(cell_score[123]), .A1(n25), .B0(cell_score[133]), .B1(n12), 
        .Y(n82) );
  AOI221XL U43 ( .A0(cell_score[154]), .A1(n11), .B0(cell_score[144]), .B1(n23), .C0(n74), .Y(n73) );
  AO22X1 U44 ( .A0(cell_score[124]), .A1(n25), .B0(cell_score[134]), .B1(n12), 
        .Y(n74) );
  AOI221XL U45 ( .A0(cell_score[81]), .A1(n29), .B0(cell_score[71]), .B1(n30), 
        .C0(n99), .Y(n95) );
  AO22X1 U46 ( .A0(cell_score[51]), .A1(n32), .B0(cell_score[61]), .B1(n33), 
        .Y(n99) );
  CLKINVX1 U47 ( .A(n52), .Y(add_score[6]) );
  AOI222XL U48 ( .A0(cell_score[6]), .A1(hit_reg[0]), .B0(n16), .B1(n53), .C0(
        cell_score[16]), .C1(n18), .Y(n52) );
  NAND4X1 U49 ( .A(n54), .B(n55), .C(n56), .D(n57), .Y(n53) );
  AOI222XL U50 ( .A0(cell_score[26]), .A1(hit_reg[2]), .B0(cell_score[46]), 
        .B1(n34), .C0(cell_score[36]), .C1(n35), .Y(n54) );
  CLKINVX1 U51 ( .A(n44), .Y(add_score[7]) );
  AOI222XL U52 ( .A0(cell_score[7]), .A1(hit_reg[0]), .B0(n16), .B1(n45), .C0(
        cell_score[17]), .C1(n18), .Y(n44) );
  NAND4X1 U53 ( .A(n46), .B(n47), .C(n48), .D(n49), .Y(n45) );
  AOI222XL U54 ( .A0(cell_score[27]), .A1(hit_reg[2]), .B0(cell_score[47]), 
        .B1(n34), .C0(cell_score[37]), .C1(n35), .Y(n46) );
  AOI222XL U55 ( .A0(cell_score[95]), .A1(n26), .B0(cell_score[115]), .B1(n27), 
        .C0(cell_score[105]), .C1(n28), .Y(n64) );
  AOI221XL U56 ( .A0(cell_score[84]), .A1(n29), .B0(cell_score[74]), .B1(n30), 
        .C0(n75), .Y(n71) );
  AO22X1 U57 ( .A0(cell_score[54]), .A1(n32), .B0(cell_score[64]), .B1(n33), 
        .Y(n75) );
  AOI221XL U58 ( .A0(cell_score[85]), .A1(n29), .B0(cell_score[75]), .B1(n30), 
        .C0(n67), .Y(n63) );
  AO22X1 U59 ( .A0(cell_score[55]), .A1(n32), .B0(cell_score[65]), .B1(n33), 
        .Y(n67) );
  AOI221XL U60 ( .A0(cell_score[86]), .A1(n29), .B0(cell_score[76]), .B1(n30), 
        .C0(n59), .Y(n55) );
  AO22X1 U61 ( .A0(cell_score[56]), .A1(n32), .B0(cell_score[66]), .B1(n33), 
        .Y(n59) );
  AOI221XL U62 ( .A0(cell_score[87]), .A1(n29), .B0(cell_score[77]), .B1(n30), 
        .C0(n51), .Y(n47) );
  AO22X1 U63 ( .A0(cell_score[57]), .A1(n32), .B0(cell_score[67]), .B1(n33), 
        .Y(n51) );
  CLKINVX1 U64 ( .A(n60), .Y(add_score[5]) );
  AOI222XL U65 ( .A0(cell_score[5]), .A1(hit_reg[0]), .B0(n16), .B1(n61), .C0(
        cell_score[15]), .C1(n18), .Y(n60) );
  NAND4X1 U66 ( .A(n62), .B(n63), .C(n64), .D(n65), .Y(n61) );
  AOI222XL U67 ( .A0(cell_score[25]), .A1(hit_reg[2]), .B0(cell_score[45]), 
        .B1(n34), .C0(cell_score[35]), .C1(n35), .Y(n62) );
  AOI221XL U68 ( .A0(cell_score[155]), .A1(n11), .B0(cell_score[145]), .B1(n23), .C0(n66), .Y(n65) );
  AO22X1 U69 ( .A0(cell_score[125]), .A1(n25), .B0(cell_score[135]), .B1(n12), 
        .Y(n66) );
  AOI221XL U70 ( .A0(cell_score[156]), .A1(n11), .B0(cell_score[146]), .B1(n23), .C0(n58), .Y(n57) );
  AO22X1 U71 ( .A0(cell_score[126]), .A1(n25), .B0(cell_score[136]), .B1(n12), 
        .Y(n58) );
  AOI221XL U72 ( .A0(cell_score[157]), .A1(n11), .B0(cell_score[147]), .B1(n23), .C0(n50), .Y(n49) );
  AO22X1 U73 ( .A0(cell_score[127]), .A1(n25), .B0(cell_score[137]), .B1(n12), 
        .Y(n50) );
  AOI221XL U74 ( .A0(cell_score[158]), .A1(n11), .B0(cell_score[148]), .B1(n23), .C0(n42), .Y(n41) );
  AO22X1 U75 ( .A0(cell_score[128]), .A1(n25), .B0(cell_score[138]), .B1(n12), 
        .Y(n42) );
  AOI221XL U76 ( .A0(cell_score[159]), .A1(n11), .B0(cell_score[149]), .B1(n23), .C0(n24), .Y(n22) );
  AO22X1 U77 ( .A0(cell_score[129]), .A1(n25), .B0(cell_score[139]), .B1(n12), 
        .Y(n24) );
  AOI222XL U78 ( .A0(cell_score[98]), .A1(n26), .B0(cell_score[118]), .B1(n27), 
        .C0(cell_score[108]), .C1(n28), .Y(n40) );
  AOI222XL U79 ( .A0(cell_score[99]), .A1(n26), .B0(cell_score[119]), .B1(n27), 
        .C0(cell_score[109]), .C1(n28), .Y(n21) );
  AOI221XL U80 ( .A0(cell_score[88]), .A1(n29), .B0(cell_score[78]), .B1(n30), 
        .C0(n43), .Y(n39) );
  AO22X1 U81 ( .A0(cell_score[58]), .A1(n32), .B0(cell_score[68]), .B1(n33), 
        .Y(n43) );
  AOI221XL U82 ( .A0(cell_score[89]), .A1(n29), .B0(cell_score[79]), .B1(n30), 
        .C0(n31), .Y(n20) );
  AO22X1 U83 ( .A0(cell_score[59]), .A1(n32), .B0(cell_score[69]), .B1(n33), 
        .Y(n31) );
  CLKINVX1 U84 ( .A(n15), .Y(add_score[9]) );
  AOI222XL U85 ( .A0(hit_reg[0]), .A1(cell_score[9]), .B0(n16), .B1(n17), .C0(
        cell_score[19]), .C1(n18), .Y(n15) );
  NAND4X1 U86 ( .A(n19), .B(n20), .C(n21), .D(n22), .Y(n17) );
  AOI222XL U87 ( .A0(hit_reg[2]), .A1(cell_score[29]), .B0(cell_score[49]), 
        .B1(n34), .C0(cell_score[39]), .C1(n35), .Y(n19) );
  CLKINVX1 U88 ( .A(n36), .Y(add_score[8]) );
  AOI222XL U89 ( .A0(cell_score[8]), .A1(hit_reg[0]), .B0(n16), .B1(n37), .C0(
        cell_score[18]), .C1(n18), .Y(n36) );
  NAND4X1 U90 ( .A(n38), .B(n39), .C(n40), .D(n41), .Y(n37) );
  AOI222XL U91 ( .A0(cell_score[28]), .A1(hit_reg[2]), .B0(cell_score[48]), 
        .B1(n34), .C0(cell_score[38]), .C1(n35), .Y(n38) );
  NOR3BXL U92 ( .AN(n111), .B(hit_reg[10]), .C(hit_reg[11]), .Y(n108) );
  NOR3BXL U93 ( .AN(hit_reg[4]), .B(hit_reg[2]), .C(hit_reg[3]), .Y(n34) );
  NOR3BXL U94 ( .AN(n108), .B(hit_reg[12]), .C(hit_reg[13]), .Y(n109) );
  NOR2BX1 U95 ( .AN(hit_reg[1]), .B(hit_reg[0]), .Y(n18) );
  NOR2BX1 U96 ( .AN(hit_reg[3]), .B(hit_reg[2]), .Y(n35) );
  NOR2BX1 U97 ( .AN(n112), .B(hit_reg[9]), .Y(n111) );
  NOR2BX1 U98 ( .AN(n115), .B(hit_reg[6]), .Y(n113) );
  NOR3BXL U99 ( .AN(n113), .B(hit_reg[7]), .C(hit_reg[8]), .Y(n112) );
  NOR3X1 U100 ( .A(hit_reg[3]), .B(hit_reg[4]), .C(hit_reg[2]), .Y(n116) );
  NOR2BX1 U101 ( .AN(n116), .B(hit_reg[5]), .Y(n115) );
  NOR2X1 U102 ( .A(hit_reg[0]), .B(hit_reg[1]), .Y(n16) );
  AND2X2 U103 ( .A(n108), .B(hit_reg[12]), .Y(n25) );
  AND2X2 U104 ( .A(hit_reg[5]), .B(n116), .Y(n32) );
  AND2X2 U105 ( .A(hit_reg[6]), .B(n115), .Y(n33) );
  CLKINVX1 U106 ( .A(n107), .Y(n12) );
  NAND3BX1 U107 ( .AN(hit_reg[12]), .B(n108), .C(hit_reg[13]), .Y(n107) );
  AND3X2 U108 ( .A(n14), .B(n113), .C(hit_reg[8]), .Y(n29) );
  CLKINVX1 U109 ( .A(hit_reg[7]), .Y(n14) );
  AND3X2 U110 ( .A(n13), .B(n111), .C(hit_reg[11]), .Y(n27) );
  CLKINVX1 U111 ( .A(hit_reg[10]), .Y(n13) );
  AND2X2 U112 ( .A(hit_reg[9]), .B(n112), .Y(n26) );
  AND2X2 U113 ( .A(n111), .B(hit_reg[10]), .Y(n28) );
  AND2X2 U114 ( .A(n109), .B(hit_reg[14]), .Y(n23) );
  AND2X2 U115 ( .A(n113), .B(hit_reg[7]), .Y(n30) );
  CLKINVX1 U116 ( .A(n110), .Y(n11) );
  NAND3BX1 U117 ( .AN(hit_reg[14]), .B(n109), .C(hit_reg[15]), .Y(n110) );
endmodule


module Controller ( reset, game_start, clk, generator_clk, decoder_enable, 
        reg_enable, game_reset, countdown );
  output [9:0] countdown;
  input reset, game_start, clk;
  output generator_clk, decoder_enable, reg_enable, game_reset;
  wire   N17, N18, N19, N20, N21, N22, N23, N24, N25, n3, n4, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n1, n2, n5, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54;
  wire   [3:0] counter;
  wire   [2:0] state;
  wire   [3:0] next_counter;
  wire   [2:0] next_state;

  DFFRX1 \counter_reg[3]  ( .D(next_counter[3]), .CK(clk), .RN(n5), .Q(
        counter[3]) );
  DFFRX1 \countdown_reg[5]  ( .D(n39), .CK(clk), .RN(n5), .Q(countdown[5]) );
  DFFRX1 \countdown_reg[6]  ( .D(n40), .CK(clk), .RN(n5), .Q(countdown[6]) );
  DFFRX1 \countdown_reg[4]  ( .D(n38), .CK(clk), .RN(n5), .Q(countdown[4]), 
        .QN(n6) );
  DFFRX1 \counter_reg[2]  ( .D(next_counter[2]), .CK(clk), .RN(n5), .Q(
        counter[2]) );
  DFFRX1 \countdown_reg[9]  ( .D(n43), .CK(clk), .RN(n5), .Q(countdown[9]) );
  DFFRX1 \countdown_reg[8]  ( .D(n42), .CK(clk), .RN(n5), .Q(countdown[8]) );
  DFFRX1 \counter_reg[1]  ( .D(next_counter[1]), .CK(clk), .RN(n5), .Q(
        counter[1]) );
  DFFRX1 \countdown_reg[7]  ( .D(n41), .CK(clk), .RN(n5), .Q(countdown[7]), 
        .QN(n1) );
  DFFRX1 \counter_reg[0]  ( .D(next_counter[0]), .CK(clk), .RN(n5), .Q(
        counter[0]) );
  DFFRX1 \countdown_reg[1]  ( .D(n35), .CK(clk), .RN(n5), .Q(countdown[1]), 
        .QN(n8) );
  DFFRX1 \countdown_reg[3]  ( .D(n37), .CK(clk), .RN(n5), .Q(countdown[3]), 
        .QN(n7) );
  DFFRX1 \countdown_reg[0]  ( .D(n44), .CK(clk), .RN(n5), .Q(countdown[0]), 
        .QN(n9) );
  DFFRX1 \countdown_reg[2]  ( .D(n36), .CK(clk), .RN(n5), .Q(countdown[2]) );
  DFFRX1 \state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(n5), .Q(state[0]), 
        .QN(n4) );
  DFFRX1 \state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(n5), .Q(state[1])
         );
  DFFRX1 \state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(n5), .QN(n3) );
  OAI21XL U3 ( .A0(state[1]), .A1(state[0]), .B0(n3), .Y(reg_enable) );
  CLKINVX1 U4 ( .A(n14), .Y(n54) );
  OR2X1 U5 ( .A(n12), .B(n11), .Y(n24) );
  NOR2X1 U6 ( .A(n54), .B(n10), .Y(next_state[2]) );
  CLKINVX1 U7 ( .A(n11), .Y(n53) );
  CLKINVX1 U8 ( .A(n2), .Y(n5) );
  AO22X1 U9 ( .A0(state[0]), .A1(countdown[7]), .B0(N23), .B1(n30), .Y(n41) );
  AO22X1 U10 ( .A0(state[0]), .A1(countdown[8]), .B0(N24), .B1(n30), .Y(n42)
         );
  AO22X1 U11 ( .A0(state[0]), .A1(countdown[9]), .B0(N25), .B1(n30), .Y(n43)
         );
  AO22X1 U12 ( .A0(state[0]), .A1(countdown[6]), .B0(N22), .B1(n30), .Y(n40)
         );
  AO22X1 U13 ( .A0(state[0]), .A1(countdown[5]), .B0(N21), .B1(n30), .Y(n39)
         );
  NOR4BX1 U14 ( .AN(counter[3]), .B(counter[0]), .C(counter[1]), .D(counter[2]), .Y(n14) );
  NOR2X1 U15 ( .A(n4), .B(state[1]), .Y(game_reset) );
  NAND4X1 U16 ( .A(n9), .B(n8), .C(n32), .D(n33), .Y(n11) );
  NOR3X1 U17 ( .A(countdown[2]), .B(countdown[4]), .C(countdown[3]), .Y(n32)
         );
  NOR4X1 U18 ( .A(n34), .B(countdown[7]), .C(countdown[9]), .D(countdown[8]), 
        .Y(n33) );
  OR2X1 U19 ( .A(countdown[5]), .B(countdown[6]), .Y(n34) );
  NAND3BX1 U20 ( .AN(state[1]), .B(n3), .C(n4), .Y(n26) );
  NAND2X1 U21 ( .A(n3), .B(n10), .Y(decoder_enable) );
  NAND2X1 U22 ( .A(state[1]), .B(n4), .Y(n12) );
  OAI21XL U23 ( .A0(n53), .A1(n3), .B0(n12), .Y(n15) );
  AND2X2 U24 ( .A(n15), .B(n4), .Y(n25) );
  NAND2X1 U25 ( .A(state[1]), .B(state[0]), .Y(n10) );
  AND3X2 U26 ( .A(generator_clk), .B(n11), .C(n4), .Y(n30) );
  NAND2X1 U27 ( .A(n3), .B(n12), .Y(generator_clk) );
  NOR2X1 U28 ( .A(n18), .B(n4), .Y(next_counter[3]) );
  XNOR2X1 U29 ( .A(counter[3]), .B(n19), .Y(n18) );
  NOR2BX1 U30 ( .AN(counter[2]), .B(n20), .Y(n19) );
  NOR2X1 U31 ( .A(n21), .B(n4), .Y(next_counter[2]) );
  XOR2X1 U32 ( .A(n20), .B(counter[2]), .Y(n21) );
  NAND3BX1 U33 ( .AN(n15), .B(n16), .C(n17), .Y(next_state[0]) );
  NAND3X1 U34 ( .A(n4), .B(n3), .C(game_start), .Y(n17) );
  OAI21XL U35 ( .A0(game_reset), .A1(state[1]), .B0(n54), .Y(n16) );
  NAND2X1 U36 ( .A(counter[1]), .B(counter[0]), .Y(n20) );
  OAI211X1 U37 ( .A0(n4), .A1(n7), .B0(n28), .C0(n24), .Y(n37) );
  NAND2X1 U38 ( .A(N19), .B(n25), .Y(n28) );
  NAND3X1 U39 ( .A(n26), .B(n24), .C(n27), .Y(n36) );
  AOI22X1 U40 ( .A0(N18), .A1(n25), .B0(countdown[2]), .B1(state[0]), .Y(n27)
         );
  OAI221XL U41 ( .A0(n11), .A1(n12), .B0(n53), .B1(n3), .C0(n13), .Y(
        next_state[1]) );
  AOI2BB2X1 U42 ( .B0(game_reset), .B1(n14), .A0N(n14), .A1N(n10), .Y(n13) );
  OAI211X1 U43 ( .A0(n4), .A1(n8), .B0(n23), .C0(n24), .Y(n35) );
  NAND2X1 U44 ( .A(N17), .B(n25), .Y(n23) );
  OAI211X1 U45 ( .A0(n4), .A1(n6), .B0(n29), .C0(n24), .Y(n38) );
  NAND2X1 U46 ( .A(N20), .B(n25), .Y(n29) );
  OAI211X1 U47 ( .A0(n4), .A1(n9), .B0(n31), .C0(n26), .Y(n44) );
  NAND2X1 U48 ( .A(n9), .B(n30), .Y(n31) );
  NOR2X1 U49 ( .A(n22), .B(n4), .Y(next_counter[1]) );
  XNOR2X1 U50 ( .A(counter[1]), .B(counter[0]), .Y(n22) );
  NOR2X1 U51 ( .A(counter[0]), .B(n4), .Y(next_counter[0]) );
  CLKBUFX3 U52 ( .A(reset), .Y(n2) );
  NAND2BX1 U53 ( .AN(countdown[1]), .B(n9), .Y(n45) );
  OAI2BB1X1 U54 ( .A0N(countdown[0]), .A1N(countdown[1]), .B0(n45), .Y(N17) );
  OR2X1 U55 ( .A(n45), .B(countdown[2]), .Y(n46) );
  OAI2BB1X1 U56 ( .A0N(n45), .A1N(countdown[2]), .B0(n46), .Y(N18) );
  OR2X1 U57 ( .A(n46), .B(countdown[3]), .Y(n47) );
  OAI2BB1X1 U58 ( .A0N(n46), .A1N(countdown[3]), .B0(n47), .Y(N19) );
  OR2X1 U59 ( .A(n47), .B(countdown[4]), .Y(n48) );
  OAI2BB1X1 U60 ( .A0N(n47), .A1N(countdown[4]), .B0(n48), .Y(N20) );
  OR2X1 U61 ( .A(n48), .B(countdown[5]), .Y(n49) );
  OAI2BB1X1 U62 ( .A0N(n48), .A1N(countdown[5]), .B0(n49), .Y(N21) );
  NOR2X1 U63 ( .A(n49), .B(countdown[6]), .Y(n50) );
  AO21X1 U64 ( .A0(n49), .A1(countdown[6]), .B0(n50), .Y(N22) );
  NAND2X1 U65 ( .A(n50), .B(n1), .Y(n51) );
  OAI21XL U66 ( .A0(n50), .A1(n1), .B0(n51), .Y(N23) );
  XNOR2X1 U67 ( .A(countdown[8]), .B(n51), .Y(N24) );
  NOR2X1 U68 ( .A(countdown[8]), .B(n51), .Y(n52) );
  XOR2X1 U69 ( .A(countdown[9]), .B(n52), .Y(N25) );
endmodule


module Mole_DW01_add_0 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [9:1] carry;

  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
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
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
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
  OAI2BB1X1 U1 ( .A0N(n1), .A1N(A[9]), .B0(n2), .Y(\carry[10] ) );
  OAI21XL U2 ( .A0(A[9]), .A1(n1), .B0(B[9]), .Y(n2) );
  OAI2BB1X1 U3 ( .A0N(n3), .A1N(A[8]), .B0(n4), .Y(n1) );
  OAI21XL U4 ( .A0(A[8]), .A1(n3), .B0(B[8]), .Y(n4) );
  OAI2BB1X1 U5 ( .A0N(n5), .A1N(A[7]), .B0(n6), .Y(n3) );
  OAI21XL U6 ( .A0(A[7]), .A1(n5), .B0(B[7]), .Y(n6) );
  OAI2BB1X1 U7 ( .A0N(n7), .A1N(A[6]), .B0(n8), .Y(n5) );
  OAI21XL U8 ( .A0(A[6]), .A1(n7), .B0(B[6]), .Y(n8) );
  OAI2BB1X1 U9 ( .A0N(n9), .A1N(A[5]), .B0(n10), .Y(n7) );
  OAI21XL U10 ( .A0(A[5]), .A1(n9), .B0(B[5]), .Y(n10) );
  OAI2BB1X1 U11 ( .A0N(n11), .A1N(A[4]), .B0(n12), .Y(n9) );
  OAI21XL U12 ( .A0(A[4]), .A1(n11), .B0(B[4]), .Y(n12) );
  OAI2BB1X1 U13 ( .A0N(n13), .A1N(A[3]), .B0(n14), .Y(n11) );
  OAI21XL U14 ( .A0(A[3]), .A1(n13), .B0(B[3]), .Y(n14) );
  OAI2BB1X1 U15 ( .A0N(n15), .A1N(A[2]), .B0(n16), .Y(n13) );
  OAI21XL U16 ( .A0(A[2]), .A1(n15), .B0(B[2]), .Y(n16) );
  OAI2BB1X1 U17 ( .A0N(A[1]), .A1N(B[1]), .B0(n17), .Y(n15) );
  OAI211X1 U18 ( .A0(A[1]), .A1(B[1]), .B0(A[0]), .C0(B[0]), .Y(n17) );
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
         N32, N33, N34, N35, n10, n11, n12, n13, n14;
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
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9;

  Generator_0 Good_Addr ( .seed(Seed[29:15]), .addr(good_addr), .set(Reset), 
        .clk(n13) );
  Generator_1 Bad_Addr ( .seed(Seed[14:0]), .addr(bad_addr), .set(Reset), 
        .clk(n13) );
  Decoder_4_to_16_0 Good ( .addr(good_addr), .enable(decoder_enable), .signal(
        good_signal) );
  Decoder_4_to_16_1 Bad ( .addr(bad_addr), .enable(decoder_enable), .signal(
        bad_signal) );
  Mole_Cell_15 \M[0]  ( .good_signal(good_signal[0]), .good_mole(Good_mole[0]), 
        .bad_signal(bad_signal[0]), .bad_mole(Bad_mole[0]), .hit_reg(
        Hit_point[0]), .cell_score(cell_score[9:0]), .enable(n12), 
        .game_reset(n10), .clk(Clk) );
  Mole_Cell_14 \M[1]  ( .good_signal(good_signal[1]), .good_mole(Good_mole[1]), 
        .bad_signal(bad_signal[1]), .bad_mole(Bad_mole[1]), .hit_reg(
        Hit_point[1]), .cell_score(cell_score[19:10]), .enable(n11), 
        .game_reset(n10), .clk(Clk) );
  Mole_Cell_13 \M[2]  ( .good_signal(good_signal[2]), .good_mole(Good_mole[2]), 
        .bad_signal(bad_signal[2]), .bad_mole(Bad_mole[2]), .hit_reg(
        Hit_point[2]), .cell_score(cell_score[29:20]), .enable(n11), 
        .game_reset(n10), .clk(Clk) );
  Mole_Cell_12 \M[3]  ( .good_signal(good_signal[3]), .good_mole(Good_mole[3]), 
        .bad_signal(bad_signal[3]), .bad_mole(Bad_mole[3]), .hit_reg(
        Hit_point[3]), .cell_score(cell_score[39:30]), .enable(n11), 
        .game_reset(n10), .clk(Clk) );
  Mole_Cell_11 \M[4]  ( .good_signal(good_signal[4]), .good_mole(Good_mole[4]), 
        .bad_signal(bad_signal[4]), .bad_mole(Bad_mole[4]), .hit_reg(
        Hit_point[4]), .cell_score(cell_score[49:40]), .enable(n11), 
        .game_reset(n10), .clk(Clk) );
  Mole_Cell_10 \M[5]  ( .good_signal(good_signal[5]), .good_mole(Good_mole[5]), 
        .bad_signal(bad_signal[5]), .bad_mole(Bad_mole[5]), .hit_reg(
        Hit_point[5]), .cell_score(cell_score[59:50]), .enable(n11), 
        .game_reset(n10), .clk(Clk) );
  Mole_Cell_9 \M[6]  ( .good_signal(good_signal[6]), .good_mole(Good_mole[6]), 
        .bad_signal(bad_signal[6]), .bad_mole(Bad_mole[6]), .hit_reg(
        Hit_point[6]), .cell_score(cell_score[69:60]), .enable(n11), 
        .game_reset(n10), .clk(Clk) );
  Mole_Cell_8 \M[7]  ( .good_signal(good_signal[7]), .good_mole(Good_mole[7]), 
        .bad_signal(bad_signal[7]), .bad_mole(Bad_mole[7]), .hit_reg(
        Hit_point[7]), .cell_score(cell_score[79:70]), .enable(n11), 
        .game_reset(n10), .clk(Clk) );
  Mole_Cell_7 \M[8]  ( .good_signal(good_signal[8]), .good_mole(Good_mole[8]), 
        .bad_signal(bad_signal[8]), .bad_mole(Bad_mole[8]), .hit_reg(
        Hit_point[8]), .cell_score(cell_score[89:80]), .enable(n11), 
        .game_reset(n10), .clk(Clk) );
  Mole_Cell_6 \M[9]  ( .good_signal(good_signal[9]), .good_mole(Good_mole[9]), 
        .bad_signal(bad_signal[9]), .bad_mole(Bad_mole[9]), .hit_reg(
        Hit_point[9]), .cell_score(cell_score[99:90]), .enable(n11), 
        .game_reset(n10), .clk(Clk) );
  Mole_Cell_5 \M[10]  ( .good_signal(good_signal[10]), .good_mole(
        Good_mole[10]), .bad_signal(bad_signal[10]), .bad_mole(Bad_mole[10]), 
        .hit_reg(Hit_point[10]), .cell_score(cell_score[109:100]), .enable(n11), .game_reset(n10), .clk(Clk) );
  Mole_Cell_4 \M[11]  ( .good_signal(good_signal[11]), .good_mole(
        Good_mole[11]), .bad_signal(bad_signal[11]), .bad_mole(Bad_mole[11]), 
        .hit_reg(Hit_point[11]), .cell_score(cell_score[119:110]), .enable(n11), .game_reset(n10), .clk(Clk) );
  Mole_Cell_3 \M[12]  ( .good_signal(good_signal[12]), .good_mole(
        Good_mole[12]), .bad_signal(bad_signal[12]), .bad_mole(Bad_mole[12]), 
        .hit_reg(Hit_point[12]), .cell_score(cell_score[129:120]), .enable(n11), .game_reset(n10), .clk(Clk) );
  Mole_Cell_2 \M[13]  ( .good_signal(good_signal[13]), .good_mole(
        Good_mole[13]), .bad_signal(bad_signal[13]), .bad_mole(Bad_mole[13]), 
        .hit_reg(Hit_point[13]), .cell_score(cell_score[139:130]), .enable(n12), .game_reset(n10), .clk(Clk) );
  Mole_Cell_1 \M[14]  ( .good_signal(good_signal[14]), .good_mole(
        Good_mole[14]), .bad_signal(bad_signal[14]), .bad_mole(Bad_mole[14]), 
        .hit_reg(Hit_point[14]), .cell_score(cell_score[149:140]), .enable(n12), .game_reset(n10), .clk(Clk) );
  Mole_Cell_0 \M[15]  ( .good_signal(good_signal[15]), .good_mole(
        Good_mole[15]), .bad_signal(bad_signal[15]), .bad_mole(Bad_mole[15]), 
        .hit_reg(Hit_point[15]), .cell_score(cell_score[159:150]), .enable(n12), .game_reset(n10), .clk(Clk) );
  Select_16_to_1 Select ( .cell_score(cell_score), .hit_reg(Hit_point), 
        .add_score(add_score) );
  Controller Control ( .reset(Reset), .game_start(Game_start), .clk(Clk), 
        .generator_clk(generator_clk), .decoder_enable(decoder_enable), 
        .reg_enable(reg_enable), .game_reset(game_reset), .countdown(Countdown) );
  Mole_DW01_add_0 add_175_2 ( .A(Score), .B(add_score), .CI(1'b0), .SUM({N25, 
        N24, N23, N22, N21, N20, N19, N18, N17, N16}) );
  Mole_DW01_add_1 add_175 ( .A({Score[9], Score}), .B({add_score[9], add_score}), .CI(1'b0), .SUM({N14, SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9}) );
  DFFRX1 \Score_reg[8]  ( .D(N34), .CK(Clk), .RN(n14), .Q(Score[8]) );
  DFFRX1 \Score_reg[7]  ( .D(N33), .CK(Clk), .RN(n14), .Q(Score[7]) );
  DFFRX1 \Score_reg[9]  ( .D(N35), .CK(Clk), .RN(n14), .Q(Score[9]) );
  DFFRX1 \Score_reg[6]  ( .D(N32), .CK(Clk), .RN(n14), .Q(Score[6]) );
  DFFRX1 \Score_reg[5]  ( .D(N31), .CK(Clk), .RN(n14), .Q(Score[5]) );
  DFFRX1 \Score_reg[4]  ( .D(N30), .CK(Clk), .RN(n14), .Q(Score[4]) );
  DFFRX1 \Score_reg[3]  ( .D(N29), .CK(Clk), .RN(n14), .Q(Score[3]) );
  DFFRX1 \Score_reg[2]  ( .D(N28), .CK(Clk), .RN(n14), .Q(Score[2]) );
  DFFRX1 \Score_reg[1]  ( .D(N27), .CK(Clk), .RN(n14), .Q(Score[1]) );
  DFFRX1 \Score_reg[0]  ( .D(N26), .CK(Clk), .RN(n14), .Q(Score[0]) );
  CLKBUFX3 U18 ( .A(game_reset), .Y(n10) );
  CLKINVX1 U19 ( .A(n10), .Y(n14) );
  NOR2BX1 U20 ( .AN(N17), .B(N14), .Y(N27) );
  NOR2BX1 U21 ( .AN(N18), .B(N14), .Y(N28) );
  NOR2BX1 U22 ( .AN(N19), .B(N14), .Y(N29) );
  NOR2BX1 U23 ( .AN(N20), .B(N14), .Y(N30) );
  NOR2BX1 U24 ( .AN(N21), .B(N14), .Y(N31) );
  NOR2BX1 U25 ( .AN(N22), .B(N14), .Y(N32) );
  NOR2BX1 U26 ( .AN(N23), .B(N14), .Y(N33) );
  NOR2BX1 U27 ( .AN(N24), .B(N14), .Y(N34) );
  NOR2BX1 U28 ( .AN(N16), .B(N14), .Y(N26) );
  CLKBUFX3 U29 ( .A(reg_enable), .Y(n11) );
  CLKBUFX3 U30 ( .A(reg_enable), .Y(n12) );
  CLKBUFX3 U31 ( .A(generator_clk), .Y(n13) );
  NOR2BX1 U32 ( .AN(N25), .B(N14), .Y(N35) );
endmodule

