`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:51:20 10/01/2015
// Design Name:   FPU_Multiplication_Function
// Module Name:   /home/darv2309/Dropbox/Zero_Add_Function/TBMULTZERO32.v
// Project Name:  Zero_Add_Function
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FPU_Multiplication_Function
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TBMULTZERO32;

	
parameter width = 10;
parameter W=32;
	// Inputs 
	reg clk;
	reg rst;
	reg beg_FSM;
	reg rst_FSM;
	reg [W-1:0] Data_MX;
	reg [W-1:0] Data_MY;
	reg [1:0] round_mode;

	// Outputs
	wire underflow_flag;
	wire overflow_flag;
	wire ready_flag;
	wire [W-1:0] F_ieee_result;

	// Instantiate the Unit Under Test (UUT)
	FPU_Multiplication_Function uut (
		.clk(clk), 
		.rst(rst), 
		.beg_FSM(beg_FSM), 
		.rst_FSM(rst_FSM), 
		.Data_MX(Data_MX), 
		.Data_MY(Data_MY), 
		.round_mode(round_mode), 
		.overflow_flag(overflow_flag), 
		.underflow_flag(underflow_flag),
		.ready_flag(ready_flag), 
		.F_ieee_result(F_ieee_result)
	);


   reg [W-1:0] Array_IN [0:((2**width)-1)];
   reg [W-1:0] Array_IN_2 [0:((2**width)-1)];
	integer contador;
   integer FileSaveData;
   integer Cont_CLK;
	integer Recept;

	
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		beg_FSM = 0;
		rst_FSM = 0;
		Data_MX = 0;
		Data_MY = 0;
		round_mode = 2'b00;

//		// Wait 100 ns for global reset to finish
//		#100 rst = 0;

		//Abre el archivo testbench
      FileSaveData = $fopen("ResultadoXilinxDRV.txt","w");
		
		//Inicializa las variables del testbench
		contador = 0;
		Cont_CLK = 0;
		Recept = 1;
		
		// Wait 100 ns for global reset to finish
		
		#100 rst = 0;
		
		//Add stimulus here
	end
	
	   //**************************** Se lee el archivo txt y se almacena en un arrays***************************************************//
		
		initial begin
			$readmemh("Hexadecimal_A.txt", Array_IN);
			$readmemh("Hexadecimal_B.txt", Array_IN_2);
		end
		
		 //**************************** Transmision de datos de forma paralela ************************************************************//
		 
		
		
    always @(posedge clk) begin
        if(rst) begin
            contador = 0;
            Cont_CLK = 0; 
        end
        else begin
            if (contador == (2**width)) begin
                $fclose(FileSaveData);
                $finish;
            end
            else begin
                if(Cont_CLK ==1) begin
                    contador = contador + 1;
					beg_FSM = 0;
                    Data_MX = Array_IN[contador];
                    Data_MY = Array_IN_2[contador];
                    Cont_CLK = Cont_CLK + 1;
					rst_FSM = 0;
                end
                else if(Cont_CLK ==2) begin
					rst_FSM = 0;
					beg_FSM = 1;
					Cont_CLK = Cont_CLK +1 ;
				end
                else if(ready_flag ==1) begin
                    
                    rst_FSM = 1;

					Cont_CLK = 0;
                end
 
                else begin
					rst_FSM = 0;
                    Cont_CLK = Cont_CLK + 1;
                    beg_FSM = 0;
                end
            end 
        end
    end

    // Recepción de datos y almacenamiento en archivo*************
    always @(posedge clk) begin
        if(ready_flag) begin
			if(Recept == 1) begin
				$fwrite(FileSaveData,"%h\n",F_ieee_result);
				Recept = 0;
			end
		end
        else begin
			Recept = 1; 
		end	
    end 

 
 //******************************* Se ejecuta el CLK ************************

    initial forever #5 clk = ~clk;
	 
endmodule

