LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY decoder_4_to_16_tb IS
END decoder_4_to_16_tb;
 
ARCHITECTURE behavior OF decoder_4_to_16_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decoder_4_to_16
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         Q0 : OUT  std_logic;
         Q1 : OUT  std_logic;
         Q2 : OUT  std_logic;
         Q3 : OUT  std_logic;
         Q4 : OUT  std_logic;
         Q5 : OUT  std_logic;
         Q6 : OUT  std_logic;
         Q7 : OUT  std_logic;
         Q8 : OUT  std_logic;
         Q9 : OUT  std_logic;
         Q10 : OUT  std_logic;
         Q11 : OUT  std_logic;
         Q12 : OUT  std_logic;
         Q13 : OUT  std_logic;
         Q14 : OUT  std_logic;
         Q15 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Q0 : std_logic;
   signal Q1 : std_logic;
   signal Q2 : std_logic;
   signal Q3 : std_logic;
   signal Q4 : std_logic;
   signal Q5 : std_logic;
   signal Q6 : std_logic;
   signal Q7 : std_logic;
   signal Q8 : std_logic;
   signal Q9 : std_logic;
   signal Q10 : std_logic;
   signal Q11 : std_logic;
   signal Q12 : std_logic;
   signal Q13 : std_logic;
   signal Q14 : std_logic;
   signal Q15 : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decoder_4_to_16 PORT MAP (
          A => A,
          Q0 => Q0,
          Q1 => Q1,
          Q2 => Q2,
          Q3 => Q3,
          Q4 => Q4,
          Q5 => Q5,
          Q6 => Q6,
          Q7 => Q7,
          Q8 => Q8,
          Q9 => Q9,
          Q10 => Q10,
          Q11 => Q11,
          Q12 => Q12,
          Q13 => Q13,
          Q14 => Q14,
          Q15 => Q15
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		A <= "0000";
		
		wait for 20 ns;	
		A <= "0001";
		
		wait for 20 ns;	
		A <= "0010";
		
		wait for 20 ns;	
		A <= "0011";
		
		wait for 20 ns;	
		A <= "0100";
		
		wait for 20 ns;	
		A <= "0101";
		
		wait for 20 ns;	
		A <= "0110";
		
		wait for 20 ns;	
		A <= "0111";
		
		wait for 20 ns;	
		A <= "1000";
		
		wait for 20 ns;	
		A <= "1001";
		
		wait for 20 ns;	
		A <= "1010";
		
		wait for 20 ns;	
		A <= "1011";
		
		wait for 20 ns;	
		A <= "1100";
		
		wait for 20 ns;	
		A <= "1101";
		
		wait for 20 ns;	
		A <= "1110";
		
		wait for 20 ns;	
		A <= "1111";

      wait;
   end process;

END;
