`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2018 03:06:12 PM
// Design Name: 
// Module Name: button_to_count
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


module button_to_count(
    input PB_debounced,
    input slow_clk,
    output reg [7:0]LED
    );
/*
    reg [7:0]LED = 8'b0000_0000;
    
    always @ (posedge PB_debounced) 
    begin
    LED <= LED + 1;
    end
*/    


    //countdown 
    reg [7:0]LED = 8'b1111_1111;
        
        always @ (posedge PB_debounced) 
        begin
        LED <= LED - 1;
        end
    
endmodule
