LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY overflow_tb IS
END overflow_tb;
 
ARCHITECTURE behavior OF overflow_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT overflow
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         S : IN  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal S : std_logic := '0';

 	--Outputs
   signal Z : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: overflow PORT MAP (
          A => A,
          B => B,
          S => S,
          Z => Z
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		A <= '0';
		B <= '0';
		S <= '0';
		
		wait for 20 ns;
		A <= '0';
		B <= '0';
		S <= '1';
		
		wait for 20 ns;
		A <= '1';
		B <= '1';
		S <= '1';
		
		wait for 20 ns;
		A <= '1';
		B <= '1';
		S <= '0';
		
		
		
      wait;
   end process;

END;
