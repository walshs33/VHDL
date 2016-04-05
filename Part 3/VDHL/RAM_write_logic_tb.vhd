LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY RAM_write_logic_tb IS
END RAM_write_logic_tb;
 
ARCHITECTURE behavior OF RAM_write_logic_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM_write_logic
    PORT(
         RW : IN  std_logic;
         Bit_sel : IN  std_logic;
         D : IN  std_logic;
         B : OUT  std_logic;
         notB : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal RW : std_logic := '0';
   signal Bit_sel : std_logic := '0';
   signal D : std_logic := '0';

 	--Outputs
   signal B : std_logic;
   signal notB : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM_write_logic PORT MAP (
          RW => RW,
          Bit_sel => Bit_sel,
          D => D,
          B => B,
          notB => notB
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		RW <= '0';
		D <= '0';
		Bit_sel <= '0';
		
		wait for 20 ns;
		Bit_sel <= '1';
		
		wait for 20 ns;
		D <= '1';
		
		wait for 20 ns;
		RW <= '1';
		
		wait for 20 ns;
		D <= '0';

      wait;
   end process;

END;
