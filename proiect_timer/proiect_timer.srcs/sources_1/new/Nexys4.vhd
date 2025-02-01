----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/17/2023 05:09:40 PM
-- Design Name: 
-- Module Name: Nexys4 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Nexys4 is
 Port 
 (
 signal clk:in std_logic;
 signal btn:in std_logic_vector(4 downto 0);
 signal sw:in std_logic_vector(15 downto 0);
 signal led:out std_logic_vector(15 downto 0);
 signal an:out std_logic_vector(7 downto 0); 
 signal cat:out std_logic_vector(6 downto 0) 
  );
end Nexys4;

architecture Behavioral of Nexys4 is
signal rst,start_stop,m_button,s_button:std_logic;
signal div_clk:std_logic;
signal  count_enable,count_mode,ssd_min, ssd_sec: std_logic;
signal sec: std_logic_vector(5 downto 0);
signal carry_s,borrow_s: std_logic;
signal min: std_logic_vector(6 downto 0);
signal carry_m,borrow_m: std_logic;
signal sec_ZECI: std_logic_vector(3 downto 0);
signal sec_Unitati: std_logic_vector(3 downto 0);
signal min_ZECI: std_logic_vector(3 downto 0);
signal min_Unitati: std_logic_vector(3 downto 0);
signal min_enable: std_logic;
signal data: std_logic_vector(31 downto 0);
signal set_alarm: std_logic;
begin

center_button:entity WORK.debouncer port map
(
clk=>clk,
button_debounced=>rst,
button=>btn(0)
);

upper_button:entity WORK.debouncer port map
(
clk=>clk,
button_debounced=>start_stop,
button=>btn(1)
);

bottom_button:entity WORK.debouncer port map
(
clk=>clk,
button_debounced=>m_button,
button=>btn(4)
);

right_button:entity WORK.debouncer port map
(
clk=>clk,
button_debounced=>s_button,
button=>btn(3)
);
divizor: entity WORK.clk_div port map
(
clk=>clk,
rst=>rst,
divided_clk=>div_clk

);

CU :entity WORK.uc
port map
(
clk_1=>clk,
        rst=>rst,
        start_stop=>start_stop,
        m_button=>m_button,
        s_button=>s_button,
        count_enable=>count_enable,
        count_mode=>count_mode,
        ssd_min=>ssd_min,
        ssd_sec=> ssd_sec,
        alarma_activate=>set_alarm,
        led_alarm=>led(0)
);
numara_secunde: entity WORK.numsec port map
(
 clk_1=>div_clk,
  rst =>rst,
        clk_enable =>count_enable,
        count_mode =>count_mode,
        sec=>sec,
        borrow_s=>borrow_s,
         carry_s=>carry_s

);
transforma_secunde: entity WORK.transf port map
(
enable=>ssd_sec,
        sec=>sec,
        sec_ZECI=>sec_ZECI,
        sec_Unitati=>sec_Unitati

);
min_enable<=carry_s or borrow_s;
numara_minute: entity WORK.nummin port map
(
clk_1=>div_clk,
rst =>rst,
        clk_enable =>min_enable,
        count_mode =>count_mode,
        min=>min,
        borrow_m=>borrow_m,
         carry_m=>carry_m

);
transforma_minute: entity WORK.transfmin port map
(
enable=>ssd_min,
        min=>min,
        min_ZECI=>min_ZECI,
        min_Unitati=>min_Unitati
);
alarma:  entity WORK.verif_alarma port map
(
 sec=>sec,
   min=>min,
   set_alarm=>set_alarm
);
data<=min_ZECI & min_Unitati & sec_ZECI & sec_Unitati & x"0000";

display:entity WORK.SSD port map
(
clk=>clk,
an=>an,
cat=>cat,
data=>data
);

end Behavioral;