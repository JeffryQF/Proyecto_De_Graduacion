`timescale 1ns / 1ps

module ffd_tb;

// Declare a clock period constant.
parameter ClockPeriod = 10;
parameter W = 5;
// Clock Generation method 1:
/*initial begin
forever Clock = #(ClockPeriod / 2) ~ Clock;
end*/
// Clock Generation method 2:
/*initial begin
always #(ClockPeriod / 2) Clock = ~Clock;
end*/


//declaration of signals

reg clk; //system clock
reg rst; //system reset
reg enable; //load signal
reg [W-1:0] D; //input signal
wire [W-1:0] Q; //output signal

//Instantiation of the D flip flop desing below
d_ff_en	dut #(.W(W))
(
	.clk(clk), 			//system clock
	.rst(rst), 			//system reset
	.enable(enable),	//load signal
	.D(D), 				//input signal
	.Q(Q)				//output signal
);

//Generation of the clock
initial begin
	clk = 0;
	#100
	forever clk = #(ClockPeriod / 2) ~clk;
end

//Stimulus specification

initial
begin
	rst = 1;
	enable = 0;
	D = 5'b00000;
	#10
	reset = 0;
	enable = 1;

	#10
	D = 5'b11001;

	#10
	enable = 0;

	#10
	D = 5'b11111;

	#30
	enable = 1;

	#20
	reset = 1;

	#30 $stop;
end

initial
begin
$timeformat(-9,1,"ns",12);
$display(" Time clk rst EN D Q");
$monitor("%t %b %b %b %b %b", $realtime,
clk,rst,enable,D,Q);
end

endmodule
