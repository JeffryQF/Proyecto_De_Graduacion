// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
// Date        : Sat Apr 30 19:21:52 2016
// Host        : francis-Aspire-E1-570 running 64-bit Ubuntu 15.10
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               {/media/francis/Acer/Users/Francis/Documents/GitHub/Proyecto_De_Graduacion/Proyecto_version_inicial_Diego/Iteracion 1/Iteracion 1.sim/sim_1/impl/timing/TB32_ZDetector_time_impl.v}
// Design      : FPU_Multiplication_Function
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Eight_Phase_M
   (Q,
    \F_ieee_result[31] ,
    E,
    D,
    clk_IBUF_BUFG,
    AR,
    \FSM_sequential_state_reg_reg[3] ,
    \Q_reg[31] );
  output [31:0]Q;
  output [31:0]\F_ieee_result[31] ;
  input [0:0]E;
  input [31:0]D;
  input clk_IBUF_BUFG;
  input [1:0]AR;
  input [0:0]\FSM_sequential_state_reg_reg[3] ;
  input [31:0]\Q_reg[31] ;

  wire [1:0]AR;
  wire [31:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_sequential_state_reg_reg[3] ;
  wire [31:0]\F_ieee_result[31] ;
  wire [31:0]Q;
  wire [31:0]\Q_reg[31] ;
  wire clk_IBUF_BUFG;

  RegisterMult IEEE_BitStream_Reg
       (.AR(AR),
        .D(D),
        .E(E),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  RegisterMult_0 IEEE_F_R_Reg
       (.AR(AR),
        .\FSM_sequential_state_reg_reg[3] (\FSM_sequential_state_reg_reg[3] ),
        .\F_ieee_result[31] (\F_ieee_result[31] ),
        .\Q_reg[31]_0 (\Q_reg[31] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
endmodule

(* ECO_CHECKSUM = "b1692328" *) (* S_Exp = "9" *) (* W = "32" *) 
(* W_Exp = "8" *) (* W_Sgf = "23" *) 
(* NotValidForBitStream *)
module FPU_Multiplication_Function
   (clk,
    rst,
    beg_FSM,
    rst_FSM,
    Data_MX,
    Data_MY,
    round_mode,
    overflow_flag,
    underflow_flag,
    ready_flag,
    F_ieee_result);
  input clk;
  input rst;
  input beg_FSM;
  input rst_FSM;
  input [31:0]Data_MX;
  input [31:0]Data_MY;
  input [1:0]round_mode;
  output overflow_flag;
  output underflow_flag;
  output ready_flag;
  output [31:0]F_ieee_result;

  wire AddSub_ExpBias_Funct_n_0;
  wire AddSub_ExpBias_Funct_n_1;
  wire AddSub_ExpBias_Funct_n_2;
  wire AddSub_ExpBias_Funct_n_3;
  wire AddSub_ExpBias_Funct_n_4;
  wire AddSub_ExpBias_Funct_n_5;
  wire AddSub_ExpBias_Funct_n_6;
  wire AddSub_ExpBias_Funct_n_7;
  wire AddSub_ExpBias_Funct_n_8;
  wire AddSub_ExpBias_Funct_n_9;
  wire [7:0]Data_A;
  wire [31:0]Data_MX;
  wire [31:0]Data_MX_IBUF;
  wire [31:0]Data_MY;
  wire [31:0]Data_MY_IBUF;
  wire Exp_Update_Function_n_1;
  wire Exp_Update_Function_n_2;
  wire Exp_Update_Function_n_3;
  wire Exp_Update_Function_n_4;
  wire Exp_Update_Function_n_5;
  wire Exp_Update_Function_n_6;
  wire Exp_Update_Function_n_7;
  wire Exp_Update_Function_n_8;
  wire Exponent_load_reg_n_0;
  wire Exponent_load_reg_n_10;
  wire Exponent_load_reg_n_11;
  wire Exponent_load_reg_n_12;
  wire Exponent_load_reg_n_13;
  wire Exponent_load_reg_n_14;
  wire Exponent_load_reg_n_15;
  wire Exponent_load_reg_n_16;
  wire Exponent_load_reg_n_17;
  wire Exponent_load_reg_n_18;
  wire Exponent_load_reg_n_19;
  wire Exponent_load_reg_n_20;
  wire Exponent_load_reg_n_21;
  wire Exponent_load_reg_n_22;
  wire Exponent_load_reg_n_23;
  wire Exponent_load_reg_n_24;
  wire Exponent_load_reg_n_25;
  wire Exponent_load_reg_n_26;
  wire Exponent_load_reg_n_27;
  wire Exponent_load_reg_n_28;
  wire Exponent_load_reg_n_29;
  wire Exponent_load_reg_n_30;
  wire Exponent_load_reg_n_31;
  wire Exponent_load_reg_n_32;
  wire Exponent_load_reg_n_34;
  wire Exponent_load_reg_n_35;
  wire Exponent_load_reg_n_36;
  wire Exponent_load_reg_n_37;
  wire Exponent_load_reg_n_38;
  wire Exponent_load_reg_n_39;
  wire Exponent_load_reg_n_40;
  wire Exponent_load_reg_n_41;
  wire Exponent_load_reg_n_42;
  wire Exponent_load_reg_n_43;
  wire Exponent_load_reg_n_44;
  wire Exponent_load_reg_n_45;
  wire Exponent_load_reg_n_46;
  wire Exponent_load_reg_n_47;
  wire Exponent_load_reg_n_48;
  wire Exponent_load_reg_n_49;
  wire Exponent_load_reg_n_50;
  wire Exponent_load_reg_n_51;
  wire Exponent_load_reg_n_52;
  wire Exponent_load_reg_n_53;
  wire Exponent_load_reg_n_54;
  wire Exponent_load_reg_n_55;
  wire Exponent_load_reg_n_56;
  wire Exponent_load_reg_n_57;
  wire Exponent_load_reg_n_58;
  wire Exponent_load_reg_n_59;
  wire Exponent_load_reg_n_60;
  wire Exponent_load_reg_n_61;
  wire Exponent_load_reg_n_62;
  wire Exponent_load_reg_n_63;
  wire Exponent_load_reg_n_64;
  wire Exponent_load_reg_n_66;
  wire Exponent_load_reg_n_67;
  wire Exponent_load_reg_n_68;
  wire FSM_FPU_Multiplication_n_0;
  wire FSM_FPU_Multiplication_n_1;
  wire FSM_FPU_Multiplication_n_10;
  wire FSM_FPU_Multiplication_n_11;
  wire FSM_FPU_Multiplication_n_12;
  wire FSM_FPU_Multiplication_n_13;
  wire FSM_FPU_Multiplication_n_14;
  wire FSM_FPU_Multiplication_n_15;
  wire FSM_FPU_Multiplication_n_16;
  wire FSM_FPU_Multiplication_n_17;
  wire FSM_FPU_Multiplication_n_18;
  wire FSM_FPU_Multiplication_n_19;
  wire FSM_FPU_Multiplication_n_2;
  wire FSM_FPU_Multiplication_n_20;
  wire FSM_FPU_Multiplication_n_21;
  wire FSM_FPU_Multiplication_n_22;
  wire FSM_FPU_Multiplication_n_23;
  wire FSM_FPU_Multiplication_n_24;
  wire FSM_FPU_Multiplication_n_25;
  wire FSM_FPU_Multiplication_n_26;
  wire FSM_FPU_Multiplication_n_27;
  wire FSM_FPU_Multiplication_n_28;
  wire FSM_FPU_Multiplication_n_29;
  wire FSM_FPU_Multiplication_n_3;
  wire FSM_FPU_Multiplication_n_30;
  wire FSM_FPU_Multiplication_n_33;
  wire FSM_FPU_Multiplication_n_4;
  wire FSM_FPU_Multiplication_n_5;
  wire FSM_FPU_Multiplication_n_51;
  wire FSM_FPU_Multiplication_n_6;
  wire FSM_FPU_Multiplication_n_7;
  wire FSM_FPU_Multiplication_n_8;
  wire FSM_FPU_Multiplication_n_9;
  wire FT_exp_info_n_10;
  wire FT_exp_info_n_3;
  wire FT_exp_info_n_4;
  wire FT_exp_info_n_5;
  wire FT_exp_info_n_6;
  wire FT_exp_info_n_7;
  wire FT_exp_info_n_8;
  wire FT_exp_info_n_9;
  wire [31:0]F_ieee_result;
  wire [31:0]F_ieee_result_OBUF;
  wire Final_Result_Module_n_0;
  wire Final_Result_Module_n_1;
  wire Final_Result_Module_n_10;
  wire Final_Result_Module_n_11;
  wire Final_Result_Module_n_12;
  wire Final_Result_Module_n_13;
  wire Final_Result_Module_n_14;
  wire Final_Result_Module_n_15;
  wire Final_Result_Module_n_16;
  wire Final_Result_Module_n_17;
  wire Final_Result_Module_n_18;
  wire Final_Result_Module_n_19;
  wire Final_Result_Module_n_2;
  wire Final_Result_Module_n_20;
  wire Final_Result_Module_n_21;
  wire Final_Result_Module_n_22;
  wire Final_Result_Module_n_23;
  wire Final_Result_Module_n_24;
  wire Final_Result_Module_n_25;
  wire Final_Result_Module_n_26;
  wire Final_Result_Module_n_27;
  wire Final_Result_Module_n_28;
  wire Final_Result_Module_n_29;
  wire Final_Result_Module_n_3;
  wire Final_Result_Module_n_30;
  wire Final_Result_Module_n_31;
  wire Final_Result_Module_n_4;
  wire Final_Result_Module_n_5;
  wire Final_Result_Module_n_6;
  wire Final_Result_Module_n_7;
  wire Final_Result_Module_n_8;
  wire Final_Result_Module_n_9;
  wire First_Normalization_RSignificand_n_0;
  wire First_Normalization_RSignificand_n_1;
  wire First_Normalization_RSignificand_n_10;
  wire First_Normalization_RSignificand_n_11;
  wire First_Normalization_RSignificand_n_12;
  wire First_Normalization_RSignificand_n_13;
  wire First_Normalization_RSignificand_n_14;
  wire First_Normalization_RSignificand_n_15;
  wire First_Normalization_RSignificand_n_16;
  wire First_Normalization_RSignificand_n_17;
  wire First_Normalization_RSignificand_n_18;
  wire First_Normalization_RSignificand_n_19;
  wire First_Normalization_RSignificand_n_2;
  wire First_Normalization_RSignificand_n_20;
  wire First_Normalization_RSignificand_n_21;
  wire First_Normalization_RSignificand_n_22;
  wire First_Normalization_RSignificand_n_23;
  wire First_Normalization_RSignificand_n_24;
  wire First_Normalization_RSignificand_n_25;
  wire First_Normalization_RSignificand_n_26;
  wire First_Normalization_RSignificand_n_27;
  wire First_Normalization_RSignificand_n_28;
  wire First_Normalization_RSignificand_n_29;
  wire First_Normalization_RSignificand_n_3;
  wire First_Normalization_RSignificand_n_30;
  wire First_Normalization_RSignificand_n_31;
  wire First_Normalization_RSignificand_n_32;
  wire First_Normalization_RSignificand_n_33;
  wire First_Normalization_RSignificand_n_34;
  wire First_Normalization_RSignificand_n_35;
  wire First_Normalization_RSignificand_n_36;
  wire First_Normalization_RSignificand_n_37;
  wire First_Normalization_RSignificand_n_38;
  wire First_Normalization_RSignificand_n_39;
  wire First_Normalization_RSignificand_n_4;
  wire First_Normalization_RSignificand_n_40;
  wire First_Normalization_RSignificand_n_41;
  wire First_Normalization_RSignificand_n_42;
  wire First_Normalization_RSignificand_n_43;
  wire First_Normalization_RSignificand_n_44;
  wire First_Normalization_RSignificand_n_45;
  wire First_Normalization_RSignificand_n_46;
  wire First_Normalization_RSignificand_n_5;
  wire First_Normalization_RSignificand_n_6;
  wire First_Normalization_RSignificand_n_7;
  wire First_Normalization_RSignificand_n_8;
  wire First_Normalization_RSignificand_n_9;
  wire [31:31]Op_MX;
  wire [31:31]Op_MY;
  wire \Q_reg[23]_i_3_n_0 ;
  wire Round_Significand_Function_n_0;
  wire Round_Significand_Function_n_1;
  wire Round_Significand_Function_n_10;
  wire Round_Significand_Function_n_11;
  wire Round_Significand_Function_n_12;
  wire Round_Significand_Function_n_13;
  wire Round_Significand_Function_n_14;
  wire Round_Significand_Function_n_15;
  wire Round_Significand_Function_n_16;
  wire Round_Significand_Function_n_17;
  wire Round_Significand_Function_n_18;
  wire Round_Significand_Function_n_19;
  wire Round_Significand_Function_n_2;
  wire Round_Significand_Function_n_20;
  wire Round_Significand_Function_n_21;
  wire Round_Significand_Function_n_22;
  wire Round_Significand_Function_n_23;
  wire Round_Significand_Function_n_24;
  wire Round_Significand_Function_n_25;
  wire Round_Significand_Function_n_3;
  wire Round_Significand_Function_n_4;
  wire Round_Significand_Function_n_5;
  wire Round_Significand_Function_n_6;
  wire Round_Significand_Function_n_7;
  wire Round_Significand_Function_n_8;
  wire Round_Significand_Function_n_9;
  wire Sgn_Info;
  wire Significands_Multiplication_Funct_n_0;
  wire Significands_Multiplication_Funct_n_1;
  wire Significands_Multiplication_Funct_n_10;
  wire Significands_Multiplication_Funct_n_11;
  wire Significands_Multiplication_Funct_n_12;
  wire Significands_Multiplication_Funct_n_13;
  wire Significands_Multiplication_Funct_n_14;
  wire Significands_Multiplication_Funct_n_15;
  wire Significands_Multiplication_Funct_n_16;
  wire Significands_Multiplication_Funct_n_17;
  wire Significands_Multiplication_Funct_n_18;
  wire Significands_Multiplication_Funct_n_19;
  wire Significands_Multiplication_Funct_n_2;
  wire Significands_Multiplication_Funct_n_20;
  wire Significands_Multiplication_Funct_n_21;
  wire Significands_Multiplication_Funct_n_22;
  wire Significands_Multiplication_Funct_n_23;
  wire Significands_Multiplication_Funct_n_24;
  wire Significands_Multiplication_Funct_n_25;
  wire Significands_Multiplication_Funct_n_26;
  wire Significands_Multiplication_Funct_n_27;
  wire Significands_Multiplication_Funct_n_28;
  wire Significands_Multiplication_Funct_n_29;
  wire Significands_Multiplication_Funct_n_3;
  wire Significands_Multiplication_Funct_n_31;
  wire Significands_Multiplication_Funct_n_32;
  wire Significands_Multiplication_Funct_n_33;
  wire Significands_Multiplication_Funct_n_34;
  wire Significands_Multiplication_Funct_n_35;
  wire Significands_Multiplication_Funct_n_4;
  wire Significands_Multiplication_Funct_n_5;
  wire Significands_Multiplication_Funct_n_6;
  wire Significands_Multiplication_Funct_n_7;
  wire Significands_Multiplication_Funct_n_8;
  wire Significands_Multiplication_Funct_n_9;
  wire Underflow_Management_State_n_1;
  wire Underflow_Management_State_n_2;
  wire Underflow_Management_State_n_3;
  wire Underflow_Management_State_n_4;
  wire Underflow_Management_State_n_5;
  wire Underflow_Management_State_n_6;
  wire Underflow_Management_State_n_7;
  wire Underflow_Management_State_n_8;
  wire Underflow_Management_State_n_9;
  wire beg_FSM;
  wire beg_FSM_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire ctrl;
  wire load_0;
  wire load_1;
  wire load_10;
  wire load_11;
  wire load_12;
  wire load_2;
  wire load_3;
  wire load_4;
  wire load_4_A;
  wire load_5;
  wire load_6;
  wire load_7;
  wire load_8;
  wire load_9;
  wire overflow_comp_a;
  wire overflow_comp_b;
  wire overflow_cout;
  wire overflow_flag;
  wire overflow_flag_OBUF;
  wire ready_flag;
  wire ready_flag_OBUF;
  wire [1:0]round_mode;
  wire [1:0]round_mode_IBUF;
  wire rst;
  wire rst_FSM;
  wire rst_FSM_IBUF;
  wire rst_IBUF;
  wire rst_int;
  wire selector_a;
  wire selector_b;
  wire selector_c;
  wire underflow_flag;
  wire underflow_flag_OBUF;
  wire zero_m_flag;

initial begin
 $sdf_annotate("TB32_ZDetector_time_impl.sdf",,,,"tool_control");
end
  Second_Phase_M AddSub_ExpBias_Funct
       (.AR(rst_int),
        .D({Underflow_Management_State_n_1,Underflow_Management_State_n_2,Underflow_Management_State_n_3,Underflow_Management_State_n_4,Underflow_Management_State_n_5,Underflow_Management_State_n_6,Underflow_Management_State_n_7,Underflow_Management_State_n_8,Underflow_Management_State_n_9}),
        .E(load_2),
        .Q({AddSub_ExpBias_Funct_n_0,AddSub_ExpBias_Funct_n_1,AddSub_ExpBias_Funct_n_2,AddSub_ExpBias_Funct_n_3,AddSub_ExpBias_Funct_n_4,AddSub_ExpBias_Funct_n_5,AddSub_ExpBias_Funct_n_6,AddSub_ExpBias_Funct_n_7,AddSub_ExpBias_Funct_n_8}),
        .\Q_reg[0] (AddSub_ExpBias_Funct_n_9),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  IBUF \Data_MX_IBUF[0]_inst 
       (.I(Data_MX[0]),
        .O(Data_MX_IBUF[0]));
  IBUF \Data_MX_IBUF[10]_inst 
       (.I(Data_MX[10]),
        .O(Data_MX_IBUF[10]));
  IBUF \Data_MX_IBUF[11]_inst 
       (.I(Data_MX[11]),
        .O(Data_MX_IBUF[11]));
  IBUF \Data_MX_IBUF[12]_inst 
       (.I(Data_MX[12]),
        .O(Data_MX_IBUF[12]));
  IBUF \Data_MX_IBUF[13]_inst 
       (.I(Data_MX[13]),
        .O(Data_MX_IBUF[13]));
  IBUF \Data_MX_IBUF[14]_inst 
       (.I(Data_MX[14]),
        .O(Data_MX_IBUF[14]));
  IBUF \Data_MX_IBUF[15]_inst 
       (.I(Data_MX[15]),
        .O(Data_MX_IBUF[15]));
  IBUF \Data_MX_IBUF[16]_inst 
       (.I(Data_MX[16]),
        .O(Data_MX_IBUF[16]));
  IBUF \Data_MX_IBUF[17]_inst 
       (.I(Data_MX[17]),
        .O(Data_MX_IBUF[17]));
  IBUF \Data_MX_IBUF[18]_inst 
       (.I(Data_MX[18]),
        .O(Data_MX_IBUF[18]));
  IBUF \Data_MX_IBUF[19]_inst 
       (.I(Data_MX[19]),
        .O(Data_MX_IBUF[19]));
  IBUF \Data_MX_IBUF[1]_inst 
       (.I(Data_MX[1]),
        .O(Data_MX_IBUF[1]));
  IBUF \Data_MX_IBUF[20]_inst 
       (.I(Data_MX[20]),
        .O(Data_MX_IBUF[20]));
  IBUF \Data_MX_IBUF[21]_inst 
       (.I(Data_MX[21]),
        .O(Data_MX_IBUF[21]));
  IBUF \Data_MX_IBUF[22]_inst 
       (.I(Data_MX[22]),
        .O(Data_MX_IBUF[22]));
  IBUF \Data_MX_IBUF[23]_inst 
       (.I(Data_MX[23]),
        .O(Data_MX_IBUF[23]));
  IBUF \Data_MX_IBUF[24]_inst 
       (.I(Data_MX[24]),
        .O(Data_MX_IBUF[24]));
  IBUF \Data_MX_IBUF[25]_inst 
       (.I(Data_MX[25]),
        .O(Data_MX_IBUF[25]));
  IBUF \Data_MX_IBUF[26]_inst 
       (.I(Data_MX[26]),
        .O(Data_MX_IBUF[26]));
  IBUF \Data_MX_IBUF[27]_inst 
       (.I(Data_MX[27]),
        .O(Data_MX_IBUF[27]));
  IBUF \Data_MX_IBUF[28]_inst 
       (.I(Data_MX[28]),
        .O(Data_MX_IBUF[28]));
  IBUF \Data_MX_IBUF[29]_inst 
       (.I(Data_MX[29]),
        .O(Data_MX_IBUF[29]));
  IBUF \Data_MX_IBUF[2]_inst 
       (.I(Data_MX[2]),
        .O(Data_MX_IBUF[2]));
  IBUF \Data_MX_IBUF[30]_inst 
       (.I(Data_MX[30]),
        .O(Data_MX_IBUF[30]));
  IBUF \Data_MX_IBUF[31]_inst 
       (.I(Data_MX[31]),
        .O(Data_MX_IBUF[31]));
  IBUF \Data_MX_IBUF[3]_inst 
       (.I(Data_MX[3]),
        .O(Data_MX_IBUF[3]));
  IBUF \Data_MX_IBUF[4]_inst 
       (.I(Data_MX[4]),
        .O(Data_MX_IBUF[4]));
  IBUF \Data_MX_IBUF[5]_inst 
       (.I(Data_MX[5]),
        .O(Data_MX_IBUF[5]));
  IBUF \Data_MX_IBUF[6]_inst 
       (.I(Data_MX[6]),
        .O(Data_MX_IBUF[6]));
  IBUF \Data_MX_IBUF[7]_inst 
       (.I(Data_MX[7]),
        .O(Data_MX_IBUF[7]));
  IBUF \Data_MX_IBUF[8]_inst 
       (.I(Data_MX[8]),
        .O(Data_MX_IBUF[8]));
  IBUF \Data_MX_IBUF[9]_inst 
       (.I(Data_MX[9]),
        .O(Data_MX_IBUF[9]));
  IBUF \Data_MY_IBUF[0]_inst 
       (.I(Data_MY[0]),
        .O(Data_MY_IBUF[0]));
  IBUF \Data_MY_IBUF[10]_inst 
       (.I(Data_MY[10]),
        .O(Data_MY_IBUF[10]));
  IBUF \Data_MY_IBUF[11]_inst 
       (.I(Data_MY[11]),
        .O(Data_MY_IBUF[11]));
  IBUF \Data_MY_IBUF[12]_inst 
       (.I(Data_MY[12]),
        .O(Data_MY_IBUF[12]));
  IBUF \Data_MY_IBUF[13]_inst 
       (.I(Data_MY[13]),
        .O(Data_MY_IBUF[13]));
  IBUF \Data_MY_IBUF[14]_inst 
       (.I(Data_MY[14]),
        .O(Data_MY_IBUF[14]));
  IBUF \Data_MY_IBUF[15]_inst 
       (.I(Data_MY[15]),
        .O(Data_MY_IBUF[15]));
  IBUF \Data_MY_IBUF[16]_inst 
       (.I(Data_MY[16]),
        .O(Data_MY_IBUF[16]));
  IBUF \Data_MY_IBUF[17]_inst 
       (.I(Data_MY[17]),
        .O(Data_MY_IBUF[17]));
  IBUF \Data_MY_IBUF[18]_inst 
       (.I(Data_MY[18]),
        .O(Data_MY_IBUF[18]));
  IBUF \Data_MY_IBUF[19]_inst 
       (.I(Data_MY[19]),
        .O(Data_MY_IBUF[19]));
  IBUF \Data_MY_IBUF[1]_inst 
       (.I(Data_MY[1]),
        .O(Data_MY_IBUF[1]));
  IBUF \Data_MY_IBUF[20]_inst 
       (.I(Data_MY[20]),
        .O(Data_MY_IBUF[20]));
  IBUF \Data_MY_IBUF[21]_inst 
       (.I(Data_MY[21]),
        .O(Data_MY_IBUF[21]));
  IBUF \Data_MY_IBUF[22]_inst 
       (.I(Data_MY[22]),
        .O(Data_MY_IBUF[22]));
  IBUF \Data_MY_IBUF[23]_inst 
       (.I(Data_MY[23]),
        .O(Data_MY_IBUF[23]));
  IBUF \Data_MY_IBUF[24]_inst 
       (.I(Data_MY[24]),
        .O(Data_MY_IBUF[24]));
  IBUF \Data_MY_IBUF[25]_inst 
       (.I(Data_MY[25]),
        .O(Data_MY_IBUF[25]));
  IBUF \Data_MY_IBUF[26]_inst 
       (.I(Data_MY[26]),
        .O(Data_MY_IBUF[26]));
  IBUF \Data_MY_IBUF[27]_inst 
       (.I(Data_MY[27]),
        .O(Data_MY_IBUF[27]));
  IBUF \Data_MY_IBUF[28]_inst 
       (.I(Data_MY[28]),
        .O(Data_MY_IBUF[28]));
  IBUF \Data_MY_IBUF[29]_inst 
       (.I(Data_MY[29]),
        .O(Data_MY_IBUF[29]));
  IBUF \Data_MY_IBUF[2]_inst 
       (.I(Data_MY[2]),
        .O(Data_MY_IBUF[2]));
  IBUF \Data_MY_IBUF[30]_inst 
       (.I(Data_MY[30]),
        .O(Data_MY_IBUF[30]));
  IBUF \Data_MY_IBUF[31]_inst 
       (.I(Data_MY[31]),
        .O(Data_MY_IBUF[31]));
  IBUF \Data_MY_IBUF[3]_inst 
       (.I(Data_MY[3]),
        .O(Data_MY_IBUF[3]));
  IBUF \Data_MY_IBUF[4]_inst 
       (.I(Data_MY[4]),
        .O(Data_MY_IBUF[4]));
  IBUF \Data_MY_IBUF[5]_inst 
       (.I(Data_MY[5]),
        .O(Data_MY_IBUF[5]));
  IBUF \Data_MY_IBUF[6]_inst 
       (.I(Data_MY[6]),
        .O(Data_MY_IBUF[6]));
  IBUF \Data_MY_IBUF[7]_inst 
       (.I(Data_MY[7]),
        .O(Data_MY_IBUF[7]));
  IBUF \Data_MY_IBUF[8]_inst 
       (.I(Data_MY[8]),
        .O(Data_MY_IBUF[8]));
  IBUF \Data_MY_IBUF[9]_inst 
       (.I(Data_MY[9]),
        .O(Data_MY_IBUF[9]));
  Sixth_Phase_M Exp_Update_Function
       (.AR(rst_int),
        .E(load_6),
        .\FSM_sequential_state_reg_reg[4] (load_7),
        .Q({Exp_Update_Function_n_1,Exp_Update_Function_n_2,Exp_Update_Function_n_3,Exp_Update_Function_n_4,Exp_Update_Function_n_5,Exp_Update_Function_n_6,Exp_Update_Function_n_7,Exp_Update_Function_n_8}),
        .\Q_reg[0] (First_Normalization_RSignificand_n_0),
        .\Q_reg[7] ({FT_exp_info_n_3,FT_exp_info_n_4,FT_exp_info_n_5,FT_exp_info_n_6,FT_exp_info_n_7,FT_exp_info_n_8,FT_exp_info_n_9,FT_exp_info_n_10}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .overflow_comp_b(overflow_comp_b),
        .selector_b(selector_b));
  First_Phase_M Exponent_load_reg
       (.AR({FSM_FPU_Multiplication_n_33,FSM_FPU_Multiplication_n_51}),
        .D(Exponent_load_reg_n_0),
        .\Data_MX[31] (Data_MX_IBUF),
        .\Data_MY[31] (Data_MY_IBUF),
        .E(load_1),
        .P({Significands_Multiplication_Funct_n_25,Significands_Multiplication_Funct_n_26,Significands_Multiplication_Funct_n_27,Significands_Multiplication_Funct_n_28,Significands_Multiplication_Funct_n_29}),
        .Q(Final_Result_Module_n_0),
        .\Q_reg[0] (Exponent_load_reg_n_68),
        .\Q_reg[23]_i_3 (\Q_reg[23]_i_3_n_0 ),
        .\Q_reg[31] ({Op_MX,Data_A,Exponent_load_reg_n_10,Exponent_load_reg_n_11,Exponent_load_reg_n_12,Exponent_load_reg_n_13,Exponent_load_reg_n_14,Exponent_load_reg_n_15,Exponent_load_reg_n_16,Exponent_load_reg_n_17,Exponent_load_reg_n_18,Exponent_load_reg_n_19,Exponent_load_reg_n_20,Exponent_load_reg_n_21,Exponent_load_reg_n_22,Exponent_load_reg_n_23,Exponent_load_reg_n_24,Exponent_load_reg_n_25,Exponent_load_reg_n_26,Exponent_load_reg_n_27,Exponent_load_reg_n_28,Exponent_load_reg_n_29,Exponent_load_reg_n_30,Exponent_load_reg_n_31,Exponent_load_reg_n_32}),
        .\Q_reg[31]_0 ({Op_MY,Exponent_load_reg_n_34,Exponent_load_reg_n_35,Exponent_load_reg_n_36,Exponent_load_reg_n_37,Exponent_load_reg_n_38,Exponent_load_reg_n_39,Exponent_load_reg_n_40,Exponent_load_reg_n_41,Exponent_load_reg_n_42,Exponent_load_reg_n_43,Exponent_load_reg_n_44,Exponent_load_reg_n_45,Exponent_load_reg_n_46,Exponent_load_reg_n_47,Exponent_load_reg_n_48,Exponent_load_reg_n_49,Exponent_load_reg_n_50,Exponent_load_reg_n_51,Exponent_load_reg_n_52,Exponent_load_reg_n_53,Exponent_load_reg_n_54,Exponent_load_reg_n_55,Exponent_load_reg_n_56,Exponent_load_reg_n_57,Exponent_load_reg_n_58,Exponent_load_reg_n_59,Exponent_load_reg_n_60,Exponent_load_reg_n_61,Exponent_load_reg_n_62,Exponent_load_reg_n_63,Exponent_load_reg_n_64}),
        .\Q_reg[31]_1 (Sgn_Info),
        .\Q_reg[3] (Exponent_load_reg_n_66),
        .\Q_reg[3]_0 (Exponent_load_reg_n_67),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .load_0(load_0),
        .round_mode_IBUF(round_mode_IBUF),
        .selector_c(selector_c),
        .zero_m_flag(zero_m_flag));
  FSM_Mult_Function FSM_FPU_Multiplication
       (.AR({rst_int,FSM_FPU_Multiplication_n_33}),
        .D({FSM_FPU_Multiplication_n_0,FSM_FPU_Multiplication_n_1,FSM_FPU_Multiplication_n_2,FSM_FPU_Multiplication_n_3,FSM_FPU_Multiplication_n_4,FSM_FPU_Multiplication_n_5,FSM_FPU_Multiplication_n_6,FSM_FPU_Multiplication_n_7,FSM_FPU_Multiplication_n_8,FSM_FPU_Multiplication_n_9,FSM_FPU_Multiplication_n_10,FSM_FPU_Multiplication_n_11,FSM_FPU_Multiplication_n_12,FSM_FPU_Multiplication_n_13,FSM_FPU_Multiplication_n_14,FSM_FPU_Multiplication_n_15,FSM_FPU_Multiplication_n_16,FSM_FPU_Multiplication_n_17,FSM_FPU_Multiplication_n_18,FSM_FPU_Multiplication_n_19,FSM_FPU_Multiplication_n_20,FSM_FPU_Multiplication_n_21,FSM_FPU_Multiplication_n_22,FSM_FPU_Multiplication_n_23,FSM_FPU_Multiplication_n_24,FSM_FPU_Multiplication_n_25,FSM_FPU_Multiplication_n_26,FSM_FPU_Multiplication_n_27,FSM_FPU_Multiplication_n_28,FSM_FPU_Multiplication_n_29,FSM_FPU_Multiplication_n_30}),
        .E(load_8),
        .Q({Final_Result_Module_n_1,Final_Result_Module_n_2,Final_Result_Module_n_3,Final_Result_Module_n_4,Final_Result_Module_n_5,Final_Result_Module_n_6,Final_Result_Module_n_7,Final_Result_Module_n_8,Final_Result_Module_n_9,Final_Result_Module_n_10,Final_Result_Module_n_11,Final_Result_Module_n_12,Final_Result_Module_n_13,Final_Result_Module_n_14,Final_Result_Module_n_15,Final_Result_Module_n_16,Final_Result_Module_n_17,Final_Result_Module_n_18,Final_Result_Module_n_19,Final_Result_Module_n_20,Final_Result_Module_n_21,Final_Result_Module_n_22,Final_Result_Module_n_23,Final_Result_Module_n_24,Final_Result_Module_n_25,Final_Result_Module_n_26,Final_Result_Module_n_27,Final_Result_Module_n_28,Final_Result_Module_n_29,Final_Result_Module_n_30,Final_Result_Module_n_31}),
        .\Q_reg[0] (load_7),
        .\Q_reg[0]_0 (load_11),
        .\Q_reg[0]_1 (load_1),
        .\Q_reg[0]_2 (load_5),
        .\Q_reg[0]_3 (load_6),
        .\Q_reg[0]_4 (load_10),
        .\Q_reg[0]_5 (load_2),
        .\Q_reg[0]_6 (load_3),
        .\Q_reg[0]_7 (load_9),
        .\Q_reg[0]_8 (load_4_A),
        .\Q_reg[0]_9 (load_4),
        .\Q_reg[14] (FSM_FPU_Multiplication_n_51),
        .beg_FSM_IBUF(beg_FSM_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .in1(rst_IBUF),
        .load_0(load_0),
        .load_12(load_12),
        .overflow_comp_a(overflow_comp_a),
        .overflow_comp_b(overflow_comp_b),
        .overflow_cout(overflow_cout),
        .ready_flag_OBUF(ready_flag_OBUF),
        .rst_FSM_IBUF(rst_FSM_IBUF),
        .selector_a(selector_a),
        .selector_b(selector_b),
        .selector_c(selector_c),
        .underflow_flag_OBUF(underflow_flag_OBUF),
        .zero_m_flag(zero_m_flag));
  Third_Phase_M FT_exp_info
       (.AR(rst_int),
        .E(load_3),
        .Q({AddSub_ExpBias_Funct_n_0,AddSub_ExpBias_Funct_n_1,AddSub_ExpBias_Funct_n_2,AddSub_ExpBias_Funct_n_3,AddSub_ExpBias_Funct_n_4,AddSub_ExpBias_Funct_n_5,AddSub_ExpBias_Funct_n_6,AddSub_ExpBias_Funct_n_7,AddSub_ExpBias_Funct_n_8}),
        .\Q_reg[4] (AddSub_ExpBias_Funct_n_9),
        .\Q_reg[7] ({FT_exp_info_n_3,FT_exp_info_n_4,FT_exp_info_n_5,FT_exp_info_n_6,FT_exp_info_n_7,FT_exp_info_n_8,FT_exp_info_n_9,FT_exp_info_n_10}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .overflow_comp_a(overflow_comp_a),
        .overflow_comp_b(overflow_comp_b),
        .overflow_cout(overflow_cout),
        .overflow_flag_OBUF(overflow_flag_OBUF));
  OBUF \F_ieee_result_OBUF[0]_inst 
       (.I(F_ieee_result_OBUF[0]),
        .O(F_ieee_result[0]));
  OBUF \F_ieee_result_OBUF[10]_inst 
       (.I(F_ieee_result_OBUF[10]),
        .O(F_ieee_result[10]));
  OBUF \F_ieee_result_OBUF[11]_inst 
       (.I(F_ieee_result_OBUF[11]),
        .O(F_ieee_result[11]));
  OBUF \F_ieee_result_OBUF[12]_inst 
       (.I(F_ieee_result_OBUF[12]),
        .O(F_ieee_result[12]));
  OBUF \F_ieee_result_OBUF[13]_inst 
       (.I(F_ieee_result_OBUF[13]),
        .O(F_ieee_result[13]));
  OBUF \F_ieee_result_OBUF[14]_inst 
       (.I(F_ieee_result_OBUF[14]),
        .O(F_ieee_result[14]));
  OBUF \F_ieee_result_OBUF[15]_inst 
       (.I(F_ieee_result_OBUF[15]),
        .O(F_ieee_result[15]));
  OBUF \F_ieee_result_OBUF[16]_inst 
       (.I(F_ieee_result_OBUF[16]),
        .O(F_ieee_result[16]));
  OBUF \F_ieee_result_OBUF[17]_inst 
       (.I(F_ieee_result_OBUF[17]),
        .O(F_ieee_result[17]));
  OBUF \F_ieee_result_OBUF[18]_inst 
       (.I(F_ieee_result_OBUF[18]),
        .O(F_ieee_result[18]));
  OBUF \F_ieee_result_OBUF[19]_inst 
       (.I(F_ieee_result_OBUF[19]),
        .O(F_ieee_result[19]));
  OBUF \F_ieee_result_OBUF[1]_inst 
       (.I(F_ieee_result_OBUF[1]),
        .O(F_ieee_result[1]));
  OBUF \F_ieee_result_OBUF[20]_inst 
       (.I(F_ieee_result_OBUF[20]),
        .O(F_ieee_result[20]));
  OBUF \F_ieee_result_OBUF[21]_inst 
       (.I(F_ieee_result_OBUF[21]),
        .O(F_ieee_result[21]));
  OBUF \F_ieee_result_OBUF[22]_inst 
       (.I(F_ieee_result_OBUF[22]),
        .O(F_ieee_result[22]));
  OBUF \F_ieee_result_OBUF[23]_inst 
       (.I(F_ieee_result_OBUF[23]),
        .O(F_ieee_result[23]));
  OBUF \F_ieee_result_OBUF[24]_inst 
       (.I(F_ieee_result_OBUF[24]),
        .O(F_ieee_result[24]));
  OBUF \F_ieee_result_OBUF[25]_inst 
       (.I(F_ieee_result_OBUF[25]),
        .O(F_ieee_result[25]));
  OBUF \F_ieee_result_OBUF[26]_inst 
       (.I(F_ieee_result_OBUF[26]),
        .O(F_ieee_result[26]));
  OBUF \F_ieee_result_OBUF[27]_inst 
       (.I(F_ieee_result_OBUF[27]),
        .O(F_ieee_result[27]));
  OBUF \F_ieee_result_OBUF[28]_inst 
       (.I(F_ieee_result_OBUF[28]),
        .O(F_ieee_result[28]));
  OBUF \F_ieee_result_OBUF[29]_inst 
       (.I(F_ieee_result_OBUF[29]),
        .O(F_ieee_result[29]));
  OBUF \F_ieee_result_OBUF[2]_inst 
       (.I(F_ieee_result_OBUF[2]),
        .O(F_ieee_result[2]));
  OBUF \F_ieee_result_OBUF[30]_inst 
       (.I(F_ieee_result_OBUF[30]),
        .O(F_ieee_result[30]));
  OBUF \F_ieee_result_OBUF[31]_inst 
       (.I(F_ieee_result_OBUF[31]),
        .O(F_ieee_result[31]));
  OBUF \F_ieee_result_OBUF[3]_inst 
       (.I(F_ieee_result_OBUF[3]),
        .O(F_ieee_result[3]));
  OBUF \F_ieee_result_OBUF[4]_inst 
       (.I(F_ieee_result_OBUF[4]),
        .O(F_ieee_result[4]));
  OBUF \F_ieee_result_OBUF[5]_inst 
       (.I(F_ieee_result_OBUF[5]),
        .O(F_ieee_result[5]));
  OBUF \F_ieee_result_OBUF[6]_inst 
       (.I(F_ieee_result_OBUF[6]),
        .O(F_ieee_result[6]));
  OBUF \F_ieee_result_OBUF[7]_inst 
       (.I(F_ieee_result_OBUF[7]),
        .O(F_ieee_result[7]));
  OBUF \F_ieee_result_OBUF[8]_inst 
       (.I(F_ieee_result_OBUF[8]),
        .O(F_ieee_result[8]));
  OBUF \F_ieee_result_OBUF[9]_inst 
       (.I(F_ieee_result_OBUF[9]),
        .O(F_ieee_result[9]));
  Eight_Phase_M Final_Result_Module
       (.AR({rst_int,FSM_FPU_Multiplication_n_33}),
        .D({Sgn_Info,Exp_Update_Function_n_1,Exp_Update_Function_n_2,Exp_Update_Function_n_3,Exp_Update_Function_n_4,Exp_Update_Function_n_5,Exp_Update_Function_n_6,Exp_Update_Function_n_7,Exp_Update_Function_n_8,First_Normalization_RSignificand_n_24,First_Normalization_RSignificand_n_25,First_Normalization_RSignificand_n_26,First_Normalization_RSignificand_n_27,First_Normalization_RSignificand_n_28,First_Normalization_RSignificand_n_29,First_Normalization_RSignificand_n_30,First_Normalization_RSignificand_n_31,First_Normalization_RSignificand_n_32,First_Normalization_RSignificand_n_33,First_Normalization_RSignificand_n_34,First_Normalization_RSignificand_n_35,First_Normalization_RSignificand_n_36,First_Normalization_RSignificand_n_37,First_Normalization_RSignificand_n_38,First_Normalization_RSignificand_n_39,First_Normalization_RSignificand_n_40,First_Normalization_RSignificand_n_41,First_Normalization_RSignificand_n_42,First_Normalization_RSignificand_n_43,First_Normalization_RSignificand_n_44,First_Normalization_RSignificand_n_45,First_Normalization_RSignificand_n_46}),
        .E(load_9),
        .\FSM_sequential_state_reg_reg[3] (load_10),
        .\F_ieee_result[31] (F_ieee_result_OBUF),
        .Q({Final_Result_Module_n_0,Final_Result_Module_n_1,Final_Result_Module_n_2,Final_Result_Module_n_3,Final_Result_Module_n_4,Final_Result_Module_n_5,Final_Result_Module_n_6,Final_Result_Module_n_7,Final_Result_Module_n_8,Final_Result_Module_n_9,Final_Result_Module_n_10,Final_Result_Module_n_11,Final_Result_Module_n_12,Final_Result_Module_n_13,Final_Result_Module_n_14,Final_Result_Module_n_15,Final_Result_Module_n_16,Final_Result_Module_n_17,Final_Result_Module_n_18,Final_Result_Module_n_19,Final_Result_Module_n_20,Final_Result_Module_n_21,Final_Result_Module_n_22,Final_Result_Module_n_23,Final_Result_Module_n_24,Final_Result_Module_n_25,Final_Result_Module_n_26,Final_Result_Module_n_27,Final_Result_Module_n_28,Final_Result_Module_n_29,Final_Result_Module_n_30,Final_Result_Module_n_31}),
        .\Q_reg[31] ({Exponent_load_reg_n_0,FSM_FPU_Multiplication_n_0,FSM_FPU_Multiplication_n_1,FSM_FPU_Multiplication_n_2,FSM_FPU_Multiplication_n_3,FSM_FPU_Multiplication_n_4,FSM_FPU_Multiplication_n_5,FSM_FPU_Multiplication_n_6,FSM_FPU_Multiplication_n_7,FSM_FPU_Multiplication_n_8,FSM_FPU_Multiplication_n_9,FSM_FPU_Multiplication_n_10,FSM_FPU_Multiplication_n_11,FSM_FPU_Multiplication_n_12,FSM_FPU_Multiplication_n_13,FSM_FPU_Multiplication_n_14,FSM_FPU_Multiplication_n_15,FSM_FPU_Multiplication_n_16,FSM_FPU_Multiplication_n_17,FSM_FPU_Multiplication_n_18,FSM_FPU_Multiplication_n_19,FSM_FPU_Multiplication_n_20,FSM_FPU_Multiplication_n_21,FSM_FPU_Multiplication_n_22,FSM_FPU_Multiplication_n_23,FSM_FPU_Multiplication_n_24,FSM_FPU_Multiplication_n_25,FSM_FPU_Multiplication_n_26,FSM_FPU_Multiplication_n_27,FSM_FPU_Multiplication_n_28,FSM_FPU_Multiplication_n_29,FSM_FPU_Multiplication_n_30}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  Fifth_Phase_M First_Normalization_RSignificand
       (.AR({rst_int,FSM_FPU_Multiplication_n_33}),
        .D({Significands_Multiplication_Funct_n_35,Round_Significand_Function_n_0,Round_Significand_Function_n_1,Round_Significand_Function_n_2,Round_Significand_Function_n_3,Round_Significand_Function_n_4,Round_Significand_Function_n_5,Round_Significand_Function_n_6,Round_Significand_Function_n_7,Round_Significand_Function_n_8,Round_Significand_Function_n_9,Round_Significand_Function_n_10,Round_Significand_Function_n_11,Round_Significand_Function_n_12,Round_Significand_Function_n_13,Round_Significand_Function_n_14,Round_Significand_Function_n_15,Round_Significand_Function_n_16,Round_Significand_Function_n_17,Round_Significand_Function_n_18,Round_Significand_Function_n_19,Round_Significand_Function_n_20,Round_Significand_Function_n_21,Round_Significand_Function_n_22}),
        .E(load_5),
        .Q({First_Normalization_RSignificand_n_1,First_Normalization_RSignificand_n_2,First_Normalization_RSignificand_n_3,First_Normalization_RSignificand_n_4,First_Normalization_RSignificand_n_5,First_Normalization_RSignificand_n_6,First_Normalization_RSignificand_n_7,First_Normalization_RSignificand_n_8,First_Normalization_RSignificand_n_9,First_Normalization_RSignificand_n_10,First_Normalization_RSignificand_n_11,First_Normalization_RSignificand_n_12,First_Normalization_RSignificand_n_13,First_Normalization_RSignificand_n_14,First_Normalization_RSignificand_n_15,First_Normalization_RSignificand_n_16,First_Normalization_RSignificand_n_17,First_Normalization_RSignificand_n_18,First_Normalization_RSignificand_n_19,First_Normalization_RSignificand_n_20,First_Normalization_RSignificand_n_21,First_Normalization_RSignificand_n_22,First_Normalization_RSignificand_n_23}),
        .\Q_reg[0] (First_Normalization_RSignificand_n_0),
        .\Q_reg[22] ({First_Normalization_RSignificand_n_24,First_Normalization_RSignificand_n_25,First_Normalization_RSignificand_n_26,First_Normalization_RSignificand_n_27,First_Normalization_RSignificand_n_28,First_Normalization_RSignificand_n_29,First_Normalization_RSignificand_n_30,First_Normalization_RSignificand_n_31,First_Normalization_RSignificand_n_32,First_Normalization_RSignificand_n_33,First_Normalization_RSignificand_n_34,First_Normalization_RSignificand_n_35,First_Normalization_RSignificand_n_36,First_Normalization_RSignificand_n_37,First_Normalization_RSignificand_n_38,First_Normalization_RSignificand_n_39,First_Normalization_RSignificand_n_40,First_Normalization_RSignificand_n_41,First_Normalization_RSignificand_n_42,First_Normalization_RSignificand_n_43,First_Normalization_RSignificand_n_44,First_Normalization_RSignificand_n_45,First_Normalization_RSignificand_n_46}),
        .\Q_reg[24] (Round_Significand_Function_n_25),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23]_i_3 
       (.C(clk_IBUF_BUFG),
        .CE(load_4),
        .CLR(FSM_FPU_Multiplication_n_51),
        .D(1'b1),
        .Q(\Q_reg[23]_i_3_n_0 ));
  Seventh_Phase_M Round_Significand_Function
       (.AR(FSM_FPU_Multiplication_n_51),
        .D({Round_Significand_Function_n_0,Round_Significand_Function_n_1,Round_Significand_Function_n_2,Round_Significand_Function_n_3,Round_Significand_Function_n_4,Round_Significand_Function_n_5,Round_Significand_Function_n_6,Round_Significand_Function_n_7,Round_Significand_Function_n_8,Round_Significand_Function_n_9,Round_Significand_Function_n_10,Round_Significand_Function_n_11,Round_Significand_Function_n_12,Round_Significand_Function_n_13,Round_Significand_Function_n_14,Round_Significand_Function_n_15,Round_Significand_Function_n_16,Round_Significand_Function_n_17,Round_Significand_Function_n_18,Round_Significand_Function_n_19,Round_Significand_Function_n_20,Round_Significand_Function_n_21,Round_Significand_Function_n_22}),
        .E(load_8),
        .P({Significands_Multiplication_Funct_n_0,Significands_Multiplication_Funct_n_1,Significands_Multiplication_Funct_n_2,Significands_Multiplication_Funct_n_3,Significands_Multiplication_Funct_n_4,Significands_Multiplication_Funct_n_5,Significands_Multiplication_Funct_n_6,Significands_Multiplication_Funct_n_7,Significands_Multiplication_Funct_n_8,Significands_Multiplication_Funct_n_9,Significands_Multiplication_Funct_n_10,Significands_Multiplication_Funct_n_11,Significands_Multiplication_Funct_n_12,Significands_Multiplication_Funct_n_13,Significands_Multiplication_Funct_n_14,Significands_Multiplication_Funct_n_15,Significands_Multiplication_Funct_n_16,Significands_Multiplication_Funct_n_17,Significands_Multiplication_Funct_n_18,Significands_Multiplication_Funct_n_19,Significands_Multiplication_Funct_n_20,Significands_Multiplication_Funct_n_21,Significands_Multiplication_Funct_n_22,Significands_Multiplication_Funct_n_23,Significands_Multiplication_Funct_n_24}),
        .Q({Round_Significand_Function_n_23,Round_Significand_Function_n_24}),
        .\Q_reg[0] (Round_Significand_Function_n_25),
        .\Q_reg[0]_0 (First_Normalization_RSignificand_n_46),
        .\Q_reg[13] (Significands_Multiplication_Funct_n_33),
        .\Q_reg[23] ({First_Normalization_RSignificand_n_1,First_Normalization_RSignificand_n_2,First_Normalization_RSignificand_n_3,First_Normalization_RSignificand_n_4,First_Normalization_RSignificand_n_5,First_Normalization_RSignificand_n_6,First_Normalization_RSignificand_n_7,First_Normalization_RSignificand_n_8,First_Normalization_RSignificand_n_9,First_Normalization_RSignificand_n_10,First_Normalization_RSignificand_n_11,First_Normalization_RSignificand_n_12,First_Normalization_RSignificand_n_13,First_Normalization_RSignificand_n_14,First_Normalization_RSignificand_n_15,First_Normalization_RSignificand_n_16,First_Normalization_RSignificand_n_17,First_Normalization_RSignificand_n_18,First_Normalization_RSignificand_n_19,First_Normalization_RSignificand_n_20,First_Normalization_RSignificand_n_21,First_Normalization_RSignificand_n_22,First_Normalization_RSignificand_n_23}),
        .\Q_reg[23]_i_3 (\Q_reg[23]_i_3_n_0 ),
        .\Q_reg[23]_i_3_0 (Exponent_load_reg_n_66),
        .\Q_reg[2] (Significands_Multiplication_Funct_n_34),
        .\Q_reg[3] (Significands_Multiplication_Funct_n_32),
        .\Q_reg[8] (Significands_Multiplication_Funct_n_31),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .p_0_in(ctrl),
        .selector_a(selector_a));
  Fourth_Phase_M Significands_Multiplication_Funct
       (.AR({FSM_FPU_Multiplication_n_33,FSM_FPU_Multiplication_n_51}),
        .D(Significands_Multiplication_Funct_n_35),
        .E(load_4),
        .\FSM_sequential_state_reg_reg[5] (load_4_A),
        .P({Significands_Multiplication_Funct_n_0,Significands_Multiplication_Funct_n_1,Significands_Multiplication_Funct_n_2,Significands_Multiplication_Funct_n_3,Significands_Multiplication_Funct_n_4,Significands_Multiplication_Funct_n_5,Significands_Multiplication_Funct_n_6,Significands_Multiplication_Funct_n_7,Significands_Multiplication_Funct_n_8,Significands_Multiplication_Funct_n_9,Significands_Multiplication_Funct_n_10,Significands_Multiplication_Funct_n_11,Significands_Multiplication_Funct_n_12,Significands_Multiplication_Funct_n_13,Significands_Multiplication_Funct_n_14,Significands_Multiplication_Funct_n_15,Significands_Multiplication_Funct_n_16,Significands_Multiplication_Funct_n_17,Significands_Multiplication_Funct_n_18,Significands_Multiplication_Funct_n_19,Significands_Multiplication_Funct_n_20,Significands_Multiplication_Funct_n_21,Significands_Multiplication_Funct_n_22,Significands_Multiplication_Funct_n_23,Significands_Multiplication_Funct_n_24,Significands_Multiplication_Funct_n_25,Significands_Multiplication_Funct_n_26,Significands_Multiplication_Funct_n_27,Significands_Multiplication_Funct_n_28,Significands_Multiplication_Funct_n_29}),
        .Q({Round_Significand_Function_n_23,Round_Significand_Function_n_24}),
        .\Q_reg[23]_i_3 (\Q_reg[23]_i_3_n_0 ),
        .\Q_reg[31] (Exponent_load_reg_n_67),
        .\Q_reg[31]_0 ({Op_MX,Exponent_load_reg_n_10,Exponent_load_reg_n_11,Exponent_load_reg_n_12,Exponent_load_reg_n_13,Exponent_load_reg_n_14,Exponent_load_reg_n_15,Exponent_load_reg_n_16,Exponent_load_reg_n_17,Exponent_load_reg_n_18,Exponent_load_reg_n_19,Exponent_load_reg_n_20,Exponent_load_reg_n_21,Exponent_load_reg_n_22,Exponent_load_reg_n_23,Exponent_load_reg_n_24,Exponent_load_reg_n_25,Exponent_load_reg_n_26,Exponent_load_reg_n_27,Exponent_load_reg_n_28,Exponent_load_reg_n_29,Exponent_load_reg_n_30,Exponent_load_reg_n_31,Exponent_load_reg_n_32}),
        .\Q_reg[31]_1 ({Op_MY,Exponent_load_reg_n_42,Exponent_load_reg_n_43,Exponent_load_reg_n_44,Exponent_load_reg_n_45,Exponent_load_reg_n_46,Exponent_load_reg_n_47,Exponent_load_reg_n_48,Exponent_load_reg_n_49,Exponent_load_reg_n_50,Exponent_load_reg_n_51,Exponent_load_reg_n_52,Exponent_load_reg_n_53,Exponent_load_reg_n_54,Exponent_load_reg_n_55,Exponent_load_reg_n_56,Exponent_load_reg_n_57,Exponent_load_reg_n_58,Exponent_load_reg_n_59,Exponent_load_reg_n_60,Exponent_load_reg_n_61,Exponent_load_reg_n_62,Exponent_load_reg_n_63,Exponent_load_reg_n_64}),
        .\Q_reg[3] (Significands_Multiplication_Funct_n_31),
        .\Q_reg[3]_0 (Significands_Multiplication_Funct_n_32),
        .\Q_reg[3]_1 (Significands_Multiplication_Funct_n_33),
        .\Q_reg[3]_2 (Significands_Multiplication_Funct_n_34),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ctrl(ctrl),
        .round_mode_IBUF(round_mode_IBUF),
        .selector_a(selector_a));
  Ninth_Phase_M Underflow_Management_State
       (.AR(rst_int),
        .D({Underflow_Management_State_n_1,Underflow_Management_State_n_2,Underflow_Management_State_n_3,Underflow_Management_State_n_4,Underflow_Management_State_n_5,Underflow_Management_State_n_6,Underflow_Management_State_n_7,Underflow_Management_State_n_8,Underflow_Management_State_n_9}),
        .E(load_11),
        .\Q_reg[30] (Data_A),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .load_12(load_12),
        .p_0_in({Exponent_load_reg_n_34,Exponent_load_reg_n_35,Exponent_load_reg_n_36,Exponent_load_reg_n_37,Exponent_load_reg_n_38,Exponent_load_reg_n_39,Exponent_load_reg_n_40,Exponent_load_reg_n_41}),
        .underflow_flag_OBUF(underflow_flag_OBUF));
  Zero_InfMult_Unit Zero_Result_Detect
       (.AR(rst_int),
        .\Q_reg[0] (Exponent_load_reg_n_68),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .zero_m_flag(zero_m_flag));
  IBUF beg_FSM_IBUF_inst
       (.I(beg_FSM),
        .O(beg_FSM_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF overflow_flag_OBUF_inst
       (.I(overflow_flag_OBUF),
        .O(overflow_flag));
  OBUF ready_flag_OBUF_inst
       (.I(ready_flag_OBUF),
        .O(ready_flag));
  IBUF \round_mode_IBUF[0]_inst 
       (.I(round_mode[0]),
        .O(round_mode_IBUF[0]));
  IBUF \round_mode_IBUF[1]_inst 
       (.I(round_mode[1]),
        .O(round_mode_IBUF[1]));
  IBUF rst_FSM_IBUF_inst
       (.I(rst_FSM),
        .O(rst_FSM_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF underflow_flag_OBUF_inst
       (.I(underflow_flag_OBUF),
        .O(underflow_flag));
endmodule

module FSM_Mult_Function
   (D,
    selector_c,
    AR,
    load_12,
    E,
    \Q_reg[0] ,
    \Q_reg[0]_0 ,
    \Q_reg[0]_1 ,
    \Q_reg[0]_2 ,
    \Q_reg[0]_3 ,
    \Q_reg[0]_4 ,
    \Q_reg[0]_5 ,
    ready_flag_OBUF,
    load_0,
    \Q_reg[0]_6 ,
    \Q_reg[0]_7 ,
    \Q_reg[0]_8 ,
    \Q_reg[0]_9 ,
    selector_b,
    selector_a,
    \Q_reg[14] ,
    Q,
    clk_IBUF_BUFG,
    in1,
    rst_FSM_IBUF,
    zero_m_flag,
    overflow_cout,
    overflow_comp_b,
    beg_FSM_IBUF,
    overflow_comp_a,
    underflow_flag_OBUF);
  output [30:0]D;
  output selector_c;
  output [1:0]AR;
  output load_12;
  output [0:0]E;
  output [0:0]\Q_reg[0] ;
  output [0:0]\Q_reg[0]_0 ;
  output [0:0]\Q_reg[0]_1 ;
  output [0:0]\Q_reg[0]_2 ;
  output [0:0]\Q_reg[0]_3 ;
  output [0:0]\Q_reg[0]_4 ;
  output [0:0]\Q_reg[0]_5 ;
  output ready_flag_OBUF;
  output load_0;
  output [0:0]\Q_reg[0]_6 ;
  output [0:0]\Q_reg[0]_7 ;
  output [0:0]\Q_reg[0]_8 ;
  output [0:0]\Q_reg[0]_9 ;
  output selector_b;
  output selector_a;
  output [0:0]\Q_reg[14] ;
  input [30:0]Q;
  input clk_IBUF_BUFG;
  input in1;
  input rst_FSM_IBUF;
  input zero_m_flag;
  input overflow_cout;
  input overflow_comp_b;
  input beg_FSM_IBUF;
  input overflow_comp_a;
  input underflow_flag_OBUF;

  wire [1:0]AR;
  wire [30:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[0]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[3]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[3]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[3]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[5]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[5]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[5]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[5]_i_5_n_0 ;
  wire \FSM_sequential_state_reg[5]_i_6_n_0 ;
  wire \FSM_sequential_state_reg[5]_i_7_n_0 ;
  wire \FSM_sequential_state_reg[5]_i_8_n_0 ;
  wire \FSM_sequential_state_reg_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg_reg[2]_i_1_n_0 ;
  wire \FSM_sequential_state_reg_reg[5]_i_2_n_0 ;
  wire [30:0]Q;
  wire \Q[30]_i_2_n_0 ;
  wire \Q[30]_i_3_n_0 ;
  wire [0:0]\Q_reg[0] ;
  wire [0:0]\Q_reg[0]_0 ;
  wire [0:0]\Q_reg[0]_1 ;
  wire [0:0]\Q_reg[0]_2 ;
  wire [0:0]\Q_reg[0]_3 ;
  wire [0:0]\Q_reg[0]_4 ;
  wire [0:0]\Q_reg[0]_5 ;
  wire [0:0]\Q_reg[0]_6 ;
  wire [0:0]\Q_reg[0]_7 ;
  wire [0:0]\Q_reg[0]_8 ;
  wire [0:0]\Q_reg[0]_9 ;
  wire [0:0]\Q_reg[14] ;
  wire beg_FSM_IBUF;
  wire clk_IBUF_BUFG;
  wire in1;
  wire load_0;
  wire load_12;
  wire overflow_comp_a;
  wire overflow_comp_b;
  wire overflow_cout;
  wire ready_flag_OBUF;
  wire rst_FSM_IBUF;
  wire selector_a;
  wire selector_b;
  wire selector_c;
  (* RTL_KEEP = "yes" *) wire [5:0]state_reg;
  wire underflow_flag_OBUF;
  wire zero_m_flag;

  LUT5 #(
    .INIT(32'h12007FFF)) 
    \FSM_sequential_state_reg[0]_i_2 
       (.I0(state_reg[5]),
        .I1(state_reg[2]),
        .I2(state_reg[1]),
        .I3(state_reg[3]),
        .I4(state_reg[0]),
        .O(\FSM_sequential_state_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033333331)) 
    \FSM_sequential_state_reg[0]_i_3 
       (.I0(overflow_cout),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(state_reg[2]),
        .I4(state_reg[3]),
        .I5(state_reg[5]),
        .O(\FSM_sequential_state_reg[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I1(state_reg[4]),
        .I2(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I3(state_reg[5]),
        .I4(\FSM_sequential_state_reg[1]_i_4_n_0 ),
        .O(\FSM_sequential_state_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00007C7FFFFF0000)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(overflow_comp_b),
        .I1(state_reg[3]),
        .I2(state_reg[2]),
        .I3(overflow_comp_a),
        .I4(state_reg[1]),
        .I5(state_reg[0]),
        .O(\FSM_sequential_state_reg[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h10555F00)) 
    \FSM_sequential_state_reg[1]_i_3 
       (.I0(state_reg[3]),
        .I1(overflow_comp_b),
        .I2(state_reg[2]),
        .I3(state_reg[1]),
        .I4(state_reg[0]),
        .O(\FSM_sequential_state_reg[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00EFFF00)) 
    \FSM_sequential_state_reg[1]_i_4 
       (.I0(underflow_flag_OBUF),
        .I1(state_reg[2]),
        .I2(state_reg[3]),
        .I3(state_reg[1]),
        .I4(state_reg[0]),
        .O(\FSM_sequential_state_reg[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00FF5FB05F00FF00)) 
    \FSM_sequential_state_reg[2]_i_2 
       (.I0(state_reg[5]),
        .I1(underflow_flag_OBUF),
        .I2(state_reg[3]),
        .I3(state_reg[2]),
        .I4(state_reg[1]),
        .I5(state_reg[0]),
        .O(\FSM_sequential_state_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000058787878)) 
    \FSM_sequential_state_reg[2]_i_3 
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .I3(state_reg[3]),
        .I4(overflow_comp_b),
        .I5(state_reg[5]),
        .O(\FSM_sequential_state_reg[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \FSM_sequential_state_reg[3]_i_1 
       (.I0(\FSM_sequential_state_reg[3]_i_2_n_0 ),
        .I1(state_reg[5]),
        .I2(state_reg[4]),
        .I3(\FSM_sequential_state_reg[3]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5AAA5AAAAEAFAEAA)) 
    \FSM_sequential_state_reg[3]_i_2 
       (.I0(state_reg[3]),
        .I1(overflow_comp_a),
        .I2(state_reg[2]),
        .I3(state_reg[0]),
        .I4(overflow_cout),
        .I5(state_reg[1]),
        .O(\FSM_sequential_state_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h334444DCCCCCCCCC)) 
    \FSM_sequential_state_reg[3]_i_3 
       (.I0(state_reg[5]),
        .I1(state_reg[3]),
        .I2(zero_m_flag),
        .I3(state_reg[1]),
        .I4(state_reg[0]),
        .I5(state_reg[2]),
        .O(\FSM_sequential_state_reg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CFA0C0A0)) 
    \FSM_sequential_state_reg[4]_i_1 
       (.I0(\FSM_sequential_state_reg[4]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_3_n_0 ),
        .I2(state_reg[4]),
        .I3(state_reg[3]),
        .I4(\FSM_sequential_state_reg[4]_i_4_n_0 ),
        .I5(state_reg[5]),
        .O(\FSM_sequential_state_reg[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFDCDF)) 
    \FSM_sequential_state_reg[4]_i_2 
       (.I0(overflow_comp_a),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .I3(overflow_cout),
        .I4(state_reg[2]),
        .O(\FSM_sequential_state_reg[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h37FF)) 
    \FSM_sequential_state_reg[4]_i_3 
       (.I0(overflow_comp_b),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(state_reg[2]),
        .O(\FSM_sequential_state_reg[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_state_reg[4]_i_4 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(state_reg[2]),
        .O(\FSM_sequential_state_reg[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F4A)) 
    \FSM_sequential_state_reg[5]_i_1 
       (.I0(state_reg[4]),
        .I1(\FSM_sequential_state_reg[5]_i_3_n_0 ),
        .I2(state_reg[5]),
        .I3(\FSM_sequential_state_reg[5]_i_4_n_0 ),
        .O(\FSM_sequential_state_reg[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h33BFFFFF)) 
    \FSM_sequential_state_reg[5]_i_3 
       (.I0(rst_FSM_IBUF),
        .I1(state_reg[2]),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(state_reg[3]),
        .O(\FSM_sequential_state_reg[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_state_reg[5]_i_4 
       (.I0(state_reg[3]),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(state_reg[2]),
        .I4(beg_FSM_IBUF),
        .O(\FSM_sequential_state_reg[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2E2A2ABA2E2A2AAA)) 
    \FSM_sequential_state_reg[5]_i_5 
       (.I0(state_reg[5]),
        .I1(state_reg[3]),
        .I2(state_reg[2]),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .I5(zero_m_flag),
        .O(\FSM_sequential_state_reg[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \FSM_sequential_state_reg[5]_i_6 
       (.I0(\FSM_sequential_state_reg[5]_i_7_n_0 ),
        .I1(state_reg[3]),
        .I2(\FSM_sequential_state_reg[4]_i_4_n_0 ),
        .I3(overflow_comp_b),
        .I4(\FSM_sequential_state_reg[5]_i_8_n_0 ),
        .I5(state_reg[5]),
        .O(\FSM_sequential_state_reg[5]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00002230)) 
    \FSM_sequential_state_reg[5]_i_7 
       (.I0(overflow_comp_a),
        .I1(state_reg[1]),
        .I2(overflow_cout),
        .I3(state_reg[0]),
        .I4(state_reg[2]),
        .O(\FSM_sequential_state_reg[5]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_state_reg[5]_i_8 
       (.I0(state_reg[0]),
        .I1(state_reg[2]),
        .O(\FSM_sequential_state_reg[5]_i_8_n_0 ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[5]_i_1_n_0 ),
        .CLR(in1),
        .D(\FSM_sequential_state_reg_reg[0]_i_1_n_0 ),
        .Q(state_reg[0]));
  MUXF7 \FSM_sequential_state_reg_reg[0]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg[0]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg_reg[0]_i_1_n_0 ),
        .S(state_reg[4]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[5]_i_1_n_0 ),
        .CLR(in1),
        .D(\FSM_sequential_state_reg[1]_i_1_n_0 ),
        .Q(state_reg[1]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[5]_i_1_n_0 ),
        .CLR(in1),
        .D(\FSM_sequential_state_reg_reg[2]_i_1_n_0 ),
        .Q(state_reg[2]));
  MUXF7 \FSM_sequential_state_reg_reg[2]_i_1 
       (.I0(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg_reg[2]_i_1_n_0 ),
        .S(state_reg[4]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[5]_i_1_n_0 ),
        .CLR(in1),
        .D(\FSM_sequential_state_reg[3]_i_1_n_0 ),
        .Q(state_reg[3]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[5]_i_1_n_0 ),
        .CLR(in1),
        .D(\FSM_sequential_state_reg[4]_i_1_n_0 ),
        .Q(state_reg[4]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[5]_i_1_n_0 ),
        .CLR(in1),
        .D(\FSM_sequential_state_reg_reg[5]_i_2_n_0 ),
        .Q(state_reg[5]));
  MUXF7 \FSM_sequential_state_reg_reg[5]_i_2 
       (.I0(\FSM_sequential_state_reg[5]_i_5_n_0 ),
        .I1(\FSM_sequential_state_reg[5]_i_6_n_0 ),
        .O(\FSM_sequential_state_reg_reg[5]_i_2_n_0 ),
        .S(state_reg[4]));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \Q[0]_i_1 
       (.I0(state_reg[5]),
        .I1(state_reg[2]),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(state_reg[3]),
        .I5(state_reg[4]),
        .O(\Q_reg[0]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[0]_i_1__8 
       (.I0(selector_c),
        .I1(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \Q[0]_i_2 
       (.I0(state_reg[5]),
        .I1(state_reg[2]),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(state_reg[3]),
        .I5(state_reg[4]),
        .O(load_12));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \Q[0]_i_6 
       (.I0(state_reg[5]),
        .I1(state_reg[2]),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(state_reg[3]),
        .I5(state_reg[4]),
        .O(load_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[10]_i_1__0 
       (.I0(selector_c),
        .I1(Q[10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[11]_i_1__0 
       (.I0(selector_c),
        .I1(Q[11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[12]_i_1__0 
       (.I0(selector_c),
        .I1(Q[12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[13]_i_1__0 
       (.I0(selector_c),
        .I1(Q[13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[14]_i_1__0 
       (.I0(selector_c),
        .I1(Q[14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[15]_i_1__0 
       (.I0(selector_c),
        .I1(Q[15]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[16]_i_1__0 
       (.I0(selector_c),
        .I1(Q[16]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[17]_i_1__0 
       (.I0(selector_c),
        .I1(Q[17]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[18]_i_1__0 
       (.I0(selector_c),
        .I1(Q[18]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[19]_i_1__0 
       (.I0(selector_c),
        .I1(Q[19]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[1]_i_1__2 
       (.I0(selector_c),
        .I1(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[20]_i_1__0 
       (.I0(selector_c),
        .I1(Q[20]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[21]_i_1__0 
       (.I0(selector_c),
        .I1(Q[21]),
        .O(D[21]));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \Q[22]_i_1 
       (.I0(state_reg[5]),
        .I1(state_reg[2]),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(state_reg[3]),
        .I5(state_reg[4]),
        .O(\Q_reg[0]_8 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[22]_i_1__1 
       (.I0(selector_c),
        .I1(Q[22]),
        .O(D[22]));
  LUT6 #(
    .INIT(64'h0000010020000000)) 
    \Q[23]_i_1 
       (.I0(state_reg[4]),
        .I1(state_reg[3]),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(state_reg[2]),
        .I5(state_reg[5]),
        .O(\Q_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \Q[23]_i_1__0 
       (.I0(Q[23]),
        .I1(selector_c),
        .I2(\Q[30]_i_2_n_0 ),
        .I3(state_reg[5]),
        .I4(state_reg[4]),
        .I5(\Q[30]_i_3_n_0 ),
        .O(D[23]));
  LUT5 #(
    .INIT(32'h00018000)) 
    \Q[23]_i_4 
       (.I0(state_reg[4]),
        .I1(state_reg[3]),
        .I2(state_reg[1]),
        .I3(state_reg[2]),
        .I4(state_reg[5]),
        .O(selector_a));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \Q[24]_i_1 
       (.I0(state_reg[5]),
        .I1(state_reg[2]),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(state_reg[3]),
        .I5(state_reg[4]),
        .O(E));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \Q[24]_i_1__0 
       (.I0(Q[24]),
        .I1(selector_c),
        .I2(\Q[30]_i_2_n_0 ),
        .I3(state_reg[5]),
        .I4(state_reg[4]),
        .I5(\Q[30]_i_3_n_0 ),
        .O(D[24]));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \Q[25]_i_1 
       (.I0(Q[25]),
        .I1(selector_c),
        .I2(\Q[30]_i_2_n_0 ),
        .I3(state_reg[5]),
        .I4(state_reg[4]),
        .I5(\Q[30]_i_3_n_0 ),
        .O(D[25]));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \Q[26]_i_1 
       (.I0(Q[26]),
        .I1(selector_c),
        .I2(\Q[30]_i_2_n_0 ),
        .I3(state_reg[5]),
        .I4(state_reg[4]),
        .I5(\Q[30]_i_3_n_0 ),
        .O(D[26]));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \Q[27]_i_1 
       (.I0(Q[27]),
        .I1(selector_c),
        .I2(\Q[30]_i_2_n_0 ),
        .I3(state_reg[5]),
        .I4(state_reg[4]),
        .I5(\Q[30]_i_3_n_0 ),
        .O(D[27]));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \Q[28]_i_1 
       (.I0(Q[28]),
        .I1(selector_c),
        .I2(\Q[30]_i_2_n_0 ),
        .I3(state_reg[5]),
        .I4(state_reg[4]),
        .I5(\Q[30]_i_3_n_0 ),
        .O(D[28]));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \Q[29]_i_1 
       (.I0(Q[29]),
        .I1(selector_c),
        .I2(\Q[30]_i_2_n_0 ),
        .I3(state_reg[5]),
        .I4(state_reg[4]),
        .I5(\Q[30]_i_3_n_0 ),
        .O(D[29]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \Q[2]_i_1 
       (.I0(state_reg[5]),
        .I1(state_reg[2]),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(state_reg[3]),
        .I5(state_reg[4]),
        .O(\Q_reg[14] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[2]_i_1__3 
       (.I0(selector_c),
        .I1(Q[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \Q[30]_i_1 
       (.I0(Q[30]),
        .I1(selector_c),
        .I2(\Q[30]_i_2_n_0 ),
        .I3(state_reg[5]),
        .I4(state_reg[4]),
        .I5(\Q[30]_i_3_n_0 ),
        .O(D[30]));
  LUT6 #(
    .INIT(64'h0800FFFF08000000)) 
    \Q[30]_i_2 
       (.I0(state_reg[2]),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(overflow_comp_b),
        .I4(state_reg[3]),
        .I5(\FSM_sequential_state_reg[5]_i_7_n_0 ),
        .O(\Q[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0033800000000000)) 
    \Q[30]_i_3 
       (.I0(overflow_comp_b),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .I3(state_reg[2]),
        .I4(state_reg[3]),
        .I5(state_reg[5]),
        .O(\Q[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \Q[31]_i_1 
       (.I0(state_reg[5]),
        .I1(state_reg[2]),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(state_reg[3]),
        .I5(state_reg[4]),
        .O(\Q_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h0000000002200080)) 
    \Q[31]_i_1__0 
       (.I0(state_reg[3]),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .I3(state_reg[2]),
        .I4(state_reg[5]),
        .I5(state_reg[4]),
        .O(\Q_reg[0]_4 ));
  LUT6 #(
    .INIT(64'h0000000000220020)) 
    \Q[31]_i_1__1 
       (.I0(state_reg[3]),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(state_reg[2]),
        .I4(state_reg[5]),
        .I5(state_reg[4]),
        .O(\Q_reg[0]_7 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \Q[31]_i_2 
       (.I0(state_reg[5]),
        .I1(state_reg[2]),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(state_reg[3]),
        .I5(state_reg[4]),
        .O(AR[0]));
  LUT6 #(
    .INIT(64'h0000000020088080)) 
    \Q[31]_i_3 
       (.I0(state_reg[5]),
        .I1(state_reg[3]),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(state_reg[2]),
        .I5(state_reg[4]),
        .O(selector_c));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[3]_i_1__2 
       (.I0(selector_c),
        .I1(Q[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[4]_i_1__2 
       (.I0(selector_c),
        .I1(Q[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[5]_i_1__2 
       (.I0(selector_c),
        .I1(Q[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[6]_i_1__2 
       (.I0(selector_c),
        .I1(Q[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h0100000000080000)) 
    \Q[7]_i_1 
       (.I0(state_reg[4]),
        .I1(state_reg[3]),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(state_reg[2]),
        .I5(state_reg[5]),
        .O(\Q_reg[0] ));
  LUT6 #(
    .INIT(64'h0000100000000800)) 
    \Q[7]_i_1__0 
       (.I0(state_reg[4]),
        .I1(state_reg[3]),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(state_reg[2]),
        .I5(state_reg[5]),
        .O(\Q_reg[0]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[7]_i_1__3 
       (.I0(selector_c),
        .I1(Q[7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0000000000002220)) 
    \Q[7]_i_3 
       (.I0(state_reg[5]),
        .I1(state_reg[2]),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(state_reg[3]),
        .I5(state_reg[4]),
        .O(selector_b));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \Q[8]_i_1 
       (.I0(state_reg[5]),
        .I1(state_reg[2]),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(state_reg[3]),
        .I5(state_reg[4]),
        .O(\Q_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \Q[8]_i_1__0 
       (.I0(state_reg[5]),
        .I1(state_reg[2]),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(state_reg[3]),
        .I5(state_reg[4]),
        .O(\Q_reg[0]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[8]_i_1__2 
       (.I0(selector_c),
        .I1(Q[8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \Q[8]_i_3 
       (.I0(state_reg[5]),
        .I1(state_reg[2]),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(state_reg[3]),
        .I5(state_reg[4]),
        .O(AR[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[9]_i_1__0 
       (.I0(selector_c),
        .I1(Q[9]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    Result__0_i_1
       (.I0(state_reg[5]),
        .I1(state_reg[2]),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(state_reg[3]),
        .I5(state_reg[4]),
        .O(\Q_reg[0]_9 ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    ready_flag_OBUF_inst_i_1
       (.I0(state_reg[5]),
        .I1(state_reg[2]),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(state_reg[3]),
        .I5(state_reg[4]),
        .O(ready_flag_OBUF));
endmodule

module Fifth_Phase_M
   (\Q_reg[0] ,
    Q,
    \Q_reg[22] ,
    E,
    \Q_reg[24] ,
    clk_IBUF_BUFG,
    AR,
    D);
  output \Q_reg[0] ;
  output [22:0]Q;
  output [22:0]\Q_reg[22] ;
  input [0:0]E;
  input \Q_reg[24] ;
  input clk_IBUF_BUFG;
  input [1:0]AR;
  input [23:0]D;

  wire [1:0]AR;
  wire [23:0]D;
  wire [0:0]E;
  wire [22:0]Q;
  wire \Q_reg[0] ;
  wire [22:0]\Q_reg[22] ;
  wire \Q_reg[24] ;
  wire clk_IBUF_BUFG;

  RegisterMult__parameterized10 EXNU_REG
       (.AR(AR[1]),
        .E(E),
        .\Q_reg[0]_0 (\Q_reg[0] ),
        .\Q_reg[24] (\Q_reg[24] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  RegisterMult__parameterized9 SGF_RP_REG
       (.AR(AR[0]),
        .D(D),
        .E(E),
        .Q(Q),
        .\Q_reg[22]_0 (\Q_reg[22] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
endmodule

module First_Phase_M
   (D,
    \Q_reg[31] ,
    \Q_reg[31]_0 ,
    \Q_reg[31]_1 ,
    \Q_reg[3] ,
    \Q_reg[3]_0 ,
    \Q_reg[0] ,
    Q,
    selector_c,
    \Q_reg[23]_i_3 ,
    P,
    round_mode_IBUF,
    load_0,
    zero_m_flag,
    E,
    \Data_MX[31] ,
    clk_IBUF_BUFG,
    AR,
    \Data_MY[31] );
  output [0:0]D;
  output [31:0]\Q_reg[31] ;
  output [31:0]\Q_reg[31]_0 ;
  output [0:0]\Q_reg[31]_1 ;
  output \Q_reg[3] ;
  output \Q_reg[3]_0 ;
  output \Q_reg[0] ;
  input [0:0]Q;
  input selector_c;
  input \Q_reg[23]_i_3 ;
  input [4:0]P;
  input [1:0]round_mode_IBUF;
  input load_0;
  input zero_m_flag;
  input [0:0]E;
  input [31:0]\Data_MX[31] ;
  input clk_IBUF_BUFG;
  input [1:0]AR;
  input [31:0]\Data_MY[31] ;

  wire [1:0]AR;
  wire [0:0]D;
  wire [31:0]\Data_MX[31] ;
  wire [31:0]\Data_MY[31] ;
  wire [0:0]E;
  wire [4:0]P;
  wire [0:0]Q;
  wire \Q_reg[0] ;
  wire \Q_reg[23]_i_3 ;
  wire [31:0]\Q_reg[31] ;
  wire [31:0]\Q_reg[31]_0 ;
  wire [0:0]\Q_reg[31]_1 ;
  wire \Q_reg[3] ;
  wire \Q_reg[3]_0 ;
  wire YMRegister_n_0;
  wire YMRegister_n_33;
  wire clk_IBUF_BUFG;
  wire load_0;
  wire [1:0]round_mode_IBUF;
  wire selector_c;
  wire zero_m_flag;

  RegisterMult_1 XMRegister
       (.AR(AR),
        .D(D),
        .\Data_MX[31] (\Data_MX[31] ),
        .E(E),
        .Q(Q),
        .\Q_reg[0]_0 (\Q_reg[0] ),
        .\Q_reg[0]_1 (YMRegister_n_33),
        .\Q_reg[28]_0 (YMRegister_n_0),
        .\Q_reg[31]_0 (\Q_reg[31] ),
        .\Q_reg[31]_1 (\Q_reg[31]_1 ),
        .\Q_reg[31]_2 (\Q_reg[31]_0 [31]),
        .\Q_reg[3]_0 (\Q_reg[3]_0 ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .load_0(load_0),
        .round_mode_IBUF(round_mode_IBUF),
        .selector_c(selector_c),
        .zero_m_flag(zero_m_flag));
  RegisterMult_2 YMRegister
       (.AR(AR[0]),
        .\Data_MY[31] (\Data_MY[31] ),
        .E(E),
        .P(P),
        .\Q_reg[0]_0 (YMRegister_n_0),
        .\Q_reg[0]_1 (YMRegister_n_33),
        .\Q_reg[23]_i_3 (\Q_reg[23]_i_3 ),
        .\Q_reg[31]_0 (\Q_reg[31]_0 ),
        .\Q_reg[31]_1 (\Q_reg[31] [31]),
        .\Q_reg[3]_0 (\Q_reg[3] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .round_mode_IBUF(round_mode_IBUF));
endmodule

module Fourth_Phase_M
   (P,
    ctrl,
    \Q_reg[3] ,
    \Q_reg[3]_0 ,
    \Q_reg[3]_1 ,
    \Q_reg[3]_2 ,
    D,
    E,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[5] ,
    AR,
    \Q_reg[31] ,
    \Q_reg[23]_i_3 ,
    \Q_reg[31]_0 ,
    round_mode_IBUF,
    \Q_reg[31]_1 ,
    Q,
    selector_a);
  output [29:0]P;
  output ctrl;
  output \Q_reg[3] ;
  output \Q_reg[3]_0 ;
  output \Q_reg[3]_1 ;
  output \Q_reg[3]_2 ;
  output [0:0]D;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input [0:0]\FSM_sequential_state_reg_reg[5] ;
  input [1:0]AR;
  input \Q_reg[31] ;
  input \Q_reg[23]_i_3 ;
  input [23:0]\Q_reg[31]_0 ;
  input [1:0]round_mode_IBUF;
  input [23:0]\Q_reg[31]_1 ;
  input [1:0]Q;
  input selector_a;

  wire [1:0]AR;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_sequential_state_reg_reg[5] ;
  wire [29:0]P;
  wire P_SgfX_Register_n_0;
  wire P_SgfX_Register_n_1;
  wire P_SgfX_Register_n_10;
  wire P_SgfX_Register_n_11;
  wire P_SgfX_Register_n_12;
  wire P_SgfX_Register_n_13;
  wire P_SgfX_Register_n_14;
  wire P_SgfX_Register_n_15;
  wire P_SgfX_Register_n_16;
  wire P_SgfX_Register_n_17;
  wire P_SgfX_Register_n_18;
  wire P_SgfX_Register_n_19;
  wire P_SgfX_Register_n_2;
  wire P_SgfX_Register_n_20;
  wire P_SgfX_Register_n_21;
  wire P_SgfX_Register_n_22;
  wire P_SgfX_Register_n_23;
  wire P_SgfX_Register_n_3;
  wire P_SgfX_Register_n_4;
  wire P_SgfX_Register_n_5;
  wire P_SgfX_Register_n_6;
  wire P_SgfX_Register_n_7;
  wire P_SgfX_Register_n_8;
  wire P_SgfX_Register_n_9;
  wire P_SgfY_Register_n_0;
  wire P_SgfY_Register_n_1;
  wire P_SgfY_Register_n_10;
  wire P_SgfY_Register_n_11;
  wire P_SgfY_Register_n_12;
  wire P_SgfY_Register_n_13;
  wire P_SgfY_Register_n_14;
  wire P_SgfY_Register_n_15;
  wire P_SgfY_Register_n_16;
  wire P_SgfY_Register_n_17;
  wire P_SgfY_Register_n_18;
  wire P_SgfY_Register_n_19;
  wire P_SgfY_Register_n_2;
  wire P_SgfY_Register_n_20;
  wire P_SgfY_Register_n_21;
  wire P_SgfY_Register_n_22;
  wire P_SgfY_Register_n_3;
  wire P_SgfY_Register_n_4;
  wire P_SgfY_Register_n_5;
  wire P_SgfY_Register_n_6;
  wire P_SgfY_Register_n_7;
  wire P_SgfY_Register_n_8;
  wire P_SgfY_Register_n_9;
  wire P_Sgf_Mult_n_0;
  wire P_Sgf_Mult_n_1;
  wire P_Sgf_Mult_n_10;
  wire P_Sgf_Mult_n_11;
  wire P_Sgf_Mult_n_12;
  wire P_Sgf_Mult_n_13;
  wire P_Sgf_Mult_n_14;
  wire P_Sgf_Mult_n_15;
  wire P_Sgf_Mult_n_16;
  wire P_Sgf_Mult_n_2;
  wire P_Sgf_Mult_n_3;
  wire P_Sgf_Mult_n_4;
  wire P_Sgf_Mult_n_47;
  wire P_Sgf_Mult_n_48;
  wire P_Sgf_Mult_n_49;
  wire P_Sgf_Mult_n_5;
  wire P_Sgf_Mult_n_6;
  wire P_Sgf_Mult_n_7;
  wire P_Sgf_Mult_n_8;
  wire P_Sgf_Mult_n_9;
  wire [1:0]Q;
  wire \Q_reg[23]_i_3 ;
  wire \Q_reg[31] ;
  wire [23:0]\Q_reg[31]_0 ;
  wire [23:0]\Q_reg[31]_1 ;
  wire \Q_reg[3] ;
  wire \Q_reg[3]_0 ;
  wire \Q_reg[3]_1 ;
  wire \Q_reg[3]_2 ;
  wire clk_IBUF_BUFG;
  wire ctrl;
  wire [1:0]round_mode_IBUF;
  wire selector_a;

  RegisterMult__parameterized6 P_SgfX_Register
       (.AR(AR[0]),
        .B({P_SgfX_Register_n_0,P_SgfX_Register_n_1,P_SgfX_Register_n_2,P_SgfX_Register_n_3,P_SgfX_Register_n_4,P_SgfX_Register_n_5,P_SgfX_Register_n_6}),
        .\FSM_sequential_state_reg_reg[5] (\FSM_sequential_state_reg_reg[5] ),
        .Q({P_SgfX_Register_n_7,P_SgfX_Register_n_8,P_SgfX_Register_n_9,P_SgfX_Register_n_10,P_SgfX_Register_n_11,P_SgfX_Register_n_12,P_SgfX_Register_n_13,P_SgfX_Register_n_14,P_SgfX_Register_n_15,P_SgfX_Register_n_16,P_SgfX_Register_n_17,P_SgfX_Register_n_18,P_SgfX_Register_n_19,P_SgfX_Register_n_20,P_SgfX_Register_n_21,P_SgfX_Register_n_22,P_SgfX_Register_n_23}),
        .\Q_reg[22]_0 (\Q_reg[31]_0 [22:0]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  RegisterMult__parameterized7 P_SgfY_Register
       (.AR(AR[0]),
        .\FSM_sequential_state_reg_reg[5] (\FSM_sequential_state_reg_reg[5] ),
        .Q({P_SgfY_Register_n_0,P_SgfY_Register_n_1,P_SgfY_Register_n_2,P_SgfY_Register_n_3,P_SgfY_Register_n_4,P_SgfY_Register_n_5,P_SgfY_Register_n_6,P_SgfY_Register_n_7,P_SgfY_Register_n_8,P_SgfY_Register_n_9,P_SgfY_Register_n_10,P_SgfY_Register_n_11,P_SgfY_Register_n_12,P_SgfY_Register_n_13,P_SgfY_Register_n_14,P_SgfY_Register_n_15,P_SgfY_Register_n_16,P_SgfY_Register_n_17,P_SgfY_Register_n_18,P_SgfY_Register_n_19,P_SgfY_Register_n_20,P_SgfY_Register_n_21,P_SgfY_Register_n_22}),
        .\Q_reg[22]_0 (\Q_reg[31]_1 [22:0]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  Multiplier_P P_Sgf_Mult
       (.A({P_SgfX_Register_n_0,P_SgfY_Register_n_0,P_SgfY_Register_n_1,P_SgfY_Register_n_2,P_SgfY_Register_n_3,P_SgfY_Register_n_4,P_SgfY_Register_n_5,P_SgfY_Register_n_6,P_SgfY_Register_n_7,P_SgfY_Register_n_8,P_SgfY_Register_n_9,P_SgfY_Register_n_10,P_SgfY_Register_n_11,P_SgfY_Register_n_12,P_SgfY_Register_n_13,P_SgfY_Register_n_14,P_SgfY_Register_n_15,P_SgfY_Register_n_16,P_SgfY_Register_n_17,P_SgfY_Register_n_18,P_SgfY_Register_n_19,P_SgfY_Register_n_20,P_SgfY_Register_n_21,P_SgfY_Register_n_22}),
        .B({P_SgfX_Register_n_1,P_SgfX_Register_n_2,P_SgfX_Register_n_3,P_SgfX_Register_n_4,P_SgfX_Register_n_5,P_SgfX_Register_n_6}),
        .D({P_Sgf_Mult_n_0,P_Sgf_Mult_n_1,P_Sgf_Mult_n_2,P_Sgf_Mult_n_3,P_Sgf_Mult_n_4,P_Sgf_Mult_n_5,P_Sgf_Mult_n_6,P_Sgf_Mult_n_7,P_Sgf_Mult_n_8,P_Sgf_Mult_n_9,P_Sgf_Mult_n_10,P_Sgf_Mult_n_11,P_Sgf_Mult_n_12,P_Sgf_Mult_n_13,P_Sgf_Mult_n_14,P_Sgf_Mult_n_15,P_Sgf_Mult_n_16}),
        .E(E),
        .P({P,P_Sgf_Mult_n_47}),
        .Q({P_SgfX_Register_n_7,P_SgfX_Register_n_8,P_SgfX_Register_n_9,P_SgfX_Register_n_10,P_SgfX_Register_n_11,P_SgfX_Register_n_12,P_SgfX_Register_n_13,P_SgfX_Register_n_14,P_SgfX_Register_n_15,P_SgfX_Register_n_16,P_SgfX_Register_n_17,P_SgfX_Register_n_18,P_SgfX_Register_n_19,P_SgfX_Register_n_20,P_SgfX_Register_n_21,P_SgfX_Register_n_22,P_SgfX_Register_n_23}),
        .\Q_reg[23] (D),
        .\Q_reg[23]_i_3 (\Q_reg[23]_i_3 ),
        .\Q_reg[24] (Q),
        .\Q_reg[31] (\Q_reg[31] ),
        .\Q_reg[3] (P_Sgf_Mult_n_48),
        .\Q_reg[3]_0 (P_Sgf_Mult_n_49),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .selector_a(selector_a));
  RegisterMult__parameterized8 P_Sgf_Register
       (.AR(AR),
        .D({P_Sgf_Mult_n_0,P_Sgf_Mult_n_1,P_Sgf_Mult_n_2,P_Sgf_Mult_n_3,P_Sgf_Mult_n_4,P_Sgf_Mult_n_5,P_Sgf_Mult_n_6,P_Sgf_Mult_n_7,P_Sgf_Mult_n_8,P_Sgf_Mult_n_9,P_Sgf_Mult_n_10,P_Sgf_Mult_n_11,P_Sgf_Mult_n_12,P_Sgf_Mult_n_13,P_Sgf_Mult_n_14,P_Sgf_Mult_n_15,P_Sgf_Mult_n_16}),
        .E(E),
        .P(P_Sgf_Mult_n_47),
        .\Q_reg[23]_i_3 (\Q_reg[23]_i_3 ),
        .\Q_reg[31] (\Q_reg[31] ),
        .\Q_reg[31]_0 (\Q_reg[31]_0 [23]),
        .\Q_reg[31]_1 (\Q_reg[31]_1 [23]),
        .\Q_reg[3]_0 (\Q_reg[3] ),
        .\Q_reg[3]_1 (\Q_reg[3]_0 ),
        .\Q_reg[3]_2 (\Q_reg[3]_1 ),
        .\Q_reg[3]_3 (\Q_reg[3]_2 ),
        .Result__0(P_Sgf_Mult_n_49),
        .Result__0_0(P_Sgf_Mult_n_48),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ctrl(ctrl),
        .round_mode_IBUF(round_mode_IBUF));
endmodule

(* ORIG_REF_NAME = "Multiplexer_AC" *) 
module Multiplexer_AC__parameterized1
   (\Q_reg[7] ,
    Q,
    \Q_reg[7]_0 ,
    selector_b);
  output [7:0]\Q_reg[7] ;
  input [7:0]Q;
  input [7:0]\Q_reg[7]_0 ;
  input selector_b;

  wire [7:0]Q;
  wire [7:0]\Q_reg[7] ;
  wire [7:0]\Q_reg[7]_0 ;
  wire selector_b;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[0]_i_1 
       (.I0(Q[0]),
        .I1(\Q_reg[7]_0 [0]),
        .I2(selector_b),
        .O(\Q_reg[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[1]_i_1 
       (.I0(Q[1]),
        .I1(\Q_reg[7]_0 [1]),
        .I2(selector_b),
        .O(\Q_reg[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[2]_i_1 
       (.I0(Q[2]),
        .I1(\Q_reg[7]_0 [2]),
        .I2(selector_b),
        .O(\Q_reg[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[3]_i_1 
       (.I0(Q[3]),
        .I1(\Q_reg[7]_0 [3]),
        .I2(selector_b),
        .O(\Q_reg[7] [3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[4]_i_1 
       (.I0(Q[4]),
        .I1(\Q_reg[7]_0 [4]),
        .I2(selector_b),
        .O(\Q_reg[7] [4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[5]_i_1 
       (.I0(Q[5]),
        .I1(\Q_reg[7]_0 [5]),
        .I2(selector_b),
        .O(\Q_reg[7] [5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[6]_i_1 
       (.I0(Q[6]),
        .I1(\Q_reg[7]_0 [6]),
        .I2(selector_b),
        .O(\Q_reg[7] [6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[7]_i_2 
       (.I0(Q[7]),
        .I1(\Q_reg[7]_0 [7]),
        .I2(selector_b),
        .O(\Q_reg[7] [7]));
endmodule

module Multiplier_P
   (D,
    P,
    \Q_reg[3] ,
    \Q_reg[3]_0 ,
    \Q_reg[23] ,
    Q,
    A,
    E,
    clk_IBUF_BUFG,
    B,
    \Q_reg[31] ,
    \Q_reg[23]_i_3 ,
    \Q_reg[24] ,
    selector_a);
  output [16:0]D;
  output [30:0]P;
  output \Q_reg[3] ;
  output \Q_reg[3]_0 ;
  output [0:0]\Q_reg[23] ;
  input [16:0]Q;
  input [23:0]A;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input [5:0]B;
  input \Q_reg[31] ;
  input \Q_reg[23]_i_3 ;
  input [1:0]\Q_reg[24] ;
  input selector_a;

  wire [23:0]A;
  wire [5:0]B;
  wire [16:0]D;
  wire [0:0]E;
  wire [30:0]P;
  wire [16:0]Q;
  wire [0:0]\Q_reg[23] ;
  wire \Q_reg[23]_i_3 ;
  wire [1:0]\Q_reg[24] ;
  wire \Q_reg[31] ;
  wire \Q_reg[3] ;
  wire \Q_reg[3]_0 ;
  wire Result_n_106;
  wire Result_n_107;
  wire Result_n_108;
  wire Result_n_109;
  wire Result_n_110;
  wire Result_n_111;
  wire Result_n_112;
  wire Result_n_113;
  wire Result_n_114;
  wire Result_n_115;
  wire Result_n_116;
  wire Result_n_117;
  wire Result_n_118;
  wire Result_n_119;
  wire Result_n_120;
  wire Result_n_121;
  wire Result_n_122;
  wire Result_n_123;
  wire Result_n_124;
  wire Result_n_125;
  wire Result_n_126;
  wire Result_n_127;
  wire Result_n_128;
  wire Result_n_129;
  wire Result_n_130;
  wire Result_n_131;
  wire Result_n_132;
  wire Result_n_133;
  wire Result_n_134;
  wire Result_n_135;
  wire Result_n_136;
  wire Result_n_137;
  wire Result_n_138;
  wire Result_n_139;
  wire Result_n_140;
  wire Result_n_141;
  wire Result_n_142;
  wire Result_n_143;
  wire Result_n_144;
  wire Result_n_145;
  wire Result_n_146;
  wire Result_n_147;
  wire Result_n_148;
  wire Result_n_149;
  wire Result_n_150;
  wire Result_n_151;
  wire Result_n_152;
  wire Result_n_153;
  wire clk_IBUF_BUFG;
  wire selector_a;
  wire NLW_Result_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Result_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Result_OVERFLOW_UNCONNECTED;
  wire NLW_Result_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Result_PATTERNDETECT_UNCONNECTED;
  wire NLW_Result_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Result_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Result_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Result_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_Result_P_UNCONNECTED;
  wire NLW_Result__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_Result__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_Result__0_OVERFLOW_UNCONNECTED;
  wire NLW_Result__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_Result__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_Result__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_Result__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_Result__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_Result__0_CARRYOUT_UNCONNECTED;
  wire [47:31]NLW_Result__0_P_UNCONNECTED;
  wire [47:0]NLW_Result__0_PCOUT_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFF0A0CCCCF0A0)) 
    \Q[23]_i_2 
       (.I0(P[30]),
        .I1(\Q_reg[24] [1]),
        .I2(\Q_reg[23]_i_3 ),
        .I3(P[29]),
        .I4(selector_a),
        .I5(\Q_reg[24] [0]),
        .O(\Q_reg[23] ));
  LUT4 #(
    .INIT(16'hC800)) 
    \Q[3]_i_10 
       (.I0(P[2]),
        .I1(\Q_reg[31] ),
        .I2(P[3]),
        .I3(\Q_reg[23]_i_3 ),
        .O(\Q_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hF0E00000)) 
    \Q[3]_i_11 
       (.I0(P[5]),
        .I1(P[4]),
        .I2(\Q_reg[31] ),
        .I3(P[1]),
        .I4(\Q_reg[23]_i_3 ),
        .O(\Q_reg[3] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    Result
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Result_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Q}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Result_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Result_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Result_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_Result_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Result_OVERFLOW_UNCONNECTED),
        .P({NLW_Result_P_UNCONNECTED[47:17],D}),
        .PATTERNBDETECT(NLW_Result_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Result_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({Result_n_106,Result_n_107,Result_n_108,Result_n_109,Result_n_110,Result_n_111,Result_n_112,Result_n_113,Result_n_114,Result_n_115,Result_n_116,Result_n_117,Result_n_118,Result_n_119,Result_n_120,Result_n_121,Result_n_122,Result_n_123,Result_n_124,Result_n_125,Result_n_126,Result_n_127,Result_n_128,Result_n_129,Result_n_130,Result_n_131,Result_n_132,Result_n_133,Result_n_134,Result_n_135,Result_n_136,Result_n_137,Result_n_138,Result_n_139,Result_n_140,Result_n_141,Result_n_142,Result_n_143,Result_n_144,Result_n_145,Result_n_146,Result_n_147,Result_n_148,Result_n_149,Result_n_150,Result_n_151,Result_n_152,Result_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_Result_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    Result__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_Result__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A[23],B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_Result__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_Result__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_Result__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(E),
        .CLK(clk_IBUF_BUFG),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_Result__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_Result__0_OVERFLOW_UNCONNECTED),
        .P({NLW_Result__0_P_UNCONNECTED[47:31],P}),
        .PATTERNBDETECT(NLW_Result__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_Result__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({Result_n_106,Result_n_107,Result_n_108,Result_n_109,Result_n_110,Result_n_111,Result_n_112,Result_n_113,Result_n_114,Result_n_115,Result_n_116,Result_n_117,Result_n_118,Result_n_119,Result_n_120,Result_n_121,Result_n_122,Result_n_123,Result_n_124,Result_n_125,Result_n_126,Result_n_127,Result_n_128,Result_n_129,Result_n_130,Result_n_131,Result_n_132,Result_n_133,Result_n_134,Result_n_135,Result_n_136,Result_n_137,Result_n_138,Result_n_139,Result_n_140,Result_n_141,Result_n_142,Result_n_143,Result_n_144,Result_n_145,Result_n_146,Result_n_147,Result_n_148,Result_n_149,Result_n_150,Result_n_151,Result_n_152,Result_n_153}),
        .PCOUT(NLW_Result__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_Result__0_UNDERFLOW_UNCONNECTED));
endmodule

module Ninth_Phase_M
   (underflow_flag_OBUF,
    D,
    clk_IBUF_BUFG,
    AR,
    load_12,
    E,
    p_0_in,
    \Q_reg[30] );
  output underflow_flag_OBUF;
  output [8:0]D;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input load_12;
  input [0:0]E;
  input [7:0]p_0_in;
  input [7:0]\Q_reg[30] ;

  wire [0:0]AR;
  wire [8:0]D;
  wire [0:0]E;
  wire EXP_Add_Reg_n_0;
  wire EXP_Add_Reg_n_1;
  wire EXP_Add_Reg_n_2;
  wire EXP_Add_Reg_n_3;
  wire EXP_Add_Reg_n_4;
  wire EXP_Add_Reg_n_5;
  wire EXP_Add_Reg_n_6;
  wire EXP_Add_Reg_n_7;
  wire EXP_Add_Reg_n_8;
  wire ExpAdd_Register_n_0;
  wire [7:0]\Q_reg[30] ;
  wire clk_IBUF_BUFG;
  wire load_12;
  wire [7:0]p_0_in;
  wire underflow_flag_OBUF;

  add_sub_carry_out EXP_Add_Reg
       (.D({EXP_Add_Reg_n_0,EXP_Add_Reg_n_1,EXP_Add_Reg_n_2,EXP_Add_Reg_n_3,EXP_Add_Reg_n_4,EXP_Add_Reg_n_5,EXP_Add_Reg_n_6,EXP_Add_Reg_n_7,EXP_Add_Reg_n_8}),
        .\Q_reg[30] (\Q_reg[30] ),
        .p_0_in(p_0_in));
  RegisterMult__parameterized0 ExpAdd_Register
       (.AR(AR),
        .D({EXP_Add_Reg_n_0,EXP_Add_Reg_n_1,EXP_Add_Reg_n_2,EXP_Add_Reg_n_3,EXP_Add_Reg_n_4,EXP_Add_Reg_n_5,EXP_Add_Reg_n_6,EXP_Add_Reg_n_7,EXP_Add_Reg_n_8}),
        .E(E),
        .\Q_reg[0]_0 (ExpAdd_Register_n_0),
        .\Q_reg[8]_0 (D),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .load_12(load_12),
        .underflow_flag_OBUF(underflow_flag_OBUF));
  RegisterMult__parameterized1 ExpUnderflow_Register
       (.AR(AR),
        .\Q_reg[6] (ExpAdd_Register_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .underflow_flag_OBUF(underflow_flag_OBUF));
endmodule

module RegisterAdd
   (zero_m_flag,
    \Q_reg[0]_0 ,
    clk_IBUF_BUFG,
    AR);
  output zero_m_flag;
  input \Q_reg[0]_0 ;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire \Q_reg[0]_0 ;
  wire clk_IBUF_BUFG;
  wire zero_m_flag;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[0]_0 ),
        .Q(zero_m_flag));
endmodule

module RegisterMult
   (Q,
    E,
    D,
    clk_IBUF_BUFG,
    AR);
  output [31:0]Q;
  input [0:0]E;
  input [31:0]D;
  input clk_IBUF_BUFG;
  input [1:0]AR;

  wire [1:0]AR;
  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire clk_IBUF_BUFG;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[27]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[28]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[29]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[30]),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[31]),
        .Q(Q[31]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "RegisterMult" *) 
module RegisterMult_0
   (\F_ieee_result[31] ,
    \FSM_sequential_state_reg_reg[3] ,
    \Q_reg[31]_0 ,
    clk_IBUF_BUFG,
    AR);
  output [31:0]\F_ieee_result[31] ;
  input [0:0]\FSM_sequential_state_reg_reg[3] ;
  input [31:0]\Q_reg[31]_0 ;
  input clk_IBUF_BUFG;
  input [1:0]AR;

  wire [1:0]AR;
  wire [0:0]\FSM_sequential_state_reg_reg[3] ;
  wire [31:0]\F_ieee_result[31] ;
  wire [31:0]\Q_reg[31]_0 ;
  wire clk_IBUF_BUFG;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Q_reg[31]_0 [0]),
        .Q(\F_ieee_result[31] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Q_reg[31]_0 [10]),
        .Q(\F_ieee_result[31] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Q_reg[31]_0 [11]),
        .Q(\F_ieee_result[31] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Q_reg[31]_0 [12]),
        .Q(\F_ieee_result[31] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Q_reg[31]_0 [13]),
        .Q(\F_ieee_result[31] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Q_reg[31]_0 [14]),
        .Q(\F_ieee_result[31] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Q_reg[31]_0 [15]),
        .Q(\F_ieee_result[31] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Q_reg[31]_0 [16]),
        .Q(\F_ieee_result[31] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Q_reg[31]_0 [17]),
        .Q(\F_ieee_result[31] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Q_reg[31]_0 [18]),
        .Q(\F_ieee_result[31] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Q_reg[31]_0 [19]),
        .Q(\F_ieee_result[31] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Q_reg[31]_0 [1]),
        .Q(\F_ieee_result[31] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Q_reg[31]_0 [20]),
        .Q(\F_ieee_result[31] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Q_reg[31]_0 [21]),
        .Q(\F_ieee_result[31] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Q_reg[31]_0 [22]),
        .Q(\F_ieee_result[31] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(\Q_reg[31]_0 [23]),
        .Q(\F_ieee_result[31] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(\Q_reg[31]_0 [24]),
        .Q(\F_ieee_result[31] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(\Q_reg[31]_0 [25]),
        .Q(\F_ieee_result[31] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(\Q_reg[31]_0 [26]),
        .Q(\F_ieee_result[31] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(\Q_reg[31]_0 [27]),
        .Q(\F_ieee_result[31] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(\Q_reg[31]_0 [28]),
        .Q(\F_ieee_result[31] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(\Q_reg[31]_0 [29]),
        .Q(\F_ieee_result[31] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Q_reg[31]_0 [2]),
        .Q(\F_ieee_result[31] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(\Q_reg[31]_0 [30]),
        .Q(\F_ieee_result[31] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(\Q_reg[31]_0 [31]),
        .Q(\F_ieee_result[31] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Q_reg[31]_0 [3]),
        .Q(\F_ieee_result[31] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Q_reg[31]_0 [4]),
        .Q(\F_ieee_result[31] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Q_reg[31]_0 [5]),
        .Q(\F_ieee_result[31] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Q_reg[31]_0 [6]),
        .Q(\F_ieee_result[31] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Q_reg[31]_0 [7]),
        .Q(\F_ieee_result[31] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Q_reg[31]_0 [8]),
        .Q(\F_ieee_result[31] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Q_reg[31]_0 [9]),
        .Q(\F_ieee_result[31] [9]));
endmodule

(* ORIG_REF_NAME = "RegisterMult" *) 
module RegisterMult_1
   (D,
    \Q_reg[31]_0 ,
    \Q_reg[31]_1 ,
    \Q_reg[3]_0 ,
    \Q_reg[0]_0 ,
    Q,
    selector_c,
    \Q_reg[31]_2 ,
    round_mode_IBUF,
    \Q_reg[28]_0 ,
    \Q_reg[0]_1 ,
    load_0,
    zero_m_flag,
    E,
    \Data_MX[31] ,
    clk_IBUF_BUFG,
    AR);
  output [0:0]D;
  output [31:0]\Q_reg[31]_0 ;
  output [0:0]\Q_reg[31]_1 ;
  output \Q_reg[3]_0 ;
  output \Q_reg[0]_0 ;
  input [0:0]Q;
  input selector_c;
  input [0:0]\Q_reg[31]_2 ;
  input [1:0]round_mode_IBUF;
  input \Q_reg[28]_0 ;
  input \Q_reg[0]_1 ;
  input load_0;
  input zero_m_flag;
  input [0:0]E;
  input [31:0]\Data_MX[31] ;
  input clk_IBUF_BUFG;
  input [1:0]AR;

  wire [1:0]AR;
  wire [0:0]D;
  wire [31:0]\Data_MX[31] ;
  wire [0:0]E;
  wire [0:0]Q;
  wire \Q[0]_i_10_n_0 ;
  wire \Q[0]_i_2__1_n_0 ;
  wire \Q[0]_i_3_n_0 ;
  wire \Q[0]_i_7_n_0 ;
  wire \Q[0]_i_8_n_0 ;
  wire \Q[0]_i_9_n_0 ;
  wire \Q_reg[0]_0 ;
  wire \Q_reg[0]_1 ;
  wire \Q_reg[28]_0 ;
  wire [31:0]\Q_reg[31]_0 ;
  wire [0:0]\Q_reg[31]_1 ;
  wire [0:0]\Q_reg[31]_2 ;
  wire \Q_reg[3]_0 ;
  wire clk_IBUF_BUFG;
  wire load_0;
  wire [1:0]round_mode_IBUF;
  wire selector_c;
  wire zero_m_flag;

  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \Q[0]_i_10 
       (.I0(\Q_reg[31]_0 [4]),
        .I1(\Q_reg[31]_0 [5]),
        .I2(\Q_reg[31]_0 [2]),
        .I3(\Q_reg[31]_0 [3]),
        .I4(\Q_reg[31]_0 [7]),
        .I5(\Q_reg[31]_0 [6]),
        .O(\Q[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \Q[0]_i_1__7 
       (.I0(\Q[0]_i_2__1_n_0 ),
        .I1(\Q[0]_i_3_n_0 ),
        .I2(\Q_reg[28]_0 ),
        .I3(\Q_reg[0]_1 ),
        .I4(load_0),
        .I5(zero_m_flag),
        .O(\Q_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \Q[0]_i_2__1 
       (.I0(\Q_reg[31]_0 [28]),
        .I1(\Q_reg[31]_0 [29]),
        .I2(\Q_reg[31]_0 [26]),
        .I3(\Q_reg[31]_0 [27]),
        .I4(\Q_reg[31]_0 [31]),
        .I5(\Q_reg[31]_0 [30]),
        .O(\Q[0]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \Q[0]_i_3 
       (.I0(\Q[0]_i_7_n_0 ),
        .I1(\Q[0]_i_8_n_0 ),
        .I2(\Q[0]_i_9_n_0 ),
        .I3(\Q[0]_i_10_n_0 ),
        .I4(\Q_reg[31]_0 [0]),
        .I5(\Q_reg[31]_0 [1]),
        .O(\Q[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \Q[0]_i_7 
       (.I0(\Q_reg[31]_0 [22]),
        .I1(\Q_reg[31]_0 [23]),
        .I2(\Q_reg[31]_0 [20]),
        .I3(\Q_reg[31]_0 [21]),
        .I4(\Q_reg[31]_0 [25]),
        .I5(\Q_reg[31]_0 [24]),
        .O(\Q[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \Q[0]_i_8 
       (.I0(\Q_reg[31]_0 [16]),
        .I1(\Q_reg[31]_0 [17]),
        .I2(\Q_reg[31]_0 [14]),
        .I3(\Q_reg[31]_0 [15]),
        .I4(\Q_reg[31]_0 [19]),
        .I5(\Q_reg[31]_0 [18]),
        .O(\Q[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \Q[0]_i_9 
       (.I0(\Q_reg[31]_0 [10]),
        .I1(\Q_reg[31]_0 [11]),
        .I2(\Q_reg[31]_0 [8]),
        .I3(\Q_reg[31]_0 [9]),
        .I4(\Q_reg[31]_0 [13]),
        .I5(\Q_reg[31]_0 [12]),
        .O(\Q[0]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \Q[31]_i_2__0 
       (.I0(Q),
        .I1(selector_c),
        .I2(\Q_reg[31]_0 [31]),
        .I3(\Q_reg[31]_2 ),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Q[31]_i_2__1 
       (.I0(\Q_reg[31]_0 [31]),
        .I1(\Q_reg[31]_2 ),
        .O(\Q_reg[31]_1 ));
  LUT4 #(
    .INIT(16'h2418)) 
    \Q[3]_i_14 
       (.I0(\Q_reg[31]_0 [31]),
        .I1(round_mode_IBUF[0]),
        .I2(round_mode_IBUF[1]),
        .I3(\Q_reg[31]_2 ),
        .O(\Q_reg[3]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Data_MX[31] [0]),
        .Q(\Q_reg[31]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_MX[31] [10]),
        .Q(\Q_reg[31]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_MX[31] [11]),
        .Q(\Q_reg[31]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_MX[31] [12]),
        .Q(\Q_reg[31]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_MX[31] [13]),
        .Q(\Q_reg[31]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_MX[31] [14]),
        .Q(\Q_reg[31]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_MX[31] [15]),
        .Q(\Q_reg[31]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_MX[31] [16]),
        .Q(\Q_reg[31]_0 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_MX[31] [17]),
        .Q(\Q_reg[31]_0 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_MX[31] [18]),
        .Q(\Q_reg[31]_0 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_MX[31] [19]),
        .Q(\Q_reg[31]_0 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Data_MX[31] [1]),
        .Q(\Q_reg[31]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_MX[31] [20]),
        .Q(\Q_reg[31]_0 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_MX[31] [21]),
        .Q(\Q_reg[31]_0 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_MX[31] [22]),
        .Q(\Q_reg[31]_0 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_MX[31] [23]),
        .Q(\Q_reg[31]_0 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_MX[31] [24]),
        .Q(\Q_reg[31]_0 [24]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_MX[31] [25]),
        .Q(\Q_reg[31]_0 [25]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_MX[31] [26]),
        .Q(\Q_reg[31]_0 [26]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_MX[31] [27]),
        .Q(\Q_reg[31]_0 [27]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_MX[31] [28]),
        .Q(\Q_reg[31]_0 [28]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_MX[31] [29]),
        .Q(\Q_reg[31]_0 [29]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Data_MX[31] [2]),
        .Q(\Q_reg[31]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_MX[31] [30]),
        .Q(\Q_reg[31]_0 [30]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_MX[31] [31]),
        .Q(\Q_reg[31]_0 [31]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_MX[31] [3]),
        .Q(\Q_reg[31]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_MX[31] [4]),
        .Q(\Q_reg[31]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_MX[31] [5]),
        .Q(\Q_reg[31]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_MX[31] [6]),
        .Q(\Q_reg[31]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_MX[31] [7]),
        .Q(\Q_reg[31]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_MX[31] [8]),
        .Q(\Q_reg[31]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_MX[31] [9]),
        .Q(\Q_reg[31]_0 [9]));
endmodule

(* ORIG_REF_NAME = "RegisterMult" *) 
module RegisterMult_2
   (\Q_reg[0]_0 ,
    \Q_reg[31]_0 ,
    \Q_reg[0]_1 ,
    \Q_reg[3]_0 ,
    \Q_reg[23]_i_3 ,
    P,
    round_mode_IBUF,
    \Q_reg[31]_1 ,
    E,
    \Data_MY[31] ,
    clk_IBUF_BUFG,
    AR);
  output \Q_reg[0]_0 ;
  output [31:0]\Q_reg[31]_0 ;
  output \Q_reg[0]_1 ;
  output \Q_reg[3]_0 ;
  input \Q_reg[23]_i_3 ;
  input [4:0]P;
  input [1:0]round_mode_IBUF;
  input [0:0]\Q_reg[31]_1 ;
  input [0:0]E;
  input [31:0]\Data_MY[31] ;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [31:0]\Data_MY[31] ;
  wire [0:0]E;
  wire [4:0]P;
  wire \Q[0]_i_11_n_0 ;
  wire \Q[0]_i_12_n_0 ;
  wire \Q[0]_i_13_n_0 ;
  wire \Q[0]_i_14_n_0 ;
  wire \Q[3]_i_16_n_0 ;
  wire \Q[3]_i_17_n_0 ;
  wire \Q[3]_i_18_n_0 ;
  wire \Q[3]_i_19_n_0 ;
  wire \Q[3]_i_20_n_0 ;
  wire \Q_reg[0]_0 ;
  wire \Q_reg[0]_1 ;
  wire \Q_reg[23]_i_3 ;
  wire [31:0]\Q_reg[31]_0 ;
  wire [0:0]\Q_reg[31]_1 ;
  wire \Q_reg[3]_0 ;
  wire clk_IBUF_BUFG;
  wire [1:0]round_mode_IBUF;

  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \Q[0]_i_11 
       (.I0(\Q_reg[31]_0 [22]),
        .I1(\Q_reg[31]_0 [23]),
        .I2(\Q_reg[31]_0 [20]),
        .I3(\Q_reg[31]_0 [21]),
        .I4(\Q_reg[31]_0 [25]),
        .I5(\Q_reg[31]_0 [24]),
        .O(\Q[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \Q[0]_i_12 
       (.I0(\Q_reg[31]_0 [16]),
        .I1(\Q_reg[31]_0 [17]),
        .I2(\Q_reg[31]_0 [14]),
        .I3(\Q_reg[31]_0 [15]),
        .I4(\Q_reg[31]_0 [19]),
        .I5(\Q_reg[31]_0 [18]),
        .O(\Q[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \Q[0]_i_13 
       (.I0(\Q_reg[31]_0 [10]),
        .I1(\Q_reg[31]_0 [11]),
        .I2(\Q_reg[31]_0 [8]),
        .I3(\Q_reg[31]_0 [9]),
        .I4(\Q_reg[31]_0 [13]),
        .I5(\Q_reg[31]_0 [12]),
        .O(\Q[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \Q[0]_i_14 
       (.I0(\Q_reg[31]_0 [4]),
        .I1(\Q_reg[31]_0 [5]),
        .I2(\Q_reg[31]_0 [2]),
        .I3(\Q_reg[31]_0 [3]),
        .I4(\Q_reg[31]_0 [7]),
        .I5(\Q_reg[31]_0 [6]),
        .O(\Q[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \Q[0]_i_4 
       (.I0(\Q_reg[31]_0 [28]),
        .I1(\Q_reg[31]_0 [29]),
        .I2(\Q_reg[31]_0 [26]),
        .I3(\Q_reg[31]_0 [27]),
        .I4(\Q_reg[31]_0 [31]),
        .I5(\Q_reg[31]_0 [30]),
        .O(\Q_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \Q[0]_i_5 
       (.I0(\Q[0]_i_11_n_0 ),
        .I1(\Q[0]_i_12_n_0 ),
        .I2(\Q[0]_i_13_n_0 ),
        .I3(\Q[0]_i_14_n_0 ),
        .I4(\Q_reg[31]_0 [0]),
        .I5(\Q_reg[31]_0 [1]),
        .O(\Q_reg[0]_1 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \Q[3]_i_13 
       (.I0(\Q[3]_i_16_n_0 ),
        .I1(\Q[3]_i_17_n_0 ),
        .I2(\Q[3]_i_18_n_0 ),
        .I3(\Q[3]_i_19_n_0 ),
        .I4(\Q[3]_i_20_n_0 ),
        .O(\Q_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0008800000800800)) 
    \Q[3]_i_16 
       (.I0(\Q_reg[23]_i_3 ),
        .I1(P[0]),
        .I2(\Q_reg[31]_0 [31]),
        .I3(round_mode_IBUF[1]),
        .I4(round_mode_IBUF[0]),
        .I5(\Q_reg[31]_1 ),
        .O(\Q[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0008800000800800)) 
    \Q[3]_i_17 
       (.I0(\Q_reg[23]_i_3 ),
        .I1(P[3]),
        .I2(\Q_reg[31]_0 [31]),
        .I3(round_mode_IBUF[1]),
        .I4(round_mode_IBUF[0]),
        .I5(\Q_reg[31]_1 ),
        .O(\Q[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h1824000000000000)) 
    \Q[3]_i_18 
       (.I0(\Q_reg[31]_0 [31]),
        .I1(round_mode_IBUF[1]),
        .I2(round_mode_IBUF[0]),
        .I3(\Q_reg[31]_1 ),
        .I4(\Q_reg[23]_i_3 ),
        .I5(P[4]),
        .O(\Q[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0008800000800800)) 
    \Q[3]_i_19 
       (.I0(\Q_reg[23]_i_3 ),
        .I1(P[2]),
        .I2(\Q_reg[31]_0 [31]),
        .I3(round_mode_IBUF[1]),
        .I4(round_mode_IBUF[0]),
        .I5(\Q_reg[31]_1 ),
        .O(\Q[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0008800000800800)) 
    \Q[3]_i_20 
       (.I0(\Q_reg[23]_i_3 ),
        .I1(P[1]),
        .I2(\Q_reg[31]_0 [31]),
        .I3(round_mode_IBUF[1]),
        .I4(round_mode_IBUF[0]),
        .I5(\Q_reg[31]_1 ),
        .O(\Q[3]_i_20_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [0]),
        .Q(\Q_reg[31]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [10]),
        .Q(\Q_reg[31]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [11]),
        .Q(\Q_reg[31]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [12]),
        .Q(\Q_reg[31]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [13]),
        .Q(\Q_reg[31]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [14]),
        .Q(\Q_reg[31]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [15]),
        .Q(\Q_reg[31]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [16]),
        .Q(\Q_reg[31]_0 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [17]),
        .Q(\Q_reg[31]_0 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [18]),
        .Q(\Q_reg[31]_0 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [19]),
        .Q(\Q_reg[31]_0 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [1]),
        .Q(\Q_reg[31]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [20]),
        .Q(\Q_reg[31]_0 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [21]),
        .Q(\Q_reg[31]_0 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [22]),
        .Q(\Q_reg[31]_0 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [23]),
        .Q(\Q_reg[31]_0 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [24]),
        .Q(\Q_reg[31]_0 [24]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [25]),
        .Q(\Q_reg[31]_0 [25]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [26]),
        .Q(\Q_reg[31]_0 [26]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [27]),
        .Q(\Q_reg[31]_0 [27]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [28]),
        .Q(\Q_reg[31]_0 [28]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [29]),
        .Q(\Q_reg[31]_0 [29]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [2]),
        .Q(\Q_reg[31]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [30]),
        .Q(\Q_reg[31]_0 [30]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [31]),
        .Q(\Q_reg[31]_0 [31]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [3]),
        .Q(\Q_reg[31]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [4]),
        .Q(\Q_reg[31]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [5]),
        .Q(\Q_reg[31]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [6]),
        .Q(\Q_reg[31]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [7]),
        .Q(\Q_reg[31]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [8]),
        .Q(\Q_reg[31]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Data_MY[31] [9]),
        .Q(\Q_reg[31]_0 [9]));
endmodule

(* ORIG_REF_NAME = "RegisterMult" *) 
module RegisterMult__parameterized0
   (\Q_reg[0]_0 ,
    \Q_reg[8]_0 ,
    load_12,
    underflow_flag_OBUF,
    E,
    D,
    clk_IBUF_BUFG,
    AR);
  output \Q_reg[0]_0 ;
  output [8:0]\Q_reg[8]_0 ;
  input load_12;
  input underflow_flag_OBUF;
  input [0:0]E;
  input [8:0]D;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [8:0]D;
  wire [0:0]E;
  wire \Q[8]_i_3__0_n_0 ;
  wire \Q_reg[0]_0 ;
  wire [8:0]\Q_reg[8]_0 ;
  wire \Q_reg_n_0_[0] ;
  wire \Q_reg_n_0_[1] ;
  wire \Q_reg_n_0_[2] ;
  wire \Q_reg_n_0_[3] ;
  wire \Q_reg_n_0_[4] ;
  wire \Q_reg_n_0_[5] ;
  wire \Q_reg_n_0_[6] ;
  wire \Q_reg_n_0_[7] ;
  wire \Q_reg_n_0_[8] ;
  wire clk_IBUF_BUFG;
  wire load_12;
  wire underflow_flag_OBUF;

  LUT1 #(
    .INIT(2'h1)) 
    \Q[0]_i_1__1 
       (.I0(\Q_reg_n_0_[0] ),
        .O(\Q_reg[8]_0 [0]));
  LUT6 #(
    .INIT(64'h000BFFFF000B0000)) 
    \Q[0]_i_1__6 
       (.I0(\Q[8]_i_3__0_n_0 ),
        .I1(\Q_reg_n_0_[6] ),
        .I2(\Q_reg_n_0_[7] ),
        .I3(\Q_reg_n_0_[8] ),
        .I4(load_12),
        .I5(underflow_flag_OBUF),
        .O(\Q_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Q[1]_i_1 
       (.I0(\Q_reg_n_0_[0] ),
        .I1(\Q_reg_n_0_[1] ),
        .O(\Q_reg[8]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Q[2]_i_1__0 
       (.I0(\Q_reg_n_0_[1] ),
        .I1(\Q_reg_n_0_[0] ),
        .I2(\Q_reg_n_0_[2] ),
        .O(\Q_reg[8]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Q[3]_i_1 
       (.I0(\Q_reg_n_0_[2] ),
        .I1(\Q_reg_n_0_[0] ),
        .I2(\Q_reg_n_0_[1] ),
        .I3(\Q_reg_n_0_[3] ),
        .O(\Q_reg[8]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \Q[4]_i_1 
       (.I0(\Q_reg_n_0_[3] ),
        .I1(\Q_reg_n_0_[1] ),
        .I2(\Q_reg_n_0_[0] ),
        .I3(\Q_reg_n_0_[2] ),
        .I4(\Q_reg_n_0_[4] ),
        .O(\Q_reg[8]_0 [4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \Q[5]_i_1 
       (.I0(\Q_reg_n_0_[4] ),
        .I1(\Q_reg_n_0_[2] ),
        .I2(\Q_reg_n_0_[0] ),
        .I3(\Q_reg_n_0_[1] ),
        .I4(\Q_reg_n_0_[3] ),
        .I5(\Q_reg_n_0_[5] ),
        .O(\Q_reg[8]_0 [5]));
  LUT2 #(
    .INIT(4'h9)) 
    \Q[6]_i_1 
       (.I0(\Q[8]_i_3__0_n_0 ),
        .I1(\Q_reg_n_0_[6] ),
        .O(\Q_reg[8]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h4B)) 
    \Q[7]_i_1__1 
       (.I0(\Q[8]_i_3__0_n_0 ),
        .I1(\Q_reg_n_0_[6] ),
        .I2(\Q_reg_n_0_[7] ),
        .O(\Q_reg[8]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hF40B)) 
    \Q[8]_i_2 
       (.I0(\Q[8]_i_3__0_n_0 ),
        .I1(\Q_reg_n_0_[6] ),
        .I2(\Q_reg_n_0_[7] ),
        .I3(\Q_reg_n_0_[8] ),
        .O(\Q_reg[8]_0 [8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \Q[8]_i_3__0 
       (.I0(\Q_reg_n_0_[4] ),
        .I1(\Q_reg_n_0_[2] ),
        .I2(\Q_reg_n_0_[0] ),
        .I3(\Q_reg_n_0_[1] ),
        .I4(\Q_reg_n_0_[3] ),
        .I5(\Q_reg_n_0_[5] ),
        .O(\Q[8]_i_3__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[0]),
        .Q(\Q_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[1]),
        .Q(\Q_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[2]),
        .Q(\Q_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[3]),
        .Q(\Q_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[4]),
        .Q(\Q_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[5]),
        .Q(\Q_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[6]),
        .Q(\Q_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[7]),
        .Q(\Q_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[8]),
        .Q(\Q_reg_n_0_[8] ));
endmodule

(* ORIG_REF_NAME = "RegisterMult" *) 
module RegisterMult__parameterized1
   (underflow_flag_OBUF,
    \Q_reg[6] ,
    clk_IBUF_BUFG,
    AR);
  output underflow_flag_OBUF;
  input \Q_reg[6] ;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire \Q_reg[6] ;
  wire clk_IBUF_BUFG;
  wire underflow_flag_OBUF;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[6] ),
        .Q(underflow_flag_OBUF));
endmodule

(* ORIG_REF_NAME = "RegisterMult" *) 
module RegisterMult__parameterized10
   (\Q_reg[0]_0 ,
    E,
    \Q_reg[24] ,
    clk_IBUF_BUFG,
    AR);
  output \Q_reg[0]_0 ;
  input [0:0]E;
  input \Q_reg[24] ;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire \Q_reg[0]_0 ;
  wire \Q_reg[24] ;
  wire clk_IBUF_BUFG;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[24] ),
        .Q(\Q_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "RegisterMult" *) 
module RegisterMult__parameterized11
   (D,
    Q,
    \Q_reg[0]_0 ,
    \Q_reg[0]_1 ,
    E,
    \Q_reg[7]_0 ,
    clk_IBUF_BUFG,
    AR);
  output [6:0]D;
  output [0:0]Q;
  output \Q_reg[0]_0 ;
  input \Q_reg[0]_1 ;
  input [0:0]E;
  input [7:0]\Q_reg[7]_0 ;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [6:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire \Q[0]_i_2__2_n_0 ;
  wire \Q[7]_i_3__0_n_0 ;
  wire \Q_reg[0]_0 ;
  wire \Q_reg[0]_1 ;
  wire [7:0]\Q_reg[7]_0 ;
  wire \Q_reg_n_0_[1] ;
  wire \Q_reg_n_0_[2] ;
  wire \Q_reg_n_0_[3] ;
  wire \Q_reg_n_0_[4] ;
  wire \Q_reg_n_0_[5] ;
  wire \Q_reg_n_0_[6] ;
  wire \Q_reg_n_0_[7] ;
  wire clk_IBUF_BUFG;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \Q[0]_i_1__4 
       (.I0(\Q_reg_n_0_[1] ),
        .I1(\Q_reg[0]_1 ),
        .I2(Q),
        .I3(\Q[0]_i_2__2_n_0 ),
        .O(\Q_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \Q[0]_i_2__2 
       (.I0(\Q_reg_n_0_[4] ),
        .I1(\Q_reg_n_0_[5] ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\Q_reg_n_0_[3] ),
        .I4(\Q_reg_n_0_[7] ),
        .I5(\Q_reg_n_0_[6] ),
        .O(\Q[0]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Q[1]_i_1__1 
       (.I0(Q),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg_n_0_[1] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Q[2]_i_1__2 
       (.I0(\Q_reg_n_0_[1] ),
        .I1(\Q_reg[0]_1 ),
        .I2(Q),
        .I3(\Q_reg_n_0_[2] ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \Q[3]_i_1__1 
       (.I0(\Q_reg_n_0_[2] ),
        .I1(Q),
        .I2(\Q_reg[0]_1 ),
        .I3(\Q_reg_n_0_[1] ),
        .I4(\Q_reg_n_0_[3] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \Q[4]_i_1__1 
       (.I0(\Q_reg_n_0_[3] ),
        .I1(\Q_reg_n_0_[1] ),
        .I2(\Q_reg[0]_1 ),
        .I3(Q),
        .I4(\Q_reg_n_0_[2] ),
        .I5(\Q_reg_n_0_[4] ),
        .O(D[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \Q[5]_i_1__1 
       (.I0(\Q[7]_i_3__0_n_0 ),
        .I1(\Q_reg_n_0_[5] ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \Q[6]_i_1__1 
       (.I0(\Q_reg_n_0_[5] ),
        .I1(\Q[7]_i_3__0_n_0 ),
        .I2(\Q_reg_n_0_[6] ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \Q[7]_i_2__0 
       (.I0(\Q_reg_n_0_[6] ),
        .I1(\Q[7]_i_3__0_n_0 ),
        .I2(\Q_reg_n_0_[5] ),
        .I3(\Q_reg_n_0_[7] ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \Q[7]_i_3__0 
       (.I0(\Q_reg_n_0_[3] ),
        .I1(\Q_reg_n_0_[1] ),
        .I2(\Q_reg[0]_1 ),
        .I3(Q),
        .I4(\Q_reg_n_0_[2] ),
        .I5(\Q_reg_n_0_[4] ),
        .O(\Q[7]_i_3__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[7]_0 [0]),
        .Q(Q));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[7]_0 [1]),
        .Q(\Q_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[7]_0 [2]),
        .Q(\Q_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[7]_0 [3]),
        .Q(\Q_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[7]_0 [4]),
        .Q(\Q_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[7]_0 [5]),
        .Q(\Q_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[7]_0 [6]),
        .Q(\Q_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[7]_0 [7]),
        .Q(\Q_reg_n_0_[7] ));
endmodule

(* ORIG_REF_NAME = "RegisterMult" *) 
module RegisterMult__parameterized12
   (\Q_reg[0]_0 ,
    D,
    E,
    \Q_reg[0]_1 ,
    clk_IBUF_BUFG,
    AR,
    Q);
  output \Q_reg[0]_0 ;
  output [0:0]D;
  input [0:0]E;
  input \Q_reg[0]_1 ;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input [0:0]Q;

  wire [0:0]AR;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire \Q_reg[0]_0 ;
  wire \Q_reg[0]_1 ;
  wire clk_IBUF_BUFG;

  LUT2 #(
    .INIT(4'h6)) 
    \Q[0]_i_1__5 
       (.I0(\Q_reg[0]_0 ),
        .I1(Q),
        .O(D));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[0]_1 ),
        .Q(\Q_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "RegisterMult" *) 
module RegisterMult__parameterized13
   (Q,
    \FSM_sequential_state_reg_reg[4] ,
    D,
    clk_IBUF_BUFG,
    AR);
  output [7:0]Q;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;
  input [7:0]D;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [7:0]D;
  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire [7:0]Q;
  wire clk_IBUF_BUFG;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(D[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "RegisterMult" *) 
module RegisterMult__parameterized14
   (overflow_comp_b,
    \FSM_sequential_state_reg_reg[4] ,
    \Q_reg[1] ,
    clk_IBUF_BUFG,
    AR);
  output overflow_comp_b;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;
  input \Q_reg[1] ;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire \Q_reg[1] ;
  wire clk_IBUF_BUFG;
  wire overflow_comp_b;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Q_reg[1] ),
        .Q(overflow_comp_b));
endmodule

(* ORIG_REF_NAME = "RegisterMult" *) 
module RegisterMult__parameterized15
   (D,
    Q,
    \Q_reg[0]_0 ,
    selector_a,
    P,
    \Q_reg[23]_i_3 ,
    E,
    \Q_reg[23]_0 ,
    clk_IBUF_BUFG,
    AR);
  output [22:0]D;
  output [1:0]Q;
  output \Q_reg[0]_0 ;
  input selector_a;
  input [24:0]P;
  input \Q_reg[23]_i_3 ;
  input [0:0]E;
  input [24:0]\Q_reg[23]_0 ;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [22:0]D;
  wire [0:0]E;
  wire [24:0]P;
  wire [1:0]Q;
  wire \Q[10]_i_2_n_0 ;
  wire \Q[11]_i_2_n_0 ;
  wire \Q[12]_i_2_n_0 ;
  wire \Q[13]_i_2_n_0 ;
  wire \Q[14]_i_2_n_0 ;
  wire \Q[15]_i_2_n_0 ;
  wire \Q[16]_i_2_n_0 ;
  wire \Q[17]_i_2_n_0 ;
  wire \Q[18]_i_2_n_0 ;
  wire \Q[19]_i_2_n_0 ;
  wire \Q[1]_i_2_n_0 ;
  wire \Q[20]_i_2_n_0 ;
  wire \Q[21]_i_2_n_0 ;
  wire \Q[22]_i_2_n_0 ;
  wire \Q[2]_i_2_n_0 ;
  wire \Q[3]_i_2__0_n_0 ;
  wire \Q[4]_i_2_n_0 ;
  wire \Q[5]_i_2_n_0 ;
  wire \Q[6]_i_2_n_0 ;
  wire \Q[7]_i_2_n_0 ;
  wire \Q[8]_i_2__0_n_0 ;
  wire \Q[9]_i_2_n_0 ;
  wire \Q_reg[0]_0 ;
  wire [24:0]\Q_reg[23]_0 ;
  wire \Q_reg[23]_i_3 ;
  wire \Q_reg_n_0_[0] ;
  wire \Q_reg_n_0_[10] ;
  wire \Q_reg_n_0_[11] ;
  wire \Q_reg_n_0_[12] ;
  wire \Q_reg_n_0_[13] ;
  wire \Q_reg_n_0_[14] ;
  wire \Q_reg_n_0_[15] ;
  wire \Q_reg_n_0_[16] ;
  wire \Q_reg_n_0_[17] ;
  wire \Q_reg_n_0_[18] ;
  wire \Q_reg_n_0_[19] ;
  wire \Q_reg_n_0_[1] ;
  wire \Q_reg_n_0_[20] ;
  wire \Q_reg_n_0_[21] ;
  wire \Q_reg_n_0_[22] ;
  wire \Q_reg_n_0_[2] ;
  wire \Q_reg_n_0_[3] ;
  wire \Q_reg_n_0_[4] ;
  wire \Q_reg_n_0_[5] ;
  wire \Q_reg_n_0_[6] ;
  wire \Q_reg_n_0_[7] ;
  wire \Q_reg_n_0_[8] ;
  wire \Q_reg_n_0_[9] ;
  wire clk_IBUF_BUFG;
  wire selector_a;

  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \Q[0]_i_1__2 
       (.I0(\Q[1]_i_2_n_0 ),
        .I1(\Q_reg[0]_0 ),
        .I2(\Q_reg_n_0_[0] ),
        .I3(selector_a),
        .I4(P[0]),
        .I5(\Q_reg[23]_i_3 ),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hB888)) 
    \Q[0]_i_1__3 
       (.I0(Q[1]),
        .I1(selector_a),
        .I2(P[24]),
        .I3(\Q_reg[23]_i_3 ),
        .O(\Q_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \Q[10]_i_1 
       (.I0(\Q_reg_n_0_[11] ),
        .I1(selector_a),
        .I2(P[11]),
        .I3(\Q_reg[23]_i_3 ),
        .I4(\Q_reg[0]_0 ),
        .I5(\Q[10]_i_2_n_0 ),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hB888)) 
    \Q[10]_i_2 
       (.I0(\Q_reg_n_0_[10] ),
        .I1(selector_a),
        .I2(P[10]),
        .I3(\Q_reg[23]_i_3 ),
        .O(\Q[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \Q[11]_i_1 
       (.I0(\Q_reg_n_0_[12] ),
        .I1(selector_a),
        .I2(P[12]),
        .I3(\Q_reg[23]_i_3 ),
        .I4(\Q_reg[0]_0 ),
        .I5(\Q[11]_i_2_n_0 ),
        .O(D[11]));
  LUT4 #(
    .INIT(16'hB888)) 
    \Q[11]_i_2 
       (.I0(\Q_reg_n_0_[11] ),
        .I1(selector_a),
        .I2(P[11]),
        .I3(\Q_reg[23]_i_3 ),
        .O(\Q[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \Q[12]_i_1 
       (.I0(\Q_reg_n_0_[13] ),
        .I1(selector_a),
        .I2(P[13]),
        .I3(\Q_reg[23]_i_3 ),
        .I4(\Q_reg[0]_0 ),
        .I5(\Q[12]_i_2_n_0 ),
        .O(D[12]));
  LUT4 #(
    .INIT(16'hB888)) 
    \Q[12]_i_2 
       (.I0(\Q_reg_n_0_[12] ),
        .I1(selector_a),
        .I2(P[12]),
        .I3(\Q_reg[23]_i_3 ),
        .O(\Q[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \Q[13]_i_1 
       (.I0(\Q_reg_n_0_[14] ),
        .I1(selector_a),
        .I2(P[14]),
        .I3(\Q_reg[23]_i_3 ),
        .I4(\Q_reg[0]_0 ),
        .I5(\Q[13]_i_2_n_0 ),
        .O(D[13]));
  LUT4 #(
    .INIT(16'hB888)) 
    \Q[13]_i_2 
       (.I0(\Q_reg_n_0_[13] ),
        .I1(selector_a),
        .I2(P[13]),
        .I3(\Q_reg[23]_i_3 ),
        .O(\Q[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \Q[14]_i_1 
       (.I0(\Q_reg_n_0_[15] ),
        .I1(selector_a),
        .I2(P[15]),
        .I3(\Q_reg[23]_i_3 ),
        .I4(\Q_reg[0]_0 ),
        .I5(\Q[14]_i_2_n_0 ),
        .O(D[14]));
  LUT4 #(
    .INIT(16'hB888)) 
    \Q[14]_i_2 
       (.I0(\Q_reg_n_0_[14] ),
        .I1(selector_a),
        .I2(P[14]),
        .I3(\Q_reg[23]_i_3 ),
        .O(\Q[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \Q[15]_i_1 
       (.I0(\Q_reg_n_0_[16] ),
        .I1(selector_a),
        .I2(P[16]),
        .I3(\Q_reg[23]_i_3 ),
        .I4(\Q_reg[0]_0 ),
        .I5(\Q[15]_i_2_n_0 ),
        .O(D[15]));
  LUT4 #(
    .INIT(16'hB888)) 
    \Q[15]_i_2 
       (.I0(\Q_reg_n_0_[15] ),
        .I1(selector_a),
        .I2(P[15]),
        .I3(\Q_reg[23]_i_3 ),
        .O(\Q[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \Q[16]_i_1 
       (.I0(\Q_reg_n_0_[17] ),
        .I1(selector_a),
        .I2(P[17]),
        .I3(\Q_reg[23]_i_3 ),
        .I4(\Q_reg[0]_0 ),
        .I5(\Q[16]_i_2_n_0 ),
        .O(D[16]));
  LUT4 #(
    .INIT(16'hB888)) 
    \Q[16]_i_2 
       (.I0(\Q_reg_n_0_[16] ),
        .I1(selector_a),
        .I2(P[16]),
        .I3(\Q_reg[23]_i_3 ),
        .O(\Q[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \Q[17]_i_1 
       (.I0(\Q_reg_n_0_[18] ),
        .I1(selector_a),
        .I2(P[18]),
        .I3(\Q_reg[23]_i_3 ),
        .I4(\Q_reg[0]_0 ),
        .I5(\Q[17]_i_2_n_0 ),
        .O(D[17]));
  LUT4 #(
    .INIT(16'hB888)) 
    \Q[17]_i_2 
       (.I0(\Q_reg_n_0_[17] ),
        .I1(selector_a),
        .I2(P[17]),
        .I3(\Q_reg[23]_i_3 ),
        .O(\Q[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \Q[18]_i_1 
       (.I0(\Q_reg_n_0_[19] ),
        .I1(selector_a),
        .I2(P[19]),
        .I3(\Q_reg[23]_i_3 ),
        .I4(\Q_reg[0]_0 ),
        .I5(\Q[18]_i_2_n_0 ),
        .O(D[18]));
  LUT4 #(
    .INIT(16'hB888)) 
    \Q[18]_i_2 
       (.I0(\Q_reg_n_0_[18] ),
        .I1(selector_a),
        .I2(P[18]),
        .I3(\Q_reg[23]_i_3 ),
        .O(\Q[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \Q[19]_i_1 
       (.I0(\Q_reg_n_0_[20] ),
        .I1(selector_a),
        .I2(P[20]),
        .I3(\Q_reg[23]_i_3 ),
        .I4(\Q_reg[0]_0 ),
        .I5(\Q[19]_i_2_n_0 ),
        .O(D[19]));
  LUT4 #(
    .INIT(16'hB888)) 
    \Q[19]_i_2 
       (.I0(\Q_reg_n_0_[19] ),
        .I1(selector_a),
        .I2(P[19]),
        .I3(\Q_reg[23]_i_3 ),
        .O(\Q[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \Q[1]_i_1__0 
       (.I0(\Q_reg_n_0_[2] ),
        .I1(selector_a),
        .I2(P[2]),
        .I3(\Q_reg[23]_i_3 ),
        .I4(\Q_reg[0]_0 ),
        .I5(\Q[1]_i_2_n_0 ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hB888)) 
    \Q[1]_i_2 
       (.I0(\Q_reg_n_0_[1] ),
        .I1(selector_a),
        .I2(P[1]),
        .I3(\Q_reg[23]_i_3 ),
        .O(\Q[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \Q[20]_i_1 
       (.I0(\Q_reg_n_0_[21] ),
        .I1(selector_a),
        .I2(P[21]),
        .I3(\Q_reg[23]_i_3 ),
        .I4(\Q_reg[0]_0 ),
        .I5(\Q[20]_i_2_n_0 ),
        .O(D[20]));
  LUT4 #(
    .INIT(16'hB888)) 
    \Q[20]_i_2 
       (.I0(\Q_reg_n_0_[20] ),
        .I1(selector_a),
        .I2(P[20]),
        .I3(\Q_reg[23]_i_3 ),
        .O(\Q[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \Q[21]_i_1 
       (.I0(\Q_reg_n_0_[22] ),
        .I1(selector_a),
        .I2(P[22]),
        .I3(\Q_reg[23]_i_3 ),
        .I4(\Q_reg[0]_0 ),
        .I5(\Q[21]_i_2_n_0 ),
        .O(D[21]));
  LUT4 #(
    .INIT(16'hB888)) 
    \Q[21]_i_2 
       (.I0(\Q_reg_n_0_[21] ),
        .I1(selector_a),
        .I2(P[21]),
        .I3(\Q_reg[23]_i_3 ),
        .O(\Q[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \Q[22]_i_1__0 
       (.I0(Q[0]),
        .I1(selector_a),
        .I2(P[23]),
        .I3(\Q_reg[23]_i_3 ),
        .I4(\Q_reg[0]_0 ),
        .I5(\Q[22]_i_2_n_0 ),
        .O(D[22]));
  LUT4 #(
    .INIT(16'hB888)) 
    \Q[22]_i_2 
       (.I0(\Q_reg_n_0_[22] ),
        .I1(selector_a),
        .I2(P[22]),
        .I3(\Q_reg[23]_i_3 ),
        .O(\Q[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \Q[2]_i_1__1 
       (.I0(\Q_reg_n_0_[3] ),
        .I1(selector_a),
        .I2(P[3]),
        .I3(\Q_reg[23]_i_3 ),
        .I4(\Q_reg[0]_0 ),
        .I5(\Q[2]_i_2_n_0 ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hB888)) 
    \Q[2]_i_2 
       (.I0(\Q_reg_n_0_[2] ),
        .I1(selector_a),
        .I2(P[2]),
        .I3(\Q_reg[23]_i_3 ),
        .O(\Q[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \Q[3]_i_1__0 
       (.I0(\Q_reg_n_0_[4] ),
        .I1(selector_a),
        .I2(P[4]),
        .I3(\Q_reg[23]_i_3 ),
        .I4(\Q_reg[0]_0 ),
        .I5(\Q[3]_i_2__0_n_0 ),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hB888)) 
    \Q[3]_i_2__0 
       (.I0(\Q_reg_n_0_[3] ),
        .I1(selector_a),
        .I2(P[3]),
        .I3(\Q_reg[23]_i_3 ),
        .O(\Q[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \Q[4]_i_1__0 
       (.I0(\Q_reg_n_0_[5] ),
        .I1(selector_a),
        .I2(P[5]),
        .I3(\Q_reg[23]_i_3 ),
        .I4(\Q_reg[0]_0 ),
        .I5(\Q[4]_i_2_n_0 ),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hB888)) 
    \Q[4]_i_2 
       (.I0(\Q_reg_n_0_[4] ),
        .I1(selector_a),
        .I2(P[4]),
        .I3(\Q_reg[23]_i_3 ),
        .O(\Q[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \Q[5]_i_1__0 
       (.I0(\Q_reg_n_0_[6] ),
        .I1(selector_a),
        .I2(P[6]),
        .I3(\Q_reg[23]_i_3 ),
        .I4(\Q_reg[0]_0 ),
        .I5(\Q[5]_i_2_n_0 ),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hB888)) 
    \Q[5]_i_2 
       (.I0(\Q_reg_n_0_[5] ),
        .I1(selector_a),
        .I2(P[5]),
        .I3(\Q_reg[23]_i_3 ),
        .O(\Q[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \Q[6]_i_1__0 
       (.I0(\Q_reg_n_0_[7] ),
        .I1(selector_a),
        .I2(P[7]),
        .I3(\Q_reg[23]_i_3 ),
        .I4(\Q_reg[0]_0 ),
        .I5(\Q[6]_i_2_n_0 ),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hB888)) 
    \Q[6]_i_2 
       (.I0(\Q_reg_n_0_[6] ),
        .I1(selector_a),
        .I2(P[6]),
        .I3(\Q_reg[23]_i_3 ),
        .O(\Q[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \Q[7]_i_1__2 
       (.I0(\Q_reg_n_0_[8] ),
        .I1(selector_a),
        .I2(P[8]),
        .I3(\Q_reg[23]_i_3 ),
        .I4(\Q_reg[0]_0 ),
        .I5(\Q[7]_i_2_n_0 ),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hB888)) 
    \Q[7]_i_2 
       (.I0(\Q_reg_n_0_[7] ),
        .I1(selector_a),
        .I2(P[7]),
        .I3(\Q_reg[23]_i_3 ),
        .O(\Q[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \Q[8]_i_1__1 
       (.I0(\Q_reg_n_0_[9] ),
        .I1(selector_a),
        .I2(P[9]),
        .I3(\Q_reg[23]_i_3 ),
        .I4(\Q_reg[0]_0 ),
        .I5(\Q[8]_i_2__0_n_0 ),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hB888)) 
    \Q[8]_i_2__0 
       (.I0(\Q_reg_n_0_[8] ),
        .I1(selector_a),
        .I2(P[8]),
        .I3(\Q_reg[23]_i_3 ),
        .O(\Q[8]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \Q[9]_i_1 
       (.I0(\Q_reg_n_0_[10] ),
        .I1(selector_a),
        .I2(P[10]),
        .I3(\Q_reg[23]_i_3 ),
        .I4(\Q_reg[0]_0 ),
        .I5(\Q[9]_i_2_n_0 ),
        .O(D[9]));
  LUT4 #(
    .INIT(16'hB888)) 
    \Q[9]_i_2 
       (.I0(\Q_reg_n_0_[9] ),
        .I1(selector_a),
        .I2(P[9]),
        .I3(\Q_reg[23]_i_3 ),
        .O(\Q[9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[23]_0 [0]),
        .Q(\Q_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[23]_0 [10]),
        .Q(\Q_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[23]_0 [11]),
        .Q(\Q_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[23]_0 [12]),
        .Q(\Q_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[23]_0 [13]),
        .Q(\Q_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[23]_0 [14]),
        .Q(\Q_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[23]_0 [15]),
        .Q(\Q_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[23]_0 [16]),
        .Q(\Q_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[23]_0 [17]),
        .Q(\Q_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[23]_0 [18]),
        .Q(\Q_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[23]_0 [19]),
        .Q(\Q_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[23]_0 [1]),
        .Q(\Q_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[23]_0 [20]),
        .Q(\Q_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[23]_0 [21]),
        .Q(\Q_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[23]_0 [22]),
        .Q(\Q_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[23]_0 [23]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[23]_0 [24]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[23]_0 [2]),
        .Q(\Q_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[23]_0 [3]),
        .Q(\Q_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[23]_0 [4]),
        .Q(\Q_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[23]_0 [5]),
        .Q(\Q_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[23]_0 [6]),
        .Q(\Q_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[23]_0 [7]),
        .Q(\Q_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[23]_0 [8]),
        .Q(\Q_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[23]_0 [9]),
        .Q(\Q_reg_n_0_[9] ));
endmodule

(* ORIG_REF_NAME = "RegisterMult" *) 
module RegisterMult__parameterized2
   (Q,
    \Q_reg[0]_0 ,
    E,
    D,
    clk_IBUF_BUFG,
    AR);
  output [8:0]Q;
  output [0:0]\Q_reg[0]_0 ;
  input [0:0]E;
  input [8:0]D;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [8:0]D;
  wire [0:0]E;
  wire [8:0]Q;
  wire \Q[0]_i_2__0_n_0 ;
  wire [0:0]\Q_reg[0]_0 ;
  wire clk_IBUF_BUFG;

  LUT3 #(
    .INIT(8'h80)) 
    \Q[0]_i_1__0 
       (.I0(\Q[0]_i_2__0_n_0 ),
        .I1(Q[4]),
        .I2(Q[5]),
        .O(\Q_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \Q[0]_i_2__0 
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\Q[0]_i_2__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[8]),
        .Q(Q[8]));
endmodule

(* ORIG_REF_NAME = "RegisterMult" *) 
module RegisterMult__parameterized3
   (overflow_cout,
    E,
    Q,
    clk_IBUF_BUFG,
    AR);
  output overflow_cout;
  input [0:0]E;
  input [0:0]Q;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire overflow_cout;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(Q),
        .Q(overflow_cout));
endmodule

(* ORIG_REF_NAME = "RegisterMult" *) 
module RegisterMult__parameterized4
   (overflow_comp_a,
    overflow_flag_OBUF,
    E,
    \Q_reg[4] ,
    clk_IBUF_BUFG,
    AR,
    overflow_comp_b,
    overflow_cout);
  output overflow_comp_a;
  output overflow_flag_OBUF;
  input [0:0]E;
  input [0:0]\Q_reg[4] ;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input overflow_comp_b;
  input overflow_cout;

  wire [0:0]AR;
  wire [0:0]E;
  wire [0:0]\Q_reg[4] ;
  wire clk_IBUF_BUFG;
  wire overflow_comp_a;
  wire overflow_comp_b;
  wire overflow_cout;
  wire overflow_flag_OBUF;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[4] ),
        .Q(overflow_comp_a));
  LUT3 #(
    .INIT(8'hFE)) 
    overflow_flag_OBUF_inst_i_1
       (.I0(overflow_comp_b),
        .I1(overflow_comp_a),
        .I2(overflow_cout),
        .O(overflow_flag_OBUF));
endmodule

(* ORIG_REF_NAME = "RegisterMult" *) 
module RegisterMult__parameterized5
   (\Q_reg[7]_0 ,
    E,
    Q,
    clk_IBUF_BUFG,
    AR);
  output [7:0]\Q_reg[7]_0 ;
  input [0:0]E;
  input [7:0]Q;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [7:0]Q;
  wire [7:0]\Q_reg[7]_0 ;
  wire clk_IBUF_BUFG;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(Q[0]),
        .Q(\Q_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(Q[1]),
        .Q(\Q_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(Q[2]),
        .Q(\Q_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(Q[3]),
        .Q(\Q_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(Q[4]),
        .Q(\Q_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(Q[5]),
        .Q(\Q_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(Q[6]),
        .Q(\Q_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(Q[7]),
        .Q(\Q_reg[7]_0 [7]));
endmodule

(* ORIG_REF_NAME = "RegisterMult" *) 
module RegisterMult__parameterized6
   (B,
    Q,
    \FSM_sequential_state_reg_reg[5] ,
    clk_IBUF_BUFG,
    AR,
    \Q_reg[22]_0 );
  output [6:0]B;
  output [16:0]Q;
  input [0:0]\FSM_sequential_state_reg_reg[5] ;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input [22:0]\Q_reg[22]_0 ;

  wire [0:0]AR;
  wire [6:0]B;
  wire [0:0]\FSM_sequential_state_reg_reg[5] ;
  wire [16:0]Q;
  wire [22:0]\Q_reg[22]_0 ;
  wire clk_IBUF_BUFG;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [17]),
        .Q(B[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [18]),
        .Q(B[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [19]),
        .Q(B[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [20]),
        .Q(B[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [21]),
        .Q(B[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [22]),
        .Q(B[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(1'b1),
        .Q(B[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "RegisterMult" *) 
module RegisterMult__parameterized7
   (Q,
    \FSM_sequential_state_reg_reg[5] ,
    \Q_reg[22]_0 ,
    clk_IBUF_BUFG,
    AR);
  output [22:0]Q;
  input [0:0]\FSM_sequential_state_reg_reg[5] ;
  input [22:0]\Q_reg[22]_0 ;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]\FSM_sequential_state_reg_reg[5] ;
  wire [22:0]Q;
  wire [22:0]\Q_reg[22]_0 ;
  wire clk_IBUF_BUFG;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(AR),
        .D(\Q_reg[22]_0 [9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "RegisterMult" *) 
module RegisterMult__parameterized8
   (ctrl,
    \Q_reg[3]_0 ,
    \Q_reg[3]_1 ,
    \Q_reg[3]_2 ,
    \Q_reg[3]_3 ,
    Result__0,
    Result__0_0,
    \Q_reg[31] ,
    P,
    \Q_reg[23]_i_3 ,
    \Q_reg[31]_0 ,
    round_mode_IBUF,
    \Q_reg[31]_1 ,
    E,
    D,
    clk_IBUF_BUFG,
    AR);
  output ctrl;
  output \Q_reg[3]_0 ;
  output \Q_reg[3]_1 ;
  output \Q_reg[3]_2 ;
  output \Q_reg[3]_3 ;
  input Result__0;
  input Result__0_0;
  input \Q_reg[31] ;
  input [0:0]P;
  input \Q_reg[23]_i_3 ;
  input [0:0]\Q_reg[31]_0 ;
  input [1:0]round_mode_IBUF;
  input [0:0]\Q_reg[31]_1 ;
  input [0:0]E;
  input [16:0]D;
  input clk_IBUF_BUFG;
  input [1:0]AR;

  wire [1:0]AR;
  wire [16:0]D;
  wire [0:0]E;
  wire [0:0]P;
  wire \Q[3]_i_15_n_0 ;
  wire \Q_reg[23]_i_3 ;
  wire \Q_reg[31] ;
  wire [0:0]\Q_reg[31]_0 ;
  wire [0:0]\Q_reg[31]_1 ;
  wire \Q_reg[3]_0 ;
  wire \Q_reg[3]_1 ;
  wire \Q_reg[3]_2 ;
  wire \Q_reg[3]_3 ;
  wire \Q_reg_n_0_[0] ;
  wire \Q_reg_n_0_[10] ;
  wire \Q_reg_n_0_[11] ;
  wire \Q_reg_n_0_[12] ;
  wire \Q_reg_n_0_[13] ;
  wire \Q_reg_n_0_[14] ;
  wire \Q_reg_n_0_[15] ;
  wire \Q_reg_n_0_[16] ;
  wire \Q_reg_n_0_[1] ;
  wire \Q_reg_n_0_[2] ;
  wire \Q_reg_n_0_[3] ;
  wire \Q_reg_n_0_[4] ;
  wire \Q_reg_n_0_[5] ;
  wire \Q_reg_n_0_[6] ;
  wire \Q_reg_n_0_[7] ;
  wire \Q_reg_n_0_[8] ;
  wire \Q_reg_n_0_[9] ;
  wire Result__0;
  wire Result__0_0;
  wire clk_IBUF_BUFG;
  wire ctrl;
  wire [1:0]round_mode_IBUF;

  LUT4 #(
    .INIT(16'hF0E0)) 
    \Q[3]_i_12 
       (.I0(\Q_reg_n_0_[2] ),
        .I1(\Q_reg_n_0_[1] ),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg_n_0_[0] ),
        .O(\Q_reg[3]_3 ));
  LUT6 #(
    .INIT(64'h0C3003C008200280)) 
    \Q[3]_i_15 
       (.I0(\Q_reg_n_0_[14] ),
        .I1(\Q_reg[31]_0 ),
        .I2(round_mode_IBUF[0]),
        .I3(round_mode_IBUF[1]),
        .I4(\Q_reg[31]_1 ),
        .I5(\Q_reg_n_0_[15] ),
        .O(\Q[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Q[3]_i_2 
       (.I0(\Q_reg[3]_0 ),
        .I1(\Q_reg[3]_1 ),
        .I2(\Q_reg[3]_2 ),
        .I3(Result__0),
        .I4(Result__0_0),
        .I5(\Q_reg[3]_3 ),
        .O(ctrl));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \Q[3]_i_7 
       (.I0(\Q_reg_n_0_[8] ),
        .I1(\Q_reg_n_0_[11] ),
        .I2(\Q_reg_n_0_[12] ),
        .I3(\Q_reg_n_0_[10] ),
        .I4(\Q_reg[31] ),
        .I5(\Q_reg_n_0_[9] ),
        .O(\Q_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \Q[3]_i_8 
       (.I0(\Q_reg_n_0_[3] ),
        .I1(\Q_reg_n_0_[6] ),
        .I2(\Q_reg_n_0_[7] ),
        .I3(\Q_reg_n_0_[5] ),
        .I4(\Q_reg[31] ),
        .I5(\Q_reg_n_0_[4] ),
        .O(\Q_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFCCC8C8C8)) 
    \Q[3]_i_9 
       (.I0(\Q_reg_n_0_[13] ),
        .I1(\Q_reg[31] ),
        .I2(\Q_reg_n_0_[16] ),
        .I3(P),
        .I4(\Q_reg[23]_i_3 ),
        .I5(\Q[3]_i_15_n_0 ),
        .O(\Q_reg[3]_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[0]),
        .Q(\Q_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[10]),
        .Q(\Q_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[11]),
        .Q(\Q_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[12]),
        .Q(\Q_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[13]),
        .Q(\Q_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[14]),
        .Q(\Q_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[15]),
        .Q(\Q_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[16]),
        .Q(\Q_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[1]),
        .Q(\Q_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[2]),
        .Q(\Q_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[3]),
        .Q(\Q_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[4]),
        .Q(\Q_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[5]),
        .Q(\Q_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[6]),
        .Q(\Q_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[7]),
        .Q(\Q_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[8]),
        .Q(\Q_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[9]),
        .Q(\Q_reg_n_0_[9] ));
endmodule

(* ORIG_REF_NAME = "RegisterMult" *) 
module RegisterMult__parameterized9
   (Q,
    \Q_reg[22]_0 ,
    E,
    D,
    clk_IBUF_BUFG,
    AR);
  output [22:0]Q;
  output [22:0]\Q_reg[22]_0 ;
  input [0:0]E;
  input [23:0]D;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [23:0]D;
  wire [0:0]E;
  wire [22:0]\Q_reg[22]_0 ;
  wire \Q_reg_n_0_[23] ;
  wire clk_IBUF_BUFG;

  assign Q[22] = \Q_reg_n_0_[23] ;
  assign Q[21:0] = \Q_reg[22]_0 [22:1];
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[0]),
        .Q(\Q_reg[22]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[10]),
        .Q(\Q_reg[22]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[11]),
        .Q(\Q_reg[22]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[12]),
        .Q(\Q_reg[22]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[13]),
        .Q(\Q_reg[22]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[14]),
        .Q(\Q_reg[22]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[15]),
        .Q(\Q_reg[22]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[16]),
        .Q(\Q_reg[22]_0 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[17]),
        .Q(\Q_reg[22]_0 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[18]),
        .Q(\Q_reg[22]_0 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[19]),
        .Q(\Q_reg[22]_0 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[1]),
        .Q(\Q_reg[22]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[20]),
        .Q(\Q_reg[22]_0 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[21]),
        .Q(\Q_reg[22]_0 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[22]),
        .Q(\Q_reg[22]_0 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[23]),
        .Q(\Q_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[2]),
        .Q(\Q_reg[22]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[3]),
        .Q(\Q_reg[22]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[4]),
        .Q(\Q_reg[22]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[5]),
        .Q(\Q_reg[22]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[6]),
        .Q(\Q_reg[22]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[7]),
        .Q(\Q_reg[22]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[8]),
        .Q(\Q_reg[22]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[9]),
        .Q(\Q_reg[22]_0 [9]));
endmodule

module Second_Phase_M
   (Q,
    \Q_reg[0] ,
    E,
    D,
    clk_IBUF_BUFG,
    AR);
  output [8:0]Q;
  output [0:0]\Q_reg[0] ;
  input [0:0]E;
  input [8:0]D;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [8:0]D;
  wire [0:0]E;
  wire [8:0]Q;
  wire [0:0]\Q_reg[0] ;
  wire clk_IBUF_BUFG;

  RegisterMult__parameterized2 Result_Exp
       (.AR(AR),
        .D(D),
        .E(E),
        .Q(Q),
        .\Q_reg[0]_0 (\Q_reg[0] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
endmodule

module Seventh_Phase_M
   (D,
    Q,
    \Q_reg[0] ,
    selector_a,
    P,
    \Q_reg[23]_i_3 ,
    E,
    clk_IBUF_BUFG,
    AR,
    p_0_in,
    \Q_reg[23] ,
    \Q_reg[2] ,
    \Q_reg[23]_i_3_0 ,
    \Q_reg[13] ,
    \Q_reg[3] ,
    \Q_reg[8] ,
    \Q_reg[0]_0 );
  output [22:0]D;
  output [1:0]Q;
  output \Q_reg[0] ;
  input selector_a;
  input [24:0]P;
  input \Q_reg[23]_i_3 ;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input p_0_in;
  input [22:0]\Q_reg[23] ;
  input \Q_reg[2] ;
  input \Q_reg[23]_i_3_0 ;
  input \Q_reg[13] ;
  input \Q_reg[3] ;
  input \Q_reg[8] ;
  input [0:0]\Q_reg[0]_0 ;

  wire [0:0]AR;
  wire [22:0]D;
  wire [0:0]E;
  wire [24:0]P;
  wire [1:0]Q;
  wire \Q_reg[0] ;
  wire [0:0]\Q_reg[0]_0 ;
  wire \Q_reg[13] ;
  wire [22:0]\Q_reg[23] ;
  wire \Q_reg[23]_i_3 ;
  wire \Q_reg[23]_i_3_0 ;
  wire \Q_reg[2] ;
  wire \Q_reg[3] ;
  wire \Q_reg[8] ;
  wire [24:0]\Sgf_Add_Mux/S ;
  wire clk_IBUF_BUFG;
  wire p_0_in;
  wire selector_a;

  add_sub_carry_out__parameterized0 Sgf_Add_Cout
       (.\Q_reg[0] (\Q_reg[0]_0 ),
        .\Q_reg[13] (\Q_reg[13] ),
        .\Q_reg[23] (\Q_reg[23] ),
        .\Q_reg[23]_i_3 (\Q_reg[23]_i_3_0 ),
        .\Q_reg[2] (\Q_reg[2] ),
        .\Q_reg[3] (\Q_reg[3] ),
        .\Q_reg[8] (\Q_reg[8] ),
        .S(\Sgf_Add_Mux/S ),
        .p_0_in(p_0_in));
  RegisterMult__parameterized15 Sgf_PRound_Reg
       (.AR(AR),
        .D(D),
        .E(E),
        .P(P),
        .Q(Q),
        .\Q_reg[0]_0 (\Q_reg[0] ),
        .\Q_reg[23]_0 (\Sgf_Add_Mux/S ),
        .\Q_reg[23]_i_3 (\Q_reg[23]_i_3 ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .selector_a(selector_a));
endmodule

module Sixth_Phase_M
   (overflow_comp_b,
    Q,
    E,
    \Q_reg[0] ,
    clk_IBUF_BUFG,
    AR,
    \FSM_sequential_state_reg_reg[4] ,
    \Q_reg[7] ,
    selector_b);
  output overflow_comp_b;
  output [7:0]Q;
  input [0:0]E;
  input \Q_reg[0] ;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;
  input [7:0]\Q_reg[7] ;
  input selector_b;

  wire [0:0]AR;
  wire [0:0]E;
  wire Exp_NA_Register_n_0;
  wire Exp_Selection_Register_n_7;
  wire Exp_Selection_Register_n_8;
  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire Mux_Exponent_Selection_n_0;
  wire Mux_Exponent_Selection_n_1;
  wire Mux_Exponent_Selection_n_2;
  wire Mux_Exponent_Selection_n_3;
  wire Mux_Exponent_Selection_n_4;
  wire Mux_Exponent_Selection_n_5;
  wire Mux_Exponent_Selection_n_6;
  wire Mux_Exponent_Selection_n_7;
  wire [7:0]\Mux_Selection_Final_Exponent/S ;
  wire [7:0]Q;
  wire \Q_reg[0] ;
  wire [7:0]\Q_reg[7] ;
  wire clk_IBUF_BUFG;
  wire overflow_comp_b;
  wire selector_b;

  RegisterMult__parameterized13 Exp_F_Register
       (.AR(AR),
        .D(\Mux_Selection_Final_Exponent/S ),
        .\FSM_sequential_state_reg_reg[4] (\FSM_sequential_state_reg_reg[4] ),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  RegisterMult__parameterized12 Exp_NA_Register
       (.AR(AR),
        .D(\Mux_Selection_Final_Exponent/S [0]),
        .E(E),
        .Q(Exp_Selection_Register_n_7),
        .\Q_reg[0]_0 (Exp_NA_Register_n_0),
        .\Q_reg[0]_1 (\Q_reg[0] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  RegisterMult__parameterized11 Exp_Selection_Register
       (.AR(AR),
        .D(\Mux_Selection_Final_Exponent/S [7:1]),
        .E(E),
        .Q(Exp_Selection_Register_n_7),
        .\Q_reg[0]_0 (Exp_Selection_Register_n_8),
        .\Q_reg[0]_1 (Exp_NA_Register_n_0),
        .\Q_reg[7]_0 ({Mux_Exponent_Selection_n_0,Mux_Exponent_Selection_n_1,Mux_Exponent_Selection_n_2,Mux_Exponent_Selection_n_3,Mux_Exponent_Selection_n_4,Mux_Exponent_Selection_n_5,Mux_Exponent_Selection_n_6,Mux_Exponent_Selection_n_7}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  Multiplexer_AC__parameterized1 Mux_Exponent_Selection
       (.Q(Q),
        .\Q_reg[7] ({Mux_Exponent_Selection_n_0,Mux_Exponent_Selection_n_1,Mux_Exponent_Selection_n_2,Mux_Exponent_Selection_n_3,Mux_Exponent_Selection_n_4,Mux_Exponent_Selection_n_5,Mux_Exponent_Selection_n_6,Mux_Exponent_Selection_n_7}),
        .\Q_reg[7]_0 (\Q_reg[7] ),
        .selector_b(selector_b));
  RegisterMult__parameterized14 PROverflow_Register
       (.AR(AR),
        .\FSM_sequential_state_reg_reg[4] (\FSM_sequential_state_reg_reg[4] ),
        .\Q_reg[1] (Exp_Selection_Register_n_8),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .overflow_comp_b(overflow_comp_b));
endmodule

module Third_Phase_M
   (overflow_cout,
    overflow_comp_a,
    overflow_flag_OBUF,
    \Q_reg[7] ,
    E,
    Q,
    clk_IBUF_BUFG,
    AR,
    \Q_reg[4] ,
    overflow_comp_b);
  output overflow_cout;
  output overflow_comp_a;
  output overflow_flag_OBUF;
  output [7:0]\Q_reg[7] ;
  input [0:0]E;
  input [8:0]Q;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input [0:0]\Q_reg[4] ;
  input overflow_comp_b;

  wire [0:0]AR;
  wire [0:0]E;
  wire [8:0]Q;
  wire [0:0]\Q_reg[4] ;
  wire [7:0]\Q_reg[7] ;
  wire clk_IBUF_BUFG;
  wire overflow_comp_a;
  wire overflow_comp_b;
  wire overflow_cout;
  wire overflow_flag_OBUF;

  RegisterMult__parameterized5 Exp_R_Reg
       (.AR(AR),
        .E(E),
        .Q(Q[7:0]),
        .\Q_reg[7]_0 (\Q_reg[7] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  RegisterMult__parameterized4 Ov_Register_FComp
       (.AR(AR),
        .E(E),
        .\Q_reg[4] (\Q_reg[4] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .overflow_comp_a(overflow_comp_a),
        .overflow_comp_b(overflow_comp_b),
        .overflow_cout(overflow_cout),
        .overflow_flag_OBUF(overflow_flag_OBUF));
  RegisterMult__parameterized3 Ov_Register_FCout
       (.AR(AR),
        .E(E),
        .Q(Q[8]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .overflow_cout(overflow_cout));
endmodule

module Zero_InfMult_Unit
   (zero_m_flag,
    \Q_reg[0] ,
    clk_IBUF_BUFG,
    AR);
  output zero_m_flag;
  input \Q_reg[0] ;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire \Q_reg[0] ;
  wire clk_IBUF_BUFG;
  wire zero_m_flag;

  RegisterAdd Zero_Info_Mult
       (.AR(AR),
        .\Q_reg[0]_0 (\Q_reg[0] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .zero_m_flag(zero_m_flag));
endmodule

module add_sub_carry_out
   (D,
    p_0_in,
    \Q_reg[30] );
  output [8:0]D;
  input [7:0]p_0_in;
  input [7:0]\Q_reg[30] ;

  wire [8:0]D;
  wire \Q[3]_i_2_n_0 ;
  wire \Q[3]_i_3_n_0 ;
  wire \Q[3]_i_4_n_0 ;
  wire \Q[3]_i_5_n_0 ;
  wire \Q[7]_i_2_n_0 ;
  wire \Q[7]_i_3_n_0 ;
  wire \Q[7]_i_4_n_0 ;
  wire \Q[7]_i_5_n_0 ;
  wire [7:0]\Q_reg[30] ;
  wire \Q_reg[3]_i_1_n_0 ;
  wire \Q_reg[7]_i_1_n_0 ;
  wire [7:0]p_0_in;
  wire [2:0]\NLW_Q_reg[3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_Q_reg[7]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_Q_reg[8]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[8]_i_2_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    \Q[3]_i_2 
       (.I0(p_0_in[3]),
        .I1(\Q_reg[30] [3]),
        .O(\Q[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[3]_i_3 
       (.I0(p_0_in[2]),
        .I1(\Q_reg[30] [2]),
        .O(\Q[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[3]_i_4 
       (.I0(p_0_in[1]),
        .I1(\Q_reg[30] [1]),
        .O(\Q[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[3]_i_5 
       (.I0(p_0_in[0]),
        .I1(\Q_reg[30] [0]),
        .O(\Q[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[7]_i_2 
       (.I0(p_0_in[7]),
        .I1(\Q_reg[30] [7]),
        .O(\Q[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[7]_i_3 
       (.I0(p_0_in[6]),
        .I1(\Q_reg[30] [6]),
        .O(\Q[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[7]_i_4 
       (.I0(p_0_in[5]),
        .I1(\Q_reg[30] [5]),
        .O(\Q[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[7]_i_5 
       (.I0(p_0_in[4]),
        .I1(\Q_reg[30] [4]),
        .O(\Q[7]_i_5_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\Q_reg[3]_i_1_n_0 ,\NLW_Q_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(p_0_in[3:0]),
        .O(D[3:0]),
        .S({\Q[3]_i_2_n_0 ,\Q[3]_i_3_n_0 ,\Q[3]_i_4_n_0 ,\Q[3]_i_5_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[7]_i_1 
       (.CI(\Q_reg[3]_i_1_n_0 ),
        .CO({\Q_reg[7]_i_1_n_0 ,\NLW_Q_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(p_0_in[7:4]),
        .O(D[7:4]),
        .S({\Q[7]_i_2_n_0 ,\Q[7]_i_3_n_0 ,\Q[7]_i_4_n_0 ,\Q[7]_i_5_n_0 }));
  CARRY4 \Q_reg[8]_i_2 
       (.CI(\Q_reg[7]_i_1_n_0 ),
        .CO({\NLW_Q_reg[8]_i_2_CO_UNCONNECTED [3:1],D[8]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Q_reg[8]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
endmodule

(* ORIG_REF_NAME = "add_sub_carry_out" *) 
module add_sub_carry_out__parameterized0
   (S,
    p_0_in,
    \Q_reg[23] ,
    \Q_reg[2] ,
    \Q_reg[23]_i_3 ,
    \Q_reg[13] ,
    \Q_reg[3] ,
    \Q_reg[8] ,
    \Q_reg[0] );
  output [24:0]S;
  input p_0_in;
  input [22:0]\Q_reg[23] ;
  input \Q_reg[2] ;
  input \Q_reg[23]_i_3 ;
  input \Q_reg[13] ;
  input \Q_reg[3] ;
  input \Q_reg[8] ;
  input [0:0]\Q_reg[0] ;

  wire \Q[3]_i_6_n_0 ;
  wire [0:0]\Q_reg[0] ;
  wire \Q_reg[11]_i_1_n_0 ;
  wire \Q_reg[13] ;
  wire \Q_reg[15]_i_1_n_0 ;
  wire \Q_reg[19]_i_1_n_0 ;
  wire [22:0]\Q_reg[23] ;
  wire \Q_reg[23]_i_1_n_0 ;
  wire \Q_reg[23]_i_3 ;
  wire \Q_reg[2] ;
  wire \Q_reg[3] ;
  wire \Q_reg[3]_i_1_n_0 ;
  wire \Q_reg[7]_i_1_n_0 ;
  wire \Q_reg[8] ;
  wire [24:0]S;
  wire p_0_in;
  wire [2:0]\NLW_Q_reg[11]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_Q_reg[15]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_Q_reg[19]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_Q_reg[23]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_Q_reg[24]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[24]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_Q_reg[3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_Q_reg[7]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \Q[3]_i_6 
       (.I0(\Q_reg[2] ),
        .I1(\Q_reg[23]_i_3 ),
        .I2(\Q_reg[13] ),
        .I3(\Q_reg[3] ),
        .I4(\Q_reg[8] ),
        .I5(\Q_reg[0] ),
        .O(\Q[3]_i_6_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[11]_i_1 
       (.CI(\Q_reg[7]_i_1_n_0 ),
        .CO({\Q_reg[11]_i_1_n_0 ,\NLW_Q_reg[11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(S[11:8]),
        .S(\Q_reg[23] [10:7]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[15]_i_1 
       (.CI(\Q_reg[11]_i_1_n_0 ),
        .CO({\Q_reg[15]_i_1_n_0 ,\NLW_Q_reg[15]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(S[15:12]),
        .S(\Q_reg[23] [14:11]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[19]_i_1 
       (.CI(\Q_reg[15]_i_1_n_0 ),
        .CO({\Q_reg[19]_i_1_n_0 ,\NLW_Q_reg[19]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(S[19:16]),
        .S(\Q_reg[23] [18:15]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[23]_i_1 
       (.CI(\Q_reg[19]_i_1_n_0 ),
        .CO({\Q_reg[23]_i_1_n_0 ,\NLW_Q_reg[23]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(S[23:20]),
        .S(\Q_reg[23] [22:19]));
  CARRY4 \Q_reg[24]_i_2 
       (.CI(\Q_reg[23]_i_1_n_0 ),
        .CO({\NLW_Q_reg[24]_i_2_CO_UNCONNECTED [3:1],S[24]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Q_reg[24]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\Q_reg[3]_i_1_n_0 ,\NLW_Q_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_0_in}),
        .O(S[3:0]),
        .S({\Q_reg[23] [2:0],\Q[3]_i_6_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[7]_i_1 
       (.CI(\Q_reg[3]_i_1_n_0 ),
        .CO({\Q_reg[7]_i_1_n_0 ,\NLW_Q_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(S[7:4]),
        .S(\Q_reg[23] [6:3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
