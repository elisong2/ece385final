module draw_block(input frame_clk,
						  input [9:0] x0, x1, x2, x3, y0, y1, y2, y3,
                    input [9:0] DrawX, DrawY,
                    output is_block);
						  
logic [9:0] cx0, cy0, cx1, cy1, cx2, cy2, cx3, cy3;
logic [9:0] nx0, ny0, nx1, ny1, nx2, ny2, nx3, ny3;

assign cx0 = ((x0 + 10'd5)*10'd20) + 10'd111;
assign cx1 = ((x1 + 10'd5)*10'd20) + 10'd111;
assign cx2 = ((x2 + 10'd5)*10'd20) + 10'd111;
assign cx3 = ((x3 + 10'd5)*10'd20) + 10'd111;
assign cy0 = (y0)*(10'd20) + 10'd21;
assign cy1 = (y1)*(10'd20) + 10'd21;
assign cy2 = (y2)*(10'd20) + 10'd21;
assign cy3 = (y3)*(10'd20) + 10'd21;

assign nx0 = cx0 + 10'd20;
assign nx1 = cx1 + 10'd20;
assign nx2 = cx2 + 10'd20;
assign nx3 = cx3 + 10'd20;
assign ny0 = cy0 + 10'd20;
assign ny1 = cy1 + 10'd20;
assign ny2 = cy2 + 10'd20;
assign ny3 = cy3 + 10'd20;

always_comb
//begin
//    if (DrawX > x0 && DrawX < nx0 && DrawY > y0 && DrawY < ny0)
//		begin
//         is_block = 1'b1;
//		end
//    else if (DrawX > x1 && DrawX < nx1 && DrawY > y1 && DrawY < ny1)
//		begin
//         is_block = 1'b1;
//		end
//    else if (((DrawX > x2) && (DrawX < nx2)) && ((DrawY > y2) && (DrawY < ny2)))
//		begin
//         is_block = 1'b1;
//		end
//    else if (((DrawX > x3) && (DrawX < nx3)) && ((DrawY > y3) && (DrawY < ny3)))
//		begin
//         is_block = 1'b1;
//		end
//    else 
//		begin
//         is_block = 1'b0;
//		end
//end
//always_ff @ (posedge frame_clk)
begin
    if (DrawX > cx0 && DrawX < nx0 && DrawY > cy0 && DrawY < ny0)
		begin
         is_block = 1'b1;
		end
    else if (DrawX > cx1 && DrawX < nx1 && DrawY > cy1 && DrawY < ny1)
		begin
         is_block = 1'b1;
		end
    else if (((DrawX > cx2) && (DrawX < nx2)) && ((DrawY > cy2) && (DrawY < ny2)))
		begin
         is_block = 1'b1;
		end
    else if (((DrawX > cx3) && (DrawX < nx3)) && ((DrawY > cy3) && (DrawY < ny3)))
		begin
         is_block = 1'b1;
		end
    else 
		begin
         is_block = 1'b0;
		end
end

//logic [9:0] cx0, cy0, cx1, cy1, cx2, cy2, cx3, cy3;

//assign cx0 = (x0*10'd20) + 10'd111;
//assign cx1 = (x1*10'd20) + 10'd111;
//assign cx2 = (x2*10'd20) + 10'd111;
//assign cx3 = (x3*10'd20) + 10'd111;
//assign cy0 = (y0 + 10'd18)*(10'd20) + 10'd21;
//assign cy1 = (y1 + 10'd18)*(10'd20) + 10'd21;
//assign cy2 = (y2 + 10'd18)*(10'd20) + 10'd21;
//assign cy3 = (y3 + 10'd18)*(10'd20) + 10'd21;
//
//always_comb
//begin
//    if (((DrawX > cx0) && (DrawX < (cx0 + 10'd20))) && ((DrawY > cy0) && (DrawY < (cy0 + 10'd20))))
//		begin
//         is_block = 1'b1;
//		end
//    else if (((DrawX > cx1) && (DrawX < (cx1 + 10'd20))) && ((DrawY > cy1) && (DrawY < (cy1 + 10d'20))))
//		begin
//         is_block = 1'b1;
//		end
//    else if (((DrawX > cx2) && (DrawX < (cx2 + 10'd20))) && ((DrawY > cy2) && (DrawY < (cy3 + 10d'20))))
//		begin
//         is_block = 1'b1;
//		end
//    else if (((DrawX > cx3) && (DrawX < (cx3 + 10'd20))) && ((DrawY > cy3) && (DrawY < (cy3 + 10d'20))))
//		begin
//         is_block = 1'b1;
//		end
//    else 
//		begin
//         is_block = 1'b0;
//end





endmodule