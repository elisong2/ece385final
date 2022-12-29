module text(input [9:0] DrawX, DrawY, 
            output [9:0] is_text);

logic [7:0] fdataT, fdataE, fdataR, fdataI, fdataS, fdataC, fdataO;
logic [10:0] font_row_addrT, font_row_addrE, font_row_addrR, font_row_addrI, font_row_addrS, font_row_addrC, font_row_addrOs;
logic [9:0] addrT, addrE, addrR, addrI, addrS, addrC, addrO;

// hard coded addresses for all used letters
assign addrT = 10'h54;
assign addrE = 10'h45;
assign addrR = 10'h52;
assign addrI = 10'h49;
assign addrS = 10'h53;
assign addrC = 10'h43;
assign addrO = 10'h4f;

/*
assign font_row_addrT = 
assign font_row_addrE = 
assign font_row_addrR = 
assign font_row_addrI = 
assign font_row_addrS = 
assign font_row_addrC = 
assign font_row_addrO = 
*/

// call font rom to get row data for current pixel row
font_rom letterT( .addr({addrT, DrawY[3:0]}), .data(fdataT));
font_rom letterE(.addr({addrE, DrawY[3:0]}), .data(fdataE));
font_rom letterR(.addr({addrR, DrawY[3:0]}), .data(fdataR));
font_rom letterI(.addr({addrI, DrawY[3:0]}), .data(fdataI));
font_rom letterS(.addr({addrS, DrawY[3:0]}), .data(fdataS));
font_rom letterC(.addr({addrC, DrawY[3:0]}), .data(fdataC));
font_rom letterO(.addr({addrO, DrawY[3:0]}), .data(fdataO));
//font_rom letterE(.addr(addrE), .data(fdataE));
//font_rom letterR(.addr(addrR), .data(fdataR));
//font_rom letterI(.addr(addrI), .data(fdataI));
//font_rom letterS(.addr(addrS), .data(fdataS));
//font_rom letterC(.addr(addrC), .data(fdataC));
//font_rom letterO(.addr(addrO), .data(fdataO));


// assign font_row_addr = {font_addr, DrawY[3:0]};

// get current pixel being drawn in row
logic [2:0] font_char;
assign font_char = DrawX[2:0]; //dx%8

// is_text = fdata[font_char];


logic [9:0] title_ystart, title_yend;
logic [9:0] t_xstart, t_xend;
logic [9:0] e_x0, e_x1, t2_x0, t2_x1, r_x0, r_x1, i_x0, i_x1, s_x0, s_x1;

// TITLE Y COORDINATES
assign title_ystart = 10'd80;
assign title_yend = 10'd96;

// TITLE LETTER BLOCK BOUNDS
//assign t_xstart = 10'd448;
//assign t_xend = 10'd454;
//assign e_x0 = 10'd454;
//assign e_x1 = 10'd462;
//assign t2_x0 = 10'd462;
//assign t2_x1 = 10'd470;
//assign r_x0 = 10'd470;
//assign r_x1 = 10'd478;
//assign i_x0 = 10'd478;
//assign i_x1 = 10'd486;
//assign s_x0 = 10'd486;
//assign s_x1 = 10'd494;
assign t_xstart = 10'd448;
assign t_xend = 10'd454;
assign e_x0 = 10'd462;
assign e_x1 = 10'd470;
assign t2_x0 = 10'd478;
assign t2_x1 = 10'd486;
assign r_x0 = 10'd494;
assign r_x1 = 10'd502;
assign i_x0 = 10'd510;
assign i_x1 = 10'd518;
assign s_x0 = 10'd526;
assign s_x1 = 10'd534;

always_comb
begin
    // TITLE TETRIS: LETTER T
    if ((DrawX > t_xstart && DrawX <= t_xend) && (DrawY > title_ystart && DrawY <= title_yend))
        begin
            is_text = fdataT[7-font_char];
        end

    // TITLE TETRIS: LETTER E
    else if ((DrawX > e_x0 && DrawX <= e_x1) && (DrawY > title_ystart && DrawY <= title_yend))
        begin
            is_text = fdataE[7-font_char];
        end
    
    // TITLE TETRIS: LETTER T
    else if ((DrawX > t2_x0 && DrawX <= t2_x1) && (DrawY > title_ystart && DrawY <= title_yend))
        begin
            is_text = fdataT[7-font_char];
        end

    // TITLE TETRIS: LETTER R
    else if ((DrawX > r_x0 && DrawX <= r_x1) && (DrawY > title_ystart && DrawY <= title_yend))
        begin
            is_text = fdataR[7-font_char];
        end

    // TITLE TETRIS: LETTER I
    else if ((DrawX > i_x0 && DrawX <= i_x1) && (DrawY > title_ystart && DrawY <= title_yend))
        begin
            is_text = fdataI[7-font_char];
        end

    // TITLE TETRIS: LETTER S
    else if ((DrawX > s_x0 && DrawX <= s_x1) && (DrawY > title_ystart && DrawY <= title_yend))
        begin
            is_text = fdataS[7-font_char];
        end
    else 
        begin
            is_text = 10'b0;
        end
end
endmodule