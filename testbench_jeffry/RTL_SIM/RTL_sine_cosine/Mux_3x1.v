`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2016 10:56:47
// Design Name: 
// Module Name: Mux_3x1
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


module Mux_3x1 #(parameter W=32)
(
//Input Signals
input wire [1:0] select,
input wire [W-1:0] ch_0,
input wire [W-1:0] ch_1,
input wire [W-1:0] ch_2,

//Output Signals
output reg [W-1:0] data_out
);

    always @*
        begin
            case(select)
                2'b00: data_out = ch_0;
                2'b01: data_out = ch_1;
                2'b10: data_out = ch_2;
                default : data_out = ch_0;
            endcase
        end

endmodule
