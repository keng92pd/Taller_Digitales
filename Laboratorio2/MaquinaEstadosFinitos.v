`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:57:56 08/23/2013 
// Design Name: 
// Module Name:    MaqEstados 
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
module MaquinaEstadosFinitos(clk, reset, time_expired, sensor, walk_request, lucesSalida, WR_requestSalida, 
						start_timerSalida,  intervaloSalida, estadoSalida, reprogramSincronico);
						//Luces[0] es gm
						//Luces[1] es ym
						//Luces[2] es rm
						//Luces[3] es gs
						//Luces[4] es ys
						//Luces[5] es rs
						//Luces[6] es walk
input clk;
input reset;
input time_expired;
input sensor;
input walk_request;
input reprogramSincronico;
reg [6:0] luces;
reg WR_request, start_timer;
reg [4:0] state, next_state;
reg [1:0] intervalo; 
output [6:0] lucesSalida;
output WR_requestSalida;
output start_timerSalida;
output [4:0] estadoSalida;

output [1:0] intervaloSalida;
//Por maquina de Moore


//Highly encoded
parameter [4:0]
s0 = 5'b00000,
s1 = 5'b00001,
s2 = 5'b00010,
s3 = 5'b00011,
s4 = 5'b00100,
s5 = 5'b00101,
s6 = 5'b00110,
s61 = 5'b11000,
s7 = 5'b00111,
s71 = 5'b11001,
s8 = 5'b01000,
s9 = 5'b01001,
s10 = 5'b01010,
s11 = 5'b01011,
s12 = 5'b01100,
s13 = 5'b01101,
s14 = 5'b01110,
s15 = 5'b01111,
s16 = 5'b10000,
s17 = 5'b10001,
s18 = 5'b10010,
s19 = 5'b10011,
s20 = 5'b10100, 
s21 = 5'b10101,
s22 = 5'b10110,
s23 = 5'b10111,
s24 = 5'b11010,
s25 = 5'b11011;

always@(state or time_expired or sensor or walk_request)
begin
next_state=s0;
case(state)
s0: next_state = s1; 
s1: next_state = s2; 
s2: if (time_expired==0) next_state = s2; else next_state = s3; 
s3: if (sensor==1) next_state = s4; else next_state = s5; 
s4: next_state = s61; 
s5: next_state = s6; 
s6: next_state = s7;
s61: next_state = s71;
s7: if (time_expired==0) next_state = s7; else next_state = s8; 
s71: if (time_expired==0) next_state = s71; else next_state = s8;
s8: next_state = s9; 
s9: next_state = s10; 
s10: next_state = s11;  
s11: if (time_expired==0) next_state = s11; else next_state = s12; 
s12: if (walk_request==1) next_state = s13; else next_state = s16; 
s13: next_state = s14; 
s14: next_state = s15; 
s15: if (time_expired==0) next_state = s15; else next_state = s0; 
s16: next_state = s17; 
s17: next_state = s18; 
s18: if (time_expired==0) next_state = s18; else next_state = s19; 
s19: if (sensor==0) next_state = s23; else next_state = s20; 
s20: next_state = s21; 
s21: next_state = s22; 
s22: if (time_expired==0) next_state = s22; else next_state = s23; 
s23: next_state = s24;
s24: next_state = s25;
s25: if (time_expired==0) next_state = s25; else next_state = s0; 
default: next_state=s0; 
endcase
end

always@(state)
begin
WR_request = 1'b0;
case (state)
s0: begin luces = 7'b1000010; intervalo = 2'b00; start_timer = 1'b0; end
s1: begin start_timer = 1'b1; intervalo = 2'b00; luces = 7'b1000010; end
s2: begin start_timer = 1'b1; intervalo = 2'b00; luces = 7'b1000010; end
s3: begin start_timer = 1'b0; intervalo = 2'b00; luces = 7'b1000010; end
s4: begin start_timer = 1'b0; intervalo = 2'b01; luces = 7'b1000010; end
s5: begin start_timer = 1'b0; intervalo = 2'b00; luces = 7'b1000010; end
s6: begin start_timer = 1'b1; intervalo = 2'b00; luces = 7'b1000010; end
s61: begin start_timer = 1'b1; intervalo = 2'b01; luces = 7'b1000010; end
s7: begin start_timer = 1'b1; intervalo = 2'b00; luces = 7'b1000010; end
s71: begin start_timer = 1'b1; intervalo = 2'b01; luces = 7'b1000010; end
s8: begin start_timer = 1'b0; intervalo = 2'b00; luces = 7'b0100010; end
s9: begin start_timer = 1'b0; intervalo = 2'b10; luces = 7'b0100010; end
s10: begin start_timer = 1'b1; intervalo = 2'b10; luces = 7'b0100010; end
s11: begin start_timer = 1'b1; intervalo = 2'b10; luces = 7'b0100010; end
s12: begin start_timer = 1'b0; intervalo = 2'b10; luces = 7'b0100010; end
s13: begin start_timer = 1'b0; intervalo = 2'b01; luces = 7'b0010011; end
s14: begin start_timer = 1'b1; WR_request = 1'b1; luces = 7'b0010011; intervalo = 2'b01; end
s15: begin start_timer = 1'b1; luces = 7'b0010011; intervalo = 2'b01; end
s16: begin start_timer = 1'b0; luces = 7'b0011000; intervalo = 2'b00; end
s17: begin start_timer = 1'b1; luces = 7'b0011000; intervalo = 2'b00; end
s18: begin start_timer = 1'b1; luces = 7'b0011000; intervalo = 2'b00; end
s19: begin start_timer = 1'b0; luces = 7'b0011000; intervalo = 2'b00; end
s20: begin start_timer = 1'b0; luces = 7'b0011000; intervalo = 2'b01; end
s21: begin start_timer = 1'b1; luces = 7'b0011000; intervalo = 2'b01; end
s22: begin start_timer = 1'b1; luces = 7'b0011000; intervalo = 2'b01; end
s23: begin start_timer = 1'b0; luces = 7'b0010100; intervalo = 2'b10; end
s24: begin start_timer = 1'b1; luces = 7'b0010100; intervalo = 2'b10; end
s25: begin start_timer = 1'b1; luces = 7'b0010100; intervalo = 2'b10; end
default: begin luces = 7'b1000010; WR_request = 1'b0; intervalo = 2'b00; start_timer = 1'b0; end
endcase
end

//Actualizacion del estado
always@(posedge clk)
begin
	if (reset == 1'b1 || reprogramSincronico == 1'b1)
		state <= s0;
	else
		state <= next_state;
end


assign lucesSalida = luces;
assign WR_requestSalida = WR_request;
assign start_timerSalida = start_timer;
assign intervaloSalida = intervalo;
assign estadoSalida = state;

endmodule

