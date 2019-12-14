/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03
// Date      : Sat Dec 14 14:30:35 2019
/////////////////////////////////////////////////////////////


module Control ( clk, reset, gray_valid, gray_data_in, gray_data_out, 
        counter_en, CNT_valid, sort_set, sort_update_en, sort_done, sort_num, 
        split_en, code_valid );
  input [7:0] gray_data_in;
  output [7:0] gray_data_out;
  output [2:0] sort_num;
  input clk, reset, gray_valid, sort_done;
  output counter_en, CNT_valid, sort_set, sort_update_en, split_en, code_valid;
  wire   sort_update_en, \state[1] , n9, n10, n11, n14, n15, n23, n24, n25,
         n26, n27, n28, n29, n1, n2, n3, n5, n6, n7, n8, n12, n13, n16, n17,
         n18, n19, n20, n21, n22, n30, n31, n32, n33, n34, n36;
  assign split_en = sort_update_en;

  DFFRX2 \state_reg[0]  ( .D(n26), .CK(clk), .RN(n33), .Q(counter_en) );
  DFFQX1 \gray_data_out_reg[3]  ( .D(gray_data_in[3]), .CK(clk), .Q(
        gray_data_out[3]) );
  DFFQX1 \gray_data_out_reg[4]  ( .D(gray_data_in[4]), .CK(clk), .Q(
        gray_data_out[4]) );
  DFFQX1 \gray_data_out_reg[6]  ( .D(gray_data_in[6]), .CK(clk), .Q(
        gray_data_out[6]) );
  DFFQX1 \gray_data_out_reg[7]  ( .D(gray_data_in[7]), .CK(clk), .Q(
        gray_data_out[7]) );
  DFFQX1 \gray_data_out_reg[5]  ( .D(gray_data_in[5]), .CK(clk), .Q(
        gray_data_out[5]) );
  DFFRX1 \sort_num_reg[0]  ( .D(n29), .CK(clk), .RN(n33), .Q(sort_num[0]), 
        .QN(n11) );
  DFFSX1 \sort_num_reg[2]  ( .D(n28), .CK(clk), .SN(n33), .Q(sort_num[2]), 
        .QN(n1) );
  DFFSX1 \sort_num_reg[1]  ( .D(n25), .CK(clk), .SN(n33), .Q(sort_num[1]) );
  DFFRX1 \state_reg[2]  ( .D(n34), .CK(clk), .RN(n33), .Q(sort_update_en), 
        .QN(n9) );
  DFFQX1 \gray_data_out_reg[1]  ( .D(gray_data_in[1]), .CK(clk), .Q(
        gray_data_out[1]) );
  DFFQX1 \gray_data_out_reg[0]  ( .D(gray_data_in[0]), .CK(clk), .Q(
        gray_data_out[0]) );
  DFFQX1 \gray_data_out_reg[2]  ( .D(gray_data_in[2]), .CK(clk), .Q(
        gray_data_out[2]) );
  DFFRX2 \state_reg[1]  ( .D(n27), .CK(clk), .RN(n33), .Q(\state[1] ), .QN(n10) );
  OAI211XL U3 ( .A0(sort_done), .A1(n21), .B0(n20), .C0(n22), .Y(n27) );
  NAND2X1 U4 ( .A(n3), .B(n8), .Y(n26) );
  NAND3X1 U5 ( .A(n2), .B(n9), .C(\state[1] ), .Y(n3) );
  INVX1 U6 ( .A(sort_done), .Y(n2) );
  OR2XL U7 ( .A(sort_update_en), .B(sort_set), .Y(n36) );
  AND3XL U8 ( .A(n10), .B(sort_update_en), .C(n31), .Y(n6) );
  NAND2X2 U9 ( .A(sort_done), .B(n12), .Y(n17) );
  NAND3BX2 U10 ( .AN(n6), .B(n17), .C(n16), .Y(n34) );
  CLKINVX1 U11 ( .A(n22), .Y(CNT_valid) );
  CLKINVX1 U12 ( .A(n19), .Y(sort_set) );
  CLKINVX1 U13 ( .A(n13), .Y(n12) );
  CLKINVX1 U14 ( .A(n36), .Y(n32) );
  CLKINVX1 U15 ( .A(n30), .Y(n31) );
  OAI211X1 U16 ( .A0(\state[1] ), .A1(n18), .B0(counter_en), .C0(\state[1] ), 
        .Y(n13) );
  NAND2X1 U17 ( .A(n18), .B(n12), .Y(n16) );
  OAI2BB1X1 U18 ( .A0N(sort_num[1]), .A1N(n32), .B0(n14), .Y(n25) );
  XNOR2X1 U19 ( .A(sort_num[0]), .B(sort_num[1]), .Y(n15) );
  NOR2X1 U20 ( .A(n9), .B(n10), .Y(code_valid) );
  OR2X1 U21 ( .A(sort_num[2]), .B(sort_num[1]), .Y(n30) );
  MXI2X1 U22 ( .A(n23), .B(n1), .S0(n32), .Y(n28) );
  AOI211X1 U23 ( .A0(n11), .A1(n31), .B0(n24), .C0(code_valid), .Y(n23) );
  OA21XL U24 ( .A0(sort_num[0]), .A1(sort_num[1]), .B0(sort_num[2]), .Y(n24)
         );
  OAI2BB2XL U25 ( .B0(n10), .B1(counter_en), .A0N(gray_valid), .A1N(n10), .Y(
        n7) );
  NOR2X1 U26 ( .A(gray_valid), .B(\state[1] ), .Y(n5) );
  CLKINVX1 U27 ( .A(reset), .Y(n33) );
  OR2X1 U28 ( .A(counter_en), .B(n10), .Y(n19) );
  OAI211XL U29 ( .A0(counter_en), .A1(sort_update_en), .B0(n10), .C0(n18), .Y(
        n20) );
  OAI21XL U30 ( .A0(code_valid), .A1(n15), .B0(n36), .Y(n14) );
  OAI32XL U31 ( .A0(n32), .A1(sort_num[0]), .A2(code_valid), .B0(n11), .B1(n36), .Y(n29) );
  OR3X2 U32 ( .A(n10), .B(n5), .C(n36), .Y(n21) );
  OR2X1 U33 ( .A(n36), .B(n5), .Y(n18) );
  AOI32XL U34 ( .A0(n30), .A1(n10), .A2(sort_update_en), .B0(n7), .B1(n9), .Y(
        n8) );
  OR2X1 U35 ( .A(n19), .B(sort_update_en), .Y(n22) );
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
  DFFRX1 \CNT4_reg[7]  ( .D(n51), .CK(clk), .RN(n2), .Q(CNT4[7]) );
  DFFRX1 \CNT5_reg[7]  ( .D(n43), .CK(clk), .RN(n2), .Q(CNT5[7]) );
  DFFRX1 \CNT2_reg[7]  ( .D(n19), .CK(clk), .RN(n4), .Q(CNT2[7]) );
  DFFRX1 \CNT6_reg[7]  ( .D(n35), .CK(clk), .RN(n3), .Q(CNT6[7]) );
  DFFRX1 \CNT1_reg[7]  ( .D(n27), .CK(clk), .RN(n4), .Q(CNT1[7]) );
  DFFRX1 \CNT3_reg[7]  ( .D(n59), .CK(clk), .RN(n1), .Q(CNT3[7]) );
  DFFRX1 \CNT3_reg[1]  ( .D(n65), .CK(clk), .RN(n1), .Q(CNT3[1]) );
  DFFRX1 \CNT3_reg[5]  ( .D(n61), .CK(clk), .RN(n1), .Q(CNT3[5]) );
  DFFRX1 \CNT4_reg[3]  ( .D(n55), .CK(clk), .RN(n1), .Q(CNT4[3]) );
  DFFRX1 \CNT4_reg[4]  ( .D(n54), .CK(clk), .RN(n2), .Q(CNT4[4]) );
  DFFRX1 \CNT4_reg[6]  ( .D(n52), .CK(clk), .RN(n2), .Q(CNT4[6]) );
  DFFRX1 \CNT5_reg[6]  ( .D(n44), .CK(clk), .RN(n2), .Q(CNT5[6]) );
  DFFRX1 \CNT3_reg[4]  ( .D(n62), .CK(clk), .RN(n1), .Q(CNT3[4]) );
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
  DFFRX1 \CNT3_reg[2]  ( .D(n64), .CK(clk), .RN(n1), .Q(CNT3[2]) );
  DFFRX1 \CNT3_reg[3]  ( .D(n63), .CK(clk), .RN(n1), .Q(CNT3[3]) );
  DFFRX1 \CNT3_reg[6]  ( .D(n60), .CK(clk), .RN(n1), .Q(CNT3[6]) );
  DFFRX1 \CNT4_reg[1]  ( .D(n57), .CK(clk), .RN(n1), .Q(CNT4[1]) );
  DFFRX1 \CNT4_reg[2]  ( .D(n56), .CK(clk), .RN(n1), .Q(CNT4[2]) );
  DFFRX1 \CNT4_reg[5]  ( .D(n53), .CK(clk), .RN(n2), .Q(CNT4[5]) );
  DFFRX1 \CNT5_reg[1]  ( .D(n49), .CK(clk), .RN(n2), .Q(CNT5[1]) );
  DFFRX1 \CNT5_reg[2]  ( .D(n48), .CK(clk), .RN(n2), .Q(CNT5[2]) );
  DFFRX1 \CNT5_reg[3]  ( .D(n47), .CK(clk), .RN(n2), .Q(CNT5[3]) );
  DFFRX1 \CNT5_reg[4]  ( .D(n46), .CK(clk), .RN(n2), .Q(CNT5[4]) );
  DFFRX1 \CNT5_reg[5]  ( .D(n45), .CK(clk), .RN(n2), .Q(CNT5[5]) );
  DFFRX1 \CNT2_reg[1]  ( .D(n25), .CK(clk), .RN(n4), .Q(CNT2[1]) );
  DFFRX1 \CNT2_reg[2]  ( .D(n24), .CK(clk), .RN(n4), .Q(CNT2[2]) );
  DFFRX1 \CNT2_reg[3]  ( .D(n23), .CK(clk), .RN(n4), .Q(CNT2[3]) );
  DFFRX1 \CNT2_reg[4]  ( .D(n22), .CK(clk), .RN(n4), .Q(CNT2[4]) );
  DFFRX1 \CNT2_reg[5]  ( .D(n21), .CK(clk), .RN(n4), .Q(CNT2[5]) );
  DFFRX1 \CNT2_reg[6]  ( .D(n20), .CK(clk), .RN(n4), .Q(CNT2[6]) );
  DFFRX1 \CNT3_reg[0]  ( .D(n66), .CK(clk), .RN(n1), .Q(CNT3[0]) );
  DFFRX1 \CNT6_reg[0]  ( .D(n42), .CK(clk), .RN(n3), .Q(CNT6[0]) );
  DFFRX1 \CNT1_reg[0]  ( .D(n34), .CK(clk), .RN(n3), .Q(CNT1[0]) );
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
  AO22X1 U22 ( .A0(CNT1[7]), .A1(n13), .B0(N44), .B1(n9), .Y(n27) );
  AO22X1 U23 ( .A0(CNT6[7]), .A1(n14), .B0(N84), .B1(n8), .Y(n35) );
  AO22X1 U24 ( .A0(CNT5[7]), .A1(n15), .B0(N76), .B1(n7), .Y(n43) );
  AO22X1 U25 ( .A0(CNT4[7]), .A1(n16), .B0(N68), .B1(n6), .Y(n51) );
  AO22X1 U26 ( .A0(CNT3[7]), .A1(n17), .B0(N60), .B1(n5), .Y(n59) );
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
endmodule


module SortCell_0 ( data_in, flag_in, en, data_out, flag_out );
  input [15:0] data_in;
  input [11:0] flag_in;
  output [15:0] data_out;
  output [11:0] flag_out;
  input en;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52;

  OAI21X1 U1 ( .A0(data_in[2]), .A1(n35), .B0(n41), .Y(n43) );
  CLKINVX1 U2 ( .A(data_in[6]), .Y(n24) );
  INVX4 U3 ( .A(n42), .Y(n34) );
  CLKAND2X2 U4 ( .A(en), .B(n52), .Y(n18) );
  CLKAND2X2 U5 ( .A(en), .B(n52), .Y(n22) );
  AND2X4 U6 ( .A(en), .B(n52), .Y(n19) );
  INVX3 U7 ( .A(n22), .Y(n1) );
  CLKINVX1 U8 ( .A(n1), .Y(n2) );
  INVX3 U9 ( .A(n1), .Y(n3) );
  INVX1 U10 ( .A(n1), .Y(n4) );
  NOR2X2 U11 ( .A(n9), .B(n25), .Y(n51) );
  AND2X4 U12 ( .A(n26), .B(data_in[4]), .Y(n9) );
  NAND2X4 U13 ( .A(n10), .B(n11), .Y(n47) );
  NAND2X2 U14 ( .A(data_in[14]), .B(n24), .Y(n10) );
  INVX3 U15 ( .A(n5), .Y(n11) );
  NOR2X1 U16 ( .A(data_in[4]), .B(n28), .Y(n29) );
  NOR2X1 U17 ( .A(n47), .B(data_in[13]), .Y(n48) );
  CLKINVX1 U18 ( .A(data_in[1]), .Y(n31) );
  NAND2X1 U19 ( .A(data_in[1]), .B(n36), .Y(n37) );
  CLKINVX1 U20 ( .A(data_in[12]), .Y(n28) );
  NAND2BX2 U21 ( .AN(data_in[5]), .B(data_in[13]), .Y(n27) );
  CLKMX2X2 U22 ( .A(data_in[3]), .B(data_in[11]), .S0(n18), .Y(data_out[3]) );
  NAND3X2 U23 ( .A(n51), .B(n50), .C(n49), .Y(n52) );
  AOI22X1 U24 ( .A0(n48), .A1(data_in[5]), .B0(data_in[7]), .B1(n23), .Y(n49)
         );
  NAND2X2 U25 ( .A(n16), .B(n17), .Y(data_out[4]) );
  NAND2X1 U26 ( .A(data_in[12]), .B(n3), .Y(n17) );
  NAND2X1 U27 ( .A(data_in[4]), .B(n15), .Y(n16) );
  CLKINVX1 U28 ( .A(n2), .Y(n15) );
  CLKMX2X2 U29 ( .A(data_in[1]), .B(data_in[9]), .S0(n18), .Y(data_out[1]) );
  INVX3 U30 ( .A(data_in[15]), .Y(n23) );
  NAND3X2 U31 ( .A(n33), .B(n32), .C(data_in[0]), .Y(n39) );
  NOR2X4 U32 ( .A(data_in[7]), .B(n23), .Y(n5) );
  INVX1 U33 ( .A(n19), .Y(n12) );
  CLKMX2X2 U34 ( .A(data_in[5]), .B(data_in[13]), .S0(n19), .Y(data_out[5]) );
  MX2X1 U35 ( .A(data_in[0]), .B(data_in[8]), .S0(n19), .Y(data_out[0]) );
  NAND2BX1 U36 ( .AN(data_in[12]), .B(n27), .Y(n6) );
  NAND2X2 U37 ( .A(n37), .B(n38), .Y(n7) );
  NAND2X2 U38 ( .A(n8), .B(n39), .Y(n45) );
  INVX3 U39 ( .A(n7), .Y(n8) );
  AOI21X2 U40 ( .A0(data_in[2]), .A1(n35), .B0(n34), .Y(n38) );
  NOR2X2 U41 ( .A(n6), .B(n47), .Y(n26) );
  NOR3X1 U42 ( .A(n24), .B(data_in[14]), .C(n5), .Y(n25) );
  NOR2X1 U43 ( .A(n21), .B(n47), .Y(n46) );
  NAND2X2 U44 ( .A(n12), .B(data_in[7]), .Y(n13) );
  NAND2X1 U45 ( .A(n19), .B(data_in[15]), .Y(n14) );
  NAND2X2 U46 ( .A(n13), .B(n14), .Y(data_out[7]) );
  CLKMX2X2 U47 ( .A(data_in[2]), .B(data_in[10]), .S0(n18), .Y(data_out[2]) );
  NAND3X2 U48 ( .A(n46), .B(n45), .C(n44), .Y(n50) );
  NAND2X2 U49 ( .A(data_in[9]), .B(n31), .Y(n33) );
  CLKINVX1 U50 ( .A(data_in[9]), .Y(n36) );
  INVX1 U51 ( .A(data_in[10]), .Y(n35) );
  MX2X2 U52 ( .A(data_in[6]), .B(data_in[14]), .S0(n19), .Y(data_out[6]) );
  OR2X8 U53 ( .A(data_in[11]), .B(n40), .Y(n42) );
  NAND2X1 U54 ( .A(data_in[11]), .B(n40), .Y(n41) );
  INVX3 U55 ( .A(data_in[3]), .Y(n40) );
  INVX1 U56 ( .A(n20), .Y(n21) );
  MX2XL U57 ( .A(flag_in[4]), .B(flag_in[10]), .S0(n4), .Y(flag_out[4]) );
  MX2XL U58 ( .A(flag_in[2]), .B(flag_in[8]), .S0(n3), .Y(flag_out[2]) );
  MX2XL U59 ( .A(flag_in[0]), .B(flag_in[6]), .S0(n3), .Y(flag_out[0]) );
  MX2XL U60 ( .A(flag_in[10]), .B(flag_in[4]), .S0(n3), .Y(flag_out[10]) );
  MX2XL U61 ( .A(flag_in[8]), .B(flag_in[2]), .S0(n4), .Y(flag_out[8]) );
  MX2XL U62 ( .A(flag_in[6]), .B(flag_in[0]), .S0(n3), .Y(flag_out[6]) );
  AO21XL U63 ( .A0(n3), .A1(data_in[7]), .B0(data_in[15]), .Y(data_out[15]) );
  NOR2X1 U64 ( .A(n29), .B(n30), .Y(n20) );
  INVXL U65 ( .A(n27), .Y(n30) );
  MX2XL U66 ( .A(data_in[14]), .B(data_in[6]), .S0(n4), .Y(data_out[14]) );
  MX2XL U67 ( .A(data_in[8]), .B(data_in[0]), .S0(n3), .Y(data_out[8]) );
  MX2XL U68 ( .A(data_in[10]), .B(data_in[2]), .S0(n3), .Y(data_out[10]) );
  MX2XL U69 ( .A(data_in[12]), .B(data_in[4]), .S0(n4), .Y(data_out[12]) );
  NAND2XL U70 ( .A(n43), .B(n42), .Y(n44) );
  INVX1 U71 ( .A(data_in[8]), .Y(n32) );
  MX2XL U72 ( .A(flag_in[7]), .B(flag_in[1]), .S0(n3), .Y(flag_out[7]) );
  MX2XL U73 ( .A(flag_in[9]), .B(flag_in[3]), .S0(n4), .Y(flag_out[9]) );
  MX2XL U74 ( .A(flag_in[11]), .B(flag_in[5]), .S0(n4), .Y(flag_out[11]) );
  MX2XL U75 ( .A(flag_in[1]), .B(flag_in[7]), .S0(n4), .Y(flag_out[1]) );
  MX2XL U76 ( .A(flag_in[3]), .B(flag_in[9]), .S0(n3), .Y(flag_out[3]) );
  MX2XL U77 ( .A(flag_in[5]), .B(flag_in[11]), .S0(n4), .Y(flag_out[5]) );
  MX2XL U78 ( .A(data_in[11]), .B(data_in[3]), .S0(n4), .Y(data_out[11]) );
  MX2XL U79 ( .A(data_in[13]), .B(data_in[5]), .S0(n3), .Y(data_out[13]) );
  MX2XL U80 ( .A(data_in[9]), .B(data_in[1]), .S0(n4), .Y(data_out[9]) );
endmodule


module SortCell_4 ( data_in, flag_in, en, data_out, flag_out );
  input [15:0] data_in;
  input [11:0] flag_in;
  output [15:0] data_out;
  output [11:0] flag_out;
  input en;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54;

  CLKMX2X2 U1 ( .A(data_in[7]), .B(n4), .S0(n16), .Y(data_out[7]) );
  INVX1 U2 ( .A(data_in[10]), .Y(n35) );
  INVX3 U3 ( .A(data_in[13]), .Y(n23) );
  NOR2X4 U4 ( .A(data_in[4]), .B(n28), .Y(n29) );
  INVX3 U5 ( .A(data_in[12]), .Y(n28) );
  OR2X4 U6 ( .A(data_in[11]), .B(n40), .Y(n42) );
  CLKINVX1 U7 ( .A(data_in[8]), .Y(n32) );
  INVX3 U8 ( .A(data_in[6]), .Y(n24) );
  CLKMX2X2 U9 ( .A(data_in[1]), .B(data_in[9]), .S0(n54), .Y(data_out[1]) );
  CLKMX2X2 U10 ( .A(n17), .B(data_in[11]), .S0(n54), .Y(data_out[3]) );
  NAND2X1 U11 ( .A(n6), .B(n7), .Y(data_out[15]) );
  CLKMX2X2 U12 ( .A(data_in[4]), .B(data_in[12]), .S0(n54), .Y(data_out[4]) );
  CLKMX2X2 U13 ( .A(data_in[12]), .B(data_in[4]), .S0(n54), .Y(data_out[12])
         );
  CLKMX2X2 U14 ( .A(data_in[2]), .B(data_in[10]), .S0(n54), .Y(data_out[2]) );
  NAND2X2 U15 ( .A(data_in[9]), .B(n31), .Y(n33) );
  NAND2XL U16 ( .A(n16), .B(data_in[7]), .Y(n6) );
  NOR2X4 U17 ( .A(n5), .B(n34), .Y(n38) );
  NAND2X1 U18 ( .A(data_in[11]), .B(n40), .Y(n41) );
  CLKINVX3 U19 ( .A(data_in[3]), .Y(n40) );
  CLKMX2X2 U20 ( .A(data_in[0]), .B(data_in[8]), .S0(n54), .Y(data_out[0]) );
  INVXL U21 ( .A(n12), .Y(n13) );
  NAND2X2 U22 ( .A(n10), .B(n11), .Y(n1) );
  NAND2X2 U23 ( .A(n10), .B(n11), .Y(n2) );
  INVX8 U24 ( .A(n20), .Y(n11) );
  INVX1 U25 ( .A(data_in[9]), .Y(n36) );
  INVXL U26 ( .A(n48), .Y(n4) );
  CLKBUFX2 U27 ( .A(data_in[13]), .Y(n3) );
  MX2X2 U28 ( .A(data_in[5]), .B(n3), .S0(n54), .Y(data_out[5]) );
  NOR2X8 U29 ( .A(n22), .B(data_in[7]), .Y(n20) );
  CLKMX2X2 U30 ( .A(data_in[14]), .B(data_in[6]), .S0(n16), .Y(data_out[14])
         );
  CLKINVX6 U31 ( .A(data_in[15]), .Y(n22) );
  CLKINVX4 U32 ( .A(n27), .Y(n30) );
  MX2X1 U33 ( .A(data_in[9]), .B(data_in[1]), .S0(n54), .Y(data_out[9]) );
  NAND2X4 U34 ( .A(data_in[14]), .B(n24), .Y(n10) );
  CLKAND2X3 U35 ( .A(data_in[2]), .B(n35), .Y(n5) );
  INVX2 U36 ( .A(n42), .Y(n34) );
  CLKMX2X2 U37 ( .A(data_in[6]), .B(data_in[14]), .S0(n16), .Y(data_out[6]) );
  NOR2X2 U38 ( .A(data_in[5]), .B(n23), .Y(n19) );
  INVX1 U39 ( .A(n14), .Y(n15) );
  CLKMX2X2 U40 ( .A(data_in[11]), .B(n17), .S0(n54), .Y(data_out[11]) );
  INVXL U41 ( .A(n4), .Y(n7) );
  NAND2X4 U42 ( .A(n44), .B(n46), .Y(n8) );
  NAND2X6 U43 ( .A(n9), .B(n45), .Y(n51) );
  INVX4 U44 ( .A(n8), .Y(n9) );
  NAND3X4 U45 ( .A(n38), .B(n39), .C(n37), .Y(n45) );
  NOR3X4 U46 ( .A(n30), .B(n47), .C(n29), .Y(n46) );
  NAND3X8 U47 ( .A(n52), .B(n51), .C(n50), .Y(n53) );
  NAND2X6 U48 ( .A(n10), .B(n11), .Y(n47) );
  MX2X1 U49 ( .A(data_in[8]), .B(data_in[0]), .S0(n54), .Y(data_out[8]) );
  NOR2XL U50 ( .A(n24), .B(data_in[14]), .Y(n12) );
  NOR2X1 U51 ( .A(n13), .B(n18), .Y(n25) );
  NOR2X1 U52 ( .A(data_in[12]), .B(n19), .Y(n14) );
  NOR2X2 U53 ( .A(n15), .B(n2), .Y(n26) );
  MX2X1 U54 ( .A(n3), .B(data_in[5]), .S0(n16), .Y(data_out[13]) );
  AND2X8 U55 ( .A(en), .B(n53), .Y(n16) );
  AND2X8 U56 ( .A(en), .B(n53), .Y(n54) );
  AND2XL U57 ( .A(en), .B(n53), .Y(n21) );
  NOR2XL U58 ( .A(data_in[7]), .B(n22), .Y(n18) );
  AOI22X4 U59 ( .A0(n49), .A1(data_in[5]), .B0(data_in[7]), .B1(n48), .Y(n50)
         );
  CLKMX2X2 U60 ( .A(data_in[10]), .B(data_in[2]), .S0(n54), .Y(data_out[10])
         );
  OAI21X1 U61 ( .A0(data_in[2]), .A1(n35), .B0(n41), .Y(n43) );
  AOI21X4 U62 ( .A0(n26), .A1(data_in[4]), .B0(n25), .Y(n52) );
  CLKINVX1 U63 ( .A(data_in[1]), .Y(n31) );
  NAND2X2 U64 ( .A(data_in[1]), .B(n36), .Y(n37) );
  OR2X4 U65 ( .A(data_in[5]), .B(n23), .Y(n27) );
  NAND3X2 U66 ( .A(n33), .B(n32), .C(data_in[0]), .Y(n39) );
  NAND2X2 U67 ( .A(n43), .B(n42), .Y(n44) );
  MX2XL U68 ( .A(flag_in[0]), .B(flag_in[6]), .S0(n21), .Y(flag_out[0]) );
  MX2XL U69 ( .A(flag_in[3]), .B(flag_in[9]), .S0(n21), .Y(flag_out[3]) );
  MX2XL U70 ( .A(flag_in[6]), .B(flag_in[0]), .S0(n21), .Y(flag_out[6]) );
  MX2XL U71 ( .A(flag_in[9]), .B(flag_in[3]), .S0(n21), .Y(flag_out[9]) );
  MX2XL U72 ( .A(flag_in[4]), .B(flag_in[10]), .S0(n21), .Y(flag_out[4]) );
  MX2XL U73 ( .A(flag_in[1]), .B(flag_in[7]), .S0(n21), .Y(flag_out[1]) );
  MX2XL U74 ( .A(flag_in[5]), .B(flag_in[11]), .S0(n21), .Y(flag_out[5]) );
  MX2XL U75 ( .A(flag_in[2]), .B(flag_in[8]), .S0(n21), .Y(flag_out[2]) );
  MX2XL U76 ( .A(flag_in[10]), .B(flag_in[4]), .S0(n21), .Y(flag_out[10]) );
  MX2XL U77 ( .A(flag_in[7]), .B(flag_in[1]), .S0(n21), .Y(flag_out[7]) );
  MX2XL U78 ( .A(flag_in[11]), .B(flag_in[5]), .S0(n21), .Y(flag_out[11]) );
  MX2XL U79 ( .A(flag_in[8]), .B(flag_in[2]), .S0(n21), .Y(flag_out[8]) );
  CLKINVX1 U80 ( .A(n40), .Y(n17) );
  INVXL U81 ( .A(data_in[15]), .Y(n48) );
  NOR2X2 U82 ( .A(n1), .B(data_in[13]), .Y(n49) );
endmodule


module SortCell_3 ( data_in, flag_in, en, data_out, flag_out );
  input [15:0] data_in;
  input [11:0] flag_in;
  output [15:0] data_out;
  output [11:0] flag_out;
  input en;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45;

  NAND3X2 U1 ( .A(n25), .B(n24), .C(data_in[0]), .Y(n30) );
  CLKINVX1 U2 ( .A(data_in[8]), .Y(n24) );
  NAND2BX2 U3 ( .AN(data_in[5]), .B(data_in[13]), .Y(n20) );
  NAND2X2 U4 ( .A(data_in[14]), .B(n17), .Y(n1) );
  NOR2X2 U5 ( .A(data_in[7]), .B(n15), .Y(n9) );
  CLKINVX1 U6 ( .A(data_in[3]), .Y(n31) );
  CLKINVX1 U7 ( .A(data_in[12]), .Y(n21) );
  INVX3 U8 ( .A(data_in[6]), .Y(n17) );
  NAND2X2 U9 ( .A(n3), .B(n4), .Y(data_out[12]) );
  INVX2 U10 ( .A(n13), .Y(n5) );
  NAND2X1 U11 ( .A(data_in[11]), .B(n5), .Y(n6) );
  NAND2X1 U12 ( .A(data_in[12]), .B(n5), .Y(n3) );
  NAND3X2 U13 ( .A(n43), .B(n42), .C(n41), .Y(n44) );
  CLKINVX6 U14 ( .A(data_in[15]), .Y(n15) );
  CLKMX2X4 U15 ( .A(data_in[13]), .B(data_in[5]), .S0(n45), .Y(data_out[13])
         );
  CLKBUFX3 U16 ( .A(n45), .Y(n12) );
  CLKMX2X2 U17 ( .A(data_in[10]), .B(data_in[2]), .S0(n14), .Y(data_out[10])
         );
  OAI21X1 U18 ( .A0(data_in[2]), .A1(n33), .B0(n32), .Y(n35) );
  NOR2X1 U19 ( .A(n39), .B(data_in[13]), .Y(n40) );
  AOI21X2 U20 ( .A0(n19), .A1(data_in[4]), .B0(n18), .Y(n43) );
  NOR3X1 U21 ( .A(n39), .B(n16), .C(data_in[12]), .Y(n19) );
  MXI2X4 U22 ( .A(n27), .B(n23), .S0(n14), .Y(data_out[9]) );
  CLKMX2X2 U23 ( .A(data_in[8]), .B(data_in[0]), .S0(n14), .Y(data_out[8]) );
  INVX3 U24 ( .A(n9), .Y(n2) );
  NAND2X4 U25 ( .A(n1), .B(n2), .Y(n39) );
  NAND2X1 U26 ( .A(data_in[4]), .B(n13), .Y(n4) );
  NAND2X1 U27 ( .A(data_in[3]), .B(n13), .Y(n7) );
  NAND2X2 U28 ( .A(n6), .B(n7), .Y(data_out[11]) );
  AND2X4 U29 ( .A(en), .B(n44), .Y(n14) );
  CLKAND2X2 U30 ( .A(en), .B(n44), .Y(n45) );
  CLKAND2X2 U31 ( .A(en), .B(n44), .Y(n8) );
  AOI22X2 U32 ( .A0(n40), .A1(data_in[5]), .B0(data_in[7]), .B1(n15), .Y(n41)
         );
  INVX3 U33 ( .A(data_in[1]), .Y(n23) );
  INVX1 U34 ( .A(data_in[10]), .Y(n33) );
  AND2X4 U35 ( .A(n44), .B(en), .Y(n13) );
  NAND2X1 U36 ( .A(n35), .B(n34), .Y(n36) );
  INVX3 U37 ( .A(n34), .Y(n26) );
  MX2X1 U38 ( .A(data_in[3]), .B(data_in[11]), .S0(n12), .Y(data_out[3]) );
  NAND3X2 U39 ( .A(n30), .B(n29), .C(n28), .Y(n37) );
  AOI21X2 U40 ( .A0(data_in[2]), .A1(n33), .B0(n26), .Y(n29) );
  NAND3X2 U41 ( .A(n37), .B(n38), .C(n36), .Y(n42) );
  NOR3BX1 U42 ( .AN(n20), .B(n39), .C(n22), .Y(n38) );
  INVX1 U43 ( .A(data_in[9]), .Y(n27) );
  NOR2XL U44 ( .A(data_in[7]), .B(n15), .Y(n10) );
  MX2XL U45 ( .A(flag_in[5]), .B(flag_in[11]), .S0(n12), .Y(flag_out[5]) );
  MX2XL U46 ( .A(flag_in[2]), .B(flag_in[8]), .S0(n12), .Y(flag_out[2]) );
  MX2XL U47 ( .A(flag_in[11]), .B(flag_in[5]), .S0(n12), .Y(flag_out[11]) );
  MX2XL U48 ( .A(flag_in[8]), .B(flag_in[2]), .S0(n12), .Y(flag_out[8]) );
  INVXL U49 ( .A(n20), .Y(n16) );
  NAND2XL U50 ( .A(data_in[11]), .B(n31), .Y(n32) );
  MX2XL U51 ( .A(data_in[4]), .B(data_in[12]), .S0(n12), .Y(data_out[4]) );
  MX2XL U52 ( .A(data_in[1]), .B(data_in[9]), .S0(n12), .Y(data_out[1]) );
  CLKMX2X2 U53 ( .A(flag_in[4]), .B(flag_in[10]), .S0(n12), .Y(flag_out[4]) );
  CLKMX2X2 U54 ( .A(flag_in[1]), .B(flag_in[7]), .S0(n12), .Y(flag_out[1]) );
  CLKMX2X2 U55 ( .A(flag_in[10]), .B(flag_in[4]), .S0(n12), .Y(flag_out[10])
         );
  CLKMX2X2 U56 ( .A(flag_in[7]), .B(flag_in[1]), .S0(n12), .Y(flag_out[7]) );
  MX2XL U57 ( .A(flag_in[9]), .B(flag_in[3]), .S0(n12), .Y(flag_out[9]) );
  MX2XL U58 ( .A(flag_in[6]), .B(flag_in[0]), .S0(n12), .Y(flag_out[6]) );
  MX2XL U59 ( .A(flag_in[3]), .B(flag_in[9]), .S0(n12), .Y(flag_out[3]) );
  MX2XL U60 ( .A(flag_in[0]), .B(flag_in[6]), .S0(n12), .Y(flag_out[0]) );
  INVXL U61 ( .A(data_in[14]), .Y(n11) );
  NOR2X1 U62 ( .A(data_in[4]), .B(n21), .Y(n22) );
  NAND2X1 U63 ( .A(data_in[1]), .B(n27), .Y(n28) );
  MX2XL U64 ( .A(data_in[6]), .B(data_in[14]), .S0(n12), .Y(data_out[6]) );
  MX2XL U65 ( .A(data_in[0]), .B(data_in[8]), .S0(n12), .Y(data_out[0]) );
  NAND2X1 U66 ( .A(data_in[9]), .B(n23), .Y(n25) );
  OR2X4 U67 ( .A(data_in[11]), .B(n31), .Y(n34) );
  MXI2X2 U68 ( .A(n11), .B(n17), .S0(n13), .Y(data_out[14]) );
  MX2XL U69 ( .A(data_in[7]), .B(data_in[15]), .S0(n12), .Y(data_out[7]) );
  NOR3X1 U70 ( .A(n17), .B(data_in[14]), .C(n10), .Y(n18) );
  MX2XL U71 ( .A(data_in[2]), .B(data_in[10]), .S0(n12), .Y(data_out[2]) );
  MX2XL U72 ( .A(data_in[5]), .B(data_in[13]), .S0(n12), .Y(data_out[5]) );
  AO21X4 U73 ( .A0(n8), .A1(data_in[7]), .B0(data_in[15]), .Y(data_out[15]) );
endmodule


module SortCell_2 ( data_in, flag_in, en, data_out, flag_out );
  input [15:0] data_in;
  input [11:0] flag_in;
  output [15:0] data_out;
  output [11:0] flag_out;
  input en;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51;

  MX2X1 U1 ( .A(data_in[2]), .B(data_in[10]), .S0(n50), .Y(data_out[10]) );
  INVXL U2 ( .A(data_in[15]), .Y(n25) );
  MX2XL U3 ( .A(data_in[15]), .B(data_in[7]), .S0(n50), .Y(data_out[7]) );
  NAND2XL U4 ( .A(data_in[0]), .B(n11), .Y(n9) );
  INVX2 U5 ( .A(n50), .Y(n6) );
  INVX3 U6 ( .A(n24), .Y(n20) );
  NAND2BX2 U7 ( .AN(data_in[7]), .B(data_in[15]), .Y(n24) );
  NAND2BX2 U8 ( .AN(data_in[5]), .B(data_in[13]), .Y(n32) );
  NAND3X1 U9 ( .A(n40), .B(n39), .C(data_in[0]), .Y(n44) );
  NAND2X1 U10 ( .A(data_in[12]), .B(n31), .Y(n33) );
  NAND2X1 U11 ( .A(n9), .B(n10), .Y(data_out[8]) );
  NAND2X1 U12 ( .A(n14), .B(n50), .Y(n5) );
  CLKINVX1 U13 ( .A(data_in[13]), .Y(n15) );
  NAND3X2 U14 ( .A(n15), .B(n19), .C(data_in[5]), .Y(n26) );
  NAND2X2 U15 ( .A(data_in[10]), .B(n11), .Y(n12) );
  BUFX8 U16 ( .A(data_in[14]), .Y(n14) );
  CLKBUFX2 U17 ( .A(data_in[11]), .Y(n1) );
  MX2X1 U18 ( .A(data_in[1]), .B(data_in[9]), .S0(n50), .Y(data_out[9]) );
  INVX1 U19 ( .A(n50), .Y(n11) );
  NAND2X2 U20 ( .A(data_in[9]), .B(n6), .Y(n7) );
  MX2X1 U21 ( .A(data_in[3]), .B(n1), .S0(n50), .Y(data_out[11]) );
  NAND2X1 U22 ( .A(data_in[11]), .B(n35), .Y(n18) );
  CLKBUFX2 U23 ( .A(n50), .Y(n2) );
  INVX8 U24 ( .A(n51), .Y(n50) );
  NAND2X4 U25 ( .A(n48), .B(n49), .Y(n51) );
  NAND2X1 U26 ( .A(data_in[2]), .B(n50), .Y(n13) );
  CLKMX2X2 U27 ( .A(data_in[5]), .B(data_in[13]), .S0(n50), .Y(data_out[13])
         );
  NAND2X1 U28 ( .A(data_in[6]), .B(n3), .Y(n4) );
  NAND2X2 U29 ( .A(n4), .B(n5), .Y(data_out[14]) );
  INVXL U30 ( .A(n50), .Y(n3) );
  NAND2X1 U31 ( .A(data_in[1]), .B(n50), .Y(n8) );
  NAND2X2 U32 ( .A(n7), .B(n8), .Y(data_out[1]) );
  NAND2XL U33 ( .A(data_in[8]), .B(n50), .Y(n10) );
  NAND2X2 U34 ( .A(n12), .B(n13), .Y(data_out[2]) );
  MX2X1 U35 ( .A(data_in[4]), .B(data_in[12]), .S0(n50), .Y(data_out[12]) );
  INVX1 U36 ( .A(data_in[8]), .Y(n39) );
  INVX1 U37 ( .A(data_in[3]), .Y(n35) );
  INVX3 U38 ( .A(data_in[6]), .Y(n21) );
  CLKMX2X2 U39 ( .A(data_in[8]), .B(data_in[0]), .S0(n50), .Y(data_out[0]) );
  CLKINVX4 U40 ( .A(n42), .Y(n16) );
  MX2X1 U41 ( .A(n1), .B(data_in[3]), .S0(n50), .Y(data_out[3]) );
  NAND2X1 U42 ( .A(data_in[2]), .B(n41), .Y(n43) );
  MX2X1 U43 ( .A(data_in[12]), .B(data_in[4]), .S0(n50), .Y(data_out[4]) );
  INVX1 U44 ( .A(data_in[12]), .Y(n22) );
  NAND2X2 U45 ( .A(n47), .B(n46), .Y(n48) );
  OAI2BB1XL U46 ( .A0N(data_in[7]), .A1N(n51), .B0(n25), .Y(data_out[15]) );
  NAND4X2 U47 ( .A(n22), .B(n32), .C(n19), .D(data_in[4]), .Y(n29) );
  NAND3X2 U48 ( .A(n19), .B(n33), .C(n32), .Y(n37) );
  MX2X1 U49 ( .A(n14), .B(data_in[6]), .S0(n50), .Y(data_out[6]) );
  AOI21X4 U50 ( .A0(n14), .A1(n21), .B0(n20), .Y(n19) );
  NAND4X2 U51 ( .A(n29), .B(n28), .C(n27), .D(n26), .Y(n30) );
  CLKMX2X2 U52 ( .A(data_in[13]), .B(data_in[5]), .S0(n50), .Y(data_out[5]) );
  INVXL U53 ( .A(data_in[2]), .Y(n34) );
  NAND3X1 U54 ( .A(n24), .B(n23), .C(data_in[6]), .Y(n28) );
  NAND2X2 U55 ( .A(en), .B(n30), .Y(n49) );
  NAND2BX1 U56 ( .AN(data_in[1]), .B(data_in[9]), .Y(n40) );
  NAND2XL U57 ( .A(data_in[7]), .B(n25), .Y(n27) );
  NOR3BX2 U58 ( .AN(en), .B(n37), .C(n36), .Y(n47) );
  AOI21X2 U59 ( .A0(n17), .A1(n18), .B0(n16), .Y(n36) );
  NAND2X1 U60 ( .A(data_in[10]), .B(n34), .Y(n17) );
  NAND4X1 U61 ( .A(n45), .B(n44), .C(n43), .D(n42), .Y(n46) );
  OR2X4 U62 ( .A(data_in[11]), .B(n35), .Y(n42) );
  CLKINVX1 U63 ( .A(data_in[4]), .Y(n31) );
  NAND2X1 U64 ( .A(data_in[1]), .B(n38), .Y(n45) );
  CLKINVX1 U65 ( .A(data_in[9]), .Y(n38) );
  CLKINVX1 U66 ( .A(data_in[10]), .Y(n41) );
  CLKINVX1 U67 ( .A(n14), .Y(n23) );
  MX2X1 U68 ( .A(flag_in[10]), .B(flag_in[4]), .S0(n2), .Y(flag_out[4]) );
  MX2X1 U69 ( .A(flag_in[7]), .B(flag_in[1]), .S0(n2), .Y(flag_out[1]) );
  MX2X1 U70 ( .A(flag_in[5]), .B(flag_in[11]), .S0(n2), .Y(flag_out[11]) );
  MX2X1 U71 ( .A(flag_in[4]), .B(flag_in[10]), .S0(n2), .Y(flag_out[10]) );
  MX2X1 U72 ( .A(flag_in[3]), .B(flag_in[9]), .S0(n2), .Y(flag_out[9]) );
  MX2X1 U73 ( .A(flag_in[2]), .B(flag_in[8]), .S0(n2), .Y(flag_out[8]) );
  MX2X1 U74 ( .A(flag_in[1]), .B(flag_in[7]), .S0(n2), .Y(flag_out[7]) );
  MX2X1 U75 ( .A(flag_in[0]), .B(flag_in[6]), .S0(n2), .Y(flag_out[6]) );
  MX2X1 U76 ( .A(flag_in[6]), .B(flag_in[0]), .S0(n2), .Y(flag_out[0]) );
  MX2X1 U77 ( .A(flag_in[11]), .B(flag_in[5]), .S0(n2), .Y(flag_out[5]) );
  MX2X1 U78 ( .A(flag_in[9]), .B(flag_in[3]), .S0(n2), .Y(flag_out[3]) );
  MX2X1 U79 ( .A(flag_in[8]), .B(flag_in[2]), .S0(n2), .Y(flag_out[2]) );
endmodule


module SortCell_1 ( data_in, flag_in, en, data_out, flag_out );
  input [15:0] data_in;
  input [11:0] flag_in;
  output [15:0] data_out;
  output [11:0] flag_out;
  input en;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60;

  INVX4 U1 ( .A(n48), .Y(n41) );
  CLKINVX1 U2 ( .A(data_in[8]), .Y(n39) );
  NAND2X1 U3 ( .A(data_in[12]), .B(n15), .Y(n20) );
  INVX3 U4 ( .A(data_in[15]), .Y(n32) );
  CLKMX2X2 U5 ( .A(data_in[1]), .B(n26), .S0(n60), .Y(data_out[1]) );
  NAND2X1 U6 ( .A(n9), .B(n54), .Y(data_out[15]) );
  NAND2X4 U7 ( .A(data_in[14]), .B(n34), .Y(n10) );
  INVX1 U8 ( .A(data_in[1]), .Y(n38) );
  CLKAND2X6 U9 ( .A(n45), .B(n43), .Y(n23) );
  NOR2X8 U10 ( .A(data_in[5]), .B(n33), .Y(n30) );
  NAND2X6 U11 ( .A(n10), .B(n11), .Y(n53) );
  NAND2X2 U12 ( .A(n2), .B(data_in[0]), .Y(n3) );
  NAND3X4 U13 ( .A(n51), .B(n52), .C(n50), .Y(n57) );
  CLKAND2X12 U14 ( .A(en), .B(n59), .Y(n31) );
  AND2X8 U15 ( .A(n59), .B(en), .Y(n60) );
  NAND3X4 U16 ( .A(n58), .B(n57), .C(n56), .Y(n59) );
  INVX3 U17 ( .A(data_in[10]), .Y(n47) );
  NOR3X4 U18 ( .A(n53), .B(n30), .C(n37), .Y(n52) );
  NAND3X2 U19 ( .A(n40), .B(n39), .C(data_in[0]), .Y(n45) );
  CLKINVX1 U20 ( .A(n60), .Y(n12) );
  INVX3 U21 ( .A(n60), .Y(n15) );
  NOR3X1 U22 ( .A(n34), .B(data_in[14]), .C(n27), .Y(n35) );
  CLKBUFX3 U23 ( .A(n60), .Y(n1) );
  NAND2X1 U24 ( .A(data_in[8]), .B(n31), .Y(n4) );
  NAND2X2 U25 ( .A(n3), .B(n4), .Y(data_out[0]) );
  CLKINVX1 U26 ( .A(n31), .Y(n2) );
  CLKBUFX3 U27 ( .A(data_in[11]), .Y(n5) );
  INVXL U28 ( .A(n31), .Y(n6) );
  CLKINVX1 U29 ( .A(n6), .Y(n7) );
  NAND2X1 U30 ( .A(n38), .B(data_in[9]), .Y(n40) );
  MX2XL U31 ( .A(data_in[2]), .B(data_in[10]), .S0(n60), .Y(data_out[2]) );
  INVXL U32 ( .A(data_in[3]), .Y(n24) );
  NAND2X2 U33 ( .A(n49), .B(n48), .Y(n50) );
  NAND2X4 U34 ( .A(n23), .B(n44), .Y(n51) );
  CLKINVX1 U35 ( .A(n54), .Y(n8) );
  NAND2X2 U36 ( .A(n20), .B(n21), .Y(data_out[12]) );
  CLKMX2X3 U37 ( .A(n5), .B(n29), .S0(n31), .Y(data_out[11]) );
  NAND2X1 U38 ( .A(n13), .B(n14), .Y(data_out[7]) );
  INVX3 U39 ( .A(n27), .Y(n11) );
  NOR2X2 U40 ( .A(n53), .B(data_in[13]), .Y(n55) );
  NAND2XL U41 ( .A(n60), .B(data_in[7]), .Y(n9) );
  CLKINVX3 U42 ( .A(data_in[3]), .Y(n25) );
  NOR2X4 U43 ( .A(data_in[7]), .B(n32), .Y(n27) );
  NAND2X1 U44 ( .A(n12), .B(data_in[7]), .Y(n13) );
  NAND2XL U45 ( .A(n8), .B(n60), .Y(n14) );
  MX2X2 U46 ( .A(data_in[8]), .B(data_in[0]), .S0(n31), .Y(data_out[8]) );
  NAND2X2 U47 ( .A(n26), .B(n12), .Y(n16) );
  NAND2X1 U48 ( .A(data_in[1]), .B(n60), .Y(n17) );
  NAND2X2 U49 ( .A(n16), .B(n17), .Y(data_out[9]) );
  INVXL U50 ( .A(n42), .Y(n26) );
  NAND2X2 U51 ( .A(data_in[10]), .B(n15), .Y(n18) );
  NAND2X1 U52 ( .A(data_in[2]), .B(n60), .Y(n19) );
  NAND2X2 U53 ( .A(n19), .B(n18), .Y(data_out[10]) );
  NAND2X1 U54 ( .A(data_in[4]), .B(n60), .Y(n21) );
  OR2X8 U55 ( .A(n25), .B(data_in[11]), .Y(n48) );
  MX2X1 U56 ( .A(data_in[5]), .B(data_in[13]), .S0(n31), .Y(data_out[5]) );
  MX2X1 U57 ( .A(data_in[13]), .B(data_in[5]), .S0(n31), .Y(data_out[13]) );
  NAND2X1 U58 ( .A(data_in[1]), .B(n42), .Y(n43) );
  OAI21X2 U59 ( .A0(data_in[2]), .A1(n47), .B0(n46), .Y(n49) );
  INVX3 U60 ( .A(data_in[4]), .Y(n22) );
  AOI21X4 U61 ( .A0(data_in[2]), .A1(n47), .B0(n41), .Y(n44) );
  INVX3 U62 ( .A(data_in[13]), .Y(n33) );
  CLKAND2X8 U63 ( .A(n22), .B(data_in[12]), .Y(n37) );
  CLKMX2X2 U64 ( .A(data_in[14]), .B(data_in[6]), .S0(n60), .Y(data_out[14])
         );
  CLKMX2X2 U65 ( .A(data_in[4]), .B(data_in[12]), .S0(n31), .Y(data_out[4]) );
  MX2XL U66 ( .A(flag_in[2]), .B(flag_in[8]), .S0(n7), .Y(flag_out[2]) );
  MX2XL U67 ( .A(flag_in[5]), .B(flag_in[11]), .S0(n1), .Y(flag_out[5]) );
  MX2XL U68 ( .A(flag_in[8]), .B(flag_in[2]), .S0(n7), .Y(flag_out[8]) );
  MX2XL U69 ( .A(flag_in[11]), .B(flag_in[5]), .S0(n1), .Y(flag_out[11]) );
  MX2XL U70 ( .A(flag_in[0]), .B(flag_in[6]), .S0(n7), .Y(flag_out[0]) );
  MX2XL U71 ( .A(flag_in[3]), .B(flag_in[9]), .S0(n1), .Y(flag_out[3]) );
  MX2XL U72 ( .A(flag_in[6]), .B(flag_in[0]), .S0(n7), .Y(flag_out[6]) );
  MX2XL U73 ( .A(flag_in[9]), .B(flag_in[3]), .S0(n1), .Y(flag_out[9]) );
  MX2XL U74 ( .A(flag_in[10]), .B(flag_in[4]), .S0(n1), .Y(flag_out[10]) );
  MX2XL U75 ( .A(flag_in[7]), .B(flag_in[1]), .S0(n7), .Y(flag_out[7]) );
  MX2XL U76 ( .A(flag_in[4]), .B(flag_in[10]), .S0(n60), .Y(flag_out[4]) );
  MX2XL U77 ( .A(flag_in[1]), .B(flag_in[7]), .S0(n1), .Y(flag_out[1]) );
  NAND2X1 U78 ( .A(data_in[11]), .B(n24), .Y(n46) );
  INVX1 U79 ( .A(data_in[9]), .Y(n42) );
  MX2X1 U80 ( .A(data_in[6]), .B(data_in[14]), .S0(n31), .Y(data_out[6]) );
  INVX3 U81 ( .A(data_in[6]), .Y(n34) );
  INVXL U82 ( .A(n25), .Y(n28) );
  CLKBUFX2 U83 ( .A(n28), .Y(n29) );
  CLKMX2X2 U84 ( .A(n29), .B(n5), .S0(n31), .Y(data_out[3]) );
  INVXL U85 ( .A(data_in[15]), .Y(n54) );
  AOI22X2 U86 ( .A0(n55), .A1(data_in[5]), .B0(data_in[7]), .B1(n54), .Y(n56)
         );
  AOI21X2 U87 ( .A0(n36), .A1(data_in[4]), .B0(n35), .Y(n58) );
  NOR3X2 U88 ( .A(n53), .B(n30), .C(data_in[12]), .Y(n36) );
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
  wire   N19, N28, N117, N118, N119, N120, N121, N122, N123, N124, N125, N126,
         N127, N128, N129, N130, N131, N132, N133, N134, N135, N136, N137,
         N138, N139, N140, N155, N156, N157, N158, N159, N160, N161, N162,
         N163, N164, N165, N166, N167, N168, N169, N170, N171, N172, N173,
         N174, N175, N176, N177, N178, N179, N180, N181, N182, N183, N184,
         N185, N186, N196, N197, N198, n36, n37, n38, n39, n59, n60, n62, n64,
         n65, n221, n222, n223, n224, n225, n226, n279, n280, n281, n282, n283,
         n284, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n61, n63,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
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
         n216, n217, n218, n219, n220, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363;
  wire   [47:0] data;
  wire   [35:0] flag;
  wire   [4:0] en;
  wire   [47:0] mid_data;
  wire   [35:0] mid_flag;
  wire   [39:8] sorting_data;
  wire   [29:6] sorting_flag;
  wire   [2:0] count;
  assign num_reg[2] = en[2];
  assign done = N19;
  assign N28 = num[0];

  EDFFX4 \num_reg_reg[2]  ( .D(num[2]), .E(n363), .CK(clk), .Q(en[2]), .QN(n36) );
  EDFFX4 \num_reg_reg[0]  ( .D(N28), .E(n363), .CK(clk), .Q(num_reg[0]), .QN(
        n38) );
  SortCell_0 Cell0 ( .data_in(data[47:32]), .flag_in(flag[35:24]), .en(en[0]), 
        .data_out(mid_data[47:32]), .flag_out(mid_flag[35:24]) );
  SortCell_4 Cell2 ( .data_in(data[31:16]), .flag_in(flag[23:12]), .en(en[2]), 
        .data_out(mid_data[31:16]), .flag_out(mid_flag[23:12]) );
  SortCell_3 Cell4 ( .data_in(data[15:0]), .flag_in(flag[11:0]), .en(n81), 
        .data_out(mid_data[15:0]), .flag_out(mid_flag[11:0]) );
  SortCell_2 Cell1 ( .data_in(mid_data[39:24]), .flag_in(mid_flag[29:18]), 
        .en(en[1]), .data_out(sorting_data[39:24]), .flag_out(
        sorting_flag[29:18]) );
  SortCell_1 Cell3 ( .data_in(mid_data[23:8]), .flag_in(mid_flag[17:6]), .en(
        en[3]), .data_out(sorting_data[23:8]), .flag_out(sorting_flag[17:6])
         );
  DFFQX1 \sorted_data_reg[24]  ( .D(sorting_data[24]), .CK(clk), .Q(
        sorted_data[24]) );
  DFFQX1 \sorted_data_reg[25]  ( .D(sorting_data[25]), .CK(clk), .Q(
        sorted_data[25]) );
  DFFHQX4 \data_reg[21]  ( .D(N168), .CK(clk), .Q(data[21]) );
  DFFHQX4 \data_reg[31]  ( .D(N178), .CK(clk), .Q(data[31]) );
  DFFQX1 \count_reg[1]  ( .D(N197), .CK(clk), .Q(count[1]) );
  DFFQX1 \count_reg[0]  ( .D(N196), .CK(clk), .Q(count[0]) );
  DFFX1 \count_reg[2]  ( .D(N198), .CK(clk), .QN(n39) );
  DFFQX1 \sorted_data_reg[47]  ( .D(mid_data[47]), .CK(clk), .Q(
        sorted_data[47]) );
  DFFQX1 \sorted_data_reg[46]  ( .D(mid_data[46]), .CK(clk), .Q(
        sorted_data[46]) );
  DFFQX1 \sorted_data_reg[4]  ( .D(mid_data[4]), .CK(clk), .Q(sorted_data[4])
         );
  DFFQX1 \sorted_data_reg[5]  ( .D(mid_data[5]), .CK(clk), .Q(sorted_data[5])
         );
  DFFQX1 \sorted_data_reg[6]  ( .D(mid_data[6]), .CK(clk), .Q(sorted_data[6])
         );
  DFFQX1 \sorted_data_reg[7]  ( .D(mid_data[7]), .CK(clk), .Q(sorted_data[7])
         );
  DFFQXL \flag_reg[0]  ( .D(n353), .CK(clk), .Q(flag[0]) );
  DFFQXL \flag_reg[1]  ( .D(n352), .CK(clk), .Q(flag[1]) );
  DFFQXL \flag_reg[2]  ( .D(n351), .CK(clk), .Q(flag[2]) );
  DFFQXL \flag_reg[3]  ( .D(n350), .CK(clk), .Q(flag[3]) );
  DFFQXL \flag_reg[4]  ( .D(n349), .CK(clk), .Q(flag[4]) );
  DFFQXL \flag_reg[5]  ( .D(n348), .CK(clk), .Q(flag[5]) );
  DFFQXL \flag_reg[30]  ( .D(n337), .CK(clk), .Q(flag[30]) );
  DFFQXL \flag_reg[31]  ( .D(n336), .CK(clk), .Q(flag[31]) );
  DFFQXL \flag_reg[32]  ( .D(n335), .CK(clk), .Q(flag[32]) );
  DFFQXL \flag_reg[33]  ( .D(n334), .CK(clk), .Q(flag[33]) );
  DFFQXL \flag_reg[34]  ( .D(n339), .CK(clk), .Q(flag[34]) );
  DFFQXL \flag_reg[35]  ( .D(n338), .CK(clk), .Q(flag[35]) );
  DFFQX1 \sorted_data_reg[38]  ( .D(sorting_data[38]), .CK(clk), .Q(
        sorted_data[38]) );
  DFFQX1 \sorted_data_reg[30]  ( .D(sorting_data[30]), .CK(clk), .Q(
        sorted_data[30]) );
  DFFQX1 \sorted_data_reg[23]  ( .D(sorting_data[23]), .CK(clk), .Q(
        sorted_data[23]) );
  DFFQX1 \sorted_data_reg[22]  ( .D(sorting_data[22]), .CK(clk), .Q(
        sorted_data[22]) );
  DFFQX1 \sorted_data_reg[15]  ( .D(sorting_data[15]), .CK(clk), .Q(
        sorted_data[15]) );
  DFFQX1 \sorted_data_reg[14]  ( .D(n5), .CK(clk), .Q(sorted_data[14]) );
  DFFQX1 \sorted_flag_reg[34]  ( .D(mid_flag[34]), .CK(clk), .Q(
        sorted_flag[34]) );
  DFFQX1 \sorted_flag_reg[35]  ( .D(mid_flag[35]), .CK(clk), .Q(
        sorted_flag[35]) );
  DFFQX1 \sorted_flag_reg[30]  ( .D(mid_flag[30]), .CK(clk), .Q(
        sorted_flag[30]) );
  DFFQX1 \sorted_flag_reg[31]  ( .D(mid_flag[31]), .CK(clk), .Q(
        sorted_flag[31]) );
  DFFQX1 \sorted_flag_reg[32]  ( .D(mid_flag[32]), .CK(clk), .Q(
        sorted_flag[32]) );
  DFFQX1 \sorted_flag_reg[33]  ( .D(mid_flag[33]), .CK(clk), .Q(
        sorted_flag[33]) );
  DFFQX1 \sorted_data_reg[42]  ( .D(mid_data[42]), .CK(clk), .Q(
        sorted_data[42]) );
  DFFQX1 \sorted_data_reg[43]  ( .D(mid_data[43]), .CK(clk), .Q(
        sorted_data[43]) );
  DFFQX1 \sorted_data_reg[44]  ( .D(mid_data[44]), .CK(clk), .Q(
        sorted_data[44]) );
  DFFQX1 \sorted_data_reg[45]  ( .D(mid_data[45]), .CK(clk), .Q(
        sorted_data[45]) );
  DFFQX1 \sorted_data_reg[41]  ( .D(mid_data[41]), .CK(clk), .Q(
        sorted_data[41]) );
  DFFQX1 \sorted_data_reg[0]  ( .D(mid_data[0]), .CK(clk), .Q(sorted_data[0])
         );
  DFFQX1 \sorted_data_reg[1]  ( .D(mid_data[1]), .CK(clk), .Q(sorted_data[1])
         );
  DFFQX1 \sorted_data_reg[20]  ( .D(n4), .CK(clk), .Q(sorted_data[20]) );
  DFFQX1 \sorted_data_reg[21]  ( .D(n3), .CK(clk), .Q(sorted_data[21]) );
  DFFQX1 \sorted_data_reg[18]  ( .D(n2), .CK(clk), .Q(sorted_data[18]) );
  DFFQX1 \sorted_data_reg[40]  ( .D(mid_data[40]), .CK(clk), .Q(
        sorted_data[40]) );
  DFFQX1 \sorted_flag_reg[0]  ( .D(mid_flag[0]), .CK(clk), .Q(sorted_flag[0])
         );
  DFFQX1 \sorted_flag_reg[1]  ( .D(mid_flag[1]), .CK(clk), .Q(sorted_flag[1])
         );
  DFFQX1 \sorted_flag_reg[2]  ( .D(mid_flag[2]), .CK(clk), .Q(sorted_flag[2])
         );
  DFFQX1 \sorted_flag_reg[3]  ( .D(mid_flag[3]), .CK(clk), .Q(sorted_flag[3])
         );
  DFFQX1 \sorted_flag_reg[4]  ( .D(mid_flag[4]), .CK(clk), .Q(sorted_flag[4])
         );
  DFFQX1 \sorted_flag_reg[5]  ( .D(mid_flag[5]), .CK(clk), .Q(sorted_flag[5])
         );
  DFFQX1 \sorted_data_reg[2]  ( .D(mid_data[2]), .CK(clk), .Q(sorted_data[2])
         );
  DFFQX1 \sorted_data_reg[3]  ( .D(mid_data[3]), .CK(clk), .Q(sorted_data[3])
         );
  DFFQX1 \sorted_data_reg[8]  ( .D(sorting_data[8]), .CK(clk), .Q(
        sorted_data[8]) );
  DFFQX1 \sorted_data_reg[9]  ( .D(sorting_data[9]), .CK(clk), .Q(
        sorted_data[9]) );
  DFFQX1 \sorted_data_reg[32]  ( .D(sorting_data[32]), .CK(clk), .Q(
        sorted_data[32]) );
  DFFQX1 \sorted_data_reg[33]  ( .D(sorting_data[33]), .CK(clk), .Q(
        sorted_data[33]) );
  DFFQX1 \sorted_data_reg[17]  ( .D(n1), .CK(clk), .Q(sorted_data[17]) );
  DFFQX1 \sorted_data_reg[34]  ( .D(sorting_data[34]), .CK(clk), .Q(
        sorted_data[34]) );
  DFFQX1 \sorted_data_reg[10]  ( .D(sorting_data[10]), .CK(clk), .Q(
        sorted_data[10]) );
  DFFQX1 \sorted_data_reg[26]  ( .D(sorting_data[26]), .CK(clk), .Q(
        sorted_data[26]) );
  DFFQX1 \sorted_data_reg[27]  ( .D(sorting_data[27]), .CK(clk), .Q(
        sorted_data[27]) );
  DFFQX1 \sorted_data_reg[35]  ( .D(sorting_data[35]), .CK(clk), .Q(
        sorted_data[35]) );
  DFFQX1 \sorted_data_reg[36]  ( .D(sorting_data[36]), .CK(clk), .Q(
        sorted_data[36]) );
  DFFQX1 \sorted_data_reg[37]  ( .D(sorting_data[37]), .CK(clk), .Q(
        sorted_data[37]) );
  DFFQX1 \sorted_data_reg[11]  ( .D(sorting_data[11]), .CK(clk), .Q(
        sorted_data[11]) );
  DFFQX1 \sorted_data_reg[12]  ( .D(sorting_data[12]), .CK(clk), .Q(
        sorted_data[12]) );
  DFFQX1 \sorted_data_reg[13]  ( .D(sorting_data[13]), .CK(clk), .Q(
        sorted_data[13]) );
  DFFQX1 \data_reg[32]  ( .D(N179), .CK(clk), .Q(data[32]) );
  DFFQX1 \sorted_data_reg[19]  ( .D(sorting_data[19]), .CK(clk), .Q(
        sorted_data[19]) );
  DFFQXL \sorted_data_reg[16]  ( .D(sorting_data[16]), .CK(clk), .Q(
        sorted_data[16]) );
  DFFQX1 \data_reg[40]  ( .D(n341), .CK(clk), .Q(data[40]) );
  DFFQX1 \sorted_data_reg[28]  ( .D(sorting_data[28]), .CK(clk), .Q(
        sorted_data[28]) );
  DFFQX1 \sorted_data_reg[31]  ( .D(sorting_data[31]), .CK(clk), .Q(
        sorted_data[31]) );
  DFFQXL \sorted_data_reg[29]  ( .D(sorting_data[29]), .CK(clk), .Q(
        sorted_data[29]) );
  DFFQXL \sorted_flag_reg[12]  ( .D(sorting_flag[12]), .CK(clk), .Q(
        sorted_flag[12]) );
  DFFQXL \sorted_flag_reg[13]  ( .D(sorting_flag[13]), .CK(clk), .Q(
        sorted_flag[13]) );
  DFFQXL \sorted_flag_reg[14]  ( .D(sorting_flag[14]), .CK(clk), .Q(
        sorted_flag[14]) );
  DFFQXL \sorted_flag_reg[15]  ( .D(sorting_flag[15]), .CK(clk), .Q(
        sorted_flag[15]) );
  DFFQXL \sorted_flag_reg[16]  ( .D(sorting_flag[16]), .CK(clk), .Q(
        sorted_flag[16]) );
  DFFQXL \sorted_flag_reg[17]  ( .D(sorting_flag[17]), .CK(clk), .Q(
        sorted_flag[17]) );
  DFFQXL \sorted_data_reg[39]  ( .D(sorting_data[39]), .CK(clk), .Q(
        sorted_data[39]) );
  DFFQXL \sorted_flag_reg[24]  ( .D(sorting_flag[24]), .CK(clk), .Q(
        sorted_flag[24]) );
  DFFQXL \sorted_flag_reg[25]  ( .D(sorting_flag[25]), .CK(clk), .Q(
        sorted_flag[25]) );
  DFFQXL \sorted_flag_reg[26]  ( .D(sorting_flag[26]), .CK(clk), .Q(
        sorted_flag[26]) );
  DFFQXL \sorted_flag_reg[27]  ( .D(sorting_flag[27]), .CK(clk), .Q(
        sorted_flag[27]) );
  DFFQXL \sorted_flag_reg[28]  ( .D(sorting_flag[28]), .CK(clk), .Q(
        sorted_flag[28]) );
  DFFQXL \sorted_flag_reg[29]  ( .D(sorting_flag[29]), .CK(clk), .Q(
        sorted_flag[29]) );
  DFFQXL \sorted_flag_reg[6]  ( .D(sorting_flag[6]), .CK(clk), .Q(
        sorted_flag[6]) );
  DFFQXL \sorted_flag_reg[7]  ( .D(sorting_flag[7]), .CK(clk), .Q(
        sorted_flag[7]) );
  DFFQXL \sorted_flag_reg[8]  ( .D(sorting_flag[8]), .CK(clk), .Q(
        sorted_flag[8]) );
  DFFQXL \sorted_flag_reg[9]  ( .D(sorting_flag[9]), .CK(clk), .Q(
        sorted_flag[9]) );
  DFFQXL \sorted_flag_reg[10]  ( .D(sorting_flag[10]), .CK(clk), .Q(
        sorted_flag[10]) );
  DFFQXL \sorted_flag_reg[11]  ( .D(sorting_flag[11]), .CK(clk), .Q(
        sorted_flag[11]) );
  DFFQXL \sorted_flag_reg[18]  ( .D(sorting_flag[18]), .CK(clk), .Q(
        sorted_flag[18]) );
  DFFQXL \sorted_flag_reg[19]  ( .D(sorting_flag[19]), .CK(clk), .Q(
        sorted_flag[19]) );
  DFFQXL \sorted_flag_reg[20]  ( .D(sorting_flag[20]), .CK(clk), .Q(
        sorted_flag[20]) );
  DFFQXL \sorted_flag_reg[21]  ( .D(sorting_flag[21]), .CK(clk), .Q(
        sorted_flag[21]) );
  DFFQXL \sorted_flag_reg[22]  ( .D(sorting_flag[22]), .CK(clk), .Q(
        sorted_flag[22]) );
  DFFQXL \sorted_flag_reg[23]  ( .D(sorting_flag[23]), .CK(clk), .Q(
        sorted_flag[23]) );
  DFFQXL \flag_reg[6]  ( .D(N117), .CK(clk), .Q(flag[6]) );
  DFFQXL \flag_reg[7]  ( .D(N118), .CK(clk), .Q(flag[7]) );
  DFFQXL \flag_reg[8]  ( .D(N119), .CK(clk), .Q(flag[8]) );
  DFFQXL \flag_reg[9]  ( .D(N120), .CK(clk), .Q(flag[9]) );
  DFFQXL \flag_reg[10]  ( .D(N121), .CK(clk), .Q(flag[10]) );
  DFFQXL \flag_reg[11]  ( .D(N122), .CK(clk), .Q(flag[11]) );
  DFFQXL \flag_reg[12]  ( .D(N123), .CK(clk), .Q(flag[12]) );
  DFFQXL \flag_reg[13]  ( .D(N124), .CK(clk), .Q(flag[13]) );
  DFFQXL \flag_reg[14]  ( .D(N125), .CK(clk), .Q(flag[14]) );
  DFFQXL \flag_reg[15]  ( .D(N126), .CK(clk), .Q(flag[15]) );
  DFFQXL \flag_reg[16]  ( .D(N127), .CK(clk), .Q(flag[16]) );
  DFFQXL \flag_reg[17]  ( .D(N128), .CK(clk), .Q(flag[17]) );
  DFFQXL \flag_reg[18]  ( .D(N129), .CK(clk), .Q(flag[18]) );
  DFFQXL \flag_reg[19]  ( .D(N130), .CK(clk), .Q(flag[19]) );
  DFFQXL \flag_reg[20]  ( .D(N131), .CK(clk), .Q(flag[20]) );
  DFFQXL \flag_reg[21]  ( .D(N132), .CK(clk), .Q(flag[21]) );
  DFFQXL \flag_reg[22]  ( .D(N133), .CK(clk), .Q(flag[22]) );
  DFFQXL \flag_reg[23]  ( .D(N134), .CK(clk), .Q(flag[23]) );
  DFFQXL \flag_reg[24]  ( .D(N135), .CK(clk), .Q(flag[24]) );
  DFFQXL \flag_reg[25]  ( .D(N136), .CK(clk), .Q(flag[25]) );
  DFFQXL \flag_reg[26]  ( .D(N137), .CK(clk), .Q(flag[26]) );
  DFFQXL \flag_reg[27]  ( .D(N138), .CK(clk), .Q(flag[27]) );
  DFFQXL \flag_reg[28]  ( .D(N139), .CK(clk), .Q(flag[28]) );
  DFFQXL \flag_reg[29]  ( .D(N140), .CK(clk), .Q(flag[29]) );
  DFFHQX4 \data_reg[7]  ( .D(n354), .CK(clk), .Q(data[7]) );
  DFFQX2 \data_reg[9]  ( .D(N156), .CK(clk), .Q(data[9]) );
  DFFQX2 \data_reg[25]  ( .D(N172), .CK(clk), .Q(data[25]) );
  DFFHQX4 \data_reg[35]  ( .D(N182), .CK(clk), .Q(data[35]) );
  DFFHQX4 \data_reg[3]  ( .D(n358), .CK(clk), .Q(data[3]) );
  DFFHQX4 \data_reg[5]  ( .D(n356), .CK(clk), .Q(data[5]) );
  DFFQX4 \data_reg[45]  ( .D(n344), .CK(clk), .Q(data[45]) );
  DFFHQX4 \data_reg[15]  ( .D(N162), .CK(clk), .Q(data[15]) );
  DFFHQX4 \data_reg[19]  ( .D(N166), .CK(clk), .Q(data[19]) );
  DFFQX2 \data_reg[2]  ( .D(n359), .CK(clk), .Q(data[2]) );
  DFFHQX4 \data_reg[26]  ( .D(N173), .CK(clk), .Q(data[26]) );
  DFFHQX4 \data_reg[37]  ( .D(N184), .CK(clk), .Q(data[37]) );
  DFFHQX8 \data_reg[23]  ( .D(N170), .CK(clk), .Q(data[23]) );
  DFFHQX4 \data_reg[29]  ( .D(N176), .CK(clk), .Q(data[29]) );
  DFFHQX2 \data_reg[42]  ( .D(n347), .CK(clk), .Q(data[42]) );
  DFFQX4 \data_reg[11]  ( .D(N158), .CK(clk), .Q(data[11]) );
  DFFQX4 \data_reg[10]  ( .D(N157), .CK(clk), .Q(data[10]) );
  EDFFX2 \num_reg_reg[1]  ( .D(num[1]), .E(n363), .CK(clk), .Q(num_reg[1]), 
        .QN(n37) );
  DFFQX4 \data_reg[13]  ( .D(N160), .CK(clk), .Q(data[13]) );
  DFFHQX4 \data_reg[22]  ( .D(N169), .CK(clk), .Q(data[22]) );
  DFFHQX2 \data_reg[47]  ( .D(n342), .CK(clk), .Q(data[47]) );
  DFFQX4 \data_reg[28]  ( .D(N175), .CK(clk), .Q(data[28]) );
  DFFHQX2 \data_reg[27]  ( .D(N174), .CK(clk), .Q(data[27]) );
  DFFHQX2 \data_reg[43]  ( .D(n346), .CK(clk), .Q(data[43]) );
  DFFHQX2 \data_reg[6]  ( .D(n355), .CK(clk), .Q(data[6]) );
  DFFQX4 \data_reg[17]  ( .D(N164), .CK(clk), .Q(data[17]) );
  DFFQX4 \data_reg[20]  ( .D(N167), .CK(clk), .Q(data[20]) );
  DFFQX2 \data_reg[33]  ( .D(N180), .CK(clk), .Q(data[33]) );
  DFFQX2 \data_reg[24]  ( .D(N171), .CK(clk), .Q(data[24]) );
  DFFHQX2 \data_reg[39]  ( .D(N186), .CK(clk), .Q(data[39]) );
  DFFQX2 \data_reg[1]  ( .D(n360), .CK(clk), .Q(data[1]) );
  DFFQX2 \data_reg[8]  ( .D(N155), .CK(clk), .Q(data[8]) );
  DFFQX2 \data_reg[41]  ( .D(n340), .CK(clk), .Q(data[41]) );
  DFFQX2 \data_reg[34]  ( .D(N181), .CK(clk), .Q(data[34]) );
  DFFQX4 \data_reg[18]  ( .D(N165), .CK(clk), .Q(data[18]) );
  DFFQX4 \data_reg[30]  ( .D(N177), .CK(clk), .Q(data[30]) );
  DFFQX2 \data_reg[14]  ( .D(N161), .CK(clk), .Q(data[14]) );
  DFFQX2 \data_reg[16]  ( .D(N163), .CK(clk), .Q(data[16]) );
  DFFQX4 \data_reg[44]  ( .D(n345), .CK(clk), .Q(data[44]) );
  DFFQX2 \data_reg[46]  ( .D(n343), .CK(clk), .Q(data[46]) );
  DFFQX2 \data_reg[4]  ( .D(n357), .CK(clk), .Q(data[4]) );
  DFFQX2 \data_reg[12]  ( .D(N159), .CK(clk), .Q(data[12]) );
  DFFQX2 \data_reg[36]  ( .D(N183), .CK(clk), .Q(data[36]) );
  DFFQX1 \data_reg[0]  ( .D(n361), .CK(clk), .Q(data[0]) );
  DFFQX4 \data_reg[38]  ( .D(N185), .CK(clk), .Q(data[38]) );
  CLKINVX2 U3 ( .A(sorting_data[18]), .Y(n43) );
  NAND2X2 U4 ( .A(n54), .B(n55), .Y(n57) );
  CLKINVX3 U5 ( .A(sorting_data[20]), .Y(n55) );
  NAND2X1 U6 ( .A(n296), .B(n295), .Y(n300) );
  AOI22XL U7 ( .A0(update_data[7]), .A1(n75), .B0(sorted_data[23]), .B1(n78), 
        .Y(n95) );
  CLKAND2X2 U8 ( .A(n74), .B(update_data[7]), .Y(n71) );
  NAND2X2 U9 ( .A(n291), .B(n290), .Y(n292) );
  NOR2X1 U10 ( .A(n285), .B(n278), .Y(n287) );
  NAND2X1 U11 ( .A(n46), .B(n47), .Y(n49) );
  CLKINVX1 U12 ( .A(sorting_data[25]), .Y(n58) );
  CLKINVX1 U13 ( .A(data[20]), .Y(n54) );
  XNOR2X1 U14 ( .A(sorting_data[27]), .B(data[27]), .Y(n316) );
  NAND2X1 U15 ( .A(n198), .B(n199), .Y(n301) );
  NAND2X1 U16 ( .A(n12), .B(n13), .Y(n298) );
  NOR3X4 U17 ( .A(n292), .B(n293), .C(n294), .Y(n327) );
  OR2X4 U18 ( .A(n234), .B(n233), .Y(N162) );
  NAND2X2 U19 ( .A(sorting_data[26]), .B(data[26]), .Y(n40) );
  AOI22XL U20 ( .A0(update_data[7]), .A1(n73), .B0(sorted_data[39]), .B1(n80), 
        .Y(n83) );
  INVXL U21 ( .A(data[23]), .Y(n14) );
  NAND2X4 U22 ( .A(n195), .B(n305), .Y(n312) );
  NOR4X4 U23 ( .A(n313), .B(n312), .C(n311), .D(n310), .Y(n325) );
  CLKINVX3 U24 ( .A(sorting_data[17]), .Y(n27) );
  CLKINVX3 U25 ( .A(sorting_data[16]), .Y(n19) );
  NAND2X2 U26 ( .A(n309), .B(n308), .Y(n310) );
  NAND2X2 U27 ( .A(n42), .B(n43), .Y(n45) );
  XNOR2X1 U28 ( .A(data[9]), .B(sorting_data[9]), .Y(n251) );
  CLKINVX1 U29 ( .A(n27), .Y(n1) );
  NAND2X1 U30 ( .A(data[20]), .B(sorting_data[20]), .Y(n56) );
  NOR2BX1 U31 ( .AN(en[2]), .B(n37), .Y(n81) );
  NAND2X1 U32 ( .A(data[23]), .B(sorting_data[23]), .Y(n16) );
  NAND2X4 U33 ( .A(n307), .B(n306), .Y(n311) );
  NAND2X2 U34 ( .A(n40), .B(n41), .Y(n306) );
  NAND2X1 U35 ( .A(sorting_data[25]), .B(data[25]), .Y(n63) );
  NOR2X4 U36 ( .A(n323), .B(n322), .Y(n324) );
  NAND2X2 U37 ( .A(n58), .B(n61), .Y(n66) );
  NOR2X4 U38 ( .A(n300), .B(n299), .Y(n326) );
  NAND2X2 U39 ( .A(n52), .B(n53), .Y(n305) );
  INVXL U40 ( .A(n43), .Y(n2) );
  NAND2X2 U41 ( .A(n57), .B(n56), .Y(n257) );
  INVXL U42 ( .A(n47), .Y(n3) );
  CLKINVX4 U43 ( .A(n194), .Y(n195) );
  CLKINVX1 U44 ( .A(n55), .Y(n4) );
  NAND2X1 U45 ( .A(data[18]), .B(sorting_data[18]), .Y(n44) );
  INVXL U46 ( .A(n23), .Y(n5) );
  OR2XL U47 ( .A(update_en), .B(n210), .Y(n362) );
  NAND2X2 U48 ( .A(n45), .B(n44), .Y(n256) );
  NAND2XL U49 ( .A(sorting_data[37]), .B(data[37]), .Y(n8) );
  NAND2X1 U50 ( .A(n6), .B(n7), .Y(n9) );
  NAND2X2 U51 ( .A(n8), .B(n9), .Y(n318) );
  INVX1 U52 ( .A(sorting_data[37]), .Y(n6) );
  INVXL U53 ( .A(data[37]), .Y(n7) );
  NAND2XL U54 ( .A(data[35]), .B(sorting_data[35]), .Y(n12) );
  NAND2X1 U55 ( .A(n10), .B(n11), .Y(n13) );
  INVXL U56 ( .A(data[35]), .Y(n10) );
  INVX1 U57 ( .A(sorting_data[35]), .Y(n11) );
  NAND2X2 U58 ( .A(n14), .B(n15), .Y(n17) );
  NAND2X4 U59 ( .A(n16), .B(n17), .Y(n307) );
  CLKINVX3 U60 ( .A(sorting_data[23]), .Y(n15) );
  NAND2X1 U61 ( .A(data[16]), .B(sorting_data[16]), .Y(n20) );
  NAND2X2 U62 ( .A(n18), .B(n19), .Y(n21) );
  NAND2X2 U63 ( .A(n20), .B(n21), .Y(n303) );
  CLKINVX1 U64 ( .A(data[16]), .Y(n18) );
  NAND2X2 U65 ( .A(n304), .B(n303), .Y(n194) );
  NAND2XL U66 ( .A(data[14]), .B(sorting_data[14]), .Y(n24) );
  NAND2X1 U67 ( .A(n22), .B(n23), .Y(n25) );
  NAND2X1 U68 ( .A(n24), .B(n25), .Y(n320) );
  INVXL U69 ( .A(data[14]), .Y(n22) );
  CLKINVX1 U70 ( .A(sorting_data[14]), .Y(n23) );
  NAND2X1 U71 ( .A(data[17]), .B(sorting_data[17]), .Y(n28) );
  NAND2X2 U72 ( .A(n26), .B(n27), .Y(n29) );
  NAND2X2 U73 ( .A(n28), .B(n29), .Y(n304) );
  CLKINVX1 U74 ( .A(data[17]), .Y(n26) );
  CLKINVX2 U75 ( .A(sorting_data[26]), .Y(n34) );
  NAND2XL U76 ( .A(data[38]), .B(sorting_data[38]), .Y(n32) );
  NAND2X1 U77 ( .A(n30), .B(n31), .Y(n33) );
  NAND2X1 U78 ( .A(n32), .B(n33), .Y(n319) );
  INVXL U79 ( .A(data[38]), .Y(n30) );
  CLKINVX1 U80 ( .A(sorting_data[38]), .Y(n31) );
  NAND2X2 U81 ( .A(n34), .B(n35), .Y(n41) );
  INVXL U82 ( .A(data[26]), .Y(n35) );
  CLKINVX3 U83 ( .A(data[18]), .Y(n42) );
  NAND2XL U84 ( .A(data[21]), .B(sorting_data[21]), .Y(n48) );
  NAND2X2 U85 ( .A(n48), .B(n49), .Y(n252) );
  INVXL U86 ( .A(data[21]), .Y(n46) );
  INVX1 U87 ( .A(sorting_data[21]), .Y(n47) );
  NAND2XL U88 ( .A(data[15]), .B(sorting_data[15]), .Y(n52) );
  NAND2X1 U89 ( .A(n50), .B(n51), .Y(n53) );
  INVXL U90 ( .A(data[15]), .Y(n50) );
  CLKINVX1 U91 ( .A(sorting_data[15]), .Y(n51) );
  NAND2XL U92 ( .A(n184), .B(n185), .Y(N178) );
  XNOR2X4 U93 ( .A(sorting_data[19]), .B(n193), .Y(n254) );
  XNOR2X4 U94 ( .A(sorting_data[8]), .B(data[8]), .Y(n255) );
  XNOR2XL U95 ( .A(data[41]), .B(mid_data[41]), .Y(n264) );
  XNOR2X1 U96 ( .A(data[29]), .B(sorting_data[29]), .Y(n317) );
  XNOR2X1 U97 ( .A(data[3]), .B(mid_data[3]), .Y(n261) );
  XNOR2X2 U98 ( .A(sorting_data[24]), .B(data[24]), .Y(n308) );
  XNOR2X2 U99 ( .A(sorting_data[30]), .B(data[30]), .Y(n286) );
  AO22X4 U100 ( .A0(update_data[7]), .A1(n76), .B0(sorted_data[15]), .B1(n79), 
        .Y(n233) );
  NAND2XL U101 ( .A(data[39]), .B(sorting_data[39]), .Y(n198) );
  NAND2X2 U102 ( .A(n63), .B(n66), .Y(n309) );
  INVXL U103 ( .A(data[25]), .Y(n61) );
  INVX1 U104 ( .A(sorting_data[28]), .Y(n68) );
  AOI22XL U105 ( .A0(n75), .A1(update_data[3]), .B0(sorted_data[19]), .B1(n78), 
        .Y(n187) );
  NAND2X2 U106 ( .A(n302), .B(n301), .Y(n313) );
  NAND3X1 U107 ( .A(n261), .B(n260), .C(n212), .Y(n268) );
  AOI22X1 U108 ( .A0(n76), .A1(update_data[3]), .B0(sorted_data[11]), .B1(n79), 
        .Y(n155) );
  AOI22X1 U109 ( .A0(n74), .A1(update_data[5]), .B0(sorted_data[29]), .B1(n77), 
        .Y(n89) );
  AOI22X1 U110 ( .A0(unsort_data[18]), .A1(n209), .B0(n2), .B1(n203), .Y(n144)
         );
  NAND2XL U111 ( .A(n104), .B(n105), .Y(N182) );
  CLKINVX1 U112 ( .A(n362), .Y(n331) );
  NOR2X1 U113 ( .A(n241), .B(n237), .Y(n74) );
  NOR4X4 U114 ( .A(n269), .B(n268), .C(n267), .D(n266), .Y(n288) );
  NAND2X2 U115 ( .A(n297), .B(n298), .Y(n299) );
  AOI22XL U116 ( .A0(unsort_data[22]), .A1(n209), .B0(sorting_data[22]), .B1(
        n203), .Y(n96) );
  AOI22XL U117 ( .A0(n75), .A1(update_data[6]), .B0(sorted_data[22]), .B1(n78), 
        .Y(n97) );
  AOI22XL U118 ( .A0(n76), .A1(update_data[6]), .B0(sorted_data[14]), .B1(n79), 
        .Y(n99) );
  AOI22XL U119 ( .A0(n74), .A1(update_data[6]), .B0(sorted_data[30]), .B1(n77), 
        .Y(n87) );
  NAND2XL U120 ( .A(n84), .B(n85), .Y(N185) );
  AOI22XL U121 ( .A0(update_data[6]), .A1(n73), .B0(sorted_data[38]), .B1(n80), 
        .Y(n85) );
  AO21XL U122 ( .A0(num_reg[1]), .A1(num_reg[0]), .B0(n238), .Y(en[1]) );
  XNOR2XL U123 ( .A(data[43]), .B(mid_data[43]), .Y(n270) );
  XNOR2XL U124 ( .A(data[1]), .B(mid_data[1]), .Y(n262) );
  XNOR2XL U125 ( .A(data[2]), .B(mid_data[2]), .Y(n263) );
  XNOR2XL U126 ( .A(data[45]), .B(mid_data[45]), .Y(n277) );
  XNOR2XL U127 ( .A(data[7]), .B(mid_data[7]), .Y(n275) );
  XNOR2XL U128 ( .A(data[6]), .B(mid_data[6]), .Y(n272) );
  XNOR2XL U129 ( .A(data[44]), .B(mid_data[44]), .Y(n273) );
  XNOR2XL U130 ( .A(data[42]), .B(mid_data[42]), .Y(n271) );
  XNOR2XL U131 ( .A(data[4]), .B(mid_data[4]), .Y(n260) );
  NAND2XL U132 ( .A(n114), .B(n115), .Y(N173) );
  AOI22XL U133 ( .A0(n74), .A1(update_data[2]), .B0(sorted_data[26]), .B1(n77), 
        .Y(n115) );
  AOI22XL U134 ( .A0(n75), .A1(update_data[5]), .B0(sorted_data[21]), .B1(n78), 
        .Y(n191) );
  AOI22XL U135 ( .A0(unsort_data[13]), .A1(n209), .B0(sorting_data[13]), .B1(
        n202), .Y(n150) );
  AOI22XL U136 ( .A0(n76), .A1(update_data[5]), .B0(sorted_data[13]), .B1(n79), 
        .Y(n151) );
  XNOR2XL U137 ( .A(data[0]), .B(mid_data[0]), .Y(n265) );
  AOI22XL U138 ( .A0(n74), .A1(update_data[4]), .B0(sorted_data[28]), .B1(n77), 
        .Y(n91) );
  AOI22XL U139 ( .A0(n74), .A1(update_data[1]), .B0(sorted_data[25]), .B1(n77), 
        .Y(n93) );
  AOI22XL U140 ( .A0(n74), .A1(update_data[3]), .B0(sorted_data[27]), .B1(n77), 
        .Y(n113) );
  AOI22XL U141 ( .A0(n74), .A1(update_data[0]), .B0(sorted_data[24]), .B1(n77), 
        .Y(n117) );
  NAND2XL U142 ( .A(n136), .B(n137), .Y(N131) );
  NAND2XL U143 ( .A(n138), .B(n139), .Y(N130) );
  NAND2XL U144 ( .A(n130), .B(n131), .Y(N134) );
  NAND2XL U145 ( .A(n132), .B(n133), .Y(N133) );
  NAND2XL U146 ( .A(n140), .B(n141), .Y(N129) );
  NAND2XL U147 ( .A(n134), .B(n135), .Y(N132) );
  AOI22XL U148 ( .A0(n75), .A1(update_data[1]), .B0(sorted_data[17]), .B1(n78), 
        .Y(n147) );
  AOI22XL U149 ( .A0(n75), .A1(update_data[2]), .B0(sorted_data[18]), .B1(n78), 
        .Y(n145) );
  AOI22XL U150 ( .A0(n75), .A1(update_data[0]), .B0(sorted_data[16]), .B1(n78), 
        .Y(n149) );
  AOI22XL U151 ( .A0(n75), .A1(update_data[4]), .B0(sorted_data[20]), .B1(n78), 
        .Y(n143) );
  NAND2XL U152 ( .A(n162), .B(n163), .Y(N127) );
  NAND2XL U153 ( .A(n168), .B(n169), .Y(N124) );
  NAND2XL U154 ( .A(n164), .B(n165), .Y(N126) );
  NAND2XL U155 ( .A(n170), .B(n171), .Y(N123) );
  NAND2XL U156 ( .A(n160), .B(n161), .Y(N128) );
  NAND2XL U157 ( .A(n166), .B(n167), .Y(N125) );
  AOI22XL U158 ( .A0(n76), .A1(update_data[1]), .B0(sorted_data[9]), .B1(n79), 
        .Y(n189) );
  AOI22XL U159 ( .A0(n76), .A1(update_data[0]), .B0(sorted_data[8]), .B1(n79), 
        .Y(n159) );
  AOI22XL U160 ( .A0(unsort_data[12]), .A1(n208), .B0(sorting_data[12]), .B1(
        n202), .Y(n152) );
  AOI22XL U161 ( .A0(n76), .A1(update_data[4]), .B0(sorted_data[12]), .B1(n79), 
        .Y(n153) );
  NAND2XL U162 ( .A(n174), .B(n175), .Y(N121) );
  NAND2XL U163 ( .A(n180), .B(n181), .Y(N118) );
  NAND2XL U164 ( .A(n182), .B(n183), .Y(N117) );
  NAND2XL U165 ( .A(n176), .B(n177), .Y(N120) );
  AOI22XL U166 ( .A0(n76), .A1(update_data[2]), .B0(sorted_data[10]), .B1(n79), 
        .Y(n157) );
  NAND2XL U167 ( .A(n172), .B(n173), .Y(N122) );
  NAND2XL U168 ( .A(n178), .B(n179), .Y(N119) );
  AOI22XL U169 ( .A0(update_data[5]), .A1(n73), .B0(sorted_data[37]), .B1(n80), 
        .Y(n101) );
  AOI22XL U170 ( .A0(update_data[3]), .A1(n73), .B0(sorted_data[35]), .B1(n80), 
        .Y(n105) );
  AOI22XL U171 ( .A0(update_data[4]), .A1(n73), .B0(sorted_data[36]), .B1(n80), 
        .Y(n103) );
  AOI22XL U172 ( .A0(update_data[1]), .A1(n73), .B0(sorted_data[33]), .B1(n80), 
        .Y(n109) );
  NAND2XL U173 ( .A(n110), .B(n111), .Y(N179) );
  AOI22XL U174 ( .A0(update_data[0]), .A1(n73), .B0(sorted_data[32]), .B1(n80), 
        .Y(n111) );
  AOI22XL U175 ( .A0(update_data[2]), .A1(n73), .B0(sorted_data[34]), .B1(n80), 
        .Y(n107) );
  NAND2XL U176 ( .A(n126), .B(n127), .Y(N136) );
  NAND2XL U177 ( .A(n118), .B(n119), .Y(N140) );
  NAND2XL U178 ( .A(n122), .B(n123), .Y(N138) );
  NAND2XL U179 ( .A(n120), .B(n121), .Y(N139) );
  NAND2XL U180 ( .A(n124), .B(n125), .Y(N137) );
  NAND2XL U181 ( .A(n128), .B(n129), .Y(N135) );
  AO22XL U182 ( .A0(mid_data[46]), .A1(n201), .B0(sorted_data[46]), .B1(n332), 
        .Y(n248) );
  AO22XL U183 ( .A0(mid_data[45]), .A1(n201), .B0(sorted_data[45]), .B1(n332), 
        .Y(n247) );
  AO22XL U184 ( .A0(mid_data[44]), .A1(n200), .B0(sorted_data[44]), .B1(n332), 
        .Y(n246) );
  AO22XL U185 ( .A0(mid_data[7]), .A1(n200), .B0(sorted_data[7]), .B1(n332), 
        .Y(n232) );
  AO22XL U186 ( .A0(mid_data[6]), .A1(n200), .B0(sorted_data[6]), .B1(n332), 
        .Y(n231) );
  AO22XL U187 ( .A0(mid_data[5]), .A1(n200), .B0(sorted_data[5]), .B1(n332), 
        .Y(n230) );
  AO22XL U188 ( .A0(mid_data[4]), .A1(n200), .B0(sorted_data[4]), .B1(n332), 
        .Y(n229) );
  AO22XL U189 ( .A0(mid_data[3]), .A1(n200), .B0(sorted_data[3]), .B1(n332), 
        .Y(n228) );
  AO22XL U190 ( .A0(mid_data[2]), .A1(n200), .B0(sorted_data[2]), .B1(n332), 
        .Y(n227) );
  INVX1 U191 ( .A(n36), .Y(n238) );
  NAND2X1 U192 ( .A(n69), .B(n70), .Y(n302) );
  NAND2XL U193 ( .A(data[28]), .B(sorting_data[28]), .Y(n69) );
  NAND2X1 U194 ( .A(n67), .B(n68), .Y(n70) );
  INVXL U195 ( .A(data[28]), .Y(n67) );
  AND2X2 U196 ( .A(sorted_data[31]), .B(n77), .Y(n72) );
  NOR2X1 U197 ( .A(n71), .B(n72), .Y(n185) );
  CLKINVX1 U198 ( .A(n213), .Y(n210) );
  CLKBUFX3 U199 ( .A(n217), .Y(n213) );
  CLKINVX1 U200 ( .A(n215), .Y(n208) );
  CLKBUFX3 U201 ( .A(n216), .Y(n215) );
  CLKINVX1 U202 ( .A(n214), .Y(n209) );
  CLKBUFX3 U203 ( .A(n216), .Y(n214) );
  CLKINVX1 U204 ( .A(n212), .Y(n211) );
  CLKINVX1 U205 ( .A(n363), .Y(n59) );
  CLKBUFX3 U206 ( .A(n217), .Y(n212) );
  CLKINVX1 U207 ( .A(n207), .Y(n217) );
  CLKINVX1 U208 ( .A(n207), .Y(n216) );
  OR2X1 U209 ( .A(n210), .B(n332), .Y(n363) );
  CLKBUFX3 U210 ( .A(set), .Y(n207) );
  CLKBUFX3 U211 ( .A(n331), .Y(n201) );
  CLKBUFX3 U212 ( .A(n331), .Y(n200) );
  CLKBUFX3 U213 ( .A(n331), .Y(n205) );
  CLKBUFX3 U214 ( .A(n331), .Y(n204) );
  CLKBUFX3 U215 ( .A(n331), .Y(n202) );
  CLKBUFX3 U216 ( .A(n331), .Y(n203) );
  CLKBUFX3 U217 ( .A(n331), .Y(n206) );
  CLKINVX1 U218 ( .A(n241), .Y(n332) );
  NOR2X1 U219 ( .A(n241), .B(n240), .Y(n73) );
  NOR2X1 U220 ( .A(n241), .B(n236), .Y(n75) );
  NOR2X1 U221 ( .A(n241), .B(n218), .Y(n76) );
  NOR2BX1 U222 ( .AN(n237), .B(n241), .Y(n77) );
  NOR2BX1 U223 ( .AN(n236), .B(n241), .Y(n78) );
  NOR2BX1 U224 ( .AN(n218), .B(n241), .Y(n79) );
  NOR2BX1 U225 ( .AN(n240), .B(n241), .Y(n80) );
  OR2X1 U226 ( .A(n333), .B(n239), .Y(n237) );
  OR2X1 U227 ( .A(n333), .B(n235), .Y(n218) );
  CLKINVX1 U228 ( .A(n329), .Y(n330) );
  NAND2BX1 U229 ( .AN(n210), .B(update_en), .Y(n241) );
  NAND4X1 U230 ( .A(n277), .B(n276), .C(n275), .D(n274), .Y(n278) );
  XNOR2X1 U231 ( .A(data[46]), .B(mid_data[46]), .Y(n274) );
  XNOR2X1 U232 ( .A(data[11]), .B(sorting_data[11]), .Y(n250) );
  XNOR2X1 U233 ( .A(data[12]), .B(sorting_data[12]), .Y(n314) );
  XNOR2X1 U234 ( .A(sorting_data[36]), .B(data[36]), .Y(n321) );
  NAND4X1 U235 ( .A(n273), .B(n272), .C(n271), .D(n270), .Y(n285) );
  NAND4X2 U236 ( .A(n253), .B(n252), .C(n251), .D(n250), .Y(n294) );
  XNOR2X1 U237 ( .A(data[22]), .B(sorting_data[22]), .Y(n253) );
  XNOR2X1 U238 ( .A(data[32]), .B(sorting_data[32]), .Y(n290) );
  NAND4X2 U239 ( .A(n315), .B(n316), .C(n317), .D(n314), .Y(n323) );
  NAND4X2 U240 ( .A(n321), .B(n319), .C(n320), .D(n318), .Y(n322) );
  XNOR2X1 U241 ( .A(data[13]), .B(sorting_data[13]), .Y(n315) );
  OAI2BB2XL U242 ( .B0(num[1]), .B1(n59), .A0N(n205), .A1N(n65), .Y(N197) );
  AO21X1 U243 ( .A0(count[0]), .A1(count[1]), .B0(n330), .Y(n65) );
  XNOR2X1 U244 ( .A(data[33]), .B(sorting_data[33]), .Y(n295) );
  XNOR2X1 U245 ( .A(data[34]), .B(sorting_data[34]), .Y(n296) );
  NAND2X1 U246 ( .A(n263), .B(n262), .Y(n267) );
  OAI2BB2XL U247 ( .B0(n60), .B1(n59), .A0N(n62), .A1N(n205), .Y(N198) );
  OAI21XL U248 ( .A0(n330), .A1(n39), .B0(n64), .Y(n62) );
  XOR2X1 U249 ( .A(num[2]), .B(num[1]), .Y(n60) );
  NAND2X1 U250 ( .A(n265), .B(n264), .Y(n266) );
  NAND2X1 U251 ( .A(n259), .B(n258), .Y(n269) );
  XNOR2X1 U252 ( .A(data[40]), .B(mid_data[40]), .Y(n259) );
  XNOR2XL U253 ( .A(data[5]), .B(mid_data[5]), .Y(n258) );
  OR3X2 U254 ( .A(num_reg[1]), .B(n238), .C(n38), .Y(en[0]) );
  XNOR2X1 U255 ( .A(data[10]), .B(sorting_data[10]), .Y(n297) );
  AO21X1 U256 ( .A0(unsort_data[44]), .A1(n210), .B0(n246), .Y(n345) );
  AO21X1 U257 ( .A0(unsort_data[42]), .A1(n210), .B0(n244), .Y(n347) );
  AO22X1 U258 ( .A0(mid_data[42]), .A1(n201), .B0(sorted_data[42]), .B1(n332), 
        .Y(n244) );
  AO21X1 U259 ( .A0(unsort_data[40]), .A1(n210), .B0(n242), .Y(n341) );
  AO22X1 U260 ( .A0(mid_data[40]), .A1(n200), .B0(sorted_data[40]), .B1(n332), 
        .Y(n242) );
  AO21X1 U261 ( .A0(unsort_data[7]), .A1(n210), .B0(n232), .Y(n354) );
  AO21X1 U262 ( .A0(unsort_data[6]), .A1(n210), .B0(n231), .Y(n355) );
  AO21X1 U263 ( .A0(unsort_data[5]), .A1(n210), .B0(n230), .Y(n356) );
  AO21X1 U264 ( .A0(unsort_data[4]), .A1(n210), .B0(n229), .Y(n357) );
  AO21X1 U265 ( .A0(unsort_data[3]), .A1(n210), .B0(n228), .Y(n358) );
  AO21X1 U266 ( .A0(unsort_data[2]), .A1(n210), .B0(n227), .Y(n359) );
  AO21X1 U267 ( .A0(unsort_data[1]), .A1(n210), .B0(n220), .Y(n360) );
  AO22X1 U268 ( .A0(mid_data[1]), .A1(n200), .B0(sorted_data[1]), .B1(n332), 
        .Y(n220) );
  AO21X1 U269 ( .A0(unsort_data[0]), .A1(n210), .B0(n219), .Y(n361) );
  AO22X1 U270 ( .A0(mid_data[0]), .A1(n200), .B0(sorted_data[0]), .B1(n332), 
        .Y(n219) );
  AO21X1 U271 ( .A0(unsort_data[46]), .A1(n209), .B0(n248), .Y(n343) );
  AO21X1 U272 ( .A0(unsort_data[45]), .A1(n208), .B0(n247), .Y(n344) );
  AO21X1 U273 ( .A0(unsort_data[43]), .A1(n209), .B0(n245), .Y(n346) );
  AO22X1 U274 ( .A0(mid_data[43]), .A1(n200), .B0(sorted_data[43]), .B1(n332), 
        .Y(n245) );
  AO21X1 U275 ( .A0(unsort_data[41]), .A1(n209), .B0(n243), .Y(n340) );
  AO22X1 U276 ( .A0(mid_data[41]), .A1(n201), .B0(sorted_data[41]), .B1(n332), 
        .Y(n243) );
  AO21X1 U277 ( .A0(unsort_data[47]), .A1(n208), .B0(n249), .Y(n342) );
  AO22X1 U278 ( .A0(mid_data[47]), .A1(n200), .B0(sorted_data[47]), .B1(n332), 
        .Y(n249) );
  NAND2X1 U279 ( .A(n82), .B(n83), .Y(N186) );
  AOI22XL U280 ( .A0(unsort_data[39]), .A1(n208), .B0(sorting_data[39]), .B1(
        n205), .Y(n82) );
  AOI22XL U281 ( .A0(unsort_data[38]), .A1(n208), .B0(sorting_data[38]), .B1(
        n205), .Y(n84) );
  NAND2X1 U282 ( .A(n86), .B(n87), .Y(N177) );
  AOI22XL U283 ( .A0(unsort_data[30]), .A1(n208), .B0(sorting_data[30]), .B1(
        n204), .Y(n86) );
  NAND2X1 U284 ( .A(n88), .B(n89), .Y(N176) );
  AOI22XL U285 ( .A0(unsort_data[29]), .A1(n211), .B0(sorting_data[29]), .B1(
        n204), .Y(n88) );
  NAND2X1 U286 ( .A(n90), .B(n91), .Y(N175) );
  AOI22XL U287 ( .A0(unsort_data[28]), .A1(n209), .B0(sorting_data[28]), .B1(
        n204), .Y(n90) );
  NAND2X1 U288 ( .A(n92), .B(n93), .Y(N172) );
  AOI22XL U289 ( .A0(unsort_data[25]), .A1(n208), .B0(sorting_data[25]), .B1(
        n203), .Y(n92) );
  NAND2X1 U290 ( .A(n94), .B(n95), .Y(N170) );
  AOI22XL U291 ( .A0(unsort_data[23]), .A1(n209), .B0(sorting_data[23]), .B1(
        n203), .Y(n94) );
  NAND2X1 U292 ( .A(n96), .B(n97), .Y(N169) );
  NAND2X1 U293 ( .A(n98), .B(n99), .Y(N161) );
  AOI22XL U294 ( .A0(unsort_data[14]), .A1(n211), .B0(n5), .B1(n202), .Y(n98)
         );
  NAND2X1 U295 ( .A(n100), .B(n101), .Y(N184) );
  AOI22XL U296 ( .A0(unsort_data[37]), .A1(n211), .B0(sorting_data[37]), .B1(
        n205), .Y(n100) );
  NAND2X1 U297 ( .A(n102), .B(n103), .Y(N183) );
  AOI22XL U298 ( .A0(unsort_data[36]), .A1(n208), .B0(sorting_data[36]), .B1(
        n205), .Y(n102) );
  AOI22XL U299 ( .A0(unsort_data[35]), .A1(n209), .B0(sorting_data[35]), .B1(
        n205), .Y(n104) );
  NAND2X1 U300 ( .A(n106), .B(n107), .Y(N181) );
  AOI22XL U301 ( .A0(unsort_data[34]), .A1(n209), .B0(sorting_data[34]), .B1(
        n205), .Y(n106) );
  NAND2X1 U302 ( .A(n108), .B(n109), .Y(N180) );
  AOI22XL U303 ( .A0(unsort_data[33]), .A1(n208), .B0(n205), .B1(
        sorting_data[33]), .Y(n108) );
  AOI22XL U304 ( .A0(unsort_data[32]), .A1(n209), .B0(sorting_data[32]), .B1(
        n205), .Y(n110) );
  NAND2X1 U305 ( .A(n112), .B(n113), .Y(N174) );
  AOI22XL U306 ( .A0(unsort_data[27]), .A1(n209), .B0(sorting_data[27]), .B1(
        n204), .Y(n112) );
  AOI22XL U307 ( .A0(unsort_data[26]), .A1(n211), .B0(sorting_data[26]), .B1(
        n204), .Y(n114) );
  NAND2X1 U308 ( .A(n116), .B(n117), .Y(N171) );
  AOI22XL U309 ( .A0(unsort_data[24]), .A1(n209), .B0(sorting_data[24]), .B1(
        n203), .Y(n116) );
  AOI22X1 U310 ( .A0(unsort_flag[29]), .A1(n211), .B0(sorting_flag[29]), .B1(
        n204), .Y(n118) );
  AOI22X1 U311 ( .A0(update_flag[5]), .A1(n73), .B0(sorted_flag[29]), .B1(n80), 
        .Y(n119) );
  AOI22X1 U312 ( .A0(unsort_flag[28]), .A1(n208), .B0(sorting_flag[28]), .B1(
        n204), .Y(n120) );
  AOI22X1 U313 ( .A0(update_flag[4]), .A1(n73), .B0(sorted_flag[28]), .B1(n80), 
        .Y(n121) );
  AOI22X1 U314 ( .A0(unsort_flag[27]), .A1(n209), .B0(sorting_flag[27]), .B1(
        n204), .Y(n122) );
  AOI22X1 U315 ( .A0(update_flag[3]), .A1(n73), .B0(sorted_flag[27]), .B1(n80), 
        .Y(n123) );
  AOI22X1 U316 ( .A0(unsort_flag[26]), .A1(n209), .B0(sorting_flag[26]), .B1(
        n204), .Y(n124) );
  AOI22X1 U317 ( .A0(update_flag[2]), .A1(n73), .B0(sorted_flag[26]), .B1(n80), 
        .Y(n125) );
  AOI22X1 U318 ( .A0(unsort_flag[25]), .A1(n208), .B0(sorting_flag[25]), .B1(
        n204), .Y(n126) );
  AOI22X1 U319 ( .A0(update_flag[1]), .A1(n73), .B0(sorted_flag[25]), .B1(n80), 
        .Y(n127) );
  AOI22X1 U320 ( .A0(unsort_flag[24]), .A1(n211), .B0(sorting_flag[24]), .B1(
        n204), .Y(n128) );
  AOI22X1 U321 ( .A0(update_flag[0]), .A1(n73), .B0(sorted_flag[24]), .B1(n80), 
        .Y(n129) );
  AOI22X1 U322 ( .A0(unsort_flag[23]), .A1(n209), .B0(sorting_flag[23]), .B1(
        n203), .Y(n130) );
  AOI22X1 U323 ( .A0(n74), .A1(update_flag[5]), .B0(sorted_flag[23]), .B1(n77), 
        .Y(n131) );
  AOI22X1 U324 ( .A0(unsort_flag[22]), .A1(n209), .B0(sorting_flag[22]), .B1(
        n203), .Y(n132) );
  AOI22X1 U325 ( .A0(n74), .A1(update_flag[4]), .B0(sorted_flag[22]), .B1(n77), 
        .Y(n133) );
  AOI22X1 U326 ( .A0(unsort_flag[21]), .A1(n209), .B0(sorting_flag[21]), .B1(
        n203), .Y(n134) );
  AOI22X1 U327 ( .A0(n74), .A1(update_flag[3]), .B0(sorted_flag[21]), .B1(n77), 
        .Y(n135) );
  AOI22X1 U328 ( .A0(unsort_flag[20]), .A1(n209), .B0(sorting_flag[20]), .B1(
        n202), .Y(n136) );
  AOI22X1 U329 ( .A0(n74), .A1(update_flag[2]), .B0(sorted_flag[20]), .B1(n77), 
        .Y(n137) );
  AOI22X1 U330 ( .A0(unsort_flag[19]), .A1(n209), .B0(sorting_flag[19]), .B1(
        n202), .Y(n138) );
  AOI22X1 U331 ( .A0(n74), .A1(update_flag[1]), .B0(sorted_flag[19]), .B1(n77), 
        .Y(n139) );
  AOI22X1 U332 ( .A0(unsort_flag[18]), .A1(n208), .B0(sorting_flag[18]), .B1(
        n202), .Y(n140) );
  AOI22X1 U333 ( .A0(n74), .A1(update_flag[0]), .B0(sorted_flag[18]), .B1(n77), 
        .Y(n141) );
  NAND2X1 U334 ( .A(n142), .B(n143), .Y(N167) );
  AOI22XL U335 ( .A0(unsort_data[20]), .A1(n209), .B0(n4), .B1(n203), .Y(n142)
         );
  NAND2X1 U336 ( .A(n144), .B(n145), .Y(N165) );
  NAND2X1 U337 ( .A(n146), .B(n147), .Y(N164) );
  AOI22XL U338 ( .A0(unsort_data[17]), .A1(n209), .B0(n1), .B1(n203), .Y(n146)
         );
  NAND2X1 U339 ( .A(n148), .B(n149), .Y(N163) );
  AOI22XL U340 ( .A0(unsort_data[16]), .A1(n209), .B0(sorting_data[16]), .B1(
        n203), .Y(n148) );
  NAND2X1 U341 ( .A(n150), .B(n151), .Y(N160) );
  NAND2X1 U342 ( .A(n152), .B(n153), .Y(N159) );
  NAND2X1 U343 ( .A(n154), .B(n155), .Y(N158) );
  AOI22XL U344 ( .A0(unsort_data[11]), .A1(n208), .B0(sorting_data[11]), .B1(
        n201), .Y(n154) );
  NAND2X1 U345 ( .A(n156), .B(n157), .Y(N157) );
  AOI22XL U346 ( .A0(unsort_data[10]), .A1(n208), .B0(sorting_data[10]), .B1(
        n201), .Y(n156) );
  NAND2X1 U347 ( .A(n158), .B(n159), .Y(N155) );
  AOI22XL U348 ( .A0(unsort_data[8]), .A1(n208), .B0(n201), .B1(
        sorting_data[8]), .Y(n158) );
  AOI22X1 U349 ( .A0(unsort_flag[17]), .A1(n209), .B0(sorting_flag[17]), .B1(
        n202), .Y(n160) );
  AOI22X1 U350 ( .A0(n75), .A1(update_flag[5]), .B0(sorted_flag[17]), .B1(n78), 
        .Y(n161) );
  AOI22X1 U351 ( .A0(unsort_flag[16]), .A1(n208), .B0(sorting_flag[16]), .B1(
        n202), .Y(n162) );
  AOI22X1 U352 ( .A0(n75), .A1(update_flag[4]), .B0(sorted_flag[16]), .B1(n78), 
        .Y(n163) );
  AOI22X1 U353 ( .A0(unsort_flag[15]), .A1(n211), .B0(sorting_flag[15]), .B1(
        n202), .Y(n164) );
  AOI22X1 U354 ( .A0(n75), .A1(update_flag[3]), .B0(sorted_flag[15]), .B1(n78), 
        .Y(n165) );
  AOI22X1 U355 ( .A0(unsort_flag[14]), .A1(n209), .B0(sorting_flag[14]), .B1(
        n202), .Y(n166) );
  AOI22X1 U356 ( .A0(n75), .A1(update_flag[2]), .B0(sorted_flag[14]), .B1(n78), 
        .Y(n167) );
  AOI22X1 U357 ( .A0(unsort_flag[13]), .A1(n211), .B0(sorting_flag[13]), .B1(
        n202), .Y(n168) );
  AOI22X1 U358 ( .A0(n75), .A1(update_flag[1]), .B0(sorted_flag[13]), .B1(n78), 
        .Y(n169) );
  AOI22X1 U359 ( .A0(unsort_flag[12]), .A1(n209), .B0(sorting_flag[12]), .B1(
        n202), .Y(n170) );
  AOI22X1 U360 ( .A0(n75), .A1(update_flag[0]), .B0(sorted_flag[12]), .B1(n78), 
        .Y(n171) );
  AOI22X1 U361 ( .A0(unsort_flag[11]), .A1(n208), .B0(sorting_flag[11]), .B1(
        n201), .Y(n172) );
  AOI22X1 U362 ( .A0(n76), .A1(update_flag[5]), .B0(sorted_flag[11]), .B1(n79), 
        .Y(n173) );
  AOI22X1 U363 ( .A0(unsort_flag[10]), .A1(n208), .B0(sorting_flag[10]), .B1(
        n201), .Y(n174) );
  AOI22X1 U364 ( .A0(n76), .A1(update_flag[4]), .B0(sorted_flag[10]), .B1(n79), 
        .Y(n175) );
  AOI22X1 U365 ( .A0(unsort_flag[9]), .A1(n208), .B0(sorting_flag[9]), .B1(
        n201), .Y(n176) );
  AOI22X1 U366 ( .A0(n76), .A1(update_flag[3]), .B0(sorted_flag[9]), .B1(n79), 
        .Y(n177) );
  AOI22X1 U367 ( .A0(unsort_flag[8]), .A1(n208), .B0(sorting_flag[8]), .B1(
        n201), .Y(n178) );
  AOI22X1 U368 ( .A0(n76), .A1(update_flag[2]), .B0(sorted_flag[8]), .B1(n79), 
        .Y(n179) );
  AOI22X1 U369 ( .A0(unsort_flag[7]), .A1(n208), .B0(sorting_flag[7]), .B1(
        n201), .Y(n180) );
  AOI22X1 U370 ( .A0(n76), .A1(update_flag[1]), .B0(sorted_flag[7]), .B1(n79), 
        .Y(n181) );
  AOI22X1 U371 ( .A0(unsort_flag[6]), .A1(n208), .B0(sorting_flag[6]), .B1(
        n204), .Y(n182) );
  AOI22X1 U372 ( .A0(n76), .A1(update_flag[0]), .B0(sorted_flag[6]), .B1(n79), 
        .Y(n183) );
  AOI22XL U373 ( .A0(unsort_data[31]), .A1(n208), .B0(n204), .B1(
        sorting_data[31]), .Y(n184) );
  NAND2X1 U374 ( .A(n186), .B(n187), .Y(N166) );
  AOI22XL U375 ( .A0(unsort_data[19]), .A1(n208), .B0(sorting_data[19]), .B1(
        n203), .Y(n186) );
  NAND2X1 U376 ( .A(n188), .B(n189), .Y(N156) );
  AOI22XL U377 ( .A0(unsort_data[9]), .A1(n208), .B0(sorting_data[9]), .B1(
        n201), .Y(n188) );
  NAND2X1 U378 ( .A(n190), .B(n191), .Y(N168) );
  AOI22XL U379 ( .A0(unsort_data[21]), .A1(n211), .B0(n3), .B1(n203), .Y(n190)
         );
  CLKINVX1 U380 ( .A(n221), .Y(n338) );
  AOI222XL U381 ( .A0(unsort_flag[35]), .A1(n211), .B0(mid_flag[35]), .B1(n205), .C0(sorted_flag[35]), .C1(n332), .Y(n221) );
  CLKINVX1 U382 ( .A(n222), .Y(n339) );
  AOI222XL U383 ( .A0(unsort_flag[34]), .A1(n211), .B0(mid_flag[34]), .B1(n205), .C0(sorted_flag[34]), .C1(n332), .Y(n222) );
  CLKINVX1 U384 ( .A(n223), .Y(n334) );
  AOI222XL U385 ( .A0(unsort_flag[33]), .A1(n211), .B0(mid_flag[33]), .B1(n205), .C0(sorted_flag[33]), .C1(n332), .Y(n223) );
  CLKINVX1 U386 ( .A(n224), .Y(n335) );
  AOI222XL U387 ( .A0(unsort_flag[32]), .A1(n211), .B0(mid_flag[32]), .B1(n205), .C0(sorted_flag[32]), .C1(n332), .Y(n224) );
  CLKINVX1 U388 ( .A(n225), .Y(n336) );
  AOI222XL U389 ( .A0(unsort_flag[31]), .A1(n211), .B0(mid_flag[31]), .B1(n205), .C0(sorted_flag[31]), .C1(n332), .Y(n225) );
  CLKINVX1 U390 ( .A(n226), .Y(n337) );
  AOI222XL U391 ( .A0(unsort_flag[30]), .A1(n211), .B0(mid_flag[30]), .B1(n205), .C0(sorted_flag[30]), .C1(n332), .Y(n226) );
  CLKINVX1 U392 ( .A(n279), .Y(n348) );
  AOI222XL U393 ( .A0(unsort_flag[5]), .A1(n211), .B0(mid_flag[5]), .B1(n206), 
        .C0(sorted_flag[5]), .C1(n332), .Y(n279) );
  CLKINVX1 U394 ( .A(n280), .Y(n349) );
  AOI222XL U395 ( .A0(unsort_flag[4]), .A1(n211), .B0(mid_flag[4]), .B1(n206), 
        .C0(sorted_flag[4]), .C1(n332), .Y(n280) );
  CLKINVX1 U396 ( .A(n281), .Y(n350) );
  AOI222XL U397 ( .A0(unsort_flag[3]), .A1(n211), .B0(mid_flag[3]), .B1(n206), 
        .C0(sorted_flag[3]), .C1(n332), .Y(n281) );
  CLKINVX1 U398 ( .A(n282), .Y(n351) );
  AOI222XL U399 ( .A0(unsort_flag[2]), .A1(n211), .B0(mid_flag[2]), .B1(n206), 
        .C0(sorted_flag[2]), .C1(n332), .Y(n282) );
  CLKINVX1 U400 ( .A(n283), .Y(n352) );
  AOI222XL U401 ( .A0(unsort_flag[1]), .A1(n211), .B0(mid_flag[1]), .B1(n206), 
        .C0(sorted_flag[1]), .C1(n332), .Y(n283) );
  CLKINVX1 U402 ( .A(n284), .Y(n353) );
  AOI222XL U403 ( .A0(unsort_flag[0]), .A1(n211), .B0(mid_flag[0]), .B1(n206), 
        .C0(sorted_flag[0]), .C1(n332), .Y(n284) );
  OR2X1 U404 ( .A(N28), .B(n239), .Y(n240) );
  OR2X1 U405 ( .A(N28), .B(n235), .Y(n236) );
  NAND2BX1 U406 ( .AN(num[1]), .B(num[2]), .Y(n235) );
  NAND2BX1 U407 ( .AN(num[2]), .B(num[1]), .Y(n239) );
  CLKINVX1 U408 ( .A(N28), .Y(n333) );
  OR2X1 U409 ( .A(count[0]), .B(count[1]), .Y(n329) );
  NAND2BX1 U410 ( .AN(n329), .B(n39), .Y(n64) );
  INVXL U411 ( .A(data[19]), .Y(n192) );
  CLKINVX1 U412 ( .A(n192), .Y(n193) );
  AO22X1 U413 ( .A0(unsort_data[15]), .A1(n211), .B0(sorting_data[15]), .B1(
        n202), .Y(n234) );
  AO21XL U414 ( .A0(num_reg[0]), .A1(en[2]), .B0(n81), .Y(en[3]) );
  INVX1 U415 ( .A(sorting_data[39]), .Y(n197) );
  OAI22XL U416 ( .A0(count[0]), .A1(n362), .B0(n59), .B1(n333), .Y(N196) );
  NAND2X4 U417 ( .A(n328), .B(n64), .Y(N19) );
  NAND2X1 U418 ( .A(n196), .B(n197), .Y(n199) );
  INVXL U419 ( .A(data[39]), .Y(n196) );
  XNOR2XL U420 ( .A(data[47]), .B(mid_data[47]), .Y(n276) );
  XNOR2X1 U421 ( .A(data[31]), .B(sorting_data[31]), .Y(n291) );
  NAND4X4 U422 ( .A(n327), .B(n325), .C(n326), .D(n324), .Y(n328) );
  NAND4X2 U423 ( .A(n257), .B(n256), .C(n254), .D(n255), .Y(n289) );
  NAND4BX4 U424 ( .AN(n289), .B(n286), .C(n287), .D(n288), .Y(n293) );
endmodule


module Merge_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3;
  wire   [7:1] carry;

  ADDFHX2 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFHX1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFHX2 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFHX2 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFHX2 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFHX4 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR2X4 U1 ( .A(n1), .B(carry[7]), .Y(SUM[7]) );
  XOR2X1 U2 ( .A(A[7]), .B(B[7]), .Y(n1) );
  XNOR2XL U3 ( .A(B[0]), .B(n2), .Y(SUM[0]) );
  NOR2X1 U4 ( .A(n2), .B(n3), .Y(carry[1]) );
  CLKINVX1 U5 ( .A(B[0]), .Y(n3) );
  CLKINVX1 U6 ( .A(A[0]), .Y(n2) );
endmodule


module SplitCell_0 ( rst, en, clk, flag_A, flag_B, HC, M );
  output [7:0] HC;
  output [7:0] M;
  input rst, en, clk, flag_A, flag_B;
  wire   n1, n3, n6, n8, n10, n28, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74;

  DFFRX1 \HC_reg[7]  ( .D(n53), .CK(clk), .RN(n6), .Q(HC[7]), .QN(n61) );
  DFFRX1 \HC_reg[6]  ( .D(n54), .CK(clk), .RN(n6), .Q(HC[6]), .QN(n63) );
  DFFRX1 \HC_reg[4]  ( .D(n56), .CK(clk), .RN(n6), .Q(HC[4]), .QN(n65) );
  DFFRX1 \HC_reg[1]  ( .D(n59), .CK(clk), .RN(n6), .Q(HC[1]), .QN(n68) );
  DFFRX1 \HC_reg[0]  ( .D(n60), .CK(clk), .RN(n6), .Q(HC[0]), .QN(n69) );
  DFFRX1 \HC_reg[5]  ( .D(n55), .CK(clk), .RN(n6), .Q(HC[5]), .QN(n64) );
  DFFRX1 \HC_reg[3]  ( .D(n57), .CK(clk), .RN(n6), .Q(HC[3]), .QN(n66) );
  DFFRX1 \HC_reg[2]  ( .D(n58), .CK(clk), .RN(n6), .Q(HC[2]), .QN(n67) );
  DFFRX1 \M_reg[0]  ( .D(n52), .CK(clk), .RN(n6), .Q(M[0]), .QN(n45) );
  DFFRX1 \M_reg[1]  ( .D(n8), .CK(clk), .RN(n6), .Q(M[1]), .QN(n46) );
  DFFRX1 \M_reg[7]  ( .D(n44), .CK(clk), .RN(n6), .Q(M[7]), .QN(n62) );
  DFFRX1 \M_reg[5]  ( .D(n42), .CK(clk), .RN(n6), .Q(M[5]), .QN(n50) );
  DFFRX1 \M_reg[3]  ( .D(n28), .CK(clk), .RN(n6), .Q(M[3]), .QN(n48) );
  DFFRX1 \M_reg[2]  ( .D(n10), .CK(clk), .RN(n6), .Q(M[2]), .QN(n47) );
  DFFRX1 \M_reg[6]  ( .D(n43), .CK(clk), .RN(n6), .Q(M[6]), .QN(n51) );
  DFFRX1 \M_reg[4]  ( .D(n41), .CK(clk), .RN(n6), .Q(M[4]), .QN(n49) );
  CLKINVX1 U3 ( .A(n1), .Y(n3) );
  OAI22XL U4 ( .A0(n50), .A1(n3), .B0(n49), .B1(n1), .Y(n42) );
  OAI22XL U5 ( .A0(n47), .A1(n3), .B0(n46), .B1(n1), .Y(n10) );
  OAI22XL U6 ( .A0(n46), .A1(n3), .B0(n45), .B1(n1), .Y(n8) );
  OAI22XL U7 ( .A0(n62), .A1(n3), .B0(n51), .B1(n1), .Y(n44) );
  OAI22XL U8 ( .A0(n48), .A1(n3), .B0(n47), .B1(n1), .Y(n28) );
  OAI22XL U9 ( .A0(n49), .A1(n3), .B0(n48), .B1(n1), .Y(n41) );
  OAI22XL U10 ( .A0(n51), .A1(n3), .B0(n50), .B1(n1), .Y(n43) );
  NAND3BX1 U11 ( .AN(n72), .B(n48), .C(n49), .Y(n73) );
  CLKBUFX3 U12 ( .A(n70), .Y(n1) );
  OAI21XL U13 ( .A0(n49), .A1(n72), .B0(n64), .Y(n55) );
  OAI21XL U14 ( .A0(n46), .A1(n74), .B0(n67), .Y(n58) );
  NAND2BX1 U15 ( .AN(n73), .B(n47), .Y(n74) );
  OAI21XL U16 ( .A0(n47), .A1(n73), .B0(n66), .Y(n57) );
  NAND2X1 U17 ( .A(n45), .B(n1), .Y(n52) );
  OAI31XL U18 ( .A0(M[1]), .A1(n74), .A2(M[0]), .B0(n69), .Y(n60) );
  OAI31XL U19 ( .A0(M[1]), .A1(n45), .A2(n74), .B0(n68), .Y(n59) );
  OAI31XL U20 ( .A0(M[4]), .A1(n48), .A2(n72), .B0(n65), .Y(n56) );
  CLKINVX1 U21 ( .A(rst), .Y(n6) );
  OAI21XL U22 ( .A0(flag_B), .A1(flag_A), .B0(en), .Y(n70) );
  NAND4BXL U23 ( .AN(flag_A), .B(n62), .C(flag_B), .D(en), .Y(n71) );
  OAI21XL U24 ( .A0(n51), .A1(n71), .B0(n61), .Y(n53) );
  OAI31XL U25 ( .A0(M[6]), .A1(n50), .A2(n71), .B0(n63), .Y(n54) );
  NAND3BX1 U26 ( .AN(n71), .B(n50), .C(n51), .Y(n72) );
endmodule


module SplitCell_1 ( rst, en, clk, flag_A, flag_B, HC, M );
  output [7:0] HC;
  output [7:0] M;
  input rst, en, clk, flag_A, flag_B;
  wire   n1, n3, n6, n8, n10, n28, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74;

  DFFRX1 \HC_reg[7]  ( .D(n53), .CK(clk), .RN(n6), .Q(HC[7]), .QN(n61) );
  DFFRX1 \HC_reg[6]  ( .D(n54), .CK(clk), .RN(n6), .Q(HC[6]), .QN(n63) );
  DFFRX1 \HC_reg[4]  ( .D(n56), .CK(clk), .RN(n6), .Q(HC[4]), .QN(n65) );
  DFFRX1 \HC_reg[1]  ( .D(n59), .CK(clk), .RN(n6), .Q(HC[1]), .QN(n68) );
  DFFRX1 \HC_reg[0]  ( .D(n60), .CK(clk), .RN(n6), .Q(HC[0]), .QN(n69) );
  DFFRX1 \HC_reg[5]  ( .D(n55), .CK(clk), .RN(n6), .Q(HC[5]), .QN(n64) );
  DFFRX1 \HC_reg[3]  ( .D(n57), .CK(clk), .RN(n6), .Q(HC[3]), .QN(n66) );
  DFFRX1 \HC_reg[2]  ( .D(n58), .CK(clk), .RN(n6), .Q(HC[2]), .QN(n67) );
  DFFRX1 \M_reg[0]  ( .D(n52), .CK(clk), .RN(n6), .Q(M[0]), .QN(n45) );
  DFFRX1 \M_reg[1]  ( .D(n8), .CK(clk), .RN(n6), .Q(M[1]), .QN(n46) );
  DFFRX1 \M_reg[7]  ( .D(n44), .CK(clk), .RN(n6), .Q(M[7]), .QN(n62) );
  DFFRX1 \M_reg[5]  ( .D(n42), .CK(clk), .RN(n6), .Q(M[5]), .QN(n50) );
  DFFRX1 \M_reg[3]  ( .D(n28), .CK(clk), .RN(n6), .Q(M[3]), .QN(n48) );
  DFFRX1 \M_reg[2]  ( .D(n10), .CK(clk), .RN(n6), .Q(M[2]), .QN(n47) );
  DFFRX1 \M_reg[6]  ( .D(n43), .CK(clk), .RN(n6), .Q(M[6]), .QN(n51) );
  DFFRX1 \M_reg[4]  ( .D(n41), .CK(clk), .RN(n6), .Q(M[4]), .QN(n49) );
  CLKINVX1 U3 ( .A(n1), .Y(n3) );
  OAI22XL U4 ( .A0(n50), .A1(n3), .B0(n49), .B1(n1), .Y(n42) );
  OAI22XL U5 ( .A0(n47), .A1(n3), .B0(n46), .B1(n1), .Y(n10) );
  OAI22XL U6 ( .A0(n46), .A1(n3), .B0(n45), .B1(n1), .Y(n8) );
  OAI22XL U7 ( .A0(n62), .A1(n3), .B0(n51), .B1(n1), .Y(n44) );
  OAI22XL U8 ( .A0(n48), .A1(n3), .B0(n47), .B1(n1), .Y(n28) );
  OAI22XL U9 ( .A0(n49), .A1(n3), .B0(n48), .B1(n1), .Y(n41) );
  OAI22XL U10 ( .A0(n51), .A1(n3), .B0(n50), .B1(n1), .Y(n43) );
  NAND3BX1 U11 ( .AN(n72), .B(n48), .C(n49), .Y(n73) );
  CLKBUFX3 U12 ( .A(n70), .Y(n1) );
  OAI21XL U13 ( .A0(n49), .A1(n72), .B0(n64), .Y(n55) );
  OAI21XL U14 ( .A0(n46), .A1(n74), .B0(n67), .Y(n58) );
  NAND2BX1 U15 ( .AN(n73), .B(n47), .Y(n74) );
  OAI21XL U16 ( .A0(n47), .A1(n73), .B0(n66), .Y(n57) );
  NAND2X1 U17 ( .A(n45), .B(n1), .Y(n52) );
  OAI31XL U18 ( .A0(M[1]), .A1(n74), .A2(M[0]), .B0(n69), .Y(n60) );
  OAI31XL U19 ( .A0(M[1]), .A1(n45), .A2(n74), .B0(n68), .Y(n59) );
  OAI31XL U20 ( .A0(M[4]), .A1(n48), .A2(n72), .B0(n65), .Y(n56) );
  CLKINVX1 U21 ( .A(rst), .Y(n6) );
  OAI21XL U22 ( .A0(flag_B), .A1(flag_A), .B0(en), .Y(n70) );
  NAND4BXL U23 ( .AN(flag_A), .B(n62), .C(flag_B), .D(en), .Y(n71) );
  OAI21XL U24 ( .A0(n51), .A1(n71), .B0(n61), .Y(n53) );
  OAI31XL U25 ( .A0(M[6]), .A1(n50), .A2(n71), .B0(n63), .Y(n54) );
  NAND3BX1 U26 ( .AN(n71), .B(n50), .C(n51), .Y(n72) );
endmodule


module SplitCell_2 ( rst, en, clk, flag_A, flag_B, HC, M );
  output [7:0] HC;
  output [7:0] M;
  input rst, en, clk, flag_A, flag_B;
  wire   n1, n3, n6, n8, n10, n28, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74;

  DFFRX1 \HC_reg[7]  ( .D(n53), .CK(clk), .RN(n6), .Q(HC[7]), .QN(n61) );
  DFFRX1 \HC_reg[6]  ( .D(n54), .CK(clk), .RN(n6), .Q(HC[6]), .QN(n63) );
  DFFRX1 \HC_reg[4]  ( .D(n56), .CK(clk), .RN(n6), .Q(HC[4]), .QN(n65) );
  DFFRX1 \HC_reg[1]  ( .D(n59), .CK(clk), .RN(n6), .Q(HC[1]), .QN(n68) );
  DFFRX1 \HC_reg[0]  ( .D(n60), .CK(clk), .RN(n6), .Q(HC[0]), .QN(n69) );
  DFFRX1 \HC_reg[5]  ( .D(n55), .CK(clk), .RN(n6), .Q(HC[5]), .QN(n64) );
  DFFRX1 \HC_reg[3]  ( .D(n57), .CK(clk), .RN(n6), .Q(HC[3]), .QN(n66) );
  DFFRX1 \HC_reg[2]  ( .D(n58), .CK(clk), .RN(n6), .Q(HC[2]), .QN(n67) );
  DFFRX1 \M_reg[0]  ( .D(n52), .CK(clk), .RN(n6), .Q(M[0]), .QN(n45) );
  DFFRX1 \M_reg[1]  ( .D(n8), .CK(clk), .RN(n6), .Q(M[1]), .QN(n46) );
  DFFRX1 \M_reg[7]  ( .D(n44), .CK(clk), .RN(n6), .Q(M[7]), .QN(n62) );
  DFFRX1 \M_reg[5]  ( .D(n42), .CK(clk), .RN(n6), .Q(M[5]), .QN(n50) );
  DFFRX1 \M_reg[3]  ( .D(n28), .CK(clk), .RN(n6), .Q(M[3]), .QN(n48) );
  DFFRX1 \M_reg[2]  ( .D(n10), .CK(clk), .RN(n6), .Q(M[2]), .QN(n47) );
  DFFRX1 \M_reg[6]  ( .D(n43), .CK(clk), .RN(n6), .Q(M[6]), .QN(n51) );
  DFFRX1 \M_reg[4]  ( .D(n41), .CK(clk), .RN(n6), .Q(M[4]), .QN(n49) );
  CLKINVX1 U3 ( .A(n1), .Y(n3) );
  OAI22XL U4 ( .A0(n50), .A1(n3), .B0(n49), .B1(n1), .Y(n42) );
  OAI22XL U5 ( .A0(n47), .A1(n3), .B0(n46), .B1(n1), .Y(n10) );
  OAI22XL U6 ( .A0(n46), .A1(n3), .B0(n45), .B1(n1), .Y(n8) );
  OAI22XL U7 ( .A0(n62), .A1(n3), .B0(n51), .B1(n1), .Y(n44) );
  OAI22XL U8 ( .A0(n48), .A1(n3), .B0(n47), .B1(n1), .Y(n28) );
  OAI22XL U9 ( .A0(n49), .A1(n3), .B0(n48), .B1(n1), .Y(n41) );
  OAI22XL U10 ( .A0(n51), .A1(n3), .B0(n50), .B1(n1), .Y(n43) );
  NAND3BX1 U11 ( .AN(n72), .B(n48), .C(n49), .Y(n73) );
  CLKBUFX3 U12 ( .A(n70), .Y(n1) );
  OAI21XL U13 ( .A0(n49), .A1(n72), .B0(n64), .Y(n55) );
  OAI21XL U14 ( .A0(n46), .A1(n74), .B0(n67), .Y(n58) );
  NAND2BX1 U15 ( .AN(n73), .B(n47), .Y(n74) );
  OAI21XL U16 ( .A0(n47), .A1(n73), .B0(n66), .Y(n57) );
  NAND2X1 U17 ( .A(n45), .B(n1), .Y(n52) );
  OAI31XL U18 ( .A0(M[1]), .A1(n45), .A2(n74), .B0(n68), .Y(n59) );
  OAI31XL U19 ( .A0(M[1]), .A1(n74), .A2(M[0]), .B0(n69), .Y(n60) );
  OAI31XL U20 ( .A0(M[4]), .A1(n48), .A2(n72), .B0(n65), .Y(n56) );
  CLKINVX1 U21 ( .A(rst), .Y(n6) );
  OAI21XL U22 ( .A0(flag_B), .A1(flag_A), .B0(en), .Y(n70) );
  NAND4BXL U23 ( .AN(flag_A), .B(n62), .C(flag_B), .D(en), .Y(n71) );
  OAI21XL U24 ( .A0(n51), .A1(n71), .B0(n61), .Y(n53) );
  OAI31XL U25 ( .A0(M[6]), .A1(n50), .A2(n71), .B0(n63), .Y(n54) );
  NAND3BX1 U26 ( .AN(n71), .B(n50), .C(n51), .Y(n72) );
endmodule


module SplitCell_3 ( rst, en, clk, flag_A, flag_B, HC, M );
  output [7:0] HC;
  output [7:0] M;
  input rst, en, clk, flag_A, flag_B;
  wire   n1, n3, n6, n8, n10, n28, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74;

  DFFRX1 \HC_reg[7]  ( .D(n53), .CK(clk), .RN(n6), .Q(HC[7]), .QN(n61) );
  DFFRX1 \HC_reg[6]  ( .D(n54), .CK(clk), .RN(n6), .Q(HC[6]), .QN(n63) );
  DFFRX1 \HC_reg[4]  ( .D(n56), .CK(clk), .RN(n6), .Q(HC[4]), .QN(n65) );
  DFFRX1 \HC_reg[1]  ( .D(n59), .CK(clk), .RN(n6), .Q(HC[1]), .QN(n68) );
  DFFRX1 \HC_reg[0]  ( .D(n60), .CK(clk), .RN(n6), .Q(HC[0]), .QN(n69) );
  DFFRX1 \HC_reg[5]  ( .D(n55), .CK(clk), .RN(n6), .Q(HC[5]), .QN(n64) );
  DFFRX1 \HC_reg[3]  ( .D(n57), .CK(clk), .RN(n6), .Q(HC[3]), .QN(n66) );
  DFFRX1 \HC_reg[2]  ( .D(n58), .CK(clk), .RN(n6), .Q(HC[2]), .QN(n67) );
  DFFRX1 \M_reg[0]  ( .D(n52), .CK(clk), .RN(n6), .Q(M[0]), .QN(n45) );
  DFFRX1 \M_reg[1]  ( .D(n8), .CK(clk), .RN(n6), .Q(M[1]), .QN(n46) );
  DFFRX1 \M_reg[7]  ( .D(n44), .CK(clk), .RN(n6), .Q(M[7]), .QN(n62) );
  DFFRX1 \M_reg[5]  ( .D(n42), .CK(clk), .RN(n6), .Q(M[5]), .QN(n50) );
  DFFRX1 \M_reg[3]  ( .D(n28), .CK(clk), .RN(n6), .Q(M[3]), .QN(n48) );
  DFFRX1 \M_reg[2]  ( .D(n10), .CK(clk), .RN(n6), .Q(M[2]), .QN(n47) );
  DFFRX1 \M_reg[6]  ( .D(n43), .CK(clk), .RN(n6), .Q(M[6]), .QN(n51) );
  DFFRX1 \M_reg[4]  ( .D(n41), .CK(clk), .RN(n6), .Q(M[4]), .QN(n49) );
  CLKINVX1 U3 ( .A(n1), .Y(n3) );
  OAI22XL U4 ( .A0(n50), .A1(n3), .B0(n49), .B1(n1), .Y(n42) );
  OAI22XL U5 ( .A0(n47), .A1(n3), .B0(n46), .B1(n1), .Y(n10) );
  OAI22XL U6 ( .A0(n46), .A1(n3), .B0(n45), .B1(n1), .Y(n8) );
  OAI22XL U7 ( .A0(n62), .A1(n3), .B0(n51), .B1(n1), .Y(n44) );
  OAI22XL U8 ( .A0(n48), .A1(n3), .B0(n47), .B1(n1), .Y(n28) );
  OAI22XL U9 ( .A0(n49), .A1(n3), .B0(n48), .B1(n1), .Y(n41) );
  OAI22XL U10 ( .A0(n51), .A1(n3), .B0(n50), .B1(n1), .Y(n43) );
  NAND3BX1 U11 ( .AN(n72), .B(n48), .C(n49), .Y(n73) );
  CLKBUFX3 U12 ( .A(n70), .Y(n1) );
  OAI21XL U13 ( .A0(n49), .A1(n72), .B0(n64), .Y(n55) );
  OAI21XL U14 ( .A0(n46), .A1(n74), .B0(n67), .Y(n58) );
  NAND2BX1 U15 ( .AN(n73), .B(n47), .Y(n74) );
  OAI21XL U16 ( .A0(n47), .A1(n73), .B0(n66), .Y(n57) );
  NAND2X1 U17 ( .A(n45), .B(n1), .Y(n52) );
  OAI31XL U18 ( .A0(M[1]), .A1(n45), .A2(n74), .B0(n68), .Y(n59) );
  OAI31XL U19 ( .A0(M[1]), .A1(n74), .A2(M[0]), .B0(n69), .Y(n60) );
  OAI31XL U20 ( .A0(M[4]), .A1(n48), .A2(n72), .B0(n65), .Y(n56) );
  CLKINVX1 U21 ( .A(rst), .Y(n6) );
  OAI21XL U22 ( .A0(flag_B), .A1(flag_A), .B0(en), .Y(n70) );
  NAND4BXL U23 ( .AN(flag_A), .B(n62), .C(flag_B), .D(en), .Y(n71) );
  OAI21XL U24 ( .A0(n51), .A1(n71), .B0(n61), .Y(n53) );
  OAI31XL U25 ( .A0(M[6]), .A1(n50), .A2(n71), .B0(n63), .Y(n54) );
  NAND3BX1 U26 ( .AN(n71), .B(n50), .C(n51), .Y(n72) );
endmodule


module SplitCell_4 ( rst, en, clk, flag_A, flag_B, HC, M );
  output [7:0] HC;
  output [7:0] M;
  input rst, en, clk, flag_A, flag_B;
  wire   n1, n3, n6, n8, n10, n28, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74;

  DFFRX1 \HC_reg[7]  ( .D(n53), .CK(clk), .RN(n6), .Q(HC[7]), .QN(n61) );
  DFFRX1 \HC_reg[6]  ( .D(n54), .CK(clk), .RN(n6), .Q(HC[6]), .QN(n63) );
  DFFRX1 \HC_reg[4]  ( .D(n56), .CK(clk), .RN(n6), .Q(HC[4]), .QN(n65) );
  DFFRX1 \HC_reg[1]  ( .D(n59), .CK(clk), .RN(n6), .Q(HC[1]), .QN(n68) );
  DFFRX1 \HC_reg[0]  ( .D(n60), .CK(clk), .RN(n6), .Q(HC[0]), .QN(n69) );
  DFFRX1 \HC_reg[5]  ( .D(n55), .CK(clk), .RN(n6), .Q(HC[5]), .QN(n64) );
  DFFRX1 \HC_reg[3]  ( .D(n57), .CK(clk), .RN(n6), .Q(HC[3]), .QN(n66) );
  DFFRX1 \HC_reg[2]  ( .D(n58), .CK(clk), .RN(n6), .Q(HC[2]), .QN(n67) );
  DFFRX1 \M_reg[0]  ( .D(n52), .CK(clk), .RN(n6), .Q(M[0]), .QN(n45) );
  DFFRX1 \M_reg[1]  ( .D(n8), .CK(clk), .RN(n6), .Q(M[1]), .QN(n46) );
  DFFRX1 \M_reg[7]  ( .D(n44), .CK(clk), .RN(n6), .Q(M[7]), .QN(n62) );
  DFFRX1 \M_reg[5]  ( .D(n42), .CK(clk), .RN(n6), .Q(M[5]), .QN(n50) );
  DFFRX1 \M_reg[3]  ( .D(n28), .CK(clk), .RN(n6), .Q(M[3]), .QN(n48) );
  DFFRX1 \M_reg[2]  ( .D(n10), .CK(clk), .RN(n6), .Q(M[2]), .QN(n47) );
  DFFRX1 \M_reg[6]  ( .D(n43), .CK(clk), .RN(n6), .Q(M[6]), .QN(n51) );
  DFFRX1 \M_reg[4]  ( .D(n41), .CK(clk), .RN(n6), .Q(M[4]), .QN(n49) );
  CLKINVX1 U3 ( .A(n1), .Y(n3) );
  OAI22XL U4 ( .A0(n50), .A1(n3), .B0(n49), .B1(n1), .Y(n42) );
  OAI22XL U5 ( .A0(n47), .A1(n3), .B0(n46), .B1(n1), .Y(n10) );
  OAI22XL U6 ( .A0(n46), .A1(n3), .B0(n45), .B1(n1), .Y(n8) );
  OAI22XL U7 ( .A0(n62), .A1(n3), .B0(n51), .B1(n1), .Y(n44) );
  OAI22XL U8 ( .A0(n48), .A1(n3), .B0(n47), .B1(n1), .Y(n28) );
  OAI22XL U9 ( .A0(n49), .A1(n3), .B0(n48), .B1(n1), .Y(n41) );
  OAI22XL U10 ( .A0(n51), .A1(n3), .B0(n50), .B1(n1), .Y(n43) );
  NAND3BX1 U11 ( .AN(n72), .B(n48), .C(n49), .Y(n73) );
  CLKBUFX3 U12 ( .A(n70), .Y(n1) );
  OAI21XL U13 ( .A0(n49), .A1(n72), .B0(n64), .Y(n55) );
  OAI21XL U14 ( .A0(n46), .A1(n74), .B0(n67), .Y(n58) );
  NAND2BX1 U15 ( .AN(n73), .B(n47), .Y(n74) );
  OAI21XL U16 ( .A0(n47), .A1(n73), .B0(n66), .Y(n57) );
  NAND2X1 U17 ( .A(n45), .B(n1), .Y(n52) );
  OAI31XL U18 ( .A0(M[1]), .A1(n45), .A2(n74), .B0(n68), .Y(n59) );
  OAI31XL U19 ( .A0(M[1]), .A1(n74), .A2(M[0]), .B0(n69), .Y(n60) );
  OAI31XL U20 ( .A0(M[4]), .A1(n48), .A2(n72), .B0(n65), .Y(n56) );
  CLKINVX1 U21 ( .A(rst), .Y(n6) );
  OAI21XL U22 ( .A0(flag_B), .A1(flag_A), .B0(en), .Y(n70) );
  NAND4BXL U23 ( .AN(flag_A), .B(n62), .C(flag_B), .D(en), .Y(n71) );
  OAI21XL U24 ( .A0(n51), .A1(n71), .B0(n61), .Y(n53) );
  OAI31XL U25 ( .A0(M[6]), .A1(n50), .A2(n71), .B0(n63), .Y(n54) );
  NAND3BX1 U26 ( .AN(n71), .B(n50), .C(n51), .Y(n72) );
endmodule


module SplitCell_5 ( rst, en, clk, flag_A, flag_B, HC, M );
  output [7:0] HC;
  output [7:0] M;
  input rst, en, clk, flag_A, flag_B;
  wire   n2, n4, n5, n7, n9, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n1, n3, n6;

  DFFRX1 \HC_reg[7]  ( .D(n27), .CK(clk), .RN(n6), .Q(HC[7]), .QN(n19) );
  DFFRX1 \HC_reg[6]  ( .D(n26), .CK(clk), .RN(n6), .Q(HC[6]), .QN(n17) );
  DFFRX1 \HC_reg[4]  ( .D(n24), .CK(clk), .RN(n6), .Q(HC[4]), .QN(n15) );
  DFFRX1 \HC_reg[1]  ( .D(n21), .CK(clk), .RN(n6), .Q(HC[1]), .QN(n12) );
  DFFRX1 \HC_reg[0]  ( .D(n20), .CK(clk), .RN(n6), .Q(HC[0]), .QN(n11) );
  DFFRX1 \HC_reg[5]  ( .D(n25), .CK(clk), .RN(n6), .Q(HC[5]), .QN(n16) );
  DFFRX1 \HC_reg[3]  ( .D(n23), .CK(clk), .RN(n6), .Q(HC[3]), .QN(n14) );
  DFFRX1 \HC_reg[2]  ( .D(n22), .CK(clk), .RN(n6), .Q(HC[2]), .QN(n13) );
  DFFRX1 \M_reg[0]  ( .D(n29), .CK(clk), .RN(n6), .Q(M[0]), .QN(n36) );
  DFFRX1 \M_reg[1]  ( .D(n43), .CK(clk), .RN(n6), .Q(M[1]), .QN(n35) );
  DFFRX1 \M_reg[7]  ( .D(n37), .CK(clk), .RN(n6), .Q(M[7]), .QN(n18) );
  DFFRX1 \M_reg[5]  ( .D(n39), .CK(clk), .RN(n6), .Q(M[5]), .QN(n31) );
  DFFRX1 \M_reg[3]  ( .D(n41), .CK(clk), .RN(n6), .Q(M[3]), .QN(n33) );
  DFFRX1 \M_reg[2]  ( .D(n42), .CK(clk), .RN(n6), .Q(M[2]), .QN(n34) );
  DFFRX1 \M_reg[6]  ( .D(n38), .CK(clk), .RN(n6), .Q(M[6]), .QN(n30) );
  DFFRX1 \M_reg[4]  ( .D(n40), .CK(clk), .RN(n6), .Q(M[4]), .QN(n32) );
  CLKINVX1 U3 ( .A(n1), .Y(n3) );
  OAI22XL U4 ( .A0(n31), .A1(n3), .B0(n32), .B1(n1), .Y(n39) );
  OAI22XL U5 ( .A0(n34), .A1(n3), .B0(n35), .B1(n1), .Y(n42) );
  OAI22XL U6 ( .A0(n35), .A1(n3), .B0(n36), .B1(n1), .Y(n43) );
  OAI22XL U7 ( .A0(n18), .A1(n3), .B0(n30), .B1(n1), .Y(n37) );
  OAI22XL U8 ( .A0(n33), .A1(n3), .B0(n34), .B1(n1), .Y(n41) );
  OAI22XL U9 ( .A0(n32), .A1(n3), .B0(n33), .B1(n1), .Y(n40) );
  OAI22XL U10 ( .A0(n30), .A1(n3), .B0(n31), .B1(n1), .Y(n38) );
  NAND3BX1 U11 ( .AN(n5), .B(n33), .C(n32), .Y(n4) );
  CLKBUFX3 U12 ( .A(n9), .Y(n1) );
  OAI21XL U13 ( .A0(n32), .A1(n5), .B0(n16), .Y(n25) );
  OAI21XL U14 ( .A0(n35), .A1(n2), .B0(n13), .Y(n22) );
  NAND2BX1 U15 ( .AN(n4), .B(n34), .Y(n2) );
  OAI21XL U16 ( .A0(n34), .A1(n4), .B0(n14), .Y(n23) );
  NAND2X1 U17 ( .A(n36), .B(n1), .Y(n29) );
  OAI31XL U18 ( .A0(M[1]), .A1(n36), .A2(n2), .B0(n12), .Y(n21) );
  OAI31XL U19 ( .A0(M[1]), .A1(n2), .A2(M[0]), .B0(n11), .Y(n20) );
  OAI31XL U20 ( .A0(M[4]), .A1(n33), .A2(n5), .B0(n15), .Y(n24) );
  CLKINVX1 U21 ( .A(rst), .Y(n6) );
  OAI21XL U22 ( .A0(flag_B), .A1(flag_A), .B0(en), .Y(n9) );
  NAND4BXL U23 ( .AN(flag_A), .B(n18), .C(flag_B), .D(en), .Y(n7) );
  OAI21XL U24 ( .A0(n30), .A1(n7), .B0(n19), .Y(n27) );
  OAI31XL U25 ( .A0(M[6]), .A1(n31), .A2(n7), .B0(n17), .Y(n26) );
  NAND3BX1 U26 ( .AN(n7), .B(n31), .C(n30), .Y(n5) );
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
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106;
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
  Merge_DW01_add_0 \Merge_U/add_200  ( .A(data_A), .B(data_B), .CI(1'b0), 
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
  AOI222X1 U3 ( .A0(sorted_data[18]), .A1(n45), .B0(sorted_data[26]), .B1(n46), 
        .C0(sorted_data[42]), .C1(n47), .Y(n75) );
  AOI222X2 U4 ( .A0(sorted_data[17]), .A1(n45), .B0(sorted_data[25]), .B1(n46), 
        .C0(sorted_data[41]), .C1(n47), .Y(n74) );
  OR2X1 U5 ( .A(num_reg[1]), .B(n103), .Y(n86) );
  OR2X1 U6 ( .A(num_reg[0]), .B(num_reg[2]), .Y(n83) );
  INVX3 U7 ( .A(n86), .Y(n45) );
  INVX3 U8 ( .A(n83), .Y(n47) );
  OR2X1 U9 ( .A(n106), .B(n73), .Y(n2) );
  AO22X1 U10 ( .A0(sorted_data[25]), .A1(n6), .B0(sorted_data[1]), .B1(n7), 
        .Y(n87) );
  INVX1 U11 ( .A(n7), .Y(n105) );
  OR2X1 U12 ( .A(n81), .B(n82), .Y(data_B[0]) );
  OAI221XL U13 ( .A0(n32), .A1(n3), .B0(n8), .B1(n106), .C0(n80), .Y(data_A[7]) );
  OAI221XL U14 ( .A0(n3), .A1(n100), .B0(n14), .B1(n106), .C0(n101), .Y(
        data_B[7]) );
  INVX1 U15 ( .A(num_reg[2]), .Y(n102) );
  OR2X1 U16 ( .A(n87), .B(n88), .Y(data_B[1]) );
  INVX3 U17 ( .A(n84), .Y(n46) );
  OR3X2 U18 ( .A(num_reg[1]), .B(n102), .C(num_reg[0]), .Y(n84) );
  OR2XL U19 ( .A(n105), .B(n72), .Y(n1) );
  NAND3X1 U20 ( .A(n1), .B(n2), .C(n74), .Y(data_A[1]) );
  INVX1 U21 ( .A(n7), .Y(n3) );
  INVXL U22 ( .A(num_reg[1]), .Y(n104) );
  NOR2X1 U23 ( .A(n5), .B(n104), .Y(n7) );
  CLKINVX1 U24 ( .A(n4), .Y(n5) );
  NOR2XL U25 ( .A(num_reg[0]), .B(n102), .Y(n4) );
  NOR2X1 U26 ( .A(n105), .B(n70), .Y(n69) );
  NOR2X1 U27 ( .A(n106), .B(n71), .Y(n68) );
  INVXL U28 ( .A(num_reg[0]), .Y(n103) );
  AO22XL U29 ( .A0(sorted_data[24]), .A1(n6), .B0(sorted_data[0]), .B1(n7), 
        .Y(n81) );
  INVX2 U30 ( .A(n6), .Y(n106) );
  INVXL U31 ( .A(sorted_data[11]), .Y(n36) );
  NAND3XL U32 ( .A(n65), .B(n66), .C(n67), .Y(data_A[0]) );
  AOI22XL U33 ( .A0(sorted_data[40]), .A1(n47), .B0(sorted_data[24]), .B1(n46), 
        .Y(n65) );
  INVXL U34 ( .A(sorted_data[26]), .Y(n19) );
  INVXL U35 ( .A(sorted_data[27]), .Y(n18) );
  INVXL U36 ( .A(sorted_data[28]), .Y(n17) );
  INVXL U37 ( .A(sorted_data[34]), .Y(n13) );
  INVXL U38 ( .A(sorted_data[35]), .Y(n12) );
  INVXL U39 ( .A(sorted_data[36]), .Y(n11) );
  INVXL U40 ( .A(sorted_data[10]), .Y(n37) );
  INVXL U41 ( .A(sorted_data[3]), .Y(n92) );
  NOR2X1 U42 ( .A(n68), .B(n69), .Y(n67) );
  NOR2X1 U43 ( .A(n103), .B(n104), .Y(n6) );
  OR2X1 U44 ( .A(flag_A[5]), .B(flag_B[5]), .Y(update_flag[5]) );
  OR2X1 U45 ( .A(flag_A[4]), .B(flag_B[4]), .Y(update_flag[4]) );
  OR2X1 U46 ( .A(flag_A[3]), .B(flag_B[3]), .Y(update_flag[3]) );
  OR2X1 U47 ( .A(flag_A[2]), .B(flag_B[2]), .Y(update_flag[2]) );
  OR2X1 U48 ( .A(flag_A[1]), .B(flag_B[1]), .Y(update_flag[1]) );
  OR2X1 U49 ( .A(flag_A[0]), .B(flag_B[0]), .Y(update_flag[0]) );
  CLKINVX1 U50 ( .A(sorted_data[16]), .Y(n85) );
  CLKINVX1 U51 ( .A(sorted_data[7]), .Y(n100) );
  OAI221XL U52 ( .A0(n3), .A1(n55), .B0(n30), .B1(n106), .C0(n56), .Y(
        flag_B[1]) );
  CLKINVX1 U53 ( .A(sorted_flag[1]), .Y(n55) );
  CLKINVX1 U54 ( .A(sorted_flag[19]), .Y(n30) );
  AOI222XL U55 ( .A0(sorted_flag[7]), .A1(n45), .B0(sorted_flag[13]), .B1(n46), 
        .C0(sorted_flag[25]), .C1(n47), .Y(n56) );
  OAI221XL U56 ( .A0(n3), .A1(n57), .B0(n29), .B1(n106), .C0(n58), .Y(
        flag_B[2]) );
  CLKINVX1 U57 ( .A(sorted_flag[2]), .Y(n57) );
  CLKINVX1 U58 ( .A(sorted_flag[20]), .Y(n29) );
  AOI222XL U59 ( .A0(sorted_flag[8]), .A1(n45), .B0(sorted_flag[14]), .B1(n46), 
        .C0(sorted_flag[26]), .C1(n47), .Y(n58) );
  OAI221XL U60 ( .A0(n3), .A1(n59), .B0(n28), .B1(n106), .C0(n60), .Y(
        flag_B[3]) );
  CLKINVX1 U61 ( .A(sorted_flag[3]), .Y(n59) );
  CLKINVX1 U62 ( .A(sorted_flag[21]), .Y(n28) );
  AOI222XL U63 ( .A0(sorted_flag[9]), .A1(n45), .B0(sorted_flag[15]), .B1(n46), 
        .C0(sorted_flag[27]), .C1(n47), .Y(n60) );
  OAI221XL U64 ( .A0(n3), .A1(n61), .B0(n27), .B1(n106), .C0(n62), .Y(
        flag_B[4]) );
  CLKINVX1 U65 ( .A(sorted_flag[4]), .Y(n61) );
  CLKINVX1 U66 ( .A(sorted_flag[22]), .Y(n27) );
  AOI222XL U67 ( .A0(sorted_flag[10]), .A1(n45), .B0(sorted_flag[16]), .B1(n46), .C0(sorted_flag[28]), .C1(n47), .Y(n62) );
  OAI221XL U68 ( .A0(n3), .A1(n63), .B0(n26), .B1(n106), .C0(n64), .Y(
        flag_B[5]) );
  CLKINVX1 U69 ( .A(sorted_flag[5]), .Y(n63) );
  CLKINVX1 U70 ( .A(sorted_flag[23]), .Y(n26) );
  AOI222XL U71 ( .A0(sorted_flag[11]), .A1(n45), .B0(sorted_flag[17]), .B1(n46), .C0(sorted_flag[29]), .C1(n47), .Y(n64) );
  OAI221XL U72 ( .A0(n3), .A1(n53), .B0(n31), .B1(n106), .C0(n54), .Y(
        flag_B[0]) );
  CLKINVX1 U73 ( .A(sorted_flag[0]), .Y(n53) );
  CLKINVX1 U74 ( .A(sorted_flag[18]), .Y(n31) );
  AOI222XL U75 ( .A0(sorted_flag[6]), .A1(n45), .B0(sorted_flag[12]), .B1(n46), 
        .C0(sorted_flag[24]), .C1(n47), .Y(n54) );
  OAI221XL U76 ( .A0(n39), .A1(n3), .B0(n21), .B1(n106), .C0(n51), .Y(
        flag_A[4]) );
  CLKINVX1 U77 ( .A(sorted_flag[10]), .Y(n39) );
  CLKINVX1 U78 ( .A(sorted_flag[28]), .Y(n21) );
  OAI221XL U79 ( .A0(n38), .A1(n3), .B0(n20), .B1(n106), .C0(n52), .Y(
        flag_A[5]) );
  CLKINVX1 U80 ( .A(sorted_flag[11]), .Y(n38) );
  CLKINVX1 U81 ( .A(sorted_flag[29]), .Y(n20) );
  OAI221XL U82 ( .A0(n3), .A1(n98), .B0(n15), .B1(n106), .C0(n99), .Y(
        data_B[6]) );
  OAI221XL U83 ( .A0(n33), .A1(n3), .B0(n9), .B1(n106), .C0(n79), .Y(data_A[6]) );
  CLKINVX1 U84 ( .A(sorted_data[6]), .Y(n98) );
  OAI221XL U85 ( .A0(n3), .A1(n96), .B0(n16), .B1(n106), .C0(n97), .Y(
        data_B[5]) );
  OAI221XL U86 ( .A0(n34), .A1(n3), .B0(n10), .B1(n106), .C0(n78), .Y(
        data_A[5]) );
  CLKINVX1 U87 ( .A(sorted_data[5]), .Y(n96) );
  OAI221XL U88 ( .A0(n105), .A1(n90), .B0(n19), .B1(n106), .C0(n91), .Y(
        data_B[2]) );
  OAI221XL U89 ( .A0(n37), .A1(n105), .B0(n13), .B1(n106), .C0(n75), .Y(
        data_A[2]) );
  CLKINVX1 U90 ( .A(sorted_data[2]), .Y(n90) );
  OAI221XL U91 ( .A0(n36), .A1(n105), .B0(n12), .B1(n106), .C0(n76), .Y(
        data_A[3]) );
  OAI221XL U92 ( .A0(n105), .A1(n92), .B0(n18), .B1(n106), .C0(n93), .Y(
        data_B[3]) );
  OAI221XL U93 ( .A0(n105), .A1(n94), .B0(n17), .B1(n106), .C0(n95), .Y(
        data_B[4]) );
  OAI221XL U94 ( .A0(n35), .A1(n105), .B0(n11), .B1(n106), .C0(n77), .Y(
        data_A[4]) );
  CLKINVX1 U95 ( .A(sorted_data[4]), .Y(n94) );
  NAND2XL U96 ( .A(sorted_data[16]), .B(n45), .Y(n66) );
  OAI222XL U97 ( .A0(n83), .A1(n73), .B0(n84), .B1(n89), .C0(n86), .C1(n72), 
        .Y(n88) );
  CLKINVX1 U98 ( .A(sorted_data[17]), .Y(n89) );
  CLKINVX1 U99 ( .A(sorted_data[32]), .Y(n71) );
  CLKINVX1 U100 ( .A(sorted_data[8]), .Y(n70) );
  OAI221XL U101 ( .A0(n42), .A1(n3), .B0(n24), .B1(n106), .C0(n48), .Y(
        flag_A[1]) );
  CLKINVX1 U102 ( .A(sorted_flag[7]), .Y(n42) );
  CLKINVX1 U103 ( .A(sorted_flag[25]), .Y(n24) );
  AOI222XL U104 ( .A0(sorted_flag[13]), .A1(n45), .B0(sorted_flag[19]), .B1(
        n46), .C0(sorted_flag[31]), .C1(n47), .Y(n48) );
  OAI221XL U105 ( .A0(n41), .A1(n3), .B0(n23), .B1(n106), .C0(n49), .Y(
        flag_A[2]) );
  CLKINVX1 U106 ( .A(sorted_flag[8]), .Y(n41) );
  CLKINVX1 U107 ( .A(sorted_flag[26]), .Y(n23) );
  AOI222XL U108 ( .A0(sorted_flag[14]), .A1(n45), .B0(sorted_flag[20]), .B1(
        n46), .C0(sorted_flag[32]), .C1(n47), .Y(n49) );
  OAI221XL U109 ( .A0(n40), .A1(n3), .B0(n22), .B1(n106), .C0(n50), .Y(
        flag_A[3]) );
  CLKINVX1 U110 ( .A(sorted_flag[9]), .Y(n40) );
  CLKINVX1 U111 ( .A(sorted_flag[27]), .Y(n22) );
  AOI222XL U112 ( .A0(sorted_flag[15]), .A1(n45), .B0(sorted_flag[21]), .B1(
        n46), .C0(sorted_flag[33]), .C1(n47), .Y(n50) );
  OAI221XL U113 ( .A0(n43), .A1(n3), .B0(n25), .B1(n106), .C0(n44), .Y(
        flag_A[0]) );
  CLKINVX1 U114 ( .A(sorted_flag[6]), .Y(n43) );
  CLKINVX1 U115 ( .A(sorted_flag[24]), .Y(n25) );
  AOI222XL U116 ( .A0(sorted_flag[12]), .A1(n45), .B0(sorted_flag[18]), .B1(
        n46), .C0(sorted_flag[30]), .C1(n47), .Y(n44) );
  AOI222XL U117 ( .A0(sorted_data[11]), .A1(n45), .B0(sorted_data[19]), .B1(
        n46), .C0(sorted_data[35]), .C1(n47), .Y(n93) );
  AOI222XL U118 ( .A0(sorted_data[20]), .A1(n45), .B0(sorted_data[28]), .B1(
        n46), .C0(sorted_data[44]), .C1(n47), .Y(n77) );
  AOI222XL U119 ( .A0(sorted_data[12]), .A1(n45), .B0(sorted_data[20]), .B1(
        n46), .C0(sorted_data[36]), .C1(n47), .Y(n95) );
  AOI222XL U120 ( .A0(sorted_data[21]), .A1(n45), .B0(sorted_data[29]), .B1(
        n46), .C0(sorted_data[45]), .C1(n47), .Y(n78) );
  AOI222XL U121 ( .A0(sorted_data[13]), .A1(n45), .B0(sorted_data[21]), .B1(
        n46), .C0(sorted_data[37]), .C1(n47), .Y(n97) );
  AOI222XL U122 ( .A0(sorted_data[22]), .A1(n45), .B0(sorted_data[30]), .B1(
        n46), .C0(sorted_data[46]), .C1(n47), .Y(n79) );
  AOI222XL U123 ( .A0(sorted_data[14]), .A1(n45), .B0(sorted_data[22]), .B1(
        n46), .C0(sorted_data[38]), .C1(n47), .Y(n99) );
  CLKINVX1 U124 ( .A(sorted_data[9]), .Y(n72) );
  CLKINVX1 U125 ( .A(sorted_data[33]), .Y(n73) );
  CLKINVX1 U126 ( .A(sorted_data[14]), .Y(n33) );
  CLKINVX1 U127 ( .A(sorted_data[15]), .Y(n32) );
  CLKINVX1 U128 ( .A(sorted_data[29]), .Y(n16) );
  CLKINVX1 U129 ( .A(sorted_data[30]), .Y(n15) );
  CLKINVX1 U130 ( .A(sorted_data[12]), .Y(n35) );
  CLKINVX1 U131 ( .A(sorted_data[13]), .Y(n34) );
  CLKINVX1 U132 ( .A(sorted_data[37]), .Y(n10) );
  CLKINVX1 U133 ( .A(sorted_data[38]), .Y(n9) );
  CLKINVX1 U134 ( .A(sorted_data[31]), .Y(n14) );
  CLKINVX1 U135 ( .A(sorted_data[39]), .Y(n8) );
  AOI222XL U136 ( .A0(sorted_data[23]), .A1(n45), .B0(sorted_data[31]), .B1(
        n46), .C0(sorted_data[47]), .C1(n47), .Y(n80) );
  AOI222XL U137 ( .A0(sorted_data[15]), .A1(n45), .B0(sorted_data[23]), .B1(
        n46), .C0(sorted_data[39]), .C1(n47), .Y(n101) );
  OAI222XL U138 ( .A0(n83), .A1(n71), .B0(n84), .B1(n85), .C0(n86), .C1(n70), 
        .Y(n82) );
  AOI222XL U139 ( .A0(sorted_flag[16]), .A1(n45), .B0(sorted_flag[22]), .B1(
        n46), .C0(sorted_flag[34]), .C1(n47), .Y(n51) );
  AOI222XL U140 ( .A0(sorted_flag[17]), .A1(n45), .B0(sorted_flag[23]), .B1(
        n46), .C0(sorted_flag[35]), .C1(n47), .Y(n52) );
  AOI222XL U141 ( .A0(sorted_data[19]), .A1(n45), .B0(sorted_data[27]), .B1(
        n46), .C0(sorted_data[43]), .C1(n47), .Y(n76) );
  AOI222XL U142 ( .A0(sorted_data[10]), .A1(n45), .B0(sorted_data[18]), .B1(
        n46), .C0(sorted_data[34]), .C1(n47), .Y(n91) );
endmodule

