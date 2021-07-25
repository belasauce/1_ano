library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FullAdder is 
	port(	a , b , cin : in  std_logic;
			cout , s 	: out std_logic);
end FullAdder;

architecture behavioral of FullAdder is 
begin 

	s <= a xor b xor cin;
	cout <= (a and b) or (cin and( a or b));

end behavioral;