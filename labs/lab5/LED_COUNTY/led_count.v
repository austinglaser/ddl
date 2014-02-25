module led_count
(input clock, 
output [9:0]leds,
input reset_button,
input button);

reg [31:0]i;
wire clean;
wire reset;
reg clean_state;
reg [9:0]leds_hold;
initial
begin
clean_state = 0;
leds_hold = 10'b0000000000;
end

always @(posedge clock)
begin
	if(reset == 1'b0) leds_hold = 10'b0000000000;
	else
	begin
	if(clean != clean_state)
		begin
		clean_state <= clean;
		if(clean == 1'b0) leds_hold <= leds_hold + 1;
		end
	end
end

assign leds = leds_hold;

debounce button_noise(clock, button, clean);
debounce reset_noise(clock, reset_button, reset);

endmodule

module debounce 
(input clock,
input in,
output reg debounced);



reg [31:0]i;
reg [7:0]shift;

initial
begin
i = 0;
end  

always@(posedge clock)
begin
if(i >= 50000)
	begin
		shift = {shift[6:0],in};
		if(shift == 8'b11111111) debounced <= 1;
		if(shift == 8'b00000000) debounced <= 0;
		i <= 0;
	end
	else i <= i + 1;

end

endmodule