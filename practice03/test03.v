module	test03		;


reg 	in0	;
reg	in1	;
reg	sel	;

wire	y1	;
wire	y2	;
wire	y3	;

mux2to1_cond dut_1(	.out ( y1 ),
			.in0 ( in0 ),
			.in1 ( in1 ),
			.sel ( sel ))	;

mux2to1_if dut_2(	.out ( y2 ),
			.in0 ( in0 ),
			.in1 ( in1 ),
			.sel ( sel ))	;

mux2tol_case dut_3(	.out ( y3 ),
			.in0 ( in0 ),
			.in1 ( in1 ),
			.sel ( sel ))	;

initial begin

	$display(" cond level: y1");
	$display(" if level: y2");
	$display(" case level: y3");
	$display("=================================================================");
	$display(" sel       in1         in0          y1         y2            y3 ");
	$display("=================================================================");
	#(50)	{sel, in1, in0} = 	3'b000 ; #(50) $display (" %b\t%b\t%b\t%b\t%b\t%b", sel,  in1,  in0,   y1,   y2,   y3);
	#(50)	{sel, in1, in0} =	3'b001 ; #(50) $display (" %b\t%b\t%b\t%b\t%b\t%b", sel,  in1,  in0,   y1,   y2,   y3);
	#(50)	{sel, in1, in0} =	3'b010 ; #(50) $display (" %b\t%b\t%b\t%b\t%b\t%b", sel,  in1,  in0,   y1,   y2,   y3);
	#(50)	{sel, in1, in0} =	3'b011 ; #(50) $display (" %b\t%b\t%b\t%b\t%b\t%b", sel,  in1,  in0,   y1,   y2,   y3);
	#(50)	{sel, in1, in0} =	3'b100 ; #(50) $display (" %b\t%b\t%b\t%b\t%b\t%b", sel,  in1,  in0,   y1,   y2,   y3);
	#(50)	{sel, in1, in0} =	3'b101 ; #(50) $display (" %b\t%b\t%b\t%b\t%b\t%b", sel,  in1,  in0,   y1,   y2,   y3);
	#(50)	{sel, in1, in0} =	3'b110 ; #(50) $display (" %b\t%b\t%b\t%b\t%b\t%b", sel,  in1,  in0,   y1,   y2,   y3);
	#(50)	{sel, in1, in0} =	3'b111 ; #(50) $display (" %b\t%b\t%b\t%b\t%b\t%b", sel,  in1,  in0,   y1,   y2,   y3);
	#(50)	$finish	;
end

endmodule
