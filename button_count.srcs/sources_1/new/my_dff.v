`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2018 02:20:48 PM
// Design Name: 
// Module Name: my_dff
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



module my_dff(
    input DFF_CLOCK,
    input D,
    output reg Q
    //output reg Qinv
    );
    
    
    
    always @ (posedge DFF_CLOCK) begin
     Q <= D;
     //Qinv <= ~Q;
     end
endmodule
