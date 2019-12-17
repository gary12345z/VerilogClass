/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : P-2019.03
// Date      : Mon Dec 16 19:30:22 2019
/////////////////////////////////////////////////////////////


module Merge_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [7:1] carry;

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
  XOR3X1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(SUM[7]) );
  CLKINVX1 U1 ( .A(B[0]), .Y(n2) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module Counter_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module Counter_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module Counter_DW01_inc_2 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module Counter_DW01_inc_3 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module Counter_DW01_inc_4 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module Counter_DW01_inc_5 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module Counter_test_1 ( rst, en, clk, gray_data, CNT1, CNT2, CNT3, CNT4, CNT5, 
        CNT6, test_si, test_se );
  input [7:0] gray_data;
  output [7:0] CNT1;
  output [7:0] CNT2;
  output [7:0] CNT3;
  output [7:0] CNT4;
  output [7:0] CNT5;
  output [7:0] CNT6;
  input rst, en, clk, test_si, test_se;
  wire   N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50,
         N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64,
         N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78,
         N79, N80, N81, N82, N83, N84, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n67, n68, n69, n70;

  Counter_DW01_inc_0 add_23 ( .A(CNT6), .SUM({N84, N83, N82, N81, N80, N79, 
        N78, N77}) );
  Counter_DW01_inc_1 add_22 ( .A(CNT5), .SUM({N76, N75, N74, N73, N72, N71, 
        N70, N69}) );
  Counter_DW01_inc_2 add_21 ( .A(CNT4), .SUM({N68, N67, N66, N65, N64, N63, 
        N62, N61}) );
  Counter_DW01_inc_3 add_20 ( .A(CNT3), .SUM({N60, N59, N58, N57, N56, N55, 
        N54, N53}) );
  Counter_DW01_inc_4 add_19 ( .A(CNT2), .SUM({N52, N51, N50, N49, N48, N47, 
        N46, N45}) );
  Counter_DW01_inc_5 add_18 ( .A(CNT1), .SUM({N44, N43, N42, N41, N40, N39, 
        N38, N37}) );
  CLKINVX1 U3 ( .A(n11), .Y(n10) );
  CLKINVX1 U4 ( .A(n13), .Y(n9) );
  CLKINVX1 U5 ( .A(n14), .Y(n8) );
  CLKINVX1 U6 ( .A(n16), .Y(n6) );
  CLKINVX1 U7 ( .A(n17), .Y(n5) );
  CLKINVX1 U8 ( .A(n15), .Y(n7) );
  CLKBUFX3 U9 ( .A(n70), .Y(n4) );
  CLKBUFX3 U10 ( .A(n70), .Y(n3) );
  CLKBUFX3 U11 ( .A(n70), .Y(n2) );
  CLKBUFX3 U12 ( .A(n70), .Y(n1) );
  NOR4BBX1 U13 ( .AN(en), .BN(n18), .C(gray_data[4]), .D(gray_data[3]), .Y(n12) );
  NOR3X1 U14 ( .A(gray_data[5]), .B(gray_data[7]), .C(gray_data[6]), .Y(n18)
         );
  NAND4X1 U15 ( .A(n12), .B(gray_data[1]), .C(n69), .D(n67), .Y(n11) );
  NAND4X1 U16 ( .A(gray_data[0]), .B(n12), .C(n68), .D(n67), .Y(n13) );
  NAND4X1 U17 ( .A(gray_data[2]), .B(n12), .C(gray_data[1]), .D(n69), .Y(n14)
         );
  NAND4X1 U18 ( .A(gray_data[2]), .B(n12), .C(n69), .D(n68), .Y(n16) );
  NAND4X1 U19 ( .A(gray_data[0]), .B(n12), .C(gray_data[1]), .D(n67), .Y(n17)
         );
  NAND4X1 U20 ( .A(gray_data[2]), .B(gray_data[0]), .C(n12), .D(n68), .Y(n15)
         );
  AO22X1 U21 ( .A0(CNT2[7]), .A1(n11), .B0(N52), .B1(n10), .Y(n19) );
  AO22X1 U22 ( .A0(CNT5[7]), .A1(n15), .B0(N76), .B1(n7), .Y(n43) );
  AO22X1 U23 ( .A0(CNT4[7]), .A1(n16), .B0(N68), .B1(n6), .Y(n51) );
  AO22X1 U24 ( .A0(CNT3[7]), .A1(n17), .B0(N60), .B1(n5), .Y(n59) );
  AO22X1 U25 ( .A0(CNT1[7]), .A1(n13), .B0(N44), .B1(n9), .Y(n27) );
  AO22X1 U26 ( .A0(CNT6[7]), .A1(n14), .B0(N84), .B1(n8), .Y(n35) );
  AO22X1 U27 ( .A0(CNT2[0]), .A1(n11), .B0(N45), .B1(n10), .Y(n26) );
  AO22X1 U28 ( .A0(CNT1[0]), .A1(n13), .B0(N37), .B1(n9), .Y(n34) );
  AO22X1 U29 ( .A0(CNT6[0]), .A1(n14), .B0(N77), .B1(n8), .Y(n42) );
  AO22X1 U30 ( .A0(CNT5[0]), .A1(n15), .B0(N69), .B1(n7), .Y(n50) );
  AO22X1 U31 ( .A0(CNT4[0]), .A1(n16), .B0(N61), .B1(n6), .Y(n58) );
  AO22X1 U32 ( .A0(CNT3[0]), .A1(n17), .B0(N53), .B1(n5), .Y(n66) );
  AO22X1 U33 ( .A0(CNT5[6]), .A1(n15), .B0(N75), .B1(n7), .Y(n44) );
  AO22X1 U34 ( .A0(CNT5[5]), .A1(n15), .B0(N74), .B1(n7), .Y(n45) );
  AO22X1 U35 ( .A0(CNT5[4]), .A1(n15), .B0(N73), .B1(n7), .Y(n46) );
  AO22X1 U36 ( .A0(CNT5[3]), .A1(n15), .B0(N72), .B1(n7), .Y(n47) );
  AO22X1 U37 ( .A0(CNT5[2]), .A1(n15), .B0(N71), .B1(n7), .Y(n48) );
  AO22X1 U38 ( .A0(CNT5[1]), .A1(n15), .B0(N70), .B1(n7), .Y(n49) );
  AO22X1 U39 ( .A0(CNT1[6]), .A1(n13), .B0(N43), .B1(n9), .Y(n28) );
  AO22X1 U40 ( .A0(CNT1[5]), .A1(n13), .B0(N42), .B1(n9), .Y(n29) );
  AO22X1 U41 ( .A0(CNT1[4]), .A1(n13), .B0(N41), .B1(n9), .Y(n30) );
  AO22X1 U42 ( .A0(CNT1[3]), .A1(n13), .B0(N40), .B1(n9), .Y(n31) );
  AO22X1 U43 ( .A0(CNT1[2]), .A1(n13), .B0(N39), .B1(n9), .Y(n32) );
  AO22X1 U44 ( .A0(CNT1[1]), .A1(n13), .B0(N38), .B1(n9), .Y(n33) );
  AO22X1 U45 ( .A0(CNT6[6]), .A1(n14), .B0(N83), .B1(n8), .Y(n36) );
  AO22X1 U46 ( .A0(CNT6[5]), .A1(n14), .B0(N82), .B1(n8), .Y(n37) );
  AO22X1 U47 ( .A0(CNT6[4]), .A1(n14), .B0(N81), .B1(n8), .Y(n38) );
  AO22X1 U48 ( .A0(CNT6[3]), .A1(n14), .B0(N80), .B1(n8), .Y(n39) );
  AO22X1 U49 ( .A0(CNT6[2]), .A1(n14), .B0(N79), .B1(n8), .Y(n40) );
  AO22X1 U50 ( .A0(CNT6[1]), .A1(n14), .B0(N78), .B1(n8), .Y(n41) );
  AO22X1 U51 ( .A0(CNT4[6]), .A1(n16), .B0(N67), .B1(n6), .Y(n52) );
  AO22X1 U52 ( .A0(CNT4[5]), .A1(n16), .B0(N66), .B1(n6), .Y(n53) );
  AO22X1 U53 ( .A0(CNT4[4]), .A1(n16), .B0(N65), .B1(n6), .Y(n54) );
  AO22X1 U54 ( .A0(CNT4[3]), .A1(n16), .B0(N64), .B1(n6), .Y(n55) );
  AO22X1 U55 ( .A0(CNT4[2]), .A1(n16), .B0(N63), .B1(n6), .Y(n56) );
  AO22X1 U56 ( .A0(CNT4[1]), .A1(n16), .B0(N62), .B1(n6), .Y(n57) );
  AO22X1 U57 ( .A0(CNT3[6]), .A1(n17), .B0(N59), .B1(n5), .Y(n60) );
  AO22X1 U58 ( .A0(CNT3[5]), .A1(n17), .B0(N58), .B1(n5), .Y(n61) );
  AO22X1 U59 ( .A0(CNT3[4]), .A1(n17), .B0(N57), .B1(n5), .Y(n62) );
  AO22X1 U60 ( .A0(CNT3[3]), .A1(n17), .B0(N56), .B1(n5), .Y(n63) );
  AO22X1 U61 ( .A0(CNT3[2]), .A1(n17), .B0(N55), .B1(n5), .Y(n64) );
  AO22X1 U62 ( .A0(CNT3[1]), .A1(n17), .B0(N54), .B1(n5), .Y(n65) );
  AO22X1 U63 ( .A0(CNT2[6]), .A1(n11), .B0(N51), .B1(n10), .Y(n20) );
  AO22X1 U64 ( .A0(CNT2[5]), .A1(n11), .B0(N50), .B1(n10), .Y(n21) );
  AO22X1 U65 ( .A0(CNT2[4]), .A1(n11), .B0(N49), .B1(n10), .Y(n22) );
  AO22X1 U66 ( .A0(CNT2[3]), .A1(n11), .B0(N48), .B1(n10), .Y(n23) );
  AO22X1 U67 ( .A0(CNT2[2]), .A1(n11), .B0(N47), .B1(n10), .Y(n24) );
  AO22X1 U68 ( .A0(CNT2[1]), .A1(n11), .B0(N46), .B1(n10), .Y(n25) );
  CLKINVX1 U69 ( .A(gray_data[2]), .Y(n67) );
  CLKINVX1 U70 ( .A(gray_data[1]), .Y(n68) );
  CLKINVX1 U71 ( .A(gray_data[0]), .Y(n69) );
  CLKINVX1 U72 ( .A(rst), .Y(n70) );
  SDFFRXL \CNT3_reg[7]  ( .D(n59), .SI(CNT3[6]), .SE(test_se), .CK(clk), .RN(
        n1), .Q(CNT3[7]) );
  SDFFRXL \CNT4_reg[7]  ( .D(n51), .SI(CNT4[6]), .SE(test_se), .CK(clk), .RN(
        n2), .Q(CNT4[7]) );
  SDFFRXL \CNT5_reg[7]  ( .D(n43), .SI(CNT5[6]), .SE(test_se), .CK(clk), .RN(
        n2), .Q(CNT5[7]) );
  SDFFRXL \CNT2_reg[7]  ( .D(n19), .SI(CNT2[6]), .SE(test_se), .CK(clk), .RN(
        n4), .Q(CNT2[7]) );
  SDFFRXL \CNT6_reg[7]  ( .D(n35), .SI(CNT6[6]), .SE(test_se), .CK(clk), .RN(
        n3), .Q(CNT6[7]) );
  SDFFRXL \CNT1_reg[7]  ( .D(n27), .SI(CNT1[6]), .SE(test_se), .CK(clk), .RN(
        n4), .Q(CNT1[7]) );
  SDFFRXL \CNT6_reg[1]  ( .D(n41), .SI(CNT6[0]), .SE(test_se), .CK(clk), .RN(
        n3), .Q(CNT6[1]) );
  SDFFRXL \CNT6_reg[2]  ( .D(n40), .SI(CNT6[1]), .SE(test_se), .CK(clk), .RN(
        n3), .Q(CNT6[2]) );
  SDFFRXL \CNT6_reg[3]  ( .D(n39), .SI(CNT6[2]), .SE(test_se), .CK(clk), .RN(
        n3), .Q(CNT6[3]) );
  SDFFRXL \CNT6_reg[4]  ( .D(n38), .SI(CNT6[3]), .SE(test_se), .CK(clk), .RN(
        n3), .Q(CNT6[4]) );
  SDFFRXL \CNT6_reg[5]  ( .D(n37), .SI(CNT6[4]), .SE(test_se), .CK(clk), .RN(
        n3), .Q(CNT6[5]) );
  SDFFRXL \CNT6_reg[6]  ( .D(n36), .SI(CNT6[5]), .SE(test_se), .CK(clk), .RN(
        n3), .Q(CNT6[6]) );
  SDFFRXL \CNT1_reg[1]  ( .D(n33), .SI(CNT1[0]), .SE(test_se), .CK(clk), .RN(
        n3), .Q(CNT1[1]) );
  SDFFRXL \CNT1_reg[2]  ( .D(n32), .SI(CNT1[1]), .SE(test_se), .CK(clk), .RN(
        n3), .Q(CNT1[2]) );
  SDFFRXL \CNT1_reg[3]  ( .D(n31), .SI(CNT1[2]), .SE(test_se), .CK(clk), .RN(
        n3), .Q(CNT1[3]) );
  SDFFRXL \CNT1_reg[4]  ( .D(n30), .SI(CNT1[3]), .SE(test_se), .CK(clk), .RN(
        n4), .Q(CNT1[4]) );
  SDFFRXL \CNT1_reg[5]  ( .D(n29), .SI(CNT1[4]), .SE(test_se), .CK(clk), .RN(
        n4), .Q(CNT1[5]) );
  SDFFRXL \CNT1_reg[6]  ( .D(n28), .SI(CNT1[5]), .SE(test_se), .CK(clk), .RN(
        n4), .Q(CNT1[6]) );
  SDFFRXL \CNT3_reg[1]  ( .D(n65), .SI(CNT3[0]), .SE(test_se), .CK(clk), .RN(
        n1), .Q(CNT3[1]) );
  SDFFRXL \CNT3_reg[2]  ( .D(n64), .SI(CNT3[1]), .SE(test_se), .CK(clk), .RN(
        n1), .Q(CNT3[2]) );
  SDFFRXL \CNT3_reg[3]  ( .D(n63), .SI(CNT3[2]), .SE(test_se), .CK(clk), .RN(
        n1), .Q(CNT3[3]) );
  SDFFRXL \CNT3_reg[4]  ( .D(n62), .SI(CNT3[3]), .SE(test_se), .CK(clk), .RN(
        n1), .Q(CNT3[4]) );
  SDFFRXL \CNT3_reg[5]  ( .D(n61), .SI(CNT3[4]), .SE(test_se), .CK(clk), .RN(
        n1), .Q(CNT3[5]) );
  SDFFRXL \CNT3_reg[6]  ( .D(n60), .SI(CNT3[5]), .SE(test_se), .CK(clk), .RN(
        n1), .Q(CNT3[6]) );
  SDFFRXL \CNT4_reg[1]  ( .D(n57), .SI(CNT4[0]), .SE(test_se), .CK(clk), .RN(
        n1), .Q(CNT4[1]) );
  SDFFRXL \CNT4_reg[2]  ( .D(n56), .SI(CNT4[1]), .SE(test_se), .CK(clk), .RN(
        n1), .Q(CNT4[2]) );
  SDFFRXL \CNT4_reg[3]  ( .D(n55), .SI(CNT4[2]), .SE(test_se), .CK(clk), .RN(
        n1), .Q(CNT4[3]) );
  SDFFRXL \CNT4_reg[4]  ( .D(n54), .SI(CNT4[3]), .SE(test_se), .CK(clk), .RN(
        n2), .Q(CNT4[4]) );
  SDFFRXL \CNT4_reg[5]  ( .D(n53), .SI(CNT4[4]), .SE(test_se), .CK(clk), .RN(
        n2), .Q(CNT4[5]) );
  SDFFRXL \CNT4_reg[6]  ( .D(n52), .SI(CNT4[5]), .SE(test_se), .CK(clk), .RN(
        n2), .Q(CNT4[6]) );
  SDFFRXL \CNT5_reg[1]  ( .D(n49), .SI(CNT5[0]), .SE(test_se), .CK(clk), .RN(
        n2), .Q(CNT5[1]) );
  SDFFRXL \CNT5_reg[2]  ( .D(n48), .SI(CNT5[1]), .SE(test_se), .CK(clk), .RN(
        n2), .Q(CNT5[2]) );
  SDFFRXL \CNT5_reg[3]  ( .D(n47), .SI(CNT5[2]), .SE(test_se), .CK(clk), .RN(
        n2), .Q(CNT5[3]) );
  SDFFRXL \CNT5_reg[4]  ( .D(n46), .SI(CNT5[3]), .SE(test_se), .CK(clk), .RN(
        n2), .Q(CNT5[4]) );
  SDFFRXL \CNT5_reg[5]  ( .D(n45), .SI(CNT5[4]), .SE(test_se), .CK(clk), .RN(
        n2), .Q(CNT5[5]) );
  SDFFRXL \CNT5_reg[6]  ( .D(n44), .SI(CNT5[5]), .SE(test_se), .CK(clk), .RN(
        n2), .Q(CNT5[6]) );
  SDFFRXL \CNT2_reg[1]  ( .D(n25), .SI(CNT2[0]), .SE(test_se), .CK(clk), .RN(
        n4), .Q(CNT2[1]) );
  SDFFRXL \CNT2_reg[2]  ( .D(n24), .SI(CNT2[1]), .SE(test_se), .CK(clk), .RN(
        n4), .Q(CNT2[2]) );
  SDFFRXL \CNT2_reg[3]  ( .D(n23), .SI(CNT2[2]), .SE(test_se), .CK(clk), .RN(
        n4), .Q(CNT2[3]) );
  SDFFRXL \CNT2_reg[4]  ( .D(n22), .SI(CNT2[3]), .SE(test_se), .CK(clk), .RN(
        n4), .Q(CNT2[4]) );
  SDFFRXL \CNT2_reg[5]  ( .D(n21), .SI(CNT2[4]), .SE(test_se), .CK(clk), .RN(
        n4), .Q(CNT2[5]) );
  SDFFRXL \CNT2_reg[6]  ( .D(n20), .SI(CNT2[5]), .SE(test_se), .CK(clk), .RN(
        n4), .Q(CNT2[6]) );
  SDFFRXL \CNT6_reg[0]  ( .D(n42), .SI(CNT5[7]), .SE(test_se), .CK(clk), .RN(
        n3), .Q(CNT6[0]) );
  SDFFRXL \CNT1_reg[0]  ( .D(n34), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        n3), .Q(CNT1[0]) );
  SDFFRXL \CNT3_reg[0]  ( .D(n66), .SI(CNT2[7]), .SE(test_se), .CK(clk), .RN(
        n1), .Q(CNT3[0]) );
  SDFFRXL \CNT4_reg[0]  ( .D(n58), .SI(CNT3[7]), .SE(test_se), .CK(clk), .RN(
        n1), .Q(CNT4[0]) );
  SDFFRXL \CNT5_reg[0]  ( .D(n50), .SI(CNT4[7]), .SE(test_se), .CK(clk), .RN(
        n2), .Q(CNT5[0]) );
  SDFFRXL \CNT2_reg[0]  ( .D(n26), .SI(CNT1[7]), .SE(test_se), .CK(clk), .RN(
        n4), .Q(CNT2[0]) );
endmodule


module SortCell_0 ( data_in, flag_in, en, data_out, flag_out );
  input [15:0] data_in;
  input [11:0] flag_in;
  output [15:0] data_out;
  output [11:0] flag_out;
  input en;
  wire   N1, n36, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n37, n38, n39, n40, n41, n42, n43,
         n44, n45;

  OAI22XL U1 ( .A0(n1), .A1(n41), .B0(n3), .B1(n20), .Y(data_out[3]) );
  CLKAND2X3 U2 ( .A(data_in[15]), .B(n17), .Y(n8) );
  OAI22XL U3 ( .A0(n1), .A1(n45), .B0(n3), .B1(n17), .Y(data_out[7]) );
  BUFX2 U4 ( .A(n36), .Y(n1) );
  INVX1 U5 ( .A(data_in[7]), .Y(n17) );
  OAI22X1 U6 ( .A0(n1), .A1(n16), .B0(n3), .B1(n29), .Y(data_out[1]) );
  INVXL U7 ( .A(n3), .Y(n2) );
  OAI2BB2XL U8 ( .B0(n3), .B1(n21), .A0N(n3), .A1N(data_in[10]), .Y(
        data_out[2]) );
  AOI2BB1X1 U9 ( .A0N(n16), .A1N(data_in[1]), .B0(data_in[8]), .Y(n7) );
  CLKINVX1 U10 ( .A(data_in[9]), .Y(n16) );
  CLKINVX4 U11 ( .A(n1), .Y(n3) );
  OAI22XL U12 ( .A0(n1), .A1(n44), .B0(n3), .B1(n18), .Y(data_out[6]) );
  OAI22XL U13 ( .A0(n1), .A1(n42), .B0(n3), .B1(n30), .Y(data_out[4]) );
  OAI22XL U14 ( .A0(n1), .A1(n43), .B0(n3), .B1(n31), .Y(data_out[5]) );
  OAI22XL U15 ( .A0(n1), .A1(n39), .B0(n3), .B1(n28), .Y(data_out[0]) );
  NAND2XL U16 ( .A(en), .B(N1), .Y(n36) );
  INVXL U17 ( .A(data_in[3]), .Y(n20) );
  INVX1 U18 ( .A(data_in[2]), .Y(n21) );
  INVXL U19 ( .A(n9), .Y(n19) );
  INVX1 U20 ( .A(data_in[6]), .Y(n18) );
  INVXL U21 ( .A(data_in[1]), .Y(n29) );
  INVXL U22 ( .A(data_in[13]), .Y(n43) );
  INVXL U23 ( .A(data_in[11]), .Y(n41) );
  INVXL U24 ( .A(data_in[5]), .Y(n31) );
  INVXL U25 ( .A(data_in[10]), .Y(n40) );
  INVXL U26 ( .A(data_in[4]), .Y(n30) );
  INVXL U27 ( .A(data_in[14]), .Y(n44) );
  INVXL U28 ( .A(data_in[15]), .Y(n45) );
  INVXL U29 ( .A(data_in[12]), .Y(n42) );
  OAI22XL U30 ( .A0(n2), .A1(n29), .B0(n3), .B1(n16), .Y(data_out[9]) );
  OAI22XL U31 ( .A0(n2), .A1(n28), .B0(n3), .B1(n39), .Y(data_out[8]) );
  OAI22XL U32 ( .A0(n2), .A1(n17), .B0(n3), .B1(n45), .Y(data_out[15]) );
  OAI22XL U33 ( .A0(n2), .A1(n18), .B0(n3), .B1(n44), .Y(data_out[14]) );
  OAI22XL U34 ( .A0(n2), .A1(n31), .B0(n3), .B1(n43), .Y(data_out[13]) );
  OAI22XL U35 ( .A0(n2), .A1(n30), .B0(n3), .B1(n42), .Y(data_out[12]) );
  OAI22XL U36 ( .A0(n2), .A1(n20), .B0(n3), .B1(n41), .Y(data_out[11]) );
  OAI22XL U37 ( .A0(n2), .A1(n21), .B0(n3), .B1(n40), .Y(data_out[10]) );
  OAI22XL U38 ( .A0(n2), .A1(n25), .B0(n3), .B1(n35), .Y(flag_out[9]) );
  OAI22XL U39 ( .A0(n2), .A1(n24), .B0(n3), .B1(n34), .Y(flag_out[8]) );
  OAI22XL U40 ( .A0(n2), .A1(n23), .B0(n3), .B1(n33), .Y(flag_out[7]) );
  OAI22XL U41 ( .A0(n2), .A1(n22), .B0(n3), .B1(n32), .Y(flag_out[6]) );
  OAI22XL U42 ( .A0(n2), .A1(n27), .B0(n3), .B1(n38), .Y(flag_out[11]) );
  OAI22XL U43 ( .A0(n2), .A1(n26), .B0(n3), .B1(n37), .Y(flag_out[10]) );
  OAI22XL U44 ( .A0(n35), .A1(n2), .B0(n3), .B1(n25), .Y(flag_out[3]) );
  OAI22XL U45 ( .A0(n2), .A1(n38), .B0(n3), .B1(n27), .Y(flag_out[5]) );
  OAI22XL U46 ( .A0(n2), .A1(n37), .B0(n3), .B1(n26), .Y(flag_out[4]) );
  OAI22XL U47 ( .A0(n2), .A1(n34), .B0(n3), .B1(n24), .Y(flag_out[2]) );
  OAI22XL U48 ( .A0(n2), .A1(n33), .B0(n3), .B1(n23), .Y(flag_out[1]) );
  OAI22XL U49 ( .A0(n2), .A1(n32), .B0(n3), .B1(n22), .Y(flag_out[0]) );
  CLKINVX1 U50 ( .A(data_in[8]), .Y(n39) );
  CLKINVX1 U51 ( .A(data_in[0]), .Y(n28) );
  CLKINVX1 U52 ( .A(flag_in[9]), .Y(n35) );
  CLKINVX1 U53 ( .A(flag_in[5]), .Y(n27) );
  CLKINVX1 U54 ( .A(flag_in[11]), .Y(n38) );
  CLKINVX1 U55 ( .A(flag_in[4]), .Y(n26) );
  CLKINVX1 U56 ( .A(flag_in[10]), .Y(n37) );
  CLKINVX1 U57 ( .A(flag_in[3]), .Y(n25) );
  CLKINVX1 U58 ( .A(flag_in[2]), .Y(n24) );
  CLKINVX1 U59 ( .A(flag_in[8]), .Y(n34) );
  CLKINVX1 U60 ( .A(flag_in[1]), .Y(n23) );
  CLKINVX1 U61 ( .A(flag_in[7]), .Y(n33) );
  CLKINVX1 U62 ( .A(flag_in[0]), .Y(n22) );
  CLKINVX1 U63 ( .A(flag_in[6]), .Y(n32) );
  NOR2BX1 U64 ( .AN(data_in[11]), .B(data_in[3]), .Y(n4) );
  AOI21X1 U65 ( .A0(data_in[10]), .A1(n21), .B0(n4), .Y(n5) );
  OAI32X1 U66 ( .A0(n21), .A1(data_in[10]), .A2(n4), .B0(data_in[11]), .B1(n20), .Y(n6) );
  NAND2BX1 U67 ( .AN(data_in[5]), .B(data_in[13]), .Y(n10) );
  OAI221XL U68 ( .A0(data_in[4]), .A1(n42), .B0(n5), .B1(n6), .C0(n10), .Y(n15) );
  AOI221XL U69 ( .A0(data_in[1]), .A1(n16), .B0(n7), .B1(data_in[0]), .C0(n6), 
        .Y(n14) );
  AO21X1 U70 ( .A0(n18), .A1(data_in[14]), .B0(n8), .Y(n13) );
  OAI32X1 U71 ( .A0(n18), .A1(data_in[14]), .A2(n8), .B0(data_in[15]), .B1(n17), .Y(n9) );
  AOI32X1 U72 ( .A0(data_in[4]), .A1(n42), .A2(n10), .B0(n43), .B1(data_in[5]), 
        .Y(n11) );
  AO22X1 U73 ( .A0(n19), .A1(n11), .B0(n13), .B1(n19), .Y(n12) );
  OAI31XL U74 ( .A0(n15), .A1(n14), .A2(n13), .B0(n12), .Y(N1) );
endmodule


module SortCell_4 ( data_in, flag_in, en, data_out, flag_out );
  input [15:0] data_in;
  input [11:0] flag_in;
  output [15:0] data_out;
  output [11:0] flag_out;
  input en;
  wire   N1, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51;

  INVX3 U1 ( .A(n6), .Y(n5) );
  INVX1 U2 ( .A(n14), .Y(n25) );
  OAI31XL U3 ( .A0(n20), .A1(n19), .A2(n18), .B0(n17), .Y(N1) );
  INVX3 U4 ( .A(n3), .Y(n6) );
  OAI22XL U5 ( .A0(n5), .A1(n50), .B0(n7), .B1(n24), .Y(data_out[7]) );
  OAI22XL U6 ( .A0(n5), .A1(n48), .B0(n6), .B1(n26), .Y(data_out[3]) );
  OR2X1 U7 ( .A(n4), .B(n26), .Y(n1) );
  CLKINVX1 U8 ( .A(data_in[3]), .Y(n26) );
  OAI22XL U9 ( .A0(n5), .A1(n23), .B0(n8), .B1(n34), .Y(data_out[1]) );
  OAI22XL U10 ( .A0(n5), .A1(n24), .B0(n6), .B1(n50), .Y(data_out[15]) );
  CLKAND2X3 U11 ( .A(data_in[15]), .B(n24), .Y(n13) );
  OR2XL U12 ( .A(n6), .B(n48), .Y(n2) );
  NAND2X2 U13 ( .A(n1), .B(n2), .Y(data_out[11]) );
  INVX1 U14 ( .A(n6), .Y(n4) );
  CLKINVX1 U15 ( .A(data_in[7]), .Y(n24) );
  OAI221XL U16 ( .A0(data_in[4]), .A1(n22), .B0(n11), .B1(n10), .C0(n15), .Y(
        n20) );
  OAI22XL U17 ( .A0(n5), .A1(n38), .B0(n8), .B1(n21), .Y(data_out[13]) );
  OAI22XL U18 ( .A0(n5), .A1(n47), .B0(n7), .B1(n35), .Y(data_out[2]) );
  INVXL U19 ( .A(n3), .Y(n7) );
  OAI22XL U20 ( .A0(n4), .A1(n34), .B0(n8), .B1(n23), .Y(data_out[9]) );
  OAI22XL U21 ( .A0(n5), .A1(n37), .B0(n8), .B1(n22), .Y(data_out[12]) );
  OAI22XL U22 ( .A0(n5), .A1(n39), .B0(n6), .B1(n49), .Y(data_out[14]) );
  OAI22XL U23 ( .A0(n5), .A1(n35), .B0(n6), .B1(n47), .Y(data_out[10]) );
  OAI22XL U24 ( .A0(n4), .A1(n49), .B0(n7), .B1(n39), .Y(data_out[6]) );
  OAI22XL U25 ( .A0(n5), .A1(n22), .B0(n7), .B1(n37), .Y(data_out[4]) );
  OAI22XL U26 ( .A0(n5), .A1(n21), .B0(n7), .B1(n38), .Y(data_out[5]) );
  OAI22XL U27 ( .A0(n4), .A1(n46), .B0(n6), .B1(n33), .Y(data_out[0]) );
  CLKINVX1 U28 ( .A(n3), .Y(n8) );
  INVXL U29 ( .A(data_in[11]), .Y(n48) );
  INVXL U30 ( .A(data_in[15]), .Y(n50) );
  AOI2BB1XL U31 ( .A0N(n23), .A1N(data_in[1]), .B0(data_in[8]), .Y(n12) );
  INVX1 U32 ( .A(data_in[12]), .Y(n22) );
  NAND2X1 U33 ( .A(en), .B(N1), .Y(n51) );
  INVX1 U34 ( .A(data_in[9]), .Y(n23) );
  INVXL U35 ( .A(data_in[13]), .Y(n21) );
  INVXL U36 ( .A(data_in[1]), .Y(n34) );
  INVXL U37 ( .A(data_in[10]), .Y(n47) );
  INVXL U38 ( .A(data_in[14]), .Y(n49) );
  INVXL U39 ( .A(data_in[5]), .Y(n38) );
  INVXL U40 ( .A(data_in[2]), .Y(n35) );
  INVXL U41 ( .A(data_in[4]), .Y(n37) );
  INVXL U42 ( .A(data_in[8]), .Y(n46) );
  INVXL U43 ( .A(data_in[0]), .Y(n33) );
  OAI22XL U44 ( .A0(n5), .A1(n33), .B0(n7), .B1(n46), .Y(data_out[8]) );
  CLKBUFX3 U45 ( .A(n51), .Y(n3) );
  OAI22XL U46 ( .A0(n43), .A1(n5), .B0(n8), .B1(n30), .Y(flag_out[3]) );
  OAI22XL U47 ( .A0(n5), .A1(n32), .B0(n7), .B1(n45), .Y(flag_out[11]) );
  OAI22XL U48 ( .A0(n5), .A1(n31), .B0(n6), .B1(n44), .Y(flag_out[10]) );
  OAI22XL U49 ( .A0(n5), .A1(n30), .B0(n8), .B1(n43), .Y(flag_out[9]) );
  OAI22XL U50 ( .A0(n4), .A1(n29), .B0(n8), .B1(n42), .Y(flag_out[8]) );
  OAI22XL U51 ( .A0(n5), .A1(n28), .B0(n8), .B1(n41), .Y(flag_out[7]) );
  OAI22XL U52 ( .A0(n5), .A1(n27), .B0(n8), .B1(n40), .Y(flag_out[6]) );
  OAI22XL U53 ( .A0(n5), .A1(n45), .B0(n8), .B1(n32), .Y(flag_out[5]) );
  OAI22XL U54 ( .A0(n4), .A1(n44), .B0(n8), .B1(n31), .Y(flag_out[4]) );
  OAI22XL U55 ( .A0(n5), .A1(n42), .B0(n8), .B1(n29), .Y(flag_out[2]) );
  OAI22XL U56 ( .A0(n5), .A1(n41), .B0(n8), .B1(n28), .Y(flag_out[1]) );
  OAI22XL U57 ( .A0(n4), .A1(n40), .B0(n6), .B1(n27), .Y(flag_out[0]) );
  INVXL U58 ( .A(data_in[6]), .Y(n39) );
  CLKINVX1 U59 ( .A(flag_in[9]), .Y(n43) );
  CLKINVX1 U60 ( .A(flag_in[5]), .Y(n32) );
  CLKINVX1 U61 ( .A(flag_in[11]), .Y(n45) );
  CLKINVX1 U62 ( .A(flag_in[4]), .Y(n31) );
  CLKINVX1 U63 ( .A(flag_in[10]), .Y(n44) );
  CLKINVX1 U64 ( .A(flag_in[3]), .Y(n30) );
  CLKINVX1 U65 ( .A(flag_in[2]), .Y(n29) );
  CLKINVX1 U66 ( .A(flag_in[8]), .Y(n42) );
  CLKINVX1 U67 ( .A(flag_in[1]), .Y(n28) );
  CLKINVX1 U68 ( .A(flag_in[7]), .Y(n41) );
  CLKINVX1 U69 ( .A(flag_in[0]), .Y(n27) );
  CLKINVX1 U70 ( .A(flag_in[6]), .Y(n40) );
  AO22X4 U71 ( .A0(n25), .A1(n16), .B0(n18), .B1(n25), .Y(n17) );
  NOR2BX1 U72 ( .AN(data_in[11]), .B(data_in[3]), .Y(n9) );
  AOI21X1 U73 ( .A0(data_in[10]), .A1(n35), .B0(n9), .Y(n10) );
  OAI32X1 U74 ( .A0(n35), .A1(data_in[10]), .A2(n9), .B0(data_in[11]), .B1(n26), .Y(n11) );
  NAND2BX1 U75 ( .AN(data_in[5]), .B(data_in[13]), .Y(n15) );
  AOI221XL U76 ( .A0(data_in[1]), .A1(n23), .B0(n12), .B1(data_in[0]), .C0(n11), .Y(n19) );
  AO21X1 U77 ( .A0(n39), .A1(data_in[14]), .B0(n13), .Y(n18) );
  OAI32X1 U78 ( .A0(n39), .A1(data_in[14]), .A2(n13), .B0(data_in[15]), .B1(
        n24), .Y(n14) );
  AOI32X1 U79 ( .A0(data_in[4]), .A1(n22), .A2(n15), .B0(n21), .B1(data_in[5]), 
        .Y(n16) );
endmodule


module SortCell_3 ( data_in, flag_in, en, data_out, flag_out );
  input [15:0] data_in;
  input [11:0] flag_in;
  output [15:0] data_out;
  output [11:0] flag_out;
  input en;
  wire   N1, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50;

  CLKINVX1 U1 ( .A(n3), .Y(n6) );
  OR2X1 U2 ( .A(n1), .B(n2), .Y(data_out[15]) );
  OAI31X1 U3 ( .A0(n19), .A1(n18), .A2(n17), .B0(n16), .Y(N1) );
  INVX1 U4 ( .A(n3), .Y(n7) );
  NOR2XL U5 ( .A(n5), .B(n37), .Y(n1) );
  NOR2XL U6 ( .A(n7), .B(n49), .Y(n2) );
  INVX1 U7 ( .A(data_in[7]), .Y(n37) );
  OAI22XL U8 ( .A0(n5), .A1(n24), .B0(n7), .B1(n47), .Y(data_out[11]) );
  AOI2BB1XL U9 ( .A0N(n45), .A1N(data_in[1]), .B0(data_in[8]), .Y(n11) );
  NAND2X1 U10 ( .A(en), .B(N1), .Y(n50) );
  OAI22XL U11 ( .A0(n5), .A1(n34), .B0(n7), .B1(n21), .Y(data_out[12]) );
  OAI22XL U12 ( .A0(n5), .A1(n35), .B0(n7), .B1(n20), .Y(data_out[13]) );
  OAI22XL U13 ( .A0(n4), .A1(n25), .B0(n7), .B1(n46), .Y(data_out[10]) );
  OAI22XL U14 ( .A0(n4), .A1(n22), .B0(n7), .B1(n48), .Y(data_out[14]) );
  INVXL U15 ( .A(data_in[3]), .Y(n24) );
  INVXL U16 ( .A(data_in[13]), .Y(n20) );
  AO22X4 U17 ( .A0(n23), .A1(n15), .B0(n17), .B1(n23), .Y(n16) );
  AO21XL U18 ( .A0(n22), .A1(data_in[14]), .B0(n12), .Y(n17) );
  INVX1 U19 ( .A(data_in[2]), .Y(n25) );
  INVXL U20 ( .A(data_in[10]), .Y(n46) );
  INVXL U21 ( .A(data_in[15]), .Y(n49) );
  INVXL U22 ( .A(data_in[11]), .Y(n47) );
  INVX1 U23 ( .A(data_in[12]), .Y(n21) );
  INVX1 U24 ( .A(data_in[6]), .Y(n22) );
  INVXL U25 ( .A(data_in[4]), .Y(n34) );
  INVXL U26 ( .A(data_in[5]), .Y(n35) );
  INVXL U27 ( .A(data_in[14]), .Y(n48) );
  INVXL U28 ( .A(data_in[1]), .Y(n33) );
  INVXL U29 ( .A(data_in[8]), .Y(n44) );
  INVXL U30 ( .A(data_in[0]), .Y(n32) );
  CLKINVX1 U31 ( .A(n6), .Y(n4) );
  CLKINVX1 U32 ( .A(n6), .Y(n5) );
  OAI22XL U33 ( .A0(n4), .A1(n33), .B0(n7), .B1(n45), .Y(data_out[9]) );
  OAI22XL U34 ( .A0(n4), .A1(n32), .B0(n7), .B1(n44), .Y(data_out[8]) );
  CLKBUFX3 U35 ( .A(n50), .Y(n3) );
  OAI22XL U36 ( .A0(n4), .A1(n20), .B0(n7), .B1(n35), .Y(data_out[5]) );
  OAI22XL U37 ( .A0(n4), .A1(n21), .B0(n7), .B1(n34), .Y(data_out[4]) );
  OAI22XL U38 ( .A0(n4), .A1(n47), .B0(n7), .B1(n24), .Y(data_out[3]) );
  OAI22XL U39 ( .A0(n5), .A1(n46), .B0(n7), .B1(n25), .Y(data_out[2]) );
  OAI22XL U40 ( .A0(n4), .A1(n45), .B0(n7), .B1(n33), .Y(data_out[1]) );
  OAI22XL U41 ( .A0(n4), .A1(n44), .B0(n6), .B1(n32), .Y(data_out[0]) );
  OAI22XL U42 ( .A0(n5), .A1(n49), .B0(n7), .B1(n37), .Y(data_out[7]) );
  OAI22XL U43 ( .A0(n4), .A1(n48), .B0(n7), .B1(n22), .Y(data_out[6]) );
  OAI22XL U44 ( .A0(n4), .A1(n43), .B0(n6), .B1(n31), .Y(flag_out[5]) );
  OAI22XL U45 ( .A0(n4), .A1(n42), .B0(n6), .B1(n30), .Y(flag_out[4]) );
  OAI22XL U46 ( .A0(n41), .A1(n5), .B0(n6), .B1(n29), .Y(flag_out[3]) );
  OAI22XL U47 ( .A0(n4), .A1(n40), .B0(n6), .B1(n28), .Y(flag_out[2]) );
  OAI22XL U48 ( .A0(n4), .A1(n39), .B0(n6), .B1(n27), .Y(flag_out[1]) );
  OAI22XL U49 ( .A0(n4), .A1(n38), .B0(n7), .B1(n26), .Y(flag_out[0]) );
  OAI22XL U50 ( .A0(n4), .A1(n31), .B0(n7), .B1(n43), .Y(flag_out[11]) );
  OAI22XL U51 ( .A0(n4), .A1(n30), .B0(n7), .B1(n42), .Y(flag_out[10]) );
  OAI22XL U52 ( .A0(n4), .A1(n29), .B0(n6), .B1(n41), .Y(flag_out[9]) );
  OAI22XL U53 ( .A0(n4), .A1(n28), .B0(n6), .B1(n40), .Y(flag_out[8]) );
  OAI22XL U54 ( .A0(n4), .A1(n27), .B0(n6), .B1(n39), .Y(flag_out[7]) );
  OAI22XL U55 ( .A0(n5), .A1(n26), .B0(n6), .B1(n38), .Y(flag_out[6]) );
  OAI221XL U56 ( .A0(data_in[4]), .A1(n21), .B0(n9), .B1(n10), .C0(n14), .Y(
        n19) );
  CLKINVX1 U57 ( .A(n13), .Y(n23) );
  OAI32X1 U58 ( .A0(n22), .A1(data_in[14]), .A2(n12), .B0(data_in[15]), .B1(
        n37), .Y(n13) );
  AND2X2 U59 ( .A(data_in[15]), .B(n37), .Y(n12) );
  INVXL U60 ( .A(data_in[9]), .Y(n45) );
  CLKINVX1 U61 ( .A(flag_in[9]), .Y(n41) );
  CLKINVX1 U62 ( .A(flag_in[11]), .Y(n43) );
  CLKINVX1 U63 ( .A(flag_in[5]), .Y(n31) );
  CLKINVX1 U64 ( .A(flag_in[10]), .Y(n42) );
  CLKINVX1 U65 ( .A(flag_in[4]), .Y(n30) );
  CLKINVX1 U66 ( .A(flag_in[3]), .Y(n29) );
  CLKINVX1 U67 ( .A(flag_in[8]), .Y(n40) );
  CLKINVX1 U68 ( .A(flag_in[2]), .Y(n28) );
  CLKINVX1 U69 ( .A(flag_in[7]), .Y(n39) );
  CLKINVX1 U70 ( .A(flag_in[1]), .Y(n27) );
  CLKINVX1 U71 ( .A(flag_in[6]), .Y(n38) );
  CLKINVX1 U72 ( .A(flag_in[0]), .Y(n26) );
  NOR2BX1 U73 ( .AN(data_in[11]), .B(data_in[3]), .Y(n8) );
  AOI21X1 U74 ( .A0(data_in[10]), .A1(n25), .B0(n8), .Y(n9) );
  OAI32X1 U75 ( .A0(n25), .A1(data_in[10]), .A2(n8), .B0(data_in[11]), .B1(n24), .Y(n10) );
  NAND2BX1 U76 ( .AN(data_in[5]), .B(data_in[13]), .Y(n14) );
  AOI221XL U77 ( .A0(data_in[1]), .A1(n45), .B0(n11), .B1(data_in[0]), .C0(n10), .Y(n18) );
  AOI32X1 U78 ( .A0(data_in[4]), .A1(n21), .A2(n14), .B0(n20), .B1(data_in[5]), 
        .Y(n15) );
endmodule


module SortCell_2 ( data_in, flag_in, en, data_out, flag_out );
  input [15:0] data_in;
  input [11:0] flag_in;
  output [15:0] data_out;
  output [11:0] flag_out;
  input en;
  wire   N1, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56;

  INVX1 U1 ( .A(data_in[11]), .Y(n1) );
  CLKINVX1 U2 ( .A(n1), .Y(n2) );
  INVX1 U3 ( .A(n11), .Y(n3) );
  CLKINVX8 U4 ( .A(n11), .Y(n12) );
  NAND2X4 U5 ( .A(en), .B(N1), .Y(n56) );
  BUFX16 U6 ( .A(n56), .Y(n11) );
  AO22X1 U7 ( .A0(n33), .A1(n21), .B0(n23), .B1(n33), .Y(n22) );
  OR2X1 U8 ( .A(n7), .B(n8), .Y(data_out[11]) );
  CLKINVX1 U9 ( .A(data_in[7]), .Y(n29) );
  CLKINVX1 U10 ( .A(data_in[9]), .Y(n30) );
  INVX1 U11 ( .A(data_in[5]), .Y(n54) );
  NOR2BX2 U12 ( .AN(n2), .B(data_in[3]), .Y(n14) );
  OR2X1 U13 ( .A(data_in[4]), .B(n31), .Y(n4) );
  OR2XL U14 ( .A(n15), .B(n16), .Y(n5) );
  NAND3XL U15 ( .A(n4), .B(n5), .C(n20), .Y(n25) );
  AOI21XL U16 ( .A0(data_in[10]), .A1(n26), .B0(n14), .Y(n15) );
  OAI32XL U17 ( .A0(n26), .A1(data_in[10]), .A2(n14), .B0(n2), .B1(n27), .Y(
        n16) );
  NAND2BXL U18 ( .AN(data_in[5]), .B(data_in[13]), .Y(n20) );
  OAI31X1 U19 ( .A0(n25), .A1(n24), .A2(n23), .B0(n22), .Y(N1) );
  OAI22XL U20 ( .A0(n56), .A1(n31), .B0(n12), .B1(n55), .Y(data_out[4]) );
  AOI221XL U21 ( .A0(data_in[1]), .A1(n30), .B0(n17), .B1(data_in[0]), .C0(n16), .Y(n24) );
  CLKINVX1 U22 ( .A(n11), .Y(n6) );
  NAND2XL U23 ( .A(n9), .B(n10), .Y(data_out[0]) );
  NOR2X1 U24 ( .A(n56), .B(n27), .Y(n7) );
  NOR2XL U25 ( .A(n12), .B(n43), .Y(n8) );
  INVX1 U26 ( .A(n11), .Y(n13) );
  INVXL U27 ( .A(n2), .Y(n43) );
  OR2XL U28 ( .A(n56), .B(n45), .Y(n9) );
  OR2XL U29 ( .A(n13), .B(n53), .Y(n10) );
  OAI22XL U30 ( .A0(n56), .A1(n52), .B0(n12), .B1(n30), .Y(data_out[9]) );
  INVXL U31 ( .A(data_in[13]), .Y(n32) );
  INVXL U32 ( .A(data_in[3]), .Y(n27) );
  INVXL U33 ( .A(data_in[0]), .Y(n53) );
  INVXL U34 ( .A(data_in[15]), .Y(n41) );
  INVX1 U35 ( .A(n19), .Y(n33) );
  OAI22XL U36 ( .A0(n56), .A1(n29), .B0(n6), .B1(n41), .Y(data_out[15]) );
  OAI22XL U37 ( .A0(n56), .A1(n28), .B0(n12), .B1(n42), .Y(data_out[14]) );
  OAI22XL U38 ( .A0(n56), .A1(n54), .B0(n3), .B1(n32), .Y(data_out[13]) );
  OAI22XL U39 ( .A0(n56), .A1(n55), .B0(n12), .B1(n31), .Y(data_out[12]) );
  OAI22XL U40 ( .A0(n56), .A1(n32), .B0(n12), .B1(n54), .Y(data_out[5]) );
  OAI22XL U41 ( .A0(n56), .A1(n43), .B0(n12), .B1(n27), .Y(data_out[3]) );
  OAI22XL U42 ( .A0(n56), .A1(n44), .B0(n12), .B1(n26), .Y(data_out[2]) );
  OAI22XL U43 ( .A0(n56), .A1(n30), .B0(n13), .B1(n52), .Y(data_out[1]) );
  OAI22XL U44 ( .A0(n56), .A1(n26), .B0(n6), .B1(n44), .Y(data_out[10]) );
  OAI22XL U45 ( .A0(n56), .A1(n53), .B0(n13), .B1(n45), .Y(data_out[8]) );
  OAI22XL U46 ( .A0(n56), .A1(n41), .B0(n3), .B1(n29), .Y(data_out[7]) );
  OAI22XL U47 ( .A0(n56), .A1(n42), .B0(n6), .B1(n28), .Y(data_out[6]) );
  CLKINVX1 U48 ( .A(data_in[2]), .Y(n26) );
  CLKINVX1 U49 ( .A(data_in[12]), .Y(n31) );
  CLKINVX1 U50 ( .A(data_in[6]), .Y(n28) );
  OAI22XL U51 ( .A0(n11), .A1(n50), .B0(n6), .B1(n34), .Y(flag_out[11]) );
  OAI22XL U52 ( .A0(n11), .A1(n51), .B0(n13), .B1(n35), .Y(flag_out[10]) );
  OAI22XL U53 ( .A0(n11), .A1(n46), .B0(n13), .B1(n37), .Y(flag_out[9]) );
  OAI22XL U54 ( .A0(n11), .A1(n47), .B0(n6), .B1(n38), .Y(flag_out[8]) );
  OAI22XL U55 ( .A0(n11), .A1(n48), .B0(n3), .B1(n39), .Y(flag_out[7]) );
  OAI22XL U56 ( .A0(n11), .A1(n49), .B0(n13), .B1(n40), .Y(flag_out[6]) );
  OAI22XL U57 ( .A0(n11), .A1(n34), .B0(n6), .B1(n50), .Y(flag_out[5]) );
  OAI22XL U58 ( .A0(n11), .A1(n35), .B0(n6), .B1(n51), .Y(flag_out[4]) );
  OAI22XL U59 ( .A0(n37), .A1(n11), .B0(n3), .B1(n46), .Y(flag_out[3]) );
  OAI22XL U60 ( .A0(n11), .A1(n38), .B0(n6), .B1(n47), .Y(flag_out[2]) );
  OAI22XL U61 ( .A0(n11), .A1(n39), .B0(n3), .B1(n48), .Y(flag_out[1]) );
  OAI22XL U62 ( .A0(n11), .A1(n40), .B0(n6), .B1(n49), .Y(flag_out[0]) );
  CLKINVX1 U63 ( .A(data_in[10]), .Y(n44) );
  CLKINVX1 U64 ( .A(data_in[4]), .Y(n55) );
  CLKINVX1 U65 ( .A(data_in[14]), .Y(n42) );
  CLKINVX1 U66 ( .A(data_in[1]), .Y(n52) );
  CLKINVX1 U67 ( .A(data_in[8]), .Y(n45) );
  CLKINVX1 U68 ( .A(flag_in[9]), .Y(n37) );
  CLKINVX1 U69 ( .A(flag_in[5]), .Y(n50) );
  CLKINVX1 U70 ( .A(flag_in[11]), .Y(n34) );
  CLKINVX1 U71 ( .A(flag_in[4]), .Y(n51) );
  CLKINVX1 U72 ( .A(flag_in[10]), .Y(n35) );
  CLKINVX1 U73 ( .A(flag_in[3]), .Y(n46) );
  CLKINVX1 U74 ( .A(flag_in[2]), .Y(n47) );
  CLKINVX1 U75 ( .A(flag_in[8]), .Y(n38) );
  CLKINVX1 U76 ( .A(flag_in[1]), .Y(n48) );
  CLKINVX1 U77 ( .A(flag_in[7]), .Y(n39) );
  CLKINVX1 U78 ( .A(flag_in[0]), .Y(n49) );
  CLKINVX1 U79 ( .A(flag_in[6]), .Y(n40) );
  AOI2BB1X1 U80 ( .A0N(n30), .A1N(data_in[1]), .B0(data_in[8]), .Y(n17) );
  AND2X1 U81 ( .A(data_in[15]), .B(n29), .Y(n18) );
  AO21X1 U82 ( .A0(n28), .A1(data_in[14]), .B0(n18), .Y(n23) );
  OAI32X1 U83 ( .A0(n28), .A1(data_in[14]), .A2(n18), .B0(data_in[15]), .B1(
        n29), .Y(n19) );
  AOI32X1 U84 ( .A0(data_in[4]), .A1(n31), .A2(n20), .B0(n32), .B1(data_in[5]), 
        .Y(n21) );
endmodule


module SortCell_1 ( data_in, flag_in, en, data_out, flag_out );
  input [15:0] data_in;
  input [11:0] flag_in;
  output [15:0] data_out;
  output [11:0] flag_out;
  input en;
  wire   N1, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53;

  AND2X2 U1 ( .A(data_in[15]), .B(n29), .Y(n15) );
  AOI2BB1X1 U2 ( .A0N(n23), .A1N(data_in[1]), .B0(data_in[8]), .Y(n14) );
  OAI22XL U3 ( .A0(n8), .A1(n24), .B0(n10), .B1(n41), .Y(data_out[4]) );
  OAI22XL U4 ( .A0(n8), .A1(n51), .B0(n10), .B1(n26), .Y(data_out[2]) );
  OAI22XL U5 ( .A0(n8), .A1(n28), .B0(n10), .B1(n49), .Y(data_out[14]) );
  NAND2X1 U6 ( .A(n3), .B(n4), .Y(data_out[12]) );
  OR2X1 U7 ( .A(n1), .B(n2), .Y(data_out[11]) );
  OAI22XL U8 ( .A0(n8), .A1(n26), .B0(n10), .B1(n51), .Y(data_out[10]) );
  OAI2BB2XL U9 ( .B0(n10), .B1(n52), .A0N(n9), .A1N(data_in[0]), .Y(
        data_out[8]) );
  OAI22XL U10 ( .A0(n8), .A1(n29), .B0(n10), .B1(n48), .Y(data_out[15]) );
  CLKINVX1 U11 ( .A(data_in[9]), .Y(n23) );
  INVX3 U12 ( .A(n7), .Y(n10) );
  INVX1 U13 ( .A(n16), .Y(n30) );
  NOR2X1 U14 ( .A(n8), .B(n27), .Y(n1) );
  NOR2X1 U15 ( .A(n10), .B(n50), .Y(n2) );
  INVX1 U16 ( .A(data_in[7]), .Y(n29) );
  INVX3 U17 ( .A(n9), .Y(n8) );
  OR2XL U18 ( .A(n10), .B(n24), .Y(n4) );
  BUFX3 U19 ( .A(n53), .Y(n7) );
  OR2XL U20 ( .A(n8), .B(n41), .Y(n3) );
  OAI2BB2XL U21 ( .B0(n10), .B1(n23), .A0N(n9), .A1N(data_in[1]), .Y(
        data_out[9]) );
  INVXL U22 ( .A(data_in[4]), .Y(n41) );
  OAI22XL U23 ( .A0(n8), .A1(n52), .B0(n9), .B1(n39), .Y(data_out[0]) );
  OR2XL U24 ( .A(n8), .B(n50), .Y(n5) );
  OR2X1 U25 ( .A(n10), .B(n27), .Y(n6) );
  NAND2X1 U26 ( .A(n5), .B(n6), .Y(data_out[3]) );
  INVXL U27 ( .A(data_in[8]), .Y(n52) );
  NAND2X1 U28 ( .A(en), .B(N1), .Y(n53) );
  INVX1 U29 ( .A(data_in[1]), .Y(n38) );
  INVXL U30 ( .A(data_in[0]), .Y(n39) );
  INVXL U31 ( .A(data_in[11]), .Y(n50) );
  CLKINVX1 U32 ( .A(n7), .Y(n9) );
  OAI22XL U33 ( .A0(n8), .A1(n48), .B0(n10), .B1(n29), .Y(data_out[7]) );
  OAI22XL U34 ( .A0(n8), .A1(n49), .B0(n10), .B1(n28), .Y(data_out[6]) );
  OAI22XL U35 ( .A0(n8), .A1(n25), .B0(n10), .B1(n40), .Y(data_out[5]) );
  OAI22XL U36 ( .A0(n8), .A1(n40), .B0(n10), .B1(n25), .Y(data_out[13]) );
  OAI22XL U37 ( .A0(n8), .A1(n23), .B0(n10), .B1(n38), .Y(data_out[1]) );
  CLKINVX1 U38 ( .A(data_in[3]), .Y(n27) );
  CLKINVX1 U39 ( .A(data_in[13]), .Y(n25) );
  OAI32X1 U40 ( .A0(n28), .A1(data_in[14]), .A2(n15), .B0(data_in[15]), .B1(
        n29), .Y(n16) );
  CLKINVX1 U41 ( .A(data_in[6]), .Y(n28) );
  CLKINVX1 U42 ( .A(data_in[2]), .Y(n26) );
  CLKINVX1 U43 ( .A(data_in[12]), .Y(n24) );
  OAI22XL U44 ( .A0(n8), .A1(n35), .B0(n10), .B1(n42), .Y(flag_out[11]) );
  OAI22XL U45 ( .A0(n8), .A1(n37), .B0(n10), .B1(n43), .Y(flag_out[10]) );
  OAI22XL U46 ( .A0(n8), .A1(n31), .B0(n10), .B1(n44), .Y(flag_out[9]) );
  OAI22XL U47 ( .A0(n8), .A1(n32), .B0(n10), .B1(n45), .Y(flag_out[8]) );
  OAI22XL U48 ( .A0(n8), .A1(n33), .B0(n10), .B1(n46), .Y(flag_out[7]) );
  OAI22XL U49 ( .A0(n8), .A1(n34), .B0(n10), .B1(n47), .Y(flag_out[6]) );
  OAI22XL U50 ( .A0(n8), .A1(n42), .B0(n10), .B1(n35), .Y(flag_out[5]) );
  OAI22XL U51 ( .A0(n8), .A1(n43), .B0(n10), .B1(n37), .Y(flag_out[4]) );
  OAI22XL U52 ( .A0(n44), .A1(n8), .B0(n10), .B1(n31), .Y(flag_out[3]) );
  OAI22XL U53 ( .A0(n8), .A1(n45), .B0(n10), .B1(n32), .Y(flag_out[2]) );
  OAI22XL U54 ( .A0(n8), .A1(n46), .B0(n10), .B1(n33), .Y(flag_out[1]) );
  OAI22XL U55 ( .A0(n8), .A1(n47), .B0(n10), .B1(n34), .Y(flag_out[0]) );
  CLKINVX1 U56 ( .A(data_in[15]), .Y(n48) );
  CLKINVX1 U57 ( .A(data_in[14]), .Y(n49) );
  CLKINVX1 U58 ( .A(data_in[10]), .Y(n51) );
  CLKINVX1 U59 ( .A(data_in[5]), .Y(n40) );
  CLKINVX1 U60 ( .A(flag_in[9]), .Y(n44) );
  CLKINVX1 U61 ( .A(flag_in[11]), .Y(n42) );
  CLKINVX1 U62 ( .A(flag_in[5]), .Y(n35) );
  CLKINVX1 U63 ( .A(flag_in[10]), .Y(n43) );
  CLKINVX1 U64 ( .A(flag_in[4]), .Y(n37) );
  CLKINVX1 U65 ( .A(flag_in[3]), .Y(n31) );
  CLKINVX1 U66 ( .A(flag_in[8]), .Y(n45) );
  CLKINVX1 U67 ( .A(flag_in[2]), .Y(n32) );
  CLKINVX1 U68 ( .A(flag_in[7]), .Y(n46) );
  CLKINVX1 U69 ( .A(flag_in[1]), .Y(n33) );
  CLKINVX1 U70 ( .A(flag_in[6]), .Y(n47) );
  CLKINVX1 U71 ( .A(flag_in[0]), .Y(n34) );
  OAI31XL U72 ( .A0(n22), .A1(n21), .A2(n20), .B0(n19), .Y(N1) );
  AO22X4 U73 ( .A0(n30), .A1(n18), .B0(n20), .B1(n30), .Y(n19) );
  NOR2BX1 U74 ( .AN(data_in[11]), .B(data_in[3]), .Y(n11) );
  AOI21X1 U75 ( .A0(data_in[10]), .A1(n26), .B0(n11), .Y(n12) );
  OAI32X1 U76 ( .A0(n26), .A1(data_in[10]), .A2(n11), .B0(data_in[11]), .B1(
        n27), .Y(n13) );
  NAND2BX1 U77 ( .AN(data_in[5]), .B(data_in[13]), .Y(n17) );
  OAI221XL U78 ( .A0(data_in[4]), .A1(n24), .B0(n12), .B1(n13), .C0(n17), .Y(
        n22) );
  AOI221XL U79 ( .A0(data_in[1]), .A1(n23), .B0(n14), .B1(data_in[0]), .C0(n13), .Y(n21) );
  AO21X1 U80 ( .A0(n28), .A1(data_in[14]), .B0(n15), .Y(n20) );
  AOI32X1 U81 ( .A0(data_in[4]), .A1(n24), .A2(n17), .B0(n25), .B1(data_in[5]), 
        .Y(n18) );
endmodule


module Sort_test_1 ( unsort_data, unsort_flag, clk, set, num, update_data, 
        update_flag, update_en, done, sorted_data, sorted_flag, num_reg, 
        test_se );
  input [47:0] unsort_data;
  input [35:0] unsort_flag;
  input [2:0] num;
  input [7:0] update_data;
  input [5:0] update_flag;
  output [47:0] sorted_data;
  output [35:0] sorted_flag;
  output [2:0] num_reg;
  input clk, set, update_en, test_se;
  output done;
  wire   N19, N117, N118, N119, N120, N121, N122, N123, N124, N125, N126, N127,
         N128, N129, N130, N131, N132, N133, N134, N135, N136, N137, N138,
         N139, N140, N155, N156, N157, N158, N159, N160, N161, N162, N163,
         N164, N165, N166, N167, N168, N169, N170, N171, N172, N173, N174,
         N175, N176, N177, N178, N179, N180, N181, N182, N183, N184, N185,
         N186, N196, N197, N198, n36, n37, n38, n39, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
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
         n281, n282, n283, n284, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n285, n286, n287, n288, n289, n290, n292;
  wire   [47:0] data;
  wire   [35:0] flag;
  wire   [4:0] en;
  wire   [47:0] mid_data;
  wire   [35:0] mid_flag;
  wire   [39:8] sorting_data;
  wire   [29:6] sorting_flag;
  wire   [2:0] count;
  assign done = N19;
  assign num_reg[2] = en[2];

  SortCell_0 Cell0 ( .data_in(data[47:32]), .flag_in(flag[35:24]), .en(en[0]), 
        .data_out(mid_data[47:32]), .flag_out(mid_flag[35:24]) );
  SortCell_4 Cell2 ( .data_in(data[31:16]), .flag_in(flag[23:12]), .en(en[2]), 
        .data_out(mid_data[31:16]), .flag_out(mid_flag[23:12]) );
  SortCell_3 Cell4 ( .data_in(data[15:0]), .flag_in(flag[11:0]), .en(en[4]), 
        .data_out(mid_data[15:0]), .flag_out(mid_flag[11:0]) );
  SortCell_2 Cell1 ( .data_in(mid_data[39:24]), .flag_in(mid_flag[29:18]), 
        .en(en[1]), .data_out(sorting_data[39:24]), .flag_out(
        sorting_flag[29:18]) );
  SortCell_1 Cell3 ( .data_in(mid_data[23:8]), .flag_in(mid_flag[17:6]), .en(
        en[3]), .data_out(sorting_data[23:8]), .flag_out(sorting_flag[17:6])
         );
  INVXL U3 ( .A(sorting_data[28]), .Y(n1) );
  CLKINVX1 U4 ( .A(n1), .Y(n2) );
  XOR2XL U5 ( .A(sorting_data[24]), .B(data[24]), .Y(n134) );
  XNOR2X1 U6 ( .A(sorting_data[11]), .B(data[11]), .Y(n91) );
  OAI21X1 U7 ( .A0(n72), .A1(n73), .B0(n64), .Y(N19) );
  NAND4XL U8 ( .A(n106), .B(n107), .C(n108), .D(n109), .Y(n72) );
  NAND4XL U9 ( .A(n74), .B(n75), .C(n76), .D(n77), .Y(n73) );
  XNOR2X1 U10 ( .A(sorting_data[19]), .B(data[19]), .Y(n114) );
  XNOR2X1 U11 ( .A(sorting_data[31]), .B(data[31]), .Y(n136) );
  AOI22XL U12 ( .A0(sorting_data[11]), .A1(n9), .B0(unsort_data[11]), .B1(n13), 
        .Y(n206) );
  CLKINVX1 U13 ( .A(n8), .Y(n10) );
  OR2XL U14 ( .A(en[1]), .B(n38), .Y(en[0]) );
  XOR2XL U15 ( .A(sorting_data[39]), .B(data[39]), .Y(n94) );
  XOR2XL U16 ( .A(sorting_data[36]), .B(data[36]), .Y(n127) );
  XOR2XL U17 ( .A(sorting_data[38]), .B(data[38]), .Y(n125) );
  XOR2XL U18 ( .A(sorting_data[37]), .B(data[37]), .Y(n126) );
  XOR2XL U19 ( .A(mid_data[5]), .B(data[5]), .Y(n86) );
  XOR2XL U20 ( .A(mid_data[3]), .B(data[3]), .Y(n87) );
  XOR2XL U21 ( .A(mid_data[4]), .B(data[4]), .Y(n88) );
  AOI22XL U22 ( .A0(sorting_data[23]), .A1(n9), .B0(unsort_data[23]), .B1(n12), 
        .Y(n179) );
  AOI22XL U23 ( .A0(sorting_data[8]), .A1(n9), .B0(unsort_data[8]), .B1(n13), 
        .Y(n212) );
  NOR4X1 U24 ( .A(n99), .B(n100), .C(n101), .D(n102), .Y(n74) );
  XOR2XL U25 ( .A(sorting_data[29]), .B(data[29]), .Y(n100) );
  XOR2XL U26 ( .A(sorting_data[27]), .B(data[27]), .Y(n101) );
  NOR4X1 U27 ( .A(n131), .B(n132), .C(n133), .D(n134), .Y(n106) );
  XOR2XL U28 ( .A(sorting_data[26]), .B(data[26]), .Y(n132) );
  XOR2XL U29 ( .A(sorting_data[25]), .B(data[25]), .Y(n133) );
  NOR4X1 U30 ( .A(n78), .B(n79), .C(n80), .D(n81), .Y(n77) );
  XOR2XL U31 ( .A(sorting_data[17]), .B(data[17]), .Y(n79) );
  XOR2XL U32 ( .A(sorting_data[16]), .B(data[16]), .Y(n81) );
  XOR2XL U33 ( .A(sorting_data[15]), .B(data[15]), .Y(n80) );
  NOR4X1 U34 ( .A(n110), .B(n111), .C(n112), .D(n113), .Y(n109) );
  XOR2XL U35 ( .A(sorting_data[14]), .B(data[14]), .Y(n111) );
  XOR2XL U36 ( .A(sorting_data[13]), .B(data[13]), .Y(n112) );
  AOI22XL U37 ( .A0(sorting_data[39]), .A1(n61), .B0(unsort_data[39]), .B1(n12), .Y(n143) );
  AOI22XL U38 ( .A0(sorting_data[38]), .A1(n61), .B0(unsort_data[38]), .B1(n12), .Y(n146) );
  AOI22XL U39 ( .A0(sorting_data[37]), .A1(n9), .B0(unsort_data[37]), .B1(n12), 
        .Y(n148) );
  AOI22XL U40 ( .A0(sorting_data[36]), .A1(n9), .B0(unsort_data[36]), .B1(n12), 
        .Y(n150) );
  AOI22XL U41 ( .A0(sorting_data[35]), .A1(n61), .B0(unsort_data[35]), .B1(n12), .Y(n152) );
  AOI22XL U42 ( .A0(sorting_data[34]), .A1(n61), .B0(unsort_data[34]), .B1(n12), .Y(n154) );
  AOI22XL U43 ( .A0(sorting_data[33]), .A1(n9), .B0(unsort_data[33]), .B1(n12), 
        .Y(n156) );
  AOI22XL U44 ( .A0(sorting_data[32]), .A1(n61), .B0(unsort_data[32]), .B1(n12), .Y(n158) );
  AOI22XL U45 ( .A0(sorting_data[31]), .A1(n9), .B0(unsort_data[31]), .B1(n12), 
        .Y(n161) );
  AOI22XL U46 ( .A0(sorting_data[30]), .A1(n9), .B0(unsort_data[30]), .B1(n12), 
        .Y(n164) );
  AOI22XL U47 ( .A0(sorting_data[29]), .A1(n9), .B0(unsort_data[29]), .B1(n12), 
        .Y(n166) );
  AOI22XL U48 ( .A0(n2), .A1(n9), .B0(unsort_data[28]), .B1(n12), .Y(n168) );
  AOI22XL U49 ( .A0(sorting_data[27]), .A1(n9), .B0(unsort_data[27]), .B1(n13), 
        .Y(n170) );
  AOI22XL U50 ( .A0(sorting_data[26]), .A1(n9), .B0(unsort_data[26]), .B1(n12), 
        .Y(n172) );
  AOI22XL U51 ( .A0(sorting_data[25]), .A1(n8), .B0(unsort_data[25]), .B1(n12), 
        .Y(n174) );
  AOI22XL U52 ( .A0(sorting_data[24]), .A1(n8), .B0(unsort_data[24]), .B1(n12), 
        .Y(n176) );
  AOI22XL U53 ( .A0(sorting_data[22]), .A1(n8), .B0(unsort_data[22]), .B1(n12), 
        .Y(n182) );
  AOI22XL U54 ( .A0(sorting_data[21]), .A1(n8), .B0(unsort_data[21]), .B1(n12), 
        .Y(n184) );
  AOI22XL U55 ( .A0(sorting_data[20]), .A1(n61), .B0(unsort_data[20]), .B1(n12), .Y(n186) );
  AOI22XL U56 ( .A0(sorting_data[19]), .A1(n61), .B0(unsort_data[19]), .B1(n13), .Y(n188) );
  AOI22XL U57 ( .A0(sorting_data[18]), .A1(n61), .B0(unsort_data[18]), .B1(n13), .Y(n190) );
  AOI22XL U58 ( .A0(sorting_data[16]), .A1(n61), .B0(unsort_data[16]), .B1(n13), .Y(n194) );
  AOI22XL U59 ( .A0(sorting_data[15]), .A1(n61), .B0(unsort_data[15]), .B1(n13), .Y(n197) );
  AOI22XL U60 ( .A0(sorting_data[14]), .A1(n61), .B0(unsort_data[14]), .B1(n13), .Y(n200) );
  AOI22XL U61 ( .A0(sorting_data[13]), .A1(n61), .B0(unsort_data[13]), .B1(n13), .Y(n202) );
  AOI22XL U62 ( .A0(sorting_data[12]), .A1(n9), .B0(unsort_data[12]), .B1(n13), 
        .Y(n204) );
  AOI22XL U63 ( .A0(sorting_data[10]), .A1(n9), .B0(unsort_data[10]), .B1(n13), 
        .Y(n208) );
  AOI22XL U64 ( .A0(sorting_data[9]), .A1(n9), .B0(unsort_data[9]), .B1(n13), 
        .Y(n210) );
  NOR2XL U65 ( .A(n36), .B(n37), .Y(en[4]) );
  XOR2XL U66 ( .A(mid_data[1]), .B(data[1]), .Y(n119) );
  XOR2XL U67 ( .A(mid_data[2]), .B(data[2]), .Y(n118) );
  XOR2XL U68 ( .A(mid_data[0]), .B(data[0]), .Y(n120) );
  XNOR2XL U69 ( .A(mid_data[42]), .B(data[42]), .Y(n128) );
  XNOR2XL U70 ( .A(mid_data[46]), .B(data[46]), .Y(n96) );
  XNOR2XL U71 ( .A(mid_data[45]), .B(data[45]), .Y(n97) );
  XNOR2XL U72 ( .A(mid_data[43]), .B(data[43]), .Y(n129) );
  XNOR2XL U73 ( .A(mid_data[47]), .B(data[47]), .Y(n98) );
  XNOR2XL U74 ( .A(mid_data[44]), .B(data[44]), .Y(n130) );
  CLKBUFX3 U75 ( .A(n11), .Y(n12) );
  CLKBUFX3 U76 ( .A(n11), .Y(n14) );
  CLKINVX1 U77 ( .A(update_data[1]), .Y(n21) );
  CLKBUFX3 U78 ( .A(n11), .Y(n13) );
  CLKINVX1 U79 ( .A(n10), .Y(n9) );
  CLKINVX1 U80 ( .A(n59), .Y(n289) );
  NOR4X1 U81 ( .A(n117), .B(n118), .C(n119), .D(n120), .Y(n108) );
  CLKINVX1 U82 ( .A(update_data[7]), .Y(n15) );
  CLKINVX1 U83 ( .A(update_data[6]), .Y(n16) );
  CLKINVX1 U84 ( .A(update_data[5]), .Y(n17) );
  CLKINVX1 U85 ( .A(update_data[4]), .Y(n18) );
  CLKINVX1 U86 ( .A(update_data[0]), .Y(n22) );
  CLKBUFX3 U87 ( .A(set), .Y(n11) );
  CLKINVX1 U88 ( .A(update_data[3]), .Y(n19) );
  CLKINVX1 U89 ( .A(update_data[2]), .Y(n20) );
  CLKINVX1 U90 ( .A(update_flag[5]), .Y(n286) );
  CLKINVX1 U91 ( .A(update_flag[4]), .Y(n285) );
  CLKINVX1 U92 ( .A(update_flag[3]), .Y(n58) );
  CLKINVX1 U93 ( .A(update_flag[2]), .Y(n57) );
  CLKINVX1 U94 ( .A(update_flag[1]), .Y(n56) );
  CLKINVX1 U95 ( .A(update_flag[0]), .Y(n55) );
  NOR2X1 U96 ( .A(n12), .B(n7), .Y(n59) );
  CLKBUFX3 U97 ( .A(n144), .Y(n6) );
  NOR2BX1 U98 ( .AN(n7), .B(n239), .Y(n144) );
  CLKBUFX3 U99 ( .A(n162), .Y(n5) );
  NOR2BX1 U100 ( .AN(n7), .B(n252), .Y(n162) );
  CLKBUFX3 U101 ( .A(n180), .Y(n4) );
  NOR2BX1 U102 ( .AN(n7), .B(n265), .Y(n180) );
  CLKBUFX3 U103 ( .A(n198), .Y(n3) );
  NOR2BX1 U104 ( .AN(n7), .B(n278), .Y(n198) );
  NAND2X1 U105 ( .A(n239), .B(n7), .Y(n141) );
  NAND2X1 U106 ( .A(n252), .B(n7), .Y(n159) );
  NAND2X1 U107 ( .A(n265), .B(n7), .Y(n177) );
  NAND2X1 U108 ( .A(n278), .B(n7), .Y(n195) );
  XNOR2X1 U109 ( .A(sorting_data[22]), .B(data[22]), .Y(n82) );
  XNOR2X1 U110 ( .A(sorting_data[21]), .B(data[21]), .Y(n83) );
  XNOR2X1 U111 ( .A(sorting_data[23]), .B(data[23]), .Y(n84) );
  XNOR2X1 U112 ( .A(sorting_data[35]), .B(data[35]), .Y(n105) );
  XNOR2X1 U113 ( .A(sorting_data[32]), .B(data[32]), .Y(n137) );
  XNOR2X1 U114 ( .A(sorting_data[33]), .B(data[33]), .Y(n104) );
  XNOR2X1 U115 ( .A(sorting_data[34]), .B(data[34]), .Y(n103) );
  XNOR2X1 U116 ( .A(sorting_data[30]), .B(data[30]), .Y(n135) );
  XNOR2X1 U117 ( .A(sorting_data[18]), .B(data[18]), .Y(n116) );
  XNOR2X1 U118 ( .A(sorting_data[20]), .B(data[20]), .Y(n115) );
  NAND4BX1 U119 ( .AN(n14), .B(n114), .C(n115), .D(n116), .Y(n110) );
  NOR4X1 U120 ( .A(n85), .B(n86), .C(n87), .D(n88), .Y(n76) );
  NOR4X1 U121 ( .A(n92), .B(n93), .C(n94), .D(n95), .Y(n75) );
  NAND3X1 U122 ( .A(n96), .B(n97), .C(n98), .Y(n92) );
  XOR2X1 U123 ( .A(mid_data[41]), .B(data[41]), .Y(n93) );
  XOR2X1 U124 ( .A(mid_data[40]), .B(data[40]), .Y(n95) );
  NOR4X1 U125 ( .A(n124), .B(n125), .C(n126), .D(n127), .Y(n107) );
  NAND3X1 U126 ( .A(n128), .B(n129), .C(n130), .Y(n124) );
  NAND3X1 U127 ( .A(n103), .B(n104), .C(n105), .Y(n99) );
  NAND3X1 U128 ( .A(n135), .B(n136), .C(n137), .Y(n131) );
  OAI21XL U129 ( .A0(n38), .A1(n37), .B0(n36), .Y(en[1]) );
  NAND3X1 U130 ( .A(n121), .B(n122), .C(n123), .Y(n117) );
  XNOR2X1 U131 ( .A(mid_data[6]), .B(data[6]), .Y(n121) );
  XNOR2X1 U132 ( .A(mid_data[7]), .B(data[7]), .Y(n122) );
  XNOR2X1 U133 ( .A(sorting_data[8]), .B(data[8]), .Y(n123) );
  NAND3X1 U134 ( .A(n89), .B(n90), .C(n91), .Y(n85) );
  XNOR2X1 U135 ( .A(sorting_data[10]), .B(data[10]), .Y(n89) );
  XNOR2X1 U136 ( .A(sorting_data[9]), .B(data[9]), .Y(n90) );
  AO21X1 U137 ( .A0(num_reg[0]), .A1(en[2]), .B0(en[4]), .Y(en[3]) );
  XOR2X1 U138 ( .A(n2), .B(data[28]), .Y(n102) );
  XOR2X1 U139 ( .A(sorting_data[12]), .B(data[12]), .Y(n113) );
  OAI211X1 U140 ( .A0(n141), .A1(n15), .B0(n142), .C0(n143), .Y(N186) );
  NAND2X1 U141 ( .A(sorted_data[39]), .B(n6), .Y(n142) );
  OAI211X1 U142 ( .A0(n141), .A1(n16), .B0(n145), .C0(n146), .Y(N185) );
  NAND2X1 U143 ( .A(sorted_data[38]), .B(n6), .Y(n145) );
  OAI211X1 U144 ( .A0(n141), .A1(n19), .B0(n151), .C0(n152), .Y(N182) );
  NAND2X1 U145 ( .A(sorted_data[35]), .B(n6), .Y(n151) );
  OAI211X1 U146 ( .A0(n141), .A1(n22), .B0(n157), .C0(n158), .Y(N179) );
  NAND2X1 U147 ( .A(sorted_data[32]), .B(n6), .Y(n157) );
  OAI211X1 U148 ( .A0(n15), .A1(n177), .B0(n178), .C0(n179), .Y(N170) );
  NAND2X1 U149 ( .A(sorted_data[23]), .B(n4), .Y(n178) );
  OAI211X1 U150 ( .A0(n16), .A1(n177), .B0(n181), .C0(n182), .Y(N169) );
  NAND2X1 U151 ( .A(sorted_data[22]), .B(n4), .Y(n181) );
  OAI211X1 U152 ( .A0(n177), .A1(n58), .B0(n257), .C0(n258), .Y(N126) );
  NAND2X1 U153 ( .A(sorted_flag[15]), .B(n4), .Y(n257) );
  AOI22X1 U154 ( .A0(sorting_flag[15]), .A1(n9), .B0(unsort_flag[15]), .B1(n14), .Y(n258) );
  OAI211X1 U155 ( .A0(n20), .A1(n177), .B0(n189), .C0(n190), .Y(N165) );
  NAND2X1 U156 ( .A(sorted_data[18]), .B(n4), .Y(n189) );
  OAI211X1 U157 ( .A0(n21), .A1(n177), .B0(n191), .C0(n192), .Y(N164) );
  NAND2X1 U158 ( .A(sorted_data[17]), .B(n4), .Y(n191) );
  AOI22X1 U159 ( .A0(sorting_data[17]), .A1(n61), .B0(unsort_data[17]), .B1(
        n13), .Y(n192) );
  OAI211X1 U160 ( .A0(n22), .A1(n177), .B0(n193), .C0(n194), .Y(N163) );
  NAND2X1 U161 ( .A(sorted_data[16]), .B(n4), .Y(n193) );
  OAI211X1 U162 ( .A0(n15), .A1(n195), .B0(n196), .C0(n197), .Y(N162) );
  NAND2X1 U163 ( .A(sorted_data[15]), .B(n3), .Y(n196) );
  OAI211X1 U164 ( .A0(n16), .A1(n195), .B0(n199), .C0(n200), .Y(N161) );
  NAND2X1 U165 ( .A(sorted_data[14]), .B(n3), .Y(n199) );
  OAI211X1 U166 ( .A0(n17), .A1(n195), .B0(n201), .C0(n202), .Y(N160) );
  NAND2X1 U167 ( .A(sorted_data[13]), .B(n3), .Y(n201) );
  OAI211X1 U168 ( .A0(n18), .A1(n195), .B0(n203), .C0(n204), .Y(N159) );
  NAND2X1 U169 ( .A(sorted_data[12]), .B(n3), .Y(n203) );
  OAI211X1 U170 ( .A0(n19), .A1(n195), .B0(n205), .C0(n206), .Y(N158) );
  NAND2X1 U171 ( .A(sorted_data[11]), .B(n3), .Y(n205) );
  OAI211X1 U172 ( .A0(n20), .A1(n195), .B0(n207), .C0(n208), .Y(N157) );
  NAND2X1 U173 ( .A(sorted_data[10]), .B(n3), .Y(n207) );
  OAI211X1 U174 ( .A0(n21), .A1(n195), .B0(n209), .C0(n210), .Y(N156) );
  NAND2X1 U175 ( .A(sorted_data[9]), .B(n3), .Y(n209) );
  OAI211X1 U176 ( .A0(n22), .A1(n195), .B0(n211), .C0(n212), .Y(N155) );
  NAND2X1 U177 ( .A(sorted_data[8]), .B(n3), .Y(n211) );
  OAI211X1 U178 ( .A0(n195), .A1(n285), .B0(n268), .C0(n269), .Y(N121) );
  NAND2X1 U179 ( .A(sorted_flag[10]), .B(n3), .Y(n268) );
  AOI22X1 U180 ( .A0(sorting_flag[10]), .A1(n8), .B0(unsort_flag[10]), .B1(n13), .Y(n269) );
  OAI211X1 U181 ( .A0(n195), .A1(n58), .B0(n270), .C0(n271), .Y(N120) );
  NAND2X1 U182 ( .A(sorted_flag[9]), .B(n3), .Y(n270) );
  AOI22X1 U183 ( .A0(sorting_flag[9]), .A1(n8), .B0(unsort_flag[9]), .B1(n14), 
        .Y(n271) );
  OAI211X1 U184 ( .A0(n195), .A1(n57), .B0(n272), .C0(n273), .Y(N119) );
  NAND2X1 U185 ( .A(sorted_flag[8]), .B(n3), .Y(n272) );
  AOI22X1 U186 ( .A0(sorting_flag[8]), .A1(n8), .B0(unsort_flag[8]), .B1(n14), 
        .Y(n273) );
  OAI211X1 U187 ( .A0(n195), .A1(n55), .B0(n276), .C0(n277), .Y(N117) );
  NAND2X1 U188 ( .A(sorted_flag[6]), .B(n3), .Y(n276) );
  AOI22X1 U189 ( .A0(sorting_flag[6]), .A1(n8), .B0(unsort_flag[6]), .B1(n14), 
        .Y(n277) );
  OAI211X1 U190 ( .A0(n15), .A1(n159), .B0(n160), .C0(n161), .Y(N178) );
  NAND2X1 U191 ( .A(sorted_data[31]), .B(n5), .Y(n160) );
  OAI211X1 U192 ( .A0(n16), .A1(n159), .B0(n163), .C0(n164), .Y(N177) );
  NAND2X1 U193 ( .A(sorted_data[30]), .B(n5), .Y(n163) );
  OAI211X1 U194 ( .A0(n17), .A1(n159), .B0(n165), .C0(n166), .Y(N176) );
  NAND2X1 U195 ( .A(sorted_data[29]), .B(n5), .Y(n165) );
  OAI211X1 U196 ( .A0(n18), .A1(n159), .B0(n167), .C0(n168), .Y(N175) );
  NAND2X1 U197 ( .A(sorted_data[28]), .B(n5), .Y(n167) );
  OAI211X1 U198 ( .A0(n19), .A1(n159), .B0(n169), .C0(n170), .Y(N174) );
  NAND2X1 U199 ( .A(sorted_data[27]), .B(n5), .Y(n169) );
  OAI211X1 U200 ( .A0(n20), .A1(n159), .B0(n171), .C0(n172), .Y(N173) );
  NAND2X1 U201 ( .A(sorted_data[26]), .B(n5), .Y(n171) );
  OAI211X1 U202 ( .A0(n21), .A1(n159), .B0(n173), .C0(n174), .Y(N172) );
  NAND2X1 U203 ( .A(sorted_data[25]), .B(n5), .Y(n173) );
  OAI211X1 U204 ( .A0(n22), .A1(n159), .B0(n175), .C0(n176), .Y(N171) );
  NAND2X1 U205 ( .A(sorted_data[24]), .B(n5), .Y(n175) );
  OAI211X1 U206 ( .A0(n17), .A1(n177), .B0(n183), .C0(n184), .Y(N168) );
  NAND2X1 U207 ( .A(sorted_data[21]), .B(n4), .Y(n183) );
  OAI211X1 U208 ( .A0(n18), .A1(n177), .B0(n185), .C0(n186), .Y(N167) );
  NAND2X1 U209 ( .A(sorted_data[20]), .B(n4), .Y(n185) );
  OAI211X1 U210 ( .A0(n19), .A1(n177), .B0(n187), .C0(n188), .Y(N166) );
  NAND2X1 U211 ( .A(sorted_data[19]), .B(n4), .Y(n187) );
  OAI211X1 U212 ( .A0(n141), .A1(n17), .B0(n147), .C0(n148), .Y(N184) );
  NAND2X1 U213 ( .A(sorted_data[37]), .B(n6), .Y(n147) );
  OAI211X1 U214 ( .A0(n141), .A1(n18), .B0(n149), .C0(n150), .Y(N183) );
  NAND2X1 U215 ( .A(sorted_data[36]), .B(n6), .Y(n149) );
  OAI211X1 U216 ( .A0(n141), .A1(n20), .B0(n153), .C0(n154), .Y(N181) );
  NAND2X1 U217 ( .A(sorted_data[34]), .B(n6), .Y(n153) );
  OAI211X1 U218 ( .A0(n141), .A1(n21), .B0(n155), .C0(n156), .Y(N180) );
  NAND2X1 U219 ( .A(sorted_data[33]), .B(n6), .Y(n155) );
  OAI211X1 U220 ( .A0(n141), .A1(n286), .B0(n227), .C0(n228), .Y(N140) );
  NAND2X1 U221 ( .A(sorted_flag[29]), .B(n6), .Y(n227) );
  AOI22X1 U222 ( .A0(sorting_flag[29]), .A1(n9), .B0(unsort_flag[29]), .B1(n13), .Y(n228) );
  OAI211X1 U223 ( .A0(n141), .A1(n285), .B0(n229), .C0(n230), .Y(N139) );
  NAND2X1 U224 ( .A(sorted_flag[28]), .B(n6), .Y(n229) );
  AOI22X1 U225 ( .A0(sorting_flag[28]), .A1(n61), .B0(unsort_flag[28]), .B1(
        n13), .Y(n230) );
  OAI211X1 U226 ( .A0(n141), .A1(n58), .B0(n231), .C0(n232), .Y(N138) );
  NAND2X1 U227 ( .A(sorted_flag[27]), .B(n6), .Y(n231) );
  AOI22X1 U228 ( .A0(sorting_flag[27]), .A1(n9), .B0(unsort_flag[27]), .B1(n13), .Y(n232) );
  OAI211X1 U229 ( .A0(n141), .A1(n57), .B0(n233), .C0(n234), .Y(N137) );
  NAND2X1 U230 ( .A(sorted_flag[26]), .B(n6), .Y(n233) );
  AOI22X1 U231 ( .A0(sorting_flag[26]), .A1(n9), .B0(unsort_flag[26]), .B1(n13), .Y(n234) );
  OAI211X1 U232 ( .A0(n141), .A1(n56), .B0(n235), .C0(n236), .Y(N136) );
  NAND2X1 U233 ( .A(sorted_flag[25]), .B(n6), .Y(n235) );
  AOI22X1 U234 ( .A0(sorting_flag[25]), .A1(n9), .B0(unsort_flag[25]), .B1(n14), .Y(n236) );
  OAI211X1 U235 ( .A0(n141), .A1(n55), .B0(n237), .C0(n238), .Y(N135) );
  NAND2X1 U236 ( .A(sorted_flag[24]), .B(n6), .Y(n237) );
  AOI22X1 U237 ( .A0(sorting_flag[24]), .A1(n9), .B0(unsort_flag[24]), .B1(n14), .Y(n238) );
  OAI211X1 U238 ( .A0(n159), .A1(n286), .B0(n240), .C0(n241), .Y(N134) );
  NAND2X1 U239 ( .A(sorted_flag[23]), .B(n5), .Y(n240) );
  AOI22X1 U240 ( .A0(sorting_flag[23]), .A1(n9), .B0(unsort_flag[23]), .B1(n14), .Y(n241) );
  OAI211X1 U241 ( .A0(n159), .A1(n285), .B0(n242), .C0(n243), .Y(N133) );
  NAND2X1 U242 ( .A(sorted_flag[22]), .B(n5), .Y(n242) );
  AOI22X1 U243 ( .A0(sorting_flag[22]), .A1(n9), .B0(unsort_flag[22]), .B1(n13), .Y(n243) );
  OAI211X1 U244 ( .A0(n159), .A1(n58), .B0(n244), .C0(n245), .Y(N132) );
  NAND2X1 U245 ( .A(sorted_flag[21]), .B(n5), .Y(n244) );
  AOI22X1 U246 ( .A0(sorting_flag[21]), .A1(n9), .B0(unsort_flag[21]), .B1(n14), .Y(n245) );
  OAI211X1 U247 ( .A0(n159), .A1(n57), .B0(n246), .C0(n247), .Y(N131) );
  NAND2X1 U248 ( .A(sorted_flag[20]), .B(n5), .Y(n246) );
  AOI22X1 U249 ( .A0(sorting_flag[20]), .A1(n61), .B0(unsort_flag[20]), .B1(
        n13), .Y(n247) );
  OAI211X1 U250 ( .A0(n159), .A1(n56), .B0(n248), .C0(n249), .Y(N130) );
  NAND2X1 U251 ( .A(sorted_flag[19]), .B(n5), .Y(n248) );
  AOI22X1 U252 ( .A0(sorting_flag[19]), .A1(n9), .B0(unsort_flag[19]), .B1(n14), .Y(n249) );
  OAI211X1 U253 ( .A0(n159), .A1(n55), .B0(n250), .C0(n251), .Y(N129) );
  NAND2X1 U254 ( .A(sorted_flag[18]), .B(n5), .Y(n250) );
  AOI22X1 U255 ( .A0(sorting_flag[18]), .A1(n9), .B0(unsort_flag[18]), .B1(n13), .Y(n251) );
  OAI211X1 U256 ( .A0(n177), .A1(n286), .B0(n253), .C0(n254), .Y(N128) );
  NAND2X1 U257 ( .A(sorted_flag[17]), .B(n4), .Y(n253) );
  AOI22X1 U258 ( .A0(sorting_flag[17]), .A1(n9), .B0(unsort_flag[17]), .B1(n14), .Y(n254) );
  OAI211X1 U259 ( .A0(n177), .A1(n285), .B0(n255), .C0(n256), .Y(N127) );
  NAND2X1 U260 ( .A(sorted_flag[16]), .B(n4), .Y(n255) );
  AOI22X1 U261 ( .A0(sorting_flag[16]), .A1(n9), .B0(unsort_flag[16]), .B1(n14), .Y(n256) );
  OAI211X1 U262 ( .A0(n177), .A1(n57), .B0(n259), .C0(n260), .Y(N125) );
  NAND2X1 U263 ( .A(sorted_flag[14]), .B(n4), .Y(n259) );
  AOI22X1 U264 ( .A0(sorting_flag[14]), .A1(n61), .B0(unsort_flag[14]), .B1(
        n13), .Y(n260) );
  OAI211X1 U265 ( .A0(n177), .A1(n56), .B0(n261), .C0(n262), .Y(N124) );
  NAND2X1 U266 ( .A(sorted_flag[13]), .B(n4), .Y(n261) );
  AOI22X1 U267 ( .A0(sorting_flag[13]), .A1(n9), .B0(unsort_flag[13]), .B1(n14), .Y(n262) );
  OAI211X1 U268 ( .A0(n177), .A1(n55), .B0(n263), .C0(n264), .Y(N123) );
  NAND2X1 U269 ( .A(sorted_flag[12]), .B(n4), .Y(n263) );
  AOI22X1 U270 ( .A0(sorting_flag[12]), .A1(n9), .B0(unsort_flag[12]), .B1(n14), .Y(n264) );
  OAI211X1 U271 ( .A0(n195), .A1(n286), .B0(n266), .C0(n267), .Y(N122) );
  NAND2X1 U272 ( .A(sorted_flag[11]), .B(n3), .Y(n266) );
  AOI22X1 U273 ( .A0(sorting_flag[11]), .A1(n9), .B0(unsort_flag[11]), .B1(n14), .Y(n267) );
  OAI211X1 U274 ( .A0(n195), .A1(n56), .B0(n274), .C0(n275), .Y(N118) );
  NAND2X1 U275 ( .A(sorted_flag[7]), .B(n3), .Y(n274) );
  AOI22X1 U276 ( .A0(sorting_flag[7]), .A1(n9), .B0(unsort_flag[7]), .B1(n14), 
        .Y(n275) );
  CLKBUFX3 U277 ( .A(n61), .Y(n8) );
  NOR2X1 U278 ( .A(n12), .B(update_en), .Y(n61) );
  CLKINVX1 U279 ( .A(n67), .Y(n31) );
  AOI222XL U280 ( .A0(unsort_data[47]), .A1(n14), .B0(mid_data[47]), .B1(n8), 
        .C0(sorted_data[47]), .C1(n7), .Y(n67) );
  CLKINVX1 U281 ( .A(n68), .Y(n32) );
  AOI222XL U282 ( .A0(unsort_data[46]), .A1(n14), .B0(mid_data[46]), .B1(n8), 
        .C0(sorted_data[46]), .C1(n7), .Y(n68) );
  CLKINVX1 U283 ( .A(n69), .Y(n33) );
  AOI222XL U284 ( .A0(unsort_data[45]), .A1(n14), .B0(mid_data[45]), .B1(n8), 
        .C0(sorted_data[45]), .C1(n7), .Y(n69) );
  CLKINVX1 U285 ( .A(n70), .Y(n34) );
  AOI222XL U286 ( .A0(unsort_data[44]), .A1(n14), .B0(mid_data[44]), .B1(n8), 
        .C0(sorted_data[44]), .C1(n7), .Y(n70) );
  CLKINVX1 U287 ( .A(n71), .Y(n35) );
  AOI222XL U288 ( .A0(unsort_data[43]), .A1(n14), .B0(mid_data[43]), .B1(n8), 
        .C0(sorted_data[43]), .C1(n7), .Y(n71) );
  CLKINVX1 U289 ( .A(n138), .Y(n40) );
  AOI222XL U290 ( .A0(unsort_data[42]), .A1(n14), .B0(mid_data[42]), .B1(n61), 
        .C0(sorted_data[42]), .C1(n7), .Y(n138) );
  CLKINVX1 U291 ( .A(n139), .Y(n29) );
  AOI222XL U292 ( .A0(unsort_data[41]), .A1(n14), .B0(mid_data[41]), .B1(n61), 
        .C0(sorted_data[41]), .C1(n7), .Y(n139) );
  CLKINVX1 U293 ( .A(n140), .Y(n30) );
  AOI222XL U294 ( .A0(unsort_data[40]), .A1(n14), .B0(mid_data[40]), .B1(n61), 
        .C0(sorted_data[40]), .C1(n7), .Y(n140) );
  CLKINVX1 U295 ( .A(n221), .Y(n27) );
  AOI222XL U296 ( .A0(unsort_flag[35]), .A1(n14), .B0(mid_flag[35]), .B1(n61), 
        .C0(sorted_flag[35]), .C1(n7), .Y(n221) );
  CLKINVX1 U297 ( .A(n222), .Y(n28) );
  AOI222XL U298 ( .A0(unsort_flag[34]), .A1(n14), .B0(mid_flag[34]), .B1(n61), 
        .C0(sorted_flag[34]), .C1(n7), .Y(n222) );
  CLKINVX1 U299 ( .A(n223), .Y(n23) );
  AOI222XL U300 ( .A0(unsort_flag[33]), .A1(n14), .B0(mid_flag[33]), .B1(n61), 
        .C0(sorted_flag[33]), .C1(n7), .Y(n223) );
  CLKINVX1 U301 ( .A(n224), .Y(n24) );
  AOI222XL U302 ( .A0(unsort_flag[32]), .A1(n14), .B0(mid_flag[32]), .B1(n61), 
        .C0(sorted_flag[32]), .C1(n7), .Y(n224) );
  CLKINVX1 U303 ( .A(n225), .Y(n25) );
  AOI222XL U304 ( .A0(unsort_flag[31]), .A1(n14), .B0(mid_flag[31]), .B1(n61), 
        .C0(sorted_flag[31]), .C1(n7), .Y(n225) );
  CLKINVX1 U305 ( .A(n226), .Y(n26) );
  AOI222XL U306 ( .A0(unsort_flag[30]), .A1(n14), .B0(mid_flag[30]), .B1(n61), 
        .C0(sorted_flag[30]), .C1(n7), .Y(n226) );
  CLKINVX1 U307 ( .A(n213), .Y(n47) );
  AOI222XL U308 ( .A0(unsort_data[7]), .A1(n14), .B0(mid_data[7]), .B1(n8), 
        .C0(sorted_data[7]), .C1(n7), .Y(n213) );
  CLKINVX1 U309 ( .A(n214), .Y(n48) );
  AOI222XL U310 ( .A0(unsort_data[6]), .A1(n14), .B0(mid_data[6]), .B1(n61), 
        .C0(sorted_data[6]), .C1(n7), .Y(n214) );
  CLKINVX1 U311 ( .A(n215), .Y(n49) );
  AOI222XL U312 ( .A0(unsort_data[5]), .A1(n14), .B0(mid_data[5]), .B1(n61), 
        .C0(sorted_data[5]), .C1(n7), .Y(n215) );
  CLKINVX1 U313 ( .A(n216), .Y(n50) );
  AOI222XL U314 ( .A0(unsort_data[4]), .A1(n14), .B0(mid_data[4]), .B1(n61), 
        .C0(sorted_data[4]), .C1(n7), .Y(n216) );
  CLKINVX1 U315 ( .A(n217), .Y(n51) );
  AOI222XL U316 ( .A0(unsort_data[3]), .A1(n14), .B0(mid_data[3]), .B1(n61), 
        .C0(sorted_data[3]), .C1(n7), .Y(n217) );
  CLKINVX1 U317 ( .A(n218), .Y(n52) );
  AOI222XL U318 ( .A0(unsort_data[2]), .A1(n14), .B0(mid_data[2]), .B1(n61), 
        .C0(sorted_data[2]), .C1(n7), .Y(n218) );
  CLKINVX1 U319 ( .A(n219), .Y(n53) );
  AOI222XL U320 ( .A0(unsort_data[1]), .A1(n14), .B0(mid_data[1]), .B1(n61), 
        .C0(sorted_data[1]), .C1(n7), .Y(n219) );
  CLKINVX1 U321 ( .A(n220), .Y(n54) );
  AOI222XL U322 ( .A0(unsort_data[0]), .A1(n14), .B0(mid_data[0]), .B1(n8), 
        .C0(sorted_data[0]), .C1(n7), .Y(n220) );
  CLKINVX1 U323 ( .A(n279), .Y(n41) );
  AOI222XL U324 ( .A0(unsort_flag[5]), .A1(n14), .B0(mid_flag[5]), .B1(n8), 
        .C0(sorted_flag[5]), .C1(n7), .Y(n279) );
  CLKINVX1 U325 ( .A(n280), .Y(n42) );
  AOI222XL U326 ( .A0(unsort_flag[4]), .A1(n14), .B0(mid_flag[4]), .B1(n8), 
        .C0(sorted_flag[4]), .C1(n7), .Y(n280) );
  CLKINVX1 U327 ( .A(n281), .Y(n43) );
  AOI222XL U328 ( .A0(unsort_flag[3]), .A1(n14), .B0(mid_flag[3]), .B1(n8), 
        .C0(sorted_flag[3]), .C1(n7), .Y(n281) );
  CLKINVX1 U329 ( .A(n282), .Y(n44) );
  AOI222XL U330 ( .A0(unsort_flag[2]), .A1(n14), .B0(mid_flag[2]), .B1(n8), 
        .C0(sorted_flag[2]), .C1(n7), .Y(n282) );
  CLKINVX1 U331 ( .A(n283), .Y(n45) );
  AOI222XL U332 ( .A0(unsort_flag[1]), .A1(n14), .B0(mid_flag[1]), .B1(n8), 
        .C0(sorted_flag[1]), .C1(n7), .Y(n283) );
  CLKINVX1 U333 ( .A(n284), .Y(n46) );
  AOI222XL U334 ( .A0(unsort_flag[0]), .A1(n14), .B0(mid_flag[0]), .B1(n8), 
        .C0(sorted_flag[0]), .C1(n7), .Y(n284) );
  NOR3X1 U335 ( .A(num[0]), .B(num[1]), .C(n288), .Y(n265) );
  NOR3X1 U336 ( .A(n287), .B(num[1]), .C(n288), .Y(n278) );
  NOR3X1 U337 ( .A(num[0]), .B(num[2]), .C(n290), .Y(n239) );
  NOR3X1 U338 ( .A(n287), .B(num[2]), .C(n290), .Y(n252) );
  OAI22XL U339 ( .A0(count[0]), .A1(n10), .B0(n59), .B1(n287), .Y(N196) );
  NOR2X1 U340 ( .A(count[1]), .B(count[0]), .Y(n63) );
  OAI2BB2XL U341 ( .B0(num[1]), .B1(n59), .A0N(n8), .A1N(n65), .Y(N197) );
  AO21X1 U342 ( .A0(count[0]), .A1(count[1]), .B0(n63), .Y(n65) );
  CLKINVX1 U343 ( .A(num[1]), .Y(n290) );
  CLKINVX1 U344 ( .A(num[2]), .Y(n288) );
  CLKINVX1 U345 ( .A(num[0]), .Y(n287) );
  OAI2BB2XL U346 ( .B0(n59), .B1(n60), .A0N(n8), .A1N(n62), .Y(N198) );
  OAI21XL U347 ( .A0(n63), .A1(n39), .B0(n64), .Y(n62) );
  XOR2X1 U348 ( .A(num[2]), .B(num[1]), .Y(n60) );
  CLKBUFX3 U349 ( .A(n66), .Y(n7) );
  NOR2BX1 U350 ( .AN(update_en), .B(n14), .Y(n66) );
  NAND2X1 U351 ( .A(n63), .B(n39), .Y(n64) );
  NAND3X1 U352 ( .A(n82), .B(n83), .C(n84), .Y(n78) );
  SDFFQXL \sorted_data_reg[46]  ( .D(mid_data[46]), .SI(sorted_data[45]), .SE(
        test_se), .CK(clk), .Q(sorted_data[46]) );
  SDFFQXL \sorted_data_reg[47]  ( .D(mid_data[47]), .SI(sorted_data[46]), .SE(
        test_se), .CK(clk), .Q(sorted_data[47]) );
  SDFFQXL \sorted_flag_reg[0]  ( .D(mid_flag[0]), .SI(sorted_data[47]), .SE(
        test_se), .CK(clk), .Q(sorted_flag[0]) );
  SDFFQXL \sorted_flag_reg[1]  ( .D(mid_flag[1]), .SI(sorted_flag[0]), .SE(
        test_se), .CK(clk), .Q(sorted_flag[1]) );
  SDFFQXL \sorted_flag_reg[2]  ( .D(mid_flag[2]), .SI(sorted_flag[1]), .SE(
        test_se), .CK(clk), .Q(sorted_flag[2]) );
  SDFFQXL \sorted_flag_reg[3]  ( .D(mid_flag[3]), .SI(sorted_flag[2]), .SE(
        test_se), .CK(clk), .Q(sorted_flag[3]) );
  SDFFQXL \sorted_flag_reg[4]  ( .D(mid_flag[4]), .SI(sorted_flag[3]), .SE(
        test_se), .CK(clk), .Q(sorted_flag[4]) );
  SDFFQXL \sorted_flag_reg[5]  ( .D(mid_flag[5]), .SI(sorted_flag[4]), .SE(
        test_se), .CK(clk), .Q(sorted_flag[5]) );
  SDFFQXL \sorted_data_reg[4]  ( .D(mid_data[4]), .SI(sorted_data[3]), .SE(
        test_se), .CK(clk), .Q(sorted_data[4]) );
  SDFFQXL \sorted_data_reg[5]  ( .D(mid_data[5]), .SI(sorted_data[4]), .SE(
        test_se), .CK(clk), .Q(sorted_data[5]) );
  SDFFQXL \sorted_data_reg[6]  ( .D(mid_data[6]), .SI(sorted_data[5]), .SE(
        test_se), .CK(clk), .Q(sorted_data[6]) );
  SDFFQXL \sorted_data_reg[7]  ( .D(mid_data[7]), .SI(sorted_data[6]), .SE(
        test_se), .CK(clk), .Q(sorted_data[7]) );
  SDFFQXL \sorted_data_reg[23]  ( .D(sorting_data[23]), .SI(sorted_data[22]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[23]) );
  SDFFQXL \flag_reg[0]  ( .D(n46), .SI(data[47]), .SE(test_se), .CK(clk), .Q(
        flag[0]) );
  SDFFQXL \flag_reg[1]  ( .D(n45), .SI(flag[0]), .SE(test_se), .CK(clk), .Q(
        flag[1]) );
  SDFFQXL \flag_reg[2]  ( .D(n44), .SI(flag[1]), .SE(test_se), .CK(clk), .Q(
        flag[2]) );
  SDFFQXL \flag_reg[3]  ( .D(n43), .SI(flag[2]), .SE(test_se), .CK(clk), .Q(
        flag[3]) );
  SDFFQXL \flag_reg[4]  ( .D(n42), .SI(flag[3]), .SE(test_se), .CK(clk), .Q(
        flag[4]) );
  SDFFQXL \flag_reg[5]  ( .D(n41), .SI(flag[4]), .SE(test_se), .CK(clk), .Q(
        flag[5]) );
  SDFFQXL \flag_reg[6]  ( .D(N117), .SI(flag[5]), .SE(test_se), .CK(clk), .Q(
        flag[6]) );
  SDFFQXL \flag_reg[7]  ( .D(N118), .SI(flag[6]), .SE(test_se), .CK(clk), .Q(
        flag[7]) );
  SDFFQXL \flag_reg[8]  ( .D(N119), .SI(flag[7]), .SE(test_se), .CK(clk), .Q(
        flag[8]) );
  SDFFQXL \flag_reg[9]  ( .D(N120), .SI(flag[8]), .SE(test_se), .CK(clk), .Q(
        flag[9]) );
  SDFFQXL \flag_reg[10]  ( .D(N121), .SI(flag[9]), .SE(test_se), .CK(clk), .Q(
        flag[10]) );
  SDFFQXL \flag_reg[11]  ( .D(N122), .SI(flag[10]), .SE(test_se), .CK(clk), 
        .Q(flag[11]) );
  SDFFQXL \flag_reg[12]  ( .D(N123), .SI(flag[11]), .SE(test_se), .CK(clk), 
        .Q(flag[12]) );
  SDFFQXL \flag_reg[13]  ( .D(N124), .SI(flag[12]), .SE(test_se), .CK(clk), 
        .Q(flag[13]) );
  SDFFQXL \flag_reg[14]  ( .D(N125), .SI(flag[13]), .SE(test_se), .CK(clk), 
        .Q(flag[14]) );
  SDFFQXL \flag_reg[15]  ( .D(N126), .SI(flag[14]), .SE(test_se), .CK(clk), 
        .Q(flag[15]) );
  SDFFQXL \flag_reg[16]  ( .D(N127), .SI(flag[15]), .SE(test_se), .CK(clk), 
        .Q(flag[16]) );
  SDFFQXL \flag_reg[17]  ( .D(N128), .SI(flag[16]), .SE(test_se), .CK(clk), 
        .Q(flag[17]) );
  SDFFQXL \flag_reg[18]  ( .D(N129), .SI(flag[17]), .SE(test_se), .CK(clk), 
        .Q(flag[18]) );
  SDFFQXL \flag_reg[19]  ( .D(N130), .SI(flag[18]), .SE(test_se), .CK(clk), 
        .Q(flag[19]) );
  SDFFQXL \flag_reg[20]  ( .D(N131), .SI(flag[19]), .SE(test_se), .CK(clk), 
        .Q(flag[20]) );
  SDFFQXL \flag_reg[21]  ( .D(N132), .SI(flag[20]), .SE(test_se), .CK(clk), 
        .Q(flag[21]) );
  SDFFQXL \flag_reg[22]  ( .D(N133), .SI(flag[21]), .SE(test_se), .CK(clk), 
        .Q(flag[22]) );
  SDFFQXL \flag_reg[23]  ( .D(N134), .SI(flag[22]), .SE(test_se), .CK(clk), 
        .Q(flag[23]) );
  SDFFQXL \flag_reg[24]  ( .D(N135), .SI(flag[23]), .SE(test_se), .CK(clk), 
        .Q(flag[24]) );
  SDFFQXL \flag_reg[25]  ( .D(N136), .SI(flag[24]), .SE(test_se), .CK(clk), 
        .Q(flag[25]) );
  SDFFQXL \flag_reg[26]  ( .D(N137), .SI(flag[25]), .SE(test_se), .CK(clk), 
        .Q(flag[26]) );
  SDFFQXL \flag_reg[27]  ( .D(N138), .SI(flag[26]), .SE(test_se), .CK(clk), 
        .Q(flag[27]) );
  SDFFQXL \flag_reg[28]  ( .D(N139), .SI(flag[27]), .SE(test_se), .CK(clk), 
        .Q(flag[28]) );
  SDFFQXL \flag_reg[29]  ( .D(N140), .SI(flag[28]), .SE(test_se), .CK(clk), 
        .Q(flag[29]) );
  SDFFQXL \flag_reg[30]  ( .D(n26), .SI(flag[29]), .SE(test_se), .CK(clk), .Q(
        flag[30]) );
  SDFFQXL \flag_reg[31]  ( .D(n25), .SI(flag[30]), .SE(test_se), .CK(clk), .Q(
        flag[31]) );
  SDFFQXL \flag_reg[32]  ( .D(n24), .SI(flag[31]), .SE(test_se), .CK(clk), .Q(
        flag[32]) );
  SDFFQXL \flag_reg[33]  ( .D(n23), .SI(flag[32]), .SE(test_se), .CK(clk), .Q(
        flag[33]) );
  SDFFQXL \flag_reg[34]  ( .D(n28), .SI(flag[33]), .SE(test_se), .CK(clk), .Q(
        flag[34]) );
  SDFFQXL \flag_reg[35]  ( .D(n27), .SI(flag[34]), .SE(test_se), .CK(clk), .Q(
        flag[35]) );
  SDFFQXL \count_reg[1]  ( .D(N197), .SI(count[0]), .SE(test_se), .CK(clk), 
        .Q(count[1]) );
  SDFFQXL \count_reg[0]  ( .D(N196), .SI(unsort_data[7]), .SE(test_se), .CK(
        clk), .Q(count[0]) );
  SDFFQXL \sorted_data_reg[31]  ( .D(sorting_data[31]), .SI(sorted_data[30]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[31]) );
  SDFFQXL \sorted_flag_reg[6]  ( .D(sorting_flag[6]), .SI(sorted_flag[5]), 
        .SE(test_se), .CK(clk), .Q(sorted_flag[6]) );
  SDFFQXL \sorted_flag_reg[7]  ( .D(sorting_flag[7]), .SI(sorted_flag[6]), 
        .SE(test_se), .CK(clk), .Q(sorted_flag[7]) );
  SDFFQXL \sorted_flag_reg[8]  ( .D(sorting_flag[8]), .SI(sorted_flag[7]), 
        .SE(test_se), .CK(clk), .Q(sorted_flag[8]) );
  SDFFQXL \sorted_flag_reg[9]  ( .D(sorting_flag[9]), .SI(sorted_flag[8]), 
        .SE(test_se), .CK(clk), .Q(sorted_flag[9]) );
  SDFFQXL \sorted_flag_reg[10]  ( .D(sorting_flag[10]), .SI(sorted_flag[9]), 
        .SE(test_se), .CK(clk), .Q(sorted_flag[10]) );
  SDFFQXL \sorted_flag_reg[11]  ( .D(sorting_flag[11]), .SI(sorted_flag[10]), 
        .SE(test_se), .CK(clk), .Q(sorted_flag[11]) );
  SDFFQXL \sorted_data_reg[14]  ( .D(sorting_data[14]), .SI(sorted_data[13]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[14]) );
  SDFFQXL \sorted_data_reg[15]  ( .D(sorting_data[15]), .SI(sorted_data[14]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[15]) );
  SDFFQXL \sorted_data_reg[39]  ( .D(sorting_data[39]), .SI(sorted_data[38]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[39]) );
  SDFFXL \count_reg[2]  ( .D(N198), .SI(count[1]), .SE(test_se), .CK(clk), .Q(
        n292), .QN(n39) );
  SDFFQXL \sorted_flag_reg[30]  ( .D(mid_flag[30]), .SI(sorted_flag[29]), .SE(
        test_se), .CK(clk), .Q(sorted_flag[30]) );
  SDFFQXL \sorted_flag_reg[31]  ( .D(mid_flag[31]), .SI(sorted_flag[30]), .SE(
        test_se), .CK(clk), .Q(sorted_flag[31]) );
  SDFFQXL \sorted_flag_reg[32]  ( .D(mid_flag[32]), .SI(sorted_flag[31]), .SE(
        test_se), .CK(clk), .Q(sorted_flag[32]) );
  SDFFQXL \sorted_flag_reg[33]  ( .D(mid_flag[33]), .SI(sorted_flag[32]), .SE(
        test_se), .CK(clk), .Q(sorted_flag[33]) );
  SDFFQXL \sorted_flag_reg[34]  ( .D(mid_flag[34]), .SI(sorted_flag[33]), .SE(
        test_se), .CK(clk), .Q(sorted_flag[34]) );
  SDFFQXL \sorted_flag_reg[35]  ( .D(mid_flag[35]), .SI(sorted_flag[34]), .SE(
        test_se), .CK(clk), .Q(sorted_flag[35]) );
  SDFFQXL \sorted_data_reg[40]  ( .D(mid_data[40]), .SI(sorted_data[39]), .SE(
        test_se), .CK(clk), .Q(sorted_data[40]) );
  SDFFQXL \sorted_data_reg[41]  ( .D(mid_data[41]), .SI(sorted_data[40]), .SE(
        test_se), .CK(clk), .Q(sorted_data[41]) );
  SDFFQXL \sorted_data_reg[42]  ( .D(mid_data[42]), .SI(sorted_data[41]), .SE(
        test_se), .CK(clk), .Q(sorted_data[42]) );
  SDFFQXL \sorted_data_reg[43]  ( .D(mid_data[43]), .SI(sorted_data[42]), .SE(
        test_se), .CK(clk), .Q(sorted_data[43]) );
  SDFFQXL \sorted_data_reg[44]  ( .D(mid_data[44]), .SI(sorted_data[43]), .SE(
        test_se), .CK(clk), .Q(sorted_data[44]) );
  SDFFQXL \sorted_data_reg[45]  ( .D(mid_data[45]), .SI(sorted_data[44]), .SE(
        test_se), .CK(clk), .Q(sorted_data[45]) );
  SDFFQXL \sorted_data_reg[0]  ( .D(mid_data[0]), .SI(en[2]), .SE(test_se), 
        .CK(clk), .Q(sorted_data[0]) );
  SDFFQXL \sorted_data_reg[1]  ( .D(mid_data[1]), .SI(sorted_data[0]), .SE(
        test_se), .CK(clk), .Q(sorted_data[1]) );
  SDFFQXL \sorted_data_reg[2]  ( .D(mid_data[2]), .SI(sorted_data[1]), .SE(
        test_se), .CK(clk), .Q(sorted_data[2]) );
  SDFFQXL \sorted_data_reg[3]  ( .D(mid_data[3]), .SI(sorted_data[2]), .SE(
        test_se), .CK(clk), .Q(sorted_data[3]) );
  SDFFQXL \sorted_flag_reg[12]  ( .D(sorting_flag[12]), .SI(sorted_flag[11]), 
        .SE(test_se), .CK(clk), .Q(sorted_flag[12]) );
  SDFFQXL \sorted_flag_reg[13]  ( .D(sorting_flag[13]), .SI(sorted_flag[12]), 
        .SE(test_se), .CK(clk), .Q(sorted_flag[13]) );
  SDFFQXL \sorted_flag_reg[14]  ( .D(sorting_flag[14]), .SI(sorted_flag[13]), 
        .SE(test_se), .CK(clk), .Q(sorted_flag[14]) );
  SDFFQXL \sorted_flag_reg[15]  ( .D(sorting_flag[15]), .SI(sorted_flag[14]), 
        .SE(test_se), .CK(clk), .Q(sorted_flag[15]) );
  SDFFQXL \sorted_flag_reg[16]  ( .D(sorting_flag[16]), .SI(sorted_flag[15]), 
        .SE(test_se), .CK(clk), .Q(sorted_flag[16]) );
  SDFFQXL \sorted_flag_reg[17]  ( .D(sorting_flag[17]), .SI(sorted_flag[16]), 
        .SE(test_se), .CK(clk), .Q(sorted_flag[17]) );
  SDFFQXL \sorted_data_reg[16]  ( .D(sorting_data[16]), .SI(sorted_data[15]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[16]) );
  SDFFQXL \sorted_data_reg[17]  ( .D(sorting_data[17]), .SI(sorted_data[16]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[17]) );
  SDFFQXL \sorted_data_reg[18]  ( .D(sorting_data[18]), .SI(sorted_data[17]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[18]) );
  SDFFQXL \sorted_data_reg[19]  ( .D(sorting_data[19]), .SI(sorted_data[18]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[19]) );
  SDFFQXL \sorted_data_reg[20]  ( .D(sorting_data[20]), .SI(sorted_data[19]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[20]) );
  SDFFQXL \sorted_data_reg[21]  ( .D(sorting_data[21]), .SI(sorted_data[20]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[21]) );
  SDFFQXL \sorted_data_reg[22]  ( .D(sorting_data[22]), .SI(sorted_data[21]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[22]) );
  SDFFQXL \sorted_flag_reg[18]  ( .D(sorting_flag[18]), .SI(sorted_flag[17]), 
        .SE(test_se), .CK(clk), .Q(sorted_flag[18]) );
  SDFFQXL \sorted_flag_reg[19]  ( .D(sorting_flag[19]), .SI(sorted_flag[18]), 
        .SE(test_se), .CK(clk), .Q(sorted_flag[19]) );
  SDFFQXL \sorted_flag_reg[20]  ( .D(sorting_flag[20]), .SI(sorted_flag[19]), 
        .SE(test_se), .CK(clk), .Q(sorted_flag[20]) );
  SDFFQXL \sorted_flag_reg[21]  ( .D(sorting_flag[21]), .SI(sorted_flag[20]), 
        .SE(test_se), .CK(clk), .Q(sorted_flag[21]) );
  SDFFQXL \sorted_flag_reg[22]  ( .D(sorting_flag[22]), .SI(sorted_flag[21]), 
        .SE(test_se), .CK(clk), .Q(sorted_flag[22]) );
  SDFFQXL \sorted_flag_reg[23]  ( .D(sorting_flag[23]), .SI(sorted_flag[22]), 
        .SE(test_se), .CK(clk), .Q(sorted_flag[23]) );
  SDFFQXL \sorted_data_reg[25]  ( .D(sorting_data[25]), .SI(sorted_data[24]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[25]) );
  SDFFQXL \sorted_data_reg[26]  ( .D(sorting_data[26]), .SI(sorted_data[25]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[26]) );
  SDFFQXL \sorted_data_reg[27]  ( .D(sorting_data[27]), .SI(sorted_data[26]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[27]) );
  SDFFQXL \sorted_data_reg[28]  ( .D(n2), .SI(sorted_data[27]), .SE(test_se), 
        .CK(clk), .Q(sorted_data[28]) );
  SDFFQXL \sorted_data_reg[29]  ( .D(sorting_data[29]), .SI(sorted_data[28]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[29]) );
  SDFFQXL \sorted_data_reg[30]  ( .D(sorting_data[30]), .SI(sorted_data[29]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[30]) );
  SDFFQXL \sorted_data_reg[8]  ( .D(sorting_data[8]), .SI(sorted_data[7]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[8]) );
  SDFFQXL \sorted_data_reg[9]  ( .D(sorting_data[9]), .SI(sorted_data[8]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[9]) );
  SDFFQXL \sorted_data_reg[10]  ( .D(sorting_data[10]), .SI(sorted_data[9]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[10]) );
  SDFFQXL \sorted_data_reg[11]  ( .D(sorting_data[11]), .SI(sorted_data[10]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[11]) );
  SDFFQXL \sorted_data_reg[12]  ( .D(sorting_data[12]), .SI(sorted_data[11]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[12]) );
  SDFFQXL \sorted_data_reg[13]  ( .D(sorting_data[13]), .SI(sorted_data[12]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[13]) );
  SDFFQXL \sorted_flag_reg[24]  ( .D(sorting_flag[24]), .SI(sorted_flag[23]), 
        .SE(test_se), .CK(clk), .Q(sorted_flag[24]) );
  SDFFQXL \sorted_flag_reg[25]  ( .D(sorting_flag[25]), .SI(sorted_flag[24]), 
        .SE(test_se), .CK(clk), .Q(sorted_flag[25]) );
  SDFFQXL \sorted_flag_reg[26]  ( .D(sorting_flag[26]), .SI(sorted_flag[25]), 
        .SE(test_se), .CK(clk), .Q(sorted_flag[26]) );
  SDFFQXL \sorted_flag_reg[27]  ( .D(sorting_flag[27]), .SI(sorted_flag[26]), 
        .SE(test_se), .CK(clk), .Q(sorted_flag[27]) );
  SDFFQXL \sorted_flag_reg[28]  ( .D(sorting_flag[28]), .SI(sorted_flag[27]), 
        .SE(test_se), .CK(clk), .Q(sorted_flag[28]) );
  SDFFQXL \sorted_flag_reg[29]  ( .D(sorting_flag[29]), .SI(sorted_flag[28]), 
        .SE(test_se), .CK(clk), .Q(sorted_flag[29]) );
  SDFFQXL \sorted_data_reg[32]  ( .D(sorting_data[32]), .SI(sorted_data[31]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[32]) );
  SDFFQXL \sorted_data_reg[33]  ( .D(sorting_data[33]), .SI(sorted_data[32]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[33]) );
  SDFFQXL \sorted_data_reg[34]  ( .D(sorting_data[34]), .SI(sorted_data[33]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[34]) );
  SDFFQXL \sorted_data_reg[35]  ( .D(sorting_data[35]), .SI(sorted_data[34]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[35]) );
  SDFFQXL \sorted_data_reg[36]  ( .D(sorting_data[36]), .SI(sorted_data[35]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[36]) );
  SDFFQXL \sorted_data_reg[37]  ( .D(sorting_data[37]), .SI(sorted_data[36]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[37]) );
  SDFFQXL \sorted_data_reg[38]  ( .D(sorting_data[38]), .SI(sorted_data[37]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[38]) );
  SDFFQXL \sorted_data_reg[24]  ( .D(sorting_data[24]), .SI(sorted_data[23]), 
        .SE(test_se), .CK(clk), .Q(sorted_data[24]) );
  SDFFQXL \data_reg[16]  ( .D(N163), .SI(data[15]), .SE(test_se), .CK(clk), 
        .Q(data[16]) );
  SEDFFXL \num_reg_reg[0]  ( .D(num[0]), .SI(flag[35]), .E(n289), .SE(test_se), 
        .CK(clk), .Q(num_reg[0]), .QN(n38) );
  SDFFQXL \data_reg[32]  ( .D(N179), .SI(data[31]), .SE(test_se), .CK(clk), 
        .Q(data[32]) );
  SDFFQXL \data_reg[8]  ( .D(N155), .SI(data[7]), .SE(test_se), .CK(clk), .Q(
        data[8]) );
  SDFFQXL \data_reg[0]  ( .D(n54), .SI(n292), .SE(test_se), .CK(clk), .Q(
        data[0]) );
  SDFFQXL \data_reg[33]  ( .D(N180), .SI(data[32]), .SE(test_se), .CK(clk), 
        .Q(data[33]) );
  SDFFQXL \data_reg[24]  ( .D(N171), .SI(data[23]), .SE(test_se), .CK(clk), 
        .Q(data[24]) );
  SDFFQXL \data_reg[40]  ( .D(n30), .SI(data[39]), .SE(test_se), .CK(clk), .Q(
        data[40]) );
  SDFFQXL \data_reg[11]  ( .D(N158), .SI(data[10]), .SE(test_se), .CK(clk), 
        .Q(data[11]) );
  SDFFQXL \data_reg[1]  ( .D(n53), .SI(data[0]), .SE(test_se), .CK(clk), .Q(
        data[1]) );
  SDFFQXL \data_reg[17]  ( .D(N164), .SI(data[16]), .SE(test_se), .CK(clk), 
        .Q(data[17]) );
  SDFFQXL \data_reg[21]  ( .D(N168), .SI(data[20]), .SE(test_se), .CK(clk), 
        .Q(data[21]) );
  SDFFQXL \data_reg[30]  ( .D(N177), .SI(data[29]), .SE(test_se), .CK(clk), 
        .Q(data[30]) );
  SDFFQXL \data_reg[46]  ( .D(n32), .SI(data[45]), .SE(test_se), .CK(clk), .Q(
        data[46]) );
  SDFFQXL \data_reg[20]  ( .D(N167), .SI(data[19]), .SE(test_se), .CK(clk), 
        .Q(data[20]) );
  SDFFQXL \data_reg[5]  ( .D(n49), .SI(data[4]), .SE(test_se), .CK(clk), .Q(
        data[5]) );
  SDFFQXL \data_reg[37]  ( .D(N184), .SI(data[36]), .SE(test_se), .CK(clk), 
        .Q(data[37]) );
  SDFFQXL \data_reg[36]  ( .D(N183), .SI(data[35]), .SE(test_se), .CK(clk), 
        .Q(data[36]) );
  SDFFQXL \data_reg[10]  ( .D(N157), .SI(data[9]), .SE(test_se), .CK(clk), .Q(
        data[10]) );
  SDFFQXL \data_reg[42]  ( .D(n40), .SI(data[41]), .SE(test_se), .CK(clk), .Q(
        data[42]) );
  SDFFQXL \data_reg[26]  ( .D(N173), .SI(data[25]), .SE(test_se), .CK(clk), 
        .Q(data[26]) );
  SDFFQXL \data_reg[4]  ( .D(n50), .SI(data[3]), .SE(test_se), .CK(clk), .Q(
        data[4]) );
  SDFFQXL \data_reg[14]  ( .D(N161), .SI(data[13]), .SE(test_se), .CK(clk), 
        .Q(data[14]) );
  SDFFQXL \data_reg[15]  ( .D(N162), .SI(data[14]), .SE(test_se), .CK(clk), 
        .Q(data[15]) );
  SEDFFXL \num_reg_reg[2]  ( .D(num[2]), .SI(num_reg[1]), .E(n289), .SE(
        test_se), .CK(clk), .Q(en[2]), .QN(n36) );
  SEDFFXL \num_reg_reg[1]  ( .D(num[1]), .SI(num_reg[0]), .E(n289), .SE(
        test_se), .CK(clk), .Q(num_reg[1]), .QN(n37) );
  SDFFQXL \data_reg[6]  ( .D(n48), .SI(data[5]), .SE(test_se), .CK(clk), .Q(
        data[6]) );
  SDFFQXL \data_reg[18]  ( .D(N165), .SI(data[17]), .SE(test_se), .CK(clk), 
        .Q(data[18]) );
  SDFFQXL \data_reg[22]  ( .D(N169), .SI(data[21]), .SE(test_se), .CK(clk), 
        .Q(data[22]) );
  SDFFQXL \data_reg[34]  ( .D(N181), .SI(data[33]), .SE(test_se), .CK(clk), 
        .Q(data[34]) );
  SDFFQXL \data_reg[44]  ( .D(n34), .SI(data[43]), .SE(test_se), .CK(clk), .Q(
        data[44]) );
  SDFFQXL \data_reg[2]  ( .D(n52), .SI(data[1]), .SE(test_se), .CK(clk), .Q(
        data[2]) );
  SDFFQXL \data_reg[12]  ( .D(N159), .SI(data[11]), .SE(test_se), .CK(clk), 
        .Q(data[12]) );
  SDFFQXL \data_reg[25]  ( .D(N172), .SI(data[24]), .SE(test_se), .CK(clk), 
        .Q(data[25]) );
  SDFFQXL \data_reg[28]  ( .D(N175), .SI(data[27]), .SE(test_se), .CK(clk), 
        .Q(data[28]) );
  SDFFQXL \data_reg[38]  ( .D(N185), .SI(data[37]), .SE(test_se), .CK(clk), 
        .Q(data[38]) );
  SDFFQXL \data_reg[41]  ( .D(n29), .SI(data[40]), .SE(test_se), .CK(clk), .Q(
        data[41]) );
  SDFFQXL \data_reg[19]  ( .D(N166), .SI(data[18]), .SE(test_se), .CK(clk), 
        .Q(data[19]) );
  SDFFQXL \data_reg[35]  ( .D(N182), .SI(data[34]), .SE(test_se), .CK(clk), 
        .Q(data[35]) );
  SDFFQXL \data_reg[45]  ( .D(n33), .SI(data[44]), .SE(test_se), .CK(clk), .Q(
        data[45]) );
  SDFFQXL \data_reg[3]  ( .D(n51), .SI(data[2]), .SE(test_se), .CK(clk), .Q(
        data[3]) );
  SDFFQXL \data_reg[13]  ( .D(N160), .SI(data[12]), .SE(test_se), .CK(clk), 
        .Q(data[13]) );
  SDFFQXL \data_reg[29]  ( .D(N176), .SI(data[28]), .SE(test_se), .CK(clk), 
        .Q(data[29]) );
  SDFFQXL \data_reg[9]  ( .D(N156), .SI(data[8]), .SE(test_se), .CK(clk), .Q(
        data[9]) );
  SDFFQXL \data_reg[43]  ( .D(n35), .SI(data[42]), .SE(test_se), .CK(clk), .Q(
        data[43]) );
  SDFFQXL \data_reg[27]  ( .D(N174), .SI(data[26]), .SE(test_se), .CK(clk), 
        .Q(data[27]) );
  SDFFQXL \data_reg[39]  ( .D(N186), .SI(data[38]), .SE(test_se), .CK(clk), 
        .Q(data[39]) );
  SDFFQXL \data_reg[23]  ( .D(N170), .SI(data[22]), .SE(test_se), .CK(clk), 
        .Q(data[23]) );
  SDFFQX2 \data_reg[7]  ( .D(n47), .SI(data[6]), .SE(test_se), .CK(clk), .Q(
        data[7]) );
  SDFFQXL \data_reg[47]  ( .D(n31), .SI(data[46]), .SE(test_se), .CK(clk), .Q(
        data[47]) );
  SDFFQXL \data_reg[31]  ( .D(N178), .SI(data[30]), .SE(test_se), .CK(clk), 
        .Q(data[31]) );
endmodule


module SplitCell_5_test_1 ( rst, en, clk, flag_A, flag_B, HC, M, test_si, 
        test_se );
  output [7:0] HC;
  output [7:0] M;
  input rst, en, clk, flag_A, flag_B, test_si, test_se;
  wire   n2, n4, n5, n7, n9, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n1, n3, n6;

  CLKINVX1 U3 ( .A(n1), .Y(n3) );
  NAND4BX1 U4 ( .AN(flag_A), .B(n18), .C(flag_B), .D(en), .Y(n7) );
  OAI22XL U5 ( .A0(n18), .A1(n3), .B0(n30), .B1(n1), .Y(n37) );
  OAI22XL U6 ( .A0(n31), .A1(n3), .B0(n32), .B1(n1), .Y(n39) );
  OAI22XL U7 ( .A0(n34), .A1(n3), .B0(n35), .B1(n1), .Y(n42) );
  OAI22XL U8 ( .A0(n35), .A1(n3), .B0(n36), .B1(n1), .Y(n43) );
  OAI22XL U9 ( .A0(n33), .A1(n3), .B0(n34), .B1(n1), .Y(n41) );
  OAI22XL U10 ( .A0(n30), .A1(n3), .B0(n31), .B1(n1), .Y(n38) );
  OAI22XL U11 ( .A0(n32), .A1(n3), .B0(n33), .B1(n1), .Y(n40) );
  NAND3BX1 U12 ( .AN(n7), .B(n31), .C(n30), .Y(n5) );
  NAND3BX1 U13 ( .AN(n5), .B(n33), .C(n32), .Y(n4) );
  OAI21XL U14 ( .A0(n30), .A1(n7), .B0(n19), .Y(n27) );
  OAI21XL U15 ( .A0(n32), .A1(n5), .B0(n16), .Y(n25) );
  OAI21XL U16 ( .A0(n35), .A1(n2), .B0(n13), .Y(n22) );
  NAND2BX1 U17 ( .AN(n4), .B(n34), .Y(n2) );
  OAI21XL U18 ( .A0(n34), .A1(n4), .B0(n14), .Y(n23) );
  CLKBUFX3 U19 ( .A(n9), .Y(n1) );
  OAI21XL U20 ( .A0(flag_B), .A1(flag_A), .B0(en), .Y(n9) );
  NAND2X1 U21 ( .A(n36), .B(n1), .Y(n29) );
  OAI31XL U22 ( .A0(M[1]), .A1(n2), .A2(M[0]), .B0(n11), .Y(n20) );
  OAI31XL U23 ( .A0(M[1]), .A1(n36), .A2(n2), .B0(n12), .Y(n21) );
  OAI31XL U24 ( .A0(M[4]), .A1(n33), .A2(n5), .B0(n15), .Y(n24) );
  OAI31XL U25 ( .A0(M[6]), .A1(n31), .A2(n7), .B0(n17), .Y(n26) );
  CLKINVX1 U26 ( .A(rst), .Y(n6) );
  SDFFRXL \HC_reg[6]  ( .D(n26), .SI(HC[5]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[6]), .QN(n17) );
  SDFFRXL \HC_reg[4]  ( .D(n24), .SI(HC[3]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[4]), .QN(n15) );
  SDFFRXL \HC_reg[1]  ( .D(n21), .SI(HC[0]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[1]), .QN(n12) );
  SDFFRXL \HC_reg[0]  ( .D(n20), .SI(test_si), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[0]), .QN(n11) );
  SDFFRXL \HC_reg[7]  ( .D(n27), .SI(HC[6]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[7]), .QN(n19) );
  SDFFRXL \HC_reg[5]  ( .D(n25), .SI(HC[4]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[5]), .QN(n16) );
  SDFFRXL \HC_reg[3]  ( .D(n23), .SI(HC[2]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[3]), .QN(n14) );
  SDFFRXL \HC_reg[2]  ( .D(n22), .SI(HC[1]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[2]), .QN(n13) );
  SDFFRXL \M_reg[0]  ( .D(n29), .SI(HC[7]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[0]), .QN(n36) );
  SDFFRXL \M_reg[1]  ( .D(n43), .SI(M[0]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[1]), .QN(n35) );
  SDFFRXL \M_reg[7]  ( .D(n37), .SI(M[6]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[7]), .QN(n18) );
  SDFFRXL \M_reg[3]  ( .D(n41), .SI(M[2]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[3]), .QN(n33) );
  SDFFRXL \M_reg[5]  ( .D(n39), .SI(M[4]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[5]), .QN(n31) );
  SDFFRXL \M_reg[2]  ( .D(n42), .SI(M[1]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[2]), .QN(n34) );
  SDFFRXL \M_reg[4]  ( .D(n40), .SI(M[3]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[4]), .QN(n32) );
  SDFFRXL \M_reg[6]  ( .D(n38), .SI(M[5]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[6]), .QN(n30) );
endmodule


module SplitCell_4_test_1 ( rst, en, clk, flag_A, flag_B, HC, M, test_si, 
        test_se );
  output [7:0] HC;
  output [7:0] M;
  input rst, en, clk, flag_A, flag_B, test_si, test_se;
  wire   n1, n3, n6, n8, n10, n28, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74;

  CLKINVX1 U3 ( .A(n1), .Y(n3) );
  NAND4BX1 U4 ( .AN(flag_A), .B(n62), .C(flag_B), .D(en), .Y(n71) );
  OAI22XL U5 ( .A0(n62), .A1(n3), .B0(n51), .B1(n1), .Y(n44) );
  OAI22XL U6 ( .A0(n50), .A1(n3), .B0(n49), .B1(n1), .Y(n42) );
  OAI22XL U7 ( .A0(n47), .A1(n3), .B0(n46), .B1(n1), .Y(n10) );
  OAI22XL U8 ( .A0(n46), .A1(n3), .B0(n45), .B1(n1), .Y(n8) );
  OAI22XL U9 ( .A0(n48), .A1(n3), .B0(n47), .B1(n1), .Y(n28) );
  OAI22XL U10 ( .A0(n51), .A1(n3), .B0(n50), .B1(n1), .Y(n43) );
  OAI22XL U11 ( .A0(n49), .A1(n3), .B0(n48), .B1(n1), .Y(n41) );
  NAND3BX1 U12 ( .AN(n71), .B(n50), .C(n51), .Y(n72) );
  NAND3BX1 U13 ( .AN(n72), .B(n48), .C(n49), .Y(n73) );
  OAI21XL U14 ( .A0(n51), .A1(n71), .B0(n61), .Y(n53) );
  OAI21XL U15 ( .A0(n49), .A1(n72), .B0(n64), .Y(n55) );
  OAI21XL U16 ( .A0(n46), .A1(n74), .B0(n67), .Y(n58) );
  NAND2BX1 U17 ( .AN(n73), .B(n47), .Y(n74) );
  OAI21XL U18 ( .A0(n47), .A1(n73), .B0(n66), .Y(n57) );
  CLKBUFX3 U19 ( .A(n70), .Y(n1) );
  OAI21XL U20 ( .A0(flag_B), .A1(flag_A), .B0(en), .Y(n70) );
  NAND2X1 U21 ( .A(n45), .B(n1), .Y(n52) );
  OAI31XL U22 ( .A0(M[1]), .A1(n74), .A2(M[0]), .B0(n69), .Y(n60) );
  OAI31XL U23 ( .A0(M[1]), .A1(n45), .A2(n74), .B0(n68), .Y(n59) );
  OAI31XL U24 ( .A0(M[4]), .A1(n48), .A2(n72), .B0(n65), .Y(n56) );
  OAI31XL U25 ( .A0(M[6]), .A1(n50), .A2(n71), .B0(n63), .Y(n54) );
  CLKINVX1 U26 ( .A(rst), .Y(n6) );
  SDFFRXL \HC_reg[6]  ( .D(n54), .SI(HC[5]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[6]), .QN(n63) );
  SDFFRXL \HC_reg[4]  ( .D(n56), .SI(HC[3]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[4]), .QN(n65) );
  SDFFRXL \HC_reg[1]  ( .D(n59), .SI(HC[0]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[1]), .QN(n68) );
  SDFFRXL \HC_reg[0]  ( .D(n60), .SI(test_si), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[0]), .QN(n69) );
  SDFFRXL \HC_reg[7]  ( .D(n53), .SI(HC[6]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[7]), .QN(n61) );
  SDFFRXL \HC_reg[5]  ( .D(n55), .SI(HC[4]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[5]), .QN(n64) );
  SDFFRXL \HC_reg[3]  ( .D(n57), .SI(HC[2]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[3]), .QN(n66) );
  SDFFRXL \HC_reg[2]  ( .D(n58), .SI(HC[1]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[2]), .QN(n67) );
  SDFFRXL \M_reg[0]  ( .D(n52), .SI(HC[7]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[0]), .QN(n45) );
  SDFFRXL \M_reg[1]  ( .D(n8), .SI(M[0]), .SE(test_se), .CK(clk), .RN(n6), .Q(
        M[1]), .QN(n46) );
  SDFFRXL \M_reg[7]  ( .D(n44), .SI(M[6]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[7]), .QN(n62) );
  SDFFRXL \M_reg[3]  ( .D(n28), .SI(M[2]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[3]), .QN(n48) );
  SDFFRXL \M_reg[5]  ( .D(n42), .SI(M[4]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[5]), .QN(n50) );
  SDFFRXL \M_reg[2]  ( .D(n10), .SI(M[1]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[2]), .QN(n47) );
  SDFFRXL \M_reg[4]  ( .D(n41), .SI(M[3]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[4]), .QN(n49) );
  SDFFRXL \M_reg[6]  ( .D(n43), .SI(M[5]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[6]), .QN(n51) );
endmodule


module SplitCell_3_test_1 ( rst, en, clk, flag_A, flag_B, HC, M, test_si, 
        test_se );
  output [7:0] HC;
  output [7:0] M;
  input rst, en, clk, flag_A, flag_B, test_si, test_se;
  wire   n1, n3, n6, n8, n10, n28, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74;

  CLKINVX1 U3 ( .A(n1), .Y(n3) );
  NAND4BX1 U4 ( .AN(flag_A), .B(n62), .C(flag_B), .D(en), .Y(n71) );
  OAI22XL U5 ( .A0(n62), .A1(n3), .B0(n51), .B1(n1), .Y(n44) );
  OAI22XL U6 ( .A0(n50), .A1(n3), .B0(n49), .B1(n1), .Y(n42) );
  OAI22XL U7 ( .A0(n47), .A1(n3), .B0(n46), .B1(n1), .Y(n10) );
  OAI22XL U8 ( .A0(n46), .A1(n3), .B0(n45), .B1(n1), .Y(n8) );
  OAI22XL U9 ( .A0(n48), .A1(n3), .B0(n47), .B1(n1), .Y(n28) );
  OAI22XL U10 ( .A0(n51), .A1(n3), .B0(n50), .B1(n1), .Y(n43) );
  OAI22XL U11 ( .A0(n49), .A1(n3), .B0(n48), .B1(n1), .Y(n41) );
  NAND3BX1 U12 ( .AN(n71), .B(n50), .C(n51), .Y(n72) );
  NAND3BX1 U13 ( .AN(n72), .B(n48), .C(n49), .Y(n73) );
  OAI21XL U14 ( .A0(n51), .A1(n71), .B0(n61), .Y(n53) );
  OAI21XL U15 ( .A0(n49), .A1(n72), .B0(n64), .Y(n55) );
  OAI21XL U16 ( .A0(n46), .A1(n74), .B0(n67), .Y(n58) );
  NAND2BX1 U17 ( .AN(n73), .B(n47), .Y(n74) );
  OAI21XL U18 ( .A0(n47), .A1(n73), .B0(n66), .Y(n57) );
  CLKBUFX3 U19 ( .A(n70), .Y(n1) );
  OAI21XL U20 ( .A0(flag_B), .A1(flag_A), .B0(en), .Y(n70) );
  NAND2X1 U21 ( .A(n45), .B(n1), .Y(n52) );
  OAI31XL U22 ( .A0(M[1]), .A1(n74), .A2(M[0]), .B0(n69), .Y(n60) );
  OAI31XL U23 ( .A0(M[1]), .A1(n45), .A2(n74), .B0(n68), .Y(n59) );
  OAI31XL U24 ( .A0(M[4]), .A1(n48), .A2(n72), .B0(n65), .Y(n56) );
  OAI31XL U25 ( .A0(M[6]), .A1(n50), .A2(n71), .B0(n63), .Y(n54) );
  CLKINVX1 U26 ( .A(rst), .Y(n6) );
  SDFFRXL \HC_reg[6]  ( .D(n54), .SI(HC[5]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[6]), .QN(n63) );
  SDFFRXL \HC_reg[4]  ( .D(n56), .SI(HC[3]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[4]), .QN(n65) );
  SDFFRXL \HC_reg[1]  ( .D(n59), .SI(HC[0]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[1]), .QN(n68) );
  SDFFRXL \HC_reg[0]  ( .D(n60), .SI(test_si), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[0]), .QN(n69) );
  SDFFRXL \HC_reg[7]  ( .D(n53), .SI(HC[6]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[7]), .QN(n61) );
  SDFFRXL \HC_reg[5]  ( .D(n55), .SI(HC[4]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[5]), .QN(n64) );
  SDFFRXL \HC_reg[3]  ( .D(n57), .SI(HC[2]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[3]), .QN(n66) );
  SDFFRXL \HC_reg[2]  ( .D(n58), .SI(HC[1]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[2]), .QN(n67) );
  SDFFRXL \M_reg[0]  ( .D(n52), .SI(HC[7]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[0]), .QN(n45) );
  SDFFRXL \M_reg[1]  ( .D(n8), .SI(M[0]), .SE(test_se), .CK(clk), .RN(n6), .Q(
        M[1]), .QN(n46) );
  SDFFRXL \M_reg[7]  ( .D(n44), .SI(M[6]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[7]), .QN(n62) );
  SDFFRXL \M_reg[3]  ( .D(n28), .SI(M[2]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[3]), .QN(n48) );
  SDFFRXL \M_reg[5]  ( .D(n42), .SI(M[4]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[5]), .QN(n50) );
  SDFFRXL \M_reg[2]  ( .D(n10), .SI(M[1]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[2]), .QN(n47) );
  SDFFRXL \M_reg[4]  ( .D(n41), .SI(M[3]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[4]), .QN(n49) );
  SDFFRXL \M_reg[6]  ( .D(n43), .SI(M[5]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[6]), .QN(n51) );
endmodule


module SplitCell_2_test_1 ( rst, en, clk, flag_A, flag_B, HC, M, test_si, 
        test_se );
  output [7:0] HC;
  output [7:0] M;
  input rst, en, clk, flag_A, flag_B, test_si, test_se;
  wire   n1, n3, n6, n8, n10, n28, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74;

  CLKINVX1 U3 ( .A(n1), .Y(n3) );
  NAND4BX1 U4 ( .AN(flag_A), .B(n62), .C(flag_B), .D(en), .Y(n71) );
  OAI22XL U5 ( .A0(n62), .A1(n3), .B0(n51), .B1(n1), .Y(n44) );
  OAI22XL U6 ( .A0(n50), .A1(n3), .B0(n49), .B1(n1), .Y(n42) );
  OAI22XL U7 ( .A0(n47), .A1(n3), .B0(n46), .B1(n1), .Y(n10) );
  OAI22XL U8 ( .A0(n46), .A1(n3), .B0(n45), .B1(n1), .Y(n8) );
  OAI22XL U9 ( .A0(n48), .A1(n3), .B0(n47), .B1(n1), .Y(n28) );
  OAI22XL U10 ( .A0(n51), .A1(n3), .B0(n50), .B1(n1), .Y(n43) );
  OAI22XL U11 ( .A0(n49), .A1(n3), .B0(n48), .B1(n1), .Y(n41) );
  NAND3BX1 U12 ( .AN(n71), .B(n50), .C(n51), .Y(n72) );
  NAND3BX1 U13 ( .AN(n72), .B(n48), .C(n49), .Y(n73) );
  OAI21XL U14 ( .A0(n51), .A1(n71), .B0(n61), .Y(n53) );
  OAI21XL U15 ( .A0(n49), .A1(n72), .B0(n64), .Y(n55) );
  OAI21XL U16 ( .A0(n46), .A1(n74), .B0(n67), .Y(n58) );
  NAND2BX1 U17 ( .AN(n73), .B(n47), .Y(n74) );
  OAI21XL U18 ( .A0(n47), .A1(n73), .B0(n66), .Y(n57) );
  CLKBUFX3 U19 ( .A(n70), .Y(n1) );
  OAI21XL U20 ( .A0(flag_B), .A1(flag_A), .B0(en), .Y(n70) );
  NAND2X1 U21 ( .A(n45), .B(n1), .Y(n52) );
  OAI31XL U22 ( .A0(M[1]), .A1(n74), .A2(M[0]), .B0(n69), .Y(n60) );
  OAI31XL U23 ( .A0(M[1]), .A1(n45), .A2(n74), .B0(n68), .Y(n59) );
  OAI31XL U24 ( .A0(M[4]), .A1(n48), .A2(n72), .B0(n65), .Y(n56) );
  OAI31XL U25 ( .A0(M[6]), .A1(n50), .A2(n71), .B0(n63), .Y(n54) );
  CLKINVX1 U26 ( .A(rst), .Y(n6) );
  SDFFRXL \HC_reg[6]  ( .D(n54), .SI(HC[5]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[6]), .QN(n63) );
  SDFFRXL \HC_reg[4]  ( .D(n56), .SI(HC[3]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[4]), .QN(n65) );
  SDFFRXL \HC_reg[1]  ( .D(n59), .SI(HC[0]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[1]), .QN(n68) );
  SDFFRXL \HC_reg[0]  ( .D(n60), .SI(test_si), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[0]), .QN(n69) );
  SDFFRXL \HC_reg[7]  ( .D(n53), .SI(HC[6]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[7]), .QN(n61) );
  SDFFRXL \HC_reg[5]  ( .D(n55), .SI(HC[4]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[5]), .QN(n64) );
  SDFFRXL \HC_reg[3]  ( .D(n57), .SI(HC[2]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[3]), .QN(n66) );
  SDFFRXL \HC_reg[2]  ( .D(n58), .SI(HC[1]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[2]), .QN(n67) );
  SDFFRXL \M_reg[0]  ( .D(n52), .SI(HC[7]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[0]), .QN(n45) );
  SDFFRXL \M_reg[1]  ( .D(n8), .SI(M[0]), .SE(test_se), .CK(clk), .RN(n6), .Q(
        M[1]), .QN(n46) );
  SDFFRXL \M_reg[7]  ( .D(n44), .SI(M[6]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[7]), .QN(n62) );
  SDFFRXL \M_reg[3]  ( .D(n28), .SI(M[2]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[3]), .QN(n48) );
  SDFFRXL \M_reg[5]  ( .D(n42), .SI(M[4]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[5]), .QN(n50) );
  SDFFRXL \M_reg[2]  ( .D(n10), .SI(M[1]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[2]), .QN(n47) );
  SDFFRXL \M_reg[4]  ( .D(n41), .SI(M[3]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[4]), .QN(n49) );
  SDFFRXL \M_reg[6]  ( .D(n43), .SI(M[5]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[6]), .QN(n51) );
endmodule


module SplitCell_1_test_1 ( rst, en, clk, flag_A, flag_B, HC, M, test_si, 
        test_se );
  output [7:0] HC;
  output [7:0] M;
  input rst, en, clk, flag_A, flag_B, test_si, test_se;
  wire   n1, n3, n6, n8, n10, n28, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74;

  CLKINVX1 U3 ( .A(n1), .Y(n3) );
  NAND4BX1 U4 ( .AN(flag_A), .B(n62), .C(flag_B), .D(en), .Y(n71) );
  OAI22XL U5 ( .A0(n62), .A1(n3), .B0(n51), .B1(n1), .Y(n44) );
  OAI22XL U6 ( .A0(n50), .A1(n3), .B0(n49), .B1(n1), .Y(n42) );
  OAI22XL U7 ( .A0(n47), .A1(n3), .B0(n46), .B1(n1), .Y(n10) );
  OAI22XL U8 ( .A0(n46), .A1(n3), .B0(n45), .B1(n1), .Y(n8) );
  OAI22XL U9 ( .A0(n48), .A1(n3), .B0(n47), .B1(n1), .Y(n28) );
  OAI22XL U10 ( .A0(n51), .A1(n3), .B0(n50), .B1(n1), .Y(n43) );
  OAI22XL U11 ( .A0(n49), .A1(n3), .B0(n48), .B1(n1), .Y(n41) );
  NAND3BX1 U12 ( .AN(n71), .B(n50), .C(n51), .Y(n72) );
  NAND3BX1 U13 ( .AN(n72), .B(n48), .C(n49), .Y(n73) );
  OAI21XL U14 ( .A0(n51), .A1(n71), .B0(n61), .Y(n53) );
  OAI21XL U15 ( .A0(n49), .A1(n72), .B0(n64), .Y(n55) );
  OAI21XL U16 ( .A0(n46), .A1(n74), .B0(n67), .Y(n58) );
  NAND2BX1 U17 ( .AN(n73), .B(n47), .Y(n74) );
  OAI21XL U18 ( .A0(n47), .A1(n73), .B0(n66), .Y(n57) );
  CLKBUFX3 U19 ( .A(n70), .Y(n1) );
  OAI21XL U20 ( .A0(flag_B), .A1(flag_A), .B0(en), .Y(n70) );
  NAND2X1 U21 ( .A(n45), .B(n1), .Y(n52) );
  OAI31XL U22 ( .A0(M[1]), .A1(n74), .A2(M[0]), .B0(n69), .Y(n60) );
  OAI31XL U23 ( .A0(M[1]), .A1(n45), .A2(n74), .B0(n68), .Y(n59) );
  OAI31XL U24 ( .A0(M[4]), .A1(n48), .A2(n72), .B0(n65), .Y(n56) );
  OAI31XL U25 ( .A0(M[6]), .A1(n50), .A2(n71), .B0(n63), .Y(n54) );
  CLKINVX1 U26 ( .A(rst), .Y(n6) );
  SDFFRXL \HC_reg[6]  ( .D(n54), .SI(HC[5]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[6]), .QN(n63) );
  SDFFRXL \HC_reg[4]  ( .D(n56), .SI(HC[3]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[4]), .QN(n65) );
  SDFFRXL \HC_reg[1]  ( .D(n59), .SI(HC[0]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[1]), .QN(n68) );
  SDFFRXL \HC_reg[0]  ( .D(n60), .SI(test_si), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[0]), .QN(n69) );
  SDFFRXL \HC_reg[7]  ( .D(n53), .SI(HC[6]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[7]), .QN(n61) );
  SDFFRXL \HC_reg[5]  ( .D(n55), .SI(HC[4]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[5]), .QN(n64) );
  SDFFRXL \HC_reg[3]  ( .D(n57), .SI(HC[2]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[3]), .QN(n66) );
  SDFFRXL \HC_reg[2]  ( .D(n58), .SI(HC[1]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[2]), .QN(n67) );
  SDFFRXL \M_reg[0]  ( .D(n52), .SI(HC[7]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[0]), .QN(n45) );
  SDFFRXL \M_reg[1]  ( .D(n8), .SI(M[0]), .SE(test_se), .CK(clk), .RN(n6), .Q(
        M[1]), .QN(n46) );
  SDFFRXL \M_reg[7]  ( .D(n44), .SI(M[6]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[7]), .QN(n62) );
  SDFFRXL \M_reg[3]  ( .D(n28), .SI(M[2]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[3]), .QN(n48) );
  SDFFRXL \M_reg[5]  ( .D(n42), .SI(M[4]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[5]), .QN(n50) );
  SDFFRXL \M_reg[2]  ( .D(n10), .SI(M[1]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[2]), .QN(n47) );
  SDFFRXL \M_reg[4]  ( .D(n41), .SI(M[3]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[4]), .QN(n49) );
  SDFFRXL \M_reg[6]  ( .D(n43), .SI(M[5]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[6]), .QN(n51) );
endmodule


module SplitCell_0_test_1 ( rst, en, clk, flag_A, flag_B, HC, M, test_si, 
        test_se );
  output [7:0] HC;
  output [7:0] M;
  input rst, en, clk, flag_A, flag_B, test_si, test_se;
  wire   n1, n3, n6, n8, n10, n28, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74;

  CLKINVX1 U3 ( .A(n1), .Y(n3) );
  NAND4BX1 U4 ( .AN(flag_A), .B(n62), .C(flag_B), .D(en), .Y(n71) );
  OAI22XL U5 ( .A0(n62), .A1(n3), .B0(n51), .B1(n1), .Y(n44) );
  OAI22XL U6 ( .A0(n50), .A1(n3), .B0(n49), .B1(n1), .Y(n42) );
  OAI22XL U7 ( .A0(n47), .A1(n3), .B0(n46), .B1(n1), .Y(n10) );
  OAI22XL U8 ( .A0(n46), .A1(n3), .B0(n45), .B1(n1), .Y(n8) );
  OAI22XL U9 ( .A0(n48), .A1(n3), .B0(n47), .B1(n1), .Y(n28) );
  OAI22XL U10 ( .A0(n51), .A1(n3), .B0(n50), .B1(n1), .Y(n43) );
  OAI22XL U11 ( .A0(n49), .A1(n3), .B0(n48), .B1(n1), .Y(n41) );
  NAND3BX1 U12 ( .AN(n71), .B(n50), .C(n51), .Y(n72) );
  NAND3BX1 U13 ( .AN(n72), .B(n48), .C(n49), .Y(n73) );
  OAI21XL U14 ( .A0(n51), .A1(n71), .B0(n61), .Y(n53) );
  OAI21XL U15 ( .A0(n49), .A1(n72), .B0(n64), .Y(n55) );
  OAI21XL U16 ( .A0(n46), .A1(n74), .B0(n67), .Y(n58) );
  NAND2BX1 U17 ( .AN(n73), .B(n47), .Y(n74) );
  OAI21XL U18 ( .A0(n47), .A1(n73), .B0(n66), .Y(n57) );
  CLKBUFX3 U19 ( .A(n70), .Y(n1) );
  OAI21XL U20 ( .A0(flag_B), .A1(flag_A), .B0(en), .Y(n70) );
  NAND2X1 U21 ( .A(n45), .B(n1), .Y(n52) );
  OAI31XL U22 ( .A0(M[1]), .A1(n74), .A2(M[0]), .B0(n69), .Y(n60) );
  OAI31XL U23 ( .A0(M[1]), .A1(n45), .A2(n74), .B0(n68), .Y(n59) );
  OAI31XL U24 ( .A0(M[4]), .A1(n48), .A2(n72), .B0(n65), .Y(n56) );
  OAI31XL U25 ( .A0(M[6]), .A1(n50), .A2(n71), .B0(n63), .Y(n54) );
  CLKINVX1 U26 ( .A(rst), .Y(n6) );
  SDFFRXL \HC_reg[6]  ( .D(n54), .SI(HC[5]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[6]), .QN(n63) );
  SDFFRXL \HC_reg[4]  ( .D(n56), .SI(HC[3]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[4]), .QN(n65) );
  SDFFRXL \HC_reg[1]  ( .D(n59), .SI(HC[0]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[1]), .QN(n68) );
  SDFFRXL \HC_reg[0]  ( .D(n60), .SI(test_si), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[0]), .QN(n69) );
  SDFFRXL \HC_reg[7]  ( .D(n53), .SI(HC[6]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[7]), .QN(n61) );
  SDFFRXL \HC_reg[5]  ( .D(n55), .SI(HC[4]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[5]), .QN(n64) );
  SDFFRXL \HC_reg[3]  ( .D(n57), .SI(HC[2]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[3]), .QN(n66) );
  SDFFRXL \HC_reg[2]  ( .D(n58), .SI(HC[1]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(HC[2]), .QN(n67) );
  SDFFRXL \M_reg[0]  ( .D(n52), .SI(HC[7]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[0]), .QN(n45) );
  SDFFRXL \M_reg[1]  ( .D(n8), .SI(M[0]), .SE(test_se), .CK(clk), .RN(n6), .Q(
        M[1]), .QN(n46) );
  SDFFRXL \M_reg[7]  ( .D(n44), .SI(M[6]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[7]), .QN(n62) );
  SDFFRXL \M_reg[3]  ( .D(n28), .SI(M[2]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[3]), .QN(n48) );
  SDFFRXL \M_reg[5]  ( .D(n42), .SI(M[4]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[5]), .QN(n50) );
  SDFFRXL \M_reg[2]  ( .D(n10), .SI(M[1]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[2]), .QN(n47) );
  SDFFRXL \M_reg[4]  ( .D(n41), .SI(M[3]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[4]), .QN(n49) );
  SDFFRXL \M_reg[6]  ( .D(n43), .SI(M[5]), .SE(test_se), .CK(clk), .RN(n6), 
        .Q(M[6]), .QN(n51) );
endmodule


module Control_test_1 ( clk, reset, gray_valid, gray_data_in, gray_data_out, 
        counter_en, CNT_valid, sort_set, sort_update_en, sort_done, sort_num, 
        split_en, code_valid, test_si, test_se );
  input [7:0] gray_data_in;
  output [7:0] gray_data_out;
  output [2:0] sort_num;
  input clk, reset, gray_valid, sort_done, test_si, test_se;
  output counter_en, CNT_valid, sort_set, sort_update_en, split_en, code_valid;
  wire   sort_update_en, \state[1] , n9, n10, n11, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n1, n2,
         n3, n4, n6, n7;
  assign split_en = sort_update_en;

  AOI33XL U3 ( .A0(n16), .A1(n10), .A2(sort_update_en), .B0(counter_en), .B1(
        n19), .B2(\state[1] ), .Y(n22) );
  OAI32XL U4 ( .A0(n9), .A1(\state[1] ), .A2(n16), .B0(sort_update_en), .B1(
        n17), .Y(n26) );
  NAND2XL U5 ( .A(counter_en), .B(sort_done), .Y(n18) );
  NAND3BX2 U6 ( .AN(n2), .B(n1), .C(n13), .Y(n19) );
  OR2X4 U7 ( .A(n10), .B(n4), .Y(n1) );
  NOR2X1 U8 ( .A(\state[1] ), .B(gray_valid), .Y(n2) );
  INVX1 U9 ( .A(sort_done), .Y(n4) );
  OAI211X1 U10 ( .A0(counter_en), .A1(sort_update_en), .B0(n19), .C0(n10), .Y(
        n20) );
  CLKINVX1 U11 ( .A(n13), .Y(n6) );
  CLKINVX1 U12 ( .A(n21), .Y(CNT_valid) );
  AOI22X1 U13 ( .A0(\state[1] ), .A1(n18), .B0(n10), .B1(gray_valid), .Y(n17)
         );
  CLKINVX1 U14 ( .A(n22), .Y(n3) );
  OAI211XL U15 ( .A0(n10), .A1(n19), .B0(n20), .C0(n21), .Y(n27) );
  NOR2X1 U16 ( .A(n10), .B(counter_en), .Y(sort_set) );
  NOR2X1 U17 ( .A(sort_update_en), .B(sort_set), .Y(n13) );
  OAI2BB2XL U18 ( .B0(n23), .B1(n13), .A0N(n13), .A1N(sort_num[2]), .Y(n28) );
  AOI211X1 U19 ( .A0(n11), .A1(n16), .B0(n24), .C0(code_valid), .Y(n23) );
  OA21XL U20 ( .A0(sort_num[0]), .A1(sort_num[1]), .B0(sort_num[2]), .Y(n24)
         );
  NOR2X1 U21 ( .A(sort_num[2]), .B(sort_num[1]), .Y(n16) );
  NOR2X1 U22 ( .A(n9), .B(n10), .Y(code_valid) );
  NAND2X1 U23 ( .A(sort_set), .B(n9), .Y(n21) );
  OAI2BB1X1 U24 ( .A0N(sort_num[1]), .A1N(n13), .B0(n14), .Y(n25) );
  OAI21XL U25 ( .A0(code_valid), .A1(n15), .B0(n6), .Y(n14) );
  XNOR2X1 U26 ( .A(sort_num[0]), .B(sort_num[1]), .Y(n15) );
  OAI32X1 U27 ( .A0(n13), .A1(sort_num[0]), .A2(code_valid), .B0(n11), .B1(n6), 
        .Y(n29) );
  CLKINVX1 U28 ( .A(reset), .Y(n7) );
  SDFFRX2 \state_reg[2]  ( .D(n3), .SI(\state[1] ), .SE(test_se), .CK(clk), 
        .RN(n7), .Q(sort_update_en), .QN(n9) );
  SDFFQXL \gray_data_out_reg[3]  ( .D(gray_data_in[3]), .SI(gray_data_out[2]), 
        .SE(test_se), .CK(clk), .Q(gray_data_out[3]) );
  SDFFQXL \gray_data_out_reg[4]  ( .D(gray_data_in[4]), .SI(gray_data_out[3]), 
        .SE(test_se), .CK(clk), .Q(gray_data_out[4]) );
  SDFFQXL \gray_data_out_reg[6]  ( .D(gray_data_in[6]), .SI(gray_data_out[5]), 
        .SE(test_se), .CK(clk), .Q(gray_data_out[6]) );
  SDFFQXL \gray_data_out_reg[7]  ( .D(gray_data_in[7]), .SI(gray_data_out[6]), 
        .SE(test_se), .CK(clk), .Q(gray_data_out[7]) );
  SDFFQXL \gray_data_out_reg[5]  ( .D(gray_data_in[5]), .SI(gray_data_out[4]), 
        .SE(test_se), .CK(clk), .Q(gray_data_out[5]) );
  SDFFRXL \sort_num_reg[0]  ( .D(n29), .SI(gray_data_out[7]), .SE(test_se), 
        .CK(clk), .RN(n7), .Q(sort_num[0]), .QN(n11) );
  SDFFSXL \sort_num_reg[2]  ( .D(n28), .SI(sort_num[1]), .SE(test_se), .CK(clk), .SN(n7), .Q(sort_num[2]) );
  SDFFSXL \sort_num_reg[1]  ( .D(n25), .SI(sort_num[0]), .SE(test_se), .CK(clk), .SN(n7), .Q(sort_num[1]) );
  SDFFRXL \state_reg[1]  ( .D(n27), .SI(counter_en), .SE(test_se), .CK(clk), 
        .RN(n7), .Q(\state[1] ), .QN(n10) );
  SDFFQXL \gray_data_out_reg[1]  ( .D(gray_data_in[1]), .SI(gray_data_out[0]), 
        .SE(test_se), .CK(clk), .Q(gray_data_out[1]) );
  SDFFQXL \gray_data_out_reg[0]  ( .D(gray_data_in[0]), .SI(test_si), .SE(
        test_se), .CK(clk), .Q(gray_data_out[0]) );
  SDFFQXL \gray_data_out_reg[2]  ( .D(gray_data_in[2]), .SI(gray_data_out[1]), 
        .SE(test_se), .CK(clk), .Q(gray_data_out[2]) );
  SDFFRXL \state_reg[0]  ( .D(n26), .SI(sort_num[2]), .SE(test_se), .CK(clk), 
        .RN(n7), .Q(counter_en) );
endmodule


module huffman ( clk, reset, gray_valid, gray_data, CNT_valid, CNT1, CNT2, 
        CNT3, CNT4, CNT5, CNT6, code_valid, HC1, HC2, HC3, HC4, HC5, HC6, M1, 
        M2, M3, M4, M5, M6, test_si, test_se );
  input [7:0] gray_data;
  output [7:0] CNT1;
  output [7:0] CNT2;
  output [7:0] CNT3;
  output [7:0] CNT4;
  output [7:0] CNT5;
  output [7:0] CNT6;
  output [7:0] HC1;
  output [7:0] HC2;
  output [7:0] HC3;
  output [7:0] HC4;
  output [7:0] HC5;
  output [7:0] HC6;
  output [7:0] M1;
  output [7:0] M2;
  output [7:0] M3;
  output [7:0] M4;
  output [7:0] M5;
  output [7:0] M6;
  input clk, reset, gray_valid, test_si, test_se;
  output CNT_valid, code_valid;
  wire   counter_en, sort_set, sort_update_en, sort_done, split_en, n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96;
  wire   [7:0] gray_data_out;
  wire   [2:0] sort_num;
  wire   [47:0] sorted_data;
  wire   [35:0] sorted_flag;
  wire   [7:0] update_data;
  wire   [5:0] update_flag;
  wire   [2:0] num_reg;
  wire   [7:0] data_A;
  wire   [7:0] data_B;
  wire   [5:0] flag_A;
  wire   [5:0] flag_B;

  Control_test_1 Control_U ( .clk(clk), .reset(reset), .gray_valid(gray_valid), 
        .gray_data_in(gray_data), .gray_data_out(gray_data_out), .counter_en(
        counter_en), .CNT_valid(CNT_valid), .sort_set(sort_set), 
        .sort_update_en(sort_update_en), .sort_done(sort_done), .sort_num(
        sort_num), .split_en(split_en), .code_valid(code_valid), .test_si(
        test_si), .test_se(test_se) );
  Counter_test_1 Counter_U ( .rst(reset), .en(counter_en), .clk(clk), 
        .gray_data(gray_data_out), .CNT1(CNT1), .CNT2(CNT2), .CNT3(CNT3), 
        .CNT4(CNT4), .CNT5(CNT5), .CNT6(CNT6), .test_si(split_en), .test_se(
        test_se) );
  Sort_test_1 Sort_U ( .unsort_data({CNT1, CNT2, CNT3, CNT4, CNT5, CNT6}), 
        .unsort_flag({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .clk(clk), .set(sort_set), .num(sort_num), 
        .update_data(update_data), .update_flag(update_flag), .update_en(
        sort_update_en), .done(sort_done), .sorted_data(sorted_data), 
        .sorted_flag(sorted_flag), .num_reg(num_reg), .test_se(test_se) );
  Merge_DW01_add_0 \Merge_U/add_200  ( .A(data_A), .B(data_B), .CI(1'b0), 
        .SUM(update_data) );
  SplitCell_0_test_1 \Split_U/SC[5]  ( .rst(reset), .en(split_en), .clk(clk), 
        .flag_A(flag_A[5]), .flag_B(flag_B[5]), .HC(HC6), .M(M6), .test_si(
        M5[7]), .test_se(test_se) );
  SplitCell_1_test_1 \Split_U/SC[4]  ( .rst(reset), .en(split_en), .clk(clk), 
        .flag_A(flag_A[4]), .flag_B(flag_B[4]), .HC(HC5), .M(M5), .test_si(
        M4[7]), .test_se(test_se) );
  SplitCell_2_test_1 \Split_U/SC[3]  ( .rst(reset), .en(split_en), .clk(clk), 
        .flag_A(flag_A[3]), .flag_B(flag_B[3]), .HC(HC4), .M(M4), .test_si(
        M3[7]), .test_se(test_se) );
  SplitCell_3_test_1 \Split_U/SC[2]  ( .rst(reset), .en(split_en), .clk(clk), 
        .flag_A(flag_A[2]), .flag_B(flag_B[2]), .HC(HC3), .M(M3), .test_si(
        M2[7]), .test_se(test_se) );
  SplitCell_4_test_1 \Split_U/SC[1]  ( .rst(reset), .en(split_en), .clk(clk), 
        .flag_A(flag_A[1]), .flag_B(flag_B[1]), .HC(HC2), .M(M2), .test_si(
        M1[7]), .test_se(test_se) );
  SplitCell_5_test_1 \Split_U/SC[0]  ( .rst(reset), .en(split_en), .clk(clk), 
        .flag_A(flag_A[0]), .flag_B(flag_B[0]), .HC(HC1), .M(M1), .test_si(
        sorted_flag[35]), .test_se(test_se) );
  NAND2X1 U3 ( .A(num_reg[1]), .B(num_reg[0]), .Y(n1) );
  CLKINVX1 U4 ( .A(n29), .Y(n91) );
  CLKBUFX3 U5 ( .A(n1), .Y(n93) );
  CLKBUFX3 U6 ( .A(n1), .Y(n92) );
  OR2X1 U7 ( .A(flag_A[5]), .B(flag_B[5]), .Y(update_flag[5]) );
  OR2X1 U8 ( .A(flag_A[4]), .B(flag_B[4]), .Y(update_flag[4]) );
  OR2X1 U9 ( .A(flag_A[3]), .B(flag_B[3]), .Y(update_flag[3]) );
  OR2X1 U10 ( .A(flag_A[2]), .B(flag_B[2]), .Y(update_flag[2]) );
  OR2X1 U11 ( .A(flag_A[1]), .B(flag_B[1]), .Y(update_flag[1]) );
  OR2X1 U12 ( .A(flag_A[0]), .B(flag_B[0]), .Y(update_flag[0]) );
  CLKINVX1 U13 ( .A(sorted_data[24]), .Y(n64) );
  NAND2X1 U14 ( .A(n2), .B(num_reg[1]), .Y(n29) );
  NOR2BX1 U15 ( .AN(n2), .B(num_reg[1]), .Y(n44) );
  NOR2BX1 U16 ( .AN(n2), .B(num_reg[1]), .Y(n96) );
  CLKINVX1 U17 ( .A(sorted_data[8]), .Y(n84) );
  CLKINVX1 U18 ( .A(sorted_data[32]), .Y(n56) );
  NOR2X1 U19 ( .A(num_reg[2]), .B(num_reg[0]), .Y(n45) );
  NOR2BX1 U20 ( .AN(num_reg[0]), .B(num_reg[1]), .Y(n95) );
  NOR2BX1 U21 ( .AN(num_reg[0]), .B(num_reg[1]), .Y(n46) );
  NOR2BX1 U22 ( .AN(num_reg[0]), .B(num_reg[1]), .Y(n94) );
  CLKINVX1 U23 ( .A(sorted_data[10]), .Y(n82) );
  CLKINVX1 U24 ( .A(sorted_data[11]), .Y(n81) );
  CLKINVX1 U25 ( .A(sorted_data[12]), .Y(n80) );
  CLKINVX1 U26 ( .A(sorted_data[13]), .Y(n79) );
  CLKINVX1 U27 ( .A(sorted_data[14]), .Y(n78) );
  CLKINVX1 U28 ( .A(sorted_flag[7]), .Y(n89) );
  CLKINVX1 U29 ( .A(sorted_flag[25]), .Y(n69) );
  CLKINVX1 U30 ( .A(sorted_flag[8]), .Y(n88) );
  CLKINVX1 U31 ( .A(sorted_flag[26]), .Y(n68) );
  CLKINVX1 U32 ( .A(sorted_flag[9]), .Y(n87) );
  CLKINVX1 U33 ( .A(sorted_flag[27]), .Y(n67) );
  CLKINVX1 U34 ( .A(sorted_flag[10]), .Y(n86) );
  CLKINVX1 U35 ( .A(sorted_flag[28]), .Y(n66) );
  CLKINVX1 U36 ( .A(sorted_flag[11]), .Y(n85) );
  CLKINVX1 U37 ( .A(sorted_flag[29]), .Y(n65) );
  CLKINVX1 U38 ( .A(sorted_flag[6]), .Y(n90) );
  CLKINVX1 U39 ( .A(sorted_flag[24]), .Y(n70) );
  CLKINVX1 U40 ( .A(sorted_flag[19]), .Y(n75) );
  CLKINVX1 U41 ( .A(sorted_flag[20]), .Y(n74) );
  CLKINVX1 U42 ( .A(sorted_flag[21]), .Y(n73) );
  CLKINVX1 U43 ( .A(sorted_flag[22]), .Y(n72) );
  CLKINVX1 U44 ( .A(sorted_flag[23]), .Y(n71) );
  CLKINVX1 U45 ( .A(sorted_flag[18]), .Y(n76) );
  CLKINVX1 U46 ( .A(sorted_data[25]), .Y(n63) );
  CLKINVX1 U47 ( .A(sorted_data[26]), .Y(n62) );
  CLKINVX1 U48 ( .A(sorted_data[27]), .Y(n61) );
  CLKINVX1 U49 ( .A(sorted_data[28]), .Y(n60) );
  CLKINVX1 U50 ( .A(sorted_data[33]), .Y(n55) );
  CLKINVX1 U51 ( .A(sorted_data[34]), .Y(n54) );
  CLKINVX1 U52 ( .A(sorted_data[35]), .Y(n53) );
  CLKINVX1 U53 ( .A(sorted_data[36]), .Y(n52) );
  CLKINVX1 U54 ( .A(sorted_data[37]), .Y(n51) );
  CLKINVX1 U55 ( .A(sorted_data[9]), .Y(n83) );
  CLKINVX1 U56 ( .A(sorted_data[29]), .Y(n59) );
  CLKINVX1 U57 ( .A(sorted_data[30]), .Y(n58) );
  CLKINVX1 U58 ( .A(sorted_data[31]), .Y(n57) );
  CLKINVX1 U59 ( .A(sorted_data[39]), .Y(n49) );
  CLKINVX1 U60 ( .A(sorted_data[38]), .Y(n50) );
  CLKINVX1 U61 ( .A(sorted_data[15]), .Y(n77) );
  NOR2BX1 U62 ( .AN(num_reg[2]), .B(num_reg[0]), .Y(n2) );
  AOI222XL U63 ( .A0(sorted_flag[12]), .A1(n94), .B0(sorted_flag[30]), .B1(n45), .C0(sorted_flag[18]), .C1(n96), .Y(n3) );
  OAI221XL U64 ( .A0(n29), .A1(n90), .B0(n92), .B1(n70), .C0(n3), .Y(flag_A[0]) );
  AOI222XL U65 ( .A0(sorted_flag[13]), .A1(n46), .B0(sorted_flag[31]), .B1(n45), .C0(sorted_flag[19]), .C1(n44), .Y(n4) );
  OAI221XL U66 ( .A0(n29), .A1(n89), .B0(n92), .B1(n69), .C0(n4), .Y(flag_A[1]) );
  AOI222XL U67 ( .A0(sorted_flag[14]), .A1(n95), .B0(sorted_flag[32]), .B1(n45), .C0(sorted_flag[20]), .C1(n96), .Y(n5) );
  OAI221XL U68 ( .A0(n29), .A1(n88), .B0(n92), .B1(n68), .C0(n5), .Y(flag_A[2]) );
  AOI222XL U69 ( .A0(sorted_flag[15]), .A1(n94), .B0(sorted_flag[33]), .B1(n45), .C0(sorted_flag[21]), .C1(n44), .Y(n6) );
  OAI221XL U70 ( .A0(n29), .A1(n87), .B0(n92), .B1(n67), .C0(n6), .Y(flag_A[3]) );
  AOI222XL U71 ( .A0(sorted_flag[16]), .A1(n46), .B0(sorted_flag[34]), .B1(n45), .C0(sorted_flag[22]), .C1(n96), .Y(n7) );
  OAI221XL U72 ( .A0(n29), .A1(n86), .B0(n92), .B1(n66), .C0(n7), .Y(flag_A[4]) );
  AOI222XL U73 ( .A0(sorted_flag[17]), .A1(n95), .B0(sorted_flag[35]), .B1(n45), .C0(sorted_flag[23]), .C1(n44), .Y(n8) );
  OAI221XL U74 ( .A0(n29), .A1(n85), .B0(n92), .B1(n65), .C0(n8), .Y(flag_A[5]) );
  NAND2X1 U75 ( .A(sorted_flag[0]), .B(n91), .Y(n10) );
  AOI222XL U76 ( .A0(sorted_flag[6]), .A1(n94), .B0(sorted_flag[24]), .B1(n45), 
        .C0(sorted_flag[12]), .C1(n96), .Y(n9) );
  OAI211X1 U77 ( .A0(n93), .A1(n76), .B0(n10), .C0(n9), .Y(flag_B[0]) );
  NAND2X1 U78 ( .A(sorted_flag[1]), .B(n91), .Y(n12) );
  AOI222XL U79 ( .A0(sorted_flag[7]), .A1(n46), .B0(sorted_flag[25]), .B1(n45), 
        .C0(sorted_flag[13]), .C1(n44), .Y(n11) );
  OAI211X1 U80 ( .A0(n93), .A1(n75), .B0(n12), .C0(n11), .Y(flag_B[1]) );
  NAND2X1 U81 ( .A(sorted_flag[2]), .B(n91), .Y(n14) );
  AOI222XL U82 ( .A0(sorted_flag[8]), .A1(n95), .B0(sorted_flag[26]), .B1(n45), 
        .C0(sorted_flag[14]), .C1(n96), .Y(n13) );
  OAI211X1 U83 ( .A0(n93), .A1(n74), .B0(n14), .C0(n13), .Y(flag_B[2]) );
  NAND2X1 U84 ( .A(sorted_flag[3]), .B(n91), .Y(n16) );
  AOI222XL U85 ( .A0(sorted_flag[9]), .A1(n94), .B0(sorted_flag[27]), .B1(n45), 
        .C0(sorted_flag[15]), .C1(n44), .Y(n15) );
  OAI211X1 U86 ( .A0(n93), .A1(n73), .B0(n16), .C0(n15), .Y(flag_B[3]) );
  NAND2X1 U87 ( .A(sorted_flag[4]), .B(n91), .Y(n18) );
  AOI222XL U88 ( .A0(sorted_flag[10]), .A1(n46), .B0(sorted_flag[28]), .B1(n45), .C0(sorted_flag[16]), .C1(n96), .Y(n17) );
  OAI211X1 U89 ( .A0(n92), .A1(n72), .B0(n18), .C0(n17), .Y(flag_B[4]) );
  NAND2X1 U90 ( .A(sorted_flag[5]), .B(n91), .Y(n20) );
  AOI222XL U91 ( .A0(sorted_flag[11]), .A1(n95), .B0(sorted_flag[29]), .B1(n45), .C0(sorted_flag[17]), .C1(n44), .Y(n19) );
  OAI211X1 U92 ( .A0(n92), .A1(n71), .B0(n20), .C0(n19), .Y(flag_B[5]) );
  AOI222XL U93 ( .A0(sorted_data[16]), .A1(n94), .B0(sorted_data[40]), .B1(n45), .C0(sorted_data[24]), .C1(n96), .Y(n21) );
  OAI221XL U94 ( .A0(n29), .A1(n84), .B0(n92), .B1(n56), .C0(n21), .Y(
        data_A[0]) );
  AOI222XL U95 ( .A0(sorted_data[17]), .A1(n46), .B0(sorted_data[41]), .B1(n45), .C0(sorted_data[25]), .C1(n44), .Y(n22) );
  OAI221XL U96 ( .A0(n29), .A1(n83), .B0(n92), .B1(n55), .C0(n22), .Y(
        data_A[1]) );
  AOI222XL U97 ( .A0(sorted_data[18]), .A1(n95), .B0(sorted_data[42]), .B1(n45), .C0(sorted_data[26]), .C1(n96), .Y(n23) );
  OAI221XL U98 ( .A0(n29), .A1(n82), .B0(n92), .B1(n54), .C0(n23), .Y(
        data_A[2]) );
  AOI222XL U99 ( .A0(sorted_data[19]), .A1(n94), .B0(sorted_data[43]), .B1(n45), .C0(sorted_data[27]), .C1(n44), .Y(n24) );
  OAI221XL U100 ( .A0(n29), .A1(n81), .B0(n92), .B1(n53), .C0(n24), .Y(
        data_A[3]) );
  AOI222XL U101 ( .A0(sorted_data[20]), .A1(n46), .B0(sorted_data[44]), .B1(
        n45), .C0(sorted_data[28]), .C1(n96), .Y(n25) );
  OAI221XL U102 ( .A0(n29), .A1(n80), .B0(n92), .B1(n52), .C0(n25), .Y(
        data_A[4]) );
  AOI222XL U103 ( .A0(sorted_data[21]), .A1(n95), .B0(sorted_data[45]), .B1(
        n45), .C0(sorted_data[29]), .C1(n44), .Y(n26) );
  OAI221XL U104 ( .A0(n29), .A1(n79), .B0(n92), .B1(n51), .C0(n26), .Y(
        data_A[5]) );
  AOI222XL U105 ( .A0(sorted_data[22]), .A1(n94), .B0(sorted_data[46]), .B1(
        n45), .C0(sorted_data[30]), .C1(n96), .Y(n27) );
  OAI221XL U106 ( .A0(n29), .A1(n78), .B0(n92), .B1(n50), .C0(n27), .Y(
        data_A[6]) );
  AOI222XL U107 ( .A0(n95), .A1(sorted_data[23]), .B0(sorted_data[47]), .B1(
        n45), .C0(sorted_data[31]), .C1(n44), .Y(n28) );
  OAI221XL U108 ( .A0(n77), .A1(n29), .B0(n49), .B1(n92), .C0(n28), .Y(
        data_A[7]) );
  NAND2X1 U109 ( .A(sorted_data[0]), .B(n91), .Y(n31) );
  AOI222XL U110 ( .A0(sorted_data[8]), .A1(n46), .B0(sorted_data[32]), .B1(n45), .C0(sorted_data[16]), .C1(n96), .Y(n30) );
  OAI211X1 U111 ( .A0(n93), .A1(n64), .B0(n31), .C0(n30), .Y(data_B[0]) );
  NAND2X1 U112 ( .A(sorted_data[1]), .B(n91), .Y(n33) );
  AOI222XL U113 ( .A0(sorted_data[9]), .A1(n95), .B0(sorted_data[33]), .B1(n45), .C0(sorted_data[17]), .C1(n44), .Y(n32) );
  OAI211X1 U114 ( .A0(n93), .A1(n63), .B0(n33), .C0(n32), .Y(data_B[1]) );
  NAND2X1 U115 ( .A(sorted_data[2]), .B(n91), .Y(n35) );
  AOI222XL U116 ( .A0(sorted_data[10]), .A1(n94), .B0(sorted_data[34]), .B1(
        n45), .C0(sorted_data[18]), .C1(n96), .Y(n34) );
  OAI211X1 U117 ( .A0(n93), .A1(n62), .B0(n35), .C0(n34), .Y(data_B[2]) );
  NAND2X1 U118 ( .A(sorted_data[3]), .B(n91), .Y(n37) );
  AOI222XL U119 ( .A0(sorted_data[11]), .A1(n46), .B0(sorted_data[35]), .B1(
        n45), .C0(sorted_data[19]), .C1(n44), .Y(n36) );
  OAI211X1 U120 ( .A0(n93), .A1(n61), .B0(n37), .C0(n36), .Y(data_B[3]) );
  NAND2X1 U121 ( .A(sorted_data[4]), .B(n91), .Y(n39) );
  AOI222XL U122 ( .A0(sorted_data[12]), .A1(n95), .B0(sorted_data[36]), .B1(
        n45), .C0(sorted_data[20]), .C1(n96), .Y(n38) );
  OAI211X1 U123 ( .A0(n93), .A1(n60), .B0(n39), .C0(n38), .Y(data_B[4]) );
  NAND2X1 U124 ( .A(sorted_data[5]), .B(n91), .Y(n41) );
  AOI222XL U125 ( .A0(sorted_data[13]), .A1(n94), .B0(sorted_data[37]), .B1(
        n45), .C0(sorted_data[21]), .C1(n44), .Y(n40) );
  OAI211X1 U126 ( .A0(n93), .A1(n59), .B0(n41), .C0(n40), .Y(data_B[5]) );
  NAND2X1 U127 ( .A(sorted_data[6]), .B(n91), .Y(n43) );
  AOI222XL U128 ( .A0(sorted_data[14]), .A1(n46), .B0(sorted_data[38]), .B1(
        n45), .C0(sorted_data[22]), .C1(n96), .Y(n42) );
  OAI211X1 U129 ( .A0(n93), .A1(n58), .B0(n43), .C0(n42), .Y(data_B[6]) );
  NAND2X1 U130 ( .A(sorted_data[7]), .B(n91), .Y(n48) );
  AOI222XL U131 ( .A0(sorted_data[15]), .A1(n95), .B0(sorted_data[39]), .B1(
        n45), .C0(sorted_data[23]), .C1(n44), .Y(n47) );
  OAI211X1 U132 ( .A0(n93), .A1(n57), .B0(n48), .C0(n47), .Y(data_B[7]) );
endmodule

