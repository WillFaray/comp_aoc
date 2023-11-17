library ieee;
use ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

entity ula is
    port (
        clock_ula                 : in std_logic;
        a,b : in std_logic_vector(15 downto 0);
        ula_control            : in std_logic_vector(3 downto 0);

        resultado_ula             : out std_logic_vector(15 downto 0);
        zero                      : out std_logic
    );
end ula;

architecture comportamento_ula of ula is

    signal entrada_temp_if : std_logic;
    signal result_mult : std_logic_vector(15 downto 0);

    begin
        process(clock_ula)
				begin
            case ula_control is
                when "0000" => -- add
                    resultado_ula <= a + b;
					                
                when "0001" => -- sub
                    resultado_ula <= a - b;

                when "0011" => -- Load Word
                    resultado_ula <= a;
                
                when "0100" => -- Store Word
                    resultado_ula <= b;
						  
					 when "1001" => -- if
                    if a = b then
                        entrada_temp_if <= '1';
                    else
                        entrada_temp_if <= '0';
                    end if;
                        
		          when "0101" => -- beq
                    if entrada_temp_if = '1' then
                        zero <= '1';
                    else 
                        zero <= '0';
                    end if;
                
				when others =>
                    resultado_ula <= "0000000000000000";
            end case;
        end process;
    end comportamento_ula;