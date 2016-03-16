LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY logic_cell_tb IS
END logic_cell_tb;
 
ARCHITECTURE behavior OF logic_cell_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT logic_cell
    PORT(
         S : IN  std_logic_vector(1 downto 0);
         A : IN  std_logic;
         B : IN  std_logic;
         G : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal S : std_logic_vector(1 downto 0) := (others => '0');
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal G : std_logic;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: logic_cell PORT MAP (
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
		A <= '1';
		B <= '1';
		S <= "00";

		wait for 20 ns;
		A <= '1';
		B <= '0';
		S <= "00";

		wait for 20 ns;
		A <= '1';
		B <= '0';
		S <= "01";

		wait for 20 ns;
		A <= '0';
		B <= '0';
		S <= "01";

		wait for 20 ns;
		A <= '1';
		B <= '0';
		S <= "10";

		wait for 20 ns;
		A <= '1';
		B <= '1';
		S <= "10";

		wait for 20 ns;
		A <= '1';
		S <= "11";
		
		wait for 20 ns;
		A <= '0';
		S <= "11";
      wait;
   end process;

END;
