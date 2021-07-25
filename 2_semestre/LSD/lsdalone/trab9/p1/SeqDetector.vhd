library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetector is
	port(CLOCK_50 : in std_logic;
			SW : in std_logic_vector(1 downto 0);
			LEDR : out std_logic_vector(0 downto 0);
			LEDG : out std_logic_vector(0 downto 0));
end SeqDetector;

architecture MealyArch of SeqDetector is

signal clock : std_logic;
begin
	f1: entity work.clkDividerN(behavioral)
		generic map(divFactor => 250000000)
		port map(clkin => CLOCK_50,
					clkout => clock);
					
	f2: entity work.SeqDetFSM(MealyArch)
		port map(clk => clock,
					reset => SW(1),
					inbit => SW(0),
					outbit => LEDR(0));
					
	LEDG(0) <= clock;
	
end MealyArch;
