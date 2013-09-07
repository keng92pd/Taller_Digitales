`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:24:17 08/30/2013 
// Design Name: 
// Module Name:    Sincronizador 
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
module Sincronizador(
    input clk, 
    input [3:0] senales_asincronas, //reset_asincrono,sensor_asincrono,walk_request_asincrono,reprogram_asincrono
	 output [3:0] senales_sincronas //reset_sincrono,sensor_sincrono,walk_request_sincrono,reprogram_sincrono
	 );
/*
Este módulo se encarga de sincronizar cada señal asincrónica para ser leída en flanco positivo de reloj	 
*/

reg [3:0] opcion_selecionada; 
reg [3:0] salida;
wire resetAsincronico;
wire sensorAsincronico;
wire walkRequestAsincronico;
wire reprogramAsincronico;
Debounce antirrebote1 (senales_asincronas[0], clk, senales_asincronas[0], resetAsincronico);
Debounce antirrebote2 (senales_asincronas[0], clk, senales_asincronas[1], sensorAsincronico);
Debounce antirrebote3 (senales_asincronas[0], clk, senales_asincronas[2], walkRequestAsincronico);
Debounce antirrebote4 (senales_asincronas[0], clk, senales_asincronas[3], reprogramAsincronico);

always@(senales_asincronas)
begin
	opcion_selecionada = {reprogramAsincronico, walkRequestAsincronico,
								sensorAsincronico, resetAsincronico}; //Si alguna señal cambia, se guarda el cambio
end

always@(negedge clk)
begin
	salida <= opcion_selecionada; //Se traslada a la salida el valor guardado en el cambio
end

assign senales_sincronas = salida;

endmodule
