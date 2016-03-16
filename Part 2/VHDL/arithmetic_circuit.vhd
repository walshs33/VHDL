library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity arithmetic_circuit is
    Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           Cin : in  STD_LOGIC;
           G : out  STD_LOGIC_VECTOR (15 downto 0);
           Cout : out  STD_LOGIC);
end arithmetic_circuit;

architecture Behavioral of arithmetic_circuit is
--components
	COMPONENT ripple_adder_16bit
	PORT(
			X, Y : in STD_LOGIC_VECTOR (15 downto 0);
			Cin : in STD_LOGIC;
			S : out STD_LOGIC_VECTOR (15 downto 0);
			Cout : out STD_LOGIC
			);
	END COMPONENT;

--signals
signal modified_B : STD_LOGIC_VECTOR (15 downto 0);

begin
--port maps
	--ripple adder
	ripple_adder0: ripple_adder_16bit PORT MAP(
				X => A,
				Y => modified_B,
				Cin => Cin,
				Cout => Cout,
				S => G
	);
	
--B input logic
	modified_B <= "0000000000000000" when S="00" else
	B when S="01" else
	(not B) when S="10"
	else "1111111111111111" when S="11";
	
end Behavioral;

