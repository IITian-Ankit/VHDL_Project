library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--- entity declaration
entity BinToBCD is
    Port (
        S : in  STD_LOGIC_VECTOR(5 downto 0); -- 6-bit binary input
        bcd_out : out STD_LOGIC_VECTOR(7 downto 0) -- 8-bit BCD output
    );
end BinToBCD;
-- architecture declaration
architecture Behavioral of BinToBCD is
begin
    process(S)
    begin
        case S is
            when "000000" => bcd_out <= "00000000";  -- 0
            when "000001" => bcd_out <= "00000001";  -- 1
            when "000010" => bcd_out <= "00000010";  -- 2
            when "000011" => bcd_out <= "00000011";  -- 3
            when "000100" => bcd_out <= "00000100";  -- 4
            when "000101" => bcd_out <= "00000101";  -- 5
            when "000110" => bcd_out <= "00000110";  -- 6
            when "000111" => bcd_out <= "00000111";  -- 7
            when "001000" => bcd_out <= "00001000";  -- 8
            when "001001" => bcd_out <= "00001001";  -- 9
            when "001010" => bcd_out <= "00010000";  -- 10
            when "001011" => bcd_out <= "00010001";  -- 11
            when "001100" => bcd_out <= "00010010";  -- 12
            when "001101" => bcd_out <= "00010011";  -- 13
            when "001110" => bcd_out <= "00010100";  -- 14
            when "001111" => bcd_out <= "00010101";  -- 15
            when "010000" => bcd_out <= "00010110";  -- 16
            when "010001" => bcd_out <= "00010111";  -- 17
            when "010010" => bcd_out <= "00011000";  -- 18
            when "010011" => bcd_out <= "00011001";  -- 19
            when "010100" => bcd_out <= "00100000";  -- 20
            when "010101" => bcd_out <= "00100001";  -- 21
            when "010110" => bcd_out <= "00100010";  -- 22
            when "010111" => bcd_out <= "00100011";  -- 23
            when "011000" => bcd_out <= "00100100";  -- 24
            when "011001" => bcd_out <= "00100101";  -- 25
            when "011010" => bcd_out <= "00100110";  -- 26
            when "011011" => bcd_out <= "00100111";  -- 27
            when "011100" => bcd_out <= "00101000";  -- 28
            when "011101" => bcd_out <= "00101001";  -- 29
            when "011110" => bcd_out <= "00110000";  -- 30
            when "011111" => bcd_out <= "00110001";  -- 31
            when "100000" => bcd_out <= "00110010";  -- 32
            when "100001" => bcd_out <= "00110011";  -- 33
            when "100010" => bcd_out <= "00110100";  -- 34
            when "100011" => bcd_out <= "00110101";  -- 35
            when "100100" => bcd_out <= "00110110";  -- 36
            when "100101" => bcd_out <= "00110111";  -- 37
            when "100110" => bcd_out <= "00111000";  -- 38
            when "100111" => bcd_out <= "00111001";  -- 39
            when "101000" => bcd_out <= "01000000";  -- 40
            when "101001" => bcd_out <= "01000001";  -- 41
            when "101010" => bcd_out <= "01000010";  -- 42
            when "101011" => bcd_out <= "01000011";  -- 43
            when "101100" => bcd_out <= "01000100";  -- 44
            when "101101" => bcd_out <= "01000101";  -- 45
            when "101110" => bcd_out <= "01000110";  -- 46
            when "101111" => bcd_out <= "01000111";  -- 47
            when "110000" => bcd_out <= "01001000";  -- 48
            when "110001" => bcd_out <= "01001001";  -- 49
            when "110010" => bcd_out <= "01010000";  -- 50
            when "110011" => bcd_out <= "01010001";  -- 51
            when "110100" => bcd_out <= "01010010";  -- 52
            when "110101" => bcd_out <= "01010011";  -- 53
            when "110110" => bcd_out <= "01010100";  -- 54
            when "110111" => bcd_out <= "01010101";  -- 55
            when "111000" => bcd_out <= "01010110";  -- 56
            when "111001" => bcd_out <= "01010111";  -- 57
            when "111010" => bcd_out <= "01011000";  -- 58
            when "111011" => bcd_out <= "01011001";  -- 59
            when "111100" => bcd_out <= "01100000";  -- 60
            when "111101" => bcd_out <= "01100001";  -- 61
            when "111110" => bcd_out <= "01100010";  -- 62
            when "111111" => bcd_out <= "01100011";  -- 63
            when others   => bcd_out <= "00000000";  -- Default case
        end case;
    end process;
end Behavioral;


