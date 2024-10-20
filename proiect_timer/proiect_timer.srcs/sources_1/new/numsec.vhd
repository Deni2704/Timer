library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
entity numsec is
    port ( 
        clk_1, rst : in std_logic;
        clk_enable : in std_logic;
        count_mode : in std_logic;
        sec: out  std_logic_vector (5 downto 0);
        borrow_s, carry_s : inout std_logic
    );
end numsec;

architecture Behavioral of numsec is

    signal count : integer range -2 to 60 := 0;
   
 
begin
    process (clk_1, rst,count_mode)
    variable count : integer range 0 to 60 := 0;
    begin
        if rst = '1' then
            count := 0;
            sec <= (others => '0');
            borrow_s <= '0';
            carry_s <= '0';
          end if;  
          if clk_enable = '1' then 
          if(rising_edge(clk_1)) then
          if (count_mode = '1') then -- Count up
                    count := count + 1;                    
                    if count = 59 then
                    
                    	carry_s <= '1';
               	else
               		carry_s <= '0';
               	end if;
               	
               	if count = 60 then
               		count := 0;
          		end if;
                    sec <= std_logic_vector(to_unsigned(count, 6));

                 
            elsif (count_mode='0') then
            if(borrow_s='1') then
            count:=59;
            else count:=count-1;
            end if;
                     -- Count down
                  if count=0 then
            borrow_s<='1';
            else
            borrow_s<='0';
            end if;
            sec<= std_logic_vector(to_unsigned(count, 6));
            end if;
                   end if;
                   end if;
    end process;
   
    
end architecture;