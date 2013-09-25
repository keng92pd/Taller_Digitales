`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:19:27 08/30/2013 
// Design Name: 
// Module Name:    DivisorFrecuencia 
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
/*
Este módulo toma como entrada un reloj de 50 MHz y tiene como salida
un reloj de 1Hz
*/ 
module DivisorFrecuencia(reloj, senalSalida, reset_Sincronico); //Se divide un reloj de 50MHz en señales periodicas de 1Hz
input reloj; //El reloj de 50 MHz
input reset_Sincronico; //Reset del módulo
output senalSalida; //Salida de un reloj
reg segundero; //Registro que permite la manipulación de la salida
reg [24:0] contador; //Registro que permite contar los flancos positivos de reloj

initial
begin
segundero = 0;
contador = 0;
end
always @ (posedge reloj)
begin 
	if(contador == 5000000) //Verifica si ya se alcanzó medio segundo
		begin
		if (segundero==1'b0) 
			segundero <= 1'b1; //Si el reloj de 1Hz estaba en 0 se cambia a 1
			else
			segundero <= 1'b0; //Si el reloj de 1Hz estaba en 1 se cambia a 0
		contador <= 0; // reinicia el contador
		end
	else 
		contador <= contador+1; // aumenta el contador en uno
	if (reset_Sincronico) //Si se da un reset del módulo
	begin
		segundero <= 1'b0; //Se reinicia el reloj de 1Hz
		contador <= 0;	//Se reinicia la cuenta
	end
end



assign senalSalida = segundero;

endmodule 