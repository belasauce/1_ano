library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux4_1 is
	port(	sel: in std_logic_vector(1 downto 0);
			datain: in std_logic_vector(3 downto 0);
			dataout	: out std_logic);
end Mux4_1;

architecture Behaviour of Mux4_1 is
begin
	process(datain,sel)
	begin
		if	(sel = "00") then
			dataout <= datain(0);
		elsif (sel = "01") then 
			dataout <= datain(1);
		elsif (sel = "10") then 
			dataout <= datain(2);
		else 
			dataout <= datain(3);
		end if;
	end process;
	
end Behaviour;