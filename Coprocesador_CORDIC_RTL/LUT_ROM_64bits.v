`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2016 11:00:41
// Design Name: 
// Module Name: LUT_Rom
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


module LUT_ROM_64bits  #(parameter W=64)
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
                 5'b00000: data_out <= 64'h3fe921fb54442d18;
                 5'b00001: data_out <= 64'h3fddac670561bb4f;
                 5'b00010: data_out <= 64'h3fcf5b75f92c80dd;
                 5'b00011: data_out <= 64'h3fbfd5ba9aac2f6e;
                 5'b00100: data_out <= 64'h3faff55bb72cfdea;
                 5'b00101: data_out <= 64'h3f9ffd55bba97625;
                 5'b00110: data_out <= 64'h3f8fff555bbb729b;
                 5'b00111: data_out <= 64'h3f7fffd555bbba97;
                 5'b01000: data_out <= 64'h3f6ffff5555bbbb7;
                 5'b01001: data_out <= 64'h3f5ffffd5555bbbc;
                 5'b01010: data_out <= 64'h3f4fffff55555bbc;
                 5'b01011: data_out <= 64'h3f3fffffd55555bc;
                 5'b01100: data_out <= 64'h3f2ffffff555555c;
                 5'b01101: data_out <= 64'h3f1ffffffd555556;
                 5'b01110: data_out <= 64'h3f0fffffff555555;
                 5'b01111: data_out <= 64'h3effffffffd55555;
                 5'b10000: data_out <= 64'h3eeffffffff55555;
                 5'b10001: data_out <= 64'h3edffffffffd5555;
                 5'b10010: data_out <= 64'h3ecfffffffff5555;
                 5'b10011: data_out <= 64'h3ebfffffffffd555;
                 5'b10100: data_out <= 64'h3eaffffffffff555;
                 5'b10101: data_out <= 64'h3e9ffffffffffd55;
                 5'b10110: data_out <= 64'h3e8fffffffffff55;
                 5'b10111: data_out <= 64'h3e7fffffffffffd5;
                 5'b11000: data_out <= 64'h3e6ffffffffffff5;
                 5'b11001: data_out <= 64'h3e5ffffffffffffd;
                 5'b11010: data_out <= 64'h3e4fffffffffffff;
                 5'b11011: data_out <= 64'h3e40000000000000;
                 5'b11100: data_out <= 64'h3e30000000000000;
                 5'b11101: data_out <= 64'h3e20000000000000;
                 5'b11110: data_out <= 64'h3e10000000000000;
                 5'b11111: data_out <= 64'h3e00000000000000;
                 /*5'b100000: data_out <= 64'h3df0000000000000;
                 5'b100001: data_out <= 64'h3de0000000000000;
                 5'b100010: data_out <= 64'h3dd0000000000000;
                 5'b100011: data_out <= 64'h3dc0000000000000;
                 5'b100100: data_out <= 64'h3db0000000000000;
                 5'b100101: data_out <= 64'h3da0000000000000;
                 5'b100110: data_out <= 64'h3d90000000000000;
                 5'b100111: data_out <= 64'h3d80000000000000;
                 5'b101000: data_out <= 64'h3d70000000000000;
                 5'b101001: data_out <= 64'h3d60000000000000;
                 5'b101010: data_out <= 64'h3d50000000000000;
                 5'b101011: data_out <= 64'h3d40000000000000;
                 5'b101100: data_out <= 64'h3d30000000000000;
                 5'b101101: data_out <= 64'h3d20000000000000;
                 5'b101110: data_out <= 64'h3d10000000000000;
                 5'b101111: data_out <= 64'h3d00000000000000;
                 5'b110000: data_out <= 64'h3cf0000000000000;
                 5'b110001: data_out <= 64'h3ce0000000000000;
                 5'b110010: data_out <= 64'h3cd0000000000000;
                 5'b110011: data_out <= 64'h3cc0000000000000;
                 5'b110100: data_out <= 64'h3cb0000000000000;
                 5'b110101: data_out <= 64'h3ca0000000000000;
                 5'b110110: data_out <= 64'h3c90000000000000;
                 5'b110111: data_out <= 64'h3c80000000000000;
                 5'b111000: data_out <= 64'h3c70000000000000;
                 5'b111001: data_out <= 64'h3c60000000000000;
                 5'b111010: data_out <= 64'h3c50000000000000;
                 5'b111011: data_out <= 64'h3c40000000000000;
                 5'b111100: data_out <= 64'h3c30000000000000;
                 5'b111101: data_out <= 64'h3c20000000000000;
                 5'b111110: data_out <= 64'h3c10000000000000;
                 5'b111111: data_out <= 64'h3c00000000000000;*/
                 default:   data_out <= 64'h0000000000000000;
          endcase
        else
            data_out <= 64'h0000000000000000;
    end  
endmodule
