library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RAM_slice_16_bit is
    Port ( D_in : in  STD_LOGIC;
           D_out : out  STD_LOGIC;
           Bit_sel : in  STD_LOGIC;
           Row_sel : in  STD_LOGIC_VECTOR (15 downto 0);
           RW : in  STD_LOGIC);
end RAM_slice_16_bit;

architecture Behavioral of RAM_slice_16_bit is

--RAM cell
	COMPONENT RAM_cell
	PORT(
		S : IN std_logic;
		B : IN std_logic;
		not_B : IN std_logic;          
		C  : OUT std_logic;
		not_C : OUT std_logic
		);
	END COMPONENT;

--read logic
	COMPONENT RAM_read_logic
	PORT(
		C : IN std_logic_vector(15 downto 0);
		notC : IN std_logic_vector(15 downto 0);
		Bit_sel : IN std_logic;          
		D_out : OUT std_logic
		);
	END COMPONENT;
	
--write logic
	COMPONENT RAM_write_logic
	PORT(
		RW : IN std_logic;
		Bit_sel : IN std_logic;
		D : IN std_logic;          
		B : OUT std_logic;
		notB : OUT std_logic
		);
	END COMPONENT;

--signals
	signal B, notB : STD_LOGIC;
	signal C, notC : STD_LOGIC_VECTOR(15 downto 0);

begin
--port maps
	--read logic
	Inst_RAM_read_logic: RAM_read_logic PORT MAP(
		C => C,
		notC => notC,
		Bit_sel => Bit_sel,
		D_out => D_out
	);

	--write logic
	Inst_RAM_write_logic: RAM_write_logic PORT MAP(
		RW => RW,
		Bit_sel => Bit_sel,
		D => D_in,
		B => B,
		notB => notB
	);
	
	--RAM cell 0
	RAM_cell_00: RAM_cell PORT MAP(
		S => Row_sel(0),
		B => B,
		not_B => notB,
		C => C(0),
		not_C => notC(0)
	);

	--RAM cell 1
	RAM_cell_01: RAM_cell PORT MAP(
		S => Row_sel(1),
		B => B,
		not_B => notB,
		C => C(1),
		not_C => notC(1)
	);

	--RAM cell 2
	RAM_cell_02: RAM_cell PORT MAP(
		S => Row_sel(2),
		B => B,
		not_B => notB,
		C => C(2),
		not_C => notC(2)
	);

	--RAM cell 3
	RAM_cell_03: RAM_cell PORT MAP(
		S => Row_sel(3),
		B => B,
		not_B => notB,
		C => C(3),
		not_C => notC(3)
	);

	--RAM cell 4
	RAM_cell_04: RAM_cell PORT MAP(
		S => Row_sel(4),
		B => B,
		not_B => notB,
		C => C(4),
		not_C => notC(4)
	);

	--RAM cell 5
	RAM_cell_05: RAM_cell PORT MAP(
		S => Row_sel(5),
		B => B,
		not_B => notB,
		C => C(5),
		not_C => notC(5)
	);

	--RAM cell 6
	RAM_cell_06: RAM_cell PORT MAP(
		S => Row_sel(6),
		B => B,
		not_B => notB,
		C => C(6),
		not_C => notC(6)
	);

	--RAM cell 7
	RAM_cell_07: RAM_cell PORT MAP(
		S => Row_sel(7),
		B => B,
		not_B => notB,
		C => C(7),
		not_C => notC(7)
	);

	--RAM cell 8
	RAM_cell_08: RAM_cell PORT MAP(
		S => Row_sel(8),
		B => B,
		not_B => notB,
		C => C(8),
		not_C => notC(8)
	);

	--RAM cell 9
	RAM_cell_09: RAM_cell PORT MAP(
		S => Row_sel(9),
		B => B,
		not_B => notB,
		C => C(9),
		not_C => notC(9)
	);

	--RAM cell 10
	RAM_cell_10: RAM_cell PORT MAP(
		S => Row_sel(10),
		B => B,
		not_B => notB,
		C => C(10),
		not_C => notC(10)
	);

	--RAM cell 11
	RAM_cell_11: RAM_cell PORT MAP(
		S => Row_sel(11),
		B => B,
		not_B => notB,
		C => C(11),
		not_C => notC(11)
	);

	--RAM cell 12
	RAM_cell_12: RAM_cell PORT MAP(
		S => Row_sel(12),
		B => B,
		not_B => notB,
		C => C(12),
		not_C => notC(12)
	);

	--RAM cell 13
	RAM_cell_13: RAM_cell PORT MAP(
		S => Row_sel(13),
		B => B,
		not_B => notB,
		C => C(13),
		not_C => notC(13)
	);

	--RAM cell 14
	RAM_cell_14: RAM_cell PORT MAP(
		S => Row_sel(14),
		B => B,
		not_B => notB,
		C => C(14),
		not_C => notC(14)
	);

	--RAM cell 15
	RAM_cell_15: RAM_cell PORT MAP(
		S => Row_sel(15),
		B => B,
		not_B => notB,
		C => C(15),
		not_C => notC(15)
	);

end Behavioral;

