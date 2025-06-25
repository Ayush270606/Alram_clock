`timescale 1ns / 1ps

module tb_dice_generator;

    reg clk;
    reg reset;
    reg roll;
    wire [2:0] dice_value;

    // Instantiate the design
    dice_generator uut (
        .clk(clk),
        .reset(reset),
        .roll(roll),
        .dice_value(dice_value)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // 10ns clock period
    end

    // Test sequence
    initial begin
        // 🔽 Add these lines to generate VCD
        $dumpfile("dice_waveform.vcd");      // Output VCD filename
        $dumpvars(0, tb_dice_generator);     // Dump all variables in this testbench

        $display("Time\tReset\tRoll\tDice_Value");
        $monitor("%g\t%b\t%b\t%d", $time, reset, roll, dice_value);

        // Initial values
        reset = 1;
        roll = 0;
        #10;

        // Release reset
        reset = 0;
        #10;

        // Simulate rolling the dice 10 times
        repeat (10) begin
            roll = 1;
            #10;
            roll = 0;
            #10;
        end

        $finish;
    end
endmodule
