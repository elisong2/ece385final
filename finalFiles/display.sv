//module tetris_board(input Reset, Clk, frame_clk,
//                    input [9:0] dx, dy, // current pixel being drawn
//                    input [9:0] x0, x1, x2, x3, y0, y1, y2, y3, // current block coordinates (set by block move)
//                    input [2:0] rng,
//                    input [7:0] keycode,
//                    output is_block);
//
//logic board[20][10], board_next[20][10]; //tetris game board
//
//logic [9:0] block_move_x[4], block_move_y[4]; block_move_x_next[4], block_move_y_next[4]; // x and y coordinates of current moving block
//logic [9:0] block_move_y_save[4];
//logic game_done, newBlock;
//
//logic [9:0] keypress_count, keypress_countnext; // counter for rotation key presses
//
//logic frame_clk_delayed, frame_clk_rising_edge;
//always_ff @ (posedge Clk) 
//    begin
//		frame_clk_delayed <= frame_clk;
//		frame_clk_rising_edge <= (frame_clk == 1'b1) && (frame_clk_delayed == 1'b0);
//	end
//
//// --------------- INITIAL BOARD SETTING + UPDATE STATES --------------
//always_ff @ (posedge Clk)
//    begin
//        if(Reset)
//            begin
//
//                // initialize board with blank grid
//                for(int y = 0; y < 20; y++)
//                begin
//                    for(int x = 0; x < 10; x++)
//                    begin
//                        board[y][x] <= 1'b0;
//                    end
//                end
//
//                // initialize current moving block 
//                for(int i = 0; i < 4; i++)
//                begin
//                    block_move_x[i] <= 10'b0;
//                    block_move_y[i] <= 10'b0;
//                end
//
//
//            end
//        else 
//            begin
//					
//					for(int i = 0; i < 4; i++)
//						block_move_y_save[i] = block_move_y[i];
//								
//					for(int i = 0; i < 4; i++)
//						begin
//							block_move_y[i] <= block_move_y[i] + 10'b0000000001;
//							if (block_move[i] = 10'd10)
//								begin
//								for(int i = 0; i < 4; i++)
//									block_move_y[i] = block_move_y_save[i];
//									newBlock = 1'b1;
//								end
//						end
//				
//					if (newBlock)
//								begin
//									block_move_x[0] = x0;
//									block_move_x[1] = x1;
//									block_move_x[2] = x2;
//									block_move_x[3] = x3;
//									
//									block_move_y[0] = y0;
//									block_move_y[1] = y1;
//									block_move_y[2] = y2;
//									block_move_y[3] = y3;
//								end
//							
//							
//						
//				unique case (keycode)
//				
//						 // A (shift left)
//						8'h04: begin
//									for(int i = 0; i < 4; i++)
//									begin
//										block_move_x_next[i] = block_move_x[i] - 10'b0000000001;
//									end
//								
//									
//									//setting the board
//									for(int y = 0; y < 20; y++)
//									begin
//										for(int x = 0; x < 10; x++)
//										begin
//											if()
//										end
//									end 
//	
//	
//								 end
//					 // D (shift right)
//						8'h07: begin
//									for(int i = 0; i < 4; i++)
//									begin
//										block_move_x_next[i] = block_move_x[i] + 10'b0000000001;
//									end
//									
//									for(int y = 0; y < 20; y++)
//									begin
//										for(int x = 0; x < 10; x++)
//										begin
//											if ()
//										end
//									end 
//								 end
//					
//					
//				
//
//                board <= board_next;
//                block_move_x <= block_move_x_next;
//                block_move_y <= block_move_y_next;
//                keypress_count <= keypress_countnext;
//
//            end
//
//    end
//// ------------------------ END OF SETTING ----------------------------
//
//always_comb
//begin
//    // SET VARIABLES
//    board_next = board;
//    block_move_x_next = block_move_x;
//    block_move_y_next = block_move_y;
//    keypress_countnext = keypress_count;
//
//    
//end
//
//endmodule
////