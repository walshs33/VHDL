LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY RAM_slice_16_bit_tb IS
END RAM_slice_16_bit_tb;
 
ARCHITECTURE behavior OF RAM_slice_16_bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM_slice_16_bit
    PORT(
         D_in : IN  std_logic;
         D_out : OUT  std_logic;
         Bit_sel : IN  std_logic;
         Row_sel : IN  std_logic_vector(15 downto 0);
         RW : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D_in : std_logic := '0';
   signal Bit_sel : std_logic := '0';
   signal Row_sel : std_logic_vector(15 downto 0) := (others => '0');
   signal RW : std_logic := '0';

 	--Outputs
   signal D_out : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM_slice_16_bit PORT MAP (
          D_in => D_in,
          D_out => D_out,
          Bit_sel => Bit_sel,
          Row_sel => Row_sel,
          RW => RW
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		D_in <= '1';
		Bit_sel <= '0';
		RW <= '0';
		Row_sel <= "0000000000000001";
		
		wait for 20 ns;
		Bit_sel <= '1';
		
		wait for 20 ns;
		RW <= '1';
		
		wait for 20 ns;
		RW <= '0';
		
		wait for 20 ns;
		Row_sel <= "0000000000000010";
		RW <= '1';
		D_in <= '0';
		
		wait for 20 ns;
		RW <= '0';

      wait;
   end process;

END;
