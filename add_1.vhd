library ieee;
use ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

entity add_1 is
    port(
        saida_pc    : in std_logic_vector(15 downto 0);     
        saida_add   : out std_logic_vector(15 downto 0)
    );
end add_1;

architecture comportamento_add of add_1 is
	 signal proxima : std_logic_vector(15 downto 0);	 
    begin 
        process (saida_pc)
        begin
            proxima <= "0000000000000001";
            saida_add <= saida_pc + proxima;
        end process;
end comportamento_add;