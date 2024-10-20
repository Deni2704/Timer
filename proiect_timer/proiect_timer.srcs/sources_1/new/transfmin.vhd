library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity transfmin is
    port (
    enable:in std_logic;
        min: in std_logic_vector(6 downto 0);
        min_ZECI: out std_logic_vector(3 downto 0);
        min_Unitati: out std_logic_vector(3 downto 0)
    );
end transfmin;

architecture behavioral of transfmin is
    signal min_nat: integer;
begin
    min_nat <= to_integer(unsigned(min));
    
    process(min_nat)
    begin
    if enable='0' then
    min_ZECI<=x"0";
    min_Unitati<=x"0";
        elsif (min_nat <= 9) then
            min_ZECI <= "0000";
            min_Unitati <= std_logic_vector(to_unsigned(min_nat, 4));
        elsif (min_nat >= 10 and min_nat <= 19) then
            min_ZECI <= "0001";
            min_Unitati <= std_logic_vector(to_unsigned(min_nat - 10, 4));
        elsif (min_nat >= 20 and min_nat <= 29) then
            min_ZECI <= "0010";
            min_Unitati <= std_logic_vector(to_unsigned(min_nat - 20, 4));
        elsif (min_nat >= 30 and min_nat <= 39) then
            min_ZECI <= "0011";
            min_Unitati <= std_logic_vector(to_unsigned(min_nat - 30, 4));
        elsif (min_nat >= 40 and min_nat <= 49) then
            min_ZECI <= "0100";
            min_Unitati <= std_logic_vector(to_unsigned(min_nat - 40, 4));
        elsif (min_nat >= 50 and min_nat <= 59) then
            min_ZECI <= "0101";
            min_Unitati <= std_logic_vector(to_unsigned(min_nat - 50, 4));
        elsif (min_nat >= 60 and min_nat <= 69) then
            min_ZECI <= "0110";
            min_Unitati <= std_logic_vector(to_unsigned(min_nat - 60, 4));
        elsif (min_nat >= 70 and min_nat <= 79) then
            min_ZECI <= "0111";
            min_Unitati <= std_logic_vector(to_unsigned(min_nat - 70, 4));
        elsif (min_nat >= 80 and min_nat <= 89) then
            min_ZECI <= "1000";
            min_Unitati <= std_logic_vector(to_unsigned(min_nat - 80, 4));
        elsif (min_nat >= 90 and min_nat <= 99) then
            min_ZECI <= "1001";
            min_Unitati <= std_logic_vector(to_unsigned(min_nat - 90, 4));
        end if;
    end process;
end architecture;