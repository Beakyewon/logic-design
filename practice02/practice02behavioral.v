module fa_behavior( 	s,
			co,
			a,
			b,
			ci	);

output	s	;
output	co	;

input	a	;
input 	b	;
input	ci	;

reg	s	;
reg	co	;

always @(a, b, ci) begin
	s	= (~a&~b&ci)|(~a&b&~ci)|(a&~b&~ci)	;
	co	= (a&b)|(b&ci)|(a&ci)	;
end

endmodule
