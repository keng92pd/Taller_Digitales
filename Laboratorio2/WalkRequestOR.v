`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:04:19 09/06/2013 
// Design Name: 
// Module Name:    WalkRequestOR 
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
module WalkRequestOR(
    input [1:0] WalkRequestE,
    output reg WalkRequestS
    );
 
always @(WalkRequestE)begin
	WalkRequestS = WalkRequestE[0] || WalkRequestE[1];
end
endmodule
