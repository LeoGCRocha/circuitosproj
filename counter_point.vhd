library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Counter_point is port (
CLK: in std_logic;
RST: in std_logic;
EN: in std_logic;
Data: in std_logic_vector(3 downto 0);
T: out std_logic_vector(5 downto 0);
Q: out std_logic
);
end entity;

architecture behv of Counter_point is
Signal Tot: std_logic_vector(5 downto 0);
begin
process (CLK, RST, Data, EN)
begin
if RST = '1' then
	Tot <= "000000";
	elsif CLK'event and CLK = '1' then
		if EN = '1' then
			Tot <= Tot + Data;
		end if;
			if Tot = "011101" then
				Q <= '1';
			else
				Q <= '0';
			end if;
	end if;
end process;
T <= Tot;
end behv;
