`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:54:00 10/04/2013 
// Design Name: 
// Module Name:    MemoriaVelocidad 
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
module MemoriaVelocidad( input reset,
    input WE,
    input [4:0] Vxin,
    input [4:0] Vyin,
    output [4:0] Vxout,
    output [4:0] Vyout
    );

reg [4:0] almacenamientoVx;
reg [4:0] almacenamientoVy;

always@(posedge WE or posedge reset)
begin 
	if (reset)
	begin 
	almacenamientoVx<=1;
	almacenamientoVy<=1;
	end
	else
	begin
	almacenamientoVx<=Vxin;
	almacenamientoVy<=Vyout;
	end
end

assign Vxout = almacenamientoVx;
assign Vyout = almacenamientoVy;

endmodule