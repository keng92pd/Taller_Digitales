`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:34:12 09/20/2013 
// Design Name: 
// Module Name:    Contador4Bits 
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
module Contador4Bits(
    input solicitar_direccion,
	 input reset_sinc,
    output [3:0] direccion_siguiente
    );

reg [3:0] direccion;

initial
direccion = 4'b0000;

always @ (posedge reset_sinc or posedge solicitar_direccion)
begin
	if (reset_sinc)
		direccion = 4'b0000;
	else
		direccion = direccion + 1'b1;
end


assign direccion_siguiente = direccion;
endmodule
