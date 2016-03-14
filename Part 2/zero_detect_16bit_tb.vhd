LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY zero_detect_16bit_tb IS
END zero_detect_16bit_tb;
 
ARCHITECTURE behavior OF zero_detect_16bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT zero_detect_16bit
    PORT(
         S : IN  std_logic_vector(15 downto 0);
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal S : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal Z : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: zero_detect_16bit PORT MAP (
          S => S,
          Z => Z
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		S <= "0000000000000000";
		
		wait for 20 ns;
		S <= "0000000000000001";
		
      wait;
   end process;

END;
