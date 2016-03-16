library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity overflow is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end overflow;

architecture Behavioral of overflow is

begin
	Z <= '0' after 1 ns when A='0' and B='0' and S='0' else
	'1' after 1 ns when A='0' and B='0' and S='1' else
	'0' after 1 ns when A='0' and B='1' and S='0' else
	'0' after 1 ns when A='0' and B='1' and S='1' else
	'0' after 1 ns when A='1' and B='0' and S='0' else
	'0' after 1 ns when A='1' and B='0' and S='1' else
	'1' after 1 ns when A='1' and B='1' and S='0' else
	'0' after 1 ns when A='1' and B='1' and S='1' else
	'0' after 1 ns;

end Behavioral;