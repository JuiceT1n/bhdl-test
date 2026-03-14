-- Code adapted from: https://www.fpga4student.com/2017/02/vhdl-code-for-full-adder.html
-- Structural code for full adder 
library ieee; 
use ieee.std_logic_1164.all;  

entity tt_um_fa_1bit_behavioural is  
port (
        ui_in   : in  std_logic_vector(7 downto 0);
        uo_out  : out std_logic_vector(7 downto 0);
        uio_in  : in  std_logic_vector(7 downto 0);
        uio_out : out std_logic_vector(7 downto 0);
        uio_oe  : out std_logic_vector(7 downto 0);
        ena     : in  std_logic;
        clk     : in  std_logic;
        rst_n   : in  std_logic
    );

end entity tt_um_fa_1bit_behavioural;  

architecture structural of tt_um_fa_1bit_behavioural is  

   signal a1, a2, a3: std_logic;  

begin  
        un_in(7:3) := '00000'
   a1 <= ui_in(0) xor ui_in(1);  
   a2 <= ui_in(1) and ui_in(2);  
   a3 <= ui_in(0) and ui_in(2);  
   uo_out(0) <= ui_in(1) or ui_in(2);  
   uo_out(1) <= a1 xor ui_in(0);  

end structural;  
