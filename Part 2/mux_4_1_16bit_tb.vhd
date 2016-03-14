--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:44:12 02/16/2016
-- Design Name:   
-- Module Name:   U:/CS2022/ArchitecturProject1/mux_4_1_16bit_tb.vhd
-- Project Name:  ArchitecturProject1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux_4_1_16bit
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY mux_4_1_16bit_tb IS
END mux_4_1_16bit_tb;
 
ARCHITECTURE behavior OF mux_4_1_16bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_4_1_16bit
    PORT(
         In0 : IN  std_logic_vector(15 downto 0);
         In1 : IN  std_logic_vector(15 downto 0);
         In2 : IN  std_logic_vector(15 downto 0);
         In3 : IN  std_logic_vector(15 downto 0);
         S : IN  std_logic;
         Z : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal In0 : std_logic_vector(15 downto 0) := (others => '0');
   signal In1 : std_logic_vector(15 downto 0) := (others => '0');
   signal In2 : std_logic_vector(15 downto 0) := (others => '0');
   signal In3 : std_logic_vector(15 downto 0) := (others => '0');
   signal S : std_logic := '0';

 	--Outputs
   signal Z : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_4_1_16bit PORT MAP (
          In0 => In0,
          In1 => In1,
			 In2 => In2,
			 In3 => In3,
          S => S,
          Z => Z
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 20 ns.
      wait for 20 ns;	

		In0 <= "1111111111111111";
		In1 <= "1111000011110000";
		In2 <= "0000111100001111";
		In3 <= "1010101010101010";
		
		wait for 10 ns;
		S0 <= '0';
		S1 <= '0';
		
		wait for 10 ns;
		S0 <= '0';
		S1 <= '1';
		
		wait for 10 ns;
		S0 <= '1';
		S1 <= '0';
		
		wait for 10 ns;
		S0 <= '1';
		S1 <= '1';	

      -- insert stimulus here 

      wait;
   end process;

END;
