`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:15:00 09/22/2013 
// Design Name: 
// Module Name:    Laboratorio3 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Laboratorio3(input clk, input [1:0] interruptor, input reset,
		inout [15:0] datoSalida, output [17:0] direccionS, output WE , output [3:0] DisplayS,
		output [6:0] SieteSegmentosS, output puntoS, output [1:0] LEDSlecturaEscrituraSalida,
		output [1:0] LEDsExitoFalloS, output [3:0] ceros
		);

wire clk5Hz;
reg [3:0] datos;
wire [3:0] datosWire;
wire [3:0] direccion;
wire write_enable;

//Display reg
wire clkDisplay;
wire [1:0] resultado;
wire [3:0] Display;
wire [6:0] SieteSegmentos;
wire punto;
wire [1:0] LEDsLecturaEscritura;
wire [1:0] LEDsExitoFallo;

//Registros de salida
reg [17:0] DireccionesConTodasSalidas;
reg [15:0] DatosConTodasSalidas;
	
always @ (direccion or datosWire)
begin 
	DireccionesConTodasSalidas = 18'b000000000000000000;
	DatosConTodasSalidas = 16'b0000000000000000;
	DireccionesConTodasSalidas[3:0] = direccion;
	DatosConTodasSalidas[3:0] = datosWire;
end

always @ (DatosConTodasSalidas)
begin
	datos = DatosConTodasSalidas[3:0];
end
	
assign datosWire = datos;
	
DivisorFrecuencia5Hz DivisorFrecuenciaFSM (clk, clk5Hz);
DivisorFrecuenciaDisplay DivisorFrecuenciaDis(clk, clkDisplay);

//DivisorFrecuenciaMemoria DivisorFrecuenciaMem (clk, clkMemoria);

ComprobadorDeMemoria Comprobador (clk5Hz, interruptor, reset, datosWire, direccion, write_enable, resultado); 
Display LEDS(clkDisplay, write_enable, resultado, direccion, datosWire, Display, SieteSegmentos, punto,
 LEDsLecturaEscritura, LEDsExitoFallo);


//MEMORIA memoriaRAM(write_enable, direccion, datos);
//MemoriaRAM memoriaRAM(clkMemoria, direccion, datos, 1'b0, write_enable, 1'b0);


//Display y LEDs

assign DisplayS = Display;
assign SieteSegmentosS = SieteSegmentos;
assign puntoS = punto;
assign LEDSlecturaEscrituraSalida = LEDsLecturaEscritura;
assign LEDsExitoFalloS = LEDsExitoFallo;

//Salida SRAM
assign datoSalida = DatosConTodasSalidas;
assign direccionS = DireccionesConTodasSalidas;
assign WE = write_enable;
assign ceros = 4'b0000;
endmodule
