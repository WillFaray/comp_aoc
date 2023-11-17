library ieee;
use IEEE.std_logic_1164.all;

entity pc is
    port(
        clock_pc    :   in std_logic;
        entrada_pc  :   in std_logic_vector(15 downto 0);
        saida_pc    :   out std_logic_vector(15 downto 0)
        );
end pc;

architecture comportamento_pc of pc is
    begin 
        process (clock_pc) is
		  begin
            if clock_pc = '1' then
					saida_pc <= entrada_pc;
            end if;
        end process;
end comportamento_pc;