`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TU Delft
// Engineer: Himanshu Savargaonkar
// 
// Create Date: 29.08.2024 14:40:05
// Design Name: 
// Module Name: road_sign
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


module road_sign(
    input wire clk,      // Clock signal
    input wire reset,    // Reset signal to restart the FSM
    input wire [3:0] btn, // 4-bit input register
    output reg [3:0] led, // 4-bit output register
    output reg [2:0] rgb_led
    );

    // Add your code here

endmodule
