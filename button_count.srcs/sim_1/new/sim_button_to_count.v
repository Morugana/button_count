`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2018 03:29:06 PM
// Design Name: 
// Module Name: sim_button_to_count
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


module sim_button_to_count(

    );
    
    reg PB_debounced;
    reg slow_clk;
    
    wire [7:0]LED;
    
    button_to_count dut(PB_debounced, slow_clk, LED);
    
    initial begin
    slow_clk = 0;
    PB_debounced = 0; #5;
    PB_debounced = 1; #5;
    PB_debounced = 0; #5;
    PB_debounced = 1; #5;
    PB_debounced = 0; #5;
    PB_debounced = 1; #5;
    PB_debounced = 0; #5;
    end
    
    always begin
    #5 slow_clk = ~slow_clk;
    end
endmodule
