`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/28 09:07:18
// Design Name: 
// Module Name: fsm_mat
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


module fsm_mat(

    );
    reg start_n;
    reg check_n;
    reg reset;
    reg clk;
    
    FPGAshell_wrapper fsm
    (
        .clk(clk),
        .rstn(reset),
        .start_n(start_n),
        .check_n(check_n)
    );
    
    always begin
        #5 clk = ~clk;  // 每5个时间单位取反一次，模拟时钟信号
    end

    initial  begin
        #0 clk = 1'b0;
        start_n = 1'b0;
        check_n = 1'b0;
        reset = 1'b0;
        #10 reset = 1'b1;
        //#10 reset = 1'b0;
        #20 start_n <= 1'b1;
        #10 start_n <= 1'b0;
        #50000 check_n <= 1'b1;
        #10 check_n <= 1'b0;
     end
    
    
endmodule
