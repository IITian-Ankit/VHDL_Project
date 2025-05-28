library IEEE;                   -- Include IEEE standard library for logic operations.
use IEEE.std_logic_1164.all;    -- Use standard logic data types and operators.
use work.EE232.all;             -- Include custom library or package (assumed to contain specific components used).

-- Entity declaration
entity timer is
    port (
        CLK     : in std_logic;                 -- Clock signal input.
        RS      : in std_logic;                 -- Active-low reset signal.
        S, M, H, K, R : in std_logic;           -- Control signals for seconds, minutes, hours, etc.
        H0, H1, H2, H3, H4, H5 : out std_logic_vector(6 downto 0); -- Outputs for display segments.
        BUZZER  : out std_logic;                -- Buzzer output signal.
        Y       : inout std_logic               -- output LED.
    );
end timer;

-- architecture declaration
architecture FUNCTIONALITY of timer is
	signal A,B,C : std_logic_vector(5 downto 0);  -- Signals for counters (seconds, minutes, hours).
	signal D,E,N,O,O1,P,L : std_logic;            -- Control and intermediate signals.
	signal HEX0:  std_logic_vector(5 downto 0);   -- Signals for counter outputs and conversions
   signal HEX1:  std_logic_vector(5 downto 0);
	signal HEX2:  std_logic_vector(5 downto 0);
	signal HEX3: std_logic_vector(7 downto 0);
	signal HEX4: std_logic_vector(7 downto 0);
	signal HEX5: std_logic_vector(7 downto 0);
	signal HEX6:  std_logic_vector(5 downto 0);
   signal HEX7:  std_logic_vector(5 downto 0);
	signal HEX8:  std_logic_vector(5 downto 0);
	signal HEX9:  std_logic_vector(5 downto 0);
	signal HEX10:  std_logic_vector(5 downto 0);
	signal HEX11:  std_logic_vector(5 downto 0);
	signal X :  std_logic_vector(5 downto 0);    --- signal for output ssd
begin
    -- Seconds increment logic
    U0 : SEC_INC port map (
        CLK => CLK, 
        RSTN => R, 
        S => S, 
        OUTPUT => A
    ); 
    -- Logic for reset and control of seconds counter
    L <= O OR P OR (N AND (NOT O) AND (NOT P));

    -- Seconds counter
    U1 : SEC_COUN port map (
        CLK => CLK, 
        RSTN => RS, 
        K => L, 
        M => A, 
        L => HEX0
    );
    -- Detect when seconds counter is non-zero
    N <= HEX0(0) OR HEX0(1) OR HEX0(2) OR HEX0(3) OR HEX0(4) OR HEX0(5);

    -- Control signal for minute counter
    D <= (O OR P) AND (NOT (N AND K));

    -- Minutes increment logic
    U2 : MIN_INC port map (
        CLK => CLK,
        RSTN => R,
        M => M,
        OUTPUT => B
    );
    -- Minutes counter
    U3 : MIN_COUN port map (
        CLK => CLK,
        RSTN => RS,
        M => D,
        L => B,
        Q => HEX1
    );

    -- Detect when minute counter is non-zero
    O <= HEX1(0) OR HEX1(1) OR HEX1(2) OR HEX1(3) OR HEX1(4) OR HEX1(5);

    -- Intermediate signal combining minute and second control
    O1 <= O OR N;

    -- Control signal for hour counter
    E <= NOT (O1 AND K);

    -- Hours increment logic
    U4 : HRS_INC port map (
        CLK => CLK,
        RSTN => R,
        H => H,
        OUTPUT => C
    );
    -- Hours counter
    U5 : HRS_COUN port map (
        CLK => CLK,
        RSTN => RS,
        H => E,
        L => C,
        Q => HEX2
    );

    -- Detect when hour counter is non-zero
    P <= HEX2(0) OR HEX2(1) OR HEX2(2) OR HEX2(3) OR HEX2(4) OR HEX2(5);

    -- Multiplexer logic to select between incremented and displayed values
    U10 : for i in 5 downto 0 generate
        H60 : MUX_2X1 port map (HEX0(i), A(i), S, HEX6(i));
        H61 : MUX_2X1 port map (HEX1(i), A(i), S, HEX7(i));
        H62 : MUX_2X1 port map (HEX2(i), A(i), S, HEX8(i));
    end generate;

    -- Binary to BCD conversion and segment display mapping
    F0 : BinToBCD port map (HEX6, HEX3);
    F1 : BinToBCD port map (HEX7, HEX4);
    F2 : BinToBCD port map (HEX8, HEX5);

    F3 : BCD2SSD port map (HEX3(3 downto 0), H0);
    F4 : BCD2SSD port map (HEX3(7 downto 4), H1);
    F5 : BCD2SSD port map (HEX4(3 downto 0), H2);
    F6 : BCD2SSD port map (HEX4(7 downto 4), H3);
    F7 : BCD2SSD port map (HEX5(3 downto 0), H4);
    F8 : BCD2SSD port map (HEX5(7 downto 4), H5);

    -- Buzzer logic
    Y <= NOT (N OR O OR P); 
    BUZZER <= Y;            -- Activate buzzer when no counters are active.

end FUNCTIONALITY;