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
module MaquinaEstados(input clk,  input reset_sinc, input datos_iguales, output write_dato_controlS,
 output wS, output realizar_ComparacionS, output [1:0] resultadoS, output solicitar_direccionS);


reg write_dato_control; 
reg write_memoria;
reg realizar_Comparacion;
reg [1:0] resultado;
reg [3:0] state;
reg [3:0] next_state;
reg solicitar_direccion;

//initial
//state = s0;

//Por maquina de Moore
//Highly encoded
parameter [3:0]
s0 = 5'b0000,
s1 = 5'b0001,
s2 = 5'b0010,
s3 = 5'b0011,
s4 = 5'b0100,
s5 = 5'b0101,
s6 = 5'b0110,
s7 = 5'b0111,
s8 = 5'b1000,
s9 = 5'b1001,
s10 = 5'b1010,
s11 = 5'b1011;

always@(state or datos_iguales)
begin
next_state=s0;
case(state)
s0: next_state = s1; 
s1: next_state = s2; 
s2: next_state = s3; 
s3: next_state = s4; 
s4: next_state = s5; 
s5: next_state = s6; 
s6: next_state = s7;
s7: if(datos_iguales == 1'b0) next_state = s8; else next_state = s10; 
s8: next_state = s9; 
s9: next_state = s0; 
s10: next_state = s11;  
s11: next_state = s0; 
endcase
end

always@(state)
begin
solicitar_direccion = 1'b0;
case (state)
s0: begin write_dato_control = 1; write_memoria = 0; resultado = 00; realizar_Comparacion = 1'b0;end
s1: begin write_dato_control = 1; write_memoria = 0; resultado = 00; realizar_Comparacion = 1'b0; end
s2: begin write_dato_control = 1; write_memoria = 0; resultado = 00; realizar_Comparacion = 1'b0; end
s3: begin write_dato_control = 1; write_memoria = 0; resultado = 00; realizar_Comparacion = 1'b0; end
s4: begin write_dato_control = 0; write_memoria = 0; resultado = 00; realizar_Comparacion = 1'b0; end
s5: begin write_dato_control = 0; write_memoria = 1; resultado = 00; realizar_Comparacion = 1'b0; end
s6: begin write_dato_control = 0; write_memoria = 1; resultado = 00; realizar_Comparacion = 1'b1; end
s7: begin write_dato_control = 0; write_memoria = 1; resultado = 00; realizar_Comparacion = 1'b0; end
s8: begin write_dato_control = 0; write_memoria = 1; resultado = 10; realizar_Comparacion = 1'b0; end 
s9:  begin write_dato_control = 1; write_memoria = 1; resultado = 10; realizar_Comparacion = 1'b0; 
		solicitar_direccion = 1'b1; end
s10: begin write_dato_control = 0; write_memoria = 1; resultado = 01; realizar_Comparacion = 1'b0; end 
default: begin write_dato_control = 1; write_memoria = 1; resultado = 01;  
		realizar_Comparacion = 1'b0; solicitar_direccion = 1'b1; end 
endcase
end

//Actualizacion del estado
always@(posedge clk)
begin
	if (reset_sinc == 1'b1)
		state <= s0;
	else
		state <= next_state;
end

assign write_dato_controlS = write_dato_control;
assign wS = write_memoria;
assign realizar_ComparacionS = realizar_Comparacion;
assign resultadoS = resultado; 
assign solicitar_direccionS = solicitar_direccion;

endmodule

