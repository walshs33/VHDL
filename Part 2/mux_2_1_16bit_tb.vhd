LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY mux_2_1_16bit_tb IS
END mux_2_1_16bit_tb;
 
ARCHITECTURE behavior OF mux_2_1_16bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_2_1_16bit
    PORT(
         In0 : IN  std_logic_vector(15 downto 0);
         In1 : IN  std_logic_vector(15 downto 0);
         S : IN  std_logic;
         Z : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal In0 : std_logic_vector(15 downto 0) := (others => '0');
   signal In1 : std_logic_vector(15 downto 0) := (others => '0');
   signal S : std_logic := '0';

 	--Outputs
   signal Z : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_2_1_16bit PORT MAP (
          In0 => In0,
          In1 => In1,
          S => S,
          Z => Z
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 20 ns.
      wait for 20 ns;	

		In0 <= "1111111111111111";
		In1 <= "1010101010101010";

		wait for 10 ns;
		S <= '0';
		
		wait for 10 ns;
		S <= '1';		

      -- insert stimulus here 

      wait;
   end process;

END;
