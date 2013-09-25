`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:40:07 09/21/2013 
// Design Name: 
// Module Name:    Comparador 
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
module Comparador(input [3:0] dato_guardado, input [3:0] dato_leido, 
						input realizar_comparacion, output datos_iguales);

reg resultado_comparacion;

always @ (posedge realizar_comparacion)
begin
if (dato_guardado == dato_leido)
	resultado_comparacion = 1'b1;
else
	resultado_comparacion = 1'b0;
end

assign datos_iguales = resultado_comparacion;
endmodule
