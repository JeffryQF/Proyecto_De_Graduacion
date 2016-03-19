`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2016 02:04:39 PM
// Design Name: 
// Module Name: LZA
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


module LZA
	//#(parameter SWR=26, parameter EW=8)(
	#(parameter SWR=55, parameter EW=11)(
    input wire clk,
    input wire rst,
    input wire FSM_load_i,
    input wire [SWR-1:0] P_i,
    input wire [SWR-1:1] C_i,
    input wire A_S_i,

    /////////////////////////////////////////////7
    output wire [EW-1:0] Shift_Value_o
    );

	wire [SWR-1:0] Comb_to_Codec;
	wire [EW-4:0] Codec_to_Reg_32;
	wire [EW-6:0] Codec_to_Reg_64;
	wire [EW-4:0] Codec_to_Reg_32_Q;
	wire [EW-6:0] Codec_to_Reg_64_Q;

	Combinational_Logic_LZA #(.SWR(SWR)) Combinational_Logic_LZA (
		.P_i(P_i),
		.C_i(C_i),
		.A_S_i(A_S_i),
		.S_o(Comb_to_Codec)
		);

	case (SWR)
		26:begin
			Priority_Codec_32 Codec_32(
				.Data_Dec_i(Comb_to_Codec),
				.Data_Bin_o(Codec_to_Reg_32)
				);
		    RegisterAdd #(.W(EW-3)) Output_Reg(
		        .clk(clk),
		        .rst(rst),
		        .load(FSM_load_i),
		        .D(Codec_to_Reg_32),
		        .Q(Codec_to_Reg_32_Q)
		        );
		    assign Shift_Value_o ={3'b000,Codec_to_Reg_32_Q};
			end
		55:begin
			Priority_Codec_64 Codec_64(
				.Data_Dec_i(Comb_to_Codec),
				.Data_Bin_o(Codec_to_Reg_64)
				);
		    RegisterAdd #(.W(EW-5)) Output_Reg(
		        .clk(clk),
		        .rst(rst),
		        .load(FSM_load_i),
		        .D(Codec_to_Reg_64),
		        .Q(Codec_to_Reg_64_Q)
		        );
		    assign Shift_Value_o={5'b00000,Codec_to_Reg_64_Q};
			end
		endcase


endmodule
