`timescale 1ns/10ps
module LBP ( clk, reset, gray_addr, gray_req, gray_ready, gray_data, lbp_addr, lbp_valid, lbp_data, finish);
input   	clk;
input   	reset;
output  [13:0] 	gray_addr;
output         	gray_req;
input   	gray_ready;
input   [7:0] 	gray_data;
output  [13:0] 	lbp_addr;
output  	lbp_valid;
output  [7:0] 	lbp_data;
output  	finish;
//====================================================================
reg [13:0] gray_addr_reg;
reg lbp_valid_reg;
reg gray_req_reg;
reg finish_reg;

reg [1:0] stage2;

reg [7:0] row, col, stage2_row, stage2_col;
reg [3:0]  counter_load,counter_compute, counter_addr;

// reg [7:0] g_center;
reg [7:0] g_p [0:8];
reg [7:0] stage2_g_p [0:8];
reg [7:0] LBP_value;

integer i;
reg send, load_done;


assign gray_addr = gray_addr_reg;
assign lbp_valid = lbp_valid_reg;
assign gray_req = gray_req_reg;
assign finish = finish_reg;
assign lbp_data = LBP_value;
assign lbp_addr = (stage2_row<<7) + stage2_col;

always @(posedge clk, posedge reset) begin //calculate gray_addr & load data
    if(reset)begin
        gray_addr_reg <= 0;
        counter_addr <= 0;
        counter_load <= 0;
        for(i=0;i<9;i=i+1)
            g_p[i] <= 0;
        
        for(i=0;i<9;i=i+1)
            stage2_g_p[i]  <= 0;
        row <= 1;
        col <= 1;
        
        gray_req_reg <= 0;
        send <= 0;
        load_done <= 0;
    end
    else begin
        send <= 1;
        gray_req_reg <= 1;
        case(counter_addr)
            4'd0: gray_addr_reg <= ((row-1) << 7) + (col-1);
            4'd1: gray_addr_reg <= ((row-1) << 7) + col;
            4'd2: gray_addr_reg <= ((row-1) << 7) + (col+1);
            4'd3: gray_addr_reg <= (row << 7) + (col-1);
            4'd4: gray_addr_reg <= (row << 7) + col;
            4'd5: gray_addr_reg <= (row << 7) + (col+1);
            4'd6: gray_addr_reg <= ((row+1) << 7) + (col-1);
            4'd7: gray_addr_reg <= ((row+1) << 7) + col;
            4'd8: gray_addr_reg <= ((row+1) << 7) + (col+1);
            default: gray_addr_reg <= 0;    
        endcase
        if(counter_addr==9)begin
            counter_addr <= 0;
        end
        else    counter_addr <= counter_addr + 1;
        if(send)begin
            if(counter_load==9)begin
                counter_load <= 0;
                counter_addr <= 0;
                send <= 0;
                load_done <= 1;

                stage2_row <= row;
                stage2_col <= col;
                for(i=0;i<9;i=i+1)  stage2_g_p[i] <= g_p[i];
                if(col == 126)begin
                    if(row == 126)begin
                        row <= 1;
                        col <= 1;
                    end
                    else begin
                        row <= row + 1;
                        col <= 1;
                    end
                end
                else begin
                    col <= col + 1;
                end
            end
            else begin
                load_done <= 0;
                g_p[counter_load] <= gray_data;
                counter_load <= counter_load + 1; 
            end       
        end
        
    end
end
always @(posedge clk,posedge reset)begin
    if(reset)begin
        stage2 <= 0;
        counter_compute <= 0;
        LBP_value <= 0;
        finish_reg <= 0; 
        lbp_valid_reg <= 0;
    end
    else begin
        case(stage2)
            2'b00:begin
                if(load_done)   stage2 <= 2'b01;
                else stage2 <= 2'b00;        
            end
            2'b01:begin
                if(counter_compute < 4)
                    if(stage2_g_p[counter_compute]>=stage2_g_p[4]) LBP_value <= LBP_value + (1 << counter_compute);
                    else    LBP_value <= LBP_value;
                else
                    if(stage2_g_p[counter_compute+1]>=stage2_g_p[4]) LBP_value <= LBP_value + (1 << counter_compute);
                    else    LBP_value <= LBP_value;
                if(counter_compute == 7)begin
                    counter_compute <= 0;
                    stage2 <= 2'b10;                    
                    lbp_valid_reg <= 1;
                end
                else begin
                    stage2 <= 2'b01;    
                    counter_compute <= counter_compute + 3'd1;
                end
            end
            2'b10:begin
                lbp_valid_reg <= 1;
                stage2 <= 2'b11;
            end
            2'b11:begin //nop
                if(stage2_col==126 && stage2_row==126)  finish_reg <= 1;
                LBP_value <= 0;
                lbp_valid_reg <= 0;
                stage2 <= 2'b00;              
                end
            default:;
        endcase
    end
end
endmodule