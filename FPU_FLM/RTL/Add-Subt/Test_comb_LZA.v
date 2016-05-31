`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2016 06:16:50 AM
// Design Name: 
// Module Name: Test_comb_LZA
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


module Test_comb_LZA
	#(parameter	SWR=26) (
	input wire clk,
	input wire rst,
	input wire [SWR-1:0] Op_A_i,
    input wire [SWR-1:0] Pre_Op_B_i,
    input wire op, //Carry in
    ////////////////////////////////
    output wire [SWR-1:1] Cn_o, //Carry for each Full adder
    output wire [SWR-1:0] P_o //Propagate (for LZA)
    
    );
    wire [SWR-1:0] Op_B_i;
    wire [SWR-1:1] C_n;
    wire reg_to_carry;
    genvar i;
    for (i=0; i<SWR; i=i+1)begin

        assign Op_B_i[i] = Pre_Op_B_i[i] ^ op;

    end

    genvar j;
    generate
        case (SWR)
            default: begin
                for (j=0; j<SWR ; j=j+1) begin
                    case (j)
                        0:begin
                            Comb_1b Cbit(
                                .Op_A_i(Op_A_i[0]),
                                .Op_B_i(Op_B_i[0]),
                                .C_i(op),
                                .C_o(C_n[1]),
                                .P_o(P_o[0])
                            );
                        end
                        SWR-1:begin
                            assign P_o[j] = Op_A_i[j] ^ Op_B_i[j];
                        end
                        default:begin
                            Comb_1b Cbit(
                                .Op_A_i(Op_A_i[j]),
                                .Op_B_i(Op_B_i[j]),
                                .C_i(C_n[j]),
                                .C_o(C_n[j+1]),
                                .P_o(P_o[j])
                            );
                        end
                    endcase
                end
            end
            
            55: begin
                for (j=0; j<27 ; j=j+1) begin
                    case (j)
                        0:begin
                            Comb_1b Cbit(
                                .Op_A_i(Op_A_i[0]),
                                .Op_B_i(Op_B_i[0]),
                                .C_i(op),
                                .C_o(C_n[1]),
                                .P_o(P_o[0])
                            );
                        end
                            
                        default:begin
                            Comb_1b Cbit(
                                .Op_A_i(Op_A_i[j]),
                                .Op_B_i(Op_B_i[j]),
                                .C_i(C_n[j]),
                                .C_o(C_n[j+1]),
                                .P_o(P_o[j])
                            );
                        end
                    endcase
                end

                RegisterAdd #(.W(1)) MidRegister ( //Data Add_Subtract input register
                    .clk(clk), 
                    .rst(rst), 
                    .load(1'b1), 
                    .D(C_n[27]), 
                    .Q(reg_to_carry)
                );
                        
                for (j=27; j<SWR ; j=j+1) begin
                    case (j)
                        27:begin
                            Comb_1b Cbit(
                                .Op_A_i(Op_A_i[27]),
                                .Op_B_i(Op_B_i[27]),
                                .C_i(reg_to_carry),
                                .C_o(C_n[28]),
                                .P_o(P_o[27])
                            );
                        end
                        SWR-1:begin
                            assign P_o[j] = Op_A_i[j] ^ Op_B_i[j];
                        end
                        default:begin
                            Comb_1b Cbit(
                                .Op_A_i(Op_A_i[j]),
                                .Op_B_i(Op_B_i[j]),
                                .C_i(C_n[j]),
                                .C_o(C_n[j+1]),
                                .P_o(P_o[j])
                            );
                        end
                    endcase
                end
            end
        endcase
    endgenerate
    
	//always @(C_n)
	//	Cn_o <= C_n;
   RegisterAdd #(.W(SWR-1)) C_Result(
                .clk (clk),
                .rst (rst),
                .load (1'b1),
                .D (C_n),
                .Q (Cn_o)
                );
endmodule
