`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:19:28 09/01/2015 
// Design Name: 
// Module Name:    filter_6dsp 
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
module filter_6dsp(
	output [10:0] filter_out,
	output clk_20m,
	input clk,
	input [9:0] filter_in,
	input sclr,
	input ce
	);
	
	wire [47:0] p_1;
	wire [47:0] p_2;
	wire [47:0] p_3;
	wire [47:0] p_4;
	wire [47:0] p_5;
	wire [47:0] p_6;	
	
	reg sclr_p;
	reg [2:0] count;
	reg [9:0] data[0:95];
	reg [15:0] coeff[0:47];
	reg [9:0] dsp48a12_a[0:5];
	reg [9:0] dsp48a12_d[0:5];
	reg [15:0] dsp48a12_b[0:5];
	reg [26:0] sum;
	reg [10:0] temp;

	integer i;
	
	initial begin
 		coeff[0] = 16'h000b;
		coeff[1] = 16'hffff;
		coeff[2] = 16'hffe7;
		coeff[3] = 16'hfff8;
		coeff[4] = 16'h002a;
		coeff[5] = 16'h001f;
		coeff[6] = 16'hffc8;
		coeff[7] = 16'h0000;
		
		coeff[8] = 16'hffba;
		coeff[9] = 16'h003b;
		coeff[10] = 16'h007f;
		coeff[11] = 16'hffda;
		coeff[12] = 16'hff3d;
		coeff[13] = 16'hffee;
		coeff[14] = 16'h0000;
		coeff[15] = 16'h0000;
		
		coeff[16] = 16'h0108;
		coeff[17] = 16'h0079;
		coeff[18] = 16'hfec7;
		coeff[19] = 16'hfeed;
		coeff[20] = 16'h013d;
		coeff[21] = 16'h01dd;
		coeff[22] = 16'h0000;
		coeff[23] = 16'h0000;
		
		coeff[24] = 16'hff0b;
		coeff[25] = 16'hfd3b;
		coeff[26] = 16'h0041;
		coeff[27] = 16'h03af;
		coeff[28] = 16'h00fb;
		coeff[29] = 16'hfb94;
		coeff[30] = 16'h0000;
		coeff[31] = 16'h0000;
		
		coeff[32] = 16'hfd25;
		coeff[33] = 16'h04c1;
		coeff[34] = 16'h0578;
		coeff[35] = 16'hfba6;
		coeff[36] = 16'hf700;
		coeff[37] = 16'h02b2;
		coeff[38] = 16'h0000;
		coeff[39] = 16'h0000;
		
		coeff[40] = 16'h0dee;
		coeff[41] = 16'h015e;
		coeff[42] = 16'he9e4;
		coeff[43] = 16'hf3ad;
		coeff[44] = 16'h2e1e;
		coeff[45] = 16'h69ca;
		coeff[46] = 16'h0000;
		coeff[47] = 16'h0000;
	end

//分频
	always @(posedge clk or posedge sclr) begin
		if(sclr == 1)
			count <= 3'd0;
		else if(count == 3'd7)
			count <= 3'd0;
		else
			count <= count+3'd1;
	end
	assign clk_20m = ~count[2:2];

//数据移位	
	always @(posedge clk or posedge sclr) begin
		if(sclr == 1) begin
			for(i=0;i<96;i=i+1)
				data[i] = 0;
		end
		else if(count == 3'd6) begin
			data[95] <= data[94];
			data[94] <= data[93];
			data[93] <= data[92];
			data[92] <= data[91];
			data[91] <= data[90];
			data[90] <= data[89];
			data[89] <= data[87];
			
			data[87] <= data[86];
			data[86] <= data[85];
			data[85] <= data[84];
			data[84] <= data[83];
			data[83] <= data[82];
			data[82] <= data[79];
			
			data[79] <= data[78];
			data[78] <= data[77];
			data[77] <= data[76];
			data[76] <= data[75];
			data[75] <= data[74];
			data[74] <= data[71];

			data[71] <= data[70];
			data[70] <= data[69];
			data[69] <= data[68];
			data[68] <= data[67];
			data[67] <= data[66];
			data[66] <= data[63];
			
			data[63] <= data[62];
			data[62] <= data[61];
			data[61] <= data[60];
			data[60] <= data[59];
			data[59] <= data[58];
			data[58] <= data[55];

			data[55] <= data[54];
			data[54] <= data[53];
			data[53] <= data[52];
			data[52] <= data[51];
			data[51] <= data[50];
			data[50] <= data[45];
			
			data[45] <= data[44];
			data[44] <= data[43];
			data[43] <= data[42];
			data[42] <= data[41];
			data[41] <= data[40];
			data[40] <= data[37];
			
			data[37] <= data[36];
			data[36] <= data[35];
			data[35] <= data[34];
			data[34] <= data[33];
			data[33] <= data[32];
			data[32] <= data[29];
			
			data[29] <= data[28];
			data[28] <= data[27];
			data[27] <= data[26];
			data[26] <= data[25];
			data[25] <= data[24];
			data[24] <= data[21];
			
			data[21] <= data[20];
			data[20] <= data[19];
			data[19] <= data[18];
			data[18] <= data[17];
			data[17] <= data[16];
			data[16] <= data[13];
			
			data[13] <= data[12];
			data[12] <= data[11];
			data[11] <= data[10];
			data[10] <= data[9];
			data[9] <= data[8];
			data[8] <= data[6];
			
			data[6] <= data[5];
			data[5] <= data[4];
			data[4] <= data[3];
			data[3] <= data[2];
			data[2] <= data[1];
			data[1] <= data[0];
			data[0] <= filter_in;
		end
	end

//输入数据、系数
	always @(posedge clk or posedge sclr) begin
		if(sclr == 1) begin
			dsp48a12_a[0] = 0;
			dsp48a12_b[0] = 0;
			dsp48a12_d[0] = 0;
		end
		else begin
			dsp48a12_a[0] <= data[count];
			dsp48a12_d[0] <= data[95-count];
			dsp48a12_b[0] <= coeff[count];
		end
	end
	
	always @(posedge clk or posedge sclr) begin
		if(sclr == 1) begin
			dsp48a12_a[1] = 0;
			dsp48a12_b[1] = 0;
			dsp48a12_d[1] = 0;
		end
		else begin
			dsp48a12_a[1] <= data[count+8];
			dsp48a12_d[1] <= data[87-count];
			dsp48a12_b[1] <= coeff[count+8];
		end
	end
	
	always @(posedge clk or posedge sclr) begin
		if(sclr == 1) begin
			dsp48a12_a[2] = 0;
			dsp48a12_b[2] = 0;
			dsp48a12_d[2] = 0;
		end
		else begin
			dsp48a12_a[2] <= data[count+16];
			dsp48a12_d[2] <= data[79-count];
			dsp48a12_b[2] <= coeff[count+16];
		end
	end
	
	always @(posedge clk or posedge sclr) begin
		if(sclr == 1) begin
			dsp48a12_a[3] = 0;
			dsp48a12_b[3] = 0;
			dsp48a12_d[3] = 0;
		end
		else begin
			dsp48a12_a[3] <= data[count+24];
			dsp48a12_d[3] <= data[71-count];
			dsp48a12_b[3] <= coeff[count+24];
		end
	end
	
	always @(posedge clk or posedge sclr) begin
		if(sclr == 1) begin
			dsp48a12_a[4] = 0;
			dsp48a12_b[4] = 0;
			dsp48a12_d[4] = 0;
		end
		else begin
			dsp48a12_a[4] <= data[count+32];
			dsp48a12_d[4] <= data[63-count]; 
			dsp48a12_b[4] <= coeff[count+32];
		end
	end
	
	always @(posedge clk or posedge sclr) begin
		if(sclr == 1) begin
			dsp48a12_a[5] = 0;
			dsp48a12_b[5] = 0;
			dsp48a12_d[5] = 0;
		end
		else begin
			dsp48a12_a[5] <= data[count+40];
			dsp48a12_d[5] <= data[55-count];
			dsp48a12_b[5] <= coeff[count+40];
		end
	end

//和运算及P_REG复位
	always @(negedge clk or posedge sclr) begin
		if(sclr == 1) begin
			sclr_p <= 1'b0;
			sum <= 27'd0;
			temp <= 11'd0;
		end
		else if(count == 3'd2)
			sum <= p_2[26:0]+p_3[26:0]+p_4[26:0]+p_5[26:0]+p_6[26:0];
		else if(count == 3'd3) begin
			sum <= sum+p_1[26:0];
			sclr_p <= 1'b1; 
		end
		else if(count == 3'd4) begin
			temp <= sum[26:16];
			sclr_p <= 1'b0;
		end
	end

//输出
	assign filter_out = temp;
	
	dsp48a12 dsp48a12_1(
		.sclra(sclr),
		.sclrb(sclr),
		.sclrd(sclr),
		.sclrm(sclr),
		.sclrp(sclr_p),
		.ce(ce), 
		.clk(clk), 
		.a(dsp48a12_a[0]), 
		.b(dsp48a12_b[0]), 
		.d(dsp48a12_d[0]),
		.p(p_1)
	);
	dsp48a12 dsp48a12_2(
		.sclra(sclr),
		.sclrb(sclr),
		.sclrd(sclr),
		.sclrm(sclr),
		.sclrp(sclr_p),
		.ce(ce), 
		.clk(clk), 
		.a(dsp48a12_a[1]), 
		.b(dsp48a12_b[1]), 
		.d(dsp48a12_d[1]),
		.p(p_2)
	);
	dsp48a12 dsp48a12_3(
		.sclra(sclr),
		.sclrb(sclr),
		.sclrd(sclr),
		.sclrm(sclr),
		.sclrp(sclr_p),
		.ce(ce), 
		.clk(clk), 
		.a(dsp48a12_a[2]), 
		.b(dsp48a12_b[2]),
		.d(dsp48a12_d[2]),		
		.p(p_3)
	);
	dsp48a12 dsp48a12_4(
		.sclra(sclr),
		.sclrb(sclr),
		.sclrd(sclr),
		.sclrm(sclr),
		.sclrp(sclr_p),
		.ce(ce), 
		.clk(clk), 
		.a(dsp48a12_a[3]), 
		.b(dsp48a12_b[3]), 
		.d(dsp48a12_d[3]),
		.p(p_4)
	);
	dsp48a12 dsp48a12_5(
		.sclra(sclr),
		.sclrb(sclr),
		.sclrd(sclr),
		.sclrm(sclr),
		.sclrp(sclr_p),
		.ce(ce), 
		.clk(clk), 
		.a(dsp48a12_a[4]), 
		.b(dsp48a12_b[4]),
		.d(dsp48a12_d[4]),		
		.p(p_5)
	);
	dsp48a12 dsp48a12_6(
		.sclra(sclr),
		.sclrb(sclr),
		.sclrd(sclr),
		.sclrm(sclr),
		.sclrp(sclr_p),
		.ce(ce), 
		.clk(clk), 
		.a(dsp48a12_a[5]), 
		.b(dsp48a12_b[5]), 
		.d(dsp48a12_d[5]),
		.p(p_6)
	);
endmodule
