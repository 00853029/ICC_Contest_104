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
reg [7:0] LBP_value;
reg [7:0] row, col;
reg [3:0] counter;
reg [7:0] g_center;
reg [13:0] gray_addr_reg;
reg lbp_valid_reg;
reg gray_req_reg;
reg finish_reg;

assign gray_addr = gray_addr_reg;
assign lbp_valid = lbp_valid_reg;
assign gray_req = gray_req_reg;
assign finish = finish_reg;
assign lbp_data = LBP_value;
assign lbp_addr = (row<<7) + col;

always @(posedge clk,posedge reset)begin
    if(reset)begin
        finish_reg <= 0;
        LBP_value <= 0;
        row <= 1;
        col <= 1;
        counter <= 0;
    end
    else begin
        gray_req_reg <= 1;
        case(counter)
            4'd0: gray_addr_reg <= (row << 7) + col;    //center pixel
            4'd1: gray_addr_reg <= ((row-1) << 7) + col-1;
            4'd2: gray_addr_reg <= ((row-1) << 7) + col;
            4'd3: gray_addr_reg <= ((row-1) << 7) + col+1;
            4'd4: gray_addr_reg <= (row << 7) + col-1;
            4'd5: gray_addr_reg <= (row << 7) + col+1;
            4'd6: gray_addr_reg <= ((row+1) << 7) + col-1;
            4'd7: gray_addr_reg <= ((row+1) << 7) + col;
            4'd8: gray_addr_reg <= ((row+1) << 7) + col+1;
            default:;
        endcase
        case(counter)
            4'd0:;
            4'd1: g_center <= gray_data;
            4'd10:;
            default: begin
                    LBP_value <= LBP_value + ((gray_data>=g_center) << (counter-2));
            end
        endcase
        if(counter == 10)begin
            counter <= 0;
            LBP_value <= 0;
            if(col == 126)begin
                col <= 1;
                if(row == 126)  finish_reg <= 1;
                else row <= row + 1;
            end
            else col <= col + 1;
        end
        else    counter <= counter + 1;

        if(counter == 9)    lbp_valid_reg <= 1;
        else    lbp_valid_reg <= 0;
    end
end
endmodule