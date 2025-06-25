`timescale 1ns/1ps

module testbench;
    reg clk = 0;
    reg reset = 1;
    reg roll_button = 0;
    wire [2:0] dice;

    dice_top dut(
        .clk(clk),
        .reset(reset),
        .roll_button(roll_button),
        .dice(dice)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("dice.vcd");
        $dumpvars(0, testbench);

        #10 reset = 0;

        repeat (10) begin
            #20 roll_button = 1;
            #20 roll_button = 0;
        end

        #100 $finish;
    end
endmodule
