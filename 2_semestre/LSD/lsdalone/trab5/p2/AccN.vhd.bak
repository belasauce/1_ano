library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity RegN is 
	generic( N : positive  := 8);
	port( clk : in std_logic;
			datain : in std_logic_vector(N-1 downto 0);
			reset : in std_Logic;
			enable : in std_logic;
			dataout: out std_logic_vector(N-1 downto 0));
end RegN;

architecture v1 of RegN is
begin
	process (datain , reset ,enable)
	begin
		if(rising_edge(clk)) then
			if(reset = '1') then
				dataout <= (others => '0');
			elsif(enable = '1') then
				dataout <= datain;
			end if;
		end if;
	end process;
end v1;