module fib_rng (input clk, reset,
		      output [2:0] data);


logic [2:0] data_in;


always_ff @ (posedge clk)
  begin
  if (reset) 
    data_in <= 3'hf;
  else
    data_in <= {data_in[1:0], !(data_in[2] ^ data_in[0])};
end

  assign data = (data_in == 3'b111) ? 3'b110 : data_in;
 
endmodule

//////////
//////////

//module ur_rng (input clk, reset,     
//				output [2:0] data);
//				
//
//logic [31:0] random;
//assign random = $urandom(); 
//assign data = random[2:0];
//
//endmodule

module vRng #(parameter seed = 16'h600d)
(
	input  Clk,
	input  Reset,
	output logic [2:0] Out
);


logic [15:0] state;

initial
begin
	state = seed;
end

logic in;
assign in = (((state[0]^state[2])^state[3])^state[5]);

always_comb
begin
	if(state[2:0] != 3'b000)
		//Out = state[2:0];
		Out = {state[0],state[7],state[15]};
	else
		Out = 3'b001;
end

//always_ff @(posedge Clk)
//begin
//  if (Reset) 
//	 state <= seed;
//  else
//	 state <= {in, state[15:1]};
//end
always_comb
begin
  if (Reset) 
	 state <= seed;
  else
	 state <= {in, state[15:1]};
end

endmodule