library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zero_detect_16bit is
    Port ( S : in  STD_LOGIC_VECTOR (15 downto 0);
           Z : out  STD_LOGIC);
end zero_detect_16bit;

architecture Behavioral of zero_detect_16bit is

begin
	Z <= '1' after 1 ns when S="0000000000000000" else
		'0';

--	Z <= not (S(0) or S(1) or S(2) or S(3) or S(4) or S(5) or S(6) or S(7) or 
--	S(8) or S(9) or S(10) or S(11) or S(12) or S(13) or S(14) or S(15));

end Behavioral;
