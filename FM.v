module fm (
    input [15:0] audio,
    input clk,
    output [7:0] inphase,
    output [7:0] quadrature
);

reg [7:0] sine;
reg [7:0] cosine;
reg [17:0] ftw;
reg [23:0] Qaudio;
reg [17:0] t_audio;

always @(posedge clk ) begin
    Qaudio[23:8] <= audio;
    Qaudio <= Qaudio / 64;
    t_audio <= Qaudio[17:0];
    ftw <= t_audio / 40;
end
nco osc1 (ftw[17:8], ftw[7:0], clk, 1'b1, sine, cosine);

assign inphase = sine;
assign quadrature = cosine;
    
endmodule