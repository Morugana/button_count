`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2018 02:49:11 PM
// Design Name: 
// Module Name: sim_debouncing
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


module sim_debouncing(

    );
    
    reg Pushbutton;
    reg PB_clock;
    
    wire single_pulse_out;
    
    debouncing dut(Pushbutton, PB_clock, single_pulse_out);
    
    initial begin
    PB_clock = 0;
    Pushbutton = 0; #40;
    Pushbutton = 1; #5;
    Pushbutton = 0; #10;
    Pushbutton = 1; #4;
    Pushbutton = 0; #5;
    Pushbutton = 1; #50;
    Pushbutton = 0; #2;
    Pushbutton = 1; #10;
    Pushbutton = 0; #5;
    Pushbutton = 1; #30;
    Pushbutton = 0; #8;
    Pushbutton = 1; #5;
    end
    
    always begin
    #5 PB_clock = ~PB_clock;
    end
endmodule
