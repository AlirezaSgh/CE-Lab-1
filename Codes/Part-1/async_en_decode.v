module async_en_decoder (
    gray_rot, bin_rot, prog_select,reset, led
);
input [3:0] gray_rot;
input [2:0] bin_rot;
input prog_select, reset;
output reg [3:0] led;

endmodule