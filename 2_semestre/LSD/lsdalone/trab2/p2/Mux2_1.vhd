library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_1 is
	port(	sel, datain0, datain1: in std_logic;
			dataout	: out std_logic);
end Mux2_1;

architecture Behaviour of Mux2_1 is
begin
	process(datain0,datain1,sel)
	begin
		if	(sel = '0') then
			dataout <= datain0;
		else 
			dataout <= datain1;
		end if;
	end process;
	
end Behaviour;