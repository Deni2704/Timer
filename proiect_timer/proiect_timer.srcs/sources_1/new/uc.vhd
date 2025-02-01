

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY uc IS

  port (
        clk_1: in std_logic;
        rst: in std_logic;
        start_stop: in std_logic;
        m_button: in std_logic;
        s_button: in std_logic;
        --carry,borrow: in std_logic;
        count_enable,count_mode,ssd_min,ssd_sec: inout std_logic;
        alarma_activate: in std_logic;
        led_alarm:out std_logic
    );
END uc;


ARCHITECTURE TypeArchitecture OF uc IS

type state_type is (Zero, Crescator,afisare_sec,afisare_min,afisare_min_sec,Descrescator,Alarma);
signal current_state, next_state:state_type:=Zero;

signal alarm_T5: std_logic:='0';

BEGIN

 process(rst,clk_1)
begin
 if (rst='1') then 
       current_state<=Zero;
 elsif (rising_edge(clk_1)) then 
 current_state<=next_state;
 end if;
 end process;



 
 process(start_stop,m_button,s_button,alarma_activate,alarm_T5)
 begin
 case current_state is
 when Zero => if start_stop='1' then
               next_state<=Crescator;
               else 
               next_state<=Zero;
               end if;
 when Crescator =>if m_button='1' and s_button='1' then 
 				next_state<=afisare_min_sec;
 				elsif m_button='1' then
                   next_state<=afisare_min;
                   elsif s_button='1' then
                   next_state<=afisare_sec;
                   else
                   next_state<=Crescator;
                   end if;
when afisare_min=> if s_button='1' then
 				next_state<=afisare_min_sec;
 				else
 				next_state<=afisare_min;
 				end if;
 				if alarma_activate='1' then
                   next_state<=Alarma;
                   end if;
when afisare_sec=> if m_button='1' then
				next_state<=afisare_min_sec;
				else 
				next_state<=afisare_sec;
				end if;
				if alarma_activate='1' then
                   next_state<=Alarma;
                   end if;
when afisare_min_sec=> if start_stop='1' then
					next_state<=Descrescator;
					else
					next_state<=afisare_min_sec;
					end if;
					if alarma_activate='1' then
                   next_state<=Alarma;
                   end if;
when Descrescator=>if m_button='1' and s_button='1' then 
 				next_state<=afisare_min_sec;
				elsif m_button='1' then
                   next_state<=afisare_min;
                   elsif s_button='1' then
                   next_state<=afisare_sec;
                   else
                   next_state<=Descrescator;
                   end if;
                   if alarma_activate='1' then
                   next_state<=Alarma;
                   end if;
 when Alarma=> if alarm_T5='1' then
 next_state<=Zero;
 else next_state<=Alarma;
 end if;
when others=> next_state<=Zero;
end case;
 end process;

process(current_state,clk_1)
variable count:integer:=0;
begin
if clk_1='1' and clk_1'event then
if current_state=Alarma then
if count=5 then
alarm_T5<='1';
count:=0;
else count:=count+1;
end if;
elsif current_state=Zero then
alarm_T5<='0';
end if;
end if;
end process;
 
process(current_state)
begin
case current_state is
when Zero=> count_enable<='0';
		count_mode<='0';
		ssd_min<='0';
		ssd_sec<='0';
		led_alarm<='0';
when Crescator=> count_mode<='1';
                 count_enable<='1';
when afisare_min=> ssd_min<='1';
				ssd_sec<='0';
when afisare_sec=>ssd_sec<='1';
				ssd_min<='0';
when afisare_min_sec=>ssd_sec<='1';
				ssd_min<='1';
when Descrescator=> count_mode<='0';
 				count_enable<='1';
 				ssd_min<='0';
 				ssd_sec<='0';
when Alarma=>led_alarm<='1';
			count_enable<='0';
			ssd_sec<='0';--0
			ssd_min<='0';
when others=>
end case;
end process;
           

END TypeArchitecture;
