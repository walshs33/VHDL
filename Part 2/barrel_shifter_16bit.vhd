library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity barrel_shifter_16bit is
    Port ( D : in  STD_LOGIC_VECTOR (15 downto 0);
           Y : out  STD_LOGIC_VECTOR (15 downto 0);
           Sel0, Sel1, Sel2, Sel3 : in  STD_LOGIC);
end barrel_shifter_16bit;

architecture Behavioral of barrel_shifter_16bit is
--components
	--16 to 1 line multiplexer
	COMPONENT mux_16_1_1bit
	PORT( 
			In0, In1, In2, In3, In4, In5, In6, In7, In8, In9, In10, In11, In12, In13, In14, In15 : in STD_LOGIC;
			S0, S1, S2, S3 : in STD_LOGIC;
			Z : out STD_LOGIC
			);
	END COMPONENT;

--signals
signal out_0, out_1, out_2, out_3, out_4, out_5, out_6, out_7, out_8, out_9, out_10, out_11, out_12, out_13, out_14, out_15 : std_logic;

begin
--port maps
	--mux 0
	mux00: mux_16_1_1bit PORT MAP(
				In0 => D(0),
				In1 => D(15),
				In2 => D(14),
				In3 => D(13),
				In4 => D(12),
				In5 => D(11),
				In6 => D(10),
				In7 => D(9),
				In8 => D(8),
				In9 => D(7),
				In10 => D(6),
				In11 => D(5),
				In12 => D(4),
				In13 => D(3),
				In14 => D(2),
				In15 => D(1),
				S0 => Sel0,
				S1 => Sel1,
				S2 => Sel2,
				S3 => Sel3,
				Z => out_0
	);

	--mux 1
	mux01: mux_16_1_1bit PORT MAP(
				In0 => D(1),
				In1 => D(0),
				In2 => D(15),
				In3 => D(14),
				In4 => D(13),
				In5 => D(12),
				In6 => D(11),
				In7 => D(10),
				In8 => D(9),
				In9 => D(8),
				In10 => D(7),
				In11 => D(6),
				In12 => D(5),
				In13 => D(4),
				In14 => D(3),
				In15 => D(2),
				S0 => Sel0,
				S1 => Sel1,
				S2 => Sel2,
				S3 => Sel3,
				Z => out_1
	);
	
	--mux 2
	mux02: mux_16_1_1bit PORT MAP(
				In0 => D(2),
				In1 => D(1),
				In2 => D(0),
				In3 => D(15),
				In4 => D(14),
				In5 => D(13),
				In6 => D(12),
				In7 => D(11),
				In8 => D(10),
				In9 => D(9),
				In10 => D(8),
				In11 => D(7),
				In12 => D(6),
				In13 => D(5),
				In14 => D(4),
				In15 => D(3),
				S0 => Sel0,
				S1 => Sel1,
				S2 => Sel2,
				S3 => Sel3,
				Z => out_2
	);
	
	--mux 3
	mux03: mux_16_1_1bit PORT MAP(
				In0 => D(3),
				In1 => D(2),
				In2 => D(1),
				In3 => D(0),
				In4 => D(15),
				In5 => D(14),
				In6 => D(13),
				In7 => D(12),
				In8 => D(11),
				In9 => D(10),
				In10 => D(9),
				In11 => D(8),
				In12 => D(7),
				In13 => D(6),
				In14 => D(5),
				In15 => D(4),
				S0 => Sel0,
				S1 => Sel1,
				S2 => Sel2,
				S3 => Sel3,
				Z => out_3
	);
	
	--mux 4
	mux04: mux_16_1_1bit PORT MAP(
				In0 => D(4),
				In1 => D(3),
				In2 => D(2),
				In3 => D(1),
				In4 => D(0),
				In5 => D(15),
				In6 => D(14),
				In7 => D(13),
				In8 => D(12),
				In9 => D(11),
				In10 => D(10),
				In11 => D(9),
				In12 => D(8),
				In13 => D(7),
				In14 => D(6),
				In15 => D(5),
				S0 => Sel0,
				S1 => Sel1,
				S2 => Sel2,
				S3 => Sel3,
				Z => out_4
	);
	
	--mux 5
	mux05: mux_16_1_1bit PORT MAP(
				In0 => D(5),
				In1 => D(4),
				In2 => D(3),
				In3 => D(2),
				In4 => D(1),
				In5 => D(0),
				In6 => D(15),
				In7 => D(14),
				In8 => D(13),
				In9 => D(12),
				In10 => D(11),
				In11 => D(10),
				In12 => D(9),
				In13 => D(8),
				In14 => D(7),
				In15 => D(6),
				S0 => Sel0,
				S1 => Sel1,
				S2 => Sel2,
				S3 => Sel3,
				Z => out_5
	);

	--mux 6
	mux06: mux_16_1_1bit PORT MAP(
				In0 => D(6),
				In1 => D(5),
				In2 => D(4),
				In3 => D(3),
				In4 => D(2),
				In5 => D(1),
				In6 => D(0),
				In7 => D(15),
				In8 => D(14),
				In9 => D(13),
				In10 => D(12),
				In11 => D(11),
				In12 => D(10),
				In13 => D(9),
				In14 => D(8),
				In15 => D(7),
				S0 => Sel0,
				S1 => Sel1,
				S2 => Sel2,
				S3 => Sel3,
				Z => out_6
	);

	--mux 7
	mux07: mux_16_1_1bit PORT MAP(
				In0 => D(7),
				In1 => D(6),
				In2 => D(5),
				In3 => D(4),
				In4 => D(3),
				In5 => D(2),
				In6 => D(1),
				In7 => D(0),
				In8 => D(15),
				In9 => D(14),
				In10 => D(13),
				In11 => D(12),
				In12 => D(11),
				In13 => D(10),
				In14 => D(9),
				In15 => D(8),
				S0 => Sel0,
				S1 => Sel1,
				S2 => Sel2,
				S3 => Sel3,
				Z => out_7
	);

	--mux 8
	mux08: mux_16_1_1bit PORT MAP(
				In0 => D(8),
				In1 => D(7),
				In2 => D(6),
				In3 => D(5),
				In4 => D(4),
				In5 => D(3),
				In6 => D(2),
				In7 => D(1),
				In8 => D(0),
				In9 => D(15),
				In10 => D(14),
				In11 => D(13),
				In12 => D(12),
				In13 => D(11),
				In14 => D(10),
				In15 => D(9),
				S0 => Sel0,
				S1 => Sel1,
				S2 => Sel2,
				S3 => Sel3,
				Z => out_8
	);

	--mux 9
	mux09: mux_16_1_1bit PORT MAP(
				In0 => D(9),
				In1 => D(8),
				In2 => D(7),
				In3 => D(6),
				In4 => D(5),
				In5 => D(4),
				In6 => D(3),
				In7 => D(2),
				In8 => D(1),
				In9 => D(0),
				In10 => D(15),
				In11 => D(14),
				In12 => D(13),
				In13 => D(12),
				In14 => D(11),
				In15 => D(10),
				S0 => Sel0,
				S1 => Sel1,
				S2 => Sel2,
				S3 => Sel3,
				Z => out_9
	);

	--mux 10
	mux10: mux_16_1_1bit PORT MAP(
				In0 => D(10),
				In1 => D(9),
				In2 => D(8),
				In3 => D(7),
				In4 => D(6),
				In5 => D(5),
				In6 => D(4),
				In7 => D(3),
				In8 => D(2),
				In9 => D(1),
				In10 => D(0),
				In11 => D(15),
				In12 => D(14),
				In13 => D(13),
				In14 => D(12),
				In15 => D(11),
				S0 => Sel0,
				S1 => Sel1,
				S2 => Sel2,
				S3 => Sel3,
				Z => out_10
	);

	--mux 11
	mux11: mux_16_1_1bit PORT MAP(
				In0 => D(11),
				In1 => D(10),
				In2 => D(9),
				In3 => D(8),
				In4 => D(7),
				In5 => D(6),
				In6 => D(5),
				In7 => D(4),
				In8 => D(3),
				In9 => D(2),
				In10 => D(1),
				In11 => D(0),
				In12 => D(15),
				In13 => D(14),
				In14 => D(13),
				In15 => D(12),
				S0 => Sel0,
				S1 => Sel1,
				S2 => Sel2,
				S3 => Sel3,
				Z => out_11
	);

	--mux 12
	mux12: mux_16_1_1bit PORT MAP(
				In0 => D(12),
				In1 => D(11),
				In2 => D(10),
				In3 => D(9),
				In4 => D(8),
				In5 => D(7),
				In6 => D(6),
				In7 => D(5),
				In8 => D(4),
				In9 => D(3),
				In10 => D(2),
				In11 => D(1),
				In12 => D(0),
				In13 => D(15),
				In14 => D(14),
				In15 => D(13),
				S0 => Sel0,
				S1 => Sel1,
				S2 => Sel2,
				S3 => Sel3,
				Z => out_12
	);

	--mux 13
	mux13: mux_16_1_1bit PORT MAP(
				In0 => D(13),
				In1 => D(12),
				In2 => D(11),
				In3 => D(10),
				In4 => D(9),
				In5 => D(8),
				In6 => D(7),
				In7 => D(6),
				In8 => D(5),
				In9 => D(4),
				In10 => D(3),
				In11 => D(2),
				In12 => D(1),
				In13 => D(0),
				In14 => D(15),
				In15 => D(14),
				S0 => Sel0,
				S1 => Sel1,
				S2 => Sel2,
				S3 => Sel3,
				Z => out_13
	);

	--mux 14
	mux14: mux_16_1_1bit PORT MAP(
				In0 => D(14),
				In1 => D(13),
				In2 => D(12),
				In3 => D(11),
				In4 => D(10),
				In5 => D(9),
				In6 => D(8),
				In7 => D(7),
				In8 => D(6),
				In9 => D(5),
				In10 => D(4),
				In11 => D(3),
				In12 => D(2),
				In13 => D(1),
				In14 => D(0),
				In15 => D(15),
				S0 => Sel0,
				S1 => Sel1,
				S2 => Sel2,
				S3 => Sel3,
				Z => out_14
	);

	--mux 15
	mux15: mux_16_1_1bit PORT MAP(
				In0 => D(15),
				In1 => D(14),
				In2 => D(13),
				In3 => D(12),
				In4 => D(11),
				In5 => D(10),
				In6 => D(9),
				In7 => D(8),
				In8 => D(7),
				In9 => D(6),
				In10 => D(5),
				In11 => D(4),
				In12 => D(3),
				In13 => D(2),
				In14 => D(1),
				In15 => D(0),
				S0 => Sel0,
				S1 => Sel1,
				S2 => Sel2,
				S3 => Sel3,
				Z => out_15
	);
	Y(0) <= out_0;
	Y(1) <= out_1;
	Y(2) <= out_2;
	Y(3) <= out_3;
	Y(4) <= out_4;
	Y(5) <= out_5;
	Y(6) <= out_6;
	Y(7) <= out_7;
	Y(8) <= out_8;
	Y(9) <= out_9;
	Y(10) <= out_10;
	Y(11) <= out_11;
	Y(12) <= out_12;
	Y(13) <= out_13;
	Y(14) <= out_14;
	Y(15) <= out_15;

end Behavioral;

