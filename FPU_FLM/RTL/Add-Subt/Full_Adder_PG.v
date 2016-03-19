`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2016 12:05:10 PM
// Design Name: 
// Module Name: Full_Adder_PG
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


module Full_Adder_PG
	#(parameter	SWR=26) (
	input wire [SWR-1:0] Op_A_i,
    input wire [SWR-1:0] Op_B_i,
    input wire C_i, //Carry in
    ////////////////////////////////77
    output wire [SWR-1:0] S_o, // Solution out
    output reg [SWR-1:1] Cn_o, //Carry for each Full adder
    output wire C_o, //Carry out for last full adder
    output wire [SWR-1:0] P_o //Propagate (for LZA)
    
    );

    wire [SWR-1:1] C_n;

    genvar j;

    generate for (j=0; j<SWR ; j=j+1) begin

    	case (j)
    		0:begin
    			Full_Adder_PG_1b First_FA1bit(
    				.Op_A_i(Op_A_i[j]),
    				.Op_B_i(Op_B_i[j]),
    				.C_i(C_i),
    				.S_o(S_o[j]),
    				.C_o(C_n[j+1]),
    				.P_o(P_o[j])
    				);
    			end
			SWR-1:begin
				Full_Adder_PG_1b Last_FA1bit(
    				.Op_A_i(Op_A_i[j]),
    				.Op_B_i(Op_B_i[j]),
    				.C_i(C_n[j]),
    				.S_o(S_o[j]),
    				.C_o(C_o),
    				.P_o(P_o[j])
    				);
				end
			default:begin
				Full_Adder_PG_1b FA1bit(
    				.Op_A_i(Op_A_i[j]),
    				.Op_B_i(Op_B_i[j]),
    				.C_i(C_n[j]),
    				.S_o(S_o[j]),
    				.C_o(C_n[j+1]),
    				.P_o(P_o[j])
    				);
				end
			endcase
		end
	endgenerate

	always @(C_n)
		Cn_o <= C_n;

endmodule
