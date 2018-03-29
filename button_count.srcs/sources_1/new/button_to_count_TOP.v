`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2018 03:43:25 PM
// Design Name: 
// Module Name: button_to_count_TOP
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


module button_to_count_TOP(
    input FPGA_CLK,
    input FPGA_PB,
    output [7:0]FPGA_LED
    );
    
    wire W1;
    wire W2;

    my_clk_gen slowdown (FPGA_CLK, W1);
    debouncing debounced (FPGA_PB, W1, W2);
    button_to_count lightup (W2, W1, FPGA_LED);
endmodule
