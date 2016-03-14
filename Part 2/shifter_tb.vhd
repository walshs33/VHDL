LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY shifter_tb IS
END shifter_tb;
 
ARCHITECTURE behavior OF shifter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shifter
    PORT(
         B : IN  std_logic_vector(15 downto 0);
         H : OUT  std_logic_vector(15 downto 0);
         S : IN  std_logic_vector(1 downto 0);
         In_r : IN  std_logic;
         In_l : IN  std_logic
--         Out_r : OUT  std_logic;
--         Out_l : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal B : std_logic_vector(15 downto 0) := (others => '0');
   signal S : std_logic_vector(1 downto 0) := (others => '0');
   signal In_r : std_logic := '0';
   signal In_l : std_logic := '0';

 	--Outputs
   signal H : std_logic_vector(15 downto 0);
--   signal Out_r : std_logic;
--   signal Out_l : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shifter PORT MAP (
          B => B,
          H => H,
          S => S,
          In_r => In_r,
          In_l => In_l
--          Out_r => Out_r,
--          Out_l => Out_l
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		B <= "1001100110011001";
		S <= "00";
		In_l <= '0';
		In_r <= '0';
		
		wait for 20 ns;
		S <= "01";
		
		wait for 20 ns;
		S <= "10";

      wait;
   end process;

END;
