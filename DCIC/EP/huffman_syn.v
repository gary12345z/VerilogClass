/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03
// Date      : Wed Dec 11 23:03:40 2019
/////////////////////////////////////////////////////////////


module Control ( clk, reset, gray_valid, gray_data_in, gray_data_out, 
        counter_en, CNT_valid, sort_set, sort_update_en, sort_done, sort_num, 
        split_en, code_valid );
  input [7:0] gray_data_in;
  output [7:0] gray_data_out;
  output [2:0] sort_num;
  input clk, reset, gray_valid, sort_done;
  output counter_en, CNT_valid, sort_set, sort_update_en, split_en, code_valid;
  wire   CNT_valid, n21, n25, n26, n27, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n45, n47, n49, n51, n53, n55, n57,
         n59, n60, n61, n62, n63, n64, n65, n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;
  wire   [2:0] state;
  assign sort_set = CNT_valid;

  DFFSRX1 \gray_data_out_reg[3]  ( .D(gray_data_in[3]), .CK(clk), .SN(n15), 
        .RN(n4), .Q(gray_data_out[3]) );
  DFFSRX1 \gray_data_out_reg[4]  ( .D(gray_data_in[4]), .CK(clk), .SN(n16), 
        .RN(n5), .Q(gray_data_out[4]) );
  DFFRX1 \sort_num_reg[0]  ( .D(n61), .CK(clk), .RN(n20), .Q(sort_num[0]), 
        .QN(n21) );
  DFFSRX1 \gray_data_out_reg[6]  ( .D(gray_data_in[6]), .CK(clk), .SN(n18), 
        .RN(n7), .Q(gray_data_out[6]) );
  DFFSRX1 \gray_data_out_reg[7]  ( .D(gray_data_in[7]), .CK(clk), .SN(n19), 
        .RN(n8), .Q(gray_data_out[7]) );
  DFFSRX1 \gray_data_out_reg[5]  ( .D(gray_data_in[5]), .CK(clk), .SN(n17), 
        .RN(n6), .Q(gray_data_out[5]) );
  DFFRX1 \state_reg[1]  ( .D(n63), .CK(clk), .RN(n20), .Q(state[1]), .QN(n26)
         );
  DFFSRX1 \gray_data_out_reg[1]  ( .D(gray_data_in[1]), .CK(clk), .SN(n13), 
        .RN(n2), .Q(gray_data_out[1]) );
  DFFSRX1 \gray_data_out_reg[0]  ( .D(gray_data_in[0]), .CK(clk), .SN(n12), 
        .RN(n1), .Q(gray_data_out[0]) );
  DFFSRX1 \gray_data_out_reg[2]  ( .D(gray_data_in[2]), .CK(clk), .SN(n14), 
        .RN(n3), .Q(gray_data_out[2]) );
  DFFSX1 \sort_num_reg[2]  ( .D(n60), .CK(clk), .SN(n20), .Q(sort_num[2]) );
  DFFSX1 \sort_num_reg[1]  ( .D(n62), .CK(clk), .SN(n20), .Q(sort_num[1]) );
  DFFRX1 \state_reg[2]  ( .D(n64), .CK(clk), .RN(n20), .Q(state[2]), .QN(n25)
         );
  DFFRX1 \state_reg[0]  ( .D(n65), .CK(clk), .RN(n20), .Q(counter_en), .QN(n27) );
  NOR2X1 U3 ( .A(n25), .B(state[1]), .Y(split_en) );
  CLKINVX1 U4 ( .A(n29), .Y(n10) );
  CLKINVX1 U5 ( .A(n37), .Y(n9) );
  NOR2X1 U6 ( .A(split_en), .B(code_valid), .Y(n29) );
  CLKINVX1 U7 ( .A(n39), .Y(n11) );
  NAND4X1 U8 ( .A(n34), .B(n25), .C(n42), .D(n43), .Y(n37) );
  NAND3BX1 U9 ( .AN(gray_valid), .B(n26), .C(counter_en), .Y(n42) );
  AOI22X1 U10 ( .A0(sort_done), .A1(state[1]), .B0(n27), .B1(gray_valid), .Y(
        n43) );
  OAI22XL U11 ( .A0(n27), .A1(n37), .B0(n9), .B1(n41), .Y(n65) );
  AOI221XL U12 ( .A0(n27), .A1(n25), .B0(n38), .B1(n11), .C0(sort_update_en), 
        .Y(n41) );
  NAND3BX1 U13 ( .AN(sort_update_en), .B(n34), .C(n35), .Y(n63) );
  AOI22X1 U14 ( .A0(n36), .A1(n37), .B0(n9), .B1(state[1]), .Y(n35) );
  OAI32X1 U15 ( .A0(n27), .A1(state[2]), .A2(state[1]), .B0(n38), .B1(n39), 
        .Y(n36) );
  NOR2X1 U16 ( .A(n9), .B(n40), .Y(n64) );
  AOI2BB1X1 U17 ( .A0N(n26), .A1N(n27), .B0(n11), .Y(n40) );
  NAND2X1 U18 ( .A(state[1]), .B(n27), .Y(n34) );
  NOR2X1 U19 ( .A(n34), .B(state[2]), .Y(CNT_valid) );
  OAI21XL U20 ( .A0(n29), .A1(n27), .B0(n30), .Y(n60) );
  XNOR2X1 U21 ( .A(sort_num[2]), .B(n31), .Y(n30) );
  NOR2X1 U22 ( .A(sort_num[1]), .B(n32), .Y(n31) );
  OAI22XL U23 ( .A0(n10), .A1(n21), .B0(counter_en), .B1(n32), .Y(n61) );
  NAND2X1 U24 ( .A(split_en), .B(n27), .Y(n39) );
  NOR2X1 U25 ( .A(n27), .B(n25), .Y(code_valid) );
  OAI21XL U26 ( .A0(n29), .A1(n27), .B0(n33), .Y(n62) );
  XOR2X1 U27 ( .A(n32), .B(sort_num[1]), .Y(n33) );
  NAND2X1 U28 ( .A(n21), .B(n10), .Y(n32) );
  AOI21X1 U29 ( .A0(sort_num[0]), .A1(sort_num[1]), .B0(sort_num[2]), .Y(n38)
         );
  NOR2X1 U30 ( .A(n26), .B(n25), .Y(sort_update_en) );
  CLKINVX1 U31 ( .A(reset), .Y(n20) );
  CLKINVX1 U32 ( .A(n45), .Y(n12) );
  NOR2BX1 U33 ( .AN(gray_data_in[0]), .B(n20), .Y(n45) );
  CLKINVX1 U34 ( .A(n47), .Y(n13) );
  NOR2BX1 U35 ( .AN(gray_data_in[1]), .B(n20), .Y(n47) );
  CLKINVX1 U36 ( .A(n49), .Y(n14) );
  NOR2BX1 U37 ( .AN(gray_data_in[2]), .B(n20), .Y(n49) );
  CLKINVX1 U38 ( .A(n51), .Y(n15) );
  NOR2BX1 U39 ( .AN(gray_data_in[3]), .B(n20), .Y(n51) );
  CLKINVX1 U40 ( .A(n53), .Y(n16) );
  NOR2BX1 U41 ( .AN(gray_data_in[4]), .B(n20), .Y(n53) );
  CLKINVX1 U42 ( .A(n55), .Y(n17) );
  NOR2BX1 U43 ( .AN(gray_data_in[5]), .B(n20), .Y(n55) );
  CLKINVX1 U44 ( .A(n57), .Y(n18) );
  NOR2BX1 U45 ( .AN(gray_data_in[6]), .B(n20), .Y(n57) );
  CLKINVX1 U46 ( .A(n59), .Y(n19) );
  NOR2BX1 U47 ( .AN(gray_data_in[7]), .B(n20), .Y(n59) );
  OR2X1 U48 ( .A(gray_data_in[0]), .B(n20), .Y(n1) );
  OR2X1 U49 ( .A(gray_data_in[1]), .B(n20), .Y(n2) );
  OR2X1 U50 ( .A(gray_data_in[2]), .B(n20), .Y(n3) );
  OR2X1 U51 ( .A(gray_data_in[3]), .B(n20), .Y(n4) );
  OR2X1 U52 ( .A(gray_data_in[4]), .B(n20), .Y(n5) );
  OR2X1 U53 ( .A(gray_data_in[5]), .B(n20), .Y(n6) );
  OR2X1 U54 ( .A(gray_data_in[6]), .B(n20), .Y(n7) );
  OR2X1 U55 ( .A(gray_data_in[7]), .B(n20), .Y(n8) );
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


module Counter ( rst, en, clk, gray_data, CNT1, CNT2, CNT3, CNT4, CNT5, CNT6
 );
  input [7:0] gray_data;
  output [7:0] CNT1;
  output [7:0] CNT2;
  output [7:0] CNT3;
  output [7:0] CNT4;
  output [7:0] CNT5;
  output [7:0] CNT6;
  input rst, en, clk;
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
  DFFRX1 \CNT6_reg[7]  ( .D(n35), .CK(clk), .RN(n3), .Q(CNT6[7]) );
  DFFRX1 \CNT1_reg[7]  ( .D(n27), .CK(clk), .RN(n4), .Q(CNT1[7]) );
  DFFRX1 \CNT3_reg[7]  ( .D(n59), .CK(clk), .RN(n1), .Q(CNT3[7]) );
  DFFRX1 \CNT4_reg[7]  ( .D(n51), .CK(clk), .RN(n2), .Q(CNT4[7]) );
  DFFRX1 \CNT5_reg[7]  ( .D(n43), .CK(clk), .RN(n2), .Q(CNT5[7]) );
  DFFRX1 \CNT2_reg[7]  ( .D(n19), .CK(clk), .RN(n4), .Q(CNT2[7]) );
  DFFRX1 \CNT6_reg[1]  ( .D(n41), .CK(clk), .RN(n3), .Q(CNT6[1]) );
  DFFRX1 \CNT6_reg[2]  ( .D(n40), .CK(clk), .RN(n3), .Q(CNT6[2]) );
  DFFRX1 \CNT6_reg[3]  ( .D(n39), .CK(clk), .RN(n3), .Q(CNT6[3]) );
  DFFRX1 \CNT6_reg[4]  ( .D(n38), .CK(clk), .RN(n3), .Q(CNT6[4]) );
  DFFRX1 \CNT6_reg[5]  ( .D(n37), .CK(clk), .RN(n3), .Q(CNT6[5]) );
  DFFRX1 \CNT6_reg[6]  ( .D(n36), .CK(clk), .RN(n3), .Q(CNT6[6]) );
  DFFRX1 \CNT1_reg[1]  ( .D(n33), .CK(clk), .RN(n3), .Q(CNT1[1]) );
  DFFRX1 \CNT1_reg[2]  ( .D(n32), .CK(clk), .RN(n3), .Q(CNT1[2]) );
  DFFRX1 \CNT1_reg[3]  ( .D(n31), .CK(clk), .RN(n3), .Q(CNT1[3]) );
  DFFRX1 \CNT1_reg[4]  ( .D(n30), .CK(clk), .RN(n4), .Q(CNT1[4]) );
  DFFRX1 \CNT1_reg[5]  ( .D(n29), .CK(clk), .RN(n4), .Q(CNT1[5]) );
  DFFRX1 \CNT1_reg[6]  ( .D(n28), .CK(clk), .RN(n4), .Q(CNT1[6]) );
  DFFRX1 \CNT3_reg[1]  ( .D(n65), .CK(clk), .RN(n1), .Q(CNT3[1]) );
  DFFRX1 \CNT3_reg[2]  ( .D(n64), .CK(clk), .RN(n1), .Q(CNT3[2]) );
  DFFRX1 \CNT3_reg[3]  ( .D(n63), .CK(clk), .RN(n1), .Q(CNT3[3]) );
  DFFRX1 \CNT3_reg[4]  ( .D(n62), .CK(clk), .RN(n1), .Q(CNT3[4]) );
  DFFRX1 \CNT3_reg[5]  ( .D(n61), .CK(clk), .RN(n1), .Q(CNT3[5]) );
  DFFRX1 \CNT3_reg[6]  ( .D(n60), .CK(clk), .RN(n1), .Q(CNT3[6]) );
  DFFRX1 \CNT4_reg[1]  ( .D(n57), .CK(clk), .RN(n1), .Q(CNT4[1]) );
  DFFRX1 \CNT4_reg[2]  ( .D(n56), .CK(clk), .RN(n1), .Q(CNT4[2]) );
  DFFRX1 \CNT4_reg[3]  ( .D(n55), .CK(clk), .RN(n1), .Q(CNT4[3]) );
  DFFRX1 \CNT4_reg[4]  ( .D(n54), .CK(clk), .RN(n2), .Q(CNT4[4]) );
  DFFRX1 \CNT4_reg[5]  ( .D(n53), .CK(clk), .RN(n2), .Q(CNT4[5]) );
  DFFRX1 \CNT4_reg[6]  ( .D(n52), .CK(clk), .RN(n2), .Q(CNT4[6]) );
  DFFRX1 \CNT5_reg[1]  ( .D(n49), .CK(clk), .RN(n2), .Q(CNT5[1]) );
  DFFRX1 \CNT5_reg[2]  ( .D(n48), .CK(clk), .RN(n2), .Q(CNT5[2]) );
  DFFRX1 \CNT5_reg[3]  ( .D(n47), .CK(clk), .RN(n2), .Q(CNT5[3]) );
  DFFRX1 \CNT5_reg[4]  ( .D(n46), .CK(clk), .RN(n2), .Q(CNT5[4]) );
  DFFRX1 \CNT5_reg[5]  ( .D(n45), .CK(clk), .RN(n2), .Q(CNT5[5]) );
  DFFRX1 \CNT5_reg[6]  ( .D(n44), .CK(clk), .RN(n2), .Q(CNT5[6]) );
  DFFRX1 \CNT2_reg[1]  ( .D(n25), .CK(clk), .RN(n4), .Q(CNT2[1]) );
  DFFRX1 \CNT2_reg[2]  ( .D(n24), .CK(clk), .RN(n4), .Q(CNT2[2]) );
  DFFRX1 \CNT2_reg[3]  ( .D(n23), .CK(clk), .RN(n4), .Q(CNT2[3]) );
  DFFRX1 \CNT2_reg[4]  ( .D(n22), .CK(clk), .RN(n4), .Q(CNT2[4]) );
  DFFRX1 \CNT2_reg[5]  ( .D(n21), .CK(clk), .RN(n4), .Q(CNT2[5]) );
  DFFRX1 \CNT2_reg[6]  ( .D(n20), .CK(clk), .RN(n4), .Q(CNT2[6]) );
  DFFRX1 \CNT6_reg[0]  ( .D(n42), .CK(clk), .RN(n3), .Q(CNT6[0]) );
  DFFRX1 \CNT1_reg[0]  ( .D(n34), .CK(clk), .RN(n3), .Q(CNT1[0]) );
  DFFRX1 \CNT3_reg[0]  ( .D(n66), .CK(clk), .RN(n1), .Q(CNT3[0]) );
  DFFRX1 \CNT4_reg[0]  ( .D(n58), .CK(clk), .RN(n1), .Q(CNT4[0]) );
  DFFRX1 \CNT5_reg[0]  ( .D(n50), .CK(clk), .RN(n2), .Q(CNT5[0]) );
  DFFRX1 \CNT2_reg[0]  ( .D(n26), .CK(clk), .RN(n4), .Q(CNT2[0]) );
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
  CLKINVX1 U70 ( .A(gray_data[0]), .Y(n69) );
  CLKINVX1 U71 ( .A(gray_data[1]), .Y(n68) );
  CLKINVX1 U72 ( .A(rst), .Y(n70) );
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

  OAI22XL U1 ( .A0(n2), .A1(n41), .B0(n3), .B1(n21), .Y(data_out[2]) );
  OAI22XL U2 ( .A0(n2), .A1(n43), .B0(n3), .B1(n32), .Y(data_out[5]) );
  OAI22XL U3 ( .A0(n2), .A1(n44), .B0(n3), .B1(n19), .Y(data_out[6]) );
  OAI22XL U4 ( .A0(n2), .A1(n45), .B0(n3), .B1(n18), .Y(data_out[7]) );
  OAI22XL U5 ( .A0(n2), .A1(n42), .B0(n3), .B1(n30), .Y(data_out[3]) );
  OAI22XL U6 ( .A0(n2), .A1(n16), .B0(n3), .B1(n31), .Y(data_out[4]) );
  OAI22XL U7 ( .A0(n2), .A1(n17), .B0(n3), .B1(n29), .Y(data_out[1]) );
  CLKINVX1 U8 ( .A(n1), .Y(n3) );
  CLKBUFX3 U9 ( .A(n36), .Y(n1) );
  OAI22XL U10 ( .A0(n2), .A1(n40), .B0(n3), .B1(n28), .Y(data_out[0]) );
  OAI22XL U11 ( .A0(n2), .A1(n31), .B0(n3), .B1(n16), .Y(data_out[12]) );
  OAI22XL U12 ( .A0(n2), .A1(n30), .B0(n3), .B1(n42), .Y(data_out[11]) );
  OAI22XL U13 ( .A0(n2), .A1(n21), .B0(n3), .B1(n41), .Y(data_out[10]) );
  OAI22XL U14 ( .A0(n2), .A1(n29), .B0(n3), .B1(n17), .Y(data_out[9]) );
  OAI22XL U15 ( .A0(n2), .A1(n28), .B0(n3), .B1(n40), .Y(data_out[8]) );
  OAI22XL U16 ( .A0(n2), .A1(n32), .B0(n3), .B1(n43), .Y(data_out[13]) );
  OAI22XL U17 ( .A0(n2), .A1(n27), .B0(n3), .B1(n39), .Y(flag_out[11]) );
  OAI22XL U18 ( .A0(n2), .A1(n26), .B0(n3), .B1(n38), .Y(flag_out[10]) );
  OAI22XL U19 ( .A0(n2), .A1(n25), .B0(n3), .B1(n37), .Y(flag_out[9]) );
  OAI22XL U20 ( .A0(n2), .A1(n24), .B0(n3), .B1(n35), .Y(flag_out[8]) );
  OAI22XL U21 ( .A0(n2), .A1(n23), .B0(n3), .B1(n34), .Y(flag_out[7]) );
  OAI22XL U22 ( .A0(n2), .A1(n22), .B0(n3), .B1(n33), .Y(flag_out[6]) );
  OAI22XL U23 ( .A0(n37), .A1(n2), .B0(n3), .B1(n25), .Y(flag_out[3]) );
  OAI22XL U24 ( .A0(n2), .A1(n34), .B0(n3), .B1(n23), .Y(flag_out[1]) );
  OAI22XL U25 ( .A0(n2), .A1(n35), .B0(n3), .B1(n24), .Y(flag_out[2]) );
  OAI22XL U26 ( .A0(n2), .A1(n38), .B0(n3), .B1(n26), .Y(flag_out[4]) );
  OAI22XL U27 ( .A0(n2), .A1(n39), .B0(n3), .B1(n27), .Y(flag_out[5]) );
  OAI22XL U28 ( .A0(n2), .A1(n33), .B0(n3), .B1(n22), .Y(flag_out[0]) );
  CLKBUFX3 U29 ( .A(n36), .Y(n2) );
  OAI22XL U30 ( .A0(n2), .A1(n18), .B0(n3), .B1(n45), .Y(data_out[15]) );
  OAI22XL U31 ( .A0(n2), .A1(n19), .B0(n3), .B1(n44), .Y(data_out[14]) );
  NAND2X1 U32 ( .A(en), .B(N1), .Y(n36) );
  CLKINVX1 U33 ( .A(n9), .Y(n20) );
  CLKINVX1 U34 ( .A(data_in[7]), .Y(n18) );
  CLKINVX1 U35 ( .A(data_in[2]), .Y(n21) );
  CLKINVX1 U36 ( .A(data_in[12]), .Y(n16) );
  CLKINVX1 U37 ( .A(data_in[6]), .Y(n19) );
  CLKINVX1 U38 ( .A(data_in[9]), .Y(n17) );
  CLKINVX1 U39 ( .A(data_in[3]), .Y(n30) );
  CLKINVX1 U40 ( .A(data_in[11]), .Y(n42) );
  CLKINVX1 U41 ( .A(data_in[14]), .Y(n44) );
  CLKINVX1 U42 ( .A(data_in[15]), .Y(n45) );
  CLKINVX1 U43 ( .A(data_in[13]), .Y(n43) );
  CLKINVX1 U44 ( .A(data_in[10]), .Y(n41) );
  CLKINVX1 U45 ( .A(data_in[4]), .Y(n31) );
  CLKINVX1 U46 ( .A(data_in[8]), .Y(n40) );
  CLKINVX1 U47 ( .A(data_in[5]), .Y(n32) );
  CLKINVX1 U48 ( .A(data_in[1]), .Y(n29) );
  CLKINVX1 U49 ( .A(data_in[0]), .Y(n28) );
  CLKINVX1 U50 ( .A(flag_in[9]), .Y(n37) );
  CLKINVX1 U51 ( .A(flag_in[7]), .Y(n34) );
  CLKINVX1 U52 ( .A(flag_in[8]), .Y(n35) );
  CLKINVX1 U53 ( .A(flag_in[10]), .Y(n38) );
  CLKINVX1 U54 ( .A(flag_in[11]), .Y(n39) );
  CLKINVX1 U55 ( .A(flag_in[6]), .Y(n33) );
  CLKINVX1 U56 ( .A(flag_in[1]), .Y(n23) );
  CLKINVX1 U57 ( .A(flag_in[2]), .Y(n24) );
  CLKINVX1 U58 ( .A(flag_in[3]), .Y(n25) );
  CLKINVX1 U59 ( .A(flag_in[4]), .Y(n26) );
  CLKINVX1 U60 ( .A(flag_in[5]), .Y(n27) );
  CLKINVX1 U61 ( .A(flag_in[0]), .Y(n22) );
  NOR2BX1 U62 ( .AN(data_in[11]), .B(data_in[3]), .Y(n4) );
  AOI21X1 U63 ( .A0(data_in[10]), .A1(n21), .B0(n4), .Y(n5) );
  OAI32X1 U64 ( .A0(n21), .A1(data_in[10]), .A2(n4), .B0(data_in[11]), .B1(n30), .Y(n6) );
  NAND2BX1 U65 ( .AN(data_in[5]), .B(data_in[13]), .Y(n10) );
  OAI221XL U66 ( .A0(data_in[4]), .A1(n16), .B0(n5), .B1(n6), .C0(n10), .Y(n15) );
  AOI2BB1X1 U67 ( .A0N(n17), .A1N(data_in[1]), .B0(data_in[8]), .Y(n7) );
  AOI221XL U68 ( .A0(data_in[1]), .A1(n17), .B0(n7), .B1(data_in[0]), .C0(n6), 
        .Y(n14) );
  AND2X1 U69 ( .A(data_in[15]), .B(n18), .Y(n8) );
  AO21X1 U70 ( .A0(n19), .A1(data_in[14]), .B0(n8), .Y(n13) );
  OAI32X1 U71 ( .A0(n19), .A1(data_in[14]), .A2(n8), .B0(data_in[15]), .B1(n18), .Y(n9) );
  AOI32X1 U72 ( .A0(data_in[4]), .A1(n16), .A2(n10), .B0(n43), .B1(data_in[5]), 
        .Y(n11) );
  AO22X1 U73 ( .A0(n20), .A1(n11), .B0(n13), .B1(n20), .Y(n12) );
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
         n45;

  OAI22XL U1 ( .A0(n1), .A1(n40), .B0(n2), .B1(n19), .Y(data_out[2]) );
  OAI22XL U2 ( .A0(n1), .A1(n42), .B0(n2), .B1(n30), .Y(data_out[5]) );
  OAI22XL U3 ( .A0(n1), .A1(n28), .B0(n2), .B1(n41), .Y(data_out[11]) );
  OAI22XL U4 ( .A0(n1), .A1(n29), .B0(n2), .B1(n15), .Y(data_out[12]) );
  OAI22XL U5 ( .A0(n1), .A1(n43), .B0(n2), .B1(n17), .Y(data_out[6]) );
  OAI22XL U6 ( .A0(n1), .A1(n44), .B0(n2), .B1(n31), .Y(data_out[7]) );
  OAI22XL U7 ( .A0(n1), .A1(n30), .B0(n2), .B1(n42), .Y(data_out[13]) );
  OAI22XL U8 ( .A0(n1), .A1(n41), .B0(n2), .B1(n28), .Y(data_out[3]) );
  OAI22XL U9 ( .A0(n1), .A1(n15), .B0(n2), .B1(n29), .Y(data_out[4]) );
  OAI22XL U10 ( .A0(n1), .A1(n16), .B0(n2), .B1(n27), .Y(data_out[1]) );
  OAI22XL U11 ( .A0(n1), .A1(n31), .B0(n2), .B1(n44), .Y(data_out[15]) );
  OAI22XL U12 ( .A0(n1), .A1(n17), .B0(n2), .B1(n43), .Y(data_out[14]) );
  OAI22XL U13 ( .A0(n1), .A1(n19), .B0(n2), .B1(n40), .Y(data_out[10]) );
  CLKINVX1 U14 ( .A(n1), .Y(n2) );
  CLKBUFX3 U15 ( .A(n45), .Y(n1) );
  OAI22XL U16 ( .A0(n1), .A1(n27), .B0(n2), .B1(n16), .Y(data_out[9]) );
  OAI22XL U17 ( .A0(n1), .A1(n39), .B0(n2), .B1(n26), .Y(data_out[0]) );
  OAI22XL U18 ( .A0(n1), .A1(n26), .B0(n2), .B1(n39), .Y(data_out[8]) );
  OAI22XL U19 ( .A0(n1), .A1(n33), .B0(n2), .B1(n21), .Y(flag_out[1]) );
  OAI22XL U20 ( .A0(n1), .A1(n34), .B0(n2), .B1(n22), .Y(flag_out[2]) );
  OAI22XL U21 ( .A0(n35), .A1(n1), .B0(n2), .B1(n23), .Y(flag_out[3]) );
  OAI22XL U22 ( .A0(n1), .A1(n37), .B0(n2), .B1(n24), .Y(flag_out[4]) );
  OAI22XL U23 ( .A0(n1), .A1(n38), .B0(n2), .B1(n25), .Y(flag_out[5]) );
  OAI22XL U24 ( .A0(n1), .A1(n21), .B0(n2), .B1(n33), .Y(flag_out[7]) );
  OAI22XL U25 ( .A0(n1), .A1(n22), .B0(n2), .B1(n34), .Y(flag_out[8]) );
  OAI22XL U26 ( .A0(n1), .A1(n23), .B0(n2), .B1(n35), .Y(flag_out[9]) );
  OAI22XL U27 ( .A0(n1), .A1(n24), .B0(n2), .B1(n37), .Y(flag_out[10]) );
  OAI22XL U28 ( .A0(n1), .A1(n25), .B0(n2), .B1(n38), .Y(flag_out[11]) );
  OAI22XL U29 ( .A0(n1), .A1(n20), .B0(n2), .B1(n32), .Y(flag_out[6]) );
  OAI22XL U30 ( .A0(n1), .A1(n32), .B0(n2), .B1(n20), .Y(flag_out[0]) );
  NAND2X1 U31 ( .A(en), .B(N1), .Y(n45) );
  CLKINVX1 U32 ( .A(n8), .Y(n18) );
  CLKINVX1 U33 ( .A(data_in[6]), .Y(n17) );
  CLKINVX1 U34 ( .A(data_in[2]), .Y(n19) );
  CLKINVX1 U35 ( .A(data_in[12]), .Y(n15) );
  CLKINVX1 U36 ( .A(data_in[9]), .Y(n16) );
  CLKINVX1 U37 ( .A(data_in[3]), .Y(n28) );
  CLKINVX1 U38 ( .A(data_in[7]), .Y(n31) );
  CLKINVX1 U39 ( .A(data_in[10]), .Y(n40) );
  CLKINVX1 U40 ( .A(data_in[14]), .Y(n43) );
  CLKINVX1 U41 ( .A(data_in[15]), .Y(n44) );
  CLKINVX1 U42 ( .A(data_in[11]), .Y(n41) );
  CLKINVX1 U43 ( .A(data_in[13]), .Y(n42) );
  CLKINVX1 U44 ( .A(data_in[4]), .Y(n29) );
  CLKINVX1 U45 ( .A(data_in[5]), .Y(n30) );
  CLKINVX1 U46 ( .A(data_in[1]), .Y(n27) );
  CLKINVX1 U47 ( .A(data_in[8]), .Y(n39) );
  CLKINVX1 U48 ( .A(data_in[0]), .Y(n26) );
  CLKINVX1 U49 ( .A(flag_in[9]), .Y(n35) );
  CLKINVX1 U50 ( .A(flag_in[7]), .Y(n33) );
  CLKINVX1 U51 ( .A(flag_in[1]), .Y(n21) );
  CLKINVX1 U52 ( .A(flag_in[8]), .Y(n34) );
  CLKINVX1 U53 ( .A(flag_in[2]), .Y(n22) );
  CLKINVX1 U54 ( .A(flag_in[3]), .Y(n23) );
  CLKINVX1 U55 ( .A(flag_in[10]), .Y(n37) );
  CLKINVX1 U56 ( .A(flag_in[4]), .Y(n24) );
  CLKINVX1 U57 ( .A(flag_in[11]), .Y(n38) );
  CLKINVX1 U58 ( .A(flag_in[5]), .Y(n25) );
  CLKINVX1 U59 ( .A(flag_in[6]), .Y(n32) );
  CLKINVX1 U60 ( .A(flag_in[0]), .Y(n20) );
  NOR2BX1 U61 ( .AN(data_in[11]), .B(data_in[3]), .Y(n3) );
  AOI21X1 U62 ( .A0(data_in[10]), .A1(n19), .B0(n3), .Y(n4) );
  OAI32X1 U63 ( .A0(n19), .A1(data_in[10]), .A2(n3), .B0(data_in[11]), .B1(n28), .Y(n5) );
  NAND2BX1 U64 ( .AN(data_in[5]), .B(data_in[13]), .Y(n9) );
  OAI221XL U65 ( .A0(data_in[4]), .A1(n15), .B0(n4), .B1(n5), .C0(n9), .Y(n14)
         );
  AOI2BB1X1 U66 ( .A0N(n16), .A1N(data_in[1]), .B0(data_in[8]), .Y(n6) );
  AOI221XL U67 ( .A0(data_in[1]), .A1(n16), .B0(n6), .B1(data_in[0]), .C0(n5), 
        .Y(n13) );
  AND2X1 U68 ( .A(data_in[15]), .B(n31), .Y(n7) );
  AO21X1 U69 ( .A0(n17), .A1(data_in[14]), .B0(n7), .Y(n12) );
  OAI32X1 U70 ( .A0(n17), .A1(data_in[14]), .A2(n7), .B0(data_in[15]), .B1(n31), .Y(n8) );
  AOI32X1 U71 ( .A0(data_in[4]), .A1(n15), .A2(n9), .B0(n42), .B1(data_in[5]), 
        .Y(n10) );
  AO22X1 U72 ( .A0(n18), .A1(n10), .B0(n12), .B1(n18), .Y(n11) );
  OAI31XL U73 ( .A0(n14), .A1(n13), .A2(n12), .B0(n11), .Y(N1) );
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
         n45;

  OAI22XL U1 ( .A0(n1), .A1(n20), .B0(n2), .B1(n42), .Y(data_out[11]) );
  OAI22XL U2 ( .A0(n1), .A1(n31), .B0(n2), .B1(n15), .Y(data_out[13]) );
  OAI22XL U3 ( .A0(n1), .A1(n32), .B0(n2), .B1(n44), .Y(data_out[15]) );
  OAI22XL U4 ( .A0(n1), .A1(n18), .B0(n2), .B1(n43), .Y(data_out[14]) );
  OAI22XL U5 ( .A0(n1), .A1(n21), .B0(n2), .B1(n41), .Y(data_out[10]) );
  OAI22XL U6 ( .A0(n1), .A1(n30), .B0(n2), .B1(n16), .Y(data_out[12]) );
  CLKINVX1 U7 ( .A(n1), .Y(n2) );
  CLKBUFX3 U8 ( .A(n45), .Y(n1) );
  OAI22XL U9 ( .A0(n1), .A1(n29), .B0(n2), .B1(n17), .Y(data_out[9]) );
  OAI22XL U10 ( .A0(n1), .A1(n22), .B0(n2), .B1(n40), .Y(data_out[8]) );
  OAI22XL U11 ( .A0(n1), .A1(n16), .B0(n2), .B1(n30), .Y(data_out[4]) );
  OAI22XL U12 ( .A0(n1), .A1(n42), .B0(n2), .B1(n20), .Y(data_out[3]) );
  OAI22XL U13 ( .A0(n1), .A1(n41), .B0(n2), .B1(n21), .Y(data_out[2]) );
  OAI22XL U14 ( .A0(n1), .A1(n17), .B0(n2), .B1(n29), .Y(data_out[1]) );
  OAI22XL U15 ( .A0(n1), .A1(n40), .B0(n2), .B1(n22), .Y(data_out[0]) );
  OAI22XL U16 ( .A0(n45), .A1(n24), .B0(n2), .B1(n34), .Y(flag_out[7]) );
  OAI22XL U17 ( .A0(n45), .A1(n25), .B0(n2), .B1(n35), .Y(flag_out[8]) );
  OAI22XL U18 ( .A0(n45), .A1(n26), .B0(n2), .B1(n37), .Y(flag_out[9]) );
  OAI22XL U19 ( .A0(n45), .A1(n27), .B0(n2), .B1(n38), .Y(flag_out[10]) );
  OAI22XL U20 ( .A0(n45), .A1(n28), .B0(n2), .B1(n39), .Y(flag_out[11]) );
  OAI22XL U21 ( .A0(n1), .A1(n23), .B0(n2), .B1(n33), .Y(flag_out[6]) );
  OAI22XL U22 ( .A0(n1), .A1(n44), .B0(n2), .B1(n32), .Y(data_out[7]) );
  OAI22XL U23 ( .A0(n1), .A1(n43), .B0(n2), .B1(n18), .Y(data_out[6]) );
  OAI22XL U24 ( .A0(n1), .A1(n15), .B0(n2), .B1(n31), .Y(data_out[5]) );
  OAI22XL U25 ( .A0(n45), .A1(n39), .B0(n2), .B1(n28), .Y(flag_out[5]) );
  OAI22XL U26 ( .A0(n45), .A1(n38), .B0(n2), .B1(n27), .Y(flag_out[4]) );
  OAI22XL U27 ( .A0(n37), .A1(n45), .B0(n2), .B1(n26), .Y(flag_out[3]) );
  OAI22XL U28 ( .A0(n45), .A1(n35), .B0(n2), .B1(n25), .Y(flag_out[2]) );
  OAI22XL U29 ( .A0(n45), .A1(n34), .B0(n2), .B1(n24), .Y(flag_out[1]) );
  OAI22XL U30 ( .A0(n45), .A1(n33), .B0(n2), .B1(n23), .Y(flag_out[0]) );
  NAND2X1 U31 ( .A(en), .B(N1), .Y(n45) );
  CLKINVX1 U32 ( .A(n8), .Y(n19) );
  CLKINVX1 U33 ( .A(data_in[13]), .Y(n15) );
  CLKINVX1 U34 ( .A(data_in[3]), .Y(n20) );
  CLKINVX1 U35 ( .A(data_in[2]), .Y(n21) );
  CLKINVX1 U36 ( .A(data_in[6]), .Y(n18) );
  CLKINVX1 U37 ( .A(data_in[12]), .Y(n16) );
  CLKINVX1 U38 ( .A(data_in[9]), .Y(n17) );
  CLKINVX1 U39 ( .A(data_in[7]), .Y(n32) );
  CLKINVX1 U40 ( .A(data_in[14]), .Y(n43) );
  CLKINVX1 U41 ( .A(data_in[15]), .Y(n44) );
  CLKINVX1 U42 ( .A(data_in[11]), .Y(n42) );
  CLKINVX1 U43 ( .A(data_in[4]), .Y(n30) );
  CLKINVX1 U44 ( .A(data_in[10]), .Y(n41) );
  CLKINVX1 U45 ( .A(data_in[5]), .Y(n31) );
  CLKINVX1 U46 ( .A(data_in[1]), .Y(n29) );
  CLKINVX1 U47 ( .A(data_in[0]), .Y(n22) );
  CLKINVX1 U48 ( .A(data_in[8]), .Y(n40) );
  CLKINVX1 U49 ( .A(flag_in[1]), .Y(n24) );
  CLKINVX1 U50 ( .A(flag_in[2]), .Y(n25) );
  CLKINVX1 U51 ( .A(flag_in[3]), .Y(n26) );
  CLKINVX1 U52 ( .A(flag_in[4]), .Y(n27) );
  CLKINVX1 U53 ( .A(flag_in[5]), .Y(n28) );
  CLKINVX1 U54 ( .A(flag_in[0]), .Y(n23) );
  CLKINVX1 U55 ( .A(flag_in[9]), .Y(n37) );
  CLKINVX1 U56 ( .A(flag_in[7]), .Y(n34) );
  CLKINVX1 U57 ( .A(flag_in[8]), .Y(n35) );
  CLKINVX1 U58 ( .A(flag_in[10]), .Y(n38) );
  CLKINVX1 U59 ( .A(flag_in[11]), .Y(n39) );
  CLKINVX1 U60 ( .A(flag_in[6]), .Y(n33) );
  NOR2BX1 U61 ( .AN(data_in[11]), .B(data_in[3]), .Y(n3) );
  AOI21X1 U62 ( .A0(data_in[10]), .A1(n21), .B0(n3), .Y(n4) );
  OAI32X1 U63 ( .A0(n21), .A1(data_in[10]), .A2(n3), .B0(data_in[11]), .B1(n20), .Y(n5) );
  NAND2BX1 U64 ( .AN(data_in[5]), .B(data_in[13]), .Y(n9) );
  OAI221XL U65 ( .A0(data_in[4]), .A1(n16), .B0(n4), .B1(n5), .C0(n9), .Y(n14)
         );
  AOI2BB1X1 U66 ( .A0N(n17), .A1N(data_in[1]), .B0(data_in[8]), .Y(n6) );
  AOI221XL U67 ( .A0(data_in[1]), .A1(n17), .B0(n6), .B1(data_in[0]), .C0(n5), 
        .Y(n13) );
  AND2X1 U68 ( .A(data_in[15]), .B(n32), .Y(n7) );
  AO21X1 U69 ( .A0(n18), .A1(data_in[14]), .B0(n7), .Y(n12) );
  OAI32X1 U70 ( .A0(n18), .A1(data_in[14]), .A2(n7), .B0(data_in[15]), .B1(n32), .Y(n8) );
  AOI32X1 U71 ( .A0(data_in[4]), .A1(n16), .A2(n9), .B0(n15), .B1(data_in[5]), 
        .Y(n10) );
  AO22X1 U72 ( .A0(n19), .A1(n10), .B0(n12), .B1(n19), .Y(n11) );
  OAI31XL U73 ( .A0(n14), .A1(n13), .A2(n12), .B0(n11), .Y(N1) );
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
         n45;

  OAI22XL U1 ( .A0(n1), .A1(n41), .B0(n2), .B1(n19), .Y(data_out[9]) );
  OAI22XL U2 ( .A0(n1), .A1(n15), .B0(n2), .B1(n32), .Y(data_out[10]) );
  OAI22XL U3 ( .A0(n1), .A1(n32), .B0(n2), .B1(n15), .Y(data_out[2]) );
  OAI22XL U4 ( .A0(n1), .A1(n19), .B0(n2), .B1(n41), .Y(data_out[1]) );
  OAI22XL U5 ( .A0(n1), .A1(n42), .B0(n2), .B1(n33), .Y(data_out[8]) );
  OAI22XL U6 ( .A0(n1), .A1(n16), .B0(n2), .B1(n31), .Y(data_out[11]) );
  OAI22XL U7 ( .A0(n45), .A1(n43), .B0(n2), .B1(n21), .Y(data_out[13]) );
  OAI22XL U8 ( .A0(n1), .A1(n44), .B0(n2), .B1(n20), .Y(data_out[12]) );
  OAI22XL U9 ( .A0(n45), .A1(n20), .B0(n2), .B1(n44), .Y(data_out[4]) );
  OAI22XL U10 ( .A0(n45), .A1(n31), .B0(n2), .B1(n16), .Y(data_out[3]) );
  OAI22XL U11 ( .A0(n45), .A1(n21), .B0(n2), .B1(n43), .Y(data_out[5]) );
  OAI22XL U12 ( .A0(n45), .A1(n17), .B0(n2), .B1(n30), .Y(data_out[14]) );
  OAI22XL U13 ( .A0(n45), .A1(n18), .B0(n2), .B1(n29), .Y(data_out[15]) );
  OAI22XL U14 ( .A0(n45), .A1(n30), .B0(n2), .B1(n17), .Y(data_out[6]) );
  OAI22XL U15 ( .A0(n45), .A1(n29), .B0(n2), .B1(n18), .Y(data_out[7]) );
  OAI22XL U16 ( .A0(n1), .A1(n33), .B0(n2), .B1(n42), .Y(data_out[0]) );
  CLKINVX1 U17 ( .A(n1), .Y(n2) );
  CLKINVX1 U18 ( .A(data_in[3]), .Y(n16) );
  CLKINVX1 U19 ( .A(n8), .Y(n22) );
  CLKINVX1 U20 ( .A(data_in[13]), .Y(n21) );
  CLKBUFX3 U21 ( .A(n45), .Y(n1) );
  CLKINVX1 U22 ( .A(data_in[6]), .Y(n17) );
  CLKINVX1 U23 ( .A(data_in[7]), .Y(n18) );
  OAI22XL U24 ( .A0(n1), .A1(n37), .B0(n2), .B1(n27), .Y(flag_out[7]) );
  OAI22XL U25 ( .A0(n1), .A1(n35), .B0(n2), .B1(n26), .Y(flag_out[8]) );
  OAI22XL U26 ( .A0(n1), .A1(n34), .B0(n2), .B1(n25), .Y(flag_out[9]) );
  OAI22XL U27 ( .A0(n1), .A1(n40), .B0(n2), .B1(n24), .Y(flag_out[10]) );
  OAI22XL U28 ( .A0(n1), .A1(n39), .B0(n2), .B1(n23), .Y(flag_out[11]) );
  OAI22XL U29 ( .A0(n45), .A1(n38), .B0(n2), .B1(n28), .Y(flag_out[6]) );
  OAI22XL U30 ( .A0(n1), .A1(n27), .B0(n2), .B1(n37), .Y(flag_out[1]) );
  OAI22XL U31 ( .A0(n1), .A1(n26), .B0(n2), .B1(n35), .Y(flag_out[2]) );
  OAI22XL U32 ( .A0(n25), .A1(n1), .B0(n2), .B1(n34), .Y(flag_out[3]) );
  OAI22XL U33 ( .A0(n1), .A1(n24), .B0(n2), .B1(n40), .Y(flag_out[4]) );
  OAI22XL U34 ( .A0(n1), .A1(n23), .B0(n2), .B1(n39), .Y(flag_out[5]) );
  OAI22XL U35 ( .A0(n1), .A1(n28), .B0(n2), .B1(n38), .Y(flag_out[0]) );
  CLKINVX1 U36 ( .A(data_in[2]), .Y(n15) );
  CLKINVX1 U37 ( .A(data_in[12]), .Y(n20) );
  CLKINVX1 U38 ( .A(data_in[9]), .Y(n19) );
  CLKINVX1 U39 ( .A(data_in[1]), .Y(n41) );
  CLKINVX1 U40 ( .A(data_in[8]), .Y(n33) );
  CLKINVX1 U41 ( .A(data_in[0]), .Y(n42) );
  CLKINVX1 U42 ( .A(data_in[10]), .Y(n32) );
  CLKINVX1 U43 ( .A(data_in[4]), .Y(n44) );
  CLKINVX1 U44 ( .A(data_in[14]), .Y(n30) );
  CLKINVX1 U45 ( .A(data_in[5]), .Y(n43) );
  CLKINVX1 U46 ( .A(data_in[15]), .Y(n29) );
  CLKINVX1 U47 ( .A(data_in[11]), .Y(n31) );
  NAND2X1 U48 ( .A(en), .B(N1), .Y(n45) );
  CLKINVX1 U49 ( .A(flag_in[9]), .Y(n25) );
  CLKINVX1 U50 ( .A(flag_in[1]), .Y(n37) );
  CLKINVX1 U51 ( .A(flag_in[7]), .Y(n27) );
  CLKINVX1 U52 ( .A(flag_in[2]), .Y(n35) );
  CLKINVX1 U53 ( .A(flag_in[8]), .Y(n26) );
  CLKINVX1 U54 ( .A(flag_in[3]), .Y(n34) );
  CLKINVX1 U55 ( .A(flag_in[4]), .Y(n40) );
  CLKINVX1 U56 ( .A(flag_in[10]), .Y(n24) );
  CLKINVX1 U57 ( .A(flag_in[5]), .Y(n39) );
  CLKINVX1 U58 ( .A(flag_in[11]), .Y(n23) );
  CLKINVX1 U59 ( .A(flag_in[6]), .Y(n28) );
  CLKINVX1 U60 ( .A(flag_in[0]), .Y(n38) );
  NOR2BX1 U61 ( .AN(data_in[11]), .B(data_in[3]), .Y(n3) );
  AOI21X1 U62 ( .A0(data_in[10]), .A1(n15), .B0(n3), .Y(n4) );
  OAI32X1 U63 ( .A0(n15), .A1(data_in[10]), .A2(n3), .B0(data_in[11]), .B1(n16), .Y(n5) );
  NAND2BX1 U64 ( .AN(data_in[5]), .B(data_in[13]), .Y(n9) );
  OAI221XL U65 ( .A0(data_in[4]), .A1(n20), .B0(n4), .B1(n5), .C0(n9), .Y(n14)
         );
  AOI2BB1X1 U66 ( .A0N(n19), .A1N(data_in[1]), .B0(data_in[8]), .Y(n6) );
  AOI221XL U67 ( .A0(data_in[1]), .A1(n19), .B0(n6), .B1(data_in[0]), .C0(n5), 
        .Y(n13) );
  AND2X1 U68 ( .A(data_in[15]), .B(n18), .Y(n7) );
  AO21X1 U69 ( .A0(n17), .A1(data_in[14]), .B0(n7), .Y(n12) );
  OAI32X1 U70 ( .A0(n17), .A1(data_in[14]), .A2(n7), .B0(data_in[15]), .B1(n18), .Y(n8) );
  AOI32X1 U71 ( .A0(data_in[4]), .A1(n20), .A2(n9), .B0(n21), .B1(data_in[5]), 
        .Y(n10) );
  AO22X1 U72 ( .A0(n22), .A1(n10), .B0(n12), .B1(n22), .Y(n11) );
  OAI31XL U73 ( .A0(n14), .A1(n13), .A2(n12), .B0(n11), .Y(N1) );
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
         n45;

  OAI22XL U1 ( .A0(n1), .A1(n15), .B0(n2), .B1(n29), .Y(data_out[1]) );
  OAI22XL U2 ( .A0(n1), .A1(n44), .B0(n2), .B1(n30), .Y(data_out[0]) );
  OAI22XL U3 ( .A0(n1), .A1(n30), .B0(n2), .B1(n44), .Y(data_out[8]) );
  OAI22XL U4 ( .A0(n1), .A1(n29), .B0(n2), .B1(n15), .Y(data_out[9]) );
  OAI22XL U5 ( .A0(n1), .A1(n18), .B0(n2), .B1(n43), .Y(data_out[10]) );
  OAI22XL U6 ( .A0(n1), .A1(n43), .B0(n2), .B1(n18), .Y(data_out[2]) );
  OAI22XL U7 ( .A0(n1), .A1(n16), .B0(n2), .B1(n32), .Y(data_out[4]) );
  OAI22XL U8 ( .A0(n1), .A1(n19), .B0(n2), .B1(n42), .Y(data_out[11]) );
  OAI22XL U9 ( .A0(n1), .A1(n32), .B0(n2), .B1(n16), .Y(data_out[12]) );
  OAI22XL U10 ( .A0(n45), .A1(n40), .B0(n2), .B1(n21), .Y(data_out[7]) );
  OAI22XL U11 ( .A0(n45), .A1(n41), .B0(n2), .B1(n20), .Y(data_out[6]) );
  OAI22XL U12 ( .A0(n45), .A1(n17), .B0(n2), .B1(n31), .Y(data_out[5]) );
  CLKINVX1 U13 ( .A(n1), .Y(n2) );
  OAI22XL U14 ( .A0(n1), .A1(n42), .B0(n2), .B1(n19), .Y(data_out[3]) );
  OAI22XL U15 ( .A0(n45), .A1(n31), .B0(n2), .B1(n17), .Y(data_out[13]) );
  OAI22XL U16 ( .A0(n45), .A1(n20), .B0(n2), .B1(n41), .Y(data_out[14]) );
  OAI22XL U17 ( .A0(n45), .A1(n21), .B0(n2), .B1(n40), .Y(data_out[15]) );
  CLKINVX1 U18 ( .A(n8), .Y(n22) );
  CLKINVX1 U19 ( .A(data_in[13]), .Y(n17) );
  CLKINVX1 U20 ( .A(data_in[7]), .Y(n21) );
  CLKINVX1 U21 ( .A(data_in[3]), .Y(n19) );
  OAI22XL U22 ( .A0(n45), .A1(n38), .B0(n2), .B1(n25), .Y(flag_out[1]) );
  OAI22XL U23 ( .A0(n45), .A1(n37), .B0(n2), .B1(n24), .Y(flag_out[2]) );
  OAI22XL U24 ( .A0(n35), .A1(n1), .B0(n2), .B1(n23), .Y(flag_out[3]) );
  OAI22XL U25 ( .A0(n45), .A1(n34), .B0(n2), .B1(n28), .Y(flag_out[4]) );
  OAI22XL U26 ( .A0(n45), .A1(n33), .B0(n2), .B1(n27), .Y(flag_out[5]) );
  OAI22XL U27 ( .A0(n45), .A1(n39), .B0(n2), .B1(n26), .Y(flag_out[0]) );
  OAI22XL U28 ( .A0(n1), .A1(n25), .B0(n2), .B1(n38), .Y(flag_out[7]) );
  OAI22XL U29 ( .A0(n45), .A1(n24), .B0(n2), .B1(n37), .Y(flag_out[8]) );
  OAI22XL U30 ( .A0(n45), .A1(n23), .B0(n2), .B1(n35), .Y(flag_out[9]) );
  OAI22XL U31 ( .A0(n45), .A1(n26), .B0(n2), .B1(n39), .Y(flag_out[6]) );
  OAI22XL U32 ( .A0(n45), .A1(n28), .B0(n2), .B1(n34), .Y(flag_out[10]) );
  OAI22XL U33 ( .A0(n45), .A1(n27), .B0(n2), .B1(n33), .Y(flag_out[11]) );
  CLKINVX1 U34 ( .A(data_in[2]), .Y(n18) );
  CLKINVX1 U35 ( .A(data_in[12]), .Y(n16) );
  CLKINVX1 U36 ( .A(data_in[6]), .Y(n20) );
  CLKINVX1 U37 ( .A(data_in[9]), .Y(n15) );
  CLKINVX1 U38 ( .A(data_in[1]), .Y(n29) );
  CLKINVX1 U39 ( .A(data_in[8]), .Y(n44) );
  CLKINVX1 U40 ( .A(data_in[0]), .Y(n30) );
  CLKINVX1 U41 ( .A(data_in[10]), .Y(n43) );
  CLKINVX1 U42 ( .A(data_in[4]), .Y(n32) );
  CLKINVX1 U43 ( .A(data_in[14]), .Y(n41) );
  CLKINVX1 U44 ( .A(data_in[15]), .Y(n40) );
  CLKINVX1 U45 ( .A(data_in[5]), .Y(n31) );
  CLKINVX1 U46 ( .A(data_in[11]), .Y(n42) );
  CLKBUFX3 U47 ( .A(n45), .Y(n1) );
  CLKINVX1 U48 ( .A(flag_in[7]), .Y(n38) );
  CLKINVX1 U49 ( .A(flag_in[8]), .Y(n37) );
  CLKINVX1 U50 ( .A(flag_in[9]), .Y(n35) );
  CLKINVX1 U51 ( .A(flag_in[10]), .Y(n34) );
  CLKINVX1 U52 ( .A(flag_in[11]), .Y(n33) );
  CLKINVX1 U53 ( .A(flag_in[1]), .Y(n25) );
  CLKINVX1 U54 ( .A(flag_in[2]), .Y(n24) );
  CLKINVX1 U55 ( .A(flag_in[3]), .Y(n23) );
  CLKINVX1 U56 ( .A(flag_in[4]), .Y(n28) );
  CLKINVX1 U57 ( .A(flag_in[5]), .Y(n27) );
  CLKINVX1 U58 ( .A(flag_in[6]), .Y(n39) );
  CLKINVX1 U59 ( .A(flag_in[0]), .Y(n26) );
  NAND2X1 U60 ( .A(en), .B(N1), .Y(n45) );
  NOR2BX1 U61 ( .AN(data_in[11]), .B(data_in[3]), .Y(n3) );
  AOI21X1 U62 ( .A0(data_in[10]), .A1(n18), .B0(n3), .Y(n4) );
  OAI32X1 U63 ( .A0(n18), .A1(data_in[10]), .A2(n3), .B0(data_in[11]), .B1(n19), .Y(n5) );
  NAND2BX1 U64 ( .AN(data_in[5]), .B(data_in[13]), .Y(n9) );
  OAI221XL U65 ( .A0(data_in[4]), .A1(n16), .B0(n4), .B1(n5), .C0(n9), .Y(n14)
         );
  AOI2BB1X1 U66 ( .A0N(n15), .A1N(data_in[1]), .B0(data_in[8]), .Y(n6) );
  AOI221XL U67 ( .A0(data_in[1]), .A1(n15), .B0(n6), .B1(data_in[0]), .C0(n5), 
        .Y(n13) );
  AND2X1 U68 ( .A(data_in[15]), .B(n21), .Y(n7) );
  AO21X1 U69 ( .A0(n20), .A1(data_in[14]), .B0(n7), .Y(n12) );
  OAI32X1 U70 ( .A0(n20), .A1(data_in[14]), .A2(n7), .B0(data_in[15]), .B1(n21), .Y(n8) );
  AOI32X1 U71 ( .A0(data_in[4]), .A1(n16), .A2(n9), .B0(n17), .B1(data_in[5]), 
        .Y(n10) );
  AO22X1 U72 ( .A0(n22), .A1(n10), .B0(n12), .B1(n22), .Y(n11) );
  OAI31XL U73 ( .A0(n14), .A1(n13), .A2(n12), .B0(n11), .Y(N1) );
endmodule


module Sort ( unsort_data, unsort_flag, clk, set, num, update_data, 
        update_flag, update_en, done, sorted_data, sorted_flag, num_reg );
  input [47:0] unsort_data;
  input [35:0] unsort_flag;
  input [2:0] num;
  input [7:0] update_data;
  input [5:0] update_flag;
  output [47:0] sorted_data;
  output [35:0] sorted_flag;
  output [2:0] num_reg;
  input clk, set, update_en;
  output done;
  wire   N19, N146, N147, N148, N149, N150, N151, N152, N153, N154, N155, N156,
         N157, N158, N159, N160, N161, N162, N163, N164, N165, N166, N167,
         N168, N169, N170, N171, N172, N173, N174, N175, N176, N177, n61, n62,
         n63, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
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
         n221, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n222;
  wire   [47:0] data;
  wire   [35:0] flag;
  wire   [4:0] en;
  wire   [39:8] mid_data;
  wire   [29:6] mid_flag;
  assign num_reg[2] = en[2];
  assign done = N19;

  SortCell_0 Cell0 ( .data_in(data[47:32]), .flag_in(flag[35:24]), .en(en[0]), 
        .data_out({sorted_data[47:40], mid_data[39:32]}), .flag_out({
        sorted_flag[35:30], mid_flag[29:24]}) );
  SortCell_4 Cell2 ( .data_in(data[31:16]), .flag_in(flag[23:12]), .en(en[2]), 
        .data_out(mid_data[31:16]), .flag_out(mid_flag[23:12]) );
  SortCell_3 Cell4 ( .data_in(data[15:0]), .flag_in(flag[11:0]), .en(en[4]), 
        .data_out({mid_data[15:8], sorted_data[7:0]}), .flag_out({
        mid_flag[11:6], sorted_flag[5:0]}) );
  SortCell_2 Cell1 ( .data_in(mid_data[39:24]), .flag_in(mid_flag[29:18]), 
        .en(en[1]), .data_out(sorted_data[39:24]), .flag_out(
        sorted_flag[29:18]) );
  SortCell_1 Cell3 ( .data_in(mid_data[23:8]), .flag_in(mid_flag[17:6]), .en(
        en[3]), .data_out(sorted_data[23:8]), .flag_out(sorted_flag[17:6]) );
  DFFQX1 \flag_reg[6]  ( .D(n28), .CK(clk), .Q(flag[6]) );
  DFFQX1 \flag_reg[7]  ( .D(n24), .CK(clk), .Q(flag[7]) );
  DFFQX1 \flag_reg[8]  ( .D(n20), .CK(clk), .Q(flag[8]) );
  DFFQX1 \flag_reg[9]  ( .D(n16), .CK(clk), .Q(flag[9]) );
  DFFQX1 \flag_reg[10]  ( .D(n36), .CK(clk), .Q(flag[10]) );
  DFFQX1 \flag_reg[11]  ( .D(n32), .CK(clk), .Q(flag[11]) );
  DFFQX1 \flag_reg[12]  ( .D(n29), .CK(clk), .Q(flag[12]) );
  DFFQX1 \flag_reg[13]  ( .D(n25), .CK(clk), .Q(flag[13]) );
  DFFQX1 \flag_reg[14]  ( .D(n21), .CK(clk), .Q(flag[14]) );
  DFFQX1 \flag_reg[15]  ( .D(n17), .CK(clk), .Q(flag[15]) );
  DFFQX1 \flag_reg[16]  ( .D(n37), .CK(clk), .Q(flag[16]) );
  DFFQX1 \flag_reg[17]  ( .D(n33), .CK(clk), .Q(flag[17]) );
  DFFQX1 \flag_reg[18]  ( .D(n30), .CK(clk), .Q(flag[18]) );
  DFFQX1 \flag_reg[19]  ( .D(n26), .CK(clk), .Q(flag[19]) );
  DFFQX1 \flag_reg[20]  ( .D(n22), .CK(clk), .Q(flag[20]) );
  DFFQX1 \flag_reg[21]  ( .D(n18), .CK(clk), .Q(flag[21]) );
  DFFQX1 \flag_reg[22]  ( .D(n38), .CK(clk), .Q(flag[22]) );
  DFFQX1 \flag_reg[23]  ( .D(n34), .CK(clk), .Q(flag[23]) );
  DFFQX1 \flag_reg[24]  ( .D(n31), .CK(clk), .Q(flag[24]) );
  DFFQX1 \flag_reg[25]  ( .D(n27), .CK(clk), .Q(flag[25]) );
  DFFQX1 \flag_reg[26]  ( .D(n23), .CK(clk), .Q(flag[26]) );
  DFFQX1 \flag_reg[27]  ( .D(n19), .CK(clk), .Q(flag[27]) );
  DFFQX1 \flag_reg[28]  ( .D(n39), .CK(clk), .Q(flag[28]) );
  DFFQX1 \flag_reg[29]  ( .D(n35), .CK(clk), .Q(flag[29]) );
  MDFFHQX1 \flag_reg[0]  ( .D0(sorted_flag[0]), .D1(unsort_flag[0]), .S0(n6), 
        .CK(clk), .Q(flag[0]) );
  MDFFHQX1 \flag_reg[1]  ( .D0(sorted_flag[1]), .D1(unsort_flag[1]), .S0(n6), 
        .CK(clk), .Q(flag[1]) );
  MDFFHQX1 \flag_reg[2]  ( .D0(sorted_flag[2]), .D1(unsort_flag[2]), .S0(n6), 
        .CK(clk), .Q(flag[2]) );
  MDFFHQX1 \flag_reg[3]  ( .D0(sorted_flag[3]), .D1(unsort_flag[3]), .S0(n6), 
        .CK(clk), .Q(flag[3]) );
  MDFFHQX1 \flag_reg[4]  ( .D0(sorted_flag[4]), .D1(unsort_flag[4]), .S0(n6), 
        .CK(clk), .Q(flag[4]) );
  MDFFHQX1 \flag_reg[5]  ( .D0(sorted_flag[5]), .D1(unsort_flag[5]), .S0(n6), 
        .CK(clk), .Q(flag[5]) );
  MDFFHQX1 \flag_reg[30]  ( .D0(sorted_flag[30]), .D1(unsort_flag[30]), .S0(n6), .CK(clk), .Q(flag[30]) );
  MDFFHQX1 \flag_reg[31]  ( .D0(sorted_flag[31]), .D1(unsort_flag[31]), .S0(n6), .CK(clk), .Q(flag[31]) );
  MDFFHQX1 \flag_reg[32]  ( .D0(sorted_flag[32]), .D1(unsort_flag[32]), .S0(n6), .CK(clk), .Q(flag[32]) );
  MDFFHQX1 \flag_reg[33]  ( .D0(sorted_flag[33]), .D1(unsort_flag[33]), .S0(n6), .CK(clk), .Q(flag[33]) );
  MDFFHQX1 \flag_reg[34]  ( .D0(sorted_flag[34]), .D1(unsort_flag[34]), .S0(n6), .CK(clk), .Q(flag[34]) );
  MDFFHQX1 \flag_reg[35]  ( .D0(sorted_flag[35]), .D1(unsort_flag[35]), .S0(n6), .CK(clk), .Q(flag[35]) );
  EDFFX1 \num_reg_reg[0]  ( .D(num[0]), .E(n1), .CK(clk), .Q(num_reg[0]), .QN(
        n63) );
  EDFFX1 \num_reg_reg[2]  ( .D(num[2]), .E(n1), .CK(clk), .Q(en[2]), .QN(n61)
         );
  EDFFX1 \num_reg_reg[1]  ( .D(num[1]), .E(n1), .CK(clk), .Q(num_reg[1]), .QN(
        n62) );
  DFFQX1 \data_reg[16]  ( .D(N154), .CK(clk), .Q(data[16]) );
  DFFQX1 \data_reg[32]  ( .D(N170), .CK(clk), .Q(data[32]) );
  DFFQX1 \data_reg[8]  ( .D(N146), .CK(clk), .Q(data[8]) );
  DFFQX1 \data_reg[24]  ( .D(N162), .CK(clk), .Q(data[24]) );
  DFFQX1 \data_reg[17]  ( .D(N155), .CK(clk), .Q(data[17]) );
  DFFQX1 \data_reg[33]  ( .D(N171), .CK(clk), .Q(data[33]) );
  MDFFHQX1 \data_reg[0]  ( .D0(sorted_data[0]), .D1(unsort_data[0]), .S0(n6), 
        .CK(clk), .Q(data[0]) );
  DFFQX1 \data_reg[11]  ( .D(N149), .CK(clk), .Q(data[11]) );
  DFFQX1 \data_reg[21]  ( .D(N159), .CK(clk), .Q(data[21]) );
  DFFQX1 \data_reg[37]  ( .D(N175), .CK(clk), .Q(data[37]) );
  DFFQX1 \data_reg[14]  ( .D(N152), .CK(clk), .Q(data[14]) );
  MDFFHQX1 \data_reg[40]  ( .D0(sorted_data[40]), .D1(unsort_data[40]), .S0(n6), .CK(clk), .Q(data[40]) );
  DFFQX1 \data_reg[20]  ( .D(N158), .CK(clk), .Q(data[20]) );
  DFFQX1 \data_reg[36]  ( .D(N174), .CK(clk), .Q(data[36]) );
  MDFFHQX1 \data_reg[1]  ( .D0(sorted_data[1]), .D1(unsort_data[1]), .S0(n6), 
        .CK(clk), .Q(data[1]) );
  MDFFHQX1 \data_reg[46]  ( .D0(sorted_data[46]), .D1(unsort_data[46]), .S0(n6), .CK(clk), .Q(data[46]) );
  MDFFHQX1 \data_reg[43]  ( .D0(sorted_data[43]), .D1(unsort_data[43]), .S0(n6), .CK(clk), .Q(data[43]) );
  DFFQX1 \data_reg[10]  ( .D(N148), .CK(clk), .Q(data[10]) );
  DFFQX1 \data_reg[26]  ( .D(N164), .CK(clk), .Q(data[26]) );
  MDFFHQX1 \data_reg[5]  ( .D0(sorted_data[5]), .D1(unsort_data[5]), .S0(n6), 
        .CK(clk), .Q(data[5]) );
  MDFFHQX1 \data_reg[4]  ( .D0(sorted_data[4]), .D1(unsort_data[4]), .S0(n6), 
        .CK(clk), .Q(data[4]) );
  MDFFHQX1 \data_reg[42]  ( .D0(sorted_data[42]), .D1(unsort_data[42]), .S0(n6), .CK(clk), .Q(data[42]) );
  DFFQX1 \data_reg[9]  ( .D(N147), .CK(clk), .Q(data[9]) );
  DFFQX1 \data_reg[12]  ( .D(N150), .CK(clk), .Q(data[12]) );
  DFFQX1 \data_reg[18]  ( .D(N156), .CK(clk), .Q(data[18]) );
  DFFQX1 \data_reg[25]  ( .D(N163), .CK(clk), .Q(data[25]) );
  DFFQX1 \data_reg[28]  ( .D(N166), .CK(clk), .Q(data[28]) );
  DFFQX1 \data_reg[34]  ( .D(N172), .CK(clk), .Q(data[34]) );
  DFFQX1 \data_reg[38]  ( .D(N176), .CK(clk), .Q(data[38]) );
  MDFFHQX1 \data_reg[2]  ( .D0(sorted_data[2]), .D1(unsort_data[2]), .S0(n6), 
        .CK(clk), .Q(data[2]) );
  MDFFHQX1 \data_reg[6]  ( .D0(sorted_data[6]), .D1(unsort_data[6]), .S0(n6), 
        .CK(clk), .Q(data[6]) );
  MDFFHQX1 \data_reg[41]  ( .D0(sorted_data[41]), .D1(unsort_data[41]), .S0(n6), .CK(clk), .Q(data[41]) );
  MDFFHQX1 \data_reg[44]  ( .D0(sorted_data[44]), .D1(unsort_data[44]), .S0(n6), .CK(clk), .Q(data[44]) );
  DFFQX1 \data_reg[13]  ( .D(N151), .CK(clk), .Q(data[13]) );
  DFFQX1 \data_reg[19]  ( .D(N157), .CK(clk), .Q(data[19]) );
  DFFQX1 \data_reg[29]  ( .D(N167), .CK(clk), .Q(data[29]) );
  DFFQX1 \data_reg[35]  ( .D(N173), .CK(clk), .Q(data[35]) );
  MDFFHQX1 \data_reg[45]  ( .D0(sorted_data[45]), .D1(unsort_data[45]), .S0(n6), .CK(clk), .Q(data[45]) );
  MDFFHQX1 \data_reg[3]  ( .D0(sorted_data[3]), .D1(unsort_data[3]), .S0(n6), 
        .CK(clk), .Q(data[3]) );
  DFFQX1 \data_reg[27]  ( .D(N165), .CK(clk), .Q(data[27]) );
  DFFQX1 \data_reg[15]  ( .D(N153), .CK(clk), .Q(data[15]) );
  DFFQX1 \data_reg[31]  ( .D(N169), .CK(clk), .Q(data[31]) );
  DFFQX1 \data_reg[30]  ( .D(N168), .CK(clk), .Q(data[30]) );
  MDFFHQX1 \data_reg[47]  ( .D0(sorted_data[47]), .D1(unsort_data[47]), .S0(n6), .CK(clk), .Q(data[47]) );
  DFFQX1 \data_reg[22]  ( .D(N160), .CK(clk), .Q(data[22]) );
  DFFQX1 \data_reg[23]  ( .D(N161), .CK(clk), .Q(data[23]) );
  DFFQX1 \data_reg[39]  ( .D(N177), .CK(clk), .Q(data[39]) );
  MDFFHQX1 \data_reg[7]  ( .D0(sorted_data[7]), .D1(unsort_data[7]), .S0(n6), 
        .CK(clk), .Q(data[7]) );
  OAI21XL U3 ( .A0(n199), .A1(n79), .B0(n200), .Y(n162) );
  OAI21XL U4 ( .A0(n207), .A1(n79), .B0(n200), .Y(n172) );
  OAI21XL U5 ( .A0(n214), .A1(n79), .B0(n200), .Y(n182) );
  OAI21XL U6 ( .A0(n221), .A1(n79), .B0(n200), .Y(n192) );
  CLKINVX1 U7 ( .A(sorted_data[39]), .Y(n49) );
  CLKINVX1 U8 ( .A(sorted_data[32]), .Y(n41) );
  CLKINVX1 U9 ( .A(sorted_data[15]), .Y(n58) );
  CLKINVX1 U10 ( .A(sorted_data[12]), .Y(n64) );
  CLKINVX1 U11 ( .A(sorted_data[13]), .Y(n60) );
  CLKINVX1 U12 ( .A(sorted_data[14]), .Y(n59) );
  CLKINVX1 U13 ( .A(sorted_data[8]), .Y(n74) );
  CLKINVX1 U14 ( .A(sorted_data[28]), .Y(n45) );
  CLKINVX1 U15 ( .A(sorted_data[27]), .Y(n46) );
  CLKINVX1 U16 ( .A(sorted_data[29]), .Y(n44) );
  CLKINVX1 U17 ( .A(sorted_data[30]), .Y(n43) );
  CLKINVX1 U18 ( .A(sorted_data[31]), .Y(n42) );
  CLKINVX1 U19 ( .A(sorted_data[16]), .Y(n57) );
  CLKINVX1 U20 ( .A(sorted_data[17]), .Y(n56) );
  CLKINVX1 U21 ( .A(sorted_data[19]), .Y(n72) );
  CLKINVX1 U22 ( .A(sorted_data[20]), .Y(n71) );
  CLKINVX1 U23 ( .A(sorted_data[18]), .Y(n73) );
  CLKINVX1 U24 ( .A(update_data[6]), .Y(n9) );
  CLKINVX1 U25 ( .A(update_data[0]), .Y(n15) );
  CLKINVX1 U26 ( .A(update_data[5]), .Y(n10) );
  CLKINVX1 U27 ( .A(update_data[4]), .Y(n11) );
  CLKINVX1 U28 ( .A(update_data[3]), .Y(n12) );
  CLKINVX1 U29 ( .A(update_data[2]), .Y(n13) );
  CLKINVX1 U30 ( .A(update_data[1]), .Y(n14) );
  CLKBUFX3 U31 ( .A(n2), .Y(n4) );
  CLKBUFX3 U32 ( .A(n2), .Y(n5) );
  CLKBUFX3 U33 ( .A(n2), .Y(n6) );
  CLKINVX1 U34 ( .A(n86), .Y(n79) );
  CLKINVX1 U35 ( .A(n162), .Y(n75) );
  CLKINVX1 U36 ( .A(n172), .Y(n76) );
  CLKINVX1 U37 ( .A(n182), .Y(n77) );
  CLKINVX1 U38 ( .A(n192), .Y(n78) );
  CLKINVX1 U39 ( .A(n153), .Y(n83) );
  CLKINVX1 U40 ( .A(n163), .Y(n82) );
  CLKINVX1 U41 ( .A(n173), .Y(n81) );
  CLKINVX1 U42 ( .A(n183), .Y(n80) );
  OR2X1 U43 ( .A(n4), .B(n86), .Y(n1) );
  CLKINVX1 U44 ( .A(update_data[7]), .Y(n8) );
  NAND4X1 U45 ( .A(n121), .B(n122), .C(n123), .D(n124), .Y(n87) );
  NOR4X1 U46 ( .A(n139), .B(n140), .C(n141), .D(n142), .Y(n122) );
  NOR4X1 U47 ( .A(n125), .B(n126), .C(n127), .D(n128), .Y(n124) );
  NOR4X1 U48 ( .A(n146), .B(n147), .C(n148), .D(n149), .Y(n121) );
  NAND4X1 U49 ( .A(n105), .B(n106), .C(n107), .D(n108), .Y(n88) );
  NOR3X1 U50 ( .A(n118), .B(n119), .C(n120), .Y(n105) );
  NOR3X1 U51 ( .A(n115), .B(n116), .C(n117), .Y(n106) );
  NOR3X1 U52 ( .A(n112), .B(n113), .C(n114), .Y(n107) );
  NOR2BX1 U53 ( .AN(update_en), .B(n5), .Y(n86) );
  NAND2X1 U54 ( .A(n86), .B(n199), .Y(n153) );
  NAND2X1 U55 ( .A(n207), .B(n86), .Y(n163) );
  NAND2X1 U56 ( .A(n214), .B(n86), .Y(n173) );
  NAND2X1 U57 ( .A(n221), .B(n86), .Y(n183) );
  OR2X1 U58 ( .A(n6), .B(update_en), .Y(n200) );
  CLKBUFX3 U59 ( .A(set), .Y(n2) );
  CLKBUFX3 U60 ( .A(n3), .Y(n7) );
  CLKBUFX3 U61 ( .A(set), .Y(n3) );
  NAND2BX1 U62 ( .AN(en[1]), .B(num_reg[0]), .Y(en[0]) );
  AO21X1 U63 ( .A0(num_reg[0]), .A1(en[2]), .B0(en[4]), .Y(en[3]) );
  OAI221XL U64 ( .A0(n153), .A1(n9), .B0(n75), .B1(n50), .C0(n155), .Y(N176)
         );
  NAND2X1 U65 ( .A(unsort_data[38]), .B(n4), .Y(n155) );
  CLKINVX1 U66 ( .A(sorted_data[38]), .Y(n50) );
  OAI221XL U67 ( .A0(n8), .A1(n173), .B0(n77), .B1(n68), .C0(n174), .Y(N161)
         );
  NAND2X1 U68 ( .A(unsort_data[23]), .B(n5), .Y(n174) );
  CLKINVX1 U69 ( .A(sorted_data[23]), .Y(n68) );
  OAI221XL U70 ( .A0(n9), .A1(n173), .B0(n77), .B1(n69), .C0(n175), .Y(N160)
         );
  NAND2X1 U71 ( .A(unsort_data[22]), .B(n5), .Y(n175) );
  CLKINVX1 U72 ( .A(sorted_data[22]), .Y(n69) );
  OAI221XL U73 ( .A0(n153), .A1(n8), .B0(n75), .B1(n49), .C0(n154), .Y(N177)
         );
  NAND2X1 U74 ( .A(unsort_data[39]), .B(n4), .Y(n154) );
  OAI221XL U75 ( .A0(n8), .A1(n163), .B0(n76), .B1(n42), .C0(n164), .Y(N169)
         );
  NAND2X1 U76 ( .A(unsort_data[31]), .B(n4), .Y(n164) );
  OAI221XL U77 ( .A0(n9), .A1(n163), .B0(n76), .B1(n43), .C0(n165), .Y(N168)
         );
  NAND2X1 U78 ( .A(unsort_data[30]), .B(n4), .Y(n165) );
  OAI221XL U79 ( .A0(n8), .A1(n183), .B0(n78), .B1(n58), .C0(n184), .Y(N153)
         );
  NAND2X1 U80 ( .A(unsort_data[15]), .B(n5), .Y(n184) );
  OAI221XL U81 ( .A0(n9), .A1(n183), .B0(n78), .B1(n59), .C0(n185), .Y(N152)
         );
  NAND2X1 U82 ( .A(unsort_data[14]), .B(n5), .Y(n185) );
  OAI221XL U83 ( .A0(n153), .A1(n10), .B0(n75), .B1(n51), .C0(n156), .Y(N175)
         );
  NAND2X1 U84 ( .A(unsort_data[37]), .B(n4), .Y(n156) );
  CLKINVX1 U85 ( .A(sorted_data[37]), .Y(n51) );
  OAI221XL U86 ( .A0(n153), .A1(n11), .B0(n75), .B1(n52), .C0(n157), .Y(N174)
         );
  NAND2X1 U87 ( .A(unsort_data[36]), .B(n4), .Y(n157) );
  CLKINVX1 U88 ( .A(sorted_data[36]), .Y(n52) );
  OAI221XL U89 ( .A0(n153), .A1(n12), .B0(n75), .B1(n53), .C0(n158), .Y(N173)
         );
  NAND2X1 U90 ( .A(unsort_data[35]), .B(n4), .Y(n158) );
  CLKINVX1 U91 ( .A(sorted_data[35]), .Y(n53) );
  OAI221XL U92 ( .A0(n153), .A1(n13), .B0(n75), .B1(n54), .C0(n159), .Y(N172)
         );
  NAND2X1 U93 ( .A(unsort_data[34]), .B(n4), .Y(n159) );
  CLKINVX1 U94 ( .A(sorted_data[34]), .Y(n54) );
  OAI221XL U95 ( .A0(n153), .A1(n14), .B0(n75), .B1(n40), .C0(n160), .Y(N171)
         );
  NAND2X1 U96 ( .A(unsort_data[33]), .B(n4), .Y(n160) );
  CLKINVX1 U97 ( .A(sorted_data[33]), .Y(n40) );
  OAI221XL U98 ( .A0(n13), .A1(n163), .B0(n76), .B1(n47), .C0(n169), .Y(N164)
         );
  NAND2X1 U99 ( .A(unsort_data[26]), .B(n4), .Y(n169) );
  CLKINVX1 U100 ( .A(sorted_data[26]), .Y(n47) );
  OAI221XL U101 ( .A0(n14), .A1(n163), .B0(n76), .B1(n48), .C0(n170), .Y(N163)
         );
  NAND2X1 U102 ( .A(unsort_data[25]), .B(n4), .Y(n170) );
  CLKINVX1 U103 ( .A(sorted_data[25]), .Y(n48) );
  OAI221XL U104 ( .A0(n15), .A1(n163), .B0(n76), .B1(n55), .C0(n171), .Y(N162)
         );
  NAND2X1 U105 ( .A(unsort_data[24]), .B(n5), .Y(n171) );
  CLKINVX1 U106 ( .A(sorted_data[24]), .Y(n55) );
  OAI221XL U107 ( .A0(n12), .A1(n183), .B0(n78), .B1(n65), .C0(n188), .Y(N149)
         );
  NAND2X1 U108 ( .A(unsort_data[11]), .B(n5), .Y(n188) );
  CLKINVX1 U109 ( .A(sorted_data[11]), .Y(n65) );
  OAI221XL U110 ( .A0(n13), .A1(n183), .B0(n78), .B1(n66), .C0(n189), .Y(N148)
         );
  NAND2X1 U111 ( .A(unsort_data[10]), .B(n5), .Y(n189) );
  CLKINVX1 U112 ( .A(sorted_data[10]), .Y(n66) );
  OAI221XL U113 ( .A0(n14), .A1(n183), .B0(n78), .B1(n67), .C0(n190), .Y(N147)
         );
  NAND2X1 U114 ( .A(unsort_data[9]), .B(n5), .Y(n190) );
  CLKINVX1 U115 ( .A(sorted_data[9]), .Y(n67) );
  OAI221XL U116 ( .A0(n11), .A1(n173), .B0(n77), .B1(n71), .C0(n177), .Y(N158)
         );
  NAND2X1 U117 ( .A(unsort_data[20]), .B(n5), .Y(n177) );
  OAI221XL U118 ( .A0(n12), .A1(n173), .B0(n77), .B1(n72), .C0(n178), .Y(N157)
         );
  NAND2X1 U119 ( .A(unsort_data[19]), .B(n5), .Y(n178) );
  OAI221XL U120 ( .A0(n13), .A1(n173), .B0(n77), .B1(n73), .C0(n179), .Y(N156)
         );
  NAND2X1 U121 ( .A(unsort_data[18]), .B(n5), .Y(n179) );
  OAI221XL U122 ( .A0(n14), .A1(n173), .B0(n77), .B1(n56), .C0(n180), .Y(N155)
         );
  NAND2X1 U123 ( .A(unsort_data[17]), .B(n5), .Y(n180) );
  OAI221XL U124 ( .A0(n15), .A1(n173), .B0(n77), .B1(n57), .C0(n181), .Y(N154)
         );
  NAND2X1 U125 ( .A(unsort_data[16]), .B(n5), .Y(n181) );
  OAI221XL U126 ( .A0(n10), .A1(n173), .B0(n77), .B1(n70), .C0(n176), .Y(N159)
         );
  NAND2X1 U127 ( .A(unsort_data[21]), .B(n5), .Y(n176) );
  CLKINVX1 U128 ( .A(sorted_data[21]), .Y(n70) );
  OAI221XL U129 ( .A0(n153), .A1(n15), .B0(n75), .B1(n41), .C0(n161), .Y(N170)
         );
  NAND2X1 U130 ( .A(unsort_data[32]), .B(n4), .Y(n161) );
  OAI221XL U131 ( .A0(n10), .A1(n163), .B0(n76), .B1(n44), .C0(n166), .Y(N167)
         );
  NAND2X1 U132 ( .A(unsort_data[29]), .B(n4), .Y(n166) );
  OAI221XL U133 ( .A0(n11), .A1(n163), .B0(n76), .B1(n45), .C0(n167), .Y(N166)
         );
  NAND2X1 U134 ( .A(unsort_data[28]), .B(n4), .Y(n167) );
  OAI221XL U135 ( .A0(n12), .A1(n163), .B0(n76), .B1(n46), .C0(n168), .Y(N165)
         );
  NAND2X1 U136 ( .A(unsort_data[27]), .B(n4), .Y(n168) );
  OAI221XL U137 ( .A0(n10), .A1(n183), .B0(n78), .B1(n60), .C0(n186), .Y(N151)
         );
  NAND2X1 U138 ( .A(unsort_data[13]), .B(n5), .Y(n186) );
  OAI221XL U139 ( .A0(n11), .A1(n183), .B0(n78), .B1(n64), .C0(n187), .Y(N150)
         );
  NAND2X1 U140 ( .A(unsort_data[12]), .B(n5), .Y(n187) );
  OAI221XL U141 ( .A0(n15), .A1(n183), .B0(n78), .B1(n74), .C0(n191), .Y(N146)
         );
  NAND2X1 U142 ( .A(unsort_data[8]), .B(n5), .Y(n191) );
  CLKINVX1 U143 ( .A(n208), .Y(n33) );
  AOI222XL U144 ( .A0(unsort_flag[17]), .A1(n7), .B0(update_flag[5]), .B1(n81), 
        .C0(sorted_flag[17]), .C1(n182), .Y(n208) );
  CLKINVX1 U145 ( .A(n209), .Y(n37) );
  AOI222XL U146 ( .A0(unsort_flag[16]), .A1(n6), .B0(update_flag[4]), .B1(n81), 
        .C0(sorted_flag[16]), .C1(n182), .Y(n209) );
  CLKINVX1 U147 ( .A(n210), .Y(n17) );
  AOI222XL U148 ( .A0(unsort_flag[15]), .A1(n6), .B0(update_flag[3]), .B1(n81), 
        .C0(sorted_flag[15]), .C1(n182), .Y(n210) );
  CLKINVX1 U149 ( .A(n211), .Y(n21) );
  AOI222XL U150 ( .A0(unsort_flag[14]), .A1(n6), .B0(update_flag[2]), .B1(n81), 
        .C0(sorted_flag[14]), .C1(n182), .Y(n211) );
  CLKINVX1 U151 ( .A(n212), .Y(n25) );
  AOI222XL U152 ( .A0(unsort_flag[13]), .A1(n6), .B0(update_flag[1]), .B1(n81), 
        .C0(sorted_flag[13]), .C1(n182), .Y(n212) );
  CLKINVX1 U153 ( .A(n213), .Y(n29) );
  AOI222XL U154 ( .A0(unsort_flag[12]), .A1(n6), .B0(update_flag[0]), .B1(n81), 
        .C0(sorted_flag[12]), .C1(n182), .Y(n213) );
  CLKINVX1 U155 ( .A(n193), .Y(n35) );
  AOI222XL U156 ( .A0(unsort_flag[29]), .A1(n6), .B0(update_flag[5]), .B1(n83), 
        .C0(sorted_flag[29]), .C1(n162), .Y(n193) );
  CLKINVX1 U157 ( .A(n194), .Y(n39) );
  AOI222XL U158 ( .A0(unsort_flag[28]), .A1(n6), .B0(update_flag[4]), .B1(n83), 
        .C0(sorted_flag[28]), .C1(n162), .Y(n194) );
  CLKINVX1 U159 ( .A(n195), .Y(n19) );
  AOI222XL U160 ( .A0(unsort_flag[27]), .A1(n6), .B0(update_flag[3]), .B1(n83), 
        .C0(sorted_flag[27]), .C1(n162), .Y(n195) );
  CLKINVX1 U161 ( .A(n196), .Y(n23) );
  AOI222XL U162 ( .A0(unsort_flag[26]), .A1(n6), .B0(update_flag[2]), .B1(n83), 
        .C0(sorted_flag[26]), .C1(n162), .Y(n196) );
  CLKINVX1 U163 ( .A(n197), .Y(n27) );
  AOI222XL U164 ( .A0(unsort_flag[25]), .A1(n6), .B0(update_flag[1]), .B1(n83), 
        .C0(sorted_flag[25]), .C1(n162), .Y(n197) );
  CLKINVX1 U165 ( .A(n198), .Y(n31) );
  AOI222XL U166 ( .A0(unsort_flag[24]), .A1(n6), .B0(update_flag[0]), .B1(n83), 
        .C0(sorted_flag[24]), .C1(n162), .Y(n198) );
  CLKINVX1 U167 ( .A(n201), .Y(n34) );
  AOI222XL U168 ( .A0(unsort_flag[23]), .A1(n7), .B0(update_flag[5]), .B1(n82), 
        .C0(sorted_flag[23]), .C1(n172), .Y(n201) );
  CLKINVX1 U169 ( .A(n202), .Y(n38) );
  AOI222XL U170 ( .A0(unsort_flag[22]), .A1(n6), .B0(update_flag[4]), .B1(n82), 
        .C0(sorted_flag[22]), .C1(n172), .Y(n202) );
  CLKINVX1 U171 ( .A(n203), .Y(n18) );
  AOI222XL U172 ( .A0(unsort_flag[21]), .A1(n6), .B0(update_flag[3]), .B1(n82), 
        .C0(sorted_flag[21]), .C1(n172), .Y(n203) );
  CLKINVX1 U173 ( .A(n204), .Y(n22) );
  AOI222XL U174 ( .A0(unsort_flag[20]), .A1(n6), .B0(update_flag[2]), .B1(n82), 
        .C0(sorted_flag[20]), .C1(n172), .Y(n204) );
  CLKINVX1 U175 ( .A(n205), .Y(n26) );
  AOI222XL U176 ( .A0(unsort_flag[19]), .A1(n6), .B0(update_flag[1]), .B1(n82), 
        .C0(sorted_flag[19]), .C1(n172), .Y(n205) );
  CLKINVX1 U177 ( .A(n206), .Y(n30) );
  AOI222XL U178 ( .A0(unsort_flag[18]), .A1(n6), .B0(update_flag[0]), .B1(n82), 
        .C0(sorted_flag[18]), .C1(n172), .Y(n206) );
  CLKINVX1 U179 ( .A(n215), .Y(n32) );
  AOI222XL U180 ( .A0(unsort_flag[11]), .A1(n7), .B0(update_flag[5]), .B1(n80), 
        .C0(sorted_flag[11]), .C1(n192), .Y(n215) );
  CLKINVX1 U181 ( .A(n216), .Y(n36) );
  AOI222XL U182 ( .A0(unsort_flag[10]), .A1(n6), .B0(update_flag[4]), .B1(n80), 
        .C0(sorted_flag[10]), .C1(n192), .Y(n216) );
  CLKINVX1 U183 ( .A(n217), .Y(n16) );
  AOI222XL U184 ( .A0(unsort_flag[9]), .A1(n7), .B0(update_flag[3]), .B1(n80), 
        .C0(sorted_flag[9]), .C1(n192), .Y(n217) );
  CLKINVX1 U185 ( .A(n218), .Y(n20) );
  AOI222XL U186 ( .A0(unsort_flag[8]), .A1(n6), .B0(update_flag[2]), .B1(n80), 
        .C0(sorted_flag[8]), .C1(n192), .Y(n218) );
  CLKINVX1 U187 ( .A(n219), .Y(n24) );
  AOI222XL U188 ( .A0(unsort_flag[7]), .A1(n7), .B0(update_flag[1]), .B1(n80), 
        .C0(sorted_flag[7]), .C1(n192), .Y(n219) );
  CLKINVX1 U189 ( .A(n220), .Y(n28) );
  AOI222XL U190 ( .A0(unsort_flag[6]), .A1(n6), .B0(update_flag[0]), .B1(n80), 
        .C0(sorted_flag[6]), .C1(n192), .Y(n220) );
  XNOR2X1 U191 ( .A(n45), .B(data[28]), .Y(n149) );
  XNOR2X1 U192 ( .A(n57), .B(data[16]), .Y(n128) );
  XNOR2X1 U193 ( .A(n49), .B(data[39]), .Y(n141) );
  XNOR2X1 U194 ( .A(n46), .B(data[27]), .Y(n148) );
  XNOR2X1 U195 ( .A(n58), .B(data[15]), .Y(n127) );
  XNOR2X1 U196 ( .A(n44), .B(data[29]), .Y(n147) );
  XNOR2X1 U197 ( .A(n56), .B(data[17]), .Y(n126) );
  XNOR2X1 U198 ( .A(sorted_data[38]), .B(data[38]), .Y(n100) );
  XNOR2X1 U199 ( .A(n59), .B(data[14]), .Y(n112) );
  XNOR2X1 U200 ( .A(n74), .B(data[8]), .Y(n115) );
  XNOR2X1 U201 ( .A(n60), .B(data[13]), .Y(n113) );
  XNOR2X1 U202 ( .A(n64), .B(data[12]), .Y(n114) );
  NOR4X1 U203 ( .A(n4), .B(n109), .C(n110), .D(n111), .Y(n108) );
  XNOR2X1 U204 ( .A(n73), .B(data[18]), .Y(n109) );
  XNOR2X1 U205 ( .A(n71), .B(data[20]), .Y(n110) );
  XNOR2X1 U206 ( .A(n72), .B(data[19]), .Y(n111) );
  NOR4X1 U207 ( .A(n132), .B(n133), .C(n134), .D(n135), .Y(n123) );
  XOR2X1 U208 ( .A(sorted_data[5]), .B(data[5]), .Y(n133) );
  XOR2X1 U209 ( .A(sorted_data[3]), .B(data[3]), .Y(n134) );
  XOR2X1 U210 ( .A(sorted_data[4]), .B(data[4]), .Y(n135) );
  NAND3X1 U211 ( .A(n129), .B(n130), .C(n131), .Y(n125) );
  XNOR2X1 U212 ( .A(sorted_data[21]), .B(data[21]), .Y(n130) );
  XNOR2X1 U213 ( .A(sorted_data[22]), .B(data[22]), .Y(n129) );
  XNOR2X1 U214 ( .A(sorted_data[23]), .B(data[23]), .Y(n131) );
  NAND3X1 U215 ( .A(n150), .B(n151), .C(n152), .Y(n146) );
  XNOR2X1 U216 ( .A(sorted_data[35]), .B(data[35]), .Y(n152) );
  XNOR2X1 U217 ( .A(sorted_data[34]), .B(data[34]), .Y(n150) );
  XNOR2X1 U218 ( .A(sorted_data[33]), .B(data[33]), .Y(n151) );
  OAI21XL U219 ( .A0(n63), .A1(n62), .B0(n61), .Y(en[1]) );
  NOR4X1 U220 ( .A(n87), .B(n88), .C(n89), .D(n90), .Y(N19) );
  NOR3X1 U221 ( .A(n95), .B(n96), .C(n97), .Y(n94) );
  XNOR2X1 U222 ( .A(n41), .B(data[32]), .Y(n95) );
  XNOR2X1 U223 ( .A(n42), .B(data[31]), .Y(n96) );
  XNOR2X1 U224 ( .A(n43), .B(data[30]), .Y(n97) );
  NAND4X1 U225 ( .A(n91), .B(n92), .C(n93), .D(n94), .Y(n90) );
  XNOR2X1 U226 ( .A(sorted_data[24]), .B(data[24]), .Y(n91) );
  XNOR2X1 U227 ( .A(sorted_data[25]), .B(data[25]), .Y(n92) );
  XNOR2X1 U228 ( .A(sorted_data[26]), .B(data[26]), .Y(n93) );
  NAND4X1 U229 ( .A(n98), .B(n99), .C(n100), .D(n101), .Y(n89) );
  NOR3X1 U230 ( .A(n102), .B(n103), .C(n104), .Y(n101) );
  XNOR2X1 U231 ( .A(sorted_data[36]), .B(data[36]), .Y(n98) );
  XNOR2X1 U232 ( .A(sorted_data[37]), .B(data[37]), .Y(n99) );
  NAND3X1 U233 ( .A(n136), .B(n137), .C(n138), .Y(n132) );
  XNOR2X1 U234 ( .A(sorted_data[10]), .B(data[10]), .Y(n136) );
  XNOR2X1 U235 ( .A(sorted_data[9]), .B(data[9]), .Y(n137) );
  XNOR2X1 U236 ( .A(sorted_data[11]), .B(data[11]), .Y(n138) );
  NOR2X1 U237 ( .A(n61), .B(n62), .Y(en[4]) );
  NAND3X1 U238 ( .A(n143), .B(n144), .C(n145), .Y(n139) );
  XNOR2X1 U239 ( .A(sorted_data[45]), .B(data[45]), .Y(n144) );
  XNOR2X1 U240 ( .A(sorted_data[46]), .B(data[46]), .Y(n143) );
  XNOR2X1 U241 ( .A(sorted_data[47]), .B(data[47]), .Y(n145) );
  XOR2X1 U242 ( .A(sorted_data[40]), .B(data[40]), .Y(n142) );
  XOR2X1 U243 ( .A(sorted_data[41]), .B(data[41]), .Y(n140) );
  XOR2X1 U244 ( .A(sorted_data[44]), .B(data[44]), .Y(n102) );
  XOR2X1 U245 ( .A(sorted_data[2]), .B(data[2]), .Y(n118) );
  XOR2X1 U246 ( .A(sorted_data[43]), .B(data[43]), .Y(n103) );
  XOR2X1 U247 ( .A(sorted_data[7]), .B(data[7]), .Y(n116) );
  XOR2X1 U248 ( .A(sorted_data[1]), .B(data[1]), .Y(n119) );
  XOR2X1 U249 ( .A(sorted_data[42]), .B(data[42]), .Y(n104) );
  XOR2X1 U250 ( .A(sorted_data[6]), .B(data[6]), .Y(n117) );
  XOR2X1 U251 ( .A(sorted_data[0]), .B(data[0]), .Y(n120) );
  NOR3X1 U252 ( .A(num[0]), .B(num[1]), .C(n222), .Y(n214) );
  NOR3X1 U253 ( .A(n84), .B(num[1]), .C(n222), .Y(n221) );
  NOR3X1 U254 ( .A(n84), .B(num[2]), .C(n85), .Y(n207) );
  NOR3X1 U255 ( .A(num[0]), .B(num[2]), .C(n85), .Y(n199) );
  CLKINVX1 U256 ( .A(num[1]), .Y(n85) );
  CLKINVX1 U257 ( .A(num[2]), .Y(n222) );
  CLKINVX1 U258 ( .A(num[0]), .Y(n84) );
endmodule


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
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  NOR2X1 U4 ( .A(n1), .B(n2), .Y(carry[1]) );
endmodule


module SplitCell_0 ( rst, en, clk, flag_A, flag_B, HC, M );
  output [7:0] HC;
  output [7:0] M;
  input rst, en, clk, flag_A, flag_B;
  wire   n1, n3, n6, n8, n10, n28, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72;

  DFFRX1 \HC_reg[6]  ( .D(n52), .CK(clk), .RN(n3), .Q(HC[6]), .QN(n61) );
  DFFRX1 \HC_reg[4]  ( .D(n54), .CK(clk), .RN(n3), .Q(HC[4]), .QN(n63) );
  DFFRX1 \HC_reg[1]  ( .D(n57), .CK(clk), .RN(n3), .Q(HC[1]), .QN(n66) );
  DFFRX1 \HC_reg[0]  ( .D(n58), .CK(clk), .RN(n3), .Q(HC[0]), .QN(n67) );
  DFFRX1 \HC_reg[7]  ( .D(n51), .CK(clk), .RN(n3), .Q(HC[7]), .QN(n59) );
  DFFRX1 \HC_reg[5]  ( .D(n53), .CK(clk), .RN(n3), .Q(HC[5]), .QN(n62) );
  DFFRX1 \HC_reg[3]  ( .D(n55), .CK(clk), .RN(n3), .Q(HC[3]), .QN(n64) );
  DFFRX1 \HC_reg[2]  ( .D(n56), .CK(clk), .RN(n3), .Q(HC[2]), .QN(n65) );
  DFFRX1 \M_reg[0]  ( .D(n50), .CK(clk), .RN(n3), .Q(M[0]), .QN(n43) );
  DFFRX1 \M_reg[1]  ( .D(n6), .CK(clk), .RN(n3), .Q(M[1]), .QN(n44) );
  DFFRX1 \M_reg[7]  ( .D(n42), .CK(clk), .RN(n3), .Q(M[7]), .QN(n60) );
  DFFRX1 \M_reg[3]  ( .D(n10), .CK(clk), .RN(n3), .Q(M[3]), .QN(n46) );
  DFFRX1 \M_reg[5]  ( .D(n40), .CK(clk), .RN(n3), .Q(M[5]), .QN(n48) );
  DFFRX1 \M_reg[2]  ( .D(n8), .CK(clk), .RN(n3), .Q(M[2]), .QN(n45) );
  DFFRX1 \M_reg[4]  ( .D(n28), .CK(clk), .RN(n3), .Q(M[4]), .QN(n47) );
  DFFRX1 \M_reg[6]  ( .D(n41), .CK(clk), .RN(n3), .Q(M[6]), .QN(n49) );
  OA21XL U3 ( .A0(flag_B), .A1(flag_A), .B0(en), .Y(n1) );
  CLKINVX1 U4 ( .A(n1), .Y(n68) );
  NAND4BX1 U5 ( .AN(flag_A), .B(n60), .C(flag_B), .D(en), .Y(n69) );
  NAND3BX1 U6 ( .AN(n69), .B(n48), .C(n49), .Y(n70) );
  NAND3BX1 U7 ( .AN(n70), .B(n46), .C(n47), .Y(n71) );
  OAI21XL U8 ( .A0(n44), .A1(n72), .B0(n65), .Y(n56) );
  NAND2BX1 U9 ( .AN(n71), .B(n45), .Y(n72) );
  OAI21XL U10 ( .A0(n45), .A1(n71), .B0(n64), .Y(n55) );
  OAI31XL U11 ( .A0(M[1]), .A1(n72), .A2(M[0]), .B0(n67), .Y(n58) );
  OAI31XL U12 ( .A0(M[1]), .A1(n43), .A2(n72), .B0(n66), .Y(n57) );
  OAI31XL U13 ( .A0(M[4]), .A1(n46), .A2(n70), .B0(n63), .Y(n54) );
  OAI22XL U14 ( .A0(n60), .A1(n1), .B0(n49), .B1(n68), .Y(n42) );
  OAI22XL U15 ( .A0(n48), .A1(n1), .B0(n47), .B1(n68), .Y(n40) );
  OAI22XL U16 ( .A0(n45), .A1(n1), .B0(n44), .B1(n68), .Y(n8) );
  OAI22XL U17 ( .A0(n44), .A1(n1), .B0(n43), .B1(n68), .Y(n6) );
  OAI22XL U18 ( .A0(n46), .A1(n1), .B0(n45), .B1(n68), .Y(n10) );
  OAI22XL U19 ( .A0(n49), .A1(n1), .B0(n48), .B1(n68), .Y(n41) );
  OAI22XL U20 ( .A0(n47), .A1(n1), .B0(n46), .B1(n68), .Y(n28) );
  OAI21XL U21 ( .A0(n49), .A1(n69), .B0(n59), .Y(n51) );
  OAI21XL U22 ( .A0(n47), .A1(n70), .B0(n62), .Y(n53) );
  NAND2X1 U23 ( .A(n43), .B(n68), .Y(n50) );
  OAI31XL U24 ( .A0(M[6]), .A1(n48), .A2(n69), .B0(n61), .Y(n52) );
  CLKINVX1 U25 ( .A(rst), .Y(n3) );
endmodule


module SplitCell_1 ( rst, en, clk, flag_A, flag_B, HC, M );
  output [7:0] HC;
  output [7:0] M;
  input rst, en, clk, flag_A, flag_B;
  wire   n1, n3, n6, n8, n10, n28, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72;

  DFFRX1 \HC_reg[6]  ( .D(n52), .CK(clk), .RN(n3), .Q(HC[6]), .QN(n61) );
  DFFRX1 \HC_reg[4]  ( .D(n54), .CK(clk), .RN(n3), .Q(HC[4]), .QN(n63) );
  DFFRX1 \HC_reg[1]  ( .D(n57), .CK(clk), .RN(n3), .Q(HC[1]), .QN(n66) );
  DFFRX1 \HC_reg[0]  ( .D(n58), .CK(clk), .RN(n3), .Q(HC[0]), .QN(n67) );
  DFFRX1 \HC_reg[7]  ( .D(n51), .CK(clk), .RN(n3), .Q(HC[7]), .QN(n59) );
  DFFRX1 \HC_reg[5]  ( .D(n53), .CK(clk), .RN(n3), .Q(HC[5]), .QN(n62) );
  DFFRX1 \HC_reg[3]  ( .D(n55), .CK(clk), .RN(n3), .Q(HC[3]), .QN(n64) );
  DFFRX1 \HC_reg[2]  ( .D(n56), .CK(clk), .RN(n3), .Q(HC[2]), .QN(n65) );
  DFFRX1 \M_reg[0]  ( .D(n50), .CK(clk), .RN(n3), .Q(M[0]), .QN(n43) );
  DFFRX1 \M_reg[1]  ( .D(n6), .CK(clk), .RN(n3), .Q(M[1]), .QN(n44) );
  DFFRX1 \M_reg[7]  ( .D(n42), .CK(clk), .RN(n3), .Q(M[7]), .QN(n60) );
  DFFRX1 \M_reg[3]  ( .D(n10), .CK(clk), .RN(n3), .Q(M[3]), .QN(n46) );
  DFFRX1 \M_reg[5]  ( .D(n40), .CK(clk), .RN(n3), .Q(M[5]), .QN(n48) );
  DFFRX1 \M_reg[2]  ( .D(n8), .CK(clk), .RN(n3), .Q(M[2]), .QN(n45) );
  DFFRX1 \M_reg[4]  ( .D(n28), .CK(clk), .RN(n3), .Q(M[4]), .QN(n47) );
  DFFRX1 \M_reg[6]  ( .D(n41), .CK(clk), .RN(n3), .Q(M[6]), .QN(n49) );
  OA21XL U3 ( .A0(flag_B), .A1(flag_A), .B0(en), .Y(n1) );
  CLKINVX1 U4 ( .A(n1), .Y(n68) );
  NAND4BX1 U5 ( .AN(flag_A), .B(n60), .C(flag_B), .D(en), .Y(n69) );
  NAND3BX1 U6 ( .AN(n69), .B(n48), .C(n49), .Y(n70) );
  NAND3BX1 U7 ( .AN(n70), .B(n46), .C(n47), .Y(n71) );
  OAI21XL U8 ( .A0(n44), .A1(n72), .B0(n65), .Y(n56) );
  NAND2BX1 U9 ( .AN(n71), .B(n45), .Y(n72) );
  OAI21XL U10 ( .A0(n45), .A1(n71), .B0(n64), .Y(n55) );
  OAI31XL U11 ( .A0(M[1]), .A1(n72), .A2(M[0]), .B0(n67), .Y(n58) );
  OAI31XL U12 ( .A0(M[1]), .A1(n43), .A2(n72), .B0(n66), .Y(n57) );
  OAI31XL U13 ( .A0(M[4]), .A1(n46), .A2(n70), .B0(n63), .Y(n54) );
  OAI22XL U14 ( .A0(n60), .A1(n1), .B0(n49), .B1(n68), .Y(n42) );
  OAI22XL U15 ( .A0(n48), .A1(n1), .B0(n47), .B1(n68), .Y(n40) );
  OAI22XL U16 ( .A0(n45), .A1(n1), .B0(n44), .B1(n68), .Y(n8) );
  OAI22XL U17 ( .A0(n44), .A1(n1), .B0(n43), .B1(n68), .Y(n6) );
  OAI22XL U18 ( .A0(n46), .A1(n1), .B0(n45), .B1(n68), .Y(n10) );
  OAI22XL U19 ( .A0(n49), .A1(n1), .B0(n48), .B1(n68), .Y(n41) );
  OAI22XL U20 ( .A0(n47), .A1(n1), .B0(n46), .B1(n68), .Y(n28) );
  OAI21XL U21 ( .A0(n49), .A1(n69), .B0(n59), .Y(n51) );
  OAI21XL U22 ( .A0(n47), .A1(n70), .B0(n62), .Y(n53) );
  NAND2X1 U23 ( .A(n43), .B(n68), .Y(n50) );
  OAI31XL U24 ( .A0(M[6]), .A1(n48), .A2(n69), .B0(n61), .Y(n52) );
  CLKINVX1 U25 ( .A(rst), .Y(n3) );
endmodule


module SplitCell_2 ( rst, en, clk, flag_A, flag_B, HC, M );
  output [7:0] HC;
  output [7:0] M;
  input rst, en, clk, flag_A, flag_B;
  wire   n1, n3, n6, n8, n10, n28, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72;

  DFFRX1 \HC_reg[6]  ( .D(n52), .CK(clk), .RN(n3), .Q(HC[6]), .QN(n61) );
  DFFRX1 \HC_reg[4]  ( .D(n54), .CK(clk), .RN(n3), .Q(HC[4]), .QN(n63) );
  DFFRX1 \HC_reg[1]  ( .D(n57), .CK(clk), .RN(n3), .Q(HC[1]), .QN(n66) );
  DFFRX1 \HC_reg[0]  ( .D(n58), .CK(clk), .RN(n3), .Q(HC[0]), .QN(n67) );
  DFFRX1 \HC_reg[7]  ( .D(n51), .CK(clk), .RN(n3), .Q(HC[7]), .QN(n59) );
  DFFRX1 \HC_reg[5]  ( .D(n53), .CK(clk), .RN(n3), .Q(HC[5]), .QN(n62) );
  DFFRX1 \HC_reg[3]  ( .D(n55), .CK(clk), .RN(n3), .Q(HC[3]), .QN(n64) );
  DFFRX1 \HC_reg[2]  ( .D(n56), .CK(clk), .RN(n3), .Q(HC[2]), .QN(n65) );
  DFFRX1 \M_reg[0]  ( .D(n50), .CK(clk), .RN(n3), .Q(M[0]), .QN(n43) );
  DFFRX1 \M_reg[1]  ( .D(n6), .CK(clk), .RN(n3), .Q(M[1]), .QN(n44) );
  DFFRX1 \M_reg[7]  ( .D(n42), .CK(clk), .RN(n3), .Q(M[7]), .QN(n60) );
  DFFRX1 \M_reg[3]  ( .D(n10), .CK(clk), .RN(n3), .Q(M[3]), .QN(n46) );
  DFFRX1 \M_reg[5]  ( .D(n40), .CK(clk), .RN(n3), .Q(M[5]), .QN(n48) );
  DFFRX1 \M_reg[2]  ( .D(n8), .CK(clk), .RN(n3), .Q(M[2]), .QN(n45) );
  DFFRX1 \M_reg[4]  ( .D(n28), .CK(clk), .RN(n3), .Q(M[4]), .QN(n47) );
  DFFRX1 \M_reg[6]  ( .D(n41), .CK(clk), .RN(n3), .Q(M[6]), .QN(n49) );
  OA21XL U3 ( .A0(flag_B), .A1(flag_A), .B0(en), .Y(n1) );
  CLKINVX1 U4 ( .A(n1), .Y(n68) );
  NAND4BX1 U5 ( .AN(flag_A), .B(n60), .C(flag_B), .D(en), .Y(n69) );
  NAND3BX1 U6 ( .AN(n69), .B(n48), .C(n49), .Y(n70) );
  NAND3BX1 U7 ( .AN(n70), .B(n46), .C(n47), .Y(n71) );
  OAI21XL U8 ( .A0(n44), .A1(n72), .B0(n65), .Y(n56) );
  NAND2BX1 U9 ( .AN(n71), .B(n45), .Y(n72) );
  OAI21XL U10 ( .A0(n45), .A1(n71), .B0(n64), .Y(n55) );
  OAI31XL U11 ( .A0(M[1]), .A1(n72), .A2(M[0]), .B0(n67), .Y(n58) );
  OAI31XL U12 ( .A0(M[1]), .A1(n43), .A2(n72), .B0(n66), .Y(n57) );
  OAI31XL U13 ( .A0(M[4]), .A1(n46), .A2(n70), .B0(n63), .Y(n54) );
  OAI22XL U14 ( .A0(n60), .A1(n1), .B0(n49), .B1(n68), .Y(n42) );
  OAI22XL U15 ( .A0(n48), .A1(n1), .B0(n47), .B1(n68), .Y(n40) );
  OAI22XL U16 ( .A0(n45), .A1(n1), .B0(n44), .B1(n68), .Y(n8) );
  OAI22XL U17 ( .A0(n44), .A1(n1), .B0(n43), .B1(n68), .Y(n6) );
  OAI22XL U18 ( .A0(n46), .A1(n1), .B0(n45), .B1(n68), .Y(n10) );
  OAI22XL U19 ( .A0(n49), .A1(n1), .B0(n48), .B1(n68), .Y(n41) );
  OAI22XL U20 ( .A0(n47), .A1(n1), .B0(n46), .B1(n68), .Y(n28) );
  OAI21XL U21 ( .A0(n49), .A1(n69), .B0(n59), .Y(n51) );
  OAI21XL U22 ( .A0(n47), .A1(n70), .B0(n62), .Y(n53) );
  NAND2X1 U23 ( .A(n43), .B(n68), .Y(n50) );
  OAI31XL U24 ( .A0(M[6]), .A1(n48), .A2(n69), .B0(n61), .Y(n52) );
  CLKINVX1 U25 ( .A(rst), .Y(n3) );
endmodule


module SplitCell_3 ( rst, en, clk, flag_A, flag_B, HC, M );
  output [7:0] HC;
  output [7:0] M;
  input rst, en, clk, flag_A, flag_B;
  wire   n1, n3, n6, n8, n10, n28, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72;

  DFFRX1 \HC_reg[6]  ( .D(n52), .CK(clk), .RN(n3), .Q(HC[6]), .QN(n61) );
  DFFRX1 \HC_reg[4]  ( .D(n54), .CK(clk), .RN(n3), .Q(HC[4]), .QN(n63) );
  DFFRX1 \HC_reg[1]  ( .D(n57), .CK(clk), .RN(n3), .Q(HC[1]), .QN(n66) );
  DFFRX1 \HC_reg[0]  ( .D(n58), .CK(clk), .RN(n3), .Q(HC[0]), .QN(n67) );
  DFFRX1 \HC_reg[7]  ( .D(n51), .CK(clk), .RN(n3), .Q(HC[7]), .QN(n59) );
  DFFRX1 \HC_reg[5]  ( .D(n53), .CK(clk), .RN(n3), .Q(HC[5]), .QN(n62) );
  DFFRX1 \HC_reg[3]  ( .D(n55), .CK(clk), .RN(n3), .Q(HC[3]), .QN(n64) );
  DFFRX1 \HC_reg[2]  ( .D(n56), .CK(clk), .RN(n3), .Q(HC[2]), .QN(n65) );
  DFFRX1 \M_reg[0]  ( .D(n50), .CK(clk), .RN(n3), .Q(M[0]), .QN(n43) );
  DFFRX1 \M_reg[1]  ( .D(n6), .CK(clk), .RN(n3), .Q(M[1]), .QN(n44) );
  DFFRX1 \M_reg[7]  ( .D(n42), .CK(clk), .RN(n3), .Q(M[7]), .QN(n60) );
  DFFRX1 \M_reg[3]  ( .D(n10), .CK(clk), .RN(n3), .Q(M[3]), .QN(n46) );
  DFFRX1 \M_reg[5]  ( .D(n40), .CK(clk), .RN(n3), .Q(M[5]), .QN(n48) );
  DFFRX1 \M_reg[2]  ( .D(n8), .CK(clk), .RN(n3), .Q(M[2]), .QN(n45) );
  DFFRX1 \M_reg[4]  ( .D(n28), .CK(clk), .RN(n3), .Q(M[4]), .QN(n47) );
  DFFRX1 \M_reg[6]  ( .D(n41), .CK(clk), .RN(n3), .Q(M[6]), .QN(n49) );
  OA21XL U3 ( .A0(flag_B), .A1(flag_A), .B0(en), .Y(n1) );
  CLKINVX1 U4 ( .A(n1), .Y(n68) );
  NAND4BX1 U5 ( .AN(flag_A), .B(n60), .C(flag_B), .D(en), .Y(n69) );
  NAND3BX1 U6 ( .AN(n69), .B(n48), .C(n49), .Y(n70) );
  NAND3BX1 U7 ( .AN(n70), .B(n46), .C(n47), .Y(n71) );
  OAI21XL U8 ( .A0(n44), .A1(n72), .B0(n65), .Y(n56) );
  NAND2BX1 U9 ( .AN(n71), .B(n45), .Y(n72) );
  OAI21XL U10 ( .A0(n45), .A1(n71), .B0(n64), .Y(n55) );
  OAI31XL U11 ( .A0(M[1]), .A1(n72), .A2(M[0]), .B0(n67), .Y(n58) );
  OAI31XL U12 ( .A0(M[1]), .A1(n43), .A2(n72), .B0(n66), .Y(n57) );
  OAI31XL U13 ( .A0(M[4]), .A1(n46), .A2(n70), .B0(n63), .Y(n54) );
  OAI22XL U14 ( .A0(n60), .A1(n1), .B0(n49), .B1(n68), .Y(n42) );
  OAI22XL U15 ( .A0(n48), .A1(n1), .B0(n47), .B1(n68), .Y(n40) );
  OAI22XL U16 ( .A0(n45), .A1(n1), .B0(n44), .B1(n68), .Y(n8) );
  OAI22XL U17 ( .A0(n44), .A1(n1), .B0(n43), .B1(n68), .Y(n6) );
  OAI22XL U18 ( .A0(n46), .A1(n1), .B0(n45), .B1(n68), .Y(n10) );
  OAI22XL U19 ( .A0(n49), .A1(n1), .B0(n48), .B1(n68), .Y(n41) );
  OAI22XL U20 ( .A0(n47), .A1(n1), .B0(n46), .B1(n68), .Y(n28) );
  OAI21XL U21 ( .A0(n49), .A1(n69), .B0(n59), .Y(n51) );
  OAI21XL U22 ( .A0(n47), .A1(n70), .B0(n62), .Y(n53) );
  NAND2X1 U23 ( .A(n43), .B(n68), .Y(n50) );
  OAI31XL U24 ( .A0(M[6]), .A1(n48), .A2(n69), .B0(n61), .Y(n52) );
  CLKINVX1 U25 ( .A(rst), .Y(n3) );
endmodule


module SplitCell_4 ( rst, en, clk, flag_A, flag_B, HC, M );
  output [7:0] HC;
  output [7:0] M;
  input rst, en, clk, flag_A, flag_B;
  wire   n1, n3, n6, n8, n10, n28, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72;

  DFFRX1 \HC_reg[6]  ( .D(n52), .CK(clk), .RN(n3), .Q(HC[6]), .QN(n61) );
  DFFRX1 \HC_reg[4]  ( .D(n54), .CK(clk), .RN(n3), .Q(HC[4]), .QN(n63) );
  DFFRX1 \HC_reg[1]  ( .D(n57), .CK(clk), .RN(n3), .Q(HC[1]), .QN(n66) );
  DFFRX1 \HC_reg[0]  ( .D(n58), .CK(clk), .RN(n3), .Q(HC[0]), .QN(n67) );
  DFFRX1 \HC_reg[7]  ( .D(n51), .CK(clk), .RN(n3), .Q(HC[7]), .QN(n59) );
  DFFRX1 \HC_reg[5]  ( .D(n53), .CK(clk), .RN(n3), .Q(HC[5]), .QN(n62) );
  DFFRX1 \HC_reg[3]  ( .D(n55), .CK(clk), .RN(n3), .Q(HC[3]), .QN(n64) );
  DFFRX1 \HC_reg[2]  ( .D(n56), .CK(clk), .RN(n3), .Q(HC[2]), .QN(n65) );
  DFFRX1 \M_reg[0]  ( .D(n50), .CK(clk), .RN(n3), .Q(M[0]), .QN(n43) );
  DFFRX1 \M_reg[1]  ( .D(n6), .CK(clk), .RN(n3), .Q(M[1]), .QN(n44) );
  DFFRX1 \M_reg[7]  ( .D(n42), .CK(clk), .RN(n3), .Q(M[7]), .QN(n60) );
  DFFRX1 \M_reg[3]  ( .D(n10), .CK(clk), .RN(n3), .Q(M[3]), .QN(n46) );
  DFFRX1 \M_reg[5]  ( .D(n40), .CK(clk), .RN(n3), .Q(M[5]), .QN(n48) );
  DFFRX1 \M_reg[2]  ( .D(n8), .CK(clk), .RN(n3), .Q(M[2]), .QN(n45) );
  DFFRX1 \M_reg[4]  ( .D(n28), .CK(clk), .RN(n3), .Q(M[4]), .QN(n47) );
  DFFRX1 \M_reg[6]  ( .D(n41), .CK(clk), .RN(n3), .Q(M[6]), .QN(n49) );
  OA21XL U3 ( .A0(flag_B), .A1(flag_A), .B0(en), .Y(n1) );
  CLKINVX1 U4 ( .A(n1), .Y(n68) );
  NAND4BX1 U5 ( .AN(flag_A), .B(n60), .C(flag_B), .D(en), .Y(n69) );
  NAND3BX1 U6 ( .AN(n69), .B(n48), .C(n49), .Y(n70) );
  NAND3BX1 U7 ( .AN(n70), .B(n46), .C(n47), .Y(n71) );
  OAI21XL U8 ( .A0(n44), .A1(n72), .B0(n65), .Y(n56) );
  NAND2BX1 U9 ( .AN(n71), .B(n45), .Y(n72) );
  OAI21XL U10 ( .A0(n45), .A1(n71), .B0(n64), .Y(n55) );
  OAI31XL U11 ( .A0(M[1]), .A1(n72), .A2(M[0]), .B0(n67), .Y(n58) );
  OAI31XL U12 ( .A0(M[1]), .A1(n43), .A2(n72), .B0(n66), .Y(n57) );
  OAI31XL U13 ( .A0(M[4]), .A1(n46), .A2(n70), .B0(n63), .Y(n54) );
  OAI22XL U14 ( .A0(n60), .A1(n1), .B0(n49), .B1(n68), .Y(n42) );
  OAI22XL U15 ( .A0(n48), .A1(n1), .B0(n47), .B1(n68), .Y(n40) );
  OAI22XL U16 ( .A0(n45), .A1(n1), .B0(n44), .B1(n68), .Y(n8) );
  OAI22XL U17 ( .A0(n44), .A1(n1), .B0(n43), .B1(n68), .Y(n6) );
  OAI22XL U18 ( .A0(n46), .A1(n1), .B0(n45), .B1(n68), .Y(n10) );
  OAI22XL U19 ( .A0(n49), .A1(n1), .B0(n48), .B1(n68), .Y(n41) );
  OAI22XL U20 ( .A0(n47), .A1(n1), .B0(n46), .B1(n68), .Y(n28) );
  OAI21XL U21 ( .A0(n49), .A1(n69), .B0(n59), .Y(n51) );
  OAI21XL U22 ( .A0(n47), .A1(n70), .B0(n62), .Y(n53) );
  NAND2X1 U23 ( .A(n43), .B(n68), .Y(n50) );
  OAI31XL U24 ( .A0(M[6]), .A1(n48), .A2(n69), .B0(n61), .Y(n52) );
  CLKINVX1 U25 ( .A(rst), .Y(n3) );
endmodule


module SplitCell_5 ( rst, en, clk, flag_A, flag_B, HC, M );
  output [7:0] HC;
  output [7:0] M;
  input rst, en, clk, flag_A, flag_B;
  wire   n2, n4, n5, n7, n9, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n1, n3;

  DFFRX1 \HC_reg[6]  ( .D(n26), .CK(clk), .RN(n3), .Q(HC[6]), .QN(n17) );
  DFFRX1 \HC_reg[4]  ( .D(n24), .CK(clk), .RN(n3), .Q(HC[4]), .QN(n15) );
  DFFRX1 \HC_reg[1]  ( .D(n21), .CK(clk), .RN(n3), .Q(HC[1]), .QN(n12) );
  DFFRX1 \HC_reg[0]  ( .D(n20), .CK(clk), .RN(n3), .Q(HC[0]), .QN(n11) );
  DFFRX1 \HC_reg[7]  ( .D(n27), .CK(clk), .RN(n3), .Q(HC[7]), .QN(n19) );
  DFFRX1 \HC_reg[5]  ( .D(n25), .CK(clk), .RN(n3), .Q(HC[5]), .QN(n16) );
  DFFRX1 \HC_reg[3]  ( .D(n23), .CK(clk), .RN(n3), .Q(HC[3]), .QN(n14) );
  DFFRX1 \HC_reg[2]  ( .D(n22), .CK(clk), .RN(n3), .Q(HC[2]), .QN(n13) );
  DFFRX1 \M_reg[0]  ( .D(n29), .CK(clk), .RN(n3), .Q(M[0]), .QN(n36) );
  DFFRX1 \M_reg[1]  ( .D(n43), .CK(clk), .RN(n3), .Q(M[1]), .QN(n35) );
  DFFRX1 \M_reg[7]  ( .D(n37), .CK(clk), .RN(n3), .Q(M[7]), .QN(n18) );
  DFFRX1 \M_reg[3]  ( .D(n41), .CK(clk), .RN(n3), .Q(M[3]), .QN(n33) );
  DFFRX1 \M_reg[5]  ( .D(n39), .CK(clk), .RN(n3), .Q(M[5]), .QN(n31) );
  DFFRX1 \M_reg[2]  ( .D(n42), .CK(clk), .RN(n3), .Q(M[2]), .QN(n34) );
  DFFRX1 \M_reg[4]  ( .D(n40), .CK(clk), .RN(n3), .Q(M[4]), .QN(n32) );
  DFFRX1 \M_reg[6]  ( .D(n38), .CK(clk), .RN(n3), .Q(M[6]), .QN(n30) );
  OA21XL U3 ( .A0(flag_B), .A1(flag_A), .B0(en), .Y(n1) );
  CLKINVX1 U4 ( .A(n1), .Y(n9) );
  NAND4BX1 U5 ( .AN(flag_A), .B(n18), .C(flag_B), .D(en), .Y(n7) );
  NAND3BX1 U6 ( .AN(n7), .B(n31), .C(n30), .Y(n5) );
  NAND3BX1 U7 ( .AN(n5), .B(n33), .C(n32), .Y(n4) );
  OAI21XL U8 ( .A0(n35), .A1(n2), .B0(n13), .Y(n22) );
  NAND2BX1 U9 ( .AN(n4), .B(n34), .Y(n2) );
  OAI21XL U10 ( .A0(n34), .A1(n4), .B0(n14), .Y(n23) );
  OAI31XL U11 ( .A0(M[1]), .A1(n2), .A2(M[0]), .B0(n11), .Y(n20) );
  OAI31XL U12 ( .A0(M[1]), .A1(n36), .A2(n2), .B0(n12), .Y(n21) );
  OAI31XL U13 ( .A0(M[4]), .A1(n33), .A2(n5), .B0(n15), .Y(n24) );
  OAI31XL U14 ( .A0(M[6]), .A1(n31), .A2(n7), .B0(n17), .Y(n26) );
  OAI22XL U15 ( .A0(n18), .A1(n1), .B0(n30), .B1(n9), .Y(n37) );
  OAI22XL U16 ( .A0(n31), .A1(n1), .B0(n32), .B1(n9), .Y(n39) );
  OAI22XL U17 ( .A0(n34), .A1(n1), .B0(n35), .B1(n9), .Y(n42) );
  OAI22XL U18 ( .A0(n35), .A1(n1), .B0(n36), .B1(n9), .Y(n43) );
  OAI22XL U19 ( .A0(n33), .A1(n1), .B0(n34), .B1(n9), .Y(n41) );
  OAI22XL U20 ( .A0(n30), .A1(n1), .B0(n31), .B1(n9), .Y(n38) );
  OAI22XL U21 ( .A0(n32), .A1(n1), .B0(n33), .B1(n9), .Y(n40) );
  OAI21XL U22 ( .A0(n30), .A1(n7), .B0(n19), .Y(n27) );
  OAI21XL U23 ( .A0(n32), .A1(n5), .B0(n16), .Y(n25) );
  NAND2X1 U24 ( .A(n36), .B(n9), .Y(n29) );
  CLKINVX1 U25 ( .A(rst), .Y(n3) );
endmodule


module huffman ( clk, reset, gray_valid, gray_data, CNT_valid, CNT1, CNT2, 
        CNT3, CNT4, CNT5, CNT6, code_valid, HC1, HC2, HC3, HC4, HC5, HC6, M1, 
        M2, M3, M4, M5, M6 );
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
  input clk, reset, gray_valid;
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

  Control Control_U ( .clk(clk), .reset(reset), .gray_valid(gray_valid), 
        .gray_data_in(gray_data), .gray_data_out(gray_data_out), .counter_en(
        counter_en), .CNT_valid(CNT_valid), .sort_set(sort_set), 
        .sort_update_en(sort_update_en), .sort_done(sort_done), .sort_num(
        sort_num), .split_en(split_en), .code_valid(code_valid) );
  Counter Counter_U ( .rst(reset), .en(counter_en), .clk(clk), .gray_data(
        gray_data_out), .CNT1(CNT1), .CNT2(CNT2), .CNT3(CNT3), .CNT4(CNT4), 
        .CNT5(CNT5), .CNT6(CNT6) );
  Sort Sort_U ( .unsort_data({CNT1, CNT2, CNT3, CNT4, CNT5, CNT6}), 
        .unsort_flag({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .clk(clk), .set(sort_set), .num(sort_num), 
        .update_data(update_data), .update_flag(update_flag), .update_en(
        sort_update_en), .done(sort_done), .sorted_data(sorted_data), 
        .sorted_flag(sorted_flag), .num_reg(num_reg) );
  Merge_DW01_add_0 \Merge_U/add_183  ( .A(data_A), .B(data_B), .CI(1'b0), 
        .SUM(update_data) );
  SplitCell_0 \Split_U/SC[5]  ( .rst(reset), .en(split_en), .clk(clk), 
        .flag_A(flag_A[5]), .flag_B(flag_B[5]), .HC(HC6), .M(M6) );
  SplitCell_1 \Split_U/SC[4]  ( .rst(reset), .en(split_en), .clk(clk), 
        .flag_A(flag_A[4]), .flag_B(flag_B[4]), .HC(HC5), .M(M5) );
  SplitCell_2 \Split_U/SC[3]  ( .rst(reset), .en(split_en), .clk(clk), 
        .flag_A(flag_A[3]), .flag_B(flag_B[3]), .HC(HC4), .M(M4) );
  SplitCell_3 \Split_U/SC[2]  ( .rst(reset), .en(split_en), .clk(clk), 
        .flag_A(flag_A[2]), .flag_B(flag_B[2]), .HC(HC3), .M(M3) );
  SplitCell_4 \Split_U/SC[1]  ( .rst(reset), .en(split_en), .clk(clk), 
        .flag_A(flag_A[1]), .flag_B(flag_B[1]), .HC(HC2), .M(M2) );
  SplitCell_5 \Split_U/SC[0]  ( .rst(reset), .en(split_en), .clk(clk), 
        .flag_A(flag_A[0]), .flag_B(flag_B[0]), .HC(HC1), .M(M1) );
  NAND2X1 U3 ( .A(num_reg[1]), .B(num_reg[0]), .Y(n1) );
  CLKINVX1 U4 ( .A(sorted_data[33]), .Y(n79) );
  CLKINVX1 U5 ( .A(sorted_data[25]), .Y(n71) );
  CLKINVX1 U6 ( .A(sorted_data[26]), .Y(n72) );
  CLKINVX1 U7 ( .A(sorted_data[34]), .Y(n65) );
  CLKINVX1 U8 ( .A(sorted_data[35]), .Y(n66) );
  CLKINVX1 U9 ( .A(sorted_data[36]), .Y(n67) );
  CLKINVX1 U10 ( .A(sorted_data[37]), .Y(n68) );
  CLKINVX1 U11 ( .A(sorted_data[38]), .Y(n69) );
  CLKINVX1 U12 ( .A(sorted_data[9]), .Y(n51) );
  CLKINVX1 U13 ( .A(sorted_data[10]), .Y(n52) );
  CLKINVX1 U14 ( .A(sorted_data[27]), .Y(n73) );
  CLKINVX1 U15 ( .A(sorted_data[28]), .Y(n74) );
  CLKINVX1 U16 ( .A(sorted_data[29]), .Y(n75) );
  CLKINVX1 U17 ( .A(sorted_data[30]), .Y(n76) );
  CLKINVX1 U18 ( .A(sorted_data[39]), .Y(n70) );
  CLKINVX1 U19 ( .A(sorted_data[14]), .Y(n56) );
  CLKINVX1 U20 ( .A(sorted_data[31]), .Y(n77) );
  CLKINVX1 U21 ( .A(sorted_data[15]), .Y(n57) );
  OR2X1 U22 ( .A(flag_A[5]), .B(flag_B[5]), .Y(update_flag[5]) );
  OR2X1 U23 ( .A(flag_A[4]), .B(flag_B[4]), .Y(update_flag[4]) );
  OR2X1 U24 ( .A(flag_A[3]), .B(flag_B[3]), .Y(update_flag[3]) );
  OR2X1 U25 ( .A(flag_A[2]), .B(flag_B[2]), .Y(update_flag[2]) );
  OR2X1 U26 ( .A(flag_A[1]), .B(flag_B[1]), .Y(update_flag[1]) );
  OR2X1 U27 ( .A(flag_A[0]), .B(flag_B[0]), .Y(update_flag[0]) );
  CLKINVX1 U28 ( .A(sorted_data[24]), .Y(n64) );
  CLKINVX1 U29 ( .A(sorted_data[8]), .Y(n50) );
  CLKINVX1 U30 ( .A(sorted_data[32]), .Y(n78) );
  CLKINVX1 U31 ( .A(sorted_data[11]), .Y(n53) );
  CLKINVX1 U32 ( .A(sorted_data[12]), .Y(n54) );
  CLKINVX1 U33 ( .A(sorted_data[13]), .Y(n55) );
  CLKINVX1 U34 ( .A(sorted_flag[7]), .Y(n61) );
  CLKINVX1 U35 ( .A(sorted_flag[25]), .Y(n89) );
  CLKINVX1 U36 ( .A(sorted_flag[8]), .Y(n62) );
  CLKINVX1 U37 ( .A(sorted_flag[26]), .Y(n90) );
  CLKINVX1 U38 ( .A(sorted_flag[9]), .Y(n63) );
  CLKINVX1 U39 ( .A(sorted_flag[27]), .Y(n91) );
  CLKINVX1 U40 ( .A(sorted_flag[10]), .Y(n58) );
  CLKINVX1 U41 ( .A(sorted_flag[28]), .Y(n81) );
  CLKINVX1 U42 ( .A(sorted_flag[11]), .Y(n59) );
  CLKINVX1 U43 ( .A(sorted_flag[29]), .Y(n82) );
  CLKINVX1 U44 ( .A(sorted_flag[6]), .Y(n60) );
  CLKINVX1 U45 ( .A(sorted_flag[24]), .Y(n88) );
  CLKINVX1 U46 ( .A(sorted_flag[19]), .Y(n83) );
  CLKINVX1 U47 ( .A(sorted_flag[20]), .Y(n84) );
  CLKINVX1 U48 ( .A(sorted_flag[22]), .Y(n86) );
  CLKINVX1 U49 ( .A(sorted_flag[23]), .Y(n87) );
  CLKINVX1 U50 ( .A(sorted_flag[18]), .Y(n80) );
  CLKINVX1 U51 ( .A(sorted_flag[21]), .Y(n85) );
  CLKINVX1 U52 ( .A(n29), .Y(n49) );
  CLKBUFX3 U53 ( .A(n1), .Y(n93) );
  CLKBUFX3 U54 ( .A(n1), .Y(n92) );
  NOR2X1 U55 ( .A(num_reg[2]), .B(num_reg[0]), .Y(n45) );
  NAND2X1 U56 ( .A(n2), .B(num_reg[1]), .Y(n29) );
  NOR2BX1 U57 ( .AN(n2), .B(num_reg[1]), .Y(n44) );
  NOR2BX1 U58 ( .AN(n2), .B(num_reg[1]), .Y(n96) );
  NOR2BX1 U59 ( .AN(num_reg[0]), .B(num_reg[1]), .Y(n95) );
  NOR2BX1 U60 ( .AN(num_reg[0]), .B(num_reg[1]), .Y(n46) );
  NOR2BX1 U61 ( .AN(num_reg[0]), .B(num_reg[1]), .Y(n94) );
  NOR2BX1 U62 ( .AN(num_reg[2]), .B(num_reg[0]), .Y(n2) );
  AOI222XL U63 ( .A0(sorted_flag[12]), .A1(n94), .B0(sorted_flag[30]), .B1(n45), .C0(sorted_flag[18]), .C1(n96), .Y(n3) );
  OAI221XL U64 ( .A0(n29), .A1(n60), .B0(n92), .B1(n88), .C0(n3), .Y(flag_A[0]) );
  AOI222XL U65 ( .A0(sorted_flag[13]), .A1(n46), .B0(sorted_flag[31]), .B1(n45), .C0(sorted_flag[19]), .C1(n44), .Y(n4) );
  OAI221XL U66 ( .A0(n29), .A1(n61), .B0(n92), .B1(n89), .C0(n4), .Y(flag_A[1]) );
  AOI222XL U67 ( .A0(sorted_flag[14]), .A1(n95), .B0(sorted_flag[32]), .B1(n45), .C0(sorted_flag[20]), .C1(n96), .Y(n5) );
  OAI221XL U68 ( .A0(n29), .A1(n62), .B0(n92), .B1(n90), .C0(n5), .Y(flag_A[2]) );
  AOI222XL U69 ( .A0(sorted_flag[15]), .A1(n94), .B0(sorted_flag[33]), .B1(n45), .C0(sorted_flag[21]), .C1(n44), .Y(n6) );
  OAI221XL U70 ( .A0(n29), .A1(n63), .B0(n92), .B1(n91), .C0(n6), .Y(flag_A[3]) );
  AOI222XL U71 ( .A0(sorted_flag[16]), .A1(n46), .B0(sorted_flag[34]), .B1(n45), .C0(sorted_flag[22]), .C1(n96), .Y(n7) );
  OAI221XL U72 ( .A0(n29), .A1(n58), .B0(n92), .B1(n81), .C0(n7), .Y(flag_A[4]) );
  AOI222XL U73 ( .A0(sorted_flag[17]), .A1(n95), .B0(sorted_flag[35]), .B1(n45), .C0(sorted_flag[23]), .C1(n44), .Y(n8) );
  OAI221XL U74 ( .A0(n29), .A1(n59), .B0(n92), .B1(n82), .C0(n8), .Y(flag_A[5]) );
  NAND2X1 U75 ( .A(sorted_flag[0]), .B(n49), .Y(n10) );
  AOI222XL U76 ( .A0(sorted_flag[6]), .A1(n94), .B0(sorted_flag[24]), .B1(n45), 
        .C0(sorted_flag[12]), .C1(n96), .Y(n9) );
  OAI211X1 U77 ( .A0(n93), .A1(n80), .B0(n10), .C0(n9), .Y(flag_B[0]) );
  NAND2X1 U78 ( .A(sorted_flag[1]), .B(n49), .Y(n12) );
  AOI222XL U79 ( .A0(sorted_flag[7]), .A1(n46), .B0(sorted_flag[25]), .B1(n45), 
        .C0(sorted_flag[13]), .C1(n44), .Y(n11) );
  OAI211X1 U80 ( .A0(n93), .A1(n83), .B0(n12), .C0(n11), .Y(flag_B[1]) );
  NAND2X1 U81 ( .A(sorted_flag[2]), .B(n49), .Y(n14) );
  AOI222XL U82 ( .A0(sorted_flag[8]), .A1(n95), .B0(sorted_flag[26]), .B1(n45), 
        .C0(sorted_flag[14]), .C1(n96), .Y(n13) );
  OAI211X1 U83 ( .A0(n93), .A1(n84), .B0(n14), .C0(n13), .Y(flag_B[2]) );
  NAND2X1 U84 ( .A(sorted_flag[3]), .B(n49), .Y(n16) );
  AOI222XL U85 ( .A0(sorted_flag[9]), .A1(n94), .B0(sorted_flag[27]), .B1(n45), 
        .C0(sorted_flag[15]), .C1(n44), .Y(n15) );
  OAI211X1 U86 ( .A0(n93), .A1(n85), .B0(n16), .C0(n15), .Y(flag_B[3]) );
  NAND2X1 U87 ( .A(sorted_flag[4]), .B(n49), .Y(n18) );
  AOI222XL U88 ( .A0(sorted_flag[10]), .A1(n46), .B0(sorted_flag[28]), .B1(n45), .C0(sorted_flag[16]), .C1(n96), .Y(n17) );
  OAI211X1 U89 ( .A0(n92), .A1(n86), .B0(n18), .C0(n17), .Y(flag_B[4]) );
  NAND2X1 U90 ( .A(sorted_flag[5]), .B(n49), .Y(n20) );
  AOI222XL U91 ( .A0(sorted_flag[11]), .A1(n95), .B0(sorted_flag[29]), .B1(n45), .C0(sorted_flag[17]), .C1(n44), .Y(n19) );
  OAI211X1 U92 ( .A0(n92), .A1(n87), .B0(n20), .C0(n19), .Y(flag_B[5]) );
  AOI222XL U93 ( .A0(sorted_data[16]), .A1(n94), .B0(sorted_data[40]), .B1(n45), .C0(sorted_data[24]), .C1(n96), .Y(n21) );
  OAI221XL U94 ( .A0(n29), .A1(n50), .B0(n92), .B1(n78), .C0(n21), .Y(
        data_A[0]) );
  AOI222XL U95 ( .A0(sorted_data[17]), .A1(n46), .B0(sorted_data[41]), .B1(n45), .C0(sorted_data[25]), .C1(n44), .Y(n22) );
  OAI221XL U96 ( .A0(n29), .A1(n51), .B0(n92), .B1(n79), .C0(n22), .Y(
        data_A[1]) );
  AOI222XL U97 ( .A0(sorted_data[18]), .A1(n95), .B0(sorted_data[42]), .B1(n45), .C0(sorted_data[26]), .C1(n96), .Y(n23) );
  OAI221XL U98 ( .A0(n29), .A1(n52), .B0(n92), .B1(n65), .C0(n23), .Y(
        data_A[2]) );
  AOI222XL U99 ( .A0(sorted_data[19]), .A1(n94), .B0(sorted_data[43]), .B1(n45), .C0(sorted_data[27]), .C1(n44), .Y(n24) );
  OAI221XL U100 ( .A0(n29), .A1(n53), .B0(n92), .B1(n66), .C0(n24), .Y(
        data_A[3]) );
  AOI222XL U101 ( .A0(sorted_data[20]), .A1(n46), .B0(sorted_data[44]), .B1(
        n45), .C0(sorted_data[28]), .C1(n96), .Y(n25) );
  OAI221XL U102 ( .A0(n29), .A1(n54), .B0(n92), .B1(n67), .C0(n25), .Y(
        data_A[4]) );
  AOI222XL U103 ( .A0(sorted_data[21]), .A1(n95), .B0(sorted_data[45]), .B1(
        n45), .C0(sorted_data[29]), .C1(n44), .Y(n26) );
  OAI221XL U104 ( .A0(n29), .A1(n55), .B0(n92), .B1(n68), .C0(n26), .Y(
        data_A[5]) );
  AOI222XL U105 ( .A0(sorted_data[22]), .A1(n94), .B0(sorted_data[46]), .B1(
        n45), .C0(sorted_data[30]), .C1(n96), .Y(n27) );
  OAI221XL U106 ( .A0(n29), .A1(n56), .B0(n92), .B1(n69), .C0(n27), .Y(
        data_A[6]) );
  AOI222XL U107 ( .A0(n95), .A1(sorted_data[23]), .B0(sorted_data[47]), .B1(
        n45), .C0(sorted_data[31]), .C1(n44), .Y(n28) );
  OAI221XL U108 ( .A0(n57), .A1(n29), .B0(n70), .B1(n92), .C0(n28), .Y(
        data_A[7]) );
  NAND2X1 U109 ( .A(sorted_data[0]), .B(n49), .Y(n31) );
  AOI222XL U110 ( .A0(sorted_data[8]), .A1(n46), .B0(sorted_data[32]), .B1(n45), .C0(sorted_data[16]), .C1(n96), .Y(n30) );
  OAI211X1 U111 ( .A0(n93), .A1(n64), .B0(n31), .C0(n30), .Y(data_B[0]) );
  NAND2X1 U112 ( .A(sorted_data[1]), .B(n49), .Y(n33) );
  AOI222XL U113 ( .A0(sorted_data[9]), .A1(n95), .B0(sorted_data[33]), .B1(n45), .C0(sorted_data[17]), .C1(n44), .Y(n32) );
  OAI211X1 U114 ( .A0(n93), .A1(n71), .B0(n33), .C0(n32), .Y(data_B[1]) );
  NAND2X1 U115 ( .A(sorted_data[2]), .B(n49), .Y(n35) );
  AOI222XL U116 ( .A0(sorted_data[10]), .A1(n94), .B0(sorted_data[34]), .B1(
        n45), .C0(sorted_data[18]), .C1(n96), .Y(n34) );
  OAI211X1 U117 ( .A0(n93), .A1(n72), .B0(n35), .C0(n34), .Y(data_B[2]) );
  NAND2X1 U118 ( .A(sorted_data[3]), .B(n49), .Y(n37) );
  AOI222XL U119 ( .A0(sorted_data[11]), .A1(n46), .B0(sorted_data[35]), .B1(
        n45), .C0(sorted_data[19]), .C1(n44), .Y(n36) );
  OAI211X1 U120 ( .A0(n93), .A1(n73), .B0(n37), .C0(n36), .Y(data_B[3]) );
  NAND2X1 U121 ( .A(sorted_data[4]), .B(n49), .Y(n39) );
  AOI222XL U122 ( .A0(sorted_data[12]), .A1(n95), .B0(sorted_data[36]), .B1(
        n45), .C0(sorted_data[20]), .C1(n96), .Y(n38) );
  OAI211X1 U123 ( .A0(n93), .A1(n74), .B0(n39), .C0(n38), .Y(data_B[4]) );
  NAND2X1 U124 ( .A(sorted_data[5]), .B(n49), .Y(n41) );
  AOI222XL U125 ( .A0(sorted_data[13]), .A1(n94), .B0(sorted_data[37]), .B1(
        n45), .C0(sorted_data[21]), .C1(n44), .Y(n40) );
  OAI211X1 U126 ( .A0(n93), .A1(n75), .B0(n41), .C0(n40), .Y(data_B[5]) );
  NAND2X1 U127 ( .A(sorted_data[6]), .B(n49), .Y(n43) );
  AOI222XL U128 ( .A0(sorted_data[14]), .A1(n46), .B0(sorted_data[38]), .B1(
        n45), .C0(sorted_data[22]), .C1(n96), .Y(n42) );
  OAI211X1 U129 ( .A0(n93), .A1(n76), .B0(n43), .C0(n42), .Y(data_B[6]) );
  NAND2X1 U130 ( .A(sorted_data[7]), .B(n49), .Y(n48) );
  AOI222XL U131 ( .A0(sorted_data[15]), .A1(n95), .B0(sorted_data[39]), .B1(
        n45), .C0(sorted_data[23]), .C1(n44), .Y(n47) );
  OAI211X1 U132 ( .A0(n93), .A1(n77), .B0(n48), .C0(n47), .Y(data_B[7]) );
endmodule

