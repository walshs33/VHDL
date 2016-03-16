library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_16_1_16bit is
    Port ( In0 : in  STD_LOGIC_VECTOR(15 downto 0);
           In1 : in  STD_LOGIC_VECTOR(15 downto 0);
           In2 : in  STD_LOGIC_VECTOR(15 downto 0);
           In3 : in  STD_LOGIC_VECTOR(15 downto 0);
           In4 : in  STD_LOGIC_VECTOR(15 downto 0);
           In5 : in  STD_LOGIC_VECTOR(15 downto 0);
           In6 : in  STD_LOGIC_VECTOR(15 downto 0);
           In7 : in  STD_LOGIC_VECTOR(15 downto 0);
           In8 : in  STD_LOGIC_VECTOR(15 downto 0);
           In9 : in  STD_LOGIC_VECTOR(15 downto 0);
           In10 : in  STD_LOGIC_VECTOR(15 downto 0);
           In11 : in  STD_LOGIC_VECTOR(15 downto 0);
           In12 : in  STD_LOGIC_VECTOR(15 downto 0);
           In13 : in  STD_LOGIC_VECTOR(15 downto 0);
           In14 : in  STD_LOGIC_VECTOR(15 downto 0);
           In15 : in  STD_LOGIC_VECTOR(15 downto 0);
			  S : in STD_LOGIC_VECTOR(3 downto 0);
           Z : out  STD_LOGIC_VECTOR(15 downto 0)
			  );
end mux_16_1_16bit;

architecture Behavioral of mux_16_1_16bit is

begin
	Z <= In0 after 1 ns when (S(0)='0' and S(1)='0' and S(2)='0' and S(3)='0') else
		In1 after 1 ns when (S(0)='0' and S(1)='0' and S(2)='0' and S(3)='1') else
		In2 after 1 ns when (S(0)='0' and S(1)='0' and S(2)='1' and S(3)='0') else
		In3 after 1 ns when (S(0)='0' and S(1)='0' and S(2)='1' and S(3)='1') else
		In4 after 1 ns when (S(0)='0' and S(1)='1' and S(2)='0' and S(3)='0') else
		In5 after 1 ns when (S(0)='0' and S(1)='1' and S(2)='0' and S(3)='1') else
		In6 after 1 ns when (S(0)='0' and S(1)='1' and S(2)='1' and S(3)='0') else
		In7 after 1 ns when (S(0)='0' and S(1)='1' and S(2)='1' and S(3)='1') else
		In8 after 1 ns when (S(0)='1' and S(1)='0' and S(2)='0' and S(3)='0') else
		In9 after 1 ns when (S(0)='1' and S(1)='0' and S(2)='0' and S(3)='1') else
		In10 after 1 ns when (S(0)='1' and S(1)='0' and S(2)='1' and S(3)='0') else
		In11 after 1 ns when (S(0)='1' and S(1)='0' and S(2)='1' and S(3)='1') else
		In12 after 1 ns when (S(0)='1' and S(1)='1' and S(2)='0' and S(3)='0') else
		In13 after 1 ns when (S(0)='1' and S(1)='1' and S(2)='0' and S(3)='1') else
		In14 after 1 ns when (S(0)='1' and S(1)='1' and S(2)='1' and S(3)='0') else
		In15 after 1 ns when (S(0)='1' and S(1)='1' and S(2)='1' and S(3)='1') else
		"0000000000000000" after 1 ns;
		
end Behavioral;

