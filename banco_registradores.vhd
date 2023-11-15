library ieee;
use ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.ALL;

entity banco_registradores is
    port(
		  clock		      	: in std_logic;
        in_reg1            : in std_logic_vector(1 downto 0);
        in_reg2            : in std_logic_vector(1 downto 0);
        in_reg_write       : in std_logic_vector(15 downto 0);
		  reg_write          : in std_logic  								-- flag de escrita
 
        out_dado1        : out std_logic_vector(15 downto 0);	   -- saida reg1
        out_dado2        : out std_logic_vector(15 downto 0);		-- saida reg2      
    );

end banco_registradores;