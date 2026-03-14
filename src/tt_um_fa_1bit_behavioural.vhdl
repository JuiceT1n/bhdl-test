
-- Code adapted from: https://www.fpga4student.com/2017/02/vhdl-code-for-full-adder.html
-- Behavioural code for full adder 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tt_um_fa_1bit_behavioural is  
port( 
  X1, X2, Cin : in std_logic;  
  S, Cout : out std_logic
);  
end entity tt_um_fa_1bit_behavioural;
architecture Behavioral of tt_um_fa_1bit_behavioural is   
 
signal tmp: std_logic_vector(2 downto 0);
 
begin  

tmp <= X1 & X2 & Cin;
  
S <= '0' when tmp="000" else
    '1' when tmp="001" else
    '0' when tmp="010" else
    '1' when tmp="011" else
    '0' when tmp="100" else
    '1' when tmp="101" else
    '0' when tmp="110" else
     '1';

Cout <= '0' when tmp="000" else
    '1' when tmp="001" else
    '0' when tmp="010" else
    '1' when tmp="011" else
    '0' when tmp="100" else
    '1' when tmp="101" else
    '0' when tmp="110" else
     '1';
        
end Behavioral; 
