-- Library declarations
library IEEE;  -- Declares the IEEE library, which provides standard logic types and operations.
use IEEE.std_logic_1164.all;  -- Imports the std_logic_1164 package for using `std_logic` and related logic operations.
use work.EE232.all;  -- Imports all components defined in the EE232 package.

-- Entity declaration
entity BCD2SSD is  -- Defines the entity for converting Binary Coded Decimal (BCD) to a seven-segment display.
	port(
		X : in std_logic_vector(3 downto 0);  -- 4-bit BCD input.
		Y : out std_logic_vector(6 downto 0)  -- 7-segment display output signals (7 segments).
		
	);
end BCD2SSD;

-- Architecture definition
architecture FUNCTIONALITY of BCD2SSD is
	-- Internal signals for processing
	signal S : std_logic_vector(9 downto 0);  -- Intermediate signal for logic operations.
	signal K : std_logic_vector(3 downto 0);  -- Negated (NOT) version of input X.
	signal L : std_logic_vector(3 downto 0);  -- Intermediate signal for 2-bit AND combinations.
	signal N : std_logic_vector(3 downto 0);  -- Intermediate signal for 2-bit AND combinations.
	signal m : std_logic_vector(9 downto 0);  -- Signal to store multiple intermediate AND results.
	signal O : std_logic_vector(6 downto 0);  -- Intermediate signal for OR combinations.
	signal A : std_logic;  -- Additional intermediate signal, currently unused.

begin
	-- Negating each bit of input X
	NT1 : NOT_1 port map(X(3), K(3));  -- K(3) = NOT X(3)
	NT2 : NOT_1 port map(X(2), K(2));  -- K(2) = NOT X(2)
	NT3 : NOT_1 port map(X(1), K(1));  -- K(1) = NOT X(1)
	NT4 : NOT_1 port map(X(0), K(0));  -- K(0) = NOT X(0)

	-- AND combinations for lower bits
	AN1 : AND_2 port map(K(0), K(1), L(0));  -- L(0) = K(0) AND K(1)
	AN2 : AND_2 port map(K(1), X(0), L(1));  -- L(1) = K(1) AND X(0)
	AN3 : AND_2 port map(X(1), K(0), L(2));  -- L(2) = X(1) AND K(0)
	AN4 : AND_2 port map(X(0), X(1), L(3));  -- L(3) = X(0) AND X(1)

	-- AND combinations for higher bits
	AN5 : AND_2 port map(K(3), K(2), N(0));  -- N(0) = K(3) AND K(2)
	AN6 : AND_2 port map(K(3), X(2), N(1));  -- N(1) = K(3) AND X(2)
	AN7 : AND_2 port map(X(3), K(2), N(2));  -- N(2) = X(3) AND K(2)
	AN8 : AND_2 port map(X(3), X(2), N(3));  -- N(3) = X(3) AND X(2)

	-- Generating intermediate AND results using nested loops
	U0 : for i in 3 downto 0 generate
		AN9 : AND_2 port map(N(0), L(i), m(i));  -- m(i) = N(0) AND L(i)
	end generate;

	U1 : for i in 3 downto 0 generate
		AN10: AND_2 port map(N(1), L(i), m(i+4));  -- m(i+4) = N(1) AND L(i)
	end generate;

	U2 : for i in 1 downto 0 generate
		AN11: AND_2 port map(N(2), L(i), m(i+8));  -- m(i+8) = N(2) AND L(i)
	end generate;

	-- OR gate combinations to derive 7-segment outputs
	OR1 : OR_2 port map(m(1), m(4), O(0));  -- O(0) = m(1) OR m(4)
	Y(0) <= O(0);  -- Assigning to segment Y(0)

	OR2 : OR_2 port map(m(5), m(6), Y(1));  -- Y(1) = m(5) OR m(6)

	OR3 : OR_2 port map(O(0), m(7), O(1));  -- O(1) = O(0) OR m(7)
	Y(2) <= m(2);  -- Assigning directly to segment Y(2)
	Y(3) <= O(1);  -- Assigning O(1) to segment Y(3)

	OR4 : OR_2 port map(O(1), m(3), O(2));  -- O(2) = O(1) OR m(3)
	OR5 : OR_2 port map(m(5), O(2), O(3));  -- O(3) = m(5) OR O(2)
	OR6 : OR_2 port map(O(3), m(9), Y(4));  -- Y(4) = O(3) OR m(9)

	OR8 : OR_2 port map(m(1), m(2), O(4));  -- O(4) = m(1) OR m(2)
	OR9 : OR_2 port map(O(4), m(3), O(5));  -- O(5) = O(4) OR m(3)
	OR10: OR_2 port map(m(7), O(5), Y(5));  -- Y(5) = m(7) OR O(5)
	OR11: OR_2 port map(m(0), m(1), O(6));  -- O(6) = m(0) OR m(1)
	OR12: OR_2 port map(O(6), m(7), Y(6));  -- Y(6) = O(6) OR m(7)

	-- Additional logic for flag output
	A1 : AND_2 port map(X(3), X(2), S(5));  -- S(5) = X(3) AND X(2)
	A2 : AND_2 port map(K(2), X(1), S(6));  -- S(6) = K(2) AND X(1)
	A3 : AND_2 port map(S(6), X(3), S(7));  -- S(7) = S(6) AND X(3)
	O1 : OR_2 port map(S(7), S(5), S(8));  -- S(8) = S(7) OR S(5)



end FUNCTIONALITY;

	 
	 
	 
	 
	 


	   
	
	
	
