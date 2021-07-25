library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity PEnc4_2 is
		port(	decodedin : in std_logic_vector(3 downto 0);
				encodedout : out std_logic_vector(1 downto 0);
				validout : out std_logic);
end PEnc4_2;

architecture Behavioral of PEnc4_2 is
begin
	process(decodedin)
	begin
		if(decodedin(0) = '1') then
			encodedout <= "00";
		elsif(decodedin(1) = '1') then
			encodedout <= "01";
		elsif(decodedin(2) = '1') then
			encodedout <= "10";
		else
			encodedout <= "11";
		end if;	
	end process;
	validout <= '0' when (decodedin = "0000") else
					'1';
end Behavioral;