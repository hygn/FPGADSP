module qam(
    input[31:0] data, [2:0] modtyp, dclk,
    output[15:0] inphase, [15:0] quadrature, dbufempt,
);
reg[5:0] counter;
reg[31:0] IQ;
reg[5:0] realsymb;
reg[5:0] imagsymb;
/*---------------
modtyp | QAM const
0      | 2
1      | 4
2      | 16
3      | 64
4      | 256
5      | 1024
6      | 4096
-----------------*/
always @(posedge dclk ) begin
    if (modtyp == 3'd0) begin
        if (counter == 6'd31) begin
            counter <= 0;
            dbufempt <= 1;
        end
        else begin
            counter <= counter + 1;
            dbufempt <= 0;
        end
        if (data[counter] == 0) begin
            realsymb <= 6'd1;
        end
        if (data[counter] == 1) begin
            realsymb <= 6'd3;
        end
        imagsymb <= 6'd2;
    end
end

assign inphase = IQ[15:0];
assign quadrature = IQ[16:31];


endmodule // qam