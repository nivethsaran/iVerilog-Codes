module gray2bin
        (input [3:0] G, //gray code output
         output [3:0] bin   //binary input
        );

assign bin[3] = G[3];
assign bin[2] = G[3] ^ G[2];
assign bin[1] = G[3] ^ G[2] ^ G[1];
assign bin[0] = G[3] ^ G[2] ^ G[1] ^ G[0];

endmodule

module tb();

   reg [3:0] bin;
    wire [3:0] G;
    
     gray2bin uut2(bin,G);
  
    
  initial
   begin        
   $monitor("gray=%b3 bin =%b",G,bin);
   
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