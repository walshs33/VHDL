library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_1_2 is
    Port ( A : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (1 downto 0));
end decoder_1_2;

architecture Behavioral of decoder_1_2 is

begin

S(0) <= not A after 1 ns;
S(1) <= A after 1 ns;

end Behavioral;