`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2018 02:24:47 PM
// Design Name: 
// Module Name: sim_my_clk_gen
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


module sim_my_clk_gen(

    );
    reg clk;
    wire new_clk;
    
    my_clk_gen dut(clk, new_clk);
    
    initial begin
    clk = 0;
    end
    
    always begin
    #5 clk = ~clk;
    end
endmodule
