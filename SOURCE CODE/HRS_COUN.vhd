library IEEE;
use IEEE.std_logic_1164.all;
--- entity declaration
entity HRS_COUN is
    port (
        CLK : in std_logic;   --- CLK input
        RSTN : in std_logic;  --- active low RSTN signal
        H : in std_logic;     --- count enable signal
        L : in std_logic_vector(5 downto 0); --- countdowm starts from
        Q : out std_logic_vector(5 downto 0) --- output
    );
end HRS_COUN;
-- architecture declaration
architecture FUNCTIONALITY of HRS_COUN is
    -- Define states from s0 to s23
    type STATE_TYPE is (
        s0, s1, s2, s3, s4, s5, s6, s7, s8, s9,
        s10, s11, s12, s13, s14, s15, s16, s17, s18, s19,
        s20, s21, s22, s23
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
                when others => Qs <= s0; -- Default case
            end case;
        elsif rising_edge(clkout) then
            Qs <= QPLUS;
        end if;
    end process;

    -- Process to handle next state logic based on the input H and current state Qs
    process(H, Qs)
    begin
        case Qs is
            when s0  => if H = '1' then QPLUS <= S0; else QPLUS <= s0; end if; Q <= "000000";
            when s1  => if H = '1' then QPLUS <= s0;  else QPLUS <= s1; end if; Q <= "000001";
            when s2  => if H = '1' then QPLUS <= s1;  else QPLUS <= s2; end if; Q <= "000010";
            when s3  => if H = '1' then QPLUS <= s2;  else QPLUS <= s3; end if; Q <= "000011";
            when s4  => if H = '1' then QPLUS <= s3;  else QPLUS <= s4; end if; Q <= "000100";
            when s5  => if H = '1' then QPLUS <= s4;  else QPLUS <= s5; end if; Q <= "000101";
            when s6  => if H = '1' then QPLUS <= s5;  else QPLUS <= s6; end if; Q <= "000110";
            when s7  => if H = '1' then QPLUS <= s6;  else QPLUS <= s7; end if; Q <= "000111";
            when s8  => if H = '1' then QPLUS <= s7;  else QPLUS <= s8; end if; Q <= "001000";
            when s9  => if H = '1' then QPLUS <= s8;  else QPLUS <= s9; end if; Q <= "001001";
            when s10 => if H = '1' then QPLUS <= s9;  else QPLUS <= s10; end if; Q <= "001010";
            when s11 => if H = '1' then QPLUS <= s10; else QPLUS <= s11; end if; Q <= "001011";
            when s12 => if H = '1' then QPLUS <= s11; else QPLUS <= s12; end if; Q <= "001100";
            when s13 => if H = '1' then QPLUS <= s12; else QPLUS <= s13; end if; Q <= "001101";
            when s14 => if H = '1' then QPLUS <= s13; else QPLUS <= s14; end if; Q <= "001110";
            when s15 => if H = '1' then QPLUS <= s14; else QPLUS <= s15; end if; Q <= "001111";
            when s16 => if H = '1' then QPLUS <= s15; else QPLUS <= s16; end if; Q <= "010000";
            when s17 => if H = '1' then QPLUS <= s16; else QPLUS <= s17; end if; Q <= "010001";
            when s18 => if H = '1' then QPLUS <= s17; else QPLUS <= s18; end if; Q <= "010010";
            when s19 => if H = '1' then QPLUS <= s18; else QPLUS <= s19; end if; Q <= "010011";
            when s20 => if H = '1' then QPLUS <= s19; else QPLUS <= s20; end if; Q <= "010100";
            when s21 => if H = '1' then QPLUS <= s20; else QPLUS <= s21; end if; Q <= "010101";
            when s22 => if H = '1' then QPLUS <= s21; else QPLUS <= s22; end if; Q <= "010110";
            when s23 => if H = '1' then QPLUS <= s22; else QPLUS <= s23; end if; Q <= "010111";
            -- Default case to handle unexpected states
            when others =>
                QPLUS <= s0;
                Q <= "000000";
        end case;
    end process;

end FUNCTIONALITY;
