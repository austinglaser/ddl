module fir(
  clock,
  reset,
  calculate,
  data_in,
  data_out,
  data_good
);
  //parameters
	parameter width =  10;
	parameter length = 465;
	parameter n_coeffs = 465;
	parameter ones = 0;
  parameter n = 5;
	
	// define arguments
	input clock;
  input reset;
  input calculate;
	input      [width-1:0] data_in;
	output reg [width-1:0] data_out;
  output     data_good;

  reg shift_clock;
  reg run;
  reg [7:0] cycle;
	
	// two-dimensional coefficient registers (initialized in generate block)
	reg [16:0] coeff [n_coeffs-1:0];
	
	// internal signals
	wire [width-1:0] 			  data_value  [length-1:0];
	wire [width-1:0]	      mux_data    [(length/n)-1:0];
  wire [16:0]             mux_coeff   [(length/n)-1:0];
	wire [(width + 17)-1:0]	mult_value  [(length/n)-1:0];
	wire [(width + 17)-1:0]	sum_value   [(length/n)-1:0];

  assign data_good = ~run;

  reg [(width + 17)-1:0] accumulator;

  always @(negedge reset or posedge calculate or posedge shift_clock) begin
    if (!reset)         run <= 0;
    else if (calculate) run <= 1;
    else                run <= 0;
  end
	
  always @(posedge clock or negedge reset) begin
    if (reset == 0) begin
      cycle <= 0;
      accumulator <= 0;
      shift_clock <= 0;
    end
    else if (cycle > n - 1) begin
      data_out <= accumulator >> 15;

      cycle <= 0;
      shift_clock <= 1;
      accumulator <= 0;
    end
    else if (run) begin
      if (cycle == 0)    shift_clock = 0;
      cycle <= cycle + 1;

      accumulator <= accumulator + sum_value[(length/n)-1];
    end
  end

  // define shift register of correct length. Note that this introduces
  // one extra cycle of delay at entry
	shift_reg #(width, length) data_shift(shift_clock, reset, data_in, data_value);

  // generate the entire filter
	genvar i;
	generate
		for (i = 0; i < length; i = i+1) begin:coeff_gen
      // calculate appropriate coefficient (note reversed order in parameter)
      coeff_calc #((n_coeffs-1) - i, ones) ARRAY_CELL(coeff[i]);
    end
  endgenerate

  generate
    for (i = 0; i < length/n; i = i + 1) begin:fir_gen
      multiplex #(width, n, 3) DATA_MUX(cycle, data_value[((i + 1)*n - 1):(i * n)], mux_data[i]);

      multiplex #(17, n, 3)    COEFF_MUX(cycle, coeff[((i + 1)*n - 1):(i * n)], mux_coeff[i]);

      assign mult_value[i] = mux_data[i] * mux_coeff[i];

      if (i == 0) assign sum_value[i] = mult_value[i];
      else        assign sum_value[i] = sum_value[i-1] + mult_value[i];
		end
	endgenerate

  initial begin
    coeff[0] =   17'd1000;// This coefficient should be multiplied with the oldest input value
    coeff[1] =   17'd1000;
    coeff[2] =   17'd1000;
    coeff[3] =   17'd1000;
    coeff[4] =   17'd1000;
    coeff[5] =   17'd1000;
    coeff[6] =   17'd1000;
    coeff[7] =   17'd1000;
    coeff[8] =   17'd1000;
    coeff[9] =   17'd1000;
    coeff[10] =  17'd1000;
    coeff[11] =  17'd1000;
    coeff[12] =  17'd1000;
    coeff[13] =  17'd1000;
    coeff[14] =  17'd1000;
    coeff[15] =  17'd1000;
    coeff[16] =  17'd1000;
    coeff[17] =  17'd1000;
    coeff[18] =  17'd1000;
    coeff[19] =  17'd1000;
    coeff[20] =  17'd1000;
    coeff[21] =  17'd1000;
    coeff[22] =  17'd1000;
    coeff[23] =  17'd1000;
    coeff[24] =  17'd1000;
    coeff[25] =  17'd1000;
    coeff[26] =  17'd1000;
    coeff[27] =  17'd1000;
    coeff[28] =  17'd1000;
    coeff[29] =  17'd1000;
    coeff[30] =  17'd1000;
    coeff[31] =  17'd1000;
    coeff[32] =  17'd1000;
    coeff[33] =  17'd1000;
    coeff[34] =  17'd1000;
    coeff[35] =  17'd1000;
    coeff[36] =  17'd1000;
    coeff[37] =  17'd1000;
    coeff[38] =  17'd1000;
    coeff[39] =  17'd1000;
    coeff[40] =  17'd1000;
    coeff[41] =  17'd1000;
    coeff[42] =  17'd1000;
    coeff[43] =  17'd1000;
    coeff[44] =  17'd1000;
    coeff[45] =  17'd1000;
    coeff[46] =  17'd1000;
    coeff[47] =  17'd1000;
    coeff[48] =  17'd1000;
    coeff[49] =  17'd1000;
    coeff[50] =  17'd1000;
    coeff[51] =  17'd1000;
    coeff[52] =  17'd1000;
    coeff[53] =  17'd1000;
    coeff[54] =  17'd1000;
    coeff[55] =  17'd1000;
    coeff[56] =  17'd1000;
    coeff[57] =  17'd1000;
    coeff[58] =  17'd1000;
    coeff[59] =  17'd1000;
    coeff[60] =  17'd1000;
    coeff[61] =  17'd1000;
    coeff[62] =  17'd1000;
    coeff[63] =  17'd1000;
    coeff[64] =  17'd1000;
    coeff[65] =  17'd1000;
    coeff[66] =  17'd1000;
    coeff[67] =  17'd1000;
    coeff[68] =  17'd1000;
    coeff[69] =  17'd1000;
    coeff[70] =  17'd1000;
    coeff[71] =  17'd1000;
    coeff[72] =  17'd1000;
    coeff[73] =  17'd1000;
    coeff[74] =  17'd1000;
    coeff[75] =  17'd1000;
    coeff[76] =  17'd1000;
    coeff[77] =  17'd1000;
    coeff[78] =  17'd1000;
    coeff[79] =  17'd1000;
    coeff[80] =  17'd1000;
    coeff[81] =  17'd1000;
    coeff[82] =  17'd1000;
    coeff[83] =  17'd1000;
    coeff[84] =  17'd1000;
    coeff[85] =  17'd1000;
    coeff[86] =  17'd1000;
    coeff[87] =  17'd1000;
    coeff[88] =  17'd1000;
    coeff[89] =  17'd1000;
    coeff[90] =  17'd1000;
    coeff[91] =  17'd1000;
    coeff[92] =  17'd1000;
    coeff[93] =  17'd1000;
    coeff[94] =  17'd1000;
    coeff[95] =  17'd1000;
    coeff[96] =  17'd1000;
    coeff[97] =  17'd1000;
    coeff[98] =  17'd1000;
    coeff[99] =  17'd1000;
    coeff[100] = 17'd1000;
    coeff[101] = 17'd1000;
    coeff[102] = 17'd1000;
    coeff[103] = 17'd1000;
    coeff[104] = 17'd1000;
    coeff[105] = 17'd1000;
    coeff[106] = 17'd1000;
    coeff[107] = 17'd1000;
    coeff[108] = 17'd1000;
    coeff[109] = 17'd1000;
    coeff[110] = 17'd1000;
    coeff[111] = 17'd1000;
    coeff[112] = 17'd1000;
    coeff[113] = 17'd1000;
    coeff[114] = 17'd1000;
    coeff[115] = 17'd1000;
    coeff[116] = 17'd1000;
    coeff[117] = 17'd1000;
    coeff[118] = 17'd1000;
    coeff[119] = 17'd1000;
    coeff[120] = 17'd1000;
    coeff[121] = 17'd1000;
    coeff[122] = 17'd1000;
    coeff[123] = 17'd1000;
    coeff[124] = 17'd1000;
    coeff[125] = 17'd1000;
    coeff[126] = 17'd1000;
    coeff[127] = 17'd1000;
    coeff[128] = 17'd1000;
    coeff[129] = 17'd1000;
    coeff[130] = 17'd1000;
    coeff[131] = 17'd1000;
    coeff[132] = 17'd1000;
    coeff[133] = 17'd1000;
    coeff[134] = 17'd1000;
    coeff[135] = 17'd1000;
    coeff[136] = 17'd1000;
    coeff[137] = 17'd1000;
    coeff[138] = 17'd1000;
    coeff[139] = 17'd1000;
    coeff[140] = 17'd1000;
    coeff[141] = 17'd1000;
    coeff[142] = 17'd1000;
    coeff[143] = 17'd1000;
    coeff[144] = 17'd1000;
    coeff[145] = 17'd1000;
    coeff[146] = 17'd1000;
    coeff[147] = 17'd1000;
    coeff[148] = 17'd1000;
    coeff[149] = 17'd1000;
    coeff[150] = 17'd1000;
    coeff[151] = 17'd1000;
    coeff[152] = 17'd1000;
    coeff[153] = 17'd1000;
    coeff[154] = 17'd1000;
    coeff[155] = 17'd1000;
    coeff[156] = 17'd1000;
    coeff[157] = 17'd1000;
    coeff[158] = 17'd1000;
    coeff[159] = 17'd1000;
    coeff[160] = 17'd1000;
    coeff[161] = 17'd1000;
    coeff[162] = 17'd1000;
    coeff[163] = 17'd1000;
    coeff[164] = 17'd1000;
    coeff[165] = 17'd1000;
    coeff[166] = 17'd1000;
    coeff[167] = 17'd1000;
    coeff[168] = 17'd1000;
    coeff[169] = 17'd1000;
    coeff[170] = 17'd1000;
    coeff[171] = 17'd1000;
    coeff[172] = 17'd1000;
    coeff[173] = 17'd1000;
    coeff[174] = 17'd1000;
    coeff[175] = 17'd1000;
    coeff[176] = 17'd1000;
    coeff[177] = 17'd1000;
    coeff[178] = 17'd1000;
    coeff[179] = 17'd1000;
    coeff[180] = 17'd1000;
    coeff[181] = 17'd1000;
    coeff[182] = 17'd1000;
    coeff[183] = 17'd1000;
    coeff[184] = 17'd1000;
    coeff[185] = 17'd1000;
    coeff[186] = 17'd1000;
    coeff[187] = 17'd1000;
    coeff[188] = 17'd1000;
    coeff[189] = 17'd1000;
    coeff[190] = 17'd1000;
    coeff[191] = 17'd1000;
    coeff[192] = 17'd1000;
    coeff[193] = 17'd1000;
    coeff[194] = 17'd1000;
    coeff[195] = 17'd1000;
    coeff[196] = 17'd1000;
    coeff[197] = 17'd1000;
    coeff[198] = 17'd1000;
    coeff[199] = 17'd1000;
    coeff[200] = 17'd1000;
    coeff[201] = 17'd1000;
    coeff[202] = 17'd1000;
    coeff[203] = 17'd1000;
    coeff[204] = 17'd1000;
    coeff[205] = 17'd1000;
    coeff[206] = 17'd1000;
    coeff[207] = 17'd1000;
    coeff[208] = 17'd1000;
    coeff[209] = 17'd1000;
    coeff[210] = 17'd1000;
    coeff[211] = 17'd1000;
    coeff[212] = 17'd1000;
    coeff[213] = 17'd1000;
    coeff[214] = 17'd1000;
    coeff[215] = 17'd1000;
    coeff[216] = 17'd1000;
    coeff[217] = 17'd1000;
    coeff[218] = 17'd1000;
    coeff[219] = 17'd1000;
    coeff[220] = 17'd1000;
    coeff[221] = 17'd1000;
    coeff[222] = 17'd1000;
    coeff[223] = 17'd1000;
    coeff[224] = 17'd1000;
    coeff[225] = 17'd1000;
    coeff[226] = 17'd1000;
    coeff[227] = 17'd1000;
    coeff[228] = 17'd1000;
    coeff[229] = 17'd1000;
    coeff[230] = 17'd1000;
    coeff[231] = 17'd1000;
    coeff[232] = 17'd1000;
    coeff[233] = 17'd1000;
    coeff[234] = 17'd1000;
    coeff[235] = 17'd1000;
    coeff[236] = 17'd1000;
    coeff[237] = 17'd1000;
    coeff[238] = 17'd1000;
    coeff[239] = 17'd1000;
    coeff[240] = 17'd1000;
    coeff[241] = 17'd1000;
    coeff[242] = 17'd1000;
    coeff[243] = 17'd1000;
    coeff[244] = 17'd1000;
    coeff[245] = 17'd1000;
    coeff[246] = 17'd1000;
    coeff[247] = 17'd1000;
    coeff[248] = 17'd1000;
    coeff[249] = 17'd1000;
    coeff[250] = 17'd1000;
    coeff[251] = 17'd1000;
    coeff[252] = 17'd1000;
    coeff[253] = 17'd1000;
    coeff[254] = 17'd1000;
    coeff[255] = 17'd1000;
    coeff[256] = 17'd1000;
    coeff[257] = 17'd1000;
    coeff[258] = 17'd1000;
    coeff[259] = 17'd1000;
    coeff[260] = 17'd1000;
    coeff[261] = 17'd1000;
    coeff[262] = 17'd1000;
    coeff[263] = 17'd1000;
    coeff[264] = 17'd1000;
    coeff[265] = 17'd1000;
    coeff[266] = 17'd1000;
    coeff[267] = 17'd1000;
    coeff[268] = 17'd1000;
    coeff[269] = 17'd1000;
    coeff[270] = 17'd1000;
    coeff[271] = 17'd1000;
    coeff[272] = 17'd1000;
    coeff[273] = 17'd1000;
    coeff[274] = 17'd1000;
    coeff[275] = 17'd1000;
    coeff[276] = 17'd1000;
    coeff[277] = 17'd1000;
    coeff[278] = 17'd1000;
    coeff[279] = 17'd1000;
    coeff[280] = 17'd1000;
    coeff[281] = 17'd1000;
    coeff[282] = 17'd1000;
    coeff[283] = 17'd1000;
    coeff[284] = 17'd1000;
    coeff[285] = 17'd1000;
    coeff[286] = 17'd1000;
    coeff[287] = 17'd1000;
    coeff[288] = 17'd1000;
    coeff[289] = 17'd1000;
    coeff[290] = 17'd1000;
    coeff[291] = 17'd1000;
    coeff[292] = 17'd1000;
    coeff[293] = 17'd1000;
    coeff[294] = 17'd1000;
    coeff[295] = 17'd1000;
    coeff[296] = 17'd1000;
    coeff[297] = 17'd1000;
    coeff[298] = 17'd1000;
    coeff[299] = 17'd1000;
    coeff[300] = 17'd1000;
    coeff[301] = 17'd1000;
    coeff[302] = 17'd1000;
    coeff[303] = 17'd1000;
    coeff[304] = 17'd1000;
    coeff[305] = 17'd1000;
    coeff[306] = 17'd1000;
    coeff[307] = 17'd1000;
    coeff[308] = 17'd1000;
    coeff[309] = 17'd1000;
    coeff[310] = 17'd1000;
    coeff[311] = 17'd1000;
    coeff[312] = 17'd1000;
    coeff[313] = 17'd1000;
    coeff[314] = 17'd1000;
    coeff[315] = 17'd1000;
    coeff[316] = 17'd1000;
    coeff[317] = 17'd1000;
    coeff[318] = 17'd1000;
    coeff[319] = 17'd1000;
    coeff[320] = 17'd1000;
    coeff[321] = 17'd1000;
    coeff[322] = 17'd1000;
    coeff[323] = 17'd1000;
    coeff[324] = 17'd1000;
    coeff[325] = 17'd1000;
    coeff[326] = 17'd1000;
    coeff[327] = 17'd1000;
    coeff[328] = 17'd1000;
    coeff[329] = 17'd1000;
    coeff[330] = 17'd1000;
    coeff[331] = 17'd1000;
    coeff[332] = 17'd1000;
    coeff[333] = 17'd1000;
    coeff[334] = 17'd1000;
    coeff[335] = 17'd1000;
    coeff[336] = 17'd1000;
    coeff[337] = 17'd1000;
    coeff[338] = 17'd1000;
    coeff[339] = 17'd1000;
    coeff[340] = 17'd1000;
    coeff[341] = 17'd1000;
    coeff[342] = 17'd1000;
    coeff[343] = 17'd1000;
    coeff[344] = 17'd1000;
    coeff[345] = 17'd1000;
    coeff[346] = 17'd1000;
    coeff[347] = 17'd1000;
    coeff[348] = 17'd1000;
    coeff[349] = 17'd1000;
    coeff[350] = 17'd1000;
    coeff[351] = 17'd1000;
    coeff[352] = 17'd1000;
    coeff[353] = 17'd1000;
    coeff[354] = 17'd1000;
    coeff[355] = 17'd1000;
    coeff[356] = 17'd1000;
    coeff[357] = 17'd1000;
    coeff[358] = 17'd1000;
    coeff[359] = 17'd1000;
    coeff[360] = 17'd1000;
    coeff[361] = 17'd1000;
    coeff[362] = 17'd1000;
    coeff[363] = 17'd1000;
    coeff[364] = 17'd1000;
    coeff[365] = 17'd1000;
    coeff[366] = 17'd1000;
    coeff[367] = 17'd1000;
    coeff[368] = 17'd1000;
    coeff[369] = 17'd1000;
    coeff[370] = 17'd1000;
    coeff[371] = 17'd1000;
    coeff[372] = 17'd1000;
    coeff[373] = 17'd1000;
    coeff[374] = 17'd1000;
    coeff[375] = 17'd1000;
    coeff[376] = 17'd1000;
    coeff[377] = 17'd1000;
    coeff[378] = 17'd1000;
    coeff[379] = 17'd1000;
    coeff[380] = 17'd1000;
    coeff[381] = 17'd1000;
    coeff[382] = 17'd1000;
    coeff[383] = 17'd1000;
    coeff[384] = 17'd1000;
    coeff[385] = 17'd1000;
    coeff[386] = 17'd1000;
    coeff[387] = 17'd1000;
    coeff[388] = 17'd1000;
    coeff[389] = 17'd1000;
    coeff[390] = 17'd1000;
    coeff[391] = 17'd1000;
    coeff[392] = 17'd1000;
    coeff[393] = 17'd1000;
    coeff[394] = 17'd1000;
    coeff[395] = 17'd1000;
    coeff[396] = 17'd1000;
    coeff[397] = 17'd1000;
    coeff[398] = 17'd1000;
    coeff[399] = 17'd1000;
    coeff[400] = 17'd1000;
    coeff[401] = 17'd1000;
    coeff[402] = 17'd1000;
    coeff[403] = 17'd1000;
    coeff[404] = 17'd1000;
    coeff[405] = 17'd1000;
    coeff[406] = 17'd1000;
    coeff[407] = 17'd1000;
    coeff[408] = 17'd1000;
    coeff[409] = 17'd1000;
    coeff[410] = 17'd1000;
    coeff[411] = 17'd1000;
    coeff[412] = 17'd1000;
    coeff[413] = 17'd1000;
    coeff[414] = 17'd1000;
    coeff[415] = 17'd1000;
    coeff[416] = 17'd1000;
    coeff[417] = 17'd1000;
    coeff[418] = 17'd1000;
    coeff[419] = 17'd1000;
    coeff[420] = 17'd1000;
    coeff[421] = 17'd1000;
    coeff[422] = 17'd1000;
    coeff[423] = 17'd1000;
    coeff[424] = 17'd1000;
    coeff[425] = 17'd1000;
    coeff[426] = 17'd1000;
    coeff[427] = 17'd1000;
    coeff[428] = 17'd1000;
    coeff[429] = 17'd1000;
    coeff[430] = 17'd1000;
    coeff[431] = 17'd1000;
    coeff[432] = 17'd1000;
    coeff[433] = 17'd1000;
    coeff[434] = 17'd1000;
    coeff[435] = 17'd1000;
    coeff[436] = 17'd1000;
    coeff[437] = 17'd1000;
    coeff[438] = 17'd1000;
    coeff[439] = 17'd1000;
    coeff[440] = 17'd1000;
    coeff[441] = 17'd1000;
    coeff[442] = 17'd1000;
    coeff[443] = 17'd1000;
    coeff[444] = 17'd1000;
    coeff[445] = 17'd1000;
    coeff[446] = 17'd1000;
    coeff[447] = 17'd1000;
    coeff[448] = 17'd1000;
    coeff[449] = 17'd1000;
    coeff[450] = 17'd1000;
    coeff[451] = 17'd1000;
    coeff[452] = 17'd1000;
    coeff[453] = 17'd1000;
    coeff[454] = 17'd1000;
    coeff[455] = 17'd1000;
    coeff[456] = 17'd1000;
    coeff[457] = 17'd1000;
    coeff[458] = 17'd1000;
    coeff[459] = 17'd1000;
    coeff[460] = 17'd1000;
    coeff[461] = 17'd1000;
    coeff[462] = 17'd1000;
    coeff[463] = 17'd1000;
    coeff[464] = 17'd1000;  // This coefficient should be multiplied with the most recent data input
  end 

endmodule
