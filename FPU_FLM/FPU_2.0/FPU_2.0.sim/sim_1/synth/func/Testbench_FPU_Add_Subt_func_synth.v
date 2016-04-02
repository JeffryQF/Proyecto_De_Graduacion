// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
// Date        : Fri Apr  1 09:55:35 2016
// Host        : francis-Aspire-E1-570 running 64-bit Ubuntu 15.10
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /media/francis/Acer/Users/Francis/Documents/GitHub/Proyecto_De_Graduacion/FPU_FLM/FPU_2.0/FPU_2.0.sim/sim_1/synth/func/Testbench_FPU_Add_Subt_func_synth.v
// Design      : FPU_Add_Subtract_Function
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Add_Subt
   (D,
    \Q_reg[12] ,
    \Q_reg[14] ,
    \Q_reg[14]_0 ,
    \Q_reg[14]_1 ,
    Q,
    \Q_reg[1] ,
    \Q_reg[0] ,
    \Q_reg[21] ,
    \Q_reg[22] ,
    \Q_reg[4] ,
    \Q_reg[5] ,
    \Q_reg[1]_0 ,
    \Q_reg[6] ,
    \Q_reg[7] ,
    \Q_reg[8] ,
    \Q_reg[0]_0 ,
    \Q_reg[9] ,
    \Q_reg[4]_0 ,
    \Q_reg[5]_0 ,
    \Q_reg[6]_0 ,
    \Q_reg[7]_0 ,
    \Q_reg[8]_0 ,
    \Q_reg[9]_0 ,
    \Q_reg[21]_0 ,
    \Q_reg[3] ,
    FSM_barrel_shifter_L_R,
    \Q_reg[4]_1 ,
    \Q_reg[3]_0 ,
    S_Shift_Value,
    \Q_reg[3]_1 ,
    \Q_reg[4]_2 ,
    \Data_array[5]_0 ,
    \Data_array[4]_1 ,
    FSM_selector_C,
    FSM_barrel_shifter_B_S,
    \FSM_sequential_state_reg_reg[3] ,
    add_overflow_flag,
    \FSM_sequential_state_reg_reg[0] ,
    \Q_reg[3]_2 ,
    \Q_reg[22]_0 ,
    state_next1,
    E,
    \Q_reg[25] ,
    CLK,
    AR);
  output [5:0]D;
  output [2:0]\Q_reg[12] ;
  output [7:0]\Q_reg[14] ;
  output [1:0]\Q_reg[14]_0 ;
  output [2:0]\Q_reg[14]_1 ;
  output [1:0]Q;
  output \Q_reg[1] ;
  output \Q_reg[0] ;
  output [0:0]\Q_reg[21] ;
  output \Q_reg[22] ;
  output \Q_reg[4] ;
  output \Q_reg[5] ;
  output \Q_reg[1]_0 ;
  output \Q_reg[6] ;
  output \Q_reg[7] ;
  output \Q_reg[8] ;
  output \Q_reg[0]_0 ;
  output \Q_reg[9] ;
  output \Q_reg[4]_0 ;
  output \Q_reg[5]_0 ;
  output \Q_reg[6]_0 ;
  output \Q_reg[7]_0 ;
  output \Q_reg[8]_0 ;
  output \Q_reg[9]_0 ;
  output \Q_reg[21]_0 ;
  input \Q_reg[3] ;
  input FSM_barrel_shifter_L_R;
  input \Q_reg[4]_1 ;
  input \Q_reg[3]_0 ;
  input [4:0]S_Shift_Value;
  input \Q_reg[3]_1 ;
  input \Q_reg[4]_2 ;
  input [0:0]\Data_array[5]_0 ;
  input [0:0]\Data_array[4]_1 ;
  input FSM_selector_C;
  input FSM_barrel_shifter_B_S;
  input \FSM_sequential_state_reg_reg[3] ;
  input add_overflow_flag;
  input \FSM_sequential_state_reg_reg[0] ;
  input \Q_reg[3]_2 ;
  input [22:0]\Q_reg[22]_0 ;
  input state_next1;
  input [0:0]E;
  input [25:0]\Q_reg[25] ;
  input CLK;
  input [1:0]AR;

  wire [1:0]AR;
  wire CLK;
  wire [5:0]D;
  wire [0:0]\Data_array[4]_1 ;
  wire [0:0]\Data_array[5]_0 ;
  wire [0:0]E;
  wire FSM_barrel_shifter_B_S;
  wire FSM_barrel_shifter_L_R;
  wire FSM_selector_C;
  wire \FSM_sequential_state_reg_reg[0] ;
  wire \FSM_sequential_state_reg_reg[3] ;
  wire [1:0]Q;
  wire \Q_reg[0] ;
  wire \Q_reg[0]_0 ;
  wire [2:0]\Q_reg[12] ;
  wire [7:0]\Q_reg[14] ;
  wire [1:0]\Q_reg[14]_0 ;
  wire [2:0]\Q_reg[14]_1 ;
  wire \Q_reg[1] ;
  wire \Q_reg[1]_0 ;
  wire [0:0]\Q_reg[21] ;
  wire \Q_reg[21]_0 ;
  wire \Q_reg[22] ;
  wire [22:0]\Q_reg[22]_0 ;
  wire [25:0]\Q_reg[25] ;
  wire \Q_reg[3] ;
  wire \Q_reg[3]_0 ;
  wire \Q_reg[3]_1 ;
  wire \Q_reg[3]_2 ;
  wire \Q_reg[4] ;
  wire \Q_reg[4]_0 ;
  wire \Q_reg[4]_1 ;
  wire \Q_reg[4]_2 ;
  wire \Q_reg[5] ;
  wire \Q_reg[5]_0 ;
  wire \Q_reg[6] ;
  wire \Q_reg[6]_0 ;
  wire \Q_reg[7] ;
  wire \Q_reg[7]_0 ;
  wire \Q_reg[8] ;
  wire \Q_reg[8]_0 ;
  wire \Q_reg[9] ;
  wire \Q_reg[9]_0 ;
  wire [4:0]S_Shift_Value;
  wire add_overflow_flag;
  wire state_next1;

  RegisterAdd__parameterized7 Add_Subt_Result
       (.AR(AR),
        .CLK(CLK),
        .D(D),
        .\Data_array[4]_1 (\Data_array[4]_1 ),
        .\Data_array[5]_0 (\Data_array[5]_0 ),
        .E(E),
        .FSM_barrel_shifter_B_S(FSM_barrel_shifter_B_S),
        .FSM_barrel_shifter_L_R(FSM_barrel_shifter_L_R),
        .FSM_selector_C(FSM_selector_C),
        .\FSM_sequential_state_reg_reg[0] (\FSM_sequential_state_reg_reg[0] ),
        .\FSM_sequential_state_reg_reg[3] (\FSM_sequential_state_reg_reg[3] ),
        .Q(Q),
        .\Q_reg[0]_0 (\Q_reg[0] ),
        .\Q_reg[0]_1 (\Q_reg[0]_0 ),
        .\Q_reg[12]_0 (\Q_reg[12] ),
        .\Q_reg[14]_0 (\Q_reg[14] ),
        .\Q_reg[14]_1 (\Q_reg[14]_0 ),
        .\Q_reg[14]_2 (\Q_reg[14]_1 ),
        .\Q_reg[1]_0 (\Q_reg[1] ),
        .\Q_reg[1]_1 (\Q_reg[1]_0 ),
        .\Q_reg[21]_0 (\Q_reg[21] ),
        .\Q_reg[21]_1 (\Q_reg[21]_0 ),
        .\Q_reg[22]_0 (\Q_reg[22] ),
        .\Q_reg[22]_1 (\Q_reg[22]_0 ),
        .\Q_reg[25]_0 (\Q_reg[25] ),
        .\Q_reg[3]_0 (\Q_reg[3] ),
        .\Q_reg[3]_1 (\Q_reg[3]_0 ),
        .\Q_reg[3]_2 (\Q_reg[3]_1 ),
        .\Q_reg[3]_3 (\Q_reg[3]_2 ),
        .\Q_reg[4]_0 (\Q_reg[4] ),
        .\Q_reg[4]_1 (\Q_reg[4]_0 ),
        .\Q_reg[4]_2 (\Q_reg[4]_1 ),
        .\Q_reg[4]_3 (\Q_reg[4]_2 ),
        .\Q_reg[5]_0 (\Q_reg[5] ),
        .\Q_reg[5]_1 (\Q_reg[5]_0 ),
        .\Q_reg[6]_0 (\Q_reg[6] ),
        .\Q_reg[6]_1 (\Q_reg[6]_0 ),
        .\Q_reg[7]_0 (\Q_reg[7] ),
        .\Q_reg[7]_1 (\Q_reg[7]_0 ),
        .\Q_reg[8]_0 (\Q_reg[8] ),
        .\Q_reg[8]_1 (\Q_reg[8]_0 ),
        .\Q_reg[9]_0 (\Q_reg[9] ),
        .\Q_reg[9]_1 (\Q_reg[9]_0 ),
        .S_Shift_Value(S_Shift_Value),
        .add_overflow_flag(add_overflow_flag),
        .state_next1(state_next1));
endmodule

module Barrel_Shifter
   (\FSM_sequential_state_reg_reg[0] ,
    Q,
    round_flag,
    \Q_reg[3] ,
    A_S_C,
    S_A_S_Oper_A,
    r_mode_IBUF,
    D,
    out,
    FSM_selector_D,
    S_A_S_op,
    \Q_reg[22] ,
    E,
    \Q_reg[1] ,
    CLK,
    AR);
  output \FSM_sequential_state_reg_reg[0] ;
  output [25:0]Q;
  output round_flag;
  output [2:0]\Q_reg[3] ;
  output [0:0]A_S_C;
  output [23:0]S_A_S_Oper_A;
  input [1:0]r_mode_IBUF;
  input [0:0]D;
  input [0:0]out;
  input FSM_selector_D;
  input S_A_S_op;
  input [22:0]\Q_reg[22] ;
  input [0:0]E;
  input [25:0]\Q_reg[1] ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]A_S_C;
  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire FSM_selector_D;
  wire \FSM_sequential_state_reg_reg[0] ;
  wire [25:0]Q;
  wire [25:0]\Q_reg[1] ;
  wire [22:0]\Q_reg[22] ;
  wire [2:0]\Q_reg[3] ;
  wire [23:0]S_A_S_Oper_A;
  wire S_A_S_op;
  wire [0:0]out;
  wire [1:0]r_mode_IBUF;
  wire round_flag;

  RegisterAdd__parameterized6 Output_Reg
       (.AR(AR),
        .A_S_C(A_S_C),
        .CLK(CLK),
        .D(D),
        .E(E),
        .FSM_selector_D(FSM_selector_D),
        .\FSM_sequential_state_reg_reg[0] (\FSM_sequential_state_reg_reg[0] ),
        .Q(Q),
        .\Q_reg[1]_0 (\Q_reg[1] ),
        .\Q_reg[22]_0 (\Q_reg[22] ),
        .\Q_reg[3]_0 (\Q_reg[3] ),
        .S_A_S_Oper_A(S_A_S_Oper_A),
        .S_A_S_op(S_A_S_op),
        .out(out),
        .r_mode_IBUF(r_mode_IBUF),
        .round_flag(round_flag));
endmodule

module Exp_Operation
   (\Q_reg[22] ,
    \Q_reg[23] ,
    \Q_reg[22]_0 ,
    Q,
    Data_A,
    \Q_reg[12] ,
    \Q_reg[1] ,
    FSM_barrel_shifter_L_R,
    \Q_reg[1]_0 ,
    \Q_reg[4] ,
    \Q_reg[3] ,
    \Q_reg[0] ,
    FSM_barrel_shifter_B_S,
    \Q_reg[0]_0 ,
    FSM_selector_D,
    \Q_reg[23]_0 ,
    FSM_selector_B,
    E,
    D,
    CLK,
    AR);
  output [1:0]\Q_reg[22] ;
  output [0:0]\Q_reg[23] ;
  output \Q_reg[22]_0 ;
  output [7:0]Q;
  output [0:0]Data_A;
  output \Q_reg[12] ;
  output \Q_reg[1] ;
  input FSM_barrel_shifter_L_R;
  input [0:0]\Q_reg[1]_0 ;
  input \Q_reg[4] ;
  input \Q_reg[3] ;
  input [1:0]\Q_reg[0] ;
  input FSM_barrel_shifter_B_S;
  input \Q_reg[0]_0 ;
  input FSM_selector_D;
  input [0:0]\Q_reg[23]_0 ;
  input [1:0]FSM_selector_B;
  input [0:0]E;
  input [7:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [7:0]D;
  wire [0:0]Data_A;
  wire [0:0]E;
  wire FSM_barrel_shifter_B_S;
  wire FSM_barrel_shifter_L_R;
  wire [1:0]FSM_selector_B;
  wire FSM_selector_D;
  wire [7:0]Q;
  wire [1:0]\Q_reg[0] ;
  wire \Q_reg[0]_0 ;
  wire \Q_reg[12] ;
  wire \Q_reg[1] ;
  wire [0:0]\Q_reg[1]_0 ;
  wire [1:0]\Q_reg[22] ;
  wire \Q_reg[22]_0 ;
  wire [0:0]\Q_reg[23] ;
  wire [0:0]\Q_reg[23]_0 ;
  wire \Q_reg[3] ;
  wire \Q_reg[4] ;

  RegisterAdd__parameterized5 exp_result
       (.AR(AR),
        .CLK(CLK),
        .D(D),
        .Data_A(Data_A),
        .E(E),
        .FSM_barrel_shifter_B_S(FSM_barrel_shifter_B_S),
        .FSM_barrel_shifter_L_R(FSM_barrel_shifter_L_R),
        .FSM_selector_B(FSM_selector_B),
        .FSM_selector_D(FSM_selector_D),
        .Q(Q),
        .\Q_reg[0]_0 (\Q_reg[0] ),
        .\Q_reg[0]_1 (\Q_reg[0]_0 ),
        .\Q_reg[12] (\Q_reg[12] ),
        .\Q_reg[1]_0 (\Q_reg[1] ),
        .\Q_reg[1]_1 (\Q_reg[1]_0 ),
        .\Q_reg[22] (\Q_reg[22] ),
        .\Q_reg[22]_0 (\Q_reg[22]_0 ),
        .\Q_reg[23] (\Q_reg[23] ),
        .\Q_reg[23]_0 (\Q_reg[23]_0 ),
        .\Q_reg[3]_0 (\Q_reg[3] ),
        .\Q_reg[4]_0 (\Q_reg[4] ));
endmodule

(* EW = "8" *) (* EWR = "5" *) (* SW = "23" *) 
(* SWR = "26" *) (* W = "32" *) 
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

  wire [3:3]A_S_C;
  wire Add_Subt_Sgf_module_n_22;
  wire Add_Subt_Sgf_module_n_23;
  wire Add_Subt_Sgf_module_n_24;
  wire Add_Subt_Sgf_module_n_25;
  wire Add_Subt_Sgf_module_n_27;
  wire Add_Subt_Sgf_module_n_28;
  wire Add_Subt_Sgf_module_n_29;
  wire Add_Subt_Sgf_module_n_30;
  wire Add_Subt_Sgf_module_n_31;
  wire Add_Subt_Sgf_module_n_32;
  wire Add_Subt_Sgf_module_n_33;
  wire Add_Subt_Sgf_module_n_34;
  wire Add_Subt_Sgf_module_n_35;
  wire Add_Subt_Sgf_module_n_36;
  wire Add_Subt_Sgf_module_n_37;
  wire Add_Subt_Sgf_module_n_38;
  wire Add_Subt_Sgf_module_n_39;
  wire Add_Subt_Sgf_module_n_40;
  wire Add_Subt_Sgf_module_n_41;
  wire Add_Subt_Sgf_module_n_42;
  wire Barrel_Shifter_module_n_0;
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
  wire Barrel_Shifter_module_n_3;
  wire Barrel_Shifter_module_n_4;
  wire Barrel_Shifter_module_n_5;
  wire Barrel_Shifter_module_n_6;
  wire Barrel_Shifter_module_n_7;
  wire Barrel_Shifter_module_n_8;
  wire Barrel_Shifter_module_n_9;
  wire [0:0]D0;
  wire [0:0]Data_A;
  wire [25:0]Data_Reg;
  wire [31:0]Data_X;
  wire [31:0]Data_X_IBUF;
  wire [31:0]Data_Y;
  wire [31:0]Data_Y_IBUF;
  wire Exp_Operation_Module_n_13;
  wire Exp_Operation_Module_n_14;
  wire Exp_Operation_Module_n_3;
  wire FSM_Add_Subt_Sgf_load;
  wire FSM_Final_Result_load;
  wire FSM_barrel_shifter_B_S;
  wire FSM_barrel_shifter_L_R;
  wire FSM_barrel_shifter_load;
  wire FSM_exp_operation_A_S;
  wire FSM_exp_operation_load;
  wire FSM_op_start_in_load_a;
  wire FSM_op_start_in_load_b;
  wire [1:0]FSM_selector_B;
  wire FSM_selector_C;
  wire FSM_selector_D;
  wire FS_Module_n_0;
  wire FS_Module_n_1;
  wire FS_Module_n_11;
  wire FS_Module_n_14;
  wire FS_Module_n_19;
  wire FS_Module_n_2;
  wire FS_Module_n_20;
  wire FS_Module_n_3;
  wire FS_Module_n_6;
  wire [25:24]\Mux_Array/Data_array[0]_1 ;
  wire [25:22]\Mux_Array/Data_array[1]_0 ;
  wire [23:16]\Mux_Array/Data_array[2]_2 ;
  wire [13:11]\Mux_Array/Data_array[3]_3 ;
  wire [18:18]\Mux_Array/Data_array[4]_5 ;
  wire [23:23]\Mux_Array/Data_array[5]_4 ;
  wire Oper_Start_in_module_n_0;
  wire Oper_Start_in_module_n_1;
  wire Oper_Start_in_module_n_10;
  wire Oper_Start_in_module_n_11;
  wire Oper_Start_in_module_n_12;
  wire Oper_Start_in_module_n_13;
  wire Oper_Start_in_module_n_14;
  wire Oper_Start_in_module_n_15;
  wire Oper_Start_in_module_n_16;
  wire Oper_Start_in_module_n_17;
  wire Oper_Start_in_module_n_18;
  wire Oper_Start_in_module_n_19;
  wire Oper_Start_in_module_n_20;
  wire Oper_Start_in_module_n_21;
  wire Oper_Start_in_module_n_22;
  wire Oper_Start_in_module_n_23;
  wire Oper_Start_in_module_n_24;
  wire Oper_Start_in_module_n_25;
  wire Oper_Start_in_module_n_26;
  wire Oper_Start_in_module_n_27;
  wire Oper_Start_in_module_n_28;
  wire Oper_Start_in_module_n_29;
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
  wire Oper_Start_in_module_n_7;
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
  wire Oper_Start_in_module_n_8;
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
  wire Oper_Start_in_module_n_9;
  wire Oper_Start_in_module_n_90;
  wire [25:2]S_A_S_Oper_A;
  wire S_A_S_op;
  wire [25:25]S_Data_Shift;
  wire [4:0]S_Shift_Value;
  wire [25:0]S_to_D;
  wire Sel_B_n_0;
  wire Sel_B_n_1;
  wire Sel_B_n_2;
  wire Sel_B_n_3;
  wire Sel_B_n_33;
  wire Sel_B_n_34;
  wire Sel_B_n_35;
  wire Sel_B_n_38;
  wire Sel_B_n_4;
  wire Sel_B_n_5;
  wire Sel_B_n_6;
  wire Sel_B_n_7;
  wire Sel_B_n_8;
  wire [1:0]Sgf_normalized_result;
  wire add_overflow_flag;
  wire add_subt;
  wire add_subt_IBUF;
  wire beg_FSM;
  wire beg_FSM_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [4:0]exp_oper_result;
  wire [7:5]\exp_result/Q_reg__0 ;
  wire [31:0]final_result_ieee;
  wire [31:0]final_result_ieee_OBUF;
  wire overflow_flag;
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
  wire sign_final_result;
  wire state_next1;
  wire underflow_flag;
  wire zero_flag;

  Add_Subt Add_Subt_Sgf_module
       (.AR({FS_Module_n_6,rst_int}),
        .CLK(clk_IBUF_BUFG),
        .D({Data_Reg[23],Data_Reg[15:14],Data_Reg[11:10],Data_Reg[2]}),
        .\Data_array[4]_1 (\Mux_Array/Data_array[4]_5 ),
        .\Data_array[5]_0 (\Mux_Array/Data_array[5]_4 ),
        .E(FSM_Add_Subt_Sgf_load),
        .FSM_barrel_shifter_B_S(FSM_barrel_shifter_B_S),
        .FSM_barrel_shifter_L_R(FSM_barrel_shifter_L_R),
        .FSM_selector_C(FSM_selector_C),
        .\FSM_sequential_state_reg_reg[0] (FS_Module_n_14),
        .\FSM_sequential_state_reg_reg[3] (FS_Module_n_11),
        .Q({Add_Subt_Sgf_module_n_22,Add_Subt_Sgf_module_n_23}),
        .\Q_reg[0] (Add_Subt_Sgf_module_n_25),
        .\Q_reg[0]_0 (Add_Subt_Sgf_module_n_34),
        .\Q_reg[12] (\Mux_Array/Data_array[3]_3 ),
        .\Q_reg[14] (\Mux_Array/Data_array[2]_2 ),
        .\Q_reg[14]_0 (\Mux_Array/Data_array[0]_1 ),
        .\Q_reg[14]_1 (\Mux_Array/Data_array[1]_0 [24:22]),
        .\Q_reg[1] (Add_Subt_Sgf_module_n_24),
        .\Q_reg[1]_0 (Add_Subt_Sgf_module_n_30),
        .\Q_reg[21] (S_Data_Shift),
        .\Q_reg[21]_0 (Add_Subt_Sgf_module_n_42),
        .\Q_reg[22] (Add_Subt_Sgf_module_n_27),
        .\Q_reg[22]_0 ({Oper_Start_in_module_n_68,Oper_Start_in_module_n_69,Oper_Start_in_module_n_70,Oper_Start_in_module_n_71,Oper_Start_in_module_n_72,Oper_Start_in_module_n_73,Oper_Start_in_module_n_74,Oper_Start_in_module_n_75,Oper_Start_in_module_n_76,Oper_Start_in_module_n_77,Oper_Start_in_module_n_78,Oper_Start_in_module_n_79,Oper_Start_in_module_n_80,Oper_Start_in_module_n_81,Oper_Start_in_module_n_82,Oper_Start_in_module_n_83,Oper_Start_in_module_n_84,Oper_Start_in_module_n_85,Oper_Start_in_module_n_86,Oper_Start_in_module_n_87,Oper_Start_in_module_n_88,Oper_Start_in_module_n_89,Oper_Start_in_module_n_90}),
        .\Q_reg[25] (S_to_D),
        .\Q_reg[3] (Sel_B_n_8),
        .\Q_reg[3]_0 (Sel_B_n_35),
        .\Q_reg[3]_1 (Exp_Operation_Module_n_3),
        .\Q_reg[3]_2 (Exp_Operation_Module_n_14),
        .\Q_reg[4] (Add_Subt_Sgf_module_n_28),
        .\Q_reg[4]_0 (Add_Subt_Sgf_module_n_36),
        .\Q_reg[4]_1 (Exp_Operation_Module_n_13),
        .\Q_reg[4]_2 (Sel_B_n_33),
        .\Q_reg[5] (Add_Subt_Sgf_module_n_29),
        .\Q_reg[5]_0 (Add_Subt_Sgf_module_n_37),
        .\Q_reg[6] (Add_Subt_Sgf_module_n_31),
        .\Q_reg[6]_0 (Add_Subt_Sgf_module_n_38),
        .\Q_reg[7] (Add_Subt_Sgf_module_n_32),
        .\Q_reg[7]_0 (Add_Subt_Sgf_module_n_39),
        .\Q_reg[8] (Add_Subt_Sgf_module_n_33),
        .\Q_reg[8]_0 (Add_Subt_Sgf_module_n_40),
        .\Q_reg[9] (Add_Subt_Sgf_module_n_35),
        .\Q_reg[9]_0 (Add_Subt_Sgf_module_n_41),
        .S_Shift_Value(S_Shift_Value),
        .add_overflow_flag(add_overflow_flag),
        .state_next1(state_next1));
  Barrel_Shifter Barrel_Shifter_module
       (.AR(FS_Module_n_6),
        .A_S_C(A_S_C),
        .CLK(clk_IBUF_BUFG),
        .D(sign_final_result),
        .E(FSM_barrel_shifter_load),
        .FSM_selector_D(FSM_selector_D),
        .\FSM_sequential_state_reg_reg[0] (Barrel_Shifter_module_n_0),
        .Q({Barrel_Shifter_module_n_1,Barrel_Shifter_module_n_2,Barrel_Shifter_module_n_3,Barrel_Shifter_module_n_4,Barrel_Shifter_module_n_5,Barrel_Shifter_module_n_6,Barrel_Shifter_module_n_7,Barrel_Shifter_module_n_8,Barrel_Shifter_module_n_9,Barrel_Shifter_module_n_10,Barrel_Shifter_module_n_11,Barrel_Shifter_module_n_12,Barrel_Shifter_module_n_13,Barrel_Shifter_module_n_14,Barrel_Shifter_module_n_15,Barrel_Shifter_module_n_16,Barrel_Shifter_module_n_17,Barrel_Shifter_module_n_18,Barrel_Shifter_module_n_19,Barrel_Shifter_module_n_20,Barrel_Shifter_module_n_21,Barrel_Shifter_module_n_22,Barrel_Shifter_module_n_23,Barrel_Shifter_module_n_24,Sgf_normalized_result}),
        .\Q_reg[1] (Data_Reg),
        .\Q_reg[22] ({Oper_Start_in_module_n_7,Oper_Start_in_module_n_8,Oper_Start_in_module_n_9,Oper_Start_in_module_n_10,Oper_Start_in_module_n_11,Oper_Start_in_module_n_12,Oper_Start_in_module_n_13,Oper_Start_in_module_n_14,Oper_Start_in_module_n_15,Oper_Start_in_module_n_16,Oper_Start_in_module_n_17,Oper_Start_in_module_n_18,Oper_Start_in_module_n_19,Oper_Start_in_module_n_20,Oper_Start_in_module_n_21,Oper_Start_in_module_n_22,Oper_Start_in_module_n_23,Oper_Start_in_module_n_24,Oper_Start_in_module_n_25,Oper_Start_in_module_n_26,Oper_Start_in_module_n_27,Oper_Start_in_module_n_28,Oper_Start_in_module_n_29}),
        .\Q_reg[3] ({S_to_D[3:2],S_to_D[0]}),
        .S_A_S_Oper_A(S_A_S_Oper_A),
        .S_A_S_op(S_A_S_op),
        .out(FS_Module_n_1),
        .r_mode_IBUF(r_mode_IBUF),
        .round_flag(round_flag));
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
       (.AR(FS_Module_n_6),
        .CLK(clk_IBUF_BUFG),
        .D({Sel_B_n_0,Sel_B_n_1,Sel_B_n_2,Sel_B_n_3,Sel_B_n_4,Sel_B_n_5,Sel_B_n_6,Sel_B_n_7}),
        .Data_A(Data_A),
        .E(FSM_exp_operation_load),
        .FSM_barrel_shifter_B_S(FSM_barrel_shifter_B_S),
        .FSM_barrel_shifter_L_R(FSM_barrel_shifter_L_R),
        .FSM_selector_B(FSM_selector_B),
        .FSM_selector_D(FSM_selector_D),
        .Q({\exp_result/Q_reg__0 ,exp_oper_result}),
        .\Q_reg[0] (\Mux_Array/Data_array[2]_2 [23:22]),
        .\Q_reg[0]_0 (Sel_B_n_38),
        .\Q_reg[12] (Exp_Operation_Module_n_13),
        .\Q_reg[1] (Exp_Operation_Module_n_14),
        .\Q_reg[1]_0 (\Mux_Array/Data_array[3]_3 [11]),
        .\Q_reg[22] ({Data_Reg[22],Data_Reg[3]}),
        .\Q_reg[22]_0 (Exp_Operation_Module_n_3),
        .\Q_reg[23] (\Mux_Array/Data_array[5]_4 ),
        .\Q_reg[23]_0 (D0),
        .\Q_reg[3] (Sel_B_n_34),
        .\Q_reg[4] (Add_Subt_Sgf_module_n_27));
  FSM_Add_Subtract FS_Module
       (.AR({rst_int,FS_Module_n_6}),
        .\Data_array[1]_0 (\Mux_Array/Data_array[1]_0 [25]),
        .E(FSM_Add_Subt_Sgf_load),
        .FSM_barrel_shifter_B_S(FSM_barrel_shifter_B_S),
        .FSM_barrel_shifter_L_R(FSM_barrel_shifter_L_R),
        .FSM_exp_operation_A_S(FSM_exp_operation_A_S),
        .FSM_selector_C(FSM_selector_C),
        .FSM_selector_D(FSM_selector_D),
        .\FSM_sequential_state_reg_reg[1]_0 (Oper_Start_in_module_n_1),
        .\FSM_sequential_state_reg_reg[2]_0 (Oper_Start_in_module_n_0),
        .Q({Add_Subt_Sgf_module_n_22,Add_Subt_Sgf_module_n_23}),
        .\Q_reg[0] (FSM_op_start_in_load_a),
        .\Q_reg[0]_0 (FSM_exp_operation_load),
        .\Q_reg[0]_1 (FSM_Final_Result_load),
        .\Q_reg[0]_2 (FSM_barrel_shifter_load),
        .\Q_reg[0]_3 (FSM_op_start_in_load_b),
        .\Q_reg[0]_4 (FS_Module_n_19),
        .\Q_reg[0]_5 (FS_Module_n_20),
        .\Q_reg[0]_6 (Barrel_Shifter_module_n_0),
        .\Q_reg[1] (FS_Module_n_11),
        .\Q_reg[1]_0 (FS_Module_n_14),
        .S_Shift_Value(S_Shift_Value[0]),
        .add_overflow_flag(add_overflow_flag),
        .beg_FSM_IBUF(beg_FSM_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out({FS_Module_n_0,FS_Module_n_1,FS_Module_n_2,FS_Module_n_3}),
        .ready_OBUF(ready_OBUF),
        .round_flag(round_flag),
        .rst(rst_IBUF),
        .rst_FSM_IBUF(rst_FSM_IBUF),
        .zero_flag(zero_flag));
  Oper_Start_In Oper_Start_in_module
       (.AR({rst_int,FS_Module_n_6}),
        .D(sign_final_result),
        .\Data_X[31] (Data_X_IBUF),
        .\Data_Y[31] (Data_Y_IBUF),
        .E(FSM_op_start_in_load_a),
        .FSM_exp_operation_A_S(FSM_exp_operation_A_S),
        .FSM_selector_C(FSM_selector_C),
        .FSM_selector_D(FSM_selector_D),
        .\FSM_sequential_state_reg_reg[0] (Oper_Start_in_module_n_0),
        .\FSM_sequential_state_reg_reg[3] (Oper_Start_in_module_n_1),
        .\FSM_sequential_state_reg_reg[3]_0 (FSM_op_start_in_load_b),
        .Q({D0,Oper_Start_in_module_n_7,Oper_Start_in_module_n_8,Oper_Start_in_module_n_9,Oper_Start_in_module_n_10,Oper_Start_in_module_n_11,Oper_Start_in_module_n_12,Oper_Start_in_module_n_13,Oper_Start_in_module_n_14,Oper_Start_in_module_n_15,Oper_Start_in_module_n_16,Oper_Start_in_module_n_17,Oper_Start_in_module_n_18,Oper_Start_in_module_n_19,Oper_Start_in_module_n_20,Oper_Start_in_module_n_21,Oper_Start_in_module_n_22,Oper_Start_in_module_n_23,Oper_Start_in_module_n_24,Oper_Start_in_module_n_25,Oper_Start_in_module_n_26,Oper_Start_in_module_n_27,Oper_Start_in_module_n_28,Oper_Start_in_module_n_29}),
        .\Q_reg[0] (A_S_C),
        .\Q_reg[0]_0 (Sel_B_n_38),
        .\Q_reg[25] ({S_to_D[25:4],S_to_D[1]}),
        .\Q_reg[25]_0 ({Barrel_Shifter_module_n_1,Barrel_Shifter_module_n_2,Barrel_Shifter_module_n_3,Barrel_Shifter_module_n_4,Barrel_Shifter_module_n_5,Barrel_Shifter_module_n_6,Barrel_Shifter_module_n_7,Barrel_Shifter_module_n_8,Barrel_Shifter_module_n_9,Barrel_Shifter_module_n_10,Barrel_Shifter_module_n_11,Barrel_Shifter_module_n_12,Barrel_Shifter_module_n_13,Barrel_Shifter_module_n_14,Barrel_Shifter_module_n_15,Barrel_Shifter_module_n_16,Barrel_Shifter_module_n_17,Barrel_Shifter_module_n_18,Barrel_Shifter_module_n_19,Barrel_Shifter_module_n_20,Barrel_Shifter_module_n_21,Barrel_Shifter_module_n_22,Barrel_Shifter_module_n_23,Barrel_Shifter_module_n_24,Sgf_normalized_result}),
        .\Q_reg[3] ({Oper_Start_in_module_n_58,Oper_Start_in_module_n_59,Oper_Start_in_module_n_60}),
        .\Q_reg[7] ({Oper_Start_in_module_n_61,Oper_Start_in_module_n_62,Oper_Start_in_module_n_63,Oper_Start_in_module_n_64,Oper_Start_in_module_n_65,Oper_Start_in_module_n_66,Oper_Start_in_module_n_67,Oper_Start_in_module_n_68,Oper_Start_in_module_n_69,Oper_Start_in_module_n_70,Oper_Start_in_module_n_71,Oper_Start_in_module_n_72,Oper_Start_in_module_n_73,Oper_Start_in_module_n_74,Oper_Start_in_module_n_75,Oper_Start_in_module_n_76,Oper_Start_in_module_n_77,Oper_Start_in_module_n_78,Oper_Start_in_module_n_79,Oper_Start_in_module_n_80,Oper_Start_in_module_n_81,Oper_Start_in_module_n_82,Oper_Start_in_module_n_83,Oper_Start_in_module_n_84,Oper_Start_in_module_n_85,Oper_Start_in_module_n_86,Oper_Start_in_module_n_87,Oper_Start_in_module_n_88,Oper_Start_in_module_n_89,Oper_Start_in_module_n_90}),
        .\Q_reg[7]_0 ({\exp_result/Q_reg__0 ,exp_oper_result[4:1]}),
        .S({Oper_Start_in_module_n_54,Oper_Start_in_module_n_55,Oper_Start_in_module_n_56,Oper_Start_in_module_n_57}),
        .S_A_S_Oper_A(S_A_S_Oper_A),
        .S_A_S_op(S_A_S_op),
        .add_overflow_flag(add_overflow_flag),
        .add_subt_IBUF(add_subt_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out({FS_Module_n_1,FS_Module_n_2}),
        .state_next1(state_next1),
        .zero_flag(zero_flag));
  RegisterAdd__parameterized0 Sel_B
       (.AR(FS_Module_n_6),
        .D({Sel_B_n_0,Sel_B_n_1,Sel_B_n_2,Sel_B_n_3,Sel_B_n_4,Sel_B_n_5,Sel_B_n_6,Sel_B_n_7}),
        .Data_A(Data_A),
        .\Data_array[1]_0 (\Mux_Array/Data_array[1]_0 ),
        .FSM_barrel_shifter_B_S(FSM_barrel_shifter_B_S),
        .FSM_barrel_shifter_L_R(FSM_barrel_shifter_L_R),
        .FSM_exp_operation_A_S(FSM_exp_operation_A_S),
        .FSM_selector_B(FSM_selector_B),
        .Q(exp_oper_result),
        .\Q_reg[0]_0 (\Mux_Array/Data_array[2]_2 ),
        .\Q_reg[0]_1 (\Mux_Array/Data_array[0]_1 ),
        .\Q_reg[0]_2 (Add_Subt_Sgf_module_n_42),
        .\Q_reg[14] (Sel_B_n_8),
        .\Q_reg[15] (Sel_B_n_35),
        .\Q_reg[1]_0 (Add_Subt_Sgf_module_n_31),
        .\Q_reg[1]_1 (Add_Subt_Sgf_module_n_38),
        .\Q_reg[1]_2 (Add_Subt_Sgf_module_n_32),
        .\Q_reg[1]_3 (Add_Subt_Sgf_module_n_39),
        .\Q_reg[1]_4 (\Mux_Array/Data_array[3]_3 [13:12]),
        .\Q_reg[1]_5 (Add_Subt_Sgf_module_n_29),
        .\Q_reg[1]_6 (Add_Subt_Sgf_module_n_37),
        .\Q_reg[1]_7 (Add_Subt_Sgf_module_n_28),
        .\Q_reg[1]_8 (Add_Subt_Sgf_module_n_36),
        .\Q_reg[1]_9 (Add_Subt_Sgf_module_n_30),
        .\Q_reg[22] (Sel_B_n_34),
        .\Q_reg[23] (\Mux_Array/Data_array[4]_5 ),
        .\Q_reg[25] ({Data_Reg[25:24],Data_Reg[21:16],Data_Reg[13:12],Data_Reg[9:4],Data_Reg[1:0]}),
        .\Q_reg[25]_0 (S_Data_Shift),
        .\Q_reg[26] ({Oper_Start_in_module_n_58,Oper_Start_in_module_n_59,Oper_Start_in_module_n_60}),
        .\Q_reg[29] ({Oper_Start_in_module_n_61,Oper_Start_in_module_n_62,Oper_Start_in_module_n_63,Oper_Start_in_module_n_64,Oper_Start_in_module_n_65,Oper_Start_in_module_n_66,Oper_Start_in_module_n_67}),
        .\Q_reg[3] (Exp_Operation_Module_n_3),
        .\Q_reg[3]_0 (Add_Subt_Sgf_module_n_40),
        .\Q_reg[3]_1 (Add_Subt_Sgf_module_n_24),
        .\Q_reg[3]_2 (Add_Subt_Sgf_module_n_41),
        .\Q_reg[3]_3 (Add_Subt_Sgf_module_n_34),
        .\Q_reg[4] (Exp_Operation_Module_n_13),
        .\Q_reg[4]_0 (Add_Subt_Sgf_module_n_33),
        .\Q_reg[4]_1 (Add_Subt_Sgf_module_n_35),
        .\Q_reg[4]_2 (Add_Subt_Sgf_module_n_25),
        .\Q_reg[7] (Sel_B_n_38),
        .\Q_reg[8] (Sel_B_n_33),
        .S({Oper_Start_in_module_n_54,Oper_Start_in_module_n_55,Oper_Start_in_module_n_56,Oper_Start_in_module_n_57}),
        .S_Shift_Value(S_Shift_Value),
        .add_overflow_flag(add_overflow_flag),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .out({FS_Module_n_0,FS_Module_n_1,FS_Module_n_2,FS_Module_n_3}));
  RegisterAdd Sel_C
       (.AR(rst_int),
        .FSM_selector_C(FSM_selector_C),
        .\FSM_sequential_state_reg_reg[1] (FS_Module_n_19),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  RegisterAdd_0 Sel_D
       (.AR(FS_Module_n_6),
        .FSM_selector_D(FSM_selector_D),
        .\FSM_sequential_state_reg_reg[2] (FS_Module_n_20),
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
       (.AR({rst_int,FS_Module_n_6}),
        .D({sign_final_result,\exp_result/Q_reg__0 ,exp_oper_result,Barrel_Shifter_module_n_2,Barrel_Shifter_module_n_3,Barrel_Shifter_module_n_4,Barrel_Shifter_module_n_5,Barrel_Shifter_module_n_6,Barrel_Shifter_module_n_7,Barrel_Shifter_module_n_8,Barrel_Shifter_module_n_9,Barrel_Shifter_module_n_10,Barrel_Shifter_module_n_11,Barrel_Shifter_module_n_12,Barrel_Shifter_module_n_13,Barrel_Shifter_module_n_14,Barrel_Shifter_module_n_15,Barrel_Shifter_module_n_16,Barrel_Shifter_module_n_17,Barrel_Shifter_module_n_18,Barrel_Shifter_module_n_19,Barrel_Shifter_module_n_20,Barrel_Shifter_module_n_21,Barrel_Shifter_module_n_22,Barrel_Shifter_module_n_23,Barrel_Shifter_module_n_24}),
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
       (.I(1'b0),
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
       (.I(1'b0),
        .O(underflow_flag));
endmodule

module FSM_Add_Subtract
   (out,
    ready_OBUF,
    AR,
    FSM_exp_operation_A_S,
    E,
    \Q_reg[0] ,
    FSM_barrel_shifter_L_R,
    \Q_reg[1] ,
    \Q_reg[0]_0 ,
    \Q_reg[0]_1 ,
    \Q_reg[1]_0 ,
    \Q_reg[0]_2 ,
    FSM_barrel_shifter_B_S,
    \Q_reg[0]_3 ,
    \Data_array[1]_0 ,
    \Q_reg[0]_4 ,
    \Q_reg[0]_5 ,
    rst_FSM_IBUF,
    beg_FSM_IBUF,
    add_overflow_flag,
    FSM_selector_C,
    \Q_reg[0]_6 ,
    \FSM_sequential_state_reg_reg[2]_0 ,
    \FSM_sequential_state_reg_reg[1]_0 ,
    zero_flag,
    S_Shift_Value,
    Q,
    round_flag,
    FSM_selector_D,
    clk_IBUF_BUFG,
    rst);
  output [3:0]out;
  output ready_OBUF;
  output [1:0]AR;
  output FSM_exp_operation_A_S;
  output [0:0]E;
  output [0:0]\Q_reg[0] ;
  output FSM_barrel_shifter_L_R;
  output \Q_reg[1] ;
  output [0:0]\Q_reg[0]_0 ;
  output [0:0]\Q_reg[0]_1 ;
  output \Q_reg[1]_0 ;
  output [0:0]\Q_reg[0]_2 ;
  output FSM_barrel_shifter_B_S;
  output [0:0]\Q_reg[0]_3 ;
  output [0:0]\Data_array[1]_0 ;
  output \Q_reg[0]_4 ;
  output \Q_reg[0]_5 ;
  input rst_FSM_IBUF;
  input beg_FSM_IBUF;
  input add_overflow_flag;
  input FSM_selector_C;
  input \Q_reg[0]_6 ;
  input \FSM_sequential_state_reg_reg[2]_0 ;
  input \FSM_sequential_state_reg_reg[1]_0 ;
  input zero_flag;
  input [0:0]S_Shift_Value;
  input [1:0]Q;
  input round_flag;
  input FSM_selector_D;
  input clk_IBUF_BUFG;
  input [0:0]rst;

  wire [1:0]AR;
  wire [0:0]\Data_array[1]_0 ;
  wire [0:0]E;
  wire FSM_barrel_shifter_B_S;
  wire FSM_barrel_shifter_L_R;
  wire FSM_exp_operation_A_S;
  wire FSM_selector_C;
  wire FSM_selector_D;
  wire \FSM_sequential_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_5_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[3]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[3]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[3]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[3]_i_4_n_0 ;
  wire \FSM_sequential_state_reg_reg[1]_0 ;
  wire \FSM_sequential_state_reg_reg[2]_0 ;
  wire [1:0]Q;
  wire [0:0]\Q_reg[0] ;
  wire [0:0]\Q_reg[0]_0 ;
  wire [0:0]\Q_reg[0]_1 ;
  wire [0:0]\Q_reg[0]_2 ;
  wire [0:0]\Q_reg[0]_3 ;
  wire \Q_reg[0]_4 ;
  wire \Q_reg[0]_5 ;
  wire \Q_reg[0]_6 ;
  wire \Q_reg[1] ;
  wire \Q_reg[1]_0 ;
  wire [0:0]S_Shift_Value;
  wire add_overflow_flag;
  wire beg_FSM_IBUF;
  wire clk_IBUF_BUFG;
  (* RTL_KEEP = "yes" *) wire [3:0]out;
  wire ready_OBUF;
  wire round_flag;
  wire [0:0]rst;
  wire rst_FSM_IBUF;
  wire zero_flag;

  LUT6 #(
    .INIT(64'h0000000000000557)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(out[0]),
        .I1(\Q_reg[0]_6 ),
        .I2(out[1]),
        .I3(out[3]),
        .I4(\FSM_sequential_state_reg_reg[2]_0 ),
        .I5(\FSM_sequential_state_reg[0]_i_4_n_0 ),
        .O(\FSM_sequential_state_reg[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_state_reg[0]_i_4 
       (.I0(add_overflow_flag),
        .I1(out[2]),
        .I2(out[1]),
        .O(\FSM_sequential_state_reg[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCF8FAC8C8)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I2(add_overflow_flag),
        .I3(FSM_selector_C),
        .I4(\FSM_sequential_state_reg[1]_i_5_n_0 ),
        .I5(out[0]),
        .O(\FSM_sequential_state_reg[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(out[1]),
        .I1(out[2]),
        .O(\FSM_sequential_state_reg[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00642064)) 
    \FSM_sequential_state_reg[1]_i_3 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(\Q_reg[0]_6 ),
        .I3(out[3]),
        .I4(out[2]),
        .O(\FSM_sequential_state_reg[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state_reg[1]_i_5 
       (.I0(out[2]),
        .I1(out[3]),
        .O(\FSM_sequential_state_reg[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF30CCFFFF3080)) 
    \FSM_sequential_state_reg[2]_i_1 
       (.I0(round_flag),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .I5(out[3]),
        .O(\FSM_sequential_state_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002008200000080)) 
    \FSM_sequential_state_reg[2]_i_3 
       (.I0(out[2]),
        .I1(add_overflow_flag),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[3]),
        .I5(FSM_selector_C),
        .O(\FSM_sequential_state_reg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD0DDD0DD0000D0DD)) 
    \FSM_sequential_state_reg[3]_i_1 
       (.I0(ready_OBUF),
        .I1(rst_FSM_IBUF),
        .I2(\FSM_sequential_state_reg[3]_i_3_n_0 ),
        .I3(out[1]),
        .I4(AR[1]),
        .I5(beg_FSM_IBUF),
        .O(\FSM_sequential_state_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0533053335003503)) 
    \FSM_sequential_state_reg[3]_i_2 
       (.I0(out[1]),
        .I1(\FSM_sequential_state_reg[3]_i_4_n_0 ),
        .I2(out[0]),
        .I3(out[3]),
        .I4(\FSM_sequential_state_reg_reg[1]_0 ),
        .I5(out[2]),
        .O(\FSM_sequential_state_reg[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state_reg[3]_i_3 
       (.I0(out[3]),
        .I1(out[2]),
        .O(\FSM_sequential_state_reg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0C80008F0C800080)) 
    \FSM_sequential_state_reg[3]_i_4 
       (.I0(round_flag),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(add_overflow_flag),
        .I5(FSM_selector_C),
        .O(\FSM_sequential_state_reg[3]_i_4_n_0 ));
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
  LUT5 #(
    .INIT(32'hFFFF0800)) 
    \Q[0]_i_1__3 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[3]),
        .I4(FSM_selector_C),
        .O(\Q_reg[0]_4 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000080)) 
    \Q[0]_i_1__4 
       (.I0(round_flag),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(out[3]),
        .I5(FSM_selector_D),
        .O(\Q_reg[0]_5 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \Q[1]_i_2 
       (.I0(out[1]),
        .I1(out[3]),
        .I2(out[0]),
        .I3(out[2]),
        .O(AR[0]));
  LUT2 #(
    .INIT(4'h1)) 
    \Q[24]_i_27 
       (.I0(out[3]),
        .I1(out[1]),
        .O(\Q_reg[1] ));
  LUT2 #(
    .INIT(4'hB)) 
    \Q[24]_i_28 
       (.I0(out[0]),
        .I1(out[2]),
        .O(\Q_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h300004C0)) 
    \Q[25]_i_1 
       (.I0(FSM_selector_C),
        .I1(out[2]),
        .I2(out[3]),
        .I3(out[0]),
        .I4(out[1]),
        .O(E));
  LUT4 #(
    .INIT(16'h0006)) 
    \Q[25]_i_1__0 
       (.I0(out[2]),
        .I1(out[3]),
        .I2(out[0]),
        .I3(out[1]),
        .O(\Q_reg[0]_2 ));
  LUT6 #(
    .INIT(64'hB8BBB88888BB88BB)) 
    \Q[25]_i_21 
       (.I0(FSM_barrel_shifter_B_S),
        .I1(S_Shift_Value),
        .I2(Q[0]),
        .I3(FSM_barrel_shifter_L_R),
        .I4(Q[1]),
        .I5(FSM_selector_C),
        .O(\Data_array[1]_0 ));
  LUT6 #(
    .INIT(64'h000000000000A800)) 
    \Q[25]_i_22 
       (.I0(add_overflow_flag),
        .I1(FSM_selector_C),
        .I2(out[1]),
        .I3(out[2]),
        .I4(out[3]),
        .I5(out[0]),
        .O(FSM_barrel_shifter_B_S));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \Q[25]_i_7 
       (.I0(out[1]),
        .I1(out[3]),
        .I2(FSM_selector_C),
        .I3(add_overflow_flag),
        .I4(out[0]),
        .I5(out[2]),
        .O(FSM_barrel_shifter_L_R));
  LUT4 #(
    .INIT(16'h0001)) 
    \Q[30]_i_1 
       (.I0(out[1]),
        .I1(out[3]),
        .I2(out[0]),
        .I3(out[2]),
        .O(AR[1]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \Q[30]_i_1__0 
       (.I0(out[3]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(zero_flag),
        .I4(out[2]),
        .O(\Q_reg[0]_3 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \Q[31]_i_1 
       (.I0(out[1]),
        .I1(out[3]),
        .I2(out[2]),
        .I3(out[0]),
        .O(\Q_reg[0] ));
  LUT4 #(
    .INIT(16'h0020)) 
    \Q[31]_i_1__0 
       (.I0(out[3]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .O(\Q_reg[0]_1 ));
  LUT5 #(
    .INIT(32'h7F1F7F7F)) 
    \Q[3]_i_6 
       (.I0(out[1]),
        .I1(out[3]),
        .I2(out[2]),
        .I3(out[0]),
        .I4(add_overflow_flag),
        .O(FSM_exp_operation_A_S));
  LUT3 #(
    .INIT(8'h40)) 
    \Q[7]_i_1 
       (.I0(out[3]),
        .I1(out[0]),
        .I2(out[1]),
        .O(\Q_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    ready_OBUF_inst_i_1
       (.I0(out[1]),
        .I1(out[3]),
        .I2(out[0]),
        .I3(out[2]),
        .O(ready_OBUF));
endmodule

module Oper_Start_In
   (\FSM_sequential_state_reg_reg[0] ,
    \FSM_sequential_state_reg_reg[3] ,
    D,
    zero_flag,
    state_next1,
    add_overflow_flag,
    Q,
    S_A_S_op,
    \Q_reg[25] ,
    S,
    \Q_reg[3] ,
    \Q_reg[7] ,
    E,
    add_subt_IBUF,
    clk_IBUF_BUFG,
    AR,
    out,
    FSM_selector_C,
    S_A_S_Oper_A,
    \Q_reg[0] ,
    \Q_reg[25]_0 ,
    FSM_selector_D,
    FSM_exp_operation_A_S,
    \Q_reg[0]_0 ,
    \Q_reg[7]_0 ,
    \Data_X[31] ,
    \Data_Y[31] ,
    \FSM_sequential_state_reg_reg[3]_0 );
  output \FSM_sequential_state_reg_reg[0] ;
  output \FSM_sequential_state_reg_reg[3] ;
  output [0:0]D;
  output zero_flag;
  output state_next1;
  output add_overflow_flag;
  output [23:0]Q;
  output S_A_S_op;
  output [22:0]\Q_reg[25] ;
  output [3:0]S;
  output [2:0]\Q_reg[3] ;
  output [29:0]\Q_reg[7] ;
  input [0:0]E;
  input add_subt_IBUF;
  input clk_IBUF_BUFG;
  input [1:0]AR;
  input [1:0]out;
  input FSM_selector_C;
  input [23:0]S_A_S_Oper_A;
  input [0:0]\Q_reg[0] ;
  input [25:0]\Q_reg[25]_0 ;
  input FSM_selector_D;
  input FSM_exp_operation_A_S;
  input \Q_reg[0]_0 ;
  input [6:0]\Q_reg[7]_0 ;
  input [31:0]\Data_X[31] ;
  input [31:0]\Data_Y[31] ;
  input [0:0]\FSM_sequential_state_reg_reg[3]_0 ;

  wire [1:0]AR;
  wire [23:2]A_S_C;
  wire [19:4]A_S_P;
  wire [0:0]D;
  wire [7:1]D0;
  wire [31:0]\Data_X[31] ;
  wire [31:0]\Data_Y[31] ;
  wire [0:0]E;
  wire FSM_exp_operation_A_S;
  wire FSM_selector_C;
  wire FSM_selector_D;
  wire \FSM_sequential_state_reg_reg[0] ;
  wire \FSM_sequential_state_reg_reg[3] ;
  wire [0:0]\FSM_sequential_state_reg_reg[3]_0 ;
  wire MRegister_n_48;
  wire MRegister_n_49;
  wire MRegister_n_50;
  wire MRegister_n_51;
  wire [23:0]Q;
  wire [0:0]\Q_reg[0] ;
  wire \Q_reg[0]_0 ;
  wire [22:0]\Q_reg[25] ;
  wire [25:0]\Q_reg[25]_0 ;
  wire [2:0]\Q_reg[3] ;
  wire [29:0]\Q_reg[7] ;
  wire [6:0]\Q_reg[7]_0 ;
  wire [3:0]S;
  wire [23:0]S_A_S_Oper_A;
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
  wire XRegister_n_4;
  wire XRegister_n_49;
  wire XRegister_n_5;
  wire XRegister_n_50;
  wire XRegister_n_51;
  wire XRegister_n_52;
  wire XRegister_n_53;
  wire XRegister_n_54;
  wire XRegister_n_55;
  wire XRegister_n_56;
  wire XRegister_n_57;
  wire XRegister_n_58;
  wire XRegister_n_59;
  wire XRegister_n_6;
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
  wire YRegister_n_35;
  wire YRegister_n_4;
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
  wire [1:0]out;
  wire state_next1;
  wire zero_flag;

  RegisterAdd_1 ASRegister
       (.AR(AR[0]),
        .A_S_C({A_S_C[23],A_S_C[20],A_S_C[18],A_S_C[15],A_S_C[13],A_S_C[10],A_S_C[8],A_S_C[5]}),
        .CO(eqXY),
        .E(E),
        .FSM_selector_D(FSM_selector_D),
        .Q(intDY),
        .\Q_reg[21] ({Q[21],Q[18],Q[16],Q[13],Q[11],Q[8],Q[6],Q[3]}),
        .\Q_reg[23] ({\Q_reg[25] [20],\Q_reg[25] [17],\Q_reg[25] [15],\Q_reg[25] [12],\Q_reg[25] [10],\Q_reg[25] [7],\Q_reg[25] [5],\Q_reg[25] [2]}),
        .\Q_reg[23]_0 ({\Q_reg[25]_0 [23],\Q_reg[25]_0 [20],\Q_reg[25]_0 [18],\Q_reg[25]_0 [15],\Q_reg[25]_0 [13],\Q_reg[25]_0 [10],\Q_reg[25]_0 [8],\Q_reg[25]_0 [5],\Q_reg[25]_0 [1:0]}),
        .\Q_reg[31] (intDX),
        .\Q_reg[5] (S_A_S_op),
        .\Q_reg[6] (A_S_C[2]),
        .add_subt_IBUF(add_subt_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .intAS(intAS),
        .zero_flag(zero_flag));
  RegisterAdd__parameterized3 MRegister
       (.AR(AR[0]),
        .A_S_C({A_S_C[23],A_S_C[21:20],A_S_C[18],A_S_C[16:15],A_S_C[13],A_S_C[11:10],A_S_C[8],A_S_C[6:5]}),
        .D({XRegister_n_80,XRegister_n_81,XRegister_n_82,XRegister_n_83,XRegister_n_84,XRegister_n_85,XRegister_n_86,XRegister_n_87,XRegister_n_88,XRegister_n_89,XRegister_n_90,XRegister_n_91,XRegister_n_92,XRegister_n_93,XRegister_n_94,XRegister_n_95,XRegister_n_96,XRegister_n_97,XRegister_n_98,XRegister_n_99,XRegister_n_100,XRegister_n_101,XRegister_n_102,XRegister_n_103,XRegister_n_104,XRegister_n_105,XRegister_n_106,XRegister_n_107,XRegister_n_108,XRegister_n_109,XRegister_n_110}),
        .FSM_selector_D(FSM_selector_D),
        .\FSM_sequential_state_reg_reg[3] (\FSM_sequential_state_reg_reg[3]_0 ),
        .Q({D0,Q}),
        .\Q_reg[0]_0 (S_A_S_op),
        .\Q_reg[0]_1 (\Q_reg[0] ),
        .\Q_reg[16]_0 (MRegister_n_50),
        .\Q_reg[19]_0 ({A_S_P[19],A_S_P[14],A_S_P[9],A_S_P[4]}),
        .\Q_reg[21]_0 (MRegister_n_49),
        .\Q_reg[24]_0 ({\Q_reg[25] [21],\Q_reg[25] [19:18],\Q_reg[25] [16],\Q_reg[25] [14:13],\Q_reg[25] [11],\Q_reg[25] [9:8],\Q_reg[25] [6],\Q_reg[25] [4:3],\Q_reg[25] [1]}),
        .\Q_reg[24]_1 (\Q_reg[25]_0 [24:3]),
        .\Q_reg[25]_0 (MRegister_n_48),
        .\Q_reg[31] (intDY),
        .\Q_reg[31]_0 (intDX),
        .\Q_reg[9]_0 (MRegister_n_51),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .intAS(intAS));
  RegisterAdd__parameterized1 XRegister
       (.AR(AR),
        .CO(eqXY),
        .D(D),
        .\Data_X[31] (\Data_X[31] ),
        .E(E),
        .FSM_selector_C(FSM_selector_C),
        .FSM_selector_D(FSM_selector_D),
        .Q({intDX,XRegister_n_2,XRegister_n_3,XRegister_n_4,XRegister_n_5,XRegister_n_6,XRegister_n_7,XRegister_n_8,XRegister_n_9,XRegister_n_10,XRegister_n_11,XRegister_n_12,XRegister_n_13,XRegister_n_14,XRegister_n_15,XRegister_n_16,XRegister_n_17,XRegister_n_18,XRegister_n_19,XRegister_n_20,XRegister_n_21,XRegister_n_22,XRegister_n_23,XRegister_n_24,XRegister_n_25,XRegister_n_26,XRegister_n_27,XRegister_n_28,XRegister_n_29,XRegister_n_30,XRegister_n_31,XRegister_n_32}),
        .\Q_reg[0]_0 (A_S_C[2]),
        .\Q_reg[0]_1 (S_A_S_op),
        .\Q_reg[12]_0 (MRegister_n_49),
        .\Q_reg[17]_0 (MRegister_n_48),
        .\Q_reg[17]_1 ({A_S_P[19],A_S_P[14],A_S_P[9],A_S_P[4]}),
        .\Q_reg[22]_0 ({Q[22],Q[17],Q[12],Q[7],Q[5],Q[2]}),
        .\Q_reg[24]_0 ({A_S_C[23],A_S_C[21:20],A_S_C[18],A_S_C[16:15],A_S_C[13],A_S_C[11:10],A_S_C[8],A_S_C[6:5]}),
        .\Q_reg[25]_0 ({\Q_reg[25] [22],\Q_reg[25] [0]}),
        .\Q_reg[25]_1 (\Q_reg[25]_0 ),
        .\Q_reg[2]_0 (MRegister_n_51),
        .\Q_reg[30]_0 ({XRegister_n_49,XRegister_n_50,XRegister_n_51,XRegister_n_52,XRegister_n_53,XRegister_n_54,XRegister_n_55,XRegister_n_56,XRegister_n_57,XRegister_n_58,XRegister_n_59,XRegister_n_60,XRegister_n_61,XRegister_n_62,XRegister_n_63,XRegister_n_64,XRegister_n_65,XRegister_n_66,XRegister_n_67,XRegister_n_68,XRegister_n_69,XRegister_n_70,XRegister_n_71,XRegister_n_72,XRegister_n_73,XRegister_n_74,XRegister_n_75,XRegister_n_76,XRegister_n_77,XRegister_n_78,XRegister_n_79}),
        .\Q_reg[30]_1 ({XRegister_n_80,XRegister_n_81,XRegister_n_82,XRegister_n_83,XRegister_n_84,XRegister_n_85,XRegister_n_86,XRegister_n_87,XRegister_n_88,XRegister_n_89,XRegister_n_90,XRegister_n_91,XRegister_n_92,XRegister_n_93,XRegister_n_94,XRegister_n_95,XRegister_n_96,XRegister_n_97,XRegister_n_98,XRegister_n_99,XRegister_n_100,XRegister_n_101,XRegister_n_102,XRegister_n_103,XRegister_n_104,XRegister_n_105,XRegister_n_106,XRegister_n_107,XRegister_n_108,XRegister_n_109,XRegister_n_110}),
        .\Q_reg[31]_0 ({intDY,YRegister_n_2,YRegister_n_3,YRegister_n_4,YRegister_n_5,YRegister_n_6,YRegister_n_7,YRegister_n_8,YRegister_n_9,YRegister_n_10,YRegister_n_11,YRegister_n_12,YRegister_n_13,YRegister_n_14,YRegister_n_15,YRegister_n_16,YRegister_n_17,YRegister_n_18,YRegister_n_19,YRegister_n_20,YRegister_n_21,YRegister_n_22,YRegister_n_23,YRegister_n_24,YRegister_n_25,YRegister_n_26,YRegister_n_27,YRegister_n_28,YRegister_n_29,YRegister_n_30,YRegister_n_31,YRegister_n_32}),
        .\Q_reg[7]_0 (MRegister_n_50),
        .S(YRegister_n_35),
        .S_A_S_Oper_A(S_A_S_Oper_A),
        .add_overflow_flag(add_overflow_flag),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .intAS(intAS),
        .state_next1(state_next1));
  RegisterAdd__parameterized2 YRegister
       (.AR(AR),
        .CO(eqXY),
        .\Data_Y[31] (\Data_Y[31] ),
        .E(E),
        .\FSM_sequential_state_reg_reg[0] (\FSM_sequential_state_reg_reg[0] ),
        .\FSM_sequential_state_reg_reg[3] (\FSM_sequential_state_reg_reg[3] ),
        .Q({intDY,YRegister_n_2,YRegister_n_3,YRegister_n_4,YRegister_n_5,YRegister_n_6,YRegister_n_7,YRegister_n_8,YRegister_n_9,YRegister_n_10,YRegister_n_11,YRegister_n_12,YRegister_n_13,YRegister_n_14,YRegister_n_15,YRegister_n_16,YRegister_n_17,YRegister_n_18,YRegister_n_19,YRegister_n_20,YRegister_n_21,YRegister_n_22,YRegister_n_23,YRegister_n_24,YRegister_n_25,YRegister_n_26,YRegister_n_27,YRegister_n_28,YRegister_n_29,YRegister_n_30,YRegister_n_31,YRegister_n_32}),
        .\Q_reg[31]_0 ({intDX,XRegister_n_2,XRegister_n_3,XRegister_n_4,XRegister_n_5,XRegister_n_6,XRegister_n_7,XRegister_n_8,XRegister_n_9,XRegister_n_10,XRegister_n_11,XRegister_n_12,XRegister_n_13,XRegister_n_14,XRegister_n_15,XRegister_n_16,XRegister_n_17,XRegister_n_18,XRegister_n_19,XRegister_n_20,XRegister_n_21,XRegister_n_22,XRegister_n_23,XRegister_n_24,XRegister_n_25,XRegister_n_26,XRegister_n_27,XRegister_n_28,XRegister_n_29,XRegister_n_30,XRegister_n_31,XRegister_n_32}),
        .S(YRegister_n_35),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .intAS(intAS),
        .out(out));
  RegisterAdd__parameterized4 mRegister
       (.AR(AR),
        .D({XRegister_n_49,XRegister_n_50,XRegister_n_51,XRegister_n_52,XRegister_n_53,XRegister_n_54,XRegister_n_55,XRegister_n_56,XRegister_n_57,XRegister_n_58,XRegister_n_59,XRegister_n_60,XRegister_n_61,XRegister_n_62,XRegister_n_63,XRegister_n_64,XRegister_n_65,XRegister_n_66,XRegister_n_67,XRegister_n_68,XRegister_n_69,XRegister_n_70,XRegister_n_71,XRegister_n_72,XRegister_n_73,XRegister_n_74,XRegister_n_75,XRegister_n_76,XRegister_n_77,XRegister_n_78,XRegister_n_79}),
        .FSM_exp_operation_A_S(FSM_exp_operation_A_S),
        .FSM_selector_D(FSM_selector_D),
        .\FSM_sequential_state_reg_reg[3] (\FSM_sequential_state_reg_reg[3]_0 ),
        .Q(D0),
        .\Q_reg[0]_0 (\Q_reg[0]_0 ),
        .\Q_reg[3]_0 (\Q_reg[3] ),
        .\Q_reg[7]_0 (\Q_reg[7] ),
        .\Q_reg[7]_1 (\Q_reg[7]_0 ),
        .S(S),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
endmodule

module RegisterAdd
   (FSM_selector_C,
    \FSM_sequential_state_reg_reg[1] ,
    clk_IBUF_BUFG,
    AR);
  output FSM_selector_C;
  input \FSM_sequential_state_reg_reg[1] ;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire FSM_selector_C;
  wire \FSM_sequential_state_reg_reg[1] ;
  wire clk_IBUF_BUFG;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state_reg_reg[1] ),
        .Q(FSM_selector_C));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd_0
   (FSM_selector_D,
    \FSM_sequential_state_reg_reg[2] ,
    clk_IBUF_BUFG,
    AR);
  output FSM_selector_D;
  input \FSM_sequential_state_reg_reg[2] ;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire FSM_selector_D;
  wire \FSM_sequential_state_reg_reg[2] ;
  wire clk_IBUF_BUFG;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state_reg_reg[2] ),
        .Q(FSM_selector_D));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd_1
   (intAS,
    zero_flag,
    \Q_reg[23] ,
    \Q_reg[5] ,
    \Q_reg[6] ,
    E,
    add_subt_IBUF,
    clk_IBUF_BUFG,
    AR,
    Q,
    \Q_reg[31] ,
    CO,
    FSM_selector_D,
    \Q_reg[23]_0 ,
    \Q_reg[21] ,
    A_S_C);
  output intAS;
  output zero_flag;
  output [7:0]\Q_reg[23] ;
  output \Q_reg[5] ;
  output [0:0]\Q_reg[6] ;
  input [0:0]E;
  input add_subt_IBUF;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input [0:0]Q;
  input [0:0]\Q_reg[31] ;
  input [0:0]CO;
  input FSM_selector_D;
  input [9:0]\Q_reg[23]_0 ;
  input [7:0]\Q_reg[21] ;
  input [7:0]A_S_C;

  wire [0:0]AR;
  wire [7:0]A_S_C;
  wire [0:0]CO;
  wire [0:0]E;
  wire FSM_selector_D;
  wire [0:0]Q;
  wire [7:0]\Q_reg[21] ;
  wire [7:0]\Q_reg[23] ;
  wire [9:0]\Q_reg[23]_0 ;
  wire [0:0]\Q_reg[31] ;
  wire \Q_reg[5] ;
  wire [0:0]\Q_reg[6] ;
  wire add_subt_IBUF;
  wire clk_IBUF_BUFG;
  wire intAS;
  wire zero_flag;

  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[10]_i_1__0 
       (.I0(FSM_selector_D),
        .I1(\Q_reg[23]_0 [4]),
        .I2(\Q_reg[5] ),
        .I3(\Q_reg[21] [2]),
        .I4(A_S_C[2]),
        .O(\Q_reg[23] [2]));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[13]_i_1__0 
       (.I0(FSM_selector_D),
        .I1(\Q_reg[23]_0 [5]),
        .I2(\Q_reg[5] ),
        .I3(\Q_reg[21] [3]),
        .I4(A_S_C[3]),
        .O(\Q_reg[23] [3]));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[15]_i_1__0 
       (.I0(FSM_selector_D),
        .I1(\Q_reg[23]_0 [6]),
        .I2(\Q_reg[5] ),
        .I3(\Q_reg[21] [4]),
        .I4(A_S_C[4]),
        .O(\Q_reg[23] [4]));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[18]_i_1__0 
       (.I0(FSM_selector_D),
        .I1(\Q_reg[23]_0 [7]),
        .I2(\Q_reg[5] ),
        .I3(\Q_reg[21] [5]),
        .I4(A_S_C[5]),
        .O(\Q_reg[23] [5]));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[20]_i_1__0 
       (.I0(FSM_selector_D),
        .I1(\Q_reg[23]_0 [8]),
        .I2(\Q_reg[5] ),
        .I3(\Q_reg[21] [6]),
        .I4(A_S_C[6]),
        .O(\Q_reg[23] [6]));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[23]_i_1__0 
       (.I0(FSM_selector_D),
        .I1(\Q_reg[23]_0 [9]),
        .I2(\Q_reg[5] ),
        .I3(\Q_reg[21] [7]),
        .I4(A_S_C[7]),
        .O(\Q_reg[23] [7]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0096)) 
    \Q[24]_i_3__0 
       (.I0(intAS),
        .I1(Q),
        .I2(\Q_reg[31] ),
        .I3(FSM_selector_D),
        .O(\Q_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h9600)) 
    \Q[30]_i_3 
       (.I0(intAS),
        .I1(Q),
        .I2(\Q_reg[31] ),
        .I3(CO),
        .O(zero_flag));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[5]_i_1__0 
       (.I0(FSM_selector_D),
        .I1(\Q_reg[23]_0 [2]),
        .I2(\Q_reg[5] ),
        .I3(\Q_reg[21] [0]),
        .I4(A_S_C[0]),
        .O(\Q_reg[23] [0]));
  LUT6 #(
    .INIT(64'hFF00000000000096)) 
    \Q[7]_i_9 
       (.I0(intAS),
        .I1(Q),
        .I2(\Q_reg[31] ),
        .I3(FSM_selector_D),
        .I4(\Q_reg[23]_0 [0]),
        .I5(\Q_reg[23]_0 [1]),
        .O(\Q_reg[6] ));
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[8]_i_1__0 
       (.I0(FSM_selector_D),
        .I1(\Q_reg[23]_0 [3]),
        .I2(\Q_reg[5] ),
        .I3(\Q_reg[21] [1]),
        .I4(A_S_C[1]),
        .O(\Q_reg[23] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(add_subt_IBUF),
        .Q(intAS));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized0
   (D,
    \Q_reg[14] ,
    S_Shift_Value,
    \Q_reg[25] ,
    \Q_reg[23] ,
    \Q_reg[8] ,
    \Q_reg[22] ,
    \Q_reg[15] ,
    FSM_selector_B,
    \Q_reg[7] ,
    Data_A,
    FSM_exp_operation_A_S,
    \Q_reg[26] ,
    S,
    \Q_reg[3] ,
    FSM_barrel_shifter_B_S,
    \Data_array[1]_0 ,
    FSM_barrel_shifter_L_R,
    \Q_reg[1]_0 ,
    \Q_reg[1]_1 ,
    \Q_reg[1]_2 ,
    \Q_reg[1]_3 ,
    \Q_reg[0]_0 ,
    \Q_reg[1]_4 ,
    \Q_reg[4] ,
    \Q_reg[1]_5 ,
    \Q_reg[1]_6 ,
    \Q_reg[1]_7 ,
    \Q_reg[1]_8 ,
    \Q_reg[3]_0 ,
    \Q_reg[4]_0 ,
    \Q_reg[1]_9 ,
    \Q_reg[3]_1 ,
    \Q_reg[3]_2 ,
    \Q_reg[4]_1 ,
    \Q_reg[3]_3 ,
    \Q_reg[4]_2 ,
    \Q_reg[0]_1 ,
    \Q_reg[0]_2 ,
    \Q_reg[25]_0 ,
    Q,
    \Q_reg[29] ,
    add_overflow_flag,
    out,
    clk_IBUF_BUFG,
    AR);
  output [7:0]D;
  output \Q_reg[14] ;
  output [4:0]S_Shift_Value;
  output [17:0]\Q_reg[25] ;
  output [0:0]\Q_reg[23] ;
  output \Q_reg[8] ;
  output \Q_reg[22] ;
  output \Q_reg[15] ;
  output [1:0]FSM_selector_B;
  output \Q_reg[7] ;
  input [0:0]Data_A;
  input FSM_exp_operation_A_S;
  input [2:0]\Q_reg[26] ;
  input [3:0]S;
  input \Q_reg[3] ;
  input FSM_barrel_shifter_B_S;
  input [3:0]\Data_array[1]_0 ;
  input FSM_barrel_shifter_L_R;
  input \Q_reg[1]_0 ;
  input \Q_reg[1]_1 ;
  input \Q_reg[1]_2 ;
  input \Q_reg[1]_3 ;
  input [7:0]\Q_reg[0]_0 ;
  input [1:0]\Q_reg[1]_4 ;
  input \Q_reg[4] ;
  input \Q_reg[1]_5 ;
  input \Q_reg[1]_6 ;
  input \Q_reg[1]_7 ;
  input \Q_reg[1]_8 ;
  input \Q_reg[3]_0 ;
  input \Q_reg[4]_0 ;
  input \Q_reg[1]_9 ;
  input \Q_reg[3]_1 ;
  input \Q_reg[3]_2 ;
  input \Q_reg[4]_1 ;
  input \Q_reg[3]_3 ;
  input \Q_reg[4]_2 ;
  input [1:0]\Q_reg[0]_1 ;
  input \Q_reg[0]_2 ;
  input [0:0]\Q_reg[25]_0 ;
  input [4:0]Q;
  input [6:0]\Q_reg[29] ;
  input add_overflow_flag;
  input [3:0]out;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [25:24]\Barrel_Shifter_module/Mux_Array/Data_array[2] ;
  wire [25:24]\Barrel_Shifter_module/Mux_Array/Data_array[3] ;
  wire [23:16]\Barrel_Shifter_module/Mux_Array/Data_array[4] ;
  wire [25:18]\Barrel_Shifter_module/Mux_Array/Data_array[5] ;
  wire [7:0]D;
  wire [0:0]Data_A;
  wire [3:0]\Data_array[1]_0 ;
  wire FSM_barrel_shifter_B_S;
  wire FSM_barrel_shifter_L_R;
  wire FSM_exp_operation_A_S;
  wire [1:0]FSM_selector_B;
  wire [4:0]Q;
  wire \Q[0]_i_1__0_n_0 ;
  wire \Q[13]_i_2_n_0 ;
  wire \Q[13]_i_4_n_0 ;
  wire \Q[16]_i_4_n_0 ;
  wire \Q[16]_i_5_n_0 ;
  wire \Q[17]_i_4_n_0 ;
  wire \Q[17]_i_5_n_0 ;
  wire \Q[1]_i_1__0_n_0 ;
  wire \Q[23]_i_13_n_0 ;
  wire \Q[3]_i_10_n_0 ;
  wire [7:0]\Q_reg[0]_0 ;
  wire [1:0]\Q_reg[0]_1 ;
  wire \Q_reg[0]_2 ;
  wire \Q_reg[14] ;
  wire \Q_reg[15] ;
  wire \Q_reg[1]_0 ;
  wire \Q_reg[1]_1 ;
  wire \Q_reg[1]_2 ;
  wire \Q_reg[1]_3 ;
  wire [1:0]\Q_reg[1]_4 ;
  wire \Q_reg[1]_5 ;
  wire \Q_reg[1]_6 ;
  wire \Q_reg[1]_7 ;
  wire \Q_reg[1]_8 ;
  wire \Q_reg[1]_9 ;
  wire \Q_reg[22] ;
  wire [0:0]\Q_reg[23] ;
  wire [17:0]\Q_reg[25] ;
  wire [0:0]\Q_reg[25]_0 ;
  wire [2:0]\Q_reg[26] ;
  wire [6:0]\Q_reg[29] ;
  wire \Q_reg[3] ;
  wire \Q_reg[3]_0 ;
  wire \Q_reg[3]_1 ;
  wire \Q_reg[3]_2 ;
  wire \Q_reg[3]_3 ;
  wire \Q_reg[3]_i_1_n_0 ;
  wire \Q_reg[3]_i_1_n_1 ;
  wire \Q_reg[3]_i_1_n_2 ;
  wire \Q_reg[3]_i_1_n_3 ;
  wire \Q_reg[4] ;
  wire \Q_reg[4]_0 ;
  wire \Q_reg[4]_1 ;
  wire \Q_reg[4]_2 ;
  wire \Q_reg[7] ;
  wire \Q_reg[7]_i_2_n_1 ;
  wire \Q_reg[7]_i_2_n_2 ;
  wire \Q_reg[7]_i_2_n_3 ;
  wire \Q_reg[8] ;
  wire [3:0]S;
  wire [4:0]S_Shift_Value;
  wire add_overflow_flag;
  wire clk_IBUF_BUFG;
  wire [3:0]out;
  wire [6:1]p_0_in;
  wire [3:3]\NLW_Q_reg[7]_i_2_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    \Q[0]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[5] [25]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Q_reg[3]_3 ),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[4] [16]),
        .I4(S_Shift_Value[4]),
        .I5(\Q_reg[4]_2 ),
        .O(\Q_reg[25] [0]));
  LUT6 #(
    .INIT(64'hFFDFDFFF00101000)) 
    \Q[0]_i_1__0 
       (.I0(add_overflow_flag),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[3]),
        .I4(out[1]),
        .I5(FSM_selector_B[0]),
        .O(\Q[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFE0AFA0AFA0)) 
    \Q[12]_i_1 
       (.I0(\Q[13]_i_4_n_0 ),
        .I1(\Q_reg[1]_4 [1]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Q[13]_i_2_n_0 ),
        .I4(\Q_reg[1]_4 [0]),
        .I5(\Q_reg[4] ),
        .O(\Q_reg[25] [8]));
  LUT6 #(
    .INIT(64'hEFEFEFE0AFA0AFA0)) 
    \Q[13]_i_1 
       (.I0(\Q[13]_i_2_n_0 ),
        .I1(\Q_reg[1]_4 [0]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Q[13]_i_4_n_0 ),
        .I4(\Q_reg[1]_4 [1]),
        .I5(\Q_reg[4] ),
        .O(\Q_reg[25] [9]));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \Q[13]_i_2 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[2] [24]),
        .I1(S_Shift_Value[2]),
        .I2(\Q_reg[0]_0 [4]),
        .I3(\Q_reg[3] ),
        .I4(\Q_reg[8] ),
        .O(\Q[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \Q[13]_i_4 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[2] [25]),
        .I1(S_Shift_Value[2]),
        .I2(\Q_reg[0]_0 [5]),
        .I3(\Q_reg[3] ),
        .I4(\Q_reg[8] ),
        .O(\Q[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA2A2A2808080A280)) 
    \Q[14]_i_4 
       (.I0(\Q_reg[3] ),
        .I1(S_Shift_Value[2]),
        .I2(FSM_barrel_shifter_B_S),
        .I3(\Data_array[1]_0 [0]),
        .I4(S_Shift_Value[1]),
        .I5(\Data_array[1]_0 [2]),
        .O(\Q_reg[14] ));
  LUT6 #(
    .INIT(64'hA2A2A2808080A280)) 
    \Q[15]_i_6 
       (.I0(\Q_reg[3] ),
        .I1(S_Shift_Value[2]),
        .I2(FSM_barrel_shifter_B_S),
        .I3(\Data_array[1]_0 [1]),
        .I4(S_Shift_Value[1]),
        .I5(\Data_array[1]_0 [3]),
        .O(\Q_reg[15] ));
  LUT6 #(
    .INIT(64'hFEFFFEFFFEFFFE00)) 
    \Q[16]_i_1 
       (.I0(\Q_reg[3]_2 ),
        .I1(\Q_reg[4]_1 ),
        .I2(\Q[16]_i_4_n_0 ),
        .I3(FSM_barrel_shifter_L_R),
        .I4(\Q[16]_i_5_n_0 ),
        .I5(\Q_reg[8] ),
        .O(\Q_reg[25] [10]));
  LUT6 #(
    .INIT(64'hCCCCCDC800000000)) 
    \Q[16]_i_4 
       (.I0(S_Shift_Value[3]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[2]),
        .I3(\Data_array[1]_0 [3]),
        .I4(S_Shift_Value[1]),
        .I5(S_Shift_Value[4]),
        .O(\Q[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \Q[16]_i_5 
       (.I0(\Q_reg[0]_0 [0]),
        .I1(S_Shift_Value[2]),
        .I2(\Q_reg[0]_0 [4]),
        .I3(S_Shift_Value[3]),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[3] [24]),
        .I5(S_Shift_Value[4]),
        .O(\Q[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFEFFFEFFFE00)) 
    \Q[17]_i_1 
       (.I0(\Q_reg[3]_0 ),
        .I1(\Q_reg[4]_0 ),
        .I2(\Q[17]_i_4_n_0 ),
        .I3(FSM_barrel_shifter_L_R),
        .I4(\Q[17]_i_5_n_0 ),
        .I5(\Q_reg[8] ),
        .O(\Q_reg[25] [11]));
  LUT6 #(
    .INIT(64'hCCCCCDC800000000)) 
    \Q[17]_i_4 
       (.I0(S_Shift_Value[3]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[2]),
        .I3(\Data_array[1]_0 [2]),
        .I4(S_Shift_Value[1]),
        .I5(S_Shift_Value[4]),
        .O(\Q[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \Q[17]_i_5 
       (.I0(\Q_reg[0]_0 [1]),
        .I1(S_Shift_Value[2]),
        .I2(\Q_reg[0]_0 [5]),
        .I3(S_Shift_Value[3]),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[3] [25]),
        .I5(S_Shift_Value[4]),
        .O(\Q[17]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \Q[17]_i_6 
       (.I0(Q[4]),
        .I1(FSM_selector_B[0]),
        .I2(FSM_selector_B[1]),
        .I3(FSM_barrel_shifter_B_S),
        .O(\Q_reg[8] ));
  LUT6 #(
    .INIT(64'hBBB8FFFFBBB80000)) 
    \Q[18]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[4] [23]),
        .I1(S_Shift_Value[4]),
        .I2(\Q_reg[1]_2 ),
        .I3(\Q_reg[1]_3 ),
        .I4(FSM_barrel_shifter_L_R),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[5] [18]),
        .O(\Q_reg[25] [12]));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \Q[18]_i_2 
       (.I0(\Data_array[1]_0 [3]),
        .I1(S_Shift_Value[1]),
        .I2(\Data_array[1]_0 [1]),
        .I3(S_Shift_Value[2]),
        .I4(FSM_barrel_shifter_B_S),
        .I5(S_Shift_Value[3]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[4] [23]));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \Q[18]_i_5 
       (.I0(\Q_reg[0]_0 [6]),
        .I1(S_Shift_Value[2]),
        .I2(\Q_reg[0]_0 [2]),
        .I3(S_Shift_Value[3]),
        .I4(FSM_barrel_shifter_B_S),
        .I5(S_Shift_Value[4]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[5] [18]));
  LUT6 #(
    .INIT(64'hBBB8FFFFBBB80000)) 
    \Q[19]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[4] [22]),
        .I1(S_Shift_Value[4]),
        .I2(\Q_reg[1]_0 ),
        .I3(\Q_reg[1]_1 ),
        .I4(FSM_barrel_shifter_L_R),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[5] [19]),
        .O(\Q_reg[25] [13]));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \Q[19]_i_2 
       (.I0(\Data_array[1]_0 [2]),
        .I1(S_Shift_Value[1]),
        .I2(\Data_array[1]_0 [0]),
        .I3(S_Shift_Value[2]),
        .I4(FSM_barrel_shifter_B_S),
        .I5(S_Shift_Value[3]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[4] [22]));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \Q[19]_i_5 
       (.I0(\Q_reg[0]_0 [7]),
        .I1(S_Shift_Value[2]),
        .I2(\Q_reg[0]_0 [3]),
        .I3(S_Shift_Value[3]),
        .I4(FSM_barrel_shifter_B_S),
        .I5(S_Shift_Value[4]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[5] [19]));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \Q[1]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[5] [24]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[4] [17]),
        .I3(S_Shift_Value[4]),
        .I4(\Q_reg[1]_9 ),
        .I5(\Q_reg[3]_1 ),
        .O(\Q_reg[25] [1]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00302000)) 
    \Q[1]_i_1__0 
       (.I0(add_overflow_flag),
        .I1(out[0]),
        .I2(out[2]),
        .I3(out[3]),
        .I4(out[1]),
        .I5(FSM_selector_B[1]),
        .O(\Q[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8FFFFBBB80000)) 
    \Q[20]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[4] [21]),
        .I1(S_Shift_Value[4]),
        .I2(\Q_reg[1]_5 ),
        .I3(\Q_reg[1]_6 ),
        .I4(FSM_barrel_shifter_L_R),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[5] [20]),
        .O(\Q_reg[25] [14]));
  LUT6 #(
    .INIT(64'hFFFF0000EFE04F40)) 
    \Q[20]_i_2 
       (.I0(S_Shift_Value[1]),
        .I1(\Data_array[1]_0 [3]),
        .I2(S_Shift_Value[2]),
        .I3(\Q_reg[0]_0 [5]),
        .I4(FSM_barrel_shifter_B_S),
        .I5(S_Shift_Value[3]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[4] [21]));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \Q[20]_i_5 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[2] [24]),
        .I1(S_Shift_Value[2]),
        .I2(\Q_reg[0]_0 [4]),
        .I3(S_Shift_Value[3]),
        .I4(FSM_barrel_shifter_B_S),
        .I5(S_Shift_Value[4]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[5] [20]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[20]_i_8 
       (.I0(FSM_barrel_shifter_B_S),
        .I1(S_Shift_Value[1]),
        .I2(\Q_reg[0]_1 [1]),
        .I3(S_Shift_Value[0]),
        .I4(\Q_reg[0]_1 [0]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [24]));
  LUT6 #(
    .INIT(64'hBBB8FFFFBBB80000)) 
    \Q[21]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[4] [20]),
        .I1(S_Shift_Value[4]),
        .I2(\Q_reg[1]_7 ),
        .I3(\Q_reg[1]_8 ),
        .I4(FSM_barrel_shifter_L_R),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[5] [21]),
        .O(\Q_reg[25] [15]));
  LUT6 #(
    .INIT(64'hFFFF0000EFE04F40)) 
    \Q[21]_i_2 
       (.I0(S_Shift_Value[1]),
        .I1(\Data_array[1]_0 [2]),
        .I2(S_Shift_Value[2]),
        .I3(\Q_reg[0]_0 [4]),
        .I4(FSM_barrel_shifter_B_S),
        .I5(S_Shift_Value[3]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[4] [20]));
  LUT6 #(
    .INIT(64'hFFFF0000FFB800B8)) 
    \Q[21]_i_5 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[2] [25]),
        .I1(S_Shift_Value[2]),
        .I2(\Q_reg[0]_0 [5]),
        .I3(S_Shift_Value[3]),
        .I4(FSM_barrel_shifter_B_S),
        .I5(S_Shift_Value[4]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[5] [21]));
  LUT6 #(
    .INIT(64'hCDC8CDCDCDC8C8C8)) 
    \Q[21]_i_9 
       (.I0(S_Shift_Value[1]),
        .I1(FSM_barrel_shifter_B_S),
        .I2(S_Shift_Value[0]),
        .I3(\Q_reg[0]_2 ),
        .I4(FSM_barrel_shifter_L_R),
        .I5(\Q_reg[25]_0 ),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [25]));
  LUT6 #(
    .INIT(64'hAAAAFEAE00000000)) 
    \Q[22]_i_5 
       (.I0(\Q[23]_i_13_n_0 ),
        .I1(\Q_reg[0]_0 [3]),
        .I2(S_Shift_Value[2]),
        .I3(\Q_reg[0]_0 [7]),
        .I4(S_Shift_Value[3]),
        .I5(S_Shift_Value[4]),
        .O(\Q_reg[22] ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \Q[23]_i_13 
       (.I0(Q[3]),
        .I1(FSM_selector_B[0]),
        .I2(FSM_selector_B[1]),
        .I3(FSM_barrel_shifter_B_S),
        .O(\Q[23]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \Q[23]_i_15 
       (.I0(FSM_selector_B[0]),
        .I1(FSM_selector_B[1]),
        .O(\Q_reg[7] ));
  LUT5 #(
    .INIT(32'hFFFF4540)) 
    \Q[23]_i_4 
       (.I0(S_Shift_Value[3]),
        .I1(\Q_reg[0]_0 [6]),
        .I2(S_Shift_Value[2]),
        .I3(\Q_reg[0]_0 [2]),
        .I4(\Q[23]_i_13_n_0 ),
        .O(\Q_reg[23] ));
  LUT6 #(
    .INIT(64'hBBB8FFFFBBB80000)) 
    \Q[24]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[4] [17]),
        .I1(S_Shift_Value[4]),
        .I2(\Q_reg[1]_9 ),
        .I3(\Q_reg[3]_1 ),
        .I4(FSM_barrel_shifter_L_R),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[5] [24]),
        .O(\Q_reg[25] [16]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \Q[24]_i_16 
       (.I0(FSM_selector_B[1]),
        .I1(FSM_selector_B[0]),
        .I2(Q[0]),
        .O(S_Shift_Value[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[24]_i_2 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[3] [25]),
        .I1(S_Shift_Value[3]),
        .I2(\Q_reg[0]_0 [5]),
        .I3(S_Shift_Value[2]),
        .I4(\Q_reg[0]_0 [1]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[4] [17]));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0004)) 
    \Q[24]_i_5 
       (.I0(S_Shift_Value[1]),
        .I1(\Data_array[1]_0 [2]),
        .I2(S_Shift_Value[2]),
        .I3(S_Shift_Value[3]),
        .I4(FSM_barrel_shifter_B_S),
        .I5(S_Shift_Value[4]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[5] [24]));
  LUT5 #(
    .INIT(32'hFF00FE10)) 
    \Q[24]_i_6 
       (.I0(S_Shift_Value[1]),
        .I1(S_Shift_Value[0]),
        .I2(\Q_reg[0]_1 [1]),
        .I3(FSM_barrel_shifter_B_S),
        .I4(S_Shift_Value[2]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [25]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \Q[25]_i_10 
       (.I0(FSM_selector_B[1]),
        .I1(FSM_selector_B[0]),
        .I2(Q[1]),
        .O(S_Shift_Value[1]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \Q[25]_i_12 
       (.I0(FSM_selector_B[1]),
        .I1(FSM_selector_B[0]),
        .I2(Q[2]),
        .O(S_Shift_Value[2]));
  LUT6 #(
    .INIT(64'hFFFF0000EFEA4540)) 
    \Q[25]_i_14 
       (.I0(S_Shift_Value[1]),
        .I1(\Q_reg[0]_1 [1]),
        .I2(S_Shift_Value[0]),
        .I3(\Q_reg[0]_1 [0]),
        .I4(FSM_barrel_shifter_B_S),
        .I5(S_Shift_Value[2]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] [24]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \Q[25]_i_15 
       (.I0(FSM_selector_B[1]),
        .I1(FSM_selector_B[0]),
        .I2(Q[3]),
        .O(S_Shift_Value[3]));
  LUT6 #(
    .INIT(64'hFFEAFFFFFFEA0000)) 
    \Q[25]_i_2 
       (.I0(\Q_reg[3]_3 ),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[4] [16]),
        .I2(S_Shift_Value[4]),
        .I3(\Q_reg[4]_2 ),
        .I4(FSM_barrel_shifter_L_R),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[5] [25]),
        .O(\Q_reg[25] [17]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[25]_i_4 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[3] [24]),
        .I1(S_Shift_Value[3]),
        .I2(\Q_reg[0]_0 [4]),
        .I3(S_Shift_Value[2]),
        .I4(\Q_reg[0]_0 [0]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[4] [16]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \Q[25]_i_5 
       (.I0(FSM_selector_B[1]),
        .I1(FSM_selector_B[0]),
        .I2(Q[4]),
        .O(S_Shift_Value[4]));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0004)) 
    \Q[25]_i_8 
       (.I0(S_Shift_Value[1]),
        .I1(\Data_array[1]_0 [3]),
        .I2(S_Shift_Value[2]),
        .I3(S_Shift_Value[3]),
        .I4(FSM_barrel_shifter_B_S),
        .I5(S_Shift_Value[4]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[5] [25]));
  LUT3 #(
    .INIT(8'h32)) 
    \Q[3]_i_10 
       (.I0(FSM_selector_B[1]),
        .I1(FSM_selector_B[0]),
        .I2(\Q_reg[29] [0]),
        .O(\Q[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFD02)) 
    \Q[3]_i_3 
       (.I0(\Q_reg[29] [3]),
        .I1(FSM_selector_B[0]),
        .I2(FSM_selector_B[1]),
        .I3(FSM_exp_operation_A_S),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'hFD02)) 
    \Q[3]_i_4 
       (.I0(\Q_reg[29] [2]),
        .I1(FSM_selector_B[0]),
        .I2(FSM_selector_B[1]),
        .I3(FSM_exp_operation_A_S),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'hFD02)) 
    \Q[3]_i_5 
       (.I0(\Q_reg[29] [1]),
        .I1(FSM_selector_B[0]),
        .I2(FSM_selector_B[1]),
        .I3(FSM_exp_operation_A_S),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \Q[4]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[5] [21]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[4] [20]),
        .I3(S_Shift_Value[4]),
        .I4(\Q_reg[1]_7 ),
        .I5(\Q_reg[1]_8 ),
        .O(\Q_reg[25] [2]));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \Q[5]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[5] [20]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[4] [21]),
        .I3(S_Shift_Value[4]),
        .I4(\Q_reg[1]_5 ),
        .I5(\Q_reg[1]_6 ),
        .O(\Q_reg[25] [3]));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \Q[6]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[5] [19]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[4] [22]),
        .I3(S_Shift_Value[4]),
        .I4(\Q_reg[1]_0 ),
        .I5(\Q_reg[1]_1 ),
        .O(\Q_reg[25] [4]));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \Q[7]_i_1__0 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[5] [18]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[4] [23]),
        .I3(S_Shift_Value[4]),
        .I4(\Q_reg[1]_2 ),
        .I5(\Q_reg[1]_3 ),
        .O(\Q_reg[25] [5]));
  LUT4 #(
    .INIT(16'hFD02)) 
    \Q[7]_i_3__0 
       (.I0(\Q_reg[29] [6]),
        .I1(FSM_selector_B[0]),
        .I2(FSM_selector_B[1]),
        .I3(FSM_exp_operation_A_S),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'hFD02)) 
    \Q[7]_i_4__0 
       (.I0(\Q_reg[29] [5]),
        .I1(FSM_selector_B[0]),
        .I2(FSM_selector_B[1]),
        .I3(FSM_exp_operation_A_S),
        .O(p_0_in[5]));
  LUT4 #(
    .INIT(16'hFD02)) 
    \Q[7]_i_5__0 
       (.I0(\Q_reg[29] [4]),
        .I1(FSM_selector_B[0]),
        .I2(FSM_selector_B[1]),
        .I3(FSM_exp_operation_A_S),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hEFEFEFEFEFEFEFE0)) 
    \Q[8]_i_1 
       (.I0(\Q[17]_i_5_n_0 ),
        .I1(\Q_reg[8] ),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Q_reg[3]_0 ),
        .I4(\Q_reg[4]_0 ),
        .I5(\Q[17]_i_4_n_0 ),
        .O(\Q_reg[25] [6]));
  LUT6 #(
    .INIT(64'hEFEFEFEFEFEFEFE0)) 
    \Q[9]_i_1 
       (.I0(\Q[16]_i_5_n_0 ),
        .I1(\Q_reg[8] ),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Q_reg[3]_2 ),
        .I4(\Q_reg[4]_1 ),
        .I5(\Q[16]_i_4_n_0 ),
        .O(\Q_reg[25] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q[0]_i_1__0_n_0 ),
        .Q(FSM_selector_B[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q[1]_i_1__0_n_0 ),
        .Q(FSM_selector_B[1]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\Q_reg[3]_i_1_n_0 ,\Q_reg[3]_i_1_n_1 ,\Q_reg[3]_i_1_n_2 ,\Q_reg[3]_i_1_n_3 }),
        .CYINIT(Data_A),
        .DI({p_0_in[3:1],FSM_exp_operation_A_S}),
        .O(D[3:0]),
        .S({\Q_reg[26] ,\Q[3]_i_10_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Q_reg[7]_i_2 
       (.CI(\Q_reg[3]_i_1_n_0 ),
        .CO({\NLW_Q_reg[7]_i_2_CO_UNCONNECTED [3],\Q_reg[7]_i_2_n_1 ,\Q_reg[7]_i_2_n_2 ,\Q_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p_0_in[6:4]}),
        .O(D[7:4]),
        .S(S));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized1
   (D,
    Q,
    state_next1,
    \Q_reg[24]_0 ,
    add_overflow_flag,
    \Q_reg[25]_0 ,
    \Q_reg[30]_0 ,
    \Q_reg[30]_1 ,
    S,
    CO,
    \Q_reg[31]_0 ,
    intAS,
    FSM_selector_C,
    S_A_S_Oper_A,
    \Q_reg[0]_0 ,
    \Q_reg[22]_0 ,
    \Q_reg[0]_1 ,
    \Q_reg[25]_1 ,
    FSM_selector_D,
    \Q_reg[17]_0 ,
    \Q_reg[17]_1 ,
    \Q_reg[12]_0 ,
    \Q_reg[7]_0 ,
    \Q_reg[2]_0 ,
    E,
    \Data_X[31] ,
    clk_IBUF_BUFG,
    AR);
  output [0:0]D;
  output [31:0]Q;
  output state_next1;
  output [11:0]\Q_reg[24]_0 ;
  output add_overflow_flag;
  output [1:0]\Q_reg[25]_0 ;
  output [30:0]\Q_reg[30]_0 ;
  output [30:0]\Q_reg[30]_1 ;
  input [0:0]S;
  input [0:0]CO;
  input [31:0]\Q_reg[31]_0 ;
  input intAS;
  input FSM_selector_C;
  input [23:0]S_A_S_Oper_A;
  input [0:0]\Q_reg[0]_0 ;
  input [5:0]\Q_reg[22]_0 ;
  input \Q_reg[0]_1 ;
  input [25:0]\Q_reg[25]_1 ;
  input FSM_selector_D;
  input \Q_reg[17]_0 ;
  input [3:0]\Q_reg[17]_1 ;
  input \Q_reg[12]_0 ;
  input \Q_reg[7]_0 ;
  input \Q_reg[2]_0 ;
  input [0:0]E;
  input [31:0]\Data_X[31] ;
  input clk_IBUF_BUFG;
  input [1:0]AR;

  wire [1:0]AR;
  wire [25:4]A_S_C;
  wire [25:2]\Add_Subt_Sgf_module/Data_B ;
  wire [0:0]CO;
  wire [0:0]D;
  wire [31:0]\Data_X[31] ;
  wire [0:0]E;
  wire FSM_selector_C;
  wire FSM_selector_D;
  wire \FSM_sequential_state_reg[1]_i_11_n_0 ;
  wire [31:0]Q;
  wire \Q[17]_i_13_n_0 ;
  wire \Q[22]_i_13__0_n_0 ;
  wire \Q[30]_i_11_n_0 ;
  wire \Q[30]_i_12_n_0 ;
  wire \Q[30]_i_13_n_0 ;
  wire \Q[30]_i_15_n_0 ;
  wire \Q[30]_i_16_n_0 ;
  wire \Q[30]_i_17_n_0 ;
  wire \Q[30]_i_18_n_0 ;
  wire \Q[30]_i_19_n_0 ;
  wire \Q[30]_i_20_n_0 ;
  wire \Q[30]_i_21_n_0 ;
  wire \Q[30]_i_22_n_0 ;
  wire \Q[30]_i_24_n_0 ;
  wire \Q[30]_i_25_n_0 ;
  wire \Q[30]_i_26_n_0 ;
  wire \Q[30]_i_27_n_0 ;
  wire \Q[30]_i_28_n_0 ;
  wire \Q[30]_i_29_n_0 ;
  wire \Q[30]_i_30_n_0 ;
  wire \Q[30]_i_31_n_0 ;
  wire \Q[30]_i_32_n_0 ;
  wire \Q[30]_i_33_n_0 ;
  wire \Q[30]_i_34_n_0 ;
  wire \Q[30]_i_35_n_0 ;
  wire \Q[30]_i_36_n_0 ;
  wire \Q[30]_i_37_n_0 ;
  wire \Q[30]_i_38_n_0 ;
  wire \Q[30]_i_39_n_0 ;
  wire \Q[30]_i_6_n_0 ;
  wire \Q[30]_i_7_n_0 ;
  wire \Q[30]_i_8_n_0 ;
  wire \Q[30]_i_9_n_0 ;
  wire \Q[9]_i_6_n_0 ;
  wire [0:0]\Q_reg[0]_0 ;
  wire \Q_reg[0]_1 ;
  wire \Q_reg[12]_0 ;
  wire \Q_reg[17]_0 ;
  wire [3:0]\Q_reg[17]_1 ;
  wire [5:0]\Q_reg[22]_0 ;
  wire [11:0]\Q_reg[24]_0 ;
  wire [1:0]\Q_reg[25]_0 ;
  wire [25:0]\Q_reg[25]_1 ;
  wire \Q_reg[2]_0 ;
  wire [30:0]\Q_reg[30]_0 ;
  wire [30:0]\Q_reg[30]_1 ;
  wire \Q_reg[30]_i_14_n_0 ;
  wire \Q_reg[30]_i_14_n_1 ;
  wire \Q_reg[30]_i_14_n_2 ;
  wire \Q_reg[30]_i_14_n_3 ;
  wire \Q_reg[30]_i_23_n_0 ;
  wire \Q_reg[30]_i_23_n_1 ;
  wire \Q_reg[30]_i_23_n_2 ;
  wire \Q_reg[30]_i_23_n_3 ;
  wire \Q_reg[30]_i_4_n_1 ;
  wire \Q_reg[30]_i_4_n_2 ;
  wire \Q_reg[30]_i_4_n_3 ;
  wire \Q_reg[30]_i_5_n_0 ;
  wire \Q_reg[30]_i_5_n_1 ;
  wire \Q_reg[30]_i_5_n_2 ;
  wire \Q_reg[30]_i_5_n_3 ;
  wire [31:0]\Q_reg[31]_0 ;
  wire \Q_reg[7]_0 ;
  wire [0:0]S;
  wire [23:0]S_A_S_Oper_A;
  wire add_overflow_flag;
  wire clk_IBUF_BUFG;
  wire gtXY;
  wire intAS;
  wire state_next1;
  wire [3:0]\NLW_Q_reg[30]_i_14_O_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[30]_i_23_O_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[30]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[30]_i_5_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \FSM_sequential_state_reg[1]_i_11 
       (.I0(\Q_reg[17]_1 [3]),
        .I1(\Add_Subt_Sgf_module/Data_B [18]),
        .I2(S_A_S_Oper_A[16]),
        .I3(\Add_Subt_Sgf_module/Data_B [17]),
        .I4(S_A_S_Oper_A[15]),
        .I5(A_S_C[17]),
        .O(\FSM_sequential_state_reg[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFAF08FEFF0A0FEF8)) 
    \FSM_sequential_state_reg[1]_i_4 
       (.I0(A_S_C[24]),
        .I1(\Q_reg[22]_0 [5]),
        .I2(\Q_reg[0]_1 ),
        .I3(\Q_reg[25]_1 [24]),
        .I4(FSM_selector_D),
        .I5(\Q_reg[25]_1 [25]),
        .O(add_overflow_flag));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \FSM_sequential_state_reg[1]_i_6 
       (.I0(A_S_C[22]),
        .I1(S_A_S_Oper_A[20]),
        .I2(\Add_Subt_Sgf_module/Data_B [22]),
        .I3(S_A_S_Oper_A[21]),
        .I4(\Add_Subt_Sgf_module/Data_B [23]),
        .O(A_S_C[24]));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \FSM_sequential_state_reg[1]_i_7 
       (.I0(\Q_reg[17]_0 ),
        .I1(\FSM_sequential_state_reg[1]_i_11_n_0 ),
        .I2(S_A_S_Oper_A[18]),
        .I3(\Add_Subt_Sgf_module/Data_B [20]),
        .I4(S_A_S_Oper_A[19]),
        .I5(\Add_Subt_Sgf_module/Data_B [21]),
        .O(A_S_C[22]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \FSM_sequential_state_reg[1]_i_9 
       (.I0(\Q_reg[25]_1 [23]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [23]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[0]_i_1__0 
       (.I0(\Q_reg[31]_0 [0]),
        .I1(gtXY),
        .I2(Q[0]),
        .O(\Q_reg[30]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[0]_i_1__1 
       (.I0(Q[0]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [0]),
        .O(\Q_reg[30]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[10]_i_1__1 
       (.I0(\Q_reg[31]_0 [10]),
        .I1(gtXY),
        .I2(Q[10]),
        .O(\Q_reg[30]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[10]_i_1__2 
       (.I0(Q[10]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [10]),
        .O(\Q_reg[30]_1 [10]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[11]_i_1__1 
       (.I0(\Q_reg[31]_0 [11]),
        .I1(gtXY),
        .I2(Q[11]),
        .O(\Q_reg[30]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[11]_i_1__2 
       (.I0(Q[11]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [11]),
        .O(\Q_reg[30]_1 [11]));
  LUT5 #(
    .INIT(32'hFAA08EE8)) 
    \Q[11]_i_3 
       (.I0(A_S_C[9]),
        .I1(\Q_reg[22]_0 [2]),
        .I2(\Q_reg[0]_1 ),
        .I3(\Q_reg[25]_1 [9]),
        .I4(FSM_selector_D),
        .O(\Q_reg[24]_0 [3]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[12]_i_10 
       (.I0(\Q_reg[25]_1 [7]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [7]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[12]_i_12 
       (.I0(\Q_reg[25]_1 [8]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [8]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[12]_i_1__1 
       (.I0(\Q_reg[31]_0 [12]),
        .I1(gtXY),
        .I2(Q[12]),
        .O(\Q_reg[30]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[12]_i_1__2 
       (.I0(Q[12]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [12]),
        .O(\Q_reg[30]_1 [12]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[12]_i_3 
       (.I0(A_S_C[9]),
        .I1(S_A_S_Oper_A[7]),
        .I2(\Add_Subt_Sgf_module/Data_B [9]),
        .I3(S_A_S_Oper_A[8]),
        .I4(\Add_Subt_Sgf_module/Data_B [10]),
        .O(\Q_reg[24]_0 [4]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[12]_i_4 
       (.I0(A_S_C[7]),
        .I1(S_A_S_Oper_A[5]),
        .I2(\Add_Subt_Sgf_module/Data_B [7]),
        .I3(S_A_S_Oper_A[6]),
        .I4(\Add_Subt_Sgf_module/Data_B [8]),
        .O(A_S_C[9]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[12]_i_6 
       (.I0(\Q_reg[25]_1 [9]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [9]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[12]_i_8 
       (.I0(\Q_reg[25]_1 [10]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [10]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[13]_i_1__1 
       (.I0(\Q_reg[31]_0 [13]),
        .I1(gtXY),
        .I2(Q[13]),
        .O(\Q_reg[30]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[13]_i_1__2 
       (.I0(Q[13]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [13]),
        .O(\Q_reg[30]_1 [13]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[14]_i_1__1 
       (.I0(\Q_reg[31]_0 [14]),
        .I1(gtXY),
        .I2(Q[14]),
        .O(\Q_reg[30]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[14]_i_1__2 
       (.I0(Q[14]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [14]),
        .O(\Q_reg[30]_1 [14]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[14]_i_3__0 
       (.I0(\Q_reg[24]_0 [4]),
        .I1(S_A_S_Oper_A[9]),
        .I2(\Add_Subt_Sgf_module/Data_B [11]),
        .I3(S_A_S_Oper_A[10]),
        .I4(\Add_Subt_Sgf_module/Data_B [12]),
        .O(\Q_reg[24]_0 [5]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[14]_i_5 
       (.I0(\Q_reg[25]_1 [11]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [11]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[14]_i_7 
       (.I0(\Q_reg[25]_1 [12]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [12]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[15]_i_1__1 
       (.I0(\Q_reg[31]_0 [15]),
        .I1(gtXY),
        .I2(Q[15]),
        .O(\Q_reg[30]_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[15]_i_1__2 
       (.I0(Q[15]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [15]),
        .O(\Q_reg[30]_1 [15]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[16]_i_1__1 
       (.I0(\Q_reg[31]_0 [16]),
        .I1(gtXY),
        .I2(Q[16]),
        .O(\Q_reg[30]_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[16]_i_1__2 
       (.I0(Q[16]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [16]),
        .O(\Q_reg[30]_1 [16]));
  LUT5 #(
    .INIT(32'hFAA08EE8)) 
    \Q[16]_i_3__0 
       (.I0(A_S_C[14]),
        .I1(\Q_reg[22]_0 [3]),
        .I2(\Q_reg[0]_1 ),
        .I3(\Q_reg[25]_1 [14]),
        .I4(FSM_selector_D),
        .O(\Q_reg[24]_0 [6]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[17]_i_11 
       (.I0(\Q_reg[25]_1 [13]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [13]));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \Q[17]_i_13 
       (.I0(\Q_reg[17]_1 [1]),
        .I1(\Add_Subt_Sgf_module/Data_B [8]),
        .I2(S_A_S_Oper_A[6]),
        .I3(\Add_Subt_Sgf_module/Data_B [7]),
        .I4(S_A_S_Oper_A[5]),
        .I5(A_S_C[7]),
        .O(\Q[17]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[17]_i_1__1 
       (.I0(\Q_reg[31]_0 [17]),
        .I1(gtXY),
        .I2(Q[17]),
        .O(\Q_reg[30]_0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[17]_i_1__2 
       (.I0(Q[17]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [17]),
        .O(\Q_reg[30]_1 [17]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[17]_i_3__0 
       (.I0(A_S_C[14]),
        .I1(S_A_S_Oper_A[12]),
        .I2(\Add_Subt_Sgf_module/Data_B [14]),
        .I3(S_A_S_Oper_A[13]),
        .I4(\Add_Subt_Sgf_module/Data_B [15]),
        .O(\Q_reg[24]_0 [7]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[17]_i_4__0 
       (.I0(A_S_C[12]),
        .I1(S_A_S_Oper_A[10]),
        .I2(\Add_Subt_Sgf_module/Data_B [12]),
        .I3(S_A_S_Oper_A[11]),
        .I4(\Add_Subt_Sgf_module/Data_B [13]),
        .O(A_S_C[14]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[17]_i_6__0 
       (.I0(\Q_reg[25]_1 [14]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [14]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[17]_i_8 
       (.I0(\Q_reg[25]_1 [15]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [15]));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \Q[17]_i_9 
       (.I0(\Q_reg[7]_0 ),
        .I1(\Q[17]_i_13_n_0 ),
        .I2(S_A_S_Oper_A[8]),
        .I3(\Add_Subt_Sgf_module/Data_B [10]),
        .I4(S_A_S_Oper_A[9]),
        .I5(\Add_Subt_Sgf_module/Data_B [11]),
        .O(A_S_C[12]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[18]_i_1__1 
       (.I0(\Q_reg[31]_0 [18]),
        .I1(gtXY),
        .I2(Q[18]),
        .O(\Q_reg[30]_0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[18]_i_1__2 
       (.I0(Q[18]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [18]),
        .O(\Q_reg[30]_1 [18]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[19]_i_1__1 
       (.I0(\Q_reg[31]_0 [19]),
        .I1(gtXY),
        .I2(Q[19]),
        .O(\Q_reg[30]_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[19]_i_1__2 
       (.I0(Q[19]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [19]),
        .O(\Q_reg[30]_1 [19]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[19]_i_3__0 
       (.I0(\Q_reg[24]_0 [7]),
        .I1(S_A_S_Oper_A[14]),
        .I2(\Add_Subt_Sgf_module/Data_B [16]),
        .I3(S_A_S_Oper_A[15]),
        .I4(\Add_Subt_Sgf_module/Data_B [17]),
        .O(\Q_reg[24]_0 [8]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[19]_i_5__0 
       (.I0(\Q_reg[25]_1 [16]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [16]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[19]_i_7__0 
       (.I0(\Q_reg[25]_1 [17]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [17]));
  LUT6 #(
    .INIT(64'h666A6A666A66666A)) 
    \Q[1]_i_1__0 
       (.I0(\Q_reg[25]_1 [1]),
        .I1(\Q_reg[25]_1 [0]),
        .I2(FSM_selector_D),
        .I3(Q[31]),
        .I4(\Q_reg[31]_0 [31]),
        .I5(intAS),
        .O(\Q_reg[25]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[1]_i_1__1 
       (.I0(\Q_reg[31]_0 [1]),
        .I1(gtXY),
        .I2(Q[1]),
        .O(\Q_reg[30]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[1]_i_1__2 
       (.I0(Q[1]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [1]),
        .O(\Q_reg[30]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[20]_i_1__1 
       (.I0(\Q_reg[31]_0 [20]),
        .I1(gtXY),
        .I2(Q[20]),
        .O(\Q_reg[30]_0 [20]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[20]_i_1__2 
       (.I0(Q[20]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [20]),
        .O(\Q_reg[30]_1 [20]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[21]_i_1__1 
       (.I0(\Q_reg[31]_0 [21]),
        .I1(gtXY),
        .I2(Q[21]),
        .O(\Q_reg[30]_0 [21]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[21]_i_1__2 
       (.I0(Q[21]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [21]),
        .O(\Q_reg[30]_1 [21]));
  LUT5 #(
    .INIT(32'hFAA08EE8)) 
    \Q[21]_i_3__0 
       (.I0(A_S_C[19]),
        .I1(\Q_reg[22]_0 [4]),
        .I2(\Q_reg[0]_1 ),
        .I3(\Q_reg[25]_1 [19]),
        .I4(FSM_selector_D),
        .O(\Q_reg[24]_0 [9]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[22]_i_11__0 
       (.I0(\Q_reg[25]_1 [18]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [18]));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \Q[22]_i_13__0 
       (.I0(\Q_reg[17]_1 [2]),
        .I1(\Add_Subt_Sgf_module/Data_B [13]),
        .I2(S_A_S_Oper_A[11]),
        .I3(\Add_Subt_Sgf_module/Data_B [12]),
        .I4(S_A_S_Oper_A[10]),
        .I5(A_S_C[12]),
        .O(\Q[22]_i_13__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[22]_i_1__1 
       (.I0(\Q_reg[31]_0 [22]),
        .I1(gtXY),
        .I2(Q[22]),
        .O(\Q_reg[30]_0 [22]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[22]_i_1__2 
       (.I0(Q[22]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [22]),
        .O(\Q_reg[30]_1 [22]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[22]_i_3__0 
       (.I0(A_S_C[19]),
        .I1(S_A_S_Oper_A[17]),
        .I2(\Add_Subt_Sgf_module/Data_B [19]),
        .I3(S_A_S_Oper_A[18]),
        .I4(\Add_Subt_Sgf_module/Data_B [20]),
        .O(\Q_reg[24]_0 [10]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[22]_i_4__0 
       (.I0(A_S_C[17]),
        .I1(S_A_S_Oper_A[15]),
        .I2(\Add_Subt_Sgf_module/Data_B [17]),
        .I3(S_A_S_Oper_A[16]),
        .I4(\Add_Subt_Sgf_module/Data_B [18]),
        .O(A_S_C[19]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[22]_i_6__0 
       (.I0(\Q_reg[25]_1 [19]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [19]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[22]_i_8__0 
       (.I0(\Q_reg[25]_1 [20]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [20]));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \Q[22]_i_9__0 
       (.I0(\Q_reg[12]_0 ),
        .I1(\Q[22]_i_13__0_n_0 ),
        .I2(S_A_S_Oper_A[13]),
        .I3(\Add_Subt_Sgf_module/Data_B [15]),
        .I4(S_A_S_Oper_A[14]),
        .I5(\Add_Subt_Sgf_module/Data_B [16]),
        .O(A_S_C[17]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[23]_i_1__1 
       (.I0(\Q_reg[31]_0 [23]),
        .I1(gtXY),
        .I2(Q[23]),
        .O(\Q_reg[30]_0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[23]_i_1__2 
       (.I0(Q[23]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [23]),
        .O(\Q_reg[30]_1 [23]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[24]_i_1__1 
       (.I0(\Q_reg[31]_0 [24]),
        .I1(gtXY),
        .I2(Q[24]),
        .O(\Q_reg[30]_0 [24]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[24]_i_1__2 
       (.I0(Q[24]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [24]),
        .O(\Q_reg[30]_1 [24]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[24]_i_4__0 
       (.I0(\Q_reg[24]_0 [10]),
        .I1(S_A_S_Oper_A[19]),
        .I2(\Add_Subt_Sgf_module/Data_B [21]),
        .I3(S_A_S_Oper_A[20]),
        .I4(\Add_Subt_Sgf_module/Data_B [22]),
        .O(\Q_reg[24]_0 [11]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[24]_i_6__0 
       (.I0(\Q_reg[25]_1 [21]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [21]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[24]_i_8__0 
       (.I0(\Q_reg[25]_1 [22]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [22]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[25]_i_1__1 
       (.I0(\Q_reg[31]_0 [25]),
        .I1(gtXY),
        .I2(Q[25]),
        .O(\Q_reg[30]_0 [25]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[25]_i_1__2 
       (.I0(Q[25]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [25]),
        .O(\Q_reg[30]_1 [25]));
  LUT6 #(
    .INIT(64'h56656556A99A9AA9)) 
    \Q[25]_i_2__0 
       (.I0(\Q_reg[25]_1 [25]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .I5(A_S_C[25]),
        .O(\Q_reg[25]_0 [1]));
  LUT5 #(
    .INIT(32'hFAA08EE8)) 
    \Q[25]_i_3__0 
       (.I0(A_S_C[24]),
        .I1(\Q_reg[22]_0 [5]),
        .I2(\Q_reg[0]_1 ),
        .I3(\Q_reg[25]_1 [24]),
        .I4(FSM_selector_D),
        .O(A_S_C[25]));
  LUT6 #(
    .INIT(64'h0202022A022A2A2A)) 
    \Q[25]_i_52 
       (.I0(FSM_selector_C),
        .I1(\Add_Subt_Sgf_module/Data_B [25]),
        .I2(S_A_S_Oper_A[23]),
        .I3(\Add_Subt_Sgf_module/Data_B [24]),
        .I4(S_A_S_Oper_A[22]),
        .I5(A_S_C[24]),
        .O(state_next1));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[25]_i_53 
       (.I0(\Q_reg[25]_1 [25]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [25]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[25]_i_55 
       (.I0(\Q_reg[25]_1 [24]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [24]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[26]_i_1 
       (.I0(\Q_reg[31]_0 [26]),
        .I1(gtXY),
        .I2(Q[26]),
        .O(\Q_reg[30]_0 [26]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[26]_i_1__0 
       (.I0(Q[26]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [26]),
        .O(\Q_reg[30]_1 [26]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[27]_i_1 
       (.I0(\Q_reg[31]_0 [27]),
        .I1(gtXY),
        .I2(Q[27]),
        .O(\Q_reg[30]_0 [27]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[27]_i_1__0 
       (.I0(Q[27]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [27]),
        .O(\Q_reg[30]_1 [27]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[28]_i_1 
       (.I0(\Q_reg[31]_0 [28]),
        .I1(gtXY),
        .I2(Q[28]),
        .O(\Q_reg[30]_0 [28]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[28]_i_1__0 
       (.I0(Q[28]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [28]),
        .O(\Q_reg[30]_1 [28]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[29]_i_1 
       (.I0(\Q_reg[31]_0 [29]),
        .I1(gtXY),
        .I2(Q[29]),
        .O(\Q_reg[30]_0 [29]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[29]_i_1__0 
       (.I0(Q[29]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [29]),
        .O(\Q_reg[30]_1 [29]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[2]_i_1__1 
       (.I0(\Q_reg[31]_0 [2]),
        .I1(gtXY),
        .I2(Q[2]),
        .O(\Q_reg[30]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[2]_i_1__2 
       (.I0(Q[2]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [2]),
        .O(\Q_reg[30]_1 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[30]_i_11 
       (.I0(Q[28]),
        .I1(\Q_reg[31]_0 [28]),
        .I2(Q[29]),
        .I3(\Q_reg[31]_0 [29]),
        .O(\Q[30]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[30]_i_12 
       (.I0(Q[26]),
        .I1(\Q_reg[31]_0 [26]),
        .I2(Q[27]),
        .I3(\Q_reg[31]_0 [27]),
        .O(\Q[30]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[30]_i_13 
       (.I0(Q[24]),
        .I1(\Q_reg[31]_0 [24]),
        .I2(Q[25]),
        .I3(\Q_reg[31]_0 [25]),
        .O(\Q[30]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[30]_i_15 
       (.I0(Q[22]),
        .I1(\Q_reg[31]_0 [22]),
        .I2(\Q_reg[31]_0 [23]),
        .I3(Q[23]),
        .O(\Q[30]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[30]_i_16 
       (.I0(Q[20]),
        .I1(\Q_reg[31]_0 [20]),
        .I2(\Q_reg[31]_0 [21]),
        .I3(Q[21]),
        .O(\Q[30]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[30]_i_17 
       (.I0(Q[18]),
        .I1(\Q_reg[31]_0 [18]),
        .I2(\Q_reg[31]_0 [19]),
        .I3(Q[19]),
        .O(\Q[30]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[30]_i_18 
       (.I0(Q[16]),
        .I1(\Q_reg[31]_0 [16]),
        .I2(\Q_reg[31]_0 [17]),
        .I3(Q[17]),
        .O(\Q[30]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[30]_i_19 
       (.I0(Q[22]),
        .I1(\Q_reg[31]_0 [22]),
        .I2(Q[23]),
        .I3(\Q_reg[31]_0 [23]),
        .O(\Q[30]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[30]_i_1__1 
       (.I0(Q[30]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [30]),
        .O(\Q_reg[30]_1 [30]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[30]_i_2 
       (.I0(\Q_reg[31]_0 [30]),
        .I1(gtXY),
        .I2(Q[30]),
        .O(\Q_reg[30]_0 [30]));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[30]_i_20 
       (.I0(Q[20]),
        .I1(\Q_reg[31]_0 [20]),
        .I2(Q[21]),
        .I3(\Q_reg[31]_0 [21]),
        .O(\Q[30]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[30]_i_21 
       (.I0(Q[18]),
        .I1(\Q_reg[31]_0 [18]),
        .I2(Q[19]),
        .I3(\Q_reg[31]_0 [19]),
        .O(\Q[30]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[30]_i_22 
       (.I0(Q[16]),
        .I1(\Q_reg[31]_0 [16]),
        .I2(Q[17]),
        .I3(\Q_reg[31]_0 [17]),
        .O(\Q[30]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[30]_i_24 
       (.I0(Q[14]),
        .I1(\Q_reg[31]_0 [14]),
        .I2(\Q_reg[31]_0 [15]),
        .I3(Q[15]),
        .O(\Q[30]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[30]_i_25 
       (.I0(Q[12]),
        .I1(\Q_reg[31]_0 [12]),
        .I2(\Q_reg[31]_0 [13]),
        .I3(Q[13]),
        .O(\Q[30]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[30]_i_26 
       (.I0(Q[10]),
        .I1(\Q_reg[31]_0 [10]),
        .I2(\Q_reg[31]_0 [11]),
        .I3(Q[11]),
        .O(\Q[30]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[30]_i_27 
       (.I0(Q[8]),
        .I1(\Q_reg[31]_0 [8]),
        .I2(\Q_reg[31]_0 [9]),
        .I3(Q[9]),
        .O(\Q[30]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[30]_i_28 
       (.I0(Q[14]),
        .I1(\Q_reg[31]_0 [14]),
        .I2(Q[15]),
        .I3(\Q_reg[31]_0 [15]),
        .O(\Q[30]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[30]_i_29 
       (.I0(Q[12]),
        .I1(\Q_reg[31]_0 [12]),
        .I2(Q[13]),
        .I3(\Q_reg[31]_0 [13]),
        .O(\Q[30]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[30]_i_30 
       (.I0(Q[10]),
        .I1(\Q_reg[31]_0 [10]),
        .I2(Q[11]),
        .I3(\Q_reg[31]_0 [11]),
        .O(\Q[30]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[30]_i_31 
       (.I0(Q[8]),
        .I1(\Q_reg[31]_0 [8]),
        .I2(Q[9]),
        .I3(\Q_reg[31]_0 [9]),
        .O(\Q[30]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[30]_i_32 
       (.I0(Q[6]),
        .I1(\Q_reg[31]_0 [6]),
        .I2(\Q_reg[31]_0 [7]),
        .I3(Q[7]),
        .O(\Q[30]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[30]_i_33 
       (.I0(Q[4]),
        .I1(\Q_reg[31]_0 [4]),
        .I2(\Q_reg[31]_0 [5]),
        .I3(Q[5]),
        .O(\Q[30]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[30]_i_34 
       (.I0(Q[2]),
        .I1(\Q_reg[31]_0 [2]),
        .I2(\Q_reg[31]_0 [3]),
        .I3(Q[3]),
        .O(\Q[30]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[30]_i_35 
       (.I0(Q[0]),
        .I1(\Q_reg[31]_0 [0]),
        .I2(\Q_reg[31]_0 [1]),
        .I3(Q[1]),
        .O(\Q[30]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[30]_i_36 
       (.I0(Q[6]),
        .I1(\Q_reg[31]_0 [6]),
        .I2(Q[7]),
        .I3(\Q_reg[31]_0 [7]),
        .O(\Q[30]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[30]_i_37 
       (.I0(Q[4]),
        .I1(\Q_reg[31]_0 [4]),
        .I2(Q[5]),
        .I3(\Q_reg[31]_0 [5]),
        .O(\Q[30]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[30]_i_38 
       (.I0(Q[2]),
        .I1(\Q_reg[31]_0 [2]),
        .I2(Q[3]),
        .I3(\Q_reg[31]_0 [3]),
        .O(\Q[30]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \Q[30]_i_39 
       (.I0(Q[0]),
        .I1(\Q_reg[31]_0 [0]),
        .I2(Q[1]),
        .I3(\Q_reg[31]_0 [1]),
        .O(\Q[30]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Q[30]_i_6 
       (.I0(Q[30]),
        .I1(\Q_reg[31]_0 [30]),
        .O(\Q[30]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[30]_i_7 
       (.I0(Q[28]),
        .I1(\Q_reg[31]_0 [28]),
        .I2(\Q_reg[31]_0 [29]),
        .I3(Q[29]),
        .O(\Q[30]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[30]_i_8 
       (.I0(Q[26]),
        .I1(\Q_reg[31]_0 [26]),
        .I2(\Q_reg[31]_0 [27]),
        .I3(Q[27]),
        .O(\Q[30]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \Q[30]_i_9 
       (.I0(Q[24]),
        .I1(\Q_reg[31]_0 [24]),
        .I2(\Q_reg[31]_0 [25]),
        .I3(Q[25]),
        .O(\Q[30]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA0BB0)) 
    \Q[31]_i_2 
       (.I0(Q[31]),
        .I1(CO),
        .I2(\Q_reg[31]_0 [31]),
        .I3(intAS),
        .I4(gtXY),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[3]_i_1__1 
       (.I0(\Q_reg[31]_0 [3]),
        .I1(gtXY),
        .I2(Q[3]),
        .O(\Q_reg[30]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[3]_i_1__2 
       (.I0(Q[3]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [3]),
        .O(\Q_reg[30]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[4]_i_1__1 
       (.I0(\Q_reg[31]_0 [4]),
        .I1(gtXY),
        .I2(Q[4]),
        .O(\Q_reg[30]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[4]_i_1__2 
       (.I0(Q[4]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [4]),
        .O(\Q_reg[30]_1 [4]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[5]_i_1__1 
       (.I0(\Q_reg[31]_0 [5]),
        .I1(gtXY),
        .I2(Q[5]),
        .O(\Q_reg[30]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[5]_i_1__2 
       (.I0(Q[5]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [5]),
        .O(\Q_reg[30]_1 [5]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[6]_i_1__1 
       (.I0(\Q_reg[31]_0 [6]),
        .I1(gtXY),
        .I2(Q[6]),
        .O(\Q_reg[30]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[6]_i_1__2 
       (.I0(Q[6]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [6]),
        .O(\Q_reg[30]_1 [6]));
  LUT5 #(
    .INIT(32'hFAA08EE8)) 
    \Q[6]_i_3 
       (.I0(A_S_C[4]),
        .I1(\Q_reg[22]_0 [0]),
        .I2(\Q_reg[0]_1 ),
        .I3(\Q_reg[25]_1 [4]),
        .I4(FSM_selector_D),
        .O(\Q_reg[24]_0 [0]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[7]_i_11 
       (.I0(\Q_reg[25]_1 [2]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [2]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[7]_i_13 
       (.I0(\Q_reg[25]_1 [3]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [3]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[7]_i_1__2 
       (.I0(\Q_reg[31]_0 [7]),
        .I1(gtXY),
        .I2(Q[7]),
        .O(\Q_reg[30]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[7]_i_1__3 
       (.I0(Q[7]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [7]),
        .O(\Q_reg[30]_1 [7]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[7]_i_3 
       (.I0(A_S_C[4]),
        .I1(S_A_S_Oper_A[2]),
        .I2(\Add_Subt_Sgf_module/Data_B [4]),
        .I3(S_A_S_Oper_A[3]),
        .I4(\Add_Subt_Sgf_module/Data_B [5]),
        .O(\Q_reg[24]_0 [1]));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \Q[7]_i_4 
       (.I0(\Q_reg[0]_0 ),
        .I1(S_A_S_Oper_A[0]),
        .I2(\Add_Subt_Sgf_module/Data_B [2]),
        .I3(S_A_S_Oper_A[1]),
        .I4(\Add_Subt_Sgf_module/Data_B [3]),
        .O(A_S_C[4]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[7]_i_6 
       (.I0(\Q_reg[25]_1 [4]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [4]));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[7]_i_8 
       (.I0(\Q_reg[25]_1 [5]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [5]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[8]_i_1__1 
       (.I0(\Q_reg[31]_0 [8]),
        .I1(gtXY),
        .I2(Q[8]),
        .O(\Q_reg[30]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[8]_i_1__2 
       (.I0(Q[8]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [8]),
        .O(\Q_reg[30]_1 [8]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[9]_i_1__1 
       (.I0(\Q_reg[31]_0 [9]),
        .I1(gtXY),
        .I2(Q[9]),
        .O(\Q_reg[30]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[9]_i_1__2 
       (.I0(Q[9]),
        .I1(gtXY),
        .I2(\Q_reg[31]_0 [9]),
        .O(\Q_reg[30]_1 [9]));
  LUT5 #(
    .INIT(32'hFAA08EE8)) 
    \Q[9]_i_3 
       (.I0(A_S_C[7]),
        .I1(\Q_reg[22]_0 [1]),
        .I2(\Q_reg[0]_1 ),
        .I3(\Q_reg[25]_1 [7]),
        .I4(FSM_selector_D),
        .O(\Q_reg[24]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \Q[9]_i_4 
       (.I0(\Q_reg[2]_0 ),
        .I1(\Q[9]_i_6_n_0 ),
        .I2(S_A_S_Oper_A[3]),
        .I3(\Add_Subt_Sgf_module/Data_B [5]),
        .I4(S_A_S_Oper_A[4]),
        .I5(\Add_Subt_Sgf_module/Data_B [6]),
        .O(A_S_C[7]));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \Q[9]_i_6 
       (.I0(\Q_reg[17]_1 [0]),
        .I1(\Add_Subt_Sgf_module/Data_B [3]),
        .I2(S_A_S_Oper_A[1]),
        .I3(\Add_Subt_Sgf_module/Data_B [2]),
        .I4(S_A_S_Oper_A[0]),
        .I5(\Q_reg[0]_0 ),
        .O(\Q[9]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h12212112)) 
    \Q[9]_i_8 
       (.I0(\Q_reg[25]_1 [6]),
        .I1(FSM_selector_D),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(intAS),
        .O(\Add_Subt_Sgf_module/Data_B [6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [27]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [28]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [29]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [30]),
        .Q(Q[30]));
  CARRY4 \Q_reg[30]_i_14 
       (.CI(\Q_reg[30]_i_23_n_0 ),
        .CO({\Q_reg[30]_i_14_n_0 ,\Q_reg[30]_i_14_n_1 ,\Q_reg[30]_i_14_n_2 ,\Q_reg[30]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q[30]_i_24_n_0 ,\Q[30]_i_25_n_0 ,\Q[30]_i_26_n_0 ,\Q[30]_i_27_n_0 }),
        .O(\NLW_Q_reg[30]_i_14_O_UNCONNECTED [3:0]),
        .S({\Q[30]_i_28_n_0 ,\Q[30]_i_29_n_0 ,\Q[30]_i_30_n_0 ,\Q[30]_i_31_n_0 }));
  CARRY4 \Q_reg[30]_i_23 
       (.CI(1'b0),
        .CO({\Q_reg[30]_i_23_n_0 ,\Q_reg[30]_i_23_n_1 ,\Q_reg[30]_i_23_n_2 ,\Q_reg[30]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q[30]_i_32_n_0 ,\Q[30]_i_33_n_0 ,\Q[30]_i_34_n_0 ,\Q[30]_i_35_n_0 }),
        .O(\NLW_Q_reg[30]_i_23_O_UNCONNECTED [3:0]),
        .S({\Q[30]_i_36_n_0 ,\Q[30]_i_37_n_0 ,\Q[30]_i_38_n_0 ,\Q[30]_i_39_n_0 }));
  CARRY4 \Q_reg[30]_i_4 
       (.CI(\Q_reg[30]_i_5_n_0 ),
        .CO({gtXY,\Q_reg[30]_i_4_n_1 ,\Q_reg[30]_i_4_n_2 ,\Q_reg[30]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q[30]_i_6_n_0 ,\Q[30]_i_7_n_0 ,\Q[30]_i_8_n_0 ,\Q[30]_i_9_n_0 }),
        .O(\NLW_Q_reg[30]_i_4_O_UNCONNECTED [3:0]),
        .S({S,\Q[30]_i_11_n_0 ,\Q[30]_i_12_n_0 ,\Q[30]_i_13_n_0 }));
  CARRY4 \Q_reg[30]_i_5 
       (.CI(\Q_reg[30]_i_14_n_0 ),
        .CO({\Q_reg[30]_i_5_n_0 ,\Q_reg[30]_i_5_n_1 ,\Q_reg[30]_i_5_n_2 ,\Q_reg[30]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q[30]_i_15_n_0 ,\Q[30]_i_16_n_0 ,\Q[30]_i_17_n_0 ,\Q[30]_i_18_n_0 }),
        .O(\NLW_Q_reg[30]_i_5_O_UNCONNECTED [3:0]),
        .S({\Q[30]_i_19_n_0 ,\Q[30]_i_20_n_0 ,\Q[30]_i_21_n_0 ,\Q[30]_i_22_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Data_X[31] [31]),
        .Q(Q[31]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_X[31] [9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized2
   (\FSM_sequential_state_reg_reg[0] ,
    Q,
    CO,
    \FSM_sequential_state_reg_reg[3] ,
    S,
    out,
    intAS,
    \Q_reg[31]_0 ,
    E,
    \Data_Y[31] ,
    clk_IBUF_BUFG,
    AR);
  output \FSM_sequential_state_reg_reg[0] ;
  output [31:0]Q;
  output [0:0]CO;
  output \FSM_sequential_state_reg_reg[3] ;
  output [0:0]S;
  input [1:0]out;
  input intAS;
  input [31:0]\Q_reg[31]_0 ;
  input [0:0]E;
  input [31:0]\Data_Y[31] ;
  input clk_IBUF_BUFG;
  input [1:0]AR;

  wire [1:0]AR;
  wire [0:0]CO;
  wire [31:0]\Data_Y[31] ;
  wire [0:0]E;
  wire \FSM_sequential_state_reg_reg[0] ;
  wire \FSM_sequential_state_reg_reg[3] ;
  wire [31:0]Q;
  wire \Q[31]_i_10_n_0 ;
  wire \Q[31]_i_11_n_0 ;
  wire \Q[31]_i_12_n_0 ;
  wire \Q[31]_i_13_n_0 ;
  wire \Q[31]_i_14_n_0 ;
  wire \Q[31]_i_15_n_0 ;
  wire \Q[31]_i_16_n_0 ;
  wire \Q[31]_i_5_n_0 ;
  wire \Q[31]_i_6_n_0 ;
  wire \Q[31]_i_7_n_0 ;
  wire \Q[31]_i_9_n_0 ;
  wire [31:0]\Q_reg[31]_0 ;
  wire \Q_reg[31]_i_3_n_2 ;
  wire \Q_reg[31]_i_3_n_3 ;
  wire \Q_reg[31]_i_4_n_0 ;
  wire \Q_reg[31]_i_4_n_1 ;
  wire \Q_reg[31]_i_4_n_2 ;
  wire \Q_reg[31]_i_4_n_3 ;
  wire \Q_reg[31]_i_8_n_0 ;
  wire \Q_reg[31]_i_8_n_1 ;
  wire \Q_reg[31]_i_8_n_2 ;
  wire \Q_reg[31]_i_8_n_3 ;
  wire [0:0]S;
  wire clk_IBUF_BUFG;
  wire intAS;
  wire [1:0]out;
  wire [3:3]\NLW_Q_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[31]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_Q_reg[31]_i_8_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h4114000000000000)) 
    \FSM_sequential_state_reg[0]_i_3 
       (.I0(out[1]),
        .I1(intAS),
        .I2(Q[31]),
        .I3(\Q_reg[31]_0 [31]),
        .I4(CO),
        .I5(out[0]),
        .O(\FSM_sequential_state_reg_reg[0] ));
  LUT5 #(
    .INIT(32'h7FF7F77F)) 
    \FSM_sequential_state_reg[3]_i_5 
       (.I0(out[0]),
        .I1(CO),
        .I2(\Q_reg[31]_0 [31]),
        .I3(Q[31]),
        .I4(intAS),
        .O(\FSM_sequential_state_reg_reg[3] ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q[30]_i_10 
       (.I0(Q[30]),
        .I1(\Q_reg[31]_0 [30]),
        .O(S));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[31]_i_10 
       (.I0(Q[20]),
        .I1(\Q_reg[31]_0 [20]),
        .I2(Q[19]),
        .I3(\Q_reg[31]_0 [19]),
        .I4(\Q_reg[31]_0 [18]),
        .I5(Q[18]),
        .O(\Q[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[31]_i_11 
       (.I0(Q[17]),
        .I1(\Q_reg[31]_0 [17]),
        .I2(Q[16]),
        .I3(\Q_reg[31]_0 [16]),
        .I4(\Q_reg[31]_0 [15]),
        .I5(Q[15]),
        .O(\Q[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[31]_i_12 
       (.I0(Q[14]),
        .I1(\Q_reg[31]_0 [14]),
        .I2(Q[13]),
        .I3(\Q_reg[31]_0 [13]),
        .I4(\Q_reg[31]_0 [12]),
        .I5(Q[12]),
        .O(\Q[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[31]_i_13 
       (.I0(Q[11]),
        .I1(\Q_reg[31]_0 [11]),
        .I2(Q[10]),
        .I3(\Q_reg[31]_0 [10]),
        .I4(\Q_reg[31]_0 [9]),
        .I5(Q[9]),
        .O(\Q[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[31]_i_14 
       (.I0(Q[8]),
        .I1(\Q_reg[31]_0 [8]),
        .I2(Q[7]),
        .I3(\Q_reg[31]_0 [7]),
        .I4(\Q_reg[31]_0 [6]),
        .I5(Q[6]),
        .O(\Q[31]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[31]_i_15 
       (.I0(Q[5]),
        .I1(\Q_reg[31]_0 [5]),
        .I2(Q[4]),
        .I3(\Q_reg[31]_0 [4]),
        .I4(\Q_reg[31]_0 [3]),
        .I5(Q[3]),
        .O(\Q[31]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[31]_i_16 
       (.I0(Q[2]),
        .I1(\Q_reg[31]_0 [2]),
        .I2(Q[1]),
        .I3(\Q_reg[31]_0 [1]),
        .I4(\Q_reg[31]_0 [0]),
        .I5(Q[0]),
        .O(\Q[31]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \Q[31]_i_5 
       (.I0(Q[30]),
        .I1(\Q_reg[31]_0 [30]),
        .O(\Q[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[31]_i_6 
       (.I0(Q[29]),
        .I1(\Q_reg[31]_0 [29]),
        .I2(Q[28]),
        .I3(\Q_reg[31]_0 [28]),
        .I4(\Q_reg[31]_0 [27]),
        .I5(Q[27]),
        .O(\Q[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[31]_i_7 
       (.I0(Q[26]),
        .I1(\Q_reg[31]_0 [26]),
        .I2(Q[25]),
        .I3(\Q_reg[31]_0 [25]),
        .I4(\Q_reg[31]_0 [24]),
        .I5(Q[24]),
        .O(\Q[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \Q[31]_i_9 
       (.I0(Q[23]),
        .I1(\Q_reg[31]_0 [23]),
        .I2(Q[22]),
        .I3(\Q_reg[31]_0 [22]),
        .I4(\Q_reg[31]_0 [21]),
        .I5(Q[21]),
        .O(\Q[31]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [27]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [28]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [29]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [30]),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[0]),
        .D(\Data_Y[31] [31]),
        .Q(Q[31]));
  CARRY4 \Q_reg[31]_i_3 
       (.CI(\Q_reg[31]_i_4_n_0 ),
        .CO({\NLW_Q_reg[31]_i_3_CO_UNCONNECTED [3],CO,\Q_reg[31]_i_3_n_2 ,\Q_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Q_reg[31]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,\Q[31]_i_5_n_0 ,\Q[31]_i_6_n_0 ,\Q[31]_i_7_n_0 }));
  CARRY4 \Q_reg[31]_i_4 
       (.CI(\Q_reg[31]_i_8_n_0 ),
        .CO({\Q_reg[31]_i_4_n_0 ,\Q_reg[31]_i_4_n_1 ,\Q_reg[31]_i_4_n_2 ,\Q_reg[31]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Q_reg[31]_i_4_O_UNCONNECTED [3:0]),
        .S({\Q[31]_i_9_n_0 ,\Q[31]_i_10_n_0 ,\Q[31]_i_11_n_0 ,\Q[31]_i_12_n_0 }));
  CARRY4 \Q_reg[31]_i_8 
       (.CI(1'b0),
        .CO({\Q_reg[31]_i_8_n_0 ,\Q_reg[31]_i_8_n_1 ,\Q_reg[31]_i_8_n_2 ,\Q_reg[31]_i_8_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Q_reg[31]_i_8_O_UNCONNECTED [3:0]),
        .S({\Q[31]_i_13_n_0 ,\Q[31]_i_14_n_0 ,\Q[31]_i_15_n_0 ,\Q[31]_i_16_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR[1]),
        .D(\Data_Y[31] [9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized3
   (\Q_reg[24]_0 ,
    \Q_reg[19]_0 ,
    Q,
    \Q_reg[25]_0 ,
    \Q_reg[21]_0 ,
    \Q_reg[16]_0 ,
    \Q_reg[9]_0 ,
    FSM_selector_D,
    \Q_reg[24]_1 ,
    \Q_reg[0]_0 ,
    A_S_C,
    intAS,
    \Q_reg[31] ,
    \Q_reg[31]_0 ,
    \Q_reg[0]_1 ,
    \FSM_sequential_state_reg_reg[3] ,
    D,
    clk_IBUF_BUFG,
    AR);
  output [12:0]\Q_reg[24]_0 ;
  output [3:0]\Q_reg[19]_0 ;
  output [30:0]Q;
  output \Q_reg[25]_0 ;
  output \Q_reg[21]_0 ;
  output \Q_reg[16]_0 ;
  output \Q_reg[9]_0 ;
  input FSM_selector_D;
  input [21:0]\Q_reg[24]_1 ;
  input \Q_reg[0]_0 ;
  input [11:0]A_S_C;
  input intAS;
  input [0:0]\Q_reg[31] ;
  input [0:0]\Q_reg[31]_0 ;
  input [0:0]\Q_reg[0]_1 ;
  input [0:0]\FSM_sequential_state_reg_reg[3] ;
  input [30:0]D;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [11:0]A_S_C;
  wire [24:6]A_S_P;
  wire [30:0]D;
  wire FSM_selector_D;
  wire [0:0]\FSM_sequential_state_reg_reg[3] ;
  wire [30:0]Q;
  wire \Q_reg[0]_0 ;
  wire [0:0]\Q_reg[0]_1 ;
  wire \Q_reg[16]_0 ;
  wire [3:0]\Q_reg[19]_0 ;
  wire \Q_reg[21]_0 ;
  wire [12:0]\Q_reg[24]_0 ;
  wire [21:0]\Q_reg[24]_1 ;
  wire \Q_reg[25]_0 ;
  wire [0:0]\Q_reg[31] ;
  wire [0:0]\Q_reg[31]_0 ;
  wire \Q_reg[9]_0 ;
  wire clk_IBUF_BUFG;
  wire intAS;

  LUT6 #(
    .INIT(64'h0000288200008228)) 
    \FSM_sequential_state_reg[1]_i_10 
       (.I0(Q[17]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[24]_1 [16]),
        .O(\Q_reg[25]_0 ));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[11]_i_1__0 
       (.I0(A_S_P[11]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[24]_1 [7]),
        .I3(\Q_reg[0]_0 ),
        .I4(Q[8]),
        .I5(A_S_C[3]),
        .O(\Q_reg[24]_0 [4]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[11]_i_2 
       (.I0(Q[9]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[24]_1 [8]),
        .O(A_S_P[11]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[12]_i_1__0 
       (.I0(A_S_P[12]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[24]_1 [8]),
        .I3(\Q_reg[0]_0 ),
        .I4(Q[9]),
        .I5(A_S_C[4]),
        .O(\Q_reg[24]_0 [5]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[12]_i_2 
       (.I0(Q[10]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[24]_1 [9]),
        .O(A_S_P[12]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[14]_i_1__0 
       (.I0(\Q_reg[19]_0 [2]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[24]_1 [10]),
        .I3(\Q_reg[0]_0 ),
        .I4(Q[11]),
        .I5(A_S_C[5]),
        .O(\Q_reg[24]_0 [6]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[14]_i_2__0 
       (.I0(Q[12]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[24]_1 [11]),
        .O(\Q_reg[19]_0 [2]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[16]_i_1__0 
       (.I0(A_S_P[16]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[24]_1 [12]),
        .I3(\Q_reg[0]_0 ),
        .I4(Q[13]),
        .I5(A_S_C[6]),
        .O(\Q_reg[24]_0 [7]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[16]_i_2__0 
       (.I0(Q[14]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[24]_1 [13]),
        .O(A_S_P[16]));
  LUT6 #(
    .INIT(64'h0000288200008228)) 
    \Q[17]_i_12 
       (.I0(Q[7]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[24]_1 [6]),
        .O(\Q_reg[16]_0 ));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[17]_i_1__0 
       (.I0(A_S_P[17]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[24]_1 [13]),
        .I3(\Q_reg[0]_0 ),
        .I4(Q[14]),
        .I5(A_S_C[7]),
        .O(\Q_reg[24]_0 [8]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[17]_i_2__0 
       (.I0(Q[15]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[24]_1 [14]),
        .O(A_S_P[17]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[19]_i_1__0 
       (.I0(\Q_reg[19]_0 [3]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[24]_1 [15]),
        .I3(\Q_reg[0]_0 ),
        .I4(Q[16]),
        .I5(A_S_C[8]),
        .O(\Q_reg[24]_0 [9]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[19]_i_2__0 
       (.I0(Q[17]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[24]_1 [16]),
        .O(\Q_reg[19]_0 [3]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[21]_i_1__0 
       (.I0(A_S_P[21]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[24]_1 [17]),
        .I3(\Q_reg[0]_0 ),
        .I4(Q[18]),
        .I5(A_S_C[9]),
        .O(\Q_reg[24]_0 [10]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[21]_i_2__0 
       (.I0(Q[19]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[24]_1 [18]),
        .O(A_S_P[21]));
  LUT6 #(
    .INIT(64'h0000288200008228)) 
    \Q[22]_i_12__0 
       (.I0(Q[12]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[24]_1 [11]),
        .O(\Q_reg[21]_0 ));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[22]_i_1__0 
       (.I0(A_S_P[22]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[24]_1 [18]),
        .I3(\Q_reg[0]_0 ),
        .I4(Q[19]),
        .I5(A_S_C[10]),
        .O(\Q_reg[24]_0 [11]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[22]_i_2 
       (.I0(Q[20]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[24]_1 [19]),
        .O(A_S_P[22]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[24]_i_1__0 
       (.I0(A_S_P[24]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[24]_1 [20]),
        .I3(\Q_reg[0]_0 ),
        .I4(Q[21]),
        .I5(A_S_C[11]),
        .O(\Q_reg[24]_0 [12]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[24]_i_2__0 
       (.I0(Q[22]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[24]_1 [21]),
        .O(A_S_P[24]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[4]_i_1__0 
       (.I0(\Q_reg[19]_0 [0]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[24]_1 [0]),
        .I3(\Q_reg[0]_0 ),
        .I4(Q[1]),
        .I5(\Q_reg[0]_1 ),
        .O(\Q_reg[24]_0 [0]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[4]_i_2 
       (.I0(Q[2]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[24]_1 [1]),
        .O(\Q_reg[19]_0 [0]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[6]_i_1__0 
       (.I0(A_S_P[6]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[24]_1 [2]),
        .I3(\Q_reg[0]_0 ),
        .I4(Q[3]),
        .I5(A_S_C[0]),
        .O(\Q_reg[24]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[6]_i_2 
       (.I0(Q[4]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[24]_1 [3]),
        .O(A_S_P[6]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[7]_i_1__1 
       (.I0(A_S_P[7]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[24]_1 [3]),
        .I3(\Q_reg[0]_0 ),
        .I4(Q[4]),
        .I5(A_S_C[1]),
        .O(\Q_reg[24]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[7]_i_2 
       (.I0(Q[5]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[24]_1 [4]),
        .O(A_S_P[7]));
  LUT6 #(
    .INIT(64'h5559655A699A6AAA)) 
    \Q[9]_i_1__0 
       (.I0(\Q_reg[19]_0 [1]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[24]_1 [5]),
        .I3(\Q_reg[0]_0 ),
        .I4(Q[6]),
        .I5(A_S_C[2]),
        .O(\Q_reg[24]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFF966900006996)) 
    \Q[9]_i_2 
       (.I0(Q[7]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[24]_1 [6]),
        .O(\Q_reg[19]_0 [1]));
  LUT6 #(
    .INIT(64'h0000288200008228)) 
    \Q[9]_i_5 
       (.I0(Q[2]),
        .I1(intAS),
        .I2(\Q_reg[31] ),
        .I3(\Q_reg[31]_0 ),
        .I4(FSM_selector_D),
        .I5(\Q_reg[24]_1 [1]),
        .O(\Q_reg[9]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[27]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[28]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[29]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[30]),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR),
        .D(D[9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized4
   (S,
    \Q_reg[3]_0 ,
    \Q_reg[7]_0 ,
    FSM_exp_operation_A_S,
    \Q_reg[0]_0 ,
    Q,
    FSM_selector_D,
    \Q_reg[7]_1 ,
    \FSM_sequential_state_reg_reg[3] ,
    D,
    clk_IBUF_BUFG,
    AR);
  output [3:0]S;
  output [2:0]\Q_reg[3]_0 ;
  output [29:0]\Q_reg[7]_0 ;
  input FSM_exp_operation_A_S;
  input \Q_reg[0]_0 ;
  input [6:0]Q;
  input FSM_selector_D;
  input [6:0]\Q_reg[7]_1 ;
  input [0:0]\FSM_sequential_state_reg_reg[3] ;
  input [30:0]D;
  input clk_IBUF_BUFG;
  input [1:0]AR;

  wire [1:0]AR;
  wire [30:0]D;
  wire FSM_exp_operation_A_S;
  wire FSM_selector_D;
  wire [0:0]\FSM_sequential_state_reg_reg[3] ;
  wire [6:0]Q;
  wire \Q_reg[0]_0 ;
  wire [2:0]\Q_reg[3]_0 ;
  wire [29:0]\Q_reg[7]_0 ;
  wire [6:0]\Q_reg[7]_1 ;
  wire \Q_reg_n_0_[30] ;
  wire [3:0]S;
  wire clk_IBUF_BUFG;

  LUT6 #(
    .INIT(64'h9595956A6A6A956A)) 
    \Q[3]_i_7 
       (.I0(FSM_exp_operation_A_S),
        .I1(\Q_reg[0]_0 ),
        .I2(\Q_reg[7]_0 [26]),
        .I3(Q[2]),
        .I4(FSM_selector_D),
        .I5(\Q_reg[7]_1 [2]),
        .O(\Q_reg[3]_0 [2]));
  LUT6 #(
    .INIT(64'h9595956A6A6A956A)) 
    \Q[3]_i_8 
       (.I0(FSM_exp_operation_A_S),
        .I1(\Q_reg[0]_0 ),
        .I2(\Q_reg[7]_0 [25]),
        .I3(Q[1]),
        .I4(FSM_selector_D),
        .I5(\Q_reg[7]_1 [1]),
        .O(\Q_reg[3]_0 [1]));
  LUT6 #(
    .INIT(64'h9595956A6A6A956A)) 
    \Q[3]_i_9 
       (.I0(FSM_exp_operation_A_S),
        .I1(\Q_reg[0]_0 ),
        .I2(\Q_reg[7]_0 [24]),
        .I3(Q[0]),
        .I4(FSM_selector_D),
        .I5(\Q_reg[7]_1 [0]),
        .O(\Q_reg[3]_0 [0]));
  LUT6 #(
    .INIT(64'h9595956A6A6A956A)) 
    \Q[7]_i_6__0 
       (.I0(FSM_exp_operation_A_S),
        .I1(\Q_reg[0]_0 ),
        .I2(\Q_reg_n_0_[30] ),
        .I3(Q[6]),
        .I4(FSM_selector_D),
        .I5(\Q_reg[7]_1 [6]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h9595956A6A6A956A)) 
    \Q[7]_i_7__0 
       (.I0(FSM_exp_operation_A_S),
        .I1(\Q_reg[0]_0 ),
        .I2(\Q_reg[7]_0 [29]),
        .I3(Q[5]),
        .I4(FSM_selector_D),
        .I5(\Q_reg[7]_1 [5]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h9595956A6A6A956A)) 
    \Q[7]_i_8__0 
       (.I0(FSM_exp_operation_A_S),
        .I1(\Q_reg[0]_0 ),
        .I2(\Q_reg[7]_0 [28]),
        .I3(Q[4]),
        .I4(FSM_selector_D),
        .I5(\Q_reg[7]_1 [4]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9595956A6A6A956A)) 
    \Q[7]_i_9__0 
       (.I0(FSM_exp_operation_A_S),
        .I1(\Q_reg[0]_0 ),
        .I2(\Q_reg[7]_0 [27]),
        .I3(Q[3]),
        .I4(FSM_selector_D),
        .I5(\Q_reg[7]_1 [3]),
        .O(S[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(D[0]),
        .Q(\Q_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(D[10]),
        .Q(\Q_reg[7]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(D[11]),
        .Q(\Q_reg[7]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(D[12]),
        .Q(\Q_reg[7]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(D[13]),
        .Q(\Q_reg[7]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(D[14]),
        .Q(\Q_reg[7]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(D[15]),
        .Q(\Q_reg[7]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(D[16]),
        .Q(\Q_reg[7]_0 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(D[17]),
        .Q(\Q_reg[7]_0 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(D[18]),
        .Q(\Q_reg[7]_0 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(D[19]),
        .Q(\Q_reg[7]_0 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(D[1]),
        .Q(\Q_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(D[20]),
        .Q(\Q_reg[7]_0 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(D[21]),
        .Q(\Q_reg[7]_0 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(D[22]),
        .Q(\Q_reg[7]_0 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(D[23]),
        .Q(\Q_reg[7]_0 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(D[24]),
        .Q(\Q_reg[7]_0 [24]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(D[25]),
        .Q(\Q_reg[7]_0 [25]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(D[26]),
        .Q(\Q_reg[7]_0 [26]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(D[27]),
        .Q(\Q_reg[7]_0 [27]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(D[28]),
        .Q(\Q_reg[7]_0 [28]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(D[29]),
        .Q(\Q_reg[7]_0 [29]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(D[2]),
        .Q(\Q_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[0]),
        .D(D[30]),
        .Q(\Q_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(D[3]),
        .Q(\Q_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(D[4]),
        .Q(\Q_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(D[5]),
        .Q(\Q_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(D[6]),
        .Q(\Q_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(D[7]),
        .Q(\Q_reg[7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(D[8]),
        .Q(\Q_reg[7]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[3] ),
        .CLR(AR[1]),
        .D(D[9]),
        .Q(\Q_reg[7]_0 [9]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized5
   (\Q_reg[22] ,
    \Q_reg[22]_0 ,
    Q,
    \Q_reg[23] ,
    Data_A,
    \Q_reg[12] ,
    \Q_reg[1]_0 ,
    FSM_barrel_shifter_L_R,
    \Q_reg[1]_1 ,
    \Q_reg[4]_0 ,
    \Q_reg[3]_0 ,
    \Q_reg[0]_0 ,
    FSM_barrel_shifter_B_S,
    \Q_reg[0]_1 ,
    FSM_selector_D,
    \Q_reg[23]_0 ,
    FSM_selector_B,
    E,
    D,
    CLK,
    AR);
  output [1:0]\Q_reg[22] ;
  output \Q_reg[22]_0 ;
  output [7:0]Q;
  output [0:0]\Q_reg[23] ;
  output [0:0]Data_A;
  output \Q_reg[12] ;
  output \Q_reg[1]_0 ;
  input FSM_barrel_shifter_L_R;
  input [0:0]\Q_reg[1]_1 ;
  input \Q_reg[4]_0 ;
  input \Q_reg[3]_0 ;
  input [1:0]\Q_reg[0]_0 ;
  input FSM_barrel_shifter_B_S;
  input \Q_reg[0]_1 ;
  input FSM_selector_D;
  input [0:0]\Q_reg[23]_0 ;
  input [1:0]FSM_selector_B;
  input [0:0]E;
  input [7:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire [22:22]\Barrel_Shifter_module/Mux_Array/Data_array[5] ;
  wire CLK;
  wire [7:0]D;
  wire [0:0]Data_A;
  wire [0:0]E;
  wire FSM_barrel_shifter_B_S;
  wire FSM_barrel_shifter_L_R;
  wire [1:0]FSM_selector_B;
  wire FSM_selector_D;
  wire [7:0]Q;
  wire [1:0]\Q_reg[0]_0 ;
  wire \Q_reg[0]_1 ;
  wire \Q_reg[12] ;
  wire \Q_reg[1]_0 ;
  wire [0:0]\Q_reg[1]_1 ;
  wire [1:0]\Q_reg[22] ;
  wire \Q_reg[22]_0 ;
  wire [0:0]\Q_reg[23] ;
  wire [0:0]\Q_reg[23]_0 ;
  wire \Q_reg[3]_0 ;
  wire \Q_reg[4]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFFF1)) 
    \Q[15]_i_4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(FSM_selector_B[0]),
        .I3(FSM_selector_B[1]),
        .O(\Q_reg[12] ));
  LUT6 #(
    .INIT(64'hFFF8FFFFFFF80000)) 
    \Q[22]_i_1 
       (.I0(\Q_reg[22]_0 ),
        .I1(\Q_reg[1]_1 ),
        .I2(\Q_reg[4]_0 ),
        .I3(\Q_reg[3]_0 ),
        .I4(FSM_barrel_shifter_L_R),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[5] ),
        .O(\Q_reg[22] [1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \Q[22]_i_2__0 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(FSM_selector_B[0]),
        .I3(FSM_selector_B[1]),
        .O(\Q_reg[22]_0 ));
  LUT6 #(
    .INIT(64'hFF00AAAAFE02AAAA)) 
    \Q[22]_i_6 
       (.I0(\Q_reg[0]_0 [0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(FSM_barrel_shifter_B_S),
        .I4(\Q_reg[0]_1 ),
        .I5(Q[4]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[5] ));
  LUT6 #(
    .INIT(64'hFF00AAAAFE02AAAA)) 
    \Q[23]_i_5 
       (.I0(\Q_reg[0]_0 [1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(FSM_barrel_shifter_B_S),
        .I4(\Q_reg[0]_1 ),
        .I5(Q[4]),
        .O(\Q_reg[23] ));
  LUT4 #(
    .INIT(16'hFFF1)) 
    \Q[24]_i_12 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(FSM_selector_B[0]),
        .I3(FSM_selector_B[1]),
        .O(\Q_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBB888)) 
    \Q[3]_i_1 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[5] ),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Q_reg[22]_0 ),
        .I3(\Q_reg[1]_1 ),
        .I4(\Q_reg[4]_0 ),
        .I5(\Q_reg[3]_0 ),
        .O(\Q_reg[22] [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[3]_i_2 
       (.I0(Q[0]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[23]_0 ),
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
   (\FSM_sequential_state_reg_reg[0] ,
    Q,
    round_flag,
    \Q_reg[3]_0 ,
    A_S_C,
    S_A_S_Oper_A,
    r_mode_IBUF,
    D,
    out,
    FSM_selector_D,
    S_A_S_op,
    \Q_reg[22]_0 ,
    E,
    \Q_reg[1]_0 ,
    CLK,
    AR);
  output \FSM_sequential_state_reg_reg[0] ;
  output [25:0]Q;
  output round_flag;
  output [2:0]\Q_reg[3]_0 ;
  output [0:0]A_S_C;
  output [23:0]S_A_S_Oper_A;
  input [1:0]r_mode_IBUF;
  input [0:0]D;
  input [0:0]out;
  input FSM_selector_D;
  input S_A_S_op;
  input [22:0]\Q_reg[22]_0 ;
  input [0:0]E;
  input [25:0]\Q_reg[1]_0 ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]A_S_C;
  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire FSM_selector_D;
  wire \FSM_sequential_state_reg_reg[0] ;
  wire [25:0]Q;
  wire [25:0]\Q_reg[1]_0 ;
  wire [22:0]\Q_reg[22]_0 ;
  wire [2:0]\Q_reg[3]_0 ;
  wire [23:0]S_A_S_Oper_A;
  wire S_A_S_op;
  wire [0:0]out;
  wire [1:0]r_mode_IBUF;
  wire round_flag;

  LUT6 #(
    .INIT(64'h00E00E00FFFFFFFF)) 
    \FSM_sequential_state_reg[0]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(r_mode_IBUF[0]),
        .I3(r_mode_IBUF[1]),
        .I4(D),
        .I5(out),
        .O(\FSM_sequential_state_reg_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_state_reg[1]_i_8 
       (.I0(Q[23]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[22]_0 [21]),
        .O(S_A_S_Oper_A[21]));
  LUT5 #(
    .INIT(32'h24242400)) 
    \FSM_sequential_state_reg[2]_i_2 
       (.I0(D),
        .I1(r_mode_IBUF[1]),
        .I2(r_mode_IBUF[0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(round_flag));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Q[0]_i_1__2 
       (.I0(Q[0]),
        .I1(FSM_selector_D),
        .O(\Q_reg[3]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[12]_i_11 
       (.I0(Q[8]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[22]_0 [6]),
        .O(S_A_S_Oper_A[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[12]_i_5 
       (.I0(Q[9]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[22]_0 [7]),
        .O(S_A_S_Oper_A[7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[12]_i_7 
       (.I0(Q[10]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[22]_0 [8]),
        .O(S_A_S_Oper_A[8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[12]_i_9 
       (.I0(Q[7]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[22]_0 [5]),
        .O(S_A_S_Oper_A[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[14]_i_4__0 
       (.I0(Q[11]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[22]_0 [9]),
        .O(S_A_S_Oper_A[9]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[14]_i_6 
       (.I0(Q[12]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[22]_0 [10]),
        .O(S_A_S_Oper_A[10]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[17]_i_10 
       (.I0(Q[13]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[22]_0 [11]),
        .O(S_A_S_Oper_A[11]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[17]_i_5__0 
       (.I0(Q[14]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[22]_0 [12]),
        .O(S_A_S_Oper_A[12]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[17]_i_7 
       (.I0(Q[15]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[22]_0 [13]),
        .O(S_A_S_Oper_A[13]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[19]_i_4__0 
       (.I0(Q[16]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[22]_0 [14]),
        .O(S_A_S_Oper_A[14]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[19]_i_6__0 
       (.I0(Q[17]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[22]_0 [15]),
        .O(S_A_S_Oper_A[15]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[22]_i_10__0 
       (.I0(Q[18]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[22]_0 [16]),
        .O(S_A_S_Oper_A[16]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[22]_i_5__0 
       (.I0(Q[19]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[22]_0 [17]),
        .O(S_A_S_Oper_A[17]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[22]_i_7__0 
       (.I0(Q[20]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[22]_0 [18]),
        .O(S_A_S_Oper_A[18]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[24]_i_5__0 
       (.I0(Q[21]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[22]_0 [19]),
        .O(S_A_S_Oper_A[19]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[24]_i_7__0 
       (.I0(Q[22]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[22]_0 [20]),
        .O(S_A_S_Oper_A[20]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \Q[25]_i_54 
       (.I0(Q[25]),
        .I1(FSM_selector_D),
        .O(S_A_S_Oper_A[23]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[25]_i_56 
       (.I0(Q[24]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[22]_0 [22]),
        .O(S_A_S_Oper_A[22]));
  LUT6 #(
    .INIT(64'hAA99A5965A66AA66)) 
    \Q[2]_i_1__0 
       (.I0(Q[2]),
        .I1(\Q_reg[22]_0 [0]),
        .I2(Q[1]),
        .I3(FSM_selector_D),
        .I4(Q[0]),
        .I5(S_A_S_op),
        .O(\Q_reg[3]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h96C3693C)) 
    \Q[3]_i_1__0 
       (.I0(FSM_selector_D),
        .I1(Q[3]),
        .I2(S_A_S_op),
        .I3(\Q_reg[22]_0 [1]),
        .I4(A_S_C),
        .O(\Q_reg[3]_0 [2]));
  LUT6 #(
    .INIT(64'hE5A7E0A0AA8AA082)) 
    \Q[4]_i_3 
       (.I0(S_A_S_op),
        .I1(Q[0]),
        .I2(FSM_selector_D),
        .I3(Q[1]),
        .I4(\Q_reg[22]_0 [0]),
        .I5(Q[2]),
        .O(A_S_C));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[7]_i_10 
       (.I0(Q[2]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[22]_0 [0]),
        .O(S_A_S_Oper_A[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[7]_i_12 
       (.I0(Q[3]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[22]_0 [1]),
        .O(S_A_S_Oper_A[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[7]_i_5 
       (.I0(Q[4]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[22]_0 [2]),
        .O(S_A_S_Oper_A[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[7]_i_7 
       (.I0(Q[5]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[22]_0 [3]),
        .O(S_A_S_Oper_A[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[9]_i_7 
       (.I0(Q[6]),
        .I1(FSM_selector_D),
        .I2(\Q_reg[22]_0 [4]),
        .O(S_A_S_Oper_A[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\Q_reg[1]_0 [9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "RegisterAdd" *) 
module RegisterAdd__parameterized7
   (D,
    \Q_reg[12]_0 ,
    \Q_reg[14]_0 ,
    \Q_reg[14]_1 ,
    \Q_reg[14]_2 ,
    Q,
    \Q_reg[1]_0 ,
    \Q_reg[0]_0 ,
    \Q_reg[22]_0 ,
    \Q_reg[4]_0 ,
    \Q_reg[5]_0 ,
    \Q_reg[1]_1 ,
    \Q_reg[6]_0 ,
    \Q_reg[7]_0 ,
    \Q_reg[8]_0 ,
    \Q_reg[0]_1 ,
    \Q_reg[9]_0 ,
    \Q_reg[4]_1 ,
    \Q_reg[5]_1 ,
    \Q_reg[6]_1 ,
    \Q_reg[7]_1 ,
    \Q_reg[8]_1 ,
    \Q_reg[9]_1 ,
    \Q_reg[21]_0 ,
    \Q_reg[21]_1 ,
    \Q_reg[3]_0 ,
    FSM_barrel_shifter_L_R,
    \Q_reg[4]_2 ,
    \Q_reg[3]_1 ,
    S_Shift_Value,
    \Q_reg[3]_2 ,
    \Q_reg[4]_3 ,
    \Data_array[5]_0 ,
    \Data_array[4]_1 ,
    FSM_selector_C,
    FSM_barrel_shifter_B_S,
    \FSM_sequential_state_reg_reg[3] ,
    add_overflow_flag,
    \FSM_sequential_state_reg_reg[0] ,
    \Q_reg[3]_3 ,
    \Q_reg[22]_1 ,
    state_next1,
    E,
    \Q_reg[25]_0 ,
    CLK,
    AR);
  output [5:0]D;
  output [2:0]\Q_reg[12]_0 ;
  output [7:0]\Q_reg[14]_0 ;
  output [1:0]\Q_reg[14]_1 ;
  output [2:0]\Q_reg[14]_2 ;
  output [1:0]Q;
  output \Q_reg[1]_0 ;
  output \Q_reg[0]_0 ;
  output \Q_reg[22]_0 ;
  output \Q_reg[4]_0 ;
  output \Q_reg[5]_0 ;
  output \Q_reg[1]_1 ;
  output \Q_reg[6]_0 ;
  output \Q_reg[7]_0 ;
  output \Q_reg[8]_0 ;
  output \Q_reg[0]_1 ;
  output \Q_reg[9]_0 ;
  output \Q_reg[4]_1 ;
  output \Q_reg[5]_1 ;
  output \Q_reg[6]_1 ;
  output \Q_reg[7]_1 ;
  output \Q_reg[8]_1 ;
  output \Q_reg[9]_1 ;
  output [0:0]\Q_reg[21]_0 ;
  output \Q_reg[21]_1 ;
  input \Q_reg[3]_0 ;
  input FSM_barrel_shifter_L_R;
  input \Q_reg[4]_2 ;
  input \Q_reg[3]_1 ;
  input [4:0]S_Shift_Value;
  input \Q_reg[3]_2 ;
  input \Q_reg[4]_3 ;
  input [0:0]\Data_array[5]_0 ;
  input [0:0]\Data_array[4]_1 ;
  input FSM_selector_C;
  input FSM_barrel_shifter_B_S;
  input \FSM_sequential_state_reg_reg[3] ;
  input add_overflow_flag;
  input \FSM_sequential_state_reg_reg[0] ;
  input \Q_reg[3]_3 ;
  input [22:0]\Q_reg[22]_1 ;
  input state_next1;
  input [0:0]E;
  input [25:0]\Q_reg[25]_0 ;
  input CLK;
  input [1:0]AR;

  wire [1:0]AR;
  wire [23:1]\Barrel_Shifter_module/Mux_Array/Data_array[0] ;
  wire [21:0]\Barrel_Shifter_module/Mux_Array/Data_array[1] ;
  wire [15:4]\Barrel_Shifter_module/Mux_Array/Data_array[2] ;
  wire [10:10]\Barrel_Shifter_module/Mux_Array/Data_array[3] ;
  wire CLK;
  wire [5:0]D;
  wire [0:0]\Data_array[4]_1 ;
  wire [0:0]\Data_array[5]_0 ;
  wire [0:0]E;
  wire FSM_barrel_shifter_B_S;
  wire FSM_barrel_shifter_L_R;
  wire FSM_selector_C;
  wire \FSM_sequential_state_reg_reg[0] ;
  wire \FSM_sequential_state_reg_reg[3] ;
  wire [1:0]Q;
  wire \Q[14]_i_2_n_0 ;
  wire \Q[14]_i_3_n_0 ;
  wire \Q[15]_i_2_n_0 ;
  wire \Q[15]_i_5_n_0 ;
  wire \Q[18]_i_11_n_0 ;
  wire \Q[23]_i_2_n_0 ;
  wire \Q[23]_i_3_n_0 ;
  wire \Q_reg[0]_0 ;
  wire \Q_reg[0]_1 ;
  wire [2:0]\Q_reg[12]_0 ;
  wire [7:0]\Q_reg[14]_0 ;
  wire [1:0]\Q_reg[14]_1 ;
  wire [2:0]\Q_reg[14]_2 ;
  wire \Q_reg[1]_0 ;
  wire \Q_reg[1]_1 ;
  wire [0:0]\Q_reg[21]_0 ;
  wire \Q_reg[21]_1 ;
  wire \Q_reg[22]_0 ;
  wire [22:0]\Q_reg[22]_1 ;
  wire [25:0]\Q_reg[25]_0 ;
  wire \Q_reg[3]_0 ;
  wire \Q_reg[3]_1 ;
  wire \Q_reg[3]_2 ;
  wire \Q_reg[3]_3 ;
  wire \Q_reg[4]_0 ;
  wire \Q_reg[4]_1 ;
  wire \Q_reg[4]_2 ;
  wire \Q_reg[4]_3 ;
  wire \Q_reg[5]_0 ;
  wire \Q_reg[5]_1 ;
  wire \Q_reg[6]_0 ;
  wire \Q_reg[6]_1 ;
  wire \Q_reg[7]_0 ;
  wire \Q_reg[7]_1 ;
  wire \Q_reg[8]_0 ;
  wire \Q_reg[8]_1 ;
  wire \Q_reg[9]_0 ;
  wire \Q_reg[9]_1 ;
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
  wire [24:2]S_Data_Shift;
  wire [4:0]S_Shift_Value;
  wire add_overflow_flag;
  wire state_next1;

  LUT6 #(
    .INIT(64'hEFEFEFE0EFE0EFE0)) 
    \Q[10]_i_1 
       (.I0(\Q[15]_i_5_n_0 ),
        .I1(\Q_reg[3]_1 ),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Q[15]_i_2_n_0 ),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[3] ),
        .I5(\Q_reg[4]_2 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hEFEFEFE0EFE0EFE0)) 
    \Q[11]_i_1 
       (.I0(\Q[14]_i_3_n_0 ),
        .I1(\Q_reg[3]_0 ),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Q[14]_i_2_n_0 ),
        .I4(\Q_reg[12]_0 [0]),
        .I5(\Q_reg[4]_2 ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \Q[13]_i_3 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [18]),
        .I1(S_Shift_Value[1]),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[1] [16]),
        .I3(S_Shift_Value[2]),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[2] [12]),
        .O(\Q_reg[12]_0 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[13]_i_5 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [19]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [17]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [15]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [13]),
        .O(\Q_reg[12]_0 [2]));
  LUT6 #(
    .INIT(64'hEAFFEAFFEAFFEA00)) 
    \Q[14]_i_1 
       (.I0(\Q[14]_i_2_n_0 ),
        .I1(\Q_reg[12]_0 [0]),
        .I2(\Q_reg[4]_2 ),
        .I3(FSM_barrel_shifter_L_R),
        .I4(\Q[14]_i_3_n_0 ),
        .I5(\Q_reg[3]_0 ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \Q[14]_i_2 
       (.I0(\Q_reg[14]_0 [7]),
        .I1(S_Shift_Value[2]),
        .I2(\Q_reg[14]_0 [3]),
        .I3(\Q_reg[3]_2 ),
        .I4(\Q_reg[4]_3 ),
        .O(\Q[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \Q[14]_i_3 
       (.I0(\Q_reg[14]_0 [2]),
        .I1(S_Shift_Value[2]),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[2] [14]),
        .I3(\Q_reg[4]_2 ),
        .I4(\Q_reg[4]_3 ),
        .O(\Q[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAFFEAFFEAFFEA00)) 
    \Q[15]_i_1 
       (.I0(\Q[15]_i_2_n_0 ),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[3] ),
        .I2(\Q_reg[4]_2 ),
        .I3(FSM_barrel_shifter_L_R),
        .I4(\Q[15]_i_5_n_0 ),
        .I5(\Q_reg[3]_1 ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \Q[15]_i_2 
       (.I0(\Q_reg[14]_0 [6]),
        .I1(S_Shift_Value[2]),
        .I2(\Q_reg[14]_0 [2]),
        .I3(\Q_reg[3]_2 ),
        .I4(\Q_reg[4]_3 ),
        .O(\Q[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \Q[15]_i_3 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [16]),
        .I1(S_Shift_Value[1]),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[1] [14]),
        .I3(S_Shift_Value[2]),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[2] [10]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[3] ));
  LUT5 #(
    .INIT(32'hFFFFB800)) 
    \Q[15]_i_5 
       (.I0(\Q_reg[14]_0 [3]),
        .I1(S_Shift_Value[2]),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[2] [15]),
        .I3(\Q_reg[4]_2 ),
        .I4(\Q_reg[4]_3 ),
        .O(\Q[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \Q[16]_i_2 
       (.I0(\Q_reg[3]_2 ),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [17]),
        .I2(S_Shift_Value[1]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [19]),
        .I4(S_Shift_Value[2]),
        .I5(\Q_reg[14]_0 [5]),
        .O(\Q_reg[9]_1 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \Q[16]_i_3 
       (.I0(\Q_reg[4]_2 ),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[2] [9]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [13]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [15]),
        .O(\Q_reg[9]_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \Q[17]_i_2 
       (.I0(\Q_reg[3]_2 ),
        .I1(\Q_reg[14]_0 [0]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [20]),
        .I4(S_Shift_Value[1]),
        .I5(\Q_reg[14]_2 [0]),
        .O(\Q_reg[8]_1 ));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \Q[17]_i_3 
       (.I0(\Q_reg[4]_2 ),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [8]),
        .I2(S_Shift_Value[1]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [10]),
        .I4(S_Shift_Value[2]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[2] [12]),
        .O(\Q_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[18]_i_10 
       (.I0(S_Data_Shift[3]),
        .I1(S_Data_Shift[22]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[4]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[21]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [21]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[18]_i_11 
       (.I0(\Q_reg_n_0_[1] ),
        .I1(FSM_selector_C),
        .O(\Q[18]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00B8B8)) 
    \Q[18]_i_3 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [9]),
        .I1(S_Shift_Value[1]),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[1] [7]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[2] [11]),
        .I4(S_Shift_Value[2]),
        .I5(S_Shift_Value[3]),
        .O(\Q_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \Q[18]_i_4 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[2] [15]),
        .I1(S_Shift_Value[2]),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[1] [19]),
        .I3(S_Shift_Value[1]),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[1] [21]),
        .I5(S_Shift_Value[3]),
        .O(\Q_reg[7]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[18]_i_6 
       (.I0(\Q[18]_i_11_n_0 ),
        .I1(S_Data_Shift[24]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[2]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[23]),
        .O(\Q_reg[14]_2 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[18]_i_7 
       (.I0(S_Data_Shift[15]),
        .I1(S_Data_Shift[10]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[16]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[9]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[18]_i_8 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [14]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[0] [13]),
        .I2(S_Shift_Value[1]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[0] [12]),
        .I4(S_Shift_Value[0]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [11]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[18]_i_9 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [18]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[0] [17]),
        .I2(S_Shift_Value[1]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[0] [16]),
        .I4(S_Shift_Value[0]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [15]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [15]));
  LUT6 #(
    .INIT(64'h00000000FF00B8B8)) 
    \Q[19]_i_3 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [8]),
        .I1(S_Shift_Value[1]),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[1] [6]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[2] [10]),
        .I4(S_Shift_Value[2]),
        .I5(S_Shift_Value[3]),
        .O(\Q_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \Q[19]_i_4 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[2] [14]),
        .I1(S_Shift_Value[2]),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[1] [18]),
        .I3(S_Shift_Value[1]),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[1] [20]),
        .I5(S_Shift_Value[3]),
        .O(\Q_reg[6]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[19]_i_6 
       (.I0(S_Data_Shift[2]),
        .I1(S_Data_Shift[23]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[3]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[22]),
        .O(\Q_reg[14]_2 [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[19]_i_7 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [17]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[0] [16]),
        .I2(S_Shift_Value[1]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[0] [15]),
        .I4(S_Shift_Value[0]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [14]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[19]_i_8 
       (.I0(S_Data_Shift[4]),
        .I1(S_Data_Shift[21]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[5]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[20]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [20]));
  LUT6 #(
    .INIT(64'h00000000FF00B8B8)) 
    \Q[20]_i_3 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [7]),
        .I1(S_Shift_Value[1]),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[1] [5]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[2] [9]),
        .I4(S_Shift_Value[2]),
        .I5(S_Shift_Value[3]),
        .O(\Q_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \Q[20]_i_4 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[2] [13]),
        .I1(S_Shift_Value[2]),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[1] [17]),
        .I3(S_Shift_Value[1]),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[1] [19]),
        .I5(S_Shift_Value[3]),
        .O(\Q_reg[5]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[20]_i_6 
       (.I0(S_Data_Shift[17]),
        .I1(S_Data_Shift[8]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[18]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[7]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[20]_i_7 
       (.I0(S_Data_Shift[5]),
        .I1(S_Data_Shift[20]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[6]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[19]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [19]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Q[21]_i_10 
       (.I0(Q[0]),
        .I1(FSM_selector_C),
        .O(\Q_reg[21]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \Q[21]_i_11 
       (.I0(Q[1]),
        .I1(FSM_selector_C),
        .O(\Q_reg[21]_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00B8B8)) 
    \Q[21]_i_3 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [6]),
        .I1(S_Shift_Value[1]),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[1] [4]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[2] [8]),
        .I4(S_Shift_Value[2]),
        .I5(S_Shift_Value[3]),
        .O(\Q_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \Q[21]_i_4 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[2] [12]),
        .I1(S_Shift_Value[2]),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[1] [16]),
        .I3(S_Shift_Value[1]),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[1] [18]),
        .I5(S_Shift_Value[3]),
        .O(\Q_reg[4]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[21]_i_6 
       (.I0(S_Data_Shift[18]),
        .I1(S_Data_Shift[7]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[19]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[6]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[21]_i_7 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [11]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[0] [10]),
        .I2(S_Shift_Value[1]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[0] [9]),
        .I4(S_Shift_Value[0]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [8]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[21]_i_8 
       (.I0(S_Data_Shift[6]),
        .I1(S_Data_Shift[19]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[7]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[18]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[22]_i_10 
       (.I0(S_Data_Shift[13]),
        .I1(S_Data_Shift[12]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[14]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[11]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[22]_i_11 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [10]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[0] [9]),
        .I2(S_Shift_Value[1]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[0] [8]),
        .I4(S_Shift_Value[0]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [7]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[22]_i_12 
       (.I0(S_Data_Shift[19]),
        .I1(S_Data_Shift[6]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[20]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[5]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[22]_i_13 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [22]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[0] [21]),
        .I2(S_Shift_Value[1]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[0] [20]),
        .I4(S_Shift_Value[0]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [19]),
        .O(\Q_reg[14]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[22]_i_14 
       (.I0(\Q_reg_n_0_[7] ),
        .I1(FSM_selector_C),
        .I2(\Q_reg[22]_1 [5]),
        .O(S_Data_Shift[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[22]_i_15 
       (.I0(\Q_reg_n_0_[18] ),
        .I1(FSM_selector_C),
        .I2(\Q_reg[22]_1 [16]),
        .O(S_Data_Shift[18]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[22]_i_16 
       (.I0(\Q_reg_n_0_[12] ),
        .I1(FSM_selector_C),
        .I2(\Q_reg[22]_1 [10]),
        .O(S_Data_Shift[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[22]_i_17 
       (.I0(\Q_reg_n_0_[13] ),
        .I1(FSM_selector_C),
        .I2(\Q_reg[22]_1 [11]),
        .O(S_Data_Shift[13]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[22]_i_18 
       (.I0(\Q_reg_n_0_[19] ),
        .I1(FSM_selector_C),
        .I2(\Q_reg[22]_1 [17]),
        .O(S_Data_Shift[19]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[22]_i_19 
       (.I0(\Q_reg_n_0_[6] ),
        .I1(FSM_selector_C),
        .I2(\Q_reg[22]_1 [4]),
        .O(S_Data_Shift[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[22]_i_3 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [17]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [15]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [13]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [11]),
        .O(\Q_reg[12]_0 [0]));
  LUT6 #(
    .INIT(64'h8A8A80808A808A80)) 
    \Q[22]_i_4 
       (.I0(\Q_reg[4]_2 ),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[2] [7]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [3]),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[1] [5]),
        .I5(S_Shift_Value[1]),
        .O(\Q_reg[22]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[22]_i_7 
       (.I0(S_Data_Shift[7]),
        .I1(S_Data_Shift[18]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[8]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[17]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[22]_i_8 
       (.I0(S_Data_Shift[9]),
        .I1(S_Data_Shift[16]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[10]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[15]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[22]_i_9 
       (.I0(S_Data_Shift[11]),
        .I1(S_Data_Shift[14]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[12]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[13]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [13]));
  LUT6 #(
    .INIT(64'hFEEEFFFFFEEE0000)) 
    \Q[23]_i_1 
       (.I0(\Q[23]_i_2_n_0 ),
        .I1(\Q[23]_i_3_n_0 ),
        .I2(S_Shift_Value[4]),
        .I3(\Data_array[4]_1 ),
        .I4(FSM_barrel_shifter_L_R),
        .I5(\Data_array[5]_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[23]_i_10 
       (.I0(S_Data_Shift[20]),
        .I1(S_Data_Shift[5]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[21]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[4]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[23]_i_11 
       (.I0(\Q_reg[14]_1 [1]),
        .I1(\Q_reg[14]_1 [0]),
        .I2(S_Shift_Value[1]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[0] [23]),
        .I4(S_Shift_Value[0]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [22]),
        .O(\Q_reg[14]_0 [6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[23]_i_12 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [21]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[0] [20]),
        .I2(S_Shift_Value[1]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[0] [19]),
        .I4(S_Shift_Value[0]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [18]),
        .O(\Q_reg[14]_0 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[23]_i_14 
       (.I0(FSM_barrel_shifter_B_S),
        .I1(\Q_reg[14]_1 [1]),
        .I2(S_Shift_Value[1]),
        .I3(\Q_reg[14]_1 [0]),
        .I4(S_Shift_Value[0]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [23]),
        .O(\Q_reg[14]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[23]_i_16 
       (.I0(\Q_reg_n_0_[20] ),
        .I1(FSM_selector_C),
        .I2(\Q_reg[22]_1 [18]),
        .O(S_Data_Shift[20]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[23]_i_17 
       (.I0(\Q_reg_n_0_[5] ),
        .I1(FSM_selector_C),
        .I2(\Q_reg[22]_1 [3]),
        .O(S_Data_Shift[5]));
  LUT6 #(
    .INIT(64'hA8A8A8080808A808)) 
    \Q[23]_i_2 
       (.I0(\Q_reg[3]_2 ),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[2] [10]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [14]),
        .I4(S_Shift_Value[1]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [16]),
        .O(\Q[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A80808A808A80)) 
    \Q[23]_i_3 
       (.I0(\Q_reg[4]_2 ),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[2] [6]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [2]),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[1] [4]),
        .I5(S_Shift_Value[1]),
        .O(\Q[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \Q[23]_i_6 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[1] [12]),
        .I1(S_Shift_Value[1]),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[0] [11]),
        .I3(S_Shift_Value[0]),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[0] [10]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[23]_i_7 
       (.I0(S_Data_Shift[10]),
        .I1(S_Data_Shift[15]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[11]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[14]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[23]_i_8 
       (.I0(S_Data_Shift[8]),
        .I1(S_Data_Shift[17]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[9]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[16]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[23]_i_9 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [9]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[0] [8]),
        .I2(S_Shift_Value[1]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[0] [7]),
        .I4(S_Shift_Value[0]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [6]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[24]_i_10 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [12]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[0] [11]),
        .I2(S_Shift_Value[1]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[0] [10]),
        .I4(S_Shift_Value[0]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [9]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[24]_i_11 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [8]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[0] [7]),
        .I2(S_Shift_Value[1]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[0] [6]),
        .I4(S_Shift_Value[0]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [5]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[24]_i_13 
       (.I0(S_Data_Shift[21]),
        .I1(S_Data_Shift[4]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[22]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[3]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[24]_i_14 
       (.I0(\Q_reg_n_0_[23] ),
        .I1(\Q_reg[22]_1 [21]),
        .I2(FSM_barrel_shifter_L_R),
        .I3(\Q_reg_n_0_[2] ),
        .I4(FSM_selector_C),
        .I5(\Q_reg[22]_1 [0]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [2]));
  LUT6 #(
    .INIT(64'hF0F0F0B000000080)) 
    \Q[24]_i_15 
       (.I0(S_Data_Shift[24]),
        .I1(\FSM_sequential_state_reg_reg[3] ),
        .I2(FSM_selector_C),
        .I3(add_overflow_flag),
        .I4(\FSM_sequential_state_reg_reg[0] ),
        .I5(\Q_reg_n_0_[1] ),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [1]));
  LUT6 #(
    .INIT(64'hB833FFFFB8330000)) 
    \Q[24]_i_17 
       (.I0(Q[0]),
        .I1(FSM_barrel_shifter_L_R),
        .I2(Q[1]),
        .I3(FSM_selector_C),
        .I4(S_Shift_Value[0]),
        .I5(\Q_reg[14]_1 [0]),
        .O(\Q_reg[14]_2 [2]));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \Q[24]_i_18 
       (.I0(S_Data_Shift[12]),
        .I1(\FSM_sequential_state_reg_reg[3] ),
        .I2(FSM_selector_C),
        .I3(add_overflow_flag),
        .I4(\FSM_sequential_state_reg_reg[0] ),
        .I5(S_Data_Shift[13]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [13]));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \Q[24]_i_19 
       (.I0(S_Data_Shift[13]),
        .I1(\FSM_sequential_state_reg_reg[3] ),
        .I2(FSM_selector_C),
        .I3(add_overflow_flag),
        .I4(\FSM_sequential_state_reg_reg[0] ),
        .I5(S_Data_Shift[12]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [12]));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \Q[24]_i_20 
       (.I0(S_Data_Shift[14]),
        .I1(\FSM_sequential_state_reg_reg[3] ),
        .I2(FSM_selector_C),
        .I3(add_overflow_flag),
        .I4(\FSM_sequential_state_reg_reg[0] ),
        .I5(S_Data_Shift[11]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [11]));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \Q[24]_i_21 
       (.I0(S_Data_Shift[15]),
        .I1(\FSM_sequential_state_reg_reg[3] ),
        .I2(FSM_selector_C),
        .I3(add_overflow_flag),
        .I4(\FSM_sequential_state_reg_reg[0] ),
        .I5(S_Data_Shift[10]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [10]));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \Q[24]_i_22 
       (.I0(S_Data_Shift[16]),
        .I1(\FSM_sequential_state_reg_reg[3] ),
        .I2(FSM_selector_C),
        .I3(add_overflow_flag),
        .I4(\FSM_sequential_state_reg_reg[0] ),
        .I5(S_Data_Shift[9]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [9]));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \Q[24]_i_23 
       (.I0(S_Data_Shift[17]),
        .I1(\FSM_sequential_state_reg_reg[3] ),
        .I2(FSM_selector_C),
        .I3(add_overflow_flag),
        .I4(\FSM_sequential_state_reg_reg[0] ),
        .I5(S_Data_Shift[8]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[24]_i_24 
       (.I0(\Q_reg_n_0_[21] ),
        .I1(FSM_selector_C),
        .I2(\Q_reg[22]_1 [19]),
        .O(S_Data_Shift[21]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[24]_i_25 
       (.I0(\Q_reg_n_0_[4] ),
        .I1(FSM_selector_C),
        .I2(\Q_reg[22]_1 [2]),
        .O(S_Data_Shift[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[24]_i_26 
       (.I0(\Q_reg_n_0_[24] ),
        .I1(FSM_selector_C),
        .I2(\Q_reg[22]_1 [22]),
        .O(S_Data_Shift[24]));
  LUT5 #(
    .INIT(32'hAACCF000)) 
    \Q[24]_i_3 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[2] [13]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[2] [9]),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[2] [5]),
        .I3(S_Shift_Value[2]),
        .I4(S_Shift_Value[3]),
        .O(\Q_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \Q[24]_i_4 
       (.I0(\Q_reg[3]_3 ),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [3]),
        .I2(S_Shift_Value[1]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[0] [2]),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[0] [1]),
        .I5(S_Shift_Value[0]),
        .O(\Q_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[24]_i_7 
       (.I0(\Q_reg[14]_1 [0]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[0] [23]),
        .I2(S_Shift_Value[1]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[0] [22]),
        .I4(S_Shift_Value[0]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [21]),
        .O(\Q_reg[14]_0 [5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[24]_i_8 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [20]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[0] [19]),
        .I2(S_Shift_Value[1]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[0] [18]),
        .I4(S_Shift_Value[0]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [17]),
        .O(\Q_reg[14]_0 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[24]_i_9 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [16]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[0] [15]),
        .I2(S_Shift_Value[1]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[0] [14]),
        .I4(S_Shift_Value[0]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [13]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[25]_i_11 
       (.I0(S_Data_Shift[14]),
        .I1(S_Data_Shift[11]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[15]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[10]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \Q[25]_i_13 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [15]),
        .I1(S_Shift_Value[0]),
        .I2(\Barrel_Shifter_module/Mux_Array/Data_array[0] [14]),
        .I3(S_Shift_Value[1]),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[1] [12]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[25]_i_16 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [23]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[0] [22]),
        .I2(S_Shift_Value[1]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[0] [21]),
        .I4(S_Shift_Value[0]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [20]),
        .O(\Q_reg[14]_0 [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[25]_i_17 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [19]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[0] [18]),
        .I2(S_Shift_Value[1]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[0] [17]),
        .I4(S_Shift_Value[0]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [16]),
        .O(\Q_reg[14]_0 [0]));
  LUT6 #(
    .INIT(64'hFFFFEA4A0000EA4A)) 
    \Q[25]_i_18 
       (.I0(FSM_barrel_shifter_L_R),
        .I1(Q[0]),
        .I2(FSM_selector_C),
        .I3(Q[1]),
        .I4(S_Shift_Value[0]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [1]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[25]_i_19 
       (.I0(\Barrel_Shifter_module/Mux_Array/Data_array[0] [7]),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[0] [6]),
        .I2(S_Shift_Value[1]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[0] [5]),
        .I4(S_Shift_Value[0]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[0] [4]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[2] [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[25]_i_20 
       (.I0(S_Data_Shift[22]),
        .I1(S_Data_Shift[3]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[23]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[2]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[25]_i_23 
       (.I0(\Q_reg_n_0_[16] ),
        .I1(FSM_selector_C),
        .I2(\Q_reg[22]_1 [14]),
        .O(S_Data_Shift[16]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[25]_i_24 
       (.I0(\Q_reg_n_0_[9] ),
        .I1(FSM_selector_C),
        .I2(\Q_reg[22]_1 [7]),
        .O(S_Data_Shift[9]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[25]_i_25 
       (.I0(\Q_reg_n_0_[17] ),
        .I1(FSM_selector_C),
        .I2(\Q_reg[22]_1 [15]),
        .O(S_Data_Shift[17]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[25]_i_26 
       (.I0(\Q_reg_n_0_[8] ),
        .I1(FSM_selector_C),
        .I2(\Q_reg[22]_1 [6]),
        .O(S_Data_Shift[8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[25]_i_27 
       (.I0(\Q_reg_n_0_[14] ),
        .I1(FSM_selector_C),
        .I2(\Q_reg[22]_1 [12]),
        .O(S_Data_Shift[14]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[25]_i_28 
       (.I0(\Q_reg_n_0_[11] ),
        .I1(FSM_selector_C),
        .I2(\Q_reg[22]_1 [9]),
        .O(S_Data_Shift[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[25]_i_29 
       (.I0(\Q_reg_n_0_[15] ),
        .I1(FSM_selector_C),
        .I2(\Q_reg[22]_1 [13]),
        .O(S_Data_Shift[15]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \Q[25]_i_3 
       (.I0(\Q_reg[3]_2 ),
        .I1(\Barrel_Shifter_module/Mux_Array/Data_array[1] [8]),
        .I2(S_Shift_Value[1]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [10]),
        .I4(S_Shift_Value[2]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[2] [12]),
        .O(\Q_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[25]_i_30 
       (.I0(\Q_reg_n_0_[10] ),
        .I1(FSM_selector_C),
        .I2(\Q_reg[22]_1 [8]),
        .O(S_Data_Shift[10]));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \Q[25]_i_31 
       (.I0(S_Data_Shift[10]),
        .I1(\FSM_sequential_state_reg_reg[3] ),
        .I2(FSM_selector_C),
        .I3(add_overflow_flag),
        .I4(\FSM_sequential_state_reg_reg[0] ),
        .I5(S_Data_Shift[15]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [15]));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \Q[25]_i_32 
       (.I0(S_Data_Shift[11]),
        .I1(\FSM_sequential_state_reg_reg[3] ),
        .I2(FSM_selector_C),
        .I3(add_overflow_flag),
        .I4(\FSM_sequential_state_reg_reg[0] ),
        .I5(S_Data_Shift[14]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [14]));
  LUT6 #(
    .INIT(64'hDDDDEDDD88884888)) 
    \Q[25]_i_33 
       (.I0(S_Shift_Value[0]),
        .I1(S_Data_Shift[13]),
        .I2(\FSM_sequential_state_reg_reg[3] ),
        .I3(state_next1),
        .I4(\FSM_sequential_state_reg_reg[0] ),
        .I5(S_Data_Shift[12]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [12]));
  LUT6 #(
    .INIT(64'hFFFFFFBF0F0F0F8F)) 
    \Q[25]_i_34 
       (.I0(Q[0]),
        .I1(\FSM_sequential_state_reg_reg[3] ),
        .I2(FSM_selector_C),
        .I3(add_overflow_flag),
        .I4(\FSM_sequential_state_reg_reg[0] ),
        .I5(Q[1]),
        .O(\Q_reg[14]_1 [1]));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \Q[25]_i_35 
       (.I0(\Q_reg_n_0_[1] ),
        .I1(\FSM_sequential_state_reg_reg[3] ),
        .I2(FSM_selector_C),
        .I3(add_overflow_flag),
        .I4(\FSM_sequential_state_reg_reg[0] ),
        .I5(S_Data_Shift[24]),
        .O(\Q_reg[14]_1 [0]));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \Q[25]_i_36 
       (.I0(S_Data_Shift[2]),
        .I1(\FSM_sequential_state_reg_reg[3] ),
        .I2(FSM_selector_C),
        .I3(add_overflow_flag),
        .I4(\FSM_sequential_state_reg_reg[0] ),
        .I5(S_Data_Shift[23]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [23]));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \Q[25]_i_37 
       (.I0(S_Data_Shift[3]),
        .I1(\FSM_sequential_state_reg_reg[3] ),
        .I2(FSM_selector_C),
        .I3(add_overflow_flag),
        .I4(\FSM_sequential_state_reg_reg[0] ),
        .I5(S_Data_Shift[22]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [22]));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \Q[25]_i_38 
       (.I0(S_Data_Shift[4]),
        .I1(\FSM_sequential_state_reg_reg[3] ),
        .I2(FSM_selector_C),
        .I3(add_overflow_flag),
        .I4(\FSM_sequential_state_reg_reg[0] ),
        .I5(S_Data_Shift[21]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [21]));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \Q[25]_i_39 
       (.I0(S_Data_Shift[5]),
        .I1(\FSM_sequential_state_reg_reg[3] ),
        .I2(FSM_selector_C),
        .I3(add_overflow_flag),
        .I4(\FSM_sequential_state_reg_reg[0] ),
        .I5(S_Data_Shift[20]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [20]));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \Q[25]_i_40 
       (.I0(S_Data_Shift[6]),
        .I1(\FSM_sequential_state_reg_reg[3] ),
        .I2(FSM_selector_C),
        .I3(add_overflow_flag),
        .I4(\FSM_sequential_state_reg_reg[0] ),
        .I5(S_Data_Shift[19]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [19]));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \Q[25]_i_41 
       (.I0(S_Data_Shift[7]),
        .I1(\FSM_sequential_state_reg_reg[3] ),
        .I2(FSM_selector_C),
        .I3(add_overflow_flag),
        .I4(\FSM_sequential_state_reg_reg[0] ),
        .I5(S_Data_Shift[18]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [18]));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \Q[25]_i_42 
       (.I0(S_Data_Shift[8]),
        .I1(\FSM_sequential_state_reg_reg[3] ),
        .I2(FSM_selector_C),
        .I3(add_overflow_flag),
        .I4(\FSM_sequential_state_reg_reg[0] ),
        .I5(S_Data_Shift[17]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [17]));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \Q[25]_i_43 
       (.I0(S_Data_Shift[9]),
        .I1(\FSM_sequential_state_reg_reg[3] ),
        .I2(FSM_selector_C),
        .I3(add_overflow_flag),
        .I4(\FSM_sequential_state_reg_reg[0] ),
        .I5(S_Data_Shift[16]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [16]));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \Q[25]_i_44 
       (.I0(S_Data_Shift[18]),
        .I1(\FSM_sequential_state_reg_reg[3] ),
        .I2(FSM_selector_C),
        .I3(add_overflow_flag),
        .I4(\FSM_sequential_state_reg_reg[0] ),
        .I5(S_Data_Shift[7]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [7]));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \Q[25]_i_45 
       (.I0(S_Data_Shift[19]),
        .I1(\FSM_sequential_state_reg_reg[3] ),
        .I2(FSM_selector_C),
        .I3(add_overflow_flag),
        .I4(\FSM_sequential_state_reg_reg[0] ),
        .I5(S_Data_Shift[6]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [6]));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \Q[25]_i_46 
       (.I0(S_Data_Shift[20]),
        .I1(\FSM_sequential_state_reg_reg[3] ),
        .I2(FSM_selector_C),
        .I3(add_overflow_flag),
        .I4(\FSM_sequential_state_reg_reg[0] ),
        .I5(S_Data_Shift[5]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [5]));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \Q[25]_i_47 
       (.I0(S_Data_Shift[21]),
        .I1(\FSM_sequential_state_reg_reg[3] ),
        .I2(FSM_selector_C),
        .I3(add_overflow_flag),
        .I4(\FSM_sequential_state_reg_reg[0] ),
        .I5(S_Data_Shift[4]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[0] [4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[25]_i_48 
       (.I0(\Q_reg_n_0_[22] ),
        .I1(FSM_selector_C),
        .I2(\Q_reg[22]_1 [20]),
        .O(S_Data_Shift[22]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[25]_i_49 
       (.I0(\Q_reg_n_0_[3] ),
        .I1(FSM_selector_C),
        .I2(\Q_reg[22]_1 [1]),
        .O(S_Data_Shift[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[25]_i_50 
       (.I0(\Q_reg_n_0_[23] ),
        .I1(FSM_selector_C),
        .I2(\Q_reg[22]_1 [21]),
        .O(S_Data_Shift[23]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[25]_i_51 
       (.I0(\Q_reg_n_0_[2] ),
        .I1(FSM_selector_C),
        .I2(\Q_reg[22]_1 [0]),
        .O(S_Data_Shift[2]));
  LUT6 #(
    .INIT(64'hAAA80A08A2A00200)) 
    \Q[25]_i_6 
       (.I0(\Q_reg[4]_2 ),
        .I1(S_Shift_Value[1]),
        .I2(S_Shift_Value[2]),
        .I3(\Barrel_Shifter_module/Mux_Array/Data_array[1] [0]),
        .I4(\Barrel_Shifter_module/Mux_Array/Data_array[2] [4]),
        .I5(\Barrel_Shifter_module/Mux_Array/Data_array[1] [2]),
        .O(\Q_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Q[25]_i_9 
       (.I0(S_Data_Shift[16]),
        .I1(S_Data_Shift[9]),
        .I2(S_Shift_Value[0]),
        .I3(S_Data_Shift[17]),
        .I4(FSM_barrel_shifter_L_R),
        .I5(S_Data_Shift[8]),
        .O(\Barrel_Shifter_module/Mux_Array/Data_array[1] [8]));
  LUT6 #(
    .INIT(64'hBBBBBBB8BBB8BBB8)) 
    \Q[2]_i_1 
       (.I0(\Data_array[5]_0 ),
        .I1(FSM_barrel_shifter_L_R),
        .I2(\Q[23]_i_2_n_0 ),
        .I3(\Q[23]_i_3_n_0 ),
        .I4(S_Shift_Value[4]),
        .I5(\Data_array[4]_1 ),
        .O(D[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[1]),
        .D(\Q_reg[25]_0 [0]),
        .Q(Q[0]));
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
        .CLR(AR[0]),
        .D(\Q_reg[25]_0 [12]),
        .Q(\Q_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(CLK),
        .CE(E),
        .CLR(AR[0]),
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
        .CLR(AR[1]),
        .D(\Q_reg[25]_0 [25]),
        .Q(Q[1]));
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
        .CLR(AR[0]),
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
  input [1:0]AR;

  wire [1:0]AR;
  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire clk_IBUF_BUFG;

  RegisterAdd__parameterized9 Final_Result_IEEE
       (.AR(AR),
        .D(D),
        .E(E),
        .Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
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
