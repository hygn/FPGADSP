module nco (
    input [lutsize:0] Iftw,
    input [7:0] Fftw,
    input clk,
    input en,
    input[lutsize+15:0] offset,
    output[7:0] sine,
);
// FTW[lutsize+7:8] = integer
// FTW[7:0] = fraction
reg[lutsize+15:0] sinaddr;
reg[lutsize+15:0] ftw;
parameter lutsize = 8;
always @(posedge clk && en) begin
    ftw[lutsize+15:16] <= Iftw;
    ftw[15:0] <= Fftw;
    sinaddr <= sinaddr+ftw;
end
lut u0 (clk,sinaddr[lutsize+7:8],sine);
endmodule