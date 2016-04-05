library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RAM_write_logic is
    Port ( RW : in  STD_LOGIC;
			  Bit_sel : in STD_LOGIC;
           D : in  STD_LOGIC;
           B : out  STD_LOGIC;
           notB : out  STD_LOGIC);
end RAM_write_logic;

architecture Behavioral of RAM_write_logic is

--signals
	signal read_and, not_RW : STD_LOGIC;
	
begin

	not_RW <= not RW;
	read_and <= (not_RW) and Bit_sel;
	B <= D and read_and;
	notB <= (not D) and read_and;

end Behavioral;