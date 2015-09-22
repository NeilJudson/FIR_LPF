////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.40d
//  \   \         Application: netgen
//  /   /         Filename: dsp48a12.v
// /___/   /\     Timestamp: Sun Sep 06 10:23:39 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -w -sim -ofmt verilog ./tmp/_cg\dsp48a12.ngc ./tmp/_cg\dsp48a12.v 
// Device	: 6slx100tfgg484-3
// Input file	: ./tmp/_cg/dsp48a12.ngc
// Output file	: ./tmp/_cg/dsp48a12.v
// # of Modules	: 1
// Design Name	: dsp48a12
// Xilinx        : D:\Xilinx\13.1\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module dsp48a12 (
  ce, clk, sclra, sclrb, sclrd, sclrm, sclrp, a, b, d, p
)/* synthesis syn_black_box syn_noprune=1 */;
  input ce;
  input clk;
  input sclra;
  input sclrb;
  input sclrd;
  input sclrm;
  input sclrp;
  input [9 : 0] a;
  input [15 : 0] b;
  input [9 : 0] d;
  output [47 : 0] p;
  
  // synthesis translate_off
  
  wire \blk00000003/sig000000d1 ;
  wire \blk00000003/sig000000d0 ;
  wire \blk00000003/sig000000cf ;
  wire \blk00000003/sig0000009e ;
  wire \blk00000003/sig0000009d ;
  wire \blk00000003/sig0000009c ;
  wire \blk00000003/sig0000009b ;
  wire \blk00000003/sig0000009a ;
  wire \blk00000003/sig00000099 ;
  wire \blk00000003/sig00000098 ;
  wire \blk00000003/sig00000097 ;
  wire \blk00000003/sig00000096 ;
  wire \blk00000003/sig00000095 ;
  wire \blk00000003/sig00000094 ;
  wire \blk00000003/sig00000093 ;
  wire \blk00000003/sig00000092 ;
  wire \blk00000003/sig00000091 ;
  wire \blk00000003/sig00000090 ;
  wire \blk00000003/sig0000008f ;
  wire \blk00000003/sig0000008e ;
  wire \blk00000003/sig0000008d ;
  wire \blk00000003/sig0000008c ;
  wire \blk00000003/sig0000008b ;
  wire \blk00000003/sig0000008a ;
  wire \blk00000003/sig00000089 ;
  wire \blk00000003/sig00000088 ;
  wire \blk00000003/sig00000087 ;
  wire \blk00000003/sig00000086 ;
  wire \blk00000003/sig00000085 ;
  wire \blk00000003/sig00000084 ;
  wire \blk00000003/sig00000083 ;
  wire \blk00000003/sig00000082 ;
  wire \blk00000003/sig00000081 ;
  wire \blk00000003/sig00000080 ;
  wire \blk00000003/sig0000007f ;
  wire \blk00000003/sig0000007e ;
  wire \blk00000003/sig0000007d ;
  wire \blk00000003/sig0000007c ;
  wire \blk00000003/sig0000007b ;
  wire \blk00000003/sig0000007a ;
  wire \blk00000003/sig00000079 ;
  wire \blk00000003/sig00000078 ;
  wire \blk00000003/sig00000077 ;
  wire \blk00000003/sig00000076 ;
  wire \blk00000003/sig00000075 ;
  wire \blk00000003/sig00000074 ;
  wire \blk00000003/sig00000073 ;
  wire \blk00000003/sig00000072 ;
  wire \blk00000003/sig00000071 ;
  wire \blk00000003/sig00000070 ;
  wire \blk00000003/sig0000006f ;
  wire \blk00000003/sig0000006e ;
  wire \blk00000003/sig0000006d ;
  wire \blk00000003/sig0000006c ;
  wire \blk00000003/sig0000006b ;
  wire \blk00000003/sig0000006a ;
  wire \blk00000003/sig00000069 ;
  wire \blk00000003/sig00000068 ;
  wire \blk00000003/sig00000067 ;
  wire \blk00000003/sig00000066 ;
  wire \blk00000003/sig00000065 ;
  wire \blk00000003/sig00000064 ;
  wire \blk00000003/sig00000063 ;
  wire \blk00000003/sig00000062 ;
  wire \blk00000003/sig00000061 ;
  wire \blk00000003/sig00000060 ;
  wire \blk00000003/sig0000005f ;
  wire \blk00000003/sig0000005e ;
  wire \blk00000003/sig0000005d ;
  wire \blk00000003/sig0000005c ;
  wire \blk00000003/sig00000030 ;
  wire \blk00000003/sig0000002f ;
  wire \blk00000003/sig0000002e ;
  wire \blk00000003/sig0000002d ;
  wire \blk00000003/sig0000002c ;
  wire \blk00000003/sig0000002b ;
  wire \blk00000003/sig0000002a ;
  wire \blk00000003/sig00000029 ;
  wire \blk00000003/sig00000028 ;
  wire \blk00000003/sig00000027 ;
  wire \blk00000003/sig00000026 ;
  wire \blk00000003/sig00000025 ;
  wire \blk00000003/sig00000024 ;
  wire \blk00000003/sig00000023 ;
  wire \blk00000003/sig00000022 ;
  wire \blk00000003/sig00000021 ;
  wire \blk00000003/sig00000020 ;
  wire \blk00000003/sig0000001f ;
  wire \blk00000003/sig0000001e ;
  wire \blk00000003/sig0000001d ;
  wire \blk00000003/sig0000001c ;
  wire \blk00000003/sig0000001b ;
  wire \blk00000003/sig0000001a ;
  wire \blk00000003/sig00000019 ;
  wire \blk00000003/sig00000018 ;
  wire \blk00000003/sig00000017 ;
  wire \blk00000003/sig00000016 ;
  wire \blk00000003/sig00000015 ;
  wire \blk00000003/sig00000014 ;
  wire \blk00000003/sig00000013 ;
  wire \blk00000003/sig00000012 ;
  wire \blk00000003/sig00000011 ;
  wire \blk00000003/sig00000010 ;
  wire \blk00000003/sig0000000f ;
  wire \blk00000003/sig0000000e ;
  wire \blk00000003/sig0000000d ;
  wire \blk00000003/sig0000000c ;
  wire \blk00000003/sig0000000b ;
  wire \blk00000003/sig0000000a ;
  wire \blk00000003/sig00000009 ;
  wire \blk00000003/sig00000008 ;
  wire \blk00000003/sig00000007 ;
  wire \blk00000003/sig00000006 ;
  wire \blk00000003/sig00000005 ;
  wire \blk00000003/sig00000004 ;
  wire \blk00000003/sig00000003 ;
  wire \blk00000003/sig00000002 ;
  wire \blk00000003/sig00000001 ;
  wire NLW_blk00000001_P_UNCONNECTED;
  wire NLW_blk00000002_G_UNCONNECTED;
  wire \NLW_blk00000003/blk00000006_C<47>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<46>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<45>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<44>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<43>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<42>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<41>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<40>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<39>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<38>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<37>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<36>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<35>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<34>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<33>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<32>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<31>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<30>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<29>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<28>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<27>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<26>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<25>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<24>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<23>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<22>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<21>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<20>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<19>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<18>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_C<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<35>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<34>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<33>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<32>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<31>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<30>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<29>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<28>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<27>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<26>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<25>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<24>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<23>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<22>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<21>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<20>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<19>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<18>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk00000006_M<0>_UNCONNECTED ;
  wire [9 : 0] a_0;
  wire [15 : 0] b_1;
  wire [9 : 0] d_2;
  wire [47 : 0] p_3;
  assign
    a_0[9] = a[9],
    a_0[8] = a[8],
    a_0[7] = a[7],
    a_0[6] = a[6],
    a_0[5] = a[5],
    a_0[4] = a[4],
    a_0[3] = a[3],
    a_0[2] = a[2],
    a_0[1] = a[1],
    a_0[0] = a[0],
    b_1[15] = b[15],
    b_1[14] = b[14],
    b_1[13] = b[13],
    b_1[12] = b[12],
    b_1[11] = b[11],
    b_1[10] = b[10],
    b_1[9] = b[9],
    b_1[8] = b[8],
    b_1[7] = b[7],
    b_1[6] = b[6],
    b_1[5] = b[5],
    b_1[4] = b[4],
    b_1[3] = b[3],
    b_1[2] = b[2],
    b_1[1] = b[1],
    b_1[0] = b[0],
    d_2[9] = d[9],
    d_2[8] = d[8],
    d_2[7] = d[7],
    d_2[6] = d[6],
    d_2[5] = d[5],
    d_2[4] = d[4],
    d_2[3] = d[3],
    d_2[2] = d[2],
    d_2[1] = d[1],
    d_2[0] = d[0],
    p[47] = p_3[47],
    p[46] = p_3[46],
    p[45] = p_3[45],
    p[44] = p_3[44],
    p[43] = p_3[43],
    p[42] = p_3[42],
    p[41] = p_3[41],
    p[40] = p_3[40],
    p[39] = p_3[39],
    p[38] = p_3[38],
    p[37] = p_3[37],
    p[36] = p_3[36],
    p[35] = p_3[35],
    p[34] = p_3[34],
    p[33] = p_3[33],
    p[32] = p_3[32],
    p[31] = p_3[31],
    p[30] = p_3[30],
    p[29] = p_3[29],
    p[28] = p_3[28],
    p[27] = p_3[27],
    p[26] = p_3[26],
    p[25] = p_3[25],
    p[24] = p_3[24],
    p[23] = p_3[23],
    p[22] = p_3[22],
    p[21] = p_3[21],
    p[20] = p_3[20],
    p[19] = p_3[19],
    p[18] = p_3[18],
    p[17] = p_3[17],
    p[16] = p_3[16],
    p[15] = p_3[15],
    p[14] = p_3[14],
    p[13] = p_3[13],
    p[12] = p_3[12],
    p[11] = p_3[11],
    p[10] = p_3[10],
    p[9] = p_3[9],
    p[8] = p_3[8],
    p[7] = p_3[7],
    p[6] = p_3[6],
    p[5] = p_3[5],
    p[4] = p_3[4],
    p[3] = p_3[3],
    p[2] = p_3[2],
    p[1] = p_3[1],
    p[0] = p_3[0];
  VCC   blk00000001 (
    .P(NLW_blk00000001_P_UNCONNECTED)
  );
  GND   blk00000002 (
    .G(NLW_blk00000002_G_UNCONNECTED)
  );
  DSP48A1 #(
    .A0REG ( 1 ),
    .A1REG ( 1 ),
    .B0REG ( 1 ),
    .B1REG ( 1 ),
    .CARRYINREG ( 0 ),
    .CARRYINSEL ( "OPMODE5" ),
    .CARRYOUTREG ( 1 ),
    .CREG ( 0 ),
    .DREG ( 1 ),
    .MREG ( 1 ),
    .OPMODEREG ( 0 ),
    .PREG ( 1 ),
    .RSTTYPE ( "SYNC" ))
  \blk00000003/blk00000006  (
    .CECARRYIN(ce),
    .RSTC(\blk00000003/sig0000006e ),
    .RSTCARRYIN(\blk00000003/sig0000006e ),
    .CED(ce),
    .RSTD(sclrd),
    .CEOPMODE(\blk00000003/sig0000006e ),
    .CEC(\blk00000003/sig0000006e ),
    .CARRYOUTF(\blk00000003/sig000000cf ),
    .RSTOPMODE(\blk00000003/sig0000006e ),
    .RSTM(sclrm),
    .CLK(clk),
    .RSTB(sclra),
    .CEM(ce),
    .CEB(ce),
    .CARRYIN(\blk00000003/sig0000006e ),
    .CEP(ce),
    .CEA(ce),
    .CARRYOUT(\blk00000003/sig000000d0 ),
    .RSTA(sclrb),
    .RSTP(sclrp),
    .B({a_0[9], a_0[9], a_0[9], a_0[9], a_0[9], a_0[9], a_0[9], a_0[9], a_0[9], a_0[8], a_0[7], a_0[6], a_0[5], a_0[4], a_0[3], a_0[2], a_0[1], a_0[0]
}),
    .BCOUT({\blk00000003/sig0000005c , \blk00000003/sig0000005d , \blk00000003/sig0000005e , \blk00000003/sig0000005f , \blk00000003/sig00000060 , 
\blk00000003/sig00000061 , \blk00000003/sig00000062 , \blk00000003/sig00000063 , \blk00000003/sig00000064 , \blk00000003/sig00000065 , 
\blk00000003/sig00000066 , \blk00000003/sig00000067 , \blk00000003/sig00000068 , \blk00000003/sig00000069 , \blk00000003/sig0000006a , 
\blk00000003/sig0000006b , \blk00000003/sig0000006c , \blk00000003/sig0000006d }),
    .PCIN({\blk00000003/sig00000001 , \blk00000003/sig00000002 , \blk00000003/sig00000003 , \blk00000003/sig00000004 , \blk00000003/sig00000005 , 
\blk00000003/sig00000006 , \blk00000003/sig00000007 , \blk00000003/sig00000008 , \blk00000003/sig00000009 , \blk00000003/sig0000000a , 
\blk00000003/sig0000000b , \blk00000003/sig0000000c , \blk00000003/sig0000000d , \blk00000003/sig0000000e , \blk00000003/sig0000000f , 
\blk00000003/sig00000010 , \blk00000003/sig00000011 , \blk00000003/sig00000012 , \blk00000003/sig00000013 , \blk00000003/sig00000014 , 
\blk00000003/sig00000015 , \blk00000003/sig00000016 , \blk00000003/sig00000017 , \blk00000003/sig00000018 , \blk00000003/sig00000019 , 
\blk00000003/sig0000001a , \blk00000003/sig0000001b , \blk00000003/sig0000001c , \blk00000003/sig0000001d , \blk00000003/sig0000001e , 
\blk00000003/sig0000001f , \blk00000003/sig00000020 , \blk00000003/sig00000021 , \blk00000003/sig00000022 , \blk00000003/sig00000023 , 
\blk00000003/sig00000024 , \blk00000003/sig00000025 , \blk00000003/sig00000026 , \blk00000003/sig00000027 , \blk00000003/sig00000028 , 
\blk00000003/sig00000029 , \blk00000003/sig0000002a , \blk00000003/sig0000002b , \blk00000003/sig0000002c , \blk00000003/sig0000002d , 
\blk00000003/sig0000002e , \blk00000003/sig0000002f , \blk00000003/sig00000030 }),
    .C({\NLW_blk00000003/blk00000006_C<47>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<46>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_C<45>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<44>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<43>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_C<42>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<41>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<40>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_C<39>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<38>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<37>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_C<36>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<35>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<34>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_C<33>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<32>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<31>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_C<30>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<29>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<28>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_C<27>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<26>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<25>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_C<24>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<23>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<22>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_C<21>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<20>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<19>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_C<18>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<17>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<16>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_C<15>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<14>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<13>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_C<12>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<11>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<10>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_C<9>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<8>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<7>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_C<6>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<5>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<4>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_C<3>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<2>_UNCONNECTED , \NLW_blk00000003/blk00000006_C<1>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_C<0>_UNCONNECTED }),
    .P({p_3[47], p_3[46], p_3[45], p_3[44], p_3[43], p_3[42], p_3[41], p_3[40], p_3[39], p_3[38], p_3[37], p_3[36], p_3[35], p_3[34], p_3[33], p_3[32]
, p_3[31], p_3[30], p_3[29], p_3[28], p_3[27], p_3[26], p_3[25], p_3[24], p_3[23], p_3[22], p_3[21], p_3[20], p_3[19], p_3[18], p_3[17], p_3[16], 
p_3[15], p_3[14], p_3[13], p_3[12], p_3[11], p_3[10], p_3[9], p_3[8], p_3[7], p_3[6], p_3[5], p_3[4], p_3[3], p_3[2], p_3[1], p_3[0]}),
    .OPMODE({\blk00000003/sig0000006e , \blk00000003/sig0000006e , \blk00000003/sig0000006e , \blk00000003/sig000000d1 , \blk00000003/sig000000d1 , 
\blk00000003/sig0000006e , \blk00000003/sig0000006e , \blk00000003/sig000000d1 }),
    .D({d_2[9], d_2[9], d_2[9], d_2[9], d_2[9], d_2[9], d_2[9], d_2[9], d_2[9], d_2[8], d_2[7], d_2[6], d_2[5], d_2[4], d_2[3], d_2[2], d_2[1], d_2[0]
}),
    .PCOUT({\blk00000003/sig0000006f , \blk00000003/sig00000070 , \blk00000003/sig00000071 , \blk00000003/sig00000072 , \blk00000003/sig00000073 , 
\blk00000003/sig00000074 , \blk00000003/sig00000075 , \blk00000003/sig00000076 , \blk00000003/sig00000077 , \blk00000003/sig00000078 , 
\blk00000003/sig00000079 , \blk00000003/sig0000007a , \blk00000003/sig0000007b , \blk00000003/sig0000007c , \blk00000003/sig0000007d , 
\blk00000003/sig0000007e , \blk00000003/sig0000007f , \blk00000003/sig00000080 , \blk00000003/sig00000081 , \blk00000003/sig00000082 , 
\blk00000003/sig00000083 , \blk00000003/sig00000084 , \blk00000003/sig00000085 , \blk00000003/sig00000086 , \blk00000003/sig00000087 , 
\blk00000003/sig00000088 , \blk00000003/sig00000089 , \blk00000003/sig0000008a , \blk00000003/sig0000008b , \blk00000003/sig0000008c , 
\blk00000003/sig0000008d , \blk00000003/sig0000008e , \blk00000003/sig0000008f , \blk00000003/sig00000090 , \blk00000003/sig00000091 , 
\blk00000003/sig00000092 , \blk00000003/sig00000093 , \blk00000003/sig00000094 , \blk00000003/sig00000095 , \blk00000003/sig00000096 , 
\blk00000003/sig00000097 , \blk00000003/sig00000098 , \blk00000003/sig00000099 , \blk00000003/sig0000009a , \blk00000003/sig0000009b , 
\blk00000003/sig0000009c , \blk00000003/sig0000009d , \blk00000003/sig0000009e }),
    .A({b_1[15], b_1[15], b_1[15], b_1[14], b_1[13], b_1[12], b_1[11], b_1[10], b_1[9], b_1[8], b_1[7], b_1[6], b_1[5], b_1[4], b_1[3], b_1[2], b_1[1]
, b_1[0]}),
    .M({\NLW_blk00000003/blk00000006_M<35>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<34>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_M<33>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<32>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<31>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_M<30>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<29>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<28>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_M<27>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<26>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<25>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_M<24>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<23>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<22>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_M<21>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<20>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<19>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_M<18>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<17>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<16>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_M<15>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<14>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<13>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_M<12>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<11>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<10>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_M<9>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<8>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<7>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_M<6>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<5>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<4>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_M<3>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<2>_UNCONNECTED , \NLW_blk00000003/blk00000006_M<1>_UNCONNECTED , 
\NLW_blk00000003/blk00000006_M<0>_UNCONNECTED })
  );
  VCC   \blk00000003/blk00000005  (
    .P(\blk00000003/sig000000d1 )
  );
  GND   \blk00000003/blk00000004  (
    .G(\blk00000003/sig0000006e )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
