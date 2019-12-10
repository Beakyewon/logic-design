module fa_case( 	s,
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
always @(a,b,ci) begin
	case( {ci,a,b} )
		3'b000 : {co, s} =2'b00	;
		3'b001 : {co, s} =2'b01	;
		3'b010 : {co, s} =2'b01	;
		3'b011 : {co, s} =2'b10	;
		3'b100 : {co, s} =2'b01	;
		3'b101 : {co, s} =2'b10	;
		3'b110 : {co, s} =2'b10	;
		3'b111 : {co, s} =2'b11	;
	endcase
end
endmodule
