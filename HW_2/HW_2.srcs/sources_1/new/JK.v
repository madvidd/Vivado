`timescale 1ns / 1ps

module JK(jk,clk,q,qb);
    input [1:0] jk;
    input clk;
    output q,qb;
    reg q,qb;
    
  always@(posedge clk)
    begin
    case(jk)
        2'b00: q = q;
        2'b01: q = 0;
        2'b10: q = 1;
        2'b11: q = ~q;
    endcase
    qb = ~q;
    end      
    
endmodule
