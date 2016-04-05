LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY memory_module_tb IS
END memory_module_tb;
 
ARCHITECTURE behavior OF memory_module_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT memory_module
    PORT(
         D_in : IN  std_logic_vector(15 downto 0);
         D_out : OUT  std_logic_vector(15 downto 0);
         Address : IN  std_logic_vector(15 downto 0);
         RW : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D_in : std_logic_vector(15 downto 0) := (others => '0');
   signal Address : std_logic_vector(15 downto 0) := (others => '0');
   signal RW : std_logic := '0';

 	--Outputs
   signal D_out : std_logic_vector(15 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: memory_module PORT MAP (
          D_in => D_in,
          D_out => D_out,
          Address => Address,
          RW => RW
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		D_in <= "0000111100001111";
		Address <= "0000000000000000";
		RW <= '0';
		
		wait for 20 ns;
		RW <= '1';
		
		wait for 20 ns;
		D_in <= "1111000011110000";
		
		wait for 20 ns;
		RW <= '0';
		
		wait for 20 ns;
		RW <= '1';

      wait;
   end process;

END;
