module nco (
    input [lutsize:0] Iftw,
    input [7:0] Fftw,
    input clk,
    input en,
    output[7:0] sine,
);
// FTW[lutsize+7:8] = integer
// FTW[7:0] = fraction
reg[lutsize+7:0] addr;
reg[lutsize+7:0] ftw;
reg[lutsize-1:0] lookup;
parameter lutsize = 10;
always @(posedge clk && en) begin
    ftw[lutsize+7:8] <= Iftw;
    ftw[7:0] <= Fftw;
    addr <= addr+ftw;
    if (addr[7] == 1'b1) begin
        addr[lutsize+7:8] <= addr[lutsize+7:8] + 1;
    end
    lookup <= addr[lutsize+7:8];
end
lut u0 (clk,lookup,sine);
endmodule