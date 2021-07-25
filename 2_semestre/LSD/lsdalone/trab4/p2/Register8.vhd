library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Register8 is
	port(	clk ,wrEn: in std_logic;
			datain : in std_logic_vector(7 downto 0);
			dataout : out std_logic_vector(7 downto 0));
end Register8;

architecture Behavioral of Register8 is
begin
	process(clk, wrEn, datain)	
	begin
		if (rising_edge(clk)) then
			if(wrEn = '1') then
				dataout <= datain;
			end if;
		end if;
	end process;
end Behavioral;