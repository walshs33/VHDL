library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zero_fill is
    Port ( input : in  STD_LOGIC_VECTOR (2 downto 0);
           output : out  STD_LOGIC_VECTOR (15 downto 0));
end zero_fill;

architecture Behavioral of zero_fill is

--signals
	signal output_signal : STD_LOGIC_VECTOR(15 downto 0);

begin

	output_signal(2 downto 0) <= input;
	output_signal(15 downto 3) <= "0000000000000";
	output <= output_signal;

end Behavioral;