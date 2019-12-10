module cnt8(	out,
		en,
		clk,
		rst_n);

output	[7:0]	out;
input		en;
input		clk;
input		rst_n;

reg	[7:0] out	;
always @(posedge clk or negedge rst_n) begin
	if(rst_n == 1'b0) begin
	   out <= 8'd0	;

