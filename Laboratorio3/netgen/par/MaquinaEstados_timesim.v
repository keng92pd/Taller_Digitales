////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.68d
//  \   \         Application: netgen
//  /   /         Filename: MaquinaEstados_timesim.v
// /___/   /\     Timestamp: Wed Sep 25 04:41:04 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 4 -pcf MaquinaEstados.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim MaquinaEstados.ncd MaquinaEstados_timesim.v 
// Device	: 3s200ft256-4 (PRODUCTION 1.39 2013-06-08)
// Input file	: MaquinaEstados.ncd
// Output file	: C:\Users\Zeck\Desktop\Repositorio_Kenneth\Laboratorio3\netgen\par\MaquinaEstados_timesim.v
// # of Modules	: 1
// Design Name	: MaquinaEstados
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

module MaquinaEstados (
  clk, write_dato_controlS, realizar_ComparacionS, datos_iguales, wS, solicitar_direccionS, reset_sinc, resultadoS
);
  input clk;
  output write_dato_controlS;
  output realizar_ComparacionS;
  input datos_iguales;
  output wS;
  output solicitar_direccionS;
  input reset_sinc;
  output [1 : 0] resultadoS;
  wire state_FSM_FFd6_96;
  wire datos_iguales_IBUF_103;
  wire reset_sinc_IBUF_104;
  wire clk_BUFGP;
  wire state_FSM_FFd9_107;
  wire state_FSM_FFd8_108;
  wire state_FSM_FFd12_109;
  wire state_FSM_FFd11_110;
  wire state_FSM_FFd10_111;
  wire state_FSM_FFd5_112;
  wire state_FSM_FFd4_113;
  wire state_FSM_FFd3_114;
  wire state_FSM_FFd2_115;
  wire state_FSM_FFd1_116;
  wire state_FSM_FFd7_117;
  wire N2;
  wire \realizar_ComparacionS/O ;
  wire \write_dato_controlS/O ;
  wire \clk/INBUF ;
  wire \wS/O ;
  wire \resultadoS<0>/O ;
  wire \resultadoS<1>/O ;
  wire \solicitar_direccionS/O ;
  wire \datos_iguales/INBUF ;
  wire \reset_sinc/INBUF ;
  wire \clk_BUFGP/BUFG/S_INVNOT ;
  wire \clk_BUFGP/BUFG/I0_INV ;
  wire \wS_OBUF/F5MUX_213 ;
  wire \wS_OBUF/F ;
  wire \wS_OBUF/BXINV_202 ;
  wire state_FSM_Out3;
  wire \state_FSM_FFd4/DXMUX_248 ;
  wire \state_FSM_FFd4-In ;
  wire \state_FSM_FFd4/DYMUX_234 ;
  wire \state_FSM_FFd3-In ;
  wire \state_FSM_FFd4/SRINV_224 ;
  wire \state_FSM_FFd4/CLKINV_223 ;
  wire \state_FSM_FFd2/DXMUX_268 ;
  wire \state_FSM_FFd2/DYMUX_262 ;
  wire \state_FSM_FFd2/SRINV_260 ;
  wire \state_FSM_FFd2/CLKINV_259 ;
  wire \state_FSM_FFd6/DXMUX_288 ;
  wire \state_FSM_FFd6/DYMUX_282 ;
  wire \state_FSM_FFd6/SRINV_280 ;
  wire \state_FSM_FFd6/CLKINV_279 ;
  wire \state_FSM_FFd8/DXMUX_308 ;
  wire \state_FSM_FFd8/DYMUX_302 ;
  wire \state_FSM_FFd8/SRINV_300 ;
  wire \state_FSM_FFd8/CLKINV_299 ;
  wire \state_FSM_FFd10/DXMUX_328 ;
  wire \state_FSM_FFd10/DYMUX_322 ;
  wire \state_FSM_FFd10/SRINV_320 ;
  wire \state_FSM_FFd10/CLKINV_319 ;
  wire resultadoS_1_OBUF_342;
  wire resultadoS_0_OBUF_354;
  wire \state_FSM_FFd11/DXMUX_382 ;
  wire \state_FSM_FFd11/DYMUX_376 ;
  wire \state_FSM_FFd11/GYMUX_375 ;
  wire solicitar_direccionS_OBUF_373;
  wire \state_FSM_FFd11/SRINV_366 ;
  wire \state_FSM_FFd11/CLKINV_365 ;
  wire write_dato_controlS_OBUF_408;
  wire N2_pack_1;
  wire GND;
  wire VCC;
  initial $sdf_annotate("netgen/par/maquinaestados_timesim.sdf");
  X_OPAD #(
    .LOC ( "PAD24" ))
  \realizar_ComparacionS/PAD  (
    .PAD(realizar_ComparacionS)
  );
  X_OBUF #(
    .LOC ( "PAD24" ))
  realizar_ComparacionS_OBUF (
    .I(\realizar_ComparacionS/O ),
    .O(realizar_ComparacionS)
  );
  X_OPAD #(
    .LOC ( "PAD20" ))
  \write_dato_controlS/PAD  (
    .PAD(write_dato_controlS)
  );
  X_OBUF #(
    .LOC ( "PAD20" ))
  write_dato_controlS_OBUF (
    .I(\write_dato_controlS/O ),
    .O(write_dato_controlS)
  );
  X_IPAD #(
    .LOC ( "PAD123" ))
  \clk/PAD  (
    .PAD(clk)
  );
  X_BUF #(
    .LOC ( "PAD123" ))
  \clk_BUFGP/IBUFG  (
    .I(clk),
    .O(\clk/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD25" ))
  \wS/PAD  (
    .PAD(wS)
  );
  X_OBUF #(
    .LOC ( "PAD25" ))
  wS_OBUF (
    .I(\wS/O ),
    .O(wS)
  );
  X_OPAD #(
    .LOC ( "PAD19" ))
  \resultadoS<0>/PAD  (
    .PAD(resultadoS[0])
  );
  X_OBUF #(
    .LOC ( "PAD19" ))
  resultadoS_0_OBUF (
    .I(\resultadoS<0>/O ),
    .O(resultadoS[0])
  );
  X_OPAD #(
    .LOC ( "PAD18" ))
  \resultadoS<1>/PAD  (
    .PAD(resultadoS[1])
  );
  X_OBUF #(
    .LOC ( "PAD18" ))
  resultadoS_1_OBUF (
    .I(\resultadoS<1>/O ),
    .O(resultadoS[1])
  );
  X_OPAD #(
    .LOC ( "PAD23" ))
  \solicitar_direccionS/PAD  (
    .PAD(solicitar_direccionS)
  );
  X_OBUF #(
    .LOC ( "PAD23" ))
  solicitar_direccionS_OBUF (
    .I(\solicitar_direccionS/O ),
    .O(solicitar_direccionS)
  );
  X_IPAD #(
    .LOC ( "PAD21" ))
  \datos_iguales/PAD  (
    .PAD(datos_iguales)
  );
  X_BUF #(
    .LOC ( "PAD21" ))
  datos_iguales_IBUF (
    .I(datos_iguales),
    .O(\datos_iguales/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD22" ))
  \reset_sinc/PAD  (
    .PAD(reset_sinc)
  );
  X_BUF #(
    .LOC ( "PAD22" ))
  reset_sinc_IBUF (
    .I(reset_sinc),
    .O(\reset_sinc/INBUF )
  );
  X_BUFGMUX #(
    .LOC ( "BUFGMUX0" ))
  \clk_BUFGP/BUFG  (
    .I0(\clk_BUFGP/BUFG/I0_INV ),
    .I1(GND),
    .S(\clk_BUFGP/BUFG/S_INVNOT ),
    .O(clk_BUFGP)
  );
  X_INV #(
    .LOC ( "BUFGMUX0" ))
  \clk_BUFGP/BUFG/SINV  (
    .I(1'b1),
    .O(\clk_BUFGP/BUFG/S_INVNOT )
  );
  X_BUF #(
    .LOC ( "BUFGMUX0" ))
  \clk_BUFGP/BUFG/I0_USED  (
    .I(\clk/INBUF ),
    .O(\clk_BUFGP/BUFG/I0_INV )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X17Y40" ))
  \wS_OBUF/F5MUX  (
    .IA(state_FSM_Out3),
    .IB(\wS_OBUF/F ),
    .SEL(\wS_OBUF/BXINV_202 ),
    .O(\wS_OBUF/F5MUX_213 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y40" ))
  \wS_OBUF/BXINV  (
    .I(state_FSM_FFd9_107),
    .O(\wS_OBUF/BXINV_202 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y43" ))
  \state_FSM_FFd4/DXMUX  (
    .I(\state_FSM_FFd4-In ),
    .O(\state_FSM_FFd4/DXMUX_248 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y43" ))
  \state_FSM_FFd4/DYMUX  (
    .I(\state_FSM_FFd3-In ),
    .O(\state_FSM_FFd4/DYMUX_234 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y43" ))
  \state_FSM_FFd4/SRINV  (
    .I(reset_sinc_IBUF_104),
    .O(\state_FSM_FFd4/SRINV_224 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y43" ))
  \state_FSM_FFd4/CLKINV  (
    .I(clk_BUFGP),
    .O(\state_FSM_FFd4/CLKINV_223 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y42" ))
  \state_FSM_FFd2/DXMUX  (
    .I(state_FSM_FFd4_113),
    .O(\state_FSM_FFd2/DXMUX_268 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y42" ))
  \state_FSM_FFd2/DYMUX  (
    .I(state_FSM_FFd3_114),
    .O(\state_FSM_FFd2/DYMUX_262 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y42" ))
  \state_FSM_FFd2/SRINV  (
    .I(reset_sinc_IBUF_104),
    .O(\state_FSM_FFd2/SRINV_260 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y42" ))
  \state_FSM_FFd2/CLKINV  (
    .I(clk_BUFGP),
    .O(\state_FSM_FFd2/CLKINV_259 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y39" ))
  \state_FSM_FFd6/DXMUX  (
    .I(state_FSM_FFd7_117),
    .O(\state_FSM_FFd6/DXMUX_288 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y39" ))
  \state_FSM_FFd6/DYMUX  (
    .I(state_FSM_FFd6_96),
    .O(\state_FSM_FFd6/DYMUX_282 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y39" ))
  \state_FSM_FFd6/SRINV  (
    .I(reset_sinc_IBUF_104),
    .O(\state_FSM_FFd6/SRINV_280 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y39" ))
  \state_FSM_FFd6/CLKINV  (
    .I(clk_BUFGP),
    .O(\state_FSM_FFd6/CLKINV_279 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y39" ))
  \state_FSM_FFd8/DXMUX  (
    .I(state_FSM_FFd9_107),
    .O(\state_FSM_FFd8/DXMUX_308 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y39" ))
  \state_FSM_FFd8/DYMUX  (
    .I(state_FSM_FFd8_108),
    .O(\state_FSM_FFd8/DYMUX_302 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y39" ))
  \state_FSM_FFd8/SRINV  (
    .I(reset_sinc_IBUF_104),
    .O(\state_FSM_FFd8/SRINV_300 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y39" ))
  \state_FSM_FFd8/CLKINV  (
    .I(clk_BUFGP),
    .O(\state_FSM_FFd8/CLKINV_299 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y41" ))
  \state_FSM_FFd10/DXMUX  (
    .I(state_FSM_FFd11_110),
    .O(\state_FSM_FFd10/DXMUX_328 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y41" ))
  \state_FSM_FFd10/DYMUX  (
    .I(state_FSM_FFd10_111),
    .O(\state_FSM_FFd10/DYMUX_322 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y41" ))
  \state_FSM_FFd10/SRINV  (
    .I(reset_sinc_IBUF_104),
    .O(\state_FSM_FFd10/SRINV_320 )
  );
  X_BUF #(
    .LOC ( "SLICE_X17Y41" ))
  \state_FSM_FFd10/CLKINV  (
    .I(clk_BUFGP),
    .O(\state_FSM_FFd10/CLKINV_319 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y41" ))
  \state_FSM_FFd11/DXMUX  (
    .I(state_FSM_FFd12_109),
    .O(\state_FSM_FFd11/DXMUX_382 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y41" ))
  \state_FSM_FFd11/DYMUX  (
    .I(\state_FSM_FFd11/GYMUX_375 ),
    .O(\state_FSM_FFd11/DYMUX_376 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y41" ))
  \state_FSM_FFd11/GYMUX  (
    .I(solicitar_direccionS_OBUF_373),
    .O(\state_FSM_FFd11/GYMUX_375 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y41" ))
  \state_FSM_FFd11/SRINV  (
    .I(reset_sinc_IBUF_104),
    .O(\state_FSM_FFd11/SRINV_366 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y41" ))
  \state_FSM_FFd11/CLKINV  (
    .I(clk_BUFGP),
    .O(\state_FSM_FFd11/CLKINV_365 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y40" ))
  \write_dato_controlS_OBUF/YUSED  (
    .I(N2_pack_1),
    .O(N2)
  );
  X_BUF #(
    .LOC ( "PAD21" ))
  \datos_iguales/IFF/IMUX  (
    .I(\datos_iguales/INBUF ),
    .O(datos_iguales_IBUF_103)
  );
  X_BUF #(
    .LOC ( "PAD22" ))
  \reset_sinc/IFF/IMUX  (
    .I(\reset_sinc/INBUF ),
    .O(reset_sinc_IBUF_104)
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X17Y40" ))
  state_FSM_Out31 (
    .ADR0(state_FSM_FFd12_109),
    .ADR1(state_FSM_FFd8_108),
    .ADR2(state_FSM_FFd10_111),
    .ADR3(state_FSM_FFd11_110),
    .O(state_FSM_Out3)
  );
  X_LUT4 #(
    .INIT ( 16'hC0C0 ),
    .LOC ( "SLICE_X16Y43" ))
  \state_FSM_FFd3-In1  (
    .ADR0(VCC),
    .ADR1(datos_iguales_IBUF_103),
    .ADR2(state_FSM_FFd5_112),
    .ADR3(VCC),
    .O(\state_FSM_FFd3-In )
  );
  X_SFF #(
    .LOC ( "SLICE_X16Y43" ),
    .INIT ( 1'b0 ))
  state_FSM_FFd3 (
    .I(\state_FSM_FFd4/DYMUX_234 ),
    .CE(VCC),
    .CLK(\state_FSM_FFd4/CLKINV_223 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\state_FSM_FFd4/SRINV_224 ),
    .O(state_FSM_FFd3_114)
  );
  X_LUT4 #(
    .INIT ( 16'h3030 ),
    .LOC ( "SLICE_X16Y43" ))
  \state_FSM_FFd4-In1  (
    .ADR0(VCC),
    .ADR1(datos_iguales_IBUF_103),
    .ADR2(state_FSM_FFd5_112),
    .ADR3(VCC),
    .O(\state_FSM_FFd4-In )
  );
  X_SFF #(
    .LOC ( "SLICE_X16Y43" ),
    .INIT ( 1'b0 ))
  state_FSM_FFd4 (
    .I(\state_FSM_FFd4/DXMUX_248 ),
    .CE(VCC),
    .CLK(\state_FSM_FFd4/CLKINV_223 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\state_FSM_FFd4/SRINV_224 ),
    .O(state_FSM_FFd4_113)
  );
  X_SFF #(
    .LOC ( "SLICE_X16Y42" ),
    .INIT ( 1'b0 ))
  state_FSM_FFd1 (
    .I(\state_FSM_FFd2/DYMUX_262 ),
    .CE(VCC),
    .CLK(\state_FSM_FFd2/CLKINV_259 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\state_FSM_FFd2/SRINV_260 ),
    .O(state_FSM_FFd1_116)
  );
  X_SFF #(
    .LOC ( "SLICE_X16Y42" ),
    .INIT ( 1'b0 ))
  state_FSM_FFd2 (
    .I(\state_FSM_FFd2/DXMUX_268 ),
    .CE(VCC),
    .CLK(\state_FSM_FFd2/CLKINV_259 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\state_FSM_FFd2/SRINV_260 ),
    .O(state_FSM_FFd2_115)
  );
  X_SFF #(
    .LOC ( "SLICE_X17Y39" ),
    .INIT ( 1'b0 ))
  state_FSM_FFd5 (
    .I(\state_FSM_FFd6/DYMUX_282 ),
    .CE(VCC),
    .CLK(\state_FSM_FFd6/CLKINV_279 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\state_FSM_FFd6/SRINV_280 ),
    .O(state_FSM_FFd5_112)
  );
  X_SFF #(
    .LOC ( "SLICE_X17Y39" ),
    .INIT ( 1'b0 ))
  state_FSM_FFd6 (
    .I(\state_FSM_FFd6/DXMUX_288 ),
    .CE(VCC),
    .CLK(\state_FSM_FFd6/CLKINV_279 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\state_FSM_FFd6/SRINV_280 ),
    .O(state_FSM_FFd6_96)
  );
  X_SFF #(
    .LOC ( "SLICE_X16Y39" ),
    .INIT ( 1'b0 ))
  state_FSM_FFd7 (
    .I(\state_FSM_FFd8/DYMUX_302 ),
    .CE(VCC),
    .CLK(\state_FSM_FFd8/CLKINV_299 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\state_FSM_FFd8/SRINV_300 ),
    .O(state_FSM_FFd7_117)
  );
  X_SFF #(
    .LOC ( "SLICE_X16Y39" ),
    .INIT ( 1'b0 ))
  state_FSM_FFd8 (
    .I(\state_FSM_FFd8/DXMUX_308 ),
    .CE(VCC),
    .CLK(\state_FSM_FFd8/CLKINV_299 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\state_FSM_FFd8/SRINV_300 ),
    .O(state_FSM_FFd8_108)
  );
  X_SFF #(
    .LOC ( "SLICE_X17Y41" ),
    .INIT ( 1'b0 ))
  state_FSM_FFd9 (
    .I(\state_FSM_FFd10/DYMUX_322 ),
    .CE(VCC),
    .CLK(\state_FSM_FFd10/CLKINV_319 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\state_FSM_FFd10/SRINV_320 ),
    .O(state_FSM_FFd9_107)
  );
  X_SFF #(
    .LOC ( "SLICE_X17Y41" ),
    .INIT ( 1'b0 ))
  state_FSM_FFd10 (
    .I(\state_FSM_FFd10/DXMUX_328 ),
    .CE(VCC),
    .CLK(\state_FSM_FFd10/CLKINV_319 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\state_FSM_FFd10/SRINV_320 ),
    .O(state_FSM_FFd10_111)
  );
  X_LUT4 #(
    .INIT ( 16'hFFAA ),
    .LOC ( "SLICE_X15Y43" ))
  state_FSM_Out11 (
    .ADR0(state_FSM_FFd4_113),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(state_FSM_FFd2_115),
    .O(resultadoS_1_OBUF_342)
  );
  X_LUT4 #(
    .INIT ( 16'hFFCC ),
    .LOC ( "SLICE_X17Y43" ))
  state_FSM_Out21 (
    .ADR0(VCC),
    .ADR1(state_FSM_FFd1_116),
    .ADR2(VCC),
    .ADR3(state_FSM_FFd3_114),
    .O(resultadoS_0_OBUF_354)
  );
  X_LUT4 #(
    .INIT ( 16'hFFCC ),
    .LOC ( "SLICE_X16Y41" ))
  state_FSM_Out51 (
    .ADR0(VCC),
    .ADR1(state_FSM_FFd2_115),
    .ADR2(VCC),
    .ADR3(state_FSM_FFd1_116),
    .O(solicitar_direccionS_OBUF_373)
  );
  X_SFF #(
    .LOC ( "SLICE_X16Y41" ),
    .INIT ( 1'b1 ))
  state_FSM_FFd12 (
    .I(\state_FSM_FFd11/DYMUX_376 ),
    .CE(VCC),
    .CLK(\state_FSM_FFd11/CLKINV_365 ),
    .SET(GND),
    .RST(GND),
    .SSET(\state_FSM_FFd11/SRINV_366 ),
    .SRST(GND),
    .O(state_FSM_FFd12_109)
  );
  X_SFF #(
    .LOC ( "SLICE_X16Y41" ),
    .INIT ( 1'b0 ))
  state_FSM_FFd11 (
    .I(\state_FSM_FFd11/DXMUX_382 ),
    .CE(VCC),
    .CLK(\state_FSM_FFd11/CLKINV_365 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\state_FSM_FFd11/SRINV_366 ),
    .O(state_FSM_FFd11_110)
  );
  X_LUT4 #(
    .INIT ( 16'hFFEE ),
    .LOC ( "SLICE_X16Y40" ))
  state_FSM_Out4_SW0 (
    .ADR0(state_FSM_FFd11_110),
    .ADR1(state_FSM_FFd10_111),
    .ADR2(VCC),
    .ADR3(state_FSM_FFd1_116),
    .O(N2_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X16Y40" ))
  state_FSM_Out4 (
    .ADR0(state_FSM_FFd9_107),
    .ADR1(N2),
    .ADR2(state_FSM_FFd2_115),
    .ADR3(state_FSM_FFd12_109),
    .O(write_dato_controlS_OBUF_408)
  );
  X_BUF #(
    .LOC ( "PAD24" ))
  \realizar_ComparacionS/OUTPUT/OFF/OMUX  (
    .I(state_FSM_FFd6_96),
    .O(\realizar_ComparacionS/O )
  );
  X_BUF #(
    .LOC ( "PAD20" ))
  \write_dato_controlS/OUTPUT/OFF/OMUX  (
    .I(write_dato_controlS_OBUF_408),
    .O(\write_dato_controlS/O )
  );
  X_BUF #(
    .LOC ( "PAD25" ))
  \wS/OUTPUT/OFF/OMUX  (
    .I(\wS_OBUF/F5MUX_213 ),
    .O(\wS/O )
  );
  X_BUF #(
    .LOC ( "PAD19" ))
  \resultadoS<0>/OUTPUT/OFF/OMUX  (
    .I(resultadoS_0_OBUF_354),
    .O(\resultadoS<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD18" ))
  \resultadoS<1>/OUTPUT/OFF/OMUX  (
    .I(resultadoS_1_OBUF_342),
    .O(\resultadoS<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD23" ))
  \solicitar_direccionS/OUTPUT/OFF/OMUX  (
    .I(\state_FSM_FFd11/GYMUX_375 ),
    .O(\solicitar_direccionS/O )
  );
  X_LUT4 #(
    .INIT ( 16'h0000 ),
    .LOC ( "SLICE_X17Y40" ))
  \wS_OBUF/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\wS_OBUF/F )
  );
  X_ZERO   NlwBlock_MaquinaEstados_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_MaquinaEstados_VCC (
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

