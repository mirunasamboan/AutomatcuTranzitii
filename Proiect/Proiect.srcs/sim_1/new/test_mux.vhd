library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test_mux is
--  Port ( );
end test_mux;

architecture Behavioral of test_mux is

component mux2 is
    Port ( i0 : in STD_LOGIC;
           i1 : in STD_LOGIC;
           a : in STD_LOGIC;
           y : out STD_LOGIC);
end component mux2;

signal i0, i1, a, y: STD_LOGIC;

begin

UUT: mux2 port map (i0 => i0,
                    i1 => i1,
                    a => a,
                    y => y);
process

begin
    i0 <= '0';
    i1 <= '0';
    a <= '0';
    wait for 4 ns;
    
    i0 <= '0';
    i1 <= '0';
    a <= '1';
    wait for 4 ns;
        
    i0 <= '0';
    i1 <= '1';
    a <= '0';
    wait for 4 ns;
    
    i0 <= '0';
    i1 <= '1';
    a <= '1';
    wait for 4 ns;
    
    i0 <= '1';
    i1 <= '0';
    a <= '0';
    wait for 4 ns;
    
    i0 <= '1';
    i1 <= '0';
    a <= '1';
    wait for 4 ns;
    
    i0 <= '1';
    i1 <= '1';
    a <= '0';
    wait for 4 ns;
    
    i0 <= '1';
    i1 <= '1';
    a <= '1';
    wait for 4 ns;
    end process;
    
end Behavioral;