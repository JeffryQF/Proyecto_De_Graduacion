`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2016 09:45:52
// Design Name: 
// Module Name: CORDIC_Coprocessor
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


module CORDIC_Coprocessor #(parameter W=32 , E=8)
(
//Input Signals
input wire clk,                         //system clock
input wire rst_cordic,                  //system reset 
input wire beg_fsm_cordic,              //FSM input signal
input wire ack_cordic,                  //FSM input signal
input wire operation,
input wire ready_add_subt,              //FSM input signal

input wire [W-1:0] data_in,             //System input
input wire [W-1:0] result_add_subt,     //System input
input wire [1:0] shift_region_flag,     //System and FSM input signal

//Output Signals
output reg ready_cordic,                //FSM output signal 
output reg beg_add_subt,                //FSM output signal
output reg ack_add_subt,                //FSM output signal
output reg op_add_subt,                 //System output signal

output reg [W-1:0] add_subt_dataA,      //System output signal
output reg [W-1:0] add_subt_dataB,      //System output signal
output reg [W-1:0] data_output          //System output signal
);

parameter x0 = 32'h3f1b74ee; //x0 = 0.607252935008881
parameter y0 = 32'h00000000; //y0 = 0
/*parameter x0 = 64'h3fe36e9db5086bc9; //x0 = 0.607252935008881
parameter y0 = 64'h0000000000000000; //y0 = 0*/
parameter up = 1'b0;    //
parameter syn_clr = 1'b0;   //
parameter d_var = 2'b10;
parameter d_iter = 4'b1111;


//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//Signal declaration

//ENABLE
wire enab_d_ff1_RB1;                                    // Enable de la primera linea de registros.
wire enab_d_ff2_RB2;                                    // Enable de la segunda linea de registros.
wire enab_LUT;                                          // Enable de las ROM.
wire enab_d_ff3_sh_exp_x, enab_d_ff3_sh_exp_y;          //
wire enab_d_ff3_LUT32, enab_d_ff3_sign;                 //
wire enab_cont_iter, enab_cont_var;                     //
wire beg_fsm_add__subt;                                 //
wire load_con_iter, load_cont_var;                      //
wire enab_d_ff4_Xn, enab_d_ff4_Yn, enab_d_ff4_Yn;       //
wire enab_d_ff5_data_out;                               //
wire enab_d_ff5;

//SELECTION
wire sel_mux_1, mode, sel_mux_3;
wire [1:0] sel_mux_2;                      //
wire add_subt_op;                                       //

//DATA WIRES
wire min_tick_iter,max_tick_iter;                       //
wire min_tick_var,max_tick_var;                         //
wire sign;                                              //
wire [3:0] cont_iter_out;                               //
wire [1:0] cont_var_out;                                //
wire [W-1:0] LUT32_data_out,LUT64_data_out, LUT_data;   //
//wire [E-1:0] exp_x, exp_y;                              //
wire [E-1:0] sh_exp_x, sh_exp_y;                        //
wire [W-1:0] d_ff3_sh_x_out, d_ff3_sh_y_out;            //
wire [W-1:0] d_ff3_LUT_out;                             //
wire d_ff3_sign_out;                                    //                 
wire d_ff1_operation_out;                               //
wire d_ff1_shift_region_flag_out;                       //
wire [W-1:0] d_ff1_X, d_ff1_Y, d_ff1_Z;                 //
wire [W-1:0] d_ff2_X, d_ff2_Y, d_ff2_Z;                 //
wire d_ff_Xn, d_ff_Yn, d_ff_Zn;                         //
wire [W-1:0] first_mux_X, first_mux_Y, first_mux_Z;     //
wire [W-1:0] mux_sal, sign_inv_out;                     //
wire [W-1:0] data_output2; 

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//Instanciacion
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//First Stage
//Instanciacion de un FF_D para guardar el dato de entrada que define si se quiere realizar el calculo de un seno o un coseno.
d_ff_en	# (.W(1)) d_ff_operation
(.clk(clk),.rst(rst_cordic),.enable(enab_d_ff_RB1),.D(operation),.Q(d_ff1_operation_out));

//Instanciacion de un FF_D para guardar el dato de entrada que define si hay un desplazamiento hacia el rango de cálculo del alg. CORDIC.
d_ff_en	# (.W(2)) d_ff_shift_region_flag
(.clk(clk),.rst(rst_cordic),.enable(enab_d_ff_RB1),.D(shift_region_flag),.Q(d_ff1_shift_region_flag_out));

//Instanciacion de un FF_D para guardar el dato de entrada que define el valor inicial de la variable X.
d_ff_en	# (.W(W)) d_ff1_x
(.clk(clk),.rst(rst_cordic),.enable(enab_d_ff_RB1),.D(x0),.Q(d_ff1_X));

//Instanciacion de un FF_D para guardar el dato de entrada que define el valor inicial de la variable Y.
d_ff_en	# (.W(W)) d_ff1_y
(.clk(clk),.rst(rst_cordic),.enable(enab_d_ff_RB1),.D(y0),.Q(d_ff1_Y));

//Instanciacion de un FF_D para guardar el dato de entrada que define el valor inicial de la variable Z.
d_ff_en	# (.W(W)) d_ff1_z
(.clk(clk),.rst(rst_cordic),.enable(enab_d_ff_RB1),.D(data_in),.Q(d_ff1_Z));

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Second Stage

//Instanciacion de un mux de 2x1 para regular cual valor de la variable X se ocupa en el calculo
Mux_2x1 #(.W(W)) mux_2x1_x
(.select(sel_mux_1),.ch_0(d_ff1_X),.ch_1(d_ff_Xn),.data_out(first_mux_X));

//Instanciacion de un mux de 2x1 para regular cual valor de la variable Y se ocupa en el calculo
Mux_2x1 #(.W(W)) mux_2x1_y
(.select(sel_mux_1),.ch_0(d_ff1_Y),.ch_1(d_ff_Yn),.data_out(first_mux_Y));

//Instanciacion de un mux de 2x1 para regular cual valor de la variable Z se ocupa en el calculo.
Mux_2x1 #(.W(W)) mux_2x1_z
(.select(sel_mux_1),.ch_0(d_ff1_Z),.ch_1(d_ff_Zn),.data_out(first_mux_Z));

//Instanciacion de un FF_D para guardar el dato de salida de los mux 2x1 de la variable X.
d_ff_en	# (.W(W)) d_ff2_x
(.clk(clk),.rst(rst_cordic),.enable(enab_d_ff2_RB2),.D(first_mux_X),.Q(d_ff2_X));

//Instanciacion de un FF_D para guardar el dato de salida de los mux 2x1 de la variable Y.
d_ff_en	# (.W(W)) d_ff2_y
(.clk(clk),.rst(rst_cordic),.enable(enab_d_ff2_RB2),.D(first_mux_Y),.Q(d_ff2_Y));

//Instanciacion de un FF_D para guardar el dato de salida de los mux 2x1 de la variable Z.
d_ff_en	# (.W(W)) d_ff2_z
(.clk(clk),.rst(rst_cordic),.enable(enab_d_ff2_RB2),.D(first_mux_Z),.Q(d_ff2_Z));

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Third Stage

//Instanciacion de un mux de 2x1 para escoger entre el signo de la variable Y y Z. 
Mux_2x1 #(.W(1)) mux_2x1_signo
(.select(mode),.ch_0(d_ff2_Z[W-1]),.ch_1(d_ff2_Y[W-1]),.data_out(sign));

//
LUT_ROM_64bits  #(.W(64))
(.clk(clk),.enable(~enab_LUT32),.address(cont_iter_out),.data_out(LUT64_data_out));

//
LUT_ROM_32bits #(.W(32))
(.clk(clk),.enable(enab_LUT32),.address(cont_iter_out),.data_out(LUT32_data_out));

//
Mux_2x1 #(.W(W)) mux_2x1_LUT
(.select(enab_LUT32),.ch_0(LUT64_data_out),.ch_1(LUT32_data_out),.data_out(LUT_data));

//
Simple_Subt #(.W(E)) shift_x
(.A(d_ff2_X[W-2:W-2-E]),.B(cont_iter_out),.Y(sh_exp_x));

//
Simple_Subt #(.W(E)) shift_y
(.A(d_ff2_Y[W-2:W-2-E]),.B(cont_iter_out),.Y(sh_exp_y));

//
d_ff_en	#(.W(W)) d_ff3_x_shift
(.clk(clk),.rst(rst_cordic),.enable(enab_d_ff3_sh_exp_x),.D({d_ff2_X[W-1],sh_exp_x,d_ff2_Y[W-2-E]}),.Q(d_ff3_sh_x_out));

//
d_ff_en	#(.W(W)) d_ff3_y_shift
(.clk(clk),.rst(rst_cordic),.enable(enab_d_ff3_sh_exp_y),.D(sh_exp_y),.Q(d_ff3_sh_y_out));

//
d_ff_en	#(.W(W)) d_ff3_LUT
(.clk(clk),.rst(rst_cordic),.enable(enab_d_ff3_LUT),.D(LUT_data),.Q(d_ff3_LUT_out));

//
d_ff_en	#(.W(1)) d_ff3_sign
(.clk(clk),.rst(rst_cordic),.enable(enab_d_ff3_sign),.D(sign),.Q(d_ff3_sign_out));

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Fourth Stage

//
Mux_3x1 #(.W(W)) mux_3x1_var1
(.select(sel_mux_2),.ch_0(d_ff2_X),.ch_1(d_ff2_Y),.ch_2(d_ff2_Z),.data_out(add_subt_dataA));

//
Mux_3x1 #(.W(W)) mux_3x1_var2
(.select(sel_mux_2),.ch_0(d_ff3_sh_y_out),.ch_1(d_ff3_sh_x_out),.ch_2(d_ff3_LUT_out),.data_out(add_subt_dataB));

//
Op_Select(.variable(cont_var_out[0]),.sign(d_ff3_sign_out),.operation(op_add_subt));

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Fifth Stage

//
d_ff_en	#(.W(W)) d_ff4_Xn
(.clk(clk),.rst(rst_cordic),.enable(enab_d_ff4_Xn),.D(result_add_subt),.Q(d_ff_Xn));

//
d_ff_en	#(.W(W)) d_ff4_Yn
(.clk(clk),.rst(rst_cordic),.enable(enab_d_ff4_Yn),.D(result_add_subt),.Q(d_ff_Yn));

//
d_ff_en	#(.W(W)) d_ff4_Zn
(.clk(clk),.rst(rst_cordic),.enable(enab_d_ff4_Zn),.D(result_add_subt),.Q(d_ff_Zn));

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Sixth Stage

//
Mux_2x1 #(.W(W)) mux_2x1_sal
(.select(sel_mux_3),.ch_0(d_ff_Xn),.ch_1(d_ff_Yn),.data_out(mux_sal));

//
d_ff_en	#(.W(W)) d_ff5
(.clk(clk),.rst(rst_cordic),.enable(enab_d_ff5),.D(mux_sal),.Q(data_output2));

//
sign_inverter #(.W(W))
(.data(data_output2),.shift_region_flag(d_ff1_shift_region_flag_out),.operation(d_ff1_operation_out),.data_out(sign_inv_out));

//
d_ff_en	#(.W(W)) d_ff5_data_out
(.clk(clk),.rst(rst_cordic),.enable(enab_d_ff5_data_out),.D(sign_inv_out),.Q(data_output));

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//FSM and counters

//
univ_bin_counter #(.N(4)) cont_iter
(.clk(clk),.reset(rst_cordic),.syn_clr(syn_clr),.load(load_con_iter),.en(enab_cont_iter),.up(up),.d(d_iter),.max_tick(max_tick_iter),.min_tick(min_tick_iter),.q(cont_iter_out));

//
univ_bin_counter #(.N(4)) cont_var
(.clk(clk),.reset(rst_cordic),.syn_clr(syn_clr),.load(load_con_var),.en(enab_cont_var),.up(up),.d(d_var),.max_tick(max_tick_var),.min_tick(min_tick_varr),.q(cont_var_out));

//
CORDIC_FSM fsm_cordic
(.clk(clk),
.reset(rst_cordic),
.beg_FSM_CORDIC(beg_fsm_cordic),
.ACK_FSM_CORDIC(ack_cordic),
.operation(d_ff1_operation_out),
.shift_region_flag(d_ff1_shift_region_flag_out),
.cont_var(cont_var_out),
.ready_add_subt(ready_add_subt),
.max_tick_iter(max_tick_iter),
.min_tick_iter(min_tick_iter),
.max_tick_var(max_tick_var),
.min_tick_var(min_tick_var),
.ready_CORDIC(ready_cordic),
.beg_add_subt(beg_add_subt),
.ack_add_subt(ack_add_subt),
.sel_mux_1(sel_mux_1),
.sel_mux_3(sel_mux_3),
.sel_mux_2(sel_mux_2),
.mode(mode),
.enab_cont_iter(enab_cont_iter),
.load_cont_iter(load_con_iter),
.enab_cont_var(enab_cont_var),
.load_cont_var(load_cont_var),
.enab_RB1(enab_d_ff1_RB1),
.enab_RB2(enab_d_ff2_RB2),
.enab_LUT(enab_LUT32),
.enab_d_ff_Xn(enab_d_ff4_Xn),
.enab_d_ff_Yn(enab_d_ff4_Yn),
.enab_d_ff_Zn(enab_d_ff4_Zn),
.enab_d_ff_out(enab_d_ff5_data_out),
.enab_dff5(enab_dff5),
.enab_dff_shifted_x(enab_d_ff3_sh_exp_x),
.enab_dff_shifted_y(enab_d_ff3_sh_exp_y),
.enab_dff_LUT(enab_d_ff3_LUT),
.enab_dff_sign(enab_d_ff3_sign));

endmodule
