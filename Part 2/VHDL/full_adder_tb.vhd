LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY full_adder_tb IS
END full_adder_tb;
 
ARCHITECTURE behavior OF full_adder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_adder
    PORT(
         X : IN  std_logic;
         Y : IN  std_logic;
         cin : IN  std_logic;
         cout : OUT  std_logic;
         S : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic := '0';
   signal Y : std_logic := '0';
   signal cin : std_logic := '0';

 	--Outputs
   signal cout : std_logic;
   signal S : std_logic;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_adder PORT MAP (
          X => X,
          Y => Y,
          cin => cin,
          cout => cout,
          S => S
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		cin <= '0';
		
		wait for 10 ns;	
		X <= '0';
		Y <= '0';
		cin <= '1';	
		
		wait for 10 ns;	
		Y <= '1';
		cin <= '0';	
		
		wait for 10 ns;	
		cin <= '1';	
				
		wait for 10 ns;	
		X <= '1';
		Y <= '0';
		cin <= '0';	
		
		wait for 10 ns;	
		Y <= '0';
		cin <= '1';	
		
		wait for 10 ns;	
		Y <= '1';
		cin <= '0';	
		
		wait for 10 ns;	
		cin <= '1';	

      wait;
   end process;

END;
