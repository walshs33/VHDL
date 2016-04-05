LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
  
ENTITY sequencer_tb IS
END sequencer_tb;
 
ARCHITECTURE behavior OF sequencer_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sequencer
    PORT(
         NA : IN  std_logic_vector(7 downto 0);
         opcode : IN  std_logic_vector(7 downto 0);
         MC : IN  std_logic;
         clk : IN  std_logic;
         control_address : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal NA : std_logic_vector(7 downto 0) := (others => '0');
   signal opcode : std_logic_vector(7 downto 0) := (others => '0');
   signal MC : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal control_address : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sequencer PORT MAP (
          NA => NA,
          opcode => opcode,
          MC => MC,
          clk => clk,
          control_address => control_address
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

		NA <= "11110000";
		opcode <= "00001111";
		MC <= '0';
		
		wait for 20 ns;
		MC <= '1';

      wait;
   end process;

END;
