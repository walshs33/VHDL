library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logic_cell is
    Port ( S : in  STD_LOGIC_VECTOR (1 downto 0);
           A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           G : out  STD_LOGIC);
end logic_cell;

architecture Behavioral of logic_cell is
--components
	--4 to 1 multiplexer
	COMPONENT mux_4_1_1bit
	PORT(
			In0, In1, In2, In3 : in STD_LOGIC;
			S0, S1 : in STD_LOGIC;
			Z : out STD_LOGIC
			);
	END COMPONENT;
	
--signals
signal A_and_B, A_or_B, A_xor_B, not_A : STD_LOGIC;
	
begin
--port maps
	--mux 0
	mux00: mux_4_1_1bit PORT MAP(
				In0 => A_and_B,
				In1 => A_or_B,
				In2 => A_xor_B,
				In3 => not_A,
				S0 => S(1),
				S1 => S(0),
				Z => G
	);

	A_and_B <= A and B;
	A_or_B <= A or B;
	A_xor_B <= A xor B;
	not_A <= not A;

end Behavioral;