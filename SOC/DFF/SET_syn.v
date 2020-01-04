/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03
// Date      : Sat Jan  4 15:29:26 2020
/////////////////////////////////////////////////////////////


module Control ( clk, rst, en, central, radius, circle_A, circle_B, circle_C, 
        mode, reg_mode, busy, valid, now_0, now_1, now_2, count, Candidate_en, 
        MapCell_en );
  input [23:0] central;
  input [11:0] radius;
  output [11:0] circle_A;
  output [11:0] circle_B;
  output [11:0] circle_C;
  input [1:0] mode;
  output [1:0] reg_mode;
  output [5:0] now_0;
  output [5:0] now_1;
  output [5:0] now_2;
  input clk, rst, en;
  output busy, valid, count, Candidate_en, MapCell_en;
  wire   N51, N52, N53, N54, N57, N58, N59, N60, N63, N64, N65, N66, N133,
         N134, N153, N154, N155, N157, N164, N165, N166, N167, N168, N169,
         N170, N171, N172, N173, N174, N175, n51, n52, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n93, n94, n95, n96, n97, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n138, n235, n236, n237, n238, n239, n243, n248, n249, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16;
  wire   [2:0] state;
  wire   [5:2] \r406/carry ;
  wire   [5:2] \r405/carry ;
  wire   [5:2] \r404/carry ;

  DFFRX1 busy_reg ( .D(N154), .CK(clk), .RN(n248), .Q(busy), .QN(n51) );
  DFFRX1 MapCell_en_reg ( .D(N157), .CK(clk), .RN(n248), .Q(MapCell_en), .QN(
        n52) );
  DFFRX1 \circle_C_reg[3]  ( .D(n105), .CK(clk), .RN(n15), .Q(circle_C[3]), 
        .QN(n57) );
  DFFRX1 \circle_B_reg[3]  ( .D(n117), .CK(clk), .RN(n248), .Q(circle_B[3]), 
        .QN(n69) );
  DFFRX1 \state_reg[2]  ( .D(N155), .CK(clk), .RN(n15), .Q(state[2]), .QN(n6)
         );
  DFFRX1 \circle_A_reg[3]  ( .D(n129), .CK(clk), .RN(n15), .Q(circle_A[3]), 
        .QN(n81) );
  DFFRX1 Candidate_en_reg ( .D(n99), .CK(clk), .RN(n248), .Q(Candidate_en) );
  DFFRX1 \state_reg[0]  ( .D(N133), .CK(clk), .RN(n15), .Q(state[0]) );
  DFFRX1 \state_reg[1]  ( .D(N134), .CK(clk), .RN(n15), .Q(state[1]), .QN(n3)
         );
  DFFRX1 \circle_C_reg[2]  ( .D(n104), .CK(clk), .RN(n15), .Q(circle_C[2]), 
        .QN(n56) );
  DFFRX1 \circle_C_reg[1]  ( .D(n103), .CK(clk), .RN(n15), .Q(circle_C[1]), 
        .QN(n55) );
  DFFRX1 \circle_C_reg[0]  ( .D(n102), .CK(clk), .RN(n248), .Q(circle_C[0]), 
        .QN(n54) );
  DFFRX1 \circle_B_reg[2]  ( .D(n116), .CK(clk), .RN(n15), .Q(circle_B[2]), 
        .QN(n68) );
  DFFRX1 \circle_B_reg[1]  ( .D(n115), .CK(clk), .RN(n15), .Q(circle_B[1]), 
        .QN(n67) );
  DFFRX1 \circle_B_reg[0]  ( .D(n114), .CK(clk), .RN(n15), .Q(circle_B[0]), 
        .QN(n66) );
  DFFRX1 \circle_A_reg[2]  ( .D(n128), .CK(clk), .RN(n248), .Q(circle_A[2]), 
        .QN(n80) );
  DFFRX1 \circle_A_reg[1]  ( .D(n127), .CK(clk), .RN(n15), .Q(circle_A[1]), 
        .QN(n79) );
  DFFRX1 \circle_A_reg[0]  ( .D(n126), .CK(clk), .RN(n15), .Q(circle_A[0]), 
        .QN(n78) );
  DFFRX1 \circle_C_reg[11]  ( .D(n113), .CK(clk), .RN(n248), .Q(circle_C[11]), 
        .QN(n65) );
  DFFRX1 \circle_C_reg[10]  ( .D(n112), .CK(clk), .RN(n15), .Q(circle_C[10]), 
        .QN(n64) );
  DFFRX1 \circle_C_reg[9]  ( .D(n111), .CK(clk), .RN(n15), .Q(circle_C[9]), 
        .QN(n63) );
  DFFRX1 \circle_C_reg[8]  ( .D(n110), .CK(clk), .RN(n15), .Q(circle_C[8]), 
        .QN(n62) );
  DFFRX1 \circle_C_reg[7]  ( .D(n109), .CK(clk), .RN(n248), .Q(circle_C[7]), 
        .QN(n61) );
  DFFRX1 \circle_C_reg[6]  ( .D(n108), .CK(clk), .RN(n15), .Q(circle_C[6]), 
        .QN(n60) );
  DFFRX1 \circle_C_reg[5]  ( .D(n107), .CK(clk), .RN(n15), .Q(circle_C[5]), 
        .QN(n59) );
  DFFRX1 \circle_C_reg[4]  ( .D(n106), .CK(clk), .RN(n248), .Q(circle_C[4]), 
        .QN(n58) );
  DFFRX1 \circle_A_reg[10]  ( .D(n136), .CK(clk), .RN(n248), .Q(circle_A[10]), 
        .QN(n88) );
  DFFRX1 \circle_A_reg[6]  ( .D(n132), .CK(clk), .RN(n15), .Q(circle_A[6]), 
        .QN(n84) );
  DFFRX1 \circle_A_reg[4]  ( .D(n130), .CK(clk), .RN(n15), .Q(circle_A[4]), 
        .QN(n82) );
  DFFRX1 \circle_B_reg[11]  ( .D(n125), .CK(clk), .RN(n248), .Q(circle_B[11]), 
        .QN(n77) );
  DFFRX1 \circle_B_reg[10]  ( .D(n124), .CK(clk), .RN(n248), .Q(circle_B[10]), 
        .QN(n76) );
  DFFRX1 \circle_B_reg[8]  ( .D(n122), .CK(clk), .RN(n15), .Q(circle_B[8]), 
        .QN(n74) );
  DFFRX1 \circle_B_reg[7]  ( .D(n121), .CK(clk), .RN(n15), .Q(circle_B[7]), 
        .QN(n73) );
  DFFRX1 \circle_B_reg[6]  ( .D(n120), .CK(clk), .RN(n248), .Q(circle_B[6]), 
        .QN(n72) );
  DFFRX1 \circle_B_reg[5]  ( .D(n119), .CK(clk), .RN(n15), .Q(circle_B[5]), 
        .QN(n71) );
  DFFRX1 \circle_B_reg[4]  ( .D(n118), .CK(clk), .RN(n15), .Q(circle_B[4]), 
        .QN(n70) );
  DFFRX1 \circle_A_reg[11]  ( .D(n138), .CK(clk), .RN(n248), .Q(circle_A[11]), 
        .QN(n89) );
  DFFRX1 \circle_A_reg[7]  ( .D(n133), .CK(clk), .RN(n248), .Q(circle_A[7]), 
        .QN(n85) );
  DFFRX1 \now_1_reg[5]  ( .D(N175), .CK(clk), .RN(n15), .Q(now_1[5]), .QN(n14)
         );
  DFFRX1 \now_2_reg[5]  ( .D(n97), .CK(clk), .RN(n15), .Q(now_2[5]), .QN(n12)
         );
  DFFRX1 \now_2_reg[2]  ( .D(n94), .CK(clk), .RN(n15), .Q(now_2[2]), .QN(n4)
         );
  DFFRX1 \circle_A_reg[9]  ( .D(n135), .CK(clk), .RN(n248), .Q(circle_A[9]), 
        .QN(n87) );
  DFFRX1 \circle_A_reg[8]  ( .D(n134), .CK(clk), .RN(n248), .Q(circle_A[8]), 
        .QN(n86) );
  DFFRX1 \circle_A_reg[5]  ( .D(n131), .CK(clk), .RN(n248), .Q(circle_A[5]), 
        .QN(n83) );
  DFFRX1 \circle_B_reg[9]  ( .D(n123), .CK(clk), .RN(n248), .Q(circle_B[9]), 
        .QN(n75) );
  DFFRX1 count_reg ( .D(N153), .CK(clk), .RN(n15), .Q(count), .QN(n305) );
  DFFRX1 \now_1_reg[2]  ( .D(N172), .CK(clk), .RN(n15), .Q(now_1[2]), .QN(n5)
         );
  DFFRX1 \now_1_reg[1]  ( .D(N171), .CK(clk), .RN(n15), .Q(now_1[1]) );
  DFFRX1 \now_0_reg[2]  ( .D(N166), .CK(clk), .RN(n15), .Q(now_0[2]), .QN(n8)
         );
  DFFRX1 \now_1_reg[4]  ( .D(N174), .CK(clk), .RN(n15), .Q(now_1[4]) );
  DFFRX1 \now_2_reg[1]  ( .D(n95), .CK(clk), .RN(n15), .Q(now_2[1]) );
  DFFRX1 \now_1_reg[0]  ( .D(N170), .CK(clk), .RN(n15), .Q(now_1[0]) );
  DFFRX1 \now_1_reg[3]  ( .D(N173), .CK(clk), .RN(n15), .Q(now_1[3]) );
  DFFRX1 \now_2_reg[4]  ( .D(n235), .CK(clk), .RN(n15), .Q(now_2[4]), .QN(n10)
         );
  DFFRX1 \now_0_reg[5]  ( .D(N169), .CK(clk), .RN(n15), .Q(now_0[5]), .QN(n13)
         );
  DFFRX1 \now_0_reg[1]  ( .D(N165), .CK(clk), .RN(n15), .Q(now_0[1]), .QN(n2)
         );
  ADDHXL \r405/U1_1_4  ( .A(now_1[4]), .B(\r405/carry [4]), .CO(
        \r405/carry [5]), .S(N60) );
  ADDHXL \r404/U1_1_4  ( .A(now_0[4]), .B(\r404/carry [4]), .CO(
        \r404/carry [5]), .S(N54) );
  ADDHXL \r405/U1_1_2  ( .A(now_1[2]), .B(\r405/carry [2]), .CO(
        \r405/carry [3]), .S(N58) );
  ADDHXL \r404/U1_1_2  ( .A(now_0[2]), .B(\r404/carry [2]), .CO(
        \r404/carry [3]), .S(N52) );
  ADDHXL \r405/U1_1_3  ( .A(now_1[3]), .B(\r405/carry [3]), .CO(
        \r405/carry [4]), .S(N59) );
  ADDHXL \r405/U1_1_1  ( .A(now_1[1]), .B(now_1[0]), .CO(\r405/carry [2]), .S(
        N57) );
  ADDHXL \r404/U1_1_3  ( .A(now_0[3]), .B(\r404/carry [3]), .CO(
        \r404/carry [4]), .S(N53) );
  ADDHXL \r404/U1_1_1  ( .A(now_0[1]), .B(now_0[0]), .CO(\r404/carry [2]), .S(
        N51) );
  ADDHXL \r406/U1_1_2  ( .A(now_2[2]), .B(\r406/carry [2]), .CO(
        \r406/carry [3]), .S(N64) );
  ADDHXL \r406/U1_1_3  ( .A(now_2[3]), .B(\r406/carry [3]), .CO(
        \r406/carry [4]), .S(N65) );
  ADDHXL \r406/U1_1_1  ( .A(now_2[1]), .B(now_2[0]), .CO(\r406/carry [2]), .S(
        N63) );
  ADDHXL \r406/U1_1_4  ( .A(now_2[4]), .B(\r406/carry [4]), .CO(
        \r406/carry [5]), .S(N66) );
  DFFRX1 valid_reg ( .D(N155), .CK(clk), .RN(n15), .Q(valid) );
  DFFRX1 \now_0_reg[4]  ( .D(N168), .CK(clk), .RN(n15), .Q(now_0[4]) );
  DFFRX1 \now_0_reg[3]  ( .D(N167), .CK(clk), .RN(n15), .Q(now_0[3]), .QN(n1)
         );
  DFFRX1 \now_0_reg[0]  ( .D(N164), .CK(clk), .RN(n15), .Q(now_0[0]), .QN(n11)
         );
  DFFRX1 \reg_mode_reg[0]  ( .D(n100), .CK(clk), .RN(n15), .Q(reg_mode[0]) );
  DFFRX1 \reg_mode_reg[1]  ( .D(n101), .CK(clk), .RN(n248), .Q(reg_mode[1]) );
  DFFRX1 \now_2_reg[0]  ( .D(n96), .CK(clk), .RN(n15), .Q(now_2[0]), .QN(n9)
         );
  DFFRX1 \now_2_reg[3]  ( .D(n93), .CK(clk), .RN(n15), .Q(now_2[3]), .QN(n7)
         );
  NOR4X1 U111 ( .A(n1), .B(n13), .C(n2), .D(n3), .Y(n304) );
  NOR2X1 U112 ( .A(n4), .B(n271), .Y(n263) );
  NOR2X1 U113 ( .A(n5), .B(n285), .Y(n283) );
  NAND2X1 U114 ( .A(n6), .B(state[0]), .Y(n253) );
  OAI21XL U115 ( .A0(reg_mode[0]), .A1(reg_mode[1]), .B0(n16), .Y(n276) );
  CLKINVX1 U116 ( .A(rst), .Y(n248) );
  NOR2BX1 U117 ( .AN(n264), .B(n276), .Y(n257) );
  OA21XL U118 ( .A0(n263), .A1(n237), .B0(n264), .Y(n262) );
  CLKINVX1 U119 ( .A(n261), .Y(n237) );
  CLKINVX1 U120 ( .A(\r406/carry [5]), .Y(n243) );
  NOR3BXL U121 ( .AN(n263), .B(n237), .C(n7), .Y(n256) );
  NOR2X1 U122 ( .A(n261), .B(n236), .Y(n288) );
  CLKINVX1 U123 ( .A(n276), .Y(n236) );
  NOR2X1 U124 ( .A(n8), .B(n296), .Y(n294) );
  NAND2X1 U125 ( .A(n271), .B(n261), .Y(n267) );
  NAND2X1 U126 ( .A(n16), .B(n299), .Y(N133) );
  CLKINVX1 U127 ( .A(n299), .Y(n238) );
  AO22X1 U128 ( .A0(N52), .A1(n236), .B0(n297), .B1(n261), .Y(N166) );
  XOR2X1 U129 ( .A(n8), .B(n296), .Y(n297) );
  OAI211X1 U130 ( .A0(n262), .A1(n7), .B0(n273), .C0(n274), .Y(n93) );
  AOI31X1 U131 ( .A0(n263), .A1(n7), .A2(n261), .B0(n249), .Y(n274) );
  NAND2X1 U132 ( .A(N65), .B(n257), .Y(n273) );
  CLKINVX1 U133 ( .A(n260), .Y(n249) );
  OAI211X1 U134 ( .A0(n264), .A1(n9), .B0(n265), .C0(n260), .Y(n96) );
  OAI21XL U135 ( .A0(n257), .A1(n261), .B0(n9), .Y(n265) );
  CLKINVX1 U136 ( .A(n277), .Y(n239) );
  CLKBUFX3 U137 ( .A(n248), .Y(n15) );
  OAI21XL U138 ( .A0(now_2[3]), .A1(n237), .B0(n262), .Y(n255) );
  XOR2X1 U139 ( .A(reg_mode[0]), .B(reg_mode[1]), .Y(n277) );
  NAND3X1 U140 ( .A(n277), .B(n16), .C(n305), .Y(n264) );
  NOR3X1 U141 ( .A(reg_mode[0]), .B(reg_mode[1]), .C(en), .Y(n261) );
  OAI221XL U142 ( .A0(now_2[5]), .A1(n258), .B0(n259), .B1(n12), .C0(n260), 
        .Y(n97) );
  AOI22X1 U143 ( .A0(n257), .A1(\r406/carry [5]), .B0(n256), .B1(now_2[4]), 
        .Y(n258) );
  AOI221XL U144 ( .A0(n257), .A1(n243), .B0(n261), .B1(n10), .C0(n255), .Y(
        n259) );
  NAND3X1 U145 ( .A(n266), .B(n267), .C(n268), .Y(n95) );
  AO21X1 U146 ( .A0(mode[1]), .A1(mode[0]), .B0(n16), .Y(n266) );
  AOI22X1 U147 ( .A0(now_2[1]), .A1(n269), .B0(N63), .B1(n257), .Y(n268) );
  OAI21XL U148 ( .A0(n237), .A1(n9), .B0(n264), .Y(n269) );
  OAI22XL U149 ( .A0(n289), .A1(n13), .B0(now_0[5]), .B1(n290), .Y(N169) );
  AOI2BB2X1 U150 ( .B0(n261), .B1(n292), .A0N(n276), .A1N(\r404/carry [5]), 
        .Y(n289) );
  AOI32X1 U151 ( .A0(n291), .A1(n261), .A2(now_0[4]), .B0(\r404/carry [5]), 
        .B1(n236), .Y(n290) );
  OAI22XL U152 ( .A0(n278), .A1(n14), .B0(now_1[5]), .B1(n279), .Y(N175) );
  AOI2BB2X1 U153 ( .B0(n261), .B1(n281), .A0N(n276), .A1N(\r405/carry [5]), 
        .Y(n278) );
  AOI32X1 U154 ( .A0(n280), .A1(n261), .A2(now_1[4]), .B0(\r405/carry [5]), 
        .B1(n236), .Y(n279) );
  NAND3X1 U155 ( .A(n302), .B(n303), .C(n304), .Y(n299) );
  AOI2BB2X1 U156 ( .B0(now_0[0]), .B1(n8), .A0N(n8), .A1N(now_0[4]), .Y(n302)
         );
  AOI221XL U157 ( .A0(n239), .A1(n11), .B0(now_0[4]), .B1(n277), .C0(state[0]), 
        .Y(n303) );
  NOR2X1 U158 ( .A(now_0[1]), .B(now_0[0]), .Y(n296) );
  NOR2X1 U159 ( .A(now_2[1]), .B(now_2[0]), .Y(n271) );
  NOR2X1 U160 ( .A(now_1[1]), .B(now_1[0]), .Y(n285) );
  OAI21XL U161 ( .A0(n51), .A1(n238), .B0(n16), .Y(N154) );
  AOI21X1 U162 ( .A0(n251), .A1(n252), .B0(en), .Y(n99) );
  NAND2X1 U163 ( .A(n253), .B(Candidate_en), .Y(n252) );
  NOR2X1 U164 ( .A(now_0[0]), .B(n288), .Y(N164) );
  NAND2X1 U165 ( .A(now_0[4]), .B(n291), .Y(n292) );
  AND2X2 U166 ( .A(now_0[3]), .B(n294), .Y(n291) );
  AND2X2 U167 ( .A(now_1[3]), .B(n283), .Y(n280) );
  NAND2X1 U168 ( .A(now_1[4]), .B(n280), .Y(n281) );
  AO22X1 U169 ( .A0(N51), .A1(n236), .B0(n261), .B1(n298), .Y(N165) );
  AO21X1 U170 ( .A0(now_0[0]), .A1(now_0[1]), .B0(n296), .Y(n298) );
  AO22X1 U171 ( .A0(N54), .A1(n236), .B0(n261), .B1(n293), .Y(N168) );
  XOR2X1 U172 ( .A(now_0[4]), .B(n291), .Y(n293) );
  AO22X1 U173 ( .A0(N53), .A1(n236), .B0(n261), .B1(n295), .Y(N167) );
  XOR2X1 U174 ( .A(now_0[3]), .B(n294), .Y(n295) );
  AO22X1 U175 ( .A0(N57), .A1(n236), .B0(n261), .B1(n287), .Y(N171) );
  AO21X1 U176 ( .A0(now_1[0]), .A1(now_1[1]), .B0(n285), .Y(n287) );
  AO22X1 U177 ( .A0(N60), .A1(n236), .B0(n261), .B1(n282), .Y(N174) );
  XOR2X1 U178 ( .A(now_1[4]), .B(n280), .Y(n282) );
  AO22X1 U179 ( .A0(N59), .A1(n236), .B0(n261), .B1(n284), .Y(N173) );
  XOR2X1 U180 ( .A(now_1[3]), .B(n283), .Y(n284) );
  AO22X1 U181 ( .A0(N58), .A1(n236), .B0(n286), .B1(n261), .Y(N172) );
  XNOR2X1 U182 ( .A(now_1[2]), .B(n285), .Y(n286) );
  OR2X1 U183 ( .A(n253), .B(state[1]), .Y(n251) );
  OAI32X1 U184 ( .A0(n16), .A1(mode[1]), .A2(mode[0]), .B0(now_1[0]), .B1(n288), .Y(N170) );
  AO21X1 U185 ( .A0(N64), .A1(n257), .B0(n270), .Y(n94) );
  OAI31XL U186 ( .A0(n237), .A1(now_2[2]), .A2(n271), .B0(n272), .Y(n270) );
  OAI2BB1X1 U187 ( .A0N(n267), .A1N(n264), .B0(now_2[2]), .Y(n272) );
  OAI211X1 U188 ( .A0(n52), .A1(n238), .B0(n251), .C0(n16), .Y(N157) );
  CLKINVX1 U189 ( .A(n254), .Y(n235) );
  AOI222XL U190 ( .A0(n255), .A1(now_2[4]), .B0(n10), .B1(n256), .C0(n257), 
        .C1(N66), .Y(n254) );
  NOR3BXL U191 ( .AN(n305), .B(en), .C(n300), .Y(N153) );
  NOR3X1 U192 ( .A(state[0]), .B(state[2]), .C(state[1]), .Y(n300) );
  NOR3BXL U193 ( .AN(state[1]), .B(en), .C(n253), .Y(N155) );
  OAI2BB2XL U194 ( .B0(n75), .B1(en), .A0N(central[13]), .A1N(en), .Y(n123) );
  OAI2BB2XL U195 ( .B0(n76), .B1(en), .A0N(central[14]), .A1N(en), .Y(n124) );
  OAI2BB2XL U196 ( .B0(n77), .B1(en), .A0N(central[15]), .A1N(en), .Y(n125) );
  OAI2BB2XL U197 ( .B0(n78), .B1(en), .A0N(radius[8]), .A1N(en), .Y(n126) );
  OAI2BB2XL U198 ( .B0(n79), .B1(en), .A0N(radius[9]), .A1N(en), .Y(n127) );
  OAI2BB2XL U199 ( .B0(n80), .B1(en), .A0N(radius[10]), .A1N(en), .Y(n128) );
  OAI2BB2XL U200 ( .B0(n81), .B1(en), .A0N(radius[11]), .A1N(en), .Y(n129) );
  OAI2BB2XL U201 ( .B0(n82), .B1(en), .A0N(central[16]), .A1N(en), .Y(n130) );
  OAI2BB2XL U202 ( .B0(n83), .B1(en), .A0N(central[17]), .A1N(en), .Y(n131) );
  OAI2BB2XL U203 ( .B0(n84), .B1(en), .A0N(central[18]), .A1N(en), .Y(n132) );
  OAI2BB2XL U204 ( .B0(n85), .B1(en), .A0N(central[19]), .A1N(en), .Y(n133) );
  OAI2BB2XL U205 ( .B0(n86), .B1(en), .A0N(central[20]), .A1N(en), .Y(n134) );
  OAI2BB2XL U206 ( .B0(n87), .B1(en), .A0N(central[21]), .A1N(en), .Y(n135) );
  OAI2BB2XL U207 ( .B0(n88), .B1(en), .A0N(central[22]), .A1N(en), .Y(n136) );
  OAI2BB2XL U208 ( .B0(n89), .B1(en), .A0N(central[23]), .A1N(en), .Y(n138) );
  OAI2BB2XL U209 ( .B0(n54), .B1(en), .A0N(radius[0]), .A1N(en), .Y(n102) );
  OAI2BB2XL U210 ( .B0(n55), .B1(en), .A0N(radius[1]), .A1N(en), .Y(n103) );
  OAI2BB2XL U211 ( .B0(n56), .B1(en), .A0N(radius[2]), .A1N(en), .Y(n104) );
  OAI2BB2XL U212 ( .B0(n57), .B1(en), .A0N(radius[3]), .A1N(en), .Y(n105) );
  OAI2BB2XL U213 ( .B0(n58), .B1(en), .A0N(central[0]), .A1N(en), .Y(n106) );
  OAI2BB2XL U214 ( .B0(n59), .B1(en), .A0N(central[1]), .A1N(en), .Y(n107) );
  OAI2BB2XL U215 ( .B0(n60), .B1(en), .A0N(central[2]), .A1N(en), .Y(n108) );
  OAI2BB2XL U216 ( .B0(n61), .B1(en), .A0N(central[3]), .A1N(en), .Y(n109) );
  OAI2BB2XL U217 ( .B0(n62), .B1(en), .A0N(central[4]), .A1N(en), .Y(n110) );
  OAI2BB2XL U218 ( .B0(n63), .B1(en), .A0N(central[5]), .A1N(en), .Y(n111) );
  OAI2BB2XL U219 ( .B0(n64), .B1(en), .A0N(central[6]), .A1N(en), .Y(n112) );
  OAI2BB2XL U220 ( .B0(n65), .B1(en), .A0N(central[7]), .A1N(en), .Y(n113) );
  OAI2BB2XL U221 ( .B0(n66), .B1(en), .A0N(radius[4]), .A1N(en), .Y(n114) );
  OAI2BB2XL U222 ( .B0(n67), .B1(en), .A0N(radius[5]), .A1N(en), .Y(n115) );
  OAI2BB2XL U223 ( .B0(n68), .B1(en), .A0N(radius[6]), .A1N(en), .Y(n116) );
  OAI2BB2XL U224 ( .B0(n69), .B1(en), .A0N(radius[7]), .A1N(en), .Y(n117) );
  OAI2BB2XL U225 ( .B0(n70), .B1(en), .A0N(central[8]), .A1N(en), .Y(n118) );
  OAI2BB2XL U226 ( .B0(n71), .B1(en), .A0N(central[9]), .A1N(en), .Y(n119) );
  OAI2BB2XL U227 ( .B0(n72), .B1(en), .A0N(central[10]), .A1N(en), .Y(n120) );
  OAI2BB2XL U228 ( .B0(n73), .B1(en), .A0N(central[11]), .A1N(en), .Y(n121) );
  OAI2BB2XL U229 ( .B0(n74), .B1(en), .A0N(central[12]), .A1N(en), .Y(n122) );
  NOR2X1 U230 ( .A(en), .B(n301), .Y(N134) );
  XNOR2X1 U231 ( .A(state[0]), .B(state[1]), .Y(n301) );
  AO22X1 U232 ( .A0(mode[1]), .A1(en), .B0(n16), .B1(reg_mode[1]), .Y(n101) );
  AO22X1 U233 ( .A0(mode[0]), .A1(en), .B0(n16), .B1(reg_mode[0]), .Y(n100) );
  NAND2X1 U234 ( .A(en), .B(n275), .Y(n260) );
  XOR2X1 U235 ( .A(mode[1]), .B(mode[0]), .Y(n275) );
  CLKINVX1 U236 ( .A(en), .Y(n16) );
endmodule


module GenerateAddress_MapCell ( circle_A, circle_B, circle_C, now_0, now_1, 
        now_2, reg_mode, count, clk, rst, MapCell_en, result_0, result_1, 
        result_2 );
  input [11:0] circle_A;
  input [11:0] circle_B;
  input [11:0] circle_C;
  input [5:0] now_0;
  input [5:0] now_1;
  input [5:0] now_2;
  input [1:0] reg_mode;
  input count, clk, rst, MapCell_en;
  output result_0, result_1, result_2;
  wire   \MapCell_U0/N98 , \MapCell_U0/N97 , \MapCell_U0/N96 ,
         \MapCell_U0/N95 , \MapCell_U0/N94 , \MapCell_U0/N68 ,
         \MapCell_U0/N67 , \MapCell_U0/N66 , \MapCell_U0/N65 ,
         \MapCell_U0/N47 , \MapCell_U0/N46 , \MapCell_U0/N45 ,
         \MapCell_U0/N44 , \MapCell_U2/N98 , \MapCell_U2/N97 ,
         \MapCell_U2/N96 , \MapCell_U2/N95 , \MapCell_U2/N94 ,
         \MapCell_U2/N68 , \MapCell_U2/N67 , \MapCell_U2/N66 ,
         \MapCell_U2/N65 , \MapCell_U2/N47 , \MapCell_U2/N46 ,
         \MapCell_U2/N45 , \MapCell_U2/N44 , \MapCell_U1/N98 ,
         \MapCell_U1/N97 , \MapCell_U1/N96 , \MapCell_U1/N95 ,
         \MapCell_U1/N94 , \MapCell_U1/N68 , \MapCell_U1/N67 ,
         \MapCell_U1/N66 , \MapCell_U1/N65 , \MapCell_U1/N47 ,
         \MapCell_U1/N46 , \MapCell_U1/N45 , \MapCell_U1/N44 , n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n235,
         n236, n237, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n249, n250, n251, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426,
         n427, n428, n429, n430, n431, n432, n433, n434, n435, n436, n437,
         n438, n439, n440, n441, n442, n443, n444, n445, n446, n447, n448,
         n449, n450, n451, n452, n453, n454, n455, n456, n457, n458, n459,
         n460, n461, n462, n463, n464, n465, n466, n467, n468, n469, n470,
         n471, n472, n473, n474, n475, n476, n477, n478, n479, n480, n481,
         n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492,
         n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
         n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514,
         n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525,
         n526, n527, n528, n529, n530, n531, n532, n533, n534, n535, n1;
  wire   [3:0] center_x0;
  wire   [3:0] center_y0;
  wire   [3:0] center_r0;
  wire   [7:1] \MapCell_U1/add_65/carry ;
  wire   [7:1] \MapCell_U2/add_65/carry ;
  wire   [7:1] \MapCell_U0/add_65/carry ;
  assign center_x0[3] = circle_A[11];
  assign center_x0[2] = circle_A[10];
  assign center_x0[1] = circle_A[9];
  assign center_x0[0] = circle_A[8];
  assign center_y0[3] = circle_A[7];
  assign center_y0[2] = circle_A[6];
  assign center_y0[1] = circle_A[5];
  assign center_y0[0] = circle_A[4];
  assign center_r0[3] = circle_A[3];
  assign center_r0[2] = circle_A[2];
  assign center_r0[1] = circle_A[1];
  assign center_r0[0] = circle_A[0];

  DFFRX1 \MapCell_U0/result_reg  ( .D(n533), .CK(clk), .RN(n283), .Q(result_0)
         );
  DFFRX1 \MapCell_U1/result_reg  ( .D(n534), .CK(clk), .RN(n283), .Q(result_1)
         );
  DFFRX1 \MapCell_U2/result_reg  ( .D(n535), .CK(clk), .RN(n283), .Q(result_2)
         );
  ADDFXL \MapCell_U2/add_65/U1_6  ( .A(\MapCell_U2/N47 ), .B(\MapCell_U2/N68 ), 
        .CI(\MapCell_U2/add_65/carry [6]), .CO(\MapCell_U2/N98 ), .S(
        \MapCell_U2/N97 ) );
  ADDFXL \MapCell_U0/add_65/U1_6  ( .A(\MapCell_U0/N47 ), .B(\MapCell_U0/N68 ), 
        .CI(\MapCell_U0/add_65/carry [6]), .CO(\MapCell_U0/N98 ), .S(
        \MapCell_U0/N97 ) );
  ADDFXL \MapCell_U1/add_65/U1_6  ( .A(\MapCell_U1/N47 ), .B(\MapCell_U1/N68 ), 
        .CI(\MapCell_U1/add_65/carry [6]), .CO(\MapCell_U1/N98 ), .S(
        \MapCell_U1/N97 ) );
  ADDFXL \MapCell_U2/add_65/U1_3  ( .A(\MapCell_U2/N44 ), .B(\MapCell_U2/N65 ), 
        .CI(\MapCell_U2/add_65/carry [3]), .CO(\MapCell_U2/add_65/carry [4]), 
        .S(\MapCell_U2/N94 ) );
  ADDFXL \MapCell_U0/add_65/U1_4  ( .A(\MapCell_U0/N45 ), .B(\MapCell_U0/N66 ), 
        .CI(\MapCell_U0/add_65/carry [4]), .CO(\MapCell_U0/add_65/carry [5]), 
        .S(\MapCell_U0/N95 ) );
  ADDFXL \MapCell_U2/add_65/U1_5  ( .A(\MapCell_U2/N46 ), .B(\MapCell_U2/N67 ), 
        .CI(\MapCell_U2/add_65/carry [5]), .CO(\MapCell_U2/add_65/carry [6]), 
        .S(\MapCell_U2/N96 ) );
  ADDFXL \MapCell_U2/add_65/U1_4  ( .A(\MapCell_U2/N45 ), .B(\MapCell_U2/N66 ), 
        .CI(\MapCell_U2/add_65/carry [4]), .CO(\MapCell_U2/add_65/carry [5]), 
        .S(\MapCell_U2/N95 ) );
  ADDFXL \MapCell_U1/add_65/U1_4  ( .A(\MapCell_U1/N45 ), .B(\MapCell_U1/N66 ), 
        .CI(\MapCell_U1/add_65/carry [4]), .CO(\MapCell_U1/add_65/carry [5]), 
        .S(\MapCell_U1/N95 ) );
  ADDFXL \MapCell_U0/add_65/U1_3  ( .A(\MapCell_U0/N44 ), .B(\MapCell_U0/N65 ), 
        .CI(\MapCell_U0/add_65/carry [3]), .CO(\MapCell_U0/add_65/carry [4]), 
        .S(\MapCell_U0/N94 ) );
  ADDFXL \MapCell_U1/add_65/U1_3  ( .A(\MapCell_U1/N44 ), .B(\MapCell_U1/N65 ), 
        .CI(\MapCell_U1/add_65/carry [3]), .CO(\MapCell_U1/add_65/carry [4]), 
        .S(\MapCell_U1/N94 ) );
  ADDFXL \MapCell_U0/add_65/U1_5  ( .A(\MapCell_U0/N46 ), .B(\MapCell_U0/N67 ), 
        .CI(\MapCell_U0/add_65/carry [5]), .CO(\MapCell_U0/add_65/carry [6]), 
        .S(\MapCell_U0/N96 ) );
  ADDFXL \MapCell_U1/add_65/U1_5  ( .A(\MapCell_U1/N46 ), .B(\MapCell_U1/N67 ), 
        .CI(\MapCell_U1/add_65/carry [5]), .CO(\MapCell_U1/add_65/carry [6]), 
        .S(\MapCell_U1/N96 ) );
  XOR2X1 U1 ( .A(n443), .B(n452), .Y(n450) );
  XOR2X1 U2 ( .A(n470), .B(n479), .Y(n477) );
  NOR2X1 U3 ( .A(n281), .B(n282), .Y(n1) );
  OAI22XL U4 ( .A0(n462), .A1(n471), .B0(n227), .B1(n472), .Y(n467) );
  OAI22XL U5 ( .A0(n435), .A1(n444), .B0(n243), .B1(n445), .Y(n440) );
  OAI22XL U6 ( .A0(n488), .A1(n497), .B0(n242), .B1(n498), .Y(n493) );
  OAI22XL U7 ( .A0(n512), .A1(n521), .B0(n224), .B1(n522), .Y(n517) );
  OAI2BB2XL U8 ( .B0(n420), .B1(n421), .A0N(n399), .A1N(n422), .Y(n401) );
  OAI2BB2XL U9 ( .B0(n389), .B1(n390), .A0N(n368), .A1N(n391), .Y(n370) );
  OAI22XL U10 ( .A0(n334), .A1(n274), .B0(n261), .B1(n333), .Y(n330) );
  OAI22XL U11 ( .A0(n260), .A1(n333), .B0(n334), .B1(n273), .Y(n329) );
  OAI221XL U12 ( .A0(n280), .A1(n250), .B0(n270), .B1(n360), .C0(n396), .Y(
        n383) );
  OAI221XL U13 ( .A0(n280), .A1(n236), .B0(n266), .B1(n360), .C0(n427), .Y(
        n414) );
  OA21XL U14 ( .A0(now_2[2]), .A1(n423), .B0(n420), .Y(n403) );
  OA21XL U15 ( .A0(now_2[5]), .A1(n392), .B0(n389), .Y(n372) );
  OAI221XL U16 ( .A0(n280), .A1(n261), .B0(n274), .B1(n360), .C0(n364), .Y(
        n356) );
  OAI221XL U17 ( .A0(n280), .A1(n260), .B0(n273), .B1(n360), .C0(n363), .Y(
        n357) );
  OAI221XL U18 ( .A0(n280), .A1(n263), .B0(n275), .B1(n360), .C0(n361), .Y(
        n353) );
  CLKINVX1 U19 ( .A(\MapCell_U0/N96 ), .Y(n223) );
  CLKINVX1 U20 ( .A(\MapCell_U1/N96 ), .Y(n225) );
  AOI2BB1X1 U21 ( .A0N(n327), .A1N(n328), .B0(\MapCell_U1/add_65/carry [3]), 
        .Y(n320) );
  AND2X2 U22 ( .A(n327), .B(n328), .Y(\MapCell_U1/add_65/carry [3]) );
  AND2X2 U23 ( .A(n303), .B(n304), .Y(\MapCell_U0/add_65/carry [3]) );
  NAND2X1 U24 ( .A(n259), .B(n225), .Y(n312) );
  CLKINVX1 U25 ( .A(\MapCell_U2/N96 ), .Y(n228) );
  CLKINVX1 U26 ( .A(\MapCell_U1/N95 ), .Y(n226) );
  CLKINVX1 U27 ( .A(\MapCell_U2/N95 ), .Y(n229) );
  AOI2BB1X1 U28 ( .A0N(n303), .A1N(n304), .B0(\MapCell_U0/add_65/carry [3]), 
        .Y(n296) );
  AOI2BB1X1 U29 ( .A0N(n354), .A1N(n355), .B0(\MapCell_U2/add_65/carry [3]), 
        .Y(n346) );
  NOR2X1 U30 ( .A(n253), .B(n441), .Y(n328) );
  NOR2X1 U31 ( .A(n440), .B(n441), .Y(\MapCell_U1/N67 ) );
  NOR2X1 U32 ( .A(n493), .B(n494), .Y(\MapCell_U0/N67 ) );
  NOR2X1 U33 ( .A(n239), .B(n468), .Y(n327) );
  NOR2X1 U34 ( .A(n302), .B(n518), .Y(n303) );
  NOR2X1 U35 ( .A(n467), .B(n468), .Y(\MapCell_U1/N46 ) );
  NOR2X1 U36 ( .A(n517), .B(n518), .Y(\MapCell_U0/N46 ) );
  AOI211X1 U37 ( .A0(n441), .A1(n440), .B0(\MapCell_U1/N67 ), .C0(n324), .Y(
        \MapCell_U1/N65 ) );
  AOI211X1 U38 ( .A0(n468), .A1(n467), .B0(\MapCell_U1/N46 ), .C0(n325), .Y(
        \MapCell_U1/N44 ) );
  AOI211X1 U39 ( .A0(n494), .A1(n493), .B0(\MapCell_U0/N67 ), .C0(n251), .Y(
        \MapCell_U0/N65 ) );
  AOI211X1 U40 ( .A0(n518), .A1(n517), .B0(\MapCell_U0/N46 ), .C0(n237), .Y(
        \MapCell_U0/N44 ) );
  NOR2X1 U41 ( .A(n328), .B(n440), .Y(\MapCell_U1/N66 ) );
  NOR2X1 U42 ( .A(n327), .B(n467), .Y(\MapCell_U1/N45 ) );
  NOR2X1 U43 ( .A(n355), .B(n375), .Y(\MapCell_U2/N66 ) );
  NOR2X1 U44 ( .A(n354), .B(n406), .Y(\MapCell_U2/N45 ) );
  NOR2X1 U45 ( .A(n304), .B(n493), .Y(\MapCell_U0/N66 ) );
  NOR2X1 U46 ( .A(n303), .B(n517), .Y(\MapCell_U0/N45 ) );
  AND2X2 U47 ( .A(n354), .B(n355), .Y(\MapCell_U2/add_65/carry [3]) );
  NAND2X1 U48 ( .A(n258), .B(n228), .Y(n339) );
  AND2X2 U49 ( .A(n312), .B(n332), .Y(n308) );
  OAI22XL U50 ( .A0(n317), .A1(n226), .B0(n259), .B1(n225), .Y(n332) );
  NOR2X1 U51 ( .A(n301), .B(n494), .Y(n304) );
  CLKINVX1 U52 ( .A(n324), .Y(n253) );
  CLKINVX1 U53 ( .A(n325), .Y(n239) );
  CLKINVX1 U54 ( .A(n301), .Y(n251) );
  CLKINVX1 U55 ( .A(n302), .Y(n237) );
  CLKINVX1 U56 ( .A(n331), .Y(n259) );
  XNOR2X1 U57 ( .A(n473), .B(n460), .Y(n471) );
  XNOR2X1 U58 ( .A(n473), .B(n466), .Y(n472) );
  XNOR2X1 U59 ( .A(n446), .B(n433), .Y(n444) );
  XNOR2X1 U60 ( .A(n446), .B(n439), .Y(n445) );
  OAI22XL U61 ( .A0(n230), .A1(n410), .B0(n401), .B1(n411), .Y(n406) );
  XNOR2X1 U62 ( .A(n412), .B(n400), .Y(n410) );
  XNOR2X1 U63 ( .A(n412), .B(n405), .Y(n411) );
  OAI22XL U64 ( .A0(n244), .A1(n379), .B0(n370), .B1(n380), .Y(n375) );
  XNOR2X1 U65 ( .A(n381), .B(n369), .Y(n379) );
  XNOR2X1 U66 ( .A(n381), .B(n374), .Y(n380) );
  XNOR2X1 U67 ( .A(n511), .B(n523), .Y(n521) );
  XNOR2X1 U68 ( .A(n523), .B(n516), .Y(n522) );
  XNOR2X1 U69 ( .A(n487), .B(n499), .Y(n497) );
  XNOR2X1 U70 ( .A(n499), .B(n492), .Y(n498) );
  AND2X2 U71 ( .A(n339), .B(n359), .Y(n335) );
  OAI22XL U72 ( .A0(n344), .A1(n229), .B0(n258), .B1(n228), .Y(n359) );
  OA22X1 U73 ( .A0(n435), .A1(n450), .B0(n243), .B1(n451), .Y(n441) );
  XNOR2X1 U74 ( .A(n442), .B(n452), .Y(n451) );
  OA22X1 U75 ( .A0(n462), .A1(n477), .B0(n227), .B1(n478), .Y(n468) );
  XNOR2X1 U76 ( .A(n469), .B(n479), .Y(n478) );
  OA22X1 U77 ( .A0(n512), .A1(n526), .B0(n224), .B1(n527), .Y(n518) );
  XNOR2X1 U78 ( .A(n520), .B(n528), .Y(n526) );
  XOR2X1 U79 ( .A(n519), .B(n528), .Y(n527) );
  NAND2BX1 U80 ( .AN(n524), .B(n525), .Y(n528) );
  OA22X1 U81 ( .A0(n488), .A1(n502), .B0(n242), .B1(n503), .Y(n494) );
  XNOR2X1 U82 ( .A(n496), .B(n504), .Y(n502) );
  XOR2X1 U83 ( .A(n495), .B(n504), .Y(n503) );
  NAND2BX1 U84 ( .AN(n500), .B(n501), .Y(n504) );
  NOR2X1 U85 ( .A(n254), .B(n376), .Y(n355) );
  NOR2X1 U86 ( .A(n375), .B(n376), .Y(\MapCell_U2/N67 ) );
  NOR2X1 U87 ( .A(n240), .B(n407), .Y(n354) );
  OA21XL U88 ( .A0(n524), .A1(n519), .B0(n525), .Y(n516) );
  OA21XL U89 ( .A0(n500), .A1(n495), .B0(n501), .Y(n492) );
  NOR2X1 U90 ( .A(n406), .B(n407), .Y(\MapCell_U2/N46 ) );
  AOI211X1 U91 ( .A0(n376), .A1(n375), .B0(\MapCell_U2/N67 ), .C0(n350), .Y(
        \MapCell_U2/N65 ) );
  AOI211X1 U92 ( .A0(n407), .A1(n406), .B0(\MapCell_U2/N46 ), .C0(n351), .Y(
        \MapCell_U2/N44 ) );
  OR3X2 U93 ( .A(n318), .B(\MapCell_U1/N94 ), .C(n319), .Y(n323) );
  OR3X2 U94 ( .A(n262), .B(\MapCell_U2/N94 ), .C(n345), .Y(n349) );
  NOR2X1 U95 ( .A(n431), .B(n432), .Y(\MapCell_U1/N68 ) );
  NOR2X1 U96 ( .A(n458), .B(n459), .Y(\MapCell_U1/N47 ) );
  AOI32X1 U97 ( .A0(n433), .A1(n243), .A2(n434), .B0(n435), .B1(n436), .Y(n431) );
  CLKINVX1 U98 ( .A(n512), .Y(n224) );
  CLKINVX1 U99 ( .A(n488), .Y(n242) );
  CLKINVX1 U100 ( .A(n462), .Y(n227) );
  CLKINVX1 U101 ( .A(n435), .Y(n243) );
  CLKINVX1 U102 ( .A(n401), .Y(n230) );
  CLKINVX1 U103 ( .A(n370), .Y(n244) );
  NAND2X1 U104 ( .A(n305), .B(n223), .Y(n290) );
  AOI32X1 U105 ( .A0(n314), .A1(n315), .A2(n316), .B0(n317), .B1(n226), .Y(
        n313) );
  OAI21XL U106 ( .A0(n318), .A1(n319), .B0(\MapCell_U1/N94 ), .Y(n316) );
  NAND3X1 U107 ( .A(n321), .B(n323), .C(n320), .Y(n314) );
  OAI211X1 U108 ( .A0(n320), .A1(n321), .B0(n322), .C0(n323), .Y(n315) );
  AOI32X1 U109 ( .A0(n341), .A1(n342), .A2(n343), .B0(n344), .B1(n229), .Y(
        n340) );
  OAI21XL U110 ( .A0(n262), .A1(n345), .B0(\MapCell_U2/N94 ), .Y(n343) );
  NAND3X1 U111 ( .A(n347), .B(n349), .C(n346), .Y(n341) );
  OAI211X1 U112 ( .A0(n346), .A1(n347), .B0(n348), .C0(n349), .Y(n342) );
  CLKINVX1 U113 ( .A(\MapCell_U0/N97 ), .Y(n222) );
  NOR2BX1 U114 ( .AN(n442), .B(n443), .Y(n324) );
  NOR2BX1 U115 ( .AN(n469), .B(n470), .Y(n325) );
  OAI21XL U116 ( .A0(n329), .A1(n330), .B0(n331), .Y(n319) );
  NAND2BX1 U117 ( .AN(n496), .B(n495), .Y(n301) );
  NAND2BX1 U118 ( .AN(n520), .B(n519), .Y(n302) );
  OAI21XL U119 ( .A0(n520), .A1(n524), .B0(n525), .Y(n511) );
  OAI21XL U120 ( .A0(n496), .A1(n500), .B0(n501), .Y(n487) );
  NAND2X1 U121 ( .A(n329), .B(n330), .Y(n331) );
  OAI21XL U122 ( .A0(n324), .A1(n325), .B0(n326), .Y(n322) );
  OAI21XL U123 ( .A0(n253), .A1(n239), .B0(n318), .Y(n326) );
  CLKINVX1 U124 ( .A(n350), .Y(n254) );
  CLKINVX1 U125 ( .A(n351), .Y(n240) );
  NAND2X1 U126 ( .A(n318), .B(n330), .Y(n321) );
  AND2X2 U127 ( .A(n329), .B(n321), .Y(n317) );
  CLKINVX1 U128 ( .A(n358), .Y(n258) );
  AOI22X1 U129 ( .A0(n481), .A1(n482), .B0(n459), .B1(n483), .Y(n462) );
  OAI21XL U130 ( .A0(n466), .A1(n473), .B0(n465), .Y(n483) );
  AOI22X1 U131 ( .A0(n454), .A1(n455), .B0(n432), .B1(n456), .Y(n435) );
  OAI21XL U132 ( .A0(n439), .A1(n446), .B0(n438), .Y(n456) );
  AOI22X1 U133 ( .A0(n505), .A1(n245), .B0(n486), .B1(n506), .Y(n488) );
  OAI21XL U134 ( .A0(n492), .A1(n499), .B0(n491), .Y(n506) );
  OAI22XL U135 ( .A0(n236), .A1(n333), .B0(n334), .B1(n266), .Y(n475) );
  OAI22XL U136 ( .A0(n250), .A1(n333), .B0(n334), .B1(n270), .Y(n448) );
  OAI21XL U137 ( .A0(n405), .A1(n412), .B0(n404), .Y(n422) );
  OAI21XL U138 ( .A0(n374), .A1(n381), .B0(n373), .Y(n391) );
  NOR2X1 U139 ( .A(n429), .B(n1), .Y(n334) );
  OAI21XL U140 ( .A0(n514), .A1(n233), .B0(n515), .Y(n523) );
  OAI21XL U141 ( .A0(n490), .A1(n247), .B0(n491), .Y(n499) );
  OAI21XL U142 ( .A0(n461), .A1(n464), .B0(n465), .Y(n473) );
  OAI21XL U143 ( .A0(n434), .A1(n437), .B0(n438), .Y(n446) );
  OAI21XL U144 ( .A0(n232), .A1(n403), .B0(n404), .Y(n412) );
  OAI21XL U145 ( .A0(n246), .A1(n372), .B0(n373), .Y(n381) );
  OAI22XL U146 ( .A0(n474), .A1(n475), .B0(n470), .B1(n476), .Y(n460) );
  OAI22XL U147 ( .A0(n413), .A1(n414), .B0(n408), .B1(n235), .Y(n400) );
  CLKINVX1 U148 ( .A(n415), .Y(n235) );
  OAI22XL U149 ( .A0(n447), .A1(n448), .B0(n443), .B1(n449), .Y(n433) );
  OAI22XL U150 ( .A0(n382), .A1(n383), .B0(n377), .B1(n249), .Y(n369) );
  CLKINVX1 U151 ( .A(n384), .Y(n249) );
  AOI2BB2X1 U152 ( .B0(n415), .B1(n409), .A0N(n413), .A1N(n414), .Y(n405) );
  AOI2BB2X1 U153 ( .B0(n384), .B1(n378), .A0N(n382), .A1N(n383), .Y(n374) );
  NAND2X1 U154 ( .A(n282), .B(n281), .Y(n333) );
  OA22X1 U155 ( .A0(n233), .A1(n333), .B0(n334), .B1(n265), .Y(n461) );
  OA22X1 U156 ( .A0(n247), .A1(n333), .B0(n334), .B1(n269), .Y(n434) );
  OA22X1 U157 ( .A0(n244), .A1(n385), .B0(n370), .B1(n386), .Y(n376) );
  XOR2X1 U158 ( .A(n377), .B(n387), .Y(n385) );
  XOR2X1 U159 ( .A(n378), .B(n387), .Y(n386) );
  XOR2X1 U160 ( .A(n383), .B(n382), .Y(n387) );
  OA22X1 U161 ( .A0(n230), .A1(n416), .B0(n401), .B1(n417), .Y(n407) );
  XOR2X1 U162 ( .A(n408), .B(n418), .Y(n416) );
  XOR2X1 U163 ( .A(n409), .B(n418), .Y(n417) );
  XOR2X1 U164 ( .A(n414), .B(n413), .Y(n418) );
  OA22X1 U165 ( .A0(n241), .A1(n333), .B0(n334), .B1(n267), .Y(n480) );
  OA22X1 U166 ( .A0(n255), .A1(n333), .B0(n334), .B1(n271), .Y(n453) );
  NOR2X1 U167 ( .A(n485), .B(n486), .Y(\MapCell_U0/N68 ) );
  NOR2X1 U168 ( .A(n509), .B(n510), .Y(\MapCell_U0/N47 ) );
  AOI32X1 U169 ( .A0(n242), .A1(n247), .A2(n487), .B0(n488), .B1(n489), .Y(
        n485) );
  AOI22X1 U170 ( .A0(n529), .A1(n231), .B0(n510), .B1(n530), .Y(n512) );
  OAI21XL U171 ( .A0(n516), .A1(n523), .B0(n515), .Y(n530) );
  NOR2X1 U172 ( .A(n377), .B(n378), .Y(n350) );
  NOR2X1 U173 ( .A(n408), .B(n409), .Y(n351) );
  NAND2X1 U174 ( .A(n382), .B(n383), .Y(n384) );
  NAND2X1 U175 ( .A(n413), .B(n414), .Y(n415) );
  AND2X2 U176 ( .A(n290), .B(n306), .Y(n285) );
  OAI2BB2XL U177 ( .B0(n305), .B1(n223), .A0N(n289), .A1N(\MapCell_U0/N95 ), 
        .Y(n306) );
  OA22X1 U178 ( .A0(n474), .A1(n475), .B0(n476), .B1(n469), .Y(n466) );
  OA22X1 U179 ( .A0(n447), .A1(n448), .B0(n449), .B1(n442), .Y(n439) );
  NOR2X1 U180 ( .A(n279), .B(n480), .Y(n470) );
  NOR2X1 U181 ( .A(n278), .B(n453), .Y(n443) );
  OA22X1 U182 ( .A0(n231), .A1(n333), .B0(n334), .B1(n264), .Y(n482) );
  OA22X1 U183 ( .A0(n245), .A1(n333), .B0(n334), .B1(n268), .Y(n455) );
  NOR2X1 U184 ( .A(n250), .B(n508), .Y(n500) );
  NAND2X1 U185 ( .A(n532), .B(n236), .Y(n525) );
  NAND2X1 U186 ( .A(n508), .B(n250), .Y(n501) );
  NOR2X1 U187 ( .A(n236), .B(n532), .Y(n524) );
  XOR2X1 U188 ( .A(n447), .B(n448), .Y(n452) );
  XOR2X1 U189 ( .A(n474), .B(n475), .Y(n479) );
  XOR2X1 U190 ( .A(n481), .B(n482), .Y(n459) );
  XOR2X1 U191 ( .A(n454), .B(n455), .Y(n432) );
  NAND2X1 U192 ( .A(n514), .B(n233), .Y(n515) );
  NAND2X1 U193 ( .A(n490), .B(n247), .Y(n491) );
  NAND2X1 U194 ( .A(n464), .B(n461), .Y(n465) );
  NAND2X1 U195 ( .A(n437), .B(n434), .Y(n438) );
  AOI211X1 U196 ( .A0(n256), .A1(n335), .B0(n336), .C0(n284), .Y(n535) );
  NAND3BX1 U197 ( .AN(\MapCell_U2/N98 ), .B(n337), .C(n338), .Y(n336) );
  OAI21XL U198 ( .A0(n335), .A1(n256), .B0(\MapCell_U2/N97 ), .Y(n338) );
  OAI211X1 U199 ( .A0(\MapCell_U2/N97 ), .A1(n256), .B0(n339), .C0(n340), .Y(
        n337) );
  AOI211X1 U200 ( .A0(n307), .A1(n308), .B0(n309), .C0(n284), .Y(n534) );
  NAND3BX1 U201 ( .AN(\MapCell_U1/N98 ), .B(n310), .C(n311), .Y(n309) );
  OAI21XL U202 ( .A0(n308), .A1(n307), .B0(\MapCell_U1/N97 ), .Y(n311) );
  OAI211X1 U203 ( .A0(\MapCell_U1/N97 ), .A1(n307), .B0(n312), .C0(n313), .Y(
        n310) );
  AOI211X1 U204 ( .A0(\MapCell_U0/N97 ), .A1(n285), .B0(n286), .C0(n284), .Y(
        n533) );
  NAND3BX1 U205 ( .AN(\MapCell_U0/N98 ), .B(n287), .C(n288), .Y(n286) );
  OAI21XL U206 ( .A0(n285), .A1(\MapCell_U0/N97 ), .B0(n257), .Y(n288) );
  OAI211X1 U207 ( .A0(\MapCell_U0/N95 ), .A1(n289), .B0(n290), .C0(n291), .Y(
        n287) );
  XOR2X1 U208 ( .A(n421), .B(n420), .Y(n399) );
  XOR2X1 U209 ( .A(n390), .B(n389), .Y(n368) );
  NAND2X1 U210 ( .A(n403), .B(n232), .Y(n404) );
  NAND2X1 U211 ( .A(n372), .B(n246), .Y(n373) );
  NOR2X1 U212 ( .A(n367), .B(n368), .Y(\MapCell_U2/N68 ) );
  NOR2X1 U213 ( .A(n398), .B(n399), .Y(\MapCell_U2/N47 ) );
  AOI32X1 U214 ( .A0(n369), .A1(n370), .A2(n246), .B0(n244), .B1(n371), .Y(
        n367) );
  NAND2X1 U215 ( .A(n453), .B(n278), .Y(n442) );
  NAND2X1 U216 ( .A(n480), .B(n279), .Y(n469) );
  AND2X2 U217 ( .A(n447), .B(n448), .Y(n449) );
  AND2X2 U218 ( .A(n474), .B(n475), .Y(n476) );
  OAI21XL U219 ( .A0(n356), .A1(n357), .B0(n358), .Y(n345) );
  OAI22XL U220 ( .A0(n350), .A1(n351), .B0(n352), .B1(n353), .Y(n348) );
  NOR2X1 U221 ( .A(n254), .B(n240), .Y(n352) );
  NOR2X1 U222 ( .A(n277), .B(n241), .Y(n520) );
  NOR2X1 U223 ( .A(n276), .B(n255), .Y(n496) );
  OAI2BB2XL U224 ( .B0(n437), .B1(n434), .A0N(n438), .A1N(n439), .Y(n436) );
  OAI2BB2XL U225 ( .B0(n490), .B1(n247), .A0N(n491), .A1N(n492), .Y(n489) );
  NAND2X1 U226 ( .A(n356), .B(n357), .Y(n358) );
  NAND2X1 U227 ( .A(n241), .B(n277), .Y(n519) );
  NAND2X1 U228 ( .A(n255), .B(n276), .Y(n495) );
  OAI2BB2XL U229 ( .B0(n372), .B1(n246), .A0N(n373), .A1N(n374), .Y(n371) );
  AOI32X1 U230 ( .A0(n460), .A1(n227), .A2(n461), .B0(n462), .B1(n463), .Y(
        n458) );
  OAI2BB2XL U231 ( .B0(n464), .B1(n461), .A0N(n465), .A1N(n466), .Y(n463) );
  AOI32X1 U232 ( .A0(n400), .A1(n401), .A2(n232), .B0(n230), .B1(n402), .Y(
        n398) );
  OAI2BB2XL U233 ( .B0(n403), .B1(n232), .A0N(n404), .A1N(n405), .Y(n402) );
  AOI32X1 U234 ( .A0(n224), .A1(n233), .A2(n511), .B0(n512), .B1(n513), .Y(
        n509) );
  OAI2BB2XL U235 ( .B0(n514), .B1(n233), .A0N(n515), .A1N(n516), .Y(n513) );
  NAND2X1 U236 ( .A(n262), .B(n356), .Y(n347) );
  CLKINVX1 U237 ( .A(n353), .Y(n262) );
  OA22X1 U238 ( .A0(n263), .A1(n333), .B0(n334), .B1(n275), .Y(n318) );
  NOR2X1 U239 ( .A(n260), .B(n261), .Y(n305) );
  AOI21X1 U240 ( .A0(n260), .A1(n261), .B0(n305), .Y(n295) );
  OA22X1 U241 ( .A0(n257), .A1(n333), .B0(n334), .B1(n272), .Y(n307) );
  AND2X2 U242 ( .A(n357), .B(n347), .Y(n344) );
  XNOR2X1 U243 ( .A(now_0[1]), .B(n277), .Y(n532) );
  XNOR2X1 U244 ( .A(now_0[4]), .B(n276), .Y(n508) );
  XNOR2X1 U245 ( .A(now_1[4]), .B(now_1[3]), .Y(n447) );
  XNOR2X1 U246 ( .A(now_1[1]), .B(now_1[0]), .Y(n474) );
  XNOR2X1 U247 ( .A(reg_mode[0]), .B(n281), .Y(n429) );
  XNOR2X1 U248 ( .A(center_x0[3]), .B(n529), .Y(n510) );
  AOI2BB1X1 U249 ( .A0N(now_0[2]), .A1N(n531), .B0(n529), .Y(n514) );
  AOI2BB1X1 U250 ( .A0N(now_0[5]), .A1N(n507), .B0(n505), .Y(n490) );
  AOI2BB1X1 U251 ( .A0N(now_1[2]), .A1N(n484), .B0(n481), .Y(n464) );
  AOI2BB1X1 U252 ( .A0N(now_1[5]), .A1N(n457), .B0(n454), .Y(n437) );
  NAND2X1 U253 ( .A(circle_C[5]), .B(n1), .Y(n396) );
  NAND2X1 U254 ( .A(circle_C[9]), .B(n1), .Y(n427) );
  NOR2X1 U255 ( .A(n388), .B(now_2[3]), .Y(n378) );
  NOR2X1 U256 ( .A(n419), .B(now_2[0]), .Y(n409) );
  NAND3BX1 U257 ( .AN(\MapCell_U0/N94 ), .B(n295), .C(center_r0[0]), .Y(n299)
         );
  NAND2BX1 U258 ( .AN(count), .B(n429), .Y(n360) );
  OAI221XL U259 ( .A0(n280), .A1(n241), .B0(n267), .B1(n360), .C0(n426), .Y(
        n419) );
  NAND2X1 U260 ( .A(circle_C[8]), .B(n1), .Y(n426) );
  OAI221XL U261 ( .A0(n280), .A1(n255), .B0(n271), .B1(n360), .C0(n395), .Y(
        n388) );
  NAND2X1 U262 ( .A(circle_C[4]), .B(n1), .Y(n395) );
  NOR2BX1 U263 ( .AN(now_0[4]), .B(n276), .Y(n507) );
  CLKINVX1 U264 ( .A(now_0[0]), .Y(n277) );
  NOR2BX1 U265 ( .AN(now_0[1]), .B(n277), .Y(n531) );
  NOR2BX1 U266 ( .AN(now_1[4]), .B(n278), .Y(n457) );
  NOR2BX1 U267 ( .AN(now_1[1]), .B(n279), .Y(n484) );
  CLKINVX1 U268 ( .A(reg_mode[1]), .Y(n281) );
  CLKINVX1 U269 ( .A(now_0[3]), .Y(n276) );
  OAI221XL U270 ( .A0(n280), .A1(n231), .B0(n264), .B1(n360), .C0(n428), .Y(
        n421) );
  NAND2X1 U271 ( .A(circle_C[11]), .B(n1), .Y(n428) );
  OAI221XL U272 ( .A0(n280), .A1(n245), .B0(n268), .B1(n360), .C0(n397), .Y(
        n390) );
  NAND2X1 U273 ( .A(circle_C[7]), .B(n1), .Y(n397) );
  CLKINVX1 U274 ( .A(reg_mode[0]), .Y(n282) );
  AND2X2 U275 ( .A(now_2[3]), .B(n388), .Y(n377) );
  AND2X2 U276 ( .A(now_2[0]), .B(n419), .Y(n408) );
  CLKINVX1 U277 ( .A(now_1[3]), .Y(n278) );
  NAND2X1 U278 ( .A(now_2[2]), .B(n423), .Y(n420) );
  CLKINVX1 U279 ( .A(now_1[0]), .Y(n279) );
  NAND2X1 U280 ( .A(now_2[5]), .B(n392), .Y(n389) );
  AND2X2 U281 ( .A(now_1[2]), .B(n484), .Y(n481) );
  AND2X2 U282 ( .A(now_1[5]), .B(n457), .Y(n454) );
  AND2X2 U283 ( .A(now_0[5]), .B(n507), .Y(n505) );
  AND2X2 U284 ( .A(now_0[2]), .B(n531), .Y(n529) );
  CLKINVX1 U285 ( .A(center_x0[1]), .Y(n236) );
  CLKINVX1 U286 ( .A(center_y0[1]), .Y(n250) );
  AND2X2 U287 ( .A(now_2[4]), .B(now_2[3]), .Y(n392) );
  AND2X2 U288 ( .A(now_2[1]), .B(now_2[0]), .Y(n423) );
  CLKINVX1 U289 ( .A(center_x0[0]), .Y(n241) );
  CLKINVX1 U290 ( .A(n424), .Y(n232) );
  OAI221XL U291 ( .A0(n280), .A1(n233), .B0(n265), .B1(n360), .C0(n425), .Y(
        n424) );
  NAND2X1 U292 ( .A(circle_C[10]), .B(n1), .Y(n425) );
  CLKINVX1 U293 ( .A(n393), .Y(n246) );
  OAI221XL U294 ( .A0(n280), .A1(n247), .B0(n269), .B1(n360), .C0(n394), .Y(
        n393) );
  NAND2X1 U295 ( .A(circle_C[6]), .B(n1), .Y(n394) );
  CLKINVX1 U296 ( .A(n430), .Y(n280) );
  OAI2BB1X1 U297 ( .A0N(n429), .A1N(count), .B0(n333), .Y(n430) );
  AOI32X1 U298 ( .A0(n292), .A1(n293), .A2(n294), .B0(center_r0[3]), .B1(n222), 
        .Y(n291) );
  OAI2BB1X1 U299 ( .A0N(n295), .A1N(center_r0[0]), .B0(\MapCell_U0/N94 ), .Y(
        n294) );
  NAND3X1 U300 ( .A(n297), .B(n299), .C(n296), .Y(n292) );
  OAI211X1 U301 ( .A0(n296), .A1(n297), .B0(n298), .C0(n299), .Y(n293) );
  CLKINVX1 U302 ( .A(circle_B[9]), .Y(n266) );
  XNOR2X1 U303 ( .A(now_2[4]), .B(now_2[3]), .Y(n382) );
  XNOR2X1 U304 ( .A(now_2[1]), .B(now_2[0]), .Y(n413) );
  XNOR2X1 U305 ( .A(center_y0[3]), .B(n505), .Y(n486) );
  NAND2X1 U306 ( .A(circle_C[1]), .B(n1), .Y(n364) );
  NAND2X1 U307 ( .A(circle_C[2]), .B(n1), .Y(n363) );
  NAND2X1 U308 ( .A(circle_C[0]), .B(n1), .Y(n361) );
  CLKINVX1 U309 ( .A(center_x0[2]), .Y(n233) );
  CLKINVX1 U310 ( .A(center_y0[2]), .Y(n247) );
  CLKINVX1 U311 ( .A(center_y0[0]), .Y(n255) );
  CLKINVX1 U312 ( .A(center_x0[3]), .Y(n231) );
  CLKINVX1 U313 ( .A(center_y0[3]), .Y(n245) );
  CLKINVX1 U314 ( .A(circle_B[5]), .Y(n270) );
  CLKINVX1 U315 ( .A(circle_B[10]), .Y(n265) );
  CLKINVX1 U316 ( .A(circle_B[8]), .Y(n267) );
  CLKINVX1 U317 ( .A(circle_B[4]), .Y(n271) );
  CLKINVX1 U318 ( .A(circle_B[11]), .Y(n264) );
  CLKINVX1 U319 ( .A(circle_B[7]), .Y(n268) );
  CLKINVX1 U320 ( .A(circle_B[6]), .Y(n269) );
  OAI22XL U321 ( .A0(n251), .A1(n237), .B0(center_r0[0]), .B1(n300), .Y(n298)
         );
  NOR2X1 U322 ( .A(n301), .B(n302), .Y(n300) );
  NAND2X1 U323 ( .A(center_r0[1]), .B(n263), .Y(n297) );
  CLKINVX1 U324 ( .A(center_r0[2]), .Y(n260) );
  CLKINVX1 U325 ( .A(center_r0[1]), .Y(n261) );
  CLKINVX1 U326 ( .A(center_r0[0]), .Y(n263) );
  CLKINVX1 U327 ( .A(circle_B[1]), .Y(n274) );
  CLKINVX1 U328 ( .A(circle_B[2]), .Y(n273) );
  CLKINVX1 U329 ( .A(n365), .Y(n256) );
  OAI221XL U330 ( .A0(n280), .A1(n257), .B0(n272), .B1(n360), .C0(n366), .Y(
        n365) );
  NAND2X1 U331 ( .A(circle_C[3]), .B(n1), .Y(n366) );
  CLKINVX1 U332 ( .A(circle_B[0]), .Y(n275) );
  NAND2X1 U333 ( .A(center_r0[2]), .B(n297), .Y(n289) );
  CLKINVX1 U334 ( .A(center_r0[3]), .Y(n257) );
  CLKINVX1 U335 ( .A(circle_B[3]), .Y(n272) );
  CLKINVX1 U336 ( .A(MapCell_en), .Y(n284) );
  CLKINVX1 U337 ( .A(rst), .Y(n283) );
endmodule


module CandidateAdder ( clk, rst, en, now_0, count, reg_mode, result_0, 
        result_1, result_2, candidate );
  input [5:0] now_0;
  input [1:0] reg_mode;
  output [7:0] candidate;
  input clk, rst, en, count, result_0, result_1, result_2;
  wire   tmp, N29, N30, N31, N32, N33, N34, N86, N87, N88, N89, N90, N91, N92,
         N96, N97, N98, N99, N100, N101, N140, N141, N142, N143, N144, N145,
         N146, N150, N151, N152, N153, N154, N155, \dp_cluster_0/N39 , n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, \dp_cluster_0/add_2_root_add_28_S2_I3_C36_2_aco/carry[1] , n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218;
  wire   [7:2] \add_28_S2_I2_C40/carry ;
  wire   [7:2] \add_28_S2_I2_C38/carry ;
  wire   [7:2] \r407/carry ;

  ADDFXL \dp_cluster_0/add_2_root_add_28_S2_I3_C36_2_aco/U1_0  ( .A(
        candidate[0]), .B(result_1), .CI(result_2), .CO(
        \dp_cluster_0/add_2_root_add_28_S2_I3_C36_2_aco/carry[1] ), .S(
        \dp_cluster_0/N39 ) );
  DFFRX1 \candidate_reg[7]  ( .D(n82), .CK(clk), .RN(n142), .Q(candidate[7]), 
        .QN(n74) );
  DFFRX1 \candidate_reg[6]  ( .D(n81), .CK(clk), .RN(n142), .Q(candidate[6]), 
        .QN(n73) );
  DFFRX1 \candidate_reg[5]  ( .D(n80), .CK(clk), .RN(n142), .Q(candidate[5]), 
        .QN(n72) );
  DFFRX1 \candidate_reg[1]  ( .D(n79), .CK(clk), .RN(n142), .Q(candidate[1]), 
        .QN(n71) );
  DFFRX1 \candidate_reg[2]  ( .D(n78), .CK(clk), .RN(n142), .Q(candidate[2]), 
        .QN(n70) );
  DFFRX1 \candidate_reg[3]  ( .D(n77), .CK(clk), .RN(n142), .Q(candidate[3]), 
        .QN(n69) );
  DFFRX1 \candidate_reg[4]  ( .D(n76), .CK(clk), .RN(n142), .Q(candidate[4]), 
        .QN(n68) );
  DFFRX1 tmp_reg ( .D(result_2), .CK(clk), .RN(n142), .Q(tmp) );
  DFFRX1 \candidate_reg[0]  ( .D(n83), .CK(clk), .RN(n142), .Q(candidate[0]), 
        .QN(n75) );
  ADDHXL \add_28_S2_I2_C38/U1_1_6  ( .A(N92), .B(\add_28_S2_I2_C38/carry [6]), 
        .CO(\add_28_S2_I2_C38/carry [7]), .S(N101) );
  ADDHXL \r407/U1_1_6  ( .A(candidate[6]), .B(\r407/carry [6]), .CO(
        \r407/carry [7]), .S(N34) );
  ADDHXL \r407/U1_1_1  ( .A(candidate[1]), .B(candidate[0]), .CO(
        \r407/carry [2]), .S(N29) );
  ADDHXL \r407/U1_1_5  ( .A(candidate[5]), .B(\r407/carry [5]), .CO(
        \r407/carry [6]), .S(N33) );
  ADDHXL \r407/U1_1_4  ( .A(candidate[4]), .B(\r407/carry [4]), .CO(
        \r407/carry [5]), .S(N32) );
  ADDHXL \r407/U1_1_3  ( .A(candidate[3]), .B(\r407/carry [3]), .CO(
        \r407/carry [4]), .S(N31) );
  ADDHXL \r407/U1_1_2  ( .A(candidate[2]), .B(\r407/carry [2]), .CO(
        \r407/carry [3]), .S(N30) );
  ADDHXL \add_28_S2_I2_C38/U1_1_5  ( .A(N91), .B(\add_28_S2_I2_C38/carry [5]), 
        .CO(\add_28_S2_I2_C38/carry [6]), .S(N100) );
  ADDHXL \add_28_S2_I2_C38/U1_1_4  ( .A(N90), .B(\add_28_S2_I2_C38/carry [4]), 
        .CO(\add_28_S2_I2_C38/carry [5]), .S(N99) );
  ADDHXL \add_28_S2_I2_C38/U1_1_3  ( .A(N89), .B(\add_28_S2_I2_C38/carry [3]), 
        .CO(\add_28_S2_I2_C38/carry [4]), .S(N98) );
  ADDHXL \add_28_S2_I2_C38/U1_1_2  ( .A(N88), .B(\add_28_S2_I2_C38/carry [2]), 
        .CO(\add_28_S2_I2_C38/carry [3]), .S(N97) );
  ADDHXL \add_28_S2_I2_C38/U1_1_1  ( .A(N87), .B(N86), .CO(
        \add_28_S2_I2_C38/carry [2]), .S(N96) );
  ADDHXL \add_28_S2_I2_C40/U1_1_6  ( .A(N146), .B(\add_28_S2_I2_C40/carry [6]), 
        .CO(\add_28_S2_I2_C40/carry [7]), .S(N155) );
  ADDHXL \add_28_S2_I2_C40/U1_1_5  ( .A(N145), .B(\add_28_S2_I2_C40/carry [5]), 
        .CO(\add_28_S2_I2_C40/carry [6]), .S(N154) );
  ADDHXL \add_28_S2_I2_C40/U1_1_4  ( .A(N144), .B(\add_28_S2_I2_C40/carry [4]), 
        .CO(\add_28_S2_I2_C40/carry [5]), .S(N153) );
  ADDHXL \add_28_S2_I2_C40/U1_1_3  ( .A(N143), .B(\add_28_S2_I2_C40/carry [3]), 
        .CO(\add_28_S2_I2_C40/carry [4]), .S(N152) );
  ADDHXL \add_28_S2_I2_C40/U1_1_2  ( .A(N142), .B(\add_28_S2_I2_C40/carry [2]), 
        .CO(\add_28_S2_I2_C40/carry [3]), .S(N151) );
  ADDHXL \add_28_S2_I2_C40/U1_1_1  ( .A(N141), .B(N140), .CO(
        \add_28_S2_I2_C40/carry [2]), .S(N150) );
  NAND2X1 U92 ( .A(candidate[1]), .B(
        \dp_cluster_0/add_2_root_add_28_S2_I3_C36_2_aco/carry[1] ), .Y(n211)
         );
  NAND2X1 U93 ( .A(candidate[5]), .B(n174), .Y(n166) );
  OAI21XL U94 ( .A0(tmp), .A1(result_2), .B0(n170), .Y(n162) );
  OAI21XL U95 ( .A0(result_1), .A1(result_0), .B0(n213), .Y(n212) );
  OAI31XL U96 ( .A0(n201), .A1(n202), .A2(n203), .B0(n204), .Y(n155) );
  CLKINVX1 U97 ( .A(n149), .Y(n143) );
  CLKINVX1 U98 ( .A(n162), .Y(n134) );
  NOR2BX1 U99 ( .AN(n175), .B(n176), .Y(n168) );
  NOR2X1 U100 ( .A(n186), .B(n187), .Y(n192) );
  NOR2BX1 U101 ( .AN(n181), .B(n182), .Y(n175) );
  NAND2X1 U102 ( .A(n192), .B(n191), .Y(n196) );
  NOR2X1 U103 ( .A(n196), .B(n197), .Y(n181) );
  OAI22XL U104 ( .A0(n134), .A1(candidate[7]), .B0(n131), .B1(n162), .Y(n161)
         );
  OAI22XL U105 ( .A0(n136), .A1(candidate[7]), .B0(n131), .B1(n170), .Y(n169)
         );
  NAND4BX1 U106 ( .AN(n213), .B(n204), .C(n208), .D(n144), .Y(n149) );
  NOR3BXL U107 ( .AN(n204), .B(n205), .C(n212), .Y(n152) );
  CLKINVX1 U108 ( .A(n170), .Y(n136) );
  NAND3BX1 U109 ( .AN(n209), .B(n146), .C(n145), .Y(n206) );
  AND4X1 U110 ( .A(n204), .B(n209), .C(n146), .D(n145), .Y(n153) );
  NAND2X1 U111 ( .A(n208), .B(n213), .Y(n207) );
  CLKINVX1 U112 ( .A(N30), .Y(n140) );
  CLKINVX1 U113 ( .A(N31), .Y(n139) );
  CLKINVX1 U114 ( .A(N32), .Y(n138) );
  CLKINVX1 U115 ( .A(N33), .Y(n137) );
  CLKINVX1 U116 ( .A(N34), .Y(n132) );
  CLKINVX1 U117 ( .A(N29), .Y(n141) );
  CLKINVX1 U118 ( .A(n212), .Y(n147) );
  CLKINVX1 U119 ( .A(n156), .Y(n131) );
  CLKINVX1 U120 ( .A(n155), .Y(n135) );
  NAND2X1 U121 ( .A(tmp), .B(result_2), .Y(n170) );
  XNOR2X1 U122 ( .A(n166), .B(n73), .Y(n167) );
  NAND2X1 U123 ( .A(\dp_cluster_0/N39 ), .B(result_0), .Y(n186) );
  NOR2BX1 U124 ( .AN(n180), .B(n68), .Y(n174) );
  NOR2BX1 U125 ( .AN(n210), .B(n69), .Y(n180) );
  XOR2X1 U126 ( .A(n75), .B(n162), .Y(N140) );
  NOR2X1 U127 ( .A(n211), .B(n70), .Y(n210) );
  XOR2X1 U128 ( .A(\dp_cluster_0/add_2_root_add_28_S2_I3_C36_2_aco/carry[1] ), 
        .B(n71), .Y(n187) );
  XOR2X1 U129 ( .A(n210), .B(n69), .Y(n197) );
  XOR2X1 U130 ( .A(n211), .B(n70), .Y(n191) );
  OAI22XL U131 ( .A0(n71), .A1(n134), .B0(n162), .B1(n141), .Y(N141) );
  OAI22XL U132 ( .A0(n70), .A1(n134), .B0(n162), .B1(n140), .Y(N142) );
  OAI22XL U133 ( .A0(n69), .A1(n134), .B0(n162), .B1(n139), .Y(N143) );
  OAI22XL U134 ( .A0(n68), .A1(n134), .B0(n162), .B1(n138), .Y(N144) );
  OAI22XL U135 ( .A0(n72), .A1(n134), .B0(n162), .B1(n137), .Y(N145) );
  XOR2X1 U136 ( .A(n180), .B(n68), .Y(n182) );
  XOR2X1 U137 ( .A(n174), .B(n72), .Y(n176) );
  OAI22XL U138 ( .A0(n73), .A1(n134), .B0(n162), .B1(n132), .Y(N146) );
  OAI221XL U139 ( .A0(n155), .A1(n156), .B0(n74), .B1(n150), .C0(n157), .Y(n82) );
  AOI222XL U140 ( .A0(n143), .A1(n158), .B0(n159), .B1(n153), .C0(n152), .C1(
        n160), .Y(n157) );
  XNOR2X1 U141 ( .A(\add_28_S2_I2_C38/carry [7]), .B(n169), .Y(n158) );
  XNOR2X1 U142 ( .A(\add_28_S2_I2_C40/carry [7]), .B(n161), .Y(n160) );
  OAI211X1 U143 ( .A0(n73), .A1(n150), .B0(n171), .C0(n172), .Y(n81) );
  NAND2X1 U144 ( .A(N101), .B(n143), .Y(n171) );
  AOI222XL U145 ( .A0(N155), .A1(n152), .B0(n173), .B1(n153), .C0(N34), .C1(
        n135), .Y(n172) );
  XNOR2X1 U146 ( .A(n168), .B(n167), .Y(n173) );
  XOR2X1 U147 ( .A(n163), .B(n164), .Y(n159) );
  XNOR2X1 U148 ( .A(candidate[7]), .B(n165), .Y(n164) );
  NAND2BX1 U149 ( .AN(n167), .B(n168), .Y(n163) );
  NOR2X1 U150 ( .A(n73), .B(n166), .Y(n165) );
  XNOR2X1 U151 ( .A(n136), .B(n75), .Y(N86) );
  NOR2BX1 U152 ( .AN(en), .B(n214), .Y(n204) );
  OAI21XL U153 ( .A0(n214), .A1(n215), .B0(en), .Y(n150) );
  OAI32X1 U154 ( .A0(n205), .A1(n134), .A2(n147), .B0(n136), .B1(n207), .Y(
        n215) );
  NOR2X1 U155 ( .A(n146), .B(reg_mode[1]), .Y(n208) );
  NAND4BBXL U156 ( .AN(now_0[2]), .BN(now_0[0]), .C(now_0[1]), .D(n218), .Y(
        n209) );
  NOR3X1 U157 ( .A(now_0[3]), .B(now_0[5]), .C(now_0[4]), .Y(n218) );
  NAND3X1 U158 ( .A(n144), .B(n146), .C(reg_mode[1]), .Y(n205) );
  CLKINVX1 U159 ( .A(reg_mode[0]), .Y(n146) );
  OA21XL U160 ( .A0(count), .A1(reg_mode[0]), .B0(reg_mode[1]), .Y(n202) );
  OAI2BB2XL U161 ( .B0(n207), .B1(n170), .A0N(count), .A1N(n208), .Y(n201) );
  OAI31XL U162 ( .A0(n205), .A1(n147), .A2(n162), .B0(n206), .Y(n203) );
  NAND2X1 U163 ( .A(result_1), .B(result_0), .Y(n213) );
  XOR2X1 U164 ( .A(n74), .B(\r407/carry [7]), .Y(n156) );
  CLKINVX1 U165 ( .A(reg_mode[1]), .Y(n145) );
  OAI22XL U166 ( .A0(n71), .A1(n136), .B0(n170), .B1(n141), .Y(N87) );
  OAI22XL U167 ( .A0(n70), .A1(n136), .B0(n170), .B1(n140), .Y(N88) );
  OAI22XL U168 ( .A0(n69), .A1(n136), .B0(n170), .B1(n139), .Y(N89) );
  OAI22XL U169 ( .A0(n68), .A1(n136), .B0(n170), .B1(n138), .Y(N90) );
  OAI22XL U170 ( .A0(n72), .A1(n136), .B0(n170), .B1(n137), .Y(N91) );
  CLKINVX1 U171 ( .A(count), .Y(n144) );
  OAI22XL U172 ( .A0(n73), .A1(n136), .B0(n170), .B1(n132), .Y(N92) );
  OAI221XL U173 ( .A0(N86), .A1(n149), .B0(n75), .B1(n150), .C0(n151), .Y(n83)
         );
  AOI222XL U174 ( .A0(n152), .A1(n133), .B0(n153), .B1(n154), .C0(n75), .C1(
        n135), .Y(n151) );
  CLKINVX1 U175 ( .A(N140), .Y(n133) );
  XOR2X1 U176 ( .A(result_0), .B(\dp_cluster_0/N39 ), .Y(n154) );
  OAI211X1 U177 ( .A0(n68), .A1(n150), .B0(n198), .C0(n199), .Y(n76) );
  NAND2X1 U178 ( .A(N99), .B(n143), .Y(n198) );
  AOI222XL U179 ( .A0(N153), .A1(n152), .B0(n200), .B1(n153), .C0(N32), .C1(
        n135), .Y(n199) );
  XNOR2X1 U180 ( .A(n181), .B(n182), .Y(n200) );
  OAI211X1 U181 ( .A0(n69), .A1(n150), .B0(n193), .C0(n194), .Y(n77) );
  NAND2X1 U182 ( .A(N98), .B(n143), .Y(n193) );
  AOI222XL U183 ( .A0(N152), .A1(n152), .B0(n195), .B1(n153), .C0(N31), .C1(
        n135), .Y(n194) );
  XOR2X1 U184 ( .A(n196), .B(n197), .Y(n195) );
  OAI211X1 U185 ( .A0(n70), .A1(n150), .B0(n188), .C0(n189), .Y(n78) );
  NAND2X1 U186 ( .A(N97), .B(n143), .Y(n188) );
  AOI222XL U187 ( .A0(N151), .A1(n152), .B0(n190), .B1(n153), .C0(N30), .C1(
        n135), .Y(n189) );
  XOR2X1 U188 ( .A(n191), .B(n192), .Y(n190) );
  OAI211X1 U189 ( .A0(n71), .A1(n150), .B0(n183), .C0(n184), .Y(n79) );
  NAND2X1 U190 ( .A(N96), .B(n143), .Y(n183) );
  AOI222XL U191 ( .A0(N150), .A1(n152), .B0(n185), .B1(n153), .C0(N29), .C1(
        n135), .Y(n184) );
  XOR2X1 U192 ( .A(n186), .B(n187), .Y(n185) );
  OAI211X1 U193 ( .A0(n72), .A1(n150), .B0(n177), .C0(n178), .Y(n80) );
  NAND2X1 U194 ( .A(N100), .B(n143), .Y(n177) );
  AOI222XL U195 ( .A0(N154), .A1(n152), .B0(n179), .B1(n153), .C0(N33), .C1(
        n135), .Y(n178) );
  XNOR2X1 U196 ( .A(n175), .B(n176), .Y(n179) );
  OAI222XL U197 ( .A0(result_0), .A1(n206), .B0(n216), .B1(n145), .C0(n144), 
        .C1(n207), .Y(n214) );
  AOI32X1 U198 ( .A0(n213), .A1(n148), .A2(reg_mode[0]), .B0(n217), .B1(n212), 
        .Y(n216) );
  OAI22XL U199 ( .A0(n146), .A1(n148), .B0(reg_mode[0]), .B1(n144), .Y(n217)
         );
  CLKINVX1 U200 ( .A(result_2), .Y(n148) );
  CLKINVX1 U201 ( .A(rst), .Y(n142) );
endmodule


module SET ( clk, rst, en, central, radius, mode, busy, valid, candidate );
  input [23:0] central;
  input [11:0] radius;
  input [1:0] mode;
  output [7:0] candidate;
  input clk, rst, en;
  output busy, valid;
  wire   count, Candidate_en, MapCell_en, result_0, result_1, result_2;
  wire   [11:0] circle_A;
  wire   [11:0] circle_B;
  wire   [11:0] circle_C;
  wire   [1:0] reg_mode;
  wire   [5:0] now_0;
  wire   [5:0] now_1;
  wire   [5:0] now_2;

  Control Control_U ( .clk(clk), .rst(rst), .en(en), .central(central), 
        .radius(radius), .circle_A(circle_A), .circle_B(circle_B), .circle_C(
        circle_C), .mode(mode), .reg_mode(reg_mode), .busy(busy), .valid(valid), .now_0(now_0), .now_1(now_1), .now_2(now_2), .count(count), .Candidate_en(
        Candidate_en), .MapCell_en(MapCell_en) );
  GenerateAddress_MapCell GenerateAddress_MapCell_U0 ( .circle_A(circle_A), 
        .circle_B(circle_B), .circle_C(circle_C), .now_0(now_0), .now_1(now_1), 
        .now_2(now_2), .reg_mode(reg_mode), .count(count), .clk(clk), .rst(rst), .MapCell_en(MapCell_en), .result_0(result_0), .result_1(result_1), 
        .result_2(result_2) );
  CandidateAdder CandidateAdder_U ( .clk(clk), .rst(rst), .en(Candidate_en), 
        .now_0(now_0), .count(count), .reg_mode(reg_mode), .result_0(result_0), 
        .result_1(result_1), .result_2(result_2), .candidate(candidate) );
endmodule

