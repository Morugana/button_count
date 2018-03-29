`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2018 02:27:52 PM
// Design Name: 
// Module Name: debouncing
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


module debouncing(
    input Pushbutton,
    input PB_clock,
    output single_pulse_out
    );
    
    wire Q1;
    wire Q2;
    
    my_dff dff1 (PB_clock, Pushbutton, Q1);
    my_dff dff2 (PB_clock, Q1, Q2);
    
    assign single_pulse_out = Q1 & ~(Q2);
    
    
endmodule