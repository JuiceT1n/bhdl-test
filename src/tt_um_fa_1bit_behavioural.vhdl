
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
 
signal tmp: std_logic_vector(1 downto 0);
 
begin  
   process(X1,X2,Cin)
   begin 
 	tmp <= ('0' & X1) + ('0' & X2) +('0' & Cin) ;
   end process;

   S <= tmp(0);
   Cout <= tmp(1);

end Behavioral; 
