library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4_1_1bit is
    Port ( S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           In0 : in  STD_LOGIC;
           In1 : in  STD_LOGIC;
           In2 : in  STD_LOGIC;
           In3 : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end mux_4_1_1bit;

architecture Behavioral of mux_4_1_1bit is

begin
	
	Z <= In0 after 1 ns when S0='0' and S1='0' else
	In1 after 1 ns when S0='0' and S1='1' else
	In2 after 1 ns when S0='1' and S1='0' else
	In3 after 1 ns when S0='1' and S1='1' else
	'0' after 1 ns;

end Behavioral;

