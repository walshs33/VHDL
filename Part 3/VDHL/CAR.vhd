library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CAR is
    Port ( clk : in  STD_LOGIC;
           input : in  STD_LOGIC_VECTOR (7 downto 0);
           output : out  STD_LOGIC_VECTOR (7 downto 0));
end CAR;

architecture Behavioral of CAR is

begin

	process(clk)
	begin
		if(rising_edge(clk)) then
			output <= input after 1 ns;
		end if;
	end process;

end Behavioral;

