`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:14:41 09/21/2013 
// Design Name: 
// Module Name:    ComprobadorDeMemoria 
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
module ComprobadorDeMemoria(input clk5Hz, input [1:0] interruptor, input reset, inout wire [3:0]  datos, output [3:0] direccionS, 
	output write_enableS, output [1:0] resultadoS);
	

wire write_dato_control;
wire w;
wire realizar_Comparacion;
wire [1:0] resultado;
wire [1:0] interruptor_sinc;
wire reset_sinc; 
wire [3:0] dato_guardado;
wire [3:0] dato_leido;
wire [3:0] direccion_actual;
wire [3:0] datos_por_guardar;
wire datos_iguales;
wire solicitar_direccion;
//wire [3:0] datosIO;



Sincronizador SincronizadorFSML (clk5Hz, interruptor, reset, interruptor_sinc, reset_sinc);					
Comparador ComparadorFSM(dato_guardado, dato_leido, realizar_Comparacion, datos_iguales); 
Contador4Bits Contador(solicitar_direccion, reset_sinc, direccion_actual);
DatoActual DatoActualFSM(write_dato_control, datos_por_guardar, dato_guardado);
ManejoDirecciones ManejoDireccionesFSM(interruptor_sinc, datos_por_guardar, direccion_actual);
MaquinaEstados MaquinaEstadosFinitos(clk5Hz, reset_sinc, datos_iguales, write_dato_control,
	w, realizar_Comparacion, resultado, solicitar_direccion);
	
ModuloInOut InOut(datos, datos_por_guardar, dato_leido, w);
 
  
assign direccionS = direccion_actual;
assign write_enableS = w; 
assign resultadoS = resultado;

endmodule