library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity FreqDiv_Demo is
	generic(K : positive := 6);
	port(	clkIn : in std_logic;
			clkOut : out std_logic);
end FreqDiv_Demo;

architecture v5 of FreqDiv_Demo is

		signal s_counter    :    natural;
		constant halfWay    :    natural := K/2;
		
	begin
		process(clkIn)
		begin	
				if(rising_edge(clkIn)) then
					if(s_counter = halfWay) then
							clkOut <= '1';
							s_counter <= s_counter + 1;
					elsif(s_counter = k) then
							clkOut <= '0';
							s_counter <= 0;
					else 
							s_counter <= s_counter + 1;
					end if;
				end if;
		end process;

end v5;		
					