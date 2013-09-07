////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.68d
//  \   \         Application: netgen
//  /   /         Filename: ControladorLucesSemaforo_map.v
// /___/   /\     Timestamp: Wed Sep 04 20:44:53 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 4 -pcf ControladorLucesSemaforo.pcf -sdf_anno true -sdf_path netgen/map -insert_glbl true -w -dir netgen/map -ofmt verilog -sim ControladorLucesSemaforo_map.ncd ControladorLucesSemaforo_map.v 
// Device	: 3s200ft256-4 (PRODUCTION 1.39 2013-06-08)
// Input file	: ControladorLucesSemaforo_map.ncd
// Output file	: C:\Users\Zeck\Desktop\Laboratorio2\netgen\map\ControladorLucesSemaforo_map.v
// # of Modules	: 1
// Design Name	: ControladorLucesSemaforo
// Xilinx        : D:\Xilinx\14.6\ISE_DS\ISE\
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

module ControladorLucesSemaforo (
  clk, Sensor, Reset, Walk_Request, Reprogram, luces, Time_Parameter_Selector, Time_Value
);
  input clk;
  input Sensor;
  input Reset;
  input Walk_Request;
  input Reprogram;
  output [6 : 0] luces;
  input [1 : 0] Time_Parameter_Selector;
  input [3 : 0] Time_Value;
  wire \divisor/segundero_not0001_inv ;
  wire clk_BUFGP;
  wire \divisor/Mcount_contador_cy[1] ;
  wire \divisor/Mcount_contador_cy[3] ;
  wire \divisor/Mcount_contador_cy[5] ;
  wire \divisor/Mcount_contador_cy[7] ;
  wire \divisor/Mcount_contador_cy[9] ;
  wire \divisor/Mcount_contador_cy[11] ;
  wire \divisor/Mcount_contador_cy[13] ;
  wire \divisor/Mcount_contador_cy[15] ;
  wire \divisor/Mcount_contador_cy[17] ;
  wire \clk_BUFGP/IBUFG_753 ;
  wire Reprogram_IBUF_754;
  wire Walk_Request_IBUF_755;
  wire Time_Parameter_Selector_0_IBUF_762;
  wire Time_Parameter_Selector_1_IBUF_764;
  wire Reset_IBUF_765;
  wire Time_Value_0_IBUF_766;
  wire Time_Value_1_IBUF_767;
  wire Time_Value_2_IBUF_768;
  wire Time_Value_3_IBUF_769;
  wire Sensor_IBUF_770;
  wire \maqEstados/state_FSM_FFd19_771 ;
  wire \maqEstados/state_FSM_FFd18_772 ;
  wire \maqEstados/state_FSM_FFd17_773 ;
  wire \maqEstados/state_FSM_FFd11_774 ;
  wire \maqEstados/state_FSM_FFd16_775 ;
  wire \maqEstados/state_FSM_FFd20_777 ;
  wire \maqEstados/state_FSM_FFd21_778 ;
  wire \maqEstados/state_FSM_FFd23_779 ;
  wire \maqEstados/state_FSM_FFd24_780 ;
  wire \maqEstados/state_FSM_FFd15_783 ;
  wire N32;
  wire \maqEstados/state_FSM_FFd12_785 ;
  wire \maqEstados/state_FSM_FFd4_786 ;
  wire \maqEstados/state_FSM_FFd13_787 ;
  wire \maqEstados/state_FSM_FFd14_788 ;
  wire N20_0;
  wire \parametros/N01 ;
  wire \parametros/N11 ;
  wire \maqEstados/state_FSM_Out1_SW0/O ;
  wire \Intervalo<1>_0 ;
  wire \maqEstados/state_FSM_FFd8_797 ;
  wire \maqEstados/state_FSM_FFd3_798 ;
  wire \maqEstados/state_FSM_Out2_SW0/O ;
  wire \maqEstados/state_FSM_FFd1_800 ;
  wire \maqEstados/state_FSM_FFd9_801 ;
  wire \maqEstados/state_FSM_FFd2_802 ;
  wire \Intervalo<0>_0 ;
  wire \parametros/N2 ;
  wire \time_expired454_SW0/O ;
  wire time_expired426_0;
  wire time_expired453_0;
  wire \maqEstados/state_FSM_FFd5_809 ;
  wire \parametros/mux21_SW0/O ;
  wire \Valor<0>_0 ;
  wire \parametros/mux22_SW0/O ;
  wire \Valor<2>_0 ;
  wire \parametros/mux12/O ;
  wire \parametros/mux32/O ;
  wire N14_0;
  wire \divisor/segundero_829 ;
  wire start_timer_inv_0;
  wire \maqEstados/state_FSM_FFd6_833 ;
  wire time_expired_0;
  wire \registroPeaton/valor_walk_actual_835 ;
  wire \maqEstados/state_FSM_FFd10_836 ;
  wire \maqEstados/state_FSM_FFd22_837 ;
  wire \maqEstados/state_FSM_Out39_0 ;
  wire \maqEstados/state_FSM_Out34_0 ;
  wire \maqEstados/state_FSM_Out314_840 ;
  wire N2;
  wire N8;
  wire \maqEstados/state_FSM_FFd7_844 ;
  wire N6;
  wire \maqEstados/state_FSM_Out54_0 ;
  wire N01;
  wire \maqEstados/state_FSM_Out59_848 ;
  wire N4;
  wire \divisor/segundero_cmp_eq0000_wg_cy<1>/CYINIT_878 ;
  wire \divisor/segundero_cmp_eq0000_wg_cy<1>/CYSELF_870 ;
  wire \divisor/segundero_cmp_eq0000_wg_cy<1>/BXINV_868 ;
  wire \divisor/segundero_cmp_eq0000_wg_cy<1>/CYMUXG_867 ;
  wire \divisor/segundero_cmp_eq0000_wg_cy<1>/LOGIC_ZERO_865 ;
  wire \divisor/segundero_cmp_eq0000_wg_cy<1>/CYSELG_859 ;
  wire \divisor/segundero_cmp_eq0000_wg_cy<3>/CYSELF_902 ;
  wire \divisor/segundero_cmp_eq0000_wg_cy<3>/CYMUXFAST_901 ;
  wire \divisor/segundero_cmp_eq0000_wg_cy<3>/CYAND_900 ;
  wire \divisor/segundero_cmp_eq0000_wg_cy<3>/FASTCARRY_899 ;
  wire \divisor/segundero_cmp_eq0000_wg_cy<3>/CYMUXG2_898 ;
  wire \divisor/segundero_cmp_eq0000_wg_cy<3>/CYMUXF2_897 ;
  wire \divisor/segundero_cmp_eq0000_wg_cy<3>/LOGIC_ZERO_896 ;
  wire \divisor/segundero_cmp_eq0000_wg_cy<3>/CYSELG_890 ;
  wire \divisor/segundero_not0001_inv/CYSELF_932 ;
  wire \divisor/segundero_not0001_inv/CYMUXFAST_931 ;
  wire \divisor/segundero_not0001_inv/CYAND_930 ;
  wire \divisor/segundero_not0001_inv/FASTCARRY_929 ;
  wire \divisor/segundero_not0001_inv/CYMUXG2_928 ;
  wire \divisor/segundero_not0001_inv/CYMUXF2_927 ;
  wire \divisor/segundero_not0001_inv/LOGIC_ZERO_926 ;
  wire \divisor/segundero_not0001_inv/CYSELG_920 ;
  wire \divisor/contador<0>/DXMUX_984 ;
  wire \divisor/contador<0>/XORF_982 ;
  wire \divisor/contador<0>/LOGIC_ZERO_981 ;
  wire \divisor/contador<0>/CYINIT_980 ;
  wire \divisor/contador<0>/CYSELF_971 ;
  wire \divisor/contador<0>/F ;
  wire \divisor/contador<0>/BXINV_969 ;
  wire \divisor/contador<0>/DYMUX_964 ;
  wire \divisor/contador<0>/XORG_962 ;
  wire \divisor/contador<0>/CYMUXG_961 ;
  wire \divisor/Mcount_contador_cy[0] ;
  wire \divisor/contador<0>/LOGIC_ONE_959 ;
  wire \divisor/contador<0>/CYSELG_950 ;
  wire \divisor/contador<0>/SRINV_948 ;
  wire \divisor/contador<0>/CLKINV_947 ;
  wire \divisor/contador<2>/DXMUX_1036 ;
  wire \divisor/contador<2>/XORF_1034 ;
  wire \divisor/contador<2>/CYINIT_1033 ;
  wire \divisor/contador<2>/DYMUX_1019 ;
  wire \divisor/contador<2>/XORG_1017 ;
  wire \divisor/Mcount_contador_cy[2] ;
  wire \divisor/contador<2>/CYSELF_1015 ;
  wire \divisor/contador<2>/CYMUXFAST_1014 ;
  wire \divisor/contador<2>/CYAND_1013 ;
  wire \divisor/contador<2>/FASTCARRY_1012 ;
  wire \divisor/contador<2>/CYMUXG2_1011 ;
  wire \divisor/contador<2>/CYMUXF2_1010 ;
  wire \divisor/contador<2>/LOGIC_ONE_1009 ;
  wire \divisor/contador<2>/CYSELG_1000 ;
  wire \divisor/contador<2>/SRINV_998 ;
  wire \divisor/contador<2>/CLKINV_997 ;
  wire \divisor/contador<4>/DXMUX_1088 ;
  wire \divisor/contador<4>/XORF_1086 ;
  wire \divisor/contador<4>/CYINIT_1085 ;
  wire \divisor/contador<4>/DYMUX_1071 ;
  wire \divisor/contador<4>/XORG_1069 ;
  wire \divisor/Mcount_contador_cy[4] ;
  wire \divisor/contador<4>/CYSELF_1067 ;
  wire \divisor/contador<4>/CYMUXFAST_1066 ;
  wire \divisor/contador<4>/CYAND_1065 ;
  wire \divisor/contador<4>/FASTCARRY_1064 ;
  wire \divisor/contador<4>/CYMUXG2_1063 ;
  wire \divisor/contador<4>/CYMUXF2_1062 ;
  wire \divisor/contador<4>/LOGIC_ONE_1061 ;
  wire \divisor/contador<4>/CYSELG_1052 ;
  wire \divisor/contador<4>/SRINV_1050 ;
  wire \divisor/contador<4>/CLKINV_1049 ;
  wire \divisor/contador<6>/DXMUX_1140 ;
  wire \divisor/contador<6>/XORF_1138 ;
  wire \divisor/contador<6>/CYINIT_1137 ;
  wire \divisor/contador<6>/DYMUX_1123 ;
  wire \divisor/contador<6>/XORG_1121 ;
  wire \divisor/Mcount_contador_cy[6] ;
  wire \divisor/contador<6>/CYSELF_1119 ;
  wire \divisor/contador<6>/CYMUXFAST_1118 ;
  wire \divisor/contador<6>/CYAND_1117 ;
  wire \divisor/contador<6>/FASTCARRY_1116 ;
  wire \divisor/contador<6>/CYMUXG2_1115 ;
  wire \divisor/contador<6>/CYMUXF2_1114 ;
  wire \divisor/contador<6>/LOGIC_ONE_1113 ;
  wire \divisor/contador<6>/CYSELG_1104 ;
  wire \divisor/contador<6>/SRINV_1102 ;
  wire \divisor/contador<6>/CLKINV_1101 ;
  wire \divisor/contador<8>/DXMUX_1192 ;
  wire \divisor/contador<8>/XORF_1190 ;
  wire \divisor/contador<8>/CYINIT_1189 ;
  wire \divisor/contador<8>/DYMUX_1175 ;
  wire \divisor/contador<8>/XORG_1173 ;
  wire \divisor/Mcount_contador_cy[8] ;
  wire \divisor/contador<8>/CYSELF_1171 ;
  wire \divisor/contador<8>/CYMUXFAST_1170 ;
  wire \divisor/contador<8>/CYAND_1169 ;
  wire \divisor/contador<8>/FASTCARRY_1168 ;
  wire \divisor/contador<8>/CYMUXG2_1167 ;
  wire \divisor/contador<8>/CYMUXF2_1166 ;
  wire \divisor/contador<8>/LOGIC_ONE_1165 ;
  wire \divisor/contador<8>/CYSELG_1156 ;
  wire \divisor/contador<8>/SRINV_1154 ;
  wire \divisor/contador<8>/CLKINV_1153 ;
  wire \divisor/contador<10>/DXMUX_1244 ;
  wire \divisor/contador<10>/XORF_1242 ;
  wire \divisor/contador<10>/CYINIT_1241 ;
  wire \divisor/contador<10>/DYMUX_1227 ;
  wire \divisor/contador<10>/XORG_1225 ;
  wire \divisor/Mcount_contador_cy[10] ;
  wire \divisor/contador<10>/CYSELF_1223 ;
  wire \divisor/contador<10>/CYMUXFAST_1222 ;
  wire \divisor/contador<10>/CYAND_1221 ;
  wire \divisor/contador<10>/FASTCARRY_1220 ;
  wire \divisor/contador<10>/CYMUXG2_1219 ;
  wire \divisor/contador<10>/CYMUXF2_1218 ;
  wire \divisor/contador<10>/LOGIC_ONE_1217 ;
  wire \divisor/contador<10>/CYSELG_1208 ;
  wire \divisor/contador<10>/SRINV_1206 ;
  wire \divisor/contador<10>/CLKINV_1205 ;
  wire \divisor/contador<12>/DXMUX_1296 ;
  wire \divisor/contador<12>/XORF_1294 ;
  wire \divisor/contador<12>/CYINIT_1293 ;
  wire \divisor/contador<12>/DYMUX_1279 ;
  wire \divisor/contador<12>/XORG_1277 ;
  wire \divisor/Mcount_contador_cy[12] ;
  wire \divisor/contador<12>/CYSELF_1275 ;
  wire \divisor/contador<12>/CYMUXFAST_1274 ;
  wire \divisor/contador<12>/CYAND_1273 ;
  wire \divisor/contador<12>/FASTCARRY_1272 ;
  wire \divisor/contador<12>/CYMUXG2_1271 ;
  wire \divisor/contador<12>/CYMUXF2_1270 ;
  wire \divisor/contador<12>/LOGIC_ONE_1269 ;
  wire \divisor/contador<12>/CYSELG_1260 ;
  wire \divisor/contador<12>/SRINV_1258 ;
  wire \divisor/contador<12>/CLKINV_1257 ;
  wire \divisor/contador<14>/DXMUX_1348 ;
  wire \divisor/contador<14>/XORF_1346 ;
  wire \divisor/contador<14>/CYINIT_1345 ;
  wire \divisor/contador<14>/DYMUX_1331 ;
  wire \divisor/contador<14>/XORG_1329 ;
  wire \divisor/Mcount_contador_cy[14] ;
  wire \divisor/contador<14>/CYSELF_1327 ;
  wire \divisor/contador<14>/CYMUXFAST_1326 ;
  wire \divisor/contador<14>/CYAND_1325 ;
  wire \divisor/contador<14>/FASTCARRY_1324 ;
  wire \divisor/contador<14>/CYMUXG2_1323 ;
  wire \divisor/contador<14>/CYMUXF2_1322 ;
  wire \divisor/contador<14>/LOGIC_ONE_1321 ;
  wire \divisor/contador<14>/CYSELG_1312 ;
  wire \divisor/contador<14>/SRINV_1310 ;
  wire \divisor/contador<14>/CLKINV_1309 ;
  wire \divisor/contador<16>/DXMUX_1400 ;
  wire \divisor/contador<16>/XORF_1398 ;
  wire \divisor/contador<16>/CYINIT_1397 ;
  wire \divisor/contador<16>/DYMUX_1383 ;
  wire \divisor/contador<16>/XORG_1381 ;
  wire \divisor/Mcount_contador_cy[16] ;
  wire \divisor/contador<16>/CYSELF_1379 ;
  wire \divisor/contador<16>/CYMUXFAST_1378 ;
  wire \divisor/contador<16>/CYAND_1377 ;
  wire \divisor/contador<16>/FASTCARRY_1376 ;
  wire \divisor/contador<16>/CYMUXG2_1375 ;
  wire \divisor/contador<16>/CYMUXF2_1374 ;
  wire \divisor/contador<16>/LOGIC_ONE_1373 ;
  wire \divisor/contador<16>/CYSELG_1364 ;
  wire \divisor/contador<16>/SRINV_1362 ;
  wire \divisor/contador<16>/CLKINV_1361 ;
  wire \divisor/contador<18>/DXMUX_1452 ;
  wire \divisor/contador<18>/XORF_1450 ;
  wire \divisor/contador<18>/CYINIT_1449 ;
  wire \divisor/contador<18>/DYMUX_1435 ;
  wire \divisor/contador<18>/XORG_1433 ;
  wire \divisor/Mcount_contador_cy[18] ;
  wire \divisor/contador<18>/CYSELF_1431 ;
  wire \divisor/contador<18>/CYMUXFAST_1430 ;
  wire \divisor/contador<18>/CYAND_1429 ;
  wire \divisor/contador<18>/FASTCARRY_1428 ;
  wire \divisor/contador<18>/CYMUXG2_1427 ;
  wire \divisor/contador<18>/CYMUXF2_1426 ;
  wire \divisor/contador<18>/LOGIC_ONE_1425 ;
  wire \divisor/contador<18>/CYSELG_1416 ;
  wire \divisor/contador<18>/SRINV_1414 ;
  wire \divisor/contador<18>/CLKINV_1413 ;
  wire \divisor/contador<20>/DXMUX_1497 ;
  wire \divisor/contador<20>/XORF_1495 ;
  wire \divisor/contador<20>/LOGIC_ONE_1494 ;
  wire \divisor/contador<20>/CYINIT_1493 ;
  wire \divisor/contador<20>/CYSELF_1484 ;
  wire \divisor/contador<20>/DYMUX_1478 ;
  wire \divisor/contador<20>/XORG_1476 ;
  wire \divisor/Mcount_contador_cy[20] ;
  wire \divisor/contador<20>/SRINV_1465 ;
  wire \divisor/contador<20>/CLKINV_1464 ;
  wire \clk/INBUF ;
  wire \Reprogram/INBUF ;
  wire \Walk_Request/INBUF ;
  wire \luces<0>/O ;
  wire \luces<1>/O ;
  wire \luces<2>/O ;
  wire \luces<3>/O ;
  wire \luces<4>/O ;
  wire \luces<5>/O ;
  wire \Time_Parameter_Selector<0>/INBUF ;
  wire \luces<6>/O ;
  wire \Time_Parameter_Selector<1>/INBUF ;
  wire \Reset/INBUF ;
  wire \Time_Value<0>/INBUF ;
  wire \Time_Value<1>/INBUF ;
  wire \Time_Value<2>/INBUF ;
  wire \Time_Value<3>/INBUF ;
  wire \Sensor/INBUF ;
  wire \clk_BUFGP/BUFG/S_INVNOT ;
  wire \maqEstados/state_FSM_Out811/F5MUX_1652 ;
  wire \maqEstados/state_FSM_Out811/F ;
  wire \maqEstados/state_FSM_Out811/BXINV_1641 ;
  wire \maqEstados/state_FSM_Out8111_1639 ;
  wire \luces_1_OBUF/F5MUX_1677 ;
  wire \luces_1_OBUF/F ;
  wire \luces_1_OBUF/BXINV_1666 ;
  wire \maqEstados/state_FSM_Out813 ;
  wire N20;
  wire N32_pack_1;
  wire \parametros/tyel<1>/DXMUX_1729 ;
  wire \parametros/N01_pack_2 ;
  wire \parametros/tyel<1>/CLKINV_1713 ;
  wire \parametros/tbase<2>/DXMUX_1759 ;
  wire \parametros/N11_pack_2 ;
  wire \parametros/tbase<2>/CLKINV_1743 ;
  wire \maqEstados/state_FSM_Out1_SW0/O_pack_1 ;
  wire \maqEstados/state_FSM_Out2_SW0/O_pack_1 ;
  wire \parametros/text<1>/DXMUX_1837 ;
  wire \parametros/N2_pack_2 ;
  wire \parametros/text<1>/CLKINV_1821 ;
  wire \maqEstados/state_FSM_FFd4/DXMUX_1869 ;
  wire \maqEstados/state_FSM_FFd4-In ;
  wire \time_expired454_SW0/O_pack_1 ;
  wire \maqEstados/state_FSM_FFd4/SRINV_1852 ;
  wire \maqEstados/state_FSM_FFd4/CLKINV_1851 ;
  wire \Valor[0] ;
  wire \parametros/mux21_SW0/O_pack_1 ;
  wire \Valor[2] ;
  wire \parametros/mux22_SW0/O_pack_1 ;
  wire time_expired426_1943;
  wire \parametros/mux12/O_pack_1 ;
  wire time_expired453_1967;
  wire \parametros/mux32/O_pack_1 ;
  wire \parametros/text<0>/DXMUX_2000 ;
  wire \parametros/text<0>/DYMUX_1989 ;
  wire \parametros/text<0>/CLKINV_1981 ;
  wire \parametros/tyel<3>/DXMUX_2034 ;
  wire \parametros/tyel<3>/DYMUX_2023 ;
  wire \parametros/tyel<3>/CLKINV_2015 ;
  wire \temporizador/tiempoTranscurrido<3>/DXMUX_2073 ;
  wire \Result<3>1 ;
  wire \temporizador/tiempoTranscurrido<3>/DYMUX_2059 ;
  wire \Result<2>1 ;
  wire \temporizador/tiempoTranscurrido<3>/SRINV_2050 ;
  wire \temporizador/tiempoTranscurrido<3>/CLKINVNOT ;
  wire \sincronizador/salida<0>/DYMUX_2096 ;
  wire \sincronizador/opcion_selecionada_cmp_eq00031 ;
  wire \sincronizador/salida<0>/SRINV_2087 ;
  wire \sincronizador/salida<0>/CLKINVNOT ;
  wire \sincronizador/salida<1>/DYMUX_2117 ;
  wire \sincronizador/opcion_selecionada_cmp_eq00021 ;
  wire \sincronizador/salida<1>/SRINV_2108 ;
  wire \sincronizador/salida<1>/CLKINVNOT ;
  wire \sincronizador/salida<3>/DXMUX_2155 ;
  wire \sincronizador/opcion_selecionada_cmp_eq00001 ;
  wire \sincronizador/salida<3>/DYMUX_2142 ;
  wire \sincronizador/opcion_selecionada_cmp_eq00011 ;
  wire \sincronizador/salida<3>/SRINV_2133 ;
  wire \sincronizador/salida<3>/CLKINVNOT ;
  wire \parametros/tbase<1>/DXMUX_2190 ;
  wire \parametros/tbase<1>/DYMUX_2179 ;
  wire \parametros/tbase<1>/CLKINV_2171 ;
  wire N14;
  wire \parametros/tbase<3>/DYMUX_2213 ;
  wire \parametros/tbase<3>/CLKINV_2205 ;
  wire \maqEstados/state_FSM_FFd3/DYMUX_2240 ;
  wire \maqEstados/state_FSM_FFd3-In ;
  wire \maqEstados/state_FSM_FFd3/SRINV_2230 ;
  wire \maqEstados/state_FSM_FFd3/CLKINV_2229 ;
  wire time_expired;
  wire \maqEstados/state_FSM_FFd5/DYMUX_2264 ;
  wire \maqEstados/state_FSM_FFd5-In ;
  wire \maqEstados/state_FSM_FFd5/SRINV_2255 ;
  wire \maqEstados/state_FSM_FFd5/CLKINV_2254 ;
  wire \parametros/text<3>/DXMUX_2308 ;
  wire \parametros/text<3>/DYMUX_2297 ;
  wire \parametros/text<3>/CLKINV_2289 ;
  wire \maqEstados/state_FSM_FFd10/DYMUX_2328 ;
  wire \maqEstados/state_FSM_FFd10-In ;
  wire \maqEstados/state_FSM_FFd10/SRINV_2318 ;
  wire \maqEstados/state_FSM_FFd10/CLKINV_2317 ;
  wire \maqEstados/state_FSM_FFd12/DXMUX_2366 ;
  wire \maqEstados/state_FSM_FFd12-In ;
  wire \maqEstados/state_FSM_FFd12/DYMUX_2353 ;
  wire \maqEstados/state_FSM_FFd11-In ;
  wire \maqEstados/state_FSM_FFd12/SRINV_2343 ;
  wire \maqEstados/state_FSM_FFd12/CLKINV_2342 ;
  wire \maqEstados/state_FSM_Out39_2401 ;
  wire \maqEstados/state_FSM_FFd21/DYMUX_2392 ;
  wire \maqEstados/state_FSM_FFd21-In ;
  wire \maqEstados/state_FSM_FFd21/SRINV_2383 ;
  wire \maqEstados/state_FSM_FFd21/CLKINV_2382 ;
  wire \maqEstados/state_FSM_FFd20/DXMUX_2437 ;
  wire \maqEstados/state_FSM_FFd20-In ;
  wire \maqEstados/state_FSM_FFd20/DYMUX_2423 ;
  wire \maqEstados/state_FSM_FFd19-In ;
  wire \maqEstados/state_FSM_FFd20/SRINV_2413 ;
  wire \maqEstados/state_FSM_FFd20/CLKINV_2412 ;
  wire luces_6_OBUF_2463;
  wire \maqEstados/state_FSM_Out314_pack_1 ;
  wire \registroPeaton/valor_walk_actual/DYMUX_2475 ;
  wire \registroPeaton/valor_walk_actual/BYINV_2474 ;
  wire \registroPeaton/valor_walk_actual/SRINV_2473 ;
  wire \registroPeaton/valor_walk_actual/CLKINV_2472 ;
  wire \registroPeaton/valor_walk_actual/CEINV_2471 ;
  wire luces_2_OBUF_2502;
  wire N2_pack_1;
  wire \divisor/segundero/DYMUX_2512 ;
  wire \divisor/segundero/CLKINV_2510 ;
  wire \divisor/segundero/CEINV_2509 ;
  wire \temporizador/tiempoTranscurrido<0>/DXMUX_2543 ;
  wire \temporizador/tiempoTranscurrido<0>/DYMUX_2535 ;
  wire \Result<1>1 ;
  wire \temporizador/tiempoTranscurrido<0>/SRINV_2525 ;
  wire \temporizador/tiempoTranscurrido<0>/CLKINVNOT ;
  wire luces_0_OBUF_2571;
  wire N8_pack_1;
  wire \maqEstados/state_FSM_FFd1/DXMUX_2586 ;
  wire \maqEstados/state_FSM_FFd1/BXINV_2585 ;
  wire \maqEstados/state_FSM_FFd1/REVUSED_2584 ;
  wire \maqEstados/state_FSM_FFd1/SRINV_2582 ;
  wire \maqEstados/state_FSM_FFd1/CLKINV_2581 ;
  wire \maqEstados/state_FSM_FFd1/CEINV_2580 ;
  wire \maqEstados/state_FSM_FFd2/DYMUX_2600 ;
  wire \maqEstados/state_FSM_FFd2/SRINV_2598 ;
  wire \maqEstados/state_FSM_FFd2/CLKINV_2597 ;
  wire \maqEstados/state_FSM_FFd6/DXMUX_2617 ;
  wire \maqEstados/state_FSM_FFd6/BXINV_2616 ;
  wire \maqEstados/state_FSM_FFd6/REVUSED_2615 ;
  wire \maqEstados/state_FSM_FFd6/SRINV_2613 ;
  wire \maqEstados/state_FSM_FFd6/CLKINV_2612 ;
  wire \maqEstados/state_FSM_FFd6/CEINV_2611 ;
  wire \maqEstados/state_FSM_FFd7/DYMUX_2631 ;
  wire \maqEstados/state_FSM_FFd7/SRINV_2629 ;
  wire \maqEstados/state_FSM_FFd7/CLKINV_2628 ;
  wire \maqEstados/state_FSM_FFd8/DXMUX_2648 ;
  wire \maqEstados/state_FSM_FFd8/BXINV_2647 ;
  wire \maqEstados/state_FSM_FFd8/REVUSED_2646 ;
  wire \maqEstados/state_FSM_FFd8/SRINV_2644 ;
  wire \maqEstados/state_FSM_FFd8/CLKINV_2643 ;
  wire \maqEstados/state_FSM_FFd8/CEINV_2642 ;
  wire \maqEstados/state_FSM_FFd9/DXMUX_2665 ;
  wire \maqEstados/state_FSM_FFd9/REVUSED_2663 ;
  wire \maqEstados/state_FSM_FFd9/SRINV_2661 ;
  wire \maqEstados/state_FSM_FFd9/CLKINV_2660 ;
  wire luces_5_OBUF_2692;
  wire N6_pack_1;
  wire \maqEstados/state_FSM_Out54_2716 ;
  wire \maqEstados/state_FSM_Out34_2709 ;
  wire start_timer_inv_2740;
  wire N01_pack_1;
  wire luces_4_OBUF_2764;
  wire \maqEstados/state_FSM_Out59_pack_1 ;
  wire \maqEstados/state_FSM_FFd13/DXMUX_2779 ;
  wire \maqEstados/state_FSM_FFd13/BXINV_2778 ;
  wire \maqEstados/state_FSM_FFd13/REVUSED_2777 ;
  wire \maqEstados/state_FSM_FFd13/SRINV_2775 ;
  wire \maqEstados/state_FSM_FFd13/CLKINV_2774 ;
  wire \maqEstados/state_FSM_FFd13/CEINV_2773 ;
  wire \maqEstados/state_FSM_FFd22/DXMUX_2798 ;
  wire \maqEstados/state_FSM_FFd22/BXINV_2797 ;
  wire \maqEstados/state_FSM_FFd22/REVUSED_2796 ;
  wire \maqEstados/state_FSM_FFd22/SRINV_2794 ;
  wire \maqEstados/state_FSM_FFd22/CLKINV_2793 ;
  wire \maqEstados/state_FSM_FFd22/CEINV_2792 ;
  wire \maqEstados/state_FSM_FFd14/DYMUX_2812 ;
  wire \maqEstados/state_FSM_FFd14/SRINV_2810 ;
  wire \maqEstados/state_FSM_FFd14/CLKINV_2809 ;
  wire \maqEstados/state_FSM_FFd23/DXMUX_2841 ;
  wire \maqEstados/state_FSM_FFd23/DYMUX_2835 ;
  wire \maqEstados/state_FSM_FFd24-In ;
  wire \maqEstados/state_FSM_FFd23/SRINV_2826 ;
  wire \maqEstados/state_FSM_FFd23/CLKINV_2825 ;
  wire \maqEstados/state_FSM_FFd15/DXMUX_2870 ;
  wire \maqEstados/state_FSM_FFd15/DYMUX_2864 ;
  wire \maqEstados/state_FSM_FFd16-In ;
  wire \maqEstados/state_FSM_FFd15/SRINV_2855 ;
  wire \maqEstados/state_FSM_FFd15/CLKINV_2854 ;
  wire \maqEstados/state_FSM_FFd17/DXMUX_2887 ;
  wire \maqEstados/state_FSM_FFd17/BXINV_2886 ;
  wire \maqEstados/state_FSM_FFd17/REVUSED_2885 ;
  wire \maqEstados/state_FSM_FFd17/SRINV_2883 ;
  wire \maqEstados/state_FSM_FFd17/CLKINV_2882 ;
  wire \maqEstados/state_FSM_FFd17/CEINV_2881 ;
  wire \maqEstados/state_FSM_FFd18/DXMUX_2904 ;
  wire \maqEstados/state_FSM_FFd18/REVUSED_2902 ;
  wire \maqEstados/state_FSM_FFd18/SRINV_2900 ;
  wire \maqEstados/state_FSM_FFd18/CLKINV_2899 ;
  wire luces_3_OBUF_2931;
  wire N4_pack_1;
  wire GND;
  wire VCC;
  wire [21 : 0] \divisor/contador ;
  wire [3 : 0] \parametros/tbase ;
  wire [3 : 0] \parametros/tyel ;
  wire [3 : 0] \sincronizador/salida ;
  wire [3 : 0] \parametros/text ;
  wire [3 : 0] \temporizador/tiempoTranscurrido ;
  wire [5 : 0] \divisor/segundero_cmp_eq0000_wg_lut ;
  wire [0 : 0] \divisor/segundero_cmp_eq0000_wg_cy ;
  wire [21 : 1] \divisor/Mcount_contador_lut ;
  wire [3 : 0] \parametros/tyel_mux0000 ;
  wire [3 : 0] \parametros/tbase_mux0000 ;
  wire [1 : 0] Intervalo;
  wire [3 : 0] \parametros/text_mux0000 ;
  initial $sdf_annotate("netgen/map/controladorlucessemaforo_map.sdf");
  X_ZERO   \divisor/segundero_cmp_eq0000_wg_cy<1>/LOGIC_ZERO  (
    .O(\divisor/segundero_cmp_eq0000_wg_cy<1>/LOGIC_ZERO_865 )
  );
  X_MUX2   \divisor/segundero_cmp_eq0000_wg_cy<1>/CYMUXF  (
    .IA(\divisor/segundero_cmp_eq0000_wg_cy<1>/LOGIC_ZERO_865 ),
    .IB(\divisor/segundero_cmp_eq0000_wg_cy<1>/CYINIT_878 ),
    .SEL(\divisor/segundero_cmp_eq0000_wg_cy<1>/CYSELF_870 ),
    .O(\divisor/segundero_cmp_eq0000_wg_cy [0])
  );
  X_BUF   \divisor/segundero_cmp_eq0000_wg_cy<1>/CYINIT  (
    .I(\divisor/segundero_cmp_eq0000_wg_cy<1>/BXINV_868 ),
    .O(\divisor/segundero_cmp_eq0000_wg_cy<1>/CYINIT_878 )
  );
  X_BUF   \divisor/segundero_cmp_eq0000_wg_cy<1>/CYSELF  (
    .I(\divisor/segundero_cmp_eq0000_wg_lut [0]),
    .O(\divisor/segundero_cmp_eq0000_wg_cy<1>/CYSELF_870 )
  );
  X_BUF   \divisor/segundero_cmp_eq0000_wg_cy<1>/BXINV  (
    .I(1'b1),
    .O(\divisor/segundero_cmp_eq0000_wg_cy<1>/BXINV_868 )
  );
  X_MUX2   \divisor/segundero_cmp_eq0000_wg_cy<1>/CYMUXG  (
    .IA(\divisor/segundero_cmp_eq0000_wg_cy<1>/LOGIC_ZERO_865 ),
    .IB(\divisor/segundero_cmp_eq0000_wg_cy [0]),
    .SEL(\divisor/segundero_cmp_eq0000_wg_cy<1>/CYSELG_859 ),
    .O(\divisor/segundero_cmp_eq0000_wg_cy<1>/CYMUXG_867 )
  );
  X_BUF   \divisor/segundero_cmp_eq0000_wg_cy<1>/CYSELG  (
    .I(\divisor/segundero_cmp_eq0000_wg_lut [1]),
    .O(\divisor/segundero_cmp_eq0000_wg_cy<1>/CYSELG_859 )
  );
  X_ZERO   \divisor/segundero_cmp_eq0000_wg_cy<3>/LOGIC_ZERO  (
    .O(\divisor/segundero_cmp_eq0000_wg_cy<3>/LOGIC_ZERO_896 )
  );
  X_MUX2   \divisor/segundero_cmp_eq0000_wg_cy<3>/CYMUXF2  (
    .IA(\divisor/segundero_cmp_eq0000_wg_cy<3>/LOGIC_ZERO_896 ),
    .IB(\divisor/segundero_cmp_eq0000_wg_cy<3>/LOGIC_ZERO_896 ),
    .SEL(\divisor/segundero_cmp_eq0000_wg_cy<3>/CYSELF_902 ),
    .O(\divisor/segundero_cmp_eq0000_wg_cy<3>/CYMUXF2_897 )
  );
  X_BUF   \divisor/segundero_cmp_eq0000_wg_cy<3>/CYSELF  (
    .I(\divisor/segundero_cmp_eq0000_wg_lut [2]),
    .O(\divisor/segundero_cmp_eq0000_wg_cy<3>/CYSELF_902 )
  );
  X_BUF   \divisor/segundero_cmp_eq0000_wg_cy<3>/FASTCARRY  (
    .I(\divisor/segundero_cmp_eq0000_wg_cy<1>/CYMUXG_867 ),
    .O(\divisor/segundero_cmp_eq0000_wg_cy<3>/FASTCARRY_899 )
  );
  X_AND2   \divisor/segundero_cmp_eq0000_wg_cy<3>/CYAND  (
    .I0(\divisor/segundero_cmp_eq0000_wg_cy<3>/CYSELG_890 ),
    .I1(\divisor/segundero_cmp_eq0000_wg_cy<3>/CYSELF_902 ),
    .O(\divisor/segundero_cmp_eq0000_wg_cy<3>/CYAND_900 )
  );
  X_MUX2   \divisor/segundero_cmp_eq0000_wg_cy<3>/CYMUXFAST  (
    .IA(\divisor/segundero_cmp_eq0000_wg_cy<3>/CYMUXG2_898 ),
    .IB(\divisor/segundero_cmp_eq0000_wg_cy<3>/FASTCARRY_899 ),
    .SEL(\divisor/segundero_cmp_eq0000_wg_cy<3>/CYAND_900 ),
    .O(\divisor/segundero_cmp_eq0000_wg_cy<3>/CYMUXFAST_901 )
  );
  X_MUX2   \divisor/segundero_cmp_eq0000_wg_cy<3>/CYMUXG2  (
    .IA(\divisor/segundero_cmp_eq0000_wg_cy<3>/LOGIC_ZERO_896 ),
    .IB(\divisor/segundero_cmp_eq0000_wg_cy<3>/CYMUXF2_897 ),
    .SEL(\divisor/segundero_cmp_eq0000_wg_cy<3>/CYSELG_890 ),
    .O(\divisor/segundero_cmp_eq0000_wg_cy<3>/CYMUXG2_898 )
  );
  X_BUF   \divisor/segundero_cmp_eq0000_wg_cy<3>/CYSELG  (
    .I(\divisor/segundero_cmp_eq0000_wg_lut [3]),
    .O(\divisor/segundero_cmp_eq0000_wg_cy<3>/CYSELG_890 )
  );
  X_ZERO   \divisor/segundero_not0001_inv/LOGIC_ZERO  (
    .O(\divisor/segundero_not0001_inv/LOGIC_ZERO_926 )
  );
  X_MUX2   \divisor/segundero_not0001_inv/CYMUXF2  (
    .IA(\divisor/segundero_not0001_inv/LOGIC_ZERO_926 ),
    .IB(\divisor/segundero_not0001_inv/LOGIC_ZERO_926 ),
    .SEL(\divisor/segundero_not0001_inv/CYSELF_932 ),
    .O(\divisor/segundero_not0001_inv/CYMUXF2_927 )
  );
  X_BUF   \divisor/segundero_not0001_inv/CYSELF  (
    .I(\divisor/segundero_cmp_eq0000_wg_lut [4]),
    .O(\divisor/segundero_not0001_inv/CYSELF_932 )
  );
  X_BUF   \divisor/segundero_not0001_inv/COUTUSED  (
    .I(\divisor/segundero_not0001_inv/CYMUXFAST_931 ),
    .O(\divisor/segundero_not0001_inv )
  );
  X_BUF   \divisor/segundero_not0001_inv/FASTCARRY  (
    .I(\divisor/segundero_cmp_eq0000_wg_cy<3>/CYMUXFAST_901 ),
    .O(\divisor/segundero_not0001_inv/FASTCARRY_929 )
  );
  X_AND2   \divisor/segundero_not0001_inv/CYAND  (
    .I0(\divisor/segundero_not0001_inv/CYSELG_920 ),
    .I1(\divisor/segundero_not0001_inv/CYSELF_932 ),
    .O(\divisor/segundero_not0001_inv/CYAND_930 )
  );
  X_MUX2   \divisor/segundero_not0001_inv/CYMUXFAST  (
    .IA(\divisor/segundero_not0001_inv/CYMUXG2_928 ),
    .IB(\divisor/segundero_not0001_inv/FASTCARRY_929 ),
    .SEL(\divisor/segundero_not0001_inv/CYAND_930 ),
    .O(\divisor/segundero_not0001_inv/CYMUXFAST_931 )
  );
  X_MUX2   \divisor/segundero_not0001_inv/CYMUXG2  (
    .IA(\divisor/segundero_not0001_inv/LOGIC_ZERO_926 ),
    .IB(\divisor/segundero_not0001_inv/CYMUXF2_927 ),
    .SEL(\divisor/segundero_not0001_inv/CYSELG_920 ),
    .O(\divisor/segundero_not0001_inv/CYMUXG2_928 )
  );
  X_BUF   \divisor/segundero_not0001_inv/CYSELG  (
    .I(\divisor/segundero_cmp_eq0000_wg_lut [5]),
    .O(\divisor/segundero_not0001_inv/CYSELG_920 )
  );
  X_ONE   \divisor/contador<0>/LOGIC_ONE  (
    .O(\divisor/contador<0>/LOGIC_ONE_959 )
  );
  X_ZERO   \divisor/contador<0>/LOGIC_ZERO  (
    .O(\divisor/contador<0>/LOGIC_ZERO_981 )
  );
  X_BUF   \divisor/contador<0>/DXMUX  (
    .I(\divisor/contador<0>/XORF_982 ),
    .O(\divisor/contador<0>/DXMUX_984 )
  );
  X_XOR2   \divisor/contador<0>/XORF  (
    .I0(\divisor/contador<0>/CYINIT_980 ),
    .I1(\divisor/contador<0>/F ),
    .O(\divisor/contador<0>/XORF_982 )
  );
  X_MUX2   \divisor/contador<0>/CYMUXF  (
    .IA(\divisor/contador<0>/LOGIC_ZERO_981 ),
    .IB(\divisor/contador<0>/CYINIT_980 ),
    .SEL(\divisor/contador<0>/CYSELF_971 ),
    .O(\divisor/Mcount_contador_cy[0] )
  );
  X_BUF   \divisor/contador<0>/CYINIT  (
    .I(\divisor/contador<0>/BXINV_969 ),
    .O(\divisor/contador<0>/CYINIT_980 )
  );
  X_BUF   \divisor/contador<0>/CYSELF  (
    .I(\divisor/contador<0>/F ),
    .O(\divisor/contador<0>/CYSELF_971 )
  );
  X_BUF   \divisor/contador<0>/BXINV  (
    .I(1'b1),
    .O(\divisor/contador<0>/BXINV_969 )
  );
  X_BUF   \divisor/contador<0>/DYMUX  (
    .I(\divisor/contador<0>/XORG_962 ),
    .O(\divisor/contador<0>/DYMUX_964 )
  );
  X_XOR2   \divisor/contador<0>/XORG  (
    .I0(\divisor/Mcount_contador_cy[0] ),
    .I1(\divisor/Mcount_contador_lut [1]),
    .O(\divisor/contador<0>/XORG_962 )
  );
  X_BUF   \divisor/contador<0>/COUTUSED  (
    .I(\divisor/contador<0>/CYMUXG_961 ),
    .O(\divisor/Mcount_contador_cy[1] )
  );
  X_MUX2   \divisor/contador<0>/CYMUXG  (
    .IA(\divisor/contador<0>/LOGIC_ONE_959 ),
    .IB(\divisor/Mcount_contador_cy[0] ),
    .SEL(\divisor/contador<0>/CYSELG_950 ),
    .O(\divisor/contador<0>/CYMUXG_961 )
  );
  X_BUF   \divisor/contador<0>/CYSELG  (
    .I(\divisor/Mcount_contador_lut [1]),
    .O(\divisor/contador<0>/CYSELG_950 )
  );
  X_BUF   \divisor/contador<0>/SRINV  (
    .I(\divisor/segundero_not0001_inv ),
    .O(\divisor/contador<0>/SRINV_948 )
  );
  X_BUF   \divisor/contador<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\divisor/contador<0>/CLKINV_947 )
  );
  X_ONE   \divisor/contador<2>/LOGIC_ONE  (
    .O(\divisor/contador<2>/LOGIC_ONE_1009 )
  );
  X_BUF   \divisor/contador<2>/DXMUX  (
    .I(\divisor/contador<2>/XORF_1034 ),
    .O(\divisor/contador<2>/DXMUX_1036 )
  );
  X_XOR2   \divisor/contador<2>/XORF  (
    .I0(\divisor/contador<2>/CYINIT_1033 ),
    .I1(\divisor/Mcount_contador_lut [2]),
    .O(\divisor/contador<2>/XORF_1034 )
  );
  X_MUX2   \divisor/contador<2>/CYMUXF  (
    .IA(\divisor/contador<2>/LOGIC_ONE_1009 ),
    .IB(\divisor/contador<2>/CYINIT_1033 ),
    .SEL(\divisor/contador<2>/CYSELF_1015 ),
    .O(\divisor/Mcount_contador_cy[2] )
  );
  X_MUX2   \divisor/contador<2>/CYMUXF2  (
    .IA(\divisor/contador<2>/LOGIC_ONE_1009 ),
    .IB(\divisor/contador<2>/LOGIC_ONE_1009 ),
    .SEL(\divisor/contador<2>/CYSELF_1015 ),
    .O(\divisor/contador<2>/CYMUXF2_1010 )
  );
  X_BUF   \divisor/contador<2>/CYINIT  (
    .I(\divisor/Mcount_contador_cy[1] ),
    .O(\divisor/contador<2>/CYINIT_1033 )
  );
  X_BUF   \divisor/contador<2>/CYSELF  (
    .I(\divisor/Mcount_contador_lut [2]),
    .O(\divisor/contador<2>/CYSELF_1015 )
  );
  X_BUF   \divisor/contador<2>/DYMUX  (
    .I(\divisor/contador<2>/XORG_1017 ),
    .O(\divisor/contador<2>/DYMUX_1019 )
  );
  X_XOR2   \divisor/contador<2>/XORG  (
    .I0(\divisor/Mcount_contador_cy[2] ),
    .I1(\divisor/Mcount_contador_lut [3]),
    .O(\divisor/contador<2>/XORG_1017 )
  );
  X_BUF   \divisor/contador<2>/COUTUSED  (
    .I(\divisor/contador<2>/CYMUXFAST_1014 ),
    .O(\divisor/Mcount_contador_cy[3] )
  );
  X_BUF   \divisor/contador<2>/FASTCARRY  (
    .I(\divisor/Mcount_contador_cy[1] ),
    .O(\divisor/contador<2>/FASTCARRY_1012 )
  );
  X_AND2   \divisor/contador<2>/CYAND  (
    .I0(\divisor/contador<2>/CYSELG_1000 ),
    .I1(\divisor/contador<2>/CYSELF_1015 ),
    .O(\divisor/contador<2>/CYAND_1013 )
  );
  X_MUX2   \divisor/contador<2>/CYMUXFAST  (
    .IA(\divisor/contador<2>/CYMUXG2_1011 ),
    .IB(\divisor/contador<2>/FASTCARRY_1012 ),
    .SEL(\divisor/contador<2>/CYAND_1013 ),
    .O(\divisor/contador<2>/CYMUXFAST_1014 )
  );
  X_MUX2   \divisor/contador<2>/CYMUXG2  (
    .IA(\divisor/contador<2>/LOGIC_ONE_1009 ),
    .IB(\divisor/contador<2>/CYMUXF2_1010 ),
    .SEL(\divisor/contador<2>/CYSELG_1000 ),
    .O(\divisor/contador<2>/CYMUXG2_1011 )
  );
  X_BUF   \divisor/contador<2>/CYSELG  (
    .I(\divisor/Mcount_contador_lut [3]),
    .O(\divisor/contador<2>/CYSELG_1000 )
  );
  X_BUF   \divisor/contador<2>/SRINV  (
    .I(\divisor/segundero_not0001_inv ),
    .O(\divisor/contador<2>/SRINV_998 )
  );
  X_BUF   \divisor/contador<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\divisor/contador<2>/CLKINV_997 )
  );
  X_ONE   \divisor/contador<4>/LOGIC_ONE  (
    .O(\divisor/contador<4>/LOGIC_ONE_1061 )
  );
  X_BUF   \divisor/contador<4>/DXMUX  (
    .I(\divisor/contador<4>/XORF_1086 ),
    .O(\divisor/contador<4>/DXMUX_1088 )
  );
  X_XOR2   \divisor/contador<4>/XORF  (
    .I0(\divisor/contador<4>/CYINIT_1085 ),
    .I1(\divisor/Mcount_contador_lut [4]),
    .O(\divisor/contador<4>/XORF_1086 )
  );
  X_MUX2   \divisor/contador<4>/CYMUXF  (
    .IA(\divisor/contador<4>/LOGIC_ONE_1061 ),
    .IB(\divisor/contador<4>/CYINIT_1085 ),
    .SEL(\divisor/contador<4>/CYSELF_1067 ),
    .O(\divisor/Mcount_contador_cy[4] )
  );
  X_MUX2   \divisor/contador<4>/CYMUXF2  (
    .IA(\divisor/contador<4>/LOGIC_ONE_1061 ),
    .IB(\divisor/contador<4>/LOGIC_ONE_1061 ),
    .SEL(\divisor/contador<4>/CYSELF_1067 ),
    .O(\divisor/contador<4>/CYMUXF2_1062 )
  );
  X_BUF   \divisor/contador<4>/CYINIT  (
    .I(\divisor/Mcount_contador_cy[3] ),
    .O(\divisor/contador<4>/CYINIT_1085 )
  );
  X_BUF   \divisor/contador<4>/CYSELF  (
    .I(\divisor/Mcount_contador_lut [4]),
    .O(\divisor/contador<4>/CYSELF_1067 )
  );
  X_BUF   \divisor/contador<4>/DYMUX  (
    .I(\divisor/contador<4>/XORG_1069 ),
    .O(\divisor/contador<4>/DYMUX_1071 )
  );
  X_XOR2   \divisor/contador<4>/XORG  (
    .I0(\divisor/Mcount_contador_cy[4] ),
    .I1(\divisor/Mcount_contador_lut [5]),
    .O(\divisor/contador<4>/XORG_1069 )
  );
  X_BUF   \divisor/contador<4>/COUTUSED  (
    .I(\divisor/contador<4>/CYMUXFAST_1066 ),
    .O(\divisor/Mcount_contador_cy[5] )
  );
  X_BUF   \divisor/contador<4>/FASTCARRY  (
    .I(\divisor/Mcount_contador_cy[3] ),
    .O(\divisor/contador<4>/FASTCARRY_1064 )
  );
  X_AND2   \divisor/contador<4>/CYAND  (
    .I0(\divisor/contador<4>/CYSELG_1052 ),
    .I1(\divisor/contador<4>/CYSELF_1067 ),
    .O(\divisor/contador<4>/CYAND_1065 )
  );
  X_MUX2   \divisor/contador<4>/CYMUXFAST  (
    .IA(\divisor/contador<4>/CYMUXG2_1063 ),
    .IB(\divisor/contador<4>/FASTCARRY_1064 ),
    .SEL(\divisor/contador<4>/CYAND_1065 ),
    .O(\divisor/contador<4>/CYMUXFAST_1066 )
  );
  X_MUX2   \divisor/contador<4>/CYMUXG2  (
    .IA(\divisor/contador<4>/LOGIC_ONE_1061 ),
    .IB(\divisor/contador<4>/CYMUXF2_1062 ),
    .SEL(\divisor/contador<4>/CYSELG_1052 ),
    .O(\divisor/contador<4>/CYMUXG2_1063 )
  );
  X_BUF   \divisor/contador<4>/CYSELG  (
    .I(\divisor/Mcount_contador_lut [5]),
    .O(\divisor/contador<4>/CYSELG_1052 )
  );
  X_BUF   \divisor/contador<4>/SRINV  (
    .I(\divisor/segundero_not0001_inv ),
    .O(\divisor/contador<4>/SRINV_1050 )
  );
  X_BUF   \divisor/contador<4>/CLKINV  (
    .I(clk_BUFGP),
    .O(\divisor/contador<4>/CLKINV_1049 )
  );
  X_ONE   \divisor/contador<6>/LOGIC_ONE  (
    .O(\divisor/contador<6>/LOGIC_ONE_1113 )
  );
  X_BUF   \divisor/contador<6>/DXMUX  (
    .I(\divisor/contador<6>/XORF_1138 ),
    .O(\divisor/contador<6>/DXMUX_1140 )
  );
  X_XOR2   \divisor/contador<6>/XORF  (
    .I0(\divisor/contador<6>/CYINIT_1137 ),
    .I1(\divisor/Mcount_contador_lut [6]),
    .O(\divisor/contador<6>/XORF_1138 )
  );
  X_MUX2   \divisor/contador<6>/CYMUXF  (
    .IA(\divisor/contador<6>/LOGIC_ONE_1113 ),
    .IB(\divisor/contador<6>/CYINIT_1137 ),
    .SEL(\divisor/contador<6>/CYSELF_1119 ),
    .O(\divisor/Mcount_contador_cy[6] )
  );
  X_MUX2   \divisor/contador<6>/CYMUXF2  (
    .IA(\divisor/contador<6>/LOGIC_ONE_1113 ),
    .IB(\divisor/contador<6>/LOGIC_ONE_1113 ),
    .SEL(\divisor/contador<6>/CYSELF_1119 ),
    .O(\divisor/contador<6>/CYMUXF2_1114 )
  );
  X_BUF   \divisor/contador<6>/CYINIT  (
    .I(\divisor/Mcount_contador_cy[5] ),
    .O(\divisor/contador<6>/CYINIT_1137 )
  );
  X_BUF   \divisor/contador<6>/CYSELF  (
    .I(\divisor/Mcount_contador_lut [6]),
    .O(\divisor/contador<6>/CYSELF_1119 )
  );
  X_BUF   \divisor/contador<6>/DYMUX  (
    .I(\divisor/contador<6>/XORG_1121 ),
    .O(\divisor/contador<6>/DYMUX_1123 )
  );
  X_XOR2   \divisor/contador<6>/XORG  (
    .I0(\divisor/Mcount_contador_cy[6] ),
    .I1(\divisor/Mcount_contador_lut [7]),
    .O(\divisor/contador<6>/XORG_1121 )
  );
  X_BUF   \divisor/contador<6>/COUTUSED  (
    .I(\divisor/contador<6>/CYMUXFAST_1118 ),
    .O(\divisor/Mcount_contador_cy[7] )
  );
  X_BUF   \divisor/contador<6>/FASTCARRY  (
    .I(\divisor/Mcount_contador_cy[5] ),
    .O(\divisor/contador<6>/FASTCARRY_1116 )
  );
  X_AND2   \divisor/contador<6>/CYAND  (
    .I0(\divisor/contador<6>/CYSELG_1104 ),
    .I1(\divisor/contador<6>/CYSELF_1119 ),
    .O(\divisor/contador<6>/CYAND_1117 )
  );
  X_MUX2   \divisor/contador<6>/CYMUXFAST  (
    .IA(\divisor/contador<6>/CYMUXG2_1115 ),
    .IB(\divisor/contador<6>/FASTCARRY_1116 ),
    .SEL(\divisor/contador<6>/CYAND_1117 ),
    .O(\divisor/contador<6>/CYMUXFAST_1118 )
  );
  X_MUX2   \divisor/contador<6>/CYMUXG2  (
    .IA(\divisor/contador<6>/LOGIC_ONE_1113 ),
    .IB(\divisor/contador<6>/CYMUXF2_1114 ),
    .SEL(\divisor/contador<6>/CYSELG_1104 ),
    .O(\divisor/contador<6>/CYMUXG2_1115 )
  );
  X_BUF   \divisor/contador<6>/CYSELG  (
    .I(\divisor/Mcount_contador_lut [7]),
    .O(\divisor/contador<6>/CYSELG_1104 )
  );
  X_BUF   \divisor/contador<6>/SRINV  (
    .I(\divisor/segundero_not0001_inv ),
    .O(\divisor/contador<6>/SRINV_1102 )
  );
  X_BUF   \divisor/contador<6>/CLKINV  (
    .I(clk_BUFGP),
    .O(\divisor/contador<6>/CLKINV_1101 )
  );
  X_ONE   \divisor/contador<8>/LOGIC_ONE  (
    .O(\divisor/contador<8>/LOGIC_ONE_1165 )
  );
  X_BUF   \divisor/contador<8>/DXMUX  (
    .I(\divisor/contador<8>/XORF_1190 ),
    .O(\divisor/contador<8>/DXMUX_1192 )
  );
  X_XOR2   \divisor/contador<8>/XORF  (
    .I0(\divisor/contador<8>/CYINIT_1189 ),
    .I1(\divisor/Mcount_contador_lut [8]),
    .O(\divisor/contador<8>/XORF_1190 )
  );
  X_MUX2   \divisor/contador<8>/CYMUXF  (
    .IA(\divisor/contador<8>/LOGIC_ONE_1165 ),
    .IB(\divisor/contador<8>/CYINIT_1189 ),
    .SEL(\divisor/contador<8>/CYSELF_1171 ),
    .O(\divisor/Mcount_contador_cy[8] )
  );
  X_MUX2   \divisor/contador<8>/CYMUXF2  (
    .IA(\divisor/contador<8>/LOGIC_ONE_1165 ),
    .IB(\divisor/contador<8>/LOGIC_ONE_1165 ),
    .SEL(\divisor/contador<8>/CYSELF_1171 ),
    .O(\divisor/contador<8>/CYMUXF2_1166 )
  );
  X_BUF   \divisor/contador<8>/CYINIT  (
    .I(\divisor/Mcount_contador_cy[7] ),
    .O(\divisor/contador<8>/CYINIT_1189 )
  );
  X_BUF   \divisor/contador<8>/CYSELF  (
    .I(\divisor/Mcount_contador_lut [8]),
    .O(\divisor/contador<8>/CYSELF_1171 )
  );
  X_BUF   \divisor/contador<8>/DYMUX  (
    .I(\divisor/contador<8>/XORG_1173 ),
    .O(\divisor/contador<8>/DYMUX_1175 )
  );
  X_XOR2   \divisor/contador<8>/XORG  (
    .I0(\divisor/Mcount_contador_cy[8] ),
    .I1(\divisor/Mcount_contador_lut [9]),
    .O(\divisor/contador<8>/XORG_1173 )
  );
  X_BUF   \divisor/contador<8>/COUTUSED  (
    .I(\divisor/contador<8>/CYMUXFAST_1170 ),
    .O(\divisor/Mcount_contador_cy[9] )
  );
  X_BUF   \divisor/contador<8>/FASTCARRY  (
    .I(\divisor/Mcount_contador_cy[7] ),
    .O(\divisor/contador<8>/FASTCARRY_1168 )
  );
  X_AND2   \divisor/contador<8>/CYAND  (
    .I0(\divisor/contador<8>/CYSELG_1156 ),
    .I1(\divisor/contador<8>/CYSELF_1171 ),
    .O(\divisor/contador<8>/CYAND_1169 )
  );
  X_MUX2   \divisor/contador<8>/CYMUXFAST  (
    .IA(\divisor/contador<8>/CYMUXG2_1167 ),
    .IB(\divisor/contador<8>/FASTCARRY_1168 ),
    .SEL(\divisor/contador<8>/CYAND_1169 ),
    .O(\divisor/contador<8>/CYMUXFAST_1170 )
  );
  X_MUX2   \divisor/contador<8>/CYMUXG2  (
    .IA(\divisor/contador<8>/LOGIC_ONE_1165 ),
    .IB(\divisor/contador<8>/CYMUXF2_1166 ),
    .SEL(\divisor/contador<8>/CYSELG_1156 ),
    .O(\divisor/contador<8>/CYMUXG2_1167 )
  );
  X_BUF   \divisor/contador<8>/CYSELG  (
    .I(\divisor/Mcount_contador_lut [9]),
    .O(\divisor/contador<8>/CYSELG_1156 )
  );
  X_BUF   \divisor/contador<8>/SRINV  (
    .I(\divisor/segundero_not0001_inv ),
    .O(\divisor/contador<8>/SRINV_1154 )
  );
  X_BUF   \divisor/contador<8>/CLKINV  (
    .I(clk_BUFGP),
    .O(\divisor/contador<8>/CLKINV_1153 )
  );
  X_ONE   \divisor/contador<10>/LOGIC_ONE  (
    .O(\divisor/contador<10>/LOGIC_ONE_1217 )
  );
  X_BUF   \divisor/contador<10>/DXMUX  (
    .I(\divisor/contador<10>/XORF_1242 ),
    .O(\divisor/contador<10>/DXMUX_1244 )
  );
  X_XOR2   \divisor/contador<10>/XORF  (
    .I0(\divisor/contador<10>/CYINIT_1241 ),
    .I1(\divisor/Mcount_contador_lut [10]),
    .O(\divisor/contador<10>/XORF_1242 )
  );
  X_MUX2   \divisor/contador<10>/CYMUXF  (
    .IA(\divisor/contador<10>/LOGIC_ONE_1217 ),
    .IB(\divisor/contador<10>/CYINIT_1241 ),
    .SEL(\divisor/contador<10>/CYSELF_1223 ),
    .O(\divisor/Mcount_contador_cy[10] )
  );
  X_MUX2   \divisor/contador<10>/CYMUXF2  (
    .IA(\divisor/contador<10>/LOGIC_ONE_1217 ),
    .IB(\divisor/contador<10>/LOGIC_ONE_1217 ),
    .SEL(\divisor/contador<10>/CYSELF_1223 ),
    .O(\divisor/contador<10>/CYMUXF2_1218 )
  );
  X_BUF   \divisor/contador<10>/CYINIT  (
    .I(\divisor/Mcount_contador_cy[9] ),
    .O(\divisor/contador<10>/CYINIT_1241 )
  );
  X_BUF   \divisor/contador<10>/CYSELF  (
    .I(\divisor/Mcount_contador_lut [10]),
    .O(\divisor/contador<10>/CYSELF_1223 )
  );
  X_BUF   \divisor/contador<10>/DYMUX  (
    .I(\divisor/contador<10>/XORG_1225 ),
    .O(\divisor/contador<10>/DYMUX_1227 )
  );
  X_XOR2   \divisor/contador<10>/XORG  (
    .I0(\divisor/Mcount_contador_cy[10] ),
    .I1(\divisor/Mcount_contador_lut [11]),
    .O(\divisor/contador<10>/XORG_1225 )
  );
  X_BUF   \divisor/contador<10>/COUTUSED  (
    .I(\divisor/contador<10>/CYMUXFAST_1222 ),
    .O(\divisor/Mcount_contador_cy[11] )
  );
  X_BUF   \divisor/contador<10>/FASTCARRY  (
    .I(\divisor/Mcount_contador_cy[9] ),
    .O(\divisor/contador<10>/FASTCARRY_1220 )
  );
  X_AND2   \divisor/contador<10>/CYAND  (
    .I0(\divisor/contador<10>/CYSELG_1208 ),
    .I1(\divisor/contador<10>/CYSELF_1223 ),
    .O(\divisor/contador<10>/CYAND_1221 )
  );
  X_MUX2   \divisor/contador<10>/CYMUXFAST  (
    .IA(\divisor/contador<10>/CYMUXG2_1219 ),
    .IB(\divisor/contador<10>/FASTCARRY_1220 ),
    .SEL(\divisor/contador<10>/CYAND_1221 ),
    .O(\divisor/contador<10>/CYMUXFAST_1222 )
  );
  X_MUX2   \divisor/contador<10>/CYMUXG2  (
    .IA(\divisor/contador<10>/LOGIC_ONE_1217 ),
    .IB(\divisor/contador<10>/CYMUXF2_1218 ),
    .SEL(\divisor/contador<10>/CYSELG_1208 ),
    .O(\divisor/contador<10>/CYMUXG2_1219 )
  );
  X_BUF   \divisor/contador<10>/CYSELG  (
    .I(\divisor/Mcount_contador_lut [11]),
    .O(\divisor/contador<10>/CYSELG_1208 )
  );
  X_BUF   \divisor/contador<10>/SRINV  (
    .I(\divisor/segundero_not0001_inv ),
    .O(\divisor/contador<10>/SRINV_1206 )
  );
  X_BUF   \divisor/contador<10>/CLKINV  (
    .I(clk_BUFGP),
    .O(\divisor/contador<10>/CLKINV_1205 )
  );
  X_ONE   \divisor/contador<12>/LOGIC_ONE  (
    .O(\divisor/contador<12>/LOGIC_ONE_1269 )
  );
  X_BUF   \divisor/contador<12>/DXMUX  (
    .I(\divisor/contador<12>/XORF_1294 ),
    .O(\divisor/contador<12>/DXMUX_1296 )
  );
  X_XOR2   \divisor/contador<12>/XORF  (
    .I0(\divisor/contador<12>/CYINIT_1293 ),
    .I1(\divisor/Mcount_contador_lut [12]),
    .O(\divisor/contador<12>/XORF_1294 )
  );
  X_MUX2   \divisor/contador<12>/CYMUXF  (
    .IA(\divisor/contador<12>/LOGIC_ONE_1269 ),
    .IB(\divisor/contador<12>/CYINIT_1293 ),
    .SEL(\divisor/contador<12>/CYSELF_1275 ),
    .O(\divisor/Mcount_contador_cy[12] )
  );
  X_MUX2   \divisor/contador<12>/CYMUXF2  (
    .IA(\divisor/contador<12>/LOGIC_ONE_1269 ),
    .IB(\divisor/contador<12>/LOGIC_ONE_1269 ),
    .SEL(\divisor/contador<12>/CYSELF_1275 ),
    .O(\divisor/contador<12>/CYMUXF2_1270 )
  );
  X_BUF   \divisor/contador<12>/CYINIT  (
    .I(\divisor/Mcount_contador_cy[11] ),
    .O(\divisor/contador<12>/CYINIT_1293 )
  );
  X_BUF   \divisor/contador<12>/CYSELF  (
    .I(\divisor/Mcount_contador_lut [12]),
    .O(\divisor/contador<12>/CYSELF_1275 )
  );
  X_BUF   \divisor/contador<12>/DYMUX  (
    .I(\divisor/contador<12>/XORG_1277 ),
    .O(\divisor/contador<12>/DYMUX_1279 )
  );
  X_XOR2   \divisor/contador<12>/XORG  (
    .I0(\divisor/Mcount_contador_cy[12] ),
    .I1(\divisor/Mcount_contador_lut [13]),
    .O(\divisor/contador<12>/XORG_1277 )
  );
  X_BUF   \divisor/contador<12>/COUTUSED  (
    .I(\divisor/contador<12>/CYMUXFAST_1274 ),
    .O(\divisor/Mcount_contador_cy[13] )
  );
  X_BUF   \divisor/contador<12>/FASTCARRY  (
    .I(\divisor/Mcount_contador_cy[11] ),
    .O(\divisor/contador<12>/FASTCARRY_1272 )
  );
  X_AND2   \divisor/contador<12>/CYAND  (
    .I0(\divisor/contador<12>/CYSELG_1260 ),
    .I1(\divisor/contador<12>/CYSELF_1275 ),
    .O(\divisor/contador<12>/CYAND_1273 )
  );
  X_MUX2   \divisor/contador<12>/CYMUXFAST  (
    .IA(\divisor/contador<12>/CYMUXG2_1271 ),
    .IB(\divisor/contador<12>/FASTCARRY_1272 ),
    .SEL(\divisor/contador<12>/CYAND_1273 ),
    .O(\divisor/contador<12>/CYMUXFAST_1274 )
  );
  X_MUX2   \divisor/contador<12>/CYMUXG2  (
    .IA(\divisor/contador<12>/LOGIC_ONE_1269 ),
    .IB(\divisor/contador<12>/CYMUXF2_1270 ),
    .SEL(\divisor/contador<12>/CYSELG_1260 ),
    .O(\divisor/contador<12>/CYMUXG2_1271 )
  );
  X_BUF   \divisor/contador<12>/CYSELG  (
    .I(\divisor/Mcount_contador_lut [13]),
    .O(\divisor/contador<12>/CYSELG_1260 )
  );
  X_BUF   \divisor/contador<12>/SRINV  (
    .I(\divisor/segundero_not0001_inv ),
    .O(\divisor/contador<12>/SRINV_1258 )
  );
  X_BUF   \divisor/contador<12>/CLKINV  (
    .I(clk_BUFGP),
    .O(\divisor/contador<12>/CLKINV_1257 )
  );
  X_ONE   \divisor/contador<14>/LOGIC_ONE  (
    .O(\divisor/contador<14>/LOGIC_ONE_1321 )
  );
  X_BUF   \divisor/contador<14>/DXMUX  (
    .I(\divisor/contador<14>/XORF_1346 ),
    .O(\divisor/contador<14>/DXMUX_1348 )
  );
  X_XOR2   \divisor/contador<14>/XORF  (
    .I0(\divisor/contador<14>/CYINIT_1345 ),
    .I1(\divisor/Mcount_contador_lut [14]),
    .O(\divisor/contador<14>/XORF_1346 )
  );
  X_MUX2   \divisor/contador<14>/CYMUXF  (
    .IA(\divisor/contador<14>/LOGIC_ONE_1321 ),
    .IB(\divisor/contador<14>/CYINIT_1345 ),
    .SEL(\divisor/contador<14>/CYSELF_1327 ),
    .O(\divisor/Mcount_contador_cy[14] )
  );
  X_MUX2   \divisor/contador<14>/CYMUXF2  (
    .IA(\divisor/contador<14>/LOGIC_ONE_1321 ),
    .IB(\divisor/contador<14>/LOGIC_ONE_1321 ),
    .SEL(\divisor/contador<14>/CYSELF_1327 ),
    .O(\divisor/contador<14>/CYMUXF2_1322 )
  );
  X_BUF   \divisor/contador<14>/CYINIT  (
    .I(\divisor/Mcount_contador_cy[13] ),
    .O(\divisor/contador<14>/CYINIT_1345 )
  );
  X_BUF   \divisor/contador<14>/CYSELF  (
    .I(\divisor/Mcount_contador_lut [14]),
    .O(\divisor/contador<14>/CYSELF_1327 )
  );
  X_BUF   \divisor/contador<14>/DYMUX  (
    .I(\divisor/contador<14>/XORG_1329 ),
    .O(\divisor/contador<14>/DYMUX_1331 )
  );
  X_XOR2   \divisor/contador<14>/XORG  (
    .I0(\divisor/Mcount_contador_cy[14] ),
    .I1(\divisor/Mcount_contador_lut [15]),
    .O(\divisor/contador<14>/XORG_1329 )
  );
  X_BUF   \divisor/contador<14>/COUTUSED  (
    .I(\divisor/contador<14>/CYMUXFAST_1326 ),
    .O(\divisor/Mcount_contador_cy[15] )
  );
  X_BUF   \divisor/contador<14>/FASTCARRY  (
    .I(\divisor/Mcount_contador_cy[13] ),
    .O(\divisor/contador<14>/FASTCARRY_1324 )
  );
  X_AND2   \divisor/contador<14>/CYAND  (
    .I0(\divisor/contador<14>/CYSELG_1312 ),
    .I1(\divisor/contador<14>/CYSELF_1327 ),
    .O(\divisor/contador<14>/CYAND_1325 )
  );
  X_MUX2   \divisor/contador<14>/CYMUXFAST  (
    .IA(\divisor/contador<14>/CYMUXG2_1323 ),
    .IB(\divisor/contador<14>/FASTCARRY_1324 ),
    .SEL(\divisor/contador<14>/CYAND_1325 ),
    .O(\divisor/contador<14>/CYMUXFAST_1326 )
  );
  X_MUX2   \divisor/contador<14>/CYMUXG2  (
    .IA(\divisor/contador<14>/LOGIC_ONE_1321 ),
    .IB(\divisor/contador<14>/CYMUXF2_1322 ),
    .SEL(\divisor/contador<14>/CYSELG_1312 ),
    .O(\divisor/contador<14>/CYMUXG2_1323 )
  );
  X_BUF   \divisor/contador<14>/CYSELG  (
    .I(\divisor/Mcount_contador_lut [15]),
    .O(\divisor/contador<14>/CYSELG_1312 )
  );
  X_BUF   \divisor/contador<14>/SRINV  (
    .I(\divisor/segundero_not0001_inv ),
    .O(\divisor/contador<14>/SRINV_1310 )
  );
  X_BUF   \divisor/contador<14>/CLKINV  (
    .I(clk_BUFGP),
    .O(\divisor/contador<14>/CLKINV_1309 )
  );
  X_ONE   \divisor/contador<16>/LOGIC_ONE  (
    .O(\divisor/contador<16>/LOGIC_ONE_1373 )
  );
  X_BUF   \divisor/contador<16>/DXMUX  (
    .I(\divisor/contador<16>/XORF_1398 ),
    .O(\divisor/contador<16>/DXMUX_1400 )
  );
  X_XOR2   \divisor/contador<16>/XORF  (
    .I0(\divisor/contador<16>/CYINIT_1397 ),
    .I1(\divisor/Mcount_contador_lut [16]),
    .O(\divisor/contador<16>/XORF_1398 )
  );
  X_MUX2   \divisor/contador<16>/CYMUXF  (
    .IA(\divisor/contador<16>/LOGIC_ONE_1373 ),
    .IB(\divisor/contador<16>/CYINIT_1397 ),
    .SEL(\divisor/contador<16>/CYSELF_1379 ),
    .O(\divisor/Mcount_contador_cy[16] )
  );
  X_MUX2   \divisor/contador<16>/CYMUXF2  (
    .IA(\divisor/contador<16>/LOGIC_ONE_1373 ),
    .IB(\divisor/contador<16>/LOGIC_ONE_1373 ),
    .SEL(\divisor/contador<16>/CYSELF_1379 ),
    .O(\divisor/contador<16>/CYMUXF2_1374 )
  );
  X_BUF   \divisor/contador<16>/CYINIT  (
    .I(\divisor/Mcount_contador_cy[15] ),
    .O(\divisor/contador<16>/CYINIT_1397 )
  );
  X_BUF   \divisor/contador<16>/CYSELF  (
    .I(\divisor/Mcount_contador_lut [16]),
    .O(\divisor/contador<16>/CYSELF_1379 )
  );
  X_BUF   \divisor/contador<16>/DYMUX  (
    .I(\divisor/contador<16>/XORG_1381 ),
    .O(\divisor/contador<16>/DYMUX_1383 )
  );
  X_XOR2   \divisor/contador<16>/XORG  (
    .I0(\divisor/Mcount_contador_cy[16] ),
    .I1(\divisor/Mcount_contador_lut [17]),
    .O(\divisor/contador<16>/XORG_1381 )
  );
  X_BUF   \divisor/contador<16>/COUTUSED  (
    .I(\divisor/contador<16>/CYMUXFAST_1378 ),
    .O(\divisor/Mcount_contador_cy[17] )
  );
  X_BUF   \divisor/contador<16>/FASTCARRY  (
    .I(\divisor/Mcount_contador_cy[15] ),
    .O(\divisor/contador<16>/FASTCARRY_1376 )
  );
  X_AND2   \divisor/contador<16>/CYAND  (
    .I0(\divisor/contador<16>/CYSELG_1364 ),
    .I1(\divisor/contador<16>/CYSELF_1379 ),
    .O(\divisor/contador<16>/CYAND_1377 )
  );
  X_MUX2   \divisor/contador<16>/CYMUXFAST  (
    .IA(\divisor/contador<16>/CYMUXG2_1375 ),
    .IB(\divisor/contador<16>/FASTCARRY_1376 ),
    .SEL(\divisor/contador<16>/CYAND_1377 ),
    .O(\divisor/contador<16>/CYMUXFAST_1378 )
  );
  X_MUX2   \divisor/contador<16>/CYMUXG2  (
    .IA(\divisor/contador<16>/LOGIC_ONE_1373 ),
    .IB(\divisor/contador<16>/CYMUXF2_1374 ),
    .SEL(\divisor/contador<16>/CYSELG_1364 ),
    .O(\divisor/contador<16>/CYMUXG2_1375 )
  );
  X_BUF   \divisor/contador<16>/CYSELG  (
    .I(\divisor/Mcount_contador_lut [17]),
    .O(\divisor/contador<16>/CYSELG_1364 )
  );
  X_BUF   \divisor/contador<16>/SRINV  (
    .I(\divisor/segundero_not0001_inv ),
    .O(\divisor/contador<16>/SRINV_1362 )
  );
  X_BUF   \divisor/contador<16>/CLKINV  (
    .I(clk_BUFGP),
    .O(\divisor/contador<16>/CLKINV_1361 )
  );
  X_ONE   \divisor/contador<18>/LOGIC_ONE  (
    .O(\divisor/contador<18>/LOGIC_ONE_1425 )
  );
  X_BUF   \divisor/contador<18>/DXMUX  (
    .I(\divisor/contador<18>/XORF_1450 ),
    .O(\divisor/contador<18>/DXMUX_1452 )
  );
  X_XOR2   \divisor/contador<18>/XORF  (
    .I0(\divisor/contador<18>/CYINIT_1449 ),
    .I1(\divisor/Mcount_contador_lut [18]),
    .O(\divisor/contador<18>/XORF_1450 )
  );
  X_MUX2   \divisor/contador<18>/CYMUXF  (
    .IA(\divisor/contador<18>/LOGIC_ONE_1425 ),
    .IB(\divisor/contador<18>/CYINIT_1449 ),
    .SEL(\divisor/contador<18>/CYSELF_1431 ),
    .O(\divisor/Mcount_contador_cy[18] )
  );
  X_MUX2   \divisor/contador<18>/CYMUXF2  (
    .IA(\divisor/contador<18>/LOGIC_ONE_1425 ),
    .IB(\divisor/contador<18>/LOGIC_ONE_1425 ),
    .SEL(\divisor/contador<18>/CYSELF_1431 ),
    .O(\divisor/contador<18>/CYMUXF2_1426 )
  );
  X_BUF   \divisor/contador<18>/CYINIT  (
    .I(\divisor/Mcount_contador_cy[17] ),
    .O(\divisor/contador<18>/CYINIT_1449 )
  );
  X_BUF   \divisor/contador<18>/CYSELF  (
    .I(\divisor/Mcount_contador_lut [18]),
    .O(\divisor/contador<18>/CYSELF_1431 )
  );
  X_BUF   \divisor/contador<18>/DYMUX  (
    .I(\divisor/contador<18>/XORG_1433 ),
    .O(\divisor/contador<18>/DYMUX_1435 )
  );
  X_XOR2   \divisor/contador<18>/XORG  (
    .I0(\divisor/Mcount_contador_cy[18] ),
    .I1(\divisor/Mcount_contador_lut [19]),
    .O(\divisor/contador<18>/XORG_1433 )
  );
  X_BUF   \divisor/contador<18>/FASTCARRY  (
    .I(\divisor/Mcount_contador_cy[17] ),
    .O(\divisor/contador<18>/FASTCARRY_1428 )
  );
  X_AND2   \divisor/contador<18>/CYAND  (
    .I0(\divisor/contador<18>/CYSELG_1416 ),
    .I1(\divisor/contador<18>/CYSELF_1431 ),
    .O(\divisor/contador<18>/CYAND_1429 )
  );
  X_MUX2   \divisor/contador<18>/CYMUXFAST  (
    .IA(\divisor/contador<18>/CYMUXG2_1427 ),
    .IB(\divisor/contador<18>/FASTCARRY_1428 ),
    .SEL(\divisor/contador<18>/CYAND_1429 ),
    .O(\divisor/contador<18>/CYMUXFAST_1430 )
  );
  X_MUX2   \divisor/contador<18>/CYMUXG2  (
    .IA(\divisor/contador<18>/LOGIC_ONE_1425 ),
    .IB(\divisor/contador<18>/CYMUXF2_1426 ),
    .SEL(\divisor/contador<18>/CYSELG_1416 ),
    .O(\divisor/contador<18>/CYMUXG2_1427 )
  );
  X_BUF   \divisor/contador<18>/CYSELG  (
    .I(\divisor/Mcount_contador_lut [19]),
    .O(\divisor/contador<18>/CYSELG_1416 )
  );
  X_BUF   \divisor/contador<18>/SRINV  (
    .I(\divisor/segundero_not0001_inv ),
    .O(\divisor/contador<18>/SRINV_1414 )
  );
  X_BUF   \divisor/contador<18>/CLKINV  (
    .I(clk_BUFGP),
    .O(\divisor/contador<18>/CLKINV_1413 )
  );
  X_ONE   \divisor/contador<20>/LOGIC_ONE  (
    .O(\divisor/contador<20>/LOGIC_ONE_1494 )
  );
  X_BUF   \divisor/contador<20>/DXMUX  (
    .I(\divisor/contador<20>/XORF_1495 ),
    .O(\divisor/contador<20>/DXMUX_1497 )
  );
  X_XOR2   \divisor/contador<20>/XORF  (
    .I0(\divisor/contador<20>/CYINIT_1493 ),
    .I1(\divisor/Mcount_contador_lut [20]),
    .O(\divisor/contador<20>/XORF_1495 )
  );
  X_MUX2   \divisor/contador<20>/CYMUXF  (
    .IA(\divisor/contador<20>/LOGIC_ONE_1494 ),
    .IB(\divisor/contador<20>/CYINIT_1493 ),
    .SEL(\divisor/contador<20>/CYSELF_1484 ),
    .O(\divisor/Mcount_contador_cy[20] )
  );
  X_BUF   \divisor/contador<20>/CYINIT  (
    .I(\divisor/contador<18>/CYMUXFAST_1430 ),
    .O(\divisor/contador<20>/CYINIT_1493 )
  );
  X_BUF   \divisor/contador<20>/CYSELF  (
    .I(\divisor/Mcount_contador_lut [20]),
    .O(\divisor/contador<20>/CYSELF_1484 )
  );
  X_BUF   \divisor/contador<20>/DYMUX  (
    .I(\divisor/contador<20>/XORG_1476 ),
    .O(\divisor/contador<20>/DYMUX_1478 )
  );
  X_XOR2   \divisor/contador<20>/XORG  (
    .I0(\divisor/Mcount_contador_cy[20] ),
    .I1(\divisor/Mcount_contador_lut [21]),
    .O(\divisor/contador<20>/XORG_1476 )
  );
  X_BUF   \divisor/contador<20>/SRINV  (
    .I(\divisor/segundero_not0001_inv ),
    .O(\divisor/contador<20>/SRINV_1465 )
  );
  X_BUF   \divisor/contador<20>/CLKINV  (
    .I(clk_BUFGP),
    .O(\divisor/contador<20>/CLKINV_1464 )
  );
  X_IPAD   \clk/PAD  (
    .PAD(clk)
  );
  X_BUF   \clk_BUFGP/IBUFG  (
    .I(clk),
    .O(\clk/INBUF )
  );
  X_IPAD   \Reprogram/PAD  (
    .PAD(Reprogram)
  );
  X_BUF   Reprogram_IBUF (
    .I(Reprogram),
    .O(\Reprogram/INBUF )
  );
  X_IPAD   \Walk_Request/PAD  (
    .PAD(Walk_Request)
  );
  X_BUF   Walk_Request_IBUF (
    .I(Walk_Request),
    .O(\Walk_Request/INBUF )
  );
  X_OPAD   \luces<0>/PAD  (
    .PAD(luces[0])
  );
  X_OBUF   luces_0_OBUF (
    .I(\luces<0>/O ),
    .O(luces[0])
  );
  X_OPAD   \luces<1>/PAD  (
    .PAD(luces[1])
  );
  X_OBUF   luces_1_OBUF (
    .I(\luces<1>/O ),
    .O(luces[1])
  );
  X_OPAD   \luces<2>/PAD  (
    .PAD(luces[2])
  );
  X_OBUF   luces_2_OBUF (
    .I(\luces<2>/O ),
    .O(luces[2])
  );
  X_OPAD   \luces<3>/PAD  (
    .PAD(luces[3])
  );
  X_OBUF   luces_3_OBUF (
    .I(\luces<3>/O ),
    .O(luces[3])
  );
  X_OPAD   \luces<4>/PAD  (
    .PAD(luces[4])
  );
  X_OBUF   luces_4_OBUF (
    .I(\luces<4>/O ),
    .O(luces[4])
  );
  X_OPAD   \luces<5>/PAD  (
    .PAD(luces[5])
  );
  X_OBUF   luces_5_OBUF (
    .I(\luces<5>/O ),
    .O(luces[5])
  );
  X_IPAD   \Time_Parameter_Selector<0>/PAD  (
    .PAD(Time_Parameter_Selector[0])
  );
  X_BUF   Time_Parameter_Selector_0_IBUF (
    .I(Time_Parameter_Selector[0]),
    .O(\Time_Parameter_Selector<0>/INBUF )
  );
  X_OPAD   \luces<6>/PAD  (
    .PAD(luces[6])
  );
  X_OBUF   luces_6_OBUF (
    .I(\luces<6>/O ),
    .O(luces[6])
  );
  X_IPAD   \Time_Parameter_Selector<1>/PAD  (
    .PAD(Time_Parameter_Selector[1])
  );
  X_BUF   Time_Parameter_Selector_1_IBUF (
    .I(Time_Parameter_Selector[1]),
    .O(\Time_Parameter_Selector<1>/INBUF )
  );
  X_IPAD   \Reset/PAD  (
    .PAD(Reset)
  );
  X_BUF   Reset_IBUF (
    .I(Reset),
    .O(\Reset/INBUF )
  );
  X_IPAD   \Time_Value<0>/PAD  (
    .PAD(Time_Value[0])
  );
  X_BUF   Time_Value_0_IBUF (
    .I(Time_Value[0]),
    .O(\Time_Value<0>/INBUF )
  );
  X_IPAD   \Time_Value<1>/PAD  (
    .PAD(Time_Value[1])
  );
  X_BUF   Time_Value_1_IBUF (
    .I(Time_Value[1]),
    .O(\Time_Value<1>/INBUF )
  );
  X_IPAD   \Time_Value<2>/PAD  (
    .PAD(Time_Value[2])
  );
  X_BUF   Time_Value_2_IBUF (
    .I(Time_Value[2]),
    .O(\Time_Value<2>/INBUF )
  );
  X_IPAD   \Time_Value<3>/PAD  (
    .PAD(Time_Value[3])
  );
  X_BUF   Time_Value_3_IBUF (
    .I(Time_Value[3]),
    .O(\Time_Value<3>/INBUF )
  );
  X_IPAD   \Sensor/PAD  (
    .PAD(Sensor)
  );
  X_BUF   Sensor_IBUF (
    .I(Sensor),
    .O(\Sensor/INBUF )
  );
  X_BUFGMUX   \clk_BUFGP/BUFG  (
    .I0(\clk_BUFGP/IBUFG_753 ),
    .I1(GND),
    .S(\clk_BUFGP/BUFG/S_INVNOT ),
    .O(clk_BUFGP)
  );
  X_INV   \clk_BUFGP/BUFG/SINV  (
    .I(1'b1),
    .O(\clk_BUFGP/BUFG/S_INVNOT )
  );
  X_MUX2   \maqEstados/state_FSM_Out811/F5MUX  (
    .IA(\maqEstados/state_FSM_Out8111_1639 ),
    .IB(\maqEstados/state_FSM_Out811/F ),
    .SEL(\maqEstados/state_FSM_Out811/BXINV_1641 ),
    .O(\maqEstados/state_FSM_Out811/F5MUX_1652 )
  );
  X_BUF   \maqEstados/state_FSM_Out811/BXINV  (
    .I(\maqEstados/state_FSM_FFd19_771 ),
    .O(\maqEstados/state_FSM_Out811/BXINV_1641 )
  );
  X_MUX2   \luces_1_OBUF/F5MUX  (
    .IA(\maqEstados/state_FSM_Out813 ),
    .IB(\luces_1_OBUF/F ),
    .SEL(\luces_1_OBUF/BXINV_1666 ),
    .O(\luces_1_OBUF/F5MUX_1677 )
  );
  X_BUF   \luces_1_OBUF/BXINV  (
    .I(\maqEstados/state_FSM_Out811/F5MUX_1652 ),
    .O(\luces_1_OBUF/BXINV_1666 )
  );
  X_BUF   \N20/XUSED  (
    .I(N20),
    .O(N20_0)
  );
  X_BUF   \N20/YUSED  (
    .I(N32_pack_1),
    .O(N32)
  );
  X_BUF   \parametros/tyel<1>/DXMUX  (
    .I(\parametros/tyel_mux0000 [1]),
    .O(\parametros/tyel<1>/DXMUX_1729 )
  );
  X_BUF   \parametros/tyel<1>/YUSED  (
    .I(\parametros/N01_pack_2 ),
    .O(\parametros/N01 )
  );
  X_BUF   \parametros/tyel<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\parametros/tyel<1>/CLKINV_1713 )
  );
  X_BUF   \parametros/tbase<2>/DXMUX  (
    .I(\parametros/tbase_mux0000 [2]),
    .O(\parametros/tbase<2>/DXMUX_1759 )
  );
  X_BUF   \parametros/tbase<2>/YUSED  (
    .I(\parametros/N11_pack_2 ),
    .O(\parametros/N11 )
  );
  X_BUF   \parametros/tbase<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\parametros/tbase<2>/CLKINV_1743 )
  );
  X_BUF   \Intervalo<1>/XUSED  (
    .I(Intervalo[1]),
    .O(\Intervalo<1>_0 )
  );
  X_BUF   \Intervalo<1>/YUSED  (
    .I(\maqEstados/state_FSM_Out1_SW0/O_pack_1 ),
    .O(\maqEstados/state_FSM_Out1_SW0/O )
  );
  X_BUF   \Intervalo<0>/XUSED  (
    .I(Intervalo[0]),
    .O(\Intervalo<0>_0 )
  );
  X_BUF   \Intervalo<0>/YUSED  (
    .I(\maqEstados/state_FSM_Out2_SW0/O_pack_1 ),
    .O(\maqEstados/state_FSM_Out2_SW0/O )
  );
  X_BUF   \parametros/text<1>/DXMUX  (
    .I(\parametros/text_mux0000 [1]),
    .O(\parametros/text<1>/DXMUX_1837 )
  );
  X_BUF   \parametros/text<1>/YUSED  (
    .I(\parametros/N2_pack_2 ),
    .O(\parametros/N2 )
  );
  X_BUF   \parametros/text<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\parametros/text<1>/CLKINV_1821 )
  );
  X_BUF   \maqEstados/state_FSM_FFd4/DXMUX  (
    .I(\maqEstados/state_FSM_FFd4-In ),
    .O(\maqEstados/state_FSM_FFd4/DXMUX_1869 )
  );
  X_BUF   \maqEstados/state_FSM_FFd4/YUSED  (
    .I(\time_expired454_SW0/O_pack_1 ),
    .O(\time_expired454_SW0/O )
  );
  X_BUF   \maqEstados/state_FSM_FFd4/SRINV  (
    .I(\sincronizador/salida [0]),
    .O(\maqEstados/state_FSM_FFd4/SRINV_1852 )
  );
  X_BUF   \maqEstados/state_FSM_FFd4/CLKINV  (
    .I(clk_BUFGP),
    .O(\maqEstados/state_FSM_FFd4/CLKINV_1851 )
  );
  X_BUF   \Valor<0>/XUSED  (
    .I(\Valor[0] ),
    .O(\Valor<0>_0 )
  );
  X_BUF   \Valor<0>/YUSED  (
    .I(\parametros/mux21_SW0/O_pack_1 ),
    .O(\parametros/mux21_SW0/O )
  );
  X_BUF   \Valor<2>/XUSED  (
    .I(\Valor[2] ),
    .O(\Valor<2>_0 )
  );
  X_BUF   \Valor<2>/YUSED  (
    .I(\parametros/mux22_SW0/O_pack_1 ),
    .O(\parametros/mux22_SW0/O )
  );
  X_BUF   \time_expired426/XUSED  (
    .I(time_expired426_1943),
    .O(time_expired426_0)
  );
  X_BUF   \time_expired426/YUSED  (
    .I(\parametros/mux12/O_pack_1 ),
    .O(\parametros/mux12/O )
  );
  X_BUF   \time_expired453/XUSED  (
    .I(time_expired453_1967),
    .O(time_expired453_0)
  );
  X_BUF   \time_expired453/YUSED  (
    .I(\parametros/mux32/O_pack_1 ),
    .O(\parametros/mux32/O )
  );
  X_BUF   \parametros/text<0>/DXMUX  (
    .I(\parametros/text_mux0000 [0]),
    .O(\parametros/text<0>/DXMUX_2000 )
  );
  X_BUF   \parametros/text<0>/DYMUX  (
    .I(\parametros/tyel_mux0000 [0]),
    .O(\parametros/text<0>/DYMUX_1989 )
  );
  X_BUF   \parametros/text<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\parametros/text<0>/CLKINV_1981 )
  );
  X_BUF   \parametros/tyel<3>/DXMUX  (
    .I(\parametros/tyel_mux0000 [3]),
    .O(\parametros/tyel<3>/DXMUX_2034 )
  );
  X_BUF   \parametros/tyel<3>/DYMUX  (
    .I(\parametros/tyel_mux0000 [2]),
    .O(\parametros/tyel<3>/DYMUX_2023 )
  );
  X_BUF   \parametros/tyel<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\parametros/tyel<3>/CLKINV_2015 )
  );
  X_BUF   \temporizador/tiempoTranscurrido<3>/DXMUX  (
    .I(\Result<3>1 ),
    .O(\temporizador/tiempoTranscurrido<3>/DXMUX_2073 )
  );
  X_BUF   \temporizador/tiempoTranscurrido<3>/DYMUX  (
    .I(\Result<2>1 ),
    .O(\temporizador/tiempoTranscurrido<3>/DYMUX_2059 )
  );
  X_BUF   \temporizador/tiempoTranscurrido<3>/SRINV  (
    .I(start_timer_inv_0),
    .O(\temporizador/tiempoTranscurrido<3>/SRINV_2050 )
  );
  X_INV   \temporizador/tiempoTranscurrido<3>/CLKINV  (
    .I(\divisor/segundero_829 ),
    .O(\temporizador/tiempoTranscurrido<3>/CLKINVNOT )
  );
  X_BUF   \sincronizador/salida<0>/DYMUX  (
    .I(\sincronizador/opcion_selecionada_cmp_eq00031 ),
    .O(\sincronizador/salida<0>/DYMUX_2096 )
  );
  X_BUF   \sincronizador/salida<0>/SRINV  (
    .I(Walk_Request_IBUF_755),
    .O(\sincronizador/salida<0>/SRINV_2087 )
  );
  X_INV   \sincronizador/salida<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\sincronizador/salida<0>/CLKINVNOT )
  );
  X_BUF   \sincronizador/salida<1>/DYMUX  (
    .I(\sincronizador/opcion_selecionada_cmp_eq00021 ),
    .O(\sincronizador/salida<1>/DYMUX_2117 )
  );
  X_BUF   \sincronizador/salida<1>/SRINV  (
    .I(Reprogram_IBUF_754),
    .O(\sincronizador/salida<1>/SRINV_2108 )
  );
  X_INV   \sincronizador/salida<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\sincronizador/salida<1>/CLKINVNOT )
  );
  X_BUF   \sincronizador/salida<3>/DXMUX  (
    .I(\sincronizador/opcion_selecionada_cmp_eq00001 ),
    .O(\sincronizador/salida<3>/DXMUX_2155 )
  );
  X_BUF   \sincronizador/salida<3>/DYMUX  (
    .I(\sincronizador/opcion_selecionada_cmp_eq00011 ),
    .O(\sincronizador/salida<3>/DYMUX_2142 )
  );
  X_BUF   \sincronizador/salida<3>/SRINV  (
    .I(Walk_Request_IBUF_755),
    .O(\sincronizador/salida<3>/SRINV_2133 )
  );
  X_INV   \sincronizador/salida<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\sincronizador/salida<3>/CLKINVNOT )
  );
  X_BUF   \parametros/tbase<1>/DXMUX  (
    .I(\parametros/tbase_mux0000 [1]),
    .O(\parametros/tbase<1>/DXMUX_2190 )
  );
  X_BUF   \parametros/tbase<1>/DYMUX  (
    .I(\parametros/tbase_mux0000 [0]),
    .O(\parametros/tbase<1>/DYMUX_2179 )
  );
  X_BUF   \parametros/tbase<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\parametros/tbase<1>/CLKINV_2171 )
  );
  X_BUF   \parametros/tbase<3>/XUSED  (
    .I(N14),
    .O(N14_0)
  );
  X_BUF   \parametros/tbase<3>/DYMUX  (
    .I(\parametros/tbase_mux0000 [3]),
    .O(\parametros/tbase<3>/DYMUX_2213 )
  );
  X_BUF   \parametros/tbase<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\parametros/tbase<3>/CLKINV_2205 )
  );
  X_BUF   \maqEstados/state_FSM_FFd3/DYMUX  (
    .I(\maqEstados/state_FSM_FFd3-In ),
    .O(\maqEstados/state_FSM_FFd3/DYMUX_2240 )
  );
  X_BUF   \maqEstados/state_FSM_FFd3/SRINV  (
    .I(\sincronizador/salida [0]),
    .O(\maqEstados/state_FSM_FFd3/SRINV_2230 )
  );
  X_BUF   \maqEstados/state_FSM_FFd3/CLKINV  (
    .I(clk_BUFGP),
    .O(\maqEstados/state_FSM_FFd3/CLKINV_2229 )
  );
  X_BUF   \maqEstados/state_FSM_FFd5/XUSED  (
    .I(time_expired),
    .O(time_expired_0)
  );
  X_BUF   \maqEstados/state_FSM_FFd5/DYMUX  (
    .I(\maqEstados/state_FSM_FFd5-In ),
    .O(\maqEstados/state_FSM_FFd5/DYMUX_2264 )
  );
  X_BUF   \maqEstados/state_FSM_FFd5/SRINV  (
    .I(\sincronizador/salida [0]),
    .O(\maqEstados/state_FSM_FFd5/SRINV_2255 )
  );
  X_BUF   \maqEstados/state_FSM_FFd5/CLKINV  (
    .I(clk_BUFGP),
    .O(\maqEstados/state_FSM_FFd5/CLKINV_2254 )
  );
  X_BUF   \parametros/text<3>/DXMUX  (
    .I(\parametros/text_mux0000 [3]),
    .O(\parametros/text<3>/DXMUX_2308 )
  );
  X_BUF   \parametros/text<3>/DYMUX  (
    .I(\parametros/text_mux0000 [2]),
    .O(\parametros/text<3>/DYMUX_2297 )
  );
  X_BUF   \parametros/text<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\parametros/text<3>/CLKINV_2289 )
  );
  X_BUF   \maqEstados/state_FSM_FFd10/DYMUX  (
    .I(\maqEstados/state_FSM_FFd10-In ),
    .O(\maqEstados/state_FSM_FFd10/DYMUX_2328 )
  );
  X_BUF   \maqEstados/state_FSM_FFd10/SRINV  (
    .I(\sincronizador/salida [0]),
    .O(\maqEstados/state_FSM_FFd10/SRINV_2318 )
  );
  X_BUF   \maqEstados/state_FSM_FFd10/CLKINV  (
    .I(clk_BUFGP),
    .O(\maqEstados/state_FSM_FFd10/CLKINV_2317 )
  );
  X_BUF   \maqEstados/state_FSM_FFd12/DXMUX  (
    .I(\maqEstados/state_FSM_FFd12-In ),
    .O(\maqEstados/state_FSM_FFd12/DXMUX_2366 )
  );
  X_BUF   \maqEstados/state_FSM_FFd12/DYMUX  (
    .I(\maqEstados/state_FSM_FFd11-In ),
    .O(\maqEstados/state_FSM_FFd12/DYMUX_2353 )
  );
  X_BUF   \maqEstados/state_FSM_FFd12/SRINV  (
    .I(\sincronizador/salida [0]),
    .O(\maqEstados/state_FSM_FFd12/SRINV_2343 )
  );
  X_BUF   \maqEstados/state_FSM_FFd12/CLKINV  (
    .I(clk_BUFGP),
    .O(\maqEstados/state_FSM_FFd12/CLKINV_2342 )
  );
  X_BUF   \maqEstados/state_FSM_FFd21/XUSED  (
    .I(\maqEstados/state_FSM_Out39_2401 ),
    .O(\maqEstados/state_FSM_Out39_0 )
  );
  X_BUF   \maqEstados/state_FSM_FFd21/DYMUX  (
    .I(\maqEstados/state_FSM_FFd21-In ),
    .O(\maqEstados/state_FSM_FFd21/DYMUX_2392 )
  );
  X_BUF   \maqEstados/state_FSM_FFd21/SRINV  (
    .I(\sincronizador/salida [0]),
    .O(\maqEstados/state_FSM_FFd21/SRINV_2383 )
  );
  X_BUF   \maqEstados/state_FSM_FFd21/CLKINV  (
    .I(clk_BUFGP),
    .O(\maqEstados/state_FSM_FFd21/CLKINV_2382 )
  );
  X_BUF   \maqEstados/state_FSM_FFd20/DXMUX  (
    .I(\maqEstados/state_FSM_FFd20-In ),
    .O(\maqEstados/state_FSM_FFd20/DXMUX_2437 )
  );
  X_BUF   \maqEstados/state_FSM_FFd20/DYMUX  (
    .I(\maqEstados/state_FSM_FFd19-In ),
    .O(\maqEstados/state_FSM_FFd20/DYMUX_2423 )
  );
  X_BUF   \maqEstados/state_FSM_FFd20/SRINV  (
    .I(\sincronizador/salida [0]),
    .O(\maqEstados/state_FSM_FFd20/SRINV_2413 )
  );
  X_BUF   \maqEstados/state_FSM_FFd20/CLKINV  (
    .I(clk_BUFGP),
    .O(\maqEstados/state_FSM_FFd20/CLKINV_2412 )
  );
  X_BUF   \luces_6_OBUF/YUSED  (
    .I(\maqEstados/state_FSM_Out314_pack_1 ),
    .O(\maqEstados/state_FSM_Out314_840 )
  );
  X_BUF   \registroPeaton/valor_walk_actual/DYMUX  (
    .I(\registroPeaton/valor_walk_actual/BYINV_2474 ),
    .O(\registroPeaton/valor_walk_actual/DYMUX_2475 )
  );
  X_BUF   \registroPeaton/valor_walk_actual/BYINV  (
    .I(1'b1),
    .O(\registroPeaton/valor_walk_actual/BYINV_2474 )
  );
  X_BUF   \registroPeaton/valor_walk_actual/SRINV  (
    .I(\sincronizador/salida [0]),
    .O(\registroPeaton/valor_walk_actual/SRINV_2473 )
  );
  X_BUF   \registroPeaton/valor_walk_actual/CLKINV  (
    .I(clk_BUFGP),
    .O(\registroPeaton/valor_walk_actual/CLKINV_2472 )
  );
  X_BUF   \registroPeaton/valor_walk_actual/CEINV  (
    .I(\sincronizador/salida [2]),
    .O(\registroPeaton/valor_walk_actual/CEINV_2471 )
  );
  X_BUF   \luces_2_OBUF/YUSED  (
    .I(N2_pack_1),
    .O(N2)
  );
  X_INV   \divisor/segundero/DYMUX  (
    .I(\divisor/segundero_829 ),
    .O(\divisor/segundero/DYMUX_2512 )
  );
  X_BUF   \divisor/segundero/CLKINV  (
    .I(clk_BUFGP),
    .O(\divisor/segundero/CLKINV_2510 )
  );
  X_BUF   \divisor/segundero/CEINV  (
    .I(\divisor/segundero_not0001_inv ),
    .O(\divisor/segundero/CEINV_2509 )
  );
  X_INV   \temporizador/tiempoTranscurrido<0>/DXMUX  (
    .I(\temporizador/tiempoTranscurrido [0]),
    .O(\temporizador/tiempoTranscurrido<0>/DXMUX_2543 )
  );
  X_BUF   \temporizador/tiempoTranscurrido<0>/DYMUX  (
    .I(\Result<1>1 ),
    .O(\temporizador/tiempoTranscurrido<0>/DYMUX_2535 )
  );
  X_BUF   \temporizador/tiempoTranscurrido<0>/SRINV  (
    .I(start_timer_inv_0),
    .O(\temporizador/tiempoTranscurrido<0>/SRINV_2525 )
  );
  X_INV   \temporizador/tiempoTranscurrido<0>/CLKINV  (
    .I(\divisor/segundero_829 ),
    .O(\temporizador/tiempoTranscurrido<0>/CLKINVNOT )
  );
  X_BUF   \luces_0_OBUF/YUSED  (
    .I(N8_pack_1),
    .O(N8)
  );
  X_BUF   \maqEstados/state_FSM_FFd1/DXMUX  (
    .I(\maqEstados/state_FSM_FFd1/BXINV_2585 ),
    .O(\maqEstados/state_FSM_FFd1/DXMUX_2586 )
  );
  X_BUF   \maqEstados/state_FSM_FFd1/BXINV  (
    .I(1'b0),
    .O(\maqEstados/state_FSM_FFd1/BXINV_2585 )
  );
  X_BUF   \maqEstados/state_FSM_FFd1/REVUSED  (
    .I(\maqEstados/state_FSM_FFd2_802 ),
    .O(\maqEstados/state_FSM_FFd1/REVUSED_2584 )
  );
  X_BUF   \maqEstados/state_FSM_FFd1/SRINV  (
    .I(\sincronizador/salida [0]),
    .O(\maqEstados/state_FSM_FFd1/SRINV_2582 )
  );
  X_BUF   \maqEstados/state_FSM_FFd1/CLKINV  (
    .I(clk_BUFGP),
    .O(\maqEstados/state_FSM_FFd1/CLKINV_2581 )
  );
  X_BUF   \maqEstados/state_FSM_FFd1/CEINV  (
    .I(time_expired_0),
    .O(\maqEstados/state_FSM_FFd1/CEINV_2580 )
  );
  X_BUF   \maqEstados/state_FSM_FFd2/DYMUX  (
    .I(\maqEstados/state_FSM_FFd3_798 ),
    .O(\maqEstados/state_FSM_FFd2/DYMUX_2600 )
  );
  X_BUF   \maqEstados/state_FSM_FFd2/SRINV  (
    .I(\sincronizador/salida [0]),
    .O(\maqEstados/state_FSM_FFd2/SRINV_2598 )
  );
  X_BUF   \maqEstados/state_FSM_FFd2/CLKINV  (
    .I(clk_BUFGP),
    .O(\maqEstados/state_FSM_FFd2/CLKINV_2597 )
  );
  X_BUF   \maqEstados/state_FSM_FFd6/DXMUX  (
    .I(\maqEstados/state_FSM_FFd6/BXINV_2616 ),
    .O(\maqEstados/state_FSM_FFd6/DXMUX_2617 )
  );
  X_BUF   \maqEstados/state_FSM_FFd6/BXINV  (
    .I(1'b0),
    .O(\maqEstados/state_FSM_FFd6/BXINV_2616 )
  );
  X_BUF   \maqEstados/state_FSM_FFd6/REVUSED  (
    .I(\maqEstados/state_FSM_FFd7_844 ),
    .O(\maqEstados/state_FSM_FFd6/REVUSED_2615 )
  );
  X_BUF   \maqEstados/state_FSM_FFd6/SRINV  (
    .I(\sincronizador/salida [0]),
    .O(\maqEstados/state_FSM_FFd6/SRINV_2613 )
  );
  X_BUF   \maqEstados/state_FSM_FFd6/CLKINV  (
    .I(clk_BUFGP),
    .O(\maqEstados/state_FSM_FFd6/CLKINV_2612 )
  );
  X_BUF   \maqEstados/state_FSM_FFd6/CEINV  (
    .I(time_expired_0),
    .O(\maqEstados/state_FSM_FFd6/CEINV_2611 )
  );
  X_BUF   \maqEstados/state_FSM_FFd7/DYMUX  (
    .I(\maqEstados/state_FSM_FFd10_836 ),
    .O(\maqEstados/state_FSM_FFd7/DYMUX_2631 )
  );
  X_BUF   \maqEstados/state_FSM_FFd7/SRINV  (
    .I(\sincronizador/salida [0]),
    .O(\maqEstados/state_FSM_FFd7/SRINV_2629 )
  );
  X_BUF   \maqEstados/state_FSM_FFd7/CLKINV  (
    .I(clk_BUFGP),
    .O(\maqEstados/state_FSM_FFd7/CLKINV_2628 )
  );
  X_BUF   \maqEstados/state_FSM_FFd8/DXMUX  (
    .I(\maqEstados/state_FSM_FFd8/BXINV_2647 ),
    .O(\maqEstados/state_FSM_FFd8/DXMUX_2648 )
  );
  X_BUF   \maqEstados/state_FSM_FFd8/BXINV  (
    .I(1'b0),
    .O(\maqEstados/state_FSM_FFd8/BXINV_2647 )
  );
  X_BUF   \maqEstados/state_FSM_FFd8/REVUSED  (
    .I(\maqEstados/state_FSM_FFd9_801 ),
    .O(\maqEstados/state_FSM_FFd8/REVUSED_2646 )
  );
  X_BUF   \maqEstados/state_FSM_FFd8/SRINV  (
    .I(\sincronizador/salida [0]),
    .O(\maqEstados/state_FSM_FFd8/SRINV_2644 )
  );
  X_BUF   \maqEstados/state_FSM_FFd8/CLKINV  (
    .I(clk_BUFGP),
    .O(\maqEstados/state_FSM_FFd8/CLKINV_2643 )
  );
  X_BUF   \maqEstados/state_FSM_FFd8/CEINV  (
    .I(time_expired_0),
    .O(\maqEstados/state_FSM_FFd8/CEINV_2642 )
  );
  X_BUF   \maqEstados/state_FSM_FFd9/DXMUX  (
    .I(\maqEstados/state_FSM_FFd11_774 ),
    .O(\maqEstados/state_FSM_FFd9/DXMUX_2665 )
  );
  X_BUF   \maqEstados/state_FSM_FFd9/REVUSED  (
    .I(\maqEstados/state_FSM_FFd4_786 ),
    .O(\maqEstados/state_FSM_FFd9/REVUSED_2663 )
  );
  X_BUF   \maqEstados/state_FSM_FFd9/SRINV  (
    .I(\sincronizador/salida [0]),
    .O(\maqEstados/state_FSM_FFd9/SRINV_2661 )
  );
  X_BUF   \maqEstados/state_FSM_FFd9/CLKINV  (
    .I(clk_BUFGP),
    .O(\maqEstados/state_FSM_FFd9/CLKINV_2660 )
  );
  X_BUF   \luces_5_OBUF/YUSED  (
    .I(N6_pack_1),
    .O(N6)
  );
  X_BUF   \maqEstados/state_FSM_Out54/XUSED  (
    .I(\maqEstados/state_FSM_Out54_2716 ),
    .O(\maqEstados/state_FSM_Out54_0 )
  );
  X_BUF   \maqEstados/state_FSM_Out54/YUSED  (
    .I(\maqEstados/state_FSM_Out34_2709 ),
    .O(\maqEstados/state_FSM_Out34_0 )
  );
  X_BUF   \start_timer_inv/XUSED  (
    .I(start_timer_inv_2740),
    .O(start_timer_inv_0)
  );
  X_BUF   \start_timer_inv/YUSED  (
    .I(N01_pack_1),
    .O(N01)
  );
  X_BUF   \luces_4_OBUF/YUSED  (
    .I(\maqEstados/state_FSM_Out59_pack_1 ),
    .O(\maqEstados/state_FSM_Out59_848 )
  );
  X_BUF   \maqEstados/state_FSM_FFd13/DXMUX  (
    .I(\maqEstados/state_FSM_FFd13/BXINV_2778 ),
    .O(\maqEstados/state_FSM_FFd13/DXMUX_2779 )
  );
  X_BUF   \maqEstados/state_FSM_FFd13/BXINV  (
    .I(1'b0),
    .O(\maqEstados/state_FSM_FFd13/BXINV_2778 )
  );
  X_BUF   \maqEstados/state_FSM_FFd13/REVUSED  (
    .I(\maqEstados/state_FSM_FFd14_788 ),
    .O(\maqEstados/state_FSM_FFd13/REVUSED_2777 )
  );
  X_BUF   \maqEstados/state_FSM_FFd13/SRINV  (
    .I(\sincronizador/salida [0]),
    .O(\maqEstados/state_FSM_FFd13/SRINV_2775 )
  );
  X_BUF   \maqEstados/state_FSM_FFd13/CLKINV  (
    .I(clk_BUFGP),
    .O(\maqEstados/state_FSM_FFd13/CLKINV_2774 )
  );
  X_BUF   \maqEstados/state_FSM_FFd13/CEINV  (
    .I(time_expired_0),
    .O(\maqEstados/state_FSM_FFd13/CEINV_2773 )
  );
  X_BUF   \maqEstados/state_FSM_FFd22/DXMUX  (
    .I(\maqEstados/state_FSM_FFd22/BXINV_2797 ),
    .O(\maqEstados/state_FSM_FFd22/DXMUX_2798 )
  );
  X_BUF   \maqEstados/state_FSM_FFd22/BXINV  (
    .I(1'b0),
    .O(\maqEstados/state_FSM_FFd22/BXINV_2797 )
  );
  X_BUF   \maqEstados/state_FSM_FFd22/REVUSED  (
    .I(\maqEstados/state_FSM_FFd23_779 ),
    .O(\maqEstados/state_FSM_FFd22/REVUSED_2796 )
  );
  X_BUF   \maqEstados/state_FSM_FFd22/SRINV  (
    .I(\sincronizador/salida [0]),
    .O(\maqEstados/state_FSM_FFd22/SRINV_2794 )
  );
  X_BUF   \maqEstados/state_FSM_FFd22/CLKINV  (
    .I(clk_BUFGP),
    .O(\maqEstados/state_FSM_FFd22/CLKINV_2793 )
  );
  X_BUF   \maqEstados/state_FSM_FFd22/CEINV  (
    .I(time_expired_0),
    .O(\maqEstados/state_FSM_FFd22/CEINV_2792 )
  );
  X_BUF   \maqEstados/state_FSM_FFd14/DYMUX  (
    .I(\maqEstados/state_FSM_FFd15_783 ),
    .O(\maqEstados/state_FSM_FFd14/DYMUX_2812 )
  );
  X_BUF   \maqEstados/state_FSM_FFd14/SRINV  (
    .I(\sincronizador/salida [0]),
    .O(\maqEstados/state_FSM_FFd14/SRINV_2810 )
  );
  X_BUF   \maqEstados/state_FSM_FFd14/CLKINV  (
    .I(clk_BUFGP),
    .O(\maqEstados/state_FSM_FFd14/CLKINV_2809 )
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  \maqEstados/state_FSM_FFd24  (
    .I(\maqEstados/state_FSM_FFd23/DYMUX_2835 ),
    .CE(VCC),
    .CLK(\maqEstados/state_FSM_FFd23/CLKINV_2825 ),
    .SET(GND),
    .RST(GND),
    .SSET(\maqEstados/state_FSM_FFd23/SRINV_2826 ),
    .SRST(GND),
    .O(\maqEstados/state_FSM_FFd24_780 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \maqEstados/state_FSM_FFd23  (
    .I(\maqEstados/state_FSM_FFd23/DXMUX_2841 ),
    .CE(VCC),
    .CLK(\maqEstados/state_FSM_FFd23/CLKINV_2825 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\maqEstados/state_FSM_FFd23/SRINV_2826 ),
    .O(\maqEstados/state_FSM_FFd23_779 )
  );
  X_BUF   \maqEstados/state_FSM_FFd23/DXMUX  (
    .I(\maqEstados/state_FSM_FFd24_780 ),
    .O(\maqEstados/state_FSM_FFd23/DXMUX_2841 )
  );
  X_BUF   \maqEstados/state_FSM_FFd23/DYMUX  (
    .I(\maqEstados/state_FSM_FFd24-In ),
    .O(\maqEstados/state_FSM_FFd23/DYMUX_2835 )
  );
  X_BUF   \maqEstados/state_FSM_FFd23/SRINV  (
    .I(\sincronizador/salida [0]),
    .O(\maqEstados/state_FSM_FFd23/SRINV_2826 )
  );
  X_BUF   \maqEstados/state_FSM_FFd23/CLKINV  (
    .I(clk_BUFGP),
    .O(\maqEstados/state_FSM_FFd23/CLKINV_2825 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \maqEstados/state_FSM_FFd16  (
    .I(\maqEstados/state_FSM_FFd15/DYMUX_2864 ),
    .CE(VCC),
    .CLK(\maqEstados/state_FSM_FFd15/CLKINV_2854 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\maqEstados/state_FSM_FFd15/SRINV_2855 ),
    .O(\maqEstados/state_FSM_FFd16_775 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \maqEstados/state_FSM_FFd15  (
    .I(\maqEstados/state_FSM_FFd15/DXMUX_2870 ),
    .CE(VCC),
    .CLK(\maqEstados/state_FSM_FFd15/CLKINV_2854 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\maqEstados/state_FSM_FFd15/SRINV_2855 ),
    .O(\maqEstados/state_FSM_FFd15_783 )
  );
  X_BUF   \maqEstados/state_FSM_FFd15/DXMUX  (
    .I(\maqEstados/state_FSM_FFd16_775 ),
    .O(\maqEstados/state_FSM_FFd15/DXMUX_2870 )
  );
  X_BUF   \maqEstados/state_FSM_FFd15/DYMUX  (
    .I(\maqEstados/state_FSM_FFd16-In ),
    .O(\maqEstados/state_FSM_FFd15/DYMUX_2864 )
  );
  X_BUF   \maqEstados/state_FSM_FFd15/SRINV  (
    .I(\sincronizador/salida [0]),
    .O(\maqEstados/state_FSM_FFd15/SRINV_2855 )
  );
  X_BUF   \maqEstados/state_FSM_FFd15/CLKINV  (
    .I(clk_BUFGP),
    .O(\maqEstados/state_FSM_FFd15/CLKINV_2854 )
  );
  X_LUT4 #(
    .INIT ( 16'h8080 ))
  \maqEstados/state_FSM_FFd16-In1  (
    .ADR0(\maqEstados/state_FSM_FFd17_773 ),
    .ADR1(time_expired453_0),
    .ADR2(time_expired426_0),
    .ADR3(VCC),
    .O(\maqEstados/state_FSM_FFd16-In )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \maqEstados/state_FSM_FFd17  (
    .I(\maqEstados/state_FSM_FFd17/DXMUX_2887 ),
    .CE(\maqEstados/state_FSM_FFd17/CEINV_2881 ),
    .CLK(\maqEstados/state_FSM_FFd17/CLKINV_2882 ),
    .SET(GND),
    .RST(GND),
    .SSET(\maqEstados/state_FSM_FFd17/REVUSED_2885 ),
    .SRST(\maqEstados/state_FSM_FFd17/SRINV_2883 ),
    .O(\maqEstados/state_FSM_FFd17_773 )
  );
  X_BUF   \maqEstados/state_FSM_FFd17/DXMUX  (
    .I(\maqEstados/state_FSM_FFd17/BXINV_2886 ),
    .O(\maqEstados/state_FSM_FFd17/DXMUX_2887 )
  );
  X_BUF   \maqEstados/state_FSM_FFd17/BXINV  (
    .I(1'b0),
    .O(\maqEstados/state_FSM_FFd17/BXINV_2886 )
  );
  X_BUF   \maqEstados/state_FSM_FFd17/REVUSED  (
    .I(\maqEstados/state_FSM_FFd18_772 ),
    .O(\maqEstados/state_FSM_FFd17/REVUSED_2885 )
  );
  X_BUF   \maqEstados/state_FSM_FFd17/SRINV  (
    .I(\sincronizador/salida [0]),
    .O(\maqEstados/state_FSM_FFd17/SRINV_2883 )
  );
  X_BUF   \maqEstados/state_FSM_FFd17/CLKINV  (
    .I(clk_BUFGP),
    .O(\maqEstados/state_FSM_FFd17/CLKINV_2882 )
  );
  X_BUF   \maqEstados/state_FSM_FFd17/CEINV  (
    .I(time_expired_0),
    .O(\maqEstados/state_FSM_FFd17/CEINV_2881 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \maqEstados/state_FSM_FFd18  (
    .I(\maqEstados/state_FSM_FFd18/DXMUX_2904 ),
    .CE(VCC),
    .CLK(\maqEstados/state_FSM_FFd18/CLKINV_2899 ),
    .SET(GND),
    .RST(GND),
    .SSET(\maqEstados/state_FSM_FFd18/REVUSED_2902 ),
    .SRST(\maqEstados/state_FSM_FFd18/SRINV_2900 ),
    .O(\maqEstados/state_FSM_FFd18_772 )
  );
  X_BUF   \maqEstados/state_FSM_FFd18/DXMUX  (
    .I(\maqEstados/state_FSM_FFd20_777 ),
    .O(\maqEstados/state_FSM_FFd18/DXMUX_2904 )
  );
  X_BUF   \maqEstados/state_FSM_FFd18/REVUSED  (
    .I(\maqEstados/state_FSM_FFd19_771 ),
    .O(\maqEstados/state_FSM_FFd18/REVUSED_2902 )
  );
  X_BUF   \maqEstados/state_FSM_FFd18/SRINV  (
    .I(\sincronizador/salida [0]),
    .O(\maqEstados/state_FSM_FFd18/SRINV_2900 )
  );
  X_BUF   \maqEstados/state_FSM_FFd18/CLKINV  (
    .I(clk_BUFGP),
    .O(\maqEstados/state_FSM_FFd18/CLKINV_2899 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \maqEstados/state_FSM_Out6  (
    .ADR0(\maqEstados/state_FSM_FFd8_797 ),
    .ADR1(\maqEstados/state_FSM_FFd13_787 ),
    .ADR2(\maqEstados/state_FSM_FFd17_773 ),
    .ADR3(N4),
    .O(luces_3_OBUF_2931)
  );
  X_BUF   \luces_3_OBUF/YUSED  (
    .I(N4_pack_1),
    .O(N4)
  );
  X_LUT4 #(
    .INIT ( 16'hFEFE ))
  \maqEstados/state_FSM_Out6_SW0  (
    .ADR0(\maqEstados/state_FSM_FFd19_771 ),
    .ADR1(\maqEstados/state_FSM_FFd18_772 ),
    .ADR2(\maqEstados/state_FSM_FFd10_836 ),
    .ADR3(VCC),
    .O(N4_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h1111 ))
  \divisor/segundero_cmp_eq0000_wg_lut<0>  (
    .ADR0(\divisor/contador [4]),
    .ADR1(\divisor/contador [8]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\divisor/segundero_cmp_eq0000_wg_lut [0])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \divisor/segundero_cmp_eq0000_wg_lut<1>  (
    .ADR0(\divisor/contador [6]),
    .ADR1(\divisor/contador [7]),
    .ADR2(\divisor/contador [3]),
    .ADR3(\divisor/contador [9]),
    .O(\divisor/segundero_cmp_eq0000_wg_lut [1])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \divisor/segundero_cmp_eq0000_wg_lut<3>  (
    .ADR0(\divisor/contador [12]),
    .ADR1(\divisor/contador [16]),
    .ADR2(\divisor/contador [1]),
    .ADR3(\divisor/contador [14]),
    .O(\divisor/segundero_cmp_eq0000_wg_lut [3])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \divisor/segundero_cmp_eq0000_wg_lut<2>  (
    .ADR0(\divisor/contador [10]),
    .ADR1(\divisor/contador [13]),
    .ADR2(\divisor/contador [5]),
    .ADR3(\divisor/contador [11]),
    .O(\divisor/segundero_cmp_eq0000_wg_lut [2])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \divisor/segundero_cmp_eq0000_wg_lut<5>  (
    .ADR0(\divisor/contador [18]),
    .ADR1(\divisor/contador [20]),
    .ADR2(\divisor/contador [2]),
    .ADR3(\divisor/contador [21]),
    .O(\divisor/segundero_cmp_eq0000_wg_lut [5])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \divisor/segundero_cmp_eq0000_wg_lut<4>  (
    .ADR0(\divisor/contador [15]),
    .ADR1(\divisor/contador [19]),
    .ADR2(\divisor/contador [0]),
    .ADR3(\divisor/contador [17]),
    .O(\divisor/segundero_cmp_eq0000_wg_lut [4])
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ))
  \divisor/Mcount_contador_lut<1>_INV_0  (
    .ADR0(\divisor/contador [1]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\divisor/Mcount_contador_lut [1])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \divisor/contador_1  (
    .I(\divisor/contador<0>/DYMUX_964 ),
    .CE(VCC),
    .CLK(\divisor/contador<0>/CLKINV_947 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\divisor/contador<0>/SRINV_948 ),
    .O(\divisor/contador [1])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \divisor/contador_0  (
    .I(\divisor/contador<0>/DXMUX_984 ),
    .CE(VCC),
    .CLK(\divisor/contador<0>/CLKINV_947 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\divisor/contador<0>/SRINV_948 ),
    .O(\divisor/contador [0])
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ))
  \divisor/Mcount_contador_lut<3>_INV_0  (
    .ADR0(\divisor/contador [3]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\divisor/Mcount_contador_lut [3])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \divisor/contador_3  (
    .I(\divisor/contador<2>/DYMUX_1019 ),
    .CE(VCC),
    .CLK(\divisor/contador<2>/CLKINV_997 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\divisor/contador<2>/SRINV_998 ),
    .O(\divisor/contador [3])
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ))
  \divisor/Mcount_contador_lut<2>_INV_0  (
    .ADR0(\divisor/contador [2]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\divisor/Mcount_contador_lut [2])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \divisor/contador_2  (
    .I(\divisor/contador<2>/DXMUX_1036 ),
    .CE(VCC),
    .CLK(\divisor/contador<2>/CLKINV_997 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\divisor/contador<2>/SRINV_998 ),
    .O(\divisor/contador [2])
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ))
  \divisor/Mcount_contador_lut<5>_INV_0  (
    .ADR0(\divisor/contador [5]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\divisor/Mcount_contador_lut [5])
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  \divisor/contador_5  (
    .I(\divisor/contador<4>/DYMUX_1071 ),
    .CE(VCC),
    .CLK(\divisor/contador<4>/CLKINV_1049 ),
    .SET(GND),
    .RST(GND),
    .SSET(\divisor/contador<4>/SRINV_1050 ),
    .SRST(GND),
    .O(\divisor/contador [5])
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ))
  \divisor/Mcount_contador_lut<4>_INV_0  (
    .ADR0(\divisor/contador [4]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\divisor/Mcount_contador_lut [4])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \divisor/contador_4  (
    .I(\divisor/contador<4>/DXMUX_1088 ),
    .CE(VCC),
    .CLK(\divisor/contador<4>/CLKINV_1049 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\divisor/contador<4>/SRINV_1050 ),
    .O(\divisor/contador [4])
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ))
  \divisor/Mcount_contador_lut<7>_INV_0  (
    .ADR0(\divisor/contador [7]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\divisor/Mcount_contador_lut [7])
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  \divisor/contador_7  (
    .I(\divisor/contador<6>/DYMUX_1123 ),
    .CE(VCC),
    .CLK(\divisor/contador<6>/CLKINV_1101 ),
    .SET(GND),
    .RST(GND),
    .SSET(\divisor/contador<6>/SRINV_1102 ),
    .SRST(GND),
    .O(\divisor/contador [7])
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ))
  \divisor/Mcount_contador_lut<6>_INV_0  (
    .ADR0(\divisor/contador [6]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\divisor/Mcount_contador_lut [6])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \divisor/contador_6  (
    .I(\divisor/contador<6>/DXMUX_1140 ),
    .CE(VCC),
    .CLK(\divisor/contador<6>/CLKINV_1101 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\divisor/contador<6>/SRINV_1102 ),
    .O(\divisor/contador [6])
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ))
  \divisor/Mcount_contador_lut<9>_INV_0  (
    .ADR0(\divisor/contador [9]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\divisor/Mcount_contador_lut [9])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \divisor/contador_9  (
    .I(\divisor/contador<8>/DYMUX_1175 ),
    .CE(VCC),
    .CLK(\divisor/contador<8>/CLKINV_1153 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\divisor/contador<8>/SRINV_1154 ),
    .O(\divisor/contador [9])
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ))
  \divisor/Mcount_contador_lut<8>_INV_0  (
    .ADR0(\divisor/contador [8]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\divisor/Mcount_contador_lut [8])
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  \divisor/contador_8  (
    .I(\divisor/contador<8>/DXMUX_1192 ),
    .CE(VCC),
    .CLK(\divisor/contador<8>/CLKINV_1153 ),
    .SET(GND),
    .RST(GND),
    .SSET(\divisor/contador<8>/SRINV_1154 ),
    .SRST(GND),
    .O(\divisor/contador [8])
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ))
  \divisor/Mcount_contador_lut<11>_INV_0  (
    .ADR0(\divisor/contador [11]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\divisor/Mcount_contador_lut [11])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \divisor/contador_11  (
    .I(\divisor/contador<10>/DYMUX_1227 ),
    .CE(VCC),
    .CLK(\divisor/contador<10>/CLKINV_1205 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\divisor/contador<10>/SRINV_1206 ),
    .O(\divisor/contador [11])
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ))
  \divisor/Mcount_contador_lut<10>_INV_0  (
    .ADR0(\divisor/contador [10]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\divisor/Mcount_contador_lut [10])
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  \divisor/contador_10  (
    .I(\divisor/contador<10>/DXMUX_1244 ),
    .CE(VCC),
    .CLK(\divisor/contador<10>/CLKINV_1205 ),
    .SET(GND),
    .RST(GND),
    .SSET(\divisor/contador<10>/SRINV_1206 ),
    .SRST(GND),
    .O(\divisor/contador [10])
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ))
  \divisor/Mcount_contador_lut<13>_INV_0  (
    .ADR0(\divisor/contador [13]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\divisor/Mcount_contador_lut [13])
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  \divisor/contador_13  (
    .I(\divisor/contador<12>/DYMUX_1279 ),
    .CE(VCC),
    .CLK(\divisor/contador<12>/CLKINV_1257 ),
    .SET(GND),
    .RST(GND),
    .SSET(\divisor/contador<12>/SRINV_1258 ),
    .SRST(GND),
    .O(\divisor/contador [13])
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ))
  \divisor/Mcount_contador_lut<12>_INV_0  (
    .ADR0(\divisor/contador [12]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\divisor/Mcount_contador_lut [12])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \divisor/contador_12  (
    .I(\divisor/contador<12>/DXMUX_1296 ),
    .CE(VCC),
    .CLK(\divisor/contador<12>/CLKINV_1257 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\divisor/contador<12>/SRINV_1258 ),
    .O(\divisor/contador [12])
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ))
  \divisor/Mcount_contador_lut<15>_INV_0  (
    .ADR0(\divisor/contador [15]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\divisor/Mcount_contador_lut [15])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \divisor/contador_15  (
    .I(\divisor/contador<14>/DYMUX_1331 ),
    .CE(VCC),
    .CLK(\divisor/contador<14>/CLKINV_1309 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\divisor/contador<14>/SRINV_1310 ),
    .O(\divisor/contador [15])
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ))
  \divisor/Mcount_contador_lut<14>_INV_0  (
    .ADR0(\divisor/contador [14]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\divisor/Mcount_contador_lut [14])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \divisor/contador_14  (
    .I(\divisor/contador<14>/DXMUX_1348 ),
    .CE(VCC),
    .CLK(\divisor/contador<14>/CLKINV_1309 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\divisor/contador<14>/SRINV_1310 ),
    .O(\divisor/contador [14])
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ))
  \divisor/Mcount_contador_lut<17>_INV_0  (
    .ADR0(\divisor/contador [17]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\divisor/Mcount_contador_lut [17])
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  \divisor/contador_17  (
    .I(\divisor/contador<16>/DYMUX_1383 ),
    .CE(VCC),
    .CLK(\divisor/contador<16>/CLKINV_1361 ),
    .SET(GND),
    .RST(GND),
    .SSET(\divisor/contador<16>/SRINV_1362 ),
    .SRST(GND),
    .O(\divisor/contador [17])
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ))
  \divisor/Mcount_contador_lut<16>_INV_0  (
    .ADR0(\divisor/contador [16]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\divisor/Mcount_contador_lut [16])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \divisor/contador_16  (
    .I(\divisor/contador<16>/DXMUX_1400 ),
    .CE(VCC),
    .CLK(\divisor/contador<16>/CLKINV_1361 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\divisor/contador<16>/SRINV_1362 ),
    .O(\divisor/contador [16])
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ))
  \divisor/Mcount_contador_lut<19>_INV_0  (
    .ADR0(\divisor/contador [19]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\divisor/Mcount_contador_lut [19])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \divisor/contador_19  (
    .I(\divisor/contador<18>/DYMUX_1435 ),
    .CE(VCC),
    .CLK(\divisor/contador<18>/CLKINV_1413 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\divisor/contador<18>/SRINV_1414 ),
    .O(\divisor/contador [19])
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ))
  \divisor/Mcount_contador_lut<18>_INV_0  (
    .ADR0(\divisor/contador [18]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\divisor/Mcount_contador_lut [18])
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  \divisor/contador_18  (
    .I(\divisor/contador<18>/DXMUX_1452 ),
    .CE(VCC),
    .CLK(\divisor/contador<18>/CLKINV_1413 ),
    .SET(GND),
    .RST(GND),
    .SSET(\divisor/contador<18>/SRINV_1414 ),
    .SRST(GND),
    .O(\divisor/contador [18])
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ))
  \divisor/Mcount_contador_lut<21>_INV_0  (
    .ADR0(\divisor/contador [21]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\divisor/Mcount_contador_lut [21])
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  \divisor/contador_21  (
    .I(\divisor/contador<20>/DYMUX_1478 ),
    .CE(VCC),
    .CLK(\divisor/contador<20>/CLKINV_1464 ),
    .SET(GND),
    .RST(GND),
    .SSET(\divisor/contador<20>/SRINV_1465 ),
    .SRST(GND),
    .O(\divisor/contador [21])
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ))
  \divisor/Mcount_contador_lut<20>_INV_0  (
    .ADR0(\divisor/contador [20]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\divisor/Mcount_contador_lut [20])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \divisor/contador_20  (
    .I(\divisor/contador<20>/DXMUX_1497 ),
    .CE(VCC),
    .CLK(\divisor/contador<20>/CLKINV_1464 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\divisor/contador<20>/SRINV_1465 ),
    .O(\divisor/contador [20])
  );
  X_BUF   \clk/IFF/IMUX  (
    .I(\clk/INBUF ),
    .O(\clk_BUFGP/IBUFG_753 )
  );
  X_BUF   \Reprogram/IFF/IMUX  (
    .I(\Reprogram/INBUF ),
    .O(Reprogram_IBUF_754)
  );
  X_BUF   \Walk_Request/IFF/IMUX  (
    .I(\Walk_Request/INBUF ),
    .O(Walk_Request_IBUF_755)
  );
  X_BUF   \Time_Parameter_Selector<0>/IFF/IMUX  (
    .I(\Time_Parameter_Selector<0>/INBUF ),
    .O(Time_Parameter_Selector_0_IBUF_762)
  );
  X_BUF   \Time_Parameter_Selector<1>/IFF/IMUX  (
    .I(\Time_Parameter_Selector<1>/INBUF ),
    .O(Time_Parameter_Selector_1_IBUF_764)
  );
  X_BUF   \Reset/IFF/IMUX  (
    .I(\Reset/INBUF ),
    .O(Reset_IBUF_765)
  );
  X_BUF   \Time_Value<0>/IFF/IMUX  (
    .I(\Time_Value<0>/INBUF ),
    .O(Time_Value_0_IBUF_766)
  );
  X_BUF   \Time_Value<1>/IFF/IMUX  (
    .I(\Time_Value<1>/INBUF ),
    .O(Time_Value_1_IBUF_767)
  );
  X_BUF   \Time_Value<2>/IFF/IMUX  (
    .I(\Time_Value<2>/INBUF ),
    .O(Time_Value_2_IBUF_768)
  );
  X_BUF   \Time_Value<3>/IFF/IMUX  (
    .I(\Time_Value<3>/INBUF ),
    .O(Time_Value_3_IBUF_769)
  );
  X_BUF   \Sensor/IFF/IMUX  (
    .I(\Sensor/INBUF ),
    .O(Sensor_IBUF_770)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \maqEstados/state_FSM_Out8111  (
    .ADR0(\maqEstados/state_FSM_FFd18_772 ),
    .ADR1(\maqEstados/state_FSM_FFd17_773 ),
    .ADR2(\maqEstados/state_FSM_FFd11_774 ),
    .ADR3(\maqEstados/state_FSM_FFd16_775 ),
    .O(\maqEstados/state_FSM_Out8111_1639 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \maqEstados/state_FSM_Out8131  (
    .ADR0(\maqEstados/state_FSM_FFd20_777 ),
    .ADR1(\maqEstados/state_FSM_FFd21_778 ),
    .ADR2(\maqEstados/state_FSM_FFd23_779 ),
    .ADR3(\maqEstados/state_FSM_FFd24_780 ),
    .O(\maqEstados/state_FSM_Out813 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \parametros/mux32_SW0_SW0  (
    .ADR0(\maqEstados/state_FSM_FFd12_785 ),
    .ADR1(\maqEstados/state_FSM_FFd4_786 ),
    .ADR2(\maqEstados/state_FSM_FFd13_787 ),
    .ADR3(\maqEstados/state_FSM_FFd14_788 ),
    .O(N32_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hCCCA ))
  \parametros/mux12_SW0  (
    .ADR0(\parametros/tbase [1]),
    .ADR1(\parametros/tyel [1]),
    .ADR2(\maqEstados/state_FSM_FFd15_783 ),
    .ADR3(N32),
    .O(N20)
  );
  X_LUT4 #(
    .INIT ( 16'hBFBF ))
  \parametros/tyel_mux0000<0>11  (
    .ADR0(Time_Parameter_Selector_0_IBUF_762),
    .ADR1(Time_Parameter_Selector_1_IBUF_764),
    .ADR2(\sincronizador/salida [3]),
    .ADR3(VCC),
    .O(\parametros/N01_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFCB8 ))
  \parametros/tyel_mux0000<1>1  (
    .ADR0(\parametros/tyel [1]),
    .ADR1(\parametros/N01 ),
    .ADR2(Time_Value_1_IBUF_767),
    .ADR3(\sincronizador/salida [0]),
    .O(\parametros/tyel_mux0000 [1])
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \parametros/tyel_1  (
    .I(\parametros/tyel<1>/DXMUX_1729 ),
    .CE(VCC),
    .CLK(\parametros/tyel<1>/CLKINV_1713 ),
    .SET(GND),
    .RST(GND),
    .O(\parametros/tyel [1])
  );
  X_LUT4 #(
    .INIT ( 16'hEFEF ))
  \parametros/tbase_mux0000<0>11  (
    .ADR0(Time_Parameter_Selector_1_IBUF_764),
    .ADR1(Time_Parameter_Selector_0_IBUF_762),
    .ADR2(\sincronizador/salida [3]),
    .ADR3(VCC),
    .O(\parametros/N11_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFCB8 ))
  \parametros/tbase_mux0000<2>1  (
    .ADR0(\parametros/tbase [2]),
    .ADR1(\parametros/N11 ),
    .ADR2(Time_Value_2_IBUF_768),
    .ADR3(\sincronizador/salida [0]),
    .O(\parametros/tbase_mux0000 [2])
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \parametros/tbase_2  (
    .I(\parametros/tbase<2>/DXMUX_1759 ),
    .CE(VCC),
    .CLK(\parametros/tbase<2>/CLKINV_1743 ),
    .SET(GND),
    .RST(GND),
    .O(\parametros/tbase [2])
  );
  X_LUT4 #(
    .INIT ( 16'hEEEE ))
  \maqEstados/state_FSM_Out1_SW0  (
    .ADR0(\maqEstados/state_FSM_FFd12_785 ),
    .ADR1(\maqEstados/state_FSM_FFd13_787 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\maqEstados/state_FSM_Out1_SW0/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \maqEstados/state_FSM_Out1  (
    .ADR0(\maqEstados/state_FSM_FFd4_786 ),
    .ADR1(\maqEstados/state_FSM_FFd15_783 ),
    .ADR2(\maqEstados/state_FSM_FFd14_788 ),
    .ADR3(\maqEstados/state_FSM_Out1_SW0/O ),
    .O(Intervalo[1])
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \maqEstados/state_FSM_Out2_SW0  (
    .ADR0(\maqEstados/state_FSM_FFd1_800 ),
    .ADR1(\maqEstados/state_FSM_FFd9_801 ),
    .ADR2(\maqEstados/state_FSM_FFd2_802 ),
    .ADR3(\maqEstados/state_FSM_FFd11_774 ),
    .O(\maqEstados/state_FSM_Out2_SW0/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \maqEstados/state_FSM_Out2  (
    .ADR0(\maqEstados/state_FSM_FFd8_797 ),
    .ADR1(\maqEstados/state_FSM_FFd20_777 ),
    .ADR2(\maqEstados/state_FSM_FFd3_798 ),
    .ADR3(\maqEstados/state_FSM_Out2_SW0/O ),
    .O(Intervalo[0])
  );
  X_LUT4 #(
    .INIT ( 16'hBFBF ))
  \parametros/text_mux0000<2>11  (
    .ADR0(Time_Parameter_Selector_1_IBUF_764),
    .ADR1(Time_Parameter_Selector_0_IBUF_762),
    .ADR2(\sincronizador/salida [3]),
    .ADR3(VCC),
    .O(\parametros/N2_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFCB8 ))
  \parametros/text_mux0000<1>1  (
    .ADR0(\parametros/text [1]),
    .ADR1(\parametros/N2 ),
    .ADR2(Time_Value_1_IBUF_767),
    .ADR3(\sincronizador/salida [0]),
    .O(\parametros/text_mux0000 [1])
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \parametros/text_1  (
    .I(\parametros/text<1>/DXMUX_1837 ),
    .CE(VCC),
    .CLK(\parametros/text<1>/CLKINV_1821 ),
    .SET(GND),
    .RST(GND),
    .O(\parametros/text [1])
  );
  X_LUT4 #(
    .INIT ( 16'h2222 ))
  time_expired454_SW0 (
    .ADR0(\maqEstados/state_FSM_FFd5_809 ),
    .ADR1(\sincronizador/salida [1]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\time_expired454_SW0/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hECCC ))
  \maqEstados/state_FSM_FFd4-In1  (
    .ADR0(\maqEstados/state_FSM_FFd1_800 ),
    .ADR1(\time_expired454_SW0/O ),
    .ADR2(time_expired426_0),
    .ADR3(time_expired453_0),
    .O(\maqEstados/state_FSM_FFd4-In )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \maqEstados/state_FSM_FFd4  (
    .I(\maqEstados/state_FSM_FFd4/DXMUX_1869 ),
    .CE(VCC),
    .CLK(\maqEstados/state_FSM_FFd4/CLKINV_1851 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\maqEstados/state_FSM_FFd4/SRINV_1852 ),
    .O(\maqEstados/state_FSM_FFd4_786 )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCA ))
  \parametros/mux21_SW0  (
    .ADR0(\parametros/tbase [0]),
    .ADR1(\parametros/tyel [0]),
    .ADR2(\maqEstados/state_FSM_FFd15_783 ),
    .ADR3(N32),
    .O(\parametros/mux21_SW0/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFBC8 ))
  \parametros/mux21  (
    .ADR0(\parametros/text [0]),
    .ADR1(\Intervalo<0>_0 ),
    .ADR2(\Intervalo<1>_0 ),
    .ADR3(\parametros/mux21_SW0/O ),
    .O(\Valor[0] )
  );
  X_LUT4 #(
    .INIT ( 16'hCCCA ))
  \parametros/mux22_SW0  (
    .ADR0(\parametros/tbase [2]),
    .ADR1(\parametros/tyel [2]),
    .ADR2(\maqEstados/state_FSM_FFd15_783 ),
    .ADR3(N32),
    .O(\parametros/mux22_SW0/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFBC8 ))
  \parametros/mux22  (
    .ADR0(\parametros/text [2]),
    .ADR1(\Intervalo<0>_0 ),
    .ADR2(\Intervalo<1>_0 ),
    .ADR3(\parametros/mux22_SW0/O ),
    .O(\Valor[2] )
  );
  X_LUT4 #(
    .INIT ( 16'hFBC8 ))
  \parametros/mux12  (
    .ADR0(\parametros/text [1]),
    .ADR1(\Intervalo<0>_0 ),
    .ADR2(\Intervalo<1>_0 ),
    .ADR3(N20_0),
    .O(\parametros/mux12/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h8421 ))
  time_expired426 (
    .ADR0(\temporizador/tiempoTranscurrido [1]),
    .ADR1(\temporizador/tiempoTranscurrido [0]),
    .ADR2(\parametros/mux12/O ),
    .ADR3(\Valor<0>_0 ),
    .O(time_expired426_1943)
  );
  X_LUT4 #(
    .INIT ( 16'hFBC8 ))
  \parametros/mux32  (
    .ADR0(\parametros/text [3]),
    .ADR1(\Intervalo<0>_0 ),
    .ADR2(\Intervalo<1>_0 ),
    .ADR3(N14_0),
    .O(\parametros/mux32/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h8421 ))
  time_expired453 (
    .ADR0(\temporizador/tiempoTranscurrido [3]),
    .ADR1(\temporizador/tiempoTranscurrido [2]),
    .ADR2(\parametros/mux32/O ),
    .ADR3(\Valor<2>_0 ),
    .O(time_expired453_1967)
  );
  X_LUT4 #(
    .INIT ( 16'h0CAA ))
  \parametros/tyel_mux0000<0>1  (
    .ADR0(Time_Value_0_IBUF_766),
    .ADR1(\parametros/tyel [0]),
    .ADR2(\sincronizador/salida [0]),
    .ADR3(\parametros/N01 ),
    .O(\parametros/tyel_mux0000 [0])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \parametros/tyel_0  (
    .I(\parametros/text<0>/DYMUX_1989 ),
    .CE(VCC),
    .CLK(\parametros/text<0>/CLKINV_1981 ),
    .SET(GND),
    .RST(GND),
    .O(\parametros/tyel [0])
  );
  X_LUT4 #(
    .INIT ( 16'hFCB8 ))
  \parametros/text_mux0000<0>1  (
    .ADR0(\parametros/text [0]),
    .ADR1(\parametros/N2 ),
    .ADR2(Time_Value_0_IBUF_766),
    .ADR3(\sincronizador/salida [0]),
    .O(\parametros/text_mux0000 [0])
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \parametros/text_0  (
    .I(\parametros/text<0>/DXMUX_2000 ),
    .CE(VCC),
    .CLK(\parametros/text<0>/CLKINV_1981 ),
    .SET(GND),
    .RST(GND),
    .O(\parametros/text [0])
  );
  X_LUT4 #(
    .INIT ( 16'h0CAA ))
  \parametros/tyel_mux0000<2>1  (
    .ADR0(Time_Value_2_IBUF_768),
    .ADR1(\parametros/tyel [2]),
    .ADR2(\sincronizador/salida [0]),
    .ADR3(\parametros/N01 ),
    .O(\parametros/tyel_mux0000 [2])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \parametros/tyel_2  (
    .I(\parametros/tyel<3>/DYMUX_2023 ),
    .CE(VCC),
    .CLK(\parametros/tyel<3>/CLKINV_2015 ),
    .SET(GND),
    .RST(GND),
    .O(\parametros/tyel [2])
  );
  X_LUT4 #(
    .INIT ( 16'h0CAA ))
  \parametros/tyel_mux0000<3>1  (
    .ADR0(Time_Value_3_IBUF_769),
    .ADR1(\parametros/tyel [3]),
    .ADR2(\sincronizador/salida [0]),
    .ADR3(\parametros/N01 ),
    .O(\parametros/tyel_mux0000 [3])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \parametros/tyel_3  (
    .I(\parametros/tyel<3>/DXMUX_2034 ),
    .CE(VCC),
    .CLK(\parametros/tyel<3>/CLKINV_2015 ),
    .SET(GND),
    .RST(GND),
    .O(\parametros/tyel [3])
  );
  X_LUT4 #(
    .INIT ( 16'h6A6A ))
  \temporizador/Mcount_tiempoTranscurrido_xor<2>11  (
    .ADR0(\temporizador/tiempoTranscurrido [2]),
    .ADR1(\temporizador/tiempoTranscurrido [1]),
    .ADR2(\temporizador/tiempoTranscurrido [0]),
    .ADR3(VCC),
    .O(\Result<2>1 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \temporizador/tiempoTranscurrido_2  (
    .I(\temporizador/tiempoTranscurrido<3>/DYMUX_2059 ),
    .CE(VCC),
    .CLK(\temporizador/tiempoTranscurrido<3>/CLKINVNOT ),
    .SET(GND),
    .RST(\temporizador/tiempoTranscurrido<3>/SRINV_2050 ),
    .O(\temporizador/tiempoTranscurrido [2])
  );
  X_LUT4 #(
    .INIT ( 16'h6AAA ))
  \temporizador/Mcount_tiempoTranscurrido_xor<3>11  (
    .ADR0(\temporizador/tiempoTranscurrido [3]),
    .ADR1(\temporizador/tiempoTranscurrido [1]),
    .ADR2(\temporizador/tiempoTranscurrido [0]),
    .ADR3(\temporizador/tiempoTranscurrido [2]),
    .O(\Result<3>1 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \temporizador/tiempoTranscurrido_3  (
    .I(\temporizador/tiempoTranscurrido<3>/DXMUX_2073 ),
    .CE(VCC),
    .CLK(\temporizador/tiempoTranscurrido<3>/CLKINVNOT ),
    .SET(GND),
    .RST(\temporizador/tiempoTranscurrido<3>/SRINV_2050 ),
    .O(\temporizador/tiempoTranscurrido [3])
  );
  X_LUT4 #(
    .INIT ( 16'h0202 ))
  \sincronizador/opcion_selecionada_cmp_eq000311  (
    .ADR0(Reprogram_IBUF_754),
    .ADR1(Reset_IBUF_765),
    .ADR2(Sensor_IBUF_770),
    .ADR3(VCC),
    .O(\sincronizador/opcion_selecionada_cmp_eq00031 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \sincronizador/salida_0  (
    .I(\sincronizador/salida<0>/DYMUX_2096 ),
    .CE(VCC),
    .CLK(\sincronizador/salida<0>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\sincronizador/salida<0>/SRINV_2087 ),
    .O(\sincronizador/salida [0])
  );
  X_LUT4 #(
    .INIT ( 16'h0202 ))
  \sincronizador/opcion_selecionada_cmp_eq000211  (
    .ADR0(Walk_Request_IBUF_755),
    .ADR1(Reset_IBUF_765),
    .ADR2(Sensor_IBUF_770),
    .ADR3(VCC),
    .O(\sincronizador/opcion_selecionada_cmp_eq00021 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \sincronizador/salida_1  (
    .I(\sincronizador/salida<1>/DYMUX_2117 ),
    .CE(VCC),
    .CLK(\sincronizador/salida<1>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\sincronizador/salida<1>/SRINV_2108 ),
    .O(\sincronizador/salida [1])
  );
  X_LUT4 #(
    .INIT ( 16'h0202 ))
  \sincronizador/opcion_selecionada_cmp_eq000111  (
    .ADR0(Sensor_IBUF_770),
    .ADR1(Reprogram_IBUF_754),
    .ADR2(Reset_IBUF_765),
    .ADR3(VCC),
    .O(\sincronizador/opcion_selecionada_cmp_eq00011 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \sincronizador/salida_2  (
    .I(\sincronizador/salida<3>/DYMUX_2142 ),
    .CE(VCC),
    .CLK(\sincronizador/salida<3>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\sincronizador/salida<3>/SRINV_2133 ),
    .O(\sincronizador/salida [2])
  );
  X_LUT4 #(
    .INIT ( 16'h0202 ))
  \sincronizador/opcion_selecionada_cmp_eq000011  (
    .ADR0(Reset_IBUF_765),
    .ADR1(Reprogram_IBUF_754),
    .ADR2(Sensor_IBUF_770),
    .ADR3(VCC),
    .O(\sincronizador/opcion_selecionada_cmp_eq00001 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \sincronizador/salida_3  (
    .I(\sincronizador/salida<3>/DXMUX_2155 ),
    .CE(VCC),
    .CLK(\sincronizador/salida<3>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\sincronizador/salida<3>/SRINV_2133 ),
    .O(\sincronizador/salida [3])
  );
  X_LUT4 #(
    .INIT ( 16'h0CAA ))
  \parametros/tbase_mux0000<0>1  (
    .ADR0(Time_Value_0_IBUF_766),
    .ADR1(\parametros/tbase [0]),
    .ADR2(\sincronizador/salida [0]),
    .ADR3(\parametros/N11 ),
    .O(\parametros/tbase_mux0000 [0])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \parametros/tbase_0  (
    .I(\parametros/tbase<1>/DYMUX_2179 ),
    .CE(VCC),
    .CLK(\parametros/tbase<1>/CLKINV_2171 ),
    .SET(GND),
    .RST(GND),
    .O(\parametros/tbase [0])
  );
  X_LUT4 #(
    .INIT ( 16'hFCB8 ))
  \parametros/tbase_mux0000<1>1  (
    .ADR0(\parametros/tbase [1]),
    .ADR1(\parametros/N11 ),
    .ADR2(Time_Value_1_IBUF_767),
    .ADR3(\sincronizador/salida [0]),
    .O(\parametros/tbase_mux0000 [1])
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \parametros/tbase_1  (
    .I(\parametros/tbase<1>/DXMUX_2190 ),
    .CE(VCC),
    .CLK(\parametros/tbase<1>/CLKINV_2171 ),
    .SET(GND),
    .RST(GND),
    .O(\parametros/tbase [1])
  );
  X_LUT4 #(
    .INIT ( 16'h0CAA ))
  \parametros/tbase_mux0000<3>1  (
    .ADR0(Time_Value_3_IBUF_769),
    .ADR1(\parametros/tbase [3]),
    .ADR2(\sincronizador/salida [0]),
    .ADR3(\parametros/N11 ),
    .O(\parametros/tbase_mux0000 [3])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \parametros/tbase_3  (
    .I(\parametros/tbase<3>/DYMUX_2213 ),
    .CE(VCC),
    .CLK(\parametros/tbase<3>/CLKINV_2205 ),
    .SET(GND),
    .RST(GND),
    .O(\parametros/tbase [3])
  );
  X_LUT4 #(
    .INIT ( 16'hCCCA ))
  \parametros/mux32_SW0  (
    .ADR0(\parametros/tbase [3]),
    .ADR1(\parametros/tyel [3]),
    .ADR2(\maqEstados/state_FSM_FFd15_783 ),
    .ADR3(N32),
    .O(N14)
  );
  X_LUT4 #(
    .INIT ( 16'h8888 ))
  \maqEstados/state_FSM_FFd3-In1  (
    .ADR0(\sincronizador/salida [1]),
    .ADR1(\maqEstados/state_FSM_FFd5_809 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\maqEstados/state_FSM_FFd3-In )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \maqEstados/state_FSM_FFd3  (
    .I(\maqEstados/state_FSM_FFd3/DYMUX_2240 ),
    .CE(VCC),
    .CLK(\maqEstados/state_FSM_FFd3/CLKINV_2229 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\maqEstados/state_FSM_FFd3/SRINV_2230 ),
    .O(\maqEstados/state_FSM_FFd3_798 )
  );
  X_LUT4 #(
    .INIT ( 16'h8080 ))
  \maqEstados/state_FSM_FFd5-In1  (
    .ADR0(\maqEstados/state_FSM_FFd6_833 ),
    .ADR1(time_expired453_0),
    .ADR2(time_expired426_0),
    .ADR3(VCC),
    .O(\maqEstados/state_FSM_FFd5-In )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \maqEstados/state_FSM_FFd5  (
    .I(\maqEstados/state_FSM_FFd5/DYMUX_2264 ),
    .CE(VCC),
    .CLK(\maqEstados/state_FSM_FFd5/CLKINV_2254 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\maqEstados/state_FSM_FFd5/SRINV_2255 ),
    .O(\maqEstados/state_FSM_FFd5_809 )
  );
  X_LUT4 #(
    .INIT ( 16'h8888 ))
  time_expired454 (
    .ADR0(time_expired426_0),
    .ADR1(time_expired453_0),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(time_expired)
  );
  X_LUT4 #(
    .INIT ( 16'h0CAA ))
  \parametros/text_mux0000<2>1  (
    .ADR0(Time_Value_2_IBUF_768),
    .ADR1(\parametros/text [2]),
    .ADR2(\sincronizador/salida [0]),
    .ADR3(\parametros/N2 ),
    .O(\parametros/text_mux0000 [2])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \parametros/text_2  (
    .I(\parametros/text<3>/DYMUX_2297 ),
    .CE(VCC),
    .CLK(\parametros/text<3>/CLKINV_2289 ),
    .SET(GND),
    .RST(GND),
    .O(\parametros/text [2])
  );
  X_LUT4 #(
    .INIT ( 16'h0CAA ))
  \parametros/text_mux0000<3>1  (
    .ADR0(Time_Value_3_IBUF_769),
    .ADR1(\parametros/text [3]),
    .ADR2(\sincronizador/salida [0]),
    .ADR3(\parametros/N2 ),
    .O(\parametros/text_mux0000 [3])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \parametros/text_3  (
    .I(\parametros/text<3>/DXMUX_2308 ),
    .CE(VCC),
    .CLK(\parametros/text<3>/CLKINV_2289 ),
    .SET(GND),
    .RST(GND),
    .O(\parametros/text [3])
  );
  X_LUT4 #(
    .INIT ( 16'h4444 ))
  \maqEstados/state_FSM_FFd10-In1  (
    .ADR0(\registroPeaton/valor_walk_actual_835 ),
    .ADR1(\maqEstados/state_FSM_FFd12_785 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\maqEstados/state_FSM_FFd10-In )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \maqEstados/state_FSM_FFd10  (
    .I(\maqEstados/state_FSM_FFd10/DYMUX_2328 ),
    .CE(VCC),
    .CLK(\maqEstados/state_FSM_FFd10/CLKINV_2317 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\maqEstados/state_FSM_FFd10/SRINV_2318 ),
    .O(\maqEstados/state_FSM_FFd10_836 )
  );
  X_LUT4 #(
    .INIT ( 16'h8888 ))
  \maqEstados/state_FSM_FFd11-In1  (
    .ADR0(\registroPeaton/valor_walk_actual_835 ),
    .ADR1(\maqEstados/state_FSM_FFd12_785 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\maqEstados/state_FSM_FFd11-In )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \maqEstados/state_FSM_FFd11  (
    .I(\maqEstados/state_FSM_FFd12/DYMUX_2353 ),
    .CE(VCC),
    .CLK(\maqEstados/state_FSM_FFd12/CLKINV_2342 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\maqEstados/state_FSM_FFd12/SRINV_2343 ),
    .O(\maqEstados/state_FSM_FFd11_774 )
  );
  X_LUT4 #(
    .INIT ( 16'h8080 ))
  \maqEstados/state_FSM_FFd12-In1  (
    .ADR0(\maqEstados/state_FSM_FFd13_787 ),
    .ADR1(time_expired453_0),
    .ADR2(time_expired426_0),
    .ADR3(VCC),
    .O(\maqEstados/state_FSM_FFd12-In )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \maqEstados/state_FSM_FFd12  (
    .I(\maqEstados/state_FSM_FFd12/DXMUX_2366 ),
    .CE(VCC),
    .CLK(\maqEstados/state_FSM_FFd12/CLKINV_2342 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\maqEstados/state_FSM_FFd12/SRINV_2343 ),
    .O(\maqEstados/state_FSM_FFd12_785 )
  );
  X_LUT4 #(
    .INIT ( 16'h8080 ))
  \maqEstados/state_FSM_FFd21-In1  (
    .ADR0(\maqEstados/state_FSM_FFd22_837 ),
    .ADR1(time_expired453_0),
    .ADR2(time_expired426_0),
    .ADR3(VCC),
    .O(\maqEstados/state_FSM_FFd21-In )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \maqEstados/state_FSM_FFd21  (
    .I(\maqEstados/state_FSM_FFd21/DYMUX_2392 ),
    .CE(VCC),
    .CLK(\maqEstados/state_FSM_FFd21/CLKINV_2382 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\maqEstados/state_FSM_FFd21/SRINV_2383 ),
    .O(\maqEstados/state_FSM_FFd21_778 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \maqEstados/state_FSM_Out39  (
    .ADR0(\maqEstados/state_FSM_FFd22_837 ),
    .ADR1(\maqEstados/state_FSM_FFd23_779 ),
    .ADR2(\maqEstados/state_FSM_FFd24_780 ),
    .ADR3(\maqEstados/state_FSM_FFd8_797 ),
    .O(\maqEstados/state_FSM_Out39_2401 )
  );
  X_LUT4 #(
    .INIT ( 16'h4444 ))
  \maqEstados/state_FSM_FFd19-In1  (
    .ADR0(\sincronizador/salida [1]),
    .ADR1(\maqEstados/state_FSM_FFd21_778 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\maqEstados/state_FSM_FFd19-In )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \maqEstados/state_FSM_FFd19  (
    .I(\maqEstados/state_FSM_FFd20/DYMUX_2423 ),
    .CE(VCC),
    .CLK(\maqEstados/state_FSM_FFd20/CLKINV_2412 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\maqEstados/state_FSM_FFd20/SRINV_2413 ),
    .O(\maqEstados/state_FSM_FFd19_771 )
  );
  X_LUT4 #(
    .INIT ( 16'h8888 ))
  \maqEstados/state_FSM_FFd20-In1  (
    .ADR0(\sincronizador/salida [1]),
    .ADR1(\maqEstados/state_FSM_FFd21_778 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\maqEstados/state_FSM_FFd20-In )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \maqEstados/state_FSM_FFd20  (
    .I(\maqEstados/state_FSM_FFd20/DXMUX_2437 ),
    .CE(VCC),
    .CLK(\maqEstados/state_FSM_FFd20/CLKINV_2412 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\maqEstados/state_FSM_FFd20/SRINV_2413 ),
    .O(\maqEstados/state_FSM_FFd20_777 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \maqEstados/state_FSM_Out314  (
    .ADR0(\maqEstados/state_FSM_FFd13_787 ),
    .ADR1(\maqEstados/state_FSM_FFd14_788 ),
    .ADR2(\maqEstados/state_FSM_FFd15_783 ),
    .ADR3(\maqEstados/state_FSM_FFd17_773 ),
    .O(\maqEstados/state_FSM_Out314_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFEFE ))
  \maqEstados/state_FSM_Out323  (
    .ADR0(\maqEstados/state_FSM_Out34_0 ),
    .ADR1(\maqEstados/state_FSM_Out39_0 ),
    .ADR2(\maqEstados/state_FSM_Out314_840 ),
    .ADR3(VCC),
    .O(luces_6_OBUF_2463)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \registroPeaton/valor_walk_actual  (
    .I(\registroPeaton/valor_walk_actual/DYMUX_2475 ),
    .CE(\registroPeaton/valor_walk_actual/CEINV_2471 ),
    .CLK(\registroPeaton/valor_walk_actual/CLKINV_2472 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\registroPeaton/valor_walk_actual/SRINV_2473 ),
    .O(\registroPeaton/valor_walk_actual_835 )
  );
  X_LUT4 #(
    .INIT ( 16'hFEFE ))
  \maqEstados/state_FSM_Out7_SW0  (
    .ADR0(\maqEstados/state_FSM_FFd21_778 ),
    .ADR1(\maqEstados/state_FSM_FFd19_771 ),
    .ADR2(\maqEstados/state_FSM_FFd18_772 ),
    .ADR3(VCC),
    .O(N2_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \maqEstados/state_FSM_Out7  (
    .ADR0(\maqEstados/state_FSM_FFd20_777 ),
    .ADR1(\maqEstados/state_FSM_FFd4_786 ),
    .ADR2(\maqEstados/state_FSM_FFd17_773 ),
    .ADR3(N2),
    .O(luces_2_OBUF_2502)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \divisor/segundero  (
    .I(\divisor/segundero/DYMUX_2512 ),
    .CE(\divisor/segundero/CEINV_2509 ),
    .CLK(\divisor/segundero/CLKINV_2510 ),
    .SET(GND),
    .RST(GND),
    .O(\divisor/segundero_829 )
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \temporizador/Mcount_tiempoTranscurrido_xor<1>11  (
    .ADR0(\temporizador/tiempoTranscurrido [1]),
    .ADR1(\temporizador/tiempoTranscurrido [0]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\Result<1>1 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \temporizador/tiempoTranscurrido_1  (
    .I(\temporizador/tiempoTranscurrido<0>/DYMUX_2535 ),
    .CE(VCC),
    .CLK(\temporizador/tiempoTranscurrido<0>/CLKINVNOT ),
    .SET(GND),
    .RST(\temporizador/tiempoTranscurrido<0>/SRINV_2525 ),
    .O(\temporizador/tiempoTranscurrido [1])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \temporizador/tiempoTranscurrido_0  (
    .I(\temporizador/tiempoTranscurrido<0>/DXMUX_2543 ),
    .CE(VCC),
    .CLK(\temporizador/tiempoTranscurrido<0>/CLKINVNOT ),
    .SET(GND),
    .RST(\temporizador/tiempoTranscurrido<0>/SRINV_2525 ),
    .O(\temporizador/tiempoTranscurrido [0])
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \maqEstados/state_FSM_Out9_SW0  (
    .ADR0(\maqEstados/state_FSM_FFd22_837 ),
    .ADR1(\maqEstados/state_FSM_FFd17_773 ),
    .ADR2(\maqEstados/state_FSM_FFd19_771 ),
    .ADR3(\maqEstados/state_FSM_FFd18_772 ),
    .O(N8_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \maqEstados/state_FSM_Out9  (
    .ADR0(\maqEstados/state_FSM_FFd20_777 ),
    .ADR1(\maqEstados/state_FSM_FFd11_774 ),
    .ADR2(\maqEstados/state_FSM_FFd23_779 ),
    .ADR3(N8),
    .O(luces_0_OBUF_2571)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \maqEstados/state_FSM_FFd1  (
    .I(\maqEstados/state_FSM_FFd1/DXMUX_2586 ),
    .CE(\maqEstados/state_FSM_FFd1/CEINV_2580 ),
    .CLK(\maqEstados/state_FSM_FFd1/CLKINV_2581 ),
    .SET(GND),
    .RST(GND),
    .SSET(\maqEstados/state_FSM_FFd1/REVUSED_2584 ),
    .SRST(\maqEstados/state_FSM_FFd1/SRINV_2582 ),
    .O(\maqEstados/state_FSM_FFd1_800 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \maqEstados/state_FSM_FFd2  (
    .I(\maqEstados/state_FSM_FFd2/DYMUX_2600 ),
    .CE(VCC),
    .CLK(\maqEstados/state_FSM_FFd2/CLKINV_2597 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\maqEstados/state_FSM_FFd2/SRINV_2598 ),
    .O(\maqEstados/state_FSM_FFd2_802 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \maqEstados/state_FSM_FFd6  (
    .I(\maqEstados/state_FSM_FFd6/DXMUX_2617 ),
    .CE(\maqEstados/state_FSM_FFd6/CEINV_2611 ),
    .CLK(\maqEstados/state_FSM_FFd6/CLKINV_2612 ),
    .SET(GND),
    .RST(GND),
    .SSET(\maqEstados/state_FSM_FFd6/REVUSED_2615 ),
    .SRST(\maqEstados/state_FSM_FFd6/SRINV_2613 ),
    .O(\maqEstados/state_FSM_FFd6_833 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \maqEstados/state_FSM_FFd7  (
    .I(\maqEstados/state_FSM_FFd7/DYMUX_2631 ),
    .CE(VCC),
    .CLK(\maqEstados/state_FSM_FFd7/CLKINV_2628 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\maqEstados/state_FSM_FFd7/SRINV_2629 ),
    .O(\maqEstados/state_FSM_FFd7_844 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \maqEstados/state_FSM_FFd8  (
    .I(\maqEstados/state_FSM_FFd8/DXMUX_2648 ),
    .CE(\maqEstados/state_FSM_FFd8/CEINV_2642 ),
    .CLK(\maqEstados/state_FSM_FFd8/CLKINV_2643 ),
    .SET(GND),
    .RST(GND),
    .SSET(\maqEstados/state_FSM_FFd8/REVUSED_2646 ),
    .SRST(\maqEstados/state_FSM_FFd8/SRINV_2644 ),
    .O(\maqEstados/state_FSM_FFd8_797 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \maqEstados/state_FSM_FFd9  (
    .I(\maqEstados/state_FSM_FFd9/DXMUX_2665 ),
    .CE(VCC),
    .CLK(\maqEstados/state_FSM_FFd9/CLKINV_2660 ),
    .SET(GND),
    .RST(GND),
    .SSET(\maqEstados/state_FSM_FFd9/REVUSED_2663 ),
    .SRST(\maqEstados/state_FSM_FFd9/SRINV_2661 ),
    .O(\maqEstados/state_FSM_FFd9_801 )
  );
  X_LUT4 #(
    .INIT ( 16'hFEFE ))
  \maqEstados/state_FSM_Out4_SW0  (
    .ADR0(\maqEstados/state_FSM_FFd14_788 ),
    .ADR1(\maqEstados/state_FSM_FFd17_773 ),
    .ADR2(\maqEstados/state_FSM_FFd16_775 ),
    .ADR3(VCC),
    .O(N6_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \maqEstados/state_FSM_Out4  (
    .ADR0(\maqEstados/state_FSM_FFd8_797 ),
    .ADR1(\maqEstados/state_FSM_FFd13_787 ),
    .ADR2(\maqEstados/state_FSM_FFd15_783 ),
    .ADR3(N6),
    .O(luces_5_OBUF_2692)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \maqEstados/state_FSM_Out34  (
    .ADR0(\maqEstados/state_FSM_FFd18_772 ),
    .ADR1(\maqEstados/state_FSM_FFd19_771 ),
    .ADR2(\maqEstados/state_FSM_FFd20_777 ),
    .ADR3(\maqEstados/state_FSM_FFd21_778 ),
    .O(\maqEstados/state_FSM_Out34_2709 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \maqEstados/state_FSM_Out54  (
    .ADR0(\maqEstados/state_FSM_FFd14_788 ),
    .ADR1(\maqEstados/state_FSM_FFd17_773 ),
    .ADR2(\maqEstados/state_FSM_FFd18_772 ),
    .ADR3(\maqEstados/state_FSM_FFd4_786 ),
    .O(\maqEstados/state_FSM_Out54_2716 )
  );
  X_LUT4 #(
    .INIT ( 16'hFEFE ))
  start_timer_inv_SW0 (
    .ADR0(\maqEstados/state_FSM_FFd23_779 ),
    .ADR1(\maqEstados/state_FSM_FFd18_772 ),
    .ADR2(\maqEstados/state_FSM_FFd7_844 ),
    .ADR3(VCC),
    .O(N01_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  start_timer_inv (
    .ADR0(\maqEstados/state_FSM_FFd9_801 ),
    .ADR1(\maqEstados/state_FSM_FFd2_802 ),
    .ADR2(\maqEstados/state_FSM_FFd14_788 ),
    .ADR3(N01),
    .O(start_timer_inv_2740)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \maqEstados/state_FSM_Out59  (
    .ADR0(\maqEstados/state_FSM_FFd10_836 ),
    .ADR1(\maqEstados/state_FSM_FFd8_797 ),
    .ADR2(\maqEstados/state_FSM_FFd11_774 ),
    .ADR3(\maqEstados/state_FSM_FFd13_787 ),
    .O(\maqEstados/state_FSM_Out59_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hEEEE ))
  \maqEstados/state_FSM_Out510  (
    .ADR0(\maqEstados/state_FSM_Out54_0 ),
    .ADR1(\maqEstados/state_FSM_Out59_848 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(luces_4_OBUF_2764)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \maqEstados/state_FSM_FFd13  (
    .I(\maqEstados/state_FSM_FFd13/DXMUX_2779 ),
    .CE(\maqEstados/state_FSM_FFd13/CEINV_2773 ),
    .CLK(\maqEstados/state_FSM_FFd13/CLKINV_2774 ),
    .SET(GND),
    .RST(GND),
    .SSET(\maqEstados/state_FSM_FFd13/REVUSED_2777 ),
    .SRST(\maqEstados/state_FSM_FFd13/SRINV_2775 ),
    .O(\maqEstados/state_FSM_FFd13_787 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \maqEstados/state_FSM_FFd22  (
    .I(\maqEstados/state_FSM_FFd22/DXMUX_2798 ),
    .CE(\maqEstados/state_FSM_FFd22/CEINV_2792 ),
    .CLK(\maqEstados/state_FSM_FFd22/CLKINV_2793 ),
    .SET(GND),
    .RST(GND),
    .SSET(\maqEstados/state_FSM_FFd22/REVUSED_2796 ),
    .SRST(\maqEstados/state_FSM_FFd22/SRINV_2794 ),
    .O(\maqEstados/state_FSM_FFd22_837 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \maqEstados/state_FSM_FFd14  (
    .I(\maqEstados/state_FSM_FFd14/DYMUX_2812 ),
    .CE(VCC),
    .CLK(\maqEstados/state_FSM_FFd14/CLKINV_2809 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\maqEstados/state_FSM_FFd14/SRINV_2810 ),
    .O(\maqEstados/state_FSM_FFd14_788 )
  );
  X_LUT4 #(
    .INIT ( 16'h8080 ))
  \maqEstados/state_FSM_FFd24-In1  (
    .ADR0(\maqEstados/state_FSM_FFd8_797 ),
    .ADR1(time_expired453_0),
    .ADR2(time_expired426_0),
    .ADR3(VCC),
    .O(\maqEstados/state_FSM_FFd24-In )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \divisor/contador<0>/F/X_LUT4  (
    .ADR0(\divisor/contador [0]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\divisor/contador<0>/F )
  );
  X_BUF   \luces<0>/OUTPUT/OFF/OMUX  (
    .I(luces_0_OBUF_2571),
    .O(\luces<0>/O )
  );
  X_BUF   \luces<1>/OUTPUT/OFF/OMUX  (
    .I(\luces_1_OBUF/F5MUX_1677 ),
    .O(\luces<1>/O )
  );
  X_BUF   \luces<2>/OUTPUT/OFF/OMUX  (
    .I(luces_2_OBUF_2502),
    .O(\luces<2>/O )
  );
  X_BUF   \luces<3>/OUTPUT/OFF/OMUX  (
    .I(luces_3_OBUF_2931),
    .O(\luces<3>/O )
  );
  X_BUF   \luces<4>/OUTPUT/OFF/OMUX  (
    .I(luces_4_OBUF_2764),
    .O(\luces<4>/O )
  );
  X_BUF   \luces<5>/OUTPUT/OFF/OMUX  (
    .I(luces_5_OBUF_2692),
    .O(\luces<5>/O )
  );
  X_BUF   \luces<6>/OUTPUT/OFF/OMUX  (
    .I(luces_6_OBUF_2463),
    .O(\luces<6>/O )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFF ))
  \maqEstados/state_FSM_Out811/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\maqEstados/state_FSM_Out811/F )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFF ))
  \luces_1_OBUF/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\luces_1_OBUF/F )
  );
  X_ZERO   NlwBlock_ControladorLucesSemaforo_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_ControladorLucesSemaforo_VCC (
    .O(VCC)
  );
endmodule


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
    wire CCLKO_GLBL;

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

