`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:23:29 09/27/2015 
// Design Name: 
// Module Name:    FF_T 
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
module FF_T(clk, rst, Q);

	input wire clk;
	input wire rst;
	output reg Q = 0;
	
	always @(posedge clk) begin
      if (rst) begin
         Q <= 1'b0;
      end else begin
         Q <= ~Q;
      end
	end


endmodule
