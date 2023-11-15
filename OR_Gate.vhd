library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OR_Gate is
	port(
			A : in STD_LOGIC;
			B : in STD_LOGIC;
			S : out STD_LOGIC
			);
end OR_Gate;

architecture behavior of OR_Gate is
	begin
		S <= A or B;
	end behavior;