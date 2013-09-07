`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:26:59 08/31/2013 
// Design Name: 
// Module Name:    Walk_Register 
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
 module WalkRegister(
	 input clk, 
    input WR_Sync,
    input WR_Reset,
    output WR_valor,
    input Reset_sincronico
    );
/*
Este módulo se encarga de guardar una señal cuándo un usuario ha solicitado paso peatonal
*/

reg valor_walk_actual;

initial
valor_walk_actual = 0;

always@(posedge clk)
begin
	if(WR_Reset || Reset_sincronico) valor_walk_actual <= 1'b0; //Si hay reset, se establece la señal en 0
	if(WR_Sync) valor_walk_actual <= 1'b1; //En caso de que el peatón haya presionado el botón, se pone en 1 esta señal
end

assign WR_valor = valor_walk_actual;

endmodule
