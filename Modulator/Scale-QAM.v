module qam (
    input [11:0] data,
    input [2:0] modi,
    input dclk,
    input en,
    output [11:0] inphase,
    output [11:0] quadrature
);
reg[11:0] i;
reg[11:0] q;
always @(posedge dclk && en) begin
    //BPSK
    if (modi == 3'd0) begin
        i <= data[0] * 12'd4096;
        q <= 12'd2048;
    end
    //QPSK
    if (modi == 3'd1) begin
        i <= data[0] * 12'd4096;
        q <= data[6] * 12'd4096;
    end
    //16-QAM
    if (modi == 3'd2) begin
        i <= data[1:0] * 12'd1024;
        q <= data[7:6] * 12'd1024;
    end
    //64-QAM
    if (modi == 3'd3) begin
        i <= data[2:0] * 12'd512;
        q <= data[8:6] * 12'd512;
    end
    //256-QAM
    if (modi == 3'd4) begin
        i <= data[3:0] * 12'd256;
        q <= data[9:6] * 12'd256;
    end
    //1024-QAM
    if (modi == 3'd5) begin
        i <= data[4:0] * 12'd128;
        q <= data[10:6] * 12'd128;
    end
    //4096-QAM
    if (modi == 3'd6) begin
        i <= data[5:0] * 12'd64;
        q <= data[11:6] * 12'd64;
    end
    if (modi == 3'd7 || modi == 3'd8) begin
        i <= 12'd2048;
        q <= 12'd2048;
    end
end

assign inphase = i;
assign quadrature = q;
    
endmodule