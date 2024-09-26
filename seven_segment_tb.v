`timescale 1ns/1ns
module bcd_7_segment_tb();
reg [3:0]bcd;
wire [6:0]seg;
bcd_7_seg dut(.bcd(bcd),.seg(seg));

initial
begin 
  bcd=4'd0;
#2;bcd=4'd1;
#2;bcd=4'd2;
#2;bcd=4'd3;
#2;bcd=4'd4;
#2;bcd=4'd5;
#2;bcd=4'd6;
#2;bcd=4'd7;
#2;bcd=4'd8;
#2;
$finish;
end
endmodule
