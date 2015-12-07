`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:11:38 09/04/2015 
// Design Name: 
// Module Name:    Second_Phase_M 
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
//This module has as objective the add-subtract function over the exponents and the bias
//It delivers a partial final exponent

module Second_Phase_M
	//SINGLE PRECISION PARAMETERS
	# (parameter W_Exp = 8)
	//DOUBLE PRECISION PARAMETERS
/*	# (parameter W_Exp = 11) */
	(
		input wire clk,
		input wire rst,
		input wire load,
		input wire [W_Exp:0] exp_add, //Exponent of X operand
		output wire [W_Exp:0] exp_pr //The exponent result of the add-subtract operation
										//it has 9 bits because it's necessary the carry out bit for overflow purposes
    );
	 
wire [W_Exp:0] Bias;
wire [W_Exp:0] exp_pr_reg; //This is an internal signal to conect the add-subtract module
//to the output register, remember that this signal has 9 bits because the carry out information

//This module is specially designed to add both exponents and then subtract the bias parameter from the result
Add_Subtract_M #(.W(W_Exp+1)) AS_EXP_BIAS (
    .op_add(exp_add), //Exponent of X operand 
    .bias(Bias), //Bias for the single precision format
    .result(exp_pr_reg)// Result of the operation -- Remember 9 bits
    );
	 
RegisterMult #(.W(W_Exp+1)) Result_Exp ( //Register that stores the operation result, it's a 9 bits wide
    .clk(clk), 
    .rst(rst), 
    .load(load), 
    .D(exp_pr_reg), 
    .Q(exp_pr)
    );

generate
	if (W_Exp == 8)
		assign Bias = 9'd127;
	else
		assign Bias = 12'd1023;
endgenerate

endmodule
