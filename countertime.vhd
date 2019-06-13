library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity countertime is port(
CLK,RST,EN: in std_logic;
Q: out std_logic;
T: out std_logic_vector(3 downto 0));
end entity;

architecture counter of countertime is
signal cont : std_logic_vector(3 downto 0);
begin
	process(CLK,RST,EN,cont)
	begin
		if RST = '0' then
		cont <= "0000";
		elsif CLK'event and CLK = '1' then
		if EN = '1' then
			cont <= cont + 1;
			T <= cont;
				if cont = "1010" then 
				Q <= '1';
				else
				Q <= '0';
					end if;
			end if;
		end if;
	end process;
end architecture;