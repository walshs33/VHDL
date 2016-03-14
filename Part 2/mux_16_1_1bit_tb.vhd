LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY mux_16_1_1bit_tb IS
END mux_16_1_1bit_tb;
 
ARCHITECTURE behavior OF mux_16_1_1bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_16_1_1bit
    PORT(
         In0 : IN  std_logic;
         In1 : IN  std_logic;
         In2 : IN  std_logic;
         In3 : IN  std_logic;
         In4 : IN  std_logic;
         In5 : IN  std_logic;
         In6 : IN  std_logic;
         In7 : IN  std_logic;
         In8 : IN  std_logic;
         In9 : IN  std_logic;
         In10 : IN  std_logic;
         In11 : IN  std_logic;
         In12 : IN  std_logic;
         In13 : IN  std_logic;
         In14 : IN  std_logic;
         In15 : IN  std_logic;
         S0 : IN  std_logic;
         S1 : IN  std_logic;
         S2 : IN  std_logic;
         S3 : IN  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    
   --Inputs
   signal In0 : std_logic := '0';
   signal In1 : std_logic := '0';
   signal In2 : std_logic := '0';
   signal In3 : std_logic := '0';
   signal In4 : std_logic := '0';
   signal In5 : std_logic := '0';
   signal In6 : std_logic := '0';
   signal In7 : std_logic := '0';
   signal In8 : std_logic := '0';
   signal In9 : std_logic := '0';
   signal In10 : std_logic := '0';
   signal In11 : std_logic := '0';
   signal In12 : std_logic := '0';
   signal In13 : std_logic := '0';
   signal In14 : std_logic := '0';
   signal In15 : std_logic := '0';
   signal S0 : std_logic := '0';
   signal S1 : std_logic := '0';
   signal S2 : std_logic := '0';
   signal S3 : std_logic := '0';

 	--Outputs
   signal Z : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_16_1_1bit PORT MAP (
          In0 => In0,
          In1 => In1,
          In2 => In2,
          In3 => In3,
          In4 => In4,
          In5 => In5,
          In6 => In6,
          In7 => In7,
          In8 => In8,
          In9 => In9,
          In10 => In10,
          In11 => In11,
          In12 => In12,
          In13 => In13,
          In14 => In14,
          In15 => In15,
          S0 => S0,
          S1 => S1,
          S2 => S2,
          S3 => S3,
          Z => Z
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		In0 <= '1';
		
		wait for 10 ns;
		S0 <= '0';
		S1 <= '0';
		S2 <= '0';
		S3 <= '0';
		
		wait for 10 ns;	
		In0 <= '0';
		In1 <= '1';
		
		wait for 10 ns;
		S0 <= '0';
		S1 <= '0';
		S2 <= '0';
		S3 <= '1';
		
		wait for 10 ns;	
		In1 <= '0';
		In2 <= '1';
		
		wait for 10 ns;
		S0 <= '0';
		S1 <= '0';
		S2 <= '1';
		S3 <= '0';
		
		wait for 10 ns;	
		In2 <= '0';
		In3 <= '1';
		
		wait for 10 ns;
		S0 <= '0';
		S1 <= '0';
		S2 <= '1';
		S3 <= '1';
		
		wait for 10 ns;	
		In3 <= '0';
		In4 <= '1';
		
		wait for 10 ns;
		S0 <= '0';
		S1 <= '1';
		S2 <= '0';
		S3 <= '0';
		
		wait for 10 ns;	
		In4 <= '0';
		In5 <= '1';
		
		wait for 10 ns;
		S0 <= '0';
		S1 <= '1';
		S2 <= '0';
		S3 <= '1';
		
		wait for 10 ns;	
		In5 <= '0';
		In6 <= '1';
		
		wait for 10 ns;
		S0 <= '0';
		S1 <= '1';
		S2 <= '1';
		S3 <= '0';
		
		wait for 10 ns;	
		In6 <= '0';
		In7 <= '1';
		
		wait for 10 ns;
		S0 <= '0';
		S1 <= '1';
		S2 <= '1';
		S3 <= '1';
		
		wait for 10 ns;	
		In7 <= '0';
		In8 <= '1';
		
		wait for 10 ns;
		S0 <= '1';
		S1 <= '0';
		S2 <= '0';
		S3 <= '0';
		
		wait for 10 ns;	
		In8 <= '0';
		In9 <= '1';
		
		wait for 10 ns;
		S0 <= '1';
		S1 <= '0';
		S2 <= '0';
		S3 <= '1';
		
		wait for 10 ns;	
		In9 <= '0';
		In10 <= '1';
		
		wait for 10 ns;
		S0 <= '1';
		S1 <= '0';
		S2 <= '1';
		S3 <= '0';
		
		wait for 10 ns;	
		In10 <= '0';
		In11 <= '1';
		
		wait for 10 ns;
		S0 <= '1';
		S1 <= '0';
		S2 <= '1';
		S3 <= '1';
		
		wait for 10 ns;	
		In11 <= '0';
		In12 <= '1';
		
		wait for 10 ns;
		S0 <= '1';
		S1 <= '1';
		S2 <= '0';
		S3 <= '0';
		
		wait for 10 ns;	
		In12 <= '0';
		In13 <= '1';
		
		wait for 10 ns;
		S0 <= '1';
		S1 <= '1';
		S2 <= '0';
		S3 <= '1';
		
		wait for 10 ns;	
		In13 <= '0';
		In14 <= '1';
		
		wait for 10 ns;
		S0 <= '1';
		S1 <= '1';
		S2 <= '1';
		S3 <= '0';
		
		wait for 10 ns;	
		In14 <= '0';
		In15 <= '1';
		
		wait for 10 ns;
		S0 <= '1';
		S1 <= '1';
		S2 <= '1';
		S3 <= '1';
		
      wait;
   end process;

END;
