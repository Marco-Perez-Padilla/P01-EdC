`timescale 1 ns / 10 ps
module logic_cell_tb;
    wire test_out;
    reg test_a, test_b;
    reg [1:0] test_S;
    logic_cell logic_cell1(test_out, test_a, test_b, test_S);

    //Valores para testear el módulo
    initial 
    begin
        test_a = 1'b0;
        test_b = 1'b0;
        test_S = 2'b00;
        #20;
        test_a = 1'b0;
        test_b = 1'b0;
        test_S = 2'b01;
        #20;
        test_a = 1'b0;
        test_b = 1'b0;
        test_S = 2'b10;
        #20;
        test_a = 1'b0;
        test_b = 1'b0;
        test_S = 2'b11;
        #20;
        test_a = 1'b0;
        test_b = 1'b1;
        test_S = 2'b00;
        #20;
        test_a = 1'b0;
        test_b = 1'b1;
        test_S = 2'b01;
        #20;
        test_a = 1'b0;
        test_b = 1'b1;
        test_S = 2'b10;
        #20;
        test_a = 1'b0;
        test_b = 1'b1;
        test_S = 2'b11;
        #20;
        test_a = 1'b1;
        test_b = 1'b0;
        test_S = 2'b00;
        #20;
        test_a = 1'b1;
        test_b = 1'b0;
        test_S = 2'b01;
        #20;
        test_a = 1'b1;
        test_b = 1'b0;
        test_S = 2'b10;
        #20;
        test_a = 1'b1;
        test_b = 1'b0;
        test_S = 2'b11;
        #20;
        test_a = 1'b1;
        test_b = 1'b1;
        test_S = 2'b00;
        #20;
        test_a = 1'b1;
        test_b = 1'b1;
        test_S = 2'b01;
        #20;
        test_a = 1'b1;
        test_b = 1'b1;
        test_S = 2'b10;
        #20;
        test_a = 1'b1;
        test_b = 1'b1;
        test_S = 2'b11;
        #20;
        $finish;
    end

    //Comandos para ver los resultados
    initial
    begin
        $monitor ("tiempo =%d, a=%b, b=%b, S=%b, out=%b", $time, test_a, test_b, test_S, test_out);
        $dumpfile ("data/logic_cell_tb.vcd");
        $dumpvars;
    end
endmodule

//Wire = Both input and output
//always@()
//gtkwave ha_tb.vcd &