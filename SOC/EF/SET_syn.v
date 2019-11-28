/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03
// Date      : Wed Nov 27 09:48:59 2019
/////////////////////////////////////////////////////////////

`timescale 1ns/10ps
module MapCell_0 ( now_x, now_y, center_x, center_y, center_r, in_out );
  input [3:0] now_x;
  input [3:0] now_y;
  input [3:0] center_x;
  input [3:0] center_y;
  input [3:0] center_r;
  output in_out;
  wire   N39, N40, N41, N42, N49, N50, N51, \delta_x[3] , N52, N53, N54, N55,
         N62, N63, N64, N156, N157, N158, N161, N162, N163, N164, N165, N166,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129;

  OAI21XL U3 ( .A0(n104), .A1(n39), .B0(n68), .Y(N161) );
  OAI31XL U4 ( .A0(n39), .A1(n52), .A2(n41), .B0(n38), .Y(N162) );
  CLKINVX1 U5 ( .A(n84), .Y(n24) );
  CLKINVX1 U6 ( .A(n91), .Y(n25) );
  AOI22X1 U7 ( .A0(N52), .A1(N55), .B0(n45), .B1(N52), .Y(n67) );
  AOI22X1 U8 ( .A0(N62), .A1(N55), .B0(N53), .B1(n45), .Y(n77) );
  AOI22X1 U9 ( .A0(N50), .A1(N42), .B0(N41), .B1(n26), .Y(n90) );
  XNOR2X1 U10 ( .A(n110), .B(n111), .Y(N55) );
  OAI21XL U11 ( .A0(center_y[0]), .A1(n118), .B0(n107), .Y(N52) );
  OAI21XL U12 ( .A0(center_x[0]), .A1(n33), .B0(n102), .Y(N39) );
  CLKINVX1 U13 ( .A(N156), .Y(n38) );
  CLKINVX1 U14 ( .A(N161), .Y(n36) );
  OAI22XL U15 ( .A0(n36), .A1(n18), .B0(n38), .B1(n20), .Y(n88) );
  OAI22XL U16 ( .A0(n34), .A1(n18), .B0(n35), .B1(n20), .Y(n74) );
  CLKINVX1 U17 ( .A(n65), .Y(n18) );
  CLKINVX1 U18 ( .A(N157), .Y(n35) );
  CLKINVX1 U19 ( .A(n63), .Y(n22) );
  CLKINVX1 U20 ( .A(n86), .Y(n21) );
  OAI21XL U21 ( .A0(n58), .A1(n42), .B0(n68), .Y(N156) );
  CLKINVX1 U22 ( .A(N162), .Y(n34) );
  AOI221XL U23 ( .A0(n81), .A1(N162), .B0(n65), .B1(N165), .C0(n89), .Y(n78)
         );
  OAI222XL U24 ( .A0(n35), .A1(n85), .B0(n21), .B1(n36), .C0(n38), .C1(n23), 
        .Y(n89) );
  NOR4X1 U25 ( .A(n25), .B(n24), .C(n19), .D(\delta_x[3] ), .Y(n65) );
  CLKINVX1 U26 ( .A(n1), .Y(n17) );
  NOR3X1 U27 ( .A(n42), .B(n39), .C(n76), .Y(N157) );
  NAND2X1 U28 ( .A(n56), .B(n69), .Y(n63) );
  NAND2X1 U29 ( .A(n22), .B(n75), .Y(n86) );
  NOR2BX1 U30 ( .AN(n76), .B(n64), .Y(n59) );
  CLKINVX1 U31 ( .A(n81), .Y(n20) );
  CLKINVX1 U32 ( .A(\delta_x[3] ), .Y(n16) );
  CLKINVX1 U33 ( .A(n87), .Y(n23) );
  OAI32X1 U34 ( .A0(n75), .A1(n59), .A2(n42), .B0(n22), .B1(n38), .Y(n73) );
  CLKINVX1 U35 ( .A(N164), .Y(n40) );
  AOI31X1 U36 ( .A0(\delta_x[3] ), .A1(n40), .A2(n94), .B0(n121), .Y(n93) );
  NOR3X1 U37 ( .A(n25), .B(n19), .C(n24), .Y(n94) );
  NAND4X1 U38 ( .A(n105), .B(n60), .C(n76), .D(n68), .Y(N165) );
  NAND2X1 U39 ( .A(n67), .B(n42), .Y(n105) );
  NAND2X1 U40 ( .A(n52), .B(n39), .Y(n68) );
  NAND2X1 U41 ( .A(n77), .B(n41), .Y(n60) );
  CLKINVX1 U42 ( .A(n77), .Y(n39) );
  NAND2X1 U43 ( .A(n104), .B(n77), .Y(N164) );
  CLKINVX1 U44 ( .A(n67), .Y(n41) );
  NOR2X1 U45 ( .A(n106), .B(n41), .Y(n58) );
  CLKINVX1 U46 ( .A(n52), .Y(n42) );
  AND2X2 U47 ( .A(n58), .B(n52), .Y(n104) );
  AOI211X1 U48 ( .A0(n81), .A1(N161), .B0(n82), .C0(n83), .Y(n80) );
  OAI222XL U49 ( .A0(n21), .A1(n37), .B0(n84), .B1(n35), .C0(n38), .C1(n85), 
        .Y(n82) );
  OAI22XL U50 ( .A0(n34), .A1(n23), .B0(n40), .B1(n18), .Y(n83) );
  CLKINVX1 U51 ( .A(N165), .Y(n37) );
  NOR2BX1 U52 ( .AN(N51), .B(n26), .Y(\delta_x[3] ) );
  XOR2X1 U53 ( .A(n26), .B(n126), .Y(N51) );
  NOR2BX1 U54 ( .AN(n28), .B(n127), .Y(n126) );
  NAND3X1 U55 ( .A(n84), .B(n90), .C(n25), .Y(n56) );
  NOR3X1 U56 ( .A(n25), .B(n24), .C(n90), .Y(n81) );
  NAND3X1 U57 ( .A(n91), .B(n90), .C(n24), .Y(n69) );
  CLKINVX1 U58 ( .A(n90), .Y(n19) );
  NAND2X1 U59 ( .A(n67), .B(n106), .Y(n76) );
  OAI21XL U60 ( .A0(n77), .A1(n41), .B0(n60), .Y(n64) );
  NOR2X1 U61 ( .A(n90), .B(n24), .Y(n87) );
  NAND2X1 U62 ( .A(n24), .B(n90), .Y(n75) );
  OAI21XL U63 ( .A0(n21), .A1(n35), .B0(n62), .Y(n51) );
  AOI32X1 U64 ( .A0(n63), .A1(n64), .A2(n52), .B0(n65), .B1(n66), .Y(n62) );
  OAI21XL U65 ( .A0(n67), .A1(n42), .B0(n68), .Y(n66) );
  OAI21XL U66 ( .A0(n54), .A1(n18), .B0(n55), .Y(n53) );
  OR4X1 U67 ( .A(n56), .B(n57), .C(n39), .D(n58), .Y(n55) );
  OA22X1 U68 ( .A0(n57), .A1(n59), .B0(n60), .B1(n61), .Y(n54) );
  NAND2X1 U69 ( .A(n24), .B(n91), .Y(n85) );
  CLKINVX1 U70 ( .A(n50), .Y(n121) );
  XNOR2X1 U71 ( .A(n117), .B(N52), .Y(N62) );
  AOI22X1 U72 ( .A0(N39), .A1(N42), .B0(n26), .B1(N39), .Y(n91) );
  AOI22X1 U73 ( .A0(N63), .A1(N55), .B0(N54), .B1(n45), .Y(n52) );
  XNOR2X1 U74 ( .A(n44), .B(n129), .Y(N63) );
  NAND2X1 U75 ( .A(N64), .B(N55), .Y(n106) );
  XOR2X1 U76 ( .A(n45), .B(n128), .Y(N64) );
  NOR2BX1 U77 ( .AN(n44), .B(n129), .Y(n128) );
  CLKINVX1 U78 ( .A(N55), .Y(n45) );
  CLKINVX1 U79 ( .A(N42), .Y(n26) );
  CLKINVX1 U80 ( .A(N53), .Y(n117) );
  NAND2X1 U81 ( .A(n117), .B(n43), .Y(n129) );
  CLKINVX1 U82 ( .A(N52), .Y(n43) );
  CLKINVX1 U83 ( .A(N54), .Y(n44) );
  CLKINVX1 U84 ( .A(n113), .Y(n115) );
  CLKINVX1 U85 ( .A(n99), .Y(n30) );
  OAI222XL U86 ( .A0(n78), .A1(n122), .B0(n79), .B1(n124), .C0(n80), .C1(n121), 
        .Y(n72) );
  CLKINVX1 U87 ( .A(n70), .Y(n122) );
  CLKINVX1 U88 ( .A(n71), .Y(n124) );
  AOI221XL U89 ( .A0(N162), .A1(n86), .B0(n87), .B1(N157), .C0(n88), .Y(n79)
         );
  XNOR2X1 U90 ( .A(n28), .B(n127), .Y(N50) );
  AOI22X1 U91 ( .A0(N49), .A1(N42), .B0(N40), .B1(n26), .Y(n84) );
  XNOR2X1 U92 ( .A(n29), .B(N39), .Y(N49) );
  CLKINVX1 U93 ( .A(N40), .Y(n29) );
  NAND2X1 U94 ( .A(n29), .B(n31), .Y(n127) );
  CLKINVX1 U95 ( .A(N39), .Y(n31) );
  CLKINVX1 U96 ( .A(N41), .Y(n28) );
  NOR2X1 U97 ( .A(n123), .B(n125), .Y(n50) );
  NAND2X1 U98 ( .A(n70), .B(n120), .Y(n57) );
  NAND2X1 U99 ( .A(n71), .B(n120), .Y(n61) );
  XOR2X1 U100 ( .A(now_y[3]), .B(center_y[3]), .Y(n111) );
  OAI22XL U101 ( .A0(center_y[2]), .A1(n115), .B0(n112), .B1(n119), .Y(n110)
         );
  CLKINVX1 U102 ( .A(now_y[2]), .Y(n119) );
  XNOR2X1 U103 ( .A(n96), .B(n97), .Y(N42) );
  XOR2X1 U104 ( .A(now_x[3]), .B(center_x[3]), .Y(n97) );
  OAI22XL U105 ( .A0(center_x[2]), .A1(n30), .B0(n98), .B1(n27), .Y(n96) );
  CLKINVX1 U106 ( .A(now_x[2]), .Y(n27) );
  XNOR2X1 U107 ( .A(n107), .B(n108), .Y(N53) );
  XOR2X1 U108 ( .A(now_y[1]), .B(center_y[1]), .Y(n108) );
  XNOR2X1 U109 ( .A(n109), .B(n115), .Y(N54) );
  XNOR2X1 U110 ( .A(center_y[2]), .B(now_y[2]), .Y(n109) );
  OAI21XL U111 ( .A0(center_y[1]), .A1(n116), .B0(n114), .Y(n113) );
  OAI2BB1X1 U112 ( .A0N(n116), .A1N(center_y[1]), .B0(now_y[1]), .Y(n114) );
  CLKINVX1 U113 ( .A(n107), .Y(n116) );
  OAI21XL U114 ( .A0(center_x[1]), .A1(n32), .B0(n101), .Y(n99) );
  OAI2BB1X1 U115 ( .A0N(n32), .A1N(center_x[1]), .B0(now_x[1]), .Y(n101) );
  CLKINVX1 U116 ( .A(n102), .Y(n32) );
  NAND2X1 U117 ( .A(center_x[0]), .B(n33), .Y(n102) );
  NAND2X1 U118 ( .A(center_y[0]), .B(n118), .Y(n107) );
  NOR2BX1 U119 ( .AN(center_y[2]), .B(n113), .Y(n112) );
  NOR2BX1 U120 ( .AN(center_x[2]), .B(n99), .Y(n98) );
  CLKINVX1 U121 ( .A(now_y[0]), .Y(n118) );
  CLKINVX1 U122 ( .A(now_x[0]), .Y(n33) );
  OAI2BB1X1 U123 ( .A0N(N163), .A1N(n71), .B0(n95), .Y(n92) );
  AOI31X1 U124 ( .A0(n125), .A1(n123), .A2(N158), .B0(center_r[2]), .Y(n95) );
  OAI211X1 U125 ( .A0(n46), .A1(n120), .B0(n47), .C0(n48), .Y(in_out) );
  AOI222XL U126 ( .A0(N157), .A1(n49), .B0(n50), .B1(n51), .C0(n52), .C1(n53), 
        .Y(n48) );
  OAI31XL U127 ( .A0(n72), .A1(n73), .A2(n74), .B0(center_r[2]), .Y(n47) );
  AOI211X1 U128 ( .A0(N166), .A1(n70), .B0(n92), .C0(n93), .Y(n46) );
  XNOR2X1 U129 ( .A(n102), .B(n103), .Y(N40) );
  XOR2X1 U130 ( .A(now_x[1]), .B(center_x[1]), .Y(n103) );
  XNOR2X1 U131 ( .A(n100), .B(n30), .Y(N41) );
  XNOR2X1 U132 ( .A(center_x[2]), .B(now_x[2]), .Y(n100) );
  OAI222XL U133 ( .A0(n56), .A1(n61), .B0(center_r[3]), .B1(n18), .C0(n57), 
        .C1(n69), .Y(n49) );
  NOR2X1 U134 ( .A(n125), .B(center_r[1]), .Y(n71) );
  NOR2X1 U135 ( .A(n123), .B(center_r[0]), .Y(n70) );
  CLKINVX1 U136 ( .A(center_r[1]), .Y(n123) );
  CLKINVX1 U137 ( .A(center_r[0]), .Y(n125) );
  CLKINVX1 U138 ( .A(center_r[3]), .Y(n120) );
  NOR2X1 U139 ( .A(N165), .B(n16), .Y(n1) );
  OAI21XL U140 ( .A0(\delta_x[3] ), .A1(N164), .B0(n17), .Y(n3) );
  NOR2X1 U141 ( .A(n84), .B(n90), .Y(n2) );
  AOI31X1 U142 ( .A0(n3), .A1(n25), .A2(n2), .B0(n1), .Y(N166) );
  AOI22X1 U143 ( .A0(N165), .A1(n91), .B0(N161), .B1(n25), .Y(n4) );
  AOI2BB2X1 U144 ( .B0(N162), .B1(\delta_x[3] ), .A0N(\delta_x[3] ), .A1N(n4), 
        .Y(n8) );
  NAND3X1 U145 ( .A(n84), .B(n16), .C(N164), .Y(n5) );
  OAI2BB1X1 U146 ( .A0N(\delta_x[3] ), .A1N(N162), .B0(n5), .Y(n6) );
  NOR2X1 U147 ( .A(n25), .B(n24), .Y(n11) );
  OAI32X1 U148 ( .A0(n6), .A1(n11), .A2(n90), .B0(n16), .B1(N162), .Y(n7) );
  OAI31XL U149 ( .A0(n8), .A1(n84), .A2(n90), .B0(n7), .Y(N163) );
  NOR2X1 U150 ( .A(n24), .B(n91), .Y(n10) );
  AO22X1 U151 ( .A0(N156), .A1(n25), .B0(N161), .B1(n91), .Y(n9) );
  AOI222XL U152 ( .A0(N165), .A1(n11), .B0(n10), .B1(N165), .C0(n24), .C1(n9), 
        .Y(n14) );
  AO22X1 U153 ( .A0(N164), .A1(n25), .B0(N164), .B1(n91), .Y(n12) );
  AOI221XL U154 ( .A0(n12), .A1(n24), .B0(N164), .B1(n84), .C0(n11), .Y(n13)
         );
  OAI22XL U155 ( .A0(n14), .A1(n90), .B0(n19), .B1(n13), .Y(n15) );
  AO22X1 U156 ( .A0(N157), .A1(\delta_x[3] ), .B0(n15), .B1(n16), .Y(N158) );
endmodule


module MapCell_2 ( now_x, now_y, center_x, center_y, center_r, in_out );
  input [3:0] now_x;
  input [3:0] now_y;
  input [3:0] center_x;
  input [3:0] center_y;
  input [3:0] center_r;
  output in_out;
  wire   N39, N40, N41, N42, N49, N50, N51, \delta_x[3] , N52, N53, N54, N55,
         N62, N63, N64, N156, N157, N158, N161, N162, N163, N164, N165, N166,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198;

  OAI21XL U3 ( .A0(n140), .A1(n45), .B0(n176), .Y(N161) );
  OAI31XL U4 ( .A0(n45), .A1(n192), .A2(n116), .B0(n44), .Y(N162) );
  CLKINVX1 U5 ( .A(n160), .Y(n30) );
  CLKINVX1 U6 ( .A(n153), .Y(n31) );
  AOI22X1 U7 ( .A0(N52), .A1(N55), .B0(n120), .B1(N52), .Y(n177) );
  AOI22X1 U8 ( .A0(N62), .A1(N55), .B0(N53), .B1(n120), .Y(n167) );
  AOI22X1 U9 ( .A0(N50), .A1(N42), .B0(N41), .B1(n32), .Y(n154) );
  XNOR2X1 U10 ( .A(n134), .B(n133), .Y(N55) );
  OAI21XL U11 ( .A0(center_y[0]), .A1(n124), .B0(n137), .Y(N52) );
  OAI21XL U12 ( .A0(center_x[0]), .A1(n39), .B0(n142), .Y(N39) );
  CLKINVX1 U13 ( .A(N156), .Y(n44) );
  CLKINVX1 U14 ( .A(N161), .Y(n42) );
  OAI22XL U15 ( .A0(n42), .A1(n24), .B0(n44), .B1(n26), .Y(n156) );
  OAI22XL U16 ( .A0(n40), .A1(n24), .B0(n41), .B1(n26), .Y(n170) );
  CLKINVX1 U17 ( .A(n179), .Y(n24) );
  CLKINVX1 U18 ( .A(N157), .Y(n41) );
  CLKINVX1 U19 ( .A(n181), .Y(n28) );
  CLKINVX1 U20 ( .A(n158), .Y(n27) );
  OAI21XL U21 ( .A0(n186), .A1(n117), .B0(n176), .Y(N156) );
  CLKINVX1 U22 ( .A(N162), .Y(n40) );
  AOI221XL U23 ( .A0(n163), .A1(N162), .B0(n179), .B1(N165), .C0(n155), .Y(
        n166) );
  OAI222XL U24 ( .A0(n41), .A1(n159), .B0(n27), .B1(n42), .C0(n44), .C1(n29), 
        .Y(n155) );
  NOR4X1 U25 ( .A(n31), .B(n30), .C(n25), .D(\delta_x[3] ), .Y(n179) );
  CLKINVX1 U26 ( .A(n1), .Y(n17) );
  NOR3X1 U27 ( .A(n117), .B(n45), .C(n168), .Y(N157) );
  NAND2X1 U28 ( .A(n188), .B(n175), .Y(n181) );
  NAND2X1 U29 ( .A(n28), .B(n169), .Y(n158) );
  NOR2BX1 U30 ( .AN(n168), .B(n180), .Y(n185) );
  CLKINVX1 U31 ( .A(n163), .Y(n26) );
  CLKINVX1 U32 ( .A(\delta_x[3] ), .Y(n16) );
  CLKINVX1 U33 ( .A(n157), .Y(n29) );
  OAI32X1 U34 ( .A0(n169), .A1(n185), .A2(n117), .B0(n28), .B1(n44), .Y(n171)
         );
  CLKINVX1 U35 ( .A(N164), .Y(n115) );
  AOI31X1 U36 ( .A0(\delta_x[3] ), .A1(n115), .A2(n150), .B0(n19), .Y(n151) );
  NOR3X1 U37 ( .A(n31), .B(n25), .C(n30), .Y(n150) );
  NAND4X1 U38 ( .A(n139), .B(n184), .C(n168), .D(n176), .Y(N165) );
  NAND2X1 U39 ( .A(n177), .B(n117), .Y(n139) );
  NAND2X1 U40 ( .A(n192), .B(n45), .Y(n176) );
  NAND2X1 U41 ( .A(n167), .B(n116), .Y(n184) );
  CLKINVX1 U42 ( .A(n167), .Y(n45) );
  NAND2X1 U43 ( .A(n140), .B(n167), .Y(N164) );
  CLKINVX1 U44 ( .A(n177), .Y(n116) );
  NOR2X1 U45 ( .A(n138), .B(n116), .Y(n186) );
  CLKINVX1 U46 ( .A(n192), .Y(n117) );
  AND2X2 U47 ( .A(n186), .B(n192), .Y(n140) );
  AOI211X1 U48 ( .A0(n163), .A1(N161), .B0(n162), .C0(n161), .Y(n164) );
  OAI222XL U49 ( .A0(n27), .A1(n43), .B0(n160), .B1(n41), .C0(n44), .C1(n159), 
        .Y(n162) );
  OAI22XL U50 ( .A0(n40), .A1(n29), .B0(n115), .B1(n24), .Y(n161) );
  CLKINVX1 U51 ( .A(N165), .Y(n43) );
  NOR2BX1 U52 ( .AN(N51), .B(n32), .Y(\delta_x[3] ) );
  XOR2X1 U53 ( .A(n32), .B(n126), .Y(N51) );
  NOR2BX1 U54 ( .AN(n34), .B(n127), .Y(n126) );
  NAND3X1 U55 ( .A(n160), .B(n154), .C(n31), .Y(n188) );
  NOR3X1 U56 ( .A(n31), .B(n30), .C(n154), .Y(n163) );
  NAND3X1 U57 ( .A(n153), .B(n154), .C(n30), .Y(n175) );
  CLKINVX1 U58 ( .A(n154), .Y(n25) );
  NAND2X1 U59 ( .A(n177), .B(n138), .Y(n168) );
  OAI21XL U60 ( .A0(n167), .A1(n116), .B0(n184), .Y(n180) );
  NOR2X1 U61 ( .A(n154), .B(n30), .Y(n157) );
  NAND2X1 U62 ( .A(n30), .B(n154), .Y(n169) );
  OAI21XL U63 ( .A0(n27), .A1(n41), .B0(n182), .Y(n193) );
  AOI32X1 U64 ( .A0(n181), .A1(n180), .A2(n192), .B0(n179), .B1(n178), .Y(n182) );
  OAI21XL U65 ( .A0(n177), .A1(n117), .B0(n176), .Y(n178) );
  OAI21XL U66 ( .A0(n190), .A1(n24), .B0(n189), .Y(n191) );
  OR4X1 U67 ( .A(n188), .B(n187), .C(n45), .D(n186), .Y(n189) );
  OA22X1 U68 ( .A0(n187), .A1(n185), .B0(n184), .B1(n183), .Y(n190) );
  NAND2X1 U69 ( .A(n30), .B(n153), .Y(n159) );
  CLKINVX1 U70 ( .A(n194), .Y(n19) );
  XNOR2X1 U71 ( .A(n123), .B(N52), .Y(N62) );
  AOI22X1 U72 ( .A0(N39), .A1(N42), .B0(n32), .B1(N39), .Y(n153) );
  AOI22X1 U73 ( .A0(N63), .A1(N55), .B0(N54), .B1(n120), .Y(n192) );
  XNOR2X1 U74 ( .A(n119), .B(n129), .Y(N63) );
  NAND2X1 U75 ( .A(N64), .B(N55), .Y(n138) );
  XOR2X1 U76 ( .A(n120), .B(n128), .Y(N64) );
  NOR2BX1 U77 ( .AN(n119), .B(n129), .Y(n128) );
  CLKINVX1 U78 ( .A(N55), .Y(n120) );
  CLKINVX1 U79 ( .A(N42), .Y(n32) );
  CLKINVX1 U80 ( .A(N53), .Y(n123) );
  NAND2X1 U81 ( .A(n123), .B(n118), .Y(n129) );
  CLKINVX1 U82 ( .A(N52), .Y(n118) );
  CLKINVX1 U83 ( .A(N54), .Y(n119) );
  CLKINVX1 U84 ( .A(n131), .Y(n121) );
  CLKINVX1 U85 ( .A(n145), .Y(n36) );
  OAI222XL U86 ( .A0(n166), .A1(n20), .B0(n165), .B1(n22), .C0(n164), .C1(n19), 
        .Y(n172) );
  CLKINVX1 U87 ( .A(n174), .Y(n20) );
  CLKINVX1 U88 ( .A(n173), .Y(n22) );
  AOI221XL U89 ( .A0(N162), .A1(n158), .B0(n157), .B1(N157), .C0(n156), .Y(
        n165) );
  XNOR2X1 U90 ( .A(n34), .B(n127), .Y(N50) );
  AOI22X1 U91 ( .A0(N49), .A1(N42), .B0(N40), .B1(n32), .Y(n160) );
  XNOR2X1 U92 ( .A(n35), .B(N39), .Y(N49) );
  CLKINVX1 U93 ( .A(N40), .Y(n35) );
  NAND2X1 U94 ( .A(n35), .B(n37), .Y(n127) );
  CLKINVX1 U95 ( .A(N39), .Y(n37) );
  CLKINVX1 U96 ( .A(N41), .Y(n34) );
  NOR2X1 U97 ( .A(n21), .B(n23), .Y(n194) );
  NAND2X1 U98 ( .A(n174), .B(n18), .Y(n187) );
  NAND2X1 U99 ( .A(n173), .B(n18), .Y(n183) );
  XOR2X1 U100 ( .A(now_y[3]), .B(center_y[3]), .Y(n133) );
  OAI22XL U101 ( .A0(center_y[2]), .A1(n121), .B0(n132), .B1(n125), .Y(n134)
         );
  CLKINVX1 U102 ( .A(now_y[2]), .Y(n125) );
  XNOR2X1 U103 ( .A(n148), .B(n147), .Y(N42) );
  XOR2X1 U104 ( .A(now_x[3]), .B(center_x[3]), .Y(n147) );
  OAI22XL U105 ( .A0(center_x[2]), .A1(n36), .B0(n146), .B1(n33), .Y(n148) );
  CLKINVX1 U106 ( .A(now_x[2]), .Y(n33) );
  XNOR2X1 U107 ( .A(n137), .B(n136), .Y(N53) );
  XOR2X1 U108 ( .A(now_y[1]), .B(center_y[1]), .Y(n136) );
  XNOR2X1 U109 ( .A(n135), .B(n121), .Y(N54) );
  XNOR2X1 U110 ( .A(center_y[2]), .B(now_y[2]), .Y(n135) );
  OAI21XL U111 ( .A0(center_y[1]), .A1(n122), .B0(n130), .Y(n131) );
  OAI2BB1X1 U112 ( .A0N(n122), .A1N(center_y[1]), .B0(now_y[1]), .Y(n130) );
  CLKINVX1 U113 ( .A(n137), .Y(n122) );
  OAI21XL U114 ( .A0(center_x[1]), .A1(n38), .B0(n143), .Y(n145) );
  OAI2BB1X1 U115 ( .A0N(n38), .A1N(center_x[1]), .B0(now_x[1]), .Y(n143) );
  CLKINVX1 U116 ( .A(n142), .Y(n38) );
  NAND2X1 U117 ( .A(center_x[0]), .B(n39), .Y(n142) );
  NAND2X1 U118 ( .A(center_y[0]), .B(n124), .Y(n137) );
  NOR2BX1 U119 ( .AN(center_y[2]), .B(n131), .Y(n132) );
  NOR2BX1 U120 ( .AN(center_x[2]), .B(n145), .Y(n146) );
  CLKINVX1 U121 ( .A(now_y[0]), .Y(n124) );
  CLKINVX1 U122 ( .A(now_x[0]), .Y(n39) );
  OAI2BB1X1 U123 ( .A0N(N163), .A1N(n173), .B0(n149), .Y(n152) );
  AOI31X1 U124 ( .A0(n23), .A1(n21), .A2(N158), .B0(center_r[2]), .Y(n149) );
  OAI211X1 U125 ( .A0(n198), .A1(n18), .B0(n197), .C0(n196), .Y(in_out) );
  AOI222XL U126 ( .A0(N157), .A1(n195), .B0(n194), .B1(n193), .C0(n192), .C1(
        n191), .Y(n196) );
  OAI31XL U127 ( .A0(n172), .A1(n171), .A2(n170), .B0(center_r[2]), .Y(n197)
         );
  AOI211X1 U128 ( .A0(N166), .A1(n174), .B0(n152), .C0(n151), .Y(n198) );
  XNOR2X1 U129 ( .A(n142), .B(n141), .Y(N40) );
  XOR2X1 U130 ( .A(now_x[1]), .B(center_x[1]), .Y(n141) );
  XNOR2X1 U131 ( .A(n144), .B(n36), .Y(N41) );
  XNOR2X1 U132 ( .A(center_x[2]), .B(now_x[2]), .Y(n144) );
  OAI222XL U133 ( .A0(n188), .A1(n183), .B0(center_r[3]), .B1(n24), .C0(n187), 
        .C1(n175), .Y(n195) );
  NOR2X1 U134 ( .A(n23), .B(center_r[1]), .Y(n173) );
  NOR2X1 U135 ( .A(n21), .B(center_r[0]), .Y(n174) );
  CLKINVX1 U136 ( .A(center_r[1]), .Y(n21) );
  CLKINVX1 U137 ( .A(center_r[0]), .Y(n23) );
  CLKINVX1 U138 ( .A(center_r[3]), .Y(n18) );
  NOR2X1 U139 ( .A(N165), .B(n16), .Y(n1) );
  OAI21XL U140 ( .A0(\delta_x[3] ), .A1(N164), .B0(n17), .Y(n3) );
  NOR2X1 U141 ( .A(n160), .B(n154), .Y(n2) );
  AOI31X1 U142 ( .A0(n3), .A1(n31), .A2(n2), .B0(n1), .Y(N166) );
  AOI22X1 U143 ( .A0(N165), .A1(n153), .B0(N161), .B1(n31), .Y(n4) );
  AOI2BB2X1 U144 ( .B0(N162), .B1(\delta_x[3] ), .A0N(\delta_x[3] ), .A1N(n4), 
        .Y(n8) );
  NAND3X1 U145 ( .A(n160), .B(n16), .C(N164), .Y(n5) );
  OAI2BB1X1 U146 ( .A0N(\delta_x[3] ), .A1N(N162), .B0(n5), .Y(n6) );
  NOR2X1 U147 ( .A(n31), .B(n30), .Y(n11) );
  OAI32X1 U148 ( .A0(n6), .A1(n11), .A2(n154), .B0(n16), .B1(N162), .Y(n7) );
  OAI31XL U149 ( .A0(n8), .A1(n160), .A2(n154), .B0(n7), .Y(N163) );
  NOR2X1 U150 ( .A(n30), .B(n153), .Y(n10) );
  AO22X1 U151 ( .A0(N156), .A1(n31), .B0(N161), .B1(n153), .Y(n9) );
  AOI222XL U152 ( .A0(N165), .A1(n11), .B0(n10), .B1(N165), .C0(n30), .C1(n9), 
        .Y(n14) );
  AO22X1 U153 ( .A0(N164), .A1(n31), .B0(N164), .B1(n153), .Y(n12) );
  AOI221XL U154 ( .A0(n12), .A1(n30), .B0(N164), .B1(n160), .C0(n11), .Y(n13)
         );
  OAI22XL U155 ( .A0(n14), .A1(n154), .B0(n25), .B1(n13), .Y(n15) );
  AO22X1 U156 ( .A0(N157), .A1(\delta_x[3] ), .B0(n15), .B1(n16), .Y(N158) );
endmodule


module MapCell_1 ( now_x, now_y, center_x, center_y, center_r, in_out );
  input [3:0] now_x;
  input [3:0] now_y;
  input [3:0] center_x;
  input [3:0] center_y;
  input [3:0] center_r;
  output in_out;
  wire   N39, N40, N41, N42, N49, N50, N51, \delta_x[3] , N52, N53, N54, N55,
         N62, N63, N64, N156, N157, N158, N161, N162, N163, N164, N165, N166,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198;

  OAI21XL U3 ( .A0(n140), .A1(n39), .B0(n176), .Y(N161) );
  OAI31XL U4 ( .A0(n39), .A1(n192), .A2(n41), .B0(n38), .Y(N162) );
  CLKINVX1 U5 ( .A(n160), .Y(n24) );
  CLKINVX1 U6 ( .A(n153), .Y(n25) );
  AOI22X1 U7 ( .A0(N52), .A1(N55), .B0(n45), .B1(N52), .Y(n177) );
  AOI22X1 U8 ( .A0(N62), .A1(N55), .B0(N53), .B1(n45), .Y(n167) );
  AOI22X1 U9 ( .A0(N50), .A1(N42), .B0(N41), .B1(n26), .Y(n154) );
  XNOR2X1 U10 ( .A(n134), .B(n133), .Y(N55) );
  OAI21XL U11 ( .A0(center_y[0]), .A1(n118), .B0(n137), .Y(N52) );
  OAI21XL U12 ( .A0(center_x[0]), .A1(n33), .B0(n142), .Y(N39) );
  CLKINVX1 U13 ( .A(N156), .Y(n38) );
  CLKINVX1 U14 ( .A(N161), .Y(n36) );
  OAI22XL U15 ( .A0(n36), .A1(n18), .B0(n38), .B1(n20), .Y(n156) );
  OAI22XL U16 ( .A0(n34), .A1(n18), .B0(n35), .B1(n20), .Y(n170) );
  CLKINVX1 U17 ( .A(n179), .Y(n18) );
  CLKINVX1 U18 ( .A(N157), .Y(n35) );
  CLKINVX1 U19 ( .A(n181), .Y(n22) );
  CLKINVX1 U20 ( .A(n158), .Y(n21) );
  OAI21XL U21 ( .A0(n186), .A1(n42), .B0(n176), .Y(N156) );
  CLKINVX1 U22 ( .A(N162), .Y(n34) );
  AOI221XL U23 ( .A0(n163), .A1(N162), .B0(n179), .B1(N165), .C0(n155), .Y(
        n166) );
  OAI222XL U24 ( .A0(n35), .A1(n159), .B0(n21), .B1(n36), .C0(n38), .C1(n23), 
        .Y(n155) );
  NOR4X1 U25 ( .A(n25), .B(n24), .C(n19), .D(\delta_x[3] ), .Y(n179) );
  CLKINVX1 U26 ( .A(n1), .Y(n17) );
  NOR3X1 U27 ( .A(n42), .B(n39), .C(n168), .Y(N157) );
  NAND2X1 U28 ( .A(n188), .B(n175), .Y(n181) );
  NAND2X1 U29 ( .A(n22), .B(n169), .Y(n158) );
  NOR2BX1 U30 ( .AN(n168), .B(n180), .Y(n185) );
  CLKINVX1 U31 ( .A(n163), .Y(n20) );
  CLKINVX1 U32 ( .A(\delta_x[3] ), .Y(n16) );
  CLKINVX1 U33 ( .A(n157), .Y(n23) );
  OAI32X1 U34 ( .A0(n169), .A1(n185), .A2(n42), .B0(n22), .B1(n38), .Y(n171)
         );
  CLKINVX1 U35 ( .A(N164), .Y(n40) );
  AOI31X1 U36 ( .A0(\delta_x[3] ), .A1(n40), .A2(n150), .B0(n121), .Y(n151) );
  NOR3X1 U37 ( .A(n25), .B(n19), .C(n24), .Y(n150) );
  NAND4X1 U38 ( .A(n139), .B(n184), .C(n168), .D(n176), .Y(N165) );
  NAND2X1 U39 ( .A(n177), .B(n42), .Y(n139) );
  NAND2X1 U40 ( .A(n192), .B(n39), .Y(n176) );
  NAND2X1 U41 ( .A(n167), .B(n41), .Y(n184) );
  CLKINVX1 U42 ( .A(n167), .Y(n39) );
  NAND2X1 U43 ( .A(n140), .B(n167), .Y(N164) );
  CLKINVX1 U44 ( .A(n177), .Y(n41) );
  NOR2X1 U45 ( .A(n138), .B(n41), .Y(n186) );
  CLKINVX1 U46 ( .A(n192), .Y(n42) );
  AND2X2 U47 ( .A(n186), .B(n192), .Y(n140) );
  AOI211X1 U48 ( .A0(n163), .A1(N161), .B0(n162), .C0(n161), .Y(n164) );
  OAI222XL U49 ( .A0(n21), .A1(n37), .B0(n160), .B1(n35), .C0(n38), .C1(n159), 
        .Y(n162) );
  OAI22XL U50 ( .A0(n34), .A1(n23), .B0(n40), .B1(n18), .Y(n161) );
  CLKINVX1 U51 ( .A(N165), .Y(n37) );
  NOR2BX1 U52 ( .AN(N51), .B(n26), .Y(\delta_x[3] ) );
  XOR2X1 U53 ( .A(n26), .B(n126), .Y(N51) );
  NOR2BX1 U54 ( .AN(n28), .B(n127), .Y(n126) );
  NAND3X1 U55 ( .A(n160), .B(n154), .C(n25), .Y(n188) );
  NOR3X1 U56 ( .A(n25), .B(n24), .C(n154), .Y(n163) );
  NAND3X1 U57 ( .A(n153), .B(n154), .C(n24), .Y(n175) );
  CLKINVX1 U58 ( .A(n154), .Y(n19) );
  NAND2X1 U59 ( .A(n177), .B(n138), .Y(n168) );
  OAI21XL U60 ( .A0(n167), .A1(n41), .B0(n184), .Y(n180) );
  NOR2X1 U61 ( .A(n154), .B(n24), .Y(n157) );
  NAND2X1 U62 ( .A(n24), .B(n154), .Y(n169) );
  OAI21XL U63 ( .A0(n21), .A1(n35), .B0(n182), .Y(n193) );
  AOI32X1 U64 ( .A0(n181), .A1(n180), .A2(n192), .B0(n179), .B1(n178), .Y(n182) );
  OAI21XL U65 ( .A0(n177), .A1(n42), .B0(n176), .Y(n178) );
  OAI21XL U66 ( .A0(n190), .A1(n18), .B0(n189), .Y(n191) );
  OR4X1 U67 ( .A(n188), .B(n187), .C(n39), .D(n186), .Y(n189) );
  OA22X1 U68 ( .A0(n187), .A1(n185), .B0(n184), .B1(n183), .Y(n190) );
  NAND2X1 U69 ( .A(n24), .B(n153), .Y(n159) );
  CLKINVX1 U70 ( .A(n194), .Y(n121) );
  XNOR2X1 U71 ( .A(n117), .B(N52), .Y(N62) );
  AOI22X1 U72 ( .A0(N39), .A1(N42), .B0(n26), .B1(N39), .Y(n153) );
  AOI22X1 U73 ( .A0(N63), .A1(N55), .B0(N54), .B1(n45), .Y(n192) );
  XNOR2X1 U74 ( .A(n44), .B(n129), .Y(N63) );
  NAND2X1 U75 ( .A(N64), .B(N55), .Y(n138) );
  XOR2X1 U76 ( .A(n45), .B(n128), .Y(N64) );
  NOR2BX1 U77 ( .AN(n44), .B(n129), .Y(n128) );
  CLKINVX1 U78 ( .A(N55), .Y(n45) );
  CLKINVX1 U79 ( .A(N42), .Y(n26) );
  CLKINVX1 U80 ( .A(N53), .Y(n117) );
  NAND2X1 U81 ( .A(n117), .B(n43), .Y(n129) );
  CLKINVX1 U82 ( .A(N52), .Y(n43) );
  CLKINVX1 U83 ( .A(N54), .Y(n44) );
  CLKINVX1 U84 ( .A(n131), .Y(n115) );
  CLKINVX1 U85 ( .A(n145), .Y(n30) );
  OAI222XL U86 ( .A0(n166), .A1(n122), .B0(n165), .B1(n124), .C0(n164), .C1(
        n121), .Y(n172) );
  CLKINVX1 U87 ( .A(n174), .Y(n122) );
  CLKINVX1 U88 ( .A(n173), .Y(n124) );
  AOI221XL U89 ( .A0(N162), .A1(n158), .B0(n157), .B1(N157), .C0(n156), .Y(
        n165) );
  XNOR2X1 U90 ( .A(n28), .B(n127), .Y(N50) );
  AOI22X1 U91 ( .A0(N49), .A1(N42), .B0(N40), .B1(n26), .Y(n160) );
  XNOR2X1 U92 ( .A(n29), .B(N39), .Y(N49) );
  CLKINVX1 U93 ( .A(N40), .Y(n29) );
  NAND2X1 U94 ( .A(n29), .B(n31), .Y(n127) );
  CLKINVX1 U95 ( .A(N39), .Y(n31) );
  CLKINVX1 U96 ( .A(N41), .Y(n28) );
  NOR2X1 U97 ( .A(n123), .B(n125), .Y(n194) );
  NAND2X1 U98 ( .A(n174), .B(n120), .Y(n187) );
  NAND2X1 U99 ( .A(n173), .B(n120), .Y(n183) );
  XOR2X1 U100 ( .A(now_y[3]), .B(center_y[3]), .Y(n133) );
  OAI22XL U101 ( .A0(center_y[2]), .A1(n115), .B0(n132), .B1(n119), .Y(n134)
         );
  CLKINVX1 U102 ( .A(now_y[2]), .Y(n119) );
  XNOR2X1 U103 ( .A(n148), .B(n147), .Y(N42) );
  XOR2X1 U104 ( .A(now_x[3]), .B(center_x[3]), .Y(n147) );
  OAI22XL U105 ( .A0(center_x[2]), .A1(n30), .B0(n146), .B1(n27), .Y(n148) );
  CLKINVX1 U106 ( .A(now_x[2]), .Y(n27) );
  XNOR2X1 U107 ( .A(n137), .B(n136), .Y(N53) );
  XOR2X1 U108 ( .A(now_y[1]), .B(center_y[1]), .Y(n136) );
  XNOR2X1 U109 ( .A(n135), .B(n115), .Y(N54) );
  XNOR2X1 U110 ( .A(center_y[2]), .B(now_y[2]), .Y(n135) );
  OAI21XL U111 ( .A0(center_y[1]), .A1(n116), .B0(n130), .Y(n131) );
  OAI2BB1X1 U112 ( .A0N(n116), .A1N(center_y[1]), .B0(now_y[1]), .Y(n130) );
  CLKINVX1 U113 ( .A(n137), .Y(n116) );
  OAI21XL U114 ( .A0(center_x[1]), .A1(n32), .B0(n143), .Y(n145) );
  OAI2BB1X1 U115 ( .A0N(n32), .A1N(center_x[1]), .B0(now_x[1]), .Y(n143) );
  CLKINVX1 U116 ( .A(n142), .Y(n32) );
  NAND2X1 U117 ( .A(center_x[0]), .B(n33), .Y(n142) );
  NAND2X1 U118 ( .A(center_y[0]), .B(n118), .Y(n137) );
  NOR2BX1 U119 ( .AN(center_y[2]), .B(n131), .Y(n132) );
  NOR2BX1 U120 ( .AN(center_x[2]), .B(n145), .Y(n146) );
  CLKINVX1 U121 ( .A(now_y[0]), .Y(n118) );
  CLKINVX1 U122 ( .A(now_x[0]), .Y(n33) );
  OAI2BB1X1 U123 ( .A0N(N163), .A1N(n173), .B0(n149), .Y(n152) );
  AOI31X1 U124 ( .A0(n125), .A1(n123), .A2(N158), .B0(center_r[2]), .Y(n149)
         );
  OAI211X1 U125 ( .A0(n198), .A1(n120), .B0(n197), .C0(n196), .Y(in_out) );
  AOI222XL U126 ( .A0(N157), .A1(n195), .B0(n194), .B1(n193), .C0(n192), .C1(
        n191), .Y(n196) );
  OAI31XL U127 ( .A0(n172), .A1(n171), .A2(n170), .B0(center_r[2]), .Y(n197)
         );
  AOI211X1 U128 ( .A0(N166), .A1(n174), .B0(n152), .C0(n151), .Y(n198) );
  XNOR2X1 U129 ( .A(n142), .B(n141), .Y(N40) );
  XOR2X1 U130 ( .A(now_x[1]), .B(center_x[1]), .Y(n141) );
  XNOR2X1 U131 ( .A(n144), .B(n30), .Y(N41) );
  XNOR2X1 U132 ( .A(center_x[2]), .B(now_x[2]), .Y(n144) );
  OAI222XL U133 ( .A0(n188), .A1(n183), .B0(center_r[3]), .B1(n18), .C0(n187), 
        .C1(n175), .Y(n195) );
  NOR2X1 U134 ( .A(n125), .B(center_r[1]), .Y(n173) );
  NOR2X1 U135 ( .A(n123), .B(center_r[0]), .Y(n174) );
  CLKINVX1 U136 ( .A(center_r[1]), .Y(n123) );
  CLKINVX1 U137 ( .A(center_r[0]), .Y(n125) );
  CLKINVX1 U138 ( .A(center_r[3]), .Y(n120) );
  NOR2X1 U139 ( .A(N165), .B(n16), .Y(n1) );
  OAI21XL U140 ( .A0(\delta_x[3] ), .A1(N164), .B0(n17), .Y(n3) );
  NOR2X1 U141 ( .A(n160), .B(n154), .Y(n2) );
  AOI31X1 U142 ( .A0(n3), .A1(n25), .A2(n2), .B0(n1), .Y(N166) );
  AOI22X1 U143 ( .A0(N165), .A1(n153), .B0(N161), .B1(n25), .Y(n4) );
  AOI2BB2X1 U144 ( .B0(N162), .B1(\delta_x[3] ), .A0N(\delta_x[3] ), .A1N(n4), 
        .Y(n8) );
  NAND3X1 U145 ( .A(n160), .B(n16), .C(N164), .Y(n5) );
  OAI2BB1X1 U146 ( .A0N(\delta_x[3] ), .A1N(N162), .B0(n5), .Y(n6) );
  NOR2X1 U147 ( .A(n25), .B(n24), .Y(n11) );
  OAI32X1 U148 ( .A0(n6), .A1(n11), .A2(n154), .B0(n16), .B1(N162), .Y(n7) );
  OAI31XL U149 ( .A0(n8), .A1(n160), .A2(n154), .B0(n7), .Y(N163) );
  NOR2X1 U150 ( .A(n24), .B(n153), .Y(n10) );
  AO22X1 U151 ( .A0(N156), .A1(n25), .B0(N161), .B1(n153), .Y(n9) );
  AOI222XL U152 ( .A0(N165), .A1(n11), .B0(n10), .B1(N165), .C0(n24), .C1(n9), 
        .Y(n14) );
  AO22X1 U153 ( .A0(N164), .A1(n25), .B0(N164), .B1(n153), .Y(n12) );
  AOI221XL U154 ( .A0(n12), .A1(n24), .B0(N164), .B1(n160), .C0(n11), .Y(n13)
         );
  OAI22XL U155 ( .A0(n14), .A1(n154), .B0(n19), .B1(n13), .Y(n15) );
  AO22X1 U156 ( .A0(N157), .A1(\delta_x[3] ), .B0(n15), .B1(n16), .Y(N158) );
endmodule


module SET ( clk, rst, en, central, radius, mode, busy, valid, candidate );
  input [23:0] central;
  input [11:0] radius;
  input [1:0] mode;
  output [7:0] candidate;
  input clk, rst, en;
  output busy, valid;
  wire   in_out_1, in_out_2, in_out_3, t1, t2, t3, \state[0] , N33, N34, N35,
         N36, N37, N38, N39, N40, N41, N48, N49, N50, n3, n4, n6, n7, n8, n9,
         n10, n11, n13, n14, n15, n17, n18, n20, n21, n24, n25, n26, n27, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, N79, N78, N77, N76, \mult_add_75_aco/b ,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64;
  wire   [3:0] now_x;
  wire   [3:0] now_y;
  wire   [3:0] x1;
  wire   [3:0] y1;
  wire   [3:0] r1;
  wire   [3:0] x2;
  wire   [3:0] y2;
  wire   [3:0] r2;
  wire   [3:0] x3;
  wire   [3:0] y3;
  wire   [3:0] r3;
  wire   [1:0] reg_mode;
  wire   [7:1] \add_67/carry ;

  MapCell_0 C1 ( .now_x(now_x), .now_y(now_y), .center_x(x1), .center_y(y1), 
        .center_r(r1), .in_out(in_out_1) );
  MapCell_2 C2 ( .now_x(now_x), .now_y(now_y), .center_x(x2), .center_y(y2), 
        .center_r(r2), .in_out(in_out_2) );
  MapCell_1 C3 ( .now_x(now_x), .now_y(now_y), .center_x(x3), .center_y(y3), 
        .center_r(r3), .in_out(in_out_3) );
  TLATX1 \r2_reg[2]  ( .G(n59), .D(radius[6]), .Q(r2[2]) );
  TLATX1 \r3_reg[2]  ( .G(n59), .D(radius[2]), .Q(r3[2]) );
  TLATX1 \r1_reg[2]  ( .G(n59), .D(radius[10]), .Q(r1[2]) );
  TLATX1 \y3_reg[3]  ( .G(n59), .D(central[3]), .Q(y3[3]) );
  TLATX1 \x1_reg[3]  ( .G(n59), .D(central[23]), .Q(x1[3]) );
  TLATX1 \y1_reg[3]  ( .G(n59), .D(central[19]), .Q(y1[3]) );
  TLATX1 \x2_reg[3]  ( .G(n59), .D(central[15]), .Q(x2[3]) );
  TLATX1 \y2_reg[3]  ( .G(n59), .D(central[11]), .Q(y2[3]) );
  TLATX1 \x3_reg[3]  ( .G(n59), .D(central[7]), .Q(x3[3]) );
  TLATX1 \y3_reg[2]  ( .G(n59), .D(central[2]), .Q(y3[2]) );
  TLATX1 \x1_reg[2]  ( .G(n59), .D(central[22]), .Q(x1[2]) );
  TLATX1 \y1_reg[2]  ( .G(n59), .D(central[18]), .Q(y1[2]) );
  TLATX1 \x2_reg[2]  ( .G(n59), .D(central[14]), .Q(x2[2]) );
  TLATX1 \y2_reg[2]  ( .G(n59), .D(central[10]), .Q(y2[2]) );
  TLATX1 \x3_reg[2]  ( .G(n59), .D(central[6]), .Q(x3[2]) );
  TLATX1 \y3_reg[1]  ( .G(n59), .D(central[1]), .Q(y3[1]) );
  TLATX1 \x1_reg[1]  ( .G(n59), .D(central[21]), .Q(x1[1]) );
  TLATX1 \y1_reg[1]  ( .G(n59), .D(central[17]), .Q(y1[1]) );
  TLATX1 \x2_reg[1]  ( .G(n59), .D(central[13]), .Q(x2[1]) );
  TLATX1 \y2_reg[1]  ( .G(n59), .D(central[9]), .Q(y2[1]) );
  TLATX1 \x3_reg[1]  ( .G(n59), .D(central[5]), .Q(x3[1]) );
  TLATX1 \r2_reg[3]  ( .G(n59), .D(radius[7]), .Q(r2[3]) );
  TLATX1 \r3_reg[3]  ( .G(n59), .D(radius[3]), .Q(r3[3]) );
  TLATX1 \r1_reg[3]  ( .G(n59), .D(radius[11]), .Q(r1[3]) );
  TLATX1 \reg_mode_reg[0]  ( .G(n59), .D(mode[0]), .Q(reg_mode[0]), .QN(n54)
         );
  TLATX1 \reg_mode_reg[1]  ( .G(n59), .D(mode[1]), .Q(reg_mode[1]), .QN(n56)
         );
  TLATX1 \y3_reg[0]  ( .G(n59), .D(central[0]), .Q(y3[0]) );
  TLATX1 \x1_reg[0]  ( .G(n59), .D(central[20]), .Q(x1[0]) );
  TLATX1 \y1_reg[0]  ( .G(n59), .D(central[16]), .Q(y1[0]) );
  TLATX1 \x2_reg[0]  ( .G(n59), .D(central[12]), .Q(x2[0]) );
  TLATX1 \y2_reg[0]  ( .G(n59), .D(central[8]), .Q(y2[0]) );
  TLATX1 \x3_reg[0]  ( .G(n59), .D(central[4]), .Q(x3[0]) );
  TLATX1 \r2_reg[1]  ( .G(n59), .D(radius[5]), .Q(r2[1]) );
  TLATX1 \r2_reg[0]  ( .G(n59), .D(radius[4]), .Q(r2[0]) );
  TLATX1 \r3_reg[1]  ( .G(n59), .D(radius[1]), .Q(r3[1]) );
  TLATX1 \r3_reg[0]  ( .G(n59), .D(radius[0]), .Q(r3[0]) );
  TLATX1 \r1_reg[1]  ( .G(n59), .D(radius[9]), .Q(r1[1]) );
  TLATX1 \r1_reg[0]  ( .G(n59), .D(radius[8]), .Q(r1[0]) );
  DFFRX1 \candidate_reg[7]  ( .D(n30), .CK(clk), .RN(n27), .Q(candidate[7]) );
  DFFRX1 valid_reg ( .D(n41), .CK(clk), .RN(n27), .Q(valid), .QN(n26) );
  DFFSX1 busy_reg ( .D(n42), .CK(clk), .SN(n27), .Q(busy), .QN(n24) );
  DFFRX1 \candidate_reg[2]  ( .D(n35), .CK(clk), .RN(n27), .Q(candidate[2]) );
  DFFRX1 \candidate_reg[3]  ( .D(n34), .CK(clk), .RN(n27), .Q(candidate[3]) );
  DFFRX1 \candidate_reg[4]  ( .D(n33), .CK(clk), .RN(n27), .Q(candidate[4]) );
  DFFRX1 \candidate_reg[5]  ( .D(n32), .CK(clk), .RN(n27), .Q(candidate[5]) );
  DFFRX1 \candidate_reg[6]  ( .D(n31), .CK(clk), .RN(n27), .Q(candidate[6]) );
  DFFSRX1 \state_reg[0]  ( .D(n29), .CK(clk), .SN(n27), .RN(n60), .Q(
        \state[0] ), .QN(n58) );
  DFFRX1 \state_reg[1]  ( .D(n52), .CK(clk), .RN(n51), .Q(n25) );
  DFFRX1 \candidate_reg[0]  ( .D(n37), .CK(clk), .RN(n27), .Q(candidate[0]) );
  DFFRX1 \candidate_reg[1]  ( .D(n36), .CK(clk), .RN(n27), .Q(candidate[1]) );
  DFFNSRX1 t3_reg ( .D(in_out_3), .CKN(clk), .SN(1'b1), .RN(n60), .Q(t3) );
  DFFRX1 \now_x_reg[3]  ( .D(n50), .CK(clk), .RN(n27), .Q(now_x[3]) );
  DFFNSRX1 t2_reg ( .D(in_out_2), .CKN(clk), .SN(1'b1), .RN(n60), .Q(t2), .QN(
        n55) );
  DFFNSRX1 t1_reg ( .D(in_out_1), .CKN(clk), .SN(1'b1), .RN(n60), .Q(t1), .QN(
        n53) );
  DFFRX1 \now_x_reg[1]  ( .D(n48), .CK(clk), .RN(n27), .Q(now_x[1]) );
  DFFRX1 \now_y_reg[3]  ( .D(n43), .CK(clk), .RN(n27), .Q(now_y[3]) );
  DFFRX1 \now_x_reg[2]  ( .D(n49), .CK(clk), .RN(n27), .Q(now_x[2]) );
  DFFRX1 \now_y_reg[1]  ( .D(n45), .CK(clk), .RN(n27), .Q(now_y[1]) );
  DFFSX1 \now_x_reg[0]  ( .D(n47), .CK(clk), .SN(n27), .Q(now_x[0]) );
  DFFSX1 \now_y_reg[0]  ( .D(n46), .CK(clk), .SN(n27), .Q(now_y[0]) );
  DFFRX1 \now_y_reg[2]  ( .D(n44), .CK(clk), .RN(n27), .Q(now_y[2]) );
  NAND2X1 U54 ( .A(en), .B(n60), .Y(n27) );
  NOR2X1 U55 ( .A(n57), .B(\mult_add_75_aco/b ), .Y(n11) );
  NAND2X1 U56 ( .A(N77), .B(N76), .Y(n64) );
  CLKINVX1 U57 ( .A(n13), .Y(\mult_add_75_aco/b ) );
  CLKINVX1 U58 ( .A(N76), .Y(n61) );
  CLKINVX1 U59 ( .A(n27), .Y(n59) );
  OAI21XL U60 ( .A0(t3), .A1(n20), .B0(n21), .Y(n18) );
  OAI211X1 U61 ( .A0(t2), .A1(t1), .B0(n20), .C0(t3), .Y(n21) );
  NAND2X1 U62 ( .A(t2), .B(t1), .Y(n20) );
  OAI21XL U63 ( .A0(n15), .A1(n55), .B0(n17), .Y(N33) );
  AOI32X1 U64 ( .A0(n54), .A1(n53), .A2(reg_mode[1]), .B0(t1), .B1(n56), .Y(
        n15) );
  AOI33X1 U65 ( .A0(reg_mode[0]), .A1(n18), .A2(reg_mode[1]), .B0(n54), .B1(
        n55), .B2(t1), .Y(n17) );
  AO22X1 U66 ( .A0(N41), .A1(n4), .B0(n57), .B1(candidate[7]), .Y(n30) );
  AO22X1 U67 ( .A0(N35), .A1(n4), .B0(n57), .B1(candidate[1]), .Y(n36) );
  AO22X1 U68 ( .A0(N40), .A1(n4), .B0(n57), .B1(candidate[6]), .Y(n31) );
  AO22X1 U69 ( .A0(N39), .A1(n4), .B0(n57), .B1(candidate[5]), .Y(n32) );
  AO22X1 U70 ( .A0(N38), .A1(n4), .B0(n57), .B1(candidate[4]), .Y(n33) );
  AO22X1 U71 ( .A0(N37), .A1(n4), .B0(n57), .B1(candidate[3]), .Y(n34) );
  AO22X1 U72 ( .A0(N36), .A1(n4), .B0(n57), .B1(candidate[2]), .Y(n35) );
  AO22X1 U73 ( .A0(N34), .A1(n4), .B0(n57), .B1(candidate[0]), .Y(n37) );
  NOR4BX1 U74 ( .AN(now_x[3]), .B(now_x[0]), .C(now_x[1]), .D(now_x[2]), .Y(
        n13) );
  AO22X1 U75 ( .A0(N49), .A1(n4), .B0(now_x[2]), .B1(n57), .Y(n49) );
  XNOR2X1 U76 ( .A(N78), .B(n64), .Y(N49) );
  AO22X1 U77 ( .A0(now_x[3]), .A1(n57), .B0(N50), .B1(n4), .Y(n50) );
  XOR2X1 U78 ( .A(N79), .B(n63), .Y(N50) );
  NOR2BX1 U79 ( .AN(N78), .B(n64), .Y(n63) );
  NOR2BX1 U80 ( .AN(now_y[1]), .B(n10), .Y(n9) );
  XNOR2X1 U81 ( .A(now_y[1]), .B(n10), .Y(n45) );
  XNOR2X1 U82 ( .A(now_y[3]), .B(n8), .Y(n43) );
  NAND2X1 U83 ( .A(now_y[2]), .B(n9), .Y(n8) );
  NAND3X1 U84 ( .A(now_y[3]), .B(n13), .C(n14), .Y(n3) );
  NOR3X1 U85 ( .A(now_y[0]), .B(now_y[2]), .C(now_y[1]), .Y(n14) );
  NAND2X1 U86 ( .A(now_y[0]), .B(n11), .Y(n10) );
  OR3X2 U87 ( .A(n58), .B(n25), .C(rst), .Y(n57) );
  CLKINVX1 U88 ( .A(n57), .Y(n4) );
  AO22X1 U89 ( .A0(n61), .A1(n4), .B0(now_x[0]), .B1(n57), .Y(n47) );
  AO22X1 U90 ( .A0(N48), .A1(n4), .B0(now_x[1]), .B1(n57), .Y(n48) );
  XNOR2X1 U91 ( .A(N77), .B(n61), .Y(N48) );
  OA21XL U92 ( .A0(n3), .A1(n25), .B0(\state[0] ), .Y(n29) );
  XOR2X1 U93 ( .A(now_y[0]), .B(n11), .Y(n46) );
  XOR2X1 U94 ( .A(now_y[2]), .B(n9), .Y(n44) );
  OA21XL U95 ( .A0(n62), .A1(n25), .B0(\state[0] ), .Y(n52) );
  CLKINVX1 U96 ( .A(n3), .Y(n62) );
  NOR2X1 U97 ( .A(\state[0] ), .B(rst), .Y(n6) );
  OAI21XL U98 ( .A0(n24), .A1(n6), .B0(n7), .Y(n42) );
  OAI21XL U99 ( .A0(n6), .A1(n26), .B0(n7), .Y(n41) );
  NAND2X1 U100 ( .A(n25), .B(n6), .Y(n7) );
  NOR2X1 U101 ( .A(rst), .B(en), .Y(n51) );
  CLKINVX1 U102 ( .A(rst), .Y(n60) );
  XOR2X1 U103 ( .A(candidate[7]), .B(\add_67/carry [7]), .Y(N41) );
  AND2X1 U104 ( .A(\add_67/carry [6]), .B(candidate[6]), .Y(\add_67/carry [7])
         );
  XOR2X1 U105 ( .A(candidate[6]), .B(\add_67/carry [6]), .Y(N40) );
  AND2X1 U106 ( .A(\add_67/carry [5]), .B(candidate[5]), .Y(\add_67/carry [6])
         );
  XOR2X1 U107 ( .A(candidate[5]), .B(\add_67/carry [5]), .Y(N39) );
  AND2X1 U108 ( .A(\add_67/carry [4]), .B(candidate[4]), .Y(\add_67/carry [5])
         );
  XOR2X1 U109 ( .A(candidate[4]), .B(\add_67/carry [4]), .Y(N38) );
  AND2X1 U110 ( .A(\add_67/carry [3]), .B(candidate[3]), .Y(\add_67/carry [4])
         );
  XOR2X1 U111 ( .A(candidate[3]), .B(\add_67/carry [3]), .Y(N37) );
  AND2X1 U112 ( .A(\add_67/carry [2]), .B(candidate[2]), .Y(\add_67/carry [3])
         );
  XOR2X1 U113 ( .A(candidate[2]), .B(\add_67/carry [2]), .Y(N36) );
  AND2X1 U114 ( .A(\add_67/carry [1]), .B(candidate[1]), .Y(\add_67/carry [2])
         );
  XOR2X1 U115 ( .A(candidate[1]), .B(\add_67/carry [1]), .Y(N35) );
  AND2X1 U116 ( .A(candidate[0]), .B(N33), .Y(\add_67/carry [1]) );
  XOR2X1 U117 ( .A(N33), .B(candidate[0]), .Y(N34) );
  AND2X1 U118 ( .A(now_x[0]), .B(\mult_add_75_aco/b ), .Y(N76) );
  AND2X1 U119 ( .A(now_x[1]), .B(\mult_add_75_aco/b ), .Y(N77) );
  AND2X1 U120 ( .A(now_x[2]), .B(\mult_add_75_aco/b ), .Y(N78) );
  AND2X1 U121 ( .A(\mult_add_75_aco/b ), .B(now_x[3]), .Y(N79) );
endmodule

