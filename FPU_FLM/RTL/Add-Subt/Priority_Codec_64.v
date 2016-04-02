`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2016 05:20:59 PM
// Design Name: 
// Module Name: Priority_Codec_64
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


module Priority_Codec_64(
    input wire [54:0]  Data_Dec_i,
    output reg [5:0] Data_Bin_o
    );
	
	always @(Data_Dec_i)
	begin
			casex (Data_Dec_i)
				55'b0xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b000000;//0
				55'b10xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b000001;//1
				55'b110xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b000010;//2
				55'b1110xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b000011;//3
				55'b11110xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b000100;//4
				55'b111110xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b000101;//5
				55'b1111110xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b000110;//6
				55'b11111110xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b000111;//7
				55'b111111110xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b001000;//8
				55'b1111111110xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b001001;//9
				55'b11111111110xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b001010;//10
				55'b111111111110xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b001011;//11
				55'b1111111111110xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b001100;//12
				55'b11111111111110xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b001101;//13
				55'b111111111111110xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b001110;//14
				55'b1111111111111110xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b001111;//15
				55'b11111111111111110xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b010000;//16
				55'b111111111111111110xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b010001;//17
				55'b1111111111111111110xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b010010;//18
				55'b11111111111111111110xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b010011;//19
				55'b111111111111111111110xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b010100;//20
				55'b1111111111111111111110xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b010101;//21
				55'b11111111111111111111110xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b010110;//22
				55'b111111111111111111111110xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b010111;//23
				55'b1111111111111111111111110xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b011000;//24
				55'b11111111111111111111111110xxxxxxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b010101;//25
				55'b111111111111111111111111110xxxxxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b010110;//26
				55'b1111111111111111111111111110xxxxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b010111;//27
				55'b11111111111111111111111111110xxxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b011000;//28
				55'b111111111111111111111111111110xxxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b011001;//29
				55'b1111111111111111111111111111110xxxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b011010;//30
				55'b11111111111111111111111111111110xxxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b011011;//31
				55'b111111111111111111111111111111110xxxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b011100;//32
				55'b1111111111111111111111111111111110xxxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b011101;//33
				55'b11111111111111111111111111111111110xxxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b011110;//34
				55'b111111111111111111111111111111111110xxxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b011111;//35
				55'b1111111111111111111111111111111111110xxxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b100000;//36
				55'b11111111111111111111111111111111111110xxxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b100001;//37
				55'b111111111111111111111111111111111111110xxxxxxxxxxxxxxxx: Data_Bin_o <= 6'b100010;//38
				55'b1111111111111111111111111111111111111110xxxxxxxxxxxxxxx: Data_Bin_o <= 6'b100011;//39
				55'b11111111111111111111111111111111111111110xxxxxxxxxxxxxx: Data_Bin_o <= 6'b100100;//40
				55'b111111111111111111111111111111111111111110xxxxxxxxxxxxx: Data_Bin_o <= 6'b100101;//41
				55'b1111111111111111111111111111111111111111110xxxxxxxxxxxx: Data_Bin_o <= 6'b100110;//42
				55'b11111111111111111111111111111111111111111110xxxxxxxxxxx: Data_Bin_o <= 6'b100111;//43
				55'b111111111111111111111111111111111111111111110xxxxxxxxxx: Data_Bin_o <= 6'b101000;//44
				55'b1111111111111111111111111111111111111111111110xxxxxxxxx: Data_Bin_o <= 6'b101001;//45
				55'b11111111111111111111111111111111111111111111110xxxxxxxx: Data_Bin_o <= 6'b101010;//46
				55'b111111111111111111111111111111111111111111111110xxxxxxx: Data_Bin_o <= 6'b101011;//47
				55'b1111111111111111111111111111111111111111111111110xxxxxx: Data_Bin_o <= 6'b101100;//48
				55'b11111111111111111111111111111111111111111111111110xxxxx: Data_Bin_o <= 6'b101101;//49
				55'b111111111111111111111111111111111111111111111111110xxxx: Data_Bin_o <= 6'b101110;//50
				55'b1111111111111111111111111111111111111111111111111110xxx: Data_Bin_o <= 6'b101111;//51
				55'b11111111111111111111111111111111111111111111111111110xx: Data_Bin_o <= 6'b110000;//52
				55'b111111111111111111111111111111111111111111111111111110x: Data_Bin_o <= 6'b110001;//53
				55'b1111111111111111111111111111111111111111111111111111110: Data_Bin_o <= 6'b110010;//54
				default: Data_Bin_o <= 6'bxxxxxx;//don't shift case
			endcase
			////55'b1110010011111010000001010001010000111011111101110010100;
		end
	endmodule