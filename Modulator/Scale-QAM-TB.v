module Scaleqam;

  initial begin
     $dumpfile("scaleqam.vcd");
     $dumpvars(0,dclk, data, inphase, quadrature);
     # 16384 $finish;
  end

  reg dclk = 0;
  always #1 dclk = !dclk;
  
  wire [11:0] data = 0;
  wire [11:0] inphase = 0;
  wire [11:0] quadrature = 0; 

  counter u0 (dclk,data);

  qam u1 (data, 3'd1, dclk, 1'b1, inphase, quadrature);

  initial
     $monitor("At time %t, value = %h (%0d)",
              $time, dclk, data, inphase, quadrature);
endmodule // test