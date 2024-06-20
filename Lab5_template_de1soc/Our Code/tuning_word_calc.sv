module tuning_word_calc(
    input wire [31:0] clk_freq,      // Clock frequency in Hz
    input wire [31:0] desired_freq,  // Desired frequency in Hz
    output wire [40:0] tuning_word
	 //output wire [31:0] test
);

reg [40:0] temp_tuning_word;

assign tuning_word = temp_tuning_word[31:0];
//assign test = (1 << 32);
always @(*) begin
    temp_tuning_word = (((desired_freq * (1 << 32))) / clk_freq) + 32'd1; // Adding 0.5 for rounding
end

endmodule