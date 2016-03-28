`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2016 04:46:19 PM
// Design Name: 
// Module Name: exp_operation
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


module Exp_Operation
    #(parameter EW = 8) //Exponent Width
    (
        input wire clk, //system clock
        input wire rst, //reset of the module
        input wire load_i,
        input wire [EW-1:0] Data_A_i,
        input wire [EW-1:0] PreData_B_i,
        input wire Add_Subt_i,

        ///////////////////////////////////////////////////////////////////77
        output wire [EW-1:0] Data_Result_o,
        output wire Overflow_flag_o,
        output wire Underflow_flag_o
    );


wire anomaly;
wire [EW-1:0] Data_B;

/////////////////////////////////////////7
genvar j;
for (j=0; j<EW; j=j+1)begin

    assign Data_B[j] = PreData_B_i[j] ^ FSM_Add_Subt_i;

end
/////////////////////////////////////////

add_sub_carry_out #(.W(EW)) exp_add_subt(
    .op_mode (FSM_Add_Subt_i),
    .Data_A (Data_A_i),
    .Data_B (Data_B),
    .Data_S ({anomaly, Data_S})
    );
assign Overflow_flag_o = anomaly & ~FSM_Add_Subt_i;
assign Underflow_flag_o = anomaly & FSM_Add_Subt_i;

RegisterAdd #(.W(EW)) exp_result(
    .clk (clk),
    .rst (rst),
    .load (FSM_Load_i),
    .D (Data_S),
    .Q (Data_Result_o)
    );
endmodule
