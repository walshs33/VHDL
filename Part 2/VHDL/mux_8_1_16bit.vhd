library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_8_1_16bit is
	Port ( In0 : in STD_LOGIC_VECTOR(15 downto 0);
	       In1 : in STD_LOGIC_VECTOR(15 downto 0);
          In2 : in STD_LOGIC_VECTOR(15 downto 0);
			 In3 : in STD_LOGIC_VECTOR(15 downto 0);
			 In4 : in STD_LOGIC_VECTOR(15 downto 0);
			 In5 : in STD_LOGIC_VECTOR(15 downto 0);
			 In6 : in STD_LOGIC_VECTOR(15 downto 0);
			 In7 : in STD_LOGIC_VECTOR(15 downto 0);
			 S0 : in STD_LOGIC;
			 S1 : in STD_LOGIC;
			 S2 : in STD_LOGIC;
			 Z : out STD_LOGIC_VECTOR(15 downto 0));
end mux_8_1_16bit;

architecture Behavioral of mux_8_1_16bit is

begin
	Z <= In0 after 1 ns when S0='0' and S1='0' and S2='0' else
		In1 after 1 ns when S0='0' and S1='0' and S2='1' else
		In2 after 1 ns when S0='0' and S1='1' and S2='0' else
		In3 after 1 ns when S0='0' and S1='1' and S2='1' else
		In4 after 1 ns when S0='1' and S1='0' and S2='0' else
		In5 after 1 ns when S0='1' and S1='0' and S2='1' else
		In6 after 1 ns when S0='1' and S1='1' and S2='0' else
		In7 after 1 ns when S0='1' and S1='1' and S2='1' else
		"0000000000000000" after 1 ns;

end Behavioral;

