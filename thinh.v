module top_module ( 
    input p1, p2, p3, p4, p5, p6, p7, p8, p9, 
    output A, B, C, D, E                      
);

    wire p23;
    assign p23 = p2 & p3;
    
    wire p23nor;
    assign p23nor = ~(p2 | p3);
    
    wire p123nor;
    assign p123nor = ~(p1 | p23nor);
    
    wire p45;
    assign p45 = p4 & p5;
    
    wire p45nor;
    assign p45nor = ~(p4 | p5);
    
    wire p67;
    assign p67 = p6 & p7;
    
    wire p67nor;
    assign p67nor = ~(p6 | p7);
    
    assign A = p123nor;
    
    wire p1_and_p23nor;
    assign p1_and_p23nor = p1 & p23nor;
    
    wire p123or;
    assign p123or = p23 | p1_and_p23nor; 
    
    wire pB;
    assign pB = ~(p123or | p45nor);
    assign B = pB;  
    
    wire p2345nor;
    assign p2345nor = p23 & p45nor;
    
    wire p2345nor2;
    assign p2345nor2 = p23nor & p45nor & p1;
    
    wire or1;
    assign or1 = p45 | p2345nor | p2345nor2;
    
    wire pC;
    assign pC = ~(or1 | p67nor);
    assign C = pC;  
    
    wire p2367nor;
    assign p2367nor = p23 & p67nor;
    
    wire p234567nor;
    assign p234567nor = p67nor & p45nor & p23;
    
    wire p1234567nor;
    assign p1234567nor = p1 & p67nor & p45nor & p23nor;
    
    wire or2;
    assign or2 = p67 | p2367nor | p234567nor | p1234567nor;
    
    wire p89;
    assign p89 = p8 & p9;
    
    wire p89nor;
    assign p89nor = ~(p8 | p9);
    
    wire pD;
    assign pD = ~(or2 | p89nor);
    assign D = pD;  
    
    wire p6789nor;
    assign p6789nor = p67 & p89nor;
    
    wire p456789nor;
    assign p456789nor = p89nor & p67nor & p45;
    
    wire p23456789nor;
    assign p23456789nor = p89nor & p67nor & p45nor & p23;
    
    wire p123456789nor;
    assign p123456789nor = p1 & p89nor & p67nor & p45nor & p23nor;
    
    wire or3;
    assign or3 = p89 | p6789nor | p456789nor | p23456789nor | p123456789nor;
    assign E = or3; 

endmodule