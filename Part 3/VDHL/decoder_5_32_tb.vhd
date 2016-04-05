LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY decoder_5_32_tb IS
END decoder_5_32_tb;
 
ARCHITECTURE behavior OF decoder_5_32_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decoder_5_32
    PORT(
         S : IN  std_logic_vector(4 downto 0);
         A : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal S : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal A : std_logic_vector(31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decoder_5_32 PORT MAP (
          S => S,
          A => A
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		S <= "00000";
		wait for 20 ns;
		
		S <= "00001";
		wait for 20 ns;
		
		S <= "00010";
		wait for 20 ns;
		
		S <= "00011";
		wait for 20 ns;
		
		S <= "00100";
		wait for 20 ns;
		
		S <= "00101";
		wait for 20 ns;
		
		S <= "00110";
		wait for 20 ns;
		
		S <= "00111";
		wait for 20 ns;
		
		S <= "01000";
		wait for 20 ns;
		
		S <= "01001";
		wait for 20 ns;
		
		S <= "01010";
		wait for 20 ns;
		
		S <= "01011";
		wait for 20 ns;
		
		S <= "01100";
		wait for 20 ns;
		
		S <= "01101";
		wait for 20 ns;
		
		S <= "01110";
		wait for 20 ns;
		
		S <= "01111";
		wait for 20 ns;
		
		S <= "10000";
		wait for 20 ns;
		
		S <= "10001";
		wait for 20 ns;
		
		S <= "10010";
		wait for 20 ns;
		
		S <= "10011";
		wait for 20 ns;
		
		S <= "10100";
		wait for 20 ns;
		
		S <= "10101";
		wait for 20 ns;
		
		S <= "10110";
		wait for 20 ns;
		
		S <= "10111";
		wait for 20 ns;
		
		S <= "11000";
		wait for 20 ns;
		
		S <= "11001";
		wait for 20 ns;
		
		S <= "11010";
		wait for 20 ns;
		
		S <= "11011";
		wait for 20 ns;
		
		S <= "11100";
		wait for 20 ns;
		
		S <= "11101";
		wait for 20 ns;
		
		S <= "11110";
		wait for 20 ns;
		
		S <= "11111";
		
      wait;
   end process;

END;
