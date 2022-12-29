module shapeROM(input Reset, frame_clk, 
                input [2:0] shape_index, //rng, 
                input [1:0] rotation_index, 
                output [1:0] x0, x1, x2, x3, 
                output [1:0] y0, y1, y2, y3);

always_comb
    begin
        unique case ({shape_index, rotation_index})
            // I block
            {3'd0, 2'd0}, {3'd0, 2'd2}: // horizontal 
                begin
                    x0 = 2'd0;
                    y0 = 2'd0;
                    x1 = 2'd1;
                    y1 = 2'd0;
                    x2 = 2'd2;
                    y2 = 2'd0;
                    x3 = 2'd3;
                    y3 = 2'd0;
                end
            {3'd0, 2'd1}, {3'd0, 2'd3}: // vertical
                begin
                    x0 = 2'd0;
                    y0 = 2'd0;
                    x1 = 2'd0;
                    y1 = 2'd1;
                    x2 = 2'd0;
                    y2 = 2'd2;
                    x3 = 2'd0;
                    y3 = 2'd3;
                end

        // J block 
            {3'd1, 2'd0}: // no rotate
                begin
                    x0 = 2'd0;
                    y0 = 2'd0;
                    x1 = 2'd0;
                    y1 = 2'd1;
                    x2 = 2'd1;
                    y2 = 2'd1;
                    x3 = 2'd2;
                    y3 = 2'd1;
                end
            {3'd1, 2'd1}: // 1 rotate
                begin
                    x0 = 2'd0;
                    y0 = 2'd0;
                    x1 = 2'd0;
                    y1 = 2'd1;
                    x2 = 2'd0;
                    y2 = 2'd2;
                    x3 = 2'd1;
                    y3 = 2'd0;
                end
            {3'd1, 2'd2}: // 2 rotate
                begin
                    x0 = 2'd0;
                    y0 = 2'd0;
                    x1 = 2'd1;
                    y1 = 2'd0;
                    x2 = 2'd2;
                    y2 = 2'd0;
                    x3 = 2'd2;
                    y3 = 2'd1;
                end
            {3'd1, 2'd3}: // 3 rotate
                begin
                    x0 = 2'd0;
                    y0 = 2'd2;
                    x1 = 2'd1;
                    y1 = 2'd0;
                    x2 = 2'd1;
                    y2 = 2'd1;
                    x3 = 2'd1;
                    y3 = 2'd2;
                end

        // L block
            {3'd2, 2'd0}: // no rotate
                begin
                    x0 = 2'd0;
                    y0 = 2'd1;
                    x1 = 2'd1;
                    y1 = 2'd1;
                    x2 = 2'd2;
                    y2 = 2'd0;
                    x3 = 2'd2;
                    y3 = 2'd1;
                end
            {3'd2, 2'd1}: // 1 rotate
                begin
                    x0 = 2'd0;
                    y0 = 2'd0;
                    x1 = 2'd0;
                    y1 = 2'd1;
                    x2 = 2'd0;
                    y2 = 2'd2;
                    x3 = 2'd1;
                    y3 = 2'd2;
                end
            {3'd2, 2'd2}: // 2 rotate
                begin
                    x0 = 2'd0;
                    y0 = 2'd0;
                    x1 = 2'd0;
                    y1 = 2'd1;
                    x2 = 2'd1;
                    y2 = 2'd0;
                    x3 = 2'd2;
                    y3 = 2'd0;
                end
            {3'd2, 2'd3}: // 3 rotate
                begin
                    x0 = 2'd0;
                    y0 = 2'd0;
                    x1 = 2'd1;
                    y1 = 2'd0;
                    x2 = 2'd1;
                    y2 = 2'd1;
                    x3 = 2'd1;
                    y3 = 2'd2;
                end

        // Z block
            {3'd3, 2'd0}, {3'd3, 2'd2}: // no rotate
                begin
                    x0 = 2'd0;
                    y0 = 2'd0; 
                    x1 = 2'd1;
                    y1 = 2'd0;
                    x2 = 2'd1;
                    y2 = 2'd1;
                    x3 = 2'd2;
                    y3 = 2'd1;
                end
            {3'd3, 2'd1}, {3'd3, 2'd3}: // no rotate
                begin
                    x0 = 2'd0;
                    y0 = 2'd1;
                    x1 = 2'd0;
                    y1 = 2'd2;
                    x2 = 2'd1;
                    y2 = 2'd0;
                    x3 = 2'd1;
                    y3 = 2'd1;
                end

        // S block
            {3'd4, 2'd0}, {3'd4, 2'd2}: // no rotate
                begin
                    x0 = 2'd0;
                    y0 = 2'd1;
                    x1 = 2'd1;
                    y1 = 2'd0;
                    x2 = 2'd1;
                    y2 = 2'd1;
                    x3 = 2'd2;
                    y3 = 2'd0;
                end
            {3'd4, 2'd1}, {3'd4, 2'd3}: // no rotate
                begin
                    x0 = 2'd0;
                    y0 = 2'd0;
                    x1 = 2'd0;
                    y1 = 2'd1;
                    x2 = 2'd1;
                    y2 = 2'd1;
                    x3 = 2'd1;
                    y3 = 2'd2;
                end

        // T block
            {3'd5, 2'd0}: // no rotate
                begin
                    x0 = 2'd0;
                    y0 = 2'd1;
                    x1 = 2'd1;
                    y1 = 2'd0;
                    x2 = 2'd1;
                    y2 = 2'd1;
                    x3 = 2'd2;
                    y3 = 2'd1;
                end
            {3'd5, 2'd1}: // 1 rotate
                begin
                    x0 = 2'd0;
                    y0 = 2'd0;
                    x1 = 2'd0;
                    y1 = 2'd1;
                    x2 = 2'd0;
                    y2 = 2'd2;
                    x3 = 2'd1;
                    y3 = 2'd1;
                end
            {3'd5, 2'd2}: // 2 rotate
                begin
                    x0 = 2'd0;
                    y0 = 2'd0;
                    x1 = 2'd1;
                    y1 = 2'd0;
                    x2 = 2'd1;
                    y2 = 2'd1;
                    x3 = 2'd2;
                    y3 = 2'd0;
                end
            {3'd5, 2'd3}: // 3 rotate
                begin
                    x0 = 2'd0;
                    y0 = 2'd1;
                    x1 = 2'd1;
                    y1 = 2'd0;
                    x2 = 2'd1;
                    y2 = 2'd1;
                    x3 = 2'd1;
                    y3 = 2'd2;
                end

        // O block
            {3'd6, 2'd0}, {3'd6, 2'd1}, {3'd6, 2'd2}, {3'd6, 2'd3}: // all rotations
                begin
                    x0 = 2'd0;
                    y0 = 2'd0;
                    x1 = 2'd0;
                    y1 = 2'd1;
                    x2 = 2'd1;
                    y2 = 2'd0;
                    x3 = 2'd1;
                    y3 = 2'd1;
                end
    endcase
end 
endmodule