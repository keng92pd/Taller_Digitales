`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:41:19 08/30/2013 
// Design Name: 
// Module Name:    Timer 
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
module Timer(valor, segundero, iniciar_timer, tiempo_expiroSalida, tiempoTranscurridoS);
/*
Módulo que permite contar el tiempo en segundos para la máquina de estados
*/
input [3:0] valor;
input segundero;
input iniciar_timer;
output tiempo_expiroSalida;
output [3:0] tiempoTranscurridoS;
reg tiempo_expiro;
reg [3:0] tiempoTranscurrido;

/*
Lógica secuencial
*/
always @ (negedge iniciar_timer or negedge segundero)
begin
//Para flanco negativo de iniciar_timer
	if (iniciar_timer == 1'b0)
		tiempoTranscurrido <= 4'b0000; //Se reinicia el contador de segundos
//Para flanco negativo de segundero
	else 
		tiempoTranscurrido <= tiempoTranscurrido+1'b1; //Se cuenta un segundo cada flanco negativo de reloj
end

/*
Lógica combinacional
*/
always @ (tiempoTranscurrido or valor) begin
	if (tiempoTranscurrido >= valor)
		tiempo_expiro = 1'b1; //Se envía la señal de que el tiempo ha expirado
	else 
		tiempo_expiro = 1'b0; //Se mantiene la señal de tiempo expirado en bajo
end

assign tiempo_expiroSalida = tiempo_expiro;
assign tiempoTranscurridoS = tiempoTranscurrido;

endmodule
