`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2016 02:04:39 PM
// Design Name: 
// Module Name: LZA
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module LZA
	#(parameter SWR=26, parameter EW=8)(
    input clk,
    input rst,
    input FSM_load_i,
    input [SWR-1:0] P_i,
    input [SWR-1:0] G_i,
    output [EW-1:0] Shift_Value_o
    );
endmodule
