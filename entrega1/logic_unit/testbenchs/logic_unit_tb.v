`timescale 1 ns / 10 ps
module logic_unit_tb;
  wire [3:0] test_Out;
  reg [1:0] test_S;
  reg [3:0] test_A, test_B;
  ul4 ul4_1(test_Out, test_A, test_B, test_S);

  initial 
  begin
    for (test_A = 4'b0000; test_A <= 4'b1111; test_A = test_A + 1) begin
      for (test_B = 4'b0000; test_B <= 4'b1111; test_B = test_B + 1) begin
        for (test_S = 1'b0; test_S <= 1'b1; test_S = test_S + 1) begin
          #20; 
        end
      end
    end
    $finish;
  end

  initial
  begin
    $monitor ("tiempo =%d, A=%b, B=%b, S=%b, Out=%b", $time, test_A, test_B, test_S, test_Out);
    $dumpfile ("data/logic_unit_tb.vcd");
    $dumpvars;
  end
endmodule
//Wire = Both input and output
//always@()
//gtkwave ha_tb.vcd &
