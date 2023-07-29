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

reg [1:0] CurrentState;

reg [7:0] row,col;
reg [3:0]  counter_load,counter_compute, counter_addr;

// reg [7:0] g_center;
reg [7:0] g_p [0:8];
reg [7:0] LBP_value;

integer i;
reg [7:0] g_p_old [0:8];
reg first_load, move_x, send;

assign gray_addr = gray_addr_reg;
assign lbp_valid = lbp_valid_reg;
assign gray_req = gray_req_reg;
assign finish = finish_reg;
assign lbp_data = LBP_value;
assign lbp_addr = (row<<7) + col;

always @(posedge clk, posedge reset) begin //calculate gray_addr & load data
    if(reset)begin
        gray_addr_reg <= 0;
        counter_addr <= 0;
        counter_load <= 0;
        counter_compute <= 0;
        for(i=0;i<9;i=i+1)
            g_p[i] <= 0;
        for(i=0;i<9;i=i+1)
            g_p_old[i] <= 0;
        LBP_value <= 0;
        first_load <= 1;
        
        row <= 1;
        col <= 1;
        finish_reg <= 0; 
        move_x <= 0;
        lbp_valid_reg <= 0;
        gray_req_reg <= 0;
        CurrentState <= 0;
        send <= 0;
    end
    else begin
        case(CurrentState)
            2'b00:begin
                send <= 1;
                gray_req_reg <= 1;
                lbp_valid_reg <= 0;
                LBP_value <= 0;
                if(first_load || move_x)begin
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
                        CurrentState <= 2'b01;
                    end
                    else    counter_addr <= counter_addr + 1;
                end
                else begin
                    case(counter_addr)
                        4'd0: gray_addr_reg <= ((row-1) << 7) + (col+1);
                        4'd1: gray_addr_reg <= (row << 7) + (col+1);
                        4'd2: gray_addr_reg <= ((row+1) << 7) + (col+1);
                        default: gray_addr_reg <= 0;
                    endcase
                    if(counter_addr==3)begin
                        counter_addr <= 0;
                        CurrentState <= 2'b01;
                    end
                    else    counter_addr <= counter_addr + 1;
                end                                     
            end
            2'b01:begin
                if(counter_compute < 4)
                    if(g_p[counter_compute]>=g_p[4]) LBP_value <= LBP_value + (1 << counter_compute);
                    else    LBP_value <= LBP_value;
                else
                    if(g_p[counter_compute+1]>=g_p[4]) LBP_value <= LBP_value + (1 << counter_compute);
                    else    LBP_value <= LBP_value;
                if(counter_compute == 7)begin
                    counter_compute <= 0;
                    CurrentState <= 2'b10;                    
                    lbp_valid_reg <= 1;
                end
                else begin    
                    CurrentState <= 2'b01;    
                    counter_compute <= counter_compute + 3'd1;
                end
                gray_req_reg <= 0;
            end
            2'b10:begin
                lbp_valid_reg <= 0;
                if(col == 126)begin
                    if(row == 126)begin
                        finish_reg <= 1;
                        row <= 1;
                        col <= 1;
                    end
                    else begin
                        row <= row + 1;
                        col <= 1;
                        move_x <= 1;
                    end
                end
                else begin
                    col <= col + 1;
                    move_x <= 0;
                end
                CurrentState <= 2'b00;
            end
            default:;
        endcase

        if(send)begin
            if(first_load || move_x)begin
                if(counter_load==9)begin
                    send <= 0;
                    counter_load <= 0;
                    first_load <= 0;
                    for(i=0;i<9;i=i+1)
                        g_p_old[i] <= g_p[i];
                end
                else begin
                    g_p[counter_load] <= gray_data;
                    counter_load <= counter_load + 1; 
                end
            end
            else begin
                if(counter_load==3)begin
                    send <= 0;
                    gray_req_reg <= 0;
                    counter_load <= 0;
                    // g_center <= g_p[4];
                    for(i=0;i<9;i=i+1)
                        g_p_old[i] <= g_p[i];
                end
                else begin
                    g_p[0] <= g_p_old[1];
                    g_p[1] <= g_p_old[2];
                    g_p[3] <= g_p_old[4];
                    g_p[4] <= g_p_old[5];
                    g_p[6] <= g_p_old[7];
                    g_p[7] <= g_p_old[8];
                    case(counter_load)
                        4'd0: g_p[2] <= gray_data;
                        4'd1: g_p[5] <= gray_data;
                        4'd2: g_p[8] <= gray_data;
                    endcase
                    counter_load <= counter_load + 1;
                end
            end
        end
    end
end

endmodule