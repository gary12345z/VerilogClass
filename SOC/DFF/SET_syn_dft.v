/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : P-2019.03
// Date      : Sat Jan  4 00:47:05 2020
/////////////////////////////////////////////////////////////


module MapCell_0 ( now, center_x, center_y, center_r, result );
  input [5:0] now;
  input [3:0] center_x;
  input [3:0] center_y;
  input [3:0] center_r;
  output result;
  wire   N40, N41, N42, N43, N44, N45, N61, N62, N63, N64, N65, N66, N83, N84,
         N86, N95, N94, N93, N92, N91, N89, N88, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, \add_54/carry[6] , \add_54/carry[5] ,
         \add_54/carry[4] , \add_54/carry[3] , n1, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29;

  AOI221XL U3 ( .A0(N94), .A1(n15), .B0(n17), .B1(n10), .C0(N95), .Y(n11) );
  OAI22XL U4 ( .A0(center_x[3]), .A1(n91), .B0(n92), .B1(n21), .Y(n70) );
  OAI22XL U5 ( .A0(center_y[3]), .A1(n66), .B0(n67), .B1(n24), .Y(n45) );
  ADDFXL U6 ( .A(N42), .B(N63), .CI(\add_54/carry[3] ), .CO(\add_54/carry[4] ), 
        .S(N91) );
  NOR2BX1 U7 ( .AN(N61), .B(n55), .Y(N63) );
  NOR2BX1 U8 ( .AN(N40), .B(n80), .Y(N42) );
  ADDFXL U9 ( .A(N43), .B(N64), .CI(\add_54/carry[4] ), .CO(\add_54/carry[5] ), 
        .S(N92) );
  NOR2X1 U10 ( .A(N62), .B(n54), .Y(N64) );
  NOR2X1 U11 ( .A(N41), .B(n79), .Y(N43) );
  XNOR2X1 U12 ( .A(N62), .B(N41), .Y(n1) );
  CLKINVX1 U13 ( .A(N86), .Y(n14) );
  OA21XL U14 ( .A0(n13), .A1(n12), .B0(n11), .Y(result) );
  CLKINVX1 U15 ( .A(n9), .Y(n17) );
  NOR2BX1 U16 ( .AN(n53), .B(N61), .Y(N62) );
  NOR2BX1 U17 ( .AN(n78), .B(N40), .Y(N41) );
  OA22X1 U18 ( .A0(n19), .A1(n81), .B0(n70), .B1(n82), .Y(n79) );
  XNOR2X1 U19 ( .A(n74), .B(n83), .Y(n81) );
  XOR2X1 U20 ( .A(n77), .B(n83), .Y(n82) );
  OA22X1 U21 ( .A0(n23), .A1(n56), .B0(n45), .B1(n57), .Y(n54) );
  XNOR2X1 U22 ( .A(n49), .B(n58), .Y(n56) );
  XOR2X1 U23 ( .A(n52), .B(n58), .Y(n57) );
  CLKINVX1 U24 ( .A(n70), .Y(n19) );
  CLKINVX1 U25 ( .A(n45), .Y(n23) );
  CLKINVX1 U26 ( .A(n89), .Y(n20) );
  CLKINVX1 U27 ( .A(n64), .Y(n26) );
  XOR2X1 U28 ( .A(n78), .B(n79), .Y(n80) );
  XOR2X1 U29 ( .A(n53), .B(n54), .Y(n55) );
  ADDFXL U30 ( .A(N44), .B(N65), .CI(\add_54/carry[5] ), .CO(\add_54/carry[6] ), .S(N93) );
  NOR2BX1 U31 ( .AN(n53), .B(n54), .Y(N65) );
  NOR2BX1 U32 ( .AN(n78), .B(n79), .Y(N44) );
  CLKINVX1 U33 ( .A(n72), .Y(n21) );
  CLKINVX1 U34 ( .A(N91), .Y(n16) );
  NAND2X1 U35 ( .A(n90), .B(n20), .Y(N40) );
  NAND2X1 U36 ( .A(n65), .B(n26), .Y(N61) );
  CLKINVX1 U37 ( .A(n90), .Y(n18) );
  CLKINVX1 U38 ( .A(n65), .Y(n25) );
  CLKINVX1 U39 ( .A(n47), .Y(n24) );
  NOR2X1 U40 ( .A(n29), .B(n28), .Y(N86) );
  OR2X1 U41 ( .A(N83), .B(n28), .Y(n3) );
  XNOR2X1 U42 ( .A(now[1]), .B(now[0]), .Y(n84) );
  XNOR2X1 U43 ( .A(now[4]), .B(now[3]), .Y(n59) );
  AOI21X1 U44 ( .A0(n77), .A1(n83), .B0(n76), .Y(n92) );
  AOI21X1 U45 ( .A0(n52), .A1(n58), .B0(n51), .Y(n67) );
  OAI22XL U46 ( .A0(n19), .A1(n86), .B0(n87), .B1(n70), .Y(n78) );
  XOR2X1 U47 ( .A(n88), .B(n18), .Y(n86) );
  XOR2X1 U48 ( .A(n88), .B(n89), .Y(n87) );
  XOR2X1 U49 ( .A(center_x[1]), .B(n84), .Y(n88) );
  OAI22XL U50 ( .A0(n23), .A1(n61), .B0(n62), .B1(n45), .Y(n53) );
  XOR2X1 U51 ( .A(n63), .B(n25), .Y(n61) );
  XOR2X1 U52 ( .A(n63), .B(n64), .Y(n62) );
  XOR2X1 U53 ( .A(center_y[1]), .B(n59), .Y(n63) );
  AOI21X1 U54 ( .A0(n75), .A1(center_x[2]), .B0(n76), .Y(n83) );
  AOI21X1 U55 ( .A0(n50), .A1(center_y[2]), .B0(n51), .Y(n58) );
  OAI21XL U56 ( .A0(n25), .A1(n59), .B0(n60), .Y(n49) );
  AO21X1 U57 ( .A0(n59), .A1(n25), .B0(center_y[1]), .Y(n60) );
  NOR2X1 U58 ( .A(now[0]), .B(center_x[0]), .Y(n89) );
  NAND3X1 U59 ( .A(now[0]), .B(now[1]), .C(now[2]), .Y(n91) );
  NOR2X1 U60 ( .A(now[3]), .B(center_y[0]), .Y(n64) );
  OA21XL U61 ( .A0(n89), .A1(n22), .B0(n94), .Y(n77) );
  CLKINVX1 U62 ( .A(n84), .Y(n22) );
  OAI21XL U63 ( .A0(n84), .A1(n20), .B0(center_x[1]), .Y(n94) );
  OA21XL U64 ( .A0(n64), .A1(n27), .B0(n69), .Y(n52) );
  CLKINVX1 U65 ( .A(n59), .Y(n27) );
  OAI21XL U66 ( .A0(n59), .A1(n26), .B0(center_y[1]), .Y(n69) );
  XOR2X1 U67 ( .A(n68), .B(now[5]), .Y(n50) );
  NAND2X1 U68 ( .A(now[3]), .B(now[4]), .Y(n68) );
  XOR2X1 U69 ( .A(n93), .B(now[2]), .Y(n75) );
  NAND2X1 U70 ( .A(now[0]), .B(now[1]), .Y(n93) );
  NOR2X1 U71 ( .A(n75), .B(center_x[2]), .Y(n76) );
  NOR2X1 U72 ( .A(n50), .B(center_y[2]), .Y(n51) );
  XOR2X1 U73 ( .A(n91), .B(center_x[3]), .Y(n72) );
  OAI21XL U74 ( .A0(n18), .A1(n84), .B0(n85), .Y(n74) );
  AO21X1 U75 ( .A0(n84), .A1(n18), .B0(center_x[1]), .Y(n85) );
  ADDFXL U76 ( .A(N45), .B(N66), .CI(\add_54/carry[6] ), .CO(N95), .S(N94) );
  OAI31XL U77 ( .A0(n45), .A1(n46), .A2(n47), .B0(n48), .Y(N66) );
  OAI31XL U78 ( .A0(n70), .A1(n71), .A2(n72), .B0(n73), .Y(N45) );
  AOI2BB2X1 U79 ( .B0(center_y[2]), .B1(n50), .A0N(n51), .A1N(n52), .Y(n46) );
  NAND3X1 U80 ( .A(now[3]), .B(now[4]), .C(now[5]), .Y(n66) );
  NAND2X1 U81 ( .A(center_x[0]), .B(now[0]), .Y(n90) );
  NAND2X1 U82 ( .A(center_y[0]), .B(now[3]), .Y(n65) );
  NAND4BX1 U83 ( .AN(center_x[2]), .B(n21), .C(n70), .D(n74), .Y(n73) );
  NAND4BX1 U84 ( .AN(center_y[2]), .B(n24), .C(n45), .D(n49), .Y(n48) );
  AOI2BB2X1 U85 ( .B0(center_x[2]), .B1(n75), .A0N(n76), .A1N(n77), .Y(n71) );
  XOR2X1 U86 ( .A(n66), .B(center_y[3]), .Y(n47) );
  CLKINVX1 U87 ( .A(center_r[1]), .Y(n29) );
  NOR2BX1 U88 ( .AN(center_r[0]), .B(n44), .Y(N84) );
  XOR2X1 U89 ( .A(n29), .B(center_r[2]), .Y(n44) );
  NOR2X1 U90 ( .A(n29), .B(center_r[0]), .Y(N83) );
  CLKINVX1 U91 ( .A(center_r[2]), .Y(n28) );
  CLKINVX1 U92 ( .A(center_r[3]), .Y(n15) );
  AND2X1 U93 ( .A(N40), .B(N61), .Y(N89) );
  XOR2X1 U94 ( .A(N61), .B(N40), .Y(N88) );
  AND2X1 U95 ( .A(N41), .B(N62), .Y(\add_54/carry[3] ) );
  NAND2BX1 U96 ( .AN(N93), .B(N86), .Y(n8) );
  OR2X1 U97 ( .A(N94), .B(n15), .Y(n10) );
  OAI211X1 U98 ( .A0(N92), .A1(n3), .B0(n8), .C0(n10), .Y(n13) );
  NOR2BX1 U99 ( .AN(N84), .B(N91), .Y(n4) );
  OAI32X1 U100 ( .A0(n1), .A1(N83), .A2(n4), .B0(N84), .B1(n16), .Y(n7) );
  NOR2BX1 U101 ( .AN(N88), .B(center_r[0]), .Y(n6) );
  AOI21X1 U102 ( .A0(N83), .A1(n1), .B0(n4), .Y(n5) );
  OAI32X1 U103 ( .A0(n7), .A1(N89), .A2(n6), .B0(n5), .B1(n7), .Y(n12) );
  AOI32X1 U104 ( .A0(N92), .A1(n3), .A2(n8), .B0(n14), .B1(N93), .Y(n9) );
endmodule


module MapCell_2 ( now, center_x, center_y, center_r, result );
  input [5:0] now;
  input [3:0] center_x;
  input [3:0] center_y;
  input [3:0] center_r;
  output result;
  wire   N40, N41, N42, N43, N44, N45, N61, N62, N63, N64, N65, N66, N83, N84,
         N86, N95, N94, N93, N92, N91, N89, N88, \add_54/carry[6] ,
         \add_54/carry[5] , \add_54/carry[4] , \add_54/carry[3] , n1, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117;

  AOI221XL U3 ( .A0(N94), .A1(n14), .B0(n17), .B1(n10), .C0(N95), .Y(n11) );
  OAI22XL U4 ( .A0(center_x[3]), .A1(n33), .B0(n32), .B1(n23), .Y(n91) );
  OAI22XL U5 ( .A0(center_y[3]), .A1(n95), .B0(n94), .B1(n27), .Y(n116) );
  XNOR2X1 U6 ( .A(N62), .B(N41), .Y(n1) );
  ADDFXL U7 ( .A(N43), .B(N64), .CI(\add_54/carry[4] ), .CO(\add_54/carry[5] ), 
        .S(N92) );
  NOR2X1 U8 ( .A(N62), .B(n107), .Y(N64) );
  NOR2X1 U9 ( .A(N41), .B(n82), .Y(N43) );
  OA21XL U10 ( .A0(n13), .A1(n12), .B0(n11), .Y(result) );
  CLKINVX1 U11 ( .A(N91), .Y(n16) );
  NOR2BX1 U12 ( .AN(n108), .B(N61), .Y(N62) );
  NOR2BX1 U13 ( .AN(n83), .B(N40), .Y(N41) );
  OA22X1 U14 ( .A0(n21), .A1(n43), .B0(n91), .B1(n42), .Y(n82) );
  XNOR2X1 U15 ( .A(n87), .B(n41), .Y(n43) );
  XOR2X1 U16 ( .A(n84), .B(n41), .Y(n42) );
  OA22X1 U17 ( .A0(n25), .A1(n105), .B0(n116), .B1(n104), .Y(n107) );
  XNOR2X1 U18 ( .A(n112), .B(n103), .Y(n105) );
  XOR2X1 U19 ( .A(n109), .B(n103), .Y(n104) );
  CLKINVX1 U20 ( .A(n116), .Y(n25) );
  CLKINVX1 U21 ( .A(n91), .Y(n21) );
  ADDFXL U22 ( .A(N42), .B(N63), .CI(\add_54/carry[3] ), .CO(\add_54/carry[4] ), .S(N91) );
  NOR2BX1 U23 ( .AN(N61), .B(n106), .Y(N63) );
  NOR2BX1 U24 ( .AN(N40), .B(n81), .Y(N42) );
  XOR2X1 U25 ( .A(n83), .B(n82), .Y(n81) );
  XOR2X1 U26 ( .A(n108), .B(n107), .Y(n106) );
  ADDFXL U27 ( .A(N44), .B(N65), .CI(\add_54/carry[5] ), .CO(\add_54/carry[6] ), .S(N93) );
  NOR2BX1 U28 ( .AN(n83), .B(n82), .Y(N44) );
  NOR2BX1 U29 ( .AN(n108), .B(n107), .Y(N65) );
  CLKINVX1 U30 ( .A(n89), .Y(n23) );
  CLKINVX1 U31 ( .A(n114), .Y(n27) );
  OR2X1 U32 ( .A(N83), .B(n19), .Y(n3) );
  CLKINVX1 U33 ( .A(N86), .Y(n15) );
  CLKINVX1 U34 ( .A(n9), .Y(n17) );
  OAI22XL U35 ( .A0(n25), .A1(n100), .B0(n99), .B1(n116), .Y(n108) );
  XOR2X1 U36 ( .A(n98), .B(n24), .Y(n100) );
  XOR2X1 U37 ( .A(n98), .B(n97), .Y(n99) );
  XOR2X1 U38 ( .A(center_y[1]), .B(n102), .Y(n98) );
  OAI22XL U39 ( .A0(n21), .A1(n38), .B0(n37), .B1(n91), .Y(n83) );
  XOR2X1 U40 ( .A(n36), .B(n20), .Y(n38) );
  XOR2X1 U41 ( .A(n36), .B(n35), .Y(n37) );
  XOR2X1 U42 ( .A(center_x[1]), .B(n40), .Y(n36) );
  AOI21X1 U43 ( .A0(n86), .A1(center_x[2]), .B0(n85), .Y(n41) );
  AOI21X1 U44 ( .A0(n111), .A1(center_y[2]), .B0(n110), .Y(n103) );
  OAI21XL U45 ( .A0(n20), .A1(n40), .B0(n39), .Y(n87) );
  AO21X1 U46 ( .A0(n40), .A1(n20), .B0(center_x[1]), .Y(n39) );
  OAI21XL U47 ( .A0(n24), .A1(n102), .B0(n101), .Y(n112) );
  AO21X1 U48 ( .A0(n102), .A1(n24), .B0(center_y[1]), .Y(n101) );
  AOI21X1 U49 ( .A0(n84), .A1(n41), .B0(n85), .Y(n32) );
  AOI21X1 U50 ( .A0(n109), .A1(n103), .B0(n110), .Y(n94) );
  NOR2X1 U51 ( .A(n86), .B(center_x[2]), .Y(n85) );
  NOR2X1 U52 ( .A(n111), .B(center_y[2]), .Y(n110) );
  OA21XL U53 ( .A0(n35), .A1(n28), .B0(n30), .Y(n84) );
  CLKINVX1 U54 ( .A(n40), .Y(n28) );
  OAI21XL U55 ( .A0(n40), .A1(n22), .B0(center_x[1]), .Y(n30) );
  OA21XL U56 ( .A0(n97), .A1(n29), .B0(n92), .Y(n109) );
  CLKINVX1 U57 ( .A(n102), .Y(n29) );
  OAI21XL U58 ( .A0(n102), .A1(n26), .B0(center_y[1]), .Y(n92) );
  XOR2X1 U59 ( .A(n33), .B(center_x[3]), .Y(n89) );
  XOR2X1 U60 ( .A(n95), .B(center_y[3]), .Y(n114) );
  CLKINVX1 U61 ( .A(n35), .Y(n22) );
  CLKINVX1 U62 ( .A(n34), .Y(n20) );
  CLKINVX1 U63 ( .A(n96), .Y(n24) );
  CLKINVX1 U64 ( .A(n97), .Y(n26) );
  ADDFXL U65 ( .A(N45), .B(N66), .CI(\add_54/carry[6] ), .CO(N95), .S(N94) );
  OAI31XL U66 ( .A0(n116), .A1(n115), .A2(n114), .B0(n113), .Y(N66) );
  OAI31XL U67 ( .A0(n91), .A1(n90), .A2(n89), .B0(n88), .Y(N45) );
  AOI2BB2X1 U68 ( .B0(center_y[2]), .B1(n111), .A0N(n110), .A1N(n109), .Y(n115) );
  NAND4BX1 U69 ( .AN(center_x[2]), .B(n23), .C(n91), .D(n87), .Y(n88) );
  NAND4BX1 U70 ( .AN(center_y[2]), .B(n27), .C(n116), .D(n112), .Y(n113) );
  AOI2BB2X1 U71 ( .B0(center_x[2]), .B1(n86), .A0N(n85), .A1N(n84), .Y(n90) );
  NOR2BX1 U72 ( .AN(center_r[0]), .B(n117), .Y(N84) );
  XOR2X1 U73 ( .A(n18), .B(center_r[2]), .Y(n117) );
  NAND2X1 U74 ( .A(n96), .B(n26), .Y(N61) );
  NAND2X1 U75 ( .A(n34), .B(n22), .Y(N40) );
  NOR2X1 U76 ( .A(n18), .B(center_r[0]), .Y(N83) );
  NOR2X1 U77 ( .A(n18), .B(n19), .Y(N86) );
  CLKINVX1 U78 ( .A(center_r[2]), .Y(n19) );
  XNOR2X1 U79 ( .A(now[1]), .B(now[0]), .Y(n40) );
  XNOR2X1 U80 ( .A(now[4]), .B(now[3]), .Y(n102) );
  NOR2X1 U81 ( .A(now[0]), .B(center_x[0]), .Y(n35) );
  NAND3X1 U82 ( .A(now[0]), .B(now[1]), .C(now[2]), .Y(n33) );
  NOR2X1 U83 ( .A(now[3]), .B(center_y[0]), .Y(n97) );
  NAND2X1 U84 ( .A(center_x[0]), .B(now[0]), .Y(n34) );
  NAND2X1 U85 ( .A(center_y[0]), .B(now[3]), .Y(n96) );
  XOR2X1 U86 ( .A(n93), .B(now[5]), .Y(n111) );
  NAND2X1 U87 ( .A(now[3]), .B(now[4]), .Y(n93) );
  XOR2X1 U88 ( .A(n31), .B(now[2]), .Y(n86) );
  NAND2X1 U89 ( .A(now[0]), .B(now[1]), .Y(n31) );
  NAND3X1 U90 ( .A(now[3]), .B(now[4]), .C(now[5]), .Y(n95) );
  CLKINVX1 U91 ( .A(center_r[1]), .Y(n18) );
  CLKINVX1 U92 ( .A(center_r[3]), .Y(n14) );
  AND2X1 U93 ( .A(N40), .B(N61), .Y(N89) );
  XOR2X1 U94 ( .A(N61), .B(N40), .Y(N88) );
  AND2X1 U95 ( .A(N41), .B(N62), .Y(\add_54/carry[3] ) );
  NAND2BX1 U96 ( .AN(N93), .B(N86), .Y(n8) );
  OR2X1 U97 ( .A(N94), .B(n14), .Y(n10) );
  OAI211X1 U98 ( .A0(N92), .A1(n3), .B0(n8), .C0(n10), .Y(n13) );
  NOR2BX1 U99 ( .AN(N84), .B(N91), .Y(n4) );
  OAI32X1 U100 ( .A0(n1), .A1(N83), .A2(n4), .B0(N84), .B1(n16), .Y(n7) );
  NOR2BX1 U101 ( .AN(N88), .B(center_r[0]), .Y(n6) );
  AOI21X1 U102 ( .A0(N83), .A1(n1), .B0(n4), .Y(n5) );
  OAI32X1 U103 ( .A0(n7), .A1(N89), .A2(n6), .B0(n5), .B1(n7), .Y(n12) );
  AOI32X1 U104 ( .A0(N92), .A1(n3), .A2(n8), .B0(n15), .B1(N93), .Y(n9) );
endmodule


module MapCell_1 ( now, center_x, center_y, center_r, result );
  input [5:0] now;
  input [3:0] center_x;
  input [3:0] center_y;
  input [3:0] center_r;
  output result;
  wire   N40, N41, N42, N43, N44, N45, N61, N62, N63, N64, N65, N66, N83, N84,
         N86, N95, N94, N93, N92, N91, N89, N88, \add_54/carry[6] ,
         \add_54/carry[5] , \add_54/carry[4] , \add_54/carry[3] , n1, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117;

  AOI221XL U3 ( .A0(N94), .A1(n14), .B0(n17), .B1(n10), .C0(N95), .Y(n11) );
  OAI22XL U4 ( .A0(center_x[3]), .A1(n33), .B0(n32), .B1(n23), .Y(n91) );
  OAI22XL U5 ( .A0(center_y[3]), .A1(n95), .B0(n94), .B1(n27), .Y(n116) );
  ADDFXL U6 ( .A(N43), .B(N64), .CI(\add_54/carry[4] ), .CO(\add_54/carry[5] ), 
        .S(N92) );
  NOR2X1 U7 ( .A(N62), .B(n107), .Y(N64) );
  NOR2X1 U8 ( .A(N41), .B(n82), .Y(N43) );
  XNOR2X1 U9 ( .A(N62), .B(N41), .Y(n1) );
  OA21XL U10 ( .A0(n13), .A1(n12), .B0(n11), .Y(result) );
  OA22X1 U11 ( .A0(n21), .A1(n43), .B0(n91), .B1(n42), .Y(n82) );
  XNOR2X1 U12 ( .A(n87), .B(n41), .Y(n43) );
  XOR2X1 U13 ( .A(n84), .B(n41), .Y(n42) );
  OA22X1 U14 ( .A0(n25), .A1(n105), .B0(n116), .B1(n104), .Y(n107) );
  XNOR2X1 U15 ( .A(n112), .B(n103), .Y(n105) );
  XOR2X1 U16 ( .A(n109), .B(n103), .Y(n104) );
  ADDFXL U17 ( .A(N42), .B(N63), .CI(\add_54/carry[3] ), .CO(\add_54/carry[4] ), .S(N91) );
  NOR2BX1 U18 ( .AN(N61), .B(n106), .Y(N63) );
  NOR2BX1 U19 ( .AN(N40), .B(n81), .Y(N42) );
  XOR2X1 U20 ( .A(n83), .B(n82), .Y(n81) );
  XOR2X1 U21 ( .A(n108), .B(n107), .Y(n106) );
  ADDFXL U22 ( .A(N44), .B(N65), .CI(\add_54/carry[5] ), .CO(\add_54/carry[6] ), .S(N93) );
  NOR2BX1 U23 ( .AN(n83), .B(n82), .Y(N44) );
  NOR2BX1 U24 ( .AN(n108), .B(n107), .Y(N65) );
  CLKINVX1 U25 ( .A(N91), .Y(n16) );
  NOR2BX1 U26 ( .AN(n108), .B(N61), .Y(N62) );
  NOR2BX1 U27 ( .AN(n83), .B(N40), .Y(N41) );
  CLKINVX1 U28 ( .A(n91), .Y(n21) );
  CLKINVX1 U29 ( .A(n116), .Y(n25) );
  CLKINVX1 U30 ( .A(n114), .Y(n27) );
  CLKINVX1 U31 ( .A(n89), .Y(n23) );
  OR2X1 U32 ( .A(N83), .B(n19), .Y(n3) );
  CLKINVX1 U33 ( .A(N86), .Y(n15) );
  AOI21X1 U34 ( .A0(n84), .A1(n41), .B0(n85), .Y(n32) );
  AOI21X1 U35 ( .A0(n109), .A1(n103), .B0(n110), .Y(n94) );
  CLKINVX1 U36 ( .A(n9), .Y(n17) );
  OA21XL U37 ( .A0(n35), .A1(n29), .B0(n30), .Y(n84) );
  CLKINVX1 U38 ( .A(n40), .Y(n29) );
  OAI21XL U39 ( .A0(n40), .A1(n22), .B0(center_x[1]), .Y(n30) );
  OA21XL U40 ( .A0(n97), .A1(n28), .B0(n92), .Y(n109) );
  CLKINVX1 U41 ( .A(n102), .Y(n28) );
  OAI21XL U42 ( .A0(n102), .A1(n26), .B0(center_y[1]), .Y(n92) );
  CLKINVX1 U43 ( .A(n35), .Y(n22) );
  CLKINVX1 U44 ( .A(n97), .Y(n26) );
  OAI22XL U45 ( .A0(n21), .A1(n38), .B0(n37), .B1(n91), .Y(n83) );
  XOR2X1 U46 ( .A(n36), .B(n20), .Y(n38) );
  XOR2X1 U47 ( .A(n36), .B(n35), .Y(n37) );
  XOR2X1 U48 ( .A(center_x[1]), .B(n40), .Y(n36) );
  OAI22XL U49 ( .A0(n25), .A1(n100), .B0(n99), .B1(n116), .Y(n108) );
  XOR2X1 U50 ( .A(n98), .B(n24), .Y(n100) );
  XOR2X1 U51 ( .A(n98), .B(n97), .Y(n99) );
  XOR2X1 U52 ( .A(center_y[1]), .B(n102), .Y(n98) );
  AOI21X1 U53 ( .A0(n86), .A1(center_x[2]), .B0(n85), .Y(n41) );
  AOI21X1 U54 ( .A0(n111), .A1(center_y[2]), .B0(n110), .Y(n103) );
  OAI21XL U55 ( .A0(n20), .A1(n40), .B0(n39), .Y(n87) );
  AO21X1 U56 ( .A0(n40), .A1(n20), .B0(center_x[1]), .Y(n39) );
  OAI21XL U57 ( .A0(n24), .A1(n102), .B0(n101), .Y(n112) );
  AO21X1 U58 ( .A0(n102), .A1(n24), .B0(center_y[1]), .Y(n101) );
  NOR2X1 U59 ( .A(n111), .B(center_y[2]), .Y(n110) );
  NOR2X1 U60 ( .A(n86), .B(center_x[2]), .Y(n85) );
  XOR2X1 U61 ( .A(n95), .B(center_y[3]), .Y(n114) );
  XOR2X1 U62 ( .A(n33), .B(center_x[3]), .Y(n89) );
  NAND2X1 U63 ( .A(n96), .B(n26), .Y(N61) );
  NAND2X1 U64 ( .A(n34), .B(n22), .Y(N40) );
  CLKINVX1 U65 ( .A(n34), .Y(n20) );
  CLKINVX1 U66 ( .A(n96), .Y(n24) );
  ADDFXL U67 ( .A(N45), .B(N66), .CI(\add_54/carry[6] ), .CO(N95), .S(N94) );
  OAI31XL U68 ( .A0(n116), .A1(n115), .A2(n114), .B0(n113), .Y(N66) );
  OAI31XL U69 ( .A0(n91), .A1(n90), .A2(n89), .B0(n88), .Y(N45) );
  AOI2BB2X1 U70 ( .B0(center_y[2]), .B1(n111), .A0N(n110), .A1N(n109), .Y(n115) );
  NOR2X1 U71 ( .A(n18), .B(n19), .Y(N86) );
  NAND4BX1 U72 ( .AN(center_x[2]), .B(n23), .C(n91), .D(n87), .Y(n88) );
  NAND4BX1 U73 ( .AN(center_y[2]), .B(n27), .C(n116), .D(n112), .Y(n113) );
  AOI2BB2X1 U74 ( .B0(center_x[2]), .B1(n86), .A0N(n85), .A1N(n84), .Y(n90) );
  NOR2BX1 U75 ( .AN(center_r[0]), .B(n117), .Y(N84) );
  XOR2X1 U76 ( .A(n18), .B(center_r[2]), .Y(n117) );
  CLKINVX1 U77 ( .A(center_r[2]), .Y(n19) );
  NOR2X1 U78 ( .A(n18), .B(center_r[0]), .Y(N83) );
  NOR2X1 U79 ( .A(now[0]), .B(center_x[0]), .Y(n35) );
  NOR2X1 U80 ( .A(now[3]), .B(center_y[0]), .Y(n97) );
  XNOR2X1 U81 ( .A(now[1]), .B(now[0]), .Y(n40) );
  XNOR2X1 U82 ( .A(now[4]), .B(now[3]), .Y(n102) );
  NAND3X1 U83 ( .A(now[0]), .B(now[1]), .C(now[2]), .Y(n33) );
  NAND2X1 U84 ( .A(center_x[0]), .B(now[0]), .Y(n34) );
  NAND2X1 U85 ( .A(center_y[0]), .B(now[3]), .Y(n96) );
  XOR2X1 U86 ( .A(n93), .B(now[5]), .Y(n111) );
  NAND2X1 U87 ( .A(now[3]), .B(now[4]), .Y(n93) );
  XOR2X1 U88 ( .A(n31), .B(now[2]), .Y(n86) );
  NAND2X1 U89 ( .A(now[0]), .B(now[1]), .Y(n31) );
  NAND3X1 U90 ( .A(now[3]), .B(now[4]), .C(now[5]), .Y(n95) );
  CLKINVX1 U91 ( .A(center_r[1]), .Y(n18) );
  CLKINVX1 U92 ( .A(center_r[3]), .Y(n14) );
  AND2X1 U93 ( .A(N40), .B(N61), .Y(N89) );
  XOR2X1 U94 ( .A(N61), .B(N40), .Y(N88) );
  AND2X1 U95 ( .A(N41), .B(N62), .Y(\add_54/carry[3] ) );
  NAND2BX1 U96 ( .AN(N93), .B(N86), .Y(n8) );
  OR2X1 U97 ( .A(N94), .B(n14), .Y(n10) );
  OAI211X1 U98 ( .A0(N92), .A1(n3), .B0(n8), .C0(n10), .Y(n13) );
  NOR2BX1 U99 ( .AN(N84), .B(N91), .Y(n4) );
  OAI32X1 U100 ( .A0(n1), .A1(N83), .A2(n4), .B0(N84), .B1(n16), .Y(n7) );
  NOR2BX1 U101 ( .AN(N88), .B(center_r[0]), .Y(n6) );
  AOI21X1 U102 ( .A0(N83), .A1(n1), .B0(n4), .Y(n5) );
  OAI32X1 U103 ( .A0(n7), .A1(N89), .A2(n6), .B0(n5), .B1(n7), .Y(n12) );
  AOI32X1 U104 ( .A0(N92), .A1(n3), .A2(n8), .B0(n15), .B1(N93), .Y(n9) );
endmodule


module Control_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module Control_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module Control_DW01_inc_5 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module Control_test_1 ( clk, rst, en, central, radius, mode, candidate, busy, 
        valid, now_0, now_1, now_2, center_x0, center_x1, center_x2, center_y0, 
        center_y1, center_y2, center_r0, center_r1, center_r2, tmp_0, tmp_1, 
        tmp_2, test_si1, test_so1, test_se );
  input [23:0] central;
  input [11:0] radius;
  input [1:0] mode;
  output [7:0] candidate;
  output [5:0] now_0;
  output [5:0] now_1;
  output [5:0] now_2;
  output [3:0] center_x0;
  output [3:0] center_x1;
  output [3:0] center_x2;
  output [3:0] center_y0;
  output [3:0] center_y1;
  output [3:0] center_y2;
  output [3:0] center_r0;
  output [3:0] center_r1;
  output [3:0] center_r2;
  input clk, rst, en, tmp_0, tmp_1, tmp_2, test_si1, test_se;
  output busy, valid, test_so1;
  wire   tmp_3, N90, N91, N92, N93, N94, N95, N96, N97, N110, N111, N112, N113,
         N114, N115, N116, N117, N119, N120, N121, N122, N123, N124, N125,
         N126, N164, N165, N166, N167, N168, N169, N170, N171, N173, N174,
         N175, N176, N177, N178, N179, N180, N299, N300, N301, N302, N303,
         N305, N306, N307, N308, N309, N311, N312, N313, N314, N315, N317,
         N318, N319, N320, N321, N323, N324, N325, N326, N327, N353, N354,
         N355, N356, N357, N546, N547, N548, N568, N575, N576, N577, N578,
         N579, N580, N581, N582, N583, N584, N585, N586, n4, n5, n6, n7, n8,
         n9, n10, n34, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n47,
         n48, n49, n51, n52, n53, n55, n56, n57, n59, n60, n61, n63, n64, n65,
         n67, n68, n69, n71, n72, n73, n77, n78, n80, n81, n82, n85, n87, n88,
         n89, n90, n91, n92, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n115, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n131, n132, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, N71, N70,
         \r548/carry[5] , \r548/carry[4] , \r548/carry[3] , \r548/carry[2] ,
         \r547/carry[5] , \r547/carry[4] , \r547/carry[3] , \r547/carry[2] ,
         \r546/carry[5] , \r546/carry[4] , \r546/carry[3] , \r546/carry[2] ,
         \r545/carry[2] , \r545/carry[3] , \r545/carry[4] , \r545/carry[5] ,
         \r544/carry[2] , \r544/carry[3] , \r544/carry[4] , \r544/carry[5] ,
         \r543/carry[2] , \r543/carry[3] , \r543/carry[4] , \r543/carry[5] ,
         \add_0_root_add_1_root_add_45_S2_I3_C93_aco/carry[7] ,
         \add_0_root_add_1_root_add_45_S2_I3_C93_aco/carry[6] ,
         \add_0_root_add_1_root_add_45_S2_I3_C93_aco/carry[5] ,
         \add_0_root_add_1_root_add_45_S2_I3_C93_aco/carry[4] ,
         \add_0_root_add_1_root_add_45_S2_I3_C93_aco/carry[3] ,
         \add_0_root_add_1_root_add_45_S2_I3_C93_aco/carry[2] ,
         \add_0_root_add_1_root_add_45_S2_I3_C93_aco/carry[1] , n1, n2, n3,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n35, n46, n50, n54, n58,
         n62, n66, SYNOPSYS_UNCONNECTED__0, n75, n76, n79, n83, n84, n86, n93,
         n114, n116, n117, n130, n133, n189, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252;
  wire   [2:0] state;
  wire   [1:0] reg_mode;
  assign test_so1 = tmp_3;

  Control_DW01_inc_0 add_45_S2_I2_C105 ( .A({N171, N170, N169, N168, N167, 
        N166, N165, N164}), .SUM({N180, N179, N178, N177, N176, N175, N174, 
        N173}) );
  Control_DW01_inc_1 add_45_S2_I2_C98 ( .A({N117, N116, N115, N114, N113, N112, 
        N111, N110}), .SUM({N126, N125, N124, N123, N122, N121, N120, N119})
         );
  Control_DW01_inc_5 r540 ( .A(candidate), .SUM({n4, n5, n6, n7, n8, n9, n10, 
        SYNOPSYS_UNCONNECTED__0}) );
  NAND2X1 U3 ( .A(n1), .B(n18), .Y(\r543/carry[2] ) );
  NAND2X1 U4 ( .A(n136), .B(n135), .Y(\r545/carry[2] ) );
  NAND2X1 U5 ( .A(n2), .B(n19), .Y(\r544/carry[2] ) );
  NOR2X1 U6 ( .A(n3), .B(n11), .Y(n129) );
  OA21XL U7 ( .A0(n121), .A1(n122), .B0(n18), .Y(N575) );
  OAI222XL U8 ( .A0(n213), .A1(n118), .B0(n205), .B1(n119), .C0(n150), .C1(n25), .Y(center_y2[2]) );
  OAI222XL U9 ( .A0(n209), .A1(n118), .B0(n201), .B1(n119), .C0(n146), .C1(n25), .Y(center_x2[2]) );
  OAI22XL U10 ( .A0(n201), .A1(n26), .B0(n209), .B1(n113), .Y(center_x1[2]) );
  OAI22XL U11 ( .A0(n205), .A1(n26), .B0(n213), .B1(n113), .Y(center_y1[2]) );
  OAI21XL U12 ( .A0(tmp_3), .A1(tmp_2), .B0(n132), .Y(n131) );
  OAI222XL U13 ( .A0(n223), .A1(n118), .B0(n219), .B1(n119), .C0(n140), .C1(
        n25), .Y(center_r2[0]) );
  OAI222XL U14 ( .A0(n221), .A1(n118), .B0(n217), .B1(n119), .C0(n142), .C1(
        n25), .Y(center_r2[2]) );
  OAI22XL U15 ( .A0(n199), .A1(n28), .B0(n132), .B1(candidate[0]), .Y(N110) );
  OAI22XL U16 ( .A0(n199), .A1(n27), .B0(n131), .B1(candidate[0]), .Y(N164) );
  OAI22XL U17 ( .A0(n193), .A1(n27), .B0(n131), .B1(n30), .Y(N170) );
  OAI22XL U18 ( .A0(n217), .A1(n26), .B0(n221), .B1(n113), .Y(center_r1[2]) );
  CLKINVX1 U19 ( .A(rst), .Y(n50) );
  NOR2X1 U20 ( .A(n113), .B(en), .Y(n122) );
  NOR2X1 U21 ( .A(n24), .B(n89), .Y(n113) );
  CLKINVX1 U22 ( .A(n85), .Y(n24) );
  CLKINVX1 U23 ( .A(n89), .Y(n25) );
  NOR2X1 U24 ( .A(n26), .B(en), .Y(n121) );
  AND2X2 U25 ( .A(n95), .B(n21), .Y(n111) );
  CLKINVX1 U26 ( .A(n44), .Y(n26) );
  NOR2X1 U27 ( .A(n12), .B(n15), .Y(n89) );
  NOR2X1 U28 ( .A(n94), .B(n78), .Y(n85) );
  CLKINVX1 U29 ( .A(n131), .Y(n27) );
  NAND3X1 U30 ( .A(n38), .B(n16), .C(n81), .Y(n37) );
  CLKINVX1 U31 ( .A(n132), .Y(n28) );
  CLKINVX1 U32 ( .A(n94), .Y(n23) );
  CLKINVX1 U33 ( .A(n77), .Y(n66) );
  CLKINVX1 U34 ( .A(n6), .Y(n31) );
  CLKINVX1 U35 ( .A(n7), .Y(n32) );
  CLKINVX1 U36 ( .A(n5), .Y(n30) );
  CLKINVX1 U37 ( .A(n8), .Y(n33) );
  CLKINVX1 U38 ( .A(n9), .Y(n35) );
  CLKINVX1 U39 ( .A(n10), .Y(n46) );
  AO22X1 U40 ( .A0(n62), .A1(n78), .B0(n92), .B1(n16), .Y(n91) );
  OAI21XL U41 ( .A0(n89), .A1(n13), .B0(n26), .Y(n92) );
  CLKINVX1 U42 ( .A(n80), .Y(n62) );
  NOR3X1 U43 ( .A(n23), .B(n13), .C(n77), .Y(n42) );
  NOR3X1 U44 ( .A(n13), .B(n66), .C(n23), .Y(n43) );
  AND2X2 U45 ( .A(n111), .B(n44), .Y(n100) );
  NAND4X1 U46 ( .A(N547), .B(n115), .C(n24), .D(n17), .Y(n95) );
  NAND2X1 U47 ( .A(n13), .B(n16), .Y(n115) );
  NOR2X1 U48 ( .A(n14), .B(en), .Y(n81) );
  AND2X2 U49 ( .A(n111), .B(n112), .Y(n98) );
  OAI21XL U50 ( .A0(n113), .A1(n14), .B0(n25), .Y(n112) );
  OAI22XL U51 ( .A0(n21), .A1(n58), .B0(en), .B1(n15), .Y(n188) );
  OAI22XL U52 ( .A0(n21), .A1(n54), .B0(en), .B1(n12), .Y(n190) );
  NOR3X1 U53 ( .A(n13), .B(en), .C(n120), .Y(N568) );
  CLKBUFX3 U54 ( .A(n252), .Y(n20) );
  NOR2X1 U55 ( .A(n58), .B(n54), .Y(n106) );
  NAND2X1 U56 ( .A(n120), .B(n17), .Y(busy) );
  NOR2X1 U57 ( .A(reg_mode[0]), .B(reg_mode[1]), .Y(n44) );
  OAI222XL U58 ( .A0(n211), .A1(n118), .B0(n203), .B1(n119), .C0(n144), .C1(
        n25), .Y(center_x2[0]) );
  OAI222XL U59 ( .A0(n215), .A1(n118), .B0(n207), .B1(n119), .C0(n148), .C1(
        n25), .Y(center_y2[0]) );
  OA21XL U60 ( .A0(n85), .A1(n191), .B0(n26), .Y(n119) );
  OAI22XL U61 ( .A0(n207), .A1(n26), .B0(n215), .B1(n113), .Y(center_y1[0]) );
  OAI22XL U62 ( .A0(n203), .A1(n26), .B0(n211), .B1(n113), .Y(center_x1[0]) );
  OAI22XL U63 ( .A0(n206), .A1(n26), .B0(n214), .B1(n113), .Y(center_y1[1]) );
  OAI22XL U64 ( .A0(n202), .A1(n26), .B0(n210), .B1(n113), .Y(center_x1[1]) );
  OAI22XL U65 ( .A0(n200), .A1(n26), .B0(n208), .B1(n113), .Y(center_x1[3]) );
  OAI22XL U66 ( .A0(n204), .A1(n26), .B0(n212), .B1(n113), .Y(center_y1[3]) );
  NOR2X1 U67 ( .A(n12), .B(reg_mode[0]), .Y(n94) );
  NOR2X1 U68 ( .A(n15), .B(reg_mode[1]), .Y(n78) );
  OAI222XL U69 ( .A0(n210), .A1(n118), .B0(n202), .B1(n119), .C0(n145), .C1(
        n25), .Y(center_x2[1]) );
  OAI222XL U70 ( .A0(n214), .A1(n118), .B0(n206), .B1(n119), .C0(n149), .C1(
        n25), .Y(center_y2[1]) );
  OAI222XL U71 ( .A0(n208), .A1(n118), .B0(n200), .B1(n119), .C0(n147), .C1(
        n25), .Y(center_x2[3]) );
  OAI222XL U72 ( .A0(n212), .A1(n118), .B0(n204), .B1(n119), .C0(n151), .C1(
        n25), .Y(center_y2[3]) );
  NAND2X1 U73 ( .A(n191), .B(n24), .Y(n118) );
  OAI22XL U74 ( .A0(n197), .A1(n27), .B0(n131), .B1(n35), .Y(N166) );
  OAI22XL U75 ( .A0(n198), .A1(n27), .B0(n131), .B1(n46), .Y(N165) );
  NAND2X1 U76 ( .A(tmp_3), .B(tmp_2), .Y(n132) );
  OAI22XL U77 ( .A0(n192), .A1(n27), .B0(n131), .B1(n29), .Y(N171) );
  OAI22XL U78 ( .A0(n192), .A1(n28), .B0(n29), .B1(n132), .Y(N117) );
  CLKINVX1 U79 ( .A(n4), .Y(n29) );
  OAI22XL U80 ( .A0(n218), .A1(n26), .B0(n222), .B1(n113), .Y(center_r1[1]) );
  OAI222XL U81 ( .A0(n222), .A1(n118), .B0(n218), .B1(n119), .C0(n141), .C1(
        n25), .Y(center_r2[1]) );
  OAI222XL U82 ( .A0(n34), .A1(n29), .B0(n36), .B1(n37), .C0(n192), .C1(n38), 
        .Y(n224) );
  AOI211X1 U83 ( .A0(n39), .A1(N117), .B0(n40), .C0(n41), .Y(n36) );
  AO22X1 U84 ( .A0(N171), .A1(n42), .B0(N180), .B1(n43), .Y(n41) );
  AO22X1 U85 ( .A0(N97), .A1(n44), .B0(N126), .B1(n45), .Y(n40) );
  ADDFXL U86 ( .A(tmp_0), .B(tmp_1), .CI(tmp_2), .CO(N71), .S(N70) );
  ADDFXL U87 ( .A(candidate[1]), .B(N71), .CI(
        \add_0_root_add_1_root_add_45_S2_I3_C93_aco/carry[1] ), .CO(
        \add_0_root_add_1_root_add_45_S2_I3_C93_aco/carry[2] ), .S(N91) );
  OAI222XL U88 ( .A0(n34), .A1(n30), .B0(n47), .B1(n37), .C0(n193), .C1(n38), 
        .Y(n225) );
  AOI211X1 U89 ( .A0(n39), .A1(N116), .B0(n48), .C0(n49), .Y(n47) );
  AO22X1 U90 ( .A0(N96), .A1(n44), .B0(N125), .B1(n45), .Y(n48) );
  AO22X1 U91 ( .A0(N170), .A1(n42), .B0(N179), .B1(n43), .Y(n49) );
  OAI22XL U92 ( .A0(n194), .A1(n27), .B0(n131), .B1(n31), .Y(N169) );
  OAI22XL U93 ( .A0(n195), .A1(n27), .B0(n131), .B1(n32), .Y(N168) );
  OAI22XL U94 ( .A0(n196), .A1(n27), .B0(n131), .B1(n33), .Y(N167) );
  OAI22XL U95 ( .A0(n194), .A1(n28), .B0(n132), .B1(n31), .Y(N115) );
  OAI22XL U96 ( .A0(n195), .A1(n28), .B0(n132), .B1(n32), .Y(N114) );
  OAI22XL U97 ( .A0(n193), .A1(n28), .B0(n132), .B1(n30), .Y(N116) );
  OAI22XL U98 ( .A0(n196), .A1(n28), .B0(n132), .B1(n33), .Y(N113) );
  OAI22XL U99 ( .A0(n197), .A1(n28), .B0(n132), .B1(n35), .Y(N112) );
  OAI22XL U100 ( .A0(n198), .A1(n28), .B0(n132), .B1(n46), .Y(N111) );
  OAI22XL U101 ( .A0(n219), .A1(n26), .B0(n223), .B1(n113), .Y(center_r1[0])
         );
  XOR2X1 U102 ( .A(tmp_0), .B(tmp_1), .Y(n77) );
  NAND2X1 U103 ( .A(tmp_1), .B(tmp_0), .Y(n80) );
  OAI222XL U104 ( .A0(n220), .A1(n118), .B0(n216), .B1(n119), .C0(n143), .C1(
        n25), .Y(center_r2[3]) );
  NAND3X1 U105 ( .A(n87), .B(n81), .C(n88), .Y(n38) );
  AOI2BB2X1 U106 ( .B0(tmp_0), .B1(n44), .A0N(n23), .A1N(n66), .Y(n87) );
  AOI211X1 U107 ( .A0(n89), .A1(n90), .B0(n91), .C0(valid), .Y(n88) );
  OAI2BB2XL U108 ( .B0(tmp_2), .B1(n80), .A0N(n77), .A1N(tmp_2), .Y(n90) );
  AOI32X1 U109 ( .A0(state[0]), .A1(n38), .A2(n81), .B0(n82), .B1(n22), .Y(n34) );
  OAI21XL U110 ( .A0(n85), .A1(n191), .B0(n25), .Y(n82) );
  CLKINVX1 U111 ( .A(n37), .Y(n22) );
  OAI222XL U112 ( .A0(n34), .A1(n31), .B0(n51), .B1(n37), .C0(n194), .C1(n38), 
        .Y(n226) );
  AOI211X1 U113 ( .A0(n39), .A1(N115), .B0(n52), .C0(n53), .Y(n51) );
  AO22X1 U114 ( .A0(N95), .A1(n44), .B0(N124), .B1(n45), .Y(n52) );
  AO22X1 U115 ( .A0(N169), .A1(n42), .B0(N178), .B1(n43), .Y(n53) );
  OAI222XL U116 ( .A0(n34), .A1(n35), .B0(n63), .B1(n37), .C0(n197), .C1(n38), 
        .Y(n229) );
  AOI211X1 U117 ( .A0(n39), .A1(N112), .B0(n64), .C0(n65), .Y(n63) );
  AO22X1 U118 ( .A0(N92), .A1(n44), .B0(N121), .B1(n45), .Y(n64) );
  AO22X1 U119 ( .A0(N166), .A1(n42), .B0(N175), .B1(n43), .Y(n65) );
  OAI222XL U120 ( .A0(n34), .A1(n46), .B0(n67), .B1(n37), .C0(n198), .C1(n38), 
        .Y(n230) );
  AOI211X1 U121 ( .A0(n39), .A1(N111), .B0(n68), .C0(n69), .Y(n67) );
  AO22X1 U122 ( .A0(N91), .A1(n44), .B0(N120), .B1(n45), .Y(n68) );
  AO22X1 U123 ( .A0(N165), .A1(n42), .B0(N174), .B1(n43), .Y(n69) );
  OAI222XL U124 ( .A0(n34), .A1(candidate[0]), .B0(n71), .B1(n37), .C0(n199), 
        .C1(n38), .Y(n231) );
  AOI211X1 U125 ( .A0(n39), .A1(N110), .B0(n72), .C0(n73), .Y(n71) );
  AO22X1 U126 ( .A0(N90), .A1(n44), .B0(N119), .B1(n45), .Y(n72) );
  AO22X1 U127 ( .A0(N164), .A1(n42), .B0(N173), .B1(n43), .Y(n73) );
  OAI22XL U128 ( .A0(n216), .A1(n26), .B0(n220), .B1(n113), .Y(center_r1[3])
         );
  OAI211X1 U129 ( .A0(n95), .A1(n139), .B0(n96), .C0(n97), .Y(n232) );
  AOI21X1 U130 ( .A0(N357), .A1(n98), .B0(n99), .Y(n97) );
  NAND2X1 U131 ( .A(N315), .B(n100), .Y(n96) );
  OAI222XL U132 ( .A0(n34), .A1(n32), .B0(n55), .B1(n37), .C0(n195), .C1(n38), 
        .Y(n227) );
  AOI211X1 U133 ( .A0(n39), .A1(N114), .B0(n56), .C0(n57), .Y(n55) );
  AO22X1 U134 ( .A0(N94), .A1(n44), .B0(N123), .B1(n45), .Y(n56) );
  AO22X1 U135 ( .A0(N168), .A1(n42), .B0(N177), .B1(n43), .Y(n57) );
  OAI222XL U136 ( .A0(n34), .A1(n33), .B0(n59), .B1(n37), .C0(n196), .C1(n38), 
        .Y(n228) );
  AOI211X1 U137 ( .A0(n39), .A1(N113), .B0(n60), .C0(n61), .Y(n59) );
  AO22X1 U138 ( .A0(N93), .A1(n44), .B0(N122), .B1(n45), .Y(n60) );
  AO22X1 U139 ( .A0(N167), .A1(n42), .B0(N176), .B1(n43), .Y(n61) );
  OAI21XL U140 ( .A0(n95), .A1(n137), .B0(n103), .Y(n234) );
  AOI22X1 U141 ( .A0(N354), .A1(n98), .B0(N312), .B1(n100), .Y(n103) );
  OAI21XL U142 ( .A0(n95), .A1(n134), .B0(n110), .Y(n237) );
  AOI22X1 U143 ( .A0(N356), .A1(n98), .B0(N314), .B1(n100), .Y(n110) );
  AND3X2 U144 ( .A(n78), .B(n191), .C(n62), .Y(n45) );
  ADDHXL U145 ( .A(now_0[1]), .B(now_0[0]), .CO(\r546/carry[2] ), .S(N317) );
  ADDHXL U146 ( .A(now_1[1]), .B(now_1[0]), .CO(\r547/carry[2] ), .S(N323) );
  ADDHXL U147 ( .A(now_2[1]), .B(now_2[0]), .CO(\r548/carry[2] ), .S(N353) );
  ADDHXL U148 ( .A(now_0[3]), .B(\r546/carry[3] ), .CO(\r546/carry[4] ), .S(
        N319) );
  ADDHXL U149 ( .A(now_2[3]), .B(\r548/carry[3] ), .CO(\r548/carry[4] ), .S(
        N355) );
  ADDHXL U150 ( .A(now_1[3]), .B(\r547/carry[3] ), .CO(\r547/carry[4] ), .S(
        N325) );
  ADDHXL U151 ( .A(now_0[2]), .B(\r546/carry[2] ), .CO(\r546/carry[3] ), .S(
        N318) );
  ADDHXL U152 ( .A(now_2[2]), .B(\r548/carry[2] ), .CO(\r548/carry[3] ), .S(
        N354) );
  ADDHXL U153 ( .A(now_1[2]), .B(\r547/carry[2] ), .CO(\r547/carry[3] ), .S(
        N324) );
  AND2X2 U154 ( .A(n124), .B(n21), .Y(N547) );
  XNOR2X1 U155 ( .A(n14), .B(state[0]), .Y(n124) );
  AND3X2 U156 ( .A(n78), .B(n191), .C(n80), .Y(n39) );
  OR4X1 U157 ( .A(now_0[0]), .B(n85), .C(now_0[2]), .D(now_0[4]), .Y(n128) );
  NAND2X1 U158 ( .A(n21), .B(n125), .Y(N546) );
  NAND4X1 U159 ( .A(now_0[3]), .B(now_0[1]), .C(now_0[5]), .D(n126), .Y(n125)
         );
  AOI211X1 U160 ( .A0(n127), .A1(n128), .B0(n14), .C0(state[0]), .Y(n126) );
  OAI211X1 U161 ( .A0(n44), .A1(n89), .B0(now_0[0]), .C0(n129), .Y(n127) );
  AO22X1 U162 ( .A0(N303), .A1(n121), .B0(N321), .B1(n122), .Y(N580) );
  AO22X1 U163 ( .A0(N309), .A1(n121), .B0(N327), .B1(n122), .Y(N586) );
  OAI2BB1X1 U164 ( .A0N(n19), .A1N(n121), .B0(n123), .Y(N581) );
  AOI32X1 U165 ( .A0(n58), .A1(n54), .A2(en), .B0(n19), .B1(n122), .Y(n123) );
  AO22X1 U166 ( .A0(N302), .A1(n121), .B0(N320), .B1(n122), .Y(N579) );
  AO22X1 U167 ( .A0(N301), .A1(n121), .B0(N319), .B1(n122), .Y(N578) );
  AO22X1 U168 ( .A0(N300), .A1(n121), .B0(N318), .B1(n122), .Y(N577) );
  AO22X1 U169 ( .A0(N299), .A1(n121), .B0(N317), .B1(n122), .Y(N576) );
  AO22X1 U170 ( .A0(N308), .A1(n121), .B0(N326), .B1(n122), .Y(N585) );
  AO22X1 U171 ( .A0(N307), .A1(n121), .B0(N325), .B1(n122), .Y(N584) );
  AO22X1 U172 ( .A0(N306), .A1(n121), .B0(N324), .B1(n122), .Y(N583) );
  AO22X1 U173 ( .A0(N305), .A1(n121), .B0(N323), .B1(n122), .Y(N582) );
  OAI211X1 U174 ( .A0(n95), .A1(n138), .B0(n101), .C0(n102), .Y(n233) );
  AOI21X1 U175 ( .A0(N355), .A1(n98), .B0(n99), .Y(n102) );
  NAND2X1 U176 ( .A(N313), .B(n100), .Y(n101) );
  OAI211X1 U177 ( .A0(n95), .A1(n136), .B0(n104), .C0(n105), .Y(n235) );
  NAND2X1 U178 ( .A(N311), .B(n100), .Y(n104) );
  AOI2BB2X1 U179 ( .B0(N353), .B1(n98), .A0N(n106), .A1N(n21), .Y(n105) );
  OAI211X1 U180 ( .A0(n95), .A1(n135), .B0(n107), .C0(n108), .Y(n236) );
  NAND2X1 U181 ( .A(n135), .B(n100), .Y(n107) );
  AOI21X1 U182 ( .A0(n135), .A1(n98), .B0(n99), .Y(n108) );
  ADDHXL U183 ( .A(now_0[4]), .B(\r546/carry[4] ), .CO(\r546/carry[5] ), .S(
        N320) );
  ADDHXL U184 ( .A(now_2[4]), .B(\r548/carry[4] ), .CO(\r548/carry[5] ), .S(
        N356) );
  ADDHXL U185 ( .A(now_1[4]), .B(\r547/carry[4] ), .CO(\r547/carry[5] ), .S(
        N326) );
  NOR2X1 U186 ( .A(state[1]), .B(state[0]), .Y(n120) );
  OAI2BB2XL U187 ( .B0(n211), .B1(en), .A0N(central[12]), .A1N(en), .Y(n172)
         );
  OAI2BB2XL U188 ( .B0(n210), .B1(en), .A0N(central[13]), .A1N(en), .Y(n173)
         );
  OAI2BB2XL U189 ( .B0(n209), .B1(en), .A0N(central[14]), .A1N(en), .Y(n174)
         );
  OAI2BB2XL U190 ( .B0(n208), .B1(en), .A0N(central[15]), .A1N(en), .Y(n175)
         );
  OAI2BB2XL U191 ( .B0(n207), .B1(en), .A0N(central[16]), .A1N(en), .Y(n176)
         );
  OAI2BB2XL U192 ( .B0(n206), .B1(en), .A0N(central[17]), .A1N(en), .Y(n177)
         );
  OAI2BB2XL U193 ( .B0(n205), .B1(en), .A0N(central[18]), .A1N(en), .Y(n178)
         );
  OAI2BB2XL U194 ( .B0(n204), .B1(en), .A0N(central[19]), .A1N(en), .Y(n179)
         );
  OAI2BB2XL U195 ( .B0(n203), .B1(en), .A0N(central[20]), .A1N(en), .Y(n180)
         );
  OAI2BB2XL U196 ( .B0(n202), .B1(en), .A0N(central[21]), .A1N(en), .Y(n181)
         );
  OAI2BB2XL U197 ( .B0(n201), .B1(en), .A0N(central[22]), .A1N(en), .Y(n182)
         );
  OAI2BB2XL U198 ( .B0(n200), .B1(en), .A0N(central[23]), .A1N(en), .Y(n183)
         );
  OAI2BB2XL U199 ( .B0(n148), .B1(en), .A0N(central[0]), .A1N(en), .Y(n184) );
  OAI2BB2XL U200 ( .B0(n149), .B1(en), .A0N(central[1]), .A1N(en), .Y(n185) );
  OAI2BB2XL U201 ( .B0(n150), .B1(en), .A0N(central[2]), .A1N(en), .Y(n186) );
  OAI2BB2XL U202 ( .B0(n151), .B1(en), .A0N(central[3]), .A1N(en), .Y(n187) );
  OAI2BB2XL U203 ( .B0(n223), .B1(en), .A0N(radius[4]), .A1N(en), .Y(n152) );
  OAI2BB2XL U204 ( .B0(n222), .B1(en), .A0N(radius[5]), .A1N(en), .Y(n153) );
  OAI2BB2XL U205 ( .B0(n221), .B1(en), .A0N(radius[6]), .A1N(en), .Y(n154) );
  OAI2BB2XL U206 ( .B0(n220), .B1(en), .A0N(radius[7]), .A1N(en), .Y(n155) );
  OAI2BB2XL U207 ( .B0(n219), .B1(en), .A0N(radius[8]), .A1N(en), .Y(n156) );
  OAI2BB2XL U208 ( .B0(n218), .B1(en), .A0N(radius[9]), .A1N(en), .Y(n157) );
  OAI2BB2XL U209 ( .B0(n217), .B1(en), .A0N(radius[10]), .A1N(en), .Y(n158) );
  OAI2BB2XL U210 ( .B0(n216), .B1(en), .A0N(radius[11]), .A1N(en), .Y(n159) );
  OAI2BB2XL U211 ( .B0(n140), .B1(en), .A0N(radius[0]), .A1N(en), .Y(n160) );
  OAI2BB2XL U212 ( .B0(n141), .B1(en), .A0N(radius[1]), .A1N(en), .Y(n161) );
  OAI2BB2XL U213 ( .B0(n142), .B1(en), .A0N(radius[2]), .A1N(en), .Y(n162) );
  OAI2BB2XL U214 ( .B0(n143), .B1(en), .A0N(radius[3]), .A1N(en), .Y(n163) );
  OAI2BB2XL U215 ( .B0(n144), .B1(en), .A0N(central[4]), .A1N(en), .Y(n164) );
  OAI2BB2XL U216 ( .B0(n145), .B1(en), .A0N(central[5]), .A1N(en), .Y(n165) );
  OAI2BB2XL U217 ( .B0(n146), .B1(en), .A0N(central[6]), .A1N(en), .Y(n166) );
  OAI2BB2XL U218 ( .B0(n147), .B1(en), .A0N(central[7]), .A1N(en), .Y(n167) );
  OAI2BB2XL U219 ( .B0(n215), .B1(en), .A0N(central[8]), .A1N(en), .Y(n168) );
  OAI2BB2XL U220 ( .B0(n214), .B1(en), .A0N(central[9]), .A1N(en), .Y(n169) );
  OAI2BB2XL U221 ( .B0(n213), .B1(en), .A0N(central[10]), .A1N(en), .Y(n170)
         );
  OAI2BB2XL U222 ( .B0(n212), .B1(en), .A0N(central[11]), .A1N(en), .Y(n171)
         );
  AND3X2 U223 ( .A(n81), .B(state[0]), .C(n17), .Y(N548) );
  AND2X2 U224 ( .A(n109), .B(en), .Y(n99) );
  XNOR2X1 U225 ( .A(n54), .B(mode[0]), .Y(n109) );
  CLKINVX1 U226 ( .A(mode[1]), .Y(n54) );
  CLKINVX1 U227 ( .A(mode[0]), .Y(n58) );
  CLKINVX1 U228 ( .A(en), .Y(n21) );
  XOR2X1 U229 ( .A(candidate[7]), .B(
        \add_0_root_add_1_root_add_45_S2_I3_C93_aco/carry[7] ), .Y(N97) );
  AND2X1 U230 ( .A(\add_0_root_add_1_root_add_45_S2_I3_C93_aco/carry[6] ), .B(
        candidate[6]), .Y(
        \add_0_root_add_1_root_add_45_S2_I3_C93_aco/carry[7] ) );
  XOR2X1 U231 ( .A(candidate[6]), .B(
        \add_0_root_add_1_root_add_45_S2_I3_C93_aco/carry[6] ), .Y(N96) );
  AND2X1 U232 ( .A(\add_0_root_add_1_root_add_45_S2_I3_C93_aco/carry[5] ), .B(
        candidate[5]), .Y(
        \add_0_root_add_1_root_add_45_S2_I3_C93_aco/carry[6] ) );
  XOR2X1 U233 ( .A(candidate[5]), .B(
        \add_0_root_add_1_root_add_45_S2_I3_C93_aco/carry[5] ), .Y(N95) );
  AND2X1 U234 ( .A(\add_0_root_add_1_root_add_45_S2_I3_C93_aco/carry[4] ), .B(
        candidate[4]), .Y(
        \add_0_root_add_1_root_add_45_S2_I3_C93_aco/carry[5] ) );
  XOR2X1 U235 ( .A(candidate[4]), .B(
        \add_0_root_add_1_root_add_45_S2_I3_C93_aco/carry[4] ), .Y(N94) );
  AND2X1 U236 ( .A(\add_0_root_add_1_root_add_45_S2_I3_C93_aco/carry[3] ), .B(
        candidate[3]), .Y(
        \add_0_root_add_1_root_add_45_S2_I3_C93_aco/carry[4] ) );
  XOR2X1 U237 ( .A(candidate[3]), .B(
        \add_0_root_add_1_root_add_45_S2_I3_C93_aco/carry[3] ), .Y(N93) );
  AND2X1 U238 ( .A(\add_0_root_add_1_root_add_45_S2_I3_C93_aco/carry[2] ), .B(
        candidate[2]), .Y(
        \add_0_root_add_1_root_add_45_S2_I3_C93_aco/carry[3] ) );
  XOR2X1 U239 ( .A(candidate[2]), .B(
        \add_0_root_add_1_root_add_45_S2_I3_C93_aco/carry[2] ), .Y(N92) );
  AND2X1 U240 ( .A(candidate[0]), .B(N70), .Y(
        \add_0_root_add_1_root_add_45_S2_I3_C93_aco/carry[1] ) );
  XOR2X1 U241 ( .A(N70), .B(candidate[0]), .Y(N90) );
  XOR2X1 U242 ( .A(now_2[5]), .B(\r545/carry[5] ), .Y(N315) );
  AND2X1 U243 ( .A(\r545/carry[4] ), .B(now_2[4]), .Y(\r545/carry[5] ) );
  XOR2X1 U244 ( .A(now_2[4]), .B(\r545/carry[4] ), .Y(N314) );
  AND2X1 U245 ( .A(\r545/carry[3] ), .B(now_2[3]), .Y(\r545/carry[4] ) );
  XOR2X1 U246 ( .A(now_2[3]), .B(\r545/carry[3] ), .Y(N313) );
  AND2X1 U247 ( .A(\r545/carry[2] ), .B(now_2[2]), .Y(\r545/carry[3] ) );
  XOR2X1 U248 ( .A(now_2[2]), .B(\r545/carry[2] ), .Y(N312) );
  XNOR2X1 U249 ( .A(now_2[0]), .B(now_2[1]), .Y(N311) );
  XOR2X1 U250 ( .A(now_0[5]), .B(\r543/carry[5] ), .Y(N303) );
  AND2X1 U251 ( .A(\r543/carry[4] ), .B(now_0[4]), .Y(\r543/carry[5] ) );
  XOR2X1 U252 ( .A(now_0[4]), .B(\r543/carry[4] ), .Y(N302) );
  AND2X1 U253 ( .A(\r543/carry[3] ), .B(now_0[3]), .Y(\r543/carry[4] ) );
  XOR2X1 U254 ( .A(now_0[3]), .B(\r543/carry[3] ), .Y(N301) );
  AND2X1 U255 ( .A(\r543/carry[2] ), .B(now_0[2]), .Y(\r543/carry[3] ) );
  XOR2X1 U256 ( .A(now_0[2]), .B(\r543/carry[2] ), .Y(N300) );
  XNOR2X1 U257 ( .A(now_0[0]), .B(now_0[1]), .Y(N299) );
  XOR2X1 U258 ( .A(now_1[5]), .B(\r544/carry[5] ), .Y(N309) );
  AND2X1 U259 ( .A(\r544/carry[4] ), .B(now_1[4]), .Y(\r544/carry[5] ) );
  XOR2X1 U260 ( .A(now_1[4]), .B(\r544/carry[4] ), .Y(N308) );
  AND2X1 U261 ( .A(\r544/carry[3] ), .B(now_1[3]), .Y(\r544/carry[4] ) );
  XOR2X1 U262 ( .A(now_1[3]), .B(\r544/carry[3] ), .Y(N307) );
  AND2X1 U263 ( .A(\r544/carry[2] ), .B(now_1[2]), .Y(\r544/carry[3] ) );
  XOR2X1 U264 ( .A(now_1[2]), .B(\r544/carry[2] ), .Y(N306) );
  XNOR2X1 U265 ( .A(now_1[0]), .B(now_1[1]), .Y(N305) );
  XOR2X1 U266 ( .A(\r546/carry[5] ), .B(now_0[5]), .Y(N321) );
  XOR2X1 U267 ( .A(\r547/carry[5] ), .B(now_1[5]), .Y(N327) );
  XOR2X1 U268 ( .A(\r548/carry[5] ), .B(now_2[5]), .Y(N357) );
  SDFFRXL \Cr_reg[3]  ( .D(n163), .SI(n246), .SE(test_se), .CK(clk), .RN(n20), 
        .Q(n248), .QN(n143) );
  SDFFRXL \state_reg[2]  ( .D(N548), .SI(tmp_2), .SE(test_se), .CK(clk), .RN(
        n20), .Q(valid), .QN(n17) );
  SDFFRXL \Br_reg[3]  ( .D(n155), .SI(n243), .SE(test_se), .CK(clk), .RN(n20), 
        .Q(n247), .QN(n220) );
  SDFFRXL \Ar_reg[3]  ( .D(n159), .SI(center_r0[2]), .SE(test_se), .CK(clk), 
        .RN(n20), .Q(center_r0[3]), .QN(n216) );
  SDFFRXL \state_reg[1]  ( .D(N547), .SI(state[0]), .SE(test_se), .CK(clk), 
        .RN(n251), .Q(state[1]), .QN(n14) );
  SDFFRXL \candidate_reg[7]  ( .D(n224), .SI(candidate[6]), .SE(test_se), .CK(
        clk), .RN(n20), .Q(candidate[7]), .QN(n192) );
  SDFFRXL \Cr_reg[2]  ( .D(n162), .SI(n245), .SE(test_se), .CK(clk), .RN(n20), 
        .Q(n246), .QN(n142) );
  SDFFRXL \Cr_reg[1]  ( .D(n161), .SI(n244), .SE(test_se), .CK(clk), .RN(n20), 
        .Q(n245), .QN(n141) );
  SDFFRXL \Cr_reg[0]  ( .D(n160), .SI(n116), .SE(test_se), .CK(clk), .RN(n20), 
        .Q(n244), .QN(n140) );
  SDFFRXL \Br_reg[2]  ( .D(n154), .SI(n242), .SE(test_se), .CK(clk), .RN(n20), 
        .Q(n243), .QN(n221) );
  SDFFRXL \Br_reg[1]  ( .D(n153), .SI(n241), .SE(test_se), .CK(clk), .RN(n20), 
        .Q(n242), .QN(n222) );
  SDFFRXL \Br_reg[0]  ( .D(n152), .SI(center_y0[3]), .SE(test_se), .CK(clk), 
        .RN(n20), .Q(n241), .QN(n223) );
  SDFFRXL \Ar_reg[2]  ( .D(n158), .SI(center_r0[1]), .SE(test_se), .CK(clk), 
        .RN(n20), .Q(center_r0[2]), .QN(n217) );
  SDFFRXL \Ar_reg[1]  ( .D(n157), .SI(center_r0[0]), .SE(test_se), .CK(clk), 
        .RN(n20), .Q(center_r0[1]), .QN(n218) );
  SDFFRXL \Ar_reg[0]  ( .D(n156), .SI(test_si1), .SE(test_se), .CK(clk), .RN(
        n20), .Q(center_r0[0]), .QN(n219) );
  SDFFRXL \candidate_reg[6]  ( .D(n225), .SI(candidate[5]), .SE(test_se), .CK(
        clk), .RN(n250), .Q(candidate[6]), .QN(n193) );
  SDFFRXL \candidate_reg[2]  ( .D(n229), .SI(candidate[1]), .SE(test_se), .CK(
        clk), .RN(n20), .Q(candidate[2]), .QN(n197) );
  SDFFRXL \candidate_reg[3]  ( .D(n228), .SI(candidate[2]), .SE(test_se), .CK(
        clk), .RN(n20), .Q(candidate[3]), .QN(n196) );
  SDFFRXL \candidate_reg[4]  ( .D(n227), .SI(candidate[3]), .SE(test_se), .CK(
        clk), .RN(n20), .Q(candidate[4]), .QN(n195) );
  SDFFRXL \candidate_reg[5]  ( .D(n226), .SI(candidate[4]), .SE(test_se), .CK(
        clk), .RN(n20), .Q(candidate[5]), .QN(n194) );
  SDFFRXL \state_reg[0]  ( .D(N546), .SI(reg_mode[1]), .SE(test_se), .CK(clk), 
        .RN(n20), .Q(state[0]), .QN(n16) );
  SDFFRXL \Cy_reg[3]  ( .D(n187), .SI(n239), .SE(test_se), .CK(clk), .RN(n252), 
        .Q(n240), .QN(n151) );
  SDFFRXL \Cy_reg[2]  ( .D(n186), .SI(n238), .SE(test_se), .CK(clk), .RN(n20), 
        .Q(n239), .QN(n150) );
  SDFFRXL \Cy_reg[1]  ( .D(n185), .SI(n93), .SE(test_se), .CK(clk), .RN(n20), 
        .Q(n238), .QN(n149) );
  SDFFRXL \Cx_reg[3]  ( .D(n167), .SI(n86), .SE(test_se), .CK(clk), .RN(n20), 
        .Q(n189), .QN(n147) );
  SDFFRXL \Cx_reg[1]  ( .D(n165), .SI(n84), .SE(test_se), .CK(clk), .RN(n251), 
        .Q(n133), .QN(n145) );
  SDFFRXL \Bx_reg[3]  ( .D(n175), .SI(n83), .SE(test_se), .CK(clk), .RN(n250), 
        .Q(n130), .QN(n208) );
  SDFFRXL \Bx_reg[1]  ( .D(n173), .SI(n79), .SE(test_se), .CK(clk), .RN(n20), 
        .Q(n117), .QN(n210) );
  SDFFRXL \By_reg[3]  ( .D(n171), .SI(n76), .SE(test_se), .CK(clk), .RN(n20), 
        .Q(n116), .QN(n212) );
  SDFFRXL \By_reg[1]  ( .D(n169), .SI(n75), .SE(test_se), .CK(clk), .RN(n20), 
        .Q(n114), .QN(n214) );
  SDFFRXL tmp_3_reg ( .D(tmp_2), .SI(state[1]), .SE(test_se), .CK(clk), .RN(
        n20), .Q(tmp_3) );
  SDFFRXL \candidate_reg[1]  ( .D(n230), .SI(candidate[0]), .SE(test_se), .CK(
        clk), .RN(n20), .Q(candidate[1]), .QN(n198) );
  SDFFRXL \candidate_reg[0]  ( .D(n231), .SI(n240), .SE(test_se), .CK(clk), 
        .RN(n252), .Q(candidate[0]), .QN(n199) );
  SDFFRXL \Cy_reg[0]  ( .D(n184), .SI(n189), .SE(test_se), .CK(clk), .RN(n20), 
        .Q(n93), .QN(n148) );
  SDFFRXL \Cx_reg[2]  ( .D(n166), .SI(n133), .SE(test_se), .CK(clk), .RN(n251), 
        .Q(n86), .QN(n146) );
  SDFFRXL \Cx_reg[0]  ( .D(n164), .SI(n248), .SE(test_se), .CK(clk), .RN(n20), 
        .Q(n84), .QN(n144) );
  SDFFRXL \Bx_reg[2]  ( .D(n174), .SI(n117), .SE(test_se), .CK(clk), .RN(n20), 
        .Q(n83), .QN(n209) );
  SDFFRXL \Bx_reg[0]  ( .D(n172), .SI(n247), .SE(test_se), .CK(clk), .RN(n20), 
        .Q(n79), .QN(n211) );
  SDFFRXL \By_reg[2]  ( .D(n170), .SI(n114), .SE(test_se), .CK(clk), .RN(n250), 
        .Q(n76), .QN(n213) );
  SDFFRXL \By_reg[0]  ( .D(n168), .SI(n130), .SE(test_se), .CK(clk), .RN(n252), 
        .Q(n75), .QN(n215) );
  SDFFRXL \Ax_reg[3]  ( .D(n183), .SI(center_x0[2]), .SE(test_se), .CK(clk), 
        .RN(n251), .Q(center_x0[3]), .QN(n200) );
  SDFFRXL \Ax_reg[2]  ( .D(n182), .SI(center_x0[1]), .SE(test_se), .CK(clk), 
        .RN(n20), .Q(center_x0[2]), .QN(n201) );
  SDFFRXL \Ax_reg[1]  ( .D(n181), .SI(center_x0[0]), .SE(test_se), .CK(clk), 
        .RN(n20), .Q(center_x0[1]), .QN(n202) );
  SDFFRXL \Ax_reg[0]  ( .D(n180), .SI(center_r0[3]), .SE(test_se), .CK(clk), 
        .RN(n20), .Q(center_x0[0]), .QN(n203) );
  SDFFRXL \Ay_reg[3]  ( .D(n179), .SI(center_y0[2]), .SE(test_se), .CK(clk), 
        .RN(n250), .Q(center_y0[3]), .QN(n204) );
  SDFFRXL \Ay_reg[2]  ( .D(n178), .SI(center_y0[1]), .SE(test_se), .CK(clk), 
        .RN(n20), .Q(center_y0[2]), .QN(n205) );
  SDFFRXL \Ay_reg[1]  ( .D(n177), .SI(center_y0[0]), .SE(test_se), .CK(clk), 
        .RN(n20), .Q(center_y0[1]), .QN(n206) );
  SDFFRXL \Ay_reg[0]  ( .D(n176), .SI(center_x0[3]), .SE(test_se), .CK(clk), 
        .RN(n252), .Q(center_y0[0]), .QN(n207) );
  SDFFRXL \now_1_reg[5]  ( .D(N586), .SI(now_1[4]), .SE(test_se), .CK(clk), 
        .RN(n20), .Q(now_1[5]) );
  SDFFRXL \now_2_reg[5]  ( .D(n232), .SI(now_2[4]), .SE(test_se), .CK(clk), 
        .RN(n251), .Q(now_2[5]), .QN(n139) );
  SDFFRXL \now_1_reg[2]  ( .D(N583), .SI(now_1[1]), .SE(test_se), .CK(clk), 
        .RN(n20), .Q(now_1[2]) );
  SDFFRXL \now_2_reg[2]  ( .D(n234), .SI(now_2[1]), .SE(test_se), .CK(clk), 
        .RN(n20), .Q(now_2[2]), .QN(n137) );
  SDFFRXL \now_0_reg[5]  ( .D(N580), .SI(now_0[4]), .SE(test_se), .CK(clk), 
        .RN(n20), .Q(now_0[5]) );
  SDFFRXL \now_1_reg[1]  ( .D(N582), .SI(now_1[0]), .SE(test_se), .CK(clk), 
        .RN(n20), .Q(now_1[1]), .QN(n2) );
  SDFFRXL \now_2_reg[1]  ( .D(n235), .SI(now_2[0]), .SE(test_se), .CK(clk), 
        .RN(n250), .Q(now_2[1]), .QN(n136) );
  SDFFRXL \now_1_reg[4]  ( .D(N585), .SI(now_1[3]), .SE(test_se), .CK(clk), 
        .RN(n20), .Q(now_1[4]) );
  SDFFRXL \now_2_reg[4]  ( .D(n237), .SI(now_2[3]), .SE(test_se), .CK(clk), 
        .RN(n252), .Q(now_2[4]), .QN(n134) );
  SDFFRXL \now_0_reg[2]  ( .D(N577), .SI(now_0[1]), .SE(test_se), .CK(clk), 
        .RN(n20), .Q(now_0[2]), .QN(n3) );
  SDFFRXL count_reg ( .D(N568), .SI(candidate[7]), .SE(test_se), .CK(clk), 
        .RN(n251), .Q(n13), .QN(n191) );
  SDFFRXL \reg_mode_reg[1]  ( .D(n190), .SI(reg_mode[0]), .SE(test_se), .CK(
        clk), .RN(n20), .Q(reg_mode[1]), .QN(n12) );
  SDFFRXL \reg_mode_reg[0]  ( .D(n188), .SI(now_2[5]), .SE(test_se), .CK(clk), 
        .RN(n20), .Q(reg_mode[0]), .QN(n15) );
  SDFFRXL \now_0_reg[4]  ( .D(N579), .SI(now_0[3]), .SE(test_se), .CK(clk), 
        .RN(n250), .Q(now_0[4]), .QN(n11) );
  SDFFRXL \now_0_reg[1]  ( .D(N576), .SI(now_0[0]), .SE(test_se), .CK(clk), 
        .RN(n20), .Q(now_0[1]), .QN(n1) );
  SDFFRXL \now_1_reg[3]  ( .D(N584), .SI(now_1[2]), .SE(test_se), .CK(clk), 
        .RN(n20), .Q(now_1[3]) );
  SDFFRXL \now_2_reg[3]  ( .D(n233), .SI(now_2[2]), .SE(test_se), .CK(clk), 
        .RN(n252), .Q(now_2[3]), .QN(n138) );
  SDFFRXL \now_0_reg[3]  ( .D(N578), .SI(now_0[2]), .SE(test_se), .CK(clk), 
        .RN(n251), .Q(now_0[3]) );
  SDFFRXL \now_1_reg[0]  ( .D(N581), .SI(now_0[5]), .SE(test_se), .CK(clk), 
        .RN(n20), .Q(now_1[0]), .QN(n19) );
  SDFFRXL \now_2_reg[0]  ( .D(n236), .SI(now_1[5]), .SE(test_se), .CK(clk), 
        .RN(n250), .Q(now_2[0]), .QN(n135) );
  SDFFRXL \now_0_reg[0]  ( .D(N575), .SI(n13), .SE(test_se), .CK(clk), .RN(n20), .Q(now_0[0]), .QN(n18) );
  INVXL U1 ( .A(n50), .Y(n249) );
  INVXL U2 ( .A(n249), .Y(n250) );
  INVXL U269 ( .A(n249), .Y(n251) );
  INVXL U270 ( .A(n249), .Y(n252) );
endmodule


module SET ( clk, rst, en, central, radius, mode, busy, valid, candidate, 
        test_si, test_se );
  input [23:0] central;
  input [11:0] radius;
  input [1:0] mode;
  output [7:0] candidate;
  input clk, rst, en, test_si, test_se;
  output busy, valid;
  wire   result_0, result_1, result_2, tmp_0, tmp_1, tmp_2, n2, n3;
  wire   [5:0] now_0;
  wire   [3:0] center_x0;
  wire   [3:0] center_y0;
  wire   [3:0] center_r0;
  wire   [5:0] now_1;
  wire   [3:0] center_x1;
  wire   [3:0] center_y1;
  wire   [3:0] center_r1;
  wire   [5:0] now_2;
  wire   [3:0] center_x2;
  wire   [3:0] center_y2;
  wire   [3:0] center_r2;

  MapCell_0 MapCell_0 ( .now(now_0), .center_x(center_x0), .center_y(center_y0), .center_r(center_r0), .result(result_0) );
  MapCell_2 MapCell_1 ( .now(now_1), .center_x(center_x1), .center_y(center_y1), .center_r(center_r1), .result(result_1) );
  MapCell_1 MapCell_2 ( .now(now_2), .center_x(center_x2), .center_y(center_y2), .center_r(center_r2), .result(result_2) );
  Control_test_1 Controler ( .clk(clk), .rst(rst), .en(en), .central(central), 
        .radius(radius), .mode(mode), .candidate(candidate), .busy(busy), 
        .valid(valid), .now_0(now_0), .now_1(now_1), .now_2(now_2), 
        .center_x0(center_x0), .center_x1(center_x1), .center_x2(center_x2), 
        .center_y0(center_y0), .center_y1(center_y1), .center_y2(center_y2), 
        .center_r0(center_r0), .center_r1(center_r1), .center_r2(center_r2), 
        .tmp_0(tmp_0), .tmp_1(tmp_1), .tmp_2(tmp_2), .test_si1(test_si), 
        .test_so1(n3), .test_se(test_se) );
  CLKINVX1 U4 ( .A(rst), .Y(n2) );
  SDFFRXL tmp_0_reg ( .D(result_0), .SI(n3), .SE(test_se), .CK(clk), .RN(n2), 
        .Q(tmp_0) );
  SDFFRXL tmp_2_reg ( .D(result_2), .SI(tmp_1), .SE(test_se), .CK(clk), .RN(n2), .Q(tmp_2) );
  SDFFRXL tmp_1_reg ( .D(result_1), .SI(tmp_0), .SE(test_se), .CK(clk), .RN(n2), .Q(tmp_1) );
endmodule

