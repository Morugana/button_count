`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2018 02:22:15 PM
// Design Name: 
// Module Name: sim_my_dff
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


module sim_my_dff(

    );
    
    reg DFF_ClOCK;
    reg D;
    
    wire Q;

    my_dff dut(DFF_ClOCK, D, Q);
    
    initial begin
    DFF_ClOCK = 0;
    D = 1; #100;
    D = 0; #100;
    D = 1; #100;
    D = 0; #100;
    end
    
    always begin
    #5 DFF_ClOCK = ~DFF_ClOCK;
    end
endmodule
