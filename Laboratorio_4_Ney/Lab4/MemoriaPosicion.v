`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:44:14 10/04/2013 
// Design Name: 
// Module Name:    MemoriaPosicion 
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
module MemoriaPosicion(
    input reset,
    input WE,
    input [9:0] Xin,
    input [8:0] Yin,
    output [9:0] Xout,
    output [8:0] Yout
    );

reg [9:0] almacenamientoX;
reg [8:0] almacenamientoY;

always@(posedge WE or posedge reset)
begin 
	if (reset)
	begin 
	almacenamientoX<=400;
	almacenamientoY<=300;
	end
	else
	begin
	almacenamientoX<=Xin;
	almacenamientoY<=Yin;
	end
end

assign Xout = almacenamientoX;
assign Yout = almacenamientoY;

endmodule
