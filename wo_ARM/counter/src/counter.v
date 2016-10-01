`default_nettype none

module counter(input  wire       CLK_IN,    // PIN_AF14
               input  wire       RST_X_IN,  // PIN_AA14
               output wire [9:0] ULED);

  wire CLK;
  wire RST_X_O;
  CLKRSTGEN clkrstgen(CLK_IN, RST_X_IN, CLK, RST_X_O);
  
  wire RST = ~RST_X_O;
  
  reg [31:0] cnt;
  always @(posedge CLK) begin
    if (RST) cnt <= 0;
    else     cnt <= cnt + 1;
  end
  
  assign ULED = cnt[31:22];
  
endmodule
`default_nettype wire
