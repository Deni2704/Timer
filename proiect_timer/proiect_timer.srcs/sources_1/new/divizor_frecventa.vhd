library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_div is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           divided_clk : out  STD_LOGIC);
end clk_div;

architecture Behavioral of clk_div is
signal counter:integer:=1;
signal new_clk:std_logic:='0';


begin

process(clk,rst)
begin
if rst='1' then counter<=1;
elsif clk='1' and clk'event then
	if counter=50000000 then
		counter<=1;
		new_clk<=not(new_clk);
	else
		counter<=counter+1;
	end if;
end if;
end process;
-- now new_clk can be used as input clk for another components
divided_clk<=new_clk;


end Behavioral;