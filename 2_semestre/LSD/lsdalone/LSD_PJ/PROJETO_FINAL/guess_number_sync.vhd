library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity guess_number_sync is
	port(	clk 			: in 	std_logic;
			keys 			: in 	std_logic_vector(3 downto 0);
			reset 		: in 	std_logic;
			ledr 			: out std_logic_vector(17 downto 0);
			ledg 			: out std_logic_vector(8 downto 0); --teste state
			activate 	: out std_logic;
			n_attempts 	: out std_logic_vector(9 downto 0);
			attempts 	: out std_logic_vector(9 downto 0);
			done1			: in std_logic;--number of attempts done
			done2			: in std_logic;--number guessed done
			enable 		: out std_logic;
			texto 		: out std_logic_vector(2 downto 0);
			c1hz 			: in std_logic;
			c2hz 			: in std_logic;
			c4hz 			: in std_logic;
			c8hz 			: in std_logic;
			rnd 			: in std_logic_vector(17 downto 0));
			
end guess_number_sync;

architecture v1 of guess_number_sync is

	--States
	type TState is (start, grupo,
						 calc, calc_mid, done,
						 hi, lo, equals,
						 win, cheater);
	signal s_State : TState;

	
	--guess
	signal lo_var 			:	integer := 0;
	signal hi_var 			:	integer := 999;
	signal mid_var 		:	integer ;
	signal attempt_var 	:  integer := 0;
	signal count 			:	integer := 0;
	signal s_done1, s_done2 : std_logic;
	
begin

	sync_proc : process(clk)
	begin
	
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_State <= start;
			else
				
				enable <= '1';
				ledr <= (others =>'0');
				
				case (s_State) is
				
				when start =>
					texto <="000";
					enable <=c1hz;
					activate <= '0';
					attempt_var <= 0;
					lo_var <= 0;
					hi_var <= 999;
					if(count = 500000000) then --10 s
						s_State <= grupo;
						count <= 0;
					else
						count <= count + 1;
						s_State <= start;
					end if;
					
				when grupo =>
					texto <="001";
					attempt_var <= 0;
					lo_var <= 0;
					hi_var <= 999;
					if (keys(3)='1') then--valor para o key[3]
						s_State <= calc_mid;	
					else
						s_State <= grupo;
					end if;
					
					
				when calc_mid =>	---- falta o estado para calcular o mid_var para n dar erro
					texto <= "001";
					mid_var <= (lo_var+hi_var)/2;
					s_State <= calc;
					
					
				when calc =>
					texto <="001";
					attempts <= std_logic_vector(to_unsigned(mid_var, attempts'length));
					n_attempts <= std_logic_vector(to_unsigned(attempt_var, n_attempts'length));
					if(hi_var<lo_var) then
						s_State <= cheater;
					else
						s_State <= done;
						activate <= '1';
						s_done1 <= '0';
						s_done2 <= '0';
					end if;
				
				when done =>
					activate<='0';
					texto <="001";
					if(done1='1') then
						s_done1<='1';
					end if;
					if(done2='1') then
						s_done2<='1';
					end if;
					if(s_done1='1' and s_done2='1') then
						s_State <= hi;
					else
						s_State <= done;
					end if;
					
				when hi =>
					texto <="010";
					if (keys(2)='1') then	--valor para o key[2]
						s_State <= lo;
					elsif (keys(1)='1') then --valor para o key[1]
						hi_var <= mid_var-1;
						attempt_var <= attempt_var + 1;
						s_State <= calc_mid;
					else 
						s_State <= hi;
					end if;
				
				when lo =>
					texto <="011";
					if (keys(2)='1') then--valor para o key[2]
						s_State <= equals;
					elsif (keys(1)='1') then --valor para o key[1]
						lo_var <= mid_var+1;
						attempt_var <= attempt_var + 1;
						s_State <= calc_mid;
					else
						s_State <= lo;
					end if;
					
				when equals =>
					texto <="100";
					if (keys(2)='1') then--valor para o key[2]
						s_State <= hi;
					elsif (keys(1)='1') then --valor para o key[1]
						s_State <= win;
					end if;
				
				when win =>
					texto <="100";
					enable <= c2hz;
					ledr <= rnd;
					if (keys(0)='1') then
						s_State <= grupo;
					end if;
				
				when cheater =>
					texto <="101";
					enable <=c4hz;
					if (keys(0)='1') then
						s_State <= grupo;
					else
						s_State <= cheater;
					end if;
					
				end case;
			end if;
			
		end if;
		
	end process;

	
		
		with s_State select --teste State
		
			ledg <=  "100000000" when start,
						"000000001" when grupo,
						"000000010" when calc_mid,
						"000000010" when calc,
						"000000100" when done,
						"000001000" when hi,
						"000010000" when lo,
						"000100000" when equals,
						"001000000" when win,
						"010000000" when cheater;
	
				
end v1;