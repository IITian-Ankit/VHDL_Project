library IEEE;
use IEEE.std_logic_1164.all;
--- entity declaration
entity MIN_COUN is
    port (
        CLK : in std_logic;   --- CLK input
        RSTN : in std_logic;  --- active low RSTN signal
        M : in std_logic;     --- count enable signal
        L : in std_logic_vector(5 downto 0); --- countdowm starts from
        Q : out std_logic_vector(5 downto 0) --- output
    );
end MIN_COUN;
-- architecture declaration
architecture FUNCTIONALITY of MIN_COUN is
    -- Define states from s0 to s59
    type STATE_TYPE is (
        s0, s1, s2, s3, s4, s5, s6, s7, s8, s9,
        s10, s11, s12, s13, s14, s15, s16, s17, s18, s19,
        s20, s21, s22, s23, s24, s25, s26, s27, s28, s29,
        s30, s31, s32, s33, s34, s35, s36, s37, s38, s39,
        s40, s41, s42, s43, s44, s45, s46, s47, s48, s49,
        s50, s51, s52, s53, s54, s55, s56, s57, s58, s59
    );
    
    signal Qs, QPLUS : STATE_TYPE;
    signal clkout    : std_logic;

begin 

    -- Instantiate clock divider component to generate 1 Hz clock from CLK
    CLKDIV: entity work.CLK_DVD port map(CLK, '1', clkout);

    -- Sequential process to move to the next state on each rising edge of clkout
    process (RSTN, clkout)
    begin
        if RSTN = '0' then
            case L is
                when "000000" => Qs <= s0;
                when "000001" => Qs <= s1;
                when "000010" => Qs <= s2;
                when "000011" => Qs <= s3;
                when "000100" => Qs <= s4;
                when "000101" => Qs <= s5;
                when "000110" => Qs <= s6;
                when "000111" => Qs <= s7;
                when "001000" => Qs <= s8;
                when "001001" => Qs <= s9;
                when "001010" => Qs <= s10;
                when "001011" => Qs <= s11;
                when "001100" => Qs <= s12;
                when "001101" => Qs <= s13;
                when "001110" => Qs <= s14;
                when "001111" => Qs <= s15;
                when "010000" => Qs <= s16;
                when "010001" => Qs <= s17;
                when "010010" => Qs <= s18;
                when "010011" => Qs <= s19;
                when "010100" => Qs <= s20;
                when "010101" => Qs <= s21;
                when "010110" => Qs <= s22;
                when "010111" => Qs <= s23;
                when "011000" => Qs <= s24;
                when "011001" => Qs <= s25;
                when "011010" => Qs <= s26;
                when "011011" => Qs <= s27;
                when "011100" => Qs <= s28;
                when "011101" => Qs <= s29;
                when "011110" => Qs <= s30;
                when "011111" => Qs <= s31;
                when "100000" => Qs <= s32;
                when "100001" => Qs <= s33;
                when "100010" => Qs <= s34;
                when "100011" => Qs <= s35;
                when "100100" => Qs <= s36;
                when "100101" => Qs <= s37;
                when "100110" => Qs <= s38;
                when "100111" => Qs <= s39;
                when "101000" => Qs <= s40;
                when "101001" => Qs <= s41;
                when "101010" => Qs <= s42;
                when "101011" => Qs <= s43;
                when "101100" => Qs <= s44;
                when "101101" => Qs <= s45;
                when "101110" => Qs <= s46;
                when "101111" => Qs <= s47;
                when "110000" => Qs <= s48;
                when "110001" => Qs <= s49;
                when "110010" => Qs <= s50;
                when "110011" => Qs <= s51;
                when "110100" => Qs <= s52;
                when "110101" => Qs <= s53;
                when "110110" => Qs <= s54;
                when "110111" => Qs <= s55;
                when "111000" => Qs <= s56;
                when "111001" => Qs <= s57;
                when "111010" => Qs <= s58;
                when "111011" => Qs <= s59;
                when others => Qs <= s0; -- Default case
            end case;
        elsif rising_edge(clkout) then
            Qs <= QPLUS;
        end if;
    end process;

    -- Process to handle next state logic based on the input M and current state Qs
    process(M, Qs)
    begin
        case Qs is
            when s0  => if M = '1' then QPLUS <= s59; else QPLUS <= s0; end if; Q <= "000000";
            when s1  => if M = '1' then QPLUS <= s0;  else QPLUS <= s1; end if; Q <= "000001";
            when s2  => if M = '1' then QPLUS <= s1;  else QPLUS <= s2; end if; Q <= "000010";
            when s3  => if M = '1' then QPLUS <= s2;  else QPLUS <= s3; end if; Q <= "000011";
            when s4  => if M = '1' then QPLUS <= s3;  else QPLUS <= s4; end if; Q <= "000100";
            when s5  => if M = '1' then QPLUS <= s4;  else QPLUS <= s5; end if; Q <= "000101";
            when s6  => if M = '1' then QPLUS <= s5;  else QPLUS <= s6; end if; Q <= "000110";
            when s7  => if M = '1' then QPLUS <= s6;  else QPLUS <= s7; end if; Q <= "000111";
            when s8  => if M = '1' then QPLUS <= s7;  else QPLUS <= s8; end if; Q <= "001000";
            when s9  => if M = '1' then QPLUS <= s8;  else QPLUS <= s9; end if; Q <= "001001";
            when s10 => if M = '1' then QPLUS <= s9;  else QPLUS <= s10; end if; Q <= "001010";
            when s11 => if M = '1' then QPLUS <= s10; else QPLUS <= s11; end if; Q <= "001011";
            when s12 => if M = '1' then QPLUS <= s11; else QPLUS <= s12; end if; Q <= "001100";
            when s13 => if M = '1' then QPLUS <= s12; else QPLUS <= s13; end if; Q <= "001101";
            when s14 => if M = '1' then QPLUS <= s13; else QPLUS <= s14; end if; Q <= "001110";
            when s15 => if M = '1' then QPLUS <= s14; else QPLUS <= s15; end if; Q <= "001111";
            when s16 => if M = '1' then QPLUS <= s15; else QPLUS <= s16; end if; Q <= "010000";
            when s17 => if M = '1' then QPLUS <= s16; else QPLUS <= s17; end if; Q <= "010001";
            when s18 => if M = '1' then QPLUS <= s17; else QPLUS <= s18; end if; Q <= "010010";
            when s19 => if M = '1' then QPLUS <= s18; else QPLUS <= s19; end if; Q <= "010011";
            when s20 => if M = '1' then QPLUS <= s19; else QPLUS <= s20; end if; Q <= "010100";
            when s21 => if M = '1' then QPLUS <= s20; else QPLUS <= s21; end if; Q <= "010101";
            when s22 => if M = '1' then QPLUS <= s21; else QPLUS <= s22; end if; Q <= "010110";
            when s23 => if M = '1' then QPLUS <= s22; else QPLUS <= s23; end if; Q <= "010111";
            when s24 => if M = '1' then QPLUS <= s23; else QPLUS <= s24; end if; Q <= "011000";
            when s25 => if M = '1' then QPLUS <= s24; else QPLUS <= s25; end if; Q <= "011001";
            when s26 => if M = '1' then QPLUS <= s25; else QPLUS <= s26; end if; Q <= "011010";
            when s27 => if M = '1' then QPLUS <= s26; else QPLUS <= s27; end if; Q <= "011011";
            when s28 => if M = '1' then QPLUS <= s27; else QPLUS <= s28; end if; Q <= "011100";
            when s29 => if M = '1' then QPLUS <= s28; else QPLUS <= s29; end if; Q <= "011101";
            when s30 => if M = '1' then QPLUS <= s29; else QPLUS <= s30; end if; Q <= "011110";
            when s31 => if M = '1' then QPLUS <= s30; else QPLUS <= s31; end if; Q <= "011111";
            when s32 => if M = '1' then QPLUS <= s31; else QPLUS <= s32; end if; Q <= "100000";
            when s33 => if M = '1' then QPLUS <= s32; else QPLUS <= s33; end if; Q <= "100001";
            when s34 => if M = '1' then QPLUS <= s33; else QPLUS <= s34; end if; Q <= "100010";
            when s35 => if M = '1' then QPLUS <= s34; else QPLUS <= s35; end if; Q <= "100011";
            when s36 => if M = '1' then QPLUS <= s35; else QPLUS <= s36; end if; Q <= "100100";
            when s37 => if M = '1' then QPLUS <= s36; else QPLUS <= s37; end if; Q <= "100101";
            when s38 => if M = '1' then QPLUS <= s37; else QPLUS <= s38; end if; Q <= "100110";
            when s39 => if M = '1' then QPLUS <= s38; else QPLUS <= s39; end if; Q <= "100111";
            when s40 => if M = '1' then QPLUS <= s39; else QPLUS <= s40; end if; Q <= "101000";
            when s41 => if M = '1' then QPLUS <= s40; else QPLUS <= s41; end if; Q <= "101001";
            when s42 => if M = '1' then QPLUS <= s41; else QPLUS <= s42; end if; Q <= "101010";
            when s43 => if M = '1' then QPLUS <= s42; else QPLUS <= s43; end if; Q <= "101011";
            when s44 => if M = '1' then QPLUS <= s43; else QPLUS <= s44; end if; Q <= "101100";
            when s45 => if M = '1' then QPLUS <= s44; else QPLUS <= s45; end if; Q <= "101101";
            when s46 => if M = '1' then QPLUS <= s45; else QPLUS <= s46; end if; Q <= "101110";
            when s47 => if M = '1' then QPLUS <= s46; else QPLUS <= s47; end if; Q <= "101111";
            when s48 => if M = '1' then QPLUS <= s47; else QPLUS <= s48; end if; Q <= "110000";
            when s49 => if M = '1' then QPLUS <= s48; else QPLUS <= s49; end if; Q <= "110001";
            when s50 => if M = '1' then QPLUS <= s49; else QPLUS <= s50; end if; Q <= "110010";
            when s51 => if M = '1' then QPLUS <= s50; else QPLUS <= s51; end if; Q <= "110011";
            when s52 => if M = '1' then QPLUS <= s51; else QPLUS <= s52; end if; Q <= "110100";
            when s53 => if M = '1' then QPLUS <= s52; else QPLUS <= s53; end if; Q <= "110101";
            when s54 => if M = '1' then QPLUS <= s53; else QPLUS <= s54; end if; Q <= "110110";
            when s55 => if M = '1' then QPLUS <= s54; else QPLUS <= s55; end if; Q <= "110111";
            when s56 => if M = '1' then QPLUS <= s55; else QPLUS <= s56; end if; Q <= "111000";
            when s57 => if M = '1' then QPLUS <= s56; else QPLUS <= s57; end if; Q <= "111001";
            when s58 => if M = '1' then QPLUS <= s57; else QPLUS <= s58; end if; Q <= "111010";
            when s59 => if M = '1' then QPLUS <= s58; else QPLUS <= s59; end if; Q <= "111011";
            -- Default case to handle unexpected states
            when others =>
                QPLUS <= s0;
                Q <= "000000";
        end case;
    end process;

end FUNCTIONALITY;
