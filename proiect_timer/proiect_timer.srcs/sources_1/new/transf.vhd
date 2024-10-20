library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity transf is
    port (
    enable:in std_logic;
        sec: in std_logic_vector(5 downto 0);
        sec_ZECI: out std_logic_vector(3 downto 0);
        sec_Unitati: out std_logic_vector(3 downto 0)
    );
end transf;

architecture behavioral of transf is
    signal sec_nat: integer;
begin
    sec_nat <= to_integer(unsigned(sec));

    
    process(sec_nat)
    begin
    if enable='0' then
    		sec_ZECI<=x"0";
    		sec_Unitati<=x"0";
        elsif (sec_nat <= 9) then
            sec_ZECI <= "0000";
            sec_Unitati <= std_logic_vector(to_unsigned(sec_nat, 4));
        elsif (sec_nat >= 10 and sec_nat <= 19) then
            sec_ZECI <= "0001";
            sec_Unitati <= std_logic_vector(to_unsigned(sec_nat - 10, 4));
        elsif (sec_nat >= 20 and sec_nat <= 29) then
            sec_ZECI <= "0010";
            sec_Unitati <= std_logic_vector(to_unsigned(sec_nat - 20, 4));
        elsif (sec_nat >= 30 and sec_nat <= 39) then
            sec_ZECI <= "0011";
            sec_Unitati <= std_logic_vector(to_unsigned(sec_nat - 30, 4));
        elsif (sec_nat >= 40 and sec_nat <= 49) then
            sec_ZECI <= "0100";
            sec_Unitati <= std_logic_vector(to_unsigned(sec_nat - 40, 4));
        elsif (sec_nat >= 50 and sec_nat <= 59) then
            sec_ZECI <= "0101";
            sec_Unitati <= std_logic_vector(to_unsigned(sec_nat - 50, 4));
        end if;
    end process;
end behavioral;