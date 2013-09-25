`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:26:14 09/20/2013 
// Design Name: 
// Module Name:    DatoActual 
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
module DatoActual(input w, input [3:0] dato_por_guardar, output [3:0] dato_guardado);
  
reg [3:0] dato; 

always @ (dato_por_guardar or w)
begin
		if (w == 1'b1)  
			dato = dato_por_guardar;	
end

assign dato_guardado = dato;
endmodule
