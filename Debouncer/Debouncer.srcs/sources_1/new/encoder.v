`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TU Delft
// Engineer: Himanshu
// 
// Create Date: 29.08.2024 14:01:34
// Design Name: 
// Module Name: encoder
// Project Name: Gray_Encoder
// Target Devices: PYNQ Z1
// Tool Versions: 2023.2
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module encoder (
    input wire reset, // Reset pin
    input wire clk,   // Clock signal
    input wire A,     // Button A input
    input wire B,     // Button B input
    output reg [3:0] EncOut  // 4-bit Gray code output
    );

    // Add your code here

endmodule
