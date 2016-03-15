// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
// Date        : Mon Mar 14 10:40:41 2016
// Host        : francis-Aspire-E1-570 running 64-bit Ubuntu 15.10
// Command     : write_verilog -mode funcsim -nolib -force -file
//               {/media/francis/Acer/Users/Francis/Documents/GitHub/Proyecto_De_Graduacion/Proyecto_version_inicial_Diego/Iteracion 1/Iteracion 1.sim/sim_1/synth/func/TB32_ZDetector_func_synth.v}
// Design      : FPU_Add_Subtract_Function
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Eight_NE_Phase
   (overflow_pr,
    Q,
    \Q_reg[30] ,
    E,
    clk_IBUF_BUFG,
    AR,
    D,
    \Q_reg[0] ,
    \FSM_sequential_state_reg_reg[4] ,
    \Q_reg[7] ,
    \FSM_sequential_state_reg_reg[4]_0 );
  output overflow_pr;
  output [0:0]Q;
  output [7:0]\Q_reg[30] ;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input [1:0]AR;
  input [0:0]D;
  input \Q_reg[0] ;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;
  input [7:0]\Q_reg[7] ;
  input [0:0]\FSM_sequential_state_reg_reg[4]_0 ;

  wire [1:0]AR;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire [0:0]\FSM_sequential_state_reg_reg[4]_0 ;
  wire [0:0]Q;
  wire \Q_reg[0] ;
  wire [7:0]\Q_reg[30] ;
  wire [7:0]\Q_reg[7] ;
  wire clk_IBUF_BUFG;
  wire [7:1]\dir_exp_up/S ;
  wire exp_u_register_n_8;
  wire overflow_pr;

  RegisterAdd__parameterized16 exp_fp_reg
       (.AR(AR),
        .D({\dir_exp_up/S ,D}),
        .E(E),
        .\Q_reg[30] (\Q_reg[30] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  RegisterAdd__parameterized15 exp_u_register
       (.D(\dir_exp_up/S ),
        .\FSM_sequential_state_reg_reg[4] (\FSM_sequential_state_reg_reg[4] ),
        .\FSM_sequential_state_reg_reg[4]_0 (\FSM_sequential_state_reg_reg[4]_0 ),
        .Q(Q),
        .\Q_reg[0]_0 (exp_u_register_n_8),
        .\Q_reg[0]_1 (\Q_reg[0] ),
        .\Q_reg[7]_0 (\Q_reg[7] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  RegisterAdd_5 overflow_am
       (.AR(AR[0]),
        .E(E),
        .\Q_reg[1] (exp_u_register_n_8),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .overflow_pr(overflow_pr));
endmodule

module Eight_N_Phase
   (\Q_reg[0] ,
    D,
    \Q_reg[22] ,
    E,
    \Q_reg[24] ,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[4] ,
    Q);
  output \Q_reg[0] ;
  output [0:0]D;
  output [22:0]\Q_reg[22] ;
  input [0:0]E;
  input [24:0]\Q_reg[24] ;
  input clk_IBUF_BUFG;
  input [1:0]\FSM_sequential_state_reg_reg[4] ;
  input [0:0]Q;

  wire [0:0]D;
  wire Dir_Sgf_iee_n_0;
  wire Dir_Sgf_iee_n_1;
  wire Dir_Sgf_iee_n_10;
  wire Dir_Sgf_iee_n_11;
  wire Dir_Sgf_iee_n_12;
  wire Dir_Sgf_iee_n_13;
  wire Dir_Sgf_iee_n_14;
  wire Dir_Sgf_iee_n_15;
  wire Dir_Sgf_iee_n_16;
  wire Dir_Sgf_iee_n_17;
  wire Dir_Sgf_iee_n_18;
  wire Dir_Sgf_iee_n_19;
  wire Dir_Sgf_iee_n_2;
  wire Dir_Sgf_iee_n_20;
  wire Dir_Sgf_iee_n_21;
  wire Dir_Sgf_iee_n_22;
  wire Dir_Sgf_iee_n_3;
  wire Dir_Sgf_iee_n_4;
  wire Dir_Sgf_iee_n_5;
  wire Dir_Sgf_iee_n_6;
  wire Dir_Sgf_iee_n_7;
  wire Dir_Sgf_iee_n_8;
  wire Dir_Sgf_iee_n_9;
  wire [0:0]E;
  wire [1:0]\FSM_sequential_state_reg_reg[4] ;
  wire [0:0]Q;
  wire \Q_reg[0] ;
  wire [22:0]\Q_reg[22] ;
  wire [24:0]\Q_reg[24] ;
  wire clk_IBUF_BUFG;

  Multiplexer_AC__parameterized4 Dir_Sgf_iee
       (.D({Dir_Sgf_iee_n_0,Dir_Sgf_iee_n_1,Dir_Sgf_iee_n_2,Dir_Sgf_iee_n_3,Dir_Sgf_iee_n_4,Dir_Sgf_iee_n_5,Dir_Sgf_iee_n_6,Dir_Sgf_iee_n_7,Dir_Sgf_iee_n_8,Dir_Sgf_iee_n_9,Dir_Sgf_iee_n_10,Dir_Sgf_iee_n_11,Dir_Sgf_iee_n_12,Dir_Sgf_iee_n_13,Dir_Sgf_iee_n_14,Dir_Sgf_iee_n_15,Dir_Sgf_iee_n_16,Dir_Sgf_iee_n_17,Dir_Sgf_iee_n_18,Dir_Sgf_iee_n_19,Dir_Sgf_iee_n_20,Dir_Sgf_iee_n_21,Dir_Sgf_iee_n_22}),
        .\Q_reg[24] (\Q_reg[24] ));
  RegisterAdd_4 Exp_na_Reg
       (.D(D),
        .E(E),
        .\FSM_sequential_state_reg_reg[4] (\FSM_sequential_state_reg_reg[4] [1]),
        .Q(Q),
        .\Q_reg[0]_0 (\Q_reg[0] ),
        .\Q_reg[24] (\Q_reg[24] [24]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  RegisterAdd__parameterized14 Sgf_ieee_Register
       (.D({Dir_Sgf_iee_n_0,Dir_Sgf_iee_n_1,Dir_Sgf_iee_n_2,Dir_Sgf_iee_n_3,Dir_Sgf_iee_n_4,Dir_Sgf_iee_n_5,Dir_Sgf_iee_n_6,Dir_Sgf_iee_n_7,Dir_Sgf_iee_n_8,Dir_Sgf_iee_n_9,Dir_Sgf_iee_n_10,Dir_Sgf_iee_n_11,Dir_Sgf_iee_n_12,Dir_Sgf_iee_n_13,Dir_Sgf_iee_n_14,Dir_Sgf_iee_n_15,Dir_Sgf_iee_n_16,Dir_Sgf_iee_n_17,Dir_Sgf_iee_n_18,Dir_Sgf_iee_n_19,Dir_Sgf_iee_n_20,Dir_Sgf_iee_n_21,Dir_Sgf_iee_n_22}),
        .E(E),
        .\FSM_sequential_state_reg_reg[4] (\FSM_sequential_state_reg_reg[4] [0]),
        .\Q_reg[22]_0 (\Q_reg[22] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
endmodule

(* S_Exp = "9" *) (* W = "32" *) (* W_Exp = "8" *) 
(* W_Sgf = "23" *) 
(* NotValidForBitStream *)
module FPU_Add_Subtract_Function
   (clk,
    rst,
    beg_FSM,
    rst_FSM,
    Data_X,
    Data_Y,
    add_subt,
    r_mode,
    overflow_flag,
    underflow_flag,
    ready,
    final_result_ieee);
  input clk;
  input rst;
  input beg_FSM;
  input rst_FSM;
  input [31:0]Data_X;
  input [31:0]Data_Y;
  input add_subt;
  input [1:0]r_mode;
  output overflow_flag;
  output underflow_flag;
  output ready;
  output [31:0]final_result_ieee;

  wire Add_Sub_Significands_n_0;
  wire Add_Sub_Significands_n_1;
  wire Add_Sub_Significands_n_10;
  wire Add_Sub_Significands_n_11;
  wire Add_Sub_Significands_n_12;
  wire Add_Sub_Significands_n_13;
  wire Add_Sub_Significands_n_14;
  wire Add_Sub_Significands_n_15;
  wire Add_Sub_Significands_n_16;
  wire Add_Sub_Significands_n_17;
  wire Add_Sub_Significands_n_18;
  wire Add_Sub_Significands_n_19;
  wire Add_Sub_Significands_n_2;
  wire Add_Sub_Significands_n_20;
  wire Add_Sub_Significands_n_21;
  wire Add_Sub_Significands_n_22;
  wire Add_Sub_Significands_n_23;
  wire Add_Sub_Significands_n_24;
  wire Add_Sub_Significands_n_25;
  wire Add_Sub_Significands_n_26;
  wire Add_Sub_Significands_n_3;
  wire Add_Sub_Significands_n_4;
  wire Add_Sub_Significands_n_5;
  wire Add_Sub_Significands_n_6;
  wire Add_Sub_Significands_n_7;
  wire Add_Sub_Significands_n_8;
  wire Add_Sub_Significands_n_9;
  wire [7:0]Data_S;
  wire [31:0]Data_X;
  wire [31:0]Data_X_IBUF;
  wire [31:0]Data_Y;
  wire [31:0]Data_Y_IBUF;
  wire FS_Module_n_26;
  wire FS_Module_n_27;
  wire FS_Module_n_28;
  wire FS_Module_n_30;
  wire FS_Module_n_31;
  wire FS_Module_n_32;
  wire FS_Module_n_33;
  wire FS_Module_n_34;
  wire FS_Module_n_55;
  wire FS_Module_n_56;
  wire FS_Module_n_57;
  wire FS_Module_n_58;
  wire Fourth_Module_n_0;
  wire Fourth_Module_n_1;
  wire Fourth_Module_n_10;
  wire Fourth_Module_n_11;
  wire Fourth_Module_n_12;
  wire Fourth_Module_n_13;
  wire Fourth_Module_n_14;
  wire Fourth_Module_n_15;
  wire Fourth_Module_n_16;
  wire Fourth_Module_n_17;
  wire Fourth_Module_n_18;
  wire Fourth_Module_n_19;
  wire Fourth_Module_n_2;
  wire Fourth_Module_n_20;
  wire Fourth_Module_n_21;
  wire Fourth_Module_n_22;
  wire Fourth_Module_n_23;
  wire Fourth_Module_n_24;
  wire Fourth_Module_n_25;
  wire Fourth_Module_n_26;
  wire Fourth_Module_n_27;
  wire Fourth_Module_n_28;
  wire Fourth_Module_n_29;
  wire Fourth_Module_n_30;
  wire Fourth_Module_n_31;
  wire Fourth_Module_n_32;
  wire Fourth_Module_n_33;
  wire Fourth_Module_n_34;
  wire Fourth_Module_n_35;
  wire Fourth_Module_n_36;
  wire Fourth_Module_n_37;
  wire Fourth_Module_n_38;
  wire Fourth_Module_n_39;
  wire Fourth_Module_n_40;
  wire Fourth_Module_n_41;
  wire Fourth_Module_n_42;
  wire Fourth_Module_n_43;
  wire Fourth_Module_n_44;
  wire Fourth_Module_n_45;
  wire Fourth_Module_n_46;
  wire Fourth_Module_n_47;
  wire Fourth_Module_n_48;
  wire Fourth_Module_n_49;
  wire Fourth_Module_n_5;
  wire Fourth_Module_n_50;
  wire Fourth_Module_n_51;
  wire Fourth_Module_n_52;
  wire Fourth_Module_n_53;
  wire Fourth_Module_n_6;
  wire Fourth_Module_n_7;
  wire Fourth_Module_n_8;
  wire Fourth_Module_n_9;
  wire Normalization_Smallest_Significand_n_0;
  wire Normalization_Smallest_Significand_n_1;
  wire Normalization_Smallest_Significand_n_10;
  wire Normalization_Smallest_Significand_n_11;
  wire Normalization_Smallest_Significand_n_12;
  wire Normalization_Smallest_Significand_n_13;
  wire Normalization_Smallest_Significand_n_14;
  wire Normalization_Smallest_Significand_n_15;
  wire Normalization_Smallest_Significand_n_16;
  wire Normalization_Smallest_Significand_n_17;
  wire Normalization_Smallest_Significand_n_18;
  wire Normalization_Smallest_Significand_n_19;
  wire Normalization_Smallest_Significand_n_2;
  wire Normalization_Smallest_Significand_n_20;
  wire Normalization_Smallest_Significand_n_21;
  wire Normalization_Smallest_Significand_n_22;
  wire Normalization_Smallest_Significand_n_23;
  wire Normalization_Smallest_Significand_n_24;
  wire Normalization_Smallest_Significand_n_25;
  wire Normalization_Smallest_Significand_n_26;
  wire Normalization_Smallest_Significand_n_27;
  wire Normalization_Smallest_Significand_n_28;
  wire Normalization_Smallest_Significand_n_3;
  wire Normalization_Smallest_Significand_n_4;
  wire Normalization_Smallest_Significand_n_5;
  wire Normalization_Smallest_Significand_n_6;
  wire Normalization_Smallest_Significand_n_7;
  wire Normalization_Smallest_Significand_n_8;
  wire Normalization_Smallest_Significand_n_9;
  wire Operands_Classification_n_0;
  wire Operands_Classification_n_24;
  wire Operands_Classification_n_25;
  wire Operands_Classification_n_26;
  wire Operands_Classification_n_27;
  wire Operands_Classification_n_28;
  wire Operands_Classification_n_29;
  wire Operands_Classification_n_30;
  wire Operands_Classification_n_31;
  wire Operands_Classification_n_32;
  wire Operands_Classification_n_33;
  wire Operands_Classification_n_34;
  wire Operands_Classification_n_35;
  wire Operands_Classification_n_36;
  wire Operands_Classification_n_37;
  wire Operands_Classification_n_38;
  wire Operands_Classification_n_39;
  wire Operands_Classification_n_40;
  wire Operands_Classification_n_41;
  wire Operands_Classification_n_42;
  wire Operands_Classification_n_43;
  wire Operands_Classification_n_44;
  wire Operands_Classification_n_45;
  wire Operands_Classification_n_46;
  wire Operands_Classification_n_47;
  wire Operands_Classification_n_48;
  wire Operands_Classification_n_49;
  wire Operands_Classification_n_50;
  wire Operands_Classification_n_60;
  wire Round_Resultant_Significand_n_0;
  wire Round_Resultant_Significand_n_1;
  wire Round_Resultant_Significand_n_10;
  wire Round_Resultant_Significand_n_11;
  wire Round_Resultant_Significand_n_12;
  wire Round_Resultant_Significand_n_13;
  wire Round_Resultant_Significand_n_14;
  wire Round_Resultant_Significand_n_15;
  wire Round_Resultant_Significand_n_16;
  wire Round_Resultant_Significand_n_17;
  wire Round_Resultant_Significand_n_18;
  wire Round_Resultant_Significand_n_19;
  wire Round_Resultant_Significand_n_2;
  wire Round_Resultant_Significand_n_20;
  wire Round_Resultant_Significand_n_21;
  wire Round_Resultant_Significand_n_22;
  wire Round_Resultant_Significand_n_23;
  wire Round_Resultant_Significand_n_24;
  wire Round_Resultant_Significand_n_25;
  wire Round_Resultant_Significand_n_3;
  wire Round_Resultant_Significand_n_4;
  wire Round_Resultant_Significand_n_5;
  wire Round_Resultant_Significand_n_6;
  wire Round_Resultant_Significand_n_7;
  wire Round_Resultant_Significand_n_8;
  wire Round_Resultant_Significand_n_9;
  wire Sel_10_P_a_n_0;
  wire Sel_10_P_b_n_0;
  wire Sel_10_P_b_n_1;
  wire Sel_10_P_b_n_10;
  wire Sel_10_P_b_n_11;
  wire Sel_10_P_b_n_12;
  wire Sel_10_P_b_n_13;
  wire Sel_10_P_b_n_14;
  wire Sel_10_P_b_n_15;
  wire Sel_10_P_b_n_16;
  wire Sel_10_P_b_n_17;
  wire Sel_10_P_b_n_18;
  wire Sel_10_P_b_n_19;
  wire Sel_10_P_b_n_2;
  wire Sel_10_P_b_n_20;
  wire Sel_10_P_b_n_21;
  wire Sel_10_P_b_n_22;
  wire Sel_10_P_b_n_23;
  wire Sel_10_P_b_n_3;
  wire Sel_10_P_b_n_4;
  wire Sel_10_P_b_n_5;
  wire Sel_10_P_b_n_6;
  wire Sel_10_P_b_n_7;
  wire Sel_10_P_b_n_8;
  wire Sel_10_P_b_n_9;
  wire Sel_4_P_n_0;
  wire Select_Final_Exponent_n_1;
  wire Select_Final_Exponent_n_2;
  wire Select_Final_Exponent_n_3;
  wire Select_Final_Exponent_n_4;
  wire Select_Final_Exponent_n_5;
  wire Select_Final_Exponent_n_6;
  wire Select_Final_Exponent_n_7;
  wire Select_Final_Exponent_n_8;
  wire Select_Final_Exponent_n_9;
  wire Select_Final_Significand_n_0;
  wire Select_Final_Significand_n_10;
  wire Select_Final_Significand_n_11;
  wire Select_Final_Significand_n_12;
  wire Select_Final_Significand_n_13;
  wire Select_Final_Significand_n_14;
  wire Select_Final_Significand_n_15;
  wire Select_Final_Significand_n_16;
  wire Select_Final_Significand_n_17;
  wire Select_Final_Significand_n_18;
  wire Select_Final_Significand_n_19;
  wire Select_Final_Significand_n_2;
  wire Select_Final_Significand_n_20;
  wire Select_Final_Significand_n_21;
  wire Select_Final_Significand_n_22;
  wire Select_Final_Significand_n_23;
  wire Select_Final_Significand_n_24;
  wire Select_Final_Significand_n_3;
  wire Select_Final_Significand_n_4;
  wire Select_Final_Significand_n_5;
  wire Select_Final_Significand_n_6;
  wire Select_Final_Significand_n_7;
  wire Select_Final_Significand_n_8;
  wire Select_Final_Significand_n_9;
  wire Sgf_nbit;
  wire Sgf_ncarry;
  wire Tenth_Module_n_0;
  wire Tenth_Module_n_1;
  wire Tenth_Module_n_10;
  wire Tenth_Module_n_11;
  wire Tenth_Module_n_12;
  wire Tenth_Module_n_13;
  wire Tenth_Module_n_14;
  wire Tenth_Module_n_15;
  wire Tenth_Module_n_16;
  wire Tenth_Module_n_17;
  wire Tenth_Module_n_18;
  wire Tenth_Module_n_19;
  wire Tenth_Module_n_2;
  wire Tenth_Module_n_20;
  wire Tenth_Module_n_21;
  wire Tenth_Module_n_22;
  wire Tenth_Module_n_3;
  wire Tenth_Module_n_4;
  wire Tenth_Module_n_5;
  wire Tenth_Module_n_6;
  wire Tenth_Module_n_7;
  wire Tenth_Module_n_8;
  wire Tenth_Module_n_9;
  wire Update_Exponent_First_Time_n_0;
  wire Update_Exponent_First_Time_n_1;
  wire Update_Exponent_First_Time_n_10;
  wire Update_Exponent_First_Time_n_11;
  wire Update_Exponent_First_Time_n_12;
  wire Update_Exponent_First_Time_n_13;
  wire Update_Exponent_First_Time_n_14;
  wire Update_Exponent_First_Time_n_15;
  wire Update_Exponent_First_Time_n_16;
  wire Update_Exponent_First_Time_n_17;
  wire Update_Exponent_First_Time_n_2;
  wire Update_Exponent_First_Time_n_3;
  wire Update_Exponent_First_Time_n_4;
  wire Update_Exponent_First_Time_n_5;
  wire Update_Exponent_First_Time_n_6;
  wire Update_Exponent_First_Time_n_7;
  wire Update_Exponent_First_Time_n_8;
  wire Update_Exponent_First_Time_n_9;
  wire add_subt;
  wire add_subt_5_P;
  wire add_subt_IBUF;
  wire as_5_P_Reg_n_0;
  wire as_5_P_Reg_n_1;
  wire as_5_P_Reg_n_2;
  wire as_5_P_Reg_n_3;
  wire as_5_P_Reg_n_4;
  wire as_5_P_Reg_n_5;
  wire as_5_P_Reg_n_6;
  wire as_5_P_Reg_n_7;
  wire beg_FSM;
  wire beg_FSM_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [0:0]\dir_exp_up/S ;
  wire [7:0]exp_M;
  wire [31:0]final_result_ieee;
  wire [31:0]final_result_ieee_OBUF;
  wire load_0;
  wire load_1;
  wire load_10;
  wire load_11;
  wire load_13;
  wire load_14;
  wire load_15;
  wire load_16;
  wire load_17;
  wire load_18;
  wire load_19;
  wire load_2;
  wire load_3;
  wire load_4;
  wire load_5;
  wire load_6;
  wire load_7;
  wire load_8;
  wire load_9;
  wire overflow_a;
  wire overflow_flag;
  wire overflow_flag_OBUF;
  wire overflow_pr;
  wire [26:2]p_1_in;
  wire [1:0]r_mode;
  wire [1:0]r_mode_IBUF;
  wire ready;
  wire ready_OBUF;
  wire rst;
  wire rst_FSM;
  wire rst_FSM_IBUF;
  wire rst_IBUF;
  wire rst_int;
  wire [4:4]sel;
  wire [24:2]sgfm;
  wire underflow_flag;
  wire underflow_flag_OBUF;
  wire zero_flag;

  Third_Phase Add_Sub_Significands
       (.AR({FS_Module_n_57,FS_Module_n_58}),
        .CLK(clk_IBUF_BUFG),
        .D({Operands_Classification_n_24,Operands_Classification_n_25,Operands_Classification_n_26,Operands_Classification_n_27,Operands_Classification_n_28,Operands_Classification_n_29,Operands_Classification_n_30,Operands_Classification_n_31,Operands_Classification_n_32,Operands_Classification_n_33,Operands_Classification_n_34,Operands_Classification_n_35,Operands_Classification_n_36,Operands_Classification_n_37,Operands_Classification_n_38,Operands_Classification_n_39,Operands_Classification_n_40,Operands_Classification_n_41,Operands_Classification_n_42,Operands_Classification_n_43,Operands_Classification_n_44,Operands_Classification_n_45,Operands_Classification_n_46,Operands_Classification_n_47,Operands_Classification_n_48,Operands_Classification_n_49,Operands_Classification_n_50}),
        .E(load_6),
        .\FSM_sequential_state_reg_reg[4] (FS_Module_n_56),
        .Q({Add_Sub_Significands_n_0,Add_Sub_Significands_n_1,Add_Sub_Significands_n_2,Add_Sub_Significands_n_3,Add_Sub_Significands_n_4,Add_Sub_Significands_n_5,Add_Sub_Significands_n_6,Add_Sub_Significands_n_7,Add_Sub_Significands_n_8,Add_Sub_Significands_n_9,Add_Sub_Significands_n_10,Add_Sub_Significands_n_11,Add_Sub_Significands_n_12,Add_Sub_Significands_n_13,Add_Sub_Significands_n_14,Add_Sub_Significands_n_15,Add_Sub_Significands_n_16,Add_Sub_Significands_n_17,Add_Sub_Significands_n_18,Add_Sub_Significands_n_19,Add_Sub_Significands_n_20,Add_Sub_Significands_n_21,Add_Sub_Significands_n_22,Add_Sub_Significands_n_23,Add_Sub_Significands_n_24,Add_Sub_Significands_n_25,Add_Sub_Significands_n_26}));
  IBUF \Data_X_IBUF[0]_inst 
       (.I(Data_X[0]),
        .O(Data_X_IBUF[0]));
  IBUF \Data_X_IBUF[10]_inst 
       (.I(Data_X[10]),
        .O(Data_X_IBUF[10]));
  IBUF \Data_X_IBUF[11]_inst 
       (.I(Data_X[11]),
        .O(Data_X_IBUF[11]));
  IBUF \Data_X_IBUF[12]_inst 
       (.I(Data_X[12]),
        .O(Data_X_IBUF[12]));
  IBUF \Data_X_IBUF[13]_inst 
       (.I(Data_X[13]),
        .O(Data_X_IBUF[13]));
  IBUF \Data_X_IBUF[14]_inst 
       (.I(Data_X[14]),
        .O(Data_X_IBUF[14]));
  IBUF \Data_X_IBUF[15]_inst 
       (.I(Data_X[15]),
        .O(Data_X_IBUF[15]));
  IBUF \Data_X_IBUF[16]_inst 
       (.I(Data_X[16]),
        .O(Data_X_IBUF[16]));
  IBUF \Data_X_IBUF[17]_inst 
       (.I(Data_X[17]),
        .O(Data_X_IBUF[17]));
  IBUF \Data_X_IBUF[18]_inst 
       (.I(Data_X[18]),
        .O(Data_X_IBUF[18]));
  IBUF \Data_X_IBUF[19]_inst 
       (.I(Data_X[19]),
        .O(Data_X_IBUF[19]));
  IBUF \Data_X_IBUF[1]_inst 
       (.I(Data_X[1]),
        .O(Data_X_IBUF[1]));
  IBUF \Data_X_IBUF[20]_inst 
       (.I(Data_X[20]),
        .O(Data_X_IBUF[20]));
  IBUF \Data_X_IBUF[21]_inst 
       (.I(Data_X[21]),
        .O(Data_X_IBUF[21]));
  IBUF \Data_X_IBUF[22]_inst 
       (.I(Data_X[22]),
        .O(Data_X_IBUF[22]));
  IBUF \Data_X_IBUF[23]_inst 
       (.I(Data_X[23]),
        .O(Data_X_IBUF[23]));
  IBUF \Data_X_IBUF[24]_inst 
       (.I(Data_X[24]),
        .O(Data_X_IBUF[24]));
  IBUF \Data_X_IBUF[25]_inst 
       (.I(Data_X[25]),
        .O(Data_X_IBUF[25]));
  IBUF \Data_X_IBUF[26]_inst 
       (.I(Data_X[26]),
        .O(Data_X_IBUF[26]));
  IBUF \Data_X_IBUF[27]_inst 
       (.I(Data_X[27]),
        .O(Data_X_IBUF[27]));
  IBUF \Data_X_IBUF[28]_inst 
       (.I(Data_X[28]),
        .O(Data_X_IBUF[28]));
  IBUF \Data_X_IBUF[29]_inst 
       (.I(Data_X[29]),
        .O(Data_X_IBUF[29]));
  IBUF \Data_X_IBUF[2]_inst 
       (.I(Data_X[2]),
        .O(Data_X_IBUF[2]));
  IBUF \Data_X_IBUF[30]_inst 
       (.I(Data_X[30]),
        .O(Data_X_IBUF[30]));
  IBUF \Data_X_IBUF[31]_inst 
       (.I(Data_X[31]),
        .O(Data_X_IBUF[31]));
  IBUF \Data_X_IBUF[3]_inst 
       (.I(Data_X[3]),
        .O(Data_X_IBUF[3]));
  IBUF \Data_X_IBUF[4]_inst 
       (.I(Data_X[4]),
        .O(Data_X_IBUF[4]));
  IBUF \Data_X_IBUF[5]_inst 
       (.I(Data_X[5]),
        .O(Data_X_IBUF[5]));
  IBUF \Data_X_IBUF[6]_inst 
       (.I(Data_X[6]),
        .O(Data_X_IBUF[6]));
  IBUF \Data_X_IBUF[7]_inst 
       (.I(Data_X[7]),
        .O(Data_X_IBUF[7]));
  IBUF \Data_X_IBUF[8]_inst 
       (.I(Data_X[8]),
        .O(Data_X_IBUF[8]));
  IBUF \Data_X_IBUF[9]_inst 
       (.I(Data_X[9]),
        .O(Data_X_IBUF[9]));
  IBUF \Data_Y_IBUF[0]_inst 
       (.I(Data_Y[0]),
        .O(Data_Y_IBUF[0]));
  IBUF \Data_Y_IBUF[10]_inst 
       (.I(Data_Y[10]),
        .O(Data_Y_IBUF[10]));
  IBUF \Data_Y_IBUF[11]_inst 
       (.I(Data_Y[11]),
        .O(Data_Y_IBUF[11]));
  IBUF \Data_Y_IBUF[12]_inst 
       (.I(Data_Y[12]),
        .O(Data_Y_IBUF[12]));
  IBUF \Data_Y_IBUF[13]_inst 
       (.I(Data_Y[13]),
        .O(Data_Y_IBUF[13]));
  IBUF \Data_Y_IBUF[14]_inst 
       (.I(Data_Y[14]),
        .O(Data_Y_IBUF[14]));
  IBUF \Data_Y_IBUF[15]_inst 
       (.I(Data_Y[15]),
        .O(Data_Y_IBUF[15]));
  IBUF \Data_Y_IBUF[16]_inst 
       (.I(Data_Y[16]),
        .O(Data_Y_IBUF[16]));
  IBUF \Data_Y_IBUF[17]_inst 
       (.I(Data_Y[17]),
        .O(Data_Y_IBUF[17]));
  IBUF \Data_Y_IBUF[18]_inst 
       (.I(Data_Y[18]),
        .O(Data_Y_IBUF[18]));
  IBUF \Data_Y_IBUF[19]_inst 
       (.I(Data_Y[19]),
        .O(Data_Y_IBUF[19]));
  IBUF \Data_Y_IBUF[1]_inst 
       (.I(Data_Y[1]),
        .O(Data_Y_IBUF[1]));
  IBUF \Data_Y_IBUF[20]_inst 
       (.I(Data_Y[20]),
        .O(Data_Y_IBUF[20]));
  IBUF \Data_Y_IBUF[21]_inst 
       (.I(Data_Y[21]),
        .O(Data_Y_IBUF[21]));
  IBUF \Data_Y_IBUF[22]_inst 
       (.I(Data_Y[22]),
        .O(Data_Y_IBUF[22]));
  IBUF \Data_Y_IBUF[23]_inst 
       (.I(Data_Y[23]),
        .O(Data_Y_IBUF[23]));
  IBUF \Data_Y_IBUF[24]_inst 
       (.I(Data_Y[24]),
        .O(Data_Y_IBUF[24]));
  IBUF \Data_Y_IBUF[25]_inst 
       (.I(Data_Y[25]),
        .O(Data_Y_IBUF[25]));
  IBUF \Data_Y_IBUF[26]_inst 
       (.I(Data_Y[26]),
        .O(Data_Y_IBUF[26]));
  IBUF \Data_Y_IBUF[27]_inst 
       (.I(Data_Y[27]),
        .O(Data_Y_IBUF[27]));
  IBUF \Data_Y_IBUF[28]_inst 
       (.I(Data_Y[28]),
        .O(Data_Y_IBUF[28]));
  IBUF \Data_Y_IBUF[29]_inst 
       (.I(Data_Y[29]),
        .O(Data_Y_IBUF[29]));
  IBUF \Data_Y_IBUF[2]_inst 
       (.I(Data_Y[2]),
        .O(Data_Y_IBUF[2]));
  IBUF \Data_Y_IBUF[30]_inst 
       (.I(Data_Y[30]),
        .O(Data_Y_IBUF[30]));
  IBUF \Data_Y_IBUF[31]_inst 
       (.I(Data_Y[31]),
        .O(Data_Y_IBUF[31]));
  IBUF \Data_Y_IBUF[3]_inst 
       (.I(Data_Y[3]),
        .O(Data_Y_IBUF[3]));
  IBUF \Data_Y_IBUF[4]_inst 
       (.I(Data_Y[4]),
        .O(Data_Y_IBUF[4]));
  IBUF \Data_Y_IBUF[5]_inst 
       (.I(Data_Y[5]),
        .O(Data_Y_IBUF[5]));
  IBUF \Data_Y_IBUF[6]_inst 
       (.I(Data_Y[6]),
        .O(Data_Y_IBUF[6]));
  IBUF \Data_Y_IBUF[7]_inst 
       (.I(Data_Y[7]),
        .O(Data_Y_IBUF[7]));
  IBUF \Data_Y_IBUF[8]_inst 
       (.I(Data_Y[8]),
        .O(Data_Y_IBUF[8]));
  IBUF \Data_Y_IBUF[9]_inst 
       (.I(Data_Y[9]),
        .O(Data_Y_IBUF[9]));
  FSM_Add_Subtract FS_Module
       (.AR(rst_int),
        .CLK(clk_IBUF_BUFG),
        .D(p_1_in),
        .E(FS_Module_n_27),
        .Q({Sgf_ncarry,Sgf_nbit}),
        .\Q_reg[0] (FS_Module_n_28),
        .\Q_reg[0]_0 (FS_Module_n_30),
        .\Q_reg[0]_1 (FS_Module_n_31),
        .\Q_reg[0]_10 (load_11),
        .\Q_reg[0]_11 (load_18),
        .\Q_reg[0]_12 (load_5),
        .\Q_reg[0]_13 (load_9),
        .\Q_reg[0]_14 (load_15),
        .\Q_reg[0]_15 (load_2),
        .\Q_reg[0]_16 (load_16),
        .\Q_reg[0]_17 (load_10),
        .\Q_reg[0]_18 (load_3),
        .\Q_reg[0]_19 (load_17),
        .\Q_reg[0]_2 (FS_Module_n_32),
        .\Q_reg[0]_20 (load_14),
        .\Q_reg[0]_21 (load_4),
        .\Q_reg[0]_22 (FS_Module_n_55),
        .\Q_reg[0]_23 ({FS_Module_n_56,FS_Module_n_57}),
        .\Q_reg[0]_24 (Sel_4_P_n_0),
        .\Q_reg[0]_25 (as_5_P_Reg_n_0),
        .\Q_reg[0]_26 (Sel_10_P_b_n_0),
        .\Q_reg[0]_27 (Sel_10_P_a_n_0),
        .\Q_reg[0]_3 (FS_Module_n_33),
        .\Q_reg[0]_4 (FS_Module_n_34),
        .\Q_reg[0]_5 (load_1),
        .\Q_reg[0]_6 (load_13),
        .\Q_reg[0]_7 (load_8),
        .\Q_reg[0]_8 (load_6),
        .\Q_reg[0]_9 (load_19),
        .\Q_reg[10] (Fourth_Module_n_20),
        .\Q_reg[11] (Fourth_Module_n_19),
        .\Q_reg[12] (Fourth_Module_n_18),
        .\Q_reg[13] (Fourth_Module_n_17),
        .\Q_reg[14] (Fourth_Module_n_16),
        .\Q_reg[15] (Fourth_Module_n_15),
        .\Q_reg[16] (Fourth_Module_n_14),
        .\Q_reg[17] (Fourth_Module_n_13),
        .\Q_reg[18] (Fourth_Module_n_12),
        .\Q_reg[19] (Fourth_Module_n_11),
        .\Q_reg[1] (Fourth_Module_n_1),
        .\Q_reg[20] (Fourth_Module_n_10),
        .\Q_reg[21] (Fourth_Module_n_9),
        .\Q_reg[22] (Fourth_Module_n_8),
        .\Q_reg[23] (FS_Module_n_58),
        .\Q_reg[23]_0 (Fourth_Module_n_7),
        .\Q_reg[24] (Fourth_Module_n_6),
        .\Q_reg[25] (Fourth_Module_n_2),
        .\Q_reg[26] (Fourth_Module_n_5),
        .\Q_reg[26]_0 (Add_Sub_Significands_n_0),
        .\Q_reg[2] (FS_Module_n_26),
        .\Q_reg[2]_0 (Fourth_Module_n_28),
        .\Q_reg[2]_1 (Update_Exponent_First_Time_n_9),
        .\Q_reg[3] (Fourth_Module_n_27),
        .\Q_reg[4] (Fourth_Module_n_26),
        .\Q_reg[4]_0 (Update_Exponent_First_Time_n_8),
        .\Q_reg[5] (Fourth_Module_n_25),
        .\Q_reg[6] (Fourth_Module_n_24),
        .\Q_reg[7] (Fourth_Module_n_23),
        .\Q_reg[8] (Fourth_Module_n_22),
        .\Q_reg[9] (Fourth_Module_n_21),
        .add_subt_5_P(add_subt_5_P),
        .beg_FSM_IBUF(beg_FSM_IBUF),
        .in1(rst_IBUF),
        .load_0(load_0),
        .load_7(load_7),
        .overflow_a(overflow_a),
        .overflow_pr(overflow_pr),
        .ready_OBUF(ready_OBUF),
        .rst_FSM_IBUF(rst_FSM_IBUF),
        .underflow_flag_OBUF(underflow_flag_OBUF),
        .zero_flag(zero_flag));
  Sixth_Phase First_Und_Ov_Search
       (.AR(FS_Module_n_58),
        .\FSM_sequential_state_reg_reg[4] (FS_Module_n_34),
        .\FSM_sequential_state_reg_reg[4]_0 (FS_Module_n_33),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .overflow_a(overflow_a),
        .overflow_flag_OBUF(overflow_flag_OBUF),
        .overflow_pr(overflow_pr),
        .underflow_flag_OBUF(underflow_flag_OBUF));
  Fourth_Phase Fourth_Module
       (.AR({FS_Module_n_57,FS_Module_n_58}),
        .D(p_1_in),
        .E(FS_Module_n_27),
        .\FSM_sequential_state_reg_reg[4] (load_8),
        .\FSM_sequential_state_reg_reg[5] (FS_Module_n_26),
        .Q(sel),
        .\Q_reg[0] (Fourth_Module_n_1),
        .\Q_reg[0]_0 (Sel_4_P_n_0),
        .\Q_reg[0]_1 (Round_Resultant_Significand_n_0),
        .\Q_reg[10] (Fourth_Module_n_19),
        .\Q_reg[11] (Fourth_Module_n_18),
        .\Q_reg[12] (Fourth_Module_n_17),
        .\Q_reg[13] (Fourth_Module_n_16),
        .\Q_reg[14] (Fourth_Module_n_15),
        .\Q_reg[15] (Fourth_Module_n_14),
        .\Q_reg[16] (Fourth_Module_n_13),
        .\Q_reg[17] (Fourth_Module_n_12),
        .\Q_reg[18] (Fourth_Module_n_11),
        .\Q_reg[19] (Fourth_Module_n_10),
        .\Q_reg[20] (Fourth_Module_n_9),
        .\Q_reg[21] (Fourth_Module_n_8),
        .\Q_reg[22] (Fourth_Module_n_7),
        .\Q_reg[23] (Fourth_Module_n_6),
        .\Q_reg[23]_0 ({Fourth_Module_n_30,Fourth_Module_n_31,Fourth_Module_n_32,Fourth_Module_n_33,Fourth_Module_n_34,Fourth_Module_n_35,Fourth_Module_n_36,Fourth_Module_n_37,Fourth_Module_n_38,Fourth_Module_n_39,Fourth_Module_n_40,Fourth_Module_n_41,Fourth_Module_n_42,Fourth_Module_n_43,Fourth_Module_n_44,Fourth_Module_n_45,Fourth_Module_n_46,Fourth_Module_n_47,Fourth_Module_n_48,Fourth_Module_n_49,Fourth_Module_n_50,Fourth_Module_n_51,Fourth_Module_n_52,Fourth_Module_n_53}),
        .\Q_reg[24] (Fourth_Module_n_2),
        .\Q_reg[25] (Fourth_Module_n_5),
        .\Q_reg[26] ({Sgf_ncarry,Sgf_nbit}),
        .\Q_reg[26]_0 ({Add_Sub_Significands_n_0,Add_Sub_Significands_n_1,Add_Sub_Significands_n_2,Add_Sub_Significands_n_3,Add_Sub_Significands_n_4,Add_Sub_Significands_n_5,Add_Sub_Significands_n_6,Add_Sub_Significands_n_7,Add_Sub_Significands_n_8,Add_Sub_Significands_n_9,Add_Sub_Significands_n_10,Add_Sub_Significands_n_11,Add_Sub_Significands_n_12,Add_Sub_Significands_n_13,Add_Sub_Significands_n_14,Add_Sub_Significands_n_15,Add_Sub_Significands_n_16,Add_Sub_Significands_n_17,Add_Sub_Significands_n_18,Add_Sub_Significands_n_19,Add_Sub_Significands_n_20,Add_Sub_Significands_n_21,Add_Sub_Significands_n_22,Add_Sub_Significands_n_23,Add_Sub_Significands_n_24,Add_Sub_Significands_n_25,Add_Sub_Significands_n_26}),
        .\Q_reg[2] (Fourth_Module_n_27),
        .\Q_reg[2]_0 (Fourth_Module_n_28),
        .\Q_reg[3] (Fourth_Module_n_26),
        .\Q_reg[4] (Fourth_Module_n_25),
        .\Q_reg[5] (Fourth_Module_n_24),
        .\Q_reg[6] (Fourth_Module_n_23),
        .\Q_reg[7] (Fourth_Module_n_22),
        .\Q_reg[8] (Fourth_Module_n_21),
        .\Q_reg[9] (Fourth_Module_n_20),
        .S(Fourth_Module_n_29),
        .add_subt_5_P(add_subt_5_P),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .load_7(load_7),
        .p_0_in(Fourth_Module_n_0),
        .r_mode_IBUF(r_mode_IBUF));
  Second_Phase Normalization_Smallest_Significand
       (.AR({FS_Module_n_56,FS_Module_n_57}),
        .Data_S(Data_S),
        .E(load_4),
        .\FSM_sequential_state_reg_reg[4] (load_5),
        .\FSM_sequential_state_reg_reg[4]_0 (FS_Module_n_58),
        .Q({Normalization_Smallest_Significand_n_0,Normalization_Smallest_Significand_n_1}),
        .\Q_reg[22] (sgfm),
        .\Q_reg[22]_0 (Operands_Classification_n_0),
        .\Q_reg[25] (Normalization_Smallest_Significand_n_2),
        .\Q_reg[26] ({Normalization_Smallest_Significand_n_4,Normalization_Smallest_Significand_n_5,Normalization_Smallest_Significand_n_6,Normalization_Smallest_Significand_n_7,Normalization_Smallest_Significand_n_8,Normalization_Smallest_Significand_n_9,Normalization_Smallest_Significand_n_10,Normalization_Smallest_Significand_n_11,Normalization_Smallest_Significand_n_12,Normalization_Smallest_Significand_n_13,Normalization_Smallest_Significand_n_14,Normalization_Smallest_Significand_n_15,Normalization_Smallest_Significand_n_16,Normalization_Smallest_Significand_n_17,Normalization_Smallest_Significand_n_18,Normalization_Smallest_Significand_n_19,Normalization_Smallest_Significand_n_20,Normalization_Smallest_Significand_n_21,Normalization_Smallest_Significand_n_22,Normalization_Smallest_Significand_n_23,Normalization_Smallest_Significand_n_24,Normalization_Smallest_Significand_n_25,Normalization_Smallest_Significand_n_26,Normalization_Smallest_Significand_n_27,Normalization_Smallest_Significand_n_28}),
        .S(Normalization_Smallest_Significand_n_3),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  First_Phase Operands_Classification
       (.AR(FS_Module_n_55),
        .D({Operands_Classification_n_24,Operands_Classification_n_25,Operands_Classification_n_26,Operands_Classification_n_27,Operands_Classification_n_28,Operands_Classification_n_29,Operands_Classification_n_30,Operands_Classification_n_31,Operands_Classification_n_32,Operands_Classification_n_33,Operands_Classification_n_34,Operands_Classification_n_35,Operands_Classification_n_36,Operands_Classification_n_37,Operands_Classification_n_38,Operands_Classification_n_39,Operands_Classification_n_40,Operands_Classification_n_41,Operands_Classification_n_42,Operands_Classification_n_43,Operands_Classification_n_44,Operands_Classification_n_45,Operands_Classification_n_46,Operands_Classification_n_47,Operands_Classification_n_48,Operands_Classification_n_49,Operands_Classification_n_50}),
        .Data_S(Data_S),
        .\Data_X[31] (Data_X_IBUF),
        .\Data_Y[31] (Data_Y_IBUF),
        .E(load_2),
        .\FSM_sequential_state_reg_reg[4] (load_1),
        .\FSM_sequential_state_reg_reg[4]_0 (load_3),
        .\FSM_sequential_state_reg_reg[4]_1 ({FS_Module_n_56,FS_Module_n_57}),
        .Q(sgfm),
        .\Q_reg[0] (Operands_Classification_n_60),
        .\Q_reg[1] ({Normalization_Smallest_Significand_n_0,Normalization_Smallest_Significand_n_1}),
        .\Q_reg[22] (Operands_Classification_n_0),
        .\Q_reg[25] ({Normalization_Smallest_Significand_n_4,Normalization_Smallest_Significand_n_5,Normalization_Smallest_Significand_n_6,Normalization_Smallest_Significand_n_7,Normalization_Smallest_Significand_n_8,Normalization_Smallest_Significand_n_9,Normalization_Smallest_Significand_n_10,Normalization_Smallest_Significand_n_11,Normalization_Smallest_Significand_n_12,Normalization_Smallest_Significand_n_13,Normalization_Smallest_Significand_n_14,Normalization_Smallest_Significand_n_15,Normalization_Smallest_Significand_n_16,Normalization_Smallest_Significand_n_17,Normalization_Smallest_Significand_n_18,Normalization_Smallest_Significand_n_19,Normalization_Smallest_Significand_n_20,Normalization_Smallest_Significand_n_21,Normalization_Smallest_Significand_n_22,Normalization_Smallest_Significand_n_23,Normalization_Smallest_Significand_n_24,Normalization_Smallest_Significand_n_25,Normalization_Smallest_Significand_n_26,Normalization_Smallest_Significand_n_27,Normalization_Smallest_Significand_n_28}),
        .\Q_reg[31] ({sel,exp_M}),
        .\Q_reg[7] (Normalization_Smallest_Significand_n_2),
        .S(Normalization_Smallest_Significand_n_3),
        .add_subt_IBUF(add_subt_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .load_0(load_0),
        .zero_flag(zero_flag));
  Seventh_Phase Round_Resultant_Significand
       (.AR({FS_Module_n_57,FS_Module_n_58}),
        .D({Fourth_Module_n_30,Fourth_Module_n_31,Fourth_Module_n_32,Fourth_Module_n_33,Fourth_Module_n_34,Fourth_Module_n_35,Fourth_Module_n_36,Fourth_Module_n_37,Fourth_Module_n_38,Fourth_Module_n_39,Fourth_Module_n_40,Fourth_Module_n_41,Fourth_Module_n_42,Fourth_Module_n_43,Fourth_Module_n_44,Fourth_Module_n_45,Fourth_Module_n_46,Fourth_Module_n_47,Fourth_Module_n_48,Fourth_Module_n_49,Fourth_Module_n_50,Fourth_Module_n_51,Fourth_Module_n_52,Fourth_Module_n_53}),
        .E(load_13),
        .\FSM_sequential_state_reg_reg[4] (load_14),
        .\FSM_sequential_state_reg_reg[4]_0 (FS_Module_n_56),
        .Q(Round_Resultant_Significand_n_0),
        .\Q_reg[0] ({Round_Resultant_Significand_n_1,Round_Resultant_Significand_n_2,Round_Resultant_Significand_n_3,Round_Resultant_Significand_n_4,Round_Resultant_Significand_n_5,Round_Resultant_Significand_n_6,Round_Resultant_Significand_n_7,Round_Resultant_Significand_n_8,Round_Resultant_Significand_n_9,Round_Resultant_Significand_n_10,Round_Resultant_Significand_n_11,Round_Resultant_Significand_n_12,Round_Resultant_Significand_n_13,Round_Resultant_Significand_n_14,Round_Resultant_Significand_n_15,Round_Resultant_Significand_n_16,Round_Resultant_Significand_n_17,Round_Resultant_Significand_n_18,Round_Resultant_Significand_n_19,Round_Resultant_Significand_n_20,Round_Resultant_Significand_n_21,Round_Resultant_Significand_n_22,Round_Resultant_Significand_n_23,Round_Resultant_Significand_n_24,Round_Resultant_Significand_n_25}),
        .S(Fourth_Module_n_29),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .p_0_in(Fourth_Module_n_0));
  RegisterAdd Sel_10_P_a
       (.\FSM_sequential_state_reg_reg[4] (FS_Module_n_57),
        .\FSM_sequential_state_reg_reg[5] (FS_Module_n_32),
        .\Q_reg[30] (Sel_10_P_a_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  RegisterAdd_0 Sel_10_P_b
       (.D({Sel_10_P_b_n_1,Sel_10_P_b_n_2,Sel_10_P_b_n_3,Sel_10_P_b_n_4,Sel_10_P_b_n_5,Sel_10_P_b_n_6,Sel_10_P_b_n_7,Sel_10_P_b_n_8,Sel_10_P_b_n_9,Sel_10_P_b_n_10,Sel_10_P_b_n_11,Sel_10_P_b_n_12,Sel_10_P_b_n_13,Sel_10_P_b_n_14,Sel_10_P_b_n_15,Sel_10_P_b_n_16,Sel_10_P_b_n_17,Sel_10_P_b_n_18,Sel_10_P_b_n_19,Sel_10_P_b_n_20,Sel_10_P_b_n_21,Sel_10_P_b_n_22,Sel_10_P_b_n_23}),
        .\FSM_sequential_state_reg_reg[4] (FS_Module_n_57),
        .\FSM_sequential_state_reg_reg[5] (FS_Module_n_31),
        .Q({Tenth_Module_n_0,Tenth_Module_n_1,Tenth_Module_n_2,Tenth_Module_n_3,Tenth_Module_n_4,Tenth_Module_n_5,Tenth_Module_n_6,Tenth_Module_n_7,Tenth_Module_n_8,Tenth_Module_n_9,Tenth_Module_n_10,Tenth_Module_n_11,Tenth_Module_n_12,Tenth_Module_n_13,Tenth_Module_n_14,Tenth_Module_n_15,Tenth_Module_n_16,Tenth_Module_n_17,Tenth_Module_n_18,Tenth_Module_n_19,Tenth_Module_n_20,Tenth_Module_n_21,Tenth_Module_n_22}),
        .\Q_reg[0]_0 (Sel_10_P_b_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  RegisterAdd_1 Sel_4_P
       (.\FSM_sequential_state_reg_reg[4] (FS_Module_n_56),
        .\FSM_sequential_state_reg_reg[5] (FS_Module_n_30),
        .\Q_reg[0]_0 (Sel_4_P_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  Eight_NE_Phase Select_Final_Exponent
       (.AR({FS_Module_n_57,FS_Module_n_58}),
        .D(\dir_exp_up/S ),
        .E(load_17),
        .\FSM_sequential_state_reg_reg[4] (load_16),
        .\FSM_sequential_state_reg_reg[4]_0 (FS_Module_n_56),
        .Q(Select_Final_Exponent_n_1),
        .\Q_reg[0] (Select_Final_Significand_n_0),
        .\Q_reg[30] ({Select_Final_Exponent_n_2,Select_Final_Exponent_n_3,Select_Final_Exponent_n_4,Select_Final_Exponent_n_5,Select_Final_Exponent_n_6,Select_Final_Exponent_n_7,Select_Final_Exponent_n_8,Select_Final_Exponent_n_9}),
        .\Q_reg[7] ({Update_Exponent_First_Time_n_10,Update_Exponent_First_Time_n_11,Update_Exponent_First_Time_n_12,Update_Exponent_First_Time_n_13,Update_Exponent_First_Time_n_14,Update_Exponent_First_Time_n_15,Update_Exponent_First_Time_n_16,Update_Exponent_First_Time_n_17}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .overflow_pr(overflow_pr));
  Eight_N_Phase Select_Final_Significand
       (.D(\dir_exp_up/S ),
        .E(load_15),
        .\FSM_sequential_state_reg_reg[4] ({FS_Module_n_56,FS_Module_n_57}),
        .Q(Select_Final_Exponent_n_1),
        .\Q_reg[0] (Select_Final_Significand_n_0),
        .\Q_reg[22] ({Select_Final_Significand_n_2,Select_Final_Significand_n_3,Select_Final_Significand_n_4,Select_Final_Significand_n_5,Select_Final_Significand_n_6,Select_Final_Significand_n_7,Select_Final_Significand_n_8,Select_Final_Significand_n_9,Select_Final_Significand_n_10,Select_Final_Significand_n_11,Select_Final_Significand_n_12,Select_Final_Significand_n_13,Select_Final_Significand_n_14,Select_Final_Significand_n_15,Select_Final_Significand_n_16,Select_Final_Significand_n_17,Select_Final_Significand_n_18,Select_Final_Significand_n_19,Select_Final_Significand_n_20,Select_Final_Significand_n_21,Select_Final_Significand_n_22,Select_Final_Significand_n_23,Select_Final_Significand_n_24}),
        .\Q_reg[24] ({Round_Resultant_Significand_n_1,Round_Resultant_Significand_n_2,Round_Resultant_Significand_n_3,Round_Resultant_Significand_n_4,Round_Resultant_Significand_n_5,Round_Resultant_Significand_n_6,Round_Resultant_Significand_n_7,Round_Resultant_Significand_n_8,Round_Resultant_Significand_n_9,Round_Resultant_Significand_n_10,Round_Resultant_Significand_n_11,Round_Resultant_Significand_n_12,Round_Resultant_Significand_n_13,Round_Resultant_Significand_n_14,Round_Resultant_Significand_n_15,Round_Resultant_Significand_n_16,Round_Resultant_Significand_n_17,Round_Resultant_Significand_n_18,Round_Resultant_Significand_n_19,Round_Resultant_Significand_n_20,Round_Resultant_Significand_n_21,Round_Resultant_Significand_n_22,Round_Resultant_Significand_n_23,Round_Resultant_Significand_n_24,Round_Resultant_Significand_n_25}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  Tenth_Phase Tenth_Module
       (.AR({FS_Module_n_57,FS_Module_n_58}),
        .D({sel,Select_Final_Exponent_n_2,Select_Final_Exponent_n_3,Select_Final_Exponent_n_4,Select_Final_Exponent_n_5,Select_Final_Exponent_n_6,Select_Final_Exponent_n_7,Select_Final_Exponent_n_8,Select_Final_Exponent_n_9,Select_Final_Significand_n_2,Select_Final_Significand_n_3,Select_Final_Significand_n_4,Select_Final_Significand_n_5,Select_Final_Significand_n_6,Select_Final_Significand_n_7,Select_Final_Significand_n_8,Select_Final_Significand_n_9,Select_Final_Significand_n_10,Select_Final_Significand_n_11,Select_Final_Significand_n_12,Select_Final_Significand_n_13,Select_Final_Significand_n_14,Select_Final_Significand_n_15,Select_Final_Significand_n_16,Select_Final_Significand_n_17,Select_Final_Significand_n_18,Select_Final_Significand_n_19,Select_Final_Significand_n_20,Select_Final_Significand_n_21,Select_Final_Significand_n_22,Select_Final_Significand_n_23,Select_Final_Significand_n_24}),
        .E(load_18),
        .\FSM_sequential_state_reg_reg[4] (rst_int),
        .\FSM_sequential_state_reg_reg[5] (load_19),
        .Q({Tenth_Module_n_0,Tenth_Module_n_1,Tenth_Module_n_2,Tenth_Module_n_3,Tenth_Module_n_4,Tenth_Module_n_5,Tenth_Module_n_6,Tenth_Module_n_7,Tenth_Module_n_8,Tenth_Module_n_9,Tenth_Module_n_10,Tenth_Module_n_11,Tenth_Module_n_12,Tenth_Module_n_13,Tenth_Module_n_14,Tenth_Module_n_15,Tenth_Module_n_16,Tenth_Module_n_17,Tenth_Module_n_18,Tenth_Module_n_19,Tenth_Module_n_20,Tenth_Module_n_21,Tenth_Module_n_22}),
        .\Q_reg[0] ({Sel_10_P_b_n_1,Sel_10_P_b_n_2,Sel_10_P_b_n_3,Sel_10_P_b_n_4,Sel_10_P_b_n_5,Sel_10_P_b_n_6,Sel_10_P_b_n_7,Sel_10_P_b_n_8,Sel_10_P_b_n_9,Sel_10_P_b_n_10,Sel_10_P_b_n_11,Sel_10_P_b_n_12,Sel_10_P_b_n_13,Sel_10_P_b_n_14,Sel_10_P_b_n_15,Sel_10_P_b_n_16,Sel_10_P_b_n_17,Sel_10_P_b_n_18,Sel_10_P_b_n_19,Sel_10_P_b_n_20,Sel_10_P_b_n_21,Sel_10_P_b_n_22,Sel_10_P_b_n_23}),
        .\Q_reg[0]_0 (Sel_10_P_a_n_0),
        .\Q_reg[0]_1 (Sel_10_P_b_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\final_result_ieee[31] (final_result_ieee_OBUF));
  Fifth_Phase Update_Exponent_First_Time
       (.D({as_5_P_Reg_n_1,as_5_P_Reg_n_2,as_5_P_Reg_n_3,as_5_P_Reg_n_4,as_5_P_Reg_n_5,as_5_P_Reg_n_6,as_5_P_Reg_n_7}),
        .E(load_9),
        .\FSM_sequential_state_reg_reg[4] (FS_Module_n_56),
        .\FSM_sequential_state_reg_reg[4]_0 (load_10),
        .\FSM_sequential_state_reg_reg[4]_1 (load_11),
        .Q({Update_Exponent_First_Time_n_0,Update_Exponent_First_Time_n_1,Update_Exponent_First_Time_n_2,Update_Exponent_First_Time_n_3,Update_Exponent_First_Time_n_4,Update_Exponent_First_Time_n_5,Update_Exponent_First_Time_n_6,Update_Exponent_First_Time_n_7}),
        .\Q_reg[0] (Update_Exponent_First_Time_n_8),
        .\Q_reg[0]_0 (Update_Exponent_First_Time_n_9),
        .\Q_reg[0]_1 (Sel_4_P_n_0),
        .\Q_reg[30] (exp_M),
        .\Q_reg[7] ({Update_Exponent_First_Time_n_10,Update_Exponent_First_Time_n_11,Update_Exponent_First_Time_n_12,Update_Exponent_First_Time_n_13,Update_Exponent_First_Time_n_14,Update_Exponent_First_Time_n_15,Update_Exponent_First_Time_n_16,Update_Exponent_First_Time_n_17}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  Zero_InfAdd_Unit Zero_Except_Module
       (.\FSM_sequential_state_reg_reg[4] (FS_Module_n_55),
        .\Q_reg[31] (Operands_Classification_n_60),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .zero_flag(zero_flag));
  IBUF add_subt_IBUF_inst
       (.I(add_subt),
        .O(add_subt_IBUF));
  RegisterAdd_2 as_5_P_Reg
       (.D({as_5_P_Reg_n_1,as_5_P_Reg_n_2,as_5_P_Reg_n_3,as_5_P_Reg_n_4,as_5_P_Reg_n_5,as_5_P_Reg_n_6,as_5_P_Reg_n_7}),
        .\FSM_sequential_state_reg_reg[4] (FS_Module_n_56),
        .Q({Update_Exponent_First_Time_n_0,Update_Exponent_First_Time_n_1,Update_Exponent_First_Time_n_2,Update_Exponent_First_Time_n_3,Update_Exponent_First_Time_n_4,Update_Exponent_First_Time_n_5,Update_Exponent_First_Time_n_6,Update_Exponent_First_Time_n_7}),
        .\Q_reg[0]_0 (FS_Module_n_28),
        .\Q_reg[4] (as_5_P_Reg_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  IBUF beg_FSM_IBUF_inst
       (.I(beg_FSM),
        .O(beg_FSM_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \final_result_ieee_OBUF[0]_inst 
       (.I(final_result_ieee_OBUF[0]),
        .O(final_result_ieee[0]));
  OBUF \final_result_ieee_OBUF[10]_inst 
       (.I(final_result_ieee_OBUF[10]),
        .O(final_result_ieee[10]));
  OBUF \final_result_ieee_OBUF[11]_inst 
       (.I(final_result_ieee_OBUF[11]),
        .O(final_result_ieee[11]));
  OBUF \final_result_ieee_OBUF[12]_inst 
       (.I(final_result_ieee_OBUF[12]),
        .O(final_result_ieee[12]));
  OBUF \final_result_ieee_OBUF[13]_inst 
       (.I(final_result_ieee_OBUF[13]),
        .O(final_result_ieee[13]));
  OBUF \final_result_ieee_OBUF[14]_inst 
       (.I(final_result_ieee_OBUF[14]),
        .O(final_result_ieee[14]));
  OBUF \final_result_ieee_OBUF[15]_inst 
       (.I(final_result_ieee_OBUF[15]),
        .O(final_result_ieee[15]));
  OBUF \final_result_ieee_OBUF[16]_inst 
       (.I(final_result_ieee_OBUF[16]),
        .O(final_result_ieee[16]));
  OBUF \final_result_ieee_OBUF[17]_inst 
       (.I(final_result_ieee_OBUF[17]),
        .O(final_result_ieee[17]));
  OBUF \final_result_ieee_OBUF[18]_inst 
       (.I(final_result_ieee_OBUF[18]),
        .O(final_result_ieee[18]));
  OBUF \final_result_ieee_OBUF[19]_inst 
       (.I(final_result_ieee_OBUF[19]),
        .O(final_result_ieee[19]));
  OBUF \final_result_ieee_OBUF[1]_inst 
       (.I(final_result_ieee_OBUF[1]),
        .O(final_result_ieee[1]));
  OBUF \final_result_ieee_OBUF[20]_inst 
       (.I(final_result_ieee_OBUF[20]),
        .O(final_result_ieee[20]));
  OBUF \final_result_ieee_OBUF[21]_inst 
       (.I(final_result_ieee_OBUF[21]),
        .O(final_result_ieee[21]));
  OBUF \final_result_ieee_OBUF[22]_inst 
       (.I(final_result_ieee_OBUF[22]),
        .O(final_result_ieee[22]));
  OBUF \final_result_ieee_OBUF[23]_inst 
       (.I(final_result_ieee_OBUF[23]),
        .O(final_result_ieee[23]));
  OBUF \final_result_ieee_OBUF[24]_inst 
       (.I(final_result_ieee_OBUF[24]),
        .O(final_result_ieee[24]));
  OBUF \final_result_ieee_OBUF[25]_inst 
       (.I(final_result_ieee_OBUF[25]),
        .O(final_result_ieee[25]));
  OBUF \final_result_ieee_OBUF[26]_inst 
       (.I(final_result_ieee_OBUF[26]),
        .O(final_result_ieee[26]));
  OBUF \final_result_ieee_OBUF[27]_inst 
       (.I(final_result_ieee_OBUF[27]),
        .O(final_result_ieee[27]));
  OBUF \final_result_ieee_OBUF[28]_inst 
       (.I(final_result_ieee_OBUF[28]),
        .O(final_result_ieee[28]));
  OBUF \final_result_ieee_OBUF[29]_inst 
       (.I(final_result_ieee_OBUF[29]),
        .O(final_result_ieee[29]));
  OBUF \final_result_ieee_OBUF[2]_inst 
       (.I(final_result_ieee_OBUF[2]),
        .O(final_result_ieee[2]));
  OBUF \final_result_ieee_OBUF[30]_inst 
       (.I(final_result_ieee_OBUF[30]),
        .O(final_result_ieee[30]));
  OBUF \final_result_ieee_OBUF[31]_inst 
       (.I(final_result_ieee_OBUF[31]),
        .O(final_result_ieee[31]));
  OBUF \final_result_ieee_OBUF[3]_inst 
       (.I(final_result_ieee_OBUF[3]),
        .O(final_result_ieee[3]));
  OBUF \final_result_ieee_OBUF[4]_inst 
       (.I(final_result_ieee_OBUF[4]),
        .O(final_result_ieee[4]));
  OBUF \final_result_ieee_OBUF[5]_inst 
       (.I(final_result_ieee_OBUF[5]),
        .O(final_result_ieee[5]));
  OBUF \final_result_ieee_OBUF[6]_inst 
       (.I(final_result_ieee_OBUF[6]),
        .O(final_result_ieee[6]));
  OBUF \final_result_ieee_OBUF[7]_inst 
       (.I(final_result_ieee_OBUF[7]),
        .O(final_result_ieee[7]));
  OBUF \final_result_ieee_OBUF[8]_inst 
       (.I(final_result_ieee_OBUF[8]),
        .O(final_result_ieee[8]));
  OBUF \final_result_ieee_OBUF[9]_inst 
       (.I(final_result_ieee_OBUF[9]),
        .O(final_result_ieee[9]));
  OBUF overflow_flag_OBUF_inst
       (.I(overflow_flag_OBUF),
        .O(overflow_flag));
  IBUF \r_mode_IBUF[0]_inst 
       (.I(r_mode[0]),
        .O(r_mode_IBUF[0]));
  IBUF \r_mode_IBUF[1]_inst 
       (.I(r_mode[1]),
        .O(r_mode_IBUF[1]));
  OBUF ready_OBUF_inst
       (.I(ready_OBUF),
        .O(ready));
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

module FSM_Add_Subtract
   (D,
    load_7,
    \Q_reg[2] ,
    E,
    \Q_reg[0] ,
    add_subt_5_P,
    \Q_reg[0]_0 ,
    \Q_reg[0]_1 ,
    \Q_reg[0]_2 ,
    \Q_reg[0]_3 ,
    \Q_reg[0]_4 ,
    \Q_reg[0]_5 ,
    \Q_reg[0]_6 ,
    AR,
    ready_OBUF,
    \Q_reg[0]_7 ,
    \Q_reg[0]_8 ,
    \Q_reg[0]_9 ,
    \Q_reg[0]_10 ,
    \Q_reg[0]_11 ,
    \Q_reg[0]_12 ,
    \Q_reg[0]_13 ,
    \Q_reg[0]_14 ,
    \Q_reg[0]_15 ,
    \Q_reg[0]_16 ,
    \Q_reg[0]_17 ,
    \Q_reg[0]_18 ,
    \Q_reg[0]_19 ,
    load_0,
    \Q_reg[0]_20 ,
    \Q_reg[0]_21 ,
    \Q_reg[0]_22 ,
    \Q_reg[0]_23 ,
    \Q_reg[23] ,
    \Q_reg[2]_0 ,
    \Q_reg[3] ,
    \Q_reg[1] ,
    \Q_reg[4] ,
    \Q_reg[5] ,
    \Q_reg[6] ,
    \Q_reg[7] ,
    \Q_reg[8] ,
    \Q_reg[9] ,
    \Q_reg[10] ,
    \Q_reg[11] ,
    \Q_reg[12] ,
    \Q_reg[13] ,
    \Q_reg[14] ,
    \Q_reg[15] ,
    \Q_reg[16] ,
    \Q_reg[17] ,
    \Q_reg[18] ,
    \Q_reg[19] ,
    \Q_reg[20] ,
    \Q_reg[21] ,
    \Q_reg[22] ,
    \Q_reg[23]_0 ,
    \Q_reg[24] ,
    \Q_reg[25] ,
    \Q_reg[26] ,
    Q,
    \Q_reg[0]_24 ,
    \Q_reg[26]_0 ,
    \Q_reg[0]_25 ,
    \Q_reg[0]_26 ,
    \Q_reg[0]_27 ,
    \Q_reg[2]_1 ,
    underflow_flag_OBUF,
    \Q_reg[4]_0 ,
    overflow_a,
    CLK,
    in1,
    overflow_pr,
    rst_FSM_IBUF,
    beg_FSM_IBUF,
    zero_flag);
  output [24:0]D;
  output load_7;
  output \Q_reg[2] ;
  output [0:0]E;
  output \Q_reg[0] ;
  output add_subt_5_P;
  output \Q_reg[0]_0 ;
  output \Q_reg[0]_1 ;
  output \Q_reg[0]_2 ;
  output \Q_reg[0]_3 ;
  output \Q_reg[0]_4 ;
  output [0:0]\Q_reg[0]_5 ;
  output [0:0]\Q_reg[0]_6 ;
  output [0:0]AR;
  output ready_OBUF;
  output [0:0]\Q_reg[0]_7 ;
  output [0:0]\Q_reg[0]_8 ;
  output [0:0]\Q_reg[0]_9 ;
  output [0:0]\Q_reg[0]_10 ;
  output [0:0]\Q_reg[0]_11 ;
  output [0:0]\Q_reg[0]_12 ;
  output [0:0]\Q_reg[0]_13 ;
  output [0:0]\Q_reg[0]_14 ;
  output [0:0]\Q_reg[0]_15 ;
  output [0:0]\Q_reg[0]_16 ;
  output [0:0]\Q_reg[0]_17 ;
  output [0:0]\Q_reg[0]_18 ;
  output [0:0]\Q_reg[0]_19 ;
  output load_0;
  output [0:0]\Q_reg[0]_20 ;
  output [0:0]\Q_reg[0]_21 ;
  output [0:0]\Q_reg[0]_22 ;
  output [1:0]\Q_reg[0]_23 ;
  output [0:0]\Q_reg[23] ;
  input \Q_reg[2]_0 ;
  input \Q_reg[3] ;
  input \Q_reg[1] ;
  input \Q_reg[4] ;
  input \Q_reg[5] ;
  input \Q_reg[6] ;
  input \Q_reg[7] ;
  input \Q_reg[8] ;
  input \Q_reg[9] ;
  input \Q_reg[10] ;
  input \Q_reg[11] ;
  input \Q_reg[12] ;
  input \Q_reg[13] ;
  input \Q_reg[14] ;
  input \Q_reg[15] ;
  input \Q_reg[16] ;
  input \Q_reg[17] ;
  input \Q_reg[18] ;
  input \Q_reg[19] ;
  input \Q_reg[20] ;
  input \Q_reg[21] ;
  input \Q_reg[22] ;
  input \Q_reg[23]_0 ;
  input \Q_reg[24] ;
  input \Q_reg[25] ;
  input \Q_reg[26] ;
  input [1:0]Q;
  input \Q_reg[0]_24 ;
  input [0:0]\Q_reg[26]_0 ;
  input \Q_reg[0]_25 ;
  input \Q_reg[0]_26 ;
  input \Q_reg[0]_27 ;
  input \Q_reg[2]_1 ;
  input underflow_flag_OBUF;
  input \Q_reg[4]_0 ;
  input overflow_a;
  input CLK;
  input in1;
  input overflow_pr;
  input rst_FSM_IBUF;
  input beg_FSM_IBUF;
  input zero_flag;

  wire [0:0]AR;
  wire CLK;
  wire [24:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[3]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[3]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_5_n_0 ;
  wire \FSM_sequential_state_reg[5]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[5]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[5]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[5]_i_5_n_0 ;
  wire \FSM_sequential_state_reg[5]_i_6_n_0 ;
  wire \FSM_sequential_state_reg_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg_reg[3]_i_1_n_0 ;
  wire \FSM_sequential_state_reg_reg[4]_i_3_n_0 ;
  wire \FSM_sequential_state_reg_reg[5]_i_1_n_0 ;
  wire [1:0]Q;
  wire \Q[0]_i_2__4_n_0 ;
  wire \Q[0]_i_3__0_n_0 ;
  wire \Q[26]_i_4_n_0 ;
  wire \Q_reg[0] ;
  wire \Q_reg[0]_0 ;
  wire \Q_reg[0]_1 ;
  wire [0:0]\Q_reg[0]_10 ;
  wire [0:0]\Q_reg[0]_11 ;
  wire [0:0]\Q_reg[0]_12 ;
  wire [0:0]\Q_reg[0]_13 ;
  wire [0:0]\Q_reg[0]_14 ;
  wire [0:0]\Q_reg[0]_15 ;
  wire [0:0]\Q_reg[0]_16 ;
  wire [0:0]\Q_reg[0]_17 ;
  wire [0:0]\Q_reg[0]_18 ;
  wire [0:0]\Q_reg[0]_19 ;
  wire \Q_reg[0]_2 ;
  wire [0:0]\Q_reg[0]_20 ;
  wire [0:0]\Q_reg[0]_21 ;
  wire [0:0]\Q_reg[0]_22 ;
  wire [1:0]\Q_reg[0]_23 ;
  wire \Q_reg[0]_24 ;
  wire \Q_reg[0]_25 ;
  wire \Q_reg[0]_26 ;
  wire \Q_reg[0]_27 ;
  wire \Q_reg[0]_3 ;
  wire \Q_reg[0]_4 ;
  wire [0:0]\Q_reg[0]_5 ;
  wire [0:0]\Q_reg[0]_6 ;
  wire [0:0]\Q_reg[0]_7 ;
  wire [0:0]\Q_reg[0]_8 ;
  wire [0:0]\Q_reg[0]_9 ;
  wire \Q_reg[10] ;
  wire \Q_reg[11] ;
  wire \Q_reg[12] ;
  wire \Q_reg[13] ;
  wire \Q_reg[14] ;
  wire \Q_reg[15] ;
  wire \Q_reg[16] ;
  wire \Q_reg[17] ;
  wire \Q_reg[18] ;
  wire \Q_reg[19] ;
  wire \Q_reg[1] ;
  wire \Q_reg[20] ;
  wire \Q_reg[21] ;
  wire \Q_reg[22] ;
  wire [0:0]\Q_reg[23] ;
  wire \Q_reg[23]_0 ;
  wire \Q_reg[24] ;
  wire \Q_reg[25] ;
  wire \Q_reg[26] ;
  wire [0:0]\Q_reg[26]_0 ;
  wire \Q_reg[2] ;
  wire \Q_reg[2]_0 ;
  wire \Q_reg[2]_1 ;
  wire \Q_reg[3] ;
  wire \Q_reg[4] ;
  wire \Q_reg[4]_0 ;
  wire \Q_reg[5] ;
  wire \Q_reg[6] ;
  wire \Q_reg[7] ;
  wire \Q_reg[8] ;
  wire \Q_reg[9] ;
  wire add_subt_5_P;
  wire beg_FSM_IBUF;
  wire in1;
  wire load_0;
  wire load_7;
  wire overflow_a;
  wire overflow_pr;
  wire ready_OBUF;
  wire rst_FSM_IBUF;
  (* RTL_KEEP = "yes" *) wire [5:0]state_reg;
  wire underflow_flag_OBUF;
  wire zero_flag;

  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_i_2_n_0 ),
        .I1(state_reg[5]),
        .I2(\FSM_sequential_state_reg[0]_i_3_n_0 ),
        .I3(state_reg[4]),
        .I4(\FSM_sequential_state_reg[0]_i_4_n_0 ),
        .O(\FSM_sequential_state_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000BF04BF)) 
    \FSM_sequential_state_reg[0]_i_2 
       (.I0(state_reg[1]),
        .I1(state_reg[3]),
        .I2(state_reg[2]),
        .I3(state_reg[0]),
        .I4(overflow_pr),
        .I5(state_reg[4]),
        .O(\FSM_sequential_state_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAFFFFAB)) 
    \FSM_sequential_state_reg[0]_i_3 
       (.I0(state_reg[1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(state_reg[3]),
        .I4(state_reg[2]),
        .I5(state_reg[0]),
        .O(\FSM_sequential_state_reg[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000FBFF)) 
    \FSM_sequential_state_reg[0]_i_4 
       (.I0(state_reg[1]),
        .I1(state_reg[2]),
        .I2(state_reg[3]),
        .I3(zero_flag),
        .I4(state_reg[0]),
        .O(\FSM_sequential_state_reg[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000F0FFEEFFF000)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(state_reg[2]),
        .I1(state_reg[3]),
        .I2(\FSM_sequential_state_reg[1]_i_4_n_0 ),
        .I3(state_reg[4]),
        .I4(state_reg[0]),
        .I5(state_reg[1]),
        .O(\FSM_sequential_state_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000066666266)) 
    \FSM_sequential_state_reg[1]_i_3 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(state_reg[2]),
        .I3(state_reg[3]),
        .I4(overflow_pr),
        .I5(state_reg[4]),
        .O(\FSM_sequential_state_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC88FFCCCC88FC)) 
    \FSM_sequential_state_reg[1]_i_4 
       (.I0(underflow_flag_OBUF),
        .I1(state_reg[1]),
        .I2(Q[0]),
        .I3(state_reg[3]),
        .I4(state_reg[2]),
        .I5(Q[1]),
        .O(\FSM_sequential_state_reg[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \FSM_sequential_state_reg[2]_i_1 
       (.I0(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .I1(state_reg[5]),
        .I2(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .I3(state_reg[4]),
        .I4(\FSM_sequential_state_reg[2]_i_4_n_0 ),
        .O(\FSM_sequential_state_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000003CC43EC4)) 
    \FSM_sequential_state_reg[2]_i_2 
       (.I0(state_reg[3]),
        .I1(state_reg[2]),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(overflow_pr),
        .I5(state_reg[4]),
        .O(\FSM_sequential_state_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55AAAF0055FFBBAA)) 
    \FSM_sequential_state_reg[2]_i_3 
       (.I0(state_reg[0]),
        .I1(Q[1]),
        .I2(underflow_flag_OBUF),
        .I3(state_reg[1]),
        .I4(state_reg[2]),
        .I5(state_reg[3]),
        .O(\FSM_sequential_state_reg[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h76778888)) 
    \FSM_sequential_state_reg[2]_i_4 
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .I2(state_reg[3]),
        .I3(zero_flag),
        .I4(state_reg[2]),
        .O(\FSM_sequential_state_reg[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0FFFFF3FF0000400)) 
    \FSM_sequential_state_reg[3]_i_2 
       (.I0(Q[1]),
        .I1(state_reg[4]),
        .I2(state_reg[2]),
        .I3(state_reg[1]),
        .I4(state_reg[0]),
        .I5(state_reg[3]),
        .O(\FSM_sequential_state_reg[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00006CC4)) 
    \FSM_sequential_state_reg[3]_i_3 
       (.I0(state_reg[2]),
        .I1(state_reg[3]),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(state_reg[4]),
        .O(\FSM_sequential_state_reg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0084FFFF00840000)) 
    \FSM_sequential_state_reg[4]_i_1 
       (.I0(state_reg[1]),
        .I1(\FSM_sequential_state_reg[4]_i_2_n_0 ),
        .I2(state_reg[0]),
        .I3(state_reg[4]),
        .I4(state_reg[5]),
        .I5(\FSM_sequential_state_reg_reg[4]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_state_reg[4]_i_2 
       (.I0(state_reg[2]),
        .I1(state_reg[3]),
        .O(\FSM_sequential_state_reg[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0000040)) 
    \FSM_sequential_state_reg[4]_i_4 
       (.I0(state_reg[0]),
        .I1(zero_flag),
        .I2(state_reg[2]),
        .I3(state_reg[3]),
        .I4(state_reg[1]),
        .O(\FSM_sequential_state_reg[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0FFFF7FF)) 
    \FSM_sequential_state_reg[4]_i_5 
       (.I0(overflow_a),
        .I1(state_reg[0]),
        .I2(state_reg[2]),
        .I3(state_reg[3]),
        .I4(state_reg[1]),
        .O(\FSM_sequential_state_reg[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h4A4A4F4A)) 
    \FSM_sequential_state_reg[5]_i_2 
       (.I0(state_reg[5]),
        .I1(\FSM_sequential_state_reg[5]_i_5_n_0 ),
        .I2(state_reg[4]),
        .I3(\FSM_sequential_state_reg[5]_i_6_n_0 ),
        .I4(state_reg[0]),
        .O(\FSM_sequential_state_reg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_state_reg[5]_i_3 
       (.I0(state_reg[4]),
        .I1(state_reg[1]),
        .I2(state_reg[3]),
        .I3(state_reg[2]),
        .I4(state_reg[0]),
        .I5(beg_FSM_IBUF),
        .O(\FSM_sequential_state_reg[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000002FFFFFFFF)) 
    \FSM_sequential_state_reg[5]_i_4 
       (.I0(rst_FSM_IBUF),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .I3(state_reg[3]),
        .I4(state_reg[0]),
        .I5(state_reg[4]),
        .O(\FSM_sequential_state_reg[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hC0003080)) 
    \FSM_sequential_state_reg[5]_i_5 
       (.I0(overflow_a),
        .I1(state_reg[0]),
        .I2(state_reg[3]),
        .I3(state_reg[2]),
        .I4(state_reg[1]),
        .O(\FSM_sequential_state_reg[5]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \FSM_sequential_state_reg[5]_i_6 
       (.I0(zero_flag),
        .I1(state_reg[2]),
        .I2(state_reg[3]),
        .I3(state_reg[1]),
        .O(\FSM_sequential_state_reg[5]_i_6_n_0 ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(CLK),
        .CE(\FSM_sequential_state_reg_reg[5]_i_1_n_0 ),
        .CLR(in1),
        .D(\FSM_sequential_state_reg[0]_i_1_n_0 ),
        .Q(state_reg[0]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(CLK),
        .CE(\FSM_sequential_state_reg_reg[5]_i_1_n_0 ),
        .CLR(in1),
        .D(\FSM_sequential_state_reg_reg[1]_i_1_n_0 ),
        .Q(state_reg[1]));
  MUXF7 \FSM_sequential_state_reg_reg[1]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg_reg[1]_i_1_n_0 ),
        .S(state_reg[5]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[2] 
       (.C(CLK),
        .CE(\FSM_sequential_state_reg_reg[5]_i_1_n_0 ),
        .CLR(in1),
        .D(\FSM_sequential_state_reg[2]_i_1_n_0 ),
        .Q(state_reg[2]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[3] 
       (.C(CLK),
        .CE(\FSM_sequential_state_reg_reg[5]_i_1_n_0 ),
        .CLR(in1),
        .D(\FSM_sequential_state_reg_reg[3]_i_1_n_0 ),
        .Q(state_reg[3]));
  MUXF7 \FSM_sequential_state_reg_reg[3]_i_1 
       (.I0(\FSM_sequential_state_reg[3]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg[3]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg_reg[3]_i_1_n_0 ),
        .S(state_reg[5]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[4] 
       (.C(CLK),
        .CE(\FSM_sequential_state_reg_reg[5]_i_1_n_0 ),
        .CLR(in1),
        .D(\FSM_sequential_state_reg[4]_i_1_n_0 ),
        .Q(state_reg[4]));
  MUXF7 \FSM_sequential_state_reg_reg[4]_i_3 
       (.I0(\FSM_sequential_state_reg[4]_i_4_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_i_5_n_0 ),
        .O(\FSM_sequential_state_reg_reg[4]_i_3_n_0 ),
        .S(state_reg[4]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[5] 
       (.C(CLK),
        .CE(\FSM_sequential_state_reg_reg[5]_i_1_n_0 ),
        .CLR(in1),
        .D(\FSM_sequential_state_reg[5]_i_2_n_0 ),
        .Q(state_reg[5]));
  MUXF7 \FSM_sequential_state_reg_reg[5]_i_1 
       (.I0(\FSM_sequential_state_reg[5]_i_3_n_0 ),
        .I1(\FSM_sequential_state_reg[5]_i_4_n_0 ),
        .O(\FSM_sequential_state_reg_reg[5]_i_1_n_0 ),
        .S(state_reg[5]));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \Q[0]_i_1 
       (.I0(state_reg[4]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .I3(state_reg[3]),
        .I4(state_reg[0]),
        .I5(state_reg[5]),
        .O(\Q_reg[0]_15 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \Q[0]_i_1__11 
       (.I0(\Q_reg[2]_1 ),
        .I1(state_reg[4]),
        .I2(\Q[0]_i_3__0_n_0 ),
        .I3(state_reg[0]),
        .I4(state_reg[5]),
        .I5(underflow_flag_OBUF),
        .O(\Q_reg[0]_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \Q[0]_i_1__12 
       (.I0(\Q_reg[4]_0 ),
        .I1(state_reg[4]),
        .I2(\Q[0]_i_3__0_n_0 ),
        .I3(state_reg[0]),
        .I4(state_reg[5]),
        .I5(overflow_a),
        .O(\Q_reg[0]_4 ));
  LUT2 #(
    .INIT(4'hE)) 
    \Q[0]_i_1__6 
       (.I0(add_subt_5_P),
        .I1(\Q_reg[0]_25 ),
        .O(\Q_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00400000)) 
    \Q[0]_i_1__7 
       (.I0(state_reg[5]),
        .I1(state_reg[0]),
        .I2(\FSM_sequential_state_reg[4]_i_2_n_0 ),
        .I3(state_reg[1]),
        .I4(state_reg[4]),
        .I5(\Q_reg[0]_24 ),
        .O(\Q_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000080)) 
    \Q[0]_i_1__8 
       (.I0(state_reg[5]),
        .I1(state_reg[0]),
        .I2(\FSM_sequential_state_reg[4]_i_2_n_0 ),
        .I3(state_reg[1]),
        .I4(state_reg[4]),
        .I5(\Q_reg[0]_26 ),
        .O(\Q_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00002000)) 
    \Q[0]_i_1__9 
       (.I0(state_reg[5]),
        .I1(state_reg[0]),
        .I2(\Q[0]_i_2__4_n_0 ),
        .I3(state_reg[1]),
        .I4(state_reg[4]),
        .I5(\Q_reg[0]_27 ),
        .O(\Q_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \Q[0]_i_2 
       (.I0(state_reg[4]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .I3(state_reg[3]),
        .I4(state_reg[0]),
        .I5(state_reg[5]),
        .O(add_subt_5_P));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \Q[0]_i_2__0 
       (.I0(state_reg[4]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .I3(state_reg[3]),
        .I4(state_reg[0]),
        .I5(state_reg[5]),
        .O(\Q_reg[23] ));
  LUT2 #(
    .INIT(4'h2)) 
    \Q[0]_i_2__4 
       (.I0(state_reg[3]),
        .I1(state_reg[2]),
        .O(\Q[0]_i_2__4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \Q[0]_i_3 
       (.I0(state_reg[4]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .I3(state_reg[3]),
        .I4(state_reg[0]),
        .I5(state_reg[5]),
        .O(load_0));
  LUT3 #(
    .INIT(8'h04)) 
    \Q[0]_i_3__0 
       (.I0(state_reg[2]),
        .I1(state_reg[3]),
        .I2(state_reg[1]),
        .O(\Q[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \Q[10]_i_1__0 
       (.I0(load_7),
        .I1(\Q_reg[10] ),
        .I2(\Q_reg[2] ),
        .I3(\Q_reg[11] ),
        .I4(\Q[26]_i_4_n_0 ),
        .I5(\Q_reg[9] ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \Q[11]_i_1__0 
       (.I0(\Q_reg[2] ),
        .I1(\Q_reg[12] ),
        .I2(load_7),
        .I3(\Q_reg[11] ),
        .I4(\Q[26]_i_4_n_0 ),
        .I5(\Q_reg[10] ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \Q[12]_i_1__0 
       (.I0(\Q_reg[2] ),
        .I1(\Q_reg[13] ),
        .I2(load_7),
        .I3(\Q_reg[12] ),
        .I4(\Q[26]_i_4_n_0 ),
        .I5(\Q_reg[11] ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \Q[13]_i_1__0 
       (.I0(load_7),
        .I1(\Q_reg[13] ),
        .I2(\Q_reg[2] ),
        .I3(\Q_reg[14] ),
        .I4(\Q[26]_i_4_n_0 ),
        .I5(\Q_reg[12] ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \Q[14]_i_1__0 
       (.I0(\Q_reg[2] ),
        .I1(\Q_reg[15] ),
        .I2(load_7),
        .I3(\Q_reg[14] ),
        .I4(\Q[26]_i_4_n_0 ),
        .I5(\Q_reg[13] ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \Q[15]_i_1__0 
       (.I0(load_7),
        .I1(\Q_reg[15] ),
        .I2(\Q_reg[2] ),
        .I3(\Q_reg[16] ),
        .I4(\Q[26]_i_4_n_0 ),
        .I5(\Q_reg[14] ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \Q[16]_i_1__0 
       (.I0(load_7),
        .I1(\Q_reg[16] ),
        .I2(\Q_reg[2] ),
        .I3(\Q_reg[17] ),
        .I4(\Q[26]_i_4_n_0 ),
        .I5(\Q_reg[15] ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \Q[17]_i_1__0 
       (.I0(\Q_reg[2] ),
        .I1(\Q_reg[18] ),
        .I2(load_7),
        .I3(\Q_reg[17] ),
        .I4(\Q[26]_i_4_n_0 ),
        .I5(\Q_reg[16] ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \Q[18]_i_1__0 
       (.I0(load_7),
        .I1(\Q_reg[18] ),
        .I2(\Q_reg[2] ),
        .I3(\Q_reg[19] ),
        .I4(\Q[26]_i_4_n_0 ),
        .I5(\Q_reg[17] ),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \Q[19]_i_1__0 
       (.I0(load_7),
        .I1(\Q_reg[19] ),
        .I2(\Q_reg[2] ),
        .I3(\Q_reg[20] ),
        .I4(\Q[26]_i_4_n_0 ),
        .I5(\Q_reg[18] ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \Q[20]_i_1__0 
       (.I0(load_7),
        .I1(\Q_reg[20] ),
        .I2(\Q_reg[2] ),
        .I3(\Q_reg[21] ),
        .I4(\Q[26]_i_4_n_0 ),
        .I5(\Q_reg[19] ),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \Q[21]_i_1__0 
       (.I0(\Q[26]_i_4_n_0 ),
        .I1(\Q_reg[20] ),
        .I2(load_7),
        .I3(\Q_reg[21] ),
        .I4(\Q_reg[2] ),
        .I5(\Q_reg[22] ),
        .O(D[19]));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \Q[22]_i_1 
       (.I0(state_reg[4]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .I3(state_reg[3]),
        .I4(state_reg[0]),
        .I5(state_reg[5]),
        .O(\Q_reg[0]_14 ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \Q[22]_i_1__1 
       (.I0(load_7),
        .I1(\Q_reg[22] ),
        .I2(\Q_reg[2] ),
        .I3(\Q_reg[23]_0 ),
        .I4(\Q[26]_i_4_n_0 ),
        .I5(\Q_reg[21] ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \Q[22]_i_2 
       (.I0(state_reg[4]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .I3(state_reg[3]),
        .I4(state_reg[0]),
        .I5(state_reg[5]),
        .O(\Q_reg[0]_23 [0]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \Q[23]_i_1 
       (.I0(state_reg[4]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .I3(state_reg[3]),
        .I4(state_reg[0]),
        .I5(state_reg[5]),
        .O(\Q_reg[0]_6 ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \Q[23]_i_1__1 
       (.I0(load_7),
        .I1(\Q_reg[23]_0 ),
        .I2(\Q_reg[2] ),
        .I3(\Q_reg[24] ),
        .I4(\Q[26]_i_4_n_0 ),
        .I5(\Q_reg[22] ),
        .O(D[21]));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \Q[24]_i_1 
       (.I0(state_reg[4]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .I3(state_reg[3]),
        .I4(state_reg[0]),
        .I5(state_reg[5]),
        .O(\Q_reg[0]_20 ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \Q[24]_i_1__1 
       (.I0(\Q_reg[2] ),
        .I1(\Q_reg[25] ),
        .I2(load_7),
        .I3(\Q_reg[24] ),
        .I4(\Q[26]_i_4_n_0 ),
        .I5(\Q_reg[23]_0 ),
        .O(D[22]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \Q[25]_i_1 
       (.I0(state_reg[4]),
        .I1(state_reg[3]),
        .I2(state_reg[2]),
        .I3(state_reg[0]),
        .I4(state_reg[5]),
        .O(\Q_reg[0]_7 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \Q[25]_i_1__0 
       (.I0(state_reg[4]),
        .I1(state_reg[1]),
        .I2(state_reg[3]),
        .I3(state_reg[2]),
        .I4(state_reg[0]),
        .I5(state_reg[5]),
        .O(\Q_reg[0]_12 ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \Q[25]_i_1__1 
       (.I0(\Q_reg[2] ),
        .I1(\Q_reg[26] ),
        .I2(\Q[26]_i_4_n_0 ),
        .I3(\Q_reg[24] ),
        .I4(load_7),
        .I5(\Q_reg[25] ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hFFFFFFFBBFFFFFFF)) 
    \Q[25]_i_2__0 
       (.I0(state_reg[5]),
        .I1(state_reg[0]),
        .I2(state_reg[3]),
        .I3(state_reg[2]),
        .I4(state_reg[1]),
        .I5(state_reg[4]),
        .O(\Q_reg[2] ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \Q[26]_i_1 
       (.I0(state_reg[4]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .I3(state_reg[3]),
        .I4(state_reg[0]),
        .I5(state_reg[5]),
        .O(\Q_reg[0]_8 ));
  LUT6 #(
    .INIT(64'h00000000400A0000)) 
    \Q[26]_i_1__0 
       (.I0(state_reg[4]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .I3(state_reg[3]),
        .I4(state_reg[0]),
        .I5(state_reg[5]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFF8A808A808A80)) 
    \Q[26]_i_2 
       (.I0(load_7),
        .I1(Q[1]),
        .I2(\Q_reg[0]_24 ),
        .I3(\Q_reg[26]_0 ),
        .I4(\Q[26]_i_4_n_0 ),
        .I5(\Q_reg[25] ),
        .O(D[24]));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \Q[26]_i_3 
       (.I0(state_reg[4]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .I3(state_reg[3]),
        .I4(state_reg[0]),
        .I5(state_reg[5]),
        .O(load_7));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \Q[26]_i_4 
       (.I0(state_reg[5]),
        .I1(state_reg[0]),
        .I2(state_reg[3]),
        .I3(state_reg[2]),
        .I4(state_reg[1]),
        .I5(state_reg[4]),
        .O(\Q[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \Q[2]_i_1__0 
       (.I0(load_7),
        .I1(\Q_reg[2]_0 ),
        .I2(\Q_reg[2] ),
        .I3(\Q_reg[3] ),
        .I4(\Q[26]_i_4_n_0 ),
        .I5(\Q_reg[1] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \Q[31]_i_1 
       (.I0(state_reg[4]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .I3(state_reg[3]),
        .I4(state_reg[0]),
        .I5(state_reg[5]),
        .O(\Q_reg[0]_5 ));
  LUT6 #(
    .INIT(64'h0000100080002000)) 
    \Q[31]_i_1__0 
       (.I0(state_reg[5]),
        .I1(state_reg[0]),
        .I2(state_reg[3]),
        .I3(state_reg[2]),
        .I4(state_reg[1]),
        .I5(state_reg[4]),
        .O(\Q_reg[0]_9 ));
  LUT6 #(
    .INIT(64'h0400000028000000)) 
    \Q[31]_i_1__1 
       (.I0(state_reg[5]),
        .I1(state_reg[0]),
        .I2(state_reg[2]),
        .I3(state_reg[3]),
        .I4(state_reg[1]),
        .I5(state_reg[4]),
        .O(\Q_reg[0]_11 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \Q[31]_i_1__2 
       (.I0(state_reg[4]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .I3(state_reg[3]),
        .I4(state_reg[0]),
        .I5(state_reg[5]),
        .O(\Q_reg[0]_18 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \Q[31]_i_2 
       (.I0(state_reg[4]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .I3(state_reg[3]),
        .I4(state_reg[0]),
        .I5(state_reg[5]),
        .O(\Q_reg[0]_22 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \Q[31]_i_3 
       (.I0(state_reg[4]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .I3(state_reg[3]),
        .I4(state_reg[0]),
        .I5(state_reg[5]),
        .O(AR));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \Q[31]_i_3__0 
       (.I0(state_reg[4]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .I3(state_reg[3]),
        .I4(state_reg[0]),
        .I5(state_reg[5]),
        .O(\Q_reg[0]_23 [1]));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \Q[3]_i_1__0 
       (.I0(load_7),
        .I1(\Q_reg[3] ),
        .I2(\Q_reg[2] ),
        .I3(\Q_reg[4] ),
        .I4(\Q[26]_i_4_n_0 ),
        .I5(\Q_reg[2]_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \Q[4]_i_1__0 
       (.I0(load_7),
        .I1(\Q_reg[4] ),
        .I2(\Q_reg[2] ),
        .I3(\Q_reg[5] ),
        .I4(\Q[26]_i_4_n_0 ),
        .I5(\Q_reg[3] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \Q[5]_i_1__0 
       (.I0(\Q[26]_i_4_n_0 ),
        .I1(\Q_reg[4] ),
        .I2(load_7),
        .I3(\Q_reg[5] ),
        .I4(\Q_reg[2] ),
        .I5(\Q_reg[6] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \Q[6]_i_1__0 
       (.I0(load_7),
        .I1(\Q_reg[6] ),
        .I2(\Q_reg[2] ),
        .I3(\Q_reg[7] ),
        .I4(\Q[26]_i_4_n_0 ),
        .I5(\Q_reg[5] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \Q[7]_i_1 
       (.I0(state_reg[4]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .I3(state_reg[3]),
        .I4(state_reg[0]),
        .I5(state_reg[5]),
        .O(\Q_reg[0]_10 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \Q[7]_i_1__0 
       (.I0(state_reg[4]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .I3(state_reg[3]),
        .I4(state_reg[0]),
        .I5(state_reg[5]),
        .O(\Q_reg[0]_13 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \Q[7]_i_1__1 
       (.I0(state_reg[4]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .I3(state_reg[3]),
        .I4(state_reg[0]),
        .I5(state_reg[5]),
        .O(\Q_reg[0]_16 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \Q[7]_i_1__2 
       (.I0(state_reg[4]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .I3(state_reg[3]),
        .I4(state_reg[0]),
        .I5(state_reg[5]),
        .O(\Q_reg[0]_17 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \Q[7]_i_1__3 
       (.I0(state_reg[4]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .I3(state_reg[3]),
        .I4(state_reg[0]),
        .I5(state_reg[5]),
        .O(\Q_reg[0]_19 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \Q[7]_i_1__4 
       (.I0(state_reg[4]),
        .I1(state_reg[1]),
        .I2(state_reg[3]),
        .I3(state_reg[2]),
        .I4(state_reg[0]),
        .I5(state_reg[5]),
        .O(\Q_reg[0]_21 ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \Q[7]_i_1__6 
       (.I0(\Q_reg[2] ),
        .I1(\Q_reg[8] ),
        .I2(load_7),
        .I3(\Q_reg[7] ),
        .I4(\Q[26]_i_4_n_0 ),
        .I5(\Q_reg[6] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \Q[8]_i_1__0 
       (.I0(load_7),
        .I1(\Q_reg[8] ),
        .I2(\Q_reg[2] ),
        .I3(\Q_reg[9] ),
        .I4(\Q[26]_i_4_n_0 ),
        .I5(\Q_reg[7] ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \Q[9]_i_1__0 
       (.I0(\Q[26]_i_4_n_0 ),
        .I1(\Q_reg[8] ),
        .I2(load_7),
        .I3(\Q_reg[9] ),
        .I4(\Q_reg[2] ),
        .I5(\Q_reg[10] ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    ready_OBUF_inst_i_1
       (.I0(state_reg[4]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .I3(state_reg[3]),
        .I4(state_reg[0]),
        .I5(state_reg[5]),
        .O(ready_OBUF));
endmodule

module Fifth_Phase
   (Q,
    \Q_reg[0] ,
    \Q_reg[0]_0 ,
    \Q_reg[7] ,
    \Q_reg[0]_1 ,
    \Q_reg[30] ,
    E,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[4] ,
    \FSM_sequential_state_reg_reg[4]_0 ,
    D,
    \FSM_sequential_state_reg_reg[4]_1 );
  output [7:0]Q;
  output \Q_reg[0] ;
  output \Q_reg[0]_0 ;
  output [7:0]\Q_reg[7] ;
  input \Q_reg[0]_1 ;
  input [7:0]\Q_reg[30] ;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;
  input [0:0]\FSM_sequential_state_reg_reg[4]_0 ;
  input [6:0]D;
  input [0:0]\FSM_sequential_state_reg_reg[4]_1 ;

  wire [6:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire [0:0]\FSM_sequential_state_reg_reg[4]_0 ;
  wire [0:0]\FSM_sequential_state_reg_reg[4]_1 ;
  wire [7:0]Q;
  wire \Q_reg[0] ;
  wire \Q_reg[0]_0 ;
  wire \Q_reg[0]_1 ;
  wire [7:0]\Q_reg[30] ;
  wire [7:0]\Q_reg[7] ;
  wire RExp_n_0;
  wire [7:0]S;
  wire clk_IBUF_BUFG;

  RegisterAdd__parameterized11 Exp_F_ieee
       (.D(S),
        .\FSM_sequential_state_reg_reg[4] (\FSM_sequential_state_reg_reg[4]_1 ),
        .\FSM_sequential_state_reg_reg[4]_0 (\FSM_sequential_state_reg_reg[4] ),
        .\Q_reg[7]_0 (\Q_reg[7] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  RegisterAdd__parameterized9 RExp
       (.D(RExp_n_0),
        .E(E),
        .\FSM_sequential_state_reg_reg[4] (\FSM_sequential_state_reg_reg[4] ),
        .Q(Q),
        .\Q_reg[7]_0 (S),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  RegisterAdd__parameterized10 UExp
       (.D({D,RExp_n_0}),
        .\FSM_sequential_state_reg_reg[4] (\FSM_sequential_state_reg_reg[4]_0 ),
        .\FSM_sequential_state_reg_reg[4]_0 (\FSM_sequential_state_reg_reg[4] ),
        .\Q_reg[0]_0 (\Q_reg[0] ),
        .\Q_reg[0]_1 (\Q_reg[0]_0 ),
        .\Q_reg[0]_2 (\Q_reg[0]_1 ),
        .\Q_reg[30] (\Q_reg[30] ),
        .\Q_reg[7]_0 (S),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
endmodule

module First_Phase
   (\Q_reg[22] ,
    Q,
    D,
    \Q_reg[31] ,
    \Q_reg[0] ,
    Data_S,
    E,
    clk_IBUF_BUFG,
    AR,
    \FSM_sequential_state_reg_reg[4] ,
    add_subt_IBUF,
    \Q_reg[1] ,
    \Q_reg[7] ,
    S,
    \Q_reg[25] ,
    load_0,
    zero_flag,
    \Data_Y[31] ,
    \Data_X[31] ,
    \FSM_sequential_state_reg_reg[4]_0 ,
    \FSM_sequential_state_reg_reg[4]_1 );
  output \Q_reg[22] ;
  output [22:0]Q;
  output [26:0]D;
  output [8:0]\Q_reg[31] ;
  output \Q_reg[0] ;
  output [7:0]Data_S;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;
  input add_subt_IBUF;
  input [1:0]\Q_reg[1] ;
  input \Q_reg[7] ;
  input [0:0]S;
  input [24:0]\Q_reg[25] ;
  input load_0;
  input zero_flag;
  input [31:0]\Data_Y[31] ;
  input [31:0]\Data_X[31] ;
  input [0:0]\FSM_sequential_state_reg_reg[4]_0 ;
  input [1:0]\FSM_sequential_state_reg_reg[4]_1 ;

  wire [0:0]AR;
  wire ASRegister_n_0;
  wire CMPRegister_n_0;
  wire [26:0]D;
  wire DYP_n_0;
  wire DYP_n_1;
  wire DYP_n_10;
  wire DYP_n_11;
  wire DYP_n_12;
  wire DYP_n_13;
  wire DYP_n_14;
  wire DYP_n_15;
  wire DYP_n_16;
  wire DYP_n_17;
  wire DYP_n_18;
  wire DYP_n_19;
  wire DYP_n_2;
  wire DYP_n_20;
  wire DYP_n_21;
  wire DYP_n_22;
  wire DYP_n_23;
  wire DYP_n_24;
  wire DYP_n_25;
  wire DYP_n_26;
  wire DYP_n_27;
  wire DYP_n_28;
  wire DYP_n_29;
  wire DYP_n_3;
  wire DYP_n_30;
  wire DYP_n_31;
  wire DYP_n_4;
  wire DYP_n_5;
  wire DYP_n_6;
  wire DYP_n_7;
  wire DYP_n_8;
  wire DYP_n_9;
  wire DY_Inv_n_0;
  wire Data_B;
  wire [7:0]Data_S;
  wire [31:0]\Data_X[31] ;
  wire [31:0]\Data_Y[31] ;
  wire Dir_M_n_0;
  wire Dir_M_n_1;
  wire Dir_M_n_10;
  wire Dir_M_n_11;
  wire Dir_M_n_12;
  wire Dir_M_n_13;
  wire Dir_M_n_14;
  wire Dir_M_n_15;
  wire Dir_M_n_16;
  wire Dir_M_n_17;
  wire Dir_M_n_18;
  wire Dir_M_n_19;
  wire Dir_M_n_2;
  wire Dir_M_n_20;
  wire Dir_M_n_21;
  wire Dir_M_n_22;
  wire Dir_M_n_23;
  wire Dir_M_n_24;
  wire Dir_M_n_25;
  wire Dir_M_n_26;
  wire Dir_M_n_27;
  wire Dir_M_n_28;
  wire Dir_M_n_29;
  wire Dir_M_n_3;
  wire Dir_M_n_30;
  wire Dir_M_n_31;
  wire Dir_M_n_4;
  wire Dir_M_n_5;
  wire Dir_M_n_6;
  wire Dir_M_n_7;
  wire Dir_M_n_8;
  wire Dir_M_n_9;
  wire Dir_m_n_0;
  wire Dir_m_n_1;
  wire Dir_m_n_10;
  wire Dir_m_n_11;
  wire Dir_m_n_12;
  wire Dir_m_n_13;
  wire Dir_m_n_14;
  wire Dir_m_n_15;
  wire Dir_m_n_16;
  wire Dir_m_n_17;
  wire Dir_m_n_18;
  wire Dir_m_n_19;
  wire Dir_m_n_2;
  wire Dir_m_n_20;
  wire Dir_m_n_21;
  wire Dir_m_n_22;
  wire Dir_m_n_23;
  wire Dir_m_n_24;
  wire Dir_m_n_25;
  wire Dir_m_n_26;
  wire Dir_m_n_27;
  wire Dir_m_n_28;
  wire Dir_m_n_29;
  wire Dir_m_n_3;
  wire Dir_m_n_30;
  wire Dir_m_n_31;
  wire Dir_m_n_4;
  wire Dir_m_n_5;
  wire Dir_m_n_6;
  wire Dir_m_n_7;
  wire Dir_m_n_8;
  wire Dir_m_n_9;
  wire DmC_n_25;
  wire [0:0]E;
  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire [0:0]\FSM_sequential_state_reg_reg[4]_0 ;
  wire [1:0]\FSM_sequential_state_reg_reg[4]_1 ;
  wire [22:0]Q;
  wire [31:31]QX;
  wire [31:31]QY;
  wire \Q_reg[0] ;
  wire [1:0]\Q_reg[1] ;
  wire \Q_reg[22] ;
  wire [24:0]\Q_reg[25] ;
  wire [8:0]\Q_reg[31] ;
  wire \Q_reg[7] ;
  wire [0:0]S;
  wire XRegister_n_10;
  wire XRegister_n_11;
  wire XRegister_n_12;
  wire XRegister_n_13;
  wire XRegister_n_14;
  wire XRegister_n_15;
  wire XRegister_n_16;
  wire XRegister_n_17;
  wire XRegister_n_18;
  wire XRegister_n_19;
  wire XRegister_n_2;
  wire XRegister_n_20;
  wire XRegister_n_21;
  wire XRegister_n_22;
  wire XRegister_n_23;
  wire XRegister_n_24;
  wire XRegister_n_25;
  wire XRegister_n_26;
  wire XRegister_n_27;
  wire XRegister_n_28;
  wire XRegister_n_29;
  wire XRegister_n_3;
  wire XRegister_n_30;
  wire XRegister_n_31;
  wire XRegister_n_32;
  wire XRegister_n_33;
  wire XRegister_n_4;
  wire XRegister_n_5;
  wire XRegister_n_6;
  wire XRegister_n_7;
  wire XRegister_n_8;
  wire XRegister_n_9;
  wire YRegister_n_0;
  wire YRegister_n_10;
  wire YRegister_n_11;
  wire YRegister_n_12;
  wire YRegister_n_13;
  wire YRegister_n_14;
  wire YRegister_n_15;
  wire YRegister_n_16;
  wire YRegister_n_17;
  wire YRegister_n_18;
  wire YRegister_n_19;
  wire YRegister_n_2;
  wire YRegister_n_20;
  wire YRegister_n_21;
  wire YRegister_n_22;
  wire YRegister_n_23;
  wire YRegister_n_24;
  wire YRegister_n_25;
  wire YRegister_n_26;
  wire YRegister_n_27;
  wire YRegister_n_28;
  wire YRegister_n_29;
  wire YRegister_n_3;
  wire YRegister_n_30;
  wire YRegister_n_31;
  wire YRegister_n_32;
  wire YRegister_n_33;
  wire YRegister_n_4;
  wire YRegister_n_5;
  wire YRegister_n_6;
  wire YRegister_n_7;
  wire YRegister_n_8;
  wire YRegister_n_9;
  wire add_subt_IBUF;
  wire clk_IBUF_BUFG;
  wire load_0;
  wire zero_flag;

  RegisterAdd_6 ASRegister
       (.AR(AR),
        .\FSM_sequential_state_reg_reg[4] (\FSM_sequential_state_reg_reg[4] ),
        .\Q_reg[31] (ASRegister_n_0),
        .add_subt_IBUF(add_subt_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  RegisterAdd_7 CMPRegister
       (.AR(AR),
        .D(XRegister_n_33),
        .E(E),
        .\Q_reg[0]_0 (CMPRegister_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  RegisterAdd__parameterized3 DMC
       (.D(D),
        .\FSM_sequential_state_reg_reg[4] (\FSM_sequential_state_reg_reg[4]_0 ),
        .\FSM_sequential_state_reg_reg[4]_0 (\FSM_sequential_state_reg_reg[4]_1 ),
        .Q(Data_B),
        .\Q_reg[25]_0 (DmC_n_25),
        .\Q_reg[25]_1 (\Q_reg[25] ),
        .\Q_reg[31]_0 (\Q_reg[31] ),
        .\Q_reg[31]_1 ({Dir_M_n_0,Dir_M_n_1,Dir_M_n_2,Dir_M_n_3,Dir_M_n_4,Dir_M_n_5,Dir_M_n_6,Dir_M_n_7,Dir_M_n_8,Dir_M_n_9,Dir_M_n_10,Dir_M_n_11,Dir_M_n_12,Dir_M_n_13,Dir_M_n_14,Dir_M_n_15,Dir_M_n_16,Dir_M_n_17,Dir_M_n_18,Dir_M_n_19,Dir_M_n_20,Dir_M_n_21,Dir_M_n_22,Dir_M_n_23,Dir_M_n_24,Dir_M_n_25,Dir_M_n_26,Dir_M_n_27,Dir_M_n_28,Dir_M_n_29,Dir_M_n_30,Dir_M_n_31}),
        .S(S),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  RegisterAdd__parameterized2 DYP
       (.AR(AR),
        .D({DY_Inv_n_0,YRegister_n_2,YRegister_n_3,YRegister_n_4,YRegister_n_5,YRegister_n_6,YRegister_n_7,YRegister_n_8,YRegister_n_9,YRegister_n_10,YRegister_n_11,YRegister_n_12,YRegister_n_13,YRegister_n_14,YRegister_n_15,YRegister_n_16,YRegister_n_17,YRegister_n_18,YRegister_n_19,YRegister_n_20,YRegister_n_21,YRegister_n_22,YRegister_n_23,YRegister_n_24,YRegister_n_25,YRegister_n_26,YRegister_n_27,YRegister_n_28,YRegister_n_29,YRegister_n_30,YRegister_n_31,YRegister_n_32}),
        .E(E),
        .Q({DYP_n_0,DYP_n_1,DYP_n_2,DYP_n_3,DYP_n_4,DYP_n_5,DYP_n_6,DYP_n_7,DYP_n_8,DYP_n_9,DYP_n_10,DYP_n_11,DYP_n_12,DYP_n_13,DYP_n_14,DYP_n_15,DYP_n_16,DYP_n_17,DYP_n_18,DYP_n_19,DYP_n_20,DYP_n_21,DYP_n_22,DYP_n_23,DYP_n_24,DYP_n_25,DYP_n_26,DYP_n_27,DYP_n_28,DYP_n_29,DYP_n_30,DYP_n_31}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  Invert_Sign DY_Inv
       (.D(DY_Inv_n_0),
        .Q(QY),
        .\Q_reg[0] (ASRegister_n_0));
  Multiplexer_AC_8 Dir_M
       (.Q({DYP_n_0,DYP_n_1,DYP_n_2,DYP_n_3,DYP_n_4,DYP_n_5,DYP_n_6,DYP_n_7,DYP_n_8,DYP_n_9,DYP_n_10,DYP_n_11,DYP_n_12,DYP_n_13,DYP_n_14,DYP_n_15,DYP_n_16,DYP_n_17,DYP_n_18,DYP_n_19,DYP_n_20,DYP_n_21,DYP_n_22,DYP_n_23,DYP_n_24,DYP_n_25,DYP_n_26,DYP_n_27,DYP_n_28,DYP_n_29,DYP_n_30,DYP_n_31}),
        .\Q_reg[0] (CMPRegister_n_0),
        .\Q_reg[31] ({Dir_M_n_0,Dir_M_n_1,Dir_M_n_2,Dir_M_n_3,Dir_M_n_4,Dir_M_n_5,Dir_M_n_6,Dir_M_n_7,Dir_M_n_8,Dir_M_n_9,Dir_M_n_10,Dir_M_n_11,Dir_M_n_12,Dir_M_n_13,Dir_M_n_14,Dir_M_n_15,Dir_M_n_16,Dir_M_n_17,Dir_M_n_18,Dir_M_n_19,Dir_M_n_20,Dir_M_n_21,Dir_M_n_22,Dir_M_n_23,Dir_M_n_24,Dir_M_n_25,Dir_M_n_26,Dir_M_n_27,Dir_M_n_28,Dir_M_n_29,Dir_M_n_30,Dir_M_n_31}),
        .\Q_reg[31]_0 ({QX,XRegister_n_2,XRegister_n_3,XRegister_n_4,XRegister_n_5,XRegister_n_6,XRegister_n_7,XRegister_n_8,XRegister_n_9,XRegister_n_10,XRegister_n_11,XRegister_n_12,XRegister_n_13,XRegister_n_14,XRegister_n_15,XRegister_n_16,XRegister_n_17,XRegister_n_18,XRegister_n_19,XRegister_n_20,XRegister_n_21,XRegister_n_22,XRegister_n_23,XRegister_n_24,XRegister_n_25,XRegister_n_26,XRegister_n_27,XRegister_n_28,XRegister_n_29,XRegister_n_30,XRegister_n_31,XRegister_n_32}));
  Multiplexer_AC_9 Dir_m
       (.D({Dir_m_n_0,Dir_m_n_1,Dir_m_n_2,Dir_m_n_3,Dir_m_n_4,Dir_m_n_5,Dir_m_n_6,Dir_m_n_7,Dir_m_n_8,Dir_m_n_9,Dir_m_n_10,Dir_m_n_11,Dir_m_n_12,Dir_m_n_13,Dir_m_n_14,Dir_m_n_15,Dir_m_n_16,Dir_m_n_17,Dir_m_n_18,Dir_m_n_19,Dir_m_n_20,Dir_m_n_21,Dir_m_n_22,Dir_m_n_23,Dir_m_n_24,Dir_m_n_25,Dir_m_n_26,Dir_m_n_27,Dir_m_n_28,Dir_m_n_29,Dir_m_n_30,Dir_m_n_31}),
        .Q({DYP_n_0,DYP_n_1,DYP_n_2,DYP_n_3,DYP_n_4,DYP_n_5,DYP_n_6,DYP_n_7,DYP_n_8,DYP_n_9,DYP_n_10,DYP_n_11,DYP_n_12,DYP_n_13,DYP_n_14,DYP_n_15,DYP_n_16,DYP_n_17,DYP_n_18,DYP_n_19,DYP_n_20,DYP_n_21,DYP_n_22,DYP_n_23,DYP_n_24,DYP_n_25,DYP_n_26,DYP_n_27,DYP_n_28,DYP_n_29,DYP_n_30,DYP_n_31}),
        .\Q_reg[0] (CMPRegister_n_0),
        .\Q_reg[31] ({QX,XRegister_n_2,XRegister_n_3,XRegister_n_4,XRegister_n_5,XRegister_n_6,XRegister_n_7,XRegister_n_8,XRegister_n_9,XRegister_n_10,XRegister_n_11,XRegister_n_12,XRegister_n_13,XRegister_n_14,XRegister_n_15,XRegister_n_16,XRegister_n_17,XRegister_n_18,XRegister_n_19,XRegister_n_20,XRegister_n_21,XRegister_n_22,XRegister_n_23,XRegister_n_24,XRegister_n_25,XRegister_n_26,XRegister_n_27,XRegister_n_28,XRegister_n_29,XRegister_n_30,XRegister_n_31,XRegister_n_32}));
  RegisterAdd__parameterized4 DmC
       (.D({Dir_m_n_0,Dir_m_n_1,Dir_m_n_2,Dir_m_n_3,Dir_m_n_4,Dir_m_n_5,Dir_m_n_6,Dir_m_n_7,Dir_m_n_8,Dir_m_n_9,Dir_m_n_10,Dir_m_n_11,Dir_m_n_12,Dir_m_n_13,Dir_m_n_14,Dir_m_n_15,Dir_m_n_16,Dir_m_n_17,Dir_m_n_18,Dir_m_n_19,Dir_m_n_20,Dir_m_n_21,Dir_m_n_22,Dir_m_n_23,Dir_m_n_24,Dir_m_n_25,Dir_m_n_26,Dir_m_n_27,Dir_m_n_28,Dir_m_n_29,Dir_m_n_30,Dir_m_n_31}),
        .Data_S(Data_S),
        .\FSM_sequential_state_reg_reg[4] (\FSM_sequential_state_reg_reg[4]_0 ),
        .\FSM_sequential_state_reg_reg[4]_0 (\FSM_sequential_state_reg_reg[4]_1 ),
        .Q({Data_B,Q}),
        .\Q_reg[1]_0 (\Q_reg[1] ),
        .\Q_reg[22]_0 (\Q_reg[22] ),
        .\Q_reg[25]_0 (\Q_reg[25] [24]),
        .\Q_reg[26]_0 (DmC_n_25),
        .\Q_reg[31]_0 (\Q_reg[31] ),
        .\Q_reg[7]_0 (\Q_reg[7] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  RegisterAdd__parameterized0 XRegister
       (.AR(AR),
        .D(XRegister_n_33),
        .\Data_X[31] (\Data_X[31] ),
        .\FSM_sequential_state_reg_reg[4] (\FSM_sequential_state_reg_reg[4] ),
        .Q({QY,YRegister_n_2,YRegister_n_3,YRegister_n_4,YRegister_n_5,YRegister_n_6,YRegister_n_7,YRegister_n_8,YRegister_n_9,YRegister_n_10,YRegister_n_11,YRegister_n_12,YRegister_n_13,YRegister_n_14,YRegister_n_15,YRegister_n_16,YRegister_n_17,YRegister_n_18,YRegister_n_19,YRegister_n_20,YRegister_n_21,YRegister_n_22,YRegister_n_23,YRegister_n_24,YRegister_n_25,YRegister_n_26,YRegister_n_27,YRegister_n_28,YRegister_n_29,YRegister_n_30,YRegister_n_31,YRegister_n_32}),
        .\Q_reg[0]_0 (\Q_reg[0] ),
        .\Q_reg[0]_1 ({QX,XRegister_n_2,XRegister_n_3,XRegister_n_4,XRegister_n_5,XRegister_n_6,XRegister_n_7,XRegister_n_8,XRegister_n_9,XRegister_n_10,XRegister_n_11,XRegister_n_12,XRegister_n_13,XRegister_n_14,XRegister_n_15,XRegister_n_16,XRegister_n_17,XRegister_n_18,XRegister_n_19,XRegister_n_20,XRegister_n_21,XRegister_n_22,XRegister_n_23,XRegister_n_24,XRegister_n_25,XRegister_n_26,XRegister_n_27,XRegister_n_28,XRegister_n_29,XRegister_n_30,XRegister_n_31,XRegister_n_32}),
        .\Q_reg[30]_0 (YRegister_n_0),
        .S(YRegister_n_33),
        .add_subt_IBUF(add_subt_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .load_0(load_0),
        .zero_flag(zero_flag));
  RegisterAdd__parameterized1 YRegister
       (.AR(AR),
        .\Data_Y[31] (\Data_Y[31] ),
        .\FSM_sequential_state_reg_reg[4] (\FSM_sequential_state_reg_reg[4] ),
        .Q({QY,YRegister_n_2,YRegister_n_3,YRegister_n_4,YRegister_n_5,YRegister_n_6,YRegister_n_7,YRegister_n_8,YRegister_n_9,YRegister_n_10,YRegister_n_11,YRegister_n_12,YRegister_n_13,YRegister_n_14,YRegister_n_15,YRegister_n_16,YRegister_n_17,YRegister_n_18,YRegister_n_19,YRegister_n_20,YRegister_n_21,YRegister_n_22,YRegister_n_23,YRegister_n_24,YRegister_n_25,YRegister_n_26,YRegister_n_27,YRegister_n_28,YRegister_n_29,YRegister_n_30,YRegister_n_31,YRegister_n_32}),
        .\Q_reg[0]_0 (YRegister_n_0),
        .\Q_reg[30]_0 (XRegister_n_2),
        .S(YRegister_n_33),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
endmodule

module Fourth_Phase
   (p_0_in,
    \Q_reg[0] ,
    \Q_reg[24] ,
    \Q_reg[26] ,
    \Q_reg[25] ,
    \Q_reg[23] ,
    \Q_reg[22] ,
    \Q_reg[21] ,
    \Q_reg[20] ,
    \Q_reg[19] ,
    \Q_reg[18] ,
    \Q_reg[17] ,
    \Q_reg[16] ,
    \Q_reg[15] ,
    \Q_reg[14] ,
    \Q_reg[13] ,
    \Q_reg[12] ,
    \Q_reg[11] ,
    \Q_reg[10] ,
    \Q_reg[9] ,
    \Q_reg[8] ,
    \Q_reg[7] ,
    \Q_reg[6] ,
    \Q_reg[5] ,
    \Q_reg[4] ,
    \Q_reg[3] ,
    \Q_reg[2] ,
    \Q_reg[2]_0 ,
    S,
    \Q_reg[23]_0 ,
    Q,
    r_mode_IBUF,
    D,
    \FSM_sequential_state_reg_reg[5] ,
    load_7,
    \Q_reg[0]_0 ,
    \Q_reg[26]_0 ,
    add_subt_5_P,
    \Q_reg[0]_1 ,
    E,
    clk_IBUF_BUFG,
    AR,
    \FSM_sequential_state_reg_reg[4] );
  output p_0_in;
  output \Q_reg[0] ;
  output \Q_reg[24] ;
  output [1:0]\Q_reg[26] ;
  output \Q_reg[25] ;
  output \Q_reg[23] ;
  output \Q_reg[22] ;
  output \Q_reg[21] ;
  output \Q_reg[20] ;
  output \Q_reg[19] ;
  output \Q_reg[18] ;
  output \Q_reg[17] ;
  output \Q_reg[16] ;
  output \Q_reg[15] ;
  output \Q_reg[14] ;
  output \Q_reg[13] ;
  output \Q_reg[12] ;
  output \Q_reg[11] ;
  output \Q_reg[10] ;
  output \Q_reg[9] ;
  output \Q_reg[8] ;
  output \Q_reg[7] ;
  output \Q_reg[6] ;
  output \Q_reg[5] ;
  output \Q_reg[4] ;
  output \Q_reg[3] ;
  output \Q_reg[2] ;
  output \Q_reg[2]_0 ;
  output [0:0]S;
  output [23:0]\Q_reg[23]_0 ;
  input [0:0]Q;
  input [1:0]r_mode_IBUF;
  input [24:0]D;
  input \FSM_sequential_state_reg_reg[5] ;
  input load_7;
  input \Q_reg[0]_0 ;
  input [26:0]\Q_reg[26]_0 ;
  input add_subt_5_P;
  input [0:0]\Q_reg[0]_1 ;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input [1:0]AR;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;

  wire [1:0]AR;
  wire [24:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire \FSM_sequential_state_reg_reg[5] ;
  wire [0:0]Q;
  wire \Q_reg[0] ;
  wire \Q_reg[0]_0 ;
  wire [0:0]\Q_reg[0]_1 ;
  wire \Q_reg[10] ;
  wire \Q_reg[11] ;
  wire \Q_reg[12] ;
  wire \Q_reg[13] ;
  wire \Q_reg[14] ;
  wire \Q_reg[15] ;
  wire \Q_reg[16] ;
  wire \Q_reg[17] ;
  wire \Q_reg[18] ;
  wire \Q_reg[19] ;
  wire \Q_reg[20] ;
  wire \Q_reg[21] ;
  wire \Q_reg[22] ;
  wire \Q_reg[23] ;
  wire [23:0]\Q_reg[23]_0 ;
  wire \Q_reg[24] ;
  wire \Q_reg[25] ;
  wire [1:0]\Q_reg[26] ;
  wire [26:0]\Q_reg[26]_0 ;
  wire \Q_reg[2] ;
  wire \Q_reg[2]_0 ;
  wire \Q_reg[3] ;
  wire \Q_reg[4] ;
  wire \Q_reg[5] ;
  wire \Q_reg[6] ;
  wire \Q_reg[7] ;
  wire \Q_reg[8] ;
  wire \Q_reg[9] ;
  wire [0:0]S;
  wire SgfShift_n_10;
  wire SgfShift_n_11;
  wire SgfShift_n_12;
  wire SgfShift_n_13;
  wire SgfShift_n_14;
  wire SgfShift_n_15;
  wire SgfShift_n_16;
  wire SgfShift_n_17;
  wire SgfShift_n_18;
  wire SgfShift_n_19;
  wire SgfShift_n_20;
  wire SgfShift_n_21;
  wire SgfShift_n_22;
  wire SgfShift_n_23;
  wire SgfShift_n_24;
  wire SgfShift_n_25;
  wire SgfShift_n_26;
  wire SgfShift_n_27;
  wire SgfShift_n_3;
  wire SgfShift_n_4;
  wire SgfShift_n_5;
  wire SgfShift_n_6;
  wire SgfShift_n_7;
  wire SgfShift_n_8;
  wire SgfShift_n_9;
  wire add_subt_5_P;
  wire clk_IBUF_BUFG;
  wire load_7;
  wire p_0_in;
  wire [1:0]r_mode_IBUF;

  RegisterAdd__parameterized8 SgfRegister_F
       (.AR(AR),
        .\FSM_sequential_state_reg_reg[4] (\FSM_sequential_state_reg_reg[4] ),
        .Q(Q),
        .\Q_reg[0]_0 (\Q_reg[0]_1 ),
        .\Q_reg[23]_0 (\Q_reg[23]_0 ),
        .\Q_reg[25]_0 ({\Q_reg[26] [0],SgfShift_n_3,SgfShift_n_4,SgfShift_n_5,SgfShift_n_6,SgfShift_n_7,SgfShift_n_8,SgfShift_n_9,SgfShift_n_10,SgfShift_n_11,SgfShift_n_12,SgfShift_n_13,SgfShift_n_14,SgfShift_n_15,SgfShift_n_16,SgfShift_n_17,SgfShift_n_18,SgfShift_n_19,SgfShift_n_20,SgfShift_n_21,SgfShift_n_22,SgfShift_n_23,SgfShift_n_24,SgfShift_n_25,SgfShift_n_26,SgfShift_n_27}),
        .S(S),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .p_0_in(p_0_in),
        .r_mode_IBUF(r_mode_IBUF));
  Universal_Shift_Register SgfShift
       (.AR(AR),
        .D(D),
        .E(E),
        .\FSM_sequential_state_reg_reg[5] (\FSM_sequential_state_reg_reg[5] ),
        .Q({\Q_reg[26] ,SgfShift_n_3,SgfShift_n_4,SgfShift_n_5,SgfShift_n_6,SgfShift_n_7,SgfShift_n_8,SgfShift_n_9,SgfShift_n_10,SgfShift_n_11,SgfShift_n_12,SgfShift_n_13,SgfShift_n_14,SgfShift_n_15,SgfShift_n_16,SgfShift_n_17,SgfShift_n_18,SgfShift_n_19,SgfShift_n_20,SgfShift_n_21,SgfShift_n_22,SgfShift_n_23,SgfShift_n_24,SgfShift_n_25,SgfShift_n_26,SgfShift_n_27}),
        .\Q_reg[0]_0 (\Q_reg[0] ),
        .\Q_reg[0]_1 (\Q_reg[0]_0 ),
        .\Q_reg[10]_0 (\Q_reg[10] ),
        .\Q_reg[11]_0 (\Q_reg[11] ),
        .\Q_reg[12]_0 (\Q_reg[12] ),
        .\Q_reg[13]_0 (\Q_reg[13] ),
        .\Q_reg[14]_0 (\Q_reg[14] ),
        .\Q_reg[15]_0 (\Q_reg[15] ),
        .\Q_reg[16]_0 (\Q_reg[16] ),
        .\Q_reg[17]_0 (\Q_reg[17] ),
        .\Q_reg[18]_0 (\Q_reg[18] ),
        .\Q_reg[19]_0 (\Q_reg[19] ),
        .\Q_reg[20]_0 (\Q_reg[20] ),
        .\Q_reg[21]_0 (\Q_reg[21] ),
        .\Q_reg[22]_0 (\Q_reg[22] ),
        .\Q_reg[23]_0 (\Q_reg[23] ),
        .\Q_reg[24]_0 (\Q_reg[24] ),
        .\Q_reg[25]_0 (\Q_reg[25] ),
        .\Q_reg[26]_0 (\Q_reg[26]_0 ),
        .\Q_reg[2]_0 (\Q_reg[2] ),
        .\Q_reg[2]_1 (\Q_reg[2]_0 ),
        .\Q_reg[3]_0 (\Q_reg[3] ),
        .\Q_reg[4]_0 (\Q_reg[4] ),
        .\Q_reg[5]_0 (\Q_reg[5] ),
        .\Q_reg[6]_0 (\Q_reg[6] ),
        .\Q_reg[7]_0 (\Q_reg[7] ),
        .\Q_reg[8]_0 (\Q_reg[8] ),
        .\Q_reg[9]_0 (\Q_reg[9] ),
        .add_subt_5_P(add_subt_5_P),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .load_7(load_7));
endmodule

module Invert_Sign
   (D,
    Q,
    \Q_reg[0] );
  output [0:0]D;
  input [0:0]Q;
  input \Q_reg[0] ;

  wire [0:0]D;
  wire [0:0]Q;
  wire \Q_reg[0] ;

  LUT2 #(
    .INIT(4'h6)) 
    \Q[31]_i_1 
       (.I0(Q),
        .I1(\Q_reg[0] ),
        .O(D));
endmodule

module Multiplexer_AC
   (D,
    Q,
    \Q_reg[0] ,
    \Q_reg[0]_0 ,
    \Q_reg[31] );
  output [8:0]D;
  input [8:0]Q;
  input \Q_reg[0] ;
  input \Q_reg[0]_0 ;
  input [0:0]\Q_reg[31] ;

  wire [8:0]D;
  wire [8:0]Q;
  wire \Q_reg[0] ;
  wire \Q_reg[0]_0 ;
  wire [0:0]\Q_reg[31] ;

  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[23]_i_1 
       (.I0(Q[0]),
        .I1(\Q_reg[0] ),
        .I2(\Q_reg[0]_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[24]_i_1 
       (.I0(Q[1]),
        .I1(\Q_reg[0] ),
        .I2(\Q_reg[0]_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[25]_i_1 
       (.I0(Q[2]),
        .I1(\Q_reg[0] ),
        .I2(\Q_reg[0]_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[26]_i_1 
       (.I0(Q[3]),
        .I1(\Q_reg[0] ),
        .I2(\Q_reg[0]_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[27]_i_1 
       (.I0(Q[4]),
        .I1(\Q_reg[0] ),
        .I2(\Q_reg[0]_0 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[28]_i_1 
       (.I0(Q[5]),
        .I1(\Q_reg[0] ),
        .I2(\Q_reg[0]_0 ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[29]_i_1 
       (.I0(Q[6]),
        .I1(\Q_reg[0] ),
        .I2(\Q_reg[0]_0 ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[30]_i_1 
       (.I0(Q[7]),
        .I1(\Q_reg[0] ),
        .I2(\Q_reg[0]_0 ),
        .O(D[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[31]_i_2 
       (.I0(Q[8]),
        .I1(\Q_reg[31] ),
        .I2(\Q_reg[0]_0 ),
        .O(D[8]));
endmodule

(* ORIG_REF_NAME = "Multiplexer_AC" *) 
module Multiplexer_AC_8
   (\Q_reg[31] ,
    Q,
    \Q_reg[31]_0 ,
    \Q_reg[0] );
  output [31:0]\Q_reg[31] ;
  input [31:0]Q;
  input [31:0]\Q_reg[31]_0 ;
  input \Q_reg[0] ;

  wire [31:0]Q;
  wire \Q_reg[0] ;
  wire [31:0]\Q_reg[31] ;
  wire [31:0]\Q_reg[31]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[0]_i_1 
       (.I0(Q[0]),
        .I1(\Q_reg[31]_0 [0]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[10]_i_1 
       (.I0(Q[10]),
        .I1(\Q_reg[31]_0 [10]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [10]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[11]_i_1 
       (.I0(Q[11]),
        .I1(\Q_reg[31]_0 [11]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [11]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[12]_i_1 
       (.I0(Q[12]),
        .I1(\Q_reg[31]_0 [12]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [12]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[13]_i_1 
       (.I0(Q[13]),
        .I1(\Q_reg[31]_0 [13]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [13]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[14]_i_1 
       (.I0(Q[14]),
        .I1(\Q_reg[31]_0 [14]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [14]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[15]_i_1 
       (.I0(Q[15]),
        .I1(\Q_reg[31]_0 [15]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [15]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[16]_i_1 
       (.I0(Q[16]),
        .I1(\Q_reg[31]_0 [16]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [16]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[17]_i_1 
       (.I0(Q[17]),
        .I1(\Q_reg[31]_0 [17]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [17]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[18]_i_1 
       (.I0(Q[18]),
        .I1(\Q_reg[31]_0 [18]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [18]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[19]_i_1 
       (.I0(Q[19]),
        .I1(\Q_reg[31]_0 [19]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [19]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[1]_i_1 
       (.I0(Q[1]),
        .I1(\Q_reg[31]_0 [1]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[20]_i_1 
       (.I0(Q[20]),
        .I1(\Q_reg[31]_0 [20]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [20]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[21]_i_1 
       (.I0(Q[21]),
        .I1(\Q_reg[31]_0 [21]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [21]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[22]_i_1 
       (.I0(Q[22]),
        .I1(\Q_reg[31]_0 [22]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [22]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[23]_i_1 
       (.I0(Q[23]),
        .I1(\Q_reg[31]_0 [23]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [23]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[24]_i_1 
       (.I0(Q[24]),
        .I1(\Q_reg[31]_0 [24]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [24]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[25]_i_1 
       (.I0(Q[25]),
        .I1(\Q_reg[31]_0 [25]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [25]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[26]_i_1 
       (.I0(Q[26]),
        .I1(\Q_reg[31]_0 [26]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [26]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[27]_i_1 
       (.I0(Q[27]),
        .I1(\Q_reg[31]_0 [27]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [27]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[28]_i_1 
       (.I0(Q[28]),
        .I1(\Q_reg[31]_0 [28]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [28]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[29]_i_1 
       (.I0(Q[29]),
        .I1(\Q_reg[31]_0 [29]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [29]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[2]_i_1 
       (.I0(Q[2]),
        .I1(\Q_reg[31]_0 [2]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [2]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[30]_i_1 
       (.I0(Q[30]),
        .I1(\Q_reg[31]_0 [30]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [30]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[31]_i_2 
       (.I0(Q[31]),
        .I1(\Q_reg[31]_0 [31]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [31]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[3]_i_1 
       (.I0(Q[3]),
        .I1(\Q_reg[31]_0 [3]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[4]_i_1 
       (.I0(Q[4]),
        .I1(\Q_reg[31]_0 [4]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[5]_i_1 
       (.I0(Q[5]),
        .I1(\Q_reg[31]_0 [5]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [5]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[6]_i_1 
       (.I0(Q[6]),
        .I1(\Q_reg[31]_0 [6]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [6]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[7]_i_1 
       (.I0(Q[7]),
        .I1(\Q_reg[31]_0 [7]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [7]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[8]_i_1 
       (.I0(Q[8]),
        .I1(\Q_reg[31]_0 [8]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [8]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \Q[9]_i_1 
       (.I0(Q[9]),
        .I1(\Q_reg[31]_0 [9]),
        .I2(\Q_reg[0] ),
        .O(\Q_reg[31] [9]));
endmodule

(* ORIG_REF_NAME = "Multiplexer_AC" *) 
module Multiplexer_AC_9
   (D,
    Q,
    \Q_reg[31] ,
    \Q_reg[0] );
  output [31:0]D;
  input [31:0]Q;
  input [31:0]\Q_reg[31] ;
  input \Q_reg[0] ;

  wire [31:0]D;
  wire [31:0]Q;
  wire \Q_reg[0] ;
  wire [31:0]\Q_reg[31] ;

  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[0]_i_1 
       (.I0(Q[0]),
        .I1(\Q_reg[31] [0]),
        .I2(\Q_reg[0] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[10]_i_1 
       (.I0(Q[10]),
        .I1(\Q_reg[31] [10]),
        .I2(\Q_reg[0] ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[11]_i_1 
       (.I0(Q[11]),
        .I1(\Q_reg[31] [11]),
        .I2(\Q_reg[0] ),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[12]_i_1 
       (.I0(Q[12]),
        .I1(\Q_reg[31] [12]),
        .I2(\Q_reg[0] ),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[13]_i_1 
       (.I0(Q[13]),
        .I1(\Q_reg[31] [13]),
        .I2(\Q_reg[0] ),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[14]_i_1 
       (.I0(Q[14]),
        .I1(\Q_reg[31] [14]),
        .I2(\Q_reg[0] ),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[15]_i_1 
       (.I0(Q[15]),
        .I1(\Q_reg[31] [15]),
        .I2(\Q_reg[0] ),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[16]_i_1 
       (.I0(Q[16]),
        .I1(\Q_reg[31] [16]),
        .I2(\Q_reg[0] ),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[17]_i_1 
       (.I0(Q[17]),
        .I1(\Q_reg[31] [17]),
        .I2(\Q_reg[0] ),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[18]_i_1 
       (.I0(Q[18]),
        .I1(\Q_reg[31] [18]),
        .I2(\Q_reg[0] ),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[19]_i_1 
       (.I0(Q[19]),
        .I1(\Q_reg[31] [19]),
        .I2(\Q_reg[0] ),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[1]_i_1 
       (.I0(Q[1]),
        .I1(\Q_reg[31] [1]),
        .I2(\Q_reg[0] ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[20]_i_1 
       (.I0(Q[20]),
        .I1(\Q_reg[31] [20]),
        .I2(\Q_reg[0] ),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[21]_i_1 
       (.I0(Q[21]),
        .I1(\Q_reg[31] [21]),
        .I2(\Q_reg[0] ),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[22]_i_1 
       (.I0(Q[22]),
        .I1(\Q_reg[31] [22]),
        .I2(\Q_reg[0] ),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[23]_i_1 
       (.I0(Q[23]),
        .I1(\Q_reg[31] [23]),
        .I2(\Q_reg[0] ),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[24]_i_1 
       (.I0(Q[24]),
        .I1(\Q_reg[31] [24]),
        .I2(\Q_reg[0] ),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[25]_i_1 
       (.I0(Q[25]),
        .I1(\Q_reg[31] [25]),
        .I2(\Q_reg[0] ),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[26]_i_1 
       (.I0(Q[26]),
        .I1(\Q_reg[31] [26]),
        .I2(\Q_reg[0] ),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[27]_i_1 
       (.I0(Q[27]),
        .I1(\Q_reg[31] [27]),
        .I2(\Q_reg[0] ),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[28]_i_1 
       (.I0(Q[28]),
        .I1(\Q_reg[31] [28]),
        .I2(\Q_reg[0] ),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[29]_i_1 
       (.I0(Q[29]),
        .I1(\Q_reg[31] [29]),
        .I2(\Q_reg[0] ),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[2]_i_1 
       (.I0(Q[2]),
        .I1(\Q_reg[31] [2]),
        .I2(\Q_reg[0] ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[30]_i_1 
       (.I0(Q[30]),
        .I1(\Q_reg[31] [30]),
        .I2(\Q_reg[0] ),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[31]_i_1 
       (.I0(Q[31]),
        .I1(\Q_reg[31] [31]),
        .I2(\Q_reg[0] ),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[3]_i_1 
       (.I0(Q[3]),
        .I1(\Q_reg[31] [3]),
        .I2(\Q_reg[0] ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[4]_i_1 
       (.I0(Q[4]),
        .I1(\Q_reg[31] [4]),
        .I2(\Q_reg[0] ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[5]_i_1 
       (.I0(Q[5]),
        .I1(\Q_reg[31] [5]),
        .I2(\Q_reg[0] ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[6]_i_1 
       (.I0(Q[6]),
        .I1(\Q_reg[31] [6]),
        .I2(\Q_reg[0] ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[7]_i_1 
       (.I0(Q[7]),
        .I1(\Q_reg[31] [7]),
        .I2(\Q_reg[0] ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[8]_i_1 
       (.I0(Q[8]),
        .I1(\Q_reg[31] [8]),
        .I2(\Q_reg[0] ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[9]_i_1 
       (.I0(Q[9]),
        .I1(\Q_reg[31] [9]),
        .I2(\Q_reg[0] ),
        .O(D[9]));
endmodule

(* ORIG_REF_NAME = "Multiplexer_AC" *) 
module Multiplexer_AC__parameterized4
   (D,
    \Q_reg[24] );
  output [22:0]D;
  input [24:0]\Q_reg[24] ;

  wire [22:0]D;
  wire [24:0]\Q_reg[24] ;

  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[0]_i_1 
       (.I0(\Q_reg[24] [1]),
        .I1(\Q_reg[24] [0]),
        .I2(\Q_reg[24] [24]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[10]_i_1 
       (.I0(\Q_reg[24] [11]),
        .I1(\Q_reg[24] [10]),
        .I2(\Q_reg[24] [24]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[11]_i_1 
       (.I0(\Q_reg[24] [12]),
        .I1(\Q_reg[24] [11]),
        .I2(\Q_reg[24] [24]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[12]_i_1 
       (.I0(\Q_reg[24] [13]),
        .I1(\Q_reg[24] [12]),
        .I2(\Q_reg[24] [24]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[13]_i_1 
       (.I0(\Q_reg[24] [14]),
        .I1(\Q_reg[24] [13]),
        .I2(\Q_reg[24] [24]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[14]_i_1 
       (.I0(\Q_reg[24] [15]),
        .I1(\Q_reg[24] [14]),
        .I2(\Q_reg[24] [24]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[15]_i_1 
       (.I0(\Q_reg[24] [16]),
        .I1(\Q_reg[24] [15]),
        .I2(\Q_reg[24] [24]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[16]_i_1 
       (.I0(\Q_reg[24] [17]),
        .I1(\Q_reg[24] [16]),
        .I2(\Q_reg[24] [24]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[17]_i_1 
       (.I0(\Q_reg[24] [18]),
        .I1(\Q_reg[24] [17]),
        .I2(\Q_reg[24] [24]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[18]_i_1 
       (.I0(\Q_reg[24] [19]),
        .I1(\Q_reg[24] [18]),
        .I2(\Q_reg[24] [24]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[19]_i_1 
       (.I0(\Q_reg[24] [20]),
        .I1(\Q_reg[24] [19]),
        .I2(\Q_reg[24] [24]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[1]_i_1 
       (.I0(\Q_reg[24] [2]),
        .I1(\Q_reg[24] [1]),
        .I2(\Q_reg[24] [24]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[20]_i_1 
       (.I0(\Q_reg[24] [21]),
        .I1(\Q_reg[24] [20]),
        .I2(\Q_reg[24] [24]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[21]_i_1 
       (.I0(\Q_reg[24] [22]),
        .I1(\Q_reg[24] [21]),
        .I2(\Q_reg[24] [24]),
        .O(D[21]));
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[22]_i_2 
       (.I0(\Q_reg[24] [23]),
        .I1(\Q_reg[24] [22]),
        .I2(\Q_reg[24] [24]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[2]_i_1 
       (.I0(\Q_reg[24] [3]),
        .I1(\Q_reg[24] [2]),
        .I2(\Q_reg[24] [24]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[3]_i_1 
       (.I0(\Q_reg[24] [4]),
        .I1(\Q_reg[24] [3]),
        .I2(\Q_reg[24] [24]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[4]_i_1 
       (.I0(\Q_reg[24] [5]),
        .I1(\Q_reg[24] [4]),
        .I2(\Q_reg[24] [24]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[5]_i_1 
       (.I0(\Q_reg[24] [6]),
        .I1(\Q_reg[24] [5]),
        .I2(\Q_reg[24] [24]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[6]_i_1 
       (.I0(\Q_reg[24] [7]),
        .I1(\Q_reg[24] [6]),
        .I2(\Q_reg[24] [24]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[7]_i_1 
       (.I0(\Q_reg[24] [8]),
        .I1(\Q_reg[24] [7]),
        .I2(\Q_reg[24] [24]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[8]_i_1 
       (.I0(\Q_reg[24] [9]),
        .I1(\Q_reg[24] [8]),
        .I2(\Q_reg[24] [24]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[9]_i_1 
       (.I0(\Q_reg[24] [10]),
        .I1(\Q_reg[24] [9]),
        .I2(\Q_reg[24] [24]),
        .O(D[9]));
endmodule

module RegisterAdd
   (\Q_reg[30] ,
    \FSM_sequential_state_reg_reg[5] ,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[4] );
  output \Q_reg[30] ;
  input \FSM_sequential_state_reg_reg[5] ;
  input clk_IBUF_BUFG;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;

  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire \FSM_sequential_state_reg_reg[5] ;
  wire \Q_reg[30] ;
  wire clk_IBUF_BUFG;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(\FSM_sequential_state_reg_reg[5] ),
        .Q(\Q_reg[30] ));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd_0
   (\Q_reg[0]_0 ,
    D,
    \FSM_sequential_state_reg_reg[5] ,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[4] ,
    Q);
  output \Q_reg[0]_0 ;
  output [22:0]D;
  input \FSM_sequential_state_reg_reg[5] ;
  input clk_IBUF_BUFG;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;
  input [22:0]Q;

  wire [22:0]D;
  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire \FSM_sequential_state_reg_reg[5] ;
  wire [22:0]Q;
  wire \Q_reg[0]_0 ;
  wire clk_IBUF_BUFG;

  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[0]_i_1__13 
       (.I0(\Q_reg[0]_0 ),
        .I1(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[10]_i_1__1 
       (.I0(\Q_reg[0]_0 ),
        .I1(Q[10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[11]_i_1__1 
       (.I0(\Q_reg[0]_0 ),
        .I1(Q[11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[12]_i_1__1 
       (.I0(\Q_reg[0]_0 ),
        .I1(Q[12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[13]_i_1__1 
       (.I0(\Q_reg[0]_0 ),
        .I1(Q[13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[14]_i_1__1 
       (.I0(\Q_reg[0]_0 ),
        .I1(Q[14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[15]_i_1__1 
       (.I0(\Q_reg[0]_0 ),
        .I1(Q[15]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[16]_i_1__1 
       (.I0(\Q_reg[0]_0 ),
        .I1(Q[16]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[17]_i_1__1 
       (.I0(\Q_reg[0]_0 ),
        .I1(Q[17]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[18]_i_1__1 
       (.I0(\Q_reg[0]_0 ),
        .I1(Q[18]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[19]_i_1__1 
       (.I0(\Q_reg[0]_0 ),
        .I1(Q[19]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[1]_i_1__3 
       (.I0(\Q_reg[0]_0 ),
        .I1(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[20]_i_1__1 
       (.I0(\Q_reg[0]_0 ),
        .I1(Q[20]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[21]_i_1__1 
       (.I0(\Q_reg[0]_0 ),
        .I1(Q[21]),
        .O(D[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[22]_i_1__2 
       (.I0(\Q_reg[0]_0 ),
        .I1(Q[22]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[2]_i_1__3 
       (.I0(\Q_reg[0]_0 ),
        .I1(Q[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[3]_i_1__3 
       (.I0(\Q_reg[0]_0 ),
        .I1(Q[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[4]_i_1__3 
       (.I0(\Q_reg[0]_0 ),
        .I1(Q[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[5]_i_1__3 
       (.I0(\Q_reg[0]_0 ),
        .I1(Q[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[6]_i_1__3 
       (.I0(\Q_reg[0]_0 ),
        .I1(Q[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[7]_i_1__7 
       (.I0(\Q_reg[0]_0 ),
        .I1(Q[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[8]_i_1__1 
       (.I0(\Q_reg[0]_0 ),
        .I1(Q[8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[9]_i_1__1 
       (.I0(\Q_reg[0]_0 ),
        .I1(Q[9]),
        .O(D[9]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(\FSM_sequential_state_reg_reg[5] ),
        .Q(\Q_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd_1
   (\Q_reg[0]_0 ,
    \FSM_sequential_state_reg_reg[5] ,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[4] );
  output \Q_reg[0]_0 ;
  input \FSM_sequential_state_reg_reg[5] ;
  input clk_IBUF_BUFG;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;

  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire \FSM_sequential_state_reg_reg[5] ;
  wire \Q_reg[0]_0 ;
  wire clk_IBUF_BUFG;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(\FSM_sequential_state_reg_reg[5] ),
        .Q(\Q_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd_10
   (overflow_a,
    overflow_flag_OBUF,
    \FSM_sequential_state_reg_reg[4] ,
    clk_IBUF_BUFG,
    AR,
    overflow_pr);
  output overflow_a;
  output overflow_flag_OBUF;
  input \FSM_sequential_state_reg_reg[4] ;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input overflow_pr;

  wire [0:0]AR;
  wire \FSM_sequential_state_reg_reg[4] ;
  wire clk_IBUF_BUFG;
  wire overflow_a;
  wire overflow_flag_OBUF;
  wire overflow_pr;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state_reg_reg[4] ),
        .Q(overflow_a));
  LUT2 #(
    .INIT(4'hE)) 
    overflow_flag_OBUF_inst_i_1
       (.I0(overflow_a),
        .I1(overflow_pr),
        .O(overflow_flag_OBUF));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd_11
   (underflow_flag_OBUF,
    \FSM_sequential_state_reg_reg[4] ,
    clk_IBUF_BUFG,
    AR);
  output underflow_flag_OBUF;
  input \FSM_sequential_state_reg_reg[4] ;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire \FSM_sequential_state_reg_reg[4] ;
  wire clk_IBUF_BUFG;
  wire underflow_flag_OBUF;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state_reg_reg[4] ),
        .Q(underflow_flag_OBUF));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd_2
   (\Q_reg[4] ,
    D,
    \Q_reg[0]_0 ,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[4] ,
    Q);
  output \Q_reg[4] ;
  output [6:0]D;
  input \Q_reg[0]_0 ;
  input clk_IBUF_BUFG;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;
  input [7:0]Q;

  wire [6:0]D;
  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire [7:0]Q;
  wire \Q[4]_i_2__0_n_0 ;
  wire \Q[4]_i_3__0_n_0 ;
  wire \Q[4]_i_4_n_0 ;
  wire \Q[4]_i_5_n_0 ;
  wire \Q[7]_i_3__0_n_0 ;
  wire \Q[7]_i_4_n_0 ;
  wire \Q[7]_i_5_n_0 ;
  wire \Q_reg[0]_0 ;
  wire \Q_reg[4] ;
  wire \Q_reg[4]_i_1_n_0 ;
  wire \Q_reg[4]_i_1_n_1 ;
  wire \Q_reg[4]_i_1_n_2 ;
  wire \Q_reg[4]_i_1_n_3 ;
  wire \Q_reg[7]_i_2_n_2 ;
  wire \Q_reg[7]_i_2_n_3 ;
  wire clk_IBUF_BUFG;
  wire [3:2]\NLW_Q_reg[7]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_Q_reg[7]_i_2_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    \Q[4]_i_2__0 
       (.I0(\Q_reg[4] ),
        .I1(Q[4]),
        .O(\Q[4]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[4]_i_3__0 
       (.I0(\Q_reg[4] ),
        .I1(Q[3]),
        .O(\Q[4]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[4]_i_4 
       (.I0(\Q_reg[4] ),
        .I1(Q[2]),
        .O(\Q[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[4]_i_5 
       (.I0(\Q_reg[4] ),
        .I1(Q[1]),
        .O(\Q[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[7]_i_3__0 
       (.I0(\Q_reg[4] ),
        .I1(Q[7]),
        .O(\Q[7]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[7]_i_4 
       (.I0(\Q_reg[4] ),
        .I1(Q[6]),
        .O(\Q[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[7]_i_5 
       (.I0(\Q_reg[4] ),
        .I1(Q[5]),
        .O(\Q[7]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(\Q_reg[0]_0 ),
        .Q(\Q_reg[4] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\Q_reg[4]_i_1_n_0 ,\Q_reg[4]_i_1_n_1 ,\Q_reg[4]_i_1_n_2 ,\Q_reg[4]_i_1_n_3 }),
        .CYINIT(Q[0]),
        .DI({\Q_reg[4] ,\Q_reg[4] ,\Q_reg[4] ,\Q_reg[4] }),
        .O(D[3:0]),
        .S({\Q[4]_i_2__0_n_0 ,\Q[4]_i_3__0_n_0 ,\Q[4]_i_4_n_0 ,\Q[4]_i_5_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[7]_i_2 
       (.CI(\Q_reg[4]_i_1_n_0 ),
        .CO({\NLW_Q_reg[7]_i_2_CO_UNCONNECTED [3:2],\Q_reg[7]_i_2_n_2 ,\Q_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\Q_reg[4] ,\Q_reg[4] }),
        .O({\NLW_Q_reg[7]_i_2_O_UNCONNECTED [3],D[6:4]}),
        .S({1'b0,\Q[7]_i_3__0_n_0 ,\Q[7]_i_4_n_0 ,\Q[7]_i_5_n_0 }));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd_3
   (zero_flag,
    \Q_reg[31] ,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[4] );
  output zero_flag;
  input \Q_reg[31] ;
  input clk_IBUF_BUFG;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;

  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire \Q_reg[31] ;
  wire clk_IBUF_BUFG;
  wire zero_flag;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(\Q_reg[31] ),
        .Q(zero_flag));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd_4
   (\Q_reg[0]_0 ,
    D,
    E,
    \Q_reg[24] ,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[4] ,
    Q);
  output \Q_reg[0]_0 ;
  output [0:0]D;
  input [0:0]E;
  input [0:0]\Q_reg[24] ;
  input clk_IBUF_BUFG;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;
  input [0:0]Q;

  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire [0:0]Q;
  wire \Q_reg[0]_0 ;
  wire [0:0]\Q_reg[24] ;
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
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(\Q_reg[24] ),
        .Q(\Q_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd_5
   (overflow_pr,
    E,
    \Q_reg[1] ,
    clk_IBUF_BUFG,
    AR);
  output overflow_pr;
  input [0:0]E;
  input \Q_reg[1] ;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire \Q_reg[1] ;
  wire clk_IBUF_BUFG;
  wire overflow_pr;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1] ),
        .Q(overflow_pr));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd_6
   (\Q_reg[31] ,
    \FSM_sequential_state_reg_reg[4] ,
    add_subt_IBUF,
    clk_IBUF_BUFG,
    AR);
  output \Q_reg[31] ;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;
  input add_subt_IBUF;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire \Q_reg[31] ;
  wire add_subt_IBUF;
  wire clk_IBUF_BUFG;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(add_subt_IBUF),
        .Q(\Q_reg[31] ));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd_7
   (\Q_reg[0]_0 ,
    E,
    D,
    clk_IBUF_BUFG,
    AR);
  output \Q_reg[0]_0 ;
  input [0:0]E;
  input [0:0]D;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]D;
  wire [0:0]E;
  wire \Q_reg[0]_0 ;
  wire clk_IBUF_BUFG;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D),
        .Q(\Q_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized0
   (\Q_reg[0]_0 ,
    \Q_reg[0]_1 ,
    D,
    Q,
    add_subt_IBUF,
    load_0,
    zero_flag,
    S,
    \Q_reg[30]_0 ,
    \FSM_sequential_state_reg_reg[4] ,
    \Data_X[31] ,
    clk_IBUF_BUFG,
    AR);
  output \Q_reg[0]_0 ;
  output [31:0]\Q_reg[0]_1 ;
  output [0:0]D;
  input [31:0]Q;
  input add_subt_IBUF;
  input load_0;
  input zero_flag;
  input [0:0]S;
  input [0:0]\Q_reg[30]_0 ;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;
  input [31:0]\Data_X[31] ;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]D;
  wire [31:0]\Data_X[31] ;
  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire [31:0]Q;
  wire \Q[0]_i_10__0_n_0 ;
  wire \Q[0]_i_10_n_0 ;
  wire \Q[0]_i_11__0_n_0 ;
  wire \Q[0]_i_11_n_0 ;
  wire \Q[0]_i_12_n_0 ;
  wire \Q[0]_i_13__0_n_0 ;
  wire \Q[0]_i_13_n_0 ;
  wire \Q[0]_i_14__0_n_0 ;
  wire \Q[0]_i_14_n_0 ;
  wire \Q[0]_i_15__0_n_0 ;
  wire \Q[0]_i_15_n_0 ;
  wire \Q[0]_i_16__0_n_0 ;
  wire \Q[0]_i_16_n_0 ;
  wire \Q[0]_i_17_n_0 ;
  wire \Q[0]_i_18_n_0 ;
  wire \Q[0]_i_19_n_0 ;
  wire \Q[0]_i_20_n_0 ;
  wire \Q[0]_i_22_n_0 ;
  wire \Q[0]_i_23_n_0 ;
  wire \Q[0]_i_24_n_0 ;
  wire \Q[0]_i_25_n_0 ;
  wire \Q[0]_i_26_n_0 ;
  wire \Q[0]_i_27_n_0 ;
  wire \Q[0]_i_28_n_0 ;
  wire \Q[0]_i_29_n_0 ;
  wire \Q[0]_i_30_n_0 ;
  wire \Q[0]_i_31_n_0 ;
  wire \Q[0]_i_32_n_0 ;
  wire \Q[0]_i_33_n_0 ;
  wire \Q[0]_i_34_n_0 ;
  wire \Q[0]_i_35_n_0 ;
  wire \Q[0]_i_36_n_0 ;
  wire \Q[0]_i_37_n_0 ;
  wire \Q[0]_i_4__1_n_0 ;
  wire \Q[0]_i_5_n_0 ;
  wire \Q[0]_i_6__0_n_0 ;
  wire \Q[0]_i_6_n_0 ;
  wire \Q[0]_i_7__0_n_0 ;
  wire \Q[0]_i_7_n_0 ;
  wire \Q[0]_i_9__0_n_0 ;
  wire \Q[0]_i_9_n_0 ;
  wire \Q_reg[0]_0 ;
  wire [31:0]\Q_reg[0]_1 ;
  wire \Q_reg[0]_i_12_n_0 ;
  wire \Q_reg[0]_i_12_n_1 ;
  wire \Q_reg[0]_i_12_n_2 ;
  wire \Q_reg[0]_i_12_n_3 ;
  wire \Q_reg[0]_i_21_n_0 ;
  wire \Q_reg[0]_i_21_n_1 ;
  wire \Q_reg[0]_i_21_n_2 ;
  wire \Q_reg[0]_i_21_n_3 ;
  wire \Q_reg[0]_i_2__0_n_1 ;
  wire \Q_reg[0]_i_2__0_n_2 ;
  wire \Q_reg[0]_i_2__0_n_3 ;
  wire \Q_reg[0]_i_2_n_1 ;
  wire \Q_reg[0]_i_2_n_2 ;
  wire \Q_reg[0]_i_2_n_3 ;
  wire \Q_reg[0]_i_3_n_0 ;
  wire \Q_reg[0]_i_3_n_1 ;
  wire \Q_reg[0]_i_3_n_2 ;
  wire \Q_reg[0]_i_3_n_3 ;
  wire \Q_reg[0]_i_4_n_0 ;
  wire \Q_reg[0]_i_4_n_1 ;
  wire \Q_reg[0]_i_4_n_2 ;
  wire \Q_reg[0]_i_4_n_3 ;
  wire \Q_reg[0]_i_8_n_0 ;
  wire \Q_reg[0]_i_8_n_1 ;
  wire \Q_reg[0]_i_8_n_2 ;
  wire \Q_reg[0]_i_8_n_3 ;
  wire [0:0]\Q_reg[30]_0 ;
  wire [0:0]S;
  wire add_subt_IBUF;
  wire clk_IBUF_BUFG;
  wire load_0;
  wire zero_flag;
  wire [3:0]\NLW_Q_reg[0]_i_12_O_UNCONNECTED ;
  wire [3:3]\NLW_Q_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[0]_i_21_O_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[0]_i_2__0_O_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[0]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[0]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[0]_i_8_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_10 
       (.I0(\Q_reg[0]_1 [18]),
        .I1(Q[18]),
        .I2(Q[20]),
        .I3(\Q_reg[0]_1 [20]),
        .I4(Q[19]),
        .I5(\Q_reg[0]_1 [19]),
        .O(\Q[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_10__0 
       (.I0(\Q_reg[0]_1 [26]),
        .I1(Q[26]),
        .I2(\Q_reg[0]_1 [27]),
        .I3(Q[27]),
        .O(\Q[0]_i_10__0_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_11 
       (.I0(\Q_reg[0]_1 [15]),
        .I1(Q[15]),
        .I2(Q[17]),
        .I3(\Q_reg[0]_1 [17]),
        .I4(Q[16]),
        .I5(\Q_reg[0]_1 [16]),
        .O(\Q[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_11__0 
       (.I0(\Q_reg[0]_1 [24]),
        .I1(Q[24]),
        .I2(\Q_reg[0]_1 [25]),
        .I3(Q[25]),
        .O(\Q[0]_i_11__0_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_12 
       (.I0(\Q_reg[0]_1 [12]),
        .I1(Q[12]),
        .I2(Q[14]),
        .I3(\Q_reg[0]_1 [14]),
        .I4(Q[13]),
        .I5(\Q_reg[0]_1 [13]),
        .O(\Q[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_13 
       (.I0(\Q_reg[0]_1 [9]),
        .I1(Q[9]),
        .I2(Q[11]),
        .I3(\Q_reg[0]_1 [11]),
        .I4(Q[10]),
        .I5(\Q_reg[0]_1 [10]),
        .O(\Q[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_13__0 
       (.I0(\Q_reg[0]_1 [22]),
        .I1(Q[22]),
        .I2(Q[23]),
        .I3(\Q_reg[0]_1 [23]),
        .O(\Q[0]_i_13__0_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_14 
       (.I0(\Q_reg[0]_1 [6]),
        .I1(Q[6]),
        .I2(Q[8]),
        .I3(\Q_reg[0]_1 [8]),
        .I4(Q[7]),
        .I5(\Q_reg[0]_1 [7]),
        .O(\Q[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_14__0 
       (.I0(\Q_reg[0]_1 [20]),
        .I1(Q[20]),
        .I2(Q[21]),
        .I3(\Q_reg[0]_1 [21]),
        .O(\Q[0]_i_14__0_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_15 
       (.I0(\Q_reg[0]_1 [3]),
        .I1(Q[3]),
        .I2(Q[5]),
        .I3(\Q_reg[0]_1 [5]),
        .I4(Q[4]),
        .I5(\Q_reg[0]_1 [4]),
        .O(\Q[0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_15__0 
       (.I0(\Q_reg[0]_1 [18]),
        .I1(Q[18]),
        .I2(Q[19]),
        .I3(\Q_reg[0]_1 [19]),
        .O(\Q[0]_i_15__0_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_16 
       (.I0(\Q_reg[0]_1 [0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\Q_reg[0]_1 [2]),
        .I4(Q[1]),
        .I5(\Q_reg[0]_1 [1]),
        .O(\Q[0]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_16__0 
       (.I0(\Q_reg[0]_1 [16]),
        .I1(Q[16]),
        .I2(Q[17]),
        .I3(\Q_reg[0]_1 [17]),
        .O(\Q[0]_i_16__0_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_17 
       (.I0(\Q_reg[0]_1 [22]),
        .I1(Q[22]),
        .I2(\Q_reg[0]_1 [23]),
        .I3(Q[23]),
        .O(\Q[0]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_18 
       (.I0(\Q_reg[0]_1 [20]),
        .I1(Q[20]),
        .I2(\Q_reg[0]_1 [21]),
        .I3(Q[21]),
        .O(\Q[0]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_19 
       (.I0(\Q_reg[0]_1 [18]),
        .I1(Q[18]),
        .I2(\Q_reg[0]_1 [19]),
        .I3(Q[19]),
        .O(\Q[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h8228FFFF82280000)) 
    \Q[0]_i_1__10 
       (.I0(\Q_reg[0]_i_2_n_1 ),
        .I1(Q[31]),
        .I2(\Q_reg[0]_1 [31]),
        .I3(add_subt_IBUF),
        .I4(load_0),
        .I5(zero_flag),
        .O(\Q_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_20 
       (.I0(\Q_reg[0]_1 [16]),
        .I1(Q[16]),
        .I2(\Q_reg[0]_1 [17]),
        .I3(Q[17]),
        .O(\Q[0]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_22 
       (.I0(\Q_reg[0]_1 [14]),
        .I1(Q[14]),
        .I2(Q[15]),
        .I3(\Q_reg[0]_1 [15]),
        .O(\Q[0]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_23 
       (.I0(\Q_reg[0]_1 [12]),
        .I1(Q[12]),
        .I2(Q[13]),
        .I3(\Q_reg[0]_1 [13]),
        .O(\Q[0]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_24 
       (.I0(\Q_reg[0]_1 [10]),
        .I1(Q[10]),
        .I2(Q[11]),
        .I3(\Q_reg[0]_1 [11]),
        .O(\Q[0]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_25 
       (.I0(\Q_reg[0]_1 [8]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(\Q_reg[0]_1 [9]),
        .O(\Q[0]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_26 
       (.I0(\Q_reg[0]_1 [14]),
        .I1(Q[14]),
        .I2(\Q_reg[0]_1 [15]),
        .I3(Q[15]),
        .O(\Q[0]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_27 
       (.I0(\Q_reg[0]_1 [12]),
        .I1(Q[12]),
        .I2(\Q_reg[0]_1 [13]),
        .I3(Q[13]),
        .O(\Q[0]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_28 
       (.I0(\Q_reg[0]_1 [10]),
        .I1(Q[10]),
        .I2(\Q_reg[0]_1 [11]),
        .I3(Q[11]),
        .O(\Q[0]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_29 
       (.I0(\Q_reg[0]_1 [8]),
        .I1(Q[8]),
        .I2(\Q_reg[0]_1 [9]),
        .I3(Q[9]),
        .O(\Q[0]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_30 
       (.I0(\Q_reg[0]_1 [6]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(\Q_reg[0]_1 [7]),
        .O(\Q[0]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_31 
       (.I0(\Q_reg[0]_1 [4]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(\Q_reg[0]_1 [5]),
        .O(\Q[0]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_32 
       (.I0(\Q_reg[0]_1 [2]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\Q_reg[0]_1 [3]),
        .O(\Q[0]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_33 
       (.I0(\Q_reg[0]_1 [0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\Q_reg[0]_1 [1]),
        .O(\Q[0]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_34 
       (.I0(\Q_reg[0]_1 [6]),
        .I1(Q[6]),
        .I2(\Q_reg[0]_1 [7]),
        .I3(Q[7]),
        .O(\Q[0]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_35 
       (.I0(\Q_reg[0]_1 [4]),
        .I1(Q[4]),
        .I2(\Q_reg[0]_1 [5]),
        .I3(Q[5]),
        .O(\Q[0]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_36 
       (.I0(\Q_reg[0]_1 [2]),
        .I1(Q[2]),
        .I2(\Q_reg[0]_1 [3]),
        .I3(Q[3]),
        .O(\Q[0]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_37 
       (.I0(\Q_reg[0]_1 [0]),
        .I1(Q[0]),
        .I2(\Q_reg[0]_1 [1]),
        .I3(Q[1]),
        .O(\Q[0]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Q[0]_i_4__1 
       (.I0(\Q_reg[0]_1 [30]),
        .I1(Q[30]),
        .O(\Q[0]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_5 
       (.I0(\Q_reg[0]_1 [28]),
        .I1(Q[28]),
        .I2(Q[29]),
        .I3(\Q_reg[0]_1 [29]),
        .O(\Q[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_6 
       (.I0(\Q_reg[0]_1 [27]),
        .I1(Q[27]),
        .I2(Q[29]),
        .I3(\Q_reg[0]_1 [29]),
        .I4(Q[28]),
        .I5(\Q_reg[0]_1 [28]),
        .O(\Q[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_6__0 
       (.I0(\Q_reg[0]_1 [26]),
        .I1(Q[26]),
        .I2(Q[27]),
        .I3(\Q_reg[0]_1 [27]),
        .O(\Q[0]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_7 
       (.I0(\Q_reg[0]_1 [24]),
        .I1(Q[24]),
        .I2(Q[26]),
        .I3(\Q_reg[0]_1 [26]),
        .I4(Q[25]),
        .I5(\Q_reg[0]_1 [25]),
        .O(\Q[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_7__0 
       (.I0(\Q_reg[0]_1 [24]),
        .I1(Q[24]),
        .I2(Q[25]),
        .I3(\Q_reg[0]_1 [25]),
        .O(\Q[0]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_9 
       (.I0(\Q_reg[0]_1 [21]),
        .I1(Q[21]),
        .I2(Q[23]),
        .I3(\Q_reg[0]_1 [23]),
        .I4(Q[22]),
        .I5(\Q_reg[0]_1 [22]),
        .O(\Q[0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_9__0 
       (.I0(\Q_reg[0]_1 [28]),
        .I1(Q[28]),
        .I2(\Q_reg[0]_1 [29]),
        .I3(Q[29]),
        .O(\Q[0]_i_9__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [0]),
        .Q(\Q_reg[0]_1 [0]));
  CARRY4 \Q_reg[0]_i_12 
       (.CI(\Q_reg[0]_i_21_n_0 ),
        .CO({\Q_reg[0]_i_12_n_0 ,\Q_reg[0]_i_12_n_1 ,\Q_reg[0]_i_12_n_2 ,\Q_reg[0]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q[0]_i_22_n_0 ,\Q[0]_i_23_n_0 ,\Q[0]_i_24_n_0 ,\Q[0]_i_25_n_0 }),
        .O(\NLW_Q_reg[0]_i_12_O_UNCONNECTED [3:0]),
        .S({\Q[0]_i_26_n_0 ,\Q[0]_i_27_n_0 ,\Q[0]_i_28_n_0 ,\Q[0]_i_29_n_0 }));
  CARRY4 \Q_reg[0]_i_2 
       (.CI(\Q_reg[0]_i_4_n_0 ),
        .CO({\NLW_Q_reg[0]_i_2_CO_UNCONNECTED [3],\Q_reg[0]_i_2_n_1 ,\Q_reg[0]_i_2_n_2 ,\Q_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Q_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,S,\Q[0]_i_6_n_0 ,\Q[0]_i_7_n_0 }));
  CARRY4 \Q_reg[0]_i_21 
       (.CI(1'b0),
        .CO({\Q_reg[0]_i_21_n_0 ,\Q_reg[0]_i_21_n_1 ,\Q_reg[0]_i_21_n_2 ,\Q_reg[0]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q[0]_i_30_n_0 ,\Q[0]_i_31_n_0 ,\Q[0]_i_32_n_0 ,\Q[0]_i_33_n_0 }),
        .O(\NLW_Q_reg[0]_i_21_O_UNCONNECTED [3:0]),
        .S({\Q[0]_i_34_n_0 ,\Q[0]_i_35_n_0 ,\Q[0]_i_36_n_0 ,\Q[0]_i_37_n_0 }));
  CARRY4 \Q_reg[0]_i_2__0 
       (.CI(\Q_reg[0]_i_3_n_0 ),
        .CO({D,\Q_reg[0]_i_2__0_n_1 ,\Q_reg[0]_i_2__0_n_2 ,\Q_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q[0]_i_4__1_n_0 ,\Q[0]_i_5_n_0 ,\Q[0]_i_6__0_n_0 ,\Q[0]_i_7__0_n_0 }),
        .O(\NLW_Q_reg[0]_i_2__0_O_UNCONNECTED [3:0]),
        .S({\Q_reg[30]_0 ,\Q[0]_i_9__0_n_0 ,\Q[0]_i_10__0_n_0 ,\Q[0]_i_11__0_n_0 }));
  CARRY4 \Q_reg[0]_i_3 
       (.CI(\Q_reg[0]_i_12_n_0 ),
        .CO({\Q_reg[0]_i_3_n_0 ,\Q_reg[0]_i_3_n_1 ,\Q_reg[0]_i_3_n_2 ,\Q_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q[0]_i_13__0_n_0 ,\Q[0]_i_14__0_n_0 ,\Q[0]_i_15__0_n_0 ,\Q[0]_i_16__0_n_0 }),
        .O(\NLW_Q_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({\Q[0]_i_17_n_0 ,\Q[0]_i_18_n_0 ,\Q[0]_i_19_n_0 ,\Q[0]_i_20_n_0 }));
  CARRY4 \Q_reg[0]_i_4 
       (.CI(\Q_reg[0]_i_8_n_0 ),
        .CO({\Q_reg[0]_i_4_n_0 ,\Q_reg[0]_i_4_n_1 ,\Q_reg[0]_i_4_n_2 ,\Q_reg[0]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Q_reg[0]_i_4_O_UNCONNECTED [3:0]),
        .S({\Q[0]_i_9_n_0 ,\Q[0]_i_10_n_0 ,\Q[0]_i_11_n_0 ,\Q[0]_i_12_n_0 }));
  CARRY4 \Q_reg[0]_i_8 
       (.CI(1'b0),
        .CO({\Q_reg[0]_i_8_n_0 ,\Q_reg[0]_i_8_n_1 ,\Q_reg[0]_i_8_n_2 ,\Q_reg[0]_i_8_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Q_reg[0]_i_8_O_UNCONNECTED [3:0]),
        .S({\Q[0]_i_13_n_0 ,\Q[0]_i_14_n_0 ,\Q[0]_i_15_n_0 ,\Q[0]_i_16_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [10]),
        .Q(\Q_reg[0]_1 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [11]),
        .Q(\Q_reg[0]_1 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [12]),
        .Q(\Q_reg[0]_1 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [13]),
        .Q(\Q_reg[0]_1 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [14]),
        .Q(\Q_reg[0]_1 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [15]),
        .Q(\Q_reg[0]_1 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [16]),
        .Q(\Q_reg[0]_1 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [17]),
        .Q(\Q_reg[0]_1 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [18]),
        .Q(\Q_reg[0]_1 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [19]),
        .Q(\Q_reg[0]_1 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [1]),
        .Q(\Q_reg[0]_1 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [20]),
        .Q(\Q_reg[0]_1 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [21]),
        .Q(\Q_reg[0]_1 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [22]),
        .Q(\Q_reg[0]_1 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [23]),
        .Q(\Q_reg[0]_1 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [24]),
        .Q(\Q_reg[0]_1 [24]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [25]),
        .Q(\Q_reg[0]_1 [25]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [26]),
        .Q(\Q_reg[0]_1 [26]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [27]),
        .Q(\Q_reg[0]_1 [27]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [28]),
        .Q(\Q_reg[0]_1 [28]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [29]),
        .Q(\Q_reg[0]_1 [29]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [2]),
        .Q(\Q_reg[0]_1 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [30]),
        .Q(\Q_reg[0]_1 [30]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [31]),
        .Q(\Q_reg[0]_1 [31]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [3]),
        .Q(\Q_reg[0]_1 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [4]),
        .Q(\Q_reg[0]_1 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [5]),
        .Q(\Q_reg[0]_1 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [6]),
        .Q(\Q_reg[0]_1 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [7]),
        .Q(\Q_reg[0]_1 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [8]),
        .Q(\Q_reg[0]_1 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_X[31] [9]),
        .Q(\Q_reg[0]_1 [9]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized1
   (\Q_reg[0]_0 ,
    Q,
    S,
    \Q_reg[30]_0 ,
    \FSM_sequential_state_reg_reg[4] ,
    \Data_Y[31] ,
    clk_IBUF_BUFG,
    AR);
  output [0:0]\Q_reg[0]_0 ;
  output [31:0]Q;
  output [0:0]S;
  input [0:0]\Q_reg[30]_0 ;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;
  input [31:0]\Data_Y[31] ;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [31:0]\Data_Y[31] ;
  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire [31:0]Q;
  wire [0:0]\Q_reg[0]_0 ;
  wire [0:0]\Q_reg[30]_0 ;
  wire [0:0]S;
  wire clk_IBUF_BUFG;

  LUT2 #(
    .INIT(4'h9)) 
    \Q[0]_i_5__0 
       (.I0(Q[30]),
        .I1(\Q_reg[30]_0 ),
        .O(S));
  LUT2 #(
    .INIT(4'h9)) 
    \Q[0]_i_8 
       (.I0(Q[30]),
        .I1(\Q_reg[30]_0 ),
        .O(\Q_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [27]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [28]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [29]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [30]),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [31]),
        .Q(Q[31]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR),
        .D(\Data_Y[31] [9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized10
   (\Q_reg[7]_0 ,
    \Q_reg[0]_0 ,
    \Q_reg[0]_1 ,
    \Q_reg[0]_2 ,
    \Q_reg[30] ,
    \FSM_sequential_state_reg_reg[4] ,
    D,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[4]_0 );
  output [7:0]\Q_reg[7]_0 ;
  output \Q_reg[0]_0 ;
  output \Q_reg[0]_1 ;
  input \Q_reg[0]_2 ;
  input [7:0]\Q_reg[30] ;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;
  input [7:0]D;
  input clk_IBUF_BUFG;
  input [0:0]\FSM_sequential_state_reg_reg[4]_0 ;

  wire [7:0]D;
  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire [0:0]\FSM_sequential_state_reg_reg[4]_0 ;
  wire \Q[0]_i_3__2_n_0 ;
  wire \Q[0]_i_4__0_n_0 ;
  wire \Q_reg[0]_0 ;
  wire \Q_reg[0]_1 ;
  wire \Q_reg[0]_2 ;
  wire [7:0]\Q_reg[30] ;
  wire [7:0]\Q_reg[7]_0 ;
  wire \Q_reg_n_0_[0] ;
  wire \Q_reg_n_0_[1] ;
  wire \Q_reg_n_0_[2] ;
  wire \Q_reg_n_0_[3] ;
  wire \Q_reg_n_0_[4] ;
  wire \Q_reg_n_0_[5] ;
  wire \Q_reg_n_0_[6] ;
  wire \Q_reg_n_0_[7] ;
  wire clk_IBUF_BUFG;

  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[0]_i_1__3 
       (.I0(\Q_reg_n_0_[0] ),
        .I1(\Q_reg[0]_2 ),
        .I2(\Q_reg[30] [0]),
        .O(\Q_reg[7]_0 [0]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \Q[0]_i_2__1 
       (.I0(\Q_reg_n_0_[4] ),
        .I1(\Q_reg_n_0_[5] ),
        .I2(\Q_reg_n_0_[0] ),
        .I3(\Q_reg_n_0_[1] ),
        .I4(\Q[0]_i_4__0_n_0 ),
        .O(\Q_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \Q[0]_i_2__2 
       (.I0(\Q_reg_n_0_[2] ),
        .I1(\Q_reg_n_0_[3] ),
        .I2(\Q_reg_n_0_[0] ),
        .I3(\Q_reg_n_0_[1] ),
        .I4(\Q[0]_i_3__2_n_0 ),
        .O(\Q_reg[0]_1 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Q[0]_i_3__2 
       (.I0(\Q_reg_n_0_[5] ),
        .I1(\Q_reg_n_0_[4] ),
        .I2(\Q_reg_n_0_[7] ),
        .I3(\Q_reg_n_0_[6] ),
        .O(\Q[0]_i_3__2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \Q[0]_i_4__0 
       (.I0(\Q_reg_n_0_[3] ),
        .I1(\Q_reg_n_0_[2] ),
        .I2(\Q_reg_n_0_[7] ),
        .I3(\Q_reg_n_0_[6] ),
        .O(\Q[0]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[1]_i_1__1 
       (.I0(\Q_reg_n_0_[1] ),
        .I1(\Q_reg[0]_2 ),
        .I2(\Q_reg[30] [1]),
        .O(\Q_reg[7]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[2]_i_1__1 
       (.I0(\Q_reg_n_0_[2] ),
        .I1(\Q_reg[0]_2 ),
        .I2(\Q_reg[30] [2]),
        .O(\Q_reg[7]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[3]_i_1__1 
       (.I0(\Q_reg_n_0_[3] ),
        .I1(\Q_reg[0]_2 ),
        .I2(\Q_reg[30] [3]),
        .O(\Q_reg[7]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[4]_i_1__1 
       (.I0(\Q_reg_n_0_[4] ),
        .I1(\Q_reg[0]_2 ),
        .I2(\Q_reg[30] [4]),
        .O(\Q_reg[7]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[5]_i_1__1 
       (.I0(\Q_reg_n_0_[5] ),
        .I1(\Q_reg[0]_2 ),
        .I2(\Q_reg[30] [5]),
        .O(\Q_reg[7]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[6]_i_1__1 
       (.I0(\Q_reg_n_0_[6] ),
        .I1(\Q_reg[0]_2 ),
        .I2(\Q_reg[30] [6]),
        .O(\Q_reg[7]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[7]_i_2__1 
       (.I0(\Q_reg_n_0_[7] ),
        .I1(\Q_reg[0]_2 ),
        .I2(\Q_reg[30] [7]),
        .O(\Q_reg[7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[0]),
        .Q(\Q_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[1]),
        .Q(\Q_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[2]),
        .Q(\Q_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[3]),
        .Q(\Q_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[4]),
        .Q(\Q_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[5]),
        .Q(\Q_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[6]),
        .Q(\Q_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[7]),
        .Q(\Q_reg_n_0_[7] ));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized11
   (\Q_reg[7]_0 ,
    \FSM_sequential_state_reg_reg[4] ,
    D,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[4]_0 );
  output [7:0]\Q_reg[7]_0 ;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;
  input [7:0]D;
  input clk_IBUF_BUFG;
  input [0:0]\FSM_sequential_state_reg_reg[4]_0 ;

  wire [7:0]D;
  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire [0:0]\FSM_sequential_state_reg_reg[4]_0 ;
  wire [7:0]\Q_reg[7]_0 ;
  wire clk_IBUF_BUFG;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[0]),
        .Q(\Q_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[1]),
        .Q(\Q_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[2]),
        .Q(\Q_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[3]),
        .Q(\Q_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[4]),
        .Q(\Q_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[5]),
        .Q(\Q_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[6]),
        .Q(\Q_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[7]),
        .Q(\Q_reg[7]_0 [7]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized12
   (Q,
    \Q_reg[3]_0 ,
    E,
    D,
    clk_IBUF_BUFG,
    AR);
  output [22:0]Q;
  output [0:0]\Q_reg[3]_0 ;
  input [0:0]E;
  input [23:0]D;
  input clk_IBUF_BUFG;
  input [1:0]AR;

  wire [1:0]AR;
  wire [23:0]D;
  wire [0:0]E;
  wire [22:0]Q;
  wire [0:0]\Q_reg[3]_0 ;
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
  wire \Q_reg_n_0_[23] ;
  wire \Q_reg_n_0_[2] ;
  wire \Q_reg_n_0_[3] ;
  wire \Q_reg_n_0_[4] ;
  wire \Q_reg_n_0_[5] ;
  wire \Q_reg_n_0_[6] ;
  wire \Q_reg_n_0_[7] ;
  wire \Q_reg_n_0_[8] ;
  wire \Q_reg_n_0_[9] ;
  wire clk_IBUF_BUFG;

  LUT1 #(
    .INIT(2'h2)) 
    \Q[11]_i_2__2 
       (.I0(\Q_reg_n_0_[11] ),
        .O(Q[10]));
  LUT1 #(
    .INIT(2'h2)) 
    \Q[11]_i_3__1 
       (.I0(\Q_reg_n_0_[10] ),
        .O(Q[9]));
  LUT1 #(
    .INIT(2'h2)) 
    \Q[11]_i_4__0 
       (.I0(\Q_reg_n_0_[9] ),
        .O(Q[8]));
  LUT1 #(
    .INIT(2'h2)) 
    \Q[11]_i_5__0 
       (.I0(\Q_reg_n_0_[8] ),
        .O(Q[7]));
  LUT1 #(
    .INIT(2'h2)) 
    \Q[15]_i_2__2 
       (.I0(\Q_reg_n_0_[15] ),
        .O(Q[14]));
  LUT1 #(
    .INIT(2'h2)) 
    \Q[15]_i_3__1 
       (.I0(\Q_reg_n_0_[14] ),
        .O(Q[13]));
  LUT1 #(
    .INIT(2'h2)) 
    \Q[15]_i_4__0 
       (.I0(\Q_reg_n_0_[13] ),
        .O(Q[12]));
  LUT1 #(
    .INIT(2'h2)) 
    \Q[15]_i_5__0 
       (.I0(\Q_reg_n_0_[12] ),
        .O(Q[11]));
  LUT1 #(
    .INIT(2'h2)) 
    \Q[19]_i_2__2 
       (.I0(\Q_reg_n_0_[19] ),
        .O(Q[18]));
  LUT1 #(
    .INIT(2'h2)) 
    \Q[19]_i_3__1 
       (.I0(\Q_reg_n_0_[18] ),
        .O(Q[17]));
  LUT1 #(
    .INIT(2'h2)) 
    \Q[19]_i_4__1 
       (.I0(\Q_reg_n_0_[17] ),
        .O(Q[16]));
  LUT1 #(
    .INIT(2'h2)) 
    \Q[19]_i_5__0 
       (.I0(\Q_reg_n_0_[16] ),
        .O(Q[15]));
  LUT1 #(
    .INIT(2'h2)) 
    \Q[23]_i_2__2 
       (.I0(\Q_reg_n_0_[23] ),
        .O(Q[22]));
  LUT1 #(
    .INIT(2'h2)) 
    \Q[23]_i_3__0 
       (.I0(\Q_reg_n_0_[22] ),
        .O(Q[21]));
  LUT1 #(
    .INIT(2'h2)) 
    \Q[23]_i_4__0 
       (.I0(\Q_reg_n_0_[21] ),
        .O(Q[20]));
  LUT1 #(
    .INIT(2'h2)) 
    \Q[23]_i_5__0 
       (.I0(\Q_reg_n_0_[20] ),
        .O(Q[19]));
  LUT1 #(
    .INIT(2'h2)) 
    \Q[3]_i_2__3 
       (.I0(\Q_reg_n_0_[3] ),
        .O(Q[2]));
  LUT1 #(
    .INIT(2'h2)) 
    \Q[3]_i_3__2 
       (.I0(\Q_reg_n_0_[2] ),
        .O(Q[1]));
  LUT1 #(
    .INIT(2'h2)) 
    \Q[3]_i_4__2 
       (.I0(\Q_reg_n_0_[1] ),
        .O(Q[0]));
  LUT1 #(
    .INIT(2'h2)) 
    \Q[7]_i_2__4 
       (.I0(\Q_reg_n_0_[7] ),
        .O(Q[6]));
  LUT1 #(
    .INIT(2'h2)) 
    \Q[7]_i_3__4 
       (.I0(\Q_reg_n_0_[6] ),
        .O(Q[5]));
  LUT1 #(
    .INIT(2'h2)) 
    \Q[7]_i_4__2 
       (.I0(\Q_reg_n_0_[5] ),
        .O(Q[4]));
  LUT1 #(
    .INIT(2'h2)) 
    \Q[7]_i_5__2 
       (.I0(\Q_reg_n_0_[4] ),
        .O(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[0]),
        .Q(\Q_reg[3]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[10]),
        .Q(\Q_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[11]),
        .Q(\Q_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
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
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[17]),
        .Q(\Q_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[18]),
        .Q(\Q_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[19]),
        .Q(\Q_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[1]),
        .Q(\Q_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[20]),
        .Q(\Q_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[21]),
        .Q(\Q_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[22]),
        .Q(\Q_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[23]),
        .Q(\Q_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[2]),
        .Q(\Q_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[3]),
        .Q(\Q_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[4]),
        .Q(\Q_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[5]),
        .Q(\Q_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[6]),
        .Q(\Q_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[7]),
        .Q(\Q_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[8]),
        .Q(\Q_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[9]),
        .Q(\Q_reg_n_0_[9] ));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized13
   (\Q_reg[0]_0 ,
    \FSM_sequential_state_reg_reg[4] ,
    D,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[4]_0 );
  output [24:0]\Q_reg[0]_0 ;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;
  input [24:0]D;
  input clk_IBUF_BUFG;
  input [0:0]\FSM_sequential_state_reg_reg[4]_0 ;

  wire [24:0]D;
  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire [0:0]\FSM_sequential_state_reg_reg[4]_0 ;
  wire [24:0]\Q_reg[0]_0 ;
  wire clk_IBUF_BUFG;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[0]),
        .Q(\Q_reg[0]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[10]),
        .Q(\Q_reg[0]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[11]),
        .Q(\Q_reg[0]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[12]),
        .Q(\Q_reg[0]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[13]),
        .Q(\Q_reg[0]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[14]),
        .Q(\Q_reg[0]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[15]),
        .Q(\Q_reg[0]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[16]),
        .Q(\Q_reg[0]_0 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[17]),
        .Q(\Q_reg[0]_0 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[18]),
        .Q(\Q_reg[0]_0 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[19]),
        .Q(\Q_reg[0]_0 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[1]),
        .Q(\Q_reg[0]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[20]),
        .Q(\Q_reg[0]_0 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[21]),
        .Q(\Q_reg[0]_0 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[22]),
        .Q(\Q_reg[0]_0 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[23]),
        .Q(\Q_reg[0]_0 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[24]),
        .Q(\Q_reg[0]_0 [24]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[2]),
        .Q(\Q_reg[0]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[3]),
        .Q(\Q_reg[0]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[4]),
        .Q(\Q_reg[0]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[5]),
        .Q(\Q_reg[0]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[6]),
        .Q(\Q_reg[0]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[7]),
        .Q(\Q_reg[0]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[8]),
        .Q(\Q_reg[0]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(D[9]),
        .Q(\Q_reg[0]_0 [9]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized14
   (\Q_reg[22]_0 ,
    E,
    D,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[4] );
  output [22:0]\Q_reg[22]_0 ;
  input [0:0]E;
  input [22:0]D;
  input clk_IBUF_BUFG;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;

  wire [22:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire [22:0]\Q_reg[22]_0 ;
  wire clk_IBUF_BUFG;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[0]),
        .Q(\Q_reg[22]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[10]),
        .Q(\Q_reg[22]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[11]),
        .Q(\Q_reg[22]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[12]),
        .Q(\Q_reg[22]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[13]),
        .Q(\Q_reg[22]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[14]),
        .Q(\Q_reg[22]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[15]),
        .Q(\Q_reg[22]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[16]),
        .Q(\Q_reg[22]_0 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[17]),
        .Q(\Q_reg[22]_0 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[18]),
        .Q(\Q_reg[22]_0 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[19]),
        .Q(\Q_reg[22]_0 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[1]),
        .Q(\Q_reg[22]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[20]),
        .Q(\Q_reg[22]_0 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[21]),
        .Q(\Q_reg[22]_0 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[22]),
        .Q(\Q_reg[22]_0 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[2]),
        .Q(\Q_reg[22]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[3]),
        .Q(\Q_reg[22]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[4]),
        .Q(\Q_reg[22]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[5]),
        .Q(\Q_reg[22]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[6]),
        .Q(\Q_reg[22]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[7]),
        .Q(\Q_reg[22]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[8]),
        .Q(\Q_reg[22]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[9]),
        .Q(\Q_reg[22]_0 [9]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized15
   (D,
    Q,
    \Q_reg[0]_0 ,
    \Q_reg[0]_1 ,
    \FSM_sequential_state_reg_reg[4] ,
    \Q_reg[7]_0 ,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[4]_0 );
  output [6:0]D;
  output [0:0]Q;
  output \Q_reg[0]_0 ;
  input \Q_reg[0]_1 ;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;
  input [7:0]\Q_reg[7]_0 ;
  input clk_IBUF_BUFG;
  input [0:0]\FSM_sequential_state_reg_reg[4]_0 ;

  wire [6:0]D;
  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire [0:0]\FSM_sequential_state_reg_reg[4]_0 ;
  wire [0:0]Q;
  wire \Q[0]_i_2__3_n_0 ;
  wire \Q[7]_i_3__2_n_0 ;
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

  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h2800)) 
    \Q[0]_i_1__4 
       (.I0(\Q_reg_n_0_[1] ),
        .I1(\Q_reg[0]_1 ),
        .I2(Q),
        .I3(\Q[0]_i_2__3_n_0 ),
        .O(\Q_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \Q[0]_i_2__3 
       (.I0(\Q_reg_n_0_[4] ),
        .I1(\Q_reg_n_0_[5] ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\Q_reg_n_0_[3] ),
        .I4(\Q_reg_n_0_[7] ),
        .I5(\Q_reg_n_0_[6] ),
        .O(\Q[0]_i_2__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Q[1]_i_1__2 
       (.I0(Q),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg_n_0_[1] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Q[2]_i_1__2 
       (.I0(\Q_reg_n_0_[1] ),
        .I1(\Q_reg[0]_1 ),
        .I2(Q),
        .I3(\Q_reg_n_0_[2] ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \Q[3]_i_1__2 
       (.I0(\Q_reg_n_0_[2] ),
        .I1(Q),
        .I2(\Q_reg[0]_1 ),
        .I3(\Q_reg_n_0_[1] ),
        .I4(\Q_reg_n_0_[3] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \Q[4]_i_1__2 
       (.I0(\Q_reg_n_0_[3] ),
        .I1(\Q_reg_n_0_[1] ),
        .I2(\Q_reg[0]_1 ),
        .I3(Q),
        .I4(\Q_reg_n_0_[2] ),
        .I5(\Q_reg_n_0_[4] ),
        .O(D[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \Q[5]_i_1__2 
       (.I0(\Q[7]_i_3__2_n_0 ),
        .I1(\Q_reg_n_0_[5] ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \Q[6]_i_1__2 
       (.I0(\Q_reg_n_0_[5] ),
        .I1(\Q[7]_i_3__2_n_0 ),
        .I2(\Q_reg_n_0_[6] ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \Q[7]_i_2__2 
       (.I0(\Q_reg_n_0_[6] ),
        .I1(\Q[7]_i_3__2_n_0 ),
        .I2(\Q_reg_n_0_[5] ),
        .I3(\Q_reg_n_0_[7] ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \Q[7]_i_3__2 
       (.I0(\Q_reg_n_0_[3] ),
        .I1(\Q_reg_n_0_[1] ),
        .I2(\Q_reg[0]_1 ),
        .I3(Q),
        .I4(\Q_reg_n_0_[2] ),
        .I5(\Q_reg_n_0_[4] ),
        .O(\Q[7]_i_3__2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(\Q_reg[7]_0 [0]),
        .Q(Q));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(\Q_reg[7]_0 [1]),
        .Q(\Q_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(\Q_reg[7]_0 [2]),
        .Q(\Q_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(\Q_reg[7]_0 [3]),
        .Q(\Q_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(\Q_reg[7]_0 [4]),
        .Q(\Q_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(\Q_reg[7]_0 [5]),
        .Q(\Q_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(\Q_reg[7]_0 [6]),
        .Q(\Q_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 ),
        .D(\Q_reg[7]_0 [7]),
        .Q(\Q_reg_n_0_[7] ));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized16
   (\Q_reg[30] ,
    E,
    D,
    clk_IBUF_BUFG,
    AR);
  output [7:0]\Q_reg[30] ;
  input [0:0]E;
  input [7:0]D;
  input clk_IBUF_BUFG;
  input [1:0]AR;

  wire [1:0]AR;
  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]\Q_reg[30] ;
  wire clk_IBUF_BUFG;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[0]),
        .Q(\Q_reg[30] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[1]),
        .Q(\Q_reg[30] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[2]),
        .Q(\Q_reg[30] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[3]),
        .Q(\Q_reg[30] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[4]),
        .Q(\Q_reg[30] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[5]),
        .Q(\Q_reg[30] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[6]),
        .Q(\Q_reg[30] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[7]),
        .Q(\Q_reg[30] [7]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized17
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
        .CLR(AR[1]),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[27]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
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
        .CLR(AR[1]),
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
        .CLR(AR[1]),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized18
   (\final_result_ieee[31] ,
    \FSM_sequential_state_reg_reg[5] ,
    D,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[4] );
  output [31:0]\final_result_ieee[31] ;
  input [0:0]\FSM_sequential_state_reg_reg[5] ;
  input [31:0]D;
  input clk_IBUF_BUFG;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;

  wire [31:0]D;
  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire [0:0]\FSM_sequential_state_reg_reg[5] ;
  wire clk_IBUF_BUFG;
  wire [31:0]\final_result_ieee[31] ;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[0]),
        .Q(\final_result_ieee[31] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[10]),
        .Q(\final_result_ieee[31] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[11]),
        .Q(\final_result_ieee[31] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[12]),
        .Q(\final_result_ieee[31] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[13]),
        .Q(\final_result_ieee[31] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[14]),
        .Q(\final_result_ieee[31] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[15]),
        .Q(\final_result_ieee[31] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[16]),
        .Q(\final_result_ieee[31] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[17]),
        .Q(\final_result_ieee[31] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[18]),
        .Q(\final_result_ieee[31] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[19]),
        .Q(\final_result_ieee[31] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[1]),
        .Q(\final_result_ieee[31] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[20]),
        .Q(\final_result_ieee[31] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[21]),
        .Q(\final_result_ieee[31] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[22]),
        .Q(\final_result_ieee[31] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[23]),
        .Q(\final_result_ieee[31] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[24]),
        .Q(\final_result_ieee[31] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[25]),
        .Q(\final_result_ieee[31] [25]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[26]),
        .Q(\final_result_ieee[31] [26]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[27]),
        .Q(\final_result_ieee[31] [27]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[28]),
        .Q(\final_result_ieee[31] [28]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[29]),
        .Q(\final_result_ieee[31] [29]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[2]),
        .Q(\final_result_ieee[31] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[30]),
        .Q(\final_result_ieee[31] [30]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[31]),
        .Q(\final_result_ieee[31] [31]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[3]),
        .Q(\final_result_ieee[31] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[4]),
        .Q(\final_result_ieee[31] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[5]),
        .Q(\final_result_ieee[31] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[6]),
        .Q(\final_result_ieee[31] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[7]),
        .Q(\final_result_ieee[31] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[8]),
        .Q(\final_result_ieee[31] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[5] ),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(D[9]),
        .Q(\final_result_ieee[31] [9]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized2
   (Q,
    E,
    D,
    clk_IBUF_BUFG,
    AR);
  output [31:0]Q;
  input [0:0]E;
  input [31:0]D;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire clk_IBUF_BUFG;

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
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[19]),
        .Q(Q[19]));
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
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[27]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[28]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[29]),
        .Q(Q[29]));
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
    \Q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[30]),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[31]),
        .Q(Q[31]));
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
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized3
   (D,
    \Q_reg[31]_0 ,
    S,
    \Q_reg[25]_0 ,
    \Q_reg[25]_1 ,
    Q,
    \FSM_sequential_state_reg_reg[4] ,
    \Q_reg[31]_1 ,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[4]_0 );
  output [26:0]D;
  output [8:0]\Q_reg[31]_0 ;
  input [0:0]S;
  input [0:0]\Q_reg[25]_0 ;
  input [24:0]\Q_reg[25]_1 ;
  input [0:0]Q;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;
  input [31:0]\Q_reg[31]_1 ;
  input clk_IBUF_BUFG;
  input [1:0]\FSM_sequential_state_reg_reg[4]_0 ;

  wire [26:0]D;
  wire [24:2]Data_A;
  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire [1:0]\FSM_sequential_state_reg_reg[4]_0 ;
  wire [0:0]Q;
  wire \Q[11]_i_2__1_n_0 ;
  wire \Q[11]_i_3__0_n_0 ;
  wire \Q[11]_i_4_n_0 ;
  wire \Q[11]_i_5_n_0 ;
  wire \Q[11]_i_6_n_0 ;
  wire \Q[11]_i_7_n_0 ;
  wire \Q[11]_i_8_n_0 ;
  wire \Q[11]_i_9_n_0 ;
  wire \Q[15]_i_2__1_n_0 ;
  wire \Q[15]_i_3__0_n_0 ;
  wire \Q[15]_i_4_n_0 ;
  wire \Q[15]_i_5_n_0 ;
  wire \Q[15]_i_6_n_0 ;
  wire \Q[15]_i_7_n_0 ;
  wire \Q[15]_i_8_n_0 ;
  wire \Q[15]_i_9_n_0 ;
  wire \Q[19]_i_2__1_n_0 ;
  wire \Q[19]_i_3__0_n_0 ;
  wire \Q[19]_i_4__0_n_0 ;
  wire \Q[19]_i_5_n_0 ;
  wire \Q[19]_i_6_n_0 ;
  wire \Q[19]_i_7_n_0 ;
  wire \Q[19]_i_8_n_0 ;
  wire \Q[19]_i_9_n_0 ;
  wire \Q[23]_i_2__1_n_0 ;
  wire \Q[23]_i_3_n_0 ;
  wire \Q[23]_i_4_n_0 ;
  wire \Q[23]_i_5_n_0 ;
  wire \Q[23]_i_6_n_0 ;
  wire \Q[23]_i_7_n_0 ;
  wire \Q[23]_i_8_n_0 ;
  wire \Q[23]_i_9_n_0 ;
  wire \Q[26]_i_3__0_n_0 ;
  wire \Q[26]_i_4__0_n_0 ;
  wire \Q[26]_i_7_n_0 ;
  wire \Q[3]_i_2__2_n_0 ;
  wire \Q[3]_i_3__1_n_0 ;
  wire \Q[3]_i_4__1_n_0 ;
  wire \Q[3]_i_5__1_n_0 ;
  wire \Q[3]_i_6_n_0 ;
  wire \Q[3]_i_7_n_0 ;
  wire \Q[7]_i_2__3_n_0 ;
  wire \Q[7]_i_3__3_n_0 ;
  wire \Q[7]_i_4__1_n_0 ;
  wire \Q[7]_i_5__1_n_0 ;
  wire \Q[7]_i_6_n_0 ;
  wire \Q[7]_i_7_n_0 ;
  wire \Q[7]_i_8_n_0 ;
  wire \Q[7]_i_9_n_0 ;
  wire \Q_reg[11]_i_1_n_0 ;
  wire \Q_reg[11]_i_1_n_1 ;
  wire \Q_reg[11]_i_1_n_2 ;
  wire \Q_reg[11]_i_1_n_3 ;
  wire \Q_reg[15]_i_1_n_0 ;
  wire \Q_reg[15]_i_1_n_1 ;
  wire \Q_reg[15]_i_1_n_2 ;
  wire \Q_reg[15]_i_1_n_3 ;
  wire \Q_reg[19]_i_1_n_0 ;
  wire \Q_reg[19]_i_1_n_1 ;
  wire \Q_reg[19]_i_1_n_2 ;
  wire \Q_reg[19]_i_1_n_3 ;
  wire \Q_reg[23]_i_1_n_0 ;
  wire \Q_reg[23]_i_1_n_1 ;
  wire \Q_reg[23]_i_1_n_2 ;
  wire \Q_reg[23]_i_1_n_3 ;
  wire [0:0]\Q_reg[25]_0 ;
  wire [24:0]\Q_reg[25]_1 ;
  wire \Q_reg[26]_i_2_n_2 ;
  wire \Q_reg[26]_i_2_n_3 ;
  wire [8:0]\Q_reg[31]_0 ;
  wire [31:0]\Q_reg[31]_1 ;
  wire \Q_reg[3]_i_1__0_n_0 ;
  wire \Q_reg[3]_i_1__0_n_1 ;
  wire \Q_reg[3]_i_1__0_n_2 ;
  wire \Q_reg[3]_i_1__0_n_3 ;
  wire \Q_reg[7]_i_1_n_0 ;
  wire \Q_reg[7]_i_1_n_1 ;
  wire \Q_reg[7]_i_1_n_2 ;
  wire \Q_reg[7]_i_1_n_3 ;
  wire [0:0]S;
  wire clk_IBUF_BUFG;
  wire op_mode0;
  wire [3:2]\NLW_Q_reg[26]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_Q_reg[26]_i_2_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h96)) 
    \Q[11]_i_2__1 
       (.I0(\Q_reg[31]_0 [8]),
        .I1(Q),
        .I2(\Q_reg[25]_1 [10]),
        .O(\Q[11]_i_2__1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[11]_i_3__0 
       (.I0(\Q_reg[31]_0 [8]),
        .I1(Q),
        .I2(\Q_reg[25]_1 [9]),
        .O(\Q[11]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[11]_i_4 
       (.I0(\Q_reg[31]_0 [8]),
        .I1(Q),
        .I2(\Q_reg[25]_1 [8]),
        .O(\Q[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[11]_i_5 
       (.I0(\Q_reg[31]_0 [8]),
        .I1(Q),
        .I2(\Q_reg[25]_1 [7]),
        .O(\Q[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \Q[11]_i_6 
       (.I0(\Q_reg[25]_1 [10]),
        .I1(Q),
        .I2(\Q_reg[31]_0 [8]),
        .I3(Data_A[11]),
        .O(\Q[11]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \Q[11]_i_7 
       (.I0(\Q_reg[25]_1 [9]),
        .I1(Q),
        .I2(\Q_reg[31]_0 [8]),
        .I3(Data_A[10]),
        .O(\Q[11]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \Q[11]_i_8 
       (.I0(\Q_reg[25]_1 [8]),
        .I1(Q),
        .I2(\Q_reg[31]_0 [8]),
        .I3(Data_A[9]),
        .O(\Q[11]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \Q[11]_i_9 
       (.I0(\Q_reg[25]_1 [7]),
        .I1(Q),
        .I2(\Q_reg[31]_0 [8]),
        .I3(Data_A[8]),
        .O(\Q[11]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[15]_i_2__1 
       (.I0(\Q_reg[31]_0 [8]),
        .I1(Q),
        .I2(\Q_reg[25]_1 [14]),
        .O(\Q[15]_i_2__1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[15]_i_3__0 
       (.I0(\Q_reg[31]_0 [8]),
        .I1(Q),
        .I2(\Q_reg[25]_1 [13]),
        .O(\Q[15]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[15]_i_4 
       (.I0(\Q_reg[31]_0 [8]),
        .I1(Q),
        .I2(\Q_reg[25]_1 [12]),
        .O(\Q[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[15]_i_5 
       (.I0(\Q_reg[31]_0 [8]),
        .I1(Q),
        .I2(\Q_reg[25]_1 [11]),
        .O(\Q[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \Q[15]_i_6 
       (.I0(\Q_reg[25]_1 [14]),
        .I1(Q),
        .I2(\Q_reg[31]_0 [8]),
        .I3(Data_A[15]),
        .O(\Q[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \Q[15]_i_7 
       (.I0(\Q_reg[25]_1 [13]),
        .I1(Q),
        .I2(\Q_reg[31]_0 [8]),
        .I3(Data_A[14]),
        .O(\Q[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \Q[15]_i_8 
       (.I0(\Q_reg[25]_1 [12]),
        .I1(Q),
        .I2(\Q_reg[31]_0 [8]),
        .I3(Data_A[13]),
        .O(\Q[15]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \Q[15]_i_9 
       (.I0(\Q_reg[25]_1 [11]),
        .I1(Q),
        .I2(\Q_reg[31]_0 [8]),
        .I3(Data_A[12]),
        .O(\Q[15]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[19]_i_2__1 
       (.I0(\Q_reg[31]_0 [8]),
        .I1(Q),
        .I2(\Q_reg[25]_1 [18]),
        .O(\Q[19]_i_2__1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[19]_i_3__0 
       (.I0(\Q_reg[31]_0 [8]),
        .I1(Q),
        .I2(\Q_reg[25]_1 [17]),
        .O(\Q[19]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[19]_i_4__0 
       (.I0(\Q_reg[31]_0 [8]),
        .I1(Q),
        .I2(\Q_reg[25]_1 [16]),
        .O(\Q[19]_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[19]_i_5 
       (.I0(\Q_reg[31]_0 [8]),
        .I1(Q),
        .I2(\Q_reg[25]_1 [15]),
        .O(\Q[19]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \Q[19]_i_6 
       (.I0(\Q_reg[25]_1 [18]),
        .I1(Q),
        .I2(\Q_reg[31]_0 [8]),
        .I3(Data_A[19]),
        .O(\Q[19]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \Q[19]_i_7 
       (.I0(\Q_reg[25]_1 [17]),
        .I1(Q),
        .I2(\Q_reg[31]_0 [8]),
        .I3(Data_A[18]),
        .O(\Q[19]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \Q[19]_i_8 
       (.I0(\Q_reg[25]_1 [16]),
        .I1(Q),
        .I2(\Q_reg[31]_0 [8]),
        .I3(Data_A[17]),
        .O(\Q[19]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \Q[19]_i_9 
       (.I0(\Q_reg[25]_1 [15]),
        .I1(Q),
        .I2(\Q_reg[31]_0 [8]),
        .I3(Data_A[16]),
        .O(\Q[19]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[23]_i_2__1 
       (.I0(\Q_reg[31]_0 [8]),
        .I1(Q),
        .I2(\Q_reg[25]_1 [22]),
        .O(\Q[23]_i_2__1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[23]_i_3 
       (.I0(\Q_reg[31]_0 [8]),
        .I1(Q),
        .I2(\Q_reg[25]_1 [21]),
        .O(\Q[23]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[23]_i_4 
       (.I0(\Q_reg[31]_0 [8]),
        .I1(Q),
        .I2(\Q_reg[25]_1 [20]),
        .O(\Q[23]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[23]_i_5 
       (.I0(\Q_reg[31]_0 [8]),
        .I1(Q),
        .I2(\Q_reg[25]_1 [19]),
        .O(\Q[23]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \Q[23]_i_6 
       (.I0(\Q_reg[25]_1 [22]),
        .I1(Q),
        .I2(\Q_reg[31]_0 [8]),
        .I3(Data_A[23]),
        .O(\Q[23]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \Q[23]_i_7 
       (.I0(\Q_reg[25]_1 [21]),
        .I1(Q),
        .I2(\Q_reg[31]_0 [8]),
        .I3(Data_A[22]),
        .O(\Q[23]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \Q[23]_i_8 
       (.I0(\Q_reg[25]_1 [20]),
        .I1(Q),
        .I2(\Q_reg[31]_0 [8]),
        .I3(Data_A[21]),
        .O(\Q[23]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \Q[23]_i_9 
       (.I0(\Q_reg[25]_1 [19]),
        .I1(Q),
        .I2(\Q_reg[31]_0 [8]),
        .I3(Data_A[20]),
        .O(\Q[23]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[26]_i_3__0 
       (.I0(\Q_reg[31]_0 [8]),
        .I1(Q),
        .I2(\Q_reg[25]_1 [24]),
        .O(\Q[26]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[26]_i_4__0 
       (.I0(\Q_reg[31]_0 [8]),
        .I1(Q),
        .I2(\Q_reg[25]_1 [23]),
        .O(\Q[26]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[26]_i_5__0 
       (.I0(\Q_reg[31]_0 [8]),
        .I1(Q),
        .O(op_mode0));
  LUT4 #(
    .INIT(16'h6996)) 
    \Q[26]_i_7 
       (.I0(\Q_reg[25]_1 [23]),
        .I1(Q),
        .I2(\Q_reg[31]_0 [8]),
        .I3(Data_A[24]),
        .O(\Q[26]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[3]_i_2__2 
       (.I0(\Q_reg[31]_0 [8]),
        .I1(Q),
        .I2(\Q_reg[25]_1 [2]),
        .O(\Q[3]_i_2__2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[3]_i_3__1 
       (.I0(\Q_reg[31]_0 [8]),
        .I1(Q),
        .I2(\Q_reg[25]_1 [1]),
        .O(\Q[3]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[3]_i_4__1 
       (.I0(\Q_reg[31]_0 [8]),
        .I1(Q),
        .O(\Q[3]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \Q[3]_i_5__1 
       (.I0(\Q_reg[25]_1 [2]),
        .I1(Q),
        .I2(\Q_reg[31]_0 [8]),
        .I3(Data_A[3]),
        .O(\Q[3]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \Q[3]_i_6 
       (.I0(\Q_reg[25]_1 [1]),
        .I1(Q),
        .I2(\Q_reg[31]_0 [8]),
        .I3(Data_A[2]),
        .O(\Q[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[3]_i_7 
       (.I0(\Q_reg[31]_0 [8]),
        .I1(Q),
        .I2(\Q_reg[25]_1 [0]),
        .O(\Q[3]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[7]_i_2__3 
       (.I0(\Q_reg[31]_0 [8]),
        .I1(Q),
        .I2(\Q_reg[25]_1 [6]),
        .O(\Q[7]_i_2__3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[7]_i_3__3 
       (.I0(\Q_reg[31]_0 [8]),
        .I1(Q),
        .I2(\Q_reg[25]_1 [5]),
        .O(\Q[7]_i_3__3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[7]_i_4__1 
       (.I0(\Q_reg[31]_0 [8]),
        .I1(Q),
        .I2(\Q_reg[25]_1 [4]),
        .O(\Q[7]_i_4__1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \Q[7]_i_5__1 
       (.I0(\Q_reg[31]_0 [8]),
        .I1(Q),
        .I2(\Q_reg[25]_1 [3]),
        .O(\Q[7]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \Q[7]_i_6 
       (.I0(\Q_reg[25]_1 [6]),
        .I1(Q),
        .I2(\Q_reg[31]_0 [8]),
        .I3(Data_A[7]),
        .O(\Q[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \Q[7]_i_7 
       (.I0(\Q_reg[25]_1 [5]),
        .I1(Q),
        .I2(\Q_reg[31]_0 [8]),
        .I3(Data_A[6]),
        .O(\Q[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \Q[7]_i_8 
       (.I0(\Q_reg[25]_1 [4]),
        .I1(Q),
        .I2(\Q_reg[31]_0 [8]),
        .I3(Data_A[5]),
        .O(\Q[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \Q[7]_i_9 
       (.I0(\Q_reg[25]_1 [3]),
        .I1(Q),
        .I2(\Q_reg[31]_0 [8]),
        .I3(Data_A[4]),
        .O(\Q[7]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [0]),
        .D(\Q_reg[31]_1 [0]),
        .Q(Data_A[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [0]),
        .D(\Q_reg[31]_1 [10]),
        .Q(Data_A[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [0]),
        .D(\Q_reg[31]_1 [11]),
        .Q(Data_A[13]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[11]_i_1 
       (.CI(\Q_reg[7]_i_1_n_0 ),
        .CO({\Q_reg[11]_i_1_n_0 ,\Q_reg[11]_i_1_n_1 ,\Q_reg[11]_i_1_n_2 ,\Q_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q[11]_i_2__1_n_0 ,\Q[11]_i_3__0_n_0 ,\Q[11]_i_4_n_0 ,\Q[11]_i_5_n_0 }),
        .O(D[11:8]),
        .S({\Q[11]_i_6_n_0 ,\Q[11]_i_7_n_0 ,\Q[11]_i_8_n_0 ,\Q[11]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [0]),
        .D(\Q_reg[31]_1 [12]),
        .Q(Data_A[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [0]),
        .D(\Q_reg[31]_1 [13]),
        .Q(Data_A[15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [0]),
        .D(\Q_reg[31]_1 [14]),
        .Q(Data_A[16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [0]),
        .D(\Q_reg[31]_1 [15]),
        .Q(Data_A[17]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[15]_i_1 
       (.CI(\Q_reg[11]_i_1_n_0 ),
        .CO({\Q_reg[15]_i_1_n_0 ,\Q_reg[15]_i_1_n_1 ,\Q_reg[15]_i_1_n_2 ,\Q_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q[15]_i_2__1_n_0 ,\Q[15]_i_3__0_n_0 ,\Q[15]_i_4_n_0 ,\Q[15]_i_5_n_0 }),
        .O(D[15:12]),
        .S({\Q[15]_i_6_n_0 ,\Q[15]_i_7_n_0 ,\Q[15]_i_8_n_0 ,\Q[15]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [0]),
        .D(\Q_reg[31]_1 [16]),
        .Q(Data_A[18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [0]),
        .D(\Q_reg[31]_1 [17]),
        .Q(Data_A[19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [0]),
        .D(\Q_reg[31]_1 [18]),
        .Q(Data_A[20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [0]),
        .D(\Q_reg[31]_1 [19]),
        .Q(Data_A[21]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[19]_i_1 
       (.CI(\Q_reg[15]_i_1_n_0 ),
        .CO({\Q_reg[19]_i_1_n_0 ,\Q_reg[19]_i_1_n_1 ,\Q_reg[19]_i_1_n_2 ,\Q_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q[19]_i_2__1_n_0 ,\Q[19]_i_3__0_n_0 ,\Q[19]_i_4__0_n_0 ,\Q[19]_i_5_n_0 }),
        .O(D[19:16]),
        .S({\Q[19]_i_6_n_0 ,\Q[19]_i_7_n_0 ,\Q[19]_i_8_n_0 ,\Q[19]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [0]),
        .D(\Q_reg[31]_1 [1]),
        .Q(Data_A[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [0]),
        .D(\Q_reg[31]_1 [20]),
        .Q(Data_A[22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [0]),
        .D(\Q_reg[31]_1 [21]),
        .Q(Data_A[23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [0]),
        .D(\Q_reg[31]_1 [22]),
        .Q(Data_A[24]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(\Q_reg[31]_1 [23]),
        .Q(\Q_reg[31]_0 [0]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[23]_i_1 
       (.CI(\Q_reg[19]_i_1_n_0 ),
        .CO({\Q_reg[23]_i_1_n_0 ,\Q_reg[23]_i_1_n_1 ,\Q_reg[23]_i_1_n_2 ,\Q_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q[23]_i_2__1_n_0 ,\Q[23]_i_3_n_0 ,\Q[23]_i_4_n_0 ,\Q[23]_i_5_n_0 }),
        .O(D[23:20]),
        .S({\Q[23]_i_6_n_0 ,\Q[23]_i_7_n_0 ,\Q[23]_i_8_n_0 ,\Q[23]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(\Q_reg[31]_1 [24]),
        .Q(\Q_reg[31]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(\Q_reg[31]_1 [25]),
        .Q(\Q_reg[31]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(\Q_reg[31]_1 [26]),
        .Q(\Q_reg[31]_0 [3]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[26]_i_2 
       (.CI(\Q_reg[23]_i_1_n_0 ),
        .CO({\NLW_Q_reg[26]_i_2_CO_UNCONNECTED [3:2],\Q_reg[26]_i_2_n_2 ,\Q_reg[26]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\Q[26]_i_3__0_n_0 ,\Q[26]_i_4__0_n_0 }),
        .O({\NLW_Q_reg[26]_i_2_O_UNCONNECTED [3],D[26:24]}),
        .S({1'b0,op_mode0,\Q_reg[25]_0 ,\Q[26]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(\Q_reg[31]_1 [27]),
        .Q(\Q_reg[31]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(\Q_reg[31]_1 [28]),
        .Q(\Q_reg[31]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(\Q_reg[31]_1 [29]),
        .Q(\Q_reg[31]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [0]),
        .D(\Q_reg[31]_1 [2]),
        .Q(Data_A[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(\Q_reg[31]_1 [30]),
        .Q(\Q_reg[31]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(\Q_reg[31]_1 [31]),
        .Q(\Q_reg[31]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [0]),
        .D(\Q_reg[31]_1 [3]),
        .Q(Data_A[5]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[3]_i_1__0 
       (.CI(1'b0),
        .CO({\Q_reg[3]_i_1__0_n_0 ,\Q_reg[3]_i_1__0_n_1 ,\Q_reg[3]_i_1__0_n_2 ,\Q_reg[3]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q[3]_i_2__2_n_0 ,\Q[3]_i_3__1_n_0 ,1'b0,\Q[3]_i_4__1_n_0 }),
        .O(D[3:0]),
        .S({\Q[3]_i_5__1_n_0 ,\Q[3]_i_6_n_0 ,\Q[3]_i_7_n_0 ,S}));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [0]),
        .D(\Q_reg[31]_1 [4]),
        .Q(Data_A[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [0]),
        .D(\Q_reg[31]_1 [5]),
        .Q(Data_A[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [0]),
        .D(\Q_reg[31]_1 [6]),
        .Q(Data_A[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [0]),
        .D(\Q_reg[31]_1 [7]),
        .Q(Data_A[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[7]_i_1 
       (.CI(\Q_reg[3]_i_1__0_n_0 ),
        .CO({\Q_reg[7]_i_1_n_0 ,\Q_reg[7]_i_1_n_1 ,\Q_reg[7]_i_1_n_2 ,\Q_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q[7]_i_2__3_n_0 ,\Q[7]_i_3__3_n_0 ,\Q[7]_i_4__1_n_0 ,\Q[7]_i_5__1_n_0 }),
        .O(D[7:4]),
        .S({\Q[7]_i_6_n_0 ,\Q[7]_i_7_n_0 ,\Q[7]_i_8_n_0 ,\Q[7]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [0]),
        .D(\Q_reg[31]_1 [8]),
        .Q(Data_A[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [0]),
        .D(\Q_reg[31]_1 [9]),
        .Q(Data_A[11]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized4
   (\Q_reg[22]_0 ,
    Q,
    \Q_reg[26]_0 ,
    Data_S,
    \Q_reg[1]_0 ,
    \Q_reg[7]_0 ,
    \Q_reg[25]_0 ,
    \Q_reg[31]_0 ,
    \FSM_sequential_state_reg_reg[4] ,
    D,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[4]_0 );
  output \Q_reg[22]_0 ;
  output [23:0]Q;
  output [0:0]\Q_reg[26]_0 ;
  output [7:0]Data_S;
  input [1:0]\Q_reg[1]_0 ;
  input \Q_reg[7]_0 ;
  input [0:0]\Q_reg[25]_0 ;
  input [8:0]\Q_reg[31]_0 ;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;
  input [31:0]D;
  input clk_IBUF_BUFG;
  input [1:0]\FSM_sequential_state_reg_reg[4]_0 ;

  wire [31:0]D;
  wire [7:0]Data_S;
  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire [1:0]\FSM_sequential_state_reg_reg[4]_0 ;
  wire [23:0]Q;
  wire \Q[3]_i_2__0_n_0 ;
  wire \Q[3]_i_3__0_n_0 ;
  wire \Q[3]_i_4__0_n_0 ;
  wire \Q[3]_i_5__0_n_0 ;
  wire \Q[3]_i_6__0_n_0 ;
  wire \Q[3]_i_7__0_n_0 ;
  wire \Q[3]_i_8_n_0 ;
  wire \Q[3]_i_9_n_0 ;
  wire \Q[7]_i_3__1_n_0 ;
  wire \Q[7]_i_4__0_n_0 ;
  wire \Q[7]_i_5__0_n_0 ;
  wire \Q[7]_i_6__0_n_0 ;
  wire \Q[7]_i_7__0_n_0 ;
  wire \Q[7]_i_8__0_n_0 ;
  wire \Q[7]_i_9__0_n_0 ;
  wire [1:0]\Q_reg[1]_0 ;
  wire \Q_reg[22]_0 ;
  wire [0:0]\Q_reg[25]_0 ;
  wire [0:0]\Q_reg[26]_0 ;
  wire [8:0]\Q_reg[31]_0 ;
  wire \Q_reg[3]_i_1_n_0 ;
  wire \Q_reg[3]_i_1_n_1 ;
  wire \Q_reg[3]_i_1_n_2 ;
  wire \Q_reg[3]_i_1_n_3 ;
  wire \Q_reg[7]_0 ;
  wire \Q_reg[7]_i_2__0_n_1 ;
  wire \Q_reg[7]_i_2__0_n_2 ;
  wire \Q_reg[7]_i_2__0_n_3 ;
  wire \Q_reg_n_0_[23] ;
  wire \Q_reg_n_0_[24] ;
  wire \Q_reg_n_0_[25] ;
  wire \Q_reg_n_0_[26] ;
  wire \Q_reg_n_0_[27] ;
  wire \Q_reg_n_0_[28] ;
  wire \Q_reg_n_0_[29] ;
  wire \Q_reg_n_0_[30] ;
  wire clk_IBUF_BUFG;
  wire [3:3]\NLW_Q_reg[7]_i_2__0_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFCBB0000FC880000)) 
    \Q[22]_i_2__0 
       (.I0(Q[22]),
        .I1(\Q_reg[1]_0 [1]),
        .I2(Q[21]),
        .I3(\Q_reg[1]_0 [0]),
        .I4(\Q_reg[7]_0 ),
        .I5(Q[20]),
        .O(\Q_reg[22]_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \Q[26]_i_6 
       (.I0(\Q_reg[25]_0 ),
        .I1(Q[23]),
        .I2(\Q_reg[31]_0 [8]),
        .O(\Q_reg[26]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q[3]_i_2__0 
       (.I0(\Q_reg_n_0_[26] ),
        .O(\Q[3]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q[3]_i_3__0 
       (.I0(\Q_reg_n_0_[25] ),
        .O(\Q[3]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q[3]_i_4__0 
       (.I0(\Q_reg_n_0_[24] ),
        .O(\Q[3]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q[3]_i_5__0 
       (.I0(\Q_reg_n_0_[23] ),
        .O(\Q[3]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q[3]_i_6__0 
       (.I0(\Q_reg_n_0_[26] ),
        .I1(\Q_reg[31]_0 [3]),
        .O(\Q[3]_i_6__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q[3]_i_7__0 
       (.I0(\Q_reg_n_0_[25] ),
        .I1(\Q_reg[31]_0 [2]),
        .O(\Q[3]_i_7__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q[3]_i_8 
       (.I0(\Q_reg_n_0_[24] ),
        .I1(\Q_reg[31]_0 [1]),
        .O(\Q[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q[3]_i_9 
       (.I0(\Q_reg_n_0_[23] ),
        .I1(\Q_reg[31]_0 [0]),
        .O(\Q[3]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q[7]_i_3__1 
       (.I0(\Q_reg_n_0_[29] ),
        .O(\Q[7]_i_3__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q[7]_i_4__0 
       (.I0(\Q_reg_n_0_[28] ),
        .O(\Q[7]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Q[7]_i_5__0 
       (.I0(\Q_reg_n_0_[27] ),
        .O(\Q[7]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q[7]_i_6__0 
       (.I0(\Q_reg_n_0_[30] ),
        .I1(\Q_reg[31]_0 [7]),
        .O(\Q[7]_i_6__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q[7]_i_7__0 
       (.I0(\Q_reg_n_0_[29] ),
        .I1(\Q_reg[31]_0 [6]),
        .O(\Q[7]_i_7__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q[7]_i_8__0 
       (.I0(\Q_reg_n_0_[28] ),
        .I1(\Q_reg[31]_0 [5]),
        .O(\Q[7]_i_8__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q[7]_i_9__0 
       (.I0(\Q_reg_n_0_[27] ),
        .I1(\Q_reg[31]_0 [4]),
        .O(\Q[7]_i_9__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[23]),
        .Q(\Q_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[24]),
        .Q(\Q_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[25]),
        .Q(\Q_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[26]),
        .Q(\Q_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[27]),
        .Q(\Q_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[28]),
        .Q(\Q_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[29]),
        .Q(\Q_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[30]),
        .Q(\Q_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [0]),
        .D(D[31]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[3]),
        .Q(Q[3]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\Q_reg[3]_i_1_n_0 ,\Q_reg[3]_i_1_n_1 ,\Q_reg[3]_i_1_n_2 ,\Q_reg[3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI({\Q[3]_i_2__0_n_0 ,\Q[3]_i_3__0_n_0 ,\Q[3]_i_4__0_n_0 ,\Q[3]_i_5__0_n_0 }),
        .O(Data_S[3:0]),
        .S({\Q[3]_i_6__0_n_0 ,\Q[3]_i_7__0_n_0 ,\Q[3]_i_8_n_0 ,\Q[3]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[7]),
        .Q(Q[7]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[7]_i_2__0 
       (.CI(\Q_reg[3]_i_1_n_0 ),
        .CO({\NLW_Q_reg[7]_i_2__0_CO_UNCONNECTED [3],\Q_reg[7]_i_2__0_n_1 ,\Q_reg[7]_i_2__0_n_2 ,\Q_reg[7]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\Q[7]_i_3__1_n_0 ,\Q[7]_i_4__0_n_0 ,\Q[7]_i_5__0_n_0 }),
        .O(Data_S[7:4]),
        .S({\Q[7]_i_6__0_n_0 ,\Q[7]_i_7__0_n_0 ,\Q[7]_i_8__0_n_0 ,\Q[7]_i_9__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(\FSM_sequential_state_reg_reg[4]_0 [1]),
        .D(D[9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized5
   (D,
    Q,
    \Q_reg[25] ,
    \Q_reg[22] ,
    \Q_reg[22]_0 ,
    E,
    Data_S,
    clk_IBUF_BUFG,
    AR);
  output [25:0]D;
  output [1:0]Q;
  output \Q_reg[25] ;
  input [22:0]\Q_reg[22] ;
  input \Q_reg[22]_0 ;
  input [0:0]E;
  input [7:0]Data_S;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [25:0]D;
  wire [7:0]Data_S;
  wire [0:0]E;
  wire [1:0]Q;
  wire \Q[0]_i_3__1_n_0 ;
  wire \Q[0]_i_4_n_0 ;
  wire \Q[10]_i_2_n_0 ;
  wire \Q[10]_i_3_n_0 ;
  wire \Q[11]_i_2_n_0 ;
  wire \Q[11]_i_3_n_0 ;
  wire \Q[12]_i_2_n_0 ;
  wire \Q[12]_i_3_n_0 ;
  wire \Q[12]_i_4_n_0 ;
  wire \Q[13]_i_2_n_0 ;
  wire \Q[13]_i_3_n_0 ;
  wire \Q[14]_i_2_n_0 ;
  wire \Q[14]_i_3_n_0 ;
  wire \Q[15]_i_2_n_0 ;
  wire \Q[15]_i_3_n_0 ;
  wire \Q[16]_i_2_n_0 ;
  wire \Q[16]_i_3_n_0 ;
  wire \Q[17]_i_2_n_0 ;
  wire \Q[17]_i_3_n_0 ;
  wire \Q[17]_i_4_n_0 ;
  wire \Q[18]_i_2_n_0 ;
  wire \Q[18]_i_3_n_0 ;
  wire \Q[19]_i_2_n_0 ;
  wire \Q[19]_i_3_n_0 ;
  wire \Q[19]_i_4_n_0 ;
  wire \Q[1]_i_2_n_0 ;
  wire \Q[1]_i_3_n_0 ;
  wire \Q[20]_i_2_n_0 ;
  wire \Q[20]_i_3_n_0 ;
  wire \Q[20]_i_4_n_0 ;
  wire \Q[21]_i_2_n_0 ;
  wire \Q[21]_i_3_n_0 ;
  wire \Q[21]_i_4_n_0 ;
  wire \Q[23]_i_2_n_0 ;
  wire \Q[24]_i_2_n_0 ;
  wire \Q[2]_i_2_n_0 ;
  wire \Q[2]_i_3_n_0 ;
  wire \Q[2]_i_4_n_0 ;
  wire \Q[2]_i_5_n_0 ;
  wire \Q[3]_i_2_n_0 ;
  wire \Q[3]_i_3_n_0 ;
  wire \Q[3]_i_4_n_0 ;
  wire \Q[3]_i_5_n_0 ;
  wire \Q[4]_i_2_n_0 ;
  wire \Q[4]_i_3_n_0 ;
  wire \Q[5]_i_2_n_0 ;
  wire \Q[5]_i_3_n_0 ;
  wire \Q[6]_i_2_n_0 ;
  wire \Q[6]_i_3_n_0 ;
  wire \Q[7]_i_2_n_0 ;
  wire \Q[7]_i_3_n_0 ;
  wire \Q[8]_i_2_n_0 ;
  wire \Q[8]_i_3_n_0 ;
  wire \Q[9]_i_2_n_0 ;
  wire \Q[9]_i_3_n_0 ;
  wire [22:0]\Q_reg[22] ;
  wire \Q_reg[22]_0 ;
  wire \Q_reg[25] ;
  wire \Q_reg_n_0_[2] ;
  wire \Q_reg_n_0_[3] ;
  wire \Q_reg_n_0_[4] ;
  wire \Q_reg_n_0_[5] ;
  wire \Q_reg_n_0_[6] ;
  wire \Q_reg_n_0_[7] ;
  wire clk_IBUF_BUFG;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[0]_i_1__0 
       (.I0(\Q[0]_i_3__1_n_0 ),
        .I1(\Q[16]_i_2_n_0 ),
        .I2(\Q_reg_n_0_[4] ),
        .I3(\Q[8]_i_2_n_0 ),
        .I4(\Q_reg_n_0_[3] ),
        .I5(\Q[0]_i_4_n_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h00005040)) 
    \Q[0]_i_3__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\Q_reg[25] ),
        .I3(\Q_reg[22] [22]),
        .I4(\Q_reg_n_0_[2] ),
        .O(\Q[0]_i_3__1_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \Q[0]_i_4 
       (.I0(\Q[6]_i_3_n_0 ),
        .I1(\Q[4]_i_3_n_0 ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\Q[2]_i_5_n_0 ),
        .I4(Q[1]),
        .O(\Q[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \Q[10]_i_1 
       (.I0(\Q[10]_i_2_n_0 ),
        .I1(\Q_reg_n_0_[3] ),
        .I2(\Q[18]_i_2_n_0 ),
        .I3(\Q_reg_n_0_[2] ),
        .I4(\Q_reg[22]_0 ),
        .I5(\Q_reg_n_0_[4] ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[10]_i_2 
       (.I0(\Q[16]_i_3_n_0 ),
        .I1(\Q[14]_i_3_n_0 ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\Q[12]_i_4_n_0 ),
        .I4(Q[1]),
        .I5(\Q[10]_i_3_n_0 ),
        .O(\Q[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000B00000008)) 
    \Q[10]_i_3 
       (.I0(\Q_reg[22] [9]),
        .I1(Q[0]),
        .I2(\Q_reg_n_0_[5] ),
        .I3(\Q_reg_n_0_[6] ),
        .I4(\Q_reg_n_0_[7] ),
        .I5(\Q_reg[22] [8]),
        .O(\Q[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \Q[11]_i_1 
       (.I0(\Q[11]_i_2_n_0 ),
        .I1(\Q_reg_n_0_[3] ),
        .I2(\Q[19]_i_3_n_0 ),
        .I3(\Q_reg_n_0_[2] ),
        .I4(\Q[19]_i_2_n_0 ),
        .I5(\Q_reg_n_0_[4] ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[11]_i_2 
       (.I0(\Q[17]_i_4_n_0 ),
        .I1(\Q[15]_i_3_n_0 ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\Q[13]_i_3_n_0 ),
        .I4(Q[1]),
        .I5(\Q[11]_i_3_n_0 ),
        .O(\Q[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000B00000008)) 
    \Q[11]_i_3 
       (.I0(\Q_reg[22] [10]),
        .I1(Q[0]),
        .I2(\Q_reg_n_0_[5] ),
        .I3(\Q_reg_n_0_[6] ),
        .I4(\Q_reg_n_0_[7] ),
        .I5(\Q_reg[22] [9]),
        .O(\Q[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \Q[12]_i_1 
       (.I0(\Q[12]_i_2_n_0 ),
        .I1(\Q_reg_n_0_[3] ),
        .I2(\Q[12]_i_3_n_0 ),
        .I3(\Q_reg_n_0_[4] ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[12]_i_2 
       (.I0(\Q[18]_i_3_n_0 ),
        .I1(\Q[16]_i_3_n_0 ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\Q[14]_i_3_n_0 ),
        .I4(Q[1]),
        .I5(\Q[12]_i_4_n_0 ),
        .O(\Q[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[12]_i_3 
       (.I0(\Q[24]_i_2_n_0 ),
        .I1(\Q_reg_n_0_[2] ),
        .I2(\Q[20]_i_4_n_0 ),
        .I3(Q[1]),
        .I4(\Q[20]_i_3_n_0 ),
        .O(\Q[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000B00000008)) 
    \Q[12]_i_4 
       (.I0(\Q_reg[22] [11]),
        .I1(Q[0]),
        .I2(\Q_reg_n_0_[5] ),
        .I3(\Q_reg_n_0_[6] ),
        .I4(\Q_reg_n_0_[7] ),
        .I5(\Q_reg[22] [10]),
        .O(\Q[12]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \Q[13]_i_1 
       (.I0(\Q[13]_i_2_n_0 ),
        .I1(\Q_reg_n_0_[3] ),
        .I2(\Q[21]_i_2_n_0 ),
        .I3(\Q_reg_n_0_[4] ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[13]_i_2 
       (.I0(\Q[19]_i_4_n_0 ),
        .I1(\Q[17]_i_4_n_0 ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\Q[15]_i_3_n_0 ),
        .I4(Q[1]),
        .I5(\Q[13]_i_3_n_0 ),
        .O(\Q[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000B00000008)) 
    \Q[13]_i_3 
       (.I0(\Q_reg[22] [12]),
        .I1(Q[0]),
        .I2(\Q_reg_n_0_[5] ),
        .I3(\Q_reg_n_0_[6] ),
        .I4(\Q_reg_n_0_[7] ),
        .I5(\Q_reg[22] [11]),
        .O(\Q[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00002E22)) 
    \Q[14]_i_1 
       (.I0(\Q[14]_i_2_n_0 ),
        .I1(\Q_reg_n_0_[3] ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\Q_reg[22]_0 ),
        .I4(\Q_reg_n_0_[4] ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[14]_i_2 
       (.I0(\Q[20]_i_3_n_0 ),
        .I1(\Q[18]_i_3_n_0 ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\Q[16]_i_3_n_0 ),
        .I4(Q[1]),
        .I5(\Q[14]_i_3_n_0 ),
        .O(\Q[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000B00000008)) 
    \Q[14]_i_3 
       (.I0(\Q_reg[22] [13]),
        .I1(Q[0]),
        .I2(\Q_reg_n_0_[5] ),
        .I3(\Q_reg_n_0_[6] ),
        .I4(\Q_reg_n_0_[7] ),
        .I5(\Q_reg[22] [12]),
        .O(\Q[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \Q[15]_i_1 
       (.I0(\Q[15]_i_2_n_0 ),
        .I1(\Q_reg_n_0_[3] ),
        .I2(\Q[23]_i_2_n_0 ),
        .I3(\Q_reg_n_0_[4] ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[15]_i_2 
       (.I0(\Q[21]_i_4_n_0 ),
        .I1(\Q[19]_i_4_n_0 ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\Q[17]_i_4_n_0 ),
        .I4(Q[1]),
        .I5(\Q[15]_i_3_n_0 ),
        .O(\Q[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000B00000008)) 
    \Q[15]_i_3 
       (.I0(\Q_reg[22] [14]),
        .I1(Q[0]),
        .I2(\Q_reg_n_0_[5] ),
        .I3(\Q_reg_n_0_[6] ),
        .I4(\Q_reg_n_0_[7] ),
        .I5(\Q_reg[22] [13]),
        .O(\Q[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00002E22)) 
    \Q[16]_i_1 
       (.I0(\Q[16]_i_2_n_0 ),
        .I1(\Q_reg_n_0_[3] ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\Q[24]_i_2_n_0 ),
        .I4(\Q_reg_n_0_[4] ),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[16]_i_2 
       (.I0(\Q[20]_i_4_n_0 ),
        .I1(\Q[20]_i_3_n_0 ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\Q[18]_i_3_n_0 ),
        .I4(Q[1]),
        .I5(\Q[16]_i_3_n_0 ),
        .O(\Q[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000B00000008)) 
    \Q[16]_i_3 
       (.I0(\Q_reg[22] [15]),
        .I1(Q[0]),
        .I2(\Q_reg_n_0_[5] ),
        .I3(\Q_reg_n_0_[6] ),
        .I4(\Q_reg_n_0_[7] ),
        .I5(\Q_reg[22] [14]),
        .O(\Q[16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \Q[17]_i_1 
       (.I0(\Q[17]_i_2_n_0 ),
        .I1(\Q_reg_n_0_[3] ),
        .I2(\Q[17]_i_3_n_0 ),
        .I3(\Q_reg_n_0_[4] ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[17]_i_2 
       (.I0(\Q[21]_i_3_n_0 ),
        .I1(\Q[21]_i_4_n_0 ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\Q[19]_i_4_n_0 ),
        .I4(Q[1]),
        .I5(\Q[17]_i_4_n_0 ),
        .O(\Q[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \Q[17]_i_3 
       (.I0(Q[1]),
        .I1(\Q_reg_n_0_[5] ),
        .I2(\Q_reg_n_0_[6] ),
        .I3(\Q_reg_n_0_[7] ),
        .I4(Q[0]),
        .I5(\Q_reg_n_0_[2] ),
        .O(\Q[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000B00000008)) 
    \Q[17]_i_4 
       (.I0(\Q_reg[22] [16]),
        .I1(Q[0]),
        .I2(\Q_reg_n_0_[5] ),
        .I3(\Q_reg_n_0_[6] ),
        .I4(\Q_reg_n_0_[7] ),
        .I5(\Q_reg[22] [15]),
        .O(\Q[17]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00004540)) 
    \Q[18]_i_1 
       (.I0(\Q_reg_n_0_[3] ),
        .I1(\Q_reg[22]_0 ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\Q[18]_i_2_n_0 ),
        .I4(\Q_reg_n_0_[4] ),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \Q[18]_i_2 
       (.I0(\Q_reg[22] [19]),
        .I1(Q[0]),
        .I2(\Q_reg[25] ),
        .I3(\Q_reg[22] [18]),
        .I4(Q[1]),
        .I5(\Q[18]_i_3_n_0 ),
        .O(\Q[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000B00000008)) 
    \Q[18]_i_3 
       (.I0(\Q_reg[22] [17]),
        .I1(Q[0]),
        .I2(\Q_reg_n_0_[5] ),
        .I3(\Q_reg_n_0_[6] ),
        .I4(\Q_reg_n_0_[7] ),
        .I5(\Q_reg[22] [16]),
        .O(\Q[18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00004540)) 
    \Q[19]_i_1 
       (.I0(\Q_reg_n_0_[3] ),
        .I1(\Q[19]_i_2_n_0 ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\Q[19]_i_3_n_0 ),
        .I4(\Q_reg_n_0_[4] ),
        .O(D[19]));
  LUT5 #(
    .INIT(32'h4F004A00)) 
    \Q[19]_i_2 
       (.I0(Q[1]),
        .I1(\Q_reg[22] [22]),
        .I2(Q[0]),
        .I3(\Q_reg[25] ),
        .I4(\Q_reg[22] [21]),
        .O(\Q[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \Q[19]_i_3 
       (.I0(\Q_reg[22] [20]),
        .I1(Q[0]),
        .I2(\Q_reg[25] ),
        .I3(\Q_reg[22] [19]),
        .I4(Q[1]),
        .I5(\Q[19]_i_4_n_0 ),
        .O(\Q[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000B00000008)) 
    \Q[19]_i_4 
       (.I0(\Q_reg[22] [18]),
        .I1(Q[0]),
        .I2(\Q_reg_n_0_[5] ),
        .I3(\Q_reg_n_0_[6] ),
        .I4(\Q_reg_n_0_[7] ),
        .I5(\Q_reg[22] [17]),
        .O(\Q[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[1]_i_1 
       (.I0(\Q[17]_i_3_n_0 ),
        .I1(\Q[17]_i_2_n_0 ),
        .I2(\Q_reg_n_0_[4] ),
        .I3(\Q[9]_i_2_n_0 ),
        .I4(\Q_reg_n_0_[3] ),
        .I5(\Q[1]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[1]_i_2 
       (.I0(\Q[7]_i_3_n_0 ),
        .I1(\Q[5]_i_3_n_0 ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\Q[3]_i_5_n_0 ),
        .I4(Q[1]),
        .I5(\Q[1]_i_3_n_0 ),
        .O(\Q[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \Q[1]_i_3 
       (.I0(\Q_reg[22] [0]),
        .I1(\Q_reg_n_0_[7] ),
        .I2(\Q_reg_n_0_[6] ),
        .I3(\Q_reg_n_0_[5] ),
        .I4(Q[0]),
        .O(\Q[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q[20]_i_1 
       (.I0(\Q[20]_i_2_n_0 ),
        .I1(\Q_reg_n_0_[4] ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \Q[20]_i_2 
       (.I0(\Q[20]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(\Q[20]_i_4_n_0 ),
        .I3(\Q_reg_n_0_[2] ),
        .I4(\Q[24]_i_2_n_0 ),
        .I5(\Q_reg_n_0_[3] ),
        .O(\Q[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000B00000008)) 
    \Q[20]_i_3 
       (.I0(\Q_reg[22] [19]),
        .I1(Q[0]),
        .I2(\Q_reg_n_0_[5] ),
        .I3(\Q_reg_n_0_[6] ),
        .I4(\Q_reg_n_0_[7] ),
        .I5(\Q_reg[22] [18]),
        .O(\Q[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000B00000008)) 
    \Q[20]_i_4 
       (.I0(\Q_reg[22] [21]),
        .I1(Q[0]),
        .I2(\Q_reg_n_0_[5] ),
        .I3(\Q_reg_n_0_[6] ),
        .I4(\Q_reg_n_0_[7] ),
        .I5(\Q_reg[22] [20]),
        .O(\Q[20]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \Q[21]_i_1 
       (.I0(\Q_reg_n_0_[3] ),
        .I1(\Q[21]_i_2_n_0 ),
        .I2(\Q_reg_n_0_[4] ),
        .O(D[21]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \Q[21]_i_2 
       (.I0(Q[0]),
        .I1(\Q_reg[25] ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\Q[21]_i_3_n_0 ),
        .I4(Q[1]),
        .I5(\Q[21]_i_4_n_0 ),
        .O(\Q[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000B00000008)) 
    \Q[21]_i_3 
       (.I0(\Q_reg[22] [22]),
        .I1(Q[0]),
        .I2(\Q_reg_n_0_[5] ),
        .I3(\Q_reg_n_0_[6] ),
        .I4(\Q_reg_n_0_[7] ),
        .I5(\Q_reg[22] [21]),
        .O(\Q[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000B00000008)) 
    \Q[21]_i_4 
       (.I0(\Q_reg[22] [20]),
        .I1(Q[0]),
        .I2(\Q_reg_n_0_[5] ),
        .I3(\Q_reg_n_0_[6] ),
        .I4(\Q_reg_n_0_[7] ),
        .I5(\Q_reg[22] [19]),
        .O(\Q[21]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \Q[22]_i_1__0 
       (.I0(\Q_reg_n_0_[3] ),
        .I1(\Q_reg[22]_0 ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\Q_reg_n_0_[4] ),
        .O(D[22]));
  LUT3 #(
    .INIT(8'h04)) 
    \Q[23]_i_1__0 
       (.I0(\Q_reg_n_0_[3] ),
        .I1(\Q[23]_i_2_n_0 ),
        .I2(\Q_reg_n_0_[4] ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'h000000000C0CC808)) 
    \Q[23]_i_2 
       (.I0(\Q_reg[22] [21]),
        .I1(\Q_reg[25] ),
        .I2(Q[0]),
        .I3(\Q_reg[22] [22]),
        .I4(Q[1]),
        .I5(\Q_reg_n_0_[2] ),
        .O(\Q[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \Q[24]_i_1__0 
       (.I0(\Q_reg_n_0_[3] ),
        .I1(\Q[24]_i_2_n_0 ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\Q_reg_n_0_[4] ),
        .O(D[24]));
  LUT6 #(
    .INIT(64'h0000000000030002)) 
    \Q[24]_i_2 
       (.I0(\Q_reg[22] [22]),
        .I1(\Q_reg_n_0_[7] ),
        .I2(\Q_reg_n_0_[6] ),
        .I3(\Q_reg_n_0_[5] ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\Q[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \Q[25]_i_2 
       (.I0(\Q_reg_n_0_[3] ),
        .I1(Q[1]),
        .I2(\Q_reg[25] ),
        .I3(Q[0]),
        .I4(\Q_reg_n_0_[2] ),
        .I5(\Q_reg_n_0_[4] ),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \Q[25]_i_3 
       (.I0(\Q_reg_n_0_[7] ),
        .I1(\Q_reg_n_0_[6] ),
        .I2(\Q_reg_n_0_[5] ),
        .O(\Q_reg[25] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Q[2]_i_1 
       (.I0(\Q[2]_i_2_n_0 ),
        .I1(\Q_reg_n_0_[4] ),
        .I2(\Q[10]_i_2_n_0 ),
        .I3(\Q_reg_n_0_[3] ),
        .I4(\Q[2]_i_3_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[2]_i_2 
       (.I0(\Q[2]_i_4_n_0 ),
        .I1(\Q[20]_i_4_n_0 ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\Q[20]_i_3_n_0 ),
        .I4(Q[1]),
        .I5(\Q[18]_i_3_n_0 ),
        .O(\Q[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[2]_i_3 
       (.I0(\Q[8]_i_3_n_0 ),
        .I1(\Q[6]_i_3_n_0 ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\Q[4]_i_3_n_0 ),
        .I4(Q[1]),
        .I5(\Q[2]_i_5_n_0 ),
        .O(\Q[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00030002)) 
    \Q[2]_i_4 
       (.I0(Q[0]),
        .I1(\Q_reg_n_0_[5] ),
        .I2(\Q_reg_n_0_[6] ),
        .I3(\Q_reg_n_0_[7] ),
        .I4(\Q_reg[22] [22]),
        .O(\Q[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000B00000008)) 
    \Q[2]_i_5 
       (.I0(\Q_reg[22] [1]),
        .I1(Q[0]),
        .I2(\Q_reg_n_0_[5] ),
        .I3(\Q_reg_n_0_[6] ),
        .I4(\Q_reg_n_0_[7] ),
        .I5(\Q_reg[22] [0]),
        .O(\Q[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Q[3]_i_1 
       (.I0(\Q[3]_i_2_n_0 ),
        .I1(\Q_reg_n_0_[4] ),
        .I2(\Q[11]_i_2_n_0 ),
        .I3(\Q_reg_n_0_[3] ),
        .I4(\Q[3]_i_3_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[3]_i_2 
       (.I0(\Q[3]_i_4_n_0 ),
        .I1(\Q[21]_i_3_n_0 ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\Q[21]_i_4_n_0 ),
        .I4(Q[1]),
        .I5(\Q[19]_i_4_n_0 ),
        .O(\Q[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[3]_i_3 
       (.I0(\Q[9]_i_3_n_0 ),
        .I1(\Q[7]_i_3_n_0 ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\Q[5]_i_3_n_0 ),
        .I4(Q[1]),
        .I5(\Q[3]_i_5_n_0 ),
        .O(\Q[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \Q[3]_i_4 
       (.I0(\Q_reg_n_0_[5] ),
        .I1(\Q_reg_n_0_[6] ),
        .I2(\Q_reg_n_0_[7] ),
        .I3(Q[0]),
        .O(\Q[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000B00000008)) 
    \Q[3]_i_5 
       (.I0(\Q_reg[22] [2]),
        .I1(Q[0]),
        .I2(\Q_reg_n_0_[5] ),
        .I3(\Q_reg_n_0_[6] ),
        .I4(\Q_reg_n_0_[7] ),
        .I5(\Q_reg[22] [1]),
        .O(\Q[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[4]_i_1 
       (.I0(\Q[20]_i_2_n_0 ),
        .I1(\Q_reg_n_0_[4] ),
        .I2(\Q[12]_i_2_n_0 ),
        .I3(\Q_reg_n_0_[3] ),
        .I4(\Q[4]_i_2_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[4]_i_2 
       (.I0(\Q[10]_i_3_n_0 ),
        .I1(\Q[8]_i_3_n_0 ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\Q[6]_i_3_n_0 ),
        .I4(Q[1]),
        .I5(\Q[4]_i_3_n_0 ),
        .O(\Q[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000B00000008)) 
    \Q[4]_i_3 
       (.I0(\Q_reg[22] [3]),
        .I1(Q[0]),
        .I2(\Q_reg_n_0_[5] ),
        .I3(\Q_reg_n_0_[6] ),
        .I4(\Q_reg_n_0_[7] ),
        .I5(\Q_reg[22] [2]),
        .O(\Q[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Q[5]_i_1 
       (.I0(\Q[21]_i_2_n_0 ),
        .I1(\Q_reg_n_0_[4] ),
        .I2(\Q[13]_i_2_n_0 ),
        .I3(\Q_reg_n_0_[3] ),
        .I4(\Q[5]_i_2_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[5]_i_2 
       (.I0(\Q[11]_i_3_n_0 ),
        .I1(\Q[9]_i_3_n_0 ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\Q[7]_i_3_n_0 ),
        .I4(Q[1]),
        .I5(\Q[5]_i_3_n_0 ),
        .O(\Q[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000B00000008)) 
    \Q[5]_i_3 
       (.I0(\Q_reg[22] [4]),
        .I1(Q[0]),
        .I2(\Q_reg_n_0_[5] ),
        .I3(\Q_reg_n_0_[6] ),
        .I4(\Q_reg_n_0_[7] ),
        .I5(\Q_reg[22] [3]),
        .O(\Q[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \Q[6]_i_1 
       (.I0(\Q_reg_n_0_[2] ),
        .I1(\Q_reg[22]_0 ),
        .I2(\Q_reg_n_0_[4] ),
        .I3(\Q[14]_i_2_n_0 ),
        .I4(\Q_reg_n_0_[3] ),
        .I5(\Q[6]_i_2_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[6]_i_2 
       (.I0(\Q[12]_i_4_n_0 ),
        .I1(\Q[10]_i_3_n_0 ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\Q[8]_i_3_n_0 ),
        .I4(Q[1]),
        .I5(\Q[6]_i_3_n_0 ),
        .O(\Q[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000B00000008)) 
    \Q[6]_i_3 
       (.I0(\Q_reg[22] [5]),
        .I1(Q[0]),
        .I2(\Q_reg_n_0_[5] ),
        .I3(\Q_reg_n_0_[6] ),
        .I4(\Q_reg_n_0_[7] ),
        .I5(\Q_reg[22] [4]),
        .O(\Q[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Q[7]_i_1__5 
       (.I0(\Q[23]_i_2_n_0 ),
        .I1(\Q_reg_n_0_[4] ),
        .I2(\Q[15]_i_2_n_0 ),
        .I3(\Q_reg_n_0_[3] ),
        .I4(\Q[7]_i_2_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[7]_i_2 
       (.I0(\Q[13]_i_3_n_0 ),
        .I1(\Q[11]_i_3_n_0 ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\Q[9]_i_3_n_0 ),
        .I4(Q[1]),
        .I5(\Q[7]_i_3_n_0 ),
        .O(\Q[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000B00000008)) 
    \Q[7]_i_3 
       (.I0(\Q_reg[22] [6]),
        .I1(Q[0]),
        .I2(\Q_reg_n_0_[5] ),
        .I3(\Q_reg_n_0_[6] ),
        .I4(\Q_reg_n_0_[7] ),
        .I5(\Q_reg[22] [5]),
        .O(\Q[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \Q[8]_i_1 
       (.I0(\Q_reg_n_0_[2] ),
        .I1(\Q[24]_i_2_n_0 ),
        .I2(\Q_reg_n_0_[4] ),
        .I3(\Q[16]_i_2_n_0 ),
        .I4(\Q_reg_n_0_[3] ),
        .I5(\Q[8]_i_2_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[8]_i_2 
       (.I0(\Q[14]_i_3_n_0 ),
        .I1(\Q[12]_i_4_n_0 ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\Q[10]_i_3_n_0 ),
        .I4(Q[1]),
        .I5(\Q[8]_i_3_n_0 ),
        .O(\Q[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000B00000008)) 
    \Q[8]_i_3 
       (.I0(\Q_reg[22] [7]),
        .I1(Q[0]),
        .I2(\Q_reg_n_0_[5] ),
        .I3(\Q_reg_n_0_[6] ),
        .I4(\Q_reg_n_0_[7] ),
        .I5(\Q_reg[22] [6]),
        .O(\Q[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Q[9]_i_1 
       (.I0(\Q[17]_i_3_n_0 ),
        .I1(\Q_reg_n_0_[4] ),
        .I2(\Q[17]_i_2_n_0 ),
        .I3(\Q_reg_n_0_[3] ),
        .I4(\Q[9]_i_2_n_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[9]_i_2 
       (.I0(\Q[15]_i_3_n_0 ),
        .I1(\Q[13]_i_3_n_0 ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\Q[11]_i_3_n_0 ),
        .I4(Q[1]),
        .I5(\Q[9]_i_3_n_0 ),
        .O(\Q[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000B00000008)) 
    \Q[9]_i_3 
       (.I0(\Q_reg[22] [8]),
        .I1(Q[0]),
        .I2(\Q_reg_n_0_[5] ),
        .I3(\Q_reg_n_0_[6] ),
        .I4(\Q_reg_n_0_[7] ),
        .I5(\Q_reg[22] [7]),
        .O(\Q[9]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(Data_S[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(Data_S[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(Data_S[2]),
        .Q(\Q_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(Data_S[3]),
        .Q(\Q_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(Data_S[4]),
        .Q(\Q_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(Data_S[5]),
        .Q(\Q_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(Data_S[6]),
        .Q(\Q_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(Data_S[7]),
        .Q(\Q_reg_n_0_[7] ));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized6
   (S,
    \Q_reg[26] ,
    \FSM_sequential_state_reg_reg[4] ,
    D,
    clk_IBUF_BUFG,
    AR);
  output [0:0]S;
  output [24:0]\Q_reg[26] ;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;
  input [25:0]D;
  input clk_IBUF_BUFG;
  input [1:0]AR;

  wire [1:0]AR;
  wire [25:0]D;
  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire [24:0]\Q_reg[26] ;
  wire \Q_reg_n_0_[0] ;
  wire [0:0]S;
  wire clk_IBUF_BUFG;

  LUT1 #(
    .INIT(2'h2)) 
    \Q[3]_i_8__0 
       (.I0(\Q_reg_n_0_[0] ),
        .O(S));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[0]),
        .D(D[0]),
        .Q(\Q_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[1]),
        .D(D[10]),
        .Q(\Q_reg[26] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[1]),
        .D(D[11]),
        .Q(\Q_reg[26] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[1]),
        .D(D[12]),
        .Q(\Q_reg[26] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[1]),
        .D(D[13]),
        .Q(\Q_reg[26] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[1]),
        .D(D[14]),
        .Q(\Q_reg[26] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[1]),
        .D(D[15]),
        .Q(\Q_reg[26] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[1]),
        .D(D[16]),
        .Q(\Q_reg[26] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[1]),
        .D(D[17]),
        .Q(\Q_reg[26] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[1]),
        .D(D[18]),
        .Q(\Q_reg[26] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[1]),
        .D(D[19]),
        .Q(\Q_reg[26] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[1]),
        .D(D[1]),
        .Q(\Q_reg[26] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[1]),
        .D(D[20]),
        .Q(\Q_reg[26] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[1]),
        .D(D[21]),
        .Q(\Q_reg[26] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[1]),
        .D(D[22]),
        .Q(\Q_reg[26] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[1]),
        .D(D[23]),
        .Q(\Q_reg[26] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[1]),
        .D(D[24]),
        .Q(\Q_reg[26] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[1]),
        .D(D[25]),
        .Q(\Q_reg[26] [24]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[1]),
        .D(D[2]),
        .Q(\Q_reg[26] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[1]),
        .D(D[3]),
        .Q(\Q_reg[26] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[1]),
        .D(D[4]),
        .Q(\Q_reg[26] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[1]),
        .D(D[5]),
        .Q(\Q_reg[26] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[1]),
        .D(D[6]),
        .Q(\Q_reg[26] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[1]),
        .D(D[7]),
        .Q(\Q_reg[26] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[1]),
        .D(D[8]),
        .Q(\Q_reg[26] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[1]),
        .D(D[9]),
        .Q(\Q_reg[26] [8]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized7
   (Q,
    E,
    D,
    CLK,
    AR);
  output [26:0]Q;
  input [0:0]E;
  input [26:0]D;
  input CLK;
  input [2:0]AR;

  wire [2:0]AR;
  wire CLK;
  wire [26:0]D;
  wire [0:0]E;
  wire [26:0]Q;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[2]),
        .D(D[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[2]),
        .D(D[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[2]),
        .D(D[12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[2]),
        .D(D[13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[2]),
        .D(D[14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[2]),
        .D(D[15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[2]),
        .D(D[16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[2]),
        .D(D[17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[2]),
        .D(D[18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[2]),
        .D(D[19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[2]),
        .D(D[20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[2]),
        .D(D[21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[2]),
        .D(D[22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[2]),
        .D(D[23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[2]),
        .D(D[24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[2]),
        .D(D[25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[2]),
        .D(D[26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[2]),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[2]),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[2]),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[2]),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[2]),
        .D(D[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[2]),
        .D(D[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[2]),
        .D(D[9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized8
   (p_0_in,
    S,
    \Q_reg[23]_0 ,
    r_mode_IBUF,
    Q,
    \Q_reg[0]_0 ,
    \FSM_sequential_state_reg_reg[4] ,
    \Q_reg[25]_0 ,
    clk_IBUF_BUFG,
    AR);
  output p_0_in;
  output [0:0]S;
  output [23:0]\Q_reg[23]_0 ;
  input [1:0]r_mode_IBUF;
  input [0:0]Q;
  input [0:0]\Q_reg[0]_0 ;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;
  input [25:0]\Q_reg[25]_0 ;
  input clk_IBUF_BUFG;
  input [1:0]AR;

  wire [1:0]AR;
  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire [0:0]Q;
  wire [0:0]\Q_reg[0]_0 ;
  wire [23:0]\Q_reg[23]_0 ;
  wire [25:0]\Q_reg[25]_0 ;
  wire [0:0]S;
  wire clk_IBUF_BUFG;
  wire p_0_in;
  wire [1:0]r_mode_IBUF;
  wire [1:0]sel;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[1]),
        .D(\Q_reg[25]_0 [0]),
        .Q(sel[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [10]),
        .Q(\Q_reg[23]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [11]),
        .Q(\Q_reg[23]_0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [12]),
        .Q(\Q_reg[23]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [13]),
        .Q(\Q_reg[23]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [14]),
        .Q(\Q_reg[23]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [15]),
        .Q(\Q_reg[23]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [16]),
        .Q(\Q_reg[23]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [17]),
        .Q(\Q_reg[23]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [18]),
        .Q(\Q_reg[23]_0 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [19]),
        .Q(\Q_reg[23]_0 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[1]),
        .D(\Q_reg[25]_0 [1]),
        .Q(sel[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [20]),
        .Q(\Q_reg[23]_0 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [21]),
        .Q(\Q_reg[23]_0 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [22]),
        .Q(\Q_reg[23]_0 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [23]),
        .Q(\Q_reg[23]_0 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [24]),
        .Q(\Q_reg[23]_0 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [25]),
        .Q(\Q_reg[23]_0 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[1]),
        .D(\Q_reg[25]_0 [2]),
        .Q(\Q_reg[23]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [3]),
        .Q(\Q_reg[23]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [4]),
        .Q(\Q_reg[23]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [5]),
        .Q(\Q_reg[23]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [6]),
        .Q(\Q_reg[23]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [7]),
        .Q(\Q_reg[23]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [8]),
        .Q(\Q_reg[23]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[4] ),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [9]),
        .Q(\Q_reg[23]_0 [7]));
  LUT5 #(
    .INIT(32'h00E00E00)) 
    g0_b0
       (.I0(sel[0]),
        .I1(sel[1]),
        .I2(r_mode_IBUF[0]),
        .I3(r_mode_IBUF[1]),
        .I4(Q),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'hFF1FF1FF00E00E00)) 
    g0_b0__0
       (.I0(sel[0]),
        .I1(sel[1]),
        .I2(r_mode_IBUF[0]),
        .I3(r_mode_IBUF[1]),
        .I4(Q),
        .I5(\Q_reg[0]_0 ),
        .O(S));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized9
   (D,
    Q,
    E,
    \Q_reg[7]_0 ,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[4] );
  output [0:0]D;
  output [7:0]Q;
  input [0:0]E;
  input [7:0]\Q_reg[7]_0 ;
  input clk_IBUF_BUFG;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;

  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire [7:0]Q;
  wire [7:0]\Q_reg[7]_0 ;
  wire clk_IBUF_BUFG;

  LUT1 #(
    .INIT(2'h1)) 
    \Q[0]_i_1__1 
       (.I0(Q[0]),
        .O(D));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(\Q_reg[7]_0 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(\Q_reg[7]_0 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(\Q_reg[7]_0 [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(\Q_reg[7]_0 [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(\Q_reg[7]_0 [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(\Q_reg[7]_0 [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(\Q_reg[7]_0 [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[4] ),
        .D(\Q_reg[7]_0 [7]),
        .Q(Q[7]));
endmodule

module Second_Phase
   (Q,
    \Q_reg[25] ,
    S,
    \Q_reg[26] ,
    \Q_reg[22] ,
    \Q_reg[22]_0 ,
    E,
    Data_S,
    clk_IBUF_BUFG,
    AR,
    \FSM_sequential_state_reg_reg[4] ,
    \FSM_sequential_state_reg_reg[4]_0 );
  output [1:0]Q;
  output \Q_reg[25] ;
  output [0:0]S;
  output [24:0]\Q_reg[26] ;
  input [22:0]\Q_reg[22] ;
  input \Q_reg[22]_0 ;
  input [0:0]E;
  input [7:0]Data_S;
  input clk_IBUF_BUFG;
  input [1:0]AR;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;
  input [0:0]\FSM_sequential_state_reg_reg[4]_0 ;

  wire [1:0]AR;
  wire [7:0]Data_S;
  wire [0:0]E;
  wire ESRegister_n_0;
  wire ESRegister_n_1;
  wire ESRegister_n_10;
  wire ESRegister_n_11;
  wire ESRegister_n_12;
  wire ESRegister_n_13;
  wire ESRegister_n_14;
  wire ESRegister_n_15;
  wire ESRegister_n_16;
  wire ESRegister_n_17;
  wire ESRegister_n_18;
  wire ESRegister_n_19;
  wire ESRegister_n_2;
  wire ESRegister_n_20;
  wire ESRegister_n_21;
  wire ESRegister_n_22;
  wire ESRegister_n_23;
  wire ESRegister_n_24;
  wire ESRegister_n_25;
  wire ESRegister_n_3;
  wire ESRegister_n_4;
  wire ESRegister_n_5;
  wire ESRegister_n_6;
  wire ESRegister_n_7;
  wire ESRegister_n_8;
  wire ESRegister_n_9;
  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire [0:0]\FSM_sequential_state_reg_reg[4]_0 ;
  wire [1:0]Q;
  wire [22:0]\Q_reg[22] ;
  wire \Q_reg[22]_0 ;
  wire \Q_reg[25] ;
  wire [24:0]\Q_reg[26] ;
  wire [0:0]S;
  wire clk_IBUF_BUFG;

  RegisterAdd__parameterized5 ESRegister
       (.AR(AR[1]),
        .D({ESRegister_n_0,ESRegister_n_1,ESRegister_n_2,ESRegister_n_3,ESRegister_n_4,ESRegister_n_5,ESRegister_n_6,ESRegister_n_7,ESRegister_n_8,ESRegister_n_9,ESRegister_n_10,ESRegister_n_11,ESRegister_n_12,ESRegister_n_13,ESRegister_n_14,ESRegister_n_15,ESRegister_n_16,ESRegister_n_17,ESRegister_n_18,ESRegister_n_19,ESRegister_n_20,ESRegister_n_21,ESRegister_n_22,ESRegister_n_23,ESRegister_n_24,ESRegister_n_25}),
        .Data_S(Data_S),
        .E(E),
        .Q(Q),
        .\Q_reg[22] (\Q_reg[22] ),
        .\Q_reg[22]_0 (\Q_reg[22]_0 ),
        .\Q_reg[25] (\Q_reg[25] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  RegisterAdd__parameterized6 SGFmRegister
       (.AR({AR[0],\FSM_sequential_state_reg_reg[4]_0 }),
        .D({ESRegister_n_0,ESRegister_n_1,ESRegister_n_2,ESRegister_n_3,ESRegister_n_4,ESRegister_n_5,ESRegister_n_6,ESRegister_n_7,ESRegister_n_8,ESRegister_n_9,ESRegister_n_10,ESRegister_n_11,ESRegister_n_12,ESRegister_n_13,ESRegister_n_14,ESRegister_n_15,ESRegister_n_16,ESRegister_n_17,ESRegister_n_18,ESRegister_n_19,ESRegister_n_20,ESRegister_n_21,ESRegister_n_22,ESRegister_n_23,ESRegister_n_24,ESRegister_n_25}),
        .\FSM_sequential_state_reg_reg[4] (\FSM_sequential_state_reg_reg[4] ),
        .\Q_reg[26] (\Q_reg[26] ),
        .S(S),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
endmodule

module Seventh_Phase
   (Q,
    \Q_reg[0] ,
    E,
    D,
    clk_IBUF_BUFG,
    AR,
    p_0_in,
    S,
    \FSM_sequential_state_reg_reg[4] ,
    \FSM_sequential_state_reg_reg[4]_0 );
  output [0:0]Q;
  output [24:0]\Q_reg[0] ;
  input [0:0]E;
  input [23:0]D;
  input clk_IBUF_BUFG;
  input [1:0]AR;
  input p_0_in;
  input [0:0]S;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;
  input [0:0]\FSM_sequential_state_reg_reg[4]_0 ;

  wire [1:0]AR;
  wire [23:0]D;
  wire [24:0]\Dir_M/S ;
  wire [0:0]E;
  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire [0:0]\FSM_sequential_state_reg_reg[4]_0 ;
  wire [0:0]Q;
  wire [24:0]\Q_reg[0] ;
  wire Round_Sgf_N_n_0;
  wire Round_Sgf_N_n_1;
  wire Round_Sgf_N_n_10;
  wire Round_Sgf_N_n_11;
  wire Round_Sgf_N_n_12;
  wire Round_Sgf_N_n_13;
  wire Round_Sgf_N_n_14;
  wire Round_Sgf_N_n_15;
  wire Round_Sgf_N_n_16;
  wire Round_Sgf_N_n_17;
  wire Round_Sgf_N_n_18;
  wire Round_Sgf_N_n_19;
  wire Round_Sgf_N_n_2;
  wire Round_Sgf_N_n_20;
  wire Round_Sgf_N_n_21;
  wire Round_Sgf_N_n_22;
  wire Round_Sgf_N_n_3;
  wire Round_Sgf_N_n_4;
  wire Round_Sgf_N_n_5;
  wire Round_Sgf_N_n_6;
  wire Round_Sgf_N_n_7;
  wire Round_Sgf_N_n_8;
  wire Round_Sgf_N_n_9;
  wire [0:0]S;
  wire clk_IBUF_BUFG;
  wire p_0_in;

  add_sub_carry_out__parameterized0 Round_Adder
       (.Q({Round_Sgf_N_n_0,Round_Sgf_N_n_1,Round_Sgf_N_n_2,Round_Sgf_N_n_3,Round_Sgf_N_n_4,Round_Sgf_N_n_5,Round_Sgf_N_n_6,Round_Sgf_N_n_7,Round_Sgf_N_n_8,Round_Sgf_N_n_9,Round_Sgf_N_n_10,Round_Sgf_N_n_11,Round_Sgf_N_n_12,Round_Sgf_N_n_13,Round_Sgf_N_n_14,Round_Sgf_N_n_15,Round_Sgf_N_n_16,Round_Sgf_N_n_17,Round_Sgf_N_n_18,Round_Sgf_N_n_19,Round_Sgf_N_n_20,Round_Sgf_N_n_21,Round_Sgf_N_n_22}),
        .S(S),
        .S_0(\Dir_M/S ),
        .p_0_in(p_0_in));
  RegisterAdd__parameterized12 Round_Sgf_N
       (.AR(AR),
        .D(D),
        .E(E),
        .Q({Round_Sgf_N_n_0,Round_Sgf_N_n_1,Round_Sgf_N_n_2,Round_Sgf_N_n_3,Round_Sgf_N_n_4,Round_Sgf_N_n_5,Round_Sgf_N_n_6,Round_Sgf_N_n_7,Round_Sgf_N_n_8,Round_Sgf_N_n_9,Round_Sgf_N_n_10,Round_Sgf_N_n_11,Round_Sgf_N_n_12,Round_Sgf_N_n_13,Round_Sgf_N_n_14,Round_Sgf_N_n_15,Round_Sgf_N_n_16,Round_Sgf_N_n_17,Round_Sgf_N_n_18,Round_Sgf_N_n_19,Round_Sgf_N_n_20,Round_Sgf_N_n_21,Round_Sgf_N_n_22}),
        .\Q_reg[3]_0 (Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  RegisterAdd__parameterized13 Sgf_Ready_Reg
       (.D(\Dir_M/S ),
        .\FSM_sequential_state_reg_reg[4] (\FSM_sequential_state_reg_reg[4] ),
        .\FSM_sequential_state_reg_reg[4]_0 (\FSM_sequential_state_reg_reg[4]_0 ),
        .\Q_reg[0]_0 (\Q_reg[0] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
endmodule

module Sixth_Phase
   (overflow_a,
    underflow_flag_OBUF,
    overflow_flag_OBUF,
    \FSM_sequential_state_reg_reg[4] ,
    clk_IBUF_BUFG,
    AR,
    \FSM_sequential_state_reg_reg[4]_0 ,
    overflow_pr);
  output overflow_a;
  output underflow_flag_OBUF;
  output overflow_flag_OBUF;
  input \FSM_sequential_state_reg_reg[4] ;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input \FSM_sequential_state_reg_reg[4]_0 ;
  input overflow_pr;

  wire [0:0]AR;
  wire \FSM_sequential_state_reg_reg[4] ;
  wire \FSM_sequential_state_reg_reg[4]_0 ;
  wire clk_IBUF_BUFG;
  wire overflow_a;
  wire overflow_flag_OBUF;
  wire overflow_pr;
  wire underflow_flag_OBUF;

  RegisterAdd_10 R_Overflow
       (.AR(AR),
        .\FSM_sequential_state_reg_reg[4] (\FSM_sequential_state_reg_reg[4] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .overflow_a(overflow_a),
        .overflow_flag_OBUF(overflow_flag_OBUF),
        .overflow_pr(overflow_pr));
  RegisterAdd_11 R_Underflow
       (.AR(AR),
        .\FSM_sequential_state_reg_reg[4] (\FSM_sequential_state_reg_reg[4]_0 ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .underflow_flag_OBUF(underflow_flag_OBUF));
endmodule

module Tenth_Phase
   (Q,
    \final_result_ieee[31] ,
    E,
    D,
    clk_IBUF_BUFG,
    AR,
    \FSM_sequential_state_reg_reg[5] ,
    \FSM_sequential_state_reg_reg[4] ,
    \Q_reg[0] ,
    \Q_reg[0]_0 ,
    \Q_reg[0]_1 );
  output [22:0]Q;
  output [31:0]\final_result_ieee[31] ;
  input [0:0]E;
  input [31:0]D;
  input clk_IBUF_BUFG;
  input [1:0]AR;
  input [0:0]\FSM_sequential_state_reg_reg[5] ;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;
  input [22:0]\Q_reg[0] ;
  input \Q_reg[0]_0 ;
  input \Q_reg[0]_1 ;

  wire [1:0]AR;
  wire Cresult_Reg_n_0;
  wire Cresult_Reg_n_1;
  wire Cresult_Reg_n_2;
  wire Cresult_Reg_n_3;
  wire Cresult_Reg_n_4;
  wire Cresult_Reg_n_5;
  wire Cresult_Reg_n_6;
  wire Cresult_Reg_n_7;
  wire Cresult_Reg_n_8;
  wire [31:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire [0:0]\FSM_sequential_state_reg_reg[5] ;
  wire Final_Result_Mux_Reg_n_0;
  wire Final_Result_Mux_Reg_n_1;
  wire Final_Result_Mux_Reg_n_2;
  wire Final_Result_Mux_Reg_n_3;
  wire Final_Result_Mux_Reg_n_4;
  wire Final_Result_Mux_Reg_n_5;
  wire Final_Result_Mux_Reg_n_6;
  wire Final_Result_Mux_Reg_n_7;
  wire Final_Result_Mux_Reg_n_8;
  wire [22:0]Q;
  wire [22:0]\Q_reg[0] ;
  wire \Q_reg[0]_0 ;
  wire \Q_reg[0]_1 ;
  wire clk_IBUF_BUFG;
  wire [31:0]\final_result_ieee[31] ;

  RegisterAdd__parameterized17 Cresult_Reg
       (.AR(AR),
        .D(D),
        .E(E),
        .Q({Cresult_Reg_n_0,Cresult_Reg_n_1,Cresult_Reg_n_2,Cresult_Reg_n_3,Cresult_Reg_n_4,Cresult_Reg_n_5,Cresult_Reg_n_6,Cresult_Reg_n_7,Cresult_Reg_n_8,Q}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  RegisterAdd__parameterized18 Final_Result_IEEE
       (.D({Final_Result_Mux_Reg_n_0,Final_Result_Mux_Reg_n_1,Final_Result_Mux_Reg_n_2,Final_Result_Mux_Reg_n_3,Final_Result_Mux_Reg_n_4,Final_Result_Mux_Reg_n_5,Final_Result_Mux_Reg_n_6,Final_Result_Mux_Reg_n_7,Final_Result_Mux_Reg_n_8,\Q_reg[0] }),
        .\FSM_sequential_state_reg_reg[4] (\FSM_sequential_state_reg_reg[4] ),
        .\FSM_sequential_state_reg_reg[5] (\FSM_sequential_state_reg_reg[5] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\final_result_ieee[31] (\final_result_ieee[31] ));
  Multiplexer_AC Final_Result_Mux_Reg
       (.D({Final_Result_Mux_Reg_n_0,Final_Result_Mux_Reg_n_1,Final_Result_Mux_Reg_n_2,Final_Result_Mux_Reg_n_3,Final_Result_Mux_Reg_n_4,Final_Result_Mux_Reg_n_5,Final_Result_Mux_Reg_n_6,Final_Result_Mux_Reg_n_7,Final_Result_Mux_Reg_n_8}),
        .Q({Cresult_Reg_n_0,Cresult_Reg_n_1,Cresult_Reg_n_2,Cresult_Reg_n_3,Cresult_Reg_n_4,Cresult_Reg_n_5,Cresult_Reg_n_6,Cresult_Reg_n_7,Cresult_Reg_n_8}),
        .\Q_reg[0] (\Q_reg[0]_0 ),
        .\Q_reg[0]_0 (\Q_reg[0]_1 ),
        .\Q_reg[31] (D[31]));
endmodule

module Third_Phase
   (Q,
    E,
    D,
    CLK,
    AR,
    \FSM_sequential_state_reg_reg[4] );
  output [26:0]Q;
  input [0:0]E;
  input [26:0]D;
  input CLK;
  input [1:0]AR;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;

  wire [1:0]AR;
  wire CLK;
  wire [26:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire [26:0]Q;

  RegisterAdd__parameterized7 R_Sgf
       (.AR({AR[0],\FSM_sequential_state_reg_reg[4] ,AR[1]}),
        .CLK(CLK),
        .D(D),
        .E(E),
        .Q(Q));
endmodule

module Universal_Shift_Register
   (\Q_reg[0]_0 ,
    Q,
    \Q_reg[24]_0 ,
    \Q_reg[25]_0 ,
    \Q_reg[23]_0 ,
    \Q_reg[22]_0 ,
    \Q_reg[21]_0 ,
    \Q_reg[20]_0 ,
    \Q_reg[19]_0 ,
    \Q_reg[18]_0 ,
    \Q_reg[17]_0 ,
    \Q_reg[16]_0 ,
    \Q_reg[15]_0 ,
    \Q_reg[14]_0 ,
    \Q_reg[13]_0 ,
    \Q_reg[12]_0 ,
    \Q_reg[11]_0 ,
    \Q_reg[10]_0 ,
    \Q_reg[9]_0 ,
    \Q_reg[8]_0 ,
    \Q_reg[7]_0 ,
    \Q_reg[6]_0 ,
    \Q_reg[5]_0 ,
    \Q_reg[4]_0 ,
    \Q_reg[3]_0 ,
    \Q_reg[2]_0 ,
    \Q_reg[2]_1 ,
    \FSM_sequential_state_reg_reg[5] ,
    load_7,
    \Q_reg[0]_1 ,
    \Q_reg[26]_0 ,
    add_subt_5_P,
    E,
    D,
    clk_IBUF_BUFG,
    AR);
  output \Q_reg[0]_0 ;
  output [26:0]Q;
  output \Q_reg[24]_0 ;
  output \Q_reg[25]_0 ;
  output \Q_reg[23]_0 ;
  output \Q_reg[22]_0 ;
  output \Q_reg[21]_0 ;
  output \Q_reg[20]_0 ;
  output \Q_reg[19]_0 ;
  output \Q_reg[18]_0 ;
  output \Q_reg[17]_0 ;
  output \Q_reg[16]_0 ;
  output \Q_reg[15]_0 ;
  output \Q_reg[14]_0 ;
  output \Q_reg[13]_0 ;
  output \Q_reg[12]_0 ;
  output \Q_reg[11]_0 ;
  output \Q_reg[10]_0 ;
  output \Q_reg[9]_0 ;
  output \Q_reg[8]_0 ;
  output \Q_reg[7]_0 ;
  output \Q_reg[6]_0 ;
  output \Q_reg[5]_0 ;
  output \Q_reg[4]_0 ;
  output \Q_reg[3]_0 ;
  output \Q_reg[2]_0 ;
  output \Q_reg[2]_1 ;
  input \FSM_sequential_state_reg_reg[5] ;
  input load_7;
  input \Q_reg[0]_1 ;
  input [26:0]\Q_reg[26]_0 ;
  input add_subt_5_P;
  input [0:0]E;
  input [24:0]D;
  input clk_IBUF_BUFG;
  input [1:0]AR;

  wire [1:0]AR;
  wire [24:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_reg_reg[5] ;
  wire [26:0]Q;
  wire \Q[1]_i_2__0_n_0 ;
  wire \Q_reg[0]_0 ;
  wire \Q_reg[0]_1 ;
  wire \Q_reg[10]_0 ;
  wire \Q_reg[11]_0 ;
  wire \Q_reg[12]_0 ;
  wire \Q_reg[13]_0 ;
  wire \Q_reg[14]_0 ;
  wire \Q_reg[15]_0 ;
  wire \Q_reg[16]_0 ;
  wire \Q_reg[17]_0 ;
  wire \Q_reg[18]_0 ;
  wire \Q_reg[19]_0 ;
  wire \Q_reg[20]_0 ;
  wire \Q_reg[21]_0 ;
  wire \Q_reg[22]_0 ;
  wire \Q_reg[23]_0 ;
  wire \Q_reg[24]_0 ;
  wire \Q_reg[25]_0 ;
  wire [26:0]\Q_reg[26]_0 ;
  wire \Q_reg[2]_0 ;
  wire \Q_reg[2]_1 ;
  wire \Q_reg[3]_0 ;
  wire \Q_reg[4]_0 ;
  wire \Q_reg[5]_0 ;
  wire \Q_reg[6]_0 ;
  wire \Q_reg[7]_0 ;
  wire \Q_reg[8]_0 ;
  wire \Q_reg[9]_0 ;
  wire add_subt_5_P;
  wire clk_IBUF_BUFG;
  wire load_7;
  wire [1:0]p_1_in;

  LUT6 #(
    .INIT(64'hF888F8F8F8888888)) 
    \Q[0]_i_1__2 
       (.I0(\Q_reg[0]_0 ),
        .I1(\FSM_sequential_state_reg_reg[5] ),
        .I2(load_7),
        .I3(Q[0]),
        .I4(\Q_reg[0]_1 ),
        .I5(\Q_reg[26]_0 [0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[10]_i_2__0 
       (.I0(Q[9]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[26]_0 [9]),
        .O(\Q_reg[8]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[11]_i_2__0 
       (.I0(Q[10]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[26]_0 [10]),
        .O(\Q_reg[9]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[12]_i_2__0 
       (.I0(Q[11]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[26]_0 [11]),
        .O(\Q_reg[10]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[13]_i_2__0 
       (.I0(Q[12]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[26]_0 [12]),
        .O(\Q_reg[11]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[14]_i_2__0 
       (.I0(Q[13]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[26]_0 [13]),
        .O(\Q_reg[12]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[15]_i_2__0 
       (.I0(Q[14]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[26]_0 [14]),
        .O(\Q_reg[13]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[16]_i_2__0 
       (.I0(Q[15]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[26]_0 [15]),
        .O(\Q_reg[14]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[17]_i_2__0 
       (.I0(Q[16]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[26]_0 [16]),
        .O(\Q_reg[15]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[18]_i_2__0 
       (.I0(Q[17]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[26]_0 [17]),
        .O(\Q_reg[16]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[19]_i_2__0 
       (.I0(Q[18]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[26]_0 [18]),
        .O(\Q_reg[17]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \Q[1]_i_1__0 
       (.I0(Q[1]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[26]_0 [1]),
        .I3(load_7),
        .I4(\Q[1]_i_2__0_n_0 ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[1]_i_2__0 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(\Q_reg[0]_1 ),
        .I3(\Q_reg[26]_0 [0]),
        .I4(add_subt_5_P),
        .I5(\Q_reg[26]_0 [2]),
        .O(\Q[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[20]_i_2__0 
       (.I0(Q[19]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[26]_0 [19]),
        .O(\Q_reg[18]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[21]_i_2__0 
       (.I0(Q[20]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[26]_0 [20]),
        .O(\Q_reg[19]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[22]_i_2__1 
       (.I0(Q[21]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[26]_0 [21]),
        .O(\Q_reg[20]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[23]_i_2__0 
       (.I0(Q[22]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[26]_0 [22]),
        .O(\Q_reg[21]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[24]_i_2__0 
       (.I0(Q[23]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[26]_0 [23]),
        .O(\Q_reg[22]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[25]_i_3__0 
       (.I0(Q[26]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[26]_0 [26]),
        .O(\Q_reg[25]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[25]_i_4 
       (.I0(Q[24]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[26]_0 [24]),
        .O(\Q_reg[23]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[26]_i_5 
       (.I0(Q[25]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[26]_0 [25]),
        .O(\Q_reg[24]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[2]_i_2__0 
       (.I0(Q[1]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[26]_0 [1]),
        .O(\Q_reg[0]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[3]_i_2__1 
       (.I0(Q[2]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[26]_0 [2]),
        .O(\Q_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[4]_i_2__1 
       (.I0(Q[3]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[26]_0 [3]),
        .O(\Q_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[5]_i_2__0 
       (.I0(Q[4]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[26]_0 [4]),
        .O(\Q_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[6]_i_2__0 
       (.I0(Q[5]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[26]_0 [5]),
        .O(\Q_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[7]_i_2__0 
       (.I0(Q[6]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[26]_0 [6]),
        .O(\Q_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[8]_i_2__0 
       (.I0(Q[7]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[26]_0 [7]),
        .O(\Q_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[9]_i_2__0 
       (.I0(Q[8]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[26]_0 [8]),
        .O(\Q_reg[7]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(p_1_in[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[8]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[9]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[10]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[11]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[12]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[13]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[14]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[15]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[16]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[17]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(p_1_in[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[18]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[19]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[20]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[21]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[22]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[23]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[24]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[0]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[1]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[2]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[3]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[4]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[5]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[6]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[7]),
        .Q(Q[9]));
endmodule

module Zero_InfAdd_Unit
   (zero_flag,
    \Q_reg[31] ,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[4] );
  output zero_flag;
  input \Q_reg[31] ;
  input clk_IBUF_BUFG;
  input [0:0]\FSM_sequential_state_reg_reg[4] ;

  wire [0:0]\FSM_sequential_state_reg_reg[4] ;
  wire \Q_reg[31] ;
  wire clk_IBUF_BUFG;
  wire zero_flag;

  RegisterAdd_3 Zero_Info_Register
       (.\FSM_sequential_state_reg_reg[4] (\FSM_sequential_state_reg_reg[4] ),
        .\Q_reg[31] (\Q_reg[31] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .zero_flag(zero_flag));
endmodule

(* ORIG_REF_NAME = "add_sub_carry_out" *) 
module add_sub_carry_out__parameterized0
   (S_0,
    p_0_in,
    Q,
    S);
  output [24:0]S_0;
  input p_0_in;
  input [22:0]Q;
  input [0:0]S;

  wire [22:0]Q;
  wire \Q_reg[11]_i_1_n_0 ;
  wire \Q_reg[11]_i_1_n_1 ;
  wire \Q_reg[11]_i_1_n_2 ;
  wire \Q_reg[11]_i_1_n_3 ;
  wire \Q_reg[15]_i_1_n_0 ;
  wire \Q_reg[15]_i_1_n_1 ;
  wire \Q_reg[15]_i_1_n_2 ;
  wire \Q_reg[15]_i_1_n_3 ;
  wire \Q_reg[19]_i_1_n_0 ;
  wire \Q_reg[19]_i_1_n_1 ;
  wire \Q_reg[19]_i_1_n_2 ;
  wire \Q_reg[19]_i_1_n_3 ;
  wire \Q_reg[23]_i_1_n_0 ;
  wire \Q_reg[23]_i_1_n_1 ;
  wire \Q_reg[23]_i_1_n_2 ;
  wire \Q_reg[23]_i_1_n_3 ;
  wire \Q_reg[3]_i_1_n_0 ;
  wire \Q_reg[3]_i_1_n_1 ;
  wire \Q_reg[3]_i_1_n_2 ;
  wire \Q_reg[3]_i_1_n_3 ;
  wire \Q_reg[7]_i_1_n_0 ;
  wire \Q_reg[7]_i_1_n_1 ;
  wire \Q_reg[7]_i_1_n_2 ;
  wire \Q_reg[7]_i_1_n_3 ;
  wire [0:0]S;
  wire [24:0]S_0;
  wire p_0_in;
  wire [3:1]\NLW_Q_reg[24]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[24]_i_2_O_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[11]_i_1 
       (.CI(\Q_reg[7]_i_1_n_0 ),
        .CO({\Q_reg[11]_i_1_n_0 ,\Q_reg[11]_i_1_n_1 ,\Q_reg[11]_i_1_n_2 ,\Q_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(S_0[11:8]),
        .S(Q[10:7]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[15]_i_1 
       (.CI(\Q_reg[11]_i_1_n_0 ),
        .CO({\Q_reg[15]_i_1_n_0 ,\Q_reg[15]_i_1_n_1 ,\Q_reg[15]_i_1_n_2 ,\Q_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(S_0[15:12]),
        .S(Q[14:11]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[19]_i_1 
       (.CI(\Q_reg[15]_i_1_n_0 ),
        .CO({\Q_reg[19]_i_1_n_0 ,\Q_reg[19]_i_1_n_1 ,\Q_reg[19]_i_1_n_2 ,\Q_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(S_0[19:16]),
        .S(Q[18:15]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[23]_i_1 
       (.CI(\Q_reg[19]_i_1_n_0 ),
        .CO({\Q_reg[23]_i_1_n_0 ,\Q_reg[23]_i_1_n_1 ,\Q_reg[23]_i_1_n_2 ,\Q_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(S_0[23:20]),
        .S(Q[22:19]));
  CARRY4 \Q_reg[24]_i_2 
       (.CI(\Q_reg[23]_i_1_n_0 ),
        .CO({\NLW_Q_reg[24]_i_2_CO_UNCONNECTED [3:1],S_0[24]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Q_reg[24]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\Q_reg[3]_i_1_n_0 ,\Q_reg[3]_i_1_n_1 ,\Q_reg[3]_i_1_n_2 ,\Q_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_0_in}),
        .O(S_0[3:0]),
        .S({Q[2:0],S}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[7]_i_1 
       (.CI(\Q_reg[3]_i_1_n_0 ),
        .CO({\Q_reg[7]_i_1_n_0 ,\Q_reg[7]_i_1_n_1 ,\Q_reg[7]_i_1_n_2 ,\Q_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(S_0[7:4]),
        .S(Q[6:3]));
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
