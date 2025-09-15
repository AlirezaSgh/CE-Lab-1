`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2024 16:12:42
// Design Name: 
// Module Name: debounce
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module debouncer(
    input wire clk,       // Clock signal
    input wire btn_in,    // Raw button input
    output reg btn_out    // Debounced button output 
    );

    // Parameters
    parameter DEBOUNCE_DELAY = 100000; // Number of clock cycles for debouncing

    // Internal Registers
    reg [31:0] counter = 0;
    reg btn_sync = 0;
    reg btn_stable = 0;

    always @(posedge clk) begin
        // Synchronize the button input to the clock domain
        btn_sync <= btn_in;
        
        // Check if the button state has changed
        if (btn_sync != btn_stable) begin
            counter <= counter + 1;
            if (counter >= DEBOUNCE_DELAY) begin
                btn_stable <= btn_sync;
                counter <= 0;
            end
        end else begin
            counter <= 0; // Reset the counter if no change is detected
        end
    end

    // Assign the stable button state to the output
    always @(posedge clk) begin
        btn_out <= btn_stable;
    end

endmodule

