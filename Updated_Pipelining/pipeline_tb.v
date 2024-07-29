module tb();

    reg clk=1'b0, rst;
    
    always begin
        clk = ~clk;
        #50;
    end

    initial begin
        rst <= 1'b0;
        #200;
        rst <= 1'b1;
        #1000;
        $finish;    
    end

    initial begin
        $dumpfile("dumpp.vcd");
        $dumpvars(0);
    end

    Pipeline_top dut (.clk(clk),
                      .rst(rst)
                    );
endmodule