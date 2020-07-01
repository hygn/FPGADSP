module ncotop(
    input clk,
    output b0,b1,b2,b3,b4,b5,b6,b7,
);
reg[7:0] sine;
//nco u1 (32'b00000001000000000000000000000000,1,clk,sine,cosine,update,truncate);
nco u1 (10'd256,8'd0,clk,1,sine);
assign b0 = sine[0];
assign b1 = sine[1];
assign b2 = sine[2];
assign b3 = sine[3];
assign b4 = sine[4];
assign b5 = sine[5];
assign b6 = sine[6];
assign b7 = sine[7];
//assign update = update;
//assign truncate = truncate;
endmodule // ncotop