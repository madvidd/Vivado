`timescale 1ns / 1ps

module MUX_4x1_tb();
    reg a,b,c,d;
    reg [1:0] sel;
    wire out;
    
    mux_4x1 dut(.a(a), .b(b), .c(c), .d(d), .sel(sel), .out(out));
    
    initial begin
        $dumpfile("mux_4x1.vcd");
        $dumpvars(1);
    end
initial begin
    sel = 2'b00;a=0;b=1;c=0;d=1;
    #5
    sel = 2'b01;a=0;b=1;c=0;d=1;
    #5
    sel = 2'b10;a=0;b=1;c=0;d=1;
    #5
    sel = 2'b11;a=0;b=1;c=0;d=1;
    #5
    $finish();
end

endmodule
