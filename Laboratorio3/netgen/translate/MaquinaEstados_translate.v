////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.68d
//  \   \         Application: netgen
//  /   /         Filename: MaquinaEstados_translate.v
// /___/   /\     Timestamp: Wed Sep 25 04:33:19 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/translate -ofmt verilog -sim MaquinaEstados.ngd MaquinaEstados_translate.v 
// Device	: 3s200ft256-4
// Input file	: MaquinaEstados.ngd
// Output file	: C:\Users\Zeck\Desktop\Repositorio_Kenneth\Laboratorio3\netgen\translate\MaquinaEstados_translate.v
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
  wire N2;
  wire N5;
  wire clk_BUFGP;
  wire datos_iguales_IBUF_8;
  wire reset_sinc_IBUF_11;
  wire resultadoS_0_OBUF_14;
  wire resultadoS_1_OBUF_15;
  wire solicitar_direccionS_OBUF_17;
  wire state_FSM_FFd1_18;
  wire state_FSM_FFd10_19;
  wire state_FSM_FFd11_20;
  wire state_FSM_FFd12_21;
  wire state_FSM_FFd2_22;
  wire state_FSM_FFd3_23;
  wire \state_FSM_FFd3-In ;
  wire state_FSM_FFd4_25;
  wire \state_FSM_FFd4-In ;
  wire state_FSM_FFd5_27;
  wire state_FSM_FFd6_28;
  wire state_FSM_FFd7_29;
  wire state_FSM_FFd8_30;
  wire state_FSM_FFd9_31;
  wire state_FSM_Out3;
  wire wS_OBUF_34;
  wire write_dato_controlS_OBUF_36;
  wire \clk_BUFGP/IBUFG_2 ;
  wire VCC;
  wire GND;
  X_SFF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd3 (
    .CLK(clk_BUFGP),
    .I(\state_FSM_FFd3-In ),
    .SRST(reset_sinc_IBUF_11),
    .O(state_FSM_FFd3_23),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd4 (
    .CLK(clk_BUFGP),
    .I(\state_FSM_FFd4-In ),
    .SRST(reset_sinc_IBUF_11),
    .O(state_FSM_FFd4_25),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  state_FSM_FFd12 (
    .CLK(clk_BUFGP),
    .I(solicitar_direccionS_OBUF_17),
    .SSET(reset_sinc_IBUF_11),
    .O(state_FSM_FFd12_21),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd1 (
    .CLK(clk_BUFGP),
    .I(state_FSM_FFd3_23),
    .SRST(reset_sinc_IBUF_11),
    .O(state_FSM_FFd1_18),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd2 (
    .CLK(clk_BUFGP),
    .I(state_FSM_FFd4_25),
    .SRST(reset_sinc_IBUF_11),
    .O(state_FSM_FFd2_22),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd11 (
    .CLK(clk_BUFGP),
    .I(state_FSM_FFd12_21),
    .SRST(reset_sinc_IBUF_11),
    .O(state_FSM_FFd11_20),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd10 (
    .CLK(clk_BUFGP),
    .I(state_FSM_FFd11_20),
    .SRST(reset_sinc_IBUF_11),
    .O(state_FSM_FFd10_19),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd9 (
    .CLK(clk_BUFGP),
    .I(state_FSM_FFd10_19),
    .SRST(reset_sinc_IBUF_11),
    .O(state_FSM_FFd9_31),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd8 (
    .CLK(clk_BUFGP),
    .I(state_FSM_FFd9_31),
    .SRST(reset_sinc_IBUF_11),
    .O(state_FSM_FFd8_30),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd7 (
    .CLK(clk_BUFGP),
    .I(state_FSM_FFd8_30),
    .SRST(reset_sinc_IBUF_11),
    .O(state_FSM_FFd7_29),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd6 (
    .CLK(clk_BUFGP),
    .I(state_FSM_FFd7_29),
    .SRST(reset_sinc_IBUF_11),
    .O(state_FSM_FFd6_28),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd5 (
    .CLK(clk_BUFGP),
    .I(state_FSM_FFd6_28),
    .SRST(reset_sinc_IBUF_11),
    .O(state_FSM_FFd5_27),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  state_FSM_Out21 (
    .ADR0(state_FSM_FFd1_18),
    .ADR1(state_FSM_FFd3_23),
    .O(resultadoS_0_OBUF_14)
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  state_FSM_Out11 (
    .ADR0(state_FSM_FFd2_22),
    .ADR1(state_FSM_FFd4_25),
    .O(resultadoS_1_OBUF_15)
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  state_FSM_Out51 (
    .ADR0(state_FSM_FFd1_18),
    .ADR1(state_FSM_FFd2_22),
    .O(solicitar_direccionS_OBUF_17)
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \state_FSM_FFd4-In1  (
    .ADR0(datos_iguales_IBUF_8),
    .ADR1(state_FSM_FFd5_27),
    .O(\state_FSM_FFd4-In )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \state_FSM_FFd3-In1  (
    .ADR0(datos_iguales_IBUF_8),
    .ADR1(state_FSM_FFd5_27),
    .O(\state_FSM_FFd3-In )
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  state_FSM_Out4_SW0 (
    .ADR0(state_FSM_FFd11_20),
    .ADR1(state_FSM_FFd1_18),
    .ADR2(state_FSM_FFd10_19),
    .O(N2)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  state_FSM_Out4 (
    .ADR0(state_FSM_FFd9_31),
    .ADR1(state_FSM_FFd2_22),
    .ADR2(state_FSM_FFd12_21),
    .ADR3(N2),
    .O(write_dato_controlS_OBUF_36)
  );
  X_BUF   datos_iguales_IBUF (
    .I(datos_iguales),
    .O(datos_iguales_IBUF_8)
  );
  X_BUF   reset_sinc_IBUF (
    .I(reset_sinc),
    .O(reset_sinc_IBUF_11)
  );
  X_ZERO   XST_GND (
    .O(N5)
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  state_FSM_Out31 (
    .ADR0(state_FSM_FFd8_30),
    .ADR1(state_FSM_FFd12_21),
    .ADR2(state_FSM_FFd11_20),
    .ADR3(state_FSM_FFd10_19),
    .O(state_FSM_Out3)
  );
  X_MUX2   state_FSM_Out3_f5 (
    .IA(state_FSM_Out3),
    .IB(N5),
    .SEL(state_FSM_FFd9_31),
    .O(wS_OBUF_34)
  );
  X_IPAD   clk_34 (
    .PAD(clk)
  );
  X_IPAD   datos_iguales_35 (
    .PAD(datos_iguales)
  );
  X_OPAD   realizar_ComparacionS_36 (
    .PAD(realizar_ComparacionS)
  );
  X_IPAD   reset_sinc_37 (
    .PAD(reset_sinc)
  );
  X_OPAD   \resultadoS<0>  (
    .PAD(resultadoS[0])
  );
  X_OPAD   \resultadoS<1>  (
    .PAD(resultadoS[1])
  );
  X_OPAD   solicitar_direccionS_40 (
    .PAD(solicitar_direccionS)
  );
  X_OPAD   wS_41 (
    .PAD(wS)
  );
  X_OPAD   write_dato_controlS_42 (
    .PAD(write_dato_controlS)
  );
  X_CKBUF   \clk_BUFGP/BUFG  (
    .I(\clk_BUFGP/IBUFG_2 ),
    .O(clk_BUFGP)
  );
  X_CKBUF   \clk_BUFGP/IBUFG  (
    .I(clk),
    .O(\clk_BUFGP/IBUFG_2 )
  );
  X_OBUF   realizar_ComparacionS_OBUF (
    .I(state_FSM_FFd6_28),
    .O(realizar_ComparacionS)
  );
  X_OBUF   resultadoS_0_OBUF (
    .I(resultadoS_0_OBUF_14),
    .O(resultadoS[0])
  );
  X_OBUF   resultadoS_1_OBUF (
    .I(resultadoS_1_OBUF_15),
    .O(resultadoS[1])
  );
  X_OBUF   solicitar_direccionS_OBUF (
    .I(solicitar_direccionS_OBUF_17),
    .O(solicitar_direccionS)
  );
  X_OBUF   wS_OBUF (
    .I(wS_OBUF_34),
    .O(wS)
  );
  X_OBUF   write_dato_controlS_OBUF (
    .I(write_dato_controlS_OBUF_36),
    .O(write_dato_controlS)
  );
  X_ONE   NlwBlock_MaquinaEstados_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_MaquinaEstados_GND (
    .O(GND)
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

