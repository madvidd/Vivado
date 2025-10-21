`timescale 1ns / 1ps

module full_adder_tb();
    reg a,b,c;
    wire sum,carry;
    
    full_adder dut(.a(a), .b(b), .c(c), .sum(sum), .carry(carry));
    
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1);   
    end
    
    initial begin
        a=0;b=1;c=0;
        #5
        a=0;b=1;c=1;
        #5
        a=1;b=1;c=1;
        #5
        $stop;  
    end
endmodule
