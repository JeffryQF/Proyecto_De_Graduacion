`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:50:11 09/04/2015 
// Design Name: 
// Module Name:    Fifth_Phase_M 
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
module Fifth_Phase_M
	//SINGLE PRECISION PARAMETERS
	# (parameter W_Sgf = 23) 
	//DOUBLE PRECISION PARAMETERS
/*	# (parameter W_Sgf = 52) */
	
	(
		input wire clk,
		input wire rst,
		input wire load,
		input wire selector,
		input wire [W_Sgf+1:0] Sgf_FP, //Significand Fraction Part, includes leading bit and carry out bit
		input wire [W_Sgf+1:0] Sgf_PR, //Significand Post Round
		output wire exp_nu, //Exp need update
		output wire  [W_Sgf:0] Sgf_F //Parcial Result of Significand, waiting the rounding phase
		
    );

 
wire [W_Sgf+1:0] Sgf_reg; //25 bits
wire [W_Sgf:0] Sgf_F_reg; //24 bits



Multiplexer_AC #(.W(W_Sgf+2)) Dir_Sgf_DP (
    .ctrl(selector), 
    .D0(Sgf_FP), 
    .D1(Sgf_PR), 
    .S(Sgf_reg)
    ); 


Multiplexer_AC #(.W(W_Sgf+1)) Dir_Sgf_C (
    .ctrl(Sgf_reg[W_Sgf+1]), 
    .D0(Sgf_reg[W_Sgf:0]), 
    .D1(Sgf_reg[W_Sgf+1:1]), 
    .S(Sgf_F_reg)
    );    

RegisterMult #(.W(W_Sgf+1)) SGF_RP_REG (
    .clk(clk), 
    .rst(rst), 
    .load(load), 
    .D(Sgf_F_reg), 
    .Q(Sgf_F)
    );

RegisterMult #(.W(1)) EXNU_REG (
    .clk(clk), 
    .rst(rst), 
    .load(load), 
    .D(Sgf_reg[W_Sgf+1]), 
    .Q(exp_nu)
    );

endmodule
