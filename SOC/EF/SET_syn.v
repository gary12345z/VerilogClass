/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03
// Date      : Sat Nov 30 10:51:40 2019
/////////////////////////////////////////////////////////////


module MapCell_0 ( now, center_x, center_y, center_r, result );
  input [5:0] now;
  input [3:0] center_x;
  input [3:0] center_y;
  input [3:0] center_r;
  output result;
  wire   N159, N161, N164, N165, N166, N167, N168, N169, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48;
  wire   [3:0] delta_x;

  OAI31XL U3 ( .A0(n94), .A1(n95), .A2(n96), .B0(n97), .Y(delta_x[3]) );
  OAI21XL U4 ( .A0(n119), .A1(n116), .B0(n118), .Y(N164) );
  OAI22XL U5 ( .A0(n26), .A1(n102), .B0(n94), .B1(n103), .Y(delta_x[2]) );
  OAI22XL U6 ( .A0(center_x[3]), .A1(n112), .B0(n113), .B1(n27), .Y(n94) );
  OAI22XL U7 ( .A0(n123), .A1(n124), .B0(n125), .B1(n38), .Y(n116) );
  OAI22XL U8 ( .A0(n123), .A1(n129), .B0(n38), .B1(n130), .Y(n77) );
  CLKINVX1 U9 ( .A(n68), .Y(n21) );
  CLKINVX1 U10 ( .A(n87), .Y(n20) );
  OAI22XL U11 ( .A0(n31), .A1(n70), .B0(n32), .B1(n75), .Y(n88) );
  NAND2X1 U12 ( .A(n60), .B(n71), .Y(n68) );
  NAND2X1 U13 ( .A(n21), .B(n76), .Y(n87) );
  CLKINVX1 U14 ( .A(n2), .Y(n18) );
  NOR2X1 U15 ( .A(n69), .B(n39), .Y(n63) );
  OAI222XL U16 ( .A0(n66), .A1(n84), .B0(n20), .B1(n31), .C0(n32), .C1(n86), 
        .Y(n85) );
  CLKINVX1 U17 ( .A(n75), .Y(n24) );
  CLKINVX1 U18 ( .A(n70), .Y(n19) );
  CLKINVX1 U19 ( .A(N159), .Y(n32) );
  CLKINVX1 U20 ( .A(n66), .Y(n34) );
  CLKINVX1 U21 ( .A(n86), .Y(n23) );
  NAND3X1 U22 ( .A(n29), .B(n25), .C(delta_x[2]), .Y(n75) );
  OAI21XL U23 ( .A0(n36), .A1(n42), .B0(n65), .Y(n69) );
  NAND3X1 U24 ( .A(n37), .B(n36), .C(n39), .Y(n66) );
  NAND4X1 U25 ( .A(n29), .B(n25), .C(n22), .D(n17), .Y(n70) );
  CLKINVX1 U26 ( .A(delta_x[2]), .Y(n22) );
  NAND2X1 U27 ( .A(delta_x[2]), .B(n25), .Y(n86) );
  OAI2BB1X1 U28 ( .A0N(n62), .A1N(n37), .B0(n118), .Y(N159) );
  NAND3X1 U29 ( .A(n25), .B(n22), .C(delta_x[0]), .Y(n60) );
  NAND2X1 U30 ( .A(n36), .B(n42), .Y(n65) );
  CLKINVX1 U31 ( .A(n1), .Y(n25) );
  NAND3X1 U32 ( .A(n29), .B(n22), .C(n1), .Y(n71) );
  OAI2BB2XL U33 ( .B0(n66), .B1(n75), .A0N(N165), .A1N(n19), .Y(n74) );
  OAI21XL U34 ( .A0(n20), .A1(n66), .B0(n67), .Y(n56) );
  AOI33X1 U35 ( .A0(n68), .A1(n69), .A2(n37), .B0(n37), .B1(n42), .B2(n19), 
        .Y(n67) );
  NAND2X1 U36 ( .A(n1), .B(n22), .Y(n76) );
  NAND2X1 U37 ( .A(n119), .B(n36), .Y(N167) );
  CLKINVX1 U38 ( .A(n133), .Y(n40) );
  CLKINVX1 U39 ( .A(N164), .Y(n31) );
  OAI222XL U40 ( .A0(n20), .A1(n35), .B0(n25), .B1(n66), .C0(n32), .C1(n84), 
        .Y(n82) );
  CLKINVX1 U41 ( .A(N168), .Y(n35) );
  AO22X1 U42 ( .A0(N165), .A1(n23), .B0(N167), .B1(n19), .Y(n83) );
  NAND2X1 U43 ( .A(n1), .B(n29), .Y(n84) );
  CLKINVX1 U44 ( .A(delta_x[0]), .Y(n29) );
  CLKINVX1 U45 ( .A(n121), .Y(n42) );
  OAI31XL U46 ( .A0(n93), .A1(N167), .A2(n17), .B0(n45), .Y(n89) );
  NAND3X1 U47 ( .A(n25), .B(n22), .C(n29), .Y(n93) );
  CLKINVX1 U48 ( .A(n117), .Y(n39) );
  XNOR2X1 U49 ( .A(n104), .B(n98), .Y(n102) );
  XOR2X1 U50 ( .A(n101), .B(n104), .Y(n103) );
  NAND3X1 U51 ( .A(n46), .B(n44), .C(N161), .Y(n90) );
  CLKBUFX3 U52 ( .A(delta_x[1]), .Y(n1) );
  OAI22XL U53 ( .A0(n26), .A1(n107), .B0(n108), .B1(n94), .Y(delta_x[1]) );
  XOR2X1 U54 ( .A(n109), .B(n28), .Y(n107) );
  XOR2X1 U55 ( .A(n109), .B(n110), .Y(n108) );
  OAI21XL U56 ( .A0(n140), .A1(n41), .B0(n138), .Y(n133) );
  NAND4X1 U57 ( .A(n120), .B(n65), .C(n117), .D(n118), .Y(N168) );
  NAND2X1 U58 ( .A(n121), .B(n77), .Y(n120) );
  NOR2X1 U59 ( .A(n62), .B(n77), .Y(n119) );
  CLKINVX1 U60 ( .A(n116), .Y(n36) );
  NAND2X1 U61 ( .A(n37), .B(n116), .Y(n118) );
  CLKINVX1 U62 ( .A(n77), .Y(n37) );
  NOR2BX1 U63 ( .AN(n128), .B(n135), .Y(n134) );
  CLKINVX1 U64 ( .A(n94), .Y(n26) );
  OAI31XL U65 ( .A0(n116), .A1(n37), .A2(n42), .B0(n32), .Y(N165) );
  NAND2X1 U66 ( .A(n140), .B(n41), .Y(n138) );
  CLKINVX1 U67 ( .A(n123), .Y(n38) );
  CLKINVX1 U68 ( .A(n111), .Y(n28) );
  CLKINVX1 U69 ( .A(n110), .Y(n30) );
  OAI222XL U70 ( .A0(n78), .A1(n46), .B0(n79), .B1(n44), .C0(n80), .C1(n81), 
        .Y(n72) );
  AOI221XL U71 ( .A0(N165), .A1(n87), .B0(n23), .B1(n34), .C0(n88), .Y(n78) );
  AOI211X1 U72 ( .A0(n24), .A1(N164), .B0(n82), .C0(n83), .Y(n80) );
  AOI221XL U73 ( .A0(n24), .A1(N165), .B0(n19), .B1(N168), .C0(n85), .Y(n79)
         );
  CLKINVX1 U74 ( .A(n135), .Y(n48) );
  OAI2BB1X1 U75 ( .A0N(n19), .A1N(n58), .B0(n59), .Y(n57) );
  NAND4BBXL U76 ( .AN(n60), .BN(n61), .C(n36), .D(n62), .Y(n59) );
  OAI22XL U77 ( .A0(n63), .A1(n61), .B0(n64), .B1(n65), .Y(n58) );
  CLKINVX1 U78 ( .A(n96), .Y(n27) );
  CLKINVX1 U79 ( .A(delta_x[3]), .Y(n17) );
  NOR2X1 U80 ( .A(n128), .B(n127), .Y(n121) );
  NAND2X1 U81 ( .A(n111), .B(n30), .Y(delta_x[0]) );
  NAND2X1 U82 ( .A(n121), .B(n122), .Y(n117) );
  NAND2X1 U83 ( .A(n121), .B(n33), .Y(n62) );
  CLKINVX1 U84 ( .A(n122), .Y(n33) );
  OAI32X1 U85 ( .A0(n76), .A1(n63), .A2(n77), .B0(n21), .B1(n32), .Y(n73) );
  CLKINVX1 U86 ( .A(n81), .Y(n45) );
  XOR2X1 U87 ( .A(n132), .B(n133), .Y(n129) );
  XOR2X1 U88 ( .A(n40), .B(n131), .Y(n130) );
  OAI22XL U89 ( .A0(n128), .A1(n48), .B0(center_y[1]), .B1(n134), .Y(n132) );
  XNOR2X1 U90 ( .A(now[1]), .B(now[0]), .Y(n105) );
  NAND3X1 U91 ( .A(center_r[1]), .B(n46), .C(N169), .Y(n92) );
  XOR2X1 U92 ( .A(n126), .B(n128), .Y(n124) );
  XOR2X1 U93 ( .A(n126), .B(n127), .Y(n125) );
  XOR2X1 U94 ( .A(center_y[1]), .B(n48), .Y(n126) );
  AOI2BB2X1 U95 ( .B0(n136), .B1(n122), .A0N(center_y[3]), .A1N(n137), .Y(n123) );
  OAI2BB1X1 U96 ( .A0N(n40), .A1N(n131), .B0(n138), .Y(n136) );
  XNOR2X1 U97 ( .A(n141), .B(now[5]), .Y(n140) );
  NAND2X1 U98 ( .A(now[4]), .B(now[3]), .Y(n141) );
  AOI31X1 U99 ( .A0(center_r[0]), .A1(n44), .A2(N166), .B0(center_r[2]), .Y(
        n91) );
  AOI21X1 U100 ( .A0(n99), .A1(center_x[2]), .B0(n100), .Y(n104) );
  AOI2BB2X1 U101 ( .B0(center_x[2]), .B1(n99), .A0N(n100), .A1N(n101), .Y(n95)
         );
  NAND4BX1 U102 ( .AN(center_x[2]), .B(n27), .C(n98), .D(n94), .Y(n97) );
  OAI21XL U103 ( .A0(n28), .A1(n105), .B0(n106), .Y(n98) );
  AO21X1 U104 ( .A0(n105), .A1(n28), .B0(center_x[1]), .Y(n106) );
  NOR2X1 U105 ( .A(now[0]), .B(center_x[0]), .Y(n110) );
  NOR2X1 U106 ( .A(now[3]), .B(center_y[0]), .Y(n127) );
  XOR2X1 U107 ( .A(n137), .B(center_y[3]), .Y(n122) );
  AOI21X1 U108 ( .A0(n101), .A1(n104), .B0(n100), .Y(n113) );
  NAND3X1 U109 ( .A(now[1]), .B(now[0]), .C(now[2]), .Y(n112) );
  NAND2X1 U110 ( .A(now[0]), .B(center_x[0]), .Y(n111) );
  OA21XL U111 ( .A0(n110), .A1(n47), .B0(n115), .Y(n101) );
  CLKINVX1 U112 ( .A(n105), .Y(n47) );
  OAI21XL U113 ( .A0(n105), .A1(n30), .B0(center_x[1]), .Y(n115) );
  XOR2X1 U114 ( .A(n114), .B(now[2]), .Y(n99) );
  NAND2X1 U115 ( .A(now[1]), .B(now[0]), .Y(n114) );
  XOR2X1 U116 ( .A(now[4]), .B(now[3]), .Y(n135) );
  NOR2X1 U117 ( .A(n99), .B(center_x[2]), .Y(n100) );
  NAND3X1 U118 ( .A(now[4]), .B(now[3]), .C(now[5]), .Y(n137) );
  AND2X2 U119 ( .A(center_y[0]), .B(now[3]), .Y(n128) );
  XOR2X1 U120 ( .A(n112), .B(center_x[3]), .Y(n96) );
  XOR2X1 U121 ( .A(center_x[1]), .B(n105), .Y(n109) );
  OA21XL U122 ( .A0(n127), .A1(n135), .B0(n139), .Y(n131) );
  OAI2BB1X1 U123 ( .A0N(n135), .A1N(n127), .B0(center_y[1]), .Y(n139) );
  CLKINVX1 U124 ( .A(center_y[2]), .Y(n41) );
  OAI222XL U125 ( .A0(n60), .A1(n64), .B0(center_r[3]), .B1(n70), .C0(n61), 
        .C1(n71), .Y(n55) );
  OAI211X1 U126 ( .A0(n52), .A1(n43), .B0(n53), .C0(n54), .Y(result) );
  AOI222XL U127 ( .A0(n34), .A1(n55), .B0(n45), .B1(n56), .C0(n37), .C1(n57), 
        .Y(n54) );
  AND4X1 U128 ( .A(n89), .B(n90), .C(n91), .D(n92), .Y(n52) );
  OAI31XL U129 ( .A0(n72), .A1(n73), .A2(n74), .B0(center_r[2]), .Y(n53) );
  NAND2X1 U130 ( .A(center_r[1]), .B(center_r[0]), .Y(n81) );
  NAND2X1 U131 ( .A(center_r[1]), .B(n43), .Y(n61) );
  NAND2X1 U132 ( .A(center_r[0]), .B(n43), .Y(n64) );
  CLKINVX1 U133 ( .A(center_r[0]), .Y(n46) );
  CLKINVX1 U134 ( .A(center_r[1]), .Y(n44) );
  CLKINVX1 U135 ( .A(center_r[3]), .Y(n43) );
  NOR2X1 U136 ( .A(N168), .B(n17), .Y(n2) );
  OAI21XL U137 ( .A0(delta_x[3]), .A1(N167), .B0(n18), .Y(n4) );
  NOR2X1 U138 ( .A(n25), .B(n22), .Y(n3) );
  AOI31X1 U139 ( .A0(n4), .A1(delta_x[0]), .A2(n3), .B0(n2), .Y(N169) );
  AOI22X1 U140 ( .A0(N168), .A1(n29), .B0(N164), .B1(delta_x[0]), .Y(n5) );
  AOI2BB2X1 U141 ( .B0(N165), .B1(delta_x[3]), .A0N(delta_x[3]), .A1N(n5), .Y(
        n9) );
  NAND3X1 U142 ( .A(n25), .B(n17), .C(N167), .Y(n6) );
  OAI2BB1X1 U143 ( .A0N(delta_x[3]), .A1N(N165), .B0(n6), .Y(n7) );
  NOR2X1 U144 ( .A(delta_x[0]), .B(n1), .Y(n12) );
  OAI32X1 U145 ( .A0(n7), .A1(n12), .A2(n22), .B0(n17), .B1(N165), .Y(n8) );
  OAI31XL U146 ( .A0(n9), .A1(n25), .A2(n22), .B0(n8), .Y(N166) );
  NOR2X1 U147 ( .A(n1), .B(n29), .Y(n11) );
  AO22X1 U148 ( .A0(N159), .A1(delta_x[0]), .B0(N164), .B1(n29), .Y(n10) );
  AOI222XL U149 ( .A0(N168), .A1(n12), .B0(n11), .B1(N168), .C0(n1), .C1(n10), 
        .Y(n15) );
  AO22X1 U150 ( .A0(N167), .A1(delta_x[0]), .B0(N167), .B1(n29), .Y(n13) );
  AOI221XL U151 ( .A0(n13), .A1(n1), .B0(N167), .B1(n25), .C0(n12), .Y(n14) );
  OAI22XL U152 ( .A0(n15), .A1(n22), .B0(delta_x[2]), .B1(n14), .Y(n16) );
  AO22X1 U153 ( .A0(n34), .A1(delta_x[3]), .B0(n16), .B1(n17), .Y(N161) );
endmodule


module MapCell_2 ( now, center_x, center_y, center_r, result );
  input [5:0] now;
  input [3:0] center_x;
  input [3:0] center_y;
  input [3:0] center_r;
  output result;
  wire   N159, N161, N164, N165, N166, N167, N168, N169, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n129, n130, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223;
  wire   [3:0] delta_x;

  NAND2X1 U3 ( .A(n28), .B(n159), .Y(n157) );
  OAI21XL U4 ( .A0(n129), .A1(n32), .B0(n139), .Y(n144) );
  OAI2BB1XL U5 ( .A0N(n213), .A1N(n28), .B0(n157), .Y(N159) );
  AO22XL U6 ( .A0(N159), .A1(delta_x[0]), .B0(N164), .B1(n43), .Y(n12) );
  AOI22XL U7 ( .A0(N168), .A1(n43), .B0(N164), .B1(delta_x[0]), .Y(n7) );
  OAI211XL U8 ( .A0(n223), .A1(n45), .B0(n222), .C0(n221), .Y(result) );
  CLKINVX1 U9 ( .A(n152), .Y(n29) );
  OAI2BB1XL U10 ( .A0N(n142), .A1N(n148), .B0(center_y[1]), .Y(n130) );
  NAND2XL U11 ( .A(n129), .B(n32), .Y(n139) );
  NOR2XL U12 ( .A(now[3]), .B(center_y[0]), .Y(n148) );
  AND2XL U13 ( .A(center_y[0]), .B(now[3]), .Y(n147) );
  AO22X1 U14 ( .A0(n29), .A1(n1), .B0(n152), .B1(n2), .Y(n198) );
  XNOR2X1 U15 ( .A(n145), .B(n144), .Y(n1) );
  XNOR2X1 U16 ( .A(n31), .B(n146), .Y(n2) );
  OAI22XL U17 ( .A0(n40), .A1(n173), .B0(n181), .B1(n172), .Y(delta_x[2]) );
  OAI31XL U18 ( .A0(n181), .A1(n180), .A2(n179), .B0(n178), .Y(delta_x[3]) );
  OAI22XL U19 ( .A0(n152), .A1(n151), .B0(n150), .B1(n29), .Y(n159) );
  OAI22XL U20 ( .A0(center_x[3]), .A1(n163), .B0(n162), .B1(n41), .Y(n181) );
  NOR2X1 U21 ( .A(n147), .B(n148), .Y(n154) );
  CLKINVX1 U22 ( .A(N159), .Y(n23) );
  CLKINVX1 U23 ( .A(n207), .Y(n36) );
  CLKINVX1 U24 ( .A(n188), .Y(n35) );
  OAI22XL U25 ( .A0(n22), .A1(n205), .B0(n23), .B1(n200), .Y(n187) );
  CLKINVX1 U26 ( .A(n4), .Y(n21) );
  NOR2X1 U27 ( .A(n206), .B(n30), .Y(n212) );
  CLKINVX1 U28 ( .A(n200), .Y(n39) );
  CLKINVX1 U29 ( .A(n205), .Y(n34) );
  CLKINVX1 U30 ( .A(n209), .Y(n25) );
  CLKINVX1 U31 ( .A(n189), .Y(n38) );
  NAND3X1 U32 ( .A(n28), .B(n27), .C(n30), .Y(n209) );
  CLKINVX1 U33 ( .A(delta_x[2]), .Y(n37) );
  NAND2X1 U34 ( .A(n27), .B(n33), .Y(n210) );
  NAND2X1 U35 ( .A(n215), .B(n204), .Y(n207) );
  NAND2X1 U36 ( .A(n36), .B(n199), .Y(n188) );
  OAI222XL U37 ( .A0(n197), .A1(n48), .B0(n196), .B1(n46), .C0(n195), .C1(n194), .Y(n203) );
  AOI221XL U38 ( .A0(N165), .A1(n188), .B0(n38), .B1(n25), .C0(n187), .Y(n197)
         );
  AOI211X1 U39 ( .A0(n39), .A1(N164), .B0(n193), .C0(n192), .Y(n195) );
  AOI221XL U40 ( .A0(n39), .A1(N165), .B0(n34), .B1(N168), .C0(n190), .Y(n196)
         );
  CLKINVX1 U41 ( .A(N164), .Y(n22) );
  OAI222XL U42 ( .A0(n209), .A1(n191), .B0(n35), .B1(n22), .C0(n23), .C1(n189), 
        .Y(n190) );
  OAI222XL U43 ( .A0(n35), .A1(n26), .B0(n19), .B1(n209), .C0(n23), .C1(n191), 
        .Y(n193) );
  CLKINVX1 U44 ( .A(N168), .Y(n26) );
  AO22X1 U45 ( .A0(N165), .A1(n38), .B0(N167), .B1(n34), .Y(n192) );
  NAND3X1 U46 ( .A(n43), .B(n19), .C(delta_x[2]), .Y(n200) );
  OAI21XL U47 ( .A0(n27), .A1(n33), .B0(n210), .Y(n206) );
  NAND4X1 U48 ( .A(n43), .B(n19), .C(n37), .D(n20), .Y(n205) );
  NAND2X1 U49 ( .A(delta_x[2]), .B(n19), .Y(n189) );
  OAI2BB2XL U50 ( .B0(n209), .B1(n200), .A0N(N165), .A1N(n34), .Y(n201) );
  OAI21XL U51 ( .A0(n35), .A1(n209), .B0(n208), .Y(n219) );
  AOI33X1 U52 ( .A0(n207), .A1(n206), .A2(n28), .B0(n28), .B1(n33), .B2(n34), 
        .Y(n208) );
  NAND2X1 U53 ( .A(n156), .B(n27), .Y(N167) );
  OAI31XL U54 ( .A0(n182), .A1(N167), .A2(n20), .B0(n47), .Y(n186) );
  NAND3X1 U55 ( .A(n19), .B(n37), .C(n43), .Y(n182) );
  CLKINVX1 U56 ( .A(n158), .Y(n30) );
  OAI2BB1X1 U57 ( .A0N(n34), .A1N(n217), .B0(n216), .Y(n218) );
  NAND4BBXL U58 ( .AN(n215), .BN(n214), .C(n27), .D(n213), .Y(n216) );
  OAI22XL U59 ( .A0(n212), .A1(n214), .B0(n211), .B1(n210), .Y(n217) );
  CLKINVX1 U60 ( .A(n194), .Y(n47) );
  XNOR2X1 U61 ( .A(n171), .B(n177), .Y(n173) );
  XOR2X1 U62 ( .A(n174), .B(n171), .Y(n172) );
  NAND3X1 U63 ( .A(n48), .B(n46), .C(N161), .Y(n185) );
  AOI31X1 U64 ( .A0(center_r[0]), .A1(n46), .A2(N166), .B0(center_r[2]), .Y(
        n184) );
  OAI21XL U65 ( .A0(n156), .A1(n159), .B0(n157), .Y(N164) );
  NAND4X1 U66 ( .A(n155), .B(n210), .C(n158), .D(n157), .Y(N168) );
  NAND2X1 U67 ( .A(n154), .B(n198), .Y(n155) );
  NOR2X1 U68 ( .A(n213), .B(n198), .Y(n156) );
  CLKINVX1 U69 ( .A(n159), .Y(n27) );
  NAND3X1 U70 ( .A(n19), .B(n37), .C(delta_x[0]), .Y(n215) );
  CLKINVX1 U71 ( .A(n198), .Y(n28) );
  NAND3X1 U72 ( .A(n43), .B(n37), .C(n3), .Y(n204) );
  CLKINVX1 U73 ( .A(n181), .Y(n40) );
  OAI31XL U74 ( .A0(n159), .A1(n28), .A2(n33), .B0(n23), .Y(N165) );
  NAND2X1 U75 ( .A(n3), .B(n37), .Y(n199) );
  CLKINVX1 U76 ( .A(n144), .Y(n31) );
  AOI222XL U77 ( .A0(n25), .A1(n220), .B0(n47), .B1(n219), .C0(n28), .C1(n218), 
        .Y(n221) );
  AND4X1 U78 ( .A(n186), .B(n185), .C(n184), .D(n183), .Y(n223) );
  OAI31XL U79 ( .A0(n203), .A1(n202), .A2(n201), .B0(center_r[2]), .Y(n222) );
  CLKINVX1 U80 ( .A(n179), .Y(n41) );
  NAND3X1 U81 ( .A(center_r[1]), .B(n48), .C(N169), .Y(n183) );
  NAND2X1 U82 ( .A(n154), .B(n153), .Y(n158) );
  CLKINVX1 U83 ( .A(delta_x[0]), .Y(n43) );
  NAND2X1 U84 ( .A(n154), .B(n24), .Y(n213) );
  CLKINVX1 U85 ( .A(n153), .Y(n24) );
  CLKINVX1 U86 ( .A(n154), .Y(n33) );
  OAI222XL U87 ( .A0(n215), .A1(n211), .B0(center_r[3]), .B1(n205), .C0(n214), 
        .C1(n204), .Y(n220) );
  OAI32X1 U88 ( .A0(n199), .A1(n212), .A2(n198), .B0(n36), .B1(n23), .Y(n202)
         );
  NAND2X1 U89 ( .A(n3), .B(n43), .Y(n191) );
  CLKINVX1 U90 ( .A(delta_x[3]), .Y(n20) );
  CLKINVX1 U91 ( .A(n3), .Y(n19) );
  NAND2X1 U92 ( .A(center_r[1]), .B(center_r[0]), .Y(n194) );
  NAND2X1 U93 ( .A(center_r[1]), .B(n45), .Y(n214) );
  NAND2X1 U94 ( .A(center_r[0]), .B(n45), .Y(n211) );
  CLKINVX1 U95 ( .A(center_r[0]), .Y(n48) );
  CLKINVX1 U96 ( .A(center_r[1]), .Y(n46) );
  CLKINVX1 U97 ( .A(center_r[3]), .Y(n45) );
  OAI22XL U98 ( .A0(n147), .A1(n50), .B0(center_y[1]), .B1(n143), .Y(n145) );
  AOI21X1 U99 ( .A0(n174), .A1(n171), .B0(n175), .Y(n162) );
  XOR2X1 U100 ( .A(n149), .B(n147), .Y(n151) );
  XOR2X1 U101 ( .A(n149), .B(n148), .Y(n150) );
  XOR2X1 U102 ( .A(center_y[1]), .B(n50), .Y(n149) );
  AOI2BB2X1 U103 ( .B0(n141), .B1(n153), .A0N(center_y[3]), .A1N(n140), .Y(
        n152) );
  OAI2BB1X1 U104 ( .A0N(n31), .A1N(n146), .B0(n139), .Y(n141) );
  AOI21X1 U105 ( .A0(n176), .A1(center_x[2]), .B0(n175), .Y(n171) );
  XOR2X1 U106 ( .A(n140), .B(center_y[3]), .Y(n153) );
  NOR2X1 U107 ( .A(n176), .B(center_x[2]), .Y(n175) );
  OA21XL U108 ( .A0(n165), .A1(n49), .B0(n160), .Y(n174) );
  CLKINVX1 U109 ( .A(n170), .Y(n49) );
  OAI21XL U110 ( .A0(n170), .A1(n44), .B0(center_x[1]), .Y(n160) );
  NOR2BX1 U111 ( .AN(n147), .B(n142), .Y(n143) );
  XOR2X1 U112 ( .A(n163), .B(center_x[3]), .Y(n179) );
  OA21XL U113 ( .A0(n148), .A1(n142), .B0(n130), .Y(n146) );
  CLKINVX1 U114 ( .A(center_y[2]), .Y(n32) );
  CLKBUFX3 U115 ( .A(delta_x[1]), .Y(n3) );
  OAI22XL U116 ( .A0(n40), .A1(n168), .B0(n167), .B1(n181), .Y(delta_x[1]) );
  XOR2X1 U117 ( .A(n166), .B(n42), .Y(n168) );
  XOR2X1 U118 ( .A(n166), .B(n165), .Y(n167) );
  OAI21XL U119 ( .A0(n42), .A1(n170), .B0(n169), .Y(n177) );
  AO21X1 U120 ( .A0(n170), .A1(n42), .B0(center_x[1]), .Y(n169) );
  CLKINVX1 U121 ( .A(n165), .Y(n44) );
  CLKINVX1 U122 ( .A(n164), .Y(n42) );
  AOI2BB2X1 U123 ( .B0(center_x[2]), .B1(n176), .A0N(n175), .A1N(n174), .Y(
        n180) );
  NAND4BX1 U124 ( .AN(center_x[2]), .B(n41), .C(n177), .D(n181), .Y(n178) );
  NAND2X1 U125 ( .A(n164), .B(n44), .Y(delta_x[0]) );
  XOR2X1 U126 ( .A(center_x[1]), .B(n170), .Y(n166) );
  CLKINVX1 U127 ( .A(n142), .Y(n50) );
  NOR2X1 U128 ( .A(now[0]), .B(center_x[0]), .Y(n165) );
  NAND2X1 U129 ( .A(now[0]), .B(center_x[0]), .Y(n164) );
  XNOR2X1 U130 ( .A(now[1]), .B(now[0]), .Y(n170) );
  XNOR2X1 U131 ( .A(n51), .B(now[5]), .Y(n129) );
  NAND2X1 U132 ( .A(now[4]), .B(now[3]), .Y(n51) );
  NAND3X1 U133 ( .A(now[1]), .B(now[0]), .C(now[2]), .Y(n163) );
  XOR2X1 U134 ( .A(n161), .B(now[2]), .Y(n176) );
  NAND2X1 U135 ( .A(now[1]), .B(now[0]), .Y(n161) );
  XOR2X1 U136 ( .A(now[4]), .B(now[3]), .Y(n142) );
  NAND3X1 U137 ( .A(now[4]), .B(now[3]), .C(now[5]), .Y(n140) );
  NOR2X1 U138 ( .A(N168), .B(n20), .Y(n4) );
  OAI21XL U139 ( .A0(delta_x[3]), .A1(N167), .B0(n21), .Y(n6) );
  NOR2X1 U140 ( .A(n19), .B(n37), .Y(n5) );
  AOI31X1 U141 ( .A0(n6), .A1(delta_x[0]), .A2(n5), .B0(n4), .Y(N169) );
  AOI2BB2X1 U142 ( .B0(N165), .B1(delta_x[3]), .A0N(delta_x[3]), .A1N(n7), .Y(
        n11) );
  NAND3X1 U143 ( .A(n19), .B(n20), .C(N167), .Y(n8) );
  OAI2BB1X1 U144 ( .A0N(delta_x[3]), .A1N(N165), .B0(n8), .Y(n9) );
  NOR2X1 U145 ( .A(delta_x[0]), .B(n3), .Y(n14) );
  OAI32X1 U146 ( .A0(n9), .A1(n14), .A2(n37), .B0(n20), .B1(N165), .Y(n10) );
  OAI31XL U147 ( .A0(n11), .A1(n19), .A2(n37), .B0(n10), .Y(N166) );
  NOR2X1 U148 ( .A(n3), .B(n43), .Y(n13) );
  AOI222XL U149 ( .A0(N168), .A1(n14), .B0(n13), .B1(N168), .C0(n3), .C1(n12), 
        .Y(n17) );
  AO22X1 U150 ( .A0(N167), .A1(delta_x[0]), .B0(N167), .B1(n43), .Y(n15) );
  AOI221XL U151 ( .A0(n15), .A1(n3), .B0(N167), .B1(n19), .C0(n14), .Y(n16) );
  OAI22XL U152 ( .A0(n17), .A1(n37), .B0(delta_x[2]), .B1(n16), .Y(n18) );
  AO22X1 U153 ( .A0(n25), .A1(delta_x[3]), .B0(n18), .B1(n20), .Y(N161) );
endmodule


module MapCell_1 ( now, center_x, center_y, center_r, result );
  input [5:0] now;
  input [3:0] center_x;
  input [3:0] center_y;
  input [3:0] center_r;
  output result;
  wire   N159, N161, N164, N165, N166, N167, N168, N169, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225;
  wire   [3:0] delta_x;

  NAND3XL U3 ( .A(n29), .B(n19), .C(n31), .Y(n184) );
  INVXL U4 ( .A(delta_x[2]), .Y(n19) );
  NAND4XL U5 ( .A(n31), .B(n29), .C(n19), .D(n17), .Y(n207) );
  NAND3XL U6 ( .A(n31), .B(n29), .C(delta_x[2]), .Y(n202) );
  NAND2XL U7 ( .A(delta_x[2]), .B(n29), .Y(n191) );
  NAND3XL U8 ( .A(n31), .B(n19), .C(n1), .Y(n206) );
  NAND2XL U9 ( .A(n1), .B(n19), .Y(n201) );
  AOI222XL U10 ( .A0(N168), .A1(n12), .B0(n11), .B1(N168), .C0(n1), .C1(n10), 
        .Y(n15) );
  NAND4BXL U11 ( .AN(center_x[2]), .B(n34), .C(n179), .D(n183), .Y(n180) );
  INVX1 U12 ( .A(n167), .Y(n33) );
  NAND2XL U13 ( .A(n166), .B(n33), .Y(delta_x[0]) );
  NAND2XL U14 ( .A(now[0]), .B(center_x[0]), .Y(n166) );
  AOI33XL U15 ( .A0(n209), .A1(n208), .A2(n41), .B0(n41), .B1(n36), .B2(n24), 
        .Y(n210) );
  NAND3XL U16 ( .A(n41), .B(n42), .C(n40), .Y(n211) );
  OAI21XL U17 ( .A0(n158), .A1(n161), .B0(n159), .Y(N164) );
  OAI22XL U18 ( .A0(n32), .A1(n175), .B0(n183), .B1(n174), .Y(delta_x[2]) );
  AOI22XL U19 ( .A0(N168), .A1(n31), .B0(N164), .B1(delta_x[0]), .Y(n5) );
  CLKINVX1 U20 ( .A(n1), .Y(n29) );
  CLKINVX1 U21 ( .A(delta_x[0]), .Y(n31) );
  OAI22XL U22 ( .A0(center_x[3]), .A1(n165), .B0(n164), .B1(n34), .Y(n183) );
  AOI21XL U23 ( .A0(n176), .A1(n173), .B0(n177), .Y(n164) );
  OAI31XL U24 ( .A0(n183), .A1(n182), .A2(n181), .B0(n180), .Y(delta_x[3]) );
  OAI22XL U25 ( .A0(n154), .A1(n153), .B0(n152), .B1(n43), .Y(n161) );
  XOR2XL U26 ( .A(n151), .B(n150), .Y(n152) );
  OAI22XL U27 ( .A0(n154), .A1(n148), .B0(n43), .B1(n147), .Y(n200) );
  XOR2XL U28 ( .A(n145), .B(n144), .Y(n148) );
  XOR2XL U29 ( .A(n44), .B(n146), .Y(n147) );
  OAI21XL U30 ( .A0(n50), .A1(n45), .B0(n139), .Y(n144) );
  OAI211XL U31 ( .A0(n225), .A1(n23), .B0(n224), .C0(n223), .Y(result) );
  NOR2XL U32 ( .A(n149), .B(n150), .Y(n156) );
  OAI22XL U33 ( .A0(n37), .A1(n207), .B0(n38), .B1(n202), .Y(n189) );
  CLKINVX1 U34 ( .A(n2), .Y(n18) );
  CLKINVX1 U35 ( .A(n207), .Y(n24) );
  CLKINVX1 U36 ( .A(N159), .Y(n38) );
  CLKINVX1 U37 ( .A(n211), .Y(n39) );
  CLKINVX1 U38 ( .A(n191), .Y(n27) );
  CLKINVX1 U39 ( .A(n209), .Y(n26) );
  CLKINVX1 U40 ( .A(n190), .Y(n25) );
  NOR2X1 U41 ( .A(n208), .B(n40), .Y(n214) );
  CLKINVX1 U42 ( .A(n202), .Y(n28) );
  OAI2BB1X1 U43 ( .A0N(n215), .A1N(n41), .B0(n159), .Y(N159) );
  NAND2X1 U44 ( .A(n42), .B(n36), .Y(n212) );
  OAI21XL U45 ( .A0(n25), .A1(n211), .B0(n210), .Y(n221) );
  NAND2X1 U46 ( .A(n217), .B(n206), .Y(n209) );
  NAND2X1 U47 ( .A(n26), .B(n201), .Y(n190) );
  NAND2X1 U48 ( .A(n158), .B(n42), .Y(N167) );
  CLKINVX1 U49 ( .A(N164), .Y(n37) );
  OAI222XL U50 ( .A0(n211), .A1(n193), .B0(n25), .B1(n37), .C0(n38), .C1(n191), 
        .Y(n192) );
  OAI222XL U51 ( .A0(n25), .A1(n35), .B0(n29), .B1(n211), .C0(n38), .C1(n193), 
        .Y(n195) );
  CLKINVX1 U52 ( .A(N168), .Y(n35) );
  AO22X1 U53 ( .A0(N165), .A1(n27), .B0(N167), .B1(n24), .Y(n194) );
  OAI21XL U54 ( .A0(n42), .A1(n36), .B0(n212), .Y(n208) );
  OAI2BB2XL U55 ( .B0(n211), .B1(n202), .A0N(N165), .A1N(n24), .Y(n203) );
  OAI31XL U56 ( .A0(n184), .A1(N167), .A2(n17), .B0(n21), .Y(n188) );
  CLKINVX1 U57 ( .A(n160), .Y(n40) );
  XNOR2X1 U58 ( .A(n173), .B(n179), .Y(n175) );
  XOR2X1 U59 ( .A(n176), .B(n173), .Y(n174) );
  NAND3X1 U60 ( .A(n20), .B(n22), .C(N161), .Y(n187) );
  NAND4X1 U61 ( .A(n157), .B(n212), .C(n160), .D(n159), .Y(N168) );
  NAND2X1 U62 ( .A(n156), .B(n200), .Y(n157) );
  NOR2X1 U63 ( .A(n215), .B(n200), .Y(n158) );
  CLKINVX1 U64 ( .A(n161), .Y(n42) );
  NAND2X1 U65 ( .A(n41), .B(n161), .Y(n159) );
  NAND3X1 U66 ( .A(n29), .B(n19), .C(delta_x[0]), .Y(n217) );
  CLKINVX1 U67 ( .A(n200), .Y(n41) );
  CLKINVX1 U68 ( .A(n183), .Y(n32) );
  OAI31XL U69 ( .A0(n161), .A1(n41), .A2(n36), .B0(n38), .Y(N165) );
  CLKINVX1 U70 ( .A(n154), .Y(n43) );
  CLKINVX1 U71 ( .A(n144), .Y(n44) );
  OAI222XL U72 ( .A0(n199), .A1(n20), .B0(n198), .B1(n22), .C0(n197), .C1(n196), .Y(n205) );
  AOI221XL U73 ( .A0(N165), .A1(n190), .B0(n27), .B1(n39), .C0(n189), .Y(n199)
         );
  AOI211X1 U74 ( .A0(n28), .A1(N164), .B0(n195), .C0(n194), .Y(n197) );
  AOI221XL U75 ( .A0(n28), .A1(N165), .B0(n24), .B1(N168), .C0(n192), .Y(n198)
         );
  NAND2X1 U76 ( .A(n1), .B(n31), .Y(n193) );
  CLKINVX1 U77 ( .A(n181), .Y(n34) );
  NAND2X1 U78 ( .A(n156), .B(n155), .Y(n160) );
  NAND2X1 U79 ( .A(n156), .B(n46), .Y(n215) );
  CLKINVX1 U80 ( .A(n155), .Y(n46) );
  CLKINVX1 U81 ( .A(n156), .Y(n36) );
  OAI2BB1X1 U82 ( .A0N(n24), .A1N(n219), .B0(n218), .Y(n220) );
  NAND4BBXL U83 ( .AN(n217), .BN(n216), .C(n42), .D(n215), .Y(n218) );
  OAI22XL U84 ( .A0(n214), .A1(n216), .B0(n213), .B1(n212), .Y(n219) );
  OAI32X1 U85 ( .A0(n201), .A1(n214), .A2(n200), .B0(n26), .B1(n38), .Y(n204)
         );
  CLKINVX1 U86 ( .A(delta_x[3]), .Y(n17) );
  CLKINVX1 U87 ( .A(n196), .Y(n21) );
  OAI22XL U88 ( .A0(n149), .A1(n48), .B0(center_y[1]), .B1(n143), .Y(n145) );
  NAND3X1 U89 ( .A(center_r[1]), .B(n20), .C(N169), .Y(n185) );
  XOR2X1 U90 ( .A(n151), .B(n149), .Y(n153) );
  XOR2X1 U91 ( .A(center_y[1]), .B(n48), .Y(n151) );
  AOI2BB2X1 U92 ( .B0(n141), .B1(n155), .A0N(center_y[3]), .A1N(n140), .Y(n154) );
  OAI2BB1X1 U93 ( .A0N(n44), .A1N(n146), .B0(n139), .Y(n141) );
  AOI31X1 U94 ( .A0(center_r[0]), .A1(n22), .A2(N166), .B0(center_r[2]), .Y(
        n186) );
  AOI21X1 U95 ( .A0(n178), .A1(center_x[2]), .B0(n177), .Y(n173) );
  AOI2BB2X1 U96 ( .B0(center_x[2]), .B1(n178), .A0N(n177), .A1N(n176), .Y(n182) );
  OAI21XL U97 ( .A0(n30), .A1(n172), .B0(n171), .Y(n179) );
  AO21X1 U98 ( .A0(n172), .A1(n30), .B0(center_x[1]), .Y(n171) );
  XOR2X1 U99 ( .A(n140), .B(center_y[3]), .Y(n155) );
  OA21XL U100 ( .A0(n167), .A1(n47), .B0(n162), .Y(n176) );
  CLKINVX1 U101 ( .A(n172), .Y(n47) );
  OAI21XL U102 ( .A0(n172), .A1(n33), .B0(center_x[1]), .Y(n162) );
  NOR2X1 U103 ( .A(n178), .B(center_x[2]), .Y(n177) );
  NOR2BX1 U104 ( .AN(n149), .B(n142), .Y(n143) );
  NAND2X1 U105 ( .A(n50), .B(n45), .Y(n139) );
  XOR2X1 U106 ( .A(n165), .B(center_x[3]), .Y(n181) );
  XOR2X1 U107 ( .A(center_x[1]), .B(n172), .Y(n168) );
  OA21XL U108 ( .A0(n150), .A1(n142), .B0(n51), .Y(n146) );
  OAI2BB1X1 U109 ( .A0N(n142), .A1N(n150), .B0(center_y[1]), .Y(n51) );
  CLKBUFX3 U110 ( .A(delta_x[1]), .Y(n1) );
  OAI22XL U111 ( .A0(n32), .A1(n170), .B0(n169), .B1(n183), .Y(delta_x[1]) );
  XOR2X1 U112 ( .A(n168), .B(n30), .Y(n170) );
  XOR2X1 U113 ( .A(n168), .B(n167), .Y(n169) );
  CLKINVX1 U114 ( .A(n166), .Y(n30) );
  AOI222XL U115 ( .A0(n39), .A1(n222), .B0(n21), .B1(n221), .C0(n41), .C1(n220), .Y(n223) );
  AND4X1 U116 ( .A(n188), .B(n187), .C(n186), .D(n185), .Y(n225) );
  OAI31XL U117 ( .A0(n205), .A1(n204), .A2(n203), .B0(center_r[2]), .Y(n224)
         );
  OAI222XL U118 ( .A0(n217), .A1(n213), .B0(center_r[3]), .B1(n207), .C0(n216), 
        .C1(n206), .Y(n222) );
  CLKINVX1 U119 ( .A(n142), .Y(n48) );
  NAND2X1 U120 ( .A(center_r[1]), .B(center_r[0]), .Y(n196) );
  NAND2X1 U121 ( .A(center_r[1]), .B(n23), .Y(n216) );
  NAND2X1 U122 ( .A(center_r[0]), .B(n23), .Y(n213) );
  CLKINVX1 U123 ( .A(center_r[0]), .Y(n20) );
  CLKINVX1 U124 ( .A(center_r[1]), .Y(n22) );
  CLKINVX1 U125 ( .A(center_r[3]), .Y(n23) );
  NOR2X1 U126 ( .A(now[0]), .B(center_x[0]), .Y(n167) );
  NOR2X1 U127 ( .A(now[3]), .B(center_y[0]), .Y(n150) );
  AND2X2 U128 ( .A(center_y[0]), .B(now[3]), .Y(n149) );
  CLKINVX1 U129 ( .A(center_y[2]), .Y(n45) );
  XNOR2X1 U130 ( .A(now[1]), .B(now[0]), .Y(n172) );
  XNOR2X1 U131 ( .A(n49), .B(now[5]), .Y(n50) );
  NAND2X1 U132 ( .A(now[4]), .B(now[3]), .Y(n49) );
  NAND3X1 U133 ( .A(now[1]), .B(now[0]), .C(now[2]), .Y(n165) );
  XOR2X1 U134 ( .A(n163), .B(now[2]), .Y(n178) );
  NAND2X1 U135 ( .A(now[1]), .B(now[0]), .Y(n163) );
  XOR2X1 U136 ( .A(now[4]), .B(now[3]), .Y(n142) );
  NAND3X1 U137 ( .A(now[4]), .B(now[3]), .C(now[5]), .Y(n140) );
  NOR2X1 U138 ( .A(N168), .B(n17), .Y(n2) );
  OAI21XL U139 ( .A0(delta_x[3]), .A1(N167), .B0(n18), .Y(n4) );
  NOR2X1 U140 ( .A(n29), .B(n19), .Y(n3) );
  AOI31X1 U141 ( .A0(n4), .A1(delta_x[0]), .A2(n3), .B0(n2), .Y(N169) );
  AOI2BB2X1 U142 ( .B0(N165), .B1(delta_x[3]), .A0N(delta_x[3]), .A1N(n5), .Y(
        n9) );
  NAND3X1 U143 ( .A(n29), .B(n17), .C(N167), .Y(n6) );
  OAI2BB1X1 U144 ( .A0N(delta_x[3]), .A1N(N165), .B0(n6), .Y(n7) );
  NOR2X1 U145 ( .A(delta_x[0]), .B(n1), .Y(n12) );
  OAI32X1 U146 ( .A0(n7), .A1(n12), .A2(n19), .B0(n17), .B1(N165), .Y(n8) );
  OAI31XL U147 ( .A0(n9), .A1(n29), .A2(n19), .B0(n8), .Y(N166) );
  NOR2X1 U148 ( .A(n1), .B(n31), .Y(n11) );
  AO22X1 U149 ( .A0(N159), .A1(delta_x[0]), .B0(N164), .B1(n31), .Y(n10) );
  AO22X1 U150 ( .A0(N167), .A1(delta_x[0]), .B0(N167), .B1(n31), .Y(n13) );
  AOI221XL U151 ( .A0(n13), .A1(n1), .B0(N167), .B1(n29), .C0(n12), .Y(n14) );
  OAI22XL U152 ( .A0(n15), .A1(n19), .B0(delta_x[2]), .B1(n14), .Y(n16) );
  AO22X1 U153 ( .A0(n39), .A1(delta_x[3]), .B0(n16), .B1(n17), .Y(N161) );
endmodule


module Control ( clk, rst, en, next_candidate, candidate, busy, valid, tmp_0, 
        tmp_1, tmp_2, next_0, next_1, next_2, now_0, now_1, now_2, reg_mode, 
        count );
  output [7:0] next_candidate;
  input [7:0] candidate;
  output [5:0] next_0;
  output [5:0] next_1;
  output [5:0] next_2;
  input [5:0] now_0;
  input [5:0] now_1;
  input [5:0] now_2;
  input [1:0] reg_mode;
  input clk, rst, en, tmp_0, tmp_1, tmp_2;
  output busy, valid, count;
  wire   tmp_3, N35, N36, N37, N39, N41, N59, N60, N61, N62, N63, N64, N65,
         N66, N83, N84, N85, N86, N87, N88, N89, N90, N99, N100, N101, N102,
         N103, N104, N105, N106, N107, N108, N109, N110, N111, N112, N113,
         N114, N115, N116, N121, N122, N123, N124, N125, N127, N128, N129,
         N130, N131, N142, N143, N144, N145, N146, N147, N148, N149, N150,
         N152, N153, N154, N155, N156, N157, N158, N159, N160, N161, N162,
         N163, N164, N201, N202, N203, N204, N205, N206, N207, N208, N209,
         N216, N217, N218, N219, N220, N221, N222, N223, N238, N239, N240,
         N241, N242, N243, N244, N245, N246, N265, N266, N267, N268, N269,
         N270, N271, N272, N273, N274, N275, N276, N277, N278, N279, N280,
         N281, N282, N283, N284, n37, n44, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, N68, N67, \add_93/carry[7] , \add_93/carry[6] ,
         \add_93/carry[5] , \add_93/carry[4] , \add_93/carry[3] ,
         \add_93/carry[2] , \add_93/carry[1] , \add_88/carry[7] ,
         \add_88/carry[6] , \add_88/carry[5] , \add_88/carry[4] ,
         \add_88/carry[3] , \add_88/carry[2] , \add_88/carry[1] ,
         \add_1_root_add_84_2/carry[7] , \add_1_root_add_84_2/carry[6] ,
         \add_1_root_add_84_2/carry[5] , \add_1_root_add_84_2/carry[4] ,
         \add_1_root_add_84_2/carry[3] , \add_1_root_add_84_2/carry[2] ,
         \add_1_root_add_84_2/carry[1] , \add_73/carry[7] , \add_73/carry[6] ,
         \add_73/carry[5] , \add_73/carry[4] , \add_73/carry[3] ,
         \add_73/carry[2] , \add_73/carry[1] , \add_73/B[0] ,
         \add_1_root_add_69_2/carry[7] , \add_1_root_add_69_2/carry[6] ,
         \add_1_root_add_69_2/carry[5] , \add_1_root_add_69_2/carry[4] ,
         \add_1_root_add_69_2/carry[3] , \add_1_root_add_69_2/carry[2] ,
         \add_1_root_add_69_2/carry[1] , \add_59/carry[2] , \add_59/carry[3] ,
         \add_59/carry[4] , \add_59/carry[5] , \add_58/carry[2] ,
         \add_58/carry[3] , \add_58/carry[4] , \add_58/carry[5] ,
         \add_57/carry[2] , \add_57/carry[3] , \add_57/carry[4] ,
         \add_57/carry[5] , \add_56/carry[7] , \add_56/carry[6] ,
         \add_56/carry[5] , \add_56/carry[4] , \add_56/carry[3] ,
         \add_56/carry[2] , \add_56/carry[1] , \r467/carry[5] ,
         \r467/carry[4] , \r467/carry[3] , \r467/carry[2] , \r465/carry[5] ,
         \r465/carry[4] , \r465/carry[3] , \r465/carry[2] , \r464/carry[5] ,
         \r464/carry[4] , \r464/carry[3] , \r464/carry[2] ,
         \add_0_root_add_1_root_add_56_4/carry[7] ,
         \add_0_root_add_1_root_add_56_4/carry[6] ,
         \add_0_root_add_1_root_add_56_4/carry[5] ,
         \add_0_root_add_1_root_add_56_4/carry[4] ,
         \add_0_root_add_1_root_add_56_4/carry[3] ,
         \add_0_root_add_1_root_add_56_4/carry[2] ,
         \add_0_root_add_1_root_add_56_4/carry[1] , n1, n8, n9, n10, n11;
  assign next_candidate[0] = N265;
  assign next_candidate[1] = N266;
  assign next_candidate[2] = N267;
  assign next_candidate[3] = N268;
  assign next_candidate[4] = N269;
  assign next_candidate[5] = N270;
  assign next_candidate[6] = N271;
  assign next_candidate[7] = N272;
  assign next_0[0] = N273;
  assign next_0[1] = N274;
  assign next_0[2] = N275;
  assign next_0[3] = N276;
  assign next_0[4] = N277;
  assign next_0[5] = N278;
  assign next_1[0] = N279;
  assign next_1[1] = N280;
  assign next_1[2] = N281;
  assign next_1[3] = N282;
  assign next_1[4] = N283;
  assign next_1[5] = N284;

  DFFRX1 \state_reg[1]  ( .D(N37), .CK(clk), .RN(n8), .Q(valid) );
  DFFRX1 \state_reg[0]  ( .D(N36), .CK(clk), .RN(n8), .QN(n37) );
  EDFFX1 tmp_3_reg ( .D(tmp_2), .E(N39), .CK(clk), .Q(tmp_3) );
  EDFFX1 count_reg ( .D(N35), .E(n8), .CK(clk), .Q(count), .QN(n44) );
  NOR2BXL U3 ( .AN(reg_mode[0]), .B(reg_mode[1]), .Y(n70) );
  NOR2BXL U4 ( .AN(reg_mode[1]), .B(reg_mode[0]), .Y(n71) );
  NAND2XL U5 ( .A(reg_mode[1]), .B(reg_mode[0]), .Y(n60) );
  CLKINVX1 U6 ( .A(en), .Y(n1) );
  NAND3X1 U7 ( .A(n72), .B(n73), .C(n74), .Y(N272) );
  AOI22X1 U8 ( .A0(N223), .A1(n79), .B0(N164), .B1(n80), .Y(n72) );
  AOI22X1 U9 ( .A0(N90), .A1(n77), .B0(N66), .B1(n78), .Y(n73) );
  NAND3X1 U10 ( .A(n81), .B(n82), .C(n83), .Y(N271) );
  AOI22X1 U11 ( .A0(N222), .A1(n79), .B0(N163), .B1(n80), .Y(n81) );
  AOI22X1 U12 ( .A0(N89), .A1(n77), .B0(N65), .B1(n78), .Y(n82) );
  NAND3X1 U13 ( .A(n84), .B(n85), .C(n86), .Y(N270) );
  AOI22X1 U14 ( .A0(N221), .A1(n79), .B0(N162), .B1(n80), .Y(n84) );
  AOI22X1 U15 ( .A0(N88), .A1(n77), .B0(N64), .B1(n78), .Y(n85) );
  NAND3X1 U16 ( .A(n87), .B(n88), .C(n89), .Y(N269) );
  AOI22X1 U17 ( .A0(N220), .A1(n79), .B0(N161), .B1(n80), .Y(n87) );
  AOI22X1 U18 ( .A0(N87), .A1(n77), .B0(N63), .B1(n78), .Y(n88) );
  NAND3X1 U19 ( .A(n90), .B(n91), .C(n92), .Y(N268) );
  AOI22X1 U20 ( .A0(N219), .A1(n79), .B0(N160), .B1(n80), .Y(n90) );
  AOI22X1 U21 ( .A0(N86), .A1(n77), .B0(N62), .B1(n78), .Y(n91) );
  NAND3X1 U22 ( .A(n93), .B(n94), .C(n95), .Y(N267) );
  AOI22X1 U23 ( .A0(N218), .A1(n79), .B0(N159), .B1(n80), .Y(n93) );
  AOI22X1 U24 ( .A0(N85), .A1(n77), .B0(N61), .B1(n78), .Y(n94) );
  NAND3X1 U25 ( .A(n96), .B(n97), .C(n98), .Y(N266) );
  AOI22X1 U26 ( .A0(N217), .A1(n79), .B0(N158), .B1(n80), .Y(n96) );
  AOI22X1 U27 ( .A0(N84), .A1(n77), .B0(N60), .B1(n78), .Y(n97) );
  CLKINVX1 U28 ( .A(n51), .Y(\add_73/B[0] ) );
  NAND3X1 U29 ( .A(n99), .B(n100), .C(n101), .Y(N265) );
  AOI22X1 U30 ( .A0(N216), .A1(n79), .B0(N157), .B1(n80), .Y(n99) );
  AOI22X1 U31 ( .A0(N83), .A1(n77), .B0(N59), .B1(n78), .Y(n100) );
  NOR2X1 U32 ( .A(n70), .B(n71), .Y(n55) );
  AND2X2 U33 ( .A(n59), .B(n57), .Y(n77) );
  AND2X2 U34 ( .A(n59), .B(n11), .Y(n78) );
  NAND2X1 U35 ( .A(n55), .B(n60), .Y(n69) );
  NAND2BX1 U36 ( .AN(n59), .B(n60), .Y(n53) );
  CLKINVX1 U37 ( .A(n57), .Y(n11) );
  CLKINVX1 U38 ( .A(n60), .Y(n10) );
  OAI2BB2XL U39 ( .B0(tmp_2), .B1(n51), .A0N(N41), .A1N(tmp_2), .Y(N238) );
  ADDFXL U40 ( .A(candidate[0]), .B(N201), .CI(N41), .CO(
        \add_1_root_add_84_2/carry[1] ), .S(N202) );
  XOR2X1 U41 ( .A(tmp_3), .B(tmp_2), .Y(N201) );
  AOI222XL U42 ( .A0(N246), .A1(n10), .B0(N209), .B1(n75), .C0(N150), .C1(n76), 
        .Y(n74) );
  AOI222XL U43 ( .A0(N245), .A1(n10), .B0(N208), .B1(n75), .C0(N149), .C1(n76), 
        .Y(n83) );
  XOR2X1 U44 ( .A(tmp_0), .B(tmp_1), .Y(N41) );
  AOI222XL U45 ( .A0(N242), .A1(n10), .B0(N205), .B1(n75), .C0(N146), .C1(n76), 
        .Y(n92) );
  AOI222XL U46 ( .A0(N240), .A1(n10), .B0(N203), .B1(n75), .C0(N144), .C1(n76), 
        .Y(n98) );
  NAND2X1 U47 ( .A(tmp_0), .B(tmp_1), .Y(n51) );
  AOI222XL U48 ( .A0(N244), .A1(n10), .B0(N207), .B1(n75), .C0(N148), .C1(n76), 
        .Y(n86) );
  AOI222XL U49 ( .A0(N243), .A1(n10), .B0(N206), .B1(n75), .C0(N147), .C1(n76), 
        .Y(n89) );
  AOI222XL U50 ( .A0(N241), .A1(n10), .B0(N204), .B1(n75), .C0(N145), .C1(n76), 
        .Y(n95) );
  ADDFXL U51 ( .A(tmp_2), .B(tmp_1), .CI(tmp_0), .CO(N68), .S(N67) );
  ADDFXL U52 ( .A(candidate[1]), .B(N68), .CI(
        \add_0_root_add_1_root_add_56_4/carry[1] ), .CO(
        \add_0_root_add_1_root_add_56_4/carry[2] ), .S(N84) );
  ADDFXL U53 ( .A(candidate[0]), .B(N142), .CI(\add_73/B[0] ), .CO(
        \add_1_root_add_69_2/carry[1] ), .S(N143) );
  AND2X2 U54 ( .A(tmp_2), .B(tmp_3), .Y(N142) );
  AOI222XL U55 ( .A0(N239), .A1(n10), .B0(N202), .B1(n75), .C0(N143), .C1(n76), 
        .Y(n101) );
  CLKINVX1 U56 ( .A(n61), .Y(next_2[5]) );
  AOI222XL U57 ( .A0(N116), .A1(n59), .B0(now_2[5]), .B1(n62), .C0(N156), .C1(
        n63), .Y(n61) );
  NOR2X1 U58 ( .A(reg_mode[0]), .B(reg_mode[1]), .Y(n59) );
  NAND4X1 U59 ( .A(now_0[4]), .B(now_0[3]), .C(now_0[5]), .D(n102), .Y(n57) );
  AND3X2 U60 ( .A(now_0[2]), .B(now_0[0]), .C(now_0[1]), .Y(n102) );
  AND2X2 U61 ( .A(n71), .B(n44), .Y(n79) );
  AND2X2 U62 ( .A(n70), .B(n44), .Y(n80) );
  OAI21XL U63 ( .A0(n55), .A1(n44), .B0(n60), .Y(n63) );
  NAND4X1 U64 ( .A(now_0[3]), .B(now_0[1]), .C(now_0[5]), .D(n58), .Y(n54) );
  NOR3X1 U65 ( .A(now_0[0]), .B(now_0[4]), .C(now_0[2]), .Y(n58) );
  OAI21XL U66 ( .A0(n56), .A1(n37), .B0(n1), .Y(N36) );
  AOI22X1 U67 ( .A0(n53), .A1(n57), .B0(n9), .B1(n54), .Y(n56) );
  CLKINVX1 U68 ( .A(n55), .Y(n9) );
  NOR3X1 U69 ( .A(n37), .B(en), .C(n52), .Y(N37) );
  AOI2BB2X1 U70 ( .B0(n11), .B1(n53), .A0N(n54), .A1N(n55), .Y(n52) );
  NOR2X1 U71 ( .A(n55), .B(count), .Y(n62) );
  ADDHXL U72 ( .A(now_0[1]), .B(now_0[0]), .CO(\r464/carry[2] ), .S(N121) );
  ADDHXL U73 ( .A(now_2[1]), .B(now_2[0]), .CO(\r467/carry[2] ), .S(N152) );
  ADDHXL U74 ( .A(now_1[1]), .B(now_1[0]), .CO(\r465/carry[2] ), .S(N127) );
  ADDHXL U75 ( .A(now_0[3]), .B(\r464/carry[3] ), .CO(\r464/carry[4] ), .S(
        N123) );
  ADDHXL U76 ( .A(now_2[3]), .B(\r467/carry[3] ), .CO(\r467/carry[4] ), .S(
        N154) );
  ADDHXL U77 ( .A(now_1[3]), .B(\r465/carry[3] ), .CO(\r465/carry[4] ), .S(
        N129) );
  ADDHXL U78 ( .A(now_0[2]), .B(\r464/carry[2] ), .CO(\r464/carry[3] ), .S(
        N122) );
  ADDHXL U79 ( .A(now_2[2]), .B(\r467/carry[2] ), .CO(\r467/carry[3] ), .S(
        N153) );
  ADDHXL U80 ( .A(now_1[2]), .B(\r465/carry[2] ), .CO(\r465/carry[3] ), .S(
        N128) );
  AO22X1 U81 ( .A0(N104), .A1(n59), .B0(N125), .B1(n69), .Y(N278) );
  AO22X1 U82 ( .A0(N103), .A1(n59), .B0(N124), .B1(n69), .Y(N277) );
  AO22X1 U83 ( .A0(N102), .A1(n59), .B0(N123), .B1(n69), .Y(N276) );
  AO22X1 U84 ( .A0(N101), .A1(n59), .B0(N122), .B1(n69), .Y(N275) );
  AO22X1 U85 ( .A0(N100), .A1(n59), .B0(N121), .B1(n69), .Y(N274) );
  AO22X1 U86 ( .A0(N99), .A1(n59), .B0(N99), .B1(n69), .Y(N273) );
  CLKINVX1 U87 ( .A(now_0[0]), .Y(N99) );
  AO22X1 U88 ( .A0(N110), .A1(n59), .B0(N131), .B1(n69), .Y(N284) );
  AO22X1 U89 ( .A0(N109), .A1(n59), .B0(N130), .B1(n69), .Y(N283) );
  AO22X1 U90 ( .A0(N108), .A1(n59), .B0(N129), .B1(n69), .Y(N282) );
  AO22X1 U91 ( .A0(N107), .A1(n59), .B0(N128), .B1(n69), .Y(N281) );
  AO22X1 U92 ( .A0(N106), .A1(n59), .B0(N127), .B1(n69), .Y(N280) );
  CLKINVX1 U93 ( .A(n64), .Y(next_2[4]) );
  AOI222XL U94 ( .A0(N115), .A1(n59), .B0(now_2[4]), .B1(n62), .C0(N155), .C1(
        n63), .Y(n64) );
  CLKINVX1 U95 ( .A(n66), .Y(next_2[2]) );
  AOI222XL U96 ( .A0(N113), .A1(n59), .B0(now_2[2]), .B1(n62), .C0(N153), .C1(
        n63), .Y(n66) );
  AND2X2 U97 ( .A(n71), .B(count), .Y(n75) );
  AND2X2 U98 ( .A(n70), .B(count), .Y(n76) );
  CLKINVX1 U99 ( .A(n65), .Y(next_2[3]) );
  AOI222XL U100 ( .A0(N114), .A1(n59), .B0(now_2[3]), .B1(n62), .C0(N154), 
        .C1(n63), .Y(n65) );
  CLKINVX1 U101 ( .A(n67), .Y(next_2[1]) );
  AOI222XL U102 ( .A0(N112), .A1(n59), .B0(now_2[1]), .B1(n62), .C0(N152), 
        .C1(n63), .Y(n67) );
  CLKINVX1 U103 ( .A(n68), .Y(next_2[0]) );
  AOI222XL U104 ( .A0(N111), .A1(n59), .B0(now_2[0]), .B1(n62), .C0(N111), 
        .C1(n63), .Y(n68) );
  CLKINVX1 U105 ( .A(now_2[0]), .Y(N111) );
  AO22X1 U106 ( .A0(N105), .A1(n59), .B0(N105), .B1(n69), .Y(N279) );
  CLKINVX1 U107 ( .A(now_1[0]), .Y(N105) );
  ADDHXL U108 ( .A(now_0[4]), .B(\r464/carry[4] ), .CO(\r464/carry[5] ), .S(
        N124) );
  ADDHXL U109 ( .A(now_2[4]), .B(\r467/carry[4] ), .CO(\r467/carry[5] ), .S(
        N155) );
  ADDHXL U110 ( .A(now_1[4]), .B(\r465/carry[4] ), .CO(\r465/carry[5] ), .S(
        N130) );
  NOR2X1 U111 ( .A(en), .B(count), .Y(N35) );
  NAND2BX1 U112 ( .AN(valid), .B(n37), .Y(busy) );
  NOR2X1 U113 ( .A(rst), .B(en), .Y(N39) );
  CLKINVX1 U114 ( .A(rst), .Y(n8) );
  XOR2X1 U115 ( .A(candidate[7]), .B(\add_1_root_add_69_2/carry[7] ), .Y(N150)
         );
  XOR2X1 U116 ( .A(candidate[7]), .B(\add_1_root_add_84_2/carry[7] ), .Y(N209)
         );
  XOR2X1 U117 ( .A(candidate[7]), .B(\add_93/carry[7] ), .Y(N246) );
  XOR2X1 U118 ( .A(candidate[7]), .B(\add_56/carry[7] ), .Y(N66) );
  XOR2X1 U119 ( .A(candidate[7]), .B(\add_0_root_add_1_root_add_56_4/carry[7] ), .Y(N90) );
  XOR2X1 U120 ( .A(candidate[7]), .B(\add_73/carry[7] ), .Y(N164) );
  XOR2X1 U121 ( .A(candidate[7]), .B(\add_88/carry[7] ), .Y(N223) );
  AND2X1 U122 ( .A(\add_1_root_add_69_2/carry[6] ), .B(candidate[6]), .Y(
        \add_1_root_add_69_2/carry[7] ) );
  XOR2X1 U123 ( .A(candidate[6]), .B(\add_1_root_add_69_2/carry[6] ), .Y(N149)
         );
  AND2X1 U124 ( .A(\add_1_root_add_84_2/carry[6] ), .B(candidate[6]), .Y(
        \add_1_root_add_84_2/carry[7] ) );
  XOR2X1 U125 ( .A(candidate[6]), .B(\add_1_root_add_84_2/carry[6] ), .Y(N208)
         );
  AND2X1 U126 ( .A(\add_93/carry[6] ), .B(candidate[6]), .Y(\add_93/carry[7] )
         );
  XOR2X1 U127 ( .A(candidate[6]), .B(\add_93/carry[6] ), .Y(N245) );
  AND2X1 U128 ( .A(\add_56/carry[6] ), .B(candidate[6]), .Y(\add_56/carry[7] )
         );
  XOR2X1 U129 ( .A(candidate[6]), .B(\add_56/carry[6] ), .Y(N65) );
  AND2X1 U130 ( .A(\add_0_root_add_1_root_add_56_4/carry[6] ), .B(candidate[6]), .Y(\add_0_root_add_1_root_add_56_4/carry[7] ) );
  XOR2X1 U131 ( .A(candidate[6]), .B(\add_0_root_add_1_root_add_56_4/carry[6] ), .Y(N89) );
  AND2X1 U132 ( .A(\add_73/carry[6] ), .B(candidate[6]), .Y(\add_73/carry[7] )
         );
  XOR2X1 U133 ( .A(candidate[6]), .B(\add_73/carry[6] ), .Y(N163) );
  AND2X1 U134 ( .A(\add_88/carry[6] ), .B(candidate[6]), .Y(\add_88/carry[7] )
         );
  XOR2X1 U135 ( .A(candidate[6]), .B(\add_88/carry[6] ), .Y(N222) );
  AND2X1 U136 ( .A(\add_1_root_add_69_2/carry[5] ), .B(candidate[5]), .Y(
        \add_1_root_add_69_2/carry[6] ) );
  XOR2X1 U137 ( .A(candidate[5]), .B(\add_1_root_add_69_2/carry[5] ), .Y(N148)
         );
  AND2X1 U138 ( .A(\add_1_root_add_84_2/carry[5] ), .B(candidate[5]), .Y(
        \add_1_root_add_84_2/carry[6] ) );
  XOR2X1 U139 ( .A(candidate[5]), .B(\add_1_root_add_84_2/carry[5] ), .Y(N207)
         );
  AND2X1 U140 ( .A(\add_93/carry[5] ), .B(candidate[5]), .Y(\add_93/carry[6] )
         );
  XOR2X1 U141 ( .A(candidate[5]), .B(\add_93/carry[5] ), .Y(N244) );
  AND2X1 U142 ( .A(\add_56/carry[5] ), .B(candidate[5]), .Y(\add_56/carry[6] )
         );
  XOR2X1 U143 ( .A(candidate[5]), .B(\add_56/carry[5] ), .Y(N64) );
  AND2X1 U144 ( .A(\add_0_root_add_1_root_add_56_4/carry[5] ), .B(candidate[5]), .Y(\add_0_root_add_1_root_add_56_4/carry[6] ) );
  XOR2X1 U145 ( .A(candidate[5]), .B(\add_0_root_add_1_root_add_56_4/carry[5] ), .Y(N88) );
  AND2X1 U146 ( .A(\add_73/carry[5] ), .B(candidate[5]), .Y(\add_73/carry[6] )
         );
  XOR2X1 U147 ( .A(candidate[5]), .B(\add_73/carry[5] ), .Y(N162) );
  AND2X1 U148 ( .A(\add_88/carry[5] ), .B(candidate[5]), .Y(\add_88/carry[6] )
         );
  XOR2X1 U149 ( .A(candidate[5]), .B(\add_88/carry[5] ), .Y(N221) );
  AND2X1 U150 ( .A(\add_1_root_add_69_2/carry[4] ), .B(candidate[4]), .Y(
        \add_1_root_add_69_2/carry[5] ) );
  XOR2X1 U151 ( .A(candidate[4]), .B(\add_1_root_add_69_2/carry[4] ), .Y(N147)
         );
  AND2X1 U152 ( .A(\add_1_root_add_84_2/carry[4] ), .B(candidate[4]), .Y(
        \add_1_root_add_84_2/carry[5] ) );
  XOR2X1 U153 ( .A(candidate[4]), .B(\add_1_root_add_84_2/carry[4] ), .Y(N206)
         );
  AND2X1 U154 ( .A(\add_93/carry[4] ), .B(candidate[4]), .Y(\add_93/carry[5] )
         );
  XOR2X1 U155 ( .A(candidate[4]), .B(\add_93/carry[4] ), .Y(N243) );
  AND2X1 U156 ( .A(\add_56/carry[4] ), .B(candidate[4]), .Y(\add_56/carry[5] )
         );
  XOR2X1 U157 ( .A(candidate[4]), .B(\add_56/carry[4] ), .Y(N63) );
  AND2X1 U158 ( .A(\add_0_root_add_1_root_add_56_4/carry[4] ), .B(candidate[4]), .Y(\add_0_root_add_1_root_add_56_4/carry[5] ) );
  XOR2X1 U159 ( .A(candidate[4]), .B(\add_0_root_add_1_root_add_56_4/carry[4] ), .Y(N87) );
  AND2X1 U160 ( .A(\add_73/carry[4] ), .B(candidate[4]), .Y(\add_73/carry[5] )
         );
  XOR2X1 U161 ( .A(candidate[4]), .B(\add_73/carry[4] ), .Y(N161) );
  AND2X1 U162 ( .A(\add_88/carry[4] ), .B(candidate[4]), .Y(\add_88/carry[5] )
         );
  XOR2X1 U163 ( .A(candidate[4]), .B(\add_88/carry[4] ), .Y(N220) );
  AND2X1 U164 ( .A(\add_1_root_add_69_2/carry[3] ), .B(candidate[3]), .Y(
        \add_1_root_add_69_2/carry[4] ) );
  XOR2X1 U165 ( .A(candidate[3]), .B(\add_1_root_add_69_2/carry[3] ), .Y(N146)
         );
  AND2X1 U166 ( .A(\add_1_root_add_84_2/carry[3] ), .B(candidate[3]), .Y(
        \add_1_root_add_84_2/carry[4] ) );
  XOR2X1 U167 ( .A(candidate[3]), .B(\add_1_root_add_84_2/carry[3] ), .Y(N205)
         );
  AND2X1 U168 ( .A(\add_93/carry[3] ), .B(candidate[3]), .Y(\add_93/carry[4] )
         );
  XOR2X1 U169 ( .A(candidate[3]), .B(\add_93/carry[3] ), .Y(N242) );
  AND2X1 U170 ( .A(\add_56/carry[3] ), .B(candidate[3]), .Y(\add_56/carry[4] )
         );
  XOR2X1 U171 ( .A(candidate[3]), .B(\add_56/carry[3] ), .Y(N62) );
  AND2X1 U172 ( .A(\add_0_root_add_1_root_add_56_4/carry[3] ), .B(candidate[3]), .Y(\add_0_root_add_1_root_add_56_4/carry[4] ) );
  XOR2X1 U173 ( .A(candidate[3]), .B(\add_0_root_add_1_root_add_56_4/carry[3] ), .Y(N86) );
  AND2X1 U174 ( .A(\add_73/carry[3] ), .B(candidate[3]), .Y(\add_73/carry[4] )
         );
  XOR2X1 U175 ( .A(candidate[3]), .B(\add_73/carry[3] ), .Y(N160) );
  AND2X1 U176 ( .A(\add_88/carry[3] ), .B(candidate[3]), .Y(\add_88/carry[4] )
         );
  XOR2X1 U177 ( .A(candidate[3]), .B(\add_88/carry[3] ), .Y(N219) );
  AND2X1 U178 ( .A(\add_1_root_add_69_2/carry[2] ), .B(candidate[2]), .Y(
        \add_1_root_add_69_2/carry[3] ) );
  XOR2X1 U179 ( .A(candidate[2]), .B(\add_1_root_add_69_2/carry[2] ), .Y(N145)
         );
  AND2X1 U180 ( .A(\add_1_root_add_84_2/carry[2] ), .B(candidate[2]), .Y(
        \add_1_root_add_84_2/carry[3] ) );
  XOR2X1 U181 ( .A(candidate[2]), .B(\add_1_root_add_84_2/carry[2] ), .Y(N204)
         );
  AND2X1 U182 ( .A(\add_93/carry[2] ), .B(candidate[2]), .Y(\add_93/carry[3] )
         );
  XOR2X1 U183 ( .A(candidate[2]), .B(\add_93/carry[2] ), .Y(N241) );
  AND2X1 U184 ( .A(\add_56/carry[2] ), .B(candidate[2]), .Y(\add_56/carry[3] )
         );
  XOR2X1 U185 ( .A(candidate[2]), .B(\add_56/carry[2] ), .Y(N61) );
  AND2X1 U186 ( .A(\add_0_root_add_1_root_add_56_4/carry[2] ), .B(candidate[2]), .Y(\add_0_root_add_1_root_add_56_4/carry[3] ) );
  XOR2X1 U187 ( .A(candidate[2]), .B(\add_0_root_add_1_root_add_56_4/carry[2] ), .Y(N85) );
  AND2X1 U188 ( .A(\add_73/carry[2] ), .B(candidate[2]), .Y(\add_73/carry[3] )
         );
  XOR2X1 U189 ( .A(candidate[2]), .B(\add_73/carry[2] ), .Y(N159) );
  AND2X1 U190 ( .A(\add_88/carry[2] ), .B(candidate[2]), .Y(\add_88/carry[3] )
         );
  XOR2X1 U191 ( .A(candidate[2]), .B(\add_88/carry[2] ), .Y(N218) );
  AND2X1 U192 ( .A(\add_1_root_add_69_2/carry[1] ), .B(candidate[1]), .Y(
        \add_1_root_add_69_2/carry[2] ) );
  XOR2X1 U193 ( .A(candidate[1]), .B(\add_1_root_add_69_2/carry[1] ), .Y(N144)
         );
  AND2X1 U194 ( .A(\add_1_root_add_84_2/carry[1] ), .B(candidate[1]), .Y(
        \add_1_root_add_84_2/carry[2] ) );
  XOR2X1 U195 ( .A(candidate[1]), .B(\add_1_root_add_84_2/carry[1] ), .Y(N203)
         );
  AND2X1 U196 ( .A(\add_93/carry[1] ), .B(candidate[1]), .Y(\add_93/carry[2] )
         );
  XOR2X1 U197 ( .A(candidate[1]), .B(\add_93/carry[1] ), .Y(N240) );
  AND2X1 U198 ( .A(\add_56/carry[1] ), .B(candidate[1]), .Y(\add_56/carry[2] )
         );
  XOR2X1 U199 ( .A(candidate[1]), .B(\add_56/carry[1] ), .Y(N60) );
  AND2X1 U200 ( .A(\add_73/carry[1] ), .B(candidate[1]), .Y(\add_73/carry[2] )
         );
  XOR2X1 U201 ( .A(candidate[1]), .B(\add_73/carry[1] ), .Y(N158) );
  AND2X1 U202 ( .A(\add_88/carry[1] ), .B(candidate[1]), .Y(\add_88/carry[2] )
         );
  XOR2X1 U203 ( .A(candidate[1]), .B(\add_88/carry[1] ), .Y(N217) );
  AND2X1 U204 ( .A(candidate[0]), .B(N238), .Y(\add_93/carry[1] ) );
  XOR2X1 U205 ( .A(N238), .B(candidate[0]), .Y(N239) );
  AND2X1 U206 ( .A(candidate[0]), .B(tmp_0), .Y(\add_56/carry[1] ) );
  XOR2X1 U207 ( .A(tmp_0), .B(candidate[0]), .Y(N59) );
  AND2X1 U208 ( .A(candidate[0]), .B(N67), .Y(
        \add_0_root_add_1_root_add_56_4/carry[1] ) );
  XOR2X1 U209 ( .A(N67), .B(candidate[0]), .Y(N83) );
  AND2X1 U210 ( .A(candidate[0]), .B(\add_73/B[0] ), .Y(\add_73/carry[1] ) );
  XOR2X1 U211 ( .A(\add_73/B[0] ), .B(candidate[0]), .Y(N157) );
  AND2X1 U212 ( .A(candidate[0]), .B(N41), .Y(\add_88/carry[1] ) );
  XOR2X1 U213 ( .A(N41), .B(candidate[0]), .Y(N216) );
  XOR2X1 U214 ( .A(now_0[5]), .B(\add_57/carry[5] ), .Y(N104) );
  AND2X1 U215 ( .A(\add_57/carry[4] ), .B(now_0[4]), .Y(\add_57/carry[5] ) );
  XOR2X1 U216 ( .A(now_0[4]), .B(\add_57/carry[4] ), .Y(N103) );
  AND2X1 U217 ( .A(\add_57/carry[3] ), .B(now_0[3]), .Y(\add_57/carry[4] ) );
  XOR2X1 U218 ( .A(now_0[3]), .B(\add_57/carry[3] ), .Y(N102) );
  AND2X1 U219 ( .A(\add_57/carry[2] ), .B(now_0[2]), .Y(\add_57/carry[3] ) );
  XOR2X1 U220 ( .A(now_0[2]), .B(\add_57/carry[2] ), .Y(N101) );
  OR2X1 U221 ( .A(now_0[1]), .B(now_0[0]), .Y(\add_57/carry[2] ) );
  XNOR2X1 U222 ( .A(now_0[0]), .B(now_0[1]), .Y(N100) );
  XOR2X1 U223 ( .A(now_1[5]), .B(\add_58/carry[5] ), .Y(N110) );
  AND2X1 U224 ( .A(\add_58/carry[4] ), .B(now_1[4]), .Y(\add_58/carry[5] ) );
  XOR2X1 U225 ( .A(now_1[4]), .B(\add_58/carry[4] ), .Y(N109) );
  AND2X1 U226 ( .A(\add_58/carry[3] ), .B(now_1[3]), .Y(\add_58/carry[4] ) );
  XOR2X1 U227 ( .A(now_1[3]), .B(\add_58/carry[3] ), .Y(N108) );
  AND2X1 U228 ( .A(\add_58/carry[2] ), .B(now_1[2]), .Y(\add_58/carry[3] ) );
  XOR2X1 U229 ( .A(now_1[2]), .B(\add_58/carry[2] ), .Y(N107) );
  OR2X1 U230 ( .A(now_1[1]), .B(now_1[0]), .Y(\add_58/carry[2] ) );
  XNOR2X1 U231 ( .A(now_1[0]), .B(now_1[1]), .Y(N106) );
  XOR2X1 U232 ( .A(now_2[5]), .B(\add_59/carry[5] ), .Y(N116) );
  AND2X1 U233 ( .A(\add_59/carry[4] ), .B(now_2[4]), .Y(\add_59/carry[5] ) );
  XOR2X1 U234 ( .A(now_2[4]), .B(\add_59/carry[4] ), .Y(N115) );
  AND2X1 U235 ( .A(\add_59/carry[3] ), .B(now_2[3]), .Y(\add_59/carry[4] ) );
  XOR2X1 U236 ( .A(now_2[3]), .B(\add_59/carry[3] ), .Y(N114) );
  AND2X1 U237 ( .A(\add_59/carry[2] ), .B(now_2[2]), .Y(\add_59/carry[3] ) );
  XOR2X1 U238 ( .A(now_2[2]), .B(\add_59/carry[2] ), .Y(N113) );
  OR2X1 U239 ( .A(now_2[1]), .B(now_2[0]), .Y(\add_59/carry[2] ) );
  XNOR2X1 U240 ( .A(now_2[0]), .B(now_2[1]), .Y(N112) );
  XOR2X1 U241 ( .A(\r464/carry[5] ), .B(now_0[5]), .Y(N125) );
  XOR2X1 U242 ( .A(\r465/carry[5] ), .B(now_1[5]), .Y(N131) );
  XOR2X1 U243 ( .A(\r467/carry[5] ), .B(now_2[5]), .Y(N156) );
endmodule


module SET ( clk, rst, en, central, radius, mode, busy, valid, candidate );
  input [23:0] central;
  input [11:0] radius;
  input [1:0] mode;
  output [7:0] candidate;
  input clk, rst, en;
  output busy, valid;
  wire   result_0, result_1, result_2, tmp_0, tmp_1, tmp_2, count, N24, N25,
         N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39,
         N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90;
  wire   [5:0] now_0;
  wire   [5:0] now_1;
  wire   [3:0] center_x1;
  wire   [3:0] center_y1;
  wire   [3:0] center_r1;
  wire   [5:0] now_2;
  wire   [3:0] center_x2;
  wire   [3:0] center_y2;
  wire   [3:0] center_r2;
  wire   [7:0] next_candidate;
  wire   [5:0] next_0;
  wire   [5:0] next_1;
  wire   [5:0] next_2;
  wire   [1:0] reg_mode;
  wire   [3:0] Ax;
  wire   [3:0] Ay;
  wire   [3:0] Ar;

  MapCell_0 MapCell_0 ( .now(now_0), .center_x(Ax), .center_y(Ay), .center_r(
        Ar), .result(result_0) );
  MapCell_2 MapCell_1 ( .now(now_1), .center_x(center_x1), .center_y(center_y1), .center_r(center_r1), .result(result_1) );
  MapCell_1 MapCell_2 ( .now(now_2), .center_x(center_x2), .center_y(center_y2), .center_r(center_r2), .result(result_2) );
  Control Controler ( .clk(clk), .rst(rst), .en(en), .next_candidate(
        next_candidate), .candidate(candidate), .busy(busy), .valid(valid), 
        .tmp_0(tmp_0), .tmp_1(tmp_1), .tmp_2(tmp_2), .next_0(next_0), .next_1(
        next_1), .next_2(next_2), .now_0(now_0), .now_1(now_1), .now_2(now_2), 
        .reg_mode(reg_mode), .count(count) );
  DFFQX1 \candidate_reg[7]  ( .D(N49), .CK(clk), .Q(candidate[7]) );
  DFFQX1 \candidate_reg[4]  ( .D(N46), .CK(clk), .Q(candidate[4]) );
  DFFQX1 \candidate_reg[5]  ( .D(N47), .CK(clk), .Q(candidate[5]) );
  DFFQX1 \candidate_reg[6]  ( .D(N48), .CK(clk), .Q(candidate[6]) );
  DFFQX1 \candidate_reg[2]  ( .D(N44), .CK(clk), .Q(candidate[2]) );
  DFFQX1 \candidate_reg[3]  ( .D(N45), .CK(clk), .Q(candidate[3]) );
  DFFQX1 \candidate_reg[1]  ( .D(N43), .CK(clk), .Q(candidate[1]) );
  DFFQX1 \candidate_reg[0]  ( .D(N42), .CK(clk), .Q(candidate[0]) );
  EDFFX1 \Cr_reg[3]  ( .D(radius[3]), .E(en), .CK(clk), .QN(n86) );
  EDFFX1 \Cr_reg[2]  ( .D(radius[2]), .E(en), .CK(clk), .QN(n87) );
  EDFFX1 \Cr_reg[1]  ( .D(radius[1]), .E(en), .CK(clk), .QN(n85) );
  EDFFX1 \Cr_reg[0]  ( .D(radius[0]), .E(en), .CK(clk), .QN(n84) );
  EDFFX1 \Br_reg[2]  ( .D(radius[6]), .E(en), .CK(clk), .QN(n75) );
  EDFFX1 \Br_reg[1]  ( .D(radius[5]), .E(en), .CK(clk), .QN(n74) );
  EDFFX1 \Br_reg[0]  ( .D(radius[4]), .E(en), .CK(clk), .QN(n73) );
  EDFFX1 \Ar_reg[2]  ( .D(radius[10]), .E(en), .CK(clk), .Q(Ar[2]), .QN(n63)
         );
  EDFFX1 \Ar_reg[3]  ( .D(radius[11]), .E(en), .CK(clk), .Q(Ar[3]), .QN(n60)
         );
  EDFFX1 \Br_reg[3]  ( .D(radius[7]), .E(en), .CK(clk), .QN(n72) );
  DFFQX1 \now_1_reg[5]  ( .D(N41), .CK(clk), .Q(now_1[5]) );
  DFFQX1 \now_2_reg[5]  ( .D(N29), .CK(clk), .Q(now_2[5]) );
  EDFFX1 \Cy_reg[3]  ( .D(central[3]), .E(en), .CK(clk), .QN(n79) );
  EDFFX1 \Cy_reg[2]  ( .D(central[2]), .E(en), .CK(clk), .QN(n80) );
  EDFFX1 \Cy_reg[1]  ( .D(central[1]), .E(en), .CK(clk), .QN(n78) );
  EDFFX1 \Cy_reg[0]  ( .D(central[0]), .E(en), .CK(clk), .QN(n76) );
  EDFFX1 \Bx_reg[3]  ( .D(central[15]), .E(en), .CK(clk), .QN(n71) );
  EDFFX1 \Bx_reg[1]  ( .D(central[13]), .E(en), .CK(clk), .QN(n70) );
  EDFFX1 \By_reg[3]  ( .D(central[11]), .E(en), .CK(clk), .QN(n68) );
  EDFFX1 \By_reg[2]  ( .D(central[10]), .E(en), .CK(clk), .QN(n69) );
  EDFFX1 \By_reg[1]  ( .D(central[9]), .E(en), .CK(clk), .QN(n65) );
  EDFFX1 \Cx_reg[3]  ( .D(central[7]), .E(en), .CK(clk), .QN(n83) );
  EDFFX1 \Cx_reg[2]  ( .D(central[6]), .E(en), .CK(clk), .QN(n77) );
  EDFFX1 \Cx_reg[1]  ( .D(central[5]), .E(en), .CK(clk), .QN(n82) );
  EDFFX1 \Cx_reg[0]  ( .D(central[4]), .E(en), .CK(clk), .QN(n81) );
  DFFQX1 \now_1_reg[2]  ( .D(N38), .CK(clk), .Q(now_1[2]) );
  DFFQX1 \now_2_reg[2]  ( .D(N26), .CK(clk), .Q(now_2[2]) );
  DFFQX1 \now_1_reg[1]  ( .D(N37), .CK(clk), .Q(now_1[1]) );
  DFFQX1 \now_2_reg[1]  ( .D(N25), .CK(clk), .Q(now_2[1]) );
  DFFQX1 \now_1_reg[4]  ( .D(N40), .CK(clk), .Q(now_1[4]) );
  DFFQX1 \now_2_reg[4]  ( .D(N28), .CK(clk), .Q(now_2[4]) );
  EDFFX1 \Ay_reg[3]  ( .D(central[19]), .E(en), .CK(clk), .Q(Ay[3]), .QN(n57)
         );
  DFFQX1 \now_0_reg[5]  ( .D(N35), .CK(clk), .Q(now_0[5]) );
  DFFNSRX1 tmp_0_reg ( .D(result_0), .CKN(clk), .SN(1'b1), .RN(n89), .Q(tmp_0)
         );
  EDFFX1 \Ax_reg[3]  ( .D(central[23]), .E(en), .CK(clk), .Q(Ax[3]), .QN(n55)
         );
  EDFFX1 \Ay_reg[2]  ( .D(central[18]), .E(en), .CK(clk), .Q(Ay[2]), .QN(n58)
         );
  EDFFX1 \Ax_reg[1]  ( .D(central[21]), .E(en), .CK(clk), .Q(Ax[1]), .QN(n59)
         );
  DFFNSRX1 tmp_2_reg ( .D(result_2), .CKN(clk), .SN(1'b1), .RN(n89), .Q(tmp_2)
         );
  EDFFX1 \Ay_reg[0]  ( .D(central[16]), .E(en), .CK(clk), .Q(Ay[0]), .QN(n56)
         );
  EDFFX1 \Ay_reg[1]  ( .D(central[17]), .E(en), .CK(clk), .Q(Ay[1]), .QN(n53)
         );
  DFFNSRX1 tmp_1_reg ( .D(result_1), .CKN(clk), .SN(1'b1), .RN(n89), .Q(tmp_1)
         );
  EDFFX1 \Ax_reg[0]  ( .D(central[20]), .E(en), .CK(clk), .Q(Ax[0]), .QN(n54)
         );
  EDFFX1 \Ax_reg[2]  ( .D(central[22]), .E(en), .CK(clk), .Q(Ax[2]), .QN(n52)
         );
  EDFFX1 \Bx_reg[2]  ( .D(central[14]), .E(en), .CK(clk), .QN(n64) );
  EDFFX1 \Bx_reg[0]  ( .D(central[12]), .E(en), .CK(clk), .QN(n67) );
  EDFFX1 \By_reg[0]  ( .D(central[8]), .E(en), .CK(clk), .QN(n66) );
  DFFQX1 \now_0_reg[2]  ( .D(N32), .CK(clk), .Q(now_0[2]) );
  DFFQX1 \now_1_reg[3]  ( .D(N39), .CK(clk), .Q(now_1[3]) );
  DFFQX1 \now_0_reg[1]  ( .D(N31), .CK(clk), .Q(now_0[1]) );
  DFFQX1 \now_2_reg[3]  ( .D(N27), .CK(clk), .Q(now_2[3]) );
  DFFQX1 \now_0_reg[4]  ( .D(N34), .CK(clk), .Q(now_0[4]) );
  DFFQX1 \now_0_reg[3]  ( .D(N33), .CK(clk), .Q(now_0[3]) );
  DFFQX1 \now_1_reg[0]  ( .D(N36), .CK(clk), .Q(now_1[0]) );
  DFFQX1 \now_2_reg[0]  ( .D(N24), .CK(clk), .Q(now_2[0]) );
  DFFQX1 \now_0_reg[0]  ( .D(N30), .CK(clk), .Q(now_0[0]) );
  EDFFX1 \Ar_reg[0]  ( .D(radius[8]), .E(en), .CK(clk), .Q(Ar[0]), .QN(n62) );
  EDFFX1 \Ar_reg[1]  ( .D(radius[9]), .E(en), .CK(clk), .Q(Ar[1]), .QN(n61) );
  EDFFX2 \reg_mode_reg[0]  ( .D(mode[0]), .E(en), .CK(clk), .Q(reg_mode[0]) );
  EDFFX2 \reg_mode_reg[1]  ( .D(mode[1]), .E(en), .CK(clk), .Q(reg_mode[1]) );
  NOR2X1 U104 ( .A(reg_mode[1]), .B(reg_mode[0]), .Y(n46) );
  OAI222XL U105 ( .A0(n43), .A1(n84), .B0(n44), .B1(n73), .C0(n45), .C1(n62), 
        .Y(center_r2[0]) );
  OAI222XL U106 ( .A0(n43), .A1(n85), .B0(n44), .B1(n74), .C0(n45), .C1(n61), 
        .Y(center_r2[1]) );
  OAI222XL U107 ( .A0(n43), .A1(n76), .B0(n44), .B1(n66), .C0(n45), .C1(n56), 
        .Y(center_y2[0]) );
  CLKINVX1 U108 ( .A(n46), .Y(n90) );
  OAI22XL U109 ( .A0(n46), .A1(n74), .B0(n90), .B1(n61), .Y(center_r1[1]) );
  OAI22XL U110 ( .A0(n46), .A1(n73), .B0(n90), .B1(n62), .Y(center_r1[0]) );
  OAI222XL U111 ( .A0(n43), .A1(n77), .B0(n44), .B1(n64), .C0(n45), .C1(n52), 
        .Y(center_x2[2]) );
  NAND2XL U112 ( .A(reg_mode[0]), .B(reg_mode[1]), .Y(n43) );
  OAI222XL U113 ( .A0(n43), .A1(n78), .B0(n44), .B1(n65), .C0(n45), .C1(n53), 
        .Y(center_y2[1]) );
  OAI222XL U114 ( .A0(n43), .A1(n86), .B0(n44), .B1(n72), .C0(n45), .C1(n60), 
        .Y(center_r2[3]) );
  CLKINVX1 U115 ( .A(en), .Y(n88) );
  OAI22XL U116 ( .A0(n46), .A1(n64), .B0(n90), .B1(n52), .Y(center_x1[2]) );
  OAI22XL U117 ( .A0(n46), .A1(n67), .B0(n90), .B1(n54), .Y(center_x1[0]) );
  OAI22XL U118 ( .A0(n46), .A1(n65), .B0(n53), .B1(n90), .Y(center_y1[1]) );
  OAI22XL U119 ( .A0(n46), .A1(n66), .B0(n56), .B1(n90), .Y(center_y1[0]) );
  OAI22XL U120 ( .A0(n46), .A1(n70), .B0(n90), .B1(n59), .Y(center_x1[1]) );
  OAI22XL U121 ( .A0(n46), .A1(n71), .B0(n90), .B1(n55), .Y(center_x1[3]) );
  OAI22XL U122 ( .A0(n46), .A1(n68), .B0(n57), .B1(n90), .Y(center_y1[3]) );
  OAI22XL U123 ( .A0(n46), .A1(n69), .B0(n58), .B1(n90), .Y(center_y1[2]) );
  NOR2BX1 U124 ( .AN(next_candidate[7]), .B(en), .Y(N49) );
  NOR2BX1 U125 ( .AN(next_candidate[6]), .B(en), .Y(N48) );
  OAI22XL U126 ( .A0(n46), .A1(n72), .B0(n90), .B1(n60), .Y(center_r1[3]) );
  NOR2BX1 U127 ( .AN(next_candidate[5]), .B(en), .Y(N47) );
  NOR2BX1 U128 ( .AN(next_candidate[4]), .B(en), .Y(N46) );
  NOR2BX1 U129 ( .AN(next_candidate[3]), .B(en), .Y(N45) );
  NOR2BX1 U130 ( .AN(next_candidate[2]), .B(en), .Y(N44) );
  NOR2BX1 U131 ( .AN(next_candidate[1]), .B(en), .Y(N43) );
  OAI22XL U132 ( .A0(n46), .A1(n75), .B0(n90), .B1(n63), .Y(center_r1[2]) );
  NOR2BX1 U133 ( .AN(next_candidate[0]), .B(en), .Y(N42) );
  AOI21X1 U134 ( .A0(n47), .A1(count), .B0(n46), .Y(n45) );
  OAI222XL U135 ( .A0(n43), .A1(n81), .B0(n44), .B1(n67), .C0(n45), .C1(n54), 
        .Y(center_x2[0]) );
  NAND2BX1 U136 ( .AN(count), .B(n47), .Y(n44) );
  OAI222XL U137 ( .A0(n43), .A1(n82), .B0(n44), .B1(n70), .C0(n45), .C1(n59), 
        .Y(center_x2[1]) );
  OAI222XL U138 ( .A0(n43), .A1(n83), .B0(n44), .B1(n71), .C0(n45), .C1(n55), 
        .Y(center_x2[3]) );
  OAI222XL U139 ( .A0(n43), .A1(n79), .B0(n44), .B1(n68), .C0(n45), .C1(n57), 
        .Y(center_y2[3]) );
  XOR2X1 U140 ( .A(reg_mode[0]), .B(reg_mode[1]), .Y(n47) );
  OAI222XL U141 ( .A0(n43), .A1(n80), .B0(n44), .B1(n69), .C0(n45), .C1(n58), 
        .Y(center_y2[2]) );
  OAI222XL U142 ( .A0(n43), .A1(n87), .B0(n44), .B1(n75), .C0(n45), .C1(n63), 
        .Y(center_r2[2]) );
  OAI2BB1X1 U143 ( .A0N(next_2[5]), .A1N(n88), .B0(n49), .Y(N29) );
  NOR2BX1 U144 ( .AN(next_0[5]), .B(en), .Y(N35) );
  NOR2BX1 U145 ( .AN(next_0[4]), .B(en), .Y(N34) );
  NOR2BX1 U146 ( .AN(next_0[3]), .B(en), .Y(N33) );
  NOR2BX1 U147 ( .AN(next_0[2]), .B(en), .Y(N32) );
  NOR2BX1 U148 ( .AN(next_0[1]), .B(en), .Y(N31) );
  NOR2BX1 U149 ( .AN(next_0[0]), .B(en), .Y(N30) );
  NOR2BX1 U150 ( .AN(next_1[5]), .B(en), .Y(N41) );
  NOR2BX1 U151 ( .AN(next_1[4]), .B(en), .Y(N40) );
  NOR2BX1 U152 ( .AN(next_1[3]), .B(en), .Y(N39) );
  NOR2BX1 U153 ( .AN(next_1[2]), .B(en), .Y(N38) );
  NOR2BX1 U154 ( .AN(next_1[1]), .B(en), .Y(N37) );
  NOR2BX1 U155 ( .AN(next_2[4]), .B(en), .Y(N28) );
  NOR2BX1 U156 ( .AN(next_2[2]), .B(en), .Y(N26) );
  OAI2BB1X1 U157 ( .A0N(next_2[3]), .A1N(n88), .B0(n49), .Y(N27) );
  OAI2BB1X1 U158 ( .A0N(next_2[1]), .A1N(n88), .B0(n50), .Y(N25) );
  AO21X1 U159 ( .A0(mode[1]), .A1(mode[0]), .B0(n88), .Y(n50) );
  OAI2BB1X1 U160 ( .A0N(next_2[0]), .A1N(n88), .B0(n49), .Y(N24) );
  OAI31XL U161 ( .A0(n88), .A1(mode[1]), .A2(mode[0]), .B0(n48), .Y(N36) );
  NAND2X1 U162 ( .A(next_1[0]), .B(n88), .Y(n48) );
  NAND2X1 U163 ( .A(en), .B(n51), .Y(n49) );
  XOR2X1 U164 ( .A(mode[1]), .B(mode[0]), .Y(n51) );
  CLKINVX1 U165 ( .A(rst), .Y(n89) );
endmodule

