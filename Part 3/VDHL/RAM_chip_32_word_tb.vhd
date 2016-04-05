LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY RAM_chip_32_word_tb IS
END RAM_chip_32_word_tb;
 
ARCHITECTURE behavior OF RAM_chip_32_word_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM_chip_32_word
    PORT(
         Row : IN  std_logic_vector(3 downto 0);
         Col : IN  std_logic;
         D_in : IN  std_logic_vector(15 downto 0);
         D_out : OUT  std_logic_vector(15 downto 0);
         Chip_sel : IN  std_logic;
         RW : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Row : std_logic_vector(3 downto 0) := (others => '0');
   signal Col : std_logic := '0';
   signal D_in : std_logic_vector(15 downto 0) := (others => '0');
   signal Chip_sel : std_logic := '0';
   signal RW : std_logic := '0';
	
	--Outputs
	signal D_out : std_logic_vector(15 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM_chip_32_word PORT MAP (
          Row => Row,
          Col => Col,
          D_in => D_in,
          D_out => D_out,
          Chip_sel => Chip_sel,
          RW => RW
        ); 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		Row <= "0000";
		Col <= '0';
		D_in <= "0000111100001111";
		Chip_sel <= '0';
		RW <= '0';
		
		wait for 20 ns;
		Chip_sel <= '1';
		
		wait for 20 ns;
		RW <= '1';
		
		wait for 20 ns;
		D_in <= "1111000011110000";
		
		wait for 20 ns;
		Row <= "0001";
		
		wait for 20 ns;
		RW <= '0';

      wait;
   end process;

END;
