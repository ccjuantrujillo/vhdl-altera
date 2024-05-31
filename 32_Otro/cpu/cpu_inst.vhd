	component cpu is
		port (
			clk_clk : in std_logic := 'X'  -- clk
		);
	end component cpu;

	u0 : component cpu
		port map (
			clk_clk => CONNECTED_TO_clk_clk  -- clk.clk
		);

