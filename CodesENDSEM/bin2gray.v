module bin2gray
        (input [3:0] bin, 
         output [3:0] G 
        );


assign G[3] = bin[3];
assign G[2] = bin[3] ^ bin[2];
assign G[1] = bin[2] ^ bin[1];
assign G[0] = bin[1] ^ bin[0];

endmodule

module tb();

   reg [3:0] bin;
    wire [3:0] G;
    
   bin2gray uut1(bin,G);
  
    
  initial
   begin        
   $monitor("bin=%b gray =%b",bin,G);
   
      bin <= 0; #10;
        bin <= 1;   #10;
        bin <= 2;   #10;
        bin <= 3;   #10;
        bin <= 4;   #10;
        bin <= 5;   #10;
        bin <= 6;   #10;
        bin <= 7;   #10;
        bin <= 8;   #10;
        bin <= 9;   #10;
        bin <= 10;  #10;
        bin <= 11;  #10;
        bin <= 12;  #10;
        bin <= 13;  #10;
        bin <= 14;  #10;
        bin <= 15;  
      
    
   end

endmodule