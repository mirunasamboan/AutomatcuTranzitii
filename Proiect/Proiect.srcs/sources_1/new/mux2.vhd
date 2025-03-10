library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2 is
    Port ( i0 : in STD_LOGIC;
           i1 : in STD_LOGIC;
           a : in STD_LOGIC;
           y : out STD_LOGIC);
end mux2;

architecture Behavioral of mux2 is
begin
    mux2: process (i1, i0, A)
    begin
        case(A) is
            when '0' => y <= i0;
            when '1' => y <= i1;
            when others => y <= '0';
        end case;
    end process;
end Behavioral;