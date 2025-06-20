library IEEE;
use IEEE.std_logic_1164.all;
use work.EE232.all;
--- entity declaration
entity MUX_2X1 is
	port (I0 ,I1 : in std_logic;
		   S0 : in std_logic;
			O0 : out std_logic);
end MUX_2X1;
-- architecture declaration
architecture FUNCTIONALITY of MUX_2X1 is
	signal A1,S1,A2 : std_logic;

begin
	G0 : AND_2 port map(I1,S0,A1);
	G1 : NOT_1 port map(S0,S1);
	G2 : AND_2 port map(I0,S1,A2);	
	G3 : OR_2 port map(A1,A2,O0);

end FUNCTIONALITY;
