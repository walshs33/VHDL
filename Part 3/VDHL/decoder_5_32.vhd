library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_5_32 is
    Port ( S : in  STD_LOGIC_VECTOR (4 downto 0);
           A : out  STD_LOGIC_VECTOR (31 downto 0));
end decoder_5_32;

architecture Behavioral of decoder_5_32 is

begin
A(0) <= not S(4) and not S(3) and not S(2) and not S(1) and not S(0) after 1 ns;
A(1) <= not S(4) and not S(3) and not S(2) and not S(1) and S(0) after 1 ns;
A(2) <= not S(4) and not S(3) and not S(2) and S(1) and not S(0) after 1 ns;
A(3) <= not S(4) and not S(3) and not S(2) and S(1) and S(0) after 1 ns;
A(4) <= not S(4) and not S(3) and S(2) and not S(1) and not S(0) after 1 ns;
A(5) <= not S(4) and not S(3) and S(2) and not S(1) and  S(0) after 1 ns;
A(6) <= not S(4) and not S(3) and S(2) and S(1) and not S(0) after 1 ns;
A(7) <= not S(4) and not S(3) and S(2) and S(1) and S(0) after 1 ns;
A(8) <= not S(4) and S(3) and not S(2) and not S(1) and not S(0) after 1 ns;
A(9) <= not S(4) and S(3) and not S(2) and not S(1) and  S(0) after 1 ns;
A(10) <= not S(4) and S(3) and not S(2) and S(1) and not S(0) after 1 ns;
A(11) <= not S(4) and S(3) and not S(2) and S(1) and S(0) after 1 ns;
A(12) <= not S(4) and S(3) and S(2) and not S(1) and not S(0) after 1 ns;
A(13) <= not S(4) and S(3) and S(2) and not S(1) and S(0) after 1 ns;
A(14) <= not S(4) and S(3) and S(2) and S(1) and not S(0) after 1 ns;
A(15) <= not S(4) and S(3) and S(2) and S(1) and S(0) after 1 ns;
A(16) <= S(4) and not S(3) and not S(2) and not S(1) and not S(0) after 1 ns;
A(17) <= S(4) and not S(3) and not S(2) and not S(1) and S(0) after 1 ns;
A(18) <= S(4) and not S(3) and not S(2) and S(1) and not S(0) after 1 ns;
A(19) <= S(4) and not S(3) and not S(2) and S(1) and S(0) after 1 ns;
A(20) <= S(4) and not S(3) and S(2) and not S(1) and not S(0) after 1 ns;
A(21) <= S(4) and not S(3) and S(2) and not S(1) and S(0) after 1 ns;
A(22) <= S(4) and not S(3) and S(2) and S(1) and not S(0) after 1 ns;
A(23) <= S(4) and not S(3) and S(2) and S(1) and S(0) after 1 ns;
A(24) <= S(4) and S(3) and not S(2) and not S(1) and not S(0) after 1 ns;
A(25) <= S(4) and S(3) and not S(2) and not S(1) and S(0) after 1 ns;
A(26) <= S(4) and S(3) and not S(2) and S(1) and not S(0) after 1 ns;
A(27) <= S(4) and S(3) and not S(2) and S(1) and S(0) after 1 ns;
A(28) <= S(4) and S(3) and S(2) and not S(1) and not S(0) after 1 ns;
A(29) <= S(4) and S(3) and S(2) and not S(1) and S(0) after 1 ns;
A(30) <= S(4) and S(3) and S(2) and S(1) and not S(0) after 1 ns;
A(31) <= S(4) and S(3) and S(2) and S(1) and S(0) after 1 ns;

end Behavioral;

