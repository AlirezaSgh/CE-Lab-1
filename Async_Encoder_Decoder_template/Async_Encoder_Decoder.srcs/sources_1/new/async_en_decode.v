`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2024 15:11:11
// Design Name: 
// Module Name: async_en_decode
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


module async_en_decode (
    input wire reset,
    input wire prog_select,
    input wire [2:0] bin_rot,
    input wire [3:0] gray_rot,
    output reg [3:0] led
);

  // Write code here
  always @(*) begin
    if (reset) led = 4'd0;
    else if (prog_select) led = bin_rot;
    else begin
      case (gray_rot)
        4'b0000: led = 4'd0;
        4'b0100: led = 4'd1;
        4'b0101: led = 4'd2;
        4'b0111: led = 4'd3;
        4'b0110: led = 4'd4;
        4'b0010: led = 4'd5;
        4'b0011: led = 4'd6;
        4'b0001: led = 4'd7;
        4'b1001: led = 4'd8;
        4'b1001: led = 4'd9;
      endcase
    end
  end



endmodule
