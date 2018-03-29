`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2018 02:23:28 PM
// Design Name: 
// Module Name: my_clk_gen
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


module my_clk_gen(
    input clk,
    output reg new_clk
    );
    
        reg [23:0] count = 24'b0;
        

    initial begin
      new_clk = 0;
    end

    always @ (posedge clk) begin
        count <= count + 1;
      new_clk <= (count == 2'b0)? ~new_clk : new_clk;
    end

endmodule
