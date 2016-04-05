LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY CAR_tb IS
END CAR_tb;
 
ARCHITECTURE behavior OF CAR_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CAR
    PORT(
         clk : IN  std_logic;
         input : IN  std_logic_vector(7 downto 0);
         output : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal input : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CAR PORT MAP (
          clk => clk,
          input => input,
          output => output
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		input <= "10011001";

      wait;
   end process;

END;
