library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sequencer is
    Port ( NA : in  STD_LOGIC_VECTOR (7 downto 0);
           opcode : in  STD_LOGIC_VECTOR (7 downto 0);
           MC : in  STD_LOGIC;
			  clk : in STD_LOGIC;
           control_address : out  STD_LOGIC_VECTOR (7 downto 0));
end sequencer;

architecture Behavioral of sequencer is

--component declaration
	--mux(next address generator)
	COMPONENT mux_2_1_8bit
	PORT(
		In0 : IN std_logic_vector(7 downto 0);
		In1 : IN std_logic_vector(7 downto 0);
		S : IN std_logic;          
		Z : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	--Control Access Register
	COMPONENT CAR
	PORT(
		clk : IN std_logic;
		input : IN std_logic_vector(7 downto 0);          
		output : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

--signals
	signal next_address : STD_LOGIC_VECTOR(7 downto 0);

begin
--port maps
	--next address generator
	Inst_mux_2_1_8bit: mux_2_1_8bit PORT MAP(
		In0 => NA,
		In1 => opcode,
		S => MC,
		Z => next_address
	);

	--Control Address Register
	Inst_CAR: CAR PORT MAP(
		clk => clk,
		input => next_address,
		output => control_address
	);
	
end Behavioral;

