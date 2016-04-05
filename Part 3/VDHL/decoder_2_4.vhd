library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity decoder_2_4 is
    Port ( A : in  STD_LOGIC_VECTOR (1 downto 0);
           Q0 : out  STD_LOGIC;
           Q1 : out  STD_LOGIC;
           Q2 : out  STD_LOGIC;
           Q3 : out  STD_LOGIC);
end decoder_2_4;

architecture Behavioral of decoder_2_4 is

begin
Q0 <= ((not A(1)) and (not A(0))) after 1 ns;
Q1 <= ((not A(1)) and A(0)) after 1 ns;
Q2 <= (A(1) and (not A(0))) after 1 ns;
Q3 <= (A(1) and A(0)) after 1 ns;

end Behavioral;

