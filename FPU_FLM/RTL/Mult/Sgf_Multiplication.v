`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2016 11:26:28 AM
// Design Name: 
// Module Name: Sgf_Multiplication
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


module Sgf_Multiplication
    #(parameter SW = 24)
    //#(parameter SW = 54, parameter half=27)
	(
    input wire clk,
    input wire rst,
    input wire load_a_i,
    input wire load_b_i,
    input wire [SW-1:0] Data_A_i,
    input wire [SW-1:0] Data_B_i,
    output wire [2*SW-1:0] sgf_result_o
    );
    
    //wire [SW-1:0] Data_A_i;
    //wire [SW-1:0] Data_B_i;
    
    
    wire [SW-1:0] result_left_mult;
    wire [SW-1:0] result_right_mult;
    wire [SW/2:0] result_A_adder;
    wire [SW/2:0] result_B_adder;
    wire [SW+1:0] result_middle_mult;

    wire [SW-1:0] Q_left;
    wire [SW-1:0] Q_right;
    wire [SW+1:0] Q_middle;

    wire [SW+1:0] S_A;
    wire [SW+1:0] S_B;

    wire[2*SW:0] Result;
    
    ////////////////////////////////////
/*generate
    case (SW%2)
        0:begin*/
       //Multiplier for left side and right side
      /* RegisterAdd #(.W(SW)) A( //Data X input register
                   .clk(clk), 
                   .rst(rst), 
                   .load(load_a_i), 
                   .D(A_Data_A_i), 
                   .Q(Data_A_i)
        );
        
        RegisterAdd #(.W(SW)) B( //Data X input register
                           .clk(clk), 
                           .rst(rst), 
                           .load(load_a_i), 
                           .D(B_Data_B_i), 
                           .Q(Data_B_i)
        );*/
        
        multiplier #(.W(SW/2)) left(
            .Data_A_i(Data_A_i[SW-1:SW-SW/2]),
            .Data_B_i(Data_B_i[SW-1:SW-SW/2]),
            .Data_S_o(result_left_mult)
        );
        
      RegisterAdd #(.W(SW)) leftreg( //Data X input register
            .clk(clk), 
            .rst(rst), 
            .load(load_a_i), 
            .D(result_left_mult), 
            .Q(Q_left)
        );//*/

        multiplier #(.W(SW/2)) right(
            .Data_A_i(Data_A_i[SW-SW/2-1:0]),
            .Data_B_i(Data_B_i[SW-SW/2-1:0]),
            .Data_S_o(result_right_mult)
        );
    
        RegisterAdd #(.W(SW)) rightreg( //Data X input register
            .clk(clk), 
            .rst(rst), 
            .load(load_a_i), 
            .D(result_right_mult), 
            .Q(Q_right)
        );//*/
    
       //Adders for middle 
    
        adder #(.W(SW/2)) A_operation (
            .Data_A_i(Data_A_i[SW-1:SW-SW/2]),
            .Data_B_i(Data_A_i[SW-SW/2-1:0]),
            .Data_S_o(result_A_adder)
        );
    
        adder #(.W(SW/2)) B_operation (
            .Data_A_i(Data_B_i[SW-1:SW-SW/2]),
            .Data_B_i(Data_B_i[SW-SW/2-1:0]),
            .Data_S_o(result_B_adder)
        );
    
       //multiplication for middle
    
        multiplier #(.W(SW/2+1)) middle (
            .Data_A_i(result_A_adder),
            .Data_B_i(result_B_adder),
            .Data_S_o(result_middle_mult)
        );
    
       //segmentation registers array
    
    
        RegisterAdd #(.W(SW+2)) midreg ( //Data X input register
            .clk(clk), 
            .rst(rst), 
            .load(load_a_i), 
            .D(result_middle_mult), 
            .Q(Q_middle)
        );//*/
    
       ///Subtractors for middle
        wire [1:0] zero;
        assign zero =2'b00;
        substractor #(.W(SW+2)) Subtr_1 (
            .Data_A_i(/*result_middle_mult//*/Q_middle),
            .Data_B_i({zero, /*result_left_mult//*/Q_left}),
            .Data_S_o(S_A)
        );
    
        substractor #(.W(SW+2)) Subtr_2 (
            .Data_A_i(S_A),
            .Data_B_i({zero, /*result_right_mult//*/Q_right}),
            .Data_S_o(S_B)
        );
    
       //Final adder
        wire [SW/2-3:0] leftside;
        wire [SW/2-1:0] rightside;
        
        assign leftside = (SW/2) *1'b0;
        assign rightside = (SW/2)*1'b0;
        adder #(.W(2*SW)) Final(
            .Data_A_i({/*result_left_mult,result_right_mult*/Q_left,Q_right}),
            .Data_B_i({leftside,S_B,rightside}),
            .Data_S_o(Result)
        );
       
       //Final Register
       
        
        
        RegisterAdd #(.W(2*SW)) finalreg ( //Data X input register
            .clk(clk), 
            .rst(rst), 
            .load(load_b_i), 
            .D(Result[2*SW-1:0]), 
            .Q({sgf_result_o})
        );
    /*end
    1:begin
        Multiplier for left side and right side
           localparam SW/2 = SW/2;
           multiplier #(.W(SW/2)) left (
            .Data_A_i(Data_A_i[SW-1:SW-SW/2]),
            .Data_B_i(Data_B_i[SW-1:SW-SW/2]),
            .Data_S_o(result_left_mult)
            );
        
           multiplier #(.W(SW/2)) right (
            .Data_A_i(Data_A_i[SW-SW/2-1:0]),
            .Data_B_i(Data_B_i[SW-SW/2-1:0]),
            .Data_S_o(result_right_mult)
            );
        
           //Adders for middle 
        
           adder #(.W(SW/2)) A_operation (
            .Data_A_i(Data_A_i[SW-1:SW-SW/2]),
            .Data_B_i(Data_A_i[SW-SW/2-1:0]),
            .Data_S_o(result_A_adder)
            );
        
           adder #(.W(SW/2)) B_operation (
            .Data_A_i(Data_B_i[SW-1:SW-SW/2]),
            .Data_B_i(Data_B_i[SW-SW/2-1:0]),
            .Data_S_o(result_B_adder)
            );
        
           //multiplication for middle
        
           multiplier #(.W(SW/2+1)) middle (
            .Data_A_i(result_A_adder),
            .Data_B_i(result_B_adder),
            .Data_S_o(result_middle_mult)
            );
        
           //segmentation registers array
        
           RegisterMult #(.W(SW+1)) leftreg ( //Data X input register
            .clk(clk), 
            .rst(rst), 
            .load(load_a_i), 
            .D(result_left_mult), 
            .Q(Q_left)
            );
        
           RegisterMult #(.W(SW+1)) rightreg ( //Data X input register
            .clk(clk), 
            .rst(rst), 
            .load(load_a_i), 
            .D(result_right_mult), 
            .Q(Q_right)
            );
        
           RegisterMult #(.W(SW+3)) midreg ( //Data X input register
            .clk(clk), 
            .rst(rst), 
            .load(load_a_i), 
            .D(result_middle_mult), 
            .Q(Q_middle)
            );
        
           ///Subtractors for middle
        
           substractor #(.W(SW+3)) Subtr_1 (
            .Data_A_i(Q_middle),
            .Data_B_i({2'b00,Q_left}),
            .Data_S_o(S_A)
            );
        
           substractor #(.W(SW+3)) Subtr_2 (
            .Data_A_i(S_A),
            .Data_B_i({2'b00,Q_right}),
            .Data_S_o(S_B)
            );
        
           //Final adder
        wire [SW/2:0] leftside;
        wire [SW/2-1:0] rightside;
        
        assign leftside = (SW/2) *1'b0;
        assign rightside = (SW/2-1)*1'b0;
           adder #(.W(2*SW+2)) Final(
            .Data_A_i({Q_left,Q_right}),
            .Data_B_i({leftside,S_B[SW+2:0],rightside}),
            .Data_S_o(Result)
            );
           
           //Final Register
           
            
            
           RegisterMult #(.W(2*SW+1)) finalreg ( //Data X input register
            .clk(clk), 
            .rst(rst), 
            .load(load_b_i), 
            .D(Result), 
            .Q({Overflow_mult_o,sgf_result_o})
            );
        end
    endcase
endgenerate
*/
endmodule
