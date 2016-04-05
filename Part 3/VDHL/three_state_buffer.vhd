library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity three_state_buffer_16_bit is
    Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           enable : in  STD_LOGIC;
           Y : out  STD_LOGIC_VECTOR (15 downto 0));
end three_state_buffer_16_bit;

architecture Behavioral of three_state_buffer_16_bit is

begin

	Y <= A when(enable = '1') else "ZZZZZZZZZZZZZZZZ";

end Behavioral;

