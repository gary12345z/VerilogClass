/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03
// Date      : Sun Dec 29 15:17:24 2019
/////////////////////////////////////////////////////////////


module stateGenerator ( clk, rst, addr, en, busy, valid );
  input [5:0] addr;
  input clk, rst, en;
  output busy, valid;
  wire   valid_reg, n6, n7, n8;
  wire   [1:0] cs;
  wire   [1:0] ns;

  DFFQX1 \cs_reg[1]  ( .D(ns[1]), .CK(clk), .Q(cs[1]) );
  DFFQX1 \cs_reg[0]  ( .D(ns[0]), .CK(clk), .Q(cs[0]) );
  DFFQX1 busy_reg ( .D(ns[0]), .CK(clk), .Q(busy) );
  DFFQX1 valid_reg_reg ( .D(ns[1]), .CK(clk), .Q(valid_reg) );
  DFFQX1 valid_reg_inst ( .D(valid_reg), .CK(clk), .Q(valid) );
  NOR3X1 U9 ( .A(n7), .B(rst), .C(cs[1]), .Y(ns[0]) );
  NOR3X1 U10 ( .A(n6), .B(rst), .C(cs[1]), .Y(ns[1]) );
  OAI21XL U11 ( .A0(en), .A1(cs[0]), .B0(n6), .Y(n7) );
  NAND4XL U12 ( .A(addr[3]), .B(addr[2]), .C(addr[1]), .D(addr[0]), .Y(n8) );
  NAND4BXL U13 ( .AN(n8), .B(addr[4]), .C(cs[0]), .D(addr[5]), .Y(n6) );
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
  wire   n37, n38, n39, n6, n7, n8, n11, n12, n13, n14, n15, n16, n18, n20, n1,
         n3, n10, n17, n19, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  DFFRX4 \addr_reg[1]  ( .D(n16), .CK(clk), .RN(n35), .Q(n38), .QN(n6) );
  DFFRX4 \addr_reg[4]  ( .D(n13), .CK(clk), .RN(n35), .Q(addr[4]), .QN(n1) );
  DFFRX4 \addr_reg[0]  ( .D(n18), .CK(clk), .RN(n35), .Q(n39), .QN(n11) );
  EDFFX1 \reg_mode_reg[0]  ( .D(mode[0]), .E(n17), .CK(clk), .Q(reg_mode[0])
         );
  EDFFX1 \reg_radius_reg[1]  ( .D(radius[1]), .E(n10), .CK(clk), .Q(
        reg_radius[1]) );
  EDFFX1 \reg_radius_reg[8]  ( .D(radius[8]), .E(n20), .CK(clk), .Q(
        reg_radius[8]) );
  EDFFX1 \reg_radius_reg[4]  ( .D(radius[4]), .E(n10), .CK(clk), .Q(
        reg_radius[4]) );
  EDFFX1 \reg_radius_reg[0]  ( .D(radius[0]), .E(n17), .CK(clk), .Q(
        reg_radius[0]) );
  EDFFX1 \reg_mode_reg[1]  ( .D(mode[1]), .E(n10), .CK(clk), .Q(reg_mode[1])
         );
  EDFFX1 \reg_radius_reg[11]  ( .D(radius[11]), .E(n20), .CK(clk), .Q(
        reg_radius[11]) );
  EDFFX1 \reg_radius_reg[7]  ( .D(radius[7]), .E(n10), .CK(clk), .Q(
        reg_radius[7]) );
  EDFFX1 \reg_radius_reg[3]  ( .D(radius[3]), .E(n17), .CK(clk), .Q(
        reg_radius[3]) );
  EDFFX1 \reg_radius_reg[10]  ( .D(radius[10]), .E(n10), .CK(clk), .Q(
        reg_radius[10]) );
  EDFFX1 \reg_radius_reg[6]  ( .D(radius[6]), .E(n17), .CK(clk), .Q(
        reg_radius[6]) );
  EDFFX1 \reg_radius_reg[2]  ( .D(radius[2]), .E(n20), .CK(clk), .Q(
        reg_radius[2]) );
  EDFFX1 \reg_radius_reg[9]  ( .D(radius[9]), .E(n17), .CK(clk), .Q(
        reg_radius[9]) );
  EDFFX1 \reg_radius_reg[5]  ( .D(radius[5]), .E(n20), .CK(clk), .Q(
        reg_radius[5]) );
  EDFFX1 \reg_central_reg[14]  ( .D(central[14]), .E(n10), .CK(clk), .Q(
        reg_central[14]) );
  EDFFX1 \reg_central_reg[21]  ( .D(central[21]), .E(n20), .CK(clk), .Q(
        reg_central[21]) );
  EDFFX1 \reg_central_reg[9]  ( .D(central[9]), .E(n20), .CK(clk), .Q(
        reg_central[9]) );
  EDFFX1 \reg_central_reg[15]  ( .D(central[15]), .E(n20), .CK(clk), .Q(
        reg_central[15]) );
  EDFFX1 \reg_central_reg[4]  ( .D(central[4]), .E(n17), .CK(clk), .Q(
        reg_central[4]) );
  EDFFX1 \reg_central_reg[0]  ( .D(central[0]), .E(n20), .CK(clk), .Q(
        reg_central[0]) );
  EDFFX1 \reg_central_reg[17]  ( .D(central[17]), .E(n10), .CK(clk), .Q(
        reg_central[17]) );
  EDFFX1 \reg_central_reg[1]  ( .D(central[1]), .E(n17), .CK(clk), .Q(
        reg_central[1]) );
  EDFFX1 \reg_central_reg[5]  ( .D(central[5]), .E(n10), .CK(clk), .Q(
        reg_central[5]) );
  EDFFX1 \reg_central_reg[19]  ( .D(central[19]), .E(n17), .CK(clk), .Q(
        reg_central[19]) );
  EDFFX1 \reg_central_reg[22]  ( .D(central[22]), .E(n17), .CK(clk), .Q(
        reg_central[22]) );
  EDFFX1 \reg_central_reg[18]  ( .D(central[18]), .E(n20), .CK(clk), .Q(
        reg_central[18]) );
  EDFFX1 \reg_central_reg[10]  ( .D(central[10]), .E(n17), .CK(clk), .Q(
        reg_central[10]) );
  EDFFX1 \reg_central_reg[2]  ( .D(central[2]), .E(n10), .CK(clk), .Q(
        reg_central[2]) );
  EDFFX1 \reg_central_reg[6]  ( .D(central[6]), .E(n20), .CK(clk), .Q(
        reg_central[6]) );
  EDFFX1 \reg_central_reg[23]  ( .D(central[23]), .E(n10), .CK(clk), .Q(
        reg_central[23]) );
  EDFFX1 \reg_central_reg[11]  ( .D(central[11]), .E(n10), .CK(clk), .Q(
        reg_central[11]) );
  EDFFX1 \reg_central_reg[3]  ( .D(central[3]), .E(n20), .CK(clk), .Q(
        reg_central[3]) );
  EDFFX1 \reg_central_reg[7]  ( .D(central[7]), .E(n17), .CK(clk), .Q(
        reg_central[7]) );
  EDFFX1 \reg_central_reg[12]  ( .D(central[12]), .E(n20), .CK(clk), .Q(
        reg_central[12]) );
  EDFFX1 \reg_central_reg[13]  ( .D(central[13]), .E(n17), .CK(clk), .Q(
        reg_central[13]) );
  EDFFX1 \reg_central_reg[20]  ( .D(central[20]), .E(n10), .CK(clk), .Q(
        reg_central[20]) );
  EDFFX1 \reg_central_reg[8]  ( .D(central[8]), .E(n10), .CK(clk), .Q(
        reg_central[8]) );
  EDFFX1 \reg_central_reg[16]  ( .D(central[16]), .E(n17), .CK(clk), .Q(
        reg_central[16]) );
  DFFRHQX2 \addr_reg[3]  ( .D(n14), .CK(clk), .RN(n35), .Q(addr[3]) );
  DFFRX4 \addr_reg[2]  ( .D(n15), .CK(clk), .RN(n35), .Q(n37), .QN(n7) );
  DFFRX2 \addr_reg[5]  ( .D(n12), .CK(clk), .RN(n35), .Q(addr[5]), .QN(n8) );
  INVX1 U16 ( .A(n7), .Y(addr[2]) );
  INVXL U17 ( .A(addr[3]), .Y(n3) );
  OR4XL U18 ( .A(n23), .B(n7), .C(n8), .D(n21), .Y(n28) );
  NAND2BXL U19 ( .AN(n27), .B(addr[3]), .Y(n30) );
  CLKINVX1 U20 ( .A(n28), .Y(n33) );
  CLKINVX1 U21 ( .A(n19), .Y(n34) );
  INVX3 U22 ( .A(n11), .Y(addr[0]) );
  INVX3 U23 ( .A(n6), .Y(addr[1]) );
  OR4X1 U24 ( .A(n19), .B(n1), .C(n3), .D(n11), .Y(n21) );
  NAND2BX1 U25 ( .AN(en), .B(busy), .Y(n19) );
  NAND2BX1 U26 ( .AN(n23), .B(n39), .Y(n25) );
  OAI2BB1X1 U27 ( .A0N(n34), .A1N(n29), .B0(n28), .Y(n13) );
  OAI2BB1X1 U28 ( .A0N(n34), .A1N(n26), .B0(n28), .Y(n14) );
  OAI2BB1X1 U29 ( .A0N(n34), .A1N(n24), .B0(n28), .Y(n15) );
  XNOR2X1 U30 ( .A(n37), .B(n25), .Y(n24) );
  NAND2BX1 U31 ( .AN(n25), .B(n37), .Y(n27) );
  AO21X1 U32 ( .A0(n34), .A1(n32), .B0(n33), .Y(n12) );
  XOR2X1 U33 ( .A(n31), .B(n8), .Y(n32) );
  OR2X1 U34 ( .A(n1), .B(n30), .Y(n31) );
  NOR2X1 U35 ( .A(n36), .B(rst), .Y(n10) );
  NOR2X1 U36 ( .A(n36), .B(rst), .Y(n17) );
  NOR2X1 U37 ( .A(n36), .B(rst), .Y(n20) );
  CLKINVX1 U38 ( .A(en), .Y(n36) );
  CLKINVX1 U39 ( .A(rst), .Y(n35) );
  AO21XL U40 ( .A0(n11), .A1(n34), .B0(n33), .Y(n18) );
  AO21X1 U41 ( .A0(n34), .A1(n22), .B0(n33), .Y(n16) );
  INVXL U42 ( .A(n38), .Y(n23) );
  XOR2XL U43 ( .A(n39), .B(n38), .Y(n22) );
  XNOR2XL U44 ( .A(addr[4]), .B(n30), .Y(n29) );
  XNOR2XL U45 ( .A(addr[3]), .B(n27), .Y(n26) );
endmodule


module judge ( clk, addressIn, reg_central, reg_radius, C1, C2, C3 );
  input [5:0] addressIn;
  input [23:0] reg_central;
  input [11:0] reg_radius;
  input clk;
  output C1, C2, C3;
  wire   TC1, TC2, TC3, \icj1/RSquare[0] , \icj3/RSquare[0] ,
         \icj2/RSquare[0] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
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
         n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482,
         n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, n493,
         n494, n495, n496, n497, n498, n499, n500, n501, n502, n503, n504,
         n505, n506, n507, n508, n509, n510, n511, n512, n513, n514, n515,
         n516, n517, n518, n519, n520, n521, n522;
  assign \icj1/RSquare[0]  = reg_radius[8];
  assign \icj3/RSquare[0]  = reg_radius[0];
  assign \icj2/RSquare[0]  = reg_radius[4];

  DFFQXL C2_reg ( .D(TC2), .CK(clk), .Q(C2) );
  DFFQX1 C1_reg ( .D(TC1), .CK(clk), .Q(C1) );
  DFFQXL C3_reg ( .D(TC3), .CK(clk), .Q(C3) );
  CLKMX2X2 U3 ( .A(n318), .B(n303), .S0(n133), .Y(n306) );
  AOI2BB2X4 U4 ( .B0(n297), .B1(n301), .A0N(n419), .A1N(reg_central[15]), .Y(
        n133) );
  INVX3 U5 ( .A(n354), .Y(n348) );
  CLKMX2X2 U6 ( .A(n320), .B(n369), .S0(n348), .Y(n338) );
  INVX3 U7 ( .A(addressIn[0]), .Y(n395) );
  AO22X4 U8 ( .A0(n20), .A1(n122), .B0(n465), .B1(n114), .Y(n471) );
  NOR2X2 U9 ( .A(n493), .B(n490), .Y(n114) );
  NAND2BX1 U10 ( .AN(n61), .B(n71), .Y(n468) );
  NOR2X2 U11 ( .A(n456), .B(n454), .Y(n61) );
  OR2X2 U12 ( .A(n461), .B(n460), .Y(n493) );
  XOR2X1 U13 ( .A(n400), .B(reg_central[19]), .Y(n411) );
  OA21X1 U14 ( .A0(n103), .A1(n160), .B0(n159), .Y(n161) );
  NAND2BX1 U15 ( .AN(n37), .B(reg_central[2]), .Y(n159) );
  INVX3 U16 ( .A(n442), .Y(n456) );
  NAND2BX2 U17 ( .AN(n395), .B(addressIn[1]), .Y(n43) );
  CLKMX2X3 U18 ( .A(n444), .B(n437), .S0(n117), .Y(n441) );
  INVX3 U19 ( .A(n199), .Y(n200) );
  CLKINVX2 U20 ( .A(n188), .Y(n201) );
  OR2X4 U21 ( .A(n330), .B(n331), .Y(n361) );
  INVX1 U22 ( .A(addressIn[3]), .Y(n416) );
  AO21XL U23 ( .A0(n462), .A1(n487), .B0(n61), .Y(n8) );
  AOI2BB2XL U24 ( .B0(n375), .B1(n376), .A0N(n379), .A1N(n378), .Y(n381) );
  OR2X1 U25 ( .A(n376), .B(n375), .Y(n380) );
  XNOR2X1 U26 ( .A(n365), .B(n364), .Y(n376) );
  XNOR3X1 U27 ( .A(n113), .B(n336), .C(n337), .Y(n385) );
  NOR2X2 U28 ( .A(n364), .B(n361), .Y(n113) );
  OR2X2 U29 ( .A(n464), .B(n463), .Y(n490) );
  AO22XL U30 ( .A0(n385), .A1(n384), .B0(n383), .B1(n382), .Y(n389) );
  AND2XL U31 ( .A(n186), .B(n185), .Y(n187) );
  INVX1 U32 ( .A(n185), .Y(n151) );
  AND2X4 U33 ( .A(n39), .B(n40), .Y(n2) );
  AO22X4 U34 ( .A0(n268), .A1(n267), .B0(n266), .B1(n265), .Y(n272) );
  OR2X4 U35 ( .A(n432), .B(n431), .Y(n448) );
  OAI2BB1X4 U36 ( .A0N(n99), .A1N(n60), .B0(n230), .Y(n270) );
  AO21XL U37 ( .A0(n208), .A1(n238), .B0(n73), .Y(n57) );
  OR2X6 U38 ( .A(n208), .B(n238), .Y(n199) );
  NAND3X1 U39 ( .A(n47), .B(n48), .C(n49), .Y(n520) );
  OR2X2 U40 ( .A(n482), .B(n516), .Y(n48) );
  CLKAND2X3 U41 ( .A(n52), .B(n53), .Y(n118) );
  CLKINVX2 U42 ( .A(n485), .Y(n486) );
  OR2X6 U43 ( .A(n459), .B(n485), .Y(n457) );
  XOR2X4 U44 ( .A(n77), .B(n78), .Y(n485) );
  OR2X6 U45 ( .A(n462), .B(n487), .Y(n454) );
  AOI21XL U46 ( .A0(n439), .A1(n444), .B0(n397), .Y(n88) );
  NAND2X1 U47 ( .A(n401), .B(n411), .Y(n53) );
  NAND2BX2 U48 ( .AN(n37), .B(reg_central[18]), .Y(n407) );
  NAND2XL U49 ( .A(n396), .B(reg_central[1]), .Y(n186) );
  NAND2XL U50 ( .A(n396), .B(reg_central[17]), .Y(n439) );
  OR2X4 U51 ( .A(reg_central[17]), .B(n396), .Y(n438) );
  OR2XL U52 ( .A(reg_central[1]), .B(n396), .Y(n185) );
  NAND2X2 U53 ( .A(n42), .B(n43), .Y(n396) );
  INVX1 U54 ( .A(n128), .Y(n134) );
  AOI2BB2X1 U55 ( .B0(n156), .B1(n163), .A0N(n400), .A1N(reg_central[3]), .Y(
        n119) );
  INVX1 U56 ( .A(n438), .Y(n397) );
  OR2X2 U57 ( .A(reg_central[10]), .B(n394), .Y(n278) );
  AND2X2 U58 ( .A(n403), .B(n157), .Y(n12) );
  MXI2X2 U59 ( .A(n450), .B(n433), .S0(n27), .Y(n77) );
  INVXL U60 ( .A(n220), .Y(n15) );
  NAND2BX1 U61 ( .AN(reg_central[5]), .B(n126), .Y(n181) );
  OAI21X2 U62 ( .A0(n166), .A1(n167), .B0(n134), .Y(n169) );
  CLKINVX1 U63 ( .A(addressIn[1]), .Y(n41) );
  NAND2X1 U64 ( .A(n191), .B(n38), .Y(n39) );
  CLKINVX1 U65 ( .A(n176), .Y(n167) );
  OR2X2 U66 ( .A(n416), .B(n32), .Y(n34) );
  OR2X2 U67 ( .A(n206), .B(n207), .Y(n244) );
  NOR2X1 U68 ( .A(n36), .B(n228), .Y(n206) );
  AO21X1 U69 ( .A0(n205), .A1(n50), .B0(n64), .Y(n36) );
  NOR2X1 U70 ( .A(n8), .B(n479), .Y(n463) );
  OR2X1 U71 ( .A(n457), .B(n29), .Y(n116) );
  NOR2X4 U72 ( .A(n9), .B(n10), .Y(n27) );
  AND2X2 U73 ( .A(n422), .B(n421), .Y(n9) );
  CLKAND2X3 U74 ( .A(n420), .B(n431), .Y(n10) );
  CLKMX2X2 U75 ( .A(n405), .B(n404), .S0(n118), .Y(n443) );
  INVX1 U76 ( .A(n194), .Y(n205) );
  CLKINVX1 U77 ( .A(n189), .Y(n208) );
  CLKMX2X2 U78 ( .A(n162), .B(n161), .S0(n120), .Y(n164) );
  AOI2BB2X1 U79 ( .B0(n420), .B1(n431), .A0N(n419), .A1N(reg_central[23]), .Y(
        n28) );
  CLKINVX1 U80 ( .A(n443), .Y(n462) );
  CLKINVX1 U81 ( .A(n317), .Y(n326) );
  OR2X1 U82 ( .A(n89), .B(n76), .Y(n300) );
  OR2X1 U83 ( .A(n290), .B(n289), .Y(n312) );
  XOR2X1 U84 ( .A(n18), .B(n218), .Y(n222) );
  NAND2X1 U85 ( .A(n16), .B(n17), .Y(n18) );
  NAND2X1 U86 ( .A(n219), .B(n15), .Y(n16) );
  OR2X1 U87 ( .A(n110), .B(n222), .Y(n269) );
  CLKINVX1 U88 ( .A(n506), .Y(n508) );
  OR2X1 U89 ( .A(n108), .B(n473), .Y(n515) );
  OR2X1 U90 ( .A(n462), .B(n442), .Y(n483) );
  CLKINVX1 U91 ( .A(n377), .Y(n379) );
  OR2X1 U92 ( .A(n326), .B(n316), .Y(n354) );
  OR2X1 U93 ( .A(n329), .B(n312), .Y(n353) );
  OR2XL U94 ( .A(n264), .B(n263), .Y(n265) );
  CLKINVX1 U95 ( .A(n235), .Y(n228) );
  CLKINVX1 U96 ( .A(n234), .Y(n229) );
  XOR2X1 U97 ( .A(n6), .B(n477), .Y(n138) );
  CLKINVX1 U98 ( .A(n483), .Y(n479) );
  OR2X1 U99 ( .A(n366), .B(n351), .Y(n46) );
  OR2X1 U100 ( .A(n354), .B(n353), .Y(n44) );
  CLKINVX1 U101 ( .A(n353), .Y(n349) );
  NOR2X1 U102 ( .A(reg_central[8]), .B(addressIn[0]), .Y(n1) );
  CLKINVX1 U103 ( .A(n295), .Y(n135) );
  INVX1 U104 ( .A(n448), .Y(n29) );
  INVXL U105 ( .A(n298), .Y(n296) );
  XOR2X1 U106 ( .A(n154), .B(addressIn[2]), .Y(n394) );
  OAI21XL U107 ( .A0(n142), .A1(n303), .B0(n143), .Y(n298) );
  OR2X1 U108 ( .A(reg_central[14]), .B(n414), .Y(n292) );
  CLKINVX1 U109 ( .A(n449), .Y(n459) );
  NAND2X1 U110 ( .A(n111), .B(n69), .Y(n215) );
  CLKINVX1 U111 ( .A(n215), .Y(n217) );
  NAND2BX1 U112 ( .AN(n89), .B(n292), .Y(n295) );
  AND2X2 U113 ( .A(n54), .B(n56), .Y(n3) );
  INVX3 U114 ( .A(addressIn[4]), .Y(n32) );
  NAND2XL U115 ( .A(n3), .B(n55), .Y(n275) );
  OR2X1 U116 ( .A(n270), .B(n233), .Y(n55) );
  NAND2X1 U117 ( .A(n150), .B(n149), .Y(n4) );
  XOR2X1 U118 ( .A(n419), .B(reg_central[23]), .Y(n431) );
  NAND2X1 U119 ( .A(n416), .B(n32), .Y(n33) );
  NOR2X2 U120 ( .A(n480), .B(n488), .Y(n131) );
  AOI211XL U121 ( .A0(n326), .A1(n355), .B0(n124), .C0(n348), .Y(n327) );
  INVX3 U122 ( .A(n417), .Y(n126) );
  NAND2X1 U123 ( .A(n150), .B(n149), .Y(n184) );
  XNOR2X1 U124 ( .A(n5), .B(n245), .Y(n256) );
  AOI21X1 U125 ( .A0(n90), .A1(n243), .B0(n242), .Y(n5) );
  XNOR2X1 U126 ( .A(n154), .B(addressIn[2]), .Y(n37) );
  OR2X2 U127 ( .A(n302), .B(n301), .Y(n316) );
  XOR2X1 U128 ( .A(n70), .B(n436), .Y(n6) );
  OR2XL U129 ( .A(n458), .B(n448), .Y(n436) );
  NAND2XL U130 ( .A(n417), .B(reg_central[21]), .Y(n435) );
  OR2X2 U131 ( .A(reg_central[21]), .B(n417), .Y(n434) );
  NAND2X2 U132 ( .A(n135), .B(n298), .Y(n7) );
  NAND2X2 U133 ( .A(n7), .B(n292), .Y(n297) );
  XOR2X4 U134 ( .A(n441), .B(n440), .Y(n487) );
  MX2X1 U135 ( .A(n173), .B(n172), .S0(n179), .Y(n194) );
  XOR3XL U136 ( .A(n114), .B(n58), .C(n20), .Y(n514) );
  CLKMX2X2 U137 ( .A(n424), .B(n423), .S0(n27), .Y(n449) );
  NAND2X2 U138 ( .A(n33), .B(n34), .Y(n417) );
  XOR2X1 U139 ( .A(n339), .B(n340), .Y(n11) );
  XOR2X1 U140 ( .A(n11), .B(n338), .Y(n342) );
  AND2X4 U141 ( .A(n156), .B(n163), .Y(n13) );
  NOR2X4 U142 ( .A(n12), .B(n13), .Y(n120) );
  INVXL U143 ( .A(n400), .Y(n403) );
  INVXL U144 ( .A(reg_central[3]), .Y(n157) );
  XOR2XL U145 ( .A(n400), .B(reg_central[3]), .Y(n163) );
  MXI2XL U146 ( .A(n86), .B(n87), .S0(n120), .Y(n189) );
  NAND2X2 U147 ( .A(addressIn[0]), .B(addressIn[1]), .Y(n154) );
  NOR2BX2 U148 ( .AN(n141), .B(n468), .Y(n112) );
  AND2XL U149 ( .A(n439), .B(n438), .Y(n440) );
  OR2X4 U150 ( .A(n328), .B(n327), .Y(n364) );
  NAND2XL U151 ( .A(n171), .B(n195), .Y(n149) );
  INVX3 U152 ( .A(n171), .Y(n179) );
  NOR2X2 U153 ( .A(n244), .B(n241), .Y(n72) );
  AOI211X1 U154 ( .A0(n459), .A1(n485), .B0(n146), .C0(n121), .Y(n460) );
  NOR2X2 U155 ( .A(n350), .B(n359), .Y(n74) );
  OR2X6 U156 ( .A(n392), .B(n35), .Y(n350) );
  NAND2X1 U157 ( .A(n14), .B(n220), .Y(n17) );
  INVXL U158 ( .A(n219), .Y(n14) );
  MX2X1 U159 ( .A(n192), .B(n250), .S0(n229), .Y(n219) );
  CLKMX2X2 U160 ( .A(n198), .B(n249), .S0(n228), .Y(n218) );
  NOR2XL U161 ( .A(n350), .B(n359), .Y(n19) );
  CLKBUFX2 U162 ( .A(n468), .Y(n20) );
  NOR2X1 U163 ( .A(reg_central[18]), .B(n394), .Y(n21) );
  NOR2XL U164 ( .A(reg_central[18]), .B(n394), .Y(n22) );
  OR2X1 U165 ( .A(n495), .B(n481), .Y(n49) );
  NAND2X1 U166 ( .A(n25), .B(n26), .Y(n50) );
  CLKINVX1 U167 ( .A(n119), .Y(n38) );
  NAND2XL U168 ( .A(n102), .B(n119), .Y(n40) );
  NAND2XL U169 ( .A(n4), .B(n24), .Y(n25) );
  NAND2X1 U170 ( .A(n23), .B(n183), .Y(n26) );
  INVXL U171 ( .A(n4), .Y(n23) );
  INVXL U172 ( .A(n183), .Y(n24) );
  OR2X1 U173 ( .A(n246), .B(n232), .Y(n56) );
  INVXL U174 ( .A(n414), .Y(n413) );
  OR2X1 U175 ( .A(n425), .B(n95), .Y(n430) );
  XOR2X1 U176 ( .A(n347), .B(n63), .Y(n30) );
  XOR2X1 U177 ( .A(n30), .B(n346), .Y(n59) );
  NOR2XL U178 ( .A(n324), .B(n316), .Y(n63) );
  OR2XL U179 ( .A(n123), .B(n312), .Y(n347) );
  AOI32X1 U180 ( .A0(n224), .A1(n269), .A2(n223), .B0(n110), .B1(n222), .Y(
        n233) );
  NAND2BX1 U181 ( .AN(n168), .B(addressIn[5]), .Y(n419) );
  OR2X2 U182 ( .A(n205), .B(n236), .Y(n203) );
  OR2XL U183 ( .A(n229), .B(n228), .Y(n277) );
  AOI211XL U184 ( .A0(n277), .A1(n276), .B0(n275), .C0(n274), .Y(TC3) );
  AO22X4 U185 ( .A0(n219), .A1(n218), .B0(n212), .B1(n220), .Y(n226) );
  NOR2X1 U186 ( .A(n203), .B(n145), .Y(n64) );
  NOR2X1 U187 ( .A(n57), .B(n229), .Y(n209) );
  AOI21XL U188 ( .A0(n304), .A1(n318), .B0(n91), .Y(n76) );
  XOR2X1 U189 ( .A(n227), .B(n62), .Y(n31) );
  XOR2XL U190 ( .A(n31), .B(n226), .Y(n60) );
  MXI3X2 U191 ( .A(n50), .B(n145), .C(n204), .S0(n205), .S1(n207), .Y(n69) );
  AO21X4 U192 ( .A0(n182), .A1(n196), .B0(n165), .Y(n176) );
  NAND2XL U193 ( .A(n414), .B(reg_central[22]), .Y(n426) );
  OR2XL U194 ( .A(n348), .B(n349), .Y(n35) );
  OR3X2 U195 ( .A(n229), .B(n228), .C(n276), .Y(n231) );
  NOR2X1 U196 ( .A(n457), .B(n29), .Y(n146) );
  MX2X1 U197 ( .A(n447), .B(n499), .S0(n479), .Y(n470) );
  OR2XL U198 ( .A(n205), .B(n193), .Y(n235) );
  MX3X1 U199 ( .A(n238), .B(n201), .C(n200), .S0(n208), .S1(n210), .Y(n202) );
  NAND2XL U200 ( .A(n396), .B(reg_central[9]), .Y(n309) );
  OR2XL U201 ( .A(reg_central[9]), .B(n396), .Y(n308) );
  OR3X2 U202 ( .A(n479), .B(n121), .C(n521), .Y(n480) );
  NAND2BX4 U203 ( .AN(n216), .B(n217), .Y(n211) );
  NAND2XL U204 ( .A(n435), .B(n434), .Y(n78) );
  OR2X2 U205 ( .A(n109), .B(n342), .Y(n386) );
  NAND2BX1 U206 ( .AN(n381), .B(n380), .Y(n382) );
  OAI211XL U207 ( .A0(n374), .A1(n377), .B0(n380), .C0(n373), .Y(n383) );
  OR2X4 U208 ( .A(n412), .B(n411), .Y(n442) );
  NOR2XL U209 ( .A(reg_central[0]), .B(addressIn[0]), .Y(n102) );
  XOR2X4 U210 ( .A(n2), .B(n187), .Y(n238) );
  NAND2XL U211 ( .A(n395), .B(n41), .Y(n42) );
  INVX1 U212 ( .A(n323), .Y(n324) );
  AND2X2 U213 ( .A(n116), .B(n141), .Y(n58) );
  OR2X4 U214 ( .A(n337), .B(n336), .Y(n332) );
  OR2XL U215 ( .A(n62), .B(n214), .Y(n213) );
  MX2X1 U216 ( .A(n315), .B(n370), .S0(n349), .Y(n339) );
  CLKINVX1 U217 ( .A(n398), .Y(n399) );
  CLKMX2X2 U218 ( .A(n453), .B(n498), .S0(n121), .Y(n469) );
  XNOR2XL U219 ( .A(n408), .B(n399), .Y(n404) );
  XNOR2XL U220 ( .A(n153), .B(n155), .Y(n87) );
  XNOR2XL U221 ( .A(n132), .B(n81), .Y(n79) );
  XOR2XL U222 ( .A(n166), .B(n94), .Y(n173) );
  OR2XL U223 ( .A(n406), .B(n88), .Y(n410) );
  NOR2X1 U224 ( .A(reg_central[2]), .B(n394), .Y(n103) );
  OR2X2 U225 ( .A(n352), .B(n387), .Y(n45) );
  NAND3X2 U226 ( .A(n44), .B(n45), .C(n46), .Y(n391) );
  AOI32X1 U227 ( .A0(n344), .A1(n386), .A2(n343), .B0(n109), .B1(n342), .Y(
        n352) );
  INVXL U228 ( .A(n350), .Y(n351) );
  AOI211X1 U229 ( .A0(n393), .A1(n392), .B0(n391), .C0(n390), .Y(TC2) );
  OR2XL U230 ( .A(n484), .B(n483), .Y(n47) );
  INVXL U231 ( .A(n480), .Y(n481) );
  OR2X2 U232 ( .A(n416), .B(n32), .Y(n168) );
  XNOR2X1 U233 ( .A(n51), .B(n494), .Y(n505) );
  AOI21X1 U234 ( .A0(n75), .A1(n492), .B0(n491), .Y(n51) );
  XOR2XL U235 ( .A(n489), .B(n75), .Y(n507) );
  XOR3XL U236 ( .A(n469), .B(n470), .C(n471), .Y(n473) );
  INVX1 U237 ( .A(n203), .Y(n204) );
  INVX1 U238 ( .A(n227), .Y(n214) );
  NOR2XL U239 ( .A(n204), .B(n193), .Y(n62) );
  NOR2XL U240 ( .A(n455), .B(n442), .Y(n70) );
  INVXL U241 ( .A(n240), .Y(n243) );
  NOR2BXL U242 ( .AN(n487), .B(n499), .Y(n75) );
  NOR2XL U243 ( .A(n358), .B(n370), .Y(n65) );
  XNOR3XL U244 ( .A(n72), .B(n115), .C(n216), .Y(n268) );
  INVXL U245 ( .A(n355), .Y(n356) );
  OR2XL U246 ( .A(n459), .B(n448), .Y(n484) );
  OR2X4 U247 ( .A(n219), .B(n218), .Y(n212) );
  OR2XL U248 ( .A(n325), .B(n323), .Y(n67) );
  MXI3X2 U249 ( .A(n325), .B(n355), .C(n324), .S0(n317), .S1(n328), .Y(n68) );
  INVXL U250 ( .A(n269), .Y(n271) );
  NAND2BXL U251 ( .AN(n154), .B(addressIn[2]), .Y(n400) );
  MXI2XL U252 ( .A(n84), .B(n85), .S0(n179), .Y(n178) );
  NOR2XL U253 ( .A(n174), .B(n94), .Y(n84) );
  XNOR2XL U254 ( .A(n152), .B(n92), .Y(n86) );
  XNOR2XL U255 ( .A(n137), .B(n279), .Y(n80) );
  NAND2X2 U256 ( .A(n175), .B(n134), .Y(n166) );
  AO21X4 U257 ( .A0(n155), .A1(n160), .B0(n103), .Y(n156) );
  AOI32XL U258 ( .A0(n475), .A1(n515), .A2(n474), .B0(n108), .B1(n473), .Y(
        n482) );
  INVXL U259 ( .A(n514), .Y(n475) );
  INVXL U260 ( .A(n385), .Y(n344) );
  AOI21XL U261 ( .A0(n309), .A1(n314), .B0(n127), .Y(n81) );
  AO21X4 U262 ( .A0(n309), .A1(n1), .B0(n127), .Y(n285) );
  AO21X4 U263 ( .A0(n445), .A1(n439), .B0(n397), .Y(n408) );
  NOR2BXL U264 ( .AN(n238), .B(n250), .Y(n90) );
  AO21X4 U265 ( .A0(n102), .A1(n186), .B0(n151), .Y(n160) );
  OR2X2 U266 ( .A(n158), .B(n103), .Y(n152) );
  OA22X4 U267 ( .A0(n261), .A1(n260), .B0(n259), .B1(n258), .Y(n264) );
  CLKINVX3 U268 ( .A(n278), .Y(n286) );
  OR2XL U269 ( .A(n505), .B(n504), .Y(n509) );
  OR2XL U270 ( .A(n256), .B(n255), .Y(n262) );
  OR2XL U271 ( .A(n178), .B(n177), .Y(n193) );
  AO21X4 U272 ( .A0(n451), .A1(n435), .B0(n418), .Y(n427) );
  NAND2BXL U273 ( .AN(n510), .B(n509), .Y(n511) );
  INVXL U274 ( .A(n292), .Y(n140) );
  CLKMX2X2 U275 ( .A(n410), .B(n409), .S0(n118), .Y(n412) );
  XNOR2XL U276 ( .A(n427), .B(n93), .Y(n423) );
  INVXL U277 ( .A(n415), .Y(n428) );
  XNOR2XL U278 ( .A(n167), .B(n166), .Y(n172) );
  INVX1 U279 ( .A(n181), .Y(n165) );
  AND2XL U280 ( .A(n294), .B(n416), .Y(n144) );
  OR2XL U281 ( .A(n197), .B(n196), .Y(n249) );
  OR2XL U282 ( .A(n126), .B(n293), .Y(n304) );
  AND2XL U283 ( .A(n126), .B(n293), .Y(n91) );
  NAND2X1 U284 ( .A(n403), .B(n402), .Y(n52) );
  XOR2XL U285 ( .A(n400), .B(reg_central[11]), .Y(n289) );
  NOR2XL U286 ( .A(reg_central[18]), .B(n394), .Y(n104) );
  NAND2BXL U287 ( .AN(n395), .B(reg_central[16]), .Y(n444) );
  NAND2BXL U288 ( .AN(n416), .B(reg_central[4]), .Y(n195) );
  NAND2BXL U289 ( .AN(n395), .B(reg_central[8]), .Y(n314) );
  NAND2BXL U290 ( .AN(n416), .B(reg_central[20]), .Y(n450) );
  NAND2BXL U291 ( .AN(n395), .B(reg_central[0]), .Y(n190) );
  NAND2BXL U292 ( .AN(n37), .B(reg_central[10]), .Y(n284) );
  CLKINVX4 U293 ( .A(n282), .Y(n307) );
  OAI33X1 U294 ( .A0(n59), .A1(n100), .A2(n19), .B0(n389), .B1(n388), .B2(n387), .Y(n390) );
  XOR2X4 U295 ( .A(n311), .B(n310), .Y(n357) );
  MXI2X2 U296 ( .A(n148), .B(n1), .S0(n307), .Y(n311) );
  OR2XL U297 ( .A(n235), .B(n234), .Y(n54) );
  OR2XL U298 ( .A(n208), .B(n188), .Y(n234) );
  OR2X4 U299 ( .A(n210), .B(n209), .Y(n241) );
  CLKINVX1 U300 ( .A(n231), .Y(n232) );
  CLKINVX1 U301 ( .A(n378), .Y(n374) );
  CLKINVX1 U302 ( .A(n507), .Y(n503) );
  XOR2X1 U303 ( .A(n360), .B(n65), .Y(n378) );
  CLKINVX1 U304 ( .A(n489), .Y(n492) );
  AO21X1 U305 ( .A0(n65), .A1(n363), .B0(n362), .Y(n365) );
  CLKINVX1 U306 ( .A(n360), .Y(n363) );
  CLKINVX1 U307 ( .A(n256), .Y(n260) );
  OR2X1 U308 ( .A(n478), .B(n70), .Y(n467) );
  CLKINVX1 U309 ( .A(n436), .Y(n478) );
  OR2X1 U310 ( .A(n63), .B(n335), .Y(n334) );
  CLKINVX1 U311 ( .A(n347), .Y(n335) );
  OR2X1 U312 ( .A(n470), .B(n469), .Y(n466) );
  OR2X1 U313 ( .A(n339), .B(n338), .Y(n333) );
  CLKINVX1 U314 ( .A(n369), .Y(n328) );
  CLKINVX1 U315 ( .A(n454), .Y(n455) );
  CLKINVX1 U316 ( .A(n258), .Y(n254) );
  CLKINVX1 U317 ( .A(n230), .Y(n273) );
  CLKINVX1 U318 ( .A(n361), .Y(n362) );
  OR2X1 U319 ( .A(n349), .B(n348), .Y(n393) );
  OR2X1 U320 ( .A(n319), .B(n144), .Y(n369) );
  CLKINVX1 U321 ( .A(n318), .Y(n319) );
  CLKINVX1 U322 ( .A(n304), .Y(n142) );
  XOR2X1 U323 ( .A(n240), .B(n90), .Y(n258) );
  OR2X1 U324 ( .A(n356), .B(n369), .Y(n360) );
  OA21XL U325 ( .A0(n456), .A1(n443), .B0(n487), .Y(n447) );
  CLKINVX1 U326 ( .A(n499), .Y(n464) );
  NAND2BX1 U327 ( .AN(n125), .B(n66), .Y(n337) );
  MX3XL U328 ( .A(n358), .B(n312), .C(n321), .S0(n329), .S1(n331), .Y(n66) );
  CLKINVX1 U329 ( .A(n313), .Y(n329) );
  CLKINVX1 U330 ( .A(n370), .Y(n331) );
  CLKINVX1 U331 ( .A(n250), .Y(n210) );
  NAND2X2 U332 ( .A(n67), .B(n68), .Y(n336) );
  CLKINVX1 U333 ( .A(n316), .Y(n325) );
  CLKINVX1 U334 ( .A(n91), .Y(n143) );
  CLKINVX1 U335 ( .A(n357), .Y(n358) );
  MXI3X2 U336 ( .A(n456), .B(n487), .C(n455), .S0(n443), .S1(n464), .Y(n71) );
  OR2X2 U337 ( .A(n326), .B(n355), .Y(n323) );
  CLKINVX1 U338 ( .A(n249), .Y(n207) );
  OR2X4 U339 ( .A(n231), .B(n239), .Y(n230) );
  OR2X1 U340 ( .A(n329), .B(n357), .Y(n321) );
  CLKINVX1 U341 ( .A(n152), .Y(n155) );
  CLKINVX1 U342 ( .A(n241), .Y(n242) );
  CLKINVX1 U343 ( .A(n144), .Y(n303) );
  NOR2X1 U344 ( .A(n201), .B(n199), .Y(n73) );
  CLKINVX1 U345 ( .A(n312), .Y(n322) );
  CLKINVX1 U346 ( .A(n498), .Y(n461) );
  CLKINVX1 U347 ( .A(n262), .Y(n263) );
  CLKINVX1 U348 ( .A(n386), .Y(n388) );
  CLKINVX1 U349 ( .A(n515), .Y(n517) );
  CLKINVX1 U350 ( .A(n488), .Y(n495) );
  CLKINVX1 U351 ( .A(n239), .Y(n246) );
  CLKINVX1 U352 ( .A(n359), .Y(n366) );
  CLKINVX1 U353 ( .A(n444), .Y(n446) );
  CLKINVX1 U354 ( .A(n267), .Y(n223) );
  CLKINVX1 U355 ( .A(n268), .Y(n224) );
  CLKINVX1 U356 ( .A(n314), .Y(n148) );
  AOI22X2 U357 ( .A0(n403), .A1(n402), .B0(n401), .B1(n411), .Y(n117) );
  XOR2X1 U358 ( .A(n184), .B(n183), .Y(n236) );
  CLKINVX1 U359 ( .A(n195), .Y(n197) );
  MXI2X1 U360 ( .A(n79), .B(n80), .S0(n307), .Y(n313) );
  OR2X1 U361 ( .A(n452), .B(n451), .Y(n498) );
  CLKINVX1 U362 ( .A(n450), .Y(n452) );
  MXI2X1 U363 ( .A(n82), .B(n83), .S0(n133), .Y(n317) );
  XNOR2X1 U364 ( .A(n136), .B(n76), .Y(n82) );
  XNOR2X1 U365 ( .A(n296), .B(n135), .Y(n83) );
  OAI21XL U366 ( .A0(n128), .A1(n176), .B0(n175), .Y(n85) );
  NOR2BX1 U367 ( .AN(n284), .B(n286), .Y(n130) );
  CLKINVX1 U368 ( .A(n190), .Y(n191) );
  OR2X1 U369 ( .A(n283), .B(n81), .Y(n288) );
  OA21XL U370 ( .A0(n286), .A1(n129), .B0(n284), .Y(n287) );
  OA21XL U371 ( .A0(n140), .A1(n298), .B0(n139), .Y(n299) );
  NOR2X1 U372 ( .A(n413), .B(n291), .Y(n89) );
  OA21XL U373 ( .A0(n104), .A1(n408), .B0(n407), .Y(n409) );
  AOI2BB2X1 U374 ( .B0(n504), .B1(n505), .A0N(n508), .A1N(n507), .Y(n510) );
  CLKINVX1 U375 ( .A(n407), .Y(n406) );
  OAI211XL U376 ( .A0(n254), .A1(n257), .B0(n262), .C0(n253), .Y(n266) );
  OR2X1 U377 ( .A(n164), .B(n163), .Y(n188) );
  OR2X1 U378 ( .A(n158), .B(n92), .Y(n162) );
  CLKINVX1 U379 ( .A(n159), .Y(n158) );
  AO22X1 U380 ( .A0(n514), .A1(n513), .B0(n512), .B1(n511), .Y(n518) );
  OAI211XL U381 ( .A0(n503), .A1(n506), .B0(n509), .C0(n502), .Y(n512) );
  CLKINVX1 U382 ( .A(n434), .Y(n418) );
  OR2X2 U383 ( .A(n406), .B(n21), .Y(n398) );
  CLKINVX1 U384 ( .A(n513), .Y(n474) );
  CLKINVX1 U385 ( .A(n384), .Y(n343) );
  AOI21X1 U386 ( .A0(n186), .A1(n190), .B0(n151), .Y(n92) );
  CLKAND2X3 U387 ( .A(n426), .B(n415), .Y(n93) );
  CLKINVX1 U388 ( .A(n308), .Y(n127) );
  AOI21X1 U389 ( .A0(n182), .A1(n195), .B0(n165), .Y(n94) );
  AOI21X1 U390 ( .A0(n435), .A1(n450), .B0(n418), .Y(n95) );
  OR2X1 U391 ( .A(n496), .B(n476), .Y(n488) );
  OR2X1 U392 ( .A(n247), .B(n225), .Y(n239) );
  OR2X1 U393 ( .A(n367), .B(n345), .Y(n359) );
  AO22X1 U394 ( .A0(n501), .A1(n500), .B0(n499), .B1(n498), .Y(n502) );
  OR2X1 U395 ( .A(n499), .B(n498), .Y(n501) );
  AO22X1 U396 ( .A0(n252), .A1(n251), .B0(n250), .B1(n249), .Y(n253) );
  OR2X1 U397 ( .A(n250), .B(n249), .Y(n252) );
  AO22X1 U398 ( .A0(n372), .A1(n371), .B0(n370), .B1(n369), .Y(n373) );
  OR2X1 U399 ( .A(n370), .B(n369), .Y(n372) );
  AOI21X1 U400 ( .A0(n247), .A1(n225), .B0(n246), .Y(n96) );
  AOI21X1 U401 ( .A0(n367), .A1(n345), .B0(n366), .Y(n97) );
  AOI21X1 U402 ( .A0(n496), .A1(n476), .B0(n495), .Y(n98) );
  NOR2X1 U403 ( .A(n107), .B(n225), .Y(n99) );
  NOR2X1 U404 ( .A(n106), .B(n345), .Y(n100) );
  NOR2X1 U405 ( .A(n105), .B(n476), .Y(n101) );
  CLKINVX1 U406 ( .A(n255), .Y(n261) );
  CLKINVX1 U407 ( .A(n257), .Y(n259) );
  XOR2X1 U408 ( .A(n419), .B(reg_central[15]), .Y(n301) );
  XOR2X1 U409 ( .A(n419), .B(reg_central[7]), .Y(n177) );
  NOR2X1 U410 ( .A(reg_central[6]), .B(n414), .Y(n128) );
  CLKINVX1 U411 ( .A(reg_central[11]), .Y(n281) );
  NAND2BX2 U412 ( .AN(n413), .B(reg_central[6]), .Y(n175) );
  CLKINVX1 U413 ( .A(reg_central[23]), .Y(n421) );
  CLKINVX1 U414 ( .A(reg_central[7]), .Y(n170) );
  CLKINVX1 U415 ( .A(reg_central[19]), .Y(n402) );
  CLKINVX1 U416 ( .A(reg_central[13]), .Y(n293) );
  NAND2BX2 U417 ( .AN(n126), .B(reg_central[5]), .Y(n182) );
  CLKINVX1 U418 ( .A(reg_central[12]), .Y(n294) );
  NOR2X1 U419 ( .A(reg_radius[9]), .B(n496), .Y(n105) );
  NOR2X1 U420 ( .A(reg_radius[5]), .B(n367), .Y(n106) );
  OR2X1 U421 ( .A(n248), .B(n251), .Y(n255) );
  AOI211X1 U422 ( .A0(reg_radius[1]), .A1(n247), .B0(n107), .C0(n246), .Y(n248) );
  OR2X1 U423 ( .A(n497), .B(n500), .Y(n504) );
  AOI211X1 U424 ( .A0(reg_radius[9]), .A1(n496), .B0(n105), .C0(n495), .Y(n497) );
  OR2X1 U425 ( .A(n368), .B(n371), .Y(n375) );
  AOI211X1 U426 ( .A0(reg_radius[5]), .A1(n367), .B0(n106), .C0(n366), .Y(n368) );
  CLKINVX1 U427 ( .A(reg_radius[2]), .Y(n247) );
  CLKINVX1 U428 ( .A(reg_radius[10]), .Y(n496) );
  CLKINVX1 U429 ( .A(reg_radius[6]), .Y(n367) );
  CLKINVX1 U430 ( .A(reg_radius[3]), .Y(n225) );
  CLKINVX1 U431 ( .A(reg_radius[7]), .Y(n345) );
  CLKINVX1 U432 ( .A(reg_radius[11]), .Y(n476) );
  CLKMX2X2 U433 ( .A(n107), .B(n221), .S0(\icj3/RSquare[0] ), .Y(n267) );
  AO21X1 U434 ( .A0(reg_radius[1]), .A1(reg_radius[2]), .B0(n96), .Y(n221) );
  CLKMX2X2 U435 ( .A(n105), .B(n472), .S0(\icj1/RSquare[0] ), .Y(n513) );
  AO21X1 U436 ( .A0(reg_radius[9]), .A1(reg_radius[10]), .B0(n98), .Y(n472) );
  CLKMX2X2 U437 ( .A(n106), .B(n341), .S0(\icj2/RSquare[0] ), .Y(n384) );
  AO21X1 U438 ( .A0(reg_radius[5]), .A1(reg_radius[6]), .B0(n97), .Y(n341) );
  OAI2BB1X1 U439 ( .A0N(\icj1/RSquare[0] ), .A1N(n488), .B0(reg_radius[9]), 
        .Y(n506) );
  OAI2BB1X1 U440 ( .A0N(\icj3/RSquare[0] ), .A1N(n239), .B0(reg_radius[1]), 
        .Y(n257) );
  OAI2BB1X1 U441 ( .A0N(\icj2/RSquare[0] ), .A1N(n359), .B0(reg_radius[5]), 
        .Y(n377) );
  CLKINVX1 U442 ( .A(\icj3/RSquare[0] ), .Y(n251) );
  CLKINVX1 U443 ( .A(\icj1/RSquare[0] ), .Y(n500) );
  CLKINVX1 U444 ( .A(\icj2/RSquare[0] ), .Y(n371) );
  NOR2X1 U445 ( .A(reg_radius[1]), .B(n247), .Y(n107) );
  AOI22X1 U446 ( .A0(reg_radius[9]), .A1(n98), .B0(\icj1/RSquare[0] ), .B1(
        n495), .Y(n108) );
  AOI22X1 U447 ( .A0(reg_radius[5]), .A1(n97), .B0(\icj2/RSquare[0] ), .B1(
        n366), .Y(n109) );
  AOI22X1 U448 ( .A0(reg_radius[1]), .A1(n96), .B0(\icj3/RSquare[0] ), .B1(
        n246), .Y(n110) );
  MX3X1 U449 ( .A(n448), .B(n486), .C(n457), .S0(n449), .S1(n461), .Y(n141) );
  INVXL U450 ( .A(n457), .Y(n458) );
  INVXL U451 ( .A(n64), .Y(n111) );
  INVXL U452 ( .A(n244), .Y(n245) );
  NAND2X1 U453 ( .A(n116), .B(n112), .Y(n465) );
  INVXL U454 ( .A(n217), .Y(n115) );
  NOR2X1 U455 ( .A(n325), .B(n323), .Y(n124) );
  OR2X1 U456 ( .A(n486), .B(n498), .Y(n489) );
  NOR2X1 U457 ( .A(n459), .B(n448), .Y(n121) );
  INVX1 U458 ( .A(n58), .Y(n122) );
  OR2X4 U459 ( .A(n73), .B(n202), .Y(n216) );
  AOI21XL U460 ( .A0(n1), .A1(n309), .B0(n127), .Y(n137) );
  AOI211X1 U461 ( .A0(n329), .A1(n357), .B0(n125), .C0(n349), .Y(n330) );
  INVXL U462 ( .A(n321), .Y(n123) );
  OR2XL U463 ( .A(n200), .B(n188), .Y(n227) );
  CLKMX2X2 U464 ( .A(n288), .B(n287), .S0(n307), .Y(n290) );
  NAND2BXL U465 ( .AN(reg_central[4]), .B(n416), .Y(n180) );
  NOR2X1 U466 ( .A(n322), .B(n321), .Y(n125) );
  INVXL U467 ( .A(n284), .Y(n283) );
  AND2XL U468 ( .A(n309), .B(n308), .Y(n310) );
  CLKINVX1 U469 ( .A(n160), .Y(n153) );
  AND2XL U470 ( .A(n182), .B(n181), .Y(n183) );
  INVX1 U471 ( .A(n419), .Y(n422) );
  OR2X1 U472 ( .A(n446), .B(n445), .Y(n499) );
  OR2X1 U473 ( .A(n191), .B(n102), .Y(n250) );
  OR2X1 U474 ( .A(n148), .B(n1), .Y(n370) );
  INVXL U475 ( .A(n137), .Y(n129) );
  NAND2X1 U476 ( .A(n284), .B(n278), .Y(n132) );
  OR2XL U477 ( .A(n413), .B(n291), .Y(n139) );
  INVXL U478 ( .A(n132), .Y(n279) );
  INVX1 U479 ( .A(n437), .Y(n445) );
  CLKINVX1 U480 ( .A(n135), .Y(n136) );
  OR2XL U481 ( .A(n479), .B(n121), .Y(n522) );
  OAI33X1 U482 ( .A0(n60), .A1(n99), .A2(n273), .B0(n270), .B1(n271), .B2(n272), .Y(n274) );
  CLKMX2X2 U483 ( .A(n300), .B(n299), .S0(n133), .Y(n302) );
  INVXL U484 ( .A(n175), .Y(n174) );
  CLKINVX1 U485 ( .A(reg_central[14]), .Y(n291) );
  AND2XL U486 ( .A(n304), .B(n143), .Y(n305) );
  XOR2X1 U487 ( .A(n398), .B(n88), .Y(n405) );
  NOR2X1 U488 ( .A(n178), .B(n177), .Y(n145) );
  XOR2XL U489 ( .A(n147), .B(n95), .Y(n424) );
  INVXL U490 ( .A(n93), .Y(n147) );
  INVXL U491 ( .A(n50), .Y(n237) );
  OR2X1 U492 ( .A(n237), .B(n249), .Y(n240) );
  NAND2X1 U493 ( .A(n180), .B(n179), .Y(n150) );
  INVX1 U494 ( .A(n426), .Y(n425) );
  CLKINVX1 U495 ( .A(n180), .Y(n196) );
  OA21XL U496 ( .A0(n428), .A1(n427), .B0(n426), .Y(n429) );
  OR2X1 U497 ( .A(n416), .B(n294), .Y(n318) );
  OR2XL U498 ( .A(reg_central[20]), .B(addressIn[3]), .Y(n433) );
  CLKINVX1 U499 ( .A(n433), .Y(n451) );
  CLKMX2X2 U500 ( .A(n430), .B(n429), .S0(n28), .Y(n432) );
  INVXL U501 ( .A(n493), .Y(n494) );
  OR2XL U502 ( .A(reg_central[16]), .B(addressIn[0]), .Y(n437) );
  OAI33XL U503 ( .A0(n138), .A1(n101), .A2(n131), .B0(n518), .B1(n517), .B2(
        n516), .Y(n519) );
  AOI211XL U504 ( .A0(n522), .A1(n521), .B0(n520), .C0(n519), .Y(TC1) );
  OA21XL U505 ( .A0(n29), .A1(n449), .B0(n485), .Y(n453) );
  OA21XL U506 ( .A0(n145), .A1(n194), .B0(n50), .Y(n198) );
  XOR2X4 U507 ( .A(n306), .B(n305), .Y(n355) );
  OA21XL U508 ( .A0(n322), .A1(n313), .B0(n357), .Y(n315) );
  OA21XL U509 ( .A0(n201), .A1(n189), .B0(n238), .Y(n192) );
  INVX1 U510 ( .A(n490), .Y(n491) );
  XOR2X4 U511 ( .A(n168), .B(addressIn[5]), .Y(n414) );
  OA21XL U512 ( .A0(n325), .A1(n317), .B0(n355), .Y(n320) );
  AO22X4 U513 ( .A0(n422), .A1(n170), .B0(n169), .B1(n177), .Y(n171) );
  AO22X4 U514 ( .A0(n216), .A1(n215), .B0(n72), .B1(n211), .Y(n220) );
  AO22X4 U515 ( .A0(n62), .A1(n214), .B0(n213), .B1(n226), .Y(n276) );
  AO21X4 U516 ( .A0(n130), .A1(n285), .B0(n286), .Y(n280) );
  AO22X4 U517 ( .A0(n403), .A1(n281), .B0(n280), .B1(n289), .Y(n282) );
  AO22X4 U518 ( .A0(n337), .A1(n336), .B0(n113), .B1(n332), .Y(n340) );
  AO22X4 U519 ( .A0(n339), .A1(n338), .B0(n333), .B1(n340), .Y(n346) );
  AO22X4 U520 ( .A0(n63), .A1(n335), .B0(n334), .B1(n346), .Y(n392) );
  AO21X4 U521 ( .A0(n100), .A1(n59), .B0(n74), .Y(n387) );
  AO21X4 U522 ( .A0(n399), .A1(n408), .B0(n22), .Y(n401) );
  OR2X4 U523 ( .A(reg_central[22]), .B(n414), .Y(n415) );
  AO21X4 U524 ( .A0(n93), .A1(n427), .B0(n428), .Y(n420) );
  AO22X4 U525 ( .A0(n470), .A1(n469), .B0(n466), .B1(n471), .Y(n477) );
  AO22X4 U526 ( .A0(n478), .A1(n70), .B0(n467), .B1(n477), .Y(n521) );
  AO21X4 U527 ( .A0(n138), .A1(n101), .B0(n131), .Y(n516) );
endmodule


module candicateCounter ( clk, rst, reg_mode, C1, C2, C3, en, candidate );
  input [1:0] reg_mode;
  output [7:0] candidate;
  input clk, rst, C1, C2, C3, en;
  wire   N23, N24, N25, N26, N27, N28, N30, N31, N32, N33, N34, N35, N36, N37,
         N38, n12, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48;
  wire   [7:2] \add_310/carry ;

  DFFRX1 \candidate_reg[7]  ( .D(N37), .CK(clk), .RN(n29), .Q(candidate[7]), 
        .QN(n46) );
  DFFRX1 \candidate_reg[0]  ( .D(N30), .CK(clk), .RN(n29), .Q(candidate[0]), 
        .QN(n12) );
  DFFRX1 \candidate_reg[2]  ( .D(N32), .CK(clk), .RN(n29), .Q(candidate[2]), 
        .QN(n45) );
  DFFRX1 \candidate_reg[3]  ( .D(N33), .CK(clk), .RN(n29), .Q(candidate[3]), 
        .QN(n44) );
  DFFRX1 \candidate_reg[4]  ( .D(N34), .CK(clk), .RN(n29), .Q(candidate[4]), 
        .QN(n43) );
  DFFRX1 \candidate_reg[5]  ( .D(N35), .CK(clk), .RN(n29), .Q(candidate[5]), 
        .QN(n42) );
  DFFRX1 \candidate_reg[6]  ( .D(N36), .CK(clk), .RN(n29), .Q(candidate[6]), 
        .QN(n41) );
  DFFRX1 en_reg_reg ( .D(N38), .CK(clk), .RN(n29), .QN(n47) );
  DFFRX1 \candidate_reg[1]  ( .D(N31), .CK(clk), .RN(n29), .Q(candidate[1]), 
        .QN(n48) );
  ADDHXL \add_310/U1_1_1  ( .A(candidate[1]), .B(candidate[0]), .CO(
        \add_310/carry [2]), .S(N23) );
  ADDHXL \add_310/U1_1_5  ( .A(candidate[5]), .B(\add_310/carry [5]), .CO(
        \add_310/carry [6]), .S(N27) );
  ADDHXL \add_310/U1_1_4  ( .A(candidate[4]), .B(\add_310/carry [4]), .CO(
        \add_310/carry [5]), .S(N26) );
  ADDHXL \add_310/U1_1_3  ( .A(candidate[3]), .B(\add_310/carry [3]), .CO(
        \add_310/carry [4]), .S(N25) );
  ADDHXL \add_310/U1_1_2  ( .A(candidate[2]), .B(\add_310/carry [2]), .CO(
        \add_310/carry [3]), .S(N24) );
  ADDHXL \add_310/U1_1_6  ( .A(candidate[6]), .B(\add_310/carry [6]), .CO(
        \add_310/carry [7]), .S(N28) );
  CLKINVX1 U23 ( .A(n32), .Y(n27) );
  OAI32X1 U24 ( .A0(candidate[7]), .A1(n32), .A2(n28), .B0(n46), .B1(n33), .Y(
        N37) );
  CLKINVX1 U25 ( .A(\add_310/carry [7]), .Y(n28) );
  OA21XL U26 ( .A0(n32), .A1(\add_310/carry [7]), .B0(n34), .Y(n33) );
  NAND2BX1 U27 ( .AN(n35), .B(n47), .Y(n34) );
  OAI21XL U28 ( .A0(n36), .A1(n31), .B0(n37), .Y(n35) );
  AOI2BB2X1 U29 ( .B0(C2), .B1(n39), .A0N(n40), .A1N(C2), .Y(n36) );
  NAND4X1 U30 ( .A(reg_mode[1]), .B(C2), .C(n38), .D(n31), .Y(n37) );
  AOI21X1 U31 ( .A0(reg_mode[1]), .A1(C3), .B0(n30), .Y(n40) );
  OAI2BB2XL U32 ( .B0(n12), .B1(n34), .A0N(n27), .A1N(n12), .Y(N30) );
  OAI2BB2XL U33 ( .B0(n41), .B1(n34), .A0N(N28), .A1N(n27), .Y(N36) );
  OAI2BB2XL U34 ( .B0(n42), .B1(n34), .A0N(N27), .A1N(n27), .Y(N35) );
  OAI2BB2XL U35 ( .B0(n43), .B1(n34), .A0N(N26), .A1N(n27), .Y(N34) );
  OAI2BB2XL U36 ( .B0(n44), .B1(n34), .A0N(N25), .A1N(n27), .Y(N33) );
  OAI2BB2XL U37 ( .B0(n45), .B1(n34), .A0N(N24), .A1N(n27), .Y(N32) );
  OAI2BB2XL U38 ( .B0(n48), .B1(n34), .A0N(N23), .A1N(n27), .Y(N31) );
  OR2X1 U39 ( .A(C3), .B(n30), .Y(n38) );
  NAND2X1 U40 ( .A(n47), .B(n35), .Y(n32) );
  NAND2X1 U41 ( .A(reg_mode[1]), .B(n38), .Y(n39) );
  CLKINVX1 U42 ( .A(C1), .Y(n31) );
  CLKINVX1 U43 ( .A(reg_mode[0]), .Y(n30) );
  AND2X2 U44 ( .A(n47), .B(en), .Y(N38) );
  CLKINVX1 U45 ( .A(rst), .Y(n29) );
endmodule


module SET ( clk, rst, en, central, radius, mode, busy, valid, candidate );
  input [23:0] central;
  input [11:0] radius;
  input [1:0] mode;
  output [7:0] candidate;
  input clk, rst, en;
  output busy, valid;
  wire   C1, C2, C3;
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
  judge judge ( .clk(clk), .addressIn(WorkAddr), .reg_central(reg_central), 
        .reg_radius(reg_radius), .C1(C1), .C2(C2), .C3(C3) );
  candicateCounter candiCal ( .clk(clk), .rst(rst), .reg_mode(reg_mode), .C1(
        C1), .C2(C2), .C3(C3), .en(en), .candidate(candidate) );
endmodule

