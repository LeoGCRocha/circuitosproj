library ieee;
use ieee.std_logic_1164.all;

entity decoder is
port (e: in std_logic_vector(3 downto 0);
		s: out std_logic_vector(9 downto 0)
);
end entity;

architecture biroliro of decoder is
begin
s <= "0000000001" when e = "0000" else
"0000000010" when e = "0001" else
"0000000100" when e = "0010" else
"0000001000" when e = "0011" else
"0000010000" when e = "0100" else
"0000100000" when e = "0101" else
"0001000000" when e = "0110" else
"0010000000" when e = "0111" else
"0100000000" when e = "1000" else
"1000000000";
end architecture;