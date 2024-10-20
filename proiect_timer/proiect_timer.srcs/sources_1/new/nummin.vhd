library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity nummin is
    port ( 
        clk_1, rst : in std_logic;
        clk_enable : in std_logic;
        count_mode : in std_logic;
        min: out  std_logic_vector (6 downto 0);
        borrow_m, carry_m : inout std_logic
    );
end nummin;


architecture Behavioral of nummin is
begin
    process (clk_1, rst, count_mode)
        variable count : integer range -1 to 100 := 0;
    begin
        if rst = '1' then
            count := 0;
            min <= (others => '0');
            borrow_m <= '0';
            carry_m <= '0';
            end if;
        if clk_enable = '1' then
        if rising_edge(clk_1) then
            if (count_mode = '1') then
                   count := count + 1;                    
                    if count = 99 then
                    
                    	carry_m <= '1';
               	else
               		carry_m <= '0';
               	end if;
               	
               	if count = 100 then
               		count := 0;
          		end if;
                    min <= std_logic_vector(to_unsigned(count, 7));

            elsif (count_mode = '0') then
                   if(borrow_m='1') then
            count:=99;
            else count:=count-1;
            end if;
                     -- Count down
                  if count=0 then
            borrow_m<='1';
            else
            borrow_m<='0';
            end if;
                    min <= std_logic_vector(to_unsigned(count, 7));
                    end if;
                end if;
            end if;
       
    end process;
end architecture;