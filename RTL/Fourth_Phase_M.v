`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:06:43 09/04/2015 
// Design Name: 
// Module Name:    Fourth_Phase_M 
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

//This module stores the result of the multiplication of the significands

module Fourth_Phase_M
	//SINGLE PRECISION PARAMETER
	//# (parameter W_Sgf = 24)
	//DOUBLE PRECISION PARAMETER
    # (parameter W_Sgf = 53) 
	(

		input wire clk,
		input wire rst,
		input wire load_a,
		input wire load_b,
		input wire [W_Sgf:0] Sgf_X,
		input wire [W_Sgf:0] Sgf_Y,
		
		output wire [2*W_Sgf+1:0] P_Sgf
    );


/////////////////////////////////////
wire [W_Sgf:0] R_SgfX;
wire [W_Sgf:0] R_SgfY;
/////////////////////////////////////

wire [2*W_Sgf+1:0] P_Sgf_reg;

//**********SOLUTION CLK SKEW ******************************////
RegisterMult #(.W(W_Sgf+1)) P_SgfX_Register (
    .clk(clk), 
    .rst(rst), 
    .load(load_a), 
    .D(Sgf_X), 
    .Q(R_SgfX)
    );

RegisterMult #(.W(W_Sgf+1)) P_SgfY_Register (
    .clk(clk), 
    .rst(rst), 
    .load(load_a), 
    .D(Sgf_Y), 
    .Q(R_SgfY)
    );

/////////////////////////////////////////////////////////////////


//Multiplier Module
Multiplier_P #(.W_Sgf(W_Sgf)) P_Sgf_Mult (
    .Data_A(R_SgfX), 
    .Data_B(R_SgfY), 
    .Result(P_Sgf_reg)
    );

//Register that stores the multiplication result
RegisterMult #(.W(2*W_Sgf+2)) P_Sgf_Register (
    .clk(clk), 
    .rst(rst), 
    .load(load_b), 
    .D(P_Sgf_reg), 
    .Q(P_Sgf)
    );



endmodule
