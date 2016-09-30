`default_nettype none

module nop(output wire [9:0] ULED);

  assign ULED = 10'b1111111111;
  
endmodule
`default_nettype wire
