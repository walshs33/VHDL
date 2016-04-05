library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RAM_read_logic is
    Port ( C : in  STD_LOGIC_VECTOR(15 downto 0);
           notC : in  STD_LOGIC_VECTOR(15 downto 0);
           Bit_sel : in  STD_LOGIC;
           D_out : out  STD_LOGIC);
end RAM_read_logic;

architecture Behavioral of RAM_read_logic is

--SR latch
	COMPONENT SR_latch
	PORT(
		S : IN std_logic;
		R : IN std_logic;          
		Q : OUT std_logic;
		not_Q : OUT std_logic
		);
	END COMPONENT;

--signals
	signal C_or, notC_or, Q_out : STD_LOGIC;

begin
	
	Inst_SR_latch: SR_latch PORT MAP(
		S => C_or,
		R => notC_or,
		Q => Q_out
	);

	C_or <= C(15) or C(14) or C(13) or C(12) or C(11) or C(10) or C(15) or C(9) or C(8) or C(7) or C(6) or C(5) or C(4) or C(3) or C(2) or C(1) or C(0);
	notC_or <= notC(15) or notC(14) or notC(13) or notC(12) or notC(11) or notC(10) or notC(15) or notC(9) or notC(8) or notC(7) or notC(6) or notC(5) or notC(4) or notC(3) or notC(2) or notC(1) or notC(0);
	D_out <= Q_out and Bit_sel;

end Behavioral;

