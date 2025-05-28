-- Library declaration
library IEEE;  -- Declares the use of the IEEE library for standard logic operations and types.
use IEEE.std_logic_1164.all;  -- Imports the std_logic_1164 package, enabling the use of 'std_logic' and related logic types.

-- Package declaration
package EE232 is  -- Defines a package named 'EE232', which contains multiple component declarations.

	-- AND Gate Component
	component AND_2 is  -- Declares a 2-input AND gate component.
		port( 
			I0, I1 : in std_logic;  -- Input ports I0 and I1 of type 'std_logic'.
			O0 : out std_logic  -- Output port O0 of type 'std_logic'.
		);
	end component;

	-- OR Gate Component
	component OR_2 is  -- Declares a 2-input OR gate component.
		port(
			I0, I1 : in std_logic;  -- Input ports I0 and I1 of type 'std_logic'.
			O0 : out std_logic  -- Output port O0 of type 'std_logic'.
		);
	end component;

	-- XOR Gate Component
	component XOR_2 is  -- Declares a 2-input XOR gate component.
		port(
			I0, I1 : in std_logic;  -- Input ports I0 and I1 of type 'std_logic'.
			O0 : out std_logic  -- Output port O0 of type 'std_logic'.
		);
	end component;

	-- NOT Gate Component
	component NOT_1 is  -- Declares a single-input NOT gate component.
		port(
			I0 : in std_logic;  -- Input port I0 of type 'std_logic'.
			O0 : out std_logic  -- Output port O0 of type 'std_logic'.
		);
	end component;

	-- 2-to-1 Multiplexer Component
	component MUX_2X1 is  -- Declares a 2-to-1 multiplexer component.
		port(
			I0, I1 : in std_logic;  -- Input ports I0 and I1 of type 'std_logic'.
			S0 : in std_logic;  -- Select signal S0 of type 'std_logic'.
			O0 : out std_logic  -- Output port O0 of type 'std_logic'.
		);
	end component;

	-- Clock Divider Component
	component CLK_DVD is  -- Declares a clock divider component.
		port(
			CLK_IN : in std_logic;  -- Input clock signal.
			RSTN   : in std_logic;  -- Active-low reset signal.
			CLK_OUT : out std_logic  -- Output divided clock signal.
		);
	end component;

	-- Binary-Coded Decimal to Seven-Segment Decoder
	component BCD2SSD is  -- Declares a component for converting BCD to seven-segment display output.
		port(
			X : in std_logic_vector(3 downto 0);  -- 4-bit BCD input.
			Y : out std_logic_vector(6 downto 0)  -- 7-segment display output.
			
		);
	end component;

	-- Seconds Incrementer Component
	component SEC_INC is  -- Declares a component for incrementing seconds.
		port(
			CLK : in std_logic;  -- Clock signal.
			RSTN : in std_logic;  -- Active-low reset signal.
			S : in std_logic;  -- Increment signal.
			output : out std_logic_vector(5 downto 0)  -- 6-bit output for seconds.
		);
	end component;

	-- Minutes Incrementer Component
	component MIN_INC is  -- Declares a component for incrementing minutes.
		port(
			CLK : in std_logic;  -- Clock signal.
			RSTN : in std_logic;  -- Active-low reset signal.
			M : in std_logic;  -- Increment signal.
			output : out std_logic_vector(5 downto 0)  -- 6-bit output for minutes.
		);
	end component;

	-- Hours Incrementer Component
	component HRS_INC is  -- Declares a component for incrementing hours.
		port(
			CLK : in std_logic;  -- Clock signal.
			RSTN : in std_logic;  -- Active-low reset signal.
			H : in std_logic;  -- Increment signal.
			output : out std_logic_vector(5 downto 0)  -- 6-bit output for hours.
		);
	end component;

	-- Seconds Counter Component
	component SEC_COUN is  -- Declares a component for counting seconds.
		port(
			CLK : in std_logic;  -- Clock signal.
			RSTN : in std_logic;  -- Active-low reset signal.
			K : in std_logic;  -- Count enable signal.
			M : in std_logic_vector(5 downto 0);  -- countdown starts from.
			L : out std_logic_vector(5 downto 0)  -- Current count value.
		);
	end component;

	-- Minutes Counter Component
	component MIN_COUN is  -- Declares a component for counting minutes.
		port(
			CLK : in std_logic;  -- Clock signal.
			RSTN : in std_logic;  -- Active-low reset signal.
			M : in std_logic;  -- Count enable signal.
			L : in std_logic_vector(5 downto 0);  -- countdown starts from.
			Q : out std_logic_vector(5 downto 0)  -- Current count value.
		);
	end component;

	-- Hours Counter Component
	component HRS_COUN is  -- Declares a component for counting hours.
		port(
			CLK : in std_logic;  -- Clock signal.
			RSTN : in std_logic;  -- Active-low reset signal.
			H : in std_logic;  -- Count enable signal.
			L : in std_logic_vector(5 downto 0); -- countdown starts from.
			Q : out std_logic_vector(5 downto 0)  -- Current count value.
		);
	end component;

	-- Binary to Binary-Coded Decimal Converter
	component BinToBCD is  -- Declares a component for converting binary to BCD.
		port(
			S : in std_logic_vector(5 downto 0);  -- 6-bit binary input.
			bcd_out : out std_logic_vector(7 downto 0)  -- 8-bit BCD output.
		);
	end component;

end package;  -- Ends the package declaration.
