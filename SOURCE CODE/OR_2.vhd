library IEEE;
use IEEE.std_logic_1164.all;
--- entity declaration
entity OR_2 is
	port(I0 , I1 : in std_logic;
			O0 : out std_logic);
end OR_2;
-- architecture declaration
architecture FUNCTIONALITY of OR_2 is
begin
	
	O0 <= I0 or I1;
end FUNCTIONALITY;