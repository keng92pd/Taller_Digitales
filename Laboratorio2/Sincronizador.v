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

reg [2:0] opcion_selecionada; //0 = ninguna, 1 = reset, 2 = sensor, 3 = walk_request, 4 = reprogram
reg [3:0] salida;

always@(senales_asincronas)
begin
	case (senales_asincronas)
		4'b1000:opcion_selecionada = 3'b001;
		4'b0100:opcion_selecionada = 3'b010;
		4'b0010:opcion_selecionada = 3'b011;
		4'b0001:opcion_selecionada = 3'b100;
		default: opcion_selecionada = 3'b000;
	endcase
end

always@(negedge clk)
begin
	case (opcion_selecionada) 
		3'b001: salida <= 4'b1000;
		3'b010: salida <= 4'b0100;
		3'b011: salida <= 4'b0010;
		3'b100: salida <= 4'b0001;
		default: salida <= 4'b0000;
	endcase
end

assign senales_sincronas = salida;

endmodule
