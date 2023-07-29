/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03
// Date      : Fri Jul 28 01:16:42 2023
/////////////////////////////////////////////////////////////


module LBP_DW01_inc_0_DW01_inc_1 ( A, SUM );
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
  INVXL U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module LBP_DW01_inc_2_DW01_inc_3 ( A, SUM );
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
  INVXL U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module LBP_DW01_inc_1_DW01_inc_2 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module LBP_DW01_add_9 ( A, B, SUM );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n11, n12, n13, n14, n16, n18, n19,
         n20, n21, n22, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n44, n45, n46, n47, n48, n49, n82, n83,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n95, n96, n97, n98, n99,
         n100;

  XNOR2X4 U1 ( .A(n12), .B(n2), .Y(SUM[7]) );
  XNOR2X4 U6 ( .A(n19), .B(n3), .Y(SUM[6]) );
  AOI21X4 U9 ( .A0(n83), .A1(n98), .B0(n16), .Y(n14) );
  AOI21X4 U33 ( .A0(n29), .A1(n37), .B0(n30), .Y(n1) );
  INVX1 U62 ( .A(n18), .Y(n16) );
  XOR2X2 U63 ( .A(n85), .B(n5), .Y(SUM[4]) );
  INVX4 U65 ( .A(n36), .Y(n88) );
  NOR2X4 U67 ( .A(B[4]), .B(A[4]), .Y(n27) );
  NAND2X2 U75 ( .A(B[3]), .B(A[3]), .Y(n32) );
  NOR2X4 U77 ( .A(B[2]), .B(A[2]), .Y(n34) );
  NAND2X2 U84 ( .A(n91), .B(n92), .Y(SUM[2]) );
  NAND2X1 U85 ( .A(B[6]), .B(A[6]), .Y(n18) );
  NAND2X2 U86 ( .A(n88), .B(n47), .Y(n89) );
  CLKINVX1 U87 ( .A(n7), .Y(n90) );
  NAND2X1 U88 ( .A(n90), .B(n36), .Y(n92) );
  NAND2X2 U89 ( .A(n93), .B(n25), .Y(n83) );
  NAND2X1 U91 ( .A(B[5]), .B(A[5]), .Y(n25) );
  XNOR2X4 U92 ( .A(n26), .B(n4), .Y(SUM[5]) );
  INVX1 U93 ( .A(B[0]), .Y(n100) );
  OAI21X4 U94 ( .A0(n85), .A1(n20), .B0(n21), .Y(n19) );
  OAI21X4 U95 ( .A0(n85), .A1(n27), .B0(n28), .Y(n26) );
  OAI21X4 U96 ( .A0(n85), .A1(n13), .B0(n14), .Y(n12) );
  CLKINVX3 U97 ( .A(n83), .Y(n21) );
  OR2X2 U98 ( .A(B[6]), .B(A[6]), .Y(n98) );
  NOR2X4 U104 ( .A(B[3]), .B(A[3]), .Y(n31) );
  INVX1 U107 ( .A(n24), .Y(n44) );
  NOR2X2 U108 ( .A(n27), .B(n24), .Y(n22) );
  OR2X4 U109 ( .A(n24), .B(n28), .Y(n93) );
  INVX4 U110 ( .A(n86), .Y(n96) );
  NAND2X1 U113 ( .A(n44), .B(n25), .Y(n4) );
  INVXL U115 ( .A(n31), .Y(n46) );
  XNOR2X4 U116 ( .A(n33), .B(n6), .Y(SUM[3]) );
  INVXL U117 ( .A(n27), .Y(n45) );
  OR2X1 U118 ( .A(B[7]), .B(A[7]), .Y(n99) );
  CLKINVX1 U119 ( .A(n22), .Y(n20) );
  NAND2X1 U120 ( .A(n22), .B(n98), .Y(n13) );
  NAND2X1 U121 ( .A(n99), .B(n11), .Y(n2) );
  NAND2X1 U122 ( .A(n98), .B(n18), .Y(n3) );
  NAND2XL U123 ( .A(B[7]), .B(A[7]), .Y(n11) );
  NAND2XL U124 ( .A(n48), .B(n39), .Y(n8) );
  NAND2X8 U72 ( .A(n97), .B(n39), .Y(n37) );
  NAND2X6 U90 ( .A(n82), .B(n96), .Y(n97) );
  NOR2X4 U71 ( .A(B[1]), .B(A[1]), .Y(n38) );
  AND2X4 U68 ( .A(B[0]), .B(A[0]), .Y(n82) );
  NOR2X4 U102 ( .A(B[5]), .B(A[5]), .Y(n24) );
  NOR2X2 U99 ( .A(n34), .B(n31), .Y(n29) );
  INVX3 U76 ( .A(n34), .Y(n47) );
  INVX3 U106 ( .A(n37), .Y(n36) );
  NAND2X2 U81 ( .A(n47), .B(n35), .Y(n7) );
  NOR2BX2 U70 ( .AN(n100), .B(A[0]), .Y(n40) );
  BUFX12 U61 ( .A(n1), .Y(n85) );
  INVX1 U69 ( .A(n40), .Y(n49) );
  NAND2X2 U78 ( .A(n89), .B(n35), .Y(n33) );
  NAND2X1 U64 ( .A(n7), .B(n88), .Y(n91) );
  NAND2X1 U112 ( .A(n45), .B(n28), .Y(n5) );
  XOR2X1 U83 ( .A(n8), .B(n95), .Y(SUM[1]) );
  BUFX8 U101 ( .A(n38), .Y(n86) );
  OR2X4 U82 ( .A(n31), .B(n35), .Y(n87) );
  NAND2X4 U74 ( .A(n87), .B(n32), .Y(n30) );
  INVX1 U114 ( .A(n86), .Y(n48) );
  NAND2X2 U66 ( .A(B[1]), .B(A[1]), .Y(n39) );
  NAND2X4 U73 ( .A(B[2]), .B(A[2]), .Y(n35) );
  NAND2X1 U79 ( .A(n46), .B(n32), .Y(n6) );
  AND2X2 U80 ( .A(n49), .B(n95), .Y(SUM[0]) );
  INVX1 U100 ( .A(n82), .Y(n95) );
  NAND2X2 U103 ( .A(B[4]), .B(A[4]), .Y(n28) );
endmodule


module LBP_DW01_dec_2 ( A, SUM );
  input [13:0] A;
  output [13:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;

  XNOR2X1 U1 ( .A(n1), .B(A[13]), .Y(SUM[13]) );
  XNOR2X1 U2 ( .A(A[12]), .B(n2), .Y(SUM[12]) );
  XNOR2X1 U4 ( .A(A[11]), .B(n3), .Y(SUM[11]) );
  XNOR2X1 U6 ( .A(A[10]), .B(n4), .Y(SUM[10]) );
  XNOR2X1 U8 ( .A(A[9]), .B(n5), .Y(SUM[9]) );
  XNOR2X1 U10 ( .A(A[8]), .B(n6), .Y(SUM[8]) );
  XNOR2X1 U12 ( .A(A[7]), .B(n7), .Y(SUM[7]) );
  XNOR2X1 U14 ( .A(n8), .B(A[6]), .Y(SUM[6]) );
  XNOR2X1 U16 ( .A(n9), .B(A[5]), .Y(SUM[5]) );
  OR2X2 U17 ( .A(n9), .B(A[5]), .Y(n8) );
  XNOR2X1 U18 ( .A(n10), .B(A[4]), .Y(SUM[4]) );
  OR2X2 U19 ( .A(n10), .B(A[4]), .Y(n9) );
  XNOR2X1 U20 ( .A(n11), .B(A[3]), .Y(SUM[3]) );
  OR2X2 U21 ( .A(n11), .B(A[3]), .Y(n10) );
  XNOR2X1 U22 ( .A(n12), .B(A[2]), .Y(SUM[2]) );
  OR2X2 U23 ( .A(n12), .B(A[2]), .Y(n11) );
  XNOR2X1 U24 ( .A(A[1]), .B(A[0]), .Y(SUM[1]) );
  OR2X1 U25 ( .A(A[1]), .B(A[0]), .Y(n12) );
  OR2X1 U15 ( .A(n8), .B(A[6]), .Y(n7) );
  OR2X1 U13 ( .A(A[7]), .B(n7), .Y(n6) );
  OR2X1 U11 ( .A(A[8]), .B(n6), .Y(n5) );
  OR2X1 U9 ( .A(A[9]), .B(n5), .Y(n4) );
  OR2X1 U7 ( .A(A[10]), .B(n4), .Y(n3) );
  OR2X1 U5 ( .A(A[11]), .B(n3), .Y(n2) );
  OR2X1 U3 ( .A(A[12]), .B(n2), .Y(n1) );
  INVXL U30 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module LBP ( clk, reset, gray_addr, gray_req, gray_ready, gray_data, lbp_addr, 
        lbp_valid, lbp_data, finish );
  output [13:0] gray_addr;
  input [7:0] gray_data;
  output [13:0] lbp_addr;
  output [7:0] lbp_data;
  input clk, reset, gray_ready;
  output gray_req, lbp_valid, finish;
  wire   n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n412, n413, N96, N97, N98,
         N99, N100, N101, N102, N103, N104, N105, N106, N107, N122, N123, N124,
         N125, N126, N127, N128, N152, N153, N154, N155, N156, N157, N158,
         N159, N160, N161, N162, N163, N178, N179, N180, N181, N182, N183,
         N184, N185, N186, N187, N188, N189, N190, N191, N207, N208, N209,
         N210, N211, N212, N213, N214, N215, N216, N217, N218, N219, N242,
         N243, N244, N245, N246, N247, N248, N249, N250, N251, N252, N253,
         N254, N262, N265, N266, N267, N268, N270, N271, N272, N273, N274,
         N275, N298, N299, N300, N301, N302, N303, N304, N305, N306, N307,
         N308, N309, N310, N340, N346, N347, N348, N349, N350, N351, N352,
         N353, N354, N355, N356, N357, N358, N359, N360, N361, N366, N367,
         N368, N369, N370, N371, N372, N373, N375, N376, N377, N378, N379,
         N380, N381, N3820, N3900, N3910, N3920, N439, n40, n42, n43, n44, n45,
         n46, n47, n49, n50, n52, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n960, n970, n980, n990, n1000, n1010, n1020,
         n1030, n1040, n1050, n1060, n1070, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n1220, n1230, n1240,
         n131, n134, n135, n137, n140, n144, n147, n148, n150, n1520, n1530,
         n1540, n1560, n1570, n1580, n1590, n1600, n1610, n1620, n1630, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n1810, n1820, n1830, n1840, n1850, n1860, n1870, n1880, n1890,
         n1900, n1910, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n2070, n2080, n2090, n2100, n2110,
         n2120, n2130, n2140, n2150, n2160, n2170, N453, N452, N451, N450,
         N449, N448, N447, N446, N240, N239, N238, N237, N236, N235, N234,
         N226, N225, N224, N223, N222, N221, N220, N930, N920, N910, N900,
         N890, N880, N790, N780, N770, N760, N750, N740,
         add_1_root_add_46_2_carry_3_, add_1_root_add_46_2_carry_4_,
         add_1_root_add_46_2_carry_5_, add_1_root_add_46_2_carry_6_,
         add_1_root_add_46_2_carry_7_, add_1_root_add_46_2_carry_8_,
         add_1_root_add_46_2_carry_9_, add_1_root_add_46_2_carry_10_,
         add_1_root_add_46_2_carry_11_, add_1_root_add_46_2_carry_12_,
         add_1_root_add_46_2_carry_13_, add_1_root_add_44_2_carry_2_,
         add_1_root_add_44_2_carry_3_, add_1_root_add_44_2_carry_4_,
         add_1_root_add_44_2_carry_5_, add_1_root_add_44_2_carry_6_,
         add_1_root_add_44_2_carry_7_, add_1_root_add_44_2_carry_8_,
         add_1_root_add_44_2_carry_9_, add_1_root_add_44_2_carry_10_,
         add_1_root_add_44_2_carry_11_, add_1_root_add_44_2_carry_12_,
         add_1_root_add_44_2_carry_13_, add_1_root_add_49_3_carry_2_,
         add_1_root_add_49_3_carry_3_, add_1_root_add_49_3_carry_4_,
         add_1_root_add_49_3_carry_5_, add_1_root_add_49_3_carry_6_,
         add_1_root_add_49_3_carry_7_, add_1_root_add_49_3_carry_8_,
         add_1_root_add_49_3_carry_9_, add_1_root_add_49_3_carry_10_,
         add_1_root_add_49_3_carry_11_, add_1_root_add_49_3_carry_12_,
         add_1_root_add_49_3_carry_13_, n2200, n2210, n2220, n2230, n2240,
         n2250, n2260, n227, n228, n229, n230, n231, n2620, n264, n2650, n2660,
         n2670, n2680, n269, n2700, n2710, n2720, n2730, n2740, n2750, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n2980,
         n3030, n3050, n3080, n3100, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n3400, n341, n342, n343, n344, n345, n3470, n3480, n3490, n3500,
         n3510, n3520, n3530, n3540, n3550, n3560, n3570, n3580, n3590, n3600,
         n3610, n362, n363, n364, n365, n3660, n3670, n3680, n3690, n3700,
         n3710, n3720, n3730, n374, n3750, n3760, n3770, n3780, n3790, n3800,
         n3810;
  wire   [7:0] row;
  wire   [3:1] counter;
  wire   [7:0] g_center;
  wire   [13:8] r481_carry;
  wire   [13:2] add_0_root_sub_0_root_sub_42_2_carry;
  wire   [13:8] add_43_carry;
  wire   [13:3] add_0_root_sub_0_root_sub_47_carry;
  wire   [13:9] add_48_2_carry;

  DFFRX1 row_reg_7_ ( .D(n200), .CK(clk), .RN(n3520), .Q(row[7]), .QN(n230) );
  DFFRX1 row_reg_5_ ( .D(n198), .CK(clk), .RN(n3520), .Q(row[5]) );
  DFFRX1 col_reg_6_ ( .D(n169), .CK(clk), .RN(n3520), .Q(N268), .QN(n2250) );
  DFFRX1 col_reg_5_ ( .D(n170), .CK(clk), .RN(n3080), .Q(N267), .QN(n2220) );
  DFFRX1 col_reg_4_ ( .D(n171), .CK(clk), .RN(n3080), .Q(N266), .QN(n2210) );
  DFFRX1 col_reg_3_ ( .D(n172), .CK(clk), .RN(n3080), .Q(N265), .QN(n2200) );
  DFFRX1 row_reg_2_ ( .D(n195), .CK(clk), .RN(n3520), .Q(row[2]) );
  DFFRX1 row_reg_1_ ( .D(n194), .CK(clk), .RN(n3520), .Q(row[1]) );
  DFFRX2 LBP_value_reg_4_ ( .D(n205), .CK(clk), .RN(n3080), .Q(n408), .QN(
        n1600) );
  DFFRX2 LBP_value_reg_5_ ( .D(n204), .CK(clk), .RN(n3080), .Q(n407), .QN(
        n1610) );
  DFFRX2 LBP_value_reg_3_ ( .D(n206), .CK(clk), .RN(n3080), .Q(n409), .QN(
        n1590) );
  DFFRX2 LBP_value_reg_6_ ( .D(n203), .CK(clk), .RN(n3080), .Q(n406), .QN(
        n1620) );
  DFFRX2 LBP_value_reg_7_ ( .D(n202), .CK(clk), .RN(n3080), .Q(n405), .QN(
        n1630) );
  DFFRX1 counter_reg_0_ ( .D(n282), .CK(clk), .RN(n3520), .Q(N340), .QN(n341)
         );
  DFFRX1 counter_reg_2_ ( .D(N3910), .CK(clk), .RN(n3520), .Q(counter[2]), 
        .QN(n176) );
  DFFRX1 finish_reg_reg ( .D(n165), .CK(clk), .RN(n3520), .Q(n413), .QN(n164)
         );
  DFFRX1 counter_reg_3_ ( .D(N3920), .CK(clk), .RN(n3520), .Q(counter[3]), 
        .QN(n175) );
  DFFRX1 row_reg_6_ ( .D(n199), .CK(clk), .RN(n3520), .Q(row[6]), .QN(n227) );
  DFFRX1 col_reg_7_ ( .D(n168), .CK(clk), .RN(n3520), .Q(n2680) );
  EDFFXL gray_addr_reg_reg_13_ ( .D(n42), .E(n3760), .CK(clk), .Q(n382) );
  DFFRXL row_reg_4_ ( .D(n197), .CK(clk), .RN(n3520), .Q(row[4]), .QN(n2260)
         );
  DFFRX1 LBP_value_reg_1_ ( .D(n2080), .CK(clk), .RN(n3080), .Q(n411), .QN(
        n1570) );
  DFFRX1 LBP_value_reg_2_ ( .D(n2070), .CK(clk), .RN(n3080), .Q(n410), .QN(
        n1580) );
  DFFRX1 LBP_value_reg_0_ ( .D(n2090), .CK(clk), .RN(n3080), .Q(n412), .QN(
        n1560) );
  NAND2X6 U182 ( .A(n2710), .B(n339), .Y(n343) );
  NAND2X2 U184 ( .A(n318), .B(g_center[5]), .Y(n325) );
  NAND3X2 U187 ( .A(gray_data[4]), .B(n319), .C(n325), .Y(n285) );
  AND2X4 U189 ( .A(n277), .B(n284), .Y(N348) );
  CLKAND2X8 U191 ( .A(n2650), .B(n338), .Y(n2710) );
  AOI21X2 U193 ( .A0(n317), .A1(n285), .B0(g_center[6]), .Y(n320) );
  OAI2BB2X4 U194 ( .B0(n1580), .B1(n2740), .A0N(N356), .A1N(n2750), .Y(n2070)
         );
  AND2X4 U195 ( .A(n276), .B(n281), .Y(N351) );
  AND2X2 U196 ( .A(g_center[4]), .B(n326), .Y(n2670) );
  NOR2BX2 U197 ( .AN(g_center[6]), .B(gray_data[6]), .Y(n2660) );
  INVX3 U198 ( .A(gray_data[4]), .Y(n326) );
  INVX1 U199 ( .A(n317), .Y(n323) );
  AND3X4 U202 ( .A(N340), .B(n3470), .C(n284), .Y(N349) );
  AOI22X1 U203 ( .A0(N128), .A1(n50), .B0(N191), .B1(n3780), .Y(n45) );
  XOR2X1 U204 ( .A(n296), .B(r481_carry[9]), .Y(n401) );
  CLKBUFX3 U205 ( .A(row[3]), .Y(n295) );
  CLKBUFX3 U207 ( .A(row[2]), .Y(n296) );
  INVX16 U208 ( .A(n3100), .Y(lbp_addr[0]) );
  OAI2BB2XL U209 ( .B0(n1560), .B1(n2740), .A0N(N354), .A1N(n2750), .Y(n2090)
         );
  OAI2BB2X2 U210 ( .B0(n1610), .B1(n2740), .A0N(N359), .A1N(n2750), .Y(n204)
         );
  AND2X4 U211 ( .A(n343), .B(n2700), .Y(n276) );
  AND3X2 U212 ( .A(n269), .B(n342), .C(n344), .Y(n2700) );
  CLKBUFX3 U215 ( .A(n2680), .Y(n2980) );
  INVXL U217 ( .A(n227), .Y(n231) );
  AND2X6 U218 ( .A(n281), .B(n284), .Y(N347) );
  AND2X6 U219 ( .A(n276), .B(n279), .Y(N350) );
  XNOR2X2 U222 ( .A(n293), .B(n3660), .Y(N780) );
  BUFX12 U223 ( .A(n397), .Y(lbp_addr[13]) );
  XOR2X1 U224 ( .A(row[6]), .B(r481_carry[13]), .Y(n397) );
  BUFX12 U225 ( .A(n400), .Y(lbp_addr[10]) );
  AND2X1 U226 ( .A(r481_carry[9]), .B(n296), .Y(r481_carry[10]) );
  XOR2X1 U227 ( .A(n295), .B(r481_carry[10]), .Y(n400) );
  BUFX12 U228 ( .A(n402), .Y(lbp_addr[8]) );
  XOR2X1 U229 ( .A(n297), .B(r481_carry[8]), .Y(n402) );
  BUFX12 U230 ( .A(n398), .Y(lbp_addr[12]) );
  XOR2X1 U231 ( .A(n293), .B(r481_carry[12]), .Y(n398) );
  BUFX12 U232 ( .A(n388), .Y(gray_addr[7]) );
  BUFX12 U233 ( .A(n386), .Y(gray_addr[9]) );
  BUFX12 U234 ( .A(n384), .Y(gray_addr[11]) );
  BUFX12 U235 ( .A(n413), .Y(finish) );
  BUFX12 U236 ( .A(n395), .Y(gray_addr[0]) );
  BUFX12 U237 ( .A(n394), .Y(gray_addr[1]) );
  BUFX12 U238 ( .A(n393), .Y(gray_addr[2]) );
  BUFX12 U239 ( .A(n392), .Y(gray_addr[3]) );
  BUFX12 U240 ( .A(n391), .Y(gray_addr[4]) );
  BUFX12 U241 ( .A(n390), .Y(gray_addr[5]) );
  BUFX12 U242 ( .A(n389), .Y(gray_addr[6]) );
  BUFX12 U243 ( .A(n387), .Y(gray_addr[8]) );
  BUFX12 U244 ( .A(n385), .Y(gray_addr[10]) );
  BUFX12 U245 ( .A(n383), .Y(gray_addr[12]) );
  BUFX12 U246 ( .A(n382), .Y(gray_addr[13]) );
  BUFX12 U247 ( .A(n404), .Y(lbp_valid) );
  INVX12 U248 ( .A(n1630), .Y(lbp_data[7]) );
  INVX12 U249 ( .A(n1620), .Y(lbp_data[6]) );
  INVX12 U250 ( .A(n1560), .Y(lbp_data[0]) );
  INVX12 U251 ( .A(n1590), .Y(lbp_data[3]) );
  INVX12 U252 ( .A(n1610), .Y(lbp_data[5]) );
  INVX12 U253 ( .A(n1580), .Y(lbp_data[2]) );
  INVX12 U254 ( .A(n1570), .Y(lbp_data[1]) );
  INVX12 U255 ( .A(n1600), .Y(lbp_data[4]) );
  OAI21X1 U256 ( .A0(n365), .A1(n2260), .B0(n3660), .Y(N770) );
  BUFX12 U257 ( .A(n399), .Y(lbp_addr[11]) );
  XOR2X1 U258 ( .A(n294), .B(r481_carry[11]), .Y(n399) );
  BUFX12 U259 ( .A(n403), .Y(lbp_addr[7]) );
  XOR2X1 U260 ( .A(n2980), .B(n292), .Y(n403) );
  INVX12 U262 ( .A(n2620), .Y(lbp_addr[9]) );
  NAND2X1 U263 ( .A(n264), .B(gray_data[7]), .Y(n2650) );
  OR2X4 U265 ( .A(n318), .B(g_center[5]), .Y(n317) );
  OAI21X4 U266 ( .A0(n1230), .A1(n1240), .B0(n3520), .Y(n40) );
  OAI2BB2X2 U271 ( .B0(n1600), .B1(n2740), .A0N(N358), .A1N(n2750), .Y(n205)
         );
  ADDFXL U272 ( .A(N234), .B(n2980), .CI(add_0_root_sub_0_root_sub_47_carry[7]), .CO(add_0_root_sub_0_root_sub_47_carry[8]), .S(N248) );
  OR2X1 U274 ( .A(n363), .B(n296), .Y(n364) );
  ADDFXL U275 ( .A(N220), .B(n2980), .CI(add_1_root_add_49_3_carry_7_), .CO(
        add_1_root_add_49_3_carry_8_), .S(N304) );
  XOR2X1 U277 ( .A(N238), .B(add_0_root_sub_0_root_sub_47_carry[11]), .Y(N252)
         );
  AND2XL U280 ( .A(add_1_root_add_44_2_carry_11_), .B(N770), .Y(
        add_1_root_add_44_2_carry_12_) );
  XOR2XL U281 ( .A(N770), .B(add_1_root_add_44_2_carry_11_), .Y(N161) );
  AND2XL U282 ( .A(add_43_carry[11]), .B(N770), .Y(add_43_carry[12]) );
  AND2X2 U285 ( .A(add_1_root_add_49_3_carry_2_), .B(lbp_addr[2]), .Y(
        add_1_root_add_49_3_carry_3_) );
  AND2X2 U286 ( .A(add_1_root_add_49_3_carry_4_), .B(lbp_addr[4]), .Y(
        add_1_root_add_49_3_carry_5_) );
  AND2X2 U287 ( .A(add_1_root_add_49_3_carry_10_), .B(N223), .Y(
        add_1_root_add_49_3_carry_11_) );
  AND2X2 U292 ( .A(add_1_root_add_44_2_carry_8_), .B(N740), .Y(
        add_1_root_add_44_2_carry_9_) );
  AND2X2 U293 ( .A(add_1_root_add_44_2_carry_10_), .B(N760), .Y(
        add_1_root_add_44_2_carry_11_) );
  AND2X2 U296 ( .A(add_1_root_add_44_2_carry_4_), .B(lbp_addr[4]), .Y(
        add_1_root_add_44_2_carry_5_) );
  XOR2XL U300 ( .A(N760), .B(add_1_root_add_44_2_carry_10_), .Y(N160) );
  XOR2XL U302 ( .A(N740), .B(add_1_root_add_44_2_carry_8_), .Y(N158) );
  XOR2XL U303 ( .A(N268), .B(add_1_root_add_44_2_carry_6_), .Y(N156) );
  XOR2XL U304 ( .A(lbp_addr[5]), .B(add_1_root_add_44_2_carry_5_), .Y(N155) );
  AOI22XL U305 ( .A0(n3030), .A1(n290), .B0(N180), .B1(n3780), .Y(n109) );
  AOI22XL U307 ( .A0(n3050), .A1(n290), .B0(N179), .B1(n3780), .Y(n114) );
  AND2XL U312 ( .A(r481_carry[10]), .B(n295), .Y(r481_carry[11]) );
  AND2X2 U313 ( .A(add_0_root_sub_0_root_sub_47_carry[12]), .B(N239), .Y(
        add_0_root_sub_0_root_sub_47_carry[13]) );
  AND2X2 U314 ( .A(add_1_root_add_49_3_carry_12_), .B(N225), .Y(
        add_1_root_add_49_3_carry_13_) );
  XOR2XL U316 ( .A(N920), .B(add_0_root_sub_0_root_sub_42_2_carry[12]), .Y(
        N106) );
  NOR2XL U317 ( .A(N780), .B(n3690), .Y(n3700) );
  XOR2XL U318 ( .A(N910), .B(add_0_root_sub_0_root_sub_42_2_carry[11]), .Y(
        N105) );
  XOR2X1 U319 ( .A(n294), .B(add_1_root_add_46_2_carry_11_), .Y(N217) );
  XOR2X1 U320 ( .A(N237), .B(add_0_root_sub_0_root_sub_47_carry[10]), .Y(N251)
         );
  XOR2X1 U321 ( .A(N236), .B(add_0_root_sub_0_root_sub_47_carry[9]), .Y(N250)
         );
  AND2XL U322 ( .A(r481_carry[11]), .B(n294), .Y(r481_carry[12]) );
  XNOR2X1 U325 ( .A(add_0_root_sub_0_root_sub_47_carry[6]), .B(lbp_addr[6]), 
        .Y(N247) );
  XNOR2X1 U326 ( .A(add_0_root_sub_0_root_sub_47_carry[5]), .B(lbp_addr[5]), 
        .Y(N246) );
  XNOR2X1 U327 ( .A(add_0_root_sub_0_root_sub_47_carry[4]), .B(lbp_addr[4]), 
        .Y(N245) );
  XNOR2X1 U328 ( .A(add_0_root_sub_0_root_sub_47_carry[3]), .B(lbp_addr[3]), 
        .Y(N244) );
  XNOR2X1 U330 ( .A(lbp_addr[0]), .B(lbp_addr[1]), .Y(N242) );
  AOI22XL U331 ( .A0(n3100), .A1(n3490), .B0(lbp_addr[0]), .B1(n287), .Y(n117)
         );
  INVX3 U332 ( .A(n1220), .Y(n3780) );
  OAI2BB2X2 U333 ( .B0(n1590), .B1(n2740), .A0N(N357), .A1N(n2750), .Y(n206)
         );
  AOI22XL U335 ( .A0(N96), .A1(n3490), .B0(n3030), .B1(n287), .Y(n1070) );
  AOI22XL U336 ( .A0(N298), .A1(n291), .B0(lbp_addr[1]), .B1(n3480), .Y(n113)
         );
  AOI22XL U337 ( .A0(N242), .A1(n3490), .B0(n3050), .B1(n287), .Y(n112) );
  AOI22XL U338 ( .A0(lbp_addr[0]), .A1(n290), .B0(N178), .B1(n3780), .Y(n119)
         );
  AOI22XL U339 ( .A0(n3100), .A1(n291), .B0(lbp_addr[0]), .B1(n3480), .Y(n118)
         );
  AND2X2 U340 ( .A(add_1_root_add_46_2_carry_12_), .B(n293), .Y(
        add_1_root_add_46_2_carry_13_) );
  MX2XL U341 ( .A(g_center[4]), .B(gray_data[4]), .S0(n2730), .Y(n2140) );
  MX2XL U342 ( .A(g_center[0]), .B(gray_data[0]), .S0(n2730), .Y(n2100) );
  MX2XL U343 ( .A(g_center[1]), .B(gray_data[1]), .S0(n2730), .Y(n2110) );
  MX2XL U344 ( .A(g_center[2]), .B(gray_data[2]), .S0(n2730), .Y(n2120) );
  MX2XL U345 ( .A(g_center[3]), .B(gray_data[3]), .S0(n2730), .Y(n2130) );
  MX2XL U346 ( .A(g_center[6]), .B(gray_data[6]), .S0(n2730), .Y(n2160) );
  MX2XL U347 ( .A(g_center[7]), .B(gray_data[7]), .S0(n2730), .Y(n2170) );
  NOR2XL U348 ( .A(n293), .B(n3660), .Y(n3670) );
  CLKBUFX3 U349 ( .A(n55), .Y(n287) );
  CLKBUFX3 U350 ( .A(n49), .Y(n289) );
  CLKBUFX3 U351 ( .A(n47), .Y(n288) );
  AND3X1 U352 ( .A(n295), .B(n297), .C(n296), .Y(n148) );
  CLKINVX1 U353 ( .A(n3680), .Y(n3750) );
  CLKINVX1 U354 ( .A(n3550), .Y(n362) );
  INVXL U355 ( .A(N770), .Y(n3730) );
  INVX3 U356 ( .A(n121), .Y(n3790) );
  AOI22X1 U357 ( .A0(N126), .A1(n290), .B0(N189), .B1(n3780), .Y(n64) );
  AOI22X1 U358 ( .A0(N127), .A1(n50), .B0(N190), .B1(n3780), .Y(n59) );
  AOI22X1 U359 ( .A0(N125), .A1(n50), .B0(N188), .B1(n3780), .Y(n69) );
  AND2X2 U360 ( .A(n3490), .B(n3080), .Y(n2730) );
  INVX3 U361 ( .A(n40), .Y(n3760) );
  CLKINVX1 U362 ( .A(N760), .Y(n374) );
  AOI22X1 U364 ( .A0(N123), .A1(n50), .B0(N186), .B1(n3780), .Y(n79) );
  OR2X1 U365 ( .A(N740), .B(n228), .Y(n3720) );
  AOI22X1 U367 ( .A0(lbp_addr[6]), .A1(n290), .B0(N184), .B1(n3780), .Y(n89)
         );
  CLKINVX1 U368 ( .A(N223), .Y(n3600) );
  AOI22X1 U369 ( .A0(lbp_addr[5]), .A1(n290), .B0(N183), .B1(n3780), .Y(n94)
         );
  CLKINVX1 U370 ( .A(N224), .Y(n3610) );
  AOI22X1 U371 ( .A0(lbp_addr[4]), .A1(n290), .B0(N182), .B1(n3780), .Y(n990)
         );
  AOI22X1 U372 ( .A0(lbp_addr[3]), .A1(n290), .B0(N181), .B1(n3780), .Y(n1040)
         );
  AND2X2 U373 ( .A(n315), .B(n314), .Y(n2740) );
  INVX3 U374 ( .A(n315), .Y(n3480) );
  INVX3 U375 ( .A(n314), .Y(n3490) );
  AO22X1 U376 ( .A0(n286), .A1(lbp_addr[0]), .B0(N375), .B1(n3500), .Y(n167)
         );
  NAND2X1 U377 ( .A(n3510), .B(n277), .Y(n121) );
  INVX3 U378 ( .A(n135), .Y(n3770) );
  CLKINVX1 U379 ( .A(N439), .Y(n3800) );
  CLKBUFX3 U380 ( .A(n50), .Y(n290) );
  AND2X2 U381 ( .A(n2740), .B(n286), .Y(n2750) );
  INVX3 U382 ( .A(n286), .Y(n3500) );
  CLKINVX1 U383 ( .A(n342), .Y(n345) );
  OR2X1 U386 ( .A(n297), .B(n292), .Y(n363) );
  AOI22X1 U387 ( .A0(N107), .A1(n3490), .B0(N275), .B1(n287), .Y(n43) );
  AOI22X1 U389 ( .A0(N106), .A1(n3490), .B0(N274), .B1(n287), .Y(n57) );
  CLKBUFX3 U390 ( .A(n3520), .Y(n3080) );
  ADDFXL U391 ( .A(n228), .B(n2980), .CI(add_1_root_add_44_2_carry_7_), .CO(
        add_1_root_add_44_2_carry_8_), .S(N157) );
  INVX16 U392 ( .A(n2230), .Y(lbp_addr[1]) );
  OR4X1 U393 ( .A(n288), .B(n289), .C(n290), .D(n291), .Y(n1230) );
  NAND4X1 U394 ( .A(n2740), .B(n1220), .C(n3530), .D(n121), .Y(n1240) );
  ADDFXL U395 ( .A(n292), .B(n2980), .CI(
        add_0_root_sub_0_root_sub_42_2_carry[7]), .CO(
        add_0_root_sub_0_root_sub_42_2_carry[8]), .S(N101) );
  ADDFXL U396 ( .A(n292), .B(n2980), .CI(add_1_root_add_46_2_carry_7_), .CO(
        add_1_root_add_46_2_carry_8_), .S(N213) );
  AOI22X1 U397 ( .A0(N105), .A1(n3490), .B0(N273), .B1(n287), .Y(n62) );
  INVX16 U398 ( .A(n2240), .Y(lbp_addr[2]) );
  INVX16 U399 ( .A(n2200), .Y(lbp_addr[3]) );
  AOI222XL U400 ( .A0(N216), .A1(n288), .B0(N307), .B1(n3790), .C0(N251), .C1(
        n289), .Y(n70) );
  INVX16 U401 ( .A(n2210), .Y(lbp_addr[4]) );
  AOI22X1 U402 ( .A0(N122), .A1(n50), .B0(N185), .B1(n3780), .Y(n84) );
  AOI222XL U403 ( .A0(N215), .A1(n288), .B0(N306), .B1(n3790), .C0(N250), .C1(
        n289), .Y(n75) );
  INVX16 U404 ( .A(n2220), .Y(lbp_addr[5]) );
  AOI222XL U405 ( .A0(N214), .A1(n288), .B0(N305), .B1(n3790), .C0(N249), .C1(
        n289), .Y(n80) );
  AOI222XL U406 ( .A0(N213), .A1(n288), .B0(N304), .B1(n3790), .C0(N248), .C1(
        n289), .Y(n85) );
  INVX16 U407 ( .A(n2250), .Y(lbp_addr[6]) );
  AOI222XL U408 ( .A0(N212), .A1(n288), .B0(N303), .B1(n3790), .C0(N247), .C1(
        n289), .Y(n90) );
  AOI222XL U409 ( .A0(N211), .A1(n288), .B0(N302), .B1(n3790), .C0(N246), .C1(
        n289), .Y(n95) );
  NAND2X2 U410 ( .A(n1520), .B(n1530), .Y(N439) );
  AND4X1 U411 ( .A(lbp_addr[3]), .B(lbp_addr[4]), .C(lbp_addr[5]), .D(
        lbp_addr[6]), .Y(n1520) );
  AOI222XL U412 ( .A0(N210), .A1(n288), .B0(N301), .B1(n3790), .C0(N245), .C1(
        n289), .Y(n1000) );
  AO22X1 U413 ( .A0(n286), .A1(lbp_addr[6]), .B0(N381), .B1(n3500), .Y(n169)
         );
  AO22X1 U414 ( .A0(n286), .A1(lbp_addr[5]), .B0(N380), .B1(n3500), .Y(n170)
         );
  AOI222XL U415 ( .A0(N209), .A1(n288), .B0(N300), .B1(n3790), .C0(N244), .C1(
        n289), .Y(n1050) );
  AO22X1 U416 ( .A0(n286), .A1(lbp_addr[4]), .B0(N379), .B1(n3500), .Y(n171)
         );
  AO22X1 U417 ( .A0(n286), .A1(lbp_addr[3]), .B0(N378), .B1(n3500), .Y(n172)
         );
  AOI222XL U419 ( .A0(N208), .A1(n288), .B0(N299), .B1(n3790), .C0(N243), .C1(
        n289), .Y(n110) );
  NAND2X1 U420 ( .A(n278), .B(n313), .Y(n314) );
  CLKINVX1 U421 ( .A(n134), .Y(n313) );
  NAND2X1 U422 ( .A(n277), .B(n278), .Y(n315) );
  AO22X1 U423 ( .A0(n286), .A1(lbp_addr[1]), .B0(N376), .B1(n3500), .Y(n174)
         );
  CLKINVX1 U424 ( .A(n3810), .Y(n3510) );
  NAND3X2 U425 ( .A(n137), .B(n3800), .C(n3500), .Y(n135) );
  NAND3BX1 U426 ( .AN(n140), .B(n228), .C(n230), .Y(n137) );
  AO22X1 U428 ( .A0(n135), .A1(n296), .B0(N368), .B1(n3770), .Y(n195) );
  AO22X1 U429 ( .A0(n135), .A1(n297), .B0(N367), .B1(n3770), .Y(n194) );
  CLKBUFX3 U430 ( .A(n52), .Y(n291) );
  AND2X2 U431 ( .A(n278), .B(n131), .Y(n52) );
  AOI222XL U432 ( .A0(N207), .A1(n288), .B0(N298), .B1(n3790), .C0(N242), .C1(
        n289), .Y(n115) );
  AOI222XL U433 ( .A0(n3100), .A1(n288), .B0(n3100), .B1(n3790), .C0(n3100), 
        .C1(n289), .Y(n120) );
  AND2X2 U434 ( .A(n3470), .B(n341), .Y(n277) );
  AND2X2 U435 ( .A(n280), .B(n278), .Y(n50) );
  CLKBUFX3 U436 ( .A(n144), .Y(n286) );
  NAND2X1 U437 ( .A(n280), .B(n3510), .Y(n144) );
  CLKINVX1 U438 ( .A(n131), .Y(n3540) );
  AND3X1 U440 ( .A(n286), .B(n3540), .C(n312), .Y(N3900) );
  OAI2BB2X2 U442 ( .B0(n1630), .B1(n2740), .A0N(N361), .A1N(n2750), .Y(n202)
         );
  NAND2X1 U444 ( .A(gray_data[2]), .B(n329), .Y(n330) );
  NAND4X1 U445 ( .A(n43), .B(n44), .C(n45), .D(n46), .Y(n42) );
  AOI22XL U446 ( .A0(N163), .A1(n291), .B0(n397), .B1(n3480), .Y(n44) );
  AOI222XL U447 ( .A0(N219), .A1(n288), .B0(N310), .B1(n3790), .C0(N254), .C1(
        n289), .Y(n46) );
  AO22XL U448 ( .A0(gray_addr[11]), .A1(n40), .B0(n3760), .B1(n61), .Y(n1820)
         );
  NAND4X1 U449 ( .A(n62), .B(n63), .C(n64), .D(n65), .Y(n61) );
  AOI22XL U450 ( .A0(N161), .A1(n291), .B0(n399), .B1(n3480), .Y(n63) );
  AOI222XL U451 ( .A0(N217), .A1(n288), .B0(N308), .B1(n3790), .C0(N252), .C1(
        n289), .Y(n65) );
  AO22XL U452 ( .A0(gray_addr[12]), .A1(n40), .B0(n3760), .B1(n56), .Y(n1810)
         );
  NAND4X1 U453 ( .A(n57), .B(n58), .C(n59), .D(n60), .Y(n56) );
  AO22XL U455 ( .A0(gray_addr[10]), .A1(n40), .B0(n3760), .B1(n66), .Y(n1830)
         );
  NAND4X1 U456 ( .A(n67), .B(n68), .C(n69), .D(n70), .Y(n66) );
  AOI22XL U457 ( .A0(N160), .A1(n291), .B0(n400), .B1(n3480), .Y(n68) );
  AOI22X1 U458 ( .A0(N104), .A1(n3490), .B0(N272), .B1(n287), .Y(n67) );
  AO22XL U459 ( .A0(gray_addr[9]), .A1(n40), .B0(n3760), .B1(n71), .Y(n1840)
         );
  NAND4X1 U460 ( .A(n72), .B(n73), .C(n74), .D(n75), .Y(n71) );
  AOI22XL U461 ( .A0(N159), .A1(n291), .B0(n401), .B1(n3480), .Y(n73) );
  AOI22X1 U462 ( .A0(N103), .A1(n3490), .B0(N271), .B1(n287), .Y(n72) );
  AO22XL U463 ( .A0(gray_addr[8]), .A1(n40), .B0(n3760), .B1(n76), .Y(n1850)
         );
  NAND4X1 U464 ( .A(n77), .B(n78), .C(n79), .D(n80), .Y(n76) );
  AOI22XL U465 ( .A0(N158), .A1(n291), .B0(n402), .B1(n3480), .Y(n78) );
  AOI22X1 U466 ( .A0(N102), .A1(n3490), .B0(N270), .B1(n287), .Y(n77) );
  AO22XL U467 ( .A0(gray_addr[7]), .A1(n40), .B0(n3760), .B1(n81), .Y(n1860)
         );
  NAND4X1 U468 ( .A(n82), .B(n83), .C(n84), .D(n85), .Y(n81) );
  AOI22XL U469 ( .A0(N157), .A1(n291), .B0(n403), .B1(n3480), .Y(n83) );
  AOI22X1 U470 ( .A0(N101), .A1(n3490), .B0(N122), .B1(n287), .Y(n82) );
  AO22XL U471 ( .A0(gray_addr[6]), .A1(n40), .B0(n3760), .B1(n86), .Y(n1870)
         );
  NAND4X1 U472 ( .A(n87), .B(n88), .C(n89), .D(n90), .Y(n86) );
  AOI22X1 U473 ( .A0(N156), .A1(n291), .B0(lbp_addr[6]), .B1(n3480), .Y(n88)
         );
  AOI22X1 U474 ( .A0(N100), .A1(n3490), .B0(lbp_addr[6]), .B1(n287), .Y(n87)
         );
  AO22XL U475 ( .A0(gray_addr[5]), .A1(n40), .B0(n3760), .B1(n91), .Y(n1880)
         );
  NAND4X1 U476 ( .A(n92), .B(n93), .C(n94), .D(n95), .Y(n91) );
  AOI22X1 U478 ( .A0(N99), .A1(n3490), .B0(lbp_addr[5]), .B1(n287), .Y(n92) );
  AO22XL U479 ( .A0(gray_addr[4]), .A1(n40), .B0(n3760), .B1(n960), .Y(n1890)
         );
  AOI22X1 U481 ( .A0(N154), .A1(n291), .B0(lbp_addr[4]), .B1(n3480), .Y(n980)
         );
  AOI22X1 U482 ( .A0(N98), .A1(n3490), .B0(lbp_addr[4]), .B1(n287), .Y(n970)
         );
  AO22XL U483 ( .A0(gray_addr[3]), .A1(n40), .B0(n3760), .B1(n1010), .Y(n1900)
         );
  NAND4X1 U484 ( .A(n1020), .B(n1030), .C(n1040), .D(n1050), .Y(n1010) );
  AOI22X1 U485 ( .A0(N153), .A1(n291), .B0(lbp_addr[3]), .B1(n3480), .Y(n1030)
         );
  AOI22X1 U486 ( .A0(N97), .A1(n3490), .B0(lbp_addr[3]), .B1(n287), .Y(n1020)
         );
  AO22XL U487 ( .A0(gray_addr[2]), .A1(n40), .B0(n3760), .B1(n1060), .Y(n1910)
         );
  NAND4X1 U488 ( .A(n1070), .B(n108), .C(n109), .D(n110), .Y(n1060) );
  AO22XL U490 ( .A0(gray_addr[1]), .A1(n40), .B0(n3760), .B1(n111), .Y(n192)
         );
  NAND4X1 U491 ( .A(n112), .B(n113), .C(n114), .D(n115), .Y(n111) );
  AO22XL U492 ( .A0(gray_addr[0]), .A1(n40), .B0(n3760), .B1(n116), .Y(n193)
         );
  NAND4X1 U493 ( .A(n117), .B(n118), .C(n119), .D(n120), .Y(n116) );
  CLKBUFX3 U494 ( .A(row[4]), .Y(n294) );
  OAI31XL U495 ( .A0(n3810), .A1(reset), .A2(n134), .B0(n150), .Y(n166) );
  NAND2XL U496 ( .A(lbp_valid), .B(reset), .Y(n150) );
  CLKBUFX3 U497 ( .A(row[5]), .Y(n293) );
  AO22X1 U498 ( .A0(n286), .A1(n2980), .B0(N3820), .B1(n3500), .Y(n168) );
  XOR2X1 U501 ( .A(n3470), .B(counter[2]), .Y(n342) );
  XNOR2X1 U504 ( .A(n316), .B(counter[3]), .Y(n344) );
  NOR2X1 U505 ( .A(counter[2]), .B(counter[1]), .Y(n316) );
  OR2X1 U506 ( .A(counter[1]), .B(n341), .Y(n134) );
  AND2X2 U507 ( .A(n175), .B(n176), .Y(n278) );
  NAND2XL U508 ( .A(n3470), .B(n341), .Y(n312) );
  NAND2X1 U509 ( .A(n176), .B(counter[3]), .Y(n3810) );
  AO22X1 U511 ( .A0(n135), .A1(row[7]), .B0(N373), .B1(n3770), .Y(n200) );
  AO22X1 U512 ( .A0(n135), .A1(row[6]), .B0(N372), .B1(n3770), .Y(n199) );
  AO22X1 U513 ( .A0(n135), .A1(n293), .B0(N371), .B1(n3770), .Y(n198) );
  AO22X1 U514 ( .A0(n135), .A1(n294), .B0(N370), .B1(n3770), .Y(n197) );
  AND2X2 U515 ( .A(counter[1]), .B(n341), .Y(n279) );
  NOR2X1 U516 ( .A(N340), .B(n3470), .Y(n280) );
  AND3X2 U517 ( .A(n280), .B(n175), .C(counter[2]), .Y(n49) );
  NOR3X1 U518 ( .A(counter[3]), .B(n176), .C(n134), .Y(n47) );
  NOR2X1 U519 ( .A(n341), .B(n3470), .Y(n131) );
  AND2X2 U520 ( .A(N340), .B(counter[1]), .Y(n281) );
  NOR3X1 U521 ( .A(counter[3]), .B(n176), .C(n3540), .Y(n55) );
  OAI221XL U522 ( .A0(n3810), .A1(n3500), .B0(n175), .B1(n1540), .C0(n3530), 
        .Y(N3920) );
  NOR2X1 U523 ( .A(n3470), .B(n282), .Y(n1540) );
  AND2X2 U524 ( .A(n341), .B(n286), .Y(n282) );
  OAI31XL U525 ( .A0(n147), .A1(n140), .A2(n286), .B0(n164), .Y(n165) );
  NAND3XL U526 ( .A(n228), .B(n230), .C(n3800), .Y(n147) );
  CLKMX2X2 U527 ( .A(n311), .B(n131), .S0(n176), .Y(N3910) );
  CLKINVX1 U528 ( .A(n1540), .Y(n311) );
  NAND4X1 U529 ( .A(n293), .B(n294), .C(n231), .D(n148), .Y(n140) );
  NAND3X1 U530 ( .A(n175), .B(counter[2]), .C(n277), .Y(n1220) );
  MX2XL U531 ( .A(g_center[5]), .B(n283), .S0(n2730), .Y(n2150) );
  NAND4BX4 U533 ( .AN(n333), .B(n332), .C(n331), .D(n330), .Y(n334) );
  NOR3X2 U534 ( .A(n2720), .B(n326), .C(g_center[4]), .Y(n322) );
  AOI22XL U535 ( .A0(N162), .A1(n291), .B0(n398), .B1(n3480), .Y(n58) );
  AND2X2 U536 ( .A(r481_carry[12]), .B(n293), .Y(r481_carry[13]) );
  OAI32X2 U537 ( .A0(n322), .A1(n323), .A2(n321), .B0(n320), .B1(gray_data[6]), 
        .Y(n339) );
  NAND2X2 U538 ( .A(gray_data[3]), .B(n324), .Y(n332) );
  OAI31X2 U540 ( .A0(n328), .A1(gray_data[0]), .A2(n327), .B0(gray_data[1]), 
        .Y(n331) );
  OAI211X2 U541 ( .A0(n337), .A1(n336), .B0(n334), .C0(n335), .Y(n338) );
  XOR2X1 U542 ( .A(N240), .B(add_0_root_sub_0_root_sub_47_carry[13]), .Y(N254)
         );
  XOR2X1 U543 ( .A(N226), .B(add_1_root_add_49_3_carry_13_), .Y(N310) );
  XOR2X1 U544 ( .A(row[6]), .B(add_1_root_add_46_2_carry_13_), .Y(N219) );
  XOR2X1 U545 ( .A(N790), .B(add_43_carry[13]), .Y(N128) );
  XOR2X1 U546 ( .A(N790), .B(add_1_root_add_44_2_carry_13_), .Y(N163) );
  XOR2X1 U547 ( .A(N226), .B(add_48_2_carry[13]), .Y(N275) );
  XOR2X1 U548 ( .A(N930), .B(add_0_root_sub_0_root_sub_42_2_carry[13]), .Y(
        N107) );
  XOR2X1 U549 ( .A(N239), .B(add_0_root_sub_0_root_sub_47_carry[12]), .Y(N253)
         );
  XOR2X1 U550 ( .A(N225), .B(add_1_root_add_49_3_carry_12_), .Y(N309) );
  XOR2X1 U551 ( .A(n293), .B(add_1_root_add_46_2_carry_12_), .Y(N218) );
  AND2X1 U552 ( .A(add_43_carry[12]), .B(N780), .Y(add_43_carry[13]) );
  XOR2X1 U553 ( .A(N780), .B(add_43_carry[12]), .Y(N127) );
  AND2X1 U554 ( .A(add_1_root_add_44_2_carry_12_), .B(N780), .Y(
        add_1_root_add_44_2_carry_13_) );
  AND2X1 U555 ( .A(add_48_2_carry[12]), .B(N225), .Y(add_48_2_carry[13]) );
  XOR2X1 U556 ( .A(N225), .B(add_48_2_carry[12]), .Y(N274) );
  AND2X1 U557 ( .A(add_0_root_sub_0_root_sub_47_carry[11]), .B(N238), .Y(
        add_0_root_sub_0_root_sub_47_carry[12]) );
  AND2X1 U558 ( .A(add_1_root_add_49_3_carry_11_), .B(N224), .Y(
        add_1_root_add_49_3_carry_12_) );
  XOR2X1 U560 ( .A(N770), .B(add_43_carry[11]), .Y(N126) );
  AND2X1 U561 ( .A(add_48_2_carry[11]), .B(N224), .Y(add_48_2_carry[12]) );
  XOR2X1 U562 ( .A(N224), .B(add_48_2_carry[11]), .Y(N273) );
  AND2X1 U563 ( .A(add_0_root_sub_0_root_sub_42_2_carry[11]), .B(N910), .Y(
        add_0_root_sub_0_root_sub_42_2_carry[12]) );
  XOR2X1 U565 ( .A(N223), .B(add_1_root_add_49_3_carry_10_), .Y(N307) );
  XOR2X1 U566 ( .A(n295), .B(add_1_root_add_46_2_carry_10_), .Y(N216) );
  AND2X1 U567 ( .A(add_43_carry[10]), .B(N760), .Y(add_43_carry[11]) );
  XOR2X1 U568 ( .A(N760), .B(add_43_carry[10]), .Y(N125) );
  AND2X1 U569 ( .A(add_48_2_carry[10]), .B(N223), .Y(add_48_2_carry[11]) );
  XOR2X1 U570 ( .A(N223), .B(add_48_2_carry[10]), .Y(N272) );
  AND2X1 U571 ( .A(add_0_root_sub_0_root_sub_42_2_carry[10]), .B(N900), .Y(
        add_0_root_sub_0_root_sub_42_2_carry[11]) );
  XOR2X1 U572 ( .A(N900), .B(add_0_root_sub_0_root_sub_42_2_carry[10]), .Y(
        N104) );
  AND2X1 U573 ( .A(add_1_root_add_49_3_carry_9_), .B(N222), .Y(
        add_1_root_add_49_3_carry_10_) );
  XOR2X1 U574 ( .A(N222), .B(add_1_root_add_49_3_carry_9_), .Y(N306) );
  AND2X1 U575 ( .A(add_1_root_add_46_2_carry_9_), .B(n296), .Y(
        add_1_root_add_46_2_carry_10_) );
  XOR2X1 U576 ( .A(n296), .B(add_1_root_add_46_2_carry_9_), .Y(N215) );
  AND2X1 U577 ( .A(add_43_carry[9]), .B(N750), .Y(add_43_carry[10]) );
  XOR2X1 U578 ( .A(N750), .B(add_43_carry[9]), .Y(N124) );
  AND2X1 U579 ( .A(add_1_root_add_44_2_carry_9_), .B(N750), .Y(
        add_1_root_add_44_2_carry_10_) );
  AND2X1 U580 ( .A(add_48_2_carry[9]), .B(N222), .Y(add_48_2_carry[10]) );
  XOR2X1 U581 ( .A(N222), .B(add_48_2_carry[9]), .Y(N271) );
  AND2X1 U582 ( .A(add_0_root_sub_0_root_sub_42_2_carry[9]), .B(N890), .Y(
        add_0_root_sub_0_root_sub_42_2_carry[10]) );
  XOR2X1 U583 ( .A(N890), .B(add_0_root_sub_0_root_sub_42_2_carry[9]), .Y(N103) );
  AND2X1 U585 ( .A(add_1_root_add_49_3_carry_8_), .B(N221), .Y(
        add_1_root_add_49_3_carry_9_) );
  XOR2X1 U586 ( .A(N221), .B(add_1_root_add_49_3_carry_8_), .Y(N305) );
  XOR2X1 U587 ( .A(n297), .B(add_1_root_add_46_2_carry_8_), .Y(N214) );
  AND2X1 U588 ( .A(add_43_carry[8]), .B(N740), .Y(add_43_carry[9]) );
  XOR2X1 U589 ( .A(N740), .B(add_43_carry[8]), .Y(N123) );
  AND2X1 U590 ( .A(add_43_carry[8]), .B(N221), .Y(add_48_2_carry[9]) );
  XOR2X1 U591 ( .A(N221), .B(add_43_carry[8]), .Y(N270) );
  AND2X1 U592 ( .A(add_0_root_sub_0_root_sub_42_2_carry[8]), .B(N880), .Y(
        add_0_root_sub_0_root_sub_42_2_carry[9]) );
  XOR2X1 U593 ( .A(N880), .B(add_0_root_sub_0_root_sub_42_2_carry[8]), .Y(N102) );
  AND2X1 U594 ( .A(n228), .B(n2980), .Y(add_43_carry[8]) );
  XOR2X1 U595 ( .A(n2980), .B(n228), .Y(N122) );
  AND2X1 U599 ( .A(add_1_root_add_49_3_carry_6_), .B(lbp_addr[6]), .Y(
        add_1_root_add_49_3_carry_7_) );
  XOR2X1 U600 ( .A(N268), .B(add_1_root_add_49_3_carry_6_), .Y(N303) );
  AND2X1 U601 ( .A(add_1_root_add_46_2_carry_6_), .B(N268), .Y(
        add_1_root_add_46_2_carry_7_) );
  XOR2X1 U602 ( .A(lbp_addr[6]), .B(add_1_root_add_46_2_carry_6_), .Y(N212) );
  AND2X1 U603 ( .A(add_1_root_add_44_2_carry_6_), .B(lbp_addr[6]), .Y(
        add_1_root_add_44_2_carry_7_) );
  OR2X1 U604 ( .A(lbp_addr[6]), .B(add_0_root_sub_0_root_sub_42_2_carry[6]), 
        .Y(add_0_root_sub_0_root_sub_42_2_carry[7]) );
  XNOR2X1 U605 ( .A(add_0_root_sub_0_root_sub_42_2_carry[6]), .B(lbp_addr[6]), 
        .Y(N100) );
  AND2X1 U607 ( .A(add_1_root_add_49_3_carry_5_), .B(lbp_addr[5]), .Y(
        add_1_root_add_49_3_carry_6_) );
  XOR2X1 U608 ( .A(N267), .B(add_1_root_add_49_3_carry_5_), .Y(N302) );
  XOR2X1 U609 ( .A(lbp_addr[5]), .B(add_1_root_add_46_2_carry_5_), .Y(N211) );
  AND2X1 U610 ( .A(add_1_root_add_44_2_carry_5_), .B(lbp_addr[5]), .Y(
        add_1_root_add_44_2_carry_6_) );
  OR2X2 U611 ( .A(lbp_addr[5]), .B(add_0_root_sub_0_root_sub_42_2_carry[5]), 
        .Y(add_0_root_sub_0_root_sub_42_2_carry[6]) );
  XNOR2X1 U612 ( .A(add_0_root_sub_0_root_sub_42_2_carry[5]), .B(lbp_addr[5]), 
        .Y(N99) );
  OR2X2 U613 ( .A(N266), .B(add_0_root_sub_0_root_sub_47_carry[4]), .Y(
        add_0_root_sub_0_root_sub_47_carry[5]) );
  XOR2X1 U614 ( .A(N266), .B(add_1_root_add_49_3_carry_4_), .Y(N301) );
  XOR2X1 U616 ( .A(lbp_addr[4]), .B(add_1_root_add_46_2_carry_4_), .Y(N210) );
  OR2X2 U617 ( .A(lbp_addr[4]), .B(add_0_root_sub_0_root_sub_42_2_carry[4]), 
        .Y(add_0_root_sub_0_root_sub_42_2_carry[5]) );
  XNOR2X1 U618 ( .A(add_0_root_sub_0_root_sub_42_2_carry[4]), .B(lbp_addr[4]), 
        .Y(N98) );
  OR2X2 U619 ( .A(N265), .B(add_0_root_sub_0_root_sub_47_carry[3]), .Y(
        add_0_root_sub_0_root_sub_47_carry[4]) );
  AND2X1 U620 ( .A(add_1_root_add_49_3_carry_3_), .B(lbp_addr[3]), .Y(
        add_1_root_add_49_3_carry_4_) );
  XOR2X1 U621 ( .A(N265), .B(add_1_root_add_49_3_carry_3_), .Y(N300) );
  XOR2X1 U622 ( .A(lbp_addr[3]), .B(add_1_root_add_46_2_carry_3_), .Y(N209) );
  AND2X1 U623 ( .A(add_1_root_add_44_2_carry_3_), .B(lbp_addr[3]), .Y(
        add_1_root_add_44_2_carry_4_) );
  OR2X2 U624 ( .A(lbp_addr[3]), .B(add_0_root_sub_0_root_sub_42_2_carry[3]), 
        .Y(add_0_root_sub_0_root_sub_42_2_carry[4]) );
  XNOR2X1 U625 ( .A(add_0_root_sub_0_root_sub_42_2_carry[3]), .B(lbp_addr[3]), 
        .Y(N97) );
  XOR2X1 U626 ( .A(n3030), .B(add_1_root_add_49_3_carry_2_), .Y(N299) );
  XOR2X1 U627 ( .A(lbp_addr[2]), .B(add_1_root_add_44_2_carry_2_), .Y(N208) );
  XNOR2X1 U629 ( .A(add_0_root_sub_0_root_sub_42_2_carry[2]), .B(lbp_addr[2]), 
        .Y(N96) );
  XOR2X1 U631 ( .A(n3050), .B(lbp_addr[0]), .Y(N298) );
  XOR2X1 U632 ( .A(lbp_addr[1]), .B(lbp_addr[0]), .Y(N207) );
  AND2X1 U633 ( .A(lbp_addr[0]), .B(N439), .Y(N446) );
  AND2X1 U634 ( .A(n3050), .B(N439), .Y(N447) );
  AND2X1 U635 ( .A(n3030), .B(N439), .Y(N448) );
  AND2X1 U636 ( .A(N265), .B(N439), .Y(N449) );
  AND2X1 U637 ( .A(N266), .B(N439), .Y(N450) );
  AND2X1 U638 ( .A(N267), .B(N439), .Y(N451) );
  AND2X1 U639 ( .A(lbp_addr[6]), .B(N439), .Y(N452) );
  AND2X1 U640 ( .A(N439), .B(n2980), .Y(N453) );
  CLKINVX1 U641 ( .A(N220), .Y(N234) );
  NOR2X1 U642 ( .A(n3590), .B(N222), .Y(n3580) );
  NAND2X1 U643 ( .A(n3580), .B(n3600), .Y(n3550) );
  OAI21XL U644 ( .A0(n3580), .A1(n3600), .B0(n3550), .Y(N237) );
  NAND2X1 U645 ( .A(n362), .B(n3610), .Y(n3560) );
  OAI21XL U646 ( .A0(n362), .A1(n3610), .B0(n3560), .Y(N238) );
  XNOR2X1 U647 ( .A(N225), .B(n3560), .Y(N239) );
  XOR2X1 U649 ( .A(N226), .B(n3570), .Y(N240) );
  OAI2BB1X1 U650 ( .A0N(N220), .A1N(N221), .B0(n3590), .Y(N235) );
  AO21X1 U651 ( .A0(n3590), .A1(N222), .B0(n3580), .Y(N236) );
  OAI2BB1X1 U653 ( .A0N(n292), .A1N(n297), .B0(n363), .Y(N740) );
  OAI2BB1X1 U654 ( .A0N(n363), .A1N(n296), .B0(n364), .Y(N750) );
  NOR2X1 U655 ( .A(n364), .B(n295), .Y(n365) );
  AO21X1 U656 ( .A0(n364), .A1(n295), .B0(n365), .Y(N760) );
  NAND2X1 U657 ( .A(n365), .B(n2260), .Y(n3660) );
  XOR2X1 U658 ( .A(n231), .B(n3670), .Y(N790) );
  NOR2X1 U659 ( .A(n3720), .B(N750), .Y(n3710) );
  NAND2X1 U660 ( .A(n3710), .B(n374), .Y(n3680) );
  OAI21XL U661 ( .A0(n3710), .A1(n374), .B0(n3680), .Y(N900) );
  NAND2X1 U662 ( .A(n3750), .B(n3730), .Y(n3690) );
  OAI21XL U663 ( .A0(n3750), .A1(n3730), .B0(n3690), .Y(N910) );
  XNOR2X1 U664 ( .A(N780), .B(n3690), .Y(N920) );
  XOR2X1 U665 ( .A(N790), .B(n3700), .Y(N930) );
  OAI2BB1X1 U666 ( .A0N(n228), .A1N(N740), .B0(n3720), .Y(N880) );
  AO21X1 U667 ( .A0(n3720), .A1(N750), .B0(n3710), .Y(N890) );
  DFFRX2 col_reg_2_ ( .D(n173), .CK(clk), .RN(n3080), .Q(n3030), .QN(n2240) );
  DFFRX2 counter_reg_1_ ( .D(N3900), .CK(clk), .RN(n3520), .Q(counter[1]), 
        .QN(n3470) );
  LBP_DW01_inc_0_DW01_inc_1 add_66 ( .A({row[7:6], n293, n294, n295, n296, 
        n297, n292}), .SUM({N373, N372, N371, N370, N369, N368, N367, N366})
         );
  LBP_DW01_inc_2_DW01_inc_3 add_68_aco ( .A({N453, N452, N451, N450, N449, 
        N448, N447, N446}), .SUM({N3820, N381, N380, N379, N378, N377, N376, 
        N375}) );
  LBP_DW01_inc_1_DW01_inc_2 r489 ( .A({n231, n293, n294, n295, n296, n297, 
        n292}), .SUM({N226, N225, N224, N223, N222, N221, N220}) );
  LBP_DW01_add_9 add_57 ( .A({n405, n406, n407, n408, n409, n410, n411, n412}), 
        .B({N353, N352, N351, N350, N349, N348, N347, N346}), .SUM({N361, N360, 
        N359, N358, N357, N356, N355, N354}) );
  LBP_DW01_dec_2 sub_0_root_sub_45 ( .A({n397, n398, n399, n400, n401, n402, 
        n403, N268, N267, N266, N265, n3030, n3050, N262}), .SUM({N191, N190, 
        N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178}) );
  AND2X2 U273 ( .A(add_1_root_add_46_2_carry_8_), .B(n297), .Y(
        add_1_root_add_46_2_carry_9_) );
  AND2X2 U584 ( .A(add_0_root_sub_0_root_sub_47_carry[8]), .B(N235), .Y(
        add_0_root_sub_0_root_sub_47_carry[9]) );
  OR2X2 U606 ( .A(N267), .B(add_0_root_sub_0_root_sub_47_carry[5]), .Y(
        add_0_root_sub_0_root_sub_47_carry[6]) );
  AND4X8 U200 ( .A(n343), .B(n345), .C(n344), .D(n269), .Y(n284) );
  DFFRX1 row_reg_3_ ( .D(n196), .CK(clk), .RN(n3520), .Q(row[3]) );
  DFFX1 lbp_valid_reg_reg ( .D(n166), .CK(clk), .Q(n404) );
  DFFX1 gray_addr_reg_reg_11_ ( .D(n1820), .CK(clk), .Q(n384) );
  DFFX1 gray_addr_reg_reg_10_ ( .D(n1830), .CK(clk), .Q(n385) );
  DFFX1 gray_addr_reg_reg_9_ ( .D(n1840), .CK(clk), .Q(n386) );
  DFFX1 gray_addr_reg_reg_8_ ( .D(n1850), .CK(clk), .Q(n387) );
  DFFX1 gray_addr_reg_reg_7_ ( .D(n1860), .CK(clk), .Q(n388) );
  DFFX1 gray_addr_reg_reg_6_ ( .D(n1870), .CK(clk), .Q(n389) );
  DFFX1 gray_addr_reg_reg_5_ ( .D(n1880), .CK(clk), .Q(n390) );
  DFFX1 gray_addr_reg_reg_4_ ( .D(n1890), .CK(clk), .Q(n391) );
  DFFX1 gray_addr_reg_reg_3_ ( .D(n1900), .CK(clk), .Q(n392) );
  DFFX1 gray_addr_reg_reg_2_ ( .D(n1910), .CK(clk), .Q(n393) );
  DFFX1 gray_addr_reg_reg_1_ ( .D(n192), .CK(clk), .Q(n394) );
  DFFX1 gray_addr_reg_reg_0_ ( .D(n193), .CK(clk), .Q(n395) );
  DFFX1 gray_addr_reg_reg_12_ ( .D(n1810), .CK(clk), .Q(n383) );
  DFFX1 g_center_reg_1_ ( .D(n2110), .CK(clk), .Q(g_center[1]), .QN(n327) );
  DFFX1 g_center_reg_7_ ( .D(n2170), .CK(clk), .Q(g_center[7]), .QN(n264) );
  DFFX1 g_center_reg_3_ ( .D(n2130), .CK(clk), .Q(g_center[3]), .QN(n324) );
  DFFX1 g_center_reg_2_ ( .D(n2120), .CK(clk), .Q(g_center[2]), .QN(n329) );
  DFFX1 g_center_reg_6_ ( .D(n2160), .CK(clk), .Q(g_center[6]), .QN(n321) );
  DFFX1 g_center_reg_4_ ( .D(n2140), .CK(clk), .Q(g_center[4]), .QN(n319) );
  DFFX1 g_center_reg_0_ ( .D(n2100), .CK(clk), .Q(g_center[0]), .QN(n328) );
  DFFX1 g_center_reg_5_ ( .D(n2150), .CK(clk), .Q(g_center[5]) );
  DFFSX1 row_reg_0_ ( .D(n201), .CK(clk), .SN(n3520), .Q(row[0]), .QN(n228) );
  DFFSX2 col_reg_0_ ( .D(n167), .CK(clk), .SN(n3520), .Q(N262), .QN(n3100) );
  INVX6 U188 ( .A(gray_data[5]), .Y(n318) );
  AND2X4 U186 ( .A(n318), .B(g_center[5]), .Y(n2720) );
  AOI2BB1X2 U539 ( .A0N(gray_data[0]), .A1N(n328), .B0(g_center[1]), .Y(n333)
         );
  OR2X4 U185 ( .A(n2720), .B(n2660), .Y(n229) );
  INVX1 U268 ( .A(n332), .Y(n337) );
  OA22X2 U276 ( .A0(gray_data[3]), .A1(n324), .B0(gray_data[2]), .B1(n329), 
        .Y(n336) );
  DFFRX1 col_reg_1_ ( .D(n174), .CK(clk), .RN(n3080), .Q(n3050), .QN(n2230) );
  AND2X2 U615 ( .A(add_1_root_add_46_2_carry_4_), .B(N266), .Y(
        add_1_root_add_46_2_carry_5_) );
  NOR4BBXL U324 ( .AN(lbp_addr[1]), .BN(lbp_addr[2]), .C(n2980), .D(
        lbp_addr[0]), .Y(n1530) );
  AND2X2 U221 ( .A(n279), .B(n284), .Y(N346) );
  AND2X1 U564 ( .A(add_0_root_sub_0_root_sub_47_carry[10]), .B(N237), .Y(
        add_0_root_sub_0_root_sub_47_carry[11]) );
  AND3X1 U269 ( .A(n276), .B(N340), .C(n3470), .Y(N353) );
  AND2X2 U559 ( .A(add_1_root_add_46_2_carry_11_), .B(n294), .Y(
        add_1_root_add_46_2_carry_12_) );
  AOI222XL U454 ( .A0(N218), .A1(n288), .B0(N309), .B1(n3790), .C0(N253), .C1(
        n289), .Y(n60) );
  OAI2BB2X2 U192 ( .B0(n1570), .B1(n2740), .A0N(N355), .A1N(n2750), .Y(n2080)
         );
  NOR2X4 U190 ( .A(n2670), .B(n229), .Y(n335) );
  OR2X1 U284 ( .A(n3030), .B(add_0_root_sub_0_root_sub_42_2_carry[2]), .Y(
        add_0_root_sub_0_root_sub_47_carry[3]) );
  OR2X1 U598 ( .A(N268), .B(add_0_root_sub_0_root_sub_47_carry[6]), .Y(
        add_0_root_sub_0_root_sub_47_carry[7]) );
  INVX4 U216 ( .A(reset), .Y(n3520) );
  OR2X1 U180 ( .A(lbp_addr[2]), .B(add_0_root_sub_0_root_sub_42_2_carry[2]), 
        .Y(add_0_root_sub_0_root_sub_42_2_carry[3]) );
  OR2X1 U181 ( .A(lbp_addr[1]), .B(lbp_addr[0]), .Y(
        add_0_root_sub_0_root_sub_42_2_carry[2]) );
  INVXL U183 ( .A(gray_data[7]), .Y(n3400) );
  NAND2X1 U201 ( .A(g_center[7]), .B(n3400), .Y(n269) );
  OR2X2 U206 ( .A(N221), .B(N220), .Y(n3590) );
  AND2X1 U213 ( .A(lbp_addr[0]), .B(lbp_addr[1]), .Y(
        add_1_root_add_49_3_carry_2_) );
  AND2X1 U214 ( .A(add_1_root_add_46_2_carry_3_), .B(N265), .Y(
        add_1_root_add_46_2_carry_4_) );
  AND2X1 U220 ( .A(add_1_root_add_46_2_carry_5_), .B(N267), .Y(
        add_1_root_add_46_2_carry_6_) );
  AND2X1 U261 ( .A(add_0_root_sub_0_root_sub_47_carry[9]), .B(N236), .Y(
        add_0_root_sub_0_root_sub_47_carry[10]) );
  AND2X1 U264 ( .A(add_1_root_add_46_2_carry_10_), .B(n295), .Y(
        add_1_root_add_46_2_carry_11_) );
  NOR2XL U267 ( .A(N225), .B(n3560), .Y(n3570) );
  AND2X2 U270 ( .A(n276), .B(n277), .Y(N352) );
  XOR2X1 U278 ( .A(N780), .B(add_1_root_add_44_2_carry_12_), .Y(N162) );
  XOR2X1 U279 ( .A(lbp_addr[3]), .B(add_1_root_add_44_2_carry_3_), .Y(N153) );
  XOR2X1 U283 ( .A(lbp_addr[4]), .B(add_1_root_add_44_2_carry_4_), .Y(N154) );
  XOR2X1 U288 ( .A(N235), .B(add_0_root_sub_0_root_sub_47_carry[8]), .Y(N249)
         );
  XOR2X1 U289 ( .A(N750), .B(add_1_root_add_44_2_carry_9_), .Y(N159) );
  XOR2X1 U290 ( .A(N224), .B(add_1_root_add_49_3_carry_11_), .Y(N308) );
  AND2X1 U291 ( .A(add_0_root_sub_0_root_sub_42_2_carry[12]), .B(N920), .Y(
        add_0_root_sub_0_root_sub_42_2_carry[13]) );
  AND2X1 U294 ( .A(r481_carry[8]), .B(n297), .Y(r481_carry[9]) );
  AOI22XL U295 ( .A0(N152), .A1(n291), .B0(lbp_addr[2]), .B1(n3480), .Y(n108)
         );
  AOI22XL U297 ( .A0(N155), .A1(n291), .B0(lbp_addr[5]), .B1(n3480), .Y(n93)
         );
  AOI22XL U298 ( .A0(N124), .A1(n50), .B0(N187), .B1(n3780), .Y(n74) );
  AND2X1 U299 ( .A(n292), .B(n2980), .Y(r481_carry[8]) );
  INVXL U301 ( .A(n318), .Y(n283) );
  NAND4XL U306 ( .A(n970), .B(n980), .C(n990), .D(n1000), .Y(n960) );
  INVXL U308 ( .A(n287), .Y(n3530) );
  BUFX2 U309 ( .A(row[1]), .Y(n297) );
  INVXL U310 ( .A(n401), .Y(n2620) );
  AO22XL U311 ( .A0(n135), .A1(n292), .B0(N366), .B1(n3770), .Y(n201) );
  AO22XL U315 ( .A0(n135), .A1(n295), .B0(N369), .B1(n3770), .Y(n196) );
  AO22XL U323 ( .A0(n286), .A1(lbp_addr[2]), .B0(N377), .B1(n3500), .Y(n173)
         );
  OAI2BB2X2 U329 ( .B0(n1620), .B1(n2740), .A0N(N360), .A1N(n2750), .Y(n203)
         );
  BUFX2 U334 ( .A(row[0]), .Y(n292) );
  INVX12 U363 ( .A(1'b0), .Y(gray_req) );
  XOR2X1 U384 ( .A(n3030), .B(add_1_root_add_44_2_carry_2_), .Y(N152) );
  AND2X1 U385 ( .A(add_1_root_add_44_2_carry_2_), .B(lbp_addr[2]), .Y(
        add_1_root_add_44_2_carry_3_) );
  AND2X1 U388 ( .A(add_1_root_add_44_2_carry_2_), .B(n3030), .Y(
        add_1_root_add_46_2_carry_3_) );
  AND2X1 U418 ( .A(lbp_addr[0]), .B(lbp_addr[1]), .Y(
        add_1_root_add_44_2_carry_2_) );
  XNOR2X1 U427 ( .A(add_0_root_sub_0_root_sub_42_2_carry[2]), .B(lbp_addr[2]), 
        .Y(N243) );
endmodule

