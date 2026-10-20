module top(
    input [15:0] sw,
    input btnL, btnU, btnD, btnR, btnC,
    output [15:0] led
);

wire [3:0]temp;
wire [3:0]temp2;

wire [1:0] mux_sel;

assign mux_sel = {btnU, btnL};

Mux Mux_inst(
        .CEO(sw[3:0]),
        .You(sw[7:4]),
        .Fred(sw[11:8]),
        .Jill(sw[15:12]),
        
        .Sel(mux_sel),
        .Y(temp)
    );


assign temp2 = btnC ? temp : 4'b0000;

wire [1:0] demux_sel;

assign demux_sel = {btnR, btnD};

Demux Demux_inst(
        
        .In(temp2),
        .sel(demux_sel),

        .local_lib(led[3:0]),
        .fire(led[7:4]),
        .school(led[11:8]),
        .rib(led[15:12])
    );
    
endmodule

