LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY function_unit_tb IS
END function_unit_tb;
 
ARCHITECTURE behavior OF function_unit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT function_unit
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         S : IN  std_logic_vector(4 downto 0);
         F : OUT  std_logic_vector(15 downto 0);
         V : OUT  std_logic;
         C : OUT  std_logic;
         N : OUT  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal B : std_logic_vector(15 downto 0) := (others => '0');
   signal S : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal F : std_logic_vector(15 downto 0);
   signal V : std_logic;
   signal C : std_logic;
   signal N : std_logic;
   signal Z : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: function_unit PORT MAP (
          A => A,
          B => B,
          S => S,
          F => F,
          V => V,
          C => C,
          N => N,
          Z => Z
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		A <= "1111111111111111";
		B <= "1000111100000000";
		S <= "00000";
		
		wait for 20 ns;
		S <="00001";
		
		wait for 20 ns;
		S <="00010";
		
		wait for 20 ns;
		S <="00011";
		
		wait for 20 ns;
		S <="00100";
		
		wait for 20 ns;
		S <="00101";
		
		wait for 20 ns;
		S <="00110";
		
		wait for 20 ns;
		S <="00111";
		
		wait for 20 ns;
		S <="01000";
		
		wait for 20 ns;
		S <="01010";
		
		wait for 20 ns;
		S <="01100";
		
		wait for 20 ns;
		S <="01110";
		
		wait for 20 ns;
		S <="10000";
		
		wait for 20 ns;
		S <="10100";
		
		wait for 20 ns;
		S <="11000";

      wait;
   end process;

END;
