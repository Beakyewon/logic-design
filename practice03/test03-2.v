module test03_2 	;

reg 	in0	;
reg	in1	;
reg	in2	;
reg	in3	;
reg	[1:0] sel	;

wire	out1	;
wire	out2	;
wire	out3	;

mux4to1_inst	dut1(		.out( out1 ),
			.in0( {in1, in0} ),
			.in1( {in2, in4} ),
			.sel (sel));

mux4to1_if	dut2( 		.out( out2 ),
			.in0( in0 ),
			.in1( in1 ),
			.in2( in2 ),
			.in3( in3 ),
			.sel( sel ));

mux4tol_case 	dut3(		.out( out3 ),
			.in0( in0 ),
			.in1( in1 ),
			.in2( in2 ),
			.in3( in3 ),
			.sel( sel ));

initial begin 
	$display ("using inst : out 1");
	$display ("using if : out 2");
	$display ("using case : out 3");
	$display ("===========================================================");
	$display (" sel   in0   in1   in2   in3    out1   out2   out3 ");
	$display ("===========================================================");
	#(50)	{sel, in0, in1, in2, in3} = 	5'b00000 ; #(50) $display (" %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel,   in0,   in1,   in2,   in3,    out1,   out2,   out3);
	#(50)	{sel, in0, in1, in2, in3} =	5'b00100 ; #(50) $display (" %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel,   in0,   in1,   in2,   in3,    out1,   out2,   out3);
	#(50)	{sel, in0, in1, in2, in3} =	5'b01000 ; #(50) $display (" %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel,   in0,   in1,   in2,   in3,    out1,   out2,   out3);
	#(50)	{sel, in0, in1, in2, in3} =	5'b01100 ; #(50) $display (" %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel,   in0,   in1,   in2,   in3,    out1,   out2,   out3);
	#(50)	{sel, in0, in1, in2, in3} =	5'b10000 ; #(50) $display (" %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel,   in0,   in1,   in2,   in3,    out1,   out2,   out3);
	#(50)	$finish	;
end

endmodule
