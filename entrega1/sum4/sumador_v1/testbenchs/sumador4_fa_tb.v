`timescale 1 ns / 10 ps
module sumador4_f4_tb;
  wire test_carry_out;
  wire [3:0] test_S;
  reg test_carry_in;
  reg [3:0] test_A, test_B;
  sum4_fa sum4_fa1(test_S, test_carry_out, test_A, test_B, test_carry_in);

  initial 
  begin
    for (test_A = 4'b0000; test_A <= 4'b1111; test_A = test_A + 1) begin
      for (test_B = 4'b0000; test_B <= 4'b1111; test_B = test_B + 1) begin
        for (test_carry_in = 1'b0;test_carry_in <= 1'b1;test_carry_in =test_carry_in + 1) begin
          #20; 
        end
      end
    end
    $finish;
  end

  initial
  begin
    $monitor ("tiempo =%d, A=%b, B=%b, c_in=%b, S=%b, c_out=%b", $time, test_A, test_B,test_carry_in, test_S, test_carry_out);
    $dumpfile ("data/sum4_fa_tb.vcd");
    $dumpvars;
  end
endmodule
//Wire = Both input and output
//always@()
//gtkwave ha_tb.vcd &