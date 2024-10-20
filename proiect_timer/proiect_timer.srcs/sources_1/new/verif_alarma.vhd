LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY verif_alarma IS
  PORT (
  ------------------------------------------------------------------------------
  --Insert input ports below
                      -- input bit example
   sec:in std_logic_vector(5 downto 0);
   min:in std_logic_vector(6 downto 0);
   set_alarm: out std_logic
    );
END verif_alarma;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE TypeArchitecture OF verif_alarma IS

signal min_sec: std_logic_vector(12 downto 0);

BEGIN
min_sec<=min & sec;
set_alarm<=not(min_sec(12) or min_sec(11) or min_sec(10) or min_sec(9) or min_sec(8) or min_sec(7) or min_sec(6) or min_sec(5) or min_sec(4) or min_sec(3) or min_sec(2) or min_sec(1) or min_sec(0));
END TypeArchitecture;