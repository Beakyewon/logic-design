module tb_decoder ;

wire	[7:0]	dec3to8_shift	;
wire	[7:0]	dec3to8_case	;

reg	[2:0]	in	;
reg		en	;


dec3to8_shift	dut0(	.out(	dec3to8_shift ),
			.in (	in	),
			.en (	en	));

dec3to8_case	dut1( 	.out(	dec3to8_case ),
			.in (	in	),
			.en (	en	));

initial begin
$display("========================================================================");
$display("	en	in	dec3to8_shift	dec3to8_case	");
$display("========================================================================");

#(50)	{en, in} = 4'b0000; #(50) $display("%b\t%b\t%b\t%b", en, in,	dec3to8_shift,	dec3to8_case);
#(50)	{en, in} = 4'b1000; #(50) $display("%b\t%b\t%b\t%b", en, in,	dec3to8_shift,	dec3to8_case);
#(50)	{en, in} = 4'b1010; #(50) $display("%b\t%b\t%b\t%b", en, in,	dec3to8_shift,	dec3to8_case);
#(50)	{en, in} = 4'b1100; #(50) $display("%b\t%b\t%b\t%b", en, in,	dec3to8_shift,	dec3to8_case);
#(50)	{en, in} = 4'b1001; #(50) $display("%b\t%b\t%b\t%b", en, in,	dec3to8_shift,	dec3to8_case);
#(50)	{en, in} = 4'b1111; #(50) $display("%b\t%b\t%b\t%b", en, in,	dec3to8_shift,	dec3to8_case);
$finish;
end

endmodule

