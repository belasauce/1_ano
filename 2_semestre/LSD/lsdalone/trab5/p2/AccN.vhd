library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity AccN is 
	generic( k : positive  := 8);
	port( clk : in std_logic;
			datain : in std_logic_vector(k-1 downto 0);
			reset : in std_Logic;
			enable : in std_logic;
			dataout: out std_logic_vector(k-1 downto 0));
end AccN;

architecture v1 of AccN is
signal regout : std_logic_vector(k-1 downto 0);
signal addout : std_logic_vector(k-1 downto 0);

begin
	t1: entity work.AdderN(Behavioral)
	generic map( N => k)
	port map(operand0 => datain,
				operand1 =>	regout,
				result => addout);
	
	t2: entity work.RegN(v1)
	generic map( N => k)
	port map(reset => reset,
				clk => clk,
				enable => enable,
				datain => addout,
				dataout => regout);
				
		dataout <= regout;
				
		

end v1;