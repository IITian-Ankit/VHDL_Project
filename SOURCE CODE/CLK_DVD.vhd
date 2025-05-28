-- Library declarations
library IEEE;
use IEEE.std_logic_1164.all;

-- Entity declaration
entity CLK_DVD is
    port(
        CLK_IN : in std_logic;    -- Input clock
        RSTN   : in std_logic;    -- Active-low reset
        CLK_OUT : out std_logic   -- Divided clock output
    );
end entity;

-- Architecture definition
architecture FUNCTIONALITY of CLK_DVD is
    signal CNT   : integer := 0;  -- Counter to divide the clock
    signal TEMP  : std_logic := '0';  -- Temporary signal for output clock
begin
    process(CLK_IN, RSTN)
    begin
        if (RSTN = '0') then
            CNT <= 0;         -- Reset counter
            TEMP <= '0';      -- Reset TEMP signal
        elsif rising_edge(CLK_IN) then
            CNT <= CNT + 1;    -- Increment counter
            if (CNT = 25000000) then
                TEMP <= not TEMP;  -- Toggle TEMP
                CNT <= 0;          -- Reset counter
            end if;
        end if;
    end process;

    CLK_OUT <= TEMP;  -- Assign TEMP to output clock

end FUNCTIONALITY;
