LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY logic_circuit_tb IS
END logic_circuit_tb;
 
ARCHITECTURE behavior OF logic_circuit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT logic_circuit
    PORT(
         S : IN  std_logic_vector(1 downto 0);
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         G : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal S : std_logic_vector(1 downto 0) := (others => '0');
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal B : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal G : std_logic_vector(15 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: logic_circuit PORT MAP (
          S => S,
          A => A,
          B => B,
          G => G
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		--test AND
		A <= "0000111100000000";
		B <= "0000100100000000";
		S <= "00";
		
		wait for 20 ns;
		--test OR
		S <= "01";
		
		wait for 20 ns;
		--test XOR
		S <= "10";
		
		wait for 20 ns;
		--test NOT
		S <= "11";
		
      wait;
   end process;

END;
