module color_mapper( input [9:0] DrawX, DrawY,
                    input is_block,
						 input is_text, 
                     output logic [7:0] Red, Green, Blue);


logic [9:0] is_background;
logic is_grid_border;
logic is_grid;
logic is_block_on;
logic is_block_off;

logic [9:0] x_border_start, x_border_end, y_border_start, y_border_end;
assign x_border_start = 10'b0001100100; // 100
assign x_border_end = 10'd340; //10'b110111000; //340
assign y_border_start = 10'b0000001010; //10
assign y_border_end = 10'b0111010110; //470

// draw background color & tetris play grid

// set is background true if in game inactive regions
always_comb
begin
if ((DrawX > x_border_start && DrawX < x_border_end) && (DrawY > y_border_start && DrawY < y_border_end))
	begin
      is_background = 1'b1;
	end
else 
	begin
      is_background = 1'b0;
	end



// set is grid border true is in grid border regions
//if (((DrawX > 10'd100 && DrawX < 10'd111) || (DrawX > 10'd329 && DrawX < 10'd340)) && ((DrawY > 10'd10 && DrawY < 10'd21) || (DrawY > 10'd459 && DrawY < 10'470)))
//	 begin
//       is_grid_border = 1'd1;
//	 end
//else 
//	 begin
//      is_grid_border = 1'd0;
//	 end
//	 

	if(is_block)
		begin
             Red = 8'hff;
             Green = 8'h55;
             Blue = 8'h00;
//					Red = 8'hff;
//             Green = 8'hff;
//             Blue = 8'hff;
        end
//    else if (is_grid_border)
//        begin
//             Red = 8'hff;
//             Green = 8'hff;
//             Blue = 8'hff;
//        end
//	 else if () //drawing sprite // drawing fontRom
	 else if(is_text)
		  begin
			    Red = 8'hff;
             Green = 8'hff;
             Blue = 8'hff;
		  end
    else if(is_background)
        begin
             Red = 8'hff;
             Green = 8'hff;
             Blue = 8'hff;
        end
	 else 
		begin
             Red = 8'h00;
             Green = 8'h00;
             Blue = 8'h00;
        end	
end




    
		
endmodule


////-------------------------------------------------------------------------
////    Color_Mapper.sv                                                    --
////    Stephen Kempf                                                      --
////    3-1-06                                                             --
////                                                                       --
////    Modified by David Kesler  07-16-2008                               --
////    Translated by Joe Meng    07-07-2013                               --
////                                                                       --
////    Fall 2014 Distribution                                             --
////                                                                       --
////    For use with ECE 385 Lab 7                                         --
////    University of Illinois ECE Department                              --
////-------------------------------------------------------------------------
//
//
//module  color_mapper ( input        [9:0] BallX, BallY, DrawX, DrawY, Ball_size,
//                       output logic [7:0]  Red, Green, Blue );
//    
//    logic ball_on;
//	 
// /* Old Ball: Generated square box by checking if the current pixel is within a square of length
//    2*Ball_Size, centered at (BallX, BallY).  Note that this requires unsigned comparisons.
//	 
//    if ((DrawX >= BallX - Ball_size) &&
//       (DrawX <= BallX + Ball_size) &&
//       (DrawY >= BallY - Ball_size) &&
//       (DrawY <= BallY + Ball_size))
//
//     New Ball: Generates (pixelated) circle by using the standard circle formula.  Note that while 
//     this single line is quite powerful descriptively, it causes the synthesis tool to use up three
//     of the 12 available multipliers on the chip!  Since the multiplicants are required to be signed,
//	  we have to first cast them from logic to int (signed by default) before they are multiplied). */
//	  
//    int DistX, DistY, Size;
//	 assign DistX = DrawX - BallX;
//    assign DistY = DrawY - BallY;
//    assign Size = Ball_size;
//	  
//    always_comb
//    begin:Ball_on_proc
//        if ( ( DistX*DistX + DistY*DistY) <= (Size * Size) ) 
//            ball_on = 1'b1;
//        else 
//            ball_on = 1'b0;
//     end 
//       
//    always_comb
//    begin:RGB_Display
//        if ((ball_on == 1'b1)) 
//        begin 
//            Red = 8'hff;
//            Green = 8'h55;
//            Blue = 8'h00;
//        end       
//        else 
//        begin 
//            Red = 8'h00; 
//            Green = 8'h00;
//            Blue = 8'h7f - DrawX[9:3];
//        end      
//    end 
//    
//endmodule
