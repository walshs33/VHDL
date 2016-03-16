LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY mux_4_1_16bit_tb IS
END mux_4_1_16bit_tb;
 
ARCHITECTURE behavior OF mux_4_1_16bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_4_1_16bit
    PORT(
         In0 : IN  std_logic_vector(15 downto 0);
         In1 : IN  std_logic_vector(15 downto 0);
         In2 : IN  std_logic_vector(15 downto 0);
         In3 : IN  std_logic_vector(15 downto 0);
         S : IN  std_logic;
         Z : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal In0 : std_logic_vector(15 downto 0) := (others => '0');
   signal In1 : std_logic_vector(15 downto 0) := (others => '0');
   signal In2 : std_logic_vector(15 downto 0) := (others => '0');
   signal In3 : std_logic_vector(15 downto 0) := (others => '0');
   signal S : std_logic := '0';

 	--Outputs
   signal Z : std_logic_vector(15 downto 0);
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_4_1_16bit PORT MAP (
          In0 => In0,
          In1 => In1,
			 In2 => In2,
			 In3 => In3,
          S => S,
          Z => Z
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 20 ns.
      wait for 20 ns;	

		In0 <= "1111111111111111";
		In1 <= "1111000011110000";
		In2 <= "0000111100001111";
		In3 <= "1010101010101010";
		
		wait for 10 ns;
		S0 <= '0';
		S1 <= '0';
		
		wait for 10 ns;
		S0 <= '0';
		S1 <= '1';
		
		wait for 10 ns;
		S0 <= '1';
		S1 <= '0';
		
		wait for 10 ns;
		S0 <= '1';
		S1 <= '1';	

      wait;
   end process;

END;
