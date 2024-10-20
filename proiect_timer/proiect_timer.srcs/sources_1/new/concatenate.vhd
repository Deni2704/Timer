--------------------------------------------------------------------------------
-- Project :
-- File    :
-- Autor   :
-- Date    :
--
--------------------------------------------------------------------------------
-- Description :
--
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ceva IS
  PORT (
  ------------------------------------------------------------------------------
  --Insert input ports below
    sec:in std_logic_vector(5 downto 0);
   min:in std_logic_vector(6 downto 0);
   seq: out std_logic_vector(12 downto 0):=(others=>'0')
    );
END ceva;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE TypeArchitecture OF ceva IS

BEGIN

seq<=min & sec;

END TypeArchitecture;
