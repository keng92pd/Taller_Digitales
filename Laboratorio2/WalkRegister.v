`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:26:59 08/31/2013 
// Design Name: 
// Module Name:    Walk_Register 
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
module WalkRegister(
	 input clk, 
    input WR_Sync,
    input WR_Reset,
    output WR_valor,
    input Reset_sincronico
    );

reg valor_walk_actual;

initial 
valor_walk_actual = 1'b0;

always@(posedge clk)
begin
	if(WR_Reset || Reset_sincronico) valor_walk_actual = 1'b0;
	else if(WR_Sync) valor_walk_actual = 1'b1;
end

assign WR_valor = valor_walk_actual;

endmodule
