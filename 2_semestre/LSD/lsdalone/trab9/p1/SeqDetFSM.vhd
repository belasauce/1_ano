library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetFSM is
	port(reset	: in  std_logic;
		  clk		: in  std_logic;
		  inbit	: in  std_logic;
		  outbit	: out std_logic);
end SeqDetFSM;

architecture MealyArch of SeqDetFSM is

	type TState is (ini, S1, S10, S100);
	signal s_currentState, s_nextState : TState;

begin
	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_currentState <= ini;
			else
				s_currentState <= s_nextState;
			end if;
		end if;
	end process;

	comb_proc : process(s_currentState,inbit)
	begin
	
		outbit <= '0';
		
		case (s_currentState) is
		when ini =>
			if (inbit = '1') then
				s_nextState <= S1;
			else
				s_nextState <= S1;
			end if;
		
		when s1 =>
			if (inbit = '0') then
				s_nextState <= S10;
			else
				s_nextState <= S1;
			end if;
		
		when s10 =>
			if (inbit = '0') then
				s_nextState <= S100;
			else
				s_nextState <= S1;
			end if;
		
		when s100 =>
			if (inbit = '1') then
				s_nextState <= S1;
				outbit <= '1';
			else
				s_nextState <= ini;
			end if;

		end case;

	end process;
				
end MealyArch;
