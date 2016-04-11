// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
// Date        : Fri Apr  8 06:49:10 2016
// Host        : francis-Aspire-E1-570 running 64-bit Ubuntu 15.10
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /media/francis/Acer/Users/Francis/Documents/GitHub/Proyecto_De_Graduacion/FPU_FLM/FPU_2.0/FPU_2.0.sim/sim_1/impl/timing/Testbench_FPU_Add_Subt_time_impl.v
// Design      : FPU_Add_Subtract_Function
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Add_Subt
   (add_overflow_flag,
    D,
    \Q_reg[18] ,
    \Q_reg[24] ,
    \Q_reg[0] ,
    \Q_reg[21] ,
    \Q_reg[4] ,
    \Q_reg[2] ,
    E,
    Co_to_D,
    CLK,
    AR,
    Q,
    \Q_reg[1] ,
    \Q_reg[2]_0 ,
    FSM_barrel_shifter_L_R,
    FSM_selector_C,
    S_Shift_Value,
    \Q_reg[22] ,
    \Q_reg[0]_0 ,
    S_A_S_op,
    \Q_reg[25] ,
    \Q_reg[0]_1 ,
    \FSM_sequential_state_reg_reg[3] ,
    \Q_reg[0]_2 );
  output add_overflow_flag;
  output [18:0]D;
  output [3:0]\Q_reg[18] ;
  output [1:0]\Q_reg[24] ;
  output [1:0]\Q_reg[0] ;
  output [0:0]\Q_reg[21] ;
  output [4:0]\Q_reg[4] ;
  output [0:0]\Q_reg[2] ;
  input [0:0]E;
  input Co_to_D;
  input CLK;
  input [1:0]AR;
  input [2:0]Q;
  input [1:0]\Q_reg[1] ;
  input [2:0]\Q_reg[2]_0 ;
  input FSM_barrel_shifter_L_R;
  input FSM_selector_C;
  input [2:0]S_Shift_Value;
  input [22:0]\Q_reg[22] ;
  input \Q_reg[0]_0 ;
  input S_A_S_op;
  input [25:0]\Q_reg[25] ;
  input [25:0]\Q_reg[0]_1 ;
  input [0:0]\FSM_sequential_state_reg_reg[3] ;
  input [24:0]\Q_reg[0]_2 ;

  wire [1:0]AR;
  wire [25:1]A_S_C;
  wire [25:1]A_S_P;
  wire CLK;
  wire C_Result_n_0;
  wire C_Result_n_1;
  wire C_Result_n_26;
  wire C_Result_n_27;
  wire C_Result_n_28;
  wire C_Result_n_29;
  wire C_Result_n_30;
  wire C_Result_n_32;
  wire C_Result_n_33;
  wire Co_to_D;
  wire [18:0]D;
  wire [0:0]E;
  wire FSM_barrel_shifter_L_R;
  wire FSM_selector_C;
  wire [0:0]\FSM_sequential_state_reg_reg[3] ;
  wire P_Result_n_28;
  wire P_Result_n_29;
  wire P_Result_n_30;
  wire [2:0]Q;
  wire [1:0]\Q_reg[0] ;
  wire \Q_reg[0]_0 ;
  wire [25:0]\Q_reg[0]_1 ;
  wire [24:0]\Q_reg[0]_2 ;
  wire [3:0]\Q_reg[18] ;
  wire [1:0]\Q_reg[1] ;
  wire [0:0]\Q_reg[21] ;
  wire [22:0]\Q_reg[22] ;
  wire [1:0]\Q_reg[24] ;
  wire [25:0]\Q_reg[25] ;
  wire [0:0]\Q_reg[2] ;
  wire [2:0]\Q_reg[2]_0 ;
  wire [4:0]\Q_reg[4] ;
  wire S_A_S_op;
  wire [2:0]S_Shift_Value;
  wire add_overflow_flag;

  RegisterAdd__parameterized8 Add_Subt_Result
       (.AR(AR),
        .CLK(CLK),
        .D(D),
        .E(E),
        .FSM_barrel_shifter_L_R(FSM_barrel_shifter_L_R),
        .FSM_selector_C(FSM_selector_C),
        .Q(Q),
        .\Q_reg[0]_0 (\Q_reg[0] ),
        .\Q_reg[18]_0 (\Q_reg[18] ),
        .\Q_reg[1]_0 (\Q_reg[1] ),
        .\Q_reg[21]_0 (\Q_reg[21] ),
        .\Q_reg[22]_0 (\Q_reg[22] ),
        .\Q_reg[24]_0 (\Q_reg[24] ),
        .\Q_reg[25]_0 (\Q_reg[25] ),
        .\Q_reg[2]_0 (\Q_reg[2]_0 ),
        .S_Shift_Value(S_Shift_Value));
  RegisterAdd_5 Add_overflow_Result
       (.AR(AR[1]),
        .CLK(CLK),
        .Co_to_D(Co_to_D),
        .E(E),
        .add_overflow_flag(add_overflow_flag));
  RegisterAdd__parameterized10 C_Result
       (.AR({\FSM_sequential_state_reg_reg[3] ,AR[0]}),
        .CLK(CLK),
        .E(E),
        .Q({A_S_P[25:8],A_S_P[5:1],\Q_reg[2] }),
        .\Q_reg[0]_0 ({A_S_C[25:21],A_S_C[19:1]}),
        .\Q_reg[0]_1 (C_Result_n_32),
        .\Q_reg[0]_2 (C_Result_n_33),
        .\Q_reg[0]_3 (\Q_reg[0]_2 ),
        .\Q_reg[10]_0 (P_Result_n_29),
        .\Q_reg[11]_0 (P_Result_n_28),
        .\Q_reg[1]_0 (C_Result_n_0),
        .\Q_reg[1]_1 (C_Result_n_1),
        .\Q_reg[1]_2 (C_Result_n_28),
        .\Q_reg[1]_3 (\Q_reg[4] [1]),
        .\Q_reg[2]_0 (C_Result_n_26),
        .\Q_reg[2]_1 (C_Result_n_27),
        .\Q_reg[2]_2 (C_Result_n_29),
        .\Q_reg[2]_3 (C_Result_n_30),
        .\Q_reg[7]_0 (P_Result_n_30),
        .S_A_S_op(S_A_S_op));
  RegisterAdd__parameterized9 P_Result
       (.AR({\FSM_sequential_state_reg_reg[3] ,AR[0]}),
        .CLK(CLK),
        .E(E),
        .Q({A_S_P[25:8],A_S_P[5:1],\Q_reg[2] }),
        .\Q_reg[0]_0 (\Q_reg[0]_0 ),
        .\Q_reg[0]_1 (C_Result_n_29),
        .\Q_reg[0]_2 (\Q_reg[0]_1 ),
        .\Q_reg[11]_0 (C_Result_n_1),
        .\Q_reg[19]_0 (C_Result_n_32),
        .\Q_reg[1]_0 (P_Result_n_30),
        .\Q_reg[21]_0 (C_Result_n_26),
        .\Q_reg[22]_0 (C_Result_n_28),
        .\Q_reg[24]_0 ({A_S_C[25:21],A_S_C[19:1]}),
        .\Q_reg[25]_0 (C_Result_n_27),
        .\Q_reg[2]_0 (P_Result_n_28),
        .\Q_reg[2]_1 (P_Result_n_29),
        .\Q_reg[4]_0 ({\Q_reg[4] [4:2],\Q_reg[4] [0]}),
        .\Q_reg[4]_1 (C_Result_n_30),
        .\Q_reg[7]_0 (C_Result_n_0),
        .\Q_reg[9]_0 (C_Result_n_33));
endmodule

module Barrel_Shifter
   (\Data_array[6]_0 ,
    Q,
    \Q_reg[3] ,
    \Q_reg[0] ,
    \Q_reg[2] ,
    round_flag,
    S_A_S_Oper_A,
    \Q_reg[0]_0 ,
    D,
    FSM_barrel_shifter_L_R,
    \Q_reg[25] ,
    S_Shift_Value,
    FSM_barrel_shifter_B_S,
    FSM_selector_D,
    S_A_S_op,
    \Q_reg[21] ,
    r_mode_IBUF,
    sign_final_result,
    out,
    E,
    CLK,
    AR,
    \Q_reg[2]_0 );
  output [9:0]\Data_array[6]_0 ;
  output [15:0]Q;
  output [2:0]\Q_reg[3] ;
  output [25:0]\Q_reg[0] ;
  output [0:0]\Q_reg[2] ;
  output round_flag;
  output [21:0]S_A_S_Oper_A;
  output \Q_reg[0]_0 ;
  input [15:0]D;
  input FSM_barrel_shifter_L_R;
  input [1:0]\Q_reg[25] ;
  input [1:0]S_Shift_Value;
  input FSM_barrel_shifter_B_S;
  input FSM_selector_D;
  input S_A_S_op;
  input [21:0]\Q_reg[21] ;
  input [1:0]r_mode_IBUF;
  input sign_final_result;
  input [0:0]out;
  input [0:0]E;
  input CLK;
  input [0:0]AR;
  input [25:0]\Q_reg[2]_0 ;

  wire [0:0]AR;
  wire CLK;
  wire [15:0]D;
  wire [25:16]Data_Reg;
  wire [9:0]\Data_array[6]_0 ;
  wire [0:0]E;
  wire FSM_barrel_shifter_B_S;
  wire FSM_barrel_shifter_L_R;
  wire FSM_selector_D;
  wire [15:0]Q;
  wire [25:0]\Q_reg[0] ;
  wire \Q_reg[0]_0 ;
  wire [21:0]\Q_reg[21] ;
  wire [1:0]\Q_reg[25] ;
  wire [0:0]\Q_reg[2] ;
  wire [25:0]\Q_reg[2]_0 ;
  wire [2:0]\Q_reg[3] ;
  wire [21:0]S_A_S_Oper_A;
  wire S_A_S_op;
  wire [1:0]S_Shift_Value;
  wire [0:0]out;
  wire [1:0]r_mode_IBUF;
  wire round_flag;
  wire sign_final_result;

  Mux_Array Mux_Array
       (.AR(AR),
        .CLK(CLK),
        .D(Data_Reg),
        .\Data_array[6]_0 (\Data_array[6]_0 ),
        .FSM_barrel_shifter_B_S(FSM_barrel_shifter_B_S),
        .FSM_barrel_shifter_L_R(FSM_barrel_shifter_L_R),
        .Q(Q),
        .\Q_reg[25] (\Q_reg[25] ),
        .\Q_reg[2] (\Q_reg[2]_0 ),
        .S_Shift_Value(S_Shift_Value));
  RegisterAdd__parameterized7 Output_Reg
       (.AR(AR),
        .CLK(CLK),
        .D({Data_Reg,D}),
        .E(E),
        .FSM_selector_D(FSM_selector_D),
        .\Q_reg[0]_0 (\Q_reg[0] ),
        .\Q_reg[0]_1 (\Q_reg[0]_0 ),
        .\Q_reg[21]_0 (\Q_reg[21] ),
        .\Q_reg[2]_0 (\Q_reg[2] ),
        .\Q_reg[3]_0 (\Q_reg[3] ),
        .S_A_S_Oper_A(S_A_S_Oper_A),
        .S_A_S_op(S_A_S_op),
        .out(out),
        .r_mode_IBUF(r_mode_IBUF),
        .round_flag(round_flag),
        .sign_final_result(sign_final_result));
endmodule

module Exp_Operation
   (overflow_flag_OBUF,
    underflow_flag_OBUF,
    D,
    \Q_reg[31] ,
    Q,
    E,
    CLK,
    AR,
    \FSM_sequential_state_reg_reg[1] ,
    FSM_exp_operation_A_S,
    sign_final_result,
    \Q_reg[24] ,
    FSM_selector_D,
    \Q_reg[30] ,
    p_0_in,
    \Q_reg[0] ,
    \Q_reg[30]_0 ,
    \Q_reg[1] ,
    \Q_reg[0]_0 );
  output overflow_flag_OBUF;
  output underflow_flag_OBUF;
  output [0:0]D;
  output [31:0]\Q_reg[31] ;
  output [4:0]Q;
  input [0:0]E;
  input CLK;
  input [0:0]AR;
  input \FSM_sequential_state_reg_reg[1] ;
  input FSM_exp_operation_A_S;
  input sign_final_result;
  input [22:0]\Q_reg[24] ;
  input FSM_selector_D;
  input [7:0]\Q_reg[30] ;
  input [7:0]p_0_in;
  input \Q_reg[0] ;
  input [3:0]\Q_reg[30]_0 ;
  input [1:0]\Q_reg[1] ;
  input [0:0]\Q_reg[0]_0 ;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Data_A;
  wire [0:0]E;
  wire FSM_exp_operation_A_S;
  wire FSM_selector_D;
  wire \FSM_sequential_state_reg_reg[1] ;
  wire Overflow_flag;
  wire [4:0]Q;
  wire \Q_reg[0] ;
  wire [0:0]\Q_reg[0]_0 ;
  wire [1:0]\Q_reg[1] ;
  wire [22:0]\Q_reg[24] ;
  wire [7:0]\Q_reg[30] ;
  wire [3:0]\Q_reg[30]_0 ;
  wire [31:0]\Q_reg[31] ;
  wire exp_add_subt_n_2;
  wire exp_add_subt_n_3;
  wire exp_add_subt_n_4;
  wire exp_add_subt_n_5;
  wire exp_add_subt_n_6;
  wire exp_add_subt_n_7;
  wire exp_add_subt_n_8;
  wire exp_add_subt_n_9;
  wire exp_result_n_10;
  wire exp_result_n_8;
  wire exp_result_n_9;
  wire overflow_flag_OBUF;
  wire [7:0]p_0_in;
  wire sign_final_result;
  wire underflow_flag_OBUF;

  RegisterAdd_3 Overflow
       (.AR(AR),
        .CLK(CLK),
        .E(E),
        .Overflow_flag(Overflow_flag),
        .\Q_reg[30] (overflow_flag_OBUF));
  RegisterAdd_4 Underflowflow
       (.AR(AR),
        .CLK(CLK),
        .\FSM_sequential_state_reg_reg[1] (\FSM_sequential_state_reg_reg[1] ),
        .\Q_reg[0]_0 (overflow_flag_OBUF),
        .\Q_reg[22] (underflow_flag_OBUF),
        .\Q_reg[24] (\Q_reg[24] ),
        .\Q_reg[31] ({\Q_reg[31] [31],\Q_reg[31] [22:0]}),
        .sign_final_result(sign_final_result));
  add_sub_carry_out exp_add_subt
       (.D({D,exp_add_subt_n_2,exp_add_subt_n_3,exp_add_subt_n_4,exp_add_subt_n_5,exp_add_subt_n_6,exp_add_subt_n_7,exp_add_subt_n_8,exp_add_subt_n_9}),
        .DI({p_0_in[2:0],FSM_exp_operation_A_S}),
        .Data_A(Data_A),
        .FSM_selector_D(FSM_selector_D),
        .Overflow_flag(Overflow_flag),
        .Q({exp_result_n_8,exp_result_n_9,exp_result_n_10,Q[4:1]}),
        .\Q_reg[0] (\Q_reg[0] ),
        .\Q_reg[0]_0 (\Q_reg[0]_0 ),
        .\Q_reg[1] (\Q_reg[1] ),
        .\Q_reg[30] (\Q_reg[30]_0 ),
        .\Q_reg[30]_0 (\Q_reg[30] [7:1]),
        .p_0_in(p_0_in[7:3]));
  RegisterAdd__parameterized5 exp_result
       (.AR(AR),
        .CLK(CLK),
        .D({exp_add_subt_n_2,exp_add_subt_n_3,exp_add_subt_n_4,exp_add_subt_n_5,exp_add_subt_n_6,exp_add_subt_n_7,exp_add_subt_n_8,exp_add_subt_n_9}),
        .Data_A(Data_A),
        .E(E),
        .FSM_selector_D(FSM_selector_D),
        .Q({exp_result_n_8,exp_result_n_9,exp_result_n_10,Q}),
        .\Q_reg[0]_0 (underflow_flag_OBUF),
        .\Q_reg[0]_1 (overflow_flag_OBUF),
        .\Q_reg[23] (\Q_reg[30] [0]),
        .\Q_reg[30] (\Q_reg[31] [30:23]));
endmodule

(* ECO_CHECKSUM = "858249c3" *) (* EW = "8" *) (* EWR = "5" *) 
(* SW = "23" *) (* SWR = "26" *) (* W = "32" *) 
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

  wire [0:0]A_S_P;
  wire Add_Subt_Sgf_module_n_26;
  wire Add_Subt_Sgf_module_n_27;
  wire Add_Subt_Sgf_module_n_32;
  wire Barrel_Shifter_module_n_29;
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
  wire Barrel_Shifter_module_n_50;
  wire Barrel_Shifter_module_n_51;
  wire Barrel_Shifter_module_n_52;
  wire Barrel_Shifter_module_n_79;
  wire [25:1]C_to_D;
  wire Co_to_D;
  wire [4:0]Codec_to_Reg;
  wire [15:0]Data_Reg;
  wire [31:0]Data_X;
  wire [31:0]Data_X_IBUF;
  wire [31:0]Data_Y;
  wire [31:0]Data_Y_IBUF;
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
  wire Exp_Operation_Module_n_30;
  wire Exp_Operation_Module_n_31;
  wire Exp_Operation_Module_n_32;
  wire Exp_Operation_Module_n_33;
  wire Exp_Operation_Module_n_34;
  wire Exp_Operation_Module_n_4;
  wire Exp_Operation_Module_n_5;
  wire Exp_Operation_Module_n_6;
  wire Exp_Operation_Module_n_7;
  wire Exp_Operation_Module_n_8;
  wire Exp_Operation_Module_n_9;
  wire FSM_Add_Subt_Sgf_load;
  wire FSM_Final_Result_load;
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
  wire FS_Module_n_16;
  wire FS_Module_n_17;
  wire FS_Module_n_18;
  wire FS_Module_n_19;
  wire FS_Module_n_21;
  wire FS_Module_n_22;
  wire FS_Module_n_23;
  wire FS_Module_n_8;
  wire [4:0]LZA_output;
  wire [25:25]\Mux_Array/Data_array[0]_0 ;
  wire [25:23]\Mux_Array/Data_array[1]_1 ;
  wire [22:19]\Mux_Array/Data_array[2]_2 ;
  wire [25:0]\Mux_Array/Data_array[3]_3 ;
  wire [25:10]\Mux_Array/Data_array[4]_4 ;
  wire [17:0]\Mux_Array/Data_array[6]_5 ;
  wire Oper_Start_in_module_n_1;
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
  wire Oper_Start_in_module_n_89;
  wire Oper_Start_in_module_n_90;
  wire Oper_Start_in_module_n_91;
  wire Oper_Start_in_module_n_92;
  wire Oper_Start_in_module_n_93;
  wire Oper_Start_in_module_n_94;
  wire Oper_Start_in_module_n_95;
  wire Oper_Start_in_module_n_96;
  wire Oper_Start_in_module_n_97;
  wire Oper_Start_in_module_n_98;
  wire Oper_Start_in_module_n_99;
  wire [25:0]P_to_D;
  wire [23:2]S_A_S_Oper_A;
  wire S_A_S_op;
  wire [4:0]S_Shift_Value;
  wire [25:0]S_to_D;
  wire Sel_B_n_32;
  wire Sel_B_n_33;
  wire Sel_B_n_34;
  wire Sel_B_n_35;
  wire Sel_B_n_36;
  wire Sel_B_n_37;
  wire Sel_B_n_38;
  wire Sel_B_n_39;
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
  wire [4:0]exp_oper_result;
  wire [31:0]final_result_ieee;
  wire [31:0]final_result_ieee_OBUF;
  wire load_b;
  wire overflow_flag;
  wire overflow_flag_OBUF;
  wire [1:0]r_mode;
  wire [1:0]r_mode_IBUF;
  wire ready;
  wire ready_OBUF;
  wire round_flag;
  wire rst;
  wire rst_FSM;
  wire rst_FSM_IBUF;
  wire rst_IBUF;
  wire rst_int;
  wire [1:1]selector_B;
  wire sign_final_result;
  wire underflow_flag;
  wire underflow_flag_OBUF;

initial begin
 $sdf_annotate("Testbench_FPU_Add_Subt_time_impl.sdf",,,,"tool_control");
end
  Add_Subt Add_Subt_Sgf_module
       (.AR({FS_Module_n_19,FS_Module_n_17}),
        .CLK(clk_IBUF_BUFG),
        .Co_to_D(Co_to_D),
        .D(\Mux_Array/Data_array[3]_3 [18:0]),
        .E(FSM_Add_Subt_Sgf_load),
        .FSM_barrel_shifter_L_R(FSM_barrel_shifter_L_R),
        .FSM_selector_C(FSM_selector_C),
        .\FSM_sequential_state_reg_reg[3] (FS_Module_n_18),
        .Q(LZA_output[2:0]),
        .\Q_reg[0] ({Add_Subt_Sgf_module_n_26,Add_Subt_Sgf_module_n_27}),
        .\Q_reg[0]_0 (Oper_Start_in_module_n_107),
        .\Q_reg[0]_1 (P_to_D),
        .\Q_reg[0]_2 (C_to_D),
        .\Q_reg[18] (\Mux_Array/Data_array[2]_2 ),
        .\Q_reg[1] (FSM_selector_B),
        .\Q_reg[21] (\Mux_Array/Data_array[0]_0 ),
        .\Q_reg[22] ({Oper_Start_in_module_n_118,Oper_Start_in_module_n_119,Oper_Start_in_module_n_120,Oper_Start_in_module_n_121,Oper_Start_in_module_n_122,Oper_Start_in_module_n_123,Oper_Start_in_module_n_124,Oper_Start_in_module_n_125,Oper_Start_in_module_n_126,Oper_Start_in_module_n_127,Oper_Start_in_module_n_128,Oper_Start_in_module_n_129,Oper_Start_in_module_n_130,Oper_Start_in_module_n_131,Oper_Start_in_module_n_132,Oper_Start_in_module_n_133,Oper_Start_in_module_n_134,Oper_Start_in_module_n_135,Oper_Start_in_module_n_136,Oper_Start_in_module_n_137,Oper_Start_in_module_n_138,Oper_Start_in_module_n_139,Oper_Start_in_module_n_140}),
        .\Q_reg[24] (\Mux_Array/Data_array[1]_1 [24:23]),
        .\Q_reg[25] (S_to_D),
        .\Q_reg[2] (A_S_P),
        .\Q_reg[2]_0 (exp_oper_result[2:0]),
        .\Q_reg[4] ({Codec_to_Reg[4:2],Add_Subt_Sgf_module_n_32,Codec_to_Reg[0]}),
        .S_A_S_op(S_A_S_op),
        .S_Shift_Value(S_Shift_Value[2:0]),
        .add_overflow_flag(add_overflow_flag));
  Barrel_Shifter Barrel_Shifter_module
       (.AR(FS_Module_n_19),
        .CLK(clk_IBUF_BUFG),
        .D(Data_Reg),
        .\Data_array[6]_0 (\Mux_Array/Data_array[6]_5 [9:0]),
        .E(FSM_barrel_shifter_load),
        .FSM_barrel_shifter_B_S(FSM_barrel_shifter_B_S),
        .FSM_barrel_shifter_L_R(FSM_barrel_shifter_L_R),
        .FSM_selector_D(FSM_selector_D),
        .Q(\Mux_Array/Data_array[4]_4 ),
        .\Q_reg[0] ({Barrel_Shifter_module_n_29,Barrel_Shifter_module_n_30,Barrel_Shifter_module_n_31,Barrel_Shifter_module_n_32,Barrel_Shifter_module_n_33,Barrel_Shifter_module_n_34,Barrel_Shifter_module_n_35,Barrel_Shifter_module_n_36,Barrel_Shifter_module_n_37,Barrel_Shifter_module_n_38,Barrel_Shifter_module_n_39,Barrel_Shifter_module_n_40,Barrel_Shifter_module_n_41,Barrel_Shifter_module_n_42,Barrel_Shifter_module_n_43,Barrel_Shifter_module_n_44,Barrel_Shifter_module_n_45,Barrel_Shifter_module_n_46,Barrel_Shifter_module_n_47,Barrel_Shifter_module_n_48,Barrel_Shifter_module_n_49,Barrel_Shifter_module_n_50,Barrel_Shifter_module_n_51,Barrel_Shifter_module_n_52,Sgf_normalized_result}),
        .\Q_reg[0]_0 (Barrel_Shifter_module_n_79),
        .\Q_reg[21] ({Oper_Start_in_module_n_85,Oper_Start_in_module_n_86,Oper_Start_in_module_n_87,Oper_Start_in_module_n_88,Oper_Start_in_module_n_89,Oper_Start_in_module_n_90,Oper_Start_in_module_n_91,Oper_Start_in_module_n_92,Oper_Start_in_module_n_93,Oper_Start_in_module_n_94,Oper_Start_in_module_n_95,Oper_Start_in_module_n_96,Oper_Start_in_module_n_97,Oper_Start_in_module_n_98,Oper_Start_in_module_n_99,Oper_Start_in_module_n_100,Oper_Start_in_module_n_101,Oper_Start_in_module_n_102,Oper_Start_in_module_n_103,Oper_Start_in_module_n_104,Oper_Start_in_module_n_105,Oper_Start_in_module_n_106}),
        .\Q_reg[25] (\Mux_Array/Data_array[6]_5 [17:16]),
        .\Q_reg[2] (C_to_D[3]),
        .\Q_reg[2]_0 (\Mux_Array/Data_array[3]_3 ),
        .\Q_reg[3] ({S_to_D[3:2],S_to_D[0]}),
        .S_A_S_Oper_A(S_A_S_Oper_A),
        .S_A_S_op(S_A_S_op),
        .S_Shift_Value(S_Shift_Value[4:3]),
        .out(FS_Module_n_0),
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
  Exp_Operation Exp_Operation_Module
       (.AR(FS_Module_n_19),
        .CLK(clk_IBUF_BUFG),
        .D(anomaly),
        .E(FSM_exp_operation_load_diff),
        .FSM_exp_operation_A_S(FSM_exp_operation_A_S),
        .FSM_selector_D(FSM_selector_D),
        .\FSM_sequential_state_reg_reg[1] (FS_Module_n_22),
        .Q(exp_oper_result),
        .\Q_reg[0] (Sel_B_n_32),
        .\Q_reg[0]_0 (LZA_output[0]),
        .\Q_reg[1] (FSM_selector_B),
        .\Q_reg[24] ({Barrel_Shifter_module_n_30,Barrel_Shifter_module_n_31,Barrel_Shifter_module_n_32,Barrel_Shifter_module_n_33,Barrel_Shifter_module_n_34,Barrel_Shifter_module_n_35,Barrel_Shifter_module_n_36,Barrel_Shifter_module_n_37,Barrel_Shifter_module_n_38,Barrel_Shifter_module_n_39,Barrel_Shifter_module_n_40,Barrel_Shifter_module_n_41,Barrel_Shifter_module_n_42,Barrel_Shifter_module_n_43,Barrel_Shifter_module_n_44,Barrel_Shifter_module_n_45,Barrel_Shifter_module_n_46,Barrel_Shifter_module_n_47,Barrel_Shifter_module_n_48,Barrel_Shifter_module_n_49,Barrel_Shifter_module_n_50,Barrel_Shifter_module_n_51,Barrel_Shifter_module_n_52}),
        .\Q_reg[30] ({Oper_Start_in_module_n_77,Oper_Start_in_module_n_78,Oper_Start_in_module_n_79,Oper_Start_in_module_n_80,Oper_Start_in_module_n_81,Oper_Start_in_module_n_82,Oper_Start_in_module_n_83,Oper_Start_in_module_n_84}),
        .\Q_reg[30]_0 ({Oper_Start_in_module_n_110,Oper_Start_in_module_n_111,Oper_Start_in_module_n_112,Oper_Start_in_module_n_117}),
        .\Q_reg[31] ({Sign_S_mux,Exp_Operation_Module_n_4,Exp_Operation_Module_n_5,Exp_Operation_Module_n_6,Exp_Operation_Module_n_7,Exp_Operation_Module_n_8,Exp_Operation_Module_n_9,Exp_Operation_Module_n_10,Exp_Operation_Module_n_11,Exp_Operation_Module_n_12,Exp_Operation_Module_n_13,Exp_Operation_Module_n_14,Exp_Operation_Module_n_15,Exp_Operation_Module_n_16,Exp_Operation_Module_n_17,Exp_Operation_Module_n_18,Exp_Operation_Module_n_19,Exp_Operation_Module_n_20,Exp_Operation_Module_n_21,Exp_Operation_Module_n_22,Exp_Operation_Module_n_23,Exp_Operation_Module_n_24,Exp_Operation_Module_n_25,Exp_Operation_Module_n_26,Exp_Operation_Module_n_27,Exp_Operation_Module_n_28,Exp_Operation_Module_n_29,Exp_Operation_Module_n_30,Exp_Operation_Module_n_31,Exp_Operation_Module_n_32,Exp_Operation_Module_n_33,Exp_Operation_Module_n_34}),
        .overflow_flag_OBUF(overflow_flag_OBUF),
        .p_0_in({FS_Module_n_16,Sel_B_n_33,Sel_B_n_34,Sel_B_n_35,Sel_B_n_36,Sel_B_n_37,Sel_B_n_38,Sel_B_n_39}),
        .sign_final_result(sign_final_result),
        .underflow_flag_OBUF(underflow_flag_OBUF));
  FSM_Add_Subtract FS_Module
       (.AR(rst_int),
        .D({selector_B,FS_Module_n_8}),
        .\Data_array[1]_0 (\Mux_Array/Data_array[1]_1 [25]),
        .E(FSM_Add_Subt_Sgf_load),
        .FSM_barrel_shifter_B_S(FSM_barrel_shifter_B_S),
        .FSM_barrel_shifter_L_R(FSM_barrel_shifter_L_R),
        .FSM_exp_operation_A_S(FSM_exp_operation_A_S),
        .FSM_selector_C(FSM_selector_C),
        .FSM_selector_D(FSM_selector_D),
        .\FSM_sequential_state_reg_reg[1]_0 (anomaly),
        .\FSM_sequential_state_reg_reg[2]_0 (Oper_Start_in_module_n_1),
        .\FSM_sequential_state_reg_reg[3]_0 (Barrel_Shifter_module_n_79),
        .\Q_reg[0] (FSM_exp_operation_load_diff),
        .\Q_reg[0]_0 (FSM_op_start_in_load_a),
        .\Q_reg[0]_1 (FSM_Final_Result_load),
        .\Q_reg[0]_2 (FSM_barrel_shifter_load),
        .\Q_reg[0]_3 (FSM_op_start_in_load_b),
        .\Q_reg[0]_4 (FS_Module_n_21),
        .\Q_reg[0]_5 (FS_Module_n_22),
        .\Q_reg[0]_6 (FS_Module_n_23),
        .\Q_reg[0]_7 (Oper_Start_in_module_n_108),
        .\Q_reg[0]_8 (Oper_Start_in_module_n_109),
        .\Q_reg[1] (load_b),
        .\Q_reg[25] ({Add_Subt_Sgf_module_n_26,Add_Subt_Sgf_module_n_27}),
        .\Q_reg[26] ({FS_Module_n_17,FS_Module_n_18,FS_Module_n_19}),
        .S_Shift_Value(S_Shift_Value[0]),
        .add_overflow_flag(add_overflow_flag),
        .beg_FSM_IBUF(beg_FSM_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out({FS_Module_n_0,FS_Module_n_1}),
        .p_0_in(FS_Module_n_16),
        .ready_OBUF(ready_OBUF),
        .round_flag(round_flag),
        .rst(rst_IBUF),
        .rst_FSM_IBUF(rst_FSM_IBUF),
        .underflow_flag_OBUF(underflow_flag_OBUF));
  LZA Leading_Zero_Anticipator_Module
       (.D({Codec_to_Reg[4:2],Add_Subt_Sgf_module_n_32,Codec_to_Reg[0]}),
        .E(load_b),
        .\FSM_sequential_state_reg_reg[3] (FS_Module_n_19),
        .Q(LZA_output),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  Oper_Start_In Oper_Start_in_module
       (.AR(rst_int),
        .Co_to_D(Co_to_D),
        .D(Data_X_IBUF),
        .\Data_Y[31] (Data_Y_IBUF),
        .E(FSM_op_start_in_load_b),
        .FSM_selector_C(FSM_selector_C),
        .FSM_selector_D(FSM_selector_D),
        .\FSM_sequential_state_reg_reg[0] (FSM_op_start_in_load_a),
        .\FSM_sequential_state_reg_reg[2] (Oper_Start_in_module_n_108),
        .\FSM_sequential_state_reg_reg[3] ({FS_Module_n_17,FS_Module_n_18,FS_Module_n_19}),
        .Q({Oper_Start_in_module_n_77,Oper_Start_in_module_n_78,Oper_Start_in_module_n_79,Oper_Start_in_module_n_80,Oper_Start_in_module_n_81,Oper_Start_in_module_n_82,Oper_Start_in_module_n_83,Oper_Start_in_module_n_84,Oper_Start_in_module_n_85,Oper_Start_in_module_n_86,Oper_Start_in_module_n_87,Oper_Start_in_module_n_88,Oper_Start_in_module_n_89,Oper_Start_in_module_n_90,Oper_Start_in_module_n_91,Oper_Start_in_module_n_92,Oper_Start_in_module_n_93,Oper_Start_in_module_n_94,Oper_Start_in_module_n_95,Oper_Start_in_module_n_96,Oper_Start_in_module_n_97,Oper_Start_in_module_n_98,Oper_Start_in_module_n_99,Oper_Start_in_module_n_100,Oper_Start_in_module_n_101,Oper_Start_in_module_n_102,Oper_Start_in_module_n_103,Oper_Start_in_module_n_104,Oper_Start_in_module_n_105,Oper_Start_in_module_n_106}),
        .\Q_reg[0] (Oper_Start_in_module_n_1),
        .\Q_reg[0]_0 (Oper_Start_in_module_n_109),
        .\Q_reg[0]_1 (C_to_D[3]),
        .\Q_reg[0]_2 (A_S_P),
        .\Q_reg[24] ({C_to_D[25:4],C_to_D[2:1]}),
        .\Q_reg[25] ({S_to_D[25:4],S_to_D[1]}),
        .\Q_reg[25]_0 (P_to_D),
        .\Q_reg[25]_1 ({Barrel_Shifter_module_n_29,Barrel_Shifter_module_n_30,Barrel_Shifter_module_n_31,Barrel_Shifter_module_n_32,Barrel_Shifter_module_n_33,Barrel_Shifter_module_n_34,Barrel_Shifter_module_n_35,Barrel_Shifter_module_n_36,Barrel_Shifter_module_n_37,Barrel_Shifter_module_n_38,Barrel_Shifter_module_n_39,Barrel_Shifter_module_n_40,Barrel_Shifter_module_n_41,Barrel_Shifter_module_n_42,Barrel_Shifter_module_n_43,Barrel_Shifter_module_n_44,Barrel_Shifter_module_n_45,Barrel_Shifter_module_n_46,Barrel_Shifter_module_n_47,Barrel_Shifter_module_n_48,Barrel_Shifter_module_n_49,Barrel_Shifter_module_n_50,Barrel_Shifter_module_n_51,Barrel_Shifter_module_n_52,Sgf_normalized_result}),
        .\Q_reg[4] (Oper_Start_in_module_n_107),
        .\Q_reg[7] ({Oper_Start_in_module_n_110,Oper_Start_in_module_n_111,Oper_Start_in_module_n_112,Oper_Start_in_module_n_113,Oper_Start_in_module_n_114,Oper_Start_in_module_n_115,Oper_Start_in_module_n_116,Oper_Start_in_module_n_117,Oper_Start_in_module_n_118,Oper_Start_in_module_n_119,Oper_Start_in_module_n_120,Oper_Start_in_module_n_121,Oper_Start_in_module_n_122,Oper_Start_in_module_n_123,Oper_Start_in_module_n_124,Oper_Start_in_module_n_125,Oper_Start_in_module_n_126,Oper_Start_in_module_n_127,Oper_Start_in_module_n_128,Oper_Start_in_module_n_129,Oper_Start_in_module_n_130,Oper_Start_in_module_n_131,Oper_Start_in_module_n_132,Oper_Start_in_module_n_133,Oper_Start_in_module_n_134,Oper_Start_in_module_n_135,Oper_Start_in_module_n_136,Oper_Start_in_module_n_137,Oper_Start_in_module_n_138,Oper_Start_in_module_n_139,Oper_Start_in_module_n_140}),
        .S_A_S_Oper_A(S_A_S_Oper_A),
        .S_A_S_op(S_A_S_op),
        .add_overflow_flag(add_overflow_flag),
        .add_subt_IBUF(add_subt_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out(FS_Module_n_1),
        .sign_final_result(sign_final_result));
  RegisterAdd__parameterized0 Sel_B
       (.D(Data_Reg),
        .\Data_array[1]_0 (\Mux_Array/Data_array[1]_1 ),
        .E(load_b),
        .FSM_barrel_shifter_B_S(FSM_barrel_shifter_B_S),
        .FSM_barrel_shifter_L_R(FSM_barrel_shifter_L_R),
        .FSM_exp_operation_A_S(FSM_exp_operation_A_S),
        .\FSM_sequential_state_reg_reg[2] ({selector_B,FS_Module_n_8}),
        .\FSM_sequential_state_reg_reg[3] (FS_Module_n_19),
        .Q(\Mux_Array/Data_array[4]_4 ),
        .\Q_reg[0]_0 (\Mux_Array/Data_array[0]_0 ),
        .\Q_reg[19] (FSM_selector_B),
        .\Q_reg[1]_0 (\Mux_Array/Data_array[2]_2 ),
        .\Q_reg[25] (\Mux_Array/Data_array[3]_3 [25:19]),
        .\Q_reg[30] ({Oper_Start_in_module_n_110,Oper_Start_in_module_n_111,Oper_Start_in_module_n_112,Oper_Start_in_module_n_113,Oper_Start_in_module_n_114,Oper_Start_in_module_n_115,Oper_Start_in_module_n_116}),
        .\Q_reg[4] (LZA_output),
        .\Q_reg[4]_0 (exp_oper_result),
        .\Q_reg[7] (Sel_B_n_32),
        .\Q_reg[8] (\Mux_Array/Data_array[6]_5 [17:16]),
        .\Q_reg[9] (\Mux_Array/Data_array[6]_5 [9:0]),
        .S_Shift_Value(S_Shift_Value),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .p_0_in({Sel_B_n_33,Sel_B_n_34,Sel_B_n_35,Sel_B_n_36,Sel_B_n_37,Sel_B_n_38,Sel_B_n_39}));
  RegisterAdd Sel_C
       (.FSM_selector_C(FSM_selector_C),
        .\FSM_sequential_state_reg_reg[1] (FS_Module_n_23),
        .\FSM_sequential_state_reg_reg[3] (FS_Module_n_19),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  RegisterAdd_0 Sel_D
       (.FSM_selector_D(FSM_selector_D),
        .\FSM_sequential_state_reg_reg[2] (FS_Module_n_21),
        .\FSM_sequential_state_reg_reg[3] (FS_Module_n_19),
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
        .D({Sign_S_mux,Exp_Operation_Module_n_4,Exp_Operation_Module_n_5,Exp_Operation_Module_n_6,Exp_Operation_Module_n_7,Exp_Operation_Module_n_8,Exp_Operation_Module_n_9,Exp_Operation_Module_n_10,Exp_Operation_Module_n_11,Exp_Operation_Module_n_12,Exp_Operation_Module_n_13,Exp_Operation_Module_n_14,Exp_Operation_Module_n_15,Exp_Operation_Module_n_16,Exp_Operation_Module_n_17,Exp_Operation_Module_n_18,Exp_Operation_Module_n_19,Exp_Operation_Module_n_20,Exp_Operation_Module_n_21,Exp_Operation_Module_n_22,Exp_Operation_Module_n_23,Exp_Operation_Module_n_24,Exp_Operation_Module_n_25,Exp_Operation_Module_n_26,Exp_Operation_Module_n_27,Exp_Operation_Module_n_28,Exp_Operation_Module_n_29,Exp_Operation_Module_n_30,Exp_Operation_Module_n_31,Exp_Operation_Module_n_32,Exp_Operation_Module_n_33,Exp_Operation_Module_n_34}),
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
   (out,
    ready_OBUF,
    E,
    \Q_reg[1] ,
    \Q_reg[0] ,
    \Q_reg[0]_0 ,
    D,
    FSM_exp_operation_A_S,
    AR,
    \Q_reg[0]_1 ,
    FSM_barrel_shifter_B_S,
    FSM_barrel_shifter_L_R,
    \Q_reg[0]_2 ,
    \Q_reg[0]_3 ,
    p_0_in,
    \Q_reg[26] ,
    \Data_array[1]_0 ,
    \Q_reg[0]_4 ,
    \Q_reg[0]_5 ,
    \Q_reg[0]_6 ,
    round_flag,
    \Q_reg[0]_7 ,
    FSM_selector_C,
    \Q_reg[0]_8 ,
    beg_FSM_IBUF,
    rst_FSM_IBUF,
    \FSM_sequential_state_reg_reg[2]_0 ,
    add_overflow_flag,
    \FSM_sequential_state_reg_reg[3]_0 ,
    S_Shift_Value,
    \Q_reg[25] ,
    FSM_selector_D,
    \FSM_sequential_state_reg_reg[1]_0 ,
    underflow_flag_OBUF,
    clk_IBUF_BUFG,
    rst);
  output [1:0]out;
  output ready_OBUF;
  output [0:0]E;
  output [0:0]\Q_reg[1] ;
  output [0:0]\Q_reg[0] ;
  output [0:0]\Q_reg[0]_0 ;
  output [1:0]D;
  output FSM_exp_operation_A_S;
  output [0:0]AR;
  output [0:0]\Q_reg[0]_1 ;
  output FSM_barrel_shifter_B_S;
  output FSM_barrel_shifter_L_R;
  output [0:0]\Q_reg[0]_2 ;
  output [0:0]\Q_reg[0]_3 ;
  output [0:0]p_0_in;
  output [2:0]\Q_reg[26] ;
  output [0:0]\Data_array[1]_0 ;
  output \Q_reg[0]_4 ;
  output \Q_reg[0]_5 ;
  output \Q_reg[0]_6 ;
  input round_flag;
  input \Q_reg[0]_7 ;
  input FSM_selector_C;
  input \Q_reg[0]_8 ;
  input beg_FSM_IBUF;
  input rst_FSM_IBUF;
  input \FSM_sequential_state_reg_reg[2]_0 ;
  input add_overflow_flag;
  input \FSM_sequential_state_reg_reg[3]_0 ;
  input [0:0]S_Shift_Value;
  input [1:0]\Q_reg[25] ;
  input FSM_selector_D;
  input [0:0]\FSM_sequential_state_reg_reg[1]_0 ;
  input underflow_flag_OBUF;
  input clk_IBUF_BUFG;
  input [0:0]rst;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]\Data_array[1]_0 ;
  wire [0:0]E;
  wire FSM_barrel_shifter_B_S;
  wire FSM_barrel_shifter_L_R;
  wire FSM_exp_operation_A_S;
  wire FSM_selector_C;
  wire FSM_selector_D;
  wire \FSM_sequential_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[3]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[3]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[4]_i_3_n_0 ;
  wire [0:0]\FSM_sequential_state_reg_reg[1]_0 ;
  wire \FSM_sequential_state_reg_reg[2]_0 ;
  wire \FSM_sequential_state_reg_reg[3]_0 ;
  wire \Q[0]_i_2__4_n_0 ;
  wire \Q[0]_i_2_n_0 ;
  wire \Q[0]_i_3_n_0 ;
  wire \Q[25]_i_9_n_0 ;
  wire [0:0]\Q_reg[0] ;
  wire [0:0]\Q_reg[0]_0 ;
  wire [0:0]\Q_reg[0]_1 ;
  wire [0:0]\Q_reg[0]_2 ;
  wire [0:0]\Q_reg[0]_3 ;
  wire \Q_reg[0]_4 ;
  wire \Q_reg[0]_5 ;
  wire \Q_reg[0]_6 ;
  wire \Q_reg[0]_7 ;
  wire \Q_reg[0]_8 ;
  wire [0:0]\Q_reg[1] ;
  wire [1:0]\Q_reg[25] ;
  wire [2:0]\Q_reg[26] ;
  wire [0:0]S_Shift_Value;
  wire add_overflow_flag;
  wire beg_FSM_IBUF;
  wire clk_IBUF_BUFG;
  (* RTL_KEEP = "yes" *) wire [1:0]out;
  wire [0:0]p_0_in;
  wire ready_OBUF;
  wire round_flag;
  wire [0:0]rst;
  wire rst_FSM_IBUF;
  (* RTL_KEEP = "yes" *) wire [4:0]state_reg;
  wire underflow_flag_OBUF;

  LUT6 #(
    .INIT(64'hFFFFFF010101FF01)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(state_reg[4]),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(\FSM_sequential_state_reg[0]_i_2_n_0 ),
        .I4(out[0]),
        .I5(\FSM_sequential_state_reg[0]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1115131311150303)) 
    \FSM_sequential_state_reg[0]_i_2 
       (.I0(state_reg[4]),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(add_overflow_flag),
        .I4(out[1]),
        .I5(\Q_reg[0]_7 ),
        .O(\FSM_sequential_state_reg[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000001F)) 
    \FSM_sequential_state_reg[0]_i_3 
       (.I0(FSM_selector_C),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .I3(state_reg[4]),
        .I4(out[1]),
        .O(\FSM_sequential_state_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000303030C4C0C4C)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(out[1]),
        .I1(state_reg[0]),
        .I2(state_reg[4]),
        .I3(out[0]),
        .I4(\FSM_sequential_state_reg_reg[3]_0 ),
        .I5(state_reg[1]),
        .O(\FSM_sequential_state_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00660066002244AE)) 
    \FSM_sequential_state_reg[2]_i_1 
       (.I0(out[0]),
        .I1(state_reg[1]),
        .I2(\Q_reg[0]_7 ),
        .I3(state_reg[4]),
        .I4(out[1]),
        .I5(state_reg[0]),
        .O(\FSM_sequential_state_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF7F)) 
    \FSM_sequential_state_reg[3]_i_1 
       (.I0(out[0]),
        .I1(state_reg[1]),
        .I2(round_flag),
        .I3(state_reg[0]),
        .I4(state_reg[4]),
        .I5(\FSM_sequential_state_reg[3]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC3C30F0BC0C30F0B)) 
    \FSM_sequential_state_reg[3]_i_3 
       (.I0(\Q_reg[0]_7 ),
        .I1(state_reg[1]),
        .I2(out[1]),
        .I3(state_reg[0]),
        .I4(out[0]),
        .I5(FSM_selector_C),
        .O(\FSM_sequential_state_reg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001110)) 
    \FSM_sequential_state_reg[4]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(beg_FSM_IBUF),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .I5(\FSM_sequential_state_reg[4]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40020002)) 
    \FSM_sequential_state_reg[4]_i_2 
       (.I0(state_reg[4]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(state_reg[1]),
        .I4(state_reg[0]),
        .O(\FSM_sequential_state_reg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5455555555555F5A)) 
    \FSM_sequential_state_reg[4]_i_3 
       (.I0(state_reg[4]),
        .I1(rst_FSM_IBUF),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(out[0]),
        .I5(out[1]),
        .O(\FSM_sequential_state_reg[4]_i_3_n_0 ));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[4]_i_1_n_0 ),
        .CLR(rst),
        .D(\FSM_sequential_state_reg[0]_i_1_n_0 ),
        .Q(state_reg[0]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[4]_i_1_n_0 ),
        .CLR(rst),
        .D(\FSM_sequential_state_reg[1]_i_1_n_0 ),
        .Q(state_reg[1]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[4]_i_1_n_0 ),
        .CLR(rst),
        .D(\FSM_sequential_state_reg[2]_i_1_n_0 ),
        .Q(out[0]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[4]_i_1_n_0 ),
        .CLR(rst),
        .D(\FSM_sequential_state_reg[3]_i_1_n_0 ),
        .Q(out[1]));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg[4]_i_1_n_0 ),
        .CLR(rst),
        .D(\FSM_sequential_state_reg[4]_i_2_n_0 ),
        .Q(state_reg[4]));
  LUT5 #(
    .INIT(32'h00000110)) 
    \Q[0]_i_1 
       (.I0(state_reg[0]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(state_reg[4]),
        .I4(state_reg[1]),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \Q[0]_i_1__0 
       (.I0(state_reg[0]),
        .I1(state_reg[4]),
        .I2(\Q_reg[0]_7 ),
        .I3(state_reg[1]),
        .I4(out[1]),
        .I5(out[0]),
        .O(\Q_reg[0]_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000040)) 
    \Q[0]_i_1__11 
       (.I0(\FSM_sequential_state_reg_reg[3]_0 ),
        .I1(out[0]),
        .I2(state_reg[1]),
        .I3(state_reg[4]),
        .I4(state_reg[0]),
        .I5(FSM_selector_D),
        .O(\Q_reg[0]_4 ));
  LUT6 #(
    .INIT(64'hF8FFFFFF08000000)) 
    \Q[0]_i_1__12 
       (.I0(FSM_exp_operation_A_S),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(\Q[0]_i_2__4_n_0 ),
        .I3(\Q[0]_i_3_n_0 ),
        .I4(state_reg[1]),
        .I5(underflow_flag_OBUF),
        .O(\Q_reg[0]_5 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    \Q[0]_i_1__13 
       (.I0(state_reg[1]),
        .I1(out[0]),
        .I2(state_reg[0]),
        .I3(out[1]),
        .I4(state_reg[4]),
        .I5(FSM_selector_C),
        .O(\Q_reg[0]_6 ));
  LUT6 #(
    .INIT(64'h0838000000000000)) 
    \Q[0]_i_1__14 
       (.I0(\Q_reg[0]_8 ),
        .I1(state_reg[4]),
        .I2(out[1]),
        .I3(add_overflow_flag),
        .I4(\Q[0]_i_2_n_0 ),
        .I5(state_reg[0]),
        .O(D[0]));
  LUT2 #(
    .INIT(4'h1)) 
    \Q[0]_i_2 
       (.I0(out[0]),
        .I1(state_reg[1]),
        .O(\Q[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \Q[0]_i_2__4 
       (.I0(out[0]),
        .I1(state_reg[0]),
        .O(\Q[0]_i_2__4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[0]_i_3 
       (.I0(out[1]),
        .I1(state_reg[4]),
        .O(\Q[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h33333333317F3177)) 
    \Q[0]_i_3__0 
       (.I0(state_reg[1]),
        .I1(state_reg[4]),
        .I2(state_reg[0]),
        .I3(out[1]),
        .I4(\Q_reg[0]_8 ),
        .I5(out[0]),
        .O(p_0_in));
  LUT5 #(
    .INIT(32'h01100000)) 
    \Q[1]_i_1 
       (.I0(out[0]),
        .I1(state_reg[1]),
        .I2(out[1]),
        .I3(state_reg[4]),
        .I4(state_reg[0]),
        .O(\Q_reg[1] ));
  LUT6 #(
    .INIT(64'h0010001000001000)) 
    \Q[1]_i_2 
       (.I0(out[0]),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .I3(state_reg[4]),
        .I4(\Q_reg[0]_8 ),
        .I5(out[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \Q[1]_i_3 
       (.I0(out[1]),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .I3(state_reg[4]),
        .I4(out[0]),
        .O(\Q_reg[26] [0]));
  LUT6 #(
    .INIT(64'hB8BBB88888BB88BB)) 
    \Q[23]_i_3 
       (.I0(FSM_barrel_shifter_B_S),
        .I1(S_Shift_Value),
        .I2(\Q_reg[25] [0]),
        .I3(FSM_barrel_shifter_L_R),
        .I4(\Q_reg[25] [1]),
        .I5(FSM_selector_C),
        .O(\Data_array[1]_0 ));
  LUT5 #(
    .INIT(32'h01100000)) 
    \Q[25]_i_1 
       (.I0(state_reg[4]),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .I3(out[1]),
        .I4(out[0]),
        .O(\Q_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \Q[25]_i_4 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(\Q_reg[0]_8 ),
        .I3(FSM_selector_C),
        .I4(state_reg[4]),
        .I5(state_reg[1]),
        .O(FSM_barrel_shifter_L_R));
  LUT5 #(
    .INIT(32'h00015501)) 
    \Q[25]_i_6 
       (.I0(state_reg[4]),
        .I1(\FSM_sequential_state_reg_reg[2]_0 ),
        .I2(state_reg[1]),
        .I3(out[1]),
        .I4(\Q[25]_i_9_n_0 ),
        .O(FSM_barrel_shifter_B_S));
  LUT4 #(
    .INIT(16'hF7DF)) 
    \Q[25]_i_9 
       (.I0(add_overflow_flag),
        .I1(state_reg[1]),
        .I2(out[0]),
        .I3(state_reg[0]),
        .O(\Q[25]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \Q[27]_i_2 
       (.I0(out[1]),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .I3(state_reg[4]),
        .I4(out[0]),
        .O(AR));
  LUT5 #(
    .INIT(32'h00000001)) 
    \Q[30]_i_1 
       (.I0(out[1]),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .I3(state_reg[4]),
        .I4(out[0]),
        .O(\Q_reg[26] [1]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \Q[31]_i_1 
       (.I0(state_reg[0]),
        .I1(out[0]),
        .I2(state_reg[1]),
        .I3(out[1]),
        .I4(state_reg[4]),
        .O(\Q_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \Q[31]_i_1__0 
       (.I0(state_reg[1]),
        .I1(out[0]),
        .I2(state_reg[0]),
        .I3(state_reg[4]),
        .I4(out[1]),
        .O(\Q_reg[0]_1 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \Q[31]_i_2 
       (.I0(out[1]),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .I3(state_reg[4]),
        .I4(out[0]),
        .O(\Q_reg[26] [2]));
  LUT6 #(
    .INIT(64'h33333333317F3177)) 
    \Q[3]_i_6 
       (.I0(state_reg[1]),
        .I1(state_reg[4]),
        .I2(state_reg[0]),
        .I3(out[1]),
        .I4(\Q_reg[0]_8 ),
        .I5(out[0]),
        .O(FSM_exp_operation_A_S));
  LUT5 #(
    .INIT(32'h00040440)) 
    \Q[7]_i_1 
       (.I0(out[0]),
        .I1(state_reg[1]),
        .I2(state_reg[4]),
        .I3(out[1]),
        .I4(state_reg[0]),
        .O(\Q_reg[0] ));
  LUT5 #(
    .INIT(32'h00400000)) 
    ready_OBUF_inst_i_1
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .I2(out[0]),
        .I3(state_reg[4]),
        .I4(out[1]),
        .O(ready_OBUF));
endmodule

module LZA
   (Q,
    E,
    D,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[3] );
  output [4:0]Q;
  input [0:0]E;
  input [4:0]D;
  input clk_IBUF_BUFG;
  input [0:0]\FSM_sequential_state_reg_reg[3] ;

  wire [4:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_sequential_state_reg_reg[3] ;
  wire [4:0]Q;
  wire clk_IBUF_BUFG;

  RegisterAdd__parameterized11 Output_Reg
       (.D(D),
        .E(E),
        .\FSM_sequential_state_reg_reg[3] (\FSM_sequential_state_reg_reg[3] ),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
endmodule

module Mux_Array
   (D,
    \Data_array[6]_0 ,
    Q,
    FSM_barrel_shifter_L_R,
    \Q_reg[25] ,
    S_Shift_Value,
    FSM_barrel_shifter_B_S,
    \Q_reg[2] ,
    CLK,
    AR);
  output [9:0]D;
  output [9:0]\Data_array[6]_0 ;
  output [15:0]Q;
  input FSM_barrel_shifter_L_R;
  input [1:0]\Q_reg[25] ;
  input [1:0]S_Shift_Value;
  input FSM_barrel_shifter_B_S;
  input [25:0]\Q_reg[2] ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [9:0]D;
  wire [9:0]\Data_array[6]_0 ;
  wire FSM_barrel_shifter_B_S;
  wire FSM_barrel_shifter_L_R;
  wire [15:0]Q;
  wire [1:0]\Q_reg[25] ;
  wire [25:0]\Q_reg[2] ;
  wire [1:0]S_Shift_Value;

  RegisterAdd__parameterized6 Mid_Reg
       (.AR(AR),
        .CLK(CLK),
        .D(D),
        .\Data_array[6]_0 (\Data_array[6]_0 ),
        .FSM_barrel_shifter_B_S(FSM_barrel_shifter_B_S),
        .FSM_barrel_shifter_L_R(FSM_barrel_shifter_L_R),
        .Q(Q),
        .\Q_reg[25]_0 (\Q_reg[25] ),
        .\Q_reg[2]_0 (\Q_reg[2] ),
        .S_Shift_Value(S_Shift_Value));
endmodule

module Oper_Start_In
   (sign_final_result,
    \Q_reg[0] ,
    \Q_reg[25] ,
    S_A_S_op,
    \Q_reg[24] ,
    Co_to_D,
    \Q_reg[25]_0 ,
    Q,
    \Q_reg[4] ,
    \FSM_sequential_state_reg_reg[2] ,
    \Q_reg[0]_0 ,
    \Q_reg[7] ,
    E,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[3] ,
    \FSM_sequential_state_reg_reg[0] ,
    add_subt_IBUF,
    out,
    add_overflow_flag,
    FSM_selector_C,
    \Q_reg[25]_1 ,
    FSM_selector_D,
    S_A_S_Oper_A,
    \Q_reg[0]_1 ,
    \Q_reg[0]_2 ,
    D,
    \Data_Y[31] ,
    AR);
  output sign_final_result;
  output \Q_reg[0] ;
  output [22:0]\Q_reg[25] ;
  output S_A_S_op;
  output [23:0]\Q_reg[24] ;
  output Co_to_D;
  output [25:0]\Q_reg[25]_0 ;
  output [29:0]Q;
  output \Q_reg[4] ;
  output \FSM_sequential_state_reg_reg[2] ;
  output \Q_reg[0]_0 ;
  output [30:0]\Q_reg[7] ;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input [2:0]\FSM_sequential_state_reg_reg[3] ;
  input [0:0]\FSM_sequential_state_reg_reg[0] ;
  input add_subt_IBUF;
  input [0:0]out;
  input add_overflow_flag;
  input FSM_selector_C;
  input [25:0]\Q_reg[25]_1 ;
  input FSM_selector_D;
  input [21:0]S_A_S_Oper_A;
  input [0:0]\Q_reg[0]_1 ;
  input [0:0]\Q_reg[0]_2 ;
  input [31:0]D;
  input [31:0]\Data_Y[31] ;
  input [0:0]AR;

  wire [0:0]AR;
  wire Co_to_D;
  wire [31:0]D;
  wire [31:0]\Data_Y[31] ;
  wire [0:0]E;
  wire FSM_selector_C;
  wire FSM_selector_D;
  wire [0:0]\FSM_sequential_state_reg_reg[0] ;
  wire \FSM_sequential_state_reg_reg[2] ;
  wire [2:0]\FSM_sequential_state_reg_reg[3] ;
  wire MRegister_n_22;
  wire MRegister_n_68;
  wire MRegister_n_69;
  wire MRegister_n_70;
  wire MRegister_n_71;
  wire [29:0]Q;
  wire \Q_reg[0] ;
  wire \Q_reg[0]_0 ;
  wire [0:0]\Q_reg[0]_1 ;
  wire [0:0]\Q_reg[0]_2 ;
  wire [23:0]\Q_reg[24] ;
  wire [22:0]\Q_reg[25] ;
  wire [25:0]\Q_reg[25]_0 ;
  wire [25:0]\Q_reg[25]_1 ;
  wire \Q_reg[4] ;
  wire [30:0]\Q_reg[7] ;
  wire [21:0]S_A_S_Oper_A;
  wire S_A_S_op;
  wire XRegister_n_10;
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
  wire XRegister_n_11;
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
  wire XRegister_n_12;
  wire XRegister_n_120;
  wire XRegister_n_121;
  wire XRegister_n_122;
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
  wire XRegister_n_4;
  wire XRegister_n_5;
  wire XRegister_n_6;
  wire XRegister_n_61;
  wire XRegister_n_62;
  wire XRegister_n_63;
  wire XRegister_n_64;
  wire XRegister_n_65;
  wire XRegister_n_66;
  wire XRegister_n_67;
  wire XRegister_n_68;
  wire XRegister_n_69;
  wire XRegister_n_7;
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
  wire XRegister_n_8;
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
  wire XRegister_n_9;
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
  wire YRegister_n_1;
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
  wire YRegister_n_40;
  wire YRegister_n_41;
  wire YRegister_n_42;
  wire YRegister_n_43;
  wire YRegister_n_44;
  wire YRegister_n_45;
  wire YRegister_n_46;
  wire YRegister_n_47;
  wire YRegister_n_48;
  wire YRegister_n_5;
  wire YRegister_n_6;
  wire YRegister_n_7;
  wire YRegister_n_8;
  wire YRegister_n_9;
  wire add_overflow_flag;
  wire add_subt_IBUF;
  wire clk_IBUF_BUFG;
  wire eqXY;
  wire intAS;
  wire [31:31]intDX;
  wire [31:31]intDY;
  wire [0:0]out;
  wire sign_final_result;
  wire sign_result;

  RegisterAdd_1 ASRegister
       (.CO(eqXY),
        .FSM_selector_D(FSM_selector_D),
        .\FSM_sequential_state_reg_reg[0] (\FSM_sequential_state_reg_reg[0] ),
        .\FSM_sequential_state_reg_reg[2] (\FSM_sequential_state_reg_reg[2] ),
        .\FSM_sequential_state_reg_reg[3] (\FSM_sequential_state_reg_reg[3] [2]),
        .Q({Q[21],Q[18],Q[16],Q[13],Q[11],Q[8],Q[6],Q[3]}),
        .\Q_reg[0]_0 (\Q_reg[0]_0 ),
        .\Q_reg[0]_1 ({\Q_reg[24] [21],\Q_reg[24] [18],\Q_reg[24] [16],\Q_reg[24] [13],\Q_reg[24] [11],\Q_reg[24] [8],\Q_reg[24] [6],\Q_reg[24] [3]}),
        .\Q_reg[23] ({\Q_reg[25] [20],\Q_reg[25] [17],\Q_reg[25] [15],\Q_reg[25] [12],\Q_reg[25] [10],\Q_reg[25] [7],\Q_reg[25] [5],\Q_reg[25] [2],\Q_reg[25] [0]}),
        .\Q_reg[25] ({\Q_reg[25]_0 [25],\Q_reg[25]_0 [1:0]}),
        .\Q_reg[25]_0 ({\Q_reg[25]_1 [25],\Q_reg[25]_1 [23],\Q_reg[25]_1 [20],\Q_reg[25]_1 [18],\Q_reg[25]_1 [15],\Q_reg[25]_1 [13],\Q_reg[25]_1 [10],\Q_reg[25]_1 [8],\Q_reg[25]_1 [5],\Q_reg[25]_1 [1:0]}),
        .\Q_reg[31] (intDY),
        .\Q_reg[31]_0 (intDX),
        .\Q_reg[5] (S_A_S_op),
        .add_overflow_flag(add_overflow_flag),
        .add_subt_IBUF(add_subt_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .intAS(intAS));
  RegisterAdd__parameterized3 MRegister
       (.D({XRegister_n_61,XRegister_n_62,XRegister_n_63,XRegister_n_64,XRegister_n_65,XRegister_n_66,XRegister_n_67,XRegister_n_68,XRegister_n_69,XRegister_n_70,XRegister_n_71,XRegister_n_72,XRegister_n_73,XRegister_n_74,XRegister_n_75,XRegister_n_76,XRegister_n_77,XRegister_n_78,XRegister_n_79,XRegister_n_80,XRegister_n_81,XRegister_n_82,XRegister_n_83,XRegister_n_84,XRegister_n_85,XRegister_n_86,XRegister_n_87,XRegister_n_88,XRegister_n_89,XRegister_n_90,XRegister_n_91}),
        .E(E),
        .FSM_selector_D(FSM_selector_D),
        .\FSM_sequential_state_reg_reg[3] ({\FSM_sequential_state_reg_reg[3] [2],\FSM_sequential_state_reg_reg[3] [0]}),
        .Q({Q[29:22],MRegister_n_22,Q[21:0]}),
        .\Q_reg[0]_0 (S_A_S_op),
        .\Q_reg[0]_1 ({\Q_reg[24] [21],\Q_reg[24] [19:18],\Q_reg[24] [16],\Q_reg[24] [14:13],\Q_reg[24] [11],\Q_reg[24] [9:8],\Q_reg[24] [6],\Q_reg[24] [4:3]}),
        .\Q_reg[0]_2 (\Q_reg[0]_1 ),
        .\Q_reg[11]_0 (MRegister_n_69),
        .\Q_reg[16]_0 (MRegister_n_70),
        .\Q_reg[21]_0 (MRegister_n_71),
        .\Q_reg[22]_0 (\Q_reg[24] [22]),
        .\Q_reg[24]_0 (\Q_reg[25]_0 [24:2]),
        .\Q_reg[25]_0 ({\Q_reg[25] [22:21],\Q_reg[25] [19:18],\Q_reg[25] [16],\Q_reg[25] [14:13],\Q_reg[25] [11],\Q_reg[25] [9:8],\Q_reg[25] [6],\Q_reg[25] [4:3],\Q_reg[25] [1]}),
        .\Q_reg[25]_1 (\Q_reg[25]_1 [25:2]),
        .\Q_reg[31] (intDY),
        .\Q_reg[31]_0 (intDX),
        .\Q_reg[6]_0 (MRegister_n_68),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .intAS(intAS));
  RegisterAdd_2 SignRegister
       (.E(E),
        .\FSM_sequential_state_reg_reg[3] (\FSM_sequential_state_reg_reg[3] [0]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .sign_final_result(sign_final_result),
        .sign_result(sign_result));
  RegisterAdd__parameterized1 XRegister
       (.CO(eqXY),
        .Co_to_D(Co_to_D),
        .D({XRegister_n_61,XRegister_n_62,XRegister_n_63,XRegister_n_64,XRegister_n_65,XRegister_n_66,XRegister_n_67,XRegister_n_68,XRegister_n_69,XRegister_n_70,XRegister_n_71,XRegister_n_72,XRegister_n_73,XRegister_n_74,XRegister_n_75,XRegister_n_76,XRegister_n_77,XRegister_n_78,XRegister_n_79,XRegister_n_80,XRegister_n_81,XRegister_n_82,XRegister_n_83,XRegister_n_84,XRegister_n_85,XRegister_n_86,XRegister_n_87,XRegister_n_88,XRegister_n_89,XRegister_n_90,XRegister_n_91}),
        .\Data_X[31] (D),
        .FSM_selector_C(FSM_selector_C),
        .FSM_selector_D(FSM_selector_D),
        .\FSM_sequential_state_reg_reg[0] (\FSM_sequential_state_reg_reg[0] ),
        .\FSM_sequential_state_reg_reg[3] (\FSM_sequential_state_reg_reg[3] [2:1]),
        .Q({intDX,XRegister_n_2,XRegister_n_3,XRegister_n_4,XRegister_n_5,XRegister_n_6,XRegister_n_7,XRegister_n_8,XRegister_n_9,XRegister_n_10,XRegister_n_11,XRegister_n_12,XRegister_n_13,XRegister_n_14,XRegister_n_15,XRegister_n_16,XRegister_n_17,XRegister_n_18,XRegister_n_19,XRegister_n_20,XRegister_n_21,XRegister_n_22,XRegister_n_23,XRegister_n_24,XRegister_n_25,XRegister_n_26,XRegister_n_27,XRegister_n_28,XRegister_n_29,XRegister_n_30,XRegister_n_31,XRegister_n_32}),
        .\Q_reg[0]_0 (\Q_reg[0] ),
        .\Q_reg[0]_1 (S_A_S_op),
        .\Q_reg[0]_2 (\Q_reg[0]_2 ),
        .\Q_reg[12]_0 (MRegister_n_70),
        .\Q_reg[15]_0 ({YRegister_n_36,YRegister_n_37,YRegister_n_38,YRegister_n_39}),
        .\Q_reg[17]_0 (MRegister_n_71),
        .\Q_reg[17]_1 ({\Q_reg[25]_0 [19],\Q_reg[25]_0 [14],\Q_reg[25]_0 [9],\Q_reg[25]_0 [4]}),
        .\Q_reg[22]_0 ({MRegister_n_22,Q[20],Q[17],Q[15],Q[12],Q[10],Q[7],Q[5],Q[2]}),
        .\Q_reg[23]_0 (\Q_reg[24] [22]),
        .\Q_reg[23]_1 ({YRegister_n_40,YRegister_n_41,YRegister_n_42,YRegister_n_43}),
        .\Q_reg[24]_0 ({\Q_reg[24] [23],\Q_reg[24] [21:0]}),
        .\Q_reg[25]_0 (\Q_reg[25]_1 ),
        .\Q_reg[2]_0 (MRegister_n_68),
        .\Q_reg[30]_0 ({XRegister_n_92,XRegister_n_93,XRegister_n_94,XRegister_n_95,XRegister_n_96,XRegister_n_97,XRegister_n_98,XRegister_n_99,XRegister_n_100,XRegister_n_101,XRegister_n_102,XRegister_n_103,XRegister_n_104,XRegister_n_105,XRegister_n_106,XRegister_n_107,XRegister_n_108,XRegister_n_109,XRegister_n_110,XRegister_n_111,XRegister_n_112,XRegister_n_113,XRegister_n_114,XRegister_n_115,XRegister_n_116,XRegister_n_117,XRegister_n_118,XRegister_n_119,XRegister_n_120,XRegister_n_121,XRegister_n_122}),
        .\Q_reg[30]_1 ({YRegister_n_44,YRegister_n_45,YRegister_n_46,YRegister_n_47}),
        .\Q_reg[30]_2 (YRegister_n_48),
        .\Q_reg[31]_0 ({intDY,YRegister_n_5,YRegister_n_6,YRegister_n_7,YRegister_n_8,YRegister_n_9,YRegister_n_10,YRegister_n_11,YRegister_n_12,YRegister_n_13,YRegister_n_14,YRegister_n_15,YRegister_n_16,YRegister_n_17,YRegister_n_18,YRegister_n_19,YRegister_n_20,YRegister_n_21,YRegister_n_22,YRegister_n_23,YRegister_n_24,YRegister_n_25,YRegister_n_26,YRegister_n_27,YRegister_n_28,YRegister_n_29,YRegister_n_30,YRegister_n_31,YRegister_n_32,YRegister_n_33,YRegister_n_34,YRegister_n_35}),
        .\Q_reg[4]_0 (\Q_reg[4] ),
        .\Q_reg[7]_0 (MRegister_n_69),
        .S({YRegister_n_0,YRegister_n_1,YRegister_n_2,YRegister_n_3}),
        .S_A_S_Oper_A(S_A_S_Oper_A),
        .add_overflow_flag(add_overflow_flag),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .intAS(intAS),
        .out(out),
        .sign_result(sign_result));
  RegisterAdd__parameterized2 YRegister
       (.\Data_Y[31] (\Data_Y[31] ),
        .\FSM_sequential_state_reg_reg[0] (\FSM_sequential_state_reg_reg[0] ),
        .\FSM_sequential_state_reg_reg[3] (\FSM_sequential_state_reg_reg[3] ),
        .Q({intDY,YRegister_n_5,YRegister_n_6,YRegister_n_7,YRegister_n_8,YRegister_n_9,YRegister_n_10,YRegister_n_11,YRegister_n_12,YRegister_n_13,YRegister_n_14,YRegister_n_15,YRegister_n_16,YRegister_n_17,YRegister_n_18,YRegister_n_19,YRegister_n_20,YRegister_n_21,YRegister_n_22,YRegister_n_23,YRegister_n_24,YRegister_n_25,YRegister_n_26,YRegister_n_27,YRegister_n_28,YRegister_n_29,YRegister_n_30,YRegister_n_31,YRegister_n_32,YRegister_n_33,YRegister_n_34,YRegister_n_35}),
        .\Q_reg[0]_0 ({YRegister_n_36,YRegister_n_37,YRegister_n_38,YRegister_n_39}),
        .\Q_reg[0]_1 ({YRegister_n_40,YRegister_n_41,YRegister_n_42,YRegister_n_43}),
        .\Q_reg[0]_2 ({YRegister_n_44,YRegister_n_45,YRegister_n_46,YRegister_n_47}),
        .\Q_reg[0]_3 (YRegister_n_48),
        .\Q_reg[30]_0 ({XRegister_n_2,XRegister_n_3,XRegister_n_4,XRegister_n_5,XRegister_n_6,XRegister_n_7,XRegister_n_8,XRegister_n_9,XRegister_n_10,XRegister_n_11,XRegister_n_12,XRegister_n_13,XRegister_n_14,XRegister_n_15,XRegister_n_16,XRegister_n_17,XRegister_n_18,XRegister_n_19,XRegister_n_20,XRegister_n_21,XRegister_n_22,XRegister_n_23,XRegister_n_24,XRegister_n_25,XRegister_n_26,XRegister_n_27,XRegister_n_28,XRegister_n_29,XRegister_n_30,XRegister_n_31,XRegister_n_32}),
        .S({YRegister_n_0,YRegister_n_1,YRegister_n_2,YRegister_n_3}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  RegisterAdd__parameterized4 mRegister
       (.AR(AR),
        .D({XRegister_n_92,XRegister_n_93,XRegister_n_94,XRegister_n_95,XRegister_n_96,XRegister_n_97,XRegister_n_98,XRegister_n_99,XRegister_n_100,XRegister_n_101,XRegister_n_102,XRegister_n_103,XRegister_n_104,XRegister_n_105,XRegister_n_106,XRegister_n_107,XRegister_n_108,XRegister_n_109,XRegister_n_110,XRegister_n_111,XRegister_n_112,XRegister_n_113,XRegister_n_114,XRegister_n_115,XRegister_n_116,XRegister_n_117,XRegister_n_118,XRegister_n_119,XRegister_n_120,XRegister_n_121,XRegister_n_122}),
        .E(E),
        .\FSM_sequential_state_reg_reg[3] ({\FSM_sequential_state_reg_reg[3] [2],\FSM_sequential_state_reg_reg[3] [0]}),
        .\Q_reg[7]_0 (\Q_reg[7] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
endmodule

module RegisterAdd
   (FSM_selector_C,
    \FSM_sequential_state_reg_reg[1] ,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[3] );
  output FSM_selector_C;
  input \FSM_sequential_state_reg_reg[1] ;
  input clk_IBUF_BUFG;
  input [0:0]\FSM_sequential_state_reg_reg[3] ;

  wire FSM_selector_C;
  wire \FSM_sequential_state_reg_reg[1] ;
  wire [0:0]\FSM_sequential_state_reg_reg[3] ;
  wire clk_IBUF_BUFG;

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
    \FSM_sequential_state_reg_reg[2] ,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[3] );
  output FSM_selector_D;
  input \FSM_sequential_state_reg_reg[2] ;
  input clk_IBUF_BUFG;
  input [0:0]\FSM_sequential_state_reg_reg[3] ;

  wire FSM_selector_D;
  wire \FSM_sequential_state_reg_reg[2] ;
  wire [0:0]\FSM_sequential_state_reg_reg[3] ;
  wire clk_IBUF_BUFG;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_state_reg_reg[3] ),
        .D(\FSM_sequential_state_reg_reg[2] ),
        .Q(FSM_selector_D));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd_1
   (intAS,
    \Q_reg[23] ,
    \Q_reg[5] ,
    \Q_reg[25] ,
    \FSM_sequential_state_reg_reg[2] ,
    \Q_reg[0]_0 ,
    \FSM_sequential_state_reg_reg[0] ,
    add_subt_IBUF,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[3] ,
    FSM_selector_D,
    \Q_reg[25]_0 ,
    Q,
    \Q_reg[0]_1 ,
    \Q_reg[31] ,
    \Q_reg[31]_0 ,
    CO,
    add_overflow_flag);
  output intAS;
  output [8:0]\Q_reg[23] ;
  output \Q_reg[5] ;
  output [2:0]\Q_reg[25] ;
  output \FSM_sequential_state_reg_reg[2] ;
  output \Q_reg[0]_0 ;
  input [0:0]\FSM_sequential_state_reg_reg[0] ;
  input add_subt_IBUF;
  input clk_IBUF_BUFG;
  input [0:0]\FSM_sequential_state_reg_reg[3] ;
  input FSM_selector_D;
  input [10:0]\Q_reg[25]_0 ;
  input [7:0]Q;
  input [7:0]\Q_reg[0]_1 ;
  input [0:0]\Q_reg[31] ;
  input [0:0]\Q_reg[31]_0 ;
  input [0:0]CO;
  input add_overflow_flag;

  wire [0:0]CO;
  wire FSM_selector_D;
  wire [0:0]\FSM_sequential_state_reg_reg[0] ;
  wire \FSM_sequential_state_reg_reg[2] ;
  wire [0:0]\FSM_sequential_state_reg_reg[3] ;
  wire [7:0]Q;
  wire \Q_reg[0]_0 ;
  wire [7:0]\Q_reg[0]_1 ;
  wire [8:0]\Q_reg[23] ;
  wire [2:0]\Q_reg[25] ;
  wire [10:0]\Q_reg[25]_0 ;
  wire [0:0]\Q_reg[31] ;
  wire [0:0]\Q_reg[31]_0 ;
  wire \Q_reg[5] ;
  wire add_overflow_flag;
  wire add_subt_IBUF;
  wire clk_IBUF_BUFG;
  wire intAS;

  LUT4 #(
    .INIT(16'h69FF)) 
    \FSM_sequential_state_reg[2]_i_2 
       (.I0(intAS),
        .I1(\Q_reg[31] ),
        .I2(\Q_reg[31]_0 ),
        .I3(CO),
        .O(\FSM_sequential_state_reg_reg[2] ));
  LUT5 #(
    .INIT(32'h0069FF96)) 
    \Q[0]_i_1__5 
       (.I0(intAS),
        .I1(\Q_reg[31] ),
        .I2(\Q_reg[31]_0 ),
        .I3(FSM_selector_D),
        .I4(\Q_reg[25]_0 [0]),
        .O(\Q_reg[25] [0]));
  LUT4 #(
    .INIT(16'h0096)) 
    \Q[0]_i_3__1 
       (.I0(intAS),
        .I1(\Q_reg[31] ),
        .I2(\Q_reg[31]_0 ),
        .I3(FSM_selector_D),
        .O(\Q_reg[5] ));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[10]_i_1__2 
       (.I0(FSM_selector_D),
        .I1(\Q_reg[25]_0 [4]),
        .I2(\Q_reg[5] ),
        .I3(Q[2]),
        .I4(\Q_reg[0]_1 [2]),
        .O(\Q_reg[23] [3]));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[13]_i_1__2 
       (.I0(FSM_selector_D),
        .I1(\Q_reg[25]_0 [5]),
        .I2(\Q_reg[5] ),
        .I3(Q[3]),
        .I4(\Q_reg[0]_1 [3]),
        .O(\Q_reg[23] [4]));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[15]_i_1__2 
       (.I0(FSM_selector_D),
        .I1(\Q_reg[25]_0 [6]),
        .I2(\Q_reg[5] ),
        .I3(Q[4]),
        .I4(\Q_reg[0]_1 [4]),
        .O(\Q_reg[23] [5]));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[18]_i_1__2 
       (.I0(FSM_selector_D),
        .I1(\Q_reg[25]_0 [7]),
        .I2(\Q_reg[5] ),
        .I3(Q[5]),
        .I4(\Q_reg[0]_1 [5]),
        .O(\Q_reg[23] [6]));
  LUT6 #(
    .INIT(64'h55556996AAAAAAAA)) 
    \Q[1]_i_1__3 
       (.I0(\Q_reg[25]_0 [1]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[25]_0 [0]),
        .O(\Q_reg[23] [0]));
  LUT5 #(
    .INIT(32'hFF690096)) 
    \Q[1]_i_1__4 
       (.I0(intAS),
        .I1(\Q_reg[31] ),
        .I2(\Q_reg[31]_0 ),
        .I3(FSM_selector_D),
        .I4(\Q_reg[25]_0 [1]),
        .O(\Q_reg[25] [1]));
  LUT4 #(
    .INIT(16'h96FF)) 
    \Q[1]_i_4 
       (.I0(intAS),
        .I1(\Q_reg[31] ),
        .I2(\Q_reg[31]_0 ),
        .I3(add_overflow_flag),
        .O(\Q_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[20]_i_1__2 
       (.I0(FSM_selector_D),
        .I1(\Q_reg[25]_0 [8]),
        .I2(\Q_reg[5] ),
        .I3(Q[6]),
        .I4(\Q_reg[0]_1 [6]),
        .O(\Q_reg[23] [7]));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[23]_i_1__2 
       (.I0(FSM_selector_D),
        .I1(\Q_reg[25]_0 [9]),
        .I2(\Q_reg[5] ),
        .I3(Q[7]),
        .I4(\Q_reg[0]_1 [7]),
        .O(\Q_reg[23] [8]));
  LUT5 #(
    .INIT(32'hFF960069)) 
    \Q[25]_i_1__2 
       (.I0(intAS),
        .I1(\Q_reg[31] ),
        .I2(\Q_reg[31]_0 ),
        .I3(FSM_selector_D),
        .I4(\Q_reg[25]_0 [10]),
        .O(\Q_reg[25] [2]));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[5]_i_1__2 
       (.I0(FSM_selector_D),
        .I1(\Q_reg[25]_0 [2]),
        .I2(\Q_reg[5] ),
        .I3(Q[0]),
        .I4(\Q_reg[0]_1 [0]),
        .O(\Q_reg[23] [1]));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[8]_i_1__2 
       (.I0(FSM_selector_D),
        .I1(\Q_reg[25]_0 [3]),
        .I2(\Q_reg[5] ),
        .I3(Q[1]),
        .I4(\Q_reg[0]_1 [1]),
        .O(\Q_reg[23] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] ),
        .D(add_subt_IBUF),
        .Q(intAS));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd_2
   (sign_final_result,
    E,
    sign_result,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[3] );
  output sign_final_result;
  input [0:0]E;
  input sign_result;
  input clk_IBUF_BUFG;
  input [0:0]\FSM_sequential_state_reg_reg[3] ;

  wire [0:0]E;
  wire [0:0]\FSM_sequential_state_reg_reg[3] ;
  wire clk_IBUF_BUFG;
  wire sign_final_result;
  wire sign_result;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] ),
        .D(sign_result),
        .Q(sign_final_result));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd_3
   (\Q_reg[30] ,
    E,
    Overflow_flag,
    CLK,
    AR);
  output \Q_reg[30] ;
  input [0:0]E;
  input Overflow_flag;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]E;
  wire Overflow_flag;
  wire \Q_reg[30] ;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(Overflow_flag),
        .Q(\Q_reg[30] ));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd_4
   (\Q_reg[22] ,
    \Q_reg[31] ,
    \FSM_sequential_state_reg_reg[1] ,
    CLK,
    AR,
    \Q_reg[0]_0 ,
    sign_final_result,
    \Q_reg[24] );
  output \Q_reg[22] ;
  output [23:0]\Q_reg[31] ;
  input \FSM_sequential_state_reg_reg[1] ;
  input CLK;
  input [0:0]AR;
  input \Q_reg[0]_0 ;
  input sign_final_result;
  input [22:0]\Q_reg[24] ;

  wire [0:0]AR;
  wire CLK;
  wire \FSM_sequential_state_reg_reg[1] ;
  wire \Q_reg[0]_0 ;
  wire \Q_reg[22] ;
  wire [22:0]\Q_reg[24] ;
  wire [23:0]\Q_reg[31] ;
  wire sign_final_result;

  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[0]_i_1__7 
       (.I0(\Q_reg[24] [0]),
        .I1(\Q_reg[22] ),
        .I2(\Q_reg[0]_0 ),
        .O(\Q_reg[31] [0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[10]_i_1__4 
       (.I0(\Q_reg[24] [10]),
        .I1(\Q_reg[22] ),
        .I2(\Q_reg[0]_0 ),
        .O(\Q_reg[31] [10]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[11]_i_1__4 
       (.I0(\Q_reg[24] [11]),
        .I1(\Q_reg[22] ),
        .I2(\Q_reg[0]_0 ),
        .O(\Q_reg[31] [11]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[12]_i_1__4 
       (.I0(\Q_reg[24] [12]),
        .I1(\Q_reg[22] ),
        .I2(\Q_reg[0]_0 ),
        .O(\Q_reg[31] [12]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[13]_i_1__4 
       (.I0(\Q_reg[24] [13]),
        .I1(\Q_reg[22] ),
        .I2(\Q_reg[0]_0 ),
        .O(\Q_reg[31] [13]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[14]_i_1__4 
       (.I0(\Q_reg[24] [14]),
        .I1(\Q_reg[22] ),
        .I2(\Q_reg[0]_0 ),
        .O(\Q_reg[31] [14]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[15]_i_1__4 
       (.I0(\Q_reg[24] [15]),
        .I1(\Q_reg[22] ),
        .I2(\Q_reg[0]_0 ),
        .O(\Q_reg[31] [15]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[16]_i_1__4 
       (.I0(\Q_reg[24] [16]),
        .I1(\Q_reg[22] ),
        .I2(\Q_reg[0]_0 ),
        .O(\Q_reg[31] [16]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[17]_i_1__4 
       (.I0(\Q_reg[24] [17]),
        .I1(\Q_reg[22] ),
        .I2(\Q_reg[0]_0 ),
        .O(\Q_reg[31] [17]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[18]_i_1__4 
       (.I0(\Q_reg[24] [18]),
        .I1(\Q_reg[22] ),
        .I2(\Q_reg[0]_0 ),
        .O(\Q_reg[31] [18]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[19]_i_1__4 
       (.I0(\Q_reg[24] [19]),
        .I1(\Q_reg[22] ),
        .I2(\Q_reg[0]_0 ),
        .O(\Q_reg[31] [19]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[1]_i_1__5 
       (.I0(\Q_reg[24] [1]),
        .I1(\Q_reg[22] ),
        .I2(\Q_reg[0]_0 ),
        .O(\Q_reg[31] [1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[20]_i_1__4 
       (.I0(\Q_reg[24] [20]),
        .I1(\Q_reg[22] ),
        .I2(\Q_reg[0]_0 ),
        .O(\Q_reg[31] [20]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[21]_i_1__4 
       (.I0(\Q_reg[24] [21]),
        .I1(\Q_reg[22] ),
        .I2(\Q_reg[0]_0 ),
        .O(\Q_reg[31] [21]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[22]_i_1__4 
       (.I0(\Q_reg[24] [22]),
        .I1(\Q_reg[22] ),
        .I2(\Q_reg[0]_0 ),
        .O(\Q_reg[31] [22]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[2]_i_1__5 
       (.I0(\Q_reg[24] [2]),
        .I1(\Q_reg[22] ),
        .I2(\Q_reg[0]_0 ),
        .O(\Q_reg[31] [2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \Q[31]_i_2__0 
       (.I0(\Q_reg[22] ),
        .I1(\Q_reg[0]_0 ),
        .I2(sign_final_result),
        .O(\Q_reg[31] [23]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[3]_i_1__5 
       (.I0(\Q_reg[24] [3]),
        .I1(\Q_reg[22] ),
        .I2(\Q_reg[0]_0 ),
        .O(\Q_reg[31] [3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[4]_i_1__5 
       (.I0(\Q_reg[24] [4]),
        .I1(\Q_reg[22] ),
        .I2(\Q_reg[0]_0 ),
        .O(\Q_reg[31] [4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[5]_i_1__4 
       (.I0(\Q_reg[24] [5]),
        .I1(\Q_reg[22] ),
        .I2(\Q_reg[0]_0 ),
        .O(\Q_reg[31] [5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[6]_i_1__4 
       (.I0(\Q_reg[24] [6]),
        .I1(\Q_reg[22] ),
        .I2(\Q_reg[0]_0 ),
        .O(\Q_reg[31] [6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[7]_i_1__5 
       (.I0(\Q_reg[24] [7]),
        .I1(\Q_reg[22] ),
        .I2(\Q_reg[0]_0 ),
        .O(\Q_reg[31] [7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[8]_i_1__4 
       (.I0(\Q_reg[24] [8]),
        .I1(\Q_reg[22] ),
        .I2(\Q_reg[0]_0 ),
        .O(\Q_reg[31] [8]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Q[9]_i_1__4 
       (.I0(\Q_reg[24] [9]),
        .I1(\Q_reg[22] ),
        .I2(\Q_reg[0]_0 ),
        .O(\Q_reg[31] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state_reg_reg[1] ),
        .Q(\Q_reg[22] ));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd_5
   (add_overflow_flag,
    E,
    Co_to_D,
    CLK,
    AR);
  output add_overflow_flag;
  input [0:0]E;
  input Co_to_D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire Co_to_D;
  wire [0:0]E;
  wire add_overflow_flag;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(Co_to_D),
        .Q(add_overflow_flag));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized0
   (D,
    \Q_reg[8] ,
    S_Shift_Value,
    \Q_reg[25] ,
    \Q_reg[19] ,
    \Q_reg[7] ,
    p_0_in,
    FSM_barrel_shifter_L_R,
    \Q_reg[9] ,
    FSM_barrel_shifter_B_S,
    Q,
    \Q_reg[1]_0 ,
    \Q_reg[4] ,
    \Q_reg[4]_0 ,
    \Data_array[1]_0 ,
    \Q_reg[0]_0 ,
    FSM_exp_operation_A_S,
    \Q_reg[30] ,
    E,
    \FSM_sequential_state_reg_reg[2] ,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[3] );
  output [15:0]D;
  output [1:0]\Q_reg[8] ;
  output [4:0]S_Shift_Value;
  output [6:0]\Q_reg[25] ;
  output [1:0]\Q_reg[19] ;
  output \Q_reg[7] ;
  output [6:0]p_0_in;
  input FSM_barrel_shifter_L_R;
  input [9:0]\Q_reg[9] ;
  input FSM_barrel_shifter_B_S;
  input [15:0]Q;
  input [3:0]\Q_reg[1]_0 ;
  input [4:0]\Q_reg[4] ;
  input [4:0]\Q_reg[4]_0 ;
  input [2:0]\Data_array[1]_0 ;
  input [0:0]\Q_reg[0]_0 ;
  input FSM_exp_operation_A_S;
  input [6:0]\Q_reg[30] ;
  input [0:0]E;
  input [1:0]\FSM_sequential_state_reg_reg[2] ;
  input clk_IBUF_BUFG;
  input [0:0]\FSM_sequential_state_reg_reg[3] ;

  wire [24:23]\Barrel_Shifter_module/Mux_Array/Data_array[2] ;
  wire [15:10]\Barrel_Shifter_module/Mux_Array/Data_array[6] ;
  wire [15:0]D;
  wire [2:0]\Data_array[1]_0 ;
  wire [0:0]E;
  wire FSM_barrel_shifter_B_S;
  wire FSM_barrel_shifter_L_R;
  wire FSM_exp_operation_A_S;
  wire [1:0]\FSM_sequential_state_reg_reg[2] ;
  wire [0:0]\FSM_sequential_state_reg_reg[3] ;
  wire [15:0]Q;
  wire [0:0]\Q_reg[0]_0 ;
  wire [1:0]\Q_reg[19] ;
  wire [3:0]\Q_reg[1]_0 ;
  wire [6:0]\Q_reg[25] ;
  wire [6:0]\Q_reg[30] ;
  wire [4:0]\Q_reg[4] ;
  wire [4:0]\Q_reg[4]_0 ;
  wire \Q_reg[7] ;
  wire [1:0]\Q_reg[8] ;
  wire [9:0]\Q_reg[9] ;
  wire [4:0]S_Shift_Value;
  wire clk_IBUF_BUFG;
  wire [6:0]p_0_in;

  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \Q[0]_i_1__2 
       (.I0(S_Shift_Value[4]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[3]),
        .I3(Q[15]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(\Q_reg[9] [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[10]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[6] [15]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[6] [10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[11]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[6] [14]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[6] [11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[12]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[6] [13]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[6] [12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[13]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[6] [12]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[6] [13]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \Q[13]_i_2 
       (.I0(S_Shift_Value[3]),
        .I1(Q[2]),
        .I2(Q[10]),
        .I3(S_Shift_Value[4]),
        .I4(FSM_barrel_shifter_B_S),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[6] [12]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \Q[13]_i_3 
       (.I0(S_Shift_Value[3]),
        .I1(Q[3]),
        .I2(Q[11]),
        .I3(S_Shift_Value[4]),
        .I4(FSM_barrel_shifter_B_S),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[6] [13]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[14]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[6] [11]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[6] [14]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \Q[14]_i_2 
       (.I0(S_Shift_Value[3]),
        .I1(Q[1]),
        .I2(Q[9]),
        .I3(S_Shift_Value[4]),
        .I4(FSM_barrel_shifter_B_S),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[6] [11]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \Q[14]_i_3 
       (.I0(S_Shift_Value[3]),
        .I1(Q[4]),
        .I2(Q[12]),
        .I3(S_Shift_Value[4]),
        .I4(FSM_barrel_shifter_B_S),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[6] [14]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[15]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[6] [10]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[6] [15]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \Q[15]_i_2 
       (.I0(S_Shift_Value[3]),
        .I1(Q[0]),
        .I2(Q[8]),
        .I3(S_Shift_Value[4]),
        .I4(FSM_barrel_shifter_B_S),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[6] [10]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \Q[15]_i_3 
       (.I0(S_Shift_Value[3]),
        .I1(Q[5]),
        .I2(Q[13]),
        .I3(S_Shift_Value[4]),
        .I4(FSM_barrel_shifter_B_S),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[6] [15]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[16]_i_3 
       (.I0(FSM_barrel_shifter_B_S),
        .I1(S_Shift_Value[4]),
        .I2(Q[14]),
        .I3(S_Shift_Value[3]),
        .I4(Q[6]),
        .O(\Q_reg[8] [0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[17]_i_3 
       (.I0(FSM_barrel_shifter_B_S),
        .I1(S_Shift_Value[4]),
        .I2(Q[15]),
        .I3(S_Shift_Value[3]),
        .I4(Q[7]),
        .O(\Q_reg[8] [1]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[19]_i_1__0 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[2] [23]),
        .I1(\Q_reg[4] [2]),
        .I2(\Q_reg[19] [0]),
        .I3(\Q_reg[4]_0 [2]),
        .I4(\Q_reg[19] [1]),
        .I5(\Q_reg[1]_0 [0]),
        .O(\Q_reg[25] [0]));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \Q[1]_i_1__0 
       (.I0(S_Shift_Value[4]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[3]),
        .I3(Q[14]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(\Q_reg[9] [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[20]_i_1__0 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[2] [24]),
        .I1(\Q_reg[4] [2]),
        .I2(\Q_reg[19] [0]),
        .I3(\Q_reg[4]_0 [2]),
        .I4(\Q_reg[19] [1]),
        .I5(\Q_reg[1]_0 [1]),
        .O(\Q_reg[25] [1]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[20]_i_2__0 
       (.I0(FSM_barrel_shifter_B_S),
        .I1(\Q_reg[4] [1]),
        .I2(\Q_reg[19] [0]),
        .I3(\Q_reg[4]_0 [1]),
        .I4(\Q_reg[19] [1]),
        .I5(\Data_array[1]_0 [1]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [24]));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \Q[21]_i_1__0 
       (.I0(S_Shift_Value[1]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[0]),
        .I3(\Q_reg[0]_0 ),
        .I4(S_Shift_Value[2]),
        .I5(\Q_reg[1]_0 [2]),
        .O(\Q_reg[25] [2]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[22]_i_1__0 
       (.I0(FSM_barrel_shifter_B_S),
        .I1(\Q_reg[4] [2]),
        .I2(\Q_reg[19] [0]),
        .I3(\Q_reg[4]_0 [2]),
        .I4(\Q_reg[19] [1]),
        .I5(\Q_reg[1]_0 [3]),
        .O(\Q_reg[25] [3]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[23]_i_1__0 
       (.I0(FSM_barrel_shifter_B_S),
        .I1(\Q_reg[4] [2]),
        .I2(\Q_reg[19] [0]),
        .I3(\Q_reg[4]_0 [2]),
        .I4(\Q_reg[19] [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[2] [23]),
        .O(\Q_reg[25] [4]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[23]_i_2__0 
       (.I0(\Data_array[1]_0 [2]),
        .I1(\Q_reg[4] [1]),
        .I2(\Q_reg[19] [0]),
        .I3(\Q_reg[4]_0 [1]),
        .I4(\Q_reg[19] [1]),
        .I5(\Data_array[1]_0 [0]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [23]));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \Q[24]_i_1__0 
       (.I0(S_Shift_Value[2]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[1]),
        .I3(\Data_array[1]_0 [1]),
        .O(\Q_reg[25] [5]));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \Q[25]_i_1__0 
       (.I0(S_Shift_Value[2]),
        .I1(S_Shift_Value[1]),
        .I2(FSM_barrel_shifter_B_S),
        .I3(S_Shift_Value[0]),
        .I4(\Q_reg[0]_0 ),
        .O(\Q_reg[25] [6]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \Q[25]_i_2__0 
       (.I0(\Q_reg[4] [2]),
        .I1(\Q_reg[19] [0]),
        .I2(\Q_reg[4]_0 [2]),
        .I3(\Q_reg[19] [1]),
        .O(S_Shift_Value[2]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \Q[25]_i_3 
       (.I0(\Q_reg[4] [1]),
        .I1(\Q_reg[19] [0]),
        .I2(\Q_reg[4]_0 [1]),
        .I3(\Q_reg[19] [1]),
        .O(S_Shift_Value[1]));
  LUT4 #(
    .INIT(16'h33E2)) 
    \Q[25]_i_4__0 
       (.I0(\Q_reg[4]_0 [0]),
        .I1(\Q_reg[19] [0]),
        .I2(\Q_reg[4] [0]),
        .I3(\Q_reg[19] [1]),
        .O(S_Shift_Value[0]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \Q[25]_i_5__0 
       (.I0(\Q_reg[4] [4]),
        .I1(\Q_reg[19] [0]),
        .I2(\Q_reg[4]_0 [4]),
        .I3(\Q_reg[19] [1]),
        .O(S_Shift_Value[4]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \Q[25]_i_7 
       (.I0(\Q_reg[4] [3]),
        .I1(\Q_reg[19] [0]),
        .I2(\Q_reg[4]_0 [3]),
        .I3(\Q_reg[19] [1]),
        .O(S_Shift_Value[3]));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \Q[2]_i_1 
       (.I0(S_Shift_Value[4]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[3]),
        .I3(Q[13]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(\Q_reg[9] [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \Q[3]_i_1 
       (.I0(S_Shift_Value[4]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[3]),
        .I3(Q[12]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(\Q_reg[9] [3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h999AAA9A)) 
    \Q[3]_i_3__2 
       (.I0(FSM_exp_operation_A_S),
        .I1(\Q_reg[19] [1]),
        .I2(\Q_reg[30] [2]),
        .I3(\Q_reg[19] [0]),
        .I4(\Q_reg[4] [3]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'h999AAA9A)) 
    \Q[3]_i_4__2 
       (.I0(FSM_exp_operation_A_S),
        .I1(\Q_reg[19] [1]),
        .I2(\Q_reg[30] [1]),
        .I3(\Q_reg[19] [0]),
        .I4(\Q_reg[4] [2]),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'h999AAA9A)) 
    \Q[3]_i_5__2 
       (.I0(FSM_exp_operation_A_S),
        .I1(\Q_reg[19] [1]),
        .I2(\Q_reg[30] [0]),
        .I3(\Q_reg[19] [0]),
        .I4(\Q_reg[4] [1]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \Q[4]_i_1 
       (.I0(S_Shift_Value[4]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[3]),
        .I3(Q[11]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(\Q_reg[9] [4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \Q[5]_i_1 
       (.I0(S_Shift_Value[4]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[3]),
        .I3(Q[10]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(\Q_reg[9] [5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \Q[6]_i_1 
       (.I0(S_Shift_Value[4]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[3]),
        .I3(Q[9]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(\Q_reg[9] [6]),
        .O(D[6]));
  LUT2 #(
    .INIT(4'h1)) 
    \Q[7]_i_11 
       (.I0(\Q_reg[19] [0]),
        .I1(\Q_reg[19] [1]),
        .O(\Q_reg[7] ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \Q[7]_i_1__0 
       (.I0(S_Shift_Value[4]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[3]),
        .I3(Q[8]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(\Q_reg[9] [7]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hAAA6)) 
    \Q[7]_i_3__0 
       (.I0(FSM_exp_operation_A_S),
        .I1(\Q_reg[30] [6]),
        .I2(\Q_reg[19] [0]),
        .I3(\Q_reg[19] [1]),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'hAAA6)) 
    \Q[7]_i_4__0 
       (.I0(FSM_exp_operation_A_S),
        .I1(\Q_reg[30] [5]),
        .I2(\Q_reg[19] [0]),
        .I3(\Q_reg[19] [1]),
        .O(p_0_in[5]));
  LUT4 #(
    .INIT(16'hAAA6)) 
    \Q[7]_i_5 
       (.I0(FSM_exp_operation_A_S),
        .I1(\Q_reg[30] [4]),
        .I2(\Q_reg[19] [0]),
        .I3(\Q_reg[19] [1]),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'h999AAA9A)) 
    \Q[7]_i_6 
       (.I0(FSM_exp_operation_A_S),
        .I1(\Q_reg[19] [1]),
        .I2(\Q_reg[30] [3]),
        .I3(\Q_reg[19] [0]),
        .I4(\Q_reg[4] [4]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[8]_i_1 
       (.I0(\Q_reg[8] [1]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Q_reg[9] [8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[9]_i_1 
       (.I0(\Q_reg[8] [0]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Q_reg[9] [9]),
        .O(D[9]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] ),
        .D(\FSM_sequential_state_reg_reg[2] [0]),
        .Q(\Q_reg[19] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] ),
        .D(\FSM_sequential_state_reg_reg[2] [1]),
        .Q(\Q_reg[19] [1]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized1
   (\Q_reg[0]_0 ,
    Q,
    CO,
    sign_result,
    Co_to_D,
    \Q_reg[23]_0 ,
    \Q_reg[24]_0 ,
    \Q_reg[4]_0 ,
    D,
    \Q_reg[30]_0 ,
    out,
    \Q_reg[31]_0 ,
    intAS,
    add_overflow_flag,
    FSM_selector_C,
    S,
    \Q_reg[15]_0 ,
    \Q_reg[23]_1 ,
    \Q_reg[30]_1 ,
    \Q_reg[30]_2 ,
    \Q_reg[25]_0 ,
    \Q_reg[22]_0 ,
    FSM_selector_D,
    \Q_reg[0]_1 ,
    S_A_S_Oper_A,
    \Q_reg[17]_0 ,
    \Q_reg[17]_1 ,
    \Q_reg[12]_0 ,
    \Q_reg[7]_0 ,
    \Q_reg[2]_0 ,
    \Q_reg[0]_2 ,
    \FSM_sequential_state_reg_reg[0] ,
    \Data_X[31] ,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[3] );
  output \Q_reg[0]_0 ;
  output [31:0]Q;
  output [0:0]CO;
  output sign_result;
  output Co_to_D;
  output \Q_reg[23]_0 ;
  output [22:0]\Q_reg[24]_0 ;
  output \Q_reg[4]_0 ;
  output [30:0]D;
  output [30:0]\Q_reg[30]_0 ;
  input [0:0]out;
  input [31:0]\Q_reg[31]_0 ;
  input intAS;
  input add_overflow_flag;
  input FSM_selector_C;
  input [3:0]S;
  input [3:0]\Q_reg[15]_0 ;
  input [3:0]\Q_reg[23]_1 ;
  input [3:0]\Q_reg[30]_1 ;
  input [0:0]\Q_reg[30]_2 ;
  input [25:0]\Q_reg[25]_0 ;
  input [8:0]\Q_reg[22]_0 ;
  input FSM_selector_D;
  input \Q_reg[0]_1 ;
  input [21:0]S_A_S_Oper_A;
  input \Q_reg[17]_0 ;
  input [3:0]\Q_reg[17]_1 ;
  input \Q_reg[12]_0 ;
  input \Q_reg[7]_0 ;
  input \Q_reg[2]_0 ;
  input [0:0]\Q_reg[0]_2 ;
  input [0:0]\FSM_sequential_state_reg_reg[0] ;
  input [31:0]\Data_X[31] ;
  input clk_IBUF_BUFG;
  input [1:0]\FSM_sequential_state_reg_reg[3] ;

  wire [23:2]\Add_Subt_Sgf_module/Data_B ;
  wire [0:0]CO;
  wire Co_to_D;
  wire [30:0]D;
  wire [31:0]\Data_X[31] ;
  wire FSM_selector_C;
  wire FSM_selector_D;
  wire [0:0]\FSM_sequential_state_reg_reg[0] ;
  wire [1:0]\FSM_sequential_state_reg_reg[3] ;
  wire [31:0]Q;
  wire \Q[0]_i_10_n_0 ;
  wire \Q[0]_i_11__0_n_0 ;
  wire \Q[0]_i_12_n_0 ;
  wire \Q[0]_i_13_n_0 ;
  wire \Q[0]_i_19_n_0 ;
  wire \Q[0]_i_20_n_0 ;
  wire \Q[0]_i_21_n_0 ;
  wire \Q[0]_i_22_n_0 ;
  wire \Q[0]_i_24_n_0 ;
  wire \Q[0]_i_25_n_0 ;
  wire \Q[0]_i_26_n_0 ;
  wire \Q[0]_i_27_n_0 ;
  wire \Q[0]_i_32_n_0 ;
  wire \Q[0]_i_33_n_0 ;
  wire \Q[0]_i_34_n_0 ;
  wire \Q[0]_i_35_n_0 ;
  wire \Q[0]_i_37_n_0 ;
  wire \Q[0]_i_38_n_0 ;
  wire \Q[0]_i_39_n_0 ;
  wire \Q[0]_i_40_n_0 ;
  wire \Q[0]_i_45_n_0 ;
  wire \Q[0]_i_46_n_0 ;
  wire \Q[0]_i_47_n_0 ;
  wire \Q[0]_i_48_n_0 ;
  wire \Q[0]_i_7_n_0 ;
  wire \Q[0]_i_8__0_n_0 ;
  wire \Q[11]_i_2__0_n_0 ;
  wire \Q[16]_i_2__1_n_0 ;
  wire \Q[21]_i_2__1_n_0 ;
  wire \Q[6]_i_2__0_n_0 ;
  wire \Q_reg[0]_0 ;
  wire \Q_reg[0]_1 ;
  wire [0:0]\Q_reg[0]_2 ;
  wire \Q_reg[0]_i_18_n_0 ;
  wire \Q_reg[0]_i_23_n_0 ;
  wire \Q_reg[0]_i_36_n_0 ;
  wire \Q_reg[0]_i_5_n_0 ;
  wire \Q_reg[0]_i_9_n_0 ;
  wire \Q_reg[12]_0 ;
  wire [3:0]\Q_reg[15]_0 ;
  wire \Q_reg[17]_0 ;
  wire [3:0]\Q_reg[17]_1 ;
  wire [8:0]\Q_reg[22]_0 ;
  wire \Q_reg[23]_0 ;
  wire [3:0]\Q_reg[23]_1 ;
  wire [22:0]\Q_reg[24]_0 ;
  wire [25:0]\Q_reg[25]_0 ;
  wire \Q_reg[2]_0 ;
  wire [30:0]\Q_reg[30]_0 ;
  wire [3:0]\Q_reg[30]_1 ;
  wire [0:0]\Q_reg[30]_2 ;
  wire [31:0]\Q_reg[31]_0 ;
  wire \Q_reg[4]_0 ;
  wire \Q_reg[7]_0 ;
  wire [3:0]S;
  wire [21:0]S_A_S_Oper_A;
  wire add_overflow_flag;
  wire clk_IBUF_BUFG;
  wire gtXY;
  wire intAS;
  wire [0:0]out;
  wire sign_result;
  wire [2:0]\NLW_Q_reg[0]_i_18_CO_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[0]_i_18_O_UNCONNECTED ;
  wire [2:0]\NLW_Q_reg[0]_i_23_CO_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[0]_i_23_O_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[0]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[0]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_Q_reg[0]_i_36_CO_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[0]_i_36_O_UNCONNECTED ;
  wire [2:0]\NLW_Q_reg[0]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[0]_i_4_O_UNCONNECTED ;
  wire [2:0]\NLW_Q_reg[0]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[0]_i_5_O_UNCONNECTED ;
  wire [2:0]\NLW_Q_reg[0]_i_9_CO_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[0]_i_9_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    \Q[0]_i_10 
       (.I0(Q[30]),
        .I1(\Q_reg[31]_0 [30]),
        .O(\Q[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_11__0 
       (.I0(Q[28]),
        .I1(\Q_reg[31]_0 [28]),
        .I2(\Q_reg[31]_0 [29]),
        .I3(Q[29]),
        .O(\Q[0]_i_11__0_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_12 
       (.I0(Q[26]),
        .I1(\Q_reg[31]_0 [26]),
        .I2(\Q_reg[31]_0 [27]),
        .I3(Q[27]),
        .O(\Q[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_13 
       (.I0(Q[24]),
        .I1(\Q_reg[31]_0 [24]),
        .I2(\Q_reg[31]_0 [25]),
        .I3(Q[25]),
        .O(\Q[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_19 
       (.I0(Q[21]),
        .I1(\Q_reg[31]_0 [21]),
        .I2(Q[23]),
        .I3(\Q_reg[31]_0 [23]),
        .I4(\Q_reg[31]_0 [22]),
        .I5(Q[22]),
        .O(\Q[0]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h98898998)) 
    \Q[0]_i_1__4 
       (.I0(\Q_reg[25]_0 [0]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Q_reg[24]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[0]_i_1__8 
       (.I0(Q[0]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[0]_i_1__9 
       (.I0(\Q_reg[31]_0 [0]),
        .I1(gtXY),
        .I2(Q[0]),
        .O(\Q_reg[30]_0 [0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_20 
       (.I0(Q[18]),
        .I1(\Q_reg[31]_0 [18]),
        .I2(Q[20]),
        .I3(\Q_reg[31]_0 [20]),
        .I4(\Q_reg[31]_0 [19]),
        .I5(Q[19]),
        .O(\Q[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_21 
       (.I0(Q[15]),
        .I1(\Q_reg[31]_0 [15]),
        .I2(Q[17]),
        .I3(\Q_reg[31]_0 [17]),
        .I4(\Q_reg[31]_0 [16]),
        .I5(Q[16]),
        .O(\Q[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_22 
       (.I0(Q[12]),
        .I1(\Q_reg[31]_0 [12]),
        .I2(Q[14]),
        .I3(\Q_reg[31]_0 [14]),
        .I4(\Q_reg[31]_0 [13]),
        .I5(Q[13]),
        .O(\Q[0]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_24 
       (.I0(Q[22]),
        .I1(\Q_reg[31]_0 [22]),
        .I2(\Q_reg[31]_0 [23]),
        .I3(Q[23]),
        .O(\Q[0]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_25 
       (.I0(Q[20]),
        .I1(\Q_reg[31]_0 [20]),
        .I2(\Q_reg[31]_0 [21]),
        .I3(Q[21]),
        .O(\Q[0]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_26 
       (.I0(Q[18]),
        .I1(\Q_reg[31]_0 [18]),
        .I2(\Q_reg[31]_0 [19]),
        .I3(Q[19]),
        .O(\Q[0]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_27 
       (.I0(Q[16]),
        .I1(\Q_reg[31]_0 [16]),
        .I2(\Q_reg[31]_0 [17]),
        .I3(Q[17]),
        .O(\Q[0]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA0BB0)) 
    \Q[0]_i_2__1 
       (.I0(Q[31]),
        .I1(CO),
        .I2(\Q_reg[31]_0 [31]),
        .I3(intAS),
        .I4(gtXY),
        .O(sign_result));
  LUT6 #(
    .INIT(64'hFFB2EEFF88FF00E8)) 
    \Q[0]_i_2__2 
       (.I0(\Q_reg[23]_0 ),
        .I1(\Q_reg[25]_0 [24]),
        .I2(\Q_reg[22]_0 [8]),
        .I3(FSM_selector_D),
        .I4(\Q_reg[25]_0 [25]),
        .I5(\Q_reg[0]_1 ),
        .O(Co_to_D));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_32 
       (.I0(Q[9]),
        .I1(\Q_reg[31]_0 [9]),
        .I2(Q[11]),
        .I3(\Q_reg[31]_0 [11]),
        .I4(\Q_reg[31]_0 [10]),
        .I5(Q[10]),
        .O(\Q[0]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_33 
       (.I0(Q[6]),
        .I1(\Q_reg[31]_0 [6]),
        .I2(Q[8]),
        .I3(\Q_reg[31]_0 [8]),
        .I4(\Q_reg[31]_0 [7]),
        .I5(Q[7]),
        .O(\Q[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_34 
       (.I0(Q[3]),
        .I1(\Q_reg[31]_0 [3]),
        .I2(Q[5]),
        .I3(\Q_reg[31]_0 [5]),
        .I4(\Q_reg[31]_0 [4]),
        .I5(Q[4]),
        .O(\Q[0]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_35 
       (.I0(Q[0]),
        .I1(\Q_reg[31]_0 [0]),
        .I2(Q[2]),
        .I3(\Q_reg[31]_0 [2]),
        .I4(\Q_reg[31]_0 [1]),
        .I5(Q[1]),
        .O(\Q[0]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_37 
       (.I0(Q[14]),
        .I1(\Q_reg[31]_0 [14]),
        .I2(\Q_reg[31]_0 [15]),
        .I3(Q[15]),
        .O(\Q[0]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_38 
       (.I0(Q[12]),
        .I1(\Q_reg[31]_0 [12]),
        .I2(\Q_reg[31]_0 [13]),
        .I3(Q[13]),
        .O(\Q[0]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_39 
       (.I0(Q[10]),
        .I1(\Q_reg[31]_0 [10]),
        .I2(\Q_reg[31]_0 [11]),
        .I3(Q[11]),
        .O(\Q[0]_i_39_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_40 
       (.I0(Q[8]),
        .I1(\Q_reg[31]_0 [8]),
        .I2(\Q_reg[31]_0 [9]),
        .I3(Q[9]),
        .O(\Q[0]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_45 
       (.I0(Q[6]),
        .I1(\Q_reg[31]_0 [6]),
        .I2(\Q_reg[31]_0 [7]),
        .I3(Q[7]),
        .O(\Q[0]_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_46 
       (.I0(Q[4]),
        .I1(\Q_reg[31]_0 [4]),
        .I2(\Q_reg[31]_0 [5]),
        .I3(Q[5]),
        .O(\Q[0]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_47 
       (.I0(Q[2]),
        .I1(\Q_reg[31]_0 [2]),
        .I2(\Q_reg[31]_0 [3]),
        .I3(Q[3]),
        .O(\Q[0]_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[0]_i_48 
       (.I0(Q[0]),
        .I1(\Q_reg[31]_0 [0]),
        .I2(\Q_reg[31]_0 [1]),
        .I3(Q[1]),
        .O(\Q[0]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_7 
       (.I0(Q[27]),
        .I1(\Q_reg[31]_0 [27]),
        .I2(Q[29]),
        .I3(\Q_reg[31]_0 [29]),
        .I4(\Q_reg[31]_0 [28]),
        .I5(Q[28]),
        .O(\Q[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[0]_i_8__0 
       (.I0(Q[24]),
        .I1(\Q_reg[31]_0 [24]),
        .I2(Q[26]),
        .I3(\Q_reg[31]_0 [26]),
        .I4(\Q_reg[31]_0 [25]),
        .I5(Q[25]),
        .O(\Q[0]_i_8__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[10]_i_1__1 
       (.I0(\Q_reg[24]_0 [7]),
        .I1(\Add_Subt_Sgf_module/Data_B [9]),
        .I2(S_A_S_Oper_A[7]),
        .I3(\Add_Subt_Sgf_module/Data_B [10]),
        .I4(S_A_S_Oper_A[8]),
        .O(\Q_reg[24]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[10]_i_1__5 
       (.I0(Q[10]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[10]_i_1__6 
       (.I0(\Q_reg[31]_0 [10]),
        .I1(gtXY),
        .I2(Q[10]),
        .O(\Q_reg[30]_0 [10]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[10]_i_2__0 
       (.I0(\Q_reg[25]_0 [9]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [9]));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \Q[11]_i_1__1 
       (.I0(\Q[11]_i_2__0_n_0 ),
        .I1(\Q_reg[7]_0 ),
        .I2(\Add_Subt_Sgf_module/Data_B [10]),
        .I3(S_A_S_Oper_A[8]),
        .I4(\Add_Subt_Sgf_module/Data_B [11]),
        .I5(S_A_S_Oper_A[9]),
        .O(\Q_reg[24]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[11]_i_1__5 
       (.I0(Q[11]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[11]_i_1__6 
       (.I0(\Q_reg[31]_0 [11]),
        .I1(gtXY),
        .I2(Q[11]),
        .O(\Q_reg[30]_0 [11]));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \Q[11]_i_2__0 
       (.I0(\Q_reg[17]_1 [1]),
        .I1(S_A_S_Oper_A[6]),
        .I2(\Add_Subt_Sgf_module/Data_B [8]),
        .I3(S_A_S_Oper_A[5]),
        .I4(\Add_Subt_Sgf_module/Data_B [7]),
        .I5(\Q_reg[24]_0 [5]),
        .O(\Q[11]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[11]_i_4__0 
       (.I0(\Q_reg[25]_0 [10]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [10]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[11]_i_6 
       (.I0(\Q_reg[25]_0 [11]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [11]));
  LUT5 #(
    .INIT(32'hEBB2CAA0)) 
    \Q[12]_i_1__1 
       (.I0(\Q_reg[24]_0 [10]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[25]_0 [12]),
        .I3(\Q_reg[0]_1 ),
        .I4(\Q_reg[22]_0 [3]),
        .O(\Q_reg[24]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[12]_i_1__5 
       (.I0(Q[12]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[12]_i_1__6 
       (.I0(\Q_reg[31]_0 [12]),
        .I1(gtXY),
        .I2(Q[12]),
        .O(\Q_reg[30]_0 [12]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[13]_i_1__1 
       (.I0(\Q_reg[24]_0 [10]),
        .I1(\Add_Subt_Sgf_module/Data_B [12]),
        .I2(S_A_S_Oper_A[10]),
        .I3(\Add_Subt_Sgf_module/Data_B [13]),
        .I4(S_A_S_Oper_A[11]),
        .O(\Q_reg[24]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[13]_i_1__5 
       (.I0(Q[13]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[13]_i_1__6 
       (.I0(\Q_reg[31]_0 [13]),
        .I1(gtXY),
        .I2(Q[13]),
        .O(\Q_reg[30]_0 [13]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[13]_i_2__1 
       (.I0(\Q_reg[25]_0 [12]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [12]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[13]_i_4__0 
       (.I0(\Q_reg[25]_0 [13]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [13]));
  LUT5 #(
    .INIT(32'hEBB2CAA0)) 
    \Q[14]_i_1__1 
       (.I0(\Q_reg[24]_0 [12]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[25]_0 [14]),
        .I3(\Q_reg[0]_1 ),
        .I4(\Q_reg[22]_0 [4]),
        .O(\Q_reg[24]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[14]_i_1__5 
       (.I0(Q[14]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[14]_i_1__6 
       (.I0(\Q_reg[31]_0 [14]),
        .I1(gtXY),
        .I2(Q[14]),
        .O(\Q_reg[30]_0 [14]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[15]_i_1__1 
       (.I0(\Q_reg[24]_0 [12]),
        .I1(\Add_Subt_Sgf_module/Data_B [14]),
        .I2(S_A_S_Oper_A[12]),
        .I3(\Add_Subt_Sgf_module/Data_B [15]),
        .I4(S_A_S_Oper_A[13]),
        .O(\Q_reg[24]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[15]_i_1__5 
       (.I0(Q[15]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [15]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[15]_i_1__6 
       (.I0(\Q_reg[31]_0 [15]),
        .I1(gtXY),
        .I2(Q[15]),
        .O(\Q_reg[30]_0 [15]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[15]_i_2__1 
       (.I0(\Q_reg[25]_0 [14]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [14]));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \Q[16]_i_1__1 
       (.I0(\Q[16]_i_2__1_n_0 ),
        .I1(\Q_reg[12]_0 ),
        .I2(\Add_Subt_Sgf_module/Data_B [15]),
        .I3(S_A_S_Oper_A[13]),
        .I4(\Add_Subt_Sgf_module/Data_B [16]),
        .I5(S_A_S_Oper_A[14]),
        .O(\Q_reg[24]_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[16]_i_1__5 
       (.I0(Q[16]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [16]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[16]_i_1__6 
       (.I0(\Q_reg[31]_0 [16]),
        .I1(gtXY),
        .I2(Q[16]),
        .O(\Q_reg[30]_0 [16]));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \Q[16]_i_2__1 
       (.I0(\Q_reg[17]_1 [2]),
        .I1(S_A_S_Oper_A[11]),
        .I2(\Add_Subt_Sgf_module/Data_B [13]),
        .I3(S_A_S_Oper_A[10]),
        .I4(\Add_Subt_Sgf_module/Data_B [12]),
        .I5(\Q_reg[24]_0 [10]),
        .O(\Q[16]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[16]_i_4__0 
       (.I0(\Q_reg[25]_0 [15]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [15]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[16]_i_6 
       (.I0(\Q_reg[25]_0 [16]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [16]));
  LUT5 #(
    .INIT(32'hEBB2CAA0)) 
    \Q[17]_i_1__1 
       (.I0(\Q_reg[24]_0 [15]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[25]_0 [17]),
        .I3(\Q_reg[0]_1 ),
        .I4(\Q_reg[22]_0 [5]),
        .O(\Q_reg[24]_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[17]_i_1__5 
       (.I0(Q[17]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [17]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[17]_i_1__6 
       (.I0(\Q_reg[31]_0 [17]),
        .I1(gtXY),
        .I2(Q[17]),
        .O(\Q_reg[30]_0 [17]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[18]_i_1__1 
       (.I0(\Q_reg[24]_0 [15]),
        .I1(\Add_Subt_Sgf_module/Data_B [17]),
        .I2(S_A_S_Oper_A[15]),
        .I3(\Add_Subt_Sgf_module/Data_B [18]),
        .I4(S_A_S_Oper_A[16]),
        .O(\Q_reg[24]_0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[18]_i_1__5 
       (.I0(Q[18]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [18]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[18]_i_1__6 
       (.I0(\Q_reg[31]_0 [18]),
        .I1(gtXY),
        .I2(Q[18]),
        .O(\Q_reg[30]_0 [18]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[18]_i_2__1 
       (.I0(\Q_reg[25]_0 [17]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [17]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[18]_i_4__0 
       (.I0(\Q_reg[25]_0 [18]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [18]));
  LUT5 #(
    .INIT(32'hEBB2CAA0)) 
    \Q[19]_i_1__1 
       (.I0(\Q_reg[24]_0 [17]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[25]_0 [19]),
        .I3(\Q_reg[0]_1 ),
        .I4(\Q_reg[22]_0 [6]),
        .O(\Q_reg[24]_0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[19]_i_1__5 
       (.I0(Q[19]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [19]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[19]_i_1__6 
       (.I0(\Q_reg[31]_0 [19]),
        .I1(gtXY),
        .I2(Q[19]),
        .O(\Q_reg[30]_0 [19]));
  LUT6 #(
    .INIT(64'h8180808180818180)) 
    \Q[1]_i_1__2 
       (.I0(\Q_reg[25]_0 [0]),
        .I1(\Q_reg[25]_0 [1]),
        .I2(FSM_selector_D),
        .I3(Q[31]),
        .I4(\Q_reg[31]_0 [31]),
        .I5(intAS),
        .O(\Q_reg[24]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[1]_i_1__6 
       (.I0(Q[1]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[1]_i_1__7 
       (.I0(\Q_reg[31]_0 [1]),
        .I1(gtXY),
        .I2(Q[1]),
        .O(\Q_reg[30]_0 [1]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[20]_i_1__1 
       (.I0(\Q_reg[24]_0 [17]),
        .I1(\Add_Subt_Sgf_module/Data_B [19]),
        .I2(S_A_S_Oper_A[17]),
        .I3(\Add_Subt_Sgf_module/Data_B [20]),
        .I4(S_A_S_Oper_A[18]),
        .O(\Q_reg[24]_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[20]_i_1__5 
       (.I0(Q[20]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [20]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[20]_i_1__6 
       (.I0(\Q_reg[31]_0 [20]),
        .I1(gtXY),
        .I2(Q[20]),
        .O(\Q_reg[30]_0 [20]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[20]_i_2__1 
       (.I0(\Q_reg[25]_0 [19]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [19]));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \Q[21]_i_1__1 
       (.I0(\Q[21]_i_2__1_n_0 ),
        .I1(\Q_reg[17]_0 ),
        .I2(\Add_Subt_Sgf_module/Data_B [20]),
        .I3(S_A_S_Oper_A[18]),
        .I4(\Add_Subt_Sgf_module/Data_B [21]),
        .I5(S_A_S_Oper_A[19]),
        .O(\Q_reg[24]_0 [20]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[21]_i_1__5 
       (.I0(Q[21]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [21]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[21]_i_1__6 
       (.I0(\Q_reg[31]_0 [21]),
        .I1(gtXY),
        .I2(Q[21]),
        .O(\Q_reg[30]_0 [21]));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \Q[21]_i_2__1 
       (.I0(\Q_reg[17]_1 [3]),
        .I1(S_A_S_Oper_A[16]),
        .I2(\Add_Subt_Sgf_module/Data_B [18]),
        .I3(S_A_S_Oper_A[15]),
        .I4(\Add_Subt_Sgf_module/Data_B [17]),
        .I5(\Q_reg[24]_0 [15]),
        .O(\Q[21]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[21]_i_4__0 
       (.I0(\Q_reg[25]_0 [20]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [20]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[21]_i_6 
       (.I0(\Q_reg[25]_0 [21]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [21]));
  LUT5 #(
    .INIT(32'hEBB2CAA0)) 
    \Q[22]_i_1__1 
       (.I0(\Q_reg[24]_0 [20]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[25]_0 [22]),
        .I3(\Q_reg[0]_1 ),
        .I4(\Q_reg[22]_0 [7]),
        .O(\Q_reg[24]_0 [21]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[22]_i_1__5 
       (.I0(Q[22]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [22]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[22]_i_1__6 
       (.I0(\Q_reg[31]_0 [22]),
        .I1(gtXY),
        .I2(Q[22]),
        .O(\Q_reg[30]_0 [22]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[23]_i_1__1 
       (.I0(\Q_reg[24]_0 [20]),
        .I1(\Add_Subt_Sgf_module/Data_B [22]),
        .I2(S_A_S_Oper_A[20]),
        .I3(\Add_Subt_Sgf_module/Data_B [23]),
        .I4(S_A_S_Oper_A[21]),
        .O(\Q_reg[23]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[23]_i_1__5 
       (.I0(Q[23]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [23]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[23]_i_1__6 
       (.I0(\Q_reg[31]_0 [23]),
        .I1(gtXY),
        .I2(Q[23]),
        .O(\Q_reg[30]_0 [23]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[23]_i_2__1 
       (.I0(\Q_reg[25]_0 [22]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [22]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[23]_i_4__0 
       (.I0(\Q_reg[25]_0 [23]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [23]));
  LUT5 #(
    .INIT(32'hEBB2CAA0)) 
    \Q[24]_i_1__1 
       (.I0(\Q_reg[23]_0 ),
        .I1(FSM_selector_D),
        .I2(\Q_reg[25]_0 [24]),
        .I3(\Q_reg[0]_1 ),
        .I4(\Q_reg[22]_0 [8]),
        .O(\Q_reg[24]_0 [22]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[24]_i_1__5 
       (.I0(Q[24]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [24]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[24]_i_1__6 
       (.I0(\Q_reg[31]_0 [24]),
        .I1(gtXY),
        .I2(Q[24]),
        .O(\Q_reg[30]_0 [24]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[25]_i_1__4 
       (.I0(Q[25]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [25]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[25]_i_1__5 
       (.I0(\Q_reg[31]_0 [25]),
        .I1(gtXY),
        .I2(Q[25]),
        .O(\Q_reg[30]_0 [25]));
  LUT6 #(
    .INIT(64'hD77DFFFFFFFFFFFF)) 
    \Q[25]_i_8 
       (.I0(out),
        .I1(Q[31]),
        .I2(\Q_reg[31]_0 [31]),
        .I3(intAS),
        .I4(add_overflow_flag),
        .I5(FSM_selector_C),
        .O(\Q_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[26]_i_1__0 
       (.I0(Q[26]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [26]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[26]_i_1__1 
       (.I0(\Q_reg[31]_0 [26]),
        .I1(gtXY),
        .I2(Q[26]),
        .O(\Q_reg[30]_0 [26]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[27]_i_1__0 
       (.I0(Q[27]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [27]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[27]_i_1__1 
       (.I0(\Q_reg[31]_0 [27]),
        .I1(gtXY),
        .I2(Q[27]),
        .O(\Q_reg[30]_0 [27]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[28]_i_1__0 
       (.I0(Q[28]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [28]),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[28]_i_1__1 
       (.I0(\Q_reg[31]_0 [28]),
        .I1(gtXY),
        .I2(Q[28]),
        .O(\Q_reg[30]_0 [28]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[29]_i_1__0 
       (.I0(Q[29]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [29]),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[29]_i_1__1 
       (.I0(\Q_reg[31]_0 [29]),
        .I1(gtXY),
        .I2(Q[29]),
        .O(\Q_reg[30]_0 [29]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[2]_i_1__6 
       (.I0(Q[2]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[2]_i_1__7 
       (.I0(\Q_reg[31]_0 [2]),
        .I1(gtXY),
        .I2(Q[2]),
        .O(\Q_reg[30]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[30]_i_1__1 
       (.I0(Q[30]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [30]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[30]_i_1__2 
       (.I0(\Q_reg[31]_0 [30]),
        .I1(gtXY),
        .I2(Q[30]),
        .O(\Q_reg[30]_0 [30]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[3]_i_1__1 
       (.I0(\Q_reg[24]_0 [1]),
        .I1(\Add_Subt_Sgf_module/Data_B [2]),
        .I2(S_A_S_Oper_A[0]),
        .I3(\Add_Subt_Sgf_module/Data_B [3]),
        .I4(S_A_S_Oper_A[1]),
        .O(\Q_reg[24]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[3]_i_1__6 
       (.I0(Q[3]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[3]_i_1__7 
       (.I0(\Q_reg[31]_0 [3]),
        .I1(gtXY),
        .I2(Q[3]),
        .O(\Q_reg[30]_0 [3]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[3]_i_2__0 
       (.I0(\Q_reg[25]_0 [2]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [2]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[3]_i_4__0 
       (.I0(\Q_reg[25]_0 [3]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [3]));
  LUT5 #(
    .INIT(32'hBEEB4114)) 
    \Q[4]_i_11 
       (.I0(FSM_selector_D),
        .I1(Q[31]),
        .I2(\Q_reg[31]_0 [31]),
        .I3(intAS),
        .I4(\Q_reg[0]_2 ),
        .O(\Q_reg[4]_0 ));
  LUT5 #(
    .INIT(32'hEBB2CAA0)) 
    \Q[4]_i_1__1 
       (.I0(\Q_reg[24]_0 [2]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[25]_0 [4]),
        .I3(\Q_reg[0]_1 ),
        .I4(\Q_reg[22]_0 [0]),
        .O(\Q_reg[24]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[4]_i_1__6 
       (.I0(Q[4]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[4]_i_1__7 
       (.I0(\Q_reg[31]_0 [4]),
        .I1(gtXY),
        .I2(Q[4]),
        .O(\Q_reg[30]_0 [4]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[5]_i_1__1 
       (.I0(\Q_reg[24]_0 [2]),
        .I1(\Add_Subt_Sgf_module/Data_B [4]),
        .I2(S_A_S_Oper_A[2]),
        .I3(\Add_Subt_Sgf_module/Data_B [5]),
        .I4(S_A_S_Oper_A[3]),
        .O(\Q_reg[24]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[5]_i_1__5 
       (.I0(Q[5]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[5]_i_1__6 
       (.I0(\Q_reg[31]_0 [5]),
        .I1(gtXY),
        .I2(Q[5]),
        .O(\Q_reg[30]_0 [5]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[5]_i_2__0 
       (.I0(\Q_reg[25]_0 [4]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [4]));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \Q[6]_i_1__1 
       (.I0(\Q[6]_i_2__0_n_0 ),
        .I1(\Q_reg[2]_0 ),
        .I2(\Add_Subt_Sgf_module/Data_B [5]),
        .I3(S_A_S_Oper_A[3]),
        .I4(\Add_Subt_Sgf_module/Data_B [6]),
        .I5(S_A_S_Oper_A[4]),
        .O(\Q_reg[24]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[6]_i_1__5 
       (.I0(Q[6]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[6]_i_1__6 
       (.I0(\Q_reg[31]_0 [6]),
        .I1(gtXY),
        .I2(Q[6]),
        .O(\Q_reg[30]_0 [6]));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \Q[6]_i_2__0 
       (.I0(\Q_reg[17]_1 [0]),
        .I1(S_A_S_Oper_A[1]),
        .I2(\Add_Subt_Sgf_module/Data_B [3]),
        .I3(S_A_S_Oper_A[0]),
        .I4(\Add_Subt_Sgf_module/Data_B [2]),
        .I5(\Q_reg[24]_0 [1]),
        .O(\Q[6]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[6]_i_4 
       (.I0(\Q_reg[25]_0 [5]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [5]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[6]_i_6 
       (.I0(\Q_reg[25]_0 [6]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [6]));
  LUT5 #(
    .INIT(32'hEBB2CAA0)) 
    \Q[7]_i_1__2 
       (.I0(\Q_reg[24]_0 [5]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[25]_0 [7]),
        .I3(\Q_reg[0]_1 ),
        .I4(\Q_reg[22]_0 [1]),
        .O(\Q_reg[24]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[7]_i_1__6 
       (.I0(Q[7]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[7]_i_1__7 
       (.I0(\Q_reg[31]_0 [7]),
        .I1(gtXY),
        .I2(Q[7]),
        .O(\Q_reg[30]_0 [7]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[8]_i_1__1 
       (.I0(\Q_reg[24]_0 [5]),
        .I1(\Add_Subt_Sgf_module/Data_B [7]),
        .I2(S_A_S_Oper_A[5]),
        .I3(\Add_Subt_Sgf_module/Data_B [8]),
        .I4(S_A_S_Oper_A[6]),
        .O(\Q_reg[24]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[8]_i_1__5 
       (.I0(Q[8]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[8]_i_1__6 
       (.I0(\Q_reg[31]_0 [8]),
        .I1(gtXY),
        .I2(Q[8]),
        .O(\Q_reg[30]_0 [8]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[8]_i_2__0 
       (.I0(\Q_reg[25]_0 [7]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [7]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[8]_i_4__0 
       (.I0(\Q_reg[25]_0 [8]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [8]));
  LUT5 #(
    .INIT(32'hEBB2CAA0)) 
    \Q[9]_i_1__1 
       (.I0(\Q_reg[24]_0 [7]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[25]_0 [9]),
        .I3(\Q_reg[0]_1 ),
        .I4(\Q_reg[22]_0 [2]),
        .O(\Q_reg[24]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[9]_i_1__5 
       (.I0(Q[9]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [9]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[9]_i_1__6 
       (.I0(\Q_reg[31]_0 [9]),
        .I1(gtXY),
        .I2(Q[9]),
        .O(\Q_reg[30]_0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [0]),
        .Q(Q[0]));
  CARRY4 \Q_reg[0]_i_18 
       (.CI(1'b0),
        .CO({\Q_reg[0]_i_18_n_0 ,\NLW_Q_reg[0]_i_18_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Q_reg[0]_i_18_O_UNCONNECTED [3:0]),
        .S({\Q[0]_i_32_n_0 ,\Q[0]_i_33_n_0 ,\Q[0]_i_34_n_0 ,\Q[0]_i_35_n_0 }));
  CARRY4 \Q_reg[0]_i_23 
       (.CI(\Q_reg[0]_i_36_n_0 ),
        .CO({\Q_reg[0]_i_23_n_0 ,\NLW_Q_reg[0]_i_23_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\Q[0]_i_37_n_0 ,\Q[0]_i_38_n_0 ,\Q[0]_i_39_n_0 ,\Q[0]_i_40_n_0 }),
        .O(\NLW_Q_reg[0]_i_23_O_UNCONNECTED [3:0]),
        .S(\Q_reg[15]_0 ));
  CARRY4 \Q_reg[0]_i_3 
       (.CI(\Q_reg[0]_i_5_n_0 ),
        .CO({\NLW_Q_reg[0]_i_3_CO_UNCONNECTED [3],CO,\NLW_Q_reg[0]_i_3_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Q_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,\Q_reg[30]_2 ,\Q[0]_i_7_n_0 ,\Q[0]_i_8__0_n_0 }));
  CARRY4 \Q_reg[0]_i_36 
       (.CI(1'b0),
        .CO({\Q_reg[0]_i_36_n_0 ,\NLW_Q_reg[0]_i_36_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\Q[0]_i_45_n_0 ,\Q[0]_i_46_n_0 ,\Q[0]_i_47_n_0 ,\Q[0]_i_48_n_0 }),
        .O(\NLW_Q_reg[0]_i_36_O_UNCONNECTED [3:0]),
        .S(S));
  CARRY4 \Q_reg[0]_i_4 
       (.CI(\Q_reg[0]_i_9_n_0 ),
        .CO({gtXY,\NLW_Q_reg[0]_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\Q[0]_i_10_n_0 ,\Q[0]_i_11__0_n_0 ,\Q[0]_i_12_n_0 ,\Q[0]_i_13_n_0 }),
        .O(\NLW_Q_reg[0]_i_4_O_UNCONNECTED [3:0]),
        .S(\Q_reg[30]_1 ));
  CARRY4 \Q_reg[0]_i_5 
       (.CI(\Q_reg[0]_i_18_n_0 ),
        .CO({\Q_reg[0]_i_5_n_0 ,\NLW_Q_reg[0]_i_5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Q_reg[0]_i_5_O_UNCONNECTED [3:0]),
        .S({\Q[0]_i_19_n_0 ,\Q[0]_i_20_n_0 ,\Q[0]_i_21_n_0 ,\Q[0]_i_22_n_0 }));
  CARRY4 \Q_reg[0]_i_9 
       (.CI(\Q_reg[0]_i_23_n_0 ),
        .CO({\Q_reg[0]_i_9_n_0 ,\NLW_Q_reg[0]_i_9_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\Q[0]_i_24_n_0 ,\Q[0]_i_25_n_0 ,\Q[0]_i_26_n_0 ,\Q[0]_i_27_n_0 }),
        .O(\NLW_Q_reg[0]_i_9_O_UNCONNECTED [3:0]),
        .S(\Q_reg[23]_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [27]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [28]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [29]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [30]),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(\Data_X[31] [31]),
        .Q(Q[31]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_X[31] [9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized10
   (\Q_reg[1]_0 ,
    \Q_reg[1]_1 ,
    \Q_reg[0]_0 ,
    \Q_reg[2]_0 ,
    \Q_reg[2]_1 ,
    \Q_reg[1]_2 ,
    \Q_reg[2]_2 ,
    \Q_reg[2]_3 ,
    \Q_reg[1]_3 ,
    \Q_reg[0]_1 ,
    \Q_reg[0]_2 ,
    \Q_reg[7]_0 ,
    \Q_reg[11]_0 ,
    \Q_reg[10]_0 ,
    Q,
    S_A_S_op,
    E,
    \Q_reg[0]_3 ,
    CLK,
    AR);
  output \Q_reg[1]_0 ;
  output \Q_reg[1]_1 ;
  output [23:0]\Q_reg[0]_0 ;
  output \Q_reg[2]_0 ;
  output \Q_reg[2]_1 ;
  output \Q_reg[1]_2 ;
  output \Q_reg[2]_2 ;
  output \Q_reg[2]_3 ;
  output [0:0]\Q_reg[1]_3 ;
  output \Q_reg[0]_1 ;
  output \Q_reg[0]_2 ;
  input \Q_reg[7]_0 ;
  input \Q_reg[11]_0 ;
  input \Q_reg[10]_0 ;
  input [23:0]Q;
  input S_A_S_op;
  input [0:0]E;
  input [24:0]\Q_reg[0]_3 ;
  input CLK;
  input [1:0]AR;

  wire [1:0]AR;
  wire [20:20]A_S_C;
  wire CLK;
  wire [0:0]E;
  wire [23:0]Q;
  wire \Q[1]_i_2__1_n_0 ;
  wire \Q[1]_i_3__1_n_0 ;
  wire \Q[1]_i_4__0_n_0 ;
  wire \Q[1]_i_5_n_0 ;
  wire \Q[1]_i_6_n_0 ;
  wire \Q[1]_i_8_n_0 ;
  wire \Q[2]_i_10_n_0 ;
  wire [23:0]\Q_reg[0]_0 ;
  wire \Q_reg[0]_1 ;
  wire \Q_reg[0]_2 ;
  wire [24:0]\Q_reg[0]_3 ;
  wire \Q_reg[10]_0 ;
  wire \Q_reg[11]_0 ;
  wire \Q_reg[1]_0 ;
  wire \Q_reg[1]_1 ;
  wire \Q_reg[1]_2 ;
  wire [0:0]\Q_reg[1]_3 ;
  wire \Q_reg[2]_0 ;
  wire \Q_reg[2]_1 ;
  wire \Q_reg[2]_2 ;
  wire \Q_reg[2]_3 ;
  wire \Q_reg[7]_0 ;
  wire S_A_S_op;

  LUT4 #(
    .INIT(16'h6006)) 
    \Q[0]_i_13__0 
       (.I0(\Q_reg[0]_0 [9]),
        .I1(Q[8]),
        .I2(\Q_reg[0]_0 [10]),
        .I3(Q[9]),
        .O(\Q_reg[0]_2 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \Q[0]_i_3__2 
       (.I0(A_S_C),
        .I1(Q[18]),
        .I2(\Q_reg[0]_0 [20]),
        .I3(Q[20]),
        .O(\Q_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h00000000FFFF3010)) 
    \Q[1]_i_1__8 
       (.I0(\Q[1]_i_2__1_n_0 ),
        .I1(\Q[1]_i_3__1_n_0 ),
        .I2(\Q[1]_i_4__0_n_0 ),
        .I3(\Q[1]_i_5_n_0 ),
        .I4(\Q_reg[1]_2 ),
        .I5(\Q[1]_i_6_n_0 ),
        .O(\Q_reg[1]_3 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \Q[1]_i_2__1 
       (.I0(\Q_reg[0]_0 [16]),
        .I1(Q[15]),
        .I2(\Q_reg[0]_0 [15]),
        .I3(Q[14]),
        .O(\Q[1]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \Q[1]_i_3__1 
       (.I0(A_S_C),
        .I1(Q[18]),
        .I2(\Q_reg[0]_0 [19]),
        .I3(Q[19]),
        .O(\Q[1]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FFFFF0F0FFF4)) 
    \Q[1]_i_4__0 
       (.I0(\Q_reg[1]_0 ),
        .I1(\Q_reg[7]_0 ),
        .I2(\Q[1]_i_8_n_0 ),
        .I3(\Q_reg[11]_0 ),
        .I4(\Q_reg[1]_1 ),
        .I5(\Q_reg[10]_0 ),
        .O(\Q[1]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \Q[1]_i_5 
       (.I0(\Q_reg[0]_0 [17]),
        .I1(Q[16]),
        .I2(\Q_reg[0]_0 [18]),
        .I3(Q[17]),
        .O(\Q[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \Q[1]_i_6 
       (.I0(\Q_reg[0]_0 [22]),
        .I1(Q[22]),
        .I2(\Q_reg[0]_0 [23]),
        .I3(Q[23]),
        .O(\Q[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF6FF6)) 
    \Q[1]_i_8 
       (.I0(Q[13]),
        .I1(\Q_reg[0]_0 [14]),
        .I2(Q[12]),
        .I3(\Q_reg[0]_0 [13]),
        .I4(\Q[1]_i_5_n_0 ),
        .O(\Q[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[2]_i_10 
       (.I0(\Q_reg[0]_0 [2]),
        .I1(Q[3]),
        .I2(\Q_reg[0]_0 [1]),
        .I3(Q[2]),
        .O(\Q[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF6006FFFFFFFF)) 
    \Q[2]_i_6 
       (.I0(Q[0]),
        .I1(S_A_S_op),
        .I2(\Q_reg[0]_0 [0]),
        .I3(Q[1]),
        .I4(\Q_reg[2]_3 ),
        .I5(\Q[2]_i_10_n_0 ),
        .O(\Q_reg[2]_2 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \Q[2]_i_9 
       (.I0(\Q_reg[0]_0 [4]),
        .I1(Q[5]),
        .I2(\Q_reg[0]_0 [3]),
        .I3(Q[4]),
        .O(\Q_reg[2]_3 ));
  LUT5 #(
    .INIT(32'hFFFF6FF6)) 
    \Q[3]_i_2__1 
       (.I0(Q[23]),
        .I1(\Q_reg[0]_0 [23]),
        .I2(Q[22]),
        .I3(\Q_reg[0]_0 [22]),
        .I4(\Q_reg[1]_2 ),
        .O(\Q_reg[2]_1 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \Q[3]_i_9 
       (.I0(\Q_reg[0]_0 [7]),
        .I1(Q[6]),
        .I2(\Q_reg[0]_0 [8]),
        .I3(Q[7]),
        .O(\Q_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \Q[4]_i_4 
       (.I0(\Q_reg[0]_0 [21]),
        .I1(Q[21]),
        .I2(\Q_reg[0]_0 [20]),
        .I3(Q[20]),
        .O(\Q_reg[1]_2 ));
  LUT5 #(
    .INIT(32'hFFFF6FF6)) 
    \Q[4]_i_5 
       (.I0(Q[19]),
        .I1(\Q_reg[0]_0 [19]),
        .I2(Q[18]),
        .I3(A_S_C),
        .I4(\Q[1]_i_5_n_0 ),
        .O(\Q_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \Q[4]_i_6 
       (.I0(\Q_reg[0]_0 [11]),
        .I1(Q[10]),
        .I2(\Q_reg[0]_0 [12]),
        .I3(Q[11]),
        .O(\Q_reg[1]_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[0]_3 [0]),
        .Q(\Q_reg[0]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_3 [10]),
        .Q(\Q_reg[0]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_3 [11]),
        .Q(\Q_reg[0]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_3 [12]),
        .Q(\Q_reg[0]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_3 [13]),
        .Q(\Q_reg[0]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_3 [14]),
        .Q(\Q_reg[0]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_3 [15]),
        .Q(\Q_reg[0]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_3 [16]),
        .Q(\Q_reg[0]_0 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_3 [17]),
        .Q(\Q_reg[0]_0 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_3 [18]),
        .Q(\Q_reg[0]_0 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_3 [19]),
        .Q(A_S_C));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[0]_3 [1]),
        .Q(\Q_reg[0]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_3 [20]),
        .Q(\Q_reg[0]_0 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_3 [21]),
        .Q(\Q_reg[0]_0 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_3 [22]),
        .Q(\Q_reg[0]_0 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_3 [23]),
        .Q(\Q_reg[0]_0 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_3 [24]),
        .Q(\Q_reg[0]_0 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[0]_3 [2]),
        .Q(\Q_reg[0]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[0]_3 [3]),
        .Q(\Q_reg[0]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[0]_3 [4]),
        .Q(\Q_reg[0]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[0]_3 [5]),
        .Q(\Q_reg[0]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[0]_3 [6]),
        .Q(\Q_reg[0]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[0]_3 [7]),
        .Q(\Q_reg[0]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[0]_3 [8]),
        .Q(\Q_reg[0]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_3 [9]),
        .Q(\Q_reg[0]_0 [9]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized11
   (Q,
    E,
    D,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[3] );
  output [4:0]Q;
  input [0:0]E;
  input [4:0]D;
  input clk_IBUF_BUFG;
  input [0:0]\FSM_sequential_state_reg_reg[3] ;

  wire [4:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_sequential_state_reg_reg[3] ;
  wire [4:0]Q;
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
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized12
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
module RegisterAdd__parameterized2
   (S,
    Q,
    \Q_reg[0]_0 ,
    \Q_reg[0]_1 ,
    \Q_reg[0]_2 ,
    \Q_reg[0]_3 ,
    \Q_reg[30]_0 ,
    \FSM_sequential_state_reg_reg[0] ,
    \Data_Y[31] ,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[3] );
  output [3:0]S;
  output [31:0]Q;
  output [3:0]\Q_reg[0]_0 ;
  output [3:0]\Q_reg[0]_1 ;
  output [3:0]\Q_reg[0]_2 ;
  output [0:0]\Q_reg[0]_3 ;
  input [30:0]\Q_reg[30]_0 ;
  input [0:0]\FSM_sequential_state_reg_reg[0] ;
  input [31:0]\Data_Y[31] ;
  input clk_IBUF_BUFG;
  input [2:0]\FSM_sequential_state_reg_reg[3] ;

  wire [31:0]\Data_Y[31] ;
  wire [0:0]\FSM_sequential_state_reg_reg[0] ;
  wire [2:0]\FSM_sequential_state_reg_reg[3] ;
  wire [31:0]Q;
  wire [3:0]\Q_reg[0]_0 ;
  wire [3:0]\Q_reg[0]_1 ;
  wire [3:0]\Q_reg[0]_2 ;
  wire [0:0]\Q_reg[0]_3 ;
  wire [30:0]\Q_reg[30]_0 ;
  wire [3:0]S;
  wire clk_IBUF_BUFG;

  LUT2 #(
    .INIT(4'h9)) 
    \Q[0]_i_14__0 
       (.I0(Q[30]),
        .I1(\Q_reg[30]_0 [30]),
        .O(\Q_reg[0]_2 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_15 
       (.I0(Q[29]),
        .I1(\Q_reg[30]_0 [29]),
        .I2(Q[28]),
        .I3(\Q_reg[30]_0 [28]),
        .O(\Q_reg[0]_2 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_16 
       (.I0(Q[27]),
        .I1(\Q_reg[30]_0 [27]),
        .I2(Q[26]),
        .I3(\Q_reg[30]_0 [26]),
        .O(\Q_reg[0]_2 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_17 
       (.I0(Q[25]),
        .I1(\Q_reg[30]_0 [25]),
        .I2(Q[24]),
        .I3(\Q_reg[30]_0 [24]),
        .O(\Q_reg[0]_2 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_28 
       (.I0(Q[23]),
        .I1(\Q_reg[30]_0 [23]),
        .I2(Q[22]),
        .I3(\Q_reg[30]_0 [22]),
        .O(\Q_reg[0]_1 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_29 
       (.I0(Q[21]),
        .I1(\Q_reg[30]_0 [21]),
        .I2(Q[20]),
        .I3(\Q_reg[30]_0 [20]),
        .O(\Q_reg[0]_1 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_30 
       (.I0(Q[19]),
        .I1(\Q_reg[30]_0 [19]),
        .I2(Q[18]),
        .I3(\Q_reg[30]_0 [18]),
        .O(\Q_reg[0]_1 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_31 
       (.I0(Q[17]),
        .I1(\Q_reg[30]_0 [17]),
        .I2(Q[16]),
        .I3(\Q_reg[30]_0 [16]),
        .O(\Q_reg[0]_1 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_41 
       (.I0(Q[15]),
        .I1(\Q_reg[30]_0 [15]),
        .I2(Q[14]),
        .I3(\Q_reg[30]_0 [14]),
        .O(\Q_reg[0]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_42 
       (.I0(Q[13]),
        .I1(\Q_reg[30]_0 [13]),
        .I2(Q[12]),
        .I3(\Q_reg[30]_0 [12]),
        .O(\Q_reg[0]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_43 
       (.I0(Q[11]),
        .I1(\Q_reg[30]_0 [11]),
        .I2(Q[10]),
        .I3(\Q_reg[30]_0 [10]),
        .O(\Q_reg[0]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_44 
       (.I0(Q[9]),
        .I1(\Q_reg[30]_0 [9]),
        .I2(Q[8]),
        .I3(\Q_reg[30]_0 [8]),
        .O(\Q_reg[0]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_49 
       (.I0(Q[7]),
        .I1(\Q_reg[30]_0 [7]),
        .I2(Q[6]),
        .I3(\Q_reg[30]_0 [6]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_50 
       (.I0(Q[5]),
        .I1(\Q_reg[30]_0 [5]),
        .I2(Q[4]),
        .I3(\Q_reg[30]_0 [4]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_51 
       (.I0(Q[3]),
        .I1(\Q_reg[30]_0 [3]),
        .I2(Q[2]),
        .I3(\Q_reg[30]_0 [2]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[0]_i_52 
       (.I0(Q[1]),
        .I1(\Q_reg[30]_0 [1]),
        .I2(Q[0]),
        .I3(\Q_reg[30]_0 [0]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \Q[0]_i_6__0 
       (.I0(Q[30]),
        .I1(\Q_reg[30]_0 [30]),
        .O(\Q_reg[0]_3 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_Y[31] [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(\Data_Y[31] [10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(\Data_Y[31] [11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(\Data_Y[31] [12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(\Data_Y[31] [13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(\Data_Y[31] [14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(\Data_Y[31] [15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(\Data_Y[31] [16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(\Data_Y[31] [17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(\Data_Y[31] [18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(\Data_Y[31] [19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(\Data_Y[31] [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(\Data_Y[31] [20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(\Data_Y[31] [21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(\Data_Y[31] [22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(\Data_Y[31] [23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(\Data_Y[31] [24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(\Data_Y[31] [25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(\Data_Y[31] [26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(\Data_Y[31] [27]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(\Data_Y[31] [28]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(\Data_Y[31] [29]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(\Data_Y[31] [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(\Data_Y[31] [30]),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [2]),
        .D(\Data_Y[31] [31]),
        .Q(Q[31]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(\Data_Y[31] [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(\Data_Y[31] [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(\Data_Y[31] [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(\Data_Y[31] [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(\Data_Y[31] [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(\Data_Y[31] [8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0] ),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(\Data_Y[31] [9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized3
   (\Q_reg[25]_0 ,
    Q,
    \Q_reg[24]_0 ,
    \Q_reg[6]_0 ,
    \Q_reg[11]_0 ,
    \Q_reg[16]_0 ,
    \Q_reg[21]_0 ,
    \Q_reg[25]_1 ,
    \Q_reg[0]_0 ,
    FSM_selector_D,
    \Q_reg[22]_0 ,
    \Q_reg[0]_1 ,
    \Q_reg[0]_2 ,
    intAS,
    \Q_reg[31] ,
    \Q_reg[31]_0 ,
    E,
    D,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[3] );
  output [13:0]\Q_reg[25]_0 ;
  output [30:0]Q;
  output [22:0]\Q_reg[24]_0 ;
  output \Q_reg[6]_0 ;
  output \Q_reg[11]_0 ;
  output \Q_reg[16]_0 ;
  output \Q_reg[21]_0 ;
  input [23:0]\Q_reg[25]_1 ;
  input \Q_reg[0]_0 ;
  input FSM_selector_D;
  input \Q_reg[22]_0 ;
  input [11:0]\Q_reg[0]_1 ;
  input [0:0]\Q_reg[0]_2 ;
  input intAS;
  input [0:0]\Q_reg[31] ;
  input [0:0]\Q_reg[31]_0 ;
  input [0:0]E;
  input [30:0]D;
  input clk_IBUF_BUFG;
  input [1:0]\FSM_sequential_state_reg_reg[3] ;

  wire [30:0]D;
  wire [0:0]E;
  wire FSM_selector_D;
  wire [1:0]\FSM_sequential_state_reg_reg[3] ;
  wire [30:0]Q;
  wire \Q_reg[0]_0 ;
  wire [11:0]\Q_reg[0]_1 ;
  wire [0:0]\Q_reg[0]_2 ;
  wire \Q_reg[11]_0 ;
  wire \Q_reg[16]_0 ;
  wire \Q_reg[21]_0 ;
  wire \Q_reg[22]_0 ;
  wire [22:0]\Q_reg[24]_0 ;
  wire [13:0]\Q_reg[25]_0 ;
  wire [23:0]\Q_reg[25]_1 ;
  wire [0:0]\Q_reg[31] ;
  wire [0:0]\Q_reg[31]_0 ;
  wire \Q_reg[6]_0 ;
  wire clk_IBUF_BUFG;
  wire intAS;

  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[10]_i_1__3 
       (.I0(Q[8]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[25]_1 [8]),
        .O(\Q_reg[24]_0 [8]));
  LUT6 #(
    .INIT(64'h555A65565AAAA66A)) 
    \Q[11]_i_1__2 
       (.I0(\Q_reg[24]_0 [9]),
        .I1(Q[8]),
        .I2(\Q_reg[0]_0 ),
        .I3(\Q_reg[25]_1 [8]),
        .I4(FSM_selector_D),
        .I5(\Q_reg[0]_1 [3]),
        .O(\Q_reg[25]_0 [4]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[11]_i_1__3 
       (.I0(Q[9]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[25]_1 [9]),
        .O(\Q_reg[24]_0 [9]));
  LUT6 #(
    .INIT(64'h0000288200008228)) 
    \Q[11]_i_3__0 
       (.I0(Q[7]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[25]_1 [7]),
        .O(\Q_reg[11]_0 ));
  LUT6 #(
    .INIT(64'h555A65565AAAA66A)) 
    \Q[12]_i_1__2 
       (.I0(\Q_reg[24]_0 [10]),
        .I1(Q[9]),
        .I2(\Q_reg[0]_0 ),
        .I3(\Q_reg[25]_1 [9]),
        .I4(FSM_selector_D),
        .I5(\Q_reg[0]_1 [4]),
        .O(\Q_reg[25]_0 [5]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[12]_i_1__3 
       (.I0(Q[10]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[25]_1 [10]),
        .O(\Q_reg[24]_0 [10]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[13]_i_1__3 
       (.I0(Q[11]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[25]_1 [11]),
        .O(\Q_reg[24]_0 [11]));
  LUT6 #(
    .INIT(64'h555A65565AAAA66A)) 
    \Q[14]_i_1__2 
       (.I0(\Q_reg[24]_0 [12]),
        .I1(Q[11]),
        .I2(\Q_reg[0]_0 ),
        .I3(\Q_reg[25]_1 [11]),
        .I4(FSM_selector_D),
        .I5(\Q_reg[0]_1 [5]),
        .O(\Q_reg[25]_0 [6]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[14]_i_1__3 
       (.I0(Q[12]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[25]_1 [12]),
        .O(\Q_reg[24]_0 [12]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[15]_i_1__3 
       (.I0(Q[13]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[25]_1 [13]),
        .O(\Q_reg[24]_0 [13]));
  LUT6 #(
    .INIT(64'h555A65565AAAA66A)) 
    \Q[16]_i_1__2 
       (.I0(\Q_reg[24]_0 [14]),
        .I1(Q[13]),
        .I2(\Q_reg[0]_0 ),
        .I3(\Q_reg[25]_1 [13]),
        .I4(FSM_selector_D),
        .I5(\Q_reg[0]_1 [6]),
        .O(\Q_reg[25]_0 [7]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[16]_i_1__3 
       (.I0(Q[14]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[25]_1 [14]),
        .O(\Q_reg[24]_0 [14]));
  LUT6 #(
    .INIT(64'h0000288200008228)) 
    \Q[16]_i_3__1 
       (.I0(Q[12]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[25]_1 [12]),
        .O(\Q_reg[16]_0 ));
  LUT6 #(
    .INIT(64'h555A65565AAAA66A)) 
    \Q[17]_i_1__2 
       (.I0(\Q_reg[24]_0 [15]),
        .I1(Q[14]),
        .I2(\Q_reg[0]_0 ),
        .I3(\Q_reg[25]_1 [14]),
        .I4(FSM_selector_D),
        .I5(\Q_reg[0]_1 [7]),
        .O(\Q_reg[25]_0 [8]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[17]_i_1__3 
       (.I0(Q[15]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[25]_1 [15]),
        .O(\Q_reg[24]_0 [15]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[18]_i_1__3 
       (.I0(Q[16]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[25]_1 [16]),
        .O(\Q_reg[24]_0 [16]));
  LUT6 #(
    .INIT(64'h555A65565AAAA66A)) 
    \Q[19]_i_1__2 
       (.I0(\Q_reg[24]_0 [17]),
        .I1(Q[16]),
        .I2(\Q_reg[0]_0 ),
        .I3(\Q_reg[25]_1 [16]),
        .I4(FSM_selector_D),
        .I5(\Q_reg[0]_1 [8]),
        .O(\Q_reg[25]_0 [9]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[19]_i_1__3 
       (.I0(Q[17]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[25]_1 [17]),
        .O(\Q_reg[24]_0 [17]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[20]_i_1__3 
       (.I0(Q[18]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[25]_1 [18]),
        .O(\Q_reg[24]_0 [18]));
  LUT6 #(
    .INIT(64'h555A65565AAAA66A)) 
    \Q[21]_i_1__2 
       (.I0(\Q_reg[24]_0 [19]),
        .I1(Q[18]),
        .I2(\Q_reg[0]_0 ),
        .I3(\Q_reg[25]_1 [18]),
        .I4(FSM_selector_D),
        .I5(\Q_reg[0]_1 [9]),
        .O(\Q_reg[25]_0 [10]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[21]_i_1__3 
       (.I0(Q[19]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[25]_1 [19]),
        .O(\Q_reg[24]_0 [19]));
  LUT6 #(
    .INIT(64'h0000288200008228)) 
    \Q[21]_i_3__0 
       (.I0(Q[17]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[25]_1 [17]),
        .O(\Q_reg[21]_0 ));
  LUT6 #(
    .INIT(64'h555A65565AAAA66A)) 
    \Q[22]_i_1__2 
       (.I0(\Q_reg[24]_0 [20]),
        .I1(Q[19]),
        .I2(\Q_reg[0]_0 ),
        .I3(\Q_reg[25]_1 [19]),
        .I4(FSM_selector_D),
        .I5(\Q_reg[0]_1 [10]),
        .O(\Q_reg[25]_0 [11]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[22]_i_1__3 
       (.I0(Q[20]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[25]_1 [20]),
        .O(\Q_reg[24]_0 [20]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[23]_i_1__3 
       (.I0(Q[21]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[25]_1 [21]),
        .O(\Q_reg[24]_0 [21]));
  LUT6 #(
    .INIT(64'h555A65565AAAA66A)) 
    \Q[24]_i_1__2 
       (.I0(\Q_reg[24]_0 [22]),
        .I1(Q[21]),
        .I2(\Q_reg[0]_0 ),
        .I3(\Q_reg[25]_1 [21]),
        .I4(FSM_selector_D),
        .I5(\Q_reg[0]_1 [11]),
        .O(\Q_reg[25]_0 [12]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[24]_i_1__3 
       (.I0(Q[22]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[25]_1 [22]),
        .O(\Q_reg[24]_0 [22]));
  LUT6 #(
    .INIT(64'hA5AA6A59AA5AA965)) 
    \Q[25]_i_1__1 
       (.I0(\Q_reg[25]_1 [23]),
        .I1(Q[22]),
        .I2(\Q_reg[0]_0 ),
        .I3(\Q_reg[25]_1 [22]),
        .I4(FSM_selector_D),
        .I5(\Q_reg[22]_0 ),
        .O(\Q_reg[25]_0 [13]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[2]_i_1__3 
       (.I0(Q[0]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[25]_1 [0]),
        .O(\Q_reg[24]_0 [0]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[3]_i_1__3 
       (.I0(Q[1]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[25]_1 [1]),
        .O(\Q_reg[24]_0 [1]));
  LUT6 #(
    .INIT(64'h555A65565AAAA66A)) 
    \Q[4]_i_1__2 
       (.I0(\Q_reg[24]_0 [2]),
        .I1(Q[1]),
        .I2(\Q_reg[0]_0 ),
        .I3(\Q_reg[25]_1 [1]),
        .I4(FSM_selector_D),
        .I5(\Q_reg[0]_2 ),
        .O(\Q_reg[25]_0 [0]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[4]_i_1__3 
       (.I0(Q[2]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[25]_1 [2]),
        .O(\Q_reg[24]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[5]_i_1__3 
       (.I0(Q[3]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[25]_1 [3]),
        .O(\Q_reg[24]_0 [3]));
  LUT6 #(
    .INIT(64'h555A65565AAAA66A)) 
    \Q[6]_i_1__2 
       (.I0(\Q_reg[24]_0 [4]),
        .I1(Q[3]),
        .I2(\Q_reg[0]_0 ),
        .I3(\Q_reg[25]_1 [3]),
        .I4(FSM_selector_D),
        .I5(\Q_reg[0]_1 [0]),
        .O(\Q_reg[25]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[6]_i_1__3 
       (.I0(Q[4]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[25]_1 [4]),
        .O(\Q_reg[24]_0 [4]));
  LUT6 #(
    .INIT(64'h0000288200008228)) 
    \Q[6]_i_3__0 
       (.I0(Q[2]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[25]_1 [2]),
        .O(\Q_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h555A65565AAAA66A)) 
    \Q[7]_i_1__3 
       (.I0(\Q_reg[24]_0 [5]),
        .I1(Q[4]),
        .I2(\Q_reg[0]_0 ),
        .I3(\Q_reg[25]_1 [4]),
        .I4(FSM_selector_D),
        .I5(\Q_reg[0]_1 [1]),
        .O(\Q_reg[25]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[7]_i_1__4 
       (.I0(Q[5]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[25]_1 [5]),
        .O(\Q_reg[24]_0 [5]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[8]_i_1__3 
       (.I0(Q[6]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[25]_1 [6]),
        .O(\Q_reg[24]_0 [6]));
  LUT6 #(
    .INIT(64'h555A65565AAAA66A)) 
    \Q[9]_i_1__2 
       (.I0(\Q_reg[24]_0 [7]),
        .I1(Q[6]),
        .I2(\Q_reg[0]_0 ),
        .I3(\Q_reg[25]_1 [6]),
        .I4(FSM_selector_D),
        .I5(\Q_reg[0]_1 [2]),
        .O(\Q_reg[25]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[9]_i_1__3 
       (.I0(Q[7]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[25]_1 [7]),
        .O(\Q_reg[24]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(D[23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(D[24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(D[25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(D[26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(D[27]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(D[28]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(D[29]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(D[30]),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized4
   (\Q_reg[7]_0 ,
    E,
    D,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[3] ,
    AR);
  output [30:0]\Q_reg[7]_0 ;
  input [0:0]E;
  input [30:0]D;
  input clk_IBUF_BUFG;
  input [1:0]\FSM_sequential_state_reg_reg[3] ;
  input [0:0]AR;

  wire [0:0]AR;
  wire [30:0]D;
  wire [0:0]E;
  wire [1:0]\FSM_sequential_state_reg_reg[3] ;
  wire [30:0]\Q_reg[7]_0 ;
  wire clk_IBUF_BUFG;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[0]),
        .Q(\Q_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(D[10]),
        .Q(\Q_reg[7]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(D[11]),
        .Q(\Q_reg[7]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[12]),
        .Q(\Q_reg[7]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[13]),
        .Q(\Q_reg[7]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[14]),
        .Q(\Q_reg[7]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[15]),
        .Q(\Q_reg[7]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[16]),
        .Q(\Q_reg[7]_0 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[17]),
        .Q(\Q_reg[7]_0 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[18]),
        .Q(\Q_reg[7]_0 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[19]),
        .Q(\Q_reg[7]_0 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[1]),
        .Q(\Q_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[20]),
        .Q(\Q_reg[7]_0 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[21]),
        .Q(\Q_reg[7]_0 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(D[22]),
        .Q(\Q_reg[7]_0 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(D[23]),
        .Q(\Q_reg[7]_0 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[24]),
        .Q(\Q_reg[7]_0 [24]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[25]),
        .Q(\Q_reg[7]_0 [25]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[26]),
        .Q(\Q_reg[7]_0 [26]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[27]),
        .Q(\Q_reg[7]_0 [27]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(D[28]),
        .Q(\Q_reg[7]_0 [28]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(D[29]),
        .Q(\Q_reg[7]_0 [29]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[2]),
        .Q(\Q_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [0]),
        .D(D[30]),
        .Q(\Q_reg[7]_0 [30]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[3]),
        .Q(\Q_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[4]),
        .Q(\Q_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[5]),
        .Q(\Q_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[6]),
        .Q(\Q_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[7]),
        .Q(\Q_reg[7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[8]),
        .Q(\Q_reg[7]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(\FSM_sequential_state_reg_reg[3] [1]),
        .D(D[9]),
        .Q(\Q_reg[7]_0 [9]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized5
   (\Q_reg[30] ,
    Q,
    Data_A,
    \Q_reg[0]_0 ,
    \Q_reg[0]_1 ,
    FSM_selector_D,
    \Q_reg[23] ,
    E,
    D,
    CLK,
    AR);
  output [7:0]\Q_reg[30] ;
  output [7:0]Q;
  output [0:0]Data_A;
  input \Q_reg[0]_0 ;
  input \Q_reg[0]_1 ;
  input FSM_selector_D;
  input [0:0]\Q_reg[23] ;
  input [0:0]E;
  input [7:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [7:0]D;
  wire [0:0]Data_A;
  wire [0:0]E;
  wire FSM_selector_D;
  wire [7:0]Q;
  wire \Q_reg[0]_0 ;
  wire \Q_reg[0]_1 ;
  wire [0:0]\Q_reg[23] ;
  wire [7:0]\Q_reg[30] ;

  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \Q[23]_i_1__4 
       (.I0(Q[0]),
        .I1(\Q_reg[0]_0 ),
        .I2(\Q_reg[0]_1 ),
        .O(\Q_reg[30] [0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \Q[24]_i_1__4 
       (.I0(Q[1]),
        .I1(\Q_reg[0]_0 ),
        .I2(\Q_reg[0]_1 ),
        .O(\Q_reg[30] [1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \Q[25]_i_1__3 
       (.I0(Q[2]),
        .I1(\Q_reg[0]_0 ),
        .I2(\Q_reg[0]_1 ),
        .O(\Q_reg[30] [2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \Q[26]_i_1 
       (.I0(Q[3]),
        .I1(\Q_reg[0]_0 ),
        .I2(\Q_reg[0]_1 ),
        .O(\Q_reg[30] [3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \Q[27]_i_1 
       (.I0(Q[4]),
        .I1(\Q_reg[0]_0 ),
        .I2(\Q_reg[0]_1 ),
        .O(\Q_reg[30] [4]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \Q[28]_i_1 
       (.I0(Q[5]),
        .I1(\Q_reg[0]_0 ),
        .I2(\Q_reg[0]_1 ),
        .O(\Q_reg[30] [5]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \Q[29]_i_1 
       (.I0(Q[6]),
        .I1(\Q_reg[0]_0 ),
        .I2(\Q_reg[0]_1 ),
        .O(\Q_reg[30] [6]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \Q[30]_i_1__0 
       (.I0(Q[7]),
        .I1(\Q_reg[0]_0 ),
        .I2(\Q_reg[0]_1 ),
        .O(\Q_reg[30] [7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[3]_i_2__2 
       (.I0(Q[0]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[23] ),
        .O(Data_A));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized6
   (D,
    \Data_array[6]_0 ,
    Q,
    FSM_barrel_shifter_L_R,
    \Q_reg[25]_0 ,
    S_Shift_Value,
    FSM_barrel_shifter_B_S,
    \Q_reg[2]_0 ,
    CLK,
    AR);
  output [9:0]D;
  output [9:0]\Data_array[6]_0 ;
  output [15:0]Q;
  input FSM_barrel_shifter_L_R;
  input [1:0]\Q_reg[25]_0 ;
  input [1:0]S_Shift_Value;
  input FSM_barrel_shifter_B_S;
  input [25:0]\Q_reg[2]_0 ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [9:0]D;
  wire [9:0]\Data_array[4]_0 ;
  wire [9:0]\Data_array[6]_0 ;
  wire FSM_barrel_shifter_B_S;
  wire FSM_barrel_shifter_L_R;
  wire [15:0]Q;
  wire [1:0]\Q_reg[25]_0 ;
  wire [25:0]\Q_reg[2]_0 ;
  wire [1:0]S_Shift_Value;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[16]_i_1 
       (.I0(\Data_array[6]_0 [9]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Q_reg[25]_0 [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \Q[16]_i_2 
       (.I0(\Data_array[4]_0 [9]),
        .I1(Q[7]),
        .I2(S_Shift_Value[1]),
        .I3(FSM_barrel_shifter_B_S),
        .I4(S_Shift_Value[0]),
        .I5(Q[15]),
        .O(\Data_array[6]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[17]_i_1 
       (.I0(\Data_array[6]_0 [8]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Q_reg[25]_0 [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \Q[17]_i_2 
       (.I0(\Data_array[4]_0 [8]),
        .I1(Q[6]),
        .I2(S_Shift_Value[1]),
        .I3(FSM_barrel_shifter_B_S),
        .I4(S_Shift_Value[0]),
        .I5(Q[14]),
        .O(\Data_array[6]_0 [8]));
  LUT6 #(
    .INIT(64'hBB88BB8BBB88B888)) 
    \Q[18]_i_1 
       (.I0(\Data_array[6]_0 [7]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(S_Shift_Value[1]),
        .I3(FSM_barrel_shifter_B_S),
        .I4(S_Shift_Value[0]),
        .I5(Q[8]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \Q[18]_i_2 
       (.I0(\Data_array[4]_0 [7]),
        .I1(Q[5]),
        .I2(S_Shift_Value[1]),
        .I3(FSM_barrel_shifter_B_S),
        .I4(S_Shift_Value[0]),
        .I5(Q[13]),
        .O(\Data_array[6]_0 [7]));
  LUT6 #(
    .INIT(64'hBB88BB8BBB88B888)) 
    \Q[19]_i_1 
       (.I0(\Data_array[6]_0 [6]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(S_Shift_Value[1]),
        .I3(FSM_barrel_shifter_B_S),
        .I4(S_Shift_Value[0]),
        .I5(Q[9]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \Q[19]_i_2 
       (.I0(\Data_array[4]_0 [6]),
        .I1(Q[4]),
        .I2(S_Shift_Value[1]),
        .I3(FSM_barrel_shifter_B_S),
        .I4(S_Shift_Value[0]),
        .I5(Q[12]),
        .O(\Data_array[6]_0 [6]));
  LUT6 #(
    .INIT(64'hBB88BB8BBB88B888)) 
    \Q[20]_i_1 
       (.I0(\Data_array[6]_0 [5]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(S_Shift_Value[1]),
        .I3(FSM_barrel_shifter_B_S),
        .I4(S_Shift_Value[0]),
        .I5(Q[10]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \Q[20]_i_2 
       (.I0(\Data_array[4]_0 [5]),
        .I1(Q[3]),
        .I2(S_Shift_Value[1]),
        .I3(FSM_barrel_shifter_B_S),
        .I4(S_Shift_Value[0]),
        .I5(Q[11]),
        .O(\Data_array[6]_0 [5]));
  LUT6 #(
    .INIT(64'hBB88BB8BBB88B888)) 
    \Q[21]_i_1 
       (.I0(\Data_array[6]_0 [4]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(S_Shift_Value[1]),
        .I3(FSM_barrel_shifter_B_S),
        .I4(S_Shift_Value[0]),
        .I5(Q[11]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \Q[21]_i_2 
       (.I0(\Data_array[4]_0 [4]),
        .I1(Q[2]),
        .I2(S_Shift_Value[1]),
        .I3(FSM_barrel_shifter_B_S),
        .I4(S_Shift_Value[0]),
        .I5(Q[10]),
        .O(\Data_array[6]_0 [4]));
  LUT6 #(
    .INIT(64'hBB88BB8BBB88B888)) 
    \Q[22]_i_1 
       (.I0(\Data_array[6]_0 [3]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(S_Shift_Value[1]),
        .I3(FSM_barrel_shifter_B_S),
        .I4(S_Shift_Value[0]),
        .I5(Q[12]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \Q[22]_i_2 
       (.I0(\Data_array[4]_0 [3]),
        .I1(Q[1]),
        .I2(S_Shift_Value[1]),
        .I3(FSM_barrel_shifter_B_S),
        .I4(S_Shift_Value[0]),
        .I5(Q[9]),
        .O(\Data_array[6]_0 [3]));
  LUT6 #(
    .INIT(64'hBB88BB8BBB88B888)) 
    \Q[23]_i_1 
       (.I0(\Data_array[6]_0 [2]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(S_Shift_Value[1]),
        .I3(FSM_barrel_shifter_B_S),
        .I4(S_Shift_Value[0]),
        .I5(Q[13]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \Q[23]_i_2 
       (.I0(\Data_array[4]_0 [2]),
        .I1(Q[0]),
        .I2(S_Shift_Value[1]),
        .I3(FSM_barrel_shifter_B_S),
        .I4(S_Shift_Value[0]),
        .I5(Q[8]),
        .O(\Data_array[6]_0 [2]));
  LUT6 #(
    .INIT(64'hBB88BB8BBB88B888)) 
    \Q[24]_i_1 
       (.I0(\Data_array[6]_0 [1]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(S_Shift_Value[1]),
        .I3(FSM_barrel_shifter_B_S),
        .I4(S_Shift_Value[0]),
        .I5(Q[14]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \Q[24]_i_2__0 
       (.I0(\Data_array[4]_0 [1]),
        .I1(\Data_array[4]_0 [9]),
        .I2(S_Shift_Value[1]),
        .I3(Q[15]),
        .I4(S_Shift_Value[0]),
        .I5(Q[7]),
        .O(\Data_array[6]_0 [1]));
  LUT6 #(
    .INIT(64'hBB88BB8BBB88B888)) 
    \Q[25]_i_2 
       (.I0(\Data_array[6]_0 [0]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(S_Shift_Value[1]),
        .I3(FSM_barrel_shifter_B_S),
        .I4(S_Shift_Value[0]),
        .I5(Q[15]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \Q[25]_i_3__0 
       (.I0(\Data_array[4]_0 [0]),
        .I1(\Data_array[4]_0 [8]),
        .I2(S_Shift_Value[1]),
        .I3(Q[14]),
        .I4(S_Shift_Value[0]),
        .I5(Q[6]),
        .O(\Data_array[6]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[2]_0 [0]),
        .Q(\Data_array[4]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[2]_0 [10]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[2]_0 [11]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[2]_0 [12]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[2]_0 [13]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[2]_0 [14]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[2]_0 [15]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[2]_0 [16]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[2]_0 [17]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[2]_0 [18]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[2]_0 [19]),
        .Q(Q[9]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[2]_0 [1]),
        .Q(\Data_array[4]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[2]_0 [20]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[2]_0 [21]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[2]_0 [22]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[2]_0 [23]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[2]_0 [24]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[2]_0 [25]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[2]_0 [2]),
        .Q(\Data_array[4]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[2]_0 [3]),
        .Q(\Data_array[4]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[2]_0 [4]),
        .Q(\Data_array[4]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[2]_0 [5]),
        .Q(\Data_array[4]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[2]_0 [6]),
        .Q(\Data_array[4]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[2]_0 [7]),
        .Q(\Data_array[4]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[2]_0 [8]),
        .Q(\Data_array[4]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg[2]_0 [9]),
        .Q(\Data_array[4]_0 [9]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized7
   (\Q_reg[3]_0 ,
    \Q_reg[0]_0 ,
    \Q_reg[2]_0 ,
    round_flag,
    S_A_S_Oper_A,
    \Q_reg[0]_1 ,
    FSM_selector_D,
    S_A_S_op,
    \Q_reg[21]_0 ,
    r_mode_IBUF,
    sign_final_result,
    out,
    E,
    D,
    CLK,
    AR);
  output [2:0]\Q_reg[3]_0 ;
  output [25:0]\Q_reg[0]_0 ;
  output [0:0]\Q_reg[2]_0 ;
  output round_flag;
  output [21:0]S_A_S_Oper_A;
  output \Q_reg[0]_1 ;
  input FSM_selector_D;
  input S_A_S_op;
  input [21:0]\Q_reg[21]_0 ;
  input [1:0]r_mode_IBUF;
  input sign_final_result;
  input [0:0]out;
  input [0:0]E;
  input [25:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [25:0]D;
  wire [0:0]E;
  wire FSM_selector_D;
  wire [25:0]\Q_reg[0]_0 ;
  wire \Q_reg[0]_1 ;
  wire [21:0]\Q_reg[21]_0 ;
  wire [0:0]\Q_reg[2]_0 ;
  wire [2:0]\Q_reg[3]_0 ;
  wire [21:0]S_A_S_Oper_A;
  wire S_A_S_op;
  wire [0:0]out;
  wire [1:0]r_mode_IBUF;
  wire round_flag;
  wire sign_final_result;

  LUT6 #(
    .INIT(64'hFEBFFEBFFEBFFFFF)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(out),
        .I1(r_mode_IBUF[0]),
        .I2(sign_final_result),
        .I3(r_mode_IBUF[1]),
        .I4(\Q_reg[0]_0 [1]),
        .I5(\Q_reg[0]_0 [0]),
        .O(\Q_reg[0]_1 ));
  LUT5 #(
    .INIT(32'h0E0000E0)) 
    \FSM_sequential_state_reg[3]_i_2 
       (.I0(\Q_reg[0]_0 [0]),
        .I1(\Q_reg[0]_0 [1]),
        .I2(r_mode_IBUF[1]),
        .I3(sign_final_result),
        .I4(r_mode_IBUF[0]),
        .O(round_flag));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[0]_i_1__10 
       (.I0(\Q_reg[0]_0 [0]),
        .I1(FSM_selector_D),
        .O(\Q_reg[3]_0 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[10]_i_3__0 
       (.I0(\Q_reg[0]_0 [9]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[21]_0 [7]),
        .O(S_A_S_Oper_A[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[11]_i_5__0 
       (.I0(\Q_reg[0]_0 [10]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[21]_0 [8]),
        .O(S_A_S_Oper_A[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[11]_i_7 
       (.I0(\Q_reg[0]_0 [11]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[21]_0 [9]),
        .O(S_A_S_Oper_A[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[13]_i_3__1 
       (.I0(\Q_reg[0]_0 [12]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[21]_0 [10]),
        .O(S_A_S_Oper_A[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[13]_i_5 
       (.I0(\Q_reg[0]_0 [13]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[21]_0 [11]),
        .O(S_A_S_Oper_A[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[15]_i_3__1 
       (.I0(\Q_reg[0]_0 [14]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[21]_0 [12]),
        .O(S_A_S_Oper_A[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[16]_i_5 
       (.I0(\Q_reg[0]_0 [15]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[21]_0 [13]),
        .O(S_A_S_Oper_A[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[16]_i_7 
       (.I0(\Q_reg[0]_0 [16]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[21]_0 [14]),
        .O(S_A_S_Oper_A[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[18]_i_3__0 
       (.I0(\Q_reg[0]_0 [17]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[21]_0 [15]),
        .O(S_A_S_Oper_A[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[18]_i_5 
       (.I0(\Q_reg[0]_0 [18]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[21]_0 [16]),
        .O(S_A_S_Oper_A[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[20]_i_3__0 
       (.I0(\Q_reg[0]_0 [19]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[21]_0 [17]),
        .O(S_A_S_Oper_A[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[21]_i_5 
       (.I0(\Q_reg[0]_0 [20]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[21]_0 [18]),
        .O(S_A_S_Oper_A[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[21]_i_7 
       (.I0(\Q_reg[0]_0 [21]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[21]_0 [19]),
        .O(S_A_S_Oper_A[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[23]_i_3__0 
       (.I0(\Q_reg[0]_0 [22]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[21]_0 [20]),
        .O(S_A_S_Oper_A[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[23]_i_5__0 
       (.I0(\Q_reg[0]_0 [23]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[21]_0 [21]),
        .O(S_A_S_Oper_A[21]));
  LUT6 #(
    .INIT(64'hF1EF8F00F0E18000)) 
    \Q[2]_i_1__1 
       (.I0(\Q_reg[0]_0 [0]),
        .I1(\Q_reg[0]_0 [1]),
        .I2(FSM_selector_D),
        .I3(\Q_reg[0]_0 [2]),
        .I4(S_A_S_op),
        .I5(\Q_reg[21]_0 [0]),
        .O(\Q_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hA5AA9696AA5A9666)) 
    \Q[2]_i_1__2 
       (.I0(\Q_reg[0]_0 [2]),
        .I1(\Q_reg[21]_0 [0]),
        .I2(S_A_S_op),
        .I3(\Q_reg[0]_0 [1]),
        .I4(FSM_selector_D),
        .I5(\Q_reg[0]_0 [0]),
        .O(\Q_reg[3]_0 [1]));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[3]_i_1__2 
       (.I0(FSM_selector_D),
        .I1(\Q_reg[0]_0 [3]),
        .I2(S_A_S_op),
        .I3(\Q_reg[21]_0 [1]),
        .I4(\Q_reg[2]_0 ),
        .O(\Q_reg[3]_0 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[3]_i_3__1 
       (.I0(\Q_reg[0]_0 [2]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[21]_0 [0]),
        .O(S_A_S_Oper_A[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[3]_i_5__1 
       (.I0(\Q_reg[0]_0 [3]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[21]_0 [1]),
        .O(S_A_S_Oper_A[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[5]_i_3 
       (.I0(\Q_reg[0]_0 [4]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[21]_0 [2]),
        .O(S_A_S_Oper_A[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[6]_i_5 
       (.I0(\Q_reg[0]_0 [5]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[21]_0 [3]),
        .O(S_A_S_Oper_A[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[6]_i_7 
       (.I0(\Q_reg[0]_0 [6]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[21]_0 [4]),
        .O(S_A_S_Oper_A[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[8]_i_3__0 
       (.I0(\Q_reg[0]_0 [7]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[21]_0 [5]),
        .O(S_A_S_Oper_A[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[8]_i_5 
       (.I0(\Q_reg[0]_0 [8]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[21]_0 [6]),
        .O(S_A_S_Oper_A[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[0]),
        .Q(\Q_reg[0]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[10]),
        .Q(\Q_reg[0]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[11]),
        .Q(\Q_reg[0]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[12]),
        .Q(\Q_reg[0]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[13]),
        .Q(\Q_reg[0]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[14]),
        .Q(\Q_reg[0]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[15]),
        .Q(\Q_reg[0]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[16]),
        .Q(\Q_reg[0]_0 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[17]),
        .Q(\Q_reg[0]_0 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[18]),
        .Q(\Q_reg[0]_0 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[19]),
        .Q(\Q_reg[0]_0 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[1]),
        .Q(\Q_reg[0]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[20]),
        .Q(\Q_reg[0]_0 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[21]),
        .Q(\Q_reg[0]_0 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[22]),
        .Q(\Q_reg[0]_0 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[23]),
        .Q(\Q_reg[0]_0 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[24]),
        .Q(\Q_reg[0]_0 [24]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[25]),
        .Q(\Q_reg[0]_0 [25]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[2]),
        .Q(\Q_reg[0]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[3]),
        .Q(\Q_reg[0]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[4]),
        .Q(\Q_reg[0]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[5]),
        .Q(\Q_reg[0]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[6]),
        .Q(\Q_reg[0]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[7]),
        .Q(\Q_reg[0]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[8]),
        .Q(\Q_reg[0]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[9]),
        .Q(\Q_reg[0]_0 [9]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized8
   (D,
    \Q_reg[18]_0 ,
    \Q_reg[24]_0 ,
    \Q_reg[0]_0 ,
    \Q_reg[21]_0 ,
    Q,
    \Q_reg[1]_0 ,
    \Q_reg[2]_0 ,
    FSM_barrel_shifter_L_R,
    FSM_selector_C,
    S_Shift_Value,
    \Q_reg[22]_0 ,
    E,
    \Q_reg[25]_0 ,
    CLK,
    AR);
  output [18:0]D;
  output [3:0]\Q_reg[18]_0 ;
  output [1:0]\Q_reg[24]_0 ;
  output [1:0]\Q_reg[0]_0 ;
  output [0:0]\Q_reg[21]_0 ;
  input [2:0]Q;
  input [1:0]\Q_reg[1]_0 ;
  input [2:0]\Q_reg[2]_0 ;
  input FSM_barrel_shifter_L_R;
  input FSM_selector_C;
  input [2:0]S_Shift_Value;
  input [22:0]\Q_reg[22]_0 ;
  input [0:0]E;
  input [25:0]\Q_reg[25]_0 ;
  input CLK;
  input [1:0]AR;

  wire [1:0]AR;
  wire [24:1]\Barrel_Shifter_module/Mux_Array/Data_array[0] ;
  wire [22:0]\Barrel_Shifter_module/Mux_Array/Data_array[1] ;
  wire [18:1]\Barrel_Shifter_module/Mux_Array/Data_array[2] ;
  wire CLK;
  wire [18:0]D;
  wire [0:0]E;
  wire FSM_barrel_shifter_L_R;
  wire FSM_selector_C;
  wire [2:0]Q;
  wire [1:0]\Q_reg[0]_0 ;
  wire [3:0]\Q_reg[18]_0 ;
  wire [1:0]\Q_reg[1]_0 ;
  wire [0:0]\Q_reg[21]_0 ;
  wire [22:0]\Q_reg[22]_0 ;
  wire [1:0]\Q_reg[24]_0 ;
  wire [25:0]\Q_reg[25]_0 ;
  wire [2:0]\Q_reg[2]_0 ;
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
  wire \Q_reg_n_0_[2] ;
  wire \Q_reg_n_0_[3] ;
  wire \Q_reg_n_0_[4] ;
  wire \Q_reg_n_0_[5] ;
  wire \Q_reg_n_0_[6] ;
  wire \Q_reg_n_0_[7] ;
  wire \Q_reg_n_0_[8] ;
  wire \Q_reg_n_0_[9] ;
  wire [12:12]S_Data_Shift;
  wire [2:0]S_Shift_Value;

  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \Q[0]_i_1__3 
       (.I0(S_Shift_Value[1]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [0]),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[1] [2]),
        .I3(S_Shift_Value[2]),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[2] [4]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFEA4A0000EA4A)) 
    \Q[0]_i_2__0 
       (.I0(FSM_barrel_shifter_L_R),
        .I1(\Q_reg[0]_0 [0]),
        .I2(FSM_selector_C),
        .I3(\Q_reg[0]_0 [1]),
        .I4(S_Shift_Value[0]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [1]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [0]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[10]_i_1__0 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[2] [14]),
        .I1(Q[2]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [2]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[2] [10]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[10]_i_2 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [12]),
        .I1(Q[1]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [1]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [10]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [10]));
  LUT6 #(
    .INIT(64'hFAFAABFB0A0AA808)) 
    \Q[10]_i_3 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [11]),
        .I1(\Q_reg[2]_0 [0]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [10]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[10]_i_4 
       (.I0(\Q_reg_n_0_[15] ),
        .I1(\Q_reg[22]_0 [13]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Q_reg_n_0_[10] ),
        .I4(FSM_selector_C),
        .I5(\Q_reg[22]_0 [8]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [10]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[11]_i_1__0 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[2] [15]),
        .I1(Q[2]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [2]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[2] [11]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[11]_i_2 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [13]),
        .I1(Q[1]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [1]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [11]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [11]));
  LUT6 #(
    .INIT(64'hFAFAABFB0A0AA808)) 
    \Q[11]_i_3 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [12]),
        .I1(\Q_reg[2]_0 [0]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [11]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[11]_i_4 
       (.I0(\Q_reg_n_0_[13] ),
        .I1(\Q_reg[22]_0 [11]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Q_reg_n_0_[12] ),
        .I4(FSM_selector_C),
        .I5(\Q_reg[22]_0 [10]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[11]_i_5 
       (.I0(\Q_reg_n_0_[14] ),
        .I1(\Q_reg[22]_0 [12]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Q_reg_n_0_[11] ),
        .I4(FSM_selector_C),
        .I5(\Q_reg[22]_0 [9]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [11]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[12]_i_1__0 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[2] [16]),
        .I1(Q[2]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [2]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[2] [12]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[12]_i_2 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [14]),
        .I1(Q[1]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [1]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [12]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [12]));
  LUT6 #(
    .INIT(64'hEFEADFD545408A80)) 
    \Q[12]_i_3 
       (.I0(S_Shift_Value[0]),
        .I1(\Q_reg_n_0_[13] ),
        .I2(FSM_selector_C),
        .I3(\Q_reg[22]_0 [11]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[12]_i_4 
       (.I0(\Q_reg_n_0_[12] ),
        .I1(FSM_selector_C),
        .I2(\Q_reg[22]_0 [10]),
        .O(S_Data_Shift));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[13]_i_1__0 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[2] [17]),
        .I1(Q[2]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [2]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[2] [13]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[13]_i_2__0 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [15]),
        .I1(Q[1]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [1]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [13]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [13]));
  LUT6 #(
    .INIT(64'hFAFAABFB0A0AA808)) 
    \Q[13]_i_3__0 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [14]),
        .I1(\Q_reg[2]_0 [0]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [13]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[13]_i_4 
       (.I0(\Q_reg_n_0_[12] ),
        .I1(\Q_reg[22]_0 [10]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Q_reg_n_0_[13] ),
        .I4(FSM_selector_C),
        .I5(\Q_reg[22]_0 [11]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [13]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[14]_i_1__0 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[2] [18]),
        .I1(Q[2]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [2]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[2] [14]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[14]_i_2__0 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [16]),
        .I1(Q[1]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [1]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [14]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [14]));
  LUT6 #(
    .INIT(64'hFAFAABFB0A0AA808)) 
    \Q[14]_i_3__0 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [15]),
        .I1(\Q_reg[2]_0 [0]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [14]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[14]_i_4 
       (.I0(\Q_reg_n_0_[11] ),
        .I1(\Q_reg[22]_0 [9]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Q_reg_n_0_[14] ),
        .I4(FSM_selector_C),
        .I5(\Q_reg[22]_0 [12]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [14]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[15]_i_1__0 
       (.I0(\Q_reg[18]_0 [0]),
        .I1(Q[2]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [2]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[2] [15]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[15]_i_2__0 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [17]),
        .I1(Q[1]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [1]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [15]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [15]));
  LUT6 #(
    .INIT(64'hFAFAABFB0A0AA808)) 
    \Q[15]_i_3__0 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [16]),
        .I1(\Q_reg[2]_0 [0]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [15]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[15]_i_4 
       (.I0(\Q_reg_n_0_[10] ),
        .I1(\Q_reg[22]_0 [8]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Q_reg_n_0_[15] ),
        .I4(FSM_selector_C),
        .I5(\Q_reg[22]_0 [13]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [15]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[16]_i_1__0 
       (.I0(\Q_reg[18]_0 [1]),
        .I1(Q[2]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [2]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[2] [16]),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[16]_i_2__0 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [18]),
        .I1(Q[1]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [1]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [16]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [16]));
  LUT6 #(
    .INIT(64'hFAFAABFB0A0AA808)) 
    \Q[16]_i_3__0 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [17]),
        .I1(\Q_reg[2]_0 [0]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [16]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[16]_i_4 
       (.I0(\Q_reg_n_0_[9] ),
        .I1(\Q_reg[22]_0 [7]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Q_reg_n_0_[16] ),
        .I4(FSM_selector_C),
        .I5(\Q_reg[22]_0 [14]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [16]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[17]_i_1__0 
       (.I0(\Q_reg[18]_0 [2]),
        .I1(Q[2]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [2]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[2] [17]),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[17]_i_2__0 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [19]),
        .I1(Q[1]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [1]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [17]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [17]));
  LUT6 #(
    .INIT(64'hFAFAABFB0A0AA808)) 
    \Q[17]_i_3__0 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [18]),
        .I1(\Q_reg[2]_0 [0]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [17]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[17]_i_4 
       (.I0(\Q_reg_n_0_[8] ),
        .I1(\Q_reg[22]_0 [6]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Q_reg_n_0_[17] ),
        .I4(FSM_selector_C),
        .I5(\Q_reg[22]_0 [15]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [17]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[18]_i_1__0 
       (.I0(\Q_reg[18]_0 [3]),
        .I1(Q[2]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [2]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[2] [18]),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[18]_i_2__0 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [20]),
        .I1(Q[1]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [1]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [18]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [18]));
  LUT6 #(
    .INIT(64'hFAFAABFB0A0AA808)) 
    \Q[18]_i_3 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [19]),
        .I1(\Q_reg[2]_0 [0]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [18]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[18]_i_4 
       (.I0(\Q_reg_n_0_[7] ),
        .I1(\Q_reg[22]_0 [5]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Q_reg_n_0_[18] ),
        .I4(FSM_selector_C),
        .I5(\Q_reg[22]_0 [16]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [18]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[19]_i_2__0 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [21]),
        .I1(Q[1]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [1]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [19]),
        .O(\Q_reg[18]_0 [0]));
  LUT6 #(
    .INIT(64'hFAFAABFB0A0AA808)) 
    \Q[19]_i_3 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [20]),
        .I1(\Q_reg[2]_0 [0]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [19]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[19]_i_4 
       (.I0(\Q_reg_n_0_[6] ),
        .I1(\Q_reg[22]_0 [4]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Q_reg_n_0_[19] ),
        .I4(FSM_selector_C),
        .I5(\Q_reg[22]_0 [17]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [19]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[1]_i_1__1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[2] [5]),
        .I1(Q[2]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [2]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[2] [1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \Q[1]_i_2__0 
       (.I0(S_Shift_Value[0]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[0] [1]),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[0] [2]),
        .I3(S_Shift_Value[1]),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[1] [3]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [1]));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \Q[1]_i_3__0 
       (.I0(\Q_reg_n_0_[24] ),
        .I1(\Q_reg[22]_0 [22]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Q_reg_n_0_[1] ),
        .I4(FSM_selector_C),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [1]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[20]_i_3 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [22]),
        .I1(Q[1]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [1]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [20]),
        .O(\Q_reg[18]_0 [1]));
  LUT6 #(
    .INIT(64'hFAFAABFB0A0AA808)) 
    \Q[20]_i_4 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [21]),
        .I1(\Q_reg[2]_0 [0]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [20]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[20]_i_5 
       (.I0(\Q_reg_n_0_[5] ),
        .I1(\Q_reg[22]_0 [3]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Q_reg_n_0_[20] ),
        .I4(FSM_selector_C),
        .I5(\Q_reg[22]_0 [18]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [20]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[21]_i_2__0 
       (.I0(\Q_reg[24]_0 [0]),
        .I1(Q[1]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [1]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [21]),
        .O(\Q_reg[18]_0 [2]));
  LUT6 #(
    .INIT(64'hFAFAABFB0A0AA808)) 
    \Q[21]_i_3 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [22]),
        .I1(\Q_reg[2]_0 [0]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [21]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[21]_i_4 
       (.I0(\Q_reg_n_0_[4] ),
        .I1(\Q_reg[22]_0 [2]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Q_reg_n_0_[21] ),
        .I4(FSM_selector_C),
        .I5(\Q_reg[22]_0 [19]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [21]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[22]_i_2__0 
       (.I0(\Q_reg[24]_0 [1]),
        .I1(Q[1]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [1]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [22]),
        .O(\Q_reg[18]_0 [3]));
  LUT6 #(
    .INIT(64'hFAFAABFB0A0AA808)) 
    \Q[22]_i_3 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [23]),
        .I1(\Q_reg[2]_0 [0]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [22]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[22]_i_4 
       (.I0(\Q_reg_n_0_[3] ),
        .I1(\Q_reg[22]_0 [1]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Q_reg_n_0_[22] ),
        .I4(FSM_selector_C),
        .I5(\Q_reg[22]_0 [20]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [22]));
  LUT6 #(
    .INIT(64'hFAFAABFB0A0AA808)) 
    \Q[23]_i_4 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [24]),
        .I1(\Q_reg[2]_0 [0]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [23]),
        .O(\Q_reg[24]_0 [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[23]_i_5 
       (.I0(\Q_reg_n_0_[2] ),
        .I1(\Q_reg[22]_0 [0]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Q_reg_n_0_[23] ),
        .I4(FSM_selector_C),
        .I5(\Q_reg[22]_0 [21]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [23]));
  LUT6 #(
    .INIT(64'hB833FFFFB8330000)) 
    \Q[24]_i_2 
       (.I0(\Q_reg[0]_0 [0]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Q_reg[0]_0 [1]),
        .I3(FSM_selector_C),
        .I4(S_Shift_Value[0]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [24]),
        .O(\Q_reg[24]_0 [1]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \Q[24]_i_3 
       (.I0(\Q_reg_n_0_[1] ),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Q_reg_n_0_[24] ),
        .I3(FSM_selector_C),
        .I4(\Q_reg[22]_0 [22]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [24]));
  LUT4 #(
    .INIT(16'hB833)) 
    \Q[25]_i_5 
       (.I0(\Q_reg[0]_0 [0]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Q_reg[0]_0 [1]),
        .I3(FSM_selector_C),
        .O(\Q_reg[21]_0 ));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \Q[2]_i_1__0 
       (.I0(S_Shift_Value[1]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [2]),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[1] [4]),
        .I3(S_Shift_Value[2]),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[2] [6]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFAFAABFB0A0AA808)) 
    \Q[2]_i_2 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [3]),
        .I1(\Q_reg[2]_0 [0]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [2]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [2]));
  LUT6 #(
    .INIT(64'hFAFAABFB0A0AA808)) 
    \Q[2]_i_3 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [5]),
        .I1(\Q_reg[2]_0 [0]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [4]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[2]_i_4 
       (.I0(\Q_reg_n_0_[23] ),
        .I1(\Q_reg[22]_0 [21]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Q_reg_n_0_[2] ),
        .I4(FSM_selector_C),
        .I5(\Q_reg[22]_0 [0]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [2]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \Q[3]_i_1__0 
       (.I0(S_Shift_Value[1]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [3]),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[1] [5]),
        .I3(S_Shift_Value[2]),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[2] [7]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFAFAABFB0A0AA808)) 
    \Q[3]_i_2 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [4]),
        .I1(\Q_reg[2]_0 [0]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [3]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [3]));
  LUT6 #(
    .INIT(64'hFAFAABFB0A0AA808)) 
    \Q[3]_i_3 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [6]),
        .I1(\Q_reg[2]_0 [0]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [5]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[3]_i_4 
       (.I0(\Q_reg_n_0_[21] ),
        .I1(\Q_reg[22]_0 [19]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Q_reg_n_0_[4] ),
        .I4(FSM_selector_C),
        .I5(\Q_reg[22]_0 [2]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[3]_i_5 
       (.I0(\Q_reg_n_0_[22] ),
        .I1(\Q_reg[22]_0 [20]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Q_reg_n_0_[3] ),
        .I4(FSM_selector_C),
        .I5(\Q_reg[22]_0 [1]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[3]_i_6__0 
       (.I0(\Q_reg_n_0_[19] ),
        .I1(\Q_reg[22]_0 [17]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Q_reg_n_0_[6] ),
        .I4(FSM_selector_C),
        .I5(\Q_reg[22]_0 [4]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[3]_i_7 
       (.I0(\Q_reg_n_0_[20] ),
        .I1(\Q_reg[22]_0 [18]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Q_reg_n_0_[5] ),
        .I4(FSM_selector_C),
        .I5(\Q_reg[22]_0 [3]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [5]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[4]_i_1__0 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[2] [8]),
        .I1(Q[2]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [2]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[2] [4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[4]_i_2 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [6]),
        .I1(Q[1]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [1]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [4]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [4]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[5]_i_1__0 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[2] [9]),
        .I1(Q[2]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [2]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[2] [5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[5]_i_2 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [7]),
        .I1(Q[1]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [1]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [5]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [5]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[6]_i_1__0 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[2] [10]),
        .I1(Q[2]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [2]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[2] [6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[6]_i_2 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [8]),
        .I1(Q[1]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [1]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [6]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [6]));
  LUT6 #(
    .INIT(64'hFAFAABFB0A0AA808)) 
    \Q[6]_i_3 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [7]),
        .I1(\Q_reg[2]_0 [0]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [6]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [6]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[7]_i_1__1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[2] [11]),
        .I1(Q[2]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [2]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[2] [7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[7]_i_2 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [9]),
        .I1(Q[1]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [1]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [7]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [7]));
  LUT6 #(
    .INIT(64'hFAFAABFB0A0AA808)) 
    \Q[7]_i_3 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [8]),
        .I1(\Q_reg[2]_0 [0]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [7]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[7]_i_4 
       (.I0(\Q_reg_n_0_[18] ),
        .I1(\Q_reg[22]_0 [16]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Q_reg_n_0_[7] ),
        .I4(FSM_selector_C),
        .I5(\Q_reg[22]_0 [5]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [7]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[8]_i_1__0 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[2] [12]),
        .I1(Q[2]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [2]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[2] [8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[8]_i_2 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [10]),
        .I1(Q[1]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [1]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [8]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [8]));
  LUT6 #(
    .INIT(64'hFAFAABFB0A0AA808)) 
    \Q[8]_i_3 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [9]),
        .I1(\Q_reg[2]_0 [0]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [8]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[8]_i_4 
       (.I0(\Q_reg_n_0_[17] ),
        .I1(\Q_reg[22]_0 [15]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Q_reg_n_0_[8] ),
        .I4(FSM_selector_C),
        .I5(\Q_reg[22]_0 [6]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [8]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[9]_i_1__0 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[2] [13]),
        .I1(Q[2]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [2]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[2] [9]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hFFFFBABF00008A80)) 
    \Q[9]_i_2 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [11]),
        .I1(Q[1]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(\Q_reg[2]_0 [1]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [9]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [9]));
  LUT6 #(
    .INIT(64'hFAFAABFB0A0AA808)) 
    \Q[9]_i_3 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [10]),
        .I1(\Q_reg[2]_0 [0]),
        .I2(\Q_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(\Q_reg[1]_0 [1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [9]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[9]_i_4 
       (.I0(\Q_reg_n_0_[16] ),
        .I1(\Q_reg[22]_0 [14]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Q_reg_n_0_[9] ),
        .I4(FSM_selector_C),
        .I5(\Q_reg[22]_0 [7]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [0]),
        .Q(\Q_reg[0]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [10]),
        .Q(\Q_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [11]),
        .Q(\Q_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[25]_0 [12]),
        .Q(\Q_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[25]_0 [13]),
        .Q(\Q_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [14]),
        .Q(\Q_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [15]),
        .Q(\Q_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [16]),
        .Q(\Q_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [17]),
        .Q(\Q_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [18]),
        .Q(\Q_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [19]),
        .Q(\Q_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [1]),
        .Q(\Q_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [20]),
        .Q(\Q_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [21]),
        .Q(\Q_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [22]),
        .Q(\Q_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [23]),
        .Q(\Q_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [24]),
        .Q(\Q_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [25]),
        .Q(\Q_reg[0]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [2]),
        .Q(\Q_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [3]),
        .Q(\Q_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [4]),
        .Q(\Q_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [5]),
        .Q(\Q_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [6]),
        .Q(\Q_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [7]),
        .Q(\Q_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [8]),
        .Q(\Q_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [9]),
        .Q(\Q_reg_n_0_[9] ));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized9
   (\Q_reg[4]_0 ,
    Q,
    \Q_reg[2]_0 ,
    \Q_reg[2]_1 ,
    \Q_reg[1]_0 ,
    \Q_reg[24]_0 ,
    \Q_reg[19]_0 ,
    \Q_reg[9]_0 ,
    \Q_reg[0]_0 ,
    \Q_reg[25]_0 ,
    \Q_reg[21]_0 ,
    \Q_reg[0]_1 ,
    \Q_reg[7]_0 ,
    \Q_reg[22]_0 ,
    \Q_reg[4]_1 ,
    \Q_reg[11]_0 ,
    E,
    \Q_reg[0]_2 ,
    CLK,
    AR);
  output [3:0]\Q_reg[4]_0 ;
  output [23:0]Q;
  output \Q_reg[2]_0 ;
  output \Q_reg[2]_1 ;
  output \Q_reg[1]_0 ;
  input [23:0]\Q_reg[24]_0 ;
  input \Q_reg[19]_0 ;
  input \Q_reg[9]_0 ;
  input \Q_reg[0]_0 ;
  input \Q_reg[25]_0 ;
  input \Q_reg[21]_0 ;
  input \Q_reg[0]_1 ;
  input \Q_reg[7]_0 ;
  input \Q_reg[22]_0 ;
  input \Q_reg[4]_1 ;
  input \Q_reg[11]_0 ;
  input [0:0]E;
  input [25:0]\Q_reg[0]_2 ;
  input CLK;
  input [1:0]AR;

  wire [1:0]AR;
  wire [7:6]A_S_P;
  wire CLK;
  wire [0:0]E;
  wire [23:0]Q;
  wire \Q[0]_i_10__0_n_0 ;
  wire \Q[0]_i_11_n_0 ;
  wire \Q[0]_i_12__0_n_0 ;
  wire \Q[0]_i_14_n_0 ;
  wire \Q[0]_i_15__0_n_0 ;
  wire \Q[0]_i_16__0_n_0 ;
  wire \Q[0]_i_2__3_n_0 ;
  wire \Q[0]_i_4_n_0 ;
  wire \Q[0]_i_5_n_0 ;
  wire \Q[0]_i_6_n_0 ;
  wire \Q[0]_i_7__0_n_0 ;
  wire \Q[0]_i_8_n_0 ;
  wire \Q[0]_i_9_n_0 ;
  wire \Q[1]_i_9_n_0 ;
  wire \Q[2]_i_2__0_n_0 ;
  wire \Q[2]_i_3__0_n_0 ;
  wire \Q[2]_i_5_n_0 ;
  wire \Q[2]_i_7_n_0 ;
  wire \Q[2]_i_8_n_0 ;
  wire \Q[3]_i_3__0_n_0 ;
  wire \Q[3]_i_4__1_n_0 ;
  wire \Q[3]_i_5__0_n_0 ;
  wire \Q[3]_i_6__1_n_0 ;
  wire \Q[3]_i_7__0_n_0 ;
  wire \Q[3]_i_8_n_0 ;
  wire \Q[4]_i_10_n_0 ;
  wire \Q[4]_i_12_n_0 ;
  wire \Q[4]_i_13_n_0 ;
  wire \Q[4]_i_2__0_n_0 ;
  wire \Q[4]_i_3_n_0 ;
  wire \Q[4]_i_8_n_0 ;
  wire \Q[4]_i_9_n_0 ;
  wire \Q_reg[0]_0 ;
  wire \Q_reg[0]_1 ;
  wire [25:0]\Q_reg[0]_2 ;
  wire \Q_reg[11]_0 ;
  wire \Q_reg[19]_0 ;
  wire \Q_reg[1]_0 ;
  wire \Q_reg[21]_0 ;
  wire \Q_reg[22]_0 ;
  wire [23:0]\Q_reg[24]_0 ;
  wire \Q_reg[25]_0 ;
  wire \Q_reg[2]_0 ;
  wire \Q_reg[2]_1 ;
  wire [3:0]\Q_reg[4]_0 ;
  wire \Q_reg[4]_1 ;
  wire \Q_reg[7]_0 ;
  wire \Q_reg[9]_0 ;

  LUT2 #(
    .INIT(4'h6)) 
    \Q[0]_i_10__0 
       (.I0(Q[7]),
        .I1(\Q_reg[24]_0 [8]),
        .O(\Q[0]_i_10__0_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCEEFE)) 
    \Q[0]_i_11 
       (.I0(\Q[0]_i_14_n_0 ),
        .I1(\Q[0]_i_15__0_n_0 ),
        .I2(\Q_reg[0]_0 ),
        .I3(\Q[0]_i_16__0_n_0 ),
        .I4(\Q[4]_i_12_n_0 ),
        .I5(\Q[4]_i_13_n_0 ),
        .O(\Q[0]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[0]_i_12__0 
       (.I0(Q[6]),
        .I1(\Q_reg[24]_0 [7]),
        .O(\Q[0]_i_12__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[0]_i_14 
       (.I0(Q[2]),
        .I1(\Q_reg[24]_0 [1]),
        .O(\Q[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0990FFFFFFFF0990)) 
    \Q[0]_i_15__0 
       (.I0(Q[5]),
        .I1(\Q_reg[24]_0 [4]),
        .I2(Q[4]),
        .I3(\Q_reg[24]_0 [3]),
        .I4(\Q_reg[24]_0 [5]),
        .I5(A_S_P[6]),
        .O(\Q[0]_i_15__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[0]_i_16__0 
       (.I0(Q[1]),
        .I1(\Q_reg[24]_0 [0]),
        .O(\Q[0]_i_16__0_n_0 ));
  LUT5 #(
    .INIT(32'h6F00006F)) 
    \Q[0]_i_1__6 
       (.I0(Q[22]),
        .I1(\Q_reg[24]_0 [22]),
        .I2(\Q[0]_i_2__3_n_0 ),
        .I3(Q[23]),
        .I4(\Q_reg[24]_0 [23]),
        .O(\Q_reg[4]_0 [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF01555501)) 
    \Q[0]_i_2__3 
       (.I0(\Q_reg[19]_0 ),
        .I1(\Q[0]_i_4_n_0 ),
        .I2(\Q[0]_i_5_n_0 ),
        .I3(\Q_reg[24]_0 [18]),
        .I4(Q[17]),
        .I5(\Q[0]_i_6_n_0 ),
        .O(\Q[0]_i_2__3_n_0 ));
  LUT6 #(
    .INIT(64'h0990FFFFFFFF0990)) 
    \Q[0]_i_4 
       (.I0(Q[15]),
        .I1(\Q_reg[24]_0 [16]),
        .I2(Q[14]),
        .I3(\Q_reg[24]_0 [15]),
        .I4(\Q_reg[24]_0 [17]),
        .I5(Q[16]),
        .O(\Q[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000AA000000AB)) 
    \Q[0]_i_5 
       (.I0(\Q[0]_i_7__0_n_0 ),
        .I1(\Q[0]_i_8_n_0 ),
        .I2(\Q[3]_i_5__0_n_0 ),
        .I3(\Q[3]_i_6__1_n_0 ),
        .I4(\Q[2]_i_8_n_0 ),
        .I5(\Q[0]_i_9_n_0 ),
        .O(\Q[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0990FFFFFFFF0990)) 
    \Q[0]_i_6 
       (.I0(Q[20]),
        .I1(\Q_reg[24]_0 [20]),
        .I2(Q[19]),
        .I3(\Q_reg[24]_0 [19]),
        .I4(\Q_reg[24]_0 [21]),
        .I5(Q[21]),
        .O(\Q[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[0]_i_7__0 
       (.I0(Q[12]),
        .I1(\Q_reg[24]_0 [13]),
        .O(\Q[0]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000AA00FB)) 
    \Q[0]_i_8 
       (.I0(\Q[0]_i_10__0_n_0 ),
        .I1(\Q[0]_i_11_n_0 ),
        .I2(\Q[2]_i_7_n_0 ),
        .I3(\Q[2]_i_3__0_n_0 ),
        .I4(\Q[0]_i_12__0_n_0 ),
        .I5(\Q_reg[9]_0 ),
        .O(\Q[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0990)) 
    \Q[0]_i_9 
       (.I0(Q[10]),
        .I1(\Q_reg[24]_0 [11]),
        .I2(Q[9]),
        .I3(\Q_reg[24]_0 [10]),
        .O(\Q[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFF66666666)) 
    \Q[1]_i_7 
       (.I0(A_S_P[7]),
        .I1(\Q_reg[24]_0 [6]),
        .I2(\Q_reg[24]_0 [5]),
        .I3(A_S_P[6]),
        .I4(\Q_reg[4]_1 ),
        .I5(\Q[1]_i_9_n_0 ),
        .O(\Q_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \Q[1]_i_9 
       (.I0(Q[2]),
        .I1(\Q_reg[24]_0 [1]),
        .I2(A_S_P[6]),
        .I3(\Q_reg[24]_0 [5]),
        .I4(\Q_reg[24]_0 [2]),
        .I5(Q[3]),
        .O(\Q[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF000000FE)) 
    \Q[2]_i_1__4 
       (.I0(\Q[2]_i_2__0_n_0 ),
        .I1(\Q[2]_i_3__0_n_0 ),
        .I2(\Q_reg[2]_0 ),
        .I3(\Q[2]_i_5_n_0 ),
        .I4(\Q_reg[25]_0 ),
        .I5(\Q_reg[21]_0 ),
        .O(\Q_reg[4]_0 [1]));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEFE)) 
    \Q[2]_i_2__0 
       (.I0(\Q_reg[2]_1 ),
        .I1(\Q[3]_i_5__0_n_0 ),
        .I2(\Q_reg[0]_1 ),
        .I3(\Q[2]_i_7_n_0 ),
        .I4(\Q[4]_i_10_n_0 ),
        .I5(\Q_reg[7]_0 ),
        .O(\Q[2]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[2]_i_3__0 
       (.I0(Q[10]),
        .I1(\Q_reg[24]_0 [11]),
        .O(\Q[2]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[2]_i_4__0 
       (.I0(Q[9]),
        .I1(\Q_reg[24]_0 [10]),
        .O(\Q_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFF6FFFFFFFFFFF6)) 
    \Q[2]_i_5 
       (.I0(Q[14]),
        .I1(\Q_reg[24]_0 [15]),
        .I2(\Q[2]_i_8_n_0 ),
        .I3(\Q[3]_i_6__1_n_0 ),
        .I4(Q[12]),
        .I5(\Q_reg[24]_0 [13]),
        .O(\Q[2]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[2]_i_7 
       (.I0(A_S_P[7]),
        .I1(\Q_reg[24]_0 [6]),
        .O(\Q[2]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[2]_i_8 
       (.I0(Q[15]),
        .I1(\Q_reg[24]_0 [16]),
        .O(\Q[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111111110)) 
    \Q[3]_i_1__4 
       (.I0(\Q_reg[21]_0 ),
        .I1(\Q_reg[25]_0 ),
        .I2(\Q[3]_i_3__0_n_0 ),
        .I3(\Q[3]_i_4__1_n_0 ),
        .I4(\Q[3]_i_5__0_n_0 ),
        .I5(\Q[3]_i_6__1_n_0 ),
        .O(\Q_reg[4]_0 [2]));
  LUT6 #(
    .INIT(64'hBEBEBEBEFFBEBEBE)) 
    \Q[3]_i_3__0 
       (.I0(\Q_reg[2]_1 ),
        .I1(Q[14]),
        .I2(\Q_reg[24]_0 [15]),
        .I3(\Q[3]_i_7__0_n_0 ),
        .I4(\Q[3]_i_8_n_0 ),
        .I5(\Q_reg[7]_0 ),
        .O(\Q[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBEFFFFBE)) 
    \Q[3]_i_4__1 
       (.I0(\Q_reg[2]_0 ),
        .I1(Q[12]),
        .I2(\Q_reg[24]_0 [13]),
        .I3(Q[15]),
        .I4(\Q_reg[24]_0 [16]),
        .I5(\Q[2]_i_3__0_n_0 ),
        .O(\Q[3]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[3]_i_5__0 
       (.I0(Q[11]),
        .I1(\Q_reg[24]_0 [12]),
        .O(\Q[3]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[3]_i_6__1 
       (.I0(Q[13]),
        .I1(\Q_reg[24]_0 [14]),
        .O(\Q[3]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \Q[3]_i_7__0 
       (.I0(Q[2]),
        .I1(\Q_reg[24]_0 [1]),
        .I2(Q[3]),
        .I3(\Q_reg[24]_0 [2]),
        .I4(\Q[4]_i_10_n_0 ),
        .I5(\Q[4]_i_13_n_0 ),
        .O(\Q[3]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000900990090000)) 
    \Q[3]_i_8 
       (.I0(A_S_P[7]),
        .I1(\Q_reg[24]_0 [6]),
        .I2(Q[4]),
        .I3(\Q_reg[24]_0 [3]),
        .I4(\Q_reg[24]_0 [0]),
        .I5(Q[1]),
        .O(\Q[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[4]_i_10 
       (.I0(A_S_P[6]),
        .I1(\Q_reg[24]_0 [5]),
        .O(\Q[4]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[4]_i_12 
       (.I0(Q[3]),
        .I1(\Q_reg[24]_0 [2]),
        .O(\Q[4]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[4]_i_13 
       (.I0(Q[5]),
        .I1(\Q_reg[24]_0 [4]),
        .O(\Q[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002002)) 
    \Q[4]_i_1__4 
       (.I0(\Q[4]_i_2__0_n_0 ),
        .I1(\Q[4]_i_3_n_0 ),
        .I2(Q[22]),
        .I3(\Q_reg[24]_0 [22]),
        .I4(\Q_reg[22]_0 ),
        .I5(\Q_reg[21]_0 ),
        .O(\Q_reg[4]_0 [3]));
  LUT6 #(
    .INIT(64'h0000000001000001)) 
    \Q[4]_i_2__0 
       (.I0(\Q_reg[11]_0 ),
        .I1(\Q_reg[2]_1 ),
        .I2(\Q_reg[2]_0 ),
        .I3(\Q_reg[24]_0 [23]),
        .I4(Q[23]),
        .I5(\Q[2]_i_5_n_0 ),
        .O(\Q[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008008)) 
    \Q[4]_i_3 
       (.I0(\Q[4]_i_8_n_0 ),
        .I1(\Q[4]_i_9_n_0 ),
        .I2(Q[7]),
        .I3(\Q_reg[24]_0 [8]),
        .I4(\Q[4]_i_10_n_0 ),
        .I5(\Q_reg[0]_0 ),
        .O(\Q[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Q[4]_i_7 
       (.I0(Q[8]),
        .I1(\Q_reg[24]_0 [9]),
        .O(\Q_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h0041000000000041)) 
    \Q[4]_i_8 
       (.I0(\Q[4]_i_12_n_0 ),
        .I1(Q[6]),
        .I2(\Q_reg[24]_0 [7]),
        .I3(\Q[4]_i_13_n_0 ),
        .I4(Q[2]),
        .I5(\Q_reg[24]_0 [1]),
        .O(\Q[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[4]_i_9 
       (.I0(A_S_P[7]),
        .I1(\Q_reg[24]_0 [6]),
        .I2(Q[4]),
        .I3(\Q_reg[24]_0 [3]),
        .I4(\Q_reg[24]_0 [0]),
        .I5(Q[1]),
        .O(\Q[4]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[0]_2 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_2 [10]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_2 [11]),
        .Q(Q[9]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_2 [12]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_2 [13]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_2 [14]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_2 [15]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_2 [16]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_2 [17]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_2 [18]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_2 [19]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[0]_2 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_2 [20]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_2 [21]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_2 [22]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_2 [23]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_2 [24]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[0]_2 [25]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[0]_2 [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[0]_2 [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[0]_2 [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[0]_2 [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[0]_2 [6]),
        .Q(A_S_P[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[0]_2 [7]),
        .Q(A_S_P[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[0]_2 [8]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
        .D(\Q_reg[0]_2 [9]),
        .Q(Q[7]));
endmodule

module Tenth_Phase
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

  RegisterAdd__parameterized12 Final_Result_IEEE
       (.AR(AR),
        .D(D),
        .E(E),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
endmodule

module add_sub_carry_out
   (Overflow_flag,
    D,
    DI,
    Data_A,
    p_0_in,
    \Q_reg[0] ,
    \Q_reg[30] ,
    \Q_reg[30]_0 ,
    FSM_selector_D,
    Q,
    \Q_reg[1] ,
    \Q_reg[0]_0 );
  output Overflow_flag;
  output [8:0]D;
  input [3:0]DI;
  input [0:0]Data_A;
  input [4:0]p_0_in;
  input \Q_reg[0] ;
  input [3:0]\Q_reg[30] ;
  input [6:0]\Q_reg[30]_0 ;
  input FSM_selector_D;
  input [6:0]Q;
  input [1:0]\Q_reg[1] ;
  input [0:0]\Q_reg[0]_0 ;

  wire [8:0]D;
  wire [3:0]DI;
  wire [0:0]Data_A;
  wire FSM_selector_D;
  wire Overflow_flag;
  wire [6:0]Q;
  wire \Q[3]_i_10_n_0 ;
  wire \Q[3]_i_7_n_0 ;
  wire \Q[3]_i_8_n_0 ;
  wire \Q[3]_i_9_n_0 ;
  wire \Q[7]_i_10_n_0 ;
  wire \Q[7]_i_7_n_0 ;
  wire \Q[7]_i_8_n_0 ;
  wire \Q[7]_i_9_n_0 ;
  wire \Q_reg[0] ;
  wire [0:0]\Q_reg[0]_0 ;
  wire [1:0]\Q_reg[1] ;
  wire [3:0]\Q_reg[30] ;
  wire [6:0]\Q_reg[30]_0 ;
  wire \Q_reg[3]_i_1_n_0 ;
  wire \Q_reg[7]_i_2_n_0 ;
  wire [4:0]p_0_in;
  wire [3:0]\NLW_Q_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_Q_reg[0]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_Q_reg[3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_Q_reg[7]_i_2_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    \Q[0]_i_1__1 
       (.I0(D[8]),
        .I1(DI[0]),
        .O(Overflow_flag));
  LUT4 #(
    .INIT(16'h33E2)) 
    \Q[3]_i_10 
       (.I0(\Q_reg[30] [0]),
        .I1(\Q_reg[1] [0]),
        .I2(\Q_reg[0]_0 ),
        .I3(\Q_reg[1] [1]),
        .O(\Q[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \Q[3]_i_7 
       (.I0(DI[3]),
        .I1(\Q_reg[30]_0 [2]),
        .I2(FSM_selector_D),
        .I3(Q[2]),
        .O(\Q[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \Q[3]_i_8 
       (.I0(DI[2]),
        .I1(\Q_reg[30]_0 [1]),
        .I2(FSM_selector_D),
        .I3(Q[1]),
        .O(\Q[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \Q[3]_i_9 
       (.I0(DI[1]),
        .I1(\Q_reg[30]_0 [0]),
        .I2(FSM_selector_D),
        .I3(Q[0]),
        .O(\Q[3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \Q[7]_i_10 
       (.I0(p_0_in[0]),
        .I1(\Q_reg[30]_0 [3]),
        .I2(FSM_selector_D),
        .I3(Q[3]),
        .O(\Q[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8787877878788778)) 
    \Q[7]_i_7 
       (.I0(\Q_reg[0] ),
        .I1(\Q_reg[30] [3]),
        .I2(DI[0]),
        .I3(\Q_reg[30]_0 [6]),
        .I4(FSM_selector_D),
        .I5(Q[6]),
        .O(\Q[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8787877878788778)) 
    \Q[7]_i_8 
       (.I0(\Q_reg[0] ),
        .I1(\Q_reg[30] [2]),
        .I2(DI[0]),
        .I3(\Q_reg[30]_0 [5]),
        .I4(FSM_selector_D),
        .I5(Q[5]),
        .O(\Q[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8787877878788778)) 
    \Q[7]_i_9 
       (.I0(\Q_reg[0] ),
        .I1(\Q_reg[30] [1]),
        .I2(DI[0]),
        .I3(\Q_reg[30]_0 [4]),
        .I4(FSM_selector_D),
        .I5(Q[4]),
        .O(\Q[7]_i_9_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[0]_i_2 
       (.CI(\Q_reg[7]_i_2_n_0 ),
        .CO(\NLW_Q_reg[0]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Q_reg[0]_i_2_O_UNCONNECTED [3:1],D[8]}),
        .S({1'b0,1'b0,1'b0,p_0_in[4]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\Q_reg[3]_i_1_n_0 ,\NLW_Q_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(Data_A),
        .DI(DI),
        .O(D[3:0]),
        .S({\Q[3]_i_7_n_0 ,\Q[3]_i_8_n_0 ,\Q[3]_i_9_n_0 ,\Q[3]_i_10_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[7]_i_2 
       (.CI(\Q_reg[3]_i_1_n_0 ),
        .CO({\Q_reg[7]_i_2_n_0 ,\NLW_Q_reg[7]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(p_0_in[3:0]),
        .O(D[7:4]),
        .S({\Q[7]_i_7_n_0 ,\Q[7]_i_8_n_0 ,\Q[7]_i_9_n_0 ,\Q[7]_i_10_n_0 }));
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
