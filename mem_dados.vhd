LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;

ENTITY mem_dados IS
    port(
        clock : in std_logic;       								 -- clock
        mem_write : in std_logic;   								 -- flag de escrita
        mem_read  : in std_logic;   						   	 -- flag de leitura
		  dado_escrito : in std_logic_vector(15 downto 0); 	 -- valor
        endereco : in std_logic_vector(15 downto 0); 			 -- endereço
        dado_lido : out std_logic_vector(15 downto 0) 	 	 -- saida
    );	
END mem_dados;

ARCHITECTURE Behavioral OF mem_dados is
 
    type end_mem_dados is array(0 to 15) of std_logic_vector(15 downto 0);
    signal memoriadados : end_mem_dados := (OTHERS => "0000000000000000");
    begin
        process(clock)
            begin
                IF rising_edge(clock) THEN
                    if (mem_read = '1') then 
                        memoriadados(to_integer(unsigned(endereco))) <= dado_escrito;
                    end if;

                    if (mem_write = '1') then 
                        dado_lido <= memoriadados(to_integer(unsigned(endereco)));
                    end if;
                END IF;            
        end process;
END;