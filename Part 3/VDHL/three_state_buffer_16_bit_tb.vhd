LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY three_state_buffer_16_bit_tb IS
END three_state_buffer_16_bit_tb;
 
ARCHITECTURE behavior OF three_state_buffer_16_bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT three_state_buffer_16_bit
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         enable : IN  std_logic;
         Y : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal enable : std_logic := '0';

 	--Outputs
   signal Y : std_logic_vector(15 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: three_state_buffer_16_bit PORT MAP (
          A => A,
          enable => enable,
          Y => Y
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		A <= "1111000011110000";
		enable <= '0';
		
		wait for 20 ns;
		enable <= '1';

      wait;
   end process;

END;
