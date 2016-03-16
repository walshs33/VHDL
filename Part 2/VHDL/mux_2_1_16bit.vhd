library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_2_1_16bit is
	port ( In0 : in std_logic_vector(15 downto 0);
		In1 : in std_logic_vector(15 downto 0);
		S : in std_logic;
		Z : out std_logic_vector(15 downto 0));
end mux_2_1_16bit;

architecture Behavioral of mux_2_1_16bit is

begin
	Z <= In0 after 1 ns when S='0' else
		In1 after 1 ns when S='1' else
		"0000000000000000" after 1 ns;

end Behavioral;