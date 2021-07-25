library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity display_selector is
	port(	texto 		: in 	std_logic_vector(2 downto 0);
			d7 			: in 	std_logic_vector(6 downto 0);
			d6 			: in 	std_logic_vector(6 downto 0);
			d2 			: in 	std_logic_vector(6 downto 0);
			d1 			: in 	std_logic_vector(6 downto 0);
			d0 			: in 	std_logic_vector(6 downto 0);
			bin7			: out std_logic_vector(6 downto 0);
			bin6			: out std_logic_vector(6 downto 0);
			bin5			: out std_logic_vector(6 downto 0);
			bin4			: out std_logic_vector(6 downto 0);
			bin3			: out std_logic_vector(6 downto 0);
			bin2			: out std_logic_vector(6 downto 0);
			bin1			: out std_logic_vector(6 downto 0);
			bin0			: out std_logic_vector(6 downto 0);
			in_enable 	: in 	std_logic);
end display_selector;

architecture v3 of display_selector is
begin
	process(texto)
	begin
	if(in_enable = '1') then
		if(texto = "000") then --start display
			bin7 <= "1000010";
			bin6 <= "1000001";
			bin5 <= "0000110";
			bin4 <= "0010010";
			bin3 <= "0010010";
			bin2 <= "0111111";
			bin1 <= "0101011";
			bin0 <= "0010010";
		elsif(texto = "001") then --grupo display
			bin7 <= "1000010";
			bin6 <= "0101111";
			bin5 <= "1000001";
			bin4 <= "0001100";
			bin3 <= "1000000";
			bin2 <= "0111111";
			bin1 <= "1000000";
			bin0 <= "1111001";
		elsif(texto = "010") then --hi display
			bin7 <= d7;
			bin6 <= d6;
			bin5 <= "0001001";
			bin4 <= "1111001";
			bin3 <= "1000000";
			bin2 <= d2;
			bin1 <= d1;
			bin0 <= d0;
		elsif(texto = "011") then --lo display
			bin7 <= d7;
			bin6 <= d6;
			bin5 <= "1000111";
			bin4 <= "1000000";
			bin3 <= "1000000";
			bin2 <= d2;
			bin1 <= d1;
			bin0 <= d0;
		elsif(texto = "100") then --== display
			bin7 <= d7;
			bin6 <= d6;
			bin5 <= "0110111";
			bin4 <= "0110111";
			bin3 <= "1000000";
			bin2 <= d2;
			bin1 <= d1;
			bin0 <= d0;
		elsif(texto = "101") then --cheater display
			bin7 <= "0111111";
			bin6 <= "0000011";
			bin5 <= "0001000";
			bin4 <= "0000111";
			bin3 <= "1000000";
			bin2 <= "0000111";
			bin1 <= "0001000";
			bin0 <= "0111111";
		else
			bin7 <= "0111111";
			bin6 <= "0111111";
			bin5 <= "0111111";
			bin4 <= "0111111";
			bin3 <= "0111111";
			bin2 <= "0111111";
			bin1 <= "0111111";
			bin0 <= "0111111";
		end if;
	else 
			bin7 <= "1111111";
			bin6 <= "1111111";
			bin5 <= "1111111";
			bin4 <= "1111111";
			bin3 <= "1111111";
			bin2 <= "1111111";
			bin1 <= "1111111";
			bin0 <= "1111111";
	end if;
	
	end process;
				
end v3;
