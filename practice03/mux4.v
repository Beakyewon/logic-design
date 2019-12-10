module mux2to1_cond(	out,
			in0,
			in1,
			sel);
output		out		;
input		in0		;
input		in1		;
input		sel		;

assign	out = (sel)? in1 : in0 ;

endmodule

module mux4to1_inst(	out,
			in0,
			in1,
			sel)    ;
output		out		;
input	[1:0]	in0		;
input	[1:0]	in1		;
input	[1:0]	sel		;

wire 	[1:0]	carry		;

mux2to1_cond		mux4tol_u0(	.out ( carry[0] ),
				.in0 ( in0[0] ),
				.in1 ( in1[0] ),
				.sel ( sel[0] ));

mux2to1_cond		mux4tol_u1(	.out ( carry[1] ),
				.in0 ( in0[1] ),
				.in1 ( in1[1] ),
				.sel ( sel[0] ));

mux2to1_cond		mux4tol_u2(	.out ( out ),
				.in0 ( carry[0] ),
				.in1 ( carry[1] ),
				.sel ( sel[1] ));
endmodule

module mux4to1_if( 	out,
			in0,
			in1,
			in2,
			in3,
			sel);

output		out		;
input		in0		;
input		in1		;
input		in2		;
input		in3		;
input	[1:0]	sel		;

reg 		out		;
always @( sel, in0, in1, in2, in3  ) begin
	if		( sel == 2'b00 ) begin
		out = in0	;
	end else if 	( sel == 2'b01 ) begin
		out = in1	;
	end else if	( sel == 2'b10 ) begin
		out = in2	;
	end else if	( sel == 2'b11 ) begin
		out = in3	;
	end	
end
endmodule



module mux4tol_case(	out,
			in0,
			in1,
			in2,
			in3,
			sel);

output		out		;
input		in0		;
input		in1		;
input		in2		;
input		in3		;
input	[1:0]	sel		;

reg	out	;
//always @( sel, in0, in1, in2, in3)begin
// sel = {sel[1], sel[0]}
always @( sel[0], in0, in1, sel[1], in2, in3 )begin
	case( {sel} )
		2'b00 : out = in0	;
		2'b01 : out = in1	;
		2'b10 : out = in2	;
		2'b11 : out = in3	;
	endcase
end
endmodule


