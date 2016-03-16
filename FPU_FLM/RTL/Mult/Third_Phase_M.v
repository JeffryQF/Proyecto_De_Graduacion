`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:37:25 09/04/2015 
// Design Name: 
// Module Name:    Third_Phase_M 
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
//The outputs of module allows to take decisions about an initial overflow due 
//to a non representable bit pattern when adding the exponents and the bias parameter

module Third_Phase_M
	//SINGLE PRECISION PARAMETERS
	# (parameter W_Exp = 8)
	//DOUBLE PRECISION PARAMETERS
/* # (parameter W_Exp = 11) */
	(
		input wire clk,
		input wire rst,
		input wire load,
		input wire [W_Exp-1:0] exp,
		input wire cout_exp,
		
		output wire [W_Exp-1:0] exp_r,
		output wire overflow_cout,
		output wire overflow_comp
    );


wire gr_t;
wire [W_Exp-1:0] U_Limit;
//Comparing the exponent with the maximum representable value  is a good way to
//take decisions about overflow but is more important the carry out bit of the 
//add-subtract function 

//Compare the 8 LSB's of the result with the maximum normal number of the format

Greater_Comparator #(.W(W_Exp)) GTComparator_EM ( 
    .Data_A(exp), 
    .Data_B(U_Limit), 
    .gthan(gr_t)
    );

//Stores the carry out bit of the resultant exponent
RegisterMult #(.W(1)) Ov_Register_FCout (
    .clk(clk), 
    .rst(rst), 
    .load(load), 
    .D(cout_exp), 
    .Q(overflow_cout)
    );

//Stores information about the compare function
RegisterMult #(.W(1)) Ov_Register_FComp (
    .clk(clk), 
    .rst(rst), 
    .load(load), 
    .D(gr_t), 
    .Q(overflow_comp)
    );

//Stores the initial exponent value
RegisterMult #(.W(W_Exp)) Exp_R_Reg (
    .clk(clk), 
    .rst(rst), 
    .load(load), 
    .D(exp), 
    .Q(exp_r)
    );

generate
	if ( W_Exp == 8)
		assign U_Limit = 8'hfe;
	else
		assign U_Limit = 11'b11111111110;
endgenerate

endmodule
