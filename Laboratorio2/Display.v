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
module Display(clk, Estado, Sensor, WalkRequest, Numero, TimeParameterSelector, DisplayS, S, tiempoTranscurrido, punto);
	input clk;
	input [4:0] Estado;
	input Sensor;
	input WalkRequest;
   input [3:0] Numero;
	input [1:0] TimeParameterSelector;
	reg [3:0] Display;
	output [3:0] DisplayS;
	input [3:0] tiempoTranscurrido;
   output reg [6:0] S;
	output reg punto;
	reg [1:0] ultimaLectura;
	 
always @(posedge clk)
begin
	if (TimeParameterSelector != 2'b11)begin
	case (ultimaLectura)
	 2'b00:
	 begin
	 ultimaLectura <= 2'b01;
	 Display <= 4'b1011;
	 punto <= 1'b0;
    case (Numero)
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
	2'b01:
	begin
		ultimaLectura <= 2'b10;
		Display <= 4'b0111;
		punto <= 1'b0;
		case (TimeParameterSelector)
			2'b00: S <= 7'b1000000;
			2'b01: S <= 7'b1111001;
			2'b10: S <= 7'b0100100;
		default: S <= 7'b1000000;
		endcase
	end

	2'b10:
	begin
		ultimaLectura <= 2'b11;
		Display <= 4'b1101;
		punto <= 1'b0;
		case (Sensor)
			2'b0: S <= 7'b1000000;
		default: S <= 7'b1111001;
		endcase
	end
	
	default:
	begin
		ultimaLectura <= 2'b00;
		Display <= 4'b1110;
		punto <= 1'b0;
		case (WalkRequest)
			2'b0: S <= 7'b1000000;
		default: S <= 7'b1111001;
		endcase
	end
	
	endcase
end
else
begin
	case (ultimaLectura)
	 2'b00:
	 begin
	 ultimaLectura <= 2'b01;
	 Display <= 4'b1101;
	 punto <= 1'b1;
	 	case (Estado)
	   5'b00000: S <= 7'b1000000;
      5'b00001: S <= 7'b1000000;
		5'b00010: S <= 7'b1000000;
		5'b00011: S <= 7'b1000000;
		5'b00100: S <= 7'b1000000;
		5'b00101: S <= 7'b1000000;
		5'b00110: S <= 7'b1000000;
		5'b00111: S <= 7'b1000000;
		5'b01000: S <= 7'b1000000;
		5'b01001: S <= 7'b1000000;
		5'b01010: S <= 7'b1111001;
      5'b01011: S <= 7'b1111001;
		5'b01100: S <= 7'b1111001;
		5'b01101: S <= 7'b1111001;
		5'b01110: S <= 7'b1111001; 
		5'b01111: S <= 7'b1111001;
		5'b10000: S <= 7'b1111001;
		5'b10001: S <= 7'b1111001;
		5'b10010: S <= 7'b1111001;
		5'b10011: S <= 7'b1111001;	
      default: S <= 7'b0100100;
		endcase
	 end
	2'b01:
 	begin
		ultimaLectura <= 2'b10;
		Display <= 4'b1110;
		punto <= 1'b0;
		case (Estado)
	   5'b00000: S <= 7'b1000000;
      5'b00001: S <= 7'b1111001;
		5'b00010: S <= 7'b0100100;
		5'b00011: S <= 7'b0110000;
		5'b00100: S <= 7'b0011001;
		5'b00101: S <= 7'b0010010;
		5'b00110: S <= 7'b0000010;
		5'b00111: S <= 7'b1111000;
		5'b01000: S <= 7'b0000000;
		5'b01001: S <= 7'b0011000;
		5'b01010: S <= 7'b1000000;
      5'b01011: S <= 7'b1111001;
		5'b01100: S <= 7'b0100100;
		5'b01101: S <= 7'b0110000;
		5'b01110: S <= 7'b0011001; 
		5'b01111: S <= 7'b0010010;
		5'b10000: S <= 7'b0000010;
		5'b10001: S <= 7'b1111000;
		5'b10010: S <= 7'b0000000;
		5'b10011: S <= 7'b0011000;	
		5'b10100: S <= 7'b1000000;
      5'b10101: S <= 7'b1111001;
		5'b10110: S <= 7'b0100100;
		5'b10111: S <= 7'b0110000;
		5'b11000: S <= 7'b0011001;
		5'b11001: S <= 7'b0010010;
		5'b11010: S <= 7'b0000010;	
      default: S <= 7'b1111000;		
		endcase		
		
		
	end
	 2'b10:
	 begin
	 ultimaLectura <= 2'b11;
	 Display <= 4'b0111;
	 punto <= 1'b1;
		case (tiempoTranscurrido)
	   4'b0000: S <= 7'b1000000;
      4'b0001: S <= 7'b1000000;
		4'b0010: S <= 7'b1000000;
		4'b0011: S <= 7'b1000000;
		4'b0100: S <= 7'b1000000;
		4'b0101: S <= 7'b1000000;
		4'b0110: S <= 7'b1000000;
		4'b0111: S <= 7'b1000000;
		4'b1000: S <= 7'b1000000;
		4'b1001: S <= 7'b1000000;
      default: S <= 7'b1111001;
		endcase
	end
	default:
	begin
		ultimaLectura <= 2'b00;
		Display <= 4'b1011;
		punto <= 1'b0;
		case (tiempoTranscurrido)
	   4'b0000: S <= 7'b1000000;
      4'b0001: S <= 7'b1111001;
		4'b0010: S <= 7'b0100100;
		4'b0011: S <= 7'b0110000;
		4'b0100: S <= 7'b0011001;
		4'b0101: S <= 7'b0010010;
		4'b0110: S <= 7'b0000010;
		4'b0111: S <= 7'b1111000;
		4'b1000: S <= 7'b0000000;
		4'b1001: S <= 7'b0011000;
		4'b1010: S <= 7'b1000000;
      4'b1011: S <= 7'b1111001;
		4'b1100: S <= 7'b0100100;
		4'b1101: S <= 7'b0110000;
		4'b1110: S <= 7'b0011001;   
      default: S <= 7'b0010010;		
		endcase		
	end
	endcase
end
end

assign DisplayS = Display;
endmodule
