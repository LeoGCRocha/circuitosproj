library ieee;
use ieee.std_logic_1164.all;

entity mux_FSM_Clock is
port (a,b,c,d: in std_logic;
		sel: in std_logic_vector(1 downto 0);
		s: out std_logic
);
end entity;
		
architecture arc of mux_FSM_Clock is
begin
s <= a when sel = "00" else
b when sel = "01" else
c when sel = "10" else
d;
end architecture;
		