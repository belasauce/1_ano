library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CounterUpDown4 is
	port(	clk, updown, reset: in std_logic;
			count : out std_logic_vector(3 downto 0));
end CounterUpDown4;

architecture Behavioral of CounterUpDown4 is
signal s_count : unsigned(3 downto 0);
begin
	process(clk, updown)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_count <= (others => '0');
			elsif(updown = '0') then
				s_count <= s_count - 1;
			else
				s_count <= s_count + 1;
			end if;
		end if;
	end process;
	count <= std_logic_vector(s_count);
end Behavioral;