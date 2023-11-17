library ieee;
use ieee.std_logic_1164.all;

entity unidade_controle is
    port(

        clock_uc        : in std_logic;
        opcode      : in std_logic_vector(3 downto 0);
		  ula_op, M_to_reg, reg_dst    : out std_logic_vector(3 downto 0);
        jump, branch, M_read, M_write, ula_src, reg_write   : out std_logic
    );
end unidade_controle;

architecture comportamento_uc of unidade_controle is
    begin
        process (clock_uc, opcode)
			begin
				if(clock_uc = '1') then
					  ula_op <= "0000";
					  M_to_reg <= "0000";
					  reg_dst <= "0000";
					  jump <= '0';
					  branch <= '0';
					  M_read <= '0';
					  M_write <= '0';
					  ula_src <= '0';
					  reg_write <= '0';
            case opcode is
                when "0000" => -- add
                    ula_op <= "0000";
						  M_to_reg <= "0000";
						  reg_dst <= "0001";
						  jump <= '0';
						  branch <= '0';
						  M_read <= '0';
						  M_write <= '0';
						  ula_src <= '0';
						  reg_write <= '1';
                
                when "0001" => -- sub
                    ula_op <= "0001";
						  M_to_reg <= "0000";
						  reg_dst <= "0001";
						  jump <= '0';
						  branch <= '0';
						  M_read <= '0';
						  M_write <= '0';
						  ula_src <= '0';
						  reg_write <= '1';
                
                when "0011" => -- load
                    ula_op <= "0011";
						  M_to_reg <= "0001";
						  reg_dst <= "0000";
						  jump <= '0';
						  branch <= '0';
						  M_read <= '1';
						  M_write <= '0';
						  ula_src <= '1';
						  reg_write <= '1';

                when "0100" => -- store
                    ula_op <= "0100";
						  M_to_reg <= "0001";
						  reg_dst <= "0001";
						  jump <= '0';
						  branch <= '0';
						  M_read <= '0';
						  M_write <= '1';
						  ula_src <= '0';
						  reg_write <= '0';
                
                when "0101" => -- beq
                    ula_op <= "0101";
						  M_to_reg <= "0000";
						  reg_dst <= "0000";
						  jump <= '0';
						  branch <= '1';
						  M_read <= '0';
						  M_write <= '0';
						  ula_src <= '0';
						  reg_write <= '0';

                when "0111" => -- jump
                    ula_op <= "0111";
						  M_to_reg <= "0000";
						  reg_dst <= "0000";
						  jump <= '1';
						  branch <= '0';
						  M_read <= '0';
						  M_write <= '0';
						  ula_src <= '0';
						  reg_write <= '0';
						  
					when "1000" => -- NOP
                    ula_op <= "1000";
						  M_to_reg <= "0000";
						  reg_dst <= "0000";
						  jump <= '0';
						  branch <= '0';
						  M_read <= '0';
						  M_write <= '0';
						  ula_src <= '0';
						  reg_write <= '0';
					
                when "1001" => -- if
                    ula_op <= "1001";
						  M_to_reg <= "0000";
						  reg_dst <= "0000";
						  jump <= '0';
						  branch <= '0';
						  M_read <= '0';
						  M_write <= '0';
						  ula_src <= '0';
						  reg_write <= '0';
						  
				when others => -- Default
						  ula_op <= "1111";
						  M_to_reg <= "0000";
						  reg_dst <= "0001";
						  jump <= '0';
						  branch <= '0';
						  M_read <= '0';
						  M_write <= '0';
						  ula_src <= '0';
						  reg_write <= '1';
            end case;
				end if;
        end process;
end comportamento_uc;




            