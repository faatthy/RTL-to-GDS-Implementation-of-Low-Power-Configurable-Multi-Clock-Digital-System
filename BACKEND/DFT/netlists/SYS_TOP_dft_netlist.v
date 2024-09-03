/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06
// Date      : Sun Aug 25 07:15:38 2024
/////////////////////////////////////////////////////////////


module ClkDiv_test_0 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   div_clk, clk_en, n28, n29, n30, n31, n32, n33, n34, n35, n36, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64;
  wire   [6:0] count;

  MX2XLM U40 ( .A(i_ref_clk), .B(div_clk), .S0(clk_en), .Y(o_div_clk) );
  SDFFRQX1M count_reg_0_ ( .D(n36), .SI(test_si), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(count[0]) );
  SDFFRQX1M count_reg_1_ ( .D(n35), .SI(n42), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(count[1]) );
  SDFFRQX1M count_reg_2_ ( .D(n34), .SI(count[1]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[2]) );
  SDFFRQX1M count_reg_3_ ( .D(n33), .SI(count[2]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[3]) );
  SDFFRQX1M count_reg_4_ ( .D(n32), .SI(n57), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(count[4]) );
  SDFFRQX1M count_reg_5_ ( .D(n31), .SI(count[4]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[5]) );
  SDFFRQX1M count_reg_6_ ( .D(n30), .SI(n45), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(count[6]) );
  SDFFRQX1M div_clk_reg ( .D(n29), .SI(n47), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(div_clk) );
  INVXLM U3 ( .A(n62), .Y(n58) );
  OAI21XLM U4 ( .A0(n51), .A1(n43), .B0(div_clk), .Y(n41) );
  OAI21XLM U5 ( .A0(n63), .A1(n64), .B0(count[2]), .Y(n54) );
  NOR4XLM U6 ( .A(i_div_ratio[4]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .D(
        i_div_ratio[2]), .Y(n13) );
  NAND2BXLM U7 ( .AN(i_div_ratio[5]), .B(n13), .Y(n17) );
  NOR3XLM U8 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n17), .Y(n51) );
  INVXLM U9 ( .A(n51), .Y(clk_en) );
  INVXLM U10 ( .A(count[0]), .Y(n42) );
  INVXLM U11 ( .A(i_div_ratio[1]), .Y(n21) );
  INVXLM U12 ( .A(count[5]), .Y(n45) );
  NOR2XLM U13 ( .A(i_div_ratio[6]), .B(n45), .Y(n1) );
  AOI21XLM U14 ( .A0(i_div_ratio[6]), .A1(n45), .B0(n1), .Y(n10) );
  INVXLM U15 ( .A(count[4]), .Y(n59) );
  AOI2BB2XLM U16 ( .B0(i_div_ratio[5]), .B1(n59), .A0N(n59), .A1N(
        i_div_ratio[5]), .Y(n12) );
  INVXLM U17 ( .A(count[1]), .Y(n2) );
  AOI2BB2XLM U18 ( .B0(i_div_ratio[2]), .B1(n2), .A0N(n2), .A1N(i_div_ratio[2]), .Y(n20) );
  OAI2BB2XLM U19 ( .B0(count[3]), .B1(i_div_ratio[4]), .A0N(i_div_ratio[4]), 
        .A1N(count[3]), .Y(n7) );
  OAI2BB2XLM U20 ( .B0(i_div_ratio[3]), .B1(count[2]), .A0N(count[2]), .A1N(
        i_div_ratio[3]), .Y(n9) );
  OAI2BB2XLM U21 ( .B0(count[6]), .B1(i_div_ratio[7]), .A0N(i_div_ratio[7]), 
        .A1N(count[6]), .Y(n19) );
  AND3XLM U22 ( .A(n7), .B(n9), .C(n19), .Y(n3) );
  NAND4XLM U23 ( .A(n10), .B(n12), .C(n20), .D(n3), .Y(n4) );
  AOI221XLM U24 ( .A0(i_div_ratio[1]), .A1(n42), .B0(n21), .B1(count[0]), .C0(
        n4), .Y(n40) );
  OAI21XLM U25 ( .A0(test_so), .A1(n40), .B0(i_div_ratio[0]), .Y(n37) );
  NOR2XLM U26 ( .A(i_div_ratio[1]), .B(i_div_ratio[2]), .Y(n8) );
  NOR3XLM U27 ( .A(i_div_ratio[3]), .B(i_div_ratio[1]), .C(i_div_ratio[2]), 
        .Y(n6) );
  OAI22XLM U28 ( .A0(n8), .A1(n9), .B0(n7), .B1(n6), .Y(n5) );
  AOI221XLM U29 ( .A0(n9), .A1(n8), .B0(n7), .B1(n6), .C0(n5), .Y(n25) );
  INVXLM U30 ( .A(n19), .Y(n16) );
  INVXLM U31 ( .A(n10), .Y(n15) );
  AOI22XLM U32 ( .A0(n20), .A1(count[0]), .B0(n13), .B1(n12), .Y(n11) );
  OAI21XLM U33 ( .A0(n13), .A1(n12), .B0(n11), .Y(n14) );
  AOI221XLM U34 ( .A0(n16), .A1(n17), .B0(n15), .B1(n17), .C0(n14), .Y(n24) );
  AOI31XLM U35 ( .A0(n45), .A1(i_div_ratio[6]), .A2(n19), .B0(n17), .Y(n18) );
  OAI31XLM U36 ( .A0(n45), .A1(i_div_ratio[6]), .A2(n19), .B0(n18), .Y(n23) );
  AOI2BB2XLM U37 ( .B0(n42), .B1(n21), .A0N(n21), .A1N(n20), .Y(n22) );
  NAND4XLM U38 ( .A(n25), .B(n24), .C(n23), .D(n22), .Y(n38) );
  OAI31XLM U39 ( .A0(n37), .A1(n51), .A2(n38), .B0(test_so), .Y(n26) );
  OAI31XLM U41 ( .A0(n37), .A1(n51), .A2(test_so), .B0(n26), .Y(n28) );
  NAND2BXLM U42 ( .AN(test_so), .B(i_div_ratio[0]), .Y(n39) );
  OAI2BB2XLM U43 ( .B0(n40), .B1(n39), .A0N(n38), .A1N(n39), .Y(n43) );
  OAI31XLM U44 ( .A0(n51), .A1(div_clk), .A2(n43), .B0(n41), .Y(n29) );
  NAND2XLM U45 ( .A(n43), .B(clk_en), .Y(n62) );
  NAND2XLM U46 ( .A(n58), .B(n42), .Y(n53) );
  OAI21XLM U47 ( .A0(n42), .A1(clk_en), .B0(n53), .Y(n36) );
  NAND2XLM U48 ( .A(count[1]), .B(count[0]), .Y(n55) );
  NAND2BXLM U49 ( .AN(n55), .B(count[2]), .Y(n52) );
  NAND2BXLM U50 ( .AN(n52), .B(count[3]), .Y(n61) );
  NOR2XLM U51 ( .A(n61), .B(n59), .Y(n46) );
  INVXLM U52 ( .A(n46), .Y(n44) );
  AOI21XLM U53 ( .A0(n43), .A1(n44), .B0(n51), .Y(n50) );
  NAND2XLM U54 ( .A(n58), .B(n45), .Y(n49) );
  OAI22XLM U55 ( .A0(n50), .A1(n45), .B0(n49), .B1(n44), .Y(n31) );
  NAND3XLM U56 ( .A(count[5]), .B(n58), .C(n46), .Y(n48) );
  INVXLM U57 ( .A(count[6]), .Y(n47) );
  AOI32XLM U58 ( .A0(n50), .A1(count[6]), .A2(n49), .B0(n48), .B1(n47), .Y(n30) );
  AOI21XLM U59 ( .A0(n52), .A1(n58), .B0(n51), .Y(n56) );
  INVXLM U60 ( .A(count[3]), .Y(n57) );
  OAI32XLM U61 ( .A0(count[3]), .A1(n62), .A2(n52), .B0(n56), .B1(n57), .Y(n33) );
  NOR2XLM U62 ( .A(count[1]), .B(n62), .Y(n63) );
  NAND2XLM U63 ( .A(clk_en), .B(n53), .Y(n64) );
  OAI31XLM U64 ( .A0(count[2]), .A1(n62), .A2(n55), .B0(n54), .Y(n34) );
  AOI21BXLM U65 ( .A0(n58), .A1(n57), .B0N(n56), .Y(n60) );
  OAI32XLM U66 ( .A0(count[4]), .A1(n62), .A2(n61), .B0(n60), .B1(n59), .Y(n32) );
  AO22XLM U67 ( .A0(count[1]), .A1(n64), .B0(count[0]), .B1(n63), .Y(n35) );
  SDFFSQX1M odd_edge_tog_reg ( .D(n28), .SI(div_clk), .SE(test_se), .CK(
        i_ref_clk), .SN(i_rst), .Q(test_so) );
endmodule


module ClkDiv_test_1 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   div_clk, odd_edge_tog, clk_en, n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58;
  wire   [6:0] count;

  MX2XLM U40 ( .A(i_ref_clk), .B(div_clk), .S0(clk_en), .Y(o_div_clk) );
  SDFFRQX1M count_reg_0_ ( .D(n50), .SI(test_si), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(count[0]) );
  SDFFRQX1M count_reg_1_ ( .D(n51), .SI(count[0]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[1]) );
  SDFFRQX1M count_reg_2_ ( .D(n52), .SI(n41), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(count[2]) );
  SDFFRQX1M count_reg_3_ ( .D(n53), .SI(n42), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(count[3]) );
  SDFFRQX1M count_reg_4_ ( .D(n54), .SI(n37), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(count[4]) );
  SDFFRQX1M count_reg_5_ ( .D(n55), .SI(count[4]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[5]) );
  SDFFRQX1M count_reg_6_ ( .D(n56), .SI(n21), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(count[6]) );
  SDFFRQX1M div_clk_reg ( .D(n57), .SI(count[6]), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(div_clk) );
  NAND3XLM U3 ( .A(i_div_ratio[1]), .B(n47), .C(n2), .Y(n1) );
  OAI31XLM U4 ( .A0(i_div_ratio[1]), .A1(n47), .A2(n2), .B0(n1), .Y(n3) );
  INVXLM U5 ( .A(i_div_ratio[1]), .Y(n8) );
  AOI222XLM U6 ( .A0(count[1]), .A1(n7), .B0(i_div_ratio[1]), .B1(n47), .C0(
        n41), .C1(i_div_ratio[2]), .Y(n10) );
  INVXLM U7 ( .A(n12), .Y(n5) );
  AND4XLM U8 ( .A(n12), .B(n11), .C(n10), .D(n9), .Y(n13) );
  OAI21XLM U9 ( .A0(n39), .A1(n16), .B0(odd_edge_tog), .Y(n15) );
  OAI31XLM U10 ( .A0(n39), .A1(n37), .A2(n24), .B0(count[4]), .Y(n25) );
  OAI31XLM U11 ( .A0(n39), .A1(odd_edge_tog), .A2(n16), .B0(n15), .Y(n58) );
  NOR3XLM U12 ( .A(i_div_ratio[3]), .B(i_div_ratio[1]), .C(i_div_ratio[2]), 
        .Y(n39) );
  INVXLM U13 ( .A(odd_edge_tog), .Y(test_so) );
  INVXLM U14 ( .A(i_div_ratio[2]), .Y(n7) );
  NAND2XLM U15 ( .A(n8), .B(n7), .Y(n6) );
  OAI2BB2XLM U16 ( .B0(i_div_ratio[3]), .B1(count[2]), .A0N(count[2]), .A1N(
        i_div_ratio[3]), .Y(n12) );
  INVXLM U17 ( .A(count[0]), .Y(n47) );
  XOR2XLM U18 ( .A(n7), .B(count[1]), .Y(n2) );
  NOR4XLM U19 ( .A(count[6]), .B(count[3]), .C(count[4]), .D(count[5]), .Y(n11) );
  OAI211XLM U20 ( .A0(n6), .A1(n5), .B0(n3), .C0(n11), .Y(n4) );
  AOI21XLM U21 ( .A0(n6), .A1(n5), .B0(n4), .Y(n18) );
  INVXLM U22 ( .A(count[1]), .Y(n41) );
  NAND2XLM U23 ( .A(count[0]), .B(n8), .Y(n9) );
  OAI221XLM U24 ( .A0(test_so), .A1(n18), .B0(odd_edge_tog), .B1(n13), .C0(
        i_div_ratio[0]), .Y(n16) );
  INVXLM U25 ( .A(n16), .Y(n17) );
  AOI2B1XLM U26 ( .A1N(i_div_ratio[0]), .A0(n18), .B0(n17), .Y(n20) );
  OAI21XLM U27 ( .A0(n39), .A1(n20), .B0(div_clk), .Y(n19) );
  OAI31XLM U28 ( .A0(n39), .A1(div_clk), .A2(n20), .B0(n19), .Y(n57) );
  INVXLM U29 ( .A(n39), .Y(clk_en) );
  NAND2XLM U30 ( .A(n20), .B(clk_en), .Y(n44) );
  INVXLM U31 ( .A(count[2]), .Y(n42) );
  NAND2XLM U32 ( .A(count[1]), .B(count[0]), .Y(n45) );
  NOR2XLM U33 ( .A(n42), .B(n45), .Y(n23) );
  NAND3XLM U34 ( .A(count[3]), .B(count[4]), .C(n23), .Y(n22) );
  NOR2XLM U35 ( .A(n39), .B(n22), .Y(n49) );
  INVXLM U36 ( .A(count[5]), .Y(n21) );
  OAI32XLM U37 ( .A0(count[5]), .A1(n44), .A2(n22), .B0(n49), .B1(n21), .Y(n55) );
  INVXLM U38 ( .A(n44), .Y(n40) );
  NAND2XLM U39 ( .A(n40), .B(n23), .Y(n26) );
  INVXLM U41 ( .A(count[3]), .Y(n37) );
  AOI32XLM U42 ( .A0(n23), .A1(count[3]), .A2(clk_en), .B0(n26), .B1(n37), .Y(
        n53) );
  INVXLM U43 ( .A(n23), .Y(n24) );
  OAI31XLM U44 ( .A0(count[4]), .A1(n37), .A2(n26), .B0(n25), .Y(n54) );
  NOR2XLM U45 ( .A(count[0]), .B(n44), .Y(n46) );
  NOR2XLM U46 ( .A(n39), .B(n46), .Y(n38) );
  OAI32XLM U47 ( .A0(count[1]), .A1(n47), .A2(n44), .B0(n38), .B1(n41), .Y(n51) );
  AOI221XLM U48 ( .A0(n41), .A1(n40), .B0(n47), .B1(n40), .C0(n39), .Y(n43) );
  OAI32XLM U49 ( .A0(count[2]), .A1(n45), .A2(n44), .B0(n43), .B1(n42), .Y(n52) );
  OAI21BXLM U50 ( .A0(n47), .A1(clk_en), .B0N(n46), .Y(n50) );
  AOI21XLM U51 ( .A0(count[5]), .A1(n49), .B0(count[6]), .Y(n48) );
  AOI31XLM U52 ( .A0(n49), .A1(count[6]), .A2(count[5]), .B0(n48), .Y(n56) );
  SDFFSQX1M odd_edge_tog_reg ( .D(n58), .SI(div_clk), .SE(test_se), .CK(
        i_ref_clk), .SN(i_rst), .Q(odd_edge_tog) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module SYS_TOP_dft ( scan_clk, scan_rst, test_mode, SE, SI, SO, RST_N, 
        UART_CLK, REF_CLK, UART_RX_IN, UART_TX_O, parity_error, framing_error
 );
  input [3:0] SI;
  output [3:0] SO;
  input scan_clk, scan_rst, test_mode, SE, RST_N, UART_CLK, REF_CLK,
         UART_RX_IN;
  output UART_TX_O, parity_error, framing_error;
  wire   n1855, REF_SCAN_CLK, UART_SCAN_CLK, UART_RX_CLK, UART_RX_SCAN_CLK,
         UART_TX_CLK, UART_TX_SCAN_CLK, RSTN_SCAN_RST, SYNC_REF_RST,
         SYNC_REF_SCAN_RST, SYNC_UART_RST, SYNC_UART_SCAN_RST, UART_RX_V_OUT,
         UART_RX_V_SYNC, UART_TX_Busy, RF_RdData_VLD, ALU_EN, ALU_OUT_VLD,
         ALU_CLK, n_1_net_, U0_RST_SYNC_sync_reg_0_, U1_RST_SYNC_sync_reg_0_,
         U0_ref_sync_enable_pulse, U0_ref_sync_enable_flop,
         U0_PULSE_GEN_rcv_flop, U0_PULSE_GEN_pls_flop, U0_RegFile_regArr_4__0_,
         U0_RegFile_regArr_4__1_, U0_RegFile_regArr_4__2_,
         U0_RegFile_regArr_4__3_, U0_RegFile_regArr_4__4_,
         U0_RegFile_regArr_4__5_, U0_RegFile_regArr_4__6_,
         U0_RegFile_regArr_4__7_, U0_RegFile_regArr_5__0_,
         U0_RegFile_regArr_5__1_, U0_RegFile_regArr_5__2_,
         U0_RegFile_regArr_5__3_, U0_RegFile_regArr_5__4_,
         U0_RegFile_regArr_5__5_, U0_RegFile_regArr_5__6_,
         U0_RegFile_regArr_5__7_, U0_RegFile_regArr_6__0_,
         U0_RegFile_regArr_6__1_, U0_RegFile_regArr_6__2_,
         U0_RegFile_regArr_6__3_, U0_RegFile_regArr_6__4_,
         U0_RegFile_regArr_6__5_, U0_RegFile_regArr_6__6_,
         U0_RegFile_regArr_6__7_, U0_RegFile_regArr_7__0_,
         U0_RegFile_regArr_7__1_, U0_RegFile_regArr_7__2_,
         U0_RegFile_regArr_7__3_, U0_RegFile_regArr_7__4_,
         U0_RegFile_regArr_7__5_, U0_RegFile_regArr_7__6_,
         U0_RegFile_regArr_7__7_, U0_RegFile_regArr_8__0_,
         U0_RegFile_regArr_8__1_, U0_RegFile_regArr_8__2_,
         U0_RegFile_regArr_8__3_, U0_RegFile_regArr_8__4_,
         U0_RegFile_regArr_8__5_, U0_RegFile_regArr_8__6_,
         U0_RegFile_regArr_8__7_, U0_RegFile_regArr_9__0_,
         U0_RegFile_regArr_9__1_, U0_RegFile_regArr_9__2_,
         U0_RegFile_regArr_9__3_, U0_RegFile_regArr_9__4_,
         U0_RegFile_regArr_9__5_, U0_RegFile_regArr_9__6_,
         U0_RegFile_regArr_9__7_, U0_RegFile_regArr_10__0_,
         U0_RegFile_regArr_10__1_, U0_RegFile_regArr_10__2_,
         U0_RegFile_regArr_10__3_, U0_RegFile_regArr_10__4_,
         U0_RegFile_regArr_10__5_, U0_RegFile_regArr_10__6_,
         U0_RegFile_regArr_10__7_, U0_RegFile_regArr_11__0_,
         U0_RegFile_regArr_11__1_, U0_RegFile_regArr_11__2_,
         U0_RegFile_regArr_11__3_, U0_RegFile_regArr_11__4_,
         U0_RegFile_regArr_11__5_, U0_RegFile_regArr_11__6_,
         U0_RegFile_regArr_11__7_, U0_RegFile_regArr_12__0_,
         U0_RegFile_regArr_12__1_, U0_RegFile_regArr_12__2_,
         U0_RegFile_regArr_12__3_, U0_RegFile_regArr_12__4_,
         U0_RegFile_regArr_12__5_, U0_RegFile_regArr_12__6_,
         U0_RegFile_regArr_12__7_, U0_RegFile_regArr_13__0_,
         U0_RegFile_regArr_13__1_, U0_RegFile_regArr_13__2_,
         U0_RegFile_regArr_13__3_, U0_RegFile_regArr_13__4_,
         U0_RegFile_regArr_13__5_, U0_RegFile_regArr_13__6_,
         U0_RegFile_regArr_13__7_, U0_RegFile_regArr_14__0_,
         U0_RegFile_regArr_14__1_, U0_RegFile_regArr_14__2_,
         U0_RegFile_regArr_14__3_, U0_RegFile_regArr_14__4_,
         U0_RegFile_regArr_14__5_, U0_RegFile_regArr_14__6_,
         U0_RegFile_regArr_14__7_, U0_RegFile_regArr_15__0_,
         U0_RegFile_regArr_15__1_, U0_RegFile_regArr_15__2_,
         U0_RegFile_regArr_15__3_, U0_RegFile_regArr_15__4_,
         U0_RegFile_regArr_15__5_, U0_RegFile_regArr_15__6_,
         U0_RegFile_regArr_15__7_, U0_UART_FIFO_u_fifo_rd_N91,
         U0_UART_FIFO_u_fifo_rd_N90, U0_UART_FIFO_u_fifo_rd_N89,
         U0_UART_FIFO_u_fifo_rd_rd_ptr_3_,
         U0_UART_FIFO_u_w2r_sync_sync_reg_0__0_,
         U0_UART_FIFO_u_w2r_sync_sync_reg_1__0_,
         U0_UART_FIFO_u_w2r_sync_sync_reg_2__0_,
         U0_UART_FIFO_u_w2r_sync_sync_reg_3__0_, U0_UART_FIFO_u_fifo_wr_N92,
         U0_UART_FIFO_u_fifo_wr_N91, U0_UART_FIFO_u_fifo_wr_N90,
         U0_UART_FIFO_u_fifo_wr_N89, U0_UART_FIFO_u_r2w_sync_sync_reg_0__0_,
         U0_UART_FIFO_u_r2w_sync_sync_reg_1__0_,
         U0_UART_FIFO_u_r2w_sync_sync_reg_2__0_,
         U0_UART_FIFO_u_r2w_sync_sync_reg_3__0_, U0_UART_U0_UART_TX_parity,
         U0_UART_U0_UART_TX_ser_data, U0_UART_U0_UART_RX_sampled_bit,
         U0_UART_U0_UART_RX_strt_glitch, U0_UART_U0_UART_TX_U0_fsm_busy_c,
         U0_UART_U0_UART_TX_U0_Serializer_N25,
         U0_UART_U0_UART_TX_U0_Serializer_N24,
         U0_UART_U0_UART_TX_U0_Serializer_N23,
         U0_UART_U0_UART_TX_U0_mux_mux_out,
         U0_UART_U0_UART_RX_U0_edge_bit_counter_N24,
         U0_UART_U0_UART_RX_U0_edge_bit_counter_N23,
         U0_UART_U0_UART_RX_U0_edge_bit_counter_N22,
         U0_UART_U0_UART_RX_U0_edge_bit_counter_N21,
         U0_UART_U0_UART_RX_U0_edge_bit_counter_N20,
         U0_UART_U0_UART_RX_U0_edge_bit_counter_N19,
         U0_UART_U0_UART_RX_U0_data_sampling_N58, C25M_DATA15_0, C25M_DATA15_1,
         C25M_DATA15_2, C25M_DATA15_3, C25M_DATA15_4, C25M_DATA15_5,
         C25M_DATA15_6, C25M_DATA15_7, n660, n661, n662, n663, n664, n665,
         n666, n667, n668, n669, n670, n671, n672, n673, n674, n675, n676,
         n677, n678, n679, n680, n681, n682, n683, n684, n685, n686, n687,
         n688, n689, n690, n691, n693, n694, n695, n696, n697, n698, n699,
         n700, n701, n702, n703, n704, n705, n706, n707, n708, n709, n710,
         n711, n712, n713, n714, n715, n716, n717, n718, n719, n720, n721,
         n722, n723, n724, n725, n726, n727, n728, n729, n730, n731, n732,
         n733, n734, n735, n736, n737, n738, n739, n740, n741, n742, n743,
         n744, n745, n746, n747, n748, n749, n750, n751, n752, n753, n754,
         n755, n756, n757, n758, n759, n760, n761, n762, n763, n764, n765,
         n766, n767, n768, n769, n770, n771, n772, n773, n774, n775, n776,
         n777, n778, n779, n780, n781, n782, n783, n784, n785, n786, n787,
         n788, n789, n790, n791, n792, n793, n794, n795, n796, n797, n798,
         n799, n800, n801, n802, n803, n804, n805, n806, n807, n808, n809,
         n810, n811, n812, n813, n814, n815, n816, n817, n818, n819, n820,
         n821, n822, n823, n824, n825, n826, n827, n828, n829, n830, n831,
         n832, n833, n834, n835, n836, n837, n838, n839, n840, n841, n842,
         n843, n844, n845, n846, n847, n848, n849, n850, n851, n852, n853,
         n854, n855, n856, n857, n858, n859, n860, n861, n862, n863, n864,
         n865, n866, n867, n868, n869, n870, n871, n872, n873, n874, n875,
         n876, n877, n878, n879, n880, n881, n882, n883, n884, n885, n886,
         n887, n888, n889, n890, n891, n892, n893, n894, n895, n896, n897,
         n898, n899, n900, n901, n902, n903, n904, n905, n906, n907, n908,
         n909, n910, n911, n912, DP_OP_152J1_125_249_n43,
         DP_OP_152J1_125_249_n29, DP_OP_152J1_125_249_n28,
         DP_OP_152J1_125_249_n27, DP_OP_152J1_125_249_n26,
         DP_OP_152J1_125_249_n25, DP_OP_152J1_125_249_n24,
         DP_OP_152J1_125_249_n23, DP_OP_152J1_125_249_n22,
         DP_OP_152J1_125_249_n16, DP_OP_152J1_125_249_n15,
         DP_OP_152J1_125_249_n14, DP_OP_152J1_125_249_n13,
         DP_OP_152J1_125_249_n12, DP_OP_152J1_125_249_n11,
         DP_OP_152J1_125_249_n10, DP_OP_152J1_125_249_n9, intadd_0_A_10_,
         intadd_0_A_8_, intadd_0_A_5_, intadd_0_A_4_, intadd_0_A_3_,
         intadd_0_A_2_, intadd_0_A_1_, intadd_0_A_0_, intadd_0_B_11_,
         intadd_0_B_9_, intadd_0_B_7_, intadd_0_B_6_, intadd_0_B_5_,
         intadd_0_B_4_, intadd_0_B_3_, intadd_0_B_2_, intadd_0_B_1_,
         intadd_0_B_0_, intadd_0_CI, intadd_0_SUM_11_, intadd_0_SUM_10_,
         intadd_0_SUM_9_, intadd_0_SUM_8_, intadd_0_SUM_7_, intadd_0_SUM_6_,
         intadd_0_SUM_5_, intadd_0_SUM_4_, intadd_0_SUM_3_, intadd_0_SUM_2_,
         intadd_0_SUM_1_, intadd_0_SUM_0_, intadd_0_n12, intadd_0_n11,
         intadd_0_n10, intadd_0_n9, intadd_0_n8, intadd_0_n7, intadd_0_n6,
         intadd_0_n5, intadd_0_n4, intadd_0_n3, intadd_0_n2, intadd_0_n1,
         intadd_1_A_3_, intadd_1_A_2_, intadd_1_A_1_, intadd_1_A_0_,
         intadd_1_B_3_, intadd_1_B_2_, intadd_1_B_1_, intadd_1_B_0_,
         intadd_1_CI, intadd_1_SUM_2_, intadd_1_SUM_1_, intadd_1_SUM_0_,
         intadd_1_n4, intadd_1_n3, intadd_1_n2, intadd_1_n1, intadd_2_A_3_,
         intadd_2_A_2_, intadd_2_A_1_, intadd_2_A_0_, intadd_2_B_2_,
         intadd_2_B_1_, intadd_2_B_0_, intadd_2_CI, intadd_2_SUM_2_,
         intadd_2_SUM_1_, intadd_2_SUM_0_, intadd_2_n4, intadd_2_n3,
         intadd_2_n2, intadd_2_n1, intadd_3_A_2_, intadd_3_A_1_, intadd_3_A_0_,
         intadd_3_B_2_, intadd_3_B_1_, intadd_3_B_0_, intadd_3_CI,
         intadd_3_SUM_1_, intadd_3_SUM_0_, intadd_3_n3, intadd_3_n2,
         intadd_3_n1, intadd_4_A_2_, intadd_4_A_0_, intadd_4_B_1_,
         intadd_4_B_0_, intadd_4_CI, intadd_4_n3, intadd_4_n2, intadd_4_n1,
         intadd_5_A_0_, intadd_5_B_1_, intadd_5_B_0_, intadd_5_CI,
         intadd_5_SUM_1_, intadd_5_SUM_0_, intadd_5_n3, intadd_5_n2,
         intadd_5_n1, intadd_6_A_1_, intadd_6_A_0_, intadd_6_B_1_,
         intadd_6_B_0_, intadd_6_CI, intadd_6_SUM_1_, intadd_6_SUM_0_,
         intadd_6_n3, intadd_6_n2, intadd_6_n1, n914, n915, n916, n917, n918,
         n920, n921, n922, n923, n924, n925, n926, n927, n928, n929, n930,
         n931, n932, n933, n934, n935, n936, n937, n938, n939, n940, n941,
         n942, n943, n944, n945, n946, n947, n948, n949, n950, n951, n952,
         n953, n954, n955, n956, n957, n958, n959, n960, n961, n962, n963,
         n964, n965, n966, n967, n968, n969, n970, n971, n972, n973, n974,
         n975, n976, n977, n978, n979, n980, n981, n982, n983, n984, n985,
         n986, n987, n988, n989, n990, n991, n992, n993, n994, n995, n996,
         n997, n998, n999, n1000, n1001, n1002, n1003, n1004, n1005, n1006,
         n1007, n1008, n1009, n1010, n1011, n1012, n1013, n1014, n1015, n1016,
         n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024, n1025, n1026,
         n1027, n1028, n1029, n1030, n1031, n1032, n1033, n1034, n1035, n1036,
         n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044, n1045, n1046,
         n1047, n1048, n1049, n1050, n1051, n1052, n1053, n1054, n1055, n1056,
         n1057, n1058, n1059, n1060, n1061, n1062, n1063, n1064, n1065, n1066,
         n1067, n1068, n1069, n1070, n1071, n1072, n1073, n1074, n1075, n1076,
         n1077, n1078, n1079, n1080, n1081, n1082, n1083, n1084, n1085, n1086,
         n1087, n1088, n1089, n1090, n1091, n1092, n1093, n1094, n1095, n1096,
         n1097, n1098, n1099, n1100, n1101, n1102, n1103, n1104, n1105, n1106,
         n1107, n1108, n1109, n1110, n1111, n1112, n1113, n1114, n1115, n1116,
         n1117, n1118, n1119, n1120, n1121, n1122, n1123, n1124, n1125, n1126,
         n1127, n1128, n1129, n1130, n1131, n1132, n1133, n1134, n1135, n1136,
         n1137, n1138, n1139, n1140, n1141, n1142, n1143, n1144, n1145, n1146,
         n1147, n1148, n1149, n1150, n1151, n1152, n1153, n1154, n1155, n1156,
         n1157, n1158, n1159, n1160, n1161, n1162, n1163, n1164, n1165, n1166,
         n1167, n1168, n1169, n1170, n1171, n1172, n1173, n1174, n1175, n1176,
         n1177, n1178, n1179, n1180, n1181, n1182, n1183, n1184, n1185, n1186,
         n1187, n1188, n1189, n1190, n1191, n1192, n1193, n1194, n1195, n1196,
         n1197, n1198, n1199, n1200, n1201, n1202, n1203, n1204, n1205, n1206,
         n1207, n1208, n1209, n1210, n1211, n1212, n1213, n1214, n1215, n1216,
         n1217, n1218, n1219, n1220, n1221, n1222, n1223, n1224, n1225, n1226,
         n1227, n1228, n1229, n1230, n1231, n1232, n1233, n1234, n1235, n1236,
         n1237, n1238, n1239, n1240, n1241, n1242, n1243, n1244, n1245, n1246,
         n1247, n1248, n1249, n1250, n1251, n1252, n1253, n1254, n1255, n1256,
         n1257, n1258, n1259, n1260, n1261, n1262, n1263, n1264, n1265, n1266,
         n1267, n1268, n1269, n1270, n1271, n1272, n1273, n1274, n1275, n1276,
         n1277, n1278, n1279, n1280, n1281, n1282, n1283, n1284, n1285, n1286,
         n1287, n1288, n1289, n1290, n1291, n1292, n1293, n1294, n1295, n1296,
         n1297, n1298, n1299, n1300, n1301, n1302, n1303, n1304, n1305, n1306,
         n1307, n1308, n1309, n1310, n1311, n1312, n1313, n1314, n1315, n1316,
         n1317, n1318, n1319, n1320, n1321, n1322, n1323, n1324, n1325, n1326,
         n1327, n1328, n1329, n1330, n1331, n1332, n1333, n1334, n1335, n1336,
         n1337, n1338, n1339, n1340, n1341, n1342, n1343, n1344, n1345, n1346,
         n1347, n1348, n1349, n1350, n1351, n1352, n1353, n1354, n1355, n1356,
         n1357, n1358, n1359, n1360, n1361, n1362, n1363, n1364, n1365, n1366,
         n1367, n1368, n1369, n1370, n1371, n1372, n1373, n1374, n1375, n1376,
         n1377, n1378, n1379, n1380, n1381, n1382, n1383, n1384, n1385, n1386,
         n1387, n1388, n1389, n1390, n1391, n1392, n1393, n1394, n1395, n1396,
         n1397, n1398, n1399, n1400, n1401, n1402, n1403, n1404, n1405, n1406,
         n1407, n1408, n1409, n1410, n1411, n1412, n1413, n1414, n1415, n1416,
         n1417, n1418, n1419, n1420, n1421, n1422, n1423, n1424, n1425, n1426,
         n1427, n1428, n1429, n1430, n1431, n1432, n1433, n1434, n1435, n1436,
         n1437, n1438, n1439, n1440, n1441, n1442, n1443, n1444, n1445, n1446,
         n1447, n1448, n1449, n1450, n1451, n1452, n1453, n1454, n1455, n1456,
         n1457, n1458, n1459, n1460, n1461, n1462, n1463, n1464, n1465, n1466,
         n1467, n1468, n1469, n1470, n1471, n1472, n1473, n1474, n1475, n1476,
         n1477, n1478, n1479, n1480, n1481, n1482, n1483, n1484, n1485, n1486,
         n1487, n1488, n1489, n1490, n1491, n1492, n1493, n1494, n1495, n1496,
         n1497, n1498, n1499, n1500, n1501, n1502, n1503, n1504, n1505, n1506,
         n1507, n1508, n1509, n1510, n1511, n1512, n1513, n1514, n1515, n1516,
         n1517, n1518, n1519, n1520, n1521, n1522, n1523, n1524, n1525, n1526,
         n1527, n1528, n1529, n1530, n1531, n1532, n1533, n1534, n1535, n1536,
         n1537, n1538, n1539, n1540, n1541, n1542, n1543, n1544, n1545, n1546,
         n1547, n1548, n1549, n1550, n1551, n1552, n1553, n1554, n1555, n1556,
         n1557, n1558, n1559, n1560, n1561, n1562, n1563, n1564, n1565, n1566,
         n1567, n1568, n1569, n1570, n1571, n1572, n1573, n1574, n1575, n1576,
         n1577, n1578, n1579, n1580, n1581, n1582, n1583, n1584, n1585, n1586,
         n1587, n1588, n1589, n1590, n1591, n1592, n1593, n1594, n1595, n1596,
         n1597, n1598, n1599, n1600, n1601, n1602, n1603, n1604, n1605, n1606,
         n1607, n1608, n1609, n1610, n1611, n1612, n1613, n1614, n1615, n1616,
         n1617, n1618, n1619, n1620, n1621, n1622, n1623, n1624, n1625, n1626,
         n1627, n1628, n1629, n1630, n1631, n1632, n1633, n1634, n1635, n1636,
         n1637, n1638, n1639, n1640, n1641, n1642, n1643, n1644, n1645, n1646,
         n1647, n1648, n1649, n1650, n1651, n1652, n1653, n1654, n1655, n1656,
         n1657, n1658, n1659, n1660, n1661, n1662, n1663, n1664, n1665, n1666,
         n1667, n1668, n1669, n1670, n1671, n1672, n1673, n1674, n1675, n1676,
         n1677, n1678, n1679, n1680, n1681, n1682, n1683, n1684, n1685, n1686,
         n1687, n1688, n1689, n1690, n1691, n1692, n1693, n1694, n1695, n1696,
         n1697, n1698, n1699, n1700, n1701, n1702, n1703, n1704, n1705, n1706,
         n1707, n1708, n1709, n1710, n1711, n1712, n1713, n1714, n1715, n1716,
         n1717, n1718, n1719, n1720, n1721, n1722, n1723, n1724, n1725, n1726,
         n1727, n1728, n1729, n1730, n1731, n1732, n1733, n1734, n1735, n1736,
         n1737, n1738, n1739, n1740, n1741, n1742, n1743, n1744, n1745, n1746,
         n1747, n1748, n1749, n1750, n1751, n1752, n1753, n1754, n1755, n1756,
         n1757, n1758, n1759, n1760, n1761, n1762, n1763, n1764, n1765, n1766,
         n1767, n1768, n1769, n1770, n1771, n1772, n1773, n1774, n1775, n1776,
         n1777, n1778, n1779, n1780, n1781, n1782, n1783, n1784, n1785, n1786,
         n1787, n1788, n1789, n1790, n1791, n1792, n1793, n1794, n1795, n1796,
         n1797, n1798, n1799, n1800, n1801, n1802, n1803, n1804, n1805, n1806,
         n1807, n1808, n1809, n1810, n1811, n1812, n1813, n1814, n1825, n1832,
         n1833, n1834, n1835, n1836, n1837, n1838, n1839, n1840, n1841, n1842,
         n1843, n1844, n1845, n1846, n1847, n1848, n1849, n1850, n1851, n1852,
         n1853, n1854, n1857, n1861, n1869, n1870, n1883, n1884, n1885, n1888,
         n1890, n1891, n1892, n1893, n1894, n1895, n1896, n1897, n1898, n1900,
         n1901, n1902, n1903, n1905, n1907;
  wire   [7:0] UART_RX_OUT;
  wire   [7:0] UART_RX_SYNC;
  wire   [7:0] DIV_RATIO;
  wire   [7:0] UART_Config;
  wire   [3:0] DIV_RATIO_RX;
  wire   [7:0] RF_RdData;
  wire   [15:0] ALU_OUT;
  wire   [7:0] Operand_A;
  wire   [7:0] Operand_B;
  wire   [1:0] U0_ref_sync_sync_reg;
  wire   [3:0] U0_UART_FIFO_r2w_ptr;
  wire   [3:0] U0_UART_FIFO_gray_w_ptr;
  wire   [3:0] U0_UART_FIFO_gray_rd_ptr;
  wire   [3:0] U0_UART_FIFO_w2r_ptr;
  wire   [2:0] U0_UART_FIFO_r_addr;
  wire   [2:0] U0_UART_FIFO_w_addr;
  wire   [15:0] U0_SYS_CTRL_ALU_OUT_reg;
  wire   [3:0] U0_SYS_CTRL_ALU_FUN_reg;
  wire   [7:0] U0_SYS_CTRL_RF_WrData_reg;
  wire   [3:0] U0_SYS_CTRL_RF_Address_reg;
  wire   [3:0] U0_SYS_CTRL_state_next;
  wire   [3:0] U0_SYS_CTRL_state_reg;
  wire   [15:0] U0_ALU_ALU_OUT_Comb;
  wire   [63:0] U0_UART_FIFO_u_fifo_mem_FIFO_MEM;
  wire   [5:0] U0_UART_U0_UART_RX_edge_count;
  wire   [3:0] U0_UART_U0_UART_RX_bit_count;
  wire   [2:0] U0_UART_U0_UART_TX_U0_fsm_next_state;
  wire   [2:0] U0_UART_U0_UART_TX_U0_fsm_current_state;
  wire   [2:0] U0_UART_U0_UART_TX_U0_Serializer_ser_count;
  wire   [7:1] U0_UART_U0_UART_TX_U0_Serializer_DATA_V;
  wire   [7:0] U0_UART_U0_UART_TX_U0_parity_calc_DATA_V;
  wire   [2:0] U0_UART_U0_UART_RX_U0_uart_fsm_next_state;
  wire   [2:0] U0_UART_U0_UART_RX_U0_uart_fsm_current_state;
  wire   [2:0] U0_UART_U0_UART_RX_U0_data_sampling_Samples;

  CLKMX2X2M U983 ( .A(REF_CLK), .B(scan_clk), .S0(test_mode), .Y(REF_SCAN_CLK)
         );
  SDFFRQX1M U0_RST_SYNC_sync_reg_reg_0_ ( .D(1'b1), .SI(n1861), .SE(n1870), 
        .CK(UART_SCAN_CLK), .RN(RSTN_SCAN_RST), .Q(U0_RST_SYNC_sync_reg_0_) );
  SDFFRQX1M U1_RST_SYNC_sync_reg_reg_0_ ( .D(1'b1), .SI(n1857), .SE(n1902), 
        .CK(REF_SCAN_CLK), .RN(RSTN_SCAN_RST), .Q(U1_RST_SYNC_sync_reg_0_) );
  SDFFRQX1M U0_RST_SYNC_sync_reg_reg_1_ ( .D(U0_RST_SYNC_sync_reg_0_), .SI(
        U0_RST_SYNC_sync_reg_0_), .SE(n1895), .CK(UART_SCAN_CLK), .RN(
        RSTN_SCAN_RST), .Q(SYNC_UART_RST) );
  SDFFRQX1M U1_RST_SYNC_sync_reg_reg_1_ ( .D(U1_RST_SYNC_sync_reg_0_), .SI(
        U1_RST_SYNC_sync_reg_0_), .SE(n1883), .CK(REF_SCAN_CLK), .RN(
        RSTN_SCAN_RST), .Q(SYNC_REF_RST) );
  SDFFRQX1M U0_SYS_CTRL_state_reg_reg_0_ ( .D(U0_SYS_CTRL_state_next[0]), .SI(
        U0_SYS_CTRL_RF_WrData_reg[7]), .SE(n1890), .CK(REF_SCAN_CLK), .RN(
        n1832), .Q(U0_SYS_CTRL_state_reg[0]) );
  SDFFRQX1M U0_SYS_CTRL_state_reg_reg_2_ ( .D(U0_SYS_CTRL_state_next[2]), .SI(
        U0_SYS_CTRL_state_reg[1]), .SE(SE), .CK(REF_SCAN_CLK), .RN(n1837), .Q(
        U0_SYS_CTRL_state_reg[2]) );
  SDFFRQX1M U0_SYS_CTRL_state_reg_reg_3_ ( .D(U0_SYS_CTRL_state_next[3]), .SI(
        n1774), .SE(n1898), .CK(REF_SCAN_CLK), .RN(n1837), .Q(
        U0_SYS_CTRL_state_reg[3]) );
  SDFFRQX1M U0_RegFile_RdData_reg_0_ ( .D(n912), .SI(RF_RdData_VLD), .SE(SE), 
        .CK(REF_SCAN_CLK), .RN(n1837), .Q(RF_RdData[0]) );
  SDFFRQX1M U0_RegFile_RdData_reg_1_ ( .D(n911), .SI(RF_RdData[0]), .SE(n1890), 
        .CK(REF_SCAN_CLK), .RN(n1837), .Q(RF_RdData[1]) );
  SDFFRQX1M U0_RegFile_RdData_reg_2_ ( .D(n910), .SI(RF_RdData[1]), .SE(n1884), 
        .CK(REF_SCAN_CLK), .RN(n1837), .Q(RF_RdData[2]) );
  SDFFRQX1M U0_RegFile_RdData_reg_3_ ( .D(n909), .SI(RF_RdData[2]), .SE(n1897), 
        .CK(REF_SCAN_CLK), .RN(n1837), .Q(RF_RdData[3]) );
  SDFFRQX1M U0_RegFile_RdData_reg_4_ ( .D(n908), .SI(RF_RdData[3]), .SE(n1884), 
        .CK(REF_SCAN_CLK), .RN(n1837), .Q(RF_RdData[4]) );
  SDFFRQX1M U0_RegFile_RdData_reg_5_ ( .D(n907), .SI(RF_RdData[4]), .SE(n1892), 
        .CK(REF_SCAN_CLK), .RN(n1837), .Q(RF_RdData[5]) );
  SDFFRQX1M U0_RegFile_RdData_reg_6_ ( .D(n906), .SI(RF_RdData[5]), .SE(SE), 
        .CK(REF_SCAN_CLK), .RN(n1837), .Q(RF_RdData[6]) );
  SDFFRQX1M U0_RegFile_RdData_reg_7_ ( .D(n905), .SI(RF_RdData[6]), .SE(n1888), 
        .CK(REF_SCAN_CLK), .RN(n1837), .Q(RF_RdData[7]) );
  SDFFRQX1M U0_ALU_OUT_VALID_reg ( .D(ALU_EN), .SI(ALU_OUT[15]), .SE(n1892), 
        .CK(ALU_CLK), .RN(n1837), .Q(ALU_OUT_VLD) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_wr_gray_w_ptr_reg_0_ ( .D(
        U0_UART_FIFO_u_fifo_wr_N89), .SI(U0_UART_FIFO_r_addr[2]), .SE(n1901), 
        .CK(REF_SCAN_CLK), .RN(n1837), .Q(U0_UART_FIFO_gray_w_ptr[0]) );
  SDFFRQX1M U0_UART_FIFO_u_w2r_sync_sync_reg_reg_0__0_ ( .D(
        U0_UART_FIFO_gray_w_ptr[0]), .SI(U0_UART_FIFO_r2w_ptr[3]), .SE(n1869), 
        .CK(UART_TX_SCAN_CLK), .RN(n917), .Q(
        U0_UART_FIFO_u_w2r_sync_sync_reg_0__0_) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_wr_gray_w_ptr_reg_1_ ( .D(
        U0_UART_FIFO_u_fifo_wr_N90), .SI(U0_UART_FIFO_gray_w_ptr[0]), .SE(SE), 
        .CK(REF_SCAN_CLK), .RN(n1837), .Q(U0_UART_FIFO_gray_w_ptr[1]) );
  SDFFRQX1M U0_UART_FIFO_u_w2r_sync_sync_reg_reg_1__0_ ( .D(
        U0_UART_FIFO_gray_w_ptr[1]), .SI(U0_UART_FIFO_w2r_ptr[0]), .SE(n1898), 
        .CK(UART_TX_SCAN_CLK), .RN(n916), .Q(
        U0_UART_FIFO_u_w2r_sync_sync_reg_1__0_) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_wr_gray_w_ptr_reg_2_ ( .D(
        U0_UART_FIFO_u_fifo_wr_N91), .SI(U0_UART_FIFO_gray_w_ptr[1]), .SE(
        n1884), .CK(REF_SCAN_CLK), .RN(n1837), .Q(U0_UART_FIFO_gray_w_ptr[2])
         );
  SDFFRQX1M U0_UART_FIFO_u_w2r_sync_sync_reg_reg_2__0_ ( .D(
        U0_UART_FIFO_gray_w_ptr[2]), .SI(U0_UART_FIFO_w2r_ptr[1]), .SE(n1891), 
        .CK(UART_TX_SCAN_CLK), .RN(n915), .Q(
        U0_UART_FIFO_u_w2r_sync_sync_reg_2__0_) );
  SDFFRQX1M U0_UART_FIFO_u_w2r_sync_sync_reg_reg_3__0_ ( .D(
        U0_UART_FIFO_gray_w_ptr[3]), .SI(U0_UART_FIFO_w2r_ptr[2]), .SE(SE), 
        .CK(UART_TX_SCAN_CLK), .RN(n915), .Q(
        U0_UART_FIFO_u_w2r_sync_sync_reg_3__0_) );
  SDFFRQX1M U0_UART_U0_UART_RX_U0_uart_fsm_current_state_reg_0_ ( .D(
        U0_UART_U0_UART_RX_U0_uart_fsm_next_state[0]), .SI(
        U0_UART_U0_UART_RX_strt_glitch), .SE(n1895), .CK(UART_RX_SCAN_CLK), 
        .RN(n915), .Q(U0_UART_U0_UART_RX_U0_uart_fsm_current_state[0]) );
  SDFFRQX1M U0_UART_U0_UART_RX_U0_uart_fsm_current_state_reg_1_ ( .D(
        U0_UART_U0_UART_RX_U0_uart_fsm_next_state[1]), .SI(n1804), .SE(SE), 
        .CK(UART_RX_SCAN_CLK), .RN(n917), .Q(
        U0_UART_U0_UART_RX_U0_uart_fsm_current_state[1]) );
  SDFFRQX1M U0_UART_U0_UART_RX_U0_uart_fsm_current_state_reg_2_ ( .D(
        U0_UART_U0_UART_RX_U0_uart_fsm_next_state[2]), .SI(
        U0_UART_U0_UART_RX_U0_uart_fsm_current_state[1]), .SE(n1891), .CK(
        UART_RX_SCAN_CLK), .RN(n916), .Q(
        U0_UART_U0_UART_RX_U0_uart_fsm_current_state[2]) );
  SDFFRQX1M U0_UART_U0_UART_RX_U0_edge_bit_counter_bit_count_reg_0_ ( .D(n762), 
        .SI(UART_RX_OUT[7]), .SE(n1885), .CK(UART_RX_SCAN_CLK), .RN(n915), .Q(
        U0_UART_U0_UART_RX_bit_count[0]) );
  SDFFRQX1M U0_UART_U0_UART_RX_U0_edge_bit_counter_bit_count_reg_1_ ( .D(n761), 
        .SI(n1740), .SE(n1897), .CK(UART_RX_SCAN_CLK), .RN(n917), .Q(
        U0_UART_U0_UART_RX_bit_count[1]) );
  SDFFRQX1M U0_UART_U0_UART_RX_U0_edge_bit_counter_bit_count_reg_2_ ( .D(n760), 
        .SI(U0_UART_U0_UART_RX_bit_count[1]), .SE(SE), .CK(UART_RX_SCAN_CLK), 
        .RN(n916), .Q(U0_UART_U0_UART_RX_bit_count[2]) );
  SDFFRQX1M U0_UART_U0_UART_RX_U0_edge_bit_counter_bit_count_reg_3_ ( .D(n759), 
        .SI(n1787), .SE(n1892), .CK(UART_RX_SCAN_CLK), .RN(n915), .Q(
        U0_UART_U0_UART_RX_bit_count[3]) );
  SDFFRQX1M U0_UART_U0_UART_RX_U0_edge_bit_counter_edge_count_reg_1_ ( .D(
        U0_UART_U0_UART_RX_U0_edge_bit_counter_N20), .SI(
        U0_UART_U0_UART_RX_edge_count[0]), .SE(n1901), .CK(UART_RX_SCAN_CLK), 
        .RN(n917), .Q(U0_UART_U0_UART_RX_edge_count[1]) );
  SDFFRQX1M U0_UART_U0_UART_RX_U0_edge_bit_counter_edge_count_reg_2_ ( .D(
        U0_UART_U0_UART_RX_U0_edge_bit_counter_N21), .SI(
        U0_UART_U0_UART_RX_edge_count[1]), .SE(n1870), .CK(UART_RX_SCAN_CLK), 
        .RN(n916), .Q(U0_UART_U0_UART_RX_edge_count[2]) );
  SDFFRQX1M U0_UART_U0_UART_RX_U0_edge_bit_counter_edge_count_reg_3_ ( .D(
        U0_UART_U0_UART_RX_U0_edge_bit_counter_N22), .SI(
        U0_UART_U0_UART_RX_edge_count[2]), .SE(SE), .CK(UART_RX_SCAN_CLK), 
        .RN(n915), .Q(U0_UART_U0_UART_RX_edge_count[3]) );
  SDFFRQX1M U0_UART_U0_UART_RX_U0_edge_bit_counter_edge_count_reg_4_ ( .D(
        U0_UART_U0_UART_RX_U0_edge_bit_counter_N23), .SI(
        U0_UART_U0_UART_RX_edge_count[3]), .SE(n1870), .CK(UART_RX_SCAN_CLK), 
        .RN(n917), .Q(U0_UART_U0_UART_RX_edge_count[4]) );
  SDFFRQX1M U0_UART_U0_UART_RX_U0_edge_bit_counter_edge_count_reg_5_ ( .D(
        U0_UART_U0_UART_RX_U0_edge_bit_counter_N24), .SI(n1626), .SE(n1888), 
        .CK(UART_RX_SCAN_CLK), .RN(n916), .Q(U0_UART_U0_UART_RX_edge_count[5])
         );
  SDFFRQX1M U0_UART_U0_UART_RX_U0_data_sampling_Samples_reg_0_ ( .D(n904), 
        .SI(U0_SYS_CTRL_state_reg[3]), .SE(n1896), .CK(UART_RX_SCAN_CLK), .RN(
        n915), .Q(U0_UART_U0_UART_RX_U0_data_sampling_Samples[0]) );
  SDFFRQX1M U0_UART_U0_UART_RX_U0_data_sampling_Samples_reg_1_ ( .D(n903), 
        .SI(U0_UART_U0_UART_RX_U0_data_sampling_Samples[0]), .SE(n1885), .CK(
        UART_RX_SCAN_CLK), .RN(n917), .Q(
        U0_UART_U0_UART_RX_U0_data_sampling_Samples[1]) );
  SDFFRQX1M U0_UART_U0_UART_RX_U0_data_sampling_Samples_reg_2_ ( .D(n902), 
        .SI(U0_UART_U0_UART_RX_U0_data_sampling_Samples[1]), .SE(n1893), .CK(
        UART_RX_SCAN_CLK), .RN(n917), .Q(
        U0_UART_U0_UART_RX_U0_data_sampling_Samples[2]) );
  SDFFRQX1M U0_UART_U0_UART_RX_U0_data_sampling_sampled_bit_reg ( .D(
        U0_UART_U0_UART_RX_U0_data_sampling_N58), .SI(
        U0_UART_U0_UART_RX_U0_data_sampling_Samples[2]), .SE(n1901), .CK(
        UART_RX_SCAN_CLK), .RN(n916), .Q(U0_UART_U0_UART_RX_sampled_bit) );
  SDFFRQX1M U0_UART_U0_UART_RX_U0_strt_chk_strt_glitch_reg ( .D(n901), .SI(
        framing_error), .SE(n1898), .CK(UART_RX_SCAN_CLK), .RN(n917), .Q(
        U0_UART_U0_UART_RX_strt_glitch) );
  SDFFRQX1M U0_ref_sync_sync_reg_reg_0_ ( .D(UART_RX_V_OUT), .SI(
        U0_UART_FIFO_w2r_ptr[3]), .SE(n1901), .CK(REF_SCAN_CLK), .RN(n1837), 
        .Q(U0_ref_sync_sync_reg[0]) );
  SDFFRQX1M U0_ref_sync_enable_pulse_d_reg ( .D(U0_ref_sync_enable_pulse), 
        .SI(U0_UART_FIFO_w_addr[2]), .SE(n1893), .CK(REF_SCAN_CLK), .RN(n1837), 
        .Q(UART_RX_V_SYNC) );
  SDFFRQX1M U0_RegFile_regArr_reg_15__7_ ( .D(n776), .SI(
        U0_RegFile_regArr_15__6_), .SE(n1883), .CK(REF_SCAN_CLK), .RN(n1837), 
        .Q(U0_RegFile_regArr_15__7_) );
  SDFFRQX1M U0_RegFile_regArr_reg_14__7_ ( .D(n775), .SI(
        U0_RegFile_regArr_14__6_), .SE(n1897), .CK(REF_SCAN_CLK), .RN(n1837), 
        .Q(U0_RegFile_regArr_14__7_) );
  SDFFRQX1M U0_RegFile_regArr_reg_13__7_ ( .D(n774), .SI(
        U0_RegFile_regArr_13__6_), .SE(SE), .CK(REF_SCAN_CLK), .RN(n1833), .Q(
        U0_RegFile_regArr_13__7_) );
  SDFFRQX1M U0_RegFile_regArr_reg_12__7_ ( .D(n773), .SI(
        U0_RegFile_regArr_12__6_), .SE(n1892), .CK(REF_SCAN_CLK), .RN(n1834), 
        .Q(U0_RegFile_regArr_12__7_) );
  SDFFRQX1M U0_RegFile_regArr_reg_11__7_ ( .D(n772), .SI(
        U0_RegFile_regArr_11__6_), .SE(SE), .CK(REF_SCAN_CLK), .RN(n1835), .Q(
        U0_RegFile_regArr_11__7_) );
  SDFFRQX1M U0_RegFile_regArr_reg_10__7_ ( .D(n771), .SI(
        U0_RegFile_regArr_10__6_), .SE(n1888), .CK(REF_SCAN_CLK), .RN(n1836), 
        .Q(U0_RegFile_regArr_10__7_) );
  SDFFRQX1M U0_RegFile_regArr_reg_9__7_ ( .D(n770), .SI(
        U0_RegFile_regArr_9__6_), .SE(SE), .CK(REF_SCAN_CLK), .RN(n1839), .Q(
        U0_RegFile_regArr_9__7_) );
  SDFFRQX1M U0_RegFile_regArr_reg_8__7_ ( .D(n769), .SI(
        U0_RegFile_regArr_8__6_), .SE(n1869), .CK(REF_SCAN_CLK), .RN(n1832), 
        .Q(U0_RegFile_regArr_8__7_) );
  SDFFRQX1M U0_RegFile_regArr_reg_7__7_ ( .D(n768), .SI(
        U0_RegFile_regArr_7__6_), .SE(n1883), .CK(REF_SCAN_CLK), .RN(n1838), 
        .Q(U0_RegFile_regArr_7__7_) );
  SDFFRQX1M U0_RegFile_regArr_reg_6__7_ ( .D(n767), .SI(
        U0_RegFile_regArr_6__6_), .SE(n1895), .CK(REF_SCAN_CLK), .RN(n1833), 
        .Q(U0_RegFile_regArr_6__7_) );
  SDFFRQX1M U0_RegFile_regArr_reg_5__7_ ( .D(n766), .SI(
        U0_RegFile_regArr_5__6_), .SE(n1883), .CK(REF_SCAN_CLK), .RN(n1834), 
        .Q(U0_RegFile_regArr_5__7_) );
  SDFFRQX1M U0_RegFile_regArr_reg_4__7_ ( .D(n765), .SI(
        U0_RegFile_regArr_4__6_), .SE(n1890), .CK(REF_SCAN_CLK), .RN(n1834), 
        .Q(U0_RegFile_regArr_4__7_) );
  SDFFRQX1M U0_RegFile_regArr_reg_3__7_ ( .D(n764), .SI(SI[2]), .SE(SE), .CK(
        REF_SCAN_CLK), .RN(n1835), .Q(DIV_RATIO[7]) );
  SDFFRQX1M U0_RegFile_regArr_reg_1__7_ ( .D(n758), .SI(n1117), .SE(n1896), 
        .CK(REF_SCAN_CLK), .RN(n1836), .Q(Operand_B[7]) );
  SDFFRQX1M U0_RegFile_regArr_reg_15__6_ ( .D(n792), .SI(
        U0_RegFile_regArr_15__5_), .SE(SE), .CK(REF_SCAN_CLK), .RN(n1839), .Q(
        U0_RegFile_regArr_15__6_) );
  SDFFRQX1M U0_RegFile_regArr_reg_14__6_ ( .D(n791), .SI(
        U0_RegFile_regArr_14__5_), .SE(n1890), .CK(REF_SCAN_CLK), .RN(n1832), 
        .Q(U0_RegFile_regArr_14__6_) );
  SDFFRQX1M U0_RegFile_regArr_reg_13__6_ ( .D(n790), .SI(
        U0_RegFile_regArr_13__5_), .SE(n1884), .CK(REF_SCAN_CLK), .RN(n1838), 
        .Q(U0_RegFile_regArr_13__6_) );
  SDFFRQX1M U0_RegFile_regArr_reg_12__6_ ( .D(n789), .SI(
        U0_RegFile_regArr_12__5_), .SE(n1897), .CK(REF_SCAN_CLK), .RN(n1833), 
        .Q(U0_RegFile_regArr_12__6_) );
  SDFFRQX1M U0_RegFile_regArr_reg_11__6_ ( .D(n788), .SI(
        U0_RegFile_regArr_11__5_), .SE(n1885), .CK(REF_SCAN_CLK), .RN(n1835), 
        .Q(U0_RegFile_regArr_11__6_) );
  SDFFRQX1M U0_RegFile_regArr_reg_10__6_ ( .D(n787), .SI(
        U0_RegFile_regArr_10__5_), .SE(n1892), .CK(REF_SCAN_CLK), .RN(n1834), 
        .Q(U0_RegFile_regArr_10__6_) );
  SDFFRQX1M U0_RegFile_regArr_reg_9__6_ ( .D(n786), .SI(
        U0_RegFile_regArr_9__5_), .SE(SE), .CK(REF_SCAN_CLK), .RN(n1835), .Q(
        U0_RegFile_regArr_9__6_) );
  SDFFRQX1M U0_RegFile_regArr_reg_8__6_ ( .D(n785), .SI(
        U0_RegFile_regArr_8__5_), .SE(n1869), .CK(REF_SCAN_CLK), .RN(n1836), 
        .Q(U0_RegFile_regArr_8__6_) );
  SDFFRQX1M U0_RegFile_regArr_reg_7__6_ ( .D(n784), .SI(
        U0_RegFile_regArr_7__5_), .SE(n1897), .CK(REF_SCAN_CLK), .RN(n1838), 
        .Q(U0_RegFile_regArr_7__6_) );
  SDFFRQX1M U0_RegFile_regArr_reg_6__6_ ( .D(n783), .SI(
        U0_RegFile_regArr_6__5_), .SE(n1870), .CK(REF_SCAN_CLK), .RN(n1838), 
        .Q(U0_RegFile_regArr_6__6_) );
  SDFFRQX1M U0_RegFile_regArr_reg_5__6_ ( .D(n782), .SI(
        U0_RegFile_regArr_5__5_), .SE(SE), .CK(REF_SCAN_CLK), .RN(n1838), .Q(
        U0_RegFile_regArr_5__6_) );
  SDFFRQX1M U0_RegFile_regArr_reg_4__6_ ( .D(n781), .SI(
        U0_RegFile_regArr_4__5_), .SE(n1898), .CK(REF_SCAN_CLK), .RN(n1838), 
        .Q(U0_RegFile_regArr_4__6_) );
  SDFFRQX1M U0_RegFile_regArr_reg_3__6_ ( .D(n780), .SI(DIV_RATIO[5]), .SE(
        n1884), .CK(REF_SCAN_CLK), .RN(n1838), .Q(DIV_RATIO[6]) );
  SDFFRQX1M U0_RegFile_regArr_reg_15__5_ ( .D(n808), .SI(SI[1]), .SE(n1891), 
        .CK(REF_SCAN_CLK), .RN(n1838), .Q(U0_RegFile_regArr_15__5_) );
  SDFFRQX1M U0_RegFile_regArr_reg_14__5_ ( .D(n807), .SI(
        U0_RegFile_regArr_14__4_), .SE(SE), .CK(REF_SCAN_CLK), .RN(n1838), .Q(
        U0_RegFile_regArr_14__5_) );
  SDFFRQX1M U0_RegFile_regArr_reg_13__5_ ( .D(n806), .SI(
        U0_RegFile_regArr_13__4_), .SE(n1895), .CK(REF_SCAN_CLK), .RN(n1838), 
        .Q(U0_RegFile_regArr_13__5_) );
  SDFFRQX1M U0_RegFile_regArr_reg_12__5_ ( .D(n805), .SI(
        U0_RegFile_regArr_12__4_), .SE(SE), .CK(REF_SCAN_CLK), .RN(n1838), .Q(
        U0_RegFile_regArr_12__5_) );
  SDFFRQX1M U0_RegFile_regArr_reg_11__5_ ( .D(n804), .SI(
        U0_RegFile_regArr_11__4_), .SE(n1891), .CK(REF_SCAN_CLK), .RN(n1838), 
        .Q(U0_RegFile_regArr_11__5_) );
  SDFFRQX1M U0_RegFile_regArr_reg_10__5_ ( .D(n803), .SI(
        U0_RegFile_regArr_10__4_), .SE(n1885), .CK(REF_SCAN_CLK), .RN(n1838), 
        .Q(U0_RegFile_regArr_10__5_) );
  SDFFRQX1M U0_RegFile_regArr_reg_9__5_ ( .D(n802), .SI(
        U0_RegFile_regArr_9__4_), .SE(n1897), .CK(REF_SCAN_CLK), .RN(n1838), 
        .Q(U0_RegFile_regArr_9__5_) );
  SDFFRQX1M U0_RegFile_regArr_reg_8__5_ ( .D(n801), .SI(
        U0_RegFile_regArr_8__4_), .SE(SE), .CK(REF_SCAN_CLK), .RN(n1838), .Q(
        U0_RegFile_regArr_8__5_) );
  SDFFRQX1M U0_RegFile_regArr_reg_7__5_ ( .D(n800), .SI(
        U0_RegFile_regArr_7__4_), .SE(n1892), .CK(REF_SCAN_CLK), .RN(n1838), 
        .Q(U0_RegFile_regArr_7__5_) );
  SDFFRQX1M U0_RegFile_regArr_reg_6__5_ ( .D(n799), .SI(
        U0_RegFile_regArr_6__4_), .SE(n1901), .CK(REF_SCAN_CLK), .RN(n1838), 
        .Q(U0_RegFile_regArr_6__5_) );
  SDFFRQX1M U0_RegFile_regArr_reg_5__5_ ( .D(n798), .SI(
        U0_RegFile_regArr_5__4_), .SE(n1888), .CK(REF_SCAN_CLK), .RN(n1838), 
        .Q(U0_RegFile_regArr_5__5_) );
  SDFFRQX1M U0_RegFile_regArr_reg_4__5_ ( .D(n797), .SI(
        U0_RegFile_regArr_4__4_), .SE(n1901), .CK(REF_SCAN_CLK), .RN(n1838), 
        .Q(U0_RegFile_regArr_4__5_) );
  SDFFRQX1M U0_RegFile_regArr_reg_2__5_ ( .D(n795), .SI(UART_Config[4]), .SE(
        n1869), .CK(REF_SCAN_CLK), .RN(n1838), .Q(UART_Config[5]) );
  SDFFRQX1M U0_RegFile_regArr_reg_15__4_ ( .D(n824), .SI(
        U0_RegFile_regArr_15__3_), .SE(SE), .CK(REF_SCAN_CLK), .RN(n1834), .Q(
        U0_RegFile_regArr_15__4_) );
  SDFFRQX1M U0_RegFile_regArr_reg_14__4_ ( .D(n823), .SI(
        U0_RegFile_regArr_14__3_), .SE(n1896), .CK(REF_SCAN_CLK), .RN(n1835), 
        .Q(U0_RegFile_regArr_14__4_) );
  SDFFRQX1M U0_RegFile_regArr_reg_13__4_ ( .D(n822), .SI(
        U0_RegFile_regArr_13__3_), .SE(n1885), .CK(REF_SCAN_CLK), .RN(n1836), 
        .Q(U0_RegFile_regArr_13__4_) );
  SDFFRQX1M U0_RegFile_regArr_reg_12__4_ ( .D(n821), .SI(
        U0_RegFile_regArr_12__3_), .SE(n1893), .CK(REF_SCAN_CLK), .RN(n1839), 
        .Q(U0_RegFile_regArr_12__4_) );
  SDFFRQX1M U0_RegFile_regArr_reg_11__4_ ( .D(n820), .SI(
        U0_RegFile_regArr_11__3_), .SE(SE), .CK(REF_SCAN_CLK), .RN(n1832), .Q(
        U0_RegFile_regArr_11__4_) );
  SDFFRQX1M U0_RegFile_regArr_reg_10__4_ ( .D(n819), .SI(
        U0_RegFile_regArr_10__3_), .SE(n1898), .CK(REF_SCAN_CLK), .RN(n1838), 
        .Q(U0_RegFile_regArr_10__4_) );
  SDFFRQX1M U0_RegFile_regArr_reg_9__4_ ( .D(n818), .SI(
        U0_RegFile_regArr_9__3_), .SE(n1901), .CK(REF_SCAN_CLK), .RN(n1833), 
        .Q(U0_RegFile_regArr_9__4_) );
  SDFFRQX1M U0_RegFile_regArr_reg_8__4_ ( .D(n817), .SI(
        U0_RegFile_regArr_8__3_), .SE(n1893), .CK(REF_SCAN_CLK), .RN(n1832), 
        .Q(U0_RegFile_regArr_8__4_) );
  SDFFRQX1M U0_RegFile_regArr_reg_7__4_ ( .D(n816), .SI(
        U0_RegFile_regArr_7__3_), .SE(n1883), .CK(REF_SCAN_CLK), .RN(n1836), 
        .Q(U0_RegFile_regArr_7__4_) );
  SDFFRQX1M U0_RegFile_regArr_reg_6__4_ ( .D(n815), .SI(
        U0_RegFile_regArr_6__3_), .SE(n1897), .CK(REF_SCAN_CLK), .RN(n1834), 
        .Q(U0_RegFile_regArr_6__4_) );
  SDFFRQX1M U0_RegFile_regArr_reg_5__4_ ( .D(n814), .SI(
        U0_RegFile_regArr_5__3_), .SE(SE), .CK(REF_SCAN_CLK), .RN(n1835), .Q(
        U0_RegFile_regArr_5__4_) );
  SDFFRQX1M U0_RegFile_regArr_reg_4__4_ ( .D(n813), .SI(
        U0_RegFile_regArr_4__3_), .SE(n1892), .CK(REF_SCAN_CLK), .RN(n1836), 
        .Q(U0_RegFile_regArr_4__4_) );
  SDFFRQX1M U0_RegFile_regArr_reg_3__4_ ( .D(n812), .SI(DIV_RATIO[3]), .SE(SE), 
        .CK(REF_SCAN_CLK), .RN(n1839), .Q(DIV_RATIO[4]) );
  SDFFRQX1M U0_RegFile_regArr_reg_2__4_ ( .D(n811), .SI(n1641), .SE(n1870), 
        .CK(REF_SCAN_CLK), .RN(n1832), .Q(UART_Config[4]) );
  SDFFRQX1M U0_RegFile_regArr_reg_15__3_ ( .D(n840), .SI(
        U0_RegFile_regArr_15__2_), .SE(SE), .CK(REF_SCAN_CLK), .RN(n1838), .Q(
        U0_RegFile_regArr_15__3_) );
  SDFFRQX1M U0_RegFile_regArr_reg_14__3_ ( .D(n839), .SI(
        U0_RegFile_regArr_14__2_), .SE(n1870), .CK(REF_SCAN_CLK), .RN(n1833), 
        .Q(U0_RegFile_regArr_14__3_) );
  SDFFRQX1M U0_RegFile_regArr_reg_13__3_ ( .D(n838), .SI(
        U0_RegFile_regArr_13__2_), .SE(n1883), .CK(REF_SCAN_CLK), .RN(n1838), 
        .Q(U0_RegFile_regArr_13__3_) );
  SDFFRQX1M U0_RegFile_regArr_reg_12__3_ ( .D(n837), .SI(
        U0_RegFile_regArr_12__2_), .SE(n1895), .CK(REF_SCAN_CLK), .RN(n1833), 
        .Q(U0_RegFile_regArr_12__3_) );
  SDFFRQX1M U0_RegFile_regArr_reg_11__3_ ( .D(n836), .SI(
        U0_RegFile_regArr_11__2_), .SE(n1883), .CK(REF_SCAN_CLK), .RN(n1839), 
        .Q(U0_RegFile_regArr_11__3_) );
  SDFFRQX1M U0_RegFile_regArr_reg_10__3_ ( .D(n835), .SI(
        U0_RegFile_regArr_10__2_), .SE(n1890), .CK(REF_SCAN_CLK), .RN(n1833), 
        .Q(U0_RegFile_regArr_10__3_) );
  SDFFRQX1M U0_RegFile_regArr_reg_9__3_ ( .D(n834), .SI(
        U0_RegFile_regArr_9__2_), .SE(n1901), .CK(REF_SCAN_CLK), .RN(n1832), 
        .Q(U0_RegFile_regArr_9__3_) );
  SDFFRQX1M U0_RegFile_regArr_reg_8__3_ ( .D(n833), .SI(
        U0_RegFile_regArr_8__2_), .SE(n1896), .CK(REF_SCAN_CLK), .RN(n1834), 
        .Q(U0_RegFile_regArr_8__3_) );
  SDFFRQX1M U0_RegFile_regArr_reg_7__3_ ( .D(n832), .SI(
        U0_RegFile_regArr_7__2_), .SE(SE), .CK(REF_SCAN_CLK), .RN(n1835), .Q(
        U0_RegFile_regArr_7__3_) );
  SDFFRQX1M U0_RegFile_regArr_reg_6__3_ ( .D(n831), .SI(
        U0_RegFile_regArr_6__2_), .SE(n1890), .CK(REF_SCAN_CLK), .RN(n1836), 
        .Q(U0_RegFile_regArr_6__3_) );
  SDFFRQX1M U0_RegFile_regArr_reg_5__3_ ( .D(n830), .SI(
        U0_RegFile_regArr_5__2_), .SE(n1884), .CK(REF_SCAN_CLK), .RN(n1839), 
        .Q(U0_RegFile_regArr_5__3_) );
  SDFFRQX1M U0_RegFile_regArr_reg_4__3_ ( .D(n829), .SI(
        U0_RegFile_regArr_4__2_), .SE(n1897), .CK(REF_SCAN_CLK), .RN(n1832), 
        .Q(U0_RegFile_regArr_4__3_) );
  SDFFRQX1M U0_RegFile_regArr_reg_3__3_ ( .D(n828), .SI(DIV_RATIO[2]), .SE(
        n1885), .CK(REF_SCAN_CLK), .RN(n1838), .Q(DIV_RATIO[3]) );
  SDFFRQX1M U0_RegFile_regArr_reg_2__3_ ( .D(n827), .SI(n1791), .SE(n1892), 
        .CK(REF_SCAN_CLK), .RN(n1833), .Q(UART_Config[3]) );
  SDFFRQX1M U0_RegFile_regArr_reg_15__2_ ( .D(n856), .SI(
        U0_RegFile_regArr_15__1_), .SE(SE), .CK(REF_SCAN_CLK), .RN(n1832), .Q(
        U0_RegFile_regArr_15__2_) );
  SDFFRQX1M U0_RegFile_regArr_reg_14__2_ ( .D(n855), .SI(
        U0_RegFile_regArr_14__1_), .SE(n1888), .CK(REF_SCAN_CLK), .RN(n1838), 
        .Q(U0_RegFile_regArr_14__2_) );
  SDFFRQX1M U0_RegFile_regArr_reg_13__2_ ( .D(n854), .SI(
        U0_RegFile_regArr_13__1_), .SE(SE), .CK(REF_SCAN_CLK), .RN(n1833), .Q(
        U0_RegFile_regArr_13__2_) );
  SDFFRQX1M U0_RegFile_regArr_reg_12__2_ ( .D(n853), .SI(
        U0_RegFile_regArr_12__1_), .SE(n1869), .CK(REF_SCAN_CLK), .RN(n1834), 
        .Q(U0_RegFile_regArr_12__2_) );
  SDFFRQX1M U0_RegFile_regArr_reg_11__2_ ( .D(n852), .SI(
        U0_RegFile_regArr_11__1_), .SE(SE), .CK(REF_SCAN_CLK), .RN(n1835), .Q(
        U0_RegFile_regArr_11__2_) );
  SDFFRQX1M U0_RegFile_regArr_reg_10__2_ ( .D(n851), .SI(
        U0_RegFile_regArr_10__1_), .SE(n1898), .CK(REF_SCAN_CLK), .RN(n1836), 
        .Q(U0_RegFile_regArr_10__2_) );
  SDFFRQX1M U0_RegFile_regArr_reg_9__2_ ( .D(n850), .SI(
        U0_RegFile_regArr_9__1_), .SE(n1884), .CK(REF_SCAN_CLK), .RN(n1839), 
        .Q(U0_RegFile_regArr_9__2_) );
  SDFFRQX1M U0_RegFile_regArr_reg_8__2_ ( .D(n849), .SI(
        U0_RegFile_regArr_8__1_), .SE(n1891), .CK(REF_SCAN_CLK), .RN(n1832), 
        .Q(U0_RegFile_regArr_8__2_) );
  SDFFRQX1M U0_RegFile_regArr_reg_7__2_ ( .D(n848), .SI(
        U0_RegFile_regArr_7__1_), .SE(SE), .CK(REF_SCAN_CLK), .RN(n1839), .Q(
        U0_RegFile_regArr_7__2_) );
  SDFFRQX1M U0_RegFile_regArr_reg_6__2_ ( .D(n847), .SI(
        U0_RegFile_regArr_6__1_), .SE(n1895), .CK(REF_SCAN_CLK), .RN(n1832), 
        .Q(U0_RegFile_regArr_6__2_) );
  SDFFRQX1M U0_RegFile_regArr_reg_5__2_ ( .D(n846), .SI(
        U0_RegFile_regArr_5__1_), .SE(SE), .CK(REF_SCAN_CLK), .RN(n1839), .Q(
        U0_RegFile_regArr_5__2_) );
  SDFFRQX1M U0_RegFile_regArr_reg_4__2_ ( .D(n845), .SI(
        U0_RegFile_regArr_4__1_), .SE(n1891), .CK(REF_SCAN_CLK), .RN(n1832), 
        .Q(U0_RegFile_regArr_4__2_) );
  SDFFRQX1M U0_RegFile_regArr_reg_3__2_ ( .D(n844), .SI(DIV_RATIO[1]), .SE(
        n1885), .CK(REF_SCAN_CLK), .RN(n1839), .Q(DIV_RATIO[2]) );
  SDFFRQX1M U0_RegFile_regArr_reg_2__2_ ( .D(n843), .SI(n1640), .SE(n1895), 
        .CK(REF_SCAN_CLK), .RN(n1832), .Q(UART_Config[2]) );
  SDFFRQX1M U0_RegFile_regArr_reg_15__1_ ( .D(n872), .SI(
        U0_RegFile_regArr_15__0_), .SE(SE), .CK(REF_SCAN_CLK), .RN(n1839), .Q(
        U0_RegFile_regArr_15__1_) );
  SDFFRQX1M U0_RegFile_regArr_reg_14__1_ ( .D(n871), .SI(
        U0_RegFile_regArr_14__0_), .SE(n1892), .CK(REF_SCAN_CLK), .RN(n1839), 
        .Q(U0_RegFile_regArr_14__1_) );
  SDFFRQX1M U0_RegFile_regArr_reg_13__1_ ( .D(n870), .SI(
        U0_RegFile_regArr_13__0_), .SE(n1901), .CK(REF_SCAN_CLK), .RN(n1839), 
        .Q(U0_RegFile_regArr_13__1_) );
  SDFFRQX1M U0_RegFile_regArr_reg_12__1_ ( .D(n869), .SI(
        U0_RegFile_regArr_12__0_), .SE(n1892), .CK(REF_SCAN_CLK), .RN(n1839), 
        .Q(U0_RegFile_regArr_12__1_) );
  SDFFRQX1M U0_RegFile_regArr_reg_11__1_ ( .D(n868), .SI(
        U0_RegFile_regArr_11__0_), .SE(n1897), .CK(REF_SCAN_CLK), .RN(n1839), 
        .Q(U0_RegFile_regArr_11__1_) );
  SDFFRQX1M U0_RegFile_regArr_reg_10__1_ ( .D(n867), .SI(
        U0_RegFile_regArr_10__0_), .SE(n1870), .CK(REF_SCAN_CLK), .RN(n1839), 
        .Q(U0_RegFile_regArr_10__1_) );
  SDFFRQX1M U0_RegFile_regArr_reg_9__1_ ( .D(n866), .SI(
        U0_RegFile_regArr_9__0_), .SE(n1902), .CK(REF_SCAN_CLK), .RN(n1839), 
        .Q(U0_RegFile_regArr_9__1_) );
  SDFFRQX1M U0_RegFile_regArr_reg_8__1_ ( .D(n865), .SI(
        U0_RegFile_regArr_8__0_), .SE(n1896), .CK(REF_SCAN_CLK), .RN(n1839), 
        .Q(U0_RegFile_regArr_8__1_) );
  SDFFRQX1M U0_RegFile_regArr_reg_7__1_ ( .D(n864), .SI(
        U0_RegFile_regArr_7__0_), .SE(n1885), .CK(REF_SCAN_CLK), .RN(n1839), 
        .Q(U0_RegFile_regArr_7__1_) );
  SDFFRQX1M U0_RegFile_regArr_reg_6__1_ ( .D(n863), .SI(
        U0_RegFile_regArr_6__0_), .SE(n1893), .CK(REF_SCAN_CLK), .RN(n1839), 
        .Q(U0_RegFile_regArr_6__1_) );
  SDFFRQX1M U0_RegFile_regArr_reg_5__1_ ( .D(n862), .SI(
        U0_RegFile_regArr_5__0_), .SE(SE), .CK(REF_SCAN_CLK), .RN(n1839), .Q(
        U0_RegFile_regArr_5__1_) );
  SDFFRQX1M U0_RegFile_regArr_reg_4__1_ ( .D(n861), .SI(
        U0_RegFile_regArr_4__0_), .SE(n1898), .CK(REF_SCAN_CLK), .RN(n1839), 
        .Q(U0_RegFile_regArr_4__1_) );
  SDFFRQX1M U0_RegFile_regArr_reg_3__1_ ( .D(n860), .SI(DIV_RATIO[0]), .SE(
        n1901), .CK(REF_SCAN_CLK), .RN(n1834), .Q(DIV_RATIO[1]) );
  SDFFRQX1M U0_RegFile_regArr_reg_2__1_ ( .D(n859), .SI(UART_Config[0]), .SE(
        n1893), .CK(REF_SCAN_CLK), .RN(n1832), .Q(UART_Config[1]) );
  SDFFRQX1M U0_RegFile_regArr_reg_1__1_ ( .D(n858), .SI(n1704), .SE(n1883), 
        .CK(REF_SCAN_CLK), .RN(n1832), .Q(Operand_B[1]) );
  SDFFRQX1M U0_ALU_ALU_OUT_reg_2_ ( .D(U0_ALU_ALU_OUT_Comb[2]), .SI(ALU_OUT[1]), .SE(n1884), .CK(ALU_CLK), .RN(n1832), .Q(ALU_OUT[2]) );
  SDFFRQX1M U0_ALU_ALU_OUT_reg_3_ ( .D(U0_ALU_ALU_OUT_Comb[3]), .SI(ALU_OUT[2]), .SE(n1897), .CK(ALU_CLK), .RN(n1832), .Q(ALU_OUT[3]) );
  SDFFRQX1M U0_ALU_ALU_OUT_reg_4_ ( .D(U0_ALU_ALU_OUT_Comb[4]), .SI(ALU_OUT[3]), .SE(SE), .CK(ALU_CLK), .RN(n1832), .Q(ALU_OUT[4]) );
  SDFFRQX1M U0_ALU_ALU_OUT_reg_5_ ( .D(U0_ALU_ALU_OUT_Comb[5]), .SI(ALU_OUT[4]), .SE(n1869), .CK(ALU_CLK), .RN(n1832), .Q(ALU_OUT[5]) );
  SDFFRQX1M U0_ALU_ALU_OUT_reg_6_ ( .D(U0_ALU_ALU_OUT_Comb[6]), .SI(ALU_OUT[5]), .SE(n1869), .CK(ALU_CLK), .RN(SYNC_REF_SCAN_RST), .Q(ALU_OUT[6]) );
  SDFFRQX1M U0_ALU_ALU_OUT_reg_7_ ( .D(U0_ALU_ALU_OUT_Comb[7]), .SI(ALU_OUT[6]), .SE(n1897), .CK(ALU_CLK), .RN(n1832), .Q(ALU_OUT[7]) );
  SDFFRQX1M U0_ALU_ALU_OUT_reg_8_ ( .D(U0_ALU_ALU_OUT_Comb[8]), .SI(ALU_OUT[7]), .SE(SE), .CK(ALU_CLK), .RN(n1837), .Q(ALU_OUT[8]) );
  SDFFRQX1M U0_ALU_ALU_OUT_reg_9_ ( .D(U0_ALU_ALU_OUT_Comb[9]), .SI(ALU_OUT[8]), .SE(n1892), .CK(ALU_CLK), .RN(n1837), .Q(ALU_OUT[9]) );
  SDFFRQX1M U0_ALU_ALU_OUT_reg_10_ ( .D(U0_ALU_ALU_OUT_Comb[10]), .SI(
        ALU_OUT[9]), .SE(n1902), .CK(ALU_CLK), .RN(SYNC_REF_SCAN_RST), .Q(
        ALU_OUT[10]) );
  SDFFRQX1M U0_ALU_ALU_OUT_reg_11_ ( .D(U0_ALU_ALU_OUT_Comb[11]), .SI(
        ALU_OUT[10]), .SE(n1897), .CK(ALU_CLK), .RN(SYNC_REF_SCAN_RST), .Q(
        ALU_OUT[11]) );
  SDFFRQX1M U0_ALU_ALU_OUT_reg_12_ ( .D(U0_ALU_ALU_OUT_Comb[12]), .SI(
        ALU_OUT[11]), .SE(n1883), .CK(ALU_CLK), .RN(SYNC_REF_SCAN_RST), .Q(
        ALU_OUT[12]) );
  SDFFRQX1M U0_ALU_ALU_OUT_reg_13_ ( .D(U0_ALU_ALU_OUT_Comb[13]), .SI(
        ALU_OUT[12]), .SE(n1892), .CK(ALU_CLK), .RN(SYNC_REF_SCAN_RST), .Q(
        ALU_OUT[13]) );
  SDFFRQX1M U0_ALU_ALU_OUT_reg_14_ ( .D(U0_ALU_ALU_OUT_Comb[14]), .SI(
        ALU_OUT[13]), .SE(n1902), .CK(ALU_CLK), .RN(SYNC_REF_SCAN_RST), .Q(
        ALU_OUT[14]) );
  SDFFRQX1M U0_ALU_ALU_OUT_reg_15_ ( .D(U0_ALU_ALU_OUT_Comb[15]), .SI(
        ALU_OUT[14]), .SE(n1897), .CK(ALU_CLK), .RN(SYNC_REF_SCAN_RST), .Q(
        ALU_OUT[15]) );
  SDFFRQX1M U0_RegFile_regArr_reg_15__0_ ( .D(n900), .SI(
        U0_RegFile_regArr_14__7_), .SE(n1895), .CK(REF_SCAN_CLK), .RN(n1838), 
        .Q(U0_RegFile_regArr_15__0_) );
  SDFFRQX1M U0_RegFile_regArr_reg_14__0_ ( .D(n899), .SI(
        U0_RegFile_regArr_13__7_), .SE(n1870), .CK(REF_SCAN_CLK), .RN(n1837), 
        .Q(U0_RegFile_regArr_14__0_) );
  SDFFRQX1M U0_RegFile_regArr_reg_13__0_ ( .D(n898), .SI(
        U0_RegFile_regArr_12__7_), .SE(n1892), .CK(REF_SCAN_CLK), .RN(n1837), 
        .Q(U0_RegFile_regArr_13__0_) );
  SDFFRQX1M U0_RegFile_regArr_reg_12__0_ ( .D(n897), .SI(
        U0_RegFile_regArr_11__7_), .SE(SE), .CK(REF_SCAN_CLK), .RN(n1839), .Q(
        U0_RegFile_regArr_12__0_) );
  SDFFRQX1M U0_RegFile_regArr_reg_11__0_ ( .D(n896), .SI(
        U0_RegFile_regArr_10__7_), .SE(n1888), .CK(REF_SCAN_CLK), .RN(n1832), 
        .Q(U0_RegFile_regArr_11__0_) );
  SDFFRQX1M U0_RegFile_regArr_reg_10__0_ ( .D(n895), .SI(
        U0_RegFile_regArr_9__7_), .SE(n1901), .CK(REF_SCAN_CLK), .RN(n1839), 
        .Q(U0_RegFile_regArr_10__0_) );
  SDFFRQX1M U0_RegFile_regArr_reg_9__0_ ( .D(n894), .SI(
        U0_RegFile_regArr_8__7_), .SE(n1869), .CK(REF_SCAN_CLK), .RN(n1833), 
        .Q(U0_RegFile_regArr_9__0_) );
  SDFFRQX1M U0_RegFile_regArr_reg_8__0_ ( .D(n893), .SI(
        U0_RegFile_regArr_7__7_), .SE(n1884), .CK(REF_SCAN_CLK), .RN(n1834), 
        .Q(U0_RegFile_regArr_8__0_) );
  SDFFRQX1M U0_RegFile_regArr_reg_7__0_ ( .D(n892), .SI(
        U0_RegFile_regArr_6__7_), .SE(n1895), .CK(REF_SCAN_CLK), .RN(n1835), 
        .Q(U0_RegFile_regArr_7__0_) );
  SDFFRQX1M U0_RegFile_regArr_reg_6__0_ ( .D(n891), .SI(
        U0_RegFile_regArr_5__7_), .SE(n1883), .CK(REF_SCAN_CLK), .RN(n1836), 
        .Q(U0_RegFile_regArr_6__0_) );
  SDFFRQX1M U0_RegFile_regArr_reg_5__0_ ( .D(n890), .SI(
        U0_RegFile_regArr_4__7_), .SE(n1890), .CK(REF_SCAN_CLK), .RN(n1833), 
        .Q(U0_RegFile_regArr_5__0_) );
  SDFFRQX1M U0_RegFile_regArr_reg_4__0_ ( .D(n889), .SI(DIV_RATIO[7]), .SE(SE), 
        .CK(REF_SCAN_CLK), .RN(n1832), .Q(U0_RegFile_regArr_4__0_) );
  SDFFRQX1M U0_RegFile_regArr_reg_3__0_ ( .D(n888), .SI(UART_Config[7]), .SE(
        n1896), .CK(REF_SCAN_CLK), .RN(n1838), .Q(DIV_RATIO[0]) );
  SDFFRQX1M U0_UART_U0_UART_TX_U0_fsm_current_state_reg_2_ ( .D(
        U0_UART_U0_UART_TX_U0_fsm_next_state[2]), .SI(
        U0_UART_U0_UART_TX_U0_fsm_current_state[1]), .SE(SE), .CK(
        UART_TX_SCAN_CLK), .RN(n915), .Q(
        U0_UART_U0_UART_TX_U0_fsm_current_state[2]) );
  SDFFRQX1M U0_UART_U0_UART_TX_U0_Serializer_ser_count_reg_0_ ( .D(
        U0_UART_U0_UART_TX_U0_Serializer_N23), .SI(
        U0_UART_U0_UART_TX_U0_Serializer_DATA_V[7]), .SE(n1890), .CK(
        UART_TX_SCAN_CLK), .RN(n916), .Q(
        U0_UART_U0_UART_TX_U0_Serializer_ser_count[0]) );
  SDFFRQX1M U0_UART_U0_UART_TX_U0_Serializer_ser_count_reg_1_ ( .D(
        U0_UART_U0_UART_TX_U0_Serializer_N24), .SI(
        U0_UART_U0_UART_TX_U0_Serializer_ser_count[0]), .SE(n1884), .CK(
        UART_TX_SCAN_CLK), .RN(n915), .Q(
        U0_UART_U0_UART_TX_U0_Serializer_ser_count[1]) );
  SDFFRQX1M U0_UART_U0_UART_TX_U0_Serializer_ser_count_reg_2_ ( .D(
        U0_UART_U0_UART_TX_U0_Serializer_N25), .SI(
        U0_UART_U0_UART_TX_U0_Serializer_ser_count[1]), .SE(n1895), .CK(
        UART_TX_SCAN_CLK), .RN(n917), .Q(
        U0_UART_U0_UART_TX_U0_Serializer_ser_count[2]) );
  SDFFRQX1M U0_UART_U0_UART_TX_U0_fsm_current_state_reg_0_ ( .D(
        U0_UART_U0_UART_TX_U0_fsm_next_state[0]), .SI(
        U0_UART_U0_UART_TX_U0_Serializer_ser_count[2]), .SE(n1902), .CK(
        UART_TX_SCAN_CLK), .RN(n915), .Q(
        U0_UART_U0_UART_TX_U0_fsm_current_state[0]) );
  SDFFRQX1M U0_UART_U0_UART_TX_U0_fsm_current_state_reg_1_ ( .D(
        U0_UART_U0_UART_TX_U0_fsm_next_state[1]), .SI(
        U0_UART_U0_UART_TX_U0_fsm_current_state[0]), .SE(n1892), .CK(
        UART_TX_SCAN_CLK), .RN(n917), .Q(
        U0_UART_U0_UART_TX_U0_fsm_current_state[1]) );
  SDFFRQX1M U0_UART_U0_UART_TX_U0_fsm_busy_reg ( .D(
        U0_UART_U0_UART_TX_U0_fsm_busy_c), .SI(DIV_RATIO[6]), .SE(SE), .CK(
        UART_TX_SCAN_CLK), .RN(n915), .Q(UART_TX_Busy) );
  SDFFRQX1M U0_UART_FIFO_u_r2w_sync_sync_reg_reg_3__0_ ( .D(
        U0_UART_FIFO_gray_rd_ptr[3]), .SI(U0_UART_FIFO_r2w_ptr[2]), .SE(n1869), 
        .CK(REF_SCAN_CLK), .RN(n1833), .Q(
        U0_UART_FIFO_u_r2w_sync_sync_reg_3__0_) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_rd_gray_rd_ptr_reg_0_ ( .D(
        U0_UART_FIFO_u_fifo_rd_N89), .SI(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[63]), 
        .SE(n1900), .CK(UART_TX_SCAN_CLK), .RN(n917), .Q(
        U0_UART_FIFO_gray_rd_ptr[0]) );
  SDFFRQX1M U0_UART_FIFO_u_r2w_sync_sync_reg_reg_0__0_ ( .D(
        U0_UART_FIFO_gray_rd_ptr[0]), .SI(U0_UART_FIFO_gray_w_ptr[3]), .SE(
        n1870), .CK(REF_SCAN_CLK), .RN(n1833), .Q(
        U0_UART_FIFO_u_r2w_sync_sync_reg_0__0_) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_rd_gray_rd_ptr_reg_1_ ( .D(
        U0_UART_FIFO_u_fifo_rd_N90), .SI(U0_UART_FIFO_gray_rd_ptr[0]), .SE(
        n1870), .CK(UART_TX_SCAN_CLK), .RN(n916), .Q(
        U0_UART_FIFO_gray_rd_ptr[1]) );
  SDFFRQX1M U0_UART_FIFO_u_r2w_sync_sync_reg_reg_1__0_ ( .D(
        U0_UART_FIFO_gray_rd_ptr[1]), .SI(U0_UART_FIFO_r2w_ptr[0]), .SE(n1896), 
        .CK(REF_SCAN_CLK), .RN(n1833), .Q(
        U0_UART_FIFO_u_r2w_sync_sync_reg_1__0_) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_rd_gray_rd_ptr_reg_2_ ( .D(
        U0_UART_FIFO_u_fifo_rd_N91), .SI(U0_UART_FIFO_gray_rd_ptr[1]), .SE(
        n1900), .CK(UART_TX_SCAN_CLK), .RN(n916), .Q(
        U0_UART_FIFO_gray_rd_ptr[2]) );
  SDFFRQX1M U0_UART_FIFO_u_r2w_sync_sync_reg_reg_2__0_ ( .D(
        U0_UART_FIFO_gray_rd_ptr[2]), .SI(U0_UART_FIFO_r2w_ptr[1]), .SE(n1891), 
        .CK(REF_SCAN_CLK), .RN(n1833), .Q(
        U0_UART_FIFO_u_r2w_sync_sync_reg_2__0_) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_wr_w_ptr_reg_0_ ( .D(n886), .SI(
        U0_UART_FIFO_gray_w_ptr[2]), .SE(n1901), .CK(REF_SCAN_CLK), .RN(n1833), 
        .Q(U0_UART_FIFO_w_addr[0]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_wr_w_ptr_reg_1_ ( .D(n885), .SI(
        U0_UART_FIFO_w_addr[0]), .SE(n1895), .CK(REF_SCAN_CLK), .RN(n1833), 
        .Q(U0_UART_FIFO_w_addr[1]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_wr_w_ptr_reg_2_ ( .D(n884), .SI(
        U0_UART_FIFO_w_addr[1]), .SE(SE), .CK(REF_SCAN_CLK), .RN(n1833), .Q(
        U0_UART_FIFO_w_addr[2]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_wr_w_ptr_reg_3_ ( .D(n883), .SI(
        U0_UART_FIFO_gray_rd_ptr[3]), .SE(n1891), .CK(REF_SCAN_CLK), .RN(n1833), .Q(U0_UART_FIFO_u_fifo_wr_N92) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_7__2_ ( .D(n740), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[57]), .SE(n1885), .CK(REF_SCAN_CLK), 
        .RN(n1833), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[58]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_7__3_ ( .D(n732), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[58]), .SE(n1898), .CK(REF_SCAN_CLK), 
        .RN(n1833), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[59]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_7__4_ ( .D(n724), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[59]), .SE(n1900), .CK(REF_SCAN_CLK), 
        .RN(n1833), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[60]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_7__5_ ( .D(n716), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[60]), .SE(n1892), .CK(REF_SCAN_CLK), 
        .RN(n1833), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[61]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_7__6_ ( .D(n708), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[61]), .SE(SE), .CK(REF_SCAN_CLK), 
        .RN(n1833), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[62]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_7__7_ ( .D(n700), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[62]), .SE(n1888), .CK(REF_SCAN_CLK), 
        .RN(n1833), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[63]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_5__2_ ( .D(n738), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[41]), .SE(n1902), .CK(REF_SCAN_CLK), 
        .RN(n1833), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[42]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_5__3_ ( .D(n730), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[42]), .SE(n1869), .CK(REF_SCAN_CLK), 
        .RN(n1833), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[43]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_5__4_ ( .D(n722), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[43]), .SE(SE), .CK(REF_SCAN_CLK), 
        .RN(n1833), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[44]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_5__5_ ( .D(n714), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[44]), .SE(n1898), .CK(REF_SCAN_CLK), 
        .RN(n1834), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[45]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_5__6_ ( .D(n706), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[45]), .SE(n1900), .CK(REF_SCAN_CLK), 
        .RN(n1833), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[46]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_5__7_ ( .D(n698), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[46]), .SE(n1893), .CK(REF_SCAN_CLK), 
        .RN(n1833), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[47]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_3__2_ ( .D(n736), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[25]), .SE(SE), .CK(REF_SCAN_CLK), 
        .RN(n1833), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[26]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_3__3_ ( .D(n728), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[26]), .SE(n1898), .CK(REF_SCAN_CLK), 
        .RN(n1834), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[27]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_3__4_ ( .D(n720), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[27]), .SE(n1900), .CK(REF_SCAN_CLK), 
        .RN(n1834), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[28]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_3__5_ ( .D(n712), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[28]), .SE(n1893), .CK(REF_SCAN_CLK), 
        .RN(n1834), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[29]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_3__6_ ( .D(n704), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[29]), .SE(n1883), .CK(REF_SCAN_CLK), 
        .RN(n1834), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[30]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_3__7_ ( .D(n696), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[30]), .SE(n1896), .CK(REF_SCAN_CLK), 
        .RN(n1834), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[31]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_1__2_ ( .D(n734), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[9]), .SE(n1900), .CK(REF_SCAN_CLK), 
        .RN(n1834), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[10]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_1__3_ ( .D(n726), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[10]), .SE(n1890), .CK(REF_SCAN_CLK), 
        .RN(n1834), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[11]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_1__4_ ( .D(n718), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[11]), .SE(n1888), .CK(REF_SCAN_CLK), 
        .RN(n1834), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[12]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_1__5_ ( .D(n710), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[12]), .SE(n1902), .CK(REF_SCAN_CLK), 
        .RN(n1834), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[13]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_1__6_ ( .D(n702), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[13]), .SE(SE), .CK(REF_SCAN_CLK), 
        .RN(n1834), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[14]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_1__7_ ( .D(n694), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[14]), .SE(n1870), .CK(REF_SCAN_CLK), 
        .RN(n1834), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[15]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_6__2_ ( .D(n739), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[49]), .SE(n1885), .CK(REF_SCAN_CLK), 
        .RN(n1837), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[50]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_6__3_ ( .D(n731), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[50]), .SE(n1895), .CK(REF_SCAN_CLK), 
        .RN(n1834), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[51]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_6__4_ ( .D(n723), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[51]), .SE(n1900), .CK(REF_SCAN_CLK), 
        .RN(n1834), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[52]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_6__5_ ( .D(n715), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[52]), .SE(n1890), .CK(REF_SCAN_CLK), 
        .RN(n1834), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[53]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_6__6_ ( .D(n707), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[53]), .SE(SE), .CK(REF_SCAN_CLK), 
        .RN(n1834), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[54]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_6__7_ ( .D(n699), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[54]), .SE(n1896), .CK(REF_SCAN_CLK), 
        .RN(n1834), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[55]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_4__2_ ( .D(n737), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[33]), .SE(n1902), .CK(REF_SCAN_CLK), 
        .RN(n1834), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[34]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_4__3_ ( .D(n729), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[34]), .SE(n1890), .CK(REF_SCAN_CLK), 
        .RN(n1834), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[35]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_4__4_ ( .D(n721), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[35]), .SE(n1884), .CK(REF_SCAN_CLK), 
        .RN(n1834), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[36]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_4__5_ ( .D(n713), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[36]), .SE(n1895), .CK(REF_SCAN_CLK), 
        .RN(n1835), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[37]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_4__6_ ( .D(n705), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[37]), .SE(n1900), .CK(REF_SCAN_CLK), 
        .RN(n1835), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[38]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_4__7_ ( .D(n697), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[38]), .SE(n1893), .CK(REF_SCAN_CLK), 
        .RN(n1835), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[39]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_2__2_ ( .D(n735), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[17]), .SE(n1901), .CK(REF_SCAN_CLK), 
        .RN(n1835), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[18]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_2__3_ ( .D(n727), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[18]), .SE(n1888), .CK(REF_SCAN_CLK), 
        .RN(n1835), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[19]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_2__4_ ( .D(n719), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[19]), .SE(n1900), .CK(REF_SCAN_CLK), 
        .RN(n1835), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[20]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_2__5_ ( .D(n711), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[20]), .SE(n1869), .CK(REF_SCAN_CLK), 
        .RN(n1835), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[21]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_2__6_ ( .D(n703), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[21]), .SE(SE), .CK(REF_SCAN_CLK), 
        .RN(n1835), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[22]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_2__7_ ( .D(n695), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[22]), .SE(n1896), .CK(REF_SCAN_CLK), 
        .RN(n1835), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[23]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_0__2_ ( .D(n733), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[1]), .SE(n1900), .CK(REF_SCAN_CLK), 
        .RN(n1835), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[2]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_0__3_ ( .D(n725), .SI(SI[0]), 
        .SE(n1891), .CK(REF_SCAN_CLK), .RN(n1835), .Q(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[3]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_0__4_ ( .D(n717), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[3]), .SE(SE), .CK(REF_SCAN_CLK), .RN(
        n1835), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[4]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_0__5_ ( .D(n709), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[4]), .SE(n1896), .CK(REF_SCAN_CLK), 
        .RN(n1835), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[5]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_0__6_ ( .D(n701), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[5]), .SE(SE), .CK(REF_SCAN_CLK), .RN(
        n1835), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[6]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_0__7_ ( .D(n693), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[6]), .SE(n1891), .CK(REF_SCAN_CLK), 
        .RN(n1835), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[7]) );
  SDFFRQX1M U0_UART_U0_UART_TX_U0_Serializer_DATA_V_reg_7_ ( .D(n882), .SI(
        U0_UART_U0_UART_TX_U0_Serializer_DATA_V[6]), .SE(n1885), .CK(
        UART_TX_SCAN_CLK), .RN(n915), .Q(
        U0_UART_U0_UART_TX_U0_Serializer_DATA_V[7]) );
  SDFFRQX1M U0_UART_U0_UART_TX_U0_Serializer_DATA_V_reg_6_ ( .D(n875), .SI(
        U0_UART_U0_UART_TX_U0_Serializer_DATA_V[5]), .SE(n1898), .CK(
        UART_TX_SCAN_CLK), .RN(n915), .Q(
        U0_UART_U0_UART_TX_U0_Serializer_DATA_V[6]) );
  SDFFRQX1M U0_UART_U0_UART_TX_U0_Serializer_DATA_V_reg_5_ ( .D(n876), .SI(
        U0_UART_U0_UART_TX_U0_Serializer_DATA_V[4]), .SE(n1900), .CK(
        UART_TX_SCAN_CLK), .RN(n916), .Q(
        U0_UART_U0_UART_TX_U0_Serializer_DATA_V[5]) );
  SDFFRQX1M U0_UART_U0_UART_TX_U0_Serializer_DATA_V_reg_4_ ( .D(n877), .SI(
        U0_UART_U0_UART_TX_U0_Serializer_DATA_V[3]), .SE(n1891), .CK(
        UART_TX_SCAN_CLK), .RN(n917), .Q(
        U0_UART_U0_UART_TX_U0_Serializer_DATA_V[4]) );
  SDFFRQX1M U0_UART_U0_UART_TX_U0_Serializer_DATA_V_reg_3_ ( .D(n878), .SI(
        U0_UART_U0_UART_TX_U0_Serializer_DATA_V[2]), .SE(SE), .CK(
        UART_TX_SCAN_CLK), .RN(n915), .Q(
        U0_UART_U0_UART_TX_U0_Serializer_DATA_V[3]) );
  SDFFRQX1M U0_UART_U0_UART_TX_U0_Serializer_DATA_V_reg_2_ ( .D(n879), .SI(
        U0_UART_U0_UART_TX_U0_Serializer_DATA_V[1]), .SE(n1902), .CK(
        UART_TX_SCAN_CLK), .RN(n916), .Q(
        U0_UART_U0_UART_TX_U0_Serializer_DATA_V[2]) );
  SDFFRQX1M U0_UART_U0_UART_TX_U0_Serializer_DATA_V_reg_1_ ( .D(n880), .SI(
        U0_UART_U0_UART_TX_ser_data), .SE(n1902), .CK(UART_TX_SCAN_CLK), .RN(
        n916), .Q(U0_UART_U0_UART_TX_U0_Serializer_DATA_V[1]) );
  SDFFRQX1M U0_UART_U0_UART_TX_U0_Serializer_DATA_V_reg_0_ ( .D(n881), .SI(
        U0_UART_U0_UART_RX_U0_uart_fsm_current_state[2]), .SE(n1870), .CK(
        UART_TX_SCAN_CLK), .RN(n917), .Q(U0_UART_U0_UART_TX_ser_data) );
  SDFFRQX1M U0_RegFile_regArr_reg_0__0_ ( .D(n873), .SI(RF_RdData[7]), .SE(
        n1884), .CK(REF_SCAN_CLK), .RN(n1835), .Q(Operand_A[0]) );
  SDFFRQX1M U0_ALU_ALU_OUT_reg_0_ ( .D(U0_ALU_ALU_OUT_Comb[0]), .SI(SI[3]), 
        .SE(n1885), .CK(ALU_CLK), .RN(n1835), .Q(ALU_OUT[0]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_7__0_ ( .D(n756), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[55]), .SE(n1898), .CK(REF_SCAN_CLK), 
        .RN(n1835), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[56]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_6__0_ ( .D(n755), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[47]), .SE(n1900), .CK(REF_SCAN_CLK), 
        .RN(n1835), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[48]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_5__0_ ( .D(n754), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[39]), .SE(n1893), .CK(REF_SCAN_CLK), 
        .RN(n1835), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[40]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_4__0_ ( .D(n753), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[31]), .SE(n1901), .CK(REF_SCAN_CLK), 
        .RN(n1836), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[32]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_3__0_ ( .D(n752), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[23]), .SE(n1895), .CK(REF_SCAN_CLK), 
        .RN(n1836), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[24]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_2__0_ ( .D(n751), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[15]), .SE(SE), .CK(REF_SCAN_CLK), 
        .RN(n1836), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[16]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_1__0_ ( .D(n750), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[7]), .SE(n1893), .CK(REF_SCAN_CLK), 
        .RN(n1836), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[8]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_0__0_ ( .D(n749), .SI(
        U0_UART_U0_UART_TX_parity), .SE(n1883), .CK(REF_SCAN_CLK), .RN(n1836), 
        .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[0]) );
  SDFFRQX1M U0_ALU_ALU_OUT_reg_1_ ( .D(U0_ALU_ALU_OUT_Comb[1]), .SI(ALU_OUT[0]), .SE(n1897), .CK(ALU_CLK), .RN(n1836), .Q(ALU_OUT[1]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_7__1_ ( .D(n748), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[56]), .SE(n1896), .CK(REF_SCAN_CLK), 
        .RN(n1836), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[57]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_6__1_ ( .D(n747), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[48]), .SE(n1900), .CK(REF_SCAN_CLK), 
        .RN(n1836), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[49]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_5__1_ ( .D(n746), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[40]), .SE(n1893), .CK(REF_SCAN_CLK), 
        .RN(n1836), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[41]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_4__1_ ( .D(n745), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[32]), .SE(SE), .CK(REF_SCAN_CLK), 
        .RN(n1836), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[33]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_3__1_ ( .D(n744), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[24]), .SE(n1888), .CK(REF_SCAN_CLK), 
        .RN(n1836), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[25]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_2__1_ ( .D(n743), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[16]), .SE(n1902), .CK(REF_SCAN_CLK), 
        .RN(n1836), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[17]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_1__1_ ( .D(n742), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[8]), .SE(n1869), .CK(REF_SCAN_CLK), 
        .RN(n1836), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[9]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_mem_FIFO_MEM_reg_0__1_ ( .D(n741), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[0]), .SE(n1884), .CK(REF_SCAN_CLK), 
        .RN(n1836), .Q(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[1]) );
  SDFFQX1M U0_SYS_CTRL_ALU_OUT_reg_reg_2_ ( .D(ALU_OUT[2]), .SI(
        U0_SYS_CTRL_ALU_OUT_reg[1]), .SE(n1888), .CK(REF_SCAN_CLK), .Q(
        U0_SYS_CTRL_ALU_OUT_reg[2]) );
  SDFFQX1M U0_SYS_CTRL_ALU_OUT_reg_reg_3_ ( .D(ALU_OUT[3]), .SI(
        U0_SYS_CTRL_ALU_OUT_reg[2]), .SE(n1890), .CK(REF_SCAN_CLK), .Q(
        U0_SYS_CTRL_ALU_OUT_reg[3]) );
  SDFFQX1M U0_SYS_CTRL_ALU_OUT_reg_reg_4_ ( .D(ALU_OUT[4]), .SI(
        U0_SYS_CTRL_ALU_OUT_reg[3]), .SE(n1901), .CK(REF_SCAN_CLK), .Q(
        U0_SYS_CTRL_ALU_OUT_reg[4]) );
  SDFFQX1M U0_SYS_CTRL_ALU_OUT_reg_reg_5_ ( .D(ALU_OUT[5]), .SI(
        U0_SYS_CTRL_ALU_OUT_reg[4]), .SE(n1898), .CK(REF_SCAN_CLK), .Q(
        U0_SYS_CTRL_ALU_OUT_reg[5]) );
  SDFFQX1M U0_SYS_CTRL_ALU_OUT_reg_reg_6_ ( .D(ALU_OUT[6]), .SI(
        U0_SYS_CTRL_ALU_OUT_reg[5]), .SE(n1897), .CK(REF_SCAN_CLK), .Q(
        U0_SYS_CTRL_ALU_OUT_reg[6]) );
  SDFFQX1M U0_SYS_CTRL_ALU_OUT_reg_reg_7_ ( .D(ALU_OUT[7]), .SI(
        U0_SYS_CTRL_ALU_OUT_reg[6]), .SE(n1869), .CK(REF_SCAN_CLK), .Q(
        U0_SYS_CTRL_ALU_OUT_reg[7]) );
  SDFFQX1M U0_SYS_CTRL_ALU_OUT_reg_reg_8_ ( .D(ALU_OUT[8]), .SI(
        U0_SYS_CTRL_ALU_OUT_reg[7]), .SE(n1885), .CK(REF_SCAN_CLK), .Q(
        U0_SYS_CTRL_ALU_OUT_reg[8]) );
  SDFFQX1M U0_SYS_CTRL_ALU_OUT_reg_reg_9_ ( .D(ALU_OUT[9]), .SI(
        U0_SYS_CTRL_ALU_OUT_reg[8]), .SE(n1896), .CK(REF_SCAN_CLK), .Q(
        U0_SYS_CTRL_ALU_OUT_reg[9]) );
  SDFFQX1M U0_SYS_CTRL_ALU_OUT_reg_reg_10_ ( .D(ALU_OUT[10]), .SI(
        U0_SYS_CTRL_ALU_OUT_reg[9]), .SE(n1884), .CK(REF_SCAN_CLK), .Q(
        U0_SYS_CTRL_ALU_OUT_reg[10]) );
  SDFFQX1M U0_SYS_CTRL_ALU_OUT_reg_reg_11_ ( .D(ALU_OUT[11]), .SI(
        U0_SYS_CTRL_ALU_OUT_reg[10]), .SE(n1893), .CK(REF_SCAN_CLK), .Q(
        U0_SYS_CTRL_ALU_OUT_reg[11]) );
  SDFFQX1M U0_SYS_CTRL_ALU_OUT_reg_reg_12_ ( .D(ALU_OUT[12]), .SI(
        U0_SYS_CTRL_ALU_OUT_reg[11]), .SE(n1888), .CK(REF_SCAN_CLK), .Q(
        U0_SYS_CTRL_ALU_OUT_reg[12]) );
  SDFFQX1M U0_SYS_CTRL_ALU_OUT_reg_reg_13_ ( .D(ALU_OUT[13]), .SI(
        U0_SYS_CTRL_ALU_OUT_reg[12]), .SE(n1898), .CK(REF_SCAN_CLK), .Q(
        U0_SYS_CTRL_ALU_OUT_reg[13]) );
  SDFFQX1M U0_SYS_CTRL_ALU_OUT_reg_reg_15_ ( .D(ALU_OUT[15]), .SI(
        U0_SYS_CTRL_ALU_OUT_reg[14]), .SE(n1891), .CK(REF_SCAN_CLK), .Q(
        U0_SYS_CTRL_ALU_OUT_reg[15]) );
  SDFFQX1M U0_SYS_CTRL_ALU_OUT_reg_reg_0_ ( .D(ALU_OUT[0]), .SI(
        U0_SYS_CTRL_ALU_FUN_reg[3]), .SE(n1883), .CK(REF_SCAN_CLK), .Q(
        U0_SYS_CTRL_ALU_OUT_reg[0]) );
  SDFFQX1M U0_SYS_CTRL_ALU_OUT_reg_reg_1_ ( .D(ALU_OUT[1]), .SI(
        U0_SYS_CTRL_ALU_OUT_reg[0]), .SE(n1896), .CK(REF_SCAN_CLK), .Q(
        U0_SYS_CTRL_ALU_OUT_reg[1]) );
  SDFFRQX1M U0_RegFile_RdData_VLD_reg ( .D(n691), .SI(SYNC_UART_RST), .SE(
        n1895), .CK(REF_SCAN_CLK), .RN(n1836), .Q(RF_RdData_VLD) );
  SDFFRQX1M U0_UART_U0_UART_RX_U0_deserializer_P_DATA_reg_7_ ( .D(n690), .SI(
        UART_RX_OUT[6]), .SE(n1900), .CK(UART_RX_SCAN_CLK), .RN(n916), .Q(
        UART_RX_OUT[7]) );
  SDFFRQX1M U0_UART_U0_UART_RX_U0_deserializer_P_DATA_reg_6_ ( .D(n689), .SI(
        UART_RX_OUT[5]), .SE(n1890), .CK(UART_RX_SCAN_CLK), .RN(n915), .Q(
        UART_RX_OUT[6]) );
  SDFFRQX1M U0_UART_U0_UART_RX_U0_deserializer_P_DATA_reg_5_ ( .D(n688), .SI(
        UART_RX_OUT[4]), .SE(n1897), .CK(UART_RX_SCAN_CLK), .RN(n917), .Q(
        UART_RX_OUT[5]) );
  SDFFRQX1M U0_UART_U0_UART_RX_U0_deserializer_P_DATA_reg_4_ ( .D(n687), .SI(
        UART_RX_OUT[3]), .SE(n1898), .CK(UART_RX_SCAN_CLK), .RN(n916), .Q(
        UART_RX_OUT[4]) );
  SDFFRQX1M U0_UART_U0_UART_RX_U0_deserializer_P_DATA_reg_3_ ( .D(n686), .SI(
        UART_RX_OUT[2]), .SE(SE), .CK(UART_RX_SCAN_CLK), .RN(n915), .Q(
        UART_RX_OUT[3]) );
  SDFFRQX1M U0_UART_U0_UART_RX_U0_deserializer_P_DATA_reg_2_ ( .D(n685), .SI(
        UART_RX_OUT[1]), .SE(n1890), .CK(UART_RX_SCAN_CLK), .RN(n917), .Q(
        UART_RX_OUT[2]) );
  SDFFRQX1M U0_UART_U0_UART_RX_U0_deserializer_P_DATA_reg_1_ ( .D(n684), .SI(
        UART_RX_OUT[0]), .SE(n1884), .CK(UART_RX_SCAN_CLK), .RN(n916), .Q(
        UART_RX_OUT[1]) );
  SDFFRQX1M U0_UART_U0_UART_RX_U0_deserializer_P_DATA_reg_0_ ( .D(n683), .SI(
        U0_UART_U0_UART_RX_sampled_bit), .SE(n1895), .CK(UART_RX_SCAN_CLK), 
        .RN(n915), .Q(UART_RX_OUT[0]) );
  SDFFRQX1M U0_ref_sync_sync_bus_reg_7_ ( .D(n681), .SI(n1619), .SE(n1900), 
        .CK(REF_SCAN_CLK), .RN(n1836), .Q(UART_RX_SYNC[7]) );
  SDFFRQX1M U0_ref_sync_sync_bus_reg_6_ ( .D(n680), .SI(n1617), .SE(n1892), 
        .CK(REF_SCAN_CLK), .RN(n1836), .Q(UART_RX_SYNC[6]) );
  SDFFRQX1M U0_ref_sync_sync_bus_reg_5_ ( .D(n679), .SI(UART_RX_SYNC[4]), .SE(
        n1888), .CK(REF_SCAN_CLK), .RN(n1836), .Q(UART_RX_SYNC[5]) );
  SDFFRQX1M U0_ref_sync_sync_bus_reg_4_ ( .D(n678), .SI(n1286), .SE(n1902), 
        .CK(REF_SCAN_CLK), .RN(n1836), .Q(UART_RX_SYNC[4]) );
  SDFFRQX1M U0_ref_sync_sync_bus_reg_3_ ( .D(n677), .SI(n1290), .SE(n1902), 
        .CK(REF_SCAN_CLK), .RN(n1836), .Q(UART_RX_SYNC[3]) );
  SDFFRQX1M U0_ref_sync_sync_bus_reg_2_ ( .D(n676), .SI(UART_RX_SYNC[1]), .SE(
        n1870), .CK(REF_SCAN_CLK), .RN(n1836), .Q(UART_RX_SYNC[2]) );
  SDFFRQX1M U0_ref_sync_sync_bus_reg_1_ ( .D(n675), .SI(n1293), .SE(SE), .CK(
        REF_SCAN_CLK), .RN(n1837), .Q(UART_RX_SYNC[1]) );
  SDFFRQX1M U0_ref_sync_sync_bus_reg_0_ ( .D(n673), .SI(UART_RX_V_SYNC), .SE(
        n1896), .CK(REF_SCAN_CLK), .RN(n1837), .Q(UART_RX_SYNC[0]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_rd_rd_ptr_reg_1_ ( .D(n671), .SI(n1762), .SE(
        n1902), .CK(UART_TX_SCAN_CLK), .RN(n915), .Q(U0_UART_FIFO_r_addr[1])
         );
  SDFFRQX1M U0_UART_FIFO_u_fifo_rd_rd_ptr_reg_3_ ( .D(n669), .SI(
        U0_PULSE_GEN_pls_flop), .SE(n1891), .CK(UART_TX_SCAN_CLK), .RN(n917), 
        .Q(U0_UART_FIFO_u_fifo_rd_rd_ptr_3_) );
  SDFFRQX1M U0_UART_U0_UART_TX_U0_parity_calc_DATA_V_reg_0_ ( .D(n668), .SI(
        U0_UART_U0_UART_TX_U0_fsm_current_state[2]), .SE(SE), .CK(
        UART_TX_SCAN_CLK), .RN(n917), .Q(
        U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[0]) );
  SDFFRQX1M U0_UART_U0_UART_TX_U0_parity_calc_DATA_V_reg_1_ ( .D(n667), .SI(
        U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[0]), .SE(n1896), .CK(
        UART_TX_SCAN_CLK), .RN(n916), .Q(
        U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[1]) );
  SDFFRQX1M U0_UART_U0_UART_TX_U0_parity_calc_DATA_V_reg_2_ ( .D(n666), .SI(
        U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[1]), .SE(SE), .CK(
        UART_TX_SCAN_CLK), .RN(n915), .Q(
        U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[2]) );
  SDFFRQX1M U0_UART_U0_UART_TX_U0_parity_calc_DATA_V_reg_3_ ( .D(n665), .SI(
        U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[2]), .SE(n1891), .CK(
        UART_TX_SCAN_CLK), .RN(n917), .Q(
        U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[3]) );
  SDFFRQX1M U0_UART_U0_UART_TX_U0_parity_calc_DATA_V_reg_4_ ( .D(n664), .SI(
        U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[3]), .SE(n1885), .CK(
        UART_TX_SCAN_CLK), .RN(n916), .Q(
        U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[4]) );
  SDFFRQX1M U0_UART_U0_UART_TX_U0_parity_calc_DATA_V_reg_5_ ( .D(n663), .SI(
        U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[4]), .SE(n1898), .CK(
        UART_TX_SCAN_CLK), .RN(n915), .Q(
        U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[5]) );
  SDFFRQX1M U0_UART_U0_UART_TX_U0_parity_calc_DATA_V_reg_6_ ( .D(n662), .SI(
        U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[5]), .SE(n1900), .CK(
        UART_TX_SCAN_CLK), .RN(n917), .Q(
        U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[6]) );
  SDFFRQX1M U0_UART_U0_UART_TX_U0_parity_calc_DATA_V_reg_7_ ( .D(n661), .SI(
        U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[6]), .SE(n1890), .CK(
        UART_TX_SCAN_CLK), .RN(n916), .Q(
        U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[7]) );
  SDFFRQX1M U0_UART_U0_UART_TX_U0_parity_calc_parity_reg ( .D(n660), .SI(
        U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[7]), .SE(n1901), .CK(
        UART_TX_SCAN_CLK), .RN(n915), .Q(U0_UART_U0_UART_TX_parity) );
  SDFFRQX1M U0_SYS_CTRL_state_reg_reg_1_ ( .D(U0_SYS_CTRL_state_next[1]), .SI(
        U0_SYS_CTRL_state_reg[0]), .SE(n1888), .CK(REF_SCAN_CLK), .RN(n1836), 
        .Q(U0_SYS_CTRL_state_reg[1]) );
  SDFFRQX1M U0_UART_U0_UART_RX_U0_edge_bit_counter_edge_count_reg_0_ ( .D(
        U0_UART_U0_UART_RX_U0_edge_bit_counter_N19), .SI(n1675), .SE(n1902), 
        .CK(UART_RX_SCAN_CLK), .RN(n917), .Q(U0_UART_U0_UART_RX_edge_count[0])
         );
  SDFFRQX1M U0_RegFile_regArr_reg_0__7_ ( .D(n757), .SI(n1706), .SE(n1869), 
        .CK(REF_SCAN_CLK), .RN(n1839), .Q(Operand_A[7]) );
  SDFFRQX1M U0_RegFile_regArr_reg_2__6_ ( .D(n779), .SI(UART_Config[5]), .SE(
        n1885), .CK(REF_SCAN_CLK), .RN(n1838), .Q(UART_Config[6]) );
  SDFFRQX1M U0_RegFile_regArr_reg_1__6_ ( .D(n778), .SI(n1653), .SE(n1898), 
        .CK(REF_SCAN_CLK), .RN(n1838), .Q(Operand_B[6]) );
  SDFFRQX1M U0_RegFile_regArr_reg_0__6_ ( .D(n777), .SI(n1684), .SE(n1902), 
        .CK(REF_SCAN_CLK), .RN(n1838), .Q(Operand_A[6]) );
  SDFFRQX1M U0_RegFile_regArr_reg_1__5_ ( .D(n794), .SI(n1651), .SE(n1893), 
        .CK(REF_SCAN_CLK), .RN(n1838), .Q(Operand_B[5]) );
  SDFFRQX1M U0_RegFile_regArr_reg_0__5_ ( .D(n793), .SI(n1683), .SE(SE), .CK(
        REF_SCAN_CLK), .RN(n1839), .Q(Operand_A[5]) );
  SDFFRQX1M U0_RegFile_regArr_reg_1__4_ ( .D(n810), .SI(n1601), .SE(n1895), 
        .CK(REF_SCAN_CLK), .RN(n1834), .Q(Operand_B[4]) );
  SDFFRQX1M U0_RegFile_regArr_reg_0__4_ ( .D(n809), .SI(n1703), .SE(SE), .CK(
        REF_SCAN_CLK), .RN(n1835), .Q(Operand_A[4]) );
  SDFFRQX1M U0_RegFile_regArr_reg_1__3_ ( .D(n826), .SI(n1700), .SE(n1893), 
        .CK(REF_SCAN_CLK), .RN(n1832), .Q(Operand_B[3]) );
  SDFFRQX1M U0_RegFile_regArr_reg_0__3_ ( .D(n825), .SI(n1685), .SE(n1883), 
        .CK(REF_SCAN_CLK), .RN(n1839), .Q(Operand_A[3]) );
  SDFFRQX1M U0_RegFile_regArr_reg_1__2_ ( .D(n842), .SI(n1604), .SE(n1896), 
        .CK(REF_SCAN_CLK), .RN(n1839), .Q(Operand_B[2]) );
  SDFFRQX1M U0_RegFile_regArr_reg_0__2_ ( .D(n841), .SI(n1686), .SE(n1900), 
        .CK(REF_SCAN_CLK), .RN(n1839), .Q(Operand_A[2]) );
  SDFFRQX1M U0_RegFile_regArr_reg_0__1_ ( .D(n857), .SI(n1698), .SE(n1891), 
        .CK(REF_SCAN_CLK), .RN(n1832), .Q(Operand_A[1]) );
  SDFFRQX1M U0_RegFile_regArr_reg_1__0_ ( .D(n874), .SI(n1682), .SE(SE), .CK(
        REF_SCAN_CLK), .RN(n1835), .Q(Operand_B[0]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_rd_rd_ptr_reg_0_ ( .D(n672), .SI(
        U0_UART_FIFO_gray_rd_ptr[2]), .SE(n1902), .CK(UART_TX_SCAN_CLK), .RN(
        n916), .Q(U0_UART_FIFO_r_addr[0]) );
  SDFFRQX1M U0_UART_FIFO_u_fifo_rd_rd_ptr_reg_2_ ( .D(n670), .SI(
        U0_UART_FIFO_r_addr[1]), .SE(SE), .CK(UART_TX_SCAN_CLK), .RN(n916), 
        .Q(U0_UART_FIFO_r_addr[2]) );
  ADDFX1M intadd_1_U2 ( .A(intadd_1_A_3_), .B(intadd_1_B_3_), .CI(intadd_1_n2), 
        .CO(intadd_1_n1), .S(intadd_0_A_8_) );
  ADDFX1M intadd_2_U3 ( .A(intadd_2_A_2_), .B(intadd_2_B_2_), .CI(intadd_2_n3), 
        .CO(intadd_2_n2), .S(intadd_2_SUM_2_) );
  ADDFX1M intadd_2_U2 ( .A(intadd_2_A_3_), .B(intadd_1_SUM_2_), .CI(
        intadd_2_n2), .CO(intadd_2_n1), .S(intadd_0_B_7_) );
  ADDFX1M intadd_5_U3 ( .A(intadd_1_SUM_0_), .B(intadd_5_B_1_), .CI(
        intadd_5_n3), .CO(intadd_5_n2), .S(intadd_5_SUM_1_) );
  ADDFX1M intadd_5_U2 ( .A(intadd_1_SUM_1_), .B(intadd_2_SUM_2_), .CI(
        intadd_5_n2), .CO(intadd_5_n1), .S(intadd_0_B_6_) );
  ADDFX1M intadd_6_U2 ( .A(intadd_5_SUM_1_), .B(intadd_2_SUM_1_), .CI(
        intadd_6_n2), .CO(intadd_6_n1), .S(intadd_0_A_5_) );
  ADDFX1M intadd_0_U7 ( .A(intadd_6_n1), .B(intadd_0_B_6_), .CI(intadd_0_n7), 
        .CO(intadd_0_n6), .S(intadd_0_SUM_6_) );
  ADDFX1M intadd_3_U2 ( .A(intadd_3_A_2_), .B(intadd_3_B_2_), .CI(intadd_3_n2), 
        .CO(intadd_3_n1), .S(intadd_0_A_10_) );
  ADDFX1M intadd_0_U4 ( .A(intadd_1_n1), .B(intadd_0_B_9_), .CI(intadd_0_n4), 
        .CO(intadd_0_n3), .S(intadd_0_SUM_9_) );
  ADDFX1M intadd_0_U3 ( .A(intadd_0_A_10_), .B(intadd_4_n1), .CI(intadd_0_n3), 
        .CO(intadd_0_n2), .S(intadd_0_SUM_10_) );
  ADDFX1M intadd_0_U6 ( .A(intadd_5_n1), .B(intadd_0_B_7_), .CI(intadd_0_n6), 
        .CO(intadd_0_n5), .S(intadd_0_SUM_7_) );
  ADDFX1M intadd_0_U9 ( .A(intadd_0_A_4_), .B(intadd_0_B_4_), .CI(intadd_0_n9), 
        .CO(intadd_0_n8), .S(intadd_0_SUM_4_) );
  ADDFX1M intadd_3_U4 ( .A(intadd_3_A_0_), .B(intadd_3_B_0_), .CI(intadd_3_CI), 
        .CO(intadd_3_n3), .S(intadd_3_SUM_0_) );
  ADDFX1M intadd_4_U4 ( .A(intadd_4_A_0_), .B(intadd_4_B_0_), .CI(intadd_4_CI), 
        .CO(intadd_4_n3), .S(intadd_1_A_2_) );
  ADDFX1M intadd_4_U3 ( .A(intadd_3_SUM_0_), .B(intadd_4_B_1_), .CI(
        intadd_4_n3), .CO(intadd_4_n2), .S(intadd_1_B_3_) );
  ADDFX1M intadd_1_U5 ( .A(intadd_1_A_0_), .B(intadd_1_B_0_), .CI(intadd_1_CI), 
        .CO(intadd_1_n4), .S(intadd_1_SUM_0_) );
  ADDFX1M intadd_1_U4 ( .A(intadd_1_A_1_), .B(intadd_1_B_1_), .CI(intadd_1_n4), 
        .CO(intadd_1_n3), .S(intadd_1_SUM_1_) );
  ADDFX1M intadd_2_U5 ( .A(intadd_2_A_0_), .B(intadd_2_B_0_), .CI(intadd_2_CI), 
        .CO(intadd_2_n4), .S(intadd_2_SUM_0_) );
  ADDFX1M intadd_2_U4 ( .A(intadd_2_A_1_), .B(intadd_2_B_1_), .CI(intadd_2_n4), 
        .CO(intadd_2_n3), .S(intadd_2_SUM_1_) );
  ADDFX1M intadd_5_U4 ( .A(intadd_5_A_0_), .B(intadd_5_B_0_), .CI(intadd_5_CI), 
        .CO(intadd_5_n3), .S(intadd_5_SUM_0_) );
  ADDFX1M intadd_6_U4 ( .A(intadd_6_A_0_), .B(intadd_6_B_0_), .CI(intadd_6_CI), 
        .CO(intadd_6_n3), .S(intadd_6_SUM_0_) );
  ADDFX1M intadd_6_U3 ( .A(intadd_6_A_1_), .B(intadd_6_B_1_), .CI(intadd_6_n3), 
        .CO(intadd_6_n2), .S(intadd_6_SUM_1_) );
  ADDFX1M intadd_0_U13 ( .A(intadd_0_A_0_), .B(intadd_0_B_0_), .CI(intadd_0_CI), .CO(intadd_0_n12), .S(intadd_0_SUM_0_) );
  ADDFX1M intadd_0_U12 ( .A(intadd_0_A_1_), .B(intadd_0_B_1_), .CI(
        intadd_0_n12), .CO(intadd_0_n11), .S(intadd_0_SUM_1_) );
  ADDFX1M intadd_0_U10 ( .A(intadd_0_A_3_), .B(intadd_0_B_3_), .CI(
        intadd_0_n10), .CO(intadd_0_n9), .S(intadd_0_SUM_3_) );
  ADDFX1M intadd_0_U5 ( .A(intadd_0_A_8_), .B(intadd_2_n1), .CI(intadd_0_n5), 
        .CO(intadd_0_n4), .S(intadd_0_SUM_8_) );
  ADDFX1M DP_OP_152J1_125_249_U21 ( .A(Operand_A[0]), .B(
        DP_OP_152J1_125_249_n43), .CI(DP_OP_152J1_125_249_n29), .CO(
        DP_OP_152J1_125_249_n16), .S(C25M_DATA15_0) );
  ADDFX1M DP_OP_152J1_125_249_U18 ( .A(DP_OP_152J1_125_249_n26), .B(
        Operand_A[3]), .CI(DP_OP_152J1_125_249_n14), .CO(
        DP_OP_152J1_125_249_n13), .S(C25M_DATA15_3) );
  ADDFX1M DP_OP_152J1_125_249_U15 ( .A(DP_OP_152J1_125_249_n23), .B(
        Operand_A[6]), .CI(DP_OP_152J1_125_249_n11), .CO(
        DP_OP_152J1_125_249_n10), .S(C25M_DATA15_6) );
  ADDFX1M intadd_3_U3 ( .A(intadd_3_A_1_), .B(intadd_3_B_1_), .CI(intadd_3_n3), 
        .CO(intadd_3_n2), .S(intadd_3_SUM_1_) );
  ADDFX1M intadd_4_U2 ( .A(intadd_4_A_2_), .B(intadd_3_SUM_1_), .CI(
        intadd_4_n2), .CO(intadd_4_n1), .S(intadd_0_B_9_) );
  MX2XLM U988 ( .A(SO[0]), .B(scan_rst), .S0(test_mode), .Y(SYNC_REF_SCAN_RST)
         );
  DFFRQX1M U0_UART_FIFO_u_w2r_sync_sync_reg_reg_0__1_ ( .D(
        U0_UART_FIFO_u_w2r_sync_sync_reg_0__0_), .CK(UART_TX_SCAN_CLK), .RN(
        n916), .Q(U0_UART_FIFO_w2r_ptr[0]) );
  MX2XLM U987 ( .A(RST_N), .B(scan_rst), .S0(test_mode), .Y(RSTN_SCAN_RST) );
  MX2XLM U984 ( .A(UART_CLK), .B(scan_clk), .S0(test_mode), .Y(UART_SCAN_CLK)
         );
  MX2XLM U989 ( .A(SYNC_UART_RST), .B(scan_rst), .S0(test_mode), .Y(
        SYNC_UART_SCAN_RST) );
  SDFFRHQX8M U0_UART_U0_UART_RX_U0_stp_chk_stp_err_reg ( .D(n682), .SI(
        parity_error), .SE(SE), .CK(UART_RX_SCAN_CLK), .RN(n917), .Q(
        framing_error) );
  SDFFRHQX8M U0_UART_U0_UART_TX_U0_mux_OUT_reg ( .D(
        U0_UART_U0_UART_TX_U0_mux_mux_out), .SI(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[2]), .SE(n1892), .CK(UART_TX_SCAN_CLK), .RN(n917), .Q(SO[1]) );
  DFFRQX1M U0_UART_FIFO_u_r2w_sync_sync_reg_reg_2__1_ ( .D(
        U0_UART_FIFO_u_r2w_sync_sync_reg_2__0_), .CK(REF_SCAN_CLK), .RN(n1832), 
        .Q(U0_UART_FIFO_r2w_ptr[2]) );
  DFFRQX1M U0_UART_FIFO_u_r2w_sync_sync_reg_reg_1__1_ ( .D(
        U0_UART_FIFO_u_r2w_sync_sync_reg_1__0_), .CK(REF_SCAN_CLK), .RN(n1832), 
        .Q(U0_UART_FIFO_r2w_ptr[1]) );
  DFFRQX1M U0_UART_FIFO_u_r2w_sync_sync_reg_reg_0__1_ ( .D(
        U0_UART_FIFO_u_r2w_sync_sync_reg_0__0_), .CK(REF_SCAN_CLK), .RN(n1832), 
        .Q(U0_UART_FIFO_r2w_ptr[0]) );
  DFFRQX1M U0_UART_FIFO_u_r2w_sync_sync_reg_reg_3__1_ ( .D(
        U0_UART_FIFO_u_r2w_sync_sync_reg_3__0_), .CK(REF_SCAN_CLK), .RN(n1832), 
        .Q(U0_UART_FIFO_r2w_ptr[3]) );
  DFFRQX1M U0_UART_FIFO_u_fifo_rd_gray_rd_ptr_reg_3_ ( .D(
        U0_UART_FIFO_u_fifo_rd_rd_ptr_3_), .CK(UART_TX_SCAN_CLK), .RN(n917), 
        .Q(U0_UART_FIFO_gray_rd_ptr[3]) );
  DFFRQX1M U0_PULSE_GEN_rcv_flop_reg ( .D(UART_TX_Busy), .CK(UART_TX_SCAN_CLK), 
        .RN(n916), .Q(U0_PULSE_GEN_rcv_flop) );
  DFFRQX1M U0_PULSE_GEN_pls_flop_reg ( .D(U0_PULSE_GEN_rcv_flop), .CK(
        UART_TX_SCAN_CLK), .RN(n915), .Q(U0_PULSE_GEN_pls_flop) );
  DFFRQX1M U0_ref_sync_sync_reg_reg_1_ ( .D(U0_ref_sync_sync_reg[0]), .CK(
        REF_SCAN_CLK), .RN(n1832), .Q(U0_ref_sync_sync_reg[1]) );
  DFFRQX1M U0_ref_sync_enable_flop_reg ( .D(U0_ref_sync_sync_reg[1]), .CK(
        REF_SCAN_CLK), .RN(n1832), .Q(U0_ref_sync_enable_flop) );
  DFFRQX1M U0_UART_FIFO_u_w2r_sync_sync_reg_reg_3__1_ ( .D(
        U0_UART_FIFO_u_w2r_sync_sync_reg_3__0_), .CK(UART_TX_SCAN_CLK), .RN(
        n915), .Q(U0_UART_FIFO_w2r_ptr[3]) );
  DFFRQX1M U0_UART_FIFO_u_fifo_wr_gray_w_ptr_reg_3_ ( .D(
        U0_UART_FIFO_u_fifo_wr_N92), .CK(REF_SCAN_CLK), .RN(n1832), .Q(
        U0_UART_FIFO_gray_w_ptr[3]) );
  DFFRQX1M U0_UART_FIFO_u_w2r_sync_sync_reg_reg_2__1_ ( .D(
        U0_UART_FIFO_u_w2r_sync_sync_reg_2__0_), .CK(UART_TX_SCAN_CLK), .RN(
        n916), .Q(U0_UART_FIFO_w2r_ptr[2]) );
  DFFRQX1M U0_UART_FIFO_u_w2r_sync_sync_reg_reg_1__1_ ( .D(
        U0_UART_FIFO_u_w2r_sync_sync_reg_1__0_), .CK(UART_TX_SCAN_CLK), .RN(
        n917), .Q(U0_UART_FIFO_w2r_ptr[1]) );
  SDFFRQX1M U0_UART_U0_UART_RX_U0_par_chk_par_err_reg ( .D(n674), .SI(n1695), 
        .SE(n1870), .CK(UART_RX_SCAN_CLK), .RN(n916), .Q(n1855) );
  NOR3X1M U990 ( .A(U0_UART_FIFO_w_addr[2]), .B(n1766), .C(n1746), .Y(n1755)
         );
  NOR3X1M U991 ( .A(U0_UART_FIFO_w_addr[2]), .B(U0_UART_FIFO_w_addr[1]), .C(
        n1746), .Y(n1757) );
  INVXLM U992 ( .A(SYNC_UART_SCAN_RST), .Y(n914) );
  CLKINVX2M U993 ( .A(n914), .Y(n915) );
  CLKINVX2M U994 ( .A(n914), .Y(n916) );
  INVX2M U995 ( .A(n914), .Y(n917) );
  NOR3X1M U998 ( .A(U0_UART_FIFO_w_addr[1]), .B(n1765), .C(n1746), .Y(n1754)
         );
  NOR2XLM U999 ( .A(DP_OP_152J1_125_249_n9), .B(n1105), .Y(n920) );
  OAI21XLM U1000 ( .A0(n1009), .A1(n1704), .B0(n1685), .Y(n1003) );
  OAI21XLM U1001 ( .A0(n1063), .A1(n1043), .B0(n1044), .Y(n1042) );
  AOI222XLM U1002 ( .A0(n1046), .A1(n1093), .B0(n1046), .B1(n1604), .C0(n1093), 
        .C1(n1604), .Y(n1047) );
  AOI21XLM U1003 ( .A0(n1529), .A1(n1068), .B0(n1067), .Y(n1070) );
  INVXLM U1004 ( .A(n1029), .Y(n1033) );
  OAI22XLM U1005 ( .A0(n1530), .A1(n1529), .B0(n1528), .B1(n1527), .Y(n1532)
         );
  AOI21XLM U1006 ( .A0(n1498), .A1(n954), .B0(n955), .Y(n953) );
  OAI21XLM U1007 ( .A0(n1533), .A1(n1532), .B0(n1531), .Y(n1535) );
  AOI222XLM U1008 ( .A0(Operand_B[4]), .A1(n1052), .B0(Operand_B[4]), .B1(
        n1051), .C0(n1052), .C1(n1051), .Y(n1053) );
  OAI22XLM U1009 ( .A0(Operand_B[0]), .A1(n1556), .B0(n1698), .B1(n1555), .Y(
        n1557) );
  AOI31XLM U1010 ( .A0(n1060), .A1(n1059), .A2(n1058), .B0(n1057), .Y(n1061)
         );
  OAI22XLM U1011 ( .A0(intadd_5_CI), .A1(n1570), .B0(n1683), .B1(n1553), .Y(
        n1502) );
  NOR2BXLM U1012 ( .AN(n996), .B(n1476), .Y(n1065) );
  NOR2XLM U1013 ( .A(n1117), .B(n1703), .Y(intadd_4_CI) );
  NOR2XLM U1014 ( .A(n1601), .B(n1703), .Y(intadd_5_CI) );
  NOR2XLM U1015 ( .A(n947), .B(Operand_B[2]), .Y(n1512) );
  AOI22XLM U1016 ( .A0(n1559), .A1(intadd_5_CI), .B0(n1525), .B1(n1505), .Y(
        n1504) );
  NAND2XLM U1017 ( .A(n1561), .B(n1560), .Y(n1562) );
  NOR3XLM U1018 ( .A(n1840), .B(n1080), .C(n1095), .Y(n1563) );
  NOR2XLM U1019 ( .A(n1605), .B(n1684), .Y(n1576) );
  NOR2XLM U1020 ( .A(n1117), .B(n1685), .Y(intadd_1_B_1_) );
  NAND2XLM U1021 ( .A(n1534), .B(n1493), .Y(n1494) );
  NOR2XLM U1022 ( .A(n1700), .B(n1685), .Y(n1656) );
  INVXLM U1023 ( .A(n1845), .Y(n1343) );
  NOR2XLM U1024 ( .A(n1723), .B(n1715), .Y(n1432) );
  AOI22XLM U1025 ( .A0(UART_Config[1]), .A1(UART_RX_OUT[7]), .B0(n1629), .B1(
        n1640), .Y(n1451) );
  AOI22XLM U1026 ( .A0(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[33]), .A1(n1170), .B0(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[17]), .B1(n1169), .Y(n1163) );
  NOR2BXLM U1027 ( .AN(n938), .B(n1078), .Y(n939) );
  INVXLM U1028 ( .A(DP_OP_152J1_125_249_n43), .Y(n1105) );
  AOI222XLM U1029 ( .A0(n1494), .A1(n1526), .B0(n1546), .B1(intadd_0_SUM_3_), 
        .C0(n1568), .C1(C25M_DATA15_5), .Y(n1495) );
  AOI21XLM U1030 ( .A0(n1551), .A1(n1476), .B0(n1475), .Y(n1477) );
  NAND2XLM U1031 ( .A(n1641), .B(n1649), .Y(n1263) );
  INVXLM U1032 ( .A(n1261), .Y(n1802) );
  AOI22XLM U1033 ( .A0(n1432), .A1(U0_RegFile_regArr_10__6_), .B0(n1431), .B1(
        U0_RegFile_regArr_11__6_), .Y(n1379) );
  AOI22XLM U1034 ( .A0(n1434), .A1(U0_RegFile_regArr_12__4_), .B0(n1433), .B1(
        U0_RegFile_regArr_13__4_), .Y(n1389) );
  AOI22XLM U1035 ( .A0(n1436), .A1(U0_RegFile_regArr_14__2_), .B0(n1435), .B1(
        U0_RegFile_regArr_15__2_), .Y(n1410) );
  AOI22XLM U1036 ( .A0(U0_RegFile_regArr_14__0_), .A1(n1436), .B0(
        U0_RegFile_regArr_15__0_), .B1(n1435), .Y(n1437) );
  INVXLM U1037 ( .A(n1093), .Y(n1094) );
  OAI211XLM U1038 ( .A0(n1174), .A1(n1302), .B0(n1163), .C0(n1162), .Y(n1164)
         );
  OAI211XLM U1039 ( .A0(n1174), .A1(n1301), .B0(n1153), .C0(n1152), .Y(n1154)
         );
  OAI22XLM U1040 ( .A0(n1461), .A1(n1554), .B0(n1577), .B1(n1570), .Y(n1465)
         );
  NOR2XLM U1041 ( .A(n1103), .B(n1085), .Y(n1544) );
  NAND2XLM U1042 ( .A(n1844), .B(n1336), .Y(n1721) );
  NAND2XLM U1043 ( .A(n1802), .B(n1791), .Y(n1273) );
  NAND4XLM U1044 ( .A(n1347), .B(n1346), .C(n1345), .D(n1344), .Y(n1348) );
  NAND2XLM U1045 ( .A(n926), .B(n925), .Y(n933) );
  OAI21XLM U1046 ( .A0(n1283), .A1(n1293), .B0(n1282), .Y(n1342) );
  INVXLM U1047 ( .A(ALU_EN), .Y(n1779) );
  AOI211XLM U1048 ( .A0(n1454), .A1(n1453), .B0(n1456), .C0(n1452), .Y(n1455)
         );
  INVXLM U1049 ( .A(n1635), .Y(n1638) );
  INVXLM U1050 ( .A(n1699), .Y(n1571) );
  OAI31XLM U1051 ( .A0(n1166), .A1(n1165), .A2(n1164), .B0(n1179), .Y(n1202)
         );
  INVXLM U1052 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[55]), .Y(n1300) );
  INVXLM U1053 ( .A(n1260), .Y(n1258) );
  INVXLM U1054 ( .A(n1256), .Y(n1254) );
  INVXLM U1055 ( .A(n1328), .Y(n1330) );
  NOR2XLM U1056 ( .A(n1665), .B(n1663), .Y(n1760) );
  AOI21XLM U1057 ( .A0(n1546), .A1(intadd_0_SUM_2_), .B0(n1489), .Y(n1490) );
  NAND2XLM U1058 ( .A(n1711), .B(n1813), .Y(n1235) );
  NAND2XLM U1059 ( .A(U0_UART_U0_UART_RX_edge_count[3]), .B(n1692), .Y(n1625)
         );
  NOR3XLM U1060 ( .A(n1740), .B(n1741), .C(n1737), .Y(n1742) );
  OAI32XLM U1061 ( .A0(n1673), .A1(n1404), .A2(n1403), .B0(RF_RdData[7]), .B1(
        n1441), .Y(n1405) );
  INVXLM U1062 ( .A(n1100), .Y(n1825) );
  OAI22XLM U1063 ( .A0(n1624), .A1(n1710), .B0(n1623), .B1(n1622), .Y(n670) );
  OAI31XLM U1064 ( .A0(n1621), .A1(U0_UART_FIFO_u_fifo_rd_rd_ptr_3_), .A2(
        n1622), .B0(n1620), .Y(n669) );
  AOI22XLM U1065 ( .A0(n1638), .A1(n1631), .B0(n1637), .B1(n1635), .Y(n686) );
  AOI22XLM U1066 ( .A0(n1260), .A1(n1747), .B0(n1245), .B1(n1258), .Y(n750) );
  NAND2XLM U1067 ( .A(n1189), .B(n1188), .Y(n877) );
  AOI22XLM U1068 ( .A0(n1310), .A1(n1756), .B0(n1300), .B1(n1308), .Y(n699) );
  AOI22XLM U1069 ( .A0(n1260), .A1(n1752), .B0(n1259), .B1(n1258), .Y(n710) );
  AOI22XLM U1070 ( .A0(n1256), .A1(n1749), .B0(n1246), .B1(n1254), .Y(n738) );
  NAND2XLM U1071 ( .A(n1663), .B(n1759), .Y(
        U0_UART_U0_UART_TX_U0_fsm_next_state[1]) );
  OAI2B11XLM U1072 ( .A1N(n920), .A0(n1115), .B0(n1114), .C0(n1102), .Y(
        U0_ALU_ALU_OUT_Comb[15]) );
  OAI2B11XLM U1073 ( .A1N(n1501), .A0(n1554), .B0(n1500), .C0(n1499), .Y(
        U0_ALU_ALU_OUT_Comb[5]) );
  AOI22XLM U1074 ( .A0(n1644), .A1(n1849), .B0(n1791), .B1(n1642), .Y(n843) );
  AOI22XLM U1075 ( .A0(n1644), .A1(n1850), .B0(n1641), .B1(n1642), .Y(n827) );
  AOI22XLM U1076 ( .A0(n1644), .A1(n1851), .B0(n1649), .B1(n1642), .Y(n811) );
  AOI22XLM U1077 ( .A0(n1644), .A1(n1852), .B0(n1648), .B1(n1642), .Y(n795) );
  OAI21XLM U1078 ( .A0(n1299), .A1(n1854), .B0(n1285), .Y(n758) );
  INVXLM U1079 ( .A(n1618), .Y(U0_ref_sync_enable_pulse) );
  AOI21XLM U1080 ( .A0(n1334), .A1(n1333), .B0(n1813), .Y(
        U0_UART_U0_UART_RX_U0_uart_fsm_next_state[2]) );
  INVXLM U1081 ( .A(n1372), .Y(n909) );
  INVXLM U1092 ( .A(U0_SYS_CTRL_state_reg[0]), .Y(n1770) );
  INVXLM U1093 ( .A(U0_SYS_CTRL_state_reg[2]), .Y(n1774) );
  NAND2XLM U1094 ( .A(U0_SYS_CTRL_state_reg[3]), .B(n1774), .Y(n1208) );
  NOR3XLM U1095 ( .A(U0_SYS_CTRL_state_reg[1]), .B(n1770), .C(n1208), .Y(
        ALU_EN) );
  INVXLM U1096 ( .A(U0_SYS_CTRL_state_reg[1]), .Y(n1776) );
  NAND3XLM U1097 ( .A(n1776), .B(n1774), .C(n1770), .Y(n1275) );
  INVXLM U1098 ( .A(n1275), .Y(n927) );
  NAND2XLM U1099 ( .A(U0_SYS_CTRL_state_reg[3]), .B(n927), .Y(n1207) );
  INVXLM U1100 ( .A(UART_RX_SYNC[1]), .Y(n1295) );
  NAND2XLM U1101 ( .A(ALU_EN), .B(U0_SYS_CTRL_ALU_FUN_reg[1]), .Y(n1080) );
  OAI21XLM U1102 ( .A0(n1207), .A1(n1295), .B0(n1080), .Y(n1100) );
  NOR2XLM U1109 ( .A(n1776), .B(n1770), .Y(n1277) );
  NOR4XLM U1110 ( .A(U0_SYS_CTRL_state_reg[3]), .B(n1776), .C(n1774), .D(n1770), .Y(n1669) );
  INVXLM U1111 ( .A(UART_RX_SYNC[3]), .Y(n1286) );
  INVXLM U1112 ( .A(UART_RX_V_SYNC), .Y(n1668) );
  INVXLM U1113 ( .A(UART_RX_SYNC[7]), .Y(n1616) );
  NOR3XLM U1114 ( .A(n1286), .B(n1668), .C(n1616), .Y(n1206) );
  INVXLM U1115 ( .A(U0_SYS_CTRL_state_reg[3]), .Y(n1773) );
  NAND3XLM U1116 ( .A(n1773), .B(n1770), .C(U0_SYS_CTRL_state_reg[2]), .Y(
        n1671) );
  INVXLM U1117 ( .A(n1671), .Y(n1274) );
  INVXLM U1118 ( .A(U0_UART_FIFO_gray_w_ptr[0]), .Y(n923) );
  INVXLM U1119 ( .A(U0_UART_FIFO_gray_w_ptr[1]), .Y(n922) );
  OAI22XLM U1120 ( .A0(n923), .A1(U0_UART_FIFO_r2w_ptr[0]), .B0(n922), .B1(
        U0_UART_FIFO_r2w_ptr[1]), .Y(n921) );
  AOI221XLM U1121 ( .A0(n923), .A1(U0_UART_FIFO_r2w_ptr[0]), .B0(
        U0_UART_FIFO_r2w_ptr[1]), .B1(n922), .C0(n921), .Y(n926) );
  OAI22XLM U1122 ( .A0(U0_UART_FIFO_gray_w_ptr[2]), .A1(
        U0_UART_FIFO_r2w_ptr[2]), .B0(U0_UART_FIFO_gray_w_ptr[3]), .B1(
        U0_UART_FIFO_r2w_ptr[3]), .Y(n924) );
  AOI221XLM U1123 ( .A0(U0_UART_FIFO_gray_w_ptr[2]), .A1(
        U0_UART_FIFO_r2w_ptr[2]), .B0(U0_UART_FIFO_r2w_ptr[3]), .B1(
        U0_UART_FIFO_gray_w_ptr[3]), .C0(n924), .Y(n925) );
  AND2X1M U1124 ( .A(RF_RdData_VLD), .B(n933), .Y(n1769) );
  OAI2BB1XLM U1125 ( .A0N(n1274), .A1N(n1769), .B0(n1208), .Y(n1213) );
  NOR2XLM U1126 ( .A(U0_SYS_CTRL_state_reg[3]), .B(n1774), .Y(n1281) );
  NOR3BXLM U1127 ( .AN(n1281), .B(U0_SYS_CTRL_state_reg[1]), .C(n1770), .Y(
        n1297) );
  AOI211XLM U1128 ( .A0(U0_SYS_CTRL_state_reg[1]), .A1(n1213), .B0(n1297), 
        .C0(n927), .Y(n929) );
  INVXLM U1129 ( .A(UART_RX_SYNC[6]), .Y(n1619) );
  INVXLM U1130 ( .A(UART_RX_SYNC[0]), .Y(n1293) );
  INVXLM U1131 ( .A(UART_RX_SYNC[5]), .Y(n1617) );
  NAND4XLM U1132 ( .A(UART_RX_SYNC[2]), .B(UART_RX_SYNC[4]), .C(n1295), .D(
        n1617), .Y(n928) );
  NOR4XLM U1133 ( .A(n929), .B(n1619), .C(n1293), .D(n928), .Y(n930) );
  AOI22XLM U1134 ( .A0(n1669), .A1(UART_RX_V_SYNC), .B0(n1206), .B1(n930), .Y(
        n931) );
  OAI21XLM U1135 ( .A0(n1277), .A1(n1208), .B0(n931), .Y(
        U0_SYS_CTRL_state_next[3]) );
  INVXLM U1136 ( .A(U0_UART_FIFO_w_addr[1]), .Y(n1766) );
  NOR2XLM U1137 ( .A(n1776), .B(n1671), .Y(n1441) );
  NOR2XLM U1138 ( .A(n1776), .B(n1208), .Y(n932) );
  AOI32XLM U1139 ( .A0(n1441), .A1(n933), .A2(RF_RdData_VLD), .B0(n932), .B1(
        n933), .Y(n1674) );
  NAND2BXLM U1140 ( .AN(n1674), .B(U0_UART_FIFO_w_addr[0]), .Y(n1241) );
  NOR2XLM U1141 ( .A(n1766), .B(n1241), .Y(n1306) );
  AOI21XLM U1142 ( .A0(n1766), .A1(n1241), .B0(n1306), .Y(n885) );
  INVXLM U1143 ( .A(U0_UART_FIFO_w_addr[2]), .Y(n1765) );
  NAND2XLM U1144 ( .A(n1765), .B(n1306), .Y(n1318) );
  OAI21XLM U1145 ( .A0(n1306), .A1(n1765), .B0(n1318), .Y(n884) );
  NAND3XLM U1146 ( .A(U0_UART_U0_UART_RX_U0_uart_fsm_current_state[0]), .B(
        U0_UART_U0_UART_RX_U0_uart_fsm_current_state[1]), .C(
        U0_UART_U0_UART_RX_U0_uart_fsm_current_state[2]), .Y(n934) );
  NOR3XLM U1147 ( .A(parity_error), .B(framing_error), .C(n934), .Y(
        UART_RX_V_OUT) );
  CLKBUFX2M U1148 ( .A(SYNC_REF_SCAN_RST), .Y(n1839) );
  CLKBUFX2M U1149 ( .A(n1839), .Y(n1838) );
  CLKBUFX2M U1150 ( .A(SYNC_REF_SCAN_RST), .Y(n1835) );
  CLKBUFX2M U1151 ( .A(SYNC_REF_SCAN_RST), .Y(n1834) );
  CLKBUFX2M U1152 ( .A(n1839), .Y(n1833) );
  CLKBUFX2M U1153 ( .A(SYNC_REF_SCAN_RST), .Y(n1832) );
  CLKBUFX2M U1154 ( .A(SYNC_REF_SCAN_RST), .Y(n1836) );
  CLKBUFX2M U1155 ( .A(SYNC_REF_SCAN_RST), .Y(n1837) );
  NAND2BXLM U1156 ( .AN(test_mode), .B(n1208), .Y(n_1_net_) );
  NOR2XLM U1157 ( .A(n1207), .B(n1293), .Y(n935) );
  AOI21XLM U1158 ( .A0(ALU_EN), .A1(U0_SYS_CTRL_ALU_FUN_reg[0]), .B0(n935), 
        .Y(n1841) );
  NOR2XLM U1159 ( .A(n1207), .B(n1286), .Y(n936) );
  AOI21XLM U1160 ( .A0(ALU_EN), .A1(U0_SYS_CTRL_ALU_FUN_reg[3]), .B0(n936), 
        .Y(n1840) );
  INVXLM U1161 ( .A(UART_RX_SYNC[2]), .Y(n1290) );
  NAND2XLM U1162 ( .A(ALU_EN), .B(U0_SYS_CTRL_ALU_FUN_reg[2]), .Y(n937) );
  OAI21XLM U1163 ( .A0(n1207), .A1(n1290), .B0(n937), .Y(n1095) );
  INVXLM U1164 ( .A(n1095), .Y(n1842) );
  INVXLM U1165 ( .A(n1080), .Y(n1096) );
  NAND3XLM U1166 ( .A(n1095), .B(n1096), .C(n1840), .Y(n938) );
  NAND2XLM U1167 ( .A(U0_SYS_CTRL_ALU_FUN_reg[3]), .B(n1842), .Y(n1082) );
  NOR2XLM U1168 ( .A(n1779), .B(n1100), .Y(n943) );
  INVXLM U1169 ( .A(n943), .Y(n1092) );
  NOR2XLM U1170 ( .A(n1082), .B(n1092), .Y(n1078) );
  NOR2XLM U1171 ( .A(n1841), .B(n939), .Y(n1525) );
  INVXLM U1172 ( .A(n1525), .Y(n1516) );
  NOR3XLM U1173 ( .A(Operand_A[0]), .B(Operand_B[0]), .C(n1516), .Y(n1091) );
  INVXLM U1174 ( .A(Operand_A[4]), .Y(n1683) );
  INVXLM U1175 ( .A(Operand_A[3]), .Y(n1703) );
  NOR2XLM U1176 ( .A(n1703), .B(Operand_B[3]), .Y(n1533) );
  INVXLM U1177 ( .A(n1533), .Y(n940) );
  INVXLM U1178 ( .A(Operand_B[5]), .Y(n1653) );
  NAND2XLM U1179 ( .A(Operand_A[5]), .B(n1653), .Y(n1534) );
  OAI211XLM U1180 ( .A0(Operand_B[4]), .A1(n1683), .B0(n940), .C0(n1534), .Y(
        n1069) );
  INVXLM U1181 ( .A(Operand_A[7]), .Y(n1682) );
  INVXLM U1182 ( .A(Operand_B[7]), .Y(n1605) );
  AOI22XLM U1183 ( .A0(Operand_B[7]), .A1(n1682), .B0(Operand_A[7]), .B1(n1605), .Y(n1511) );
  INVXLM U1184 ( .A(Operand_A[6]), .Y(n1706) );
  INVXLM U1185 ( .A(Operand_B[6]), .Y(n1117) );
  AOI22XLM U1186 ( .A0(Operand_B[6]), .A1(n1706), .B0(Operand_A[6]), .B1(n1117), .Y(n1469) );
  NAND4BXLM U1187 ( .AN(n1069), .B(n1563), .C(n1511), .D(n1469), .Y(n942) );
  INVXLM U1188 ( .A(Operand_B[0]), .Y(n1704) );
  INVXLM U1189 ( .A(Operand_B[1]), .Y(n1604) );
  AOI22XLM U1190 ( .A0(Operand_A[0]), .A1(n1704), .B0(Operand_A[1]), .B1(n1604), .Y(n1528) );
  INVXLM U1191 ( .A(Operand_A[5]), .Y(n1684) );
  NAND2XLM U1192 ( .A(Operand_B[5]), .B(n1684), .Y(n1493) );
  INVXLM U1193 ( .A(n1493), .Y(n1537) );
  AOI21XLM U1194 ( .A0(Operand_B[4]), .A1(n1683), .B0(n1537), .Y(n1531) );
  INVXLM U1195 ( .A(Operand_A[0]), .Y(n1698) );
  NAND2XLM U1196 ( .A(Operand_B[0]), .B(n1698), .Y(n1093) );
  INVXLM U1197 ( .A(Operand_B[2]), .Y(n1700) );
  NAND2XLM U1198 ( .A(Operand_A[2]), .B(n1700), .Y(n1529) );
  NAND4XLM U1199 ( .A(n1528), .B(n1531), .C(n1093), .D(n1529), .Y(n941) );
  INVXLM U1200 ( .A(Operand_A[1]), .Y(n1686) );
  INVXLM U1201 ( .A(Operand_B[3]), .Y(n1601) );
  OAI22XLM U1202 ( .A0(Operand_A[2]), .A1(n1700), .B0(Operand_A[3]), .B1(n1601), .Y(n1067) );
  AOI21XLM U1203 ( .A0(Operand_B[1]), .A1(n1686), .B0(n1067), .Y(n1071) );
  INVXLM U1204 ( .A(n1071), .Y(n1527) );
  INVXLM U1205 ( .A(n1841), .Y(n1083) );
  NOR4XLM U1206 ( .A(n942), .B(n941), .C(n1527), .D(n1083), .Y(n1090) );
  INVXLM U1207 ( .A(n1840), .Y(n1103) );
  NAND3XLM U1208 ( .A(U0_SYS_CTRL_ALU_FUN_reg[2]), .B(n943), .C(n1083), .Y(
        n1085) );
  INVXLM U1209 ( .A(n1544), .Y(n1554) );
  NAND3XLM U1210 ( .A(n1605), .B(n1653), .C(n1117), .Y(n975) );
  NOR2XLM U1211 ( .A(Operand_B[4]), .B(n975), .Y(n957) );
  NAND2XLM U1212 ( .A(n1601), .B(n957), .Y(n947) );
  AOI21BXLM U1213 ( .A0(n1706), .A1(Operand_B[0]), .B0N(n1512), .Y(n945) );
  AOI211XLM U1214 ( .A0(n1604), .A1(n1512), .B0(n1682), .C0(n945), .Y(n944) );
  INVXLM U1215 ( .A(n944), .Y(n949) );
  NOR2XLM U1216 ( .A(Operand_A[5]), .B(n1704), .Y(n952) );
  OAI21XLM U1217 ( .A0(Operand_A[7]), .A1(n1604), .B0(n945), .Y(n1460) );
  OAI21XLM U1218 ( .A0(n1704), .A1(n1460), .B0(Operand_A[6]), .Y(n955) );
  AOI222XLM U1219 ( .A0(Operand_B[1]), .A1(n952), .B0(Operand_B[1]), .B1(n955), 
        .C0(n952), .C1(n955), .Y(n946) );
  OAI21XLM U1220 ( .A0(Operand_A[7]), .A1(n1700), .B0(n946), .Y(n948) );
  AOI221XLM U1221 ( .A0(Operand_B[2]), .A1(n948), .B0(n949), .B1(n948), .C0(
        n947), .Y(n1498) );
  NOR2XLM U1222 ( .A(n949), .B(n1498), .Y(n974) );
  NAND2XLM U1223 ( .A(Operand_B[0]), .B(n1683), .Y(n960) );
  AOI21XLM U1224 ( .A0(n1498), .A1(Operand_B[0]), .B0(Operand_A[5]), .Y(n950)
         );
  AOI31XLM U1225 ( .A0(n1498), .A1(Operand_A[5]), .A2(Operand_B[0]), .B0(n950), 
        .Y(n959) );
  NAND3XLM U1226 ( .A(Operand_B[1]), .B(Operand_B[0]), .C(n1683), .Y(n951) );
  AOI22XLM U1227 ( .A0(n1604), .A1(n960), .B0(n959), .B1(n951), .Y(n966) );
  AOI2BB2XLM U1228 ( .B0(Operand_B[1]), .B1(n952), .A0N(n952), .A1N(
        Operand_B[1]), .Y(n954) );
  AOI31XLM U1229 ( .A0(n1498), .A1(n955), .A2(n954), .B0(n953), .Y(n971) );
  AOI222XLM U1230 ( .A0(Operand_B[2]), .A1(n966), .B0(Operand_B[2]), .B1(n971), 
        .C0(n966), .C1(n971), .Y(n958) );
  AO21XLM U1231 ( .A0(n974), .A1(n958), .B0(n1601), .Y(n956) );
  OAI211XLM U1232 ( .A0(n974), .A1(n958), .B0(n957), .C0(n956), .Y(n967) );
  NAND2XLM U1233 ( .A(n974), .B(n967), .Y(n977) );
  INVXLM U1234 ( .A(Operand_B[4]), .Y(n1651) );
  INVXLM U1235 ( .A(n959), .Y(n963) );
  AOI32XLM U1236 ( .A0(Operand_B[0]), .A1(n1604), .A2(n1683), .B0(Operand_B[1]), .B1(n960), .Y(n962) );
  OAI21XLM U1237 ( .A0(n967), .A1(n962), .B0(n963), .Y(n961) );
  OAI31XLM U1238 ( .A0(n967), .A1(n963), .A2(n962), .B0(n961), .Y(n980) );
  INVXLM U1239 ( .A(n967), .Y(n1487) );
  AOI21XLM U1240 ( .A0(Operand_B[0]), .A1(n1487), .B0(Operand_A[4]), .Y(n964)
         );
  AOI31XLM U1241 ( .A0(Operand_B[0]), .A1(Operand_A[4]), .A2(n1487), .B0(n964), 
        .Y(n986) );
  NAND3XLM U1242 ( .A(Operand_B[1]), .B(Operand_B[0]), .C(n1703), .Y(n965) );
  NOR2XLM U1243 ( .A(Operand_A[3]), .B(n1704), .Y(n983) );
  AOI2BB2XLM U1244 ( .B0(n986), .B1(n965), .A0N(Operand_B[1]), .A1N(n983), .Y(
        n978) );
  NAND2XLM U1245 ( .A(Operand_B[2]), .B(n966), .Y(n972) );
  NOR2XLM U1246 ( .A(Operand_B[2]), .B(n966), .Y(n968) );
  NOR2XLM U1247 ( .A(n968), .B(n967), .Y(n970) );
  AOI21XLM U1248 ( .A0(n972), .A1(n970), .B0(n971), .Y(n969) );
  AOI31XLM U1249 ( .A0(n972), .A1(n971), .A2(n970), .B0(n969), .Y(n992) );
  AOI222XLM U1250 ( .A0(Operand_B[3]), .A1(n989), .B0(Operand_B[3]), .B1(n992), 
        .C0(n989), .C1(n992), .Y(n973) );
  OAI21XLM U1251 ( .A0(n974), .A1(n1651), .B0(n973), .Y(n976) );
  AOI221XLM U1252 ( .A0(Operand_B[4]), .A1(n976), .B0(n977), .B1(n976), .C0(
        n975), .Y(n1507) );
  NOR2XLM U1253 ( .A(n977), .B(n1507), .Y(n996) );
  MXI2XLM U1255 ( .A(n980), .B(n979), .S0(n1507), .Y(n1019) );
  INVXLM U1256 ( .A(Operand_A[2]), .Y(n1685) );
  AOI21XLM U1257 ( .A0(Operand_B[0]), .A1(n1685), .B0(Operand_B[1]), .Y(n982)
         );
  AOI21XLM U1258 ( .A0(n1507), .A1(Operand_B[0]), .B0(Operand_A[3]), .Y(n981)
         );
  AOI31XLM U1259 ( .A0(n1507), .A1(Operand_A[3]), .A2(Operand_B[0]), .B0(n981), 
        .Y(n1008) );
  NOR2XLM U1260 ( .A(n1704), .B(Operand_A[2]), .Y(n1005) );
  OAI2BB2XLM U1261 ( .B0(n982), .B1(n1008), .A0N(Operand_B[1]), .A1N(n1005), 
        .Y(n987) );
  NOR2XLM U1262 ( .A(Operand_B[2]), .B(n987), .Y(n1010) );
  OAI32XLM U1263 ( .A0(Operand_B[1]), .A1(Operand_A[3]), .A2(n1704), .B0(n983), 
        .B1(n1604), .Y(n985) );
  AOI21XLM U1264 ( .A0(n1507), .A1(n985), .B0(n986), .Y(n984) );
  AOI31XLM U1265 ( .A0(n1507), .A1(n986), .A2(n985), .B0(n984), .Y(n1013) );
  NAND2XLM U1266 ( .A(Operand_B[2]), .B(n987), .Y(n1014) );
  OAI21XLM U1267 ( .A0(n1010), .A1(n1013), .B0(n1014), .Y(n988) );
  NOR2XLM U1268 ( .A(Operand_B[3]), .B(n988), .Y(n1020) );
  NAND2XLM U1269 ( .A(Operand_B[3]), .B(n988), .Y(n1016) );
  OAI21XLM U1270 ( .A0(n1019), .A1(n1020), .B0(n1016), .Y(n997) );
  AOI2BB2XLM U1271 ( .B0(Operand_B[3]), .B1(n989), .A0N(n989), .A1N(
        Operand_B[3]), .Y(n991) );
  AOI21XLM U1272 ( .A0(n1507), .A1(n991), .B0(n992), .Y(n990) );
  AOI31XLM U1273 ( .A0(n1507), .A1(n992), .A2(n991), .B0(n990), .Y(n1001) );
  AOI222XLM U1274 ( .A0(Operand_B[4]), .A1(n997), .B0(Operand_B[4]), .B1(n1001), .C0(n997), .C1(n1001), .Y(n995) );
  NOR2XLM U1275 ( .A(Operand_B[7]), .B(Operand_B[6]), .Y(n994) );
  AO21XLM U1276 ( .A0(n996), .A1(n995), .B0(n1653), .Y(n993) );
  OAI211XLM U1277 ( .A0(n996), .A1(n995), .B0(n994), .C0(n993), .Y(n1009) );
  INVXLM U1278 ( .A(n1009), .Y(n1476) );
  NAND2XLM U1279 ( .A(Operand_B[4]), .B(n997), .Y(n1002) );
  NOR2XLM U1280 ( .A(Operand_B[4]), .B(n997), .Y(n998) );
  NOR2XLM U1281 ( .A(n998), .B(n1009), .Y(n1000) );
  AOI21XLM U1282 ( .A0(n1002), .A1(n1000), .B0(n1001), .Y(n999) );
  AOI31XLM U1283 ( .A0(n1002), .A1(n1001), .A2(n1000), .B0(n999), .Y(n1059) );
  NOR2XLM U1284 ( .A(Operand_A[1]), .B(n1704), .Y(n1041) );
  OAI31XLM U1285 ( .A0(n1009), .A1(n1685), .A2(n1704), .B0(n1003), .Y(n1044)
         );
  OAI21XLM U1286 ( .A0(Operand_A[1]), .A1(n1704), .B0(n1604), .Y(n1004) );
  AOI22XLM U1287 ( .A0(Operand_B[1]), .A1(n1041), .B0(n1044), .B1(n1004), .Y(
        n1035) );
  OAI32XLM U1288 ( .A0(n1604), .A1(Operand_A[2]), .A2(n1704), .B0(Operand_B[1]), .B1(n1005), .Y(n1007) );
  OAI21XLM U1289 ( .A0(n1009), .A1(n1007), .B0(n1008), .Y(n1006) );
  OAI31XLM U1290 ( .A0(n1009), .A1(n1008), .A2(n1007), .B0(n1006), .Y(n1039)
         );
  AOI222XLM U1291 ( .A0(n1035), .A1(n1700), .B0(n1035), .B1(n1039), .C0(n1700), 
        .C1(n1039), .Y(n1015) );
  NOR2XLM U1292 ( .A(Operand_B[3]), .B(n1015), .Y(n1034) );
  NOR2XLM U1293 ( .A(n1010), .B(n1009), .Y(n1012) );
  AOI21XLM U1294 ( .A0(n1014), .A1(n1012), .B0(n1013), .Y(n1011) );
  AOI31XLM U1295 ( .A0(n1014), .A1(n1013), .A2(n1012), .B0(n1011), .Y(n1029)
         );
  NAND2XLM U1296 ( .A(Operand_B[3]), .B(n1015), .Y(n1030) );
  OAI21XLM U1297 ( .A0(n1034), .A1(n1029), .B0(n1030), .Y(n1021) );
  NOR2XLM U1298 ( .A(Operand_B[4]), .B(n1021), .Y(n1028) );
  NAND2XLM U1299 ( .A(n1016), .B(n1476), .Y(n1018) );
  OAI21XLM U1300 ( .A0(n1020), .A1(n1018), .B0(n1019), .Y(n1017) );
  OAI31XLM U1301 ( .A0(n1020), .A1(n1019), .A2(n1018), .B0(n1017), .Y(n1027)
         );
  NAND2XLM U1302 ( .A(Operand_B[4]), .B(n1021), .Y(n1024) );
  OAI21XLM U1303 ( .A0(n1028), .A1(n1027), .B0(n1024), .Y(n1055) );
  AOI222XLM U1304 ( .A0(Operand_B[5]), .A1(n1059), .B0(Operand_B[5]), .B1(
        n1055), .C0(n1059), .C1(n1055), .Y(n1023) );
  AO21XLM U1305 ( .A0(n1023), .A1(n1117), .B0(n1065), .Y(n1022) );
  OAI211XLM U1306 ( .A0(n1117), .A1(n1023), .B0(n1022), .C0(n1605), .Y(n1063)
         );
  INVXLM U1307 ( .A(n1063), .Y(n1552) );
  NAND2XLM U1308 ( .A(n1552), .B(n1024), .Y(n1026) );
  OAI21XLM U1309 ( .A0(n1028), .A1(n1026), .B0(n1027), .Y(n1025) );
  OAI31XLM U1310 ( .A0(n1028), .A1(n1027), .A2(n1026), .B0(n1025), .Y(n1054)
         );
  NAND2XLM U1311 ( .A(n1552), .B(n1030), .Y(n1032) );
  OAI21XLM U1312 ( .A0(n1034), .A1(n1032), .B0(n1033), .Y(n1031) );
  OAI31XLM U1313 ( .A0(n1034), .A1(n1033), .A2(n1032), .B0(n1031), .Y(n1052)
         );
  NAND2XLM U1314 ( .A(n1035), .B(n1700), .Y(n1040) );
  NOR2XLM U1315 ( .A(n1035), .B(n1700), .Y(n1036) );
  NOR2XLM U1316 ( .A(n1036), .B(n1063), .Y(n1038) );
  AOI21XLM U1317 ( .A0(n1040), .A1(n1038), .B0(n1039), .Y(n1037) );
  AOI31XLM U1318 ( .A0(n1040), .A1(n1039), .A2(n1038), .B0(n1037), .Y(n1050)
         );
  OAI32XLM U1319 ( .A0(n1604), .A1(Operand_A[1]), .A2(n1704), .B0(Operand_B[1]), .B1(n1041), .Y(n1043) );
  OAI31XLM U1320 ( .A0(n1063), .A1(n1044), .A2(n1043), .B0(n1042), .Y(n1048)
         );
  OAI21XLM U1321 ( .A0(n1704), .A1(n1063), .B0(Operand_A[1]), .Y(n1045) );
  OAI31XLM U1322 ( .A0(n1704), .A1(Operand_A[1]), .A2(n1063), .B0(n1045), .Y(
        n1046) );
  AOI222XLM U1323 ( .A0(Operand_B[2]), .A1(n1048), .B0(Operand_B[2]), .B1(
        n1047), .C0(n1048), .C1(n1047), .Y(n1049) );
  AOI222XLM U1324 ( .A0(n1601), .A1(n1050), .B0(n1601), .B1(n1049), .C0(n1050), 
        .C1(n1049), .Y(n1051) );
  AOI222XLM U1325 ( .A0(n1054), .A1(n1653), .B0(n1054), .B1(n1053), .C0(n1653), 
        .C1(n1053), .Y(n1062) );
  NAND2XLM U1326 ( .A(Operand_B[5]), .B(n1055), .Y(n1060) );
  NOR2XLM U1327 ( .A(Operand_B[5]), .B(n1055), .Y(n1056) );
  NOR2XLM U1328 ( .A(n1056), .B(n1063), .Y(n1058) );
  AOI21XLM U1329 ( .A0(n1060), .A1(n1058), .B0(n1059), .Y(n1057) );
  AOI222XLM U1330 ( .A0(Operand_B[6]), .A1(n1062), .B0(Operand_B[6]), .B1(
        n1061), .C0(n1062), .C1(n1061), .Y(n1064) );
  AOI21XLM U1331 ( .A0(n1065), .A1(n1063), .B0(n1064), .Y(n1066) );
  OAI2BB2XLM U1332 ( .B0(Operand_B[7]), .B1(n1066), .A0N(n1065), .A1N(n1064), 
        .Y(n1077) );
  NAND4XLM U1333 ( .A(n1083), .B(n1840), .C(n1096), .D(n1842), .Y(n1514) );
  INVXLM U1334 ( .A(n1514), .Y(n1551) );
  NAND2XLM U1335 ( .A(Operand_A[7]), .B(n1605), .Y(n1543) );
  NOR2XLM U1336 ( .A(Operand_B[6]), .B(n1706), .Y(n1538) );
  NOR2XLM U1337 ( .A(Operand_A[4]), .B(n1651), .Y(n1073) );
  NAND2XLM U1338 ( .A(Operand_A[1]), .B(n1604), .Y(n1068) );
  AOI211XLM U1339 ( .A0(n1071), .A1(n1093), .B0(n1070), .C0(n1069), .Y(n1072)
         );
  AOI211XLM U1340 ( .A0(n1073), .A1(n1534), .B0(n1537), .C0(n1072), .Y(n1074)
         );
  OAI22XLM U1341 ( .A0(Operand_A[6]), .A1(n1117), .B0(n1538), .B1(n1074), .Y(
        n1075) );
  NOR2XLM U1342 ( .A(Operand_A[7]), .B(n1605), .Y(n1541) );
  AOI32XLM U1343 ( .A0(n1543), .A1(U0_SYS_CTRL_ALU_FUN_reg[2]), .A2(n1075), 
        .B0(n1541), .B1(U0_SYS_CTRL_ALU_FUN_reg[2]), .Y(n1076) );
  NOR4XLM U1344 ( .A(n1840), .B(n1083), .C(n1092), .D(n1076), .Y(n1550) );
  AOI21XLM U1345 ( .A0(n1077), .A1(n1551), .B0(n1550), .Y(n1088) );
  INVXLM U1346 ( .A(n1078), .Y(n1079) );
  NOR2BXLM U1347 ( .AN(n1841), .B(n1079), .Y(n1526) );
  INVXLM U1348 ( .A(n1526), .Y(n1547) );
  NAND2XLM U1349 ( .A(n1840), .B(n1842), .Y(n1101) );
  NOR3X1M U1350 ( .A(n1080), .B(n1101), .C(n1083), .Y(n1546) );
  AOI21XLM U1351 ( .A0(n1840), .A1(U0_SYS_CTRL_ALU_FUN_reg[2]), .B0(n1083), 
        .Y(n1081) );
  AOI211XLM U1352 ( .A0(n1083), .A1(n1082), .B0(n1081), .C0(n1092), .Y(n1559)
         );
  OAI21XLM U1353 ( .A0(n1546), .A1(n1559), .B0(Operand_B[0]), .Y(n1084) );
  OAI211XLM U1354 ( .A0(Operand_B[0]), .A1(n1547), .B0(n1554), .C0(n1084), .Y(
        n1086) );
  NOR2XLM U1355 ( .A(n1840), .B(n1085), .Y(n1483) );
  AOI22XLM U1356 ( .A0(Operand_A[0]), .A1(n1086), .B0(Operand_A[1]), .B1(n1483), .Y(n1087) );
  OAI211XLM U1357 ( .A0(n1704), .A1(n1554), .B0(n1088), .C0(n1087), .Y(n1089)
         );
  NOR3XLM U1358 ( .A(n1091), .B(n1090), .C(n1089), .Y(n1099) );
  NOR3XLM U1359 ( .A(n1103), .B(n1095), .C(n1092), .Y(n1568) );
  AOI22XLM U1360 ( .A0(C25M_DATA15_0), .A1(n1568), .B0(n1526), .B1(n1094), .Y(
        n1098) );
  NAND3XLM U1361 ( .A(n1841), .B(n1096), .C(n1095), .Y(n1104) );
  NOR2XLM U1362 ( .A(n1104), .B(n1103), .Y(n1492) );
  OAI21XLM U1363 ( .A0(n1698), .A1(n1704), .B0(n1492), .Y(n1097) );
  NAND3XLM U1364 ( .A(n1099), .B(n1098), .C(n1097), .Y(U0_ALU_ALU_OUT_Comb[0])
         );
  NOR3X1M U1365 ( .A(n1841), .B(n1101), .C(n1100), .Y(DP_OP_152J1_125_249_n43)
         );
  NOR2XLM U1366 ( .A(n1492), .B(n1525), .Y(n1114) );
  INVXLM U1367 ( .A(n1114), .Y(n1106) );
  AOI21XLM U1368 ( .A0(n1568), .A1(n920), .B0(n1106), .Y(n1116) );
  OAI2BB1XLM U1369 ( .A0N(n1546), .A1N(intadd_0_SUM_7_), .B0(n1116), .Y(
        U0_ALU_ALU_OUT_Comb[9]) );
  INVXLM U1370 ( .A(n1568), .Y(n1115) );
  NOR2XLM U1371 ( .A(n1682), .B(n1653), .Y(n1578) );
  NOR2XLM U1372 ( .A(n1117), .B(n1706), .Y(n1577) );
  NOR2XLM U1373 ( .A(n1605), .B(n1706), .Y(n1574) );
  NOR2XLM U1374 ( .A(n1682), .B(n1117), .Y(n1573) );
  AND2X1M U1375 ( .A(Operand_B[7]), .B(Operand_A[7]), .Y(n1523) );
  OAI211XLM U1376 ( .A0(intadd_0_n1), .A1(n1110), .B0(n1523), .C0(n1546), .Y(
        n1102) );
  OAI2BB1XLM U1377 ( .A0N(n1546), .A1N(intadd_0_SUM_9_), .B0(n1116), .Y(
        U0_ALU_ALU_OUT_Comb[11]) );
  NAND2BXLM U1378 ( .AN(n1104), .B(n1103), .Y(n1555) );
  XNOR2XLM U1379 ( .A(DP_OP_152J1_125_249_n9), .B(n1105), .Y(n1107) );
  AOI21XLM U1380 ( .A0(n1568), .A1(n1107), .B0(n1106), .Y(n1109) );
  NAND2XLM U1381 ( .A(n1546), .B(intadd_0_SUM_6_), .Y(n1108) );
  OAI211XLM U1382 ( .A0(n1682), .A1(n1555), .B0(n1109), .C0(n1108), .Y(
        U0_ALU_ALU_OUT_Comb[8]) );
  OAI2BB1XLM U1383 ( .A0N(n1546), .A1N(intadd_0_SUM_10_), .B0(n1116), .Y(
        U0_ALU_ALU_OUT_Comb[12]) );
  OAI2BB1XLM U1384 ( .A0N(n1546), .A1N(intadd_0_SUM_11_), .B0(n1116), .Y(
        U0_ALU_ALU_OUT_Comb[13]) );
  AOI2BB2XLM U1385 ( .B0(n1523), .B1(n1110), .A0N(n1110), .A1N(n1523), .Y(
        n1112) );
  AOI21BXLM U1386 ( .A0(intadd_0_n1), .A1(n1112), .B0N(n1546), .Y(n1111) );
  OAI21XLM U1387 ( .A0(intadd_0_n1), .A1(n1112), .B0(n1111), .Y(n1113) );
  OAI2B11XLM U1388 ( .A1N(n920), .A0(n1115), .B0(n1114), .C0(n1113), .Y(
        U0_ALU_ALU_OUT_Comb[14]) );
  NOR2XLM U1389 ( .A(n1117), .B(n1684), .Y(intadd_3_B_1_) );
  OAI2BB1XLM U1390 ( .A0N(n1546), .A1N(intadd_0_SUM_8_), .B0(n1116), .Y(
        U0_ALU_ALU_OUT_Comb[10]) );
  NOR2XLM U1391 ( .A(n1704), .B(n1685), .Y(intadd_0_CI) );
  NAND2XLM U1392 ( .A(Operand_A[0]), .B(Operand_B[1]), .Y(n1545) );
  NOR3XLM U1393 ( .A(n1704), .B(n1686), .C(n1545), .Y(intadd_0_A_0_) );
  NOR2XLM U1394 ( .A(n1601), .B(n1685), .Y(intadd_6_CI) );
  NOR2XLM U1395 ( .A(n1651), .B(n1686), .Y(intadd_6_B_0_) );
  NOR4XLM U1396 ( .A(n1704), .B(n1604), .C(n1683), .D(n1703), .Y(intadd_6_A_0_) );
  NOR2XLM U1397 ( .A(n1651), .B(n1685), .Y(intadd_6_B_1_) );
  NOR2XLM U1398 ( .A(n1653), .B(n1686), .Y(intadd_5_B_0_) );
  NOR4XLM U1399 ( .A(n1704), .B(n1604), .C(n1684), .D(n1683), .Y(intadd_5_A_0_) );
  NOR2XLM U1400 ( .A(n1698), .B(n1117), .Y(intadd_2_CI) );
  NOR2XLM U1401 ( .A(n1700), .B(n1683), .Y(intadd_2_A_0_) );
  NOR2XLM U1402 ( .A(n1651), .B(n1703), .Y(intadd_2_B_1_) );
  NOR2XLM U1403 ( .A(n1653), .B(n1685), .Y(intadd_2_A_1_) );
  NOR2XLM U1404 ( .A(n1601), .B(n1683), .Y(intadd_1_CI) );
  NOR2XLM U1405 ( .A(n1117), .B(n1686), .Y(intadd_1_B_0_) );
  NOR4XLM U1406 ( .A(n1704), .B(n1604), .C(n1706), .D(n1684), .Y(intadd_1_A_0_) );
  NOR2XLM U1407 ( .A(n1651), .B(n1684), .Y(intadd_4_B_0_) );
  NOR2XLM U1408 ( .A(n1601), .B(n1706), .Y(intadd_4_A_0_) );
  NOR2XLM U1409 ( .A(n1605), .B(n1703), .Y(intadd_3_CI) );
  NOR2XLM U1410 ( .A(n1651), .B(n1706), .Y(intadd_3_B_0_) );
  NOR2XLM U1411 ( .A(n1682), .B(n1601), .Y(intadd_3_A_0_) );
  INVXLM U1412 ( .A(U0_UART_U0_UART_TX_U0_fsm_current_state[2]), .Y(n1758) );
  NAND2XLM U1413 ( .A(U0_UART_U0_UART_TX_U0_fsm_current_state[0]), .B(n1758), 
        .Y(n1663) );
  NAND2XLM U1414 ( .A(U0_UART_U0_UART_TX_U0_fsm_current_state[1]), .B(n1758), 
        .Y(n1759) );
  NAND2BXLM U1415 ( .AN(SO[3]), .B(U0_ref_sync_sync_reg[1]), .Y(n1618) );
  INVXLM U1416 ( .A(UART_RX_OUT[3]), .Y(n1637) );
  AOI22XLM U1417 ( .A0(U0_ref_sync_enable_pulse), .A1(n1637), .B0(n1286), .B1(
        n1618), .Y(n677) );
  INVXLM U1418 ( .A(UART_RX_OUT[1]), .Y(n1634) );
  AOI22XLM U1419 ( .A0(U0_ref_sync_enable_pulse), .A1(n1634), .B0(n1295), .B1(
        n1618), .Y(n675) );
  INVXLM U1420 ( .A(UART_RX_OUT[0]), .Y(n1633) );
  AOI22XLM U1421 ( .A0(U0_ref_sync_enable_pulse), .A1(n1633), .B0(n1293), .B1(
        n1618), .Y(n673) );
  INVXLM U1422 ( .A(UART_RX_OUT[2]), .Y(n1636) );
  AOI22XLM U1423 ( .A0(U0_ref_sync_enable_pulse), .A1(n1636), .B0(n1290), .B1(
        n1618), .Y(n676) );
  INVXLM U1424 ( .A(U0_UART_U0_UART_TX_U0_fsm_current_state[1]), .Y(n1665) );
  NOR2BXLM U1425 ( .AN(n1760), .B(
        U0_UART_U0_UART_TX_U0_Serializer_ser_count[0]), .Y(
        U0_UART_U0_UART_TX_U0_Serializer_N23) );
  INVXLM U1426 ( .A(UART_RX_IN), .Y(n1237) );
  INVXLM U1427 ( .A(U0_UART_U0_UART_RX_U0_uart_fsm_current_state[2]), .Y(n1446) );
  OAI21XLM U1428 ( .A0(U0_UART_U0_UART_RX_U0_uart_fsm_current_state[0]), .A1(
        n1237), .B0(n1446), .Y(n1711) );
  INVXLM U1429 ( .A(U0_UART_U0_UART_RX_U0_uart_fsm_current_state[1]), .Y(n1813) );
  AOI222XLM U1430 ( .A0(U0_UART_U0_UART_RX_U0_data_sampling_Samples[0]), .A1(
        U0_UART_U0_UART_RX_U0_data_sampling_Samples[1]), .B0(
        U0_UART_U0_UART_RX_U0_data_sampling_Samples[0]), .B1(
        U0_UART_U0_UART_RX_U0_data_sampling_Samples[2]), .C0(
        U0_UART_U0_UART_RX_U0_data_sampling_Samples[1]), .C1(
        U0_UART_U0_UART_RX_U0_data_sampling_Samples[2]), .Y(n1118) );
  NOR2BXLM U1431 ( .AN(n1235), .B(n1118), .Y(
        U0_UART_U0_UART_RX_U0_data_sampling_N58) );
  NAND2XLM U1432 ( .A(U0_UART_U0_UART_TX_U0_Serializer_ser_count[1]), .B(
        U0_UART_U0_UART_TX_U0_Serializer_ser_count[0]), .Y(n1708) );
  OAI211XLM U1433 ( .A0(U0_UART_U0_UART_TX_U0_Serializer_ser_count[1]), .A1(
        U0_UART_U0_UART_TX_U0_Serializer_ser_count[0]), .B0(n1760), .C0(n1708), 
        .Y(n1119) );
  INVXLM U1434 ( .A(n1119), .Y(U0_UART_U0_UART_TX_U0_Serializer_N24) );
  INVXLM U1435 ( .A(UART_Config[4]), .Y(n1649) );
  INVXLM U1436 ( .A(U0_UART_U0_UART_RX_edge_count[5]), .Y(n1695) );
  INVXLM U1437 ( .A(U0_UART_U0_UART_RX_edge_count[0]), .Y(n1689) );
  INVXLM U1438 ( .A(UART_Config[3]), .Y(n1641) );
  AOI22XLM U1439 ( .A0(UART_Config[3]), .A1(n1689), .B0(
        U0_UART_U0_UART_RX_edge_count[0]), .B1(n1641), .Y(n1217) );
  NAND2XLM U1440 ( .A(n1695), .B(n1217), .Y(n1232) );
  INVXLM U1441 ( .A(U0_UART_U0_UART_RX_edge_count[3]), .Y(n1691) );
  INVXLM U1442 ( .A(U0_UART_U0_UART_RX_edge_count[1]), .Y(n1688) );
  INVXLM U1443 ( .A(UART_Config[5]), .Y(n1648) );
  INVXLM U1444 ( .A(U0_UART_U0_UART_RX_edge_count[2]), .Y(n1628) );
  OAI22XLM U1445 ( .A0(n1648), .A1(U0_UART_U0_UART_RX_edge_count[2]), .B0(
        n1628), .B1(UART_Config[5]), .Y(n1218) );
  AOI21XLM U1446 ( .A0(UART_Config[4]), .A1(n1688), .B0(n1218), .Y(n1233) );
  INVXLM U1447 ( .A(U0_UART_U0_UART_RX_edge_count[4]), .Y(n1626) );
  INVXLM U1448 ( .A(UART_Config[7]), .Y(n1643) );
  AOI22XLM U1449 ( .A0(UART_Config[7]), .A1(U0_UART_U0_UART_RX_edge_count[4]), 
        .B0(n1626), .B1(n1643), .Y(n1219) );
  AOI21XLM U1450 ( .A0(n1691), .A1(UART_Config[6]), .B0(n1219), .Y(n1120) );
  OAI211XLM U1451 ( .A0(n1691), .A1(UART_Config[6]), .B0(n1233), .C0(n1120), 
        .Y(n1121) );
  AOI211XLM U1452 ( .A0(U0_UART_U0_UART_RX_edge_count[1]), .A1(n1649), .B0(
        n1232), .C0(n1121), .Y(n1123) );
  OAI21XLM U1453 ( .A0(U0_UART_U0_UART_RX_U0_data_sampling_Samples[2]), .A1(
        n1123), .B0(n1235), .Y(n1122) );
  AOI21XLM U1454 ( .A0(n1123), .A1(n1237), .B0(n1122), .Y(n902) );
  INVXLM U1455 ( .A(U0_UART_FIFO_r_addr[1]), .Y(n1763) );
  INVXLM U1456 ( .A(U0_UART_FIFO_gray_rd_ptr[1]), .Y(n1126) );
  INVXLM U1457 ( .A(U0_UART_FIFO_gray_rd_ptr[2]), .Y(n1125) );
  OAI22XLM U1458 ( .A0(n1126), .A1(U0_UART_FIFO_w2r_ptr[1]), .B0(n1125), .B1(
        U0_UART_FIFO_w2r_ptr[2]), .Y(n1124) );
  AOI221XLM U1459 ( .A0(n1126), .A1(U0_UART_FIFO_w2r_ptr[1]), .B0(
        U0_UART_FIFO_w2r_ptr[2]), .B1(n1125), .C0(n1124), .Y(n1131) );
  INVXLM U1460 ( .A(U0_UART_FIFO_gray_rd_ptr[3]), .Y(n1129) );
  INVXLM U1461 ( .A(U0_UART_FIFO_gray_rd_ptr[0]), .Y(n1128) );
  OAI22XLM U1462 ( .A0(n1129), .A1(U0_UART_FIFO_w2r_ptr[3]), .B0(n1128), .B1(
        U0_UART_FIFO_w2r_ptr[0]), .Y(n1127) );
  AOI221XLM U1463 ( .A0(n1129), .A1(U0_UART_FIFO_w2r_ptr[3]), .B0(
        U0_UART_FIFO_w2r_ptr[0]), .B1(n1128), .C0(n1127), .Y(n1130) );
  AND2X1M U1464 ( .A(n1131), .B(n1130), .Y(n1662) );
  NOR3BXLM U1465 ( .AN(U0_PULSE_GEN_rcv_flop), .B(n1662), .C(
        U0_PULSE_GEN_pls_flop), .Y(n1667) );
  NAND2XLM U1466 ( .A(U0_UART_FIFO_r_addr[0]), .B(n1667), .Y(n1666) );
  NOR2XLM U1467 ( .A(n1763), .B(n1666), .Y(n1624) );
  AOI21XLM U1468 ( .A0(n1763), .A1(n1666), .B0(n1624), .Y(n671) );
  NOR2XLM U1469 ( .A(UART_TX_Busy), .B(n1662), .Y(n1179) );
  INVXLM U1470 ( .A(n1179), .Y(n1178) );
  INVXLM U1471 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[56]), .Y(n1327) );
  NAND3XLM U1472 ( .A(U0_UART_FIFO_r_addr[2]), .B(U0_UART_FIFO_r_addr[0]), .C(
        U0_UART_FIFO_r_addr[1]), .Y(n1621) );
  INVXLM U1473 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[40]), .Y(n1255) );
  NAND3XLM U1474 ( .A(U0_UART_FIFO_r_addr[0]), .B(U0_UART_FIFO_r_addr[2]), .C(
        n1763), .Y(n1167) );
  OAI22XLM U1475 ( .A0(n1327), .A1(n1621), .B0(n1255), .B1(n1167), .Y(n1136)
         );
  INVXLM U1476 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[24]), .Y(n1311) );
  INVXLM U1477 ( .A(U0_UART_FIFO_r_addr[2]), .Y(n1710) );
  NAND3XLM U1478 ( .A(U0_UART_FIFO_r_addr[0]), .B(U0_UART_FIFO_r_addr[1]), .C(
        n1710), .Y(n1623) );
  INVXLM U1479 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[8]), .Y(n1245) );
  NAND3XLM U1480 ( .A(U0_UART_FIFO_r_addr[0]), .B(n1710), .C(n1763), .Y(n1168)
         );
  OAI22XLM U1481 ( .A0(n1311), .A1(n1623), .B0(n1245), .B1(n1168), .Y(n1135)
         );
  INVXLM U1482 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[48]), .Y(n1303) );
  INVXLM U1483 ( .A(U0_UART_FIFO_r_addr[0]), .Y(n1762) );
  NAND3XLM U1484 ( .A(U0_UART_FIFO_r_addr[2]), .B(U0_UART_FIFO_r_addr[1]), .C(
        n1762), .Y(n1174) );
  NOR3XLM U1485 ( .A(U0_UART_FIFO_r_addr[0]), .B(U0_UART_FIFO_r_addr[1]), .C(
        n1710), .Y(n1170) );
  NOR3XLM U1486 ( .A(U0_UART_FIFO_r_addr[2]), .B(U0_UART_FIFO_r_addr[0]), .C(
        n1763), .Y(n1169) );
  AOI22XLM U1487 ( .A0(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[32]), .A1(n1170), .B0(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[16]), .B1(n1169), .Y(n1133) );
  NOR3XLM U1488 ( .A(U0_UART_FIFO_r_addr[2]), .B(U0_UART_FIFO_r_addr[0]), .C(
        U0_UART_FIFO_r_addr[1]), .Y(n1171) );
  NAND2XLM U1489 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[0]), .B(n1171), .Y(
        n1132) );
  OAI211XLM U1490 ( .A0(n1303), .A1(n1174), .B0(n1133), .C0(n1132), .Y(n1134)
         );
  OAI31XLM U1491 ( .A0(n1136), .A1(n1135), .A2(n1134), .B0(n1179), .Y(n1198)
         );
  OAI2BB1XLM U1492 ( .A0N(U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[0]), .A1N(
        n1178), .B0(n1198), .Y(n668) );
  INVXLM U1493 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[58]), .Y(n1321) );
  INVXLM U1494 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[42]), .Y(n1246) );
  OAI22XLM U1495 ( .A0(n1321), .A1(n1621), .B0(n1246), .B1(n1167), .Y(n1141)
         );
  INVXLM U1496 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[26]), .Y(n1315) );
  INVXLM U1497 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[10]), .Y(n1253) );
  OAI22XLM U1498 ( .A0(n1315), .A1(n1623), .B0(n1253), .B1(n1168), .Y(n1140)
         );
  INVXLM U1499 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[50]), .Y(n1305) );
  AOI22XLM U1500 ( .A0(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[34]), .A1(n1170), .B0(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[18]), .B1(n1169), .Y(n1138) );
  NAND2XLM U1501 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[2]), .B(n1171), .Y(
        n1137) );
  OAI211XLM U1502 ( .A0(n1174), .A1(n1305), .B0(n1138), .C0(n1137), .Y(n1139)
         );
  OAI31XLM U1503 ( .A0(n1141), .A1(n1140), .A2(n1139), .B0(n1179), .Y(n1192)
         );
  OAI2BB1XLM U1504 ( .A0N(U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[2]), .A1N(
        n1178), .B0(n1192), .Y(n666) );
  INVXLM U1505 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[61]), .Y(n1323) );
  INVXLM U1506 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[45]), .Y(n1251) );
  OAI22XLM U1507 ( .A0(n1323), .A1(n1621), .B0(n1251), .B1(n1167), .Y(n1146)
         );
  INVXLM U1508 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[29]), .Y(n1317) );
  INVXLM U1509 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[13]), .Y(n1259) );
  OAI22XLM U1510 ( .A0(n1317), .A1(n1623), .B0(n1259), .B1(n1168), .Y(n1145)
         );
  INVXLM U1511 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[53]), .Y(n1309) );
  AOI22XLM U1512 ( .A0(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[37]), .A1(n1170), .B0(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[21]), .B1(n1169), .Y(n1143) );
  NAND2XLM U1513 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[5]), .B(n1171), .Y(
        n1142) );
  OAI211XLM U1514 ( .A0(n1174), .A1(n1309), .B0(n1143), .C0(n1142), .Y(n1144)
         );
  OAI31XLM U1515 ( .A0(n1146), .A1(n1145), .A2(n1144), .B0(n1179), .Y(n1194)
         );
  OAI2BB1XLM U1516 ( .A0N(U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[5]), .A1N(
        n1178), .B0(n1194), .Y(n663) );
  INVXLM U1517 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[63]), .Y(n1322) );
  INVXLM U1518 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[47]), .Y(n1248) );
  OAI22XLM U1519 ( .A0(n1322), .A1(n1621), .B0(n1248), .B1(n1167), .Y(n1151)
         );
  INVXLM U1520 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[31]), .Y(n1312) );
  INVXLM U1521 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[15]), .Y(n1257) );
  OAI22XLM U1522 ( .A0(n1312), .A1(n1623), .B0(n1257), .B1(n1168), .Y(n1150)
         );
  AOI22XLM U1523 ( .A0(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[39]), .A1(n1170), .B0(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[23]), .B1(n1169), .Y(n1148) );
  NAND2XLM U1524 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[7]), .B(n1171), .Y(
        n1147) );
  OAI211XLM U1525 ( .A0(n1174), .A1(n1300), .B0(n1148), .C0(n1147), .Y(n1149)
         );
  OAI31XLM U1526 ( .A0(n1151), .A1(n1150), .A2(n1149), .B0(n1179), .Y(n1180)
         );
  OAI2BB1XLM U1527 ( .A0N(U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[7]), .A1N(
        n1178), .B0(n1180), .Y(n661) );
  INVXLM U1528 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[62]), .Y(n1325) );
  INVXLM U1529 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[46]), .Y(n1247) );
  OAI22XLM U1530 ( .A0(n1325), .A1(n1621), .B0(n1247), .B1(n1167), .Y(n1156)
         );
  INVXLM U1531 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[30]), .Y(n1319) );
  INVXLM U1532 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[14]), .Y(n1240) );
  OAI22XLM U1533 ( .A0(n1319), .A1(n1623), .B0(n1240), .B1(n1168), .Y(n1155)
         );
  INVXLM U1534 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[54]), .Y(n1301) );
  AOI22XLM U1535 ( .A0(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[38]), .A1(n1170), .B0(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[22]), .B1(n1169), .Y(n1153) );
  NAND2XLM U1536 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[6]), .B(n1171), .Y(
        n1152) );
  OAI31XLM U1537 ( .A0(n1156), .A1(n1155), .A2(n1154), .B0(n1179), .Y(n1196)
         );
  OAI2BB1XLM U1538 ( .A0N(U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[6]), .A1N(
        n1178), .B0(n1196), .Y(n662) );
  INVXLM U1539 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[60]), .Y(n1329) );
  INVXLM U1540 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[44]), .Y(n1249) );
  OAI22XLM U1541 ( .A0(n1329), .A1(n1621), .B0(n1249), .B1(n1167), .Y(n1161)
         );
  INVXLM U1542 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[28]), .Y(n1316) );
  INVXLM U1543 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[12]), .Y(n1252) );
  OAI22XLM U1544 ( .A0(n1316), .A1(n1623), .B0(n1252), .B1(n1168), .Y(n1160)
         );
  INVXLM U1545 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[52]), .Y(n1307) );
  AOI22XLM U1546 ( .A0(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[36]), .A1(n1170), .B0(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[20]), .B1(n1169), .Y(n1158) );
  NAND2XLM U1547 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[4]), .B(n1171), .Y(
        n1157) );
  OAI211XLM U1548 ( .A0(n1174), .A1(n1307), .B0(n1158), .C0(n1157), .Y(n1159)
         );
  OAI31XLM U1549 ( .A0(n1161), .A1(n1160), .A2(n1159), .B0(n1179), .Y(n1188)
         );
  OAI2BB1XLM U1550 ( .A0N(U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[4]), .A1N(
        n1178), .B0(n1188), .Y(n664) );
  INVXLM U1551 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[57]), .Y(n1324) );
  INVXLM U1552 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[41]), .Y(n1242) );
  OAI22XLM U1553 ( .A0(n1324), .A1(n1621), .B0(n1242), .B1(n1167), .Y(n1166)
         );
  INVXLM U1554 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[25]), .Y(n1313) );
  INVXLM U1555 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[9]), .Y(n1239) );
  OAI22XLM U1556 ( .A0(n1313), .A1(n1623), .B0(n1239), .B1(n1168), .Y(n1165)
         );
  INVXLM U1557 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[49]), .Y(n1302) );
  NAND2XLM U1558 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[1]), .B(n1171), .Y(
        n1162) );
  OAI2BB1XLM U1559 ( .A0N(U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[1]), .A1N(
        n1178), .B0(n1202), .Y(n667) );
  INVXLM U1560 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[59]), .Y(n1326) );
  INVXLM U1561 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[43]), .Y(n1243) );
  OAI22XLM U1562 ( .A0(n1326), .A1(n1621), .B0(n1243), .B1(n1167), .Y(n1177)
         );
  INVXLM U1563 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[27]), .Y(n1314) );
  INVXLM U1564 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[11]), .Y(n1244) );
  OAI22XLM U1565 ( .A0(n1314), .A1(n1623), .B0(n1244), .B1(n1168), .Y(n1176)
         );
  INVXLM U1566 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[51]), .Y(n1304) );
  AOI22XLM U1567 ( .A0(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[35]), .A1(n1170), .B0(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[19]), .B1(n1169), .Y(n1173) );
  NAND2XLM U1568 ( .A(U0_UART_FIFO_u_fifo_mem_FIFO_MEM[3]), .B(n1171), .Y(
        n1172) );
  OAI211XLM U1569 ( .A0(n1174), .A1(n1304), .B0(n1173), .C0(n1172), .Y(n1175)
         );
  OAI31XLM U1570 ( .A0(n1177), .A1(n1176), .A2(n1175), .B0(n1179), .Y(n1190)
         );
  OAI2BB1XLM U1571 ( .A0N(U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[3]), .A1N(
        n1178), .B0(n1190), .Y(n665) );
  NAND3XLM U1572 ( .A(U0_UART_U0_UART_TX_U0_Serializer_ser_count[1]), .B(
        U0_UART_U0_UART_TX_U0_Serializer_ser_count[0]), .C(
        U0_UART_U0_UART_TX_U0_Serializer_ser_count[2]), .Y(n1709) );
  NAND2XLM U1573 ( .A(n1760), .B(n1709), .Y(n1707) );
  NOR2XLM U1574 ( .A(n1179), .B(n1707), .Y(n1201) );
  NOR2XLM U1575 ( .A(n1179), .B(n1201), .Y(n1200) );
  OAI2BB1XLM U1576 ( .A0N(U0_UART_U0_UART_TX_U0_Serializer_DATA_V[7]), .A1N(
        n1200), .B0(n1180), .Y(n882) );
  INVXLM U1577 ( .A(UART_Config[0]), .Y(n1786) );
  AOI2BB2XLM U1578 ( .B0(U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[4]), .B1(
        U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[7]), .A0N(
        U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[7]), .A1N(
        U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[4]), .Y(n1186) );
  AOI2BB2XLM U1579 ( .B0(U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[0]), .B1(
        U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[5]), .A0N(
        U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[5]), .A1N(
        U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[0]), .Y(n1182) );
  AOI2BB2XLM U1580 ( .B0(UART_Config[1]), .B1(
        U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[6]), .A0N(
        U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[6]), .A1N(UART_Config[1]), 
        .Y(n1181) );
  XOR3XLM U1581 ( .A(U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[3]), .B(n1182), 
        .C(n1181), .Y(n1183) );
  XOR3XLM U1582 ( .A(U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[1]), .B(
        U0_UART_U0_UART_TX_U0_parity_calc_DATA_V[2]), .C(n1183), .Y(n1185) );
  NOR2XLM U1583 ( .A(n1186), .B(n1185), .Y(n1184) );
  AOI211XLM U1584 ( .A0(n1186), .A1(n1185), .B0(n1786), .C0(n1184), .Y(n1187)
         );
  AO21XLM U1585 ( .A0(n1786), .A1(U0_UART_U0_UART_TX_parity), .B0(n1187), .Y(
        n660) );
  AOI22XLM U1586 ( .A0(n1201), .A1(U0_UART_U0_UART_TX_U0_Serializer_DATA_V[5]), 
        .B0(n1200), .B1(U0_UART_U0_UART_TX_U0_Serializer_DATA_V[4]), .Y(n1189)
         );
  AOI22XLM U1587 ( .A0(n1201), .A1(U0_UART_U0_UART_TX_U0_Serializer_DATA_V[4]), 
        .B0(n1200), .B1(U0_UART_U0_UART_TX_U0_Serializer_DATA_V[3]), .Y(n1191)
         );
  NAND2XLM U1588 ( .A(n1191), .B(n1190), .Y(n878) );
  AOI22XLM U1589 ( .A0(n1201), .A1(U0_UART_U0_UART_TX_U0_Serializer_DATA_V[3]), 
        .B0(n1200), .B1(U0_UART_U0_UART_TX_U0_Serializer_DATA_V[2]), .Y(n1193)
         );
  NAND2XLM U1590 ( .A(n1193), .B(n1192), .Y(n879) );
  AOI22XLM U1591 ( .A0(n1201), .A1(U0_UART_U0_UART_TX_U0_Serializer_DATA_V[6]), 
        .B0(n1200), .B1(U0_UART_U0_UART_TX_U0_Serializer_DATA_V[5]), .Y(n1195)
         );
  NAND2XLM U1592 ( .A(n1195), .B(n1194), .Y(n876) );
  AOI22XLM U1593 ( .A0(n1201), .A1(U0_UART_U0_UART_TX_U0_Serializer_DATA_V[7]), 
        .B0(n1200), .B1(U0_UART_U0_UART_TX_U0_Serializer_DATA_V[6]), .Y(n1197)
         );
  NAND2XLM U1594 ( .A(n1197), .B(n1196), .Y(n875) );
  AOI22XLM U1595 ( .A0(n1201), .A1(U0_UART_U0_UART_TX_U0_Serializer_DATA_V[1]), 
        .B0(U0_UART_U0_UART_TX_ser_data), .B1(n1200), .Y(n1199) );
  NAND2XLM U1596 ( .A(n1199), .B(n1198), .Y(n881) );
  AOI22XLM U1597 ( .A0(n1201), .A1(U0_UART_U0_UART_TX_U0_Serializer_DATA_V[2]), 
        .B0(U0_UART_U0_UART_TX_U0_Serializer_DATA_V[1]), .B1(n1200), .Y(n1203)
         );
  NAND2XLM U1598 ( .A(n1203), .B(n1202), .Y(n880) );
  NOR3XLM U1599 ( .A(U0_SYS_CTRL_state_reg[3]), .B(U0_SYS_CTRL_state_reg[2]), 
        .C(U0_SYS_CTRL_state_reg[0]), .Y(n1279) );
  AOI21XLM U1600 ( .A0(n1279), .A1(n1776), .B0(n1297), .Y(n1777) );
  NAND4XLM U1601 ( .A(UART_RX_SYNC[1]), .B(n1206), .C(UART_RX_SYNC[5]), .D(
        n1290), .Y(n1204) );
  NOR2XLM U1602 ( .A(UART_RX_SYNC[6]), .B(n1204), .Y(n1768) );
  INVXLM U1603 ( .A(UART_RX_SYNC[4]), .Y(n1615) );
  NAND4XLM U1604 ( .A(UART_RX_SYNC[2]), .B(UART_RX_SYNC[6]), .C(n1293), .D(
        n1615), .Y(n1205) );
  NOR4BXLM U1605 ( .AN(n1206), .B(UART_RX_SYNC[1]), .C(UART_RX_SYNC[5]), .D(
        n1205), .Y(n1767) );
  AOI31XLM U1606 ( .A0(n1768), .A1(n1293), .A2(n1615), .B0(n1767), .Y(n1216)
         );
  NAND2XLM U1607 ( .A(U0_SYS_CTRL_state_reg[0]), .B(n1773), .Y(n1284) );
  NOR3XLM U1608 ( .A(U0_SYS_CTRL_state_reg[1]), .B(U0_SYS_CTRL_state_reg[2]), 
        .C(n1284), .Y(n1278) );
  OAI21XLM U1609 ( .A0(U0_SYS_CTRL_state_reg[1]), .A1(n1671), .B0(n1207), .Y(
        n1210) );
  NOR3XLM U1610 ( .A(U0_SYS_CTRL_state_reg[0]), .B(n1776), .C(n1208), .Y(n1250) );
  OAI21BXLM U1611 ( .A0(ALU_OUT_VLD), .A1(n1779), .B0N(n1250), .Y(n1209) );
  AOI221XLM U1612 ( .A0(n1278), .A1(n1668), .B0(n1210), .B1(UART_RX_V_SYNC), 
        .C0(n1209), .Y(n1215) );
  INVXLM U1613 ( .A(n1216), .Y(n1212) );
  AOI21XLM U1614 ( .A0(U0_SYS_CTRL_state_reg[2]), .A1(UART_RX_V_SYNC), .B0(
        n1284), .Y(n1211) );
  AOI32XLM U1615 ( .A0(n1213), .A1(U0_SYS_CTRL_state_reg[1]), .A2(n1212), .B0(
        n1211), .B1(U0_SYS_CTRL_state_reg[1]), .Y(n1214) );
  OAI211XLM U1616 ( .A0(n1777), .A1(n1216), .B0(n1215), .C0(n1214), .Y(
        U0_SYS_CTRL_state_next[0]) );
  OAI21XLM U1617 ( .A0(n1649), .A1(n1641), .B0(n1263), .Y(n1222) );
  INVXLM U1618 ( .A(n1222), .Y(n1784) );
  INVXLM U1619 ( .A(n1263), .Y(n1796) );
  NAND2XLM U1620 ( .A(n1648), .B(n1796), .Y(n1261) );
  NOR2XLM U1621 ( .A(UART_Config[6]), .B(n1261), .Y(n1798) );
  AOI21XLM U1622 ( .A0(UART_Config[6]), .A1(n1261), .B0(n1798), .Y(n1799) );
  AOI2BB2XLM U1623 ( .B0(U0_UART_U0_UART_RX_edge_count[3]), .B1(n1799), .A0N(
        n1799), .A1N(U0_UART_U0_UART_RX_edge_count[3]), .Y(n1226) );
  INVXLM U1624 ( .A(n1218), .Y(n1225) );
  AOI221XLM U1625 ( .A0(n1796), .A1(n1225), .B0(n1263), .B1(n1218), .C0(n1217), 
        .Y(n1220) );
  XNOR2XLM U1626 ( .A(n1798), .B(n1219), .Y(n1230) );
  NAND4XLM U1627 ( .A(n1226), .B(n1220), .C(n1695), .D(n1230), .Y(n1221) );
  AOI221XLM U1628 ( .A0(U0_UART_U0_UART_RX_edge_count[1]), .A1(n1784), .B0(
        n1688), .B1(n1222), .C0(n1221), .Y(n1224) );
  OAI21XLM U1629 ( .A0(U0_UART_U0_UART_RX_U0_data_sampling_Samples[1]), .A1(
        n1224), .B0(n1235), .Y(n1223) );
  AOI21XLM U1630 ( .A0(n1224), .A1(n1237), .B0(n1223), .Y(n903) );
  AOI21XLM U1631 ( .A0(U0_UART_U0_UART_RX_edge_count[1]), .A1(n1649), .B0(
        n1225), .Y(n1234) );
  AOI21XLM U1632 ( .A0(n1799), .A1(n1230), .B0(n1226), .Y(n1229) );
  NAND3XLM U1633 ( .A(UART_Config[3]), .B(n1649), .C(n1648), .Y(n1228) );
  OAI2BB1XLM U1634 ( .A0N(n1230), .A1N(n1226), .B0(n1228), .Y(n1227) );
  OAI221XLM U1635 ( .A0(n1230), .A1(n1799), .B0(n1229), .B1(n1228), .C0(n1227), 
        .Y(n1231) );
  NOR4XLM U1636 ( .A(n1234), .B(n1233), .C(n1232), .D(n1231), .Y(n1238) );
  OAI21XLM U1637 ( .A0(U0_UART_U0_UART_RX_U0_data_sampling_Samples[0]), .A1(
        n1238), .B0(n1235), .Y(n1236) );
  AOI21XLM U1638 ( .A0(n1238), .A1(n1237), .B0(n1236), .Y(n904) );
  NOR3XLM U1639 ( .A(U0_UART_FIFO_w_addr[2]), .B(U0_UART_FIFO_w_addr[1]), .C(
        n1241), .Y(n1260) );
  AOI222XLM U1640 ( .A0(n1441), .A1(RF_RdData[1]), .B0(n1277), .B1(
        U0_SYS_CTRL_ALU_OUT_reg[9]), .C0(n1250), .C1(
        U0_SYS_CTRL_ALU_OUT_reg[1]), .Y(n1748) );
  AOI22XLM U1641 ( .A0(n1260), .A1(n1748), .B0(n1239), .B1(n1258), .Y(n742) );
  AOI222XLM U1642 ( .A0(n1441), .A1(RF_RdData[6]), .B0(n1277), .B1(
        U0_SYS_CTRL_ALU_OUT_reg[14]), .C0(n1250), .C1(
        U0_SYS_CTRL_ALU_OUT_reg[6]), .Y(n1753) );
  AOI22XLM U1643 ( .A0(n1260), .A1(n1753), .B0(n1240), .B1(n1258), .Y(n702) );
  NOR3XLM U1644 ( .A(U0_UART_FIFO_w_addr[1]), .B(n1765), .C(n1241), .Y(n1256)
         );
  AOI22XLM U1645 ( .A0(n1256), .A1(n1748), .B0(n1242), .B1(n1254), .Y(n746) );
  AOI222XLM U1646 ( .A0(n1441), .A1(RF_RdData[3]), .B0(n1277), .B1(
        U0_SYS_CTRL_ALU_OUT_reg[11]), .C0(n1250), .C1(
        U0_SYS_CTRL_ALU_OUT_reg[3]), .Y(n1750) );
  AOI22XLM U1647 ( .A0(n1256), .A1(n1750), .B0(n1243), .B1(n1254), .Y(n730) );
  AOI22XLM U1648 ( .A0(n1260), .A1(n1750), .B0(n1244), .B1(n1258), .Y(n726) );
  AOI222XLM U1649 ( .A0(n1441), .A1(RF_RdData[0]), .B0(n1277), .B1(
        U0_SYS_CTRL_ALU_OUT_reg[8]), .C0(n1250), .C1(
        U0_SYS_CTRL_ALU_OUT_reg[0]), .Y(n1747) );
  AOI222XLM U1650 ( .A0(n1441), .A1(RF_RdData[2]), .B0(n1277), .B1(
        U0_SYS_CTRL_ALU_OUT_reg[10]), .C0(n1250), .C1(
        U0_SYS_CTRL_ALU_OUT_reg[2]), .Y(n1749) );
  AOI22XLM U1651 ( .A0(n1256), .A1(n1753), .B0(n1247), .B1(n1254), .Y(n706) );
  AOI222XLM U1652 ( .A0(n1441), .A1(RF_RdData[7]), .B0(n1277), .B1(
        U0_SYS_CTRL_ALU_OUT_reg[15]), .C0(n1250), .C1(
        U0_SYS_CTRL_ALU_OUT_reg[7]), .Y(n1756) );
  AOI22XLM U1653 ( .A0(n1256), .A1(n1756), .B0(n1248), .B1(n1254), .Y(n698) );
  AOI222XLM U1654 ( .A0(n1441), .A1(RF_RdData[4]), .B0(n1277), .B1(
        U0_SYS_CTRL_ALU_OUT_reg[12]), .C0(n1250), .C1(
        U0_SYS_CTRL_ALU_OUT_reg[4]), .Y(n1751) );
  AOI22XLM U1655 ( .A0(n1256), .A1(n1751), .B0(n1249), .B1(n1254), .Y(n722) );
  AOI222XLM U1656 ( .A0(n1441), .A1(RF_RdData[5]), .B0(n1277), .B1(
        U0_SYS_CTRL_ALU_OUT_reg[13]), .C0(n1250), .C1(
        U0_SYS_CTRL_ALU_OUT_reg[5]), .Y(n1752) );
  AOI22XLM U1657 ( .A0(n1256), .A1(n1752), .B0(n1251), .B1(n1254), .Y(n714) );
  AOI22XLM U1658 ( .A0(n1260), .A1(n1751), .B0(n1252), .B1(n1258), .Y(n718) );
  AOI22XLM U1659 ( .A0(n1260), .A1(n1749), .B0(n1253), .B1(n1258), .Y(n734) );
  AOI22XLM U1660 ( .A0(n1256), .A1(n1747), .B0(n1255), .B1(n1254), .Y(n754) );
  AOI22XLM U1661 ( .A0(n1260), .A1(n1756), .B0(n1257), .B1(n1258), .Y(n694) );
  INVXLM U1662 ( .A(UART_Config[2]), .Y(n1791) );
  INVXLM U1663 ( .A(UART_Config[6]), .Y(n1681) );
  OAI22XLM U1664 ( .A0(n1643), .A1(n1695), .B0(
        U0_UART_U0_UART_RX_edge_count[5]), .B1(UART_Config[7]), .Y(n1797) );
  OAI21XLM U1665 ( .A0(n1681), .A1(U0_UART_U0_UART_RX_edge_count[4]), .B0(
        n1797), .Y(n1803) );
  AOI22XLM U1666 ( .A0(UART_Config[3]), .A1(U0_UART_U0_UART_RX_edge_count[1]), 
        .B0(n1688), .B1(n1641), .Y(n1792) );
  NOR2XLM U1667 ( .A(UART_Config[2]), .B(UART_Config[3]), .Y(n1445) );
  AOI22XLM U1668 ( .A0(UART_Config[4]), .A1(n1628), .B0(
        U0_UART_U0_UART_RX_edge_count[2]), .B1(n1649), .Y(n1266) );
  OAI22XLM U1669 ( .A0(n1648), .A1(U0_UART_U0_UART_RX_edge_count[3]), .B0(
        n1691), .B1(UART_Config[5]), .Y(n1790) );
  OAI21XLM U1670 ( .A0(UART_Config[2]), .A1(n1263), .B0(n1790), .Y(n1262) );
  OAI31XLM U1671 ( .A0(UART_Config[2]), .A1(n1790), .A2(n1263), .B0(n1262), 
        .Y(n1264) );
  NOR2XLM U1672 ( .A(n1797), .B(U0_UART_U0_UART_RX_edge_count[4]), .Y(n1789)
         );
  AOI211XLM U1673 ( .A0(n1445), .A1(n1266), .B0(n1264), .C0(n1789), .Y(n1265)
         );
  OAI21XLM U1674 ( .A0(n1445), .A1(n1266), .B0(n1265), .Y(n1267) );
  AOI221XLM U1675 ( .A0(U0_UART_U0_UART_RX_edge_count[0]), .A1(UART_Config[2]), 
        .B0(n1792), .B1(n1689), .C0(n1267), .Y(n1268) );
  OAI21XLM U1676 ( .A0(n1792), .A1(UART_Config[2]), .B0(n1268), .Y(n1272) );
  INVXLM U1677 ( .A(n1797), .Y(n1270) );
  AO21XLM U1678 ( .A0(n1273), .A1(n1626), .B0(UART_Config[6]), .Y(n1269) );
  OAI32XLM U1679 ( .A0(n1681), .A1(n1626), .A2(n1273), .B0(n1270), .B1(n1269), 
        .Y(n1271) );
  AOI211XLM U1680 ( .A0(n1273), .A1(n1803), .B0(n1272), .C0(n1271), .Y(n1738)
         );
  INVXLM U1681 ( .A(n1738), .Y(n1741) );
  NOR2XLM U1682 ( .A(n1813), .B(
        U0_UART_U0_UART_RX_U0_uart_fsm_current_state[0]), .Y(n1457) );
  INVXLM U1683 ( .A(n1457), .Y(n1678) );
  NAND2XLM U1684 ( .A(n1711), .B(n1678), .Y(n1739) );
  NAND2XLM U1685 ( .A(n1741), .B(n1739), .Y(n1693) );
  NOR2XLM U1686 ( .A(U0_UART_U0_UART_RX_edge_count[0]), .B(n1693), .Y(
        U0_UART_U0_UART_RX_U0_edge_bit_counter_N19) );
  AOI2BB2XLM U1687 ( .B0(n1274), .B1(n1776), .A0N(n1776), .A1N(n1284), .Y(
        n1296) );
  AOI2BB2XLM U1688 ( .B0(n1297), .B1(U0_SYS_CTRL_RF_WrData_reg[7]), .A0N(n1296), .A1N(n1616), .Y(n1854) );
  AOI22XLM U1689 ( .A0(U0_SYS_CTRL_state_reg[2]), .A1(
        U0_SYS_CTRL_RF_Address_reg[2]), .B0(UART_RX_SYNC[2]), .B1(n1774), .Y(
        n1276) );
  OAI211XLM U1690 ( .A0(n1277), .A1(n1276), .B0(n1773), .C0(n1275), .Y(n1336)
         );
  INVXLM U1691 ( .A(n1336), .Y(n1843) );
  NOR3XLM U1692 ( .A(U0_SYS_CTRL_state_reg[3]), .B(n1277), .C(n1774), .Y(n1280) );
  AOI21XLM U1693 ( .A0(U0_SYS_CTRL_state_reg[1]), .A1(n1279), .B0(n1278), .Y(
        n1283) );
  AOI2BB2XLM U1694 ( .B0(n1280), .B1(U0_SYS_CTRL_RF_Address_reg[1]), .A0N(
        n1283), .A1N(n1295), .Y(n1844) );
  AOI2BB2XLM U1695 ( .B0(n1280), .B1(U0_SYS_CTRL_RF_Address_reg[3]), .A0N(
        n1283), .A1N(n1286), .Y(n1845) );
  NAND2XLM U1696 ( .A(n1843), .B(n1844), .Y(n1718) );
  AOI32XLM U1697 ( .A0(U0_SYS_CTRL_state_reg[0]), .A1(n1281), .A2(
        U0_SYS_CTRL_state_reg[1]), .B0(U0_SYS_CTRL_RF_Address_reg[0]), .B1(
        n1281), .Y(n1282) );
  NAND2XLM U1698 ( .A(n1845), .B(n1342), .Y(n1337) );
  AOI21XLM U1699 ( .A0(n1776), .A1(n1774), .B0(n1284), .Y(n1714) );
  NAND2BXLM U1700 ( .AN(n1337), .B(n1714), .Y(n1722) );
  OR2X1M U1701 ( .A(n1718), .B(n1722), .Y(n1299) );
  NAND2XLM U1702 ( .A(n1299), .B(Operand_B[7]), .Y(n1285) );
  AOI2BB2XLM U1703 ( .B0(n1297), .B1(U0_SYS_CTRL_RF_WrData_reg[3]), .A0N(n1296), .A1N(n1286), .Y(n1850) );
  NAND2XLM U1704 ( .A(n1299), .B(Operand_B[3]), .Y(n1287) );
  OAI21XLM U1705 ( .A0(n1299), .A1(n1850), .B0(n1287), .Y(n826) );
  AOI2BB2XLM U1706 ( .B0(n1297), .B1(U0_SYS_CTRL_RF_WrData_reg[6]), .A0N(n1296), .A1N(n1619), .Y(n1853) );
  NAND2XLM U1707 ( .A(n1299), .B(Operand_B[6]), .Y(n1288) );
  OAI21XLM U1708 ( .A0(n1299), .A1(n1853), .B0(n1288), .Y(n778) );
  AOI2BB2XLM U1709 ( .B0(n1297), .B1(U0_SYS_CTRL_RF_WrData_reg[5]), .A0N(n1296), .A1N(n1617), .Y(n1852) );
  NAND2XLM U1710 ( .A(n1299), .B(Operand_B[5]), .Y(n1289) );
  OAI21XLM U1711 ( .A0(n1299), .A1(n1852), .B0(n1289), .Y(n794) );
  AOI2BB2XLM U1712 ( .B0(n1297), .B1(U0_SYS_CTRL_RF_WrData_reg[2]), .A0N(n1296), .A1N(n1290), .Y(n1849) );
  NAND2XLM U1713 ( .A(n1299), .B(Operand_B[2]), .Y(n1291) );
  OAI21XLM U1714 ( .A0(n1299), .A1(n1849), .B0(n1291), .Y(n842) );
  AOI2BB2XLM U1715 ( .B0(n1297), .B1(U0_SYS_CTRL_RF_WrData_reg[4]), .A0N(n1296), .A1N(n1615), .Y(n1851) );
  NAND2XLM U1716 ( .A(n1299), .B(Operand_B[4]), .Y(n1292) );
  OAI21XLM U1717 ( .A0(n1299), .A1(n1851), .B0(n1292), .Y(n810) );
  AOI2BB2XLM U1718 ( .B0(n1297), .B1(U0_SYS_CTRL_RF_WrData_reg[0]), .A0N(n1296), .A1N(n1293), .Y(n1847) );
  NAND2XLM U1719 ( .A(n1299), .B(Operand_B[0]), .Y(n1294) );
  OAI21XLM U1720 ( .A0(n1299), .A1(n1847), .B0(n1294), .Y(n874) );
  AOI2BB2XLM U1721 ( .B0(n1297), .B1(U0_SYS_CTRL_RF_WrData_reg[1]), .A0N(n1296), .A1N(n1295), .Y(n1848) );
  NAND2XLM U1722 ( .A(n1299), .B(Operand_B[1]), .Y(n1298) );
  OAI21XLM U1723 ( .A0(n1299), .A1(n1848), .B0(n1298), .Y(n858) );
  OR2X1M U1724 ( .A(n1674), .B(U0_UART_FIFO_w_addr[0]), .Y(n1746) );
  NOR3XLM U1725 ( .A(n1765), .B(n1766), .C(n1746), .Y(n1310) );
  INVXLM U1726 ( .A(n1310), .Y(n1308) );
  AOI22XLM U1727 ( .A0(n1310), .A1(n1753), .B0(n1301), .B1(n1308), .Y(n707) );
  AOI22XLM U1728 ( .A0(n1310), .A1(n1748), .B0(n1302), .B1(n1308), .Y(n747) );
  AOI22XLM U1729 ( .A0(n1310), .A1(n1747), .B0(n1303), .B1(n1308), .Y(n755) );
  AOI22XLM U1730 ( .A0(n1310), .A1(n1750), .B0(n1304), .B1(n1308), .Y(n731) );
  AOI22XLM U1731 ( .A0(n1310), .A1(n1749), .B0(n1305), .B1(n1308), .Y(n739) );
  NAND2XLM U1732 ( .A(U0_UART_FIFO_w_addr[2]), .B(n1306), .Y(n1328) );
  INVXLM U1733 ( .A(U0_UART_FIFO_u_fifo_wr_N92), .Y(n1764) );
  AOI22XLM U1734 ( .A0(n1330), .A1(U0_UART_FIFO_u_fifo_wr_N92), .B0(n1764), 
        .B1(n1328), .Y(n883) );
  AOI22XLM U1735 ( .A0(n1310), .A1(n1751), .B0(n1307), .B1(n1308), .Y(n723) );
  AOI22XLM U1736 ( .A0(n1310), .A1(n1752), .B0(n1309), .B1(n1308), .Y(n715) );
  INVXLM U1737 ( .A(n1318), .Y(n1320) );
  AOI22XLM U1738 ( .A0(n1320), .A1(n1747), .B0(n1311), .B1(n1318), .Y(n752) );
  AOI22XLM U1739 ( .A0(n1320), .A1(n1756), .B0(n1312), .B1(n1318), .Y(n696) );
  AOI22XLM U1740 ( .A0(n1320), .A1(n1748), .B0(n1313), .B1(n1318), .Y(n744) );
  AOI22XLM U1741 ( .A0(n1320), .A1(n1750), .B0(n1314), .B1(n1318), .Y(n728) );
  AOI22XLM U1742 ( .A0(n1320), .A1(n1749), .B0(n1315), .B1(n1318), .Y(n736) );
  AOI22XLM U1743 ( .A0(n1320), .A1(n1751), .B0(n1316), .B1(n1318), .Y(n720) );
  AOI22XLM U1744 ( .A0(n1320), .A1(n1752), .B0(n1317), .B1(n1318), .Y(n712) );
  AOI22XLM U1745 ( .A0(n1320), .A1(n1753), .B0(n1319), .B1(n1318), .Y(n704) );
  AOI22XLM U1746 ( .A0(n1330), .A1(n1749), .B0(n1321), .B1(n1328), .Y(n740) );
  AOI22XLM U1747 ( .A0(n1330), .A1(n1756), .B0(n1322), .B1(n1328), .Y(n700) );
  AOI22XLM U1748 ( .A0(n1330), .A1(n1752), .B0(n1323), .B1(n1328), .Y(n716) );
  AOI22XLM U1749 ( .A0(n1330), .A1(n1748), .B0(n1324), .B1(n1328), .Y(n748) );
  AOI22XLM U1750 ( .A0(n1330), .A1(n1753), .B0(n1325), .B1(n1328), .Y(n708) );
  AOI22XLM U1751 ( .A0(n1330), .A1(n1750), .B0(n1326), .B1(n1328), .Y(n732) );
  AOI22XLM U1752 ( .A0(n1330), .A1(n1747), .B0(n1327), .B1(n1328), .Y(n756) );
  AOI22XLM U1753 ( .A0(n1330), .A1(n1751), .B0(n1329), .B1(n1328), .Y(n724) );
  INVXLM U1754 ( .A(U0_UART_U0_UART_RX_bit_count[2]), .Y(n1787) );
  NAND2XLM U1755 ( .A(n1738), .B(n1787), .Y(n1331) );
  NOR3XLM U1756 ( .A(U0_UART_U0_UART_RX_bit_count[1]), .B(
        U0_UART_U0_UART_RX_bit_count[0]), .C(n1331), .Y(n1676) );
  NAND2XLM U1757 ( .A(n1676), .B(U0_UART_U0_UART_RX_bit_count[3]), .Y(n1807)
         );
  INVXLM U1758 ( .A(U0_UART_U0_UART_RX_U0_uart_fsm_current_state[0]), .Y(n1804) );
  NOR2XLM U1759 ( .A(U0_UART_U0_UART_RX_U0_uart_fsm_current_state[2]), .B(
        n1804), .Y(n1808) );
  NAND3BXLM U1760 ( .AN(n1807), .B(n1808), .C(n1786), .Y(n1334) );
  INVXLM U1761 ( .A(U0_UART_U0_UART_RX_bit_count[0]), .Y(n1740) );
  INVXLM U1762 ( .A(U0_UART_U0_UART_RX_bit_count[3]), .Y(n1675) );
  NOR4XLM U1763 ( .A(U0_UART_U0_UART_RX_bit_count[1]), .B(n1331), .C(n1740), 
        .D(n1675), .Y(n1332) );
  OAI21XLM U1764 ( .A0(U0_UART_U0_UART_RX_U0_uart_fsm_current_state[2]), .A1(
        n1332), .B0(n1804), .Y(n1333) );
  INVXLM U1765 ( .A(n1342), .Y(n1846) );
  INVXLM U1766 ( .A(n1441), .Y(n1673) );
  NOR2XLM U1767 ( .A(n1718), .B(n1337), .Y(n1417) );
  NAND2XLM U1768 ( .A(n1845), .B(n1846), .Y(n1639) );
  NOR2XLM U1769 ( .A(n1718), .B(n1639), .Y(n1418) );
  AOI22XLM U1770 ( .A0(Operand_B[5]), .A1(n1417), .B0(Operand_A[5]), .B1(n1418), .Y(n1341) );
  INVXLM U1771 ( .A(n1844), .Y(n1335) );
  NAND2XLM U1772 ( .A(n1843), .B(n1335), .Y(n1723) );
  NOR2XLM U1773 ( .A(n1723), .B(n1639), .Y(n1420) );
  NOR2XLM U1774 ( .A(n1723), .B(n1337), .Y(n1419) );
  AOI22XLM U1775 ( .A0(n1420), .A1(UART_Config[5]), .B0(n1419), .B1(
        DIV_RATIO[5]), .Y(n1340) );
  NOR2XLM U1776 ( .A(n1721), .B(n1639), .Y(n1422) );
  NOR2XLM U1777 ( .A(n1721), .B(n1337), .Y(n1421) );
  AOI22XLM U1778 ( .A0(n1422), .A1(U0_RegFile_regArr_4__5_), .B0(n1421), .B1(
        U0_RegFile_regArr_5__5_), .Y(n1339) );
  NAND2XLM U1779 ( .A(n1336), .B(n1335), .Y(n1719) );
  NOR2XLM U1780 ( .A(n1719), .B(n1639), .Y(n1424) );
  NOR2XLM U1781 ( .A(n1719), .B(n1337), .Y(n1423) );
  AOI22XLM U1782 ( .A0(n1424), .A1(U0_RegFile_regArr_6__5_), .B0(n1423), .B1(
        U0_RegFile_regArr_7__5_), .Y(n1338) );
  NAND4XLM U1783 ( .A(n1341), .B(n1340), .C(n1339), .D(n1338), .Y(n1349) );
  NAND2XLM U1784 ( .A(n1846), .B(n1343), .Y(n1715) );
  NOR2XLM U1785 ( .A(n1715), .B(n1718), .Y(n1430) );
  NAND2XLM U1786 ( .A(n1343), .B(n1342), .Y(n1713) );
  NOR2XLM U1787 ( .A(n1713), .B(n1718), .Y(n1429) );
  AOI22XLM U1788 ( .A0(n1430), .A1(U0_RegFile_regArr_8__5_), .B0(n1429), .B1(
        U0_RegFile_regArr_9__5_), .Y(n1347) );
  NOR2XLM U1789 ( .A(n1723), .B(n1713), .Y(n1431) );
  AOI22XLM U1790 ( .A0(n1432), .A1(U0_RegFile_regArr_10__5_), .B0(n1431), .B1(
        U0_RegFile_regArr_11__5_), .Y(n1346) );
  NOR2XLM U1791 ( .A(n1715), .B(n1721), .Y(n1434) );
  NOR2XLM U1792 ( .A(n1713), .B(n1721), .Y(n1433) );
  AOI22XLM U1793 ( .A0(n1434), .A1(U0_RegFile_regArr_12__5_), .B0(n1433), .B1(
        U0_RegFile_regArr_13__5_), .Y(n1345) );
  NOR2XLM U1794 ( .A(n1715), .B(n1719), .Y(n1436) );
  NOR2XLM U1795 ( .A(n1713), .B(n1719), .Y(n1435) );
  AOI22XLM U1796 ( .A0(n1436), .A1(U0_RegFile_regArr_14__5_), .B0(n1435), .B1(
        U0_RegFile_regArr_15__5_), .Y(n1344) );
  OAI32XLM U1797 ( .A0(n1673), .A1(n1349), .A2(n1348), .B0(RF_RdData[5]), .B1(
        n1441), .Y(n1350) );
  INVXLM U1798 ( .A(n1350), .Y(n907) );
  AOI22XLM U1799 ( .A0(Operand_B[1]), .A1(n1417), .B0(Operand_A[1]), .B1(n1418), .Y(n1354) );
  AOI22XLM U1800 ( .A0(n1420), .A1(UART_Config[1]), .B0(n1419), .B1(
        DIV_RATIO[1]), .Y(n1353) );
  AOI22XLM U1801 ( .A0(n1422), .A1(U0_RegFile_regArr_4__1_), .B0(n1421), .B1(
        U0_RegFile_regArr_5__1_), .Y(n1352) );
  AOI22XLM U1802 ( .A0(n1424), .A1(U0_RegFile_regArr_6__1_), .B0(n1423), .B1(
        U0_RegFile_regArr_7__1_), .Y(n1351) );
  NAND4XLM U1803 ( .A(n1354), .B(n1353), .C(n1352), .D(n1351), .Y(n1360) );
  AOI22XLM U1804 ( .A0(n1430), .A1(U0_RegFile_regArr_8__1_), .B0(n1429), .B1(
        U0_RegFile_regArr_9__1_), .Y(n1358) );
  AOI22XLM U1805 ( .A0(n1432), .A1(U0_RegFile_regArr_10__1_), .B0(n1431), .B1(
        U0_RegFile_regArr_11__1_), .Y(n1357) );
  AOI22XLM U1806 ( .A0(n1434), .A1(U0_RegFile_regArr_12__1_), .B0(n1433), .B1(
        U0_RegFile_regArr_13__1_), .Y(n1356) );
  AOI22XLM U1807 ( .A0(n1436), .A1(U0_RegFile_regArr_14__1_), .B0(n1435), .B1(
        U0_RegFile_regArr_15__1_), .Y(n1355) );
  NAND4XLM U1808 ( .A(n1358), .B(n1357), .C(n1356), .D(n1355), .Y(n1359) );
  OAI32XLM U1809 ( .A0(n1673), .A1(n1360), .A2(n1359), .B0(RF_RdData[1]), .B1(
        n1441), .Y(n1361) );
  INVXLM U1810 ( .A(n1361), .Y(n911) );
  AOI22XLM U1811 ( .A0(Operand_B[3]), .A1(n1417), .B0(Operand_A[3]), .B1(n1418), .Y(n1365) );
  AOI22XLM U1812 ( .A0(n1420), .A1(UART_Config[3]), .B0(n1419), .B1(
        DIV_RATIO[3]), .Y(n1364) );
  AOI22XLM U1813 ( .A0(n1422), .A1(U0_RegFile_regArr_4__3_), .B0(n1421), .B1(
        U0_RegFile_regArr_5__3_), .Y(n1363) );
  AOI22XLM U1814 ( .A0(n1424), .A1(U0_RegFile_regArr_6__3_), .B0(n1423), .B1(
        U0_RegFile_regArr_7__3_), .Y(n1362) );
  NAND4XLM U1815 ( .A(n1365), .B(n1364), .C(n1363), .D(n1362), .Y(n1371) );
  AOI22XLM U1816 ( .A0(n1430), .A1(U0_RegFile_regArr_8__3_), .B0(n1429), .B1(
        U0_RegFile_regArr_9__3_), .Y(n1369) );
  AOI22XLM U1817 ( .A0(n1432), .A1(U0_RegFile_regArr_10__3_), .B0(n1431), .B1(
        U0_RegFile_regArr_11__3_), .Y(n1368) );
  AOI22XLM U1818 ( .A0(n1434), .A1(U0_RegFile_regArr_12__3_), .B0(n1433), .B1(
        U0_RegFile_regArr_13__3_), .Y(n1367) );
  AOI22XLM U1819 ( .A0(n1436), .A1(U0_RegFile_regArr_14__3_), .B0(n1435), .B1(
        U0_RegFile_regArr_15__3_), .Y(n1366) );
  NAND4XLM U1820 ( .A(n1369), .B(n1368), .C(n1367), .D(n1366), .Y(n1370) );
  OAI32XLM U1821 ( .A0(n1673), .A1(n1371), .A2(n1370), .B0(RF_RdData[3]), .B1(
        n1441), .Y(n1372) );
  AOI22XLM U1822 ( .A0(Operand_B[6]), .A1(n1417), .B0(Operand_A[6]), .B1(n1418), .Y(n1376) );
  AOI22XLM U1823 ( .A0(n1420), .A1(UART_Config[6]), .B0(n1419), .B1(
        DIV_RATIO[6]), .Y(n1375) );
  AOI22XLM U1824 ( .A0(n1422), .A1(U0_RegFile_regArr_4__6_), .B0(n1421), .B1(
        U0_RegFile_regArr_5__6_), .Y(n1374) );
  AOI22XLM U1825 ( .A0(n1424), .A1(U0_RegFile_regArr_6__6_), .B0(n1423), .B1(
        U0_RegFile_regArr_7__6_), .Y(n1373) );
  NAND4XLM U1826 ( .A(n1376), .B(n1375), .C(n1374), .D(n1373), .Y(n1382) );
  AOI22XLM U1827 ( .A0(n1430), .A1(U0_RegFile_regArr_8__6_), .B0(n1429), .B1(
        U0_RegFile_regArr_9__6_), .Y(n1380) );
  AOI22XLM U1828 ( .A0(n1434), .A1(U0_RegFile_regArr_12__6_), .B0(n1433), .B1(
        U0_RegFile_regArr_13__6_), .Y(n1378) );
  AOI22XLM U1829 ( .A0(n1436), .A1(U0_RegFile_regArr_14__6_), .B0(n1435), .B1(
        U0_RegFile_regArr_15__6_), .Y(n1377) );
  NAND4XLM U1830 ( .A(n1380), .B(n1379), .C(n1378), .D(n1377), .Y(n1381) );
  OAI32XLM U1831 ( .A0(n1673), .A1(n1382), .A2(n1381), .B0(RF_RdData[6]), .B1(
        n1441), .Y(n1383) );
  INVXLM U1832 ( .A(n1383), .Y(n906) );
  AOI22XLM U1833 ( .A0(Operand_B[4]), .A1(n1417), .B0(Operand_A[4]), .B1(n1418), .Y(n1387) );
  AOI22XLM U1834 ( .A0(n1420), .A1(UART_Config[4]), .B0(n1419), .B1(
        DIV_RATIO[4]), .Y(n1386) );
  AOI22XLM U1835 ( .A0(n1422), .A1(U0_RegFile_regArr_4__4_), .B0(n1421), .B1(
        U0_RegFile_regArr_5__4_), .Y(n1385) );
  AOI22XLM U1836 ( .A0(n1424), .A1(U0_RegFile_regArr_6__4_), .B0(n1423), .B1(
        U0_RegFile_regArr_7__4_), .Y(n1384) );
  NAND4XLM U1837 ( .A(n1387), .B(n1386), .C(n1385), .D(n1384), .Y(n1393) );
  AOI22XLM U1838 ( .A0(n1430), .A1(U0_RegFile_regArr_8__4_), .B0(n1429), .B1(
        U0_RegFile_regArr_9__4_), .Y(n1391) );
  AOI22XLM U1839 ( .A0(n1432), .A1(U0_RegFile_regArr_10__4_), .B0(n1431), .B1(
        U0_RegFile_regArr_11__4_), .Y(n1390) );
  AOI22XLM U1840 ( .A0(n1436), .A1(U0_RegFile_regArr_14__4_), .B0(n1435), .B1(
        SO[2]), .Y(n1388) );
  NAND4XLM U1841 ( .A(n1391), .B(n1390), .C(n1389), .D(n1388), .Y(n1392) );
  OAI32XLM U1842 ( .A0(n1673), .A1(n1393), .A2(n1392), .B0(RF_RdData[4]), .B1(
        n1441), .Y(n1394) );
  INVXLM U1843 ( .A(n1394), .Y(n908) );
  AOI22XLM U1844 ( .A0(Operand_B[7]), .A1(n1417), .B0(Operand_A[7]), .B1(n1418), .Y(n1398) );
  AOI22XLM U1845 ( .A0(n1420), .A1(UART_Config[7]), .B0(n1419), .B1(
        DIV_RATIO[7]), .Y(n1397) );
  AOI22XLM U1846 ( .A0(n1422), .A1(U0_RegFile_regArr_4__7_), .B0(n1421), .B1(
        U0_RegFile_regArr_5__7_), .Y(n1396) );
  AOI22XLM U1847 ( .A0(n1424), .A1(U0_RegFile_regArr_6__7_), .B0(n1423), .B1(
        U0_RegFile_regArr_7__7_), .Y(n1395) );
  NAND4XLM U1848 ( .A(n1398), .B(n1397), .C(n1396), .D(n1395), .Y(n1404) );
  AOI22XLM U1849 ( .A0(n1430), .A1(U0_RegFile_regArr_8__7_), .B0(n1429), .B1(
        U0_RegFile_regArr_9__7_), .Y(n1402) );
  AOI22XLM U1850 ( .A0(n1432), .A1(U0_RegFile_regArr_10__7_), .B0(n1431), .B1(
        U0_RegFile_regArr_11__7_), .Y(n1401) );
  AOI22XLM U1851 ( .A0(n1434), .A1(U0_RegFile_regArr_12__7_), .B0(n1433), .B1(
        U0_RegFile_regArr_13__7_), .Y(n1400) );
  AOI22XLM U1852 ( .A0(n1436), .A1(U0_RegFile_regArr_14__7_), .B0(n1435), .B1(
        U0_RegFile_regArr_15__7_), .Y(n1399) );
  NAND4XLM U1853 ( .A(n1402), .B(n1401), .C(n1400), .D(n1399), .Y(n1403) );
  INVXLM U1854 ( .A(n1405), .Y(n905) );
  AOI22XLM U1855 ( .A0(Operand_B[2]), .A1(n1417), .B0(Operand_A[2]), .B1(n1418), .Y(n1409) );
  AOI22XLM U1856 ( .A0(n1420), .A1(UART_Config[2]), .B0(n1419), .B1(
        DIV_RATIO[2]), .Y(n1408) );
  AOI22XLM U1857 ( .A0(n1422), .A1(U0_RegFile_regArr_4__2_), .B0(n1421), .B1(
        U0_RegFile_regArr_5__2_), .Y(n1407) );
  AOI22XLM U1858 ( .A0(n1424), .A1(U0_RegFile_regArr_6__2_), .B0(n1423), .B1(
        U0_RegFile_regArr_7__2_), .Y(n1406) );
  NAND4XLM U1859 ( .A(n1409), .B(n1408), .C(n1407), .D(n1406), .Y(n1415) );
  AOI22XLM U1860 ( .A0(n1430), .A1(U0_RegFile_regArr_8__2_), .B0(n1429), .B1(
        U0_RegFile_regArr_9__2_), .Y(n1413) );
  AOI22XLM U1861 ( .A0(n1432), .A1(U0_RegFile_regArr_10__2_), .B0(n1431), .B1(
        U0_RegFile_regArr_11__2_), .Y(n1412) );
  AOI22XLM U1862 ( .A0(n1434), .A1(U0_RegFile_regArr_12__2_), .B0(n1433), .B1(
        U0_RegFile_regArr_13__2_), .Y(n1411) );
  NAND4XLM U1863 ( .A(n1413), .B(n1412), .C(n1411), .D(n1410), .Y(n1414) );
  OAI32XLM U1864 ( .A0(n1673), .A1(n1415), .A2(n1414), .B0(RF_RdData[2]), .B1(
        n1441), .Y(n1416) );
  INVXLM U1865 ( .A(n1416), .Y(n910) );
  AOI22XLM U1866 ( .A0(Operand_A[0]), .A1(n1418), .B0(Operand_B[0]), .B1(n1417), .Y(n1428) );
  AOI22XLM U1867 ( .A0(UART_Config[0]), .A1(n1420), .B0(DIV_RATIO[0]), .B1(
        n1419), .Y(n1427) );
  AOI22XLM U1868 ( .A0(U0_RegFile_regArr_4__0_), .A1(n1422), .B0(
        U0_RegFile_regArr_5__0_), .B1(n1421), .Y(n1426) );
  AOI22XLM U1869 ( .A0(U0_RegFile_regArr_6__0_), .A1(n1424), .B0(
        U0_RegFile_regArr_7__0_), .B1(n1423), .Y(n1425) );
  NAND4XLM U1870 ( .A(n1428), .B(n1427), .C(n1426), .D(n1425), .Y(n1443) );
  AOI22XLM U1871 ( .A0(U0_RegFile_regArr_8__0_), .A1(n1430), .B0(
        U0_RegFile_regArr_9__0_), .B1(n1429), .Y(n1440) );
  AOI22XLM U1872 ( .A0(U0_RegFile_regArr_10__0_), .A1(n1432), .B0(
        U0_RegFile_regArr_11__0_), .B1(n1431), .Y(n1439) );
  AOI22XLM U1873 ( .A0(U0_RegFile_regArr_12__0_), .A1(n1434), .B0(
        U0_RegFile_regArr_13__0_), .B1(n1433), .Y(n1438) );
  NAND4XLM U1874 ( .A(n1440), .B(n1439), .C(n1438), .D(n1437), .Y(n1442) );
  OAI32XLM U1875 ( .A0(n1673), .A1(n1443), .A2(n1442), .B0(RF_RdData[0]), .B1(
        n1441), .Y(n1444) );
  INVXLM U1876 ( .A(n1444), .Y(n912) );
  NAND2XLM U1877 ( .A(n1445), .B(n1643), .Y(n1679) );
  NOR4XLM U1878 ( .A(UART_Config[6]), .B(UART_Config[5]), .C(n1649), .D(n1679), 
        .Y(DIV_RATIO_RX[3]) );
  NOR4XLM U1879 ( .A(UART_Config[4]), .B(UART_Config[6]), .C(n1648), .D(n1679), 
        .Y(DIV_RATIO_RX[2]) );
  NAND2XLM U1880 ( .A(n1457), .B(n1446), .Y(n1456) );
  INVXLM U1881 ( .A(UART_RX_OUT[4]), .Y(n1631) );
  INVXLM U1882 ( .A(UART_RX_OUT[5]), .Y(n1632) );
  AOI22XLM U1883 ( .A0(UART_RX_OUT[5]), .A1(UART_RX_OUT[4]), .B0(n1631), .B1(
        n1632), .Y(n1454) );
  INVXLM U1884 ( .A(UART_RX_OUT[7]), .Y(n1629) );
  INVXLM U1885 ( .A(UART_Config[1]), .Y(n1640) );
  INVXLM U1886 ( .A(UART_RX_OUT[6]), .Y(n1630) );
  AOI22XLM U1887 ( .A0(UART_RX_OUT[6]), .A1(UART_RX_OUT[0]), .B0(n1633), .B1(
        n1630), .Y(n1450) );
  AOI22XLM U1888 ( .A0(UART_RX_OUT[3]), .A1(UART_RX_OUT[2]), .B0(n1636), .B1(
        n1637), .Y(n1448) );
  INVXLM U1889 ( .A(U0_UART_U0_UART_RX_sampled_bit), .Y(n1712) );
  AOI22XLM U1890 ( .A0(U0_UART_U0_UART_RX_sampled_bit), .A1(UART_RX_OUT[1]), 
        .B0(n1634), .B1(n1712), .Y(n1447) );
  XOR2XLM U1891 ( .A(n1448), .B(n1447), .Y(n1449) );
  XOR3XLM U1892 ( .A(n1451), .B(n1450), .C(n1449), .Y(n1453) );
  NOR2XLM U1893 ( .A(n1454), .B(n1453), .Y(n1452) );
  AO21XLM U1894 ( .A0(n1456), .A1(parity_error), .B0(n1455), .Y(n674) );
  NAND2XLM U1895 ( .A(U0_UART_U0_UART_RX_U0_uart_fsm_current_state[2]), .B(
        n1457), .Y(n1459) );
  NAND2XLM U1896 ( .A(n1459), .B(framing_error), .Y(n1458) );
  OAI21XLM U1897 ( .A0(n1459), .A1(U0_UART_U0_UART_RX_sampled_bit), .B0(n1458), 
        .Y(n682) );
  AOI2BB2XLM U1898 ( .B0(n1559), .B1(n1577), .A0N(n1684), .A1N(n1555), .Y(
        n1468) );
  INVXLM U1899 ( .A(n1483), .Y(n1553) );
  OAI22XLM U1900 ( .A0(n1514), .A1(n1460), .B0(n1682), .B1(n1553), .Y(n1466)
         );
  NOR2XLM U1901 ( .A(Operand_B[6]), .B(Operand_A[6]), .Y(n1461) );
  INVXLM U1902 ( .A(n1492), .Y(n1570) );
  NAND2XLM U1903 ( .A(n1568), .B(C25M_DATA15_6), .Y(n1462) );
  OAI31XLM U1904 ( .A0(Operand_A[6]), .A1(Operand_B[6]), .A2(n1516), .B0(n1462), .Y(n1463) );
  AO21XLM U1905 ( .A0(n1546), .A1(intadd_0_SUM_4_), .B0(n1463), .Y(n1464) );
  NOR3XLM U1906 ( .A(n1466), .B(n1465), .C(n1464), .Y(n1467) );
  OAI211XLM U1907 ( .A0(n1469), .A1(n1547), .B0(n1468), .C0(n1467), .Y(
        U0_ALU_ALU_OUT_Comb[6]) );
  NOR2XLM U1908 ( .A(Operand_B[2]), .B(Operand_A[2]), .Y(n1470) );
  AOI22XLM U1909 ( .A0(n1559), .A1(n1656), .B0(n1525), .B1(n1470), .Y(n1474)
         );
  OAI21XLM U1910 ( .A0(n1685), .A1(n1700), .B0(n1526), .Y(n1471) );
  AOI22XLM U1911 ( .A0(n1685), .A1(n1700), .B0(n1554), .B1(n1471), .Y(n1472)
         );
  AOI21XLM U1912 ( .A0(Operand_A[3]), .A1(n1483), .B0(n1472), .Y(n1473) );
  OAI211XLM U1913 ( .A0(n1656), .A1(n1570), .B0(n1474), .C0(n1473), .Y(n1475)
         );
  OAI2BB1XLM U1914 ( .A0N(n1568), .A1N(C25M_DATA15_2), .B0(n1477), .Y(n1478)
         );
  AOI21XLM U1915 ( .A0(n1546), .A1(intadd_0_SUM_0_), .B0(n1478), .Y(n1479) );
  OAI21XLM U1916 ( .A0(n1686), .A1(n1555), .B0(n1479), .Y(
        U0_ALU_ALU_OUT_Comb[2]) );
  NOR2XLM U1917 ( .A(n1651), .B(n1683), .Y(n1612) );
  NOR2XLM U1918 ( .A(Operand_B[4]), .B(Operand_A[4]), .Y(n1480) );
  AOI22XLM U1919 ( .A0(n1559), .A1(n1612), .B0(n1525), .B1(n1480), .Y(n1485)
         );
  OAI21XLM U1920 ( .A0(n1683), .A1(n1651), .B0(n1526), .Y(n1481) );
  AOI22XLM U1921 ( .A0(n1683), .A1(n1651), .B0(n1554), .B1(n1481), .Y(n1482)
         );
  AOI21XLM U1922 ( .A0(Operand_A[5]), .A1(n1483), .B0(n1482), .Y(n1484) );
  OAI211XLM U1923 ( .A0(n1612), .A1(n1570), .B0(n1485), .C0(n1484), .Y(n1486)
         );
  AOI21XLM U1924 ( .A0(n1551), .A1(n1487), .B0(n1486), .Y(n1488) );
  OAI2BB1XLM U1925 ( .A0N(n1568), .A1N(C25M_DATA15_4), .B0(n1488), .Y(n1489)
         );
  OAI21XLM U1926 ( .A0(n1555), .A1(n1703), .B0(n1490), .Y(
        U0_ALU_ALU_OUT_Comb[4]) );
  NAND2XLM U1927 ( .A(n1653), .B(n1684), .Y(n1501) );
  NAND2XLM U1928 ( .A(Operand_B[5]), .B(Operand_A[5]), .Y(n1597) );
  OAI22XLM U1929 ( .A0(n1706), .A1(n1553), .B0(n1683), .B1(n1555), .Y(n1491)
         );
  AOI21XLM U1930 ( .A0(n1492), .A1(n1597), .B0(n1491), .Y(n1500) );
  OAI2B2XLM U1931 ( .A1N(n1559), .A0(n1597), .B0(n1516), .B1(n1501), .Y(n1497)
         );
  INVXLM U1932 ( .A(n1495), .Y(n1496) );
  AOI211XLM U1933 ( .A0(n1551), .A1(n1498), .B0(n1497), .C0(n1496), .Y(n1499)
         );
  NOR2XLM U1934 ( .A(Operand_B[3]), .B(Operand_A[3]), .Y(n1505) );
  NOR2XLM U1935 ( .A(Operand_A[3]), .B(n1601), .Y(n1530) );
  AOI221XLM U1936 ( .A0(n1530), .A1(n1526), .B0(n1533), .B1(n1526), .C0(n1502), 
        .Y(n1503) );
  OAI211XLM U1937 ( .A0(n1505), .A1(n1554), .B0(n1504), .C0(n1503), .Y(n1506)
         );
  AOI21XLM U1938 ( .A0(n1551), .A1(n1507), .B0(n1506), .Y(n1508) );
  OAI2BB1XLM U1939 ( .A0N(n1568), .A1N(C25M_DATA15_3), .B0(n1508), .Y(n1509)
         );
  AOI21XLM U1940 ( .A0(n1546), .A1(intadd_0_SUM_1_), .B0(n1509), .Y(n1510) );
  OAI21XLM U1941 ( .A0(n1555), .A1(n1685), .B0(n1510), .Y(
        U0_ALU_ALU_OUT_Comb[3]) );
  OAI22XLM U1942 ( .A0(n1511), .A1(n1547), .B0(n1706), .B1(n1555), .Y(n1519)
         );
  OAI211XLM U1943 ( .A0(Operand_A[7]), .A1(n1704), .B0(n1512), .C0(n1604), .Y(
        n1513) );
  NAND2XLM U1944 ( .A(n1605), .B(n1682), .Y(n1515) );
  OAI2BB2XLM U1945 ( .B0(n1514), .B1(n1513), .A0N(n1515), .A1N(n1544), .Y(
        n1518) );
  OAI2BB2XLM U1946 ( .B0(n1516), .B1(n1515), .A0N(n1559), .A1N(n1523), .Y(
        n1517) );
  NOR3XLM U1947 ( .A(n1519), .B(n1518), .C(n1517), .Y(n1520) );
  OAI2BB1XLM U1948 ( .A0N(n1568), .A1N(C25M_DATA15_7), .B0(n1520), .Y(n1521)
         );
  AOI21XLM U1949 ( .A0(n1546), .A1(intadd_0_SUM_5_), .B0(n1521), .Y(n1522) );
  OAI21XLM U1950 ( .A0(n1523), .A1(n1570), .B0(n1522), .Y(
        U0_ALU_ALU_OUT_Comb[7]) );
  NAND2XLM U1951 ( .A(Operand_A[1]), .B(Operand_B[1]), .Y(n1699) );
  NAND3XLM U1952 ( .A(Operand_A[0]), .B(n1546), .C(Operand_B[1]), .Y(n1556) );
  INVXLM U1953 ( .A(n1556), .Y(n1524) );
  AOI221XLM U1954 ( .A0(n1526), .A1(Operand_B[1]), .B0(n1525), .B1(n1604), 
        .C0(n1524), .Y(n1566) );
  NAND2XLM U1955 ( .A(Operand_B[6]), .B(n1706), .Y(n1540) );
  NAND2XLM U1956 ( .A(Operand_A[4]), .B(n1651), .Y(n1536) );
  OAI211XLM U1957 ( .A0(n1537), .A1(n1536), .B0(n1535), .C0(n1534), .Y(n1539)
         );
  AOI21XLM U1958 ( .A0(n1540), .A1(n1539), .B0(n1538), .Y(n1542) );
  AOI211XLM U1959 ( .A0(n1543), .A1(n1542), .B0(n1541), .C0(n1841), .Y(n1564)
         );
  AOI31XLM U1960 ( .A0(Operand_B[0]), .A1(n1546), .A2(n1545), .B0(n1544), .Y(
        n1548) );
  AOI221XLM U1961 ( .A0(Operand_B[1]), .A1(n1548), .B0(n1547), .B1(n1548), 
        .C0(n1686), .Y(n1549) );
  AOI211XLM U1962 ( .A0(n1552), .A1(n1551), .B0(n1550), .C0(n1549), .Y(n1561)
         );
  OAI22XLM U1963 ( .A0(n1554), .A1(n1604), .B0(n1685), .B1(n1553), .Y(n1558)
         );
  AOI211XLM U1964 ( .A0(n1559), .A1(n1571), .B0(n1558), .C0(n1557), .Y(n1560)
         );
  AOI21XLM U1965 ( .A0(n1564), .A1(n1563), .B0(n1562), .Y(n1565) );
  OAI21XLM U1966 ( .A0(Operand_A[1]), .A1(n1566), .B0(n1565), .Y(n1567) );
  AOI21XLM U1967 ( .A0(n1568), .A1(C25M_DATA15_1), .B0(n1567), .Y(n1569) );
  OAI21XLM U1968 ( .A0(n1571), .A1(n1570), .B0(n1569), .Y(
        U0_ALU_ALU_OUT_Comb[1]) );
  NAND2XLM U1969 ( .A(Operand_A[7]), .B(Operand_B[2]), .Y(n1595) );
  NOR2XLM U1970 ( .A(n1605), .B(n1685), .Y(n1596) );
  NOR4XLM U1971 ( .A(n1682), .B(n1604), .C(n1700), .D(n1706), .Y(n1602) );
  AOI2B1XLM U1972 ( .A1N(n1595), .A0(n1596), .B0(n1602), .Y(n1599) );
  NAND2XLM U1973 ( .A(Operand_B[6]), .B(Operand_A[4]), .Y(n1598) );
  INVXLM U1974 ( .A(n1572), .Y(intadd_4_A_2_) );
  ADDFX1M U1975 ( .A(n1575), .B(n1574), .CI(n1573), .CO(n1110), .S(
        intadd_0_B_11_) );
  ADDFX1M U1976 ( .A(n1578), .B(n1577), .CI(n1576), .CO(n1575), .S(
        intadd_3_B_2_) );
  NOR2XLM U1977 ( .A(n1682), .B(n1651), .Y(n1581) );
  NOR2XLM U1978 ( .A(n1653), .B(n1706), .Y(n1580) );
  NOR2XLM U1979 ( .A(n1605), .B(n1683), .Y(n1579) );
  ADDFX1M U1980 ( .A(n1581), .B(n1580), .CI(n1579), .CO(intadd_3_A_2_), .S(
        intadd_3_A_1_) );
  NOR3XLM U1981 ( .A(n1698), .B(n1700), .C(n1699), .Y(n1697) );
  NOR2XLM U1982 ( .A(n1698), .B(n1601), .Y(n1583) );
  NAND2XLM U1983 ( .A(Operand_B[2]), .B(Operand_A[1]), .Y(n1584) );
  OAI21XLM U1984 ( .A0(n1697), .A1(n1584), .B0(n1583), .Y(n1582) );
  OAI31XLM U1985 ( .A0(n1697), .A1(n1583), .A2(n1584), .B0(n1582), .Y(
        intadd_0_B_1_) );
  AOI2B1XLM U1986 ( .A1N(n1584), .A0(n1583), .B0(n1697), .Y(n1588) );
  NAND2XLM U1987 ( .A(Operand_B[3]), .B(Operand_A[1]), .Y(n1587) );
  NOR4XLM U1988 ( .A(n1704), .B(n1604), .C(n1685), .D(n1703), .Y(n1701) );
  INVXLM U1989 ( .A(n1701), .Y(n1586) );
  INVXLM U1990 ( .A(n1585), .Y(intadd_0_B_2_) );
  ADDFX1M U1991 ( .A(n1588), .B(n1587), .CI(n1586), .CO(n1589), .S(n1585) );
  INVXLM U1992 ( .A(n1589), .Y(intadd_0_B_3_) );
  NOR2XLM U1993 ( .A(n1700), .B(n1684), .Y(n1593) );
  NAND2XLM U1994 ( .A(Operand_B[1]), .B(Operand_A[6]), .Y(n1590) );
  NOR4XLM U1995 ( .A(n1704), .B(n1682), .C(n1604), .D(n1706), .Y(n1611) );
  AOI221XLM U1996 ( .A0(n1682), .A1(n1590), .B0(n1704), .B1(n1590), .C0(n1611), 
        .Y(n1592) );
  NOR2XLM U1997 ( .A(n1698), .B(n1605), .Y(n1591) );
  ADDFX1M U1998 ( .A(n1593), .B(n1592), .CI(n1591), .CO(intadd_1_A_1_), .S(
        intadd_5_B_1_) );
  OAI21XLM U1999 ( .A0(n1602), .A1(n1595), .B0(n1596), .Y(n1594) );
  OAI31XLM U2000 ( .A0(n1602), .A1(n1596), .A2(n1595), .B0(n1594), .Y(
        intadd_1_B_2_) );
  INVXLM U2002 ( .A(n1600), .Y(intadd_4_B_1_) );
  NOR2XLM U2003 ( .A(n1601), .B(n1684), .Y(n1614) );
  NAND2XLM U2004 ( .A(Operand_B[2]), .B(Operand_A[6]), .Y(n1603) );
  AOI221XLM U2005 ( .A0(n1604), .A1(n1603), .B0(n1682), .B1(n1603), .C0(n1602), 
        .Y(n1613) );
  NOR2XLM U2006 ( .A(n1605), .B(n1686), .Y(n1610) );
  NOR2XLM U2007 ( .A(n1653), .B(n1703), .Y(n1609) );
  NOR2XLM U2008 ( .A(n1653), .B(n1683), .Y(n1606) );
  ADDFX1M U2009 ( .A(n1608), .B(n1607), .CI(n1606), .CO(intadd_1_A_3_), .S(
        intadd_2_A_3_) );
  ADDFX1M U2010 ( .A(n1611), .B(n1610), .CI(n1609), .CO(n1607), .S(
        intadd_2_A_2_) );
  AOI22XLM U2012 ( .A0(U0_ref_sync_enable_pulse), .A1(n1631), .B0(n1615), .B1(
        n1618), .Y(n678) );
  AOI22XLM U2013 ( .A0(U0_ref_sync_enable_pulse), .A1(n1629), .B0(n1616), .B1(
        n1618), .Y(n681) );
  AOI22XLM U2014 ( .A0(U0_ref_sync_enable_pulse), .A1(n1632), .B0(n1617), .B1(
        n1618), .Y(n679) );
  AOI22XLM U2015 ( .A0(U0_ref_sync_enable_pulse), .A1(n1630), .B0(n1619), .B1(
        n1618), .Y(n680) );
  INVXLM U2016 ( .A(n1667), .Y(n1622) );
  OAI21XLM U2017 ( .A0(n1621), .A1(n1622), .B0(
        U0_UART_FIFO_u_fifo_rd_rd_ptr_3_), .Y(n1620) );
  NAND3XLM U2018 ( .A(U0_UART_U0_UART_RX_edge_count[0]), .B(
        U0_UART_U0_UART_RX_edge_count[1]), .C(U0_UART_U0_UART_RX_edge_count[2]), .Y(n1690) );
  INVXLM U2019 ( .A(n1690), .Y(n1692) );
  NAND3XLM U2020 ( .A(U0_UART_U0_UART_RX_edge_count[4]), .B(
        U0_UART_U0_UART_RX_edge_count[3]), .C(n1692), .Y(n1694) );
  INVXLM U2021 ( .A(n1694), .Y(n1696) );
  AOI211XLM U2022 ( .A0(n1626), .A1(n1625), .B0(n1696), .C0(n1693), .Y(
        U0_UART_U0_UART_RX_U0_edge_bit_counter_N23) );
  NAND2XLM U2023 ( .A(U0_UART_U0_UART_RX_edge_count[0]), .B(
        U0_UART_U0_UART_RX_edge_count[1]), .Y(n1627) );
  AOI211XLM U2024 ( .A0(n1628), .A1(n1627), .B0(n1692), .C0(n1693), .Y(
        U0_UART_U0_UART_RX_U0_edge_bit_counter_N21) );
  NAND3XLM U2025 ( .A(n1738), .B(
        U0_UART_U0_UART_RX_U0_uart_fsm_current_state[1]), .C(n1808), .Y(n1635)
         );
  AOI22XLM U2026 ( .A0(n1638), .A1(n1636), .B0(n1634), .B1(n1635), .Y(n684) );
  AOI22XLM U2027 ( .A0(n1638), .A1(n1712), .B0(n1629), .B1(n1635), .Y(n690) );
  AOI22XLM U2028 ( .A0(n1638), .A1(n1629), .B0(n1630), .B1(n1635), .Y(n689) );
  AOI22XLM U2029 ( .A0(n1638), .A1(n1630), .B0(n1632), .B1(n1635), .Y(n688) );
  AOI22XLM U2030 ( .A0(n1638), .A1(n1632), .B0(n1631), .B1(n1635), .Y(n687) );
  AOI22XLM U2031 ( .A0(n1638), .A1(n1634), .B0(n1633), .B1(n1635), .Y(n683) );
  AOI22XLM U2032 ( .A0(n1638), .A1(n1637), .B0(n1636), .B1(n1635), .Y(n685) );
  NAND2BXLM U2033 ( .AN(n1639), .B(n1714), .Y(n1720) );
  NOR2XLM U2034 ( .A(n1723), .B(n1720), .Y(n1644) );
  INVXLM U2035 ( .A(n1644), .Y(n1642) );
  AOI22XLM U2036 ( .A0(n1644), .A1(n1853), .B0(n1681), .B1(n1642), .Y(n779) );
  AOI22XLM U2037 ( .A0(n1644), .A1(n1848), .B0(n1640), .B1(n1642), .Y(n859) );
  AOI22XLM U2038 ( .A0(n1644), .A1(n1847), .B0(n1786), .B1(n1642), .Y(n887) );
  AOI22XLM U2039 ( .A0(n1644), .A1(n1854), .B0(n1643), .B1(n1642), .Y(n763) );
  INVXLM U2040 ( .A(n1739), .Y(n1737) );
  NAND2XLM U2041 ( .A(U0_UART_U0_UART_RX_bit_count[1]), .B(n1742), .Y(n1745)
         );
  AOI31XLM U2042 ( .A0(n1738), .A1(U0_UART_U0_UART_RX_bit_count[1]), .A2(
        U0_UART_U0_UART_RX_bit_count[0]), .B0(n1737), .Y(n1744) );
  AOI21XLM U2043 ( .A0(n1787), .A1(n1739), .B0(n1744), .Y(n1645) );
  OAI32XLM U2044 ( .A0(U0_UART_U0_UART_RX_bit_count[3]), .A1(n1787), .A2(n1745), .B0(n1645), .B1(n1675), .Y(n759) );
  NOR2XLM U2045 ( .A(UART_Config[4]), .B(UART_Config[5]), .Y(n1646) );
  INVXLM U2046 ( .A(n1646), .Y(n1680) );
  AOI221XLM U2047 ( .A0(UART_Config[6]), .A1(n1680), .B0(n1681), .B1(n1646), 
        .C0(n1679), .Y(n1647) );
  OAI21XLM U2048 ( .A0(n1649), .A1(n1648), .B0(n1647), .Y(DIV_RATIO_RX[0]) );
  XOR2XLM U2049 ( .A(DP_OP_152J1_125_249_n43), .B(Operand_B[0]), .Y(
        DP_OP_152J1_125_249_n29) );
  XOR2XLM U2050 ( .A(DP_OP_152J1_125_249_n43), .B(Operand_B[3]), .Y(
        DP_OP_152J1_125_249_n26) );
  XOR2XLM U2051 ( .A(DP_OP_152J1_125_249_n43), .B(Operand_B[5]), .Y(
        DP_OP_152J1_125_249_n24) );
  XOR2XLM U2052 ( .A(DP_OP_152J1_125_249_n43), .B(Operand_B[6]), .Y(
        DP_OP_152J1_125_249_n23) );
  XOR2XLM U2053 ( .A(DP_OP_152J1_125_249_n43), .B(Operand_B[7]), .Y(
        DP_OP_152J1_125_249_n22) );
  NAND2XLM U2054 ( .A(Operand_B[1]), .B(Operand_A[3]), .Y(n1650) );
  AOI221XLM U2055 ( .A0(n1683), .A1(n1650), .B0(n1704), .B1(n1650), .C0(
        intadd_6_A_0_), .Y(n1655) );
  NOR2XLM U2056 ( .A(n1698), .B(n1651), .Y(n1654) );
  NOR2XLM U2057 ( .A(n1700), .B(n1703), .Y(n1659) );
  NAND2XLM U2058 ( .A(Operand_B[1]), .B(Operand_A[4]), .Y(n1652) );
  AOI221XLM U2059 ( .A0(n1684), .A1(n1652), .B0(n1704), .B1(n1652), .C0(
        intadd_5_A_0_), .Y(n1658) );
  NOR2XLM U2060 ( .A(n1698), .B(n1653), .Y(n1657) );
  ADDFX1M U2061 ( .A(n1656), .B(n1655), .CI(n1654), .CO(n1661), .S(
        intadd_0_A_2_) );
  ADDFX1M U2063 ( .A(n1661), .B(intadd_6_SUM_0_), .CI(n1660), .CO(
        intadd_0_A_4_), .S(intadd_0_A_3_) );
  ADDFX1M U2064 ( .A(intadd_2_SUM_0_), .B(intadd_6_SUM_1_), .CI(
        intadd_5_SUM_0_), .CO(intadd_0_B_5_), .S(intadd_0_B_4_) );
  OAI21XLM U2065 ( .A0(U0_UART_U0_UART_TX_U0_fsm_current_state[0]), .A1(n1665), 
        .B0(n1663), .Y(U0_UART_U0_UART_TX_U0_fsm_busy_c) );
  OAI21XLM U2066 ( .A0(n1662), .A1(U0_UART_U0_UART_TX_U0_fsm_current_state[2]), 
        .B0(n1663), .Y(n1664) );
  AO2B2XLM U2067 ( .B0(n1665), .B1(n1664), .A0(n1709), .A1N(n1663), .Y(
        U0_UART_U0_UART_TX_U0_fsm_next_state[0]) );
  OA21XLM U2068 ( .A0(U0_UART_FIFO_r_addr[0]), .A1(n1667), .B0(n1666), .Y(n672) );
  AOI211XLM U2069 ( .A0(n1776), .A1(n1770), .B0(U0_SYS_CTRL_state_reg[3]), 
        .C0(U0_SYS_CTRL_state_reg[2]), .Y(n1670) );
  AOI22XLM U2070 ( .A0(UART_RX_V_SYNC), .A1(n1670), .B0(n1669), .B1(n1668), 
        .Y(n1672) );
  AOI32XLM U2071 ( .A0(U0_SYS_CTRL_state_reg[1]), .A1(n1672), .A2(n1769), .B0(
        n1671), .B1(n1672), .Y(U0_SYS_CTRL_state_next[2]) );
  OAI2BB1XLM U2072 ( .A0N(RF_RdData_VLD), .A1N(n1714), .B0(n1673), .Y(n691) );
  OAI2BB1XLM U2073 ( .A0N(U0_UART_FIFO_w_addr[0]), .A1N(n1674), .B0(n1746), 
        .Y(n886) );
  AND2X1M U2074 ( .A(n1676), .B(n1675), .Y(n1810) );
  NAND3BXLM U2075 ( .AN(U0_UART_U0_UART_RX_strt_glitch), .B(n1810), .C(n1808), 
        .Y(n1677) );
  OAI211XLM U2076 ( .A0(U0_UART_U0_UART_RX_U0_uart_fsm_current_state[2]), .A1(
        n1813), .B0(n1678), .C0(n1677), .Y(
        U0_UART_U0_UART_RX_U0_uart_fsm_next_state[1]) );
  NOR3XLM U2077 ( .A(n1681), .B(n1680), .C(n1679), .Y(DIV_RATIO_RX[1]) );
  XOR2XLM U2078 ( .A(DP_OP_152J1_125_249_n43), .B(Operand_B[4]), .Y(
        DP_OP_152J1_125_249_n25) );
  XOR2XLM U2079 ( .A(DP_OP_152J1_125_249_n43), .B(Operand_B[2]), .Y(
        DP_OP_152J1_125_249_n27) );
  XOR2XLM U2080 ( .A(DP_OP_152J1_125_249_n43), .B(Operand_B[1]), .Y(
        DP_OP_152J1_125_249_n28) );
  NOR2XLM U2081 ( .A(n1718), .B(n1720), .Y(n1687) );
  MXI2XLM U2082 ( .A(n1682), .B(n1854), .S0(n1687), .Y(n757) );
  MXI2XLM U2083 ( .A(n1706), .B(n1853), .S0(n1687), .Y(n777) );
  MXI2XLM U2084 ( .A(n1683), .B(n1851), .S0(n1687), .Y(n809) );
  MXI2XLM U2085 ( .A(n1684), .B(n1852), .S0(n1687), .Y(n793) );
  MXI2XLM U2086 ( .A(n1685), .B(n1849), .S0(n1687), .Y(n841) );
  MXI2XLM U2087 ( .A(n1703), .B(n1850), .S0(n1687), .Y(n825) );
  MXI2XLM U2088 ( .A(n1686), .B(n1848), .S0(n1687), .Y(n857) );
  MXI2XLM U2089 ( .A(n1698), .B(n1847), .S0(n1687), .Y(n873) );
  AOI221XLM U2090 ( .A0(U0_UART_U0_UART_RX_edge_count[0]), .A1(
        U0_UART_U0_UART_RX_edge_count[1]), .B0(n1689), .B1(n1688), .C0(n1693), 
        .Y(U0_UART_U0_UART_RX_U0_edge_bit_counter_N20) );
  AOI221XLM U2091 ( .A0(U0_UART_U0_UART_RX_edge_count[3]), .A1(n1692), .B0(
        n1691), .B1(n1690), .C0(n1693), .Y(
        U0_UART_U0_UART_RX_U0_edge_bit_counter_N22) );
  AOI221XLM U2092 ( .A0(U0_UART_U0_UART_RX_edge_count[5]), .A1(n1696), .B0(
        n1695), .B1(n1694), .C0(n1693), .Y(
        U0_UART_U0_UART_RX_U0_edge_bit_counter_N24) );
  AOI221XLM U2093 ( .A0(n1700), .A1(n1699), .B0(n1698), .B1(n1699), .C0(n1697), 
        .Y(intadd_0_B_0_) );
  NAND2XLM U2094 ( .A(Operand_B[1]), .B(Operand_A[2]), .Y(n1702) );
  AOI221XLM U2095 ( .A0(n1703), .A1(n1702), .B0(n1704), .B1(n1702), .C0(n1701), 
        .Y(intadd_0_A_1_) );
  NAND2XLM U2096 ( .A(Operand_B[1]), .B(Operand_A[5]), .Y(n1705) );
  AOI221XLM U2097 ( .A0(n1706), .A1(n1705), .B0(n1704), .B1(n1705), .C0(
        intadd_1_A_0_), .Y(intadd_2_B_0_) );
  AOI2B1XLM U2098 ( .A1N(U0_UART_U0_UART_TX_U0_Serializer_ser_count[2]), .A0(
        n1708), .B0(n1707), .Y(U0_UART_U0_UART_TX_U0_Serializer_N25) );
  AOI221XLM U2099 ( .A0(UART_Config[0]), .A1(
        U0_UART_U0_UART_TX_U0_fsm_current_state[0]), .B0(n1709), .B1(
        U0_UART_U0_UART_TX_U0_fsm_current_state[0]), .C0(n1759), .Y(
        U0_UART_U0_UART_TX_U0_fsm_next_state[2]) );
  AOI22XLM U2100 ( .A0(U0_UART_FIFO_r_addr[2]), .A1(U0_UART_FIFO_r_addr[1]), 
        .B0(n1763), .B1(n1710), .Y(U0_UART_FIFO_u_fifo_rd_N90) );
  AOI2BB2XLM U2101 ( .B0(U0_UART_FIFO_r_addr[2]), .B1(
        U0_UART_FIFO_u_fifo_rd_rd_ptr_3_), .A0N(
        U0_UART_FIFO_u_fifo_rd_rd_ptr_3_), .A1N(U0_UART_FIFO_r_addr[2]), .Y(
        U0_UART_FIFO_u_fifo_rd_N91) );
  NOR2XLM U2102 ( .A(U0_UART_U0_UART_RX_U0_uart_fsm_current_state[1]), .B(
        n1711), .Y(n1812) );
  AOI2BB2XLM U2103 ( .B0(n1812), .B1(n1712), .A0N(
        U0_UART_U0_UART_RX_strt_glitch), .A1N(n1812), .Y(n901) );
  NAND2BXLM U2104 ( .AN(n1713), .B(n1714), .Y(n1716) );
  NOR2XLM U2105 ( .A(n1719), .B(n1716), .Y(n1724) );
  AOI2BB2XLM U2106 ( .B0(n1724), .B1(n1847), .A0N(U0_RegFile_regArr_15__0_), 
        .A1N(n1724), .Y(n900) );
  NAND2BXLM U2107 ( .AN(n1715), .B(n1714), .Y(n1717) );
  NOR2XLM U2108 ( .A(n1719), .B(n1717), .Y(n1725) );
  AOI2BB2XLM U2109 ( .B0(n1725), .B1(n1847), .A0N(U0_RegFile_regArr_14__0_), 
        .A1N(n1725), .Y(n899) );
  NOR2XLM U2110 ( .A(n1721), .B(n1716), .Y(n1726) );
  AOI2BB2XLM U2111 ( .B0(n1726), .B1(n1847), .A0N(U0_RegFile_regArr_13__0_), 
        .A1N(n1726), .Y(n898) );
  NOR2XLM U2112 ( .A(n1721), .B(n1717), .Y(n1727) );
  AOI2BB2XLM U2113 ( .B0(n1727), .B1(n1847), .A0N(U0_RegFile_regArr_12__0_), 
        .A1N(n1727), .Y(n897) );
  NOR2XLM U2114 ( .A(n1723), .B(n1716), .Y(n1728) );
  AOI2BB2XLM U2115 ( .B0(n1728), .B1(n1847), .A0N(U0_RegFile_regArr_11__0_), 
        .A1N(n1728), .Y(n896) );
  NOR2XLM U2116 ( .A(n1723), .B(n1717), .Y(n1729) );
  AOI2BB2XLM U2117 ( .B0(n1729), .B1(n1847), .A0N(U0_RegFile_regArr_10__0_), 
        .A1N(n1729), .Y(n895) );
  NOR2XLM U2118 ( .A(n1718), .B(n1716), .Y(n1730) );
  AOI2BB2XLM U2119 ( .B0(n1730), .B1(n1847), .A0N(U0_RegFile_regArr_9__0_), 
        .A1N(n1730), .Y(n894) );
  NOR2XLM U2120 ( .A(n1718), .B(n1717), .Y(n1731) );
  AOI2BB2XLM U2121 ( .B0(n1731), .B1(n1847), .A0N(U0_RegFile_regArr_8__0_), 
        .A1N(n1731), .Y(n893) );
  NOR2XLM U2122 ( .A(n1719), .B(n1722), .Y(n1732) );
  AOI2BB2XLM U2123 ( .B0(n1732), .B1(n1847), .A0N(U0_RegFile_regArr_7__0_), 
        .A1N(n1732), .Y(n892) );
  NOR2XLM U2124 ( .A(n1719), .B(n1720), .Y(n1733) );
  AOI2BB2XLM U2125 ( .B0(n1733), .B1(n1847), .A0N(U0_RegFile_regArr_6__0_), 
        .A1N(n1733), .Y(n891) );
  NOR2XLM U2126 ( .A(n1721), .B(n1722), .Y(n1734) );
  AOI2BB2XLM U2127 ( .B0(n1734), .B1(n1847), .A0N(U0_RegFile_regArr_5__0_), 
        .A1N(n1734), .Y(n890) );
  NOR2XLM U2128 ( .A(n1721), .B(n1720), .Y(n1735) );
  AOI2BB2XLM U2129 ( .B0(n1735), .B1(n1847), .A0N(U0_RegFile_regArr_4__0_), 
        .A1N(n1735), .Y(n889) );
  NOR2XLM U2130 ( .A(n1723), .B(n1722), .Y(n1736) );
  AOI2BB2XLM U2131 ( .B0(n1736), .B1(n1847), .A0N(DIV_RATIO[0]), .A1N(n1736), 
        .Y(n888) );
  AOI2BB2XLM U2132 ( .B0(n1724), .B1(n1848), .A0N(U0_RegFile_regArr_15__1_), 
        .A1N(n1724), .Y(n872) );
  AOI2BB2XLM U2133 ( .B0(n1725), .B1(n1848), .A0N(U0_RegFile_regArr_14__1_), 
        .A1N(n1725), .Y(n871) );
  AOI2BB2XLM U2134 ( .B0(n1726), .B1(n1848), .A0N(U0_RegFile_regArr_13__1_), 
        .A1N(n1726), .Y(n870) );
  AOI2BB2XLM U2135 ( .B0(n1727), .B1(n1848), .A0N(U0_RegFile_regArr_12__1_), 
        .A1N(n1727), .Y(n869) );
  AOI2BB2XLM U2136 ( .B0(n1728), .B1(n1848), .A0N(U0_RegFile_regArr_11__1_), 
        .A1N(n1728), .Y(n868) );
  AOI2BB2XLM U2137 ( .B0(n1729), .B1(n1848), .A0N(U0_RegFile_regArr_10__1_), 
        .A1N(n1729), .Y(n867) );
  AOI2BB2XLM U2138 ( .B0(n1730), .B1(n1848), .A0N(U0_RegFile_regArr_9__1_), 
        .A1N(n1730), .Y(n866) );
  AOI2BB2XLM U2139 ( .B0(n1731), .B1(n1848), .A0N(U0_RegFile_regArr_8__1_), 
        .A1N(n1731), .Y(n865) );
  AOI2BB2XLM U2140 ( .B0(n1732), .B1(n1848), .A0N(U0_RegFile_regArr_7__1_), 
        .A1N(n1732), .Y(n864) );
  AOI2BB2XLM U2141 ( .B0(n1733), .B1(n1848), .A0N(U0_RegFile_regArr_6__1_), 
        .A1N(n1733), .Y(n863) );
  AOI2BB2XLM U2142 ( .B0(n1734), .B1(n1848), .A0N(U0_RegFile_regArr_5__1_), 
        .A1N(n1734), .Y(n862) );
  AOI2BB2XLM U2143 ( .B0(n1735), .B1(n1848), .A0N(U0_RegFile_regArr_4__1_), 
        .A1N(n1735), .Y(n861) );
  AOI2BB2XLM U2144 ( .B0(n1736), .B1(n1848), .A0N(DIV_RATIO[1]), .A1N(n1736), 
        .Y(n860) );
  AOI2BB2XLM U2145 ( .B0(n1724), .B1(n1849), .A0N(U0_RegFile_regArr_15__2_), 
        .A1N(n1724), .Y(n856) );
  AOI2BB2XLM U2146 ( .B0(n1725), .B1(n1849), .A0N(U0_RegFile_regArr_14__2_), 
        .A1N(n1725), .Y(n855) );
  AOI2BB2XLM U2147 ( .B0(n1726), .B1(n1849), .A0N(U0_RegFile_regArr_13__2_), 
        .A1N(n1726), .Y(n854) );
  AOI2BB2XLM U2148 ( .B0(n1727), .B1(n1849), .A0N(U0_RegFile_regArr_12__2_), 
        .A1N(n1727), .Y(n853) );
  AOI2BB2XLM U2149 ( .B0(n1728), .B1(n1849), .A0N(U0_RegFile_regArr_11__2_), 
        .A1N(n1728), .Y(n852) );
  AOI2BB2XLM U2150 ( .B0(n1729), .B1(n1849), .A0N(U0_RegFile_regArr_10__2_), 
        .A1N(n1729), .Y(n851) );
  AOI2BB2XLM U2151 ( .B0(n1730), .B1(n1849), .A0N(U0_RegFile_regArr_9__2_), 
        .A1N(n1730), .Y(n850) );
  AOI2BB2XLM U2152 ( .B0(n1731), .B1(n1849), .A0N(U0_RegFile_regArr_8__2_), 
        .A1N(n1731), .Y(n849) );
  AOI2BB2XLM U2153 ( .B0(n1732), .B1(n1849), .A0N(U0_RegFile_regArr_7__2_), 
        .A1N(n1732), .Y(n848) );
  AOI2BB2XLM U2154 ( .B0(n1733), .B1(n1849), .A0N(U0_RegFile_regArr_6__2_), 
        .A1N(n1733), .Y(n847) );
  AOI2BB2XLM U2155 ( .B0(n1734), .B1(n1849), .A0N(U0_RegFile_regArr_5__2_), 
        .A1N(n1734), .Y(n846) );
  AOI2BB2XLM U2156 ( .B0(n1735), .B1(n1849), .A0N(U0_RegFile_regArr_4__2_), 
        .A1N(n1735), .Y(n845) );
  AOI2BB2XLM U2157 ( .B0(n1736), .B1(n1849), .A0N(DIV_RATIO[2]), .A1N(n1736), 
        .Y(n844) );
  AOI2BB2XLM U2158 ( .B0(n1724), .B1(n1850), .A0N(U0_RegFile_regArr_15__3_), 
        .A1N(n1724), .Y(n840) );
  AOI2BB2XLM U2159 ( .B0(n1725), .B1(n1850), .A0N(U0_RegFile_regArr_14__3_), 
        .A1N(n1725), .Y(n839) );
  AOI2BB2XLM U2160 ( .B0(n1726), .B1(n1850), .A0N(U0_RegFile_regArr_13__3_), 
        .A1N(n1726), .Y(n838) );
  AOI2BB2XLM U2161 ( .B0(n1727), .B1(n1850), .A0N(U0_RegFile_regArr_12__3_), 
        .A1N(n1727), .Y(n837) );
  AOI2BB2XLM U2162 ( .B0(n1728), .B1(n1850), .A0N(U0_RegFile_regArr_11__3_), 
        .A1N(n1728), .Y(n836) );
  AOI2BB2XLM U2163 ( .B0(n1729), .B1(n1850), .A0N(U0_RegFile_regArr_10__3_), 
        .A1N(n1729), .Y(n835) );
  AOI2BB2XLM U2164 ( .B0(n1730), .B1(n1850), .A0N(U0_RegFile_regArr_9__3_), 
        .A1N(n1730), .Y(n834) );
  AOI2BB2XLM U2165 ( .B0(n1731), .B1(n1850), .A0N(U0_RegFile_regArr_8__3_), 
        .A1N(n1731), .Y(n833) );
  AOI2BB2XLM U2166 ( .B0(n1732), .B1(n1850), .A0N(U0_RegFile_regArr_7__3_), 
        .A1N(n1732), .Y(n832) );
  AOI2BB2XLM U2167 ( .B0(n1733), .B1(n1850), .A0N(U0_RegFile_regArr_6__3_), 
        .A1N(n1733), .Y(n831) );
  AOI2BB2XLM U2168 ( .B0(n1734), .B1(n1850), .A0N(U0_RegFile_regArr_5__3_), 
        .A1N(n1734), .Y(n830) );
  AOI2BB2XLM U2169 ( .B0(n1735), .B1(n1850), .A0N(U0_RegFile_regArr_4__3_), 
        .A1N(n1735), .Y(n829) );
  AOI2BB2XLM U2170 ( .B0(n1736), .B1(n1850), .A0N(DIV_RATIO[3]), .A1N(n1736), 
        .Y(n828) );
  AOI2BB2XLM U2171 ( .B0(n1724), .B1(n1851), .A0N(SO[2]), .A1N(n1724), .Y(n824) );
  AOI2BB2XLM U2172 ( .B0(n1725), .B1(n1851), .A0N(U0_RegFile_regArr_14__4_), 
        .A1N(n1725), .Y(n823) );
  AOI2BB2XLM U2173 ( .B0(n1726), .B1(n1851), .A0N(U0_RegFile_regArr_13__4_), 
        .A1N(n1726), .Y(n822) );
  AOI2BB2XLM U2174 ( .B0(n1727), .B1(n1851), .A0N(U0_RegFile_regArr_12__4_), 
        .A1N(n1727), .Y(n821) );
  AOI2BB2XLM U2175 ( .B0(n1728), .B1(n1851), .A0N(U0_RegFile_regArr_11__4_), 
        .A1N(n1728), .Y(n820) );
  AOI2BB2XLM U2176 ( .B0(n1729), .B1(n1851), .A0N(U0_RegFile_regArr_10__4_), 
        .A1N(n1729), .Y(n819) );
  AOI2BB2XLM U2177 ( .B0(n1730), .B1(n1851), .A0N(U0_RegFile_regArr_9__4_), 
        .A1N(n1730), .Y(n818) );
  AOI2BB2XLM U2178 ( .B0(n1731), .B1(n1851), .A0N(U0_RegFile_regArr_8__4_), 
        .A1N(n1731), .Y(n817) );
  AOI2BB2XLM U2179 ( .B0(n1732), .B1(n1851), .A0N(U0_RegFile_regArr_7__4_), 
        .A1N(n1732), .Y(n816) );
  AOI2BB2XLM U2180 ( .B0(n1733), .B1(n1851), .A0N(U0_RegFile_regArr_6__4_), 
        .A1N(n1733), .Y(n815) );
  AOI2BB2XLM U2181 ( .B0(n1734), .B1(n1851), .A0N(U0_RegFile_regArr_5__4_), 
        .A1N(n1734), .Y(n814) );
  AOI2BB2XLM U2182 ( .B0(n1735), .B1(n1851), .A0N(U0_RegFile_regArr_4__4_), 
        .A1N(n1735), .Y(n813) );
  AOI2BB2XLM U2183 ( .B0(n1736), .B1(n1851), .A0N(DIV_RATIO[4]), .A1N(n1736), 
        .Y(n812) );
  AOI2BB2XLM U2184 ( .B0(n1724), .B1(n1852), .A0N(U0_RegFile_regArr_15__5_), 
        .A1N(n1724), .Y(n808) );
  AOI2BB2XLM U2185 ( .B0(n1725), .B1(n1852), .A0N(U0_RegFile_regArr_14__5_), 
        .A1N(n1725), .Y(n807) );
  AOI2BB2XLM U2186 ( .B0(n1726), .B1(n1852), .A0N(U0_RegFile_regArr_13__5_), 
        .A1N(n1726), .Y(n806) );
  AOI2BB2XLM U2187 ( .B0(n1727), .B1(n1852), .A0N(U0_RegFile_regArr_12__5_), 
        .A1N(n1727), .Y(n805) );
  AOI2BB2XLM U2188 ( .B0(n1728), .B1(n1852), .A0N(U0_RegFile_regArr_11__5_), 
        .A1N(n1728), .Y(n804) );
  AOI2BB2XLM U2189 ( .B0(n1729), .B1(n1852), .A0N(U0_RegFile_regArr_10__5_), 
        .A1N(n1729), .Y(n803) );
  AOI2BB2XLM U2190 ( .B0(n1730), .B1(n1852), .A0N(U0_RegFile_regArr_9__5_), 
        .A1N(n1730), .Y(n802) );
  AOI2BB2XLM U2191 ( .B0(n1731), .B1(n1852), .A0N(U0_RegFile_regArr_8__5_), 
        .A1N(n1731), .Y(n801) );
  AOI2BB2XLM U2192 ( .B0(n1732), .B1(n1852), .A0N(U0_RegFile_regArr_7__5_), 
        .A1N(n1732), .Y(n800) );
  AOI2BB2XLM U2193 ( .B0(n1733), .B1(n1852), .A0N(U0_RegFile_regArr_6__5_), 
        .A1N(n1733), .Y(n799) );
  AOI2BB2XLM U2194 ( .B0(n1734), .B1(n1852), .A0N(U0_RegFile_regArr_5__5_), 
        .A1N(n1734), .Y(n798) );
  AOI2BB2XLM U2195 ( .B0(n1735), .B1(n1852), .A0N(U0_RegFile_regArr_4__5_), 
        .A1N(n1735), .Y(n797) );
  AOI2BB2XLM U2196 ( .B0(n1736), .B1(n1852), .A0N(DIV_RATIO[5]), .A1N(n1736), 
        .Y(n796) );
  AOI2BB2XLM U2197 ( .B0(n1724), .B1(n1853), .A0N(U0_RegFile_regArr_15__6_), 
        .A1N(n1724), .Y(n792) );
  AOI2BB2XLM U2198 ( .B0(n1725), .B1(n1853), .A0N(U0_RegFile_regArr_14__6_), 
        .A1N(n1725), .Y(n791) );
  AOI2BB2XLM U2199 ( .B0(n1726), .B1(n1853), .A0N(U0_RegFile_regArr_13__6_), 
        .A1N(n1726), .Y(n790) );
  AOI2BB2XLM U2200 ( .B0(n1727), .B1(n1853), .A0N(U0_RegFile_regArr_12__6_), 
        .A1N(n1727), .Y(n789) );
  AOI2BB2XLM U2201 ( .B0(n1728), .B1(n1853), .A0N(U0_RegFile_regArr_11__6_), 
        .A1N(n1728), .Y(n788) );
  AOI2BB2XLM U2202 ( .B0(n1729), .B1(n1853), .A0N(U0_RegFile_regArr_10__6_), 
        .A1N(n1729), .Y(n787) );
  AOI2BB2XLM U2203 ( .B0(n1730), .B1(n1853), .A0N(U0_RegFile_regArr_9__6_), 
        .A1N(n1730), .Y(n786) );
  AOI2BB2XLM U2204 ( .B0(n1731), .B1(n1853), .A0N(U0_RegFile_regArr_8__6_), 
        .A1N(n1731), .Y(n785) );
  AOI2BB2XLM U2205 ( .B0(n1732), .B1(n1853), .A0N(U0_RegFile_regArr_7__6_), 
        .A1N(n1732), .Y(n784) );
  AOI2BB2XLM U2206 ( .B0(n1733), .B1(n1853), .A0N(U0_RegFile_regArr_6__6_), 
        .A1N(n1733), .Y(n783) );
  AOI2BB2XLM U2207 ( .B0(n1734), .B1(n1853), .A0N(U0_RegFile_regArr_5__6_), 
        .A1N(n1734), .Y(n782) );
  AOI2BB2XLM U2208 ( .B0(n1735), .B1(n1853), .A0N(U0_RegFile_regArr_4__6_), 
        .A1N(n1735), .Y(n781) );
  AOI2BB2XLM U2209 ( .B0(n1736), .B1(n1853), .A0N(DIV_RATIO[6]), .A1N(n1736), 
        .Y(n780) );
  AOI2BB2XLM U2210 ( .B0(n1724), .B1(n1854), .A0N(U0_RegFile_regArr_15__7_), 
        .A1N(n1724), .Y(n776) );
  AOI2BB2XLM U2211 ( .B0(n1725), .B1(n1854), .A0N(U0_RegFile_regArr_14__7_), 
        .A1N(n1725), .Y(n775) );
  AOI2BB2XLM U2212 ( .B0(n1726), .B1(n1854), .A0N(U0_RegFile_regArr_13__7_), 
        .A1N(n1726), .Y(n774) );
  AOI2BB2XLM U2213 ( .B0(n1727), .B1(n1854), .A0N(U0_RegFile_regArr_12__7_), 
        .A1N(n1727), .Y(n773) );
  AOI2BB2XLM U2214 ( .B0(n1728), .B1(n1854), .A0N(U0_RegFile_regArr_11__7_), 
        .A1N(n1728), .Y(n772) );
  AOI2BB2XLM U2215 ( .B0(n1729), .B1(n1854), .A0N(U0_RegFile_regArr_10__7_), 
        .A1N(n1729), .Y(n771) );
  AOI2BB2XLM U2216 ( .B0(n1730), .B1(n1854), .A0N(U0_RegFile_regArr_9__7_), 
        .A1N(n1730), .Y(n770) );
  AOI2BB2XLM U2217 ( .B0(n1731), .B1(n1854), .A0N(U0_RegFile_regArr_8__7_), 
        .A1N(n1731), .Y(n769) );
  AOI2BB2XLM U2218 ( .B0(n1732), .B1(n1854), .A0N(U0_RegFile_regArr_7__7_), 
        .A1N(n1732), .Y(n768) );
  AOI2BB2XLM U2219 ( .B0(n1733), .B1(n1854), .A0N(U0_RegFile_regArr_6__7_), 
        .A1N(n1733), .Y(n767) );
  AOI2BB2XLM U2220 ( .B0(n1734), .B1(n1854), .A0N(U0_RegFile_regArr_5__7_), 
        .A1N(n1734), .Y(n766) );
  AOI2BB2XLM U2221 ( .B0(n1735), .B1(n1854), .A0N(U0_RegFile_regArr_4__7_), 
        .A1N(n1735), .Y(n765) );
  AOI2BB2XLM U2222 ( .B0(n1736), .B1(n1854), .A0N(DIV_RATIO[7]), .A1N(n1736), 
        .Y(n764) );
  AOI221XLM U2223 ( .A0(n1738), .A1(U0_UART_U0_UART_RX_bit_count[0]), .B0(
        n1741), .B1(n1740), .C0(n1737), .Y(n762) );
  OAI21XLM U2224 ( .A0(n1741), .A1(n1740), .B0(n1739), .Y(n1743) );
  AOI2BB2XLM U2225 ( .B0(U0_UART_U0_UART_RX_bit_count[1]), .B1(n1743), .A0N(
        n1742), .A1N(U0_UART_U0_UART_RX_bit_count[1]), .Y(n761) );
  AOI2BB2XLM U2226 ( .B0(n1745), .B1(n1787), .A0N(n1787), .A1N(n1744), .Y(n760) );
  AOI2BB2XLM U2227 ( .B0(n1754), .B1(n1747), .A0N(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[32]), .A1N(n1754), .Y(n753) );
  AOI2BB2XLM U2228 ( .B0(n1755), .B1(n1747), .A0N(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[16]), .A1N(n1755), .Y(n751) );
  AOI2BB2XLM U2229 ( .B0(n1757), .B1(n1747), .A0N(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[0]), .A1N(n1757), .Y(n749) );
  AOI2BB2XLM U2230 ( .B0(n1754), .B1(n1748), .A0N(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[33]), .A1N(n1754), .Y(n745) );
  AOI2BB2XLM U2231 ( .B0(n1755), .B1(n1748), .A0N(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[17]), .A1N(n1755), .Y(n743) );
  AOI2BB2XLM U2232 ( .B0(n1757), .B1(n1748), .A0N(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[1]), .A1N(n1757), .Y(n741) );
  AOI2BB2XLM U2233 ( .B0(n1754), .B1(n1749), .A0N(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[34]), .A1N(n1754), .Y(n737) );
  AOI2BB2XLM U2234 ( .B0(n1755), .B1(n1749), .A0N(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[18]), .A1N(n1755), .Y(n735) );
  AOI2BB2XLM U2235 ( .B0(n1757), .B1(n1749), .A0N(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[2]), .A1N(n1757), .Y(n733) );
  AOI2BB2XLM U2236 ( .B0(n1754), .B1(n1750), .A0N(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[35]), .A1N(n1754), .Y(n729) );
  AOI2BB2XLM U2237 ( .B0(n1755), .B1(n1750), .A0N(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[19]), .A1N(n1755), .Y(n727) );
  AOI2BB2XLM U2238 ( .B0(n1757), .B1(n1750), .A0N(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[3]), .A1N(n1757), .Y(n725) );
  AOI2BB2XLM U2239 ( .B0(n1754), .B1(n1751), .A0N(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[36]), .A1N(n1754), .Y(n721) );
  AOI2BB2XLM U2240 ( .B0(n1755), .B1(n1751), .A0N(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[20]), .A1N(n1755), .Y(n719) );
  AOI2BB2XLM U2241 ( .B0(n1757), .B1(n1751), .A0N(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[4]), .A1N(n1757), .Y(n717) );
  AOI2BB2XLM U2242 ( .B0(n1754), .B1(n1752), .A0N(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[37]), .A1N(n1754), .Y(n713) );
  AOI2BB2XLM U2243 ( .B0(n1755), .B1(n1752), .A0N(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[21]), .A1N(n1755), .Y(n711) );
  AOI2BB2XLM U2244 ( .B0(n1757), .B1(n1752), .A0N(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[5]), .A1N(n1757), .Y(n709) );
  AOI2BB2XLM U2245 ( .B0(n1754), .B1(n1753), .A0N(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[38]), .A1N(n1754), .Y(n705) );
  AOI2BB2XLM U2246 ( .B0(n1755), .B1(n1753), .A0N(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[22]), .A1N(n1755), .Y(n703) );
  AOI2BB2XLM U2247 ( .B0(n1757), .B1(n1753), .A0N(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[6]), .A1N(n1757), .Y(n701) );
  AOI2BB2XLM U2248 ( .B0(n1754), .B1(n1756), .A0N(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[39]), .A1N(n1754), .Y(n697) );
  AOI2BB2XLM U2249 ( .B0(n1755), .B1(n1756), .A0N(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[23]), .A1N(n1755), .Y(n695) );
  AOI2BB2XLM U2250 ( .B0(n1757), .B1(n1756), .A0N(
        U0_UART_FIFO_u_fifo_mem_FIFO_MEM[7]), .A1N(n1757), .Y(n693) );
  OAI22XLM U2251 ( .A0(U0_UART_U0_UART_TX_parity), .A1(n1759), .B0(
        U0_UART_U0_UART_TX_U0_fsm_current_state[1]), .B1(n1758), .Y(n1761) );
  OAI2BB2XLM U2252 ( .B0(U0_UART_U0_UART_TX_U0_fsm_current_state[0]), .B1(
        n1761), .A0N(U0_UART_U0_UART_TX_ser_data), .A1N(n1760), .Y(
        U0_UART_U0_UART_TX_U0_mux_mux_out) );
  AOI22XLM U2254 ( .A0(U0_UART_FIFO_r_addr[0]), .A1(U0_UART_FIFO_r_addr[1]), 
        .B0(n1763), .B1(n1762), .Y(U0_UART_FIFO_u_fifo_rd_N89) );
  AOI22XLM U2256 ( .A0(U0_UART_FIFO_w_addr[2]), .A1(U0_UART_FIFO_u_fifo_wr_N92), .B0(n1764), .B1(n1765), .Y(U0_UART_FIFO_u_fifo_wr_N91) );
  AOI22XLM U2257 ( .A0(U0_UART_FIFO_w_addr[2]), .A1(U0_UART_FIFO_w_addr[1]), 
        .B0(n1766), .B1(n1765), .Y(U0_UART_FIFO_u_fifo_wr_N90) );
  AOI2BB2XLM U2258 ( .B0(U0_UART_FIFO_w_addr[1]), .B1(U0_UART_FIFO_w_addr[0]), 
        .A0N(U0_UART_FIFO_w_addr[0]), .A1N(U0_UART_FIFO_w_addr[1]), .Y(
        U0_UART_FIFO_u_fifo_wr_N89) );
  INVXLM U2259 ( .A(ALU_OUT_VLD), .Y(n1780) );
  AOI31XLM U2260 ( .A0(UART_RX_SYNC[4]), .A1(UART_RX_SYNC[0]), .A2(n1768), 
        .B0(n1767), .Y(n1778) );
  AOI32XLM U2261 ( .A0(n1778), .A1(n1770), .A2(n1769), .B0(
        U0_SYS_CTRL_state_reg[0]), .B1(UART_RX_V_SYNC), .Y(n1772) );
  AOI21XLM U2262 ( .A0(U0_SYS_CTRL_state_reg[0]), .A1(n1778), .B0(
        U0_SYS_CTRL_state_reg[2]), .Y(n1771) );
  AOI221XLM U2263 ( .A0(n1774), .A1(n1773), .B0(n1772), .B1(n1773), .C0(n1771), 
        .Y(n1775) );
  OAI222XLM U2264 ( .A0(n1780), .A1(n1779), .B0(n1778), .B1(n1777), .C0(n1776), 
        .C1(n1775), .Y(U0_SYS_CTRL_state_next[1]) );
  NAND2XLM U2265 ( .A(U0_UART_U0_UART_RX_edge_count[0]), .B(n1791), .Y(n1783)
         );
  NOR2XLM U2266 ( .A(U0_UART_U0_UART_RX_bit_count[1]), .B(
        U0_UART_U0_UART_RX_bit_count[0]), .Y(n1781) );
  AOI21XLM U2267 ( .A0(U0_UART_U0_UART_RX_edge_count[2]), .A1(n1784), .B0(
        n1781), .Y(n1782) );
  OAI211XLM U2268 ( .A0(U0_UART_U0_UART_RX_edge_count[2]), .A1(n1784), .B0(
        n1783), .C0(n1782), .Y(n1785) );
  AOI221XLM U2269 ( .A0(U0_UART_U0_UART_RX_bit_count[0]), .A1(UART_Config[0]), 
        .B0(U0_UART_U0_UART_RX_bit_count[1]), .B1(n1786), .C0(n1785), .Y(n1788) );
  NAND4BXLM U2270 ( .AN(n1789), .B(U0_UART_U0_UART_RX_bit_count[3]), .C(n1788), 
        .D(n1787), .Y(n1806) );
  INVXLM U2271 ( .A(n1790), .Y(n1795) );
  NOR2XLM U2272 ( .A(U0_UART_U0_UART_RX_edge_count[0]), .B(n1791), .Y(n1794)
         );
  OAI21XLM U2273 ( .A0(n1796), .A1(n1795), .B0(n1792), .Y(n1793) );
  AOI211XLM U2274 ( .A0(n1796), .A1(n1795), .B0(n1794), .C0(n1793), .Y(n1801)
         );
  AOI22XLM U2275 ( .A0(U0_UART_U0_UART_RX_edge_count[4]), .A1(n1799), .B0(
        n1798), .B1(n1797), .Y(n1800) );
  OAI2B11XLM U2276 ( .A1N(n1803), .A0(n1802), .B0(n1801), .C0(n1800), .Y(n1805) );
  OAI32XLM U2277 ( .A0(U0_UART_U0_UART_RX_U0_uart_fsm_current_state[0]), .A1(
        n1806), .A2(n1805), .B0(UART_RX_IN), .B1(n1804), .Y(n1809) );
  AOI22XLM U2278 ( .A0(U0_UART_U0_UART_RX_U0_uart_fsm_current_state[2]), .A1(
        n1809), .B0(n1808), .B1(n1807), .Y(n1814) );
  NAND3XLM U2279 ( .A(U0_UART_U0_UART_RX_U0_uart_fsm_current_state[0]), .B(
        U0_UART_U0_UART_RX_strt_glitch), .C(n1810), .Y(n1811) );
  OAI2BB2XLM U2280 ( .B0(n1814), .B1(n1813), .A0N(n1812), .A1N(n1811), .Y(
        U0_UART_U0_UART_RX_U0_uart_fsm_next_state[0]) );
  CLKBUFX8M U2281 ( .A(SO[1]), .Y(UART_TX_O) );
  INVXLM U2287 ( .A(n1894), .Y(n1869) );
  INVXLM U2288 ( .A(n1894), .Y(n1870) );
  INVXLM U2301 ( .A(n1894), .Y(n1883) );
  INVXLM U2302 ( .A(n1894), .Y(n1884) );
  INVXLM U2303 ( .A(n1894), .Y(n1885) );
  CLKBUFX1M U2306 ( .A(SE), .Y(n1888) );
  INVXLM U2308 ( .A(n1894), .Y(n1890) );
  INVXLM U2309 ( .A(n1894), .Y(n1891) );
  INVXLM U2310 ( .A(n1894), .Y(n1892) );
  INVXLM U2311 ( .A(n1894), .Y(n1893) );
  INVXLM U2312 ( .A(SE), .Y(n1894) );
  INVXLM U2313 ( .A(n1894), .Y(n1895) );
  INVXLM U2314 ( .A(n1894), .Y(n1896) );
  INVXLM U2315 ( .A(n1894), .Y(n1897) );
  INVXLM U2316 ( .A(n1894), .Y(n1898) );
  INVXLM U2318 ( .A(n1894), .Y(n1900) );
  INVXLM U2319 ( .A(n1894), .Y(n1901) );
  INVXLM U2320 ( .A(n1894), .Y(n1902) );
  ClkDiv_test_0 U0_ClkDiv ( .i_ref_clk(UART_SCAN_CLK), .i_rst(n915), 
        .i_clk_en(1'b1), .i_div_ratio(DIV_RATIO), .o_div_clk(UART_TX_CLK), 
        .test_si(ALU_OUT_VLD), .test_so(n1861), .test_se(n1888) );
  ClkDiv_test_1 U1_ClkDiv ( .i_ref_clk(UART_SCAN_CLK), .i_rst(n917), 
        .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, DIV_RATIO_RX}), 
        .o_div_clk(UART_RX_CLK), .test_si(UART_RX_SYNC[7]), .test_so(n1857), 
        .test_se(n1888) );
  CLK_GATE U0_CLK_GATE ( .CLK_EN(n_1_net_), .CLK(REF_SCAN_CLK), .GATED_CLK(
        ALU_CLK) );
  MX2X1M U986 ( .A(UART_TX_CLK), .B(scan_clk), .S0(test_mode), .Y(
        UART_TX_SCAN_CLK) );
  MX2X1M U985 ( .A(UART_RX_CLK), .B(scan_clk), .S0(test_mode), .Y(
        UART_RX_SCAN_CLK) );
  SDFFSQX1M U0_RegFile_regArr_reg_2__0_ ( .D(n887), .SI(n1605), .SE(n1883), 
        .CK(REF_SCAN_CLK), .SN(n1839), .Q(UART_Config[0]) );
  SDFFSQX1M U0_RegFile_regArr_reg_2__7_ ( .D(n763), .SI(n1681), .SE(SE), .CK(
        REF_SCAN_CLK), .SN(n1839), .Q(UART_Config[7]) );
  SDFFSQX1M U0_RegFile_regArr_reg_3__5_ ( .D(n796), .SI(DIV_RATIO[4]), .SE(
        n1893), .CK(REF_SCAN_CLK), .SN(n1839), .Q(DIV_RATIO[5]) );
  SDFFRQX1M U0_SYS_CTRL_ALU_OUT_reg_reg_14_ ( .D(ALU_OUT[14]), .SI(
        U0_SYS_CTRL_ALU_OUT_reg[13]), .SE(n1883), .CK(REF_SCAN_CLK), .RN(1'b1), 
        .Q(U0_SYS_CTRL_ALU_OUT_reg[14]) );
  SDFFQNX1M U0_SYS_CTRL_RF_WrData_reg_reg_3_ ( .D(n1850), .SI(
        U0_SYS_CTRL_RF_WrData_reg[2]), .SE(n1888), .CK(REF_SCAN_CLK), .QN(
        U0_SYS_CTRL_RF_WrData_reg[3]) );
  SDFFQNX1M U0_SYS_CTRL_ALU_FUN_reg_reg_0_ ( .D(n1841), .SI(
        U0_RegFile_regArr_15__7_), .SE(n1885), .CK(REF_SCAN_CLK), .QN(
        U0_SYS_CTRL_ALU_FUN_reg[0]) );
  SDFFQNX1M U0_SYS_CTRL_RF_Address_reg_reg_2_ ( .D(n1843), .SI(
        U0_SYS_CTRL_RF_Address_reg[1]), .SE(n1884), .CK(REF_SCAN_CLK), .QN(
        U0_SYS_CTRL_RF_Address_reg[2]) );
  SDFFQNX1M U0_SYS_CTRL_RF_Address_reg_reg_1_ ( .D(n1844), .SI(
        U0_SYS_CTRL_RF_Address_reg[0]), .SE(n1901), .CK(REF_SCAN_CLK), .QN(
        U0_SYS_CTRL_RF_Address_reg[1]) );
  SDFFQNX1M U0_SYS_CTRL_RF_WrData_reg_reg_5_ ( .D(n1852), .SI(
        U0_SYS_CTRL_RF_WrData_reg[4]), .SE(n1897), .CK(REF_SCAN_CLK), .QN(
        U0_SYS_CTRL_RF_WrData_reg[5]) );
  SDFFQNX1M U0_SYS_CTRL_RF_Address_reg_reg_3_ ( .D(n1845), .SI(
        U0_SYS_CTRL_RF_Address_reg[2]), .SE(n1895), .CK(REF_SCAN_CLK), .QN(
        U0_SYS_CTRL_RF_Address_reg[3]) );
  SDFFQNX1M U0_SYS_CTRL_ALU_FUN_reg_reg_1_ ( .D(n1825), .SI(
        U0_SYS_CTRL_ALU_FUN_reg[0]), .SE(n1893), .CK(REF_SCAN_CLK), .QN(
        U0_SYS_CTRL_ALU_FUN_reg[1]) );
  SDFFQNX1M U0_SYS_CTRL_RF_WrData_reg_reg_6_ ( .D(n1853), .SI(
        U0_SYS_CTRL_RF_WrData_reg[5]), .SE(n1890), .CK(REF_SCAN_CLK), .QN(
        U0_SYS_CTRL_RF_WrData_reg[6]) );
  SDFFQNX1M U0_SYS_CTRL_RF_WrData_reg_reg_2_ ( .D(n1849), .SI(
        U0_SYS_CTRL_RF_WrData_reg[1]), .SE(n1890), .CK(REF_SCAN_CLK), .QN(
        U0_SYS_CTRL_RF_WrData_reg[2]) );
  SDFFQNX1M U0_SYS_CTRL_RF_WrData_reg_reg_0_ ( .D(n1847), .SI(
        U0_SYS_CTRL_RF_Address_reg[3]), .SE(n1891), .CK(REF_SCAN_CLK), .QN(
        U0_SYS_CTRL_RF_WrData_reg[0]) );
  SDFFQNX1M U0_SYS_CTRL_ALU_FUN_reg_reg_3_ ( .D(n1840), .SI(
        U0_SYS_CTRL_ALU_FUN_reg[2]), .SE(n1891), .CK(REF_SCAN_CLK), .QN(
        U0_SYS_CTRL_ALU_FUN_reg[3]) );
  SDFFQNX1M U0_SYS_CTRL_RF_WrData_reg_reg_7_ ( .D(n1854), .SI(
        U0_SYS_CTRL_RF_WrData_reg[6]), .SE(n1884), .CK(REF_SCAN_CLK), .QN(
        U0_SYS_CTRL_RF_WrData_reg[7]) );
  SDFFQNX1M U0_SYS_CTRL_RF_WrData_reg_reg_1_ ( .D(n1848), .SI(
        U0_SYS_CTRL_RF_WrData_reg[0]), .SE(n1885), .CK(REF_SCAN_CLK), .QN(
        U0_SYS_CTRL_RF_WrData_reg[1]) );
  SDFFQNX1M U0_SYS_CTRL_ALU_FUN_reg_reg_2_ ( .D(n1842), .SI(
        U0_SYS_CTRL_ALU_FUN_reg[1]), .SE(n1883), .CK(REF_SCAN_CLK), .QN(
        U0_SYS_CTRL_ALU_FUN_reg[2]) );
  SDFFQNX1M U0_SYS_CTRL_RF_Address_reg_reg_0_ ( .D(n1846), .SI(
        U0_SYS_CTRL_ALU_OUT_reg[15]), .SE(n1870), .CK(REF_SCAN_CLK), .QN(
        U0_SYS_CTRL_RF_Address_reg[0]) );
  SDFFQNX1M U0_SYS_CTRL_RF_WrData_reg_reg_4_ ( .D(n1851), .SI(
        U0_SYS_CTRL_RF_WrData_reg[3]), .SE(n1869), .CK(REF_SCAN_CLK), .QN(
        U0_SYS_CTRL_RF_WrData_reg[4]) );
  ADDFXLM intadd_0_U2 ( .A(intadd_3_n1), .B(intadd_0_B_11_), .CI(intadd_0_n2), 
        .CO(intadd_0_n1), .S(intadd_0_SUM_11_) );
  ADDFXLM intadd_0_U11 ( .A(intadd_0_A_2_), .B(intadd_0_B_2_), .CI(
        intadd_0_n11), .CO(intadd_0_n10), .S(intadd_0_SUM_2_) );
  ADDFXLM intadd_0_U8 ( .A(intadd_0_A_5_), .B(intadd_0_B_5_), .CI(intadd_0_n8), 
        .CO(intadd_0_n7), .S(intadd_0_SUM_5_) );
  ADDFXLM DP_OP_152J1_125_249_U14 ( .A(DP_OP_152J1_125_249_n22), .B(
        Operand_A[7]), .CI(DP_OP_152J1_125_249_n10), .CO(
        DP_OP_152J1_125_249_n9), .S(C25M_DATA15_7) );
  ADDFXLM DP_OP_152J1_125_249_U20 ( .A(DP_OP_152J1_125_249_n28), .B(
        Operand_A[1]), .CI(DP_OP_152J1_125_249_n16), .CO(
        DP_OP_152J1_125_249_n15), .S(C25M_DATA15_1) );
  ADDFXLM DP_OP_152J1_125_249_U19 ( .A(DP_OP_152J1_125_249_n27), .B(
        Operand_A[2]), .CI(DP_OP_152J1_125_249_n15), .CO(
        DP_OP_152J1_125_249_n14), .S(C25M_DATA15_2) );
  ADDFXLM DP_OP_152J1_125_249_U17 ( .A(DP_OP_152J1_125_249_n25), .B(
        Operand_A[4]), .CI(DP_OP_152J1_125_249_n13), .CO(
        DP_OP_152J1_125_249_n12), .S(C25M_DATA15_4) );
  ADDFXLM intadd_1_U3 ( .A(intadd_1_A_2_), .B(intadd_1_B_2_), .CI(intadd_1_n3), 
        .CO(intadd_1_n2), .S(intadd_1_SUM_2_) );
  ADDFXLM DP_OP_152J1_125_249_U16 ( .A(DP_OP_152J1_125_249_n24), .B(
        Operand_A[5]), .CI(DP_OP_152J1_125_249_n12), .CO(
        DP_OP_152J1_125_249_n11), .S(C25M_DATA15_5) );
  ADDFXLM U996 ( .A(Operand_B[2]), .B(n980), .CI(n978), .CO(n989), .S(n979) );
  ADDFXLM U997 ( .A(n1659), .B(n1658), .CI(n1657), .CO(intadd_6_A_1_), .S(
        n1660) );
  ADDFXLM U1082 ( .A(n1599), .B(n1598), .CI(n1597), .CO(n1572), .S(n1600) );
  ADDFXLM U1083 ( .A(n1614), .B(n1613), .CI(n1612), .CO(n1608), .S(
        intadd_2_B_2_) );
  INVXLM U1084 ( .A(n1855), .Y(n918) );
  CLKINVX8M U1085 ( .A(n918), .Y(parity_error) );
  INVXLM U1086 ( .A(U0_RegFile_regArr_15__4_), .Y(n1903) );
  CLKINVX8M U1087 ( .A(n1903), .Y(SO[2]) );
  INVXLM U1088 ( .A(SYNC_REF_RST), .Y(n1905) );
  CLKINVX8M U1089 ( .A(n1905), .Y(SO[0]) );
  INVXLM U1090 ( .A(U0_ref_sync_enable_flop), .Y(n1907) );
  CLKINVX8M U1091 ( .A(n1907), .Y(SO[3]) );
endmodule

