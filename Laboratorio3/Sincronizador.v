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
    input [1:0] interruptor,
	 input reset,
	 output [1:0] interruptor_sinc,
	 output reset_sinc
	 );
/*
Este módulo se encarga de sincronizar cada señal asincrónica para ser leída en flanco positivo de reloj	 
*/
reg [1:0] interruptor_temporal;
reg reset_temporal;
reg [1:0] interruptor_salida; 
reg reset_salida;

always@(interruptor)
begin
	interruptor_temporal <= interruptor;
end

always@(posedge reset or negedge clk)
begin
	if (reset == 1'b1)
		reset_temporal <= 1'b1; 
	else
	begin
		interruptor_salida <= interruptor_temporal; //Se traslada a la salida el valor guardado en el cambio
		reset_salida <= reset_temporal;
		reset_temporal <= 1'b0;
	end
end

assign interruptor_sinc = interruptor_salida;
assign reset_sinc = reset_salida;

endmodule
