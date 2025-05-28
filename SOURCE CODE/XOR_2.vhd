library IEEE;
use IEEE.std_logic_1164.all;
--- entity declaration
entity XOR_2 is
	port( I0,I1 : in std_logic;
			O0 : out std_logic);
end entity;
-- architecture declaration
architecture FUNCTIONALITY of XOR_2 is

begin
	O0 <= (I0 and (not I1)) or ((not I0) and I1);
end FUNCTIONALITY;