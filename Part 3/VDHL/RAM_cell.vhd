library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RAM_cell is
    Port ( S : in  STD_LOGIC;
           B : in  STD_LOGIC;
           not_B : in  STD_LOGIC;
           C : out  STD_LOGIC;
			  not_C : out  STD_LOGIC
			  );
end RAM_cell;

architecture Behavioral of RAM_cell is
--components
	COMPONENT SR_latch
	PORT(
		S : IN std_logic;
		R : IN std_logic;          
		Q : OUT std_logic;
		not_Q : OUT std_logic
		);
	END COMPONENT;
	
--signals
	signal b_and, not_b_and, q_out, not_q_out :STD_LOGIC;

begin
--port maps
	SR_latch0: SR_latch PORT MAP(
		S => b_and,
		R => not_b_and,
		Q => q_out,
		not_Q => not_q_out
	);

	b_and <= B and S;
	not_b_and <= not_B and S;
	C <= q_out and S after 1 ns;
	not_C <= not_q_out and S after 1 ns;

end Behavioral;

