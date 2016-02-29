`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2016 02:23:10
// Design Name: 
// Module Name: LUT_ROM_32bits
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


module LUT_ROM_32bits #(parameter W=32)
(
//Input Signals
input wire clk,
input wire enable,
input wire [4:0] address,

//Output Signals
output reg [W-1:0] data_out
);

    always @(posedge clk)
    begin
        if (enable)
            case (address)
                 5'b00000: data_out <= 32'h3f490fdb;
                 5'b00001: data_out <= 32'h3eed6338;
                 5'b00010: data_out <= 32'h3e7adbb0;
                 5'b00011: data_out <= 32'h3dfeadd5;
                 5'b00100: data_out <= 32'h3d7faade;
                 5'b00101: data_out <= 32'h3cffeaae;
                 5'b00110: data_out <= 32'h3c7ffaab;
                 5'b00111: data_out <= 32'h3bfffeab;
                 5'b01000: data_out <= 32'h3b7fffab;
                 5'b01001: data_out <= 32'h3affffeb;
                 5'b01010: data_out <= 32'h3a7ffffb;
                 5'b01011: data_out <= 32'h39ffffff;
                 5'b01100: data_out <= 32'h39800000;
                 5'b01101: data_out <= 32'h39000000;
                 5'b01110: data_out <= 32'h38800000;
                 5'b01111: data_out <= 32'h38000000;
                 5'b10000: data_out <= 32'h37800000;
                 5'b10001: data_out <= 32'h37000000;
                 5'b10010: data_out <= 32'h36800000;
                 5'b10011: data_out <= 32'h36000000;
                 5'b10100: data_out <= 32'h35800000;
                 5'b10101: data_out <= 32'h35000000;
                 5'b10110: data_out <= 32'h34800000;
                 5'b10111: data_out <= 32'h34000000;
                 5'b11000: data_out <= 32'h33800000;
                 5'b11001: data_out <= 32'h33000000;
                 5'b11010: data_out <= 32'h32800000;
                 5'b11011: data_out <= 32'h32000000;
                 5'b11100: data_out <= 32'h31800000;
                 5'b11101: data_out <= 32'h31000000;
                 5'b11110: data_out <= 32'h30800000;
                 5'b11111: data_out <= 32'h30000000;
            /*     5'b100000: data_out <= 32'h3df0000000000000;
                 5'b100001: data_out <= 32'h3de0000000000000;
                 5'b100010: data_out <= 32'h3dd0000000000000;
                 5'b100011: data_out <= 32'h3dc0000000000000;
                 5'b100100: data_out <= 32'h3db0000000000000;
                 5'b100101: data_out <= 32'h3da0000000000000;
                 5'b100110: data_out <= 32'h3d90000000000000;
                 5'b100111: data_out <= 32'h3d80000000000000;
                 5'b101000: data_out <= 32'h3d70000000000000;
                 5'b101001: data_out <= 32'h3d60000000000000;
                 5'b101010: data_out <= 32'h3d50000000000000;
                 5'b101011: data_out <= 32'h3d40000000000000;
                 5'b101100: data_out <= 32'h3d30000000000000;
                 5'b101101: data_out <= 32'h3d20000000000000;
                 5'b101110: data_out <= 32'h3d10000000000000;
                 5'b101111: data_out <= 32'h3d00000000000000;
                 5'b110000: data_out <= 32'h3cf0000000000000;
                 5'b110001: data_out <= 32'h3ce0000000000000;
                 5'b110010: data_out <= 32'h3cd0000000000000;
                 5'b110011: data_out <= 32'h3cc0000000000000;
                 5'b110100: data_out <= 32'h3cb0000000000000;
                 5'b110101: data_out <= 32'h3ca0000000000000;
                 5'b110110: data_out <= 32'h3c90000000000000;
                 5'b110111: data_out <= 32'h3c80000000000000;
                 5'b111000: data_out <= 32'h3c70000000000000;
                 5'b111001: data_out <= 32'h3c60000000000000;
                 5'b111010: data_out <= 32'h3c50000000000000;
                 5'b111011: data_out <= 32'h3c40000000000000;
                 5'b111100: data_out <= 32'h3c30000000000000;
                 5'b111101: data_out <= 32'h3c20000000000000;
                 5'b111110: data_out <= 32'h3c10000000000000;
                 5'b111111: data_out <= 32'h3c00000000000000;*/
                 default:   data_out <= 32'h00000000;
          endcase
        else
            data_out <= 32'h00000000;
    end
endmodule
