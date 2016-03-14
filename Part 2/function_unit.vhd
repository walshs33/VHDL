library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity function_unit is
    Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
           S : in  STD_LOGIC_VECTOR (4 downto 0);
           F : out  STD_LOGIC_VECTOR (15 downto 0);
           V : out  STD_LOGIC;
           C : out  STD_LOGIC;
           N : out  STD_LOGIC;
           Z : out  STD_LOGIC);
end function_unit;

architecture Behavioral of function_unit is
--components
	--ALU
	COMPONENT ALU
	PORT(
			A : in  STD_LOGIC_VECTOR (15 downto 0);
			B : in  STD_LOGIC_VECTOR (15 downto 0);
			S : in  STD_LOGIC_VECTOR (2 downto 0);
			Cin : in  STD_LOGIC;
			G : out  STD_LOGIC_VECTOR (15 downto 0);
			Cout : out  STD_LOGIC
			);
	END COMPONENT;
	
	--shifter
	COMPONENT shifter
	PORT(
			B : in  STD_LOGIC_VECTOR (15 downto 0);
			H : out  STD_LOGIC_VECTOR (15 downto 0);
			S : in  STD_LOGIC_VECTOR (1 downto 0);
			In_r : in  STD_LOGIC;
			In_l : in  STD_LOGIC
--			Out_r : out  STD_LOGIC;
--			Out_l : out  STD_LOGIC
			);
	END COMPONENT;
	
	--overflow detect
	COMPONENT overflow
	PORT(
			A : in  STD_LOGIC;
			B : in  STD_LOGIC;
			S : in  STD_LOGIC;
			Z : out  STD_LOGIC
			);
	END COMPONENT;
	
--	--zero detect
--	COMPONENT zero_detect
--	PORT(
--			S : in  STD_LOGIC_VECTOR (15 downto 0);
--			Z : out  STD_LOGIC
--			);
--	END COMPONENT;
	
	--2 to 1 multiplexer
	COMPONENT mux_2_1_16bit
	PORT(
			In0 : in std_logic_vector(15 downto 0);
			In1 : in std_logic_vector(15 downto 0);
			S : in std_logic;
			Z : out std_logic_vector(15 downto 0)
			);
	END COMPONENT;
	
--signals
signal ALU_out, shifter_out : STD_LOGIC_VECTOR (15 downto 0);
	
begin
--port maps
	--ALU
	ALU0: ALU PORT MAP(
				A => A,
				B => B,
				S => S(3 downto 1),
				Cin => S(0),
				G => ALU_out,
				Cout => C
	);
	
	--shifter
	shifter0: shifter PORT MAP(
				B => B,
				H => shifter_out,
				In_r => '0',
				In_l => '0',
				S => S(3 downto 2)
--				Out_r => C,
--				Out_l => C
	);
	
	--2 to 1 multiplexer for output select
	mux0: mux_2_1_16bit PORT MAP(
				In0 => ALU_out,
				In1 => shifter_out,
				S => S(4),
				Z => F
	);
	
	--overflow detect
	overflow0: overflow PORT MAP(
				A => A(15),
				B => B(15),
				S => ALU_out(15),
				Z => V
	);
----	--zero detect for flags
--	zero_detect0: zero_detect PORT MAP(
--				S => ALU_out,
--				Z => Z
--	);

	N <= ALU_out(15);

	Z <= not (ALU_out(0) or ALU_out(1) or ALU_out(2) or ALU_out(3) or ALU_out(4) or ALU_out(5) or ALU_out(6) or ALU_out(7) or 
	ALU_out(8) or ALU_out(9) or ALU_out(10) or ALU_out(11) or ALU_out(12) or ALU_out(13) or ALU_out(14) or ALU_out(15)) after 1 ns;
end Behavioral;

