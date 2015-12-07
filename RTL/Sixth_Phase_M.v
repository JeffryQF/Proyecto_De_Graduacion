`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:27:25 09/04/2015 
// Design Name: 
// Module Name:    Sixth_Phase_M 
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
//This module allows to update the exponent in two cases, the first one is when
//you normalize the significand, you need or dont to add one to the exponent, the
//second one is a post round adjust, a critical case in the mantissa rounding
//could denormalize it again then you need to add one to the exponent again

module Sixth_Phase_M
	//SINGLE PRECISION PARAMETERS
	# (parameter W_Exp = 8)
	//DOUBLE PRECISION PARAMETERS
/* # (parameter W_Exp = 11) */	
	(
		input wire clk, //clock signal for registers
		input wire rst, //reset signal for registers
		input wire load_a, //Load signal for registers
		input wire load_b,
		
		input wire [W_Exp-1:0] exp_pr, //introduce a partial result of the exponent provided by the fifth phase
		input wire exp_na, //Exponent needs actualization signal
		input wire selector, //the selector is to choose wich exponent is going to be treat
		
		output wire [W_Exp-1:0] exp_act, //the output is an update of the exponent
		output wire overflow_b //other output brings info about an overflow
		
    );


wire [W_Exp-1:0] exp_treat; //Output of the mux that contains the exponent values
wire [W_Exp-1:0] exp_treat_reg; //Output of the register that contains exp_treat signal

wire exp_na_reg; //Output of the register that contains the expo_na signal

wire [W_Exp-1:0] exp_add; //the result of adding one to the exponent

wire [W_Exp-1:0] exp_treat_b;//Second output of the treatment exponent

wire [W_Exp-1:0] exp_F_reg;

wire pr_ov_reg;
///////////////////////////////////
wire [W_Exp-1:0] One;
wire [W_Exp-1:0] U_Limit;

//Multiplexing wich exponent is going to be or not updated
Multiplexer_AC #(.W(W_Exp)) Mux_Exponent_Selection (
    .ctrl(selector), 
    .D0(exp_pr), 
    .D1(exp_act), 
    .S(exp_treat)
    );

RegisterMult #(.W(W_Exp)) Exp_Selection_Register ( //Register that stores the output value of the Multiplexer
    .clk(clk), 
    .rst(rst), 
    .load(load_a), 
    .D(exp_treat), 
    .Q(exp_treat_reg)
    );

RegisterMult #(.W(1)) Exp_NA_Register ( //Stores the Need Update signal
    .clk(clk), 
    .rst(rst), 
    .load(load_a), 
    .D(exp_na), 
    .Q(exp_na_reg)
    );

add_subtract #(.W(W_Exp)) Add_Exponent_Function (
    .op_mode(1'b0), 
    .Data_A(exp_treat_reg), 
    .Data_B(One), 
    .Data_S(exp_add)
    );

Multiplexer_AC #(.W(W_Exp)) Mux_Selection_Final_Exponent (
    .ctrl(exp_na_reg), 
    .D0(exp_treat_reg), 
    .D1(exp_add), 
    .S(exp_treat_b)
    );

Greater_Comparator #(.W(W_Exp)) GTComparator_Exp_F ( 
    .Data_A(exp_treat_b), 
    .Data_B(U_Limit), 
    .gthan(pr_ov_reg)
    );


RegisterMult #(.W(W_Exp)) Exp_F_Register ( //Data X input register
    .clk(clk), 
    .rst(rst), 
    .load(load_b), 
    .D(exp_treat_b), 
    .Q(exp_act)
    );

RegisterMult #(.W(1)) PROverflow_Register ( //Data X input register
    .clk(clk), 
    .rst(rst), 
    .load(load_b), 
    .D(pr_ov_reg), 
    .Q(overflow_b)
    );

assign One = 1;
////////////////////////////////////////////////
generate
	if (W_Exp == 8)
		assign U_Limit = 8'hfe;
	else
		assign U_Limit = 11'b11111111110;
endgenerate
/////////////////////////////////////////////////
endmodule
