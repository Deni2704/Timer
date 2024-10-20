LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
 
ENTITY Debouncer IS
PORT (
	button: IN std_logic;
	clk: IN std_logic;
	button_debounced: OUT std_logic);
END Debouncer;
 
ARCHITECTURE TypeArchitecture OF Debouncer IS


COMPONENT clk_deb IS
PORT (
	clock: IN std_logic;
  	divided_clock: OUT std_logic
    );
END COMPONENT;
 
signal X, Y, Z: std_logic;

signal divided_clk: std_logic;

BEGIN

CD: Clk_deb port map(clock => clk, divided_clock => divided_clk);
 
process(divided_clk)
begin
 
	if rising_edge(divided_clk) then
 	X <= button;
 	Y <= X;
 	Z <= Y;
 	end if;
 
end process;
 
button_debounced <= X and Y and Z;
 
END TypeArchitecture;