`timescale 1ns / 1ps

module JK_tb();
    reg clk;
    reg [1:0] jk;
    wire q,qb;
    
    JK dut(.jk(jk), .clk(clk), .q(q), .qb(qb));
    initial begin
        clk = 0;
    forever #2 clk = ~clk;
    end
    initial begin
        $dumpfile("JK.vcd");
        $dumpvars(1);
    end
initial begin
    jk = 2'b00;
    #2
    jk = 2'b01;
    #2
    jk = 2'b10;
    #5
    jk = 2'b00;
    #5
    jk = 2'b11;
    #5
    $finish();
end

endmodule
