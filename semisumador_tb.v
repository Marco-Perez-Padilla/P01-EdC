`timescale 1 ns / 10 ps
module semisumador_tb;
    wire test_sum, test_carry;
    reg test_a, test_b;
    semisumador semisumador1(test_sum, test_carry, test_a, test_b);

    //Valores para testear el módulo
    initial 
    begin
        test_a = 1'b0;
        test_b = 1'b0;
        #20;
        test_a = 1'b0;
        test_b = 1'b1;
        #20;
        test_a = 1'b1;
        test_b = 1'b0;
        #20;
        test_a = 1'b1;
        test_b = 1'b1;
        #20;
        $finish;
    end

    //Comandos para ver los resultados
    initial
    begin
        $monitor ("tiempo =%d, a=%b, b=%b, sum=%b, carry=%b", $time, test_a, test_b, test_sum, test_carry);
        $dumpfile ("semisumador_tb.vcd");
        $dumpvars;
    end
endmodule

//Wire = Both input and output
//always@()
//gtkwave ha_tb.vcd &