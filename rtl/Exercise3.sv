module Exercise3 (
    input clk,
    input nReset,
    input [3:0] a,
    input [15:0] b,
    input [15:0] c,
    output [15:0] out
);

logic [7:0] alpha_d;
logic [7:0] beta_d;

Mystery1 Alpha (
  .a (a[1:0]),
  .b (b[7:0]),
  .c (c[7:0]),
  .d (alpha_d)
);

Mystery1 Beta (
  .a (a[3:2]),
  .b (b[15:8]),
  .c (c[15:8]),
  .d (beta_d)
);

Mystery2 Gamma (
  .clk    (clk),
  .nReset (nReset),
  .a_in   (alpha_d),
  .b_in   (beta_d),
  .out    (out)
);

endmodule