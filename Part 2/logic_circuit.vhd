library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logic_circuit is
    Port ( S : in  STD_LOGIC_VECTOR (1 downto 0);
           A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
           G : out  STD_LOGIC_VECTOR (15 downto 0));
end logic_circuit;

architecture Behavioral of logic_circuit is
--components
	--logic cell
	COMPONENT logic_cell
	PORT(
			S : in STD_LOGIC_VECTOR (1 downto 0);
			A, B : in STD_LOGIC;
			G : out STD_LOGIC
			);
	END COMPONENT;
	
begin
--port maps
	--cell 0
	cell00: logic_cell PORT MAP(
				S => S,
				A => A(0),
				B => B(0),
				G => G(0)
	);
	
	--cell 1
	cell01: logic_cell PORT MAP(
				S => S,
				A => A(1),
				B => B(1),
				G => G(1)
	);
	
	--cell 2
	cell02: logic_cell PORT MAP(
				S => S,
				A => A(2),
				B => B(2),
				G => G(2)
	);
	
	--cell 3
	cell03: logic_cell PORT MAP(
				S => S,
				A => A(3),
				B => B(3),
				G => G(3)
	);
	
	--cell 4
	cell04: logic_cell PORT MAP(
				S => S,
				A => A(4),
				B => B(4),
				G => G(4)
	);
	
	--cell 5
	cell05: logic_cell PORT MAP(
				S => S,
				A => A(5),
				B => B(5),
				G => G(5)
	);
	
	--cell 6
	cell06: logic_cell PORT MAP(
				S => S,
				A => A(6),
				B => B(6),
				G => G(6)
	);
	
	--cell 7
	cell07: logic_cell PORT MAP(
				S => S,
				A => A(7),
				B => B(7),
				G => G(7)
	);
	
	--cell 8
	cell08: logic_cell PORT MAP(
				S => S,
				A => A(8),
				B => B(8),
				G => G(8)
	);
	
	--cell 9
	cell09: logic_cell PORT MAP(
				S => S,
				A => A(9),
				B => B(9),
				G => G(9)
	);
	
	--cell 10
	cell10: logic_cell PORT MAP(
				S => S,
				A => A(10),
				B => B(10),
				G => G(10)
	);
	
	--cell 11
	cell11: logic_cell PORT MAP(
				S => S,
				A => A(11),
				B => B(11),
				G => G(11)
	);
	
	--cell 12
	cell12: logic_cell PORT MAP(
				S => S,
				A => A(12),
				B => B(12),
				G => G(12)
	);
	
	--cell 13
	cell13: logic_cell PORT MAP(
				S => S,
				A => A(13),
				B => B(13),
				G => G(13)
	);
	
	--cell 14
	cell14: logic_cell PORT MAP(
				S => S,
				A => A(14),
				B => B(14),
				G => G(14)
	);
	
	--cell 15
	cell15: logic_cell PORT MAP(
				S => S,
				A => A(15),
				B => B(15),
				G => G(15)
	);

end Behavioral;

