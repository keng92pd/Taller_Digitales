`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:47:06 09/05/2013 
// Design Name: 
// Module Name:    Display 
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
module Display(clk, write_enable, resultado, direccion, datos, DisplayS, SS, puntoS, LEDSlecturaEscrituraS, 
	LEDSExitoFalloS);
	input clk;
	input [3:0] direccion;
	input [3:0] datos;
	input write_enable;
	input [1:0] resultado;
	output [3:0] DisplayS;
   output [6:0] SS;
	output puntoS;
	output [1:0] LEDSlecturaEscrituraS; 
	output [1:0] LEDSExitoFalloS;	
	
	reg [3:0] Display;
   reg [6:0] S;
	reg punto;
	reg [1:0] LEDSlecturaEscritura; 
	reg [1:0] LEDSExitoFallo;
	
	reg ultimaLectura;

always @ (write_enable) begin
	if (write_enable)
		LEDSlecturaEscritura = 2'b10;
	else
		LEDSlecturaEscritura = 2'b01;
end

always @ (resultado) begin
	if (resultado == 2'b00)
		LEDSExitoFallo = 2'b00;
	else if (resultado == 2'b01)
		LEDSExitoFallo = 2'b01;
	else
		LEDSExitoFallo = 2'b10;
end
	 
always @(posedge clk)
begin
Display <= 4'b0000;
	case (ultimaLectura)
	 2'b0:
	 begin
	 ultimaLectura <= 2'b1;
	 Display <= 4'b1011;
	 punto <= 1'b0;
    case (direccion)
      4'h0: S <= 7'b1000000;
      4'h1: S <= 7'b1111001;
      4'h2: S <= 7'b0100100;
      4'h3: S <= 7'b0110000;
      4'h4: S <= 7'b0011001;
      4'h5: S <= 7'b0010010;
      4'h6: S <= 7'b0000010;
      4'h7: S <= 7'b1111000;
      4'h8: S <= 7'b0000000;
      4'h9: S <= 7'b0011000;
      4'hA: S <= 7'b0001000;
      4'hB: S <= 7'b0000011;
      4'hC: S <= 7'b1000110;
      4'hD: S <= 7'b0100001;
      4'hE: S <= 7'b0000110;
      4'hF: S <= 7'b0001110;
      default: S <= 7'b0110110;
		endcase
	end
	default:
	begin
	 ultimaLectura <= 2'b0;
	 Display <= 4'b1101;
	 punto <= 1'b0;
    case (datos)
      4'h0: S <= 7'b1000000;
      4'h1: S <= 7'b1111001;
      4'h2: S <= 7'b0100100;
      4'h3: S <= 7'b0110000;
      4'h4: S <= 7'b0011001;
      4'h5: S <= 7'b0010010;
      4'h6: S <= 7'b0000010;
      4'h7: S <= 7'b1111000;
      4'h8: S <= 7'b0000000;
      4'h9: S <= 7'b0011000;
      4'hA: S <= 7'b0001000;
      4'hB: S <= 7'b0000011;
      4'hC: S <= 7'b1000110;
      4'hD: S <= 7'b0100001;
      4'hE: S <= 7'b0000110;
      4'hF: S <= 7'b0001110;
      default: S <= 7'b0110110;
		endcase
	end
	endcase
end

	assign DisplayS = Display;
   assign SS = S;
	assign puntoS = punto;
	assign LEDSlecturaEscrituraS = LEDSlecturaEscritura; 
	assign LEDSExitoFalloS = LEDSExitoFallo;
	
endmodule
