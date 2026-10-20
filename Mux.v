module Mux(
    input [1:0] Sel,
    input  [3:0] CEO, [3:0] You, [3:0] Fred, [3:0] Jill,
    output [3:0] Y
);

    assign Y = 
        (Sel == 2'b00) ? CEO :
        (Sel == 2'b01) ? You :
        (Sel == 2'b10) ? Fred :
        Jill;
        
        

endmodule