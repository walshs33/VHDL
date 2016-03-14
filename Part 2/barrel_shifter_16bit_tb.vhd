LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY barrel_shifter_16bit_tb IS
END barrel_shifter_16bit_tb;
 
ARCHITECTURE behavior OF barrel_shifter_16bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT barrel_shifter_16bit
    PORT(
         D : IN  std_logic_vector(15 downto 0);
         Y : OUT  std_logic_vector(15 downto 0);
         Sel0 : IN  std_logic;
         Sel1 : IN  std_logic;
         Sel2 : IN  std_logic;
         Sel3 : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic_vector(15 downto 0) := (others => '0');
   signal Sel0 : std_logic := '0';
   signal Sel1 : std_logic := '0';
   signal Sel2 : std_logic := '0';
   signal Sel3 : std_logic := '0';

 	--Outputs
   signal Y : std_logic_vector(15 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: barrel_shifter_16bit PORT MAP (
          D => D,
          Y => Y,
          Sel0 => Sel0,
          Sel1 => Sel1,
          Sel2 => Sel2,
          Sel3 => Sel3
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		D <= "1001100110011001";
		Sel0 <= '0';
		Sel1 <= '0';
		Sel2 <= '0';
		Sel3 <= '0';
		--shifting left
		wait for 20 ns;
		Sel3 <= '1';
		
		wait for 20 ns;
		Sel2 <= '1';
		Sel3 <= '0';
		
		wait for 20 ns;
		Sel3 <= '1';
				
		wait for 20 ns;
		Sel1 <= '1';
		Sel2 <= '0';
		Sel3 <= '0';
		
		wait for 20 ns;
		Sel3 <= '1';
		
		wait for 20 ns;
		Sel2 <= '1';
		Sel3 <= '0';
		
		wait for 20 ns;
		Sel3 <= '1';
		
		wait for 20 ns;
		Sel0 <= '1';
		Sel1 <= '0';
		Sel2 <= '0';
		Sel3 <= '0';
		
		wait for 20 ns;
		Sel3 <= '1';
		
		wait for 20 ns;
		Sel2 <= '1';
		Sel3 <= '0';
		
		wait for 20 ns;
		Sel3 <= '1';
		
		wait for 20 ns;
		Sel1 <= '1';
		Sel2 <= '0';
		Sel3 <= '0';
		
		wait for 20 ns;
		Sel3 <= '1';
		
		wait for 20 ns;
		Sel2 <= '1';
		Sel3 <= '0';
		
		wait for 20 ns;
		Sel3 <= '1';
		

		--shifting right		
		wait for 20 ns;
		Sel0 <= '0';
		Sel1 <= '0';
		Sel2 <= '0';
		Sel3 <= '0';	
		
		wait for 20 ns;
		Sel0 <= '1';
		Sel1 <= '0';
		Sel2 <= '0';
		Sel3 <= '0';
		
		wait for 20 ns;
		Sel0 <= '0';
		Sel1 <= '1';
		Sel2 <= '0';
		Sel3 <= '0';	
		
		wait for 20 ns;
		Sel0 <= '1';
		Sel1 <= '1';
		Sel2 <= '0';
		Sel3 <= '0';
		
		wait for 20 ns;
		Sel0 <= '0';
		Sel1 <= '0';
		Sel2 <= '1';
		Sel3 <= '0';
		
		wait for 20 ns;
		Sel0 <= '1';
		Sel1 <= '0';
		Sel2 <= '1';
		Sel3 <= '0';
		
		wait for 20 ns;
		Sel0 <= '0';
		Sel1 <= '1';
		Sel2 <= '1';
		Sel3 <= '0';
		
		wait for 20 ns;
		Sel0 <= '1';
		Sel1 <= '1';
		Sel2 <= '1';
		Sel3 <= '0';
		
		wait for 20 ns;
		Sel0 <= '0';
		Sel1 <= '0';
		Sel2 <= '0';
		Sel3 <= '1';
		
		wait for 20 ns;
		Sel0 <= '1';
		Sel1 <= '0';
		Sel2 <= '0';
		Sel3 <= '1';
		
		wait for 20 ns;
		Sel0 <= '0';
		Sel1 <= '1';
		Sel2 <= '0';
		Sel3 <= '1';
		
		wait for 20 ns;
		Sel0 <= '1';
		Sel1 <= '1';
		Sel2 <= '0';
		Sel3 <= '1';
		
		wait for 20 ns;
		Sel0 <= '0';
		Sel1 <= '0';
		Sel2 <= '1';
		Sel3 <= '1';
		
		wait for 20 ns;
		Sel0 <= '1';
		Sel1 <= '0';
		Sel2 <= '1';
		Sel3 <= '1';
		
		wait for 20 ns;
		Sel0 <= '0';
		Sel1 <= '1';
		Sel2 <= '1';
		Sel3 <= '1';
		
		wait for 20 ns;
		Sel0 <= '1';
		Sel1 <= '1';
		Sel2 <= '1';
		Sel3 <= '1';


      wait;
   end process;

END;
