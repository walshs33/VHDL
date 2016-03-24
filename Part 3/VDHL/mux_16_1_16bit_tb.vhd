LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY mux_16_1_16bit_tb IS
END mux_16_1_16bit_tb;
 
ARCHITECTURE behavior OF mux_16_1_16bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_16_1_16bit
    PORT(
         In0 : IN  std_logic_vector(15 downto 0);
         In1 : IN  std_logic_vector(15 downto 0);
         In2 : IN  std_logic_vector(15 downto 0);
         In3 : IN  std_logic_vector(15 downto 0);
         In4 : IN  std_logic_vector(15 downto 0);
         In5 : IN  std_logic_vector(15 downto 0);
         In6 : IN  std_logic_vector(15 downto 0);
         In7 : IN  std_logic_vector(15 downto 0);
         In8 : IN  std_logic_vector(15 downto 0);
         In9 : IN  std_logic_vector(15 downto 0);
         In10 : IN  std_logic_vector(15 downto 0);
         In11 : IN  std_logic_vector(15 downto 0);
         In12 : IN  std_logic_vector(15 downto 0);
         In13 : IN  std_logic_vector(15 downto 0);
         In14 : IN  std_logic_vector(15 downto 0);
         In15 : IN  std_logic_vector(15 downto 0);
         S : IN  std_logic_vector(3 downto 0);
         Z : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal In0 : std_logic_vector(15 downto 0) := (others => '0');
   signal In1 : std_logic_vector(15 downto 0) := (others => '0');
   signal In2 : std_logic_vector(15 downto 0) := (others => '0');
   signal In3 : std_logic_vector(15 downto 0) := (others => '0');
   signal In4 : std_logic_vector(15 downto 0) := (others => '0');
   signal In5 : std_logic_vector(15 downto 0) := (others => '0');
   signal In6 : std_logic_vector(15 downto 0) := (others => '0');
   signal In7 : std_logic_vector(15 downto 0) := (others => '0');
   signal In8 : std_logic_vector(15 downto 0) := (others => '0');
   signal In9 : std_logic_vector(15 downto 0) := (others => '0');
   signal In10 : std_logic_vector(15 downto 0) := (others => '0');
   signal In11 : std_logic_vector(15 downto 0) := (others => '0');
   signal In12 : std_logic_vector(15 downto 0) := (others => '0');
   signal In13 : std_logic_vector(15 downto 0) := (others => '0');
   signal In14 : std_logic_vector(15 downto 0) := (others => '0');
   signal In15 : std_logic_vector(15 downto 0) := (others => '0');
   signal S : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Z : std_logic_vector(15 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_16_1_16bit PORT MAP (
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
          S => S,
          Z => Z
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		In0 <= "0000000000000001";
		In1 <= "0000000000000011";
		In2 <= "0000000000000111";
		In3 <= "0000000000001111";
		In4 <= "0000000000011111";
		In5 <= "0000000000111111";
		In6 <= "0000000001111111";
		In7 <= "0000000011111111";
		In8 <= "0000000111111111";
		In9 <= "0000001111111111";
		In10 <= "0000011111111111";
		In11 <= "0000111111111111";
		In12 <= "0001111111111111";
		In13 <= "0011111111111111";
		In14 <= "0111111111111111";
		In15 <= "1111111111111111";
		
		wait for 20 ns;
		S <= "0000";
		
		wait for 20 ns;
		S <= "0001";
		
		wait for 20 ns;
		S <= "0010";
		
		wait for 20 ns;
		S <= "0011";
		
		wait for 20 ns;
		S <= "0100";
		
		wait for 20 ns;
		S <= "0101";
		
		wait for 20 ns;
		S <= "0110";
		
		wait for 20 ns;
		S <= "0111";
		
		wait for 20 ns;
		S <= "1000";
		
		wait for 20 ns;
		S <= "1001";
		
		wait for 20 ns;
		S <= "1010";
		
		wait for 20 ns;
		S <= "1011";
		
		wait for 20 ns;
		S <= "1100";
		
		wait for 20 ns;
		S <= "1101";
		
		wait for 20 ns;
		S <= "1110";
		
		wait for 20 ns;
		S <= "1111";
		
      wait;
   end process;

END;
