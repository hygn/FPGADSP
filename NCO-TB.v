module ncotb;

  initial begin
     $dumpfile("ncotb.vcd");
     $dumpvars(0,clk, sine);
     # 16384 $finish;
  end

  reg clk = 0;
  always #1 clk = !clk;
  
  wire[7:0] sine = 0;

  nco u1 (10'd32,8'd0,clk,1,sine);

  initial
     $monitor("At time %t, value = %h (%0d)",
              $time, clk, sine);
endmodule // test