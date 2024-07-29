module fetch_cycle_tb();

	// Inputs
	reg clk=1'b1;
	reg rst;
	reg PCSrcE;
	reg [31:0] PCTargetE;

	// Outputs
	wire [31:0] InstrD;
	wire [31:0] PCD;
	wire [31:0] PCPlus4D;
	

	// Instantiate the Unit Under Test (UUT)
	fetch_cycle uut (
		.clk(clk), 
		.rst(rst), 
		.PCSrcE(PCSrcE), 
		.PCTargetE(PCTargetE), 
		.InstrD(InstrD), 
		.PCD(PCD), 
		.PCPlus4D(PCPlus4D)
	);


	always begin
	clk=~clk;
	#50;
	end
	
	
	
	initial begin
		// Initialize Inputs
		
		rst <= 1'b0;
		#200;
		rst<=1'b1;
		PCSrcE<= 1'b0;
		PCTargetE <= 32'h00000000;
		#700;
		$finish;

		
	end
	
	initial begin
	$dumpfile("dump.PCD");
	$dumpvars(0);
	end
	
      
endmodule
