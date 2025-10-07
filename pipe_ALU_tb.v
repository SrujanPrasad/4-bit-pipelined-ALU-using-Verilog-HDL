// testbench for 4 bit pipelined ALU

module pipe_ALU_tb;
  reg clk,rst;
  reg [3:0]A,B;
  reg [2:0]ALU_sel;
  wire [3:0]alu_result;
  wire carry_out;
 
  pipe_ALU DUT(.clk(clk),.rst(rst),.A(A),.B(B),.ALU_sel(ALU_sel),.alu_result(alu_result),.carry_out(carry_out));
  
  initial
    begin
      clk=0;
    end
  always #5 clk=~clk;	//generates 100MHz clock
  
  initial
    begin
      
      $monitor("time:%0t,A:%d,B:%d,ALU_SEL:%b,ALU_OUT:%d,carry_out:%d",$time,A,B,ALU_sel,alu_result,carry_out);
      
      rst=1;A=0;B=0;ALU_sel=0;#10;
      rst=0;
      // Test ADD
        A = 4'b0101; B = 4'b0011; ALU_sel = 3'b000; #10;

        // Test SUB
        A = 4'b0110; B = 4'b0010; ALU_sel = 3'b001; #10;

        // Test AND
        A = 4'b1100; B = 4'b1010; ALU_sel = 3'b010; #10;

        // Test OR
        A = 4'b0101; B = 4'b0011; ALU_sel = 3'b011; #10;

        // Test XOR
        A = 4'b1111; B = 4'b1010; ALU_sel = 3'b100; #10;

        // Test Greater than
        A = 4'b1010; B = 4'b0101; ALU_sel = 3'b101; #10;

        // Test Equality
        A = 4'b0110; B = 4'b0110; ALU_sel = 3'b110; #10;

      #50;
      $finish;
    end
  
  initial
    begin
      $dumpfile("pipe_ALU.vcd");
      $dumpvars(0,pipe_ALU_tb);
    end
endmodule
      
      
      
      
      
  
