library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RAM_chip_8_word is
    Port ( A : in  STD_LOGIC_VECTOR (2 downto 0);
           D_in : in  STD_LOGIC_VECTOR (15 downto 0);
           RW : in  STD_LOGIC;
           Chip_sel : in  STD_LOGIC;
           D_out : out  STD_LOGIC_VECTOR (15 downto 0));
end RAM_chip_8_word;

architecture Behavioral of RAM_chip_8_word is

begin


end Behavioral;

