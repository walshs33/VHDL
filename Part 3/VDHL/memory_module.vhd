library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity memory_module is
    Port ( D_in : in  STD_LOGIC_VECTOR (15 downto 0);
           D_out : out  STD_LOGIC_VECTOR (15 downto 0);
           Address : in  STD_LOGIC_VECTOR (15 downto 0);
           RW : in  STD_LOGIC);
end memory_module;

architecture Behavioral of memory_module is

--component declarations
	--RAM chip
	COMPONENT RAM_chip_32_word
	PORT(
		Row : IN std_logic_vector(3 downto 0);
		Col : IN std_logic;
		D_in : IN std_logic_vector(15 downto 0);
		Chip_sel : IN std_logic;
		RW : IN std_logic;          
		D_out : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;
	
	--4 to 16 line decoder
	COMPONENT decoder_4_to_16
	PORT(
		A : IN std_logic_vector(3 downto 0);          
		Q0 : OUT std_logic;
		Q1 : OUT std_logic;
		Q2 : OUT std_logic;
		Q3 : OUT std_logic;
		Q4 : OUT std_logic;
		Q5 : OUT std_logic;
		Q6 : OUT std_logic;
		Q7 : OUT std_logic;
		Q8 : OUT std_logic;
		Q9 : OUT std_logic;
		Q10 : OUT std_logic;
		Q11 : OUT std_logic;
		Q12 : OUT std_logic;
		Q13 : OUT std_logic;
		Q14 : OUT std_logic;
		Q15 : OUT std_logic
		);
	END COMPONENT;

--signals
	signal sel0, sel1, sel2, sel3, sel4, sel5, sel6, sel7, sel8, sel9, sel10, sel11, sel12, sel13, sel14, sel15 : STD_LOGIC;

begin

	--chip select decoder
	Inst_decoder_4_to_16: decoder_4_to_16 PORT MAP(
		A => Address(8 downto 5),
		Q0 => sel0,
		Q1 => sel1,
		Q2 => sel2,
		Q3 => sel3,
		Q4 => sel4,
		Q5 => sel5,
		Q6 => sel6,
		Q7 => sel7,
		Q8 => sel8,
		Q9 => sel9,
		Q10 => sel10,
		Q11 => sel11,
		Q12 => sel12,
		Q13 => sel13,
		Q14 => sel14,
		Q15 => sel15
	);

	--RAM chip 0
		RAM_chip_32_word_00: RAM_chip_32_word PORT MAP(
		Row => Address(4 downto 1),
		Col => Address(0),
		D_in => D_in,
		D_out => D_out,
		Chip_sel => sel0,
		RW => RW
	);

	--RAM chip 1
		RAM_chip_32_word_01: RAM_chip_32_word PORT MAP(
		Row => Address(4 downto 1),
		Col => Address(0),
		D_in => D_in,
		D_out => D_out,
		Chip_sel => sel1,
		RW => RW
	);

	--RAM chip 2
		RAM_chip_32_word_02: RAM_chip_32_word PORT MAP(
		Row => Address(4 downto 1),
		Col => Address(0),
		D_in => D_in,
		D_out => D_out,
		Chip_sel => sel2,
		RW => RW
	);

	--RAM chip 3
		RAM_chip_32_word_03: RAM_chip_32_word PORT MAP(
		Row => Address(4 downto 1),
		Col => Address(0),
		D_in => D_in,
		D_out => D_out,
		Chip_sel => sel3,
		RW => RW
	);

	--RAM chip 4
		RAM_chip_32_word_04: RAM_chip_32_word PORT MAP(
		Row => Address(4 downto 1),
		Col => Address(0),
		D_in => D_in,
		D_out => D_out,
		Chip_sel => sel4,
		RW => RW
	);

	--RAM chip 5
		RAM_chip_32_word_05: RAM_chip_32_word PORT MAP(
		Row => Address(4 downto 1),
		Col => Address(0),
		D_in => D_in,
		D_out => D_out,
		Chip_sel => sel5,
		RW => RW
	);

	--RAM chip 6
		RAM_chip_32_word_06: RAM_chip_32_word PORT MAP(
		Row => Address(4 downto 1),
		Col => Address(0),
		D_in => D_in,
		D_out => D_out,
		Chip_sel => sel6,
		RW => RW
	);

	--RAM chip 7
		RAM_chip_32_word_07: RAM_chip_32_word PORT MAP(
		Row => Address(4 downto 1),
		Col => Address(0),
		D_in => D_in,
		D_out => D_out,
		Chip_sel => sel7,
		RW => RW
	);

	--RAM chip 8
		RAM_chip_32_word_08: RAM_chip_32_word PORT MAP(
		Row => Address(4 downto 1),
		Col => Address(0),
		D_in => D_in,
		D_out => D_out,
		Chip_sel => sel8,
		RW => RW
	);

	--RAM chip 9
		RAM_chip_32_word_09: RAM_chip_32_word PORT MAP(
		Row => Address(4 downto 1),
		Col => Address(0),
		D_in => D_in,
		D_out => D_out,
		Chip_sel => sel9,
		RW => RW
	);

	--RAM chip 10
		RAM_chip_32_word_10: RAM_chip_32_word PORT MAP(
		Row => Address(4 downto 1),
		Col => Address(0),
		D_in => D_in,
		D_out => D_out,
		Chip_sel => sel10,
		RW => RW
	);

	--RAM chip 11
		RAM_chip_32_word_11: RAM_chip_32_word PORT MAP(
		Row => Address(4 downto 1),
		Col => Address(0),
		D_in => D_in,
		D_out => D_out,
		Chip_sel => sel11,
		RW => RW
	);

	--RAM chip 12
		RAM_chip_32_word_12: RAM_chip_32_word PORT MAP(
		Row => Address(4 downto 1),
		Col => Address(0),
		D_in => D_in,
		D_out => D_out,
		Chip_sel => sel12,
		RW => RW
	);

	--RAM chip 13
		RAM_chip_32_word_13: RAM_chip_32_word PORT MAP(
		Row => Address(4 downto 1),
		Col => Address(0),
		D_in => D_in,
		D_out => D_out,
		Chip_sel => sel13,
		RW => RW
	);

	--RAM chip 14
		RAM_chip_32_word_14: RAM_chip_32_word PORT MAP(
		Row => Address(4 downto 1),
		Col => Address(0),
		D_in => D_in,
		D_out => D_out,
		Chip_sel => sel14,
		RW => RW
	);
	
	--RAM chip 15
		RAM_chip_32_word_15: RAM_chip_32_word PORT MAP(
		Row => Address(4 downto 1),
		Col => Address(0),
		D_in => D_in,
		D_out => D_out,
		Chip_sel => sel15,
		RW => RW
	);

end Behavioral;

