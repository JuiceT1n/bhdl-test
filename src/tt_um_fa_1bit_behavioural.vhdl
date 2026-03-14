
-- Code adapted from: https://www.fpga4student.com/2017/02/vhdl-code-for-full-adder.html
-- Behavioural code for full adder 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tt_um_fa_1bit_behavioural is  
port( 
        ui_in   : in  std_logic_vector(2 downto 0);
        uo_out  : out std_logic_vector(2 downto 0);
        ena     : in  std_logic;
        clk     : in  std_logic;
        rst_n   : in  std_logic
    );
  
end entity tt_um_fa_1bit_behavioural;
architecture Behavioral of tt_um_fa_1bit_behavioural is   
 
signal tmp: std_logic_vector(2 downto 0);
signal ur_S, ur_Cout : std_logic;
 
begin  

tmp <= ui_in(0) & ui_in(1) & ui_in(2);
  
ur_S <= '0' when tmp="000" else
    '1' when tmp="001" else
    '0' when tmp="010" else
    '1' when tmp="011" else
    '0' when tmp="100" else
    '1' when tmp="101" else
    '0' when tmp="110" else
     '1';

ur_Cout <= '0' when tmp="000" else
    '1' when tmp="001" else
    '0' when tmp="010" else
    '1' when tmp="011" else
    '0' when tmp="100" else
    '1' when tmp="101" else
    '0' when tmp="110" else
     '1';

  process(clk, ena, rst_n)

  begin

    if (rising_edge(clk)) then
      if (rst_n = '1') then
         uo_out(0) <= '0';
        uo_out(1) <= '0';
      else
        if (ena = '1') then
          uo_out(0) <= ur_S;
          uo_out(1) <= ur_Cout;
        end if;
      end if;
    end if;

  end process;

end Behavioral; 
