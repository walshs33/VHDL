library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity SR_latch is
    Port ( S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           not_Q : out  STD_LOGIC);
end SR_latch;

architecture Behavioral of SR_latch is
	
--signals
	signal s_nor, r_nor : STD_LOGIC;
	
begin
	s_nor <= S nor r_nor;
	r_nor <= R nor s_nor;
	Q <= r_nor;
	not_Q <= s_nor;

end Behavioral;

