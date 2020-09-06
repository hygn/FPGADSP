module lut ( input clk, input[7:0] lookup, output[7:0] sine);
reg [7:0] sin;
always @(posedge clk)begin
    case (lookup)
        8'd0: sin <= 8'd127;
        8'd1: sin <= 8'd130;
        8'd2: sin <= 8'd133;
        8'd3: sin <= 8'd136;
        8'd4: sin <= 8'd139;
        8'd5: sin <= 8'd143;
        8'd6: sin <= 8'd146;
        8'd7: sin <= 8'd149;
        8'd8: sin <= 8'd152;
        8'd9: sin <= 8'd155;
        8'd10: sin <= 8'd158;
        8'd11: sin <= 8'd161;
        8'd12: sin <= 8'd164;
        8'd13: sin <= 8'd167;
        8'd14: sin <= 8'd170;
        8'd15: sin <= 8'd173;
        8'd16: sin <= 8'd176;
        8'd17: sin <= 8'd178;
        8'd18: sin <= 8'd181;
        8'd19: sin <= 8'd184;
        8'd20: sin <= 8'd187;
        8'd21: sin <= 8'd190;
        8'd22: sin <= 8'd192;
        8'd23: sin <= 8'd195;
        8'd24: sin <= 8'd198;
        8'd25: sin <= 8'd200;
        8'd26: sin <= 8'd203;
        8'd27: sin <= 8'd205;
        8'd28: sin <= 8'd208;
        8'd29: sin <= 8'd210;
        8'd30: sin <= 8'd212;
        8'd31: sin <= 8'd215;
        8'd32: sin <= 8'd217;
        8'd33: sin <= 8'd219;
        8'd34: sin <= 8'd221;
        8'd35: sin <= 8'd223;
        8'd36: sin <= 8'd225;
        8'd37: sin <= 8'd227;
        8'd38: sin <= 8'd229;
        8'd39: sin <= 8'd231;
        8'd40: sin <= 8'd233;
        8'd41: sin <= 8'd234;
        8'd42: sin <= 8'd236;
        8'd43: sin <= 8'd238;
        8'd44: sin <= 8'd239;
        8'd45: sin <= 8'd240;
        8'd46: sin <= 8'd242;
        8'd47: sin <= 8'd243;
        8'd48: sin <= 8'd244;
        8'd49: sin <= 8'd245;
        8'd50: sin <= 8'd247;
        8'd51: sin <= 8'd248;
        8'd52: sin <= 8'd249;
        8'd53: sin <= 8'd249;
        8'd54: sin <= 8'd250;
        8'd55: sin <= 8'd251;
        8'd56: sin <= 8'd252;
        8'd57: sin <= 8'd252;
        8'd58: sin <= 8'd253;
        8'd59: sin <= 8'd253;
        8'd60: sin <= 8'd253;
        8'd61: sin <= 8'd254;
        8'd62: sin <= 8'd254;
        8'd63: sin <= 8'd254;
        8'd64: sin <= 8'd254;
        8'd65: sin <= 8'd254;
        8'd66: sin <= 8'd254;
        8'd67: sin <= 8'd254;
        8'd68: sin <= 8'd253;
        8'd69: sin <= 8'd253;
        8'd70: sin <= 8'd253;
        8'd71: sin <= 8'd252;
        8'd72: sin <= 8'd252;
        8'd73: sin <= 8'd251;
        8'd74: sin <= 8'd250;
        8'd75: sin <= 8'd249;
        8'd76: sin <= 8'd249;
        8'd77: sin <= 8'd248;
        8'd78: sin <= 8'd247;
        8'd79: sin <= 8'd245;
        8'd80: sin <= 8'd244;
        8'd81: sin <= 8'd243;
        8'd82: sin <= 8'd242;
        8'd83: sin <= 8'd240;
        8'd84: sin <= 8'd239;
        8'd85: sin <= 8'd238;
        8'd86: sin <= 8'd236;
        8'd87: sin <= 8'd234;
        8'd88: sin <= 8'd233;
        8'd89: sin <= 8'd231;
        8'd90: sin <= 8'd229;
        8'd91: sin <= 8'd227;
        8'd92: sin <= 8'd225;
        8'd93: sin <= 8'd223;
        8'd94: sin <= 8'd221;
        8'd95: sin <= 8'd219;
        8'd96: sin <= 8'd217;
        8'd97: sin <= 8'd215;
        8'd98: sin <= 8'd212;
        8'd99: sin <= 8'd210;
        8'd100: sin <= 8'd208;
        8'd101: sin <= 8'd205;
        8'd102: sin <= 8'd203;
        8'd103: sin <= 8'd200;
        8'd104: sin <= 8'd198;
        8'd105: sin <= 8'd195;
        8'd106: sin <= 8'd192;
        8'd107: sin <= 8'd190;
        8'd108: sin <= 8'd187;
        8'd109: sin <= 8'd184;
        8'd110: sin <= 8'd181;
        8'd111: sin <= 8'd178;
        8'd112: sin <= 8'd176;
        8'd113: sin <= 8'd173;
        8'd114: sin <= 8'd170;
        8'd115: sin <= 8'd167;
        8'd116: sin <= 8'd164;
        8'd117: sin <= 8'd161;
        8'd118: sin <= 8'd158;
        8'd119: sin <= 8'd155;
        8'd120: sin <= 8'd152;
        8'd121: sin <= 8'd149;
        8'd122: sin <= 8'd146;
        8'd123: sin <= 8'd143;
        8'd124: sin <= 8'd139;
        8'd125: sin <= 8'd136;
        8'd126: sin <= 8'd133;
        8'd127: sin <= 8'd130;
        8'd128: sin <= 8'd127;
        8'd129: sin <= 8'd124;
        8'd130: sin <= 8'd121;
        8'd131: sin <= 8'd118;
        8'd132: sin <= 8'd115;
        8'd133: sin <= 8'd111;
        8'd134: sin <= 8'd108;
        8'd135: sin <= 8'd105;
        8'd136: sin <= 8'd102;
        8'd137: sin <= 8'd99;
        8'd138: sin <= 8'd96;
        8'd139: sin <= 8'd93;
        8'd140: sin <= 8'd90;
        8'd141: sin <= 8'd87;
        8'd142: sin <= 8'd84;
        8'd143: sin <= 8'd81;
        8'd144: sin <= 8'd78;
        8'd145: sin <= 8'd76;
        8'd146: sin <= 8'd73;
        8'd147: sin <= 8'd70;
        8'd148: sin <= 8'd67;
        8'd149: sin <= 8'd64;
        8'd150: sin <= 8'd62;
        8'd151: sin <= 8'd59;
        8'd152: sin <= 8'd56;
        8'd153: sin <= 8'd54;
        8'd154: sin <= 8'd51;
        8'd155: sin <= 8'd49;
        8'd156: sin <= 8'd46;
        8'd157: sin <= 8'd44;
        8'd158: sin <= 8'd42;
        8'd159: sin <= 8'd39;
        8'd160: sin <= 8'd37;
        8'd161: sin <= 8'd35;
        8'd162: sin <= 8'd33;
        8'd163: sin <= 8'd31;
        8'd164: sin <= 8'd29;
        8'd165: sin <= 8'd27;
        8'd166: sin <= 8'd25;
        8'd167: sin <= 8'd23;
        8'd168: sin <= 8'd21;
        8'd169: sin <= 8'd20;
        8'd170: sin <= 8'd18;
        8'd171: sin <= 8'd16;
        8'd172: sin <= 8'd15;
        8'd173: sin <= 8'd14;
        8'd174: sin <= 8'd12;
        8'd175: sin <= 8'd11;
        8'd176: sin <= 8'd10;
        8'd177: sin <= 8'd9;
        8'd178: sin <= 8'd7;
        8'd179: sin <= 8'd6;
        8'd180: sin <= 8'd5;
        8'd181: sin <= 8'd5;
        8'd182: sin <= 8'd4;
        8'd183: sin <= 8'd3;
        8'd184: sin <= 8'd2;
        8'd185: sin <= 8'd2;
        8'd186: sin <= 8'd1;
        8'd187: sin <= 8'd1;
        8'd188: sin <= 8'd1;
        8'd189: sin <= 8'd0;
        8'd190: sin <= 8'd0;
        8'd191: sin <= 8'd0;
        8'd192: sin <= 8'd0;
        8'd193: sin <= 8'd0;
        8'd194: sin <= 8'd0;
        8'd195: sin <= 8'd0;
        8'd196: sin <= 8'd1;
        8'd197: sin <= 8'd1;
        8'd198: sin <= 8'd1;
        8'd199: sin <= 8'd2;
        8'd200: sin <= 8'd2;
        8'd201: sin <= 8'd3;
        8'd202: sin <= 8'd4;
        8'd203: sin <= 8'd5;
        8'd204: sin <= 8'd5;
        8'd205: sin <= 8'd6;
        8'd206: sin <= 8'd7;
        8'd207: sin <= 8'd9;
        8'd208: sin <= 8'd10;
        8'd209: sin <= 8'd11;
        8'd210: sin <= 8'd12;
        8'd211: sin <= 8'd14;
        8'd212: sin <= 8'd15;
        8'd213: sin <= 8'd16;
        8'd214: sin <= 8'd18;
        8'd215: sin <= 8'd20;
        8'd216: sin <= 8'd21;
        8'd217: sin <= 8'd23;
        8'd218: sin <= 8'd25;
        8'd219: sin <= 8'd27;
        8'd220: sin <= 8'd29;
        8'd221: sin <= 8'd31;
        8'd222: sin <= 8'd33;
        8'd223: sin <= 8'd35;
        8'd224: sin <= 8'd37;
        8'd225: sin <= 8'd39;
        8'd226: sin <= 8'd42;
        8'd227: sin <= 8'd44;
        8'd228: sin <= 8'd46;
        8'd229: sin <= 8'd49;
        8'd230: sin <= 8'd51;
        8'd231: sin <= 8'd54;
        8'd232: sin <= 8'd56;
        8'd233: sin <= 8'd59;
        8'd234: sin <= 8'd62;
        8'd235: sin <= 8'd64;
        8'd236: sin <= 8'd67;
        8'd237: sin <= 8'd70;
        8'd238: sin <= 8'd73;
        8'd239: sin <= 8'd76;
        8'd240: sin <= 8'd78;
        8'd241: sin <= 8'd81;
        8'd242: sin <= 8'd84;
        8'd243: sin <= 8'd87;
        8'd244: sin <= 8'd90;
        8'd245: sin <= 8'd93;
        8'd246: sin <= 8'd96;
        8'd247: sin <= 8'd99;
        8'd248: sin <= 8'd102;
        8'd249: sin <= 8'd105;
        8'd250: sin <= 8'd108;
        8'd251: sin <= 8'd111;
        8'd252: sin <= 8'd115;
        8'd253: sin <= 8'd118;
        8'd254: sin <= 8'd121;
        8'd255: sin <= 8'd124;
        8'd256: sin <= 8'd127;
    endcase
end
assign sine = sin;
endmodule
