library ieee;
use ieee.std_logic_1164.all;
USE ieee.std_logic_arith.ALL;

entity memoria_instrucao is
    port(
        clock_mem       :   in std_logic;
        pc     :   in std_logic_vector(15 downto 0);
        instrucao       :   out std_logic_vector(15 downto 0)
    );
end memoria_instrucao;

architecture comportamento_mem of memoria_instrucao is
    type enderecos is array(0 to 15) of std_logic_vector(15 downto 0);
    constant indice : enderecos := (

        
        -- aritmética
        0 => "0000000000000001", -- add = $s0 + $s1
        1 => "0001000000000001", -- sub $s0 $s1

        -- load 0011
        2 => "0011000000000000", -- lw $s0 (endereco 00) 
        3 => "0011000000000001", -- lw $s0 (endereco 01)
        4 => "0011000000000010", -- lw $s0 (endereco 10)
        5 => "0011000000000011", -- lw $s0 (endereco 11)

        -- store 0100
        6 => "0100000000000000", -- sw $s0 (endereco 00) 
        7 => "0100000000000001", -- sw $s0 (endereco 01) 
        8 => "0100000000000010", -- sw $s0 (endereco 10)
        9 => "0100000000000011", -- sw $s0 (endereco 11) 

        -- breach if equal 0101
        10 => "0101000000000000", --beq (endereco 0000)
        11 => "0101000000000001", --beq (endereco 0001)
        12 => "0101000000000010", --beq (endereco 0010)
        13 => "0101000000000011", --beq (endereco 0011)
    

        -- jump 0111
        14 => "0111000000000000", --j (endereco 0000)
		  
		  -- NOP
        15 => "1000000000000000"

        );
		  

        -- 0000 $s0
        -- 0001 $s1
        -- 0010 $s2
        -- 0011 $s3
    begin
        process(clock_mem) is
				begin
				instrucao <= indice(conv_integer(unsigned(pc)));
        end process;
end comportamento_mem;