`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:25:28 09/20/2013 
// Design Name: 
// Module Name:    ModuloInOut 
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
module ModuloInOut(
    inout [3:0] InOut,
    input [3:0] In,
    output [3:0] Out,
    input WE
    );

	reg [3:0] a;
	reg [3:0] b;
	
	
	always@(InOut or In or WE)
	begin
		a <= 	In;
		b <= InOut;
	end
	
	assign InOut = (WE) ? 4'bzzzz:a;
	assign Out = b;
	
endmodule
