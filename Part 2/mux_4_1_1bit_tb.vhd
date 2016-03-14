LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY mux_4_1_1bit_tb IS
END mux_4_1_1bit_tb;
 
ARCHITECTURE behavior OF mux_4_1_1bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_4_1_1bit
    PORT(
         S0 : IN  std_logic;
         S1 : IN  std_logic;
         In0 : IN  std_logic;
         In1 : IN  std_logic;
         In2 : IN  std_logic;
         In3 : IN  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal S0 : std_logic := '0';
   signal S1 : std_logic := '0';
   signal In0 : std_logic := '0';
   signal In1 : std_logic := '0';
   signal In2 : std_logic := '0';
   signal In3 : std_logic := '0';

 	--Outputs
   signal Z : std_logic;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_4_1_1bit PORT MAP (
          S0 => S0,
          S1 => S1,
          In0 => In0,
          In1 => In1,
          In2 => In2,
          In3 => In3,
          Z => Z
        );

   -- Stimulus process
   stim_proc: process
   begin		
	
		In0 <= '0';
		In1 <= '1';
		In2 <= '0';
		In3 <= '1';
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		S1 <= '1';
		
		wait for 20 ns;
		S0 <= '1';
		S1 <= '0';
		
		wait for 20 ns;
		S1 <= '1';

      wait;
   end process;

END;
