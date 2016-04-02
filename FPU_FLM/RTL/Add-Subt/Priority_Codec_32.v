`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2016 05:20:59 PM
// Design Name: 
// Module Name: Priority_Codec_32
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


module Priority_Codec_32(
    input wire [25:0] Data_Dec_i,
    output reg [4:0] Data_Bin_o
    );

	always @(Data_Dec_i)
	begin
		casex (Data_Dec_i)
			26'b0xxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 5'b00000;//0
			26'b10xxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 5'b00001;//1
			26'b110xxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 5'b00010;//2
			26'b1110xxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 5'b00011;//3
			26'b11110xxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 5'b00100;//4
			26'b111110xxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 5'b00101;//5
			26'b1111110xxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 5'b00110;//6
			26'b11111110xxxxxxxxxxxxxxxxxx: Data_Bin_o <= 5'b00111;//7
			26'b111111110xxxxxxxxxxxxxxxxx: Data_Bin_o <= 5'b01000;//8
			26'b1111111110xxxxxxxxxxxxxxxx: Data_Bin_o <= 5'b01001;//9
			26'b11111111110xxxxxxxxxxxxxxx: Data_Bin_o <= 5'b01010;//10
			26'b111111111110xxxxxxxxxxxxxx: Data_Bin_o <= 5'b01011;//11
			26'b1111111111110xxxxxxxxxxxxx: Data_Bin_o <= 5'b01100;//12
			26'b11111111111110xxxxxxxxxxxx: Data_Bin_o <= 5'b01101;//13
			26'b111111111111110xxxxxxxxxxx: Data_Bin_o <= 5'b01110;//14
			26'b1111111111111110xxxxxxxxxx: Data_Bin_o <= 5'b01111;//15
			26'b11111111111111110xxxxxxxxx: Data_Bin_o <= 5'b10000;//16
			26'b111111111111111110xxxxxxxx: Data_Bin_o <= 5'b10001;//17
			26'b1111111111111111110xxxxxxx: Data_Bin_o <= 5'b10010;//18
			26'b11111111111111111110xxxxxx: Data_Bin_o <= 5'b10011;//19
			26'b111111111111111111110xxxxx: Data_Bin_o <= 5'b10100;//20
			26'b1111111111111111111110xxxx: Data_Bin_o <= 5'b10101;//21
			26'b11111111111111111111110xxx: Data_Bin_o <= 5'b10110;//22
			26'b111111111111111111111110xx: Data_Bin_o <= 5'b10111;//23
			26'b1111111111111111111111110x: Data_Bin_o <= 5'b11000;//24
			26'b11111111111111111111111110: Data_Bin_o <= 5'b10101;//25
			default: Data_Bin_o <= 8'bxxxxxxxx;//don't shift case
		endcase
		////26'b00001110100000000111110000;
	end
endmodule
