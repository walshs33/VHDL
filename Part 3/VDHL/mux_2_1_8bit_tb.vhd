LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY mux_2_1_8bit_tb IS
END mux_2_1_8bit_tb;
 
ARCHITECTURE behavior OF mux_2_1_8bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_2_1_8bit
    PORT(
         In0 : IN  std_logic_vector(7 downto 0);
         In1 : IN  std_logic_vector(7 downto 0);
         S : IN  std_logic;
         Z : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal In0 : std_logic_vector(7 downto 0) := (others => '0');
   signal In1 : std_logic_vector(7 downto 0) := (others => '0');
   signal S : std_logic := '0';

 	--Outputs
   signal Z : std_logic_vector(7 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_2_1_8bit PORT MAP (
          In0 => In0,
          In1 => In1,
          S => S,
          Z => Z
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		In0 <= "11110000";
		In1 <= "00001111";
		S <= '0';
		
		wait for 20 ns;
		S <= '1';

      wait;
   end process;

END;
