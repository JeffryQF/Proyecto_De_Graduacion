`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:17:49 09/04/2015 
// Design Name: 
// Module Name:    Seventh_Phase_M 
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
module Seventh_Phase_M
	//SINGLE PRECISION PARAMETERS
	# (parameter W_Sgf = 23)
	//DOUBLE PRECISION PARAMETERS
/* # (parameter W_Sgf = 52) */	
	(
	input wire clk,
	input wire rst,
	input wire load,
	input wire [1:0] round_mode,
	input wire [W_Sgf-1:0] Sgf_round_bits,
	input wire Sgn_X,
	input wire Sgn_Y,
	input wire [W_Sgf:0] Sgf_PR,
	output wire Sgn_Info,
	output wire [W_Sgf+1:0] Sgf_P_Round
    );


wire round_ok;
//wire Sgn_Info;
wire ctrl;

wire [W_Sgf+1:0] Sgf_add;
wire [W_Sgf+1:0] Sgf_mux;

wire [W_Sgf:0] One;

OR_Module #(.W(W_Sgf)) OR_info_reg (
    .Sgf_Round_Part(Sgf_round_bits), 
    .round_ok(round_ok)
    );

XOR_M Sgn_info_reg (
    .Sgn_X(Sgn_X), 
    .Sgn_Y(Sgn_Y), 
    .Sgn_Info(Sgn_Info)
    );

Deco_Round_Mult Rounding_Deco (
    .round_mode(round_mode), 
    .or_info(round_ok), 
    .xor_info(Sgn_Info), 
    .ctrl(ctrl)
    );


add_sub_carry_out #(.W(W_Sgf+1)) Sgf_Add_Cout (
    .op_mode(1'b0),  
    .Data_A(Sgf_PR), 
    .Data_B(One), 
    .Data_S(Sgf_add)
    );

Multiplexer_AC #(.W(W_Sgf+2)) Sgf_Add_Mux (
    .ctrl(ctrl), 
    .D0({1'b0,Sgf_PR}), 
    .D1(Sgf_add), 
    .S(Sgf_mux)
    ); 
	 
RegisterMult #(.W(W_Sgf+2)) Sgf_PRound_Reg ( //Data X input register
    .clk(clk), 
    .rst(rst), 
    .load(load), 
    .D(Sgf_mux), 
    .Q(Sgf_P_Round)
    );


assign One = 1;

endmodule
