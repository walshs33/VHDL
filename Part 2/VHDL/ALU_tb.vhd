LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY ALU_tb IS
END ALU_tb;
 
ARCHITECTURE behavior OF ALU_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         S : IN  std_logic_vector(2 downto 0);
         Cin : IN  std_logic;
         G : OUT  std_logic_vector(15 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal B : std_logic_vector(15 downto 0) := (others => '0');
   signal S : std_logic_vector(2 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal G : std_logic_vector(15 downto 0);
   signal Cout : std_logic;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
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
		--test transfer
		A <= "0000111100000000";
		B <= "0000100100000001";
		S <= "000";
		Cin <= '0';
		
		wait for 20 ns;
		--test increment
		Cin <= '1';

		wait for 20 ns;
		--test add
		S <= "001";
		Cin <= '0';
		
		wait for 20 ns;
		--test add with carry
		Cin <= '1';
		
		wait for 20 ns;
		--test add 1s complement
		S <= "010";
		Cin <= '0';
		
		wait for 20 ns;
		--test subtraction
		Cin <= '1';
 		
		wait for 20 ns;
		--test decrement
		A <= "0000000000000010";
		Cin <= '0';
		S <= "011";
		
		wait for 20 ns;
		--test transfer #2
		A <= "0000111100000000";
		Cin <= '1';
		
		wait for 20 ns;
		--test AND
		S <= "100";
		
		wait for 20 ns;
		--test OR
		S <= "101";
		
		wait for 20 ns;
		--test XOR
		S <= "110";
		
		wait for 20 ns;
		--test NOT
		S <= "111";
		wait;

   end process;

END;
