/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03
// Date      : Sun Dec 29 13:38:27 2019
/////////////////////////////////////////////////////////////


module stateGenerator ( clk, rst, addr, en, busy, valid );
  input [5:0] addr;
  input clk, rst, en;
  output busy, valid;
  wire   n6, n7, n1;
  wire   [1:0] cs;
  wire   [1:0] ns;

  DFFQX1 \cs_reg[1]  ( .D(ns[1]), .CK(clk), .Q(cs[1]) );
  DFFQX1 busy_reg ( .D(ns[0]), .CK(clk), .Q(busy) );
  DFFQX1 \cs_reg[0]  ( .D(ns[0]), .CK(clk), .Q(cs[0]) );
  DFFQX1 valid_reg ( .D(ns[1]), .CK(clk), .Q(valid) );
  NAND4XL U9 ( .A(n1), .B(addr[4]), .C(cs[0]), .D(addr[5]), .Y(n6) );
  AND4XL U10 ( .A(addr[3]), .B(addr[2]), .C(addr[1]), .D(addr[0]), .Y(n1) );
  NOR3X1 U11 ( .A(n6), .B(rst), .C(cs[1]), .Y(ns[1]) );
  NOR3X1 U12 ( .A(n7), .B(rst), .C(cs[1]), .Y(ns[0]) );
  OAI21XL U13 ( .A0(en), .A1(cs[0]), .B0(n6), .Y(n7) );
endmodule


module addressGenerator ( clk, rst, en, busy, central, radius, mode, 
        reg_central, reg_radius, reg_mode, addr );
  input [23:0] central;
  input [11:0] radius;
  input [1:0] mode;
  output [23:0] reg_central;
  output [11:0] reg_radius;
  output [1:0] reg_mode;
  output [5:0] addr;
  input clk, rst, en, busy;
  wire   n8, n12, n13, n14, n15, n16, n18, n1, n6, n9, n10, n11, n17, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32;

  DFFRX4 \addr_reg[5]  ( .D(n12), .CK(clk), .RN(n32), .Q(addr[5]), .QN(n8) );
  EDFFX1 \reg_central_reg[19]  ( .D(central[19]), .E(n1), .CK(clk), .Q(
        reg_central[19]) );
  EDFFX1 \reg_mode_reg[0]  ( .D(mode[0]), .E(n1), .CK(clk), .Q(reg_mode[0]) );
  EDFFX1 \reg_mode_reg[1]  ( .D(mode[1]), .E(n1), .CK(clk), .Q(reg_mode[1]) );
  EDFFX1 \reg_radius_reg[11]  ( .D(radius[11]), .E(n1), .CK(clk), .Q(
        reg_radius[11]) );
  EDFFX1 \reg_radius_reg[3]  ( .D(radius[3]), .E(n1), .CK(clk), .Q(
        reg_radius[3]) );
  EDFFX1 \reg_radius_reg[10]  ( .D(radius[10]), .E(n1), .CK(clk), .Q(
        reg_radius[10]) );
  EDFFX1 \reg_radius_reg[2]  ( .D(radius[2]), .E(n1), .CK(clk), .Q(
        reg_radius[2]) );
  EDFFX1 \reg_radius_reg[9]  ( .D(radius[9]), .E(n1), .CK(clk), .Q(
        reg_radius[9]) );
  EDFFX1 \reg_radius_reg[0]  ( .D(radius[0]), .E(n1), .CK(clk), .Q(
        reg_radius[0]) );
  EDFFX1 \reg_radius_reg[1]  ( .D(radius[1]), .E(n1), .CK(clk), .Q(
        reg_radius[1]) );
  EDFFX1 \reg_radius_reg[8]  ( .D(radius[8]), .E(n1), .CK(clk), .Q(
        reg_radius[8]) );
  EDFFX1 \reg_radius_reg[4]  ( .D(radius[4]), .E(n1), .CK(clk), .Q(
        reg_radius[4]) );
  EDFFX1 \reg_radius_reg[7]  ( .D(radius[7]), .E(n1), .CK(clk), .Q(
        reg_radius[7]) );
  EDFFX1 \reg_central_reg[5]  ( .D(central[5]), .E(n1), .CK(clk), .Q(
        reg_central[5]) );
  EDFFX1 \reg_radius_reg[6]  ( .D(radius[6]), .E(n1), .CK(clk), .Q(
        reg_radius[6]) );
  EDFFX1 \reg_radius_reg[5]  ( .D(radius[5]), .E(n1), .CK(clk), .Q(
        reg_radius[5]) );
  EDFFX1 \reg_central_reg[4]  ( .D(central[4]), .E(n1), .CK(clk), .Q(
        reg_central[4]) );
  EDFFX1 \reg_central_reg[21]  ( .D(central[21]), .E(n1), .CK(clk), .Q(
        reg_central[21]) );
  EDFFX1 \reg_central_reg[13]  ( .D(central[13]), .E(n1), .CK(clk), .Q(
        reg_central[13]) );
  EDFFX1 \reg_central_reg[7]  ( .D(central[7]), .E(n1), .CK(clk), .Q(
        reg_central[7]) );
  EDFFX1 \reg_central_reg[3]  ( .D(central[3]), .E(n1), .CK(clk), .Q(
        reg_central[3]) );
  EDFFX1 \reg_central_reg[15]  ( .D(central[15]), .E(n1), .CK(clk), .Q(
        reg_central[15]) );
  EDFFX1 \reg_central_reg[22]  ( .D(central[22]), .E(n1), .CK(clk), .Q(
        reg_central[22]) );
  EDFFX1 \reg_central_reg[23]  ( .D(central[23]), .E(n1), .CK(clk), .Q(
        reg_central[23]) );
  EDFFX1 \reg_central_reg[6]  ( .D(central[6]), .E(n1), .CK(clk), .Q(
        reg_central[6]) );
  EDFFX1 \reg_central_reg[14]  ( .D(central[14]), .E(n1), .CK(clk), .Q(
        reg_central[14]) );
  EDFFX1 \reg_central_reg[11]  ( .D(central[11]), .E(n1), .CK(clk), .Q(
        reg_central[11]) );
  EDFFX1 \reg_central_reg[1]  ( .D(central[1]), .E(n1), .CK(clk), .Q(
        reg_central[1]) );
  EDFFX1 \reg_central_reg[10]  ( .D(central[10]), .E(n1), .CK(clk), .Q(
        reg_central[10]) );
  EDFFX1 \reg_central_reg[18]  ( .D(central[18]), .E(n1), .CK(clk), .Q(
        reg_central[18]) );
  DFFRHQX2 \addr_reg[1]  ( .D(n16), .CK(clk), .RN(n32), .Q(addr[1]) );
  DFFRHQX4 \addr_reg[0]  ( .D(n18), .CK(clk), .RN(n32), .Q(addr[0]) );
  EDFFX1 \reg_central_reg[20]  ( .D(central[20]), .E(n1), .CK(clk), .Q(
        reg_central[20]) );
  EDFFX1 \reg_central_reg[17]  ( .D(central[17]), .E(n1), .CK(clk), .Q(
        reg_central[17]) );
  EDFFX1 \reg_central_reg[16]  ( .D(central[16]), .E(n1), .CK(clk), .Q(
        reg_central[16]) );
  EDFFX1 \reg_central_reg[12]  ( .D(central[12]), .E(n1), .CK(clk), .Q(
        reg_central[12]) );
  EDFFX1 \reg_central_reg[8]  ( .D(central[8]), .E(n1), .CK(clk), .Q(
        reg_central[8]) );
  EDFFX1 \reg_central_reg[0]  ( .D(central[0]), .E(n1), .CK(clk), .Q(
        reg_central[0]) );
  DFFRHQX4 \addr_reg[3]  ( .D(n14), .CK(clk), .RN(n32), .Q(addr[3]) );
  EDFFX1 \reg_central_reg[9]  ( .D(central[9]), .E(n1), .CK(clk), .Q(
        reg_central[9]) );
  DFFRHQX4 \addr_reg[4]  ( .D(n13), .CK(clk), .RN(n32), .Q(addr[4]) );
  EDFFX1 \reg_central_reg[2]  ( .D(central[2]), .E(n1), .CK(clk), .Q(
        reg_central[2]) );
  DFFRHQX2 \addr_reg[2]  ( .D(n15), .CK(clk), .RN(n32), .Q(addr[2]) );
  NOR2X2 U16 ( .A(rst), .B(n31), .Y(n1) );
  INVXL U17 ( .A(addr[3]), .Y(n6) );
  INVXL U18 ( .A(addr[0]), .Y(n9) );
  CLKINVX1 U19 ( .A(n23), .Y(n29) );
  CLKINVX1 U20 ( .A(n11), .Y(n30) );
  NAND4XL U21 ( .A(addr[5]), .B(addr[2]), .C(addr[1]), .D(n10), .Y(n23) );
  NOR4X1 U22 ( .A(n11), .B(n26), .C(n6), .D(n9), .Y(n10) );
  NAND2BX1 U23 ( .AN(en), .B(busy), .Y(n11) );
  NAND2XL U24 ( .A(addr[1]), .B(addr[0]), .Y(n20) );
  OAI2BB1X1 U25 ( .A0N(n30), .A1N(n24), .B0(n23), .Y(n13) );
  OAI2BB1X1 U26 ( .A0N(n30), .A1N(n19), .B0(n23), .Y(n15) );
  XNOR2XL U27 ( .A(addr[2]), .B(n20), .Y(n19) );
  NAND2BXL U28 ( .AN(n22), .B(addr[3]), .Y(n25) );
  NAND2BXL U29 ( .AN(n20), .B(addr[2]), .Y(n22) );
  AO21X1 U30 ( .A0(n30), .A1(n17), .B0(n29), .Y(n16) );
  INVXL U31 ( .A(addr[4]), .Y(n26) );
  AO21X1 U32 ( .A0(n30), .A1(n28), .B0(n29), .Y(n12) );
  XOR2X1 U33 ( .A(n27), .B(n8), .Y(n28) );
  OR2X1 U34 ( .A(n26), .B(n25), .Y(n27) );
  CLKINVX1 U35 ( .A(en), .Y(n31) );
  CLKINVX1 U36 ( .A(rst), .Y(n32) );
  OAI2BB1X1 U37 ( .A0N(n30), .A1N(n21), .B0(n23), .Y(n14) );
  AO21X1 U38 ( .A0(n9), .A1(n30), .B0(n29), .Y(n18) );
  XOR2XL U39 ( .A(addr[0]), .B(addr[1]), .Y(n17) );
  XNOR2XL U40 ( .A(addr[4]), .B(n25), .Y(n24) );
  XNOR2XL U41 ( .A(addr[3]), .B(n22), .Y(n21) );
endmodule


module TMP ( addressIn, reg_central, reg_radius, reg_mode, clk, rst, en, 
        candidate );
  input [5:0] addressIn;
  input [23:0] reg_central;
  input [11:0] reg_radius;
  input [1:0] reg_mode;
  output [7:0] candidate;
  input clk, rst, en;
  wire   \candiCal/n11 , \candiCal/n10 , \candiCal/n9 , \candiCal/n8 ,
         \candiCal/n7 , \candiCal/n6 , \candiCal/n5 , \candiCal/n4 ,
         \judge/icj1/RSquare[0] , \judge/icj3/RSquare[0] ,
         \judge/icj2/RSquare[0] , n627, n628, n629, n630, n631, n632, n633,
         n634, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
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
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448, n449, n450, n451,
         n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n462,
         n463, n464, n465, n466, n467, n468, n469, n470, n471, n472, n473,
         n474, n475, n476, n477, n478, n479, n480, n481, n482, n483, n484,
         n485, n486, n487, n488, n489, n490, n491, n492, n493, n494, n495,
         n496, n497, n498, n499, n500, n501, n502, n503, n504, n505, n506,
         n507, n508, n509, n510, n511, n512, n513, n514, n515, n516, n517,
         n518, n519, n520, n521, n522, n523, n524, n525, n526, n527, n528,
         n529, n530, n531, n532, n533, n534, n535, n536, n537, n538, n539,
         n540, n541, n542, n543, n544, n545, n546, n547, n548, n549, n550,
         n551, n552, n553, n554, n555, n556, n557, n558, n559, n560, n561,
         n562, n563, n564, n565, n566, n567, n568, n569, n570, n571, n572,
         n573, n574, n575, n576, n577, n578, n579, n580, n581, n582, n583,
         n584, n585, n586, n587, n588, n589, n590, n591, n592, n593, n594,
         n595, n596, n597, n598, n599, n600, n601, n602, n603, n604, n605,
         n606, n607, n608, n609, n610, n611, n612, n613, n614, n615;
  assign \judge/icj1/RSquare[0]  = reg_radius[8];
  assign \judge/icj3/RSquare[0]  = reg_radius[0];
  assign \judge/icj2/RSquare[0]  = reg_radius[4];

  DFFRX1 \candiCal/candidate_reg[0]  ( .D(\candiCal/n11 ), .CK(clk), .RN(n615), 
        .Q(candidate[0]), .QN(n634) );
  DFFRX2 \candiCal/candidate_reg[7]  ( .D(\candiCal/n4 ), .CK(clk), .RN(n615), 
        .Q(candidate[7]), .QN(n633) );
  DFFRX2 \candiCal/candidate_reg[6]  ( .D(\candiCal/n5 ), .CK(clk), .RN(n615), 
        .Q(candidate[6]), .QN(n632) );
  DFFRX2 \candiCal/candidate_reg[1]  ( .D(\candiCal/n10 ), .CK(clk), .RN(n615), 
        .Q(candidate[1]), .QN(n627) );
  DFFRX2 \candiCal/candidate_reg[5]  ( .D(\candiCal/n6 ), .CK(clk), .RN(n615), 
        .Q(candidate[5]), .QN(n631) );
  DFFRX2 \candiCal/candidate_reg[3]  ( .D(\candiCal/n8 ), .CK(clk), .RN(n615), 
        .Q(candidate[3]), .QN(n629) );
  DFFRX2 \candiCal/candidate_reg[4]  ( .D(\candiCal/n7 ), .CK(clk), .RN(n615), 
        .Q(candidate[4]), .QN(n630) );
  DFFRX2 \candiCal/candidate_reg[2]  ( .D(\candiCal/n9 ), .CK(clk), .RN(n615), 
        .Q(candidate[2]), .QN(n628) );
  OR2X8 U1 ( .A(n611), .B(en), .Y(n606) );
  AND2X4 U2 ( .A(n435), .B(n146), .Y(n156) );
  NOR2X2 U3 ( .A(n592), .B(n593), .Y(n594) );
  OR3X4 U4 ( .A(n444), .B(n445), .C(n443), .Y(n584) );
  INVX6 U5 ( .A(n331), .Y(n9) );
  INVX3 U6 ( .A(n218), .Y(n217) );
  NAND2XL U7 ( .A(n354), .B(n68), .Y(n70) );
  CLKINVX2 U8 ( .A(n354), .Y(n355) );
  CLKINVX3 U9 ( .A(n377), .Y(n387) );
  NAND2BX2 U10 ( .AN(n102), .B(n96), .Y(n377) );
  XNOR2X2 U11 ( .A(n119), .B(n342), .Y(n99) );
  INVXL U12 ( .A(n421), .Y(n25) );
  INVX4 U13 ( .A(n360), .Y(n330) );
  XOR3X4 U14 ( .A(n231), .B(n265), .C(n266), .Y(n151) );
  OR2X6 U15 ( .A(n77), .B(n78), .Y(n331) );
  INVX3 U16 ( .A(n611), .Y(n614) );
  INVX3 U17 ( .A(n241), .Y(n244) );
  OR2X4 U18 ( .A(n529), .B(n528), .Y(n519) );
  NAND2BX2 U19 ( .AN(n110), .B(n223), .Y(n169) );
  NAND2X1 U20 ( .A(n221), .B(n167), .Y(n168) );
  XNOR2X2 U21 ( .A(n93), .B(n154), .Y(n263) );
  NAND4X2 U22 ( .A(n307), .B(n299), .C(n301), .D(n273), .Y(n309) );
  OA21X2 U23 ( .A0(n501), .A1(n500), .B0(n533), .Y(n502) );
  INVX4 U24 ( .A(n533), .Y(n14) );
  NOR2X2 U25 ( .A(n17), .B(n393), .Y(n101) );
  INVX2 U26 ( .A(n470), .Y(n532) );
  OR2X4 U27 ( .A(reg_central[14]), .B(n449), .Y(n211) );
  AOI22X2 U28 ( .A0(n321), .A1(n36), .B0(n320), .B1(n319), .Y(n172) );
  NAND2X2 U29 ( .A(n63), .B(n262), .Y(n313) );
  AOI32X2 U30 ( .A0(n269), .A1(n263), .A2(n261), .B0(n260), .B1(n259), .Y(n262) );
  CLKINVX8 U31 ( .A(n440), .Y(n421) );
  NAND2X1 U32 ( .A(n29), .B(n512), .Y(n559) );
  AND3X4 U33 ( .A(n13), .B(n185), .C(n241), .Y(n181) );
  MX2X2 U34 ( .A(n216), .B(n215), .S0(n223), .Y(n241) );
  MXI2X2 U35 ( .A(n493), .B(n129), .S0(n486), .Y(n490) );
  OR3X6 U36 ( .A(n569), .B(n121), .C(n570), .Y(n557) );
  OR2X2 U37 ( .A(n433), .B(n164), .Y(n438) );
  INVX1 U38 ( .A(n560), .Y(n558) );
  CLKINVX2 U39 ( .A(n394), .Y(n17) );
  CLKINVX6 U40 ( .A(n394), .Y(n53) );
  OR2X8 U41 ( .A(n141), .B(n272), .Y(n307) );
  XNOR2X2 U42 ( .A(n269), .B(n4), .Y(n272) );
  OAI222X1 U43 ( .A0(n255), .A1(n256), .B0(n142), .B1(n159), .C0(n254), .C1(
        n255), .Y(n22) );
  INVX1 U44 ( .A(n513), .Y(n28) );
  OR2XL U45 ( .A(n513), .B(n519), .Y(n511) );
  AOI32X1 U46 ( .A0(n513), .A1(n520), .A2(n527), .B0(n511), .B1(n510), .Y(n512) );
  CLKXOR2X4 U47 ( .A(n516), .B(n523), .Y(n513) );
  CLKINVX2 U48 ( .A(n505), .Y(n501) );
  NAND2X1 U49 ( .A(n115), .B(n30), .Y(n505) );
  NOR2XL U50 ( .A(reg_central[9]), .B(n473), .Y(n54) );
  OR2X4 U51 ( .A(reg_central[1]), .B(n473), .Y(n324) );
  XOR2X2 U52 ( .A(n190), .B(addressIn[0]), .Y(n473) );
  CLKINVX3 U53 ( .A(n324), .Y(n338) );
  OAI32X2 U54 ( .A0(n423), .A1(n433), .A2(n146), .B0(n435), .B1(n146), .Y(n445) );
  OR2X2 U55 ( .A(reg_central[21]), .B(n448), .Y(n464) );
  OR2X2 U56 ( .A(reg_central[13]), .B(n448), .Y(n224) );
  OR2X2 U57 ( .A(reg_central[5]), .B(n448), .Y(n332) );
  XOR2X2 U58 ( .A(n206), .B(addressIn[3]), .Y(n448) );
  OR2X4 U59 ( .A(n406), .B(n416), .Y(n404) );
  INVX3 U60 ( .A(n406), .Y(n402) );
  XOR2X4 U61 ( .A(n413), .B(n420), .Y(n406) );
  OR2X6 U62 ( .A(reg_central[22]), .B(n449), .Y(n455) );
  INVX4 U63 ( .A(n331), .Y(n356) );
  MXI2X2 U64 ( .A(n614), .B(n606), .S0(n634), .Y(\candiCal/n11 ) );
  OR2X4 U65 ( .A(reg_central[18]), .B(n474), .Y(n480) );
  OR2X4 U66 ( .A(reg_central[10]), .B(n474), .Y(n194) );
  XOR2X2 U67 ( .A(n191), .B(addressIn[2]), .Y(n474) );
  OR3X4 U68 ( .A(n579), .B(n580), .C(n578), .Y(n586) );
  NAND2BX2 U69 ( .AN(n41), .B(reg_central[14]), .Y(n218) );
  OAI2BB2X4 U70 ( .B0(n365), .B1(n381), .A0N(n366), .A1N(n367), .Y(n147) );
  OR2X8 U71 ( .A(n367), .B(n366), .Y(n385) );
  XNOR2X4 U72 ( .A(n85), .B(n375), .Y(n367) );
  XOR2X2 U73 ( .A(n15), .B(n409), .Y(n427) );
  NAND2X2 U74 ( .A(n414), .B(n415), .Y(n409) );
  MX3X1 U75 ( .A(n388), .B(n390), .C(n108), .S0(n379), .S1(n378), .Y(n380) );
  NAND2X1 U76 ( .A(n83), .B(n405), .Y(n424) );
  OAI222X2 U77 ( .A0(n577), .A1(n576), .B0(n575), .B1(n574), .C0(n573), .C1(
        n572), .Y(n578) );
  XOR2X4 U78 ( .A(n190), .B(n472), .Y(n71) );
  INVX2 U79 ( .A(addressIn[0]), .Y(n472) );
  NAND2XL U80 ( .A(n379), .B(n388), .Y(n37) );
  OR2X4 U81 ( .A(reg_central[6]), .B(n449), .Y(n360) );
  NOR3X2 U82 ( .A(n390), .B(n388), .C(n379), .Y(n106) );
  CLKINVX6 U83 ( .A(addressIn[5]), .Y(n81) );
  CLKINVX8 U84 ( .A(n389), .Y(n379) );
  MXI2X4 U85 ( .A(n98), .B(n99), .S0(n343), .Y(n389) );
  NOR2XL U86 ( .A(n65), .B(n189), .Y(n132) );
  NOR2X1 U87 ( .A(n65), .B(n471), .Y(n130) );
  INVX4 U88 ( .A(n65), .Y(n90) );
  XNOR2X4 U89 ( .A(n191), .B(addressIn[2]), .Y(n65) );
  OAI22X1 U90 ( .A0(n606), .A1(n602), .B0(n630), .B1(n614), .Y(\candiCal/n7 )
         );
  OAI22X1 U91 ( .A0(n606), .A1(n600), .B0(n629), .B1(n614), .Y(\candiCal/n8 )
         );
  OAI22X1 U92 ( .A0(n606), .A1(n598), .B0(n628), .B1(n614), .Y(\candiCal/n9 )
         );
  AOI21X2 U93 ( .A0(n340), .A1(n327), .B0(n338), .Y(n119) );
  XOR2X4 U94 ( .A(n320), .B(n319), .Y(n321) );
  CLKINVX4 U95 ( .A(n479), .Y(n320) );
  INVX2 U96 ( .A(addressIn[1]), .Y(n190) );
  XOR2X4 U97 ( .A(n81), .B(n128), .Y(n449) );
  AOI21X2 U98 ( .A0(n46), .A1(n267), .B0(n264), .Y(n155) );
  OR2X1 U99 ( .A(n537), .B(n536), .Y(n543) );
  MXI3X2 U100 ( .A(n277), .B(n162), .C(n163), .S0(n248), .S1(n290), .Y(n92) );
  NOR2X1 U101 ( .A(n248), .B(n277), .Y(n163) );
  CLKINVX2 U102 ( .A(n280), .Y(n26) );
  CLKINVX1 U103 ( .A(reg_central[10]), .Y(n189) );
  XOR2X1 U104 ( .A(n286), .B(n107), .Y(n294) );
  OR2X4 U105 ( .A(n346), .B(n36), .Y(n341) );
  NAND2X4 U106 ( .A(n31), .B(n391), .Y(n374) );
  OR2X4 U107 ( .A(n72), .B(n422), .Y(n31) );
  NAND2X1 U108 ( .A(n38), .B(n37), .Y(n72) );
  AND2XL U109 ( .A(n225), .B(n224), .Y(n226) );
  OR3X2 U110 ( .A(n277), .B(n162), .C(n248), .Y(n238) );
  AND2XL U111 ( .A(n465), .B(n464), .Y(n87) );
  INVX3 U112 ( .A(n455), .Y(n451) );
  AO21X2 U113 ( .A0(n105), .A1(n538), .B0(n5), .Y(n540) );
  NAND2BX2 U114 ( .AN(n494), .B(n14), .Y(n466) );
  OR2X4 U115 ( .A(n186), .B(n535), .Y(n491) );
  OR2X4 U116 ( .A(n155), .B(n84), .Y(n269) );
  INVX3 U117 ( .A(n480), .Y(n476) );
  CLKINVX1 U118 ( .A(reg_central[18]), .Y(n471) );
  AO21X1 U119 ( .A0(reg_radius[1]), .A1(reg_radius[2]), .B0(n123), .Y(n373) );
  XOR2XL U120 ( .A(n410), .B(n411), .Y(n15) );
  AOI32X1 U121 ( .A0(n406), .A1(n417), .A2(n12), .B0(n404), .B1(n403), .Y(n405) );
  AOI21XL U122 ( .A0(n385), .A1(n384), .B0(n383), .Y(n436) );
  OR2X4 U123 ( .A(n427), .B(n134), .Y(n428) );
  AO21X1 U124 ( .A0(reg_radius[9]), .A1(reg_radius[10]), .B0(n124), .Y(n530)
         );
  NAND4BBX1 U125 ( .AN(n436), .BN(n120), .C(n426), .D(n371), .Y(n437) );
  OR2X2 U126 ( .A(n379), .B(n399), .Y(n439) );
  NOR2X2 U127 ( .A(n559), .B(n562), .Y(n103) );
  OR3X2 U128 ( .A(n570), .B(n121), .C(n571), .Y(n572) );
  OR2X2 U129 ( .A(n569), .B(n103), .Y(n573) );
  NAND3X2 U130 ( .A(n596), .B(n595), .C(n594), .Y(n611) );
  OAI2BB1X1 U131 ( .A0N(n126), .A1N(n225), .B0(n224), .Y(n219) );
  CLKINVX1 U132 ( .A(n211), .Y(n220) );
  AO21X2 U133 ( .A0(n235), .A1(n127), .B0(n54), .Y(n200) );
  INVX3 U134 ( .A(n204), .Y(n195) );
  XOR2X1 U135 ( .A(n479), .B(reg_central[11]), .Y(n204) );
  CLKINVX4 U136 ( .A(n200), .Y(n192) );
  OR2X4 U137 ( .A(n201), .B(n132), .Y(n193) );
  INVX3 U138 ( .A(addressIn[4]), .Y(n206) );
  CLKINVX1 U139 ( .A(n106), .Y(n38) );
  NOR3X2 U140 ( .A(n354), .B(n361), .C(n117), .Y(n77) );
  XOR2X1 U141 ( .A(n454), .B(reg_central[7]), .Y(n329) );
  CLKINVX1 U142 ( .A(n332), .Y(n351) );
  CLKINVX1 U143 ( .A(n439), .Y(n422) );
  CLKINVX1 U144 ( .A(n219), .Y(n209) );
  OR2X4 U145 ( .A(n217), .B(n220), .Y(n210) );
  CLKINVX1 U146 ( .A(n224), .Y(n207) );
  NAND2BX1 U147 ( .AN(n67), .B(reg_central[13]), .Y(n225) );
  XOR2X1 U148 ( .A(n50), .B(n283), .Y(n293) );
  MXI2X1 U149 ( .A(n51), .B(n278), .S0(n302), .Y(n184) );
  NOR2X4 U150 ( .A(n206), .B(n447), .Y(n128) );
  CLKINVX1 U151 ( .A(n337), .Y(n350) );
  CLKINVX1 U152 ( .A(n374), .Y(n349) );
  CLKINVX1 U153 ( .A(n329), .Y(n361) );
  AO21X1 U154 ( .A0(n353), .A1(n352), .B0(n351), .Y(n358) );
  CLKMX2X2 U155 ( .A(n397), .B(n396), .S0(n421), .Y(n401) );
  OA21XL U156 ( .A0(n395), .A1(n394), .B0(n393), .Y(n397) );
  INVX3 U157 ( .A(n243), .Y(n248) );
  INVX3 U158 ( .A(n231), .Y(n267) );
  CLKINVX1 U159 ( .A(n265), .Y(n251) );
  NOR2X1 U160 ( .A(n155), .B(n6), .Y(n254) );
  AO21X1 U161 ( .A0(n142), .A1(n257), .B0(n152), .Y(n255) );
  NOR2X1 U162 ( .A(n252), .B(n253), .Y(n152) );
  CLKMX2X2 U163 ( .A(n294), .B(n311), .S0(\judge/icj2/RSquare[0] ), .Y(n287)
         );
  NOR2X1 U164 ( .A(n293), .B(n292), .Y(n118) );
  OR2X2 U165 ( .A(n252), .B(n253), .Y(n261) );
  CLKINVX1 U166 ( .A(n30), .Y(n75) );
  OA21XL U167 ( .A0(n498), .A1(n497), .B0(n535), .Y(n499) );
  NAND2X1 U168 ( .A(n90), .B(reg_central[2]), .Y(n344) );
  INVX1 U169 ( .A(n344), .Y(n346) );
  OR2X1 U170 ( .A(n90), .B(reg_central[2]), .Y(n35) );
  NOR2X1 U171 ( .A(n90), .B(reg_central[2]), .Y(n36) );
  OR2X4 U172 ( .A(n375), .B(n374), .Y(n386) );
  NOR2X1 U173 ( .A(n106), .B(n380), .Y(n43) );
  CLKINVX1 U174 ( .A(n401), .Y(n410) );
  CLKINVX1 U175 ( .A(n412), .Y(n420) );
  NAND2X2 U176 ( .A(n24), .B(n23), .Y(n415) );
  NAND2X1 U177 ( .A(n387), .B(n43), .Y(n23) );
  INVX3 U178 ( .A(n386), .Y(n24) );
  OR2X4 U179 ( .A(n387), .B(n43), .Y(n414) );
  OR3X2 U180 ( .A(n22), .B(n97), .C(n302), .Y(n273) );
  CLKINVX1 U181 ( .A(n273), .Y(n310) );
  CLKINVX1 U182 ( .A(n508), .Y(n528) );
  AND2X2 U183 ( .A(n150), .B(n149), .Y(n148) );
  INVX3 U184 ( .A(n574), .Y(n525) );
  CLKINVX1 U185 ( .A(n452), .Y(n461) );
  AOI2BB1X1 U186 ( .A0N(n476), .A1N(n477), .B0(n130), .Y(n482) );
  AO21X1 U187 ( .A0(n488), .A1(n492), .B0(n475), .Y(n484) );
  CLKINVX1 U188 ( .A(n487), .Y(n475) );
  INVX3 U189 ( .A(n481), .Y(n486) );
  AND2X2 U190 ( .A(reg_radius[9]), .B(n548), .Y(n552) );
  OR2X1 U191 ( .A(n506), .B(n505), .Y(n515) );
  INVX3 U192 ( .A(n515), .Y(n523) );
  NAND2X1 U193 ( .A(n491), .B(n498), .Y(n516) );
  OR2X1 U194 ( .A(n508), .B(n507), .Y(n520) );
  CLKINVX1 U195 ( .A(n264), .Y(n266) );
  AO21X1 U196 ( .A0(reg_radius[5]), .A1(reg_radius[6]), .B0(n125), .Y(n271) );
  CLKINVX1 U197 ( .A(n306), .Y(n316) );
  OAI222X1 U198 ( .A0(n442), .A1(n441), .B0(n25), .B1(n439), .C0(n438), .C1(
        n437), .Y(n443) );
  NAND2BX1 U199 ( .AN(n71), .B(reg_central[17]), .Y(n488) );
  OAI211X1 U200 ( .A0(n614), .A1(n633), .B0(n613), .C0(n612), .Y(\candiCal/n4 ) );
  NOR2XL U201 ( .A(n379), .B(n388), .Y(n48) );
  AOI32X1 U202 ( .A0(n151), .A1(n307), .A2(n136), .B0(n141), .B1(n272), .Y(
        n315) );
  INVX4 U203 ( .A(n205), .Y(n302) );
  OR2X4 U204 ( .A(n240), .B(n248), .Y(n205) );
  CLKMX2X4 U205 ( .A(n199), .B(n198), .S0(n232), .Y(n243) );
  NOR2XL U206 ( .A(n273), .B(n300), .Y(n1) );
  NOR2X1 U207 ( .A(reg_central[4]), .B(addressIn[3]), .Y(n2) );
  INVX3 U208 ( .A(n575), .Y(n524) );
  NOR2X1 U209 ( .A(n133), .B(n268), .Y(n3) );
  CLKINVX1 U210 ( .A(n265), .Y(n46) );
  NAND2X2 U211 ( .A(n92), .B(n238), .Y(n265) );
  CLKINVX1 U212 ( .A(n240), .Y(n162) );
  NAND2X2 U213 ( .A(n47), .B(n195), .Y(n240) );
  CLKINVX1 U214 ( .A(n399), .Y(n390) );
  XOR2X1 U215 ( .A(n252), .B(n270), .Y(n4) );
  CLKINVX1 U216 ( .A(n507), .Y(n529) );
  NOR2X1 U217 ( .A(n496), .B(n547), .Y(n5) );
  NOR2X1 U218 ( .A(n184), .B(n270), .Y(n6) );
  CLKBUFX3 U219 ( .A(n194), .Y(n177) );
  CLKINVX1 U220 ( .A(n194), .Y(n201) );
  OR2X4 U221 ( .A(n476), .B(n130), .Y(n7) );
  OR2X1 U222 ( .A(reg_mode[1]), .B(n589), .Y(n8) );
  CLKINVX1 U223 ( .A(n588), .Y(n591) );
  NOR2X1 U224 ( .A(n176), .B(n185), .Y(n154) );
  OR2X2 U225 ( .A(n309), .B(n316), .Y(n40) );
  CLKINVX1 U226 ( .A(n269), .Y(n61) );
  NOR2BX1 U227 ( .AN(n393), .B(n396), .Y(n91) );
  OR3X2 U228 ( .A(n611), .B(n610), .C(n609), .Y(n612) );
  OR3X1 U229 ( .A(n1), .B(n316), .C(n315), .Y(n66) );
  OAI32X1 U230 ( .A0(n118), .A1(n298), .A2(n297), .B0(n118), .B1(n296), .Y(
        n299) );
  OR3X6 U231 ( .A(n525), .B(n524), .C(n568), .Y(n560) );
  OR2X4 U232 ( .A(n494), .B(n505), .Y(n575) );
  NOR2X2 U233 ( .A(n466), .B(n501), .Y(n178) );
  NAND2BX1 U234 ( .AN(n251), .B(n231), .Y(n256) );
  XNOR2X1 U235 ( .A(n540), .B(n539), .Y(n10) );
  XNOR2X1 U236 ( .A(n540), .B(n539), .Y(n550) );
  INVX1 U237 ( .A(n466), .Y(n11) );
  INVXL U238 ( .A(n466), .Y(n506) );
  NOR2X1 U239 ( .A(n140), .B(n56), .Y(n121) );
  NAND2X1 U240 ( .A(n414), .B(n415), .Y(n12) );
  INVX3 U241 ( .A(n274), .Y(n13) );
  INVX1 U242 ( .A(n274), .Y(n276) );
  NOR2X2 U243 ( .A(n244), .B(n274), .Y(n18) );
  XOR2X1 U244 ( .A(n337), .B(n91), .Y(n381) );
  NOR2X1 U245 ( .A(n550), .B(n549), .Y(n109) );
  NAND2X2 U246 ( .A(n59), .B(n3), .Y(n306) );
  CLKINVX2 U247 ( .A(n313), .Y(n59) );
  OR2XL U248 ( .A(n493), .B(n129), .Y(n536) );
  OAI2BB1X2 U249 ( .A0N(n129), .A1N(n488), .B0(n487), .Y(n477) );
  NAND2X2 U250 ( .A(addressIn[1]), .B(addressIn[0]), .Y(n191) );
  BUFX3 U251 ( .A(n181), .Y(n16) );
  NOR2X1 U252 ( .A(n14), .B(n534), .Y(n105) );
  CLKINVX1 U253 ( .A(n210), .Y(n208) );
  CLKMX2X2 U254 ( .A(n170), .B(n171), .S0(n486), .Y(n160) );
  NOR2X2 U255 ( .A(n424), .B(n425), .Y(n164) );
  INVX1 U256 ( .A(n416), .Y(n407) );
  NOR2XL U257 ( .A(n244), .B(n274), .Y(n19) );
  NOR2XL U258 ( .A(n244), .B(n274), .Y(n176) );
  INVX3 U259 ( .A(n456), .Y(n462) );
  INVX2 U260 ( .A(n564), .Y(n569) );
  OR2X4 U261 ( .A(n137), .B(n563), .Y(n564) );
  NAND2X2 U262 ( .A(n246), .B(n245), .Y(n247) );
  MX3X2 U263 ( .A(n166), .B(n274), .C(n18), .S0(n241), .S1(n289), .Y(n230) );
  OR2XL U264 ( .A(n217), .B(n122), .Y(n221) );
  OA21X4 U265 ( .A0(n166), .A1(n241), .B0(n274), .Y(n242) );
  NAND2BX2 U266 ( .AN(n191), .B(addressIn[2]), .Y(n479) );
  INVX2 U267 ( .A(n503), .Y(n498) );
  INVXL U268 ( .A(n387), .Y(n20) );
  INVX1 U269 ( .A(n20), .Y(n21) );
  INVX3 U270 ( .A(n166), .Y(n185) );
  MXI3X2 U271 ( .A(n535), .B(n498), .C(n504), .S0(n186), .S1(n547), .Y(n150)
         );
  INVXL U272 ( .A(n186), .Y(n497) );
  OR2X4 U273 ( .A(n588), .B(n317), .Y(n585) );
  CLKINVX1 U274 ( .A(n282), .Y(n283) );
  INVX1 U275 ( .A(n223), .Y(n167) );
  NAND2BXL U276 ( .AN(n263), .B(n6), .Y(n260) );
  OAI2BB1X1 U277 ( .A0N(n107), .A1N(n281), .B0(n280), .Y(n50) );
  OR2X6 U278 ( .A(n53), .B(n398), .Y(n440) );
  NAND3X1 U279 ( .A(n27), .B(n519), .C(n28), .Y(n29) );
  INVXL U280 ( .A(n527), .Y(n27) );
  NAND2X2 U281 ( .A(n518), .B(n517), .Y(n527) );
  INVX1 U282 ( .A(n519), .Y(n514) );
  XNOR2X2 U283 ( .A(n454), .B(reg_central[23]), .Y(n30) );
  INVX1 U284 ( .A(n78), .Y(n32) );
  AOI2BB2X1 U285 ( .B0(n330), .B1(n329), .A0N(n454), .A1N(reg_central[7]), .Y(
        n131) );
  INVX1 U286 ( .A(n341), .Y(n342) );
  NOR2X1 U287 ( .A(reg_central[15]), .B(n454), .Y(n214) );
  NAND2BXL U288 ( .AN(n130), .B(n484), .Y(n483) );
  INVX1 U289 ( .A(n483), .Y(n170) );
  INVXL U290 ( .A(n359), .Y(n33) );
  NOR2X2 U291 ( .A(n42), .B(n446), .Y(n34) );
  AND2XL U292 ( .A(n33), .B(n358), .Y(n363) );
  INVX1 U293 ( .A(n277), .Y(n279) );
  CLKMX2X6 U294 ( .A(n51), .B(n278), .S0(n302), .Y(n252) );
  OR2X4 U295 ( .A(n503), .B(n186), .Y(n574) );
  NOR3X6 U296 ( .A(n214), .B(n213), .C(n212), .Y(n223) );
  CLKINVX2 U297 ( .A(n345), .Y(n73) );
  OR2X8 U298 ( .A(n359), .B(n330), .Y(n354) );
  INVX3 U299 ( .A(n357), .Y(n359) );
  INVX3 U300 ( .A(n253), .Y(n270) );
  OR2X4 U301 ( .A(reg_central[17]), .B(n473), .Y(n487) );
  INVX4 U302 ( .A(addressIn[3]), .Y(n447) );
  NOR2X1 U303 ( .A(n590), .B(n591), .Y(n592) );
  NOR2X2 U304 ( .A(n80), .B(n393), .Y(n102) );
  AOI32X1 U305 ( .A0(n519), .A1(n518), .A2(n517), .B0(n516), .B1(n515), .Y(
        n521) );
  NAND2X4 U306 ( .A(n250), .B(n278), .Y(n280) );
  OR2XL U307 ( .A(reg_central[9]), .B(n473), .Y(n234) );
  INVX1 U308 ( .A(n371), .Y(n434) );
  OA21XL U309 ( .A0(n390), .A1(n389), .B0(n388), .Y(n392) );
  OR2X1 U310 ( .A(n311), .B(n310), .Y(n39) );
  NAND3X2 U311 ( .A(n39), .B(n40), .C(n308), .Y(n312) );
  AND2X6 U312 ( .A(n249), .B(n205), .Y(n165) );
  XNOR2X1 U313 ( .A(n128), .B(n81), .Y(n41) );
  XNOR2X1 U314 ( .A(n128), .B(n81), .Y(n42) );
  XNOR2X1 U315 ( .A(n128), .B(n81), .Y(n76) );
  CLKINVX1 U316 ( .A(n222), .Y(n44) );
  CLKMX2X2 U317 ( .A(n499), .B(n536), .S0(n525), .Y(n507) );
  INVX1 U318 ( .A(n131), .Y(n78) );
  OAI211X2 U319 ( .A0(n32), .A1(n363), .B0(n362), .C0(n361), .Y(n398) );
  OA21X4 U320 ( .A0(n162), .A1(n243), .B0(n277), .Y(n51) );
  NOR2XL U321 ( .A(n65), .B(n189), .Y(n45) );
  OR2X8 U322 ( .A(n16), .B(n230), .Y(n231) );
  INVX1 U323 ( .A(n368), .Y(n383) );
  MXI2X2 U324 ( .A(n203), .B(n202), .S0(n232), .Y(n47) );
  NOR2XL U325 ( .A(n379), .B(n388), .Y(n108) );
  NAND2X4 U326 ( .A(n165), .B(n238), .Y(n250) );
  NAND2BX4 U327 ( .AN(n539), .B(n5), .Y(n531) );
  INVXL U328 ( .A(n286), .Y(n281) );
  OAI211X2 U329 ( .A0(n173), .A1(n348), .B0(n347), .C0(n174), .Y(n399) );
  NOR2XL U330 ( .A(n10), .B(n549), .Y(n49) );
  NAND2X2 U331 ( .A(n584), .B(n116), .Y(n590) );
  NAND2BX4 U332 ( .AN(n282), .B(n26), .Y(n264) );
  NAND2X2 U333 ( .A(addressIn[5]), .B(n128), .Y(n454) );
  INVX1 U334 ( .A(n93), .Y(n142) );
  NOR2X1 U335 ( .A(n157), .B(n240), .Y(n93) );
  XNOR2X1 U336 ( .A(n479), .B(reg_central[3]), .Y(n174) );
  INVX2 U337 ( .A(n586), .Y(n581) );
  OR2X4 U338 ( .A(n136), .B(n151), .Y(n301) );
  NAND2BX4 U339 ( .AN(n462), .B(n467), .Y(n182) );
  NAND2X4 U340 ( .A(n182), .B(n183), .Y(n86) );
  INVX1 U341 ( .A(reg_central[3]), .Y(n319) );
  NOR2X1 U342 ( .A(n451), .B(n34), .Y(n153) );
  OR2X1 U343 ( .A(n114), .B(n45), .Y(n203) );
  NOR2X1 U344 ( .A(n130), .B(n476), .Y(n52) );
  INVX3 U345 ( .A(n161), .Y(n55) );
  XNOR2X2 U346 ( .A(n479), .B(reg_central[19]), .Y(n161) );
  XNOR2XL U347 ( .A(n193), .B(n192), .Y(n198) );
  XNOR2X1 U348 ( .A(n74), .B(n532), .Y(n56) );
  NOR2X1 U349 ( .A(en), .B(n585), .Y(n583) );
  INVXL U350 ( .A(n164), .Y(n57) );
  CLKINVX1 U351 ( .A(n57), .Y(n58) );
  INVX1 U352 ( .A(n477), .Y(n485) );
  NOR2X2 U353 ( .A(n276), .B(n275), .Y(n107) );
  CLKMX2X2 U354 ( .A(n502), .B(n534), .S0(n524), .Y(n508) );
  AND2X4 U355 ( .A(n241), .B(n166), .Y(n97) );
  CLKMX2X2 U356 ( .A(n187), .B(n188), .S0(n486), .Y(n186) );
  INVX3 U357 ( .A(n322), .Y(n343) );
  CLKAND2X3 U358 ( .A(n345), .B(n344), .Y(n348) );
  NOR3X1 U359 ( .A(n1), .B(n3), .C(n59), .Y(n60) );
  NOR2X2 U360 ( .A(n60), .B(n312), .Y(n314) );
  NAND2X2 U361 ( .A(n66), .B(n314), .Y(n588) );
  NAND2BX2 U362 ( .AN(n71), .B(reg_central[1]), .Y(n340) );
  XOR2XL U363 ( .A(n193), .B(n114), .Y(n199) );
  NOR3X4 U364 ( .A(n193), .B(n192), .C(n195), .Y(n197) );
  INVXL U365 ( .A(n535), .Y(n537) );
  AOI21XL U366 ( .A0(n239), .A1(n235), .B0(n54), .Y(n114) );
  INVX1 U367 ( .A(n263), .Y(n258) );
  OAI32X1 U368 ( .A0(n557), .A1(n558), .A2(n103), .B0(n571), .B1(n558), .Y(
        n580) );
  NAND2BX4 U369 ( .AN(n71), .B(reg_central[9]), .Y(n235) );
  INVX2 U370 ( .A(n500), .Y(n494) );
  XNOR3X2 U371 ( .A(n386), .B(n21), .C(n43), .Y(n145) );
  NOR2BXL U372 ( .AN(n243), .B(n277), .Y(n157) );
  AOI2BB2X1 U373 ( .B0(n549), .B1(n10), .A0N(n552), .A1N(n551), .Y(n553) );
  MXI2X4 U374 ( .A(n229), .B(n126), .S0(n223), .Y(n227) );
  AOI22XL U375 ( .A0(n36), .A1(n321), .B0(n320), .B1(n319), .Y(n173) );
  CLKMX2X2 U376 ( .A(n179), .B(n180), .S0(n462), .Y(n115) );
  XNOR2X1 U377 ( .A(n358), .B(n355), .Y(n94) );
  NAND2X2 U378 ( .A(n248), .B(n277), .Y(n249) );
  OAI22X1 U379 ( .A0(n606), .A1(n604), .B0(n631), .B1(n614), .Y(\candiCal/n6 )
         );
  OAI22X1 U380 ( .A0(n607), .A1(n606), .B0(n632), .B1(n614), .Y(\candiCal/n5 )
         );
  OAI22X1 U381 ( .A0(n597), .A1(n606), .B0(n627), .B1(n614), .Y(\candiCal/n10 ) );
  NAND2BX4 U382 ( .AN(n67), .B(reg_central[21]), .Y(n465) );
  INVXL U383 ( .A(n424), .Y(n431) );
  AOI32X1 U384 ( .A0(n145), .A1(n428), .A2(n135), .B0(n427), .B1(n134), .Y(
        n429) );
  INVX1 U385 ( .A(n491), .Y(n504) );
  XNOR2X2 U386 ( .A(n206), .B(addressIn[3]), .Y(n67) );
  CLKBUFX2 U387 ( .A(n559), .Y(n143) );
  INVX1 U388 ( .A(n556), .Y(n570) );
  OAI33X1 U389 ( .A0(n567), .A1(n104), .A2(n566), .B0(n565), .B1(n104), .B2(
        n103), .Y(n579) );
  NAND2X2 U390 ( .A(n160), .B(n161), .Y(n503) );
  MXI2X1 U391 ( .A(n112), .B(n113), .S0(n462), .Y(n500) );
  NOR2X2 U392 ( .A(n181), .B(n97), .Y(n246) );
  NOR3BX4 U393 ( .AN(n439), .B(n432), .C(n421), .Y(n146) );
  NAND2X2 U394 ( .A(n147), .B(n385), .Y(n368) );
  NAND2X2 U395 ( .A(n169), .B(n158), .Y(n88) );
  OR4X2 U396 ( .A(n164), .B(n436), .C(n120), .D(n434), .Y(n423) );
  NAND3X2 U397 ( .A(n583), .B(n581), .C(n582), .Y(n596) );
  XNOR2X4 U398 ( .A(n237), .B(n236), .Y(n277) );
  MXI2X2 U399 ( .A(n233), .B(n127), .S0(n232), .Y(n237) );
  NOR3X4 U400 ( .A(n210), .B(n209), .C(n44), .Y(n213) );
  AO21X4 U401 ( .A0(n465), .A1(n467), .B0(n450), .Y(n460) );
  AOI31X2 U402 ( .A0(n305), .A1(n306), .A2(n307), .B0(n304), .Y(n308) );
  XOR2X4 U403 ( .A(n490), .B(n489), .Y(n535) );
  AOI211X1 U404 ( .A0(n186), .A1(n535), .B0(n175), .C0(n525), .Y(n496) );
  NAND3X1 U405 ( .A(n61), .B(n62), .C(n258), .Y(n63) );
  INVXL U406 ( .A(n6), .Y(n62) );
  NOR2XL U407 ( .A(n401), .B(n400), .Y(n64) );
  CLKMX2X2 U408 ( .A(n392), .B(n391), .S0(n422), .Y(n400) );
  NAND2XL U409 ( .A(n117), .B(n355), .Y(n69) );
  NAND2X1 U410 ( .A(n70), .B(n69), .Y(n95) );
  INVXL U411 ( .A(n117), .Y(n68) );
  CLKINVX3 U412 ( .A(n464), .Y(n450) );
  NOR2X1 U413 ( .A(n8), .B(n591), .Y(n593) );
  XNOR2X1 U414 ( .A(n73), .B(n341), .Y(n98) );
  XOR2XL U415 ( .A(n531), .B(n148), .Y(n74) );
  INVX3 U416 ( .A(n398), .Y(n395) );
  OAI2BB1X2 U417 ( .A0N(n590), .A1N(n587), .B0(n586), .Y(n595) );
  NOR2X2 U418 ( .A(n53), .B(n395), .Y(n79) );
  INVX2 U419 ( .A(n79), .Y(n80) );
  OR2X4 U420 ( .A(n411), .B(n410), .Y(n416) );
  AOI32X1 U421 ( .A0(n416), .A1(n415), .A2(n414), .B0(n413), .B1(n412), .Y(
        n418) );
  NOR2XL U422 ( .A(reg_central[16]), .B(addressIn[0]), .Y(n129) );
  NOR2XL U423 ( .A(reg_central[8]), .B(addressIn[0]), .Y(n127) );
  OR2XL U424 ( .A(reg_central[0]), .B(addressIn[0]), .Y(n318) );
  NAND3X1 U425 ( .A(n82), .B(n416), .C(n402), .Y(n83) );
  INVXL U426 ( .A(n12), .Y(n82) );
  INVXL U427 ( .A(n413), .Y(n419) );
  INVXL U428 ( .A(n543), .Y(n538) );
  CLKINVX1 U429 ( .A(n482), .Y(n171) );
  INVXL U430 ( .A(n492), .Y(n493) );
  XOR2X1 U431 ( .A(n454), .B(reg_central[15]), .Y(n222) );
  XOR3X2 U432 ( .A(n529), .B(n528), .C(n527), .Y(n563) );
  NOR2X1 U433 ( .A(n267), .B(n251), .Y(n84) );
  INVXL U434 ( .A(n516), .Y(n522) );
  OR2XL U435 ( .A(n401), .B(n400), .Y(n417) );
  OR2X1 U436 ( .A(n101), .B(n398), .Y(n413) );
  NOR2X2 U437 ( .A(n560), .B(n561), .Y(n104) );
  OR2X4 U438 ( .A(n279), .B(n278), .Y(n286) );
  MXI3X2 U439 ( .A(n533), .B(n501), .C(n11), .S0(n494), .S1(n546), .Y(n100) );
  AND2XL U440 ( .A(n488), .B(n487), .Y(n489) );
  INVXL U441 ( .A(n239), .Y(n233) );
  XOR2XL U442 ( .A(n210), .B(n122), .Y(n216) );
  XNOR2X4 U443 ( .A(n334), .B(n333), .Y(n393) );
  AND2X2 U444 ( .A(reg_radius[5]), .B(n287), .Y(n298) );
  OR2XL U445 ( .A(reg_central[11]), .B(n479), .Y(n89) );
  NOR3BX4 U446 ( .AN(n89), .B(n197), .C(n196), .Y(n232) );
  AO21X4 U447 ( .A0(n64), .A1(n402), .B0(n407), .Y(n403) );
  AO21X4 U448 ( .A0(n509), .A1(n28), .B0(n514), .Y(n510) );
  AO21X4 U449 ( .A0(n91), .A1(n350), .B0(n349), .Y(n85) );
  AND2XL U450 ( .A(n575), .B(n574), .Y(n576) );
  AND2XL U451 ( .A(n290), .B(n289), .Y(n288) );
  NAND2X2 U452 ( .A(n247), .B(n275), .Y(n282) );
  INVX1 U453 ( .A(n278), .Y(n290) );
  INVX1 U454 ( .A(n534), .Y(n546) );
  MXI2X4 U455 ( .A(n335), .B(n2), .S0(n356), .Y(n334) );
  XOR2X4 U456 ( .A(n86), .B(n87), .Y(n533) );
  NOR2X1 U457 ( .A(n135), .B(n145), .Y(n120) );
  AND2XL U458 ( .A(n396), .B(n391), .Y(n370) );
  CLKINVX1 U459 ( .A(n589), .Y(n116) );
  NOR2BX4 U460 ( .AN(n168), .B(n88), .Y(n166) );
  OR2XL U461 ( .A(n126), .B(n229), .Y(n275) );
  AOI21X1 U462 ( .A0(n2), .A1(n353), .B0(n351), .Y(n117) );
  XNOR2XL U463 ( .A(n153), .B(n461), .Y(n113) );
  XNOR2XL U464 ( .A(n460), .B(n153), .Y(n112) );
  INVXL U465 ( .A(n228), .Y(n229) );
  AO21XL U466 ( .A0(n117), .A1(n360), .B0(n359), .Y(n362) );
  OA22XL U467 ( .A0(n290), .A1(n289), .B0(\judge/icj2/RSquare[0] ), .B1(n288), 
        .Y(n297) );
  OR3X1 U468 ( .A(en), .B(candidate[7]), .C(n632), .Y(n609) );
  INVX1 U469 ( .A(reg_central[22]), .Y(n446) );
  NAND2BXL U470 ( .AN(n472), .B(reg_central[0]), .Y(n339) );
  NAND2BXL U471 ( .AN(n447), .B(reg_central[4]), .Y(n352) );
  NAND2BXL U472 ( .AN(n447), .B(reg_central[20]), .Y(n467) );
  NAND3X1 U473 ( .A(reg_radius[1]), .B(n382), .C(n381), .Y(n384) );
  NAND2BXL U474 ( .AN(n472), .B(reg_central[8]), .Y(n239) );
  CLKINVX1 U475 ( .A(n143), .Y(n567) );
  CLKINVX1 U476 ( .A(n520), .Y(n509) );
  INVXL U477 ( .A(n568), .Y(n577) );
  XOR2X1 U478 ( .A(n543), .B(n105), .Y(n551) );
  AND2X2 U479 ( .A(n547), .B(n546), .Y(n545) );
  CLKINVX1 U480 ( .A(n400), .Y(n411) );
  AOI2BB1XL U481 ( .A0N(n451), .A1N(n452), .B0(n34), .Y(n457) );
  OR2X2 U482 ( .A(n328), .B(n391), .Y(n337) );
  NAND2BXL U483 ( .AN(n34), .B(n460), .Y(n458) );
  OR2XL U484 ( .A(n498), .B(n491), .Y(n149) );
  OR2XL U485 ( .A(n48), .B(n399), .Y(n412) );
  CLKINVX1 U486 ( .A(n428), .Y(n433) );
  CLKINVX1 U487 ( .A(n391), .Y(n378) );
  MXI2X4 U488 ( .A(n94), .B(n95), .S0(n9), .Y(n394) );
  MXI3X2 U489 ( .A(n393), .B(n395), .C(n101), .S0(n17), .S1(n376), .Y(n96) );
  NAND2BX1 U490 ( .AN(n178), .B(n100), .Y(n470) );
  CLKINVX1 U491 ( .A(n275), .Y(n289) );
  CLKINVX1 U492 ( .A(n300), .Y(n311) );
  CLKINVX1 U493 ( .A(n536), .Y(n547) );
  CLKINVX1 U494 ( .A(n396), .Y(n376) );
  CLKINVX1 U495 ( .A(n426), .Y(n435) );
  CLKINVX1 U496 ( .A(n561), .Y(n571) );
  CLKINVX1 U497 ( .A(n562), .Y(n566) );
  CLKINVX1 U498 ( .A(n425), .Y(n430) );
  NAND2XL U499 ( .A(n340), .B(n324), .Y(n325) );
  NAND2XL U500 ( .A(n353), .B(n332), .Y(n333) );
  NAND2BX1 U501 ( .AN(n127), .B(n239), .Y(n278) );
  OR2X1 U502 ( .A(n335), .B(n2), .Y(n396) );
  CLKINVX1 U503 ( .A(n352), .Y(n335) );
  OAI21XL U504 ( .A0(n220), .A1(n219), .B0(n218), .Y(n110) );
  OAI22XL U505 ( .A0(n370), .A1(n369), .B0(n396), .B1(n391), .Y(n111) );
  OR2XL U506 ( .A(n469), .B(n468), .Y(n534) );
  CLKINVX1 U507 ( .A(n467), .Y(n469) );
  OR2X1 U508 ( .A(n268), .B(n284), .Y(n300) );
  NAND2X2 U509 ( .A(n452), .B(n75), .Y(n453) );
  CLKINVX1 U510 ( .A(n339), .Y(n323) );
  AOI21XL U511 ( .A0(n228), .A1(n225), .B0(n207), .Y(n122) );
  OR2X1 U512 ( .A(n372), .B(n408), .Y(n426) );
  OR2X1 U513 ( .A(n138), .B(n408), .Y(n425) );
  OR2X1 U514 ( .A(n526), .B(n541), .Y(n561) );
  OR2X1 U515 ( .A(n139), .B(n526), .Y(n562) );
  OR2X1 U516 ( .A(n435), .B(n369), .Y(n382) );
  AOI21X1 U517 ( .A0(n372), .A1(n408), .B0(n435), .Y(n123) );
  AOI21X1 U518 ( .A0(n526), .A1(n541), .B0(n571), .Y(n124) );
  AOI21X1 U519 ( .A0(n268), .A1(n284), .B0(n311), .Y(n125) );
  NOR2XL U520 ( .A(reg_central[12]), .B(addressIn[3]), .Y(n126) );
  AOI2BB2X1 U521 ( .B0(n293), .B1(n292), .A0N(n295), .A1N(n294), .Y(n296) );
  NAND2BXL U522 ( .AN(n472), .B(reg_central[16]), .Y(n492) );
  XOR2X1 U523 ( .A(n610), .B(candidate[6]), .Y(n607) );
  XOR2X1 U524 ( .A(n599), .B(candidate[2]), .Y(n598) );
  XOR2X1 U525 ( .A(n601), .B(candidate[3]), .Y(n600) );
  XOR2X1 U526 ( .A(n603), .B(candidate[4]), .Y(n602) );
  XOR2X1 U527 ( .A(n605), .B(candidate[5]), .Y(n604) );
  OAI211X1 U528 ( .A0(n632), .A1(n610), .B0(n608), .C0(candidate[7]), .Y(n613)
         );
  NOR2X4 U529 ( .A(n195), .B(n177), .Y(n196) );
  NAND2BXL U530 ( .AN(n447), .B(reg_central[12]), .Y(n228) );
  OR2X1 U531 ( .A(n285), .B(n291), .Y(n292) );
  AOI211X1 U532 ( .A0(reg_radius[5]), .A1(n284), .B0(n311), .C0(n133), .Y(n285) );
  AND2X2 U533 ( .A(reg_radius[1]), .B(n382), .Y(n365) );
  OAI32X1 U534 ( .A0(n109), .A1(n555), .A2(n554), .B0(n553), .B1(n49), .Y(n556) );
  OA22X1 U535 ( .A0(n547), .A1(n546), .B0(\judge/icj1/RSquare[0] ), .B1(n545), 
        .Y(n554) );
  AND2X2 U536 ( .A(reg_radius[9]), .B(n544), .Y(n555) );
  NAND2XL U537 ( .A(n448), .B(reg_central[5]), .Y(n353) );
  CLKMX2X2 U538 ( .A(n551), .B(n571), .S0(\judge/icj1/RSquare[0] ), .Y(n544)
         );
  NAND2BX2 U539 ( .AN(n76), .B(reg_central[6]), .Y(n357) );
  NAND2X2 U540 ( .A(n477), .B(n55), .Y(n478) );
  CLKINVX1 U541 ( .A(reg_mode[1]), .Y(n317) );
  CLKINVX1 U542 ( .A(reg_radius[6]), .Y(n284) );
  CLKINVX1 U543 ( .A(reg_radius[7]), .Y(n268) );
  NOR2X1 U544 ( .A(reg_radius[5]), .B(n284), .Y(n133) );
  AOI22X1 U545 ( .A0(\judge/icj3/RSquare[0] ), .A1(n435), .B0(reg_radius[1]), 
        .B1(n123), .Y(n134) );
  MXI2X1 U546 ( .A(n138), .B(n373), .S0(\judge/icj3/RSquare[0] ), .Y(n135) );
  OR2X1 U547 ( .A(n336), .B(n369), .Y(n366) );
  AOI211X1 U548 ( .A0(reg_radius[1]), .A1(n372), .B0(n435), .C0(n138), .Y(n336) );
  OR2X1 U549 ( .A(n542), .B(n548), .Y(n549) );
  AOI211X1 U550 ( .A0(reg_radius[9]), .A1(n541), .B0(n571), .C0(n139), .Y(n542) );
  AND2X2 U551 ( .A(reg_radius[5]), .B(n291), .Y(n295) );
  CLKINVX1 U552 ( .A(\judge/icj1/RSquare[0] ), .Y(n548) );
  CLKINVX1 U553 ( .A(\judge/icj3/RSquare[0] ), .Y(n369) );
  CLKINVX1 U554 ( .A(reg_radius[10]), .Y(n541) );
  CLKINVX1 U555 ( .A(\judge/icj2/RSquare[0] ), .Y(n291) );
  CLKINVX1 U556 ( .A(reg_radius[2]), .Y(n372) );
  MXI2X1 U557 ( .A(n133), .B(n271), .S0(\judge/icj2/RSquare[0] ), .Y(n136) );
  CLKINVX1 U558 ( .A(reg_radius[11]), .Y(n526) );
  AOI22X1 U559 ( .A0(\judge/icj1/RSquare[0] ), .A1(n571), .B0(reg_radius[9]), 
        .B1(n124), .Y(n137) );
  NOR2X1 U560 ( .A(reg_radius[1]), .B(n372), .Y(n138) );
  NOR2X1 U561 ( .A(reg_radius[9]), .B(n541), .Y(n139) );
  CLKINVX1 U562 ( .A(reg_radius[3]), .Y(n408) );
  MXI2X1 U563 ( .A(n139), .B(n530), .S0(\judge/icj1/RSquare[0] ), .Y(n140) );
  AOI22X1 U564 ( .A0(\judge/icj2/RSquare[0] ), .A1(n311), .B0(reg_radius[5]), 
        .B1(n125), .Y(n141) );
  NAND2BX1 U565 ( .AN(en), .B(reg_mode[0]), .Y(n589) );
  NAND2BX1 U566 ( .AN(n605), .B(candidate[5]), .Y(n610) );
  NAND2BX1 U567 ( .AN(n599), .B(candidate[2]), .Y(n601) );
  NAND2BX1 U568 ( .AN(n601), .B(candidate[3]), .Y(n603) );
  NAND2BX1 U569 ( .AN(n603), .B(candidate[4]), .Y(n605) );
  NAND2BX1 U570 ( .AN(n627), .B(candidate[0]), .Y(n599) );
  CLKINVX1 U571 ( .A(rst), .Y(n615) );
  CLKINVX1 U572 ( .A(en), .Y(n608) );
  XOR2X1 U573 ( .A(n209), .B(n208), .Y(n215) );
  AOI32X1 U574 ( .A0(n56), .A1(n564), .A2(n140), .B0(n137), .B1(n563), .Y(n565) );
  INVXL U575 ( .A(n388), .Y(n328) );
  AOI211X1 U576 ( .A0(n17), .A1(n393), .B0(n102), .C0(n421), .Y(n364) );
  OR2XL U577 ( .A(n19), .B(n185), .Y(n257) );
  XOR2X1 U578 ( .A(n627), .B(candidate[0]), .Y(n597) );
  INVX1 U579 ( .A(n261), .Y(n144) );
  CLKINVX1 U580 ( .A(n458), .Y(n179) );
  NAND2X1 U581 ( .A(reg_mode[0]), .B(n584), .Y(n582) );
  CLKINVX1 U582 ( .A(n457), .Y(n180) );
  CLKMX2X6 U583 ( .A(n242), .B(n275), .S0(n97), .Y(n253) );
  XNOR2X1 U584 ( .A(n52), .B(n485), .Y(n188) );
  OAI33X1 U585 ( .A0(n431), .A1(n156), .A2(n430), .B0(n156), .B1(n429), .B2(
        n58), .Y(n444) );
  INVXL U586 ( .A(n222), .Y(n158) );
  INVXL U587 ( .A(n154), .Y(n159) );
  AO22X1 U588 ( .A0(n303), .A1(n22), .B0(n302), .B1(n97), .Y(n304) );
  NAND2X2 U589 ( .A(n368), .B(n111), .Y(n371) );
  INVXL U590 ( .A(n432), .Y(n442) );
  OR2X8 U591 ( .A(n451), .B(n34), .Y(n459) );
  NOR2X2 U592 ( .A(n498), .B(n491), .Y(n175) );
  OR2X1 U593 ( .A(n323), .B(n327), .Y(n391) );
  INVX1 U594 ( .A(n318), .Y(n327) );
  OR2XL U595 ( .A(n302), .B(n97), .Y(n303) );
  XNOR2X1 U596 ( .A(n484), .B(n52), .Y(n187) );
  NAND2X1 U597 ( .A(n462), .B(n463), .Y(n183) );
  AOI2BB1XL U598 ( .A0N(n201), .A1N(n200), .B0(n45), .Y(n202) );
  NAND2XL U599 ( .A(n244), .B(n274), .Y(n245) );
  NAND2XL U600 ( .A(n235), .B(n234), .Y(n236) );
  AO21XL U601 ( .A0(n119), .A1(n35), .B0(n346), .Y(n347) );
  AOI211X1 U602 ( .A0(n494), .A1(n533), .B0(n178), .C0(n524), .Y(n495) );
  AND3X4 U603 ( .A(n301), .B(n300), .C(n299), .Y(n305) );
  OAI222X2 U604 ( .A0(n161), .A1(n480), .B0(reg_central[19]), .B1(n479), .C0(
        n478), .C1(n7), .Y(n481) );
  AND2XL U605 ( .A(n25), .B(n439), .Y(n441) );
  OAI222X2 U606 ( .A0(n30), .A1(n455), .B0(reg_central[23]), .B1(n454), .C0(
        n459), .C1(n453), .Y(n456) );
  AO22X4 U607 ( .A0(n420), .A1(n419), .B0(n418), .B1(n417), .Y(n432) );
  XOR2X4 U608 ( .A(n227), .B(n226), .Y(n274) );
  OAI31X2 U609 ( .A0(n341), .A1(n174), .A2(n119), .B0(n172), .Y(n322) );
  NOR2X2 U610 ( .A(n44), .B(n211), .Y(n212) );
  CLKINVX1 U611 ( .A(n463), .Y(n468) );
  OR2XL U612 ( .A(reg_central[20]), .B(addressIn[3]), .Y(n463) );
  MXI2X4 U613 ( .A(n323), .B(n327), .S0(n343), .Y(n326) );
  NAND2X2 U614 ( .A(n585), .B(n608), .Y(n587) );
  AO21X4 U615 ( .A0(n258), .A1(n144), .B0(n6), .Y(n259) );
  XNOR2X4 U616 ( .A(n326), .B(n325), .Y(n388) );
  AO21X4 U617 ( .A0(n340), .A1(n339), .B0(n338), .Y(n345) );
  OR2X4 U618 ( .A(n376), .B(n364), .Y(n375) );
  AO21X4 U619 ( .A0(n468), .A1(n465), .B0(n450), .Y(n452) );
  OR2X4 U620 ( .A(n546), .B(n495), .Y(n539) );
  AO21X4 U621 ( .A0(n148), .A1(n532), .B0(n531), .Y(n518) );
  OR2X4 U622 ( .A(n148), .B(n532), .Y(n517) );
  AO22X4 U623 ( .A0(n523), .A1(n522), .B0(n521), .B1(n520), .Y(n568) );
endmodule


module SET ( clk, rst, en, central, radius, mode, busy, valid, candidate );
  input [23:0] central;
  input [11:0] radius;
  input [1:0] mode;
  output [7:0] candidate;
  input clk, rst, en;
  output busy, valid;

  wire   [5:0] WorkAddr;
  wire   [23:0] reg_central;
  wire   [11:0] reg_radius;
  wire   [1:0] reg_mode;

  stateGenerator stateGenerator ( .clk(clk), .rst(rst), .addr(WorkAddr), .en(
        en), .busy(busy), .valid(valid) );
  addressGenerator addressGenerator ( .clk(clk), .rst(rst), .en(en), .busy(
        busy), .central(central), .radius(radius), .mode(mode), .reg_central(
        reg_central), .reg_radius(reg_radius), .reg_mode(reg_mode), .addr(
        WorkAddr) );
  TMP t ( .addressIn(WorkAddr), .reg_central(reg_central), .reg_radius(
        reg_radius), .reg_mode(reg_mode), .clk(clk), .rst(rst), .en(en), 
        .candidate(candidate) );
endmodule

