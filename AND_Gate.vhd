library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND_Gate is
	port(
			A : in STD_LOGIC;
			B : in STD_LOGIC;
			S : out STD_LOGIC
			);
end AND_Gate;

architecture behavior of AND_Gate is
	begin
		S <= A and B;
	end behavior;