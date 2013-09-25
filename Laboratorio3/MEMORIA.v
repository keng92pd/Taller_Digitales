`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:23:01 09/19/2013 
// Design Name: 
// Module Name:    MEMORIA 
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
module MEMORIA(
    input WR,
    input [3:0] ADDR,
    inout [3:0] dataBus
    );

	reg [3:0] mem [16:0];
	reg [3:0] a;
	reg [3:0] b;

	assign dataBus = b;

	always@(WR or ADDR or dataBus )
	begin 
			a = dataBus;
			if (dataBus == 4'b0010) a = 4'b1111;
			if (WR==1'b1) b = #150 mem[ADDR];
			else begin mem[ADDR] = #80 a; b = 4'bZZZZ; end
			
	end
	
endmodule
