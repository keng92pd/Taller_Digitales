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
module DivisorFrecuencia(reloj, segunderoSalida);
//Se divide un reloj de 50Hz en señales periodicas de 1Hz
input reloj; 
output segunderoSalida;
reg segundero;
reg [21:0] contador;

initial
begin
contador = 22'b1001100010010110100000;
segundero = 1'b0;
end  

always @ (posedge reloj)
begin 
	if(contador == 22'b0000000000000000000000) 
		begin
		if (segundero==1'b0)
			segundero <= 1'b1; 
			else
			segundero <= 1'b0; 
			contador <= 22'b1001100010010110100000; // reinicia el contador
		end
		else 
		contador <= contador-1'b1; // disminuye contador
end

assign segunderoSalida = segundero;

endmodule 