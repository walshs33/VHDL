----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:27:11 02/24/2016 
-- Design Name: 
-- Module Name:    zero_detect - Behavioral 
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

entity zero_detect is
    Port ( S : in  STD_LOGIC_VECTOR (15 downto 0);
           Z : out  STD_LOGIC);
end zero_detect;

architecture Behavioral of zero_detect is

begin
	Z <= '1' after 5 ns when S="0000000000000000" else
		'0' after 5 ns;

end Behavioral;

