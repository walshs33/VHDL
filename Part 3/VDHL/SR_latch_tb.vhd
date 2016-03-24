LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY SR_latch_tb IS
END SR_latch_tb;
 
ARCHITECTURE behavior OF SR_latch_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SR_latch
    PORT(
         S : IN  std_logic;
         R : IN  std_logic;
         Q : OUT  std_logic;
         not_Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal S : std_logic := '0';
   signal R : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal not_Q : std_logic;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SR_latch PORT MAP (
          S => S,
          R => R,
          Q => Q,
          not_Q => not_Q
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		S <= '0';
		R <= '0';
		
		wait for 20 ns;
		R <= '1';
		
		wait for 20 ns;
		R <= '0';
		
		wait for 20 ns;
		S <= '1';
		
		wait for 20 ns;
		S <= '0';

      wait;
   end process;

END;
