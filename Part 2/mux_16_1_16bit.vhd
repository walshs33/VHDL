----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:41:52 02/24/2016 
-- Design Name: 
-- Module Name:    mux_16_1_16bit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_16_1_16bit is
    Port ( In0 : in  STD_LOGIC;
           In1 : in  STD_LOGIC;
           In2 : in  STD_LOGIC;
           In3 : in  STD_LOGIC;
           In4 : in  STD_LOGIC;
           In5 : in  STD_LOGIC;
           In6 : in  STD_LOGIC;
           In7 : in  STD_LOGIC;
           In8 : in  STD_LOGIC;
           In9 : in  STD_LOGIC;
           In10 : in  STD_LOGIC;
           In11 : in  STD_LOGIC;
           In12 : in  STD_LOGIC;
           In13 : in  STD_LOGIC;
           In14 : in  STD_LOGIC;
           In15 : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           S2 : in  STD_LOGIC;
           S3 : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end mux_16_1_16bit;

architecture Behavioral of mux_16_1_16bit is

begin
	Z <= In0 after 5 ns when S0='0' and S1='0' and S2='0' and S3='0' else
		In1 after 5 ns when S0='0' and S1='0' and S2='0' and S3='1' else
		In2 after 5 ns when S0='0' and S1='0' and S2='1' and S3='0' else
		In3 after 5 ns when S0='0' and S1='0' and S2='1' and S3='1' else
		In4 after 5 ns when S0='0' and S1='1' and S2='0' and S3='0' else
		In5 after 5 ns when S0='0' and S1='1' and S2='0' and S3='1' else
		In6 after 5 ns when S0='0' and S1='1' and S2='1' and S3='0' else
		In7 after 5 ns when S0='0' and S1='1' and S2='1' and S3='1' else
		In8 after 5 ns when S0='1' and S1='0' and S2='0' and S3='0' else
		In9 after 5 ns when S0='1' and S1='0' and S2='0' and S3='1' else
		In10 after 5 ns when S0='1' and S1='0' and S2='1' and S3='0' else
		In11 after 5 ns when S0='1' and S1='0' and S2='1' and S3='1' else
		In12 after 5 ns when S0='1' and S1='1' and S2='0' and S3='0' else
		In13 after 5 ns when S0='1' and S1='1' and S2='0' and S3='1' else
		In14 after 5 ns when S0='1' and S1='1' and S2='1' and S3='0' else
		In15 after 5 ns when S0='1' and S1='1' and S2='1' and S3='1' else
		'0' after 5 ns;
		
end Behavioral;

