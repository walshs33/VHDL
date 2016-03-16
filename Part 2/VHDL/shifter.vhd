library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shifter is
    Port ( B : in  STD_LOGIC_VECTOR (15 downto 0);
           H : out  STD_LOGIC_VECTOR (15 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           In_r : in  STD_LOGIC;
           In_l : in  STD_LOGIC);
--           Out_r : out  STD_LOGIC;
--           Out_l : out  STD_LOGIC);
end shifter;

architecture Behavioral of shifter is
--components
	--4 to 1 multiplexer
	COMPONENT mux_4_1_1bit
	PORT(
			S0 : in  STD_LOGIC;
			S1 : in  STD_LOGIC;
			In0 : in  STD_LOGIC;
			In1 : in  STD_LOGIC;
			In2 : in  STD_LOGIC;
			In3 : in  STD_LOGIC;
			Z : out  STD_LOGIC
			);
	END COMPONENT;
begin
--port maps
	--multiplexer 0
	mux00: mux_4_1_1bit PORT MAP(
				S0 => S(0),
				S1 => S(1),
				In0 => B(0),
				In1 => B(1),
				In2 => In_l,
				In3 => '0',
				Z => H(0)
	);

	--multiplexer 1
	mux01: mux_4_1_1bit PORT MAP(
				S0 => S(0),
				S1 => S(1),
				In0 => B(1),
				In1 => B(2),
				In2 => B(0),
				In3 => '0',
				Z => H(1)
	);

	--multiplexer 2
	mux02: mux_4_1_1bit PORT MAP(
				S0 => S(0),
				S1 => S(1),
				In0 => B(2),
				In1 => B(3),
				In2 => B(1),
				In3 => '0',
				Z => H(2)
	);

	--multiplexer 3
	mux03: mux_4_1_1bit PORT MAP(
				S0 => S(0),
				S1 => S(1),
				In0 => B(3),
				In1 => B(4),
				In2 => B(2),
				In3 => '0',
				Z => H(3)
	);

	--multiplexer 4
	mux04: mux_4_1_1bit PORT MAP(
				S0 => S(0),
				S1 => S(1),
				In0 => B(4),
				In1 => B(5),
				In2 => B(3),
				In3 => '0',
				Z => H(4)
	);

	--multiplexer 5
	mux05: mux_4_1_1bit PORT MAP(
				S0 => S(0),
				S1 => S(1),
				In0 => B(5),
				In1 => B(6),
				In2 => B(4),
				In3 => '0',
				Z => H(5)
	);

	--multiplexer 6
	mux06: mux_4_1_1bit PORT MAP(
				S0 => S(0),
				S1 => S(1),
				In0 => B(6),
				In1 => B(7),
				In2 => B(5),
				In3 => '0',
				Z => H(6)
	);

	--multiplexer 7
	mux07: mux_4_1_1bit PORT MAP(
				S0 => S(0),
				S1 => S(1),
				In0 => B(7),
				In1 => B(8),
				In2 => B(6),
				In3 => '0',
				Z => H(7)
	);

	--multiplexer 8
	mux08: mux_4_1_1bit PORT MAP(
				S0 => S(0),
				S1 => S(1),
				In0 => B(8),
				In1 => B(9),
				In2 => B(7),
				In3 => '0',
				Z => H(8)
	);

	--multiplexer 9
	mux09: mux_4_1_1bit PORT MAP(
				S0 => S(0),
				S1 => S(1),
				In0 => B(9),
				In1 => B(10),
				In2 => B(8),
				In3 => '0',
				Z => H(9)
	);

	--multiplexer 10
	mux10: mux_4_1_1bit PORT MAP(
				S0 => S(0),
				S1 => S(1),
				In0 => B(10),
				In1 => B(11),
				In2 => B(9),
				In3 => '0',
				Z => H(10)
	);

	--multiplexer 11
	mux11: mux_4_1_1bit PORT MAP(
				S0 => S(0),
				S1 => S(1),
				In0 => B(11),
				In1 => B(12),
				In2 => B(10),
				In3 => '0',
				Z => H(11)
	);

	--multiplexer 12
	mux12: mux_4_1_1bit PORT MAP(
				S0 => S(0),
				S1 => S(1),
				In0 => B(12),
				In1 => B(13),
				In2 => B(11),
				In3 => '0',
				Z => H(12)
	);

	--multiplexer 13
	mux13: mux_4_1_1bit PORT MAP(
				S0 => S(0),
				S1 => S(1),
				In0 => B(13),
				In1 => B(14),
				In2 => B(12),
				In3 => '0',
				Z => H(13)
	);

	--multiplexer 14
	mux14: mux_4_1_1bit PORT MAP(
				S0 => S(0),
				S1 => S(1),
				In0 => B(14),
				In1 => B(15),
				In2 => B(13),
				In3 => '0',
				Z => H(14)
	);

	--multiplexer 15
	mux15: mux_4_1_1bit PORT MAP(
				S0 => S(0),
				S1 => S(1),
				In0 => B(15),
				In1 => In_r,
				In2 => B(14),
				In3 => '0',
				Z => H(15)
	);
	
--	Out_l <= B(15);
--	Out_r <= B(0);

end Behavioral;

