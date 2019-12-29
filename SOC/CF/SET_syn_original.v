/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03
// Date      : Sun Dec 29 13:37:30 2019
/////////////////////////////////////////////////////////////


module stateGenerator ( clk, rst, addrEnd, en, busy, valid );
  input clk, rst, addrEnd, en;
  output busy, valid;
  wire   n4, n1, n2, n3;
  wire   [1:0] cs;
  wire   [1:0] ns;

  DFFQX1 \cs_reg[1]  ( .D(ns[1]), .CK(clk), .Q(cs[1]) );
  DFFQX1 \cs_reg[0]  ( .D(ns[0]), .CK(clk), .Q(cs[0]) );
  CLKINVX1 U3 ( .A(addrEnd), .Y(n1) );
  NOR3BXL U4 ( .AN(busy), .B(n1), .C(rst), .Y(ns[1]) );
  NOR2X1 U5 ( .A(rst), .B(n4), .Y(ns[0]) );
  AOI32X1 U6 ( .A0(n2), .A1(n3), .A2(en), .B0(busy), .B1(n1), .Y(n4) );
  NOR2X1 U7 ( .A(n2), .B(cs[1]), .Y(busy) );
  CLKINVX1 U8 ( .A(cs[0]), .Y(n2) );
  CLKINVX1 U9 ( .A(cs[1]), .Y(n3) );
  NOR2X1 U10 ( .A(cs[0]), .B(n3), .Y(valid) );
endmodule


module addressGenerator ( clk, rst, en, busy, addrEnd, addr );
  output [5:0] addr;
  input clk, rst, en, busy;
  output addrEnd;
  wire   n28, n29, N27, n5, n6, n7, n8, n9, n10, n2, n4, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27;
  assign addrEnd = N27;

  DFFRX4 \addr_reg[0]  ( .D(n10), .CK(clk), .RN(n27), .Q(n29), .QN(n2) );
  DFFRX4 \addr_reg[2]  ( .D(n6), .CK(clk), .RN(n27), .Q(addr[2]) );
  DFFRX4 \addr_reg[3]  ( .D(n7), .CK(clk), .RN(n27), .Q(addr[3]) );
  DFFRX4 \addr_reg[4]  ( .D(n8), .CK(clk), .RN(n27), .Q(addr[4]) );
  DFFRX1 \addr_reg[5]  ( .D(n9), .CK(clk), .RN(n27), .Q(n28), .QN(n4) );
  DFFRHQX4 \addr_reg[1]  ( .D(n5), .CK(clk), .RN(n27), .Q(addr[1]) );
  INVX3 U3 ( .A(n2), .Y(addr[0]) );
  CLKINVX1 U4 ( .A(n4), .Y(addr[5]) );
  CLKINVX1 U5 ( .A(n19), .Y(n23) );
  OR2X1 U6 ( .A(n12), .B(n26), .Y(n19) );
  AO21X1 U7 ( .A0(n25), .A1(n24), .B0(n23), .Y(n10) );
  CLKINVX1 U8 ( .A(n26), .Y(N27) );
  CLKINVX1 U9 ( .A(n12), .Y(n25) );
  NAND2BXL U10 ( .AN(n24), .B(addr[1]), .Y(n14) );
  CLKINVX1 U11 ( .A(n21), .Y(n22) );
  NAND2BX1 U12 ( .AN(n21), .B(n28), .Y(n26) );
  NAND2BXL U13 ( .AN(n18), .B(addr[4]), .Y(n21) );
  OAI2BB1X1 U14 ( .A0N(n25), .A1N(n15), .B0(n19), .Y(n6) );
  NAND2BXL U15 ( .AN(n14), .B(addr[2]), .Y(n16) );
  NAND2BXL U16 ( .AN(n16), .B(addr[3]), .Y(n18) );
  AO21X1 U17 ( .A0(n25), .A1(n13), .B0(n23), .Y(n5) );
  CLKINVX1 U18 ( .A(n29), .Y(n24) );
  NAND2BX1 U19 ( .AN(en), .B(busy), .Y(n12) );
  CLKINVX1 U20 ( .A(rst), .Y(n27) );
  XNOR2XL U21 ( .A(addr[2]), .B(n14), .Y(n15) );
  XOR2XL U22 ( .A(addr[1]), .B(n29), .Y(n13) );
  OAI2BB1X1 U23 ( .A0N(n25), .A1N(n20), .B0(n19), .Y(n8) );
  OAI2BB1X1 U24 ( .A0N(n25), .A1N(n17), .B0(n19), .Y(n7) );
  OA21XL U25 ( .A0(n28), .A1(n22), .B0(n25), .Y(n9) );
  XNOR2XL U26 ( .A(addr[4]), .B(n18), .Y(n20) );
  XNOR2XL U27 ( .A(addr[3]), .B(n16), .Y(n17) );
endmodule


module MapGNT ( addressIn, OutX, OutY );
  input [5:0] addressIn;
  output [3:0] OutX;
  output [3:0] OutY;
  wire   n1, n2, n3, n4, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  XOR2X2 U2 ( .A(addressIn[1]), .B(addressIn[0]), .Y(OutY[1]) );
  NAND2X2 U3 ( .A(n10), .B(n2), .Y(n3) );
  INVX3 U4 ( .A(n10), .Y(n1) );
  NOR2X2 U5 ( .A(n9), .B(n8), .Y(n10) );
  CLKINVX4 U6 ( .A(addressIn[3]), .Y(n12) );
  CLKINVX4 U7 ( .A(addressIn[4]), .Y(n11) );
  CLKINVX1 U8 ( .A(addressIn[3]), .Y(OutX[0]) );
  CLKINVX1 U9 ( .A(addressIn[1]), .Y(n8) );
  CLKINVX1 U10 ( .A(addressIn[0]), .Y(n9) );
  NAND2X4 U11 ( .A(n1), .B(addressIn[2]), .Y(n4) );
  NAND2X6 U12 ( .A(n3), .B(n4), .Y(OutY[2]) );
  CLKINVX6 U13 ( .A(addressIn[2]), .Y(n2) );
  NAND2BX4 U14 ( .AN(addressIn[4]), .B(addressIn[3]), .Y(n7) );
  NAND2X2 U15 ( .A(addressIn[4]), .B(OutX[0]), .Y(n6) );
  NAND2X4 U16 ( .A(n6), .B(n7), .Y(OutX[1]) );
  XNOR2X4 U17 ( .A(n14), .B(n13), .Y(OutX[2]) );
  NOR2X2 U18 ( .A(n12), .B(n11), .Y(n14) );
  INVXL U19 ( .A(addressIn[0]), .Y(OutY[0]) );
  CLKINVX1 U20 ( .A(addressIn[5]), .Y(n13) );
  AND3XL U21 ( .A(addressIn[5]), .B(addressIn[4]), .C(addressIn[3]), .Y(
        OutX[3]) );
  AND3XL U22 ( .A(addressIn[2]), .B(addressIn[1]), .C(addressIn[0]), .Y(
        OutY[3]) );
endmodule


module square_0 ( in, out );
  input [3:0] in;
  output [6:0] out;
  wire   out_0, n1, n2, n3, n4, n5, n6;
  assign out[1] = 1'b0;
  assign out[0] = out_0;

  INVX4 U3 ( .A(in[3]), .Y(n3) );
  INVXL U4 ( .A(in[1]), .Y(n4) );
  AND3X6 U5 ( .A(in[0]), .B(n2), .C(n3), .Y(out[3]) );
  AND3X4 U6 ( .A(in[1]), .B(n6), .C(n3), .Y(out[2]) );
  AOI211X1 U7 ( .A0(n1), .A1(n6), .B0(in[3]), .C0(n5), .Y(out[4]) );
  AND2XL U8 ( .A(n1), .B(n3), .Y(out[5]) );
  INVXL U9 ( .A(in[2]), .Y(n5) );
  NOR2X1 U10 ( .A(n5), .B(n4), .Y(n1) );
  AND2XL U11 ( .A(in[0]), .B(n3), .Y(out_0) );
  XOR2X1 U12 ( .A(in[1]), .B(in[2]), .Y(n2) );
  CLKINVX1 U13 ( .A(in[0]), .Y(n6) );
  AND4XL U14 ( .A(in[3]), .B(n6), .C(n5), .D(n4), .Y(out[6]) );
endmodule


module square_8 ( in, out );
  input [3:0] in;
  output [6:0] out;
  wire   out_0, n1, n2, n3, n4, n5, n6, n7;
  assign out[1] = 1'b0;
  assign out[0] = out_0;

  AND2XL U3 ( .A(in[1]), .B(n7), .Y(n1) );
  AOI211X1 U4 ( .A0(n2), .A1(n7), .B0(in[3]), .C0(n6), .Y(out[4]) );
  CLKAND2X2 U5 ( .A(n4), .B(n1), .Y(out[2]) );
  AND2XL U6 ( .A(n2), .B(n4), .Y(out[5]) );
  AND3X4 U7 ( .A(in[0]), .B(n3), .C(n4), .Y(out[3]) );
  NOR2X1 U8 ( .A(n6), .B(n5), .Y(n2) );
  XOR2X1 U9 ( .A(in[1]), .B(in[2]), .Y(n3) );
  INVX3 U10 ( .A(in[3]), .Y(n4) );
  AND4XL U11 ( .A(in[3]), .B(n7), .C(n6), .D(n5), .Y(out[6]) );
  CLKINVX1 U12 ( .A(in[2]), .Y(n6) );
  AND2XL U13 ( .A(in[0]), .B(n4), .Y(out_0) );
  CLKINVX1 U14 ( .A(in[0]), .Y(n7) );
  CLKINVX1 U15 ( .A(in[1]), .Y(n5) );
endmodule


module square_7 ( in, out );
  input [3:0] in;
  output [6:0] out;
  wire   out_0, n1, n2, n3, n10, n11, n12, n13, n14, n15;
  assign out[1] = 1'b0;
  assign out[0] = out_0;

  NOR4X1 U3 ( .A(in[2]), .B(in[1]), .C(in[0]), .D(n1), .Y(out[6]) );
  OAI31XL U4 ( .A0(n15), .A1(in[0]), .A2(n2), .B0(n12), .Y(out[2]) );
  NAND2X1 U5 ( .A(n11), .B(n14), .Y(out[4]) );
  NAND3X1 U6 ( .A(n12), .B(n11), .C(n10), .Y(n14) );
  OAI31XL U7 ( .A0(n3), .A1(n2), .A2(n15), .B0(n13), .Y(out[3]) );
  NAND2X1 U8 ( .A(n10), .B(n2), .Y(n11) );
  NAND2X1 U9 ( .A(n12), .B(n14), .Y(out[5]) );
  OAI211X1 U10 ( .A0(n15), .A1(n3), .B0(n14), .C0(n13), .Y(out_0) );
  NAND3X1 U11 ( .A(n10), .B(n3), .C(in[1]), .Y(n12) );
  AND2X2 U12 ( .A(in[2]), .B(n1), .Y(n10) );
  NAND3X1 U13 ( .A(n10), .B(n2), .C(in[0]), .Y(n13) );
  NAND2BX1 U14 ( .AN(in[2]), .B(n1), .Y(n15) );
  CLKINVX1 U15 ( .A(in[3]), .Y(n1) );
  CLKINVX1 U16 ( .A(in[1]), .Y(n2) );
  CLKINVX1 U17 ( .A(in[0]), .Y(n3) );
endmodule


module ICJ_0 ( Xaddr, XCentral, Yaddr, YCentral, radius, Circle );
  input [3:0] Xaddr;
  input [3:0] XCentral;
  input [3:0] Yaddr;
  input [3:0] YCentral;
  input [3:0] radius;
  output Circle;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123;
  wire   [3:0] DisSum1;
  wire   [3:0] DisSum2;
  wire   [6:0] XSquare;
  wire   [6:0] YSquare;
  wire   [6:0] RSquare;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2;

  square_0 sq1 ( .in(DisSum1), .out({XSquare[6:2], SYNOPSYS_UNCONNECTED__0, 
        XSquare[0]}) );
  square_8 sq2 ( .in(DisSum2), .out({YSquare[6:2], SYNOPSYS_UNCONNECTED__1, 
        YSquare[0]}) );
  square_7 sq3 ( .in(radius), .out({RSquare[6:2], SYNOPSYS_UNCONNECTED__2, 
        RSquare[0]}) );
  NAND2X4 U1 ( .A(n7), .B(n91), .Y(n85) );
  NAND2X4 U2 ( .A(XSquare[2]), .B(YSquare[2]), .Y(n102) );
  CLKINVX1 U3 ( .A(n52), .Y(n50) );
  MXI2X2 U4 ( .A(n24), .B(n25), .S0(n54), .Y(DisSum2[2]) );
  CLKAND2X12 U5 ( .A(n3), .B(n4), .Y(n32) );
  NAND3X2 U6 ( .A(n12), .B(n13), .C(n14), .Y(n15) );
  INVX1 U7 ( .A(n54), .Y(n14) );
  NAND2BXL U8 ( .AN(Yaddr[1]), .B(YCentral[1]), .Y(n44) );
  NAND2BX2 U9 ( .AN(Xaddr[2]), .B(XCentral[2]), .Y(n73) );
  NAND2X2 U10 ( .A(n20), .B(n78), .Y(n81) );
  XOR2X1 U11 ( .A(n11), .B(n91), .Y(n94) );
  XOR3XL U12 ( .A(YSquare[4]), .B(XSquare[4]), .C(n92), .Y(n115) );
  CLKINVX1 U13 ( .A(n59), .Y(n64) );
  CLKINVX1 U14 ( .A(n34), .Y(n39) );
  OR2X1 U15 ( .A(n79), .B(n75), .Y(n69) );
  CLKINVX1 U16 ( .A(n69), .Y(n70) );
  OR2X1 U17 ( .A(n22), .B(n61), .Y(n63) );
  XNOR2X1 U18 ( .A(Xaddr[3]), .B(XCentral[3]), .Y(n80) );
  OR2X1 U19 ( .A(n21), .B(n36), .Y(n38) );
  CLKINVX1 U20 ( .A(n49), .Y(n46) );
  NOR2X1 U21 ( .A(XSquare[4]), .B(YSquare[4]), .Y(n84) );
  NAND3X2 U22 ( .A(n8), .B(n9), .C(n10), .Y(n116) );
  OR2X1 U23 ( .A(n88), .B(n87), .Y(n10) );
  INVX1 U24 ( .A(n5), .Y(n6) );
  NAND2X1 U25 ( .A(n117), .B(n18), .Y(n5) );
  NAND3X1 U26 ( .A(n117), .B(n93), .C(RSquare[4]), .Y(n96) );
  CLKINVX1 U27 ( .A(n115), .Y(n93) );
  NAND2XL U28 ( .A(RSquare[6]), .B(n33), .Y(n97) );
  INVX3 U29 ( .A(n42), .Y(n54) );
  NAND2X1 U30 ( .A(n52), .B(n42), .Y(n1) );
  NAND2X1 U31 ( .A(n51), .B(n54), .Y(n2) );
  NAND2X1 U32 ( .A(n1), .B(n2), .Y(n53) );
  MXI2X1 U33 ( .A(n26), .B(n27), .S0(n54), .Y(DisSum2[1]) );
  NAND2X1 U34 ( .A(Xaddr[3]), .B(n66), .Y(n3) );
  NAND2X2 U35 ( .A(n80), .B(n65), .Y(n4) );
  NAND2X2 U36 ( .A(n6), .B(n118), .Y(n121) );
  INVX1 U37 ( .A(n17), .Y(n18) );
  OAI2BB1X2 U38 ( .A0N(n123), .A1N(n122), .B0(n121), .Y(Circle) );
  OR2X1 U39 ( .A(XSquare[5]), .B(YSquare[5]), .Y(n7) );
  OR2X8 U40 ( .A(RSquare[6]), .B(n33), .Y(n8) );
  OR2X4 U41 ( .A(n90), .B(n89), .Y(n9) );
  AND2X2 U42 ( .A(n88), .B(n87), .Y(n89) );
  INVXL U43 ( .A(XSquare[6]), .Y(n88) );
  INVX1 U44 ( .A(n116), .Y(n123) );
  XOR2X1 U45 ( .A(XSquare[5]), .B(YSquare[5]), .Y(n11) );
  NAND2BX2 U46 ( .AN(RSquare[5]), .B(n94), .Y(n117) );
  XOR3X2 U47 ( .A(YSquare[3]), .B(XSquare[3]), .C(n102), .Y(n105) );
  INVX3 U48 ( .A(n92), .Y(n83) );
  OAI2BB2X2 U49 ( .B0(n102), .B1(n23), .A0N(YSquare[3]), .A1N(XSquare[3]), .Y(
        n92) );
  OR2X4 U50 ( .A(RSquare[3]), .B(n105), .Y(n109) );
  AO21X2 U51 ( .A0(n64), .A1(n68), .B0(n22), .Y(n74) );
  INVXL U52 ( .A(n68), .Y(n61) );
  NAND2BXL U53 ( .AN(Xaddr[1]), .B(XCentral[1]), .Y(n68) );
  NAND2BX2 U54 ( .AN(XCentral[2]), .B(Xaddr[2]), .Y(n77) );
  NAND2BX1 U55 ( .AN(YCentral[2]), .B(Yaddr[2]), .Y(n52) );
  NAND2BX1 U56 ( .AN(Yaddr[2]), .B(YCentral[2]), .Y(n48) );
  INVX1 U57 ( .A(n116), .Y(n118) );
  MXI2X1 U58 ( .A(n28), .B(n29), .S0(n32), .Y(DisSum1[1]) );
  OAI21X1 U59 ( .A0(n113), .A1(n112), .B0(n111), .Y(n120) );
  NAND2BX1 U60 ( .AN(n94), .B(RSquare[5]), .Y(n95) );
  CLKINVX1 U61 ( .A(XSquare[2]), .Y(n98) );
  CLKMX2X4 U62 ( .A(n77), .B(n76), .S0(n32), .Y(n78) );
  INVXL U63 ( .A(Xaddr[1]), .Y(n60) );
  NAND2X2 U64 ( .A(n15), .B(n53), .Y(n58) );
  INVXL U65 ( .A(n30), .Y(n12) );
  INVXL U66 ( .A(n55), .Y(n13) );
  AOI21XL U67 ( .A0(n44), .A1(n43), .B0(n21), .Y(n30) );
  CLKAND2X8 U68 ( .A(n58), .B(n57), .Y(DisSum2[3]) );
  NAND2X2 U69 ( .A(n70), .B(n74), .Y(n16) );
  NAND2X2 U70 ( .A(n16), .B(n77), .Y(n65) );
  OR2X2 U71 ( .A(n55), .B(n50), .Y(n45) );
  AOI22X1 U72 ( .A0(Xaddr[3]), .A1(n66), .B0(n80), .B1(n65), .Y(n19) );
  INVX1 U73 ( .A(n77), .Y(n75) );
  NAND2X1 U74 ( .A(n119), .B(n120), .Y(n17) );
  NAND2XL U75 ( .A(n115), .B(n114), .Y(n119) );
  OR3XL U76 ( .A(n31), .B(n79), .C(n19), .Y(n20) );
  AOI21XL U77 ( .A0(n68), .A1(n67), .B0(n22), .Y(n31) );
  CLKINVX1 U78 ( .A(n73), .Y(n79) );
  NOR2BX4 U79 ( .AN(n81), .B(n80), .Y(DisSum1[3]) );
  NOR2X2 U80 ( .A(YSquare[3]), .B(XSquare[3]), .Y(n23) );
  INVXL U81 ( .A(n56), .Y(n57) );
  INVX1 U82 ( .A(YSquare[6]), .Y(n87) );
  INVXL U83 ( .A(n86), .Y(n90) );
  XNOR2XL U84 ( .A(n63), .B(n64), .Y(n29) );
  XNOR2XL U85 ( .A(n63), .B(n62), .Y(n28) );
  XNOR2XL U86 ( .A(n38), .B(n39), .Y(n27) );
  XNOR2XL U87 ( .A(n38), .B(n37), .Y(n26) );
  XNOR2XL U88 ( .A(n47), .B(n46), .Y(n25) );
  XNOR2XL U89 ( .A(n45), .B(n30), .Y(n24) );
  OR2XL U90 ( .A(n106), .B(RSquare[2]), .Y(n99) );
  INVXL U91 ( .A(n67), .Y(n62) );
  NAND2X1 U92 ( .A(n108), .B(n107), .Y(n110) );
  NAND2XL U93 ( .A(n106), .B(RSquare[2]), .Y(n107) );
  XNOR2XL U94 ( .A(Yaddr[3]), .B(YCentral[3]), .Y(n56) );
  NAND2BXL U95 ( .AN(Yaddr[0]), .B(YCentral[0]), .Y(n43) );
  NOR2X1 U96 ( .A(YCentral[1]), .B(n35), .Y(n21) );
  NAND2BXL U97 ( .AN(YCentral[0]), .B(Yaddr[0]), .Y(n34) );
  NOR2X1 U98 ( .A(XCentral[1]), .B(n60), .Y(n22) );
  XOR2X1 U99 ( .A(n98), .B(YSquare[2]), .Y(n106) );
  NAND2X1 U100 ( .A(YSquare[4]), .B(XSquare[4]), .Y(n82) );
  CLKINVX1 U101 ( .A(RSquare[4]), .Y(n114) );
  CLKINVX1 U102 ( .A(n45), .Y(n47) );
  XNOR2XL U103 ( .A(n70), .B(n74), .Y(n71) );
  OAI21XL U104 ( .A0(n101), .A1(n100), .B0(n99), .Y(n113) );
  NAND2X1 U105 ( .A(n110), .B(n109), .Y(n111) );
  NAND2X1 U106 ( .A(n109), .B(n104), .Y(n112) );
  NOR2X1 U107 ( .A(n103), .B(XSquare[0]), .Y(n101) );
  NAND2X1 U108 ( .A(XSquare[0]), .B(n103), .Y(n104) );
  CLKINVX1 U109 ( .A(YSquare[0]), .Y(n100) );
  OR2XL U110 ( .A(n39), .B(n37), .Y(DisSum2[0]) );
  OR2XL U111 ( .A(n64), .B(n62), .Y(DisSum1[0]) );
  OA21XL U112 ( .A0(n75), .A1(n74), .B0(n73), .Y(n76) );
  OA21XL U113 ( .A0(n50), .A1(n49), .B0(n48), .Y(n51) );
  CLKINVX1 U114 ( .A(n48), .Y(n55) );
  NAND2XL U115 ( .A(n105), .B(RSquare[3]), .Y(n108) );
  CLKINVX1 U116 ( .A(n43), .Y(n37) );
  CLKINVX1 U117 ( .A(n44), .Y(n36) );
  CLKINVX1 U118 ( .A(RSquare[0]), .Y(n103) );
  NAND2BX1 U119 ( .AN(Xaddr[0]), .B(XCentral[0]), .Y(n67) );
  CLKINVX1 U120 ( .A(YCentral[3]), .Y(n41) );
  NAND2BX1 U121 ( .AN(XCentral[0]), .B(Xaddr[0]), .Y(n59) );
  CLKINVX1 U122 ( .A(XCentral[3]), .Y(n66) );
  CLKMX2X2 U123 ( .A(n72), .B(n71), .S0(n32), .Y(DisSum1[2]) );
  INVXL U124 ( .A(Yaddr[1]), .Y(n35) );
  NAND3X1 U125 ( .A(n97), .B(n96), .C(n95), .Y(n122) );
  XOR2XL U126 ( .A(n69), .B(n31), .Y(n72) );
  NOR3BX2 U127 ( .AN(n87), .B(XSquare[6]), .C(n86), .Y(n33) );
  AO21X4 U128 ( .A0(n39), .A1(n44), .B0(n21), .Y(n49) );
  AO21X4 U129 ( .A0(n47), .A1(n49), .B0(n50), .Y(n40) );
  AO22X4 U130 ( .A0(Yaddr[3]), .A1(n41), .B0(n56), .B1(n40), .Y(n42) );
  OAI21X4 U131 ( .A0(n84), .A1(n83), .B0(n82), .Y(n91) );
  OAI2BB1X4 U132 ( .A0N(YSquare[5]), .A1N(XSquare[5]), .B0(n85), .Y(n86) );
endmodule


module square_6 ( in, out );
  input [3:0] in;
  output [6:0] out;
  wire   out_0, n1, n2, n3, n4, n5, n6, n7;
  assign out[1] = 1'b0;
  assign out[0] = out_0;

  NOR3BX4 U3 ( .AN(in[0]), .B(n3), .C(in[3]), .Y(out[3]) );
  CLKINVX1 U4 ( .A(in[2]), .Y(n6) );
  AOI211X1 U5 ( .A0(n2), .A1(n7), .B0(in[3]), .C0(n6), .Y(out[4]) );
  OR2X4 U6 ( .A(in[0]), .B(n5), .Y(n1) );
  NOR2X1 U7 ( .A(n1), .B(in[3]), .Y(out[2]) );
  NOR2X1 U8 ( .A(n6), .B(n5), .Y(n2) );
  XOR2X2 U9 ( .A(n5), .B(in[2]), .Y(n3) );
  INVX3 U10 ( .A(in[1]), .Y(n5) );
  AND2XL U11 ( .A(n2), .B(n4), .Y(out[5]) );
  AND4XL U12 ( .A(in[3]), .B(n7), .C(n6), .D(n5), .Y(out[6]) );
  CLKINVX1 U13 ( .A(in[0]), .Y(n7) );
  INVXL U14 ( .A(in[3]), .Y(n4) );
  AND2X1 U15 ( .A(in[0]), .B(n4), .Y(out_0) );
endmodule


module square_5 ( in, out );
  input [3:0] in;
  output [6:0] out;
  wire   out_0, n1, n2, n3, n4, n5, n6, n7, n8, n9;
  assign out[1] = 1'b0;
  assign out[0] = out_0;

  NOR2X2 U3 ( .A(n3), .B(n8), .Y(out[4]) );
  INVX1 U4 ( .A(in[2]), .Y(n8) );
  INVX1 U5 ( .A(in[1]), .Y(n7) );
  NAND2X1 U6 ( .A(in[1]), .B(n8), .Y(n1) );
  NAND2XL U7 ( .A(n7), .B(in[2]), .Y(n2) );
  NAND2X1 U8 ( .A(n1), .B(n2), .Y(n5) );
  AND2X1 U9 ( .A(n4), .B(n6), .Y(out[5]) );
  AO21X4 U10 ( .A0(n4), .A1(n9), .B0(in[3]), .Y(n3) );
  INVX2 U11 ( .A(in[3]), .Y(n6) );
  AND3X4 U12 ( .A(in[0]), .B(n5), .C(n6), .Y(out[3]) );
  NOR2X1 U13 ( .A(n8), .B(n7), .Y(n4) );
  AND4XL U14 ( .A(in[3]), .B(n9), .C(n8), .D(n7), .Y(out[6]) );
  AND3X2 U15 ( .A(n6), .B(n9), .C(in[1]), .Y(out[2]) );
  CLKINVX1 U16 ( .A(in[0]), .Y(n9) );
  AND2XL U17 ( .A(in[0]), .B(n6), .Y(out_0) );
endmodule


module square_4 ( in, out );
  input [3:0] in;
  output [6:0] out;
  wire   out_0, n1, n2, n3, n10, n11, n12, n13, n14, n15;
  assign out[1] = 1'b0;
  assign out[0] = out_0;

  NOR4X1 U3 ( .A(in[2]), .B(in[1]), .C(in[0]), .D(n1), .Y(out[6]) );
  OAI31XL U4 ( .A0(n15), .A1(in[0]), .A2(n2), .B0(n12), .Y(out[2]) );
  NAND2X1 U5 ( .A(n11), .B(n14), .Y(out[4]) );
  NAND3X1 U6 ( .A(n12), .B(n11), .C(n10), .Y(n14) );
  NAND2X1 U7 ( .A(n10), .B(n2), .Y(n11) );
  NAND2X1 U8 ( .A(n12), .B(n14), .Y(out[5]) );
  OAI211X1 U9 ( .A0(n15), .A1(n3), .B0(n14), .C0(n13), .Y(out_0) );
  OAI31XL U10 ( .A0(n3), .A1(n2), .A2(n15), .B0(n13), .Y(out[3]) );
  NAND3X1 U11 ( .A(n10), .B(n3), .C(in[1]), .Y(n12) );
  AND2X2 U12 ( .A(in[2]), .B(n1), .Y(n10) );
  NAND3X1 U13 ( .A(n10), .B(n2), .C(in[0]), .Y(n13) );
  NAND2BX1 U14 ( .AN(in[2]), .B(n1), .Y(n15) );
  CLKINVX1 U15 ( .A(in[3]), .Y(n1) );
  CLKINVX1 U16 ( .A(in[1]), .Y(n2) );
  CLKINVX1 U17 ( .A(in[0]), .Y(n3) );
endmodule


module ICJ_2 ( Xaddr, XCentral, Yaddr, YCentral, radius, Circle );
  input [3:0] Xaddr;
  input [3:0] XCentral;
  input [3:0] Yaddr;
  input [3:0] YCentral;
  input [3:0] radius;
  output Circle;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140;
  wire   [3:0] DisSum1;
  wire   [3:0] DisSum2;
  wire   [6:0] XSquare;
  wire   [6:0] YSquare;
  wire   [6:0] RSquare;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2;

  square_6 sq1 ( .in(DisSum1), .out({XSquare[6:2], SYNOPSYS_UNCONNECTED__0, 
        XSquare[0]}) );
  square_5 sq2 ( .in(DisSum2), .out({YSquare[6:2], SYNOPSYS_UNCONNECTED__1, 
        YSquare[0]}) );
  square_4 sq3 ( .in(radius), .out({RSquare[6:2], SYNOPSYS_UNCONNECTED__2, 
        RSquare[0]}) );
  NAND2BX2 U1 ( .AN(Xaddr[2]), .B(XCentral[2]), .Y(n88) );
  OAI21X2 U2 ( .A0(n130), .A1(n129), .B0(n128), .Y(n137) );
  NAND2X1 U3 ( .A(n27), .B(n22), .Y(n23) );
  INVXL U4 ( .A(n41), .Y(n13) );
  OAI2BB2X4 U5 ( .B0(n119), .B1(n35), .A0N(YSquare[3]), .A1N(XSquare[3]), .Y(
        n108) );
  NOR2X2 U6 ( .A(YSquare[3]), .B(XSquare[3]), .Y(n35) );
  INVXL U7 ( .A(n41), .Y(n18) );
  NAND2XL U8 ( .A(n86), .B(n41), .Y(n20) );
  NAND2XL U9 ( .A(n81), .B(n41), .Y(n15) );
  NAND2BX1 U10 ( .AN(XCentral[2]), .B(Xaddr[2]), .Y(n92) );
  CLKMX2X2 U11 ( .A(n92), .B(n91), .S0(n41), .Y(n93) );
  CLKINVX1 U12 ( .A(n74), .Y(n78) );
  INVX1 U13 ( .A(n51), .Y(n58) );
  NAND2XL U14 ( .A(Yaddr[3]), .B(n57), .Y(n16) );
  NAND2X2 U15 ( .A(n33), .B(n56), .Y(n17) );
  XOR2X1 U16 ( .A(n77), .B(n76), .Y(n82) );
  XOR2X1 U17 ( .A(n77), .B(n78), .Y(n81) );
  AND2X2 U18 ( .A(n104), .B(n103), .Y(n105) );
  NOR2X2 U19 ( .A(n1), .B(n102), .Y(n49) );
  AO21X2 U20 ( .A0(n2), .A1(n60), .B0(n58), .Y(n66) );
  OR2X1 U21 ( .A(n58), .B(n52), .Y(n54) );
  CLKBUFX3 U22 ( .A(n71), .Y(n33) );
  NAND2X1 U23 ( .A(n82), .B(n13), .Y(n14) );
  NAND2X1 U24 ( .A(n11), .B(n12), .Y(n27) );
  OAI21XL U25 ( .A0(n118), .A1(n117), .B0(n116), .Y(n130) );
  NAND3X2 U26 ( .A(n30), .B(n31), .C(n32), .Y(n133) );
  OR2X1 U27 ( .A(n104), .B(n103), .Y(n32) );
  OR2X4 U28 ( .A(RSquare[6]), .B(n49), .Y(n30) );
  CLKINVX1 U29 ( .A(n85), .Y(n44) );
  OR2X1 U30 ( .A(YSquare[6]), .B(XSquare[6]), .Y(n1) );
  CLKMX2X2 U31 ( .A(n64), .B(n63), .S0(n40), .Y(DisSum2[2]) );
  INVX1 U32 ( .A(n92), .Y(n90) );
  NOR2X1 U33 ( .A(YCentral[0]), .B(n50), .Y(n2) );
  NAND3X1 U34 ( .A(n3), .B(n4), .C(n5), .Y(n6) );
  NAND2X1 U35 ( .A(n6), .B(n69), .Y(n73) );
  CLKINVX1 U36 ( .A(n36), .Y(n3) );
  CLKINVX1 U37 ( .A(n70), .Y(n4) );
  CLKINVX1 U38 ( .A(n40), .Y(n5) );
  AND2X4 U39 ( .A(n16), .B(n17), .Y(n40) );
  CLKAND2X3 U40 ( .A(n73), .B(n72), .Y(DisSum2[3]) );
  NAND2X2 U41 ( .A(n44), .B(n89), .Y(n7) );
  CLKINVX1 U42 ( .A(n90), .Y(n8) );
  NAND2X4 U43 ( .A(n7), .B(n8), .Y(n79) );
  AO21X2 U44 ( .A0(n78), .A1(n84), .B0(n34), .Y(n89) );
  NAND2X1 U45 ( .A(n29), .B(n10), .Y(n11) );
  NAND2X2 U46 ( .A(n9), .B(YSquare[5]), .Y(n12) );
  CLKINVX2 U47 ( .A(n29), .Y(n9) );
  INVXL U48 ( .A(YSquare[5]), .Y(n10) );
  BUFX4 U49 ( .A(XSquare[5]), .Y(n29) );
  INVX1 U50 ( .A(n27), .Y(n21) );
  NAND2X2 U51 ( .A(n14), .B(n15), .Y(DisSum1[1]) );
  CLKINVX1 U52 ( .A(YCentral[3]), .Y(n57) );
  MX2X1 U53 ( .A(n68), .B(n67), .S0(n40), .Y(n69) );
  NAND2X1 U54 ( .A(n87), .B(n18), .Y(n19) );
  NAND2X2 U55 ( .A(n19), .B(n20), .Y(DisSum1[2]) );
  XOR2XL U56 ( .A(n85), .B(n39), .Y(n87) );
  NAND2X1 U57 ( .A(n21), .B(n107), .Y(n24) );
  NAND2X2 U58 ( .A(n23), .B(n24), .Y(n110) );
  INVX1 U59 ( .A(n107), .Y(n22) );
  NAND2XL U60 ( .A(n136), .B(n134), .Y(n25) );
  NAND3X2 U61 ( .A(n135), .B(n137), .C(n26), .Y(n138) );
  CLKINVX1 U62 ( .A(n25), .Y(n26) );
  NAND2XL U63 ( .A(n132), .B(n131), .Y(n136) );
  INVX1 U64 ( .A(n133), .Y(n135) );
  OAI2BB1X4 U65 ( .A0N(n140), .A1N(n139), .B0(n138), .Y(Circle) );
  NAND2X1 U66 ( .A(YSquare[4]), .B(XSquare[4]), .Y(n98) );
  OR2X4 U67 ( .A(n29), .B(YSquare[5]), .Y(n28) );
  NAND2X2 U68 ( .A(n28), .B(n107), .Y(n101) );
  INVX2 U69 ( .A(Yaddr[2]), .Y(n55) );
  INVX1 U70 ( .A(XSquare[2]), .Y(n115) );
  NAND2BX1 U71 ( .AN(Xaddr[1]), .B(XCentral[1]), .Y(n84) );
  XOR3X1 U72 ( .A(YSquare[3]), .B(XSquare[3]), .C(n119), .Y(n122) );
  NAND2BX4 U73 ( .AN(n115), .B(YSquare[2]), .Y(n119) );
  NAND2X1 U74 ( .A(n55), .B(YCentral[2]), .Y(n65) );
  NOR2XL U75 ( .A(YCentral[2]), .B(n55), .Y(n45) );
  XOR3XL U76 ( .A(YSquare[4]), .B(XSquare[4]), .C(n108), .Y(n132) );
  NOR2X1 U77 ( .A(XSquare[4]), .B(YSquare[4]), .Y(n100) );
  OR2X4 U78 ( .A(n106), .B(n105), .Y(n31) );
  INVXL U79 ( .A(XSquare[6]), .Y(n104) );
  INVXL U80 ( .A(Xaddr[1]), .Y(n75) );
  XNOR2X1 U81 ( .A(Xaddr[3]), .B(XCentral[3]), .Y(n95) );
  NAND2BX1 U82 ( .AN(YCentral[1]), .B(Yaddr[1]), .Y(n51) );
  OR2X4 U83 ( .A(RSquare[3]), .B(n122), .Y(n126) );
  OR2X1 U84 ( .A(n123), .B(RSquare[2]), .Y(n116) );
  NAND3X2 U85 ( .A(n134), .B(n109), .C(RSquare[4]), .Y(n113) );
  INVX3 U86 ( .A(n108), .Y(n99) );
  NAND2XL U87 ( .A(XSquare[0]), .B(n120), .Y(n121) );
  INVX1 U88 ( .A(n61), .Y(n62) );
  INVXL U89 ( .A(YSquare[0]), .Y(n117) );
  XNOR2XL U90 ( .A(n54), .B(n2), .Y(n38) );
  MXI2X1 U91 ( .A(n37), .B(n38), .S0(n40), .Y(DisSum2[1]) );
  XNOR2XL U92 ( .A(n54), .B(n53), .Y(n37) );
  OR2XL U93 ( .A(n2), .B(n53), .Y(DisSum2[0]) );
  NAND2X1 U94 ( .A(n125), .B(n124), .Y(n127) );
  XNOR2XL U95 ( .A(n44), .B(n89), .Y(n86) );
  INVX1 U96 ( .A(n83), .Y(n76) );
  INVXL U97 ( .A(n60), .Y(n52) );
  OR2X2 U98 ( .A(n94), .B(n90), .Y(n85) );
  INVXL U99 ( .A(n65), .Y(n70) );
  INVXL U100 ( .A(n33), .Y(n72) );
  NAND2BXL U101 ( .AN(Yaddr[0]), .B(YCentral[0]), .Y(n59) );
  NOR2X1 U102 ( .A(XCentral[1]), .B(n75), .Y(n34) );
  INVX1 U103 ( .A(Yaddr[0]), .Y(n50) );
  XNOR2X1 U104 ( .A(n42), .B(YSquare[2]), .Y(n123) );
  CLKINVX1 U105 ( .A(RSquare[4]), .Y(n131) );
  CLKINVX1 U106 ( .A(YSquare[6]), .Y(n103) );
  NOR2X1 U107 ( .A(n120), .B(XSquare[0]), .Y(n118) );
  NAND2X1 U108 ( .A(n127), .B(n126), .Y(n128) );
  NAND2X1 U109 ( .A(n126), .B(n121), .Y(n129) );
  NAND2X1 U110 ( .A(n111), .B(RSquare[5]), .Y(n112) );
  NAND2BX2 U111 ( .AN(RSquare[5]), .B(n110), .Y(n134) );
  AOI21XL U112 ( .A0(n60), .A1(n59), .B0(n58), .Y(n36) );
  OR2XL U113 ( .A(n78), .B(n76), .Y(DisSum1[0]) );
  NAND2X1 U114 ( .A(n123), .B(RSquare[2]), .Y(n124) );
  NAND2BX1 U115 ( .AN(n34), .B(n84), .Y(n77) );
  CLKINVX1 U116 ( .A(n88), .Y(n94) );
  NAND2X2 U117 ( .A(n65), .B(n68), .Y(n61) );
  AOI21X1 U118 ( .A0(n84), .A1(n83), .B0(n34), .Y(n39) );
  CLKINVX1 U119 ( .A(n59), .Y(n53) );
  CLKINVX1 U120 ( .A(RSquare[0]), .Y(n120) );
  XNOR2XL U121 ( .A(Yaddr[3]), .B(YCentral[3]), .Y(n71) );
  NAND2BX1 U122 ( .AN(Xaddr[0]), .B(XCentral[0]), .Y(n83) );
  NAND2BX4 U123 ( .AN(Yaddr[1]), .B(YCentral[1]), .Y(n60) );
  AOI22X4 U124 ( .A0(Xaddr[3]), .A1(n80), .B0(n79), .B1(n95), .Y(n41) );
  OR2X4 U125 ( .A(n55), .B(YCentral[2]), .Y(n68) );
  NAND2BX1 U126 ( .AN(XCentral[0]), .B(Xaddr[0]), .Y(n74) );
  INVX1 U127 ( .A(n102), .Y(n106) );
  NAND2XL U128 ( .A(RSquare[6]), .B(n49), .Y(n114) );
  CLKINVX1 U129 ( .A(n132), .Y(n109) );
  INVXL U130 ( .A(n115), .Y(n42) );
  INVX1 U131 ( .A(n46), .Y(n47) );
  NAND2X1 U132 ( .A(n122), .B(RSquare[3]), .Y(n125) );
  AOI21XL U133 ( .A0(n2), .A1(n60), .B0(n58), .Y(n43) );
  XOR2XL U134 ( .A(n46), .B(n43), .Y(n63) );
  CLKINVX1 U135 ( .A(n95), .Y(n96) );
  INVXL U136 ( .A(n61), .Y(n46) );
  OR3X2 U137 ( .A(n39), .B(n94), .C(n41), .Y(n48) );
  NAND2X2 U138 ( .A(n48), .B(n93), .Y(n97) );
  AND2X8 U139 ( .A(n97), .B(n96), .Y(DisSum1[3]) );
  NAND3X2 U140 ( .A(n114), .B(n113), .C(n112), .Y(n139) );
  CLKINVX1 U141 ( .A(n110), .Y(n111) );
  OA21XL U142 ( .A0(n45), .A1(n66), .B0(n65), .Y(n67) );
  XOR2XL U143 ( .A(n47), .B(n36), .Y(n64) );
  INVX1 U144 ( .A(n133), .Y(n140) );
  OA21XL U145 ( .A0(n90), .A1(n89), .B0(n88), .Y(n91) );
  AO21X4 U146 ( .A0(n62), .A1(n66), .B0(n45), .Y(n56) );
  INVX8 U147 ( .A(XCentral[3]), .Y(n80) );
  OAI21X4 U148 ( .A0(n100), .A1(n99), .B0(n98), .Y(n107) );
  OAI2BB1X4 U149 ( .A0N(YSquare[5]), .A1N(n29), .B0(n101), .Y(n102) );
endmodule


module square_3 ( in, out );
  input [3:0] in;
  output [6:0] out;
  wire   out_0, n1, n2, n3, n4, n5, n6, n7;
  assign out[1] = 1'b0;
  assign out[0] = out_0;

  INVX2 U3 ( .A(in[1]), .Y(n5) );
  INVX3 U4 ( .A(in[3]), .Y(n4) );
  AND3X2 U5 ( .A(in[1]), .B(n7), .C(n4), .Y(out[2]) );
  XNOR2X2 U6 ( .A(n5), .B(in[2]), .Y(n3) );
  AO21X2 U7 ( .A0(n2), .A1(n7), .B0(in[3]), .Y(n1) );
  NOR2X4 U8 ( .A(n1), .B(n6), .Y(out[4]) );
  NOR2X1 U9 ( .A(n6), .B(n5), .Y(n2) );
  INVX3 U10 ( .A(in[2]), .Y(n6) );
  AND3X6 U11 ( .A(in[0]), .B(n3), .C(n4), .Y(out[3]) );
  AND2XL U12 ( .A(in[0]), .B(n4), .Y(out_0) );
  AND2X1 U13 ( .A(n2), .B(n4), .Y(out[5]) );
  AND4XL U14 ( .A(in[3]), .B(n7), .C(n6), .D(n5), .Y(out[6]) );
  CLKINVX1 U15 ( .A(in[0]), .Y(n7) );
endmodule


module square_2 ( in, out );
  input [3:0] in;
  output [6:0] out;
  wire   out_0, n1, n2, n3, n4, n5, n6;
  assign out[1] = 1'b0;
  assign out[0] = out_0;

  AOI211X1 U3 ( .A0(n1), .A1(n6), .B0(in[3]), .C0(n5), .Y(out[4]) );
  CLKINVX1 U4 ( .A(in[3]), .Y(n2) );
  AND4XL U5 ( .A(in[3]), .B(n6), .C(n5), .D(n4), .Y(out[6]) );
  AND2X1 U6 ( .A(n1), .B(n2), .Y(out[5]) );
  NOR2X1 U7 ( .A(n5), .B(n4), .Y(n1) );
  NOR3BX1 U8 ( .AN(in[0]), .B(n3), .C(in[3]), .Y(out[3]) );
  XNOR2XL U9 ( .A(in[1]), .B(in[2]), .Y(n3) );
  AND3X2 U10 ( .A(n2), .B(n6), .C(in[1]), .Y(out[2]) );
  INVX1 U11 ( .A(in[2]), .Y(n5) );
  CLKINVX1 U12 ( .A(in[0]), .Y(n6) );
  CLKINVX1 U13 ( .A(in[1]), .Y(n4) );
  AND2XL U14 ( .A(in[0]), .B(n2), .Y(out_0) );
endmodule


module square_1 ( in, out );
  input [3:0] in;
  output [6:0] out;
  wire   out_0, n1, n2, n3, n10, n11, n12, n13, n14, n15;
  assign out[1] = 1'b0;
  assign out[0] = out_0;

  NOR4X1 U3 ( .A(in[2]), .B(in[1]), .C(in[0]), .D(n1), .Y(out[6]) );
  OAI31XL U4 ( .A0(n15), .A1(in[0]), .A2(n2), .B0(n12), .Y(out[2]) );
  NAND2X1 U5 ( .A(n11), .B(n14), .Y(out[4]) );
  NAND3X1 U6 ( .A(n12), .B(n11), .C(n10), .Y(n14) );
  NAND2X1 U7 ( .A(n10), .B(n2), .Y(n11) );
  OAI211X1 U8 ( .A0(n15), .A1(n3), .B0(n14), .C0(n13), .Y(out_0) );
  OAI31XL U9 ( .A0(n3), .A1(n2), .A2(n15), .B0(n13), .Y(out[3]) );
  NAND2X1 U10 ( .A(n12), .B(n14), .Y(out[5]) );
  NAND3X1 U11 ( .A(n10), .B(n3), .C(in[1]), .Y(n12) );
  AND2X2 U12 ( .A(in[2]), .B(n1), .Y(n10) );
  NAND3X1 U13 ( .A(n10), .B(n2), .C(in[0]), .Y(n13) );
  NAND2BX1 U14 ( .AN(in[2]), .B(n1), .Y(n15) );
  CLKINVX1 U15 ( .A(in[3]), .Y(n1) );
  CLKINVX1 U16 ( .A(in[1]), .Y(n2) );
  CLKINVX1 U17 ( .A(in[0]), .Y(n3) );
endmodule


module ICJ_1 ( Xaddr, XCentral, Yaddr, YCentral, radius, Circle );
  input [3:0] Xaddr;
  input [3:0] XCentral;
  input [3:0] Yaddr;
  input [3:0] YCentral;
  input [3:0] radius;
  output Circle;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142;
  wire   [3:0] DisSum1;
  wire   [3:0] DisSum2;
  wire   [6:0] XSquare;
  wire   [6:0] YSquare;
  wire   [6:0] RSquare;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2;

  square_3 sq1 ( .in(DisSum1), .out({XSquare[6:2], SYNOPSYS_UNCONNECTED__0, 
        XSquare[0]}) );
  square_2 sq2 ( .in(DisSum2), .out({YSquare[6:2], SYNOPSYS_UNCONNECTED__1, 
        YSquare[0]}) );
  square_1 sq3 ( .in(radius), .out({RSquare[6:2], SYNOPSYS_UNCONNECTED__2, 
        RSquare[0]}) );
  CLKINVX2 U1 ( .A(n100), .Y(n38) );
  MXI2X1 U2 ( .A(n45), .B(n46), .S0(n100), .Y(DisSum1[1]) );
  INVX3 U3 ( .A(XSquare[3]), .Y(n54) );
  NOR2BX4 U4 ( .AN(XSquare[2]), .B(n104), .Y(n53) );
  AND3X8 U5 ( .A(n32), .B(n33), .C(n34), .Y(n2) );
  NAND2X1 U6 ( .A(n115), .B(n36), .Y(n30) );
  CLKINVX1 U7 ( .A(YSquare[3]), .Y(n51) );
  INVX1 U8 ( .A(n137), .Y(n117) );
  NAND2X2 U9 ( .A(n105), .B(n53), .Y(n23) );
  NAND2X1 U10 ( .A(n51), .B(n54), .Y(n105) );
  NAND2X2 U11 ( .A(n87), .B(n101), .Y(n11) );
  OAI21X2 U12 ( .A0(XSquare[5]), .A1(YSquare[5]), .B0(n115), .Y(n109) );
  INVX3 U13 ( .A(n116), .Y(n107) );
  XNOR2X1 U14 ( .A(n85), .B(n86), .Y(n46) );
  OR2X8 U15 ( .A(n80), .B(n75), .Y(n69) );
  INVX3 U16 ( .A(n73), .Y(n80) );
  INVX3 U17 ( .A(n77), .Y(n75) );
  NOR2X2 U18 ( .A(n3), .B(n110), .Y(n50) );
  OAI2BB1X4 U19 ( .A0N(YSquare[5]), .A1N(XSquare[5]), .B0(n109), .Y(n110) );
  OR2XL U20 ( .A(n48), .B(n83), .Y(n85) );
  CLKINVX3 U21 ( .A(n82), .Y(n86) );
  NAND2BX2 U22 ( .AN(XCentral[0]), .B(Xaddr[0]), .Y(n82) );
  AND2X6 U23 ( .A(n103), .B(n102), .Y(DisSum1[3]) );
  NAND2X2 U24 ( .A(n22), .B(n23), .Y(n116) );
  NAND2X1 U25 ( .A(n52), .B(XSquare[3]), .Y(n22) );
  NAND3X2 U26 ( .A(n2), .B(n140), .C(n25), .Y(n141) );
  NAND2X2 U27 ( .A(n70), .B(n74), .Y(n61) );
  INVX3 U28 ( .A(n69), .Y(n70) );
  OA21XL U29 ( .A0(n96), .A1(n95), .B0(n94), .Y(n97) );
  NAND3X1 U30 ( .A(n37), .B(n94), .C(n38), .Y(n39) );
  NAND2X1 U31 ( .A(n16), .B(n17), .Y(DisSum2[1]) );
  CLKINVX1 U32 ( .A(n51), .Y(n52) );
  INVX1 U33 ( .A(n35), .Y(n36) );
  NAND2X1 U34 ( .A(n20), .B(n21), .Y(n35) );
  NAND2X1 U35 ( .A(n18), .B(n19), .Y(n21) );
  INVX1 U36 ( .A(n36), .Y(n29) );
  OR2X4 U37 ( .A(n50), .B(RSquare[6]), .Y(n32) );
  OR2X1 U38 ( .A(n112), .B(n111), .Y(n34) );
  CLKINVX1 U39 ( .A(n26), .Y(n27) );
  OAI21X1 U40 ( .A0(n135), .A1(n134), .B0(n133), .Y(n140) );
  AND2X4 U41 ( .A(n81), .B(n1), .Y(DisSum2[3]) );
  INVX3 U42 ( .A(n110), .Y(n114) );
  NAND2BX4 U43 ( .AN(Xaddr[2]), .B(XCentral[2]), .Y(n94) );
  XOR2X1 U44 ( .A(Yaddr[3]), .B(YCentral[3]), .Y(n1) );
  OR2X1 U45 ( .A(YSquare[6]), .B(XSquare[6]), .Y(n3) );
  NOR2X1 U46 ( .A(YCentral[0]), .B(n56), .Y(n4) );
  NAND2X2 U47 ( .A(n94), .B(n98), .Y(n92) );
  INVX1 U48 ( .A(n92), .Y(n55) );
  NAND2X1 U49 ( .A(n77), .B(n5), .Y(n6) );
  NAND2XL U50 ( .A(n76), .B(n79), .Y(n7) );
  NAND2X1 U51 ( .A(n6), .B(n7), .Y(n78) );
  CLKINVX1 U52 ( .A(n79), .Y(n5) );
  NAND2X1 U53 ( .A(n98), .B(n89), .Y(n8) );
  NAND2X1 U54 ( .A(n97), .B(n100), .Y(n9) );
  NAND2X1 U55 ( .A(n8), .B(n9), .Y(n99) );
  NAND2BX2 U56 ( .AN(XCentral[2]), .B(Xaddr[2]), .Y(n98) );
  NAND2X1 U57 ( .A(Xaddr[3]), .B(n88), .Y(n10) );
  NAND2X2 U58 ( .A(n10), .B(n11), .Y(n89) );
  OAI2BB1X2 U59 ( .A0N(n95), .A1N(n55), .B0(n98), .Y(n87) );
  XNOR2X1 U60 ( .A(Xaddr[3]), .B(XCentral[3]), .Y(n101) );
  INVX3 U61 ( .A(n89), .Y(n100) );
  NAND3X1 U62 ( .A(n12), .B(n13), .C(n5), .Y(n14) );
  NAND2X1 U63 ( .A(n14), .B(n78), .Y(n81) );
  CLKINVX1 U64 ( .A(n42), .Y(n12) );
  INVXL U65 ( .A(n80), .Y(n13) );
  NOR2X4 U66 ( .A(n64), .B(n63), .Y(n79) );
  NAND2X1 U67 ( .A(n66), .B(n15), .Y(n16) );
  NAND2XL U68 ( .A(n65), .B(n79), .Y(n17) );
  INVXL U69 ( .A(n79), .Y(n15) );
  NAND2X1 U70 ( .A(XSquare[5]), .B(YSquare[5]), .Y(n20) );
  INVX1 U71 ( .A(XSquare[5]), .Y(n18) );
  CLKINVX1 U72 ( .A(YSquare[5]), .Y(n19) );
  NAND2X2 U73 ( .A(n139), .B(n138), .Y(n24) );
  INVX3 U74 ( .A(n24), .Y(n25) );
  NAND2XL U75 ( .A(n137), .B(n136), .Y(n139) );
  OAI2BB1X4 U76 ( .A0N(n2), .A1N(n142), .B0(n141), .Y(Circle) );
  NAND2X1 U77 ( .A(RSquare[4]), .B(n117), .Y(n26) );
  NAND2X4 U78 ( .A(n27), .B(n138), .Y(n119) );
  NAND3X2 U79 ( .A(n120), .B(n119), .C(n118), .Y(n142) );
  NAND2X2 U80 ( .A(n28), .B(n29), .Y(n31) );
  NAND2X2 U81 ( .A(n30), .B(n31), .Y(n49) );
  INVX1 U82 ( .A(n115), .Y(n28) );
  OR2X8 U83 ( .A(RSquare[5]), .B(n49), .Y(n138) );
  OR2X8 U84 ( .A(n114), .B(n113), .Y(n33) );
  AND2X2 U85 ( .A(n112), .B(n111), .Y(n113) );
  INVXL U86 ( .A(XSquare[6]), .Y(n112) );
  XNOR3X2 U87 ( .A(n52), .B(XSquare[3]), .C(n41), .Y(n127) );
  MXI2X2 U88 ( .A(n43), .B(n44), .S0(n100), .Y(DisSum1[2]) );
  INVXL U89 ( .A(n91), .Y(n83) );
  AOI21XL U90 ( .A0(n91), .A1(n90), .B0(n48), .Y(n47) );
  NOR2XL U91 ( .A(n121), .B(n104), .Y(n41) );
  CLKINVX3 U92 ( .A(YSquare[2]), .Y(n104) );
  MX2X1 U93 ( .A(n72), .B(n71), .S0(n79), .Y(DisSum2[2]) );
  INVXL U94 ( .A(n68), .Y(n58) );
  NAND2BX1 U95 ( .AN(Yaddr[1]), .B(YCentral[1]), .Y(n68) );
  NAND2XL U96 ( .A(n49), .B(RSquare[5]), .Y(n118) );
  NAND2X2 U97 ( .A(n39), .B(n99), .Y(n103) );
  NOR2BX4 U98 ( .AN(Xaddr[1]), .B(XCentral[1]), .Y(n48) );
  NAND2BX4 U99 ( .AN(Xaddr[1]), .B(XCentral[1]), .Y(n91) );
  INVXL U100 ( .A(n47), .Y(n37) );
  OR2X2 U101 ( .A(n40), .B(n58), .Y(n60) );
  INVXL U102 ( .A(n101), .Y(n102) );
  NAND2BX2 U103 ( .AN(YCentral[2]), .B(Yaddr[2]), .Y(n77) );
  NOR2X1 U104 ( .A(XSquare[4]), .B(YSquare[4]), .Y(n108) );
  NAND2XL U105 ( .A(n130), .B(n129), .Y(n132) );
  NAND2BX2 U106 ( .AN(Yaddr[2]), .B(YCentral[2]), .Y(n73) );
  NAND2XL U107 ( .A(YSquare[4]), .B(XSquare[4]), .Y(n106) );
  NOR2X1 U108 ( .A(YCentral[1]), .B(n57), .Y(n40) );
  XOR2XL U109 ( .A(n121), .B(YSquare[2]), .Y(n128) );
  INVX1 U110 ( .A(YSquare[6]), .Y(n111) );
  INVXL U111 ( .A(YSquare[0]), .Y(n123) );
  NAND2XL U112 ( .A(XSquare[0]), .B(n125), .Y(n126) );
  AO21X4 U113 ( .A0(n4), .A1(n68), .B0(n40), .Y(n74) );
  XNOR2X1 U114 ( .A(n55), .B(n93), .Y(n44) );
  XNOR2XL U115 ( .A(n92), .B(n47), .Y(n43) );
  OR2XL U116 ( .A(n4), .B(n59), .Y(DisSum2[0]) );
  XOR2XL U117 ( .A(n60), .B(n4), .Y(n65) );
  XOR2XL U118 ( .A(n69), .B(n42), .Y(n72) );
  OR2XL U119 ( .A(n128), .B(RSquare[2]), .Y(n122) );
  INVXL U120 ( .A(n90), .Y(n84) );
  NAND2BXL U121 ( .AN(Yaddr[0]), .B(YCentral[0]), .Y(n67) );
  CLKINVX1 U122 ( .A(RSquare[4]), .Y(n136) );
  OAI21XL U123 ( .A0(n124), .A1(n123), .B0(n122), .Y(n135) );
  NAND2X1 U124 ( .A(n132), .B(n131), .Y(n133) );
  NAND2X1 U125 ( .A(n131), .B(n126), .Y(n134) );
  NOR2X1 U126 ( .A(n125), .B(XSquare[0]), .Y(n124) );
  AOI21X1 U127 ( .A0(n68), .A1(n67), .B0(n40), .Y(n42) );
  XNOR2XL U128 ( .A(n70), .B(n74), .Y(n71) );
  OR2XL U129 ( .A(n86), .B(n84), .Y(DisSum1[0]) );
  XNOR2X1 U130 ( .A(n85), .B(n84), .Y(n45) );
  XOR2X1 U131 ( .A(n60), .B(n59), .Y(n66) );
  NAND2X1 U132 ( .A(n128), .B(RSquare[2]), .Y(n129) );
  NAND2XL U133 ( .A(n127), .B(RSquare[3]), .Y(n130) );
  CLKINVX1 U134 ( .A(n67), .Y(n59) );
  CLKINVX1 U135 ( .A(RSquare[0]), .Y(n125) );
  NOR2X1 U136 ( .A(YCentral[3]), .B(n62), .Y(n63) );
  INVXL U137 ( .A(Yaddr[3]), .Y(n62) );
  NAND2BX1 U138 ( .AN(Xaddr[0]), .B(XCentral[0]), .Y(n90) );
  CLKINVX1 U139 ( .A(XCentral[3]), .Y(n88) );
  INVXL U140 ( .A(Yaddr[0]), .Y(n56) );
  INVXL U141 ( .A(n98), .Y(n96) );
  OA21XL U142 ( .A0(n75), .A1(n74), .B0(n73), .Y(n76) );
  NAND2XL U143 ( .A(RSquare[6]), .B(n50), .Y(n120) );
  INVXL U144 ( .A(Yaddr[1]), .Y(n57) );
  XOR3XL U145 ( .A(YSquare[4]), .B(XSquare[4]), .C(n116), .Y(n137) );
  INVXL U146 ( .A(XSquare[2]), .Y(n121) );
  INVXL U147 ( .A(n95), .Y(n93) );
  AOI21X4 U148 ( .A0(n61), .A1(n77), .B0(n1), .Y(n64) );
  AO21X4 U149 ( .A0(n86), .A1(n91), .B0(n48), .Y(n95) );
  OAI21X4 U150 ( .A0(n108), .A1(n107), .B0(n106), .Y(n115) );
  OR2X4 U151 ( .A(RSquare[3]), .B(n127), .Y(n131) );
endmodule


module judge ( addressIn, central, radius, mode, DecideResult );
  input [5:0] addressIn;
  input [23:0] central;
  input [11:0] radius;
  input [1:0] mode;
  output DecideResult;
  wire   C1, C2, C3, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18;
  wire   [3:0] OutX;
  wire   [3:0] OutY;

  MapGNT MPGNT ( .addressIn(addressIn), .OutX(OutX), .OutY(OutY) );
  ICJ_0 icj1 ( .Xaddr({n10, OutX[2:1], n9}), .XCentral(central[23:20]), 
        .Yaddr({n8, OutY[2:0]}), .YCentral(central[19:16]), .radius(
        radius[11:8]), .Circle(C1) );
  ICJ_2 icj2 ( .Xaddr({n10, OutX[2:1], n9}), .XCentral(central[15:12]), 
        .Yaddr({n8, OutY[2:0]}), .YCentral(central[11:8]), .radius(radius[7:4]), .Circle(C2) );
  ICJ_1 icj3 ( .Xaddr({n10, OutX[2:1], n9}), .XCentral(central[7:4]), .Yaddr({
        n8, OutY[2:0]}), .YCentral(central[3:0]), .radius(radius[3:0]), 
        .Circle(C3) );
  CLKINVX4 U1 ( .A(n4), .Y(DecideResult) );
  CLKINVX1 U2 ( .A(C1), .Y(n1) );
  OR2X4 U3 ( .A(C3), .B(n11), .Y(n16) );
  CLKINVX3 U4 ( .A(n16), .Y(n12) );
  INVX1 U5 ( .A(C3), .Y(n14) );
  CLKINVX1 U6 ( .A(C2), .Y(n13) );
  MXI2X2 U7 ( .A(n5), .B(n6), .S0(C2), .Y(n17) );
  NAND2X2 U8 ( .A(mode[1]), .B(n16), .Y(n6) );
  OR3X4 U9 ( .A(n15), .B(n13), .C(n12), .Y(n18) );
  NAND2X1 U10 ( .A(n17), .B(C1), .Y(n3) );
  OAI21X1 U11 ( .A0(n14), .A1(n15), .B0(mode[0]), .Y(n5) );
  NAND2X2 U12 ( .A(n18), .B(n1), .Y(n2) );
  NAND2X2 U13 ( .A(n3), .B(n2), .Y(n4) );
  BUFX4 U14 ( .A(OutX[0]), .Y(n9) );
  CLKINVX1 U15 ( .A(OutY[3]), .Y(n7) );
  CLKINVX1 U16 ( .A(mode[0]), .Y(n11) );
  CLKINVX1 U17 ( .A(mode[1]), .Y(n15) );
  INVX3 U18 ( .A(n7), .Y(n8) );
  BUFX4 U19 ( .A(OutX[3]), .Y(n10) );
endmodule


module candicateCounter_DW01_inc_0 ( A, SUM );
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


module candicateCounter ( clk, rst, plus, en, candidate );
  output [7:0] candidate;
  input clk, rst, plus, en;
  wire   N5, N6, N7, N8, N9, N10, N11, N12, n4, n5, n6, n7, n8, n9, n10, n11,
         n1, n2, n3, n12, n13;

  candicateCounter_DW01_inc_0 add_125 ( .A(candidate), .SUM({N12, N11, N10, N9, 
        N8, N7, N6, N5}) );
  DFFRX1 \candidate_reg[7]  ( .D(n4), .CK(clk), .RN(n13), .Q(candidate[7]) );
  DFFRX1 \candidate_reg[1]  ( .D(n10), .CK(clk), .RN(n13), .Q(candidate[1]) );
  DFFRX1 \candidate_reg[2]  ( .D(n9), .CK(clk), .RN(n13), .Q(candidate[2]) );
  DFFRX1 \candidate_reg[3]  ( .D(n8), .CK(clk), .RN(n13), .Q(candidate[3]) );
  DFFRX1 \candidate_reg[4]  ( .D(n7), .CK(clk), .RN(n13), .Q(candidate[4]) );
  DFFRX1 \candidate_reg[5]  ( .D(n6), .CK(clk), .RN(n13), .Q(candidate[5]) );
  DFFRX1 \candidate_reg[6]  ( .D(n5), .CK(clk), .RN(n13), .Q(candidate[6]) );
  DFFRX1 \candidate_reg[0]  ( .D(n11), .CK(clk), .RN(n13), .Q(candidate[0]) );
  NOR2X6 U3 ( .A(plus), .B(en), .Y(n3) );
  NOR2X1 U4 ( .A(en), .B(n3), .Y(n1) );
  NOR2X1 U5 ( .A(en), .B(n3), .Y(n2) );
  NOR2X1 U6 ( .A(en), .B(n3), .Y(n12) );
  AO22XL U7 ( .A0(N12), .A1(n1), .B0(candidate[7]), .B1(n3), .Y(n4) );
  AO22XL U8 ( .A0(N11), .A1(n12), .B0(candidate[6]), .B1(n3), .Y(n5) );
  AO22XL U9 ( .A0(N10), .A1(n2), .B0(candidate[5]), .B1(n3), .Y(n6) );
  AO22XL U10 ( .A0(N9), .A1(n1), .B0(candidate[4]), .B1(n3), .Y(n7) );
  AO22XL U11 ( .A0(N8), .A1(n12), .B0(candidate[3]), .B1(n3), .Y(n8) );
  AO22XL U12 ( .A0(N7), .A1(n2), .B0(candidate[2]), .B1(n3), .Y(n9) );
  AO22XL U13 ( .A0(N6), .A1(n1), .B0(candidate[1]), .B1(n3), .Y(n10) );
  AO22XL U14 ( .A0(N5), .A1(n12), .B0(candidate[0]), .B1(n3), .Y(n11) );
  CLKINVX1 U15 ( .A(rst), .Y(n13) );
endmodule


module SET ( clk, rst, en, central, radius, mode, busy, valid, candidate );
  input [23:0] central;
  input [11:0] radius;
  input [1:0] mode;
  output [7:0] candidate;
  input clk, rst, en;
  output busy, valid;
  wire   addrEnd, DecideResult;
  wire   [5:0] WorkAddr;

  stateGenerator stateGenerator ( .clk(clk), .rst(rst), .addrEnd(addrEnd), 
        .en(en), .busy(busy), .valid(valid) );
  addressGenerator addressGenerator ( .clk(clk), .rst(rst), .en(en), .busy(
        busy), .addrEnd(addrEnd), .addr(WorkAddr) );
  judge judge ( .addressIn(WorkAddr), .central(central), .radius(radius), 
        .mode(mode), .DecideResult(DecideResult) );
  candicateCounter candiCal ( .clk(clk), .rst(rst), .plus(DecideResult), .en(
        en), .candidate(candidate) );
endmodule

