----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:39:13 02/17/2016 
-- Design Name: 
-- Module Name:    register_8 - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity register_8 is
	Port ( src_s0 : in std_logic;
		src_s1 : in std_logic;
		des_A0 : in std_logic;
		des_A1 : in std_logic;
		Clk : in std_logic;
		data_src : in std_logic;
		data : in std_logic_vector(3 downto 0);
		reg0 : out std_logic_vector(3 downto 0);
		reg1 : out std_logic_vector(3 downto 0);
		reg2 : out std_logic_vector(3 downto 0);
		reg3 : out std_logic_vector(3 downto 0));
end register_8;

architecture Behavioral of register_8 is

	-- 4 bit Register for register file
	COMPONENT reg4
	PORT(
			D : IN std_logic_vector(3 downto 0);
			load : IN std_logic;
			Clk : IN std_logic;
			Q : OUT std_logic_vector(3 downto 0)
			);
END COMPONENT;

	-- 2 to 4 Decoder
	COMPONENT decoder_2to4
	PORT(
			A0 : IN std_logic;
			A1 : IN std_logic;
			Q0 : OUT std_logic;
			Q1 : OUT std_logic;
			Q2 : OUT std_logic;
			Q3 : OUT std_logic;
			Q4 : OUT std_logic;
			Q5 : OUT std_logic;
			Q6 : OUT std_logic;
			Q7 : OUT std_logic
			);
	END COMPONENT;
	
	-- 2 to 1 line multiplexer
	COMPONENT mux2_4bit
	PORT(
			In0 : IN std_logic_vector(15 downto 0);
			In1 : IN std_logic_vector(15 downto 0);
			s : IN std_logic;
			Z : OUT std_logic_vector(15 downto 0)
			);
END COMPONENT;
begin


end Behavioral;

