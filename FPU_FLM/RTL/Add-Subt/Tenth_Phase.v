`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:15:08 08/27/2015 
// Design Name: 
// Module Name:    Tenth_Phase 
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
module Tenth_Phase 
//Module Parameters
/***SINGLE PRECISION***/
// W = 32 
// W_Exp = 8
// W_Sgf = 23 

/***DOUBLE PRECISION***/
// W = 64 
// W_Exp = 11
// W_Sgf = 52

	# (parameter W = 32, parameter W_Exp = 8, parameter W_Sgf = 23)
//	# (parameter W = 64, parameter W_Exp = 11, parameter W_Sgf = 52)
	
	(
		//INPUTS
		input wire clk, //Clock Signal
		input wire rst, //Reset Signal
		input wire sel_a_i, //Overflow/add/subt result's mux's selector
		input wire sel_b_i, //underflow/add/subt result's mux's selector
		input wire load_reg_i,
		input wire sgn_M_i, //Sign of the largest Operand
		input wire [W_Exp-1:0] exp_ieee_i, //Final Exponent
		input wire [W_Sgf-1:0] sgf_ieee_i,//Final Significand
		//OUTPUTS
		output wire [W-1:0] final_result_ieee_o //Final Result
    );

//Wire Connection signals
wire [W_Sgf-1:0] Sgf_S_mux;
wire [W_Exp-1:0] Exp_S_mux;
wire Sign_S_mux;
wire [W-1:0] final_result_reg;
wire overunder;

//////////////////////////////////////////////////////////

assign overunder = sel_a_i | sel_b_i;

Mux_3x1 Sign_Mux (
    .ctrl({sel_a_i,sel_b_i}),
    .D0(sgn_M_i),
    .D1(1'b1),
    .D2(1'b0),
    .S(Sign_S_mux)
    );

/////////////////////////////////////////////////////////
generate
if(W == 32) begin
Multiplexer_AC #(.W(W_Exp)) Exp_Mux (
    .ctrl(overunder), 
    .D0(exp_ieee_i), 
    .D1(8'hff), 
    .S(Exp_S_mux)
    );

Multiplexer_AC #(.W(W_Sgf)) Sgf_Mux (
    .ctrl(overunder), 
    .D0(sgf_ieee_i), 
    .D1(23'd0), 
    .S(Sgf_S_mux)
    );   	 
end
else begin
Multiplexer_AC #(.W(W_Exp)) Exp_Mux (
    .ctrl(overunder), 
    .D0(exp_ieee_i), 
    .D1(11'hfff), 
    .S(Exp_S_mux)
    );	

Multiplexer_AC #(.W(W_Sgf)) Sgf_Mux (
    .ctrl(overunder), 
    .D0(sgf_ieee_i), 
    .D1(52'd0), 
    .S(Sgf_S_mux)
    ); 
end
endgenerate
////////////////////////////////////////////////////////////////



////////////////////////////////////////////////////////
RegisterAdd #(.W(W)) Final_Result_IEEE (
    .clk(clk), 
    .rst(rst), 
    .load(load_reg_i), 
    .D({Sign_S_mux,Exp_S_mux,Sgf_S_mux}), 
    .Q(final_result_ieee_o)
    );	 


endmodule
