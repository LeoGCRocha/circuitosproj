library ieee;
use ieee.std_logic_1164.all;

entity decodBCD is
port(e: in std_logic_vector(5 downto 0);
	  s: out std_logic_vector(7 downto 0)
);
end entity;

-- alterei para 6 bits a entrada "e" e add zeros a esquerda de todos
--vou precisar  mudar os bits da saida

architecture biroliro of decodBCD is
begin
s <= "00000000" when e = "000000" else
"00000001" when e = "000001" else
"00000010" when e = "000010" else
"00000011" when e = "000011" else
"00000100" when e = "000100" else
"00000101" when e = "000101" else
"00000110" when e = "000110" else
"00000111" when e = "000111" else
"00001000" when e = "001000" else
"00001001" when e = "001001" else
"00010000" when e = "001010" else
"00010001" when e = "001011" else
"00010010" when e = "001100" else
"00010011" when e = "001101" else
"00010100" when e = "001110" else
"00010101" when e = "001111" else
"00010110" when e = "010000" else
"00010111" when e = "010001" else
"00011000" when e = "010010" else
"00011001" when e = "010011" else
"00100000" when e = "010100" else
"00100001" when e = "010101" else
"00100010" when e = "010110" else
"00100011" when e = "010111" else
"00100100" when e = "011000" else
"00100101" when e = "011001" else
"00100110" when e = "011010" else
"00100111" when e = "011011" else
"00101000" when e = "011100" else
"00101001";
end architecture;
