module tb_top_module;

    reg p1, p2, p3, p4, p5, p6, p7, p8, p9;
    wire A, B, C, D, E;
    
    
    top_module uut (
        .p1(p1), .p2(p2), .p3(p3), .p4(p4), .p5(p5), .p6(p6),
        .p7(p7), .p8(p8), .p9(p9), .A(A), .B(B), .C(C), .D(D), .E(E)
    );

   
    initial begin
        
        $dumpfile("verilog.vcd");
        $dumpvars(0, tb_top_module);
for (integer i = 0; i < 1024; i = i + 1) begin
    {p1, p2, p3, p4, p5, p6, p7, p8, p9} = i;
    #10;
end
        
        $finish; 
    end

endmodule
