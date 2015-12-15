////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: FPU_Multiplication_Function_timesim.v
// /___/   /\     Timestamp: Mon Dec 14 17:13:06 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 3 -pcf FPU_Add_Subtract_Function.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim FPU_Add_Subtract_Function.ncd FPU_Multiplication_Function_timesim.v 
// Device	: 7a100tcsg324-3 (PRODUCTION 1.10 2013-10-13)
// Input file	: FPU_Add_Subtract_Function.ncd
// Output file	: C:\Users\Francis\Documents\GitHub\Proyecto_De_Graduacion\Proyecto_version_inicial_Diego\netgen\par\FPU_Multiplication_Function_timesim.v
// # of Modules	: 1
// Design Name	: FPU_Add_Subtract_Function
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module FPU_Add_Subtract_Function (
  clk, rst, beg_FSM, rst_FSM, add_subt, overflow_flag, underflow_flag, ready, Data_X, Data_Y, r_mode, final_result_ieee
);
  input clk;
  input rst;
  input beg_FSM;
  input rst_FSM;
  input add_subt;
  output overflow_flag;
  output underflow_flag;
  output ready;
  input [31 : 0] Data_X;
  input [31 : 0] Data_Y;
  input [1 : 0] r_mode;
  output [31 : 0] final_result_ieee;
  wire \Operands_Classification/GTComparator/Mcompar_gthan_cy[11] ;
  wire \Operands_Classification/GTComparator/Mcompar_gthan_cy[15] ;
  wire clk_BUFGP;
  wire \First_Und_Ov_Search/R_Underflow/Q_0_3752 ;
  wire \FS_Module/state_reg_FSM_FFd18_0 ;
  wire \FS_Module/state_reg_FSM_FFd19_3754 ;
  wire rst_IBUF_3755;
  wire \as_5_P_Reg/Q_0_3757 ;
  wire \FS_Module/state_reg_FSM_FFd25_3759 ;
  wire \FS_Module/state_reg_FSM_FFd49_3765 ;
  wire load_19;
  wire \Sel_10_P_b/Q_0_3768 ;
  wire \Tenth_Module/Final_Result_IEEE/Q<0>_0 ;
  wire \Tenth_Module/Final_Result_IEEE/Q<11>_0 ;
  wire \Tenth_Module/Final_Result_IEEE/Q<13>_0 ;
  wire \Tenth_Module/Cresult_Reg/Q<16>_0 ;
  wire \Tenth_Module/Final_Result_IEEE/Q<15>_0 ;
  wire \FS_Module/state_reg_FSM_FFd5_3784 ;
  wire \FS_Module/state_reg_FSM_FFd4_3785 ;
  wire rst_FSM_IBUF_3786;
  wire \FS_Module/state_reg_FSM_FFd43_3787 ;
  wire \FS_Module/state_reg_FSM_FFd1_3788 ;
  wire \Zero_Except_Module/Zero_Info_Register/Q_0_3789 ;
  wire \FS_Module/state_reg_FSM_FFd44_3790 ;
  wire \FS_Module/state_reg_FSM_FFd28_3792 ;
  wire \Sel_5_P_exp/Q_0_3796 ;
  wire \FS_Module/state_reg_FSM_FFd33_3800 ;
  wire \FS_Module/state_reg_FSM_FFd30_3801 ;
  wire \Fourth_Module/SgfShift/_n0016_inv_0 ;
  wire \FS_Module/state_reg_FSM_FFd29_3803 ;
  wire \Update_Exponent_First_Time/exp<2>_0 ;
  wire \Tenth_Module/Cresult_Reg/Q<18>_0 ;
  wire \Tenth_Module/Cresult_Reg/Q<19>_0 ;
  wire \Tenth_Module/Final_Result_IEEE/Q<18>_0 ;
  wire \Update_Exponent_First_Time/UExp/Q<3>_0 ;
  wire \Update_Exponent_First_Time/exp<3>_0 ;
  wire \Sel_10_P_a/Q_0_3825 ;
  wire \Tenth_Module/Cresult_Reg/Q<28>_0 ;
  wire \Tenth_Module/Final_Result_IEEE/Q<27>_0 ;
  wire \Tenth_Module/Final_Result_IEEE/Q<1>_0 ;
  wire \Tenth_Module/Final_Result_IEEE/Q<21>_0 ;
  wire \Tenth_Module/Cresult_Reg/Q<7>_0 ;
  wire \Tenth_Module/Final_Result_IEEE/Q<7>_0 ;
  wire \Tenth_Module/Cresult_Reg/Q<29>_0 ;
  wire \Tenth_Module/Cresult_Reg/Q<30>_0 ;
  wire \Tenth_Module/Final_Result_IEEE/Q<29>_0 ;
  wire \Tenth_Module/Cresult_Reg/Q<17>_0 ;
  wire \Tenth_Module/Final_Result_IEEE/Q<17>_0 ;
  wire \Tenth_Module/Cresult_Reg/Q<31>_0 ;
  wire \Tenth_Module/Final_Result_IEEE/Q<2>_0 ;
  wire \Tenth_Module/Final_Result_IEEE/Q<23>_0 ;
  wire Sh101;
  wire \Operands_Classification/DmC/Q<10>_0 ;
  wire \Operands_Classification/DmC/Q<12>_0 ;
  wire \Operands_Classification/DmC/Q<11>_0 ;
  wire \Operands_Classification/DmC/Q<9>_0 ;
  wire Sh111_0;
  wire \Tenth_Module/Cresult_Reg/Q<4>_0 ;
  wire \Tenth_Module/Final_Result_IEEE/Q<3>_0 ;
  wire \Tenth_Module/Final_Result_IEEE/Q<25>_0 ;
  wire \Tenth_Module/Cresult_Reg/Q<5>_0 ;
  wire \Tenth_Module/Cresult_Reg/Q<6>_0 ;
  wire \Tenth_Module/Final_Result_IEEE/Q<5>_0 ;
  wire \FS_Module/state_reg_FSM_FFd9_3904 ;
  wire \Select_Final_Significand/Exp_na_Reg/Q_0_3907 ;
  wire \Select_Final_Exponent/exp_fp_reg/Q<1>_0 ;
  wire \FS_Module/state_reg_FSM_FFd14_3944 ;
  wire \Round_Resultant_Significand/Sgf_Round_R<0>_0 ;
  wire \Round_Resultant_Significand/selector_reg ;
  wire \Round_Resultant_Significand/Sgf_Round_R<10>_0 ;
  wire \Round_Resultant_Significand/Sgf_Ready_Reg/Q<0>_0 ;
  wire \Select_Final_Exponent/overflow_am/Q_0_3954 ;
  wire \Select_Final_Exponent/exp_fp_reg/Q<6>_0 ;
  wire \FS_Module/state_reg_FSM_FFd12_3961 ;
  wire \Select_Final_Significand/Sgf_ieee_Register/Q<10>_0 ;
  wire \Select_Final_Significand/Sgf_ieee_Register/Q<12>_0 ;
  wire \Select_Final_Significand/Sgf_ieee_Register/Q<14>_0 ;
  wire \Select_Final_Significand/Sgf_ieee_Register/Q<16>_0 ;
  wire \Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 ;
  wire Sh21;
  wire \FS_Module/state_reg_FSM_FFd37_0 ;
  wire \Operands_Classification/DmC/Q<22>_0 ;
  wire N21_0;
  wire \Select_Final_Significand/Sgf_ieee_Register/Q<18>_0 ;
  wire \Select_Final_Significand/Sgf_ieee_Register/Q<6>_0 ;
  wire \Select_Final_Significand/Sgf_ieee_Register/Q<20>_0 ;
  wire \Select_Final_Significand/Sgf_ieee_Register/Q<8>_0 ;
  wire \Select_Final_Significand/Sgf_ieee_Register/Q<1>_0 ;
  wire \FS_Module/state_reg_FSM_FFd20_0 ;
  wire \FS_Module/state_reg_FSM_FFd3_4018 ;
  wire \Select_Final_Significand/Sgf_ieee_Register/Q<3>_0 ;
  wire \Select_Final_Significand/Sgf_ieee_Register/Q<22>_0 ;
  wire \Operands_Classification/XRegister/Q<0>_0 ;
  wire \Operands_Classification/XRegister/Q<1>_0 ;
  wire \Operands_Classification/XRegister/Q<2>_0 ;
  wire \Operands_Classification/XRegister/Q<3>_0 ;
  wire \Operands_Classification/GTComparator/Mcompar_gthan_cy[3] ;
  wire \FS_Module/state_reg_FSM_FFd7_4062 ;
  wire \First_Und_Ov_Search/R_Overflow/Q_0_4063 ;
  wire \FS_Module/state_reg_FSM_FFd41_0 ;
  wire \Operands_Classification/CMPRegister/Q_0_4065 ;
  wire \Operands_Classification/DmC/Q<18>_0 ;
  wire \Operands_Classification/DmC/Q<0>_0 ;
  wire \Operands_Classification/DmC/Q<19>_0 ;
  wire \Operands_Classification/DmC/Q<27>_0 ;
  wire \Operands_Classification/DmC/Q<1>_0 ;
  wire \Operands_Classification/DmC/Q<28>_0 ;
  wire \Operands_Classification/XRegister/Q<20>_0 ;
  wire \Operands_Classification/DmC/Q<20>_0 ;
  wire \FS_Module/state_reg_FSM_FFd32_4091 ;
  wire \Operands_Classification/DmC/Q<29>_0 ;
  wire \Operands_Classification/XRegister/Q<21>_0 ;
  wire \Operands_Classification/DmC/Q<7>_0 ;
  wire \Operands_Classification/DmC/Q<2>_0 ;
  wire \Operands_Classification/XRegister/Q<22>_0 ;
  wire \Operands_Classification/DmC/Q<8>_0 ;
  wire \Operands_Classification/DmC/Q<30>_0 ;
  wire \Operands_Classification/XRegister/Q<23>_0 ;
  wire \Operands_Classification/DmC/Q<23>_0 ;
  wire \Operands_Classification/DmC/Q<31>_0 ;
  wire \Operands_Classification/DmC/Q<24>_0 ;
  wire \Operands_Classification/DmC/Q<3>_0 ;
  wire \Operands_Classification/DmC/Q<25>_0 ;
  wire \Operands_Classification/DmC/Q<4>_0 ;
  wire \Operands_Classification/DmC/Q<26>_0 ;
  wire \Operands_Classification/DmC/Q<5>_0 ;
  wire \Operands_Classification/DmC/Q<6>_0 ;
  wire \Operands_Classification/DYP/Q<12>_0 ;
  wire \Operands_Classification/DYP/Q<13>_0 ;
  wire \Operands_Classification/DmC/Q<13>_0 ;
  wire \Operands_Classification/DYP/Q<14>_0 ;
  wire \Operands_Classification/DmC/Q<14>_0 ;
  wire \Operands_Classification/DYP/Q<15>_0 ;
  wire \Operands_Classification/DmC/Q<15>_0 ;
  wire \Operands_Classification/DmC/Q<16>_0 ;
  wire \Operands_Classification/DmC/Q<17>_0 ;
  wire \FS_Module/state_reg_FSM_FFd23_4165 ;
  wire load_8;
  wire overflow_flag_OBUF_4167;
  wire \Operands_Classification/YRegister/Q<8>_0 ;
  wire \Operands_Classification/YRegister/Q<9>_0 ;
  wire \Operands_Classification/YRegister/Q<10>_0 ;
  wire \Operands_Classification/YRegister/Q<11>_0 ;
  wire \Operands_Classification/GTComparator/Mcompar_gthan_cy[7] ;
  wire \Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy[3] ;
  wire \Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy[7] ;
  wire \Zero_Except_Module/eq_ops_l1 ;
  wire \FS_Module/state_reg_FSM_FFd46_4189 ;
  wire add_subt_IBUF_4190;
  wire \FS_Module/state_reg_FSM_FFd39_4192 ;
  wire \Add_Sub_Significands/eq_sgn_INV_44_o1 ;
  wire \FS_Module/state_reg_FSM_FFd35_4201 ;
  wire \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy[3] ;
  wire \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy[7] ;
  wire \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy[11] ;
  wire \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy[15] ;
  wire \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy[19] ;
  wire \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy[23] ;
  wire \Round_Resultant_Significand/Sgf_Round_R<1>_0 ;
  wire \Round_Resultant_Significand/Sgf_Round_R<2>_0 ;
  wire \Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy[3] ;
  wire \Round_Resultant_Significand/Sgf_Round_R<3>_0 ;
  wire \Round_Resultant_Significand/Sgf_Round_R<4>_0 ;
  wire \Round_Resultant_Significand/Sgf_Round_R<5>_0 ;
  wire \Round_Resultant_Significand/Sgf_Round_R<6>_0 ;
  wire \Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy[7] ;
  wire \Round_Resultant_Significand/Sgf_Round_R<7>_0 ;
  wire \Round_Resultant_Significand/Sgf_Round_R<8>_0 ;
  wire \Round_Resultant_Significand/Sgf_Round_R<9>_0 ;
  wire \Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy[11] ;
  wire \Round_Resultant_Significand/Sgf_Round_R<11>_0 ;
  wire \Round_Resultant_Significand/Sgf_Round_R<12>_0 ;
  wire \Round_Resultant_Significand/Sgf_Round_R<13>_0 ;
  wire \Round_Resultant_Significand/Sgf_Round_R<14>_0 ;
  wire \Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy[15] ;
  wire \Round_Resultant_Significand/Sgf_Round_R<15>_0 ;
  wire \Round_Resultant_Significand/Sgf_Round_R<16>_0 ;
  wire \Round_Resultant_Significand/Sgf_Round_R<17>_0 ;
  wire \Round_Resultant_Significand/Sgf_Round_R<18>_0 ;
  wire \Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy[19] ;
  wire \Round_Resultant_Significand/Sgf_Round_R<19>_0 ;
  wire \Round_Resultant_Significand/Sgf_Round_R<20>_0 ;
  wire \Round_Resultant_Significand/Sgf_Round_R<21>_0 ;
  wire \Round_Resultant_Significand/Sgf_Round_R<22>_0 ;
  wire \Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy[23] ;
  wire \Round_Resultant_Significand/Sgf_Round_R<23>_0 ;
  wire r_mode_0_IBUF_4281;
  wire r_mode_1_IBUF_4282;
  wire \Fourth_Module/SgfRegister_F/Q<0>_0 ;
  wire \Fourth_Module/SgfRegister_F/Q<1>_0 ;
  wire Data_X_5_IBUF_4285;
  wire Data_X_6_IBUF_4286;
  wire Data_X_7_IBUF_4287;
  wire Data_X_8_IBUF_4288;
  wire Data_X_9_IBUF_4289;
  wire Data_X_0_IBUF_4290;
  wire Data_X_1_IBUF_4291;
  wire Data_X_2_IBUF_4292;
  wire Data_X_3_IBUF_4293;
  wire Data_X_4_IBUF_4294;
  wire Data_X_17_IBUF_4295;
  wire Data_X_18_IBUF_4296;
  wire Data_X_15_IBUF_4297;
  wire Data_X_16_IBUF_4298;
  wire Data_Y_5_IBUF_4299;
  wire Data_Y_6_IBUF_4300;
  wire Data_X_19_IBUF_4301;
  wire Data_Y_7_IBUF_4302;
  wire Data_Y_8_IBUF_4303;
  wire Data_Y_9_IBUF_4304;
  wire Data_X_10_IBUF_4305;
  wire Data_X_13_IBUF_4306;
  wire Data_X_14_IBUF_4307;
  wire Data_X_11_IBUF_4308;
  wire Data_X_12_IBUF_4309;
  wire Data_Y_0_IBUF_4310;
  wire Data_X_27_IBUF_4311;
  wire Data_Y_1_IBUF_4312;
  wire Data_X_28_IBUF_4313;
  wire Data_Y_2_IBUF_4314;
  wire Data_X_25_IBUF_4315;
  wire Data_Y_3_IBUF_4316;
  wire Data_X_26_IBUF_4317;
  wire Data_Y_4_IBUF_4318;
  wire Data_X_29_IBUF_4319;
  wire Data_X_20_IBUF_4320;
  wire Data_X_23_IBUF_4321;
  wire Data_X_24_IBUF_4322;
  wire Data_X_21_IBUF_4323;
  wire Data_X_22_IBUF_4324;
  wire Data_X_30_IBUF_4325;
  wire Data_X_31_IBUF_4326;
  wire beg_FSM_IBUF_4327;
  wire \clk_BUFGP/IBUFG_4328 ;
  wire Data_Y_17_IBUF_4329;
  wire Data_Y_18_IBUF_4330;
  wire Data_Y_15_IBUF_4331;
  wire Data_Y_16_IBUF_4332;
  wire Data_Y_19_IBUF_4333;
  wire Data_Y_10_IBUF_4334;
  wire Data_Y_13_IBUF_4335;
  wire Data_Y_14_IBUF_4336;
  wire Data_Y_11_IBUF_4337;
  wire Data_Y_12_IBUF_4338;
  wire Data_Y_27_IBUF_4339;
  wire Data_Y_28_IBUF_4340;
  wire Data_Y_25_IBUF_4341;
  wire Data_Y_26_IBUF_4342;
  wire Data_Y_29_IBUF_4343;
  wire Data_Y_20_IBUF_4344;
  wire Data_Y_23_IBUF_4345;
  wire Data_Y_24_IBUF_4346;
  wire Data_Y_21_IBUF_4347;
  wire Data_Y_22_IBUF_4348;
  wire Data_Y_30_IBUF_4349;
  wire Data_Y_31_IBUF_4350;
  wire Sh261_0;
  wire Sh311_0;
  wire Sh281_0;
  wire Sh291_0;
  wire Sh341_0;
  wire Sh361_0;
  wire Sh13;
  wire \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005192_0 ;
  wire Sh20;
  wire Sh24;
  wire Sh421;
  wire Sh18;
  wire Sh22;
  wire Sh19;
  wire Sh23;
  wire \Operands_Classification/ASRegister/Q_0_4369 ;
  wire N19;
  wire Sh321;
  wire Sh331;
  wire \FS_Module/state_reg_FSM_FFd17_4373 ;
  wire \FS_Module/state_reg_FSM_FFd48_4374 ;
  wire \Fourth_Module/SgfRegister_F/Q<12>_0 ;
  wire \Fourth_Module/SgfRegister_F/Q<13>_0 ;
  wire \Fourth_Module/SgfRegister_F/Q<14>_0 ;
  wire \Fourth_Module/SgfRegister_F/Q<15>_0 ;
  wire \FS_Module/state_reg_FSM_FFd16_4391 ;
  wire \Fourth_Module/SgfRegister_F/Q<2>_0 ;
  wire \Fourth_Module/SgfRegister_F/Q<3>_0 ;
  wire load_18;
  wire \FS_Module/state_reg_FSM_FFd1-In ;
  wire \FS_Module/state_reg_FSM_FFd5-In ;
  wire Sh102;
  wire Sh371;
  wire N23;
  wire \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005121 ;
  wire Sh391_4416;
  wire Sh15;
  wire Sh8;
  wire Sh16;
  wire \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000511_0 ;
  wire \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000520 ;
  wire \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n00051 ;
  wire N13;
  wire \FS_Module/state_reg_FSM_FFd11_4424 ;
  wire \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005201_4425 ;
  wire \FS_Module/state_reg_FSM_FFd12-In_0 ;
  wire \FS_Module/state_reg_FSM_FFd14-In ;
  wire \FS_Module/state_reg_FSM_FFd25-In ;
  wire \FS_Module/state_reg_FSM_FFd39-In_0 ;
  wire \FS_Module/state_reg_FSM_FFd41-In_0 ;
  wire \FS_Module/state_reg_FSM_FFd7-In ;
  wire \FS_Module/state_reg_FSM_FFd10_4432 ;
  wire \FS_Module/state_reg_FSM_FFd21_4433 ;
  wire \FS_Module/state_reg_FSM_FFd22_4434 ;
  wire N33;
  wire \FS_Module/state_reg_FSM_FFd23-In ;
  wire N11;
  wire N9;
  wire \Update_Exponent_First_Time/SExp/Maddsub_Data_S_cy[2] ;
  wire \Update_Exponent_First_Time/SExp/Maddsub_Data_S_cy[5] ;
  wire \FS_Module/state_reg_FSM_FFd35-In ;
  wire N7;
  wire \FS_Module/state_reg_FSM_FFd46-In ;
  wire \FS_Module/state_reg_FSM_FFd45_4445 ;
  wire \FS_Module/state_reg_FSM_FFd31_4447 ;
  wire \FS_Module/state_reg_FSM_FFd27_4448 ;
  wire \FS_Module/state_reg_FSM_FFd34_4450 ;
  wire \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005202_4451 ;
  wire \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005122_4452 ;
  wire \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000521 ;
  wire Sh351;
  wire \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000525 ;
  wire \FS_Module/state_reg_FSM_FFd37-In ;
  wire \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000519 ;
  wire N31;
  wire \Operands_Classification/GTComparator/Mcompar_gthan_lutdi13_18 ;
  wire \Operands_Classification/GTComparator/Mcompar_gthan_lutdi15_12 ;
  wire \Operands_Classification/GTComparator/Mcompar_gthan_lutdi14_10 ;
  wire \Operands_Classification/GTComparator/Mcompar_gthan_lutdi12_2 ;
  wire \Operands_Classification/GTComparator/Mcompar_gthan_lutdi2_52 ;
  wire \Operands_Classification/GTComparator/Mcompar_gthan_lutdi3_46 ;
  wire \Operands_Classification/GTComparator/Mcompar_gthan_lutdi1_40 ;
  wire \Operands_Classification/GTComparator/Mcompar_gthan_lutdi_28 ;
  wire \Operands_Classification/GTComparator/Mcompar_gthan_lutdi5_79 ;
  wire \Operands_Classification/GTComparator/Mcompar_gthan_lutdi6_70 ;
  wire \Operands_Classification/GTComparator/Mcompar_gthan_lutdi4_66 ;
  wire \Operands_Classification/GTComparator/Mcompar_gthan_lutdi7_61 ;
  wire \Operands_Classification/GTComparator/Mcompar_gthan_lutdi9_109 ;
  wire \Operands_Classification/GTComparator/Mcompar_gthan_lutdi10_100 ;
  wire \Operands_Classification/GTComparator/Mcompar_gthan_lutdi8_96 ;
  wire \Operands_Classification/GTComparator/Mcompar_gthan_lutdi11_91 ;
  wire \Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_lut1_228 ;
  wire \Zero_Except_Module/Zero_Info_Register/Q_0_rstpot ;
  wire \Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_lut_193 ;
  wire \Operands_Classification/gt ;
  wire \ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<30>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<21>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<24>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<23>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<18>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<19>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<16>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<10>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<31>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<17>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \clk/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \beg_FSM/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<15>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<23>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<25>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<20>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<11>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<13>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<14>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<21>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<29>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<27>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \rst_FSM/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<28>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<24>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<26>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<30>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<22>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<12>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \r_mode<0>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<31>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \r_mode<1>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Round_Resultant_Significand/Dir_M/Mmux_S171_lut_567 ;
  wire \Add_Sub_Significands/eq_sgn_INV_44_o2_532 ;
  wire \Round_Resultant_Significand/Round_Sgf_N/Q<2>_rt_549 ;
  wire \Round_Resultant_Significand/Round_Sgf_N/Q<1>_rt_546 ;
  wire \Round_Resultant_Significand/Round_Sgf_N/Q<3>_rt_536 ;
  wire \rst/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<6>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<7>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \add_subt/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<5>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<8>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<9>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<9>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<10>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<19>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<4>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<15>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<13>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<17>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<18>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<16>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<5>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<6>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<8>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<7>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<2>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<3>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<0>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<1>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<2>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<14>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<11>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<4>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<1>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<20>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<25>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<26>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<28>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<0>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_Y<3>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<12>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<29>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Data_X<27>/ProtoComp43.INTERMDISABLE_GND.0 ;
  wire \Select_Final_Exponent/exp_fp_reg/Q<5>_rt_1020 ;
  wire \Select_Final_Exponent/exp_fp_reg/Q<7>_rt_1008 ;
  wire \Operands_Classification/DMC/Q<31>_rt_1006 ;
  wire \Select_Final_Exponent/exp_fp_reg/Q<6>_rt_1003 ;
  wire \Sel_10_P_a/Q_0_rstpot_1113 ;
  wire \Sel_10_P_a/Q_0_pack_1 ;
  wire \Sel_10_P_b/Q_0_rstpot_1110 ;
  wire \Select_Final_Significand/Sgf_ieee_Register/Q<16>_rt_1099 ;
  wire \Select_Final_Significand/Sgf_ieee_Register/Q<18>_rt_1087 ;
  wire \Select_Final_Significand/Sgf_ieee_Register/Q<19>_rt_1085 ;
  wire \Select_Final_Significand/Sgf_ieee_Register/Q<17>_rt_1082 ;
  wire \FS_Module/state_reg_FSM_FFd3-In ;
  wire \FS_Module/state_reg_FSM_FFd7-In_pack_1 ;
  wire \FS_Module/state_reg_FSM_FFd9_rt_1146 ;
  wire \Select_Final_Exponent/exp_def<3>_pack_6 ;
  wire \Select_Final_Exponent/overflow_reg ;
  wire \FS_Module/state_reg_FSM_FFd12-In ;
  wire \FS_Module/state_reg_FSM_FFd25_rt_1419 ;
  wire \FS_Module/state_reg_FSM_FFd23-In_pack_1 ;
  wire \FS_Module/state_reg_FSM_FFd20_1191 ;
  wire \FS_Module/state_reg_FSM_FFd18-In ;
  wire \FS_Module/state_reg_FSM_FFd19-In ;
  wire \FS_Module/state_reg_FSM_FFd20-In ;
  wire \FS_Module/state_reg_FSM_FFd18_1185 ;
  wire \FS_Module/state_reg_FSM_FFd21-In ;
  wire \Round_Resultant_Significand/Round_Sgf_N/Q<9>_rt_1630 ;
  wire \Round_Resultant_Significand/Round_Sgf_N/Q<10>_rt_1622 ;
  wire \Round_Resultant_Significand/Round_Sgf_N/Q<8>_rt_1620 ;
  wire \Round_Resultant_Significand/Round_Sgf_N/Q<11>_rt_1612 ;
  wire \Round_Resultant_Significand/Round_Sgf_N/Q<6>_rt_1602 ;
  wire \Round_Resultant_Significand/Round_Sgf_N/Q<4>_rt_1600 ;
  wire \Round_Resultant_Significand/Round_Sgf_N/Q<5>_rt_1592 ;
  wire \Round_Resultant_Significand/Round_Sgf_N/Q<7>_rt_1589 ;
  wire \Round_Resultant_Significand/Round_Sgf_N/Q<13>_rt_1659 ;
  wire \Round_Resultant_Significand/Round_Sgf_N/Q<12>_rt_1657 ;
  wire \Round_Resultant_Significand/Round_Sgf_N/Q<14>_rt_1656 ;
  wire \Round_Resultant_Significand/Round_Sgf_N/Q<15>_rt_1652 ;
  wire \as_5_P_Reg/Q_0_rstpot_1784 ;
  wire \Round_Resultant_Significand/Round_Sgf_N/Q<18>_rt_1693 ;
  wire \Round_Resultant_Significand/Round_Sgf_N/Q<16>_rt_1691 ;
  wire \Round_Resultant_Significand/Round_Sgf_N/Q<17>_rt_1683 ;
  wire \Round_Resultant_Significand/Round_Sgf_N/Q<19>_rt_1680 ;
  wire \Update_Exponent_First_Time/SExp/Maddsub_Data_S_cy<5>_pack_10 ;
  wire N11_pack_6;
  wire \First_Und_Ov_Search/overflow_reg ;
  wire \First_Und_Ov_Search/underflow_reg ;
  wire \Round_Resultant_Significand/Round_Sgf_N/Q<21>_rt_1719 ;
  wire \Round_Resultant_Significand/Round_Sgf_N/Q<20>_rt_1717 ;
  wire \Round_Resultant_Significand/Round_Sgf_N/Q<22>_rt_1716 ;
  wire \Round_Resultant_Significand/Round_Sgf_N/Q<23>_rt_1712 ;
  wire \Update_Exponent_First_Time/exp<0>_pack_1 ;
  wire \Operands_Classification/YRegister/Q<12>_rt_2601 ;
  wire \Operands_Classification/YRegister/Q<14>_rt_2589 ;
  wire \Operands_Classification/YRegister/Q<15>_rt_2587 ;
  wire \Operands_Classification/YRegister/Q<13>_rt_2584 ;
  wire \Fourth_Module/SgfShift/Q<12>_rt_1956 ;
  wire \Fourth_Module/SgfShift/Q<14>_rt_1944 ;
  wire \Fourth_Module/SgfShift/Q<15>_rt_1942 ;
  wire \Fourth_Module/SgfShift/Q<13>_rt_1939 ;
  wire \Sel_5_P_exp/Q_0_rstpot_1983 ;
  wire \Fourth_Module/SgfShift/Q<0>_rt_1881 ;
  wire \Fourth_Module/SgfShift/Q<2>_rt_1869 ;
  wire \Fourth_Module/SgfShift/Q<3>_rt_1867 ;
  wire \Fourth_Module/SgfShift/Q<1>_rt_1864 ;
  wire \FS_Module/state_reg_FSM_FFd49-In ;
  wire \FS_Module/state_reg_FSM_FFd48-In ;
  wire \Update_Exponent_First_Time/exp<4>_pack_2 ;
  wire \Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<6> ;
  wire \Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<5> ;
  wire \Fourth_Module/Sgf_RM<5>_pack_7 ;
  wire \Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<25> ;
  wire \Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<24> ;
  wire \Fourth_Module/Sgf_RM<24>_pack_7 ;
  wire \Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<20> ;
  wire \Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<21> ;
  wire \Fourth_Module/Sgf_RM<20>_pack_7 ;
  wire \FS_Module/state_reg_FSM_FFd44-In ;
  wire N7_pack_3;
  wire \FS_Module/state_reg_FSM_FFd46-In_pack_1 ;
  wire \FS_Module/state_reg_FSM_FFd43-In_2046 ;
  wire \Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<8> ;
  wire \Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<7> ;
  wire \Fourth_Module/Sgf_RM<7>_pack_7 ;
  wire \Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<16> ;
  wire \Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<17> ;
  wire \Fourth_Module/Sgf_RM<16>_pack_7 ;
  wire \Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<4> ;
  wire \Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<3> ;
  wire \Fourth_Module/Sgf_RM<3>_pack_7 ;
  wire \Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<2> ;
  wire \Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<1> ;
  wire \Fourth_Module/Sgf_RM<1>_pack_7 ;
  wire \Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<23> ;
  wire \Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<22> ;
  wire \Fourth_Module/Sgf_RM<22>_pack_7 ;
  wire \Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<26> ;
  wire \Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<0> ;
  wire \Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<9> ;
  wire \Fourth_Module/Sgf_RM<0>_pack_6 ;
  wire \FS_Module/state_reg_FSM_FFd27-In ;
  wire \FS_Module/state_reg_FSM_FFd27_pack_2 ;
  wire \FS_Module/state_reg_FSM_FFd28-In ;
  wire \Fourth_Module/SgfShift/_n0016_inv ;
  wire \FS_Module/state_reg_FSM_FFd29-In ;
  wire \FS_Module/state_reg_FSM_FFd31_pack_3 ;
  wire \FS_Module/state_reg_FSM_FFd31-In ;
  wire \FS_Module/state_reg_FSM_FFd30-In ;
  wire \Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<10> ;
  wire \Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<11> ;
  wire \Fourth_Module/Sgf_RM<10>_pack_7 ;
  wire \Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<13> ;
  wire \Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<12> ;
  wire \Fourth_Module/Sgf_RM<12>_pack_7 ;
  wire \Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<19> ;
  wire \Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<18> ;
  wire \Fourth_Module/Sgf_RM<18>_pack_7 ;
  wire \Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<15> ;
  wire \Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<14> ;
  wire \Fourth_Module/Sgf_RM<14>_pack_7 ;
  wire Data_X_21_IBUF_rt_2453;
  wire Data_X_22_IBUF_rt_2451;
  wire Data_X_20_IBUF_rt_2447;
  wire \FS_Module/state_reg_FSM_FFd33-In ;
  wire \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005192 ;
  wire N58;
  wire N59;
  wire \FS_Module/state_reg_FSM_FFd39-In ;
  wire Sh291_3361;
  wire N48;
  wire N49;
  wire Sh261;
  wire N40;
  wire N41;
  wire \FS_Module/state_reg_FSM_FFd37_3336 ;
  wire \FS_Module/state_reg_FSM_FFd39_pack_2 ;
  wire \FS_Module/state_reg_FSM_FFd41_3333 ;
  wire \FS_Module/state_reg_FSM_FFd37-In_rt_3329 ;
  wire Sh341_3412;
  wire N52;
  wire N53;
  wire Data_X_0_IBUF_rt_2710;
  wire Data_X_2_IBUF_rt_2698;
  wire Data_X_3_IBUF_rt_2696;
  wire Data_X_1_IBUF_rt_2693;
  wire Data_Y_8_IBUF_rt_2635;
  wire Data_Y_10_IBUF_rt_2623;
  wire Data_Y_11_IBUF_rt_2621;
  wire Data_Y_9_IBUF_rt_2618;
  wire N46;
  wire N47;
  wire Sh111;
  wire N51;
  wire N50;
  wire Sh281_2754;
  wire N45;
  wire N44;
  wire N42;
  wire N43;
  wire \FS_Module/state_reg_FSM_FFd41-In ;
  wire N57;
  wire N56;
  wire \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000511_2997 ;
  wire N39;
  wire Sh311;
  wire N38;
  wire N54;
  wire Sh361;
  wire \Operands_Classification/DmC/Q<21>_pack_3 ;
  wire N55;
  wire N21;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/ESRegister/Q_7/CLK ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/ESRegister/Q_6/CLK ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_xor<7>/DI<0> ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_xor<7>/DI<1> ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_xor<7>/DI<2> ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/ESRegister/Q_5/CLK ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/ESRegister/Q_4/CLK ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/ESRegister/Q_3/CLK ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/ESRegister/Q_2/CLK ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_cy<3>/DI<0> ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_cy<3>/DI<1> ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_cy<3>/DI<2> ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_cy<3>/DI<3> ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/ESRegister/Q_1/CLK ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/ESRegister/Q_0/CLK ;
  wire \NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_3/CLK ;
  wire \NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_2/CLK ;
  wire \NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<3>/DI<2> ;
  wire \NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<3>/DI<3> ;
  wire \NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_1/CLK ;
  wire \NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_0/CLK ;
  wire \NlwBufferSignal_Zero_Except_Module/Zero_Info_Register/Q_0/CLK ;
  wire \NlwBufferSignal_Operands_Classification/CMPRegister/Q_0/CLK ;
  wire \NlwBufferSignal_final_result_ieee_23_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_2_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_15_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_17_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_3_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_20_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_0_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_1_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_18_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_4_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_16_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_5_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_19_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_24_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_6_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_7_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_22_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_27_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_9_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_26_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_31_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_28_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_21_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_25_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_29_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_30_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_8_OBUF/I ;
  wire \NlwBufferSignal_underflow_flag_OBUF/I ;
  wire \NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_7/CLK ;
  wire \NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_6/CLK ;
  wire \NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<7>/DI<0> ;
  wire \NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<7>/DI<1> ;
  wire \NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<7>/DI<2> ;
  wire \NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<7>/DI<3> ;
  wire \NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_5/CLK ;
  wire \NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_4/CLK ;
  wire \NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_11/CLK ;
  wire \NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_10/CLK ;
  wire \NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<11>/DI<0> ;
  wire \NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<11>/DI<1> ;
  wire \NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<11>/DI<2> ;
  wire \NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<11>/DI<3> ;
  wire \NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_9/CLK ;
  wire \NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_8/CLK ;
  wire \NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_19/CLK ;
  wire \NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_18/CLK ;
  wire \NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<19>/DI<0> ;
  wire \NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<19>/DI<1> ;
  wire \NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<19>/DI<2> ;
  wire \NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<19>/DI<3> ;
  wire \NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_17/CLK ;
  wire \NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_16/CLK ;
  wire \NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_15/CLK ;
  wire \NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_14/CLK ;
  wire \NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<15>/DI<0> ;
  wire \NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<15>/DI<1> ;
  wire \NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<15>/DI<2> ;
  wire \NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<15>/DI<3> ;
  wire \NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_13/CLK ;
  wire \NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_12/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_24/CLK ;
  wire \NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_26/CLK ;
  wire \NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_xor<26>/DI<0> ;
  wire \NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_25/CLK ;
  wire \NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_24/CLK ;
  wire \NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_23/CLK ;
  wire \NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_22/CLK ;
  wire \NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<23>/DI<0> ;
  wire \NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<23>/DI<1> ;
  wire \NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<23>/DI<2> ;
  wire \NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<23>/DI<3> ;
  wire \NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_21/CLK ;
  wire \NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_20/CLK ;
  wire \NlwBufferSignal_overflow_flag_OBUF/I ;
  wire \NlwBufferSignal_ready_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_14_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_13_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_10_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_11_OBUF/I ;
  wire \NlwBufferSignal_final_result_ieee_12_OBUF/I ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_16/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_15/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_14/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_13/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_12/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_11/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_10/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_0/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_9/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_17/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_8/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_7/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_6/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_5/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_4/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_3/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_31/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_2/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_30/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_29/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_28/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_27/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_26/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_25/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_24/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_23/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_22/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_21/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_20/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_1/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_19/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_18/CLK ;
  wire \NlwBufferSignal_clk_BUFGP/BUFG/IN ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd6/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd6/IN ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_27/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_27/IN ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_31/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_26/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_26/IN ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_30/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_25/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_25/IN ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_29/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_24/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_24/IN ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_28/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_23/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_23/IN ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_22/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_22/IN ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_21/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_21/IN ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_20/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_20/IN ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_3/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_3/IN ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_2/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_2/IN ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_1/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_1/IN ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_0/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_0/IN ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_11/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_11/IN ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_10/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_10/IN ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_9/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_9/IN ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_8/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_8/IN ;
  wire \NlwBufferSignal_Sel_10_P_b/Q_0/CLK ;
  wire \NlwBufferSignal_Sel_10_P_a/Q_0/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_7/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_7/IN ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_6/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_6/IN ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_5/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_5/IN ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_4/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_4/IN ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd2/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd2/IN ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_15/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_15/IN ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_19/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_14/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_14/IN ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_18/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_13/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_13/IN ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_17/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_12/CLK ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_12/IN ;
  wire \NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_16/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd5/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd5/IN ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd4/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd4/IN ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd3/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd1/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd1/IN ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd11/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd11/IN ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd10/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd10/IN ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd9/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd9/IN ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd7/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd7/IN ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd8/CLK ;
  wire \NlwBufferSignal_Select_Final_Significand/Exp_na_Reg/Q_0/CLK ;
  wire \NlwBufferSignal_Select_Final_Significand/Exp_na_Reg/Q_0/IN ;
  wire \NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_5/CLK ;
  wire \NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_22/CLK ;
  wire \NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_4/CLK ;
  wire \NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_3/CLK ;
  wire \NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_2/CLK ;
  wire \NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_1/CLK ;
  wire \NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_0/CLK ;
  wire \NlwBufferSignal_Select_Final_Exponent/exp_fp_reg/Q_5/CLK ;
  wire \NlwBufferSignal_Select_Final_Exponent/exp_fp_reg/Q_2/CLK ;
  wire \NlwBufferSignal_Select_Final_Exponent/exp_fp_reg/Q_3/CLK ;
  wire \NlwBufferSignal_Select_Final_Exponent/exp_fp_reg/Q_3/IN ;
  wire \NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_3/CLK ;
  wire \NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_3/IN ;
  wire \NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_1/CLK ;
  wire \NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_1/IN ;
  wire \NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_7/CLK ;
  wire \NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_7/IN ;
  wire \NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_6/CLK ;
  wire \NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_6/IN ;
  wire \NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_5/CLK ;
  wire \NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_5/IN ;
  wire \NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_0/CLK ;
  wire \NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_0/IN ;
  wire \NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_21/CLK ;
  wire \NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_20/CLK ;
  wire \NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_19/CLK ;
  wire \NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_18/CLK ;
  wire \NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_17/CLK ;
  wire \NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_16/CLK ;
  wire \NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_15/CLK ;
  wire \NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_14/CLK ;
  wire \NlwBufferSignal_Select_Final_Exponent/exp_fp_reg/Q_7/CLK ;
  wire \NlwBufferSignal_Select_Final_Exponent/exp_fp_reg/Q_6/CLK ;
  wire \NlwBufferSignal_Select_Final_Exponent/overflow_am/Q_0/CLK ;
  wire \NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_2/CLK ;
  wire \NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_2/IN ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_10/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_0/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_9/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_9/IN ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_3/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_3/IN ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_2/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_2/IN ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_0/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_0/IN ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_4/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_3/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_2/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_1/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd13/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd13/IN ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd15/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd15/IN ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd23/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd23/IN ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd24/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_11/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_7/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_6/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_5/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_1/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_1/IN ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_15/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_14/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_13/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_12/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_4/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_4/IN ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd17/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd17/IN ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd16/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd16/IN ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd14/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd14/IN ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd12/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd12/IN ;
  wire \NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_13/CLK ;
  wire \NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_12/CLK ;
  wire \NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_11/CLK ;
  wire \NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_10/CLK ;
  wire \NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_9/CLK ;
  wire \NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_8/CLK ;
  wire \NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_7/CLK ;
  wire \NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_6/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd22/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd22/IN ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd21/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd20/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd19/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd18/CLK ;
  wire \NlwBufferSignal_Select_Final_Exponent/exp_fp_reg/Q_4/CLK ;
  wire \NlwBufferSignal_Select_Final_Exponent/exp_fp_reg/Q_0/CLK ;
  wire \NlwBufferSignal_Select_Final_Exponent/exp_fp_reg/Q_1/CLK ;
  wire \NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_4/CLK ;
  wire \NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_4/IN ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_23/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_22/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_21/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_20/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_7/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_7/IN ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_6/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_6/IN ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_5/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_5/IN ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_8/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_8/IN ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_14/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_14/IN ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_13/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_13/IN ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_12/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_12/IN ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_11/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_11/IN ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_16/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_9/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_19/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_18/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_17/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_8/CLK ;
  wire \NlwBufferSignal_as_5_P_Reg/Q_0/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_18/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_18/IN ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/UExp/Q_5/CLK ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/UExp/Q_7/CLK ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/UExp/Q_1/CLK ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/UExp/Q_6/CLK ;
  wire \NlwBufferSignal_First_Und_Ov_Search/R_Overflow/Q_0/CLK ;
  wire \NlwBufferSignal_First_Und_Ov_Search/R_Underflow/Q_0/CLK ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_2/CLK ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_2/IN ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_1/CLK ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_1/IN ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_0/CLK ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_0/IN ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_23/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_23/IN ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_22/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_22/IN ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_21/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_21/IN ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_20/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_20/IN ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_19/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_19/IN ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_17/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_17/IN ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_16/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_16/IN ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_10/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_10/IN ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_15/CLK ;
  wire \NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_15/IN ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/UExp/Q_4/CLK ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/UExp/Q_2/CLK ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/UExp/Q_3/CLK ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/UExp/Q_0/CLK ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_3/CLK ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_3/IN ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_2/CLK ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_2/IN ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_1/CLK ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_0/CLK ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_0/IN ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_23/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_23/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_24/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_24/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_31/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_31/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_30/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_30/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_3/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_3/IN ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_15/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_2/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_2/IN ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_14/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_1/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_1/IN ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_13/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_0/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_0/IN ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_12/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_27/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_27/IN ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_26/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_26/IN ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_25/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_25/IN ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_24/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_24/IN ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_0/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_0/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_23/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_23/IN ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_15/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_15/IN ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_14/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_14/IN ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_13/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_13/IN ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_12/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_12/IN ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_29/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_29/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_11/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_11/IN ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_15/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_10/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_10/IN ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_14/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_9/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_9/IN ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_13/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_8/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_8/IN ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_12/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_25/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_25/IN ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_24/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_24/IN ;
  wire \NlwBufferSignal_Sel_5_P_exp/Q_0/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_7/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_7/IN ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_3/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_6/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_6/IN ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_2/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_5/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_5/IN ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_1/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_4/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_4/IN ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_0/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd25/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd25/IN ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_7/CLK ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_7/IN ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_3/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd49/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd48/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_23/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_23/IN ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_22/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_22/IN ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_21/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_21/IN ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_20/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_20/IN ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_19/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_19/IN ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_18/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_18/IN ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_17/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_17/IN ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_16/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_16/IN ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_6/CLK ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_5/CLK ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_4/CLK ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_4/IN ;
  wire \NlwBufferSignal_Fourth_Module/SgfShift/Q_5/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfShift/Q_6/CLK ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_7/CLK ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_7/IN ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_6/CLK ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_6/IN ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_5/CLK ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_5/IN ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_4/CLK ;
  wire \NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_4/IN ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd26/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd26/IN ;
  wire \NlwBufferSignal_Fourth_Module/SgfShift/Q_24/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfShift/Q_25/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfShift/Q_20/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfShift/Q_21/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd46/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd46/IN ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd45/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd45/IN ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd44/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd43/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd47/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd47/IN ;
  wire \NlwBufferSignal_Fourth_Module/SgfShift/Q_7/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfShift/Q_8/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfShift/Q_16/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfShift/Q_17/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfShift/Q_3/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfShift/Q_4/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd35/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd35/IN ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd36/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd36/IN ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_31/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_31/IN ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_30/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_30/IN ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_29/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_29/IN ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_28/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_28/IN ;
  wire \NlwBufferSignal_Fourth_Module/SgfShift/Q_1/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfShift/Q_2/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfShift/Q_22/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfShift/Q_23/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfShift/Q_26/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfShift/Q_9/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfShift/Q_0/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd30/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd31/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd29/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd28/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd27/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfShift/Q_10/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfShift/Q_11/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfShift/Q_12/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfShift/Q_13/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfShift/Q_18/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfShift/Q_19/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfShift/Q_14/CLK ;
  wire \NlwBufferSignal_Fourth_Module/SgfShift/Q_15/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_27/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_27/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_26/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_26/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_25/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_25/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_19/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_19/IN ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_18/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_18/IN ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_17/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_17/IN ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_16/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_16/IN ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_27/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_27/IN ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_26/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_26/IN ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_22/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_25/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_25/IN ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_21/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_24/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_24/IN ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_20/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd34/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd34/IN ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd33/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd32/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd32/IN ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_7/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_7/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_6/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_6/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_9/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_9/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_13/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_13/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_31/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_31/IN ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_30/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_30/IN ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_29/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_29/IN ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_28/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_28/IN ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd40/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd40/IN ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_23/CLK ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_22/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_27/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_27/IN ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_26/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_26/IN ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_25/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_25/IN ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_24/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_24/IN ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd41/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd41/IN ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd39/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd39/IN ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd38/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd38/IN ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd37/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_1/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_1/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_7/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_7/IN ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_6/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_6/IN ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_5/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_5/IN ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_4/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_4/IN ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_28/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_28/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_11/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_11/IN ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_3/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_10/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_10/IN ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_2/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_9/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_9/IN ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_1/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_8/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_8/IN ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_0/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_3/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_3/IN ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_11/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_2/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_2/IN ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_10/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_1/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_1/IN ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_9/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_0/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_0/IN ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_8/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_2/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_2/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_4/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_4/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_7/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_7/IN ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_6/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_6/IN ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_5/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_5/IN ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_4/CLK ;
  wire \NlwBufferSignal_Operands_Classification/XRegister/Q_4/IN ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_7/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_7/IN ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_6/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_6/IN ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_5/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_5/IN ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_4/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_4/IN ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_15/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_15/IN ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_14/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_14/IN ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_13/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_13/IN ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_12/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_12/IN ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_1/CLK ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_9/CLK ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_10/CLK ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_0/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_23/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_23/IN ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_22/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_22/IN ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_21/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_21/IN ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_20/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_20/IN ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_11/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_11/IN ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_10/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_10/IN ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_9/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_9/IN ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_8/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_8/IN ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_5/CLK ;
  wire \NlwBufferSignal_Operands_Classification/ASRegister/Q_0/CLK ;
  wire \NlwBufferSignal_Operands_Classification/ASRegister/Q_0/IN ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_31/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_30/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_30/IN ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_29/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_29/IN ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_28/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_28/IN ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_19/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_19/CLK ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_3/CLK ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_17/CLK ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_11/CLK ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_18/CLK ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_14/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd42/CLK ;
  wire \NlwBufferSignal_FS_Module/state_reg_FSM_FFd42/IN ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_12/CLK ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_13/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_15/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_15/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_14/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_14/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_11/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_11/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_10/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_10/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_3/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_3/CLK ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_4/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_19/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_19/IN ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_18/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_18/IN ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_17/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_17/IN ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_16/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_16/IN ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_19/CLK ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_16/CLK ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_15/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_23/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_23/IN ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_22/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_22/IN ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_21/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_21/IN ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_20/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DYP/Q_20/IN ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_25/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_18/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_18/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_20/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_20/CLK ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_8/CLK ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_7/CLK ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_6/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_19/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_19/IN ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_18/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_18/IN ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_17/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_17/IN ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_16/CLK ;
  wire \NlwBufferSignal_Operands_Classification/YRegister/Q_16/IN ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_12/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_12/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_5/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_5/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_8/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_8/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_22/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_22/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_17/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_17/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_16/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_16/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DMC/Q_21/CLK ;
  wire \NlwBufferSignal_Operands_Classification/DmC/Q_21/CLK ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_2/CLK ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_24/CLK ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_21/CLK ;
  wire \NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_20/CLK ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_CO[0]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_CO[1]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_CO[2]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_O[0]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_O[1]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_O[2]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_O[3]_UNCONNECTED ;
  wire \NLW_ProtoComp20.CYINITGND_O_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<3>_O[0]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<3>_O[1]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<3>_O[2]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<3>_O[3]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<7>_O[0]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<7>_O[1]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<7>_O[2]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<7>_O[3]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<11>_CO[0]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<11>_CO[1]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<11>_CO[2]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<11>_O[0]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<11>_O[1]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<11>_O[2]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<11>_O[3]_UNCONNECTED ;
  wire GND;
  wire \NLW_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_xor<7>_CO[0]_UNCONNECTED ;
  wire \NLW_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_xor<7>_CO[1]_UNCONNECTED ;
  wire \NLW_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_xor<7>_CO[2]_UNCONNECTED ;
  wire \NLW_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_xor<7>_CO[3]_UNCONNECTED ;
  wire \NLW_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_xor<7>_DI[3]_UNCONNECTED ;
  wire \NLW_ProtoComp35.CYINITVCC_O_UNCONNECTED ;
  wire \NLW_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_13.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_12.A5LUT_O_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy1_CO[1]_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy1_CO[2]_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy1_CO[3]_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy1_DI[1]_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy1_DI[2]_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy1_DI[3]_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy1_O[0]_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy1_O[1]_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy1_O[2]_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy1_O[3]_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy1_S[1]_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy1_S[2]_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy1_S[3]_UNCONNECTED ;
  wire VCC;
  wire \NLW_N0_7.A5LUT_O_UNCONNECTED ;
  wire \NLW_ProtoComp31.CYINITVCC_O_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy<3>_O[0]_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy<3>_O[1]_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy<3>_O[2]_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy<3>_O[3]_UNCONNECTED ;
  wire \NLW_N1_41.D5LUT_O_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy_CO[0]_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy_CO[1]_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy_CO[2]_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy_O[0]_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy_O[1]_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy_O[2]_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy_O[3]_UNCONNECTED ;
  wire \NLW_N1_11.C5LUT_O_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_inv1_cy_CO[1]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_inv1_cy_CO[2]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_inv1_cy_CO[3]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_inv1_cy_DI[0]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_inv1_cy_DI[1]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_inv1_cy_DI[2]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_inv1_cy_DI[3]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_inv1_cy_O[0]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_inv1_cy_O[1]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_inv1_cy_O[2]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_inv1_cy_O[3]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_inv1_cy_S[1]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_inv1_cy_S[2]_UNCONNECTED ;
  wire \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_inv1_cy_S[3]_UNCONNECTED ;
  wire \NLW_N0_6.A6LUT_O_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy<7>_O[0]_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy<7>_O[1]_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy<7>_O[2]_UNCONNECTED ;
  wire \NLW_Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy<7>_O[3]_UNCONNECTED ;
  wire \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<11>_CO[0]_UNCONNECTED ;
  wire \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<11>_CO[1]_UNCONNECTED ;
  wire \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<11>_CO[2]_UNCONNECTED ;
  wire \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<19>_CO[0]_UNCONNECTED ;
  wire \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<19>_CO[1]_UNCONNECTED ;
  wire \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<19>_CO[2]_UNCONNECTED ;
  wire \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<15>_CO[0]_UNCONNECTED ;
  wire \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<15>_CO[1]_UNCONNECTED ;
  wire \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<15>_CO[2]_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Dir_M/Mmux_S171_cy_CO[1]_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Dir_M/Mmux_S171_cy_CO[2]_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Dir_M/Mmux_S171_cy_CO[3]_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Dir_M/Mmux_S171_cy_DI[1]_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Dir_M/Mmux_S171_cy_DI[2]_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Dir_M/Mmux_S171_cy_DI[3]_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Dir_M/Mmux_S171_cy_O[0]_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Dir_M/Mmux_S171_cy_O[1]_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Dir_M/Mmux_S171_cy_O[2]_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Dir_M/Mmux_S171_cy_O[3]_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Dir_M/Mmux_S171_cy_S[1]_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Dir_M/Mmux_S171_cy_S[2]_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Dir_M/Mmux_S171_cy_S[3]_UNCONNECTED ;
  wire \NLW_N1_40.A5LUT_O_UNCONNECTED ;
  wire \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_xor<26>_CO[0]_UNCONNECTED ;
  wire \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_xor<26>_CO[1]_UNCONNECTED ;
  wire \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_xor<26>_CO[2]_UNCONNECTED ;
  wire \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_xor<26>_CO[3]_UNCONNECTED ;
  wire \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_xor<26>_DI[2]_UNCONNECTED ;
  wire \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_xor<26>_DI[3]_UNCONNECTED ;
  wire \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_xor<26>_O[3]_UNCONNECTED ;
  wire \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_xor<26>_S[3]_UNCONNECTED ;
  wire \NLW_N0_4.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_18.D5LUT_O_UNCONNECTED ;
  wire \NLW_ProtoComp40.CYINITGND_O_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_17.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_16.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_5.A5LUT_O_UNCONNECTED ;
  wire \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<23>_CO[0]_UNCONNECTED ;
  wire \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<23>_CO[1]_UNCONNECTED ;
  wire \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<23>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_26.D5LUT_O_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<11>_CO[0]_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<11>_CO[1]_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<11>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_25.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_24.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_23.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_22.D5LUT_O_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_21.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_20.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_19.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_30.D5LUT_O_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<15>_CO[0]_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<15>_CO[1]_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<15>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_29.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_28.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_27.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_34.D5LUT_O_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<19>_CO[0]_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<19>_CO[1]_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<19>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_33.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_32.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_31.A5LUT_O_UNCONNECTED ;
  wire \NLW_N1_38.D5LUT_O_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<23>_CO[0]_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<23>_CO[1]_UNCONNECTED ;
  wire \NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<23>_CO[2]_UNCONNECTED ;
  wire \NLW_N1_37.C5LUT_O_UNCONNECTED ;
  wire \NLW_N1_36.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_35.A5LUT_O_UNCONNECTED ;
  wire [31 : 0] \Operands_Classification/XRegister/Q ;
  wire [31 : 0] \Operands_Classification/YRegister/Q ;
  wire [7 : 0] \Update_Exponent_First_Time/RExp/Q ;
  wire [7 : 0] \Update_Exponent_First_Time/UExp/Q ;
  wire [31 : 0] \Tenth_Module/Cresult_Reg/Q ;
  wire [31 : 0] \Tenth_Module/Final_Result_IEEE/Q ;
  wire [26 : 0] \Fourth_Module/SgfShift/Q ;
  wire [7 : 0] \Update_Exponent_First_Time/exp ;
  wire [31 : 0] \Operands_Classification/DMC/Q ;
  wire [7 : 0] \Normalization_Smallest_Significand/ESRegister/Q ;
  wire [26 : 0] \Fourth_Module/Sgf_RM ;
  wire [26 : 0] \Add_Sub_Significands/R_Sgf/Q ;
  wire [7 : 0] \Select_Final_Exponent/exp_u_register/Q ;
  wire [7 : 0] \Select_Final_Exponent/exp_fp_reg/Q ;
  wire [7 : 0] \Select_Final_Exponent/exp_def ;
  wire [23 : 0] \Round_Resultant_Significand/Round_Sgf_N/Q ;
  wire [24 : 0] \Round_Resultant_Significand/Sgf_Ready_Reg/Q ;
  wire [4 : 4] \Select_Final_Exponent/exp_po/Maddsub_Data_S_cy ;
  wire [22 : 0] \Select_Final_Significand/Sgf_ieee_Register/Q ;
  wire [25 : 0] \Normalization_Smallest_Significand/SGFmRegister/Q ;
  wire [31 : 0] \Operands_Classification/DmC/Q ;
  wire [31 : 0] \Operands_Classification/DYP/Q ;
  wire [3 : 3] \Normalization_Smallest_Significand/SExp/Maddsub_Data_S_cy ;
  wire [25 : 0] \Fourth_Module/SgfRegister_F/Q ;
  wire [7 : 0] \Update_Exponent_First_Time/Exp_F_ieee/Q ;
  wire [15 : 0] \Operands_Classification/GTComparator/Mcompar_gthan_lut ;
  wire [7 : 0] \Normalization_Smallest_Significand/subt_exp ;
  wire [7 : 0] \Normalization_Smallest_Significand/SExp/Maddsub_Data_S_lut ;
  wire [25 : 0] \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut ;
  wire [26 : 0] \Add_Sub_Significands/r_add_subt_sgf ;
  wire [10 : 0] \Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut ;
  wire [24 : 0] \Round_Resultant_Significand/Sgf_Rounded ;
  wire [0 : 0] \Round_Resultant_Significand/Round_Adder/Madd_Data_S_lut ;
  wire [23 : 0] \Round_Resultant_Significand/Sgf_Round_R ;
  wire [31 : 0] \Tenth_Module/final_result_reg ;
  wire [22 : 0] \Select_Final_Significand/Sgf_R_ieee_reg ;
  wire [7 : 0] \Update_Exponent_First_Time/exp_update ;
  wire [31 : 0] \Operands_Classification/MDM ;
  wire [31 : 0] \Operands_Classification/MDm ;
  wire [25 : 0] \Normalization_Smallest_Significand/sgfsn ;
  wire [31 : 31] \Operands_Classification/QYF ;
  initial $sdf_annotate("netgen/par/fpu_multiplication_function_timesim.sdf");
  X_LUT6 #(
    .LOC ( "SLICE_X69Y127" ),
    .INIT ( 64'hFF0000FFFF0000FF ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lut<15>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\Operands_Classification/XRegister/Q [30]),
    .ADR4(\Operands_Classification/YRegister/Q [30]),
    .ADR5(1'b1),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lut [15])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X69Y127" ),
    .INIT ( 32'hFF00FFFF ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lutdi15  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\Operands_Classification/XRegister/Q [30]),
    .ADR4(\Operands_Classification/YRegister/Q [30]),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lutdi15_12 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X69Y127" ))
  \Operands_Classification/GTComparator/Mcompar_gthan_cy<15>  (
    .CI(\Operands_Classification/GTComparator/Mcompar_gthan_cy[11] ),
    .CYINIT(1'b0),
    .CO({\Operands_Classification/GTComparator/Mcompar_gthan_cy[15] , 
\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_CO[2]_UNCONNECTED , 
\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_CO[1]_UNCONNECTED , 
\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_CO[0]_UNCONNECTED }),
    .DI({\Operands_Classification/GTComparator/Mcompar_gthan_lutdi15_12 , \Operands_Classification/GTComparator/Mcompar_gthan_lutdi14_10 , 
\Operands_Classification/GTComparator/Mcompar_gthan_lutdi13_18 , \Operands_Classification/GTComparator/Mcompar_gthan_lutdi12_2 }),
    .O({\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_O[3]_UNCONNECTED , 
\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_O[2]_UNCONNECTED , 
\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_O[1]_UNCONNECTED , 
\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_O[0]_UNCONNECTED }),
    .S({\Operands_Classification/GTComparator/Mcompar_gthan_lut [15], \Operands_Classification/GTComparator/Mcompar_gthan_lut [14], 
\Operands_Classification/GTComparator/Mcompar_gthan_lut [13], \Operands_Classification/GTComparator/Mcompar_gthan_lut [12]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X69Y127" ),
    .INIT ( 64'hA00A5005A00A5005 ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lut<14>  (
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/XRegister/Q [28]),
    .ADR3(\Operands_Classification/YRegister/Q [28]),
    .ADR0(\Operands_Classification/XRegister/Q [29]),
    .ADR4(\Operands_Classification/YRegister/Q [29]),
    .ADR5(1'b1),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lut [14])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X69Y127" ),
    .INIT ( 32'hA0AAFAFF ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lutdi14  (
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/XRegister/Q [28]),
    .ADR3(\Operands_Classification/YRegister/Q [28]),
    .ADR0(\Operands_Classification/XRegister/Q [29]),
    .ADR4(\Operands_Classification/YRegister/Q [29]),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lutdi14_10 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X69Y127" ),
    .INIT ( 64'hA50000A5A50000A5 ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lut<13>  (
    .ADR1(1'b1),
    .ADR3(\Operands_Classification/XRegister/Q [26]),
    .ADR4(\Operands_Classification/YRegister/Q [26]),
    .ADR0(\Operands_Classification/XRegister/Q [27]),
    .ADR2(\Operands_Classification/YRegister/Q [27]),
    .ADR5(1'b1),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lut [13])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X69Y127" ),
    .INIT ( 32'hAF0AAFAF ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lutdi13  (
    .ADR1(1'b1),
    .ADR3(\Operands_Classification/XRegister/Q [26]),
    .ADR4(\Operands_Classification/YRegister/Q [26]),
    .ADR0(\Operands_Classification/XRegister/Q [27]),
    .ADR2(\Operands_Classification/YRegister/Q [27]),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lutdi13_18 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X69Y127" ),
    .INIT ( 64'hC0300C03C0300C03 ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lut<12>  (
    .ADR0(1'b1),
    .ADR2(\Operands_Classification/XRegister/Q [24]),
    .ADR4(\Operands_Classification/YRegister/Q [24]),
    .ADR1(\Operands_Classification/XRegister/Q [25]),
    .ADR3(\Operands_Classification/YRegister/Q [25]),
    .ADR5(1'b1),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lut [12])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X69Y127" ),
    .INIT ( 32'hC0FCCCFF ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lutdi12  (
    .ADR0(1'b1),
    .ADR2(\Operands_Classification/XRegister/Q [24]),
    .ADR4(\Operands_Classification/YRegister/Q [24]),
    .ADR1(\Operands_Classification/XRegister/Q [25]),
    .ADR3(\Operands_Classification/YRegister/Q [25]),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lutdi12_2 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X69Y124" ),
    .INIT ( 64'hC0300C03C0300C03 ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lut<3>  (
    .ADR0(1'b1),
    .ADR3(\Operands_Classification/XRegister/Q [6]),
    .ADR1(\Operands_Classification/YRegister/Q [6]),
    .ADR4(\Operands_Classification/XRegister/Q [7]),
    .ADR2(\Operands_Classification/YRegister/Q [7]),
    .ADR5(1'b1),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lut [3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X69Y124" ),
    .INIT ( 32'hFF3F0F03 ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lutdi3  (
    .ADR0(1'b1),
    .ADR3(\Operands_Classification/XRegister/Q [6]),
    .ADR1(\Operands_Classification/YRegister/Q [6]),
    .ADR4(\Operands_Classification/XRegister/Q [7]),
    .ADR2(\Operands_Classification/YRegister/Q [7]),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lutdi3_46 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X69Y124" ))
  \ProtoComp20.CYINITGND  (
    .O(\NLW_ProtoComp20.CYINITGND_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X69Y124" ))
  \Operands_Classification/GTComparator/Mcompar_gthan_cy<3>  (
    .CI(1'b0),
    .CYINIT(1'b0),
    .CO({\Operands_Classification/GTComparator/Mcompar_gthan_cy[3] , \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<3>_CO[2]_UNCONNECTED 
, \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<3>_CO[1]_UNCONNECTED , 
\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<3>_CO[0]_UNCONNECTED }),
    .DI({\Operands_Classification/GTComparator/Mcompar_gthan_lutdi3_46 , \Operands_Classification/GTComparator/Mcompar_gthan_lutdi2_52 , 
\Operands_Classification/GTComparator/Mcompar_gthan_lutdi1_40 , \Operands_Classification/GTComparator/Mcompar_gthan_lutdi_28 }),
    .O({\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<3>_O[3]_UNCONNECTED , 
\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<3>_O[2]_UNCONNECTED , 
\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<3>_O[1]_UNCONNECTED , 
\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<3>_O[0]_UNCONNECTED }),
    .S({\Operands_Classification/GTComparator/Mcompar_gthan_lut [3], \Operands_Classification/GTComparator/Mcompar_gthan_lut [2], 
\Operands_Classification/GTComparator/Mcompar_gthan_lut [1], \Operands_Classification/GTComparator/Mcompar_gthan_lut [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X69Y124" ),
    .INIT ( 64'hC30000C3C30000C3 ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lut<2>  (
    .ADR0(1'b1),
    .ADR3(\Operands_Classification/XRegister/Q [4]),
    .ADR4(\Operands_Classification/YRegister/Q [4]),
    .ADR2(\Operands_Classification/XRegister/Q [5]),
    .ADR1(\Operands_Classification/YRegister/Q [5]),
    .ADR5(1'b1),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lut [2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X69Y124" ),
    .INIT ( 32'hF330F3F3 ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lutdi2  (
    .ADR0(1'b1),
    .ADR3(\Operands_Classification/XRegister/Q [4]),
    .ADR4(\Operands_Classification/YRegister/Q [4]),
    .ADR2(\Operands_Classification/XRegister/Q [5]),
    .ADR1(\Operands_Classification/YRegister/Q [5]),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lutdi2_52 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X69Y124" ),
    .INIT ( 64'hA0500A05A0500A05 ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lut<1>  (
    .ADR1(1'b1),
    .ADR3(\Operands_Classification/XRegister/Q<2>_0 ),
    .ADR0(\Operands_Classification/YRegister/Q [2]),
    .ADR4(\Operands_Classification/XRegister/Q<3>_0 ),
    .ADR2(\Operands_Classification/YRegister/Q [3]),
    .ADR5(1'b1),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lut [1])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X69Y124" ),
    .INIT ( 32'hFF5F0F05 ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lutdi1  (
    .ADR1(1'b1),
    .ADR3(\Operands_Classification/XRegister/Q<2>_0 ),
    .ADR0(\Operands_Classification/YRegister/Q [2]),
    .ADR4(\Operands_Classification/XRegister/Q<3>_0 ),
    .ADR2(\Operands_Classification/YRegister/Q [3]),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lutdi1_40 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X69Y124" ),
    .INIT ( 64'hC30000C3C30000C3 ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lut<0>  (
    .ADR0(1'b1),
    .ADR3(\Operands_Classification/XRegister/Q<0>_0 ),
    .ADR4(\Operands_Classification/YRegister/Q [0]),
    .ADR2(\Operands_Classification/XRegister/Q<1>_0 ),
    .ADR1(\Operands_Classification/YRegister/Q [1]),
    .ADR5(1'b1),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lut [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X69Y124" ),
    .INIT ( 32'hF330F3F3 ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lutdi  (
    .ADR0(1'b1),
    .ADR3(\Operands_Classification/XRegister/Q<0>_0 ),
    .ADR4(\Operands_Classification/YRegister/Q [0]),
    .ADR2(\Operands_Classification/XRegister/Q<1>_0 ),
    .ADR1(\Operands_Classification/YRegister/Q [1]),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lutdi_28 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X69Y125" ),
    .INIT ( 64'hC30000C3C30000C3 ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lut<7>  (
    .ADR0(1'b1),
    .ADR4(\Operands_Classification/XRegister/Q [14]),
    .ADR3(\Operands_Classification/YRegister/Q [14]),
    .ADR1(\Operands_Classification/XRegister/Q [15]),
    .ADR2(\Operands_Classification/YRegister/Q [15]),
    .ADR5(1'b1),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lut [7])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X69Y125" ),
    .INIT ( 32'hCFCF0CCF ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lutdi7  (
    .ADR0(1'b1),
    .ADR4(\Operands_Classification/XRegister/Q [14]),
    .ADR3(\Operands_Classification/YRegister/Q [14]),
    .ADR1(\Operands_Classification/XRegister/Q [15]),
    .ADR2(\Operands_Classification/YRegister/Q [15]),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lutdi7_61 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X69Y125" ))
  \Operands_Classification/GTComparator/Mcompar_gthan_cy<7>  (
    .CI(\Operands_Classification/GTComparator/Mcompar_gthan_cy[3] ),
    .CYINIT(1'b0),
    .CO({\Operands_Classification/GTComparator/Mcompar_gthan_cy[7] , \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<7>_CO[2]_UNCONNECTED 
, \NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<7>_CO[1]_UNCONNECTED , 
\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<7>_CO[0]_UNCONNECTED }),
    .DI({\Operands_Classification/GTComparator/Mcompar_gthan_lutdi7_61 , \Operands_Classification/GTComparator/Mcompar_gthan_lutdi6_70 , 
\Operands_Classification/GTComparator/Mcompar_gthan_lutdi5_79 , \Operands_Classification/GTComparator/Mcompar_gthan_lutdi4_66 }),
    .O({\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<7>_O[3]_UNCONNECTED , 
\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<7>_O[2]_UNCONNECTED , 
\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<7>_O[1]_UNCONNECTED , 
\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<7>_O[0]_UNCONNECTED }),
    .S({\Operands_Classification/GTComparator/Mcompar_gthan_lut [7], \Operands_Classification/GTComparator/Mcompar_gthan_lut [6], 
\Operands_Classification/GTComparator/Mcompar_gthan_lut [5], \Operands_Classification/GTComparator/Mcompar_gthan_lut [4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X69Y125" ),
    .INIT ( 64'hC00C3003C00C3003 ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lut<6>  (
    .ADR0(1'b1),
    .ADR1(\Operands_Classification/XRegister/Q [12]),
    .ADR4(\Operands_Classification/YRegister/Q [12]),
    .ADR3(\Operands_Classification/XRegister/Q [13]),
    .ADR2(\Operands_Classification/YRegister/Q [13]),
    .ADR5(1'b1),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lut [6])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X69Y125" ),
    .INIT ( 32'hCF0CFF0F ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lutdi6  (
    .ADR0(1'b1),
    .ADR1(\Operands_Classification/XRegister/Q [12]),
    .ADR4(\Operands_Classification/YRegister/Q [12]),
    .ADR3(\Operands_Classification/XRegister/Q [13]),
    .ADR2(\Operands_Classification/YRegister/Q [13]),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lutdi6_70 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X69Y125" ),
    .INIT ( 64'hC0300C03C0300C03 ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lut<5>  (
    .ADR0(1'b1),
    .ADR1(\Operands_Classification/XRegister/Q [10]),
    .ADR3(\Operands_Classification/YRegister/Q<10>_0 ),
    .ADR2(\Operands_Classification/XRegister/Q [11]),
    .ADR4(\Operands_Classification/YRegister/Q<11>_0 ),
    .ADR5(1'b1),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lut [5])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X69Y125" ),
    .INIT ( 32'hC0F0FCFF ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lutdi5  (
    .ADR0(1'b1),
    .ADR1(\Operands_Classification/XRegister/Q [10]),
    .ADR3(\Operands_Classification/YRegister/Q<10>_0 ),
    .ADR2(\Operands_Classification/XRegister/Q [11]),
    .ADR4(\Operands_Classification/YRegister/Q<11>_0 ),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lutdi5_79 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X69Y125" ),
    .INIT ( 64'hA0500A05A0500A05 ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lut<4>  (
    .ADR1(1'b1),
    .ADR0(\Operands_Classification/XRegister/Q [8]),
    .ADR3(\Operands_Classification/YRegister/Q<8>_0 ),
    .ADR4(\Operands_Classification/XRegister/Q [9]),
    .ADR2(\Operands_Classification/YRegister/Q<9>_0 ),
    .ADR5(1'b1),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lut [4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X69Y125" ),
    .INIT ( 32'hAFFF0A0F ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lutdi4  (
    .ADR1(1'b1),
    .ADR0(\Operands_Classification/XRegister/Q [8]),
    .ADR3(\Operands_Classification/YRegister/Q<8>_0 ),
    .ADR4(\Operands_Classification/XRegister/Q [9]),
    .ADR2(\Operands_Classification/YRegister/Q<9>_0 ),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lutdi4_66 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X69Y126" ),
    .INIT ( 64'hC00C3003C00C3003 ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lut<11>  (
    .ADR0(1'b1),
    .ADR2(\Operands_Classification/XRegister/Q<22>_0 ),
    .ADR3(\Operands_Classification/YRegister/Q [22]),
    .ADR4(\Operands_Classification/XRegister/Q<23>_0 ),
    .ADR1(\Operands_Classification/YRegister/Q [23]),
    .ADR5(1'b1),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lut [11])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X69Y126" ),
    .INIT ( 32'hF3FF3033 ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lutdi11  (
    .ADR0(1'b1),
    .ADR2(\Operands_Classification/XRegister/Q<22>_0 ),
    .ADR3(\Operands_Classification/YRegister/Q [22]),
    .ADR4(\Operands_Classification/XRegister/Q<23>_0 ),
    .ADR1(\Operands_Classification/YRegister/Q [23]),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lutdi11_91 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X69Y126" ))
  \Operands_Classification/GTComparator/Mcompar_gthan_cy<11>  (
    .CI(\Operands_Classification/GTComparator/Mcompar_gthan_cy[7] ),
    .CYINIT(1'b0),
    .CO({\Operands_Classification/GTComparator/Mcompar_gthan_cy[11] , 
\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<11>_CO[2]_UNCONNECTED , 
\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<11>_CO[1]_UNCONNECTED , 
\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<11>_CO[0]_UNCONNECTED }),
    .DI({\Operands_Classification/GTComparator/Mcompar_gthan_lutdi11_91 , \Operands_Classification/GTComparator/Mcompar_gthan_lutdi10_100 , 
\Operands_Classification/GTComparator/Mcompar_gthan_lutdi9_109 , \Operands_Classification/GTComparator/Mcompar_gthan_lutdi8_96 }),
    .O({\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<11>_O[3]_UNCONNECTED , 
\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<11>_O[2]_UNCONNECTED , 
\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<11>_O[1]_UNCONNECTED , 
\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<11>_O[0]_UNCONNECTED }),
    .S({\Operands_Classification/GTComparator/Mcompar_gthan_lut [11], \Operands_Classification/GTComparator/Mcompar_gthan_lut [10], 
\Operands_Classification/GTComparator/Mcompar_gthan_lut [9], \Operands_Classification/GTComparator/Mcompar_gthan_lut [8]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X69Y126" ),
    .INIT ( 64'hC30000C3C30000C3 ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lut<10>  (
    .ADR0(1'b1),
    .ADR4(\Operands_Classification/XRegister/Q<20>_0 ),
    .ADR3(\Operands_Classification/YRegister/Q [20]),
    .ADR1(\Operands_Classification/XRegister/Q<21>_0 ),
    .ADR2(\Operands_Classification/YRegister/Q [21]),
    .ADR5(1'b1),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lut [10])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X69Y126" ),
    .INIT ( 32'hCFCF0CCF ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lutdi10  (
    .ADR0(1'b1),
    .ADR4(\Operands_Classification/XRegister/Q<20>_0 ),
    .ADR3(\Operands_Classification/YRegister/Q [20]),
    .ADR1(\Operands_Classification/XRegister/Q<21>_0 ),
    .ADR2(\Operands_Classification/YRegister/Q [21]),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lutdi10_100 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X69Y126" ),
    .INIT ( 64'hC0300C03C0300C03 ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lut<9>  (
    .ADR0(1'b1),
    .ADR1(\Operands_Classification/XRegister/Q [18]),
    .ADR3(\Operands_Classification/YRegister/Q [18]),
    .ADR2(\Operands_Classification/XRegister/Q [19]),
    .ADR4(\Operands_Classification/YRegister/Q [19]),
    .ADR5(1'b1),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lut [9])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X69Y126" ),
    .INIT ( 32'hC0F0FCFF ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lutdi9  (
    .ADR0(1'b1),
    .ADR1(\Operands_Classification/XRegister/Q [18]),
    .ADR3(\Operands_Classification/YRegister/Q [18]),
    .ADR2(\Operands_Classification/XRegister/Q [19]),
    .ADR4(\Operands_Classification/YRegister/Q [19]),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lutdi9_109 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X69Y126" ),
    .INIT ( 64'hC30000C3C30000C3 ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lut<8>  (
    .ADR0(1'b1),
    .ADR1(\Operands_Classification/XRegister/Q [16]),
    .ADR2(\Operands_Classification/YRegister/Q [16]),
    .ADR4(\Operands_Classification/XRegister/Q [17]),
    .ADR3(\Operands_Classification/YRegister/Q [17]),
    .ADR5(1'b1),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lut [8])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X69Y126" ),
    .INIT ( 32'hCFFF00CF ))
  \Operands_Classification/GTComparator/Mcompar_gthan_lutdi8  (
    .ADR0(1'b1),
    .ADR1(\Operands_Classification/XRegister/Q [16]),
    .ADR2(\Operands_Classification/YRegister/Q [16]),
    .ADR4(\Operands_Classification/XRegister/Q [17]),
    .ADR3(\Operands_Classification/YRegister/Q [17]),
    .O(\Operands_Classification/GTComparator/Mcompar_gthan_lutdi8_96 )
  );
  X_FF #(
    .LOC ( "SLICE_X76Y124" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/ESRegister/Q_7  (
    .CE(\FS_Module/state_reg_FSM_FFd39_4192 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/ESRegister/Q_7/CLK ),
    .I(\Normalization_Smallest_Significand/subt_exp [7]),
    .O(\Normalization_Smallest_Significand/ESRegister/Q [7]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y124" ),
    .INIT ( 64'hC3C3C3C3C3C3C3C3 ))
  \Normalization_Smallest_Significand/SExp/Maddsub_Data_S_lut<7>  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR1(\Operands_Classification/DMC/Q [30]),
    .ADR2(\Operands_Classification/DmC/Q<30>_0 ),
    .O(\Normalization_Smallest_Significand/SExp/Maddsub_Data_S_lut [7])
  );
  X_FF #(
    .LOC ( "SLICE_X76Y124" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/ESRegister/Q_6  (
    .CE(\FS_Module/state_reg_FSM_FFd39_4192 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/ESRegister/Q_6/CLK ),
    .I(\Normalization_Smallest_Significand/subt_exp [6]),
    .O(\Normalization_Smallest_Significand/ESRegister/Q [6]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X76Y124" ))
  \Normalization_Smallest_Significand/SExp/Maddsub_Data_S_xor<7>  (
    .CI(\Normalization_Smallest_Significand/SExp/Maddsub_Data_S_cy [3]),
    .CYINIT(1'b0),
    .CO({\NLW_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_xor<7>_CO[3]_UNCONNECTED , 
\NLW_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_xor<7>_CO[2]_UNCONNECTED , 
\NLW_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_xor<7>_CO[1]_UNCONNECTED , 
\NLW_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_xor<7>_CO[0]_UNCONNECTED }),
    .DI({\NLW_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_xor<7>_DI[3]_UNCONNECTED , 
\NlwBufferSignal_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_xor<7>/DI<2> , 
\NlwBufferSignal_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_xor<7>/DI<1> , 
\NlwBufferSignal_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_xor<7>/DI<0> }),
    .O({\Normalization_Smallest_Significand/subt_exp [7], \Normalization_Smallest_Significand/subt_exp [6], 
\Normalization_Smallest_Significand/subt_exp [5], \Normalization_Smallest_Significand/subt_exp [4]}),
    .S({\Normalization_Smallest_Significand/SExp/Maddsub_Data_S_lut [7], \Normalization_Smallest_Significand/SExp/Maddsub_Data_S_lut [6], 
\Normalization_Smallest_Significand/SExp/Maddsub_Data_S_lut [5], \Normalization_Smallest_Significand/SExp/Maddsub_Data_S_lut [4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y124" ),
    .INIT ( 64'hFFFF00000000FFFF ))
  \Normalization_Smallest_Significand/SExp/Maddsub_Data_S_lut<6>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR5(\Operands_Classification/DMC/Q [29]),
    .ADR4(\Operands_Classification/DmC/Q<29>_0 ),
    .O(\Normalization_Smallest_Significand/SExp/Maddsub_Data_S_lut [6])
  );
  X_FF #(
    .LOC ( "SLICE_X76Y124" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/ESRegister/Q_5  (
    .CE(\FS_Module/state_reg_FSM_FFd39_4192 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/ESRegister/Q_5/CLK ),
    .I(\Normalization_Smallest_Significand/subt_exp [5]),
    .O(\Normalization_Smallest_Significand/ESRegister/Q [5]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y124" ),
    .INIT ( 64'hFFFF00000000FFFF ))
  \Normalization_Smallest_Significand/SExp/Maddsub_Data_S_lut<5>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Operands_Classification/DMC/Q [28]),
    .ADR5(\Operands_Classification/DmC/Q<28>_0 ),
    .O(\Normalization_Smallest_Significand/SExp/Maddsub_Data_S_lut [5])
  );
  X_FF #(
    .LOC ( "SLICE_X76Y124" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/ESRegister/Q_4  (
    .CE(\FS_Module/state_reg_FSM_FFd39_4192 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/ESRegister/Q_4/CLK ),
    .I(\Normalization_Smallest_Significand/subt_exp [4]),
    .O(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y124" ),
    .INIT ( 64'hFFFF00000000FFFF ))
  \Normalization_Smallest_Significand/SExp/Maddsub_Data_S_lut<4>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Operands_Classification/DMC/Q [27]),
    .ADR5(\Operands_Classification/DmC/Q<27>_0 ),
    .O(\Normalization_Smallest_Significand/SExp/Maddsub_Data_S_lut [4])
  );
  X_FF #(
    .LOC ( "SLICE_X76Y123" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/ESRegister/Q_3  (
    .CE(\FS_Module/state_reg_FSM_FFd39_4192 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/ESRegister/Q_3/CLK ),
    .I(\Normalization_Smallest_Significand/subt_exp [3]),
    .O(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y123" ),
    .INIT ( 64'hFFFF00000000FFFF ))
  \Normalization_Smallest_Significand/SExp/Maddsub_Data_S_lut<3>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Operands_Classification/DMC/Q [26]),
    .ADR5(\Operands_Classification/DmC/Q<26>_0 ),
    .O(\Normalization_Smallest_Significand/SExp/Maddsub_Data_S_lut [3])
  );
  X_ONE #(
    .LOC ( "SLICE_X76Y123" ))
  \ProtoComp35.CYINITVCC  (
    .O(\NLW_ProtoComp35.CYINITVCC_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X76Y123" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/ESRegister/Q_2  (
    .CE(\FS_Module/state_reg_FSM_FFd39_4192 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/ESRegister/Q_2/CLK ),
    .I(\Normalization_Smallest_Significand/subt_exp [2]),
    .O(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X76Y123" ))
  \Normalization_Smallest_Significand/SExp/Maddsub_Data_S_cy<3>  (
    .CI(1'b0),
    .CYINIT(1'b1),
    .CO({\Normalization_Smallest_Significand/SExp/Maddsub_Data_S_cy [3], 
\NLW_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_cy<3>_CO[2]_UNCONNECTED , 
\NLW_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_cy<3>_CO[1]_UNCONNECTED , 
\NLW_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_cy<3>_CO[0]_UNCONNECTED }),
    .DI({\NlwBufferSignal_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_cy<3>/DI<3> , 
\NlwBufferSignal_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_cy<3>/DI<2> , 
\NlwBufferSignal_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_cy<3>/DI<1> , 
\NlwBufferSignal_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_cy<3>/DI<0> }),
    .O({\Normalization_Smallest_Significand/subt_exp [3], \Normalization_Smallest_Significand/subt_exp [2], 
\Normalization_Smallest_Significand/subt_exp [1], \Normalization_Smallest_Significand/subt_exp [0]}),
    .S({\Normalization_Smallest_Significand/SExp/Maddsub_Data_S_lut [3], \Normalization_Smallest_Significand/SExp/Maddsub_Data_S_lut [2], 
\Normalization_Smallest_Significand/SExp/Maddsub_Data_S_lut [1], \Normalization_Smallest_Significand/SExp/Maddsub_Data_S_lut [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y123" ),
    .INIT ( 64'hFFFF00000000FFFF ))
  \Normalization_Smallest_Significand/SExp/Maddsub_Data_S_lut<2>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Operands_Classification/DMC/Q [25]),
    .ADR5(\Operands_Classification/DmC/Q<25>_0 ),
    .O(\Normalization_Smallest_Significand/SExp/Maddsub_Data_S_lut [2])
  );
  X_FF #(
    .LOC ( "SLICE_X76Y123" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/ESRegister/Q_1  (
    .CE(\FS_Module/state_reg_FSM_FFd39_4192 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/ESRegister/Q_1/CLK ),
    .I(\Normalization_Smallest_Significand/subt_exp [1]),
    .O(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y123" ),
    .INIT ( 64'hFFFF00000000FFFF ))
  \Normalization_Smallest_Significand/SExp/Maddsub_Data_S_lut<1>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Operands_Classification/DMC/Q [24]),
    .ADR5(\Operands_Classification/DmC/Q<24>_0 ),
    .O(\Normalization_Smallest_Significand/SExp/Maddsub_Data_S_lut [1])
  );
  X_FF #(
    .LOC ( "SLICE_X76Y123" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/ESRegister/Q_0  (
    .CE(\FS_Module/state_reg_FSM_FFd39_4192 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/ESRegister/Q_0/CLK ),
    .I(\Normalization_Smallest_Significand/subt_exp [0]),
    .O(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y123" ),
    .INIT ( 64'hFFFF00000000FFFF ))
  \Normalization_Smallest_Significand/SExp/Maddsub_Data_S_lut<0>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Operands_Classification/DMC/Q [23]),
    .ADR5(\Operands_Classification/DmC/Q<23>_0 ),
    .O(\Normalization_Smallest_Significand/SExp/Maddsub_Data_S_lut [0])
  );
  X_FF #(
    .LOC ( "SLICE_X68Y121" ),
    .INIT ( 1'b0 ))
  \Add_Sub_Significands/R_Sgf/Q_3  (
    .CE(\FS_Module/state_reg_FSM_FFd35_4201 ),
    .CLK(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_3/CLK ),
    .I(\Add_Sub_Significands/r_add_subt_sgf [3]),
    .O(\Add_Sub_Significands/R_Sgf/Q [3]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X68Y121" ),
    .INIT ( 64'h0FF0F00FF00F0FF0 ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut<3>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\Operands_Classification/DMC/Q [1]),
    .ADR5(\Normalization_Smallest_Significand/SGFmRegister/Q [3]),
    .ADR2(\Operands_Classification/DMC/Q [31]),
    .ADR4(\Operands_Classification/DmC/Q<31>_0 ),
    .O(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [3])
  );
  X_FF #(
    .LOC ( "SLICE_X68Y121" ),
    .INIT ( 1'b0 ))
  \Add_Sub_Significands/R_Sgf/Q_2  (
    .CE(\FS_Module/state_reg_FSM_FFd35_4201 ),
    .CLK(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_2/CLK ),
    .I(\Add_Sub_Significands/r_add_subt_sgf [2]),
    .O(\Add_Sub_Significands/R_Sgf/Q [2]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X68Y121" ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<3>  (
    .CI(1'b0),
    .CYINIT(\Add_Sub_Significands/eq_sgn_INV_44_o1 ),
    .CO({\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy[3] , \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<3>_CO[2]_UNCONNECTED , 
\NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<3>_CO[1]_UNCONNECTED , \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<3>_CO[0]_UNCONNECTED }),
    .DI({\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<3>/DI<3> , 
\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<3>/DI<2> , 1'b0, 1'b0}),
    .O({\Add_Sub_Significands/r_add_subt_sgf [3], \Add_Sub_Significands/r_add_subt_sgf [2], \Add_Sub_Significands/r_add_subt_sgf [1], 
\Add_Sub_Significands/r_add_subt_sgf [0]}),
    .S({\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [3], \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [2], 
\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [1], \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X68Y121" ),
    .INIT ( 64'h0FF0F00FF00F0FF0 ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut<2>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/DMC/Q [0]),
    .ADR5(\Normalization_Smallest_Significand/SGFmRegister/Q [2]),
    .ADR3(\Operands_Classification/DMC/Q [31]),
    .ADR4(\Operands_Classification/DmC/Q<31>_0 ),
    .O(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [2])
  );
  X_FF #(
    .LOC ( "SLICE_X68Y121" ),
    .INIT ( 1'b0 ))
  \Add_Sub_Significands/R_Sgf/Q_1  (
    .CE(\FS_Module/state_reg_FSM_FFd35_4201 ),
    .CLK(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_1/CLK ),
    .I(\Add_Sub_Significands/r_add_subt_sgf [1]),
    .O(\Add_Sub_Significands/R_Sgf/Q [1]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X68Y121" ),
    .INIT ( 64'hF00F0FF0F00F0FF0 ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut<1>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\Normalization_Smallest_Significand/SGFmRegister/Q [1]),
    .ADR3(\Operands_Classification/DMC/Q [31]),
    .ADR2(\Operands_Classification/DmC/Q<31>_0 ),
    .ADR5(1'b1),
    .O(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [1])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X68Y121" ),
    .INIT ( 32'h00000000 ))
  \N1_13.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_13.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X68Y121" ),
    .INIT ( 1'b0 ))
  \Add_Sub_Significands/R_Sgf/Q_0  (
    .CE(\FS_Module/state_reg_FSM_FFd35_4201 ),
    .CLK(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_0/CLK ),
    .I(\Add_Sub_Significands/r_add_subt_sgf [0]),
    .O(\Add_Sub_Significands/R_Sgf/Q [0]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X68Y121" ),
    .INIT ( 64'hF00F0FF0F00F0FF0 ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut<0>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\Normalization_Smallest_Significand/SGFmRegister/Q [0]),
    .ADR3(\Operands_Classification/DMC/Q [31]),
    .ADR2(\Operands_Classification/DmC/Q<31>_0 ),
    .ADR5(1'b1),
    .O(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X68Y121" ),
    .INIT ( 32'h00000000 ))
  \N1_12.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_12.A5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X67Y128" ))
  \Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy1  (
    .CI(\Zero_Except_Module/eq_ops_l1 ),
    .CYINIT(1'b0),
    .CO({\NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy1_CO[3]_UNCONNECTED , 
\NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy1_CO[2]_UNCONNECTED , 
\NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy1_CO[1]_UNCONNECTED , \Zero_Except_Module/Zero_Info_Register/Q_0_rstpot }),
    .DI({\NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy1_DI[3]_UNCONNECTED , 
\NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy1_DI[2]_UNCONNECTED , 
\NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy1_DI[1]_UNCONNECTED , 1'b1}),
    .O({\NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy1_O[3]_UNCONNECTED , 
\NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy1_O[2]_UNCONNECTED , 
\NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy1_O[1]_UNCONNECTED , 
\NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy1_O[0]_UNCONNECTED }),
    .S({\NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy1_S[3]_UNCONNECTED , 
\NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy1_S[2]_UNCONNECTED , 
\NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy1_S[1]_UNCONNECTED , \Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_lut1_228 })
  );
  X_FF #(
    .LOC ( "SLICE_X67Y128" ),
    .INIT ( 1'b0 ))
  \Zero_Except_Module/Zero_Info_Register/Q_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_Zero_Except_Module/Zero_Info_Register/Q_0/CLK ),
    .I(\Zero_Except_Module/Zero_Info_Register/Q_0_rstpot ),
    .O(\Zero_Except_Module/Zero_Info_Register/Q_0_3789 ),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X67Y128" ),
    .INIT ( 64'hFFFF0F0FFFFF0F0F ))
  \Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_lut1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\Zero_Except_Module/Zero_Info_Register/Q_0_3789 ),
    .ADR4(\FS_Module/state_reg_FSM_FFd46_4189 ),
    .ADR5(1'b1),
    .O(\Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_lut1_228 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X67Y128" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_7.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_7.A5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X67Y125" ),
    .INIT ( 64'h8241000000008241 ))
  \Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut<3>  (
    .ADR1(\Operands_Classification/XRegister/Q [9]),
    .ADR2(\Operands_Classification/YRegister/Q<9>_0 ),
    .ADR0(\Operands_Classification/XRegister/Q [10]),
    .ADR3(\Operands_Classification/YRegister/Q<10>_0 ),
    .ADR5(\Operands_Classification/XRegister/Q [11]),
    .ADR4(\Operands_Classification/YRegister/Q<11>_0 ),
    .O(\Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut [3])
  );
  X_ONE #(
    .LOC ( "SLICE_X67Y125" ))
  \ProtoComp31.CYINITVCC  (
    .O(\NLW_ProtoComp31.CYINITVCC_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X67Y125" ))
  \Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy<3>  (
    .CI(1'b0),
    .CYINIT(1'b1),
    .CO({\Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy[3] , 
\NLW_Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy<3>_CO[2]_UNCONNECTED , 
\NLW_Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy<3>_CO[1]_UNCONNECTED , 
\NLW_Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\NLW_Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy<3>_O[3]_UNCONNECTED , 
\NLW_Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy<3>_O[2]_UNCONNECTED , 
\NLW_Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy<3>_O[1]_UNCONNECTED , 
\NLW_Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy<3>_O[0]_UNCONNECTED }),
    .S({\Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut [3], \Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut [2], 
\Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut [1], \Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X67Y125" ),
    .INIT ( 64'h8008200240041001 ))
  \Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut<2>  (
    .ADR5(\Operands_Classification/XRegister/Q [6]),
    .ADR0(\Operands_Classification/YRegister/Q [6]),
    .ADR4(\Operands_Classification/XRegister/Q [7]),
    .ADR1(\Operands_Classification/YRegister/Q [7]),
    .ADR2(\Operands_Classification/XRegister/Q [8]),
    .ADR3(\Operands_Classification/YRegister/Q<8>_0 ),
    .O(\Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut [2])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X67Y125" ),
    .INIT ( 64'h8040080420100201 ))
  \Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut<1>  (
    .ADR4(\Operands_Classification/XRegister/Q<3>_0 ),
    .ADR2(\Operands_Classification/YRegister/Q [3]),
    .ADR3(\Operands_Classification/XRegister/Q [4]),
    .ADR0(\Operands_Classification/YRegister/Q [4]),
    .ADR5(\Operands_Classification/XRegister/Q [5]),
    .ADR1(\Operands_Classification/YRegister/Q [5]),
    .O(\Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X67Y125" ),
    .INIT ( 64'h8241000000008241 ))
  \Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut<0>  (
    .ADR5(\Operands_Classification/XRegister/Q<0>_0 ),
    .ADR4(\Operands_Classification/YRegister/Q [0]),
    .ADR2(\Operands_Classification/XRegister/Q<1>_0 ),
    .ADR1(\Operands_Classification/YRegister/Q [1]),
    .ADR3(\Operands_Classification/XRegister/Q<2>_0 ),
    .ADR0(\Operands_Classification/YRegister/Q [2]),
    .O(\Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut [0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X67Y127" ),
    .INIT ( 64'hA5005A00A5005A00 ))
  \Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_lut  (
    .ADR1(1'b1),
    .ADR3(\FS_Module/state_reg_FSM_FFd46_4189 ),
    .ADR0(add_subt_IBUF_4190),
    .ADR2(\Operands_Classification/XRegister/Q [31]),
    .ADR4(\Operands_Classification/YRegister/Q [31]),
    .ADR5(1'b1),
    .O(\Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_lut_193 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X67Y127" ),
    .INIT ( 32'h00000000 ))
  \N1_41.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_41.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X67Y127" ))
  \Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy  (
    .CI(\Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy[7] ),
    .CYINIT(1'b0),
    .CO({\Zero_Except_Module/eq_ops_l1 , \NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy_CO[2]_UNCONNECTED , 
\NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy_CO[1]_UNCONNECTED , 
\NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy_O[3]_UNCONNECTED , 
\NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy_O[2]_UNCONNECTED , \NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy_O[1]_UNCONNECTED 
, \NLW_Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_cy_O[0]_UNCONNECTED }),
    .S({\Zero_Except_Module/Zero_Info_Register/Q_0_rstpot_lut_193 , \Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut [10], 
\Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut [9], \Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut [8]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X67Y127" ),
    .INIT ( 64'hFF0000FFFF0000FF ))
  \Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut<10>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\Operands_Classification/XRegister/Q [30]),
    .ADR4(\Operands_Classification/YRegister/Q [30]),
    .ADR5(1'b1),
    .O(\Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut [10])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X67Y127" ),
    .INIT ( 32'h00000000 ))
  \N1_11.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_11.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X67Y127" ),
    .INIT ( 64'h8008400420021001 ))
  \Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut<9>  (
    .ADR2(\Operands_Classification/XRegister/Q [27]),
    .ADR3(\Operands_Classification/YRegister/Q [27]),
    .ADR0(\Operands_Classification/XRegister/Q [28]),
    .ADR4(\Operands_Classification/YRegister/Q [28]),
    .ADR1(\Operands_Classification/XRegister/Q [29]),
    .ADR5(\Operands_Classification/YRegister/Q [29]),
    .O(\Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut [9])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X67Y127" ),
    .INIT ( 64'h8241000000008241 ))
  \Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut<8>  (
    .ADR0(\Operands_Classification/XRegister/Q [24]),
    .ADR3(\Operands_Classification/YRegister/Q [24]),
    .ADR1(\Operands_Classification/XRegister/Q [25]),
    .ADR2(\Operands_Classification/YRegister/Q [25]),
    .ADR5(\Operands_Classification/XRegister/Q [26]),
    .ADR4(\Operands_Classification/YRegister/Q [26]),
    .O(\Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut [8])
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X69Y128" ))
  \Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_inv1_cy  (
    .CI(\Operands_Classification/GTComparator/Mcompar_gthan_cy[15] ),
    .CYINIT(1'b0),
    .CO({\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_inv1_cy_CO[3]_UNCONNECTED , 
\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_inv1_cy_CO[2]_UNCONNECTED , 
\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_inv1_cy_CO[1]_UNCONNECTED , \Operands_Classification/gt }),
    .DI({\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_inv1_cy_DI[3]_UNCONNECTED , 
\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_inv1_cy_DI[2]_UNCONNECTED , 
\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_inv1_cy_DI[1]_UNCONNECTED , 
\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_inv1_cy_DI[0]_UNCONNECTED }),
    .O({\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_inv1_cy_O[3]_UNCONNECTED , 
\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_inv1_cy_O[2]_UNCONNECTED , 
\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_inv1_cy_O[1]_UNCONNECTED , 
\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_inv1_cy_O[0]_UNCONNECTED }),
    .S({\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_inv1_cy_S[3]_UNCONNECTED , 
\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_inv1_cy_S[2]_UNCONNECTED , 
\NLW_Operands_Classification/GTComparator/Mcompar_gthan_cy<15>_inv1_cy_S[1]_UNCONNECTED , 1'b1})
  );
  X_FF #(
    .LOC ( "SLICE_X69Y128" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/CMPRegister/Q_0  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/CMPRegister/Q_0/CLK ),
    .I(\Operands_Classification/gt ),
    .O(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X69Y128" ),
    .INIT ( 64'hFFFFFFFFFFFFFFFF ))
  \N0_6.A6LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\NLW_N0_6.A6LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X67Y126" ),
    .INIT ( 64'h8020401008020401 ))
  \Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut<7>  (
    .ADR3(\Operands_Classification/XRegister/Q<21>_0 ),
    .ADR1(\Operands_Classification/YRegister/Q [21]),
    .ADR0(\Operands_Classification/XRegister/Q<22>_0 ),
    .ADR4(\Operands_Classification/YRegister/Q [22]),
    .ADR5(\Operands_Classification/XRegister/Q<23>_0 ),
    .ADR2(\Operands_Classification/YRegister/Q [23]),
    .O(\Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut [7])
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X67Y126" ))
  \Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy<7>  (
    .CI(\Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy[3] ),
    .CYINIT(1'b0),
    .CO({\Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy[7] , 
\NLW_Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy<7>_CO[2]_UNCONNECTED , 
\NLW_Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy<7>_CO[1]_UNCONNECTED , 
\NLW_Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\NLW_Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy<7>_O[3]_UNCONNECTED , 
\NLW_Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy<7>_O[2]_UNCONNECTED , 
\NLW_Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy<7>_O[1]_UNCONNECTED , 
\NLW_Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_cy<7>_O[0]_UNCONNECTED }),
    .S({\Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut [7], \Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut [6], 
\Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut [5], \Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut [4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X67Y126" ),
    .INIT ( 64'h8241000000008241 ))
  \Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut<6>  (
    .ADR1(\Operands_Classification/XRegister/Q [18]),
    .ADR2(\Operands_Classification/YRegister/Q [18]),
    .ADR4(\Operands_Classification/XRegister/Q [19]),
    .ADR5(\Operands_Classification/YRegister/Q [19]),
    .ADR3(\Operands_Classification/XRegister/Q<20>_0 ),
    .ADR0(\Operands_Classification/YRegister/Q [20]),
    .O(\Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut [6])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X67Y126" ),
    .INIT ( 64'h9000090000900009 ))
  \Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut<5>  (
    .ADR1(\Operands_Classification/XRegister/Q [15]),
    .ADR0(\Operands_Classification/YRegister/Q [15]),
    .ADR2(\Operands_Classification/XRegister/Q [16]),
    .ADR4(\Operands_Classification/YRegister/Q [16]),
    .ADR3(\Operands_Classification/XRegister/Q [17]),
    .ADR5(\Operands_Classification/YRegister/Q [17]),
    .O(\Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut [5])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X67Y126" ),
    .INIT ( 64'h8020401008020401 ))
  \Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut<4>  (
    .ADR4(\Operands_Classification/XRegister/Q [12]),
    .ADR0(\Operands_Classification/YRegister/Q [12]),
    .ADR3(\Operands_Classification/XRegister/Q [13]),
    .ADR1(\Operands_Classification/YRegister/Q [13]),
    .ADR5(\Operands_Classification/XRegister/Q [14]),
    .ADR2(\Operands_Classification/YRegister/Q [14]),
    .O(\Zero_Except_Module/Magnitude_Comp/Mcompar_equal_sgn_lut [4])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y108" ))
  \final_result_ieee<23>  (
    .PAD(final_result_ieee[23])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y108" ))
  final_result_ieee_23_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_23_OBUF/I ),
    .O(final_result_ieee[23])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y129" ))
  \final_result_ieee<2>  (
    .PAD(final_result_ieee[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y129" ))
  final_result_ieee_2_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_2_OBUF/I ),
    .O(final_result_ieee[2])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y116" ))
  \final_result_ieee<15>  (
    .PAD(final_result_ieee[15])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y116" ))
  final_result_ieee_15_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_15_OBUF/I ),
    .O(final_result_ieee[15])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y141" ))
  \Data_X<22>  (
    .PAD(Data_X[22])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y141" ))
  \ProtoComp43.INTERMDISABLE_GND.41  (
    .O(\ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y141" ))
  Data_X_22_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_22_IBUF_4324),
    .I(Data_X[22]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y114" ))
  \final_result_ieee<17>  (
    .PAD(final_result_ieee[17])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y114" ))
  final_result_ieee_17_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_17_OBUF/I ),
    .O(final_result_ieee[17])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y133" ))
  \Data_X<30>  (
    .PAD(Data_X[30])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y133" ))
  \ProtoComp43.INTERMDISABLE_GND.42  (
    .O(\Data_X<30>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y133" ))
  Data_X_30_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<30>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_30_IBUF_4325),
    .I(Data_X[30]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y128" ))
  \final_result_ieee<3>  (
    .PAD(final_result_ieee[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y128" ))
  final_result_ieee_3_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_3_OBUF/I ),
    .O(final_result_ieee[3])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y111" ))
  \final_result_ieee<20>  (
    .PAD(final_result_ieee[20])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y111" ))
  final_result_ieee_20_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_20_OBUF/I ),
    .O(final_result_ieee[20])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y131" ))
  \final_result_ieee<0>  (
    .PAD(final_result_ieee[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y131" ))
  final_result_ieee_0_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_0_OBUF/I ),
    .O(final_result_ieee[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y130" ))
  \final_result_ieee<1>  (
    .PAD(final_result_ieee[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y130" ))
  final_result_ieee_1_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_1_OBUF/I ),
    .O(final_result_ieee[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y113" ))
  \final_result_ieee<18>  (
    .PAD(final_result_ieee[18])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y113" ))
  final_result_ieee_18_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_18_OBUF/I ),
    .O(final_result_ieee[18])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y127" ))
  \final_result_ieee<4>  (
    .PAD(final_result_ieee[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y127" ))
  final_result_ieee_4_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_4_OBUF/I ),
    .O(final_result_ieee[4])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y115" ))
  \final_result_ieee<16>  (
    .PAD(final_result_ieee[16])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y115" ))
  final_result_ieee_16_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_16_OBUF/I ),
    .O(final_result_ieee[16])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y126" ))
  \final_result_ieee<5>  (
    .PAD(final_result_ieee[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y126" ))
  final_result_ieee_5_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_5_OBUF/I ),
    .O(final_result_ieee[5])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y142" ))
  \Data_X<21>  (
    .PAD(Data_X[21])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y142" ))
  \ProtoComp43.INTERMDISABLE_GND.40  (
    .O(\Data_X<21>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y142" ))
  Data_X_21_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<21>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_21_IBUF_4323),
    .I(Data_X[21]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y112" ))
  \final_result_ieee<19>  (
    .PAD(final_result_ieee[19])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y112" ))
  final_result_ieee_19_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_19_OBUF/I ),
    .O(final_result_ieee[19])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y107" ))
  \final_result_ieee<24>  (
    .PAD(final_result_ieee[24])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y107" ))
  final_result_ieee_24_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_24_OBUF/I ),
    .O(final_result_ieee[24])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y139" ))
  \Data_X<24>  (
    .PAD(Data_X[24])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y139" ))
  \ProtoComp43.INTERMDISABLE_GND.39  (
    .O(\Data_X<24>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y139" ))
  Data_X_24_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<24>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_24_IBUF_4322),
    .I(Data_X[24]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y140" ))
  \Data_X<23>  (
    .PAD(Data_X[23])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y140" ))
  \ProtoComp43.INTERMDISABLE_GND.38  (
    .O(\Data_X<23>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y140" ))
  Data_X_23_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<23>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_23_IBUF_4321),
    .I(Data_X[23]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y125" ))
  \final_result_ieee<6>  (
    .PAD(final_result_ieee[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y125" ))
  final_result_ieee_6_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_6_OBUF/I ),
    .O(final_result_ieee[6])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y124" ))
  \final_result_ieee<7>  (
    .PAD(final_result_ieee[7])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y124" ))
  final_result_ieee_7_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_7_OBUF/I ),
    .O(final_result_ieee[7])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y109" ))
  \final_result_ieee<22>  (
    .PAD(final_result_ieee[22])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y109" ))
  final_result_ieee_22_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_22_OBUF/I ),
    .O(final_result_ieee[22])
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y130" ))
  \Data_Y<18>  (
    .PAD(Data_Y[18])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y130" ))
  \ProtoComp43.INTERMDISABLE_GND.47  (
    .O(\Data_Y<18>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y130" ))
  Data_Y_18_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<18>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_18_IBUF_4330),
    .I(Data_Y[18]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y104" ))
  \final_result_ieee<27>  (
    .PAD(final_result_ieee[27])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y104" ))
  final_result_ieee_27_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_27_OBUF/I ),
    .O(final_result_ieee[27])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y122" ))
  \final_result_ieee<9>  (
    .PAD(final_result_ieee[9])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y122" ))
  final_result_ieee_9_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_9_OBUF/I ),
    .O(final_result_ieee[9])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y105" ))
  \final_result_ieee<26>  (
    .PAD(final_result_ieee[26])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y105" ))
  final_result_ieee_26_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_26_OBUF/I ),
    .O(final_result_ieee[26])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y100" ))
  \final_result_ieee<31>  (
    .PAD(final_result_ieee[31])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y100" ))
  final_result_ieee_31_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_31_OBUF/I ),
    .O(final_result_ieee[31])
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y129" ))
  \Data_Y<19>  (
    .PAD(Data_Y[19])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y129" ))
  \ProtoComp43.INTERMDISABLE_GND.50  (
    .O(\Data_Y<19>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y129" ))
  Data_Y_19_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<19>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_19_IBUF_4333),
    .I(Data_Y[19]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y103" ))
  \final_result_ieee<28>  (
    .PAD(final_result_ieee[28])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y103" ))
  final_result_ieee_28_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_28_OBUF/I ),
    .O(final_result_ieee[28])
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y132" ))
  \Data_Y<16>  (
    .PAD(Data_Y[16])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y132" ))
  \ProtoComp43.INTERMDISABLE_GND.49  (
    .O(\Data_Y<16>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y132" ))
  Data_Y_16_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<16>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_16_IBUF_4332),
    .I(Data_Y[16]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y138" ))
  \Data_Y<10>  (
    .PAD(Data_Y[10])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y138" ))
  \ProtoComp43.INTERMDISABLE_GND.51  (
    .O(\Data_Y<10>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y138" ))
  Data_Y_10_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<10>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_10_IBUF_4334),
    .I(Data_Y[10]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y110" ))
  \final_result_ieee<21>  (
    .PAD(final_result_ieee[21])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y110" ))
  final_result_ieee_21_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_21_OBUF/I ),
    .O(final_result_ieee[21])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y132" ))
  \Data_X<31>  (
    .PAD(Data_X[31])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y132" ))
  \ProtoComp43.INTERMDISABLE_GND.43  (
    .O(\Data_X<31>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y132" ))
  Data_X_31_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<31>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_31_IBUF_4326),
    .I(Data_X[31]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y106" ))
  \final_result_ieee<25>  (
    .PAD(final_result_ieee[25])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y106" ))
  final_result_ieee_25_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_25_OBUF/I ),
    .O(final_result_ieee[25])
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y131" ))
  \Data_Y<17>  (
    .PAD(Data_Y[17])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y131" ))
  \ProtoComp43.INTERMDISABLE_GND.46  (
    .O(\Data_Y<17>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y131" ))
  Data_Y_17_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<17>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_17_IBUF_4329),
    .I(Data_Y[17]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y128" ))
  clk_465 (
    .PAD(clk)
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y128" ))
  \ProtoComp43.INTERMDISABLE_GND.45  (
    .O(\clk/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y128" ))
  \clk_BUFGP/IBUFG  (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\clk/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(\clk_BUFGP/IBUFG_4328 ),
    .I(clk),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y102" ))
  \final_result_ieee<29>  (
    .PAD(final_result_ieee[29])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y102" ))
  final_result_ieee_29_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_29_OBUF/I ),
    .O(final_result_ieee[29])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y101" ))
  \final_result_ieee<30>  (
    .PAD(final_result_ieee[30])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y101" ))
  final_result_ieee_30_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_30_OBUF/I ),
    .O(final_result_ieee[30])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y174" ))
  beg_FSM_461 (
    .PAD(beg_FSM)
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y174" ))
  \ProtoComp43.INTERMDISABLE_GND.44  (
    .O(\beg_FSM/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y174" ))
  beg_FSM_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\beg_FSM/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(beg_FSM_IBUF_4327),
    .I(beg_FSM),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y133" ))
  \Data_Y<15>  (
    .PAD(Data_Y[15])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y133" ))
  \ProtoComp43.INTERMDISABLE_GND.48  (
    .O(\Data_Y<15>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y133" ))
  Data_Y_15_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<15>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_15_IBUF_4331),
    .I(Data_Y[15]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y123" ))
  \final_result_ieee<8>  (
    .PAD(final_result_ieee[8])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y123" ))
  final_result_ieee_8_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_8_OBUF/I ),
    .O(final_result_ieee[8])
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y124" ))
  \Data_Y<23>  (
    .PAD(Data_Y[23])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y124" ))
  \ProtoComp43.INTERMDISABLE_GND.62  (
    .O(\Data_Y<23>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y124" ))
  Data_Y_23_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<23>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_23_IBUF_4345),
    .I(Data_Y[23]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y122" ))
  \Data_Y<25>  (
    .PAD(Data_Y[25])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y122" ))
  \ProtoComp43.INTERMDISABLE_GND.58  (
    .O(\Data_Y<25>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y122" ))
  Data_Y_25_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<25>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_25_IBUF_4341),
    .I(Data_Y[25]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y123" ))
  \Data_Y<20>  (
    .PAD(Data_Y[20])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y123" ))
  \ProtoComp43.INTERMDISABLE_GND.61  (
    .O(\Data_Y<20>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y123" ))
  Data_Y_20_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<20>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_20_IBUF_4344),
    .I(Data_Y[20]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y137" ))
  \Data_Y<11>  (
    .PAD(Data_Y[11])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y137" ))
  \ProtoComp43.INTERMDISABLE_GND.54  (
    .O(\Data_Y<11>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y137" ))
  Data_Y_11_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<11>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_11_IBUF_4337),
    .I(Data_Y[11]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y135" ))
  \Data_Y<13>  (
    .PAD(Data_Y[13])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y135" ))
  \ProtoComp43.INTERMDISABLE_GND.52  (
    .O(\Data_Y<13>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y135" ))
  Data_Y_13_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<13>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_13_IBUF_4335),
    .I(Data_Y[13]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y134" ))
  \Data_Y<14>  (
    .PAD(Data_Y[14])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y134" ))
  \ProtoComp43.INTERMDISABLE_GND.53  (
    .O(\Data_Y<14>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y134" ))
  Data_Y_14_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<14>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_14_IBUF_4336),
    .I(Data_Y[14]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y126" ))
  \Data_Y<21>  (
    .PAD(Data_Y[21])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y126" ))
  \ProtoComp43.INTERMDISABLE_GND.64  (
    .O(\Data_Y<21>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y126" ))
  Data_Y_21_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<21>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_21_IBUF_4347),
    .I(Data_Y[21]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y118" ))
  \Data_Y<29>  (
    .PAD(Data_Y[29])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y118" ))
  \ProtoComp43.INTERMDISABLE_GND.60  (
    .O(\Data_Y<29>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y118" ))
  Data_Y_29_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<29>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_29_IBUF_4343),
    .I(Data_Y[29]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y120" ))
  \Data_Y<27>  (
    .PAD(Data_Y[27])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y120" ))
  \ProtoComp43.INTERMDISABLE_GND.56  (
    .O(\Data_Y<27>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y120" ))
  Data_Y_27_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<27>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_27_IBUF_4339),
    .I(Data_Y[27]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y173" ))
  rst_FSM_549 (
    .PAD(rst_FSM)
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y173" ))
  \ProtoComp43.INTERMDISABLE_GND.66  (
    .O(\rst_FSM/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y173" ))
  rst_FSM_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\rst_FSM/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(rst_FSM_IBUF_3786),
    .I(rst_FSM),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y119" ))
  \Data_Y<28>  (
    .PAD(Data_Y[28])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y119" ))
  \ProtoComp43.INTERMDISABLE_GND.57  (
    .O(\Data_Y<28>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y119" ))
  Data_Y_28_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<28>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_28_IBUF_4340),
    .I(Data_Y[28]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y127" ))
  \Data_Y<24>  (
    .PAD(Data_Y[24])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y127" ))
  \ProtoComp43.INTERMDISABLE_GND.63  (
    .O(\Data_Y<24>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y127" ))
  Data_Y_24_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<24>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_24_IBUF_4346),
    .I(Data_Y[24]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y121" ))
  \Data_Y<26>  (
    .PAD(Data_Y[26])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y121" ))
  \ProtoComp43.INTERMDISABLE_GND.59  (
    .O(\Data_Y<26>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y121" ))
  Data_Y_26_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<26>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_26_IBUF_4342),
    .I(Data_Y[26]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y117" ))
  \Data_Y<30>  (
    .PAD(Data_Y[30])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y117" ))
  \ProtoComp43.INTERMDISABLE_GND.67  (
    .O(\Data_Y<30>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y117" ))
  Data_Y_30_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<30>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_30_IBUF_4349),
    .I(Data_Y[30]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y125" ))
  \Data_Y<22>  (
    .PAD(Data_Y[22])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y125" ))
  \ProtoComp43.INTERMDISABLE_GND.65  (
    .O(\Data_Y<22>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y125" ))
  Data_Y_22_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<22>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_22_IBUF_4348),
    .I(Data_Y[22]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y136" ))
  \Data_Y<12>  (
    .PAD(Data_Y[12])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y136" ))
  \ProtoComp43.INTERMDISABLE_GND.55  (
    .O(\Data_Y<12>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y136" ))
  Data_Y_12_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<12>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_12_IBUF_4338),
    .I(Data_Y[12]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y112" ))
  \r_mode<0>  (
    .PAD(r_mode[0])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y112" ))
  \ProtoComp43.INTERMDISABLE_GND.70  (
    .O(\r_mode<0>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y112" ))
  r_mode_0_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\r_mode<0>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(r_mode_0_IBUF_4281),
    .I(r_mode[0]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y116" ))
  \Data_Y<31>  (
    .PAD(Data_Y[31])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y116" ))
  \ProtoComp43.INTERMDISABLE_GND.68  (
    .O(\Data_Y<31>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y116" ))
  Data_Y_31_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<31>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_31_IBUF_4350),
    .I(Data_Y[31]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y107" ))
  \r_mode<1>  (
    .PAD(r_mode[1])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y107" ))
  \ProtoComp43.INTERMDISABLE_GND.69  (
    .O(\r_mode<1>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y107" ))
  r_mode_1_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\r_mode<1>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(r_mode_1_IBUF_4282),
    .I(r_mode[1]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y161" ))
  underflow_flag_568 (
    .PAD(underflow_flag)
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y161" ))
  underflow_flag_OBUF (
    .I(\NlwBufferSignal_underflow_flag_OBUF/I ),
    .O(underflow_flag)
  );
  X_FF #(
    .LOC ( "SLICE_X68Y122" ),
    .INIT ( 1'b0 ))
  \Add_Sub_Significands/R_Sgf/Q_7  (
    .CE(\FS_Module/state_reg_FSM_FFd35_4201 ),
    .CLK(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_7/CLK ),
    .I(\Add_Sub_Significands/r_add_subt_sgf [7]),
    .O(\Add_Sub_Significands/R_Sgf/Q [7]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X68Y122" ),
    .INIT ( 64'h0FF0F00FF00F0FF0 ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut<7>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/DMC/Q [5]),
    .ADR5(\Normalization_Smallest_Significand/SGFmRegister/Q [7]),
    .ADR3(\Operands_Classification/DMC/Q [31]),
    .ADR4(\Operands_Classification/DmC/Q<31>_0 ),
    .O(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [7])
  );
  X_FF #(
    .LOC ( "SLICE_X68Y122" ),
    .INIT ( 1'b0 ))
  \Add_Sub_Significands/R_Sgf/Q_6  (
    .CE(\FS_Module/state_reg_FSM_FFd35_4201 ),
    .CLK(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_6/CLK ),
    .I(\Add_Sub_Significands/r_add_subt_sgf [6]),
    .O(\Add_Sub_Significands/R_Sgf/Q [6]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X68Y122" ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<7>  (
    .CI(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy[3] ),
    .CYINIT(1'b0),
    .CO({\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy[7] , \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<7>_CO[2]_UNCONNECTED , 
\NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<7>_CO[1]_UNCONNECTED , \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<7>_CO[0]_UNCONNECTED }),
    .DI({\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<7>/DI<3> , 
\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<7>/DI<2> , \NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<7>/DI<1> , 
\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<7>/DI<0> }),
    .O({\Add_Sub_Significands/r_add_subt_sgf [7], \Add_Sub_Significands/r_add_subt_sgf [6], \Add_Sub_Significands/r_add_subt_sgf [5], 
\Add_Sub_Significands/r_add_subt_sgf [4]}),
    .S({\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [7], \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [6], 
\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [5], \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X68Y122" ),
    .INIT ( 64'h0FF0F00FF00F0FF0 ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut<6>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/DMC/Q [4]),
    .ADR5(\Normalization_Smallest_Significand/SGFmRegister/Q [6]),
    .ADR3(\Operands_Classification/DMC/Q [31]),
    .ADR4(\Operands_Classification/DmC/Q<31>_0 ),
    .O(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [6])
  );
  X_FF #(
    .LOC ( "SLICE_X68Y122" ),
    .INIT ( 1'b0 ))
  \Add_Sub_Significands/R_Sgf/Q_5  (
    .CE(\FS_Module/state_reg_FSM_FFd35_4201 ),
    .CLK(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_5/CLK ),
    .I(\Add_Sub_Significands/r_add_subt_sgf [5]),
    .O(\Add_Sub_Significands/R_Sgf/Q [5]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X68Y122" ),
    .INIT ( 64'h0FF0F00FF00F0FF0 ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut<5>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\Operands_Classification/DMC/Q [3]),
    .ADR5(\Normalization_Smallest_Significand/SGFmRegister/Q [5]),
    .ADR3(\Operands_Classification/DMC/Q [31]),
    .ADR2(\Operands_Classification/DmC/Q<31>_0 ),
    .O(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [5])
  );
  X_FF #(
    .LOC ( "SLICE_X68Y122" ),
    .INIT ( 1'b0 ))
  \Add_Sub_Significands/R_Sgf/Q_4  (
    .CE(\FS_Module/state_reg_FSM_FFd35_4201 ),
    .CLK(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_4/CLK ),
    .I(\Add_Sub_Significands/r_add_subt_sgf [4]),
    .O(\Add_Sub_Significands/R_Sgf/Q [4]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X68Y122" ),
    .INIT ( 64'h0FF0F00FF00F0FF0 ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut<4>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\Operands_Classification/DMC/Q [2]),
    .ADR5(\Normalization_Smallest_Significand/SGFmRegister/Q [4]),
    .ADR2(\Operands_Classification/DMC/Q [31]),
    .ADR4(\Operands_Classification/DmC/Q<31>_0 ),
    .O(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [4])
  );
  X_FF #(
    .LOC ( "SLICE_X68Y123" ),
    .INIT ( 1'b0 ))
  \Add_Sub_Significands/R_Sgf/Q_11  (
    .CE(\FS_Module/state_reg_FSM_FFd35_4201 ),
    .CLK(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_11/CLK ),
    .I(\Add_Sub_Significands/r_add_subt_sgf [11]),
    .O(\Add_Sub_Significands/R_Sgf/Q [11]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X68Y123" ),
    .INIT ( 64'h0FF0F00FF00F0FF0 ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut<11>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(\Operands_Classification/DMC/Q [9]),
    .ADR3(\Normalization_Smallest_Significand/SGFmRegister/Q [11]),
    .ADR2(\Operands_Classification/DMC/Q [31]),
    .ADR4(\Operands_Classification/DmC/Q<31>_0 ),
    .O(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [11])
  );
  X_FF #(
    .LOC ( "SLICE_X68Y123" ),
    .INIT ( 1'b0 ))
  \Add_Sub_Significands/R_Sgf/Q_10  (
    .CE(\FS_Module/state_reg_FSM_FFd35_4201 ),
    .CLK(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_10/CLK ),
    .I(\Add_Sub_Significands/r_add_subt_sgf [10]),
    .O(\Add_Sub_Significands/R_Sgf/Q [10]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X68Y123" ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<11>  (
    .CI(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy[7] ),
    .CYINIT(1'b0),
    .CO({\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy[11] , \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<11>_CO[2]_UNCONNECTED , 
\NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<11>_CO[1]_UNCONNECTED , \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<11>_CO[0]_UNCONNECTED })
,
    .DI({\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<11>/DI<3> , 
\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<11>/DI<2> , \NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<11>/DI<1> , 
\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<11>/DI<0> }),
    .O({\Add_Sub_Significands/r_add_subt_sgf [11], \Add_Sub_Significands/r_add_subt_sgf [10], \Add_Sub_Significands/r_add_subt_sgf [9], 
\Add_Sub_Significands/r_add_subt_sgf [8]}),
    .S({\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [11], \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [10], 
\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [9], \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [8]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X68Y123" ),
    .INIT ( 64'h0FF0F00FF00F0FF0 ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut<10>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(\Operands_Classification/DMC/Q [8]),
    .ADR3(\Normalization_Smallest_Significand/SGFmRegister/Q [10]),
    .ADR2(\Operands_Classification/DMC/Q [31]),
    .ADR4(\Operands_Classification/DmC/Q<31>_0 ),
    .O(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [10])
  );
  X_FF #(
    .LOC ( "SLICE_X68Y123" ),
    .INIT ( 1'b0 ))
  \Add_Sub_Significands/R_Sgf/Q_9  (
    .CE(\FS_Module/state_reg_FSM_FFd35_4201 ),
    .CLK(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_9/CLK ),
    .I(\Add_Sub_Significands/r_add_subt_sgf [9]),
    .O(\Add_Sub_Significands/R_Sgf/Q [9]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X68Y123" ),
    .INIT ( 64'h0FF0F00FF00F0FF0 ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut<9>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\Operands_Classification/DMC/Q [7]),
    .ADR3(\Normalization_Smallest_Significand/SGFmRegister/Q [9]),
    .ADR5(\Operands_Classification/DMC/Q [31]),
    .ADR2(\Operands_Classification/DmC/Q<31>_0 ),
    .O(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [9])
  );
  X_FF #(
    .LOC ( "SLICE_X68Y123" ),
    .INIT ( 1'b0 ))
  \Add_Sub_Significands/R_Sgf/Q_8  (
    .CE(\FS_Module/state_reg_FSM_FFd35_4201 ),
    .CLK(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_8/CLK ),
    .I(\Add_Sub_Significands/r_add_subt_sgf [8]),
    .O(\Add_Sub_Significands/R_Sgf/Q [8]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X68Y123" ),
    .INIT ( 64'h0FF0F00FF00F0FF0 ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut<8>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(\Operands_Classification/DMC/Q [6]),
    .ADR4(\Normalization_Smallest_Significand/SGFmRegister/Q [8]),
    .ADR3(\Operands_Classification/DMC/Q [31]),
    .ADR2(\Operands_Classification/DmC/Q<31>_0 ),
    .O(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [8])
  );
  X_FF #(
    .LOC ( "SLICE_X68Y125" ),
    .INIT ( 1'b0 ))
  \Add_Sub_Significands/R_Sgf/Q_19  (
    .CE(\FS_Module/state_reg_FSM_FFd35_4201 ),
    .CLK(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_19/CLK ),
    .I(\Add_Sub_Significands/r_add_subt_sgf [19]),
    .O(\Add_Sub_Significands/R_Sgf/Q [19]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X68Y125" ),
    .INIT ( 64'h0FF0F00FF00F0FF0 ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut<19>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(\Operands_Classification/DMC/Q [17]),
    .ADR4(\Normalization_Smallest_Significand/SGFmRegister/Q [19]),
    .ADR3(\Operands_Classification/DMC/Q [31]),
    .ADR2(\Operands_Classification/DmC/Q<31>_0 ),
    .O(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [19])
  );
  X_FF #(
    .LOC ( "SLICE_X68Y125" ),
    .INIT ( 1'b0 ))
  \Add_Sub_Significands/R_Sgf/Q_18  (
    .CE(\FS_Module/state_reg_FSM_FFd35_4201 ),
    .CLK(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_18/CLK ),
    .I(\Add_Sub_Significands/r_add_subt_sgf [18]),
    .O(\Add_Sub_Significands/R_Sgf/Q [18]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X68Y125" ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<19>  (
    .CI(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy[15] ),
    .CYINIT(1'b0),
    .CO({\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy[19] , \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<19>_CO[2]_UNCONNECTED , 
\NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<19>_CO[1]_UNCONNECTED , \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<19>_CO[0]_UNCONNECTED })
,
    .DI({\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<19>/DI<3> , 
\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<19>/DI<2> , \NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<19>/DI<1> , 
\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<19>/DI<0> }),
    .O({\Add_Sub_Significands/r_add_subt_sgf [19], \Add_Sub_Significands/r_add_subt_sgf [18], \Add_Sub_Significands/r_add_subt_sgf [17], 
\Add_Sub_Significands/r_add_subt_sgf [16]}),
    .S({\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [19], \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [18], 
\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [17], \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [16]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X68Y125" ),
    .INIT ( 64'h0FF0F00FF00F0FF0 ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut<18>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(\Operands_Classification/DMC/Q [16]),
    .ADR2(\Normalization_Smallest_Significand/SGFmRegister/Q [18]),
    .ADR3(\Operands_Classification/DMC/Q [31]),
    .ADR4(\Operands_Classification/DmC/Q<31>_0 ),
    .O(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [18])
  );
  X_FF #(
    .LOC ( "SLICE_X68Y125" ),
    .INIT ( 1'b0 ))
  \Add_Sub_Significands/R_Sgf/Q_17  (
    .CE(\FS_Module/state_reg_FSM_FFd35_4201 ),
    .CLK(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_17/CLK ),
    .I(\Add_Sub_Significands/r_add_subt_sgf [17]),
    .O(\Add_Sub_Significands/R_Sgf/Q [17]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X68Y125" ),
    .INIT ( 64'h0FF0F00FF00F0FF0 ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut<17>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\Operands_Classification/DMC/Q [15]),
    .ADR5(\Normalization_Smallest_Significand/SGFmRegister/Q [17]),
    .ADR2(\Operands_Classification/DMC/Q [31]),
    .ADR3(\Operands_Classification/DmC/Q<31>_0 ),
    .O(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [17])
  );
  X_FF #(
    .LOC ( "SLICE_X68Y125" ),
    .INIT ( 1'b0 ))
  \Add_Sub_Significands/R_Sgf/Q_16  (
    .CE(\FS_Module/state_reg_FSM_FFd35_4201 ),
    .CLK(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_16/CLK ),
    .I(\Add_Sub_Significands/r_add_subt_sgf [16]),
    .O(\Add_Sub_Significands/R_Sgf/Q [16]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X68Y125" ),
    .INIT ( 64'h0FF0F00FF00F0FF0 ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut<16>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\Operands_Classification/DMC/Q [14]),
    .ADR5(\Normalization_Smallest_Significand/SGFmRegister/Q [16]),
    .ADR2(\Operands_Classification/DMC/Q [31]),
    .ADR3(\Operands_Classification/DmC/Q<31>_0 ),
    .O(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [16])
  );
  X_FF #(
    .LOC ( "SLICE_X68Y124" ),
    .INIT ( 1'b0 ))
  \Add_Sub_Significands/R_Sgf/Q_15  (
    .CE(\FS_Module/state_reg_FSM_FFd35_4201 ),
    .CLK(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_15/CLK ),
    .I(\Add_Sub_Significands/r_add_subt_sgf [15]),
    .O(\Add_Sub_Significands/R_Sgf/Q [15]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X68Y124" ),
    .INIT ( 64'h0FF0F00FF00F0FF0 ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut<15>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\Operands_Classification/DMC/Q [13]),
    .ADR3(\Normalization_Smallest_Significand/SGFmRegister/Q [15]),
    .ADR2(\Operands_Classification/DMC/Q [31]),
    .ADR5(\Operands_Classification/DmC/Q<31>_0 ),
    .O(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [15])
  );
  X_FF #(
    .LOC ( "SLICE_X68Y124" ),
    .INIT ( 1'b0 ))
  \Add_Sub_Significands/R_Sgf/Q_14  (
    .CE(\FS_Module/state_reg_FSM_FFd35_4201 ),
    .CLK(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_14/CLK ),
    .I(\Add_Sub_Significands/r_add_subt_sgf [14]),
    .O(\Add_Sub_Significands/R_Sgf/Q [14]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X68Y124" ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<15>  (
    .CI(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy[11] ),
    .CYINIT(1'b0),
    .CO({\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy[15] , \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<15>_CO[2]_UNCONNECTED , 
\NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<15>_CO[1]_UNCONNECTED , \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<15>_CO[0]_UNCONNECTED })
,
    .DI({\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<15>/DI<3> , 
\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<15>/DI<2> , \NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<15>/DI<1> , 
\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<15>/DI<0> }),
    .O({\Add_Sub_Significands/r_add_subt_sgf [15], \Add_Sub_Significands/r_add_subt_sgf [14], \Add_Sub_Significands/r_add_subt_sgf [13], 
\Add_Sub_Significands/r_add_subt_sgf [12]}),
    .S({\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [15], \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [14], 
\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [13], \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [12]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X68Y124" ),
    .INIT ( 64'h0FF0F00FF00F0FF0 ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut<14>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\Operands_Classification/DMC/Q [12]),
    .ADR5(\Normalization_Smallest_Significand/SGFmRegister/Q [14]),
    .ADR2(\Operands_Classification/DMC/Q [31]),
    .ADR3(\Operands_Classification/DmC/Q<31>_0 ),
    .O(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [14])
  );
  X_FF #(
    .LOC ( "SLICE_X68Y124" ),
    .INIT ( 1'b0 ))
  \Add_Sub_Significands/R_Sgf/Q_13  (
    .CE(\FS_Module/state_reg_FSM_FFd35_4201 ),
    .CLK(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_13/CLK ),
    .I(\Add_Sub_Significands/r_add_subt_sgf [13]),
    .O(\Add_Sub_Significands/R_Sgf/Q [13]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X68Y124" ),
    .INIT ( 64'h0FF0F00FF00F0FF0 ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut<13>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(\Operands_Classification/DMC/Q [11]),
    .ADR2(\Normalization_Smallest_Significand/SGFmRegister/Q [13]),
    .ADR3(\Operands_Classification/DMC/Q [31]),
    .ADR4(\Operands_Classification/DmC/Q<31>_0 ),
    .O(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [13])
  );
  X_FF #(
    .LOC ( "SLICE_X68Y124" ),
    .INIT ( 1'b0 ))
  \Add_Sub_Significands/R_Sgf/Q_12  (
    .CE(\FS_Module/state_reg_FSM_FFd35_4201 ),
    .CLK(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_12/CLK ),
    .I(\Add_Sub_Significands/r_add_subt_sgf [12]),
    .O(\Add_Sub_Significands/R_Sgf/Q [12]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X68Y124" ),
    .INIT ( 64'h0FF0F00FF00F0FF0 ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut<12>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(\Operands_Classification/DMC/Q [10]),
    .ADR4(\Normalization_Smallest_Significand/SGFmRegister/Q [12]),
    .ADR2(\Operands_Classification/DMC/Q [31]),
    .ADR3(\Operands_Classification/DmC/Q<31>_0 ),
    .O(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [12])
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X50Y113" ))
  \Round_Resultant_Significand/Dir_M/Mmux_S171_cy  (
    .CI(\Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy[23] ),
    .CYINIT(1'b0),
    .CO({\NLW_Round_Resultant_Significand/Dir_M/Mmux_S171_cy_CO[3]_UNCONNECTED , 
\NLW_Round_Resultant_Significand/Dir_M/Mmux_S171_cy_CO[2]_UNCONNECTED , \NLW_Round_Resultant_Significand/Dir_M/Mmux_S171_cy_CO[1]_UNCONNECTED , 
\Round_Resultant_Significand/Sgf_Rounded [24]}),
    .DI({\NLW_Round_Resultant_Significand/Dir_M/Mmux_S171_cy_DI[3]_UNCONNECTED , 
\NLW_Round_Resultant_Significand/Dir_M/Mmux_S171_cy_DI[2]_UNCONNECTED , \NLW_Round_Resultant_Significand/Dir_M/Mmux_S171_cy_DI[1]_UNCONNECTED , 1'b0})
,
    .O({\NLW_Round_Resultant_Significand/Dir_M/Mmux_S171_cy_O[3]_UNCONNECTED , \NLW_Round_Resultant_Significand/Dir_M/Mmux_S171_cy_O[2]_UNCONNECTED , 
\NLW_Round_Resultant_Significand/Dir_M/Mmux_S171_cy_O[1]_UNCONNECTED , \NLW_Round_Resultant_Significand/Dir_M/Mmux_S171_cy_O[0]_UNCONNECTED }),
    .S({\NLW_Round_Resultant_Significand/Dir_M/Mmux_S171_cy_S[3]_UNCONNECTED , \NLW_Round_Resultant_Significand/Dir_M/Mmux_S171_cy_S[2]_UNCONNECTED , 
\NLW_Round_Resultant_Significand/Dir_M/Mmux_S171_cy_S[1]_UNCONNECTED , \Round_Resultant_Significand/Dir_M/Mmux_S171_lut_567 })
  );
  X_FF #(
    .LOC ( "SLICE_X50Y113" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Sgf_Ready_Reg/Q_24  (
    .CE(\FS_Module/state_reg_FSM_FFd14_3944 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_24/CLK ),
    .I(\Round_Resultant_Significand/Sgf_Rounded [24]),
    .O(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [24]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y113" ),
    .INIT ( 64'h2220444022204440 ))
  \Round_Resultant_Significand/Dir_M/Mmux_S171_lut  (
    .ADR4(\Operands_Classification/DMC/Q [31]),
    .ADR0(r_mode_0_IBUF_4281),
    .ADR1(r_mode_1_IBUF_4282),
    .ADR3(\Fourth_Module/SgfRegister_F/Q<0>_0 ),
    .ADR2(\Fourth_Module/SgfRegister_F/Q<1>_0 ),
    .ADR5(1'b1),
    .O(\Round_Resultant_Significand/Dir_M/Mmux_S171_lut_567 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y113" ),
    .INIT ( 32'h00000000 ))
  \N1_40.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_40.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X68Y127" ),
    .INIT ( 1'b0 ))
  \Add_Sub_Significands/R_Sgf/Q_26  (
    .CE(\FS_Module/state_reg_FSM_FFd35_4201 ),
    .CLK(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_26/CLK ),
    .I(\Add_Sub_Significands/r_add_subt_sgf [26]),
    .O(\Add_Sub_Significands/R_Sgf/Q [26]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X68Y127" ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_xor<26>  (
    .CI(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy[23] ),
    .CYINIT(1'b0),
    .CO({\NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_xor<26>_CO[3]_UNCONNECTED , 
\NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_xor<26>_CO[2]_UNCONNECTED , \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_xor<26>_CO[1]_UNCONNECTED 
, \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_xor<26>_CO[0]_UNCONNECTED }),
    .DI({\NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_xor<26>_DI[3]_UNCONNECTED , 
\NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_xor<26>_DI[2]_UNCONNECTED , 1'b1, 
\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_xor<26>/DI<0> }),
    .O({\NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_xor<26>_O[3]_UNCONNECTED , \Add_Sub_Significands/r_add_subt_sgf [26], 
\Add_Sub_Significands/r_add_subt_sgf [25], \Add_Sub_Significands/r_add_subt_sgf [24]}),
    .S({\NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_xor<26>_S[3]_UNCONNECTED , \Add_Sub_Significands/eq_sgn_INV_44_o2_532 , 
\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [25], \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [24]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X68Y127" ),
    .INIT ( 64'h00FF00FFFF00FF00 ))
  \Add_Sub_Significands/eq_sgn_INV_44_o21  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\Operands_Classification/DMC/Q [31]),
    .ADR5(\Operands_Classification/DmC/Q<31>_0 ),
    .O(\Add_Sub_Significands/eq_sgn_INV_44_o2_532 )
  );
  X_FF #(
    .LOC ( "SLICE_X68Y127" ),
    .INIT ( 1'b0 ))
  \Add_Sub_Significands/R_Sgf/Q_25  (
    .CE(\FS_Module/state_reg_FSM_FFd35_4201 ),
    .CLK(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_25/CLK ),
    .I(\Add_Sub_Significands/r_add_subt_sgf [25]),
    .O(\Add_Sub_Significands/R_Sgf/Q [25]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X68Y127" ),
    .INIT ( 64'h0FF0F00F0FF0F00F ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut<25>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\Normalization_Smallest_Significand/SGFmRegister/Q [25]),
    .ADR3(\Operands_Classification/DMC/Q [31]),
    .ADR2(\Operands_Classification/DmC/Q<31>_0 ),
    .ADR5(1'b1),
    .O(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [25])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X68Y127" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_4.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_4.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X68Y127" ),
    .INIT ( 1'b0 ))
  \Add_Sub_Significands/R_Sgf/Q_24  (
    .CE(\FS_Module/state_reg_FSM_FFd35_4201 ),
    .CLK(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_24/CLK ),
    .I(\Add_Sub_Significands/r_add_subt_sgf [24]),
    .O(\Add_Sub_Significands/R_Sgf/Q [24]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X68Y127" ),
    .INIT ( 64'h0FF0F00FF00F0FF0 ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut<24>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(\Operands_Classification/DMC/Q [22]),
    .ADR4(\Normalization_Smallest_Significand/SGFmRegister/Q [24]),
    .ADR3(\Operands_Classification/DMC/Q [31]),
    .ADR2(\Operands_Classification/DmC/Q<31>_0 ),
    .O(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [24])
  );
  X_BUF   \Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<3>/Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<3>_DMUX_Delay  (
    .I(\Round_Resultant_Significand/Sgf_Round_R [3]),
    .O(\Round_Resultant_Significand/Sgf_Round_R<3>_0 )
  );
  X_BUF   \Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<3>/Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<3>_CMUX_Delay  (
    .I(\Round_Resultant_Significand/Sgf_Round_R [2]),
    .O(\Round_Resultant_Significand/Sgf_Round_R<2>_0 )
  );
  X_BUF   \Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<3>/Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<3>_BMUX_Delay  (
    .I(\Round_Resultant_Significand/Sgf_Round_R [1]),
    .O(\Round_Resultant_Significand/Sgf_Round_R<1>_0 )
  );
  X_BUF   \Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<3>/Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<3>_AMUX_Delay  (
    .I(\Round_Resultant_Significand/Sgf_Round_R [0]),
    .O(\Round_Resultant_Significand/Sgf_Round_R<0>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y107" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q<3>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Round_Resultant_Significand/Round_Sgf_N/Q [3]),
    .ADR5(1'b1),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q<3>_rt_536 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y107" ),
    .INIT ( 32'h00000000 ))
  \N1_18.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_18.D5LUT_O_UNCONNECTED )
  );
  X_ZERO #(
    .LOC ( "SLICE_X50Y107" ))
  \ProtoComp40.CYINITGND  (
    .O(\NLW_ProtoComp40.CYINITGND_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X50Y107" ))
  \Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<3>  (
    .CI(1'b0),
    .CYINIT(1'b0),
    .CO({\Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy[3] , 
\NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<3>_CO[2]_UNCONNECTED , 
\NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<3>_CO[1]_UNCONNECTED , 
\NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b1}),
    .O({\Round_Resultant_Significand/Sgf_Round_R [3], \Round_Resultant_Significand/Sgf_Round_R [2], \Round_Resultant_Significand/Sgf_Round_R [1], 
\Round_Resultant_Significand/Sgf_Round_R [0]}),
    .S({\Round_Resultant_Significand/Round_Sgf_N/Q<3>_rt_536 , \Round_Resultant_Significand/Round_Sgf_N/Q<2>_rt_549 , 
\Round_Resultant_Significand/Round_Sgf_N/Q<1>_rt_546 , \Round_Resultant_Significand/Round_Adder/Madd_Data_S_lut [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y107" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q<2>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Round_Resultant_Significand/Round_Sgf_N/Q [2]),
    .ADR5(1'b1),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q<2>_rt_549 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y107" ),
    .INIT ( 32'h00000000 ))
  \N1_17.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_17.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y107" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q<1>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Round_Resultant_Significand/Round_Sgf_N/Q [1]),
    .ADR5(1'b1),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q<1>_rt_546 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y107" ),
    .INIT ( 32'h00000000 ))
  \N1_16.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_16.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y107" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \Round_Resultant_Significand/Round_Adder/Madd_Data_S_lut<0>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Round_Resultant_Significand/Round_Sgf_N/Q [0]),
    .ADR5(1'b1),
    .O(\Round_Resultant_Significand/Round_Adder/Madd_Data_S_lut [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y107" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_5.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_5.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X68Y126" ),
    .INIT ( 1'b0 ))
  \Add_Sub_Significands/R_Sgf/Q_23  (
    .CE(\FS_Module/state_reg_FSM_FFd35_4201 ),
    .CLK(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_23/CLK ),
    .I(\Add_Sub_Significands/r_add_subt_sgf [23]),
    .O(\Add_Sub_Significands/R_Sgf/Q [23]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X68Y126" ),
    .INIT ( 64'h0FF0F00FF00F0FF0 ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut<23>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\Operands_Classification/DMC/Q [21]),
    .ADR5(\Normalization_Smallest_Significand/SGFmRegister/Q [23]),
    .ADR2(\Operands_Classification/DMC/Q [31]),
    .ADR4(\Operands_Classification/DmC/Q<31>_0 ),
    .O(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [23])
  );
  X_FF #(
    .LOC ( "SLICE_X68Y126" ),
    .INIT ( 1'b0 ))
  \Add_Sub_Significands/R_Sgf/Q_22  (
    .CE(\FS_Module/state_reg_FSM_FFd35_4201 ),
    .CLK(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_22/CLK ),
    .I(\Add_Sub_Significands/r_add_subt_sgf [22]),
    .O(\Add_Sub_Significands/R_Sgf/Q [22]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X68Y126" ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<23>  (
    .CI(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy[19] ),
    .CYINIT(1'b0),
    .CO({\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy[23] , \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<23>_CO[2]_UNCONNECTED , 
\NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<23>_CO[1]_UNCONNECTED , \NLW_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<23>_CO[0]_UNCONNECTED })
,
    .DI({\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<23>/DI<3> , 
\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<23>/DI<2> , \NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<23>/DI<1> , 
\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<23>/DI<0> }),
    .O({\Add_Sub_Significands/r_add_subt_sgf [23], \Add_Sub_Significands/r_add_subt_sgf [22], \Add_Sub_Significands/r_add_subt_sgf [21], 
\Add_Sub_Significands/r_add_subt_sgf [20]}),
    .S({\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [23], \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [22], 
\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [21], \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [20]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X68Y126" ),
    .INIT ( 64'h0FF0F00FF00F0FF0 ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut<22>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/DMC/Q [20]),
    .ADR5(\Normalization_Smallest_Significand/SGFmRegister/Q [22]),
    .ADR3(\Operands_Classification/DMC/Q [31]),
    .ADR4(\Operands_Classification/DmC/Q<31>_0 ),
    .O(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [22])
  );
  X_FF #(
    .LOC ( "SLICE_X68Y126" ),
    .INIT ( 1'b0 ))
  \Add_Sub_Significands/R_Sgf/Q_21  (
    .CE(\FS_Module/state_reg_FSM_FFd35_4201 ),
    .CLK(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_21/CLK ),
    .I(\Add_Sub_Significands/r_add_subt_sgf [21]),
    .O(\Add_Sub_Significands/R_Sgf/Q [21]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X68Y126" ),
    .INIT ( 64'h0FF0F00FF00F0FF0 ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut<21>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/DMC/Q [19]),
    .ADR5(\Normalization_Smallest_Significand/SGFmRegister/Q [21]),
    .ADR3(\Operands_Classification/DMC/Q [31]),
    .ADR4(\Operands_Classification/DmC/Q<31>_0 ),
    .O(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [21])
  );
  X_FF #(
    .LOC ( "SLICE_X68Y126" ),
    .INIT ( 1'b0 ))
  \Add_Sub_Significands/R_Sgf/Q_20  (
    .CE(\FS_Module/state_reg_FSM_FFd35_4201 ),
    .CLK(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_20/CLK ),
    .I(\Add_Sub_Significands/r_add_subt_sgf [20]),
    .O(\Add_Sub_Significands/R_Sgf/Q [20]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X68Y126" ),
    .INIT ( 64'h0FF0F00FF00F0FF0 ))
  \Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut<20>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\Operands_Classification/DMC/Q [18]),
    .ADR4(\Normalization_Smallest_Significand/SGFmRegister/Q [20]),
    .ADR2(\Operands_Classification/DMC/Q [31]),
    .ADR5(\Operands_Classification/DmC/Q<31>_0 ),
    .O(\Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_lut [20])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y175" ))
  rst_187 (
    .PAD(rst)
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y175" ))
  \ProtoComp43.INTERMDISABLE_GND.1  (
    .O(\rst/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y175" ))
  rst_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\rst/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(rst_IBUF_3755),
    .I(rst),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y114" ))
  \Data_X<6>  (
    .PAD(Data_X[6])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y114" ))
  \ProtoComp43.INTERMDISABLE_GND.3  (
    .O(\Data_X<6>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y114" ))
  Data_X_6_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<6>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_6_IBUF_4286),
    .I(Data_X[6]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y106" ))
  \Data_X<7>  (
    .PAD(Data_X[7])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y106" ))
  \ProtoComp43.INTERMDISABLE_GND.4  (
    .O(\Data_X<7>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y106" ))
  Data_X_7_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<7>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_7_IBUF_4287),
    .I(Data_X[7]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y149" ))
  add_subt_183 (
    .PAD(add_subt)
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y149" ))
  \ProtoComp43.INTERMDISABLE_GND  (
    .O(\add_subt/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y149" ))
  add_subt_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\add_subt/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(add_subt_IBUF_4190),
    .I(add_subt),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y172" ))
  overflow_flag_190 (
    .PAD(overflow_flag)
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y172" ))
  overflow_flag_OBUF (
    .I(\NlwBufferSignal_overflow_flag_OBUF/I ),
    .O(overflow_flag)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y108" ))
  \Data_X<5>  (
    .PAD(Data_X[5])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y108" ))
  \ProtoComp43.INTERMDISABLE_GND.2  (
    .O(\Data_X<5>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y108" ))
  Data_X_5_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<5>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_5_IBUF_4285),
    .I(Data_X[5]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y105" ))
  \Data_X<8>  (
    .PAD(Data_X[8])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y105" ))
  \ProtoComp43.INTERMDISABLE_GND.5  (
    .O(\Data_X<8>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y105" ))
  Data_X_8_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<8>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_8_IBUF_4288),
    .I(Data_X[8]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y104" ))
  \Data_X<9>  (
    .PAD(Data_X[9])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y104" ))
  \ProtoComp43.INTERMDISABLE_GND.6  (
    .O(\Data_X<9>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y104" ))
  Data_X_9_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<9>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_9_IBUF_4289),
    .I(Data_X[9]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y139" ))
  \Data_Y<9>  (
    .PAD(Data_Y[9])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y139" ))
  \ProtoComp43.INTERMDISABLE_GND.21  (
    .O(\Data_Y<9>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y139" ))
  Data_Y_9_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<9>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_9_IBUF_4304),
    .I(Data_Y[9]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y103" ))
  \Data_X<10>  (
    .PAD(Data_X[10])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y103" ))
  \ProtoComp43.INTERMDISABLE_GND.22  (
    .O(\Data_X<10>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y103" ))
  Data_X_10_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<10>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_10_IBUF_4305),
    .I(Data_X[10]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y144" ))
  \Data_X<19>  (
    .PAD(Data_X[19])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y144" ))
  \ProtoComp43.INTERMDISABLE_GND.18  (
    .O(\Data_X<19>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y144" ))
  Data_X_19_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<19>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_19_IBUF_4301),
    .I(Data_X[19]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y171" ))
  ready_277 (
    .PAD(ready)
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y171" ))
  ready_OBUF (
    .I(\NlwBufferSignal_ready_OBUF/I ),
    .O(ready)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y109" ))
  \Data_X<4>  (
    .PAD(Data_X[4])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y109" ))
  \ProtoComp43.INTERMDISABLE_GND.11  (
    .O(\Data_X<4>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y109" ))
  Data_X_4_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<4>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_4_IBUF_4294),
    .I(Data_X[4]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y148" ))
  \Data_X<15>  (
    .PAD(Data_X[15])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y148" ))
  \ProtoComp43.INTERMDISABLE_GND.14  (
    .O(\Data_X<15>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y148" ))
  Data_X_15_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<15>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_15_IBUF_4297),
    .I(Data_X[15]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y100" ))
  \Data_X<13>  (
    .PAD(Data_X[13])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y100" ))
  \ProtoComp43.INTERMDISABLE_GND.23  (
    .O(\Data_X<13>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y100" ))
  Data_X_13_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<13>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_13_IBUF_4306),
    .I(Data_X[13]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y146" ))
  \Data_X<17>  (
    .PAD(Data_X[17])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y146" ))
  \ProtoComp43.INTERMDISABLE_GND.12  (
    .O(\Data_X<17>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y146" ))
  Data_X_17_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<17>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_17_IBUF_4295),
    .I(Data_X[17]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y145" ))
  \Data_X<18>  (
    .PAD(Data_X[18])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y145" ))
  \ProtoComp43.INTERMDISABLE_GND.13  (
    .O(\Data_X<18>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y145" ))
  Data_X_18_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<18>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_18_IBUF_4296),
    .I(Data_X[18]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y147" ))
  \Data_X<16>  (
    .PAD(Data_X[16])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y147" ))
  \ProtoComp43.INTERMDISABLE_GND.15  (
    .O(\Data_X<16>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y147" ))
  Data_X_16_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<16>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_16_IBUF_4298),
    .I(Data_X[16]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y143" ))
  \Data_Y<5>  (
    .PAD(Data_Y[5])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y143" ))
  \ProtoComp43.INTERMDISABLE_GND.16  (
    .O(\Data_Y<5>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y143" ))
  Data_Y_5_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<5>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_5_IBUF_4299),
    .I(Data_Y[5]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y142" ))
  \Data_Y<6>  (
    .PAD(Data_Y[6])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y142" ))
  \ProtoComp43.INTERMDISABLE_GND.17  (
    .O(\Data_Y<6>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y142" ))
  Data_Y_6_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<6>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_6_IBUF_4300),
    .I(Data_Y[6]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y140" ))
  \Data_Y<8>  (
    .PAD(Data_Y[8])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y140" ))
  \ProtoComp43.INTERMDISABLE_GND.20  (
    .O(\Data_Y<8>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y140" ))
  Data_Y_8_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<8>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_8_IBUF_4303),
    .I(Data_Y[8]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y141" ))
  \Data_Y<7>  (
    .PAD(Data_Y[7])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y141" ))
  \ProtoComp43.INTERMDISABLE_GND.19  (
    .O(\Data_Y<7>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y141" ))
  Data_Y_7_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<7>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_7_IBUF_4302),
    .I(Data_Y[7]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y111" ))
  \Data_X<2>  (
    .PAD(Data_X[2])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y111" ))
  \ProtoComp43.INTERMDISABLE_GND.9  (
    .O(\Data_X<2>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y111" ))
  Data_X_2_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<2>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_2_IBUF_4292),
    .I(Data_X[2]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y110" ))
  \Data_X<3>  (
    .PAD(Data_X[3])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y110" ))
  \ProtoComp43.INTERMDISABLE_GND.10  (
    .O(\Data_X<3>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y110" ))
  Data_X_3_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<3>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_3_IBUF_4293),
    .I(Data_X[3]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y113" ))
  \Data_X<0>  (
    .PAD(Data_X[0])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y113" ))
  \ProtoComp43.INTERMDISABLE_GND.7  (
    .O(\Data_X<0>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y113" ))
  Data_X_0_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<0>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_0_IBUF_4290),
    .I(Data_X[0]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y115" ))
  \Data_X<1>  (
    .PAD(Data_X[1])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y115" ))
  \ProtoComp43.INTERMDISABLE_GND.8  (
    .O(\Data_X<1>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y115" ))
  Data_X_1_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<1>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_1_IBUF_4291),
    .I(Data_X[1]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y117" ))
  \final_result_ieee<14>  (
    .PAD(final_result_ieee[14])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y117" ))
  final_result_ieee_14_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_14_OBUF/I ),
    .O(final_result_ieee[14])
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y146" ))
  \Data_Y<2>  (
    .PAD(Data_Y[2])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y146" ))
  \ProtoComp43.INTERMDISABLE_GND.31  (
    .O(\Data_Y<2>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y146" ))
  Data_Y_2_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<2>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_2_IBUF_4314),
    .I(Data_Y[2]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y149" ))
  \Data_X<14>  (
    .PAD(Data_X[14])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y149" ))
  \ProtoComp43.INTERMDISABLE_GND.24  (
    .O(\Data_X<14>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y149" ))
  Data_X_14_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<14>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_14_IBUF_4307),
    .I(Data_X[14]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y102" ))
  \Data_X<11>  (
    .PAD(Data_X[11])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y102" ))
  \ProtoComp43.INTERMDISABLE_GND.25  (
    .O(\Data_X<11>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y102" ))
  Data_X_11_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<11>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_11_IBUF_4308),
    .I(Data_X[11]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y144" ))
  \Data_Y<4>  (
    .PAD(Data_Y[4])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y144" ))
  \ProtoComp43.INTERMDISABLE_GND.35  (
    .O(\Data_Y<4>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y144" ))
  Data_Y_4_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<4>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_4_IBUF_4318),
    .I(Data_Y[4]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y147" ))
  \Data_Y<1>  (
    .PAD(Data_Y[1])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y147" ))
  \ProtoComp43.INTERMDISABLE_GND.29  (
    .O(\Data_Y<1>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y147" ))
  Data_Y_1_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<1>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_1_IBUF_4312),
    .I(Data_Y[1]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y118" ))
  \final_result_ieee<13>  (
    .PAD(final_result_ieee[13])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y118" ))
  final_result_ieee_13_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_13_OBUF/I ),
    .O(final_result_ieee[13])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y143" ))
  \Data_X<20>  (
    .PAD(Data_X[20])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y143" ))
  \ProtoComp43.INTERMDISABLE_GND.37  (
    .O(\Data_X<20>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y143" ))
  Data_X_20_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<20>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_20_IBUF_4320),
    .I(Data_X[20]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y138" ))
  \Data_X<25>  (
    .PAD(Data_X[25])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y138" ))
  \ProtoComp43.INTERMDISABLE_GND.32  (
    .O(\Data_X<25>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y138" ))
  Data_X_25_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<25>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_25_IBUF_4315),
    .I(Data_X[25]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y137" ))
  \Data_X<26>  (
    .PAD(Data_X[26])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y137" ))
  \ProtoComp43.INTERMDISABLE_GND.34  (
    .O(\Data_X<26>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y137" ))
  Data_X_26_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<26>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_26_IBUF_4317),
    .I(Data_X[26]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y135" ))
  \Data_X<28>  (
    .PAD(Data_X[28])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y135" ))
  \ProtoComp43.INTERMDISABLE_GND.30  (
    .O(\Data_X<28>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y135" ))
  Data_X_28_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<28>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_28_IBUF_4313),
    .I(Data_X[28]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y148" ))
  \Data_Y<0>  (
    .PAD(Data_Y[0])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y148" ))
  \ProtoComp43.INTERMDISABLE_GND.27  (
    .O(\Data_Y<0>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y148" ))
  Data_Y_0_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<0>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_0_IBUF_4310),
    .I(Data_Y[0]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y145" ))
  \Data_Y<3>  (
    .PAD(Data_Y[3])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y145" ))
  \ProtoComp43.INTERMDISABLE_GND.33  (
    .O(\Data_Y<3>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y145" ))
  Data_Y_3_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_Y<3>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_Y_3_IBUF_4316),
    .I(Data_Y[3]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y121" ))
  \final_result_ieee<10>  (
    .PAD(final_result_ieee[10])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y121" ))
  final_result_ieee_10_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_10_OBUF/I ),
    .O(final_result_ieee[10])
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y101" ))
  \Data_X<12>  (
    .PAD(Data_X[12])
  );
  X_ZERO #(
    .LOC ( "IOB_X1Y101" ))
  \ProtoComp43.INTERMDISABLE_GND.26  (
    .O(\Data_X<12>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X1Y101" ))
  Data_X_12_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<12>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_12_IBUF_4309),
    .I(Data_X[12]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y134" ))
  \Data_X<29>  (
    .PAD(Data_X[29])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y134" ))
  \ProtoComp43.INTERMDISABLE_GND.36  (
    .O(\Data_X<29>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y134" ))
  Data_X_29_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<29>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_29_IBUF_4319),
    .I(Data_X[29]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y136" ))
  \Data_X<27>  (
    .PAD(Data_X[27])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y136" ))
  \ProtoComp43.INTERMDISABLE_GND.28  (
    .O(\Data_X<27>/ProtoComp43.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y136" ))
  Data_X_27_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\Data_X<27>/ProtoComp43.INTERMDISABLE_GND.0 ),
    .O(Data_X_27_IBUF_4311),
    .I(Data_X[27]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y120" ))
  \final_result_ieee<11>  (
    .PAD(final_result_ieee[11])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y120" ))
  final_result_ieee_11_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_11_OBUF/I ),
    .O(final_result_ieee[11])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y119" ))
  \final_result_ieee<12>  (
    .PAD(final_result_ieee[12])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y119" ))
  final_result_ieee_12_OBUF (
    .I(\NlwBufferSignal_final_result_ieee_12_OBUF/I ),
    .O(final_result_ieee[12])
  );
  X_BUF   \Tenth_Module/Final_Result_IEEE/Q<16>/Tenth_Module/Final_Result_IEEE/Q<16>_DMUX_Delay  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [15]),
    .O(\Tenth_Module/Final_Result_IEEE/Q<15>_0 )
  );
  X_BUF   \Tenth_Module/Final_Result_IEEE/Q<16>/Tenth_Module/Final_Result_IEEE/Q<16>_CMUX_Delay  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [13]),
    .O(\Tenth_Module/Final_Result_IEEE/Q<13>_0 )
  );
  X_BUF   \Tenth_Module/Final_Result_IEEE/Q<16>/Tenth_Module/Final_Result_IEEE/Q<16>_BMUX_Delay  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [11]),
    .O(\Tenth_Module/Final_Result_IEEE/Q<11>_0 )
  );
  X_BUF   \Tenth_Module/Final_Result_IEEE/Q<16>/Tenth_Module/Final_Result_IEEE/Q<16>_AMUX_Delay  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [0]),
    .O(\Tenth_Module/Final_Result_IEEE/Q<0>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X30Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_16  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_16/CLK ),
    .I(\Tenth_Module/final_result_reg [16]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [16]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X30Y119" ),
    .INIT ( 64'hC0C0C0C0C0C0C0C0 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S81  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR1(\Sel_10_P_b/Q_0_3768 ),
    .ADR2(\Tenth_Module/Cresult_Reg/Q<16>_0 ),
    .ADR5(1'b1),
    .O(\Tenth_Module/final_result_reg [16])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X30Y119" ),
    .INIT ( 32'h88888888 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S71  (
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\Tenth_Module/Cresult_Reg/Q [15]),
    .ADR1(\Sel_10_P_b/Q_0_3768 ),
    .ADR4(1'b1),
    .O(\Tenth_Module/final_result_reg [15])
  );
  X_FF #(
    .LOC ( "SLICE_X30Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_15  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_15/CLK ),
    .I(\Tenth_Module/final_result_reg [15]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [15]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X30Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_14  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_14/CLK ),
    .I(\Tenth_Module/final_result_reg [14]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [14]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X30Y119" ),
    .INIT ( 64'hCCCC0000CCCC0000 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S61  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(\Sel_10_P_b/Q_0_3768 ),
    .ADR4(\Tenth_Module/Cresult_Reg/Q [14]),
    .ADR5(1'b1),
    .O(\Tenth_Module/final_result_reg [14])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X30Y119" ),
    .INIT ( 32'hCC00CC00 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S51  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(\Tenth_Module/Cresult_Reg/Q [13]),
    .ADR1(\Sel_10_P_b/Q_0_3768 ),
    .ADR4(1'b1),
    .O(\Tenth_Module/final_result_reg [13])
  );
  X_FF #(
    .LOC ( "SLICE_X30Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_13  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_13/CLK ),
    .I(\Tenth_Module/final_result_reg [13]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [13]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X30Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_12  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_12/CLK ),
    .I(\Tenth_Module/final_result_reg [12]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [12]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X30Y119" ),
    .INIT ( 64'hF0F00000F0F00000 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S41  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(\Sel_10_P_b/Q_0_3768 ),
    .ADR2(\Tenth_Module/Cresult_Reg/Q [12]),
    .ADR5(1'b1),
    .O(\Tenth_Module/final_result_reg [12])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X30Y119" ),
    .INIT ( 32'hFF000000 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S31  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\Tenth_Module/Cresult_Reg/Q [11]),
    .ADR4(\Sel_10_P_b/Q_0_3768 ),
    .ADR2(1'b1),
    .O(\Tenth_Module/final_result_reg [11])
  );
  X_FF #(
    .LOC ( "SLICE_X30Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_11  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_11/CLK ),
    .I(\Tenth_Module/final_result_reg [11]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [11]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X30Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_10  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_10/CLK ),
    .I(\Tenth_Module/final_result_reg [10]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [10]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X30Y119" ),
    .INIT ( 64'hF0F00000F0F00000 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S21  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(\Sel_10_P_b/Q_0_3768 ),
    .ADR2(\Tenth_Module/Cresult_Reg/Q [10]),
    .ADR5(1'b1),
    .O(\Tenth_Module/final_result_reg [10])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X30Y119" ),
    .INIT ( 32'hFF000000 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\Tenth_Module/Cresult_Reg/Q [0]),
    .ADR4(\Sel_10_P_b/Q_0_3768 ),
    .ADR2(1'b1),
    .O(\Tenth_Module/final_result_reg [0])
  );
  X_FF #(
    .LOC ( "SLICE_X30Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_0  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_0/CLK ),
    .I(\Tenth_Module/final_result_reg [0]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [0]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Tenth_Module/Final_Result_IEEE/Q<9>/Tenth_Module/Final_Result_IEEE/Q<9>_DMUX_Delay  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [17]),
    .O(\Tenth_Module/Final_Result_IEEE/Q<17>_0 )
  );
  X_BUF   \Tenth_Module/Final_Result_IEEE/Q<9>/Tenth_Module/Final_Result_IEEE/Q<9>_CMUX_Delay  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [7]),
    .O(\Tenth_Module/Final_Result_IEEE/Q<7>_0 )
  );
  X_BUF   \Tenth_Module/Final_Result_IEEE/Q<9>/Tenth_Module/Final_Result_IEEE/Q<9>_BMUX_Delay  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [5]),
    .O(\Tenth_Module/Final_Result_IEEE/Q<5>_0 )
  );
  X_BUF   \Tenth_Module/Final_Result_IEEE/Q<9>/Tenth_Module/Final_Result_IEEE/Q<9>_AMUX_Delay  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [3]),
    .O(\Tenth_Module/Final_Result_IEEE/Q<3>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X31Y120" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_9  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_9/CLK ),
    .I(\Tenth_Module/final_result_reg [9]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [9]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X31Y120" ),
    .INIT ( 64'hF0F00000F0F00000 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S321  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(\Sel_10_P_b/Q_0_3768 ),
    .ADR2(\Tenth_Module/Cresult_Reg/Q [9]),
    .ADR5(1'b1),
    .O(\Tenth_Module/final_result_reg [9])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X31Y120" ),
    .INIT ( 32'hFF000000 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S91  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\Tenth_Module/Cresult_Reg/Q<17>_0 ),
    .ADR4(\Sel_10_P_b/Q_0_3768 ),
    .ADR2(1'b1),
    .O(\Tenth_Module/final_result_reg [17])
  );
  X_FF #(
    .LOC ( "SLICE_X31Y120" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_17  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_17/CLK ),
    .I(\Tenth_Module/final_result_reg [17]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [17]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X31Y120" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_8  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_8/CLK ),
    .I(\Tenth_Module/final_result_reg [8]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [8]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X31Y120" ),
    .INIT ( 64'hFF000000FF000000 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S311  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\Sel_10_P_b/Q_0_3768 ),
    .ADR3(\Tenth_Module/Cresult_Reg/Q [8]),
    .ADR5(1'b1),
    .O(\Tenth_Module/final_result_reg [8])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X31Y120" ),
    .INIT ( 32'hF0F00000 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S301  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Tenth_Module/Cresult_Reg/Q<7>_0 ),
    .ADR4(\Sel_10_P_b/Q_0_3768 ),
    .ADR3(1'b1),
    .O(\Tenth_Module/final_result_reg [7])
  );
  X_FF #(
    .LOC ( "SLICE_X31Y120" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_7  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_7/CLK ),
    .I(\Tenth_Module/final_result_reg [7]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [7]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X31Y120" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_6  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_6/CLK ),
    .I(\Tenth_Module/final_result_reg [6]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [6]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X31Y120" ),
    .INIT ( 64'hAAAA0000AAAA0000 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S291  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR0(\Sel_10_P_b/Q_0_3768 ),
    .ADR4(\Tenth_Module/Cresult_Reg/Q<6>_0 ),
    .ADR5(1'b1),
    .O(\Tenth_Module/final_result_reg [6])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X31Y120" ),
    .INIT ( 32'hAA00AA00 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S281  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR3(\Tenth_Module/Cresult_Reg/Q<5>_0 ),
    .ADR0(\Sel_10_P_b/Q_0_3768 ),
    .ADR4(1'b1),
    .O(\Tenth_Module/final_result_reg [5])
  );
  X_FF #(
    .LOC ( "SLICE_X31Y120" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_5  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_5/CLK ),
    .I(\Tenth_Module/final_result_reg [5]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [5]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X31Y120" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_4  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_4/CLK ),
    .I(\Tenth_Module/final_result_reg [4]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [4]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X31Y120" ),
    .INIT ( 64'hAAAA0000AAAA0000 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S271  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR0(\Sel_10_P_b/Q_0_3768 ),
    .ADR4(\Tenth_Module/Cresult_Reg/Q<4>_0 ),
    .ADR5(1'b1),
    .O(\Tenth_Module/final_result_reg [4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X31Y120" ),
    .INIT ( 32'hA0A0A0A0 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S261  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(\Tenth_Module/Cresult_Reg/Q [3]),
    .ADR0(\Sel_10_P_b/Q_0_3768 ),
    .ADR4(1'b1),
    .O(\Tenth_Module/final_result_reg [3])
  );
  X_FF #(
    .LOC ( "SLICE_X31Y120" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_3  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_3/CLK ),
    .I(\Tenth_Module/final_result_reg [3]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [3]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Tenth_Module/Final_Result_IEEE/Q<31>/Tenth_Module/Final_Result_IEEE/Q<31>_DMUX_Delay  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [2]),
    .O(\Tenth_Module/Final_Result_IEEE/Q<2>_0 )
  );
  X_BUF   \Tenth_Module/Final_Result_IEEE/Q<31>/Tenth_Module/Final_Result_IEEE/Q<31>_CMUX_Delay  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [29]),
    .O(\Tenth_Module/Final_Result_IEEE/Q<29>_0 )
  );
  X_BUF   \Tenth_Module/Final_Result_IEEE/Q<31>/Tenth_Module/Final_Result_IEEE/Q<31>_BMUX_Delay  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [27]),
    .O(\Tenth_Module/Final_Result_IEEE/Q<27>_0 )
  );
  X_BUF   \Tenth_Module/Final_Result_IEEE/Q<31>/Tenth_Module/Final_Result_IEEE/Q<31>_AMUX_Delay  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [25]),
    .O(\Tenth_Module/Final_Result_IEEE/Q<25>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X32Y122" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_31  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_31/CLK ),
    .I(\Tenth_Module/final_result_reg [31]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [31]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X32Y122" ),
    .INIT ( 64'hAAFFAA00AAFFAA00 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S251  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR3(\Sel_10_P_b/Q_0_3768 ),
    .ADR4(\Operands_Classification/DMC/Q [31]),
    .ADR0(\Tenth_Module/Cresult_Reg/Q<31>_0 ),
    .ADR5(1'b1),
    .O(\Tenth_Module/final_result_reg [31])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X32Y122" ),
    .INIT ( 32'hF000F000 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S231  (
    .ADR0(1'b1),
    .ADR2(\Tenth_Module/Cresult_Reg/Q [2]),
    .ADR3(\Sel_10_P_b/Q_0_3768 ),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .O(\Tenth_Module/final_result_reg [2])
  );
  X_FF #(
    .LOC ( "SLICE_X32Y122" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_2  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_2/CLK ),
    .I(\Tenth_Module/final_result_reg [2]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [2]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X32Y122" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_30  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_30/CLK ),
    .I(\Tenth_Module/final_result_reg [30]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [30]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X32Y122" ),
    .INIT ( 64'hFF0FF000FF0FF000 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S241  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Sel_10_P_b/Q_0_3768 ),
    .ADR4(\Sel_10_P_a/Q_0_3825 ),
    .ADR3(\Tenth_Module/Cresult_Reg/Q<30>_0 ),
    .ADR5(1'b1),
    .O(\Tenth_Module/final_result_reg [30])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X32Y122" ),
    .INIT ( 32'hCFCFC0C0 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S221  (
    .ADR0(1'b1),
    .ADR1(\Tenth_Module/Cresult_Reg/Q<29>_0 ),
    .ADR2(\Sel_10_P_b/Q_0_3768 ),
    .ADR4(\Sel_10_P_a/Q_0_3825 ),
    .ADR3(1'b1),
    .O(\Tenth_Module/final_result_reg [29])
  );
  X_FF #(
    .LOC ( "SLICE_X32Y122" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_29  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_29/CLK ),
    .I(\Tenth_Module/final_result_reg [29]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [29]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X32Y122" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_28  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_28/CLK ),
    .I(\Tenth_Module/final_result_reg [28]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [28]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X32Y122" ),
    .INIT ( 64'hFF00F0F0FF00F0F0 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S211  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\Sel_10_P_b/Q_0_3768 ),
    .ADR2(\Sel_10_P_a/Q_0_3825 ),
    .ADR3(\Tenth_Module/Cresult_Reg/Q<28>_0 ),
    .ADR5(1'b1),
    .O(\Tenth_Module/final_result_reg [28])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X32Y122" ),
    .INIT ( 32'hCCCCF0F0 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S201  (
    .ADR0(1'b1),
    .ADR1(\Tenth_Module/Cresult_Reg/Q [27]),
    .ADR4(\Sel_10_P_b/Q_0_3768 ),
    .ADR2(\Sel_10_P_a/Q_0_3825 ),
    .ADR3(1'b1),
    .O(\Tenth_Module/final_result_reg [27])
  );
  X_FF #(
    .LOC ( "SLICE_X32Y122" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_27  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_27/CLK ),
    .I(\Tenth_Module/final_result_reg [27]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [27]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X32Y122" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_26  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_26/CLK ),
    .I(\Tenth_Module/final_result_reg [26]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [26]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X32Y122" ),
    .INIT ( 64'hFF00F0F0FF00F0F0 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S191  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\Sel_10_P_b/Q_0_3768 ),
    .ADR2(\Sel_10_P_a/Q_0_3825 ),
    .ADR3(\Tenth_Module/Cresult_Reg/Q [26]),
    .ADR5(1'b1),
    .O(\Tenth_Module/final_result_reg [26])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X32Y122" ),
    .INIT ( 32'hCCCCF0F0 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S181  (
    .ADR0(1'b1),
    .ADR1(\Tenth_Module/Cresult_Reg/Q [25]),
    .ADR4(\Sel_10_P_b/Q_0_3768 ),
    .ADR2(\Sel_10_P_a/Q_0_3825 ),
    .ADR3(1'b1),
    .O(\Tenth_Module/final_result_reg [25])
  );
  X_FF #(
    .LOC ( "SLICE_X32Y122" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_25  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_25/CLK ),
    .I(\Tenth_Module/final_result_reg [25]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [25]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Tenth_Module/Final_Result_IEEE/Q<24>/Tenth_Module/Final_Result_IEEE/Q<24>_DMUX_Delay  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [23]),
    .O(\Tenth_Module/Final_Result_IEEE/Q<23>_0 )
  );
  X_BUF   \Tenth_Module/Final_Result_IEEE/Q<24>/Tenth_Module/Final_Result_IEEE/Q<24>_CMUX_Delay  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [21]),
    .O(\Tenth_Module/Final_Result_IEEE/Q<21>_0 )
  );
  X_BUF   \Tenth_Module/Final_Result_IEEE/Q<24>/Tenth_Module/Final_Result_IEEE/Q<24>_BMUX_Delay  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [1]),
    .O(\Tenth_Module/Final_Result_IEEE/Q<1>_0 )
  );
  X_BUF   \Tenth_Module/Final_Result_IEEE/Q<24>/Tenth_Module/Final_Result_IEEE/Q<24>_AMUX_Delay  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [18]),
    .O(\Tenth_Module/Final_Result_IEEE/Q<18>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X32Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_24  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_24/CLK ),
    .I(\Tenth_Module/final_result_reg [24]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [24]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X32Y119" ),
    .INIT ( 64'hF0FFF000F0FFF000 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S171  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\Sel_10_P_b/Q_0_3768 ),
    .ADR4(\Sel_10_P_a/Q_0_3825 ),
    .ADR2(\Tenth_Module/Cresult_Reg/Q [24]),
    .ADR5(1'b1),
    .O(\Tenth_Module/final_result_reg [24])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X32Y119" ),
    .INIT ( 32'hCCFFCC00 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S161  (
    .ADR0(1'b1),
    .ADR1(\Tenth_Module/Cresult_Reg/Q [23]),
    .ADR3(\Sel_10_P_b/Q_0_3768 ),
    .ADR4(\Sel_10_P_a/Q_0_3825 ),
    .ADR2(1'b1),
    .O(\Tenth_Module/final_result_reg [23])
  );
  X_FF #(
    .LOC ( "SLICE_X32Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_23  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_23/CLK ),
    .I(\Tenth_Module/final_result_reg [23]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [23]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X32Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_22  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_22/CLK ),
    .I(\Tenth_Module/final_result_reg [22]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [22]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X32Y119" ),
    .INIT ( 64'hF0F00000F0F00000 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S151  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(\Sel_10_P_b/Q_0_3768 ),
    .ADR2(\Tenth_Module/Cresult_Reg/Q [22]),
    .ADR5(1'b1),
    .O(\Tenth_Module/final_result_reg [22])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X32Y119" ),
    .INIT ( 32'hFF000000 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S141  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\Tenth_Module/Cresult_Reg/Q [21]),
    .ADR4(\Sel_10_P_b/Q_0_3768 ),
    .ADR2(1'b1),
    .O(\Tenth_Module/final_result_reg [21])
  );
  X_FF #(
    .LOC ( "SLICE_X32Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_21  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_21/CLK ),
    .I(\Tenth_Module/final_result_reg [21]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [21]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X32Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_20  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_20/CLK ),
    .I(\Tenth_Module/final_result_reg [20]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [20]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X32Y119" ),
    .INIT ( 64'hF0F00000F0F00000 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S131  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(\Sel_10_P_b/Q_0_3768 ),
    .ADR2(\Tenth_Module/Cresult_Reg/Q [20]),
    .ADR5(1'b1),
    .O(\Tenth_Module/final_result_reg [20])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X32Y119" ),
    .INIT ( 32'hFF000000 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S121  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\Tenth_Module/Cresult_Reg/Q [1]),
    .ADR4(\Sel_10_P_b/Q_0_3768 ),
    .ADR2(1'b1),
    .O(\Tenth_Module/final_result_reg [1])
  );
  X_FF #(
    .LOC ( "SLICE_X32Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_1  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_1/CLK ),
    .I(\Tenth_Module/final_result_reg [1]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [1]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X32Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_19  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_19/CLK ),
    .I(\Tenth_Module/final_result_reg [19]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [19]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X32Y119" ),
    .INIT ( 64'hFF000000FF000000 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S111  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\Sel_10_P_b/Q_0_3768 ),
    .ADR3(\Tenth_Module/Cresult_Reg/Q<19>_0 ),
    .ADR5(1'b1),
    .O(\Tenth_Module/final_result_reg [19])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X32Y119" ),
    .INIT ( 32'hF0F00000 ))
  \Tenth_Module/Final_Result_Mux_Reg/Mmux_S101  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Tenth_Module/Cresult_Reg/Q<18>_0 ),
    .ADR4(\Sel_10_P_b/Q_0_3768 ),
    .ADR3(1'b1),
    .O(\Tenth_Module/final_result_reg [18])
  );
  X_FF #(
    .LOC ( "SLICE_X32Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Final_Result_IEEE/Q_18  (
    .CE(load_19),
    .CLK(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_18/CLK ),
    .I(\Tenth_Module/final_result_reg [18]),
    .O(\Tenth_Module/Final_Result_IEEE/Q [18]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_CKBUF #(
    .LOC ( "BUFGCTRL_X0Y31" ))
  \clk_BUFGP/BUFG  (
    .I(\NlwBufferSignal_clk_BUFGP/BUFG/IN ),
    .O(clk_BUFGP)
  );
  X_FF #(
    .LOC ( "SLICE_X39Y128" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd6/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd6/IN ),
    .O(\FS_Module/state_reg_FSM_FFd5-In ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_BUF   \Tenth_Module/Cresult_Reg/Q<27>/Tenth_Module/Cresult_Reg/Q<27>_DMUX_Delay  (
    .I(\Tenth_Module/Cresult_Reg/Q [31]),
    .O(\Tenth_Module/Cresult_Reg/Q<31>_0 )
  );
  X_BUF   \Tenth_Module/Cresult_Reg/Q<27>/Tenth_Module/Cresult_Reg/Q<27>_CMUX_Delay  (
    .I(\Tenth_Module/Cresult_Reg/Q [30]),
    .O(\Tenth_Module/Cresult_Reg/Q<30>_0 )
  );
  X_BUF   \Tenth_Module/Cresult_Reg/Q<27>/Tenth_Module/Cresult_Reg/Q<27>_BMUX_Delay  (
    .I(\Tenth_Module/Cresult_Reg/Q [29]),
    .O(\Tenth_Module/Cresult_Reg/Q<29>_0 )
  );
  X_BUF   \Tenth_Module/Cresult_Reg/Q<27>/Tenth_Module/Cresult_Reg/Q<27>_AMUX_Delay  (
    .I(\Tenth_Module/Cresult_Reg/Q [28]),
    .O(\Tenth_Module/Cresult_Reg/Q<28>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X35Y122" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_27  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_27/CLK ),
    .I(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_27/IN ),
    .O(\Tenth_Module/Cresult_Reg/Q [27]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X35Y122" ),
    .INIT ( 32'hFFFF0000 ))
  \Operands_Classification/DMC/Q<31>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Operands_Classification/DMC/Q [31]),
    .O(\Operands_Classification/DMC/Q<31>_rt_1006 )
  );
  X_FF #(
    .LOC ( "SLICE_X35Y122" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_31  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_31/CLK ),
    .I(\Operands_Classification/DMC/Q<31>_rt_1006 ),
    .O(\Tenth_Module/Cresult_Reg/Q [31]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X35Y122" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_26  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_26/CLK ),
    .I(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_26/IN ),
    .O(\Tenth_Module/Cresult_Reg/Q [26]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X35Y122" ),
    .INIT ( 32'hCCCCCCCC ))
  \Select_Final_Exponent/exp_fp_reg/Q<7>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\Select_Final_Exponent/exp_fp_reg/Q [7]),
    .O(\Select_Final_Exponent/exp_fp_reg/Q<7>_rt_1008 )
  );
  X_FF #(
    .LOC ( "SLICE_X35Y122" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_30  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_30/CLK ),
    .I(\Select_Final_Exponent/exp_fp_reg/Q<7>_rt_1008 ),
    .O(\Tenth_Module/Cresult_Reg/Q [30]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X35Y122" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_25  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_25/CLK ),
    .I(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_25/IN ),
    .O(\Tenth_Module/Cresult_Reg/Q [25]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X35Y122" ),
    .INIT ( 32'hF0F0F0F0 ))
  \Select_Final_Exponent/exp_fp_reg/Q<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\Select_Final_Exponent/exp_fp_reg/Q<6>_0 ),
    .O(\Select_Final_Exponent/exp_fp_reg/Q<6>_rt_1003 )
  );
  X_FF #(
    .LOC ( "SLICE_X35Y122" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_29  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_29/CLK ),
    .I(\Select_Final_Exponent/exp_fp_reg/Q<6>_rt_1003 ),
    .O(\Tenth_Module/Cresult_Reg/Q [29]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X35Y122" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_24  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_24/CLK ),
    .I(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_24/IN ),
    .O(\Tenth_Module/Cresult_Reg/Q [24]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X35Y122" ),
    .INIT ( 32'hAAAAAAAA ))
  \Select_Final_Exponent/exp_fp_reg/Q<5>_rt  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\Select_Final_Exponent/exp_fp_reg/Q [5]),
    .O(\Select_Final_Exponent/exp_fp_reg/Q<5>_rt_1020 )
  );
  X_FF #(
    .LOC ( "SLICE_X35Y122" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_28  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_28/CLK ),
    .I(\Select_Final_Exponent/exp_fp_reg/Q<5>_rt_1020 ),
    .O(\Tenth_Module/Cresult_Reg/Q [28]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X39Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_23  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_23/CLK ),
    .I(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_23/IN ),
    .O(\Tenth_Module/Cresult_Reg/Q [23]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X39Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_22  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_22/CLK ),
    .I(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_22/IN ),
    .O(\Tenth_Module/Cresult_Reg/Q [22]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X39Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_21  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_21/CLK ),
    .I(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_21/IN ),
    .O(\Tenth_Module/Cresult_Reg/Q [21]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X39Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_20  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_20/CLK ),
    .I(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_20/IN ),
    .O(\Tenth_Module/Cresult_Reg/Q [20]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X37Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_3  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_3/CLK ),
    .I(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_3/IN ),
    .O(\Tenth_Module/Cresult_Reg/Q [3]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X37Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_2  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_2/CLK ),
    .I(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_2/IN ),
    .O(\Tenth_Module/Cresult_Reg/Q [2]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X37Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_1  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_1/CLK ),
    .I(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_1/IN ),
    .O(\Tenth_Module/Cresult_Reg/Q [1]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X37Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_0  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_0/CLK ),
    .I(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_0/IN ),
    .O(\Tenth_Module/Cresult_Reg/Q [0]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X38Y120" ),
    .INIT ( 64'hFFFFFFFFFFFFFF00 ))
  \FS_Module/state_reg__n0117<0>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\FS_Module/state_reg_FSM_FFd18_0 ),
    .ADR4(\FS_Module/state_reg_FSM_FFd1-In ),
    .ADR3(\FS_Module/state_reg_FSM_FFd5-In ),
    .O(load_18)
  );
  X_FF #(
    .LOC ( "SLICE_X38Y118" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_11  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_11/CLK ),
    .I(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_11/IN ),
    .O(\Tenth_Module/Cresult_Reg/Q [11]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X38Y118" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_10  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_10/CLK ),
    .I(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_10/IN ),
    .O(\Tenth_Module/Cresult_Reg/Q [10]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X38Y118" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_9  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_9/CLK ),
    .I(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_9/IN ),
    .O(\Tenth_Module/Cresult_Reg/Q [9]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X38Y118" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_8  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_8/CLK ),
    .I(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_8/IN ),
    .O(\Tenth_Module/Cresult_Reg/Q [8]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Sel_10_P_b/Q_0/Sel_10_P_b/Q_0_DMUX_Delay  (
    .I(\Sel_10_P_a/Q_0_pack_1 ),
    .O(\Sel_10_P_a/Q_0_3825 )
  );
  X_FF #(
    .LOC ( "SLICE_X38Y126" ),
    .INIT ( 1'b0 ))
  \Sel_10_P_b/Q_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_Sel_10_P_b/Q_0/CLK ),
    .I(\Sel_10_P_b/Q_0_rstpot_1110 ),
    .O(\Sel_10_P_b/Q_0_3768 ),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X38Y126" ),
    .INIT ( 64'hFFF0FFF0FFF0FFF0 ))
  \Sel_10_P_b/Q_0_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR2(\Sel_10_P_b/Q_0_3768 ),
    .ADR3(\FS_Module/state_reg_FSM_FFd3_4018 ),
    .ADR5(1'b1),
    .O(\Sel_10_P_b/Q_0_rstpot_1110 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X38Y126" ),
    .INIT ( 32'hFFFFCCCC ))
  \Sel_10_P_a/Q_0_rstpot  (
    .ADR0(1'b1),
    .ADR4(\FS_Module/state_reg_FSM_FFd20_0 ),
    .ADR1(\Sel_10_P_a/Q_0_3825 ),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .O(\Sel_10_P_a/Q_0_rstpot_1113 )
  );
  X_FF #(
    .LOC ( "SLICE_X38Y126" ),
    .INIT ( 1'b0 ))
  \Sel_10_P_a/Q_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_Sel_10_P_a/Q_0/CLK ),
    .I(\Sel_10_P_a/Q_0_rstpot_1113 ),
    .O(\Sel_10_P_a/Q_0_pack_1 ),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Tenth_Module/Cresult_Reg/Q<7>/Tenth_Module/Cresult_Reg/Q<7>_DMUX_Delay  (
    .I(\Tenth_Module/Cresult_Reg/Q [7]),
    .O(\Tenth_Module/Cresult_Reg/Q<7>_0 )
  );
  X_BUF   \Tenth_Module/Cresult_Reg/Q<7>/Tenth_Module/Cresult_Reg/Q<7>_CMUX_Delay  (
    .I(\Tenth_Module/Cresult_Reg/Q [6]),
    .O(\Tenth_Module/Cresult_Reg/Q<6>_0 )
  );
  X_BUF   \Tenth_Module/Cresult_Reg/Q<7>/Tenth_Module/Cresult_Reg/Q<7>_BMUX_Delay  (
    .I(\Tenth_Module/Cresult_Reg/Q [5]),
    .O(\Tenth_Module/Cresult_Reg/Q<5>_0 )
  );
  X_BUF   \Tenth_Module/Cresult_Reg/Q<7>/Tenth_Module/Cresult_Reg/Q<7>_AMUX_Delay  (
    .I(\Tenth_Module/Cresult_Reg/Q [4]),
    .O(\Tenth_Module/Cresult_Reg/Q<4>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X39Y120" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_7  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_7/CLK ),
    .I(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_7/IN ),
    .O(\Tenth_Module/Cresult_Reg/Q [7]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X39Y120" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_6  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_6/CLK ),
    .I(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_6/IN ),
    .O(\Tenth_Module/Cresult_Reg/Q [6]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X39Y120" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_5  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_5/CLK ),
    .I(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_5/IN ),
    .O(\Tenth_Module/Cresult_Reg/Q [5]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X39Y120" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_4  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_4/CLK ),
    .I(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_4/IN ),
    .O(\Tenth_Module/Cresult_Reg/Q [4]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X39Y126" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd2/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd2/IN ),
    .O(\FS_Module/state_reg_FSM_FFd1-In ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_BUF   \Tenth_Module/Cresult_Reg/Q<15>/Tenth_Module/Cresult_Reg/Q<15>_DMUX_Delay  (
    .I(\Tenth_Module/Cresult_Reg/Q [19]),
    .O(\Tenth_Module/Cresult_Reg/Q<19>_0 )
  );
  X_BUF   \Tenth_Module/Cresult_Reg/Q<15>/Tenth_Module/Cresult_Reg/Q<15>_CMUX_Delay  (
    .I(\Tenth_Module/Cresult_Reg/Q [18]),
    .O(\Tenth_Module/Cresult_Reg/Q<18>_0 )
  );
  X_BUF   \Tenth_Module/Cresult_Reg/Q<15>/Tenth_Module/Cresult_Reg/Q<15>_BMUX_Delay  (
    .I(\Tenth_Module/Cresult_Reg/Q [17]),
    .O(\Tenth_Module/Cresult_Reg/Q<17>_0 )
  );
  X_BUF   \Tenth_Module/Cresult_Reg/Q<15>/Tenth_Module/Cresult_Reg/Q<15>_AMUX_Delay  (
    .I(\Tenth_Module/Cresult_Reg/Q [16]),
    .O(\Tenth_Module/Cresult_Reg/Q<16>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X38Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_15  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_15/CLK ),
    .I(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_15/IN ),
    .O(\Tenth_Module/Cresult_Reg/Q [15]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X38Y119" ),
    .INIT ( 32'hFF00FF00 ))
  \Select_Final_Significand/Sgf_ieee_Register/Q<19>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\Select_Final_Significand/Sgf_ieee_Register/Q [19]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q<19>_rt_1085 )
  );
  X_FF #(
    .LOC ( "SLICE_X38Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_19  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_19/CLK ),
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q<19>_rt_1085 ),
    .O(\Tenth_Module/Cresult_Reg/Q [19]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X38Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_14  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_14/CLK ),
    .I(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_14/IN ),
    .O(\Tenth_Module/Cresult_Reg/Q [14]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X38Y119" ),
    .INIT ( 32'hAAAAAAAA ))
  \Select_Final_Significand/Sgf_ieee_Register/Q<18>_rt  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\Select_Final_Significand/Sgf_ieee_Register/Q<18>_0 ),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q<18>_rt_1087 )
  );
  X_FF #(
    .LOC ( "SLICE_X38Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_18  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_18/CLK ),
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q<18>_rt_1087 ),
    .O(\Tenth_Module/Cresult_Reg/Q [18]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X38Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_13  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_13/CLK ),
    .I(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_13/IN ),
    .O(\Tenth_Module/Cresult_Reg/Q [13]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X38Y119" ),
    .INIT ( 32'hCCCCCCCC ))
  \Select_Final_Significand/Sgf_ieee_Register/Q<17>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\Select_Final_Significand/Sgf_ieee_Register/Q [17]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q<17>_rt_1082 )
  );
  X_FF #(
    .LOC ( "SLICE_X38Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_17  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_17/CLK ),
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q<17>_rt_1082 ),
    .O(\Tenth_Module/Cresult_Reg/Q [17]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X38Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_12  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_12/CLK ),
    .I(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_12/IN ),
    .O(\Tenth_Module/Cresult_Reg/Q [12]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X38Y119" ),
    .INIT ( 32'hFFFF0000 ))
  \Select_Final_Significand/Sgf_ieee_Register/Q<16>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Select_Final_Significand/Sgf_ieee_Register/Q<16>_0 ),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q<16>_rt_1099 )
  );
  X_FF #(
    .LOC ( "SLICE_X38Y119" ),
    .INIT ( 1'b0 ))
  \Tenth_Module/Cresult_Reg/Q_16  (
    .CE(load_18),
    .CLK(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_16/CLK ),
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q<16>_rt_1099 ),
    .O(\Tenth_Module/Cresult_Reg/Q [16]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y122" ),
    .INIT ( 64'hFFFFFFFFFFFFF0F0 ))
  \FS_Module/state_reg__n0117<1>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR5(\FS_Module/state_reg_FSM_FFd4_3785 ),
    .ADR2(\FS_Module/state_reg_FSM_FFd1_3788 ),
    .ADR4(\FS_Module/state_reg_FSM_FFd5_3784 ),
    .O(load_19)
  );
  X_FF #(
    .LOC ( "SLICE_X38Y128" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd5/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd5/IN ),
    .O(\FS_Module/state_reg_FSM_FFd5_3784 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X38Y128" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd4/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd4/IN ),
    .O(\FS_Module/state_reg_FSM_FFd4_3785 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X38Y128" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd3/CLK ),
    .I(\FS_Module/state_reg_FSM_FFd3-In ),
    .O(\FS_Module/state_reg_FSM_FFd3_4018 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X38Y128" ),
    .INIT ( 64'hFFFFFF00FFFFFF00 ))
  overflow_flag1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\Select_Final_Exponent/overflow_am/Q_0_3954 ),
    .ADR3(\First_Und_Ov_Search/R_Overflow/Q_0_4063 ),
    .ADR5(1'b1),
    .O(overflow_flag_OBUF_4167)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X38Y128" ),
    .INIT ( 32'h0000AAAA ))
  \FS_Module/state_reg_FSM_FFd3-In1  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(\FS_Module/state_reg_FSM_FFd7_4062 ),
    .ADR4(\Select_Final_Exponent/overflow_am/Q_0_3954 ),
    .ADR3(1'b1),
    .O(\FS_Module/state_reg_FSM_FFd3-In )
  );
  X_FF #(
    .LOC ( "SLICE_X38Y128" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd1/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd1/IN ),
    .O(\FS_Module/state_reg_FSM_FFd1_3788 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_BUF   \FS_Module/state_reg_FSM_FFd11/FS_Module/state_reg_FSM_FFd11_AMUX_Delay  (
    .I(\FS_Module/state_reg_FSM_FFd7-In_pack_1 ),
    .O(\FS_Module/state_reg_FSM_FFd7-In )
  );
  X_FF #(
    .LOC ( "SLICE_X43Y129" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd11  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd11/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd11/IN ),
    .O(\FS_Module/state_reg_FSM_FFd11_4424 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X43Y129" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd10  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd10/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd10/IN ),
    .O(\FS_Module/state_reg_FSM_FFd10_4432 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X43Y129" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd9  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd9/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd9/IN ),
    .O(\FS_Module/state_reg_FSM_FFd9_3904 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X43Y129" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd7/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd7/IN ),
    .O(\FS_Module/state_reg_FSM_FFd7_4062 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X43Y129" ),
    .INIT ( 32'hCCCCCCCC ))
  \FS_Module/state_reg_FSM_FFd9_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\FS_Module/state_reg_FSM_FFd9_3904 ),
    .O(\FS_Module/state_reg_FSM_FFd9_rt_1146 )
  );
  X_FF #(
    .LOC ( "SLICE_X43Y129" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd8  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd8/CLK ),
    .I(\FS_Module/state_reg_FSM_FFd9_rt_1146 ),
    .O(\FS_Module/state_reg_FSM_FFd7-In_pack_1 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X41Y130" ),
    .INIT ( 1'b0 ))
  \Select_Final_Significand/Exp_na_Reg/Q_0  (
    .CE(\FS_Module/state_reg_FSM_FFd12_3961 ),
    .CLK(\NlwBufferSignal_Select_Final_Significand/Exp_na_Reg/Q_0/CLK ),
    .I(\NlwBufferSignal_Select_Final_Significand/Exp_na_Reg/Q_0/IN ),
    .O(\Select_Final_Significand/Exp_na_Reg/Q_0_3907 ),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Select_Final_Significand/Sgf_ieee_Register/Q<5>/Select_Final_Significand/Sgf_ieee_Register/Q<5>_DMUX_Delay  (
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q [22]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q<22>_0 )
  );
  X_BUF   \Select_Final_Significand/Sgf_ieee_Register/Q<5>/Select_Final_Significand/Sgf_ieee_Register/Q<5>_CMUX_Delay  (
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q [3]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q<3>_0 )
  );
  X_BUF   \Select_Final_Significand/Sgf_ieee_Register/Q<5>/Select_Final_Significand/Sgf_ieee_Register/Q<5>_BMUX_Delay  (
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q [1]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q<1>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X47Y114" ),
    .INIT ( 1'b0 ))
  \Select_Final_Significand/Sgf_ieee_Register/Q_5  (
    .CE(\FS_Module/state_reg_FSM_FFd12_3961 ),
    .CLK(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_5/CLK ),
    .I(\Select_Final_Significand/Sgf_R_ieee_reg [5]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q [5]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X47Y114" ),
    .INIT ( 64'hEE44EE44EE44EE44 ))
  \Select_Final_Significand/Dir_Sgf_iee/Mmux_S191  (
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR0(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [24]),
    .ADR1(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [5]),
    .ADR3(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [6]),
    .ADR5(1'b1),
    .O(\Select_Final_Significand/Sgf_R_ieee_reg [5])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X47Y114" ),
    .INIT ( 32'hF5F5A0A0 ))
  \Select_Final_Significand/Dir_Sgf_iee/Mmux_S151  (
    .ADR4(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [22]),
    .ADR2(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [23]),
    .ADR0(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [24]),
    .ADR3(1'b1),
    .ADR1(1'b1),
    .O(\Select_Final_Significand/Sgf_R_ieee_reg [22])
  );
  X_FF #(
    .LOC ( "SLICE_X47Y114" ),
    .INIT ( 1'b0 ))
  \Select_Final_Significand/Sgf_ieee_Register/Q_22  (
    .CE(\FS_Module/state_reg_FSM_FFd12_3961 ),
    .CLK(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_22/CLK ),
    .I(\Select_Final_Significand/Sgf_R_ieee_reg [22]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q [22]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X47Y114" ),
    .INIT ( 1'b0 ))
  \Select_Final_Significand/Sgf_ieee_Register/Q_4  (
    .CE(\FS_Module/state_reg_FSM_FFd12_3961 ),
    .CLK(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_4/CLK ),
    .I(\Select_Final_Significand/Sgf_R_ieee_reg [4]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q [4]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X47Y114" ),
    .INIT ( 64'hFFAA5500FFAA5500 ))
  \Select_Final_Significand/Dir_Sgf_iee/Mmux_S181  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [24]),
    .ADR3(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [4]),
    .ADR4(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [5]),
    .ADR5(1'b1),
    .O(\Select_Final_Significand/Sgf_R_ieee_reg [4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X47Y114" ),
    .INIT ( 32'hFA50FA50 ))
  \Select_Final_Significand/Dir_Sgf_iee/Mmux_S171  (
    .ADR1(1'b1),
    .ADR2(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [3]),
    .ADR0(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [24]),
    .ADR3(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [4]),
    .ADR4(1'b1),
    .O(\Select_Final_Significand/Sgf_R_ieee_reg [3])
  );
  X_FF #(
    .LOC ( "SLICE_X47Y114" ),
    .INIT ( 1'b0 ))
  \Select_Final_Significand/Sgf_ieee_Register/Q_3  (
    .CE(\FS_Module/state_reg_FSM_FFd12_3961 ),
    .CLK(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_3/CLK ),
    .I(\Select_Final_Significand/Sgf_R_ieee_reg [3]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q [3]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X47Y114" ),
    .INIT ( 1'b0 ))
  \Select_Final_Significand/Sgf_ieee_Register/Q_2  (
    .CE(\FS_Module/state_reg_FSM_FFd12_3961 ),
    .CLK(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_2/CLK ),
    .I(\Select_Final_Significand/Sgf_R_ieee_reg [2]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q [2]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X47Y114" ),
    .INIT ( 64'hFFCC3300FFCC3300 ))
  \Select_Final_Significand/Dir_Sgf_iee/Mmux_S161  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [24]),
    .ADR3(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [2]),
    .ADR4(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [3]),
    .ADR5(1'b1),
    .O(\Select_Final_Significand/Sgf_R_ieee_reg [2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X47Y114" ),
    .INIT ( 32'hFC30FC30 ))
  \Select_Final_Significand/Dir_Sgf_iee/Mmux_S121  (
    .ADR0(1'b1),
    .ADR2(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [1]),
    .ADR1(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [24]),
    .ADR3(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [2]),
    .ADR4(1'b1),
    .O(\Select_Final_Significand/Sgf_R_ieee_reg [1])
  );
  X_FF #(
    .LOC ( "SLICE_X47Y114" ),
    .INIT ( 1'b0 ))
  \Select_Final_Significand/Sgf_ieee_Register/Q_1  (
    .CE(\FS_Module/state_reg_FSM_FFd12_3961 ),
    .CLK(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_1/CLK ),
    .I(\Select_Final_Significand/Sgf_R_ieee_reg [1]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q [1]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X47Y114" ),
    .INIT ( 1'b0 ))
  \Select_Final_Significand/Sgf_ieee_Register/Q_0  (
    .CE(\FS_Module/state_reg_FSM_FFd12_3961 ),
    .CLK(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_0/CLK ),
    .I(\Select_Final_Significand/Sgf_R_ieee_reg [0]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q [0]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X47Y114" ),
    .INIT ( 64'hEEEE2222EEEE2222 ))
  \Select_Final_Significand/Dir_Sgf_iee/Mmux_S11  (
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [24]),
    .ADR0(\Round_Resultant_Significand/Sgf_Ready_Reg/Q<0>_0 ),
    .ADR4(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [1]),
    .O(\Select_Final_Significand/Sgf_R_ieee_reg [0])
  );
  X_BUF   \Select_Final_Exponent/exp_fp_reg/Q<5>/Select_Final_Exponent/exp_fp_reg/Q<5>_BMUX_Delay  (
    .I(\Select_Final_Exponent/exp_def<3>_pack_6 ),
    .O(\Select_Final_Exponent/exp_def [3])
  );
  X_FF #(
    .LOC ( "SLICE_X44Y130" ),
    .INIT ( 1'b0 ))
  \Select_Final_Exponent/exp_fp_reg/Q_5  (
    .CE(\FS_Module/state_reg_FSM_FFd9_3904 ),
    .CLK(\NlwBufferSignal_Select_Final_Exponent/exp_fp_reg/Q_5/CLK ),
    .I(\Select_Final_Exponent/exp_def [5]),
    .O(\Select_Final_Exponent/exp_fp_reg/Q [5]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X44Y130" ),
    .INIT ( 64'h00FFFFFFFF000000 ))
  \Select_Final_Exponent/dir_exp_up/Mmux_S61  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\Select_Final_Exponent/exp_u_register/Q [5]),
    .ADR4(\Select_Final_Significand/Exp_na_Reg/Q_0_3907 ),
    .ADR3(\Select_Final_Exponent/exp_po/Maddsub_Data_S_cy [4]),
    .O(\Select_Final_Exponent/exp_def [5])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X44Y130" ),
    .INIT ( 64'hC000000000000000 ))
  \Select_Final_Exponent/exp_po/Maddsub_Data_S_cy<4>11  (
    .ADR0(1'b1),
    .ADR2(\Select_Final_Exponent/exp_u_register/Q [4]),
    .ADR4(\Select_Final_Exponent/exp_u_register/Q [3]),
    .ADR5(\Select_Final_Exponent/exp_u_register/Q [2]),
    .ADR1(\Select_Final_Exponent/exp_u_register/Q [1]),
    .ADR3(\Select_Final_Exponent/exp_u_register/Q [0]),
    .O(\Select_Final_Exponent/exp_po/Maddsub_Data_S_cy [4])
  );
  X_FF #(
    .LOC ( "SLICE_X44Y130" ),
    .INIT ( 1'b0 ))
  \Select_Final_Exponent/exp_fp_reg/Q_2  (
    .CE(\FS_Module/state_reg_FSM_FFd9_3904 ),
    .CLK(\NlwBufferSignal_Select_Final_Exponent/exp_fp_reg/Q_2/CLK ),
    .I(\Select_Final_Exponent/exp_def [2]),
    .O(\Select_Final_Exponent/exp_fp_reg/Q [2]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X44Y130" ),
    .INIT ( 64'h3FC0FF003FC0FF00 ))
  \Select_Final_Exponent/dir_exp_up/Mmux_S31  (
    .ADR0(1'b1),
    .ADR3(\Select_Final_Exponent/exp_u_register/Q [2]),
    .ADR2(\Select_Final_Significand/Exp_na_Reg/Q_0_3907 ),
    .ADR4(\Select_Final_Exponent/exp_u_register/Q [0]),
    .ADR1(\Select_Final_Exponent/exp_u_register/Q [1]),
    .ADR5(1'b1),
    .O(\Select_Final_Exponent/exp_def [2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X44Y130" ),
    .INIT ( 32'h6AAAAAAA ))
  \Select_Final_Exponent/dir_exp_up/Mmux_S41  (
    .ADR0(\Select_Final_Exponent/exp_u_register/Q [3]),
    .ADR3(\Select_Final_Exponent/exp_u_register/Q [2]),
    .ADR2(\Select_Final_Significand/Exp_na_Reg/Q_0_3907 ),
    .ADR4(\Select_Final_Exponent/exp_u_register/Q [0]),
    .ADR1(\Select_Final_Exponent/exp_u_register/Q [1]),
    .O(\Select_Final_Exponent/exp_def<3>_pack_6 )
  );
  X_FF #(
    .LOC ( "SLICE_X44Y130" ),
    .INIT ( 1'b0 ))
  \Select_Final_Exponent/exp_fp_reg/Q_3  (
    .CE(\FS_Module/state_reg_FSM_FFd9_3904 ),
    .CLK(\NlwBufferSignal_Select_Final_Exponent/exp_fp_reg/Q_3/CLK ),
    .I(\NlwBufferSignal_Select_Final_Exponent/exp_fp_reg/Q_3/IN ),
    .O(\Select_Final_Exponent/exp_fp_reg/Q [3]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X45Y131" ),
    .INIT ( 1'b0 ))
  \Select_Final_Exponent/exp_u_register/Q_3  (
    .CE(\FS_Module/state_reg_FSM_FFd11_4424 ),
    .CLK(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_3/CLK ),
    .I(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_3/IN ),
    .O(\Select_Final_Exponent/exp_u_register/Q [3]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X45Y131" ),
    .INIT ( 1'b0 ))
  \Select_Final_Exponent/exp_u_register/Q_1  (
    .CE(\FS_Module/state_reg_FSM_FFd11_4424 ),
    .CLK(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_1/CLK ),
    .I(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_1/IN ),
    .O(\Select_Final_Exponent/exp_u_register/Q [1]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X44Y131" ),
    .INIT ( 1'b0 ))
  \Select_Final_Exponent/exp_u_register/Q_7  (
    .CE(\FS_Module/state_reg_FSM_FFd11_4424 ),
    .CLK(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_7/CLK ),
    .I(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_7/IN ),
    .O(\Select_Final_Exponent/exp_u_register/Q [7]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X44Y131" ),
    .INIT ( 1'b0 ))
  \Select_Final_Exponent/exp_u_register/Q_6  (
    .CE(\FS_Module/state_reg_FSM_FFd11_4424 ),
    .CLK(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_6/CLK ),
    .I(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_6/IN ),
    .O(\Select_Final_Exponent/exp_u_register/Q [6]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X44Y131" ),
    .INIT ( 1'b0 ))
  \Select_Final_Exponent/exp_u_register/Q_5  (
    .CE(\FS_Module/state_reg_FSM_FFd11_4424 ),
    .CLK(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_5/CLK ),
    .I(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_5/IN ),
    .O(\Select_Final_Exponent/exp_u_register/Q [5]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X44Y131" ),
    .INIT ( 1'b0 ))
  \Select_Final_Exponent/exp_u_register/Q_0  (
    .CE(\FS_Module/state_reg_FSM_FFd11_4424 ),
    .CLK(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_0/CLK ),
    .I(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_0/IN ),
    .O(\Select_Final_Exponent/exp_u_register/Q [0]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Select_Final_Significand/Sgf_ieee_Register/Q<21>/Select_Final_Significand/Sgf_ieee_Register/Q<21>_DMUX_Delay  (
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q [20]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q<20>_0 )
  );
  X_BUF   \Select_Final_Significand/Sgf_ieee_Register/Q<21>/Select_Final_Significand/Sgf_ieee_Register/Q<21>_CMUX_Delay  (
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q [18]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q<18>_0 )
  );
  X_BUF   \Select_Final_Significand/Sgf_ieee_Register/Q<21>/Select_Final_Significand/Sgf_ieee_Register/Q<21>_BMUX_Delay  (
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q [16]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q<16>_0 )
  );
  X_BUF   \Select_Final_Significand/Sgf_ieee_Register/Q<21>/Select_Final_Significand/Sgf_ieee_Register/Q<21>_AMUX_Delay  (
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q [14]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q<14>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X44Y114" ),
    .INIT ( 1'b0 ))
  \Select_Final_Significand/Sgf_ieee_Register/Q_21  (
    .CE(\FS_Module/state_reg_FSM_FFd12_3961 ),
    .CLK(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_21/CLK ),
    .I(\Select_Final_Significand/Sgf_R_ieee_reg [21]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q [21]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X44Y114" ),
    .INIT ( 64'hFFF000F0FFF000F0 ))
  \Select_Final_Significand/Dir_Sgf_iee/Mmux_S141  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [24]),
    .ADR2(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [21]),
    .ADR4(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [22]),
    .ADR5(1'b1),
    .O(\Select_Final_Significand/Sgf_R_ieee_reg [21])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X44Y114" ),
    .INIT ( 32'hF0CCF0CC ))
  \Select_Final_Significand/Dir_Sgf_iee/Mmux_S131  (
    .ADR0(1'b1),
    .ADR1(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [20]),
    .ADR3(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [24]),
    .ADR2(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [21]),
    .ADR4(1'b1),
    .O(\Select_Final_Significand/Sgf_R_ieee_reg [20])
  );
  X_FF #(
    .LOC ( "SLICE_X44Y114" ),
    .INIT ( 1'b0 ))
  \Select_Final_Significand/Sgf_ieee_Register/Q_20  (
    .CE(\FS_Module/state_reg_FSM_FFd12_3961 ),
    .CLK(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_20/CLK ),
    .I(\Select_Final_Significand/Sgf_R_ieee_reg [20]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q [20]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X44Y114" ),
    .INIT ( 1'b0 ))
  \Select_Final_Significand/Sgf_ieee_Register/Q_19  (
    .CE(\FS_Module/state_reg_FSM_FFd12_3961 ),
    .CLK(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_19/CLK ),
    .I(\Select_Final_Significand/Sgf_R_ieee_reg [19]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q [19]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X44Y114" ),
    .INIT ( 64'hF0FFF000F0FFF000 ))
  \Select_Final_Significand/Dir_Sgf_iee/Mmux_S111  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [24]),
    .ADR4(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [19]),
    .ADR2(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [20]),
    .ADR5(1'b1),
    .O(\Select_Final_Significand/Sgf_R_ieee_reg [19])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X44Y114" ),
    .INIT ( 32'hFFCC00CC ))
  \Select_Final_Significand/Dir_Sgf_iee/Mmux_S101  (
    .ADR0(1'b1),
    .ADR1(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [18]),
    .ADR3(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [24]),
    .ADR4(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [19]),
    .ADR2(1'b1),
    .O(\Select_Final_Significand/Sgf_R_ieee_reg [18])
  );
  X_FF #(
    .LOC ( "SLICE_X44Y114" ),
    .INIT ( 1'b0 ))
  \Select_Final_Significand/Sgf_ieee_Register/Q_18  (
    .CE(\FS_Module/state_reg_FSM_FFd12_3961 ),
    .CLK(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_18/CLK ),
    .I(\Select_Final_Significand/Sgf_R_ieee_reg [18]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q [18]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X44Y114" ),
    .INIT ( 1'b0 ))
  \Select_Final_Significand/Sgf_ieee_Register/Q_17  (
    .CE(\FS_Module/state_reg_FSM_FFd12_3961 ),
    .CLK(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_17/CLK ),
    .I(\Select_Final_Significand/Sgf_R_ieee_reg [17]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q [17]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X44Y114" ),
    .INIT ( 64'hAFA0AFA0AFA0AFA0 ))
  \Select_Final_Significand/Dir_Sgf_iee/Mmux_S91  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [24]),
    .ADR3(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [17]),
    .ADR0(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [18]),
    .ADR5(1'b1),
    .O(\Select_Final_Significand/Sgf_R_ieee_reg [17])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X44Y114" ),
    .INIT ( 32'hFF0FF000 ))
  \Select_Final_Significand/Dir_Sgf_iee/Mmux_S81  (
    .ADR0(1'b1),
    .ADR4(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [16]),
    .ADR2(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [24]),
    .ADR3(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [17]),
    .ADR1(1'b1),
    .O(\Select_Final_Significand/Sgf_R_ieee_reg [16])
  );
  X_FF #(
    .LOC ( "SLICE_X44Y114" ),
    .INIT ( 1'b0 ))
  \Select_Final_Significand/Sgf_ieee_Register/Q_16  (
    .CE(\FS_Module/state_reg_FSM_FFd12_3961 ),
    .CLK(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_16/CLK ),
    .I(\Select_Final_Significand/Sgf_R_ieee_reg [16]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q [16]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X44Y114" ),
    .INIT ( 1'b0 ))
  \Select_Final_Significand/Sgf_ieee_Register/Q_15  (
    .CE(\FS_Module/state_reg_FSM_FFd12_3961 ),
    .CLK(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_15/CLK ),
    .I(\Select_Final_Significand/Sgf_R_ieee_reg [15]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q [15]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X44Y114" ),
    .INIT ( 64'hFCFC3030FCFC3030 ))
  \Select_Final_Significand/Dir_Sgf_iee/Mmux_S71  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR1(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [24]),
    .ADR2(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [15]),
    .ADR4(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [16]),
    .ADR5(1'b1),
    .O(\Select_Final_Significand/Sgf_R_ieee_reg [15])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X44Y114" ),
    .INIT ( 32'hF3C0F3C0 ))
  \Select_Final_Significand/Dir_Sgf_iee/Mmux_S61  (
    .ADR0(1'b1),
    .ADR3(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [14]),
    .ADR1(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [24]),
    .ADR2(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [15]),
    .ADR4(1'b1),
    .O(\Select_Final_Significand/Sgf_R_ieee_reg [14])
  );
  X_FF #(
    .LOC ( "SLICE_X44Y114" ),
    .INIT ( 1'b0 ))
  \Select_Final_Significand/Sgf_ieee_Register/Q_14  (
    .CE(\FS_Module/state_reg_FSM_FFd12_3961 ),
    .CLK(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_14/CLK ),
    .I(\Select_Final_Significand/Sgf_R_ieee_reg [14]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q [14]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Select_Final_Exponent/exp_fp_reg/Q<7>/Select_Final_Exponent/exp_fp_reg/Q<7>_CMUX_Delay  (
    .I(\Select_Final_Exponent/exp_fp_reg/Q [6]),
    .O(\Select_Final_Exponent/exp_fp_reg/Q<6>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X45Y130" ),
    .INIT ( 1'b0 ))
  \Select_Final_Exponent/exp_fp_reg/Q_7  (
    .CE(\FS_Module/state_reg_FSM_FFd9_3904 ),
    .CLK(\NlwBufferSignal_Select_Final_Exponent/exp_fp_reg/Q_7/CLK ),
    .I(\Select_Final_Exponent/exp_def [7]),
    .O(\Select_Final_Exponent/exp_fp_reg/Q [7]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X45Y130" ),
    .INIT ( 64'h6AAAAAAA6AAAAAAA ))
  \Select_Final_Exponent/dir_exp_up/Mmux_S81  (
    .ADR0(\Select_Final_Exponent/exp_u_register/Q [7]),
    .ADR3(\Select_Final_Exponent/exp_u_register/Q [6]),
    .ADR1(\Select_Final_Exponent/exp_u_register/Q [5]),
    .ADR2(\Select_Final_Significand/Exp_na_Reg/Q_0_3907 ),
    .ADR4(\Select_Final_Exponent/exp_po/Maddsub_Data_S_cy [4]),
    .ADR5(1'b1),
    .O(\Select_Final_Exponent/exp_def [7])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X45Y130" ),
    .INIT ( 32'h3FC0FF00 ))
  \Select_Final_Exponent/dir_exp_up/Mmux_S71  (
    .ADR0(1'b1),
    .ADR3(\Select_Final_Exponent/exp_u_register/Q [6]),
    .ADR1(\Select_Final_Exponent/exp_u_register/Q [5]),
    .ADR2(\Select_Final_Significand/Exp_na_Reg/Q_0_3907 ),
    .ADR4(\Select_Final_Exponent/exp_po/Maddsub_Data_S_cy [4]),
    .O(\Select_Final_Exponent/exp_def [6])
  );
  X_FF #(
    .LOC ( "SLICE_X45Y130" ),
    .INIT ( 1'b0 ))
  \Select_Final_Exponent/exp_fp_reg/Q_6  (
    .CE(\FS_Module/state_reg_FSM_FFd9_3904 ),
    .CLK(\NlwBufferSignal_Select_Final_Exponent/exp_fp_reg/Q_6/CLK ),
    .I(\Select_Final_Exponent/exp_def [6]),
    .O(\Select_Final_Exponent/exp_fp_reg/Q [6]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X45Y130" ),
    .INIT ( 1'b0 ))
  \Select_Final_Exponent/overflow_am/Q_0  (
    .CE(\FS_Module/state_reg_FSM_FFd9_3904 ),
    .CLK(\NlwBufferSignal_Select_Final_Exponent/overflow_am/Q_0/CLK ),
    .I(\Select_Final_Exponent/overflow_reg ),
    .O(\Select_Final_Exponent/overflow_am/Q_0_3954 ),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X45Y130" ),
    .INIT ( 64'h0000800000000000 ))
  \Select_Final_Exponent/overflow_reg1  (
    .ADR1(\Select_Final_Exponent/exp_def [2]),
    .ADR2(\Select_Final_Exponent/exp_def [3]),
    .ADR0(\Select_Final_Exponent/exp_def [4]),
    .ADR3(\Select_Final_Exponent/exp_def [5]),
    .ADR4(N33),
    .ADR5(\Select_Final_Exponent/exp_def [7]),
    .O(\Select_Final_Exponent/overflow_reg )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X45Y130" ),
    .INIT ( 64'hF5FF9FFFF5FF5FFF ))
  \Select_Final_Exponent/overflow_reg1_SW0  (
    .ADR0(\Select_Final_Exponent/exp_u_register/Q [6]),
    .ADR1(\Select_Final_Exponent/exp_u_register/Q [5]),
    .ADR3(\Select_Final_Exponent/exp_u_register/Q [1]),
    .ADR4(\Select_Final_Exponent/exp_u_register/Q [0]),
    .ADR2(\Select_Final_Significand/Exp_na_Reg/Q_0_3907 ),
    .ADR5(\Select_Final_Exponent/exp_po/Maddsub_Data_S_cy [4]),
    .O(N33)
  );
  X_FF #(
    .LOC ( "SLICE_X45Y129" ),
    .INIT ( 1'b0 ))
  \Select_Final_Exponent/exp_u_register/Q_2  (
    .CE(\FS_Module/state_reg_FSM_FFd11_4424 ),
    .CLK(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_2/CLK ),
    .I(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_2/IN ),
    .O(\Select_Final_Exponent/exp_u_register/Q [2]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Round_Resultant_Significand/Sgf_Ready_Reg/Q<10>/Round_Resultant_Significand/Sgf_Ready_Reg/Q<10>_AMUX_Delay  (
    .I(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [0]),
    .O(\Round_Resultant_Significand/Sgf_Ready_Reg/Q<0>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X49Y112" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Sgf_Ready_Reg/Q_10  (
    .CE(\FS_Module/state_reg_FSM_FFd14_3944 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_10/CLK ),
    .I(\Round_Resultant_Significand/Sgf_Rounded [10]),
    .O(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [10]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X49Y112" ),
    .INIT ( 64'hFAFA0A0AFAFA0A0A ))
  \Round_Resultant_Significand/Dir_M/Mmux_S21  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(\Round_Resultant_Significand/selector_reg ),
    .ADR0(\Round_Resultant_Significand/Round_Sgf_N/Q [10]),
    .ADR4(\Round_Resultant_Significand/Sgf_Round_R<10>_0 ),
    .ADR5(1'b1),
    .O(\Round_Resultant_Significand/Sgf_Rounded [10])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X49Y112" ),
    .INIT ( 32'hCFC0CFC0 ))
  \Round_Resultant_Significand/Dir_M/Mmux_S11  (
    .ADR3(\Round_Resultant_Significand/Round_Sgf_N/Q [0]),
    .ADR1(\Round_Resultant_Significand/Sgf_Round_R<0>_0 ),
    .ADR2(\Round_Resultant_Significand/selector_reg ),
    .ADR0(1'b1),
    .ADR4(1'b1),
    .O(\Round_Resultant_Significand/Sgf_Rounded [0])
  );
  X_FF #(
    .LOC ( "SLICE_X49Y112" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Sgf_Ready_Reg/Q_0  (
    .CE(\FS_Module/state_reg_FSM_FFd14_3944 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_0/CLK ),
    .I(\Round_Resultant_Significand/Sgf_Rounded [0]),
    .O(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [0]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X49Y109" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q_9  (
    .CE(\FS_Module/state_reg_FSM_FFd16_4391 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_9/CLK ),
    .I(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_9/IN ),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q [9]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X51Y108" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q_3  (
    .CE(\FS_Module/state_reg_FSM_FFd16_4391 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_3/CLK ),
    .I(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_3/IN ),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q [3]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X51Y108" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q_2  (
    .CE(\FS_Module/state_reg_FSM_FFd16_4391 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_2/CLK ),
    .I(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_2/IN ),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q [2]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X51Y108" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q_0  (
    .CE(\FS_Module/state_reg_FSM_FFd16_4391 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_0/CLK ),
    .I(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_0/IN ),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q [0]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X51Y107" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Sgf_Ready_Reg/Q_4  (
    .CE(\FS_Module/state_reg_FSM_FFd14_3944 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_4/CLK ),
    .I(\Round_Resultant_Significand/Sgf_Rounded [4]),
    .O(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [4]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y107" ),
    .INIT ( 64'hFFFFF0F00000F0F0 ))
  \Round_Resultant_Significand/Dir_M/Mmux_S201  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(\Round_Resultant_Significand/selector_reg ),
    .ADR2(\Round_Resultant_Significand/Round_Sgf_N/Q [4]),
    .ADR5(\Round_Resultant_Significand/Sgf_Round_R<4>_0 ),
    .O(\Round_Resultant_Significand/Sgf_Rounded [4])
  );
  X_FF #(
    .LOC ( "SLICE_X51Y107" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Sgf_Ready_Reg/Q_3  (
    .CE(\FS_Module/state_reg_FSM_FFd14_3944 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_3/CLK ),
    .I(\Round_Resultant_Significand/Sgf_Rounded [3]),
    .O(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [3]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y107" ),
    .INIT ( 64'hFFFFF0F00000F0F0 ))
  \Round_Resultant_Significand/Dir_M/Mmux_S191  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\Round_Resultant_Significand/Round_Sgf_N/Q [3]),
    .ADR4(\Round_Resultant_Significand/selector_reg ),
    .ADR5(\Round_Resultant_Significand/Sgf_Round_R<3>_0 ),
    .O(\Round_Resultant_Significand/Sgf_Rounded [3])
  );
  X_FF #(
    .LOC ( "SLICE_X51Y107" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Sgf_Ready_Reg/Q_2  (
    .CE(\FS_Module/state_reg_FSM_FFd14_3944 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_2/CLK ),
    .I(\Round_Resultant_Significand/Sgf_Rounded [2]),
    .O(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [2]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y107" ),
    .INIT ( 64'hF0F0F0F0FFFF0000 ))
  \Round_Resultant_Significand/Dir_M/Mmux_S181  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(\Round_Resultant_Significand/Round_Sgf_N/Q [2]),
    .ADR5(\Round_Resultant_Significand/selector_reg ),
    .ADR2(\Round_Resultant_Significand/Sgf_Round_R<2>_0 ),
    .O(\Round_Resultant_Significand/Sgf_Rounded [2])
  );
  X_FF #(
    .LOC ( "SLICE_X51Y107" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Sgf_Ready_Reg/Q_1  (
    .CE(\FS_Module/state_reg_FSM_FFd14_3944 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_1/CLK ),
    .I(\Round_Resultant_Significand/Sgf_Rounded [1]),
    .O(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [1]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y107" ),
    .INIT ( 64'hFFFF0000F0F0F0F0 ))
  \Round_Resultant_Significand/Dir_M/Mmux_S121  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\Round_Resultant_Significand/Round_Sgf_N/Q [1]),
    .ADR5(\Round_Resultant_Significand/selector_reg ),
    .ADR4(\Round_Resultant_Significand/Sgf_Round_R<1>_0 ),
    .O(\Round_Resultant_Significand/Sgf_Rounded [1])
  );
  X_BUF   \FS_Module/state_reg_FSM_FFd14-In/FS_Module/state_reg_FSM_FFd14-In_BMUX_Delay  (
    .I(\FS_Module/state_reg_FSM_FFd12-In ),
    .O(\FS_Module/state_reg_FSM_FFd12-In_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X48Y123" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd13  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd13/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd13/IN ),
    .O(\FS_Module/state_reg_FSM_FFd12-In ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X48Y123" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd15  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd15/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd15/IN ),
    .O(\FS_Module/state_reg_FSM_FFd14-In ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_BUF   \FS_Module/state_reg_FSM_FFd23/FS_Module/state_reg_FSM_FFd23_DMUX_Delay  (
    .I(\FS_Module/state_reg_FSM_FFd23-In_pack_1 ),
    .O(\FS_Module/state_reg_FSM_FFd23-In )
  );
  X_FF #(
    .LOC ( "SLICE_X48Y132" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd23  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd23/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd23/IN ),
    .O(\FS_Module/state_reg_FSM_FFd23_4165 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X48Y132" ),
    .INIT ( 32'hCCCCCCCC ))
  \FS_Module/state_reg_FSM_FFd25_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\FS_Module/state_reg_FSM_FFd25_3759 ),
    .O(\FS_Module/state_reg_FSM_FFd25_rt_1419 )
  );
  X_FF #(
    .LOC ( "SLICE_X48Y132" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd24  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd24/CLK ),
    .I(\FS_Module/state_reg_FSM_FFd25_rt_1419 ),
    .O(\FS_Module/state_reg_FSM_FFd23-In_pack_1 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X51Y109" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Sgf_Ready_Reg/Q_11  (
    .CE(\FS_Module/state_reg_FSM_FFd14_3944 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_11/CLK ),
    .I(\Round_Resultant_Significand/Sgf_Rounded [11]),
    .O(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [11]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y109" ),
    .INIT ( 64'hFFFFFF000000FF00 ))
  \Round_Resultant_Significand/Dir_M/Mmux_S31  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\Round_Resultant_Significand/selector_reg ),
    .ADR3(\Round_Resultant_Significand/Round_Sgf_N/Q [11]),
    .ADR5(\Round_Resultant_Significand/Sgf_Round_R<11>_0 ),
    .O(\Round_Resultant_Significand/Sgf_Rounded [11])
  );
  X_FF #(
    .LOC ( "SLICE_X51Y109" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Sgf_Ready_Reg/Q_7  (
    .CE(\FS_Module/state_reg_FSM_FFd14_3944 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_7/CLK ),
    .I(\Round_Resultant_Significand/Sgf_Rounded [7]),
    .O(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [7]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y109" ),
    .INIT ( 64'hFFFFFF000000FF00 ))
  \Round_Resultant_Significand/Dir_M/Mmux_S231  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\Round_Resultant_Significand/selector_reg ),
    .ADR3(\Round_Resultant_Significand/Round_Sgf_N/Q [7]),
    .ADR5(\Round_Resultant_Significand/Sgf_Round_R<7>_0 ),
    .O(\Round_Resultant_Significand/Sgf_Rounded [7])
  );
  X_FF #(
    .LOC ( "SLICE_X51Y109" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Sgf_Ready_Reg/Q_6  (
    .CE(\FS_Module/state_reg_FSM_FFd14_3944 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_6/CLK ),
    .I(\Round_Resultant_Significand/Sgf_Rounded [6]),
    .O(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [6]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y109" ),
    .INIT ( 64'hFFFF00FFFF000000 ))
  \Round_Resultant_Significand/Dir_M/Mmux_S221  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\Round_Resultant_Significand/selector_reg ),
    .ADR5(\Round_Resultant_Significand/Round_Sgf_N/Q [6]),
    .ADR4(\Round_Resultant_Significand/Sgf_Round_R<6>_0 ),
    .O(\Round_Resultant_Significand/Sgf_Rounded [6])
  );
  X_FF #(
    .LOC ( "SLICE_X51Y109" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Sgf_Ready_Reg/Q_5  (
    .CE(\FS_Module/state_reg_FSM_FFd14_3944 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_5/CLK ),
    .I(\Round_Resultant_Significand/Sgf_Rounded [5]),
    .O(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [5]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y109" ),
    .INIT ( 64'hFFFFFF000000FF00 ))
  \Round_Resultant_Significand/Dir_M/Mmux_S211  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\Round_Resultant_Significand/selector_reg ),
    .ADR3(\Round_Resultant_Significand/Round_Sgf_N/Q [5]),
    .ADR5(\Round_Resultant_Significand/Sgf_Round_R<5>_0 ),
    .O(\Round_Resultant_Significand/Sgf_Rounded [5])
  );
  X_FF #(
    .LOC ( "SLICE_X49Y107" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q_1  (
    .CE(\FS_Module/state_reg_FSM_FFd16_4391 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_1/CLK ),
    .I(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_1/IN ),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q [1]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X48Y110" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Sgf_Ready_Reg/Q_15  (
    .CE(\FS_Module/state_reg_FSM_FFd14_3944 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_15/CLK ),
    .I(\Round_Resultant_Significand/Sgf_Rounded [15]),
    .O(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [15]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X48Y110" ),
    .INIT ( 64'hFFFFFF0000FF0000 ))
  \Round_Resultant_Significand/Dir_M/Mmux_S71  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\Round_Resultant_Significand/selector_reg ),
    .ADR4(\Round_Resultant_Significand/Round_Sgf_N/Q [15]),
    .ADR5(\Round_Resultant_Significand/Sgf_Round_R<15>_0 ),
    .O(\Round_Resultant_Significand/Sgf_Rounded [15])
  );
  X_FF #(
    .LOC ( "SLICE_X48Y110" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Sgf_Ready_Reg/Q_14  (
    .CE(\FS_Module/state_reg_FSM_FFd14_3944 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_14/CLK ),
    .I(\Round_Resultant_Significand/Sgf_Rounded [14]),
    .O(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [14]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X48Y110" ),
    .INIT ( 64'hFFFFFF000000FF00 ))
  \Round_Resultant_Significand/Dir_M/Mmux_S61  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\Round_Resultant_Significand/selector_reg ),
    .ADR3(\Round_Resultant_Significand/Round_Sgf_N/Q [14]),
    .ADR5(\Round_Resultant_Significand/Sgf_Round_R<14>_0 ),
    .O(\Round_Resultant_Significand/Sgf_Rounded [14])
  );
  X_FF #(
    .LOC ( "SLICE_X48Y110" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Sgf_Ready_Reg/Q_13  (
    .CE(\FS_Module/state_reg_FSM_FFd14_3944 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_13/CLK ),
    .I(\Round_Resultant_Significand/Sgf_Rounded [13]),
    .O(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [13]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X48Y110" ),
    .INIT ( 64'hFFFFFF000000FF00 ))
  \Round_Resultant_Significand/Dir_M/Mmux_S51  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\Round_Resultant_Significand/selector_reg ),
    .ADR3(\Round_Resultant_Significand/Round_Sgf_N/Q [13]),
    .ADR5(\Round_Resultant_Significand/Sgf_Round_R<13>_0 ),
    .O(\Round_Resultant_Significand/Sgf_Rounded [13])
  );
  X_FF #(
    .LOC ( "SLICE_X48Y110" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Sgf_Ready_Reg/Q_12  (
    .CE(\FS_Module/state_reg_FSM_FFd14_3944 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_12/CLK ),
    .I(\Round_Resultant_Significand/Sgf_Rounded [12]),
    .O(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [12]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X48Y110" ),
    .INIT ( 64'hFFFFF0F00000F0F0 ))
  \Round_Resultant_Significand/Dir_M/Mmux_S41  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(\Round_Resultant_Significand/selector_reg ),
    .ADR2(\Round_Resultant_Significand/Round_Sgf_N/Q [12]),
    .ADR5(\Round_Resultant_Significand/Sgf_Round_R<12>_0 ),
    .O(\Round_Resultant_Significand/Sgf_Rounded [12])
  );
  X_FF #(
    .LOC ( "SLICE_X49Y108" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q_4  (
    .CE(\FS_Module/state_reg_FSM_FFd16_4391 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_4/CLK ),
    .I(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_4/IN ),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q [4]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X49Y123" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd17  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd17/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd17/IN ),
    .O(\FS_Module/state_reg_FSM_FFd17_4373 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X49Y123" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd16  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd16/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd16/IN ),
    .O(\FS_Module/state_reg_FSM_FFd16_4391 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X49Y123" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd14  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd14/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd14/IN ),
    .O(\FS_Module/state_reg_FSM_FFd14_3944 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X49Y123" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd12  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd12/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd12/IN ),
    .O(\FS_Module/state_reg_FSM_FFd12_3961 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_BUF   \Select_Final_Significand/Sgf_ieee_Register/Q<13>/Select_Final_Significand/Sgf_ieee_Register/Q<13>_DMUX_Delay  (
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q [12]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q<12>_0 )
  );
  X_BUF   \Select_Final_Significand/Sgf_ieee_Register/Q<13>/Select_Final_Significand/Sgf_ieee_Register/Q<13>_CMUX_Delay  (
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q [10]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q<10>_0 )
  );
  X_BUF   \Select_Final_Significand/Sgf_ieee_Register/Q<13>/Select_Final_Significand/Sgf_ieee_Register/Q<13>_BMUX_Delay  (
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q [8]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q<8>_0 )
  );
  X_BUF   \Select_Final_Significand/Sgf_ieee_Register/Q<13>/Select_Final_Significand/Sgf_ieee_Register/Q<13>_AMUX_Delay  (
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q [6]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q<6>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X46Y114" ),
    .INIT ( 1'b0 ))
  \Select_Final_Significand/Sgf_ieee_Register/Q_13  (
    .CE(\FS_Module/state_reg_FSM_FFd12_3961 ),
    .CLK(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_13/CLK ),
    .I(\Select_Final_Significand/Sgf_R_ieee_reg [13]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q [13]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y114" ),
    .INIT ( 64'hFA0AFA0AFA0AFA0A ))
  \Select_Final_Significand/Dir_Sgf_iee/Mmux_S51  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [24]),
    .ADR0(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [13]),
    .ADR3(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [14]),
    .ADR5(1'b1),
    .O(\Select_Final_Significand/Sgf_R_ieee_reg [13])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X46Y114" ),
    .INIT ( 32'hAFAFA0A0 ))
  \Select_Final_Significand/Dir_Sgf_iee/Mmux_S41  (
    .ADR3(1'b1),
    .ADR4(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [12]),
    .ADR2(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [24]),
    .ADR0(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [13]),
    .ADR1(1'b1),
    .O(\Select_Final_Significand/Sgf_R_ieee_reg [12])
  );
  X_FF #(
    .LOC ( "SLICE_X46Y114" ),
    .INIT ( 1'b0 ))
  \Select_Final_Significand/Sgf_ieee_Register/Q_12  (
    .CE(\FS_Module/state_reg_FSM_FFd12_3961 ),
    .CLK(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_12/CLK ),
    .I(\Select_Final_Significand/Sgf_R_ieee_reg [12]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q [12]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X46Y114" ),
    .INIT ( 1'b0 ))
  \Select_Final_Significand/Sgf_ieee_Register/Q_11  (
    .CE(\FS_Module/state_reg_FSM_FFd12_3961 ),
    .CLK(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_11/CLK ),
    .I(\Select_Final_Significand/Sgf_R_ieee_reg [11]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q [11]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y114" ),
    .INIT ( 64'hAAAAFF00AAAAFF00 ))
  \Select_Final_Significand/Dir_Sgf_iee/Mmux_S31  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR4(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [24]),
    .ADR3(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [11]),
    .ADR0(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [12]),
    .ADR5(1'b1),
    .O(\Select_Final_Significand/Sgf_R_ieee_reg [11])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X46Y114" ),
    .INIT ( 32'hFF00CCCC ))
  \Select_Final_Significand/Dir_Sgf_iee/Mmux_S21  (
    .ADR0(1'b1),
    .ADR1(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [10]),
    .ADR4(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [24]),
    .ADR3(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [11]),
    .ADR2(1'b1),
    .O(\Select_Final_Significand/Sgf_R_ieee_reg [10])
  );
  X_FF #(
    .LOC ( "SLICE_X46Y114" ),
    .INIT ( 1'b0 ))
  \Select_Final_Significand/Sgf_ieee_Register/Q_10  (
    .CE(\FS_Module/state_reg_FSM_FFd12_3961 ),
    .CLK(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_10/CLK ),
    .I(\Select_Final_Significand/Sgf_R_ieee_reg [10]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q [10]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X46Y114" ),
    .INIT ( 1'b0 ))
  \Select_Final_Significand/Sgf_ieee_Register/Q_9  (
    .CE(\FS_Module/state_reg_FSM_FFd12_3961 ),
    .CLK(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_9/CLK ),
    .I(\Select_Final_Significand/Sgf_R_ieee_reg [9]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q [9]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y114" ),
    .INIT ( 64'hBB88BB88BB88BB88 ))
  \Select_Final_Significand/Dir_Sgf_iee/Mmux_S231  (
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR1(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [24]),
    .ADR3(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [9]),
    .ADR0(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [10]),
    .ADR5(1'b1),
    .O(\Select_Final_Significand/Sgf_R_ieee_reg [9])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X46Y114" ),
    .INIT ( 32'hFF33CC00 ))
  \Select_Final_Significand/Dir_Sgf_iee/Mmux_S221  (
    .ADR0(1'b1),
    .ADR4(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [8]),
    .ADR1(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [24]),
    .ADR3(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [9]),
    .ADR2(1'b1),
    .O(\Select_Final_Significand/Sgf_R_ieee_reg [8])
  );
  X_FF #(
    .LOC ( "SLICE_X46Y114" ),
    .INIT ( 1'b0 ))
  \Select_Final_Significand/Sgf_ieee_Register/Q_8  (
    .CE(\FS_Module/state_reg_FSM_FFd12_3961 ),
    .CLK(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_8/CLK ),
    .I(\Select_Final_Significand/Sgf_R_ieee_reg [8]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q [8]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X46Y114" ),
    .INIT ( 1'b0 ))
  \Select_Final_Significand/Sgf_ieee_Register/Q_7  (
    .CE(\FS_Module/state_reg_FSM_FFd12_3961 ),
    .CLK(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_7/CLK ),
    .I(\Select_Final_Significand/Sgf_R_ieee_reg [7]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q [7]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y114" ),
    .INIT ( 64'hF0CCF0CCF0CCF0CC ))
  \Select_Final_Significand/Dir_Sgf_iee/Mmux_S211  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR3(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [24]),
    .ADR1(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [7]),
    .ADR2(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [8]),
    .ADR5(1'b1),
    .O(\Select_Final_Significand/Sgf_R_ieee_reg [7])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X46Y114" ),
    .INIT ( 32'hCCFFCC00 ))
  \Select_Final_Significand/Dir_Sgf_iee/Mmux_S201  (
    .ADR0(1'b1),
    .ADR4(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [6]),
    .ADR3(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [24]),
    .ADR1(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [7]),
    .ADR2(1'b1),
    .O(\Select_Final_Significand/Sgf_R_ieee_reg [6])
  );
  X_FF #(
    .LOC ( "SLICE_X46Y114" ),
    .INIT ( 1'b0 ))
  \Select_Final_Significand/Sgf_ieee_Register/Q_6  (
    .CE(\FS_Module/state_reg_FSM_FFd12_3961 ),
    .CLK(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_6/CLK ),
    .I(\Select_Final_Significand/Sgf_R_ieee_reg [6]),
    .O(\Select_Final_Significand/Sgf_ieee_Register/Q [6]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \FS_Module/state_reg_FSM_FFd22/FS_Module/state_reg_FSM_FFd22_BMUX_Delay  (
    .I(\FS_Module/state_reg_FSM_FFd20_1191 ),
    .O(\FS_Module/state_reg_FSM_FFd20_0 )
  );
  X_BUF   \FS_Module/state_reg_FSM_FFd22/FS_Module/state_reg_FSM_FFd22_AMUX_Delay  (
    .I(\FS_Module/state_reg_FSM_FFd18_1185 ),
    .O(\FS_Module/state_reg_FSM_FFd18_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X42Y129" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd22  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd22/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd22/IN ),
    .O(\FS_Module/state_reg_FSM_FFd22_4434 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X42Y129" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd21  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd21/CLK ),
    .I(\FS_Module/state_reg_FSM_FFd21-In ),
    .O(\FS_Module/state_reg_FSM_FFd21_4433 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X42Y129" ),
    .INIT ( 64'h3030303030303030 ))
  \FS_Module/state_reg_FSM_FFd21-In1  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\FS_Module/state_reg_FSM_FFd22_4434 ),
    .ADR1(\First_Und_Ov_Search/R_Overflow/Q_0_4063 ),
    .ADR5(1'b1),
    .O(\FS_Module/state_reg_FSM_FFd21-In )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X42Y129" ),
    .INIT ( 32'hFFC0C0C0 ))
  \FS_Module/state_reg_FSM_FFd20-In1  (
    .ADR0(1'b1),
    .ADR3(\Select_Final_Exponent/overflow_am/Q_0_3954 ),
    .ADR4(\FS_Module/state_reg_FSM_FFd7_4062 ),
    .ADR2(\FS_Module/state_reg_FSM_FFd22_4434 ),
    .ADR1(\First_Und_Ov_Search/R_Overflow/Q_0_4063 ),
    .O(\FS_Module/state_reg_FSM_FFd20-In )
  );
  X_FF #(
    .LOC ( "SLICE_X42Y129" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd20  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd20/CLK ),
    .I(\FS_Module/state_reg_FSM_FFd20-In ),
    .O(\FS_Module/state_reg_FSM_FFd20_1191 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X42Y129" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd19  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd19/CLK ),
    .I(\FS_Module/state_reg_FSM_FFd19-In ),
    .O(\FS_Module/state_reg_FSM_FFd19_3754 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X42Y129" ),
    .INIT ( 64'h0000CCCC0000CCCC ))
  \FS_Module/state_reg_FSM_FFd19-In1  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(\FS_Module/state_reg_FSM_FFd21_4433 ),
    .ADR4(\First_Und_Ov_Search/R_Underflow/Q_0_3752 ),
    .ADR5(1'b1),
    .O(\FS_Module/state_reg_FSM_FFd19-In )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X42Y129" ),
    .INIT ( 32'hCCCC0000 ))
  \FS_Module/state_reg_FSM_FFd18-In1  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(\FS_Module/state_reg_FSM_FFd21_4433 ),
    .ADR4(\First_Und_Ov_Search/R_Underflow/Q_0_3752 ),
    .O(\FS_Module/state_reg_FSM_FFd18-In )
  );
  X_FF #(
    .LOC ( "SLICE_X42Y129" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd18  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd18/CLK ),
    .I(\FS_Module/state_reg_FSM_FFd18-In ),
    .O(\FS_Module/state_reg_FSM_FFd18_1185 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_BUF   \Select_Final_Exponent/exp_fp_reg/Q<4>/Select_Final_Exponent/exp_fp_reg/Q<4>_AMUX_Delay  (
    .I(\Select_Final_Exponent/exp_fp_reg/Q [1]),
    .O(\Select_Final_Exponent/exp_fp_reg/Q<1>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X43Y130" ),
    .INIT ( 1'b0 ))
  \Select_Final_Exponent/exp_fp_reg/Q_4  (
    .CE(\FS_Module/state_reg_FSM_FFd9_3904 ),
    .CLK(\NlwBufferSignal_Select_Final_Exponent/exp_fp_reg/Q_4/CLK ),
    .I(\Select_Final_Exponent/exp_def [4]),
    .O(\Select_Final_Exponent/exp_fp_reg/Q [4]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X43Y130" ),
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \Select_Final_Exponent/dir_exp_up/Mmux_S51  (
    .ADR0(\Select_Final_Exponent/exp_u_register/Q [4]),
    .ADR3(\Select_Final_Significand/Exp_na_Reg/Q_0_3907 ),
    .ADR4(\Select_Final_Exponent/exp_u_register/Q [0]),
    .ADR5(\Select_Final_Exponent/exp_u_register/Q [1]),
    .ADR1(\Select_Final_Exponent/exp_u_register/Q [2]),
    .ADR2(\Select_Final_Exponent/exp_u_register/Q [3]),
    .O(\Select_Final_Exponent/exp_def [4])
  );
  X_FF #(
    .LOC ( "SLICE_X43Y130" ),
    .INIT ( 1'b0 ))
  \Select_Final_Exponent/exp_fp_reg/Q_0  (
    .CE(\FS_Module/state_reg_FSM_FFd9_3904 ),
    .CLK(\NlwBufferSignal_Select_Final_Exponent/exp_fp_reg/Q_0/CLK ),
    .I(\Select_Final_Exponent/exp_def [0]),
    .O(\Select_Final_Exponent/exp_fp_reg/Q [0]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X43Y130" ),
    .INIT ( 64'h00FFFF0000FFFF00 ))
  \Select_Final_Exponent/dir_exp_up/Mmux_S11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\Select_Final_Exponent/exp_u_register/Q [0]),
    .ADR3(\Select_Final_Significand/Exp_na_Reg/Q_0_3907 ),
    .ADR5(1'b1),
    .O(\Select_Final_Exponent/exp_def [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X43Y130" ),
    .INIT ( 32'h33CCCCCC ))
  \Select_Final_Exponent/dir_exp_up/Mmux_S21  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(\Select_Final_Exponent/exp_u_register/Q [1]),
    .ADR4(\Select_Final_Exponent/exp_u_register/Q [0]),
    .ADR3(\Select_Final_Significand/Exp_na_Reg/Q_0_3907 ),
    .O(\Select_Final_Exponent/exp_def [1])
  );
  X_FF #(
    .LOC ( "SLICE_X43Y130" ),
    .INIT ( 1'b0 ))
  \Select_Final_Exponent/exp_fp_reg/Q_1  (
    .CE(\FS_Module/state_reg_FSM_FFd9_3904 ),
    .CLK(\NlwBufferSignal_Select_Final_Exponent/exp_fp_reg/Q_1/CLK ),
    .I(\Select_Final_Exponent/exp_def [1]),
    .O(\Select_Final_Exponent/exp_fp_reg/Q [1]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X43Y131" ),
    .INIT ( 1'b0 ))
  \Select_Final_Exponent/exp_u_register/Q_4  (
    .CE(\FS_Module/state_reg_FSM_FFd11_4424 ),
    .CLK(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_4/CLK ),
    .I(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_4/IN ),
    .O(\Select_Final_Exponent/exp_u_register/Q [4]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X51Y111" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Sgf_Ready_Reg/Q_23  (
    .CE(\FS_Module/state_reg_FSM_FFd14_3944 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_23/CLK ),
    .I(\Round_Resultant_Significand/Sgf_Rounded [23]),
    .O(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [23]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y111" ),
    .INIT ( 64'hFFFFFF0000FF0000 ))
  \Round_Resultant_Significand/Dir_M/Mmux_S161  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\Round_Resultant_Significand/selector_reg ),
    .ADR4(\Round_Resultant_Significand/Round_Sgf_N/Q [23]),
    .ADR5(\Round_Resultant_Significand/Sgf_Round_R<23>_0 ),
    .O(\Round_Resultant_Significand/Sgf_Rounded [23])
  );
  X_FF #(
    .LOC ( "SLICE_X51Y111" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Sgf_Ready_Reg/Q_22  (
    .CE(\FS_Module/state_reg_FSM_FFd14_3944 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_22/CLK ),
    .I(\Round_Resultant_Significand/Sgf_Rounded [22]),
    .O(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [22]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y111" ),
    .INIT ( 64'hFFFFFF000000FF00 ))
  \Round_Resultant_Significand/Dir_M/Mmux_S151  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\Round_Resultant_Significand/selector_reg ),
    .ADR3(\Round_Resultant_Significand/Round_Sgf_N/Q [22]),
    .ADR5(\Round_Resultant_Significand/Sgf_Round_R<22>_0 ),
    .O(\Round_Resultant_Significand/Sgf_Rounded [22])
  );
  X_FF #(
    .LOC ( "SLICE_X51Y111" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Sgf_Ready_Reg/Q_21  (
    .CE(\FS_Module/state_reg_FSM_FFd14_3944 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_21/CLK ),
    .I(\Round_Resultant_Significand/Sgf_Rounded [21]),
    .O(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [21]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y111" ),
    .INIT ( 64'hFFFFFF000000FF00 ))
  \Round_Resultant_Significand/Dir_M/Mmux_S141  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\Round_Resultant_Significand/selector_reg ),
    .ADR3(\Round_Resultant_Significand/Round_Sgf_N/Q [21]),
    .ADR5(\Round_Resultant_Significand/Sgf_Round_R<21>_0 ),
    .O(\Round_Resultant_Significand/Sgf_Rounded [21])
  );
  X_FF #(
    .LOC ( "SLICE_X51Y111" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Sgf_Ready_Reg/Q_20  (
    .CE(\FS_Module/state_reg_FSM_FFd14_3944 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_20/CLK ),
    .I(\Round_Resultant_Significand/Sgf_Rounded [20]),
    .O(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [20]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y111" ),
    .INIT ( 64'hFFFFF0F00F0F0000 ))
  \Round_Resultant_Significand/Dir_M/Mmux_S131  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\Round_Resultant_Significand/selector_reg ),
    .ADR4(\Round_Resultant_Significand/Round_Sgf_N/Q [20]),
    .ADR5(\Round_Resultant_Significand/Sgf_Round_R<20>_0 ),
    .O(\Round_Resultant_Significand/Sgf_Rounded [20])
  );
  X_BUF   \Round_Resultant_Significand/Round_Sgf_N/Q<7>/Round_Resultant_Significand/Round_Sgf_N/Q<7>_DMUX_Delay  (
    .I(\Round_Resultant_Significand/Sgf_Round_R [11]),
    .O(\Round_Resultant_Significand/Sgf_Round_R<11>_0 )
  );
  X_BUF   \Round_Resultant_Significand/Round_Sgf_N/Q<7>/Round_Resultant_Significand/Round_Sgf_N/Q<7>_CMUX_Delay  (
    .I(\Round_Resultant_Significand/Sgf_Round_R [10]),
    .O(\Round_Resultant_Significand/Sgf_Round_R<10>_0 )
  );
  X_BUF   \Round_Resultant_Significand/Round_Sgf_N/Q<7>/Round_Resultant_Significand/Round_Sgf_N/Q<7>_BMUX_Delay  (
    .I(\Round_Resultant_Significand/Sgf_Round_R [9]),
    .O(\Round_Resultant_Significand/Sgf_Round_R<9>_0 )
  );
  X_BUF   \Round_Resultant_Significand/Round_Sgf_N/Q<7>/Round_Resultant_Significand/Round_Sgf_N/Q<7>_AMUX_Delay  (
    .I(\Round_Resultant_Significand/Sgf_Round_R [8]),
    .O(\Round_Resultant_Significand/Sgf_Round_R<8>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X50Y109" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q_7  (
    .CE(\FS_Module/state_reg_FSM_FFd16_4391 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_7/CLK ),
    .I(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_7/IN ),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q [7]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y109" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q<11>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Round_Resultant_Significand/Round_Sgf_N/Q [11]),
    .ADR5(1'b1),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q<11>_rt_1612 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y109" ),
    .INIT ( 32'h00000000 ))
  \N1_26.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_26.D5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X50Y109" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q_6  (
    .CE(\FS_Module/state_reg_FSM_FFd16_4391 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_6/CLK ),
    .I(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_6/IN ),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q [6]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X50Y109" ))
  \Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<11>  (
    .CI(\Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy[7] ),
    .CYINIT(1'b0),
    .CO({\Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy[11] , 
\NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<11>_CO[2]_UNCONNECTED , 
\NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<11>_CO[1]_UNCONNECTED , 
\NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<11>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\Round_Resultant_Significand/Sgf_Round_R [11], \Round_Resultant_Significand/Sgf_Round_R [10], \Round_Resultant_Significand/Sgf_Round_R [9], 
\Round_Resultant_Significand/Sgf_Round_R [8]}),
    .S({\Round_Resultant_Significand/Round_Sgf_N/Q<11>_rt_1612 , \Round_Resultant_Significand/Round_Sgf_N/Q<10>_rt_1622 , 
\Round_Resultant_Significand/Round_Sgf_N/Q<9>_rt_1630 , \Round_Resultant_Significand/Round_Sgf_N/Q<8>_rt_1620 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y109" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q<10>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Round_Resultant_Significand/Round_Sgf_N/Q [10]),
    .ADR5(1'b1),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q<10>_rt_1622 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y109" ),
    .INIT ( 32'h00000000 ))
  \N1_25.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_25.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X50Y109" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q_5  (
    .CE(\FS_Module/state_reg_FSM_FFd16_4391 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_5/CLK ),
    .I(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_5/IN ),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q [5]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y109" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q<9>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Round_Resultant_Significand/Round_Sgf_N/Q [9]),
    .ADR5(1'b1),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q<9>_rt_1630 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y109" ),
    .INIT ( 32'h00000000 ))
  \N1_24.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_24.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y109" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q<8>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Round_Resultant_Significand/Round_Sgf_N/Q [8]),
    .ADR5(1'b1),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q<8>_rt_1620 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y109" ),
    .INIT ( 32'h00000000 ))
  \N1_23.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_23.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \Round_Resultant_Significand/Round_Sgf_N/Q<8>/Round_Resultant_Significand/Round_Sgf_N/Q<8>_DMUX_Delay  (
    .I(\Round_Resultant_Significand/Sgf_Round_R [7]),
    .O(\Round_Resultant_Significand/Sgf_Round_R<7>_0 )
  );
  X_BUF   \Round_Resultant_Significand/Round_Sgf_N/Q<8>/Round_Resultant_Significand/Round_Sgf_N/Q<8>_CMUX_Delay  (
    .I(\Round_Resultant_Significand/Sgf_Round_R [6]),
    .O(\Round_Resultant_Significand/Sgf_Round_R<6>_0 )
  );
  X_BUF   \Round_Resultant_Significand/Round_Sgf_N/Q<8>/Round_Resultant_Significand/Round_Sgf_N/Q<8>_BMUX_Delay  (
    .I(\Round_Resultant_Significand/Sgf_Round_R [5]),
    .O(\Round_Resultant_Significand/Sgf_Round_R<5>_0 )
  );
  X_BUF   \Round_Resultant_Significand/Round_Sgf_N/Q<8>/Round_Resultant_Significand/Round_Sgf_N/Q<8>_AMUX_Delay  (
    .I(\Round_Resultant_Significand/Sgf_Round_R [4]),
    .O(\Round_Resultant_Significand/Sgf_Round_R<4>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X50Y108" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q_8  (
    .CE(\FS_Module/state_reg_FSM_FFd16_4391 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_8/CLK ),
    .I(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_8/IN ),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q [8]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y108" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q<7>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Round_Resultant_Significand/Round_Sgf_N/Q [7]),
    .ADR5(1'b1),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q<7>_rt_1589 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y108" ),
    .INIT ( 32'h00000000 ))
  \N1_22.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_22.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X50Y108" ))
  \Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<7>  (
    .CI(\Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy[3] ),
    .CYINIT(1'b0),
    .CO({\Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy[7] , 
\NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<7>_CO[2]_UNCONNECTED , 
\NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<7>_CO[1]_UNCONNECTED , 
\NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\Round_Resultant_Significand/Sgf_Round_R [7], \Round_Resultant_Significand/Sgf_Round_R [6], \Round_Resultant_Significand/Sgf_Round_R [5], 
\Round_Resultant_Significand/Sgf_Round_R [4]}),
    .S({\Round_Resultant_Significand/Round_Sgf_N/Q<7>_rt_1589 , \Round_Resultant_Significand/Round_Sgf_N/Q<6>_rt_1602 , 
\Round_Resultant_Significand/Round_Sgf_N/Q<5>_rt_1592 , \Round_Resultant_Significand/Round_Sgf_N/Q<4>_rt_1600 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y108" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Round_Resultant_Significand/Round_Sgf_N/Q [6]),
    .ADR5(1'b1),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q<6>_rt_1602 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y108" ),
    .INIT ( 32'h00000000 ))
  \N1_21.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_21.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y108" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q<5>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Round_Resultant_Significand/Round_Sgf_N/Q [5]),
    .ADR5(1'b1),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q<5>_rt_1592 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y108" ),
    .INIT ( 32'h00000000 ))
  \N1_20.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_20.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y108" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q<4>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Round_Resultant_Significand/Round_Sgf_N/Q [4]),
    .ADR5(1'b1),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q<4>_rt_1600 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y108" ),
    .INIT ( 32'h00000000 ))
  \N1_19.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_19.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \Round_Resultant_Significand/Round_Sgf_N/Q<14>/Round_Resultant_Significand/Round_Sgf_N/Q<14>_DMUX_Delay  (
    .I(\Round_Resultant_Significand/Sgf_Round_R [15]),
    .O(\Round_Resultant_Significand/Sgf_Round_R<15>_0 )
  );
  X_BUF   \Round_Resultant_Significand/Round_Sgf_N/Q<14>/Round_Resultant_Significand/Round_Sgf_N/Q<14>_CMUX_Delay  (
    .I(\Round_Resultant_Significand/Sgf_Round_R [14]),
    .O(\Round_Resultant_Significand/Sgf_Round_R<14>_0 )
  );
  X_BUF   \Round_Resultant_Significand/Round_Sgf_N/Q<14>/Round_Resultant_Significand/Round_Sgf_N/Q<14>_BMUX_Delay  (
    .I(\Round_Resultant_Significand/Sgf_Round_R [13]),
    .O(\Round_Resultant_Significand/Sgf_Round_R<13>_0 )
  );
  X_BUF   \Round_Resultant_Significand/Round_Sgf_N/Q<14>/Round_Resultant_Significand/Round_Sgf_N/Q<14>_AMUX_Delay  (
    .I(\Round_Resultant_Significand/Sgf_Round_R [12]),
    .O(\Round_Resultant_Significand/Sgf_Round_R<12>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X50Y110" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q_14  (
    .CE(\FS_Module/state_reg_FSM_FFd16_4391 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_14/CLK ),
    .I(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_14/IN ),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q [14]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y110" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q<15>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Round_Resultant_Significand/Round_Sgf_N/Q [15]),
    .ADR5(1'b1),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q<15>_rt_1652 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y110" ),
    .INIT ( 32'h00000000 ))
  \N1_30.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_30.D5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X50Y110" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q_13  (
    .CE(\FS_Module/state_reg_FSM_FFd16_4391 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_13/CLK ),
    .I(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_13/IN ),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q [13]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X50Y110" ))
  \Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<15>  (
    .CI(\Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy[11] ),
    .CYINIT(1'b0),
    .CO({\Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy[15] , 
\NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<15>_CO[2]_UNCONNECTED , 
\NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<15>_CO[1]_UNCONNECTED , 
\NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<15>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\Round_Resultant_Significand/Sgf_Round_R [15], \Round_Resultant_Significand/Sgf_Round_R [14], \Round_Resultant_Significand/Sgf_Round_R [13], 
\Round_Resultant_Significand/Sgf_Round_R [12]}),
    .S({\Round_Resultant_Significand/Round_Sgf_N/Q<15>_rt_1652 , \Round_Resultant_Significand/Round_Sgf_N/Q<14>_rt_1656 , 
\Round_Resultant_Significand/Round_Sgf_N/Q<13>_rt_1659 , \Round_Resultant_Significand/Round_Sgf_N/Q<12>_rt_1657 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y110" ),
    .INIT ( 64'hF0F0F0F0F0F0F0F0 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q<14>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\Round_Resultant_Significand/Round_Sgf_N/Q [14]),
    .ADR5(1'b1),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q<14>_rt_1656 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y110" ),
    .INIT ( 32'h00000000 ))
  \N1_29.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_29.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X50Y110" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q_12  (
    .CE(\FS_Module/state_reg_FSM_FFd16_4391 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_12/CLK ),
    .I(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_12/IN ),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q [12]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y110" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q<13>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Round_Resultant_Significand/Round_Sgf_N/Q [13]),
    .ADR5(1'b1),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q<13>_rt_1659 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y110" ),
    .INIT ( 32'h00000000 ))
  \N1_28.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_28.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X50Y110" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q_11  (
    .CE(\FS_Module/state_reg_FSM_FFd16_4391 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_11/CLK ),
    .I(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_11/IN ),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q [11]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y110" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q<12>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Round_Resultant_Significand/Round_Sgf_N/Q [12]),
    .ADR5(1'b1),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q<12>_rt_1657 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y110" ),
    .INIT ( 32'h00000000 ))
  \N1_27.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_27.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X51Y112" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Sgf_Ready_Reg/Q_16  (
    .CE(\FS_Module/state_reg_FSM_FFd14_3944 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_16/CLK ),
    .I(\Round_Resultant_Significand/Sgf_Rounded [16]),
    .O(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [16]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y112" ),
    .INIT ( 64'hFFFFF0F00000F0F0 ))
  \Round_Resultant_Significand/Dir_M/Mmux_S81  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(\Round_Resultant_Significand/selector_reg ),
    .ADR2(\Round_Resultant_Significand/Round_Sgf_N/Q [16]),
    .ADR5(\Round_Resultant_Significand/Sgf_Round_R<16>_0 ),
    .O(\Round_Resultant_Significand/Sgf_Rounded [16])
  );
  X_FF #(
    .LOC ( "SLICE_X51Y112" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Sgf_Ready_Reg/Q_9  (
    .CE(\FS_Module/state_reg_FSM_FFd14_3944 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_9/CLK ),
    .I(\Round_Resultant_Significand/Sgf_Rounded [9]),
    .O(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [9]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y112" ),
    .INIT ( 64'hFFFFFF0000FF0000 ))
  \Round_Resultant_Significand/Dir_M/Mmux_S251  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\Round_Resultant_Significand/selector_reg ),
    .ADR4(\Round_Resultant_Significand/Round_Sgf_N/Q [9]),
    .ADR5(\Round_Resultant_Significand/Sgf_Round_R<9>_0 ),
    .O(\Round_Resultant_Significand/Sgf_Rounded [9])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y112" ),
    .INIT ( 64'h50500A0A50000A00 ))
  \Round_Resultant_Significand/Round_Code/out1  (
    .ADR1(1'b1),
    .ADR0(r_mode_1_IBUF_4282),
    .ADR2(r_mode_0_IBUF_4281),
    .ADR3(\Fourth_Module/SgfRegister_F/Q<1>_0 ),
    .ADR5(\Fourth_Module/SgfRegister_F/Q<0>_0 ),
    .ADR4(\Operands_Classification/DMC/Q [31]),
    .O(\Round_Resultant_Significand/selector_reg )
  );
  X_FF #(
    .LOC ( "SLICE_X51Y110" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Sgf_Ready_Reg/Q_19  (
    .CE(\FS_Module/state_reg_FSM_FFd14_3944 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_19/CLK ),
    .I(\Round_Resultant_Significand/Sgf_Rounded [19]),
    .O(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [19]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y110" ),
    .INIT ( 64'hFFFFFF0000FF0000 ))
  \Round_Resultant_Significand/Dir_M/Mmux_S111  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\Round_Resultant_Significand/selector_reg ),
    .ADR4(\Round_Resultant_Significand/Round_Sgf_N/Q [19]),
    .ADR5(\Round_Resultant_Significand/Sgf_Round_R<19>_0 ),
    .O(\Round_Resultant_Significand/Sgf_Rounded [19])
  );
  X_FF #(
    .LOC ( "SLICE_X51Y110" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Sgf_Ready_Reg/Q_18  (
    .CE(\FS_Module/state_reg_FSM_FFd14_3944 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_18/CLK ),
    .I(\Round_Resultant_Significand/Sgf_Rounded [18]),
    .O(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [18]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y110" ),
    .INIT ( 64'hFFFFFF0000FF0000 ))
  \Round_Resultant_Significand/Dir_M/Mmux_S101  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\Round_Resultant_Significand/selector_reg ),
    .ADR4(\Round_Resultant_Significand/Round_Sgf_N/Q [18]),
    .ADR5(\Round_Resultant_Significand/Sgf_Round_R<18>_0 ),
    .O(\Round_Resultant_Significand/Sgf_Rounded [18])
  );
  X_FF #(
    .LOC ( "SLICE_X51Y110" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Sgf_Ready_Reg/Q_17  (
    .CE(\FS_Module/state_reg_FSM_FFd14_3944 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_17/CLK ),
    .I(\Round_Resultant_Significand/Sgf_Rounded [17]),
    .O(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [17]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y110" ),
    .INIT ( 64'hFFFFFF000000FF00 ))
  \Round_Resultant_Significand/Dir_M/Mmux_S91  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\Round_Resultant_Significand/selector_reg ),
    .ADR3(\Round_Resultant_Significand/Round_Sgf_N/Q [17]),
    .ADR5(\Round_Resultant_Significand/Sgf_Round_R<17>_0 ),
    .O(\Round_Resultant_Significand/Sgf_Rounded [17])
  );
  X_FF #(
    .LOC ( "SLICE_X51Y110" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Sgf_Ready_Reg/Q_8  (
    .CE(\FS_Module/state_reg_FSM_FFd14_3944 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_8/CLK ),
    .I(\Round_Resultant_Significand/Sgf_Rounded [8]),
    .O(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [8]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X51Y110" ),
    .INIT ( 64'hFFFFFF000000FF00 ))
  \Round_Resultant_Significand/Dir_M/Mmux_S241  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\Round_Resultant_Significand/selector_reg ),
    .ADR3(\Round_Resultant_Significand/Round_Sgf_N/Q [8]),
    .ADR5(\Round_Resultant_Significand/Sgf_Round_R<8>_0 ),
    .O(\Round_Resultant_Significand/Sgf_Rounded [8])
  );
  X_FF #(
    .LOC ( "SLICE_X54Y132" ),
    .INIT ( 1'b0 ))
  \as_5_P_Reg/Q_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_as_5_P_Reg/Q_0/CLK ),
    .I(\as_5_P_Reg/Q_0_rstpot_1784 ),
    .O(\as_5_P_Reg/Q_0_3757 ),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X54Y132" ),
    .INIT ( 64'hFFFFFFFFF0F0F0F0 ))
  \as_5_P_Reg/Q_0_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\as_5_P_Reg/Q_0_3757 ),
    .ADR4(1'b1),
    .ADR5(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .O(\as_5_P_Reg/Q_0_rstpot_1784 )
  );
  X_BUF   \Round_Resultant_Significand/Round_Sgf_N/Q<18>/Round_Resultant_Significand/Round_Sgf_N/Q<18>_DMUX_Delay  (
    .I(\Round_Resultant_Significand/Sgf_Round_R [19]),
    .O(\Round_Resultant_Significand/Sgf_Round_R<19>_0 )
  );
  X_BUF   \Round_Resultant_Significand/Round_Sgf_N/Q<18>/Round_Resultant_Significand/Round_Sgf_N/Q<18>_CMUX_Delay  (
    .I(\Round_Resultant_Significand/Sgf_Round_R [18]),
    .O(\Round_Resultant_Significand/Sgf_Round_R<18>_0 )
  );
  X_BUF   \Round_Resultant_Significand/Round_Sgf_N/Q<18>/Round_Resultant_Significand/Round_Sgf_N/Q<18>_BMUX_Delay  (
    .I(\Round_Resultant_Significand/Sgf_Round_R [17]),
    .O(\Round_Resultant_Significand/Sgf_Round_R<17>_0 )
  );
  X_BUF   \Round_Resultant_Significand/Round_Sgf_N/Q<18>/Round_Resultant_Significand/Round_Sgf_N/Q<18>_AMUX_Delay  (
    .I(\Round_Resultant_Significand/Sgf_Round_R [16]),
    .O(\Round_Resultant_Significand/Sgf_Round_R<16>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X50Y111" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q_18  (
    .CE(\FS_Module/state_reg_FSM_FFd16_4391 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_18/CLK ),
    .I(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_18/IN ),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q [18]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y111" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q<19>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Round_Resultant_Significand/Round_Sgf_N/Q [19]),
    .ADR5(1'b1),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q<19>_rt_1680 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y111" ),
    .INIT ( 32'h00000000 ))
  \N1_34.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_34.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X50Y111" ))
  \Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<19>  (
    .CI(\Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy[15] ),
    .CYINIT(1'b0),
    .CO({\Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy[19] , 
\NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<19>_CO[2]_UNCONNECTED , 
\NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<19>_CO[1]_UNCONNECTED , 
\NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<19>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\Round_Resultant_Significand/Sgf_Round_R [19], \Round_Resultant_Significand/Sgf_Round_R [18], \Round_Resultant_Significand/Sgf_Round_R [17], 
\Round_Resultant_Significand/Sgf_Round_R [16]}),
    .S({\Round_Resultant_Significand/Round_Sgf_N/Q<19>_rt_1680 , \Round_Resultant_Significand/Round_Sgf_N/Q<18>_rt_1693 , 
\Round_Resultant_Significand/Round_Sgf_N/Q<17>_rt_1683 , \Round_Resultant_Significand/Round_Sgf_N/Q<16>_rt_1691 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y111" ),
    .INIT ( 64'hF0F0F0F0F0F0F0F0 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q<18>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\Round_Resultant_Significand/Round_Sgf_N/Q [18]),
    .ADR5(1'b1),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q<18>_rt_1693 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y111" ),
    .INIT ( 32'h00000000 ))
  \N1_33.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_33.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y111" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q<17>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Round_Resultant_Significand/Round_Sgf_N/Q [17]),
    .ADR5(1'b1),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q<17>_rt_1683 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y111" ),
    .INIT ( 32'h00000000 ))
  \N1_32.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_32.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y111" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q<16>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Round_Resultant_Significand/Round_Sgf_N/Q [16]),
    .ADR5(1'b1),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q<16>_rt_1691 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y111" ),
    .INIT ( 32'h00000000 ))
  \N1_31.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_31.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \Update_Exponent_First_Time/UExp/Q<5>/Update_Exponent_First_Time/UExp/Q<5>_DMUX_Delay  (
    .I(\Update_Exponent_First_Time/SExp/Maddsub_Data_S_cy<5>_pack_10 ),
    .O(\Update_Exponent_First_Time/SExp/Maddsub_Data_S_cy[5] )
  );
  X_FF #(
    .LOC ( "SLICE_X54Y133" ),
    .INIT ( 1'b0 ))
  \Update_Exponent_First_Time/UExp/Q_5  (
    .CE(\FS_Module/state_reg_FSM_FFd25_3759 ),
    .CLK(\NlwBufferSignal_Update_Exponent_First_Time/UExp/Q_5/CLK ),
    .I(\Update_Exponent_First_Time/exp_update [5]),
    .O(\Update_Exponent_First_Time/UExp/Q [5]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X54Y133" ),
    .INIT ( 64'hBF40FD02BF40FD02 ))
  \Update_Exponent_First_Time/SExp/Maddsub_Data_S_xor<5>11  (
    .ADR0(\as_5_P_Reg/Q_0_3757 ),
    .ADR3(\Update_Exponent_First_Time/RExp/Q [5]),
    .ADR2(\Update_Exponent_First_Time/RExp/Q [3]),
    .ADR1(\Update_Exponent_First_Time/RExp/Q [4]),
    .ADR4(\Update_Exponent_First_Time/SExp/Maddsub_Data_S_cy[2] ),
    .ADR5(1'b1),
    .O(\Update_Exponent_First_Time/exp_update [5])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X54Y133" ),
    .INIT ( 32'hEAAAAAA8 ))
  \Update_Exponent_First_Time/SExp/Maddsub_Data_S_cy<5>12  (
    .ADR0(\as_5_P_Reg/Q_0_3757 ),
    .ADR3(\Update_Exponent_First_Time/RExp/Q [5]),
    .ADR2(\Update_Exponent_First_Time/RExp/Q [3]),
    .ADR1(\Update_Exponent_First_Time/RExp/Q [4]),
    .ADR4(\Update_Exponent_First_Time/SExp/Maddsub_Data_S_cy[2] ),
    .O(\Update_Exponent_First_Time/SExp/Maddsub_Data_S_cy<5>_pack_10 )
  );
  X_FF #(
    .LOC ( "SLICE_X54Y133" ),
    .INIT ( 1'b0 ))
  \Update_Exponent_First_Time/UExp/Q_7  (
    .CE(\FS_Module/state_reg_FSM_FFd25_3759 ),
    .CLK(\NlwBufferSignal_Update_Exponent_First_Time/UExp/Q_7/CLK ),
    .I(\Update_Exponent_First_Time/exp_update [7]),
    .O(\Update_Exponent_First_Time/UExp/Q [7]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X54Y133" ),
    .INIT ( 64'hFF000FF0F00FFF00 ))
  \Update_Exponent_First_Time/SExp/Maddsub_Data_S_xor<7>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\Update_Exponent_First_Time/RExp/Q [7]),
    .ADR4(\as_5_P_Reg/Q_0_3757 ),
    .ADR2(\Update_Exponent_First_Time/RExp/Q [6]),
    .ADR5(\Update_Exponent_First_Time/SExp/Maddsub_Data_S_cy[5] ),
    .O(\Update_Exponent_First_Time/exp_update [7])
  );
  X_FF #(
    .LOC ( "SLICE_X54Y133" ),
    .INIT ( 1'b0 ))
  \Update_Exponent_First_Time/UExp/Q_1  (
    .CE(\FS_Module/state_reg_FSM_FFd25_3759 ),
    .CLK(\NlwBufferSignal_Update_Exponent_First_Time/UExp/Q_1/CLK ),
    .I(\Update_Exponent_First_Time/exp_update [1]),
    .O(\Update_Exponent_First_Time/UExp/Q [1]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X54Y133" ),
    .INIT ( 64'hFCF0F0C0FCF0F0C0 ))
  \Update_Exponent_First_Time/SExp/Maddsub_Data_S_cy<2>12  (
    .ADR0(1'b1),
    .ADR3(\Update_Exponent_First_Time/RExp/Q [2]),
    .ADR1(\Update_Exponent_First_Time/RExp/Q [1]),
    .ADR4(\Update_Exponent_First_Time/RExp/Q [0]),
    .ADR2(\as_5_P_Reg/Q_0_3757 ),
    .ADR5(1'b1),
    .O(\Update_Exponent_First_Time/SExp/Maddsub_Data_S_cy[2] )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X54Y133" ),
    .INIT ( 32'hC3C33C3C ))
  \Update_Exponent_First_Time/SExp/Maddsub_Data_S_xor<1>11  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR1(\Update_Exponent_First_Time/RExp/Q [1]),
    .ADR4(\Update_Exponent_First_Time/RExp/Q [0]),
    .ADR2(\as_5_P_Reg/Q_0_3757 ),
    .O(\Update_Exponent_First_Time/exp_update [1])
  );
  X_FF #(
    .LOC ( "SLICE_X54Y133" ),
    .INIT ( 1'b0 ))
  \Update_Exponent_First_Time/UExp/Q_6  (
    .CE(\FS_Module/state_reg_FSM_FFd25_3759 ),
    .CLK(\NlwBufferSignal_Update_Exponent_First_Time/UExp/Q_6/CLK ),
    .I(\Update_Exponent_First_Time/exp_update [6]),
    .O(\Update_Exponent_First_Time/UExp/Q [6]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X54Y133" ),
    .INIT ( 64'hDFFFFFFB20000004 ))
  \Update_Exponent_First_Time/SExp/Maddsub_Data_S_xor<6>11  (
    .ADR5(\Update_Exponent_First_Time/RExp/Q [6]),
    .ADR0(\Update_Exponent_First_Time/RExp/Q [3]),
    .ADR4(\Update_Exponent_First_Time/RExp/Q [4]),
    .ADR2(\Update_Exponent_First_Time/RExp/Q [5]),
    .ADR3(\Update_Exponent_First_Time/SExp/Maddsub_Data_S_cy[2] ),
    .ADR1(\as_5_P_Reg/Q_0_3757 ),
    .O(\Update_Exponent_First_Time/exp_update [6])
  );
  X_BUF   \First_Und_Ov_Search/R_Overflow/Q_0/First_Und_Ov_Search/R_Overflow/Q_0_CMUX_Delay  (
    .I(N11_pack_6),
    .O(N11)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y132" ),
    .INIT ( 64'hF0000000F0000000 ))
  \First_Und_Ov_Search/overflow_reg1_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\Update_Exponent_First_Time/UExp/Q [5]),
    .ADR2(\Update_Exponent_First_Time/UExp/Q [4]),
    .ADR3(\Update_Exponent_First_Time/UExp/Q<3>_0 ),
    .ADR5(1'b1),
    .O(N9)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X52Y132" ),
    .INIT ( 32'hFFFFFFF0 ))
  \First_Und_Ov_Search/underflow_reg1_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\Update_Exponent_First_Time/UExp/Q [5]),
    .ADR2(\Update_Exponent_First_Time/UExp/Q [4]),
    .ADR3(\Update_Exponent_First_Time/UExp/Q<3>_0 ),
    .O(N11_pack_6)
  );
  X_FF #(
    .LOC ( "SLICE_X52Y132" ),
    .INIT ( 1'b0 ))
  \First_Und_Ov_Search/R_Overflow/Q_0  (
    .CE(\FS_Module/state_reg_FSM_FFd23_4165 ),
    .CLK(\NlwBufferSignal_First_Und_Ov_Search/R_Overflow/Q_0/CLK ),
    .I(\First_Und_Ov_Search/overflow_reg ),
    .O(\First_Und_Ov_Search/R_Overflow/Q_0_4063 ),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y132" ),
    .INIT ( 64'h8000000000000000 ))
  \First_Und_Ov_Search/overflow_reg1  (
    .ADR3(\Update_Exponent_First_Time/UExp/Q [1]),
    .ADR1(\Update_Exponent_First_Time/UExp/Q [0]),
    .ADR2(\Update_Exponent_First_Time/UExp/Q [2]),
    .ADR0(\Update_Exponent_First_Time/UExp/Q [7]),
    .ADR4(\Update_Exponent_First_Time/UExp/Q [6]),
    .ADR5(N9),
    .O(\First_Und_Ov_Search/overflow_reg )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y132" ),
    .INIT ( 1'b0 ))
  \First_Und_Ov_Search/R_Underflow/Q_0  (
    .CE(\FS_Module/state_reg_FSM_FFd23_4165 ),
    .CLK(\NlwBufferSignal_First_Und_Ov_Search/R_Underflow/Q_0/CLK ),
    .I(\First_Und_Ov_Search/underflow_reg ),
    .O(\First_Und_Ov_Search/R_Underflow/Q_0_3752 ),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y132" ),
    .INIT ( 64'h0000000000000001 ))
  \First_Und_Ov_Search/underflow_reg1  (
    .ADR3(\Update_Exponent_First_Time/UExp/Q [1]),
    .ADR1(\Update_Exponent_First_Time/UExp/Q [0]),
    .ADR5(\Update_Exponent_First_Time/UExp/Q [2]),
    .ADR0(\Update_Exponent_First_Time/UExp/Q [7]),
    .ADR2(\Update_Exponent_First_Time/UExp/Q [6]),
    .ADR4(N11),
    .O(\First_Und_Ov_Search/underflow_reg )
  );
  X_FF #(
    .LOC ( "SLICE_X54Y131" ),
    .INIT ( 1'b0 ))
  \Update_Exponent_First_Time/Exp_F_ieee/Q_2  (
    .CE(\FS_Module/state_reg_FSM_FFd28_3792 ),
    .CLK(\NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_2/CLK ),
    .I(\NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_2/IN ),
    .O(\Update_Exponent_First_Time/Exp_F_ieee/Q [2]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X54Y131" ),
    .INIT ( 1'b0 ))
  \Update_Exponent_First_Time/Exp_F_ieee/Q_1  (
    .CE(\FS_Module/state_reg_FSM_FFd28_3792 ),
    .CLK(\NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_1/CLK ),
    .I(\NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_1/IN ),
    .O(\Update_Exponent_First_Time/Exp_F_ieee/Q [1]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X54Y131" ),
    .INIT ( 1'b0 ))
  \Update_Exponent_First_Time/Exp_F_ieee/Q_0  (
    .CE(\FS_Module/state_reg_FSM_FFd28_3792 ),
    .CLK(\NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_0/CLK ),
    .I(\NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_0/IN ),
    .O(\Update_Exponent_First_Time/Exp_F_ieee/Q [0]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X50Y115" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q_23  (
    .CE(\FS_Module/state_reg_FSM_FFd16_4391 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_23/CLK ),
    .I(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_23/IN ),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q [23]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X50Y115" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q_22  (
    .CE(\FS_Module/state_reg_FSM_FFd16_4391 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_22/CLK ),
    .I(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_22/IN ),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q [22]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X50Y115" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q_21  (
    .CE(\FS_Module/state_reg_FSM_FFd16_4391 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_21/CLK ),
    .I(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_21/IN ),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q [21]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X50Y115" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q_20  (
    .CE(\FS_Module/state_reg_FSM_FFd16_4391 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_20/CLK ),
    .I(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_20/IN ),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q [20]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Round_Resultant_Significand/Round_Sgf_N/Q<19>/Round_Resultant_Significand/Round_Sgf_N/Q<19>_DMUX_Delay  (
    .I(\Round_Resultant_Significand/Sgf_Round_R [23]),
    .O(\Round_Resultant_Significand/Sgf_Round_R<23>_0 )
  );
  X_BUF   \Round_Resultant_Significand/Round_Sgf_N/Q<19>/Round_Resultant_Significand/Round_Sgf_N/Q<19>_CMUX_Delay  (
    .I(\Round_Resultant_Significand/Sgf_Round_R [22]),
    .O(\Round_Resultant_Significand/Sgf_Round_R<22>_0 )
  );
  X_BUF   \Round_Resultant_Significand/Round_Sgf_N/Q<19>/Round_Resultant_Significand/Round_Sgf_N/Q<19>_BMUX_Delay  (
    .I(\Round_Resultant_Significand/Sgf_Round_R [21]),
    .O(\Round_Resultant_Significand/Sgf_Round_R<21>_0 )
  );
  X_BUF   \Round_Resultant_Significand/Round_Sgf_N/Q<19>/Round_Resultant_Significand/Round_Sgf_N/Q<19>_AMUX_Delay  (
    .I(\Round_Resultant_Significand/Sgf_Round_R [20]),
    .O(\Round_Resultant_Significand/Sgf_Round_R<20>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X50Y112" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q_19  (
    .CE(\FS_Module/state_reg_FSM_FFd16_4391 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_19/CLK ),
    .I(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_19/IN ),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q [19]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y112" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q<23>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Round_Resultant_Significand/Round_Sgf_N/Q [23]),
    .ADR5(1'b1),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q<23>_rt_1712 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y112" ),
    .INIT ( 32'h00000000 ))
  \N1_38.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_38.D5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X50Y112" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q_17  (
    .CE(\FS_Module/state_reg_FSM_FFd16_4391 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_17/CLK ),
    .I(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_17/IN ),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q [17]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X50Y112" ))
  \Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<23>  (
    .CI(\Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy[19] ),
    .CYINIT(1'b0),
    .CO({\Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy[23] , 
\NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<23>_CO[2]_UNCONNECTED , 
\NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<23>_CO[1]_UNCONNECTED , 
\NLW_Round_Resultant_Significand/Round_Adder/Madd_Data_S_cy<23>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\Round_Resultant_Significand/Sgf_Round_R [23], \Round_Resultant_Significand/Sgf_Round_R [22], \Round_Resultant_Significand/Sgf_Round_R [21], 
\Round_Resultant_Significand/Sgf_Round_R [20]}),
    .S({\Round_Resultant_Significand/Round_Sgf_N/Q<23>_rt_1712 , \Round_Resultant_Significand/Round_Sgf_N/Q<22>_rt_1716 , 
\Round_Resultant_Significand/Round_Sgf_N/Q<21>_rt_1719 , \Round_Resultant_Significand/Round_Sgf_N/Q<20>_rt_1717 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y112" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q<22>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Round_Resultant_Significand/Round_Sgf_N/Q [22]),
    .ADR5(1'b1),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q<22>_rt_1716 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y112" ),
    .INIT ( 32'h00000000 ))
  \N1_37.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_37.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X50Y112" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q_16  (
    .CE(\FS_Module/state_reg_FSM_FFd16_4391 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_16/CLK ),
    .I(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_16/IN ),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q [16]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y112" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q<21>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Round_Resultant_Significand/Round_Sgf_N/Q [21]),
    .ADR5(1'b1),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q<21>_rt_1719 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y112" ),
    .INIT ( 32'h00000000 ))
  \N1_36.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_36.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X50Y112" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q_10  (
    .CE(\FS_Module/state_reg_FSM_FFd16_4391 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_10/CLK ),
    .I(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_10/IN ),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q [10]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X50Y112" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q<20>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Round_Resultant_Significand/Round_Sgf_N/Q [20]),
    .ADR5(1'b1),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q<20>_rt_1717 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X50Y112" ),
    .INIT ( 32'h00000000 ))
  \N1_35.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_35.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y110" ),
    .INIT ( 1'b0 ))
  \Round_Resultant_Significand/Round_Sgf_N/Q_15  (
    .CE(\FS_Module/state_reg_FSM_FFd16_4391 ),
    .CLK(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_15/CLK ),
    .I(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_15/IN ),
    .O(\Round_Resultant_Significand/Round_Sgf_N/Q [15]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Update_Exponent_First_Time/UExp/Q<4>/Update_Exponent_First_Time/UExp/Q<4>_BMUX_Delay  (
    .I(\Update_Exponent_First_Time/UExp/Q [3]),
    .O(\Update_Exponent_First_Time/UExp/Q<3>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X55Y132" ),
    .INIT ( 1'b0 ))
  \Update_Exponent_First_Time/UExp/Q_4  (
    .CE(\FS_Module/state_reg_FSM_FFd25_3759 ),
    .CLK(\NlwBufferSignal_Update_Exponent_First_Time/UExp/Q_4/CLK ),
    .I(\Update_Exponent_First_Time/exp_update [4]),
    .O(\Update_Exponent_First_Time/UExp/Q [4]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X55Y132" ),
    .INIT ( 64'hBFFF4000FFFD0002 ))
  \Update_Exponent_First_Time/SExp/Maddsub_Data_S_xor<4>11  (
    .ADR4(\Update_Exponent_First_Time/RExp/Q [4]),
    .ADR2(\Update_Exponent_First_Time/RExp/Q [3]),
    .ADR1(\Update_Exponent_First_Time/RExp/Q [2]),
    .ADR5(\Update_Exponent_First_Time/RExp/Q [1]),
    .ADR3(\Update_Exponent_First_Time/RExp/Q [0]),
    .ADR0(\as_5_P_Reg/Q_0_3757 ),
    .O(\Update_Exponent_First_Time/exp_update [4])
  );
  X_FF #(
    .LOC ( "SLICE_X55Y132" ),
    .INIT ( 1'b0 ))
  \Update_Exponent_First_Time/UExp/Q_2  (
    .CE(\FS_Module/state_reg_FSM_FFd25_3759 ),
    .CLK(\NlwBufferSignal_Update_Exponent_First_Time/UExp/Q_2/CLK ),
    .I(\Update_Exponent_First_Time/exp_update [2]),
    .O(\Update_Exponent_First_Time/UExp/Q [2]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X55Y132" ),
    .INIT ( 64'hCCC33CCCCCC33CCC ))
  \Update_Exponent_First_Time/SExp/Maddsub_Data_S_xor<2>11  (
    .ADR0(1'b1),
    .ADR1(\Update_Exponent_First_Time/RExp/Q [2]),
    .ADR4(\as_5_P_Reg/Q_0_3757 ),
    .ADR2(\Update_Exponent_First_Time/RExp/Q [0]),
    .ADR3(\Update_Exponent_First_Time/RExp/Q [1]),
    .ADR5(1'b1),
    .O(\Update_Exponent_First_Time/exp_update [2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X55Y132" ),
    .INIT ( 32'hAAA96AAA ))
  \Update_Exponent_First_Time/SExp/Maddsub_Data_S_xor<3>11  (
    .ADR0(\Update_Exponent_First_Time/RExp/Q [3]),
    .ADR1(\Update_Exponent_First_Time/RExp/Q [2]),
    .ADR4(\as_5_P_Reg/Q_0_3757 ),
    .ADR2(\Update_Exponent_First_Time/RExp/Q [0]),
    .ADR3(\Update_Exponent_First_Time/RExp/Q [1]),
    .O(\Update_Exponent_First_Time/exp_update [3])
  );
  X_FF #(
    .LOC ( "SLICE_X55Y132" ),
    .INIT ( 1'b0 ))
  \Update_Exponent_First_Time/UExp/Q_3  (
    .CE(\FS_Module/state_reg_FSM_FFd25_3759 ),
    .CLK(\NlwBufferSignal_Update_Exponent_First_Time/UExp/Q_3/CLK ),
    .I(\Update_Exponent_First_Time/exp_update [3]),
    .O(\Update_Exponent_First_Time/UExp/Q [3]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X55Y132" ),
    .INIT ( 1'b0 ))
  \Update_Exponent_First_Time/UExp/Q_0  (
    .CE(\FS_Module/state_reg_FSM_FFd25_3759 ),
    .CLK(\NlwBufferSignal_Update_Exponent_First_Time/UExp/Q_0/CLK ),
    .I(\Update_Exponent_First_Time/exp_update [0]),
    .O(\Update_Exponent_First_Time/UExp/Q [0]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X55Y132" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \Update_Exponent_First_Time/SExp/Maddsub_Data_S_xor<0>11_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .ADR4(\Update_Exponent_First_Time/RExp/Q [0]),
    .O(\Update_Exponent_First_Time/exp_update [0])
  );
  X_BUF   \Update_Exponent_First_Time/RExp/Q<3>/Update_Exponent_First_Time/RExp/Q<3>_BMUX_Delay  (
    .I(\Update_Exponent_First_Time/exp<0>_pack_1 ),
    .O(\Update_Exponent_First_Time/exp [0])
  );
  X_FF #(
    .LOC ( "SLICE_X55Y131" ),
    .INIT ( 1'b0 ))
  \Update_Exponent_First_Time/RExp/Q_3  (
    .CE(\FS_Module/state_reg_FSM_FFd29_3803 ),
    .CLK(\NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_3/CLK ),
    .I(\NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_3/IN ),
    .O(\Update_Exponent_First_Time/RExp/Q [3]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X55Y131" ),
    .INIT ( 1'b0 ))
  \Update_Exponent_First_Time/RExp/Q_2  (
    .CE(\FS_Module/state_reg_FSM_FFd29_3803 ),
    .CLK(\NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_2/CLK ),
    .I(\NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_2/IN ),
    .O(\Update_Exponent_First_Time/RExp/Q [2]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X55Y131" ),
    .INIT ( 1'b0 ))
  \Update_Exponent_First_Time/RExp/Q_1  (
    .CE(\FS_Module/state_reg_FSM_FFd29_3803 ),
    .CLK(\NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_1/CLK ),
    .I(\Update_Exponent_First_Time/exp [1]),
    .O(\Update_Exponent_First_Time/RExp/Q [1]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X55Y131" ),
    .INIT ( 64'hAFAFA0A0AFAFA0A0 ))
  \Update_Exponent_First_Time/exp<1>1  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(\Sel_5_P_exp/Q_0_3796 ),
    .ADR4(\Operands_Classification/DMC/Q [24]),
    .ADR0(\Update_Exponent_First_Time/UExp/Q [1]),
    .ADR5(1'b1),
    .O(\Update_Exponent_First_Time/exp [1])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X55Y131" ),
    .INIT ( 32'hCFC0CFC0 ))
  \Update_Exponent_First_Time/exp<0>1  (
    .ADR3(\Operands_Classification/DMC/Q [23]),
    .ADR1(\Update_Exponent_First_Time/UExp/Q [0]),
    .ADR2(\Sel_5_P_exp/Q_0_3796 ),
    .ADR0(1'b1),
    .ADR4(1'b1),
    .O(\Update_Exponent_First_Time/exp<0>_pack_1 )
  );
  X_FF #(
    .LOC ( "SLICE_X55Y131" ),
    .INIT ( 1'b0 ))
  \Update_Exponent_First_Time/RExp/Q_0  (
    .CE(\FS_Module/state_reg_FSM_FFd29_3803 ),
    .CLK(\NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_0/CLK ),
    .I(\NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_0/IN ),
    .O(\Update_Exponent_First_Time/RExp/Q [0]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Operands_Classification/DMC/Q<23>/Operands_Classification/DMC/Q<23>_BMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [23]),
    .O(\Operands_Classification/DmC/Q<23>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X64Y131" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_23  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_23/CLK ),
    .I(\Operands_Classification/MDM [23]),
    .O(\Operands_Classification/DMC/Q [23]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X64Y131" ),
    .INIT ( 64'hFF0FF000FF0FF000 ))
  \Operands_Classification/Dir_M/Mmux_S161  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q [23]),
    .ADR3(\Operands_Classification/XRegister/Q<23>_0 ),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [23])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X64Y131" ),
    .INIT ( 32'hFFF00F00 ))
  \Operands_Classification/Dir_m/Mmux_S161  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q [23]),
    .ADR3(\Operands_Classification/XRegister/Q<23>_0 ),
    .O(\Operands_Classification/MDm [23])
  );
  X_FF #(
    .LOC ( "SLICE_X64Y131" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_23  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_23/CLK ),
    .I(\Operands_Classification/MDm [23]),
    .O(\Operands_Classification/DmC/Q [23]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Operands_Classification/DMC/Q<24>/Operands_Classification/DMC/Q<24>_AMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [24]),
    .O(\Operands_Classification/DmC/Q<24>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X66Y129" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_24  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_24/CLK ),
    .I(\Operands_Classification/MDM [24]),
    .O(\Operands_Classification/DMC/Q [24]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X66Y129" ),
    .INIT ( 64'hF3F3C0C0F3F3C0C0 ))
  \Operands_Classification/Dir_M/Mmux_S171  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR1(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q [24]),
    .ADR2(\Operands_Classification/XRegister/Q [24]),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [24])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X66Y129" ),
    .INIT ( 32'hFCFC3030 ))
  \Operands_Classification/Dir_m/Mmux_S171  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR1(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q [24]),
    .ADR2(\Operands_Classification/XRegister/Q [24]),
    .O(\Operands_Classification/MDm [24])
  );
  X_FF #(
    .LOC ( "SLICE_X66Y129" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_24  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_24/CLK ),
    .I(\Operands_Classification/MDm [24]),
    .O(\Operands_Classification/DmC/Q [24]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Operands_Classification/DMC/Q<31>/Operands_Classification/DMC/Q<31>_CMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [31]),
    .O(\Operands_Classification/DmC/Q<31>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X67Y120" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_31  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_31/CLK ),
    .I(\Operands_Classification/MDM [31]),
    .O(\Operands_Classification/DMC/Q [31]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X67Y120" ),
    .INIT ( 64'hFFF00F00FFF00F00 ))
  \Operands_Classification/Dir_M/Mmux_S251  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR3(\Operands_Classification/DYP/Q [31]),
    .ADR4(\Operands_Classification/XRegister/Q [31]),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [31])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X67Y120" ),
    .INIT ( 32'hFF0FF000 ))
  \Operands_Classification/Dir_m/Mmux_S251  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR3(\Operands_Classification/DYP/Q [31]),
    .ADR4(\Operands_Classification/XRegister/Q [31]),
    .O(\Operands_Classification/MDm [31])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y120" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_31  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_31/CLK ),
    .I(\Operands_Classification/MDm [31]),
    .O(\Operands_Classification/DmC/Q [31]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Operands_Classification/DMC/Q<30>/Operands_Classification/DMC/Q<30>_CMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [30]),
    .O(\Operands_Classification/DmC/Q<30>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X67Y124" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_30  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_30/CLK ),
    .I(\Operands_Classification/MDM [30]),
    .O(\Operands_Classification/DMC/Q [30]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X67Y124" ),
    .INIT ( 64'hF3C0F3C0F3C0F3C0 ))
  \Operands_Classification/Dir_M/Mmux_S241  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR1(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR3(\Operands_Classification/DYP/Q [30]),
    .ADR2(\Operands_Classification/XRegister/Q [30]),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [30])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X67Y124" ),
    .INIT ( 32'hFC30FC30 ))
  \Operands_Classification/Dir_m/Mmux_S241  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR1(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR3(\Operands_Classification/DYP/Q [30]),
    .ADR2(\Operands_Classification/XRegister/Q [30]),
    .O(\Operands_Classification/MDm [30])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y124" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_30  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_30/CLK ),
    .I(\Operands_Classification/MDm [30]),
    .O(\Operands_Classification/DmC/Q [30]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Operands_Classification/DYP/Q<3>/Operands_Classification/DYP/Q<3>_DMUX_Delay  (
    .I(\Operands_Classification/DYP/Q [15]),
    .O(\Operands_Classification/DYP/Q<15>_0 )
  );
  X_BUF   \Operands_Classification/DYP/Q<3>/Operands_Classification/DYP/Q<3>_CMUX_Delay  (
    .I(\Operands_Classification/DYP/Q [14]),
    .O(\Operands_Classification/DYP/Q<14>_0 )
  );
  X_BUF   \Operands_Classification/DYP/Q<3>/Operands_Classification/DYP/Q<3>_BMUX_Delay  (
    .I(\Operands_Classification/DYP/Q [13]),
    .O(\Operands_Classification/DYP/Q<13>_0 )
  );
  X_BUF   \Operands_Classification/DYP/Q<3>/Operands_Classification/DYP/Q<3>_AMUX_Delay  (
    .I(\Operands_Classification/DYP/Q [12]),
    .O(\Operands_Classification/DYP/Q<12>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X69Y123" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_3  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_3/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/DYP/Q_3/IN ),
    .O(\Operands_Classification/DYP/Q [3]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X69Y123" ),
    .INIT ( 32'hFFFF0000 ))
  \Operands_Classification/YRegister/Q<15>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Operands_Classification/YRegister/Q [15]),
    .O(\Operands_Classification/YRegister/Q<15>_rt_2587 )
  );
  X_FF #(
    .LOC ( "SLICE_X69Y123" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_15  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_15/CLK ),
    .I(\Operands_Classification/YRegister/Q<15>_rt_2587 ),
    .O(\Operands_Classification/DYP/Q [15]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X69Y123" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_2  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_2/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/DYP/Q_2/IN ),
    .O(\Operands_Classification/DYP/Q [2]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X69Y123" ),
    .INIT ( 32'hFFFF0000 ))
  \Operands_Classification/YRegister/Q<14>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Operands_Classification/YRegister/Q [14]),
    .O(\Operands_Classification/YRegister/Q<14>_rt_2589 )
  );
  X_FF #(
    .LOC ( "SLICE_X69Y123" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_14  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_14/CLK ),
    .I(\Operands_Classification/YRegister/Q<14>_rt_2589 ),
    .O(\Operands_Classification/DYP/Q [14]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X69Y123" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_1  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_1/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/DYP/Q_1/IN ),
    .O(\Operands_Classification/DYP/Q [1]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X69Y123" ),
    .INIT ( 32'hAAAAAAAA ))
  \Operands_Classification/YRegister/Q<13>_rt  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\Operands_Classification/YRegister/Q [13]),
    .O(\Operands_Classification/YRegister/Q<13>_rt_2584 )
  );
  X_FF #(
    .LOC ( "SLICE_X69Y123" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_13  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_13/CLK ),
    .I(\Operands_Classification/YRegister/Q<13>_rt_2584 ),
    .O(\Operands_Classification/DYP/Q [13]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X69Y123" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_0  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_0/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/DYP/Q_0/IN ),
    .O(\Operands_Classification/DYP/Q [0]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X69Y123" ),
    .INIT ( 32'hCCCCCCCC ))
  \Operands_Classification/YRegister/Q<12>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\Operands_Classification/YRegister/Q [12]),
    .O(\Operands_Classification/YRegister/Q<12>_rt_2601 )
  );
  X_FF #(
    .LOC ( "SLICE_X69Y123" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_12  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_12/CLK ),
    .I(\Operands_Classification/YRegister/Q<12>_rt_2601 ),
    .O(\Operands_Classification/DYP/Q [12]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X67Y129" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_27  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_27/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/DYP/Q_27/IN ),
    .O(\Operands_Classification/DYP/Q [27]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X67Y129" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_26  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_26/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/DYP/Q_26/IN ),
    .O(\Operands_Classification/DYP/Q [26]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X67Y129" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_25  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_25/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/DYP/Q_25/IN ),
    .O(\Operands_Classification/DYP/Q [25]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X67Y129" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_24  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_24/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/DYP/Q_24/IN ),
    .O(\Operands_Classification/DYP/Q [24]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X69Y120" ),
    .INIT ( 64'h0000FFFFFFFF0000 ))
  \Add_Sub_Significands/eq_sgn_INV_44_o2  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Operands_Classification/DMC/Q [31]),
    .ADR5(\Operands_Classification/DmC/Q<31>_0 ),
    .O(\Add_Sub_Significands/eq_sgn_INV_44_o1 )
  );
  X_BUF   \Operands_Classification/DMC/Q<0>/Operands_Classification/DMC/Q<0>_AMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [0]),
    .O(\Operands_Classification/DmC/Q<0>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X69Y122" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_0  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_0/CLK ),
    .I(\Operands_Classification/MDM [0]),
    .O(\Operands_Classification/DMC/Q [0]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X69Y122" ),
    .INIT ( 64'hAAAAF0F0AAAAF0F0 ))
  \Operands_Classification/Dir_M/Mmux_S110  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR4(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR2(\Operands_Classification/DYP/Q [0]),
    .ADR0(\Operands_Classification/XRegister/Q<0>_0 ),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X69Y122" ),
    .INIT ( 32'hF0F0AAAA ))
  \Operands_Classification/Dir_m/Mmux_S110  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR4(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR2(\Operands_Classification/DYP/Q [0]),
    .ADR0(\Operands_Classification/XRegister/Q<0>_0 ),
    .O(\Operands_Classification/MDm [0])
  );
  X_FF #(
    .LOC ( "SLICE_X69Y122" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_0  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_0/CLK ),
    .I(\Operands_Classification/MDm [0]),
    .O(\Operands_Classification/DmC/Q [0]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Operands_Classification/XRegister/Q<23>/Operands_Classification/XRegister/Q<23>_DMUX_Delay  (
    .I(\Operands_Classification/XRegister/Q [23]),
    .O(\Operands_Classification/XRegister/Q<23>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X63Y132" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_23  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_23/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/XRegister/Q_23/IN ),
    .O(\Operands_Classification/XRegister/Q [23]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X66Y125" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_15  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_15/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/XRegister/Q_15/IN ),
    .O(\Operands_Classification/XRegister/Q [15]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X66Y125" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_14  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_14/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/XRegister/Q_14/IN ),
    .O(\Operands_Classification/XRegister/Q [14]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X66Y125" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_13  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_13/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/XRegister/Q_13/IN ),
    .O(\Operands_Classification/XRegister/Q [13]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X66Y125" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_12  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_12/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/XRegister/Q_12/IN ),
    .O(\Operands_Classification/XRegister/Q [12]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Operands_Classification/DMC/Q<29>/Operands_Classification/DMC/Q<29>_BMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [29]),
    .O(\Operands_Classification/DmC/Q<29>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X67Y122" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_29  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_29/CLK ),
    .I(\Operands_Classification/MDM [29]),
    .O(\Operands_Classification/DMC/Q [29]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X67Y122" ),
    .INIT ( 64'hFFF00F00FFF00F00 ))
  \Operands_Classification/Dir_M/Mmux_S221  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR3(\Operands_Classification/DYP/Q [29]),
    .ADR4(\Operands_Classification/XRegister/Q [29]),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [29])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X67Y122" ),
    .INIT ( 32'hFF0FF000 ))
  \Operands_Classification/Dir_m/Mmux_S221  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR3(\Operands_Classification/DYP/Q [29]),
    .ADR4(\Operands_Classification/XRegister/Q [29]),
    .O(\Operands_Classification/MDm [29])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y122" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_29  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_29/CLK ),
    .I(\Operands_Classification/MDm [29]),
    .O(\Operands_Classification/DmC/Q [29]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Fourth_Module/SgfRegister_F/Q<11>/Fourth_Module/SgfRegister_F/Q<11>_DMUX_Delay  (
    .I(\Fourth_Module/SgfRegister_F/Q [15]),
    .O(\Fourth_Module/SgfRegister_F/Q<15>_0 )
  );
  X_BUF   \Fourth_Module/SgfRegister_F/Q<11>/Fourth_Module/SgfRegister_F/Q<11>_CMUX_Delay  (
    .I(\Fourth_Module/SgfRegister_F/Q [14]),
    .O(\Fourth_Module/SgfRegister_F/Q<14>_0 )
  );
  X_BUF   \Fourth_Module/SgfRegister_F/Q<11>/Fourth_Module/SgfRegister_F/Q<11>_BMUX_Delay  (
    .I(\Fourth_Module/SgfRegister_F/Q [13]),
    .O(\Fourth_Module/SgfRegister_F/Q<13>_0 )
  );
  X_BUF   \Fourth_Module/SgfRegister_F/Q<11>/Fourth_Module/SgfRegister_F/Q<11>_AMUX_Delay  (
    .I(\Fourth_Module/SgfRegister_F/Q [12]),
    .O(\Fourth_Module/SgfRegister_F/Q<12>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X56Y118" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfRegister_F/Q_11  (
    .CE(load_8),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_11/CLK ),
    .I(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_11/IN ),
    .O(\Fourth_Module/SgfRegister_F/Q [11]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X56Y118" ),
    .INIT ( 32'hFF00FF00 ))
  \Fourth_Module/SgfShift/Q<15>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\Fourth_Module/SgfShift/Q [15]),
    .O(\Fourth_Module/SgfShift/Q<15>_rt_1942 )
  );
  X_FF #(
    .LOC ( "SLICE_X56Y118" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfRegister_F/Q_15  (
    .CE(load_8),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_15/CLK ),
    .I(\Fourth_Module/SgfShift/Q<15>_rt_1942 ),
    .O(\Fourth_Module/SgfRegister_F/Q [15]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X56Y118" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfRegister_F/Q_10  (
    .CE(load_8),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_10/CLK ),
    .I(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_10/IN ),
    .O(\Fourth_Module/SgfRegister_F/Q [10]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X56Y118" ),
    .INIT ( 32'hCCCCCCCC ))
  \Fourth_Module/SgfShift/Q<14>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\Fourth_Module/SgfShift/Q [14]),
    .O(\Fourth_Module/SgfShift/Q<14>_rt_1944 )
  );
  X_FF #(
    .LOC ( "SLICE_X56Y118" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfRegister_F/Q_14  (
    .CE(load_8),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_14/CLK ),
    .I(\Fourth_Module/SgfShift/Q<14>_rt_1944 ),
    .O(\Fourth_Module/SgfRegister_F/Q [14]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X56Y118" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfRegister_F/Q_9  (
    .CE(load_8),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_9/CLK ),
    .I(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_9/IN ),
    .O(\Fourth_Module/SgfRegister_F/Q [9]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X56Y118" ),
    .INIT ( 32'hFF00FF00 ))
  \Fourth_Module/SgfShift/Q<13>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\Fourth_Module/SgfShift/Q [13]),
    .O(\Fourth_Module/SgfShift/Q<13>_rt_1939 )
  );
  X_FF #(
    .LOC ( "SLICE_X56Y118" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfRegister_F/Q_13  (
    .CE(load_8),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_13/CLK ),
    .I(\Fourth_Module/SgfShift/Q<13>_rt_1939 ),
    .O(\Fourth_Module/SgfRegister_F/Q [13]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X56Y118" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfRegister_F/Q_8  (
    .CE(load_8),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_8/CLK ),
    .I(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_8/IN ),
    .O(\Fourth_Module/SgfRegister_F/Q [8]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X56Y118" ),
    .INIT ( 32'hCCCCCCCC ))
  \Fourth_Module/SgfShift/Q<12>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\Fourth_Module/SgfShift/Q [12]),
    .O(\Fourth_Module/SgfShift/Q<12>_rt_1956 )
  );
  X_FF #(
    .LOC ( "SLICE_X56Y118" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfRegister_F/Q_12  (
    .CE(load_8),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_12/CLK ),
    .I(\Fourth_Module/SgfShift/Q<12>_rt_1956 ),
    .O(\Fourth_Module/SgfRegister_F/Q [12]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X56Y122" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfRegister_F/Q_25  (
    .CE(load_8),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_25/CLK ),
    .I(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_25/IN ),
    .O(\Fourth_Module/SgfRegister_F/Q [25]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X56Y122" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfRegister_F/Q_24  (
    .CE(load_8),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_24/CLK ),
    .I(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_24/IN ),
    .O(\Fourth_Module/SgfRegister_F/Q [24]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X56Y123" ),
    .INIT ( 1'b0 ))
  \Sel_5_P_exp/Q_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_Sel_5_P_exp/Q_0/CLK ),
    .I(\Sel_5_P_exp/Q_0_rstpot_1983 ),
    .O(\Sel_5_P_exp/Q_0_3796 ),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y123" ),
    .INIT ( 64'hFFFFFF00FFFFFF00 ))
  \FS_Module/state_reg__n0117<10>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\FS_Module/state_reg_FSM_FFd28_3792 ),
    .ADR2(1'b1),
    .ADR4(\FS_Module/state_reg_FSM_FFd19_3754 ),
    .ADR5(1'b1),
    .O(load_8)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X56Y123" ),
    .INIT ( 32'hFFFFF0F0 ))
  \Sel_5_P_exp/Q_0_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\Sel_5_P_exp/Q_0_3796 ),
    .ADR4(\FS_Module/state_reg_FSM_FFd19_3754 ),
    .O(\Sel_5_P_exp/Q_0_rstpot_1983 )
  );
  X_BUF   \Fourth_Module/SgfRegister_F/Q<7>/Fourth_Module/SgfRegister_F/Q<7>_DMUX_Delay  (
    .I(\Fourth_Module/SgfRegister_F/Q [3]),
    .O(\Fourth_Module/SgfRegister_F/Q<3>_0 )
  );
  X_BUF   \Fourth_Module/SgfRegister_F/Q<7>/Fourth_Module/SgfRegister_F/Q<7>_CMUX_Delay  (
    .I(\Fourth_Module/SgfRegister_F/Q [2]),
    .O(\Fourth_Module/SgfRegister_F/Q<2>_0 )
  );
  X_BUF   \Fourth_Module/SgfRegister_F/Q<7>/Fourth_Module/SgfRegister_F/Q<7>_BMUX_Delay  (
    .I(\Fourth_Module/SgfRegister_F/Q [1]),
    .O(\Fourth_Module/SgfRegister_F/Q<1>_0 )
  );
  X_BUF   \Fourth_Module/SgfRegister_F/Q<7>/Fourth_Module/SgfRegister_F/Q<7>_AMUX_Delay  (
    .I(\Fourth_Module/SgfRegister_F/Q [0]),
    .O(\Fourth_Module/SgfRegister_F/Q<0>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X57Y120" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfRegister_F/Q_7  (
    .CE(load_8),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_7/CLK ),
    .I(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_7/IN ),
    .O(\Fourth_Module/SgfRegister_F/Q [7]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X57Y120" ),
    .INIT ( 32'hAAAAAAAA ))
  \Fourth_Module/SgfShift/Q<3>_rt  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\Fourth_Module/SgfShift/Q [3]),
    .O(\Fourth_Module/SgfShift/Q<3>_rt_1867 )
  );
  X_FF #(
    .LOC ( "SLICE_X57Y120" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfRegister_F/Q_3  (
    .CE(load_8),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_3/CLK ),
    .I(\Fourth_Module/SgfShift/Q<3>_rt_1867 ),
    .O(\Fourth_Module/SgfRegister_F/Q [3]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X57Y120" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfRegister_F/Q_6  (
    .CE(load_8),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_6/CLK ),
    .I(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_6/IN ),
    .O(\Fourth_Module/SgfRegister_F/Q [6]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X57Y120" ),
    .INIT ( 32'hAAAAAAAA ))
  \Fourth_Module/SgfShift/Q<2>_rt  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\Fourth_Module/SgfShift/Q [2]),
    .O(\Fourth_Module/SgfShift/Q<2>_rt_1869 )
  );
  X_FF #(
    .LOC ( "SLICE_X57Y120" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfRegister_F/Q_2  (
    .CE(load_8),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_2/CLK ),
    .I(\Fourth_Module/SgfShift/Q<2>_rt_1869 ),
    .O(\Fourth_Module/SgfRegister_F/Q [2]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X57Y120" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfRegister_F/Q_5  (
    .CE(load_8),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_5/CLK ),
    .I(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_5/IN ),
    .O(\Fourth_Module/SgfRegister_F/Q [5]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X57Y120" ),
    .INIT ( 32'hAAAAAAAA ))
  \Fourth_Module/SgfShift/Q<1>_rt  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\Fourth_Module/SgfShift/Q [1]),
    .O(\Fourth_Module/SgfShift/Q<1>_rt_1864 )
  );
  X_FF #(
    .LOC ( "SLICE_X57Y120" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfRegister_F/Q_1  (
    .CE(load_8),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_1/CLK ),
    .I(\Fourth_Module/SgfShift/Q<1>_rt_1864 ),
    .O(\Fourth_Module/SgfRegister_F/Q [1]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X57Y120" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfRegister_F/Q_4  (
    .CE(load_8),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_4/CLK ),
    .I(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_4/IN ),
    .O(\Fourth_Module/SgfRegister_F/Q [4]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X57Y120" ),
    .INIT ( 32'hCCCCCCCC ))
  \Fourth_Module/SgfShift/Q<0>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\Fourth_Module/SgfShift/Q [0]),
    .O(\Fourth_Module/SgfShift/Q<0>_rt_1881 )
  );
  X_FF #(
    .LOC ( "SLICE_X57Y120" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfRegister_F/Q_0  (
    .CE(load_8),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_0/CLK ),
    .I(\Fourth_Module/SgfShift/Q<0>_rt_1881 ),
    .O(\Fourth_Module/SgfRegister_F/Q [0]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X57Y133" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd25  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd25/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd25/IN ),
    .O(\FS_Module/state_reg_FSM_FFd25_3759 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_BUF   \Update_Exponent_First_Time/Exp_F_ieee/Q<7>/Update_Exponent_First_Time/Exp_F_ieee/Q<7>_CMUX_Delay  (
    .I(\Update_Exponent_First_Time/exp [3]),
    .O(\Update_Exponent_First_Time/exp<3>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X57Y131" ),
    .INIT ( 1'b0 ))
  \Update_Exponent_First_Time/Exp_F_ieee/Q_7  (
    .CE(\FS_Module/state_reg_FSM_FFd28_3792 ),
    .CLK(\NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_7/CLK ),
    .I(\NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_7/IN ),
    .O(\Update_Exponent_First_Time/Exp_F_ieee/Q [7]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X57Y131" ),
    .INIT ( 1'b0 ))
  \Update_Exponent_First_Time/Exp_F_ieee/Q_3  (
    .CE(\FS_Module/state_reg_FSM_FFd28_3792 ),
    .CLK(\NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_3/CLK ),
    .I(\Update_Exponent_First_Time/exp [3]),
    .O(\Update_Exponent_First_Time/Exp_F_ieee/Q [3]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X57Y131" ),
    .INIT ( 64'hCCFFCC00CCFFCC00 ))
  \Update_Exponent_First_Time/exp<7>1  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(\Sel_5_P_exp/Q_0_3796 ),
    .ADR4(\Operands_Classification/DMC/Q [30]),
    .ADR1(\Update_Exponent_First_Time/UExp/Q [7]),
    .ADR5(1'b1),
    .O(\Update_Exponent_First_Time/exp [7])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X57Y131" ),
    .INIT ( 32'hAAF0AAF0 ))
  \Update_Exponent_First_Time/exp<3>1  (
    .ADR2(\Operands_Classification/DMC/Q [26]),
    .ADR0(\Update_Exponent_First_Time/UExp/Q<3>_0 ),
    .ADR3(\Sel_5_P_exp/Q_0_3796 ),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .O(\Update_Exponent_First_Time/exp [3])
  );
  X_FF #(
    .LOC ( "SLICE_X56Y132" ),
    .INIT ( 1'b1 ))
  \FS_Module/state_reg_FSM_FFd49  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd49/CLK ),
    .I(\FS_Module/state_reg_FSM_FFd49-In ),
    .O(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(rst_IBUF_3755),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y132" ),
    .INIT ( 64'hAAEEAAEE00CC00CC ))
  \FS_Module/state_reg_FSM_FFd49-In1  (
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(beg_FSM_IBUF_4327),
    .ADR1(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .ADR0(\FS_Module/state_reg_FSM_FFd43_3787 ),
    .ADR5(rst_FSM_IBUF_3786),
    .O(\FS_Module/state_reg_FSM_FFd49-In )
  );
  X_FF #(
    .LOC ( "SLICE_X56Y132" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd48  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd48/CLK ),
    .I(\FS_Module/state_reg_FSM_FFd48-In ),
    .O(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y132" ),
    .INIT ( 64'hCC00CC00CC00CC00 ))
  \FS_Module/state_reg_FSM_FFd48-In1  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(beg_FSM_IBUF_4327),
    .ADR1(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .O(\FS_Module/state_reg_FSM_FFd48-In )
  );
  X_FF #(
    .LOC ( "SLICE_X57Y123" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfRegister_F/Q_23  (
    .CE(load_8),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_23/CLK ),
    .I(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_23/IN ),
    .O(\Fourth_Module/SgfRegister_F/Q [23]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X57Y123" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfRegister_F/Q_22  (
    .CE(load_8),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_22/CLK ),
    .I(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_22/IN ),
    .O(\Fourth_Module/SgfRegister_F/Q [22]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X57Y123" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfRegister_F/Q_21  (
    .CE(load_8),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_21/CLK ),
    .I(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_21/IN ),
    .O(\Fourth_Module/SgfRegister_F/Q [21]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X57Y123" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfRegister_F/Q_20  (
    .CE(load_8),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_20/CLK ),
    .I(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_20/IN ),
    .O(\Fourth_Module/SgfRegister_F/Q [20]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X56Y121" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfRegister_F/Q_19  (
    .CE(load_8),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_19/CLK ),
    .I(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_19/IN ),
    .O(\Fourth_Module/SgfRegister_F/Q [19]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X56Y121" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfRegister_F/Q_18  (
    .CE(load_8),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_18/CLK ),
    .I(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_18/IN ),
    .O(\Fourth_Module/SgfRegister_F/Q [18]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X56Y121" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfRegister_F/Q_17  (
    .CE(load_8),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_17/CLK ),
    .I(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_17/IN ),
    .O(\Fourth_Module/SgfRegister_F/Q [17]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X56Y121" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfRegister_F/Q_16  (
    .CE(load_8),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_16/CLK ),
    .I(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_16/IN ),
    .O(\Fourth_Module/SgfRegister_F/Q [16]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Update_Exponent_First_Time/Exp_F_ieee/Q<6>/Update_Exponent_First_Time/Exp_F_ieee/Q<6>_CMUX_Delay  (
    .I(\Update_Exponent_First_Time/exp [2]),
    .O(\Update_Exponent_First_Time/exp<2>_0 )
  );
  X_BUF   \Update_Exponent_First_Time/Exp_F_ieee/Q<6>/Update_Exponent_First_Time/Exp_F_ieee/Q<6>_BMUX_Delay  (
    .I(\Update_Exponent_First_Time/exp<4>_pack_2 ),
    .O(\Update_Exponent_First_Time/exp [4])
  );
  X_FF #(
    .LOC ( "SLICE_X57Y132" ),
    .INIT ( 1'b0 ))
  \Update_Exponent_First_Time/Exp_F_ieee/Q_6  (
    .CE(\FS_Module/state_reg_FSM_FFd28_3792 ),
    .CLK(\NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_6/CLK ),
    .I(\Update_Exponent_First_Time/exp [6]),
    .O(\Update_Exponent_First_Time/Exp_F_ieee/Q [6]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X57Y132" ),
    .INIT ( 64'hAAFFAA00AAFFAA00 ))
  \Update_Exponent_First_Time/exp<6>1  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR3(\Sel_5_P_exp/Q_0_3796 ),
    .ADR4(\Operands_Classification/DMC/Q [29]),
    .ADR0(\Update_Exponent_First_Time/UExp/Q [6]),
    .ADR5(1'b1),
    .O(\Update_Exponent_First_Time/exp [6])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X57Y132" ),
    .INIT ( 32'hCCF0CCF0 ))
  \Update_Exponent_First_Time/exp<2>1  (
    .ADR2(\Operands_Classification/DMC/Q [25]),
    .ADR1(\Update_Exponent_First_Time/UExp/Q [2]),
    .ADR3(\Sel_5_P_exp/Q_0_3796 ),
    .ADR0(1'b1),
    .ADR4(1'b1),
    .O(\Update_Exponent_First_Time/exp [2])
  );
  X_FF #(
    .LOC ( "SLICE_X57Y132" ),
    .INIT ( 1'b0 ))
  \Update_Exponent_First_Time/Exp_F_ieee/Q_5  (
    .CE(\FS_Module/state_reg_FSM_FFd28_3792 ),
    .CLK(\NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_5/CLK ),
    .I(\Update_Exponent_First_Time/exp [5]),
    .O(\Update_Exponent_First_Time/Exp_F_ieee/Q [5]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X57Y132" ),
    .INIT ( 64'hAAFFAA00AAFFAA00 ))
  \Update_Exponent_First_Time/exp<5>1  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR3(\Sel_5_P_exp/Q_0_3796 ),
    .ADR4(\Operands_Classification/DMC/Q [28]),
    .ADR0(\Update_Exponent_First_Time/UExp/Q [5]),
    .ADR5(1'b1),
    .O(\Update_Exponent_First_Time/exp [5])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X57Y132" ),
    .INIT ( 32'hCCF0CCF0 ))
  \Update_Exponent_First_Time/exp<4>1  (
    .ADR2(\Operands_Classification/DMC/Q [27]),
    .ADR1(\Update_Exponent_First_Time/UExp/Q [4]),
    .ADR3(\Sel_5_P_exp/Q_0_3796 ),
    .ADR0(1'b1),
    .ADR4(1'b1),
    .O(\Update_Exponent_First_Time/exp<4>_pack_2 )
  );
  X_FF #(
    .LOC ( "SLICE_X57Y132" ),
    .INIT ( 1'b0 ))
  \Update_Exponent_First_Time/Exp_F_ieee/Q_4  (
    .CE(\FS_Module/state_reg_FSM_FFd28_3792 ),
    .CLK(\NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_4/CLK ),
    .I(\NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_4/IN ),
    .O(\Update_Exponent_First_Time/Exp_F_ieee/Q [4]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Fourth_Module/SgfShift/Q<5>/Fourth_Module/SgfShift/Q<5>_CMUX_Delay  (
    .I(\Fourth_Module/Sgf_RM<5>_pack_7 ),
    .O(\Fourth_Module/Sgf_RM [5])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y121" ),
    .INIT ( 64'hCFC0CFC0CFC0CFC0 ))
  \Fourth_Module/Dir_Sgf/Mmux_S241  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(\Sel_5_P_exp/Q_0_3796 ),
    .ADR3(\Add_Sub_Significands/R_Sgf/Q [6]),
    .ADR1(\Fourth_Module/SgfShift/Q [6]),
    .ADR5(1'b1),
    .O(\Fourth_Module/Sgf_RM [6])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X60Y121" ),
    .INIT ( 32'hAFAFA0A0 ))
  \Fourth_Module/Dir_Sgf/Mmux_S231  (
    .ADR4(\Add_Sub_Significands/R_Sgf/Q [5]),
    .ADR0(\Fourth_Module/SgfShift/Q [5]),
    .ADR2(\Sel_5_P_exp/Q_0_3796 ),
    .ADR3(1'b1),
    .ADR1(1'b1),
    .O(\Fourth_Module/Sgf_RM<5>_pack_7 )
  );
  X_FF #(
    .LOC ( "SLICE_X60Y121" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfShift/Q_5  (
    .CE(\Fourth_Module/SgfShift/_n0016_inv_0 ),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfShift/Q_5/CLK ),
    .I(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<5> ),
    .O(\Fourth_Module/SgfShift/Q [5]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y121" ),
    .INIT ( 64'hFFF50F05FAF00A00 ))
  \Fourth_Module/SgfShift/Mmux_Q[26]_D[26]_mux_2_OUT231  (
    .ADR1(1'b1),
    .ADR2(\FS_Module/state_reg_FSM_FFd33_3800 ),
    .ADR0(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .ADR3(\Fourth_Module/Sgf_RM [4]),
    .ADR5(\Fourth_Module/Sgf_RM [6]),
    .ADR4(\Fourth_Module/Sgf_RM [5]),
    .O(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<5> )
  );
  X_FF #(
    .LOC ( "SLICE_X60Y121" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfShift/Q_6  (
    .CE(\Fourth_Module/SgfShift/_n0016_inv_0 ),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfShift/Q_6/CLK ),
    .I(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<6> ),
    .O(\Fourth_Module/SgfShift/Q [6]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y121" ),
    .INIT ( 64'hFF33CF03FC30CC00 ))
  \Fourth_Module/SgfShift/Mmux_Q[26]_D[26]_mux_2_OUT241  (
    .ADR0(1'b1),
    .ADR1(\FS_Module/state_reg_FSM_FFd33_3800 ),
    .ADR2(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .ADR4(\Fourth_Module/Sgf_RM [5]),
    .ADR5(\Fourth_Module/Sgf_RM [7]),
    .ADR3(\Fourth_Module/Sgf_RM [6]),
    .O(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<6> )
  );
  X_FF #(
    .LOC ( "SLICE_X56Y133" ),
    .INIT ( 1'b0 ))
  \Update_Exponent_First_Time/RExp/Q_7  (
    .CE(\FS_Module/state_reg_FSM_FFd29_3803 ),
    .CLK(\NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_7/CLK ),
    .I(\NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_7/IN ),
    .O(\Update_Exponent_First_Time/RExp/Q [7]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X56Y133" ),
    .INIT ( 1'b0 ))
  \Update_Exponent_First_Time/RExp/Q_6  (
    .CE(\FS_Module/state_reg_FSM_FFd29_3803 ),
    .CLK(\NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_6/CLK ),
    .I(\NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_6/IN ),
    .O(\Update_Exponent_First_Time/RExp/Q [6]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X56Y133" ),
    .INIT ( 1'b0 ))
  \Update_Exponent_First_Time/RExp/Q_5  (
    .CE(\FS_Module/state_reg_FSM_FFd29_3803 ),
    .CLK(\NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_5/CLK ),
    .I(\NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_5/IN ),
    .O(\Update_Exponent_First_Time/RExp/Q [5]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X56Y133" ),
    .INIT ( 1'b0 ))
  \Update_Exponent_First_Time/RExp/Q_4  (
    .CE(\FS_Module/state_reg_FSM_FFd29_3803 ),
    .CLK(\NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_4/CLK ),
    .I(\NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_4/IN ),
    .O(\Update_Exponent_First_Time/RExp/Q [4]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X56Y134" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd26  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd26/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd26/IN ),
    .O(\FS_Module/state_reg_FSM_FFd25-In ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_BUF   \Fourth_Module/SgfShift/Q<24>/Fourth_Module/SgfShift/Q<24>_CMUX_Delay  (
    .I(\Fourth_Module/Sgf_RM<24>_pack_7 ),
    .O(\Fourth_Module/Sgf_RM [24])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y127" ),
    .INIT ( 64'hCFCFC0C0CFCFC0C0 ))
  \Fourth_Module/Dir_Sgf/Mmux_S181  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(\Sel_5_P_exp/Q_0_3796 ),
    .ADR4(\Add_Sub_Significands/R_Sgf/Q [25]),
    .ADR1(\Fourth_Module/SgfShift/Q [25]),
    .ADR5(1'b1),
    .O(\Fourth_Module/Sgf_RM [25])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X58Y127" ),
    .INIT ( 32'hAFA0AFA0 ))
  \Fourth_Module/Dir_Sgf/Mmux_S171  (
    .ADR3(\Add_Sub_Significands/R_Sgf/Q [24]),
    .ADR0(\Fourth_Module/SgfShift/Q [24]),
    .ADR2(\Sel_5_P_exp/Q_0_3796 ),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .O(\Fourth_Module/Sgf_RM<24>_pack_7 )
  );
  X_FF #(
    .LOC ( "SLICE_X58Y127" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfShift/Q_24  (
    .CE(\Fourth_Module/SgfShift/_n0016_inv_0 ),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfShift/Q_24/CLK ),
    .I(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<24> ),
    .O(\Fourth_Module/SgfShift/Q [24]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y127" ),
    .INIT ( 64'hFFF50F05FAF00A00 ))
  \Fourth_Module/SgfShift/Mmux_Q[26]_D[26]_mux_2_OUT171  (
    .ADR1(1'b1),
    .ADR2(\FS_Module/state_reg_FSM_FFd33_3800 ),
    .ADR0(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .ADR3(\Fourth_Module/Sgf_RM [23]),
    .ADR5(\Fourth_Module/Sgf_RM [25]),
    .ADR4(\Fourth_Module/Sgf_RM [24]),
    .O(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<24> )
  );
  X_FF #(
    .LOC ( "SLICE_X58Y127" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfShift/Q_25  (
    .CE(\Fourth_Module/SgfShift/_n0016_inv_0 ),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfShift/Q_25/CLK ),
    .I(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<25> ),
    .O(\Fourth_Module/SgfShift/Q [25]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y127" ),
    .INIT ( 64'hFFFAFF5000FA0050 ))
  \Fourth_Module/SgfShift/Mmux_Q[26]_D[26]_mux_2_OUT181  (
    .ADR1(1'b1),
    .ADR3(\FS_Module/state_reg_FSM_FFd33_3800 ),
    .ADR0(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .ADR4(\Fourth_Module/Sgf_RM [24]),
    .ADR2(\Fourth_Module/Sgf_RM [26]),
    .ADR5(\Fourth_Module/Sgf_RM [25]),
    .O(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<25> )
  );
  X_BUF   \Fourth_Module/SgfShift/Q<20>/Fourth_Module/SgfShift/Q<20>_DMUX_Delay  (
    .I(\Fourth_Module/Sgf_RM<20>_pack_7 ),
    .O(\Fourth_Module/Sgf_RM [20])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y125" ),
    .INIT ( 64'hAAAAFF00AAAAFF00 ))
  \Fourth_Module/Dir_Sgf/Mmux_S141  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR4(\Sel_5_P_exp/Q_0_3796 ),
    .ADR3(\Add_Sub_Significands/R_Sgf/Q [21]),
    .ADR0(\Fourth_Module/SgfShift/Q [21]),
    .ADR5(1'b1),
    .O(\Fourth_Module/Sgf_RM [21])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X59Y125" ),
    .INIT ( 32'hCCCCF0F0 ))
  \Fourth_Module/Dir_Sgf/Mmux_S131  (
    .ADR2(\Add_Sub_Significands/R_Sgf/Q [20]),
    .ADR1(\Fourth_Module/SgfShift/Q [20]),
    .ADR4(\Sel_5_P_exp/Q_0_3796 ),
    .ADR3(1'b1),
    .ADR0(1'b1),
    .O(\Fourth_Module/Sgf_RM<20>_pack_7 )
  );
  X_FF #(
    .LOC ( "SLICE_X59Y125" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfShift/Q_20  (
    .CE(\Fourth_Module/SgfShift/_n0016_inv_0 ),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfShift/Q_20/CLK ),
    .I(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<20> ),
    .O(\Fourth_Module/SgfShift/Q [20]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y125" ),
    .INIT ( 64'hFCFFFCCC30333000 ))
  \Fourth_Module/SgfShift/Mmux_Q[26]_D[26]_mux_2_OUT131  (
    .ADR0(1'b1),
    .ADR1(\FS_Module/state_reg_FSM_FFd33_3800 ),
    .ADR3(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .ADR2(\Fourth_Module/Sgf_RM [19]),
    .ADR4(\Fourth_Module/Sgf_RM [21]),
    .ADR5(\Fourth_Module/Sgf_RM [20]),
    .O(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<20> )
  );
  X_FF #(
    .LOC ( "SLICE_X59Y125" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfShift/Q_21  (
    .CE(\Fourth_Module/SgfShift/_n0016_inv_0 ),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfShift/Q_21/CLK ),
    .I(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<21> ),
    .O(\Fourth_Module/SgfShift/Q [21]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y125" ),
    .INIT ( 64'hFFF5FAF00F050A00 ))
  \Fourth_Module/SgfShift/Mmux_Q[26]_D[26]_mux_2_OUT141  (
    .ADR1(1'b1),
    .ADR2(\FS_Module/state_reg_FSM_FFd33_3800 ),
    .ADR0(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .ADR3(\Fourth_Module/Sgf_RM [20]),
    .ADR4(\Fourth_Module/Sgf_RM [22]),
    .ADR5(\Fourth_Module/Sgf_RM [21]),
    .O(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<21> )
  );
  X_BUF   \FS_Module/state_reg_FSM_FFd46/FS_Module/state_reg_FSM_FFd46_BMUX_Delay  (
    .I(N7_pack_3),
    .O(N7)
  );
  X_BUF   \FS_Module/state_reg_FSM_FFd46/FS_Module/state_reg_FSM_FFd46_AMUX_Delay  (
    .I(\FS_Module/state_reg_FSM_FFd46-In_pack_1 ),
    .O(\FS_Module/state_reg_FSM_FFd46-In )
  );
  X_FF #(
    .LOC ( "SLICE_X59Y128" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd46  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd46/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd46/IN ),
    .O(\FS_Module/state_reg_FSM_FFd46_4189 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X59Y128" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd45  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd45/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd45/IN ),
    .O(\FS_Module/state_reg_FSM_FFd45_4445 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X59Y128" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd44  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd44/CLK ),
    .I(\FS_Module/state_reg_FSM_FFd44-In ),
    .O(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y128" ),
    .INIT ( 64'h0000FF000000FF00 ))
  \FS_Module/state_reg_FSM_FFd44-In1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\FS_Module/state_reg_FSM_FFd45_4445 ),
    .ADR4(\Zero_Except_Module/Zero_Info_Register/Q_0_3789 ),
    .ADR5(1'b1),
    .O(\FS_Module/state_reg_FSM_FFd44-In )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X59Y128" ),
    .INIT ( 32'hFF000000 ))
  \FS_Module/state_reg_FSM_FFd43-In_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\FS_Module/state_reg_FSM_FFd45_4445 ),
    .ADR4(\Zero_Except_Module/Zero_Info_Register/Q_0_3789 ),
    .O(N7_pack_3)
  );
  X_FF #(
    .LOC ( "SLICE_X59Y128" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd43  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd43/CLK ),
    .I(\FS_Module/state_reg_FSM_FFd43-In_2046 ),
    .O(\FS_Module/state_reg_FSM_FFd43_3787 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y128" ),
    .INIT ( 64'hFFFFFFFFFFFFFFF2 ))
  \FS_Module/state_reg_FSM_FFd43-In  (
    .ADR3(\FS_Module/state_reg_FSM_FFd5_3784 ),
    .ADR2(\FS_Module/state_reg_FSM_FFd4_3785 ),
    .ADR1(rst_FSM_IBUF_3786),
    .ADR0(\FS_Module/state_reg_FSM_FFd43_3787 ),
    .ADR5(\FS_Module/state_reg_FSM_FFd1_3788 ),
    .ADR4(N7),
    .O(\FS_Module/state_reg_FSM_FFd43-In_2046 )
  );
  X_FF #(
    .LOC ( "SLICE_X59Y128" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd47  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd47/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd47/IN ),
    .O(\FS_Module/state_reg_FSM_FFd46-In_pack_1 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_BUF   \Fourth_Module/SgfShift/Q<7>/Fourth_Module/SgfShift/Q<7>_CMUX_Delay  (
    .I(\Fourth_Module/Sgf_RM<7>_pack_7 ),
    .O(\Fourth_Module/Sgf_RM [7])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y122" ),
    .INIT ( 64'hCCFFCC00CCFFCC00 ))
  \Fourth_Module/Dir_Sgf/Mmux_S261  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(\Sel_5_P_exp/Q_0_3796 ),
    .ADR4(\Add_Sub_Significands/R_Sgf/Q [8]),
    .ADR1(\Fourth_Module/SgfShift/Q [8]),
    .ADR5(1'b1),
    .O(\Fourth_Module/Sgf_RM [8])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X58Y122" ),
    .INIT ( 32'hAAF0AAF0 ))
  \Fourth_Module/Dir_Sgf/Mmux_S251  (
    .ADR2(\Add_Sub_Significands/R_Sgf/Q [7]),
    .ADR0(\Fourth_Module/SgfShift/Q [7]),
    .ADR3(\Sel_5_P_exp/Q_0_3796 ),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .O(\Fourth_Module/Sgf_RM<7>_pack_7 )
  );
  X_FF #(
    .LOC ( "SLICE_X58Y122" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfShift/Q_7  (
    .CE(\Fourth_Module/SgfShift/_n0016_inv_0 ),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfShift/Q_7/CLK ),
    .I(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<7> ),
    .O(\Fourth_Module/SgfShift/Q [7]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y122" ),
    .INIT ( 64'hFFF50F05FAF00A00 ))
  \Fourth_Module/SgfShift/Mmux_Q[26]_D[26]_mux_2_OUT251  (
    .ADR1(1'b1),
    .ADR2(\FS_Module/state_reg_FSM_FFd33_3800 ),
    .ADR0(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .ADR3(\Fourth_Module/Sgf_RM [6]),
    .ADR5(\Fourth_Module/Sgf_RM [8]),
    .ADR4(\Fourth_Module/Sgf_RM [7]),
    .O(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<7> )
  );
  X_FF #(
    .LOC ( "SLICE_X58Y122" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfShift/Q_8  (
    .CE(\Fourth_Module/SgfShift/_n0016_inv_0 ),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfShift/Q_8/CLK ),
    .I(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<8> ),
    .O(\Fourth_Module/SgfShift/Q [8]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y122" ),
    .INIT ( 64'hFFFAFF5000FA0050 ))
  \Fourth_Module/SgfShift/Mmux_Q[26]_D[26]_mux_2_OUT261  (
    .ADR1(1'b1),
    .ADR3(\FS_Module/state_reg_FSM_FFd33_3800 ),
    .ADR0(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .ADR4(\Fourth_Module/Sgf_RM [7]),
    .ADR2(\Fourth_Module/Sgf_RM [9]),
    .ADR5(\Fourth_Module/Sgf_RM [8]),
    .O(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<8> )
  );
  X_BUF   \Fourth_Module/SgfShift/Q<16>/Fourth_Module/SgfShift/Q<16>_DMUX_Delay  (
    .I(\Fourth_Module/Sgf_RM<16>_pack_7 ),
    .O(\Fourth_Module/Sgf_RM [16])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y125" ),
    .INIT ( 64'hAAAAF0F0AAAAF0F0 ))
  \Fourth_Module/Dir_Sgf/Mmux_S91  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR4(\Sel_5_P_exp/Q_0_3796 ),
    .ADR2(\Add_Sub_Significands/R_Sgf/Q [17]),
    .ADR0(\Fourth_Module/SgfShift/Q [17]),
    .ADR5(1'b1),
    .O(\Fourth_Module/Sgf_RM [17])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X58Y125" ),
    .INIT ( 32'hCCCCFF00 ))
  \Fourth_Module/Dir_Sgf/Mmux_S81  (
    .ADR3(\Add_Sub_Significands/R_Sgf/Q [16]),
    .ADR1(\Fourth_Module/SgfShift/Q [16]),
    .ADR4(\Sel_5_P_exp/Q_0_3796 ),
    .ADR0(1'b1),
    .ADR2(1'b1),
    .O(\Fourth_Module/Sgf_RM<16>_pack_7 )
  );
  X_FF #(
    .LOC ( "SLICE_X58Y125" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfShift/Q_16  (
    .CE(\Fourth_Module/SgfShift/_n0016_inv_0 ),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfShift/Q_16/CLK ),
    .I(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<16> ),
    .O(\Fourth_Module/SgfShift/Q [16]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y125" ),
    .INIT ( 64'hFFCFFCCC33033000 ))
  \Fourth_Module/SgfShift/Mmux_Q[26]_D[26]_mux_2_OUT81  (
    .ADR0(1'b1),
    .ADR1(\FS_Module/state_reg_FSM_FFd33_3800 ),
    .ADR2(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .ADR3(\Fourth_Module/Sgf_RM [15]),
    .ADR4(\Fourth_Module/Sgf_RM [17]),
    .ADR5(\Fourth_Module/Sgf_RM [16]),
    .O(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<16> )
  );
  X_FF #(
    .LOC ( "SLICE_X58Y125" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfShift/Q_17  (
    .CE(\Fourth_Module/SgfShift/_n0016_inv_0 ),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfShift/Q_17/CLK ),
    .I(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<17> ),
    .O(\Fourth_Module/SgfShift/Q [17]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y125" ),
    .INIT ( 64'hFFF3FCF00F030C00 ))
  \Fourth_Module/SgfShift/Mmux_Q[26]_D[26]_mux_2_OUT91  (
    .ADR0(1'b1),
    .ADR2(\FS_Module/state_reg_FSM_FFd33_3800 ),
    .ADR1(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .ADR3(\Fourth_Module/Sgf_RM [16]),
    .ADR4(\Fourth_Module/Sgf_RM [18]),
    .ADR5(\Fourth_Module/Sgf_RM [17]),
    .O(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<17> )
  );
  X_BUF   \Fourth_Module/SgfShift/Q<3>/Fourth_Module/SgfShift/Q<3>_CMUX_Delay  (
    .I(\Fourth_Module/Sgf_RM<3>_pack_7 ),
    .O(\Fourth_Module/Sgf_RM [3])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y121" ),
    .INIT ( 64'hCCFFCC00CCFFCC00 ))
  \Fourth_Module/Dir_Sgf/Mmux_S221  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(\Sel_5_P_exp/Q_0_3796 ),
    .ADR4(\Add_Sub_Significands/R_Sgf/Q [4]),
    .ADR1(\Fourth_Module/SgfShift/Q [4]),
    .ADR5(1'b1),
    .O(\Fourth_Module/Sgf_RM [4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X58Y121" ),
    .INIT ( 32'hAAF0AAF0 ))
  \Fourth_Module/Dir_Sgf/Mmux_S211  (
    .ADR2(\Add_Sub_Significands/R_Sgf/Q [3]),
    .ADR0(\Fourth_Module/SgfShift/Q [3]),
    .ADR3(\Sel_5_P_exp/Q_0_3796 ),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .O(\Fourth_Module/Sgf_RM<3>_pack_7 )
  );
  X_FF #(
    .LOC ( "SLICE_X58Y121" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfShift/Q_3  (
    .CE(\Fourth_Module/SgfShift/_n0016_inv_0 ),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfShift/Q_3/CLK ),
    .I(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<3> ),
    .O(\Fourth_Module/SgfShift/Q [3]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y121" ),
    .INIT ( 64'hFFCF3303FCCC3000 ))
  \Fourth_Module/SgfShift/Mmux_Q[26]_D[26]_mux_2_OUT211  (
    .ADR0(1'b1),
    .ADR1(\FS_Module/state_reg_FSM_FFd33_3800 ),
    .ADR2(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .ADR3(\Fourth_Module/Sgf_RM [2]),
    .ADR5(\Fourth_Module/Sgf_RM [4]),
    .ADR4(\Fourth_Module/Sgf_RM [3]),
    .O(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<3> )
  );
  X_FF #(
    .LOC ( "SLICE_X58Y121" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfShift/Q_4  (
    .CE(\Fourth_Module/SgfShift/_n0016_inv_0 ),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfShift/Q_4/CLK ),
    .I(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<4> ),
    .O(\Fourth_Module/SgfShift/Q [4]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X58Y121" ),
    .INIT ( 64'hFF0FFA0AF505F000 ))
  \Fourth_Module/SgfShift/Mmux_Q[26]_D[26]_mux_2_OUT221  (
    .ADR1(1'b1),
    .ADR2(\FS_Module/state_reg_FSM_FFd33_3800 ),
    .ADR0(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .ADR5(\Fourth_Module/Sgf_RM [3]),
    .ADR4(\Fourth_Module/Sgf_RM [5]),
    .ADR3(\Fourth_Module/Sgf_RM [4]),
    .O(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<4> )
  );
  X_FF #(
    .LOC ( "SLICE_X59Y127" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd35  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd35/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd35/IN ),
    .O(\FS_Module/state_reg_FSM_FFd35_4201 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X59Y127" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd36  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd36/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd36/IN ),
    .O(\FS_Module/state_reg_FSM_FFd35-In ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X58Y128" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_31  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_31/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/XRegister/Q_31/IN ),
    .O(\Operands_Classification/XRegister/Q [31]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X58Y128" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_30  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_30/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/XRegister/Q_30/IN ),
    .O(\Operands_Classification/XRegister/Q [30]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X58Y128" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_29  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_29/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/XRegister/Q_29/IN ),
    .O(\Operands_Classification/XRegister/Q [29]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X58Y128" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_28  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_28/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/XRegister/Q_28/IN ),
    .O(\Operands_Classification/XRegister/Q [28]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Fourth_Module/SgfShift/Q<1>/Fourth_Module/SgfShift/Q<1>_CMUX_Delay  (
    .I(\Fourth_Module/Sgf_RM<1>_pack_7 ),
    .O(\Fourth_Module/Sgf_RM [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y120" ),
    .INIT ( 64'hCCFFCC00CCFFCC00 ))
  \Fourth_Module/Dir_Sgf/Mmux_S201  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(\Sel_5_P_exp/Q_0_3796 ),
    .ADR4(\Add_Sub_Significands/R_Sgf/Q [2]),
    .ADR1(\Fourth_Module/SgfShift/Q [2]),
    .ADR5(1'b1),
    .O(\Fourth_Module/Sgf_RM [2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X61Y120" ),
    .INIT ( 32'hAAF0AAF0 ))
  \Fourth_Module/Dir_Sgf/Mmux_S121  (
    .ADR2(\Add_Sub_Significands/R_Sgf/Q [1]),
    .ADR0(\Fourth_Module/SgfShift/Q [1]),
    .ADR3(\Sel_5_P_exp/Q_0_3796 ),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .O(\Fourth_Module/Sgf_RM<1>_pack_7 )
  );
  X_FF #(
    .LOC ( "SLICE_X61Y120" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfShift/Q_1  (
    .CE(\Fourth_Module/SgfShift/_n0016_inv_0 ),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfShift/Q_1/CLK ),
    .I(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<1> ),
    .O(\Fourth_Module/SgfShift/Q [1]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y120" ),
    .INIT ( 64'hFFFA00FAFF500050 ))
  \Fourth_Module/SgfShift/Mmux_Q[26]_D[26]_mux_2_OUT121  (
    .ADR1(1'b1),
    .ADR3(\FS_Module/state_reg_FSM_FFd33_3800 ),
    .ADR0(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .ADR5(\Fourth_Module/Sgf_RM [0]),
    .ADR2(\Fourth_Module/Sgf_RM [2]),
    .ADR4(\Fourth_Module/Sgf_RM [1]),
    .O(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<1> )
  );
  X_FF #(
    .LOC ( "SLICE_X61Y120" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfShift/Q_2  (
    .CE(\Fourth_Module/SgfShift/_n0016_inv_0 ),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfShift/Q_2/CLK ),
    .I(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<2> ),
    .O(\Fourth_Module/SgfShift/Q [2]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y120" ),
    .INIT ( 64'hF0FFF0AAF055F000 ))
  \Fourth_Module/SgfShift/Mmux_Q[26]_D[26]_mux_2_OUT201  (
    .ADR1(1'b1),
    .ADR3(\FS_Module/state_reg_FSM_FFd33_3800 ),
    .ADR0(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .ADR5(\Fourth_Module/Sgf_RM [1]),
    .ADR4(\Fourth_Module/Sgf_RM [3]),
    .ADR2(\Fourth_Module/Sgf_RM [2]),
    .O(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<2> )
  );
  X_BUF   \Fourth_Module/SgfShift/Q<22>/Fourth_Module/SgfShift/Q<22>_CMUX_Delay  (
    .I(\Fourth_Module/Sgf_RM<22>_pack_7 ),
    .O(\Fourth_Module/Sgf_RM [22])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y126" ),
    .INIT ( 64'hCFCFC0C0CFCFC0C0 ))
  \Fourth_Module/Dir_Sgf/Mmux_S161  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(\Sel_5_P_exp/Q_0_3796 ),
    .ADR4(\Add_Sub_Significands/R_Sgf/Q [23]),
    .ADR1(\Fourth_Module/SgfShift/Q [23]),
    .ADR5(1'b1),
    .O(\Fourth_Module/Sgf_RM [23])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X60Y126" ),
    .INIT ( 32'hAFA0AFA0 ))
  \Fourth_Module/Dir_Sgf/Mmux_S151  (
    .ADR3(\Add_Sub_Significands/R_Sgf/Q [22]),
    .ADR0(\Fourth_Module/SgfShift/Q [22]),
    .ADR2(\Sel_5_P_exp/Q_0_3796 ),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .O(\Fourth_Module/Sgf_RM<22>_pack_7 )
  );
  X_FF #(
    .LOC ( "SLICE_X60Y126" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfShift/Q_22  (
    .CE(\Fourth_Module/SgfShift/_n0016_inv_0 ),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfShift/Q_22/CLK ),
    .I(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<22> ),
    .O(\Fourth_Module/SgfShift/Q [22]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y126" ),
    .INIT ( 64'hFCFF3033FCCC3000 ))
  \Fourth_Module/SgfShift/Mmux_Q[26]_D[26]_mux_2_OUT151  (
    .ADR0(1'b1),
    .ADR1(\FS_Module/state_reg_FSM_FFd33_3800 ),
    .ADR3(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .ADR2(\Fourth_Module/Sgf_RM [21]),
    .ADR5(\Fourth_Module/Sgf_RM [23]),
    .ADR4(\Fourth_Module/Sgf_RM [22]),
    .O(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<22> )
  );
  X_FF #(
    .LOC ( "SLICE_X60Y126" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfShift/Q_23  (
    .CE(\Fourth_Module/SgfShift/_n0016_inv_0 ),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfShift/Q_23/CLK ),
    .I(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<23> ),
    .O(\Fourth_Module/SgfShift/Q [23]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y126" ),
    .INIT ( 64'hFF0FF505FA0AF000 ))
  \Fourth_Module/SgfShift/Mmux_Q[26]_D[26]_mux_2_OUT161  (
    .ADR1(1'b1),
    .ADR2(\FS_Module/state_reg_FSM_FFd33_3800 ),
    .ADR0(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .ADR4(\Fourth_Module/Sgf_RM [22]),
    .ADR5(\Fourth_Module/Sgf_RM [24]),
    .ADR3(\Fourth_Module/Sgf_RM [23]),
    .O(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<23> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y127" ),
    .INIT ( 64'hF0F0F0F0FFFF0000 ))
  \Fourth_Module/Dir_Sgf/Mmux_S191  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR5(\Sel_5_P_exp/Q_0_3796 ),
    .ADR4(\Add_Sub_Significands/R_Sgf/Q [26]),
    .ADR2(\Fourth_Module/SgfShift/Q [26]),
    .O(\Fourth_Module/Sgf_RM [26])
  );
  X_FF #(
    .LOC ( "SLICE_X60Y127" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfShift/Q_26  (
    .CE(\Fourth_Module/SgfShift/_n0016_inv_0 ),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfShift/Q_26/CLK ),
    .I(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<26> ),
    .O(\Fourth_Module/SgfShift/Q [26]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y127" ),
    .INIT ( 64'hFE54AA00BA10AA00 ))
  \Fourth_Module/SgfShift/Mmux_Q[26]_D[26]_mux_2_OUT191  (
    .ADR0(\FS_Module/state_reg_FSM_FFd33_3800 ),
    .ADR4(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .ADR1(\Sel_5_P_exp/Q_0_3796 ),
    .ADR5(\Fourth_Module/SgfShift/Q [25]),
    .ADR2(\Add_Sub_Significands/R_Sgf/Q [25]),
    .ADR3(\Fourth_Module/Sgf_RM [26]),
    .O(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<26> )
  );
  X_BUF   \Fourth_Module/SgfShift/Q<9>/Fourth_Module/SgfShift/Q<9>_DMUX_Delay  (
    .I(\Fourth_Module/Sgf_RM<0>_pack_6 ),
    .O(\Fourth_Module/Sgf_RM [0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y121" ),
    .INIT ( 64'hCFC0CFC0CFC0CFC0 ))
  \Fourth_Module/Dir_Sgf/Mmux_S271  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(\Sel_5_P_exp/Q_0_3796 ),
    .ADR3(\Add_Sub_Significands/R_Sgf/Q [9]),
    .ADR1(\Fourth_Module/SgfShift/Q [9]),
    .ADR5(1'b1),
    .O(\Fourth_Module/Sgf_RM [9])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X61Y121" ),
    .INIT ( 32'hAFAFA0A0 ))
  \Fourth_Module/Dir_Sgf/Mmux_S11  (
    .ADR4(\Add_Sub_Significands/R_Sgf/Q [0]),
    .ADR0(\Fourth_Module/SgfShift/Q [0]),
    .ADR2(\Sel_5_P_exp/Q_0_3796 ),
    .ADR3(1'b1),
    .ADR1(1'b1),
    .O(\Fourth_Module/Sgf_RM<0>_pack_6 )
  );
  X_FF #(
    .LOC ( "SLICE_X61Y121" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfShift/Q_9  (
    .CE(\Fourth_Module/SgfShift/_n0016_inv_0 ),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfShift/Q_9/CLK ),
    .I(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<9> ),
    .O(\Fourth_Module/SgfShift/Q [9]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y121" ),
    .INIT ( 64'hFFCF3303FCCC3000 ))
  \Fourth_Module/SgfShift/Mmux_Q[26]_D[26]_mux_2_OUT271  (
    .ADR0(1'b1),
    .ADR1(\FS_Module/state_reg_FSM_FFd33_3800 ),
    .ADR2(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .ADR3(\Fourth_Module/Sgf_RM [8]),
    .ADR5(\Fourth_Module/Sgf_RM [10]),
    .ADR4(\Fourth_Module/Sgf_RM [9]),
    .O(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<9> )
  );
  X_FF #(
    .LOC ( "SLICE_X61Y121" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfShift/Q_0  (
    .CE(\Fourth_Module/SgfShift/_n0016_inv_0 ),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfShift/Q_0/CLK ),
    .I(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<0> ),
    .O(\Fourth_Module/SgfShift/Q [0]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y121" ),
    .INIT ( 64'hDD11DC10CC00DC10 ))
  \Fourth_Module/SgfShift/Mmux_Q[26]_D[26]_mux_2_OUT11  (
    .ADR1(\FS_Module/state_reg_FSM_FFd33_3800 ),
    .ADR0(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .ADR4(\Sel_5_P_exp/Q_0_3796 ),
    .ADR5(\Fourth_Module/SgfShift/Q [1]),
    .ADR2(\Add_Sub_Significands/R_Sgf/Q [1]),
    .ADR3(\Fourth_Module/Sgf_RM [0]),
    .O(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<0> )
  );
  X_BUF   \FS_Module/state_reg_FSM_FFd30/FS_Module/state_reg_FSM_FFd30_DMUX_Delay  (
    .I(\FS_Module/state_reg_FSM_FFd31_pack_3 ),
    .O(\FS_Module/state_reg_FSM_FFd31_4447 )
  );
  X_BUF   \FS_Module/state_reg_FSM_FFd30/FS_Module/state_reg_FSM_FFd30_CMUX_Delay  (
    .I(\Fourth_Module/SgfShift/_n0016_inv ),
    .O(\Fourth_Module/SgfShift/_n0016_inv_0 )
  );
  X_BUF   \FS_Module/state_reg_FSM_FFd30/FS_Module/state_reg_FSM_FFd30_BMUX_Delay  (
    .I(\FS_Module/state_reg_FSM_FFd27_pack_2 ),
    .O(\FS_Module/state_reg_FSM_FFd27_4448 )
  );
  X_FF #(
    .LOC ( "SLICE_X60Y125" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd30  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd30/CLK ),
    .I(\FS_Module/state_reg_FSM_FFd30-In ),
    .O(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y125" ),
    .INIT ( 64'h1111000011110000 ))
  \FS_Module/state_reg_FSM_FFd30-In1  (
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR4(\FS_Module/state_reg_FSM_FFd32_4091 ),
    .ADR0(\Fourth_Module/SgfShift/Q [26]),
    .ADR1(\Fourth_Module/SgfShift/Q [25]),
    .ADR5(1'b1),
    .O(\FS_Module/state_reg_FSM_FFd30-In )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X60Y125" ),
    .INIT ( 32'hEEEE0000 ))
  \FS_Module/state_reg_FSM_FFd31-In1  (
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR4(\FS_Module/state_reg_FSM_FFd32_4091 ),
    .ADR0(\Fourth_Module/SgfShift/Q [26]),
    .ADR1(\Fourth_Module/SgfShift/Q [25]),
    .O(\FS_Module/state_reg_FSM_FFd31-In )
  );
  X_FF #(
    .LOC ( "SLICE_X60Y125" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd31  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd31/CLK ),
    .I(\FS_Module/state_reg_FSM_FFd31-In ),
    .O(\FS_Module/state_reg_FSM_FFd31_pack_3 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X60Y125" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd29  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd29/CLK ),
    .I(\FS_Module/state_reg_FSM_FFd29-In ),
    .O(\FS_Module/state_reg_FSM_FFd29_3803 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y125" ),
    .INIT ( 64'hFFFFF0F0FFFFF0F0 ))
  \FS_Module/state_reg_FSM_FFd29-In1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(\FS_Module/state_reg_FSM_FFd27_4448 ),
    .ADR2(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .ADR5(1'b1),
    .O(\FS_Module/state_reg_FSM_FFd29-In )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X60Y125" ),
    .INIT ( 32'hFFFFFFF0 ))
  \Fourth_Module/SgfShift/_n0016_inv1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\FS_Module/state_reg_FSM_FFd33_3800 ),
    .ADR4(\FS_Module/state_reg_FSM_FFd27_4448 ),
    .ADR2(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .O(\Fourth_Module/SgfShift/_n0016_inv )
  );
  X_FF #(
    .LOC ( "SLICE_X60Y125" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd28  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd28/CLK ),
    .I(\FS_Module/state_reg_FSM_FFd28-In ),
    .O(\FS_Module/state_reg_FSM_FFd28_3792 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y125" ),
    .INIT ( 64'h0000FF000000FF00 ))
  \FS_Module/state_reg_FSM_FFd28-In1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\FS_Module/state_reg_FSM_FFd31_4447 ),
    .ADR4(\Fourth_Module/SgfShift/Q [26]),
    .ADR5(1'b1),
    .O(\FS_Module/state_reg_FSM_FFd28-In )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X60Y125" ),
    .INIT ( 32'hFF000000 ))
  \FS_Module/state_reg_FSM_FFd27-In1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\FS_Module/state_reg_FSM_FFd31_4447 ),
    .ADR4(\Fourth_Module/SgfShift/Q [26]),
    .O(\FS_Module/state_reg_FSM_FFd27-In )
  );
  X_FF #(
    .LOC ( "SLICE_X60Y125" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd27  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd27/CLK ),
    .I(\FS_Module/state_reg_FSM_FFd27-In ),
    .O(\FS_Module/state_reg_FSM_FFd27_pack_2 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_BUF   \Fourth_Module/SgfShift/Q<10>/Fourth_Module/SgfShift/Q<10>_DMUX_Delay  (
    .I(\Fourth_Module/Sgf_RM<10>_pack_7 ),
    .O(\Fourth_Module/Sgf_RM [10])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y123" ),
    .INIT ( 64'hAFAFA0A0AFAFA0A0 ))
  \Fourth_Module/Dir_Sgf/Mmux_S31  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(\Sel_5_P_exp/Q_0_3796 ),
    .ADR4(\Add_Sub_Significands/R_Sgf/Q [11]),
    .ADR0(\Fourth_Module/SgfShift/Q [11]),
    .ADR5(1'b1),
    .O(\Fourth_Module/Sgf_RM [11])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X61Y123" ),
    .INIT ( 32'hCFC0CFC0 ))
  \Fourth_Module/Dir_Sgf/Mmux_S21  (
    .ADR3(\Add_Sub_Significands/R_Sgf/Q [10]),
    .ADR1(\Fourth_Module/SgfShift/Q [10]),
    .ADR2(\Sel_5_P_exp/Q_0_3796 ),
    .ADR0(1'b1),
    .ADR4(1'b1),
    .O(\Fourth_Module/Sgf_RM<10>_pack_7 )
  );
  X_FF #(
    .LOC ( "SLICE_X61Y123" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfShift/Q_10  (
    .CE(\Fourth_Module/SgfShift/_n0016_inv_0 ),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfShift/Q_10/CLK ),
    .I(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<10> ),
    .O(\Fourth_Module/SgfShift/Q [10]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y123" ),
    .INIT ( 64'hFFFCCFCC33300300 ))
  \Fourth_Module/SgfShift/Mmux_Q[26]_D[26]_mux_2_OUT28  (
    .ADR0(1'b1),
    .ADR1(\FS_Module/state_reg_FSM_FFd33_3800 ),
    .ADR2(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .ADR4(\Fourth_Module/Sgf_RM [9]),
    .ADR3(\Fourth_Module/Sgf_RM [11]),
    .ADR5(\Fourth_Module/Sgf_RM [10]),
    .O(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<10> )
  );
  X_FF #(
    .LOC ( "SLICE_X61Y123" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfShift/Q_11  (
    .CE(\Fourth_Module/SgfShift/_n0016_inv_0 ),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfShift/Q_11/CLK ),
    .I(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<11> ),
    .O(\Fourth_Module/SgfShift/Q [11]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y123" ),
    .INIT ( 64'hFFCF3303FCCC3000 ))
  \Fourth_Module/SgfShift/Mmux_Q[26]_D[26]_mux_2_OUT31  (
    .ADR0(1'b1),
    .ADR1(\FS_Module/state_reg_FSM_FFd33_3800 ),
    .ADR2(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .ADR3(\Fourth_Module/Sgf_RM [10]),
    .ADR5(\Fourth_Module/Sgf_RM [12]),
    .ADR4(\Fourth_Module/Sgf_RM [11]),
    .O(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<11> )
  );
  X_BUF   \Fourth_Module/SgfShift/Q<12>/Fourth_Module/SgfShift/Q<12>_CMUX_Delay  (
    .I(\Fourth_Module/Sgf_RM<12>_pack_7 ),
    .O(\Fourth_Module/Sgf_RM [12])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y124" ),
    .INIT ( 64'hCCCCFF00CCCCFF00 ))
  \Fourth_Module/Dir_Sgf/Mmux_S51  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR4(\Sel_5_P_exp/Q_0_3796 ),
    .ADR3(\Add_Sub_Significands/R_Sgf/Q [13]),
    .ADR1(\Fourth_Module/SgfShift/Q [13]),
    .ADR5(1'b1),
    .O(\Fourth_Module/Sgf_RM [13])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X61Y124" ),
    .INIT ( 32'hAAAAF0F0 ))
  \Fourth_Module/Dir_Sgf/Mmux_S41  (
    .ADR2(\Add_Sub_Significands/R_Sgf/Q [12]),
    .ADR0(\Fourth_Module/SgfShift/Q [12]),
    .ADR4(\Sel_5_P_exp/Q_0_3796 ),
    .ADR3(1'b1),
    .ADR1(1'b1),
    .O(\Fourth_Module/Sgf_RM<12>_pack_7 )
  );
  X_FF #(
    .LOC ( "SLICE_X61Y124" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfShift/Q_12  (
    .CE(\Fourth_Module/SgfShift/_n0016_inv_0 ),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfShift/Q_12/CLK ),
    .I(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<12> ),
    .O(\Fourth_Module/SgfShift/Q [12]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y124" ),
    .INIT ( 64'hFFFA00FAFF500050 ))
  \Fourth_Module/SgfShift/Mmux_Q[26]_D[26]_mux_2_OUT41  (
    .ADR1(1'b1),
    .ADR3(\FS_Module/state_reg_FSM_FFd33_3800 ),
    .ADR0(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .ADR5(\Fourth_Module/Sgf_RM [11]),
    .ADR2(\Fourth_Module/Sgf_RM [13]),
    .ADR4(\Fourth_Module/Sgf_RM [12]),
    .O(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<12> )
  );
  X_FF #(
    .LOC ( "SLICE_X61Y124" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfShift/Q_13  (
    .CE(\Fourth_Module/SgfShift/_n0016_inv_0 ),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfShift/Q_13/CLK ),
    .I(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<13> ),
    .O(\Fourth_Module/SgfShift/Q [13]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y124" ),
    .INIT ( 64'hF0FFF055F0AAF000 ))
  \Fourth_Module/SgfShift/Mmux_Q[26]_D[26]_mux_2_OUT51  (
    .ADR1(1'b1),
    .ADR3(\FS_Module/state_reg_FSM_FFd33_3800 ),
    .ADR0(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .ADR4(\Fourth_Module/Sgf_RM [12]),
    .ADR5(\Fourth_Module/Sgf_RM [14]),
    .ADR2(\Fourth_Module/Sgf_RM [13]),
    .O(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<13> )
  );
  X_BUF   \Fourth_Module/SgfShift/Q<18>/Fourth_Module/SgfShift/Q<18>_CMUX_Delay  (
    .I(\Fourth_Module/Sgf_RM<18>_pack_7 ),
    .O(\Fourth_Module/Sgf_RM [18])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y125" ),
    .INIT ( 64'hCCCCFF00CCCCFF00 ))
  \Fourth_Module/Dir_Sgf/Mmux_S111  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR4(\Sel_5_P_exp/Q_0_3796 ),
    .ADR3(\Add_Sub_Significands/R_Sgf/Q [19]),
    .ADR1(\Fourth_Module/SgfShift/Q [19]),
    .ADR5(1'b1),
    .O(\Fourth_Module/Sgf_RM [19])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X61Y125" ),
    .INIT ( 32'hAAAAF0F0 ))
  \Fourth_Module/Dir_Sgf/Mmux_S101  (
    .ADR2(\Add_Sub_Significands/R_Sgf/Q [18]),
    .ADR0(\Fourth_Module/SgfShift/Q [18]),
    .ADR4(\Sel_5_P_exp/Q_0_3796 ),
    .ADR3(1'b1),
    .ADR1(1'b1),
    .O(\Fourth_Module/Sgf_RM<18>_pack_7 )
  );
  X_FF #(
    .LOC ( "SLICE_X61Y125" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfShift/Q_18  (
    .CE(\Fourth_Module/SgfShift/_n0016_inv_0 ),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfShift/Q_18/CLK ),
    .I(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<18> ),
    .O(\Fourth_Module/SgfShift/Q [18]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y125" ),
    .INIT ( 64'hFFFA00FAFF500050 ))
  \Fourth_Module/SgfShift/Mmux_Q[26]_D[26]_mux_2_OUT101  (
    .ADR1(1'b1),
    .ADR3(\FS_Module/state_reg_FSM_FFd33_3800 ),
    .ADR0(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .ADR5(\Fourth_Module/Sgf_RM [17]),
    .ADR2(\Fourth_Module/Sgf_RM [19]),
    .ADR4(\Fourth_Module/Sgf_RM [18]),
    .O(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<18> )
  );
  X_FF #(
    .LOC ( "SLICE_X61Y125" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfShift/Q_19  (
    .CE(\Fourth_Module/SgfShift/_n0016_inv_0 ),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfShift/Q_19/CLK ),
    .I(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<19> ),
    .O(\Fourth_Module/SgfShift/Q [19]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y125" ),
    .INIT ( 64'hF3F3C0F3F3C0C0C0 ))
  \Fourth_Module/SgfShift/Mmux_Q[26]_D[26]_mux_2_OUT111  (
    .ADR0(1'b1),
    .ADR1(\FS_Module/state_reg_FSM_FFd33_3800 ),
    .ADR3(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .ADR4(\Fourth_Module/Sgf_RM [18]),
    .ADR5(\Fourth_Module/Sgf_RM [20]),
    .ADR2(\Fourth_Module/Sgf_RM [19]),
    .O(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<19> )
  );
  X_BUF   \Fourth_Module/SgfShift/Q<14>/Fourth_Module/SgfShift/Q<14>_CMUX_Delay  (
    .I(\Fourth_Module/Sgf_RM<14>_pack_7 ),
    .O(\Fourth_Module/Sgf_RM [14])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y124" ),
    .INIT ( 64'hCCFFCC00CCFFCC00 ))
  \Fourth_Module/Dir_Sgf/Mmux_S71  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(\Sel_5_P_exp/Q_0_3796 ),
    .ADR4(\Add_Sub_Significands/R_Sgf/Q [15]),
    .ADR1(\Fourth_Module/SgfShift/Q [15]),
    .ADR5(1'b1),
    .O(\Fourth_Module/Sgf_RM [15])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X60Y124" ),
    .INIT ( 32'hAAF0AAF0 ))
  \Fourth_Module/Dir_Sgf/Mmux_S61  (
    .ADR2(\Add_Sub_Significands/R_Sgf/Q [14]),
    .ADR0(\Fourth_Module/SgfShift/Q [14]),
    .ADR3(\Sel_5_P_exp/Q_0_3796 ),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .O(\Fourth_Module/Sgf_RM<14>_pack_7 )
  );
  X_FF #(
    .LOC ( "SLICE_X60Y124" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfShift/Q_14  (
    .CE(\Fourth_Module/SgfShift/_n0016_inv_0 ),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfShift/Q_14/CLK ),
    .I(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<14> ),
    .O(\Fourth_Module/SgfShift/Q [14]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y124" ),
    .INIT ( 64'hFFF50F05FAF00A00 ))
  \Fourth_Module/SgfShift/Mmux_Q[26]_D[26]_mux_2_OUT61  (
    .ADR1(1'b1),
    .ADR2(\FS_Module/state_reg_FSM_FFd33_3800 ),
    .ADR0(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .ADR3(\Fourth_Module/Sgf_RM [13]),
    .ADR5(\Fourth_Module/Sgf_RM [15]),
    .ADR4(\Fourth_Module/Sgf_RM [14]),
    .O(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<14> )
  );
  X_FF #(
    .LOC ( "SLICE_X60Y124" ),
    .INIT ( 1'b0 ))
  \Fourth_Module/SgfShift/Q_15  (
    .CE(\Fourth_Module/SgfShift/_n0016_inv_0 ),
    .CLK(\NlwBufferSignal_Fourth_Module/SgfShift/Q_15/CLK ),
    .I(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<15> ),
    .O(\Fourth_Module/SgfShift/Q [15]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X60Y124" ),
    .INIT ( 64'hFF33CF03FC30CC00 ))
  \Fourth_Module/SgfShift/Mmux_Q[26]_D[26]_mux_2_OUT71  (
    .ADR0(1'b1),
    .ADR1(\FS_Module/state_reg_FSM_FFd33_3800 ),
    .ADR2(\FS_Module/state_reg_FSM_FFd30_3801 ),
    .ADR4(\Fourth_Module/Sgf_RM [14]),
    .ADR5(\Fourth_Module/Sgf_RM [16]),
    .ADR3(\Fourth_Module/Sgf_RM [15]),
    .O(\Fourth_Module/SgfShift/Q[26]_D[26]_mux_2_OUT<15> )
  );
  X_BUF   \Operands_Classification/DMC/Q<27>/Operands_Classification/DMC/Q<27>_DMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [27]),
    .O(\Operands_Classification/DmC/Q<27>_0 )
  );
  X_BUF   \Operands_Classification/DMC/Q<27>/Operands_Classification/DMC/Q<27>_CMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [26]),
    .O(\Operands_Classification/DmC/Q<26>_0 )
  );
  X_BUF   \Operands_Classification/DMC/Q<27>/Operands_Classification/DMC/Q<27>_BMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [25]),
    .O(\Operands_Classification/DmC/Q<25>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X63Y131" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_27  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_27/CLK ),
    .I(\Operands_Classification/MDM [27]),
    .O(\Operands_Classification/DMC/Q [27]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y131" ),
    .INIT ( 64'hFFF000F0FFF000F0 ))
  \Operands_Classification/Dir_M/Mmux_S201  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR2(\Operands_Classification/DYP/Q [27]),
    .ADR4(\Operands_Classification/XRegister/Q [27]),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [27])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X63Y131" ),
    .INIT ( 32'hF0FFF000 ))
  \Operands_Classification/Dir_m/Mmux_S201  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR2(\Operands_Classification/DYP/Q [27]),
    .ADR4(\Operands_Classification/XRegister/Q [27]),
    .O(\Operands_Classification/MDm [27])
  );
  X_FF #(
    .LOC ( "SLICE_X63Y131" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_27  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_27/CLK ),
    .I(\Operands_Classification/MDm [27]),
    .O(\Operands_Classification/DmC/Q [27]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X63Y131" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_26  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_26/CLK ),
    .I(\Operands_Classification/MDM [26]),
    .O(\Operands_Classification/DMC/Q [26]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y131" ),
    .INIT ( 64'hCCFFCC00CCFFCC00 ))
  \Operands_Classification/Dir_M/Mmux_S191  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q [26]),
    .ADR1(\Operands_Classification/XRegister/Q [26]),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [26])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X63Y131" ),
    .INIT ( 32'hFFCC00CC ))
  \Operands_Classification/Dir_m/Mmux_S191  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q [26]),
    .ADR1(\Operands_Classification/XRegister/Q [26]),
    .O(\Operands_Classification/MDm [26])
  );
  X_FF #(
    .LOC ( "SLICE_X63Y131" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_26  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_26/CLK ),
    .I(\Operands_Classification/MDm [26]),
    .O(\Operands_Classification/DmC/Q [26]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X63Y131" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_25  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_25/CLK ),
    .I(\Operands_Classification/MDM [25]),
    .O(\Operands_Classification/DMC/Q [25]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X63Y131" ),
    .INIT ( 64'hFF55AA00FF55AA00 ))
  \Operands_Classification/Dir_M/Mmux_S181  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q [25]),
    .ADR3(\Operands_Classification/XRegister/Q [25]),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [25])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X63Y131" ),
    .INIT ( 32'hFFAA5500 ))
  \Operands_Classification/Dir_m/Mmux_S181  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q [25]),
    .ADR3(\Operands_Classification/XRegister/Q [25]),
    .O(\Operands_Classification/MDm [25])
  );
  X_FF #(
    .LOC ( "SLICE_X63Y131" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_25  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_25/CLK ),
    .I(\Operands_Classification/MDm [25]),
    .O(\Operands_Classification/DmC/Q [25]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X61Y126" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_19  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_19/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/XRegister/Q_19/IN ),
    .O(\Operands_Classification/XRegister/Q [19]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X61Y126" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_18  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_18/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/XRegister/Q_18/IN ),
    .O(\Operands_Classification/XRegister/Q [18]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X61Y126" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_17  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_17/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/XRegister/Q_17/IN ),
    .O(\Operands_Classification/XRegister/Q [17]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X61Y126" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_16  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_16/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/XRegister/Q_16/IN ),
    .O(\Operands_Classification/XRegister/Q [16]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Operands_Classification/XRegister/Q<27>/Operands_Classification/XRegister/Q<27>_CMUX_Delay  (
    .I(\Operands_Classification/XRegister/Q [22]),
    .O(\Operands_Classification/XRegister/Q<22>_0 )
  );
  X_BUF   \Operands_Classification/XRegister/Q<27>/Operands_Classification/XRegister/Q<27>_BMUX_Delay  (
    .I(\Operands_Classification/XRegister/Q [21]),
    .O(\Operands_Classification/XRegister/Q<21>_0 )
  );
  X_BUF   \Operands_Classification/XRegister/Q<27>/Operands_Classification/XRegister/Q<27>_AMUX_Delay  (
    .I(\Operands_Classification/XRegister/Q [20]),
    .O(\Operands_Classification/XRegister/Q<20>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X63Y130" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_27  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_27/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/XRegister/Q_27/IN ),
    .O(\Operands_Classification/XRegister/Q [27]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X63Y130" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_26  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_26/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/XRegister/Q_26/IN ),
    .O(\Operands_Classification/XRegister/Q [26]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X63Y130" ),
    .INIT ( 32'hFF00FF00 ))
  Data_X_22_IBUF_rt (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(Data_X_22_IBUF_4324),
    .O(Data_X_22_IBUF_rt_2451)
  );
  X_FF #(
    .LOC ( "SLICE_X63Y130" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_22  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_22/CLK ),
    .I(Data_X_22_IBUF_rt_2451),
    .O(\Operands_Classification/XRegister/Q [22]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X63Y130" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_25  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_25/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/XRegister/Q_25/IN ),
    .O(\Operands_Classification/XRegister/Q [25]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X63Y130" ),
    .INIT ( 32'hAAAAAAAA ))
  Data_X_21_IBUF_rt (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(Data_X_21_IBUF_4323),
    .O(Data_X_21_IBUF_rt_2453)
  );
  X_FF #(
    .LOC ( "SLICE_X63Y130" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_21  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_21/CLK ),
    .I(Data_X_21_IBUF_rt_2453),
    .O(\Operands_Classification/XRegister/Q [21]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X63Y130" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_24  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_24/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/XRegister/Q_24/IN ),
    .O(\Operands_Classification/XRegister/Q [24]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X63Y130" ),
    .INIT ( 32'hFFFF0000 ))
  Data_X_20_IBUF_rt (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(Data_X_20_IBUF_4320),
    .O(Data_X_20_IBUF_rt_2447)
  );
  X_FF #(
    .LOC ( "SLICE_X63Y130" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_20  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_20/CLK ),
    .I(Data_X_20_IBUF_rt_2447),
    .O(\Operands_Classification/XRegister/Q [20]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X61Y127" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd34  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd34/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd34/IN ),
    .O(\FS_Module/state_reg_FSM_FFd34_4450 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X61Y127" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd33  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd33/CLK ),
    .I(\FS_Module/state_reg_FSM_FFd33-In ),
    .O(\FS_Module/state_reg_FSM_FFd33_3800 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X61Y127" ),
    .INIT ( 64'hFAFAFAFAFAFAFAFA ))
  \FS_Module/state_reg_FSM_FFd33-In1  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR0(\FS_Module/state_reg_FSM_FFd17_4373 ),
    .ADR2(\FS_Module/state_reg_FSM_FFd34_4450 ),
    .O(\FS_Module/state_reg_FSM_FFd33-In )
  );
  X_FF #(
    .LOC ( "SLICE_X61Y127" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd32  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd32/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd32/IN ),
    .O(\FS_Module/state_reg_FSM_FFd32_4091 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_BUF 
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005192/Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005192_CMUX_Delay  (
    .I(\Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005192 ),
    .O(\Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005192_0 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X77Y120" ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005193  (
    .IA(N58),
    .IB(N59),
    .O(\Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005192 ),
    .SEL(\Normalization_Smallest_Significand/ESRegister/Q [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X77Y120" ),
    .INIT ( 64'hE2FFE2CCE233E200 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005193_F  (
    .ADR3(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .ADR0(\Operands_Classification/DmC/Q<8>_0 ),
    .ADR2(\Operands_Classification/DmC/Q<9>_0 ),
    .ADR4(\Operands_Classification/DmC/Q<0>_0 ),
    .ADR5(\Operands_Classification/DmC/Q<1>_0 ),
    .O(N58)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X77Y120" ),
    .INIT ( 64'hFC30BBBBFC308888 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005193_G  (
    .ADR4(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .ADR3(\Operands_Classification/DmC/Q<11>_0 ),
    .ADR2(\Operands_Classification/DmC/Q<10>_0 ),
    .ADR5(\Operands_Classification/DmC/Q<2>_0 ),
    .ADR0(\Operands_Classification/DmC/Q<3>_0 ),
    .O(N59)
  );
  X_BUF   \Operands_Classification/DMC/Q<7>/Operands_Classification/DMC/Q<7>_DMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [7]),
    .O(\Operands_Classification/DmC/Q<7>_0 )
  );
  X_BUF   \Operands_Classification/DMC/Q<7>/Operands_Classification/DMC/Q<7>_CMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [6]),
    .O(\Operands_Classification/DmC/Q<6>_0 )
  );
  X_BUF   \Operands_Classification/DMC/Q<7>/Operands_Classification/DMC/Q<7>_BMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [9]),
    .O(\Operands_Classification/DmC/Q<9>_0 )
  );
  X_BUF   \Operands_Classification/DMC/Q<7>/Operands_Classification/DMC/Q<7>_AMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [13]),
    .O(\Operands_Classification/DmC/Q<13>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X76Y122" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_7  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_7/CLK ),
    .I(\Operands_Classification/MDM [7]),
    .O(\Operands_Classification/DMC/Q [7]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y122" ),
    .INIT ( 64'hFF00F0F0FF00F0F0 ))
  \Operands_Classification/Dir_M/Mmux_S301  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR2(\Operands_Classification/DYP/Q [7]),
    .ADR3(\Operands_Classification/XRegister/Q [7]),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [7])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X76Y122" ),
    .INIT ( 32'hF0F0FF00 ))
  \Operands_Classification/Dir_m/Mmux_S301  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR2(\Operands_Classification/DYP/Q [7]),
    .ADR3(\Operands_Classification/XRegister/Q [7]),
    .O(\Operands_Classification/MDm [7])
  );
  X_FF #(
    .LOC ( "SLICE_X76Y122" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_7  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_7/CLK ),
    .I(\Operands_Classification/MDm [7]),
    .O(\Operands_Classification/DmC/Q [7]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X76Y122" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_6  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_6/CLK ),
    .I(\Operands_Classification/MDM [6]),
    .O(\Operands_Classification/DMC/Q [6]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y122" ),
    .INIT ( 64'hF0F0FF00F0F0FF00 ))
  \Operands_Classification/Dir_M/Mmux_S291  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR3(\Operands_Classification/DYP/Q [6]),
    .ADR2(\Operands_Classification/XRegister/Q [6]),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [6])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X76Y122" ),
    .INIT ( 32'hFF00F0F0 ))
  \Operands_Classification/Dir_m/Mmux_S291  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR3(\Operands_Classification/DYP/Q [6]),
    .ADR2(\Operands_Classification/XRegister/Q [6]),
    .O(\Operands_Classification/MDm [6])
  );
  X_FF #(
    .LOC ( "SLICE_X76Y122" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_6  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_6/CLK ),
    .I(\Operands_Classification/MDm [6]),
    .O(\Operands_Classification/DmC/Q [6]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X76Y122" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_9  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_9/CLK ),
    .I(\Operands_Classification/MDM [9]),
    .O(\Operands_Classification/DMC/Q [9]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y122" ),
    .INIT ( 64'hFF0FF000FF0FF000 ))
  \Operands_Classification/Dir_M/Mmux_S321  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q [9]),
    .ADR3(\Operands_Classification/XRegister/Q [9]),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [9])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X76Y122" ),
    .INIT ( 32'hFFF00F00 ))
  \Operands_Classification/Dir_m/Mmux_S321  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q [9]),
    .ADR3(\Operands_Classification/XRegister/Q [9]),
    .O(\Operands_Classification/MDm [9])
  );
  X_FF #(
    .LOC ( "SLICE_X76Y122" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_9  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_9/CLK ),
    .I(\Operands_Classification/MDm [9]),
    .O(\Operands_Classification/DmC/Q [9]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X76Y122" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_13  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_13/CLK ),
    .I(\Operands_Classification/MDM [13]),
    .O(\Operands_Classification/DMC/Q [13]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y122" ),
    .INIT ( 64'hF0FFF000F0FFF000 ))
  \Operands_Classification/Dir_M/Mmux_S51  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q<13>_0 ),
    .ADR2(\Operands_Classification/XRegister/Q [13]),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [13])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X76Y122" ),
    .INIT ( 32'hFFF000F0 ))
  \Operands_Classification/Dir_m/Mmux_S51  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q<13>_0 ),
    .ADR2(\Operands_Classification/XRegister/Q [13]),
    .O(\Operands_Classification/MDm [13])
  );
  X_FF #(
    .LOC ( "SLICE_X76Y122" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_13  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_13/CLK ),
    .I(\Operands_Classification/MDm [13]),
    .O(\Operands_Classification/DmC/Q [13]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X76Y120" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_31  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_31/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/YRegister/Q_31/IN ),
    .O(\Operands_Classification/YRegister/Q [31]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X76Y120" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_30  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_30/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/YRegister/Q_30/IN ),
    .O(\Operands_Classification/YRegister/Q [30]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X76Y120" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_29  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_29/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/YRegister/Q_29/IN ),
    .O(\Operands_Classification/YRegister/Q [29]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X76Y120" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_28  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_28/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/YRegister/Q_28/IN ),
    .O(\Operands_Classification/YRegister/Q [28]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \FS_Module/state_reg_FSM_FFd39-In/FS_Module/state_reg_FSM_FFd39-In_CMUX_Delay  (
    .I(\FS_Module/state_reg_FSM_FFd39-In ),
    .O(\FS_Module/state_reg_FSM_FFd39-In_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X74Y131" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd40  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd40/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd40/IN ),
    .O(\FS_Module/state_reg_FSM_FFd39-In ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_BUF   \Sh291/Sh291_CMUX_Delay  (
    .I(Sh291_3361),
    .O(Sh291_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X76Y121" ))
  Sh291 (
    .IA(N48),
    .IB(N49),
    .O(Sh291_3361),
    .SEL(\Normalization_Smallest_Significand/ESRegister/Q [0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y121" ),
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  Sh291_F (
    .ADR4(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR5(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .ADR3(\Operands_Classification/DmC/Q<15>_0 ),
    .ADR1(\Operands_Classification/DmC/Q<13>_0 ),
    .ADR0(\Operands_Classification/DmC/Q<5>_0 ),
    .ADR2(\Operands_Classification/DmC/Q<7>_0 ),
    .O(N48)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y121" ),
    .INIT ( 64'hFF00F0F0CCCCAAAA ))
  Sh291_G (
    .ADR5(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .ADR4(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR3(\Operands_Classification/DmC/Q<16>_0 ),
    .ADR2(\Operands_Classification/DmC/Q<8>_0 ),
    .ADR0(\Operands_Classification/DmC/Q<6>_0 ),
    .ADR1(\Operands_Classification/DmC/Q<14>_0 ),
    .O(N49)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y126" ),
    .INIT ( 64'h0000FFFFFF00CCCC ))
  Sh231 (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(\Operands_Classification/DmC/Q<22>_0 ),
    .ADR1(\Operands_Classification/DmC/Q [21]),
    .ADR5(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .ADR4(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .O(Sh23)
  );
  X_FF #(
    .LOC ( "SLICE_X76Y126" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/SGFmRegister/Q_23  (
    .CE(\FS_Module/state_reg_FSM_FFd37_0 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_23/CLK ),
    .I(\Normalization_Smallest_Significand/sgfsn [23]),
    .O(\Normalization_Smallest_Significand/SGFmRegister/Q [23]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y126" ),
    .INIT ( 64'h0000000000030000 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005161  (
    .ADR0(1'b1),
    .ADR5(\Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 ),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR3(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .ADR4(Sh23),
    .O(\Normalization_Smallest_Significand/sgfsn [23])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y126" ),
    .INIT ( 64'hFFFAFF0AF0FAF00A ))
  Sh221 (
    .ADR1(1'b1),
    .ADR0(\Operands_Classification/DmC/Q<20>_0 ),
    .ADR4(\Operands_Classification/DmC/Q [21]),
    .ADR5(\Operands_Classification/DmC/Q<22>_0 ),
    .ADR3(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .O(Sh22)
  );
  X_FF #(
    .LOC ( "SLICE_X76Y126" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/SGFmRegister/Q_22  (
    .CE(\FS_Module/state_reg_FSM_FFd37_0 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_22/CLK ),
    .I(\Normalization_Smallest_Significand/sgfsn [22]),
    .O(\Normalization_Smallest_Significand/SGFmRegister/Q [22]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y126" ),
    .INIT ( 64'h0000000000000300 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005151  (
    .ADR0(1'b1),
    .ADR4(\Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 ),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .ADR5(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .ADR3(Sh22),
    .O(\Normalization_Smallest_Significand/sgfsn [22])
  );
  X_BUF   \Sh261/Sh261_CMUX_Delay  (
    .I(Sh261),
    .O(Sh261_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X77Y121" ))
  Sh2613 (
    .IA(N40),
    .IB(N41),
    .O(Sh261),
    .SEL(\Normalization_Smallest_Significand/ESRegister/Q [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X77Y121" ),
    .INIT ( 64'hF5F5DD88A0A0DD88 ))
  Sh2613_F (
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .ADR4(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR2(\Operands_Classification/DmC/Q<11>_0 ),
    .ADR1(\Operands_Classification/DmC/Q<3>_0 ),
    .ADR3(\Operands_Classification/DmC/Q<2>_0 ),
    .ADR5(\Operands_Classification/DmC/Q<10>_0 ),
    .O(N40)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X77Y121" ),
    .INIT ( 64'hF5A0DDDDF5A08888 ))
  Sh2613_G (
    .ADR4(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .ADR2(\Operands_Classification/DmC/Q<13>_0 ),
    .ADR3(\Operands_Classification/DmC/Q<12>_0 ),
    .ADR5(\Operands_Classification/DmC/Q<4>_0 ),
    .ADR1(\Operands_Classification/DmC/Q<5>_0 ),
    .O(N41)
  );
  X_FF #(
    .LOC ( "SLICE_X74Y127" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_27  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_27/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/YRegister/Q_27/IN ),
    .O(\Operands_Classification/YRegister/Q [27]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X74Y127" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_26  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_26/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/YRegister/Q_26/IN ),
    .O(\Operands_Classification/YRegister/Q [26]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X74Y127" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_25  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_25/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/YRegister/Q_25/IN ),
    .O(\Operands_Classification/YRegister/Q [25]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X74Y127" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_24  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_24/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/YRegister/Q_24/IN ),
    .O(\Operands_Classification/YRegister/Q [24]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \FS_Module/state_reg_FSM_FFd37-In/FS_Module/state_reg_FSM_FFd37-In_CMUX_Delay  (
    .I(\FS_Module/state_reg_FSM_FFd41_3333 ),
    .O(\FS_Module/state_reg_FSM_FFd41_0 )
  );
  X_BUF   \FS_Module/state_reg_FSM_FFd37-In/FS_Module/state_reg_FSM_FFd37-In_BMUX_Delay  (
    .I(\FS_Module/state_reg_FSM_FFd39_pack_2 ),
    .O(\FS_Module/state_reg_FSM_FFd39_4192 )
  );
  X_BUF   \FS_Module/state_reg_FSM_FFd37-In/FS_Module/state_reg_FSM_FFd37-In_AMUX_Delay  (
    .I(\FS_Module/state_reg_FSM_FFd37_3336 ),
    .O(\FS_Module/state_reg_FSM_FFd37_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X74Y132" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd41  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd41/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd41/IN ),
    .O(\FS_Module/state_reg_FSM_FFd41_3333 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X74Y132" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd39  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd39/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd39/IN ),
    .O(\FS_Module/state_reg_FSM_FFd39_pack_2 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X74Y132" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd38  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd38/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd38/IN ),
    .O(\FS_Module/state_reg_FSM_FFd37-In ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X74Y132" ),
    .INIT ( 32'hF0F0F0F0 ))
  \FS_Module/state_reg_FSM_FFd37-In_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\FS_Module/state_reg_FSM_FFd37-In ),
    .ADR4(1'b1),
    .O(\FS_Module/state_reg_FSM_FFd37-In_rt_3329 )
  );
  X_FF #(
    .LOC ( "SLICE_X74Y132" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd37  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd37/CLK ),
    .I(\FS_Module/state_reg_FSM_FFd37-In_rt_3329 ),
    .O(\FS_Module/state_reg_FSM_FFd37_3336 ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_BUF   \Sh341/Sh341_CMUX_Delay  (
    .I(Sh341_3412),
    .O(Sh341_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X76Y125" ))
  Sh341 (
    .IA(N52),
    .IB(N53),
    .O(Sh341_3412),
    .SEL(\Normalization_Smallest_Significand/ESRegister/Q [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y125" ),
    .INIT ( 64'hFB73D951EA62C840 ))
  Sh341_F (
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR3(\Operands_Classification/DmC/Q<19>_0 ),
    .ADR4(\Operands_Classification/DmC/Q<11>_0 ),
    .ADR5(\Operands_Classification/DmC/Q<10>_0 ),
    .ADR2(\Operands_Classification/DmC/Q<18>_0 ),
    .O(N52)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y125" ),
    .INIT ( 64'hF7B3D591E6A2C480 ))
  Sh341_G (
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR2(\Operands_Classification/DmC/Q [21]),
    .ADR4(\Operands_Classification/DmC/Q<13>_0 ),
    .ADR5(\Operands_Classification/DmC/Q<12>_0 ),
    .ADR3(\Operands_Classification/DmC/Q<20>_0 ),
    .O(N53)
  );
  X_BUF   \Operands_Classification/DMC/Q<1>/Operands_Classification/DMC/Q<1>_BMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [1]),
    .O(\Operands_Classification/DmC/Q<1>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X71Y122" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_1  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_1/CLK ),
    .I(\Operands_Classification/MDM [1]),
    .O(\Operands_Classification/DMC/Q [1]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X71Y122" ),
    .INIT ( 64'hFFCC00CCFFCC00CC ))
  \Operands_Classification/Dir_M/Mmux_S121  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR1(\Operands_Classification/DYP/Q [1]),
    .ADR4(\Operands_Classification/XRegister/Q<1>_0 ),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [1])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X71Y122" ),
    .INIT ( 32'hCCFFCC00 ))
  \Operands_Classification/Dir_m/Mmux_S121  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR1(\Operands_Classification/DYP/Q [1]),
    .ADR4(\Operands_Classification/XRegister/Q<1>_0 ),
    .O(\Operands_Classification/MDm [1])
  );
  X_FF #(
    .LOC ( "SLICE_X71Y122" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_1  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_1/CLK ),
    .I(\Operands_Classification/MDm [1]),
    .O(\Operands_Classification/DmC/Q [1]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X71Y120" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_7  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_7/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/DYP/Q_7/IN ),
    .O(\Operands_Classification/DYP/Q [7]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X71Y120" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_6  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_6/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/DYP/Q_6/IN ),
    .O(\Operands_Classification/DYP/Q [6]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X71Y120" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_5  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_5/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/DYP/Q_5/IN ),
    .O(\Operands_Classification/DYP/Q [5]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X71Y120" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_4  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_4/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/DYP/Q_4/IN ),
    .O(\Operands_Classification/DYP/Q [4]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Operands_Classification/DMC/Q<28>/Operands_Classification/DMC/Q<28>_AMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [28]),
    .O(\Operands_Classification/DmC/Q<28>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X70Y124" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_28  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_28/CLK ),
    .I(\Operands_Classification/MDM [28]),
    .O(\Operands_Classification/DMC/Q [28]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X70Y124" ),
    .INIT ( 64'hFF0FF000FF0FF000 ))
  \Operands_Classification/Dir_M/Mmux_S211  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q [28]),
    .ADR3(\Operands_Classification/XRegister/Q [28]),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [28])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X70Y124" ),
    .INIT ( 32'hFFF00F00 ))
  \Operands_Classification/Dir_m/Mmux_S211  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q [28]),
    .ADR3(\Operands_Classification/XRegister/Q [28]),
    .O(\Operands_Classification/MDm [28])
  );
  X_FF #(
    .LOC ( "SLICE_X70Y124" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_28  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_28/CLK ),
    .I(\Operands_Classification/MDm [28]),
    .O(\Operands_Classification/DmC/Q [28]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Operands_Classification/XRegister/Q<11>/Operands_Classification/XRegister/Q<11>_DMUX_Delay  (
    .I(\Operands_Classification/XRegister/Q [3]),
    .O(\Operands_Classification/XRegister/Q<3>_0 )
  );
  X_BUF   \Operands_Classification/XRegister/Q<11>/Operands_Classification/XRegister/Q<11>_CMUX_Delay  (
    .I(\Operands_Classification/XRegister/Q [2]),
    .O(\Operands_Classification/XRegister/Q<2>_0 )
  );
  X_BUF   \Operands_Classification/XRegister/Q<11>/Operands_Classification/XRegister/Q<11>_BMUX_Delay  (
    .I(\Operands_Classification/XRegister/Q [1]),
    .O(\Operands_Classification/XRegister/Q<1>_0 )
  );
  X_BUF   \Operands_Classification/XRegister/Q<11>/Operands_Classification/XRegister/Q<11>_AMUX_Delay  (
    .I(\Operands_Classification/XRegister/Q [0]),
    .O(\Operands_Classification/XRegister/Q<0>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X71Y124" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_11  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_11/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/XRegister/Q_11/IN ),
    .O(\Operands_Classification/XRegister/Q [11]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X71Y124" ),
    .INIT ( 32'hCCCCCCCC ))
  Data_X_3_IBUF_rt (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(Data_X_3_IBUF_4293),
    .O(Data_X_3_IBUF_rt_2696)
  );
  X_FF #(
    .LOC ( "SLICE_X71Y124" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_3  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_3/CLK ),
    .I(Data_X_3_IBUF_rt_2696),
    .O(\Operands_Classification/XRegister/Q [3]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X71Y124" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_10  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_10/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/XRegister/Q_10/IN ),
    .O(\Operands_Classification/XRegister/Q [10]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X71Y124" ),
    .INIT ( 32'hAAAAAAAA ))
  Data_X_2_IBUF_rt (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(Data_X_2_IBUF_4292),
    .O(Data_X_2_IBUF_rt_2698)
  );
  X_FF #(
    .LOC ( "SLICE_X71Y124" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_2  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_2/CLK ),
    .I(Data_X_2_IBUF_rt_2698),
    .O(\Operands_Classification/XRegister/Q [2]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X71Y124" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_9  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_9/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/XRegister/Q_9/IN ),
    .O(\Operands_Classification/XRegister/Q [9]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X71Y124" ),
    .INIT ( 32'hFF00FF00 ))
  Data_X_1_IBUF_rt (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(Data_X_1_IBUF_4291),
    .O(Data_X_1_IBUF_rt_2693)
  );
  X_FF #(
    .LOC ( "SLICE_X71Y124" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_1  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_1/CLK ),
    .I(Data_X_1_IBUF_rt_2693),
    .O(\Operands_Classification/XRegister/Q [1]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X71Y124" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_8  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_8/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/XRegister/Q_8/IN ),
    .O(\Operands_Classification/XRegister/Q [8]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X71Y124" ),
    .INIT ( 32'hCCCCCCCC ))
  Data_X_0_IBUF_rt (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(Data_X_0_IBUF_4290),
    .O(Data_X_0_IBUF_rt_2710)
  );
  X_FF #(
    .LOC ( "SLICE_X71Y124" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_0  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_0/CLK ),
    .I(Data_X_0_IBUF_rt_2710),
    .O(\Operands_Classification/XRegister/Q [0]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Operands_Classification/YRegister/Q<3>/Operands_Classification/YRegister/Q<3>_DMUX_Delay  (
    .I(\Operands_Classification/YRegister/Q [11]),
    .O(\Operands_Classification/YRegister/Q<11>_0 )
  );
  X_BUF   \Operands_Classification/YRegister/Q<3>/Operands_Classification/YRegister/Q<3>_CMUX_Delay  (
    .I(\Operands_Classification/YRegister/Q [10]),
    .O(\Operands_Classification/YRegister/Q<10>_0 )
  );
  X_BUF   \Operands_Classification/YRegister/Q<3>/Operands_Classification/YRegister/Q<3>_BMUX_Delay  (
    .I(\Operands_Classification/YRegister/Q [9]),
    .O(\Operands_Classification/YRegister/Q<9>_0 )
  );
  X_BUF   \Operands_Classification/YRegister/Q<3>/Operands_Classification/YRegister/Q<3>_AMUX_Delay  (
    .I(\Operands_Classification/YRegister/Q [8]),
    .O(\Operands_Classification/YRegister/Q<8>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X70Y125" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_3  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_3/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/YRegister/Q_3/IN ),
    .O(\Operands_Classification/YRegister/Q [3]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X70Y125" ),
    .INIT ( 32'hFF00FF00 ))
  Data_Y_11_IBUF_rt (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(Data_Y_11_IBUF_4337),
    .O(Data_Y_11_IBUF_rt_2621)
  );
  X_FF #(
    .LOC ( "SLICE_X70Y125" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_11  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_11/CLK ),
    .I(Data_Y_11_IBUF_rt_2621),
    .O(\Operands_Classification/YRegister/Q [11]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X70Y125" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_2  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_2/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/YRegister/Q_2/IN ),
    .O(\Operands_Classification/YRegister/Q [2]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X70Y125" ),
    .INIT ( 32'hAAAAAAAA ))
  Data_Y_10_IBUF_rt (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(Data_Y_10_IBUF_4334),
    .O(Data_Y_10_IBUF_rt_2623)
  );
  X_FF #(
    .LOC ( "SLICE_X70Y125" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_10  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_10/CLK ),
    .I(Data_Y_10_IBUF_rt_2623),
    .O(\Operands_Classification/YRegister/Q [10]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X70Y125" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_1  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_1/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/YRegister/Q_1/IN ),
    .O(\Operands_Classification/YRegister/Q [1]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X70Y125" ),
    .INIT ( 32'hFF00FF00 ))
  Data_Y_9_IBUF_rt (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(Data_Y_9_IBUF_4304),
    .O(Data_Y_9_IBUF_rt_2618)
  );
  X_FF #(
    .LOC ( "SLICE_X70Y125" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_9  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_9/CLK ),
    .I(Data_Y_9_IBUF_rt_2618),
    .O(\Operands_Classification/YRegister/Q [9]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X70Y125" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_0  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_0/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/YRegister/Q_0/IN ),
    .O(\Operands_Classification/YRegister/Q [0]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X70Y125" ),
    .INIT ( 32'hAAAAAAAA ))
  Data_Y_8_IBUF_rt (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(Data_Y_8_IBUF_4303),
    .O(Data_Y_8_IBUF_rt_2635)
  );
  X_FF #(
    .LOC ( "SLICE_X70Y125" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_8  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_8/CLK ),
    .I(Data_Y_8_IBUF_rt_2635),
    .O(\Operands_Classification/YRegister/Q [8]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Operands_Classification/DMC/Q<2>/Operands_Classification/DMC/Q<2>_CMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [2]),
    .O(\Operands_Classification/DmC/Q<2>_0 )
  );
  X_BUF   \Operands_Classification/DMC/Q<2>/Operands_Classification/DMC/Q<2>_BMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [4]),
    .O(\Operands_Classification/DmC/Q<4>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X71Y121" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_2  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_2/CLK ),
    .I(\Operands_Classification/MDM [2]),
    .O(\Operands_Classification/DMC/Q [2]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X71Y121" ),
    .INIT ( 64'hF0FFF000F0FFF000 ))
  \Operands_Classification/Dir_M/Mmux_S231  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q [2]),
    .ADR2(\Operands_Classification/XRegister/Q<2>_0 ),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X71Y121" ),
    .INIT ( 32'hFFF000F0 ))
  \Operands_Classification/Dir_m/Mmux_S231  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q [2]),
    .ADR2(\Operands_Classification/XRegister/Q<2>_0 ),
    .O(\Operands_Classification/MDm [2])
  );
  X_FF #(
    .LOC ( "SLICE_X71Y121" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_2  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_2/CLK ),
    .I(\Operands_Classification/MDm [2]),
    .O(\Operands_Classification/DmC/Q [2]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X71Y121" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_4  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_4/CLK ),
    .I(\Operands_Classification/MDM [4]),
    .O(\Operands_Classification/DMC/Q [4]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X71Y121" ),
    .INIT ( 64'hAFAFA0A0AFAFA0A0 ))
  \Operands_Classification/Dir_M/Mmux_S271  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q [4]),
    .ADR0(\Operands_Classification/XRegister/Q [4]),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X71Y121" ),
    .INIT ( 32'hFAFA0A0A ))
  \Operands_Classification/Dir_m/Mmux_S271  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q [4]),
    .ADR0(\Operands_Classification/XRegister/Q [4]),
    .O(\Operands_Classification/MDm [4])
  );
  X_FF #(
    .LOC ( "SLICE_X71Y121" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_4  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_4/CLK ),
    .I(\Operands_Classification/MDm [4]),
    .O(\Operands_Classification/DmC/Q [4]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X71Y123" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_7  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_7/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/XRegister/Q_7/IN ),
    .O(\Operands_Classification/XRegister/Q [7]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X71Y123" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_6  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_6/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/XRegister/Q_6/IN ),
    .O(\Operands_Classification/XRegister/Q [6]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X71Y123" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_5  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_5/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/XRegister/Q_5/IN ),
    .O(\Operands_Classification/XRegister/Q [5]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X71Y123" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/XRegister/Q_4  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/XRegister/Q_4/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/XRegister/Q_4/IN ),
    .O(\Operands_Classification/XRegister/Q [4]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X71Y125" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_7  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_7/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/YRegister/Q_7/IN ),
    .O(\Operands_Classification/YRegister/Q [7]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X71Y125" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_6  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_6/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/YRegister/Q_6/IN ),
    .O(\Operands_Classification/YRegister/Q [6]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X71Y125" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_5  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_5/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/YRegister/Q_5/IN ),
    .O(\Operands_Classification/YRegister/Q [5]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X71Y125" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_4  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_4/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/YRegister/Q_4/IN ),
    .O(\Operands_Classification/YRegister/Q [4]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X71Y127" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_15  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_15/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/YRegister/Q_15/IN ),
    .O(\Operands_Classification/YRegister/Q [15]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X71Y127" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_14  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_14/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/YRegister/Q_14/IN ),
    .O(\Operands_Classification/YRegister/Q [14]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X71Y127" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_13  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_13/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/YRegister/Q_13/IN ),
    .O(\Operands_Classification/YRegister/Q [13]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X71Y127" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_12  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_12/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/YRegister/Q_12/IN ),
    .O(\Operands_Classification/YRegister/Q [12]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X73Y122" ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005125  (
    .IA(N46),
    .IB(N47),
    .O(\Normalization_Smallest_Significand/sgfsn [1]),
    .SEL(\Normalization_Smallest_Significand/ESRegister/Q [2])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X73Y122" ),
    .INIT ( 64'h0000FFFA00005550 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005125_F  (
    .ADR1(1'b1),
    .ADR4(\Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 ),
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .ADR2(\Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005121 ),
    .ADR3(\Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005122_4452 ),
    .ADR5(Sh391_4416),
    .O(N46)
  );
  X_FF #(
    .LOC ( "SLICE_X73Y122" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/SGFmRegister/Q_1  (
    .CE(\FS_Module/state_reg_FSM_FFd37_0 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_1/CLK ),
    .I(\Normalization_Smallest_Significand/sgfsn [1]),
    .O(\Normalization_Smallest_Significand/SGFmRegister/Q [1]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X73Y122" ),
    .INIT ( 64'h0062007300400051 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005125_G  (
    .ADR3(\Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 ),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .ADR5(Sh21),
    .ADR4(N23),
    .ADR2(Sh13),
    .O(N47)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X73Y122" ),
    .INIT ( 64'hCCFFF0AACC00F0AA ))
  Sh131 (
    .ADR0(\Operands_Classification/DmC/Q<11>_0 ),
    .ADR2(\Operands_Classification/DmC/Q<12>_0 ),
    .ADR1(\Operands_Classification/DmC/Q<14>_0 ),
    .ADR5(\Operands_Classification/DmC/Q<13>_0 ),
    .ADR4(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .ADR3(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .O(Sh13)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X73Y122" ),
    .INIT ( 64'h0F0C030008080808 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005123  (
    .ADR3(\Operands_Classification/DmC/Q<0>_0 ),
    .ADR0(\Operands_Classification/DmC/Q<1>_0 ),
    .ADR4(\Operands_Classification/DmC/Q<2>_0 ),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .ADR5(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .O(\Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005122_4452 )
  );
  X_BUF   \Sh101/Sh101_CMUX_Delay  (
    .I(Sh281_2754),
    .O(Sh281_0)
  );
  X_BUF   \Sh101/Sh101_BMUX_Delay  (
    .I(Sh111),
    .O(Sh111_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X72Y122" ))
  Sh281 (
    .IA(N50),
    .IB(N51),
    .O(Sh281_2754),
    .SEL(\Normalization_Smallest_Significand/ESRegister/Q [0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X72Y122" ),
    .INIT ( 64'hF7D5E6C4B391A280 ))
  Sh281_F (
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .ADR2(\Operands_Classification/DmC/Q<14>_0 ),
    .ADR5(\Operands_Classification/DmC/Q<12>_0 ),
    .ADR4(\Operands_Classification/DmC/Q<4>_0 ),
    .ADR3(\Operands_Classification/DmC/Q<6>_0 ),
    .O(N50)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X72Y122" ),
    .INIT ( 64'hAFA0CFCFAFA0C0C0 ))
  Sh281_G (
    .ADR4(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR0(\Operands_Classification/DmC/Q<15>_0 ),
    .ADR3(\Operands_Classification/DmC/Q<7>_0 ),
    .ADR5(\Operands_Classification/DmC/Q<5>_0 ),
    .ADR1(\Operands_Classification/DmC/Q<13>_0 ),
    .O(N51)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X72Y122" ),
    .INIT ( 64'hEEEE2222EEEE2222 ))
  Sh1011 (
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR4(\Operands_Classification/DmC/Q<11>_0 ),
    .ADR0(\Operands_Classification/DmC/Q<9>_0 ),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .ADR5(1'b1),
    .O(Sh101)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X72Y122" ),
    .INIT ( 32'hFC30FC30 ))
  Sh1111 (
    .ADR2(\Operands_Classification/DmC/Q<10>_0 ),
    .ADR3(\Operands_Classification/DmC/Q<12>_0 ),
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .O(Sh111)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X72Y122" ),
    .INIT ( 64'hFF02FF46FF13FF57 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000523_SW0  (
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .ADR2(\Operands_Classification/DmC/Q<22>_0 ),
    .ADR5(\Operands_Classification/DmC/Q<20>_0 ),
    .ADR4(\Operands_Classification/DmC/Q [21]),
    .ADR3(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .O(N19)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X73Y123" ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000526  (
    .IA(N44),
    .IB(N45),
    .O(\Normalization_Smallest_Significand/sgfsn [9]),
    .SEL(\Normalization_Smallest_Significand/ESRegister/Q [4])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X73Y123" ),
    .INIT ( 64'h3313220231112000 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000526_F  (
    .ADR1(\Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 ),
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR5(Sh13),
    .ADR3(Sh21),
    .ADR4(Sh311_0),
    .O(N44)
  );
  X_FF #(
    .LOC ( "SLICE_X73Y123" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/SGFmRegister/Q_9  (
    .CE(\FS_Module/state_reg_FSM_FFd37_0 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_9/CLK ),
    .I(\Normalization_Smallest_Significand/sgfsn [9]),
    .O(\Normalization_Smallest_Significand/SGFmRegister/Q [9]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X73Y123" ),
    .INIT ( 64'h0000000000000005 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000526_G  (
    .ADR1(1'b1),
    .ADR5(\Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 ),
    .ADR4(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR3(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .O(N45)
  );
  X_FF #(
    .LOC ( "SLICE_X73Y123" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/SGFmRegister/Q_10  (
    .CE(\FS_Module/state_reg_FSM_FFd37_0 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_10/CLK ),
    .I(\Normalization_Smallest_Significand/sgfsn [10]),
    .O(\Normalization_Smallest_Significand/SGFmRegister/Q [10]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X73Y123" ),
    .INIT ( 64'h000F000A00050000 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000527  (
    .ADR1(1'b1),
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .ADR3(\Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 ),
    .ADR5(Sh361_0),
    .ADR4(Sh321),
    .O(\Normalization_Smallest_Significand/sgfsn [10])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X73Y123" ),
    .INIT ( 64'hFFFCF3F00F0C0300 ))
  Sh3211 (
    .ADR0(1'b1),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .ADR4(Sh101),
    .ADR3(Sh102),
    .ADR5(Sh18),
    .O(Sh321)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X72Y121" ),
    .INIT ( 64'h00FF000000000000 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000511  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .ADR3(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR5(Sh20),
    .O(\Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n00051 )
  );
  X_FF #(
    .LOC ( "SLICE_X72Y121" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/SGFmRegister/Q_0  (
    .CE(\FS_Module/state_reg_FSM_FFd37_0 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_0/CLK ),
    .I(\Normalization_Smallest_Significand/sgfsn [0]),
    .O(\Normalization_Smallest_Significand/SGFmRegister/Q [0]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X72Y121" ),
    .INIT ( 64'h5511555144004440 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000515  (
    .ADR0(\Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 ),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .ADR2(Sh261_0),
    .ADR4(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .ADR3(\Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n00051 ),
    .ADR5(\Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000511_0 ),
    .O(\Normalization_Smallest_Significand/sgfsn [0])
  );
  X_FF #(
    .LOC ( "SLICE_X72Y126" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_23  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_23/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/YRegister/Q_23/IN ),
    .O(\Operands_Classification/YRegister/Q [23]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X72Y126" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_22  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_22/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/YRegister/Q_22/IN ),
    .O(\Operands_Classification/YRegister/Q [22]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X72Y126" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_21  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_21/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/YRegister/Q_21/IN ),
    .O(\Operands_Classification/YRegister/Q [21]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X72Y126" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_20  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_20/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/YRegister/Q_20/IN ),
    .O(\Operands_Classification/YRegister/Q [20]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X72Y123" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_11  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_11/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/DYP/Q_11/IN ),
    .O(\Operands_Classification/DYP/Q [11]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X72Y123" ),
    .INIT ( 64'hFFFFFF0000FF0000 ))
  Sh1021 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\Operands_Classification/DmC/Q<10>_0 ),
    .ADR4(\Operands_Classification/DmC/Q<8>_0 ),
    .ADR3(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .O(Sh102)
  );
  X_FF #(
    .LOC ( "SLICE_X72Y123" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_10  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_10/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/DYP/Q_10/IN ),
    .O(\Operands_Classification/DYP/Q [10]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X72Y123" ),
    .INIT ( 64'hF0B000B0F0800080 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005122  (
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR3(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .ADR0(\Operands_Classification/DmC/Q<9>_0 ),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .ADR5(\Operands_Classification/DmC/Q<7>_0 ),
    .ADR4(Sh102),
    .O(\Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005121 )
  );
  X_FF #(
    .LOC ( "SLICE_X72Y123" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_9  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_9/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/DYP/Q_9/IN ),
    .O(\Operands_Classification/DYP/Q [9]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X72Y123" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_8  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_8/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/DYP/Q_8/IN ),
    .O(\Operands_Classification/DYP/Q [8]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X73Y124" ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000522  (
    .IA(N42),
    .IB(N43),
    .O(\Normalization_Smallest_Significand/sgfsn [5]),
    .SEL(\Normalization_Smallest_Significand/ESRegister/Q [4])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X73Y124" ),
    .INIT ( 64'h3233222310110001 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000522_F  (
    .ADR1(\Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 ),
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR4(Sh13),
    .ADR3(N23),
    .ADR5(Sh311_0),
    .O(N42)
  );
  X_FF #(
    .LOC ( "SLICE_X73Y124" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/SGFmRegister/Q_5  (
    .CE(\FS_Module/state_reg_FSM_FFd37_0 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_5/CLK ),
    .I(\Normalization_Smallest_Significand/sgfsn [5]),
    .O(\Normalization_Smallest_Significand/SGFmRegister/Q [5]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X73Y124" ),
    .INIT ( 64'h0000003700000004 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000522_G  (
    .ADR3(\Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 ),
    .ADR4(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .ADR5(Sh21),
    .O(N43)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X73Y124" ),
    .INIT ( 64'hF3EEF322C0EEC022 ))
  Sh211 (
    .ADR0(\Operands_Classification/DmC/Q<19>_0 ),
    .ADR5(\Operands_Classification/DmC/Q<20>_0 ),
    .ADR4(\Operands_Classification/DmC/Q [21]),
    .ADR2(\Operands_Classification/DmC/Q<22>_0 ),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .ADR3(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .O(Sh21)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X73Y124" ),
    .INIT ( 64'h0A5F0A5F1111BBBB ))
  Sh271_SW0 (
    .ADR4(\Operands_Classification/DmC/Q<4>_0 ),
    .ADR1(\Operands_Classification/DmC/Q<3>_0 ),
    .ADR2(\Operands_Classification/DmC/Q<6>_0 ),
    .ADR3(\Operands_Classification/DmC/Q<5>_0 ),
    .ADR5(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .O(N23)
  );
  X_FF #(
    .LOC ( "SLICE_X72Y127" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/ASRegister/Q_0  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/ASRegister/Q_0/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/ASRegister/Q_0/IN ),
    .O(\Operands_Classification/ASRegister/Q_0_4369 ),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X73Y125" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_31  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_31/CLK ),
    .I(\Operands_Classification/QYF [31]),
    .O(\Operands_Classification/DYP/Q [31]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X73Y125" ),
    .INIT ( 64'h3C3C3C3C3C3C3C3C ))
  \Operands_Classification/DY_Inv/Mmux_Fixed_Data<31>11  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR1(\Operands_Classification/YRegister/Q [31]),
    .ADR2(\Operands_Classification/ASRegister/Q_0_4369 ),
    .O(\Operands_Classification/QYF [31])
  );
  X_FF #(
    .LOC ( "SLICE_X73Y125" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_30  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_30/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/DYP/Q_30/IN ),
    .O(\Operands_Classification/DYP/Q [30]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X73Y125" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_29  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_29/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/DYP/Q_29/IN ),
    .O(\Operands_Classification/DYP/Q [29]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X73Y125" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_28  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_28/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/DYP/Q_28/IN ),
    .O(\Operands_Classification/DYP/Q [28]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Operands_Classification/DMC/Q<19>/Operands_Classification/DMC/Q<19>_AMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [19]),
    .O(\Operands_Classification/DmC/Q<19>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X73Y126" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_19  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_19/CLK ),
    .I(\Operands_Classification/MDM [19]),
    .O(\Operands_Classification/DMC/Q [19]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X73Y126" ),
    .INIT ( 64'hAAAAFF00AAAAFF00 ))
  \Operands_Classification/Dir_M/Mmux_S111  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR4(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR3(\Operands_Classification/DYP/Q [19]),
    .ADR0(\Operands_Classification/XRegister/Q [19]),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [19])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X73Y126" ),
    .INIT ( 32'hFF00AAAA ))
  \Operands_Classification/Dir_m/Mmux_S111  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR4(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR3(\Operands_Classification/DYP/Q [19]),
    .ADR0(\Operands_Classification/XRegister/Q [19]),
    .O(\Operands_Classification/MDm [19])
  );
  X_FF #(
    .LOC ( "SLICE_X73Y126" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_19  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_19/CLK ),
    .I(\Operands_Classification/MDm [19]),
    .O(\Operands_Classification/DmC/Q [19]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X73Y121" ),
    .INIT ( 64'hFFCC3F0CF3C03300 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005203  (
    .ADR0(1'b1),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .ADR5(Sh101),
    .ADR4(Sh111_0),
    .ADR3(\Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005201_4425 ),
    .O(\Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005202_4451 )
  );
  X_FF #(
    .LOC ( "SLICE_X73Y121" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/SGFmRegister/Q_3  (
    .CE(\FS_Module/state_reg_FSM_FFd37_0 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_3/CLK ),
    .I(\Normalization_Smallest_Significand/sgfsn [3]),
    .O(\Normalization_Smallest_Significand/SGFmRegister/Q [3]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X73Y121" ),
    .INIT ( 64'h5555555505010400 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005204  (
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .ADR0(\Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 ),
    .ADR3(Sh291_0),
    .ADR5(\Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000520 ),
    .ADR4(\Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005202_4451 ),
    .O(\Normalization_Smallest_Significand/sgfsn [3])
  );
  X_FF #(
    .LOC ( "SLICE_X75Y123" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/SGFmRegister/Q_17  (
    .CE(\FS_Module/state_reg_FSM_FFd37_0 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_17/CLK ),
    .I(\Normalization_Smallest_Significand/sgfsn [17]),
    .O(\Normalization_Smallest_Significand/SGFmRegister/Q [17]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X75Y123" ),
    .INIT ( 64'h0000070400000300 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000591  (
    .ADR2(\Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 ),
    .ADR4(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR5(Sh21),
    .ADR3(Sh391_4416),
    .O(\Normalization_Smallest_Significand/sgfsn [17])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X75Y123" ),
    .INIT ( 64'h05EF054F05E00540 ))
  Sh391 (
    .ADR3(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .ADR4(\Operands_Classification/DmC/Q<18>_0 ),
    .ADR1(\Operands_Classification/DmC/Q<17>_0 ),
    .ADR5(N13),
    .O(Sh391_4416)
  );
  X_FF #(
    .LOC ( "SLICE_X75Y123" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/SGFmRegister/Q_11  (
    .CE(\FS_Module/state_reg_FSM_FFd37_0 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_11/CLK ),
    .I(\Normalization_Smallest_Significand/sgfsn [11]),
    .O(\Normalization_Smallest_Significand/SGFmRegister/Q [11]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X75Y123" ),
    .INIT ( 64'h000F000C00030000 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000531  (
    .ADR0(1'b1),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .ADR3(\Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 ),
    .ADR5(Sh371),
    .ADR4(Sh331),
    .O(\Normalization_Smallest_Significand/sgfsn [11])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X75Y123" ),
    .INIT ( 64'hFFFCF3F00F0C0300 ))
  Sh3311 (
    .ADR0(1'b1),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR3(Sh101),
    .ADR4(Sh111_0),
    .ADR5(Sh19),
    .O(Sh331)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X75Y126" ),
    .INIT ( 64'hFFCCAAF000CCAAF0 ))
  Sh201 (
    .ADR0(\Operands_Classification/DmC/Q<19>_0 ),
    .ADR1(\Operands_Classification/DmC/Q<20>_0 ),
    .ADR2(\Operands_Classification/DmC/Q<18>_0 ),
    .ADR5(\Operands_Classification/DmC/Q [21]),
    .ADR4(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .ADR3(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .O(Sh20)
  );
  X_FF #(
    .LOC ( "SLICE_X75Y126" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/SGFmRegister/Q_18  (
    .CE(\FS_Module/state_reg_FSM_FFd37_0 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_18/CLK ),
    .I(\Normalization_Smallest_Significand/sgfsn [18]),
    .O(\Normalization_Smallest_Significand/SGFmRegister/Q [18]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X75Y126" ),
    .INIT ( 64'h0101010000010000 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005101  (
    .ADR2(\Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 ),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .ADR3(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .ADR4(Sh18),
    .ADR5(Sh22),
    .O(\Normalization_Smallest_Significand/sgfsn [18])
  );
  X_FF #(
    .LOC ( "SLICE_X75Y126" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/SGFmRegister/Q_14  (
    .CE(\FS_Module/state_reg_FSM_FFd37_0 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_14/CLK ),
    .I(\Normalization_Smallest_Significand/sgfsn [14]),
    .O(\Normalization_Smallest_Significand/SGFmRegister/Q [14]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X75Y126" ),
    .INIT ( 64'h0002000200330000 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000561  (
    .ADR3(\Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 ),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .ADR5(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR0(Sh18),
    .ADR4(Sh361_0),
    .O(\Normalization_Smallest_Significand/sgfsn [14])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X75Y126" ),
    .INIT ( 64'hAACCF0FFAACCF000 ))
  Sh181 (
    .ADR0(\Operands_Classification/DmC/Q<19>_0 ),
    .ADR1(\Operands_Classification/DmC/Q<18>_0 ),
    .ADR5(\Operands_Classification/DmC/Q<16>_0 ),
    .ADR2(\Operands_Classification/DmC/Q<17>_0 ),
    .ADR4(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .ADR3(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .O(Sh18)
  );
  X_BUF   \FS_Module/state_reg_FSM_FFd41-In/FS_Module/state_reg_FSM_FFd41-In_DMUX_Delay  (
    .I(\FS_Module/state_reg_FSM_FFd41-In ),
    .O(\FS_Module/state_reg_FSM_FFd41-In_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X75Y132" ),
    .INIT ( 1'b0 ))
  \FS_Module/state_reg_FSM_FFd42  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd42/CLK ),
    .I(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd42/IN ),
    .O(\FS_Module/state_reg_FSM_FFd41-In ),
    .RST(rst_IBUF_3755),
    .SET(GND)
  );
  X_BUF   \Sh16/Sh16_CMUX_Delay  (
    .I(\Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000511_2997 ),
    .O(\Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000511_0 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X75Y122" ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000513  (
    .IA(N56),
    .IB(N57),
    .O(\Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000511_2997 ),
    .SEL(\Normalization_Smallest_Significand/ESRegister/Q [4])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X75Y122" ),
    .INIT ( 64'hFEF40E04F0F00000 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000513_F  (
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR5(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .ADR3(\Operands_Classification/DmC/Q<1>_0 ),
    .ADR1(\Operands_Classification/DmC/Q<0>_0 ),
    .ADR4(Sh8),
    .O(N56)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X75Y122" ),
    .INIT ( 64'h3F3F3F0F30303000 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000513_G  (
    .ADR0(1'b1),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .ADR3(\Operands_Classification/DmC/Q<22>_0 ),
    .ADR4(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .ADR5(Sh16),
    .O(N57)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X75Y122" ),
    .INIT ( 64'hF0CCFFAAF0CC00AA ))
  Sh161 (
    .ADR0(\Operands_Classification/DmC/Q<14>_0 ),
    .ADR5(\Operands_Classification/DmC/Q<16>_0 ),
    .ADR1(\Operands_Classification/DmC/Q<15>_0 ),
    .ADR2(\Operands_Classification/DmC/Q<17>_0 ),
    .ADR3(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .ADR4(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .O(Sh16)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X75Y122" ),
    .INIT ( 64'hF3F3BB88C0C0BB88 ))
  Sh81 (
    .ADR0(\Operands_Classification/DmC/Q<8>_0 ),
    .ADR3(\Operands_Classification/DmC/Q<6>_0 ),
    .ADR2(\Operands_Classification/DmC/Q<9>_0 ),
    .ADR5(\Operands_Classification/DmC/Q<7>_0 ),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .ADR4(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .O(Sh8)
  );
  X_FF #(
    .LOC ( "SLICE_X75Y124" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/SGFmRegister/Q_12  (
    .CE(\FS_Module/state_reg_FSM_FFd37_0 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_12/CLK ),
    .I(\Normalization_Smallest_Significand/sgfsn [12]),
    .O(\Normalization_Smallest_Significand/SGFmRegister/Q [12]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X75Y124" ),
    .INIT ( 64'h000F000C00030000 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000541  (
    .ADR0(1'b1),
    .ADR3(\Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 ),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .ADR4(Sh341_0),
    .ADR5(Sh421),
    .O(\Normalization_Smallest_Significand/sgfsn [12])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X75Y124" ),
    .INIT ( 64'h5550FFFF55500000 ))
  Sh4211 (
    .ADR1(1'b1),
    .ADR4(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .ADR2(\Operands_Classification/DmC/Q<22>_0 ),
    .ADR3(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .ADR5(Sh16),
    .O(Sh421)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X75Y124" ),
    .INIT ( 64'hFFFFF0F00F0F0000 ))
  Sh3511 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR4(Sh13),
    .ADR5(Sh21),
    .O(Sh351)
  );
  X_FF #(
    .LOC ( "SLICE_X75Y124" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/SGFmRegister/Q_13  (
    .CE(\FS_Module/state_reg_FSM_FFd37_0 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_13/CLK ),
    .I(\Normalization_Smallest_Significand/sgfsn [13]),
    .O(\Normalization_Smallest_Significand/SGFmRegister/Q [13]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X75Y124" ),
    .INIT ( 64'h0303030000000300 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000551  (
    .ADR0(1'b1),
    .ADR4(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .ADR1(\Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 ),
    .ADR5(Sh391_4416),
    .ADR3(Sh351),
    .O(\Normalization_Smallest_Significand/sgfsn [13])
  );
  X_BUF   \Operands_Classification/DMC/Q<15>/Operands_Classification/DMC/Q<15>_DMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [15]),
    .O(\Operands_Classification/DmC/Q<15>_0 )
  );
  X_BUF   \Operands_Classification/DMC/Q<15>/Operands_Classification/DMC/Q<15>_CMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [14]),
    .O(\Operands_Classification/DmC/Q<14>_0 )
  );
  X_BUF   \Operands_Classification/DMC/Q<15>/Operands_Classification/DMC/Q<15>_BMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [11]),
    .O(\Operands_Classification/DmC/Q<11>_0 )
  );
  X_BUF   \Operands_Classification/DMC/Q<15>/Operands_Classification/DMC/Q<15>_AMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [10]),
    .O(\Operands_Classification/DmC/Q<10>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X74Y122" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_15  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_15/CLK ),
    .I(\Operands_Classification/MDM [15]),
    .O(\Operands_Classification/DMC/Q [15]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X74Y122" ),
    .INIT ( 64'hFF0FF000FF0FF000 ))
  \Operands_Classification/Dir_M/Mmux_S71  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q<15>_0 ),
    .ADR3(\Operands_Classification/XRegister/Q [15]),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [15])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X74Y122" ),
    .INIT ( 32'hFFF00F00 ))
  \Operands_Classification/Dir_m/Mmux_S71  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q<15>_0 ),
    .ADR3(\Operands_Classification/XRegister/Q [15]),
    .O(\Operands_Classification/MDm [15])
  );
  X_FF #(
    .LOC ( "SLICE_X74Y122" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_15  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_15/CLK ),
    .I(\Operands_Classification/MDm [15]),
    .O(\Operands_Classification/DmC/Q [15]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X74Y122" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_14  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_14/CLK ),
    .I(\Operands_Classification/MDM [14]),
    .O(\Operands_Classification/DMC/Q [14]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X74Y122" ),
    .INIT ( 64'hFF0FF000FF0FF000 ))
  \Operands_Classification/Dir_M/Mmux_S61  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q<14>_0 ),
    .ADR3(\Operands_Classification/XRegister/Q [14]),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [14])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X74Y122" ),
    .INIT ( 32'hFFF00F00 ))
  \Operands_Classification/Dir_m/Mmux_S61  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q<14>_0 ),
    .ADR3(\Operands_Classification/XRegister/Q [14]),
    .O(\Operands_Classification/MDm [14])
  );
  X_FF #(
    .LOC ( "SLICE_X74Y122" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_14  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_14/CLK ),
    .I(\Operands_Classification/MDm [14]),
    .O(\Operands_Classification/DmC/Q [14]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X74Y122" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_11  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_11/CLK ),
    .I(\Operands_Classification/MDM [11]),
    .O(\Operands_Classification/DMC/Q [11]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X74Y122" ),
    .INIT ( 64'hFF0FF000FF0FF000 ))
  \Operands_Classification/Dir_M/Mmux_S33  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q [11]),
    .ADR3(\Operands_Classification/XRegister/Q [11]),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [11])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X74Y122" ),
    .INIT ( 32'hFFF00F00 ))
  \Operands_Classification/Dir_m/Mmux_S33  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q [11]),
    .ADR3(\Operands_Classification/XRegister/Q [11]),
    .O(\Operands_Classification/MDm [11])
  );
  X_FF #(
    .LOC ( "SLICE_X74Y122" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_11  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_11/CLK ),
    .I(\Operands_Classification/MDm [11]),
    .O(\Operands_Classification/DmC/Q [11]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X74Y122" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_10  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_10/CLK ),
    .I(\Operands_Classification/MDM [10]),
    .O(\Operands_Classification/DMC/Q [10]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X74Y122" ),
    .INIT ( 64'hFF0FF000FF0FF000 ))
  \Operands_Classification/Dir_M/Mmux_S210  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q [10]),
    .ADR3(\Operands_Classification/XRegister/Q [10]),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [10])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X74Y122" ),
    .INIT ( 32'hFFF00F00 ))
  \Operands_Classification/Dir_m/Mmux_S210  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q [10]),
    .ADR3(\Operands_Classification/XRegister/Q [10]),
    .O(\Operands_Classification/MDm [10])
  );
  X_FF #(
    .LOC ( "SLICE_X74Y122" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_10  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_10/CLK ),
    .I(\Operands_Classification/MDm [10]),
    .O(\Operands_Classification/DmC/Q [10]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Operands_Classification/DMC/Q<3>/Operands_Classification/DMC/Q<3>_DMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [3]),
    .O(\Operands_Classification/DmC/Q<3>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X74Y121" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_3  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_3/CLK ),
    .I(\Operands_Classification/MDM [3]),
    .O(\Operands_Classification/DMC/Q [3]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X74Y121" ),
    .INIT ( 64'hFFF000F0FFF000F0 ))
  \Operands_Classification/Dir_M/Mmux_S261  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR2(\Operands_Classification/DYP/Q [3]),
    .ADR4(\Operands_Classification/XRegister/Q<3>_0 ),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X74Y121" ),
    .INIT ( 32'hF0FFF000 ))
  \Operands_Classification/Dir_m/Mmux_S261  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR2(\Operands_Classification/DYP/Q [3]),
    .ADR4(\Operands_Classification/XRegister/Q<3>_0 ),
    .O(\Operands_Classification/MDm [3])
  );
  X_FF #(
    .LOC ( "SLICE_X74Y121" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_3  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_3/CLK ),
    .I(\Operands_Classification/MDm [3]),
    .O(\Operands_Classification/DmC/Q [3]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X75Y121" ),
    .INIT ( 64'hFF33B8B8CC00B8B8 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005202  (
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .ADR4(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .ADR0(\Operands_Classification/DmC/Q<3>_0 ),
    .ADR3(\Operands_Classification/DmC/Q<4>_0 ),
    .ADR2(\Operands_Classification/DmC/Q<1>_0 ),
    .ADR5(\Operands_Classification/DmC/Q<2>_0 ),
    .O(\Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005201_4425 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X75Y121" ),
    .INIT ( 64'h4C4448400C040800 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005211  (
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .ADR3(Sh24),
    .ADR4(Sh8),
    .ADR5(Sh16),
    .O(\Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000521 )
  );
  X_FF #(
    .LOC ( "SLICE_X75Y121" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/SGFmRegister/Q_4  (
    .CE(\FS_Module/state_reg_FSM_FFd37_0 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_4/CLK ),
    .I(\Normalization_Smallest_Significand/sgfsn [4]),
    .O(\Normalization_Smallest_Significand/SGFmRegister/Q [4]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X75Y121" ),
    .INIT ( 64'h5555050555550100 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005213  (
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .ADR0(\Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 ),
    .ADR3(Sh261_0),
    .ADR4(\Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000521 ),
    .ADR5(\Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n00051 ),
    .O(\Normalization_Smallest_Significand/sgfsn [4])
  );
  X_FF #(
    .LOC ( "SLICE_X75Y127" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_19  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_19/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/DYP/Q_19/IN ),
    .O(\Operands_Classification/DYP/Q [19]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X75Y127" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_18  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_18/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/DYP/Q_18/IN ),
    .O(\Operands_Classification/DYP/Q [18]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X75Y127" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_17  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_17/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/DYP/Q_17/IN ),
    .O(\Operands_Classification/DYP/Q [17]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X75Y127" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_16  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_16/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/DYP/Q_16/IN ),
    .O(\Operands_Classification/DYP/Q [16]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X75Y125" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/SGFmRegister/Q_19  (
    .CE(\FS_Module/state_reg_FSM_FFd37_0 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_19/CLK ),
    .I(\Normalization_Smallest_Significand/sgfsn [19]),
    .O(\Normalization_Smallest_Significand/SGFmRegister/Q [19]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X75Y125" ),
    .INIT ( 64'h0003000100020000 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005111  (
    .ADR3(\Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 ),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .ADR5(Sh19),
    .ADR4(Sh23),
    .O(\Normalization_Smallest_Significand/sgfsn [19])
  );
  X_FF #(
    .LOC ( "SLICE_X75Y125" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/SGFmRegister/Q_16  (
    .CE(\FS_Module/state_reg_FSM_FFd37_0 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_16/CLK ),
    .I(\Normalization_Smallest_Significand/sgfsn [16]),
    .O(\Normalization_Smallest_Significand/SGFmRegister/Q [16]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X75Y125" ),
    .INIT ( 64'h0105000501000000 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000581  (
    .ADR2(\Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 ),
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .ADR3(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR4(Sh20),
    .ADR5(Sh421),
    .O(\Normalization_Smallest_Significand/sgfsn [16])
  );
  X_FF #(
    .LOC ( "SLICE_X75Y125" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/SGFmRegister/Q_15  (
    .CE(\FS_Module/state_reg_FSM_FFd37_0 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_15/CLK ),
    .I(\Normalization_Smallest_Significand/sgfsn [15]),
    .O(\Normalization_Smallest_Significand/SGFmRegister/Q [15]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X75Y125" ),
    .INIT ( 64'h0105000401010000 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000571  (
    .ADR2(\Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 ),
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .ADR3(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR5(Sh19),
    .ADR4(Sh371),
    .O(\Normalization_Smallest_Significand/sgfsn [15])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X75Y125" ),
    .INIT ( 64'h33FFE2FF3300E200 ))
  Sh3711 (
    .ADR3(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .ADR0(\Operands_Classification/DmC/Q [21]),
    .ADR4(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .ADR2(\Operands_Classification/DmC/Q<22>_0 ),
    .ADR5(Sh15),
    .O(Sh371)
  );
  X_FF #(
    .LOC ( "SLICE_X73Y127" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_23  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_23/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/DYP/Q_23/IN ),
    .O(\Operands_Classification/DYP/Q [23]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X73Y127" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_22  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_22/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/DYP/Q_22/IN ),
    .O(\Operands_Classification/DYP/Q [22]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X73Y127" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_21  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_21/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/DYP/Q_21/IN ),
    .O(\Operands_Classification/DYP/Q [21]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X73Y127" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DYP/Q_20  (
    .CE(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DYP/Q_20/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/DYP/Q_20/IN ),
    .O(\Operands_Classification/DYP/Q [20]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X74Y125" ),
    .INIT ( 64'hCCCCFF00F0F0AAAA ))
  Sh191 (
    .ADR3(\Operands_Classification/DmC/Q<19>_0 ),
    .ADR0(\Operands_Classification/DmC/Q<17>_0 ),
    .ADR2(\Operands_Classification/DmC/Q<18>_0 ),
    .ADR1(\Operands_Classification/DmC/Q<20>_0 ),
    .ADR5(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .ADR4(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .O(Sh19)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X74Y125" ),
    .INIT ( 64'h3030003030000000 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005201  (
    .ADR0(1'b1),
    .ADR3(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR4(Sh23),
    .ADR5(Sh19),
    .O(\Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000520 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X74Y125" ),
    .INIT ( 64'hFF00FF00FFFF0000 ))
  Sh391_SW0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\Operands_Classification/DmC/Q<16>_0 ),
    .ADR4(\Operands_Classification/DmC/Q<15>_0 ),
    .ADR5(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .O(N13)
  );
  X_BUF   \Normalization_Smallest_Significand/SGFmRegister/Q<25>/Normalization_Smallest_Significand/SGFmRegister/Q<25>_CMUX_Delay  (
    .I(Sh311),
    .O(Sh311_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X74Y124" ))
  Sh3113 (
    .IA(N38),
    .IB(N39),
    .O(Sh311),
    .SEL(\Normalization_Smallest_Significand/ESRegister/Q [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X74Y124" ),
    .INIT ( 64'hFDECB9A875643120 ))
  Sh3113_F (
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR5(\Operands_Classification/DmC/Q<16>_0 ),
    .ADR2(\Operands_Classification/DmC/Q<8>_0 ),
    .ADR3(\Operands_Classification/DmC/Q<7>_0 ),
    .ADR4(\Operands_Classification/DmC/Q<15>_0 ),
    .O(N38)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X74Y124" ),
    .INIT ( 64'hFBD97351EAC86240 ))
  Sh3113_G (
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR4(\Operands_Classification/DmC/Q<18>_0 ),
    .ADR3(\Operands_Classification/DmC/Q<10>_0 ),
    .ADR5(\Operands_Classification/DmC/Q<9>_0 ),
    .ADR2(\Operands_Classification/DmC/Q<17>_0 ),
    .O(N39)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X74Y124" ),
    .INIT ( 64'hFFFFFFFFFFFFFF00 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/out1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\Normalization_Smallest_Significand/ESRegister/Q [6]),
    .ADR4(\Normalization_Smallest_Significand/ESRegister/Q [5]),
    .ADR5(\Normalization_Smallest_Significand/ESRegister/Q [7]),
    .O(\Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 )
  );
  X_FF #(
    .LOC ( "SLICE_X74Y124" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/SGFmRegister/Q_25  (
    .CE(\FS_Module/state_reg_FSM_FFd37_0 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_25/CLK ),
    .I(\Normalization_Smallest_Significand/sgfsn [25]),
    .O(\Normalization_Smallest_Significand/SGFmRegister/Q [25]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X74Y124" ),
    .INIT ( 64'h0000000000000001 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005181  (
    .ADR3(\Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 ),
    .ADR4(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR5(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .O(\Normalization_Smallest_Significand/sgfsn [25])
  );
  X_BUF   \Operands_Classification/DMC/Q<18>/Operands_Classification/DMC/Q<18>_BMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [18]),
    .O(\Operands_Classification/DmC/Q<18>_0 )
  );
  X_BUF   \Operands_Classification/DMC/Q<18>/Operands_Classification/DMC/Q<18>_AMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [20]),
    .O(\Operands_Classification/DmC/Q<20>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X74Y126" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_18  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_18/CLK ),
    .I(\Operands_Classification/MDM [18]),
    .O(\Operands_Classification/DMC/Q [18]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X74Y126" ),
    .INIT ( 64'hAAFFAA00AAFFAA00 ))
  \Operands_Classification/Dir_M/Mmux_S101  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR3(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q [18]),
    .ADR0(\Operands_Classification/XRegister/Q [18]),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [18])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X74Y126" ),
    .INIT ( 32'hFFAA00AA ))
  \Operands_Classification/Dir_m/Mmux_S101  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR3(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q [18]),
    .ADR0(\Operands_Classification/XRegister/Q [18]),
    .O(\Operands_Classification/MDm [18])
  );
  X_FF #(
    .LOC ( "SLICE_X74Y126" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_18  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_18/CLK ),
    .I(\Operands_Classification/MDm [18]),
    .O(\Operands_Classification/DmC/Q [18]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X74Y126" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_20  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_20/CLK ),
    .I(\Operands_Classification/MDM [20]),
    .O(\Operands_Classification/DMC/Q [20]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X74Y126" ),
    .INIT ( 64'hAAFFAA00AAFFAA00 ))
  \Operands_Classification/Dir_M/Mmux_S131  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR3(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q [20]),
    .ADR0(\Operands_Classification/XRegister/Q<20>_0 ),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [20])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X74Y126" ),
    .INIT ( 32'hFFAA00AA ))
  \Operands_Classification/Dir_m/Mmux_S131  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR3(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q [20]),
    .ADR0(\Operands_Classification/XRegister/Q<20>_0 ),
    .O(\Operands_Classification/MDm [20])
  );
  X_FF #(
    .LOC ( "SLICE_X74Y126" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_20  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_20/CLK ),
    .I(\Operands_Classification/MDm [20]),
    .O(\Operands_Classification/DmC/Q [20]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X74Y123" ),
    .INIT ( 64'h3F0F3C0C33033000 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005251  (
    .ADR0(1'b1),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR3(Sh24),
    .ADR4(Sh8),
    .ADR5(Sh16),
    .O(\Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000525 )
  );
  X_FF #(
    .LOC ( "SLICE_X74Y123" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/SGFmRegister/Q_8  (
    .CE(\FS_Module/state_reg_FSM_FFd37_0 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_8/CLK ),
    .I(\Normalization_Smallest_Significand/sgfsn [8]),
    .O(\Normalization_Smallest_Significand/SGFmRegister/Q [8]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X74Y123" ),
    .INIT ( 64'h030F000C03030000 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005252  (
    .ADR0(1'b1),
    .ADR3(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .ADR2(\Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 ),
    .ADR5(Sh341_0),
    .ADR4(\Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000525 ),
    .O(\Normalization_Smallest_Significand/sgfsn [8])
  );
  X_FF #(
    .LOC ( "SLICE_X74Y123" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/SGFmRegister/Q_7  (
    .CE(\FS_Module/state_reg_FSM_FFd37_0 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_7/CLK ),
    .I(\Normalization_Smallest_Significand/sgfsn [7]),
    .O(\Normalization_Smallest_Significand/SGFmRegister/Q [7]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X74Y123" ),
    .INIT ( 64'h0057004600130002 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000524  (
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .ADR3(\Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 ),
    .ADR2(N21_0),
    .ADR4(Sh291_0),
    .ADR5(Sh331),
    .O(\Normalization_Smallest_Significand/sgfsn [7])
  );
  X_FF #(
    .LOC ( "SLICE_X74Y123" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/SGFmRegister/Q_6  (
    .CE(\FS_Module/state_reg_FSM_FFd37_0 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_6/CLK ),
    .I(\Normalization_Smallest_Significand/sgfsn [6]),
    .O(\Normalization_Smallest_Significand/SGFmRegister/Q [6]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X74Y123" ),
    .INIT ( 64'h0037002600150004 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000523  (
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .ADR3(\Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 ),
    .ADR2(N19),
    .ADR4(Sh281_0),
    .ADR5(Sh321),
    .O(\Normalization_Smallest_Significand/sgfsn [6])
  );
  X_FF #(
    .LOC ( "SLICE_X77Y127" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_19  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_19/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/YRegister/Q_19/IN ),
    .O(\Operands_Classification/YRegister/Q [19]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X77Y127" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_18  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_18/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/YRegister/Q_18/IN ),
    .O(\Operands_Classification/YRegister/Q [18]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X77Y127" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_17  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_17/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/YRegister/Q_17/IN ),
    .O(\Operands_Classification/YRegister/Q [17]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X77Y127" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/YRegister/Q_16  (
    .CE(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .CLK(\NlwBufferSignal_Operands_Classification/YRegister/Q_16/CLK ),
    .I(\NlwBufferSignal_Operands_Classification/YRegister/Q_16/IN ),
    .O(\Operands_Classification/YRegister/Q [16]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Operands_Classification/DMC/Q<12>/Operands_Classification/DMC/Q<12>_DMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [12]),
    .O(\Operands_Classification/DmC/Q<12>_0 )
  );
  X_BUF   \Operands_Classification/DMC/Q<12>/Operands_Classification/DMC/Q<12>_CMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [5]),
    .O(\Operands_Classification/DmC/Q<5>_0 )
  );
  X_BUF   \Operands_Classification/DMC/Q<12>/Operands_Classification/DMC/Q<12>_BMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [8]),
    .O(\Operands_Classification/DmC/Q<8>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X77Y122" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_12  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_12/CLK ),
    .I(\Operands_Classification/MDM [12]),
    .O(\Operands_Classification/DMC/Q [12]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X77Y122" ),
    .INIT ( 64'hFFF00F00FFF00F00 ))
  \Operands_Classification/Dir_M/Mmux_S41  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR3(\Operands_Classification/DYP/Q<12>_0 ),
    .ADR4(\Operands_Classification/XRegister/Q [12]),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [12])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X77Y122" ),
    .INIT ( 32'hFF0FF000 ))
  \Operands_Classification/Dir_m/Mmux_S41  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR3(\Operands_Classification/DYP/Q<12>_0 ),
    .ADR4(\Operands_Classification/XRegister/Q [12]),
    .O(\Operands_Classification/MDm [12])
  );
  X_FF #(
    .LOC ( "SLICE_X77Y122" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_12  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_12/CLK ),
    .I(\Operands_Classification/MDm [12]),
    .O(\Operands_Classification/DmC/Q [12]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X77Y122" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_5  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_5/CLK ),
    .I(\Operands_Classification/MDM [5]),
    .O(\Operands_Classification/DMC/Q [5]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X77Y122" ),
    .INIT ( 64'hF0F0FF00F0F0FF00 ))
  \Operands_Classification/Dir_M/Mmux_S281  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR3(\Operands_Classification/DYP/Q [5]),
    .ADR2(\Operands_Classification/XRegister/Q [5]),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [5])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X77Y122" ),
    .INIT ( 32'hFF00F0F0 ))
  \Operands_Classification/Dir_m/Mmux_S281  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR3(\Operands_Classification/DYP/Q [5]),
    .ADR2(\Operands_Classification/XRegister/Q [5]),
    .O(\Operands_Classification/MDm [5])
  );
  X_FF #(
    .LOC ( "SLICE_X77Y122" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_5  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_5/CLK ),
    .I(\Operands_Classification/MDm [5]),
    .O(\Operands_Classification/DmC/Q [5]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X77Y122" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_8  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_8/CLK ),
    .I(\Operands_Classification/MDM [8]),
    .O(\Operands_Classification/DMC/Q [8]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X77Y122" ),
    .INIT ( 64'hF0FFF000F0FFF000 ))
  \Operands_Classification/Dir_M/Mmux_S311  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q [8]),
    .ADR2(\Operands_Classification/XRegister/Q [8]),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [8])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X77Y122" ),
    .INIT ( 32'hFFF000F0 ))
  \Operands_Classification/Dir_m/Mmux_S311  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q [8]),
    .ADR2(\Operands_Classification/XRegister/Q [8]),
    .O(\Operands_Classification/MDm [8])
  );
  X_FF #(
    .LOC ( "SLICE_X77Y122" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_8  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_8/CLK ),
    .I(\Operands_Classification/MDm [8]),
    .O(\Operands_Classification/DmC/Q [8]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Operands_Classification/DMC/Q<22>/Operands_Classification/DMC/Q<22>_CMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [22]),
    .O(\Operands_Classification/DmC/Q<22>_0 )
  );
  X_BUF   \Operands_Classification/DMC/Q<22>/Operands_Classification/DMC/Q<22>_BMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [17]),
    .O(\Operands_Classification/DmC/Q<17>_0 )
  );
  X_BUF   \Operands_Classification/DMC/Q<22>/Operands_Classification/DMC/Q<22>_AMUX_Delay  (
    .I(\Operands_Classification/DmC/Q [16]),
    .O(\Operands_Classification/DmC/Q<16>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X77Y124" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_22  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_22/CLK ),
    .I(\Operands_Classification/MDM [22]),
    .O(\Operands_Classification/DMC/Q [22]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X77Y124" ),
    .INIT ( 64'hFFF00F00FFF00F00 ))
  \Operands_Classification/Dir_M/Mmux_S151  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR3(\Operands_Classification/DYP/Q [22]),
    .ADR4(\Operands_Classification/XRegister/Q<22>_0 ),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [22])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X77Y124" ),
    .INIT ( 32'hFF0FF000 ))
  \Operands_Classification/Dir_m/Mmux_S151  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR3(\Operands_Classification/DYP/Q [22]),
    .ADR4(\Operands_Classification/XRegister/Q<22>_0 ),
    .O(\Operands_Classification/MDm [22])
  );
  X_FF #(
    .LOC ( "SLICE_X77Y124" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_22  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_22/CLK ),
    .I(\Operands_Classification/MDm [22]),
    .O(\Operands_Classification/DmC/Q [22]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X77Y124" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_17  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_17/CLK ),
    .I(\Operands_Classification/MDM [17]),
    .O(\Operands_Classification/DMC/Q [17]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X77Y124" ),
    .INIT ( 64'hFF0FF000FF0FF000 ))
  \Operands_Classification/Dir_M/Mmux_S91  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q [17]),
    .ADR3(\Operands_Classification/XRegister/Q [17]),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [17])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X77Y124" ),
    .INIT ( 32'hFFF00F00 ))
  \Operands_Classification/Dir_m/Mmux_S91  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q [17]),
    .ADR3(\Operands_Classification/XRegister/Q [17]),
    .O(\Operands_Classification/MDm [17])
  );
  X_FF #(
    .LOC ( "SLICE_X77Y124" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_17  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_17/CLK ),
    .I(\Operands_Classification/MDm [17]),
    .O(\Operands_Classification/DmC/Q [17]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X77Y124" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_16  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_16/CLK ),
    .I(\Operands_Classification/MDM [16]),
    .O(\Operands_Classification/DMC/Q [16]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X77Y124" ),
    .INIT ( 64'hFF0FF000FF0FF000 ))
  \Operands_Classification/Dir_M/Mmux_S81  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q [16]),
    .ADR3(\Operands_Classification/XRegister/Q [16]),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [16])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X77Y124" ),
    .INIT ( 32'hFFF00F00 ))
  \Operands_Classification/Dir_m/Mmux_S81  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR4(\Operands_Classification/DYP/Q [16]),
    .ADR3(\Operands_Classification/XRegister/Q [16]),
    .O(\Operands_Classification/MDm [16])
  );
  X_FF #(
    .LOC ( "SLICE_X77Y124" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_16  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_16/CLK ),
    .I(\Operands_Classification/MDm [16]),
    .O(\Operands_Classification/DmC/Q [16]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_BUF   \Operands_Classification/DMC/Q<21>/Operands_Classification/DMC/Q<21>_CMUX_Delay  (
    .I(Sh361),
    .O(Sh361_0)
  );
  X_BUF   \Operands_Classification/DMC/Q<21>/Operands_Classification/DMC/Q<21>_AMUX_Delay  (
    .I(\Operands_Classification/DmC/Q<21>_pack_3 ),
    .O(\Operands_Classification/DmC/Q [21])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X77Y126" ))
  Sh3611 (
    .IA(N54),
    .IB(N55),
    .O(Sh361),
    .SEL(\Normalization_Smallest_Significand/ESRegister/Q [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X77Y126" ),
    .INIT ( 64'hFB3BCB0BF838C808 ))
  Sh3611_F (
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .ADR3(\Operands_Classification/DmC/Q [21]),
    .ADR0(\Operands_Classification/DmC/Q<20>_0 ),
    .ADR5(\Operands_Classification/DmC/Q<12>_0 ),
    .ADR4(\Operands_Classification/DmC/Q<13>_0 ),
    .O(N54)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X77Y126" ),
    .INIT ( 64'hFFFCFF30CCFCCC30 ))
  Sh3611_G (
    .ADR0(1'b1),
    .ADR3(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR5(\Operands_Classification/DmC/Q<15>_0 ),
    .ADR2(\Operands_Classification/DmC/Q<14>_0 ),
    .ADR4(\Operands_Classification/DmC/Q<22>_0 ),
    .O(N55)
  );
  X_FF #(
    .LOC ( "SLICE_X77Y126" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DMC/Q_21  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DMC/Q_21/CLK ),
    .I(\Operands_Classification/MDM [21]),
    .O(\Operands_Classification/DMC/Q [21]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X77Y126" ),
    .INIT ( 64'hAAAACCCCAAAACCCC ))
  \Operands_Classification/Dir_M/Mmux_S141  (
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR4(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR1(\Operands_Classification/DYP/Q [21]),
    .ADR0(\Operands_Classification/XRegister/Q<21>_0 ),
    .ADR5(1'b1),
    .O(\Operands_Classification/MDM [21])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X77Y126" ),
    .INIT ( 32'hCCCCAAAA ))
  \Operands_Classification/Dir_m/Mmux_S141  (
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\Operands_Classification/CMPRegister/Q_0_4065 ),
    .ADR1(\Operands_Classification/DYP/Q [21]),
    .ADR0(\Operands_Classification/XRegister/Q<21>_0 ),
    .O(\Operands_Classification/MDm [21])
  );
  X_FF #(
    .LOC ( "SLICE_X77Y126" ),
    .INIT ( 1'b0 ))
  \Operands_Classification/DmC/Q_21  (
    .CE(\FS_Module/state_reg_FSM_FFd41_0 ),
    .CLK(\NlwBufferSignal_Operands_Classification/DmC/Q_21/CLK ),
    .I(\Operands_Classification/MDm [21]),
    .O(\Operands_Classification/DmC/Q<21>_pack_3 ),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X77Y123" ),
    .INIT ( 64'h5050500000500000 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005191  (
    .ADR1(1'b1),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR3(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .ADR4(Sh18),
    .ADR5(Sh22),
    .O(\Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000519 )
  );
  X_FF #(
    .LOC ( "SLICE_X77Y123" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/SGFmRegister/Q_2  (
    .CE(\FS_Module/state_reg_FSM_FFd37_0 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_2/CLK ),
    .I(\Normalization_Smallest_Significand/sgfsn [2]),
    .O(\Normalization_Smallest_Significand/SGFmRegister/Q [2]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X77Y123" ),
    .INIT ( 64'h5555050155550400 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005194  (
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .ADR0(\Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 ),
    .ADR3(Sh281_0),
    .ADR4(\Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000519 ),
    .ADR5(\Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005192_0 ),
    .O(\Normalization_Smallest_Significand/sgfsn [2])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X77Y123" ),
    .INIT ( 64'h00FF00FF00FF0000 ))
  Sh241 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\Operands_Classification/DmC/Q<22>_0 ),
    .ADR3(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .ADR4(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .O(Sh24)
  );
  X_FF #(
    .LOC ( "SLICE_X77Y123" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/SGFmRegister/Q_24  (
    .CE(\FS_Module/state_reg_FSM_FFd37_0 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_24/CLK ),
    .I(\Normalization_Smallest_Significand/sgfsn [24]),
    .O(\Normalization_Smallest_Significand/SGFmRegister/Q [24]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X77Y123" ),
    .INIT ( 64'h0000000000000500 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005171  (
    .ADR1(1'b1),
    .ADR5(\Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 ),
    .ADR4(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .ADR3(Sh24),
    .O(\Normalization_Smallest_Significand/sgfsn [24])
  );
  X_BUF   \Normalization_Smallest_Significand/SGFmRegister/Q<21>/Normalization_Smallest_Significand/SGFmRegister/Q<21>_CMUX_Delay  (
    .I(N21),
    .O(N21_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X77Y125" ),
    .INIT ( 64'hDFDA8F8AD5D08580 ))
  Sh151 (
    .ADR4(\Operands_Classification/DmC/Q<14>_0 ),
    .ADR1(\Operands_Classification/DmC/Q<16>_0 ),
    .ADR5(\Operands_Classification/DmC/Q<15>_0 ),
    .ADR3(\Operands_Classification/DmC/Q<13>_0 ),
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .O(Sh15)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X77Y125" ),
    .INIT ( 64'hFAFAFAFAFAFAFAFA ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000514_SW0  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .ADR5(1'b1),
    .O(N31)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X77Y125" ),
    .INIT ( 32'hFFFFA1F1 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000524_SW0  (
    .ADR3(\Operands_Classification/DmC/Q<22>_0 ),
    .ADR1(\Operands_Classification/DmC/Q [21]),
    .ADR4(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [1]),
    .ADR2(\Normalization_Smallest_Significand/ESRegister/Q [0]),
    .O(N21)
  );
  X_FF #(
    .LOC ( "SLICE_X77Y125" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/SGFmRegister/Q_21  (
    .CE(\FS_Module/state_reg_FSM_FFd37_0 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_21/CLK ),
    .I(\Normalization_Smallest_Significand/sgfsn [21]),
    .O(\Normalization_Smallest_Significand/SGFmRegister/Q [21]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X77Y125" ),
    .INIT ( 64'h0001000500000004 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n000514  (
    .ADR2(\Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 ),
    .ADR3(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .ADR5(Sh21),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .ADR4(N31),
    .O(\Normalization_Smallest_Significand/sgfsn [21])
  );
  X_FF #(
    .LOC ( "SLICE_X77Y125" ),
    .INIT ( 1'b0 ))
  \Normalization_Smallest_Significand/SGFmRegister/Q_20  (
    .CE(\FS_Module/state_reg_FSM_FFd37_0 ),
    .CLK(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_20/CLK ),
    .I(\Normalization_Smallest_Significand/sgfsn [20]),
    .O(\Normalization_Smallest_Significand/SGFmRegister/Q [20]),
    .RST(\FS_Module/state_reg_FSM_FFd49_3765 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X77Y125" ),
    .INIT ( 64'h0000005100000040 ))
  \Normalization_Smallest_Significand/Shift_Comb_Mantm/Mmux__n0005131  (
    .ADR3(\Normalization_Smallest_Significand/Shift_Comb_Mantm/_n0004 ),
    .ADR0(\Normalization_Smallest_Significand/ESRegister/Q [3]),
    .ADR4(\Normalization_Smallest_Significand/ESRegister/Q [4]),
    .ADR1(\Normalization_Smallest_Significand/ESRegister/Q [2]),
    .ADR5(Sh20),
    .ADR2(Sh24),
    .O(\Normalization_Smallest_Significand/sgfsn [20])
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/ESRegister/Q_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/ESRegister/Q_7/CLK )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/ESRegister/Q_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/ESRegister/Q_6/CLK )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_xor<7>/DI<0>  (
    .I(\Operands_Classification/DMC/Q [27]),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_xor<7>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_xor<7>/DI<1>  (
    .I(\Operands_Classification/DMC/Q [28]),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_xor<7>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_xor<7>/DI<2>  (
    .I(\Operands_Classification/DMC/Q [29]),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_xor<7>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/ESRegister/Q_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/ESRegister/Q_5/CLK )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/ESRegister/Q_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/ESRegister/Q_4/CLK )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/ESRegister/Q_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/ESRegister/Q_3/CLK )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/ESRegister/Q_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/ESRegister/Q_2/CLK )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_cy<3>/DI<0>  (
    .I(\Operands_Classification/DMC/Q [23]),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_cy<3>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_cy<3>/DI<1>  (
    .I(\Operands_Classification/DMC/Q [24]),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_cy<3>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_cy<3>/DI<2>  (
    .I(\Operands_Classification/DMC/Q [25]),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_cy<3>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_cy<3>/DI<3>  (
    .I(\Operands_Classification/DMC/Q [26]),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SExp/Maddsub_Data_S_cy<3>/DI<3> )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/ESRegister/Q_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/ESRegister/Q_1/CLK )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/ESRegister/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/ESRegister/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/R_Sgf/Q_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_3/CLK )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/R_Sgf/Q_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_2/CLK )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<3>/DI<2>  (
    .I(\Operands_Classification/DMC/Q [0]),
    .O(\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<3>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<3>/DI<3>  (
    .I(\Operands_Classification/DMC/Q [1]),
    .O(\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<3>/DI<3> )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/R_Sgf/Q_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_1/CLK )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/R_Sgf/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_Zero_Except_Module/Zero_Info_Register/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Zero_Except_Module/Zero_Info_Register/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/CMPRegister/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/CMPRegister/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_23_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q<23>_0 ),
    .O(\NlwBufferSignal_final_result_ieee_23_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_2_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q<2>_0 ),
    .O(\NlwBufferSignal_final_result_ieee_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_15_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q<15>_0 ),
    .O(\NlwBufferSignal_final_result_ieee_15_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_17_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q<17>_0 ),
    .O(\NlwBufferSignal_final_result_ieee_17_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_3_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q<3>_0 ),
    .O(\NlwBufferSignal_final_result_ieee_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_20_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [20]),
    .O(\NlwBufferSignal_final_result_ieee_20_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_0_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q<0>_0 ),
    .O(\NlwBufferSignal_final_result_ieee_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_1_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q<1>_0 ),
    .O(\NlwBufferSignal_final_result_ieee_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_18_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q<18>_0 ),
    .O(\NlwBufferSignal_final_result_ieee_18_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_4_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [4]),
    .O(\NlwBufferSignal_final_result_ieee_4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_16_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [16]),
    .O(\NlwBufferSignal_final_result_ieee_16_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_5_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q<5>_0 ),
    .O(\NlwBufferSignal_final_result_ieee_5_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_19_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [19]),
    .O(\NlwBufferSignal_final_result_ieee_19_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_24_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [24]),
    .O(\NlwBufferSignal_final_result_ieee_24_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_6_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [6]),
    .O(\NlwBufferSignal_final_result_ieee_6_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_7_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q<7>_0 ),
    .O(\NlwBufferSignal_final_result_ieee_7_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_22_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [22]),
    .O(\NlwBufferSignal_final_result_ieee_22_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_27_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q<27>_0 ),
    .O(\NlwBufferSignal_final_result_ieee_27_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_9_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [9]),
    .O(\NlwBufferSignal_final_result_ieee_9_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_26_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [26]),
    .O(\NlwBufferSignal_final_result_ieee_26_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_31_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [31]),
    .O(\NlwBufferSignal_final_result_ieee_31_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_28_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [28]),
    .O(\NlwBufferSignal_final_result_ieee_28_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_21_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q<21>_0 ),
    .O(\NlwBufferSignal_final_result_ieee_21_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_25_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q<25>_0 ),
    .O(\NlwBufferSignal_final_result_ieee_25_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_29_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q<29>_0 ),
    .O(\NlwBufferSignal_final_result_ieee_29_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_30_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [30]),
    .O(\NlwBufferSignal_final_result_ieee_30_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_8_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [8]),
    .O(\NlwBufferSignal_final_result_ieee_8_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_underflow_flag_OBUF/I  (
    .I(\First_Und_Ov_Search/R_Underflow/Q_0_3752 ),
    .O(\NlwBufferSignal_underflow_flag_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/R_Sgf/Q_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_7/CLK )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/R_Sgf/Q_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_6/CLK )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<7>/DI<0>  (
    .I(\Operands_Classification/DMC/Q [2]),
    .O(\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<7>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<7>/DI<1>  (
    .I(\Operands_Classification/DMC/Q [3]),
    .O(\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<7>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<7>/DI<2>  (
    .I(\Operands_Classification/DMC/Q [4]),
    .O(\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<7>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<7>/DI<3>  (
    .I(\Operands_Classification/DMC/Q [5]),
    .O(\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<7>/DI<3> )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/R_Sgf/Q_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_5/CLK )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/R_Sgf/Q_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_4/CLK )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/R_Sgf/Q_11/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_11/CLK )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/R_Sgf/Q_10/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_10/CLK )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<11>/DI<0>  (
    .I(\Operands_Classification/DMC/Q [6]),
    .O(\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<11>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<11>/DI<1>  (
    .I(\Operands_Classification/DMC/Q [7]),
    .O(\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<11>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<11>/DI<2>  (
    .I(\Operands_Classification/DMC/Q [8]),
    .O(\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<11>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<11>/DI<3>  (
    .I(\Operands_Classification/DMC/Q [9]),
    .O(\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<11>/DI<3> )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/R_Sgf/Q_9/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_9/CLK )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/R_Sgf/Q_8/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_8/CLK )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/R_Sgf/Q_19/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_19/CLK )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/R_Sgf/Q_18/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_18/CLK )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<19>/DI<0>  (
    .I(\Operands_Classification/DMC/Q [14]),
    .O(\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<19>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<19>/DI<1>  (
    .I(\Operands_Classification/DMC/Q [15]),
    .O(\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<19>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<19>/DI<2>  (
    .I(\Operands_Classification/DMC/Q [16]),
    .O(\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<19>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<19>/DI<3>  (
    .I(\Operands_Classification/DMC/Q [17]),
    .O(\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<19>/DI<3> )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/R_Sgf/Q_17/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_17/CLK )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/R_Sgf/Q_16/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_16/CLK )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/R_Sgf/Q_15/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_15/CLK )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/R_Sgf/Q_14/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_14/CLK )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<15>/DI<0>  (
    .I(\Operands_Classification/DMC/Q [10]),
    .O(\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<15>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<15>/DI<1>  (
    .I(\Operands_Classification/DMC/Q [11]),
    .O(\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<15>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<15>/DI<2>  (
    .I(\Operands_Classification/DMC/Q [12]),
    .O(\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<15>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<15>/DI<3>  (
    .I(\Operands_Classification/DMC/Q [13]),
    .O(\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<15>/DI<3> )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/R_Sgf/Q_13/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_13/CLK )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/R_Sgf/Q_12/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_12/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Sgf_Ready_Reg/Q_24/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_24/CLK )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/R_Sgf/Q_26/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_26/CLK )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_xor<26>/DI<0>  (
    .I(\Operands_Classification/DMC/Q [22]),
    .O(\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_xor<26>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/R_Sgf/Q_25/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_25/CLK )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/R_Sgf/Q_24/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_24/CLK )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/R_Sgf/Q_23/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_23/CLK )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/R_Sgf/Q_22/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_22/CLK )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<23>/DI<0>  (
    .I(\Operands_Classification/DMC/Q [18]),
    .O(\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<23>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<23>/DI<1>  (
    .I(\Operands_Classification/DMC/Q [19]),
    .O(\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<23>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<23>/DI<2>  (
    .I(\Operands_Classification/DMC/Q [20]),
    .O(\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<23>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<23>/DI<3>  (
    .I(\Operands_Classification/DMC/Q [21]),
    .O(\NlwBufferSignal_Add_Sub_Significands/Sgf_AS/Maddsub_Data_S_cy<23>/DI<3> )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/R_Sgf/Q_21/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_21/CLK )
  );
  X_BUF   \NlwBufferBlock_Add_Sub_Significands/R_Sgf/Q_20/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Add_Sub_Significands/R_Sgf/Q_20/CLK )
  );
  X_BUF   \NlwBufferBlock_overflow_flag_OBUF/I  (
    .I(overflow_flag_OBUF_4167),
    .O(\NlwBufferSignal_overflow_flag_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ready_OBUF/I  (
    .I(\FS_Module/state_reg_FSM_FFd43_3787 ),
    .O(\NlwBufferSignal_ready_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_14_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [14]),
    .O(\NlwBufferSignal_final_result_ieee_14_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_13_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q<13>_0 ),
    .O(\NlwBufferSignal_final_result_ieee_13_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_10_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [10]),
    .O(\NlwBufferSignal_final_result_ieee_10_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_11_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q<11>_0 ),
    .O(\NlwBufferSignal_final_result_ieee_11_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_final_result_ieee_12_OBUF/I  (
    .I(\Tenth_Module/Final_Result_IEEE/Q [12]),
    .O(\NlwBufferSignal_final_result_ieee_12_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_16/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_16/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_15/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_15/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_14/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_14/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_13/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_13/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_12/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_12/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_11/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_11/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_10/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_10/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_9/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_9/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_17/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_17/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_8/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_8/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_7/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_6/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_5/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_4/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_3/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_31/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_31/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_2/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_30/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_30/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_29/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_29/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_28/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_28/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_27/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_27/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_26/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_26/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_25/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_25/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_24/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_24/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_23/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_23/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_22/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_22/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_21/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_21/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_20/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_20/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_1/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_19/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_19/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Final_Result_IEEE/Q_18/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Final_Result_IEEE/Q_18/CLK )
  );
  X_BUF   \NlwBufferBlock_clk_BUFGP/BUFG/IN  (
    .I(\clk_BUFGP/IBUFG_4328 ),
    .O(\NlwBufferSignal_clk_BUFGP/BUFG/IN )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd6/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd6/IN  (
    .I(\FS_Module/state_reg_FSM_FFd20_0 ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd6/IN )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_27/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_27/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_27/IN  (
    .I(\Select_Final_Exponent/exp_fp_reg/Q [4]),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_27/IN )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_31/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_31/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_26/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_26/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_26/IN  (
    .I(\Select_Final_Exponent/exp_fp_reg/Q [3]),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_26/IN )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_30/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_30/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_25/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_25/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_25/IN  (
    .I(\Select_Final_Exponent/exp_fp_reg/Q [2]),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_25/IN )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_29/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_29/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_24/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_24/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_24/IN  (
    .I(\Select_Final_Exponent/exp_fp_reg/Q<1>_0 ),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_24/IN )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_28/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_28/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_23/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_23/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_23/IN  (
    .I(\Select_Final_Exponent/exp_fp_reg/Q [0]),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_23/IN )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_22/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_22/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_22/IN  (
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q<22>_0 ),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_22/IN )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_21/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_21/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_21/IN  (
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q [21]),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_21/IN )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_20/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_20/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_20/IN  (
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q<20>_0 ),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_20/IN )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_3/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_3/IN  (
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q<3>_0 ),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_3/IN )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_2/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_2/IN  (
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q [2]),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_2/IN )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_1/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_1/IN  (
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q<1>_0 ),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_1/IN )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_0/IN  (
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q [0]),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_0/IN )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_11/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_11/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_11/IN  (
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q [11]),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_11/IN )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_10/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_10/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_10/IN  (
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q<10>_0 ),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_10/IN )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_9/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_9/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_9/IN  (
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q [9]),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_9/IN )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_8/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_8/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_8/IN  (
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q<8>_0 ),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_8/IN )
  );
  X_BUF   \NlwBufferBlock_Sel_10_P_b/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Sel_10_P_b/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_Sel_10_P_a/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Sel_10_P_a/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_7/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_7/IN  (
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q [7]),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_7/IN )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_6/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_6/IN  (
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q<6>_0 ),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_6/IN )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_5/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_5/IN  (
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q [5]),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_5/IN )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_4/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_4/IN  (
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q [4]),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_4/IN )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd2/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd2/IN  (
    .I(\FS_Module/state_reg_FSM_FFd3_4018 ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd2/IN )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_15/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_15/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_15/IN  (
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q [15]),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_15/IN )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_19/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_19/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_14/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_14/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_14/IN  (
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q<14>_0 ),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_14/IN )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_18/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_18/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_13/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_13/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_13/IN  (
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q [13]),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_13/IN )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_17/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_17/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_12/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_12/CLK )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_12/IN  (
    .I(\Select_Final_Significand/Sgf_ieee_Register/Q<12>_0 ),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_12/IN )
  );
  X_BUF   \NlwBufferBlock_Tenth_Module/Cresult_Reg/Q_16/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Tenth_Module/Cresult_Reg/Q_16/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd5/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd5/IN  (
    .I(\FS_Module/state_reg_FSM_FFd5-In ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd5/IN )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd4/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd4/IN  (
    .I(\FS_Module/state_reg_FSM_FFd18_0 ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd4/IN )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd3/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd1/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd1/IN  (
    .I(\FS_Module/state_reg_FSM_FFd1-In ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd1/IN )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd11/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd11/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd11/IN  (
    .I(\FS_Module/state_reg_FSM_FFd12_3961 ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd11/IN )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd10/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd10/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd10/IN  (
    .I(\FS_Module/state_reg_FSM_FFd11_4424 ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd10/IN )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd9/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd9/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd9/IN  (
    .I(\FS_Module/state_reg_FSM_FFd10_4432 ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd9/IN )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd7/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd7/IN  (
    .I(\FS_Module/state_reg_FSM_FFd7-In ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd7/IN )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd8/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd8/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Significand/Exp_na_Reg/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Significand/Exp_na_Reg/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Significand/Exp_na_Reg/Q_0/IN  (
    .I(\Round_Resultant_Significand/Sgf_Ready_Reg/Q [24]),
    .O(\NlwBufferSignal_Select_Final_Significand/Exp_na_Reg/Q_0/IN )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Significand/Sgf_ieee_Register/Q_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_5/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Significand/Sgf_ieee_Register/Q_22/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_22/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Significand/Sgf_ieee_Register/Q_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_4/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Significand/Sgf_ieee_Register/Q_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_3/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Significand/Sgf_ieee_Register/Q_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_2/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Significand/Sgf_ieee_Register/Q_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_1/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Significand/Sgf_ieee_Register/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Exponent/exp_fp_reg/Q_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Exponent/exp_fp_reg/Q_5/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Exponent/exp_fp_reg/Q_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Exponent/exp_fp_reg/Q_2/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Exponent/exp_fp_reg/Q_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Exponent/exp_fp_reg/Q_3/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Exponent/exp_fp_reg/Q_3/IN  (
    .I(\Select_Final_Exponent/exp_def [3]),
    .O(\NlwBufferSignal_Select_Final_Exponent/exp_fp_reg/Q_3/IN )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Exponent/exp_u_register/Q_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_3/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Exponent/exp_u_register/Q_3/IN  (
    .I(\Update_Exponent_First_Time/Exp_F_ieee/Q [3]),
    .O(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_3/IN )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Exponent/exp_u_register/Q_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_1/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Exponent/exp_u_register/Q_1/IN  (
    .I(\Update_Exponent_First_Time/Exp_F_ieee/Q [1]),
    .O(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_1/IN )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Exponent/exp_u_register/Q_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_7/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Exponent/exp_u_register/Q_7/IN  (
    .I(\Update_Exponent_First_Time/Exp_F_ieee/Q [7]),
    .O(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_7/IN )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Exponent/exp_u_register/Q_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_6/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Exponent/exp_u_register/Q_6/IN  (
    .I(\Update_Exponent_First_Time/Exp_F_ieee/Q [6]),
    .O(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_6/IN )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Exponent/exp_u_register/Q_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_5/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Exponent/exp_u_register/Q_5/IN  (
    .I(\Update_Exponent_First_Time/Exp_F_ieee/Q [5]),
    .O(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_5/IN )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Exponent/exp_u_register/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Exponent/exp_u_register/Q_0/IN  (
    .I(\Update_Exponent_First_Time/Exp_F_ieee/Q [0]),
    .O(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_0/IN )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Significand/Sgf_ieee_Register/Q_21/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_21/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Significand/Sgf_ieee_Register/Q_20/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_20/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Significand/Sgf_ieee_Register/Q_19/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_19/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Significand/Sgf_ieee_Register/Q_18/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_18/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Significand/Sgf_ieee_Register/Q_17/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_17/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Significand/Sgf_ieee_Register/Q_16/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_16/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Significand/Sgf_ieee_Register/Q_15/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_15/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Significand/Sgf_ieee_Register/Q_14/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_14/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Exponent/exp_fp_reg/Q_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Exponent/exp_fp_reg/Q_7/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Exponent/exp_fp_reg/Q_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Exponent/exp_fp_reg/Q_6/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Exponent/overflow_am/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Exponent/overflow_am/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Exponent/exp_u_register/Q_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_2/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Exponent/exp_u_register/Q_2/IN  (
    .I(\Update_Exponent_First_Time/Exp_F_ieee/Q [2]),
    .O(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_2/IN )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Sgf_Ready_Reg/Q_10/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_10/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Sgf_Ready_Reg/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_9/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_9/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_9/IN  (
    .I(\Fourth_Module/SgfRegister_F/Q [11]),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_9/IN )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_3/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_3/IN  (
    .I(\Fourth_Module/SgfRegister_F/Q [5]),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_3/IN )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_2/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_2/IN  (
    .I(\Fourth_Module/SgfRegister_F/Q [4]),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_2/IN )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_0/IN  (
    .I(\Fourth_Module/SgfRegister_F/Q<2>_0 ),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_0/IN )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Sgf_Ready_Reg/Q_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_4/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Sgf_Ready_Reg/Q_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_3/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Sgf_Ready_Reg/Q_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_2/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Sgf_Ready_Reg/Q_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_1/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd13/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd13/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd13/IN  (
    .I(\FS_Module/state_reg_FSM_FFd14_3944 ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd13/IN )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd15/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd15/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd15/IN  (
    .I(\FS_Module/state_reg_FSM_FFd16_4391 ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd15/IN )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd23/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd23/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd23/IN  (
    .I(\FS_Module/state_reg_FSM_FFd23-In ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd23/IN )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd24/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd24/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Sgf_Ready_Reg/Q_11/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_11/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Sgf_Ready_Reg/Q_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_7/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Sgf_Ready_Reg/Q_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_6/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Sgf_Ready_Reg/Q_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_5/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_1/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_1/IN  (
    .I(\Fourth_Module/SgfRegister_F/Q<3>_0 ),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_1/IN )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Sgf_Ready_Reg/Q_15/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_15/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Sgf_Ready_Reg/Q_14/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_14/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Sgf_Ready_Reg/Q_13/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_13/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Sgf_Ready_Reg/Q_12/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_12/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_4/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_4/IN  (
    .I(\Fourth_Module/SgfRegister_F/Q [6]),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_4/IN )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd17/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd17/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd17/IN  (
    .I(\FS_Module/state_reg_FSM_FFd19_3754 ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd17/IN )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd16/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd16/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd16/IN  (
    .I(\FS_Module/state_reg_FSM_FFd28_3792 ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd16/IN )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd14/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd14/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd14/IN  (
    .I(\FS_Module/state_reg_FSM_FFd14-In ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd14/IN )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd12/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd12/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd12/IN  (
    .I(\FS_Module/state_reg_FSM_FFd12-In_0 ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd12/IN )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Significand/Sgf_ieee_Register/Q_13/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_13/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Significand/Sgf_ieee_Register/Q_12/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_12/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Significand/Sgf_ieee_Register/Q_11/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_11/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Significand/Sgf_ieee_Register/Q_10/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_10/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Significand/Sgf_ieee_Register/Q_9/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_9/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Significand/Sgf_ieee_Register/Q_8/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_8/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Significand/Sgf_ieee_Register/Q_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_7/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Significand/Sgf_ieee_Register/Q_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Significand/Sgf_ieee_Register/Q_6/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd22/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd22/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd22/IN  (
    .I(\FS_Module/state_reg_FSM_FFd23_4165 ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd22/IN )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd21/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd21/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd20/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd20/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd19/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd19/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd18/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd18/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Exponent/exp_fp_reg/Q_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Exponent/exp_fp_reg/Q_4/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Exponent/exp_fp_reg/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Exponent/exp_fp_reg/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Exponent/exp_fp_reg/Q_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Exponent/exp_fp_reg/Q_1/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Exponent/exp_u_register/Q_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_4/CLK )
  );
  X_BUF   \NlwBufferBlock_Select_Final_Exponent/exp_u_register/Q_4/IN  (
    .I(\Update_Exponent_First_Time/Exp_F_ieee/Q [4]),
    .O(\NlwBufferSignal_Select_Final_Exponent/exp_u_register/Q_4/IN )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Sgf_Ready_Reg/Q_23/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_23/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Sgf_Ready_Reg/Q_22/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_22/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Sgf_Ready_Reg/Q_21/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_21/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Sgf_Ready_Reg/Q_20/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_20/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_7/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_7/IN  (
    .I(\Fourth_Module/SgfRegister_F/Q [9]),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_7/IN )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_6/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_6/IN  (
    .I(\Fourth_Module/SgfRegister_F/Q [8]),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_6/IN )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_5/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_5/IN  (
    .I(\Fourth_Module/SgfRegister_F/Q [7]),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_5/IN )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_8/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_8/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_8/IN  (
    .I(\Fourth_Module/SgfRegister_F/Q [10]),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_8/IN )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_14/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_14/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_14/IN  (
    .I(\Fourth_Module/SgfRegister_F/Q [16]),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_14/IN )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_13/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_13/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_13/IN  (
    .I(\Fourth_Module/SgfRegister_F/Q<15>_0 ),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_13/IN )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_12/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_12/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_12/IN  (
    .I(\Fourth_Module/SgfRegister_F/Q<14>_0 ),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_12/IN )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_11/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_11/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_11/IN  (
    .I(\Fourth_Module/SgfRegister_F/Q<13>_0 ),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_11/IN )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Sgf_Ready_Reg/Q_16/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_16/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Sgf_Ready_Reg/Q_9/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_9/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Sgf_Ready_Reg/Q_19/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_19/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Sgf_Ready_Reg/Q_18/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_18/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Sgf_Ready_Reg/Q_17/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_17/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Sgf_Ready_Reg/Q_8/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Sgf_Ready_Reg/Q_8/CLK )
  );
  X_BUF   \NlwBufferBlock_as_5_P_Reg/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_as_5_P_Reg/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_18/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_18/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_18/IN  (
    .I(\Fourth_Module/SgfRegister_F/Q [20]),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_18/IN )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/UExp/Q_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/UExp/Q_5/CLK )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/UExp/Q_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/UExp/Q_7/CLK )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/UExp/Q_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/UExp/Q_1/CLK )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/UExp/Q_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/UExp/Q_6/CLK )
  );
  X_BUF   \NlwBufferBlock_First_Und_Ov_Search/R_Overflow/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_First_Und_Ov_Search/R_Overflow/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_First_Und_Ov_Search/R_Underflow/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_First_Und_Ov_Search/R_Underflow/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/Exp_F_ieee/Q_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_2/CLK )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/Exp_F_ieee/Q_2/IN  (
    .I(\Update_Exponent_First_Time/exp<2>_0 ),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_2/IN )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/Exp_F_ieee/Q_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_1/CLK )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/Exp_F_ieee/Q_1/IN  (
    .I(\Update_Exponent_First_Time/exp [1]),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_1/IN )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/Exp_F_ieee/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/Exp_F_ieee/Q_0/IN  (
    .I(\Update_Exponent_First_Time/exp [0]),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_0/IN )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_23/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_23/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_23/IN  (
    .I(\Fourth_Module/SgfRegister_F/Q [25]),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_23/IN )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_22/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_22/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_22/IN  (
    .I(\Fourth_Module/SgfRegister_F/Q [24]),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_22/IN )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_21/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_21/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_21/IN  (
    .I(\Fourth_Module/SgfRegister_F/Q [23]),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_21/IN )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_20/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_20/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_20/IN  (
    .I(\Fourth_Module/SgfRegister_F/Q [22]),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_20/IN )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_19/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_19/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_19/IN  (
    .I(\Fourth_Module/SgfRegister_F/Q [21]),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_19/IN )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_17/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_17/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_17/IN  (
    .I(\Fourth_Module/SgfRegister_F/Q [19]),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_17/IN )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_16/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_16/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_16/IN  (
    .I(\Fourth_Module/SgfRegister_F/Q [18]),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_16/IN )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_10/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_10/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_10/IN  (
    .I(\Fourth_Module/SgfRegister_F/Q<12>_0 ),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_10/IN )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_15/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_15/CLK )
  );
  X_BUF   \NlwBufferBlock_Round_Resultant_Significand/Round_Sgf_N/Q_15/IN  (
    .I(\Fourth_Module/SgfRegister_F/Q [17]),
    .O(\NlwBufferSignal_Round_Resultant_Significand/Round_Sgf_N/Q_15/IN )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/UExp/Q_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/UExp/Q_4/CLK )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/UExp/Q_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/UExp/Q_2/CLK )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/UExp/Q_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/UExp/Q_3/CLK )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/UExp/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/UExp/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/RExp/Q_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_3/CLK )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/RExp/Q_3/IN  (
    .I(\Update_Exponent_First_Time/exp<3>_0 ),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_3/IN )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/RExp/Q_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_2/CLK )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/RExp/Q_2/IN  (
    .I(\Update_Exponent_First_Time/exp<2>_0 ),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_2/IN )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/RExp/Q_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_1/CLK )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/RExp/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/RExp/Q_0/IN  (
    .I(\Update_Exponent_First_Time/exp [0]),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_0/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_23/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_23/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_23/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_23/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_24/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_24/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_24/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_24/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_31/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_31/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_31/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_31/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_30/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_30/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_30/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_30/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_3/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_3/IN  (
    .I(\Operands_Classification/YRegister/Q [3]),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_3/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_15/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_15/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_2/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_2/IN  (
    .I(\Operands_Classification/YRegister/Q [2]),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_2/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_14/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_14/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_1/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_1/IN  (
    .I(\Operands_Classification/YRegister/Q [1]),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_1/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_13/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_13/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_0/IN  (
    .I(\Operands_Classification/YRegister/Q [0]),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_0/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_12/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_12/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_27/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_27/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_27/IN  (
    .I(\Operands_Classification/YRegister/Q [27]),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_27/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_26/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_26/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_26/IN  (
    .I(\Operands_Classification/YRegister/Q [26]),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_26/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_25/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_25/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_25/IN  (
    .I(\Operands_Classification/YRegister/Q [25]),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_25/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_24/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_24/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_24/IN  (
    .I(\Operands_Classification/YRegister/Q [24]),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_24/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_23/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_23/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_23/IN  (
    .I(Data_X_23_IBUF_4321),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_23/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_15/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_15/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_15/IN  (
    .I(Data_X_15_IBUF_4297),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_15/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_14/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_14/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_14/IN  (
    .I(Data_X_14_IBUF_4307),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_14/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_13/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_13/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_13/IN  (
    .I(Data_X_13_IBUF_4306),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_13/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_12/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_12/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_12/IN  (
    .I(Data_X_12_IBUF_4309),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_12/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_29/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_29/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_29/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_29/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_11/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_11/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_11/IN  (
    .I(\Fourth_Module/SgfShift/Q [11]),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_11/IN )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_15/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_15/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_10/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_10/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_10/IN  (
    .I(\Fourth_Module/SgfShift/Q [10]),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_10/IN )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_14/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_14/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_9/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_9/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_9/IN  (
    .I(\Fourth_Module/SgfShift/Q [9]),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_9/IN )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_13/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_13/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_8/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_8/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_8/IN  (
    .I(\Fourth_Module/SgfShift/Q [8]),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_8/IN )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_12/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_12/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_25/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_25/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_25/IN  (
    .I(\Fourth_Module/SgfShift/Q [25]),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_25/IN )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_24/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_24/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_24/IN  (
    .I(\Fourth_Module/SgfShift/Q [24]),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_24/IN )
  );
  X_BUF   \NlwBufferBlock_Sel_5_P_exp/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Sel_5_P_exp/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_7/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_7/IN  (
    .I(\Fourth_Module/SgfShift/Q [7]),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_7/IN )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_3/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_6/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_6/IN  (
    .I(\Fourth_Module/SgfShift/Q [6]),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_6/IN )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_2/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_5/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_5/IN  (
    .I(\Fourth_Module/SgfShift/Q [5]),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_5/IN )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_1/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_4/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_4/IN  (
    .I(\Fourth_Module/SgfShift/Q [4]),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_4/IN )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd25/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd25/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd25/IN  (
    .I(\FS_Module/state_reg_FSM_FFd25-In ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd25/IN )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/Exp_F_ieee/Q_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_7/CLK )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/Exp_F_ieee/Q_7/IN  (
    .I(\Update_Exponent_First_Time/exp [7]),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_7/IN )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/Exp_F_ieee/Q_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_3/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd49/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd49/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd48/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd48/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_23/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_23/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_23/IN  (
    .I(\Fourth_Module/SgfShift/Q [23]),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_23/IN )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_22/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_22/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_22/IN  (
    .I(\Fourth_Module/SgfShift/Q [22]),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_22/IN )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_21/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_21/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_21/IN  (
    .I(\Fourth_Module/SgfShift/Q [21]),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_21/IN )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_20/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_20/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_20/IN  (
    .I(\Fourth_Module/SgfShift/Q [20]),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_20/IN )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_19/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_19/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_19/IN  (
    .I(\Fourth_Module/SgfShift/Q [19]),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_19/IN )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_18/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_18/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_18/IN  (
    .I(\Fourth_Module/SgfShift/Q [18]),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_18/IN )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_17/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_17/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_17/IN  (
    .I(\Fourth_Module/SgfShift/Q [17]),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_17/IN )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_16/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_16/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfRegister_F/Q_16/IN  (
    .I(\Fourth_Module/SgfShift/Q [16]),
    .O(\NlwBufferSignal_Fourth_Module/SgfRegister_F/Q_16/IN )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/Exp_F_ieee/Q_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_6/CLK )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/Exp_F_ieee/Q_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_5/CLK )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/Exp_F_ieee/Q_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_4/CLK )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/Exp_F_ieee/Q_4/IN  (
    .I(\Update_Exponent_First_Time/exp [4]),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/Exp_F_ieee/Q_4/IN )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfShift/Q_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfShift/Q_5/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfShift/Q_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfShift/Q_6/CLK )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/RExp/Q_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_7/CLK )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/RExp/Q_7/IN  (
    .I(\Update_Exponent_First_Time/exp [7]),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_7/IN )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/RExp/Q_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_6/CLK )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/RExp/Q_6/IN  (
    .I(\Update_Exponent_First_Time/exp [6]),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_6/IN )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/RExp/Q_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_5/CLK )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/RExp/Q_5/IN  (
    .I(\Update_Exponent_First_Time/exp [5]),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_5/IN )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/RExp/Q_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_4/CLK )
  );
  X_BUF   \NlwBufferBlock_Update_Exponent_First_Time/RExp/Q_4/IN  (
    .I(\Update_Exponent_First_Time/exp [4]),
    .O(\NlwBufferSignal_Update_Exponent_First_Time/RExp/Q_4/IN )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd26/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd26/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd26/IN  (
    .I(\FS_Module/state_reg_FSM_FFd29_3803 ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd26/IN )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfShift/Q_24/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfShift/Q_24/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfShift/Q_25/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfShift/Q_25/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfShift/Q_20/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfShift/Q_20/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfShift/Q_21/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfShift/Q_21/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd46/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd46/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd46/IN  (
    .I(\FS_Module/state_reg_FSM_FFd46-In ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd46/IN )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd45/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd45/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd45/IN  (
    .I(\FS_Module/state_reg_FSM_FFd46_4189 ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd45/IN )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd44/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd44/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd43/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd43/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd47/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd47/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd47/IN  (
    .I(\FS_Module/state_reg_FSM_FFd48_4374 ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd47/IN )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfShift/Q_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfShift/Q_7/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfShift/Q_8/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfShift/Q_8/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfShift/Q_16/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfShift/Q_16/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfShift/Q_17/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfShift/Q_17/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfShift/Q_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfShift/Q_3/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfShift/Q_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfShift/Q_4/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd35/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd35/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd35/IN  (
    .I(\FS_Module/state_reg_FSM_FFd35-In ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd35/IN )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd36/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd36/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd36/IN  (
    .I(\FS_Module/state_reg_FSM_FFd37_0 ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd36/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_31/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_31/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_31/IN  (
    .I(Data_X_31_IBUF_4326),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_31/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_30/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_30/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_30/IN  (
    .I(Data_X_30_IBUF_4325),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_30/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_29/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_29/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_29/IN  (
    .I(Data_X_29_IBUF_4319),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_29/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_28/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_28/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_28/IN  (
    .I(Data_X_28_IBUF_4313),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_28/IN )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfShift/Q_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfShift/Q_1/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfShift/Q_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfShift/Q_2/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfShift/Q_22/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfShift/Q_22/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfShift/Q_23/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfShift/Q_23/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfShift/Q_26/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfShift/Q_26/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfShift/Q_9/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfShift/Q_9/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfShift/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfShift/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd30/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd30/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd31/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd31/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd29/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd29/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd28/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd28/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd27/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd27/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfShift/Q_10/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfShift/Q_10/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfShift/Q_11/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfShift/Q_11/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfShift/Q_12/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfShift/Q_12/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfShift/Q_13/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfShift/Q_13/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfShift/Q_18/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfShift/Q_18/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfShift/Q_19/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfShift/Q_19/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfShift/Q_14/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfShift/Q_14/CLK )
  );
  X_BUF   \NlwBufferBlock_Fourth_Module/SgfShift/Q_15/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Fourth_Module/SgfShift/Q_15/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_27/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_27/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_27/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_27/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_26/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_26/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_26/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_26/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_25/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_25/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_25/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_25/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_19/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_19/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_19/IN  (
    .I(Data_X_19_IBUF_4301),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_19/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_18/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_18/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_18/IN  (
    .I(Data_X_18_IBUF_4296),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_18/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_17/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_17/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_17/IN  (
    .I(Data_X_17_IBUF_4295),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_17/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_16/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_16/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_16/IN  (
    .I(Data_X_16_IBUF_4298),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_16/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_27/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_27/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_27/IN  (
    .I(Data_X_27_IBUF_4311),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_27/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_26/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_26/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_26/IN  (
    .I(Data_X_26_IBUF_4317),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_26/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_22/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_22/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_25/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_25/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_25/IN  (
    .I(Data_X_25_IBUF_4315),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_25/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_21/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_21/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_24/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_24/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_24/IN  (
    .I(Data_X_24_IBUF_4322),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_24/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_20/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_20/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd34/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd34/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd34/IN  (
    .I(\FS_Module/state_reg_FSM_FFd35_4201 ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd34/IN )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd33/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd33/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd32/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd32/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd32/IN  (
    .I(\FS_Module/state_reg_FSM_FFd33_3800 ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd32/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_7/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_7/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_6/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_6/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_9/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_9/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_9/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_9/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_13/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_13/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_13/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_13/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_31/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_31/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_31/IN  (
    .I(Data_Y_31_IBUF_4350),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_31/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_30/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_30/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_30/IN  (
    .I(Data_Y_30_IBUF_4349),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_30/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_29/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_29/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_29/IN  (
    .I(Data_Y_29_IBUF_4343),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_29/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_28/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_28/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_28/IN  (
    .I(Data_Y_28_IBUF_4340),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_28/IN )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd40/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd40/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd40/IN  (
    .I(\FS_Module/state_reg_FSM_FFd41_0 ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd40/IN )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SGFmRegister/Q_23/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_23/CLK )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SGFmRegister/Q_22/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_22/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_27/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_27/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_27/IN  (
    .I(Data_Y_27_IBUF_4339),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_27/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_26/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_26/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_26/IN  (
    .I(Data_Y_26_IBUF_4342),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_26/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_25/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_25/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_25/IN  (
    .I(Data_Y_25_IBUF_4341),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_25/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_24/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_24/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_24/IN  (
    .I(Data_Y_24_IBUF_4346),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_24/IN )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd41/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd41/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd41/IN  (
    .I(\FS_Module/state_reg_FSM_FFd41-In_0 ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd41/IN )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd39/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd39/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd39/IN  (
    .I(\FS_Module/state_reg_FSM_FFd39-In_0 ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd39/IN )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd38/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd38/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd38/IN  (
    .I(\FS_Module/state_reg_FSM_FFd39_4192 ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd38/IN )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd37/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd37/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_1/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_1/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_7/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_7/IN  (
    .I(\Operands_Classification/YRegister/Q [7]),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_7/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_6/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_6/IN  (
    .I(\Operands_Classification/YRegister/Q [6]),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_6/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_5/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_5/IN  (
    .I(\Operands_Classification/YRegister/Q [5]),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_5/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_4/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_4/IN  (
    .I(\Operands_Classification/YRegister/Q [4]),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_4/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_28/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_28/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_28/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_28/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_11/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_11/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_11/IN  (
    .I(Data_X_11_IBUF_4308),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_11/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_3/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_10/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_10/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_10/IN  (
    .I(Data_X_10_IBUF_4305),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_10/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_2/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_9/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_9/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_9/IN  (
    .I(Data_X_9_IBUF_4289),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_9/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_1/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_8/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_8/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_8/IN  (
    .I(Data_X_8_IBUF_4288),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_8/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_3/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_3/IN  (
    .I(Data_Y_3_IBUF_4316),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_3/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_11/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_11/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_2/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_2/IN  (
    .I(Data_Y_2_IBUF_4314),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_2/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_10/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_10/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_1/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_1/IN  (
    .I(Data_Y_1_IBUF_4312),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_1/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_9/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_9/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_0/IN  (
    .I(Data_Y_0_IBUF_4310),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_0/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_8/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_8/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_2/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_2/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_4/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_4/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_7/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_7/IN  (
    .I(Data_X_7_IBUF_4287),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_7/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_6/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_6/IN  (
    .I(Data_X_6_IBUF_4286),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_6/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_5/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_5/IN  (
    .I(Data_X_5_IBUF_4285),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_5/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_4/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/XRegister/Q_4/IN  (
    .I(Data_X_4_IBUF_4294),
    .O(\NlwBufferSignal_Operands_Classification/XRegister/Q_4/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_7/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_7/IN  (
    .I(Data_Y_7_IBUF_4302),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_7/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_6/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_6/IN  (
    .I(Data_Y_6_IBUF_4300),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_6/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_5/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_5/IN  (
    .I(Data_Y_5_IBUF_4299),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_5/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_4/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_4/IN  (
    .I(Data_Y_4_IBUF_4318),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_4/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_15/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_15/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_15/IN  (
    .I(Data_Y_15_IBUF_4331),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_15/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_14/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_14/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_14/IN  (
    .I(Data_Y_14_IBUF_4336),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_14/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_13/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_13/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_13/IN  (
    .I(Data_Y_13_IBUF_4335),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_13/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_12/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_12/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_12/IN  (
    .I(Data_Y_12_IBUF_4338),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_12/IN )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SGFmRegister/Q_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_1/CLK )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SGFmRegister/Q_9/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_9/CLK )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SGFmRegister/Q_10/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_10/CLK )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SGFmRegister/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_23/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_23/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_23/IN  (
    .I(Data_Y_23_IBUF_4345),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_23/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_22/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_22/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_22/IN  (
    .I(Data_Y_22_IBUF_4348),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_22/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_21/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_21/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_21/IN  (
    .I(Data_Y_21_IBUF_4347),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_21/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_20/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_20/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_20/IN  (
    .I(Data_Y_20_IBUF_4344),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_20/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_11/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_11/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_11/IN  (
    .I(\Operands_Classification/YRegister/Q<11>_0 ),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_11/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_10/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_10/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_10/IN  (
    .I(\Operands_Classification/YRegister/Q<10>_0 ),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_10/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_9/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_9/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_9/IN  (
    .I(\Operands_Classification/YRegister/Q<9>_0 ),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_9/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_8/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_8/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_8/IN  (
    .I(\Operands_Classification/YRegister/Q<8>_0 ),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_8/IN )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SGFmRegister/Q_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_5/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/ASRegister/Q_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/ASRegister/Q_0/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/ASRegister/Q_0/IN  (
    .I(add_subt_IBUF_4190),
    .O(\NlwBufferSignal_Operands_Classification/ASRegister/Q_0/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_31/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_31/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_30/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_30/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_30/IN  (
    .I(\Operands_Classification/YRegister/Q [30]),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_30/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_29/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_29/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_29/IN  (
    .I(\Operands_Classification/YRegister/Q [29]),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_29/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_28/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_28/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_28/IN  (
    .I(\Operands_Classification/YRegister/Q [28]),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_28/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_19/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_19/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_19/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_19/CLK )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SGFmRegister/Q_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_3/CLK )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SGFmRegister/Q_17/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_17/CLK )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SGFmRegister/Q_11/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_11/CLK )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SGFmRegister/Q_18/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_18/CLK )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SGFmRegister/Q_14/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_14/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd42/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd42/CLK )
  );
  X_BUF   \NlwBufferBlock_FS_Module/state_reg_FSM_FFd42/IN  (
    .I(\FS_Module/state_reg_FSM_FFd44_3790 ),
    .O(\NlwBufferSignal_FS_Module/state_reg_FSM_FFd42/IN )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SGFmRegister/Q_12/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_12/CLK )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SGFmRegister/Q_13/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_13/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_15/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_15/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_15/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_15/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_14/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_14/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_14/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_14/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_11/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_11/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_11/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_11/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_10/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_10/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_10/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_10/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_3/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_3/CLK )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SGFmRegister/Q_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_4/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_19/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_19/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_19/IN  (
    .I(\Operands_Classification/YRegister/Q [19]),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_19/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_18/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_18/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_18/IN  (
    .I(\Operands_Classification/YRegister/Q [18]),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_18/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_17/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_17/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_17/IN  (
    .I(\Operands_Classification/YRegister/Q [17]),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_17/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_16/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_16/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_16/IN  (
    .I(\Operands_Classification/YRegister/Q [16]),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_16/IN )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SGFmRegister/Q_19/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_19/CLK )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SGFmRegister/Q_16/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_16/CLK )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SGFmRegister/Q_15/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_15/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_23/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_23/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_23/IN  (
    .I(\Operands_Classification/YRegister/Q [23]),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_23/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_22/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_22/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_22/IN  (
    .I(\Operands_Classification/YRegister/Q [22]),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_22/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_21/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_21/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_21/IN  (
    .I(\Operands_Classification/YRegister/Q [21]),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_21/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_20/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_20/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DYP/Q_20/IN  (
    .I(\Operands_Classification/YRegister/Q [20]),
    .O(\NlwBufferSignal_Operands_Classification/DYP/Q_20/IN )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SGFmRegister/Q_25/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_25/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_18/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_18/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_18/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_18/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_20/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_20/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_20/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_20/CLK )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SGFmRegister/Q_8/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_8/CLK )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SGFmRegister/Q_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_7/CLK )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SGFmRegister/Q_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_6/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_19/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_19/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_19/IN  (
    .I(Data_Y_19_IBUF_4333),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_19/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_18/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_18/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_18/IN  (
    .I(Data_Y_18_IBUF_4330),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_18/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_17/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_17/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_17/IN  (
    .I(Data_Y_17_IBUF_4329),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_17/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_16/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_16/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/YRegister/Q_16/IN  (
    .I(Data_Y_16_IBUF_4332),
    .O(\NlwBufferSignal_Operands_Classification/YRegister/Q_16/IN )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_12/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_12/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_12/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_12/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_5/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_5/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_8/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_8/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_8/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_8/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_22/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_22/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_22/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_22/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_17/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_17/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_17/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_17/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_16/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_16/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_16/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_16/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DMC/Q_21/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DMC/Q_21/CLK )
  );
  X_BUF   \NlwBufferBlock_Operands_Classification/DmC/Q_21/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Operands_Classification/DmC/Q_21/CLK )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SGFmRegister/Q_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_2/CLK )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SGFmRegister/Q_24/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_24/CLK )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SGFmRegister/Q_21/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_21/CLK )
  );
  X_BUF   \NlwBufferBlock_Normalization_Smallest_Significand/SGFmRegister/Q_20/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_Normalization_Smallest_Significand/SGFmRegister/Q_20/CLK )
  );
  X_ZERO   NlwBlock_FPU_Add_Subtract_Function_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_FPU_Add_Subtract_Function_VCC (
    .O(VCC)
  );
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

