library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU is
    Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           Cin : in  STD_LOGIC;
           G : out  STD_LOGIC_VECTOR (15 downto 0);
           Cout : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is
--components
	--logic circuit
	COMPONENT logic_circuit
	PORT(
			S : in STD_LOGIC_VECTOR (1 downto 0);
			A, B : in STD_LOGIC_VECTOR (15 downto 0);
			G : out STD_LOGIC_VECTOR (15 downto 0)
			);
	END COMPONENT;
	
	--arithmetic circuit
	COMPONENT arithmetic_circuit
	PORT(
			A, B : in STD_LOGIC_VECTOR (15 downto 0);
			S : in STD_LOGIC_VECTOR (1 downto 0);
			Cin : in STD_LOGIC;
			G : out STD_LOGIC_VECTOR (15 downto 0);
			Cout : out STD_LOGIC
			);
	END COMPONENT;
	
	--2 to 1 multiplexer for output select
	COMPONENT mux_2_1_16bit
	PORT(
			In0, In1 : in STD_LOGIC_VECTOR (15 downto 0);
			S : in STD_LOGIC;
			Z : out STD_LOGIC_VECTOR (15 downto 0)
			);
	END COMPONENT;

--signals
signal arithmetic_out, logic_out : STD_LOGIC_VECTOR (15 downto 0);

begin
--port maps
	--arithmetic circuit
	arithmetic_circuit0: arithmetic_circuit PORT MAP(
				A => A,
				B => B,
				Cin => Cin,
				G => arithmetic_out,
				S => S(1 downto 0),
				Cout => Cout
	);
	
	--logic circuit
	logic_circuit0: logic_circuit PORT MAP(
				A => A,
				B => B,
				G => logic_out,
				S => S(1 downto 0)
	);
	
	--2 to 1 multiplexer for output select
	mux0: mux_2_1_16bit PORT MAP(
				In0 => arithmetic_out,
				In1 => logic_out,
				S => S(2),
				Z => G
	);

end Behavioral;

