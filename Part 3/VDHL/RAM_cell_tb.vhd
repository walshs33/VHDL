LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY RAM_cell_tb IS
END RAM_cell_tb;
 
ARCHITECTURE behavior OF RAM_cell_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM_cell
    PORT(
         S : IN  std_logic;
         B : IN  std_logic;
         not_B : IN  std_logic;
         C : OUT  std_logic;
         not_C : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal S : std_logic := '0';
   signal B : std_logic := '0';
   signal not_B : std_logic := '0';

 	--Outputs
   signal C : std_logic;
   signal not_C : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM_cell PORT MAP (
          S => S,
          B => B,
          not_B => not_B,
          C => C,
          not_C => not_C
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		--test write
		S <= '0';
		B <= '0';
		not_B <= '1';
		
		wait for 20 ns;
		B <= '1';
		not_B <= '0';
		
		wait for 20 ns;
		S <= '1';
		
		--test read
		wait for 20 ns;
		S <= '0';
		
		wait for 20 ns;
		B <= '0';
		not_B <= '0';
		
		wait for 20 ns;
		S <= '1';

      wait;
   end process;

END;
