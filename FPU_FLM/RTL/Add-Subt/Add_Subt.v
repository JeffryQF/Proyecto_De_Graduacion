`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2016 01:13:48 PM
// Design Name: 
// Module Name: Add_Subt
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


module Add_Subt
    #(parameter SW=26) (
    input clk,
    input rst,
    input Add_Sub_0_i,
    input Add_Sub_1_i,
    input [SW-1:0] Oper0_A_i,
    input [SW-1:0] Oper1_A_i,
    input [SW-1:0] Oper0_B_i,
    input [SW-1:0] Oper1_B_i,
    input FSM_Select_i,
    input FSM_Load_i,

/////////////////////////////////////////////////////////////

    output [SW-1:0] Data_Result_o,
    output [SW-1:0] P_o,
    output [SW-1:0] G_o,
    output FSM_C_o
    );

    wire Add_Sub_S;
    wire [SW-1:0] Data_A;
    wire [SW-1:0] PreData_B;
    wire [SW-1:0] Data_B;
    wire [SW-1:0] S_to_D;
    wire [SW-1:0] P_to_D;
    wire [SW-1:0] G_to_D;


     Multiplexer_AC #(.W(1)) op(
        .ctrl(FSM_Select_i),
        .D0 (Add_Sub_0_i),
        .D1 (Add_Sub_1_i),
        .S (Add_Sub_S)
        );
           
    Multiplexer_AC #(.W(SW)) Oper_A(
        .ctrl(FSM_Select_i),
        .D0 (Oper0_A_i),
        .D1 (Oper1_A_i),
        .S (Data_A)
        );

    Multiplexer_AC #(.W(SW)) Oper_B(
        .ctrl(FSM_Select_i),
        .D0 (Oper0_B_i),
        .D1 (Oper1_B_i),
        .S (PreData_B)
        );
    /////////////////////////////////////////7
    genvar j;
    for (j=0; j<SW; j=j+1)begin

        assign Data_B[j] = PreData_B[j] ^ Add_Sub_S;

    end

    Full_Adder_PG #(.SW(SW)) AS_Module(
        .Op_A_i(Data_A),
        .Op_B_i(Data_B),
        .C_i(Add_Sub_S), //Carry in
        .S_o(S_to_D), // Solution out
        .C_o(FSM_C_o), //Carry out
        .P_o(P_to_D), //Propagate (for LZA)
        .G_o(G_to_D) //Generate (For LZA)
    );

    RegisterAdd #(.W(SW)) Add_Subt_Result(
        .clk (clk),
        .rst (rst),
        .load (FSM_Load_i),
        .D (S_to_D),
        .Q (Data_Result_o)
        );

    RegisterAdd #(.W(SW)) P_result(
        .clk (clk),
        .rst (rst),
        .load (FSM_Load_i),
        .D (P_to_D),
        .Q (P_o)
        );

    RegisterAdd #(.W(SW)) G_result(
        .clk (clk),
        .rst (rst),
        .load (FSM_Load_i),
        .D (G_to_D),
        .Q (G_o)
        );

endmodule
