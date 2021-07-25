library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity bin_to_bcd_fsm is
	port ( -- bin_input = 100 * digit2 + 10 * digit1 + digit0
			clk			: in std_logic;
			bin_input 	: in std_logic_vector(9 downto 0);
			activate 	: in std_logic;
			digit2 		: out std_logic_vector(3 downto 0);
			digit1 		: out std_logic_vector(3 downto 0);
			digit0 		: out std_logic_vector(3 downto 0);
			done 			: out std_logic);
end bin_to_bcd_fsm;

architecture v2 of bin_to_bcd_fsm is

	type TState is (idle, sub100, sub10, finish);
	signal s_state: TState;
	signal cem, dez : unsigned(3 downto 0);
	signal input : unsigned(9 downto 0);
	
begin
	
		sync_proc : process(clk)
		begin
		if (rising_edge(clk)) then	
			done <='0';
			case (s_state) is
			
			--idle state
			when idle =>
				
				if (activate = '1') then
					s_state <= sub100;
					input <= unsigned(bin_input);
					cem <= "0000";
					dez <= "0000";
				end if;
				
			--sub100 state
			when sub100 =>
				if (input >= 100) then
					input <= input - 100;
					cem <= cem + 1;
				else
					s_state <= sub10;
				end if;
			
			--sub10 state
			when sub10 =>
				if (input >= 10) then
					input <= input - 10;
					dez <= dez + 1;
				else
					s_state <= finish;
				end if;
			
			--finish state
			when finish =>
				done <= '1';
				digit2 <= std_logic_vector(cem);
				digit1 <= std_logic_vector(dez);
				digit0 <= std_logic_vector(input(3 downto 0));
				s_state <= idle;
				
				
			end case;
		end if;

	end process;


				
end v2;
