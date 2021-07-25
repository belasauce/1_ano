library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ProjFinal_demo is
	port(CLOCK_50	: in  std_logic;
		  KEY			: in  std_logic_vector(3 downto 0);
		  SW			: in  std_logic_vector(0 downto 0);
		  LEDR		: out std_logic_vector(17 downto 0);
		  --LEDG		: out std_logic_vector(8 downto 0); --teste state
		  HEX7		: out std_logic_vector(6 downto 0);
		  HEX6		: out std_logic_vector(6 downto 0);
		  HEX5		: out std_logic_vector(6 downto 0);
		  HEX4		: out std_logic_vector(6 downto 0);
		  HEX3		: out std_logic_vector(6 downto 0);
		  HEX2		: out std_logic_vector(6 downto 0);
		  HEX1		: out std_logic_vector(6 downto 0);
		  HEX0		: out std_logic_vector(6 downto 0));
end ProjFinal_demo;

architecture Shell of ProjFinal_demo is

	signal s_activate					: std_logic;
	signal s_nattempts				: std_logic_vector(9 downto 0);
	signal s_attempts					: std_logic_vector(9 downto 0);
	signal s_done1,s_done2			: std_logic;
	signal s_dig2, s_dig1, s_dig0 : std_logic_vector(3 downto 0);
	signal s_dig7, s_dig6			: std_logic_vector(3 downto 0);
	signal s_d7, s_d6, s_d2, s_d1, s_d0: std_logic_vector(6 downto 0);
	signal s_texto						: std_logic_vector(2 downto 0);
	signal s_key3, s_key2, s_key1, s_key0 : std_logic;
	signal s_c1hz, s_c2hz, s_c4hz, s_c8hz : std_logic;
	signal s_SW0 : std_logic;
	signal s_enable : std_logic;
	signal rnd_ledr : std_logic_vector(17 downto 0);
	
begin
		process(CLOCK_50)
		begin
			if (rising_edge(CLOCK_50)) then
				s_SW0 <= SW(0);
			end if;
		end process;


	main_fsm : entity work.guess_number_sync(v1)
		port map(reset		=> s_SW0,
					clk		=> CLOCK_50,
					activate => s_activate,
					done1 => s_done1,
					done2 => s_done2,
					n_attempts => s_nattempts,
					attempts => s_attempts,
					texto => s_texto,
					keys(3)=> s_key3,
					keys(2)=> s_key2,
					keys(1)=> s_key1,
					keys(0)=> s_key0,
					c1hz => s_c1hz,
					c2hz => s_c2hz,
					c4hz => s_c4hz,
					c8hz => s_c8hz,
					enable => s_enable,
 					--ledg=>LEDG,
					rnd => rnd_ledr,
					ledr => LEDR);
					
	debounce3 : entity work.DebounceUnit(v6)
		generic map(kHzClkFreq		=> 50000,
						mSecMinInWidth	=> 100,
						inPolarity		=> '0',
						outPolarity		=> '1')
		port map(refClk => CLOCK_50,
					dirtyIn =>KEY(3),
					pulsedOut =>s_key3);
					
	debounce2 : entity work.DebounceUnit(v6)
		generic map(kHzClkFreq		=> 50000,
						mSecMinInWidth	=> 100,
						inPolarity		=> '0',
						outPolarity		=> '1')
		port map(refClk => CLOCK_50,
					dirtyIn =>KEY(2),
					pulsedOut =>s_key2);
					
	debounce1 : entity work.DebounceUnit(v6)
		generic map(kHzClkFreq		=> 50000,
						mSecMinInWidth	=> 100,
						inPolarity		=> '0',
						outPolarity		=> '1')
		port map(refClk => CLOCK_50,
					dirtyIn =>KEY(1),
					pulsedOut =>s_key1);
					
	debounce0 : entity work.DebounceUnit(v6)
		generic map(kHzClkFreq		=> 50000,
						mSecMinInWidth	=> 100,
						inPolarity		=> '0',
						outPolarity		=> '1')
		port map(refClk => CLOCK_50,
					dirtyIn =>KEY(0),
					pulsedOut =>s_key0);
					
					
	bcd_fsm_1 : entity work.bin_to_bcd_fsm(v2) --number attempts
		port map(clk		=> CLOCK_50,
					activate => s_activate,
					bin_input => s_nattempts,
					done => s_done1,
					digit1 =>s_dig7,
					digit0 =>s_dig6);
					
	bcd_fsm_2 : entity work.bin_to_bcd_fsm(v2) --number guessed
		port map(clk		=> CLOCK_50,
					activate => s_activate,
					bin_input =>s_attempts,
					done=> s_done2,
					digit2 =>s_dig2,
					digit1 =>s_dig1,
					digit0 =>s_dig0);
					
	display_fsm : entity work.display_selector(v3)
		port map(d7 => s_d7,
					d6 => s_d6,
					d2 => s_d2,
					d1 => s_d1,
					d0 => s_d0,
					texto =>s_texto,
					bin7 => HEX7,
					bin6 => HEX6,
					bin5 => HEX5,
					bin4 => HEX4,
					bin3 => HEX3,
					bin2 => HEX2,
					bin1 => HEX1,
					bin0 => HEX0,
					in_enable => s_enable);
					
	num_fsm : entity work.Bin7SegDecoder(v4)
		port map( d7 => s_dig7,
					 d6 => s_dig6,
					 d2 => s_dig2,
					 d1 => s_dig1,
					 d0 => s_dig0,
					 d7_out =>s_d7,
					 d6_out =>s_d6,
					 d2_out =>s_d2,
					 d1_out =>s_d1,
					 d0_out =>s_d0);
					 

					 
	freqdiv1 : 	entity work.FreqDiv_Demo(v5)
					generic map(k => 50000000)
					port map(clkIn => CLOCK_50,
								clkOut => s_c1Hz);
	
	freqdiv2 :	entity work.FreqDiv_Demo(v5)
					generic map(k => 25000000)
					port map(clkIn => CLOCK_50,
								clkOut => s_c2Hz);
						
	freqdiv3 : 	entity work.FreqDiv_Demo(v5)
					generic map(k => 12500000)
					port map(clkIn => CLOCK_50,
								clkOut => s_c4Hz);
	
	freqdiv4 : 	entity work.FreqDiv_Demo(v5)
					generic map(k => 6250000)
					port map(clkIn => CLOCK_50,
								clkOut => s_c8Hz);
								
	  rnd_gen : entity work.pseudo_random_generator(heavy)
		 generic map(	N_BITS => 18,
							SEED   => X"2021_0005_0024")
		 port map(	clock  => CLOCK_50,
						enable => s_c8Hz,
						rnd    => rnd_ledr);

end Shell;