module nco(
    input [31:0] Q_freq,
    input en,
    input clk,
    output [7:0] sine,
    output [15:0] cosine,
    output update,
    output truncate,
);
// IMPORTANT 
// THIS NCO ONLY SUPPORTS 1ST NYQUIST ZONE!!
parameter lutsize = 7;
parameter lutsize_notlog = 128;
parameter samprate = 12;
reg[23+lutsize:0] Q_ls;
reg[23+lutsize:0] Q_sr;
reg[23+lutsize:0] Q_phstp;
reg[23+lutsize:0] Qaccadr;
reg[23+lutsize:0] Q_f;
reg[7:0] sine;
reg update;
reg truncate;
always @(posedge clk && en) begin
    //calculate tunning word
    Q_ls[23+lutsize:23] <= lutsize_notlog;
    Q_sr[23+lutsize:23] <= samprate;
    Q_f[23+lutsize:0] <= Q_freq;
    Q_phstp <= Q_ls / Q_sr * Q_f;
    //generate lut access address
    if (Qaccadr + Q_phstp >= Q_ls) begin
        Qaccadr <= Qaccadr - Q_ls + Q_phstp;
        update <= ~update;
    end else begin
        Qaccadr <= Qaccadr + Q_phstp;
    end
    // truncate
    if (Qaccadr[23] == 1) begin
        Qaccadr[23+lutsize:24] <= Qaccadr[23+lutsize:24] + 1;
        truncate <= ~truncate;
    end
end
lut u0(1,Qaccadr[23+lutsize:24],sine);
assign cosine = 16'd0;
assign update = update;
assign truncate = truncate;
assign sine = sine;
endmodule // nco