library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DrinksFSM is
	port(reset	: in  std_logic;
		  clk		: in  std_logic;
		  c	: in  std_logic;
		  v	: in  std_logic;
		  drink	: out std_logic);
end DrinksFSM;

architecture Behavioral of DrinksFSM is

	type TState is (ST0, ST1, ST2, ST3, ST4, ST5);
	signal s_currentState, s_nextState : TState;

begin
	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_currentState <= ST0;
			else
				s_currentState <= s_nextState;
			end if;
		end if;
	end process;

	comb_proc : process(s_currentState, c, v)
	begin
		case (s_currentState) is
		when ST0 =>
			drink <= '0';
			if (v = '1') then
				s_nextState <= ST1;
			elsif(c = '1') then
				s_nextState <= ST3;
			else
				s_nextState <= ST0;
			end if;

		when ST1 =>
			drink <= '0';
			if (v = '1') then
				s_nextState <= ST2;
			elsif(c = '1') then
				s_nextState <= ST4;
			else
				s_nextState <= ST1;
			end if;

		when ST2 =>
			drink <= '0';
			if (v = '1') then
				s_nextState <= ST3;
			elsif(c = '1') then
				s_nextState <= ST5;
			else
				s_nextState <= ST2;
			end if;

		when ST3 =>
			drink <= '0';
			if (v = '1') then
				s_nextState <= ST4;
			elsif(c = '1') then
				s_nextState <= ST5;
			else
				s_nextState <= ST3;
			end if;
		
		when ST4 =>
			drink <= '0';
			if (v = '1') then
				s_nextState <= ST5;
			elsif(c = '1') then
				s_nextState <= ST5;
			else
				s_nextState <= ST4;
			end if;
			
		when ST5 =>
			drink <= '1';
			s_nextState <= ST0;
		
		end case;

	end process;
				
end Behavioral;
