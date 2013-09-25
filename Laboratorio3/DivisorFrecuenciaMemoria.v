`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:53:00 09/23/2013 
// Design Name: 
// Module Name:    DivisorFrecuenciaMemoria 
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
module DivisorFrecuenciaMemoria(clk, senalSalida); //Se divide un clk de 50MHz en señales periodicas de 1Hz
input clk; //El clk de 50 MHz
output senalSalida; //Salida de un clk
reg segundero; //Registro que permite la manipulación de la salida
reg [24:0] contador; //Registro que permite contar los flancos positivos de clk

initial
begin
segundero = 0;
contador = 0;
end

always @ (posedge clk)
begin 
	if(contador == 25) //Verifica si ya se alcanzó medio segundo
		begin
		if (segundero==1'b0) 
			segundero <= 1'b1; //Si el clk de 1Hz estaba en 0 se cambia a 1
			else
			segundero <= 1'b0; //Si el clk de 1Hz estaba en 1 se cambia a 0
		contador <= 0; // reinicia el contador
		end
	else 
		contador <= contador+1; // aumenta el contador en uno
end
assign senalSalida = segundero;

endmodule
