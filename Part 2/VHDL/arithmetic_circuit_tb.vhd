LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY arithmetic_circuit_tb IS
END arithmetic_circuit_tb;
 
ARCHITECTURE behavior OF arithmetic_circuit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT arithmetic_circuit
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         S : IN  std_logic_vector(1 downto 0);
         Cin : IN  std_logic;
         G : OUT  std_logic_vector(15 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal B : std_logic_vector(15 downto 0) := (others => '0');
   signal S : std_logic_vector(1 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal G : std_logic_vector(15 downto 0);
   signal Cout : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: arithmetic_circuit PORT MAP (
          A => A,
          B => B,
          S => S,
          Cin => Cin,
          G => G,
          Cout => Cout
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		--test G=A
		S <= "00";
		A <= "1100000011000000";
		B <= "0000110000001100";
		Cin <= '0';
		
		--test G=A+1
		wait for 20 ns;
		Cin <= '1';
		
		--test G=A+B
		wait for 20 ns;
		Cin <= '0';
		S <= "01";
		
		--test G=A+B+1
		wait for 20 ns;
		Cin <= '1';
		
		--test G=A+not B
		wait for 20 ns;
		Cin <= '0';
		S <= "10";
		
		--test G=A+not B+1
		wait for 20 ns;
		Cin <= '1';
		
		--test G=A-1
		wait for 20 ns;
		A <= "0000000000001111";
		Cin <= '0';
		S <= "11";
		
		--test G=A
		wait for 20 ns;
		Cin <= '1';

      wait;
   end process;

END;
