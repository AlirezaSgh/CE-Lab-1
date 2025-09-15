`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/15/2025 07:30:08 PM
// Design Name: 
// Module Name: testbench1
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


module testbench1();
    reg  reset; // Reset pin
    reg  clk;   // Clock signal
    reg  A;     // Button A input
    reg  B;     // Button B input
    wire [3:0] EncOut;  // 4-bit Gray code output
    
    encoder uut (
        .clk(clk),
        .reset(reset),
        .A(A),
        .B(B),
        .EncOut(EncOut)
    );
endmodule
