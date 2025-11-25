/**
  @brief A fibonacci linear feedback shift register module

  @input clk    clock
  @input nReset active-low reset
  @input init   initial value following a reset
  @output out   current output
*/
module Exercise2 (
    input clk,
    input nReset,
    input [15:0] init,
    output logic [15:0] out
);

logic feedback;

always_ff @(posedge clk or negedge nReset) begin
  if (!nReset) begin
    out <= init;
  end else begin
    feedback = out[15] ^ out[13] ^ out[12] ^ out[10];
    out <= {out[14:0], feedback};
  end  end

endmodule
