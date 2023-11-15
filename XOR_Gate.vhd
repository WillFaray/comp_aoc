library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity XOR_Gate is
	port(
			A : in STD_LOGIC;
			B : in STD_LOGIC;
			S : out STD_LOGIC
			);
end XOR_Gate;

architecture behavior of XOR_Gate is

component NOT_Gate is
	port(
			A : in STD_LOGIC;
			B : out STD_LOGIC
			);
end component;

component AND_Gate is
	port(
			A : in STD_LOGIC;
			B : in STD_LOGIC;
			S : out STD_LOGIC
			);
end component;
	
component OR_Gate is
	port(
			A : in STD_LOGIC;
			B : in STD_LOGIC;
			S : out STD_LOGIC
			);
end component;

signal S1, S2, S3, S4: STD_LOGIC;

	begin
		G1: NOT_Gate port map(A, S1);
		G2: NOT_Gate port map(B, S2);
		G3: AND_Gate port map(S1, B, S3);
		G4: AND_Gate port map(A, S2, S4);
		G5: OR_Gate port map(S3, S4, S);
	end behavior;