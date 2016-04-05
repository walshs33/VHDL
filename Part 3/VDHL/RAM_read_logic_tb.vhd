LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY RAM_read_logic_tb IS
END RAM_read_logic_tb;
 
ARCHITECTURE behavior OF RAM_read_logic_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM_read_logic
    PORT(
         C : IN  std_logic_vector(15 downto 0);
         notC : IN  std_logic_vector(15 downto 0);
         Bit_sel : IN  std_logic;
         D_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal C : std_logic_vector(15 downto 0) := (others => '0');
   signal notC : std_logic_vector(15 downto 0) := (others => '0');
   signal Bit_sel : std_logic := '0';

 	--Outputs
   signal D_out : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM_read_logic PORT MAP (
          C => C,
          notC => notC,
          Bit_sel => Bit_sel,
          D_out => D_out
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		C <= "0000000000000000";
		notC <= "0000000001000000";
		Bit_sel <= '0';
		
		wait for 20 ns;
		Bit_sel <= '1';
		
		wait for 20 ns;
		Bit_sel <= '0';
		C <= "0000000001000000";
		notC <= "0000000000000000";
		
		wait for 20 ns;
		Bit_sel <= '1';
		
      wait;
   end process;

END;
