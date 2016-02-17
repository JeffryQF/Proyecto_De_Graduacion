`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/15/2016 03:18:40 PM
// Design Name: 
// Module Name: Temporal_op_result_sign
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


module Temporal_op_result_sign(
    input wire Sgn_A_in, //Data_A's sign bit
    input wire Sgn_B_in, //Data_B's sign bit
    input wire Add_Subt_in, // Operation Substract/~add
    input wire GT_in, // |A|>|B| = ?
    output wire Op_out, // Real operation Substract/~add
    output wire Sgn_final_out //Result's sign bit of the operation
    );
    
    
    //Operation
    
    assign Op_out = Sgn_A_in ^ Sgn_B_in ^ Add_Subt_in;
    assign Sgn_final_out = ~((Op_out | ~(Sgn_A_in) | GT_in) & ( ~(GT_in) | (Sgn_A_in & ~(Op_out))));
    endmodule
