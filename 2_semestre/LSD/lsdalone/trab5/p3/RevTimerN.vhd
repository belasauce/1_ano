library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity RevTimerN is
	generic(N : positive := 5);
	port(	start : in std_logic;
			reset : in std_logic;
			enable : in std_logic;
			clk : in std_logic;
			timerout : out std_logic);
end RevTimerN;

architecture v1 of RevTimerN is 
signal count: integer := 0;
begin
	assert (N >= 2);
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				timerOut <= '0';
				count <= 0;
			elsif (enable = '1') then
				if (count = 0) then
					if (start = '1') then
						count <= count + 1;
						timerOut <= '0';
					end if;
				else
					if (count = (N - 1)) then
						timerOut <= '0';
						count <= 0;
					else
						timerOut <= '1';
						count <= count + 1;
					end if;
				end if;
			end if;
		end if;
end process;
end v1;