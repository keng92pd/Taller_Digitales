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
module Timer(valor, segundero, iniciar_timer, tiempo_expiroSalida);
input [3:0] valor;
input segundero;
input iniciar_timer;
output tiempo_expiroSalida;
reg tiempo_expiro;
reg [3:0] tiempoTranscurrido;
wire segundero;

/*
initial
begin
	tiempoTranscurrido=4'b0000;
	tiempo_expiro = 1'b0;
end
*/

always @ (negedge iniciar_timer or negedge segundero)
begin
//Para flanco negativo de iniciar_timer
	if (iniciar_timer == 1'b0) tiempoTranscurrido = 4'b0000;
//Para flanco negativo de segundero
	else tiempoTranscurrido = tiempoTranscurrido+1;
end

always @ (tiempoTranscurrido or valor) begin
	if (tiempoTranscurrido == valor)
		tiempo_expiro = 1'b1;
	else 
		tiempo_expiro = 1'b0;
end

assign tiempo_expiroSalida = tiempo_expiro;

endmodule
