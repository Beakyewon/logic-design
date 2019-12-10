module fa_dataflow( 	s,
			co,
			a,
			b,
			ci	);

output	s	;
output	co	;

input	a	;
input 	b	;
input	ci	;

assign	s	= (~a&~b&ci)|(~a&b&~ci)|(a&~b&~ci)	;
assign	co	= (a&b)|(b&ci)|(a&ci)	;

endmodule ;
