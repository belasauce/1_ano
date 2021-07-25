library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ROM_16_8 is
	port(	address	: in	std_logic_vector(3 downto 0); -- 16 posições => 4 bits de endereço
			dataOut	: out std_logic_vector(7 downto 0)); -- 8 bits 
end ROM_16_8;

architecture Behav of ROM_16_8 is

subtype DataWord is std_logic_vector(7 downto 0);
type TROM is array (0 to 15) of DataWord;
														 
constant ROMcontent : TROM :=(x"01",x"02",x"04",x"08",
									   x"03",x"06",x"0C",x"18",
									   x"07",x"0E",x"1C",x"38",
									   x"0F",x"1E",x"3C",x"78");

begin

	dataOut<=ROMcontent(to_integer(unsigned(address)));

end Behav;
