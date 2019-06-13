library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity FSM_clock is port(
CLK,RST,EN: in std_logic;
c1hz,c05hz,c2hz,c4hz,c10hz: out std_logic
);
end entity;

architecture divisor of FSM_clock is
signal cont05,cont1,cont2,cont4,cont10: std_logic_vector(6 downto 0);
begin
	process(CLK,RST,EN,cont05,cont1,cont2,cont4,cont10)
	begin
		if RST = '0' then
		cont05 <= "0000000";
		cont1 <= "0000000";
		cont2 <= "0000000";
		cont4 <= "0000000";
		cont10 <= "0000000";
		elsif CLK'event and CLK = '1' then
		if EN = '1' then
			cont05 <= cont05 + 1;
			cont1 <= cont1 + 1;
			cont2 <= cont2 + 1;
			cont4 <= cont4 + 1;
			cont10 <= cont10 + 1;
				if cont05 = x"5F5E0FF" then
					cont05 <= x"0000000";
					c05hz <= '1';
				end if;
				if cont1 = x"2FAF07F" then
					cont1 <= x"0000000";
					c1hz <= '1';
				end if;
				if cont2 = x"17D783F" then
					cont2 <= x"0000000";
					c2hz <= '1';
				end if;
				if cont4 = x"0BEBC1F" then
					cont4 <= x"0000000";
					c4hz <= '1';
				end if;
				if cont10 = x"04C4B3F" then
					cont10 <= x"0000000";
					c10hz <= '1';
				end if;
			end if;
		end if;
	end process;
end architecture;