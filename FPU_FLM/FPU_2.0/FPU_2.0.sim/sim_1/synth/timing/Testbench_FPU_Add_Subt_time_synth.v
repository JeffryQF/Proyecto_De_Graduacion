// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
// Date        : Mon Apr  4 05:50:16 2016
// Host        : francis-Aspire-E1-570 running 64-bit Ubuntu 15.10
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /media/francis/Acer/Users/Francis/Documents/GitHub/Proyecto_De_Graduacion/FPU_FLM/FPU_2.0/FPU_2.0.sim/sim_1/synth/timing/Testbench_FPU_Add_Subt_time_synth.v
// Design      : FPU_Add_Subtract_Function
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Add_Subt
   (D,
    \Q_reg[54] ,
    \Q_reg[24] ,
    \Q_reg[32] ,
    \Data_array[2]_0 ,
    \Data_array[0]_1 ,
    Q,
    \Q_reg[54]_0 ,
    S_Shift_Value,
    FSM_barrel_shifter_L_R,
    \Data_array[6]_2 ,
    FSM_barrel_shifter_B_S,
    \Q_reg[0] ,
    \Q_reg[0]_0 ,
    \Q_reg[2] ,
    FSM_selector_C,
    \Q_reg[0]_1 ,
    \Q_reg[0]_2 ,
    \Q_reg[51] ,
    E,
    \Q_reg[54]_1 ,
    CLK,
    AR);
  output [2:0]D;
  output [25:0]\Q_reg[54] ;
  output [19:0]\Q_reg[24] ;
  output [3:0]\Q_reg[32] ;
  output [0:0]\Data_array[2]_0 ;
  output [1:0]\Data_array[0]_1 ;
  output [52:0]Q;
  output [2:0]\Q_reg[54]_0 ;
  input [5:0]S_Shift_Value;
  input FSM_barrel_shifter_L_R;
  input [0:0]\Data_array[6]_2 ;
  input FSM_barrel_shifter_B_S;
  input [0:0]\Q_reg[0] ;
  input [1:0]\Q_reg[0]_0 ;
  input [1:0]\Q_reg[2] ;
  input FSM_selector_C;
  input \Q_reg[0]_1 ;
  input \Q_reg[0]_2 ;
  input [51:0]\Q_reg[51] ;
  input [0:0]E;
  input [54:0]\Q_reg[54]_1 ;
  input CLK;
  input [1:0]AR;

  wire [1:0]AR;
  wire CLK;
  wire [2:0]D;
  wire [1:0]\Data_array[0]_1 ;
  wire [0:0]\Data_array[2]_0 ;
  wire [0:0]\Data_array[6]_2 ;
  wire [0:0]E;
  wire FSM_barrel_shifter_B_S;
  wire FSM_barrel_shifter_L_R;
  wire FSM_selector_C;
  wire [52:0]Q;
  wire [0:0]\Q_reg[0] ;
  wire [1:0]\Q_reg[0]_0 ;
  wire \Q_reg[0]_1 ;
  wire \Q_reg[0]_2 ;
  wire [19:0]\Q_reg[24] ;
  wire [1:0]\Q_reg[2] ;
  wire [3:0]\Q_reg[32] ;
  wire [51:0]\Q_reg[51] ;
  wire [25:0]\Q_reg[54] ;
  wire [2:0]\Q_reg[54]_0 ;
  wire [54:0]\Q_reg[54]_1 ;
  wire [5:0]S_Shift_Value;

  RegisterAdd__parameterized7 Add_Subt_Result
       (.AR(AR),
        .CLK(CLK),
        .D(D),
        .\Data_array[0]_1 (\Data_array[0]_1 ),
        .\Data_array[2]_0 (\Data_array[2]_0 ),
        .\Data_array[6]_2 (\Data_array[6]_2 ),
        .E(E),
        .FSM_barrel_shifter_B_S(FSM_barrel_shifter_B_S),
        .FSM_barrel_shifter_L_R(FSM_barrel_shifter_L_R),
        .FSM_selector_C(FSM_selector_C),
        .Q(Q),
        .\Q_reg[0]_0 (\Q_reg[0] ),
        .\Q_reg[0]_1 (\Q_reg[0]_0 ),
        .\Q_reg[0]_2 (\Q_reg[0]_1 ),
        .\Q_reg[0]_3 (\Q_reg[0]_2 ),
        .\Q_reg[24]_0 (\Q_reg[24] ),
        .\Q_reg[2]_0 (\Q_reg[2] ),
        .\Q_reg[32]_0 (\Q_reg[32] ),
        .\Q_reg[51]_0 (\Q_reg[51] ),
        .\Q_reg[54]_0 (\Q_reg[54] ),
        .\Q_reg[54]_1 (\Q_reg[54]_0 [1]),
        .\Q_reg[54]_2 ({\Q_reg[54]_0 [2],\Q_reg[54]_0 [0]}),
        .\Q_reg[54]_3 (\Q_reg[54]_1 ),
        .S_Shift_Value(S_Shift_Value));
endmodule

module Barrel_Shifter
   (Comb_to_Codec,
    \Q_reg[54] ,
    \Q_reg[3] ,
    A_S_C,
    round_flag,
    S_A_S_Oper_A,
    Q,
    \Q_reg[0] ,
    \Q_reg[0]_rep__0 ,
    \Q_reg[0]_rep ,
    sign_final_result,
    r_mode_IBUF,
    FSM_selector_D,
    E,
    D,
    clk_IBUF_BUFG,
    AR);
  output [0:0]Comb_to_Codec;
  output [54:0]\Q_reg[54] ;
  output [2:0]\Q_reg[3] ;
  output [0:0]A_S_C;
  output round_flag;
  output [51:0]S_A_S_Oper_A;
  input [51:0]Q;
  input \Q_reg[0] ;
  input \Q_reg[0]_rep__0 ;
  input \Q_reg[0]_rep ;
  input sign_final_result;
  input [1:0]r_mode_IBUF;
  input FSM_selector_D;
  input [0:0]E;
  input [54:0]D;
  input clk_IBUF_BUFG;
  input [1:0]AR;

  wire [1:0]AR;
  wire [0:0]A_S_C;
  wire [0:0]Comb_to_Codec;
  wire [54:0]D;
  wire [0:0]E;
  wire FSM_selector_D;
  wire [51:0]Q;
  wire \Q_reg[0] ;
  wire \Q_reg[0]_rep ;
  wire \Q_reg[0]_rep__0 ;
  wire [2:0]\Q_reg[3] ;
  wire [54:0]\Q_reg[54] ;
  wire [51:0]S_A_S_Oper_A;
  wire clk_IBUF_BUFG;
  wire [1:0]r_mode_IBUF;
  wire round_flag;
  wire sign_final_result;

  RegisterAdd__parameterized6 Output_Reg
       (.AR(AR),
        .A_S_C(A_S_C),
        .Comb_to_Codec(Comb_to_Codec),
        .D(D),
        .E(E),
        .FSM_selector_D(FSM_selector_D),
        .Q(Q),
        .\Q_reg[0]_0 (\Q_reg[0] ),
        .\Q_reg[0]_rep (\Q_reg[0]_rep ),
        .\Q_reg[0]_rep__0 (\Q_reg[0]_rep__0 ),
        .\Q_reg[3]_0 (\Q_reg[3] ),
        .\Q_reg[54]_0 (\Q_reg[54] ),
        .S_A_S_Oper_A(S_A_S_Oper_A),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .r_mode_IBUF(r_mode_IBUF),
        .round_flag(round_flag),
        .sign_final_result(sign_final_result));
endmodule

module Exp_Operation
   (overflow_flag_OBUF,
    underflow_flag_OBUF,
    D,
    Q,
    \Q_reg[0] ,
    E,
    clk_IBUF_BUFG,
    AR,
    \Q_reg[0]_0 ,
    \Q_reg[53] ,
    sign_final_result,
    \Q_reg[62] ,
    FSM_selector_D,
    FSM_exp_operation_A_S,
    p_0_in,
    \Q_reg[0]_1 ,
    FSM_selector_B,
    \Q_reg[52] );
  output overflow_flag_OBUF;
  output underflow_flag_OBUF;
  output [63:0]D;
  output [5:0]Q;
  output [0:0]\Q_reg[0] ;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input \Q_reg[0]_0 ;
  input [51:0]\Q_reg[53] ;
  input sign_final_result;
  input [10:0]\Q_reg[62] ;
  input FSM_selector_D;
  input FSM_exp_operation_A_S;
  input [10:0]p_0_in;
  input [0:0]\Q_reg[0]_1 ;
  input [1:0]FSM_selector_B;
  input [0:0]\Q_reg[52] ;

  wire [0:0]AR;
  wire [63:0]D;
  wire [0:0]Data_A;
  wire [0:0]E;
  wire FSM_exp_operation_A_S;
  wire [1:0]FSM_selector_B;
  wire FSM_selector_D;
  wire [5:0]Q;
  wire [0:0]\Q_reg[0] ;
  wire \Q_reg[0]_0 ;
  wire [0:0]\Q_reg[0]_1 ;
  wire [0:0]\Q_reg[52] ;
  wire [51:0]\Q_reg[53] ;
  wire [10:0]\Q_reg[62] ;
  wire clk_IBUF_BUFG;
  wire exp_add_subt_n_0;
  wire exp_add_subt_n_10;
  wire exp_add_subt_n_11;
  wire exp_add_subt_n_12;
  wire exp_add_subt_n_2;
  wire exp_add_subt_n_3;
  wire exp_add_subt_n_4;
  wire exp_add_subt_n_5;
  wire exp_add_subt_n_6;
  wire exp_add_subt_n_7;
  wire exp_add_subt_n_8;
  wire exp_add_subt_n_9;
  wire exp_result_n_11;
  wire exp_result_n_12;
  wire exp_result_n_13;
  wire exp_result_n_14;
  wire exp_result_n_15;
  wire overflow_flag_OBUF;
  wire [10:0]p_0_in;
  wire sign_final_result;
  wire underflow_flag_OBUF;

  RegisterAdd_3 Overflow
       (.AR(AR),
        .E(E),
        .\FSM_sequential_state_reg_reg[0] (exp_add_subt_n_0),
        .\Q_reg[62] (overflow_flag_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  RegisterAdd_4 Underflowflow
       (.AR(AR),
        .D({D[63],D[51:0]}),
        .\Q_reg[0]_0 (\Q_reg[0]_0 ),
        .\Q_reg[0]_1 (overflow_flag_OBUF),
        .\Q_reg[53] (\Q_reg[53] ),
        .\Q_reg[63] (underflow_flag_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .sign_final_result(sign_final_result));
  add_sub_carry_out exp_add_subt
       (.D({\Q_reg[0] ,exp_add_subt_n_2,exp_add_subt_n_3,exp_add_subt_n_4,exp_add_subt_n_5,exp_add_subt_n_6,exp_add_subt_n_7,exp_add_subt_n_8,exp_add_subt_n_9,exp_add_subt_n_10,exp_add_subt_n_11,exp_add_subt_n_12}),
        .DI({p_0_in[2:0],FSM_exp_operation_A_S}),
        .Data_A(Data_A),
        .FSM_selector_B(FSM_selector_B),
        .FSM_selector_D(FSM_selector_D),
        .Q({exp_result_n_11,exp_result_n_12,exp_result_n_13,exp_result_n_14,exp_result_n_15,Q[5:1]}),
        .\Q_reg[0] (exp_add_subt_n_0),
        .\Q_reg[0]_0 (\Q_reg[0]_1 ),
        .\Q_reg[52] (\Q_reg[52] ),
        .\Q_reg[62] (\Q_reg[62] [10:1]),
        .p_0_in(p_0_in[10:3]));
  RegisterAdd__parameterized5 exp_result
       (.AR(AR),
        .D(D[62:52]),
        .Data_A(Data_A),
        .E(E),
        .FSM_selector_D(FSM_selector_D),
        .Q({exp_result_n_11,exp_result_n_12,exp_result_n_13,exp_result_n_14,exp_result_n_15,Q}),
        .\Q_reg[0]_0 (underflow_flag_OBUF),
        .\Q_reg[0]_1 (overflow_flag_OBUF),
        .\Q_reg[1]_0 ({exp_add_subt_n_2,exp_add_subt_n_3,exp_add_subt_n_4,exp_add_subt_n_5,exp_add_subt_n_6,exp_add_subt_n_7,exp_add_subt_n_8,exp_add_subt_n_9,exp_add_subt_n_10,exp_add_subt_n_11,exp_add_subt_n_12}),
        .\Q_reg[52] (\Q_reg[62] [0]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
endmodule

(* EW = "11" *) (* EWR = "6" *) (* SW = "52" *) 
(* SWR = "55" *) (* W = "64" *) 
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
  input [63:0]Data_X;
  input [63:0]Data_Y;
  input add_subt;
  input [1:0]r_mode;
  output overflow_flag;
  output underflow_flag;
  output ready;
  output [63:0]final_result_ieee;

  wire [3:3]A_S_C;
  wire Add_Subt_Sgf_module_n_100;
  wire Add_Subt_Sgf_module_n_101;
  wire Add_Subt_Sgf_module_n_102;
  wire Add_Subt_Sgf_module_n_103;
  wire Add_Subt_Sgf_module_n_104;
  wire Add_Subt_Sgf_module_n_105;
  wire Add_Subt_Sgf_module_n_106;
  wire Add_Subt_Sgf_module_n_107;
  wire Add_Subt_Sgf_module_n_108;
  wire Add_Subt_Sgf_module_n_56;
  wire Add_Subt_Sgf_module_n_57;
  wire Add_Subt_Sgf_module_n_58;
  wire Add_Subt_Sgf_module_n_59;
  wire Add_Subt_Sgf_module_n_60;
  wire Add_Subt_Sgf_module_n_61;
  wire Add_Subt_Sgf_module_n_62;
  wire Add_Subt_Sgf_module_n_63;
  wire Add_Subt_Sgf_module_n_64;
  wire Add_Subt_Sgf_module_n_65;
  wire Add_Subt_Sgf_module_n_66;
  wire Add_Subt_Sgf_module_n_67;
  wire Add_Subt_Sgf_module_n_68;
  wire Add_Subt_Sgf_module_n_69;
  wire Add_Subt_Sgf_module_n_70;
  wire Add_Subt_Sgf_module_n_71;
  wire Add_Subt_Sgf_module_n_72;
  wire Add_Subt_Sgf_module_n_73;
  wire Add_Subt_Sgf_module_n_74;
  wire Add_Subt_Sgf_module_n_75;
  wire Add_Subt_Sgf_module_n_76;
  wire Add_Subt_Sgf_module_n_77;
  wire Add_Subt_Sgf_module_n_78;
  wire Add_Subt_Sgf_module_n_79;
  wire Add_Subt_Sgf_module_n_80;
  wire Add_Subt_Sgf_module_n_81;
  wire Add_Subt_Sgf_module_n_82;
  wire Add_Subt_Sgf_module_n_83;
  wire Add_Subt_Sgf_module_n_84;
  wire Add_Subt_Sgf_module_n_85;
  wire Add_Subt_Sgf_module_n_86;
  wire Add_Subt_Sgf_module_n_87;
  wire Add_Subt_Sgf_module_n_88;
  wire Add_Subt_Sgf_module_n_89;
  wire Add_Subt_Sgf_module_n_90;
  wire Add_Subt_Sgf_module_n_91;
  wire Add_Subt_Sgf_module_n_92;
  wire Add_Subt_Sgf_module_n_93;
  wire Add_Subt_Sgf_module_n_94;
  wire Add_Subt_Sgf_module_n_95;
  wire Add_Subt_Sgf_module_n_96;
  wire Add_Subt_Sgf_module_n_97;
  wire Add_Subt_Sgf_module_n_98;
  wire Add_Subt_Sgf_module_n_99;
  wire Barrel_Shifter_module_n_1;
  wire Barrel_Shifter_module_n_10;
  wire Barrel_Shifter_module_n_11;
  wire Barrel_Shifter_module_n_12;
  wire Barrel_Shifter_module_n_13;
  wire Barrel_Shifter_module_n_14;
  wire Barrel_Shifter_module_n_15;
  wire Barrel_Shifter_module_n_16;
  wire Barrel_Shifter_module_n_17;
  wire Barrel_Shifter_module_n_18;
  wire Barrel_Shifter_module_n_19;
  wire Barrel_Shifter_module_n_2;
  wire Barrel_Shifter_module_n_20;
  wire Barrel_Shifter_module_n_21;
  wire Barrel_Shifter_module_n_22;
  wire Barrel_Shifter_module_n_23;
  wire Barrel_Shifter_module_n_24;
  wire Barrel_Shifter_module_n_25;
  wire Barrel_Shifter_module_n_26;
  wire Barrel_Shifter_module_n_27;
  wire Barrel_Shifter_module_n_28;
  wire Barrel_Shifter_module_n_29;
  wire Barrel_Shifter_module_n_3;
  wire Barrel_Shifter_module_n_30;
  wire Barrel_Shifter_module_n_31;
  wire Barrel_Shifter_module_n_32;
  wire Barrel_Shifter_module_n_33;
  wire Barrel_Shifter_module_n_34;
  wire Barrel_Shifter_module_n_35;
  wire Barrel_Shifter_module_n_36;
  wire Barrel_Shifter_module_n_37;
  wire Barrel_Shifter_module_n_38;
  wire Barrel_Shifter_module_n_39;
  wire Barrel_Shifter_module_n_4;
  wire Barrel_Shifter_module_n_40;
  wire Barrel_Shifter_module_n_41;
  wire Barrel_Shifter_module_n_42;
  wire Barrel_Shifter_module_n_43;
  wire Barrel_Shifter_module_n_44;
  wire Barrel_Shifter_module_n_45;
  wire Barrel_Shifter_module_n_46;
  wire Barrel_Shifter_module_n_47;
  wire Barrel_Shifter_module_n_48;
  wire Barrel_Shifter_module_n_49;
  wire Barrel_Shifter_module_n_5;
  wire Barrel_Shifter_module_n_50;
  wire Barrel_Shifter_module_n_51;
  wire Barrel_Shifter_module_n_52;
  wire Barrel_Shifter_module_n_53;
  wire Barrel_Shifter_module_n_6;
  wire Barrel_Shifter_module_n_7;
  wire Barrel_Shifter_module_n_8;
  wire Barrel_Shifter_module_n_9;
  wire [2:2]Comb_to_Codec;
  wire [54:0]Data_Reg;
  wire [63:0]Data_X;
  wire [63:0]Data_X_IBUF;
  wire [63:0]Data_Y;
  wire [63:0]Data_Y_IBUF;
  wire Exp_Operation_Module_n_10;
  wire Exp_Operation_Module_n_11;
  wire Exp_Operation_Module_n_12;
  wire Exp_Operation_Module_n_13;
  wire Exp_Operation_Module_n_14;
  wire Exp_Operation_Module_n_15;
  wire Exp_Operation_Module_n_16;
  wire Exp_Operation_Module_n_17;
  wire Exp_Operation_Module_n_18;
  wire Exp_Operation_Module_n_19;
  wire Exp_Operation_Module_n_20;
  wire Exp_Operation_Module_n_21;
  wire Exp_Operation_Module_n_22;
  wire Exp_Operation_Module_n_23;
  wire Exp_Operation_Module_n_24;
  wire Exp_Operation_Module_n_25;
  wire Exp_Operation_Module_n_26;
  wire Exp_Operation_Module_n_27;
  wire Exp_Operation_Module_n_28;
  wire Exp_Operation_Module_n_29;
  wire Exp_Operation_Module_n_3;
  wire Exp_Operation_Module_n_30;
  wire Exp_Operation_Module_n_31;
  wire Exp_Operation_Module_n_32;
  wire Exp_Operation_Module_n_33;
  wire Exp_Operation_Module_n_34;
  wire Exp_Operation_Module_n_35;
  wire Exp_Operation_Module_n_36;
  wire Exp_Operation_Module_n_37;
  wire Exp_Operation_Module_n_38;
  wire Exp_Operation_Module_n_39;
  wire Exp_Operation_Module_n_4;
  wire Exp_Operation_Module_n_40;
  wire Exp_Operation_Module_n_41;
  wire Exp_Operation_Module_n_42;
  wire Exp_Operation_Module_n_43;
  wire Exp_Operation_Module_n_44;
  wire Exp_Operation_Module_n_45;
  wire Exp_Operation_Module_n_46;
  wire Exp_Operation_Module_n_47;
  wire Exp_Operation_Module_n_48;
  wire Exp_Operation_Module_n_49;
  wire Exp_Operation_Module_n_5;
  wire Exp_Operation_Module_n_50;
  wire Exp_Operation_Module_n_51;
  wire Exp_Operation_Module_n_52;
  wire Exp_Operation_Module_n_53;
  wire Exp_Operation_Module_n_54;
  wire Exp_Operation_Module_n_55;
  wire Exp_Operation_Module_n_56;
  wire Exp_Operation_Module_n_57;
  wire Exp_Operation_Module_n_58;
  wire Exp_Operation_Module_n_59;
  wire Exp_Operation_Module_n_6;
  wire Exp_Operation_Module_n_60;
  wire Exp_Operation_Module_n_61;
  wire Exp_Operation_Module_n_62;
  wire Exp_Operation_Module_n_63;
  wire Exp_Operation_Module_n_64;
  wire Exp_Operation_Module_n_65;
  wire Exp_Operation_Module_n_7;
  wire Exp_Operation_Module_n_8;
  wire Exp_Operation_Module_n_9;
  wire FSM_Add_Subt_Sgf_load;
  wire FSM_Final_Result_load;
  wire FSM_LZA_load;
  wire FSM_barrel_shifter_B_S;
  wire FSM_barrel_shifter_L_R;
  wire FSM_barrel_shifter_load;
  wire FSM_exp_operation_A_S;
  wire FSM_exp_operation_load_diff;
  wire FSM_op_start_in_load_a;
  wire FSM_op_start_in_load_b;
  wire [1:0]FSM_selector_B;
  wire FSM_selector_C;
  wire FSM_selector_D;
  wire FS_Module_n_0;
  wire FS_Module_n_1;
  wire FS_Module_n_13;
  wire FS_Module_n_14;
  wire FS_Module_n_15;
  wire FS_Module_n_17;
  wire FS_Module_n_18;
  wire FS_Module_n_19;
  wire FS_Module_n_2;
  wire FS_Module_n_20;
  wire FS_Module_n_21;
  wire FS_Module_n_22;
  wire FS_Module_n_23;
  wire FS_Module_n_24;
  wire FS_Module_n_25;
  wire FS_Module_n_26;
  wire FS_Module_n_27;
  wire FS_Module_n_3;
  wire [5:0]LZA_output;
  wire [54:51]\Mux_Array/Data_array[0]_0 ;
  wire [54:49]\Mux_Array/Data_array[1]_2 ;
  wire [52:47]\Mux_Array/Data_array[2]_1 ;
  wire [50:25]\Mux_Array/Data_array[3]_3 ;
  wire [54:0]\Mux_Array/Data_array[5]_4 ;
  wire [54:44]\Mux_Array/Data_array[6]_5 ;
  wire Oper_Start_in_module_n_100;
  wire Oper_Start_in_module_n_101;
  wire Oper_Start_in_module_n_102;
  wire Oper_Start_in_module_n_103;
  wire Oper_Start_in_module_n_104;
  wire Oper_Start_in_module_n_105;
  wire Oper_Start_in_module_n_106;
  wire Oper_Start_in_module_n_107;
  wire Oper_Start_in_module_n_108;
  wire Oper_Start_in_module_n_109;
  wire Oper_Start_in_module_n_110;
  wire Oper_Start_in_module_n_111;
  wire Oper_Start_in_module_n_112;
  wire Oper_Start_in_module_n_113;
  wire Oper_Start_in_module_n_114;
  wire Oper_Start_in_module_n_115;
  wire Oper_Start_in_module_n_116;
  wire Oper_Start_in_module_n_117;
  wire Oper_Start_in_module_n_118;
  wire Oper_Start_in_module_n_119;
  wire Oper_Start_in_module_n_120;
  wire Oper_Start_in_module_n_121;
  wire Oper_Start_in_module_n_122;
  wire Oper_Start_in_module_n_123;
  wire Oper_Start_in_module_n_124;
  wire Oper_Start_in_module_n_125;
  wire Oper_Start_in_module_n_126;
  wire Oper_Start_in_module_n_127;
  wire Oper_Start_in_module_n_128;
  wire Oper_Start_in_module_n_129;
  wire Oper_Start_in_module_n_130;
  wire Oper_Start_in_module_n_131;
  wire Oper_Start_in_module_n_132;
  wire Oper_Start_in_module_n_133;
  wire Oper_Start_in_module_n_134;
  wire Oper_Start_in_module_n_135;
  wire Oper_Start_in_module_n_136;
  wire Oper_Start_in_module_n_137;
  wire Oper_Start_in_module_n_138;
  wire Oper_Start_in_module_n_139;
  wire Oper_Start_in_module_n_140;
  wire Oper_Start_in_module_n_141;
  wire Oper_Start_in_module_n_142;
  wire Oper_Start_in_module_n_143;
  wire Oper_Start_in_module_n_144;
  wire Oper_Start_in_module_n_145;
  wire Oper_Start_in_module_n_146;
  wire Oper_Start_in_module_n_147;
  wire Oper_Start_in_module_n_148;
  wire Oper_Start_in_module_n_149;
  wire Oper_Start_in_module_n_150;
  wire Oper_Start_in_module_n_151;
  wire Oper_Start_in_module_n_152;
  wire Oper_Start_in_module_n_153;
  wire Oper_Start_in_module_n_154;
  wire Oper_Start_in_module_n_155;
  wire Oper_Start_in_module_n_156;
  wire Oper_Start_in_module_n_157;
  wire Oper_Start_in_module_n_158;
  wire Oper_Start_in_module_n_212;
  wire Oper_Start_in_module_n_25;
  wire Oper_Start_in_module_n_26;
  wire Oper_Start_in_module_n_27;
  wire Oper_Start_in_module_n_28;
  wire Oper_Start_in_module_n_29;
  wire Oper_Start_in_module_n_30;
  wire Oper_Start_in_module_n_31;
  wire Oper_Start_in_module_n_32;
  wire Oper_Start_in_module_n_33;
  wire Oper_Start_in_module_n_34;
  wire Oper_Start_in_module_n_35;
  wire Oper_Start_in_module_n_36;
  wire Oper_Start_in_module_n_37;
  wire Oper_Start_in_module_n_38;
  wire Oper_Start_in_module_n_39;
  wire Oper_Start_in_module_n_40;
  wire Oper_Start_in_module_n_41;
  wire Oper_Start_in_module_n_42;
  wire Oper_Start_in_module_n_43;
  wire Oper_Start_in_module_n_44;
  wire Oper_Start_in_module_n_45;
  wire Oper_Start_in_module_n_46;
  wire Oper_Start_in_module_n_47;
  wire Oper_Start_in_module_n_48;
  wire Oper_Start_in_module_n_49;
  wire Oper_Start_in_module_n_50;
  wire Oper_Start_in_module_n_51;
  wire Oper_Start_in_module_n_52;
  wire Oper_Start_in_module_n_53;
  wire Oper_Start_in_module_n_54;
  wire Oper_Start_in_module_n_55;
  wire Oper_Start_in_module_n_56;
  wire Oper_Start_in_module_n_57;
  wire Oper_Start_in_module_n_58;
  wire Oper_Start_in_module_n_59;
  wire Oper_Start_in_module_n_60;
  wire Oper_Start_in_module_n_61;
  wire Oper_Start_in_module_n_62;
  wire Oper_Start_in_module_n_63;
  wire Oper_Start_in_module_n_64;
  wire Oper_Start_in_module_n_65;
  wire Oper_Start_in_module_n_66;
  wire Oper_Start_in_module_n_67;
  wire Oper_Start_in_module_n_68;
  wire Oper_Start_in_module_n_69;
  wire Oper_Start_in_module_n_70;
  wire Oper_Start_in_module_n_71;
  wire Oper_Start_in_module_n_72;
  wire Oper_Start_in_module_n_73;
  wire Oper_Start_in_module_n_74;
  wire Oper_Start_in_module_n_75;
  wire Oper_Start_in_module_n_76;
  wire Oper_Start_in_module_n_77;
  wire Oper_Start_in_module_n_78;
  wire Oper_Start_in_module_n_79;
  wire Oper_Start_in_module_n_80;
  wire Oper_Start_in_module_n_81;
  wire Oper_Start_in_module_n_82;
  wire Oper_Start_in_module_n_83;
  wire Oper_Start_in_module_n_84;
  wire Oper_Start_in_module_n_85;
  wire Oper_Start_in_module_n_86;
  wire Oper_Start_in_module_n_87;
  wire Oper_Start_in_module_n_88;
  wire Oper_Start_in_module_n_91;
  wire Oper_Start_in_module_n_93;
  wire Oper_Start_in_module_n_95;
  wire Oper_Start_in_module_n_96;
  wire Oper_Start_in_module_n_97;
  wire Oper_Start_in_module_n_98;
  wire Oper_Start_in_module_n_99;
  wire [53:2]S_A_S_Oper_A;
  wire [54:27]S_Data_Shift;
  wire [5:0]S_Shift_Value;
  wire [54:0]S_to_D;
  wire Sel_B_n_57;
  wire Sel_B_n_58;
  wire Sel_B_n_59;
  wire Sel_B_n_60;
  wire Sel_B_n_61;
  wire Sel_B_n_62;
  wire Sel_B_n_63;
  wire Sel_B_n_64;
  wire Sel_B_n_65;
  wire Sel_B_n_66;
  wire Sel_C_n_2;
  wire Sel_C_n_3;
  wire Sel_D_n_1;
  wire Sel_D_n_2;
  wire [1:0]Sgf_normalized_result;
  wire Sign_S_mux;
  wire add_overflow_flag;
  wire add_subt;
  wire add_subt_IBUF;
  wire anomaly;
  wire beg_FSM;
  wire beg_FSM_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire eqXY;
  wire [5:0]exp_oper_result;
  wire [63:0]final_result_ieee;
  wire [63:0]final_result_ieee_OBUF;
  wire [5:0]\genblk1_0.Codec_64/Data_Bin_o ;
  wire overflow_flag;
  wire overflow_flag_OBUF;
  wire [1:0]r_mode;
  wire [1:0]r_mode_IBUF;
  wire ready;
  wire ready_OBUF;
  wire real_op;
  wire round_flag;
  wire rst;
  wire rst_FSM;
  wire rst_FSM_IBUF;
  wire rst_IBUF;
  wire rst_int;
  wire sign_final_result;
  wire underflow_flag;
  wire underflow_flag_OBUF;

initial begin
 $sdf_annotate("Testbench_FPU_Add_Subt_time_synth.sdf",,,,"tool_control");
end
  Add_Subt Add_Subt_Sgf_module
       (.AR({FS_Module_n_21,FS_Module_n_20}),
        .CLK(clk_IBUF_BUFG),
        .D({Data_Reg[54],Data_Reg[31],Data_Reg[23]}),
        .\Data_array[0]_1 (\Mux_Array/Data_array[0]_0 [54:53]),
        .\Data_array[2]_0 (\Mux_Array/Data_array[2]_1 [51]),
        .\Data_array[6]_2 (\Mux_Array/Data_array[6]_5 [54]),
        .E(FSM_Add_Subt_Sgf_load),
        .FSM_barrel_shifter_B_S(FSM_barrel_shifter_B_S),
        .FSM_barrel_shifter_L_R(FSM_barrel_shifter_L_R),
        .FSM_selector_C(FSM_selector_C),
        .Q({Add_Subt_Sgf_module_n_56,Add_Subt_Sgf_module_n_57,Add_Subt_Sgf_module_n_58,Add_Subt_Sgf_module_n_59,Add_Subt_Sgf_module_n_60,Add_Subt_Sgf_module_n_61,Add_Subt_Sgf_module_n_62,Add_Subt_Sgf_module_n_63,Add_Subt_Sgf_module_n_64,Add_Subt_Sgf_module_n_65,Add_Subt_Sgf_module_n_66,Add_Subt_Sgf_module_n_67,Add_Subt_Sgf_module_n_68,Add_Subt_Sgf_module_n_69,Add_Subt_Sgf_module_n_70,Add_Subt_Sgf_module_n_71,Add_Subt_Sgf_module_n_72,Add_Subt_Sgf_module_n_73,Add_Subt_Sgf_module_n_74,Add_Subt_Sgf_module_n_75,Add_Subt_Sgf_module_n_76,Add_Subt_Sgf_module_n_77,Add_Subt_Sgf_module_n_78,Add_Subt_Sgf_module_n_79,Add_Subt_Sgf_module_n_80,Add_Subt_Sgf_module_n_81,Add_Subt_Sgf_module_n_82,Add_Subt_Sgf_module_n_83,Add_Subt_Sgf_module_n_84,Add_Subt_Sgf_module_n_85,Add_Subt_Sgf_module_n_86,Add_Subt_Sgf_module_n_87,Add_Subt_Sgf_module_n_88,Add_Subt_Sgf_module_n_89,Add_Subt_Sgf_module_n_90,Add_Subt_Sgf_module_n_91,Add_Subt_Sgf_module_n_92,Add_Subt_Sgf_module_n_93,Add_Subt_Sgf_module_n_94,Add_Subt_Sgf_module_n_95,Add_Subt_Sgf_module_n_96,Add_Subt_Sgf_module_n_97,Add_Subt_Sgf_module_n_98,Add_Subt_Sgf_module_n_99,Add_Subt_Sgf_module_n_100,Add_Subt_Sgf_module_n_101,Add_Subt_Sgf_module_n_102,Add_Subt_Sgf_module_n_103,Add_Subt_Sgf_module_n_104,Add_Subt_Sgf_module_n_105,Add_Subt_Sgf_module_n_106,Add_Subt_Sgf_module_n_107,Add_Subt_Sgf_module_n_108}),
        .\Q_reg[0] (\Mux_Array/Data_array[3]_3 [50]),
        .\Q_reg[0]_0 (\Mux_Array/Data_array[1]_2 [54:53]),
        .\Q_reg[0]_1 (Sel_C_n_3),
        .\Q_reg[0]_2 (Sel_C_n_2),
        .\Q_reg[24] ({\Mux_Array/Data_array[3]_3 [48:33],\Mux_Array/Data_array[3]_3 [30:28],\Mux_Array/Data_array[3]_3 [25]}),
        .\Q_reg[2] (\Mux_Array/Data_array[0]_0 [52:51]),
        .\Q_reg[32] (\Mux_Array/Data_array[1]_2 [52:49]),
        .\Q_reg[51] ({Oper_Start_in_module_n_36,Oper_Start_in_module_n_37,Oper_Start_in_module_n_38,Oper_Start_in_module_n_39,Oper_Start_in_module_n_40,Oper_Start_in_module_n_41,Oper_Start_in_module_n_42,Oper_Start_in_module_n_43,Oper_Start_in_module_n_44,Oper_Start_in_module_n_45,Oper_Start_in_module_n_46,Oper_Start_in_module_n_47,Oper_Start_in_module_n_48,Oper_Start_in_module_n_49,Oper_Start_in_module_n_50,Oper_Start_in_module_n_51,Oper_Start_in_module_n_52,Oper_Start_in_module_n_53,Oper_Start_in_module_n_54,Oper_Start_in_module_n_55,Oper_Start_in_module_n_56,Oper_Start_in_module_n_57,Oper_Start_in_module_n_58,Oper_Start_in_module_n_59,Oper_Start_in_module_n_60,Oper_Start_in_module_n_61,Oper_Start_in_module_n_62,Oper_Start_in_module_n_63,Oper_Start_in_module_n_64,Oper_Start_in_module_n_65,Oper_Start_in_module_n_66,Oper_Start_in_module_n_67,Oper_Start_in_module_n_68,Oper_Start_in_module_n_69,Oper_Start_in_module_n_70,Oper_Start_in_module_n_71,Oper_Start_in_module_n_72,Oper_Start_in_module_n_73,Oper_Start_in_module_n_74,Oper_Start_in_module_n_75,Oper_Start_in_module_n_76,Oper_Start_in_module_n_77,Oper_Start_in_module_n_78,Oper_Start_in_module_n_79,Oper_Start_in_module_n_80,Oper_Start_in_module_n_81,Oper_Start_in_module_n_82,Oper_Start_in_module_n_83,Oper_Start_in_module_n_84,Oper_Start_in_module_n_85,Oper_Start_in_module_n_86,Oper_Start_in_module_n_87}),
        .\Q_reg[54] ({\Mux_Array/Data_array[5]_4 [32],\Mux_Array/Data_array[5]_4 [26],\Mux_Array/Data_array[5]_4 [24],\Mux_Array/Data_array[5]_4 [22:0]}),
        .\Q_reg[54]_0 ({S_Data_Shift[54:53],S_Data_Shift[27]}),
        .\Q_reg[54]_1 (S_to_D),
        .S_Shift_Value(S_Shift_Value));
  Barrel_Shifter Barrel_Shifter_module
       (.AR({FS_Module_n_21,FS_Module_n_18}),
        .A_S_C(A_S_C),
        .Comb_to_Codec(Comb_to_Codec),
        .D(Data_Reg),
        .E(FSM_barrel_shifter_load),
        .FSM_selector_D(FSM_selector_D),
        .Q({Oper_Start_in_module_n_106,Oper_Start_in_module_n_107,Oper_Start_in_module_n_108,Oper_Start_in_module_n_109,Oper_Start_in_module_n_110,Oper_Start_in_module_n_111,Oper_Start_in_module_n_112,Oper_Start_in_module_n_113,Oper_Start_in_module_n_114,Oper_Start_in_module_n_115,Oper_Start_in_module_n_116,Oper_Start_in_module_n_117,Oper_Start_in_module_n_118,Oper_Start_in_module_n_119,Oper_Start_in_module_n_120,Oper_Start_in_module_n_121,Oper_Start_in_module_n_122,Oper_Start_in_module_n_123,Oper_Start_in_module_n_124,Oper_Start_in_module_n_125,Oper_Start_in_module_n_126,Oper_Start_in_module_n_127,Oper_Start_in_module_n_128,Oper_Start_in_module_n_129,Oper_Start_in_module_n_130,Oper_Start_in_module_n_131,Oper_Start_in_module_n_132,Oper_Start_in_module_n_133,Oper_Start_in_module_n_134,Oper_Start_in_module_n_135,Oper_Start_in_module_n_136,Oper_Start_in_module_n_137,Oper_Start_in_module_n_138,Oper_Start_in_module_n_139,Oper_Start_in_module_n_140,Oper_Start_in_module_n_141,Oper_Start_in_module_n_142,Oper_Start_in_module_n_143,Oper_Start_in_module_n_144,Oper_Start_in_module_n_145,Oper_Start_in_module_n_146,Oper_Start_in_module_n_147,Oper_Start_in_module_n_148,Oper_Start_in_module_n_149,Oper_Start_in_module_n_150,Oper_Start_in_module_n_151,Oper_Start_in_module_n_152,Oper_Start_in_module_n_153,Oper_Start_in_module_n_154,Oper_Start_in_module_n_155,Oper_Start_in_module_n_156,Oper_Start_in_module_n_157}),
        .\Q_reg[0] (Oper_Start_in_module_n_158),
        .\Q_reg[0]_rep (Sel_D_n_1),
        .\Q_reg[0]_rep__0 (Sel_D_n_2),
        .\Q_reg[3] ({S_to_D[3:2],S_to_D[0]}),
        .\Q_reg[54] ({Barrel_Shifter_module_n_1,Barrel_Shifter_module_n_2,Barrel_Shifter_module_n_3,Barrel_Shifter_module_n_4,Barrel_Shifter_module_n_5,Barrel_Shifter_module_n_6,Barrel_Shifter_module_n_7,Barrel_Shifter_module_n_8,Barrel_Shifter_module_n_9,Barrel_Shifter_module_n_10,Barrel_Shifter_module_n_11,Barrel_Shifter_module_n_12,Barrel_Shifter_module_n_13,Barrel_Shifter_module_n_14,Barrel_Shifter_module_n_15,Barrel_Shifter_module_n_16,Barrel_Shifter_module_n_17,Barrel_Shifter_module_n_18,Barrel_Shifter_module_n_19,Barrel_Shifter_module_n_20,Barrel_Shifter_module_n_21,Barrel_Shifter_module_n_22,Barrel_Shifter_module_n_23,Barrel_Shifter_module_n_24,Barrel_Shifter_module_n_25,Barrel_Shifter_module_n_26,Barrel_Shifter_module_n_27,Barrel_Shifter_module_n_28,Barrel_Shifter_module_n_29,Barrel_Shifter_module_n_30,Barrel_Shifter_module_n_31,Barrel_Shifter_module_n_32,Barrel_Shifter_module_n_33,Barrel_Shifter_module_n_34,Barrel_Shifter_module_n_35,Barrel_Shifter_module_n_36,Barrel_Shifter_module_n_37,Barrel_Shifter_module_n_38,Barrel_Shifter_module_n_39,Barrel_Shifter_module_n_40,Barrel_Shifter_module_n_41,Barrel_Shifter_module_n_42,Barrel_Shifter_module_n_43,Barrel_Shifter_module_n_44,Barrel_Shifter_module_n_45,Barrel_Shifter_module_n_46,Barrel_Shifter_module_n_47,Barrel_Shifter_module_n_48,Barrel_Shifter_module_n_49,Barrel_Shifter_module_n_50,Barrel_Shifter_module_n_51,Barrel_Shifter_module_n_52,Barrel_Shifter_module_n_53,Sgf_normalized_result}),
        .S_A_S_Oper_A(S_A_S_Oper_A),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .r_mode_IBUF(r_mode_IBUF),
        .round_flag(round_flag),
        .sign_final_result(sign_final_result));
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
  IBUF \Data_X_IBUF[32]_inst 
       (.I(Data_X[32]),
        .O(Data_X_IBUF[32]));
  IBUF \Data_X_IBUF[33]_inst 
       (.I(Data_X[33]),
        .O(Data_X_IBUF[33]));
  IBUF \Data_X_IBUF[34]_inst 
       (.I(Data_X[34]),
        .O(Data_X_IBUF[34]));
  IBUF \Data_X_IBUF[35]_inst 
       (.I(Data_X[35]),
        .O(Data_X_IBUF[35]));
  IBUF \Data_X_IBUF[36]_inst 
       (.I(Data_X[36]),
        .O(Data_X_IBUF[36]));
  IBUF \Data_X_IBUF[37]_inst 
       (.I(Data_X[37]),
        .O(Data_X_IBUF[37]));
  IBUF \Data_X_IBUF[38]_inst 
       (.I(Data_X[38]),
        .O(Data_X_IBUF[38]));
  IBUF \Data_X_IBUF[39]_inst 
       (.I(Data_X[39]),
        .O(Data_X_IBUF[39]));
  IBUF \Data_X_IBUF[3]_inst 
       (.I(Data_X[3]),
        .O(Data_X_IBUF[3]));
  IBUF \Data_X_IBUF[40]_inst 
       (.I(Data_X[40]),
        .O(Data_X_IBUF[40]));
  IBUF \Data_X_IBUF[41]_inst 
       (.I(Data_X[41]),
        .O(Data_X_IBUF[41]));
  IBUF \Data_X_IBUF[42]_inst 
       (.I(Data_X[42]),
        .O(Data_X_IBUF[42]));
  IBUF \Data_X_IBUF[43]_inst 
       (.I(Data_X[43]),
        .O(Data_X_IBUF[43]));
  IBUF \Data_X_IBUF[44]_inst 
       (.I(Data_X[44]),
        .O(Data_X_IBUF[44]));
  IBUF \Data_X_IBUF[45]_inst 
       (.I(Data_X[45]),
        .O(Data_X_IBUF[45]));
  IBUF \Data_X_IBUF[46]_inst 
       (.I(Data_X[46]),
        .O(Data_X_IBUF[46]));
  IBUF \Data_X_IBUF[47]_inst 
       (.I(Data_X[47]),
        .O(Data_X_IBUF[47]));
  IBUF \Data_X_IBUF[48]_inst 
       (.I(Data_X[48]),
        .O(Data_X_IBUF[48]));
  IBUF \Data_X_IBUF[49]_inst 
       (.I(Data_X[49]),
        .O(Data_X_IBUF[49]));
  IBUF \Data_X_IBUF[4]_inst 
       (.I(Data_X[4]),
        .O(Data_X_IBUF[4]));
  IBUF \Data_X_IBUF[50]_inst 
       (.I(Data_X[50]),
        .O(Data_X_IBUF[50]));
  IBUF \Data_X_IBUF[51]_inst 
       (.I(Data_X[51]),
        .O(Data_X_IBUF[51]));
  IBUF \Data_X_IBUF[52]_inst 
       (.I(Data_X[52]),
        .O(Data_X_IBUF[52]));
  IBUF \Data_X_IBUF[53]_inst 
       (.I(Data_X[53]),
        .O(Data_X_IBUF[53]));
  IBUF \Data_X_IBUF[54]_inst 
       (.I(Data_X[54]),
        .O(Data_X_IBUF[54]));
  IBUF \Data_X_IBUF[55]_inst 
       (.I(Data_X[55]),
        .O(Data_X_IBUF[55]));
  IBUF \Data_X_IBUF[56]_inst 
       (.I(Data_X[56]),
        .O(Data_X_IBUF[56]));
  IBUF \Data_X_IBUF[57]_inst 
       (.I(Data_X[57]),
        .O(Data_X_IBUF[57]));
  IBUF \Data_X_IBUF[58]_inst 
       (.I(Data_X[58]),
        .O(Data_X_IBUF[58]));
  IBUF \Data_X_IBUF[59]_inst 
       (.I(Data_X[59]),
        .O(Data_X_IBUF[59]));
  IBUF \Data_X_IBUF[5]_inst 
       (.I(Data_X[5]),
        .O(Data_X_IBUF[5]));
  IBUF \Data_X_IBUF[60]_inst 
       (.I(Data_X[60]),
        .O(Data_X_IBUF[60]));
  IBUF \Data_X_IBUF[61]_inst 
       (.I(Data_X[61]),
        .O(Data_X_IBUF[61]));
  IBUF \Data_X_IBUF[62]_inst 
       (.I(Data_X[62]),
        .O(Data_X_IBUF[62]));
  IBUF \Data_X_IBUF[63]_inst 
       (.I(Data_X[63]),
        .O(Data_X_IBUF[63]));
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
  IBUF \Data_Y_IBUF[32]_inst 
       (.I(Data_Y[32]),
        .O(Data_Y_IBUF[32]));
  IBUF \Data_Y_IBUF[33]_inst 
       (.I(Data_Y[33]),
        .O(Data_Y_IBUF[33]));
  IBUF \Data_Y_IBUF[34]_inst 
       (.I(Data_Y[34]),
        .O(Data_Y_IBUF[34]));
  IBUF \Data_Y_IBUF[35]_inst 
       (.I(Data_Y[35]),
        .O(Data_Y_IBUF[35]));
  IBUF \Data_Y_IBUF[36]_inst 
       (.I(Data_Y[36]),
        .O(Data_Y_IBUF[36]));
  IBUF \Data_Y_IBUF[37]_inst 
       (.I(Data_Y[37]),
        .O(Data_Y_IBUF[37]));
  IBUF \Data_Y_IBUF[38]_inst 
       (.I(Data_Y[38]),
        .O(Data_Y_IBUF[38]));
  IBUF \Data_Y_IBUF[39]_inst 
       (.I(Data_Y[39]),
        .O(Data_Y_IBUF[39]));
  IBUF \Data_Y_IBUF[3]_inst 
       (.I(Data_Y[3]),
        .O(Data_Y_IBUF[3]));
  IBUF \Data_Y_IBUF[40]_inst 
       (.I(Data_Y[40]),
        .O(Data_Y_IBUF[40]));
  IBUF \Data_Y_IBUF[41]_inst 
       (.I(Data_Y[41]),
        .O(Data_Y_IBUF[41]));
  IBUF \Data_Y_IBUF[42]_inst 
       (.I(Data_Y[42]),
        .O(Data_Y_IBUF[42]));
  IBUF \Data_Y_IBUF[43]_inst 
       (.I(Data_Y[43]),
        .O(Data_Y_IBUF[43]));
  IBUF \Data_Y_IBUF[44]_inst 
       (.I(Data_Y[44]),
        .O(Data_Y_IBUF[44]));
  IBUF \Data_Y_IBUF[45]_inst 
       (.I(Data_Y[45]),
        .O(Data_Y_IBUF[45]));
  IBUF \Data_Y_IBUF[46]_inst 
       (.I(Data_Y[46]),
        .O(Data_Y_IBUF[46]));
  IBUF \Data_Y_IBUF[47]_inst 
       (.I(Data_Y[47]),
        .O(Data_Y_IBUF[47]));
  IBUF \Data_Y_IBUF[48]_inst 
       (.I(Data_Y[48]),
        .O(Data_Y_IBUF[48]));
  IBUF \Data_Y_IBUF[49]_inst 
       (.I(Data_Y[49]),
        .O(Data_Y_IBUF[49]));
  IBUF \Data_Y_IBUF[4]_inst 
       (.I(Data_Y[4]),
        .O(Data_Y_IBUF[4]));
  IBUF \Data_Y_IBUF[50]_inst 
       (.I(Data_Y[50]),
        .O(Data_Y_IBUF[50]));
  IBUF \Data_Y_IBUF[51]_inst 
       (.I(Data_Y[51]),
        .O(Data_Y_IBUF[51]));
  IBUF \Data_Y_IBUF[52]_inst 
       (.I(Data_Y[52]),
        .O(Data_Y_IBUF[52]));
  IBUF \Data_Y_IBUF[53]_inst 
       (.I(Data_Y[53]),
        .O(Data_Y_IBUF[53]));
  IBUF \Data_Y_IBUF[54]_inst 
       (.I(Data_Y[54]),
        .O(Data_Y_IBUF[54]));
  IBUF \Data_Y_IBUF[55]_inst 
       (.I(Data_Y[55]),
        .O(Data_Y_IBUF[55]));
  IBUF \Data_Y_IBUF[56]_inst 
       (.I(Data_Y[56]),
        .O(Data_Y_IBUF[56]));
  IBUF \Data_Y_IBUF[57]_inst 
       (.I(Data_Y[57]),
        .O(Data_Y_IBUF[57]));
  IBUF \Data_Y_IBUF[58]_inst 
       (.I(Data_Y[58]),
        .O(Data_Y_IBUF[58]));
  IBUF \Data_Y_IBUF[59]_inst 
       (.I(Data_Y[59]),
        .O(Data_Y_IBUF[59]));
  IBUF \Data_Y_IBUF[5]_inst 
       (.I(Data_Y[5]),
        .O(Data_Y_IBUF[5]));
  IBUF \Data_Y_IBUF[60]_inst 
       (.I(Data_Y[60]),
        .O(Data_Y_IBUF[60]));
  IBUF \Data_Y_IBUF[61]_inst 
       (.I(Data_Y[61]),
        .O(Data_Y_IBUF[61]));
  IBUF \Data_Y_IBUF[62]_inst 
       (.I(Data_Y[62]),
        .O(Data_Y_IBUF[62]));
  IBUF \Data_Y_IBUF[63]_inst 
       (.I(Data_Y[63]),
        .O(Data_Y_IBUF[63]));
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
  Exp_Operation Exp_Operation_Module
       (.AR(FS_Module_n_18),
        .D({Sign_S_mux,Exp_Operation_Module_n_3,Exp_Operation_Module_n_4,Exp_Operation_Module_n_5,Exp_Operation_Module_n_6,Exp_Operation_Module_n_7,Exp_Operation_Module_n_8,Exp_Operation_Module_n_9,Exp_Operation_Module_n_10,Exp_Operation_Module_n_11,Exp_Operation_Module_n_12,Exp_Operation_Module_n_13,Exp_Operation_Module_n_14,Exp_Operation_Module_n_15,Exp_Operation_Module_n_16,Exp_Operation_Module_n_17,Exp_Operation_Module_n_18,Exp_Operation_Module_n_19,Exp_Operation_Module_n_20,Exp_Operation_Module_n_21,Exp_Operation_Module_n_22,Exp_Operation_Module_n_23,Exp_Operation_Module_n_24,Exp_Operation_Module_n_25,Exp_Operation_Module_n_26,Exp_Operation_Module_n_27,Exp_Operation_Module_n_28,Exp_Operation_Module_n_29,Exp_Operation_Module_n_30,Exp_Operation_Module_n_31,Exp_Operation_Module_n_32,Exp_Operation_Module_n_33,Exp_Operation_Module_n_34,Exp_Operation_Module_n_35,Exp_Operation_Module_n_36,Exp_Operation_Module_n_37,Exp_Operation_Module_n_38,Exp_Operation_Module_n_39,Exp_Operation_Module_n_40,Exp_Operation_Module_n_41,Exp_Operation_Module_n_42,Exp_Operation_Module_n_43,Exp_Operation_Module_n_44,Exp_Operation_Module_n_45,Exp_Operation_Module_n_46,Exp_Operation_Module_n_47,Exp_Operation_Module_n_48,Exp_Operation_Module_n_49,Exp_Operation_Module_n_50,Exp_Operation_Module_n_51,Exp_Operation_Module_n_52,Exp_Operation_Module_n_53,Exp_Operation_Module_n_54,Exp_Operation_Module_n_55,Exp_Operation_Module_n_56,Exp_Operation_Module_n_57,Exp_Operation_Module_n_58,Exp_Operation_Module_n_59,Exp_Operation_Module_n_60,Exp_Operation_Module_n_61,Exp_Operation_Module_n_62,Exp_Operation_Module_n_63,Exp_Operation_Module_n_64,Exp_Operation_Module_n_65}),
        .E(FSM_exp_operation_load_diff),
        .FSM_exp_operation_A_S(FSM_exp_operation_A_S),
        .FSM_selector_B(FSM_selector_B),
        .FSM_selector_D(FSM_selector_D),
        .Q(exp_oper_result),
        .\Q_reg[0] (anomaly),
        .\Q_reg[0]_0 (FS_Module_n_22),
        .\Q_reg[0]_1 (LZA_output[0]),
        .\Q_reg[52] (Oper_Start_in_module_n_35),
        .\Q_reg[53] ({Barrel_Shifter_module_n_2,Barrel_Shifter_module_n_3,Barrel_Shifter_module_n_4,Barrel_Shifter_module_n_5,Barrel_Shifter_module_n_6,Barrel_Shifter_module_n_7,Barrel_Shifter_module_n_8,Barrel_Shifter_module_n_9,Barrel_Shifter_module_n_10,Barrel_Shifter_module_n_11,Barrel_Shifter_module_n_12,Barrel_Shifter_module_n_13,Barrel_Shifter_module_n_14,Barrel_Shifter_module_n_15,Barrel_Shifter_module_n_16,Barrel_Shifter_module_n_17,Barrel_Shifter_module_n_18,Barrel_Shifter_module_n_19,Barrel_Shifter_module_n_20,Barrel_Shifter_module_n_21,Barrel_Shifter_module_n_22,Barrel_Shifter_module_n_23,Barrel_Shifter_module_n_24,Barrel_Shifter_module_n_25,Barrel_Shifter_module_n_26,Barrel_Shifter_module_n_27,Barrel_Shifter_module_n_28,Barrel_Shifter_module_n_29,Barrel_Shifter_module_n_30,Barrel_Shifter_module_n_31,Barrel_Shifter_module_n_32,Barrel_Shifter_module_n_33,Barrel_Shifter_module_n_34,Barrel_Shifter_module_n_35,Barrel_Shifter_module_n_36,Barrel_Shifter_module_n_37,Barrel_Shifter_module_n_38,Barrel_Shifter_module_n_39,Barrel_Shifter_module_n_40,Barrel_Shifter_module_n_41,Barrel_Shifter_module_n_42,Barrel_Shifter_module_n_43,Barrel_Shifter_module_n_44,Barrel_Shifter_module_n_45,Barrel_Shifter_module_n_46,Barrel_Shifter_module_n_47,Barrel_Shifter_module_n_48,Barrel_Shifter_module_n_49,Barrel_Shifter_module_n_50,Barrel_Shifter_module_n_51,Barrel_Shifter_module_n_52,Barrel_Shifter_module_n_53}),
        .\Q_reg[62] ({Oper_Start_in_module_n_95,Oper_Start_in_module_n_96,Oper_Start_in_module_n_97,Oper_Start_in_module_n_98,Oper_Start_in_module_n_99,Oper_Start_in_module_n_100,Oper_Start_in_module_n_101,Oper_Start_in_module_n_102,Oper_Start_in_module_n_103,Oper_Start_in_module_n_104,Oper_Start_in_module_n_105}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .overflow_flag_OBUF(overflow_flag_OBUF),
        .p_0_in({FS_Module_n_17,Sel_B_n_57,Sel_B_n_58,Sel_B_n_59,Sel_B_n_60,Sel_B_n_61,Sel_B_n_62,Sel_B_n_63,Sel_B_n_64,Sel_B_n_65,Sel_B_n_66}),
        .sign_final_result(sign_final_result),
        .underflow_flag_OBUF(underflow_flag_OBUF));
  FSM_Add_Subtract FS_Module
       (.AR(rst_int),
        .CO(eqXY),
        .E(FSM_exp_operation_load_diff),
        .FSM_exp_operation_A_S(FSM_exp_operation_A_S),
        .FSM_selector_C(FSM_selector_C),
        .FSM_selector_D(FSM_selector_D),
        .\Q_reg[0] (FSM_Final_Result_load),
        .\Q_reg[0]_0 (FSM_op_start_in_load_a),
        .\Q_reg[0]_1 (FSM_op_start_in_load_b),
        .\Q_reg[0]_10 (Oper_Start_in_module_n_88),
        .\Q_reg[0]_2 (FSM_barrel_shifter_load),
        .\Q_reg[0]_3 (FSM_Add_Subt_Sgf_load),
        .\Q_reg[0]_4 (FSM_LZA_load),
        .\Q_reg[0]_5 (FS_Module_n_13),
        .\Q_reg[0]_6 (FS_Module_n_21),
        .\Q_reg[0]_7 (FS_Module_n_22),
        .\Q_reg[0]_8 (FS_Module_n_23),
        .\Q_reg[0]_9 (FS_Module_n_24),
        .\Q_reg[0]_rep (FS_Module_n_26),
        .\Q_reg[0]_rep__0 ({FS_Module_n_18,FS_Module_n_19,FS_Module_n_20}),
        .\Q_reg[0]_rep__0_0 (FS_Module_n_27),
        .\Q_reg[1] (anomaly),
        .\Q_reg[43] (FS_Module_n_14),
        .\Q_reg[43]_0 (FS_Module_n_15),
        .\Q_reg[43]_1 (FS_Module_n_25),
        .add_overflow_flag(add_overflow_flag),
        .beg_FSM_IBUF(beg_FSM_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out({FS_Module_n_0,FS_Module_n_1,FS_Module_n_2,FS_Module_n_3}),
        .p_0_in(FS_Module_n_17),
        .ready_OBUF(ready_OBUF),
        .real_op(real_op),
        .round_flag(round_flag),
        .rst(rst_IBUF),
        .rst_FSM_IBUF(rst_FSM_IBUF),
        .underflow_flag_OBUF(underflow_flag_OBUF));
  LZA Leading_Zero_Anticipator_Module
       (.D({\genblk1_0.Codec_64/Data_Bin_o [5:4],Oper_Start_in_module_n_91,\genblk1_0.Codec_64/Data_Bin_o [2],Oper_Start_in_module_n_93,\genblk1_0.Codec_64/Data_Bin_o [0]}),
        .E(FSM_LZA_load),
        .\FSM_sequential_state_reg_reg[3] (FS_Module_n_21),
        .Q(LZA_output),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  Oper_Start_In Oper_Start_in_module
       (.AR({rst_int,FS_Module_n_18,FS_Module_n_21,FS_Module_n_20}),
        .CO(eqXY),
        .D({Data_Reg[52],Data_Reg[44:43],Data_Reg[34],Data_Reg[30],Data_Reg[28:27],Data_Reg[22],Data_Reg[20],Data_Reg[11]}),
        .\Data_X[63] (Data_X_IBUF),
        .\Data_Y[63] (Data_Y_IBUF),
        .\Data_array[5]_0 ({\Mux_Array/Data_array[5]_4 [42],\Mux_Array/Data_array[5]_4 [34]}),
        .\Data_array[6]_1 ({\Mux_Array/Data_array[6]_5 [52],\Mux_Array/Data_array[6]_5 [44]}),
        .E(FSM_op_start_in_load_b),
        .FSM_barrel_shifter_B_S(FSM_barrel_shifter_B_S),
        .FSM_barrel_shifter_L_R(FSM_barrel_shifter_L_R),
        .FSM_selector_C(FSM_selector_C),
        .FSM_selector_D(FSM_selector_D),
        .\FSM_sequential_state_reg_reg[1] (FS_Module_n_14),
        .\FSM_sequential_state_reg_reg[2] (FS_Module_n_25),
        .\FSM_sequential_state_reg_reg[3] (Oper_Start_in_module_n_88),
        .\FSM_sequential_state_reg_reg[3]_0 (FSM_op_start_in_load_a),
        .\FSM_sequential_state_reg_reg[3]_1 (FS_Module_n_15),
        .\FSM_sequential_state_reg_reg[3]_2 (FS_Module_n_19),
        .Q({Add_Subt_Sgf_module_n_56,Add_Subt_Sgf_module_n_57,Add_Subt_Sgf_module_n_58,Add_Subt_Sgf_module_n_59,Add_Subt_Sgf_module_n_60,Add_Subt_Sgf_module_n_61,Add_Subt_Sgf_module_n_62,Add_Subt_Sgf_module_n_63,Add_Subt_Sgf_module_n_64,Add_Subt_Sgf_module_n_65,Add_Subt_Sgf_module_n_66,Add_Subt_Sgf_module_n_67,Add_Subt_Sgf_module_n_68,Add_Subt_Sgf_module_n_69,Add_Subt_Sgf_module_n_70,Add_Subt_Sgf_module_n_71,Add_Subt_Sgf_module_n_72,Add_Subt_Sgf_module_n_73,Add_Subt_Sgf_module_n_74,Add_Subt_Sgf_module_n_75,Add_Subt_Sgf_module_n_76,Add_Subt_Sgf_module_n_77,Add_Subt_Sgf_module_n_78,Add_Subt_Sgf_module_n_79,Add_Subt_Sgf_module_n_80,Add_Subt_Sgf_module_n_81,Add_Subt_Sgf_module_n_82,Add_Subt_Sgf_module_n_83,Add_Subt_Sgf_module_n_84,Add_Subt_Sgf_module_n_85,Add_Subt_Sgf_module_n_86,Add_Subt_Sgf_module_n_87,Add_Subt_Sgf_module_n_88,Add_Subt_Sgf_module_n_89,Add_Subt_Sgf_module_n_90,Add_Subt_Sgf_module_n_91,Add_Subt_Sgf_module_n_92,Add_Subt_Sgf_module_n_93,Add_Subt_Sgf_module_n_94,Add_Subt_Sgf_module_n_95,Add_Subt_Sgf_module_n_96,Add_Subt_Sgf_module_n_97,Add_Subt_Sgf_module_n_98,Add_Subt_Sgf_module_n_99,Add_Subt_Sgf_module_n_100,Add_Subt_Sgf_module_n_101,Add_Subt_Sgf_module_n_102,Add_Subt_Sgf_module_n_103,Add_Subt_Sgf_module_n_104,Add_Subt_Sgf_module_n_105,Add_Subt_Sgf_module_n_106,Add_Subt_Sgf_module_n_108}),
        .\Q_reg[0] ({\Mux_Array/Data_array[1]_2 [52],\Mux_Array/Data_array[1]_2 [50]}),
        .\Q_reg[0]_0 (\Mux_Array/Data_array[2]_1 [51]),
        .\Q_reg[0]_1 (Comb_to_Codec),
        .\Q_reg[0]_2 (A_S_C),
        .\Q_reg[0]_rep (Sel_D_n_1),
        .\Q_reg[0]_rep__0 (Sel_D_n_2),
        .\Q_reg[10] ({Oper_Start_in_module_n_25,Oper_Start_in_module_n_26,Oper_Start_in_module_n_27,Oper_Start_in_module_n_28,Oper_Start_in_module_n_29,Oper_Start_in_module_n_30,Oper_Start_in_module_n_31,Oper_Start_in_module_n_32,Oper_Start_in_module_n_33,Oper_Start_in_module_n_34,Oper_Start_in_module_n_35,Oper_Start_in_module_n_36,Oper_Start_in_module_n_37,Oper_Start_in_module_n_38,Oper_Start_in_module_n_39,Oper_Start_in_module_n_40,Oper_Start_in_module_n_41,Oper_Start_in_module_n_42,Oper_Start_in_module_n_43,Oper_Start_in_module_n_44,Oper_Start_in_module_n_45,Oper_Start_in_module_n_46,Oper_Start_in_module_n_47,Oper_Start_in_module_n_48,Oper_Start_in_module_n_49,Oper_Start_in_module_n_50,Oper_Start_in_module_n_51,Oper_Start_in_module_n_52,Oper_Start_in_module_n_53,Oper_Start_in_module_n_54,Oper_Start_in_module_n_55,Oper_Start_in_module_n_56,Oper_Start_in_module_n_57,Oper_Start_in_module_n_58,Oper_Start_in_module_n_59,Oper_Start_in_module_n_60,Oper_Start_in_module_n_61,Oper_Start_in_module_n_62,Oper_Start_in_module_n_63,Oper_Start_in_module_n_64,Oper_Start_in_module_n_65,Oper_Start_in_module_n_66,Oper_Start_in_module_n_67,Oper_Start_in_module_n_68,Oper_Start_in_module_n_69,Oper_Start_in_module_n_70,Oper_Start_in_module_n_71,Oper_Start_in_module_n_72,Oper_Start_in_module_n_73,Oper_Start_in_module_n_74,Oper_Start_in_module_n_75,Oper_Start_in_module_n_76,Oper_Start_in_module_n_77,Oper_Start_in_module_n_78,Oper_Start_in_module_n_79,Oper_Start_in_module_n_80,Oper_Start_in_module_n_81,Oper_Start_in_module_n_82,Oper_Start_in_module_n_83,Oper_Start_in_module_n_84,Oper_Start_in_module_n_85,Oper_Start_in_module_n_86,Oper_Start_in_module_n_87}),
        .\Q_reg[10]_0 ({Oper_Start_in_module_n_95,Oper_Start_in_module_n_96,Oper_Start_in_module_n_97,Oper_Start_in_module_n_98,Oper_Start_in_module_n_99,Oper_Start_in_module_n_100,Oper_Start_in_module_n_101,Oper_Start_in_module_n_102,Oper_Start_in_module_n_103,Oper_Start_in_module_n_104,Oper_Start_in_module_n_105,Oper_Start_in_module_n_106,Oper_Start_in_module_n_107,Oper_Start_in_module_n_108,Oper_Start_in_module_n_109,Oper_Start_in_module_n_110,Oper_Start_in_module_n_111,Oper_Start_in_module_n_112,Oper_Start_in_module_n_113,Oper_Start_in_module_n_114,Oper_Start_in_module_n_115,Oper_Start_in_module_n_116,Oper_Start_in_module_n_117,Oper_Start_in_module_n_118,Oper_Start_in_module_n_119,Oper_Start_in_module_n_120,Oper_Start_in_module_n_121,Oper_Start_in_module_n_122,Oper_Start_in_module_n_123,Oper_Start_in_module_n_124,Oper_Start_in_module_n_125,Oper_Start_in_module_n_126,Oper_Start_in_module_n_127,Oper_Start_in_module_n_128,Oper_Start_in_module_n_129,Oper_Start_in_module_n_130,Oper_Start_in_module_n_131,Oper_Start_in_module_n_132,Oper_Start_in_module_n_133,Oper_Start_in_module_n_134,Oper_Start_in_module_n_135,Oper_Start_in_module_n_136,Oper_Start_in_module_n_137,Oper_Start_in_module_n_138,Oper_Start_in_module_n_139,Oper_Start_in_module_n_140,Oper_Start_in_module_n_141,Oper_Start_in_module_n_142,Oper_Start_in_module_n_143,Oper_Start_in_module_n_144,Oper_Start_in_module_n_145,Oper_Start_in_module_n_146,Oper_Start_in_module_n_147,Oper_Start_in_module_n_148,Oper_Start_in_module_n_149,Oper_Start_in_module_n_150,Oper_Start_in_module_n_151,Oper_Start_in_module_n_152,Oper_Start_in_module_n_153,Oper_Start_in_module_n_154,Oper_Start_in_module_n_155,Oper_Start_in_module_n_156,Oper_Start_in_module_n_157}),
        .\Q_reg[1] (Oper_Start_in_module_n_212),
        .\Q_reg[1]_0 (\Mux_Array/Data_array[0]_0 [53]),
        .\Q_reg[27] (S_Data_Shift[27]),
        .\Q_reg[2] ({\Mux_Array/Data_array[2]_1 [52],\Mux_Array/Data_array[2]_1 [49:47]}),
        .\Q_reg[2]_0 ({\Mux_Array/Data_array[3]_3 [42],\Mux_Array/Data_array[3]_3 [34]}),
        .\Q_reg[32] (\Mux_Array/Data_array[1]_2 [54]),
        .\Q_reg[37] (\Mux_Array/Data_array[0]_0 [52:51]),
        .\Q_reg[44] (\Mux_Array/Data_array[3]_3 [50]),
        .\Q_reg[4] ({\Mux_Array/Data_array[5]_4 [54],\Mux_Array/Data_array[5]_4 [52],\Mux_Array/Data_array[5]_4 [32],\Mux_Array/Data_array[5]_4 [30],\Mux_Array/Data_array[5]_4 [28],\Mux_Array/Data_array[5]_4 [26],\Mux_Array/Data_array[5]_4 [24],\Mux_Array/Data_array[5]_4 [22],\Mux_Array/Data_array[5]_4 [20],\Mux_Array/Data_array[5]_4 [11:10],\Mux_Array/Data_array[5]_4 [2]}),
        .\Q_reg[54] ({S_to_D[54:4],S_to_D[1]}),
        .\Q_reg[54]_0 ({Barrel_Shifter_module_n_1,Barrel_Shifter_module_n_2,Barrel_Shifter_module_n_3,Barrel_Shifter_module_n_4,Barrel_Shifter_module_n_5,Barrel_Shifter_module_n_6,Barrel_Shifter_module_n_7,Barrel_Shifter_module_n_8,Barrel_Shifter_module_n_9,Barrel_Shifter_module_n_10,Barrel_Shifter_module_n_11,Barrel_Shifter_module_n_12,Barrel_Shifter_module_n_13,Barrel_Shifter_module_n_14,Barrel_Shifter_module_n_15,Barrel_Shifter_module_n_16,Barrel_Shifter_module_n_17,Barrel_Shifter_module_n_18,Barrel_Shifter_module_n_19,Barrel_Shifter_module_n_20,Barrel_Shifter_module_n_21,Barrel_Shifter_module_n_22,Barrel_Shifter_module_n_23,Barrel_Shifter_module_n_24,Barrel_Shifter_module_n_25,Barrel_Shifter_module_n_26,Barrel_Shifter_module_n_27,Barrel_Shifter_module_n_28,Barrel_Shifter_module_n_29,Barrel_Shifter_module_n_30,Barrel_Shifter_module_n_31,Barrel_Shifter_module_n_32,Barrel_Shifter_module_n_33,Barrel_Shifter_module_n_34,Barrel_Shifter_module_n_35,Barrel_Shifter_module_n_36,Barrel_Shifter_module_n_37,Barrel_Shifter_module_n_38,Barrel_Shifter_module_n_39,Barrel_Shifter_module_n_40,Barrel_Shifter_module_n_41,Barrel_Shifter_module_n_42,Barrel_Shifter_module_n_43,Barrel_Shifter_module_n_44,Barrel_Shifter_module_n_45,Barrel_Shifter_module_n_46,Barrel_Shifter_module_n_47,Barrel_Shifter_module_n_48,Barrel_Shifter_module_n_49,Barrel_Shifter_module_n_50,Barrel_Shifter_module_n_51,Barrel_Shifter_module_n_52,Barrel_Shifter_module_n_53,Sgf_normalized_result}),
        .\Q_reg[5] ({\genblk1_0.Codec_64/Data_Bin_o [5:4],Oper_Start_in_module_n_91,\genblk1_0.Codec_64/Data_Bin_o [2],Oper_Start_in_module_n_93,\genblk1_0.Codec_64/Data_Bin_o [0]}),
        .\Q_reg[5]_0 (Oper_Start_in_module_n_158),
        .S_A_S_Oper_A(S_A_S_Oper_A),
        .S_Shift_Value(S_Shift_Value),
        .add_overflow_flag(add_overflow_flag),
        .add_subt_IBUF(add_subt_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(FS_Module_n_2),
        .real_op(real_op),
        .sign_final_result(sign_final_result));
  RegisterAdd__parameterized0 Sel_B
       (.D({Data_Reg[53],Data_Reg[51:45],Data_Reg[42:35],Data_Reg[33:32],Data_Reg[29],Data_Reg[26:24],Data_Reg[21],Data_Reg[19:12],Data_Reg[10:0]}),
        .\Data_array[0]_1 (\Mux_Array/Data_array[0]_0 [54:53]),
        .\Data_array[1]_0 ({\Mux_Array/Data_array[1]_2 [54:51],\Mux_Array/Data_array[1]_2 [49]}),
        .FSM_barrel_shifter_B_S(FSM_barrel_shifter_B_S),
        .FSM_barrel_shifter_L_R(FSM_barrel_shifter_L_R),
        .FSM_exp_operation_A_S(FSM_exp_operation_A_S),
        .FSM_selector_B(FSM_selector_B),
        .\FSM_sequential_state_reg_reg[0] (FS_Module_n_13),
        .\FSM_sequential_state_reg_reg[3] (FSM_LZA_load),
        .\FSM_sequential_state_reg_reg[3]_0 (FS_Module_n_21),
        .Q(LZA_output),
        .\Q_reg[0]_0 ({\Mux_Array/Data_array[6]_5 [54],\Mux_Array/Data_array[6]_5 [52],\Mux_Array/Data_array[6]_5 [44]}),
        .\Q_reg[0]_1 ({\Mux_Array/Data_array[5]_4 [42],\Mux_Array/Data_array[5]_4 [34],\Mux_Array/Data_array[5]_4 [32],\Mux_Array/Data_array[5]_4 [26],\Mux_Array/Data_array[5]_4 [24],\Mux_Array/Data_array[5]_4 [22:21],\Mux_Array/Data_array[5]_4 [19:12],\Mux_Array/Data_array[5]_4 [10:0]}),
        .\Q_reg[0]_2 ({\Mux_Array/Data_array[3]_3 [50],\Mux_Array/Data_array[3]_3 [48:35],\Mux_Array/Data_array[3]_3 [33],\Mux_Array/Data_array[3]_3 [30:28],\Mux_Array/Data_array[3]_3 [25]}),
        .\Q_reg[0]_3 ({\Mux_Array/Data_array[2]_1 [52:51],\Mux_Array/Data_array[2]_1 [49:47]}),
        .\Q_reg[32] ({\Mux_Array/Data_array[5]_4 [54],\Mux_Array/Data_array[5]_4 [52],\Mux_Array/Data_array[5]_4 [30],\Mux_Array/Data_array[5]_4 [28]}),
        .\Q_reg[54] (Oper_Start_in_module_n_212),
        .\Q_reg[5] (exp_oper_result),
        .\Q_reg[62] ({Oper_Start_in_module_n_25,Oper_Start_in_module_n_26,Oper_Start_in_module_n_27,Oper_Start_in_module_n_28,Oper_Start_in_module_n_29,Oper_Start_in_module_n_30,Oper_Start_in_module_n_31,Oper_Start_in_module_n_32,Oper_Start_in_module_n_33,Oper_Start_in_module_n_34}),
        .S_Shift_Value(S_Shift_Value),
        .add_overflow_flag(add_overflow_flag),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out({FS_Module_n_0,FS_Module_n_1,FS_Module_n_2,FS_Module_n_3}),
        .p_0_in({Sel_B_n_57,Sel_B_n_58,Sel_B_n_59,Sel_B_n_60,Sel_B_n_61,Sel_B_n_62,Sel_B_n_63,Sel_B_n_64,Sel_B_n_65,Sel_B_n_66}),
        .real_op(real_op));
  RegisterAdd Sel_C
       (.\Data_array[1]_0 (\Mux_Array/Data_array[1]_2 [53]),
        .FSM_barrel_shifter_L_R(FSM_barrel_shifter_L_R),
        .FSM_selector_C(FSM_selector_C),
        .\FSM_sequential_state_reg_reg[1] (FS_Module_n_23),
        .\FSM_sequential_state_reg_reg[3] (FS_Module_n_20),
        .Q({Add_Subt_Sgf_module_n_107,Add_Subt_Sgf_module_n_108}),
        .\Q_reg[29] (Sel_C_n_2),
        .\Q_reg[29]_0 (Sel_C_n_3),
        .\Q_reg[54] (S_Data_Shift[54:53]),
        .S_Shift_Value(S_Shift_Value[0]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  RegisterAdd_0 Sel_D
       (.AR({FS_Module_n_18,FS_Module_n_21}),
        .FSM_selector_D(FSM_selector_D),
        .\FSM_sequential_state_reg_reg[2] (FS_Module_n_24),
        .\FSM_sequential_state_reg_reg[2]_0 (FS_Module_n_26),
        .\FSM_sequential_state_reg_reg[2]_1 (FS_Module_n_27),
        .\Q_reg[44] (Sel_D_n_1),
        .\Q_reg[52] (Sel_D_n_2),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  IBUF add_subt_IBUF_inst
       (.I(add_subt),
        .O(add_subt_IBUF));
  IBUF beg_FSM_IBUF_inst
       (.I(beg_FSM),
        .O(beg_FSM_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  Tenth_Phase final_result_ieee_Module
       (.AR(rst_int),
        .D({Sign_S_mux,Exp_Operation_Module_n_3,Exp_Operation_Module_n_4,Exp_Operation_Module_n_5,Exp_Operation_Module_n_6,Exp_Operation_Module_n_7,Exp_Operation_Module_n_8,Exp_Operation_Module_n_9,Exp_Operation_Module_n_10,Exp_Operation_Module_n_11,Exp_Operation_Module_n_12,Exp_Operation_Module_n_13,Exp_Operation_Module_n_14,Exp_Operation_Module_n_15,Exp_Operation_Module_n_16,Exp_Operation_Module_n_17,Exp_Operation_Module_n_18,Exp_Operation_Module_n_19,Exp_Operation_Module_n_20,Exp_Operation_Module_n_21,Exp_Operation_Module_n_22,Exp_Operation_Module_n_23,Exp_Operation_Module_n_24,Exp_Operation_Module_n_25,Exp_Operation_Module_n_26,Exp_Operation_Module_n_27,Exp_Operation_Module_n_28,Exp_Operation_Module_n_29,Exp_Operation_Module_n_30,Exp_Operation_Module_n_31,Exp_Operation_Module_n_32,Exp_Operation_Module_n_33,Exp_Operation_Module_n_34,Exp_Operation_Module_n_35,Exp_Operation_Module_n_36,Exp_Operation_Module_n_37,Exp_Operation_Module_n_38,Exp_Operation_Module_n_39,Exp_Operation_Module_n_40,Exp_Operation_Module_n_41,Exp_Operation_Module_n_42,Exp_Operation_Module_n_43,Exp_Operation_Module_n_44,Exp_Operation_Module_n_45,Exp_Operation_Module_n_46,Exp_Operation_Module_n_47,Exp_Operation_Module_n_48,Exp_Operation_Module_n_49,Exp_Operation_Module_n_50,Exp_Operation_Module_n_51,Exp_Operation_Module_n_52,Exp_Operation_Module_n_53,Exp_Operation_Module_n_54,Exp_Operation_Module_n_55,Exp_Operation_Module_n_56,Exp_Operation_Module_n_57,Exp_Operation_Module_n_58,Exp_Operation_Module_n_59,Exp_Operation_Module_n_60,Exp_Operation_Module_n_61,Exp_Operation_Module_n_62,Exp_Operation_Module_n_63,Exp_Operation_Module_n_64,Exp_Operation_Module_n_65}),
        .E(FSM_Final_Result_load),
        .Q(final_result_ieee_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
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
  OBUF \final_result_ieee_OBUF[32]_inst 
       (.I(final_result_ieee_OBUF[32]),
        .O(final_result_ieee[32]));
  OBUF \final_result_ieee_OBUF[33]_inst 
       (.I(final_result_ieee_OBUF[33]),
        .O(final_result_ieee[33]));
  OBUF \final_result_ieee_OBUF[34]_inst 
       (.I(final_result_ieee_OBUF[34]),
        .O(final_result_ieee[34]));
  OBUF \final_result_ieee_OBUF[35]_inst 
       (.I(final_result_ieee_OBUF[35]),
        .O(final_result_ieee[35]));
  OBUF \final_result_ieee_OBUF[36]_inst 
       (.I(final_result_ieee_OBUF[36]),
        .O(final_result_ieee[36]));
  OBUF \final_result_ieee_OBUF[37]_inst 
       (.I(final_result_ieee_OBUF[37]),
        .O(final_result_ieee[37]));
  OBUF \final_result_ieee_OBUF[38]_inst 
       (.I(final_result_ieee_OBUF[38]),
        .O(final_result_ieee[38]));
  OBUF \final_result_ieee_OBUF[39]_inst 
       (.I(final_result_ieee_OBUF[39]),
        .O(final_result_ieee[39]));
  OBUF \final_result_ieee_OBUF[3]_inst 
       (.I(final_result_ieee_OBUF[3]),
        .O(final_result_ieee[3]));
  OBUF \final_result_ieee_OBUF[40]_inst 
       (.I(final_result_ieee_OBUF[40]),
        .O(final_result_ieee[40]));
  OBUF \final_result_ieee_OBUF[41]_inst 
       (.I(final_result_ieee_OBUF[41]),
        .O(final_result_ieee[41]));
  OBUF \final_result_ieee_OBUF[42]_inst 
       (.I(final_result_ieee_OBUF[42]),
        .O(final_result_ieee[42]));
  OBUF \final_result_ieee_OBUF[43]_inst 
       (.I(final_result_ieee_OBUF[43]),
        .O(final_result_ieee[43]));
  OBUF \final_result_ieee_OBUF[44]_inst 
       (.I(final_result_ieee_OBUF[44]),
        .O(final_result_ieee[44]));
  OBUF \final_result_ieee_OBUF[45]_inst 
       (.I(final_result_ieee_OBUF[45]),
        .O(final_result_ieee[45]));
  OBUF \final_result_ieee_OBUF[46]_inst 
       (.I(final_result_ieee_OBUF[46]),
        .O(final_result_ieee[46]));
  OBUF \final_result_ieee_OBUF[47]_inst 
       (.I(final_result_ieee_OBUF[47]),
        .O(final_result_ieee[47]));
  OBUF \final_result_ieee_OBUF[48]_inst 
       (.I(final_result_ieee_OBUF[48]),
        .O(final_result_ieee[48]));
  OBUF \final_result_ieee_OBUF[49]_inst 
       (.I(final_result_ieee_OBUF[49]),
        .O(final_result_ieee[49]));
  OBUF \final_result_ieee_OBUF[4]_inst 
       (.I(final_result_ieee_OBUF[4]),
        .O(final_result_ieee[4]));
  OBUF \final_result_ieee_OBUF[50]_inst 
       (.I(final_result_ieee_OBUF[50]),
        .O(final_result_ieee[50]));
  OBUF \final_result_ieee_OBUF[51]_inst 
       (.I(final_result_ieee_OBUF[51]),
        .O(final_result_ieee[51]));
  OBUF \final_result_ieee_OBUF[52]_inst 
       (.I(final_result_ieee_OBUF[52]),
        .O(final_result_ieee[52]));
  OBUF \final_result_ieee_OBUF[53]_inst 
       (.I(final_result_ieee_OBUF[53]),
        .O(final_result_ieee[53]));
  OBUF \final_result_ieee_OBUF[54]_inst 
       (.I(final_result_ieee_OBUF[54]),
        .O(final_result_ieee[54]));
  OBUF \final_result_ieee_OBUF[55]_inst 
       (.I(final_result_ieee_OBUF[55]),
        .O(final_result_ieee[55]));
  OBUF \final_result_ieee_OBUF[56]_inst 
       (.I(final_result_ieee_OBUF[56]),
        .O(final_result_ieee[56]));
  OBUF \final_result_ieee_OBUF[57]_inst 
       (.I(final_result_ieee_OBUF[57]),
        .O(final_result_ieee[57]));
  OBUF \final_result_ieee_OBUF[58]_inst 
       (.I(final_result_ieee_OBUF[58]),
        .O(final_result_ieee[58]));
  OBUF \final_result_ieee_OBUF[59]_inst 
       (.I(final_result_ieee_OBUF[59]),
        .O(final_result_ieee[59]));
  OBUF \final_result_ieee_OBUF[5]_inst 
       (.I(final_result_ieee_OBUF[5]),
        .O(final_result_ieee[5]));
  OBUF \final_result_ieee_OBUF[60]_inst 
       (.I(final_result_ieee_OBUF[60]),
        .O(final_result_ieee[60]));
  OBUF \final_result_ieee_OBUF[61]_inst 
       (.I(final_result_ieee_OBUF[61]),
        .O(final_result_ieee[61]));
  OBUF \final_result_ieee_OBUF[62]_inst 
       (.I(final_result_ieee_OBUF[62]),
        .O(final_result_ieee[62]));
  OBUF \final_result_ieee_OBUF[63]_inst 
       (.I(final_result_ieee_OBUF[63]),
        .O(final_result_ieee[63]));
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
   (out,
    E,
    \Q_reg[0] ,
    ready_OBUF,
    AR,
    \Q_reg[0]_0 ,
    \Q_reg[0]_1 ,
    \Q_reg[0]_2 ,
    \Q_reg[0]_3 ,
    \Q_reg[0]_4 ,
    \Q_reg[0]_5 ,
    \Q_reg[43] ,
    \Q_reg[43]_0 ,
    FSM_exp_operation_A_S,
    p_0_in,
    \Q_reg[0]_rep__0 ,
    \Q_reg[0]_6 ,
    \Q_reg[0]_7 ,
    \Q_reg[0]_8 ,
    \Q_reg[0]_9 ,
    \Q_reg[43]_1 ,
    \Q_reg[0]_rep ,
    \Q_reg[0]_rep__0_0 ,
    beg_FSM_IBUF,
    rst_FSM_IBUF,
    \Q_reg[0]_10 ,
    round_flag,
    real_op,
    CO,
    FSM_selector_C,
    add_overflow_flag,
    \Q_reg[1] ,
    underflow_flag_OBUF,
    FSM_selector_D,
    clk_IBUF_BUFG,
    rst);
  output [3:0]out;
  output [0:0]E;
  output [0:0]\Q_reg[0] ;
  output ready_OBUF;
  output [0:0]AR;
  output [0:0]\Q_reg[0]_0 ;
  output [0:0]\Q_reg[0]_1 ;
  output [0:0]\Q_reg[0]_2 ;
  output [0:0]\Q_reg[0]_3 ;
  output [0:0]\Q_reg[0]_4 ;
  output \Q_reg[0]_5 ;
  output \Q_reg[43] ;
  output \Q_reg[43]_0 ;
  output FSM_exp_operation_A_S;
  output [0:0]p_0_in;
  output [2:0]\Q_reg[0]_rep__0 ;
  output [0:0]\Q_reg[0]_6 ;
  output \Q_reg[0]_7 ;
  output \Q_reg[0]_8 ;
  output \Q_reg[0]_9 ;
  output \Q_reg[43]_1 ;
  output \Q_reg[0]_rep ;
  output \Q_reg[0]_rep__0_0 ;
  input beg_FSM_IBUF;
  input rst_FSM_IBUF;
  input \Q_reg[0]_10 ;
  input round_flag;
  input real_op;
  input [0:0]CO;
  input FSM_selector_C;
  input add_overflow_flag;
  input [0:0]\Q_reg[1] ;
  input underflow_flag_OBUF;
  input FSM_selector_D;
  input clk_IBUF_BUFG;
  input [0:0]rst;

  wire [0:0]AR;
  wire [0:0]CO;
  wire [0:0]E;
  wire FSM_exp_operation_A_S;
  wire FSM_exp_operation_load_OU;
  wire FSM_selector_C;
  wire FSM_selector_D;
  wire \FSM_sequential_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[3]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[3]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[3]_i_3_n_0 ;
  wire [0:0]\Q_reg[0] ;
  wire [0:0]\Q_reg[0]_0 ;
  wire [0:0]\Q_reg[0]_1 ;
  wire \Q_reg[0]_10 ;
  wire [0:0]\Q_reg[0]_2 ;
  wire [0:0]\Q_reg[0]_3 ;
  wire [0:0]\Q_reg[0]_4 ;
  wire \Q_reg[0]_5 ;
  wire [0:0]\Q_reg[0]_6 ;
  wire \Q_reg[0]_7 ;
  wire \Q_reg[0]_8 ;
  wire \Q_reg[0]_9 ;
  wire \Q_reg[0]_rep ;
  wire [2:0]\Q_reg[0]_rep__0 ;
  wire \Q_reg[0]_rep__0_0 ;
  wire [0:0]\Q_reg[1] ;
  wire \Q_reg[43] ;
  wire \Q_reg[43]_0 ;
  wire \Q_reg[43]_1 ;
  wire add_overflow_flag;
  wire beg_FSM_IBUF;
  wire clk_IBUF_BUFG;
  (* RTL_KEEP = "yes" *) wire [3:0]out;
  wire [0:0]p_0_in;
  wire ready_OBUF;
  wire real_op;
  wire round_flag;
  wire [0:0]rst;
  wire rst_FSM_IBUF;
  wire underflow_flag_OBUF;

  LUT6 #(
    .INIT(64'h0333733303334333)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(add_overflow_flag),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[1]),
        .I4(out[3]),
        .I5(round_flag),
        .O(\FSM_sequential_state_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h552A512A)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(out[1]),
        .I1(out[2]),
        .I2(out[3]),
        .I3(out[0]),
        .I4(FSM_selector_C),
        .O(\FSM_sequential_state_reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11AAA8AA)) 
    \FSM_sequential_state_reg[2]_i_1 
       (.I0(out[2]),
        .I1(out[3]),
        .I2(round_flag),
        .I3(out[1]),
        .I4(out[0]),
        .O(\FSM_sequential_state_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5FFFFFFE5FFF5FFE)) 
    \FSM_sequential_state_reg[3]_i_1 
       (.I0(out[0]),
        .I1(beg_FSM_IBUF),
        .I2(out[3]),
        .I3(out[1]),
        .I4(out[2]),
        .I5(rst_FSM_IBUF),
        .O(\FSM_sequential_state_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F1F1F44445040)) 
    \FSM_sequential_state_reg[3]_i_2 
       (.I0(\FSM_sequential_state_reg[3]_i_3_n_0 ),
        .I1(out[2]),
        .I2(out[1]),
        .I3(\Q_reg[0]_10 ),
        .I4(out[0]),
        .I5(out[3]),
        .O(\FSM_sequential_state_reg[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0F880088)) 
    \FSM_sequential_state_reg[3]_i_3 
       (.I0(out[2]),
        .I1(round_flag),
        .I2(out[1]),
        .I3(out[0]),
        .I4(FSM_selector_C),
        .O(\FSM_sequential_state_reg[3]_i_3_n_0 ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[3]_i_1_n_0 ),
        .CLR(rst),
        .D(\FSM_sequential_state_reg[0]_i_1_n_0 ),
        .Q(out[0]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[3]_i_1_n_0 ),
        .CLR(rst),
        .D(\FSM_sequential_state_reg[1]_i_1_n_0 ),
        .Q(out[1]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[3]_i_1_n_0 ),
        .CLR(rst),
        .D(\FSM_sequential_state_reg[2]_i_1_n_0 ),
        .Q(out[2]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[3]_i_1_n_0 ),
        .CLR(rst),
        .D(\FSM_sequential_state_reg[3]_i_2_n_0 ),
        .Q(out[3]));
  LUT6 #(
    .INIT(64'h0000001000100010)) 
    \Q[0]_i_1 
       (.I0(out[3]),
        .I1(out[2]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(real_op),
        .I5(CO),
        .O(\Q_reg[0]_1 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \Q[0]_i_1__6 
       (.I0(FSM_exp_operation_A_S),
        .I1(\Q_reg[1] ),
        .I2(FSM_exp_operation_load_OU),
        .I3(underflow_flag_OBUF),
        .O(\Q_reg[0]_7 ));
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    \Q[0]_i_1__7 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[3]),
        .I4(FSM_selector_C),
        .O(\Q_reg[0]_8 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000800)) 
    \Q[0]_i_1__8 
       (.I0(round_flag),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(out[3]),
        .I5(FSM_selector_D),
        .O(\Q_reg[0]_9 ));
  LUT4 #(
    .INIT(16'h4004)) 
    \Q[0]_i_2 
       (.I0(out[0]),
        .I1(out[3]),
        .I2(out[2]),
        .I3(out[1]),
        .O(FSM_exp_operation_load_OU));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \Q[0]_i_3 
       (.I0(out[0]),
        .I1(out[2]),
        .I2(out[3]),
        .I3(out[1]),
        .O(\Q_reg[0]_5 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000800)) 
    \Q[0]_rep__0_i_1 
       (.I0(round_flag),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(out[3]),
        .I5(FSM_selector_D),
        .O(\Q_reg[0]_rep__0_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000800)) 
    \Q[0]_rep_i_1 
       (.I0(round_flag),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(out[3]),
        .I5(FSM_selector_D),
        .O(\Q_reg[0]_rep ));
  LUT4 #(
    .INIT(16'h2108)) 
    \Q[10]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[3]),
        .O(E));
  LUT6 #(
    .INIT(64'h2FFF3FFF3FFFFFFF)) 
    \Q[10]_i_6 
       (.I0(real_op),
        .I1(out[0]),
        .I2(out[1]),
        .I3(out[2]),
        .I4(add_overflow_flag),
        .I5(out[3]),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'h0001)) 
    \Q[11]_i_1 
       (.I0(out[3]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .O(\Q_reg[0]_rep__0 [0]));
  LUT4 #(
    .INIT(16'h0001)) 
    \Q[1]_i_2 
       (.I0(out[3]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .O(\Q_reg[0]_6 ));
  LUT6 #(
    .INIT(64'h2FFF3FFF3FFFFFFF)) 
    \Q[3]_i_6 
       (.I0(real_op),
        .I1(out[0]),
        .I2(out[1]),
        .I3(out[2]),
        .I4(add_overflow_flag),
        .I5(out[3]),
        .O(FSM_exp_operation_A_S));
  LUT3 #(
    .INIT(8'hDF)) 
    \Q[47]_i_12__0 
       (.I0(out[2]),
        .I1(out[3]),
        .I2(out[0]),
        .O(\Q_reg[43]_1 ));
  LUT4 #(
    .INIT(16'h0440)) 
    \Q[54]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[3]),
        .I3(out[2]),
        .O(\Q_reg[0]_2 ));
  LUT2 #(
    .INIT(4'hB)) 
    \Q[54]_i_16 
       (.I0(out[1]),
        .I1(out[0]),
        .O(\Q_reg[43] ));
  LUT2 #(
    .INIT(4'hB)) 
    \Q[54]_i_19 
       (.I0(out[3]),
        .I1(out[2]),
        .O(\Q_reg[43]_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \Q[54]_i_1__0 
       (.I0(out[3]),
        .I1(out[2]),
        .I2(out[1]),
        .O(\Q_reg[0]_3 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \Q[5]_i_1 
       (.I0(out[3]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .O(\Q_reg[0]_4 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \Q[62]_i_1 
       (.I0(out[3]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .O(\Q_reg[0]_rep__0 [1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \Q[62]_i_2 
       (.I0(out[3]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .O(AR));
  LUT4 #(
    .INIT(16'h0040)) 
    \Q[63]_i_1 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(out[3]),
        .I3(out[0]),
        .O(\Q_reg[0] ));
  LUT4 #(
    .INIT(16'h0010)) 
    \Q[63]_i_1__0 
       (.I0(out[3]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .O(\Q_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \Q[7]_i_2 
       (.I0(out[3]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .O(\Q_reg[0]_rep__0 [2]));
  LUT4 #(
    .INIT(16'h0800)) 
    ready_OBUF_inst_i_1
       (.I0(out[0]),
        .I1(out[3]),
        .I2(out[2]),
        .I3(out[1]),
        .O(ready_OBUF));
endmodule

module LZA
   (Q,
    E,
    D,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[3] );
  output [5:0]Q;
  input [0:0]E;
  input [5:0]D;
  input clk_IBUF_BUFG;
  input [0:0]\FSM_sequential_state_reg_reg[3] ;

  wire [5:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_sequential_state_reg_reg[3] ;
  wire [5:0]Q;
  wire clk_IBUF_BUFG;

  RegisterAdd__parameterized8 Output_Reg
       (.D(D),
        .E(E),
        .\FSM_sequential_state_reg_reg[3] (\FSM_sequential_state_reg_reg[3] ),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
endmodule

module Oper_Start_In
   (sign_final_result,
    FSM_barrel_shifter_L_R,
    real_op,
    FSM_barrel_shifter_B_S,
    CO,
    D,
    \Data_array[5]_0 ,
    \Q_reg[44] ,
    \Q_reg[32] ,
    \Q_reg[2] ,
    \Q_reg[37] ,
    \Q_reg[10] ,
    \FSM_sequential_state_reg_reg[3] ,
    \Q_reg[5] ,
    \Q_reg[10]_0 ,
    \Q_reg[5]_0 ,
    add_overflow_flag,
    \Q_reg[54] ,
    \Q_reg[1] ,
    E,
    clk_IBUF_BUFG,
    AR,
    \FSM_sequential_state_reg_reg[3]_0 ,
    add_subt_IBUF,
    \FSM_sequential_state_reg_reg[1] ,
    FSM_selector_C,
    \FSM_sequential_state_reg_reg[3]_1 ,
    out,
    \FSM_sequential_state_reg_reg[2] ,
    S_Shift_Value,
    \Q_reg[4] ,
    \Data_array[6]_1 ,
    \Q_reg[2]_0 ,
    \Q_reg[0] ,
    \Q_reg[1]_0 ,
    Q,
    \Q_reg[0]_0 ,
    \Q_reg[27] ,
    \Q_reg[0]_1 ,
    FSM_selector_D,
    \Q_reg[54]_0 ,
    \Q_reg[0]_rep__0 ,
    \Q_reg[0]_2 ,
    S_A_S_Oper_A,
    \Q_reg[0]_rep ,
    \Data_X[63] ,
    \FSM_sequential_state_reg_reg[3]_2 ,
    \Data_Y[63] );
  output sign_final_result;
  output FSM_barrel_shifter_L_R;
  output real_op;
  output FSM_barrel_shifter_B_S;
  output [0:0]CO;
  output [9:0]D;
  output [1:0]\Data_array[5]_0 ;
  output [0:0]\Q_reg[44] ;
  output [0:0]\Q_reg[32] ;
  output [3:0]\Q_reg[2] ;
  output [1:0]\Q_reg[37] ;
  output [62:0]\Q_reg[10] ;
  output \FSM_sequential_state_reg_reg[3] ;
  output [5:0]\Q_reg[5] ;
  output [62:0]\Q_reg[10]_0 ;
  output \Q_reg[5]_0 ;
  output add_overflow_flag;
  output [51:0]\Q_reg[54] ;
  output \Q_reg[1] ;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input [3:0]AR;
  input [0:0]\FSM_sequential_state_reg_reg[3]_0 ;
  input add_subt_IBUF;
  input \FSM_sequential_state_reg_reg[1] ;
  input FSM_selector_C;
  input \FSM_sequential_state_reg_reg[3]_1 ;
  input [0:0]out;
  input \FSM_sequential_state_reg_reg[2] ;
  input [5:0]S_Shift_Value;
  input [11:0]\Q_reg[4] ;
  input [1:0]\Data_array[6]_1 ;
  input [1:0]\Q_reg[2]_0 ;
  input [1:0]\Q_reg[0] ;
  input [0:0]\Q_reg[1]_0 ;
  input [51:0]Q;
  input [0:0]\Q_reg[0]_0 ;
  input [0:0]\Q_reg[27] ;
  input [0:0]\Q_reg[0]_1 ;
  input FSM_selector_D;
  input [54:0]\Q_reg[54]_0 ;
  input \Q_reg[0]_rep__0 ;
  input [0:0]\Q_reg[0]_2 ;
  input [51:0]S_A_S_Oper_A;
  input \Q_reg[0]_rep ;
  input [63:0]\Data_X[63] ;
  input [0:0]\FSM_sequential_state_reg_reg[3]_2 ;
  input [63:0]\Data_Y[63] ;

  wire [3:0]AR;
  wire ASRegister_n_27;
  wire [53:2]A_S_C;
  wire [54:4]A_S_P;
  wire [43:43]\Barrel_Shifter_module/Mux_Array/Data_array[4] ;
  wire [0:0]CO;
  wire [9:0]D;
  wire [63:0]\Data_X[63] ;
  wire [63:0]\Data_Y[63] ;
  wire [1:0]\Data_array[5]_0 ;
  wire [1:0]\Data_array[6]_1 ;
  wire [0:0]E;
  wire FSM_barrel_shifter_B_S;
  wire FSM_barrel_shifter_L_R;
  wire FSM_selector_C;
  wire FSM_selector_D;
  wire \FSM_sequential_state_reg_reg[1] ;
  wire \FSM_sequential_state_reg_reg[2] ;
  wire \FSM_sequential_state_reg_reg[3] ;
  wire [0:0]\FSM_sequential_state_reg_reg[3]_0 ;
  wire \FSM_sequential_state_reg_reg[3]_1 ;
  wire [0:0]\FSM_sequential_state_reg_reg[3]_2 ;
  wire [54:1]\Leading_Zero_Anticipator_Module/Comb_to_Codec ;
  wire MRegister_n_109;
  wire MRegister_n_110;
  wire MRegister_n_111;
  wire MRegister_n_112;
  wire MRegister_n_113;
  wire MRegister_n_114;
  wire MRegister_n_115;
  wire MRegister_n_116;
  wire MRegister_n_117;
  wire MRegister_n_118;
  wire [51:0]Q;
  wire [1:0]\Q_reg[0] ;
  wire [0:0]\Q_reg[0]_0 ;
  wire [0:0]\Q_reg[0]_1 ;
  wire [0:0]\Q_reg[0]_2 ;
  wire \Q_reg[0]_rep ;
  wire \Q_reg[0]_rep__0 ;
  wire [62:0]\Q_reg[10] ;
  wire [62:0]\Q_reg[10]_0 ;
  wire \Q_reg[1] ;
  wire [0:0]\Q_reg[1]_0 ;
  wire [0:0]\Q_reg[27] ;
  wire [3:0]\Q_reg[2] ;
  wire [1:0]\Q_reg[2]_0 ;
  wire [0:0]\Q_reg[32] ;
  wire [1:0]\Q_reg[37] ;
  wire [0:0]\Q_reg[44] ;
  wire [11:0]\Q_reg[4] ;
  wire [51:0]\Q_reg[54] ;
  wire [54:0]\Q_reg[54]_0 ;
  wire [5:0]\Q_reg[5] ;
  wire \Q_reg[5]_0 ;
  wire [51:0]S_A_S_Oper_A;
  wire [5:0]S_Shift_Value;
  wire XRegister_n_100;
  wire XRegister_n_101;
  wire XRegister_n_102;
  wire XRegister_n_103;
  wire XRegister_n_104;
  wire XRegister_n_105;
  wire XRegister_n_106;
  wire XRegister_n_107;
  wire XRegister_n_108;
  wire XRegister_n_109;
  wire XRegister_n_110;
  wire XRegister_n_111;
  wire XRegister_n_112;
  wire XRegister_n_113;
  wire XRegister_n_114;
  wire XRegister_n_115;
  wire XRegister_n_116;
  wire XRegister_n_117;
  wire XRegister_n_118;
  wire XRegister_n_119;
  wire XRegister_n_120;
  wire XRegister_n_121;
  wire XRegister_n_122;
  wire XRegister_n_123;
  wire XRegister_n_124;
  wire XRegister_n_125;
  wire XRegister_n_126;
  wire XRegister_n_127;
  wire XRegister_n_128;
  wire XRegister_n_129;
  wire XRegister_n_130;
  wire XRegister_n_131;
  wire XRegister_n_132;
  wire XRegister_n_133;
  wire XRegister_n_134;
  wire XRegister_n_135;
  wire XRegister_n_136;
  wire XRegister_n_137;
  wire XRegister_n_138;
  wire XRegister_n_139;
  wire XRegister_n_140;
  wire XRegister_n_141;
  wire XRegister_n_142;
  wire XRegister_n_143;
  wire XRegister_n_144;
  wire XRegister_n_145;
  wire XRegister_n_146;
  wire XRegister_n_147;
  wire XRegister_n_148;
  wire XRegister_n_149;
  wire XRegister_n_150;
  wire XRegister_n_151;
  wire XRegister_n_152;
  wire XRegister_n_153;
  wire XRegister_n_154;
  wire XRegister_n_155;
  wire XRegister_n_156;
  wire XRegister_n_157;
  wire XRegister_n_158;
  wire XRegister_n_159;
  wire XRegister_n_160;
  wire XRegister_n_161;
  wire XRegister_n_162;
  wire XRegister_n_163;
  wire XRegister_n_164;
  wire XRegister_n_165;
  wire XRegister_n_166;
  wire XRegister_n_167;
  wire XRegister_n_168;
  wire XRegister_n_169;
  wire XRegister_n_170;
  wire XRegister_n_171;
  wire XRegister_n_172;
  wire XRegister_n_173;
  wire XRegister_n_174;
  wire XRegister_n_175;
  wire XRegister_n_176;
  wire XRegister_n_177;
  wire XRegister_n_178;
  wire XRegister_n_179;
  wire XRegister_n_18;
  wire XRegister_n_52;
  wire XRegister_n_54;
  wire XRegister_n_55;
  wire XRegister_n_56;
  wire XRegister_n_57;
  wire XRegister_n_58;
  wire XRegister_n_59;
  wire XRegister_n_60;
  wire XRegister_n_61;
  wire XRegister_n_62;
  wire XRegister_n_63;
  wire XRegister_n_64;
  wire XRegister_n_65;
  wire XRegister_n_66;
  wire XRegister_n_67;
  wire XRegister_n_68;
  wire XRegister_n_69;
  wire XRegister_n_70;
  wire XRegister_n_71;
  wire XRegister_n_72;
  wire XRegister_n_73;
  wire XRegister_n_74;
  wire XRegister_n_75;
  wire XRegister_n_76;
  wire XRegister_n_77;
  wire XRegister_n_78;
  wire XRegister_n_79;
  wire XRegister_n_80;
  wire XRegister_n_81;
  wire XRegister_n_82;
  wire XRegister_n_83;
  wire XRegister_n_84;
  wire XRegister_n_85;
  wire XRegister_n_86;
  wire XRegister_n_87;
  wire XRegister_n_88;
  wire XRegister_n_89;
  wire XRegister_n_90;
  wire XRegister_n_91;
  wire XRegister_n_92;
  wire XRegister_n_93;
  wire XRegister_n_94;
  wire XRegister_n_95;
  wire XRegister_n_96;
  wire XRegister_n_97;
  wire XRegister_n_98;
  wire XRegister_n_99;
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
  wire YRegister_n_34;
  wire YRegister_n_35;
  wire YRegister_n_36;
  wire YRegister_n_37;
  wire YRegister_n_38;
  wire YRegister_n_39;
  wire YRegister_n_4;
  wire YRegister_n_40;
  wire YRegister_n_41;
  wire YRegister_n_42;
  wire YRegister_n_43;
  wire YRegister_n_44;
  wire YRegister_n_45;
  wire YRegister_n_46;
  wire YRegister_n_47;
  wire YRegister_n_48;
  wire YRegister_n_49;
  wire YRegister_n_5;
  wire YRegister_n_50;
  wire YRegister_n_51;
  wire YRegister_n_52;
  wire YRegister_n_53;
  wire YRegister_n_54;
  wire YRegister_n_55;
  wire YRegister_n_56;
  wire YRegister_n_57;
  wire YRegister_n_58;
  wire YRegister_n_59;
  wire YRegister_n_6;
  wire YRegister_n_60;
  wire YRegister_n_61;
  wire YRegister_n_62;
  wire YRegister_n_63;
  wire YRegister_n_64;
  wire YRegister_n_7;
  wire YRegister_n_8;
  wire YRegister_n_9;
  wire add_overflow_flag;
  wire add_subt_IBUF;
  wire clk_IBUF_BUFG;
  wire intAS;
  wire [63:63]intDX;
  wire [63:63]intDY;
  wire [0:0]out;
  wire real_op;
  wire sign_final_result;
  wire sign_result;

  RegisterAdd_1 ASRegister
       (.AR(AR[2]),
        .A_S_C({A_S_C[53],A_S_C[50],A_S_C[48],A_S_C[45],A_S_C[43],A_S_C[40],A_S_C[38],A_S_C[35],A_S_C[33],A_S_C[30],A_S_C[28],A_S_C[25],A_S_C[23],A_S_C[20],A_S_C[18],A_S_C[15],A_S_C[13],A_S_C[10],A_S_C[8],A_S_C[5]}),
        .A_S_P(A_S_P[54]),
        .CO(CO),
        .Comb_to_Codec({\Leading_Zero_Anticipator_Module/Comb_to_Codec [54],\Leading_Zero_Anticipator_Module/Comb_to_Codec [1]}),
        .FSM_selector_D(FSM_selector_D),
        .\FSM_sequential_state_reg_reg[3] (\FSM_sequential_state_reg_reg[3] ),
        .\FSM_sequential_state_reg_reg[3]_0 (\FSM_sequential_state_reg_reg[3]_0 ),
        .Q(intDY),
        .\Q_reg[0]_rep (\Q_reg[0]_rep ),
        .\Q_reg[0]_rep__0 (\Q_reg[0]_rep__0 ),
        .\Q_reg[43] (ASRegister_n_27),
        .\Q_reg[51] ({\Q_reg[10]_0 [51],\Q_reg[10]_0 [48],\Q_reg[10]_0 [46],\Q_reg[10]_0 [43],\Q_reg[10]_0 [41],\Q_reg[10]_0 [38],\Q_reg[10]_0 [36],\Q_reg[10]_0 [33],\Q_reg[10]_0 [31],\Q_reg[10]_0 [28],\Q_reg[10]_0 [26],\Q_reg[10]_0 [23],\Q_reg[10]_0 [21],\Q_reg[10]_0 [18],\Q_reg[10]_0 [16],\Q_reg[10]_0 [13],\Q_reg[10]_0 [11],\Q_reg[10]_0 [8],\Q_reg[10]_0 [6],\Q_reg[10]_0 [3]}),
        .\Q_reg[54] ({\Q_reg[54] [51:50],\Q_reg[54] [47],\Q_reg[54] [45],\Q_reg[54] [42],\Q_reg[54] [40],\Q_reg[54] [37],\Q_reg[54] [35],\Q_reg[54] [32],\Q_reg[54] [30],\Q_reg[54] [27],\Q_reg[54] [25],\Q_reg[54] [22],\Q_reg[54] [20],\Q_reg[54] [17],\Q_reg[54] [15],\Q_reg[54] [12],\Q_reg[54] [10],\Q_reg[54] [7],\Q_reg[54] [5],\Q_reg[54] [2]}),
        .\Q_reg[54]_0 ({\Q_reg[54]_0 [54:53],\Q_reg[54]_0 [50],\Q_reg[54]_0 [48],\Q_reg[54]_0 [45],\Q_reg[54]_0 [43],\Q_reg[54]_0 [40],\Q_reg[54]_0 [38],\Q_reg[54]_0 [35],\Q_reg[54]_0 [33],\Q_reg[54]_0 [30],\Q_reg[54]_0 [28],\Q_reg[54]_0 [25],\Q_reg[54]_0 [23],\Q_reg[54]_0 [20],\Q_reg[54]_0 [18],\Q_reg[54]_0 [15],\Q_reg[54]_0 [13],\Q_reg[54]_0 [10],\Q_reg[54]_0 [8],\Q_reg[54]_0 [5],\Q_reg[54]_0 [1:0]}),
        .\Q_reg[5] (\Q_reg[5]_0 ),
        .\Q_reg[63] (intDX),
        .\Q_reg[6] (A_S_C[2]),
        .add_subt_IBUF(add_subt_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .intAS(intAS));
  RegisterAdd__parameterized3 MRegister
       (.AR(AR[2]),
        .A_S_C({A_S_C[53],A_S_C[51:50],A_S_C[48],A_S_C[46:45],A_S_C[43],A_S_C[41:40],A_S_C[38],A_S_C[36:35],A_S_C[33],A_S_C[31:30],A_S_C[28],A_S_C[26:25],A_S_C[23],A_S_C[21:20],A_S_C[18],A_S_C[16:15],A_S_C[13],A_S_C[11:10],A_S_C[8],A_S_C[6:5]}),
        .D({XRegister_n_54,XRegister_n_55,XRegister_n_56,XRegister_n_57,XRegister_n_58,XRegister_n_59,XRegister_n_60,XRegister_n_61,XRegister_n_62,XRegister_n_63,XRegister_n_64,XRegister_n_65,XRegister_n_66,XRegister_n_67,XRegister_n_68,XRegister_n_69,XRegister_n_70,XRegister_n_71,XRegister_n_72,XRegister_n_73,XRegister_n_74,XRegister_n_75,XRegister_n_76,XRegister_n_77,XRegister_n_78,XRegister_n_79,XRegister_n_80,XRegister_n_81,XRegister_n_82,XRegister_n_83,XRegister_n_84,XRegister_n_85,XRegister_n_86,XRegister_n_87,XRegister_n_88,XRegister_n_89,XRegister_n_90,XRegister_n_91,XRegister_n_92,XRegister_n_93,XRegister_n_94,XRegister_n_95,XRegister_n_96,XRegister_n_97,XRegister_n_98,XRegister_n_99,XRegister_n_100,XRegister_n_101,XRegister_n_102,XRegister_n_103,XRegister_n_104,XRegister_n_105,XRegister_n_106,XRegister_n_107,XRegister_n_108,XRegister_n_109,XRegister_n_110,XRegister_n_111,XRegister_n_112,XRegister_n_113,XRegister_n_114,XRegister_n_115,XRegister_n_116}),
        .E(E),
        .FSM_selector_D(FSM_selector_D),
        .Q(\Q_reg[10]_0 ),
        .\Q_reg[0]_0 (\Q_reg[0]_1 ),
        .\Q_reg[0]_1 (\Q_reg[5]_0 ),
        .\Q_reg[0]_2 (\Q_reg[0]_2 ),
        .\Q_reg[0]_rep (\Q_reg[0]_rep ),
        .\Q_reg[0]_rep__0 (\Q_reg[0]_rep__0 ),
        .\Q_reg[14]_0 (MRegister_n_110),
        .\Q_reg[19]_0 (MRegister_n_111),
        .\Q_reg[24]_0 (MRegister_n_112),
        .\Q_reg[29]_0 (MRegister_n_113),
        .\Q_reg[34]_0 (MRegister_n_114),
        .\Q_reg[39]_0 (MRegister_n_115),
        .\Q_reg[44]_0 (MRegister_n_116),
        .\Q_reg[49]_0 ({A_S_P[49],A_S_P[44],A_S_P[39],A_S_P[34],A_S_P[29],A_S_P[24],A_S_P[19],A_S_P[14],A_S_P[9],A_S_P[4]}),
        .\Q_reg[49]_1 (MRegister_n_117),
        .\Q_reg[51]_0 (XRegister_n_18),
        .\Q_reg[52]_0 ({\Q_reg[54] [49:48],\Q_reg[54] [46],\Q_reg[54] [44:43],\Q_reg[54] [41],\Q_reg[54] [39:38],\Q_reg[54] [36],\Q_reg[54] [34:33],\Q_reg[54] [31],\Q_reg[54] [29:28],\Q_reg[54] [26],\Q_reg[54] [24:23],\Q_reg[54] [21],\Q_reg[54] [19:18],\Q_reg[54] [16],\Q_reg[54] [14:13],\Q_reg[54] [11],\Q_reg[54] [9:8],\Q_reg[54] [6],\Q_reg[54] [4:3],\Q_reg[54] [1]}),
        .\Q_reg[53]_0 (\Q_reg[54]_0 [53:3]),
        .\Q_reg[54]_0 (MRegister_n_118),
        .\Q_reg[54]_1 ({\Leading_Zero_Anticipator_Module/Comb_to_Codec [54],\Leading_Zero_Anticipator_Module/Comb_to_Codec [1]}),
        .\Q_reg[5]_0 (\Q_reg[5] ),
        .\Q_reg[63] (intDY),
        .\Q_reg[63]_0 (intDX),
        .\Q_reg[9]_0 (MRegister_n_109),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .intAS(intAS));
  RegisterAdd_2 SignRegister
       (.AR(AR[2]),
        .E(E),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .sign_final_result(sign_final_result),
        .sign_result(sign_result));
  RegisterAdd__parameterized1 XRegister
       (.AR({AR[2],AR[0]}),
        .A_S_P({A_S_P[54],A_S_P[49],A_S_P[44],A_S_P[39],A_S_P[34],A_S_P[29],A_S_P[24],A_S_P[19],A_S_P[14],A_S_P[9],A_S_P[4]}),
        .CO(CO),
        .D({D[9:4],D[2:0]}),
        .\Data_X[63] (\Data_X[63] ),
        .\Data_array[4]_0 (\Barrel_Shifter_module/Mux_Array/Data_array[4] ),
        .\Data_array[5]_0 (\Data_array[5]_0 [1]),
        .\Data_array[6]_1 (\Data_array[6]_1 ),
        .FSM_selector_C(FSM_selector_C),
        .FSM_selector_D(FSM_selector_D),
        .\FSM_sequential_state_reg_reg[1] (\FSM_sequential_state_reg_reg[1] ),
        .\FSM_sequential_state_reg_reg[2] (\FSM_sequential_state_reg_reg[2] ),
        .\FSM_sequential_state_reg_reg[3] (\FSM_sequential_state_reg_reg[3]_1 ),
        .\FSM_sequential_state_reg_reg[3]_0 (\FSM_sequential_state_reg_reg[3]_0 ),
        .\FSM_sequential_state_reg_reg[3]_1 (\FSM_sequential_state_reg_reg[3]_2 ),
        .Q({Q[51],Q[0]}),
        .\Q_reg[0]_0 (real_op),
        .\Q_reg[0]_1 (ASRegister_n_27),
        .\Q_reg[0]_2 (\Q_reg[0] ),
        .\Q_reg[0]_3 (\Q_reg[5]_0 ),
        .\Q_reg[0]_4 (A_S_C[2]),
        .\Q_reg[0]_rep (\Q_reg[0]_rep ),
        .\Q_reg[0]_rep__0 (\Q_reg[0]_rep__0 ),
        .\Q_reg[12]_0 (MRegister_n_111),
        .\Q_reg[17]_0 (MRegister_n_112),
        .\Q_reg[1]_0 (XRegister_n_18),
        .\Q_reg[1]_1 (\Q_reg[54] [0]),
        .\Q_reg[1]_2 ({intDX,XRegister_n_52}),
        .\Q_reg[1]_3 (\Q_reg[1] ),
        .\Q_reg[1]_4 (\Q_reg[1]_0 ),
        .\Q_reg[20]_0 (\Data_array[5]_0 [0]),
        .\Q_reg[22]_0 (MRegister_n_113),
        .\Q_reg[27]_0 (MRegister_n_114),
        .\Q_reg[2]_0 (\Q_reg[2] [3]),
        .\Q_reg[2]_1 (\Q_reg[2]_0 ),
        .\Q_reg[2]_2 (\Q_reg[37] [1]),
        .\Q_reg[2]_3 (MRegister_n_109),
        .\Q_reg[32]_0 (\Q_reg[32] ),
        .\Q_reg[32]_1 (MRegister_n_115),
        .\Q_reg[37]_0 (MRegister_n_116),
        .\Q_reg[42]_0 (MRegister_n_117),
        .\Q_reg[43]_0 (FSM_barrel_shifter_L_R),
        .\Q_reg[43]_1 (FSM_barrel_shifter_B_S),
        .\Q_reg[44]_0 (\Q_reg[44] ),
        .\Q_reg[47]_0 (MRegister_n_118),
        .\Q_reg[4]_0 (\Q_reg[4] ),
        .\Q_reg[51]_0 ({\Q_reg[10]_0 [51:50],\Q_reg[10]_0 [47],\Q_reg[10]_0 [45],\Q_reg[10]_0 [42],\Q_reg[10]_0 [40],\Q_reg[10]_0 [37],\Q_reg[10]_0 [35],\Q_reg[10]_0 [32],\Q_reg[10]_0 [30],\Q_reg[10]_0 [27],\Q_reg[10]_0 [25],\Q_reg[10]_0 [22],\Q_reg[10]_0 [20],\Q_reg[10]_0 [17],\Q_reg[10]_0 [15],\Q_reg[10]_0 [12],\Q_reg[10]_0 [10],\Q_reg[10]_0 [7],\Q_reg[10]_0 [5],\Q_reg[10]_0 [2]}),
        .\Q_reg[54]_0 ({A_S_C[53],A_S_C[51:50],A_S_C[48],A_S_C[46:45],A_S_C[43],A_S_C[41:40],A_S_C[38],A_S_C[36:35],A_S_C[33],A_S_C[31:30],A_S_C[28],A_S_C[26:25],A_S_C[23],A_S_C[21:20],A_S_C[18],A_S_C[16:15],A_S_C[13],A_S_C[11:10],A_S_C[8],A_S_C[6:5]}),
        .\Q_reg[54]_1 (\Q_reg[54]_0 ),
        .\Q_reg[62]_0 ({XRegister_n_54,XRegister_n_55,XRegister_n_56,XRegister_n_57,XRegister_n_58,XRegister_n_59,XRegister_n_60,XRegister_n_61,XRegister_n_62,XRegister_n_63,XRegister_n_64,XRegister_n_65,XRegister_n_66,XRegister_n_67,XRegister_n_68,XRegister_n_69,XRegister_n_70,XRegister_n_71,XRegister_n_72,XRegister_n_73,XRegister_n_74,XRegister_n_75,XRegister_n_76,XRegister_n_77,XRegister_n_78,XRegister_n_79,XRegister_n_80,XRegister_n_81,XRegister_n_82,XRegister_n_83,XRegister_n_84,XRegister_n_85,XRegister_n_86,XRegister_n_87,XRegister_n_88,XRegister_n_89,XRegister_n_90,XRegister_n_91,XRegister_n_92,XRegister_n_93,XRegister_n_94,XRegister_n_95,XRegister_n_96,XRegister_n_97,XRegister_n_98,XRegister_n_99,XRegister_n_100,XRegister_n_101,XRegister_n_102,XRegister_n_103,XRegister_n_104,XRegister_n_105,XRegister_n_106,XRegister_n_107,XRegister_n_108,XRegister_n_109,XRegister_n_110,XRegister_n_111,XRegister_n_112,XRegister_n_113,XRegister_n_114,XRegister_n_115,XRegister_n_116}),
        .\Q_reg[62]_1 ({XRegister_n_117,XRegister_n_118,XRegister_n_119,XRegister_n_120,XRegister_n_121,XRegister_n_122,XRegister_n_123,XRegister_n_124,XRegister_n_125,XRegister_n_126,XRegister_n_127,XRegister_n_128,XRegister_n_129,XRegister_n_130,XRegister_n_131,XRegister_n_132,XRegister_n_133,XRegister_n_134,XRegister_n_135,XRegister_n_136,XRegister_n_137,XRegister_n_138,XRegister_n_139,XRegister_n_140,XRegister_n_141,XRegister_n_142,XRegister_n_143,XRegister_n_144,XRegister_n_145,XRegister_n_146,XRegister_n_147,XRegister_n_148,XRegister_n_149,XRegister_n_150,XRegister_n_151,XRegister_n_152,XRegister_n_153,XRegister_n_154,XRegister_n_155,XRegister_n_156,XRegister_n_157,XRegister_n_158,XRegister_n_159,XRegister_n_160,XRegister_n_161,XRegister_n_162,XRegister_n_163,XRegister_n_164,XRegister_n_165,XRegister_n_166,XRegister_n_167,XRegister_n_168,XRegister_n_169,XRegister_n_170,XRegister_n_171,XRegister_n_172,XRegister_n_173,XRegister_n_174,XRegister_n_175,XRegister_n_176,XRegister_n_177,XRegister_n_178,XRegister_n_179}),
        .\Q_reg[63]_0 ({intDY,YRegister_n_2,YRegister_n_3,YRegister_n_4,YRegister_n_5,YRegister_n_6,YRegister_n_7,YRegister_n_8,YRegister_n_9,YRegister_n_10,YRegister_n_11,YRegister_n_12,YRegister_n_13,YRegister_n_14,YRegister_n_15,YRegister_n_16,YRegister_n_17,YRegister_n_18,YRegister_n_19,YRegister_n_20,YRegister_n_21,YRegister_n_22,YRegister_n_23,YRegister_n_24,YRegister_n_25,YRegister_n_26,YRegister_n_27,YRegister_n_28,YRegister_n_29,YRegister_n_30,YRegister_n_31,YRegister_n_32,YRegister_n_33,YRegister_n_34,YRegister_n_35,YRegister_n_36,YRegister_n_37,YRegister_n_38,YRegister_n_39,YRegister_n_40,YRegister_n_41,YRegister_n_42,YRegister_n_43,YRegister_n_44,YRegister_n_45,YRegister_n_46,YRegister_n_47,YRegister_n_48,YRegister_n_49,YRegister_n_50,YRegister_n_51,YRegister_n_52,YRegister_n_53,YRegister_n_54,YRegister_n_55,YRegister_n_56,YRegister_n_57,YRegister_n_58,YRegister_n_59,YRegister_n_60,YRegister_n_61,YRegister_n_62,YRegister_n_63,YRegister_n_64}),
        .\Q_reg[7]_0 (MRegister_n_110),
        .S(YRegister_n_0),
        .S_A_S_Oper_A(S_A_S_Oper_A),
        .S_Shift_Value(S_Shift_Value),
        .add_overflow_flag(add_overflow_flag),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .intAS(intAS),
        .out(out),
        .sign_result(sign_result));
  RegisterAdd__parameterized2 YRegister
       (.AR({AR[2],AR[0]}),
        .\Data_Y[63] (\Data_Y[63] ),
        .\FSM_sequential_state_reg_reg[3] (\FSM_sequential_state_reg_reg[3]_0 ),
        .\FSM_sequential_state_reg_reg[3]_0 (\FSM_sequential_state_reg_reg[3]_2 ),
        .Q({intDY,YRegister_n_2,YRegister_n_3,YRegister_n_4,YRegister_n_5,YRegister_n_6,YRegister_n_7,YRegister_n_8,YRegister_n_9,YRegister_n_10,YRegister_n_11,YRegister_n_12,YRegister_n_13,YRegister_n_14,YRegister_n_15,YRegister_n_16,YRegister_n_17,YRegister_n_18,YRegister_n_19,YRegister_n_20,YRegister_n_21,YRegister_n_22,YRegister_n_23,YRegister_n_24,YRegister_n_25,YRegister_n_26,YRegister_n_27,YRegister_n_28,YRegister_n_29,YRegister_n_30,YRegister_n_31,YRegister_n_32,YRegister_n_33,YRegister_n_34,YRegister_n_35,YRegister_n_36,YRegister_n_37,YRegister_n_38,YRegister_n_39,YRegister_n_40,YRegister_n_41,YRegister_n_42,YRegister_n_43,YRegister_n_44,YRegister_n_45,YRegister_n_46,YRegister_n_47,YRegister_n_48,YRegister_n_49,YRegister_n_50,YRegister_n_51,YRegister_n_52,YRegister_n_53,YRegister_n_54,YRegister_n_55,YRegister_n_56,YRegister_n_57,YRegister_n_58,YRegister_n_59,YRegister_n_60,YRegister_n_61,YRegister_n_62,YRegister_n_63,YRegister_n_64}),
        .\Q_reg[62]_0 (XRegister_n_52),
        .S(YRegister_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  RegisterAdd__parameterized4 mRegister
       (.AR(AR),
        .D(D[3]),
        .E(E),
        .FSM_barrel_shifter_B_S(FSM_barrel_shifter_B_S),
        .FSM_selector_C(FSM_selector_C),
        .Q(Q[50:1]),
        .\Q_reg[0]_0 (\Q_reg[0]_0 ),
        .\Q_reg[0]_1 (FSM_barrel_shifter_L_R),
        .\Q_reg[10]_0 (\Q_reg[10] ),
        .\Q_reg[27]_0 (\Barrel_Shifter_module/Mux_Array/Data_array[4] ),
        .\Q_reg[27]_1 (\Q_reg[27] ),
        .\Q_reg[37]_0 (\Q_reg[2] [2:0]),
        .\Q_reg[37]_1 (\Q_reg[37] ),
        .\Q_reg[62]_0 ({XRegister_n_117,XRegister_n_118,XRegister_n_119,XRegister_n_120,XRegister_n_121,XRegister_n_122,XRegister_n_123,XRegister_n_124,XRegister_n_125,XRegister_n_126,XRegister_n_127,XRegister_n_128,XRegister_n_129,XRegister_n_130,XRegister_n_131,XRegister_n_132,XRegister_n_133,XRegister_n_134,XRegister_n_135,XRegister_n_136,XRegister_n_137,XRegister_n_138,XRegister_n_139,XRegister_n_140,XRegister_n_141,XRegister_n_142,XRegister_n_143,XRegister_n_144,XRegister_n_145,XRegister_n_146,XRegister_n_147,XRegister_n_148,XRegister_n_149,XRegister_n_150,XRegister_n_151,XRegister_n_152,XRegister_n_153,XRegister_n_154,XRegister_n_155,XRegister_n_156,XRegister_n_157,XRegister_n_158,XRegister_n_159,XRegister_n_160,XRegister_n_161,XRegister_n_162,XRegister_n_163,XRegister_n_164,XRegister_n_165,XRegister_n_166,XRegister_n_167,XRegister_n_168,XRegister_n_169,XRegister_n_170,XRegister_n_171,XRegister_n_172,XRegister_n_173,XRegister_n_174,XRegister_n_175,XRegister_n_176,XRegister_n_177,XRegister_n_178,XRegister_n_179}),
        .S_Shift_Value(S_Shift_Value),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
endmodule

module RegisterAdd
   (FSM_selector_C,
    \Data_array[1]_0 ,
    \Q_reg[29] ,
    \Q_reg[29]_0 ,
    \FSM_sequential_state_reg_reg[1] ,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[3] ,
    \Q_reg[54] ,
    S_Shift_Value,
    FSM_barrel_shifter_L_R,
    Q);
  output FSM_selector_C;
  output [0:0]\Data_array[1]_0 ;
  output \Q_reg[29] ;
  output \Q_reg[29]_0 ;
  input \FSM_sequential_state_reg_reg[1] ;
  input clk_IBUF_BUFG;
  input [0:0]\FSM_sequential_state_reg_reg[3] ;
  input [1:0]\Q_reg[54] ;
  input [0:0]S_Shift_Value;
  input FSM_barrel_shifter_L_R;
  input [1:0]Q;

  wire [0:0]\Data_array[1]_0 ;
  wire FSM_barrel_shifter_L_R;
  wire FSM_selector_C;
  wire \FSM_sequential_state_reg_reg[1] ;
  wire [0:0]\FSM_sequential_state_reg_reg[3] ;
  wire [1:0]Q;
  wire \Q_reg[29] ;
  wire \Q_reg[29]_0 ;
  wire [1:0]\Q_reg[54] ;
  wire [0:0]S_Shift_Value;
  wire clk_IBUF_BUFG;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_13 
       (.I0(\Q_reg[29] ),
        .I1(\Q_reg[54] [1]),
        .I2(S_Shift_Value),
        .I3(\Q_reg[29]_0 ),
        .I4(FSM_barrel_shifter_L_R),
        .I5(\Q_reg[54] [0]),
        .O(\Data_array[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[54]_i_108 
       (.I0(FSM_selector_C),
        .I1(Q[0]),
        .O(\Q_reg[29] ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[54]_i_55 
       (.I0(FSM_selector_C),
        .I1(Q[1]),
        .O(\Q_reg[29]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg_reg[3] ),
        .D(\FSM_sequential_state_reg_reg[1] ),
        .Q(FSM_selector_C));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd_0
   (FSM_selector_D,
    \Q_reg[44] ,
    \Q_reg[52] ,
    \FSM_sequential_state_reg_reg[2] ,
    clk_IBUF_BUFG,
    AR,
    \FSM_sequential_state_reg_reg[2]_0 ,
    \FSM_sequential_state_reg_reg[2]_1 );
  output FSM_selector_D;
  output \Q_reg[44] ;
  output \Q_reg[52] ;
  input \FSM_sequential_state_reg_reg[2] ;
  input clk_IBUF_BUFG;
  input [1:0]AR;
  input \FSM_sequential_state_reg_reg[2]_0 ;
  input \FSM_sequential_state_reg_reg[2]_1 ;

  wire [1:0]AR;
  wire FSM_selector_D;
  wire \FSM_sequential_state_reg_reg[2] ;
  wire \FSM_sequential_state_reg_reg[2]_0 ;
  wire \FSM_sequential_state_reg_reg[2]_1 ;
  wire \Q_reg[44] ;
  wire \Q_reg[52] ;
  wire clk_IBUF_BUFG;

  (* ORIG_CELL_NAME = "Q_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR[0]),
        .D(\FSM_sequential_state_reg_reg[2] ),
        .Q(FSM_selector_D));
  (* ORIG_CELL_NAME = "Q_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0]_rep 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR[1]),
        .D(\FSM_sequential_state_reg_reg[2]_0 ),
        .Q(\Q_reg[44] ));
  (* ORIG_CELL_NAME = "Q_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0]_rep__0 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR[1]),
        .D(\FSM_sequential_state_reg_reg[2]_1 ),
        .Q(\Q_reg[52] ));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd_1
   (intAS,
    \FSM_sequential_state_reg_reg[3] ,
    Comb_to_Codec,
    \Q_reg[5] ,
    \Q_reg[54] ,
    \Q_reg[6] ,
    \Q_reg[43] ,
    A_S_P,
    \FSM_sequential_state_reg_reg[3]_0 ,
    add_subt_IBUF,
    clk_IBUF_BUFG,
    AR,
    Q,
    \Q_reg[63] ,
    CO,
    FSM_selector_D,
    \Q_reg[54]_0 ,
    \Q_reg[0]_rep__0 ,
    \Q_reg[51] ,
    A_S_C,
    \Q_reg[0]_rep );
  output intAS;
  output \FSM_sequential_state_reg_reg[3] ;
  output [1:0]Comb_to_Codec;
  output \Q_reg[5] ;
  output [20:0]\Q_reg[54] ;
  output [0:0]\Q_reg[6] ;
  output \Q_reg[43] ;
  output [0:0]A_S_P;
  input [0:0]\FSM_sequential_state_reg_reg[3]_0 ;
  input add_subt_IBUF;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input [0:0]Q;
  input [0:0]\Q_reg[63] ;
  input [0:0]CO;
  input FSM_selector_D;
  input [22:0]\Q_reg[54]_0 ;
  input \Q_reg[0]_rep__0 ;
  input [19:0]\Q_reg[51] ;
  input [19:0]A_S_C;
  input \Q_reg[0]_rep ;

  wire [0:0]AR;
  wire [19:0]A_S_C;
  wire [0:0]A_S_P;
  wire [0:0]CO;
  wire [1:0]Comb_to_Codec;
  wire FSM_selector_D;
  wire \FSM_sequential_state_reg_reg[3] ;
  wire [0:0]\FSM_sequential_state_reg_reg[3]_0 ;
  wire [0:0]Q;
  wire \Q_reg[0]_rep ;
  wire \Q_reg[0]_rep__0 ;
  wire \Q_reg[43] ;
  wire [19:0]\Q_reg[51] ;
  wire [20:0]\Q_reg[54] ;
  wire [22:0]\Q_reg[54]_0 ;
  wire \Q_reg[5] ;
  wire [0:0]\Q_reg[63] ;
  wire [0:0]\Q_reg[6] ;
  wire add_subt_IBUF;
  wire clk_IBUF_BUFG;
  wire intAS;

  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h9600)) 
    \FSM_sequential_state_reg[3]_i_4 
       (.I0(intAS),
        .I1(Q),
        .I2(\Q_reg[63] ),
        .I3(CO),
        .O(\FSM_sequential_state_reg_reg[3] ));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[10]_i_1__1 
       (.I0(\Q_reg[0]_rep ),
        .I1(\Q_reg[54]_0 [4]),
        .I2(\Q_reg[5] ),
        .I3(\Q_reg[51] [2]),
        .I4(A_S_C[2]),
        .O(\Q_reg[54] [2]));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[13]_i_1__0 
       (.I0(\Q_reg[0]_rep ),
        .I1(\Q_reg[54]_0 [5]),
        .I2(\Q_reg[5] ),
        .I3(\Q_reg[51] [3]),
        .I4(A_S_C[3]),
        .O(\Q_reg[54] [3]));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[15]_i_1__0 
       (.I0(\Q_reg[0]_rep ),
        .I1(\Q_reg[54]_0 [6]),
        .I2(\Q_reg[5] ),
        .I3(\Q_reg[51] [4]),
        .I4(A_S_C[4]),
        .O(\Q_reg[54] [4]));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[18]_i_1__0 
       (.I0(\Q_reg[0]_rep ),
        .I1(\Q_reg[54]_0 [7]),
        .I2(\Q_reg[5] ),
        .I3(\Q_reg[51] [5]),
        .I4(A_S_C[5]),
        .O(\Q_reg[54] [5]));
  LUT6 #(
    .INIT(64'h009600FF0000FFFF)) 
    \Q[1]_i_21 
       (.I0(intAS),
        .I1(Q),
        .I2(\Q_reg[63] ),
        .I3(FSM_selector_D),
        .I4(\Q_reg[54]_0 [1]),
        .I5(\Q_reg[54]_0 [0]),
        .O(Comb_to_Codec[0]));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[20]_i_1__0 
       (.I0(\Q_reg[0]_rep ),
        .I1(\Q_reg[54]_0 [8]),
        .I2(\Q_reg[5] ),
        .I3(\Q_reg[51] [6]),
        .I4(A_S_C[6]),
        .O(\Q_reg[54] [6]));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[23]_i_1__0 
       (.I0(\Q_reg[0]_rep ),
        .I1(\Q_reg[54]_0 [9]),
        .I2(\Q_reg[5] ),
        .I3(\Q_reg[51] [7]),
        .I4(A_S_C[7]),
        .O(\Q_reg[54] [7]));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[25]_i_1__0 
       (.I0(\Q_reg[0]_rep ),
        .I1(\Q_reg[54]_0 [10]),
        .I2(\Q_reg[5] ),
        .I3(\Q_reg[51] [8]),
        .I4(A_S_C[8]),
        .O(\Q_reg[54] [8]));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[28]_i_1__0 
       (.I0(\Q_reg[0]_rep ),
        .I1(\Q_reg[54]_0 [11]),
        .I2(\Q_reg[5] ),
        .I3(\Q_reg[51] [9]),
        .I4(A_S_C[9]),
        .O(\Q_reg[54] [9]));
  LUT6 #(
    .INIT(64'h28382A3C3ABC3EBE)) 
    \Q[2]_i_5 
       (.I0(\Q_reg[5] ),
        .I1(\Q_reg[54]_0 [22]),
        .I2(\Q_reg[0]_rep__0 ),
        .I3(\Q_reg[54]_0 [21]),
        .I4(\Q_reg[51] [19]),
        .I5(A_S_C[19]),
        .O(Comb_to_Codec[1]));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[30]_i_1__0 
       (.I0(\Q_reg[0]_rep ),
        .I1(\Q_reg[54]_0 [12]),
        .I2(\Q_reg[5] ),
        .I3(\Q_reg[51] [10]),
        .I4(A_S_C[10]),
        .O(\Q_reg[54] [10]));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[33]_i_1__0 
       (.I0(\Q_reg[0]_rep ),
        .I1(\Q_reg[54]_0 [13]),
        .I2(\Q_reg[5] ),
        .I3(\Q_reg[51] [11]),
        .I4(A_S_C[11]),
        .O(\Q_reg[54] [11]));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[35]_i_1__0 
       (.I0(\Q_reg[0]_rep ),
        .I1(\Q_reg[54]_0 [14]),
        .I2(\Q_reg[5] ),
        .I3(\Q_reg[51] [12]),
        .I4(A_S_C[12]),
        .O(\Q_reg[54] [12]));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[38]_i_1__0 
       (.I0(\Q_reg[0]_rep ),
        .I1(\Q_reg[54]_0 [15]),
        .I2(\Q_reg[5] ),
        .I3(\Q_reg[51] [13]),
        .I4(A_S_C[13]),
        .O(\Q_reg[54] [13]));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[40]_i_1__0 
       (.I0(\Q_reg[0]_rep ),
        .I1(\Q_reg[54]_0 [16]),
        .I2(\Q_reg[5] ),
        .I3(\Q_reg[51] [14]),
        .I4(A_S_C[14]),
        .O(\Q_reg[54] [14]));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[43]_i_1__0 
       (.I0(\Q_reg[0]_rep ),
        .I1(\Q_reg[54]_0 [17]),
        .I2(\Q_reg[5] ),
        .I3(\Q_reg[51] [15]),
        .I4(A_S_C[15]),
        .O(\Q_reg[54] [15]));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[45]_i_1__0 
       (.I0(\Q_reg[0]_rep__0 ),
        .I1(\Q_reg[54]_0 [18]),
        .I2(\Q_reg[5] ),
        .I3(\Q_reg[51] [16]),
        .I4(A_S_C[16]),
        .O(\Q_reg[54] [16]));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[48]_i_1__0 
       (.I0(\Q_reg[0]_rep__0 ),
        .I1(\Q_reg[54]_0 [19]),
        .I2(\Q_reg[5] ),
        .I3(\Q_reg[51] [17]),
        .I4(A_S_C[17]),
        .O(\Q_reg[54] [17]));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[50]_i_1__0 
       (.I0(\Q_reg[0]_rep__0 ),
        .I1(\Q_reg[54]_0 [20]),
        .I2(\Q_reg[5] ),
        .I3(\Q_reg[51] [18]),
        .I4(A_S_C[18]),
        .O(\Q_reg[54] [18]));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[53]_i_1__0 
       (.I0(\Q_reg[0]_rep__0 ),
        .I1(\Q_reg[54]_0 [21]),
        .I2(\Q_reg[5] ),
        .I3(\Q_reg[51] [19]),
        .I4(A_S_C[19]),
        .O(\Q_reg[54] [19]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h00690096)) 
    \Q[54]_i_17 
       (.I0(intAS),
        .I1(Q),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[0]_rep__0 ),
        .I4(\Q_reg[54]_0 [22]),
        .O(\Q_reg[43] ));
  LUT6 #(
    .INIT(64'h996AA969A5A9A699)) 
    \Q[54]_i_2__0 
       (.I0(\Q_reg[54]_0 [22]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[54]_0 [21]),
        .I3(\Q_reg[5] ),
        .I4(\Q_reg[51] [19]),
        .I5(A_S_C[19]),
        .O(\Q_reg[54] [20]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h0096)) 
    \Q[54]_i_3__0 
       (.I0(intAS),
        .I1(Q),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[0]_rep ),
        .O(\Q_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'hFF960069)) 
    \Q[54]_i_48 
       (.I0(intAS),
        .I1(Q),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[0]_rep__0 ),
        .I4(\Q_reg[54]_0 [22]),
        .O(A_S_P));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[5]_i_1__1 
       (.I0(\Q_reg[0]_rep ),
        .I1(\Q_reg[54]_0 [2]),
        .I2(\Q_reg[5] ),
        .I3(\Q_reg[51] [0]),
        .I4(A_S_C[0]),
        .O(\Q_reg[54] [0]));
  LUT6 #(
    .INIT(64'hFF00000000000096)) 
    \Q[7]_i_9 
       (.I0(intAS),
        .I1(Q),
        .I2(\Q_reg[63] ),
        .I3(FSM_selector_D),
        .I4(\Q_reg[54]_0 [0]),
        .I5(\Q_reg[54]_0 [1]),
        .O(\Q_reg[6] ));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[8]_i_1__0 
       (.I0(\Q_reg[0]_rep ),
        .I1(\Q_reg[54]_0 [3]),
        .I2(\Q_reg[5] ),
        .I3(\Q_reg[51] [1]),
        .I4(A_S_C[1]),
        .O(\Q_reg[54] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(AR),
        .D(add_subt_IBUF),
        .Q(intAS));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd_2
   (sign_final_result,
    E,
    sign_result,
    clk_IBUF_BUFG,
    AR);
  output sign_final_result;
  input [0:0]E;
  input sign_result;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire clk_IBUF_BUFG;
  wire sign_final_result;
  wire sign_result;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(sign_result),
        .Q(sign_final_result));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd_3
   (\Q_reg[62] ,
    E,
    \FSM_sequential_state_reg_reg[0] ,
    clk_IBUF_BUFG,
    AR);
  output \Q_reg[62] ;
  input [0:0]E;
  input \FSM_sequential_state_reg_reg[0] ;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire \FSM_sequential_state_reg_reg[0] ;
  wire \Q_reg[62] ;
  wire clk_IBUF_BUFG;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\FSM_sequential_state_reg_reg[0] ),
        .Q(\Q_reg[62] ));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd_4
   (\Q_reg[63] ,
    D,
    \Q_reg[0]_0 ,
    clk_IBUF_BUFG,
    AR,
    \Q_reg[53] ,
    \Q_reg[0]_1 ,
    sign_final_result);
  output \Q_reg[63] ;
  output [52:0]D;
  input \Q_reg[0]_0 ;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input [51:0]\Q_reg[53] ;
  input \Q_reg[0]_1 ;
  input sign_final_result;

  wire [0:0]AR;
  wire [52:0]D;
  wire \Q_reg[0]_0 ;
  wire \Q_reg[0]_1 ;
  wire [51:0]\Q_reg[53] ;
  wire \Q_reg[63] ;
  wire clk_IBUF_BUFG;
  wire sign_final_result;

  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[0]_i_1__2 
       (.I0(\Q_reg[53] [0]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[10]_i_1__2 
       (.I0(\Q_reg[53] [10]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[11]_i_1__2 
       (.I0(\Q_reg[53] [11]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[12]_i_1__1 
       (.I0(\Q_reg[53] [12]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[13]_i_1__1 
       (.I0(\Q_reg[53] [13]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[14]_i_1__1 
       (.I0(\Q_reg[53] [14]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[15]_i_1__1 
       (.I0(\Q_reg[53] [15]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[16]_i_1__1 
       (.I0(\Q_reg[53] [16]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[17]_i_1__1 
       (.I0(\Q_reg[53] [17]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[18]_i_1__1 
       (.I0(\Q_reg[53] [18]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[19]_i_1__1 
       (.I0(\Q_reg[53] [19]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[1]_i_1__1 
       (.I0(\Q_reg[53] [1]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[20]_i_1__1 
       (.I0(\Q_reg[53] [20]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[21]_i_1__1 
       (.I0(\Q_reg[53] [21]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[22]_i_1__1 
       (.I0(\Q_reg[53] [22]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[23]_i_1__1 
       (.I0(\Q_reg[53] [23]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[24]_i_1__1 
       (.I0(\Q_reg[53] [24]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[25]_i_1__1 
       (.I0(\Q_reg[53] [25]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[26]_i_1__1 
       (.I0(\Q_reg[53] [26]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[27]_i_1__1 
       (.I0(\Q_reg[53] [27]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[28]_i_1__1 
       (.I0(\Q_reg[53] [28]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[29]_i_1__1 
       (.I0(\Q_reg[53] [29]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[2]_i_1__2 
       (.I0(\Q_reg[53] [2]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[30]_i_1__1 
       (.I0(\Q_reg[53] [30]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[31]_i_1__1 
       (.I0(\Q_reg[53] [31]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[32]_i_1__1 
       (.I0(\Q_reg[53] [32]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[32]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[33]_i_1__1 
       (.I0(\Q_reg[53] [33]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[33]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[34]_i_1__1 
       (.I0(\Q_reg[53] [34]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[34]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[35]_i_1__1 
       (.I0(\Q_reg[53] [35]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[35]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[36]_i_1__1 
       (.I0(\Q_reg[53] [36]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[36]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[37]_i_1__1 
       (.I0(\Q_reg[53] [37]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[37]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[38]_i_1__1 
       (.I0(\Q_reg[53] [38]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[38]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[39]_i_1__1 
       (.I0(\Q_reg[53] [39]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[39]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[3]_i_1__1 
       (.I0(\Q_reg[53] [3]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[40]_i_1__1 
       (.I0(\Q_reg[53] [40]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[40]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[41]_i_1__1 
       (.I0(\Q_reg[53] [41]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[41]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[42]_i_1__1 
       (.I0(\Q_reg[53] [42]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[42]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[43]_i_1__1 
       (.I0(\Q_reg[53] [43]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[43]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[44]_i_1__1 
       (.I0(\Q_reg[53] [44]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[44]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[45]_i_1__1 
       (.I0(\Q_reg[53] [45]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[45]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[46]_i_1__1 
       (.I0(\Q_reg[53] [46]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[46]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[47]_i_1__1 
       (.I0(\Q_reg[53] [47]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[47]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[48]_i_1__1 
       (.I0(\Q_reg[53] [48]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[48]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[49]_i_1__1 
       (.I0(\Q_reg[53] [49]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[49]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[4]_i_1__2 
       (.I0(\Q_reg[53] [4]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[50]_i_1__1 
       (.I0(\Q_reg[53] [50]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[50]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[51]_i_1__1 
       (.I0(\Q_reg[53] [51]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[51]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[5]_i_1__2 
       (.I0(\Q_reg[53] [5]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[5]));
  LUT3 #(
    .INIT(8'h0E)) 
    \Q[63]_i_2 
       (.I0(\Q_reg[63] ),
        .I1(sign_final_result),
        .I2(\Q_reg[0]_1 ),
        .O(D[52]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[6]_i_1__1 
       (.I0(\Q_reg[53] [6]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[7]_i_1__1 
       (.I0(\Q_reg[53] [7]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[8]_i_1__1 
       (.I0(\Q_reg[53] [8]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[9]_i_1__1 
       (.I0(\Q_reg[53] [9]),
        .I1(\Q_reg[63] ),
        .I2(\Q_reg[0]_1 ),
        .O(D[9]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[0]_0 ),
        .Q(\Q_reg[63] ));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized0
   (D,
    \Q_reg[32] ,
    S_Shift_Value,
    \Q_reg[0]_0 ,
    FSM_selector_B,
    p_0_in,
    \Q_reg[0]_1 ,
    FSM_barrel_shifter_L_R,
    FSM_barrel_shifter_B_S,
    \Data_array[1]_0 ,
    \Q_reg[0]_2 ,
    \Data_array[0]_1 ,
    \Q_reg[0]_3 ,
    Q,
    \Q_reg[5] ,
    FSM_exp_operation_A_S,
    \Q_reg[62] ,
    real_op,
    add_overflow_flag,
    \FSM_sequential_state_reg_reg[3] ,
    \FSM_sequential_state_reg_reg[0] ,
    \Q_reg[54] ,
    out,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[3]_0 );
  output [41:0]D;
  output [3:0]\Q_reg[32] ;
  output [5:0]S_Shift_Value;
  output [2:0]\Q_reg[0]_0 ;
  output [1:0]FSM_selector_B;
  output [9:0]p_0_in;
  input [25:0]\Q_reg[0]_1 ;
  input FSM_barrel_shifter_L_R;
  input FSM_barrel_shifter_B_S;
  input [4:0]\Data_array[1]_0 ;
  input [19:0]\Q_reg[0]_2 ;
  input [1:0]\Data_array[0]_1 ;
  input [4:0]\Q_reg[0]_3 ;
  input [5:0]Q;
  input [5:0]\Q_reg[5] ;
  input FSM_exp_operation_A_S;
  input [9:0]\Q_reg[62] ;
  input real_op;
  input add_overflow_flag;
  input [0:0]\FSM_sequential_state_reg_reg[3] ;
  input \FSM_sequential_state_reg_reg[0] ;
  input \Q_reg[54] ;
  input [3:0]out;
  input clk_IBUF_BUFG;
  input [0:0]\FSM_sequential_state_reg_reg[3]_0 ;

  wire [53:53]\Barrel_Shifter_module/Mux_Array/Data_array[2] ;
  wire [54:49]\Barrel_Shifter_module/Mux_Array/Data_array[3] ;
  wire [54:51]\Barrel_Shifter_module/Mux_Array/Data_array[4] ;
  wire [53:25]\Barrel_Shifter_module/Mux_Array/Data_array[5] ;
  wire [53:39]\Barrel_Shifter_module/Mux_Array/Data_array[6] ;
  wire [41:0]D;
  wire [1:0]\Data_array[0]_1 ;
  wire [4:0]\Data_array[1]_0 ;
  wire FSM_barrel_shifter_B_S;
  wire FSM_barrel_shifter_L_R;
  wire FSM_exp_operation_A_S;
  wire [1:0]FSM_selector_B;
  wire \FSM_sequential_state_reg_reg[0] ;
  wire [0:0]\FSM_sequential_state_reg_reg[3] ;
  wire [0:0]\FSM_sequential_state_reg_reg[3]_0 ;
  wire [5:0]Q;
  wire \Q[0]_i_1_n_0 ;
  wire \Q[1]_i_1__0_n_0 ;
  wire [2:0]\Q_reg[0]_0 ;
  wire [25:0]\Q_reg[0]_1 ;
  wire [19:0]\Q_reg[0]_2 ;
  wire [4:0]\Q_reg[0]_3 ;
  wire [3:0]\Q_reg[32] ;
  wire \Q_reg[54] ;
  wire [5:0]\Q_reg[5] ;
  wire [9:0]\Q_reg[62] ;
  wire [5:0]S_Shift_Value;
  wire add_overflow_flag;
  wire clk_IBUF_BUFG;
  wire [3:0]out;
  wire [9:0]p_0_in;
  wire real_op;

  LUT5 #(
    .INIT(32'hBFB3B0B3)) 
    \Q[0]_i_1 
       (.I0(real_op),
        .I1(add_overflow_flag),
        .I2(\FSM_sequential_state_reg_reg[3] ),
        .I3(\FSM_sequential_state_reg_reg[0] ),
        .I4(FSM_selector_B[0]),
        .O(\Q[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[0]_i_1__0 
       (.I0(\Q_reg[0]_0 [2]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Q_reg[0]_1 [23]),
        .I3(S_Shift_Value[5]),
        .I4(\Q_reg[0]_1 [0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[10]_i_1__0 
       (.I0(\Q_reg[0]_0 [0]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Q_reg[0]_1 [25]),
        .I3(S_Shift_Value[5]),
        .I4(\Q_reg[0]_1 [10]),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hAA9A)) 
    \Q[10]_i_3 
       (.I0(FSM_exp_operation_A_S),
        .I1(FSM_selector_B[1]),
        .I2(\Q_reg[62] [9]),
        .I3(FSM_selector_B[0]),
        .O(p_0_in[9]));
  LUT4 #(
    .INIT(16'hAA9A)) 
    \Q[10]_i_4 
       (.I0(FSM_exp_operation_A_S),
        .I1(FSM_selector_B[1]),
        .I2(\Q_reg[62] [8]),
        .I3(FSM_selector_B[0]),
        .O(p_0_in[8]));
  LUT4 #(
    .INIT(16'hAA9A)) 
    \Q[10]_i_5 
       (.I0(FSM_exp_operation_A_S),
        .I1(FSM_selector_B[1]),
        .I2(\Q_reg[62] [7]),
        .I3(FSM_selector_B[0]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[12]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[6] [42]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[5] [44]),
        .I3(S_Shift_Value[5]),
        .I4(\Q_reg[0]_1 [11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[13]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[6] [41]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[5] [45]),
        .I3(S_Shift_Value[5]),
        .I4(\Q_reg[0]_1 [12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[14]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[6] [40]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[5] [46]),
        .I3(S_Shift_Value[5]),
        .I4(\Q_reg[0]_1 [13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[15]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[6] [39]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[5] [47]),
        .I3(S_Shift_Value[5]),
        .I4(\Q_reg[0]_1 [14]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[16]_i_1 
       (.I0(FSM_barrel_shifter_B_S),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[5] [38]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[5] [48]),
        .I4(S_Shift_Value[5]),
        .I5(\Q_reg[0]_1 [15]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[17]_i_1 
       (.I0(FSM_barrel_shifter_B_S),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[5] [37]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[5] [49]),
        .I4(S_Shift_Value[5]),
        .I5(\Q_reg[0]_1 [16]),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[18]_i_1 
       (.I0(FSM_barrel_shifter_B_S),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[5] [36]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[5] [50]),
        .I4(S_Shift_Value[5]),
        .I5(\Q_reg[0]_1 [17]),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[19]_i_1 
       (.I0(FSM_barrel_shifter_B_S),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[5] [35]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[5] [51]),
        .I4(S_Shift_Value[5]),
        .I5(\Q_reg[0]_1 [18]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[1]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[6] [53]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[5] [33]),
        .I3(S_Shift_Value[5]),
        .I4(\Q_reg[0]_1 [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hDFFFFFFF1C000000)) 
    \Q[1]_i_1__0 
       (.I0(\Q_reg[54] ),
        .I1(out[1]),
        .I2(out[3]),
        .I3(out[2]),
        .I4(out[0]),
        .I5(FSM_selector_B[1]),
        .O(\Q[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[21]_i_1 
       (.I0(FSM_barrel_shifter_B_S),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[5] [33]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[5] [53]),
        .I4(S_Shift_Value[5]),
        .I5(\Q_reg[0]_1 [19]),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \Q[24]_i_1 
       (.I0(\Q_reg[32] [1]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(FSM_barrel_shifter_B_S),
        .I3(S_Shift_Value[5]),
        .I4(\Q_reg[0]_1 [21]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \Q[25]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[5] [29]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(FSM_barrel_shifter_B_S),
        .I3(S_Shift_Value[5]),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[5] [25]),
        .O(D[21]));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \Q[26]_i_1 
       (.I0(\Q_reg[32] [0]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(FSM_barrel_shifter_B_S),
        .I3(S_Shift_Value[5]),
        .I4(\Q_reg[0]_1 [22]),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[28]_i_3 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[3] [52]),
        .I1(\Q_reg[0]_2 [14]),
        .I2(S_Shift_Value[4]),
        .I3(\Q_reg[0]_2 [6]),
        .I4(S_Shift_Value[3]),
        .I5(\Q_reg[0]_2 [1]),
        .O(\Q_reg[32] [0]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \Q[29]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[5] [25]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(FSM_barrel_shifter_B_S),
        .I3(S_Shift_Value[5]),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[5] [29]),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[29]_i_2 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[3] [49]),
        .I1(\Q_reg[0]_2 [11]),
        .I2(S_Shift_Value[4]),
        .I3(\Q_reg[0]_2 [4]),
        .I4(S_Shift_Value[3]),
        .I5(\Q_reg[0]_2 [0]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[5] [25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[29]_i_3 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[3] [53]),
        .I1(\Q_reg[0]_2 [15]),
        .I2(S_Shift_Value[4]),
        .I3(\Q_reg[0]_2 [7]),
        .I4(S_Shift_Value[3]),
        .I5(\Q_reg[0]_2 [2]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[5] [29]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[2]_i_1 
       (.I0(\Q_reg[0]_0 [1]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Q_reg[0]_1 [24]),
        .I3(S_Shift_Value[5]),
        .I4(\Q_reg[0]_1 [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[30]_i_3 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[3] [54]),
        .I1(\Q_reg[0]_2 [16]),
        .I2(S_Shift_Value[4]),
        .I3(\Q_reg[0]_2 [8]),
        .I4(S_Shift_Value[3]),
        .I5(\Q_reg[0]_2 [3]),
        .O(\Q_reg[32] [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[32]_i_1 
       (.I0(\Q_reg[32] [3]),
        .I1(\Q_reg[0]_1 [20]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(FSM_barrel_shifter_B_S),
        .I4(S_Shift_Value[5]),
        .I5(\Q_reg[0]_1 [23]),
        .O(D[24]));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \Q[32]_i_2 
       (.I0(S_Shift_Value[4]),
        .I1(S_Shift_Value[3]),
        .I2(S_Shift_Value[2]),
        .I3(FSM_barrel_shifter_B_S),
        .I4(S_Shift_Value[1]),
        .I5(\Data_array[1]_0 [4]),
        .O(\Q_reg[32] [3]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \Q[32]_i_4__0 
       (.I0(Q[1]),
        .I1(FSM_selector_B[0]),
        .I2(\Q_reg[5] [1]),
        .I3(FSM_selector_B[1]),
        .O(S_Shift_Value[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[33]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[5] [53]),
        .I1(\Q_reg[0]_1 [19]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(FSM_barrel_shifter_B_S),
        .I4(S_Shift_Value[5]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[5] [33]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \Q[33]_i_2 
       (.I0(S_Shift_Value[4]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[3]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[3] [53]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[5] [53]));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \Q[34]_i_2 
       (.I0(S_Shift_Value[4]),
        .I1(S_Shift_Value[3]),
        .I2(FSM_barrel_shifter_B_S),
        .I3(S_Shift_Value[2]),
        .I4(\Q_reg[0]_3 [4]),
        .O(\Q_reg[32] [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[35]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[5] [51]),
        .I1(\Q_reg[0]_1 [18]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(FSM_barrel_shifter_B_S),
        .I4(S_Shift_Value[5]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[5] [35]),
        .O(D[26]));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \Q[35]_i_2 
       (.I0(S_Shift_Value[4]),
        .I1(S_Shift_Value[3]),
        .I2(FSM_barrel_shifter_B_S),
        .I3(S_Shift_Value[2]),
        .I4(\Q_reg[0]_3 [3]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[5] [51]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[36]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[5] [50]),
        .I1(\Q_reg[0]_1 [17]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(FSM_barrel_shifter_B_S),
        .I4(S_Shift_Value[5]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[5] [36]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \Q[36]_i_2 
       (.I0(S_Shift_Value[4]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[3]),
        .I3(\Q_reg[0]_2 [19]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[5] [50]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[37]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[5] [49]),
        .I1(\Q_reg[0]_1 [16]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(FSM_barrel_shifter_B_S),
        .I4(S_Shift_Value[5]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[5] [37]),
        .O(D[28]));
  LUT6 #(
    .INIT(64'hCDC8CDCDCDC8C8C8)) 
    \Q[37]_i_2 
       (.I0(S_Shift_Value[4]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[3]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[2] ),
        .I4(S_Shift_Value[2]),
        .I5(\Q_reg[0]_3 [2]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[5] [49]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[37]_i_4 
       (.I0(FSM_barrel_shifter_B_S),
        .I1(S_Shift_Value[1]),
        .I2(\Data_array[0]_1 [1]),
        .I3(S_Shift_Value[0]),
        .I4(\Data_array[0]_1 [0]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[38]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[5] [48]),
        .I1(\Q_reg[0]_1 [15]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(FSM_barrel_shifter_B_S),
        .I4(S_Shift_Value[5]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[5] [38]),
        .O(D[29]));
  LUT6 #(
    .INIT(64'hCDC8CDCDCDC8C8C8)) 
    \Q[38]_i_2 
       (.I0(S_Shift_Value[4]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[3]),
        .I3(\Q_reg[0]_3 [4]),
        .I4(S_Shift_Value[2]),
        .I5(\Q_reg[0]_3 [1]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[5] [48]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \Q[39]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[5] [47]),
        .I1(S_Shift_Value[5]),
        .I2(\Q_reg[0]_1 [14]),
        .I3(FSM_barrel_shifter_L_R),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[6] [39]),
        .O(D[30]));
  LUT6 #(
    .INIT(64'hCDC8CDCDCDC8C8C8)) 
    \Q[39]_i_3 
       (.I0(S_Shift_Value[5]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[4]),
        .I3(\Q_reg[0]_2 [17]),
        .I4(S_Shift_Value[3]),
        .I5(\Q_reg[0]_2 [9]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[6] [39]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[3]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[6] [51]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[5] [35]),
        .I3(S_Shift_Value[5]),
        .I4(\Q_reg[0]_1 [3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h9A9A99AA)) 
    \Q[3]_i_3__0 
       (.I0(FSM_exp_operation_A_S),
        .I1(FSM_selector_B[1]),
        .I2(Q[3]),
        .I3(\Q_reg[62] [2]),
        .I4(FSM_selector_B[0]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'h9A9A99AA)) 
    \Q[3]_i_4 
       (.I0(FSM_exp_operation_A_S),
        .I1(FSM_selector_B[1]),
        .I2(Q[2]),
        .I3(\Q_reg[62] [1]),
        .I4(FSM_selector_B[0]),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'h9A9A99AA)) 
    \Q[3]_i_5__0 
       (.I0(FSM_exp_operation_A_S),
        .I1(FSM_selector_B[1]),
        .I2(Q[1]),
        .I3(\Q_reg[62] [0]),
        .I4(FSM_selector_B[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \Q[40]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[5] [46]),
        .I1(S_Shift_Value[5]),
        .I2(\Q_reg[0]_1 [13]),
        .I3(FSM_barrel_shifter_L_R),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[6] [40]),
        .O(D[31]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[40]_i_2 
       (.I0(FSM_barrel_shifter_B_S),
        .I1(S_Shift_Value[4]),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[3] [54]),
        .I3(S_Shift_Value[3]),
        .I4(\Q_reg[0]_2 [16]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[5] [46]));
  LUT6 #(
    .INIT(64'hCDC8CDCDCDC8C8C8)) 
    \Q[40]_i_4 
       (.I0(S_Shift_Value[5]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[4]),
        .I3(\Q_reg[0]_2 [18]),
        .I4(S_Shift_Value[3]),
        .I5(\Q_reg[0]_2 [10]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[6] [40]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \Q[41]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[5] [45]),
        .I1(S_Shift_Value[5]),
        .I2(\Q_reg[0]_1 [12]),
        .I3(FSM_barrel_shifter_L_R),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[6] [41]),
        .O(D[32]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[41]_i_2 
       (.I0(FSM_barrel_shifter_B_S),
        .I1(S_Shift_Value[4]),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[3] [53]),
        .I3(S_Shift_Value[3]),
        .I4(\Q_reg[0]_2 [15]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[5] [45]));
  LUT6 #(
    .INIT(64'hCDC8CDCDCDC8C8C8)) 
    \Q[41]_i_4 
       (.I0(S_Shift_Value[5]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[4]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[3] [49]),
        .I4(S_Shift_Value[3]),
        .I5(\Q_reg[0]_2 [11]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[6] [41]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \Q[42]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[5] [44]),
        .I1(S_Shift_Value[5]),
        .I2(\Q_reg[0]_1 [11]),
        .I3(FSM_barrel_shifter_L_R),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[6] [42]),
        .O(D[33]));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \Q[42]_i_2 
       (.I0(S_Shift_Value[4]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[2]),
        .I3(\Q_reg[0]_3 [4]),
        .I4(S_Shift_Value[3]),
        .I5(\Q_reg[0]_2 [14]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[5] [44]));
  LUT6 #(
    .INIT(64'hCDC8CDCDCDC8C8C8)) 
    \Q[42]_i_4 
       (.I0(S_Shift_Value[5]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[4]),
        .I3(\Q_reg[0]_2 [19]),
        .I4(S_Shift_Value[3]),
        .I5(\Q_reg[0]_2 [12]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[6] [42]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \Q[43]_i_3 
       (.I0(Q[4]),
        .I1(FSM_selector_B[0]),
        .I2(\Q_reg[5] [4]),
        .I3(FSM_selector_B[1]),
        .O(S_Shift_Value[4]));
  LUT6 #(
    .INIT(64'hCDC8CDCDCDC8C8C8)) 
    \Q[44]_i_4 
       (.I0(S_Shift_Value[5]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[4]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[3] [52]),
        .I4(S_Shift_Value[3]),
        .I5(\Q_reg[0]_2 [14]),
        .O(\Q_reg[0]_0 [0]));
  LUT6 #(
    .INIT(64'hCDC8DDDDCDC88888)) 
    \Q[44]_i_5 
       (.I0(S_Shift_Value[2]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[0]),
        .I3(\Data_array[0]_1 [1]),
        .I4(S_Shift_Value[1]),
        .I5(\Data_array[1]_0 [2]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [52]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \Q[45]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[5] [41]),
        .I1(S_Shift_Value[5]),
        .I2(\Q_reg[0]_1 [9]),
        .I3(FSM_barrel_shifter_L_R),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[6] [45]),
        .O(D[34]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[45]_i_2 
       (.I0(FSM_barrel_shifter_B_S),
        .I1(S_Shift_Value[4]),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[3] [49]),
        .I3(S_Shift_Value[3]),
        .I4(\Q_reg[0]_2 [11]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[5] [41]));
  LUT6 #(
    .INIT(64'hCDC8CDCDCDC8C8C8)) 
    \Q[45]_i_4 
       (.I0(S_Shift_Value[5]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[4]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[3] [53]),
        .I4(S_Shift_Value[3]),
        .I5(\Q_reg[0]_2 [15]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[6] [45]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \Q[46]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[5] [40]),
        .I1(S_Shift_Value[5]),
        .I2(\Q_reg[0]_1 [8]),
        .I3(FSM_barrel_shifter_L_R),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[6] [46]),
        .O(D[35]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[46]_i_2 
       (.I0(FSM_barrel_shifter_B_S),
        .I1(S_Shift_Value[4]),
        .I2(\Q_reg[0]_2 [18]),
        .I3(S_Shift_Value[3]),
        .I4(\Q_reg[0]_2 [10]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[5] [40]));
  LUT6 #(
    .INIT(64'hCDC8CDCDCDC8C8C8)) 
    \Q[46]_i_4 
       (.I0(S_Shift_Value[5]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[4]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[3] [54]),
        .I4(S_Shift_Value[3]),
        .I5(\Q_reg[0]_2 [16]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[6] [46]));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \Q[46]_i_5 
       (.I0(S_Shift_Value[2]),
        .I1(S_Shift_Value[1]),
        .I2(FSM_barrel_shifter_B_S),
        .I3(S_Shift_Value[0]),
        .I4(\Data_array[0]_1 [1]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [54]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[47]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[5] [39]),
        .I1(\Q_reg[0]_1 [7]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(FSM_barrel_shifter_B_S),
        .I4(S_Shift_Value[5]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[5] [47]),
        .O(D[36]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[47]_i_2 
       (.I0(FSM_barrel_shifter_B_S),
        .I1(S_Shift_Value[4]),
        .I2(\Q_reg[0]_2 [17]),
        .I3(S_Shift_Value[3]),
        .I4(\Q_reg[0]_2 [9]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[5] [39]));
  LUT6 #(
    .INIT(64'hCDC8CDCDCDC8C8C8)) 
    \Q[47]_i_5 
       (.I0(S_Shift_Value[4]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[3]),
        .I3(\Q_reg[0]_3 [3]),
        .I4(S_Shift_Value[2]),
        .I5(\Q_reg[0]_3 [0]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[5] [47]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \Q[48]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[5] [38]),
        .I1(S_Shift_Value[5]),
        .I2(\Q_reg[0]_1 [6]),
        .I3(FSM_barrel_shifter_L_R),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[6] [48]),
        .O(D[37]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[48]_i_2 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[4] [54]),
        .I1(S_Shift_Value[4]),
        .I2(\Q_reg[0]_2 [16]),
        .I3(S_Shift_Value[3]),
        .I4(\Q_reg[0]_2 [8]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[5] [38]));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \Q[48]_i_4 
       (.I0(S_Shift_Value[5]),
        .I1(S_Shift_Value[4]),
        .I2(FSM_barrel_shifter_B_S),
        .I3(S_Shift_Value[3]),
        .I4(\Q_reg[0]_2 [18]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[6] [48]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \Q[49]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[5] [37]),
        .I1(S_Shift_Value[5]),
        .I2(\Q_reg[0]_1 [5]),
        .I3(FSM_barrel_shifter_L_R),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[6] [49]),
        .O(D[38]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[49]_i_2 
       (.I0(FSM_barrel_shifter_B_S),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[3] [53]),
        .I2(S_Shift_Value[4]),
        .I3(\Q_reg[0]_2 [15]),
        .I4(S_Shift_Value[3]),
        .I5(\Q_reg[0]_2 [7]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[5] [37]));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \Q[49]_i_4 
       (.I0(S_Shift_Value[5]),
        .I1(S_Shift_Value[4]),
        .I2(FSM_barrel_shifter_B_S),
        .I3(S_Shift_Value[3]),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[3] [49]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[6] [49]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[4]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[6] [50]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[5] [36]),
        .I3(S_Shift_Value[5]),
        .I4(\Q_reg[0]_1 [4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \Q[50]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[5] [36]),
        .I1(S_Shift_Value[5]),
        .I2(\Q_reg[0]_1 [4]),
        .I3(FSM_barrel_shifter_L_R),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[6] [50]),
        .O(D[39]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[50]_i_2 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[4] [52]),
        .I1(S_Shift_Value[4]),
        .I2(\Q_reg[0]_2 [14]),
        .I3(S_Shift_Value[3]),
        .I4(\Q_reg[0]_2 [6]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[5] [36]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \Q[50]_i_4 
       (.I0(S_Shift_Value[5]),
        .I1(S_Shift_Value[4]),
        .I2(FSM_barrel_shifter_B_S),
        .I3(S_Shift_Value[3]),
        .I4(\Q_reg[0]_2 [19]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[6] [50]));
  LUT6 #(
    .INIT(64'hCDC8CDCDCDC8C8C8)) 
    \Q[50]_i_5 
       (.I0(S_Shift_Value[3]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[2]),
        .I3(\Data_array[1]_0 [4]),
        .I4(S_Shift_Value[1]),
        .I5(\Data_array[1]_0 [2]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[4] [52]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \Q[51]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[5] [35]),
        .I1(S_Shift_Value[5]),
        .I2(\Q_reg[0]_1 [3]),
        .I3(FSM_barrel_shifter_L_R),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[6] [51]),
        .O(D[40]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[51]_i_2 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[4] [51]),
        .I1(S_Shift_Value[4]),
        .I2(\Q_reg[0]_2 [13]),
        .I3(S_Shift_Value[3]),
        .I4(\Q_reg[0]_2 [5]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[5] [35]));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \Q[51]_i_4 
       (.I0(S_Shift_Value[5]),
        .I1(S_Shift_Value[4]),
        .I2(S_Shift_Value[3]),
        .I3(FSM_barrel_shifter_B_S),
        .I4(S_Shift_Value[2]),
        .I5(\Q_reg[0]_3 [3]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[6] [51]));
  LUT6 #(
    .INIT(64'hCDC8CDCDCDC8C8C8)) 
    \Q[51]_i_5 
       (.I0(S_Shift_Value[3]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[2]),
        .I3(\Data_array[1]_0 [3]),
        .I4(S_Shift_Value[1]),
        .I5(\Data_array[1]_0 [1]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[4] [51]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \Q[52]_i_12__0 
       (.I0(Q[2]),
        .I1(FSM_selector_B[0]),
        .I2(\Q_reg[5] [2]),
        .I3(FSM_selector_B[1]),
        .O(S_Shift_Value[2]));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \Q[52]_i_4 
       (.I0(S_Shift_Value[5]),
        .I1(S_Shift_Value[4]),
        .I2(S_Shift_Value[3]),
        .I3(FSM_barrel_shifter_B_S),
        .I4(S_Shift_Value[2]),
        .I5(\Q_reg[0]_3 [4]),
        .O(\Q_reg[0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \Q[53]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[5] [33]),
        .I1(S_Shift_Value[5]),
        .I2(\Q_reg[0]_1 [1]),
        .I3(FSM_barrel_shifter_L_R),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[6] [53]),
        .O(D[41]));
  LUT6 #(
    .INIT(64'hCDC8CDCDCDC8C8C8)) 
    \Q[53]_i_12 
       (.I0(S_Shift_Value[2]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[1]),
        .I3(\Data_array[0]_1 [1]),
        .I4(S_Shift_Value[0]),
        .I5(\Data_array[0]_1 [0]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [53]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_2 
       (.I0(FSM_barrel_shifter_B_S),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[3] [49]),
        .I2(S_Shift_Value[4]),
        .I3(\Q_reg[0]_2 [11]),
        .I4(S_Shift_Value[3]),
        .I5(\Q_reg[0]_2 [4]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[5] [33]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \Q[53]_i_4 
       (.I0(S_Shift_Value[5]),
        .I1(S_Shift_Value[4]),
        .I2(FSM_barrel_shifter_B_S),
        .I3(S_Shift_Value[3]),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[3] [53]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[6] [53]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_5 
       (.I0(FSM_barrel_shifter_B_S),
        .I1(\Data_array[1]_0 [3]),
        .I2(S_Shift_Value[2]),
        .I3(\Data_array[1]_0 [1]),
        .I4(S_Shift_Value[1]),
        .I5(\Data_array[1]_0 [0]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [49]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \Q[54]_i_10 
       (.I0(Q[3]),
        .I1(FSM_selector_B[0]),
        .I2(\Q_reg[5] [3]),
        .I3(FSM_selector_B[1]),
        .O(S_Shift_Value[3]));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \Q[54]_i_20 
       (.I0(S_Shift_Value[3]),
        .I1(S_Shift_Value[2]),
        .I2(S_Shift_Value[1]),
        .I3(FSM_barrel_shifter_B_S),
        .I4(S_Shift_Value[0]),
        .I5(\Data_array[0]_1 [1]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[4] [54]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \Q[54]_i_4__0 
       (.I0(Q[5]),
        .I1(FSM_selector_B[0]),
        .I2(\Q_reg[5] [5]),
        .I3(FSM_selector_B[1]),
        .O(S_Shift_Value[5]));
  LUT4 #(
    .INIT(16'h3B38)) 
    \Q[54]_i_53 
       (.I0(Q[0]),
        .I1(FSM_selector_B[0]),
        .I2(FSM_selector_B[1]),
        .I3(\Q_reg[5] [0]),
        .O(S_Shift_Value[0]));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \Q[54]_i_7 
       (.I0(S_Shift_Value[5]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[4]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[4] [54]),
        .O(\Q_reg[0]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[5]_i_1__0 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[6] [49]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[5] [37]),
        .I3(S_Shift_Value[5]),
        .I4(\Q_reg[0]_1 [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[6]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[6] [48]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[5] [38]),
        .I3(S_Shift_Value[5]),
        .I4(\Q_reg[0]_1 [6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[7]_i_1 
       (.I0(FSM_barrel_shifter_B_S),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[5] [47]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[5] [39]),
        .I4(S_Shift_Value[5]),
        .I5(\Q_reg[0]_1 [7]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hAA9A)) 
    \Q[7]_i_2__1 
       (.I0(FSM_exp_operation_A_S),
        .I1(FSM_selector_B[1]),
        .I2(\Q_reg[62] [6]),
        .I3(FSM_selector_B[0]),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'hAA9A)) 
    \Q[7]_i_3__0 
       (.I0(FSM_exp_operation_A_S),
        .I1(FSM_selector_B[1]),
        .I2(\Q_reg[62] [5]),
        .I3(FSM_selector_B[0]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'h9A9A99AA)) 
    \Q[7]_i_4__0 
       (.I0(FSM_exp_operation_A_S),
        .I1(FSM_selector_B[1]),
        .I2(Q[5]),
        .I3(\Q_reg[62] [4]),
        .I4(FSM_selector_B[0]),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'h9A9A99AA)) 
    \Q[7]_i_5__0 
       (.I0(FSM_exp_operation_A_S),
        .I1(FSM_selector_B[1]),
        .I2(Q[4]),
        .I3(\Q_reg[62] [3]),
        .I4(FSM_selector_B[0]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[8]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[6] [46]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[5] [40]),
        .I3(S_Shift_Value[5]),
        .I4(\Q_reg[0]_1 [8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[9]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[6] [45]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[5] [41]),
        .I3(S_Shift_Value[5]),
        .I4(\Q_reg[0]_1 [9]),
        .O(D[9]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Q[0]_i_1_n_0 ),
        .Q(FSM_selector_B[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Q[1]_i_1__0_n_0 ),
        .Q(FSM_selector_B[1]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized1
   (\Q_reg[43]_0 ,
    \Q_reg[0]_0 ,
    \Q_reg[43]_1 ,
    CO,
    D,
    \Q_reg[20]_0 ,
    \Data_array[5]_0 ,
    \Q_reg[44]_0 ,
    \Q_reg[32]_0 ,
    \Q_reg[2]_0 ,
    \Q_reg[1]_0 ,
    \Q_reg[54]_0 ,
    add_overflow_flag,
    \Q_reg[1]_1 ,
    \Q_reg[1]_2 ,
    sign_result,
    \Q_reg[62]_0 ,
    \Q_reg[62]_1 ,
    \Q_reg[1]_3 ,
    \FSM_sequential_state_reg_reg[1] ,
    FSM_selector_C,
    \Q_reg[0]_1 ,
    \FSM_sequential_state_reg_reg[3] ,
    out,
    \FSM_sequential_state_reg_reg[2] ,
    S,
    S_Shift_Value,
    \Q_reg[4]_0 ,
    \Data_array[6]_1 ,
    \Data_array[4]_0 ,
    \Q_reg[2]_1 ,
    \Q_reg[0]_2 ,
    \Q_reg[1]_4 ,
    \Q_reg[2]_2 ,
    Q,
    \Q_reg[51]_0 ,
    \Q_reg[54]_1 ,
    \Q_reg[0]_rep__0 ,
    \Q_reg[0]_3 ,
    A_S_P,
    S_A_S_Oper_A,
    \Q_reg[0]_4 ,
    \Q_reg[47]_0 ,
    \Q_reg[42]_0 ,
    \Q_reg[0]_rep ,
    \Q_reg[37]_0 ,
    \Q_reg[32]_1 ,
    \Q_reg[27]_0 ,
    \Q_reg[22]_0 ,
    \Q_reg[17]_0 ,
    \Q_reg[12]_0 ,
    \Q_reg[7]_0 ,
    \Q_reg[2]_3 ,
    FSM_selector_D,
    \Q_reg[63]_0 ,
    intAS,
    \FSM_sequential_state_reg_reg[3]_0 ,
    \Data_X[63] ,
    clk_IBUF_BUFG,
    AR,
    \FSM_sequential_state_reg_reg[3]_1 );
  output \Q_reg[43]_0 ;
  output \Q_reg[0]_0 ;
  output \Q_reg[43]_1 ;
  output [0:0]CO;
  output [8:0]D;
  output \Q_reg[20]_0 ;
  output [0:0]\Data_array[5]_0 ;
  output [0:0]\Q_reg[44]_0 ;
  output [0:0]\Q_reg[32]_0 ;
  output [0:0]\Q_reg[2]_0 ;
  output \Q_reg[1]_0 ;
  output [29:0]\Q_reg[54]_0 ;
  output add_overflow_flag;
  output [0:0]\Q_reg[1]_1 ;
  output [1:0]\Q_reg[1]_2 ;
  output sign_result;
  output [62:0]\Q_reg[62]_0 ;
  output [62:0]\Q_reg[62]_1 ;
  output \Q_reg[1]_3 ;
  input \FSM_sequential_state_reg_reg[1] ;
  input FSM_selector_C;
  input \Q_reg[0]_1 ;
  input \FSM_sequential_state_reg_reg[3] ;
  input [0:0]out;
  input \FSM_sequential_state_reg_reg[2] ;
  input [0:0]S;
  input [5:0]S_Shift_Value;
  input [11:0]\Q_reg[4]_0 ;
  input [1:0]\Data_array[6]_1 ;
  input [0:0]\Data_array[4]_0 ;
  input [1:0]\Q_reg[2]_1 ;
  input [1:0]\Q_reg[0]_2 ;
  input [0:0]\Q_reg[1]_4 ;
  input [0:0]\Q_reg[2]_2 ;
  input [1:0]Q;
  input [20:0]\Q_reg[51]_0 ;
  input [54:0]\Q_reg[54]_1 ;
  input \Q_reg[0]_rep__0 ;
  input \Q_reg[0]_3 ;
  input [10:0]A_S_P;
  input [51:0]S_A_S_Oper_A;
  input [0:0]\Q_reg[0]_4 ;
  input \Q_reg[47]_0 ;
  input \Q_reg[42]_0 ;
  input \Q_reg[0]_rep ;
  input \Q_reg[37]_0 ;
  input \Q_reg[32]_1 ;
  input \Q_reg[27]_0 ;
  input \Q_reg[22]_0 ;
  input \Q_reg[17]_0 ;
  input \Q_reg[12]_0 ;
  input \Q_reg[7]_0 ;
  input \Q_reg[2]_3 ;
  input FSM_selector_D;
  input [63:0]\Q_reg[63]_0 ;
  input intAS;
  input [0:0]\FSM_sequential_state_reg_reg[3]_0 ;
  input [63:0]\Data_X[63] ;
  input clk_IBUF_BUFG;
  input [1:0]AR;
  input [0:0]\FSM_sequential_state_reg_reg[3]_1 ;

  wire [1:0]AR;
  wire [52:4]A_S_C;
  wire [10:0]A_S_P;
  wire \Add_Subt_Sgf_module/Data_B0100_out ;
  wire \Add_Subt_Sgf_module/Data_B0102_out ;
  wire \Add_Subt_Sgf_module/Data_B0104_out ;
  wire \Add_Subt_Sgf_module/Data_B010_out ;
  wire \Add_Subt_Sgf_module/Data_B012_out ;
  wire \Add_Subt_Sgf_module/Data_B014_out ;
  wire \Add_Subt_Sgf_module/Data_B016_out ;
  wire \Add_Subt_Sgf_module/Data_B018_out ;
  wire \Add_Subt_Sgf_module/Data_B020_out ;
  wire \Add_Subt_Sgf_module/Data_B022_out ;
  wire \Add_Subt_Sgf_module/Data_B024_out ;
  wire \Add_Subt_Sgf_module/Data_B026_out ;
  wire \Add_Subt_Sgf_module/Data_B028_out ;
  wire \Add_Subt_Sgf_module/Data_B02_out ;
  wire \Add_Subt_Sgf_module/Data_B030_out ;
  wire \Add_Subt_Sgf_module/Data_B032_out ;
  wire \Add_Subt_Sgf_module/Data_B034_out ;
  wire \Add_Subt_Sgf_module/Data_B036_out ;
  wire \Add_Subt_Sgf_module/Data_B038_out ;
  wire \Add_Subt_Sgf_module/Data_B040_out ;
  wire \Add_Subt_Sgf_module/Data_B042_out ;
  wire \Add_Subt_Sgf_module/Data_B044_out ;
  wire \Add_Subt_Sgf_module/Data_B046_out ;
  wire \Add_Subt_Sgf_module/Data_B048_out ;
  wire \Add_Subt_Sgf_module/Data_B04_out ;
  wire \Add_Subt_Sgf_module/Data_B050_out ;
  wire \Add_Subt_Sgf_module/Data_B052_out ;
  wire \Add_Subt_Sgf_module/Data_B054_out ;
  wire \Add_Subt_Sgf_module/Data_B056_out ;
  wire \Add_Subt_Sgf_module/Data_B058_out ;
  wire \Add_Subt_Sgf_module/Data_B060_out ;
  wire \Add_Subt_Sgf_module/Data_B062_out ;
  wire \Add_Subt_Sgf_module/Data_B064_out ;
  wire \Add_Subt_Sgf_module/Data_B066_out ;
  wire \Add_Subt_Sgf_module/Data_B068_out ;
  wire \Add_Subt_Sgf_module/Data_B06_out ;
  wire \Add_Subt_Sgf_module/Data_B070_out ;
  wire \Add_Subt_Sgf_module/Data_B072_out ;
  wire \Add_Subt_Sgf_module/Data_B074_out ;
  wire \Add_Subt_Sgf_module/Data_B076_out ;
  wire \Add_Subt_Sgf_module/Data_B078_out ;
  wire \Add_Subt_Sgf_module/Data_B080_out ;
  wire \Add_Subt_Sgf_module/Data_B082_out ;
  wire \Add_Subt_Sgf_module/Data_B084_out ;
  wire \Add_Subt_Sgf_module/Data_B086_out ;
  wire \Add_Subt_Sgf_module/Data_B088_out ;
  wire \Add_Subt_Sgf_module/Data_B08_out ;
  wire \Add_Subt_Sgf_module/Data_B090_out ;
  wire \Add_Subt_Sgf_module/Data_B092_out ;
  wire \Add_Subt_Sgf_module/Data_B094_out ;
  wire \Add_Subt_Sgf_module/Data_B096_out ;
  wire \Add_Subt_Sgf_module/Data_B098_out ;
  wire [0:0]CO;
  wire [8:0]D;
  wire [63:0]\Data_X[63] ;
  wire [0:0]\Data_array[4]_0 ;
  wire [0:0]\Data_array[5]_0 ;
  wire [1:0]\Data_array[6]_1 ;
  wire FSM_selector_C;
  wire FSM_selector_D;
  wire \FSM_sequential_state_reg_reg[1] ;
  wire \FSM_sequential_state_reg_reg[2] ;
  wire \FSM_sequential_state_reg_reg[3] ;
  wire [0:0]\FSM_sequential_state_reg_reg[3]_0 ;
  wire [0:0]\FSM_sequential_state_reg_reg[3]_1 ;
  wire [1:0]Q;
  wire \Q[0]_i_100_n_0 ;
  wire \Q[0]_i_101_n_0 ;
  wire \Q[0]_i_10__0_n_0 ;
  wire \Q[0]_i_11__0_n_0 ;
  wire \Q[0]_i_13__0_n_0 ;
  wire \Q[0]_i_14_n_0 ;
  wire \Q[0]_i_15__0_n_0 ;
  wire \Q[0]_i_17__0_n_0 ;
  wire \Q[0]_i_18__0_n_0 ;
  wire \Q[0]_i_19__0_n_0 ;
  wire \Q[0]_i_20__0_n_0 ;
  wire \Q[0]_i_22_n_0 ;
  wire \Q[0]_i_23_n_0 ;
  wire \Q[0]_i_24_n_0 ;
  wire \Q[0]_i_25_n_0 ;
  wire \Q[0]_i_26_n_0 ;
  wire \Q[0]_i_27_n_0 ;
  wire \Q[0]_i_28_n_0 ;
  wire \Q[0]_i_29_n_0 ;
  wire \Q[0]_i_31_n_0 ;
  wire \Q[0]_i_32_n_0 ;
  wire \Q[0]_i_33_n_0 ;
  wire \Q[0]_i_34_n_0 ;
  wire \Q[0]_i_36_n_0 ;
  wire \Q[0]_i_37_n_0 ;
  wire \Q[0]_i_38_n_0 ;
  wire \Q[0]_i_39_n_0 ;
  wire \Q[0]_i_40_n_0 ;
  wire \Q[0]_i_41_n_0 ;
  wire \Q[0]_i_42_n_0 ;
  wire \Q[0]_i_43_n_0 ;
  wire \Q[0]_i_45_n_0 ;
  wire \Q[0]_i_46_n_0 ;
  wire \Q[0]_i_47_n_0 ;
  wire \Q[0]_i_48_n_0 ;
  wire \Q[0]_i_50_n_0 ;
  wire \Q[0]_i_51_n_0 ;
  wire \Q[0]_i_52_n_0 ;
  wire \Q[0]_i_53_n_0 ;
  wire \Q[0]_i_54_n_0 ;
  wire \Q[0]_i_55_n_0 ;
  wire \Q[0]_i_56_n_0 ;
  wire \Q[0]_i_57_n_0 ;
  wire \Q[0]_i_59_n_0 ;
  wire \Q[0]_i_60_n_0 ;
  wire \Q[0]_i_61_n_0 ;
  wire \Q[0]_i_62_n_0 ;
  wire \Q[0]_i_64_n_0 ;
  wire \Q[0]_i_65_n_0 ;
  wire \Q[0]_i_66_n_0 ;
  wire \Q[0]_i_67_n_0 ;
  wire \Q[0]_i_68_n_0 ;
  wire \Q[0]_i_69_n_0 ;
  wire \Q[0]_i_6__0_n_0 ;
  wire \Q[0]_i_70_n_0 ;
  wire \Q[0]_i_71_n_0 ;
  wire \Q[0]_i_72_n_0 ;
  wire \Q[0]_i_73_n_0 ;
  wire \Q[0]_i_74_n_0 ;
  wire \Q[0]_i_75_n_0 ;
  wire \Q[0]_i_77_n_0 ;
  wire \Q[0]_i_78_n_0 ;
  wire \Q[0]_i_79_n_0 ;
  wire \Q[0]_i_80_n_0 ;
  wire \Q[0]_i_81_n_0 ;
  wire \Q[0]_i_82_n_0 ;
  wire \Q[0]_i_83_n_0 ;
  wire \Q[0]_i_84_n_0 ;
  wire \Q[0]_i_86_n_0 ;
  wire \Q[0]_i_87_n_0 ;
  wire \Q[0]_i_88_n_0 ;
  wire \Q[0]_i_89_n_0 ;
  wire \Q[0]_i_8__0_n_0 ;
  wire \Q[0]_i_90_n_0 ;
  wire \Q[0]_i_91_n_0 ;
  wire \Q[0]_i_92_n_0 ;
  wire \Q[0]_i_93_n_0 ;
  wire \Q[0]_i_94_n_0 ;
  wire \Q[0]_i_95_n_0 ;
  wire \Q[0]_i_96_n_0 ;
  wire \Q[0]_i_97_n_0 ;
  wire \Q[0]_i_98_n_0 ;
  wire \Q[0]_i_99_n_0 ;
  wire \Q[0]_i_9__0_n_0 ;
  wire \Q[14]_i_6_n_0 ;
  wire \Q[19]_i_6_n_0 ;
  wire \Q[24]_i_6_n_0 ;
  wire \Q[29]_i_6_n_0 ;
  wire \Q[34]_i_6_n_0 ;
  wire \Q[39]_i_6_n_0 ;
  wire \Q[44]_i_6_n_0 ;
  wire \Q[49]_i_6__0_n_0 ;
  wire \Q[54]_i_18_n_0 ;
  wire \Q[54]_i_7__0_n_0 ;
  wire \Q[9]_i_6_n_0 ;
  wire \Q_reg[0]_0 ;
  wire \Q_reg[0]_1 ;
  wire [1:0]\Q_reg[0]_2 ;
  wire \Q_reg[0]_3 ;
  wire [0:0]\Q_reg[0]_4 ;
  wire \Q_reg[0]_i_16_n_0 ;
  wire \Q_reg[0]_i_16_n_1 ;
  wire \Q_reg[0]_i_16_n_2 ;
  wire \Q_reg[0]_i_16_n_3 ;
  wire \Q_reg[0]_i_21_n_0 ;
  wire \Q_reg[0]_i_21_n_1 ;
  wire \Q_reg[0]_i_21_n_2 ;
  wire \Q_reg[0]_i_21_n_3 ;
  wire \Q_reg[0]_i_30_n_0 ;
  wire \Q_reg[0]_i_30_n_1 ;
  wire \Q_reg[0]_i_30_n_2 ;
  wire \Q_reg[0]_i_30_n_3 ;
  wire \Q_reg[0]_i_35_n_0 ;
  wire \Q_reg[0]_i_35_n_1 ;
  wire \Q_reg[0]_i_35_n_2 ;
  wire \Q_reg[0]_i_35_n_3 ;
  wire \Q_reg[0]_i_44_n_0 ;
  wire \Q_reg[0]_i_44_n_1 ;
  wire \Q_reg[0]_i_44_n_2 ;
  wire \Q_reg[0]_i_44_n_3 ;
  wire \Q_reg[0]_i_49_n_0 ;
  wire \Q_reg[0]_i_49_n_1 ;
  wire \Q_reg[0]_i_49_n_2 ;
  wire \Q_reg[0]_i_49_n_3 ;
  wire \Q_reg[0]_i_4_n_1 ;
  wire \Q_reg[0]_i_4_n_2 ;
  wire \Q_reg[0]_i_4_n_3 ;
  wire \Q_reg[0]_i_58_n_0 ;
  wire \Q_reg[0]_i_58_n_1 ;
  wire \Q_reg[0]_i_58_n_2 ;
  wire \Q_reg[0]_i_58_n_3 ;
  wire \Q_reg[0]_i_5_n_0 ;
  wire \Q_reg[0]_i_5_n_1 ;
  wire \Q_reg[0]_i_5_n_2 ;
  wire \Q_reg[0]_i_5_n_3 ;
  wire \Q_reg[0]_i_63_n_0 ;
  wire \Q_reg[0]_i_63_n_1 ;
  wire \Q_reg[0]_i_63_n_2 ;
  wire \Q_reg[0]_i_63_n_3 ;
  wire \Q_reg[0]_i_76_n_0 ;
  wire \Q_reg[0]_i_76_n_1 ;
  wire \Q_reg[0]_i_76_n_2 ;
  wire \Q_reg[0]_i_76_n_3 ;
  wire \Q_reg[0]_i_7_n_0 ;
  wire \Q_reg[0]_i_7_n_1 ;
  wire \Q_reg[0]_i_7_n_2 ;
  wire \Q_reg[0]_i_7_n_3 ;
  wire \Q_reg[0]_i_85_n_0 ;
  wire \Q_reg[0]_i_85_n_1 ;
  wire \Q_reg[0]_i_85_n_2 ;
  wire \Q_reg[0]_i_85_n_3 ;
  wire \Q_reg[0]_rep ;
  wire \Q_reg[0]_rep__0 ;
  wire \Q_reg[12]_0 ;
  wire \Q_reg[17]_0 ;
  wire \Q_reg[1]_0 ;
  wire [0:0]\Q_reg[1]_1 ;
  wire [1:0]\Q_reg[1]_2 ;
  wire \Q_reg[1]_3 ;
  wire [0:0]\Q_reg[1]_4 ;
  wire \Q_reg[20]_0 ;
  wire \Q_reg[22]_0 ;
  wire \Q_reg[27]_0 ;
  wire [0:0]\Q_reg[2]_0 ;
  wire [1:0]\Q_reg[2]_1 ;
  wire [0:0]\Q_reg[2]_2 ;
  wire \Q_reg[2]_3 ;
  wire [0:0]\Q_reg[32]_0 ;
  wire \Q_reg[32]_1 ;
  wire \Q_reg[37]_0 ;
  wire \Q_reg[42]_0 ;
  wire \Q_reg[43]_0 ;
  wire \Q_reg[43]_1 ;
  wire [0:0]\Q_reg[44]_0 ;
  wire \Q_reg[47]_0 ;
  wire [11:0]\Q_reg[4]_0 ;
  wire [20:0]\Q_reg[51]_0 ;
  wire [29:0]\Q_reg[54]_0 ;
  wire [54:0]\Q_reg[54]_1 ;
  wire [62:0]\Q_reg[62]_0 ;
  wire [62:0]\Q_reg[62]_1 ;
  wire [63:0]\Q_reg[63]_0 ;
  wire \Q_reg[7]_0 ;
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
  wire \Q_reg_n_0_[23] ;
  wire \Q_reg_n_0_[24] ;
  wire \Q_reg_n_0_[25] ;
  wire \Q_reg_n_0_[26] ;
  wire \Q_reg_n_0_[27] ;
  wire \Q_reg_n_0_[28] ;
  wire \Q_reg_n_0_[29] ;
  wire \Q_reg_n_0_[2] ;
  wire \Q_reg_n_0_[30] ;
  wire \Q_reg_n_0_[31] ;
  wire \Q_reg_n_0_[32] ;
  wire \Q_reg_n_0_[33] ;
  wire \Q_reg_n_0_[34] ;
  wire \Q_reg_n_0_[35] ;
  wire \Q_reg_n_0_[36] ;
  wire \Q_reg_n_0_[37] ;
  wire \Q_reg_n_0_[38] ;
  wire \Q_reg_n_0_[39] ;
  wire \Q_reg_n_0_[3] ;
  wire \Q_reg_n_0_[40] ;
  wire \Q_reg_n_0_[41] ;
  wire \Q_reg_n_0_[42] ;
  wire \Q_reg_n_0_[43] ;
  wire \Q_reg_n_0_[44] ;
  wire \Q_reg_n_0_[45] ;
  wire \Q_reg_n_0_[46] ;
  wire \Q_reg_n_0_[47] ;
  wire \Q_reg_n_0_[48] ;
  wire \Q_reg_n_0_[49] ;
  wire \Q_reg_n_0_[4] ;
  wire \Q_reg_n_0_[50] ;
  wire \Q_reg_n_0_[51] ;
  wire \Q_reg_n_0_[52] ;
  wire \Q_reg_n_0_[53] ;
  wire \Q_reg_n_0_[54] ;
  wire \Q_reg_n_0_[55] ;
  wire \Q_reg_n_0_[56] ;
  wire \Q_reg_n_0_[57] ;
  wire \Q_reg_n_0_[58] ;
  wire \Q_reg_n_0_[59] ;
  wire \Q_reg_n_0_[5] ;
  wire \Q_reg_n_0_[60] ;
  wire \Q_reg_n_0_[61] ;
  wire \Q_reg_n_0_[6] ;
  wire \Q_reg_n_0_[7] ;
  wire \Q_reg_n_0_[8] ;
  wire \Q_reg_n_0_[9] ;
  wire [0:0]S;
  wire [51:0]S_A_S_Oper_A;
  wire [5:0]S_Shift_Value;
  wire add_overflow_flag;
  wire clk_IBUF_BUFG;
  wire gtXY;
  wire intAS;
  wire [0:0]out;
  wire sign_result;
  wire [3:0]\NLW_Q_reg[0]_i_16_O_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[0]_i_21_O_UNCONNECTED ;
  wire [3:1]\NLW_Q_reg[0]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[0]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[0]_i_30_O_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[0]_i_35_O_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[0]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[0]_i_44_O_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[0]_i_49_O_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[0]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[0]_i_58_O_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[0]_i_63_O_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[0]_i_7_O_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[0]_i_76_O_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[0]_i_85_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFAF08FEFF0A0FEF8)) 
    \FSM_sequential_state_reg[0]_i_2 
       (.I0(\Q_reg[54]_0 [29]),
        .I1(\Q_reg[51]_0 [20]),
        .I2(\Q_reg[0]_3 ),
        .I3(\Q_reg[54]_1 [53]),
        .I4(\Q_reg[0]_rep__0 ),
        .I5(\Q_reg[54]_1 [54]),
        .O(add_overflow_flag));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_100 
       (.I0(\Q_reg_n_0_[2] ),
        .I1(\Q_reg[63]_0 [2]),
        .I2(\Q_reg_n_0_[3] ),
        .I3(\Q_reg[63]_0 [3]),
        .O(\Q[0]_i_100_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_101 
       (.I0(\Q_reg_n_0_[0] ),
        .I1(\Q_reg[63]_0 [0]),
        .I2(\Q_reg_n_0_[1] ),
        .I3(\Q_reg[63]_0 [1]),
        .O(\Q[0]_i_101_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_10__0 
       (.I0(\Q_reg_n_0_[58] ),
        .I1(\Q_reg[63]_0 [58]),
        .I2(\Q_reg[63]_0 [59]),
        .I3(\Q_reg_n_0_[59] ),
        .O(\Q[0]_i_10__0_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_11__0 
       (.I0(\Q_reg_n_0_[56] ),
        .I1(\Q_reg[63]_0 [56]),
        .I2(\Q_reg[63]_0 [57]),
        .I3(\Q_reg_n_0_[57] ),
        .O(\Q[0]_i_11__0_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_13__0 
       (.I0(\Q_reg_n_0_[60] ),
        .I1(\Q_reg[63]_0 [60]),
        .I2(\Q_reg_n_0_[61] ),
        .I3(\Q_reg[63]_0 [61]),
        .O(\Q[0]_i_13__0_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_14 
       (.I0(\Q_reg_n_0_[58] ),
        .I1(\Q_reg[63]_0 [58]),
        .I2(\Q_reg_n_0_[59] ),
        .I3(\Q_reg[63]_0 [59]),
        .O(\Q[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_15__0 
       (.I0(\Q_reg_n_0_[56] ),
        .I1(\Q_reg[63]_0 [56]),
        .I2(\Q_reg_n_0_[57] ),
        .I3(\Q_reg[63]_0 [57]),
        .O(\Q[0]_i_15__0_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_17__0 
       (.I0(\Q_reg_n_0_[57] ),
        .I1(\Q_reg[63]_0 [57]),
        .I2(\Q_reg[63]_0 [59]),
        .I3(\Q_reg_n_0_[59] ),
        .I4(\Q_reg[63]_0 [58]),
        .I5(\Q_reg_n_0_[58] ),
        .O(\Q[0]_i_17__0_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_18__0 
       (.I0(\Q_reg_n_0_[54] ),
        .I1(\Q_reg[63]_0 [54]),
        .I2(\Q_reg[63]_0 [56]),
        .I3(\Q_reg_n_0_[56] ),
        .I4(\Q_reg[63]_0 [55]),
        .I5(\Q_reg_n_0_[55] ),
        .O(\Q[0]_i_18__0_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_19__0 
       (.I0(\Q_reg_n_0_[51] ),
        .I1(\Q_reg[63]_0 [51]),
        .I2(\Q_reg[63]_0 [53]),
        .I3(\Q_reg_n_0_[53] ),
        .I4(\Q_reg[63]_0 [52]),
        .I5(\Q_reg_n_0_[52] ),
        .O(\Q[0]_i_19__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[0]_i_1__3 
       (.I0(\Q_reg_n_0_[0] ),
        .I1(\Q_reg[63]_0 [0]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[0]_i_1__4 
       (.I0(\Q_reg[63]_0 [0]),
        .I1(\Q_reg_n_0_[0] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_20__0 
       (.I0(\Q_reg_n_0_[48] ),
        .I1(\Q_reg[63]_0 [48]),
        .I2(\Q_reg[63]_0 [50]),
        .I3(\Q_reg_n_0_[50] ),
        .I4(\Q_reg[63]_0 [49]),
        .I5(\Q_reg_n_0_[49] ),
        .O(\Q[0]_i_20__0_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_22 
       (.I0(\Q_reg_n_0_[54] ),
        .I1(\Q_reg[63]_0 [54]),
        .I2(\Q_reg[63]_0 [55]),
        .I3(\Q_reg_n_0_[55] ),
        .O(\Q[0]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_23 
       (.I0(\Q_reg_n_0_[52] ),
        .I1(\Q_reg[63]_0 [52]),
        .I2(\Q_reg[63]_0 [53]),
        .I3(\Q_reg_n_0_[53] ),
        .O(\Q[0]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_24 
       (.I0(\Q_reg_n_0_[50] ),
        .I1(\Q_reg[63]_0 [50]),
        .I2(\Q_reg[63]_0 [51]),
        .I3(\Q_reg_n_0_[51] ),
        .O(\Q[0]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_25 
       (.I0(\Q_reg_n_0_[48] ),
        .I1(\Q_reg[63]_0 [48]),
        .I2(\Q_reg[63]_0 [49]),
        .I3(\Q_reg_n_0_[49] ),
        .O(\Q[0]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_26 
       (.I0(\Q_reg_n_0_[54] ),
        .I1(\Q_reg[63]_0 [54]),
        .I2(\Q_reg_n_0_[55] ),
        .I3(\Q_reg[63]_0 [55]),
        .O(\Q[0]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_27 
       (.I0(\Q_reg_n_0_[52] ),
        .I1(\Q_reg[63]_0 [52]),
        .I2(\Q_reg_n_0_[53] ),
        .I3(\Q_reg[63]_0 [53]),
        .O(\Q[0]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_28 
       (.I0(\Q_reg_n_0_[50] ),
        .I1(\Q_reg[63]_0 [50]),
        .I2(\Q_reg_n_0_[51] ),
        .I3(\Q_reg[63]_0 [51]),
        .O(\Q[0]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_29 
       (.I0(\Q_reg_n_0_[48] ),
        .I1(\Q_reg[63]_0 [48]),
        .I2(\Q_reg_n_0_[49] ),
        .I3(\Q_reg[63]_0 [49]),
        .O(\Q[0]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hFF3C0014)) 
    \Q[0]_i_2__1 
       (.I0(CO),
        .I1(\Q_reg[63]_0 [63]),
        .I2(intAS),
        .I3(gtXY),
        .I4(\Q_reg[1]_2 [1]),
        .O(sign_result));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Q[0]_i_2__2 
       (.I0(\Q_reg[1]_2 [1]),
        .I1(\Q_reg[63]_0 [63]),
        .I2(intAS),
        .O(\Q_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_31 
       (.I0(\Q_reg_n_0_[45] ),
        .I1(\Q_reg[63]_0 [45]),
        .I2(\Q_reg[63]_0 [47]),
        .I3(\Q_reg_n_0_[47] ),
        .I4(\Q_reg[63]_0 [46]),
        .I5(\Q_reg_n_0_[46] ),
        .O(\Q[0]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_32 
       (.I0(\Q_reg_n_0_[42] ),
        .I1(\Q_reg[63]_0 [42]),
        .I2(\Q_reg[63]_0 [44]),
        .I3(\Q_reg_n_0_[44] ),
        .I4(\Q_reg[63]_0 [43]),
        .I5(\Q_reg_n_0_[43] ),
        .O(\Q[0]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_33 
       (.I0(\Q_reg_n_0_[39] ),
        .I1(\Q_reg[63]_0 [39]),
        .I2(\Q_reg[63]_0 [41]),
        .I3(\Q_reg_n_0_[41] ),
        .I4(\Q_reg[63]_0 [40]),
        .I5(\Q_reg_n_0_[40] ),
        .O(\Q[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_34 
       (.I0(\Q_reg_n_0_[36] ),
        .I1(\Q_reg[63]_0 [36]),
        .I2(\Q_reg[63]_0 [38]),
        .I3(\Q_reg_n_0_[38] ),
        .I4(\Q_reg[63]_0 [37]),
        .I5(\Q_reg_n_0_[37] ),
        .O(\Q[0]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_36 
       (.I0(\Q_reg_n_0_[46] ),
        .I1(\Q_reg[63]_0 [46]),
        .I2(\Q_reg[63]_0 [47]),
        .I3(\Q_reg_n_0_[47] ),
        .O(\Q[0]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_37 
       (.I0(\Q_reg_n_0_[44] ),
        .I1(\Q_reg[63]_0 [44]),
        .I2(\Q_reg[63]_0 [45]),
        .I3(\Q_reg_n_0_[45] ),
        .O(\Q[0]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_38 
       (.I0(\Q_reg_n_0_[42] ),
        .I1(\Q_reg[63]_0 [42]),
        .I2(\Q_reg[63]_0 [43]),
        .I3(\Q_reg_n_0_[43] ),
        .O(\Q[0]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_39 
       (.I0(\Q_reg_n_0_[40] ),
        .I1(\Q_reg[63]_0 [40]),
        .I2(\Q_reg[63]_0 [41]),
        .I3(\Q_reg_n_0_[41] ),
        .O(\Q[0]_i_39_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_40 
       (.I0(\Q_reg_n_0_[46] ),
        .I1(\Q_reg[63]_0 [46]),
        .I2(\Q_reg_n_0_[47] ),
        .I3(\Q_reg[63]_0 [47]),
        .O(\Q[0]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_41 
       (.I0(\Q_reg_n_0_[44] ),
        .I1(\Q_reg[63]_0 [44]),
        .I2(\Q_reg_n_0_[45] ),
        .I3(\Q_reg[63]_0 [45]),
        .O(\Q[0]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_42 
       (.I0(\Q_reg_n_0_[42] ),
        .I1(\Q_reg[63]_0 [42]),
        .I2(\Q_reg_n_0_[43] ),
        .I3(\Q_reg[63]_0 [43]),
        .O(\Q[0]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_43 
       (.I0(\Q_reg_n_0_[40] ),
        .I1(\Q_reg[63]_0 [40]),
        .I2(\Q_reg_n_0_[41] ),
        .I3(\Q_reg[63]_0 [41]),
        .O(\Q[0]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_45 
       (.I0(\Q_reg_n_0_[33] ),
        .I1(\Q_reg[63]_0 [33]),
        .I2(\Q_reg[63]_0 [35]),
        .I3(\Q_reg_n_0_[35] ),
        .I4(\Q_reg[63]_0 [34]),
        .I5(\Q_reg_n_0_[34] ),
        .O(\Q[0]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_46 
       (.I0(\Q_reg_n_0_[30] ),
        .I1(\Q_reg[63]_0 [30]),
        .I2(\Q_reg[63]_0 [32]),
        .I3(\Q_reg_n_0_[32] ),
        .I4(\Q_reg[63]_0 [31]),
        .I5(\Q_reg_n_0_[31] ),
        .O(\Q[0]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_47 
       (.I0(\Q_reg_n_0_[27] ),
        .I1(\Q_reg[63]_0 [27]),
        .I2(\Q_reg[63]_0 [29]),
        .I3(\Q_reg_n_0_[29] ),
        .I4(\Q_reg[63]_0 [28]),
        .I5(\Q_reg_n_0_[28] ),
        .O(\Q[0]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_48 
       (.I0(\Q_reg_n_0_[24] ),
        .I1(\Q_reg[63]_0 [24]),
        .I2(\Q_reg[63]_0 [26]),
        .I3(\Q_reg_n_0_[26] ),
        .I4(\Q_reg[63]_0 [25]),
        .I5(\Q_reg_n_0_[25] ),
        .O(\Q[0]_i_48_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_50 
       (.I0(\Q_reg_n_0_[38] ),
        .I1(\Q_reg[63]_0 [38]),
        .I2(\Q_reg[63]_0 [39]),
        .I3(\Q_reg_n_0_[39] ),
        .O(\Q[0]_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_51 
       (.I0(\Q_reg_n_0_[36] ),
        .I1(\Q_reg[63]_0 [36]),
        .I2(\Q_reg[63]_0 [37]),
        .I3(\Q_reg_n_0_[37] ),
        .O(\Q[0]_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_52 
       (.I0(\Q_reg_n_0_[34] ),
        .I1(\Q_reg[63]_0 [34]),
        .I2(\Q_reg[63]_0 [35]),
        .I3(\Q_reg_n_0_[35] ),
        .O(\Q[0]_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_53 
       (.I0(\Q_reg_n_0_[32] ),
        .I1(\Q_reg[63]_0 [32]),
        .I2(\Q_reg[63]_0 [33]),
        .I3(\Q_reg_n_0_[33] ),
        .O(\Q[0]_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_54 
       (.I0(\Q_reg_n_0_[38] ),
        .I1(\Q_reg[63]_0 [38]),
        .I2(\Q_reg_n_0_[39] ),
        .I3(\Q_reg[63]_0 [39]),
        .O(\Q[0]_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_55 
       (.I0(\Q_reg_n_0_[36] ),
        .I1(\Q_reg[63]_0 [36]),
        .I2(\Q_reg_n_0_[37] ),
        .I3(\Q_reg[63]_0 [37]),
        .O(\Q[0]_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_56 
       (.I0(\Q_reg_n_0_[34] ),
        .I1(\Q_reg[63]_0 [34]),
        .I2(\Q_reg_n_0_[35] ),
        .I3(\Q_reg[63]_0 [35]),
        .O(\Q[0]_i_56_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_57 
       (.I0(\Q_reg_n_0_[32] ),
        .I1(\Q_reg[63]_0 [32]),
        .I2(\Q_reg_n_0_[33] ),
        .I3(\Q_reg[63]_0 [33]),
        .O(\Q[0]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_59 
       (.I0(\Q_reg_n_0_[21] ),
        .I1(\Q_reg[63]_0 [21]),
        .I2(\Q_reg[63]_0 [23]),
        .I3(\Q_reg_n_0_[23] ),
        .I4(\Q_reg[63]_0 [22]),
        .I5(\Q_reg_n_0_[22] ),
        .O(\Q[0]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_60 
       (.I0(\Q_reg_n_0_[18] ),
        .I1(\Q_reg[63]_0 [18]),
        .I2(\Q_reg[63]_0 [20]),
        .I3(\Q_reg_n_0_[20] ),
        .I4(\Q_reg[63]_0 [19]),
        .I5(\Q_reg_n_0_[19] ),
        .O(\Q[0]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_61 
       (.I0(\Q_reg_n_0_[15] ),
        .I1(\Q_reg[63]_0 [15]),
        .I2(\Q_reg[63]_0 [17]),
        .I3(\Q_reg_n_0_[17] ),
        .I4(\Q_reg[63]_0 [16]),
        .I5(\Q_reg_n_0_[16] ),
        .O(\Q[0]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_62 
       (.I0(\Q_reg_n_0_[12] ),
        .I1(\Q_reg[63]_0 [12]),
        .I2(\Q_reg[63]_0 [14]),
        .I3(\Q_reg_n_0_[14] ),
        .I4(\Q_reg[63]_0 [13]),
        .I5(\Q_reg_n_0_[13] ),
        .O(\Q[0]_i_62_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_64 
       (.I0(\Q_reg_n_0_[30] ),
        .I1(\Q_reg[63]_0 [30]),
        .I2(\Q_reg[63]_0 [31]),
        .I3(\Q_reg_n_0_[31] ),
        .O(\Q[0]_i_64_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_65 
       (.I0(\Q_reg_n_0_[28] ),
        .I1(\Q_reg[63]_0 [28]),
        .I2(\Q_reg[63]_0 [29]),
        .I3(\Q_reg_n_0_[29] ),
        .O(\Q[0]_i_65_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_66 
       (.I0(\Q_reg_n_0_[26] ),
        .I1(\Q_reg[63]_0 [26]),
        .I2(\Q_reg[63]_0 [27]),
        .I3(\Q_reg_n_0_[27] ),
        .O(\Q[0]_i_66_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_67 
       (.I0(\Q_reg_n_0_[24] ),
        .I1(\Q_reg[63]_0 [24]),
        .I2(\Q_reg[63]_0 [25]),
        .I3(\Q_reg_n_0_[25] ),
        .O(\Q[0]_i_67_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_68 
       (.I0(\Q_reg_n_0_[30] ),
        .I1(\Q_reg[63]_0 [30]),
        .I2(\Q_reg_n_0_[31] ),
        .I3(\Q_reg[63]_0 [31]),
        .O(\Q[0]_i_68_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_69 
       (.I0(\Q_reg_n_0_[28] ),
        .I1(\Q_reg[63]_0 [28]),
        .I2(\Q_reg_n_0_[29] ),
        .I3(\Q_reg[63]_0 [29]),
        .O(\Q[0]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_6__0 
       (.I0(\Q_reg_n_0_[60] ),
        .I1(\Q_reg[63]_0 [60]),
        .I2(\Q_reg[63]_0 [62]),
        .I3(\Q_reg[1]_2 [0]),
        .I4(\Q_reg[63]_0 [61]),
        .I5(\Q_reg_n_0_[61] ),
        .O(\Q[0]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_70 
       (.I0(\Q_reg_n_0_[26] ),
        .I1(\Q_reg[63]_0 [26]),
        .I2(\Q_reg_n_0_[27] ),
        .I3(\Q_reg[63]_0 [27]),
        .O(\Q[0]_i_70_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_71 
       (.I0(\Q_reg_n_0_[24] ),
        .I1(\Q_reg[63]_0 [24]),
        .I2(\Q_reg_n_0_[25] ),
        .I3(\Q_reg[63]_0 [25]),
        .O(\Q[0]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_72 
       (.I0(\Q_reg_n_0_[9] ),
        .I1(\Q_reg[63]_0 [9]),
        .I2(\Q_reg[63]_0 [11]),
        .I3(\Q_reg_n_0_[11] ),
        .I4(\Q_reg[63]_0 [10]),
        .I5(\Q_reg_n_0_[10] ),
        .O(\Q[0]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_73 
       (.I0(\Q_reg_n_0_[6] ),
        .I1(\Q_reg[63]_0 [6]),
        .I2(\Q_reg[63]_0 [8]),
        .I3(\Q_reg_n_0_[8] ),
        .I4(\Q_reg[63]_0 [7]),
        .I5(\Q_reg_n_0_[7] ),
        .O(\Q[0]_i_73_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_74 
       (.I0(\Q_reg_n_0_[3] ),
        .I1(\Q_reg[63]_0 [3]),
        .I2(\Q_reg[63]_0 [5]),
        .I3(\Q_reg_n_0_[5] ),
        .I4(\Q_reg[63]_0 [4]),
        .I5(\Q_reg_n_0_[4] ),
        .O(\Q[0]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_75 
       (.I0(\Q_reg_n_0_[0] ),
        .I1(\Q_reg[63]_0 [0]),
        .I2(\Q_reg[63]_0 [2]),
        .I3(\Q_reg_n_0_[2] ),
        .I4(\Q_reg[63]_0 [1]),
        .I5(\Q_reg_n_0_[1] ),
        .O(\Q[0]_i_75_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_77 
       (.I0(\Q_reg_n_0_[22] ),
        .I1(\Q_reg[63]_0 [22]),
        .I2(\Q_reg[63]_0 [23]),
        .I3(\Q_reg_n_0_[23] ),
        .O(\Q[0]_i_77_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_78 
       (.I0(\Q_reg_n_0_[20] ),
        .I1(\Q_reg[63]_0 [20]),
        .I2(\Q_reg[63]_0 [21]),
        .I3(\Q_reg_n_0_[21] ),
        .O(\Q[0]_i_78_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_79 
       (.I0(\Q_reg_n_0_[18] ),
        .I1(\Q_reg[63]_0 [18]),
        .I2(\Q_reg[63]_0 [19]),
        .I3(\Q_reg_n_0_[19] ),
        .O(\Q[0]_i_79_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_80 
       (.I0(\Q_reg_n_0_[16] ),
        .I1(\Q_reg[63]_0 [16]),
        .I2(\Q_reg[63]_0 [17]),
        .I3(\Q_reg_n_0_[17] ),
        .O(\Q[0]_i_80_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_81 
       (.I0(\Q_reg_n_0_[22] ),
        .I1(\Q_reg[63]_0 [22]),
        .I2(\Q_reg_n_0_[23] ),
        .I3(\Q_reg[63]_0 [23]),
        .O(\Q[0]_i_81_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_82 
       (.I0(\Q_reg_n_0_[20] ),
        .I1(\Q_reg[63]_0 [20]),
        .I2(\Q_reg_n_0_[21] ),
        .I3(\Q_reg[63]_0 [21]),
        .O(\Q[0]_i_82_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_83 
       (.I0(\Q_reg_n_0_[18] ),
        .I1(\Q_reg[63]_0 [18]),
        .I2(\Q_reg_n_0_[19] ),
        .I3(\Q_reg[63]_0 [19]),
        .O(\Q[0]_i_83_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_84 
       (.I0(\Q_reg_n_0_[16] ),
        .I1(\Q_reg[63]_0 [16]),
        .I2(\Q_reg_n_0_[17] ),
        .I3(\Q_reg[63]_0 [17]),
        .O(\Q[0]_i_84_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_86 
       (.I0(\Q_reg_n_0_[14] ),
        .I1(\Q_reg[63]_0 [14]),
        .I2(\Q_reg[63]_0 [15]),
        .I3(\Q_reg_n_0_[15] ),
        .O(\Q[0]_i_86_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_87 
       (.I0(\Q_reg_n_0_[12] ),
        .I1(\Q_reg[63]_0 [12]),
        .I2(\Q_reg[63]_0 [13]),
        .I3(\Q_reg_n_0_[13] ),
        .O(\Q[0]_i_87_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_88 
       (.I0(\Q_reg_n_0_[10] ),
        .I1(\Q_reg[63]_0 [10]),
        .I2(\Q_reg[63]_0 [11]),
        .I3(\Q_reg_n_0_[11] ),
        .O(\Q[0]_i_88_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_89 
       (.I0(\Q_reg_n_0_[8] ),
        .I1(\Q_reg[63]_0 [8]),
        .I2(\Q_reg[63]_0 [9]),
        .I3(\Q_reg_n_0_[9] ),
        .O(\Q[0]_i_89_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Q[0]_i_8__0 
       (.I0(\Q_reg[1]_2 [0]),
        .I1(\Q_reg[63]_0 [62]),
        .O(\Q[0]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_90 
       (.I0(\Q_reg_n_0_[14] ),
        .I1(\Q_reg[63]_0 [14]),
        .I2(\Q_reg_n_0_[15] ),
        .I3(\Q_reg[63]_0 [15]),
        .O(\Q[0]_i_90_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_91 
       (.I0(\Q_reg_n_0_[12] ),
        .I1(\Q_reg[63]_0 [12]),
        .I2(\Q_reg_n_0_[13] ),
        .I3(\Q_reg[63]_0 [13]),
        .O(\Q[0]_i_91_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_92 
       (.I0(\Q_reg_n_0_[10] ),
        .I1(\Q_reg[63]_0 [10]),
        .I2(\Q_reg_n_0_[11] ),
        .I3(\Q_reg[63]_0 [11]),
        .O(\Q[0]_i_92_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_93 
       (.I0(\Q_reg_n_0_[8] ),
        .I1(\Q_reg[63]_0 [8]),
        .I2(\Q_reg_n_0_[9] ),
        .I3(\Q_reg[63]_0 [9]),
        .O(\Q[0]_i_93_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_94 
       (.I0(\Q_reg_n_0_[6] ),
        .I1(\Q_reg[63]_0 [6]),
        .I2(\Q_reg[63]_0 [7]),
        .I3(\Q_reg_n_0_[7] ),
        .O(\Q[0]_i_94_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_95 
       (.I0(\Q_reg_n_0_[4] ),
        .I1(\Q_reg[63]_0 [4]),
        .I2(\Q_reg[63]_0 [5]),
        .I3(\Q_reg_n_0_[5] ),
        .O(\Q[0]_i_95_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_96 
       (.I0(\Q_reg_n_0_[2] ),
        .I1(\Q_reg[63]_0 [2]),
        .I2(\Q_reg[63]_0 [3]),
        .I3(\Q_reg_n_0_[3] ),
        .O(\Q[0]_i_96_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_97 
       (.I0(\Q_reg_n_0_[0] ),
        .I1(\Q_reg[63]_0 [0]),
        .I2(\Q_reg[63]_0 [1]),
        .I3(\Q_reg_n_0_[1] ),
        .O(\Q[0]_i_97_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_98 
       (.I0(\Q_reg_n_0_[6] ),
        .I1(\Q_reg[63]_0 [6]),
        .I2(\Q_reg_n_0_[7] ),
        .I3(\Q_reg[63]_0 [7]),
        .O(\Q[0]_i_98_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_99 
       (.I0(\Q_reg_n_0_[4] ),
        .I1(\Q_reg[63]_0 [4]),
        .I2(\Q_reg_n_0_[5] ),
        .I3(\Q_reg[63]_0 [5]),
        .O(\Q[0]_i_99_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_9__0 
       (.I0(\Q_reg_n_0_[60] ),
        .I1(\Q_reg[63]_0 [60]),
        .I2(\Q_reg[63]_0 [61]),
        .I3(\Q_reg_n_0_[61] ),
        .O(\Q[0]_i_9__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[10]_i_1__3 
       (.I0(\Q_reg_n_0_[10] ),
        .I1(\Q_reg[63]_0 [10]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[10]_i_1__4 
       (.I0(\Q_reg[63]_0 [10]),
        .I1(\Q_reg_n_0_[10] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [10]));
  LUT6 #(
    .INIT(64'hCDC8DFD5CDC88A80)) 
    \Q[11]_i_1__0 
       (.I0(\Q_reg[43]_0 ),
        .I1(\Q_reg[43]_1 ),
        .I2(S_Shift_Value[4]),
        .I3(\Data_array[4]_0 ),
        .I4(S_Shift_Value[5]),
        .I5(\Q_reg[4]_0 [2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[11]_i_1__3 
       (.I0(\Q_reg_n_0_[11] ),
        .I1(\Q_reg[63]_0 [11]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[11]_i_1__4 
       (.I0(\Q_reg[63]_0 [11]),
        .I1(\Q_reg_n_0_[11] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [11]));
  LUT5 #(
    .INIT(32'hFAA08EE8)) 
    \Q[11]_i_3 
       (.I0(A_S_C[9]),
        .I1(\Q_reg[51]_0 [2]),
        .I2(\Q_reg[0]_3 ),
        .I3(\Q_reg[54]_1 [9]),
        .I4(\Q_reg[0]_rep ),
        .O(\Q_reg[54]_0 [3]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[12]_i_10 
       (.I0(\Q_reg[54]_1 [7]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B012_out ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[12]_i_12 
       (.I0(\Q_reg[54]_1 [8]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B014_out ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[12]_i_1__2 
       (.I0(\Q_reg_n_0_[12] ),
        .I1(\Q_reg[63]_0 [12]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[12]_i_1__3 
       (.I0(\Q_reg[63]_0 [12]),
        .I1(\Q_reg_n_0_[12] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [12]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[12]_i_3 
       (.I0(A_S_C[9]),
        .I1(S_A_S_Oper_A[7]),
        .I2(\Add_Subt_Sgf_module/Data_B016_out ),
        .I3(S_A_S_Oper_A[8]),
        .I4(\Add_Subt_Sgf_module/Data_B018_out ),
        .O(\Q_reg[54]_0 [4]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[12]_i_4 
       (.I0(A_S_C[7]),
        .I1(S_A_S_Oper_A[5]),
        .I2(\Add_Subt_Sgf_module/Data_B012_out ),
        .I3(S_A_S_Oper_A[6]),
        .I4(\Add_Subt_Sgf_module/Data_B014_out ),
        .O(A_S_C[9]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[12]_i_6 
       (.I0(\Q_reg[54]_1 [9]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B016_out ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[12]_i_8 
       (.I0(\Q_reg[54]_1 [10]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B018_out ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[13]_i_1__2 
       (.I0(\Q_reg_n_0_[13] ),
        .I1(\Q_reg[63]_0 [13]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[13]_i_1__3 
       (.I0(\Q_reg[63]_0 [13]),
        .I1(\Q_reg_n_0_[13] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [13]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[14]_i_1__2 
       (.I0(\Q_reg_n_0_[14] ),
        .I1(\Q_reg[63]_0 [14]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[14]_i_1__3 
       (.I0(\Q_reg[63]_0 [14]),
        .I1(\Q_reg_n_0_[14] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [14]));
  LUT5 #(
    .INIT(32'hFAA08EE8)) 
    \Q[14]_i_3 
       (.I0(A_S_C[12]),
        .I1(\Q_reg[51]_0 [3]),
        .I2(\Q_reg[0]_3 ),
        .I3(\Q_reg[54]_1 [12]),
        .I4(\Q_reg[0]_rep ),
        .O(\Q_reg[54]_0 [5]));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \Q[14]_i_4 
       (.I0(\Q_reg[7]_0 ),
        .I1(\Q[14]_i_6_n_0 ),
        .I2(S_A_S_Oper_A[8]),
        .I3(\Add_Subt_Sgf_module/Data_B018_out ),
        .I4(S_A_S_Oper_A[9]),
        .I5(\Add_Subt_Sgf_module/Data_B020_out ),
        .O(A_S_C[12]));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \Q[14]_i_6 
       (.I0(A_S_P[1]),
        .I1(\Add_Subt_Sgf_module/Data_B014_out ),
        .I2(S_A_S_Oper_A[6]),
        .I3(\Add_Subt_Sgf_module/Data_B012_out ),
        .I4(S_A_S_Oper_A[5]),
        .I5(A_S_C[7]),
        .O(\Q[14]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[14]_i_8 
       (.I0(\Q_reg[54]_1 [11]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B020_out ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[15]_i_1__2 
       (.I0(\Q_reg_n_0_[15] ),
        .I1(\Q_reg[63]_0 [15]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[15]_i_1__3 
       (.I0(\Q_reg[63]_0 [15]),
        .I1(\Q_reg_n_0_[15] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [15]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[16]_i_1__2 
       (.I0(\Q_reg_n_0_[16] ),
        .I1(\Q_reg[63]_0 [16]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[16]_i_1__3 
       (.I0(\Q_reg[63]_0 [16]),
        .I1(\Q_reg_n_0_[16] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [16]));
  LUT5 #(
    .INIT(32'hFAA08EE8)) 
    \Q[16]_i_3 
       (.I0(A_S_C[14]),
        .I1(\Q_reg[51]_0 [4]),
        .I2(\Q_reg[0]_3 ),
        .I3(\Q_reg[54]_1 [14]),
        .I4(\Q_reg[0]_rep ),
        .O(\Q_reg[54]_0 [6]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[17]_i_10 
       (.I0(\Q_reg[54]_1 [12]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B022_out ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[17]_i_12 
       (.I0(\Q_reg[54]_1 [13]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B024_out ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[17]_i_1__2 
       (.I0(\Q_reg_n_0_[17] ),
        .I1(\Q_reg[63]_0 [17]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[17]_i_1__3 
       (.I0(\Q_reg[63]_0 [17]),
        .I1(\Q_reg_n_0_[17] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [17]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[17]_i_3 
       (.I0(A_S_C[14]),
        .I1(S_A_S_Oper_A[12]),
        .I2(\Add_Subt_Sgf_module/Data_B026_out ),
        .I3(S_A_S_Oper_A[13]),
        .I4(\Add_Subt_Sgf_module/Data_B028_out ),
        .O(\Q_reg[54]_0 [7]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[17]_i_4 
       (.I0(A_S_C[12]),
        .I1(S_A_S_Oper_A[10]),
        .I2(\Add_Subt_Sgf_module/Data_B022_out ),
        .I3(S_A_S_Oper_A[11]),
        .I4(\Add_Subt_Sgf_module/Data_B024_out ),
        .O(A_S_C[14]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[17]_i_6 
       (.I0(\Q_reg[54]_1 [14]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B026_out ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[17]_i_8 
       (.I0(\Q_reg[54]_1 [15]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B028_out ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[18]_i_1__2 
       (.I0(\Q_reg_n_0_[18] ),
        .I1(\Q_reg[63]_0 [18]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[18]_i_1__3 
       (.I0(\Q_reg[63]_0 [18]),
        .I1(\Q_reg_n_0_[18] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [18]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[19]_i_1__2 
       (.I0(\Q_reg_n_0_[19] ),
        .I1(\Q_reg[63]_0 [19]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[19]_i_1__3 
       (.I0(\Q_reg[63]_0 [19]),
        .I1(\Q_reg_n_0_[19] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [19]));
  LUT5 #(
    .INIT(32'hFAA08EE8)) 
    \Q[19]_i_3 
       (.I0(A_S_C[17]),
        .I1(\Q_reg[51]_0 [5]),
        .I2(\Q_reg[0]_3 ),
        .I3(\Q_reg[54]_1 [17]),
        .I4(\Q_reg[0]_rep ),
        .O(\Q_reg[54]_0 [8]));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \Q[19]_i_4 
       (.I0(\Q_reg[12]_0 ),
        .I1(\Q[19]_i_6_n_0 ),
        .I2(S_A_S_Oper_A[13]),
        .I3(\Add_Subt_Sgf_module/Data_B028_out ),
        .I4(S_A_S_Oper_A[14]),
        .I5(\Add_Subt_Sgf_module/Data_B030_out ),
        .O(A_S_C[17]));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \Q[19]_i_6 
       (.I0(A_S_P[2]),
        .I1(\Add_Subt_Sgf_module/Data_B024_out ),
        .I2(S_A_S_Oper_A[11]),
        .I3(\Add_Subt_Sgf_module/Data_B022_out ),
        .I4(S_A_S_Oper_A[10]),
        .I5(A_S_C[12]),
        .O(\Q[19]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[19]_i_8 
       (.I0(\Q_reg[54]_1 [16]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B030_out ));
  LUT6 #(
    .INIT(64'h666A6A666A66666A)) 
    \Q[1]_i_1__0 
       (.I0(\Q_reg[54]_1 [1]),
        .I1(\Q_reg[54]_1 [0]),
        .I2(FSM_selector_D),
        .I3(\Q_reg[1]_2 [1]),
        .I4(\Q_reg[63]_0 [63]),
        .I5(intAS),
        .O(\Q_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[1]_i_1__2 
       (.I0(\Q_reg_n_0_[1] ),
        .I1(\Q_reg[63]_0 [1]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[1]_i_1__3 
       (.I0(\Q_reg[63]_0 [1]),
        .I1(\Q_reg_n_0_[1] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [1]));
  LUT6 #(
    .INIT(64'hFF70FF71FFF1FFF5)) 
    \Q[1]_i_3__0 
       (.I0(\Q_reg[54]_1 [54]),
        .I1(\Q_reg[54]_1 [53]),
        .I2(FSM_selector_D),
        .I3(\Q_reg[0]_0 ),
        .I4(\Q_reg[51]_0 [20]),
        .I5(\Q_reg[54]_0 [29]),
        .O(\Q_reg[1]_3 ));
  LUT6 #(
    .INIT(64'hFA28A0AEFFFEFAFF)) 
    \Q[1]_i_4 
       (.I0(\Q_reg[54]_0 [29]),
        .I1(\Q_reg[51]_0 [20]),
        .I2(\Q_reg[54]_1 [53]),
        .I3(\Q_reg[0]_rep__0 ),
        .I4(\Q_reg[54]_1 [54]),
        .I5(\Q_reg[0]_3 ),
        .O(\Q_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[20]_i_1 
       (.I0(\Q_reg[43]_1 ),
        .I1(\Q_reg[20]_0 ),
        .I2(\Q_reg[43]_0 ),
        .I3(\Q_reg[4]_0 [10]),
        .I4(S_Shift_Value[5]),
        .I5(\Q_reg[4]_0 [3]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[20]_i_1__2 
       (.I0(\Q_reg_n_0_[20] ),
        .I1(\Q_reg[63]_0 [20]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [20]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[20]_i_1__3 
       (.I0(\Q_reg[63]_0 [20]),
        .I1(\Q_reg_n_0_[20] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [20]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[21]_i_1__2 
       (.I0(\Q_reg_n_0_[21] ),
        .I1(\Q_reg[63]_0 [21]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [21]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[21]_i_1__3 
       (.I0(\Q_reg[63]_0 [21]),
        .I1(\Q_reg_n_0_[21] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [21]));
  LUT5 #(
    .INIT(32'hFAA08EE8)) 
    \Q[21]_i_3 
       (.I0(A_S_C[19]),
        .I1(\Q_reg[51]_0 [6]),
        .I2(\Q_reg[0]_3 ),
        .I3(\Q_reg[54]_1 [19]),
        .I4(\Q_reg[0]_rep ),
        .O(\Q_reg[54]_0 [9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[22]_i_1 
       (.I0(\Q_reg[43]_1 ),
        .I1(\Q_reg[4]_0 [9]),
        .I2(\Q_reg[43]_0 ),
        .I3(\Q_reg[4]_0 [11]),
        .I4(S_Shift_Value[5]),
        .I5(\Q_reg[4]_0 [4]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[22]_i_10 
       (.I0(\Q_reg[54]_1 [17]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B032_out ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[22]_i_12 
       (.I0(\Q_reg[54]_1 [18]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B034_out ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[22]_i_1__2 
       (.I0(\Q_reg_n_0_[22] ),
        .I1(\Q_reg[63]_0 [22]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [22]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[22]_i_1__3 
       (.I0(\Q_reg[63]_0 [22]),
        .I1(\Q_reg_n_0_[22] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [22]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[22]_i_3 
       (.I0(A_S_C[19]),
        .I1(S_A_S_Oper_A[17]),
        .I2(\Add_Subt_Sgf_module/Data_B036_out ),
        .I3(S_A_S_Oper_A[18]),
        .I4(\Add_Subt_Sgf_module/Data_B038_out ),
        .O(\Q_reg[54]_0 [10]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[22]_i_4 
       (.I0(A_S_C[17]),
        .I1(S_A_S_Oper_A[15]),
        .I2(\Add_Subt_Sgf_module/Data_B032_out ),
        .I3(S_A_S_Oper_A[16]),
        .I4(\Add_Subt_Sgf_module/Data_B034_out ),
        .O(A_S_C[19]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[22]_i_6 
       (.I0(\Q_reg[54]_1 [19]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B036_out ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[22]_i_8 
       (.I0(\Q_reg[54]_1 [20]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B038_out ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[23]_i_1__2 
       (.I0(\Q_reg_n_0_[23] ),
        .I1(\Q_reg[63]_0 [23]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[23]_i_1__3 
       (.I0(\Q_reg[63]_0 [23]),
        .I1(\Q_reg_n_0_[23] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [23]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[24]_i_1__2 
       (.I0(\Q_reg_n_0_[24] ),
        .I1(\Q_reg[63]_0 [24]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [24]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[24]_i_1__3 
       (.I0(\Q_reg[63]_0 [24]),
        .I1(\Q_reg_n_0_[24] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [24]));
  LUT5 #(
    .INIT(32'hFAA08EE8)) 
    \Q[24]_i_3 
       (.I0(A_S_C[22]),
        .I1(\Q_reg[51]_0 [7]),
        .I2(\Q_reg[0]_3 ),
        .I3(\Q_reg[54]_1 [22]),
        .I4(\Q_reg[0]_rep ),
        .O(\Q_reg[54]_0 [11]));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \Q[24]_i_4 
       (.I0(\Q_reg[17]_0 ),
        .I1(\Q[24]_i_6_n_0 ),
        .I2(S_A_S_Oper_A[18]),
        .I3(\Add_Subt_Sgf_module/Data_B038_out ),
        .I4(S_A_S_Oper_A[19]),
        .I5(\Add_Subt_Sgf_module/Data_B040_out ),
        .O(A_S_C[22]));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \Q[24]_i_6 
       (.I0(A_S_P[3]),
        .I1(\Add_Subt_Sgf_module/Data_B034_out ),
        .I2(S_A_S_Oper_A[16]),
        .I3(\Add_Subt_Sgf_module/Data_B032_out ),
        .I4(S_A_S_Oper_A[15]),
        .I5(A_S_C[17]),
        .O(\Q[24]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[24]_i_8 
       (.I0(\Q_reg[54]_1 [21]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B040_out ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[25]_i_1__2 
       (.I0(\Q_reg_n_0_[25] ),
        .I1(\Q_reg[63]_0 [25]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [25]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[25]_i_1__3 
       (.I0(\Q_reg[63]_0 [25]),
        .I1(\Q_reg_n_0_[25] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [25]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[26]_i_1__2 
       (.I0(\Q_reg_n_0_[26] ),
        .I1(\Q_reg[63]_0 [26]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [26]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[26]_i_1__3 
       (.I0(\Q_reg[63]_0 [26]),
        .I1(\Q_reg_n_0_[26] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [26]));
  LUT5 #(
    .INIT(32'hFAA08EE8)) 
    \Q[26]_i_3 
       (.I0(A_S_C[24]),
        .I1(\Q_reg[51]_0 [8]),
        .I2(\Q_reg[0]_3 ),
        .I3(\Q_reg[54]_1 [24]),
        .I4(\Q_reg[0]_rep ),
        .O(\Q_reg[54]_0 [12]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[27]_i_10__0 
       (.I0(\Q_reg[54]_1 [22]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B042_out ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[27]_i_12__0 
       (.I0(\Q_reg[54]_1 [23]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B044_out ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[27]_i_1__2 
       (.I0(\Q_reg_n_0_[27] ),
        .I1(\Q_reg[63]_0 [27]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [27]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[27]_i_1__3 
       (.I0(\Q_reg[63]_0 [27]),
        .I1(\Q_reg_n_0_[27] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [27]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[27]_i_3__0 
       (.I0(A_S_C[24]),
        .I1(S_A_S_Oper_A[22]),
        .I2(\Add_Subt_Sgf_module/Data_B046_out ),
        .I3(S_A_S_Oper_A[23]),
        .I4(\Add_Subt_Sgf_module/Data_B048_out ),
        .O(\Q_reg[54]_0 [13]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[27]_i_4__0 
       (.I0(A_S_C[22]),
        .I1(S_A_S_Oper_A[20]),
        .I2(\Add_Subt_Sgf_module/Data_B042_out ),
        .I3(S_A_S_Oper_A[21]),
        .I4(\Add_Subt_Sgf_module/Data_B044_out ),
        .O(A_S_C[24]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[27]_i_6__0 
       (.I0(\Q_reg[54]_1 [24]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B046_out ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[27]_i_8__0 
       (.I0(\Q_reg[54]_1 [25]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B048_out ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \Q[28]_i_1 
       (.I0(\Q_reg[4]_0 [6]),
        .I1(\Q_reg[43]_0 ),
        .I2(\Q_reg[43]_1 ),
        .I3(S_Shift_Value[5]),
        .I4(\Q_reg[4]_0 [7]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[28]_i_1__2 
       (.I0(\Q_reg_n_0_[28] ),
        .I1(\Q_reg[63]_0 [28]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [28]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[28]_i_1__3 
       (.I0(\Q_reg[63]_0 [28]),
        .I1(\Q_reg_n_0_[28] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [28]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[29]_i_1__2 
       (.I0(\Q_reg_n_0_[29] ),
        .I1(\Q_reg[63]_0 [29]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [29]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[29]_i_1__3 
       (.I0(\Q_reg[63]_0 [29]),
        .I1(\Q_reg_n_0_[29] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [29]));
  LUT5 #(
    .INIT(32'hFAA08EE8)) 
    \Q[29]_i_3__0 
       (.I0(A_S_C[27]),
        .I1(\Q_reg[51]_0 [9]),
        .I2(\Q_reg[0]_3 ),
        .I3(\Q_reg[54]_1 [27]),
        .I4(\Q_reg[0]_rep ),
        .O(\Q_reg[54]_0 [14]));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \Q[29]_i_4 
       (.I0(\Q_reg[22]_0 ),
        .I1(\Q[29]_i_6_n_0 ),
        .I2(S_A_S_Oper_A[23]),
        .I3(\Add_Subt_Sgf_module/Data_B048_out ),
        .I4(S_A_S_Oper_A[24]),
        .I5(\Add_Subt_Sgf_module/Data_B050_out ),
        .O(A_S_C[27]));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \Q[29]_i_6 
       (.I0(A_S_P[4]),
        .I1(\Add_Subt_Sgf_module/Data_B044_out ),
        .I2(S_A_S_Oper_A[21]),
        .I3(\Add_Subt_Sgf_module/Data_B042_out ),
        .I4(S_A_S_Oper_A[20]),
        .I5(A_S_C[22]),
        .O(\Q[29]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[29]_i_8 
       (.I0(\Q_reg[54]_1 [26]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B050_out ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[2]_i_1__3 
       (.I0(\Q_reg_n_0_[2] ),
        .I1(\Q_reg[63]_0 [2]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[2]_i_1__4 
       (.I0(\Q_reg[63]_0 [2]),
        .I1(\Q_reg_n_0_[2] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [2]));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \Q[30]_i_1 
       (.I0(\Q_reg[4]_0 [5]),
        .I1(\Q_reg[43]_0 ),
        .I2(\Q_reg[43]_1 ),
        .I3(S_Shift_Value[5]),
        .I4(\Q_reg[4]_0 [8]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[30]_i_1__2 
       (.I0(\Q_reg_n_0_[30] ),
        .I1(\Q_reg[63]_0 [30]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [30]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[30]_i_1__3 
       (.I0(\Q_reg[63]_0 [30]),
        .I1(\Q_reg_n_0_[30] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [30]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[31]_i_1__2 
       (.I0(\Q_reg_n_0_[31] ),
        .I1(\Q_reg[63]_0 [31]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [31]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[31]_i_1__3 
       (.I0(\Q_reg[63]_0 [31]),
        .I1(\Q_reg_n_0_[31] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [31]));
  LUT5 #(
    .INIT(32'hFAA08EE8)) 
    \Q[31]_i_3__0 
       (.I0(A_S_C[29]),
        .I1(\Q_reg[51]_0 [10]),
        .I2(\Q_reg[0]_3 ),
        .I3(\Q_reg[54]_1 [29]),
        .I4(\Q_reg[0]_rep ),
        .O(\Q_reg[54]_0 [15]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[32]_i_10 
       (.I0(\Q_reg[54]_1 [27]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B052_out ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[32]_i_12 
       (.I0(\Q_reg[54]_1 [28]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B054_out ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[32]_i_1__2 
       (.I0(\Q_reg_n_0_[32] ),
        .I1(\Q_reg[63]_0 [32]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [32]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[32]_i_1__3 
       (.I0(\Q_reg[63]_0 [32]),
        .I1(\Q_reg_n_0_[32] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [32]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[32]_i_3__0 
       (.I0(A_S_C[29]),
        .I1(S_A_S_Oper_A[27]),
        .I2(\Add_Subt_Sgf_module/Data_B056_out ),
        .I3(S_A_S_Oper_A[28]),
        .I4(\Add_Subt_Sgf_module/Data_B058_out ),
        .O(\Q_reg[54]_0 [16]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[32]_i_4 
       (.I0(A_S_C[27]),
        .I1(S_A_S_Oper_A[25]),
        .I2(\Add_Subt_Sgf_module/Data_B052_out ),
        .I3(S_A_S_Oper_A[26]),
        .I4(\Add_Subt_Sgf_module/Data_B054_out ),
        .O(A_S_C[29]));
  LUT6 #(
    .INIT(64'hB8BBB88888BB88BB)) 
    \Q[32]_i_5 
       (.I0(\Q_reg[43]_1 ),
        .I1(S_Shift_Value[0]),
        .I2(Q[0]),
        .I3(\Q_reg[43]_0 ),
        .I4(Q[1]),
        .I5(FSM_selector_C),
        .O(\Q_reg[32]_0 ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[32]_i_6 
       (.I0(\Q_reg[54]_1 [29]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B056_out ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[32]_i_8 
       (.I0(\Q_reg[54]_1 [30]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B058_out ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[33]_i_1__2 
       (.I0(\Q_reg_n_0_[33] ),
        .I1(\Q_reg[63]_0 [33]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [33]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[33]_i_1__3 
       (.I0(\Q_reg[63]_0 [33]),
        .I1(\Q_reg_n_0_[33] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [33]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[34]_i_1 
       (.I0(\Q_reg[4]_0 [10]),
        .I1(\Q_reg[4]_0 [3]),
        .I2(\Q_reg[43]_0 ),
        .I3(\Q_reg[43]_1 ),
        .I4(S_Shift_Value[5]),
        .I5(\Q_reg[20]_0 ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[34]_i_1__2 
       (.I0(\Q_reg_n_0_[34] ),
        .I1(\Q_reg[63]_0 [34]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [34]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[34]_i_1__3 
       (.I0(\Q_reg[63]_0 [34]),
        .I1(\Q_reg_n_0_[34] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [34]));
  LUT5 #(
    .INIT(32'hFAA08EE8)) 
    \Q[34]_i_3__0 
       (.I0(A_S_C[32]),
        .I1(\Q_reg[51]_0 [11]),
        .I2(\Q_reg[0]_3 ),
        .I3(\Q_reg[54]_1 [32]),
        .I4(\Q_reg[0]_rep ),
        .O(\Q_reg[54]_0 [17]));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \Q[34]_i_4 
       (.I0(\Q_reg[27]_0 ),
        .I1(\Q[34]_i_6_n_0 ),
        .I2(S_A_S_Oper_A[28]),
        .I3(\Add_Subt_Sgf_module/Data_B058_out ),
        .I4(S_A_S_Oper_A[29]),
        .I5(\Add_Subt_Sgf_module/Data_B060_out ),
        .O(A_S_C[32]));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \Q[34]_i_6 
       (.I0(A_S_P[5]),
        .I1(\Add_Subt_Sgf_module/Data_B054_out ),
        .I2(S_A_S_Oper_A[26]),
        .I3(\Add_Subt_Sgf_module/Data_B052_out ),
        .I4(S_A_S_Oper_A[25]),
        .I5(A_S_C[27]),
        .O(\Q[34]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[34]_i_8 
       (.I0(\Q_reg[54]_1 [31]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B060_out ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[35]_i_1__2 
       (.I0(\Q_reg_n_0_[35] ),
        .I1(\Q_reg[63]_0 [35]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [35]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[35]_i_1__3 
       (.I0(\Q_reg[63]_0 [35]),
        .I1(\Q_reg_n_0_[35] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [35]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[36]_i_1__2 
       (.I0(\Q_reg_n_0_[36] ),
        .I1(\Q_reg[63]_0 [36]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [36]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[36]_i_1__3 
       (.I0(\Q_reg[63]_0 [36]),
        .I1(\Q_reg_n_0_[36] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [36]));
  LUT5 #(
    .INIT(32'hFAA08EE8)) 
    \Q[36]_i_3__0 
       (.I0(A_S_C[34]),
        .I1(\Q_reg[51]_0 [12]),
        .I2(\Q_reg[0]_3 ),
        .I3(\Q_reg[54]_1 [34]),
        .I4(\Q_reg[0]_rep ),
        .O(\Q_reg[54]_0 [18]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[37]_i_10 
       (.I0(\Q_reg[54]_1 [32]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B062_out ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[37]_i_12 
       (.I0(\Q_reg[54]_1 [33]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B064_out ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[37]_i_1__2 
       (.I0(\Q_reg_n_0_[37] ),
        .I1(\Q_reg[63]_0 [37]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [37]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[37]_i_1__3 
       (.I0(\Q_reg[63]_0 [37]),
        .I1(\Q_reg_n_0_[37] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [37]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[37]_i_3__0 
       (.I0(A_S_C[34]),
        .I1(S_A_S_Oper_A[32]),
        .I2(\Add_Subt_Sgf_module/Data_B066_out ),
        .I3(S_A_S_Oper_A[33]),
        .I4(\Add_Subt_Sgf_module/Data_B068_out ),
        .O(\Q_reg[54]_0 [19]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[37]_i_4__0 
       (.I0(A_S_C[32]),
        .I1(S_A_S_Oper_A[30]),
        .I2(\Add_Subt_Sgf_module/Data_B062_out ),
        .I3(S_A_S_Oper_A[31]),
        .I4(\Add_Subt_Sgf_module/Data_B064_out ),
        .O(A_S_C[34]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[37]_i_6 
       (.I0(\Q_reg[54]_1 [34]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B066_out ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[37]_i_8 
       (.I0(\Q_reg[54]_1 [35]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B068_out ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[38]_i_1__2 
       (.I0(\Q_reg_n_0_[38] ),
        .I1(\Q_reg[63]_0 [38]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [38]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[38]_i_1__3 
       (.I0(\Q_reg[63]_0 [38]),
        .I1(\Q_reg_n_0_[38] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [38]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[39]_i_1__2 
       (.I0(\Q_reg_n_0_[39] ),
        .I1(\Q_reg[63]_0 [39]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [39]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[39]_i_1__3 
       (.I0(\Q_reg[63]_0 [39]),
        .I1(\Q_reg_n_0_[39] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [39]));
  LUT5 #(
    .INIT(32'hFAA08EE8)) 
    \Q[39]_i_3__0 
       (.I0(A_S_C[37]),
        .I1(\Q_reg[51]_0 [13]),
        .I2(\Q_reg[0]_3 ),
        .I3(\Q_reg[54]_1 [37]),
        .I4(\Q_reg[0]_rep ),
        .O(\Q_reg[54]_0 [20]));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \Q[39]_i_4 
       (.I0(\Q_reg[32]_1 ),
        .I1(\Q[39]_i_6_n_0 ),
        .I2(S_A_S_Oper_A[33]),
        .I3(\Add_Subt_Sgf_module/Data_B068_out ),
        .I4(S_A_S_Oper_A[34]),
        .I5(\Add_Subt_Sgf_module/Data_B070_out ),
        .O(A_S_C[37]));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \Q[39]_i_6 
       (.I0(A_S_P[6]),
        .I1(\Add_Subt_Sgf_module/Data_B064_out ),
        .I2(S_A_S_Oper_A[31]),
        .I3(\Add_Subt_Sgf_module/Data_B062_out ),
        .I4(S_A_S_Oper_A[30]),
        .I5(A_S_C[32]),
        .O(\Q[39]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[39]_i_8 
       (.I0(\Q_reg[54]_1 [36]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B070_out ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[3]_i_1__2 
       (.I0(\Q_reg_n_0_[3] ),
        .I1(\Q_reg[63]_0 [3]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[3]_i_1__3 
       (.I0(\Q_reg[63]_0 [3]),
        .I1(\Q_reg_n_0_[3] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[40]_i_1__2 
       (.I0(\Q_reg_n_0_[40] ),
        .I1(\Q_reg[63]_0 [40]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [40]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[40]_i_1__3 
       (.I0(\Q_reg[63]_0 [40]),
        .I1(\Q_reg_n_0_[40] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [40]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[41]_i_1__2 
       (.I0(\Q_reg_n_0_[41] ),
        .I1(\Q_reg[63]_0 [41]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [41]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[41]_i_1__3 
       (.I0(\Q_reg[63]_0 [41]),
        .I1(\Q_reg_n_0_[41] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [41]));
  LUT5 #(
    .INIT(32'hFAA08EE8)) 
    \Q[41]_i_3__0 
       (.I0(A_S_C[39]),
        .I1(\Q_reg[51]_0 [14]),
        .I2(\Q_reg[0]_3 ),
        .I3(\Q_reg[54]_1 [39]),
        .I4(\Q_reg[0]_rep ),
        .O(\Q_reg[54]_0 [21]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[42]_i_10 
       (.I0(\Q_reg[54]_1 [37]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B072_out ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[42]_i_12 
       (.I0(\Q_reg[54]_1 [38]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B074_out ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[42]_i_1__2 
       (.I0(\Q_reg_n_0_[42] ),
        .I1(\Q_reg[63]_0 [42]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [42]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[42]_i_1__3 
       (.I0(\Q_reg[63]_0 [42]),
        .I1(\Q_reg_n_0_[42] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [42]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[42]_i_3__0 
       (.I0(A_S_C[39]),
        .I1(S_A_S_Oper_A[37]),
        .I2(\Add_Subt_Sgf_module/Data_B076_out ),
        .I3(S_A_S_Oper_A[38]),
        .I4(\Add_Subt_Sgf_module/Data_B078_out ),
        .O(\Q_reg[54]_0 [22]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[42]_i_4__0 
       (.I0(A_S_C[37]),
        .I1(S_A_S_Oper_A[35]),
        .I2(\Add_Subt_Sgf_module/Data_B072_out ),
        .I3(S_A_S_Oper_A[36]),
        .I4(\Add_Subt_Sgf_module/Data_B074_out ),
        .O(A_S_C[39]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[42]_i_6 
       (.I0(\Q_reg[54]_1 [39]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B076_out ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[42]_i_8 
       (.I0(\Q_reg[54]_1 [40]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B078_out ));
  LUT6 #(
    .INIT(64'hFB08FBCBFB083808)) 
    \Q[43]_i_1 
       (.I0(\Q_reg[4]_0 [2]),
        .I1(\Q_reg[43]_0 ),
        .I2(S_Shift_Value[5]),
        .I3(\Q_reg[43]_1 ),
        .I4(S_Shift_Value[4]),
        .I5(\Data_array[4]_0 ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[43]_i_1__2 
       (.I0(\Q_reg_n_0_[43] ),
        .I1(\Q_reg[63]_0 [43]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [43]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[43]_i_1__3 
       (.I0(\Q_reg[63]_0 [43]),
        .I1(\Q_reg_n_0_[43] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [43]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \Q[44]_i_1 
       (.I0(\Data_array[5]_0 ),
        .I1(S_Shift_Value[5]),
        .I2(\Q_reg[4]_0 [1]),
        .I3(\Q_reg[43]_0 ),
        .I4(\Data_array[6]_1 [0]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[44]_i_1__2 
       (.I0(\Q_reg_n_0_[44] ),
        .I1(\Q_reg[63]_0 [44]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [44]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[44]_i_1__3 
       (.I0(\Q_reg[63]_0 [44]),
        .I1(\Q_reg_n_0_[44] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [44]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[44]_i_2 
       (.I0(\Q_reg[43]_1 ),
        .I1(S_Shift_Value[4]),
        .I2(\Q_reg[44]_0 ),
        .I3(S_Shift_Value[3]),
        .I4(\Q_reg[2]_1 [1]),
        .O(\Data_array[5]_0 ));
  LUT5 #(
    .INIT(32'hFAA08EE8)) 
    \Q[44]_i_3__0 
       (.I0(A_S_C[42]),
        .I1(\Q_reg[51]_0 [15]),
        .I2(\Q_reg[0]_3 ),
        .I3(\Q_reg[54]_1 [42]),
        .I4(\Q_reg[0]_rep ),
        .O(\Q_reg[54]_0 [23]));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \Q[44]_i_4__0 
       (.I0(\Q_reg[37]_0 ),
        .I1(\Q[44]_i_6_n_0 ),
        .I2(S_A_S_Oper_A[38]),
        .I3(\Add_Subt_Sgf_module/Data_B078_out ),
        .I4(S_A_S_Oper_A[39]),
        .I5(\Add_Subt_Sgf_module/Data_B080_out ),
        .O(A_S_C[42]));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \Q[44]_i_6 
       (.I0(A_S_P[7]),
        .I1(\Add_Subt_Sgf_module/Data_B074_out ),
        .I2(S_A_S_Oper_A[36]),
        .I3(\Add_Subt_Sgf_module/Data_B072_out ),
        .I4(S_A_S_Oper_A[35]),
        .I5(A_S_C[37]),
        .O(\Q[44]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[44]_i_8 
       (.I0(\Q_reg[54]_1 [41]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B080_out ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[45]_i_1__2 
       (.I0(\Q_reg_n_0_[45] ),
        .I1(\Q_reg[63]_0 [45]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [45]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[45]_i_1__3 
       (.I0(\Q_reg[63]_0 [45]),
        .I1(\Q_reg_n_0_[45] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [45]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[46]_i_1__2 
       (.I0(\Q_reg_n_0_[46] ),
        .I1(\Q_reg[63]_0 [46]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [46]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[46]_i_1__3 
       (.I0(\Q_reg[63]_0 [46]),
        .I1(\Q_reg_n_0_[46] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [46]));
  LUT5 #(
    .INIT(32'hFAA08EE8)) 
    \Q[46]_i_3__0 
       (.I0(A_S_C[44]),
        .I1(\Q_reg[51]_0 [16]),
        .I2(\Q_reg[0]_3 ),
        .I3(\Q_reg[54]_1 [44]),
        .I4(\Q_reg[0]_rep ),
        .O(\Q_reg[54]_0 [24]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[47]_i_10__0 
       (.I0(\Q_reg[54]_1 [42]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B082_out ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[47]_i_12 
       (.I0(\Q_reg[54]_1 [43]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B084_out ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[47]_i_1__2 
       (.I0(\Q_reg_n_0_[47] ),
        .I1(\Q_reg[63]_0 [47]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [47]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[47]_i_1__3 
       (.I0(\Q_reg[63]_0 [47]),
        .I1(\Q_reg_n_0_[47] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [47]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[47]_i_3__0 
       (.I0(A_S_C[44]),
        .I1(S_A_S_Oper_A[42]),
        .I2(\Add_Subt_Sgf_module/Data_B086_out ),
        .I3(S_A_S_Oper_A[43]),
        .I4(\Add_Subt_Sgf_module/Data_B088_out ),
        .O(\Q_reg[54]_0 [25]));
  LUT6 #(
    .INIT(64'h00000000EEEE00E0)) 
    \Q[47]_i_4 
       (.I0(\Q[54]_i_18_n_0 ),
        .I1(\Q_reg[0]_1 ),
        .I2(FSM_selector_C),
        .I3(\Q_reg[0]_0 ),
        .I4(out),
        .I5(\FSM_sequential_state_reg_reg[2] ),
        .O(\Q_reg[43]_1 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[47]_i_4__0 
       (.I0(A_S_C[42]),
        .I1(S_A_S_Oper_A[40]),
        .I2(\Add_Subt_Sgf_module/Data_B082_out ),
        .I3(S_A_S_Oper_A[41]),
        .I4(\Add_Subt_Sgf_module/Data_B084_out ),
        .O(A_S_C[44]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[47]_i_6__0 
       (.I0(\Q_reg[54]_1 [44]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B086_out ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[47]_i_8__0 
       (.I0(\Q_reg[54]_1 [45]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B088_out ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[48]_i_1__2 
       (.I0(\Q_reg_n_0_[48] ),
        .I1(\Q_reg[63]_0 [48]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [48]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[48]_i_1__3 
       (.I0(\Q_reg[63]_0 [48]),
        .I1(\Q_reg_n_0_[48] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [48]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[49]_i_1__2 
       (.I0(\Q_reg_n_0_[49] ),
        .I1(\Q_reg[63]_0 [49]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [49]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[49]_i_1__3 
       (.I0(\Q_reg[63]_0 [49]),
        .I1(\Q_reg_n_0_[49] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [49]));
  LUT5 #(
    .INIT(32'hFAA08EE8)) 
    \Q[49]_i_3__0 
       (.I0(A_S_C[47]),
        .I1(\Q_reg[51]_0 [17]),
        .I2(\Q_reg[0]_3 ),
        .I3(\Q_reg[54]_1 [47]),
        .I4(\Q_reg[0]_rep__0 ),
        .O(\Q_reg[54]_0 [26]));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \Q[49]_i_4__0 
       (.I0(\Q_reg[42]_0 ),
        .I1(\Q[49]_i_6__0_n_0 ),
        .I2(S_A_S_Oper_A[43]),
        .I3(\Add_Subt_Sgf_module/Data_B088_out ),
        .I4(S_A_S_Oper_A[44]),
        .I5(\Add_Subt_Sgf_module/Data_B090_out ),
        .O(A_S_C[47]));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \Q[49]_i_6__0 
       (.I0(A_S_P[8]),
        .I1(\Add_Subt_Sgf_module/Data_B084_out ),
        .I2(S_A_S_Oper_A[41]),
        .I3(\Add_Subt_Sgf_module/Data_B082_out ),
        .I4(S_A_S_Oper_A[40]),
        .I5(A_S_C[42]),
        .O(\Q[49]_i_6__0_n_0 ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[49]_i_8__0 
       (.I0(\Q_reg[54]_1 [46]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B090_out ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[4]_i_1__3 
       (.I0(\Q_reg_n_0_[4] ),
        .I1(\Q_reg[63]_0 [4]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[4]_i_1__4 
       (.I0(\Q_reg[63]_0 [4]),
        .I1(\Q_reg_n_0_[4] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [4]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[50]_i_1__2 
       (.I0(\Q_reg_n_0_[50] ),
        .I1(\Q_reg[63]_0 [50]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [50]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[50]_i_1__3 
       (.I0(\Q_reg[63]_0 [50]),
        .I1(\Q_reg_n_0_[50] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [50]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[51]_i_1__2 
       (.I0(\Q_reg_n_0_[51] ),
        .I1(\Q_reg[63]_0 [51]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [51]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[51]_i_1__3 
       (.I0(\Q_reg[63]_0 [51]),
        .I1(\Q_reg_n_0_[51] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [51]));
  LUT5 #(
    .INIT(32'hFAA08EE8)) 
    \Q[51]_i_3__0 
       (.I0(A_S_C[49]),
        .I1(\Q_reg[51]_0 [18]),
        .I2(\Q_reg[0]_3 ),
        .I3(\Q_reg[54]_1 [49]),
        .I4(\Q_reg[0]_rep__0 ),
        .O(\Q_reg[54]_0 [27]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \Q[52]_i_1 
       (.I0(\Q_reg[20]_0 ),
        .I1(S_Shift_Value[5]),
        .I2(\Q_reg[4]_0 [0]),
        .I3(\Q_reg[43]_0 ),
        .I4(\Data_array[6]_1 [1]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[52]_i_10__0 
       (.I0(\Q_reg[54]_1 [47]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B092_out ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[52]_i_12 
       (.I0(\Q_reg[54]_1 [48]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B094_out ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[52]_i_13 
       (.I0(\Q_reg[32]_0 ),
        .I1(S_Shift_Value[1]),
        .I2(\Q_reg[1]_4 ),
        .I3(S_Shift_Value[0]),
        .I4(\Q_reg[2]_2 ),
        .O(\Q_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[52]_i_1__2 
       (.I0(\Q_reg_n_0_[52] ),
        .I1(\Q_reg[63]_0 [52]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [52]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[52]_i_1__3 
       (.I0(\Q_reg[63]_0 [52]),
        .I1(\Q_reg_n_0_[52] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [52]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[52]_i_2 
       (.I0(\Q_reg[43]_1 ),
        .I1(\Q_reg[44]_0 ),
        .I2(S_Shift_Value[4]),
        .I3(\Q_reg[2]_1 [1]),
        .I4(S_Shift_Value[3]),
        .I5(\Q_reg[2]_1 [0]),
        .O(\Q_reg[20]_0 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[52]_i_3__0 
       (.I0(A_S_C[49]),
        .I1(S_A_S_Oper_A[47]),
        .I2(\Add_Subt_Sgf_module/Data_B096_out ),
        .I3(S_A_S_Oper_A[48]),
        .I4(\Add_Subt_Sgf_module/Data_B098_out ),
        .O(\Q_reg[54]_0 [28]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[52]_i_4__0 
       (.I0(A_S_C[47]),
        .I1(S_A_S_Oper_A[45]),
        .I2(\Add_Subt_Sgf_module/Data_B092_out ),
        .I3(S_A_S_Oper_A[46]),
        .I4(\Add_Subt_Sgf_module/Data_B094_out ),
        .O(A_S_C[49]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[52]_i_5 
       (.I0(\Q_reg[43]_1 ),
        .I1(\Q_reg[32]_0 ),
        .I2(S_Shift_Value[2]),
        .I3(\Q_reg[0]_2 [1]),
        .I4(S_Shift_Value[1]),
        .I5(\Q_reg[0]_2 [0]),
        .O(\Q_reg[44]_0 ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[52]_i_6__0 
       (.I0(\Q_reg[54]_1 [49]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B096_out ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[52]_i_8__0 
       (.I0(\Q_reg[54]_1 [50]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B098_out ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[53]_i_1__2 
       (.I0(\Q_reg_n_0_[53] ),
        .I1(\Q_reg[63]_0 [53]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [53]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[53]_i_1__3 
       (.I0(\Q_reg[63]_0 [53]),
        .I1(\Q_reg_n_0_[53] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [53]));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \Q[54]_i_18 
       (.I0(A_S_P[10]),
        .I1(\Add_Subt_Sgf_module/Data_B0104_out ),
        .I2(S_A_S_Oper_A[51]),
        .I3(\Add_Subt_Sgf_module/Data_B0102_out ),
        .I4(S_A_S_Oper_A[50]),
        .I5(A_S_C[52]),
        .O(\Q[54]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_1__2 
       (.I0(\Q_reg_n_0_[54] ),
        .I1(\Q_reg[63]_0 [54]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [54]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_1__3 
       (.I0(\Q_reg[63]_0 [54]),
        .I1(\Q_reg_n_0_[54] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [54]));
  LUT5 #(
    .INIT(32'hFAA08EE8)) 
    \Q[54]_i_4 
       (.I0(A_S_C[52]),
        .I1(\Q_reg[51]_0 [19]),
        .I2(\Q_reg[0]_3 ),
        .I3(\Q_reg[54]_1 [52]),
        .I4(\Q_reg[0]_rep__0 ),
        .O(\Q_reg[54]_0 [29]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[54]_i_49 
       (.I0(\Q_reg[54]_1 [53]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B0104_out ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[54]_i_51 
       (.I0(\Q_reg[54]_1 [52]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B0102_out ));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \Q[54]_i_5__0 
       (.I0(\Q_reg[47]_0 ),
        .I1(\Q[54]_i_7__0_n_0 ),
        .I2(S_A_S_Oper_A[48]),
        .I3(\Add_Subt_Sgf_module/Data_B098_out ),
        .I4(S_A_S_Oper_A[49]),
        .I5(\Add_Subt_Sgf_module/Data_B0100_out ),
        .O(A_S_C[52]));
  LUT6 #(
    .INIT(64'h0000000044440004)) 
    \Q[54]_i_6 
       (.I0(\FSM_sequential_state_reg_reg[1] ),
        .I1(FSM_selector_C),
        .I2(\Q_reg[0]_1 ),
        .I3(\Q[54]_i_18_n_0 ),
        .I4(\Q_reg[0]_0 ),
        .I5(\FSM_sequential_state_reg_reg[3] ),
        .O(\Q_reg[43]_0 ));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \Q[54]_i_7__0 
       (.I0(A_S_P[9]),
        .I1(\Add_Subt_Sgf_module/Data_B094_out ),
        .I2(S_A_S_Oper_A[46]),
        .I3(\Add_Subt_Sgf_module/Data_B092_out ),
        .I4(S_A_S_Oper_A[45]),
        .I5(A_S_C[47]),
        .O(\Q[54]_i_7__0_n_0 ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[54]_i_9__0 
       (.I0(\Q_reg[54]_1 [51]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B0100_out ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[55]_i_1__0 
       (.I0(\Q_reg_n_0_[55] ),
        .I1(\Q_reg[63]_0 [55]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [55]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[55]_i_1__1 
       (.I0(\Q_reg[63]_0 [55]),
        .I1(\Q_reg_n_0_[55] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [55]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[56]_i_1__0 
       (.I0(\Q_reg_n_0_[56] ),
        .I1(\Q_reg[63]_0 [56]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [56]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[56]_i_1__1 
       (.I0(\Q_reg[63]_0 [56]),
        .I1(\Q_reg_n_0_[56] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [56]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[57]_i_1__0 
       (.I0(\Q_reg_n_0_[57] ),
        .I1(\Q_reg[63]_0 [57]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [57]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[57]_i_1__1 
       (.I0(\Q_reg[63]_0 [57]),
        .I1(\Q_reg_n_0_[57] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [57]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[58]_i_1__0 
       (.I0(\Q_reg_n_0_[58] ),
        .I1(\Q_reg[63]_0 [58]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [58]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[58]_i_1__1 
       (.I0(\Q_reg[63]_0 [58]),
        .I1(\Q_reg_n_0_[58] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [58]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[59]_i_1__0 
       (.I0(\Q_reg_n_0_[59] ),
        .I1(\Q_reg[63]_0 [59]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [59]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[59]_i_1__1 
       (.I0(\Q_reg[63]_0 [59]),
        .I1(\Q_reg_n_0_[59] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [59]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[5]_i_1__3 
       (.I0(\Q_reg_n_0_[5] ),
        .I1(\Q_reg[63]_0 [5]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[5]_i_1__4 
       (.I0(\Q_reg[63]_0 [5]),
        .I1(\Q_reg_n_0_[5] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [5]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[60]_i_1__0 
       (.I0(\Q_reg_n_0_[60] ),
        .I1(\Q_reg[63]_0 [60]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [60]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[60]_i_1__1 
       (.I0(\Q_reg[63]_0 [60]),
        .I1(\Q_reg_n_0_[60] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [60]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[61]_i_1__0 
       (.I0(\Q_reg_n_0_[61] ),
        .I1(\Q_reg[63]_0 [61]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [61]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[61]_i_1__1 
       (.I0(\Q_reg[63]_0 [61]),
        .I1(\Q_reg_n_0_[61] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [61]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[62]_i_1__1 
       (.I0(\Q_reg[1]_2 [0]),
        .I1(\Q_reg[63]_0 [62]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [62]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[62]_i_1__2 
       (.I0(\Q_reg[63]_0 [62]),
        .I1(\Q_reg[1]_2 [0]),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [62]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[6]_i_1__2 
       (.I0(\Q_reg_n_0_[6] ),
        .I1(\Q_reg[63]_0 [6]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[6]_i_1__3 
       (.I0(\Q_reg[63]_0 [6]),
        .I1(\Q_reg_n_0_[6] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [6]));
  LUT5 #(
    .INIT(32'hFAA08EE8)) 
    \Q[6]_i_3 
       (.I0(A_S_C[4]),
        .I1(\Q_reg[51]_0 [0]),
        .I2(\Q_reg[0]_3 ),
        .I3(\Q_reg[54]_1 [4]),
        .I4(\Q_reg[0]_rep ),
        .O(\Q_reg[54]_0 [0]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[7]_i_11 
       (.I0(\Q_reg[54]_1 [2]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B02_out ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[7]_i_13 
       (.I0(\Q_reg[54]_1 [3]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B04_out ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[7]_i_1__2 
       (.I0(\Q_reg_n_0_[7] ),
        .I1(\Q_reg[63]_0 [7]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[7]_i_1__3 
       (.I0(\Q_reg[63]_0 [7]),
        .I1(\Q_reg_n_0_[7] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [7]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[7]_i_3 
       (.I0(A_S_C[4]),
        .I1(S_A_S_Oper_A[2]),
        .I2(\Add_Subt_Sgf_module/Data_B06_out ),
        .I3(S_A_S_Oper_A[3]),
        .I4(\Add_Subt_Sgf_module/Data_B08_out ),
        .O(\Q_reg[54]_0 [1]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[7]_i_4 
       (.I0(\Q_reg[0]_4 ),
        .I1(S_A_S_Oper_A[0]),
        .I2(\Add_Subt_Sgf_module/Data_B02_out ),
        .I3(S_A_S_Oper_A[1]),
        .I4(\Add_Subt_Sgf_module/Data_B04_out ),
        .O(A_S_C[4]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[7]_i_6 
       (.I0(\Q_reg[54]_1 [4]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B06_out ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[7]_i_8 
       (.I0(\Q_reg[54]_1 [5]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B08_out ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[8]_i_1__2 
       (.I0(\Q_reg_n_0_[8] ),
        .I1(\Q_reg[63]_0 [8]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[8]_i_1__3 
       (.I0(\Q_reg[63]_0 [8]),
        .I1(\Q_reg_n_0_[8] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [8]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[9]_i_1__2 
       (.I0(\Q_reg_n_0_[9] ),
        .I1(\Q_reg[63]_0 [9]),
        .I2(gtXY),
        .O(\Q_reg[62]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[9]_i_1__3 
       (.I0(\Q_reg[63]_0 [9]),
        .I1(\Q_reg_n_0_[9] ),
        .I2(gtXY),
        .O(\Q_reg[62]_1 [9]));
  LUT5 #(
    .INIT(32'hFAA08EE8)) 
    \Q[9]_i_3 
       (.I0(A_S_C[7]),
        .I1(\Q_reg[51]_0 [1]),
        .I2(\Q_reg[0]_3 ),
        .I3(\Q_reg[54]_1 [7]),
        .I4(\Q_reg[0]_rep ),
        .O(\Q_reg[54]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \Q[9]_i_4 
       (.I0(\Q_reg[2]_3 ),
        .I1(\Q[9]_i_6_n_0 ),
        .I2(S_A_S_Oper_A[3]),
        .I3(\Add_Subt_Sgf_module/Data_B08_out ),
        .I4(S_A_S_Oper_A[4]),
        .I5(\Add_Subt_Sgf_module/Data_B010_out ),
        .O(A_S_C[7]));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \Q[9]_i_6 
       (.I0(A_S_P[0]),
        .I1(\Add_Subt_Sgf_module/Data_B04_out ),
        .I2(S_A_S_Oper_A[1]),
        .I3(\Add_Subt_Sgf_module/Data_B02_out ),
        .I4(S_A_S_Oper_A[0]),
        .I5(\Q_reg[0]_4 ),
        .O(\Q[9]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[9]_i_8 
       (.I0(\Q_reg[54]_1 [6]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[1]_2 [1]),
        .I3(\Q_reg[63]_0 [63]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B010_out ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(AR[0]),
        .D(\Data_X[63] [0]),
        .Q(\Q_reg_n_0_[0] ));
  CARRY4 \Q_reg[0]_i_16 
       (.CI(\Q_reg[0]_i_30_n_0 ),
        .CO({\Q_reg[0]_i_16_n_0 ,\Q_reg[0]_i_16_n_1 ,\Q_reg[0]_i_16_n_2 ,\Q_reg[0]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Q_reg[0]_i_16_O_UNCONNECTED [3:0]),
        .S({\Q[0]_i_31_n_0 ,\Q[0]_i_32_n_0 ,\Q[0]_i_33_n_0 ,\Q[0]_i_34_n_0 }));
  CARRY4 \Q_reg[0]_i_21 
       (.CI(\Q_reg[0]_i_35_n_0 ),
        .CO({\Q_reg[0]_i_21_n_0 ,\Q_reg[0]_i_21_n_1 ,\Q_reg[0]_i_21_n_2 ,\Q_reg[0]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q[0]_i_36_n_0 ,\Q[0]_i_37_n_0 ,\Q[0]_i_38_n_0 ,\Q[0]_i_39_n_0 }),
        .O(\NLW_Q_reg[0]_i_21_O_UNCONNECTED [3:0]),
        .S({\Q[0]_i_40_n_0 ,\Q[0]_i_41_n_0 ,\Q[0]_i_42_n_0 ,\Q[0]_i_43_n_0 }));
  CARRY4 \Q_reg[0]_i_3 
       (.CI(\Q_reg[0]_i_5_n_0 ),
        .CO({\NLW_Q_reg[0]_i_3_CO_UNCONNECTED [3:1],CO}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Q_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\Q[0]_i_6__0_n_0 }));
  CARRY4 \Q_reg[0]_i_30 
       (.CI(\Q_reg[0]_i_44_n_0 ),
        .CO({\Q_reg[0]_i_30_n_0 ,\Q_reg[0]_i_30_n_1 ,\Q_reg[0]_i_30_n_2 ,\Q_reg[0]_i_30_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Q_reg[0]_i_30_O_UNCONNECTED [3:0]),
        .S({\Q[0]_i_45_n_0 ,\Q[0]_i_46_n_0 ,\Q[0]_i_47_n_0 ,\Q[0]_i_48_n_0 }));
  CARRY4 \Q_reg[0]_i_35 
       (.CI(\Q_reg[0]_i_49_n_0 ),
        .CO({\Q_reg[0]_i_35_n_0 ,\Q_reg[0]_i_35_n_1 ,\Q_reg[0]_i_35_n_2 ,\Q_reg[0]_i_35_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q[0]_i_50_n_0 ,\Q[0]_i_51_n_0 ,\Q[0]_i_52_n_0 ,\Q[0]_i_53_n_0 }),
        .O(\NLW_Q_reg[0]_i_35_O_UNCONNECTED [3:0]),
        .S({\Q[0]_i_54_n_0 ,\Q[0]_i_55_n_0 ,\Q[0]_i_56_n_0 ,\Q[0]_i_57_n_0 }));
  CARRY4 \Q_reg[0]_i_4 
       (.CI(\Q_reg[0]_i_7_n_0 ),
        .CO({gtXY,\Q_reg[0]_i_4_n_1 ,\Q_reg[0]_i_4_n_2 ,\Q_reg[0]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q[0]_i_8__0_n_0 ,\Q[0]_i_9__0_n_0 ,\Q[0]_i_10__0_n_0 ,\Q[0]_i_11__0_n_0 }),
        .O(\NLW_Q_reg[0]_i_4_O_UNCONNECTED [3:0]),
        .S({S,\Q[0]_i_13__0_n_0 ,\Q[0]_i_14_n_0 ,\Q[0]_i_15__0_n_0 }));
  CARRY4 \Q_reg[0]_i_44 
       (.CI(\Q_reg[0]_i_58_n_0 ),
        .CO({\Q_reg[0]_i_44_n_0 ,\Q_reg[0]_i_44_n_1 ,\Q_reg[0]_i_44_n_2 ,\Q_reg[0]_i_44_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Q_reg[0]_i_44_O_UNCONNECTED [3:0]),
        .S({\Q[0]_i_59_n_0 ,\Q[0]_i_60_n_0 ,\Q[0]_i_61_n_0 ,\Q[0]_i_62_n_0 }));
  CARRY4 \Q_reg[0]_i_49 
       (.CI(\Q_reg[0]_i_63_n_0 ),
        .CO({\Q_reg[0]_i_49_n_0 ,\Q_reg[0]_i_49_n_1 ,\Q_reg[0]_i_49_n_2 ,\Q_reg[0]_i_49_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q[0]_i_64_n_0 ,\Q[0]_i_65_n_0 ,\Q[0]_i_66_n_0 ,\Q[0]_i_67_n_0 }),
        .O(\NLW_Q_reg[0]_i_49_O_UNCONNECTED [3:0]),
        .S({\Q[0]_i_68_n_0 ,\Q[0]_i_69_n_0 ,\Q[0]_i_70_n_0 ,\Q[0]_i_71_n_0 }));
  CARRY4 \Q_reg[0]_i_5 
       (.CI(\Q_reg[0]_i_16_n_0 ),
        .CO({\Q_reg[0]_i_5_n_0 ,\Q_reg[0]_i_5_n_1 ,\Q_reg[0]_i_5_n_2 ,\Q_reg[0]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Q_reg[0]_i_5_O_UNCONNECTED [3:0]),
        .S({\Q[0]_i_17__0_n_0 ,\Q[0]_i_18__0_n_0 ,\Q[0]_i_19__0_n_0 ,\Q[0]_i_20__0_n_0 }));
  CARRY4 \Q_reg[0]_i_58 
       (.CI(1'b0),
        .CO({\Q_reg[0]_i_58_n_0 ,\Q_reg[0]_i_58_n_1 ,\Q_reg[0]_i_58_n_2 ,\Q_reg[0]_i_58_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Q_reg[0]_i_58_O_UNCONNECTED [3:0]),
        .S({\Q[0]_i_72_n_0 ,\Q[0]_i_73_n_0 ,\Q[0]_i_74_n_0 ,\Q[0]_i_75_n_0 }));
  CARRY4 \Q_reg[0]_i_63 
       (.CI(\Q_reg[0]_i_76_n_0 ),
        .CO({\Q_reg[0]_i_63_n_0 ,\Q_reg[0]_i_63_n_1 ,\Q_reg[0]_i_63_n_2 ,\Q_reg[0]_i_63_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q[0]_i_77_n_0 ,\Q[0]_i_78_n_0 ,\Q[0]_i_79_n_0 ,\Q[0]_i_80_n_0 }),
        .O(\NLW_Q_reg[0]_i_63_O_UNCONNECTED [3:0]),
        .S({\Q[0]_i_81_n_0 ,\Q[0]_i_82_n_0 ,\Q[0]_i_83_n_0 ,\Q[0]_i_84_n_0 }));
  CARRY4 \Q_reg[0]_i_7 
       (.CI(\Q_reg[0]_i_21_n_0 ),
        .CO({\Q_reg[0]_i_7_n_0 ,\Q_reg[0]_i_7_n_1 ,\Q_reg[0]_i_7_n_2 ,\Q_reg[0]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q[0]_i_22_n_0 ,\Q[0]_i_23_n_0 ,\Q[0]_i_24_n_0 ,\Q[0]_i_25_n_0 }),
        .O(\NLW_Q_reg[0]_i_7_O_UNCONNECTED [3:0]),
        .S({\Q[0]_i_26_n_0 ,\Q[0]_i_27_n_0 ,\Q[0]_i_28_n_0 ,\Q[0]_i_29_n_0 }));
  CARRY4 \Q_reg[0]_i_76 
       (.CI(\Q_reg[0]_i_85_n_0 ),
        .CO({\Q_reg[0]_i_76_n_0 ,\Q_reg[0]_i_76_n_1 ,\Q_reg[0]_i_76_n_2 ,\Q_reg[0]_i_76_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q[0]_i_86_n_0 ,\Q[0]_i_87_n_0 ,\Q[0]_i_88_n_0 ,\Q[0]_i_89_n_0 }),
        .O(\NLW_Q_reg[0]_i_76_O_UNCONNECTED [3:0]),
        .S({\Q[0]_i_90_n_0 ,\Q[0]_i_91_n_0 ,\Q[0]_i_92_n_0 ,\Q[0]_i_93_n_0 }));
  CARRY4 \Q_reg[0]_i_85 
       (.CI(1'b0),
        .CO({\Q_reg[0]_i_85_n_0 ,\Q_reg[0]_i_85_n_1 ,\Q_reg[0]_i_85_n_2 ,\Q_reg[0]_i_85_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q[0]_i_94_n_0 ,\Q[0]_i_95_n_0 ,\Q[0]_i_96_n_0 ,\Q[0]_i_97_n_0 }),
        .O(\NLW_Q_reg[0]_i_85_O_UNCONNECTED [3:0]),
        .S({\Q[0]_i_98_n_0 ,\Q[0]_i_99_n_0 ,\Q[0]_i_100_n_0 ,\Q[0]_i_101_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(AR[0]),
        .D(\Data_X[63] [10]),
        .Q(\Q_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(AR[0]),
        .D(\Data_X[63] [11]),
        .Q(\Q_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [12]),
        .Q(\Q_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [13]),
        .Q(\Q_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [14]),
        .Q(\Q_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [15]),
        .Q(\Q_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [16]),
        .Q(\Q_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [17]),
        .Q(\Q_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [18]),
        .Q(\Q_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [19]),
        .Q(\Q_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(AR[0]),
        .D(\Data_X[63] [1]),
        .Q(\Q_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [20]),
        .Q(\Q_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [21]),
        .Q(\Q_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [22]),
        .Q(\Q_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [23]),
        .Q(\Q_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [24]),
        .Q(\Q_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [25]),
        .Q(\Q_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [26]),
        .Q(\Q_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [27]),
        .Q(\Q_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [28]),
        .Q(\Q_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [29]),
        .Q(\Q_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(AR[0]),
        .D(\Data_X[63] [2]),
        .Q(\Q_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [30]),
        .Q(\Q_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [31]),
        .Q(\Q_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [32]),
        .Q(\Q_reg_n_0_[32] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [33]),
        .Q(\Q_reg_n_0_[33] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [34]),
        .Q(\Q_reg_n_0_[34] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [35]),
        .Q(\Q_reg_n_0_[35] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [36]),
        .Q(\Q_reg_n_0_[36] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [37]),
        .Q(\Q_reg_n_0_[37] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [38]),
        .Q(\Q_reg_n_0_[38] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [39]),
        .Q(\Q_reg_n_0_[39] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(AR[0]),
        .D(\Data_X[63] [3]),
        .Q(\Q_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [40]),
        .Q(\Q_reg_n_0_[40] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [41]),
        .Q(\Q_reg_n_0_[41] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [42]),
        .Q(\Q_reg_n_0_[42] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [43]),
        .Q(\Q_reg_n_0_[43] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [44]),
        .Q(\Q_reg_n_0_[44] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [45]),
        .Q(\Q_reg_n_0_[45] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [46]),
        .Q(\Q_reg_n_0_[46] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [47]),
        .Q(\Q_reg_n_0_[47] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [48]),
        .Q(\Q_reg_n_0_[48] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [49]),
        .Q(\Q_reg_n_0_[49] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(AR[0]),
        .D(\Data_X[63] [4]),
        .Q(\Q_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [50]),
        .Q(\Q_reg_n_0_[50] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [51]),
        .Q(\Q_reg_n_0_[51] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [52]),
        .Q(\Q_reg_n_0_[52] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [53]),
        .Q(\Q_reg_n_0_[53] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [54]),
        .Q(\Q_reg_n_0_[54] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [55]),
        .Q(\Q_reg_n_0_[55] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [56]),
        .Q(\Q_reg_n_0_[56] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [57]),
        .Q(\Q_reg_n_0_[57] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [58]),
        .Q(\Q_reg_n_0_[58] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [59]),
        .Q(\Q_reg_n_0_[59] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(AR[0]),
        .D(\Data_X[63] [5]),
        .Q(\Q_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [60]),
        .Q(\Q_reg_n_0_[60] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [61]),
        .Q(\Q_reg_n_0_[61] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(\FSM_sequential_state_reg_reg[3]_1 ),
        .D(\Data_X[63] [62]),
        .Q(\Q_reg[1]_2 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(AR[1]),
        .D(\Data_X[63] [63]),
        .Q(\Q_reg[1]_2 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(AR[0]),
        .D(\Data_X[63] [6]),
        .Q(\Q_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(AR[0]),
        .D(\Data_X[63] [7]),
        .Q(\Q_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(AR[0]),
        .D(\Data_X[63] [8]),
        .Q(\Q_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3]_0 ),
        .CLR(AR[0]),
        .D(\Data_X[63] [9]),
        .Q(\Q_reg_n_0_[9] ));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized2
   (S,
    Q,
    \Q_reg[62]_0 ,
    \FSM_sequential_state_reg_reg[3] ,
    \Data_Y[63] ,
    clk_IBUF_BUFG,
    AR,
    \FSM_sequential_state_reg_reg[3]_0 );
  output [0:0]S;
  output [63:0]Q;
  input [0:0]\Q_reg[62]_0 ;
  input [0:0]\FSM_sequential_state_reg_reg[3] ;
  input [63:0]\Data_Y[63] ;
  input clk_IBUF_BUFG;
  input [1:0]AR;
  input [0:0]\FSM_sequential_state_reg_reg[3]_0 ;

  wire [1:0]AR;
  wire [63:0]\Data_Y[63] ;
  wire [0:0]\FSM_sequential_state_reg_reg[3] ;
  wire [0:0]\FSM_sequential_state_reg_reg[3]_0 ;
  wire [63:0]Q;
  wire [0:0]\Q_reg[62]_0 ;
  wire [0:0]S;
  wire clk_IBUF_BUFG;

  LUT2 #(
    .INIT(4'h9)) 
    \Q[0]_i_12__0 
       (.I0(Q[62]),
        .I1(\Q_reg[62]_0 ),
        .O(S));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Data_Y[63] [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Data_Y[63] [10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Data_Y[63] [11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Data_Y[63] [12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Data_Y[63] [13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Data_Y[63] [14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Data_Y[63] [15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Data_Y[63] [16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Data_Y[63] [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [27]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [28]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [29]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Data_Y[63] [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [30]),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [31]),
        .Q(Q[31]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [32]),
        .Q(Q[32]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [33]),
        .Q(Q[33]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [34]),
        .Q(Q[34]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [35]),
        .Q(Q[35]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [36]),
        .Q(Q[36]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [37]),
        .Q(Q[37]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [38]),
        .Q(Q[38]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [39]),
        .Q(Q[39]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Data_Y[63] [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [40]),
        .Q(Q[40]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [41]),
        .Q(Q[41]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [42]),
        .Q(Q[42]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [43]),
        .Q(Q[43]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [44]),
        .Q(Q[44]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [45]),
        .Q(Q[45]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [46]),
        .Q(Q[46]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [47]),
        .Q(Q[47]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [48]),
        .Q(Q[48]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [49]),
        .Q(Q[49]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Data_Y[63] [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [50]),
        .Q(Q[50]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [51]),
        .Q(Q[51]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [52]),
        .Q(Q[52]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [53]),
        .Q(Q[53]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [54]),
        .Q(Q[54]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [55]),
        .Q(Q[55]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [56]),
        .Q(Q[56]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [57]),
        .Q(Q[57]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [58]),
        .Q(Q[58]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [59]),
        .Q(Q[59]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Data_Y[63] [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [60]),
        .Q(Q[60]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [61]),
        .Q(Q[61]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(\FSM_sequential_state_reg_reg[3]_0 ),
        .D(\Data_Y[63] [62]),
        .Q(Q[62]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(\Data_Y[63] [63]),
        .Q(Q[63]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Data_Y[63] [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Data_Y[63] [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Data_Y[63] [8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(\Data_Y[63] [9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized3
   (\Q_reg[5]_0 ,
    Q,
    \Q_reg[49]_0 ,
    \Q_reg[52]_0 ,
    \Q_reg[9]_0 ,
    \Q_reg[14]_0 ,
    \Q_reg[19]_0 ,
    \Q_reg[24]_0 ,
    \Q_reg[29]_0 ,
    \Q_reg[34]_0 ,
    \Q_reg[39]_0 ,
    \Q_reg[44]_0 ,
    \Q_reg[49]_1 ,
    \Q_reg[54]_0 ,
    \Q_reg[54]_1 ,
    \Q_reg[0]_0 ,
    \Q_reg[0]_1 ,
    \Q_reg[53]_0 ,
    \Q_reg[0]_rep__0 ,
    \Q_reg[0]_2 ,
    A_S_C,
    \Q_reg[51]_0 ,
    \Q_reg[0]_rep ,
    intAS,
    \Q_reg[63] ,
    \Q_reg[63]_0 ,
    FSM_selector_D,
    E,
    D,
    clk_IBUF_BUFG,
    AR);
  output [5:0]\Q_reg[5]_0 ;
  output [62:0]Q;
  output [9:0]\Q_reg[49]_0 ;
  output [29:0]\Q_reg[52]_0 ;
  output \Q_reg[9]_0 ;
  output \Q_reg[14]_0 ;
  output \Q_reg[19]_0 ;
  output \Q_reg[24]_0 ;
  output \Q_reg[29]_0 ;
  output \Q_reg[34]_0 ;
  output \Q_reg[39]_0 ;
  output \Q_reg[44]_0 ;
  output \Q_reg[49]_1 ;
  output \Q_reg[54]_0 ;
  input [1:0]\Q_reg[54]_1 ;
  input [0:0]\Q_reg[0]_0 ;
  input \Q_reg[0]_1 ;
  input [50:0]\Q_reg[53]_0 ;
  input \Q_reg[0]_rep__0 ;
  input [0:0]\Q_reg[0]_2 ;
  input [29:0]A_S_C;
  input \Q_reg[51]_0 ;
  input \Q_reg[0]_rep ;
  input intAS;
  input [0:0]\Q_reg[63] ;
  input [0:0]\Q_reg[63]_0 ;
  input FSM_selector_D;
  input [0:0]E;
  input [62:0]D;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [29:0]A_S_C;
  wire [52:6]A_S_P;
  wire [62:0]D;
  wire [0:0]E;
  wire FSM_selector_D;
  wire [53:3]\Leading_Zero_Anticipator_Module/Comb_to_Codec ;
  wire [62:0]Q;
  wire \Q[0]_i_10_n_0 ;
  wire \Q[0]_i_11_n_0 ;
  wire \Q[0]_i_12_n_0 ;
  wire \Q[0]_i_13_n_0 ;
  wire \Q[0]_i_14__0_n_0 ;
  wire \Q[0]_i_15_n_0 ;
  wire \Q[0]_i_17_n_0 ;
  wire \Q[0]_i_18_n_0 ;
  wire \Q[0]_i_19_n_0 ;
  wire \Q[0]_i_20_n_0 ;
  wire \Q[0]_i_21_n_0 ;
  wire \Q[0]_i_22__0_n_0 ;
  wire \Q[0]_i_2__0_n_0 ;
  wire \Q[0]_i_4_n_0 ;
  wire \Q[0]_i_5_n_0 ;
  wire \Q[0]_i_6_n_0 ;
  wire \Q[0]_i_7_n_0 ;
  wire \Q[0]_i_9_n_0 ;
  wire \Q[1]_i_10_n_0 ;
  wire \Q[1]_i_11_n_0 ;
  wire \Q[1]_i_12_n_0 ;
  wire \Q[1]_i_13_n_0 ;
  wire \Q[1]_i_14_n_0 ;
  wire \Q[1]_i_15_n_0 ;
  wire \Q[1]_i_17_n_0 ;
  wire \Q[1]_i_19_n_0 ;
  wire \Q[1]_i_2__0_n_0 ;
  wire \Q[1]_i_3_n_0 ;
  wire \Q[1]_i_5_n_0 ;
  wire \Q[1]_i_6_n_0 ;
  wire \Q[1]_i_7_n_0 ;
  wire \Q[1]_i_8_n_0 ;
  wire \Q[1]_i_9_n_0 ;
  wire \Q[2]_i_12_n_0 ;
  wire \Q[2]_i_13_n_0 ;
  wire \Q[2]_i_14_n_0 ;
  wire \Q[2]_i_15_n_0 ;
  wire \Q[2]_i_16_n_0 ;
  wire \Q[2]_i_17_n_0 ;
  wire \Q[2]_i_18_n_0 ;
  wire \Q[2]_i_19_n_0 ;
  wire \Q[2]_i_20_n_0 ;
  wire \Q[2]_i_21_n_0 ;
  wire \Q[2]_i_4_n_0 ;
  wire \Q[2]_i_6_n_0 ;
  wire \Q[2]_i_7_n_0 ;
  wire \Q[2]_i_8_n_0 ;
  wire \Q[2]_i_9_n_0 ;
  wire \Q[3]_i_10_n_0 ;
  wire \Q[3]_i_11_n_0 ;
  wire \Q[3]_i_16_n_0 ;
  wire \Q[3]_i_17_n_0 ;
  wire \Q[3]_i_22_n_0 ;
  wire \Q[3]_i_23_n_0 ;
  wire \Q[3]_i_24_n_0 ;
  wire \Q[3]_i_27_n_0 ;
  wire \Q[3]_i_2_n_0 ;
  wire \Q[3]_i_30_n_0 ;
  wire \Q[3]_i_3_n_0 ;
  wire \Q[3]_i_4__0_n_0 ;
  wire \Q[3]_i_5_n_0 ;
  wire \Q[3]_i_7_n_0 ;
  wire \Q[3]_i_8_n_0 ;
  wire \Q[4]_i_2_n_0 ;
  wire \Q[4]_i_3_n_0 ;
  wire \Q[4]_i_4_n_0 ;
  wire \Q[4]_i_5_n_0 ;
  wire \Q[4]_i_6_n_0 ;
  wire \Q[4]_i_7_n_0 ;
  wire \Q[5]_i_13_n_0 ;
  wire \Q[5]_i_27_n_0 ;
  wire \Q[5]_i_3_n_0 ;
  wire \Q[5]_i_4_n_0 ;
  wire \Q[5]_i_5_n_0 ;
  wire \Q[5]_i_6_n_0 ;
  wire \Q[5]_i_7_n_0 ;
  wire \Q[5]_i_8_n_0 ;
  wire [0:0]\Q_reg[0]_0 ;
  wire \Q_reg[0]_1 ;
  wire [0:0]\Q_reg[0]_2 ;
  wire \Q_reg[0]_rep ;
  wire \Q_reg[0]_rep__0 ;
  wire \Q_reg[14]_0 ;
  wire \Q_reg[19]_0 ;
  wire \Q_reg[24]_0 ;
  wire \Q_reg[29]_0 ;
  wire \Q_reg[34]_0 ;
  wire \Q_reg[39]_0 ;
  wire \Q_reg[44]_0 ;
  wire [9:0]\Q_reg[49]_0 ;
  wire \Q_reg[49]_1 ;
  wire \Q_reg[51]_0 ;
  wire [29:0]\Q_reg[52]_0 ;
  wire [50:0]\Q_reg[53]_0 ;
  wire \Q_reg[54]_0 ;
  wire [1:0]\Q_reg[54]_1 ;
  wire [5:0]\Q_reg[5]_0 ;
  wire [0:0]\Q_reg[63] ;
  wire [0:0]\Q_reg[63]_0 ;
  wire \Q_reg[9]_0 ;
  wire clk_IBUF_BUFG;
  wire intAS;

  LUT5 #(
    .INIT(32'hFEAAAAAA)) 
    \Q[0]_i_10 
       (.I0(\Q[0]_i_13_n_0 ),
        .I1(\Q[0]_i_14__0_n_0 ),
        .I2(\Q[0]_i_15_n_0 ),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [20]),
        .I4(\Q[0]_i_17_n_0 ),
        .O(\Q[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2F0FFF0F)) 
    \Q[0]_i_11 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [30]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [29]),
        .I2(\Leading_Zero_Anticipator_Module/Comb_to_Codec [33]),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [32]),
        .I4(\Leading_Zero_Anticipator_Module/Comb_to_Codec [31]),
        .I5(\Q[0]_i_18_n_0 ),
        .O(\Q[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Q[0]_i_12 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [45]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [47]),
        .O(\Q[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2F0FFF0F)) 
    \Q[0]_i_13 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [20]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [19]),
        .I2(\Leading_Zero_Anticipator_Module/Comb_to_Codec [23]),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [22]),
        .I4(\Leading_Zero_Anticipator_Module/Comb_to_Codec [21]),
        .I5(\Q[0]_i_19_n_0 ),
        .O(\Q[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000088080000)) 
    \Q[0]_i_14__0 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [10]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [12]),
        .I2(\Leading_Zero_Anticipator_Module/Comb_to_Codec [7]),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [6]),
        .I4(\Leading_Zero_Anticipator_Module/Comb_to_Codec [8]),
        .I5(\Q[0]_i_20_n_0 ),
        .O(\Q[0]_i_14__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2F0FFF0F)) 
    \Q[0]_i_15 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [10]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [9]),
        .I2(\Leading_Zero_Anticipator_Module/Comb_to_Codec [13]),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [12]),
        .I4(\Leading_Zero_Anticipator_Module/Comb_to_Codec [11]),
        .I5(\Q[0]_i_21_n_0 ),
        .O(\Q[0]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h0C84CFED)) 
    \Q[0]_i_16 
       (.I0(Q[18]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[53]_0 [17]),
        .I3(\Q_reg[0]_rep__0 ),
        .I4(A_S_C[9]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [20]));
  LUT6 #(
    .INIT(64'h8088888800880088)) 
    \Q[0]_i_17 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [18]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [22]),
        .I2(\Leading_Zero_Anticipator_Module/Comb_to_Codec [14]),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [17]),
        .I4(\Leading_Zero_Anticipator_Module/Comb_to_Codec [15]),
        .I5(\Leading_Zero_Anticipator_Module/Comb_to_Codec [16]),
        .O(\Q[0]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Q[0]_i_18 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [35]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [37]),
        .O(\Q[0]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \Q[0]_i_19 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [25]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [27]),
        .O(\Q[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80808000)) 
    \Q[0]_i_1__1 
       (.I0(\Q_reg[54]_1 [1]),
        .I1(\Q[0]_i_2__0_n_0 ),
        .I2(\Leading_Zero_Anticipator_Module/Comb_to_Codec [50]),
        .I3(\Q[0]_i_4_n_0 ),
        .I4(\Q[0]_i_5_n_0 ),
        .I5(\Q[0]_i_6_n_0 ),
        .O(\Q_reg[5]_0 [0]));
  LUT6 #(
    .INIT(64'h3313000011110000)) 
    \Q[0]_i_20 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [4]),
        .I1(\Q[0]_i_22__0_n_0 ),
        .I2(\Q_reg[0]_0 ),
        .I3(\Q_reg[54]_1 [0]),
        .I4(\Leading_Zero_Anticipator_Module/Comb_to_Codec [7]),
        .I5(\Leading_Zero_Anticipator_Module/Comb_to_Codec [3]),
        .O(\Q[0]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Q[0]_i_21 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [15]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [17]),
        .O(\Q[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h800810418C001144)) 
    \Q[0]_i_22__0 
       (.I0(A_S_P[6]),
        .I1(A_S_C[0]),
        .I2(\Q_reg[0]_rep__0 ),
        .I3(\Q_reg[53]_0 [2]),
        .I4(\Q_reg[0]_1 ),
        .I5(Q[3]),
        .O(\Q[0]_i_22__0_n_0 ));
  LUT6 #(
    .INIT(64'h8088888800880088)) 
    \Q[0]_i_2__0 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [48]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [52]),
        .I2(\Leading_Zero_Anticipator_Module/Comb_to_Codec [44]),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [47]),
        .I4(\Leading_Zero_Anticipator_Module/Comb_to_Codec [45]),
        .I5(\Leading_Zero_Anticipator_Module/Comb_to_Codec [46]),
        .O(\Q[0]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h0C84CFED)) 
    \Q[0]_i_3__0 
       (.I0(Q[48]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[53]_0 [47]),
        .I3(\Q_reg[0]_rep__0 ),
        .I4(A_S_C[27]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [50]));
  LUT6 #(
    .INIT(64'h8888888880000000)) 
    \Q[0]_i_4 
       (.I0(\Q[0]_i_7_n_0 ),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [40]),
        .I2(\Q[0]_i_9_n_0 ),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [30]),
        .I4(\Q[0]_i_10_n_0 ),
        .I5(\Q[0]_i_11_n_0 ),
        .O(\Q[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2F0FFF0F)) 
    \Q[0]_i_5 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [40]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [39]),
        .I2(\Leading_Zero_Anticipator_Module/Comb_to_Codec [43]),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [42]),
        .I4(\Leading_Zero_Anticipator_Module/Comb_to_Codec [41]),
        .I5(\Q[0]_i_12_n_0 ),
        .O(\Q[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h7555F5F5)) 
    \Q[0]_i_6 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [53]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [49]),
        .I2(\Leading_Zero_Anticipator_Module/Comb_to_Codec [52]),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [50]),
        .I4(\Leading_Zero_Anticipator_Module/Comb_to_Codec [51]),
        .O(\Q[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8088888800880088)) 
    \Q[0]_i_7 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [38]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [42]),
        .I2(\Leading_Zero_Anticipator_Module/Comb_to_Codec [34]),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [37]),
        .I4(\Leading_Zero_Anticipator_Module/Comb_to_Codec [35]),
        .I5(\Leading_Zero_Anticipator_Module/Comb_to_Codec [36]),
        .O(\Q[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0C84CFED)) 
    \Q[0]_i_8 
       (.I0(Q[38]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[53]_0 [37]),
        .I3(\Q_reg[0]_rep__0 ),
        .I4(A_S_C[21]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [40]));
  LUT6 #(
    .INIT(64'h8088888800880088)) 
    \Q[0]_i_9 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [28]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [32]),
        .I2(\Leading_Zero_Anticipator_Module/Comb_to_Codec [24]),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [27]),
        .I4(\Leading_Zero_Anticipator_Module/Comb_to_Codec [25]),
        .I5(\Leading_Zero_Anticipator_Module/Comb_to_Codec [26]),
        .O(\Q[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[11]_i_1__1 
       (.I0(A_S_P[11]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[53]_0 [7]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[8]),
        .I5(A_S_C[3]),
        .O(\Q_reg[52]_0 [4]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[11]_i_2 
       (.I0(Q[9]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[53]_0 [8]),
        .O(A_S_P[11]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[12]_i_1__0 
       (.I0(A_S_P[12]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[53]_0 [8]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[9]),
        .I5(A_S_C[4]),
        .O(\Q_reg[52]_0 [5]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[12]_i_2 
       (.I0(Q[10]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[53]_0 [9]),
        .O(A_S_P[12]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[14]_i_1__0 
       (.I0(\Q_reg[49]_0 [2]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[53]_0 [10]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[11]),
        .I5(A_S_C[5]),
        .O(\Q_reg[52]_0 [6]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[14]_i_2 
       (.I0(Q[12]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[53]_0 [11]),
        .O(\Q_reg[49]_0 [2]));
  LUT6 #(
    .INIT(64'h0000288200008228)) 
    \Q[14]_i_5 
       (.I0(Q[7]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[53]_0 [6]),
        .O(\Q_reg[14]_0 ));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[16]_i_1__0 
       (.I0(A_S_P[16]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[53]_0 [12]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[13]),
        .I5(A_S_C[6]),
        .O(\Q_reg[52]_0 [7]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[16]_i_2 
       (.I0(Q[14]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[53]_0 [13]),
        .O(A_S_P[16]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[17]_i_1__0 
       (.I0(A_S_P[17]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[53]_0 [13]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[14]),
        .I5(A_S_C[7]),
        .O(\Q_reg[52]_0 [8]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[17]_i_2 
       (.I0(Q[15]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(\Q_reg[0]_rep ),
        .I5(\Q_reg[53]_0 [14]),
        .O(A_S_P[17]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[19]_i_1__0 
       (.I0(\Q_reg[49]_0 [3]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[53]_0 [15]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[16]),
        .I5(A_S_C[8]),
        .O(\Q_reg[52]_0 [9]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[19]_i_2 
       (.I0(Q[17]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(\Q_reg[0]_rep ),
        .I5(\Q_reg[53]_0 [16]),
        .O(\Q_reg[49]_0 [3]));
  LUT6 #(
    .INIT(64'h0000288200008228)) 
    \Q[19]_i_5 
       (.I0(Q[12]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[53]_0 [11]),
        .O(\Q_reg[19]_0 ));
  LUT6 #(
    .INIT(64'hABAFFFFFFFFFFFFF)) 
    \Q[1]_i_10 
       (.I0(\Q[1]_i_15_n_0 ),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [12]),
        .I2(\Q[2]_i_20_n_0 ),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [11]),
        .I4(\Leading_Zero_Anticipator_Module/Comb_to_Codec [15]),
        .I5(\Leading_Zero_Anticipator_Module/Comb_to_Codec [16]),
        .O(\Q[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000EC00)) 
    \Q[1]_i_11 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [6]),
        .I1(\Q[1]_i_17_n_0 ),
        .I2(\Leading_Zero_Anticipator_Module/Comb_to_Codec [5]),
        .I3(\Q[1]_i_19_n_0 ),
        .I4(\Q[2]_i_21_n_0 ),
        .I5(\Q[2]_i_20_n_0 ),
        .O(\Q[1]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00005450)) 
    \Q[1]_i_12 
       (.I0(\Q[3]_i_30_n_0 ),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [18]),
        .I2(\Q[1]_i_15_n_0 ),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [17]),
        .I4(\Q[2]_i_18_n_0 ),
        .O(\Q[1]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00005450)) 
    \Q[1]_i_13 
       (.I0(\Q[4]_i_5_n_0 ),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [30]),
        .I2(\Q[1]_i_14_n_0 ),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [29]),
        .I4(\Q[2]_i_16_n_0 ),
        .O(\Q[1]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Q[1]_i_14 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [31]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [32]),
        .O(\Q[1]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Q[1]_i_15 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [19]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [20]),
        .O(\Q[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAA04BA05BE45BF55)) 
    \Q[1]_i_16 
       (.I0(A_S_P[6]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [2]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[3]),
        .I5(A_S_C[0]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [6]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Q[1]_i_17 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [7]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [8]),
        .O(\Q[1]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h0C84CFED)) 
    \Q[1]_i_18 
       (.I0(Q[3]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[53]_0 [2]),
        .I3(\Q_reg[0]_rep__0 ),
        .I4(A_S_C[0]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [5]));
  LUT5 #(
    .INIT(32'hF8FFFFFF)) 
    \Q[1]_i_19 
       (.I0(\Q_reg[0]_0 ),
        .I1(\Q_reg[54]_1 [0]),
        .I2(\Q[3]_i_17_n_0 ),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [3]),
        .I4(\Leading_Zero_Anticipator_Module/Comb_to_Codec [4]),
        .O(\Q[1]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \Q[1]_i_1__4 
       (.I0(\Q[1]_i_2__0_n_0 ),
        .I1(\Q[1]_i_3_n_0 ),
        .I2(\Q_reg[51]_0 ),
        .O(\Q_reg[5]_0 [1]));
  LUT6 #(
    .INIT(64'h0000545000000000)) 
    \Q[1]_i_2__0 
       (.I0(\Q[1]_i_5_n_0 ),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [41]),
        .I2(\Q[1]_i_6_n_0 ),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [42]),
        .I4(\Q[2]_i_14_n_0 ),
        .I5(\Q[1]_i_7_n_0 ),
        .O(\Q[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h777F77FF)) 
    \Q[1]_i_3 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [52]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [51]),
        .I2(\Leading_Zero_Anticipator_Module/Comb_to_Codec [47]),
        .I3(\Q[2]_i_14_n_0 ),
        .I4(\Leading_Zero_Anticipator_Module/Comb_to_Codec [48]),
        .O(\Q[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAF0F2F8FFFAAAFEE)) 
    \Q[1]_i_5 
       (.I0(A_S_C[24]),
        .I1(Q[43]),
        .I2(\Q_reg[0]_1 ),
        .I3(\Q_reg[53]_0 [42]),
        .I4(\Q_reg[0]_rep__0 ),
        .I5(A_S_P[46]),
        .O(\Q[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Q[1]_i_6 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [43]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [44]),
        .O(\Q[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEAAAAAAAA)) 
    \Q[1]_i_7 
       (.I0(\Q[1]_i_8_n_0 ),
        .I1(\Q[1]_i_9_n_0 ),
        .I2(\Q[1]_i_10_n_0 ),
        .I3(\Q[1]_i_11_n_0 ),
        .I4(\Q[1]_i_12_n_0 ),
        .I5(\Q[1]_i_13_n_0 ),
        .O(\Q[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hABAFFFFFFFFFFFFF)) 
    \Q[1]_i_8 
       (.I0(\Q[1]_i_6_n_0 ),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [36]),
        .I2(\Q[4]_i_5_n_0 ),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [35]),
        .I4(\Leading_Zero_Anticipator_Module/Comb_to_Codec [39]),
        .I5(\Leading_Zero_Anticipator_Module/Comb_to_Codec [40]),
        .O(\Q[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hABAFFFFFFFFFFFFF)) 
    \Q[1]_i_9 
       (.I0(\Q[1]_i_14_n_0 ),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [24]),
        .I2(\Q[3]_i_30_n_0 ),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [23]),
        .I4(\Leading_Zero_Anticipator_Module/Comb_to_Codec [27]),
        .I5(\Leading_Zero_Anticipator_Module/Comb_to_Codec [28]),
        .O(\Q[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[21]_i_1__0 
       (.I0(A_S_P[21]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[53]_0 [17]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[18]),
        .I5(A_S_C[9]),
        .O(\Q_reg[52]_0 [10]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[21]_i_2 
       (.I0(Q[19]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(\Q_reg[0]_rep ),
        .I5(\Q_reg[53]_0 [18]),
        .O(A_S_P[21]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[22]_i_1__0 
       (.I0(A_S_P[22]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[53]_0 [18]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[19]),
        .I5(A_S_C[10]),
        .O(\Q_reg[52]_0 [11]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[22]_i_2 
       (.I0(Q[20]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(\Q_reg[0]_rep ),
        .I5(\Q_reg[53]_0 [19]),
        .O(A_S_P[22]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[24]_i_1__0 
       (.I0(\Q_reg[49]_0 [4]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[53]_0 [20]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[21]),
        .I5(A_S_C[11]),
        .O(\Q_reg[52]_0 [12]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[24]_i_2 
       (.I0(Q[22]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(\Q_reg[0]_rep ),
        .I5(\Q_reg[53]_0 [21]),
        .O(\Q_reg[49]_0 [4]));
  LUT6 #(
    .INIT(64'h0000288200008228)) 
    \Q[24]_i_5 
       (.I0(Q[17]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[53]_0 [16]),
        .O(\Q_reg[24]_0 ));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[26]_i_1__0 
       (.I0(A_S_P[26]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[53]_0 [22]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[23]),
        .I5(A_S_C[12]),
        .O(\Q_reg[52]_0 [13]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[26]_i_2 
       (.I0(Q[24]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(\Q_reg[0]_rep ),
        .I5(\Q_reg[53]_0 [23]),
        .O(A_S_P[26]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[27]_i_1__0 
       (.I0(A_S_P[27]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[53]_0 [23]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[24]),
        .I5(A_S_C[13]),
        .O(\Q_reg[52]_0 [14]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[27]_i_2__0 
       (.I0(Q[25]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(\Q_reg[0]_rep ),
        .I5(\Q_reg[53]_0 [24]),
        .O(A_S_P[27]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[29]_i_1__0 
       (.I0(\Q_reg[49]_0 [5]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[53]_0 [25]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[26]),
        .I5(A_S_C[14]),
        .O(\Q_reg[52]_0 [15]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[29]_i_2__0 
       (.I0(Q[27]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(\Q_reg[0]_rep ),
        .I5(\Q_reg[53]_0 [26]),
        .O(\Q_reg[49]_0 [5]));
  LUT6 #(
    .INIT(64'h0000288200008228)) 
    \Q[29]_i_5 
       (.I0(Q[22]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[53]_0 [21]),
        .O(\Q_reg[29]_0 ));
  LUT6 #(
    .INIT(64'hAA04BA05BE45BF55)) 
    \Q[2]_i_10 
       (.I0(\Q_reg[49]_0 [7]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [35]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[36]),
        .I5(A_S_C[20]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [39]));
  LUT6 #(
    .INIT(64'hAA04BA05BE45BF55)) 
    \Q[2]_i_11 
       (.I0(\Q_reg[49]_0 [6]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [30]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[31]),
        .I5(A_S_C[17]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [34]));
  LUT6 #(
    .INIT(64'h0000000088888880)) 
    \Q[2]_i_12 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [35]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [36]),
        .I2(\Q[2]_i_16_n_0 ),
        .I3(\Q[2]_i_17_n_0 ),
        .I4(\Leading_Zero_Anticipator_Module/Comb_to_Codec [30]),
        .I5(\Q[4]_i_5_n_0 ),
        .O(\Q[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFEFEFEFEFEE)) 
    \Q[2]_i_13 
       (.I0(\Q[5]_i_13_n_0 ),
        .I1(\Q[3]_i_24_n_0 ),
        .I2(\Q[3]_i_23_n_0 ),
        .I3(\Q[3]_i_27_n_0 ),
        .I4(\Q[2]_i_18_n_0 ),
        .I5(\Q[2]_i_19_n_0 ),
        .O(\Q[2]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Q[2]_i_14 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [49]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [50]),
        .O(\Q[2]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \Q[2]_i_15 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [28]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [27]),
        .I2(\Leading_Zero_Anticipator_Module/Comb_to_Codec [31]),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [29]),
        .I4(\Q[3]_i_16_n_0 ),
        .O(\Q[2]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Q[2]_i_16 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [33]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [34]),
        .O(\Q[2]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \Q[2]_i_17 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [32]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [31]),
        .O(\Q[2]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Q[2]_i_18 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [21]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [22]),
        .O(\Q[2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F7F7F7FF)) 
    \Q[2]_i_19 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [12]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [11]),
        .I2(\Q[2]_i_20_n_0 ),
        .I3(\Q[2]_i_21_n_0 ),
        .I4(\Q[3]_i_17_n_0 ),
        .I5(\Q[4]_i_6_n_0 ),
        .O(\Q[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0800080008000000)) 
    \Q[2]_i_1__0 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [52]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [53]),
        .I2(\Q[2]_i_4_n_0 ),
        .I3(\Q_reg[54]_1 [1]),
        .I4(\Q[2]_i_6_n_0 ),
        .I5(\Q[2]_i_7_n_0 ),
        .O(\Q_reg[5]_0 [2]));
  LUT6 #(
    .INIT(64'hAA04BA05BE45BF55)) 
    \Q[2]_i_2 
       (.I0(A_S_P[52]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [48]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[49]),
        .I5(A_S_C[28]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [52]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Q[2]_i_20 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [13]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [14]),
        .O(\Q[2]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \Q[2]_i_21 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [9]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [10]),
        .O(\Q[2]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h0C84CFED)) 
    \Q[2]_i_3 
       (.I0(Q[51]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[53]_0 [50]),
        .I3(\Q_reg[0]_rep__0 ),
        .I4(A_S_C[29]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [53]));
  LUT6 #(
    .INIT(64'h5557555555555555)) 
    \Q[2]_i_4 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [51]),
        .I1(\Q[2]_i_8_n_0 ),
        .I2(\Q[2]_i_9_n_0 ),
        .I3(\Q[3]_i_10_n_0 ),
        .I4(\Leading_Zero_Anticipator_Module/Comb_to_Codec [39]),
        .I5(\Leading_Zero_Anticipator_Module/Comb_to_Codec [34]),
        .O(\Q[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF8FFF)) 
    \Q[2]_i_6 
       (.I0(\Q[2]_i_12_n_0 ),
        .I1(\Q[2]_i_13_n_0 ),
        .I2(\Leading_Zero_Anticipator_Module/Comb_to_Codec [42]),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [41]),
        .I4(\Q[5]_i_27_n_0 ),
        .I5(\Q[3]_i_7_n_0 ),
        .O(\Q[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \Q[2]_i_7 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [48]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [47]),
        .I2(\Q[2]_i_14_n_0 ),
        .O(\Q[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \Q[2]_i_8 
       (.I0(\Q[2]_i_15_n_0 ),
        .I1(\Q[3]_i_22_n_0 ),
        .I2(\Leading_Zero_Anticipator_Module/Comb_to_Codec [4]),
        .I3(\Q[2]_i_7_n_0 ),
        .I4(\Q[4]_i_7_n_0 ),
        .O(\Q[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \Q[2]_i_9 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [3]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [42]),
        .I2(\Leading_Zero_Anticipator_Module/Comb_to_Codec [40]),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [41]),
        .O(\Q[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[31]_i_1__0 
       (.I0(A_S_P[31]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[53]_0 [27]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[28]),
        .I5(A_S_C[15]),
        .O(\Q_reg[52]_0 [16]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[31]_i_2__0 
       (.I0(Q[29]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(\Q_reg[0]_rep ),
        .I5(\Q_reg[53]_0 [28]),
        .O(A_S_P[31]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[32]_i_1__0 
       (.I0(A_S_P[32]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[53]_0 [28]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[29]),
        .I5(A_S_C[16]),
        .O(\Q_reg[52]_0 [17]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[32]_i_2__0 
       (.I0(Q[30]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(\Q_reg[0]_rep ),
        .I5(\Q_reg[53]_0 [29]),
        .O(A_S_P[32]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[34]_i_1__0 
       (.I0(\Q_reg[49]_0 [6]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[53]_0 [30]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[31]),
        .I5(A_S_C[17]),
        .O(\Q_reg[52]_0 [18]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[34]_i_2__0 
       (.I0(Q[32]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(\Q_reg[0]_rep ),
        .I5(\Q_reg[53]_0 [31]),
        .O(\Q_reg[49]_0 [6]));
  LUT6 #(
    .INIT(64'h0000288200008228)) 
    \Q[34]_i_5 
       (.I0(Q[27]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[53]_0 [26]),
        .O(\Q_reg[34]_0 ));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[36]_i_1__0 
       (.I0(A_S_P[36]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[53]_0 [32]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[33]),
        .I5(A_S_C[18]),
        .O(\Q_reg[52]_0 [19]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[36]_i_2__0 
       (.I0(Q[34]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(\Q_reg[0]_rep ),
        .I5(\Q_reg[53]_0 [33]),
        .O(A_S_P[36]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[37]_i_1__0 
       (.I0(A_S_P[37]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[53]_0 [33]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[34]),
        .I5(A_S_C[19]),
        .O(\Q_reg[52]_0 [20]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[37]_i_2__0 
       (.I0(Q[35]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(\Q_reg[0]_rep ),
        .I5(\Q_reg[53]_0 [34]),
        .O(A_S_P[37]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[39]_i_1__0 
       (.I0(\Q_reg[49]_0 [7]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[53]_0 [35]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[36]),
        .I5(A_S_C[20]),
        .O(\Q_reg[52]_0 [21]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[39]_i_2__0 
       (.I0(Q[37]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(\Q_reg[0]_rep ),
        .I5(\Q_reg[53]_0 [36]),
        .O(\Q_reg[49]_0 [7]));
  LUT6 #(
    .INIT(64'h0000288200008228)) 
    \Q[39]_i_5 
       (.I0(Q[32]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[53]_0 [31]),
        .O(\Q_reg[39]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Q[3]_i_10 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [33]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [32]),
        .O(\Q[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000FD)) 
    \Q[3]_i_11 
       (.I0(\Q[4]_i_4_n_0 ),
        .I1(\Q[3]_i_23_n_0 ),
        .I2(\Q[3]_i_16_n_0 ),
        .I3(\Q[5]_i_7_n_0 ),
        .I4(\Q[5]_i_13_n_0 ),
        .I5(\Q[3]_i_24_n_0 ),
        .O(\Q[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAA04BA05BE45BF55)) 
    \Q[3]_i_12 
       (.I0(\Q_reg[49]_0 [4]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [20]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[21]),
        .I5(A_S_C[11]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [24]));
  LUT5 #(
    .INIT(32'h0C84CFED)) 
    \Q[3]_i_13 
       (.I0(Q[21]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[53]_0 [20]),
        .I3(\Q_reg[0]_rep__0 ),
        .I4(A_S_C[11]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [23]));
  LUT6 #(
    .INIT(64'hAA04BA05BE45BF55)) 
    \Q[3]_i_14 
       (.I0(A_S_P[26]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [22]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[23]),
        .I5(A_S_C[12]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [26]));
  LUT5 #(
    .INIT(32'h0C84CFED)) 
    \Q[3]_i_15 
       (.I0(Q[23]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[53]_0 [22]),
        .I3(\Q_reg[0]_rep__0 ),
        .I4(A_S_C[12]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [25]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \Q[3]_i_16 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [21]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [22]),
        .I2(\Q[3]_i_27_n_0 ),
        .O(\Q[3]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Q[3]_i_17 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [8]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [7]),
        .O(\Q[3]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h0C84CFED)) 
    \Q[3]_i_18 
       (.I0(Q[8]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[53]_0 [7]),
        .I3(\Q_reg[0]_rep__0 ),
        .I4(A_S_C[3]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [10]));
  LUT6 #(
    .INIT(64'hAA04BA05BE45BF55)) 
    \Q[3]_i_19 
       (.I0(\Q_reg[49]_0 [1]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [5]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[6]),
        .I5(A_S_C[2]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [9]));
  LUT6 #(
    .INIT(64'h00000000EEEAEEEE)) 
    \Q[3]_i_1__4 
       (.I0(\Q[3]_i_2_n_0 ),
        .I1(\Q[3]_i_3_n_0 ),
        .I2(\Q[3]_i_4__0_n_0 ),
        .I3(\Q[3]_i_5_n_0 ),
        .I4(\Leading_Zero_Anticipator_Module/Comb_to_Codec [30]),
        .I5(\Q[4]_i_2_n_0 ),
        .O(\Q_reg[5]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \Q[3]_i_2 
       (.I0(\Q[3]_i_7_n_0 ),
        .I1(\Q[5]_i_8_n_0 ),
        .O(\Q[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA04BA05BE45BF55)) 
    \Q[3]_i_20 
       (.I0(\Q_reg[49]_0 [0]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [0]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[1]),
        .I5(\Q_reg[0]_2 ),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [4]));
  LUT5 #(
    .INIT(32'h0C84CFED)) 
    \Q[3]_i_21 
       (.I0(Q[1]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[53]_0 [0]),
        .I3(\Q_reg[0]_rep__0 ),
        .I4(\Q_reg[0]_2 ),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [3]));
  LUT6 #(
    .INIT(64'hD44DFFEFDC44FFEE)) 
    \Q[3]_i_22 
       (.I0(A_S_P[6]),
        .I1(A_S_C[0]),
        .I2(\Q_reg[0]_rep__0 ),
        .I3(\Q_reg[53]_0 [2]),
        .I4(\Q_reg[0]_1 ),
        .I5(Q[3]),
        .O(\Q[3]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'hF7)) 
    \Q[3]_i_23 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [24]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [23]),
        .I2(\Q[3]_i_30_n_0 ),
        .O(\Q[3]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \Q[3]_i_24 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [28]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [27]),
        .I2(\Leading_Zero_Anticipator_Module/Comb_to_Codec [29]),
        .O(\Q[3]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAA04BA05BE45BF55)) 
    \Q[3]_i_25 
       (.I0(A_S_P[21]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [17]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[18]),
        .I5(A_S_C[9]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [21]));
  LUT6 #(
    .INIT(64'hAA04BA05BE45BF55)) 
    \Q[3]_i_26 
       (.I0(A_S_P[22]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [18]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[19]),
        .I5(A_S_C[10]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [22]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Q[3]_i_27 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [20]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [19]),
        .O(\Q[3]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h0C84CFED)) 
    \Q[3]_i_28 
       (.I0(Q[6]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[53]_0 [5]),
        .I3(\Q_reg[0]_rep__0 ),
        .I4(A_S_C[2]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [8]));
  LUT6 #(
    .INIT(64'hAA04BA05BE45BF55)) 
    \Q[3]_i_29 
       (.I0(A_S_P[7]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [3]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[4]),
        .I5(A_S_C[1]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [7]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000040)) 
    \Q[3]_i_3 
       (.I0(\Q[3]_i_8_n_0 ),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [31]),
        .I2(\Leading_Zero_Anticipator_Module/Comb_to_Codec [38]),
        .I3(\Q[3]_i_10_n_0 ),
        .I4(\Leading_Zero_Anticipator_Module/Comb_to_Codec [30]),
        .I5(\Q[3]_i_11_n_0 ),
        .O(\Q[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAF0F2F8FFFAAAFEE)) 
    \Q[3]_i_30 
       (.I0(A_S_C[12]),
        .I1(Q[23]),
        .I2(\Q_reg[0]_1 ),
        .I3(\Q_reg[53]_0 [22]),
        .I4(\Q_reg[0]_rep__0 ),
        .I5(A_S_P[26]),
        .O(\Q[3]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAA04BA05BE45BF55)) 
    \Q[3]_i_31 
       (.I0(\Q_reg[49]_0 [3]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [15]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[16]),
        .I5(A_S_C[8]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [19]));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \Q[3]_i_4__0 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [24]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [23]),
        .I2(\Leading_Zero_Anticipator_Module/Comb_to_Codec [26]),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [25]),
        .I4(\Q[3]_i_16_n_0 ),
        .O(\Q[3]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \Q[3]_i_5 
       (.I0(\Q[3]_i_17_n_0 ),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [10]),
        .I2(\Leading_Zero_Anticipator_Module/Comb_to_Codec [9]),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [4]),
        .I4(\Leading_Zero_Anticipator_Module/Comb_to_Codec [3]),
        .I5(\Q[3]_i_22_n_0 ),
        .O(\Q[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0C84CFED)) 
    \Q[3]_i_6__0 
       (.I0(Q[28]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[53]_0 [27]),
        .I3(\Q_reg[0]_rep__0 ),
        .I4(A_S_C[15]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [30]));
  LUT3 #(
    .INIT(8'hF7)) 
    \Q[3]_i_7 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [44]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [43]),
        .I2(\Q[1]_i_5_n_0 ),
        .O(\Q[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \Q[3]_i_8 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [36]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [37]),
        .I2(\Leading_Zero_Anticipator_Module/Comb_to_Codec [34]),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [35]),
        .O(\Q[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAA04BA05BE45BF55)) 
    \Q[3]_i_9 
       (.I0(A_S_P[31]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [27]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[28]),
        .I5(A_S_C[15]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [31]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[41]_i_1__0 
       (.I0(A_S_P[41]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[53]_0 [37]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[38]),
        .I5(A_S_C[21]),
        .O(\Q_reg[52]_0 [22]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[41]_i_2__0 
       (.I0(Q[39]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(\Q_reg[0]_rep ),
        .I5(\Q_reg[53]_0 [38]),
        .O(A_S_P[41]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[42]_i_1__0 
       (.I0(A_S_P[42]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[53]_0 [38]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[39]),
        .I5(A_S_C[22]),
        .O(\Q_reg[52]_0 [23]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[42]_i_2__0 
       (.I0(Q[40]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(\Q_reg[0]_rep ),
        .I5(\Q_reg[53]_0 [39]),
        .O(A_S_P[42]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[44]_i_1__0 
       (.I0(\Q_reg[49]_0 [8]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[53]_0 [40]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[41]),
        .I5(A_S_C[23]),
        .O(\Q_reg[52]_0 [24]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[44]_i_2__0 
       (.I0(Q[42]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(\Q_reg[0]_rep ),
        .I5(\Q_reg[53]_0 [41]),
        .O(\Q_reg[49]_0 [8]));
  LUT6 #(
    .INIT(64'h0000288200008228)) 
    \Q[44]_i_5__0 
       (.I0(Q[37]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[53]_0 [36]),
        .O(\Q_reg[44]_0 ));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[46]_i_1__0 
       (.I0(A_S_P[46]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [42]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[43]),
        .I5(A_S_C[24]),
        .O(\Q_reg[52]_0 [25]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[46]_i_2__0 
       (.I0(Q[44]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(\Q_reg[0]_rep ),
        .I5(\Q_reg[53]_0 [43]),
        .O(A_S_P[46]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[47]_i_1__0 
       (.I0(A_S_P[47]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [43]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[44]),
        .I5(A_S_C[25]),
        .O(\Q_reg[52]_0 [26]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[47]_i_2__0 
       (.I0(Q[45]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(\Q_reg[0]_rep ),
        .I5(\Q_reg[53]_0 [44]),
        .O(A_S_P[47]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[49]_i_1__0 
       (.I0(\Q_reg[49]_0 [9]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [45]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[46]),
        .I5(A_S_C[26]),
        .O(\Q_reg[52]_0 [27]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[49]_i_2__0 
       (.I0(Q[47]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(\Q_reg[0]_rep ),
        .I5(\Q_reg[53]_0 [46]),
        .O(\Q_reg[49]_0 [9]));
  LUT6 #(
    .INIT(64'h0000288200008228)) 
    \Q[49]_i_5__0 
       (.I0(Q[42]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[53]_0 [41]),
        .O(\Q_reg[49]_1 ));
  LUT5 #(
    .INIT(32'h0C84CFED)) 
    \Q[4]_i_10 
       (.I0(Q[13]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[53]_0 [12]),
        .I3(\Q_reg[0]_rep__0 ),
        .I4(A_S_C[6]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [15]));
  LUT6 #(
    .INIT(64'hAA04BA05BE45BF55)) 
    \Q[4]_i_11 
       (.I0(A_S_P[16]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [12]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[13]),
        .I5(A_S_C[6]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [16]));
  LUT6 #(
    .INIT(64'hAA04BA05BE45BF55)) 
    \Q[4]_i_12 
       (.I0(A_S_P[12]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [8]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[9]),
        .I5(A_S_C[4]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [12]));
  LUT6 #(
    .INIT(64'hAA04BA05BE45BF55)) 
    \Q[4]_i_13 
       (.I0(A_S_P[11]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [7]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[8]),
        .I5(A_S_C[3]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [11]));
  LUT5 #(
    .INIT(32'h0C84CFED)) 
    \Q[4]_i_14 
       (.I0(Q[11]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[53]_0 [10]),
        .I3(\Q_reg[0]_rep__0 ),
        .I4(A_S_C[5]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [13]));
  LUT6 #(
    .INIT(64'hAA04BA05BE45BF55)) 
    \Q[4]_i_15 
       (.I0(\Q_reg[49]_0 [2]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [10]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[11]),
        .I5(A_S_C[5]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [14]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \Q[4]_i_1__0 
       (.I0(\Q[5]_i_5_n_0 ),
        .I1(\Q[5]_i_8_n_0 ),
        .I2(\Q[4]_i_2_n_0 ),
        .I3(\Q[4]_i_3_n_0 ),
        .O(\Q_reg[5]_0 [4]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[4]_i_1__1 
       (.I0(\Q_reg[49]_0 [0]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[53]_0 [0]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[1]),
        .I5(\Q_reg[0]_2 ),
        .O(\Q_reg[52]_0 [0]));
  LUT2 #(
    .INIT(4'hE)) 
    \Q[4]_i_2 
       (.I0(\Q[5]_i_3_n_0 ),
        .I1(\Q[5]_i_6_n_0 ),
        .O(\Q[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[4]_i_2__0 
       (.I0(Q[2]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[53]_0 [1]),
        .O(\Q_reg[49]_0 [0]));
  LUT6 #(
    .INIT(64'hFFF1FFFFFFFFFFFF)) 
    \Q[4]_i_3 
       (.I0(\Q[3]_i_5_n_0 ),
        .I1(\Q[4]_i_4_n_0 ),
        .I2(\Q[5]_i_4_n_0 ),
        .I3(\Q[4]_i_5_n_0 ),
        .I4(\Leading_Zero_Anticipator_Module/Comb_to_Codec [35]),
        .I5(\Leading_Zero_Anticipator_Module/Comb_to_Codec [36]),
        .O(\Q[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \Q[4]_i_4 
       (.I0(\Q[4]_i_6_n_0 ),
        .I1(\Q[4]_i_7_n_0 ),
        .O(\Q[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Q[4]_i_5 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [37]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [38]),
        .O(\Q[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \Q[4]_i_6 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [18]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [17]),
        .I2(\Leading_Zero_Anticipator_Module/Comb_to_Codec [15]),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [16]),
        .O(\Q[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \Q[4]_i_7 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [12]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [11]),
        .I2(\Leading_Zero_Anticipator_Module/Comb_to_Codec [13]),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [14]),
        .O(\Q[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0C84CFED)) 
    \Q[4]_i_8 
       (.I0(Q[16]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[53]_0 [15]),
        .I3(\Q_reg[0]_rep__0 ),
        .I4(A_S_C[8]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [18]));
  LUT6 #(
    .INIT(64'hAA04BA05BE45BF55)) 
    \Q[4]_i_9 
       (.I0(A_S_P[17]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [13]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[14]),
        .I5(A_S_C[7]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [17]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[51]_i_1__0 
       (.I0(A_S_P[51]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [47]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[48]),
        .I5(A_S_C[27]),
        .O(\Q_reg[52]_0 [28]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[51]_i_2__0 
       (.I0(Q[49]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(\Q_reg[0]_rep ),
        .I5(\Q_reg[53]_0 [48]),
        .O(A_S_P[51]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[52]_i_1__0 
       (.I0(A_S_P[52]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [48]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[49]),
        .I5(A_S_C[28]),
        .O(\Q_reg[52]_0 [29]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[52]_i_2__0 
       (.I0(Q[50]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(\Q_reg[0]_rep ),
        .I5(\Q_reg[53]_0 [49]),
        .O(A_S_P[52]));
  LUT6 #(
    .INIT(64'h0000288200008228)) 
    \Q[54]_i_6__0 
       (.I0(Q[47]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[53]_0 [46]),
        .O(\Q_reg[54]_0 ));
  LUT5 #(
    .INIT(32'h0C84CFED)) 
    \Q[5]_i_10 
       (.I0(Q[26]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[53]_0 [25]),
        .I3(\Q_reg[0]_rep__0 ),
        .I4(A_S_C[14]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [28]));
  LUT6 #(
    .INIT(64'hAA04BA05BE45BF55)) 
    \Q[5]_i_11 
       (.I0(A_S_P[27]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [23]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[24]),
        .I5(A_S_C[13]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [27]));
  LUT6 #(
    .INIT(64'hAA04BA05BE45BF55)) 
    \Q[5]_i_12 
       (.I0(\Q_reg[49]_0 [5]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [25]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[26]),
        .I5(A_S_C[14]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [29]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \Q[5]_i_13 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [33]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [34]),
        .I2(\Leading_Zero_Anticipator_Module/Comb_to_Codec [31]),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [32]),
        .O(\Q[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAA04BA05BE45BF55)) 
    \Q[5]_i_14 
       (.I0(\Q_reg[49]_0 [8]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [40]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[41]),
        .I5(A_S_C[23]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [44]));
  LUT5 #(
    .INIT(32'h0C84CFED)) 
    \Q[5]_i_15 
       (.I0(Q[41]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[53]_0 [40]),
        .I3(\Q_reg[0]_rep__0 ),
        .I4(A_S_C[23]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [43]));
  LUT5 #(
    .INIT(32'h0C84CFED)) 
    \Q[5]_i_16 
       (.I0(Q[43]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[53]_0 [42]),
        .I3(\Q_reg[0]_rep__0 ),
        .I4(A_S_C[24]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [45]));
  LUT6 #(
    .INIT(64'hAA04BA05BE45BF55)) 
    \Q[5]_i_17 
       (.I0(A_S_P[46]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [42]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[43]),
        .I5(A_S_C[24]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [46]));
  LUT5 #(
    .INIT(32'h0C84CFED)) 
    \Q[5]_i_18 
       (.I0(Q[46]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[53]_0 [45]),
        .I3(\Q_reg[0]_rep__0 ),
        .I4(A_S_C[26]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [48]));
  LUT6 #(
    .INIT(64'hAA04BA05BE45BF55)) 
    \Q[5]_i_19 
       (.I0(A_S_P[47]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [43]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[44]),
        .I5(A_S_C[25]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [47]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \Q[5]_i_2 
       (.I0(\Q[5]_i_3_n_0 ),
        .I1(\Q[5]_i_4_n_0 ),
        .I2(\Q[5]_i_5_n_0 ),
        .I3(\Q[5]_i_6_n_0 ),
        .I4(\Q[5]_i_7_n_0 ),
        .I5(\Q[5]_i_8_n_0 ),
        .O(\Q_reg[5]_0 [5]));
  LUT6 #(
    .INIT(64'hAA04BA05BE45BF55)) 
    \Q[5]_i_20 
       (.I0(\Q_reg[49]_0 [9]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [45]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[46]),
        .I5(A_S_C[26]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [49]));
  LUT6 #(
    .INIT(64'hAA04BA05BE45BF55)) 
    \Q[5]_i_21 
       (.I0(A_S_P[37]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [33]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[34]),
        .I5(A_S_C[19]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [37]));
  LUT5 #(
    .INIT(32'h0C84CFED)) 
    \Q[5]_i_22 
       (.I0(Q[36]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[53]_0 [35]),
        .I3(\Q_reg[0]_rep__0 ),
        .I4(A_S_C[20]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [38]));
  LUT5 #(
    .INIT(32'h0C84CFED)) 
    \Q[5]_i_23 
       (.I0(Q[33]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[53]_0 [32]),
        .I3(\Q_reg[0]_rep__0 ),
        .I4(A_S_C[18]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [35]));
  LUT6 #(
    .INIT(64'hAA04BA05BE45BF55)) 
    \Q[5]_i_24 
       (.I0(A_S_P[36]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [32]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[33]),
        .I5(A_S_C[18]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [36]));
  LUT6 #(
    .INIT(64'hAA04BA05BE45BF55)) 
    \Q[5]_i_25 
       (.I0(A_S_P[41]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [37]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[38]),
        .I5(A_S_C[21]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [41]));
  LUT6 #(
    .INIT(64'hAA04BA05BE45BF55)) 
    \Q[5]_i_26 
       (.I0(A_S_P[42]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [38]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[39]),
        .I5(A_S_C[22]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [42]));
  LUT2 #(
    .INIT(4'h7)) 
    \Q[5]_i_27 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [40]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [39]),
        .O(\Q[5]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h0C84CFED)) 
    \Q[5]_i_28 
       (.I0(Q[31]),
        .I1(\Q_reg[0]_1 ),
        .I2(\Q_reg[53]_0 [30]),
        .I3(\Q_reg[0]_rep__0 ),
        .I4(A_S_C[17]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [33]));
  LUT6 #(
    .INIT(64'hAA04BA05BE45BF55)) 
    \Q[5]_i_29 
       (.I0(A_S_P[32]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [28]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[29]),
        .I5(A_S_C[16]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [32]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \Q[5]_i_3 
       (.I0(\Q_reg[51]_0 ),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [51]),
        .I2(\Leading_Zero_Anticipator_Module/Comb_to_Codec [52]),
        .O(\Q[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \Q[5]_i_4 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [28]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [27]),
        .I2(\Leading_Zero_Anticipator_Module/Comb_to_Codec [29]),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [30]),
        .I4(\Q[5]_i_13_n_0 ),
        .I5(\Q[3]_i_4__0_n_0 ),
        .O(\Q[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \Q[5]_i_5 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [44]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [43]),
        .I2(\Leading_Zero_Anticipator_Module/Comb_to_Codec [45]),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [46]),
        .O(\Q[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \Q[5]_i_6 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [48]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [47]),
        .I2(\Leading_Zero_Anticipator_Module/Comb_to_Codec [49]),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [50]),
        .O(\Q[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \Q[5]_i_7 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [37]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [38]),
        .I2(\Leading_Zero_Anticipator_Module/Comb_to_Codec [35]),
        .I3(\Leading_Zero_Anticipator_Module/Comb_to_Codec [36]),
        .O(\Q[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \Q[5]_i_8 
       (.I0(\Leading_Zero_Anticipator_Module/Comb_to_Codec [41]),
        .I1(\Leading_Zero_Anticipator_Module/Comb_to_Codec [42]),
        .I2(\Q[5]_i_27_n_0 ),
        .O(\Q[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAA04BA05BE45BF55)) 
    \Q[5]_i_9 
       (.I0(A_S_P[51]),
        .I1(\Q_reg[0]_rep__0 ),
        .I2(\Q_reg[53]_0 [47]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[48]),
        .I5(A_S_C[27]),
        .O(\Leading_Zero_Anticipator_Module/Comb_to_Codec [51]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[6]_i_1__0 
       (.I0(A_S_P[6]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[53]_0 [2]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[3]),
        .I5(A_S_C[0]),
        .O(\Q_reg[52]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[6]_i_2 
       (.I0(Q[4]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[53]_0 [3]),
        .O(A_S_P[6]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[7]_i_1__0 
       (.I0(A_S_P[7]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[53]_0 [3]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[4]),
        .I5(A_S_C[1]),
        .O(\Q_reg[52]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[7]_i_2__0 
       (.I0(Q[5]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[53]_0 [4]),
        .O(A_S_P[7]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[9]_i_1__0 
       (.I0(\Q_reg[49]_0 [1]),
        .I1(\Q_reg[0]_rep ),
        .I2(\Q_reg[53]_0 [5]),
        .I3(\Q_reg[0]_1 ),
        .I4(Q[6]),
        .I5(A_S_C[2]),
        .O(\Q_reg[52]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[9]_i_2 
       (.I0(Q[7]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[53]_0 [6]),
        .O(\Q_reg[49]_0 [1]));
  LUT6 #(
    .INIT(64'h0000288200008228)) 
    \Q[9]_i_5 
       (.I0(Q[2]),
        .I1(intAS),
        .I2(\Q_reg[63] ),
        .I3(\Q_reg[63]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[53]_0 [1]),
        .O(\Q_reg[9]_0 ));
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
    \Q_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[32]),
        .Q(Q[32]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[33]),
        .Q(Q[33]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[34]),
        .Q(Q[34]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[35]),
        .Q(Q[35]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[36]),
        .Q(Q[36]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[37]),
        .Q(Q[37]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[38]),
        .Q(Q[38]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[39]),
        .Q(Q[39]));
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
    \Q_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[40]),
        .Q(Q[40]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[41]),
        .Q(Q[41]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[42]),
        .Q(Q[42]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[43]),
        .Q(Q[43]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[44]),
        .Q(Q[44]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[45]),
        .Q(Q[45]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[46]),
        .Q(Q[46]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[47]),
        .Q(Q[47]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[48]),
        .Q(Q[48]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[49]),
        .Q(Q[49]));
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
    \Q_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[50]),
        .Q(Q[50]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[51]),
        .Q(Q[51]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[52]),
        .Q(Q[52]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[53]),
        .Q(Q[53]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[54]),
        .Q(Q[54]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[55]),
        .Q(Q[55]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[56]),
        .Q(Q[56]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[57]),
        .Q(Q[57]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[58]),
        .Q(Q[58]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[59]),
        .Q(Q[59]));
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
    \Q_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[60]),
        .Q(Q[60]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[61]),
        .Q(Q[61]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[62]),
        .Q(Q[62]));
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
module RegisterAdd__parameterized4
   (D,
    \Q_reg[27]_0 ,
    \Q_reg[37]_0 ,
    \Q_reg[37]_1 ,
    \Q_reg[10]_0 ,
    FSM_barrel_shifter_B_S,
    S_Shift_Value,
    \Q_reg[0]_0 ,
    Q,
    \Q_reg[0]_1 ,
    FSM_selector_C,
    \Q_reg[27]_1 ,
    E,
    \Q_reg[62]_0 ,
    clk_IBUF_BUFG,
    AR);
  output [0:0]D;
  output [0:0]\Q_reg[27]_0 ;
  output [2:0]\Q_reg[37]_0 ;
  output [1:0]\Q_reg[37]_1 ;
  output [62:0]\Q_reg[10]_0 ;
  input FSM_barrel_shifter_B_S;
  input [5:0]S_Shift_Value;
  input [0:0]\Q_reg[0]_0 ;
  input [49:0]Q;
  input \Q_reg[0]_1 ;
  input FSM_selector_C;
  input [0:0]\Q_reg[27]_1 ;
  input [0:0]E;
  input [62:0]\Q_reg[62]_0 ;
  input clk_IBUF_BUFG;
  input [3:0]AR;

  wire [3:0]AR;
  wire [50:28]\Barrel_Shifter_module/Mux_Array/Data_array[0] ;
  wire [43:27]\Barrel_Shifter_module/Mux_Array/Data_array[2] ;
  wire [27:27]\Barrel_Shifter_module/Mux_Array/Data_array[4] ;
  wire [0:0]D;
  wire [0:0]E;
  wire FSM_barrel_shifter_B_S;
  wire FSM_selector_C;
  wire [49:0]Q;
  wire [0:0]\Q_reg[0]_0 ;
  wire \Q_reg[0]_1 ;
  wire [62:0]\Q_reg[10]_0 ;
  wire [0:0]\Q_reg[27]_0 ;
  wire [0:0]\Q_reg[27]_1 ;
  wire [2:0]\Q_reg[37]_0 ;
  wire [1:0]\Q_reg[37]_1 ;
  wire [62:0]\Q_reg[62]_0 ;
  wire [5:0]S_Shift_Value;
  wire clk_IBUF_BUFG;

  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[27]_i_1 
       (.I0(FSM_barrel_shifter_B_S),
        .I1(S_Shift_Value[5]),
        .I2(\Q_reg[27]_0 ),
        .I3(S_Shift_Value[4]),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[4] ),
        .O(D));
  LUT6 #(
    .INIT(64'hAFA0AFA0CFCFC0C0)) 
    \Q[27]_i_10 
       (.I0(Q[13]),
        .I1(\Q_reg[10]_0 [13]),
        .I2(\Q_reg[0]_1 ),
        .I3(Q[36]),
        .I4(\Q_reg[10]_0 [37]),
        .I5(FSM_selector_C),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [39]));
  LUT6 #(
    .INIT(64'hAFA0AFA0CFCFC0C0)) 
    \Q[27]_i_11 
       (.I0(Q[14]),
        .I1(\Q_reg[10]_0 [14]),
        .I2(\Q_reg[0]_1 ),
        .I3(Q[35]),
        .I4(\Q_reg[10]_0 [36]),
        .I5(FSM_selector_C),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [38]));
  LUT6 #(
    .INIT(64'hAFA0AFA0CFCFC0C0)) 
    \Q[27]_i_12 
       (.I0(Q[15]),
        .I1(\Q_reg[10]_0 [15]),
        .I2(\Q_reg[0]_1 ),
        .I3(Q[34]),
        .I4(\Q_reg[10]_0 [35]),
        .I5(FSM_selector_C),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [37]));
  LUT6 #(
    .INIT(64'hAFA0AFA0CFCFC0C0)) 
    \Q[27]_i_13 
       (.I0(Q[16]),
        .I1(\Q_reg[10]_0 [16]),
        .I2(\Q_reg[0]_1 ),
        .I3(Q[33]),
        .I4(\Q_reg[10]_0 [34]),
        .I5(FSM_selector_C),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [36]));
  LUT6 #(
    .INIT(64'hAFA0AFA0CFCFC0C0)) 
    \Q[27]_i_14 
       (.I0(Q[17]),
        .I1(\Q_reg[10]_0 [17]),
        .I2(\Q_reg[0]_1 ),
        .I3(Q[32]),
        .I4(\Q_reg[10]_0 [33]),
        .I5(FSM_selector_C),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [35]));
  LUT6 #(
    .INIT(64'hAFA0AFA0CFCFC0C0)) 
    \Q[27]_i_15 
       (.I0(Q[18]),
        .I1(\Q_reg[10]_0 [18]),
        .I2(\Q_reg[0]_1 ),
        .I3(Q[31]),
        .I4(\Q_reg[10]_0 [32]),
        .I5(FSM_selector_C),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [34]));
  LUT6 #(
    .INIT(64'hAFA0AFA0CFCFC0C0)) 
    \Q[27]_i_16 
       (.I0(Q[19]),
        .I1(\Q_reg[10]_0 [19]),
        .I2(\Q_reg[0]_1 ),
        .I3(Q[30]),
        .I4(\Q_reg[10]_0 [31]),
        .I5(FSM_selector_C),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [33]));
  LUT6 #(
    .INIT(64'hAFA0AFA0CFCFC0C0)) 
    \Q[27]_i_17 
       (.I0(Q[20]),
        .I1(\Q_reg[10]_0 [20]),
        .I2(\Q_reg[0]_1 ),
        .I3(Q[29]),
        .I4(\Q_reg[10]_0 [30]),
        .I5(FSM_selector_C),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [32]));
  LUT6 #(
    .INIT(64'hAFA0AFA0CFCFC0C0)) 
    \Q[27]_i_18 
       (.I0(Q[21]),
        .I1(\Q_reg[10]_0 [21]),
        .I2(\Q_reg[0]_1 ),
        .I3(Q[28]),
        .I4(\Q_reg[10]_0 [29]),
        .I5(FSM_selector_C),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [31]));
  LUT6 #(
    .INIT(64'hAFA0AFA0CFCFC0C0)) 
    \Q[27]_i_19 
       (.I0(Q[22]),
        .I1(\Q_reg[10]_0 [22]),
        .I2(\Q_reg[0]_1 ),
        .I3(Q[27]),
        .I4(\Q_reg[10]_0 [28]),
        .I5(FSM_selector_C),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[27]_i_2 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[2] [39]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[2] [35]),
        .I2(S_Shift_Value[3]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[2] [31]),
        .I4(S_Shift_Value[2]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[2] [27]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[4] ));
  LUT6 #(
    .INIT(64'hAFA0AFA0CFCFC0C0)) 
    \Q[27]_i_20 
       (.I0(Q[23]),
        .I1(\Q_reg[10]_0 [23]),
        .I2(\Q_reg[0]_1 ),
        .I3(Q[26]),
        .I4(\Q_reg[10]_0 [27]),
        .I5(FSM_selector_C),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [29]));
  LUT6 #(
    .INIT(64'hAFA0AFA0CFCFC0C0)) 
    \Q[27]_i_21 
       (.I0(Q[24]),
        .I1(\Q_reg[10]_0 [24]),
        .I2(\Q_reg[0]_1 ),
        .I3(Q[25]),
        .I4(\Q_reg[10]_0 [26]),
        .I5(FSM_selector_C),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[27]_i_3 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [42]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[0] [41]),
        .I2(S_Shift_Value[1]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[0] [40]),
        .I4(S_Shift_Value[0]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [39]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [39]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[27]_i_4 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [38]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[0] [37]),
        .I2(S_Shift_Value[1]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[0] [36]),
        .I4(S_Shift_Value[0]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [35]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [35]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[27]_i_5 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [34]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[0] [33]),
        .I2(S_Shift_Value[1]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[0] [32]),
        .I4(S_Shift_Value[0]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [31]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[27]_i_6 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [30]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[0] [29]),
        .I2(S_Shift_Value[1]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[0] [28]),
        .I4(S_Shift_Value[0]),
        .I5(\Q_reg[27]_1 ),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [27]));
  LUT6 #(
    .INIT(64'hAFA0AFA0CFCFC0C0)) 
    \Q[27]_i_7 
       (.I0(Q[10]),
        .I1(\Q_reg[10]_0 [10]),
        .I2(\Q_reg[0]_1 ),
        .I3(Q[39]),
        .I4(\Q_reg[10]_0 [40]),
        .I5(FSM_selector_C),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [42]));
  LUT6 #(
    .INIT(64'hAFA0AFA0CFCFC0C0)) 
    \Q[27]_i_8 
       (.I0(Q[11]),
        .I1(\Q_reg[10]_0 [11]),
        .I2(\Q_reg[0]_1 ),
        .I3(Q[38]),
        .I4(\Q_reg[10]_0 [39]),
        .I5(FSM_selector_C),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [41]));
  LUT6 #(
    .INIT(64'hAFA0AFA0CFCFC0C0)) 
    \Q[27]_i_9 
       (.I0(Q[12]),
        .I1(\Q_reg[10]_0 [12]),
        .I2(\Q_reg[0]_1 ),
        .I3(Q[37]),
        .I4(\Q_reg[10]_0 [38]),
        .I5(FSM_selector_C),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [40]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[37]_i_5 
       (.I0(\Q_reg[37]_1 [1]),
        .I1(\Q_reg[37]_1 [0]),
        .I2(S_Shift_Value[1]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[0] [50]),
        .I4(S_Shift_Value[0]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [49]),
        .O(\Q_reg[37]_0 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[38]_i_4 
       (.I0(\Q_reg[37]_1 [0]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[0] [50]),
        .I2(S_Shift_Value[1]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[0] [49]),
        .I4(S_Shift_Value[0]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [48]),
        .O(\Q_reg[37]_0 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[43]_i_4 
       (.I0(FSM_barrel_shifter_B_S),
        .I1(\Q_reg[0]_0 ),
        .I2(S_Shift_Value[3]),
        .I3(\Q_reg[37]_0 [0]),
        .I4(S_Shift_Value[2]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[2] [43]),
        .O(\Q_reg[27]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[43]_i_5 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [46]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[0] [45]),
        .I2(S_Shift_Value[1]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[0] [44]),
        .I4(S_Shift_Value[0]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [43]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [43]));
  LUT6 #(
    .INIT(64'hAFA0AFA0CFCFC0C0)) 
    \Q[43]_i_6 
       (.I0(Q[6]),
        .I1(\Q_reg[10]_0 [6]),
        .I2(\Q_reg[0]_1 ),
        .I3(Q[43]),
        .I4(\Q_reg[10]_0 [44]),
        .I5(FSM_selector_C),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [46]));
  LUT6 #(
    .INIT(64'hAFA0AFA0CFCFC0C0)) 
    \Q[43]_i_7 
       (.I0(Q[7]),
        .I1(\Q_reg[10]_0 [7]),
        .I2(\Q_reg[0]_1 ),
        .I3(Q[42]),
        .I4(\Q_reg[10]_0 [43]),
        .I5(FSM_selector_C),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [45]));
  LUT6 #(
    .INIT(64'hAFA0AFA0CFCFC0C0)) 
    \Q[43]_i_8 
       (.I0(Q[8]),
        .I1(\Q_reg[10]_0 [8]),
        .I2(\Q_reg[0]_1 ),
        .I3(Q[41]),
        .I4(\Q_reg[10]_0 [42]),
        .I5(FSM_selector_C),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [44]));
  LUT6 #(
    .INIT(64'hAFA0AFA0CFCFC0C0)) 
    \Q[43]_i_9 
       (.I0(Q[9]),
        .I1(\Q_reg[10]_0 [9]),
        .I2(\Q_reg[0]_1 ),
        .I3(Q[40]),
        .I4(\Q_reg[10]_0 [41]),
        .I5(FSM_selector_C),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [43]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[47]_i_13 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [50]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[0] [49]),
        .I2(S_Shift_Value[1]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[0] [48]),
        .I4(S_Shift_Value[0]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [47]),
        .O(\Q_reg[37]_0 [0]));
  LUT6 #(
    .INIT(64'hAFA0AFA0CFCFC0C0)) 
    \Q[47]_i_14 
       (.I0(Q[2]),
        .I1(\Q_reg[10]_0 [2]),
        .I2(\Q_reg[0]_1 ),
        .I3(Q[47]),
        .I4(\Q_reg[10]_0 [48]),
        .I5(FSM_selector_C),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [50]));
  LUT6 #(
    .INIT(64'hAFA0AFA0CFCFC0C0)) 
    \Q[47]_i_15 
       (.I0(Q[3]),
        .I1(\Q_reg[10]_0 [3]),
        .I2(\Q_reg[0]_1 ),
        .I3(Q[46]),
        .I4(\Q_reg[10]_0 [47]),
        .I5(FSM_selector_C),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [49]));
  LUT6 #(
    .INIT(64'hAFA0AFA0CFCFC0C0)) 
    \Q[47]_i_16 
       (.I0(Q[4]),
        .I1(\Q_reg[10]_0 [4]),
        .I2(\Q_reg[0]_1 ),
        .I3(Q[45]),
        .I4(\Q_reg[10]_0 [46]),
        .I5(FSM_selector_C),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [48]));
  LUT6 #(
    .INIT(64'hAFA0AFA0CFCFC0C0)) 
    \Q[47]_i_17 
       (.I0(Q[5]),
        .I1(\Q_reg[10]_0 [5]),
        .I2(\Q_reg[0]_1 ),
        .I3(Q[44]),
        .I4(\Q_reg[10]_0 [45]),
        .I5(FSM_selector_C),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [47]));
  LUT6 #(
    .INIT(64'hAFA0AFA0CFCFC0C0)) 
    \Q[51]_i_13 
       (.I0(Q[1]),
        .I1(\Q_reg[10]_0 [1]),
        .I2(\Q_reg[0]_1 ),
        .I3(Q[48]),
        .I4(\Q_reg[10]_0 [49]),
        .I5(FSM_selector_C),
        .O(\Q_reg[37]_1 [0]));
  LUT6 #(
    .INIT(64'hAFA0AFA0CFCFC0C0)) 
    \Q[52]_i_14 
       (.I0(Q[0]),
        .I1(\Q_reg[10]_0 [0]),
        .I2(\Q_reg[0]_1 ),
        .I3(Q[49]),
        .I4(\Q_reg[10]_0 [50]),
        .I5(FSM_selector_C),
        .O(\Q_reg[37]_1 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [0]),
        .Q(\Q_reg[10]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [10]),
        .Q(\Q_reg[10]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [11]),
        .Q(\Q_reg[10]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [12]),
        .Q(\Q_reg[10]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [13]),
        .Q(\Q_reg[10]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [14]),
        .Q(\Q_reg[10]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [15]),
        .Q(\Q_reg[10]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[62]_0 [16]),
        .Q(\Q_reg[10]_0 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[62]_0 [17]),
        .Q(\Q_reg[10]_0 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[62]_0 [18]),
        .Q(\Q_reg[10]_0 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[62]_0 [19]),
        .Q(\Q_reg[10]_0 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [1]),
        .Q(\Q_reg[10]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[62]_0 [20]),
        .Q(\Q_reg[10]_0 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[62]_0 [21]),
        .Q(\Q_reg[10]_0 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[62]_0 [22]),
        .Q(\Q_reg[10]_0 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[62]_0 [23]),
        .Q(\Q_reg[10]_0 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[62]_0 [24]),
        .Q(\Q_reg[10]_0 [24]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[62]_0 [25]),
        .Q(\Q_reg[10]_0 [25]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[62]_0 [26]),
        .Q(\Q_reg[10]_0 [26]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[62]_0 [27]),
        .Q(\Q_reg[10]_0 [27]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[62]_0 [28]),
        .Q(\Q_reg[10]_0 [28]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[62]_0 [29]),
        .Q(\Q_reg[10]_0 [29]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [2]),
        .Q(\Q_reg[10]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[62]_0 [30]),
        .Q(\Q_reg[10]_0 [30]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[62]_0 [31]),
        .Q(\Q_reg[10]_0 [31]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[62]_0 [32]),
        .Q(\Q_reg[10]_0 [32]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[62]_0 [33]),
        .Q(\Q_reg[10]_0 [33]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[62]_0 [34]),
        .Q(\Q_reg[10]_0 [34]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [35]),
        .Q(\Q_reg[10]_0 [35]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [36]),
        .Q(\Q_reg[10]_0 [36]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [37]),
        .Q(\Q_reg[10]_0 [37]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [38]),
        .Q(\Q_reg[10]_0 [38]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [39]),
        .Q(\Q_reg[10]_0 [39]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [3]),
        .Q(\Q_reg[10]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [40]),
        .Q(\Q_reg[10]_0 [40]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [41]),
        .Q(\Q_reg[10]_0 [41]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [42]),
        .Q(\Q_reg[10]_0 [42]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [43]),
        .Q(\Q_reg[10]_0 [43]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [44]),
        .Q(\Q_reg[10]_0 [44]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [45]),
        .Q(\Q_reg[10]_0 [45]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [46]),
        .Q(\Q_reg[10]_0 [46]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [47]),
        .Q(\Q_reg[10]_0 [47]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [48]),
        .Q(\Q_reg[10]_0 [48]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [49]),
        .Q(\Q_reg[10]_0 [49]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [4]),
        .Q(\Q_reg[10]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [50]),
        .Q(\Q_reg[10]_0 [50]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [51]),
        .Q(\Q_reg[10]_0 [51]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[62]_0 [52]),
        .Q(\Q_reg[10]_0 [52]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[2]),
        .D(\Q_reg[62]_0 [53]),
        .Q(\Q_reg[10]_0 [53]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[2]),
        .D(\Q_reg[62]_0 [54]),
        .Q(\Q_reg[10]_0 [54]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[2]),
        .D(\Q_reg[62]_0 [55]),
        .Q(\Q_reg[10]_0 [55]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[2]),
        .D(\Q_reg[62]_0 [56]),
        .Q(\Q_reg[10]_0 [56]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[2]),
        .D(\Q_reg[62]_0 [57]),
        .Q(\Q_reg[10]_0 [57]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[2]),
        .D(\Q_reg[62]_0 [58]),
        .Q(\Q_reg[10]_0 [58]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[2]),
        .D(\Q_reg[62]_0 [59]),
        .Q(\Q_reg[10]_0 [59]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [5]),
        .Q(\Q_reg[10]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[3]),
        .D(\Q_reg[62]_0 [60]),
        .Q(\Q_reg[10]_0 [60]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[3]),
        .D(\Q_reg[62]_0 [61]),
        .Q(\Q_reg[10]_0 [61]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[3]),
        .D(\Q_reg[62]_0 [62]),
        .Q(\Q_reg[10]_0 [62]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [6]),
        .Q(\Q_reg[10]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [7]),
        .Q(\Q_reg[10]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [8]),
        .Q(\Q_reg[10]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[62]_0 [9]),
        .Q(\Q_reg[10]_0 [9]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized5
   (D,
    Q,
    Data_A,
    \Q_reg[0]_0 ,
    \Q_reg[0]_1 ,
    \Q_reg[52] ,
    FSM_selector_D,
    E,
    \Q_reg[1]_0 ,
    clk_IBUF_BUFG,
    AR);
  output [10:0]D;
  output [10:0]Q;
  output [0:0]Data_A;
  input \Q_reg[0]_0 ;
  input \Q_reg[0]_1 ;
  input [0:0]\Q_reg[52] ;
  input FSM_selector_D;
  input [0:0]E;
  input [10:0]\Q_reg[1]_0 ;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [10:0]D;
  wire [0:0]Data_A;
  wire [0:0]E;
  wire FSM_selector_D;
  wire [10:0]Q;
  wire \Q_reg[0]_0 ;
  wire \Q_reg[0]_1 ;
  wire [10:0]\Q_reg[1]_0 ;
  wire [0:0]\Q_reg[52] ;
  wire clk_IBUF_BUFG;

  LUT3 #(
    .INIT(8'hAC)) 
    \Q[3]_i_2__0 
       (.I0(Q[0]),
        .I1(\Q_reg[52] ),
        .I2(FSM_selector_D),
        .O(Data_A));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \Q[52]_i_1__1 
       (.I0(Q[0]),
        .I1(\Q_reg[0]_0 ),
        .I2(\Q_reg[0]_1 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \Q[53]_i_1__1 
       (.I0(Q[1]),
        .I1(\Q_reg[0]_0 ),
        .I2(\Q_reg[0]_1 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \Q[54]_i_1__1 
       (.I0(Q[2]),
        .I1(\Q_reg[0]_0 ),
        .I2(\Q_reg[0]_1 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \Q[55]_i_1 
       (.I0(Q[3]),
        .I1(\Q_reg[0]_0 ),
        .I2(\Q_reg[0]_1 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \Q[56]_i_1 
       (.I0(Q[4]),
        .I1(\Q_reg[0]_0 ),
        .I2(\Q_reg[0]_1 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \Q[57]_i_1 
       (.I0(Q[5]),
        .I1(\Q_reg[0]_0 ),
        .I2(\Q_reg[0]_1 ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \Q[58]_i_1 
       (.I0(Q[6]),
        .I1(\Q_reg[0]_0 ),
        .I2(\Q_reg[0]_1 ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \Q[59]_i_1 
       (.I0(Q[7]),
        .I1(\Q_reg[0]_0 ),
        .I2(\Q_reg[0]_1 ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \Q[60]_i_1 
       (.I0(Q[8]),
        .I1(\Q_reg[0]_0 ),
        .I2(\Q_reg[0]_1 ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \Q[61]_i_1 
       (.I0(Q[9]),
        .I1(\Q_reg[0]_0 ),
        .I2(\Q_reg[0]_1 ),
        .O(D[9]));
  LUT3 #(
    .INIT(8'hFE)) 
    \Q[62]_i_1__0 
       (.I0(Q[10]),
        .I1(\Q_reg[0]_0 ),
        .I2(\Q_reg[0]_1 ),
        .O(D[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized6
   (Comb_to_Codec,
    \Q_reg[54]_0 ,
    \Q_reg[3]_0 ,
    A_S_C,
    round_flag,
    S_A_S_Oper_A,
    Q,
    \Q_reg[0]_0 ,
    \Q_reg[0]_rep__0 ,
    \Q_reg[0]_rep ,
    sign_final_result,
    r_mode_IBUF,
    FSM_selector_D,
    E,
    D,
    clk_IBUF_BUFG,
    AR);
  output [0:0]Comb_to_Codec;
  output [54:0]\Q_reg[54]_0 ;
  output [2:0]\Q_reg[3]_0 ;
  output [0:0]A_S_C;
  output round_flag;
  output [51:0]S_A_S_Oper_A;
  input [51:0]Q;
  input \Q_reg[0]_0 ;
  input \Q_reg[0]_rep__0 ;
  input \Q_reg[0]_rep ;
  input sign_final_result;
  input [1:0]r_mode_IBUF;
  input FSM_selector_D;
  input [0:0]E;
  input [54:0]D;
  input clk_IBUF_BUFG;
  input [1:0]AR;

  wire [1:0]AR;
  wire [0:0]A_S_C;
  wire [0:0]Comb_to_Codec;
  wire [54:0]D;
  wire [0:0]E;
  wire FSM_selector_D;
  wire [51:0]Q;
  wire \Q_reg[0]_0 ;
  wire \Q_reg[0]_rep ;
  wire \Q_reg[0]_rep__0 ;
  wire [2:0]\Q_reg[3]_0 ;
  wire [54:0]\Q_reg[54]_0 ;
  wire [51:0]S_A_S_Oper_A;
  wire clk_IBUF_BUFG;
  wire [1:0]r_mode_IBUF;
  wire round_flag;
  wire sign_final_result;

  LUT5 #(
    .INIT(32'h00E00E00)) 
    \FSM_sequential_state_reg[2]_i_2 
       (.I0(\Q_reg[54]_0 [1]),
        .I1(\Q_reg[54]_0 [0]),
        .I2(sign_final_result),
        .I3(r_mode_IBUF[1]),
        .I4(r_mode_IBUF[0]),
        .O(round_flag));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[0]_i_1__5 
       (.I0(\Q_reg[54]_0 [0]),
        .I1(FSM_selector_D),
        .O(\Q_reg[3]_0 [0]));
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[12]_i_11 
       (.I0(\Q_reg[54]_0 [8]),
        .I1(Q[6]),
        .I2(\Q_reg[0]_rep__0 ),
        .O(S_A_S_Oper_A[6]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[12]_i_5 
       (.I0(\Q_reg[54]_0 [9]),
        .I1(Q[7]),
        .I2(FSM_selector_D),
        .O(S_A_S_Oper_A[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[12]_i_7 
       (.I0(\Q_reg[54]_0 [10]),
        .I1(Q[8]),
        .I2(FSM_selector_D),
        .O(S_A_S_Oper_A[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[12]_i_9 
       (.I0(\Q_reg[54]_0 [7]),
        .I1(Q[5]),
        .I2(\Q_reg[0]_rep__0 ),
        .O(S_A_S_Oper_A[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[14]_i_7 
       (.I0(\Q_reg[54]_0 [11]),
        .I1(Q[9]),
        .I2(FSM_selector_D),
        .O(S_A_S_Oper_A[9]));
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[17]_i_11 
       (.I0(\Q_reg[54]_0 [13]),
        .I1(Q[11]),
        .I2(\Q_reg[0]_rep__0 ),
        .O(S_A_S_Oper_A[11]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[17]_i_5 
       (.I0(\Q_reg[54]_0 [14]),
        .I1(Q[12]),
        .I2(FSM_selector_D),
        .O(S_A_S_Oper_A[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[17]_i_7 
       (.I0(\Q_reg[54]_0 [15]),
        .I1(Q[13]),
        .I2(FSM_selector_D),
        .O(S_A_S_Oper_A[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[17]_i_9 
       (.I0(\Q_reg[54]_0 [12]),
        .I1(Q[10]),
        .I2(\Q_reg[0]_rep__0 ),
        .O(S_A_S_Oper_A[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[19]_i_7 
       (.I0(\Q_reg[54]_0 [16]),
        .I1(Q[14]),
        .I2(FSM_selector_D),
        .O(S_A_S_Oper_A[14]));
  LUT6 #(
    .INIT(64'h0CED0FED0FEDCFA5)) 
    \Q[1]_i_20 
       (.I0(Q[0]),
        .I1(\Q_reg[0]_0 ),
        .I2(\Q_reg[54]_0 [2]),
        .I3(\Q_reg[0]_rep__0 ),
        .I4(\Q_reg[54]_0 [1]),
        .I5(\Q_reg[54]_0 [0]),
        .O(Comb_to_Codec));
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[22]_i_11 
       (.I0(\Q_reg[54]_0 [18]),
        .I1(Q[16]),
        .I2(\Q_reg[0]_rep__0 ),
        .O(S_A_S_Oper_A[16]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[22]_i_5 
       (.I0(\Q_reg[54]_0 [19]),
        .I1(Q[17]),
        .I2(FSM_selector_D),
        .O(S_A_S_Oper_A[17]));
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[22]_i_7 
       (.I0(\Q_reg[54]_0 [20]),
        .I1(Q[18]),
        .I2(FSM_selector_D),
        .O(S_A_S_Oper_A[18]));
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[22]_i_9 
       (.I0(\Q_reg[54]_0 [17]),
        .I1(Q[15]),
        .I2(\Q_reg[0]_rep__0 ),
        .O(S_A_S_Oper_A[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[24]_i_7 
       (.I0(\Q_reg[54]_0 [21]),
        .I1(Q[19]),
        .I2(FSM_selector_D),
        .O(S_A_S_Oper_A[19]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[27]_i_11__0 
       (.I0(\Q_reg[54]_0 [23]),
        .I1(Q[21]),
        .I2(\Q_reg[0]_rep__0 ),
        .O(S_A_S_Oper_A[21]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[27]_i_5__0 
       (.I0(\Q_reg[54]_0 [24]),
        .I1(Q[22]),
        .I2(FSM_selector_D),
        .O(S_A_S_Oper_A[22]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[27]_i_7__0 
       (.I0(\Q_reg[54]_0 [25]),
        .I1(Q[23]),
        .I2(FSM_selector_D),
        .O(S_A_S_Oper_A[23]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[27]_i_9__0 
       (.I0(\Q_reg[54]_0 [22]),
        .I1(Q[20]),
        .I2(\Q_reg[0]_rep__0 ),
        .O(S_A_S_Oper_A[20]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[29]_i_7 
       (.I0(\Q_reg[54]_0 [26]),
        .I1(Q[24]),
        .I2(FSM_selector_D),
        .O(S_A_S_Oper_A[24]));
  LUT6 #(
    .INIT(64'hAA99A5965A66AA66)) 
    \Q[2]_i_1__1 
       (.I0(\Q_reg[54]_0 [2]),
        .I1(Q[0]),
        .I2(\Q_reg[54]_0 [1]),
        .I3(\Q_reg[0]_rep ),
        .I4(\Q_reg[54]_0 [0]),
        .I5(\Q_reg[0]_0 ),
        .O(\Q_reg[3]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[32]_i_11 
       (.I0(\Q_reg[54]_0 [28]),
        .I1(Q[26]),
        .I2(\Q_reg[0]_rep__0 ),
        .O(S_A_S_Oper_A[26]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[32]_i_5__0 
       (.I0(\Q_reg[54]_0 [29]),
        .I1(Q[27]),
        .I2(FSM_selector_D),
        .O(S_A_S_Oper_A[27]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[32]_i_7 
       (.I0(\Q_reg[54]_0 [30]),
        .I1(Q[28]),
        .I2(FSM_selector_D),
        .O(S_A_S_Oper_A[28]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[32]_i_9 
       (.I0(\Q_reg[54]_0 [27]),
        .I1(Q[25]),
        .I2(\Q_reg[0]_rep__0 ),
        .O(S_A_S_Oper_A[25]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[34]_i_7 
       (.I0(\Q_reg[54]_0 [31]),
        .I1(Q[29]),
        .I2(FSM_selector_D),
        .O(S_A_S_Oper_A[29]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[37]_i_11 
       (.I0(\Q_reg[54]_0 [33]),
        .I1(Q[31]),
        .I2(\Q_reg[0]_rep__0 ),
        .O(S_A_S_Oper_A[31]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[37]_i_5__0 
       (.I0(\Q_reg[54]_0 [34]),
        .I1(Q[32]),
        .I2(FSM_selector_D),
        .O(S_A_S_Oper_A[32]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[37]_i_7 
       (.I0(\Q_reg[54]_0 [35]),
        .I1(Q[33]),
        .I2(FSM_selector_D),
        .O(S_A_S_Oper_A[33]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[37]_i_9 
       (.I0(\Q_reg[54]_0 [32]),
        .I1(Q[30]),
        .I2(\Q_reg[0]_rep__0 ),
        .O(S_A_S_Oper_A[30]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[39]_i_7 
       (.I0(\Q_reg[54]_0 [36]),
        .I1(Q[34]),
        .I2(FSM_selector_D),
        .O(S_A_S_Oper_A[34]));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[3]_i_1__0 
       (.I0(\Q_reg[0]_rep ),
        .I1(\Q_reg[54]_0 [3]),
        .I2(\Q_reg[0]_0 ),
        .I3(Q[1]),
        .I4(A_S_C),
        .O(\Q_reg[3]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[42]_i_11 
       (.I0(\Q_reg[54]_0 [38]),
        .I1(Q[36]),
        .I2(\Q_reg[0]_rep__0 ),
        .O(S_A_S_Oper_A[36]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[42]_i_5 
       (.I0(\Q_reg[54]_0 [39]),
        .I1(Q[37]),
        .I2(FSM_selector_D),
        .O(S_A_S_Oper_A[37]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[42]_i_7 
       (.I0(\Q_reg[54]_0 [40]),
        .I1(Q[38]),
        .I2(FSM_selector_D),
        .O(S_A_S_Oper_A[38]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[42]_i_9 
       (.I0(\Q_reg[54]_0 [37]),
        .I1(Q[35]),
        .I2(\Q_reg[0]_rep__0 ),
        .O(S_A_S_Oper_A[35]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[44]_i_7 
       (.I0(\Q_reg[54]_0 [41]),
        .I1(Q[39]),
        .I2(FSM_selector_D),
        .O(S_A_S_Oper_A[39]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[47]_i_11__0 
       (.I0(\Q_reg[54]_0 [43]),
        .I1(Q[41]),
        .I2(\Q_reg[0]_rep__0 ),
        .O(S_A_S_Oper_A[41]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[47]_i_5__0 
       (.I0(\Q_reg[54]_0 [44]),
        .I1(Q[42]),
        .I2(FSM_selector_D),
        .O(S_A_S_Oper_A[42]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[47]_i_7__0 
       (.I0(\Q_reg[54]_0 [45]),
        .I1(Q[43]),
        .I2(FSM_selector_D),
        .O(S_A_S_Oper_A[43]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[47]_i_9__0 
       (.I0(\Q_reg[54]_0 [42]),
        .I1(Q[40]),
        .I2(\Q_reg[0]_rep__0 ),
        .O(S_A_S_Oper_A[40]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[49]_i_7__0 
       (.I0(\Q_reg[54]_0 [46]),
        .I1(Q[44]),
        .I2(FSM_selector_D),
        .O(S_A_S_Oper_A[44]));
  LUT6 #(
    .INIT(64'hE5A7E0A0AA8AA082)) 
    \Q[4]_i_3__0 
       (.I0(\Q_reg[0]_0 ),
        .I1(\Q_reg[54]_0 [0]),
        .I2(\Q_reg[0]_rep ),
        .I3(\Q_reg[54]_0 [1]),
        .I4(Q[0]),
        .I5(\Q_reg[54]_0 [2]),
        .O(A_S_C));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[52]_i_11__0 
       (.I0(\Q_reg[54]_0 [48]),
        .I1(Q[46]),
        .I2(\Q_reg[0]_rep__0 ),
        .O(S_A_S_Oper_A[46]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[52]_i_5__0 
       (.I0(\Q_reg[54]_0 [49]),
        .I1(Q[47]),
        .I2(FSM_selector_D),
        .O(S_A_S_Oper_A[47]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[52]_i_7__0 
       (.I0(\Q_reg[54]_0 [50]),
        .I1(Q[48]),
        .I2(FSM_selector_D),
        .O(S_A_S_Oper_A[48]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[52]_i_9__0 
       (.I0(\Q_reg[54]_0 [47]),
        .I1(Q[45]),
        .I2(\Q_reg[0]_rep__0 ),
        .O(S_A_S_Oper_A[45]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_50 
       (.I0(\Q_reg[54]_0 [53]),
        .I1(Q[51]),
        .I2(\Q_reg[0]_rep__0 ),
        .O(S_A_S_Oper_A[51]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_52 
       (.I0(\Q_reg[54]_0 [52]),
        .I1(Q[50]),
        .I2(\Q_reg[0]_rep__0 ),
        .O(S_A_S_Oper_A[50]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_8__0 
       (.I0(\Q_reg[54]_0 [51]),
        .I1(Q[49]),
        .I2(FSM_selector_D),
        .O(S_A_S_Oper_A[49]));
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[7]_i_10 
       (.I0(\Q_reg[54]_0 [2]),
        .I1(Q[0]),
        .I2(\Q_reg[0]_rep__0 ),
        .O(S_A_S_Oper_A[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[7]_i_12 
       (.I0(\Q_reg[54]_0 [3]),
        .I1(Q[1]),
        .I2(\Q_reg[0]_rep__0 ),
        .O(S_A_S_Oper_A[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[7]_i_5 
       (.I0(\Q_reg[54]_0 [4]),
        .I1(Q[2]),
        .I2(FSM_selector_D),
        .O(S_A_S_Oper_A[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[7]_i_7 
       (.I0(\Q_reg[54]_0 [5]),
        .I1(Q[3]),
        .I2(FSM_selector_D),
        .O(S_A_S_Oper_A[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[9]_i_7 
       (.I0(\Q_reg[54]_0 [6]),
        .I1(Q[4]),
        .I2(FSM_selector_D),
        .O(S_A_S_Oper_A[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[0]),
        .Q(\Q_reg[54]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[10]),
        .Q(\Q_reg[54]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[11]),
        .Q(\Q_reg[54]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[12]),
        .Q(\Q_reg[54]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[13]),
        .Q(\Q_reg[54]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[14]),
        .Q(\Q_reg[54]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[15]),
        .Q(\Q_reg[54]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[16]),
        .Q(\Q_reg[54]_0 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[17]),
        .Q(\Q_reg[54]_0 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[18]),
        .Q(\Q_reg[54]_0 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[19]),
        .Q(\Q_reg[54]_0 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[1]),
        .Q(\Q_reg[54]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[20]),
        .Q(\Q_reg[54]_0 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[21]),
        .Q(\Q_reg[54]_0 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[22]),
        .Q(\Q_reg[54]_0 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[23]),
        .Q(\Q_reg[54]_0 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[24]),
        .Q(\Q_reg[54]_0 [24]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[25]),
        .Q(\Q_reg[54]_0 [25]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[26]),
        .Q(\Q_reg[54]_0 [26]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[27]),
        .Q(\Q_reg[54]_0 [27]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[28]),
        .Q(\Q_reg[54]_0 [28]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[29]),
        .Q(\Q_reg[54]_0 [29]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[2]),
        .Q(\Q_reg[54]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[30]),
        .Q(\Q_reg[54]_0 [30]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[31]),
        .Q(\Q_reg[54]_0 [31]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[32]),
        .Q(\Q_reg[54]_0 [32]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[33]),
        .Q(\Q_reg[54]_0 [33]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[34]),
        .Q(\Q_reg[54]_0 [34]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[35]),
        .Q(\Q_reg[54]_0 [35]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[36]),
        .Q(\Q_reg[54]_0 [36]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[37]),
        .Q(\Q_reg[54]_0 [37]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[38]),
        .Q(\Q_reg[54]_0 [38]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[39]),
        .Q(\Q_reg[54]_0 [39]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[3]),
        .Q(\Q_reg[54]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[40]),
        .Q(\Q_reg[54]_0 [40]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[41]),
        .Q(\Q_reg[54]_0 [41]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[42]),
        .Q(\Q_reg[54]_0 [42]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[43]),
        .Q(\Q_reg[54]_0 [43]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[44]),
        .Q(\Q_reg[54]_0 [44]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[45]),
        .Q(\Q_reg[54]_0 [45]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[46]),
        .Q(\Q_reg[54]_0 [46]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[47]),
        .Q(\Q_reg[54]_0 [47]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[48]),
        .Q(\Q_reg[54]_0 [48]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[49]),
        .Q(\Q_reg[54]_0 [49]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[4]),
        .Q(\Q_reg[54]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[50]),
        .Q(\Q_reg[54]_0 [50]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[51]),
        .Q(\Q_reg[54]_0 [51]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[52]),
        .Q(\Q_reg[54]_0 [52]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[53]),
        .Q(\Q_reg[54]_0 [53]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[54]),
        .Q(\Q_reg[54]_0 [54]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[5]),
        .Q(\Q_reg[54]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[6]),
        .Q(\Q_reg[54]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(D[7]),
        .Q(\Q_reg[54]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[8]),
        .Q(\Q_reg[54]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(D[9]),
        .Q(\Q_reg[54]_0 [9]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized7
   (D,
    \Q_reg[54]_0 ,
    \Q_reg[24]_0 ,
    \Q_reg[32]_0 ,
    \Data_array[2]_0 ,
    \Data_array[0]_1 ,
    Q,
    \Q_reg[54]_1 ,
    \Q_reg[54]_2 ,
    S_Shift_Value,
    FSM_barrel_shifter_L_R,
    \Data_array[6]_2 ,
    FSM_barrel_shifter_B_S,
    \Q_reg[0]_0 ,
    \Q_reg[0]_1 ,
    \Q_reg[2]_0 ,
    FSM_selector_C,
    \Q_reg[0]_2 ,
    \Q_reg[0]_3 ,
    \Q_reg[51]_0 ,
    E,
    \Q_reg[54]_3 ,
    CLK,
    AR);
  output [2:0]D;
  output [25:0]\Q_reg[54]_0 ;
  output [19:0]\Q_reg[24]_0 ;
  output [3:0]\Q_reg[32]_0 ;
  output [0:0]\Data_array[2]_0 ;
  output [1:0]\Data_array[0]_1 ;
  output [52:0]Q;
  output \Q_reg[54]_1 ;
  output [1:0]\Q_reg[54]_2 ;
  input [5:0]S_Shift_Value;
  input FSM_barrel_shifter_L_R;
  input [0:0]\Data_array[6]_2 ;
  input FSM_barrel_shifter_B_S;
  input [0:0]\Q_reg[0]_0 ;
  input [1:0]\Q_reg[0]_1 ;
  input [1:0]\Q_reg[2]_0 ;
  input FSM_selector_C;
  input \Q_reg[0]_2 ;
  input \Q_reg[0]_3 ;
  input [51:0]\Q_reg[51]_0 ;
  input [0:0]E;
  input [54:0]\Q_reg[54]_3 ;
  input CLK;
  input [1:0]AR;

  wire [1:0]AR;
  wire [48:0]\Barrel_Shifter_module/Mux_Array/Data_array[1] ;
  wire [32:0]\Barrel_Shifter_module/Mux_Array/Data_array[3] ;
  wire [31:23]\Barrel_Shifter_module/Mux_Array/Data_array[5] ;
  wire CLK;
  wire [2:0]D;
  wire [1:0]\Data_array[0]_1 ;
  wire [0:0]\Data_array[2]_0 ;
  wire [0:0]\Data_array[6]_2 ;
  wire [0:0]E;
  wire FSM_barrel_shifter_B_S;
  wire FSM_barrel_shifter_L_R;
  wire FSM_selector_C;
  wire [52:0]Q;
  wire [0:0]\Q_reg[0]_0 ;
  wire [1:0]\Q_reg[0]_1 ;
  wire \Q_reg[0]_2 ;
  wire \Q_reg[0]_3 ;
  wire [19:0]\Q_reg[24]_0 ;
  wire [1:0]\Q_reg[2]_0 ;
  wire [3:0]\Q_reg[32]_0 ;
  wire [51:0]\Q_reg[51]_0 ;
  wire [25:0]\Q_reg[54]_0 ;
  wire \Q_reg[54]_1 ;
  wire [1:0]\Q_reg[54]_2 ;
  wire [54:0]\Q_reg[54]_3 ;
  wire \Q_reg_n_0_[27] ;
  wire \Q_reg_n_0_[53] ;
  wire [52:2]S_Data_Shift;
  wire [5:0]S_Shift_Value;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \Q[23]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[5] [31]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(FSM_barrel_shifter_B_S),
        .I3(S_Shift_Value[5]),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[5] [23]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[27]_i_22 
       (.I0(\Q_reg_n_0_[27] ),
        .I1(\Q_reg[51]_0 [25]),
        .I2(FSM_selector_C),
        .O(\Q_reg[54]_2 [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[28]_i_2 
       (.I0(\Q_reg[0]_0 ),
        .I1(\Q_reg[24]_0 [13]),
        .I2(S_Shift_Value[4]),
        .I3(\Q_reg[24]_0 [5]),
        .I4(S_Shift_Value[3]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[3] [26]),
        .O(\Q_reg[54]_0 [24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[30]_i_2 
       (.I0(\Q_reg[24]_0 [19]),
        .I1(\Q_reg[24]_0 [11]),
        .I2(S_Shift_Value[4]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[3] [32]),
        .I4(S_Shift_Value[3]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[3] [24]),
        .O(\Q_reg[54]_0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \Q[31]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[5] [23]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(FSM_barrel_shifter_B_S),
        .I3(S_Shift_Value[5]),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[5] [31]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[31]_i_2 
       (.I0(\Q_reg[24]_0 [18]),
        .I1(\Q_reg[24]_0 [10]),
        .I2(S_Shift_Value[4]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[3] [31]),
        .I4(S_Shift_Value[3]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[3] [23]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[5] [23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[31]_i_3 
       (.I0(FSM_barrel_shifter_B_S),
        .I1(\Q_reg[24]_0 [18]),
        .I2(S_Shift_Value[4]),
        .I3(\Q_reg[24]_0 [10]),
        .I4(S_Shift_Value[3]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[3] [31]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[5] [31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[32]_i_3 
       (.I0(\Q_reg[24]_0 [17]),
        .I1(\Q_reg[24]_0 [9]),
        .I2(S_Shift_Value[4]),
        .I3(\Q_reg[24]_0 [3]),
        .I4(S_Shift_Value[3]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[3] [22]),
        .O(\Q_reg[54]_0 [22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[33]_i_3 
       (.I0(\Q_reg[24]_0 [16]),
        .I1(\Q_reg[24]_0 [8]),
        .I2(S_Shift_Value[4]),
        .I3(\Q_reg[24]_0 [2]),
        .I4(S_Shift_Value[3]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[3] [21]),
        .O(\Q_reg[54]_0 [21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[34]_i_3 
       (.I0(\Q_reg[24]_0 [15]),
        .I1(\Q_reg[24]_0 [7]),
        .I2(S_Shift_Value[4]),
        .I3(\Q_reg[24]_0 [1]),
        .I4(S_Shift_Value[3]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[3] [20]),
        .O(\Q_reg[54]_0 [20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[35]_i_3 
       (.I0(\Q_reg[24]_0 [14]),
        .I1(\Q_reg[24]_0 [6]),
        .I2(S_Shift_Value[4]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[3] [27]),
        .I4(S_Shift_Value[3]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[3] [19]),
        .O(\Q_reg[54]_0 [19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[36]_i_3 
       (.I0(\Q_reg[24]_0 [13]),
        .I1(\Q_reg[24]_0 [5]),
        .I2(S_Shift_Value[4]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[3] [26]),
        .I4(S_Shift_Value[3]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[3] [18]),
        .O(\Q_reg[54]_0 [18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[37]_i_3 
       (.I0(\Q_reg[24]_0 [12]),
        .I1(\Q_reg[24]_0 [4]),
        .I2(S_Shift_Value[4]),
        .I3(\Q_reg[24]_0 [0]),
        .I4(S_Shift_Value[3]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[3] [17]),
        .O(\Q_reg[54]_0 [17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[38]_i_3 
       (.I0(\Q_reg[24]_0 [11]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[3] [32]),
        .I2(S_Shift_Value[4]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[3] [24]),
        .I4(S_Shift_Value[3]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[3] [16]),
        .O(\Q_reg[54]_0 [16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[39]_i_2 
       (.I0(\Q_reg[24]_0 [10]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[3] [31]),
        .I2(S_Shift_Value[4]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[3] [23]),
        .I4(S_Shift_Value[3]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[3] [15]),
        .O(\Q_reg[54]_0 [15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[40]_i_3 
       (.I0(\Q_reg[24]_0 [9]),
        .I1(\Q_reg[24]_0 [3]),
        .I2(S_Shift_Value[4]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[3] [22]),
        .I4(S_Shift_Value[3]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[3] [14]),
        .O(\Q_reg[54]_0 [14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[41]_i_3 
       (.I0(\Q_reg[24]_0 [8]),
        .I1(\Q_reg[24]_0 [2]),
        .I2(S_Shift_Value[4]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[3] [21]),
        .I4(S_Shift_Value[3]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[3] [13]),
        .O(\Q_reg[54]_0 [13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[42]_i_3 
       (.I0(\Q_reg[24]_0 [7]),
        .I1(\Q_reg[24]_0 [1]),
        .I2(S_Shift_Value[4]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[3] [20]),
        .I4(S_Shift_Value[3]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[3] [12]),
        .O(\Q_reg[54]_0 [12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[43]_i_2 
       (.I0(\Q_reg[24]_0 [6]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[3] [27]),
        .I2(S_Shift_Value[4]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[3] [19]),
        .I4(S_Shift_Value[3]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[3] [11]),
        .O(\Q_reg[54]_0 [11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[44]_i_3 
       (.I0(\Q_reg[24]_0 [5]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[3] [26]),
        .I2(S_Shift_Value[4]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[3] [18]),
        .I4(S_Shift_Value[3]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[3] [10]),
        .O(\Q_reg[54]_0 [10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[45]_i_3 
       (.I0(\Q_reg[24]_0 [4]),
        .I1(\Q_reg[24]_0 [0]),
        .I2(S_Shift_Value[4]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[3] [17]),
        .I4(S_Shift_Value[3]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[3] [9]),
        .O(\Q_reg[54]_0 [9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[46]_i_3 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[3] [32]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[3] [24]),
        .I2(S_Shift_Value[4]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[3] [16]),
        .I4(S_Shift_Value[3]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[3] [8]),
        .O(\Q_reg[54]_0 [8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[47]_i_10 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [21]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [19]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [17]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [15]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[47]_i_11 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [13]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [11]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [9]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [7]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[47]_i_3 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[3] [31]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[3] [23]),
        .I2(S_Shift_Value[4]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[3] [15]),
        .I4(S_Shift_Value[3]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[3] [7]),
        .O(\Q_reg[54]_0 [7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[47]_i_6 
       (.I0(\Q_reg[0]_1 [0]),
        .I1(\Q_reg[32]_0 [2]),
        .I2(S_Shift_Value[2]),
        .I3(\Q_reg[32]_0 [0]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [47]),
        .O(\Q_reg[24]_0 [18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[47]_i_7 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [45]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [43]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [41]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [39]),
        .O(\Q_reg[24]_0 [10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[47]_i_8 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [37]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [35]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [33]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [31]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[47]_i_9 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [29]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [27]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [25]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [23]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[48]_i_10 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [12]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [10]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [8]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [6]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[48]_i_3 
       (.I0(\Q_reg[24]_0 [3]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[3] [22]),
        .I2(S_Shift_Value[4]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[3] [14]),
        .I4(S_Shift_Value[3]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[3] [6]),
        .O(\Q_reg[54]_0 [6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[48]_i_5 
       (.I0(\Q_reg[32]_0 [3]),
        .I1(\Q_reg[32]_0 [1]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [48]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [46]),
        .O(\Q_reg[24]_0 [17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[48]_i_6 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [44]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [42]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [40]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [38]),
        .O(\Q_reg[24]_0 [9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[48]_i_7 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [36]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [34]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [32]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [30]),
        .O(\Q_reg[24]_0 [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[48]_i_8 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [28]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [26]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [24]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [22]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[48]_i_9 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [20]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [18]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [16]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [14]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[49]_i_10 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [11]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [9]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [7]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [5]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[49]_i_3 
       (.I0(\Q_reg[24]_0 [2]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[3] [21]),
        .I2(S_Shift_Value[4]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[3] [13]),
        .I4(S_Shift_Value[3]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[3] [5]),
        .O(\Q_reg[54]_0 [5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[49]_i_5 
       (.I0(\Q_reg[32]_0 [2]),
        .I1(\Q_reg[32]_0 [0]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [47]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [45]),
        .O(\Q_reg[24]_0 [16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[49]_i_6 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [43]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [41]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [39]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [37]),
        .O(\Q_reg[24]_0 [8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[49]_i_7 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [35]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [33]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [31]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [29]),
        .O(\Q_reg[24]_0 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[49]_i_8 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [27]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [25]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [23]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [21]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[49]_i_9 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [19]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [17]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [15]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [13]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[50]_i_10 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [18]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [16]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [14]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [12]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[50]_i_11 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [10]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [8]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [6]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [4]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[50]_i_3 
       (.I0(\Q_reg[24]_0 [1]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[3] [20]),
        .I2(S_Shift_Value[4]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[3] [12]),
        .I4(S_Shift_Value[3]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[3] [4]),
        .O(\Q_reg[54]_0 [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[50]_i_6 
       (.I0(\Q_reg[32]_0 [1]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [48]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [46]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [44]),
        .O(\Q_reg[24]_0 [15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[50]_i_7 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [42]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [40]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [38]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [36]),
        .O(\Q_reg[24]_0 [7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[50]_i_8 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [34]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [32]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [30]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [28]),
        .O(\Q_reg[24]_0 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[50]_i_9 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [26]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [24]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [22]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [20]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[51]_i_10 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [17]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [15]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [13]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [11]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[51]_i_11 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [9]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [7]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [5]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [3]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[51]_i_12 
       (.I0(\Data_array[0]_1 [1]),
        .I1(\Data_array[0]_1 [0]),
        .I2(S_Shift_Value[1]),
        .I3(\Q_reg[2]_0 [1]),
        .I4(S_Shift_Value[0]),
        .I5(\Q_reg[2]_0 [0]),
        .O(\Data_array[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[51]_i_3 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[3] [27]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[3] [19]),
        .I2(S_Shift_Value[4]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[3] [11]),
        .I4(S_Shift_Value[3]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[3] [3]),
        .O(\Q_reg[54]_0 [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[51]_i_6 
       (.I0(\Q_reg[32]_0 [0]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [47]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [45]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [43]),
        .O(\Q_reg[24]_0 [14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[51]_i_7 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [41]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [39]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [37]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [35]),
        .O(\Q_reg[24]_0 [6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[51]_i_8 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [33]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [31]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [29]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [27]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[51]_i_9 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [25]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [23]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [21]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [19]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[52]_i_10 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [16]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [14]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [12]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [10]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[52]_i_11 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [8]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [6]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [4]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [2]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[52]_i_3 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[3] [26]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[3] [18]),
        .I2(S_Shift_Value[4]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[3] [10]),
        .I4(S_Shift_Value[3]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[3] [2]),
        .O(\Q_reg[54]_0 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[52]_i_6 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [48]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [46]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [44]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [42]),
        .O(\Q_reg[24]_0 [13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[52]_i_7 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [40]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [38]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [36]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [34]),
        .O(\Q_reg[24]_0 [5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[52]_i_8 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [32]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [30]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [28]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [26]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[52]_i_9 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [24]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [22]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [20]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [18]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_10 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [15]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [13]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [11]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [9]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_11 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [7]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [5]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [3]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [1]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_14 
       (.I0(S_Data_Shift[2]),
        .I1(S_Data_Shift[52]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[3]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[51]),
        .O(\Q_reg[32]_0 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_15 
       (.I0(S_Data_Shift[4]),
        .I1(S_Data_Shift[50]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[5]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[49]),
        .O(\Q_reg[32]_0 [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_16 
       (.I0(S_Data_Shift[6]),
        .I1(S_Data_Shift[48]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[7]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[47]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [47]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_17 
       (.I0(S_Data_Shift[8]),
        .I1(S_Data_Shift[46]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[9]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[45]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [45]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_18 
       (.I0(S_Data_Shift[10]),
        .I1(S_Data_Shift[44]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[11]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[43]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [43]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_19 
       (.I0(S_Data_Shift[12]),
        .I1(S_Data_Shift[42]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[13]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[41]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [41]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_20 
       (.I0(S_Data_Shift[14]),
        .I1(S_Data_Shift[40]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[15]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[39]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [39]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_21 
       (.I0(S_Data_Shift[16]),
        .I1(S_Data_Shift[38]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[17]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[37]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [37]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_22 
       (.I0(S_Data_Shift[18]),
        .I1(S_Data_Shift[36]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[19]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[35]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [35]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_23 
       (.I0(S_Data_Shift[20]),
        .I1(S_Data_Shift[34]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[21]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[33]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [33]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_24 
       (.I0(S_Data_Shift[22]),
        .I1(S_Data_Shift[32]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[23]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[31]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_25 
       (.I0(S_Data_Shift[24]),
        .I1(S_Data_Shift[30]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[25]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[29]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [29]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \Q[53]_i_26 
       (.I0(S_Data_Shift[26]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(S_Data_Shift[28]),
        .I3(S_Shift_Value[0]),
        .I4(\Q_reg[54]_2 [0]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_27 
       (.I0(S_Data_Shift[28]),
        .I1(S_Data_Shift[26]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[29]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[25]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_28 
       (.I0(S_Data_Shift[30]),
        .I1(S_Data_Shift[24]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[31]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[23]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_29 
       (.I0(S_Data_Shift[32]),
        .I1(S_Data_Shift[22]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[33]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[21]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_3 
       (.I0(\Q_reg[24]_0 [0]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[3] [17]),
        .I2(S_Shift_Value[4]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[3] [9]),
        .I4(S_Shift_Value[3]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[3] [1]),
        .O(\Q_reg[54]_0 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_30 
       (.I0(S_Data_Shift[34]),
        .I1(S_Data_Shift[20]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[35]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[19]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_31 
       (.I0(S_Data_Shift[36]),
        .I1(S_Data_Shift[18]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[37]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[17]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_32 
       (.I0(S_Data_Shift[38]),
        .I1(S_Data_Shift[16]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[39]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[15]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_33 
       (.I0(S_Data_Shift[40]),
        .I1(S_Data_Shift[14]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[41]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[13]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_34 
       (.I0(S_Data_Shift[42]),
        .I1(S_Data_Shift[12]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[43]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[11]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_35 
       (.I0(S_Data_Shift[44]),
        .I1(S_Data_Shift[10]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[45]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[9]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_36 
       (.I0(S_Data_Shift[46]),
        .I1(S_Data_Shift[8]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[47]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[7]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_37 
       (.I0(S_Data_Shift[48]),
        .I1(S_Data_Shift[6]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[49]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[5]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_38 
       (.I0(S_Data_Shift[50]),
        .I1(S_Data_Shift[4]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[51]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[3]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_39 
       (.I0(S_Data_Shift[52]),
        .I1(S_Data_Shift[2]),
        .I2(S_Shift_Value[0]),
        .I3(\Q_reg[54]_1 ),
        .I4(FSM_barrel_shifter_L_R),
        .I5(\Q_reg[0]_2 ),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hB8B83300)) 
    \Q[53]_i_40 
       (.I0(Q[1]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Q_reg_n_0_[53] ),
        .I3(\Q_reg[51]_0 [51]),
        .I4(FSM_selector_C),
        .O(\Data_array[0]_1 [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_6 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [47]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [45]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [43]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [41]),
        .O(\Q_reg[24]_0 [12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_7 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [39]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [37]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [35]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [33]),
        .O(\Q_reg[24]_0 [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_8 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [31]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [29]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [27]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [25]),
        .O(\Q_reg[24]_0 [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[53]_i_9 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [23]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [21]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [19]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [17]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [17]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_100 
       (.I0(Q[30]),
        .I1(\Q_reg[51]_0 [29]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[31]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_101 
       (.I0(Q[24]),
        .I1(\Q_reg[51]_0 [22]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[24]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_102 
       (.I0(Q[29]),
        .I1(\Q_reg[51]_0 [28]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[30]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_103 
       (.I0(Q[25]),
        .I1(\Q_reg[51]_0 [23]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[25]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_104 
       (.I0(Q[28]),
        .I1(\Q_reg[51]_0 [27]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[29]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_105 
       (.I0(Q[26]),
        .I1(\Q_reg[51]_0 [24]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[26]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_106 
       (.I0(Q[27]),
        .I1(\Q_reg[51]_0 [26]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[28]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \Q[54]_i_107 
       (.I0(Q[52]),
        .I1(FSM_selector_C),
        .O(\Q_reg[54]_2 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_11 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [38]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [36]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [34]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [32]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [32]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_12 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [30]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [28]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [26]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [24]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_13 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [22]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [20]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [18]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [16]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_14 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [14]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [12]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [10]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [8]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_15 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [6]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [4]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [2]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [0]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \Q[54]_i_2 
       (.I0(\Q_reg[54]_0 [25]),
        .I1(S_Shift_Value[5]),
        .I2(\Q_reg[54]_0 [0]),
        .I3(FSM_barrel_shifter_L_R),
        .I4(\Data_array[6]_2 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_21 
       (.I0(\Q_reg[0]_2 ),
        .I1(\Q_reg[54]_1 ),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[2]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[52]),
        .O(\Q_reg[32]_0 [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_22 
       (.I0(S_Data_Shift[3]),
        .I1(S_Data_Shift[51]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[4]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[50]),
        .O(\Q_reg[32]_0 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_23 
       (.I0(S_Data_Shift[5]),
        .I1(S_Data_Shift[49]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[6]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[48]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [48]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_24 
       (.I0(S_Data_Shift[7]),
        .I1(S_Data_Shift[47]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[8]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[46]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [46]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_25 
       (.I0(S_Data_Shift[9]),
        .I1(S_Data_Shift[45]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[10]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[44]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [44]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_26 
       (.I0(S_Data_Shift[11]),
        .I1(S_Data_Shift[43]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[12]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[42]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [42]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_27 
       (.I0(S_Data_Shift[13]),
        .I1(S_Data_Shift[41]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[14]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[40]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [40]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_28 
       (.I0(S_Data_Shift[15]),
        .I1(S_Data_Shift[39]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[16]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[38]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [38]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_29 
       (.I0(S_Data_Shift[17]),
        .I1(S_Data_Shift[37]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[18]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[36]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [36]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_3 
       (.I0(FSM_barrel_shifter_B_S),
        .I1(\Q_reg[24]_0 [19]),
        .I2(S_Shift_Value[4]),
        .I3(\Q_reg[24]_0 [11]),
        .I4(S_Shift_Value[3]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[3] [32]),
        .O(\Q_reg[54]_0 [25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_30 
       (.I0(S_Data_Shift[19]),
        .I1(S_Data_Shift[35]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[20]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[34]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [34]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_31 
       (.I0(S_Data_Shift[21]),
        .I1(S_Data_Shift[33]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[22]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[32]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [32]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_32 
       (.I0(S_Data_Shift[23]),
        .I1(S_Data_Shift[31]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[24]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[30]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_33 
       (.I0(S_Data_Shift[25]),
        .I1(S_Data_Shift[29]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[26]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[28]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [28]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[54]_i_34 
       (.I0(\Q_reg[54]_2 [0]),
        .I1(S_Shift_Value[0]),
        .I2(S_Data_Shift[28]),
        .I3(FSM_barrel_shifter_L_R),
        .I4(S_Data_Shift[26]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_35 
       (.I0(S_Data_Shift[29]),
        .I1(S_Data_Shift[25]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[30]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[24]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_36 
       (.I0(S_Data_Shift[31]),
        .I1(S_Data_Shift[23]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[32]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[22]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_37 
       (.I0(S_Data_Shift[33]),
        .I1(S_Data_Shift[21]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[34]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[20]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_38 
       (.I0(S_Data_Shift[35]),
        .I1(S_Data_Shift[19]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[36]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[18]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_39 
       (.I0(S_Data_Shift[37]),
        .I1(S_Data_Shift[17]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[38]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[16]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_40 
       (.I0(S_Data_Shift[39]),
        .I1(S_Data_Shift[15]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[40]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[14]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_41 
       (.I0(S_Data_Shift[41]),
        .I1(S_Data_Shift[13]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[42]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[12]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_42 
       (.I0(S_Data_Shift[43]),
        .I1(S_Data_Shift[11]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[44]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[10]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_43 
       (.I0(S_Data_Shift[45]),
        .I1(S_Data_Shift[9]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[46]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[8]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_44 
       (.I0(S_Data_Shift[47]),
        .I1(S_Data_Shift[7]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[48]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[6]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_45 
       (.I0(S_Data_Shift[49]),
        .I1(S_Data_Shift[5]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[50]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[4]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_46 
       (.I0(S_Data_Shift[51]),
        .I1(S_Data_Shift[3]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[52]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[2]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_47 
       (.I0(\Q_reg[54]_1 ),
        .I1(\Q_reg[0]_2 ),
        .I2(S_Shift_Value[0]),
        .I3(\Q_reg[54]_2 [1]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(\Q_reg[0]_3 ),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_5 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[3] [24]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[3] [16]),
        .I2(S_Shift_Value[4]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[3] [8]),
        .I4(S_Shift_Value[3]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[3] [0]),
        .O(\Q_reg[54]_0 [0]));
  LUT4 #(
    .INIT(16'hB833)) 
    \Q[54]_i_54 
       (.I0(Q[0]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(Q[52]),
        .I3(FSM_selector_C),
        .O(\Data_array[0]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_56 
       (.I0(\Q_reg_n_0_[53] ),
        .I1(\Q_reg[51]_0 [51]),
        .I2(FSM_selector_C),
        .O(\Q_reg[54]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_57 
       (.I0(Q[2]),
        .I1(\Q_reg[51]_0 [0]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_58 
       (.I0(Q[51]),
        .I1(\Q_reg[51]_0 [50]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[52]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_59 
       (.I0(Q[3]),
        .I1(\Q_reg[51]_0 [1]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_60 
       (.I0(Q[50]),
        .I1(\Q_reg[51]_0 [49]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[51]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_61 
       (.I0(Q[4]),
        .I1(\Q_reg[51]_0 [2]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[4]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_62 
       (.I0(Q[49]),
        .I1(\Q_reg[51]_0 [48]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[50]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_63 
       (.I0(Q[5]),
        .I1(\Q_reg[51]_0 [3]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[5]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_64 
       (.I0(Q[48]),
        .I1(\Q_reg[51]_0 [47]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[49]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_65 
       (.I0(Q[6]),
        .I1(\Q_reg[51]_0 [4]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[6]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_66 
       (.I0(Q[47]),
        .I1(\Q_reg[51]_0 [46]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[48]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_67 
       (.I0(Q[7]),
        .I1(\Q_reg[51]_0 [5]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[7]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_68 
       (.I0(Q[46]),
        .I1(\Q_reg[51]_0 [45]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[47]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_69 
       (.I0(Q[8]),
        .I1(\Q_reg[51]_0 [6]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[8]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_70 
       (.I0(Q[45]),
        .I1(\Q_reg[51]_0 [44]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[46]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_71 
       (.I0(Q[9]),
        .I1(\Q_reg[51]_0 [7]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[9]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_72 
       (.I0(Q[44]),
        .I1(\Q_reg[51]_0 [43]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[45]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_73 
       (.I0(Q[10]),
        .I1(\Q_reg[51]_0 [8]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[10]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_74 
       (.I0(Q[43]),
        .I1(\Q_reg[51]_0 [42]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[44]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_75 
       (.I0(Q[11]),
        .I1(\Q_reg[51]_0 [9]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[11]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_76 
       (.I0(Q[42]),
        .I1(\Q_reg[51]_0 [41]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[43]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_77 
       (.I0(Q[12]),
        .I1(\Q_reg[51]_0 [10]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[12]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_78 
       (.I0(Q[41]),
        .I1(\Q_reg[51]_0 [40]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[42]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_79 
       (.I0(Q[13]),
        .I1(\Q_reg[51]_0 [11]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_8 
       (.I0(\Q_reg[0]_1 [1]),
        .I1(\Q_reg[32]_0 [3]),
        .I2(S_Shift_Value[2]),
        .I3(\Q_reg[32]_0 [1]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [48]),
        .O(\Q_reg[24]_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_80 
       (.I0(Q[40]),
        .I1(\Q_reg[51]_0 [39]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[41]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_81 
       (.I0(Q[14]),
        .I1(\Q_reg[51]_0 [12]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[14]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_82 
       (.I0(Q[39]),
        .I1(\Q_reg[51]_0 [38]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[40]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_83 
       (.I0(Q[15]),
        .I1(\Q_reg[51]_0 [13]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[15]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_84 
       (.I0(Q[38]),
        .I1(\Q_reg[51]_0 [37]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[39]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_85 
       (.I0(Q[16]),
        .I1(\Q_reg[51]_0 [14]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[16]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_86 
       (.I0(Q[37]),
        .I1(\Q_reg[51]_0 [36]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[38]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_87 
       (.I0(Q[17]),
        .I1(\Q_reg[51]_0 [15]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[17]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_88 
       (.I0(Q[36]),
        .I1(\Q_reg[51]_0 [35]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[37]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_89 
       (.I0(Q[18]),
        .I1(\Q_reg[51]_0 [16]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[54]_i_9 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [46]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [44]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [42]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [40]),
        .O(\Q_reg[24]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_90 
       (.I0(Q[35]),
        .I1(\Q_reg[51]_0 [34]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[36]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_91 
       (.I0(Q[19]),
        .I1(\Q_reg[51]_0 [17]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[19]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_92 
       (.I0(Q[34]),
        .I1(\Q_reg[51]_0 [33]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[35]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_93 
       (.I0(Q[20]),
        .I1(\Q_reg[51]_0 [18]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[20]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_94 
       (.I0(Q[33]),
        .I1(\Q_reg[51]_0 [32]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[34]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_95 
       (.I0(Q[21]),
        .I1(\Q_reg[51]_0 [19]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[21]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_96 
       (.I0(Q[32]),
        .I1(\Q_reg[51]_0 [31]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[33]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_97 
       (.I0(Q[22]),
        .I1(\Q_reg[51]_0 [20]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[22]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_98 
       (.I0(Q[31]),
        .I1(\Q_reg[51]_0 [30]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[32]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \Q[54]_i_99 
       (.I0(Q[23]),
        .I1(\Q_reg[51]_0 [21]),
        .I2(FSM_selector_C),
        .O(S_Data_Shift[23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[54]_3 [17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[54]_3 [18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[54]_3 [19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[54]_3 [20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[54]_3 [21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[54]_3 [22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[54]_3 [23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[54]_3 [24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[54]_3 [25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[54]_3 [26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[27] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[54]_3 [27]),
        .Q(\Q_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[28] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[54]_3 [28]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[29] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[54]_3 [29]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[30] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[54]_3 [30]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[31] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[54]_3 [31]),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[32] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[54]_3 [32]),
        .Q(Q[31]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[33] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[54]_3 [33]),
        .Q(Q[32]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[34] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[54]_3 [34]),
        .Q(Q[33]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[35] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[54]_3 [35]),
        .Q(Q[34]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[36] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[54]_3 [36]),
        .Q(Q[35]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[37] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[54]_3 [37]),
        .Q(Q[36]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[38] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [38]),
        .Q(Q[37]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[39] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [39]),
        .Q(Q[38]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[40] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [40]),
        .Q(Q[39]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[41] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [41]),
        .Q(Q[40]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[42] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [42]),
        .Q(Q[41]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[43] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [43]),
        .Q(Q[42]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[44] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [44]),
        .Q(Q[43]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[45] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [45]),
        .Q(Q[44]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[46] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [46]),
        .Q(Q[45]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[47] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [47]),
        .Q(Q[46]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[48] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [48]),
        .Q(Q[47]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[49] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [49]),
        .Q(Q[48]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[50] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [50]),
        .Q(Q[49]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[51] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [51]),
        .Q(Q[50]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[52] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [52]),
        .Q(Q[51]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[53] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [53]),
        .Q(\Q_reg_n_0_[53] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[54] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [54]),
        .Q(Q[52]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[54]_3 [9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized8
   (Q,
    E,
    D,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[3] );
  output [5:0]Q;
  input [0:0]E;
  input [5:0]D;
  input clk_IBUF_BUFG;
  input [0:0]\FSM_sequential_state_reg_reg[3] ;

  wire [5:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_sequential_state_reg_reg[3] ;
  wire [5:0]Q;
  wire clk_IBUF_BUFG;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] ),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] ),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] ),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] ),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] ),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] ),
        .D(D[5]),
        .Q(Q[5]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized9
   (Q,
    E,
    D,
    clk_IBUF_BUFG,
    AR);
  output [63:0]Q;
  input [0:0]E;
  input [63:0]D;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [63:0]D;
  wire [0:0]E;
  wire [63:0]Q;
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
    \Q_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[32]),
        .Q(Q[32]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[33]),
        .Q(Q[33]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[34]),
        .Q(Q[34]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[35]),
        .Q(Q[35]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[36]),
        .Q(Q[36]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[37]),
        .Q(Q[37]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[38]),
        .Q(Q[38]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[39]),
        .Q(Q[39]));
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
    \Q_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[40]),
        .Q(Q[40]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[41]),
        .Q(Q[41]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[42]),
        .Q(Q[42]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[43]),
        .Q(Q[43]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[44]),
        .Q(Q[44]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[45]),
        .Q(Q[45]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[46]),
        .Q(Q[46]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[47]),
        .Q(Q[47]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[48]),
        .Q(Q[48]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[49]),
        .Q(Q[49]));
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
    \Q_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[50]),
        .Q(Q[50]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[51]),
        .Q(Q[51]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[52]),
        .Q(Q[52]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[53]),
        .Q(Q[53]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[54]),
        .Q(Q[54]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[55]),
        .Q(Q[55]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[56]),
        .Q(Q[56]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[57]),
        .Q(Q[57]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[58]),
        .Q(Q[58]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[59]),
        .Q(Q[59]));
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
    \Q_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[60]),
        .Q(Q[60]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[61]),
        .Q(Q[61]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[62]),
        .Q(Q[62]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[63]),
        .Q(Q[63]));
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

module Tenth_Phase
   (Q,
    E,
    D,
    clk_IBUF_BUFG,
    AR);
  output [63:0]Q;
  input [0:0]E;
  input [63:0]D;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [63:0]D;
  wire [0:0]E;
  wire [63:0]Q;
  wire clk_IBUF_BUFG;

  RegisterAdd__parameterized9 Final_Result_IEEE
       (.AR(AR),
        .D(D),
        .E(E),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
endmodule

module add_sub_carry_out
   (\Q_reg[0] ,
    D,
    DI,
    Data_A,
    p_0_in,
    FSM_selector_D,
    \Q_reg[62] ,
    Q,
    \Q_reg[0]_0 ,
    FSM_selector_B,
    \Q_reg[52] );
  output \Q_reg[0] ;
  output [11:0]D;
  input [3:0]DI;
  input [0:0]Data_A;
  input [7:0]p_0_in;
  input FSM_selector_D;
  input [9:0]\Q_reg[62] ;
  input [9:0]Q;
  input [0:0]\Q_reg[0]_0 ;
  input [1:0]FSM_selector_B;
  input [0:0]\Q_reg[52] ;

  wire [11:0]D;
  wire [3:0]DI;
  wire [0:0]Data_A;
  wire [1:0]FSM_selector_B;
  wire FSM_selector_D;
  wire [9:0]Q;
  wire \Q[10]_i_7_n_0 ;
  wire \Q[10]_i_8_n_0 ;
  wire \Q[10]_i_9_n_0 ;
  wire \Q[3]_i_10_n_0 ;
  wire \Q[3]_i_7_n_0 ;
  wire \Q[3]_i_8_n_0 ;
  wire \Q[3]_i_9_n_0 ;
  wire \Q[7]_i_6_n_0 ;
  wire \Q[7]_i_7_n_0 ;
  wire \Q[7]_i_8_n_0 ;
  wire \Q[7]_i_9_n_0 ;
  wire \Q_reg[0] ;
  wire [0:0]\Q_reg[0]_0 ;
  wire \Q_reg[10]_i_2_n_1 ;
  wire \Q_reg[10]_i_2_n_2 ;
  wire \Q_reg[10]_i_2_n_3 ;
  wire \Q_reg[3]_i_1_n_0 ;
  wire \Q_reg[3]_i_1_n_1 ;
  wire \Q_reg[3]_i_1_n_2 ;
  wire \Q_reg[3]_i_1_n_3 ;
  wire [0:0]\Q_reg[52] ;
  wire [9:0]\Q_reg[62] ;
  wire \Q_reg[7]_i_1_n_0 ;
  wire \Q_reg[7]_i_1_n_1 ;
  wire \Q_reg[7]_i_1_n_2 ;
  wire \Q_reg[7]_i_1_n_3 ;
  wire [7:0]p_0_in;
  wire [3:3]\NLW_Q_reg[10]_i_2_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    \Q[0]_i_1__9 
       (.I0(D[11]),
        .I1(DI[0]),
        .O(\Q_reg[0] ));
  LUT4 #(
    .INIT(16'h569A)) 
    \Q[10]_i_7 
       (.I0(p_0_in[6]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[62] [9]),
        .I3(Q[9]),
        .O(\Q[10]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \Q[10]_i_8 
       (.I0(p_0_in[5]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[62] [8]),
        .I3(Q[8]),
        .O(\Q[10]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \Q[10]_i_9 
       (.I0(p_0_in[4]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[62] [7]),
        .I3(Q[7]),
        .O(\Q[10]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h33B8)) 
    \Q[3]_i_10 
       (.I0(\Q_reg[0]_0 ),
        .I1(FSM_selector_B[0]),
        .I2(\Q_reg[52] ),
        .I3(FSM_selector_B[1]),
        .O(\Q[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \Q[3]_i_7 
       (.I0(DI[3]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[62] [2]),
        .I3(Q[2]),
        .O(\Q[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \Q[3]_i_8 
       (.I0(DI[2]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[62] [1]),
        .I3(Q[1]),
        .O(\Q[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \Q[3]_i_9 
       (.I0(DI[1]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[62] [0]),
        .I3(Q[0]),
        .O(\Q[3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \Q[7]_i_6 
       (.I0(p_0_in[3]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[62] [6]),
        .I3(Q[6]),
        .O(\Q[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \Q[7]_i_7 
       (.I0(p_0_in[2]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[62] [5]),
        .I3(Q[5]),
        .O(\Q[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \Q[7]_i_8 
       (.I0(p_0_in[1]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[62] [4]),
        .I3(Q[4]),
        .O(\Q[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h569A)) 
    \Q[7]_i_9 
       (.I0(p_0_in[0]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[62] [3]),
        .I3(Q[3]),
        .O(\Q[7]_i_9_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[10]_i_2 
       (.CI(\Q_reg[7]_i_1_n_0 ),
        .CO({\NLW_Q_reg[10]_i_2_CO_UNCONNECTED [3],\Q_reg[10]_i_2_n_1 ,\Q_reg[10]_i_2_n_2 ,\Q_reg[10]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p_0_in[6:4]}),
        .O(D[11:8]),
        .S({p_0_in[7],\Q[10]_i_7_n_0 ,\Q[10]_i_8_n_0 ,\Q[10]_i_9_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\Q_reg[3]_i_1_n_0 ,\Q_reg[3]_i_1_n_1 ,\Q_reg[3]_i_1_n_2 ,\Q_reg[3]_i_1_n_3 }),
        .CYINIT(Data_A),
        .DI(DI),
        .O(D[3:0]),
        .S({\Q[3]_i_7_n_0 ,\Q[3]_i_8_n_0 ,\Q[3]_i_9_n_0 ,\Q[3]_i_10_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[7]_i_1 
       (.CI(\Q_reg[3]_i_1_n_0 ),
        .CO({\Q_reg[7]_i_1_n_0 ,\Q_reg[7]_i_1_n_1 ,\Q_reg[7]_i_1_n_2 ,\Q_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(p_0_in[3:0]),
        .O(D[7:4]),
        .S({\Q[7]_i_6_n_0 ,\Q[7]_i_7_n_0 ,\Q[7]_i_8_n_0 ,\Q[7]_i_9_n_0 }));
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
