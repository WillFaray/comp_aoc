library ieee;
use ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.ALL;

entity banco_registradores is
    port(
        in_reg1            : in std_logic_vector(1 downto 0);
        in_reg2            : in std_logic_vector(1 downto 0);
        in_reg_write       : in std_logic_vector(15 downto 0);
		  reg_write          : in std_logic;  								-- flag de escrita
 
        out_dado1        : out std_logic_vector(15 downto 0);	   -- saida reg1
        out_dado2        : out std_logic_vector(15 downto 0)		-- saida reg2      
    );

end banco_registradores;

architecture behavior of banco_registradores is

    type banco_registrador is array (0 to 4) of std_logic_vector (15 downto 0);
    signal registrador : banco_registrador;
    begin
        process (in_reg1)
			begin
            if (reg_write = '1') then -- se reg_write == 1 escreve o dado no banco de registradores
                registrador(conv_integer(unsigned(in_reg1))) <= in_reg_write;  -- entrar no indice do vetor para salvar o dado 
            end if;
            out_dado1 <= registrador(conv_integer(unsigned(in_reg1))); 
            out_dado2 <= registrador(conv_integer(unsigned(in_reg2)));
        end process;

end behavior;