LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY datapath_tb IS
END datapath_tb;
 
ARCHITECTURE behavior OF datapath_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT datapath
    PORT(
         load : IN  std_logic;
         clk : IN  std_logic;
         A_sel : IN  std_logic_vector(2 downto 0);
         B_sel : IN  std_logic_vector(2 downto 0);
         const_in : IN  std_logic_vector(15 downto 0);
         MB_sel : IN  std_logic;
         data_in : IN  std_logic_vector(15 downto 0);
         MD_sel : IN  std_logic;
         dest_sel : IN  std_logic_vector(2 downto 0);
         FS_in : IN  std_logic_vector(4 downto 0);
         V : OUT  std_logic;
         C : OUT  std_logic;
         N : OUT  std_logic;
         Z : OUT  std_logic;
         address_out : OUT  std_logic_vector(15 downto 0);
         data_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal load : std_logic := '0';
   signal clk : std_logic := '0';
   signal A_sel : std_logic_vector(2 downto 0) := (others => '0');
   signal B_sel : std_logic_vector(2 downto 0) := (others => '0');
   signal const_in : std_logic_vector(15 downto 0) := (others => '0');
   signal MB_sel : std_logic := '0';
   signal data_in : std_logic_vector(15 downto 0) := (others => '0');
   signal MD_sel : std_logic := '0';
   signal dest_sel : std_logic_vector(2 downto 0) := (others => '0');
   signal FS_in : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal V : std_logic;
   signal C : std_logic;
   signal N : std_logic;
   signal Z : std_logic;
   signal address_out : std_logic_vector(15 downto 0);
   signal data_out : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: datapath PORT MAP (
          load => load,
          clk => clk,
          A_sel => A_sel,
          B_sel => B_sel,
          const_in => const_in,
          MB_sel => MB_sel,
          data_in => data_in,
          MD_sel => MD_sel,
          dest_sel => dest_sel,
          FS_in => FS_in,
          V => V,
          C => C,
          N => N,
          Z => Z,
          address_out => address_out,
          data_out => data_out
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
      load <= '1';
		A_sel <= "000";
		B_sel <= "001";
		const_in <= "0000000000000000";
		MB_sel <= '0';
		MD_sel <= '0';
		dest_sel <= "000";
		FS_in <= "00000";
		wait for 100 ns;	
		
		MD_sel <= '1';
		data_in <= "0000111100000000";
		
		wait for 20 ns;
		dest_sel <= "001";
		data_in <= "1111000011111111";
		
		wait for 20 ns;
		load <= '0';

		wait for 20 ns;
		MD_sel <= '0';
		dest_sel <= "010";
		B_sel <= "001";

		wait for 20 ns;
		load <= '1';
		
		wait for 20 ns;
		FS_in <="00001";
				
		wait for 20 ns;
		FS_in <= "00010";
		
		wait for 20 ns;
		FS_in <= "00011";
		
		wait for 20 ns;
		FS_in <= "00100";
		
		wait for 20 ns;
		FS_in <= "00101";
		
		wait for 20 ns;
		FS_in <= "00110";
		
		wait for 20 ns;
		FS_in <= "00111";
		
		wait for 20 ns;
		FS_in <= "01000";
		
		wait for 20 ns;
		FS_in <= "01010";
		
		wait for 20 ns;
		FS_in <= "01100";
		
		wait for 20 ns;
		FS_in <= "01110";
		
		wait for 20 ns;
		FS_in <= "10000";
		
		wait for 20 ns;
		FS_in <= "10100";
		
		wait for 20 ns;
		FS_in <= "11000";
		

      wait;
   end process;

END;
