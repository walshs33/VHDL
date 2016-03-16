library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg_16 is
	port ( D : in std_logic_vector(15 downto 0);
			load, Clk : in std_logic;
			Q : out std_logic_vector(15 downto 0));
end reg_16;

architecture Behavioral of reg_16 is
begin
process(Clk)
begin
	if (rising_edge(Clk)) then
		if load='1' then
			Q<=D after 3 ns;
		end if;
	end if;
end process;
end Behavioral;

