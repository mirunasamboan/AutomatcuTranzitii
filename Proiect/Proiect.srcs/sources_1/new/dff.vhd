library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dff is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           r : in STD_LOGIC;
           q : out STD_LOGIC;
           qn : out STD_LOGIC);
end dff;

architecture Behavioral of dff is

signal qint : std_logic;

begin

flipflop: process(r,clk)
begin
    if r = '1' then
        qint <= '0';
    elsif falling_edge (clk) then    
        qint <= d;
    else    
        qint <= qint;
    end if;
end process;

q <= qint;
qn <= not qint;

end Behavioral;