`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2016 06:32:01 AM
// Design Name: 
// Module Name: Comb_1b
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


module Comb_1b(
    input wire Op_A_i,
    input wire Op_B_i,
    input wire C_i, //Carry in
    output wire C_o, //Carry out
    output wire P_o //Propagate (for LZA)
    );
    
    assign P_o = Op_A_i ^ Op_B_i;
    assign C_o = (Op_A_i & Op_B_i) | (P_o & C_i);
    //assign C_o = (Op_A_i & Op_B_i) | (Op_A_i & C_i) | (Op_B_i & C_i);
    
endmodule