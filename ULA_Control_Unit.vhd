library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity ULA_Control_Unit is
port(
  ula_control: out std_logic_vector(2 downto 0);
  ULAOp : in std_logic_vector(3 downto 0);
  ula_funct : in std_logic_vector(2 downto 0)
);
end ULA_Control_Unit;

architecture Behavioral of ULA_Control_Unit is
begin
process(ULAOp,ula_funct)
begin
case ULAOp is
when "0000" => 
 ula_control <= ula_funct(2 downto 0);
when "0001" => 
 ula_control <= "001";
when "0010" => 
 ula_control <= "100";
when "0011" => 
 ula_control <= "000";
when others => ula_control <= "000";
end case;
end process;
end Behavioral;