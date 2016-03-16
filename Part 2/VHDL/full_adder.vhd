library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           S : out  STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is

begin
	S <= '0' after 1 ns when X='0' and Y='0' and cin='0' else
	'1' after 1 ns when X='0' and Y='0' and cin='1' else
	'1' after 1 ns when X='0' and Y='1' and cin='0' else
	'0' after 1 ns when X='0' and Y='1' and cin='1' else
	'1' after 1 ns when X='1' and Y='0' and cin='0' else
	'0' after 1 ns when X='1' and Y='0' and cin='1' else
	'0' after 1 ns when X='1' and Y='1' and cin='0' else
	'1' after 1 ns when X='1' and Y='1' and cin='1';
	
	cout <= '0' after 1 ns when X='0' and Y='0' and cin='0' else
	'0' after 1 ns when X='0' and Y='0' and cin='1' else
	'0' after 1 ns when X='0' and Y='1' and cin='0' else
	'1' after 1 ns when X='0' and Y='1' and cin='1' else
	'0' after 1 ns when X='1' and Y='0' and cin='0' else
	'1' after 1 ns when X='1' and Y='0' and cin='1' else
	'1' after 1 ns when X='1' and Y='1' and cin='0' else
	'1' after 1 ns when X='1' and Y='1' and cin='1';

end Behavioral;