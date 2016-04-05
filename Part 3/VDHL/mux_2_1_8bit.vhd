library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_2_1_8bit is
    Port ( In0 : in  STD_LOGIC_VECTOR (7 downto 0);
           In1 : in  STD_LOGIC_VECTOR (7 downto 0);
           S : in  STD_LOGIC;
           Z : out  STD_LOGIC_VECTOR (7 downto 0));
end mux_2_1_8bit;

architecture Behavioral of mux_2_1_8bit is

begin
	Z <= In0 after 1 ns when S='0' else
		In1 after 1 ns when S='1' else
		"00000000" after 1 ns;

end Behavioral;

