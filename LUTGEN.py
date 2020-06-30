import numpy as np
import sys
i = 0
ibws1 = str(int(sys.argv[3])-1)
obws1 = str(int(sys.argv[2]) - 1)
ibw = str(int(sys.argv[3]))
obw = sys.argv[2]
code = "module lut ( input clk, input["+ibws1+":0] lookup, output["+obws1+":0] sine);\n" 
code = code + "always @(posedge clk)begin\n"
code = code + "    case (lookup)\n"
while i <= int(sys.argv[1]):
    if i == 0 :
        samp = 0
    else:
        samp = i/int(sys.argv[1]) * 2 * np.pi
    val = int(round(np.sin(samp)*(pow(2,int(sys.argv[2])-1)-1)+pow(2,int(sys.argv[2])-1)-1))
    code = code + "        "+ibw+"'d"+str(i)+": sine <= "+obw+"'d"+str(val)+";\n"
    i = i + 1
code = code + "    endcase\n"
code = code + "end\n"
code = code + "endmodule"
print(code)