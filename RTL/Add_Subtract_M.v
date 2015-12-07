`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:18:08 09/04/2015 
// Design Name: 
// Module Name:    Add_Subtract_M 
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
module Add_Subtract_M
	# (parameter W = 9)
	(
		input wire [W-1:0] op_add,
		input wire [W-1:0] bias,
		output wire [W-1:0] result
    );

assign result = op_add - bias;

endmodule
