`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:04:52 09/02/2015
// Design Name:   filter_6dsp
// Module Name:   F:/jiaweiwei/ISE workspace/filter/code/test_filter_6dsp.v
// Project Name:  filter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: filter_6dsp
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_filter_6dsp;

	// Inputs
	reg ce;
	reg sclr;
	reg clk;
	reg [9:0] filter_in;

	// Outputs
	wire [10:0] filter_out;
	wire clk_20m;

	// Instantiate the Unit Under Test (UUT)
	filter_6dsp uut (
		.filter_out(filter_out), 
		.clk_20m(clk_20m), 
		.clk(clk), 
		.filter_in(filter_in), 
		.sclr(sclr), 
		.ce(ce)
	);
	
	reg [8:0] data_in[0:100];
	integer i;
	integer j;
	integer w_file;

	initial begin
		// Initialize Inputs
		$readmemh("filter_in_r.txt",data_in);
		j = 8'd0;
		w_file = $fopen("filter_out_r.txt");
		
		clk = 0;
		filter_in = 0;
		sclr = 0;
		ce = 1;

		#10
		sclr = 1;
	
		#10
		sclr = 0;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always @(posedge clk_20m or posedge sclr)
		begin
			if(sclr == 1'd1)
				begin
					filter_in <= 10'd0;
					i <= 8'd0;
				end
			else
				begin
					if(i>100)
						filter_in <= 10'd0;
					else
						begin
							filter_in <= data_in[i];
							i <= i+8'd1;
						end
				end
		end

	always @(negedge clk_20m or posedge sclr)
		begin
			if(sclr == 1'd1)
				begin
					j <= 8'd0;
				end
			else
				begin
					$fdisplay(w_file,"%h",filter_out);
					j <= j+8'd1;
					if(j == 8'd100)
						$stop;
				end
		end
      
endmodule

