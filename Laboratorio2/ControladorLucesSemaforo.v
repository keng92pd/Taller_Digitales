`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:47:41 08/31/2013 
// Design Name: 
// Module Name:    ControladorLucesSemaforo 
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
module ControladorLucesSemaforo(Reset, Sensor, Walk_Request, Reprogram, Time_Parameter_Selector,
											Time_Value, clk, luces);
input Reset;
input Sensor;
input Walk_Request;
input Reprogram;
input [1:0] Time_Parameter_Selector;
input [3:0] Time_Value;
input clk;
output [6:0] luces;
wire [6:0] lucesRegister;
wire clock_1_Hz;
wire start_timer;
wire time_expired;
wire WR_Valor;
wire [3:0] senalesSincronicas; /*
Estas senales deben mantener el siguiente orden
reset_asincrono, sensor_asincrono, walk_request_asincrono, reprogram_asincrono
*/
wire WR_Reset;
wire [1:0] Intervalo;
wire [3:0] Valor;


DivisorFrecuencia divisor(clk, clock_1_Hz);
Timer temporizador(Valor, clock_1_Hz, start_timer, time_expired);
Sincronizador sincronizador(clk, {Reset, Sensor, Walk_Request, Reprogram}, senalesSincronicas);
WalkRegister registroPeaton(clk, senalesSincronicas[2], WR_Reset, WR_Valor, senalesSincronicas[0]);
ParametrosTemporales parametros (clk, Time_Parameter_Selector, Time_Value, senalesSincronicas[3], 
							Intervalo, senalesSincronicas[0], Valor);						
MaquinaEstadosFinitos maqEstados(clk, senalesSincronicas[0], time_expired, senalesSincronicas[1], 
							WR_Valor, lucesRegister, WR_Reset, start_timer,  Intervalo); 
							
assign luces = lucesRegister;

endmodule
