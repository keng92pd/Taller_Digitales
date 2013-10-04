`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:14:58 10/04/2013 
// Design Name: 
// Module Name:    MemoriaColision 
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
module MemoriaColision(
    input reset,
    input WE,
    input [2:0] tipoColEntrada,
    output [2:0] tipoColSalida
    );

reg [2:0] almacenamiendo;

always@(WE or tipoColEntrada or reset)
begin
	if (reset) almacenamiendo <= 3'b000;
	if (WE) 
	begin 
		if (tipoColEntrada==1) almacenamiendo[0] <= 1'b1;
		if (tipoColEntrada==2) almacenamiendo[1] <= 1'b1;
	end
end

assign tipoColSalida = almacenamiendo;

endmodule
