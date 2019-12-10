module tb_bnb ;

parameter	tCK = 1000/50 ;

wire	   q_nonblock ;
wire	   q_block ; 
reg	   d ; 
reg	   clk ;

initial clk = 1'b0;
always #(tCK/2) clk = ~clk ;


block		dut0( 	.q ( q_block ),
			.d ( d ), 
			.clk ( clk ));



nonblock	dut1( 	.q ( q_nonblock ),
			.d ( d ), 
			.clk ( clk ));
initial begin
$display("========================================================================");
$display(" d,	q_nonblock,	q_block ");
$display("========================================================================");

#(50) {d} = 1'b0;  $display("%b\t%b\t%b", d,	q_nonblock,	q_block);
#(50) {d} = 1'b1;  $display("%b\t%b\t%b", d,	q_nonblock,	q_block);
#(50) {d} = 1'b0;  $display("%b\t%b\t%b", d,	q_nonblock,	q_block);
#(50) {d} = 1'b1;  $display("%b\t%b\t%b", d,	q_nonblock,	q_block);
#(50) {d} = 1'b1;  $display("%b\t%b\t%b", d,	q_nonblock,	q_block);
#(50) {d} = 1'b0;  $display("%b\t%b\t%b", d,	q_nonblock,	q_block);

$finish;
end
endmodule
