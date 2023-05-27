module muxtest;
 reg[15:0]A; reg[3:0]S; wire F;
  
 mux16to1 M(.in(A),.sel(S),.out(F));
 
initial
       begin
      $dumpfile("mux16to1.vcd");
      $dumpvars(0,muxtest);
      $monitor($time,"A=%h,S=%h,F=%b",A,S,F);
      #5 A=16'h3f1a; S=4'h0;
     #5 A=16'h11ad;  S=4'h3;
      #5 A=16'h310bd; S=4'h6;
      #5 A=16'h3abcd;S=4'hc;
      #5A=16'h31111;  S= 4'hd;
      #5 A=16'h3afad; S= 4'b111;
      #5 $finish;
    end
endmodule