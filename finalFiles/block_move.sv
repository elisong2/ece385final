module block_move(input Reset, frame_clk,
                  input [7:0] keycode, 
                  input [9:0] x0, x1, x2, x3, y0, y1, y2, y3,
                  output [9:0] ox0, ox1, ox2, ox3, oy0, oy1, oy2, oy3);

logic [9:0] block_x_motion, block_y_motion;
logic [9:0] px0, px1, px2, px3, py0, py1, py2, py3;
logic [9:0] cx0, cy0, cx1, cy1, cx2, cy2, cx3, cy3;
logic [5:0] counter;
logic game_state;

//assign px0 = x0;
//assign px1 = x1;
//assign px2 = x2;
//assign px3 = x3;
//assign py0 = y0;
//assign py1 = y1;
//assign py2 = y2;
//assign py3 = y3;
//assign block_y_motion = 10'd1;

//assign cx0 = ((x0 + 10'd5)*10'd20) + 10'd111;
//assign cx1 = ((x1 + 10'd5)*10'd20) + 10'd111;
//assign cx2 = ((x2 + 10'd5)*10'd20) + 10'd111;
//assign cx3 = ((x3 + 10'd5)*10'd20) + 10'd111;
//assign cy0 = (y0 + 10'd10)*(10'd20) + 10'd21;
//assign cy1 = (y1 + 10'd10)*(10'd20) + 10'd21;
//assign cy2 = (y2 + 10'd10)*(10'd20) + 10'd21;
//assign cy3 = (y3 + 10'd10)*(10'd20) + 10'd21;

always_ff @ (posedge Reset or posedge frame_clk)

//always_comb
begin
	if (Reset) 
	begin
		px0 <= x0;
		px1 <= x1;
		px2 <= x2;
		px3 <= x3;
		py0 <= y0;
		py1 <= y1;
		py2 <= y2;
		py3 <= y3;
		counter <= 6'b0;
		block_x_motion <= 0;
		game_state <= 0;
	end
//	else 
//		begin
    // MOVE HORIZONTALLY BASED ON A & D KEYS 
	 else if(keycode == 8'h16)
	 begin
		game_state <= 1'b1;
	end
	else if(counter % 30 == 0 && game_state == 1'b1)
	begin
//	 else if(counter % 30 == 0 && keycode == 8'h16)
//	 begin
//	
//    // INCREMENT GRID POSITIONS
//    px0 <= px0 + block_x_motion;
//    px1 <= px1 + block_x_motion;
//    px2 <= px2 + block_x_motion;
//    px3 <= px3 + block_x_motion;
	
	
	
//		if((py0 < 10'b10100 && py1 > 10'b10100 && py2 > 10'b10100 && py3 > 10'b10100)
//			&& (px0 > 10'd0 && px0 < 10'd10 && px1 > 10'd0 && px1 < 10'd10 && px2 > 10'd0 && px2 < 10'd10 && px3 > 10'd0 && px3 < 10'd10))
//		begin 
//		
//                  if (keycode == 8'h04) 
//									begin
////                                block_x_motion <= -1;//A
//                                // block_y_motion<= 0;
//										  px0 <= px0 - 10'b1;
//										  px1 <= px1 - 10'b1;
//										  px2 <= px2 - 10'b1;
//										  px3 <= px3 - 10'b1;
//                            end
//
//                   else if (keycode == 8'h07)
//									begin
//
////                                block_x_motion <= 1;//D
//                                // block_y_motion <= 0;
//										  px0 <= px0 + 10'b1;
//										  px1 <= px1 + 10'b1;
//										  px2 <= px2 + 10'b1;
//										  px3 <= px3 + 10'b1;
//                            end
//                    else
//									begin
////                                block_x_motion <= 0;
//										  px0 <= px0;
//										  px1 <= px1;
//										  px2 <= px2;
//										  px3 <= px3;
//                                // block_y_motion <= ;
//									end
//
//		
//		
//		py0 <= py0 + 10'b1;
//		py1 <= py1 + 10'b1;
//		py2 <= py2 + 10'b1;
//		py3 <= py3 + 10'b1;
//		counter <= 1;
//		
//		end
//		else 
//		begin
//			px0 <= px0;
//			px1 <= px1;
//			px2 <= px2;
//			px3 <= px3;
//			
//			py0 <= py0;
//			py1 <= py1;
//			py2 <= py2;
//			py3 <= py3;
//		end
//		end
//	
	
	
	if(py0 > 10'b10100 || py1 > 10'b10100 || py2 > 10'b10100 || py3 > 10'b10100)
	begin
////		if(px0 < 10'd0 || px0 > 10'd9 || px1 < 10'd0 || px1 > 10'd9 || px2 < 10'd0 || px2 > 10'd9 || px3 < 10'd0 || px3 > 10'd9)
////		begin
			px0 <= px0;
			px1 <= px1;
			px2 <= px2;
			px3 <= px3;
			
			py0 <= py0;
			py1 <= py1;
			py2 <= py2;
			py3 <= py3;
////		end 
	end
//	else if(px0 > 10'd0 && px0 < 10'd10 && px1 > 10'd0 && px1 < 10'd10 && px2 > 10'd0 && px2 < 10'd10 && px3 > 10'd0 && px3 < 10'd10)
	else
	begin
//		case (keycode)
//                    8'h04 : begin
//
////                                block_x_motion <= -1;//A
//                                // block_y_motion<= 0;
//										  px0 <= px0 - 10'b1;
//										  px1 <= px1 - 10'b1;
//										  px2 <= px2 - 10'b1;
//										  px3 <= px3 - 10'b1;
//                            end
//
//                    8'h07 : begin
//
////                                block_x_motion <= 1;//D
//                                // block_y_motion <= 0;
//										  px0 <= px0 + 10'b1;
//										  px1 <= px1 + 10'b1;
//										  px2 <= px2 + 10'b1;
//										  px3 <= px3 + 10'b1;
//                            end
//                    default : 
//									begin
////                                block_x_motion <= 0;
//										  px0 <= px0;
//										  px1 <= px1;
//										  px2 <= px2;
//										  px3 <= px3;
//                                // block_y_motion <= ;
//									end
//
//		endcase
		if (keycode == 8'h04)
                    begin

//                                block_x_motion <= -1;//A
                                // block_y_motion<= 0;
										  px0 <= px0 - 10'b1;
										  px1 <= px1 - 10'b1;
										  px2 <= px2 - 10'b1;
										  px3 <= px3 - 10'b1;
                            end

         else if (keycode == 8'h07)
									begin
//                                block_x_motion <= 1;//D
                                // block_y_motion <= 0;
										  px0 <= px0 + 10'b1;
										  px1 <= px1 + 10'b1;
										  px2 <= px2 + 10'b1;
										  px3 <= px3 + 10'b1;
                            end
          else     
									begin
//                                block_x_motion <= 0;
										  px0 <= px0;
										  px1 <= px1;
										  px2 <= px2;
										  px3 <= px3;
                                // block_y_motion <= ;
									end
//
//		
////		px0 <= px0 + block_x_motion;
////		px1 <= px1 + block_x_motion;
////		px2 <= px2 + block_x_motion;
////		px3 <= px3 + block_x_motion;
		py0 <= py0 + 10'b1;
		py1 <= py1 + 10'b1;
		py2 <= py2 + 10'b1;
		py3 <= py3 + 10'b1;
		counter <= 1;
	end
//		
end
else
	 
	 counter <= counter + 6'b1;
//	 px0 <= ((px0 + block_x_motion)*10'd20) + 10'd111;
//    px1 <= ((px1 + block_x_motion)*10'd20) + 10'd111;
//    px2 <= ((px2 + block_x_motion)*10'd20) + 10'd111;
//    px3 <= ((px3 + block_x_motion)*10'd20) + 10'd111;
//
//    py0 <= (py0 + 10'd1)*(10'd20) + 10'd21;
//	 py1 <= (py1 + 10'd1)*(10'd20) + 10'd21;
//	 py2 <= (py2 + 10'd1)*(10'd20) + 10'd21;
//	 py3 <= (py3 + 10'd1)*(10'd20) + 10'd21;
	 
//	 end

end

    assign ox0 = px0;
    assign ox1 = px1;
    assign ox2 = px2;
    assign ox3 = px3;
	 
    assign oy0 = py0;
    assign oy1 = py1;
    assign oy2 = py2;
    assign oy3 = py3;


endmodule