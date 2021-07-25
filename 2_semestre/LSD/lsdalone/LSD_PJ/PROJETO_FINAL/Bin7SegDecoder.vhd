library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Bin7SegDecoder is
	port(	d7					: in 	std_logic_vector(3 downto 0);
			d6 				: in 	std_logic_vector(3 downto 0);
			d2 				: in 	std_logic_vector(3 downto 0);
			d1 				: in 	std_logic_vector(3 downto 0);
			d0 				: in 	std_logic_vector(3 downto 0);
			d7_out 			: out	std_logic_vector(6 downto 0);
			d6_out 			: out	std_logic_vector(6 downto 0);
			d2_out 			: out	std_logic_vector(6 downto 0);
			d1_out 			: out	std_logic_vector(6 downto 0);
			d0_out 			: out	std_logic_vector(6 downto 0));
end Bin7SegDecoder;

architecture v4 of Bin7SegDecoder is
begin
		d7_out <= 	"1111001" when (d7 = "0001") else --1 --number of attempts
						"0100100" when (d7 = "0010") else --2
						"0110000" when (d7 = "0011") else --3
						"0011001" when (d7 = "0100") else --4
						"0010010" when (d7 = "0101") else --5
						"0000010" when (d7 = "0110") else --6
						"1111000" when (d7 = "0111") else --7
						"0000000" when (d7 = "1000") else --8
						"0010000" when (d7 = "1001") else --9
						"1000000"; --0
						
		d6_out <= 	"1111001" when (d6 = "0001") else --1
						"0100100" when (d6 = "0010") else --2
						"0110000" when (d6 = "0011") else --3
						"0011001" when (d6 = "0100") else --4
						"0010010" when (d6 = "0101") else --5
						"0000010" when (d6 = "0110") else --6
						"1111000" when (d6 = "0111") else --7
						"0000000" when (d6 = "1000") else --8
						"0010000" when (d6 = "1001") else --9
						"1000000"; --0
						
		d2_out <= 	"1111001" when (d2 = "0001") else --1 --number guessed
						"0100100" when (d2 = "0010") else --2
						"0110000" when (d2 = "0011") else --3
						"0011001" when (d2 = "0100") else --4
						"0010010" when (d2 = "0101") else --5
						"0000010" when (d2 = "0110") else --6
						"1111000" when (d2 = "0111") else --7
						"0000000" when (d2 = "1000") else --8
						"0010000" when (d2 = "1001") else --9
						"1000000"; --0
						
						
		d1_out <= 	"1111001" when (d1 = "0001") else --1
						"0100100" when (d1 = "0010") else --2
						"0110000" when (d1 = "0011") else --3
						"0011001" when (d1 = "0100") else --4
						"0010010" when (d1 = "0101") else --5
						"0000010" when (d1 = "0110") else --6
						"1111000" when (d1 = "0111") else --7
						"0000000" when (d1 = "1000") else --8
						"0010000" when (d1 = "1001") else --9
						"1000000"; --0
						
		d0_out <= 	"1111001" when (d0 = "0001") else --1
						"0100100" when (d0 = "0010") else --2
						"0110000" when (d0 = "0011") else --3
						"0011001" when (d0 = "0100") else --4
						"0010010" when (d0 = "0101") else --5
						"0000010" when (d0 = "0110") else --6
						"1111000" when (d0 = "0111") else --7
						"0000000" when (d0 = "1000") else --8
						"0010000" when (d0 = "1001") else --9
						"1000000"; --0
end v4;