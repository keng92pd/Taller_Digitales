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
											Time_Value, clk, luces, DisplayS, SalidasDisplayS, punto);
input Reset;
input Sensor;
input [1:0] Walk_Request; 
input Reprogram;
input [1:0] Time_Parameter_Selector;
input [3:0] Time_Value;
input clk; 
output punto;
output [3:0] DisplayS;
output [6:0] SalidasDisplayS;
output [6:0] luces;
wire WalkRequest;
wire [3:0] Display;
wire [6:0] SalidasDisplay;
wire [6:0] lucesRegister;
wire clock_1_Hz;
wire clock_125_Hz;
wire start_timer;
wire time_expired;
wire WR_Valor;
wire [3:0] senalesSincronicas; /*
Estas senales deben mantener el siguiente orden
reset_sincrono, sensor_sincrono, walk_request_sincrono, reprogram_sincrono
*/
wire [3:0] tiempoTranscurrido;
wire [4:0] Estado;
wire WR_Reset;
wire [1:0] Intervalo;
wire [3:0] Valor;

WalkRequestOR WRor (Walk_Request, WalkRequest);
Display SieteSegmentos(clock_125_Hz, Estado, senalesSincronicas[1], WR_Valor, Time_Value, 
							Time_Parameter_Selector, Display, SalidasDisplay, tiempoTranscurrido, punto);
DivisorFrecuencia divisor(clk, clock_1_Hz, senalesSincronicas[0]);
divisor8ms divisor8ms(clk, clock_125_Hz, senalesSincronicas[0]);
Timer temporizador(Valor, clock_1_Hz, start_timer, time_expired, tiempoTranscurrido);
Sincronizador sincronizador(clk, {Reprogram, WalkRequest, Sensor, Reset}, senalesSincronicas);
WalkRegister registroPeaton(clk, senalesSincronicas[2], WR_Reset, WR_Valor, senalesSincronicas[0]);
ParametrosTemporales parametros (clk, Time_Parameter_Selector, Time_Value, senalesSincronicas[3], 
							Intervalo, senalesSincronicas[0], Valor);						
MaquinaEstadosFinitos maqEstados(clk, senalesSincronicas[0], time_expired, senalesSincronicas[1], 
							WR_Valor, lucesRegister, WR_Reset, start_timer,  Intervalo, Estado, senalesSincronicas[3]); 
							
assign luces = lucesRegister;
assign DisplayS = Display;
assign SalidasDisplayS = SalidasDisplay;
endmodule
