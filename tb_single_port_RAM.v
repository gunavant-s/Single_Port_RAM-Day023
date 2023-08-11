`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 11.08.2023 07:03:47
// Design Name: 
// Module Name: tb_single_port_RAM
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


module tb_single_port_RAM();

    reg clk, wr, en;
    reg [2:0]add;
    reg [7:0]din;
    wire [7:0]dout;
    
    single_port_RAM DUT(.clk(clk),
                        .wr(wr),
                        .en(en),
                        .add(add),
                        .din(din),
                        .dout(dout)
                        );
    
    initial begin
    clk = 0;
        en = 1; wr = 1; din = 8'b01001011; add = 3'b001;
    #10 en = 1; wr = 1; din = 8'b01101111; add = 3'b010;
    #10 en = 1; wr = 1; din = 8'b01010101; add = 3'b100;
    #10 en = 1; wr = 1; din = 8'b00010101; add = 3'b111;
    #10 en = 1; wr = 0; din = 8'bz; add = 3'b001;
    #10 en = 1; wr = 0; din = 8'bz; add = 3'b010;
    #10 en = 1; wr = 0; din = 8'bz; add = 3'b100;
    #10 en = 1; wr = 0; din = 8'bz; add = 3'b111;   
    #10 $stop;  
    end
    
    always #5 clk = ~clk;
    
endmodule
