`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:27:02 10/01/2015
// Design Name:   FPU_Add_Subtract_Function
// Module Name:   /home/darv2309/Dropbox/Zero_Add_Function/TB32_ZDetector.v
// Project Name:  Zero_Add_Function
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FPU_Add_Subtract_Function
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB32_ZDetector;
parameter width = 10;
	// Inputs 
	reg clk;
	reg rst;
	reg beg_FSM;
	reg rst_FSM;
	reg [31:0] Data_X;
	reg [31:0] Data_Y;
	reg add_subt;
	reg [1:0] r_mode;

	// Outputs
	wire overflow_flag;
	wire underflow_flag;
	wire ready;
	wire [31:0] final_result_ieee;

	// Instantiate the Unit Under Test (UUT)
	FPU_Add_Subtract_Function uut (
		.clk(clk), 
		.rst(rst), 
		.beg_FSM(beg_FSM), 
		.rst_FSM(rst_FSM), 
		.Data_X(Data_X), 
		.Data_Y(Data_Y), 
		.add_subt(add_subt), 
		.r_mode(r_mode), 
		.overflow_flag(overflow_flag), 
		.underflow_flag(underflow_flag), 
		.ready(ready), 
		.final_result_ieee(final_result_ieee)
	);

   reg [31:0] Array_IN [0:((2**width)-1)];
   reg [31:0] Array_IN_2 [0:((2**width)-1)];
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
		Data_X = 0;
		Data_Y = 0;
		r_mode = 2'b00;
		add_subt = 1;

//		// Wait 100 ns for global reset to finish
//		#100 rst = 0;

		//Abre el archivo testbench
      FileSaveData = $fopen("ResultadoSumaXilinx.txt","w");
		
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
					beg_FSM = 0;
                    Data_X = Array_IN[contador];
                    Data_Y = Array_IN_2[contador];
                    Cont_CLK = Cont_CLK + 1;
					rst_FSM = 0;
                end
                else if(Cont_CLK ==2) begin
					rst_FSM = 0;
					beg_FSM = 1;
					Cont_CLK = Cont_CLK +1 ;
				end 
                else if(Cont_CLK ==200) begin
                    
                    contador = contador + 1;
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
        if(ready) begin
			if(Recept == 1) begin
				$fwrite(FileSaveData,"%b %\n",final_result_ieee);
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


