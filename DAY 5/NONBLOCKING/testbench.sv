`timescale 1ns/1ps

module tb_nonblocking_shift;

    reg clk = 0;
    reg en  = 0;
    reg in  = 0;

    wire q0;
    wire q1;


    nonblocking_shift dut (
        .clk(clk),
        .en(en),
        .in(in),
        .q0(q0),
        .q1(q1)
    );

    always #5 clk = ~clk;

    initial begin
       
        $dumpfile("nb_shift.vcd");
        $dumpvars(0, tb_nonblocking_shift);

   
        #2  en = 1; in = 1;     
        #10 in = 0;
        #10 in = 1;
        #10 in = 0;
        #20 in = 1;
        #20 en = 0;           
        #20 $finish;
    end

endmodule
