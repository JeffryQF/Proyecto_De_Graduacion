`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.02.2016 13:19:49
// Design Name: 
// Module Name: CORDIC_FSM
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


module CORDIC_FSM
(
//Input Signals 
input wire clk,
input wire reset,
input wire beg_FSM_CORDIC,
input wire ACK_FSM_CORDIC,
input wire operation,
input wire [1:0] shift_region_flag,
input wire [1:0] cont_var,
input wire ready_add_subt,
input wire max_tick_iter, min_tick_iter,
input wire max_tick_var, min_tick_var,

//Output Signals
output reg ready_CORDIC,
output reg beg_add_subt,
output reg ack_add_subt,
output reg sel_mux_1, sel_mux_3,
output reg [1:0] sel_mux_2,
output reg mode,
output reg enab_cont_iter, load_cont_iter,
output reg enab_cont_var,  load_cont_var,
output reg enab_RB1, enab_RB2, enab_LUT,
output reg enab_d_ff_Xn, enab_d_ff_Yn, enab_d_ff_Zn,
output reg enab_d_ff_out, enab_dff5,
output reg enab_dff_shifted_x, enab_dff_shifted_y,
output reg enab_dff_LUT, enab_dff_sign
);

//symbolic state declaration
localparam [3:0]    est0 = 4'b0000,
                    est1 = 4'b0001,
                    est2 = 4'b0010,
                    est3 = 4'b0011,
                    est4 = 4'b0100,
                    est5 = 4'b0101,
                    est6 = 4'b0110,
                    est7 = 4'b0111,
                    est8 = 4'b1000,
                    est9 = 4'b1001,
                    est10 = 4'b1010,
                    est11 = 4'b1011;

//signal declaration
reg state_reg, state_next;

//state register

always @(clk, reset)
    begin
        if(reset)
            state_reg <= est0;
        else
            state_reg <= state_next;
    end

//next-state logic and output logic

always@*
    begin
    state_next = state_reg; // default state : the same
    //declaration of default outputs. 
    ready_CORDIC = 1'b0;
    beg_add_subt = 1'b0;
    ack_add_subt = 1'b0;
    sel_mux_1 = 1'b0;
    sel_mux_2 = 2'b10;
    sel_mux_3 = 1'b0;
    mode = 1'b0;
    enab_cont_iter = 1'b0;
    load_cont_iter = 1'b0;
    enab_cont_var = 1'b0;
    load_cont_var = 1'b0;
    enab_RB1 = 1'b0;
    enab_RB2 = 1'b0;
    enab_LUT = 1'b0;
    enab_d_ff_Xn = 1'b0;
    enab_d_ff_Yn = 1'b0;
    enab_d_ff_Zn = 1'b0;
    enab_d_ff_out = 1'b0;
    enab_dff_shifted_x = 1'b0;
    enab_dff_shifted_y = 1'b0;
    enab_dff_LUT = 1'b0;
    enab_dff_sign = 1'b0;
    enab_dff5 = 1'b0;
    
        case(state_reg)
        est0:
        begin
            next_state = est1;
        end
        
        est1:
        begin
            if(beg_FSM_CORDIC)
            begin
                next_state = est2;
                enab_RB1 = 1'b1;
                load_cont_iter = 1'b1;
                load_cont_iter = 1'b1;
            end
            else
                next_state = est1;
        end
        
        est2:
        begin
            enab_RB1 = 1'b1;
            next_state = est3;
        end
        
        est3:
        begin
            enab_RB1 = 1'b0;
            enab_RB2 = 1'b1;
            if(max_tick_iter)
                sel_mux_1 = 1'b0;
            else
                sel_mux_1 = 1'b1;
            next_state = est4;
        end
        
        est4:
        begin
            enab_RB2 = 1'b1;
            mode = 1'b0;
            enab_LUT = 1'b1;
            enab_RB2 = 1'b0;
            enab_dff_shifted_x = 1'b1;
            enab_dff_shifted_y = 1'b1;
            enab_dff_LUT = 1'b1;
            enab_dff_sign = 1'b1;
            next_state = est5;
        end
        
        est5:
        begin
            enab_dff_shifted_x = 1'b1;
            enab_dff_shifted_y = 1'b1;
            enab_dff_LUT = 1'b1;
            enab_dff_sign = 1'b1;
            
            if(min_tick_iter)
            begin
                if(operation == 1'b0)
                begin
                    if(shift_region_flag == (2'b00 || 2'b11))
                        sel_mux_2 = 2'b10;
                    else
                        sel_mux_2 = 2'b01;
                end
                
                else
                begin
                    if(shift_region_flag == (2'b00 || 2'b11))
                        sel_mux_2 = 2'b01;
                    else
                        sel_mux_2 = 2'b10;
                end
                next_state = est7;
            end
            else
                next_state = est6;            
        end
        
        est6:
        begin
            if(min_tick_var)
            begin
                enab_cont_iter = 1'b1;
                next_state = est3;
            end
            
            else
            begin
                sel_mux_2 = cont_var;
                next_state = est7;
            end
        end
        
        est7:
        begin
            beg_add_subt = 1'b1;
            next_state = est8;
        end
        
        est8:
        begin
            if(ready_add_subt)
            begin
                if(min_tick_iter)
                begin
                    if(operation == 1'b0)
                        enab_d_ff_Xn = 1'b1;
                    else
                        enab_d_ff_Yn = 1'b1;
                end
                else
                begin
                    if(max_tick_var)
                        enab_d_ff_Xn = 1'b1;
                    else if(min_tick_var)
                        enab_d_ff_Zn = 1'b1;
                    else
                        enab_d_ff_Yn = 1'b1;
                end               
                next_state = est9;
            end    
            else
                next_state = est8;
        end
        est9:
        begin
            if(min_tick_iter)
            begin
                if(operation == 1'b0)
                begin
                    if(shift_region_flag == (2'b01 || 2'b10))
                        sel_mux_3 = 1'b1;
                    else
                        sel_mux_3 = 1'b0;
                end
                else
                begin
                    if(shift_region_flag == (2'b01 || 2'b10))
                        sel_mux_3 = 1'b0;
                    else
                        sel_mux_3 = 1'b1;
                end
                next_state = est10;
                enab_dff5 = 1'b1;                  
            end
            else
            begin
                enab_cont_var = 1'b1;
                next_state = est6; 
            end
        end
        
        est10:
        begin
            enab_d_ff_out = 1'b1;
            next_state = est11;
        end
        
        est11:
        begin
            ready_CORDIC = 1'b1;
            if(ACK_FSM_CORDIC)
                next_state = est0;
            else
                next_state = est11;
        end
        
        default : state_next = est0;
        endcase
    end
endmodule
