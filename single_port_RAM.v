`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 11.08.2023 06:45:03
// Design Name: 
// Module Name: single_port_RAM
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


module single_port_RAM(input clk,
                       input en,
                       input wr,
                       input [2:0]add,
                       input [7:0]din,
                       output reg [7:0]dout
                       );
      
      reg [7:0] data_mem [0:7];
      always @(posedge clk) begin
        if (en) begin
            if(wr) begin
                data_mem[add] = din;
            end
            else
                dout = data_mem[add];
        end
      end
      initial begin dout = 8'b0;       
      end     
                
endmodule
