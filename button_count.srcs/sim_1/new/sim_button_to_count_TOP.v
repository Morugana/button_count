`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2018 08:33:14 PM
// Design Name: 
// Module Name: sim_button_to_count_TOP
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


module sim_button_to_count_TOP(

    );
    
    reg FPGA_CLK;
    reg FPGA_PB;
    
    wire [7:0]FPGA_LED;
    
    
    button_to_count_TOP dut(FPGA_CLK, FPGA_PB, FPGA_LED);
    
    initial begin

    FPGA_CLK = 0;
    FPGA_PB = 0; #300;                    
    FPGA_PB = 1; #300;
    FPGA_PB = 0; #300;
    FPGA_PB = 1; #300;
    FPGA_PB = 0; #300;
    FPGA_PB = 1; #300;
    FPGA_PB = 0; #300;
    FPGA_PB = 1; #300;
    FPGA_PB = 0; #300;
    FPGA_PB = 1; #300;
    end
    
    always begin
    #5 FPGA_CLK = ~FPGA_CLK;
    end
    
endmodule
