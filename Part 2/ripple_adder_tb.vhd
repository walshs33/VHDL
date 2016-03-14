LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY ripple_adder_tb IS
END ripple_adder_tb;
 
ARCHITECTURE behavior OF ripple_adder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ripple_adder_16bit
    PORT(
         X : IN  std_logic_vector(15 downto 0);
         Y : IN  std_logic_vector(15 downto 0);
         Cin : IN  std_logic;
         S : OUT  std_logic_vector(15 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(15 downto 0) := (others => '0');
   signal Y : std_logic_vector(15 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(15 downto 0);
   signal Cout : std_logic;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ripple_adder_16bit PORT MAP (
          X => X,
          Y => Y,
          Cin => Cin,
          S => S,
          Cout => Cout
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		X <= "0000000000000001";
		Y <= "0000000000000001";
		Cin <='0';
		
		wait for 20 ns;
		X <="1111111111111111";
		
		wait for 20 ns;
		Cin <= '1';


      wait;
   end process;

END;
