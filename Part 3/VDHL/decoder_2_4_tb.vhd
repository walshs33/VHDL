LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY decoder_2_4_tb IS
END decoder_2_4_tb;
 
ARCHITECTURE behavior OF decoder_2_4_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decoder_2_4
    PORT(
         A : IN  std_logic_vector(1 downto 0);
         Q0 : OUT  std_logic;
         Q1 : OUT  std_logic;
         Q2 : OUT  std_logic;
         Q3 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Q0 : std_logic;
   signal Q1 : std_logic;
   signal Q2 : std_logic;
   signal Q3 : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decoder_2_4 PORT MAP (
          A => A,
          Q0 => Q0,
          Q1 => Q1,
          Q2 => Q2,
          Q3 => Q3
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		A <= "00";
		
		wait for 20 ns;
		A <= "01";
		
		wait for 20 ns;
		A <= "10";
		
		wait for 20 ns;
		A <= "11";

      wait;
   end process;

END;
