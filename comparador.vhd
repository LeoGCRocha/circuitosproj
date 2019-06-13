library IEEE;
use IEEE.Std_Logic_1164.all;
use IEEE.Std_Logic_unsigned.all;
entity comp is
port (uo,ui: in std_logic_vector(5 downto 0);
		enable: in std_logic;
		O,I: out std_logic
		);
end entity;

architecture compbiroliro of comp is
begin
O <= '1' when uo > ui and enable = '1' else
'0';
I <= '1' when ui > uo and enable = '1' else
'0';
end architecture;