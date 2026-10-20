module Demux(
    input [3:0] In,
    input [1:0] sel,
    output [3:0] local_lib,
    output [3:0] fire,
    output [3:0] school,
    output [3:0] rib
);

    assign local_lib = (sel == 2'b00 ? In : 0); // Drive if Sel == 00
    assign fire = (sel == 2'b01 ? In : 0); // Drive if Sel == 01
    assign school = (sel == 2'b10 ? In : 0); // Drive if Sel == 10
    assign rib = (sel == 2'b11 ? In : 0); // Drive if Sel == 11

endmodule		