LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mux_8_1_16bit_tb IS
END mux_8_1_16bit_tb;
 
ARCHITECTURE behavior OF mux_8_1_16bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_8_1_16bit
    PORT(
         In0 : IN  std_logic_vector(15 downto 0);
         In1 : IN  std_logic_vector(15 downto 0);
         In2 : IN  std_logic_vector(15 downto 0);
         In3 : IN  std_logic_vector(15 downto 0);
         In4 : IN  std_logic_vector(15 downto 0);
         In5 : IN  std_logic_vector(15 downto 0);
         In6 : IN  std_logic_vector(15 downto 0);
         In7 : IN  std_logic_vector(15 downto 0);
         S0 : IN  std_logic;
         S1 : IN  std_logic;
         S2 : IN  std_logic;
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
   signal S0 : std_logic := '0';
   signal S1 : std_logic := '0';
   signal S2 : std_logic := '0';

 	--Outputs
   signal Z : std_logic_vector(15 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_8_1_16bit PORT MAP (
          In0 => In0,
          In1 => In1,
          In2 => In2,
          In3 => In3,
          In4 => In4,
          In5 => In5,
          In6 => In6,
          In7 => In7,
          S0 => S0,
          S1 => S1,
          S2 => S2,
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
		
		wait for 50 ns;
		S0 <= '0';
		S1 <= '0';
		S2 <= '0';
		
		wait for 50 ns;
		S0 <= '0';
		S1 <= '0';
		S2 <= '1';
		
		wait for 50 ns;
		S0 <= '0';
		S1 <= '1';
		S2 <= '0';
		
		wait for 50 ns;
		S0 <= '0';
		S1 <= '1';
		S2 <= '1';
		
		wait for 50 ns;
		S0 <= '1';
		S1 <= '0';
		S2 <= '0';
		
		wait for 50 ns;
		S0 <= '1';
		S1 <= '0';
		S2 <= '1';
		
		wait for 50 ns;
		S0 <= '1';
		S1 <= '1';
		S2 <= '0';
		
		wait for 50 ns;
		S0 <= '1';
		S1 <= '1';
		S2 <= '1';
		
      wait;
   end process;

END;
