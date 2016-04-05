LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY decoder_1_2_tb IS
END decoder_1_2_tb;
 
ARCHITECTURE behavior OF decoder_1_2_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decoder_1_2
    PORT(
         A : IN  std_logic;
         S : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(1 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decoder_1_2 PORT MAP (
          A => A,
          S => S
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		A <= '0';
		
		wait for 20 ns;
		A <= '1';

      wait;
   end process;

END;
