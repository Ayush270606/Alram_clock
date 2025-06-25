module dice_generator (
    input clk,           // Clock input
    input reset,         // Active high reset
    input roll,          // Roll signal (like a button press)
    output reg [2:0] dice_value  // Dice output: values from 1 to 6
);

    always @(posedge clk or posedge reset) begin
        if (reset)
            dice_value <= 3'd1;  // Reset to 1
        else if (roll) begin
            if (dice_value == 3'd6)
                dice_value <= 3'd1;  // Loop back to 1 after 6
            else
                dice_value <= dice_value + 1;  // Increment
        end
    end
endmodule
