library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity sequencer is 
port	(reset,enable,Clock: in std_logic;
		hexseq: out std_logic_vector(3 downto 0)
);
end entity;

architecture reg of sequencer is
signal abarrado: std_logic_vector(3 downto 0);
begin


hexseq <= abarrado;
process(clock,reset,enable,abarrado)
	begin
		if reset = '1' then
			abarrado <= "0000";
		elsif (clock'event and clock = '1') then
			if enable = '1' then
			abarrado <= abarrado+ 1;
			if abarrado = "1111" then
				abarrado <= "0000";
			end if;
		end if;
	end if;
end process;
end architecture;