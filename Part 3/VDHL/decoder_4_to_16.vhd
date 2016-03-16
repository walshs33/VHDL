library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_4_to_16 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7 : out  STD_LOGIC;
           Q8, Q9, Q10, Q11, Q12, Q13, Q14, Q15 : out  STD_LOGIC);
end decoder_4_to_16;

architecture Behavioral of decoder_4_to_16 is

begin
	Q0 <= ((not A(3)) and (not A(2)) and (not A(1)) and (not A(0))) after 1 ns;
	Q1 <= ((not A(3)) and (not A(2)) and (not A(1)) and A(0)) after 1 ns;
	Q2 <= ((not A(3)) and (not A(2)) and A(1) and (not A(0))) after 1 ns;
	Q3 <= ((not A(3)) and (not A(2)) and A(1) and A(0)) after 1 ns;
	Q4 <= ((not A(3)) and A(2) and (not A(1)) and (not A(0))) after 1 ns;
	Q5 <= ((not A(3)) and A(2) and (not A(1)) and A(0)) after 1 ns;
	Q6 <= ((not A(3)) and A(2) and A(1) and (not A(0))) after 1 ns;
	Q7 <= ((not A(3)) and A(2) and A(1) and A(0)) after 1 ns;
	Q8 <= (A(3) and (not A(2)) and (not A(1)) and (not A(0))) after 1 ns;
	Q9 <= (A(3) and (not A(2)) and (not A(1)) and A(0)) after 1 ns;
	Q10 <= (A(3) and (not A(2)) and A(1) and (not A(0))) after 1 ns;
	Q11 <= (A(3) and (not A(2)) and A(1) and A(0)) after 1 ns;
	Q12 <= (A(3) and A(2) and (not A(1)) and (not A(0))) after 1 ns;
	Q13 <= (A(3) and A(2) and (not A(1)) and A(0)) after 1 ns;
	Q14 <= (A(3) and A(2) and A(1) and (not A(0))) after 1 ns;
	Q15 <= (A(3) and A(2) and A(1) and A(0)) after 1 ns;

end Behavioral;