`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:55:07 08/30/2013 
// Design Name: 
// Module Name:    Parametros_Temporales 
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
module ParametrosTemporales(
    input clk,
    input [1:0] time_parameter_selector,
    input [3:0] time_value,
    input reprogram_sincrono,
    input [1:0] intervalo,
	 input reset_sincrono,
    output [3:0] valor
    );
	
reg [3:0] tbase;
reg [3:0] tyel;
reg [3:0] text;
reg [3:0] valor_salida;

initial
begin
valor_salida = 4'b0110;
tbase = 4'b0110;
text = 4'b0011;
tyel = 4'b0010;
end

always@(posedge clk)begin
	if (time_parameter_selector == 2'b00 && reprogram_sincrono)
		tbase <= time_value;	
	if (reset_sincrono)
		tbase <= 4'b0110;
end

always@(posedge clk)begin
	if (time_parameter_selector == 2'b01 && reprogram_sincrono)
		text <= time_value;
	if (reset_sincrono)
		text <= 4'b0011;
end

always@(posedge clk)begin
	if (time_parameter_selector == 2'b10 && reprogram_sincrono)
		tyel <= time_value;
	if (reset_sincrono)
		tyel <= 4'b0010;
	
end
	
always @(intervalo or tbase or text or tyel)
begin
	valor_salida = 2'b00;
	case (intervalo)
		2'b00: valor_salida = tbase;	
		2'b01: valor_salida = text;
		2'b10: valor_salida = tyel;
		default:;
	endcase
end	

assign valor = valor_salida;

endmodule
