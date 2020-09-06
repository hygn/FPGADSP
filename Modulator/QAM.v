module qam(
    input[31:0]data,
    input[2:0]modtyp,
    input dclk,
    input en,
    output[15:0]inphase,
    output[15:0]quadrature,
    output dbufempt,
    output clkout,
);
reg[5:0] counter;
reg[31:0] IQ;
reg[5:0] realsymb;
reg[5:0] imagsymb;
/*---------------
THIS IS JUST FOR PROOF-OF-CONCEPT
modtyp | QAM const
0      | 2
1      | 4
2      | 16
3      | 64
4      | 256
5      | 1024
6      | 4096
-----------------*/
always @(posedge dclk && en) begin
    //BPSK
    if (modtyp == 3'd0) begin
        if (counter == 6'd33) begin
            counter <= 1;
            dbufempt <= 1;
        end
        else begin
            counter <= counter + 1;
            dbufempt <= 0;
        end
        IQ[15:0] <= data[counter-1] * 16'd65535;
        IQ[16:31] <= 16'd32768;
    end
    //QPSK
    if (modtyp == 3'd1) begin
        if (counter == 6'd33) begin
            counter <= 1;
            dbufempt <= 1;
        end
        else begin
            counter <= counter + 2;
            dbufempt <= 0;
        end
        IQ[15:0] <= data[counter-1] * 16'd65535;
        IQ[16:31] <= (1'b1 - data[counter-2]) * 16'd65535;
    end
    //16-QAM
    if (modtyp == 3'd2) begin
        if (counter == 6'd33) begin
            counter <= 1;
            dbufempt <= 1;
        end
        else begin
            counter <= counter + 4;
            dbufempt <= 0;
        end
        IQ[15:0] <= data[counter-3:counter-2] * 16'd21845;
        IQ[16:31] <= (2'b11 - data[counter-5:counter-4]) * 16'd21845;
    end
    //64-QAM
    if (modtyp == 3'd3) begin
        if (counter == 6'd31) begin
            counter <= 1;
            dbufempt <= 1;
        end
        else begin
            counter <= counter + 5;
            dbufempt <= 0;
        end
        IQ[15:0] <= data[counter-4:counter-2] * 16'd9362;
        IQ[16:31] <= (3'b111 - data[counter-7:counter-5]) * 16'd9362;
    end
    //256-QAM
    if (modtyp == 3'd4) begin
        if (counter == 6'd33) begin
            counter <= 1;
            dbufempt <= 1;
        end
        else begin
            counter <= counter + 8;
            dbufempt <= 0;
        end
        IQ[15:0] <= data[counter-5:counter-2] * 16'd4369;
        IQ[16:31] <= (4'b1111 - data[counter-9:counter-6]) * 16'd4369;
    end
    //1024-QAM
    if (modtyp == 3'd5) begin
        if (counter == 6'd31) begin
            counter <= 1;
            dbufempt <= 1;
        end
        else begin
            counter <= counter + 10;
            dbufempt <= 0;
        end
        IQ[15:0] <= data[counter-6:counter-2] * 16'd2114;
        IQ[16:31] <= (5'b1111 - data[counter-11:counter-7]) * 16'd2114;
    end
end

assign dclk = clkout;
assign inphase = IQ[15:0];
assign quadrature = IQ[16:31];


endmodule // qam