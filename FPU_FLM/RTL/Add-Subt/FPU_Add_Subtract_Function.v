`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:06:01 08/27/2015 
// Design Name: 
// Module Name:    FPU_Add_Subtract_Function 
// Project Name: 
// Target Devices:   
// Tool versions: 
// Description: 
//
// Dependencies:  
//
// Revision: 
// Revision 0.01 - File Created 
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module FPU_Add_Subtract_Function
//Add/Subtract Function Parameters
	
   # (parameter W = 32, parameter EW = 8, parameter SW = 23,
		parameter SWR=26)  //Single Precision */
		
/*	# (parameter W = 64, parameter EW = 11, parameter SW = 52,
		parameter SWR = 55) //-- Double Precision */
	(
		//FSM Signals 
		input wire clk,
		input wire rst,
		input wire beg_FSM,
		input wire rst_FSM,
		
		//Oper_Start_in signals
		input wire [W-1:0] Data_X,
		input wire [W-1:0] Data_Y,
		input wire add_subt,
		 
		//Round signals signals
		input wire [1:0] r_mode,
		
		//OUTPUT SIGNALS
		output wire overflow_flag,
		output wire underflow_flag,
		output wire ready,
		output wire [W-1:0] final_result_ieee
    );



////////////op_start_in///////////////
wire FSM_op_start_in_load_a,FSM_op_start_in_load_b; 
wire [W-2:0] DMP, DmP;
wire real_op;
wire sign_final_result;
///////////Mux S-> exp_operation OPER_A_i//////////

wire FSM_selector_A;
//D0=DMP_o[W-2:W-EW-1] ?????????????????????????????????????
//D1=exp_oper_result
wire [EW-1:0] S_Oper_A_exp;

///////////Mux S-> exp_operation OPER_B_i//////////

wire [1:0] FSM_selector_B;
//D0=DmP_o[W-2:W-9/W-12]
//D1=LZA_output
wire [EW-1:0] S_Oper_B_exp;

///////////exp_operation///////////////////////////
wire FSM_exp_operation_load,FSM_exp_operation_A_S;
//oper_A= S_Oper_A_exp
//oper_B= S_Oper_B_exp
wire [EW-1:0] exp_oper_result;

///////////Mux S-> Barrel shifter shift_Value//////

wire [1:0] FSM_selector_E;
//D0=exp_oper_result
//D1=LZA_output
wire [EW-1:0] S_Shift_Value;

///////////Mux S-> Barrel shifter Data_in//////

wire FSM_selector_C;
//D0={1'b1,DmP [SW-1:0], 2'b0}
//D1={Add_Subt_Data_output}
wire [SWR-1:0]S_Data_Shift;

///////////Barrel_Shifter//////////////////////////

wire FSM_barrel_shifter_load, FSM_barrel_shifter_L_R, FSM_barrel_shifter_B_S;
//Shift_Value=S_Shift_Value
//Data_in=S_Data_Shift
wire [SWR-1:0] Sgf_normalized_result;

//////////Mux S-> Add_Subt_Sgf op//////////////////
wire FSM_selector_D;
//D0=real_op
//D1= 1'b0
wire S_A_S_op;

//////////Mux S-> Add_Subt_Sgf OPER A//////////////////
//wire FSM_selector_D
//D0={1'b1, DMP[SW-1:0], 2'b00}
//D1= Norm_Shift_Data
wire [SWR-1:0] S_A_S_Oper_A;

//////////Mux S-> Add_Subt_Sgf OPER B//////////////////
//wire FSM_selector_D
//D0= Norm_Shift_Data
//D1= SWR'd1;
wire [SWR-1:0] S_A_S_Oper_B;

/////////ADD_Subt_sgf///////////////////////////////////


wire FSM_Add_Subt_Sgf_load, add_overflow_flag;
//Add_Subt_i=S_A_S_op
//Oper_A_i=S_A_S_Oper_A
//Oper_B_i=S_A_S_Oper_B
wire [SWR-1:0] Add_Subt_result;
wire [SWR-1:0] A_S_P;
wire [SWR-1:1] A_S_C;


//////////LZA///////////////////////////////////////////

wire FSM_LZA_load;
wire LZA_output;

/////////Deco_round///////////////////////////////////////

wire round_flag;

////////Final_result//////////////////////////////////////

wire FSM_Final_Result_load;

///////////////////////////////////////////////////////////////////////////////////

wire rst_int;

///////////////////////////////////////FSM/////////////////////////////////////////

FSM_Add_Subtract FS_Module(
    .clk(clk),                                                       //
    .rst(rst),                                                       //
    .rst_FSM(rst_FSM),                                               //
    .beg_FSM(beg_FSM),                                               //
	.zero_flag_i(zero_flag),                                         // 
    .norm_iteration_i(FSM_selector_C),                               //
    .add_overflow_i(add_overflow_flag),                              //
    .round_i(round_flag),                                            //
	.load_1_o(FSM_op_start_in_load_a),                               //
    .load_2_o(FSM_op_start_in_load_b),                               //
    .load_3_o(FSM_exp_operation_load),                               //
    .A_S_op_o(FSM_exp_operation_A_S),                                //
    .load_4_o(FSM_barrel_shifter_load),                              //
    .left_right_o(FSM_barrel_shifter_L_R),                           //
    .bit_shift_o(FSM_barrel_shifter_B_S),                            //
    .load_5(FSM_Add_Subt_Sgf_load),                                  //
    .load_6(FSM_LZA_load),                                           //
    .load_7(FSM_Final_Result_load),                                  // 
    .ctrl_a(FSM_selector_A),                                         //
    .ctrl_b(FSM_selector_B),                                         //
    .ctrl_c(FSM_selector_C),                                         //
    .ctrl_e(FSM_selector_E),                                         //
    .ctrl_d(FSM_selector_D),                                         //
	.rst_int(rst_int),                                               //
	.ready(ready)                                                    //
    );
	 





////////////////////////////////////////////////////////
	 
//MODULES///////////////////////////

////////////////////Oper_Start_in//////////////////7

//This Module classify both operands
//in bigger and smaller magnitude, Calculate the result' Sign bit and calculate the real
//operation for the execution///////////////////////////////

Oper_Start_in #(.W(W)) Oper_Start_in_module (
    .clk(clk), 
    .rst(rst_int),
    .load_a_i(FSM_op_start_in_load_a),
    .load_b_i(FSM_op_start_in_load_b),
    .add_subt_i(add_subt),
    .Data_X_i(Data_X),
    .Data_Y_i(Data_Y),
    .DMP_o(DMP),
    .DmP_o(DmP),
    .zero_flag_o(zero_flag),
    .real_op_o(real_op),
    .sign_final_result_o(sign_final_result)
     );

///////////////////////////////////////////////////////////


///////////Mux exp_operation OPER_A_i//////////

Multiplexer_AC #(.W(EW)) Exp_Oper_A_mux(
    .ctrl(FSM_selector_A),
    .D0 (DMP[W-2:W-EW-1]),
    .D1 (exp_oper_result),
    .S (S_Oper_A_exp)
    );

///////////Mux exp_operation OPER_B_i//////////

Mux_3x1 #(.W(EW)) Exp_Oper_B_mux(
    .ctrl(FSM_selector_B),
    .D0 (DmP[W-2:W-EW-1]),
    .D1(LZA_output),
    .S(S_Oper_B_exp)
    );

///////////exp_operation///////////////////////////

Exp_Operation #(.EW(EW)) Exp_Operation_Module(
    .clk(clk), 
    .rst(rst_int),
    .load_i(FSM_exp_operation_load),
    .Data_A_i(S_Oper_A_exp),
    .PreData_B_i(S_Oper_B_exp),
    .Add_Subt_i(FSM_exp_operation_A_S),
    .Data_Result_o(exp_oper_result),
    .Overflow_flag_o(overflow_flag),
    .Underflow_flag_o(underflow_flag)
    );


//////////Mux Barrel shifter shift_Value/////////////////


Mux_3x1 #(.W(EW)) Barrel_Shifter_S_V_mux(
    .ctrl(FSM_selector_E),
    .D0 (exp_oper_result),
    .D1(LZA_output),
    .S(S_Shift_Value)
    );

///////////Mux Barrel shifter Data_in//////

Multiplexer_AC #(.W(SWR)) Barrel_Shifter_D_I_mux(
    .ctrl(FSM_selector_C),
    .D0 ({1'b1,DmP[SW-1:0].2'b00}),
    .D1 (Add_Subt_result),
    .S (S_Data_Shift)
    );

///////////Barrel_Shifter//////////////////////////

Barrel_Shifter #(.SWR(SWR),.EW(EW)) Barrel_Shifter_module (
    .clk(clk), 
    .rst(rst_int),
    .load_i(FSM_barrel_shifter_load),
    .Shift_Value_i(S_Shift_Value),
    .Shift_Data_i(Shift_Data_i),
    .Left_Right_i(FSM_barrel_shifter_L_R),
    .Bit_Shift_i(FSM_barrel_shifter_B_S),
    .N_mant_o(Sgf_normalized_result)
    );


//////////Mux Add_Subt_Sgf op//////////////////

Multiplexer_AC #(.W(1)) Add_Sub_Sgf_op_mux(
    .ctrl(FSM_selector_D),
    .D0 (real_op),
    .D1 (1'b0),
    .S (S_A_S_op)
    );

//////////Mux Add_Subt_Sgf oper A//////////////////

Multiplexer_AC #(.W(SWR)) Add_Sub_Sgf_Oper_A_mux(
    .ctrl(FSM_selector_D),
    .D0 ({1'b1,DMP[SW-1:0],2'b00}),
    .D1 (Sgf_normalized_result),
    .S (S_A_S_Oper_A)
    );

//////////Mux Add_Subt_Sgf oper B//////////////////

Multiplexer_AC #(.W(SWR)) Add_Sub_Sgf_Oper_A_mux(
    .ctrl(FSM_selector_D),
    .D0 (Sgf_normalized_result),
    .D1 (SWR'd1),
    .S (S_A_S_Oper_B)
    );




Zero_InfAdd_Unit #(.W(W)) Zero_Except_Module (
    .clk(clk), 
    .rst(rst_int), 
    .load(load_0), 
    .Data_A(QX), 
    .Data_B(QY), 
    .arit_op(add_subt), 
    .zero(zero_flag)
    );

//This module normalize the mantissa of the smallest operand//
Second_Phase #(.W_Exp(W_Exp), .W_Sgf(W_Sgf)) Normalization_Smallest_Significand(
    .clk(clk), //check
    .rst(rst_int), //check
    .ctrl_a(load_4), //check
    .ctrl_b(load_5), //check
    .exp_M(DMP[W-2:W-S_Exp]), //check
    .exp_m(DmP[W-2:W-S_Exp]), //check
    .sgfm(DmP[W-S_Exp-1:0]), //check
    .sgfm_n(sgfm_n) //check
    );
////////////////////////////////////////////////////////////////

//In this module occurs the add/subtract of significands
Third_Phase #(.W_Sgf(W_Sgf)) Add_Sub_Significands (
    .clk(clk), //check
    .rst(rst_int), //check
    .ctrl(load_6), //check
    .sgf_M({1'b1,DMP[W-S_Exp-1:0],2'b00}), //check
    .sgf_m(sgfm_n), //check
    .sgn_M(DMP[W-1]), //check
    .sgn_m(DmP[W-1]), //check
    .sgf_R(sgf_R) //check
    );
///////////////////////////////////////////////////////////////

//Sequential Shifting Module
Fourth_Phase #(.W_Sgf(W_Sgf)) Fourth_Module (
    .clk(clk), //check
    .rst(rst_int), //check
    .Sgf_R(sgf_R), //check 
    .selector(selector_4_P_reg), //check 
    .ctrl_b(load_7), //check 
    .ctrl_c(load_8), //check 
    .shift_left(sl), //check 
    .shift_right(sr), //check 
    .shift_in(1'b0), //check 
    .Sgf_ncarry(Sgf_ncarry), //check 
    .Sgf_nbit(Sgf_nbit), //check 
    .Sgf_NF(Sgf_NF) //check 
    );


//Update Exponent 1
Fifth_Phase #(.W_Exp(W_Exp)) Update_Exponent_First_Time (
    .clk(clk), //check 
    .rst(rst_int), //check 
    .ctrl_a(load_9), //check 
    .ctrl_b(load_10), //check 
    .ctrl_c(load_11), //check 
    .add_sub_ctrl(add_subt_5_P_reg), //check 
    .selector_a(selector_5_P_reg), //check 
    .selector_b(selector_5_P_exp_reg), //check 
    .exp_M(DMP[W-2:W-S_Exp]), //check 
    .exp_update_ieee(exp_update_ieee), //check 
    .exp_update_uo(exp_update_uo)//check 
    );
	 


//Looking for an underflow/overflow
Sixth_Phase #(.W_Exp(W_Exp)) First_Und_Ov_Search(
    .clk(clk), //check 
    .rst(rst_int), //check 
    .ctrl(load_12), //check
    .exp(exp_update_uo), //check
    .overflow(overflow), //check
    .underflow(underflow) //check
    );

//Rounding the significand
Seventh_Phase #(.W_Sgf(W_Sgf)) Round_Resultant_Significand (
    .clk(clk), //check
    .rst(rst_int), //check
    .ctrl_a(load_13), //check
    .ctrl_b(load_14), //check
    .Sgf_N(Sgf_NF[W_Sgf+2:0]), //check
    .r_mode(r_mode), //check
	 .Sgn_M(DMP[W-1]), 
    .Sgf_Ready(Sgf_Ready) //check
    );


Eight_N_Phase #(.W_Sgf(W_Sgf)) Select_Final_Significand(
    .clk(clk), //check
    .rst(rst_int), //check
    .load(load_15), //check
    .Sgf_Ready(Sgf_Ready), //check
    .Sgf_R_ieee(Sgf_R_ieee), //check
    .exp_na(exp_na) //check 
    );

Eight_NE_Phase #(.W_Exp(W_Exp)) Select_Final_Exponent (
    .clk(clk), //check
    .rst(rst_int), //check
    .load_a(load_16), //check
    .load_b(load_17), //check
    .exp_update(exp_update_ieee), //check
    .selector(exp_na), //check
    .exp_ieee_p(exp_ieee_p), //check
    .overflow_pr(overflow_pr) //check
    );
	 
Tenth_Phase #(.W(W), .W_Exp(W_Exp), .W_Sgf(W_Sgf)) Tenth_Module(
    .clk(clk), //check
    .rst(rst_int), //check
    .sel_a(selector_10_P_a_reg), //check
    .sel_b(selector_10_P_b_reg), //check
    .ctrl_a(load_18), //check
    .ctrl_b(load_19), //check
    .sgn_M(DMP[W-1]),  
    .exp_ieee_p(exp_ieee_p), 
    .sgf_ieee_p(Sgf_R_ieee), 
    .final_result_ieee(final_result_ieee)
    );

assign overflow_flag = (overflow_pr || overflow) ? 1'b1:1'b0;
assign underflow_flag = underflow; 

endmodule
