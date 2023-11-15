library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NOT_Gate is
	port(
			A : in STD_LOGIC;
			B : out STD_LOGIC
			);
end NOT_Gate;

architecture behavior of NOT_Gate is
	begin
		B <= not A;
	end behavior;
