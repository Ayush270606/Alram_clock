// clock_divider.v
module clock_divider(
    input clk,
    input reset,
    output reg slow_clk
);
    reg [24:0] count;
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count <= 0;
            slow_clk <= 0;
        end else begin
            if (count == 25) begin
                count <= 0;
                slow_clk <= ~slow_clk;
            end else begin
                count <= count + 1;
            end
        end
    end
endmodule

// dice_logic.v
module dice_logic(
    input clk,
    input reset,
    input roll,
    output reg [2:0] dice_number
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            dice_number <= 1;
        else if (roll)
            if (dice_number == 6)
                dice_number <= 1;
            else
                dice_number <= dice_number + 1;
    end
endmodule

// dice_top.v
module dice_top(
    input clk,
    input reset,
    input roll_button,
    output [2:0] dice
);
    wire slow_clk;

    clock_divider u1(
        .clk(clk),
        .reset(reset),
        .slow_clk(slow_clk)
    );

    dice_logic u2(
        .clk(slow_clk),
        .reset(reset),
        .roll(roll_button),
        .dice_number(dice)
    );
endmodule
