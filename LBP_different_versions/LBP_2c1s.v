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
// reg [13:0] lbp_addr_reg;
reg lbp_valid_reg;
// reg [7:0] lbp_data_reg;
reg gray_req_reg;
reg finish_reg;

reg [1:0] CurrentState, NextState;

reg compute, write, load, send_addr;

reg [7:0] row,col;
reg [3:0] counter_addr, counter_load, counter_compute;

// reg [7:0] g_center;
reg [7:0] g_p [0:8];
reg [7:0] LBP_value;

integer i;
reg [7:0] g_p_old [0:8];
reg first_load, move_x;

assign gray_addr = gray_addr_reg;
// assign lbp_addr = lbp_addr_reg;
assign lbp_valid = lbp_valid_reg;
// assign lbp_data = lbp_data_reg;
assign gray_req = gray_req_reg;
assign finish = finish_reg;
assign lbp_data = LBP_value;
assign lbp_addr = row*128 + col;
// function integer s_function;
//     input [7:0] gp;
//     input [7:0] gc;
//     begin
//         if(gp>=gc)    s_function = 1'b1;
//         else    s_function = 1'b0;
//     end
// endfunction

always @(posedge clk, posedge reset) begin //calculate gray_addr & load data
    if(reset)begin
        gray_addr_reg <= 0;
        counter_addr <= 0;
        counter_load <= 0;
        // g_center <= 0;
        for(i=0;i<9;i=i+1)
            g_p[i] <= 0;
        for(i=0;i<9;i=i+1)
            g_p_old[i] <= 0;
        LBP_value <= 0;
        counter_compute <= 0;
        first_load <= 1;
    end
    else if(send_addr)begin
        LBP_value <= 0;
        if(first_load || move_x)begin
            case(counter_addr)
                4'd0: gray_addr_reg <= (row-1) * 128 + (col-1);
                4'd1: gray_addr_reg <= (row-1) * 128 + col;
                4'd2: gray_addr_reg <= (row-1) * 128 + (col+1);
                4'd3: gray_addr_reg <= row * 128 + (col-1);
                4'd4: gray_addr_reg <= row * 128 + col;
                4'd5: gray_addr_reg <= row * 128 + (col+1);
                4'd6: gray_addr_reg <= (row+1) * 128 + (col-1);
                4'd7: gray_addr_reg <= (row+1) * 128 + col;
                4'd8: gray_addr_reg <= (row+1) * 128 + (col+1);
                default: gray_addr_reg <= 0;    
            endcase      
            if(counter_addr==9)begin
                 counter_addr <= 0;
            end
            else begin
                counter_addr <= counter_addr + 1;   
            end
        end
        else begin
            case(counter_addr)
                4'd0: gray_addr_reg <= (row-1) * 128 + (col+1);
                4'd1: gray_addr_reg <= row * 128 + (col+1);
                4'd2: gray_addr_reg <= (row+1) * 128 + (col+1);
                default: gray_addr_reg <= 0;
            endcase      
            if(counter_addr==3)begin
                 counter_addr <= 0;
            end
            else begin
                counter_addr <= counter_addr + 1;  
            end
        end            
    end
    else if(load)begin
        if(first_load || move_x)begin
            if(counter_load==9)begin
                counter_load <= 0;
                 first_load <= 0;
                for(i=0;i<9;i=i+1)
                    g_p_old[i] <= g_p[i];
            end
            else begin
                g_p[counter_load] <= gray_data;
                // if(counter_load == 4)begin
                //     g_center <= gray_data;                
                // end
                counter_load <= counter_load + 1; 
            end
        end
        else begin
            if(counter_load==3)begin
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
    else if(compute)begin   //compute
        // if(counter < 4)
        //     LBP_value <= (LBP_value + ((2'b10 << counter) * s_function(g_p[counter], g_center)));
        // else
        //     LBP_value <= (LBP_value + ((2'b10 << counter) * s_function(g_p[counter+1], g_center)));
        if(counter_compute < 4)
                if(g_p[counter_compute]>=g_p[4]) LBP_value <= LBP_value + (1 << counter_compute);
                else    LBP_value <= LBP_value;
        else
            if(g_p[counter_compute+1]>=g_p[4]) LBP_value <= LBP_value + (1 << counter_compute);
            else    LBP_value <= LBP_value;
        if(counter_compute == 7)begin
            counter_compute <= 0;
            // lbp_addr_reg <= row*128 + col;
            // lbp_data_reg <= LBP_value;
        end
        else begin        
            counter_compute <= counter_compute + 3'd1;
        end
    end 
end

always @(posedge clk,posedge reset)begin    //write
    if(reset)begin
        row <= 1;
        col <= 1;
        // lbp_addr_reg <= 0;
        // lbp_data_reg <= 0;
        finish_reg <= 0;
        
        move_x <= 0;
    end
    else if(write)begin //write
        if(col == 126)begin
            if(row == 126)begin
                //last pixel;
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
    end        
end

always @(*)begin
    case(CurrentState)
        2'b00:begin     //send addr
            NextState <= 2'b01;
        end
        2'b01:begin //load data
            if(first_load || move_x)begin
                if(counter_load == 9)
                    NextState <= 2'b10;
                else
                    NextState <= 2'b00;
            end
            else begin
                if(counter_load == 3)
                    NextState <= 2'b10;
                else
                    NextState <= 2'b00;
            end
        end
        2'b10:begin //compute
            if(counter_compute == 7)
                NextState <= 2'b11;
            else
                NextState <= 2'b10;
        end
        2'b11:begin //write
            NextState <= 2'b00;
        end
    endcase
end
always @(*)begin
    load <= 0;
    send_addr <= 0;
    lbp_valid_reg <= 0;
    case(CurrentState)
        2'b00:begin
            send_addr <= 1;
            gray_req_reg <= 0;
            compute <= 0;
            write <= 0;
            lbp_valid_reg <= 0;
        end
        2'b01:begin 
            gray_req_reg <= 1;
            compute <= 0;
            write <= 0;
            lbp_valid_reg <= 0;
            load <= 1;
        end
        2'b10:begin
            gray_req_reg <= 0;
            compute <= 1;
            write <= 0;
            lbp_valid_reg <= 0;            
        end
        2'b11:begin
            compute <= 0;
            gray_req_reg <= 0;
            write <= 1;
            lbp_valid_reg <= 1;
        end
    endcase
end

always @(posedge clk,posedge reset)begin
    if(reset)begin
        CurrentState <= 2'b0;
    end
    else    CurrentState <= NextState;
end
endmodule